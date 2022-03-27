@echo off
CLS
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set VERSION=%CUR_YYYY%%CUR_MM%%CUR_DD%-%CUR_HH%%CUR_NN%%CUR_SS%
echo     dc.b " - %date% - ">.\includes\version.asm

echo Building...
.\tools\win\vasmm68k_mot_win32.exe .\patch_de.asm -quiet -chklabels -nocase -rangewarnings -Dvasm=1 -L tmp\Listing.txt -DBuildGEN=1 -Fbin -Fsrec -o tmp\srecfile.txt
.\tools\win\srecpatch.exe ".\roms\Wonder Boy in Monster World (USA, Europe).md" ".\roms\Wonder Boy in Monster World (T-German).md"<.\tmp\srecfile.txt >.\tmp\srecpatch.txt
.\tools\win\fixheader.exe ".\roms\Wonder Boy in Monster World (T-German).md"
echo done!