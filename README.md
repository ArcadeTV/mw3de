## Wonderboy V German Translation Project
_This a work-in-progress_

This project started at www.circuit-board.de with the help of these awesome people.

- Please see the current [Todo List](https://github.com/ArcadeTV/mw3de/blob/main/info/TODO.md)
- Report any issues [here](https://github.com/ArcadeTV/mw3de/issues)
- See [commits](https://github.com/ArcadeTV/mw3de/commits/main) for main branch for a brief changelog.

---

#### How to use the patch:

You need:
- [x] The [latest release](https://github.com/ArcadeTV/mw3de/releases/latest) from the releases tab. <br>Extract the .bps patch file.
- [x] The ROM "Wonder Boy in Monster World (USA, Europe).md"<br>(CRC 0D901482)
- [x] [flips](https://dl.smwcentral.net/11474/floating.zip) to apply the patch file to your ROM.

1. Open flips.exe
2. Click "Apply Patch"
3. Select the .bps Datei
4. Select the orginal ROM
5. Save the patched file

---

```
 _____               _     _____ _____ 
|  _  |___ ___ ___ _| |___|_   _|  |  |
|     |  _|  _| .'| . | -_| | | |  |  |
|__|__|_| |___|__,|___|___| |_|  \___/ 
                             

Title:         German translation, Romhack
               Wonder Boy in Monster World - Monster World III
System:        SEGA GENESIS / MEGA DRIVE
               

Compatibility  Works on real hardware with 
               MEGA Everdrive Pro, 
               MegaSD* or 
               any other (Flash or Repro) Cart
               mister*
               as well as most emulators

SourceROMs:    Wonder Boy in Monster World (USA, Europe).md (CRC 0D901482)

Date:          2022-03-20

Category:      Romhack / Translation
               
Source:        https://github.com/ArcadeTV/mw3de

```

### How to build from source

#### Windows

On Windows/x64 just execute the `build.bat` file that is provided within the repository.

You may want to install `tools\vcredist_x86.exe` as a dependency for some commandline tools if you run into an error.


#### Mac and Unix

Make the shell script executable by typing `chmod +x build.sh`, then run the script with `./build.sh`

---

### Tools included

* [VASM](http://sun.hasenbraten.de/vasm/) (**[vasmm68k_mot_win32.exe](http://www.alphatron.co.uk/vasm/)**) <- Win-compiled by Rob
* **[fixheader.exe](https://github.com/sonicretro/s2disasm/raw/master/win32/fixheader.exe)** which fixes the ROM’ internal checksum in the header and prevents red-screen lockups
* furrtek's [rompadder](http://furrtek.free.fr/noclass/neogeo/pad.c)



#### Optional Tools (for coding and asset creation)

* [Visual Studio Code](https://code.visualstudio.com/)
  * [Motorola 68000 Assembly Extension](https://marketplace.visualstudio.com/items?itemName=clcxce.motorola-68k-assembly)
* [Imagenesis4000](http://devster.monkeeh.com/sega/imagenesis/)
* Aseprite

---

### Thanks in no particular order

**RedScorpion** (ASM help), **saturnu** (tech. support), **n00b** (grammar and spell checking), **Big Evil Corporation** (Tutorials), **Hugues Johnson** (Tutorials), **Markey Jester** (Tutorials), **krikzz** (Mega Everdrive Flashcarts)