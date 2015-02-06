// ----------------------------------------------------------------------------
// Controller.h
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------

#ifndef CONTROLLER_H
#define CONTROLLER_H
#include "PowerSwitch.h"
#include "ModularDevice.h"
// #include "StandaloneInterface.h"
#include "Constants.h"
#include "Callbacks.h"

class Controller
{
public:
  Controller();
  void setup();
  void update();
  bool getLedsPowered();
  void setChannelOn(int channel);
  void setChannelOff(int channel);
  void toggleChannel(int channel);
  void toggleChannels(uint32_t channels);
  void setAllChannelsOn();
  void setAllChannelsOff();
  uint32_t getChannelsOn();
  int getChannelCount();

private:
  PowerSwitch power_switch_;
};

extern Controller controller;

#endif
