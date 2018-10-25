with MicroBit.IOs;
package dc_motor_controller is
   forward: constant Boolean := true;
   backward: constant Boolean := false;
   
   procedure set_speed(pwm: in MicroBit.IOs.Analog_Value);
   procedure set_direction(state: in Boolean);
   
private
   direction_pin: constant MicroBit.IOs.Pin_Id := 0;
   pwm_pin: constant MicroBit.IOs.Pin_Id := 1;  
end dc_motor_controller;
