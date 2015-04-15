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
#include "StandaloneInterface.h"
#include "EventController.h"
#include "Constants.h"
#include "Callbacks.h"

class Controller : public PowerSwitch
{
public:
  Controller();
  void setup();
  void update();
  void executeStandaloneCallback();
  bool getLedsPowered();
  void saveState(int state);
  void recallState(int state);
  void getStatesArray(uint32_t states_array[]);
  uint8_t getChannelIntVar();
  uint8_t getStateIntVar();
private:
  uint32_t states_array_[constants::STATE_COUNT];
  Standalone::StandaloneInterface standalone_interface_;
  Standalone::InteractiveVariable *channel_int_var_ptr_;
  Standalone::InteractiveVariable *state_int_var_ptr_;
};

extern Controller controller;

#endif
