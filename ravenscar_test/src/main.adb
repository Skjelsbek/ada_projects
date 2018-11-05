with Ada.Real_Time; --use Ada.Real_Time;
with MicroBit.IOs; use MicroBit;
procedure Main is
   --release_time: Time;
begin
   --release_time := Clock + Microseconds(10);
   IOs.set(0, True);
   --delay until release_time;
   IOs.set(0, False);
   null;
end Main;
