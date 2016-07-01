// ----------------------------------------------------------------------------
// Controller.h
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------

#ifndef CONTROLLER_H
#define CONTROLLER_H
#include "TLE72X.h"
#include "ModularServer.h"
#include "EventController.h"
#include "Constants.h"
#include "Callbacks.h"

class Controller : public TLE72X
{
public:
  Controller();
  void setup();
  void update();
  ModularDevice::ModularServer& getModularServer();

  void saveState(const size_t state);
  void recallState(const size_t state);
private:
  ModularDevice::ModularServer modular_server_;

  ModularDevice::Field fields_[constants::FIELD_COUNT_MAX];
  ModularDevice::Parameter parameters_[constants::PARAMETER_COUNT_MAX];
  ModularDevice::Method methods_[constants::METHOD_COUNT_MAX];
};

extern Controller controller;

#endif
