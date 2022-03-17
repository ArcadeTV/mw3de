; =================================================================================================
; MENU TEXT DATA
; =================================================================================================

base_PointerTable_MenuItems:
    dc.w item1-base_PointerTable_MenuItems
    dc.w item2-base_PointerTable_MenuItems
    dc.w item3-base_PointerTable_MenuItems
    dc.w item4-base_PointerTable_MenuItems
    dc.w item5-base_PointerTable_MenuItems
    dc.w item6-base_PointerTable_MenuItems
    dc.w item7-base_PointerTable_MenuItems

item1:
    dc.b "INVENTAR",$00
item2:
    dc.b "WAFFE   ",$00
item3:
    dc.b "R",$F2,"STUNG ",$00
item4:
    dc.b "SCHILD   ",$00
item5:
    dc.b "SCHUHE  ",$00
item6:
    dc.b "TASCHE",$00
item7:
    dc.b "MAGIE",$00
