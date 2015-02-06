// ----------------------------------------------------------------------------
// PowerSwitchController.h
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------

#ifndef POWER_SWITCH_CONTROLLER_H
#define POWER_SWITCH_CONTROLLER_H
#include "Constants.h"
#include "Callbacks.h"
#include "PowerSwitch.h"
#include "ModularDevice.h"

class PowerSwitchController : public PowerSwitch
{
public:
  PowerSwitchController();
  void init();
  void update();
  bool getLedsPowered();

private:
};

extern PowerSwitchController power_switch_controller;

#endif
