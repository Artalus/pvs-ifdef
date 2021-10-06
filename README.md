# if linux:
```
$ ./run.sh
...
-- Build files have been written to: /work/excluded/b
Using tracing file: /work/excluded/b/compile_commands.json
[ 20%] Analyzing: define.cpp
Source file can't be preprocessed!
Command "/usr/bin/clang++ -DMAGIC_DEFINE -Ddefine_EXPORTS -fPIC -c -DPVS_STUDIO -w -E -o /work/excluded/define.PVS-Studio.i /work/excluded/define.cpp" returned code 1.
[ 40%] Analyzing: define.cpp
[ 60%] Analyzing: define.cpp
[ 80%] Analyzing: linux_only.cpp
[100%] Analyzing: windows_only.cpp
Source file can't be preprocessed!
Command "/usr/bin/clang++ -Dwindows_only_EXPORTS -fPIC -c -DPVS_STUDIO -w -E -o /work/excluded/windows_only.PVS-Studio.i /work/excluded/windows_only.cpp" returned code 1.
```
# if windows:
```
> .\run.ps1
...
-- Build files have been written to: Y:/excluded/bw
Using tracing file: Y:\excluded\bw\compile_commands.json
[ 20%] Analyzing: define.cpp
[ 40%] Analyzing: define.cpp
[ 60%] Analyzing: define.cpp
Source file can't be preprocessed!
Command "C:\Dev\vs2019bt\VC\Tools\MSVC\14.28.29910\bin\Hostx86\x86\cl.exe /nologo /TP -DMAGIC_DEFINE -Ddefine_EXPORTS /DWIN32 /D_WINDOWS /W3 /GR /EHsc /MDd /Zi /Ob0 /Od /RTC1 /FoCMakeFiles\define.dir\define.cpp.obj /FdTARGET_COMPILE_PDB /FS -c /DPVS_STUDIO /P /FiY:\excluded\define.PVS-Studio.i Y:\excluded\define.cpp" returned code 2.
[ 80%] Analyzing: linux_only.cpp
Source file can't be preprocessed!
Command "C:\Dev\vs2019bt\VC\Tools\MSVC\14.28.29910\bin\Hostx86\x86\cl.exe /nologo /TP -Dlinux_only_EXPORTS /DWIN32 /D_WINDOWS /W3 /GR /EHsc /MDd /Zi /Ob0 /Od /RTC1 /FoCMakeFiles\linux_only.dir\linux_only.cpp.obj /FdTARGET_COMPILE_PDB /FS -c /DPVS_STUDIO /P /FiY:\excluded\linux_only.PVS-Studio.i Y:\excluded\linux_only.cpp" returned code 2.
[100%] Analyzing: windows_only.cpp
Analysis finished in 0:00:03.49
```
