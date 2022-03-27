#!/bin/sh
#cat << EOF >  '    dc.b " - '$(date +%Y-%m-%d)' - "' > .\includes\version.asm
cat << EOF > ./includes/version.asm
    dc.b " - $(date +%Y-%m-%d) - "
EOF
./tools_mac/vasmm68k_mot ./patch_de.asm -quiet -chklabels -nocase -rangewarnings -Dvasm=1 -L ./tmp/Listing.txt -DBuildGEN=1 -Fbin -Fsrec -o ./tmp/srecfile.txt
./tools_mac/srecpatch "./roms/Wonder Boy in Monster World (USA, Europe).md" "./roms/Wonder Boy in Monster World (T-German).md"<./tmp/srecfile.txt >./tmp/srecpatch.txt
./tools_mac/fixheader "./roms/Wonder Boy in Monster World (T-German).md"