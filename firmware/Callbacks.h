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
#include "RemoteDevice.h"
#include "Constants.h"
#include "PowerSwitchController.h"


namespace callbacks
{
void getLedsPoweredCallback();

void setChannelsCallback();

void setChannelOnCallback();

void setChannelOffCallback();

void setAllChannelsOnCallback();

void setAllChannelsOffCallback();

void getChannelsOnCallback();

void getChannelCountCallback();
}
#endif
