// ----------------------------------------------------------------------------
// Constants.h
//
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------
#ifndef CONSTANTS_H
#define CONSTANTS_H
#include "ConstantVariable.h"

namespace constants
{
enum {FRAME_COUNT=5};
enum {STATE_COUNT=10};

extern const int baudrate;

extern const int model_number;
extern const int firmware_number;

extern const int cs_pin;
extern const int in_pin;
extern const int led_pwr_pin;

extern HardwareSerial& display_serial;

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

extern const uint32_t duration_min;
extern const uint32_t duration_max;

extern const uint32_t states_array_default[STATE_COUNT];

extern const uint8_t dsp_lbl_display_position;
extern const uint8_t dsp_lbl_display_width;
extern const uint8_t int_var_display_position;

extern ConstantString device_name;

extern ConstantString ms_units_name;

extern ConstantString channels_parameter_name;
extern ConstantString channel_parameter_name;
extern ConstantString state_parameter_name;
extern ConstantString delay_parameter_name;
extern ConstantString on_duration_parameter_name;
extern ConstantString period_parameter_name;
extern ConstantString count_parameter_name;

extern ConstantString execute_standalone_callback_method_name;
extern ConstantString get_leds_powered_method_name;
extern ConstantString set_channel_on_method_name;
extern ConstantString set_channel_off_method_name;
extern ConstantString set_channels_on_method_name;
extern ConstantString set_channels_off_method_name;
extern ConstantString toggle_channel_method_name;
extern ConstantString toggle_channels_method_name;
extern ConstantString toggle_all_channels_method_name;
extern ConstantString set_all_channels_on_method_name;
extern ConstantString set_all_channels_off_method_name;
extern ConstantString set_channel_on_all_others_off_method_name;
extern ConstantString set_channel_off_all_others_on_method_name;
extern ConstantString set_channels_on_all_others_off_method_name;
extern ConstantString set_channels_off_all_others_on_method_name;
extern ConstantString get_channels_on_method_name;
extern ConstantString get_channels_off_method_name;
extern ConstantString get_channel_count_method_name;
extern ConstantString save_state_method_name;
extern ConstantString recall_state_method_name;
extern ConstantString get_saved_states_method_name;
extern ConstantString add_pulse_centered_method_name;

extern ConstantString states_name;
extern const ConstantString frame_name_array[FRAME_COUNT];
}
#endif
