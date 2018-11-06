with MicroBit.Servos; use MicroBit;

package Steering is
   
   type direction is (left, right);  
   
   procedure turn (dir: in direction; deg: in Integer);
   procedure center_wheels;
   
private   
   servo_pin: constant Servos.Servo_Pin_Id := 1;
   center: constant Integer := 90;   
end Steering;
