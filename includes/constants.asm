; =================================================================================================
; CONSTANTS
; =================================================================================================

; Utility
size_word                   equ 2
size_long                   equ 4

; German Chars (Umlaute)
cAE                         equ $F0 ; Ä
cOE                         equ $F1 ; Ö
cUE                         equ $F2 ; Ü
ae                          equ $F3 ; ä
oe                          equ $F4 ; ö
ue                          equ $F5 ; ü
ss                          equ $F6 ; ß

; VDP port addresses
vdp_control                 equ $00C00004
vdp_data                    equ $00C00000

; VDP commands
vdp_cmd_vram_write          equ $40000000

; VDP memory addresses
vram_addr_tiles             equ $0000
vram_addr_plane_a           equ $C000
vram_addr_plane_b           equ $E000

; Locations
locSpriteTable_logo         equ $A0E00
locSpriteTable_newGame      equ $A18A8
locSpriteTable_continue     equ $A18B8
locSpriteTable_pressStart   equ $A18C8
locSpriteTable_arrow        equ $A18E7
