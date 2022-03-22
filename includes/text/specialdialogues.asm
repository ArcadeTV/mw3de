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
    dc.b    cc_newline,cc_speed,$06
    dc.b    $0B,$03
special1_pntr_notEnoughGold:
    dc.w    special1_notEnoughGold-special1_pntr_notEnoughGold 
    dc.b    $0B,$07,$0B,$08,$FF,$0B,$09
special1_yes:
    dc.b    cc_newline,"Danke sehr.",cc_wait,cc_close
special1_no:
    dc.b    cc_speed,$06,cc_newline,cc_newline,"Nein?",cc_newline,"Das ist aber schade.",cc_newline,cc_wait
    dc.b    cc_newline,"Naja, vielleicht",cc_newline,"n",ae,"chstes Mal.",cc_newline,cc_wait,cc_close
special1_notEnoughGold:
    dc.b    $0B,$19,$35,cc_newline,cc_speed,$06
    dc.b    "Es tut mir leid,",cc_newline,"aber wenn Deine",cc_newline,"Taler nicht reichen,",cc_wait
    dc.b    cc_newline,"dann kannst Du",cc_newline,"es nicht kaufen.",cc_newline,cc_wait
    dc.b    "Schau doch nochmal",cc_newline,"vorbei, wenn Du mehr",cc_newline,"Gold hast.",cc_wait,cc_close

; Inn
special2:
    dc.b    $0A,$02,cc_speed,$06,cc_margin,$02
    dc.b    "Willkommen in",cc_newline,"meiner Pension.",cc_wait
    dc.b    cc_newline,cc_newline
    dc.b    "Ich kann Dir ein",cc_newline,"bequemes Bett",cc_newline,"anbieten.",cc_wait
    dc.b    cc_newline,cc_newline
    dc.b    "Das Zimmer kostet",$02,$0C,$05,cc_newline,"f",ue,"r eine Nacht.",cc_wait
    dc.b    cc_newline,cc_newline
    dc.b    "M",oe,"chtest Du bei",cc_newline,"uns ",ue,"bernachten?"
    dc.b    $0C,$00
    dc.b    $0B,$02,$03,$08
special2_p1:
    dc.w    special2_t_doNotStay-special2_p1 ; FE D6
    dc.b    cc_newline,cc_speed,$06
    dc.b    $0B,$03
special2_p2:
    dc.w    special2_t_notEnoughMoney-special2_p2 ; 00 09
    dc.b    $0B,$07
    dc.b    $0B,$15,$06
special2_p3:
    dc.w    special2_t_saveQuestion-special2_p3 ; 00 5B
special2_t_notEnoughMoney:
    dc.b    cc_newline,"Oh, Du kannst",cc_newline,"es Dir gerade",cc_newline,"nicht leisten?",cc_wait
    dc.b    cc_newline,"Das ist schon okay.",cc_newline,cc_newline,cc_wait
    dc.b    cc_newline,"Bezahle einfach",cc_newline,"so viel, wie Du",cc_newline,"entbehren kannst."
    dc.b    $0B,$10 
    dc.b    $0B,$15
special2_t_saveQuestion:
    dc.b    cc_newline,"M",oe,"chtest Du",cc_newline,"speichern?"
    dc.b    $0C,$00
    dc.b    $0B,$02,$03,$08
special2_p4:
    dc.w    special2_t_continueQuestion-special2_p4 ; 00 1A
    dc.b    cc_speed,$06
    dc.b    $09,$0B,$0B
    dc.b    "Dein Spiel",cc_newline,"wurde gespeichert.",cc_newline,cc_wait
special2_t_noSave:
special2_t_continueQuestion:
    dc.b    cc_speed,$06
    dc.b    cc_newline,cc_newline,"Wirst Du Deine",cc_newline,"Reise am Morgen",cc_newline,"fortsetzen?"
    dc.b    $0C,$00
    dc.b    $0B,$02,$03,$08
special2_p5:
    dc.w    special2_t_noContinue-special2_p5 ; 00 27
    dc.b    cc_newline,cc_speed,$06
    dc.b    "Gute Nacht,",cc_newline,"erhol Dich gut!",cc_newline,cc_wait
    dc.b    $0B,$0D,cc_close
special2_t_noContinue:
    dc.b    cc_newline,cc_speed,$06
    dc.b    "Wie schade,",cc_newline,"aber wir sehen",cc_newline,"uns wieder, ja?",cc_wait
    dc.b    cc_newline,"Gute Nacht.",cc_newline,cc_newline,cc_wait
    dc.b    $0B,$0C,cc_close
special2_t_doNotStay:
    dc.b    cc_newline,cc_speed,$06
    dc.b    "Besuche uns wieder,",cc_newline,"falls Du es Dir",cc_newline,"anders überlegst.",cc_wait,cc_close


special3:
    dc.b    "Hier wird noch an",cc_newline,"Special 3 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


special4:
    dc.b    $0B,$19,$18,$10,$20,$00


special5:
    dc.b    $0B,$19,$19,$11,$20,$00


special6:
    dc.b    $0B,$19,$1A,$12,$20,$00


special7:
    dc.b    $05,$0B,$22,$03,$08
    dc.b    $0B,$20
    dc.b    $0B,$32,$02
    dc.b    $0B,$1F,$00
    dc.b    $0B,$32,$05,$03,$00
    dc.b    $0B,$1E,$01,$02,$10,$20
    dc.b    $0B,$1F,$01,$02,$20,$11,$20
    dc.b    $0B,$1F,$02,$02,$20,$12,$20
    dc.b    $0B,$1F,$03
    dc.b    $0B,$21
    dc.b    $0B,$18,$1E
    dc.b    $0B,$20,$00

; Sonia, teaching ocarina melodies
special8:
    dc.b    cc_newline,cc_lock
    dc.b    "Dies ist die",cc_newline,"Melodie f",ue,"r die",cc_newline,"erste T",ue,"r."
    dc.b    $0B,$0A,$00,$0B,$1B,$0C,$08,$0F,$02
    dc.b    "Die n",ae,"chste Melodie",cc_newline,oe,"ffnet die",cc_newline,"zweite T",ue,"r."
    dc.b    $0B,$0A,$01,$0B,$1B,$0C,$09,$0F,$02
    dc.b    "Die letzte Melodie",cc_newline,oe,"ffnet die",cc_newline,"dritte T",ue,"r."
    dc.b    $0B,$0A,$02,$0B,$1B,$0C,$0A,$0F,$02,$08,$05,$09,$00 
    
    dc.b    $00