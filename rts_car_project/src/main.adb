with dc_motor_controller;
with Steering;
with MicroBit.Time;
with MicroBit.IOs;

procedure Main is

begin
   loop
      Steering.center_wheels;
      dc_motor_controller.set_direction(dc_motor_controller.forward);

      for i in MicroBit.IOs.Analog_Value range 0 .. 1023 loop
         dc_motor_controller.set_speed(i);
         MicroBit.Time.Delay_Ms(4);
      end loop;

      MicroBit.Time.Delay_Ms(500);

      Steering.turn(Steering.left, 30);

      for i in reverse MicroBit.IOs.Analog_Value range 0 .. 1023 loop
         dc_motor_controller.set_speed(i);
         MicroBit.Time.Delay_Ms(4);
      end loop;

      MicroBit.Time.Delay_Ms(500);

      dc_motor_controller.set_direction(dc_motor_controller.backward);
      Steering.center_wheels;

      for i in MicroBit.IOs.Analog_Value range 0 .. 1023 loop
         dc_motor_controller.set_speed(i);
         MicroBit.Time.Delay_Ms(4);
      end loop;

      MicroBit.Time.Delay_Ms(500);

      Steering.turn(Steering.right, 30);

      for i in reverse MicroBit.IOs.Analog_Value range 0 .. 1023 loop
         dc_motor_controller.set_speed(i);
         MicroBit.Time.Delay_Ms(4);
      end loop;

      MicroBit.Time.Delay_Ms(500);
   end loop;
end Main;
