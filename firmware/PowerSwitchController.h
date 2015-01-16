// ----------------------------------------------------------------------------
// PowerSwitchController.h
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------

#ifndef POWER_SWITCH_CONTROLLER_H
#define POWER_SWITCH_CONTROLLER_H
#include "Constants.h"
#include "PowerSwitch.h"

class PowerSwitchController : public PowerSwitch
{
public:
  PowerSwitchController();
  void init();
  bool getLedsPowered();

private:
};

extern PowerSwitchController power_switch_controller;

#endif // POWER_SWITCH_CONTROLLER_H
