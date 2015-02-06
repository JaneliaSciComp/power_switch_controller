#include <EEPROM.h>
#include "Streaming.h"
#include "JsonParser.h"
#include "StandardCplusplus.h"
#include "MemoryFree.h"
#include "Flash.h"
#include "ModularDevice.h"
#include "Constants.h"
#include "Callbacks.h"
#include "SPI.h"
#include "PowerSwitch.h"
#include "PowerSwitchController.h"

// See README.md for more information

void setup()
{
  power_switch_controller.init();
  modular_device.startServer(constants::baudrate);
}

void loop()
{
  power_switch_controller.update();
  modular_device.handleServerRequests();
}
