# js8call-tests

Resources being collected for to use in testing/QA of js8call. Baby steps.

1 - Scripts
2 - Test audio input files - edit/gen by Reaper

The idea is that on occasion it is good to have standard audio samples that can be piped into js8call with an expected repeatable test output.

Under /inputs there are WAV files that can played into audio input of js8call.

To do this requires a software virtual audio device installed as an output device for audio playback software, and which is then provided as an input device to js8call. Effectively virtual audio patch cable looping from a sound output back into a sound input.

The same strategy is used for connecting audio output from WebSDR into js8call, and/or recording WebSDR for later use.

In addition such audio device can connected one to many allowing multiple js8call instances to run simultaneously on the same data for comparison purposes.

There are several options for available for virtual audio cables depending on OS, and the idea for these use cases has been around for at least 10 years https://www.dxzone.com/5-free-virtual-audio-cable-software/ .

Consider. I have not tried all these:

for any platform
    JACK2 https://jackaudio.org/downloads/

for Windows & MacOS - simple
    VB-Audio Cable https://vb-audio.com/Cable/

for MacOS - more complex
    Loopback (paid) https://rogueamoeba.com/loopback/

For audio construction and manipulation in this application I use Reaper  https://www.cockos.com/reaper/ which is a full Digital Audio Workstation with a straightforward interface and a generous evaluation license. It also has oscillator and noise generator plugins for the mix.

THOUGHTS
--------

Linsim http://w1hkj.com/files/test_suite/guide.html is a file based tool for AR digital mode simulation under varying propagation conditions. It may be worth in future porting some of the underlying PathSim (https://www.moetronix.com/ae4jy/files/pathsimtech100.pdf) models that underly LinSim into VST plugins for Reaper to add path simulation into the audio streams.

Collecting output from js8call controlled by test scripts could be:
- processing the .TXT files being generated
- using the network API to collect data

The advantage of the network API is that it could also be used in scripts to setup test conditions and run tests but there is little support for these sort of commands in current js8call versions.

