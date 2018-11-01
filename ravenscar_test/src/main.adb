with MicroBit.IOs;
with Ada.Real_Time; use Ada.Real_Time;

procedure Main is
   test: constant MicroBit.IOs.Pin_Id := 1;
   next_release: Ada.Real_Time.Time;
begin
   next_release := Ada.Real_Time.Clock + Ada.Real_Time.Milliseconds(10);
   MicroBit.IOs.Set(test, True);
   delay until next_release;
   MicroBit.IOs.Set(test, False);
end Main;
