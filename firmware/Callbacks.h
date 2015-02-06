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

// void setChannelsCallback();

void setChannelOnCallback();

void setChannelOffCallback();

void toggleChannelCallback();

void toggleChannelsCallback();

void setAllChannelsOnCallback();

void setAllChannelsOffCallback();

void getChannelsOnCallback();

void getChannelsOffCallback();

void getChannelCountCallback();
}
#endif
