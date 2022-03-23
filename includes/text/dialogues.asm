; =================================================================================================
; TEXT DATA: DIALOGUES
; Pointer Table: includes\text\pntrs_dialogues.asm
; =================================================================================================

textData_Dialogues:

; First textbox that pops up automatically upon game start in the house
text1: 
    dc.b    $0B,$11,$10
text1_p1:
    dc.w    text1_respawn-text1_p1
    dc.b    cc_speed,$06,$0A,$01,cc_margin,$01,cc_lock
    dc.b    cc_text,orange,$0C,$54," ",$0C,$67,cc_text,white," war",cc_newline,"einst ein friedvoller",cc_newline,"Ort."
    dc.b    cc_wait,cc_newline,cc_newline,cc_newline
    dc.b    "Doch der Frieden",cc_newline,"wurde gest",oe,"rt, als",cc_newline,"die Monster das Land",cc_wait,cc_newline
    dc.b    "wie eine Armee",cc_newline,ue,"berfielen.",cc_wait,cc_newline,cc_newline,cc_newline
    dc.b    "Ein junger Mann",cc_newline,"namens ",$01,$A0,$0E,$00,$01,$80," gelobte,",cc_newline,"sie zu besiegen",cc_wait,cc_newline
    dc.b    "und seinem Land",cc_newline,"den Frieden",cc_newline,"zur",ue,"ckzubringen.",cc_wait
    dc.b    cc_close
text1_respawn:
    dc.b    "Kommst Du bereits",cc_newline,"ins Schwitzen?",cc_newline,"Probiere es noch mal!"

; First sign after leaving the house
text2: 
    dc.b    $03,$08,$04,$02,"Willkommen in",$02,$04,$07,$0C,$54,$20,$0C,$67,$21,$20,cc_wait
    dc.b    cc_close


; Old lady in the tree
text3: 
    dc.b    $0C,$06,$0B,$12,$36
text3_pointer1:
    dc.w    text3_target1-text3_pointer1
    dc.b    $0B,$14,$36,"Wieder einmal ist",cc_newline,"unsere Welt bedroht.",cc_newline,cc_wait
    dc.b    "Die Prinzessin wurde",cc_newline,"aus Schlo",$F6," Purapril",cc_newline,"entf",ue,"hrt.",cc_wait,cc_newline,cc_newline
    dc.b    "Du solltest besser",cc_newline,"vorsichtig sein.",cc_newline,cc_wait,cc_newline
    dc.b    "Hier, ein ",$0B,$0A,$2A,$0C,$02,cc_newline,"und ein ",$0B,$08,$FF,$0B,$0A,$20,$0C,$02,$0B,$08,$FF,".",cc_newline,cc_wait
    dc.b    "Nimm sie mit Dir.",cc_wait
    dc.b    cc_newline,cc_newline,"Du mu",$F6,"t jederzeit",cc_newline,"bereit sein,",cc_newline,"Magie einzusetzen!",cc_wait,cc_close
text3_target1:
    dc.b    "Worauf wartest Du?",cc_newline,"Setz Dich in",cc_newline,"Bewegung!",cc_wait,cc_close


text4:
    dc.b    $0B,$14,$03,$04,$02,"Alsedo,",cc_fast,cc_margin,$04,"das Dorf der Feen.",cc_wait,cc_close


; Purapril Castle Entrance
text5: 
    dc.b    $0B,$14,$03,$04,$02,$0C,$5A," ",$0C,$45,$02,$04,$02,"Eingang",cc_wait,cc_close


text6: 
    dc.b    "Hier wird noch an",cc_newline,"Text 6 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text7: 
    dc.b    "Hier wird noch an",cc_newline,"Text 7 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text8: 
    dc.b    "Hier wird noch an",cc_newline,"Text 8 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text9: 
    dc.b    "Hier wird noch an",cc_newline,"Text 9 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text10: 
    dc.b    "Hier wird noch an",cc_newline,"Text 10 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text11: 
    dc.b    "Hier wird noch an",cc_newline,"Text 11 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text12: 
    dc.b    "Hier wird noch an",cc_newline,"Text 12 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text13: 
    dc.b    "Hier wird noch an",cc_newline,"Text 13 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


    ; Alsedo Shop: Spear
text14: 
    dc.b    $0B,$0A,$06,$0F,$00,cc_close


text15: 
    dc.b    "Hier wird noch an",cc_newline,"Text 15 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text16: 
    dc.b    "Hier wird noch an",cc_newline,"Text 16 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text17: 
    dc.b    "Hier wird noch an",cc_newline,"Text 17 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text18: 
    dc.b    "Hier wird noch an",cc_newline,"Text 18 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text19: 
    dc.b    "Hier wird noch an",cc_newline,"Text 19 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


    ; Alsedo Shop: Chain Mail
text20: 
    dc.b    $0B,$0A,$0D,$0F,$00,cc_close


text21: 
    dc.b    "Hier wird noch an",cc_newline,"Text 21 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text22: 
    dc.b    "Hier wird noch an",cc_newline,"Text 22 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text23: 
    dc.b    "Hier wird noch an",cc_newline,"Text 23 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text24: 
    dc.b    "Hier wird noch an",cc_newline,"Text 24 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text25: 
    dc.b    "Hier wird noch an",cc_newline,"Text 25 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text26: 
    dc.b    "Hier wird noch an",cc_newline,"Text 26 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text27: 
    dc.b    "Hier wird noch an",cc_newline,"Text 27 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


    ; Alsedo Shop: Shield
text28: 
    dc.b    $0B,$0A,$16,$0F,$00,cc_close


text29: 
    dc.b    "Hier wird noch an",cc_newline,"Text 29 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text30: 
    dc.b    "Hier wird noch an",cc_newline,"Text 30 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text31: 
    dc.b    "Hier wird noch an",cc_newline,"Text 31 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text32: 
    dc.b    "Hier wird noch an",cc_newline,"Text 32 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text33: 
    dc.b    "Hier wird noch an",cc_newline,"Text 33 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; First shop in a tree when looking at leather boots
text34: 
    dc.b $0B,$0A,$1D,$0F,$00,$00


text35: 
    dc.b    "Hier wird noch an",cc_newline,"Text 35 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text36: 
    dc.b    "Hier wird noch an",cc_newline,"Text 36 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text37: 
    dc.b    "Hier wird noch an",cc_newline,"Text 37 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text38: 
    dc.b    "Hier wird noch an",cc_newline,"Text 38 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text39: 
    dc.b    "Hier wird noch an",cc_newline,"Text 39 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text40: 
    dc.b    "Hier wird noch an",cc_newline,"Text 40 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Found Ocarina
text41: 
    dc.b    $0B,$19,$FC
    dc.b    cc_lock,cc_margin,$04,cc_speed,$06
    dc.b    "Oh, da ist",cc_newline,cc_margin,$06,"die "
    dc.b    $0B,$0A,$28,$0C,$02,$0B,$08,$28,$0B,$09,$0B,$19,$2D,$03,$A0,$21,$0B,$19,$FD
    dc.b    cc_wait,cc_close


text42: 
    dc.b    "Hier wird noch an",cc_newline,"Text 41 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text43: 
    dc.b    $0B,$0A,$2B,$0F,$00,$00


text44: 
    dc.b    "Hier wird noch an",cc_newline,"Text 44 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text45: 
    dc.b    "Hier wird noch an",cc_newline,"Text 45 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text46: 
    dc.b    "Hier wird noch an",cc_newline,"Text 46 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text47: 
    dc.b    "Hier wird noch an",cc_newline,"Text 47 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text48: 
    dc.b    "Hier wird noch an",cc_newline,"Text 48 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text49: 
    dc.b    "Hier wird noch an",cc_newline,"Text 49 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text50: 
text50_t1:
    dc.b    $0C,$06,$0B,$13,$10,$0B,$12,$39
text50_p2:
    dc.w    text50_t3-text50_p2
    dc.b    cc_jump
text50_p1:
    dc.w    text50_t2-text50_p1
text50_t3:
    dc.b    $0C,$65,$20,$74,$6F,$20,$0C,$5A,cc_newline,$0C,$45,$2E,cc_wait,cc_newline,cc_newline
    dc.b    $53,$74,$61,$79,$20,$61,$73,$20,$0C,$A1,$20,$61,$73,$20,$0C,$E6,cc_newline,$0C,$A0,$2E,cc_newline,cc_wait,cc_close
text50_t2:
    ;                                       Purapril
    dc.b    "Dies ist das Schlo",ss,cc_newline,cc_text,orange,$0C,$5A,cc_text,white,"!",cc_wait,cc_newline,cc_newline
    ; Entry is prohibited
    dc.b    "     Eintritt",cc_newline,"     verboten!",cc_newline,cc_wait,cc_newline
    ; Go away!
    dc.b    "    Geh weiter!",cc_newline,cc_wait,cc_close


text51: 
    dc.b    "Hier wird noch an",cc_newline,"Text 51 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Castle Guards #1
text52: 
    dc.b    $0B,$11,$10
text52_p1:
    dc.w    text52_t1-text52_p1 ; set pointer.w to target 1
    dc.b    cc_jump
text52_p2:
    dc.w    text50_t1-text52_p2 ; set pointer.w to (negative) target 2
    dc.b    $0C,$06
text52_t1: ; target 1
    dc.b    cc_margin,$02,cc_speed,$06,"Ich habe Dir gesagt,",cc_newline,"niemand darf das",cc_newline,"Schloss betreten.",cc_wait,cc_newline,cc_newline
    dc.b    "    Spreche ich",cc_newline,"    undeutlich?",cc_newline,cc_wait,cc_close


text53: 
    dc.b    "Hier wird noch an",cc_newline,"Text 53 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text54: 
    dc.b    $0B,$0E,$01,$0F,$01,$00


text55: 
    dc.b    $0C,$06,$0B,$11,$17
text55_p1:
    dc.w    text55_welcome-text55_p1 ; 00 36
    dc.b    "Oh, es tut mir leid, aber unser Lager ist leer."
    dc.b    $0B,$11,$1E
text55_p2:
    dc.w    text55_thankYou-text55_p2 ; 00 4B
text55_welcome:
    dc.b    "Willkommen bei",cc_newline,cc_text,orange,"Kishera",cc_text,white,".",cc_newline,cc_wait
    dc.b    "Schau Dich",cc_newline,"in Ruhe um.",cc_newline,cc_wait,cc_newline
    dc.b    "Wenn Du Fragen",cc_newline,"zu unseren",cc_newline,"Artikeln hast,",cc_newline,cc_wait
    dc.b    "stelle Dich",cc_newline,"davor und",cc_newline,"schau nach oben.",cc_wait,cc_close
text55_thankYou:
    dc.b    "Herzlichen Dank!",cc_wait,cc_close


; Alsedo Medicine Shop Felissimo, Keeper:
text56: 
    dc.b    $0C,$06,$0B,$11,$17
text56_p1:
    dc.w    text56_welcome-text56_p1 ; 00 3B
    dc.b    "Derzeit sind unsere",cc_newline,"Regale leider leer,",cc_newline,cc_wait,cc_newline
    dc.b    "aber wir haben",cc_newline,"bereits neue",cc_newline,"Ware bestellt.",cc_wait,cc_newline,cc_newline
    dc.b    "Komm doch sp",ae,"ter",cc_newline,"noch einmal",cc_newline,"bei uns vorbei.",cc_wait,cc_close
text56_welcome:
    dc.b    $0B,$11,$1E
text56_p2:
    dc.w    text56_useWithCaution-text56_p2 ; 00 31
    dc.b    "Willkommen bei",cc_newline,"Felissimo.",cc_newline,cc_wait,cc_newline
    dc.b    "Wir haben Medizin",cc_newline,"im Angebot.",cc_newline,cc_wait,cc_close
text56_useWithCaution:
    dc.b    "Verwende Medizin",cc_newline,"mit Sorgfalt!",cc_wait,cc_close


; Sonia, first encounter:
text57: 
    dc.b    $0C,$06
    dc.b    $0B,$12,$37 
text57_p1:
    dc.w    text64_thanks-text57_p1 ; 04D7
    dc.b    $0B,$17,$28 ; when having the ocarina
text57_p2:
    dc.w    text64-text57_p2 ; 0385: points to text64
    dc.b    $0B,$11,$26
text57_p3:
    dc.w    text59-text57_p3 ; points to text59
    dc.b    "Ich bin ",cc_text,orange,"Sonia",cc_text,white,".",cc_newline,cc_newline,cc_wait
    dc.b    cc_newline,"Das Dorf wird",cc_newline,"gerade von Monstern",cc_newline,"angegriffen.",cc_wait
    dc.b    cc_newline,"Ich verlasse mein",cc_newline,"Haus nicht mehr,",cc_newline,cc_wait,"daher kann",cc_newline,"ich nichts",cc_newline,"Genaueres sagen.",cc_wait
    dc.b    cc_newline,"Du solltest mit",cc_newline,cc_text,orange,"K",oe,"nigin Eleanora",cc_text,white,cc_newline,"sprechen.",cc_wait
    dc.b    cc_newline,"Um sie zu finden,",cc_newline,"schaue zwischen den",cc_newline,"Statuen nach oben.",cc_wait,cc_close


; Queen Eleanora:
text58: 
    dc.b    $0C,$06,$0B,$12,$5E
text58_p1:
    dc.w    text58_t1-text58_p1  
    dc.b    $0B,$12,$37,$04,$99
text58_t1:
    dc.b    $0B,$2F
text58_p2:
    dc.w    text58_t2-text58_p2  
    dc.b    $0B,$1D
    dc.b    $0B,$12,$5E,$05,$34
    dc.b    $0B,$13,$26
    dc.b    "Ich bin",cc_newline,cc_text,orange,"K",oe,"nigin Eleanora",cc_text,white,".",cc_newline,cc_wait
    dc.b    "Die Monster kommen",cc_newline,"aus der H",oe,"hle",cc_newline,"hinter dem Dorf.",cc_wait
    dc.b    cc_newline,"Bitte, kannst",cc_newline,"Du uns helfen?",cc_newline,cc_wait
    dc.b    cc_newline,cc_text,orange,"Priscilla",cc_text,white," wird",cc_newline,"Dich begleiten.",cc_newline,cc_wait
    dc.b    cc_newline,"Sie ist klein, aber",cc_newline,"sie wird an Deiner",cc_newline,"Seite k",ae,"mpfen.",cc_wait
    dc.b    cc_newline,cc_newline,"Sobald Du ",cc_text,orange,"Alsedo",cc_text,white,cc_newline," verl",ae,"sst,",cc_wait
    dc.b    cc_newline,"wird sie zu mir",cc_newline,"zur",ue,"ckkehren.",cc_newline,cc_wait,cc_close
text58_t2:
    dc.b    "Ist Priscilla",cc_newline,"eine Hilfe?",cc_newline
    dc.b    cc_wait,cc_close

; Sonia after visiting Queen Eleanora:
text59: 
    dc.b    $0B,$13,$25
    dc.b    "Du brauchst meine",cc_newline,cc_text,orange,"Okarina",cc_text,white,", um die T",ue,"r",cc_newline,"der H",oe,"hle zu ",oe,"ffnen,",cc_wait
    dc.b    cc_newline,"aber ich habe sie",cc_newline,"auf der Flucht vor",cc_newline,"den Monstern",cc_wait
    dc.b    cc_newline,"irgendwo im Wald",cc_newline,"verloren.",cc_newline,cc_wait,cc_close


text60: 
    dc.b    "Hier wird noch an",cc_newline,"Text 60 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text61: 
    dc.b    $0C,$06,$0B,$12,$37
text61_p1:
    dc.w    text61_t2-text61_p1 ; 00 8D
    dc.b    $0B,$11,$26
text61_p2:
    dc.w    text61_t1-text61_p2 ; 00 5F
    dc.b    "Wenn man einen",cc_newline,"Speer benutzt,",cc_wait,cc_newline
    dc.b    "kann man nicht",cc_newline,"gleichzeitig ein",cc_newline,"Schild halten.",cc_wait,cc_newline
    dc.b    "Dies sollte man bei",cc_newline,"der Wahl einer",cc_newline,"Waffe bedenken.",cc_wait,cc_close
text61_t1:
    dc.b    "Ist ",cc_text,orange,"K",oe,"nigin",cc_newline,"Eleanora",cc_text,white," nicht",cc_newline,"zauberhaft?",cc_wait,cc_close
text61_t2:
    dc.b    cc_text,orange,"K",oe,"nigin Eleanora",cc_text,white,cc_newline,"hat nach Dir",cc_newline,"gefragt.",cc_wait,cc_newline
    dc.b    "Warum gehst Du",cc_newline,"nicht zu ihr?",cc_wait,cc_close


; Alsedo Medicine Shop Felissimo, Customer:
text62: 
    dc.b    $0C,$06,$0B,$12,$37
text62_p1:
    dc.w    text62_thanks-text62_p1 ; 00 3B
    dc.b    "Wenn Du etwas ",ue,"ber",cc_newline,"die H",oe,"hlen",cc_newline,"wissen m",oe,"chtest,",cc_wait,cc_newline
    dc.b    "frage ",cc_text,orange,"Sonia",cc_text,white,".",cc_newline,"Sie kennt sich",cc_newline,"dort gut aus.",cc_wait,cc_close
text62_thanks:
    dc.b    "Das Dorf",cc_newline,"ist befreit.",cc_wait,cc_newline,cc_newline
    dc.b    "Wir alle sind",cc_newline,"Dir sehr dankbar.",cc_newline,cc_close


; Alsedo Inn: Good morning message after resting
text63: 
    dc.b    $0C,$06,$0B,$11,$10
text63_p1:
    dc.w    text63_t1-text63_p1
    dc.b    "Guten Morgen.",cc_newline,"Na, hast Du",cc_newline,"gut geschlafen?",cc_wait,cc_newline,cc_newline
    dc.b    "Viel Gl",ue,"ck",cc_newline,"auf Deinem Weg.",cc_newline,cc_wait,cc_close
text63_t1:
    dc.b    $54,$68,$61,$74,$20,$0C,$E0,$20,$0C,$7B,$2E,$05,$09,$09,$0C,$68,$20,$73,$68,$6F,$75,$6C,$64,$6E,$27,$74,$20,$0C,$CF,$09,$63,$68,$61,$6E,$63,$65,$73,$20,$0C,$A0,$20,$0C,$D2,$21,$09,$05,$09,$0C,$57,$20,$62,$65,$20,$0C,$A8,$09,$63,$61,$72,$65,$66,$75,$6C,$21,$09,$05,$00

; Sonia, havin the Ocarina
text64: 
    dc.b    $0B,$19,$FC,$0B,$12,$46
text64_p1:
    dc.w    text64_forgotten-text64_p1 ; 00 B6
    dc.b    $0B,$14,$46
    dc.b    "Oh, meine",cc_newline,cc_text,orange,"Okarina!",cc_text,white,cc_newline,cc_wait,cc_newline
    dc.b    "Du hast",cc_newline,"sie gefunden!",cc_newline,cc_wait,cc_newline
    dc.b    "Wenn man eine",cc_newline,"bestimmte Melodie",cc_newline,"auf ihr spielt,",cc_wait,cc_newline
    dc.b    "werden die Siegel",cc_newline,"der T",ue,"ren gebrochen.",cc_newline,cc_wait,cc_newline,cc_newline
    dc.b    "Nimm sie an Dich",cc_newline,"und benutze sie!",cc_newline,cc_wait,cc_newline
    dc.b    "Ich werde Dich nun",cc_newline,"die Melodien",cc_newline,"lehren.",cc_wait,cc_newline,cc_newline
    dc.b    "H",oe,"re gut zu!",cc_newline,cc_newline,cc_wait,cc_newline
    dc.b    $0F,$07 ; play music notes
    dc.b    "Denkst Du,",cc_newline,"Du hast die",cc_newline,"Melodien behalten?",cc_wait,cc_newline,cc_newline
    dc.b    "Spiele die ",cc_text,orange,"Okarina",cc_text,white,cc_newline,"in der H",oe,"hle.",cc_newline,cc_wait,cc_newline,cc_newline
    dc.b    "Wir sind Dir sehr",cc_newline,"dankbar f",ue,"r Deine",cc_newline,"Hilfe.",cc_wait,cc_close
text64_forgotten:
    dc.b    "Was, Du hast die",cc_newline,"Melodien bereits",cc_newline,"vergessen?",cc_wait,cc_newline,cc_newline
    dc.b    "Ein Mustersch",ue,"ler",cc_newline,"bist Du ja",cc_newline,"nicht gerade.",cc_wait,cc_newline,cc_newline
    dc.b    "Lass uns",cc_newline,"noch einmal",cc_newline,"zusammen ",ue,"ben.",cc_wait,cc_newline,cc_newline
    dc.b    "Es geht los!",cc_newline,cc_newline,cc_wait
    dc.b    $0F,$07 ; play music notes
    dc.b    "Kannst Du sie jetzt",cc_newline,"auswendig spielen?",cc_newline,cc_wait,cc_newline,cc_newline
    dc.b    "Wenn Du die",cc_newline,"Melodien wieder",cc_newline,"vergi",ss,"t,",cc_wait,cc_newline
    dc.b    "komm zu mir",cc_newline,"und wir ",ue,"ben",cc_newline,"noch einmal.",cc_wait
    dc.b    $0B,$19,$FD,cc_close
text64_thanks:
    dc.b    $0B,$12,$5A
text64_p2:
    dc.w    text64_last-text64_p2 ; 00 47
    dc.b    "Dank Dir",cc_newline,"ist das Dorf",cc_newline,"gerettet.",cc_wait,cc_newline,cc_newline
    dc.b    "Behalte die ",cc_text,orange,"Okarina",cc_text,white,cc_newline,"als Geschenk",cc_newline,"von mir.",cc_wait,cc_newline,cc_newline
    dc.b    "Vielleicht wird sie",cc_newline,"noch n",ue,"tzlich",cc_newline,"f",ue,"r Dich sein.",cc_wait,cc_close
text64_last:
    dc.b    "Hat sich die",cc_newline,cc_text,orange,"Okarina",cc_text,white," als",cc_newline,"n",ue,"tzlich erwiesen?",cc_wait,cc_close



text65: 
    dc.b    "Hier wird noch an",cc_newline,"Text 65 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text66: 
    dc.b    "Hier wird noch an",cc_newline,"Text 66 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text67: 
    dc.b    "Hier wird noch an",cc_newline,"Text 67 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text68: 
    dc.b    "Hier wird noch an",cc_newline,"Text 68 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text69: 
    dc.b    "Hier wird noch an",cc_newline,"Text 69 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text70: 
    dc.b    "Hier wird noch an",cc_newline,"Text 70 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text71: 
    dc.b    "Hier wird noch an",cc_newline,"Text 71 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text72: 
    dc.b    "Hier wird noch an",cc_newline,"Text 72 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text73: 
    dc.b    "Hier wird noch an",cc_newline,"Text 73 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text74: 
    dc.b    "Hier wird noch an",cc_newline,"Text 74 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text75: 
    dc.b    "Hier wird noch an",cc_newline,"Text 75 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; First shop, talking to the owner:
text76: 
    dc.b    $03,$06,$0A,$01,$04,$01
    dc.b    "Wir hatten seit",cc_newline,"Jahren keinen Kunden",cc_newline,"mehr hier.",cc_wait,cc_newline,cc_newline
    dc.b    "Du bist gerade",cc_newline,"erst aufgebrochen?",cc_newline,cc_wait,"Pa",ss," gut auf Dich auf!",cc_wait,cc_newline,cc_newline
    dc.b    "Hoffentlich hast",cc_newline,"Du keine Scheu",cc_newline,"vor "
    dc.w    cc_textOrange
    dc.b    "Quallen."
    dc.w    cc_textWhite
    dc.b    cc_wait,cc_close


text77: 
    dc.b    "Hier wird noch an",cc_newline,"Text 77 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text78: 
    dc.b    "Hier wird noch an",cc_newline,"Text 78 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text79: 
    dc.b    "Hier wird noch an",cc_newline,"Text 79 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text80: 
    dc.b    "Hier wird noch an",cc_newline,"Text 80 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text81: 
    dc.b    "Hier wird noch an",cc_newline,"Text 81 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text82: 
    dc.b    "Hier wird noch an",cc_newline,"Text 82 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text83: 
    dc.b    "Hier wird noch an",cc_newline,"Text 83 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text84: 
    dc.b    "Hier wird noch an",cc_newline,"Text 84 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text85: 
    dc.b    "Hier wird noch an",cc_newline,"Text 85 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text86: 
    dc.b    "Hier wird noch an",cc_newline,"Text 86 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text87: 
    dc.b    "Hier wird noch an",cc_newline,"Text 87 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text88: 
    dc.b    "Hier wird noch an",cc_newline,"Text 88 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text89: 
    dc.b    "Hier wird noch an",cc_newline,"Text 89 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text90: 
    dc.b    "Hier wird noch an",cc_newline,"Text 90 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text91: 
    dc.b    "Hier wird noch an",cc_newline,"Text 91 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text92: 
    dc.b    "Hier wird noch an",cc_newline,"Text 92 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text93: 
    dc.b    "Hier wird noch an",cc_newline,"Text 93 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text94: 
    dc.b    "Hier wird noch an",cc_newline,"Text 94 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text95: 
    dc.b    "Hier wird noch an",cc_newline,"Text 95 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text96: 
    dc.b    "Hier wird noch an",cc_newline,"Text 96 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text97: 
    dc.b    "Hier wird noch an",cc_newline,"Text 97 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text98: 
    dc.b    "Hier wird noch an",cc_newline,"Text 98 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text99: 
    dc.b    "Hier wird noch an",cc_newline,"Text 99 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text100:
    dc.b    "Hier wird noch an",cc_newline,"Text 100 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text101:
    dc.b    "Hier wird noch an",cc_newline,"Text 101 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text102:
    dc.b    "Hier wird noch an",cc_newline,"Text 102 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text103:
    dc.b    "Hier wird noch an",cc_newline,"Text 103 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text104:
    dc.b    "Hier wird noch an",cc_newline,"Text 104 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text105:
    dc.b    "Hier wird noch an",cc_newline,"Text 105 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text106:
    dc.b    "Hier wird noch an",cc_newline,"Text 106 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text107:
    dc.b    "Hier wird noch an",cc_newline,"Text 107 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text108:
    dc.b    "Hier wird noch an",cc_newline,"Text 108 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text109:
    dc.b    "Hier wird noch an",cc_newline,"Text 109 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text110:
    dc.b    "Hier wird noch an",cc_newline,"Text 110 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text111:
    dc.b    "Hier wird noch an",cc_newline,"Text 111 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text112:
    dc.b    "Hier wird noch an",cc_newline,"Text 112 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text113:
    dc.b    "Hier wird noch an",cc_newline,"Text 113 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text114:
    dc.b    "Hier wird noch an",cc_newline,"Text 114 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text115:
    dc.b    "Hier wird noch an",cc_newline,"Text 115 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text116:
    dc.b    "Hier wird noch an",cc_newline,"Text 116 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text117:
    dc.b    "Hier wird noch an",cc_newline,"Text 117 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text118:
    dc.b    "Hier wird noch an",cc_newline,"Text 118 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text119:
    dc.b    "Hier wird noch an",cc_newline,"Text 119 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text120:
    dc.b    "Hier wird noch an",cc_newline,"Text 120 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text121:
    dc.b    "Hier wird noch an",cc_newline,"Text 121 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text122:
    dc.b    "Hier wird noch an",cc_newline,"Text 122 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text123:
    dc.b    "Hier wird noch an",cc_newline,"Text 123 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text124:
    dc.b    "Hier wird noch an",cc_newline,"Text 124 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text125:
    dc.b    "Hier wird noch an",cc_newline,"Text 125 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text126:
    dc.b    "Hier wird noch an",cc_newline,"Text 126 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text127:
    dc.b    "Hier wird noch an",cc_newline,"Text 127 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text128:
    dc.b    cc_lock
    dc.b    "Willkommen zu Hause,",cc_newline
    dc.b    cc_text,orange,"Shion",cc_text,white,"!",cc_newline,cc_wait,cc_newline,
    dc.b    "Ich bin so froh,",cc_newline,"dass Du wohlauf bist.",cc_newline,cc_wait,cc_newline,
    dc.b    "Ich werde Dich",cc_newline,"nie vergessen,"cc_wait,cc_newline,
    dc.b    "niemals."
    dc.b    $0C,$83,$2E
    dc.b    $0B,$18,$48
    dc.b    cc_close

text129:
    dc.b    cc_lock
    dc.b    "Achtung, das Kind",cc_newline,"ist in Gefahr!",cc_wait,cc_close


text130:
    dc.b    cc_lock
    dc.b    "   LEBENSGEFAHR!",cc_newline
    dc.b    "Wüstengebiet voraus.",cc_wait,cc_close


text131: 
    dc.b    cc_lock
    dc.b    "Jeder der kleiner",cc_newline,"als dieses",cc_newline,"Schild ist,",cc_newline
    dc.b    "wird es nicht",cc_newline,"bewegen können.",cc_wait,cc_close


    dc.b    cc_close