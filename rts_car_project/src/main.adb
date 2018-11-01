--with MicroBit.IOs;
--with MicroBit.Time;
--with dc_motor_controller; use dc_motor_controller;
--with Steering;
--with Ada.Text_IO; use Ada;
with MicroBit.IOs; use MicroBit;
with Ada.Real_Time; use Ada.Real_Time;
procedure Main is
   next_release: Ada.Real_Time.Time;
begin
   next_release := Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(10);
   IOs.set(0, True);
   delay until next_release;
   IOs.set(0, False);

   loop

      exit when not IOs.set(1);
   end loop;
   null;
end Main;
