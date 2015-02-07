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

class Controller : public PowerSwitch
{
public:
  Controller();
  void setup();
  void update();
  bool getLedsPowered();
private:
  PowerSwitch power_switch_;
};

extern Controller controller;

#endif
