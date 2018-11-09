with MicroBit.Servos; use MicroBit;

package Steering is
     
   type direction is (left, right);  
   
   -- Write to physical pins
   procedure turn (dir: in direction; deg: in Integer);
   procedure center_wheels;
   
   
private   
   -- Physical pin to servo and center position
   servo_pin: constant Servos.Servo_Pin_Id := 1;
   center: constant Integer := 80;   
end Steering;
