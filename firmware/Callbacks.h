// ----------------------------------------------------------------------------
// Callbacks.h
//
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------
#ifndef CALLBACKS_H
#define CALLBACKS_H
#include "JsonParser.h"
#include "ModularDevice.h"
#include "Constants.h"
#include "Controller.h"


namespace callbacks
{
void getLedsPoweredCallback();

void setChannelOnCallback();

void setChannelOffCallback();

void setChannelsOnCallback();

void setChannelsOffCallback();

void toggleChannelCallback();

void toggleChannelsCallback();

void toggleAllChannelsCallback();

void setAllChannelsOnCallback();

void setAllChannelsOffCallback();

void setChannelOnAllOthersOffCallback();

void setChannelOffAllOthersOnCallback();

void setChannelsOnAllOthersOffCallback();

void setChannelsOffAllOthersOnCallback();

void getChannelsOnCallback();

void getChannelsOffCallback();

void getChannelCountCallback();

void saveStateCallback();

void recallStateCallback();

void getSavedStatesCallback();

uint32_t arrayToChannels(ArduinoJson::Parser::JsonArray channels_array);
}
#endif
