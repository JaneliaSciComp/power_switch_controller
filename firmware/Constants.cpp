// ----------------------------------------------------------------------------
// Constants.cpp
//
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------
#include "Constants.h"


namespace constants
{
const int baudrate = 9600;

const int model_number = 1110;
const int firmware_number = 1;

const int cs_pin = 49;
const int in_pin = 48;

HardwareSerial& display_serial = Serial3;

const int enc_a_pin = 18;
const int enc_b_pin = 2;
const int enc_btn_pin = 19;
const int enc_btn_int = 4;
const int btn_pin = 21;
const int btn_int = 2;
const int led_pwr_pin = 17;
const int standalone_update_period = 300;

const uint8_t ic_count = 4;
const uint8_t channel_count = 32;

const uint8_t channel_min = 0;
const uint8_t channel_max = channel_count-1;

const uint32_t states_array_default[STATE_COUNT] = {0};

const uint8_t dsp_lbl_display_position = 48;
const uint8_t int_var_display_position = 51;

FLASH_STRING(device_name,"power_switch_controller");
FLASH_STRING(execute_standalone_callback_method_name,"executeStandaloneCallback");
FLASH_STRING(get_leds_powered_method_name,"getLedsPowered");
FLASH_STRING(set_channel_on_method_name,"setChannelOn");
FLASH_STRING(set_channel_off_method_name,"setChannelOff");
FLASH_STRING(set_channels_on_method_name,"setChannelsOn");
FLASH_STRING(set_channels_off_method_name,"setChannelsOff");
FLASH_STRING(toggle_channel_method_name,"toggleChannel");
FLASH_STRING(toggle_channels_method_name,"toggleChannels");
FLASH_STRING(toggle_all_channels_method_name,"toggleAllChannels");
FLASH_STRING(set_all_channels_on_method_name,"setAllChannelsOn");
FLASH_STRING(set_all_channels_off_method_name,"setAllChannelsOff");
FLASH_STRING(set_channel_on_all_others_off_method_name,"setChannelOnAllOthersOff");
FLASH_STRING(set_channel_off_all_others_on_method_name,"setChannelOffAllOthersOn");
FLASH_STRING(set_channels_on_all_others_off_method_name,"setChannelsOnAllOthersOff");
FLASH_STRING(set_channels_off_all_others_on_method_name,"setChannelsOffAllOthersOn");
FLASH_STRING(get_channels_on_method_name,"getChannelsOn");
FLASH_STRING(get_channels_off_method_name,"getChannelsOff");
FLASH_STRING(get_channel_count_method_name,"getChannelCount");
FLASH_STRING(save_state_method_name,"saveState");
FLASH_STRING(recall_state_method_name,"recallState");
FLASH_STRING(get_saved_states_method_name,"getSavedStates");
FLASH_STRING(channels_parameter_name,"channels");
FLASH_STRING(channel_parameter_name,"channel");
FLASH_STRING(state_parameter_name,"state");
FLASH_STRING(states_name,"states");
const _FLASH_STRING frame_name_array[] =
  {
    toggle_channel_method_name,
    set_all_channels_off_method_name,
    set_all_channels_on_method_name,
    save_state_method_name,
    recall_state_method_name,
  };
}
