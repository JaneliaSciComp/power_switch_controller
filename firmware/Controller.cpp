// ----------------------------------------------------------------------------
// Controller.cpp
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------
#include "Controller.h"

Controller::Controller()
{
}

void Controller::setup()
{
  power_switch_ = PowerSwitch(constants::cs_pin,constants::in_pin);
  power_switch_.setup(constants::ic_count);

  // Pin Setup
  pinMode(constants::led_pwr_pin,INPUT);

  // Device Info
  modular_device.setName(constants::device_name);
  modular_device.setModelNumber(constants::model_number);
  modular_device.setFirmwareNumber(constants::firmware_number);

  // Saved Variables

  // Parameters
  ModularDevice::Parameter& channel_parameter = modular_device.createParameter(constants::channel_parameter_name);
  channel_parameter.setRange(constants::channel_min,constants::channel_max);
  ModularDevice::Parameter& channels_parameter = modular_device.createParameter(constants::channels_parameter_name);
  channels_parameter.setTypeArray();

  // Methods
  ModularDevice::Method& get_leds_powered_method = modular_device.createMethod(constants::get_leds_powered_method_name);
  get_leds_powered_method.attachCallback(callbacks::getLedsPoweredCallback);

  // ModularDevice::Method& set_channels_method = modular_device.createMethod(constants::set_channels_method_name);
  // set_channels_method.attachCallback(callbacks::setChannelsCallback);
  // set_channels_method.addParameter(channels_parameter);

  ModularDevice::Method& set_channel_on_method = modular_device.createMethod(constants::set_channel_on_method_name);
  set_channel_on_method.attachCallback(callbacks::setChannelOnCallback);
  set_channel_on_method.addParameter(channel_parameter);

  ModularDevice::Method& set_channel_off_method = modular_device.createMethod(constants::set_channel_off_method_name);
  set_channel_off_method.attachCallback(callbacks::setChannelOffCallback);
  set_channel_off_method.addParameter(channel_parameter);

  ModularDevice::Method& toggle_channel_method = modular_device.createMethod(constants::toggle_channel_method_name);
  toggle_channel_method.attachCallback(callbacks::toggleChannelCallback);
  toggle_channel_method.addParameter(channel_parameter);

  ModularDevice::Method& toggle_channels_method = modular_device.createMethod(constants::toggle_channels_method_name);
  toggle_channels_method.attachCallback(callbacks::toggleChannelsCallback);
  toggle_channels_method.addParameter(channels_parameter);

  ModularDevice::Method& set_all_channels_on_method = modular_device.createMethod(constants::set_all_channels_on_method_name);
  set_all_channels_on_method.attachCallback(callbacks::setAllChannelsOnCallback);

  ModularDevice::Method& set_all_channels_off_method = modular_device.createMethod(constants::set_all_channels_off_method_name);
  set_all_channels_off_method.attachCallback(callbacks::setAllChannelsOffCallback);

  ModularDevice::Method& get_channels_on_method = modular_device.createMethod(constants::get_channels_on_method_name);
  get_channels_on_method.attachCallback(callbacks::getChannelsOnCallback);

  ModularDevice::Method& get_channels_off_method = modular_device.createMethod(constants::get_channels_off_method_name);
  get_channels_off_method.attachCallback(callbacks::getChannelsOffCallback);

  ModularDevice::Method& get_channel_count_method = modular_device.createMethod(constants::get_channel_count_method_name);
  get_channel_count_method.attachCallback(callbacks::getChannelCountCallback);

  // Start ModularDevice Server
  modular_device.startServer(constants::baudrate);
}

void Controller::update()
{
  modular_device.handleServerRequests();
}

bool Controller::getLedsPowered()
{
  return digitalRead(constants::led_pwr_pin) == HIGH;
}

void Controller::setChannelOn(int channel)
{
  power_switch_.setChannelOn(channel);
}

void Controller::setChannelOff(int channel)
{
  power_switch_.setChannelOff(channel);
}

void Controller::toggleChannel(int channel)
{
  power_switch_.toggleChannel(channel);
}

void Controller::toggleChannels(uint32_t channels)
{
  power_switch_.toggleChannels(channels);
}

void Controller::setAllChannelsOn()
{
  power_switch_.setAllChannelsOn();
}

void Controller::setAllChannelsOff()
{
  power_switch_.setAllChannelsOff();
}

uint32_t Controller::getChannelsOn()
{
  return power_switch_.getChannelsOn();
}

int Controller::getChannelCount()
{
  return power_switch_.getChannelCount();
}

Controller controller;
