with Ada.Integer_Text_IO; use Ada;
with Ada.Text_IO;
with counter;
procedure Main is
   test: counter.count_task;
begin
   test.count_up(100);

   for c in Character range 'A' .. 'Z' loop
      Text_IO.Put(c);
   end loop;
   null;
end Main;
