pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E005 : Short_Integer; pragma Import (Ada, E005, "ada__real_time_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "cortex_m__nvic_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "nrf51__events_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "nrf51__gpio_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "nrf51__gpio__tasks_and_events_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "nrf51__interrupts_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "nrf51__rtc_E");
   E089 : Short_Integer; pragma Import (Ada, E089, "nrf51__tasks_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "nrf51__adc_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "nrf51__ppi_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "nrf51__timers_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "nrf51__twi_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "nrf51__device_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "microbit__ios_E");

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


      Ada.Real_Time'Elab_Body;
      E005 := E005 + 1;
      E113 := E113 + 1;
      E105 := E105 + 1;
      Nrf51.Gpio'Elab_Body;
      E067 := E067 + 1;
      E108 := E108 + 1;
      E110 := E110 + 1;
      E075 := E075 + 1;
      E089 := E089 + 1;
      E087 := E087 + 1;
      E117 := E117 + 1;
      Nrf51.Timers'Elab_Body;
      E078 := E078 + 1;
      Nrf51.Twi'Elab_Body;
      E081 := E081 + 1;
      Nrf51.Device'Elab_Spec;
      E065 := E065 + 1;
      Microbit.Ios'Elab_Body;
      E085 := E085 + 1;
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
   --   D:\programming\ada_projects\ravenscar_test\obj\main.o
   --   -LD:\programming\ada_projects\ravenscar_test\obj\
   --   -LD:\programming\ada_projects\ravenscar_test\obj\
   --   -LD:\programming\ada_projects\Ada_Drivers_Library\boards\MicroBit\obj\zfp_lib_Debug\
   --   -LD:\gnat\2018-arm-elf\arm-eabi\lib\gnat\ravenscar-sfp-microbit\adalib\
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
