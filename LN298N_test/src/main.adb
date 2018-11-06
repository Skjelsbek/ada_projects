with dc_motor_controller;
with MicroBit.IOs;
with MicroBit.Time;

procedure Main is

begin
   loop
      dc_motor_controller.set_direction(dc_motor_controller.forward);

      for i in MicroBit.IOs.Analog_Value range 0 .. 1023 loop
         dc_motor_controller.set_speed(i);
         MicroBit.Time.Delay_Ms(4);
      end loop;

      for i in reverse MicroBit.IOs.Analog_Value range 0 .. 1023 loop
         dc_motor_controller.set_speed(i);
         MicroBit.Time.Delay_Ms(4);
      end loop;

      MicroBit.Time.Delay_Ms(1000);
      dc_motor_controller.set_direction(dc_motor_controller.backward);

      for i in MicroBit.IOs.Analog_Value range 0 .. 1023 loop
         dc_motor_controller.set_speed(i);
         MicroBit.Time.Delay_Ms(4);
      end loop;

      for i in reverse MicroBit.IOs.Analog_Value range 0 .. 1023 loop
         dc_motor_controller.set_speed(i);
         MicroBit.Time.Delay_Ms(4);
      end loop;

      MicroBit.Time.Delay_Ms(1000);
   end loop;
end Main;
