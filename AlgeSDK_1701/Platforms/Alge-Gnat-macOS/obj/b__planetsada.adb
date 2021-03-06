pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b__planetsada.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__planetsada.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E150 : Short_Integer; pragma Import (Ada, E150, "system__os_lib_E");
   E024 : Short_Integer; pragma Import (Ada, E024, "system__soft_links_E");
   E022 : Short_Integer; pragma Import (Ada, E022, "system__exception_table_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__containers_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "ada__io_exceptions_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "ada__numerics_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "ada__strings_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__strings__maps_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "ada__tags_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "ada__streams_E");
   E084 : Short_Integer; pragma Import (Ada, E084, "interfaces__c_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "interfaces__c__strings_E");
   E036 : Short_Integer; pragma Import (Ada, E036, "system__exceptions_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "system__file_control_block_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__file_io_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__finalization_root_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "ada__finalization_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "system__storage_pools_E");
   E120 : Short_Integer; pragma Import (Ada, E120, "system__finalization_masters_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "system__storage_pools__subpools_E");
   E082 : Short_Integer; pragma Import (Ada, E082, "ada__calendar_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "system__pool_global_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "system__random_seed_E");
   E028 : Short_Integer; pragma Import (Ada, E028, "system__secondary_stack_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "ada__strings__unbounded_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "system__tasking__initialization_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "ada__real_time_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "ada__text_io_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "system__tasking__protected_objects_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "system__tasking__protected_objects__entries_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "system__tasking__queuing_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "system__tasking__stages_E");
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
      E206 := E206 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         if E206 = 0 then
            F5;
         end if;
      end;
      E143 := E143 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "ada__text_io__finalize_spec");
      begin
         if E143 = 0 then
            F6;
         end if;
      end;
      E104 := E104 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "ada__strings__unbounded__finalize_spec");
      begin
         if E104 = 0 then
            F7;
         end if;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__file_io__finalize_body");
      begin
         E148 := E148 - 1;
         if E148 = 0 then
            F8;
         end if;
      end;
      E120 := E120 - 1;
      E118 := E118 - 1;
      E157 := E157 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__pool_global__finalize_spec");
      begin
         if E157 = 0 then
            F9;
         end if;
      end;
      declare
         procedure F10;
         pragma Import (Ada, F10, "system__storage_pools__subpools__finalize_spec");
      begin
         if E118 = 0 then
            F10;
         end if;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "system__finalization_masters__finalize_spec");
      begin
         if E120 = 0 then
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
      if E101 = 0 then
         Ada.Containers'Elab_Spec;
      end if;
      E101 := E101 + 1;
      if E128 = 0 then
         Ada.Io_Exceptions'Elab_Spec;
      end if;
      E128 := E128 + 1;
      if E019 = 0 then
         Ada.Numerics'Elab_Spec;
      end if;
      E019 := E019 + 1;
      if E102 = 0 then
         Ada.Strings'Elab_Spec;
      end if;
      E102 := E102 + 1;
      if E108 = 0 then
         Ada.Strings.Maps'Elab_Spec;
      end if;
      if E094 = 0 then
         Ada.Tags'Elab_Spec;
      end if;
      if E127 = 0 then
         Ada.Streams'Elab_Spec;
      end if;
      E127 := E127 + 1;
      if E084 = 0 then
         Interfaces.C'Elab_Spec;
      end if;
      if E140 = 0 then
         Interfaces.C.Strings'Elab_Spec;
      end if;
      if E036 = 0 then
         System.Exceptions'Elab_Spec;
      end if;
      E036 := E036 + 1;
      if E153 = 0 then
         System.File_Control_Block'Elab_Spec;
      end if;
      E153 := E153 + 1;
      if E130 = 0 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E130 := E130 + 1;
      if E125 = 0 then
         Ada.Finalization'Elab_Spec;
      end if;
      E125 := E125 + 1;
      if E132 = 0 then
         System.Storage_Pools'Elab_Spec;
      end if;
      E132 := E132 + 1;
      if E120 = 0 then
         System.Finalization_Masters'Elab_Spec;
      end if;
      if E118 = 0 then
         System.Storage_Pools.Subpools'Elab_Spec;
      end if;
      if E082 = 0 then
         Ada.Calendar'Elab_Spec;
      end if;
      if E082 = 0 then
         Ada.Calendar'Elab_Body;
      end if;
      E082 := E082 + 1;
      if E157 = 0 then
         System.Pool_Global'Elab_Spec;
      end if;
      E157 := E157 + 1;
      if E080 = 0 then
         System.Random_Seed'Elab_Body;
      end if;
      E080 := E080 + 1;
      E118 := E118 + 1;
      if E120 = 0 then
         System.Finalization_Masters'Elab_Body;
      end if;
      E120 := E120 + 1;
      if E148 = 0 then
         System.File_Io'Elab_Body;
      end if;
      E148 := E148 + 1;
      E140 := E140 + 1;
      E084 := E084 + 1;
      if E094 = 0 then
         Ada.Tags'Elab_Body;
      end if;
      E094 := E094 + 1;
      E108 := E108 + 1;
      if E024 = 0 then
         System.Soft_Links'Elab_Body;
      end if;
      E024 := E024 + 1;
      if E150 = 0 then
         System.Os_Lib'Elab_Body;
      end if;
      E150 := E150 + 1;
      if E028 = 0 then
         System.Secondary_Stack'Elab_Body;
      end if;
      E028 := E028 + 1;
      if E104 = 0 then
         Ada.Strings.Unbounded'Elab_Spec;
      end if;
      E104 := E104 + 1;
      if E194 = 0 then
         System.Tasking.Initialization'Elab_Body;
      end if;
      E194 := E194 + 1;
      if E218 = 0 then
         Ada.Real_Time'Elab_Spec;
      end if;
      if E218 = 0 then
         Ada.Real_Time'Elab_Body;
      end if;
      E218 := E218 + 1;
      if E143 = 0 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if E143 = 0 then
         Ada.Text_Io'Elab_Body;
      end if;
      E143 := E143 + 1;
      if E202 = 0 then
         System.Tasking.Protected_Objects'Elab_Body;
      end if;
      E202 := E202 + 1;
      if E206 = 0 then
         System.Tasking.Protected_Objects.Entries'Elab_Spec;
      end if;
      E206 := E206 + 1;
      if E210 = 0 then
         System.Tasking.Queuing'Elab_Body;
      end if;
      E210 := E210 + 1;
      if E216 = 0 then
         System.Tasking.Stages'Elab_Body;
      end if;
      E216 := E216 + 1;
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
