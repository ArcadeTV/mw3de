@echo off
CLS

REM -----------------------------------------------------------------------------------------------
REM delete any old versions

if exist ".\roms\Wonder Boy in Monster World (T-German).md" (
  DEL ".\roms\Wonder Boy in Monster World (T-German).md"
)


REM -----------------------------------------------------------------------------------------------
REM create version file

set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set VERSION=%CUR_YYYY%%CUR_MM%%CUR_DD%-%CUR_HH%%CUR_NN%%CUR_SS%
echo     dc.b " - %date% - ">.\includes\version.asm


REM -----------------------------------------------------------------------------------------------
REM copy unmodified ROM and apply padding

REM 8MBIT=1MBYTE=(8*128*1024)BYTES
copy ".\roms\Wonder Boy in Monster World (USA, Europe).md" ".\roms\padded_rom.bin" && .\tools\win\pad.exe .\roms\padded_rom.bin 1048576 255



REM -----------------------------------------------------------------------------------------------
REM patch the ROM

echo Building...
.\tools\win\vasmm68k_mot_win32.exe .\patch_de.asm -quiet -chklabels -nocase -rangewarnings -Dvasm=1 -L tmp\Listing.txt -DBuildGEN=1 -Fbin -Fsrec -o tmp\srecfile.txt
.\tools\win\srecpatch.exe ".\roms\padded_rom.bin" ".\roms\Wonder Boy in Monster World (T-German).md"<.\tmp\srecfile.txt >.\tmp\srecpatch.txt


REM -----------------------------------------------------------------------------------------------
REM remove tmp file

del ".\roms\padded_rom.bin" 


REM -----------------------------------------------------------------------------------------------
REM fix the checksum in the header

.\tools\win\fixheader.exe ".\roms\Wonder Boy in Monster World (T-German).md"


echo done!