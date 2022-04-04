@echo off
CLS

REM -----------------------------------------------------------------------------------------------
REM Check Source ROM

IF EXIST ".\roms\Wonder Boy in Monster World (USA, Europe).md" (
	.\tools\win\checkhash.exe ".\roms\Wonder Boy in Monster World (USA, Europe).md" 6B2AC36F624F914AD26E32BAA87D1253AEA9DCFC13D2A5842ECDD2BD4A7A43B9 > NUL && echo Source ROM passed file check. || echo Incorrect Source Rom. Aborting. && exit /b
) ELSE (
	echo Source ROM not found. Aborting.
  exit /b
)



REM -----------------------------------------------------------------------------------------------
REM delete any old versions

if exist ".\roms\Wonder Boy in Monster World (T-German).md" (
  DEL ".\roms\Wonder Boy in Monster World (T-German).md"
  echo Deleted old ROM file>.\tmp\build.log
)
if exist .\roms\*.zip (
  DEL .\roms\*.zip
  echo Deleted old ZIP file>.\tmp\build.log
)
if exist .\roms\*.bps (
  DEL .\roms\*.bps
  echo Deleted old BPS file>.\tmp\build.log
)

REM -----------------------------------------------------------------------------------------------
REM create version file

set VERSION=%date:/=.%
echo     dc.b " - %VERSION% - ">.\includes\version.asm
echo Set version to %VERSION%>>.\tmp\build.log


REM -----------------------------------------------------------------------------------------------
REM copy unmodified ROM and apply padding

REM 8MBIT=1MBYTE=(8*128*1024)BYTES
copy ".\roms\Wonder Boy in Monster World (USA, Europe).md" ".\roms\padded_rom.bin">>.\tmp\build.log && .\tools\win\pad.exe .\roms\padded_rom.bin 1048576 255>>.\tmp\build.log



REM -----------------------------------------------------------------------------------------------
REM patch the ROM

echo Building...
.\tools\win\vasmm68k_mot_win32.exe .\patch_de.asm -quiet -chklabels -nocase -rangewarnings -Dvasm=1 -L tmp\Listing.txt -DBuildGEN=1 -Fbin -Fsrec -o tmp\srecfile.txt
.\tools\win\srecpatch.exe ".\roms\padded_rom.bin" ".\roms\Wonder Boy in Monster World (T-German).md"<.\tmp\srecfile.txt>>.\tmp\build.log


REM -----------------------------------------------------------------------------------------------
REM remove tmp file

if exist ".\roms\padded_rom.bin" (
  DEL ".\roms\padded_rom.bin" 
  echo Deleted temp padded ROM file>>.\tmp\build.log
)


REM -----------------------------------------------------------------------------------------------
REM fix the checksum in the header

.\tools\win\fixheader.exe ".\roms\Wonder Boy in Monster World (T-German).md"
echo fixed header checksum>>.\tmp\build.log



REM -----------------------------------------------------------------------------------------------
REM create bps patchfile

.\tools\win\flips.exe --create ".\roms\Wonder Boy in Monster World (USA, Europe).md" ".\roms\Wonder Boy in Monster World (T-German).md" ".\roms\Wonder Boy in Monster World (T-German, ArcadeTV, WIPv%VERSION%).bps"


REM -----------------------------------------------------------------------------------------------
REM create zip from the bps file

cd /D roms
..\tools\win\7z.exe a mw3-de_wip(%VERSION%).zip *.bps>>..\tmp\build.log
cd /D ..


echo done!