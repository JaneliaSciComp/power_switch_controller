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
const int led_pwr_pin = 18;

const int ic_count = 2;
const int channel_count = 16;

extern const long channels_min = 0;
extern const long channels_max = ((long)1 << channel_count) - 1;
extern const long channel_min = 0;
extern const long channel_max = channel_count-1;

FLASH_STRING(device_name,"power_switch_controller");
FLASH_STRING(get_leds_powered_method_name,"getLedsPowered");
FLASH_STRING(set_channels_method_name,"setChannels");
FLASH_STRING(set_channel_on_method_name,"setChannelOn");
FLASH_STRING(set_channel_off_method_name,"setChannelOff");
FLASH_STRING(set_all_channels_on_method_name,"setAllChannelsOn");
FLASH_STRING(set_all_channels_off_method_name,"setAllChannelsOff");
FLASH_STRING(get_channels_on_method_name,"getChannelsOn");
FLASH_STRING(get_channel_count_method_name,"getChannelCount");
FLASH_STRING(channels_parameter_name,"channels");
FLASH_STRING(channel_parameter_name,"channel");
}
