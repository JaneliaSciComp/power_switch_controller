#include <EEPROM.h>
#include "Streaming.h"
#include "JsonParser.h"
#include "StandardCplusplus.h"
#include "MemoryFree.h"
#include "Flash.h"
#include "RemoteDevice.h"
#include "Constants.h"
#include "Callbacks.h"

// See README.md for more information

using namespace RemoteDevice;

void setup()
{
  // Pin Setup

  // Device Info
  remote_device.setName(constants::device_name);
  remote_device.setModelNumber(constants::model_number);
  remote_device.setFirmwareNumber(constants::firmware_number);

  // Saved Variables

  // Parameters
  Parameter& channels_parameter = remote_device.createParameter(constants::channels_parameter_name);
  channels_parameter.setRange(0,constants::channels_max);
  Parameter& channel_parameter = remote_device.createParameter(constants::channel_parameter_name);
  channel_parameter.setRange(0,constants::channel_count-1);

  // Methods
  Method& set_channels_method = remote_device.createMethod(constants::set_channels_method_name);
  set_channels_method.attachCallback(callbacks::setChannelsCallback);
  set_channels_method.addParameter(channels_parameter);

  Method& set_channel_on_method = remote_device.createMethod(constants::set_channel_on_method_name);
  set_channel_on_method.attachCallback(callbacks::setChannelOnCallback);
  set_channel_on_method.addParameter(channel_parameter);

  Method& set_channel_off_method = remote_device.createMethod(constants::set_channel_off_method_name);
  set_channel_off_method.attachCallback(callbacks::setChannelOffCallback);
  set_channel_off_method.addParameter(channel_parameter);

  Method& set_all_channels_on_method = remote_device.createMethod(constants::set_all_channels_on_method_name);
  set_all_channels_on_method.attachCallback(callbacks::setAllChannelsOnCallback);
  set_all_channels_on_method.addParameter(channel_parameter);

  Method& set_all_channels_off_method = remote_device.createMethod(constants::set_all_channels_off_method_name);
  set_all_channels_off_method.attachCallback(callbacks::setAllChannelsOffCallback);
  set_all_channels_off_method.addParameter(channel_parameter);

  // Start Server
  remote_device.startServer(constants::baudrate);
}

void loop()
{
  remote_device.handleServerRequests();
}
