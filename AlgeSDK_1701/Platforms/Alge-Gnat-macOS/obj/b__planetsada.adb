pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b__planetsada.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__planetsada.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E151 : Short_Integer; pragma Import (Ada, E151, "system__os_lib_E");
   E024 : Short_Integer; pragma Import (Ada, E024, "system__soft_links_E");
   E022 : Short_Integer; pragma Import (Ada, E022, "system__exception_table_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "ada__containers_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "ada__io_exceptions_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "ada__numerics_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "ada__strings_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "ada__strings__maps_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "ada__tags_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "ada__streams_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "interfaces__c_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "interfaces__c__strings_E");
   E036 : Short_Integer; pragma Import (Ada, E036, "system__exceptions_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "system__file_control_block_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "system__file_io_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "system__finalization_root_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "ada__finalization_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "system__storage_pools_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "system__finalization_masters_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "system__storage_pools__subpools_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "ada__calendar_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "system__pool_global_E");
   E071 : Short_Integer; pragma Import (Ada, E071, "system__random_seed_E");
   E028 : Short_Integer; pragma Import (Ada, E028, "system__secondary_stack_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "ada__strings__unbounded_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "system__tasking__initialization_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "ada__real_time_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "ada__text_io_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "system__tasking__protected_objects_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "system__tasking__protected_objects__entries_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "system__tasking__queuing_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "system__tasking__stages_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "canimator_E");
   E003 : Short_Integer; pragma Import (Ada, E003, "algesdk_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ctimed_E");
   E010 : Short_Integer; pragma Import (Ada, E010, "hittestcode_E");
   E002 : Short_Integer; pragma Import (Ada, E002, "adaapp_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "t_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "t__th_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E010 := E010 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "hittestcode__finalize_spec");
      begin
         if E010 = 0 then
            F1;
         end if;
      end;
      E008 := E008 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "ctimed__finalize_spec");
      begin
         if E008 = 0 then
            F2;
         end if;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "algesdk__finalize_spec");
      begin
         E003 := E003 - 1;
         if E003 = 0 then
            F3;
         end if;
      end;
      E005 := E005 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "canimator__finalize_spec");
      begin
         if E005 = 0 then
            F4;
         end if;
      end;
      E212 := E212 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         if E212 = 0 then
            F5;
         end if;
      end;
      E144 := E144 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "ada__text_io__finalize_spec");
      begin
         if E144 = 0 then
            F6;
         end if;
      end;
      E105 := E105 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "ada__strings__unbounded__finalize_spec");
      begin
         if E105 = 0 then
            F7;
         end if;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__file_io__finalize_body");
      begin
         E149 := E149 - 1;
         if E149 = 0 then
            F8;
         end if;
      end;
      E121 := E121 - 1;
      E119 := E119 - 1;
      E167 := E167 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__pool_global__finalize_spec");
      begin
         if E167 = 0 then
            F9;
         end if;
      end;
      declare
         procedure F10;
         pragma Import (Ada, F10, "system__storage_pools__subpools__finalize_spec");
      begin
         if E119 = 0 then
            F10;
         end if;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "system__finalization_masters__finalize_spec");
      begin
         if E121 = 0 then
            F11;
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

      if E024 = 0 then
         System.Soft_Links'Elab_Spec;
      end if;
      if E022 = 0 then
         System.Exception_Table'Elab_Body;
      end if;
      E022 := E022 + 1;
      if E102 = 0 then
         Ada.Containers'Elab_Spec;
      end if;
      E102 := E102 + 1;
      if E129 = 0 then
         Ada.Io_Exceptions'Elab_Spec;
      end if;
      E129 := E129 + 1;
      if E019 = 0 then
         Ada.Numerics'Elab_Spec;
      end if;
      E019 := E019 + 1;
      if E103 = 0 then
         Ada.Strings'Elab_Spec;
      end if;
      E103 := E103 + 1;
      if E109 = 0 then
         Ada.Strings.Maps'Elab_Spec;
      end if;
      if E085 = 0 then
         Ada.Tags'Elab_Spec;
      end if;
      if E128 = 0 then
         Ada.Streams'Elab_Spec;
      end if;
      E128 := E128 + 1;
      if E075 = 0 then
         Interfaces.C'Elab_Spec;
      end if;
      if E141 = 0 then
         Interfaces.C.Strings'Elab_Spec;
      end if;
      if E036 = 0 then
         System.Exceptions'Elab_Spec;
      end if;
      E036 := E036 + 1;
      if E154 = 0 then
         System.File_Control_Block'Elab_Spec;
      end if;
      E154 := E154 + 1;
      if E131 = 0 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E131 := E131 + 1;
      if E126 = 0 then
         Ada.Finalization'Elab_Spec;
      end if;
      E126 := E126 + 1;
      if E133 = 0 then
         System.Storage_Pools'Elab_Spec;
      end if;
      E133 := E133 + 1;
      if E121 = 0 then
         System.Finalization_Masters'Elab_Spec;
      end if;
      if E119 = 0 then
         System.Storage_Pools.Subpools'Elab_Spec;
      end if;
      if E073 = 0 then
         Ada.Calendar'Elab_Spec;
      end if;
      if E073 = 0 then
         Ada.Calendar'Elab_Body;
      end if;
      E073 := E073 + 1;
      if E167 = 0 then
         System.Pool_Global'Elab_Spec;
      end if;
      E167 := E167 + 1;
      if E071 = 0 then
         System.Random_Seed'Elab_Body;
      end if;
      E071 := E071 + 1;
      E119 := E119 + 1;
      if E121 = 0 then
         System.Finalization_Masters'Elab_Body;
      end if;
      E121 := E121 + 1;
      if E149 = 0 then
         System.File_Io'Elab_Body;
      end if;
      E149 := E149 + 1;
      E141 := E141 + 1;
      E075 := E075 + 1;
      if E085 = 0 then
         Ada.Tags'Elab_Body;
      end if;
      E085 := E085 + 1;
      E109 := E109 + 1;
      if E024 = 0 then
         System.Soft_Links'Elab_Body;
      end if;
      E024 := E024 + 1;
      if E151 = 0 then
         System.Os_Lib'Elab_Body;
      end if;
      E151 := E151 + 1;
      if E028 = 0 then
         System.Secondary_Stack'Elab_Body;
      end if;
      E028 := E028 + 1;
      if E105 = 0 then
         Ada.Strings.Unbounded'Elab_Spec;
      end if;
      E105 := E105 + 1;
      if E200 = 0 then
         System.Tasking.Initialization'Elab_Body;
      end if;
      E200 := E200 + 1;
      if E224 = 0 then
         Ada.Real_Time'Elab_Spec;
      end if;
      if E224 = 0 then
         Ada.Real_Time'Elab_Body;
      end if;
      E224 := E224 + 1;
      if E144 = 0 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if E144 = 0 then
         Ada.Text_Io'Elab_Body;
      end if;
      E144 := E144 + 1;
      if E208 = 0 then
         System.Tasking.Protected_Objects'Elab_Body;
      end if;
      E208 := E208 + 1;
      if E212 = 0 then
         System.Tasking.Protected_Objects.Entries'Elab_Spec;
      end if;
      E212 := E212 + 1;
      if E216 = 0 then
         System.Tasking.Queuing'Elab_Body;
      end if;
      E216 := E216 + 1;
      if E222 = 0 then
         System.Tasking.Stages'Elab_Body;
      end if;
      E222 := E222 + 1;
      if E005 = 0 then
         Canimator'Elab_Spec;
      end if;
      E005 := E005 + 1;
      if E003 = 0 then
         Algesdk'Elab_Spec;
      end if;
      E003 := E003 + 1;
      if E008 = 0 then
         ctimed'elab_spec;
      end if;
      E008 := E008 + 1;
      if E010 = 0 then
         Hittestcode'Elab_Spec;
      end if;
      if E010 = 0 then
         Hittestcode'Elab_Body;
      end if;
      E010 := E010 + 1;
      if E002 = 0 then
         Adaapp'Elab_Spec;
      end if;
      if E002 = 0 then
         Adaapp'Elab_Body;
      end if;
      E002 := E002 + 1;
      if E013 = 0 then
         t.th'elab_spec;
      end if;
      if E013 = 0 then
         t.th'elab_body;
      end if;
      E013 := E013 + 1;
      E015 := E015 + 1;
   end adainit;

--  BEGIN Object file/option list
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/CAnimator.o
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/CMD.o
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/AlgeSDK.o
   --   /Users/alex/Desktop/xalgit/AlgeSDK_1701/Platforms/Alge-Gnat-macOS/obj/CTimed.o
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
