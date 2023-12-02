#include "esphome.h"
#include "Adafruit_MCP4725.h"

using namespace esphome;

Adafruit_MCP4725 dac;

class DacOut : public Component, public output::FloatOutput {
 public:

 void setup() override 
 { // This will be called by App.setup()
    dac.begin(0x62);
 }

 void write_state(float state) override
 {
    dac.setVoltage(state , false);
 }
};
