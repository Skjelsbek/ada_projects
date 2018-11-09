with dc_motor_controller;
with Steering;
with MicroBit.IOs;
with MicroBit.Time;

procedure Main is
   -- Pin declarations
   Left_Pin       : constant MicroBit.IOs.Pin_Id := 5;
   Right_Pin      : constant MicroBit.IOs.Pin_Id := 6;
   Reverse_Pin    : constant MicroBit.IOs.Pin_Id := 7;
   Stuck_Pin      : constant MicroBit.IOs.Pin_Id := 8;
   Feedback_Out   : constant MicroBit.IOs.Pin_Id := 9;
   Feedback_In    : constant MicroBit.IOs.Pin_Id := 10;

   -- Signal states
   Left_Signal    : Boolean := False;
   Right_Signal   : Boolean := False;
   Reverse_Signal : Boolean := False;
   Stuck_Signal   : Boolean := False;
   Halt_Signal    : Boolean := False;
   Direction      : Boolean := False;

   -- Complete stop
   Dead_Stop      : constant MicroBit.IOs.Analog_Value := 0;


begin

   -- Center wheels, initialize DCMC direction forward and set speed
   Steering.center_wheels;
   dc_motor_controller.set_direction(dc_motor_controller.forward);
   dc_motor_controller.set_speed(500);

   loop

      -- Check signals
      Left_Signal    := MicroBit.IOs.Set(Left_Pin);
      Right_Signal   := MicroBit.IOs.Set(Right_Pin);
      Reverse_Signal := MicroBit.IOs.Set(Reverse_Pin);
      Stuck_Signal   := MicroBit.IOs.Set(Stuck_Pin);

      if Halt_Signal then
         loop
            exit when not MicroBit.IOs.Set(Feedback_In);
         end loop;

         Halt_Signal := False;

      elsif Stuck_Signal then
         dc_motor_controller.set_speed(Dead_Stop); -- stop the vehicle

      elsif Reverse_Signal then
         -- Set direction and speed
         if not Direction then
            dc_motor_controller.set_direction(dc_motor_controller.backward);
            dc_motor_controller.set_speed(500);
            Direction := True;
         end if;

      elsif Left_Signal then
         -- Delay to let vehicle stop, then turn and send interrupt signal to Arduino
         MicroBit.Time.Delay_Ms(1000);
         MicroBit.IOs.Set(Feedback_Out, True); -- Tell Arduino to wait
         Steering.turn(Steering.Left, 30); -- Turn
         MicroBit.IOs.Set(Feedback_Out, False); -- Tell Arduino continue
         Halt_Signal := True;

      elsif Right_Signal then
         -- Delay to let vehicle stop, then turn and send interrupt signal to Arduino
         MicroBit.Time.Delay_Ms(1000);
         MicroBit.IOs.Set(Feedback_Out, True);
         Steering.turn(Steering.Right, 30);
         MicroBit.IOs.Set(Feedback_Out, False);
         Halt_Signal := True;
      else
         -- Path is clear, drive forward
         if Direction then
            dc_motor_controller.set_direction(dc_motor_controller.forward);
            dc_motor_controller.set_speed(500);
            Direction := False;
         end if;
      end if;
   end loop;
end Main;
