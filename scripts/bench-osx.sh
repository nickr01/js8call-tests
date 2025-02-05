#!/bin/sh

#open /Applications/Loopback.app &
#open /System/Applications/Utilities/Audio\ MIDI\ Setup.app &
#open /Applications/Reaper.app &

INI_BASE="~/Library/Preferences/JS8Call\ -"
BASE_INI="$INI_BASE\ baseline.ini"
#LASTF_INI="$INI_BASE\ lastfort.ini"
TEST_INI="$INI_BASE\ test.ini"

#echo cp "$BASE_INI" "$LASTF_INI"
#echo cp $BASE_INI $TEST_INI

BASE_BIN=/Applications/js8call.app/Contents/MacOS/js8call
$BASE_BIN -c testsdr -r base1 &
$BASE_BIN -c testsdr -r base2 &

FORT_BIN=$PWD/build/osx-lastfort/js8call.app/Contents/MacOS/js8call
#$FORT_BIN -r lastfort &

TEST_BIN=$PWD/build/osx/js8call.app/Contents/MacOS/js8call
$TEST_BIN -c testsdr -r test1 &
$TEST_BIN -c testsdr -r test2 &

#$BIN -r tx1 &
#$BIN -r tx2 &
#$BIN -r tx3 &

#$BIN -r rx1 &
#$BIN -r rx2 &

