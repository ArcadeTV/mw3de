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


; Alsedo Sign
text4:
    dc.b    $0B,$14,$03,$04,$02,"Alsedo,",cc_fast,cc_margin,$04,"das Dorf der Feen.",cc_wait,cc_close


; Purapril Castle Entrance
text5: 
    dc.b    $0B,$14,$03,$04,$02,$0C,$5A," ",$0C,$45,$02,$04,$02,"Eingang",cc_wait,cc_close


; Maugham Desert Sign
text6: 
    dc.b    $0B,$14,$03,$04,$01
    dc.b    "Maugham W",ue,"ste"
    dc.b    $02,$04,$01
    dc.b    "Betreten auf",cc_newline,"eigene Gefahr!"
    dc.b    cc_wait,cc_close


; Lilypad Sign
text7: 
    dc.b    $0B,$14,$03,$04,$02
    dc.b    "Lilypad,"
    dc.b    $02,$04,$04
    dc.b    "das Zwergendorf"
    dc.b    cc_wait,cc_close


; Begonia Sign
text8: 
    dc.b    $0B,$14,$03,$04,$02
    dc.b    "Begonia,"
    dc.b    $02,$04,$04
    dc.b    "das Drachendorf"
    dc.b    cc_wait,cc_close


; Childam Sign
text9: 
    dc.b    $0B,$14,$03,$04,$01
    dc.b    "Childam,"
    dc.b    $02,$04,$02
    dc.b    "das Schattendorf"
    dc.b    cc_wait,cc_close


; Purapril Sign
text10: 
    dc.b    $0B,$14,$03,$04,$02
    dc.b    "Purapril,"
    dc.b    $02,$04,$04
    dc.b    "das Aqua-Kapitol"
    dc.b    cc_wait,cc_close


text11: 
    dc.b    $0B,$0A,$01,$0F,$00,cc_close


text12: 
    dc.b    $0B,$0A,$02,$0F,$00,cc_close


text13: 
    dc.b    $0B,$0A,$04,$0F,$00,cc_close


; Alsedo Shop: Spear
text14: 
    dc.b    $0B,$0A,$06,$0F,$00,cc_close


text15: 
    dc.b    $0B,$0A,$08,$0F,$00,cc_close


text16: 
    dc.b    $0B,$0A,$09,$0F,$00,$00


text17: 
    dc.b    $0B,$0A,$0A,$0F,$00,$00


text18: 
    dc.b    $0B,$0A,$0B,$0F,$00,$00


text19: 
    dc.b    $0B,$0A,$0C,$0F,$00,$00


    ; Alsedo Shop: Chain Mail
text20: 
    dc.b    $0B,$0A,$0D,$0F,$00,cc_close


text21: 
    dc.b    $0B,$0A,$0E,$0F,$00,$00


text22: 
    dc.b    $0B,$0A,$10,$0F,$00,$00


text23: 
    dc.b    $0B,$0A,$11,$0F,$00,$00


text24: 
    dc.b    $0B,$0A,$12,$0F,$00,$00


text25: 
    dc.b    $0B,$0A,$13,$0F,$00,$00


text26: 
    dc.b    $0B,$0A,$14,$0F,$00,$00


text27: 
    dc.b    $0B,$0A,$15,$0F,$00,$00


    ; Alsedo Shop: Shield
text28: 
    dc.b    $0B,$0A,$16,$0F,$00,cc_close


text29: 
    dc.b    $0B,$0A,$18,$0F,$00,$00


text30: 
    dc.b    $0B,$0A,$19,$0F,$00,$00


text31: 
    dc.b    $0B,$0A,$1A,$0F,$00,$00


text32: 
    dc.b    $0B,$0A,$1B,$0F,$00,$00


text33: 
    dc.b    $0B,$0A,$1C,$0F,$00,$00


; First shop in a tree when looking at leather boots
text34: 
    dc.b $0B,$0A,$1D,$0F,$00,$00


text35: 
    dc.b    $0B,$0A,$20,$0F,$00,$00


text36: 
    dc.b    $0B,$0A,$21,$0F,$00,$00


text37: 
    dc.b    $0B,$0A,$23,$0F,$00,$00


text38: 
    dc.b    $0B,$0A,$64,$0F,$00,$00


text39: 
    dc.b    $0B,$0A,$25,$0F,$00,$00


text40: 
    dc.b    $0B,$0A,$2A,$0F,$00,$00


; Found Ocarina
text41: 
    dc.b    $0B,$19,$FC
    dc.b    cc_lock,cc_margin,$04,cc_speed,$06
    dc.b    "Oh, da ist",cc_newline,cc_margin,$06,"die "
    dc.b    $0B,$0A,$28,$0C,$02,$0B,$08,$28,$0B,$09,$0B,$19,$2D,$03,$A0,$21,$0B,$19,$FD
    dc.b    cc_wait,cc_close


; Purapril: Sundry Shop: Charmstone
text42: 
    dc.b    $0B,$0A,$29,$0F,$00,$00


text43: 
    dc.b    $0B,$0A,$2B,$0F,$00,$00


text44: 
    dc.b    $0B,$0A,$2C,$0F,$00,$00


text45: 
    dc.b    $0B,$0A,$2D,$0F,$00,$00


text46: 
    dc.b    $0B,$0A,$2E,$0F,$00,$00


text47: 
    dc.b    $0B,$0E,$02,$0F,$01,$00


text48: 
    dc.b    $0B,$0A,$12,$0F,$00,$00


text49: 
    dc.b    $0B,$0A,$22,$0F,$00,$00


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



;I hear that peace has returned to Alsedo.
;It appears that the village of Alsedo is being attacked. 
text51: 
    dc.b    $0C,$06,$0B,$12,$39
text51_p1:
    dc.w    text51_AlsedoBeingAttacked-text51_p1 ; 00 05
    dc.b    cc_jump
text51_p2:
    dc.w    text51_AlsedoBeingAttacked-text51_p2 ; 00 20
text51_PeaceHasReturned:
    dc.b    "Ich h",oe,"rte, dass",cc_newline,"Alsedo wieder",cc_newline,"friedlich ist.",cc_wait,cc_close
text51_AlsedoBeingAttacked:
    dc.b    "Es scheint, dass",cc_newline,"das Dorf Alsedo",cc_newline,"angegriffen wird.",cc_wait,cc_close


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


; Bacchus Shop
; Looks like we're sold out of everything. Come on back some other time. 
; Welcome to Bacchus, a store with a reputation for good service. We have great confidence in the products we sell. 
text53: 
    dc.b    $0C,$06,$0B,$11,$17
text53_p1:
    dc.w    text53_welcome-text53_p1 ; 00 34
    dc.b    "Leider ist gerade",cc_newline,"alles ausverkauft.",cc_newline,cc_wait,cc_newline,cc_newline
    dc.b    "Da mu",ss,"t Du wohl",cc_newline,"sp",ae,"ter noch einmal",cc_newline,"wiederkommen.",cc_wait,cc_close
text53_welcome:
    dc.b    "Willkommen beim",cc_newline,"alten Bacchus.",cc_newline,cc_wait,cc_newline,cc_newline
    dc.b    "Wir sind bekannt",cc_newline,"f",ue,"r unseren",cc_newline,"guten Service.",cc_wait,cc_newline
    dc.b    "In unsere Ware",cc_newline,"setzen wir",cc_newline,"vollstes Vertrauen.",cc_wait,cc_close
text53_useWisely: ; todo
    dc.b    "Setze diese Waffe",cc_newline,"weise ein!",cc_wait,cc_close

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
    dc.b    "Wenn Du Fragen",cc_newline,"zu unseren",cc_newline,"Artikeln hast,",cc_wait,cc_newline
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
; 0C 06 0B 12 5E (00 07) 0B 12 37 (04 99) 0B 2F (00 D3) 0B 1D 0B 12 5E (05 34) 0B 13 26
text58: 
    dc.b    $0C,$06,$0B,$12,$5E
text58_p1:
    dc.w    text58_t1-text58_p1 ; 00 07
    dc.b    $0B,$12,$37
text58_p2:
    dc.w    text65-text58_p2 ; 04 99
text58_t1:
    dc.b    $0B,$2F
text58_p3:
    dc.w    text58_isPriscillaHelping-text58_p3  
    dc.b    $0B,$1D
    dc.b    $0B,$12,$5E
text58_p4:
    dc.w    text65_howsItGoing-text58_p4 ; 05 34
    dc.b    $0B,$13,$26
    dc.b    "Ich bin",cc_newline,cc_text,orange,"K",oe,"nigin Eleanora",cc_text,white,".",cc_newline,cc_wait
    dc.b    "Die Monster kommen",cc_newline,"aus der H",oe,"hle",cc_newline,"hinter dem Dorf.",cc_wait
    dc.b    cc_newline,"Bitte, kannst",cc_newline,"Du uns helfen?",cc_newline,cc_wait
    dc.b    cc_newline,cc_text,orange,"Priscilla",cc_text,white," wird",cc_newline,"Dich begleiten.",cc_newline,cc_wait
    dc.b    cc_newline,"Sie ist klein, aber",cc_newline,"sie wird an Deiner",cc_newline,"Seite k",ae,"mpfen.",cc_wait
    dc.b    cc_newline,cc_newline,"Sobald Du ",cc_text,orange,"Alsedo",cc_text,white,cc_newline," verl",ae,"sst,",cc_wait
    dc.b    cc_newline,"wird sie zu mir",cc_newline,"zur",ue,"ckkehren.",cc_newline,cc_wait,cc_close
text58_isPriscillaHelping:
    dc.b    "Ist Priscilla",cc_newline,"eine Hilfe?",cc_newline
    dc.b    cc_wait,cc_close


; Sonia after visiting Queen Eleanora:
text59: 
    dc.b    $0B,$13,$25
    dc.b    "Du brauchst meine",cc_newline,cc_text,orange,"Okarina",cc_text,white,", um die T",ue,"r",cc_newline,"der H",oe,"hle zu ",oe,"ffnen,",cc_wait
    dc.b    cc_newline,"aber ich habe sie",cc_newline,"auf der Flucht vor",cc_newline,"den Monstern",cc_wait
    dc.b    cc_newline,"irgendwo im Wald",cc_newline,"verloren.",cc_newline,cc_wait,cc_close


text60: 
    dc.b    $0B,$0E,$03,$0F,$01,$00


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
    dc.b    "Wir alle sind",cc_newline,"Dir sehr dankbar.",cc_newline,cc_wait,cc_close


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
    dc.b    $0B,$1D,$0B,$14,$5E
    dc.b    "Ich danke Dir im",cc_newline,"Namen der Feen.",cc_newline,cc_wait,cc_newline
    dc.b    "In ",cc_text,orange,"Alsedo",cc_text,white," ist",cc_newline,"wieder Frieden",cc_newline,"eingekehrt.",cc_wait,cc_newline,cc_newline
    dc.b    "Gehe durch den",cc_newline,"gro",ss,"en Baum,",cc_wait,cc_newline
    dc.b    "so wirst Du",cc_newline,cc_text,orange,"Purapril",cc_text,white," erreichen.",cc_wait,cc_newline,cc_newline
    dc.b    "Solltest Du jemals",cc_newline,"die Hilfe der",cc_newline,"Feen ben",oe,"tigen,",cc_wait,cc_newline
    dc.b    "komme zur",ue,"ck und",cc_newline,"sprich mit mir.",cc_wait,cc_newline
    dc.b    "Ich stehe ewig",cc_newline,"in Deiner Schuld.",cc_newline,cc_wait,cc_close
text65_howsItGoing:
    dc.b    "Wie ergeht es Dir",cc_newline,"auf Deiner Reise?",cc_newline,cc_wait
    dc.b    "Deine Hilfe wird",cc_newline,"noch an anderen",cc_newline,"Orten ben",oe,"tigt.",cc_wait,cc_newline,cc_newline
    dc.b    "Gehe jetzt",cc_wait,cc_newline,cc_newline
    dc.b    "und tue was in",cc_newline,"Deiner Macht steht,",cc_newline,"um sie zu befreien.",cc_wait,cc_close

text66: 
    dc.b    $0B,$0E,$04,$0F,$01,$00


; Oh oh, looks like everything's gone. Come around again sometime.
; Buy something, will you? If you don't, I'll start breathing fire!
; Oh, thank you. You're rolling in dough,aren't you?
text67: 
    dc.b    $0C,$06,$0B,$11,$17
text67_p1:
    dc.w    text67_buySomething-text67_p1 ; 00 2F
    dc.b    "Oh oh, ich bin",cc_newline,"leider v",oe,"llig",cc_newline,"gepl",ue,"ndert.",cc_wait,cc_newline,cc_newline
    dc.b    "Komm doch",cc_newline,"sp",ae,"ter noch",cc_newline,"einmal rein.",cc_wait,cc_close
text67_buySomething:
    dc.b    $0B,$11,$1E
text67_p2:
    dc.w    text67_thankYou-text67_p2 ; 00 3C
    dc.b    "Nun kauf",cc_newline,"endlich etwas!",cc_newline,cc_wait,cc_newline,cc_newline
    dc.b    "Es k",oe,"nnte sein,",cc_newline,"dass ich sonst",cc_newline,"Feuer speie.",cc_wait,cc_close
text67_thankYou:
    dc.b    "Oh, danke.",cc_newline,"Du schwimmst wohl",cc_newline,"in Geld, was?",cc_wait,cc_close



; What? I've got nothing to sell! I guess the shop is closed now...
; Find anything you like?
text68: 
    dc.b    $0C,$06,$0B,$11,$17
text68_p1:
    dc.w    text68_findAnything-text68_p1 ; 00 36
    dc.b    "Ich habe nichts",cc_newline,"zu verkaufen!",cc_wait,cc_newline,cc_newline
    dc.b    "Der Laden",cc_newline,"ist geschlossen...",cc_wait,cc_close
text68_findAnything:
    dc.b    "Gefällt Dir etwas?",cc_newline,cc_newline,cc_wait,cc_close



; I would create a sword from the Old Axe, but a necessary item to do so has been stolen from me. 
; With the Fire-Urn, I can create a sword from the Old Axe. It will take some time. 
; The Elder Dragon was calling for you a while ago so why don't you go and see him? 
; It's not ready yet. Please wait just a little longer. 
; It's finished! Here you go. 
; Use its legendary powers and save Monster World for us! 
text69: 
    dc.b    $0C,$06
    dc.b    $0B,$17,$00
text69_p1:
    dc.w    text69_useItsPowers-text69_p1 ; 01 47
    dc.b    $0B,$12,$4E
text69_p2:
    dc.w    text69_finished-text69_p2 ; 01 24
    dc.b    $0B,$12,$4D
text69_p3:
    dc.w    text69_notReadyYet-text69_p3 ; 00 F1
    dc.b    $0B,$17,$39
text69_p4:
    dc.w    text69_withFireUrn-text69_p4 ; 00 55
    dc.b    "Ich k",oe,"nnte ein feines",cc_newline,"Schwert aus der alten",cc_newline,"Axt schmieden,",cc_wait,cc_newline
    dc.b    "aber etwas das ich",cc_newline,"daf",ue,"r ben",oe,"tige",cc_newline,"wurde mir gestohlen.",cc_wait,cc_close
text69_withFireUrn:
    dc.b    $0B,$14,$4D
    dc.b    "Mit der Feuer-Urne",cc_newline,"kann ich die alte Axt",cc_newline,"einschmelzen,",cc_wait,cc_newline
    dc.b    "um ein Schwert",cc_newline,"daraus zu schmieden.",cc_newline,cc_wait,cc_newline,cc_newline
    dc.b    "Es wird aber",cc_newline,"eine Weile dauern.",cc_newline,cc_wait,cc_newline,cc_newline
    dc.b    "Der Drachen",ae,"lteste",cc_newline,"hatte bereits nach",cc_newline,"Dir verlangt.",cc_wait,cc_newline
    dc.b    "Geh zu ihm",cc_newline,"w",ae,"hrend ich arbeite.",cc_newline,cc_wait,cc_close
text69_notReadyYet:
    dc.b    "Ich bin noch nicht",cc_newline,"fertig. Du mu",ss,"t Dich",cc_newline,"noch etwas gedulden.",cc_wait,cc_close
text69_finished:
    dc.b    "Es ist fertig!",cc_newline,"Bitte sehr.",cc_newline,cc_wait
    dc.b    $0B,$08,$00,$05,$00
text69_useItsPowers:
    dc.b    "Dieses Schwert ist",cc_newline,"sehr m",ae,"chtig.",cc_newline,cc_wait,cc_newline
    dc.b    "Benutze es und werde",cc_newline,"der legend",ae,"re Held,",cc_newline,"der uns alle rettet!",cc_wait,cc_close


; One of the children of my village has been kidnapped. I don't want to see anyone. Do me a favor and just go away. 
; Please... You're the one who saved the child? I am eternally grateful to you. 
; You're a hero. Now you should meet Poseidon. He is in a perpetual sleep at the bottom of the sea. In order to swim underwater, you need Poseidon's Trident. Unfortunately, the monsters have gotten their claws on it... 
; You found the Trident! Now you're able to swim underwater. Go find Poseidon! 
text70: 
    dc.b    "Hier wird noch an",cc_newline,"Text 70 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Looks like I'm a storekeeper with nothing to sell! HA, HA, HA, HA... 
; Welcome to Gooningle's. I may not have the best shop in the land, but there's not a friendlier store keeper around! 
; Now that's a fine piece, isn't it?
text71: 
    dc.b    "Hier wird noch an",cc_newline,"Text 71 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; I'm terribly sorry, but I seem to be out of stock. 
; Welcome to Drapnell sundry goods. 
; Thank you. Be sure to use magic carefully. 
text72: 
    dc.b    "Hier wird noch an",cc_newline,"Text 72 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Rise and shine! 
; You're wasting precious daylight! 
; Get enough rest? Good! Good luck to you! 
; Boy, that was a close call. Better keep your eyes open. 
text73: 
    dc.b    "Hier wird noch an",cc_newline,"Text 73 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; At last you've come. I knew you would appear before too long. Now, you must search for the Old Axe hidden in Ice World. To get to Ice World, you'll need this special Bracelet. 
; Shion takes the Bracelet. 
; I already gave you the Bracelet. 
; So, you've managed to get your hands on the Old Axe. The Blacksmith will give you all the details. 
; This boy is my grandson. Take him with you, for I belive he can be of some help. You must hurry. Find the Old Axe and then return to me. 
; The deciding battle is now at hand. After receiving the Legendary Sword from the Blacksmith, go to the Bell Tower at Purapril Castle and point the sword toward the sky. 
; Emerge victorious and return safely! We're counting on you! 
text74: 
    dc.b    "Hier wird noch an",cc_newline,"Text 74 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Purapril: Sundry Shop
; I'm terribly sorry, but I seem to be out of stock. 
; Welcome to Sundry. See anything you like? 
; The Charmstone is... wait a minute! I'm not going to tell you that! 
text75:
    dc.b    $0C,$06,$0B,$11,$17
text75_p1:
    dc.w    text75_welcome-text75_p1 ; 00 27
    dc.b    "Ich bin",cc_newline,"untr",oe,"stlich,",cc_newline,"mein Herr,",cc_wait,cc_newline
    dc.b    "aber es ist",cc_newline,"gerade alles",cc_newline,"ausverkauft.",cc_wait,cc_close
text75_welcome:
    dc.b    "Willkommen bei",cc_newline,"Sundry.",cc_wait,cc_newline,cc_newline
    dc.b    "Haben Sie schon",cc_newline,"etwas ins Auge",cc_newline,"gefasst, mein Herr?",cc_wait,cc_close
text75_charmstone: ; todo
    dc.b    "Der Charmstein ist",cc_wait,".",cc_wait,".",cc_wait,cc_newline,cc_newline
    dc.b    "Hey, einen",cc_newline,"Moment mal,",cc_newline,"mein Herr.",cc_wait,cc_newline,cc_newline
    dc.b    "Das werde ich",cc_newline,"Ihnen nicht",cc_newline,"verraten!",cc_wait,cc_close


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


; Maugham Desert is a forbidding place. 
; It is said that one who wears the Oasis Boots can cross the desert. 
; It looks like the store over there is open. 
text77: 
    dc.b    "Hier wird noch an",cc_newline,"Text 77 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; I know of a dwarf village deep in the woods that lie ahead. I believe it's called Lilypad. 
; The well at Purapril Castle is connected to the sea by an underground waterway. 
; It's only a rumor, but I've heard of a house that's hidden somewhere in town. 
text78: 
    dc.b    "Hier wird noch an",cc_newline,"Text 78 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; My younger brother, Hotta, has been taken by the monsters. What am I going to do? The monsters have a den just beyond the village. Could they be holding Hotta there? 
; You're the one who saved my brother! He wants to go with you. You know, he just may be able to help you. Don't go too far, though... 
; My brother seems to have grown very fond of you. Please take him out again sometime. 
; Thank you again for your help. Has my brother been able to help you at all? He's very good at finding hidden rooms, you know. 
text79: 
    dc.b    "Hier wird noch an",cc_newline,"Text 79 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text80: 
    dc.b    $03,$06,$04,$04,$0B,$0A,$05,$0C,$02,$0B,$08,$05,$0B,$09,cc_wait,cc_close


; You've done well to find this place, but I'm afraid I don't speak to anyone not holding a Charmstone. 
; How about trading your Charmstone for this Heart? 
; Oh, you will trade. How about that! Come back anytime, friend. 
; No deal, eh? Well, come on back some other time. 
; Oh, sorry. Your Heart supply can't get any larger. 
; If you have two Charmstones, I can increase your magical powers. 
; How about trading me those two Charmstones for some new magic? 
; Oh, you will trade! Great! Come on by anytime you're in the area. 
; Oh, well. Can't win'em all. Hope to see you again. 
; Oh, my mistake. You can't handle any more magic. Sorry about that.  
text81: 
    dc.b    "Hier wird noch an",cc_newline,"Text 81 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; The Myconid!
text82: 
    dc.b    cc_lock,cc_margin,$02
    dc.b    "Der Mykonid!"
    dc.b    $0B,$18,$1E,cc_wait,cc_close


; It looks like the store is closed. 
text83: 
    dc.b    "Hier wird noch an",cc_newline,"Text 83 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Sold out? I'm not surprised. 
; Guess it's time to head out and collect some more weapons. 
; Hey, come on in and help us celebrate the Grand Opening of our shop. 
; This is Wanderer, the finest weapon shop in the land. 
; Back again, eh? 
; Nothing but the best for my customers. 
; I've collected these items on my many journeys.  
text84: 
    dc.b    "Hier wird noch an",cc_newline,"Text 84 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; It's locked
text85: 
    dc.b    "Hier wird noch an",cc_newline,"Text 85 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Sheila Purapril after the rescue:
text86: 
    dc.b    $0C,$06
    dc.b    "Ich wurde hier",cc_newline,"gefangen gehalten.",cc_newline,cc_wait,cc_newline
    dc.b    "Bitte folge mir",cc_newline,"in den Thronsaal.",cc_newline,cc_wait,cc_newline
    dc.b    "Ich m",oe,"chte Dir",cc_newline,"geb",ue,"hrend danken.",cc_newline,cc_wait,cc_close


; Maid#1 near Castle Hall:
; The gate to the castle has been opened. Why don't you go on inside?
text87: 
    dc.b    $0C,$06
    dc.b    $0B,$14,$3B
    dc.b    "Das Tor zum Schlo",ss,cc_newline,"wurde ge",oe,"ffnet.",cc_newline,cc_wait,cc_close


; If you have the Amulet, you can find the shrine at the bottom of the sea. 
; Let me have your Ocarina and I'll tell you where to find the Amulet. What do you say? 
; There's a door hidden amidst four palm trees. From there you should be able to find the Amulet. 
; Oh, that's too bad. If you need my help, drop by again. 
; Did you forget what I told you? OK. Find four palm trees, then find the door that's hidden amidst them. Good luck. 
; If you have the Amulet, the shrine will appear right before your eyes. 
; So you're the legendary hero! Now maybe my father will be able to get a decent night's sleep. 
text88: 
    dc.b    "Hier wird noch an",cc_newline,"Text 88 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; You're here at last. The legendary hero. The Elder Dragon is waiting for you. Before you meet him, though, visit the Sphinx to increase your strength. There's a Pyramid just beyond the Maugham Desert. 
; An item that will help you cross the desert is hidden somewhere in this shrine. Find it and then go see the Sphinx. 
; What are you dilly- dallying about for? Many people await your help. 
; I'm going back to sleep. 
; He's already in a deep sleep. 
text89: 
    dc.b    "Hier wird noch an",cc_newline,"Text 89 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; The princess has returned safely. I'm so relieved. 
; The princess is waiting. 
; Make yourself at home. 
text90: 
    dc.b    "Hier wird noch an",cc_newline,"Text 90 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; The door has been sealed. 
text91: 
    dc.b    "Hier wird noch an",cc_newline,"Text 91 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Sphinx quiz: 
; 17 characters max per line, 5 lines total
; line-break is 02 instead of 05 in this dialogue
; $0B20 clears the box
text92: 
    dc.b    $0B,$23,cc_speed,$06,cc_lock
    dc.b    "So, da bist Du.",cc_wait
    dc.b    $0B,$20
    dc.b    "Du hast es Dir",$02,"vielleicht schon",$02,"dedacht, aber",$02
    dc.b    "ich bin",$02,"die ",cc_text,orange,"Sphinx",cc_text,white,"!",cc_wait
    dc.b    $0B,$20
    dc.b    "Ich habe eine",$02,"Schw",ae,"che f",ue,"r",$02,"R",ae,"tsel,",cc_wait
    dc.b    $0b,$20
    dc.b    "aber das hast Du",$02,"bestimmt schon",$02,"geh",oe,"rt.",cc_wait
    dc.b    $0B,$20
    dc.b    "Ich sage Dir, was",$02,"nun geschieht.",$02
    dc.b    "Wir spielen ein",$02,"kleines Spiel.",cc_wait
    dc.b    $0B,$20
    dc.b    "Ich stelle Dir",$02,"einige Fragen.",$02
    dc.b    "F",ue,"nf an der Zahl,",$02,"um genau zu sein.",cc_wait
    dc.b    $0B,$20
    dc.b    "Beantwortest Du",$02,"alle korrekt,",$02
    dc.b    "geht Deine",$02,"Reise weiter.",cc_wait
    dc.b    $0B,$20
    dc.b    "Dann bef",oe,"rdere",$02,"ich Dich in eine",$02,"neue Welt.",cc_wait
    dc.b    $0B,$20
    dc.b    "Bist Du bereit?",cc_wait
    dc.b    $0B,$20,cc_speed,$00
    dc.b    "Hier kommt die",$02,"erste Frage."
    dc.b    $0F,$06
    dc.b    "Ich stelle jetzt",$02,"die zweite Frage."
    dc.b    $0F,$06
    dc.b    "Mal schauen,",$02,"ob Du die",$02,"dritte Frage",$02,"beantworten",$02,"kannst."
    dc.b    $0F,$06
    dc.b    "Die vierte Frage."
    dc.b    $0F,$06
    dc.b    "Es folgt die",$02,"letzte Frage."
    dc.b    $0F,$06
    dc.b    $0B,$20
    dc.b    $0B,$24
text92_p1:
    dc.w    text92_noneCorrect-text92_p1    ; 00 0C
text92_p2:
    dc.w    text92_oneCorrect-text92_p2     ; 00 52
text92_p3:
    dc.w    text92_twoCorrect-text92_p3     ; 00 81
text92_p4:
    dc.w    text92_threeCorrect-text92_p4   ; 00 B5
text92_p5:
    dc.w    text92_fourCorrect-text92_p5    ; 00 F1
text92_p6:
    dc.w    text92_allCorrect-text92_p6     ; 01 22
    
text92_noneCorrect:
    dc.b    "Das war",$02,"miserabel.",$02,"Hast Du etwa jede",$02,"Antwort geraten?",cc_wait
    dc.b    $02,$02
    dc.b    "Bedauernswert.",$02,$02,$02,$02,cc_wait,".",cc_wait,".",cc_wait
    dc.b    cc_close
text92_oneCorrect:
    dc.b    "Eine einzige,",$02,"mickrige,",$02,"korrekte Antwort.",cc_wait
    dc.b    $02,$02
    dc.b    "So kommst Du",$02,"nicht an mir",$02,"vorbei...",cc_wait
    dc.b    cc_close
text92_twoCorrect:
    dc.b    "Zwei richtige",$02,"Antworten reichen",$02,"leider nicht.",cc_wait
    dc.b    $02,$02
    dc.b    "Komm wieder und",$02,"versuche es",$02,"noch einmal!",cc_wait
    dc.b    cc_close
text92_threeCorrect:
    dc.b    "Das war",$02,"nicht schlecht,",cc_wait,$02
    dc.b    "aber auch nicht",$02,"gut genug.",$02,cc_wait
    dc.b    $02,$02
    dc.b    "Du hast",$02,"drei richtige",$02,"Antworten",$02,"gegeben.",$02,cc_wait
    dc.b    $02,$02
    dc.b    "Gib Dir M",ue,"he,",$02,"Du k",oe,"nntest es",$02,"noch schaffen.",$02,$02,cc_wait
    dc.b    cc_close
text92_fourCorrect:
    dc.b    "Du hast FAST alle",$02,"Fragen korrekt",$02,"beantwortet.",$02,$02,cc_wait
    dc.b    $02,$02
    dc.b    "Ich bin kein",$02,"Spielverderber,",$02
    dc.b    "also lasse",$02,"ich Dich",$02,"passieren.",cc_wait
    dc.b    $02,$02
    dc.b    cc_close
text92_allCorrect:
    dc.b    "Ich bin entz",ue,"ckt.",cc_wait
    dc.b    $02,$02
    dc.b    "Du hast",$02,"alle Fragen",$02,"korrekt",$02,"beantwortet.",$02,cc_wait
    dc.b    $02,$02
    dc.b    "M",oe,"ge die Magie",$02,"des Donners",$02,"Deine Belohnung",$02,"sein.",$02,cc_wait
    dc.b    $02,$02
    dc.b    "Du darfst",$02,"passieren.",$02,$02,$02,cc_wait
    dc.b    $0F,$08
    dc.b    cc_close


; The Elder Dragon has something he wishes to discuss with you. Please go to him now. 
; Only one bearing the Ancient Axe can enter the volcano. 
; I saw someone carring the Fire- Urn and preparing to enter the volcano.  
text93: 
    dc.b    "Hier wird noch an",cc_newline,"Text 93 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; The shop is closed.
text94: 
    dc.b    "Hier wird noch an",cc_newline,"Text 94 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text95: 
    dc.b    $0C,$06,$0B,$12,$3F
text95_p1:
    dc.w    text95_safeJourney-text95_p1 ; 00 BC
    dc.b    $0B,$14,$5B
    dc.b    "Mein Name ist",cc_newline,cc_text,orange,"  Shiela Purapril.",cc_text,white,cc_newline,cc_wait,cc_newline
    dc.b    "Ich danke Dir",cc_newline,"f",ue,"r meine Rettung.",cc_newline,cc_wait,cc_newline
    dc.b    "Ich h",oe,"rte von",cc_newline,"Deiner Reise",cc_wait,cc_newline
    dc.b    "und dass Du Dich",cc_newline,"den Monstern",cc_newline,"entgegenstelltest.",cc_wait,cc_newline,cc_newline
    dc.b    "Daher bitte ich Dich,",cc_newline,"in das Dorf",cc_newline,cc_text,orange,"Lilypad",cc_text,white," zu gehen.",cc_wait,cc_newline,cc_newline
    dc.b    "Deine Bem",ue,"hungen",cc_newline,"sollen nicht",cc_newline,"umsonst sein.",cc_wait,cc_newline,cc_newline
    dc.b    "Achte auf Dich und",cc_newline,"sei Dir der Gefahr",cc_newline,"durch die Monster",cc_newline,"stets bewu",ss,"t.",cc_wait,cc_newline,cc_newline
    dc.b    "Ich danke Dir",cc_newline,"noch einmal.",cc_newline,cc_wait,cc_close
    dc.b    $0B,$12,$42
text95_p2:
    dc.w    text95_safeJourney-text95_p2 ; 00 49
    dc.b    $0C,$61,$20,$0C,$E6,$20,$0C,$6B,$2E,$05
text95_safeJourney:
    dc.b    "Ich hoffe, Du",cc_newline,"hattest eine",cc_newline,"sichere Reise.",cc_wait,cc_newline,cc_newline
    dc.b    "Man sagt, Du",cc_newline,"seist der Held",cc_newline,"aus der Legende.",cc_wait,cc_close
text95_desert:
    dc.b    $0B,$12,$44
text95_p3:
    dc.w    text95_iceCastle-text95_p3; 00 38
    dc.b    "Ist es wahr,",cc_newline,"dass Du die W",ue,"ste",cc_newline,"durchquert hast?"
    dc.b    "Das ist",cc_newline,"in der Tat",cc_newline,"bemerkenswert.",cc_wait,cc_close
text95_iceCastle:
    dc.b    "Ich h",oe,"rte, Du bist",cc_newline,"im Eisschlo",ss,cc_newline,"gewesen.",cc_wait,cc_newline
    dc.b    "Sei bitte sehr,",cc_newline,"sehr vorsichtig!",cc_newline,cc_wait
    dc.b    "Ich mache mir gro",ss,"e",cc_newline,"Sorgen um Dich.",cc_newline,cc_wait,cc_close


; The Sphinx!
text96: 
    dc.b    cc_lock,$04,$03,$0C,$62,$20,$0C,$5F,$21,$0B,$18,$1E
    dc.b    cc_wait,cc_close


; The Bracelet has begun to glow. 
text97: 
    dc.b    "Hier wird noch an",cc_newline,"Text 97 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; The seal is broken. 
text98: 
    dc.b    "Hier wird noch an",cc_newline,"Text 98 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Forgive me, but we seem to be sold out. Please come again. 
; Thank you for coming. This is the weapon shop known as Labyrinth. 
; Thank you very much. What an excellent choice! 
text99: 
    dc.b    "Hier wird noch an",cc_newline,"Text 99 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; It looks like I'm a storekeeper with nothing to sell! Ha, ha, ha, ha... 
; Well, come on in. Take your time. 
text100:
    dc.b    "Hier wird noch an",cc_newline,"Text 100 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


text101:
    dc.b    $0B,$0E,$05,$0F,$01,$00


; You're the legendary hero I've heard so much about. 
; The item you're looking for is in Ice Castle. Be warned-it's a frightening place. 
; Take Shabo with you, in case you need help. The Old Axe, in its original form, is of no use to you. 
; You'd better return to Begonia and see the Blacksmith. 
; You're finally starting to look like a hero. 
; It appears that my job is done. Now, your final battle will no doubt be fierce, but I'm confident that you'll triumph and that will be allowed to return to our land.  
text102:
    dc.b    "Hier wird noch an",cc_newline,"Text 102 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; To enter the volcano, you must enter the room on the other side of this door, but in order to enter, you must have the following items: the Pygmy Sword, Pygmy Armor, Pygmy Shield, and Pygmy Boots. 
; You have satisfied the requirements. You may enter. 
; One of the items is missing. Continue your search. 
; You need two more items. Continue your search. 
; You have only one of the four you need. Continue your search. 
; You have yet to find even one of the items. You must find all four.  
text103:
    dc.b    "Hier wird noch an",cc_newline,"Text 103 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

; Gragg & Glagg!
text104:
    dc.b    "Hier wird noch an",cc_newline,"Text 104 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

; The Ice Bomber! 
text105:
    dc.b    "Hier wird noch an",cc_newline,"Text 105 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

; The Tyrant Dragon! 
text106:
    dc.b    "Text 106.",cc_wait,cc_close

; The Almighty Demon King!
text107:
    dc.b    "Text 107.",cc_wait,cc_close


; Maid in room before Bell Tower:
; I've heard that the Sphinx in the Pyramid likes quizzes.
text108:
    dc.b    $0C,$06
    dc.b    "Ich habe geh",oe,"rt, die",cc_newline,cc_text,orange,"Sphinx",cc_text,white," in der",cc_newline,"Pyramide mag R",ae,"tsel.",cc_wait,cc_close

; Maid#2 near Castle Hall:
; If you have a certain special item, you can swim underwater.  
text109:
    dc.b    "Hier wird noch an",cc_newline,"Text 109 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Maid near Bell Tower:
; The star crest on this Bell Tower is the same as the insignia on the weapon of the legendary hero. 
; The princess told me this a long time ago. 
text110:
    dc.b    $0C,$06
    dc.b    "Man erkennt den",cc_newline,"Helden am Sternwappen",cc_newline,"auf seinem Schwert.",cc_wait,cc_newline
    dc.b    "Es ist das gleiche,",cc_newline,"wie an unserem",cc_newline,"Glockenturm.",cc_wait,cc_newline,cc_newline
    dc.b    "Die Prinzessin",cc_newline,"hat mir das vor",cc_newline,"langer Zeit erz",ae,"hlt.",cc_wait,cc_close


; You're very strong. 
; I hope one day I'll be so strong. 
; It is said that there's a shrine at the bottom of the sea, but no one's ever been able to find the entrance. 
text111:
    dc.b    "Hier wird noch an",cc_newline,"Text 111 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; I am the Prince of DarkWorld, and you must be the legendary hero. 
; I was under the control of Biomeka, a deadly creature from outer space, but I'm alright now. 
; Thank you for coming to my aid.... 
text112:
    dc.b    "Hier wird noch an",cc_newline,"Text 112 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Some hero. Is that the best you can do?
; Well, watch this!
text113:
    dc.b    "Hier wird noch an",cc_newline,"Text 113 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Not too bad, eh? Now, let's see if you've got what it takes. 
text114:
    dc.b    "Hier wird noch an",cc_newline,"Text 114 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; You're really going to go,aren't you... Can't you stay with me? 
; No, you're the legendary hero. You must go. Be sure to come back safely. I'll be waiting right here for you. 
text115:
    dc.b    "Hier wird noch an",cc_newline,"Text 115 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; There's a convenient slot.... 
; Shion inserts the Gold Gem. 
; The Gem doesn't fit! 
text116:
    dc.b    "Hier wird noch an",cc_newline,"Text 116 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Shion inserts the Blue Gem.
text117:
    dc.b    "Hier wird noch an",cc_newline,"Text 117 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; A secret lies in the surface of the walls of Ice Castle.
text118:
    dc.b    "Hier wird noch an",cc_newline,"Text 118 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; Do you know where the prince went? 
; I think he's gone to Nightmare Castle. 
; He's probably attempting to collect the legendary weapons. 
; It looks as though he's got all but one of them...  
text119:
    dc.b    "Hier wird noch an",cc_newline,"Text 119 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; It's sealed. 
text120:
    dc.b    "Hier wird noch an",cc_newline,"Text 120 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; You can ride a jellyfish!
text121:
    dc.b    " Keine Angst vor Quallen!",cc_wait,cc_close


; The monsters have come and made this their home, so no one may enter! 
text122:
    dc.b    "Hier wird noch an",cc_newline,"Text 122 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close



; Finally, the long, treacherous journey has reached its end. 
text123:
    dc.b    "Hier wird noch an",cc_newline,"Text 123 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

; None of the people in Monster World will ever forget what they've been through, 
text124:
    dc.b    "Hier wird noch an",cc_newline,"Text 124 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

; nor will they forget the hero who gave their lives back to them. 
text125:
    dc.b    "Hier wird noch an",cc_newline,"Text 125 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

; The story of Shion's valiant struggle will no doubt be passed on from generation to generation. 
text126:
    dc.b    "Hier wird noch an",cc_newline,"Text 126 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

; And so ends another episode in the adventures of "Wonder Boy". 
text127:
    dc.b    cc_lock
    dc.b    $0A,$02
    dc.b    cc_speed,$06
    dc.b    cc_margin,$02
    dc.b    "Und so endet eine",cc_newline
    dc.b    "weitere Episode der",cc_newline
    dc.b    "Abenteuer von ",cc_newline
    dc.b    cc_text,orange,"Wonder Boy",cc_text,white
    dc.b    $0B,$18,$48

; Welcome home, Shion. I'm so happy you made it back safely. 
; I don't think I'll ever forget you... ever. 
text128:
    dc.b    cc_lock
    dc.b    "Willkommen zu Hause,",cc_newline
    dc.b    cc_text,orange,"Shion",cc_text,white,"!",cc_newline,cc_wait,cc_newline
    dc.b    "Ich bin so froh,",cc_newline,"dass Du wohlauf bist.",cc_newline,cc_wait,cc_newline
    dc.b    "Ich werde Dich",cc_newline,"nie vergessen,",cc_wait,cc_newline
    dc.b    "niemals."
    dc.b    $0C,$83,$2E
    dc.b    $0B,$18,$48
    dc.b    cc_close


; The dwarf child is in danger!
text129:
    dc.b    cc_lock
    dc.b    "Achtung, das Kind",cc_newline,"ist in Gefahr!",cc_wait,cc_close


; Danger! The desert lies ahead!
text130:
    dc.b    cc_lock
    dc.b    "   LEBENSGEFAHR!",cc_newline
    dc.b    "W",ue,"stengebiet voraus.",cc_wait,cc_close


; Anyone shorter than this sign will not be able to move it. 
text131: 
    dc.b    cc_lock
    dc.b    "Jeder der kleiner",cc_newline,"als dieses",cc_newline,"Schild ist,",cc_newline
    dc.b    "wird es nicht",cc_newline,"bewegen k",oe,"nnen.",cc_wait,cc_close


    dc.b    cc_close