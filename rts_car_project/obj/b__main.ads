pragma Warnings (Off);
pragma Ada_95;
pragma Restrictions (No_Exception_Propagation);
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is


   GNAT_Version : constant String :=
                    "GNAT Version: Community 2018 (20180523-73)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_main" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure main;
   pragma Export (C, main, "main");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  ada.exceptions%s
   --  ada.exceptions%b
   --  system.machine_code%s
   --  system.parameters%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.secondary_stack%s
   --  system.secondary_stack%b
   --  ada.tags%s
   --  ada.tags%b
   --  system.unsigned_types%s
   --  system.assertions%s
   --  system.assertions%b
   --  cortex_m%s
   --  cortex_m_svd%s
   --  hal%s
   --  cortex_m_svd.nvic%s
   --  nrf51_svd%s
   --  nrf51_svd.aar%s
   --  nrf51_svd.adc%s
   --  nrf51_svd.ccm%s
   --  nrf51_svd.clock%s
   --  nrf51_svd.ecb%s
   --  nrf51_svd.gpio%s
   --  nrf51_svd.gpiote%s
   --  nrf51_svd.power%s
   --  nrf51_svd.ppi%s
   --  nrf51_svd.qdec%s
   --  nrf51_svd.radio%s
   --  nrf51_svd.rng%s
   --  nrf51_svd.rtc%s
   --  nrf51_svd.spi%s
   --  nrf51_svd.temp%s
   --  nrf51_svd.timer%s
   --  nrf51_svd.twi%s
   --  nrf51_svd.uart%s
   --  nrf51_svd.wdt%s
   --  cortex_m.nvic%s
   --  cortex_m.nvic%b
   --  hal.gpio%s
   --  hal.i2c%s
   --  hal.time%s
   --  nrf51%s
   --  nrf51.events%s
   --  nrf51.events%b
   --  nrf51.gpio%s
   --  nrf51.gpio%b
   --  nrf51.gpio.tasks_and_events%s
   --  nrf51.gpio.tasks_and_events%b
   --  nrf51.interrupts%s
   --  nrf51.interrupts%b
   --  nrf51.rtc%s
   --  nrf51.rtc%b
   --  nrf51.tasks%s
   --  nrf51.tasks%b
   --  nrf51.adc%s
   --  nrf51.adc%b
   --  nrf51.clock%s
   --  nrf51.clock%b
   --  nrf51.ppi%s
   --  nrf51.ppi%b
   --  nrf51.timers%s
   --  nrf51.timers%b
   --  nrf51.twi%s
   --  nrf51.twi%b
   --  nrf51.device%s
   --  microbit%s
   --  microbit.ios%s
   --  microbit.ios%b
   --  dc_motor_controller%s
   --  dc_motor_controller%b
   --  microbit.servos%s
   --  microbit.servos%b
   --  microbit.time%s
   --  microbit.time%b
   --  steering%s
   --  steering%b
   --  main%b
   --  END ELABORATION ORDER

end ada_main;
