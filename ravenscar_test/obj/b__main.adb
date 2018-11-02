pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E005 : Short_Integer; pragma Import (Ada, E005, "ada__real_time_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "cortex_m__nvic_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "nrf51__events_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "nrf51__gpio_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "nrf51__gpio__tasks_and_events_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "nrf51__interrupts_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "nrf51__rtc_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "nrf51__tasks_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "nrf51__adc_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "nrf51__ppi_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "nrf51__timers_E");
   E079 : Short_Integer; pragma Import (Ada, E079, "nrf51__twi_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "nrf51__device_E");
   E083 : Short_Integer; pragma Import (Ada, E083, "microbit__ios_E");

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
      E111 := E111 + 1;
      E103 := E103 + 1;
      Nrf51.Gpio'Elab_Body;
      E065 := E065 + 1;
      E106 := E106 + 1;
      E108 := E108 + 1;
      E073 := E073 + 1;
      E087 := E087 + 1;
      E085 := E085 + 1;
      E115 := E115 + 1;
      Nrf51.Timers'Elab_Body;
      E076 := E076 + 1;
      Nrf51.Twi'Elab_Body;
      E079 := E079 + 1;
      Nrf51.Device'Elab_Spec;
      E063 := E063 + 1;
      Microbit.Ios'Elab_Body;
      E083 := E083 + 1;
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
   --   -LD:\programming\ada_projects\ravenscar_test\Ada_Drivers_Library\obj_lib_Debug\
   --   -LD:\gnat\2018-arm-elf\arm-eabi\lib\gnat\ravenscar-sfp-microbit\adalib\
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
