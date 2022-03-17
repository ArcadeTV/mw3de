; =================================================================================================
; TEXT DATA: DIALOGUES
; Custom Chars: German Umlaute
;
; F0=Ä     F3=ä
; F1=Ö     F4=ö
; F2=Ü     F5=ü
; F6=ß
;
; Pointer Table: includes\text\pntrs_dialogues.asm
; =================================================================================================

cAE equ $F0 
cOE equ $F1 
cUE equ $F2 
ae  equ $F3 
oe  equ $F4 
ue  equ $F5 
ss  equ $F6 

textData_Dialogues:

; First textbox that pops up automatically upon game start in the house
text1: 
    ;                                      left    margins
    ;                                      ^       ^
    dc.b $0B,$11,$10,$00,$A5,$03,$06,$0A,$01,$04,$01,$07
    ; Monster World war|einst ein friedvoller|Ort.
    dc.b $0C,$54," ",$0C,$67," war",cc_newline,"einst ein friedvoller",cc_newline,"Ort."
    dc.b cc_wait,cc_newline,cc_newline,cc_newline
    ; Doch der Frieden|wurde gestört, als|die Monster das Land|wie eine Armee|überfielen.
    dc.b "Doch der Frieden",cc_newline,"wurde gest",oe,"rt, als",cc_newline,"die Monster das Land",cc_wait,cc_newline
    dc.b "wie eine Armee",cc_newline,ue,"berfielen.",cc_wait,cc_newline,cc_newline,cc_newline
    ; Ein junger Mann|namens Shion gelobte,|sie zu besiegen und|seinem Land|den Frieden|zurückzubringen.
    dc.b "Ein junger Mann",cc_newline,"namens ",$01,$A0,$0E,$00,$01,$80," gelobte,",cc_newline,"sie zu besiegen",cc_wait,cc_newline
    dc.b "und seinem Land",cc_newline,"den Frieden",cc_newline,"zur",ue,"ckzubringen.",cc_wait
    dc.b cc_close


; First sign after leaving the house
text2: 
    dc.b $03,$08,$04,$02,"Willkommen in",$02,$04,$07,$0C,$54,$20,$0C,$67,$21,$20,cc_wait
    dc.b cc_close


; Old lady in the tree
text3: 
    dc.b $0C,$06,$0B,$12,$36
text3_pointer1:
    dc.w text3_target1-text3_pointer1
    dc.b $0B,$14,$36,"Wieder einmal ist",cc_newline,"unsere Welt bedroht.",cc_newline,cc_wait
    dc.b "Die Prinzessin wurde",cc_newline,"aus Schlo",$F6," Purapril",cc_newline,"entf",ue,"hrt.",cc_wait,cc_newline,cc_newline
    dc.b "Du solltest besser",cc_newline,"vorsichtig sein.",cc_newline,cc_wait,cc_newline
    dc.b "Hier, ein ",$0B,$0A,$2A,$0C,$02,cc_newline,"und ein ",$0B,$08,$FF,$0B,$0A,$20,$0C,$02,$0B,$08,$FF,".",cc_newline,cc_wait
    dc.b "Nimm sie mit Dir.",cc_wait
    dc.b cc_newline,cc_newline,"Du mu",$F6,"t jederzeit",cc_newline,"bereit sein,",cc_newline,"Magie einzusetzen!",cc_wait,cc_close
text3_target1:
    dc.b "Worauf wartest Du?",cc_newline,"Setz Dich in",cc_newline,"Bewegung!",cc_wait,cc_close

text4:
    dc.b "Hier wird noch an",cc_newline,"Text 4 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text5: 
    dc.b "Hier wird noch an",cc_newline,"Text 5 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text6: 
    dc.b "Hier wird noch an",cc_newline,"Text 6 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text7: 
    dc.b "Hier wird noch an",cc_newline,"Text 7 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text8: 
    dc.b "Hier wird noch an",cc_newline,"Text 8 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text9: 
    dc.b "Hier wird noch an",cc_newline,"Text 9 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text10: 
    dc.b "Hier wird noch an",cc_newline,"Text 10 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text11: 
    dc.b "Hier wird noch an",cc_newline,"Text 11 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text12: 
    dc.b "Hier wird noch an",cc_newline,"Text 12 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text13: 
    dc.b "Hier wird noch an",cc_newline,"Text 13 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text14: 
    dc.b "Hier wird noch an",cc_newline,"Text 14 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text15: 
    dc.b "Hier wird noch an",cc_newline,"Text 15 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text16: 
    dc.b "Hier wird noch an",cc_newline,"Text 16 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text17: 
    dc.b "Hier wird noch an",cc_newline,"Text 17 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text18: 
    dc.b "Hier wird noch an",cc_newline,"Text 18 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text19: 
    dc.b "Hier wird noch an",cc_newline,"Text 19 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text20: 
    dc.b "Hier wird noch an",cc_newline,"Text 20 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text21: 
    dc.b "Hier wird noch an",cc_newline,"Text 21 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text22: 
    dc.b "Hier wird noch an",cc_newline,"Text 22 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text23: 
    dc.b "Hier wird noch an",cc_newline,"Text 23 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text24: 
    dc.b "Hier wird noch an",cc_newline,"Text 24 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text25: 
    dc.b "Hier wird noch an",cc_newline,"Text 25 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text26: 
    dc.b "Hier wird noch an",cc_newline,"Text 26 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text27: 
    dc.b "Hier wird noch an",cc_newline,"Text 27 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text28: 
    dc.b "Hier wird noch an",cc_newline,"Text 28 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text29: 
    dc.b "Hier wird noch an",cc_newline,"Text 29 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text30: 
    dc.b "Hier wird noch an",cc_newline,"Text 30 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text31: 
    dc.b "Hier wird noch an",cc_newline,"Text 31 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text32: 
    dc.b "Hier wird noch an",cc_newline,"Text 32 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text33: 
    dc.b "Hier wird noch an",cc_newline,"Text 33 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close


; First shop in a tree when looking at leather boots
text34: 
    dc.b $0B,$14,$03,$04,$02,$0C,$40,$2C,$02,$04,$04,$0C,$D3,$20,$66,$61,$69,$72,$79,$20,$0C,$DD,$05,$00


text35: 
    dc.b "Hier wird noch an",cc_newline,"Text 35 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text36: 
    dc.b "Hier wird noch an",cc_newline,"Text 36 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text37: 
    dc.b "Hier wird noch an",cc_newline,"Text 37 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text38: 
    dc.b "Hier wird noch an",cc_newline,"Text 38 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text39: 
    dc.b "Hier wird noch an",cc_newline,"Text 39 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text40: 
    dc.b "Hier wird noch an",cc_newline,"Text 40 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text41: 
    dc.b "Hier wird noch an",cc_newline,"Text 41 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text42: 
    dc.b "Hier wird noch an",cc_newline,"Text 42 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text43: 
    dc.b "Hier wird noch an",cc_newline,"Text 43 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text44: 
    dc.b "Hier wird noch an",cc_newline,"Text 44 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text45: 
    dc.b "Hier wird noch an",cc_newline,"Text 45 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text46: 
    dc.b "Hier wird noch an",cc_newline,"Text 46 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text47: 
    dc.b "Hier wird noch an",cc_newline,"Text 47 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text48: 
    dc.b "Hier wird noch an",cc_newline,"Text 48 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text49: 
    dc.b "Hier wird noch an",cc_newline,"Text 49 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text50: 
    dc.b "Hier wird noch an",cc_newline,"Text 50 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text51: 
    dc.b "Hier wird noch an",cc_newline,"Text 51 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text52: 
    dc.b "Hier wird noch an",cc_newline,"Text 52 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text53: 
    dc.b "Hier wird noch an",cc_newline,"Text 53 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text54: 
    dc.b "Hier wird noch an",cc_newline,"Text 54 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text55: 
    dc.b "Hier wird noch an",cc_newline,"Text 55 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text56: 
    dc.b "Hier wird noch an",cc_newline,"Text 56 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text57: 
    dc.b "Hier wird noch an",cc_newline,"Text 57 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text58: 
    dc.b "Hier wird noch an",cc_newline,"Text 58 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text59: 
    dc.b "Hier wird noch an",cc_newline,"Text 59 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text60: 
    dc.b "Hier wird noch an",cc_newline,"Text 60 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text61: 
    dc.b "Hier wird noch an",cc_newline,"Text 61 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text62: 
    dc.b "Hier wird noch an",cc_newline,"Text 62 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text63: 
    dc.b "Hier wird noch an",cc_newline,"Text 63 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text64: 
    dc.b "Hier wird noch an",cc_newline,"Text 64 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text65: 
    dc.b "Hier wird noch an",cc_newline,"Text 65 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text66: 
    dc.b "Hier wird noch an",cc_newline,"Text 66 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text67: 
    dc.b "Hier wird noch an",cc_newline,"Text 67 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text68: 
    dc.b "Hier wird noch an",cc_newline,"Text 68 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text69: 
    dc.b "Hier wird noch an",cc_newline,"Text 69 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text70: 
    dc.b "Hier wird noch an",cc_newline,"Text 70 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text71: 
    dc.b "Hier wird noch an",cc_newline,"Text 71 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text72: 
    dc.b "Hier wird noch an",cc_newline,"Text 72 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text73: 
    dc.b "Hier wird noch an",cc_newline,"Text 73 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text74: 
    dc.b "Hier wird noch an",cc_newline,"Text 74 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text75: 
    dc.b "Hier wird noch an",cc_newline,"Text 75 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text76: 
    dc.b "Hier wird noch an",cc_newline,"Text 76 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text77: 
    dc.b "Hier wird noch an",cc_newline,"Text 77 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text78: 
    dc.b "Hier wird noch an",cc_newline,"Text 78 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text79: 
    dc.b "Hier wird noch an",cc_newline,"Text 79 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text80: 
    dc.b "Hier wird noch an",cc_newline,"Text 80 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text81: 
    dc.b "Hier wird noch an",cc_newline,"Text 81 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text82: 
    dc.b "Hier wird noch an",cc_newline,"Text 82 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text83: 
    dc.b "Hier wird noch an",cc_newline,"Text 83 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text84: 
    dc.b "Hier wird noch an",cc_newline,"Text 84 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text85: 
    dc.b "Hier wird noch an",cc_newline,"Text 85 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text86: 
    dc.b "Hier wird noch an",cc_newline,"Text 86 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text87: 
    dc.b "Hier wird noch an",cc_newline,"Text 87 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text88: 
    dc.b "Hier wird noch an",cc_newline,"Text 88 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text89: 
    dc.b "Hier wird noch an",cc_newline,"Text 89 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text90: 
    dc.b "Hier wird noch an",cc_newline,"Text 90 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text91: 
    dc.b "Hier wird noch an",cc_newline,"Text 91 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text92: 
    dc.b "Hier wird noch an",cc_newline,"Text 92 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text93: 
    dc.b "Hier wird noch an",cc_newline,"Text 93 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text94: 
    dc.b "Hier wird noch an",cc_newline,"Text 94 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text95: 
    dc.b "Hier wird noch an",cc_newline,"Text 95 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text96: 
    dc.b "Hier wird noch an",cc_newline,"Text 96 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text97: 
    dc.b "Hier wird noch an",cc_newline,"Text 97 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text98: 
    dc.b "Hier wird noch an",cc_newline,"Text 98 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text99: 
    dc.b "Hier wird noch an",cc_newline,"Text 99 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text100:
    dc.b "Hier wird noch an",cc_newline,"Text 100 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text101:
    dc.b "Hier wird noch an",cc_newline,"Text 101 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text102:
    dc.b "Hier wird noch an",cc_newline,"Text 102 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text103:
    dc.b "Hier wird noch an",cc_newline,"Text 103 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text104:
    dc.b "Hier wird noch an",cc_newline,"Text 104 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text105:
    dc.b "Hier wird noch an",cc_newline,"Text 105 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text106:
    dc.b "Hier wird noch an",cc_newline,"Text 106 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text107:
    dc.b "Hier wird noch an",cc_newline,"Text 107 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text108:
    dc.b "Hier wird noch an",cc_newline,"Text 108 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text109:
    dc.b "Hier wird noch an",cc_newline,"Text 109 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text110:
    dc.b "Hier wird noch an",cc_newline,"Text 110 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text111:
    dc.b "Hier wird noch an",cc_newline,"Text 111 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text112:
    dc.b "Hier wird noch an",cc_newline,"Text 112 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text113:
    dc.b "Hier wird noch an",cc_newline,"Text 113 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text114:
    dc.b "Hier wird noch an",cc_newline,"Text 114 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text115:
    dc.b "Hier wird noch an",cc_newline,"Text 115 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text116:
    dc.b "Hier wird noch an",cc_newline,"Text 116 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text117:
    dc.b "Hier wird noch an",cc_newline,"Text 117 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text118:
    dc.b "Hier wird noch an",cc_newline,"Text 118 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text119:
    dc.b "Hier wird noch an",cc_newline,"Text 119 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text120:
    dc.b "Hier wird noch an",cc_newline,"Text 120 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text121:
    dc.b "Hier wird noch an",cc_newline,"Text 121 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text122:
    dc.b "Hier wird noch an",cc_newline,"Text 122 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text123:
    dc.b "Hier wird noch an",cc_newline,"Text 123 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text124:
    dc.b "Hier wird noch an",cc_newline,"Text 124 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text125:
    dc.b "Hier wird noch an",cc_newline,"Text 125 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text126:
    dc.b "Hier wird noch an",cc_newline,"Text 126 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text127:
    dc.b "Hier wird noch an",cc_newline,"Text 127 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text128:
    dc.b "Hier wird noch an",cc_newline,"Text 128 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text129:
    dc.b "Hier wird noch an",cc_newline,"Text 129 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text130:
    dc.b "Hier wird noch an",cc_newline,"Text 130 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

text131: 
    dc.b "Hier wird noch an",cc_newline,"Text 131 gearbeitet.",cc_newline,"Verschwinde!",cc_wait,cc_close

