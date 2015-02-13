power_switch_controller
=======================

Authors:

    Peter Polidoro <polidorop@janelia.hhmi.org>

License:

    BSD

###Host Computer Interface

####Arduino Serial Monitor

Open the Serial Monitor in the Arduino IDE.

Set the baudrate to match the value in the Arduino sketch (9600).

Set the line ending to 'Newline'.

To get help information about the Arduino device, type a single
question mark ? into the input field and press the 'Send' button or
press the 'Enter' key.

```shell
?
```

Example Response:

```json
{
  "method":"?",
  "device_info":{
    "name":"power_switch_controller",
    "model_number":1110,
    "serial_number":0,
    "firmware_number":1
  },
  "methods":[
    "getMemoryFree",
    "resetDefaults",
    "setSerialNumber",
    "executeStandaloneCallback",
    "getLedsPowered",
    "setChannelOn",
    "setChannelOff",
    "setChannelsOn",
    "setChannelsOff",
    "toggleChannel",
    "toggleChannels",
    "toggleAllChannels",
    "setAllChannelsOn",
    "setAllChannelsOff",
    "setChannelOnAllOthersOff",
    "setChannelOffAllOthersOn",
    "setChannelsOnAllOthersOff",
    "setChannelsOffAllOthersOn",
    "getChannelsOn",
    "getChannelsOff",
    "getChannelCount",
    "saveState",
    "recallState",
    "getSavedStates"
  ],
  "status":success
}
```

"methods" is an array of user methods. To execute a method, simply
type it into the input field and press the 'Send' button or press the
'Enter' key.

Example Method:

```shell
```

Example Response:

```json
```

To get more verbose help about the Arduino device, including
information about the parameters each method takes, type two question
marks ?? into the input field and press the 'Send' button or press the
'Enter' key.

```shell
??
```

Example Response:

```json
```

Example Method with Parameters:

```shell
```

Example Response:

```json
```

To get more information about a method, enter the method followed by
a question mark ?

Example Method Help:

```shell
```

Example Response:

```json
```

To get more verbose information about all of the parameters a method
takes, enter the method followed by two questions marks ??:

```shell
```

Example Response:

```json
```

Example Method:

```shell
```

Example Response:

```json
```

The serial number setting persists even after the device is powered
off. The serial number is used to differentiate several identical
devices connected to a single host machine at one time.

To reset the serial number to the default value, use the resetDefaults
method.

Example Method:

```shell
resetDefaults
```

Example Response:

```json
{
  "method":"resetDefaults",
  "status":success
}
```

####Python

Example Python session:

```python
from modular_device import ModularDevice
dev = ModularDevice() # Automatically finds device if one available
dev.get_device_info()
```

For more details on the Python interface:

<https://github.com/JaneliaSciComp/modular_device_python>

####Matlab

Example Matlab session:

```matlab
% Linux and Mac OS X
ls /dev/tty*
serial_port = '/dev/ttyACM0'     % example Linux serial port
serial_port = '/dev/tty.usbmodem262471' % example Mac OS X serial port
% Windows
getAvailableComPorts()
serial_port = 'COM4'             % example Windows serial port
dev = ModularDevice(serial_port) % creates a device object
dev.open()                       % opens a serial connection to the device
device_info = dev.getDeviceInfo()
dev.getMethods()                 % get device methods
```

For more details on the Matlab interface:

<https://github.com/JaneliaSciComp/modular_device_matlab>

##Installation

###Install This Library and its Dependencies Together

<https://github.com/JaneliaSciComp/arduino-libraries>
