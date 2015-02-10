// ----------------------------------------------------------------------------
// Constants.h
//
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------
#ifndef CONSTANTS_H
#define CONSTANTS_H
#include "Flash.h"

namespace constants
{
enum {STATE_COUNT=10};

extern const int baudrate;

extern const int model_number;
extern const int firmware_number;

extern const int cs_pin;
extern const int in_pin;
extern const int led_pwr_pin;

extern const int ic_count;
extern const int channel_count;

extern const long channels_min;
extern const long channels_max;
extern const long channel_min;
extern const long channel_max;

extern const uint32_t states_default[STATE_COUNT];

extern _FLASH_STRING device_name;
extern _FLASH_STRING get_leds_powered_method_name;
extern _FLASH_STRING set_channel_on_method_name;
extern _FLASH_STRING set_channel_off_method_name;
extern _FLASH_STRING set_channels_on_method_name;
extern _FLASH_STRING set_channels_off_method_name;
extern _FLASH_STRING toggle_channel_method_name;
extern _FLASH_STRING toggle_channels_method_name;
extern _FLASH_STRING toggle_all_channels_method_name;
extern _FLASH_STRING set_all_channels_on_method_name;
extern _FLASH_STRING set_all_channels_off_method_name;
extern _FLASH_STRING set_channel_on_all_others_off_method_name;
extern _FLASH_STRING set_channel_off_all_others_on_method_name;
extern _FLASH_STRING set_channels_on_all_others_off_method_name;
extern _FLASH_STRING set_channels_off_all_others_on_method_name;
extern _FLASH_STRING get_channels_on_method_name;
extern _FLASH_STRING get_channels_off_method_name;
extern _FLASH_STRING get_channel_count_method_name;
extern _FLASH_STRING save_state_method_name;
extern _FLASH_STRING recall_state_method_name;
extern _FLASH_STRING channels_parameter_name;
extern _FLASH_STRING channel_parameter_name;
extern _FLASH_STRING state_parameter_name;
extern _FLASH_STRING states_name;
}
#endif