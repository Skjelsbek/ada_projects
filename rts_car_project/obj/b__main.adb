pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E67 : Short_Integer; pragma Import (Ada, E67, "cortex_m__nvic_E");
   E59 : Short_Integer; pragma Import (Ada, E59, "nrf51__events_E");
   E17 : Short_Integer; pragma Import (Ada, E17, "nrf51__gpio_E");
   E62 : Short_Integer; pragma Import (Ada, E62, "nrf51__gpio__tasks_and_events_E");
   E64 : Short_Integer; pragma Import (Ada, E64, "nrf51__interrupts_E");
   E27 : Short_Integer; pragma Import (Ada, E27, "nrf51__rtc_E");
   E43 : Short_Integer; pragma Import (Ada, E43, "nrf51__tasks_E");
   E41 : Short_Integer; pragma Import (Ada, E41, "nrf51__adc_E");
   E76 : Short_Integer; pragma Import (Ada, E76, "nrf51__clock_E");
   E72 : Short_Integer; pragma Import (Ada, E72, "nrf51__ppi_E");
   E30 : Short_Integer; pragma Import (Ada, E30, "nrf51__timers_E");
   E33 : Short_Integer; pragma Import (Ada, E33, "nrf51__twi_E");
   E05 : Short_Integer; pragma Import (Ada, E05, "nrf51__device_E");
   E39 : Short_Integer; pragma Import (Ada, E39, "microbit__ios_E");
   E37 : Short_Integer; pragma Import (Ada, E37, "microbit__servos_E");
   E74 : Short_Integer; pragma Import (Ada, E74, "microbit__time_E");

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
      E17 := E17 + 1;
      E62 := E62 + 1;
      E64 := E64 + 1;
      E27 := E27 + 1;
      E43 := E43 + 1;
      E41 := E41 + 1;
      E76 := E76 + 1;
      E72 := E72 + 1;
      Nrf51.Timers'Elab_Body;
      E30 := E30 + 1;
      Nrf51.Twi'Elab_Body;
      E33 := E33 + 1;
      Nrf51.Device'Elab_Spec;
      E05 := E05 + 1;
      Microbit.Ios'Elab_Body;
      E39 := E39 + 1;
      E37 := E37 + 1;
      Microbit.Time'Elab_Body;
      E74 := E74 + 1;
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
   --   D:\programming\ada_projects\rts_car_project\obj\main.o
   --   -LD:\programming\ada_projects\rts_car_project\obj\
   --   -LD:\programming\ada_projects\rts_car_project\obj\
   --   -LD:\programming\ada_projects\Ada_Drivers_Library\boards\MicroBit\obj\zfp_lib_Debug\
   --   -LD:\gnat\2018-arm-elf\arm-eabi\lib\gnat\zfp-microbit\adalib\
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
