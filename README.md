# if linux:
```
$ ./run.sh
...
-- Build files have been written to: /work/excluded/b
Using source list file: /work/excluded/files.txt
Using tracing file: /work/excluded/b/compile_commands.json
[100%] Parsing includes: define.cpp
Source file can't be preprocessed!
Command "/usr/bin/clang++ -DMAGIC_DEFINE -Ddefine_EXPORTS -fPIC -c -DPVS_STUDIO -w -E -o /work/excluded/define.PVS-Studio.i /work/excluded/define.cpp" returned code 1.
[100%] Analyzing: linux_only.cpp
Analysis finished in 0:00:00.51
The results are saved to /work/excluded/PVS-Studio.log
The "/work/excluded/windows_only.cpp" file was not analyzed.
Analyzer log conversion tool.
Copyright (c) 2021 PVS-Studio LLC

PVS-Studio is a static code analyzer and SAST (static application security
testing) tool that is available for C and C++ desktop and embedded development,
C# and Java under Windows, Linux and macOS.

pvs-studio.com/en/docs/warnings/        1       err     Help: The documentation for all analyzer warnings is available here: https://pvs-studio.com/en/docs/warnings/.
/work/excluded/define.cpp       1       err     V008 Unable to start the analysis on this file.
```
# if windows:
```
> .\run.ps1
...
-- Build files have been written to: Y:/excluded/bw
Using source list file: Y:\excluded\files.txt
Using tracing file: Y:\excluded\bw\compile_commands.json
[100%] Parsing includes: define.cpp
Source file can't be preprocessed!
Command "C:\Dev\vs2019bt\VC\Tools\MSVC\14.28.29910\bin\Hostx86\x86\cl.exe /nologo /TP -DMAGIC_DEFINE -Ddefine_EXPORTS /DWIN32 /D_WINDOWS /W3 /GR /EHsc /MDd /Zi /Ob0 /Od /RTC1 /FoCMakeFiles\define.dir\define.cpp.obj /FdTARGET_COMPILE_PDB /FS -c /DPVS_STUDIO /P /FiY:\excluded\define.PVS-Studio.i Y:\excluded\define.cpp" returned code 2.
[100%] Analyzing: windows_only.cpp
Analysis finished in 0:00:02.68
The results are saved to Y:\excluded\PVS-Studio.log
The "Y:\excluded\linux_only.cpp" file was not analyzed.
Txt output was saved to Y:\excluded\PVS-Studio.log.txt
===============Fail===============
Y:\excluded\define.cpp (1): error V008: Unable to start the analysis on this file.
```
