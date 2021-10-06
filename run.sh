#!/bin/bash
cmake -B b -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
pvs-studio-analyzer analyze -f b/compile_commands.json -d
