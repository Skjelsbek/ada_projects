with MicroBit.Servos; use MicroBit;
with MicroBit.IOs;
package body Steering is
      
   
   task type turn is
      entry params(dir: in direction, deg: in degrees);      
   end T;      
   
   task body turn is   
   begin
   loop
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
   end loop; 
   end T;

end servo_controller;
