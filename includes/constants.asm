; =================================================================================================
; CONSTANTS
; =================================================================================================

; Utility
; The size of a word and longword
size_word				    equ 2
size_long				    equ 4

; The size of one palette (in bytes, words, and longwords)
size_palette_b			    equ $20
size_palette_w			    equ size_palette_b/size_word
size_palette_l			    equ size_palette_b/size_long

; The size of one graphics tile (in bytes, words, and longwords)
size_tile_b				    equ $20
size_tile_w				    equ size_tile_b/size_word
size_tile_l				    equ size_tile_b/size_long


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
