pragma Ada_95;
pragma Warnings (Off);
with System;
package ada_main is

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#88d88b7f#;
   pragma Export (C, u00001, "adaappB");
   u00002 : constant Version_32 := 16#a059e863#;
   pragma Export (C, u00002, "adaappS");
   u00003 : constant Version_32 := 16#850fe34f#;
   pragma Export (C, u00003, "algesdkS");
   u00004 : constant Version_32 := 16#c04275eb#;
   pragma Export (C, u00004, "cmdS");
   u00005 : constant Version_32 := 16#c4a30a8b#;
   pragma Export (C, u00005, "hittestcodeB");
   u00006 : constant Version_32 := 16#bf1459c0#;
   pragma Export (C, u00006, "hittestcodeS");
   u00007 : constant Version_32 := 16#836d7e47#;
   pragma Export (C, u00007, "structdefs_hS");
   u00008 : constant Version_32 := 16#7f952baa#;
   pragma Export (C, u00008, "t__thB");
   u00009 : constant Version_32 := 16#49a0cbd7#;
   pragma Export (C, u00009, "t__thS");
   u00010 : constant Version_32 := 16#e53f85e7#;
   pragma Export (C, u00010, "tB");
   u00011 : constant Version_32 := 16#19cf09e2#;
   pragma Export (C, u00011, "tS");
   u00012 : constant Version_32 := 16#b6df930e#;
   pragma Export (C, u00012, "system__standard_libraryB");
   u00013 : constant Version_32 := 16#337e9ce1#;
   pragma Export (C, u00013, "system__standard_libraryS");
   u00014 : constant Version_32 := 16#920eada5#;
   pragma Export (C, u00014, "ada__tagsB");
   u00015 : constant Version_32 := 16#13ca27f3#;
   pragma Export (C, u00015, "ada__tagsS");
   u00016 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00016, "adaS");
   u00017 : constant Version_32 := 16#472fa979#;
   pragma Export (C, u00017, "ada__exceptionsB");
   u00018 : constant Version_32 := 16#a2017425#;
   pragma Export (C, u00018, "ada__exceptionsS");
   u00019 : constant Version_32 := 16#e947e6a9#;
   pragma Export (C, u00019, "ada__exceptions__last_chance_handlerB");
   u00020 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00020, "ada__exceptions__last_chance_handlerS");
   u00021 : constant Version_32 := 16#c3282aa7#;
   pragma Export (C, u00021, "systemS");
   u00022 : constant Version_32 := 16#5f84b5ab#;
   pragma Export (C, u00022, "system__soft_linksB");
   u00023 : constant Version_32 := 16#5dacf2f2#;
   pragma Export (C, u00023, "system__soft_linksS");
   u00024 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00024, "system__parametersB");
   u00025 : constant Version_32 := 16#bd0227d8#;
   pragma Export (C, u00025, "system__parametersS");
   u00026 : constant Version_32 := 16#0f0cb66d#;
   pragma Export (C, u00026, "system__secondary_stackB");
   u00027 : constant Version_32 := 16#6849e5ce#;
   pragma Export (C, u00027, "system__secondary_stackS");
   u00028 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00028, "system__storage_elementsB");
   u00029 : constant Version_32 := 16#eeeb60a3#;
   pragma Export (C, u00029, "system__storage_elementsS");
   u00030 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00030, "system__stack_checkingB");
   u00031 : constant Version_32 := 16#4d97414f#;
   pragma Export (C, u00031, "system__stack_checkingS");
   u00032 : constant Version_32 := 16#87a448ff#;
   pragma Export (C, u00032, "system__exception_tableB");
   u00033 : constant Version_32 := 16#9e8643e5#;
   pragma Export (C, u00033, "system__exception_tableS");
   u00034 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00034, "system__exceptionsB");
   u00035 : constant Version_32 := 16#ab4b4751#;
   pragma Export (C, u00035, "system__exceptionsS");
   u00036 : constant Version_32 := 16#4c9e814d#;
   pragma Export (C, u00036, "system__exceptions__machineS");
   u00037 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00037, "system__exceptions_debugB");
   u00038 : constant Version_32 := 16#bda2d363#;
   pragma Export (C, u00038, "system__exceptions_debugS");
   u00039 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00039, "system__img_intB");
   u00040 : constant Version_32 := 16#c1f3ca65#;
   pragma Export (C, u00040, "system__img_intS");
   u00041 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00041, "system__tracebackB");
   u00042 : constant Version_32 := 16#9d0af463#;
   pragma Export (C, u00042, "system__tracebackS");
   u00043 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00043, "system__traceback_entriesB");
   u00044 : constant Version_32 := 16#c373dcd7#;
   pragma Export (C, u00044, "system__traceback_entriesS");
   u00045 : constant Version_32 := 16#6fd210f2#;
   pragma Export (C, u00045, "system__traceback__symbolicB");
   u00046 : constant Version_32 := 16#dd19f67a#;
   pragma Export (C, u00046, "system__traceback__symbolicS");
   u00047 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00047, "ada__exceptions__tracebackB");
   u00048 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00048, "ada__exceptions__tracebackS");
   u00049 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00049, "system__address_imageB");
   u00050 : constant Version_32 := 16#62c4b79d#;
   pragma Export (C, u00050, "system__address_imageS");
   u00051 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00051, "system__wch_conB");
   u00052 : constant Version_32 := 16#d8550875#;
   pragma Export (C, u00052, "system__wch_conS");
   u00053 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00053, "system__wch_stwB");
   u00054 : constant Version_32 := 16#f5442474#;
   pragma Export (C, u00054, "system__wch_stwS");
   u00055 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00055, "system__wch_cnvB");
   u00056 : constant Version_32 := 16#d7e2b286#;
   pragma Export (C, u00056, "system__wch_cnvS");
   u00057 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00057, "interfacesS");
   u00058 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00058, "system__wch_jisB");
   u00059 : constant Version_32 := 16#5792aba7#;
   pragma Export (C, u00059, "system__wch_jisS");
   u00060 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00060, "system__htableB");
   u00061 : constant Version_32 := 16#47ea994d#;
   pragma Export (C, u00061, "system__htableS");
   u00062 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00062, "system__string_hashB");
   u00063 : constant Version_32 := 16#e5b4f233#;
   pragma Export (C, u00063, "system__string_hashS");
   u00064 : constant Version_32 := 16#f7ae5624#;
   pragma Export (C, u00064, "system__unsigned_typesS");
   u00065 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00065, "system__val_lluB");
   u00066 : constant Version_32 := 16#8d5c0156#;
   pragma Export (C, u00066, "system__val_lluS");
   u00067 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00067, "system__val_utilB");
   u00068 : constant Version_32 := 16#6f889c59#;
   pragma Export (C, u00068, "system__val_utilS");
   u00069 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00069, "system__case_utilB");
   u00070 : constant Version_32 := 16#e7214370#;
   pragma Export (C, u00070, "system__case_utilS");
   u00071 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00071, "system__concat_2B");
   u00072 : constant Version_32 := 16#c188fd77#;
   pragma Export (C, u00072, "system__concat_2S");
   u00073 : constant Version_32 := 16#a83b7c85#;
   pragma Export (C, u00073, "system__concat_6B");
   u00074 : constant Version_32 := 16#11ef0715#;
   pragma Export (C, u00074, "system__concat_6S");
   u00075 : constant Version_32 := 16#608e2cd1#;
   pragma Export (C, u00075, "system__concat_5B");
   u00076 : constant Version_32 := 16#44766989#;
   pragma Export (C, u00076, "system__concat_5S");
   u00077 : constant Version_32 := 16#932a4690#;
   pragma Export (C, u00077, "system__concat_4B");
   u00078 : constant Version_32 := 16#bd4c0187#;
   pragma Export (C, u00078, "system__concat_4S");
   u00079 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00079, "system__concat_3B");
   u00080 : constant Version_32 := 16#c8587602#;
   pragma Export (C, u00080, "system__concat_3S");
   u00081 : constant Version_32 := 16#5e196e91#;
   pragma Export (C, u00081, "ada__containersS");
   u00082 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00082, "ada__stringsS");
   u00083 : constant Version_32 := 16#5130abd7#;
   pragma Export (C, u00083, "ada__strings__unboundedB");
   u00084 : constant Version_32 := 16#4c956ffe#;
   pragma Export (C, u00084, "ada__strings__unboundedS");
   u00085 : constant Version_32 := 16#e5c7cf31#;
   pragma Export (C, u00085, "ada__strings__searchB");
   u00086 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00086, "ada__strings__searchS");
   u00087 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00087, "ada__strings__mapsB");
   u00088 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00088, "ada__strings__mapsS");
   u00089 : constant Version_32 := 16#a4e2d63b#;
   pragma Export (C, u00089, "system__bit_opsB");
   u00090 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00090, "system__bit_opsS");
   u00091 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00091, "ada__charactersS");
   u00092 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00092, "ada__characters__latin_1S");
   u00093 : constant Version_32 := 16#5b9edcc4#;
   pragma Export (C, u00093, "system__compare_array_unsigned_8B");
   u00094 : constant Version_32 := 16#6a2b5b2a#;
   pragma Export (C, u00094, "system__compare_array_unsigned_8S");
   u00095 : constant Version_32 := 16#5f72f755#;
   pragma Export (C, u00095, "system__address_operationsB");
   u00096 : constant Version_32 := 16#d0249494#;
   pragma Export (C, u00096, "system__address_operationsS");
   u00097 : constant Version_32 := 16#6a86c9a5#;
   pragma Export (C, u00097, "system__storage_pools__subpoolsB");
   u00098 : constant Version_32 := 16#cc5a1856#;
   pragma Export (C, u00098, "system__storage_pools__subpoolsS");
   u00099 : constant Version_32 := 16#6abe5dbe#;
   pragma Export (C, u00099, "system__finalization_mastersB");
   u00100 : constant Version_32 := 16#98d4136d#;
   pragma Export (C, u00100, "system__finalization_mastersS");
   u00101 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00101, "system__img_boolB");
   u00102 : constant Version_32 := 16#36f15b4c#;
   pragma Export (C, u00102, "system__img_boolS");
   u00103 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00103, "system__ioB");
   u00104 : constant Version_32 := 16#5d6adde8#;
   pragma Export (C, u00104, "system__ioS");
   u00105 : constant Version_32 := 16#cf417de3#;
   pragma Export (C, u00105, "ada__finalizationS");
   u00106 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00106, "ada__streamsB");
   u00107 : constant Version_32 := 16#2e6701ab#;
   pragma Export (C, u00107, "ada__streamsS");
   u00108 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00108, "ada__io_exceptionsS");
   u00109 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00109, "system__finalization_rootB");
   u00110 : constant Version_32 := 16#8cda5937#;
   pragma Export (C, u00110, "system__finalization_rootS");
   u00111 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00111, "system__storage_poolsB");
   u00112 : constant Version_32 := 16#e0c5b40a#;
   pragma Export (C, u00112, "system__storage_poolsS");
   u00113 : constant Version_32 := 16#9aad1ff1#;
   pragma Export (C, u00113, "system__storage_pools__subpools__finalizationB");
   u00114 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00114, "system__storage_pools__subpools__finalizationS");
   u00115 : constant Version_32 := 16#020a3f4d#;
   pragma Export (C, u00115, "system__atomic_countersB");
   u00116 : constant Version_32 := 16#7774072a#;
   pragma Export (C, u00116, "system__atomic_countersS");
   u00117 : constant Version_32 := 16#f4e1c091#;
   pragma Export (C, u00117, "system__stream_attributesB");
   u00118 : constant Version_32 := 16#8bc30a4e#;
   pragma Export (C, u00118, "system__stream_attributesS");
   u00119 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00119, "interfaces__cB");
   u00120 : constant Version_32 := 16#70be4e8c#;
   pragma Export (C, u00120, "interfaces__cS");
   u00121 : constant Version_32 := 16#1b9b80a1#;
   pragma Export (C, u00121, "interfaces__c__stringsB");
   u00122 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00122, "interfaces__c__stringsS");
   u00123 : constant Version_32 := 16#7dbbd31d#;
   pragma Export (C, u00123, "text_ioS");
   u00124 : constant Version_32 := 16#d5bfa9f3#;
   pragma Export (C, u00124, "ada__text_ioB");
   u00125 : constant Version_32 := 16#2d7da68a#;
   pragma Export (C, u00125, "ada__text_ioS");
   u00126 : constant Version_32 := 16#84a27f0d#;
   pragma Export (C, u00126, "interfaces__c_streamsB");
   u00127 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00127, "interfaces__c_streamsS");
   u00128 : constant Version_32 := 16#b3b9fca9#;
   pragma Export (C, u00128, "system__crtlS");
   u00129 : constant Version_32 := 16#b29d05bd#;
   pragma Export (C, u00129, "system__file_ioB");
   u00130 : constant Version_32 := 16#6459cbc2#;
   pragma Export (C, u00130, "system__file_ioS");
   u00131 : constant Version_32 := 16#7358ec0a#;
   pragma Export (C, u00131, "system__os_libB");
   u00132 : constant Version_32 := 16#bf5ce13f#;
   pragma Export (C, u00132, "system__os_libS");
   u00133 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00133, "system__stringsB");
   u00134 : constant Version_32 := 16#bd973bc1#;
   pragma Export (C, u00134, "system__stringsS");
   u00135 : constant Version_32 := 16#3eb7b00f#;
   pragma Export (C, u00135, "system__file_control_blockS");
   u00136 : constant Version_32 := 16#bcec81df#;
   pragma Export (C, u00136, "ada__containers__helpersB");
   u00137 : constant Version_32 := 16#4adfc5eb#;
   pragma Export (C, u00137, "ada__containers__helpersS");
   u00138 : constant Version_32 := 16#5a895de2#;
   pragma Export (C, u00138, "system__pool_globalB");
   u00139 : constant Version_32 := 16#7141203e#;
   pragma Export (C, u00139, "system__pool_globalS");
   u00140 : constant Version_32 := 16#a6359005#;
   pragma Export (C, u00140, "system__memoryB");
   u00141 : constant Version_32 := 16#9a554c93#;
   pragma Export (C, u00141, "system__memoryS");
   u00142 : constant Version_32 := 16#a540e70d#;
   pragma Export (C, u00142, "system__taskingB");
   u00143 : constant Version_32 := 16#2410879e#;
   pragma Export (C, u00143, "system__taskingS");
   u00144 : constant Version_32 := 16#ae36db3a#;
   pragma Export (C, u00144, "system__task_primitivesS");
   u00145 : constant Version_32 := 16#eba442ab#;
   pragma Export (C, u00145, "system__os_interfaceB");
   u00146 : constant Version_32 := 16#225a1d94#;
   pragma Export (C, u00146, "system__os_interfaceS");
   u00147 : constant Version_32 := 16#24379d76#;
   pragma Export (C, u00147, "interfaces__c__extensionsS");
   u00148 : constant Version_32 := 16#acefa820#;
   pragma Export (C, u00148, "system__os_constantsS");
   u00149 : constant Version_32 := 16#738dd9f2#;
   pragma Export (C, u00149, "system__task_primitives__operationsB");
   u00150 : constant Version_32 := 16#0980a7f3#;
   pragma Export (C, u00150, "system__task_primitives__operationsS");
   u00151 : constant Version_32 := 16#89b55e64#;
   pragma Export (C, u00151, "system__interrupt_managementB");
   u00152 : constant Version_32 := 16#5e06908e#;
   pragma Export (C, u00152, "system__interrupt_managementS");
   u00153 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00153, "system__multiprocessorsB");
   u00154 : constant Version_32 := 16#fb84b5d4#;
   pragma Export (C, u00154, "system__multiprocessorsS");
   u00155 : constant Version_32 := 16#a6535153#;
   pragma Export (C, u00155, "system__os_primitivesB");
   u00156 : constant Version_32 := 16#49a73bd1#;
   pragma Export (C, u00156, "system__os_primitivesS");
   u00157 : constant Version_32 := 16#e0fce7f8#;
   pragma Export (C, u00157, "system__task_infoB");
   u00158 : constant Version_32 := 16#433297a6#;
   pragma Export (C, u00158, "system__task_infoS");
   u00159 : constant Version_32 := 16#85267e7e#;
   pragma Export (C, u00159, "system__tasking__debugB");
   u00160 : constant Version_32 := 16#511cd042#;
   pragma Export (C, u00160, "system__tasking__debugS");
   u00161 : constant Version_32 := 16#d0432c8d#;
   pragma Export (C, u00161, "system__img_enum_newB");
   u00162 : constant Version_32 := 16#a2642c67#;
   pragma Export (C, u00162, "system__img_enum_newS");
   u00163 : constant Version_32 := 16#9dca6636#;
   pragma Export (C, u00163, "system__img_lliB");
   u00164 : constant Version_32 := 16#d2677f76#;
   pragma Export (C, u00164, "system__img_lliS");
   u00165 : constant Version_32 := 16#118e865d#;
   pragma Export (C, u00165, "system__stack_usageB");
   u00166 : constant Version_32 := 16#3a3ac346#;
   pragma Export (C, u00166, "system__stack_usageS");
   u00167 : constant Version_32 := 16#9dcd4743#;
   pragma Export (C, u00167, "system__tasking__rendezvousB");
   u00168 : constant Version_32 := 16#3e44c873#;
   pragma Export (C, u00168, "system__tasking__rendezvousS");
   u00169 : constant Version_32 := 16#100eaf58#;
   pragma Export (C, u00169, "system__restrictionsB");
   u00170 : constant Version_32 := 16#6a886006#;
   pragma Export (C, u00170, "system__restrictionsS");
   u00171 : constant Version_32 := 16#d3d9b1ce#;
   pragma Export (C, u00171, "system__tasking__entry_callsB");
   u00172 : constant Version_32 := 16#ddf2aa0b#;
   pragma Export (C, u00172, "system__tasking__entry_callsS");
   u00173 : constant Version_32 := 16#71e7b7a1#;
   pragma Export (C, u00173, "system__tasking__initializationB");
   u00174 : constant Version_32 := 16#ed62fcff#;
   pragma Export (C, u00174, "system__tasking__initializationS");
   u00175 : constant Version_32 := 16#eeadc70a#;
   pragma Export (C, u00175, "system__soft_links__taskingB");
   u00176 : constant Version_32 := 16#5ae92880#;
   pragma Export (C, u00176, "system__soft_links__taskingS");
   u00177 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00177, "ada__exceptions__is_null_occurrenceB");
   u00178 : constant Version_32 := 16#e1d7566f#;
   pragma Export (C, u00178, "ada__exceptions__is_null_occurrenceS");
   u00179 : constant Version_32 := 16#7995e1aa#;
   pragma Export (C, u00179, "system__tasking__task_attributesB");
   u00180 : constant Version_32 := 16#a1da3c09#;
   pragma Export (C, u00180, "system__tasking__task_attributesS");
   u00181 : constant Version_32 := 16#f83990e5#;
   pragma Export (C, u00181, "system__tasking__protected_objectsB");
   u00182 : constant Version_32 := 16#5744f344#;
   pragma Export (C, u00182, "system__tasking__protected_objectsS");
   u00183 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00183, "system__tracesB");
   u00184 : constant Version_32 := 16#3135420d#;
   pragma Export (C, u00184, "system__tracesS");
   u00185 : constant Version_32 := 16#9fa349e0#;
   pragma Export (C, u00185, "system__tasking__protected_objects__entriesB");
   u00186 : constant Version_32 := 16#a0c7bfc6#;
   pragma Export (C, u00186, "system__tasking__protected_objects__entriesS");
   u00187 : constant Version_32 := 16#ce83633b#;
   pragma Export (C, u00187, "system__tasking__protected_objects__operationsB");
   u00188 : constant Version_32 := 16#902e29cd#;
   pragma Export (C, u00188, "system__tasking__protected_objects__operationsS");
   u00189 : constant Version_32 := 16#35ce8314#;
   pragma Export (C, u00189, "system__tasking__queuingB");
   u00190 : constant Version_32 := 16#05e644a6#;
   pragma Export (C, u00190, "system__tasking__queuingS");
   u00191 : constant Version_32 := 16#67e431ef#;
   pragma Export (C, u00191, "system__tasking__utilitiesB");
   u00192 : constant Version_32 := 16#51068caf#;
   pragma Export (C, u00192, "system__tasking__utilitiesS");
   u00193 : constant Version_32 := 16#bd6fc52e#;
   pragma Export (C, u00193, "system__traces__taskingB");
   u00194 : constant Version_32 := 16#0b40d4b2#;
   pragma Export (C, u00194, "system__traces__taskingS");
   u00195 : constant Version_32 := 16#fc9da4b5#;
   pragma Export (C, u00195, "system__tasking__stagesB");
   u00196 : constant Version_32 := 16#21a9077d#;
   pragma Export (C, u00196, "system__tasking__stagesS");
   u00197 : constant Version_32 := 16#9fad3aa0#;
   pragma Export (C, u00197, "ada__real_timeB");
   u00198 : constant Version_32 := 16#8a504209#;
   pragma Export (C, u00198, "ada__real_timeS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.io%s
   --  system.io%b
   --  system.multiprocessors%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.os_lib%s
   --  system.task_info%s
   --  system.task_info%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  system.soft_links%s
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.val_llu%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.concat_5%s
   --  system.concat_5%b
   --  system.concat_6%s
   --  system.concat_6%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.multiprocessors%b
   --  interfaces.c.extensions%s
   --  interfaces.c.strings%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.containers.helpers%s
   --  ada.containers.helpers%b
   --  system.os_constants%s
   --  system.os_interface%s
   --  system.os_interface%b
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%b
   --  system.traces.tasking%s
   --  system.traces.tasking%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.secondary_stack%s
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  system.file_io%b
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  ada.exceptions.traceback%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.entry_calls%s
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.task_attributes%b
   --  system.tasking.utilities%s
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.tasking.initialization%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%b
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.rendezvous%b
   --  system.tasking.entry_calls%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  text_io%s
   --  cmd%s
   --  algesdk%s
   --  hittestcode%s
   --  hittestcode%b
   --  adaapp%s
   --  adaapp%b
   --  structdefs_h%s
   --  t%s
   --  t.th%s
   --  t.th%b
   --  t%b
   --  END ELABORATION ORDER


end ada_main;
