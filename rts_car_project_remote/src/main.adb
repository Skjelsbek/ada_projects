with MicroBit.IOs;
with MicroBit.Time;
with HAL.UART;

procedure Main is
   data: HAL.UART.UART_Data_8b := (1,2,3,4,5,6,7,8);
   status: HAL.UART.UART_Status;
   type port_ptr is access all HAL.UART.UART_Port'Class;
   port : port_ptr;
begin
   --  Loop forever
   loop

      --  Loop for value between 0 and 128
      for Value in MicroBit.IOs.Analog_Value range 0 .. 128 loop
         --  Write the analog value of pin 0
         MicroBit.IOs.Write (0, Value);
         HAL.UART.Transmit(port, data, status);
         --  Wait 20 milliseconds
         MicroBit.Time.Delay_Ms (20);
      end loop;
   end loop;
end Main;
