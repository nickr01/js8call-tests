#!/bin/sh

#open /Applications/Loopback.app &
#open /System/Applications/Utilities/Audio\ MIDI\ Setup.app &
open /Applications/Reaper.app &

BIN=$PWD/build/osx/js8call.app/Contents/MacOS/js8call
echo bin=$BIN

$BIN -r tx1 &
#$BIN -r tx2 &
#$BIN -r tx3 &

$BIN -r rx1 &
#$BIN -r rx2 &

