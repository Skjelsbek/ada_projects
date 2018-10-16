pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E66 : Short_Integer; pragma Import (Ada, E66, "cortex_m__nvic_E");
   E58 : Short_Integer; pragma Import (Ada, E58, "nrf51__events_E");
   E20 : Short_Integer; pragma Import (Ada, E20, "nrf51__gpio_E");
   E61 : Short_Integer; pragma Import (Ada, E61, "nrf51__gpio__tasks_and_events_E");
   E63 : Short_Integer; pragma Import (Ada, E63, "nrf51__interrupts_E");
   E28 : Short_Integer; pragma Import (Ada, E28, "nrf51__rtc_E");
   E42 : Short_Integer; pragma Import (Ada, E42, "nrf51__tasks_E");
   E40 : Short_Integer; pragma Import (Ada, E40, "nrf51__adc_E");
   E75 : Short_Integer; pragma Import (Ada, E75, "nrf51__clock_E");
   E71 : Short_Integer; pragma Import (Ada, E71, "nrf51__ppi_E");
   E31 : Short_Integer; pragma Import (Ada, E31, "nrf51__timers_E");
   E34 : Short_Integer; pragma Import (Ada, E34, "nrf51__twi_E");
   E18 : Short_Integer; pragma Import (Ada, E18, "nrf51__device_E");
   E38 : Short_Integer; pragma Import (Ada, E38, "microbit__ios_E");
   E73 : Short_Integer; pragma Import (Ada, E73, "microbit__time_E");

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


      E66 := E66 + 1;
      E58 := E58 + 1;
      Nrf51.Gpio'Elab_Body;
      E20 := E20 + 1;
      E61 := E61 + 1;
      E63 := E63 + 1;
      E28 := E28 + 1;
      E42 := E42 + 1;
      E40 := E40 + 1;
      E75 := E75 + 1;
      E71 := E71 + 1;
      Nrf51.Timers'Elab_Body;
      E31 := E31 + 1;
      Nrf51.Twi'Elab_Body;
      E34 := E34 + 1;
      Nrf51.Device'Elab_Spec;
      E18 := E18 + 1;
      Microbit.Ios'Elab_Body;
      E38 := E38 + 1;
      Microbit.Time'Elab_Body;
      E73 := E73 + 1;
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
   --   D:\programming\ada_projects\rts_car_project_remote\obj\main.o
   --   -LD:\programming\ada_projects\rts_car_project_remote\obj\
   --   -LD:\programming\ada_projects\rts_car_project_remote\obj\
   --   -LD:\programming\ada_projects\Ada_Drivers_Library\boards\MicroBit\obj\zfp_lib_Debug\
   --   -LD:\gnat\2018-arm-elf\arm-eabi\lib\gnat\zfp-microbit\adalib\
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
