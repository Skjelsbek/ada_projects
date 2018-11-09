pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E67 : Short_Integer; pragma Import (Ada, E67, "cortex_m__nvic_E");
   E59 : Short_Integer; pragma Import (Ada, E59, "nrf51__events_E");
   E19 : Short_Integer; pragma Import (Ada, E19, "nrf51__gpio_E");
   E62 : Short_Integer; pragma Import (Ada, E62, "nrf51__gpio__tasks_and_events_E");
   E64 : Short_Integer; pragma Import (Ada, E64, "nrf51__interrupts_E");
   E29 : Short_Integer; pragma Import (Ada, E29, "nrf51__rtc_E");
   E43 : Short_Integer; pragma Import (Ada, E43, "nrf51__tasks_E");
   E41 : Short_Integer; pragma Import (Ada, E41, "nrf51__adc_E");
   E76 : Short_Integer; pragma Import (Ada, E76, "nrf51__clock_E");
   E72 : Short_Integer; pragma Import (Ada, E72, "nrf51__ppi_E");
   E32 : Short_Integer; pragma Import (Ada, E32, "nrf51__timers_E");
   E35 : Short_Integer; pragma Import (Ada, E35, "nrf51__twi_E");
   E07 : Short_Integer; pragma Import (Ada, E07, "nrf51__device_E");
   E39 : Short_Integer; pragma Import (Ada, E39, "microbit__ios_E");
   E04 : Short_Integer; pragma Import (Ada, E04, "dc_motor_controller_E");
   E81 : Short_Integer; pragma Import (Ada, E81, "microbit__servos_E");
   E74 : Short_Integer; pragma Import (Ada, E74, "microbit__time_E");
   E79 : Short_Integer; pragma Import (Ada, E79, "steering_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);


   procedure adainit is
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");

      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      null;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;


      E67 := E67 + 1;
      E59 := E59 + 1;
      Nrf51.Gpio'Elab_Body;
      E19 := E19 + 1;
      E62 := E62 + 1;
      E64 := E64 + 1;
      E29 := E29 + 1;
      E43 := E43 + 1;
      E41 := E41 + 1;
      E76 := E76 + 1;
      E72 := E72 + 1;
      Nrf51.Timers'Elab_Body;
      E32 := E32 + 1;
      Nrf51.Twi'Elab_Body;
      E35 := E35 + 1;
      Nrf51.Device'Elab_Spec;
      E07 := E07 + 1;
      Microbit.Ios'Elab_Body;
      E39 := E39 + 1;
      E04 := E04 + 1;
      E81 := E81 + 1;
      Microbit.Time'Elab_Body;
      E74 := E74 + 1;
      Steering'Elab_Spec;
      E79 := E79 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   D:\programming\ada_projects\rts_car_project\obj\dc_motor_controller.o
   --   D:\programming\ada_projects\rts_car_project\obj\steering.o
   --   D:\programming\ada_projects\rts_car_project\obj\main.o
   --   -LD:\programming\ada_projects\rts_car_project\obj\
   --   -LD:\programming\ada_projects\rts_car_project\obj\
   --   -LD:\programming\ada_projects\Ada_Drivers_Library\boards\MicroBit\obj\zfp_lib_Debug\
   --   -LD:\gnat\2018-arm-elf\arm-eabi\lib\gnat\zfp-microbit\adalib\
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
