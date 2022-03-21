; =================================================================================================
; TEXT DATA: SPECIAL DIALOGUES
; Pointer Table: includes\text\pntrs_specialdialogues.asm
; =================================================================================================

textData_SpecialDialogues:

; Shop Items
special1:
    dc.b    $0C,$06,"Du hast ein Auge",cc_newline,"f",ue,"r gute Ware. ",cc_newline,cc_wait
    dc.b    $0C,$02,",",cc_newline,"heute f",ue,"r",$0C,$03,cc_newline,"im Angebot.",cc_wait
    dc.b    cc_newline
    dc.b    "M",oe,"chtest Du das",cc_newline,"kaufen?"
    dc.b    $0C,$00
    dc.b    $0B,$02,$03,$08 ; show yes/no options
special1_pntr_wantToBuy:
    dc.w    special1_no-special1_pntr_wantToBuy ; 00 27
    dc.b    $09,$03,$06,$0B,$03
special1_pntr_notEnoughGold:
    dc.w    special1_notEnoughGold-special1_pntr_notEnoughGold 
    dc.b    $0B,$07,$0B,$08,$FF,$0B,$09
special1_yes:
    dc.b    cc_newline,"Danke sehr.",cc_wait,cc_close
special1_no:
    dc.b    cc_speed,$06,cc_newline,cc_newline,"Nein?",cc_newline,"Das ist aber schade.",cc_newline,cc_wait
    dc.b    cc_newline,"Naja, vielleicht",cc_newline,"nächstes Mal.",cc_newline,cc_wait,cc_close
special1_notEnoughGold:
    dc.b    $0B,$19,$35,cc_newline,cc_speed,$06
    dc.b    "Es tut mir leid,",cc_newline,"aber wenn Deine",cc_newline,"Taler nicht reichen,",cc_wait
    dc.b    cc_newline,"dann kannst Du",cc_newline,"es nicht kaufen.",cc_newline,cc_wait
    dc.b    "Schau doch nochmal",cc_newline,"vorbei, wenn Du mehr",cc_newline,"Gold hast.",cc_wait,cc_close


special2:
    dc.b "Hier wird noch an",cc_newline,"Special 2 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

special3:
    dc.b "Hier wird noch an",cc_newline,"Special 3 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

special4:
    dc.b "Hier wird noch an",cc_newline,"Special 4 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

special5:
    dc.b "Hier wird noch an",cc_newline,"Special 5 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

special6:
    dc.b "Hier wird noch an",cc_newline,"Special 6 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

special7:
    dc.b "Hier wird noch an",cc_newline,"Special 7 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

special8:
    dc.b "Hier wird noch an",cc_newline,"Special 8 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close
