// ----------------------------------------------------------------------------
// Controller.cpp
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------
#include "Controller.h"

Controller::Controller() :
  PowerSwitch(constants::cs_pin,constants::in_pin),
  standalone_interface_(Standalone::StandaloneInterface(constants::display_serial,
                                                        constants::enc_a_pin,
                                                        constants::enc_b_pin,
                                                        constants::enc_btn_pin,
                                                        constants::enc_btn_int,
                                                        constants::btn_pin,
                                                        constants::btn_int,
                                                        constants::led_pwr_pin,
                                                        constants::standalone_update_period))
{
}

void Controller::setup()
{
  PowerSwitch::setup(constants::ic_count);

  // Pin Setup

  // Device Info
  modular_device.setName(constants::device_name);
  modular_device.setModelNumber(constants::model_number);
  modular_device.setFirmwareNumber(constants::firmware_number);

  // Saved Variables
  modular_device.createSavedVariable(constants::states_name,constants::states_array_default,constants::STATE_COUNT);

  // Parameters
  ModularDevice::Parameter& channel_parameter = modular_device.createParameter(constants::channel_parameter_name);
  channel_parameter.setRange(constants::channel_min,constants::channel_max);

  ModularDevice::Parameter& channels_parameter = modular_device.createParameter(constants::channels_parameter_name);
  channels_parameter.setTypeArray();
  channels_parameter.setRange(constants::channel_min,constants::channel_max);

  ModularDevice::Parameter& state_parameter = modular_device.createParameter(constants::state_parameter_name);
  state_parameter.setRange(0,constants::STATE_COUNT-1);

  // Methods
  ModularDevice::Method& execute_standalone_callback_method = modular_device.createMethod(constants::execute_standalone_callback_method_name);
  execute_standalone_callback_method.attachCallback(callbacks::executeStandaloneCallbackCallback);

  ModularDevice::Method& get_leds_powered_method = modular_device.createMethod(constants::get_leds_powered_method_name);
  get_leds_powered_method.attachCallback(callbacks::getLedsPoweredCallback);

  ModularDevice::Method& set_channel_on_method = modular_device.createMethod(constants::set_channel_on_method_name);
  set_channel_on_method.attachCallback(callbacks::setChannelOnCallback);
  set_channel_on_method.addParameter(channel_parameter);

  ModularDevice::Method& set_channel_off_method = modular_device.createMethod(constants::set_channel_off_method_name);
  set_channel_off_method.attachCallback(callbacks::setChannelOffCallback);
  set_channel_off_method.addParameter(channel_parameter);

  ModularDevice::Method& set_channels_on_method = modular_device.createMethod(constants::set_channels_on_method_name);
  set_channels_on_method.attachCallback(callbacks::setChannelsOnCallback);
  set_channels_on_method.addParameter(channels_parameter);

  ModularDevice::Method& set_channels_off_method = modular_device.createMethod(constants::set_channels_off_method_name);
  set_channels_off_method.attachCallback(callbacks::setChannelsOffCallback);
  set_channels_off_method.addParameter(channels_parameter);

  ModularDevice::Method& toggle_channel_method = modular_device.createMethod(constants::toggle_channel_method_name);
  toggle_channel_method.attachCallback(callbacks::toggleChannelCallback);
  toggle_channel_method.addParameter(channel_parameter);

  ModularDevice::Method& toggle_channels_method = modular_device.createMethod(constants::toggle_channels_method_name);
  toggle_channels_method.attachCallback(callbacks::toggleChannelsCallback);
  toggle_channels_method.addParameter(channels_parameter);

  ModularDevice::Method& toggle_all_channels_method = modular_device.createMethod(constants::toggle_all_channels_method_name);
  toggle_all_channels_method.attachCallback(callbacks::toggleAllChannelsCallback);

  ModularDevice::Method& set_all_channels_on_method = modular_device.createMethod(constants::set_all_channels_on_method_name);
  set_all_channels_on_method.attachCallback(callbacks::setAllChannelsOnCallback);

  ModularDevice::Method& set_all_channels_off_method = modular_device.createMethod(constants::set_all_channels_off_method_name);
  set_all_channels_off_method.attachCallback(callbacks::setAllChannelsOffCallback);

  ModularDevice::Method& set_channel_on_all_others_off_method = modular_device.createMethod(constants::set_channel_on_all_others_off_method_name);
  set_channel_on_all_others_off_method.attachCallback(callbacks::setChannelOnAllOthersOffCallback);
  set_channel_on_all_others_off_method.addParameter(channel_parameter);

  ModularDevice::Method& set_channel_off_all_others_on_method = modular_device.createMethod(constants::set_channel_off_all_others_on_method_name);
  set_channel_off_all_others_on_method.attachCallback(callbacks::setChannelOffAllOthersOnCallback);
  set_channel_off_all_others_on_method.addParameter(channel_parameter);

  ModularDevice::Method& set_channels_on_all_others_off_method = modular_device.createMethod(constants::set_channels_on_all_others_off_method_name);
  set_channels_on_all_others_off_method.attachCallback(callbacks::setChannelsOnAllOthersOffCallback);
  set_channels_on_all_others_off_method.addParameter(channels_parameter);

  ModularDevice::Method& set_channels_off_all_others_on_method = modular_device.createMethod(constants::set_channels_off_all_others_on_method_name);
  set_channels_off_all_others_on_method.attachCallback(callbacks::setChannelsOffAllOthersOnCallback);
  set_channels_off_all_others_on_method.addParameter(channels_parameter);

  ModularDevice::Method& get_channels_on_method = modular_device.createMethod(constants::get_channels_on_method_name);
  get_channels_on_method.attachCallback(callbacks::getChannelsOnCallback);

  ModularDevice::Method& get_channels_off_method = modular_device.createMethod(constants::get_channels_off_method_name);
  get_channels_off_method.attachCallback(callbacks::getChannelsOffCallback);

  ModularDevice::Method& get_channel_count_method = modular_device.createMethod(constants::get_channel_count_method_name);
  get_channel_count_method.attachCallback(callbacks::getChannelCountCallback);

  ModularDevice::Method& save_state_method = modular_device.createMethod(constants::save_state_method_name);
  save_state_method.attachCallback(callbacks::saveStateCallback);
  save_state_method.addParameter(state_parameter);

  ModularDevice::Method& recall_state_method = modular_device.createMethod(constants::recall_state_method_name);
  recall_state_method.attachCallback(callbacks::recallStateCallback);
  recall_state_method.addParameter(state_parameter);

  ModularDevice::Method& get_saved_states_method = modular_device.createMethod(constants::get_saved_states_method_name);
  get_saved_states_method.attachCallback(callbacks::getSavedStatesCallback);

  // Start ModularDevice Server
  modular_device.startServer(constants::baudrate);

  // Standalone Interface
  standalone_interface_.setup(constants::frame_name_array,constants::FRAME_COUNT);

  // Display Labels
  Standalone::DisplayLabel& channel_dsp_lbl = standalone_interface_.createDisplayLabel();
  channel_dsp_lbl.setDisplayPosition(constants::dsp_lbl_display_position);
  channel_dsp_lbl.setFlashString(constants::channel_parameter_name);
  channel_dsp_lbl.setRightJustify();

  Standalone::DisplayLabel& state_dsp_lbl = standalone_interface_.createDisplayLabel();
  state_dsp_lbl.setDisplayPosition(constants::dsp_lbl_display_position);
  state_dsp_lbl.setFlashString(constants::state_parameter_name);
  state_dsp_lbl.setRightJustify();

  // Display Variables

  // Interactive Variables
  channel_int_var_ptr_ = &(standalone_interface_.createInteractiveVariable());
  channel_int_var_ptr_->setDisplayPosition(constants::int_var_display_position);
  channel_int_var_ptr_->setRange(constants::channel_min,constants::channel_max);

  state_int_var_ptr_ = &(standalone_interface_.createInteractiveVariable());
  state_int_var_ptr_->setDisplayPosition(constants::int_var_display_position);
  state_int_var_ptr_->setRange(0,constants::STATE_COUNT-1);

  // All Frames

  // Frame 0
  int frame = 0;
  channel_dsp_lbl.addToFrame(frame);
  channel_int_var_ptr_->addToFrame(frame);
  standalone_interface_.attachCallbackToFrame(callbacks::toggleChannelStandaloneCallback,frame);

  // Frame 1
  frame = 1;
  standalone_interface_.attachCallbackToFrame(callbacks::setAllChannelsOffCallback,frame);

  // Frame 2
  frame = 2;
  standalone_interface_.attachCallbackToFrame(callbacks::setAllChannelsOnCallback,frame);

  // Frame 3
  frame = 3;
  state_dsp_lbl.addToFrame(frame);
  state_int_var_ptr_->addToFrame(frame);
  standalone_interface_.attachCallbackToFrame(callbacks::saveStateStandaloneCallback,frame);

  // Frame 4
  frame = 4;
  state_dsp_lbl.addToFrame(frame);
  state_int_var_ptr_->addToFrame(frame);
  standalone_interface_.attachCallbackToFrame(callbacks::recallStateStandaloneCallback,frame);

  // Enable Standalone Interface
  standalone_interface_.enable();
}

void Controller::update()
{
  modular_device.handleServerRequests();
  standalone_interface_.update();
}

void Controller::executeStandaloneCallback()
{
  standalone_interface_.executeCurrentFrameCallback();
}

bool Controller::getLedsPowered()
{
  return digitalRead(constants::led_pwr_pin) == HIGH;
}

void Controller::saveState(int state)
{
  if (state >= constants::STATE_COUNT)
  {
    return;
  }
  uint32_t channels = getChannelsOn();
  states_array_[state] = channels;
  modular_device.setSavedVariableValue(constants::states_name,states_array_,state);
}

void Controller::recallState(int state)
{
  if (state >= constants::STATE_COUNT)
  {
    return;
  }
  modular_device.getSavedVariableValue(constants::states_name,states_array_,state);
  uint32_t channels = states_array_[state];
  setChannels(channels);
}

void Controller::getStatesArray(uint32_t states_array[])
{
  for (int state=0; state<constants::STATE_COUNT; state++)
  {
    modular_device.getSavedVariableValue(constants::states_name,states_array,state);
  }
}

uint8_t Controller::getChannelIntVar()
{
  return channel_int_var_ptr_->getValue();
}

uint8_t Controller::getStateIntVar()
{
  return state_int_var_ptr_->getValue();
}

Controller controller;
