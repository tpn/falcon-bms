
Here's the `!analyze -v` output for the .dmp:
```

************* Preparing the environment for Debugger Extensions Gallery repositories **************
   ExtensionRepository : Implicit
   UseExperimentalFeatureForNugetShare : true
   AllowNugetExeUpdate : true
   AllowNugetMSCredentialProviderInstall : true
   AllowParallelInitializationOfLocalRepositories : true

   -- Configuring repositories
      ----> Repository : LocalInstalled, Enabled: true
      ----> Repository : UserExtensions, Enabled: true

>>>>>>>>>>>>> Preparing the environment for Debugger Extensions Gallery repositories completed, duration 0.000 seconds

************* Waiting for Debugger Extensions Gallery to Initialize **************

>>>>>>>>>>>>> Waiting for Debugger Extensions Gallery to Initialize completed, duration 0.015 seconds
   ----> Repository : UserExtensions, Enabled: true, Packages count: 0
   ----> Repository : LocalInstalled, Enabled: true, Packages count: 36

Microsoft (R) Windows Debugger Version 10.0.25921.1001 AMD64
Copyright (c) Microsoft Corporation. All rights reserved.


Loading Dump File [C:\Falcon BMS 4.37\User\Logs\2023-11-21_200225_crash.dmp]
User Mini Dump File: Only registers, stack and portions of memory are available


************* Path validation summary **************
Response                         Time (ms)     Location
Deferred                                       https://msdl.microsoft.com/download/symbols
OK                                             c:\Falcon BMS 4.37\bin\x64
Symbol search path is: https://msdl.microsoft.com/download/symbols;c:\Falcon BMS 4.37\bin\x64
Executable search path is: 
Windows 10 Version 22631 MP (32 procs) Free x64
Product: WinNt, suite: SingleUserTS
Edition build lab: 10.0.22621.2506 (WinBuild.160101.0800)
Debug session time: Tue Nov 21 20:02:26.000 2023 (UTC - 8:00)
System Uptime: not available
Process Uptime: 0 days 0:00:01.000
....................
Loading unloaded module list
..
This dump file has an exception of interest stored in it.
The stored exception information can be accessed via .ecxr.
(22e4.4cc): Access violation - code c0000005 (first/second chance not available)
For analysis of this file, run !analyze -v
ntdll!NtWaitForSingleObject+0x14:
00007fff`6d1ef3f4 c3              ret
0:000> lm
start             end                 module name
00000000`04470000 00000000`0f4bc000   Falcon_BMS C (private pdb symbols)  c:\falcon bms 4.37\bin\x64\Falcon BMS.pdb
00007fff`01910000 00007fff`019be000   NahimicOSD   (deferred)             
00007fff`02a40000 00007fff`02bcf000   dbghelp    (deferred)             
00007fff`16c40000 00007fff`16ce2000   dsound   # (pdb symbols)          C:\ProgramData\Dbg\sym\dsound.pdb\B561C4C55E09677B4F4D8E9F6FEA833D1\dsound.pdb
00007fff`464d0000 00007fff`4661a000   textinputframework   (deferred)             
00007fff`4a0b0000 00007fff`4a2ba000   inputhost   (deferred)             
00007fff`66090000 00007fff`661c3000   CoreMessaging   (deferred)             
00007fff`6a540000 00007fff`6a566000   win32u     (deferred)             
00007fff`6a7b0000 00007fff`6ab55000   KERNELBASE   (pdb symbols)          C:\ProgramData\Dbg\sym\kernelbase.pdb\13D102FFA5E6B2E95E93382EAF5B53281\kernelbase.pdb
00007fff`6aea0000 00007fff`6af46000   sechost    (deferred)             
00007fff`6af50000 00007fff`6b09f000   msctf    # (pdb symbols)          C:\ProgramData\Dbg\sym\msctf.pdb\E32B387E4218408B7703C6C223C237591\msctf.pdb
00007fff`6b1e0000 00007fff`6b380000   ole32      (deferred)             
00007fff`6b8c0000 00007fff`6bc49000   combase  # (private pdb symbols)  C:\ProgramData\Dbg\sym\combase.pdb\B117F6CFFD66CB94B623AAA807D3190C1\combase.pdb
00007fff`6c0d0000 00007fff`6c194000   kernel32   (deferred)             
00007fff`6c280000 00007fff`6c357000   oleaut32   (deferred)             
00007fff`6c490000 00007fff`6c50f000   coml2      (deferred)             
00007fff`6ce70000 00007fff`6d01e000   user32     (deferred)             
00007fff`6d020000 00007fff`6d0c7000   msvcrt     (deferred)             
00007fff`6d0d0000 00007fff`6d101000   imm32    # (pdb symbols)          C:\ProgramData\Dbg\sym\imm32.pdb\ECD342184F2FC5A1C3757566533932141\imm32.pdb
00007fff`6d150000 00007fff`6d367000   ntdll    # (pdb symbols)          C:\ProgramData\Dbg\sym\ntdll.pdb\58A282C24AEE7E03A8CF8CB0A782CE0C1\ntdll.pdb

Unloaded modules:
00007fff`2d6d0000 00007fff`2d6fb000   SpTip.dll
00007fff`1f1d0000 00007fff`1f1dd000   SpeechUXPS.DLL
0:000> !analyze -v
*******************************************************************************
*                                                                             *
*                        Exception Analysis                                   *
*                                                                             *
*******************************************************************************


KEY_VALUES_STRING: 1

    Key  : AV.Dereference
    Value: NullPtr

    Key  : AV.Fault
    Value: Read

    Key  : Analysis.CPU.mSec
    Value: 484

    Key  : Analysis.Elapsed.mSec
    Value: 523

    Key  : Analysis.IO.Other.Mb
    Value: 20

    Key  : Analysis.IO.Read.Mb
    Value: 0

    Key  : Analysis.IO.Write.Mb
    Value: 75

    Key  : Analysis.Init.CPU.mSec
    Value: 359

    Key  : Analysis.Init.Elapsed.mSec
    Value: 10314

    Key  : Analysis.Memory.CommitPeak.Mb
    Value: 214

    Key  : Failure.Bucket
    Value: NULL_POINTER_READ_c0000005_msctf.dll!CThreadInputMgr::_SetFocus

    Key  : Failure.Hash
    Value: {823abd64-b0f4-24a9-8251-720f78701681}

    Key  : Timeline.Process.Start.DeltaSec
    Value: 1

    Key  : WER.Process.Version
    Value: 4.37.3.1329


FILE_IN_CAB:  2023-11-21_200225_crash.dmp

NTGLOBALFLAG:  0

PROCESS_BAM_CURRENT_THROTTLED: 0

PROCESS_BAM_PREVIOUS_THROTTLED: 0

APPLICATION_VERIFIER_FLAGS:  0

CONTEXT:  (.ecxr)
rax=0000000000000000 rbx=0000000003045b40 rcx=65837b828b730000
rdx=0000000000000002 rsi=00000000022e9df0 rdi=0000000000000000
rip=00007fff6af7807f rsp=000000000014d810 rbp=000000000014dc10
 r8=0000000000000001  r9=00007fff465d7420 r10=baac1f10365eb170
r11=00000000022e9f00 r12=0000000000000000 r13=0000000000000000
r14=00000000030466c0 r15=0000000000000000
iopl=0         nv up ei pl zr na po nc
cs=0033  ss=002b  ds=002b  es=002b  fs=0053  gs=002b             efl=00010246
msctf!CThreadInputMgr::_SetFocus+0x7ef:
00007fff`6af7807f 488b07          mov     rax,qword ptr [rdi] ds:00000000`00000000=????????????????
Resetting default scope

EXCEPTION_RECORD:  (.exr -1)
ExceptionAddress: 00007fff6af7807f (msctf!CThreadInputMgr::_SetFocus+0x00000000000007ef)
   ExceptionCode: c0000005 (Access violation)
  ExceptionFlags: 00000000
NumberParameters: 2
   Parameter[0]: 0000000000000000
   Parameter[1]: 0000000000000000
Attempt to read from address 0000000000000000

PROCESS_NAME:  Falcon BMS.exe

READ_ADDRESS:  0000000000000000 

ERROR_CODE: (NTSTATUS) 0xc0000005 - The instruction at 0x%p referenced memory at 0x%p. The memory could not be %s.

EXCEPTION_CODE_STR:  c0000005

EXCEPTION_PARAMETER1:  0000000000000000

EXCEPTION_PARAMETER2:  0000000000000000

STACK_TEXT:  
00000000`0014d810 00007fff`6af70f0f     : 00000000`03045b40 00000000`022e9df0 00000000`80000005 00000000`000004cc : msctf!CThreadInputMgr::_SetFocus+0x7ef
00000000`0014d910 00007fff`6af7dcd2     : 00000000`00100000 00000000`00100000 00000000`00000000 00000000`00000428 : msctf!CThreadInputMgr::OnActivationChange+0x88f
00000000`0014db10 00007fff`6af6744e     : 00000000`0302a430 00007fff`6b061b08 00000000`03045b40 00000000`80000009 : msctf!CThreadInputMgr::ActivateEx_P+0x552
00000000`0014e430 00007fff`6af66db5     : 00000000`03045b40 00000000`80000008 00000000`03045b60 00000000`00000000 : msctf!CicBridge::ActivateIMMX+0x8e
00000000`0014e4a0 00007fff`6af66c5f     : 00000000`03027f90 00000000`0014e609 00000000`00000000 00000000`00000003 : msctf!_CtfImeCreateThreadMgr+0x131
00000000`0014e4f0 00007fff`6d0d72e6     : 00000000`00000000 00000000`00000003 00000000`f50000f5 00007fff`6d19423a : msctf!CtfImeCreateThreadMgr+0x3f
00000000`0014e520 00007fff`6d0d9947     : 00000000`00000001 00000000`03030120 00000000`02570de0 00000000`02570dd0 : imm32!ActivateOrDeactivateTIM+0x56ba
00000000`0014e550 00007fff`6b9691c3     : 00000000`0303f430 00000000`00000000 00000000`00000020 00000000`00000008 : imm32!ISPY_PreInitialize+0x4197
00000000`0014e580 00007fff`6b968be7     : 00000000`025702e8 00000000`00000000 00000000`00000000 00000000`00000000 : combase!_CoInitializeEx+0x32b
00000000`0014e670 00007fff`16c501e1     : 00000000`02571080 00007fff`16c44df1 00007fff`00000000 00007fff`16cc1a60 : combase!CoInitializeEx+0x37
00000000`0014e6c0 00007fff`16c4aea7     : 00007fff`16cc1a68 00000000`02571080 00000000`0014e779 00000000`00000000 : dsound!CLeapRenderDevice::EnumDrivers+0x41
00000000`0014e730 00007fff`16c8da4f     : 00000000`02570880 00000000`02570880 00000000`00000000 00007fff`16c705ca : dsound!CVirtualAudioDeviceManager::InitStaticDriverList+0x3a7
00000000`0014e7e0 00007fff`16c8e23c     : 00000000`02570880 00000000`0014e968 00000000`00000000 00000000`00000020 : dsound!CVirtualAudioDeviceManager::EnumDrivers+0x3f
00000000`0014e830 00007fff`16c5e7ab     : 00000000`88780078 00007fff`00000000 00000000`0014e9a0 00000000`02570880 : dsound!CVirtualAudioDeviceManager::GetPreferredDeviceId+0x50
00000000`0014e8a0 00007fff`16c45922     : 00000000`02570a80 00000000`191e4bf0 00000000`02570a80 00000000`191e4bf0 : dsound!CDirectSound::Initialize+0x167db
00000000`0014ea40 00000000`04590a8f     : 00000000`05068628 00000000`191e4be0 00000000`0014ea98 00000000`191e4be0 : dsound!DirectSoundCreate8+0x272
00000000`0014eaf0 00000000`0458cfd3     : 00000000`191e4be0 00000000`00050f22 00000000`00050f22 2e342053`4d42206e : Falcon_BMS!CSoundMgr::InstallDSound+0x6f
00000000`0014eb50 00000000`044bac97     : 00000000`00000000 00000000`0014ed90 00000000`191e4be0 00000000`097e1e90 : Falcon_BMS!InitSoundManager+0x133
00000000`0014ec90 00000000`044b8b76     : 00000000`00000000 00000000`00000000 00000000`0014fa20 00000000`0000b540 : Falcon_BMS!SystemLevelInit+0x397
00000000`0014f920 00000000`044b9389     : 00000000`0301f9b0 0000f000`299e2e36 00000000`00000000 00000000`0000006e : Falcon_BMS!HandleWinMain+0x4c6
00000000`0014fe40 00000000`04529a9d     : 00000000`0301f9b0 00000000`0301f9b0 00000000`005f8c8c 00000000`04f32457 : Falcon_BMS!WinMainWrapper+0x19
00000000`0014fe70 00000000`044b93f7     : 00000000`04470000 00000000`00000000 00000000`00000000 00000000`04fc4330 : Falcon_BMS!ThreadUnhandledExceptionWrapper+0x6d
00000000`0014fec0 00000000`04f3298e     : 00000000`00000001 00000000`00000000 00000000`00000000 00000000`00000000 : Falcon_BMS!WinMain+0x47
00000000`0014fef0 00007fff`6c0e257d     : 00000000`00000000 00000000`00000000 00000000`00000000 00000000`00000000 : Falcon_BMS!__scrt_common_main_seh+0x106
00000000`0014ff30 00007fff`6d1aaa58     : 00000000`00000000 00000000`00000000 00000000`00000000 00000000`00000000 : kernel32!BaseThreadInitThunk+0x1d
00000000`0014ff60 00000000`00000000     : 00000000`00000000 00000000`00000000 00000000`00000000 00000000`00000000 : ntdll!RtlUserThreadStart+0x28


STACK_COMMAND:  ~0s; .ecxr ; kb

SYMBOL_NAME:  msctf!CThreadInputMgr::_SetFocus+7ef

MODULE_NAME: msctf

IMAGE_NAME:  msctf.dll

FAILURE_BUCKET_ID:  NULL_POINTER_READ_c0000005_msctf.dll!CThreadInputMgr::_SetFocus

OSPLATFORM_TYPE:  x64

OSNAME:  Windows 10

IMAGE_VERSION:  6.2.22621.2506

FAILURE_ID_HASH:  {823abd64-b0f4-24a9-8251-720f78701681}

Followup:     MachineOwner
---------
```

And here's the output of Windbg when attached to a running instance:

```

************* Preparing the environment for Debugger Extensions Gallery repositories **************
   ExtensionRepository : Implicit
   UseExperimentalFeatureForNugetShare : true
   AllowNugetExeUpdate : true
   AllowNugetMSCredentialProviderInstall : true
   AllowParallelInitializationOfLocalRepositories : true

   -- Configuring repositories
      ----> Repository : LocalInstalled, Enabled: true
      ----> Repository : UserExtensions, Enabled: true

>>>>>>>>>>>>> Preparing the environment for Debugger Extensions Gallery repositories completed, duration 0.000 seconds

************* Waiting for Debugger Extensions Gallery to Initialize **************

>>>>>>>>>>>>> Waiting for Debugger Extensions Gallery to Initialize completed, duration 0.016 seconds
   ----> Repository : UserExtensions, Enabled: true, Packages count: 0
   ----> Repository : LocalInstalled, Enabled: true, Packages count: 36

Microsoft (R) Windows Debugger Version 10.0.25921.1001 AMD64
Copyright (c) Microsoft Corporation. All rights reserved.

CommandLine: C:\Falcon BMS 4.37\Bin\x64\Falcon BMS.exe

************* Path validation summary **************
Response                         Time (ms)     Location
Deferred                                       https://msdl.microsoft.com/download/symbols
OK                                             c:\Falcon BMS 4.37\bin\x64
Symbol search path is: https://msdl.microsoft.com/download/symbols;c:\Falcon BMS 4.37\bin\x64
Executable search path is: 

+------------------------------------------------------------------------+
| This target supports Hardware-enforced Stack Protection. A HW based    |
| "Shadow Stack" may be available to assist in debugging and analysis.   |
| See aka.ms/userhsp for more info.                                      |
|                                                                        |
| dps @ssp                                                               |
|                                                                        |
+------------------------------------------------------------------------+

ModLoad: 00000000`04470000 00000000`0f4bc000   Falcon BMS.exe
ModLoad: 00007fff`6d150000 00007fff`6d367000   ntdll.dll
ModLoad: 00007fff`6c0d0000 00007fff`6c194000   C:\WINDOWS\System32\KERNEL32.DLL
ModLoad: 00007fff`6a7b0000 00007fff`6ab55000   C:\WINDOWS\System32\KERNELBASE.dll
ModLoad: 00007fff`6ce70000 00007fff`6d01e000   C:\WINDOWS\System32\USER32.dll
ModLoad: 00007fff`6a540000 00007fff`6a566000   C:\WINDOWS\System32\win32u.dll
ModLoad: 00007fff`6c360000 00007fff`6c389000   C:\WINDOWS\System32\GDI32.dll
ModLoad: 00007fff`6a690000 00007fff`6a7a9000   C:\WINDOWS\System32\gdi32full.dll
ModLoad: 00007fff`6abd0000 00007fff`6ac6a000   C:\WINDOWS\System32\msvcp_win.dll
ModLoad: 00007fff`6a570000 00007fff`6a681000   C:\WINDOWS\System32\ucrtbase.dll
ModLoad: 00007fff`6b5e0000 00007fff`6b691000   C:\WINDOWS\System32\ADVAPI32.dll
ModLoad: 00007fff`6d020000 00007fff`6d0c7000   C:\WINDOWS\System32\msvcrt.dll
ModLoad: 00007fff`6aea0000 00007fff`6af46000   C:\WINDOWS\System32\sechost.dll
ModLoad: 00007fff`6b4c0000 00007fff`6b5d7000   C:\WINDOWS\System32\RPCRT4.dll
ModLoad: 00007fff`6c610000 00007fff`6ce69000   C:\WINDOWS\System32\SHELL32.dll
ModLoad: 00007fff`6c390000 00007fff`6c401000   C:\WINDOWS\System32\WS2_32.dll
ModLoad: 00007fff`00a60000 00007fff`00a71000   C:\WINDOWS\SYSTEM32\XINPUT1_4.dll
ModLoad: 00007fff`6d0d0000 00007fff`6d101000   C:\WINDOWS\System32\IMM32.dll
ModLoad: 00007ffe`aa070000 00007ffe`aa2d3000   C:\WINDOWS\SYSTEM32\d3dx9_43.dll
ModLoad: 00007fff`6b8c0000 00007fff`6bc49000   C:\WINDOWS\System32\combase.dll
ModLoad: 00007fff`6b3c0000 00007fff`6b4b9000   C:\WINDOWS\System32\COMDLG32.dll
ModLoad: 00007ffe`ba600000 00007ffe`ba646000   C:\WINDOWS\SYSTEM32\DINPUT8.dll
ModLoad: 00007fff`16c40000 00007fff`16ce2000   C:\WINDOWS\SYSTEM32\DSOUND.dll
ModLoad: 00007fff`6c510000 00007fff`6c603000   C:\WINDOWS\System32\shcore.dll
ModLoad: 00007fff`68f40000 00007fff`68f6d000   C:\WINDOWS\SYSTEM32\IPHLPAPI.DLL
ModLoad: 00007fff`6b0c0000 00007fff`6b11e000   C:\WINDOWS\System32\SHLWAPI.dll
ModLoad: 00007fff`14380000 00007fff`1439e000   C:\WINDOWS\SYSTEM32\MSACM32.dll
ModLoad: 00007fff`58540000 00007fff`58559000   C:\WINDOWS\SYSTEM32\NETAPI32.dll
ModLoad: 00007fff`60220000 00007fff`6022a000   C:\WINDOWS\SYSTEM32\VERSION.dll
ModLoad: 00007fff`6b1e0000 00007fff`6b380000   C:\WINDOWS\System32\ole32.dll
ModLoad: 00007ffe`fa400000 00007ffe`fa42b000   C:\WINDOWS\SYSTEM32\MSVFW32.dll
ModLoad: 00007fff`6c280000 00007fff`6c357000   C:\WINDOWS\System32\OLEAUT32.dll
ModLoad: 00007fff`646c0000 00007fff`64aa6000   C:\WINDOWS\SYSTEM32\D3DCOMPILER_47.dll
ModLoad: 00007fff`67120000 00007fff`67218000   C:\WINDOWS\SYSTEM32\dxgi.dll
ModLoad: 00007fff`652b0000 00007fff`6589e000   C:\WINDOWS\SYSTEM32\d2d1.dll
ModLoad: 00007fff`64dd0000 00007fff`65043000   C:\WINDOWS\SYSTEM32\DWrite.dll
ModLoad: 00007fff`65050000 00007fff`652a7000   C:\WINDOWS\SYSTEM32\d3d11.dll
ModLoad: 00007ffe`b9730000 00007ffe`b9776000   C:\WINDOWS\SYSTEM32\d3dx11_43.dll
ModLoad: 00007fff`59a50000 00007fff`59a84000   C:\WINDOWS\SYSTEM32\WINMM.dll
ModLoad: 00007fff`6a1b0000 00007fff`6a1fe000   C:\WINDOWS\SYSTEM32\cfgmgr32.dll
ModLoad: 00007fff`52c50000 00007fff`52cf8000   C:\WINDOWS\SYSTEM32\WINSPOOL.DRV
ModLoad: 00007fff`6a180000 00007fff`6a1ac000   C:\WINDOWS\SYSTEM32\DEVOBJ.dll
ModLoad: 00007fff`16570000 00007fff`16621000   C:\WINDOWS\SYSTEM32\ResampleDmo.DLL
ModLoad: 00007fff`692d0000 00007fff`6931d000   C:\WINDOWS\SYSTEM32\powrprof.dll
ModLoad: 00000000`008f0000 00000000`0093d000   C:\WINDOWS\SYSTEM32\powrprof.dll
ModLoad: 00007fff`410f0000 00007fff`41119000   C:\WINDOWS\SYSTEM32\winmmbase.dll
ModLoad: 00007fff`58f90000 00007fff`59043000   C:\WINDOWS\WinSxS\amd64_microsoft.windows.common-controls_6595b64144ccf1df_5.82.22621.2506_none_b43bab19638c9595\COMCTL32.dll
ModLoad: 00000000`008f0000 00000000`009a3000   C:\WINDOWS\WinSxS\amd64_microsoft.windows.common-controls_6595b64144ccf1df_5.82.22621.2506_none_b43bab19638c9595\COMCTL32.dll
ModLoad: 00007fff`69e50000 00007fff`69e78000   C:\WINDOWS\SYSTEM32\bcrypt.dll
ModLoad: 00007fff`69d30000 00007fff`69d4b000   C:\WINDOWS\SYSTEM32\CRYPTSP.dll
ModLoad: 00007ffe`a9ee0000 00007ffe`aa06f000   C:\Falcon BMS 4.37\Bin\x64\dbghelp.dll
ModLoad: 00007fff`1f4f0000 00007fff`1f4fb000   C:\WINDOWS\SYSTEM32\msdmo.dll
ModLoad: 00007fff`68f30000 00007fff`68f3c000   C:\WINDOWS\SYSTEM32\NETUTILS.DLL
(b4e0.61f0): Break instruction exception - code 80000003 (first chance)
ntdll!LdrpDoDebuggerBreak+0x30:
00007fff`6d22b784 cc              int     3
0:000> lm
start             end                 module name
00000000`04470000 00000000`0f4bc000   Falcon_BMS C (private pdb symbols)  c:\falcon bms 4.37\bin\x64\Falcon BMS.pdb
00007ffe`a9ee0000 00007ffe`aa06f000   dbghelp    (deferred)             
00007ffe`aa070000 00007ffe`aa2d3000   d3dx9_43   (deferred)             
00007ffe`b9730000 00007ffe`b9776000   d3dx11_43   (deferred)             
00007ffe`ba600000 00007ffe`ba646000   DINPUT8    (deferred)             
00007ffe`fa400000 00007ffe`fa42b000   MSVFW32    (deferred)             
00007fff`00a60000 00007fff`00a71000   XINPUT1_4   (deferred)             
00007fff`14380000 00007fff`1439e000   MSACM32    (deferred)             
00007fff`16570000 00007fff`16621000   ResampleDmo   (deferred)             
00007fff`16c40000 00007fff`16ce2000   DSOUND     (deferred)             
00007fff`1f4f0000 00007fff`1f4fb000   msdmo      (deferred)             
00007fff`410f0000 00007fff`41119000   winmmbase   (deferred)             
00007fff`52c50000 00007fff`52cf8000   WINSPOOL   (deferred)             
00007fff`58540000 00007fff`58559000   NETAPI32   (deferred)             
00007fff`58f90000 00007fff`59043000   COMCTL32   (deferred)             
00007fff`59a50000 00007fff`59a84000   WINMM      (deferred)             
00007fff`60220000 00007fff`6022a000   VERSION    (deferred)             
00007fff`646c0000 00007fff`64aa6000   D3DCOMPILER_47   (deferred)             
00007fff`64dd0000 00007fff`65043000   DWrite     (deferred)             
00007fff`65050000 00007fff`652a7000   d3d11      (deferred)             
00007fff`652b0000 00007fff`6589e000   d2d1       (deferred)             
00007fff`67120000 00007fff`67218000   dxgi       (deferred)             
00007fff`68f30000 00007fff`68f3c000   NETUTILS   (deferred)             
00007fff`68f40000 00007fff`68f6d000   IPHLPAPI   (deferred)             
00007fff`692d0000 00007fff`6931d000   powrprof   (deferred)             
00007fff`69d30000 00007fff`69d4b000   CRYPTSP    (deferred)             
00007fff`69e50000 00007fff`69e78000   bcrypt     (deferred)             
00007fff`6a180000 00007fff`6a1ac000   DEVOBJ     (deferred)             
00007fff`6a1b0000 00007fff`6a1fe000   cfgmgr32   (deferred)             
00007fff`6a540000 00007fff`6a566000   win32u     (deferred)             
00007fff`6a570000 00007fff`6a681000   ucrtbase   (deferred)             
00007fff`6a690000 00007fff`6a7a9000   gdi32full   (deferred)             
00007fff`6a7b0000 00007fff`6ab55000   KERNELBASE   (deferred)             
00007fff`6abd0000 00007fff`6ac6a000   msvcp_win   (deferred)             
00007fff`6aea0000 00007fff`6af46000   sechost    (deferred)             
00007fff`6b0c0000 00007fff`6b11e000   SHLWAPI    (deferred)             
00007fff`6b1e0000 00007fff`6b380000   ole32      (deferred)             
00007fff`6b3c0000 00007fff`6b4b9000   COMDLG32   (deferred)             
00007fff`6b4c0000 00007fff`6b5d7000   RPCRT4     (deferred)             
00007fff`6b5e0000 00007fff`6b691000   ADVAPI32   (deferred)             
00007fff`6b8c0000 00007fff`6bc49000   combase    (deferred)             
00007fff`6c0d0000 00007fff`6c194000   KERNEL32   (deferred)             
00007fff`6c280000 00007fff`6c357000   OLEAUT32   (deferred)             
00007fff`6c360000 00007fff`6c389000   GDI32      (deferred)             
00007fff`6c390000 00007fff`6c401000   WS2_32     (deferred)             
00007fff`6c510000 00007fff`6c603000   shcore     (deferred)             
00007fff`6c610000 00007fff`6ce69000   SHELL32    (deferred)             
00007fff`6ce70000 00007fff`6d01e000   USER32     (deferred)             
00007fff`6d020000 00007fff`6d0c7000   msvcrt     (deferred)             
00007fff`6d0d0000 00007fff`6d101000   IMM32      (deferred)             
00007fff`6d150000 00007fff`6d367000   ntdll      (pdb symbols)          C:\ProgramData\Dbg\sym\ntdll.pdb\58A282C24AEE7E03A8CF8CB0A782CE0C1\ntdll.pdb
0:000> g
ModLoad: 00007fff`692b0000 00007fff`692c3000   C:\WINDOWS\SYSTEM32\UMPDC.dll
ModLoad: 00007fff`6a4c0000 00007fff`6a53a000   C:\WINDOWS\System32\bcryptPrimitives.dll
ModLoad: 00007fff`4a0b0000 00007fff`4a2ba000   C:\WINDOWS\SYSTEM32\inputhost.dll
ModLoad: 00007fff`66090000 00007fff`661c3000   C:\WINDOWS\SYSTEM32\CoreMessaging.dll
ModLoad: 00007fff`69d10000 00007fff`69d1c000   C:\WINDOWS\SYSTEM32\CRYPTBASE.DLL
ModLoad: 00007fff`67900000 00007fff`681f4000   C:\WINDOWS\SYSTEM32\windows.storage.dll
ModLoad: 00007fff`677c0000 00007fff`678fe000   C:\WINDOWS\SYSTEM32\wintypes.dll
ModLoad: 00007fff`6a3f0000 00007fff`6a416000   C:\WINDOWS\SYSTEM32\profapi.dll
ModLoad: 00007fff`66f30000 00007fff`66fdb000   C:\WINDOWS\system32\uxtheme.dll
ModLoad: 00007fff`01790000 00007fff`018c8000   C:\ProgramData\A-Volute\A-Volute.28054DF1F58B4\Modules\ScheduledModules\x64\AudioDevProps2.dll
ModLoad: 00007fff`01910000 00007fff`019be000   C:\ProgramData\A-Volute\A-Volute.28054DF1F58B4\Modules\ScheduledModules\x64\NahimicOSD.dll
ModLoad: 00007fff`01d70000 00007fff`01d90000   C:\ProgramData\A-Volute\A-Volute.28054DF1F58B4\Modules\ScheduledModules\x64\ProductInfo.dll
Error 20 (this feature has not been implemented yet) in function AVolute::GetProductInfoT::<lambda_3920e95365a48b95dd51020986e9e351>::operator ()
Error 20 (this feature has not been implemented yet) in function AVolute::GetProductInfoT::<lambda_3920e95365a48b95dd51020986e9e351>::operator ()
Error 20 (this feature has not been implemented yet) in function AVolute::GetProductInfoT::<lambda_3920e95365a48b95dd51020986e9e351>::operator ()
Error 20 (this feature has not been implemented yet) in function AVolute::GetProductInfoT::<lambda_3920e95365a48b95dd51020986e9e351>::operator ()
Error 20 (this feature has not been implemented yet) in function AVolute::GetProductInfoT::<lambda_3920e95365a48b95dd51020986e9e351>::operator ()
Error 20 (this feature has not been implemented yet) in function AVolute::GetProductInfoT::<lambda_3920e95365a48b95dd51020986e9e351>::operator ()
ModLoad: 00007ffe`f9f00000 00007ffe`fa038000   C:\ProgramData\A-Volute\A-Volute.SonicStudio3\Modules\ScheduledModules\x64\AudioDevProps2.dll
ModLoad: 00007fff`6af50000 00007fff`6b09f000   C:\WINDOWS\System32\MSCTF.dll
ModLoad: 00007fff`69510000 00007fff`69528000   C:\WINDOWS\SYSTEM32\kernel.appcore.dll
clientcore\windows\advcore\ctf\uim\tim.cpp(800)\MSCTF.dll!00007FFF6AF662B9: (caller: 00007FFF6AF66EEC) LogHr(1) tid(61f0) 8007029C An assertion failure has occurred.
clientcore\windows\advcore\ctf\uim\tim.cpp(800)\MSCTF.dll!00007FFF6AF662B9: (caller: 00007FFF6AF66EEC) LogHr(2) tid(61f0) 8007029C An assertion failure has occurred.
ModLoad: 00007fff`464d0000 00007fff`4661a000   C:\WINDOWS\SYSTEM32\textinputframework.dll
ModLoad: 00007fff`6c490000 00007fff`6c50f000   C:\WINDOWS\System32\coml2.dll
ModLoad: 00007fff`09d10000 00007fff`09d2b000   C:\WINDOWS\system32\asycfilt.dll
clientcore\windows\advcore\ctf\uim\tim.cpp(800)\MSCTF.dll!00007FFF6AF662B9: (caller: 00007FFF6AF66EEC) LogHr(3) tid(61f0) 8007029C An assertion failure has occurred.
clientcore\windows\advcore\ctf\uim\tim.cpp(800)\MSCTF.dll!00007FFF6AF662B9: (caller: 00007FFF6AF66EEC) LogHr(4) tid(61f0) 8007029C An assertion failure has occurred.
ModLoad: 00007fff`61f40000 00007fff`622ac000   C:\WINDOWS\SYSTEM32\CoreUIComponents.dll
ModLoad: 00007fff`6b120000 00007fff`6b1d0000   C:\WINDOWS\System32\clbcatq.dll
ModLoad: 00007fff`560c0000 00007fff`5615d000   C:\WINDOWS\System32\MMDevApi.dll
ModLoad: 00007fff`4b760000 00007fff`4b94c000   C:\WINDOWS\SYSTEM32\AudioSes.dll
ModLoad: 00007ffe`facb0000 00007ffe`facd0000   C:\ProgramData\A-Volute\A-Volute.SonicStudio3\Modules\ScheduledModules\x64\ProductInfo.dll
ModLoad: 00007fff`66900000 00007fff`66a01000   C:\WINDOWS\SYSTEM32\PropSys.dll
ModLoad: 00007fff`67380000 00007fff`67395000   C:\WINDOWS\SYSTEM32\resourcepolicyclient.dll
ModLoad: 00007fff`4c410000 00007fff`4c584000   C:\Windows\System32\Windows.UI.dll
ModLoad: 00007fff`62660000 00007fff`6266b000   C:\WINDOWS\SYSTEM32\avrt.dll
ModLoad: 00007fff`62660000 00007fff`6266b000   C:\WINDOWS\SYSTEM32\avrt.dll
ModLoad: 00007fff`68c70000 00007fff`68c7e000   C:\WINDOWS\SYSTEM32\HID.DLL
ModLoad: 00007fff`6bc50000 00007fff`6c0c4000   C:\WINDOWS\System32\SETUPAPI.DLL
ModLoad: 00007fff`6ab60000 00007fff`6abcc000   C:\WINDOWS\System32\WINTRUST.dll
ModLoad: 00007fff`6ac70000 00007fff`6add6000   C:\WINDOWS\System32\CRYPT32.dll
ModLoad: 00007fff`6a160000 00007fff`6a172000   C:\WINDOWS\SYSTEM32\MSASN1.dll
ModLoad: 00000000`03660000 00000000`03668000   C:\Program Files (x86)\NaturalPoint\TrackIR5\NPClient64.dll
ModLoad: 00000000`03660000 00000000`03668000   C:\Program Files (x86)\NaturalPoint\TrackIR5\NPClient64.dll
ModLoad: 00007fff`21100000 00007fff`2127a000   C:\WINDOWS\System32\Speech\Common\sapi.dll
ModLoad: 00007fff`670d0000 00007fff`67106000   C:\WINDOWS\SYSTEM32\dxcore.dll
ModLoad: 00007fff`627a0000 00007fff`627ea000   C:\WINDOWS\SYSTEM32\directxdatabasehelper.dll
ModLoad: 00007fff`5d290000 00007fff`5d34c000   C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_677da8a9230cea15\nvldumdx.dll
ModLoad: 00007fff`5f5a0000 00007fff`5f5d2000   C:\WINDOWS\SYSTEM32\cryptnet.dll
ModLoad: 00007fff`5f290000 00007fff`5f3e8000   C:\WINDOWS\SYSTEM32\drvstore.dll
ModLoad: 00007fff`69c60000 00007fff`69cab000   C:\WINDOWS\SYSTEM32\wldp.dll
ModLoad: 00007fff`6b3a0000 00007fff`6b3bf000   C:\WINDOWS\System32\imagehlp.dll
ModLoad: 00007fff`694d0000 00007fff`69505000   C:\WINDOWS\system32\rsaenh.dll
ModLoad: 00007fff`5a770000 00007fff`5c95e000   C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_677da8a9230cea15\nvgpucomp64.dll
ModLoad: 00007fff`4d3f0000 00007fff`527fa000   C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_677da8a9230cea15\nvwgf2umx.dll
ModLoad: 00007ffe`a9d90000 00007ffe`a9e37000   C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_677da8a9230cea15\NvCamera\NvCameraAllowlisting64.dll
ModLoad: 00007ffe`f8020000 00007ffe`f82f1000   C:\WINDOWS\system32\nvspcap64.dll
ModLoad: 00007fff`69590000 00007fff`695c4000   C:\WINDOWS\SYSTEM32\ntmarta.dll
ModLoad: 00007fff`533f0000 00007fff`53b27000   C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_677da8a9230cea15\Display.NvContainer\MessageBus.dll
(b4e0.61f0): C++ EH exception - code e06d7363 (first chance)
(b4e0.61f0): C++ EH exception - code e06d7363 (first chance)
ModLoad: 00007fff`6b390000 00007fff`6b399000   C:\WINDOWS\System32\NSI.dll
ModLoad: 00007fff`630e0000 00007fff`630ff000   C:\WINDOWS\SYSTEM32\dhcpcsvc.DLL
onecore\windows\directx\database\helperlibrary\lib\directxdatabasehelper.cpp(2156)\directxdatabasehelper.dll!00007FFF627B1B18: (caller: 00007FFF67184C36) ReturnHr(1) tid(61f0) 80070057 The parameter is incorrect.
ModLoad: 00007fff`658a0000 00007fff`65af2000   C:\WINDOWS\SYSTEM32\dcomp.dll
ModLoad: 00007fff`67250000 00007fff`6727b000   C:\WINDOWS\SYSTEM32\dwmapi.dll
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
ModLoad: 00007fff`64c20000 00007fff`64dd0000   C:\WINDOWS\SYSTEM32\WindowsCodecs.dll
ModLoad: 00007fff`4bad0000 00007fff`4bb80000   C:\WINDOWS\SYSTEM32\TextShaping.dll
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
D3DX: (WARN) The BC6 or BC7 texture encoder has been invoked.  This can be extremely slow given the complexity of the BC6/BC7 encoding space in particular (whereas decoding these is fast).  Sometimes a format encoder could be invoked unintentionally, such as loading a texture from a file encoded as one format but asking for another.  Another example is that although the default D3DX behavior for creating a texture from a file makes a full mipmap chain unless otherwise specified, the intent may have been to load a BC6/BC7 image without generating mips, thus avoiding the encoder.  These examples may or may not represent the current situation.  The point here is merely to suggest one explanation why code may be unexpectedly running slowly. 
ntdll!NtTerminateProcess+0x14:
```

Here's the output from `-debug` in the `xlog.txt` file in `User\Config`:

```
[00:00:00.000] 41508   ****   Falcon 4.0   ****    
[00:00:00.000] 41508   ****   (C) 2023 MicroProse Software Pty Ltd. All Rights Reserved.   ****

[00:00:00.000] 41508   ****   Falcon BMS 4.37.3 (x64) Build 1329   ****
[00:00:00.000] 41508   ****   (C) 2023 Benchmark Sims. All Rights Reserved.   ****

[00:00:00.000] 41508 Operating System: Windows 10 (10.0.22631)

[00:00:00.000] 41508 Valid F4 installation found [D:\Steam\steamapps\common\Falcon 4.0\falcon4.exe]
[00:00:00.000] 41508 Create window at 0, 0 with size 3840x2160 (client) 3864x2224 (window)
[00:00:00.000] 41508 WM_SIZE 0x0 to 3840x2160
[00:00:00.000] 41508 SIZE_RESTORED other (SetWindowPos, mSwapChain->SetFullscreenState...)
[00:00:00.000] 41508 SIZE_RESTORED handle resize 0x0 to 3840x2160
[00:00:00.000] 41508 WM_MOVE 0|0 to 0|0 (client pos to 12|52) delta -12|-52 for style -1865809920
[00:00:00.000] 41508 WM_ACTIVATEAPP 1, previous active window thread 17552
[00:00:00.000] 41508 WM_ACTIVATE 1 (minimized state 0), window handle being deactivated 0
[00:00:00.000] 41508 FalconMainWindowD3D11::handleOnActivate 0->1
[00:00:00.000] 41508 SetWindowLongPtr GWL_STYLE -1879048192
[00:00:00.000] 41508 SetWindowLongPtr GWL_EXSTYLE 0
[00:00:00.000] 41508 AppWindow::setBorderState: style changed position 0|0 to 0|0
[00:00:00.000] 41508 AppWindow::setBorderState: style changed size to w: 3840 (3840 - 0), h: 2160 (2160 - 0)
[00:00:00.000] 41508 WM_MOVE 0|0 to 0|0 (client pos to 0|0) delta 0|0 for style -1879048192
[00:00:00.000] 41508 SystemLevelInit
[00:00:00.000] 41508 Initializing Sim Memory Pools....
[00:00:00.000] 41508 DeviceIndependentGraphicsSetup ##
[00:00:00.000] 41508 TheLoader Setup ##
[00:00:00.000] 41508 Loading texture_POLAK.bin with 250 sets, 3471 tiles
[00:00:00.000] 41508 Flush References - start Cleanup if we don't get anything below in log, something wrong in here ##
[00:00:00.000] 41508 FlushReferences Cleanup ##
[00:00:00.000] 41508 ObjectLOD Cleanup ##
[00:00:00.000] 41508 TheTextureBank Cleanup ##
[00:00:00.000] 41508 ThePaletteBank Cleanup ##
[00:00:00.000] 41508 TheColorBank Cleanup ##
[00:00:00.000] 41508 Terrain: Load
[00:00:00.000] 41508 Terrain max texID: 3991
[00:00:00.000] 41508 Theater's installed: TerrData\TheaterDefinition\Korea KTO.tdf 
[00:00:00.000] 41508 Theater's installed: Add-On Korea TvT\TerrData\TheaterDefinition\Korea_TvT.tdf 
[00:00:00.000] 41508 GetCurrentTheater Korea KTO
[00:00:00.000] 41508 TheaterReload
[00:00:00.000] 41508 theaterPath 'C:\Falcon BMS 4.37\Data\Terrdata\korea'
[00:00:00.000] 41508 terrainPath 'C:\Falcon BMS 4.37\Data\Terrdata\korea\terrain'
[00:00:00.000] 41508 Loading texture_POLAK.bin with 250 sets, 3471 tiles
[00:00:00.000] 41508 objectPath 'C:\Falcon BMS 4.37\Data\Terrdata\objects\KoreaObj'
[00:00:00.000] 41508 Flush References - start Cleanup if we don't get anything below in log, something wrong in here ##
[00:00:00.000] 41508 FlushReferences Cleanup ##
[00:00:00.000] 41508 ObjectLOD Cleanup ##
[00:00:00.000] 41508 TheTextureBank Cleanup ##
[00:00:00.000] 41508 ThePaletteBank Cleanup ##
[00:00:00.000] 41508 TheColorBank Cleanup ##
[00:00:00.000] 41508 GetCurrentTheater Korea KTO
[00:00:00.000] 41508 Reading CT  data from XML -> C:\Falcon BMS 4.37\Data\Terrdata\objects\Falcon4_CT.XML
[00:00:00.000] 41508 Reading CT  data from XML -> Done,   4411 entries
[00:00:00.000] 41508 ------------------------------------------------------------------------------
[00:00:00.000] 41508 ~ Loading XMLs took ~ 0.415 seconds
[00:00:00.000] 41508 ------------------------------------------------------------------------------
[00:00:00.000] 41508 Reading Mission data from XML -> C:\Falcon BMS 4.37\Data\Campaign\MissionData_XX.XML
[00:00:00.000] 41508 Could not open visid.map 
[00:00:00.000] 41508 Terrain: Unload
[00:00:00.000] 41508 Terrain: Load
[00:00:00.000] 41508 Terrain max texID: 3991
[00:00:00.000] 41508 SoundDriver 0x0000000019A2BDE0
```

I noticed there's no `d3d11.dsp` in my `User\Config` directory.  I've got crash dumps and whatnot to upload if interested.
