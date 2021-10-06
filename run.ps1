cmake -B bw -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
# --cfg excludes files irrelevant for current platform
# -S includes files to be analyzed, e.g. changed in PR
CompilerCommandsAnalyzer.exe analyze -f bw/compile_commands.json -d --cfg pvs.windows.cfg -S files.txt
PlogConverter.exe -t txt PVS-Studio.log
Get-Content PVS-Studio.log.txt