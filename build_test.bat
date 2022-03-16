@echo off
CLS
..\TOOLS\vasmm68k_mot_win32.exe test.asm -chklabels -nocase -rangewarnings -Dvasm=1 -L tmp\Listing.txt -DBuildGEN=1 -Fbin -spaces -o roms\test.bin