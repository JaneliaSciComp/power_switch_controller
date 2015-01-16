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
  pinMode(constants::led_pwr_pin,INPUT);
}

bool PowerSwitchController::getLedsPowered()
{
  return digitalRead(constants::led_pwr_pin) == HIGH;
}

PowerSwitchController power_switch_controller;
