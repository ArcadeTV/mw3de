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

; CHEATS:_______0: Cheat disabled, 1: Cheats enabled
CHEAT_99GOLD  = 0                   ; Have 999999 Gold
CHEAT_UNLGOLD = 0                   ; Gold is not decreased upon purchases
CHEAT_HEARTS  = 0                   ; Have all hearts
CHEAT_INVINC  = 1                   ; Energy is not decreased upon getting hit

; =================================================================================================

    include "includes/constants.asm"
    include "includes/vars.asm"
    include "includes/macros.asm"


    ; PATCHED LOCATIONS:
    include "includes/overwrites.asm"


    org     $A4C80 ; Free Space in ROM from here --------------------------------------------------


    ; MAIN CODE:
    include "includes/main.asm"
    include "includes/vint.asm"


    ; TEXT DATA:
    include "includes/text/control_codes.asm"
    include "includes/text/menu.asm"

    include "includes/text/pntrs_dialogues.asm"
    include "includes/text/dialogues.asm"

    include "includes/text/pntrs_names.asm"
    include "includes/text/names.asm"

    include "includes/text/pntrs_items.asm"
    include "includes/text/items.asm"

    include "includes/text/pntrs_magic.asm"
    include "includes/text/magic.asm"

    include "includes/text/specialdialogues.asm"
    include "includes/text/pntrs_specialdialogues.asm"

    include "includes/text/pntrs_snippets.asm"
    include "includes/text/snippets.asm"

    include "includes/text/credits.asm"

    include "includes/text/ocarina.asm"
    
    include "includes/text/messages.asm"


    ; Modified Textbox Styles Table:
    include "includes/data/textbox_styles.asm"


    ; Modified Sprite Tables:
    include "includes/sprite_tables.asm"


    ; GFX:
    include "includes/tilemaps.asm"
    include "includes/gfx_packs.asm"
    include "includes/westone_logo.asm"