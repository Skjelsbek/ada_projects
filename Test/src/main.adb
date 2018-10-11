with Ada.Text_IO, Ada.Integer_Text_IO; use Ada;

procedure Main is
   tmp: Integer := 0;

begin
   Integer_Text_IO.Get(tmp);

   if tmp = 1 then
      Text_IO.Put("Oh shit this works!");
   else
      Text_IO.Put("!");
   end if;

   null;
end Main;
