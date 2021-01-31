#!/bin/bash

adb shell pm list users | perl -nle'print $& while m{\{\K[^:]*}g'
