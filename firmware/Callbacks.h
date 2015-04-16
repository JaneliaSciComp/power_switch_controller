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
#include "EventController.h"
#include "IndexedContainer.h"
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

void addPulseCenteredCallback();

void addPwmPeriodOnDurationCallback();

uint32_t arrayToChannels(ArduinoJson::Parser::JsonArray channels_array);

// Standalone Callbacks
void executeStandaloneCallbackCallback();

void toggleChannelStandaloneCallback();

void saveStateStandaloneCallback();

void recallStateStandaloneCallback();

// EventController Callbacks
void stopEventCallback(int index);

void setChannelsOnEventCallback(int index);

void setChannelsOffEventCallback(int index);
}
#endif
