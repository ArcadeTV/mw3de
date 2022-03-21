; =================================================================================================
; MENU TEXT DATA
; =================================================================================================
    
    align 2

base_PointerTable_MenuItems:
    dc.w mitem1-base_PointerTable_MenuItems
    dc.w mitem2-base_PointerTable_MenuItems
    dc.w mitem3-base_PointerTable_MenuItems
    dc.w mitem4-base_PointerTable_MenuItems
    dc.w mitem5-base_PointerTable_MenuItems
    dc.w mitem6-base_PointerTable_MenuItems
    dc.w mitem7-base_PointerTable_MenuItems

mitem1:
    dc.b "INVENTAR",$00
mitem2:
    dc.b "WAFFE   ",$00
mitem3:
    dc.b "R",ue,"STUNG ",$00
mitem4:
    dc.b "SCHILD   ",$00
mitem5:
    dc.b "SCHUHE  ",$00
mitem6:
    dc.b "TASCHE",$00
mitem7:
    dc.b "MAGIE",$00
