; =================================================================================================
; TEXT DATA: QUESTIONS
; Pointer Table: includes\text\pntrs_questions.asm
; =================================================================================================

    align 2

; Yes / No Option
question1:
    dc.b    $03,$00,$02,$04,$04,"Ja   Nein",0 ; <- format: 4 chars + space + 4 chars

; Gold (Item price in shops)
question2:
    dc.b    " Taler",0


question3:
    dc.b    $01,$A0,$0B,$06,$01,$80,$00


question4:
    dc.b    $04,$01,$0B,$04,$FF,$0B,$05,$0C,$01,$00


question5:
    dc.b    $95,$97,$8C,$98,$9B,$BD,$00


question6:
    dc.b    $04,$03,$0B,$0F,$FF,$0B,$05,$0C,$01,$00


question7:
    dc.b    $0A,$02,$03,$06,$04,$02,$00


question8:
    dc.b    $03,$06,$0A,$02,$05,$09,$00


question9:
    dc.b    $03,$10,$20,$0F,$04,$0F,$03,$0F,$04,$0F,$03,$0F,$04,$0F,$05,$0F,$04,$03,$06,$00


question10:
    dc.b    $03,$10,$20,$0F,$03,$0F,$04,$0F,$05,$0F,$04,$0F,$05,$0F,$03,$0F,$04,$03,$06,$00


question11:
    dc.b    $03,$10,$20,$0F,$03,$0F,$05,$0F,$05,$0F,$03,$0F,$04,$0F,$03,$0F,$04,$03,$06,$00


question12:
    dc.b    "Welches war die",cc_newline,"erste Magie, die",cc_newline,"Du erhalten hast?",0


question13:
    dc.b    "Feuersturm"


question14:
    dc.b    "Tornado"


question15:
    dc.b    "Beben"


question16:
    dc.b    "Welchen Namen tr",ae,"gt",cc_newline,"die K",oe,"nigin des",cc_newline,"Elfendorfs?",0


question17:
    dc.b    "Rosanna",0


question18:
    dc.b    "Eleanora",0


question19:
    dc.b    "Sonia",0


question20:
    dc.b    "Welches dieser",cc_newline,"Monster hast Du",cc_newline,"zuerst besiegt?",0


question21:
    dc.b    "Myconid",0


question22:
    dc.b    "Mecha-Dragon",0


question23:
    dc.b    "Eleanora",0


question24:
    dc.b    "Was hast Du",cc_newline,"erhalten, nachdem Du",cc_newline,"Gragg & Glagg,",cc_newline,"besiegt hast?",0


question25:
    dc.b    "Eine Lampe",0


question26:
    dc.b    "Ein Amulett",0


question27:
    dc.b    "Den Dreizack",0


question28:
    dc.b    "Was kannst Du nicht",cc_newline,"im Waffenladen vom",cc_newline,"Wanderer kaufen?",0
            

question29:
    dc.b    "Dreizack",0


question30:
    dc.b    "Excalibur",0


question31:
    dc.b    "Stahlschild",0


question32:
    dc.b    "Wie lautet der Name",cc_newline,"vom Dorf, in dem",cc_newline,"die Zwerge leben?",0


question33:
    dc.b    "Lilian",0


question34:
    dc.b    "Lilypad",0


question35:
    dc.b    "Lollipop",0


question36:
    dc.b    "Welchen Schl",ue,"ssel",cc_newline,"ben",oe,"tigt man, um",cc_newline,"die Pyramide",cc_newline,"zu betreten?",0


question37:
    dc.b    "Sternenschl",ue,"ssel",0


question38:
    dc.b    "Sonnenschl",ue,"ssel",0


question39:
    dc.b    "Mondschl",ue,"ssel",0


question40:
    dc.b    "Wieviel kostet ein",cc_newline,"Charmstein?",0


question41:
    dc.b    "50000 Taler",0


question42:
    dc.b    "500000 Taler",0


question43:
    dc.b    "5000000 Taler",0


question44:
    dc.b    "Welcher Gegenstand",cc_newline,"wird ben",oe,"tigt, um",cc_newline,"die Maugham-W",ue,"ste",cc_newline,"zu durchqueren?",0
            

question45:
    dc.b    "W",ue,"stenstiefel",0


question46:
    dc.b    "Oasenstiefel",0


question47:
    dc.b    "Sandalen",0


question48:
    dc.b    "Welcher dieser",cc_newline,"L",ae,"den verkauft",cc_newline,"keine Waffen?",0


question49:
    dc.b    "Gooningle",0


question50:
    dc.b    "Bacchus",0


question51:
    dc.b    "Felissimo",0


question52:
    dc.b    $03,$00,$02,$04,$04,"Ja   Nein",0

