#!/bin/bash
cmake -B linux_build -G Ninja
ninja -C linux_build -nv | compiledb -d "$PWD/linux_build" -f -o ./linux_build/compile_commands.json
# --cfg excludes files irrelevant for current platform
# -S includes files to be analyzed, e.g. changed in PR
pvs-studio-analyzer analyze -f linux_build/compile_commands.json -d
plog-converter -a all -t tasklist PVS-Studio.log
