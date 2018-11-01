with MicroBit.Servos; use MicroBit;
with MicroBit.IOs;
package body Steering is                
   
   task body turn is   
   begin
      accept params (dir: in direction, deg: in degrees) do
         case dir is
            when left =>
               Servos.Go(servo_pin, center - deg);
            when right =>
               Servos.Go(servo_pin, center + deg);
            when others =>
               Servos.Go(servo_pin, center);
         end case;
      end params;
   end turn;

end servo_controller;
