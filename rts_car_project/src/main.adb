--with MicroBit.IOs;
--with MicroBit.Time;
--with dc_motor_controller; use dc_motor_controller;
with Steering;
with Ada.Text_IO; use Ada;
procedure Main is
begin
   Text_IO.Put_Line(Steering.direction'Image(Steering.left));
   null;
end Main;
