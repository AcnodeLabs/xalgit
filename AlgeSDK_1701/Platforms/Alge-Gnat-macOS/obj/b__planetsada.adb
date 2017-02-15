pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b__planetsada.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__planetsada.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E147 : Short_Integer; pragma Import (Ada, E147, "system__os_lib_E");
   E020 : Short_Integer; pragma Import (Ada, E020, "system__soft_links_E");
   E018 : Short_Integer; pragma Import (Ada, E018, "system__exception_table_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "ada__containers_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "ada__io_exceptions_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "ada__numerics_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__strings_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "ada__strings__maps_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "ada__tags_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "ada__streams_E");
   E071 : Short_Integer; pragma Import (Ada, E071, "interfaces__c_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "interfaces__c__strings_E");
   E032 : Short_Integer; pragma Import (Ada, E032, "system__exceptions_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "system__file_control_block_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "system__file_io_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "system__finalization_root_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "ada__finalization_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "system__storage_pools_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "system__finalization_masters_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "system__storage_pools__subpools_E");
   E069 : Short_Integer; pragma Import (Ada, E069, "ada__calendar_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "system__pool_global_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "system__random_seed_E");
   E024 : Short_Integer; pragma Import (Ada, E024, "system__secondary_stack_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__strings__unbounded_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "system__tasking__initialization_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "ada__real_time_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "ada__text_io_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "system__tasking__protected_objects_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "system__tasking__protected_objects__entries_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "system__tasking__queuing_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "system__tasking__stages_E");
   E003 : Short_Integer; pragma Import (Ada, E003, "algesdk_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "hittestcode_E");
   E002 : Short_Integer; pragma Import (Ada, E002, "adaapp_E");
   E011 : Short_Integer; pragma Import (Ada, E011, "t_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "t__th_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E006 := E006 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "hittestcode__finalize_spec");
      begin
         if E006 = 0 then
            F1;
         end if;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "algesdk__finalize_spec");
      begin
         E003 := E003 - 1;
         if E003 = 0 then
            F2;
         end if;
      end;
      E199 := E199 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         if E199 = 0 then
            F3;
         end if;
      end;
      E140 := E140 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__text_io__finalize_spec");
      begin
         if E140 = 0 then
            F4;
         end if;
      end;
      E101 := E101 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "ada__strings__unbounded__finalize_spec");
      begin
         if E101 = 0 then
            F5;
         end if;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__file_io__finalize_body");
      begin
         E145 := E145 - 1;
         if E145 = 0 then
            F6;
         end if;
      end;
      E117 := E117 - 1;
      E115 := E115 - 1;
      E154 := E154 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__pool_global__finalize_spec");
      begin
         if E154 = 0 then
            F7;
         end if;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__storage_pools__subpools__finalize_spec");
      begin
         if E115 = 0 then
            F8;
         end if;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__finalization_masters__finalize_spec");
      begin
         if E117 = 0 then
            F9;
         end if;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      finalize_library;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, True, True, False, False, True, 
           False, False, True, True, True, True, False, False, 
           True, False, False, True, True, False, True, True, 
           False, True, True, True, True, False, False, False, 
           False, False, True, False, False, True, False, True, 
           False, False, True, False, False, False, True, True, 
           False, False, True, False, False, False, False, False, 
           False, False, True, True, True, True, True, False, 
           False, True, False, True, True, True, False, True, 
           True, False, True, True, True, True, False, False, 
           True, False, False, False, False, True, True, True, 
           False, False, False),
         Count => (0, 0, 0, 0, 2, 1, 1, 0, 0, 0),
         Unknown => (False, False, False, False, False, False, False, False, False, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      if E020 = 0 then
         System.Soft_Links'Elab_Spec;
      end if;
      if E018 = 0 then
         System.Exception_Table'Elab_Body;
      end if;
      E018 := E018 + 1;
      if E098 = 0 then
         Ada.Containers'Elab_Spec;
      end if;
      E098 := E098 + 1;
      if E125 = 0 then
         Ada.Io_Exceptions'Elab_Spec;
      end if;
      E125 := E125 + 1;
      if E015 = 0 then
         Ada.Numerics'Elab_Spec;
      end if;
      E015 := E015 + 1;
      if E099 = 0 then
         Ada.Strings'Elab_Spec;
      end if;
      E099 := E099 + 1;
      if E105 = 0 then
         Ada.Strings.Maps'Elab_Spec;
      end if;
      if E081 = 0 then
         Ada.Tags'Elab_Spec;
      end if;
      if E124 = 0 then
         Ada.Streams'Elab_Spec;
      end if;
      E124 := E124 + 1;
      if E071 = 0 then
         Interfaces.C'Elab_Spec;
      end if;
      if E137 = 0 then
         Interfaces.C.Strings'Elab_Spec;
      end if;
      if E032 = 0 then
         System.Exceptions'Elab_Spec;
      end if;
      E032 := E032 + 1;
      if E150 = 0 then
         System.File_Control_Block'Elab_Spec;
      end if;
      E150 := E150 + 1;
      if E127 = 0 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E127 := E127 + 1;
      if E122 = 0 then
         Ada.Finalization'Elab_Spec;
      end if;
      E122 := E122 + 1;
      if E129 = 0 then
         System.Storage_Pools'Elab_Spec;
      end if;
      E129 := E129 + 1;
      if E117 = 0 then
         System.Finalization_Masters'Elab_Spec;
      end if;
      if E115 = 0 then
         System.Storage_Pools.Subpools'Elab_Spec;
      end if;
      if E069 = 0 then
         Ada.Calendar'Elab_Spec;
      end if;
      if E069 = 0 then
         Ada.Calendar'Elab_Body;
      end if;
      E069 := E069 + 1;
      if E154 = 0 then
         System.Pool_Global'Elab_Spec;
      end if;
      E154 := E154 + 1;
      if E067 = 0 then
         System.Random_Seed'Elab_Body;
      end if;
      E067 := E067 + 1;
      E115 := E115 + 1;
      if E117 = 0 then
         System.Finalization_Masters'Elab_Body;
      end if;
      E117 := E117 + 1;
      if E145 = 0 then
         System.File_Io'Elab_Body;
      end if;
      E145 := E145 + 1;
      E137 := E137 + 1;
      E071 := E071 + 1;
      if E081 = 0 then
         Ada.Tags'Elab_Body;
      end if;
      E081 := E081 + 1;
      E105 := E105 + 1;
      if E020 = 0 then
         System.Soft_Links'Elab_Body;
      end if;
      E020 := E020 + 1;
      if E147 = 0 then
         System.Os_Lib'Elab_Body;
      end if;
      E147 := E147 + 1;
      if E024 = 0 then
         System.Secondary_Stack'Elab_Body;
      end if;
      E024 := E024 + 1;
      if E101 = 0 then
         Ada.Strings.Unbounded'Elab_Spec;
      end if;
      E101 := E101 + 1;
      if E187 = 0 then
         System.Tasking.Initialization'Elab_Body;
      end if;
      E187 := E187 + 1;
      if E211 = 0 then
         Ada.Real_Time'Elab_Spec;
      end if;
      if E211 = 0 then
         Ada.Real_Time'Elab_Body;
      end if;
      E211 := E211 + 1;
      if E140 = 0 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if E140 = 0 then
         Ada.Text_Io'Elab_Body;
      end if;
      E140 := E140 + 1;
      if E195 = 0 then
         System.Tasking.Protected_Objects'Elab_Body;
      end if;
      E195 := E195 + 1;
      if E199 = 0 then
         System.Tasking.Protected_Objects.Entries'Elab_Spec;
      end if;
      E199 := E199 + 1;
      if E203 = 0 then
         System.Tasking.Queuing'Elab_Body;
      end if;
      E203 := E203 + 1;
      if E209 = 0 then
         System.Tasking.Stages'Elab_Body;
      end if;
      E209 := E209 + 1;
      if E003 = 0 then
         Algesdk'Elab_Spec;
      end if;
      E003 := E003 + 1;
      if E006 = 0 then
         Hittestcode'Elab_Spec;
      end if;
      if E006 = 0 then
         Hittestcode'Elab_Body;
      end if;
      E006 := E006 + 1;
      if E002 = 0 then
         Adaapp'Elab_Body;
      end if;
      E002 := E002 + 1;
      if E009 = 0 then
         t.th'elab_spec;
      end if;
      if E009 = 0 then
         t.th'elab_body;
      end if;
      E009 := E009 + 1;
      E011 := E011 + 1;
   end adainit;

--  BEGIN Object file/option list
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/CMD.o
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/AlgeSDK.o
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/hittestcode.o
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/AdaApp.o
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/structdefs_h.o
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/t-th.o
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/t.o
   --   -L/Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/
   --   -L/Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/
   --   -L/usr/local/gnat/lib/gcc/x86_64-apple-darwin14.5.0/4.9.4/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
