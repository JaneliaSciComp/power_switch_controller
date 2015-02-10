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
// bool
// JsonArray
// JsonObject
//
// For more info read about ArduinoJson v3 JsonParser JsonValues
//
// modular_device.getSavedVariableValue type must match the saved variable default type
// modular_device.setSavedVariableValue type must match the saved variable default type


void getLedsPoweredCallback()
{
  boolean leds_powered = controller.getLedsPowered();
  modular_device.addBooleanToResponse("leds_powered",leds_powered);
}

void setChannelOnCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  controller.setChannelOn(channel);
}

void setChannelOffCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  controller.setChannelOff(channel);
}

void setChannelsOnCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  controller.setChannelsOn(channels);
}

void setChannelsOffCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  controller.setChannelsOff(channels);
}

void toggleChannelCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  controller.toggleChannel(channel);
}

void toggleChannelsCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  controller.toggleChannels(channels);
}

void toggleAllChannelsCallback()
{
  controller.toggleAllChannels();
}

void setAllChannelsOnCallback()
{
  controller.setAllChannelsOn();
}

void setAllChannelsOffCallback()
{
  controller.setAllChannelsOff();
}

void setChannelOnAllOthersOffCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  controller.setChannelOnAllOthersOff(channel);
}

void setChannelOffAllOthersOnCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  controller.setChannelOffAllOthersOn(channel);
}

void setChannelsOnAllOthersOffCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  controller.setChannelsOnAllOthersOff(channels);
}

void setChannelsOffAllOthersOnCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  controller.setChannelsOffAllOthersOn(channels);
}

void getChannelsOnCallback()
{
  uint32_t channels_on = controller.getChannelsOn();
  uint32_t bit = 1;
  modular_device.addKeyToResponse("channels_on");
  modular_device.startResponseArray();
  for (int channel=0; channel<constants::channel_count; channel++)
  {
    if (channels_on & (bit << channel))
    {
      modular_device.addToResponse(channel);
    }
  }
  modular_device.stopResponseArray();
}

void getChannelsOffCallback()
{
  uint32_t channels_on = controller.getChannelsOn();
  uint32_t channels_off = ~channels_on;
  uint32_t bit = 1;
  modular_device.addKeyToResponse("channels_off");
  modular_device.startResponseArray();
  for (int channel=0; channel<constants::channel_count; channel++)
  {
    if (channels_off & (bit << channel))
    {
      modular_device.addToResponse(channel);
    }
  }
  modular_device.stopResponseArray();
}

void getChannelCountCallback()
{
  int channel_count = controller.getChannelCount();
  modular_device.addToResponse("channel_count",channel_count);
}

void saveStateCallback()
{
  long state = modular_device.getParameterValue(constants::state_parameter_name);
  controller.saveState(state);
}

void recallStateCallback()
{
  long state = modular_device.getParameterValue(constants::state_parameter_name);
  controller.recallState(state);
}

uint32_t arrayToChannels(JsonArray channels_array)
{
  uint32_t channels = 0;
  uint32_t bit = 1;
  for (JsonArrayIterator channels_it=channels_array.begin();
       channels_it != channels_array.end();
       ++channels_it)
  {
    long channel = *channels_it;
    channels |= bit << channel;
  }
  return channels;
}
}
