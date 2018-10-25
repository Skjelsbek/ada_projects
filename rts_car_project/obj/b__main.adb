pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is



   procedure adainit is
   begin
      null;

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
