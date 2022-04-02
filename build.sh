#!/bin/sh
clear
# -----------------------------------------------------------------------------------------------
# Check Source ROM
if [[ -f "./roms/Wonder Boy in Monster World (USA, Europe).md" ]]; then
	./tools/mac/checkhash "./roms/Wonder Boy in Monster World (USA, Europe).md" 6B2AC36F624F914AD26E32BAA87D1253AEA9DCFC13D2A5842ECDD2BD4A7A43B9 &> /dev/null && echo "Source ROM passed file check." || (echo -e "Incorrect Source Rom. Aborting." && exit 1)
else
	echo -e "echo Source ROM not found. Aborting." && exit 1
fi


# -----------------------------------------------------------------------------------------------
# delete any old versions
if [[ -f "./roms/Wonder Boy in Monster World (T-German).md" ]]; then
	rm "./roms/Wonder Boy in Monster World (T-German).md"
fi
echo "Deleted old ROM file">./tmp/build.log

find ./roms/ -maxdepth 1 -type f -name "*.zip" -delete 
echo "Deleted any old ZIP file(s)">./tmp/build.log

find ./roms/ -maxdepth 1 -type f -name "*.bps" -delete
echo "Deleted any old BPS file(s)">./tmp/build.log

# -----------------------------------------------------------------------------------------------
# create version file
cat << EOF >>./tmp/build.log
    dc.b " - $(date +%Y-%m-%d) - "
EOF
echo "Set version to $(date +%Y-%m-%d)">>./tmp/build.log


# -----------------------------------------------------------------------------------------------
# copy unmodified ROM and apply padding
# 8MBIT=1MBYTE=(8*128*1024)BYTES
cp "./roms/Wonder Boy in Monster World (USA, Europe).md" "./roms/padded_rom.bin">>./tmp/build.log 
(./tools/mac/pad ./roms/padded_rom.bin 1048576 255)>>./tmp/build.log


# -----------------------------------------------------------------------------------------------
# patch the ROM
echo "srecpatch output -------------------">>./tmp/build.log
./tools/mac/vasmm68k_mot ./patch_de.asm -quiet -chklabels -nocase -rangewarnings -Dvasm=1 -L ./tmp/Listing.txt -DBuildGEN=1 -Fbin -Fsrec -o ./tmp/srecfile.txt
./tools/mac/srecpatch "./roms/padded_rom.bin" "./roms/Wonder Boy in Monster World (T-German).md"<./tmp/srecfile.txt>>./tmp/build.log


# -----------------------------------------------------------------------------------------------
# remove tmp file
if [[ -f "./roms/padded_rom.bin" ]]; then
	rm "./roms/padded_rom.bin"
    echo "Deleted temp padded ROM file">>./tmp/build.log
fi


# -----------------------------------------------------------------------------------------------
# fix the checksum in the header
./tools/mac/fixheader "./roms/Wonder Boy in Monster World (T-German).md"


# -----------------------------------------------------------------------------------------------
# create bps patch file
./tools/mac/flips --create "./roms/Wonder Boy in Monster World (USA, Europe).md" "./roms/Wonder Boy in Monster World (T-German).md" "./roms/Wonder Boy in Monster World (T-German, ArcadeTV, WIPv$(date +%Y-%m-%d)).bps"


# -----------------------------------------------------------------------------------------------
# compress bps to zip for easy sharing
zip -X ./roms/mw3-de_wip$(date +%Y-%m-%d).zip ./roms/*.bps


echo "done!"