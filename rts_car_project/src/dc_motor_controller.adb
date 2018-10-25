package body dc_motor_controller is
   
   direction_pin: constant MicroBit.IOs.Pin_Id := 0;
   pwm_pin: constant MicroBit.IOs.Pin_Id := 1;      
   
   procedure set_speed(pwm: in MicroBit.IOs.Analog_Value) is
   begin
      MicroBit.IOs.Write(pwm_pin, pwm);
   end set_speed;

   procedure set_direction(state: in Boolean) is
   begin
      MicroBit.IOs.Set(direction_pin, state);
   end set_direction;

end dc_motor_controller;
