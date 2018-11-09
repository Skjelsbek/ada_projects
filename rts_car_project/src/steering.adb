with dc_motor_controller;
with MicroBit.Time;

package body Steering is                
    
   -- Turn vehicle to passed direction
   procedure turn (dir: in direction; deg: in Integer) is
      
   begin
      
      dc_motor_controller.set_speed(0);
      
      case dir is
         when left =>
            Servos.Go(servo_pin, Servos.Servo_Set_Point(center - deg));
         when others =>
            Servos.Go(servo_pin, Servos.Servo_Set_Point(center + deg + 10));
      end case;
      
      dc_motor_controller.set_direction(dc_motor_controller.forward);
      dc_motor_controller.set_speed(600);
      MicroBit.Time.Delay_Ms(3500);
      center_wheels;
      
   end turn;
   
   -- Reset the servo position
   procedure center_wheels is
   begin
      Servos.Go(servo_pin, Servos.Servo_Set_Point(center));
   end center_wheels;

end Steering;
