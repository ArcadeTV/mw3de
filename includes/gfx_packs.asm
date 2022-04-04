    ; GFX PACKS:
    
    align 2

; New Logo: (Type 02=compressed)

newLogoGFX_pack1:
    incbin "includes/bin/gfx/pack1.cbin"
    even
newLogoGFX_pack2:
    incbin "includes/bin/gfx/pack2.cbin"
    even
newLogoGFX_pack3:
    incbin "includes/bin/gfx/pack3.cbin"
    even
newLogoGFX_pack4:
    incbin "includes/bin/gfx/pack4.cbin"
    even
newLogoGFX_pack5:
    incbin "includes/bin/gfx/pack5.cbin"
    even
newLogoGFX_pack6:
    incbin "includes/bin/gfx/pack6.cbin"
    even


; Exit Sign: (Type 02=compressed)

newExitGFX_pack:
    incbin "includes/bin/gfx/exitsign.cbin"
    even


; Title Screen Text: (Type 02=compressed)

newTitleTxtGFX_pack1:
    incbin "includes/bin/gfx/pack7.cbin"
    even
newTitleTxtGFX_pack2:
    incbin "includes/bin/gfx/pack8.cbin"
    even
newTitleTxtGFX_pack3:
    incbin "includes/bin/gfx/pack9.cbin"
    even


; Custom Characters:

fontGFX_pack_de:
    incbin "includes/bin/gfx/font_de_umlaute.cbin"  ; Custom localized chars and icons
fontGFX_pack_c:
    incbin "includes/bin/gfx/font_c.cbin"           ; changed character "c" because it looked like "e"

    align 2


; The End / To Be Continued Texts:

tileData_theEnd_de:
    incbin "includes/bin/gfx/theEnd_tiledata[32x2](13).bin"
    incbin "includes/bin/gfx/toBeContinued_tiledata[32x2](53).bin"
tileData_theEnd_de_end:
    even


; Inn Signs: (Type 02=compressed)

newInnSign_Alsedo_GFX_pack:
    incbin "includes/bin/gfx/pack10.cbin" ; Alsedo
    even
newInnSign_Purapril_GFX_pack:
    incbin "includes/bin/gfx/pack11.cbin" ; Purapril
    even
newInnSign_Lilypad_GFX_pack:
    incbin "includes/bin/gfx/pack12.cbin" ; Lilypad
    even
newInnSign_Begonia_GFX_pack:
    incbin "includes/bin/gfx/pack13.cbin" ; Begonia
    even
newInnSign_Childam_GFX_pack:
    incbin "includes/bin/gfx/pack14.cbin" ; Childam
    even


; GAME OVER (Type 02=compressed)

GameOver_GFX_pack:
    incbin "includes/bin/gfx/pack15.cbin"
    even



; Potions (Type 01=uncompressed)

Potions_GFX_pack1:
    incbin "includes/bin/gfx/pack16.bin" ; Medicine, Potion
    even
Potions_GFX_pack2:
    incbin "includes/bin/gfx/pack17.bin" ; Holy Water, Hi-Potion
    even



; Font for SoundTest:

font:
    incbin "includes/bin/gfx/font.bin"
    even