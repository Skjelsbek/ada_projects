with Ada.Text_IO; use Ada;
with Ada.Integer_Text_IO;

   task body count_task is
   begin
      accept count_up (to: in Integer) do
         for i in Integer range 0 .. to loop
            Integer_Text_IO.Put(i);
         end loop;
      end count_up;
      
      accept count_down (from: in Integer) do
         for i in Integer range from .. 0 loop
            Integer_Text_IO.Put(i);
         end loop;
      end count_down;
   end count_task;
   
   --procedure test_pros (to: in Integer) is
     -- test: count_task;
   --begin      
     -- count_task.count_down(to);
   --end test_pros;
end counter;
