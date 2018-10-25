--with MicroBit.IOs;
with MicroBit.Time;
--with dc_motor_controller; use dc_motor_controller;
with MicroBit.Servos;

procedure Main is
begin

   loop
      --MicroBit.Servos.Go(0, 90);
      --MicroBit.Time.Delay_Ms(1000);
      --MicroBit.Servos.Go(0, 120);
      --MicroBit.Time.Delay_Ms(1000);
      MicroBit.Servos.Go(0, 140);
      MicroBit.Time.Delay_Ms(1000);
   end loop;
   --loop
      --set_direction(forward);
      --MicroBit.Time.Delay_Ms(1000);
      --set_direction(backward);
      --MicroBit.Time.Delay_Ms(1000);


      --  Loop for value between 0 and 128

      --for speed in MicroBit.IOs.Analog_Value range 0 .. 1023 loop
        -- dc_motor_controller.set_speed(speed);
         --MicroBit.Time.Delay_Ms (20);
      --end loop;

      --for speed in MicroBit.IOs.Analog_Value range 1023 .. 0 loop
         --dc_motor_controller.set_speed(speed);
         --MicroBit.Time.Delay_Ms (20);
      --end loop;

      --direction := dc_motor_controller.backward;
      --dc_motor_controller.set_direction(direction);
      --  Loop for value between 0 and 128
      --for speed in MicroBit.IOs.Analog_Value range 0 .. 1023 loop
         --dc_motor_controller.set_speed(speed);
         --MicroBit.Time.Delay_Ms (20);
      --end loop;

      --for speed in MicroBit.IOs.Analog_Value range 1023 .. 0 loop
         --dc_motor_controller.set_speed(speed);
         --MicroBit.Time.Delay_Ms (20);
      --end loop;
  -- end loop;
end Main;
