with MicroBit.IOs;
with MicroBit.Time;

procedure Main is
begin
   --  Loop forever
   loop

      --  Loop for value between 0 and 128
      for Value in MicroBit.IOs.Analog_Value range 0 .. 128 loop
         --  Write the analog value of pin 0
         MicroBit.IOs.Write (0, Value);
         --  Wait 20 milliseconds
         MicroBit.Time.Delay_Ms (20);
      end loop;
   end loop;
end Main;
