with MicroBit.Time;
with Steering;

procedure Main is

begin
   loop
      Steering.center_wheels;
      MicroBit.Time.Delay_Ms(500);
      Steering.turn(Steering.right, 30);
      MicroBit.Time.Delay_Ms(500);
      Steering.center_wheels;
      MicroBit.Time.Delay_Ms(500);
      Steering.turn(Steering.left, 30);
      MicroBit.Time.Delay_Ms(500);
   end loop;

end Main;
