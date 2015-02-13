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
enum {FRAME_COUNT=5};

extern const int baudrate;

extern const int model_number;
extern const int firmware_number;

extern const int cs_pin;
extern const int in_pin;
extern const int led_pwr_pin;

extern HardwareSerial display_serial;

extern const int enc_a_pin;
extern const int enc_b_pin;
extern const int enc_btn_pin;
extern const int enc_btn_int;
extern const int btn_pin;
extern const int btn_int;
extern const int led_pwr_pin;
extern const int standalone_update_period;

extern const uint8_t ic_count;
extern const uint8_t channel_count;

extern const uint8_t channel_min;
extern const uint8_t channel_max;

extern const uint32_t states_default[STATE_COUNT];

extern const uint8_t dsp_lbl_display_position;
extern const uint8_t dsp_lbl_display_width;
extern const uint8_t int_var_display_position;

extern _FLASH_STRING device_name;
extern _FLASH_STRING execute_standalone_callback_method_name;
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
extern _FLASH_STRING get_saved_states_method_name;
extern _FLASH_STRING channels_parameter_name;
extern _FLASH_STRING channel_parameter_name;
extern _FLASH_STRING state_parameter_name;
extern _FLASH_STRING states_name;
extern const _FLASH_STRING frame_name_array[FRAME_COUNT];
}
#endif
