package counter is
   
   task type count_task is
      entry count_up(to: in Integer);
      entry count_down(from: in Integer); 
   end count_task;

end counter;
