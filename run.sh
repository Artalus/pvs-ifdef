#!/bin/bash
cmake -B b -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
# --cfg excludes files irrelevant for current platform
# -S includes files to be analyzed, e.g. changed in PR
pvs-studio-analyzer analyze -f b/compile_commands.json -d --cfg pvs.linux.cfg -S files.txt
plog-converter -a all -t tasklist PVS-Studio.log
