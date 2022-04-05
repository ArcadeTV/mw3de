; #################################################################################################
; #                                   Translation (DE) / ROMHACK                                  #
; #                            Wonder Boy in Monster World (USA, Europe)                          #
; #                           for SEGA GENESIS - v0.1 2022-03-12, ArcadeTV                        #
; #################################################################################################


    include "includes/constants.asm"
    include "includes/vars.asm"
    include "includes/macros.asm"


    ; PATCHED LOCATIONS:
    include "includes/cheats.asm"
    include "includes/overwrites.asm"


    org     $A4C80 ; Free Space in ROM from here --------------------------------------------------


    ; MAIN CODE:
    include "includes/main.asm"
    include "includes/vint.asm"
    include "includes/joypad.asm"
    include "includes/soundtest.asm"


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

    include "includes/data/music_tracks.asm"


    ; Modified Textbox Styles Table:
    include "includes/data/textbox_styles.asm"


    ; Modified Sprite Tables:
    include "includes/sprite_tables.asm"


    ; GFX:
    include "includes/tilemaps.asm"
    include "includes/gfx_packs.asm"
    include "includes/westone_logo.asm"