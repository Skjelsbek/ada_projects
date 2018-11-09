package body dc_motor_controller is          
   
   -- Writing the speed passed in the argument to the physical pin
   procedure set_speed(pwm: in MicroBit.IOs.Analog_Value) is
   begin
      MicroBit.IOs.Write(pwm_pin, pwm);
   end set_speed;
   
   -- Change polarity on the dc motor
   procedure set_direction(state: in Boolean) is
   begin
      MicroBit.IOs.Set(direction_pin_1, not state);
      MicroBit.IOs.Set(direction_pin_2, state);
   end set_direction;
   
end dc_motor_controller;
