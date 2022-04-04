## Wonderboy V Translation Project
_This a work-in-progress_


This project started at [www.circuit-board.de](www.circuit-board.de) with the help of some awesome people.

- Please see the current [Todo List](https://github.com/ArcadeTV/mw3de/blob/main/info/TODO.md)
- Report any issues [here](https://github.com/ArcadeTV/mw3de/issues)
- See [commits](https://github.com/ArcadeTV/mw3de/commits/main) in main branch for a brief changelog.

--- 

### Title:
German translation, Romhack
for Wonder Boy in Monster World - Monster World III

### System:
SEGA GENESIS / MEGA DRIVE

### Compatibility:  
Works on real hardware with 
- MEGA Everdrive Pro, 
- MegaSD* or 
- any other (Flash or Repro) Cart
- miSTer
- most emulators

### Source ROM:     
- Wonder Boy in Monster World (USA, Europe).md
- CRC32: 1592F5B0
- MD5: EDBA0BDB192D47712EDBE0097F885F40
- SHA-1: 87A968F773C7E807E647C0737132457B06B78276

---

## How to use the bps patch:

You need:
- [x] The [latest release](https://github.com/ArcadeTV/mw3de/releases/latest) from the releases tab. <br>Extract the .bps patch file.
- [x] The ROM "Wonder Boy in Monster World (USA, Europe).md"<br>(CRC 1592F5B0)
- [x] [flips](https://dl.smwcentral.net/11474/floating.zip) to apply the patch file to your ROM.

1. Open flips.exe
2. Click "Apply Patch"
3. Select the .bps Datei
4. Select the orginal ROM
5. Save the patched file

---

## How to build from source

_Open a commandline/terminal_

1. Clone the repository:<br>`git clone https://github.com/ArcadeTV/mw3de.git`.
2. Navigate into the cloned repository:<br>`cd mw3de`.
3. Clone the tools-repository into a subfolder:<br>`git clone https://github.com/ArcadeTV/tools.git`
4. Copy your source rom `Wonder Boy in Monster World (USA, Europe).md` (CRC: 1592F5B0)<br>into the `mw3de/roms` subfolder.
5. Run the `build` script.
6. Look inside your `roms` subfolder<br>to find the ready patched rom and bps file.

#### Notes for Windows Users

On Windows/x64 just execute the `build.bat` file that is provided within the repository after setting up your directory with repo, tools and rom.

You may want to install `tools\win\vcredist_x86.exe` as a dependency for some commandline tools if you run into an error.


#### Mac and Unix

Make the shell script and tools executable by typing `chmod +x build.sh`, then run the script with `./build.sh`
