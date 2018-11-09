with MicroBit.IOs;
package dc_motor_controller is
   -- Direction constants
   forward: constant Boolean := true;
   backward: constant Boolean := false;
   
   -- Write argument defined values to physical pins
   procedure set_speed(pwm: in MicroBit.IOs.Analog_Value);
   procedure set_direction(state: in Boolean);
   
private
   -- Physical speed control and direction pins
   pwm_pin: constant MicroBit.IOs.Pin_Id := 0;  
   direction_pin_1: constant MicroBit.IOs.Pin_Id := 2;
   direction_pin_2: constant MicroBit.IOs.Pin_Id := 3;   
end dc_motor_controller;
