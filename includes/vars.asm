; =================================================================================================
; VARIABLES
; =================================================================================================

; Locations

locSpriteTable_logo         equ $A0E00
locSpriteTable_newGame      equ $A18A8
locSpriteTable_continue     equ $A18B8
locSpriteTable_pressStart   equ $A18C8
locSpriteTable_arrow        equ $A18E7


; German Chars (Umlaute)

cAE                     equ $F0 ; Ä
cOE                     equ $F1 ; Ö
cUE                     equ $F2 ; Ü
ae                      equ $F3 ; ä
oe                      equ $F4 ; ö
ue                      equ $F5 ; ü
ss                      equ $F6 ; ß


; German Chars (Umlaute) again for Sound Test Menu

uml_U                   equ $7C ; Ü
uml_A                   equ $7D ; Ä
uml_O                   equ $7E ; Ö
uml_S                   equ $7F ; ß


; GFX Specs

tilecount_theEnd        equ 13
tilecount_toBeContinued equ 53


; Sound Test

TRACKS                  equ 24


; Key Icons

SunKey                  equ $E0E1
MoonKey                 equ $E2E3
StarKey                 equ $E4E5