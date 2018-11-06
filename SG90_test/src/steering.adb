package body Steering is                
   
   procedure turn (dir: in direction; deg: in Integer) is
   begin
      
      case dir is
         when left =>
            Servos.Go(servo_pin, Servos.Servo_Set_Point(center - deg));
         when others =>
            Servos.Go(servo_pin, Servos.Servo_Set_Point(center + deg));
      end case;
   end turn;
   
   procedure center_wheels is
   begin
      Servos.Go(servo_pin, Servos.Servo_Set_Point(center));
   end center_wheels;

end Steering;
