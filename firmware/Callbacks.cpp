// ----------------------------------------------------------------------------
// Callbacks.cpp
//
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------
#include "Callbacks.h"

using namespace ArduinoJson::Parser;

namespace callbacks
{
// Callbacks must be non-blocking (avoid 'delay')
//
// modular_device.getParameterValue must be cast to either:
// char*
// long
// double
// JsonArray
// JsonObject
//
// For more info read about ArduinoJson v3 JsonParser JsonValues
//
// modular_device.getSavedVariableValue type must match the saved variable default type
// modular_device.setSavedVariableValue type must match the saved variable default type


void getLedsPoweredCallback()
{
  boolean leds_powered = power_switch_controller.getLedsPowered();
  modular_device.addBooleanToResponse("leds_powered",leds_powered);
}

void setChannelsCallback()
{
  long channels = modular_device.getParameterValue(constants::channels_parameter_name);
  power_switch_controller.setChannels(channels);
}

void setChannelOnCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  power_switch_controller.setChannelOn(channel);
}

void setChannelOffCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  power_switch_controller.setChannelOff(channel);
}

void setAllChannelsOnCallback()
{
  power_switch_controller.setAllChannelsOn();
}

void setAllChannelsOffCallback()
{
  power_switch_controller.setAllChannelsOff();
}

void getChannelsOnCallback()
{
  long channels_on = power_switch_controller.getChannelsOn();
  modular_device.addToResponse("channels_on",channels_on);
}

void getChannelCountCallback()
{
  int channel_count = power_switch_controller.getChannelCount();
  modular_device.addToResponse("channel_count",channel_count);
}
}
