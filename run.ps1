cmake -B bw -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
CompilerCommandsAnalyzer.exe analyze -f bw/compile_commands.json -d
