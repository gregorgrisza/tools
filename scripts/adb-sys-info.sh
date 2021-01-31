#!/bin/bash +x


adb root && adb remount

echo -e "Heap Size:"
adb shell getprop dalvik.vm.heapsize

echo -e "\vMemory Info:"
adb shell "cat /proc/meminfo" | grep MemTotal

echo -e "\vInternal Storage:"
adb shell df -h

echo -e "\vBugtrace:"
adb bugreport