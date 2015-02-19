#include <EEPROM.h>
#include "Streaming.h"
#include "JsonParser.h"
#include "StandardCplusplus.h"
#include "MemoryFree.h"
#include "Flash.h"
#include "SPI.h"
#include "ModularDevice.h"
#include "NewhavenDisplay.h"
#include "Encoder.h"
#include "StandaloneInterface.h"
#include "PowerSwitch.h"
#include "Constants.h"
#include "Callbacks.h"
#include "Controller.h"


// power_switch_controller

// See README.md for more information

void setup()
{
  controller.setup();
}

void loop()
{
  controller.update();
}
