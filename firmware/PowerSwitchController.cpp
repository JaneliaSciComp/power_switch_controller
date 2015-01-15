// ----------------------------------------------------------------------------
// PowerSwitchController.cpp
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------
#include "PowerSwitchController.h"

PowerSwitchController::PowerSwitchController() :
  PowerSwitch(constants::cs_pin,constants::in_pin)
{
}

void PowerSwitchController::init()
{
  PowerSwitch::init(constants::ic_count);
}

PowerSwitchController power_switch_controller;
