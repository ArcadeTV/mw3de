@echo off
CLS
..\TOOLS\vasmm68k_mot_win32.exe .\patch_de.asm -quiet -chklabels -nocase -rangewarnings -Dvasm=1 -L tmp\Listing.txt -DBuildGEN=1 -Fbin -Fsrec -o tmp\srecfile.txt
..\TOOLS\srecpatch.exe ".\roms\Wonder Boy in Monster World (USA, Europe).md" .\roms\patched.md<.\tmp\srecfile.txt >.\tmp\srecpatch.txt
..\TOOLS\fixheader.exe roms\patched.md