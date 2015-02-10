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
  void saveState(int state);
  void recallState(int state);
private:
  PowerSwitch power_switch_;
  uint32_t states_array_[constants::STATE_COUNT];
};

extern Controller controller;

#endif
