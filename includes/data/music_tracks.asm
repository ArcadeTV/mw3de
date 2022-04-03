;==============================================================
; DATA:
; Music Tracks
;==============================================================


musicIDs:
    dc.b    $14,$01,$0C,$05,$0A,$00,$08,$02,$0B,$07,$09,$0D,$0D,$12,$04,$06,$0E,$0D,$03,$11,$15,$16,$17,$54

    even

;           |--------------------------------|   32 Chars
musicTitle1: 
    dc.b    "          < # Titel >           ",0                            ; ID: 14 
musicTitle2:
    dc.b    "        < # Der Anfang >        ",0                            ; ID: 01 
musicTitle3:
    dc.b    "          < # Strand >          ",0                            ; ID: 0C 
musicTitle4:
    dc.b    "      < # Schlo",uml_S," Purapril >     ",0                    ; ID: 05 
musicTitle5:
    dc.b    "    < # D",uml_O,"rfliche Kl",uml_A,"nge 1 >    ",0            ; ID: 0A 
musicTitle6:
    dc.b    "      < # Die Pilz-H",uml_O,"hle >      ",0                    ; ID: 00 
musicTitle7:
    dc.b    "          < # Boss 1 >          ",0                            ; ID: 08 
musicTitle8:
    dc.b    "    < # D",uml_O,"rfliche Kl",uml_A,"nge 2 >    ",0            ; ID: 02 
musicTitle9:
    dc.b    "     < # K",uml_O,"nigin Eleanora >     ",0                    ; ID: 0B 
musicTitle10:
    dc.b    "        < # Katakomben >        ",0                            ; ID: 07 
musicTitle11:
    dc.b    "       < # Lilypad Wald >       ",0                            ; ID: 09 
musicTitle12:
    dc.b    "          < # Boss 2 >          ",0                            ; ID: 0D 
musicTitle13:
    dc.b    "         < # Dschungel >        ",0                            ; ID: 0D 
musicTitle14:
    dc.b    "        < # Unterwasser >       ",0                            ; ID: 12 
musicTitle15:
    dc.b    "           < # W",uml_U,"ste >          ",0                    ; ID: 04 
musicTitle16:
    dc.b    "         < # Pyramide >         ",0                            ; ID: 06 
musicTitle17:
    dc.b    "    < # D",uml_O,"rfliche Kl",uml_A,"nge 3 >    ",0            ; ID: 0E 
musicTitle18:
    dc.b    "          < # Boss 3 >          ",0                            ; ID: 0D 
musicTitle19:
    dc.b    "          < # Himmel >          ",0                            ; ID: 03 
musicTitle20:
    dc.b    "       < # Wolkenschlo",uml_S," >       ",0                    ; ID: 11 
musicTitle21:
    dc.b    "        < # Raumschiff >        ",0                            ; ID: 15 
musicTitle22:
    dc.b    "          < # Abspann >         ",0                            ; ID: 16 
musicTitle23:
    dc.b    "    < # Das letzte Gefecht >    ",0                            ; ID: 17 
musicTitle24:
    dc.b    "        < # Gute Nacht >        ",0                            ; ID: 54 
    
    even 

titleTable:
    dc.l    musicTitle1  ; ID: 14
    dc.l    musicTitle2  ; ID: 01
    dc.l    musicTitle3  ; ID: 0C
    dc.l    musicTitle4  ; ID: 05
    dc.l    musicTitle5  ; ID: 0A
    dc.l    musicTitle6  ; ID: 00
    dc.l    musicTitle7  ; ID: 08
    dc.l    musicTitle8  ; ID: 02
    dc.l    musicTitle9  ; ID: 0B
    dc.l    musicTitle10 ; ID: 07
    dc.l    musicTitle11 ; ID: 09
    dc.l    musicTitle12 ; ID: 0D
    dc.l    musicTitle13 ; ID: 0D
    dc.l    musicTitle14 ; ID: 12
    dc.l    musicTitle15 ; ID: 04
    dc.l    musicTitle16 ; ID: 06
    dc.l    musicTitle17 ; ID: 0E
    dc.l    musicTitle18 ; ID: 0D
    dc.l    musicTitle19 ; ID: 03
    dc.l    musicTitle20 ; ID: 11
    dc.l    musicTitle21 ; ID: 15
    dc.l    musicTitle22 ; ID: 16
    dc.l    musicTitle23 ; ID: 17
    dc.l    musicTitle24 ; ID: 54


