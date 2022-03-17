; #################################################################################################
; #                                   Translation (DE) / ROMHACK                                  #
; #                            Wonder Boy in Monster World (USA, Europe)                          #
; #                           for SEGA GENESIS - v0.1 2022-03-12, ArcadeTV                        #
; #################################################################################################
; =================================================================================================
; CHANGELOG
; =================================================================================================
; v1.1 : 2022-03-11
; - Moved planes A and B down a bit
; - Moved copyright text and icons down a bit
;
; v1.0 : 2022-03-09
; - Draw an entirely new logo on the title screen
; #################################################################################################

    include "includes/constants.asm"
    include "includes/macros.asm"

    ; MAIN CODE:
    include "includes/overwrites.asm"
    include "includes/main.asm"

    ; TEXT DATA:
    include "includes/text/control_codes.asm"
    include "includes/text/menu.asm"
    include "includes/text/pntrs_dialogues.asm"
    include "includes/text/dialogues.asm"

    ; Modified Sprite Tables:
    include "includes/sprite_tables.asm"

    ; GFX:
    include "includes/tilemaps.asm"
    include "includes/gfx_packs.asm"