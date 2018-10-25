with MicroBit.Servos; use MicroBit;

package Steering is
   
   type direction is (left, right);
   type degrees is range 0 .. 45;
   
   task type turn; 
   
private   
   servo_pin: constant Servos.Servo_Pin_Id := 2;
   center: constant Servos.Servo_Set_Point := 90;
end Steering;
