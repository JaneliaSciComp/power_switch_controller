// ----------------------------------------------------------------------------
// Callbacks.cpp
//
//
// Authors:
// Peter Polidoro polidorop@janelia.hhmi.org
// ----------------------------------------------------------------------------
#include "Callbacks.h"

using namespace ArduinoJson::Parser;

namespace callbacks
{
// Callbacks must be non-blocking (avoid 'delay')
//
// modular_device.getParameterValue must be cast to either:
// char*
// long
// double
// bool
// JsonArray
// JsonObject
//
// For more info read about ArduinoJson v3 JsonParser JsonValues
//
// modular_device.getSavedVariableValue type must match the saved variable default type
// modular_device.setSavedVariableValue type must match the saved variable default type

IndexedContainer<uint32_t,constants::INDEXED_CHANNELS_COUNT_MAX> indexed_channels;

void getLedsPoweredCallback()
{
  boolean leds_powered = controller.getLedsPowered();
  modular_device.addBooleanToResponse("leds_powered",leds_powered);
}

void setChannelOnCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  controller.setChannelOn(channel);
}

void setChannelOffCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  controller.setChannelOff(channel);
}

void setChannelsOnCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  controller.setChannelsOn(channels);
}

void setChannelsOffCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  controller.setChannelsOff(channels);
}

void toggleChannelCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  controller.toggleChannel(channel);
}

void toggleChannelsCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  controller.toggleChannels(channels);
}

void toggleAllChannelsCallback()
{
  controller.toggleAllChannels();
}

void setAllChannelsOnCallback()
{
  controller.setAllChannelsOn();
}

void setAllChannelsOffCallback()
{
  controller.setAllChannelsOff();
}

void setChannelOnAllOthersOffCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  controller.setChannelOnAllOthersOff(channel);
}

void setChannelOffAllOthersOnCallback()
{
  long channel = modular_device.getParameterValue(constants::channel_parameter_name);
  controller.setChannelOffAllOthersOn(channel);
}

void setChannelsOnAllOthersOffCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  controller.setChannelsOnAllOthersOff(channels);
}

void setChannelsOffAllOthersOnCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  controller.setChannelsOffAllOthersOn(channels);
}

void getChannelsOnCallback()
{
  uint32_t channels_on = controller.getChannelsOn();
  uint32_t bit = 1;
  modular_device.addKeyToResponse("channels_on");
  modular_device.startResponseArray();
  for (int channel=0; channel<constants::channel_count; channel++)
  {
    if (channels_on & (bit << channel))
    {
      modular_device.addToResponse(channel);
    }
  }
  modular_device.stopResponseArray();
}

void getChannelsOffCallback()
{
  uint32_t channels_on = controller.getChannelsOn();
  uint32_t channels_off = ~channels_on;
  uint32_t bit = 1;
  modular_device.addKeyToResponse("channels_off");
  modular_device.startResponseArray();
  for (int channel=0; channel<constants::channel_count; channel++)
  {
    if (channels_off & (bit << channel))
    {
      modular_device.addToResponse(channel);
    }
  }
  modular_device.stopResponseArray();
}

void getChannelCountCallback()
{
  int channel_count = controller.getChannelCount();
  modular_device.addToResponse("channel_count",channel_count);
}

void saveStateCallback()
{
  long state = modular_device.getParameterValue(constants::state_parameter_name);
  controller.saveState(state);
}

void recallStateCallback()
{
  long state = modular_device.getParameterValue(constants::state_parameter_name);
  controller.recallState(state);
}

void getSavedStatesCallback()
{
  uint32_t states_array[constants::STATE_COUNT];
  controller.getStatesArray(states_array);
  uint32_t bit = 1;
  modular_device.addKeyToResponse("saved_states");
  modular_device.startResponseArray();
  for (int state=0; state<constants::STATE_COUNT; state++)
  {
    modular_device.startResponseArray();
    for (int channel=constants::channel_min; channel<=constants::channel_max; channel++)
    {
      if ((bit<<channel) & states_array[state])
      {
        modular_device.addToResponse("on");
      }
      else
      {
        modular_device.addToResponse("off");
      }
    }
    modular_device.stopResponseArray();
  }
  modular_device.stopResponseArray();
}

void addPulseCenteredCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  int index = indexed_channels.add(channels);
  long delay = modular_device.getParameterValue(constants::delay_parameter_name);
  long on_duration = modular_device.getParameterValue(constants::on_duration_parameter_name);
  long start_delay = delay - on_duration/2;
  if (start_delay < 0)
  {
    start_delay = 0;
  }
  EventController::EventId on_event_id = EventController::event_controller.addEventUsingDelay(setChannelsOnEventCallback,
                                                                                              start_delay,
                                                                                              index);
  EventController::event_controller.addEventUsingOffset(setChannelsOffEventCallback,
                                                        on_event_id,
                                                        on_duration,
                                                        index,
                                                        NULL,
                                                        stopEventEventCallback);
}

void addPwmPeriodOnDurationCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  int index = indexed_channels.add(channels);
  long delay = modular_device.getParameterValue(constants::delay_parameter_name);
  long period = modular_device.getParameterValue(constants::period_parameter_name);
  long on_duration = modular_device.getParameterValue(constants::on_duration_parameter_name);
  long count = modular_device.getParameterValue(constants::count_parameter_name);
  EventController::event_controller.addPwmUsingDelayPeriodOnDuration(setChannelsOnEventCallback,
                                                                     setChannelsOffEventCallback,
                                                                     delay,
                                                                     period,
                                                                     on_duration,
                                                                     count,
                                                                     index,
                                                                     NULL,
                                                                     stopEventEventCallback);
}

void addPwmFrequencyDutyCycleCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  int index = indexed_channels.add(channels);
  long delay = modular_device.getParameterValue(constants::delay_parameter_name);
  double frequency = modular_device.getParameterValue(constants::frequency_parameter_name);
  long duty_cycle = modular_device.getParameterValue(constants::duty_cycle_parameter_name);
  long pwm_duration = modular_device.getParameterValue(constants::pwm_duration_parameter_name);
  uint32_t period = 1000/frequency;
  period = max(period,2);
  uint32_t on_duration = (period*duty_cycle)/100;
  on_duration = constrain(on_duration,1,period-1);
  uint32_t count = pwm_duration/period;
  EventController::event_controller.addPwmUsingDelayPeriodOnDuration(setChannelsOnEventCallback,
                                                                     setChannelsOffEventCallback,
                                                                     delay,
                                                                     period,
                                                                     on_duration,
                                                                     count,
                                                                     index,
                                                                     NULL,
                                                                     stopEventEventCallback);
}

void addSpikeAndHoldCallback()
{
  JsonArray channels_array = modular_device.getParameterValue(constants::channels_parameter_name);
  uint32_t channels = arrayToChannels(channels_array);
  int index = indexed_channels.add(channels);
  long delay = modular_device.getParameterValue(constants::delay_parameter_name);
  long spike_duty_cycle = modular_device.getParameterValue(constants::spike_duty_cycle_parameter_name);
  long spike_duration = modular_device.getParameterValue(constants::spike_duration_parameter_name);
  spike_duration = max(spike_duration,2);
  long hold_duty_cycle = modular_device.getParameterValue(constants::hold_duty_cycle_parameter_name);
  long hold_duration = modular_device.getParameterValue(constants::hold_duration_parameter_name);
  hold_duration = max(hold_duration,2);

  uint32_t on_duration = 1;
  uint32_t off_duration = 1;
  uint32_t period = 0;
  uint32_t count = 0;
  if (spike_duty_cycle <= 50)
  {
    period = (100*on_duration)/spike_duty_cycle;
    period = constrain(period,2,spike_duration);
  }
  else
  {
    off_duration = 1;
    period = (100*off_duration)/(100-spike_duty_cycle);
    period = constrain(period,2,spike_duration);
    on_duration = period - off_duration;
  }
  count = spike_duration/period;
  EventController::EventIdPair pwm_event_id_pair =
    EventController::event_controller.addPwmUsingDelayPeriodOnDuration(setChannelsOnEventCallback,
                                                                       setChannelsOffEventCallback,
                                                                       delay,
                                                                       period,
                                                                       on_duration,
                                                                       count,
                                                                       index);

  on_duration = 1;
  if (hold_duty_cycle <= 50)
  {
    period = (100*on_duration)/hold_duty_cycle;
    period = constrain(period,2,hold_duration);
  }
  else
  {
    off_duration = 1;
    period = (100*off_duration)/(100-hold_duty_cycle);
    period = constrain(period,2,hold_duration);
    on_duration = period - off_duration;
  }
  count = hold_duration/period;
  EventController::event_controller.addPwmUsingOffsetPeriodOnDuration(setChannelsOnEventCallback,
                                                                      setChannelsOffEventCallback,
                                                                      pwm_event_id_pair.event_id_0,
                                                                      spike_duration,
                                                                      period,
                                                                      on_duration,
                                                                      count,
                                                                      index,
                                                                      NULL,
                                                                      stopEventEventCallback);
}

void stopAllEventsCallback()
{
  EventController::event_controller.removeAllEvents();
  indexed_channels.clear();
}

uint32_t arrayToChannels(JsonArray channels_array)
{
  uint32_t channels = 0;
  uint32_t bit = 1;
  for (JsonArrayIterator channels_it=channels_array.begin();
       channels_it != channels_array.end();
       ++channels_it)
  {
    long channel = *channels_it;
    channels |= bit << channel;
  }
  return channels;
}

// Standalone Callbacks
void executeStandaloneCallbackCallback()
{
  controller.executeStandaloneCallback();
}

void toggleChannelStandaloneCallback()
{
  uint8_t channel = controller.getChannelIntVar();
  controller.toggleChannel(channel);
}

void saveStateStandaloneCallback()
{
  uint8_t state = controller.getStateIntVar();
  controller.saveState(state);
}

void recallStateStandaloneCallback()
{
  uint8_t state = controller.getStateIntVar();
  controller.recallState(state);
}

// EventController Callbacks
void stopEventEventCallback(int index)
{
  indexed_channels.remove(index);
}

void setChannelsOnEventCallback(int index)
{
  uint32_t channels = indexed_channels[index];
  controller.setChannelsOn(channels);
}

void setChannelsOffEventCallback(int index)
{
  uint32_t channels = indexed_channels[index];
  controller.setChannelsOff(channels);
}
}
