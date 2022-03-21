; =================================================================================================
; TEXT DATA: SPECIAL DIALOGUES
; Custom Chars: German Umlaute
;
; F0=Ä     F3=ä
; F1=Ö     F4=ö
; F2=Ü     F5=ü
; F6=ß
;
; Pointer Table: includes\text\pntrs_specialdialogues.asm
; =================================================================================================

textData_SpecialDialogues:

; Shop Items
special1:
    dc.b    $0C,$06,"Du hast ein Auge",cc_newline,"für gute Ware. ",cc_newline,cc_wait
    dc.b    $0C,$02,",",cc_newline,"heute f",ue,"r ",$0C,$03,cc_newline,"im Angebot.",cc_wait
    dc.b    cc_newline
    dc.b    "Möchtest Du es",cc_newline,"kaufen?"
    dc.b    $0C,$00,$0B,$02,$03,$08,$00,$27,$09,$03,$06,$0B,$03,$00,$68,$0B,$07,$0B,$08,$FF,$0B,$09
special1_p2:
    dc.w    special1_t2-special1_p2
    dc.b    cc_newline
    dc.b    cc_speed,$06
    dc.b    $0B,$03,$00,$68,$0B,$07,$0B,$08,$FF,$0B,$09,$09
special1_t1:
    dc.b    "Danke sehr.",cc_wait,cc_close
special1_t2:
    dc.b    "Nein? Das ist aber schade. Naja, vielleicht nächstes Mal."
special1_t3:
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
