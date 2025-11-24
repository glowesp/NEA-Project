.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug
Ldebug_abbrev_start:

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,90
	.byte 8,17,1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4
	.byte 36,0,11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3
	.byte 8,73,19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8
	.byte 28,13,0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0
	.byte 0,13,15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18
	.byte 1,0,0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 8.0.17.0 (8.0.1725.26602 @Commit: 77545d6fd5ca79bc08198fd6d8037c14843f14ad)"
	.asciz "Microsoft.Extensions.Configuration.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip System_ThrowHelper_ThrowIfNull_object_string
System_ThrowHelper_ThrowIfNull_object_string:
.file 1 "<unknown>"
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xb50000c0
.word 0xd2800cc0
.word 0xf2a04000
.word 0xf9400fa1
bl _mono_create_corlib_exception_1
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip System_ThrowHelper_Throw_string
System_ThrowHelper_Throw_string:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800cc0
.word 0xf2a04000
.word 0xf9400ba1
bl _mono_create_corlib_exception_1
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_FileProviders_EmptyDisposable_get_Instance
Microsoft_Extensions_FileProviders_EmptyDisposable_get_Instance:
.loc 1 1 0
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #192]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_FileProviders_EmptyDisposable__ctor
Microsoft_Extensions_FileProviders_EmptyDisposable__ctor:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_FileProviders_EmptyDisposable_Dispose
Microsoft_Extensions_FileProviders_EmptyDisposable_Dispose:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_FileProviders_EmptyDisposable__cctor
Microsoft_Extensions_FileProviders_EmptyDisposable__cctor:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #200]
.word 0xd2800201
bl _p_3
.word 0xaa0003e1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #192]
.word 0xf9000ba0
.word 0xd5033bbf
.word 0xf9400ba0
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF
Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF:
.loc 1 1 0
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9002faf
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001fa3
.word 0xf90023a4

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #208]
.word 0xf9402fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0x910123a0
.word 0xf90033a0
.word 0x9100a3a0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_4
.word 0xf94033be
.word 0xf90003c0
.word 0xf90007c1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xd2800401
bl _p_3
.word 0x91004002
.word 0xaa0203e1
.word 0xf94027a3
.word 0xf9000043
.word 0x91002022
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xaa0003fa
.word 0x14000025
.word 0xf90037a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9401fa2
.word 0xf94023a1
.word 0xf9402fa0
.word 0xf9401000
.word 0xaa0203e0
.word 0xf9004ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9404ba0
bl _p_5
.word 0xf90047a0
.word 0xf94047a0
.word 0xb4000060
.word 0xf94047a0
bl _p_2
.word 0x14000001

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #200]
.word 0x3980d410
.word 0xb5000050
bl _p_6

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #192]
.word 0xf9400000
.word 0xf9003ba0
.word 0xf9403ba0
.word 0x14000002
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_6:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager__ctor
Microsoft_Extensions_Configuration_ConfigurationManager__ctor:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xd2800501
bl _p_3
.word 0xf9002ba0
bl _p_7
.word 0x91008341
.word 0xd5033bbf
.word 0xf9402ba0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #232]
.word 0xd2800401
bl _p_3

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #240]
.word 0xf9400021
.word 0xf90027a1
.word 0xf90023a0
.word 0x91004001
.word 0xd5033bbf
.word 0xf94027a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9100a341
.word 0xd5033bbf
.word 0xf94023a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xd2800401
bl _p_3
.word 0xf9001fa0
bl _p_8
.word 0x9100c341
.word 0xd5033bbf
.word 0xf9401fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xd2800401
bl _p_3
.word 0xf9001ba0
.word 0xaa1a03e1
bl _p_9
.word 0x91004341
.word 0xd5033bbf
.word 0xf9401ba0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xd2800401
bl _p_3
.word 0xf90017a0
.word 0xaa1a03e1
bl _p_10
.word 0x91006341
.word 0xd5033bbf
.word 0xf94017a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b40
.word 0xf90013a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #272]
.word 0xd2800301
bl _p_3
.word 0xaa0003e1
.word 0xf94013a2
.word 0xaa0203e0
.word 0x3940005e
bl _p_11
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_Dispose
Microsoft_Extensions_Configuration_ConfigurationManager_Dispose:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
bl _p_12
.word 0xf9400ba0
.word 0xf9401001
.word 0xaa0103e0
.word 0x3940003e
bl _p_13
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged
Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000440
.word 0x9100c000
.word 0xf90017a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xd2800401
bl _p_3
.word 0xf90013a0
bl _p_8
.word 0xf94017a2
.word 0xd5033bbf
.word 0xf94013a0
.word 0xc85f7c50
.word 0xc811fc40
.word 0x35ffffd1
.word 0xd5033bbf
.word 0xaa1003e1
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xaa0103e0
.word 0x3940003e
bl _p_14
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801dc0
.word 0xaa1103e1
bl _p_15

Lme_9:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource
Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xaa1a03e0
.word 0xaa1903e1
.word 0xf9400342

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #280]
.word 0x92800ef0
.word 0xf8706850
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1a03e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #288]
.word 0x928001f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401720
.word 0xf90023a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #296]
.word 0xaa1a03e0
bl _p_16
.word 0xf9002ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #304]
.word 0xd2801001
bl _p_3
.word 0xf9402ba2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #312]
.word 0xf90027a0
.word 0xaa1a03e1
bl _p_17
.word 0xeb1f033f
.word 0x10000011
.word 0x54000a40

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #320]
.word 0xd2801001
bl _p_3
.word 0xaa0003e1
.word 0xeb1f033f
.word 0x10000011
.word 0x540008c0
.word 0xd5033bbf
.word 0xf94027a0
.word 0xf9001039
.word 0x91008022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #328]
.word 0xf9002022

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #336]
.word 0xf9001423
.word 0xf9401843
.word 0xf9000c23
.word 0xf9401442
.word 0xf9000822
bl _p_18
.word 0xaa0003e1
.word 0xf94023a0
.word 0xaa0003f8
.word 0xaa0103f7
.word 0x3940031e
.word 0xb9801f01
.word 0x11000421
.word 0xb9001c01
.word 0xf9400b16
.word 0xb9801b15
.word 0xaa1503e0
.word 0xb9801ac1
.word 0x6b01001f
.word 0x54000142
.word 0x110006a0
.word 0xb9001b00
.word 0xaa1603e0
.word 0xaa1503e1
.word 0xaa1703e2
.word 0xf94002c3
.word 0xf9408870
.word 0xd63f0200
.word 0x14000007

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #344]
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_19
.word 0xf9401322
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0x3940005e
bl _p_20
.word 0xaa1903e0
bl _p_21
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801dc0
.word 0xaa1103e1
bl _p_15
.word 0xd2800ca0
.word 0xaa1103e1
bl _p_15

Lme_a:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ReloadSources
Microsoft_Extensions_Configuration_ConfigurationManager_ReloadSources:
.loc 1 1 0
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xaa1a03e0
bl _p_12
.word 0xf9401759
.word 0x3940033e
.word 0xb9801f20
.word 0x11000400
.word 0xb9001f20
.word 0xb9801b38
.word 0xb9001b3f
.word 0x6b1f031f
.word 0x540000ad
.word 0xf9400b20
.word 0xd2a00001
.word 0xaa1803e2
bl _p_22

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800401
bl _p_3

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xf9400021
.word 0xf9005ba0
.word 0x91004002
.word 0xd5033bbf
.word 0xf9405ba0
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xaa0003f9
.word 0xf9400b41
.word 0x910163a8
.word 0xaa0103e0
.word 0x3940003e
bl _p_23
.word 0x1400002d

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94037b8
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xf9400302

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #280]
.word 0x92800ef0
.word 0xf8706850
.word 0xd63f0200
.word 0xaa1903f8
.word 0xaa0003f7
.word 0x3940031e
.word 0xb9801f00
.word 0x11000400
.word 0xb9001f00
.word 0xf9400b16
.word 0xb9801b15
.word 0xaa1503e0
.word 0xb9801ac1
.word 0x6b01001f
.word 0x54000142
.word 0x110006a0
.word 0xb9001b00
.word 0xaa1603e0
.word 0xaa1503e1
.word 0xaa1703e2
.word 0xf94002c3
.word 0xf9408870
.word 0xd63f0200
.word 0x14000008

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #368]
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_24
.word 0x14000001

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #376]
.word 0x910163a0
bl _p_25
.word 0x53001c00
.word 0x35fff9c0
.word 0xf9003bbf
.word 0x94000005
.word 0xf9403ba0
.word 0xb4000040
bl _p_26
.word 0x1400000c
.word 0xf9004bbe

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x910163a0
.word 0xf9003fa0
.word 0xf9404bbe
.word 0xd61f03c0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #384]
.word 0x3940033e
.word 0x910103a8
.word 0xaa1903e0
bl _p_27
.word 0x14000069

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9402bb8
.word 0xaa1803e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #288]
.word 0x928001f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401740
.word 0xf9005ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #296]
.word 0xaa1803e0
bl _p_16
.word 0xf90063a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #304]
.word 0xd2801001
bl _p_3
.word 0xf94063a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #312]
.word 0xf9005fa0
.word 0xaa1803e1
bl _p_17
.word 0xeb1f035f
.word 0x10000011
.word 0x54000d40

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #320]
.word 0xd2801001
bl _p_3
.word 0xaa0003e1
.word 0xeb1f035f
.word 0x10000011
.word 0x54000bc0
.word 0xd5033bbf
.word 0xf9405fa0
.word 0xf900103a
.word 0x91008022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #328]
.word 0xf9002022

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #336]
.word 0xf9001423
.word 0xf9401843
.word 0xf9000c23
.word 0xf9401442
.word 0xf9000822
bl _p_18
.word 0xf9405ba1
.word 0xaa0103f8
.word 0xaa0003f7
.word 0x3940031e
.word 0xb9801f00
.word 0x11000400
.word 0xb9001f00
.word 0xf9400b16
.word 0xb9801b15
.word 0xaa1503e0
.word 0xb9801ac1
.word 0x6b01001f
.word 0x54000142
.word 0x110006a0
.word 0xb9001b00
.word 0xaa1603e0
.word 0xaa1503e1
.word 0xaa1703e2
.word 0xf94002c3
.word 0xf9408870
.word 0xd63f0200
.word 0x14000008

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #344]
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_19
.word 0x14000001

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #392]
.word 0x910103a0
bl _p_28
.word 0x53001c00
.word 0x35fff240
.word 0xf90043bf
.word 0x94000005
.word 0xf94043a0
.word 0xb4000040
bl _p_26
.word 0x1400000c
.word 0xf90053be

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x910103a0
.word 0xf90047a0
.word 0xf94053be
.word 0xd61f03c0
.word 0xf9401342
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_29
.word 0xaa1a03e0
bl _p_21
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd2801dc0
.word 0xaa1103e1
bl _p_15
.word 0xd2800ca0
.word 0xaa1103e1
bl _p_15

Lme_b:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_DisposeRegistrations
Microsoft_Extensions_Configuration_ConfigurationManager_DisposeRegistrations:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800000
.word 0xf9000fa0
.word 0xf90013a0
.word 0xf90017a0
.word 0xf9401740

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #400]
.word 0x3940001e
.word 0x910063a8
bl _p_30
.word 0x14000011

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94017ba
.word 0xaa1a03e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #408]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #416]
.word 0x910063a0
bl _p_31
.word 0x53001c00
.word 0x35fffd40
.word 0xf9001bbf
.word 0x94000005
.word 0xf9401ba0
.word 0xb4000040
bl _p_26
.word 0x1400000c
.word 0xf90023be

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x910063a0
.word 0xf9001fa0
.word 0xf94023be
.word 0xd61f03c0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #424]
.word 0xd2800401
bl _p_3
.word 0xaa0003e1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #432]
.word 0xf9400000
.word 0xf90017a0
.word 0x91004022
.word 0xd5033bbf
.word 0xf94017a0
.word 0xf9000040
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400ba0
.word 0xf90013a0
.word 0x91004002
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91006001
.word 0xd5033bbf
.word 0xf9400fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Item_int
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Item_int:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #440]
.word 0x3940001e
.word 0xb9801ba1
bl _p_32
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_set_Item_int_Microsoft_Extensions_Configuration_IConfigurationSource
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_set_Item_int_Microsoft_Extensions_Configuration_IConfigurationSource:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #448]
.word 0x3940001e
.word 0xb9801ba1
.word 0xf94013a2
bl _p_33
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Count
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Count:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0xaa0003e1
.word 0x3940003e
.word 0xb9801800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_IsReadOnly
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_IsReadOnly:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2a00000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001ba0
.word 0xf9001fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9401ba0
.word 0xf9400800
.word 0xaa0003f8
.word 0xf9401fb7
.word 0x3940031e
.word 0xb9801f01
.word 0x11000421
.word 0xb9001c01
.word 0xf9400b16
.word 0xb9801b15
.word 0xaa1503e0
.word 0xb9801ac1
.word 0x6b01001f
.word 0x54000142
.word 0x110006a0
.word 0xb9001b00
.word 0xaa1603e0
.word 0xaa1503e1
.word 0xaa1703e2
.word 0xf94002c3
.word 0xf9408870
.word 0xd63f0200
.word 0x14000007

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #456]
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_35
.word 0xf9401ba0
.word 0xf9400c02
.word 0xaa0203e0
.word 0xf9401fa1
.word 0x3940005e
bl _p_36
.word 0xa9415bb5
.word 0xa94263b7
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Clear
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Clear:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94013a0
.word 0xf9400819
.word 0x3940033e
.word 0xb9801f20
.word 0x11000400
.word 0xb9001f20
.word 0xb9801b38
.word 0xb9001b3f
.word 0x6b1f031f
.word 0x540000ad
.word 0xf9400b20
.word 0xd2a00001
.word 0xaa1803e2
bl _p_22
.word 0xf94013a0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Contains_Microsoft_Extensions_Configuration_IConfigurationSource
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Contains_Microsoft_Extensions_Configuration_IConfigurationSource:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #464]
.word 0x3940001e
.word 0xf9400fa1
bl _p_37
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_CopyTo_Microsoft_Extensions_Configuration_IConfigurationSource___int
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_CopyTo_Microsoft_Extensions_Configuration_IConfigurationSource___int:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #472]
.word 0x3940001e
.word 0xf9400fa1
.word 0xb98023a2
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_GetEnumerator
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_GetEnumerator:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf9000fa0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400fa0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #480]
.word 0x3940001e
.word 0x910083a8
bl _p_39
.word 0xf9400ba0
.word 0xf9002ba0
.word 0xd5033bbf
.word 0xf9402ba0
.word 0xf94013a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94017a1
.word 0xf9000001
.word 0x91002001
.word 0xf9401ba0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_16:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_IndexOf_Microsoft_Extensions_Configuration_IConfigurationSource
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_IndexOf_Microsoft_Extensions_Configuration_IConfigurationSource:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #488]
.word 0x3940001e
.word 0xf9400fa1
bl _p_40
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Insert_int_Microsoft_Extensions_Configuration_IConfigurationSource
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Insert_int_Microsoft_Extensions_Configuration_IConfigurationSource:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #496]
.word 0x3940001e
.word 0xb9801ba1
.word 0xf94013a2
bl _p_41
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Remove_Microsoft_Extensions_Configuration_IConfigurationSource
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Remove_Microsoft_Extensions_Configuration_IConfigurationSource:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #504]
.word 0x3940001e
.word 0xf9400fa1
bl _p_42
.word 0x53001c00
.word 0x53001c00
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_RemoveAt_int
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_RemoveAt_int:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #512]
.word 0x3940001e
.word 0xb9801ba1
bl _p_43
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_IEnumerable_GetEnumerator
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_IEnumerable_GetEnumerator:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x910063a8
.word 0xf9400ba0
bl _p_23

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #520]
.word 0xd2800501
bl _p_3
.word 0xf9002ba0
.word 0x91004003
.word 0xaa0303e1
.word 0xd5033bbf
.word 0xf9402ba0
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x91002022
.word 0xf94017a1
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_Generic_IEnumerable_Microsoft_Extensions_Configuration_IConfigurationSource_GetEnumerator
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_Generic_IEnumerable_Microsoft_Extensions_Configuration_IConfigurationSource_GetEnumerator:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x910063a8
.word 0xf9400ba0
bl _p_23

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #520]
.word 0xd2800501
bl _p_3
.word 0xf9002ba0
.word 0x91004003
.word 0xaa0303e1
.word 0xd5033bbf
.word 0xf9402ba0
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x91002022
.word 0xf94017a1
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #528]
.word 0xd2800a01
bl _p_3

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #536]
.word 0xf90017a0
bl _p_44
.word 0xf94017a1
.word 0xf9400ba0
.word 0xf90013a0
.word 0x91004002
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91006001
.word 0xd5033bbf
.word 0xf9400fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1d:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Item_string
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Item_string:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #544]
.word 0x3940001e
.word 0xf9400fa1
bl _p_45
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1e:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_set_Item_string_object
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_set_Item_string_object:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #552]
.word 0x3940001e
.word 0xf9400fa1
.word 0xf94013a2
bl _p_46
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1f:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Keys
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Keys:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #560]
.word 0x3940001e
bl _p_47
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_20:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Values
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Values:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #568]
.word 0x3940001e
bl _p_48
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Count
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Count:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0x3940001e
.word 0xb9804020
.word 0xb9804821
.word 0x4b010000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_IsReadOnly
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_IsReadOnly:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2a00000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_23:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_string_object
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_string_object:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #576]
.word 0x3940001e
.word 0xf9400fa1
.word 0xf94013a2
bl _p_49
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_24:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_System_Collections_Generic_KeyValuePair_2_string_object
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_System_Collections_Generic_KeyValuePair_2_string_object:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400803

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #584]
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf9400063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #592]
.word 0x928011f0
.word 0xf8706870
.word 0xd63f0200
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_25:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Clear
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Clear:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #600]
.word 0x3940001e
bl _p_50
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_26:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Contains_System_Collections_Generic_KeyValuePair_2_string_object
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Contains_System_Collections_Generic_KeyValuePair_2_string_object:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #608]
.word 0xf9400fa1
.word 0xf94013a2
bl _p_51
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_27:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_ContainsKey_string
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_ContainsKey_string:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #616]
.word 0x3940001e
.word 0xf9400fa1
bl _p_52
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_28:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_CopyTo_System_Collections_Generic_KeyValuePair_2_string_object___int
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_CopyTo_System_Collections_Generic_KeyValuePair_2_string_object___int:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400803

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #624]
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xb98023a2
.word 0xf9400063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #632]
.word 0x928007f0
.word 0xf8706870
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_29:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_GetEnumerator
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_GetEnumerator:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #640]
.word 0x3940001e
.word 0x910063a8
bl _p_53

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #648]
.word 0xd2800701
bl _p_3
.word 0xf9003ba0
.word 0x91004003
.word 0xaa0303e1
.word 0xd5033bbf
.word 0xf9403ba0
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x91002021
.word 0xf94017a2
.word 0xf9000022
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf9401ba2
.word 0xf9000022
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_2a:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_string
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_string:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #656]
.word 0x3940001e
.word 0xf9400fa1
bl _p_54
.word 0x53001c00
.word 0x53001c00
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2b:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_System_Collections_Generic_KeyValuePair_2_string_object
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_System_Collections_Generic_KeyValuePair_2_string_object:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400803

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #664]
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf9400063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #672]
.word 0x928006f0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x53001c00
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0x3940003e
bl _p_34
.word 0xf9401ba0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2c:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_TryGetValue_string_object_
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_TryGetValue_string_object_:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #680]
.word 0x3940001e
.word 0xf9400fa1
.word 0xf94013a2
bl _p_55
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2d:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_System_Collections_IEnumerable_GetEnumerator
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_System_Collections_IEnumerable_GetEnumerator:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #640]
.word 0x3940001e
.word 0x910063a8
bl _p_53

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #648]
.word 0xd2800701
bl _p_3
.word 0xf9003ba0
.word 0x91004003
.word 0xaa0303e1
.word 0xd5033bbf
.word 0xf9403ba0
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x91002021
.word 0xf94017a2
.word 0xf9000022
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf9401ba2
.word 0xf9000022
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_2e:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationProvider__ctor
Microsoft_Extensions_Configuration_ConfigurationProvider__ctor:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xd2800401
bl _p_3
.word 0xf9001fa0
bl _p_8
.word 0xf9400ba0
.word 0x91004001
.word 0xd5033bbf
.word 0xf9401fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #688]
.word 0x3980d410
.word 0xb5000050
bl _p_6

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #696]
.word 0xf9400000
.word 0xf9001ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xd2800a01
bl _p_3
.word 0xf9401ba1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #712]
.word 0xf90017a0
bl _p_56
.word 0xf94017a0
.word 0xf90013a0
.word 0xf9400ba0
.word 0x91006001
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2f:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationProvider_get_Data
Microsoft_Extensions_Configuration_ConfigurationProvider_get_Data:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_30:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationProvider_set_Data_System_Collections_Generic_IDictionary_2_string_string
Microsoft_Extensions_Configuration_ConfigurationProvider_set_Data_System_Collections_Generic_IDictionary_2_string_string:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x91006001
.word 0xd5033bbf
.word 0xf9400fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_31:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationProvider_Load
Microsoft_Extensions_Configuration_ConfigurationProvider_Load:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken
Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_33:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationProvider_ToString
Microsoft_Extensions_Configuration_ConfigurationProvider_ToString:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9407030
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_ActiveChangeCallbacks
Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_ActiveChangeCallbacks:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39406000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_35:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationReloadToken_set_ActiveChangeCallbacks_bool
Microsoft_Extensions_Configuration_ConfigurationReloadToken_set_ActiveChangeCallbacks_bool:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x394063a1
.word 0xf9400ba0
.word 0x39006001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_36:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged
Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0xaa0003e1
.word 0x3940003e
.word 0xb9802800
.word 0xf90013a0
.word 0xd5033bbf
.word 0xd5033bbf
.word 0xf94013a0
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_37:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object
Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xa901ebb9
.word 0xf90017a0
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xaa1903f7
.word 0xaa1a03f9
.word 0xf94017a0
.word 0xf940081a
.word 0x3940035e
.word 0x3940b340
.word 0x35000c40
.word 0xf90023bf
.word 0x910103a0
.word 0xf9002ba0
.word 0xd5033bbf
.word 0xf9402ba0
.word 0xf90023ba
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94023a0
.word 0xf9001ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xf9400000
.word 0xaa0003e1
.word 0xaa1703fa
.word 0xaa1903f7
.word 0xf9401ba2
.word 0xf9001fa2
.word 0xaa0103f9
.word 0xb50006e0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #728]
.word 0xf9400000
.word 0xf90033a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000840

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #736]
.word 0xd2801001
bl _p_3
.word 0xf9002fa0
.word 0xf94033a1
.word 0xeb1f003f
.word 0x10000011
.word 0x540006a0
.word 0xd5033bbf
.word 0xf9402fa0
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #744]
.word 0xf9002001

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #752]
.word 0xf9001402
.word 0xf9401822
.word 0xf9000c02
.word 0xf9401421
.word 0xf9000801
.word 0xf9002ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #720]
.word 0xd5033bbf
.word 0xf9402ba0
.word 0xf9000020
.word 0xf9401fa1
.word 0xf9001fa1
.word 0xaa0003f9

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #760]
.word 0xaa1a03e0
.word 0xaa1703e1
.word 0xf9401fa2
.word 0xaa1903e3
.word 0xf94017a4
bl _p_57
.word 0xf9400bb7
.word 0xa941ebb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd28008c0
bl _p_58
.word 0xd2801dc0
.word 0xaa1103e1
bl _p_15
.word 0xd2800ca0
.word 0xaa1103e1
bl _p_15

Lme_38:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload
Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0x3940003e
bl _p_59
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_39:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor
Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #768]
.word 0xd2800601
bl _p_3
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xf90013a0
.word 0x91004002
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xd280003e
.word 0x3900601e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3a:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor
Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #776]
.word 0xd2800201
bl _p_3
.word 0xaa0003e1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #728]
.word 0xf9000ba0
.word 0xd5033bbf
.word 0xf9400ba0
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3b:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor
Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3c:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__RegisterChangeCallbackb__7_0_Microsoft_Extensions_Configuration_ConfigurationReloadToken
Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__RegisterChangeCallbackb__7_0_Microsoft_Extensions_Configuration_ConfigurationReloadToken:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0x3940001e
.word 0x3900601f
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3d:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #784]
.word 0xd2800401
bl _p_3
.word 0xf90013a0
.word 0xf9400ba1
bl _p_60
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3e:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ReferenceCountedProviders__ctor
Microsoft_Extensions_Configuration_ReferenceCountedProviders__ctor:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_42:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2800021
.word 0xf9400ba0
.word 0xf9000c01
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0x91004001
.word 0xd5033bbf
.word 0xf9400fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_43:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers
Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0xf90013a0
.word 0xd5033bbf
.word 0xd5033bbf
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_44:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd5033bbf
.word 0xf9400ba0
.word 0x91004001
.word 0xd5033bbf
.word 0xf9400fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_45:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_Dispose
Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_Dispose:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000be0
.word 0x91006340
.word 0x92800001
.word 0xc85f7c10
.word 0x8b010210
.word 0xc811fc10
.word 0xb5ffffb1
.word 0xd5033bbf
.word 0xaa1003e0
.word 0xb5000a20
.word 0xf9400b40
.word 0xf90033a0
.word 0xd5033bbf
.word 0xd5033bbf
.word 0xf94033a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #384]
.word 0x3940001e
.word 0x9100a3a8
bl _p_27
.word 0x1400002d

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9401fba
.word 0xaa1a03f9
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000300
.word 0xf9400338
.word 0xb9403300

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #792]
.word 0xeb01001f
.word 0x540001c3
.word 0xf9401300

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #792]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xb5000080
.word 0x14000001
.word 0xd280001a
.word 0x14000001
.word 0xb500005a
.word 0x14000009
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #408]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #392]
.word 0x9100a3a0
bl _p_28
.word 0x53001c00
.word 0x35fff9c0
.word 0xf90023bf
.word 0x94000005
.word 0xf94023a0
.word 0xb4000040
bl _p_26
.word 0x1400000c
.word 0xf9002bbe

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x9100a3a0
.word 0xf90027a0
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801dc0
.word 0xaa1103e1
bl _p_15

Lme_46:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_ReplaceProviders_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_ReplaceProviders_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xaa0003f9
.word 0xf90017a1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9001bbf
.word 0x3900e3bf
.word 0xf9400f38
.word 0xf9400b20
.word 0xf9001ba0
.word 0xd2a00000
.word 0x3900e3a0
.word 0xf9401bb7
.word 0x9100e3a0
.word 0xf90023a0
.word 0xaa1703e0
.word 0x9100e3a1
bl _mono_monitor_enter_v4_fast
.word 0x93407c00
.word 0x35000080
.word 0xaa1703e0
.word 0xf94023a1
bl _p_61
.word 0x39408320
.word 0x34000160

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_62
.word 0xaa0003e1
.word 0xd2801f80
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xf94017a0
bl _p_63
.word 0xf90033a0
.word 0x91006321
.word 0xd5033bbf
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf90027bf
.word 0x94000005
.word 0xf94027a0
.word 0xb4000040
bl _p_26
.word 0x1400000e
.word 0xf9002bbe

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x3940e3a0
.word 0x34000060
.word 0xf9401ba0
bl _p_64
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9403c30
.word 0xd63f0200
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_47:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider
Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf90023bf
.word 0x390123bf
.word 0xf9400b20
.word 0xf90023a0
.word 0xd2a00000
.word 0x390123a0
.word 0xf94023b8
.word 0x910123b7
.word 0xaa1803e0
.word 0x910123a1
bl _mono_monitor_enter_v4_fast
.word 0x93407c00
.word 0x35000080
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_61
.word 0x39408320
.word 0x34000160

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_62
.word 0xaa0003e1
.word 0xd2801f80
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xf9400f38
.word 0xf9400f21
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9404430
.word 0xd63f0200
.word 0xf9003fa0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800401
bl _p_3
.word 0xf9403fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #800]
.word 0xf9003ba0
bl _p_65
.word 0xf9403ba0
.word 0xaa0003f9
.word 0xaa0003f7
.word 0xaa1a03f6
.word 0x394002fe
.word 0xb9801ee0
.word 0x11000400
.word 0xb9001ee0
.word 0xf9400afa
.word 0xb9801af5
.word 0xaa1503e0
.word 0xb9801b41
.word 0x6b01001f
.word 0x54000142
.word 0x110006a0
.word 0xb9001ae0
.word 0xaa1a03e0
.word 0xaa1503e1
.word 0xaa1603e2
.word 0xf9400343
.word 0xf9408870
.word 0xd63f0200
.word 0x14000008

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #368]
.word 0xaa1703e0
.word 0xaa1603e1
bl _p_24
.word 0x14000001
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xf9400302
.word 0xf9404050
.word 0xd63f0200
.word 0xf9002bbf
.word 0x94000005
.word 0xf9402ba0
.word 0xb4000040
bl _p_26
.word 0x1400000e
.word 0xf9002fbe

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x394123a0
.word 0x34000060
.word 0xf94023a0
bl _p_64
.word 0xf9402fbe
.word 0xd61f03c0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_48:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_Dispose
Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_Dispose:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf90017bf
.word 0x3900c3bf
.word 0xf94013a0
.word 0xf9400c19
.word 0xf9400800
.word 0xf90017a0
.word 0xd2a00000
.word 0x3900c3a0
.word 0xf94017b8
.word 0x9100c3a0
.word 0xf9001fa0
.word 0xaa1803e0
.word 0x9100c3a1
bl _mono_monitor_enter_v4_fast
.word 0x93407c00
.word 0x35000080
.word 0xaa1803e0
.word 0xf9401fa1
bl _p_61
.word 0xf94013a0
.word 0xd280003e
.word 0x3900801e
.word 0xf90023bf
.word 0x94000005
.word 0xf94023a0
.word 0xb4000040
bl _p_26
.word 0x1400000e
.word 0xf90027be

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x3940c3a0
.word 0x34000060
.word 0xf94017a0
bl _p_64
.word 0xf94027be
.word 0xd61f03c0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403c30
.word 0xd63f0200
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_49:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor
Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #808]
.word 0xd2800201
bl _p_3
.word 0xf9001ba0
.word 0xf9400ba0
.word 0x91004001
.word 0xd5033bbf
.word 0xf9401ba0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800401
bl _p_3

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xf9400021
.word 0xf90017a0
.word 0x91004002
.word 0xd5033bbf
.word 0xf94017a0
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
bl _p_63
.word 0xf90013a0
.word 0xf9400ba0
.word 0x91006001
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_4a:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource
Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9001bbf
.word 0xd2800000
.word 0xf90013a0
.word 0xf90017a0
.word 0xaa1903e0
bl _p_66

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #816]
.word 0xf9400fa0
.word 0xf9001fa1
.word 0xb50000c0
.word 0xd2800cc0
.word 0xf2a04000
.word 0xf9401fa1
bl _mono_create_corlib_exception_1
bl _p_2
.word 0x91008321
.word 0xd5033bbf
.word 0xf9400fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401320
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400800
.word 0xb4000b80
.word 0xf9401320
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400801

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #824]
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #832]
.word 0x92800cf0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9001ba0
.word 0x14000026

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9401ba1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #840]
.word 0x910083a0
.word 0xf90023a0
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #848]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9400f23
.word 0xf94013a1
.word 0xf94017a2

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #856]
.word 0xaa0303e0
.word 0xf9400063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #864]
.word 0x928011f0
.word 0xf8706870
.word 0xd63f0200
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #872]
.word 0x92800ef0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffa20
.word 0xf90027bf
.word 0x94000005
.word 0xf94027a0
.word 0xb4000040
bl _p_26
.word 0x14000015
.word 0xf9002bbe

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9401ba0
.word 0xb4000140
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #408]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4b:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_GetEnumerator
Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_GetEnumerator:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
.word 0xf9400c01

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #824]
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x15, [x16, #832]
.word 0x92800cf0
.word 0xf8706830
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4c:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_System_Collections_IEnumerable_GetEnumerator
Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_System_Collections_IEnumerable_GetEnumerator:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400ba0
bl _p_67
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4d:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_get_InitialData
Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_get_InitialData:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4e:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder
Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #880]
.word 0xd2800501
bl _p_3
.word 0xf90013a0
.word 0xf9400ba1
bl _p_68
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4f:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource__ctor
Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource__ctor:
.loc 1 1 0
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_50:
.text
	.align 4
	.no_dead_strip Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_GSHAREDVT_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_GSHAREDVT_T_GSHAREDVT
Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_GSHAREDVT_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_GSHAREDVT_T_GSHAREDVT:
.loc 1 1 0
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9002faf
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001fa3
.word 0xf90023a4

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #888]
.word 0xf9402fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9402fa0
.word 0xf9401000
.word 0xf90033a0
.word 0xf94033a0
.word 0xb9800000
.word 0x91003c10
.word 0x928001f1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003e0
.word 0xf90037a0
.word 0x910123a0
.word 0xf9003ba0
.word 0x9100a3a0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_4
.word 0xf9403bbe
.word 0xf90003c0
.word 0xf90007c1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xd2800401
bl _p_3
.word 0x91004002
.word 0xaa0203e1
.word 0xf94027a3
.word 0xf9000043
.word 0x91002022
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xaa0003fa
.word 0x1400002f
.word 0xf9003fa0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9401fa0
.word 0xf90057a0
.word 0xf94033a0
.word 0xf94037a0
.word 0xf94023a1
.word 0xf94033a0
.word 0xf94037a0
.word 0xf94033a0
.word 0xb9801802
.word 0xf94037a0
.word 0x8b020000
.word 0xf94033a2
.word 0xf9400442
.word 0xf94033a3
.word 0xf9400863
.word 0xd63f0060
.word 0xf94057a0
.word 0xf9402fa1
.word 0xf9401421
.word 0xf9402fa1
.word 0xf9401822
.word 0xf90053a0
.word 0xf94033a1
.word 0xf94037a1
.word 0xf94033a1
.word 0xb9801823
.word 0xf94037a1
.word 0x8b030021
.word 0xd63f0040
.word 0xf94053a0
bl _p_5
.word 0xf9004ba0
.word 0xf9404ba0
.word 0xb4000060
.word 0xf9404ba0
bl _p_2
.word 0x14000001
bl _p_69
.word 0x14000002
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_52:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_T_REF_invoke_bool_T_T_REF
wrapper_delegate_invoke_System_Predicate_1_T_REF_invoke_bool_T_T_REF:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf90023af
.word 0xf9001fa0
.word 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #896]
.word 0xf94023a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000940
.word 0x14000001
.word 0xf9401fa0
.word 0xf9403c19
.word 0xaa1903e0
.word 0xb5000300
.word 0xf9401fa0
.word 0xf9401019
.word 0xf9401fa0
.word 0x3981c400
.word 0x35000040
.word 0xb4000159
.word 0xf9401fa0
.word 0xf9401c00
.word 0xf9401fa0
.word 0xf9400802
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0x1400002b
.word 0xf9401fa0
.word 0xf9401c00
.word 0xf9401fa0
.word 0xf9400801
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0x14000023
.word 0xb9801b20
.word 0xaa0003f8
.word 0xd2a00017

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000489
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xf94023a0
.word 0xf9401000
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9002ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9402ba1
.word 0x53001c00
.word 0x53001c16
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b18001f
.word 0x54fffc6b
.word 0xaa1603e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0x91022320
.word 0xd280003e
.word 0xb900001e
.word 0xaa1903e0
bl _p_70
bl _p_71
.word 0xaa0003f9
.word 0xb5ffff20
.word 0x17ffffb5
.word 0xd2801920
.word 0xaa1103e1
bl _p_15

Lme_53:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_T_REF_invoke_void_T_T_REF
wrapper_delegate_invoke_System_Action_1_T_REF_invoke_void_T_T_REF:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf90023af
.word 0xf9001fa0
.word 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #904]
.word 0xf94023a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350008a0
.word 0x14000001
.word 0xf9401fa0
.word 0xf9403c19
.word 0xaa1903e0
.word 0xb50002c0
.word 0xf9401fa0
.word 0xf9401019
.word 0xf9401fa0
.word 0x3981c400
.word 0x35000040
.word 0xb4000139
.word 0xf9401fa0
.word 0xf9401c00
.word 0xf9401fa0
.word 0xf9400802
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000027
.word 0xf9401fa0
.word 0xf9401c00
.word 0xf9401fa0
.word 0xf9400801
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000020
.word 0xb9801b20
.word 0xaa0003f8
.word 0xd2a00017

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000429
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400016
.word 0xaa1603e2
.word 0xf94023a0
.word 0xf9401000
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9002ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9402ba0
.word 0x110006f7
.word 0xaa1703e0
.word 0x6b18001f
.word 0x54fffcab
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0x91022320
.word 0xd280003e
.word 0xb900001e
.word 0xaa1903e0
bl _p_70
bl _p_71
.word 0xaa0003f9
.word 0xb5ffff20
.word 0x17ffffba
.word 0xd2801920
.word 0xaa1103e1
bl _p_15

Lme_54:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_T_REF_invoke_int_T_T_T_REF_T_REF
wrapper_delegate_invoke_System_Comparison_1_T_REF_invoke_int_T_T_T_REF_T_REF:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90027af
.word 0xf90023a0
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #912]
.word 0xf94027a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350009a0
.word 0x14000001
.word 0xf94023a0
.word 0xf9403c18
.word 0xaa1803e0
.word 0xb5000340
.word 0xf94023a0
.word 0xf9401018
.word 0xf94023a0
.word 0x3981c400
.word 0x35000040
.word 0xb4000178
.word 0xf94023a0
.word 0xf9401c00
.word 0xf94023a0
.word 0xf9400803
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0x1400002d
.word 0xf94023a0
.word 0xf9401c00
.word 0xf94023a0
.word 0xf9400802
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0x14000024
.word 0xb9801b00
.word 0xaa0003f7
.word 0xd2a00016

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ec0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540004a9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xf94027a0
.word 0xf9401000
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf9002ba3
.word 0xf9400c70
.word 0xd63f0200
.word 0x93407c00
.word 0xf9402ba1
.word 0xaa0003f5
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b17001f
.word 0x54fffc4b
.word 0xaa1503e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0x91022300
.word 0xd280003e
.word 0xb900001e
.word 0xaa1803e0
bl _p_70
bl _p_71
.word 0xaa0003f8
.word 0xb5ffff20
.word 0x17ffffb2
.word 0xd2801920
.word 0xaa1103e1
bl _p_15

Lme_55:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_TResult_REF_invoke_TResult
wrapper_delegate_invoke_System_Func_1_TResult_REF_invoke_TResult:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001faf
.word 0xf9001ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x1, [x16, #920]
.word 0xf9401fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000860
.word 0x14000001
.word 0xf9401ba0
.word 0xf9403c1a
.word 0xaa1a03e0
.word 0xb5000280
.word 0xf9401ba0
.word 0xf940101a
.word 0xf9401ba0
.word 0x3981c400
.word 0x35000040
.word 0xb400011a
.word 0xf9401ba0
.word 0xf9401c00
.word 0xf9401ba0
.word 0xf9400801
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000027
.word 0xf9401ba0
.word 0xf9401c00
.word 0xf9401ba0
.word 0xf9400800
.word 0xd63f0000
.word 0x14000021
.word 0xb9801b40
.word 0xaa0003f9
.word 0xd2a00018

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407f00
.word 0xb9801b41
.word 0xeb00003f
.word 0x10000011
.word 0x54000429
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400017
.word 0xaa1703e1
.word 0xf9401fa0
.word 0xf9401000
.word 0xaa0103e0
.word 0xf90023a1
.word 0xf9400c30
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0003f7
.word 0x11000718
.word 0xaa1803e0
.word 0x6b19001f
.word 0x54fffcab
.word 0xaa1703e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0x91022340
.word 0xd280003e
.word 0xb900001e
.word 0xaa1a03e0
bl _p_70
bl _p_71
.word 0xaa0003fa
.word 0xb5ffff20
.word 0x17ffffbc
.word 0xd2801920
.word 0xaa1103e1
bl _p_15

Lme_56:
.text
ut_87:
add x0, x0, 16
b wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_87
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool
wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x53001f57
.word 0x9100431a
.word 0xaa1903f8
.word 0xaa1a03f6
.word 0xf9001fb9
.word 0x34000077
.word 0xf9400300
bl _p_72
.word 0xf9400340
bl _p_73
.word 0xf9000300
.word 0x910022da
.word 0xf9401fa0
.word 0x91002018
.word 0xaa1a03f9
.word 0xaa1803f6
.word 0x34000077
.word 0xf9400300
bl _p_72
.word 0xf9400340
bl _p_73
.word 0xf9000300
.word 0x9100233a
.word 0x910022d8
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_57:
.text
ut_88:
add x0, x0, 16
b wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object
.text
	.align 4
	.no_dead_strip wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object
wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9400fa0
.word 0x91004000
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_74
.word 0xf9001ba0
.word 0xf9401fa1
.word 0xd5033bbf
.word 0xf9401ba0
.word 0xf9000020
.word 0xd349fc22
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400ba0
.word 0x91002000
.word 0x91002021
.word 0xf90017a1
.word 0xf9400000
bl _p_74
.word 0xf90013a0
.word 0xf94017a1
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_58:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl System_ThrowHelper_ThrowIfNull_object_string
bl System_ThrowHelper_Throw_string
bl Microsoft_Extensions_FileProviders_EmptyDisposable_get_Instance
bl Microsoft_Extensions_FileProviders_EmptyDisposable__ctor
bl Microsoft_Extensions_FileProviders_EmptyDisposable_Dispose
bl Microsoft_Extensions_FileProviders_EmptyDisposable__cctor
bl Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF
bl Microsoft_Extensions_Configuration_ConfigurationManager__ctor
bl Microsoft_Extensions_Configuration_ConfigurationManager_Dispose
bl Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged
bl Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource
bl Microsoft_Extensions_Configuration_ConfigurationManager_ReloadSources
bl Microsoft_Extensions_Configuration_ConfigurationManager_DisposeRegistrations
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Item_int
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_set_Item_int_Microsoft_Extensions_Configuration_IConfigurationSource
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Count
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_IsReadOnly
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Clear
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Contains_Microsoft_Extensions_Configuration_IConfigurationSource
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_CopyTo_Microsoft_Extensions_Configuration_IConfigurationSource___int
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_GetEnumerator
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_IndexOf_Microsoft_Extensions_Configuration_IConfigurationSource
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Insert_int_Microsoft_Extensions_Configuration_IConfigurationSource
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Remove_Microsoft_Extensions_Configuration_IConfigurationSource
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_RemoveAt_int
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_IEnumerable_GetEnumerator
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_Generic_IEnumerable_Microsoft_Extensions_Configuration_IConfigurationSource_GetEnumerator
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Item_string
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_set_Item_string_object
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Keys
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Values
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Count
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_IsReadOnly
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_string_object
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_System_Collections_Generic_KeyValuePair_2_string_object
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Clear
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Contains_System_Collections_Generic_KeyValuePair_2_string_object
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_ContainsKey_string
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_CopyTo_System_Collections_Generic_KeyValuePair_2_string_object___int
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_GetEnumerator
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_string
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_System_Collections_Generic_KeyValuePair_2_string_object
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_TryGetValue_string_object_
bl Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_System_Collections_IEnumerable_GetEnumerator
bl Microsoft_Extensions_Configuration_ConfigurationProvider__ctor
bl Microsoft_Extensions_Configuration_ConfigurationProvider_get_Data
bl Microsoft_Extensions_Configuration_ConfigurationProvider_set_Data_System_Collections_Generic_IDictionary_2_string_string
bl Microsoft_Extensions_Configuration_ConfigurationProvider_Load
bl Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken
bl Microsoft_Extensions_Configuration_ConfigurationProvider_ToString
bl Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_ActiveChangeCallbacks
bl Microsoft_Extensions_Configuration_ConfigurationReloadToken_set_ActiveChangeCallbacks_bool
bl Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged
bl Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object
bl Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload
bl Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor
bl Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor
bl Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor
bl Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__RegisterChangeCallbackb__7_0_Microsoft_Extensions_Configuration_ConfigurationReloadToken
bl Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
bl method_addresses
bl method_addresses
bl method_addresses
bl Microsoft_Extensions_Configuration_ReferenceCountedProviders__ctor
bl Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
bl Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers
bl Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
bl Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_Dispose
bl Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_ReplaceProviders_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
bl Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider
bl Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_Dispose
bl Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor
bl Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource
bl Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_GetEnumerator
bl Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_System_Collections_IEnumerable_GetEnumerator
bl Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_get_InitialData
bl Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder
bl Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource__ctor
bl method_addresses
bl Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_GSHAREDVT_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_GSHAREDVT_T_GSHAREDVT
bl wrapper_delegate_invoke_System_Predicate_1_T_REF_invoke_bool_T_T_REF
bl wrapper_delegate_invoke_System_Action_1_T_REF_invoke_void_T_T_REF
bl wrapper_delegate_invoke_System_Comparison_1_T_REF_invoke_int_T_T_T_REF_T_REF
bl wrapper_delegate_invoke_System_Func_1_TResult_REF_invoke_TResult
bl wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool
bl wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 87,88
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_87
bl ut_88

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 0,13,12,31,0,68,14,32,157,4,158,3,68,13,29,13,12,31,0,68,14,16,157,2,158,1,68,13,29,17,12,31
	.byte 0,68,14,160,1,157,20,158,19,68,13,29,68,154,18,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.byte 13,12,31,0,68,14,48,157,6,158,5,68,13,29,28,12,31,0,68,14,96,157,12,158,11,68,13,29,68,149,10,150
	.byte 9,68,151,8,152,7,68,153,6,154,5,29,12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,149,24,150,23,68
	.byte 151,22,152,21,68,153,20,154,19,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8,23,12,31,0,68,14
	.byte 64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,18,12,31,0,68,14,48,157,6,158,5,68,13,29
	.byte 68,152,4,153,3,13,12,31,0,68,14,96,157,12,158,11,68,13,29,14,12,31,0,68,14,128,1,157,16,158,15,68
	.byte 13,29,13,12,31,0,68,14,64,157,8,158,7,68,13,29,21,12,31,0,68,14,112,157,14,158,13,68,13,29,68,151
	.byte 12,68,153,11,154,10,21,12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10,21,12,31,0
	.byte 68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10,29,12,31,0,68,14,128,1,157,16,158,15,68,13
	.byte 29,68,149,14,150,13,68,151,12,152,11,68,153,10,154,9,18,12,31,0,68,14,96,157,12,158,11,68,13,29,68,152
	.byte 10,153,9,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,17,12,31,0,68,14,176,1,157,22,158,21
	.byte 68,13,29,68,154,20,26,12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9,68,152,8,153,7,68,154
	.byte 6,23,12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152,7,68,153,6,154,5,26,12,31,0,68,14,64
	.byte 157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2

.text
	.align 4
plt:
mono_aot_Microsoft_Extensions_Configuration_plt:
	.no_dead_strip plt__jit_icall_mono_threads_state_poll
plt__jit_icall_mono_threads_state_poll:
_p_1:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #936]
br x16
.word 1739
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_2:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #944]
br x16
.word 1742
	.no_dead_strip plt_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_3:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #952]
br x16
.word 1744
	.no_dead_strip plt_System_Threading_CancellationToken_UnsafeRegister_System_Action_1_object_object
plt_System_Threading_CancellationToken_UnsafeRegister_System_Action_1_object_object:
_p_4:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #960]
br x16
.word 1752
	.no_dead_strip plt__jit_icall_mono_thread_get_undeniable_exception
plt__jit_icall_mono_thread_get_undeniable_exception:
_p_5:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #968]
br x16
.word 1757
	.no_dead_strip plt__jit_icall_mono_generic_class_init
plt__jit_icall_mono_generic_class_init:
_p_6:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #976]
br x16
.word 1760
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor
plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor:
_p_7:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #984]
br x16
.word 1763
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor
plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor:
_p_8:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #992]
br x16
.word 1765
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager:
_p_9:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1000]
br x16
.word 1767
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager:
_p_10:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1008]
br x16
.word 1769
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource
plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource:
_p_11:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1016]
br x16
.word 1771
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationManager_DisposeRegistrations
plt_Microsoft_Extensions_Configuration_ConfigurationManager_DisposeRegistrations:
_p_12:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1024]
br x16
.word 1773
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_Dispose
plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_Dispose:
_p_13:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1032]
br x16
.word 1775
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload
plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload:
_p_14:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1040]
br x16
.word 1777
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_15:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1048]
br x16
.word 1779
	.no_dead_strip plt__jit_icall_mono_ldvirtfn
plt__jit_icall_mono_ldvirtfn:
_p_16:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1056]
br x16
.word 1781
	.no_dead_strip plt_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken__ctor_object_intptr
plt_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken__ctor_object_intptr:
_p_17:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1064]
br x16
.word 1784
	.no_dead_strip plt_Microsoft_Extensions_Primitives_ChangeToken_OnChange_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken_System_Action
plt_Microsoft_Extensions_Primitives_ChangeToken_OnChange_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken_System_Action:
_p_18:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1072]
br x16
.word 1795
	.no_dead_strip plt_System_Collections_Generic_List_1_System_IDisposable_AddWithResize_System_IDisposable
plt_System_Collections_Generic_List_1_System_IDisposable_AddWithResize_System_IDisposable:
_p_19:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1080]
br x16
.word 1800
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider
plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider:
_p_20:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1088]
br x16
.word 1817
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged
plt_Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged:
_p_21:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1096]
br x16
.word 1819
	.no_dead_strip plt_System_Array_Clear_System_Array_int_int
plt_System_Array_Clear_System_Array_int_int:
_p_22:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1104]
br x16
.word 1821
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_GetEnumerator
plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_GetEnumerator:
_p_23:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1112]
br x16
.word 1826
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationProvider
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationProvider:
_p_24:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1120]
br x16
.word 1828
	.no_dead_strip plt_System_Collections_Generic_List_1_Enumerator_Microsoft_Extensions_Configuration_IConfigurationSource_MoveNext
plt_System_Collections_Generic_List_1_Enumerator_Microsoft_Extensions_Configuration_IConfigurationSource_MoveNext:
_p_25:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1128]
br x16
.word 1845
	.no_dead_strip plt__jit_icall_ves_icall_thread_finish_async_abort
plt__jit_icall_ves_icall_thread_finish_async_abort:
_p_26:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1136]
br x16
.word 1856
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider_GetEnumerator
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider_GetEnumerator:
_p_27:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1144]
br x16
.word 1859
	.no_dead_strip plt_System_Collections_Generic_List_1_Enumerator_Microsoft_Extensions_Configuration_IConfigurationProvider_MoveNext
plt_System_Collections_Generic_List_1_Enumerator_Microsoft_Extensions_Configuration_IConfigurationProvider_MoveNext:
_p_28:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1152]
br x16
.word 1870
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_ReplaceProviders_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_ReplaceProviders_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
_p_29:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1160]
br x16
.word 1881
	.no_dead_strip plt_System_Collections_Generic_List_1_System_IDisposable_GetEnumerator
plt_System_Collections_Generic_List_1_System_IDisposable_GetEnumerator:
_p_30:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1168]
br x16
.word 1883
	.no_dead_strip plt_System_Collections_Generic_List_1_Enumerator_System_IDisposable_MoveNext
plt_System_Collections_Generic_List_1_Enumerator_System_IDisposable_MoveNext:
_p_31:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1176]
br x16
.word 1894
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_get_Item_int
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_get_Item_int:
_p_32:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1184]
br x16
.word 1905
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_set_Item_int_Microsoft_Extensions_Configuration_IConfigurationSource
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_set_Item_int_Microsoft_Extensions_Configuration_IConfigurationSource:
_p_33:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1192]
br x16
.word 1916
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationManager_ReloadSources
plt_Microsoft_Extensions_Configuration_ConfigurationManager_ReloadSources:
_p_34:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1200]
br x16
.word 1927
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationSource
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationSource:
_p_35:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1208]
br x16
.word 1929
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource
plt_Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource:
_p_36:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1216]
br x16
.word 1946
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_Contains_Microsoft_Extensions_Configuration_IConfigurationSource
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_Contains_Microsoft_Extensions_Configuration_IConfigurationSource:
_p_37:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1224]
br x16
.word 1948
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_CopyTo_Microsoft_Extensions_Configuration_IConfigurationSource___int
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_CopyTo_Microsoft_Extensions_Configuration_IConfigurationSource___int:
_p_38:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1232]
br x16
.word 1959
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_GetEnumerator
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_GetEnumerator:
_p_39:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1240]
br x16
.word 1970
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_IndexOf_Microsoft_Extensions_Configuration_IConfigurationSource
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_IndexOf_Microsoft_Extensions_Configuration_IConfigurationSource:
_p_40:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1248]
br x16
.word 1981
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_Insert_int_Microsoft_Extensions_Configuration_IConfigurationSource
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_Insert_int_Microsoft_Extensions_Configuration_IConfigurationSource:
_p_41:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1256]
br x16
.word 1992
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_Remove_Microsoft_Extensions_Configuration_IConfigurationSource
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_Remove_Microsoft_Extensions_Configuration_IConfigurationSource:
_p_42:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1264]
br x16
.word 2003
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_RemoveAt_int
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_RemoveAt_int:
_p_43:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1272]
br x16
.word 2014
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object__ctor
plt_System_Collections_Generic_Dictionary_2_string_object__ctor:
_p_44:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1280]
br x16
.word 2025
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_get_Item_string
plt_System_Collections_Generic_Dictionary_2_string_object_get_Item_string:
_p_45:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1288]
br x16
.word 2036
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_set_Item_string_object
plt_System_Collections_Generic_Dictionary_2_string_object_set_Item_string_object:
_p_46:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1296]
br x16
.word 2047
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_get_Keys
plt_System_Collections_Generic_Dictionary_2_string_object_get_Keys:
_p_47:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1304]
br x16
.word 2058
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_get_Values
plt_System_Collections_Generic_Dictionary_2_string_object_get_Values:
_p_48:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1312]
br x16
.word 2069
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_Add_string_object
plt_System_Collections_Generic_Dictionary_2_string_object_Add_string_object:
_p_49:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1320]
br x16
.word 2080
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_Clear
plt_System_Collections_Generic_Dictionary_2_string_object_Clear:
_p_50:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1328]
br x16
.word 2091
	.no_dead_strip plt_System_Linq_Enumerable_Contains_System_Collections_Generic_KeyValuePair_2_string_object_System_Collections_Generic_IEnumerable_1_System_Collections_Generic_KeyValuePair_2_string_object_System_Collections_Generic_KeyValuePair_2_string_object
plt_System_Linq_Enumerable_Contains_System_Collections_Generic_KeyValuePair_2_string_object_System_Collections_Generic_IEnumerable_1_System_Collections_Generic_KeyValuePair_2_string_object_System_Collections_Generic_KeyValuePair_2_string_object:
_p_51:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1336]
br x16
.word 2102
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_ContainsKey_string
plt_System_Collections_Generic_Dictionary_2_string_object_ContainsKey_string:
_p_52:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1344]
br x16
.word 2114
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_GetEnumerator
plt_System_Collections_Generic_Dictionary_2_string_object_GetEnumerator:
_p_53:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1352]
br x16
.word 2125
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_Remove_string
plt_System_Collections_Generic_Dictionary_2_string_object_Remove_string:
_p_54:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1360]
br x16
.word 2136
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_TryGetValue_string_object_
plt_System_Collections_Generic_Dictionary_2_string_object_TryGetValue_string_object_:
_p_55:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1368]
br x16
.word 2147
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string
plt_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string:
_p_56:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1376]
br x16
.word 2158
	.no_dead_strip plt_Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_Microsoft_Extensions_Configuration_ConfigurationReloadToken_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_Microsoft_Extensions_Configuration_ConfigurationReloadToken_Microsoft_Extensions_Configuration_ConfigurationReloadToken
plt_Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_Microsoft_Extensions_Configuration_ConfigurationReloadToken_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_Microsoft_Extensions_Configuration_ConfigurationReloadToken_Microsoft_Extensions_Configuration_ConfigurationReloadToken:
_p_57:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1384]
br x16
.word 2169
	.no_dead_strip plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource
plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource:
_p_58:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1392]
br x16
.word 2181
	.no_dead_strip plt_System_Threading_CancellationTokenSource_Cancel
plt_System_Threading_CancellationTokenSource_Cancel:
_p_59:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1400]
br x16
.word 2186
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
_p_60:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1408]
br x16
.word 2191
	.no_dead_strip plt__jit_icall_mono_monitor_enter_v4_internal
plt__jit_icall_mono_monitor_enter_v4_internal:
_p_61:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1416]
br x16
.word 2193
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_62:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1424]
br x16
.word 2196
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
_p_63:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1432]
br x16
.word 2199
	.no_dead_strip plt_System_Threading_Monitor_Exit_object
plt_System_Threading_Monitor_Exit_object:
_p_64:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1440]
br x16
.word 2201
	.no_dead_strip plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider__ctor_System_Collections_Generic_IEnumerable_1_Microsoft_Extensions_Configuration_IConfigurationProvider
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider__ctor_System_Collections_Generic_IEnumerable_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
_p_65:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1448]
br x16
.word 2206
	.no_dead_strip plt_Microsoft_Extensions_Configuration_ConfigurationProvider__ctor
plt_Microsoft_Extensions_Configuration_ConfigurationProvider__ctor:
_p_66:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1456]
br x16
.word 2217
	.no_dead_strip plt_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_GetEnumerator
plt_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_GetEnumerator:
_p_67:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1464]
br x16
.word 2219
	.no_dead_strip plt_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource
plt_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource:
_p_68:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1472]
br x16
.word 2221
	.no_dead_strip plt_Microsoft_Extensions_FileProviders_EmptyDisposable_get_Instance
plt_Microsoft_Extensions_FileProviders_EmptyDisposable_get_Instance:
_p_69:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1480]
br x16
.word 2223
	.no_dead_strip plt__jit_icall_mono_arch_rethrow_exception
plt__jit_icall_mono_arch_rethrow_exception:
_p_70:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1488]
br x16
.word 2225
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_71:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1496]
br x16
.word 2227
	.no_dead_strip plt__jit_icall_monoeg_g_free
plt__jit_icall_monoeg_g_free:
_p_72:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1504]
br x16
.word 2230
	.no_dead_strip plt__jit_icall_mono_string_to_utf8str
plt__jit_icall_mono_string_to_utf8str:
_p_73:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1512]
br x16
.word 2232
	.no_dead_strip plt__jit_icall_ves_icall_string_new_wrapper
plt__jit_icall_ves_icall_string_new_wrapper:
_p_74:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Extensions_Configuration_got@PAGEOFF
ldr x16, [x16, #1520]
br x16
.word 2235
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_Microsoft_Extensions_Configuration_got, 1528
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 1, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 2
name_0:
	.asciz "_unbox_trampoline_p"
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "B59D59E7-DDA0-4548-A418-DC475B47C5DB"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Microsoft.Extensions.Configuration"
.data
	.align 3
_mono_aot_file_info:

	.long 185,0
	.align 3
	.quad mono_aot_Microsoft_Extensions_Configuration_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 116,116,1528,192,75,93,6,98
	.long 391195135,0,4078,128,8,8,7,9
	.long 8388607,0,4,24,5688,0,0,0
	.long 0,1600,456,1000,0,800,360,248
	.long 624,0,1040,1592,152,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.byte 124,192,171,135,24,171,109,82,155,191,236,137,128,24,16,2
	.globl _mono_aot_module_Microsoft_Extensions_Configuration_info
	.align 3
_mono_aot_module_Microsoft_Extensions_Configuration_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_0:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM4=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM5=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM6=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2
	.asciz "System.ThrowHelper:ThrowIfNull"
	.asciz "System_ThrowHelper_ThrowIfNull_object_string"

	.byte 0,0
	.asciz "System.ThrowHelper:ThrowIfNull"
	.quad System_ThrowHelper_ThrowIfNull_object_string
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM7=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM7
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM8=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM8
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM9=Lfde0_end - Lfde0_start
	.long LDIFF_SYM9
Lfde0_start:

	.long 0
	.align 3
	.quad System_ThrowHelper_ThrowIfNull_object_string

LDIFF_SYM10=Lme_0 - System_ThrowHelper_ThrowIfNull_object_string
	.long LDIFF_SYM10
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.ThrowHelper:Throw"
	.asciz "System_ThrowHelper_Throw_string"

	.byte 0,0
	.asciz "System.ThrowHelper:Throw"
	.quad System_ThrowHelper_Throw_string
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM11=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM12=Lfde1_end - Lfde1_start
	.long LDIFF_SYM12
Lfde1_start:

	.long 0
	.align 3
	.quad System_ThrowHelper_Throw_string

LDIFF_SYM13=Lme_1 - System_ThrowHelper_Throw_string
	.long LDIFF_SYM13
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.FileProviders.EmptyDisposable:get_Instance"
	.asciz "Microsoft_Extensions_FileProviders_EmptyDisposable_get_Instance"

	.byte 0,0
	.asciz "Microsoft.Extensions.FileProviders.EmptyDisposable:get_Instance"
	.quad Microsoft_Extensions_FileProviders_EmptyDisposable_get_Instance
	.quad Lme_2

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM14=Lfde2_end - Lfde2_start
	.long LDIFF_SYM14
Lfde2_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_FileProviders_EmptyDisposable_get_Instance

LDIFF_SYM15=Lme_2 - Microsoft_Extensions_FileProviders_EmptyDisposable_get_Instance
	.long LDIFF_SYM15
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 5
	.asciz "Microsoft_Extensions_FileProviders_EmptyDisposable"

	.byte 16,16
LDIFF_SYM16=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,0,0,7
	.asciz "Microsoft_Extensions_FileProviders_EmptyDisposable"

LDIFF_SYM17=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM18=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM19=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM19
	.byte 2
	.asciz "Microsoft.Extensions.FileProviders.EmptyDisposable:.ctor"
	.asciz "Microsoft_Extensions_FileProviders_EmptyDisposable__ctor"

	.byte 0,0
	.asciz "Microsoft.Extensions.FileProviders.EmptyDisposable:.ctor"
	.quad Microsoft_Extensions_FileProviders_EmptyDisposable__ctor
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM20=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM21=Lfde3_end - Lfde3_start
	.long LDIFF_SYM21
Lfde3_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_FileProviders_EmptyDisposable__ctor

LDIFF_SYM22=Lme_3 - Microsoft_Extensions_FileProviders_EmptyDisposable__ctor
	.long LDIFF_SYM22
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.FileProviders.EmptyDisposable:Dispose"
	.asciz "Microsoft_Extensions_FileProviders_EmptyDisposable_Dispose"

	.byte 0,0
	.asciz "Microsoft.Extensions.FileProviders.EmptyDisposable:Dispose"
	.quad Microsoft_Extensions_FileProviders_EmptyDisposable_Dispose
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM23=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM24=Lfde4_end - Lfde4_start
	.long LDIFF_SYM24
Lfde4_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_FileProviders_EmptyDisposable_Dispose

LDIFF_SYM25=Lme_4 - Microsoft_Extensions_FileProviders_EmptyDisposable_Dispose
	.long LDIFF_SYM25
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.FileProviders.EmptyDisposable:.cctor"
	.asciz "Microsoft_Extensions_FileProviders_EmptyDisposable__cctor"

	.byte 0,0
	.asciz "Microsoft.Extensions.FileProviders.EmptyDisposable:.cctor"
	.quad Microsoft_Extensions_FileProviders_EmptyDisposable__cctor
	.quad Lme_5

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM26=Lfde5_end - Lfde5_start
	.long LDIFF_SYM26
Lfde5_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_FileProviders_EmptyDisposable__cctor

LDIFF_SYM27=Lme_5 - Microsoft_Extensions_FileProviders_EmptyDisposable__cctor
	.long LDIFF_SYM27
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "System_IDisposable"

	.byte 16,7
	.asciz "System_IDisposable"

LDIFF_SYM28=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM29=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM30=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2
	.asciz "Microsoft.Extensions.Internal.ChangeCallbackRegistrar:UnsafeRegisterChangeCallback<T_REF>"
	.asciz "Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF"

	.byte 0,0
	.asciz "Microsoft.Extensions.Internal.ChangeCallbackRegistrar:UnsafeRegisterChangeCallback<T_REF>"
	.quad Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM31=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM32=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM33=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM34=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,141,56,3
	.asciz "param4"

LDIFF_SYM35=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM36=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM37=Lfde6_end - Lfde6_start
	.long LDIFF_SYM37
Lfde6_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF

LDIFF_SYM38=Lme_6 - Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF
	.long LDIFF_SYM38
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,154,18
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_4:

	.byte 5
	.asciz "_ConfigurationSources"

	.byte 32,16
LDIFF_SYM39=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 2,35,0,6
	.asciz "_sources"

LDIFF_SYM40=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,16,6
	.asciz "_config"

LDIFF_SYM41=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,24,0,7
	.asciz "_ConfigurationSources"

LDIFF_SYM42=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM43=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM44=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM44
LTDIE_5:

	.byte 5
	.asciz "_ConfigurationBuilderProperties"

	.byte 32,16
LDIFF_SYM45=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,0,6
	.asciz "_properties"

LDIFF_SYM46=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,16,6
	.asciz "_config"

LDIFF_SYM47=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,35,24,0,7
	.asciz "_ConfigurationBuilderProperties"

LDIFF_SYM48=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM49=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM49
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM50=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM50
LTDIE_7:

	.byte 5
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviders"

	.byte 16,16
LDIFF_SYM51=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,35,0,0,7
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviders"

LDIFF_SYM52=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM52
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM53=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM54=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM54
LTDIE_9:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM55=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM56=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM56
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM57=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM57
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM58=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM58
LTDIE_8:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM59=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM60=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM61=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM62=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM62
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM63=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_6:

	.byte 5
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviderManager"

	.byte 40,16
LDIFF_SYM64=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,0,6
	.asciz "_replaceProvidersLock"

LDIFF_SYM65=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2,35,16,6
	.asciz "_refCountedProviders"

LDIFF_SYM66=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,24,6
	.asciz "_disposed"

LDIFF_SYM67=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,32,0,7
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviderManager"

LDIFF_SYM68=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM68
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM69=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM70=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_12:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM71=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM72=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM73=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM74=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM75=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM75
LTDIE_13:

	.byte 17
	.asciz "System_Threading_ITimer"

	.byte 16,7
	.asciz "System_Threading_ITimer"

LDIFF_SYM76=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM76
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM77=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM77
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM78=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_17:

	.byte 5
	.asciz "System_MarshalByRefObject"

	.byte 16,16
LDIFF_SYM79=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,0,0,7
	.asciz "System_MarshalByRefObject"

LDIFF_SYM80=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM80
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM81=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM81
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM82=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM82
LTDIE_21:

	.byte 5
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 16,16
LDIFF_SYM83=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,35,0,0,7
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

LDIFF_SYM84=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM84
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM85=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM85
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM86=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM86
LTDIE_20:

	.byte 5
	.asciz "System_Runtime_InteropServices_SafeHandle"

	.byte 32,16
LDIFF_SYM87=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM88=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,16,6
	.asciz "_state"

LDIFF_SYM89=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,35,24,6
	.asciz "_ownsHandle"

LDIFF_SYM90=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,35,28,6
	.asciz "_fullyInitialized"

LDIFF_SYM91=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 2,35,29,0,7
	.asciz "System_Runtime_InteropServices_SafeHandle"

LDIFF_SYM92=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM92
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM93=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM93
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM94=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM94
LTDIE_19:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 32,16
LDIFF_SYM95=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

LDIFF_SYM96=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM96
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM97=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM97
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM98=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM98
LTDIE_18:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 32,16
LDIFF_SYM99=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

LDIFF_SYM100=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM100
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM101=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM101
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM102=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM102
LTDIE_16:

	.byte 5
	.asciz "System_Threading_WaitHandle"

	.byte 24,16
LDIFF_SYM103=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,35,0,6
	.asciz "_waitHandle"

LDIFF_SYM104=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,35,16,0,7
	.asciz "System_Threading_WaitHandle"

LDIFF_SYM105=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM105
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM106=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM106
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM107=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM107
LTDIE_15:

	.byte 5
	.asciz "System_Threading_EventWaitHandle"

	.byte 24,16
LDIFF_SYM108=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,35,0,0,7
	.asciz "System_Threading_EventWaitHandle"

LDIFF_SYM109=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM109
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM110=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM110
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM111=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM111
LTDIE_14:

	.byte 5
	.asciz "System_Threading_ManualResetEvent"

	.byte 24,16
LDIFF_SYM112=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,0,0,7
	.asciz "System_Threading_ManualResetEvent"

LDIFF_SYM113=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM114=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM115=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_24:

	.byte 5
	.asciz "System_Int64"

	.byte 24,16
LDIFF_SYM116=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM117=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,35,16,0,7
	.asciz "System_Int64"

LDIFF_SYM118=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM118
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM119=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM119
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM120=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM120
LTDIE_28:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM121=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM122=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM122
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM123=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM123
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM124=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM124
LTDIE_27:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM125=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM126=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM126
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM127=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM127
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM128=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM128
LTDIE_26:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM129=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM130=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM130
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM131=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM131
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM132=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM132
LTDIE_32:

	.byte 5
	.asciz "System_Reflection_LoaderAllocatorScout"

	.byte 24,16
LDIFF_SYM133=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2,35,0,6
	.asciz "m_native"

LDIFF_SYM134=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,35,16,0,7
	.asciz "System_Reflection_LoaderAllocatorScout"

LDIFF_SYM135=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM135
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM136=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM136
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM137=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM137
LTDIE_31:

	.byte 5
	.asciz "System_Reflection_LoaderAllocator"

	.byte 48,16
LDIFF_SYM138=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,0,6
	.asciz "m_scout"

LDIFF_SYM139=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,16,6
	.asciz "m_slots"

LDIFF_SYM140=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,24,6
	.asciz "m_hashes"

LDIFF_SYM141=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,35,32,6
	.asciz "m_nslots"

LDIFF_SYM142=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,35,40,0,7
	.asciz "System_Reflection_LoaderAllocator"

LDIFF_SYM143=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM143
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM144=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM144
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM145=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM145
LTDIE_30:

	.byte 5
	.asciz "System_Type"

	.byte 32,16
LDIFF_SYM146=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM147=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM147
	.byte 2,35,16,6
	.asciz "m_keepalive"

LDIFF_SYM148=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,35,24,0,7
	.asciz "System_Type"

LDIFF_SYM149=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM149
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM150=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM151=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_29:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM152=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM153=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM154=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM155=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM156=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM156
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM157=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM157
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM158=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM158
LTDIE_25:

	.byte 5
	.asciz "System_Delegate"

	.byte 120,16
LDIFF_SYM159=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM160=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM161=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,24,6
	.asciz "_target"

LDIFF_SYM162=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM163=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM164=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM165=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM166=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,35,64,6
	.asciz "interp_method"

LDIFF_SYM167=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,72,6
	.asciz "interp_invoke_impl"

LDIFF_SYM168=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,80,6
	.asciz "method_info"

LDIFF_SYM169=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,35,88,6
	.asciz "original_method_info"

LDIFF_SYM170=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,35,96,6
	.asciz "data"

LDIFF_SYM171=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2,35,104,6
	.asciz "method_is_virtual"

LDIFF_SYM172=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,112,6
	.asciz "bound"

LDIFF_SYM173=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,35,113,0,7
	.asciz "System_Delegate"

LDIFF_SYM174=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM174
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM175=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM175
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM176=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM176
LTDIE_34:

	.byte 17
	.asciz "System_Threading_IAsyncLocalValueMap"

	.byte 16,7
	.asciz "System_Threading_IAsyncLocalValueMap"

LDIFF_SYM177=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM177
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM178=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM178
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM179=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM179
LTDIE_33:

	.byte 5
	.asciz "System_Threading_ExecutionContext"

	.byte 40,16
LDIFF_SYM180=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,0,6
	.asciz "m_localValues"

LDIFF_SYM181=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,16,6
	.asciz "m_localChangeNotifications"

LDIFF_SYM182=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,35,24,6
	.asciz "m_isFlowSuppressed"

LDIFF_SYM183=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2,35,32,6
	.asciz "m_isDefault"

LDIFF_SYM184=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 2,35,33,0,7
	.asciz "System_Threading_ExecutionContext"

LDIFF_SYM185=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM185
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM186=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM186
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM187=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM187
LTDIE_35:

	.byte 5
	.asciz "System_Threading_SynchronizationContext"

	.byte 17,16
LDIFF_SYM188=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 2,35,0,6
	.asciz "_requireWaitNotification"

LDIFF_SYM189=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 2,35,16,0,7
	.asciz "System_Threading_SynchronizationContext"

LDIFF_SYM190=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM190
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM191=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM191
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM192=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM192
LTDIE_23:

	.byte 5
	.asciz "_CallbackNode"

	.byte 80,16
LDIFF_SYM193=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 2,35,0,6
	.asciz "Registrations"

LDIFF_SYM194=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 2,35,16,6
	.asciz "Prev"

LDIFF_SYM195=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,24,6
	.asciz "Next"

LDIFF_SYM196=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 2,35,32,6
	.asciz "Id"

LDIFF_SYM197=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,72,6
	.asciz "Callback"

LDIFF_SYM198=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,40,6
	.asciz "CallbackState"

LDIFF_SYM199=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,48,6
	.asciz "ExecutionContext"

LDIFF_SYM200=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,56,6
	.asciz "SynchronizationContext"

LDIFF_SYM201=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 2,35,64,0,7
	.asciz "_CallbackNode"

LDIFF_SYM202=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM202
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM203=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM203
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM204=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM204
LTDIE_22:

	.byte 5
	.asciz "_Registrations"

	.byte 64,16
LDIFF_SYM205=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM205
	.byte 2,35,0,6
	.asciz "Source"

LDIFF_SYM206=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM206
	.byte 2,35,16,6
	.asciz "Callbacks"

LDIFF_SYM207=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM207
	.byte 2,35,24,6
	.asciz "FreeNodeList"

LDIFF_SYM208=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM208
	.byte 2,35,32,6
	.asciz "NextAvailableId"

LDIFF_SYM209=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM209
	.byte 2,35,40,6
	.asciz "ExecutingCallbackId"

LDIFF_SYM210=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,48,6
	.asciz "ThreadIDExecutingCallbacks"

LDIFF_SYM211=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2,35,56,6
	.asciz "_lock"

LDIFF_SYM212=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM212
	.byte 2,35,60,0,7
	.asciz "_Registrations"

LDIFF_SYM213=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM213
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM214=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM214
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM215=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM215
LTDIE_11:

	.byte 5
	.asciz "System_Threading_CancellationTokenSource"

	.byte 48,16
LDIFF_SYM216=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM216
	.byte 2,35,0,6
	.asciz "_state"

LDIFF_SYM217=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 2,35,40,6
	.asciz "_disposed"

LDIFF_SYM218=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,44,6
	.asciz "_timer"

LDIFF_SYM219=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,16,6
	.asciz "_kernelEvent"

LDIFF_SYM220=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,24,6
	.asciz "_registrations"

LDIFF_SYM221=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,35,32,0,7
	.asciz "System_Threading_CancellationTokenSource"

LDIFF_SYM222=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM222
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM223=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM223
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM224=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM224
LTDIE_10:

	.byte 5
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken"

	.byte 32,16
LDIFF_SYM225=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,0,6
	.asciz "_cts"

LDIFF_SYM226=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM226
	.byte 2,35,16,6
	.asciz "<ActiveChangeCallbacks>k__BackingField"

LDIFF_SYM227=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2,35,24,0,7
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken"

LDIFF_SYM228=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM228
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM229=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM229
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM230=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM230
LTDIE_3:

	.byte 5
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager"

	.byte 56,16
LDIFF_SYM231=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,35,0,6
	.asciz "_sources"

LDIFF_SYM232=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,35,16,6
	.asciz "_properties"

LDIFF_SYM233=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM233
	.byte 2,35,24,6
	.asciz "_providerManager"

LDIFF_SYM234=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 2,35,32,6
	.asciz "_changeTokenRegistrations"

LDIFF_SYM235=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 2,35,40,6
	.asciz "_changeToken"

LDIFF_SYM236=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,35,48,0,7
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager"

LDIFF_SYM237=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM237
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM238=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM238
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM239=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:.ctor"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager__ctor"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:.ctor"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager__ctor
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM240=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM241=Lfde7_end - Lfde7_start
	.long LDIFF_SYM241
Lfde7_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager__ctor

LDIFF_SYM242=Lme_7 - Microsoft_Extensions_Configuration_ConfigurationManager__ctor
	.long LDIFF_SYM242
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:Dispose"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_Dispose"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:Dispose"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_Dispose
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM243=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM243
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM244=Lfde8_end - Lfde8_start
	.long LDIFF_SYM244
Lfde8_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_Dispose

LDIFF_SYM245=Lme_8 - Microsoft_Extensions_Configuration_ConfigurationManager_Dispose
	.long LDIFF_SYM245
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:RaiseChanged"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:RaiseChanged"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM246=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM247=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM247
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM248=Lfde9_end - Lfde9_start
	.long LDIFF_SYM248
Lfde9_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged

LDIFF_SYM249=Lme_9 - Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged
	.long LDIFF_SYM249
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_36:

	.byte 17
	.asciz "Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 16,7
	.asciz "Microsoft_Extensions_Configuration_IConfigurationSource"

LDIFF_SYM250=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM250
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM251=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM251
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM252=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM252
LTDIE_37:

	.byte 17
	.asciz "Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 16,7
	.asciz "Microsoft_Extensions_Configuration_IConfigurationProvider"

LDIFF_SYM253=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM253
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM254=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM255=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:AddSource"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:AddSource"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM256=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM257=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM258=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM259=Lfde10_end - Lfde10_start
	.long LDIFF_SYM259
Lfde10_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource

LDIFF_SYM260=Lme_a - Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource
	.long LDIFF_SYM260
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,149,10,150,9,68,151,8,152,7,68,153,6,154,5
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:ReloadSources"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ReloadSources"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:ReloadSources"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ReloadSources
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM261=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM262=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM263=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 3,141,216,0,11
	.asciz "V_2"

LDIFF_SYM264=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM265=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 3,141,192,0,11
	.asciz "V_4"

LDIFF_SYM266=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM266
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM267=Lfde11_end - Lfde11_start
	.long LDIFF_SYM267
Lfde11_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ReloadSources

LDIFF_SYM268=Lme_b - Microsoft_Extensions_Configuration_ConfigurationManager_ReloadSources
	.long LDIFF_SYM268
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,149,24,150,23,68,151,22,152,21,68,153,20,154,19
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:DisposeRegistrations"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_DisposeRegistrations"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager:DisposeRegistrations"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_DisposeRegistrations
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM269=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM270=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 2,141,24,11
	.asciz "V_1"

LDIFF_SYM271=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM271
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM272=Lfde12_end - Lfde12_start
	.long LDIFF_SYM272
Lfde12_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_DisposeRegistrations

LDIFF_SYM273=Lme_c - Microsoft_Extensions_Configuration_ConfigurationManager_DisposeRegistrations
	.long LDIFF_SYM273
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:.ctor"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:.ctor"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM274=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM275=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM276=Lfde13_end - Lfde13_start
	.long LDIFF_SYM276
Lfde13_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager

LDIFF_SYM277=Lme_d - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
	.long LDIFF_SYM277
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:get_Item"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Item_int"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:get_Item"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Item_int
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM278=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM278
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM279=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM280=Lfde14_end - Lfde14_start
	.long LDIFF_SYM280
Lfde14_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Item_int

LDIFF_SYM281=Lme_e - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Item_int
	.long LDIFF_SYM281
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:set_Item"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_set_Item_int_Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:set_Item"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_set_Item_int_Microsoft_Extensions_Configuration_IConfigurationSource
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM282=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM282
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM283=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM284=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM285=Lfde15_end - Lfde15_start
	.long LDIFF_SYM285
Lfde15_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_set_Item_int_Microsoft_Extensions_Configuration_IConfigurationSource

LDIFF_SYM286=Lme_f - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_set_Item_int_Microsoft_Extensions_Configuration_IConfigurationSource
	.long LDIFF_SYM286
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:get_Count"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Count"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:get_Count"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Count
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM287=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM287
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM288=Lfde16_end - Lfde16_start
	.long LDIFF_SYM288
Lfde16_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Count

LDIFF_SYM289=Lme_10 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_Count
	.long LDIFF_SYM289
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:get_IsReadOnly"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_IsReadOnly"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:get_IsReadOnly"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_IsReadOnly
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM290=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM291=Lfde17_end - Lfde17_start
	.long LDIFF_SYM291
Lfde17_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_IsReadOnly

LDIFF_SYM292=Lme_11 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_get_IsReadOnly
	.long LDIFF_SYM292
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Add"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Add"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM293=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM293
	.byte 2,141,48,3
	.asciz "param0"

LDIFF_SYM294=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM295=Lfde18_end - Lfde18_start
	.long LDIFF_SYM295
Lfde18_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource

LDIFF_SYM296=Lme_12 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource
	.long LDIFF_SYM296
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Clear"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Clear"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Clear"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Clear
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM297=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM298=Lfde19_end - Lfde19_start
	.long LDIFF_SYM298
Lfde19_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Clear

LDIFF_SYM299=Lme_13 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Clear
	.long LDIFF_SYM299
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Contains"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Contains_Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Contains"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Contains_Microsoft_Extensions_Configuration_IConfigurationSource
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM300=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM301=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM302=Lfde20_end - Lfde20_start
	.long LDIFF_SYM302
Lfde20_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Contains_Microsoft_Extensions_Configuration_IConfigurationSource

LDIFF_SYM303=Lme_14 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Contains_Microsoft_Extensions_Configuration_IConfigurationSource
	.long LDIFF_SYM303
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:CopyTo"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_CopyTo_Microsoft_Extensions_Configuration_IConfigurationSource___int"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:CopyTo"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_CopyTo_Microsoft_Extensions_Configuration_IConfigurationSource___int
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM304=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM304
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM305=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM305
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM306=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM306
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM307=Lfde21_end - Lfde21_start
	.long LDIFF_SYM307
Lfde21_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_CopyTo_Microsoft_Extensions_Configuration_IConfigurationSource___int

LDIFF_SYM308=Lme_15 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_CopyTo_Microsoft_Extensions_Configuration_IConfigurationSource___int
	.long LDIFF_SYM308
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:GetEnumerator"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_GetEnumerator"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:GetEnumerator"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_GetEnumerator
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM309=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM310=Lfde22_end - Lfde22_start
	.long LDIFF_SYM310
Lfde22_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_GetEnumerator

LDIFF_SYM311=Lme_16 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_GetEnumerator
	.long LDIFF_SYM311
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:IndexOf"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_IndexOf_Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:IndexOf"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_IndexOf_Microsoft_Extensions_Configuration_IConfigurationSource
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM312=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM312
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM313=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM314=Lfde23_end - Lfde23_start
	.long LDIFF_SYM314
Lfde23_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_IndexOf_Microsoft_Extensions_Configuration_IConfigurationSource

LDIFF_SYM315=Lme_17 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_IndexOf_Microsoft_Extensions_Configuration_IConfigurationSource
	.long LDIFF_SYM315
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Insert"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Insert_int_Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Insert"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Insert_int_Microsoft_Extensions_Configuration_IConfigurationSource
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM316=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM316
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM317=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM317
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM318=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM318
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM319=Lfde24_end - Lfde24_start
	.long LDIFF_SYM319
Lfde24_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Insert_int_Microsoft_Extensions_Configuration_IConfigurationSource

LDIFF_SYM320=Lme_18 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Insert_int_Microsoft_Extensions_Configuration_IConfigurationSource
	.long LDIFF_SYM320
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Remove"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Remove_Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Remove"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Remove_Microsoft_Extensions_Configuration_IConfigurationSource
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM321=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM322=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM323=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM324=Lfde25_end - Lfde25_start
	.long LDIFF_SYM324
Lfde25_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Remove_Microsoft_Extensions_Configuration_IConfigurationSource

LDIFF_SYM325=Lme_19 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Remove_Microsoft_Extensions_Configuration_IConfigurationSource
	.long LDIFF_SYM325
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:RemoveAt"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_RemoveAt_int"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:RemoveAt"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_RemoveAt_int
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM326=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM326
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM327=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM328=Lfde26_end - Lfde26_start
	.long LDIFF_SYM328
Lfde26_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_RemoveAt_int

LDIFF_SYM329=Lme_1a - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_RemoveAt_int
	.long LDIFF_SYM329
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:System.Collections.IEnumerable.GetEnumerator"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:System.Collections.IEnumerable.GetEnumerator"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM330=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM330
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM331=Lfde27_end - Lfde27_start
	.long LDIFF_SYM331
Lfde27_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM332=Lme_1b - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM332
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:System.Collections.Generic.IEnumerable<Microsoft.Extensions.Configuration.IConfigurationSource>.GetEnumerator"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_Generic_IEnumerable_Microsoft_Extensions_Configuration_IConfigurationSource_GetEnumerator"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:System.Collections.Generic.IEnumerable<Microsoft.Extensions.Configuration.IConfigurationSource>.GetEnumerator"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_Generic_IEnumerable_Microsoft_Extensions_Configuration_IConfigurationSource_GetEnumerator
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM333=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM333
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM334=Lfde28_end - Lfde28_start
	.long LDIFF_SYM334
Lfde28_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_Generic_IEnumerable_Microsoft_Extensions_Configuration_IConfigurationSource_GetEnumerator

LDIFF_SYM335=Lme_1c - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_System_Collections_Generic_IEnumerable_Microsoft_Extensions_Configuration_IConfigurationSource_GetEnumerator
	.long LDIFF_SYM335
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:.ctor"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:.ctor"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM336=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM336
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM337=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM337
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM338=Lfde29_end - Lfde29_start
	.long LDIFF_SYM338
Lfde29_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager

LDIFF_SYM339=Lme_1d - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
	.long LDIFF_SYM339
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:get_Item"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Item_string"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:get_Item"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Item_string
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM340=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM340
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM341=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM341
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM342=Lfde30_end - Lfde30_start
	.long LDIFF_SYM342
Lfde30_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Item_string

LDIFF_SYM343=Lme_1e - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Item_string
	.long LDIFF_SYM343
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:set_Item"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_set_Item_string_object"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:set_Item"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_set_Item_string_object
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM344=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM344
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM345=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM346=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM347=Lfde31_end - Lfde31_start
	.long LDIFF_SYM347
Lfde31_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_set_Item_string_object

LDIFF_SYM348=Lme_1f - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_set_Item_string_object
	.long LDIFF_SYM348
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:get_Keys"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Keys"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:get_Keys"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Keys
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM349=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM349
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM350=Lfde32_end - Lfde32_start
	.long LDIFF_SYM350
Lfde32_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Keys

LDIFF_SYM351=Lme_20 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Keys
	.long LDIFF_SYM351
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:get_Values"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Values"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:get_Values"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Values
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM352=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM353=Lfde33_end - Lfde33_start
	.long LDIFF_SYM353
Lfde33_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Values

LDIFF_SYM354=Lme_21 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Values
	.long LDIFF_SYM354
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:get_Count"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Count"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:get_Count"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Count
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM355=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM356=Lfde34_end - Lfde34_start
	.long LDIFF_SYM356
Lfde34_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Count

LDIFF_SYM357=Lme_22 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_Count
	.long LDIFF_SYM357
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:get_IsReadOnly"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_IsReadOnly"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:get_IsReadOnly"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_IsReadOnly
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM358=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM358
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM359=Lfde35_end - Lfde35_start
	.long LDIFF_SYM359
Lfde35_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_IsReadOnly

LDIFF_SYM360=Lme_23 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_get_IsReadOnly
	.long LDIFF_SYM360
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Add"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_string_object"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Add"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_string_object
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM361=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM361
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM362=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM363=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM364=Lfde36_end - Lfde36_start
	.long LDIFF_SYM364
Lfde36_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_string_object

LDIFF_SYM365=Lme_24 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_string_object
	.long LDIFF_SYM365
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Add"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_System_Collections_Generic_KeyValuePair_2_string_object"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Add"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_System_Collections_Generic_KeyValuePair_2_string_object
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM366=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM366
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM367=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM367
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM368=Lfde37_end - Lfde37_start
	.long LDIFF_SYM368
Lfde37_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_System_Collections_Generic_KeyValuePair_2_string_object

LDIFF_SYM369=Lme_25 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Add_System_Collections_Generic_KeyValuePair_2_string_object
	.long LDIFF_SYM369
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Clear"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Clear"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Clear"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Clear
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM370=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM371=Lfde38_end - Lfde38_start
	.long LDIFF_SYM371
Lfde38_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Clear

LDIFF_SYM372=Lme_26 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Clear
	.long LDIFF_SYM372
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Contains"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Contains_System_Collections_Generic_KeyValuePair_2_string_object"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Contains"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Contains_System_Collections_Generic_KeyValuePair_2_string_object
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM373=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM374=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM375=Lfde39_end - Lfde39_start
	.long LDIFF_SYM375
Lfde39_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Contains_System_Collections_Generic_KeyValuePair_2_string_object

LDIFF_SYM376=Lme_27 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Contains_System_Collections_Generic_KeyValuePair_2_string_object
	.long LDIFF_SYM376
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:ContainsKey"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_ContainsKey_string"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:ContainsKey"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_ContainsKey_string
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM377=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM378=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM379=Lfde40_end - Lfde40_start
	.long LDIFF_SYM379
Lfde40_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_ContainsKey_string

LDIFF_SYM380=Lme_28 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_ContainsKey_string
	.long LDIFF_SYM380
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:CopyTo"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_CopyTo_System_Collections_Generic_KeyValuePair_2_string_object___int"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:CopyTo"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_CopyTo_System_Collections_Generic_KeyValuePair_2_string_object___int
	.quad Lme_29

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM381=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM382=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM383=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM383
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM384=Lfde41_end - Lfde41_start
	.long LDIFF_SYM384
Lfde41_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_CopyTo_System_Collections_Generic_KeyValuePair_2_string_object___int

LDIFF_SYM385=Lme_29 - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_CopyTo_System_Collections_Generic_KeyValuePair_2_string_object___int
	.long LDIFF_SYM385
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:GetEnumerator"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_GetEnumerator"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:GetEnumerator"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_GetEnumerator
	.quad Lme_2a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM386=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM386
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM387=Lfde42_end - Lfde42_start
	.long LDIFF_SYM387
Lfde42_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_GetEnumerator

LDIFF_SYM388=Lme_2a - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_GetEnumerator
	.long LDIFF_SYM388
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Remove"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_string"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Remove"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_string
	.quad Lme_2b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM389=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM389
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM390=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM390
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM391=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM392=Lfde43_end - Lfde43_start
	.long LDIFF_SYM392
Lfde43_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_string

LDIFF_SYM393=Lme_2b - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_string
	.long LDIFF_SYM393
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Remove"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_System_Collections_Generic_KeyValuePair_2_string_object"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:Remove"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_System_Collections_Generic_KeyValuePair_2_string_object
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM394=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM395=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM396=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM397=Lfde44_end - Lfde44_start
	.long LDIFF_SYM397
Lfde44_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_System_Collections_Generic_KeyValuePair_2_string_object

LDIFF_SYM398=Lme_2c - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_Remove_System_Collections_Generic_KeyValuePair_2_string_object
	.long LDIFF_SYM398
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:TryGetValue"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_TryGetValue_string_object_"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:TryGetValue"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_TryGetValue_string_object_
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM399=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM399
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM400=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM400
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM401=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM401
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM402=Lfde45_end - Lfde45_start
	.long LDIFF_SYM402
Lfde45_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_TryGetValue_string_object_

LDIFF_SYM403=Lme_2d - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_TryGetValue_string_object_
	.long LDIFF_SYM403
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:System.Collections.IEnumerable.GetEnumerator"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:System.Collections.IEnumerable.GetEnumerator"
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM404=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM405=Lfde46_end - Lfde46_start
	.long LDIFF_SYM405
Lfde46_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM406=Lme_2e - Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM406
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_38:

	.byte 5
	.asciz "Microsoft_Extensions_Configuration_ConfigurationProvider"

	.byte 32,16
LDIFF_SYM407=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 2,35,0,6
	.asciz "_reloadToken"

LDIFF_SYM408=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 2,35,16,6
	.asciz "<Data>k__BackingField"

LDIFF_SYM409=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 2,35,24,0,7
	.asciz "Microsoft_Extensions_Configuration_ConfigurationProvider"

LDIFF_SYM410=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM410
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM411=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM411
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM412=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM412
	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:.ctor"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationProvider__ctor"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:.ctor"
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider__ctor
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM413=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM413
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM414=Lfde47_end - Lfde47_start
	.long LDIFF_SYM414
Lfde47_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider__ctor

LDIFF_SYM415=Lme_2f - Microsoft_Extensions_Configuration_ConfigurationProvider__ctor
	.long LDIFF_SYM415
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:get_Data"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationProvider_get_Data"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:get_Data"
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider_get_Data
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM416=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM416
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM417=Lfde48_end - Lfde48_start
	.long LDIFF_SYM417
Lfde48_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider_get_Data

LDIFF_SYM418=Lme_30 - Microsoft_Extensions_Configuration_ConfigurationProvider_get_Data
	.long LDIFF_SYM418
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:set_Data"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationProvider_set_Data_System_Collections_Generic_IDictionary_2_string_string"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:set_Data"
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider_set_Data_System_Collections_Generic_IDictionary_2_string_string
	.quad Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM419=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM419
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM420=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM421=Lfde49_end - Lfde49_start
	.long LDIFF_SYM421
Lfde49_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider_set_Data_System_Collections_Generic_IDictionary_2_string_string

LDIFF_SYM422=Lme_31 - Microsoft_Extensions_Configuration_ConfigurationProvider_set_Data_System_Collections_Generic_IDictionary_2_string_string
	.long LDIFF_SYM422
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde49_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:Load"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationProvider_Load"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:Load"
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider_Load
	.quad Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM423=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM423
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM424=Lfde50_end - Lfde50_start
	.long LDIFF_SYM424
Lfde50_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider_Load

LDIFF_SYM425=Lme_32 - Microsoft_Extensions_Configuration_ConfigurationProvider_Load
	.long LDIFF_SYM425
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde50_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:GetReloadToken"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:GetReloadToken"
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken
	.quad Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM426=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM427=Lfde51_end - Lfde51_start
	.long LDIFF_SYM427
Lfde51_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken

LDIFF_SYM428=Lme_33 - Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken
	.long LDIFF_SYM428
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde51_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:ToString"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationProvider_ToString"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationProvider:ToString"
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider_ToString
	.quad Lme_34

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM429=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM430=Lfde52_end - Lfde52_start
	.long LDIFF_SYM430
Lfde52_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationProvider_ToString

LDIFF_SYM431=Lme_34 - Microsoft_Extensions_Configuration_ConfigurationProvider_ToString
	.long LDIFF_SYM431
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde52_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:get_ActiveChangeCallbacks"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_ActiveChangeCallbacks"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:get_ActiveChangeCallbacks"
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_ActiveChangeCallbacks
	.quad Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM432=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM432
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM433=Lfde53_end - Lfde53_start
	.long LDIFF_SYM433
Lfde53_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_ActiveChangeCallbacks

LDIFF_SYM434=Lme_35 - Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_ActiveChangeCallbacks
	.long LDIFF_SYM434
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde53_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:set_ActiveChangeCallbacks"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken_set_ActiveChangeCallbacks_bool"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:set_ActiveChangeCallbacks"
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken_set_ActiveChangeCallbacks_bool
	.quad Lme_36

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM435=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM435
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM436=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM436
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM437=Lfde54_end - Lfde54_start
	.long LDIFF_SYM437
Lfde54_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken_set_ActiveChangeCallbacks_bool

LDIFF_SYM438=Lme_36 - Microsoft_Extensions_Configuration_ConfigurationReloadToken_set_ActiveChangeCallbacks_bool
	.long LDIFF_SYM438
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde54_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:get_HasChanged"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:get_HasChanged"
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged
	.quad Lme_37

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM439=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM439
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM440=Lfde55_end - Lfde55_start
	.long LDIFF_SYM440
Lfde55_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged

LDIFF_SYM441=Lme_37 - Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged
	.long LDIFF_SYM441
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde55_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:RegisterChangeCallback"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:RegisterChangeCallback"
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object
	.quad Lme_38

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM442=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM442
	.byte 2,141,40,3
	.asciz "param0"

LDIFF_SYM443=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM443
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM444=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM445=Lfde56_end - Lfde56_start
	.long LDIFF_SYM445
Lfde56_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object

LDIFF_SYM446=Lme_38 - Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object
	.long LDIFF_SYM446
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,68,153,11,154,10
	.align 3
Lfde56_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:OnReload"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:OnReload"
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload
	.quad Lme_39

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM447=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM447
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM448=Lfde57_end - Lfde57_start
	.long LDIFF_SYM448
Lfde57_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload

LDIFF_SYM449=Lme_39 - Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload
	.long LDIFF_SYM449
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde57_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:.ctor"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken:.ctor"
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor
	.quad Lme_3a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM450=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM450
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM451=Lfde58_end - Lfde58_start
	.long LDIFF_SYM451
Lfde58_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor

LDIFF_SYM452=Lme_3a - Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor
	.long LDIFF_SYM452
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde58_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken/<>c:.cctor"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken/<>c:.cctor"
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor
	.quad Lme_3b

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM453=Lfde59_end - Lfde59_start
	.long LDIFF_SYM453
Lfde59_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor

LDIFF_SYM454=Lme_3b - Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor
	.long LDIFF_SYM454
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde59_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_39:

	.byte 5
	.asciz "_<>c"

	.byte 16,16
LDIFF_SYM455=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM455
	.byte 2,35,0,0,7
	.asciz "_<>c"

LDIFF_SYM456=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM456
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM457=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM457
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM458=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM458
	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken/<>c:.ctor"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken/<>c:.ctor"
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor
	.quad Lme_3c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM459=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM460=Lfde60_end - Lfde60_start
	.long LDIFF_SYM460
Lfde60_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor

LDIFF_SYM461=Lme_3c - Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor
	.long LDIFF_SYM461
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde60_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken/<>c:<RegisterChangeCallback>b__7_0"
	.asciz "Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__RegisterChangeCallbackb__7_0_Microsoft_Extensions_Configuration_ConfigurationReloadToken"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ConfigurationReloadToken/<>c:<RegisterChangeCallback>b__7_0"
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__RegisterChangeCallbackb__7_0_Microsoft_Extensions_Configuration_ConfigurationReloadToken
	.quad Lme_3d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM462=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 0,3
	.asciz "s"

LDIFF_SYM463=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM463
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM464=Lfde61_end - Lfde61_start
	.long LDIFF_SYM464
Lfde61_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__RegisterChangeCallbackb__7_0_Microsoft_Extensions_Configuration_ConfigurationReloadToken

LDIFF_SYM465=Lme_3d - Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__RegisterChangeCallbackb__7_0_Microsoft_Extensions_Configuration_ConfigurationReloadToken
	.long LDIFF_SYM465
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde61_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders:Create"
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders:Create"
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.quad Lme_3e

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM466=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM467=Lfde62_end - Lfde62_start
	.long LDIFF_SYM467
Lfde62_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider

LDIFF_SYM468=Lme_3e - Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.long LDIFF_SYM468
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde62_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders:.ctor"
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviders__ctor"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders:.ctor"
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders__ctor
	.quad Lme_42

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM469=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM469
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM470=Lfde63_end - Lfde63_start
	.long LDIFF_SYM470
Lfde63_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders__ctor

LDIFF_SYM471=Lme_42 - Microsoft_Extensions_Configuration_ReferenceCountedProviders__ctor
	.long LDIFF_SYM471
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde63_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_40:

	.byte 5
	.asciz "_ActiveReferenceCountedProviders"

	.byte 32,16
LDIFF_SYM472=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM472
	.byte 2,35,0,6
	.asciz "_refCount"

LDIFF_SYM473=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM473
	.byte 2,35,24,6
	.asciz "_providers"

LDIFF_SYM474=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM474
	.byte 2,35,16,0,7
	.asciz "_ActiveReferenceCountedProviders"

LDIFF_SYM475=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM475
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM476=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM476
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM477=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM477
	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:.ctor"
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:.ctor"
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.quad Lme_43

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM478=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM478
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM479=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM480=Lfde64_end - Lfde64_start
	.long LDIFF_SYM480
Lfde64_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider

LDIFF_SYM481=Lme_43 - Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.long LDIFF_SYM481
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde64_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:get_Providers"
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:get_Providers"
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers
	.quad Lme_44

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM482=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM482
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM483=Lfde65_end - Lfde65_start
	.long LDIFF_SYM483
Lfde65_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers

LDIFF_SYM484=Lme_44 - Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers
	.long LDIFF_SYM484
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde65_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:set_Providers"
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:set_Providers"
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.quad Lme_45

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM485=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM485
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM486=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM486
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM487=Lfde66_end - Lfde66_start
	.long LDIFF_SYM487
Lfde66_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider

LDIFF_SYM488=Lme_45 - Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.long LDIFF_SYM488
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde66_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:Dispose"
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_Dispose"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:Dispose"
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_Dispose
	.quad Lme_46

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM489=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM489
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM490=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM490
	.byte 2,141,40,11
	.asciz "V_1"

LDIFF_SYM491=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM491
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM492=Lfde67_end - Lfde67_start
	.long LDIFF_SYM492
Lfde67_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_Dispose

LDIFF_SYM493=Lme_46 - Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_Dispose
	.long LDIFF_SYM493
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10
	.align 3
Lfde67_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:ReplaceProviders"
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_ReplaceProviders_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:ReplaceProviders"
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_ReplaceProviders_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.quad Lme_47

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM494=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM494
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM495=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM495
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM496=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM496
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM497=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,141,48,11
	.asciz "V_2"

LDIFF_SYM498=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM498
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM499=Lfde68_end - Lfde68_start
	.long LDIFF_SYM499
Lfde68_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_ReplaceProviders_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider

LDIFF_SYM500=Lme_47 - Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_ReplaceProviders_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.long LDIFF_SYM500
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10
	.align 3
Lfde68_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:AddProvider"
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:AddProvider"
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider
	.quad Lme_48

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM501=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM502=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM502
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM503=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM503
	.byte 3,141,192,0,11
	.asciz "V_1"

LDIFF_SYM504=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM504
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM505=Lfde69_end - Lfde69_start
	.long LDIFF_SYM505
Lfde69_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider

LDIFF_SYM506=Lme_48 - Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider
	.long LDIFF_SYM506
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,149,14,150,13,68,151,12,152,11,68,153,10,154,9
	.align 3
Lfde69_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:Dispose"
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_Dispose"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:Dispose"
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_Dispose
	.quad Lme_49

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM507=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM507
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM508=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM508
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM509=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM509
	.byte 2,141,40,11
	.asciz "V_2"

LDIFF_SYM510=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM510
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM511=Lfde70_end - Lfde70_start
	.long LDIFF_SYM511
Lfde70_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_Dispose

LDIFF_SYM512=Lme_49 - Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_Dispose
	.long LDIFF_SYM512
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9
	.align 3
Lfde70_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:.ctor"
	.asciz "Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:.ctor"
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor
	.quad Lme_4a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM513=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM513
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM514=Lfde71_end - Lfde71_start
	.long LDIFF_SYM514
Lfde71_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor

LDIFF_SYM515=Lme_4a - Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor
	.long LDIFF_SYM515
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde71_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_42:

	.byte 5
	.asciz "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource"

	.byte 24,16
LDIFF_SYM516=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM516
	.byte 2,35,0,6
	.asciz "<InitialData>k__BackingField"

LDIFF_SYM517=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM517
	.byte 2,35,16,0,7
	.asciz "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource"

LDIFF_SYM518=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM518
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM519=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM519
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM520=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM520
LTDIE_41:

	.byte 5
	.asciz "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider"

	.byte 40,16
LDIFF_SYM521=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM521
	.byte 2,35,0,6
	.asciz "_source"

LDIFF_SYM522=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM522
	.byte 2,35,32,0,7
	.asciz "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider"

LDIFF_SYM523=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM523
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM524=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM524
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM525=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM525
	.byte 2
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationProvider:.ctor"
	.asciz "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationProvider:.ctor"
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource
	.quad Lme_4b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM526=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM526
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM527=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM527
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM528=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM528
	.byte 2,141,48,11
	.asciz "V_1"

LDIFF_SYM529=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM529
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM530=Lfde72_end - Lfde72_start
	.long LDIFF_SYM530
Lfde72_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource

LDIFF_SYM531=Lme_4b - Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource
	.long LDIFF_SYM531
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde72_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationProvider:GetEnumerator"
	.asciz "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_GetEnumerator"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationProvider:GetEnumerator"
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_GetEnumerator
	.quad Lme_4c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM532=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM532
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM533=Lfde73_end - Lfde73_start
	.long LDIFF_SYM533
Lfde73_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_GetEnumerator

LDIFF_SYM534=Lme_4c - Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_GetEnumerator
	.long LDIFF_SYM534
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde73_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationProvider:System.Collections.IEnumerable.GetEnumerator"
	.asciz "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationProvider:System.Collections.IEnumerable.GetEnumerator"
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_4d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM535=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM536=Lfde74_end - Lfde74_start
	.long LDIFF_SYM536
Lfde74_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM537=Lme_4d - Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM537
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde74_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationSource:get_InitialData"
	.asciz "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_get_InitialData"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationSource:get_InitialData"
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_get_InitialData
	.quad Lme_4e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM538=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM538
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM539=Lfde75_end - Lfde75_start
	.long LDIFF_SYM539
Lfde75_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_get_InitialData

LDIFF_SYM540=Lme_4e - Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_get_InitialData
	.long LDIFF_SYM540
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde75_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_43:

	.byte 17
	.asciz "Microsoft_Extensions_Configuration_IConfigurationBuilder"

	.byte 16,7
	.asciz "Microsoft_Extensions_Configuration_IConfigurationBuilder"

LDIFF_SYM541=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM541
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM542=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM542
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM543=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM543
	.byte 2
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationSource:Build"
	.asciz "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationSource:Build"
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder
	.quad Lme_4f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM544=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM544
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM545=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM545
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM546=Lfde76_end - Lfde76_start
	.long LDIFF_SYM546
Lfde76_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder

LDIFF_SYM547=Lme_4f - Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder
	.long LDIFF_SYM547
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde76_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationSource:.ctor"
	.asciz "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource__ctor"

	.byte 0,0
	.asciz "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationSource:.ctor"
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource__ctor
	.quad Lme_50

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM548=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM548
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM549=Lfde77_end - Lfde77_start
	.long LDIFF_SYM549
Lfde77_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource__ctor

LDIFF_SYM550=Lme_50 - Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource__ctor
	.long LDIFF_SYM550
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde77_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Extensions.Internal.ChangeCallbackRegistrar:UnsafeRegisterChangeCallback<T_GSHAREDVT>"
	.asciz "Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_GSHAREDVT_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_GSHAREDVT_T_GSHAREDVT"

	.byte 0,0
	.asciz "Microsoft.Extensions.Internal.ChangeCallbackRegistrar:UnsafeRegisterChangeCallback<T_GSHAREDVT>"
	.quad Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_GSHAREDVT_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_GSHAREDVT_T_GSHAREDVT
	.quad Lme_52

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM551=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM551
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM552=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM552
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM553=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM553
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM554=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM554
	.byte 2,141,56,3
	.asciz "param4"

LDIFF_SYM555=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM555
	.byte 1,80,11
	.asciz "V_0"

LDIFF_SYM556=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM556
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM557=Lfde78_end - Lfde78_start
	.long LDIFF_SYM557
Lfde78_start:

	.long 0
	.align 3
	.quad Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_GSHAREDVT_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_GSHAREDVT_T_GSHAREDVT

LDIFF_SYM558=Lme_52 - Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_GSHAREDVT_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_GSHAREDVT_T_GSHAREDVT
	.long LDIFF_SYM558
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,154,20
	.align 3
Lfde78_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_44:

	.byte 5
	.asciz "System_Array"

	.byte 16,16
LDIFF_SYM559=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM559
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM560=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM560
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM561=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM561
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM562=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM562
LTDIE_45:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 128,1,16
LDIFF_SYM563=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM563
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM564=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM564
	.byte 2,35,120,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM565=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM565
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM566=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM566
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM567=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM567
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<T_REF>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_T_REF_invoke_bool_T_T_REF"

	.byte 0,0
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<T_REF>:invoke_bool_T"
	.quad wrapper_delegate_invoke_System_Predicate_1_T_REF_invoke_bool_T_T_REF
	.quad Lme_53

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM568=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM568
	.byte 2,141,56,3
	.asciz "param0"

LDIFF_SYM569=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM569
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM570=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM570
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM571=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM571
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM572=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM572
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM573=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM573
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM574=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM574
	.byte 1,105,11
	.asciz "V_5"

LDIFF_SYM575=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM575
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM576=Lfde79_end - Lfde79_start
	.long LDIFF_SYM576
Lfde79_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_T_REF_invoke_bool_T_T_REF

LDIFF_SYM577=Lme_53 - wrapper_delegate_invoke_System_Predicate_1_T_REF_invoke_bool_T_T_REF
	.long LDIFF_SYM577
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9,68,152,8,153,7,68,154,6
	.align 3
Lfde79_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<T_REF>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_T_REF_invoke_void_T_T_REF"

	.byte 0,0
	.asciz "(wrapper_delegate-invoke)_System.Action`1<T_REF>:invoke_void_T"
	.quad wrapper_delegate_invoke_System_Action_1_T_REF_invoke_void_T_T_REF
	.quad Lme_54

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM578=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM578
	.byte 2,141,56,3
	.asciz "param0"

LDIFF_SYM579=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM579
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM580=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM580
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM581=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM581
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM582=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM582
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM583=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM583
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM584=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM584
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM585=Lfde80_end - Lfde80_start
	.long LDIFF_SYM585
Lfde80_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_T_REF_invoke_void_T_T_REF

LDIFF_SYM586=Lme_54 - wrapper_delegate_invoke_System_Action_1_T_REF_invoke_void_T_T_REF
	.long LDIFF_SYM586
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9,68,152,8,153,7,68,154,6
	.align 3
Lfde80_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<T_REF>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_T_REF_invoke_int_T_T_T_REF_T_REF"

	.byte 0,0
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<T_REF>:invoke_int_T_T"
	.quad wrapper_delegate_invoke_System_Comparison_1_T_REF_invoke_int_T_T_T_REF_T_REF
	.quad Lme_55

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM587=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM587
	.byte 3,141,192,0,3
	.asciz "param0"

LDIFF_SYM588=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM588
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM589=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM589
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM590=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM590
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM591=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM591
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM592=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM592
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM593=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM593
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM594=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM594
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM595=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM595
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM596=Lfde81_end - Lfde81_start
	.long LDIFF_SYM596
Lfde81_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_T_REF_invoke_int_T_T_T_REF_T_REF

LDIFF_SYM597=Lme_55 - wrapper_delegate_invoke_System_Comparison_1_T_REF_invoke_int_T_T_T_REF_T_REF
	.long LDIFF_SYM597
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,149,10,150,9,68,151,8,152,7,68,153,6,154,5
	.align 3
Lfde81_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`1<TResult_REF>:invoke_TResult"
	.asciz "wrapper_delegate_invoke_System_Func_1_TResult_REF_invoke_TResult"

	.byte 0,0
	.asciz "(wrapper_delegate-invoke)_System.Func`1<TResult_REF>:invoke_TResult"
	.quad wrapper_delegate_invoke_System_Func_1_TResult_REF_invoke_TResult
	.quad Lme_56

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM598=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM599=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM599
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM600=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM600
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM601=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM601
	.byte 1,106,11
	.asciz "V_3"

LDIFF_SYM602=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM602
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM603=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM603
	.byte 1,106,11
	.asciz "V_5"

LDIFF_SYM604=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM604
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM605=Lfde82_end - Lfde82_start
	.long LDIFF_SYM605
Lfde82_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_1_TResult_REF_invoke_TResult

LDIFF_SYM606=Lme_56 - wrapper_delegate_invoke_System_Func_1_TResult_REF_invoke_TResult
	.long LDIFF_SYM606
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152,7,68,153,6,154,5
	.align 3
Lfde82_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Collections.Generic.KeyValuePair`2<string,_string>:StructureToPtr"
	.asciz "wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool"

	.byte 0,0
	.asciz "(wrapper_other)_System.Collections.Generic.KeyValuePair`2<string,_string>:StructureToPtr"
	.quad wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool
	.quad Lme_57

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM607=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM607
	.byte 1,104,3
	.asciz "param1"

LDIFF_SYM608=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM608
	.byte 1,105,3
	.asciz "param2"

LDIFF_SYM609=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM609
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM610=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM610
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM611=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM611
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM612=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM612
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM613=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM613
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM614=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM614
	.byte 2,141,56,11
	.asciz "V_5"

LDIFF_SYM615=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM615
	.byte 1,105,11
	.asciz "V_6"

LDIFF_SYM616=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM616
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM617=Lfde83_end - Lfde83_start
	.long LDIFF_SYM617
Lfde83_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool

LDIFF_SYM618=Lme_57 - wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool
	.long LDIFF_SYM618
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2
	.align 3
Lfde83_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_other)_System.Collections.Generic.KeyValuePair`2<string,_string>:PtrToStructure"
	.asciz "wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object"

	.byte 0,0
	.asciz "(wrapper_other)_System.Collections.Generic.KeyValuePair`2<string,_string>:PtrToStructure"
	.quad wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object
	.quad Lme_58

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM619=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM619
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM620=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM620
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM621=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM621
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM622=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM622
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM623=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM623
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM624=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM624
	.byte 0,11
	.asciz "V_4"

LDIFF_SYM625=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM625
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM626=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM626
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM627=Lfde84_end - Lfde84_start
	.long LDIFF_SYM627
Lfde84_start:

	.long 0
	.align 3
	.quad wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object

LDIFF_SYM628=Lme_58 - wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object
	.long LDIFF_SYM628
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde84_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
