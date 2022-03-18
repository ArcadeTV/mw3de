; =================================================================================================
; Control Codes:
; =================================================================================================

cc_close            equ $00     ; Closes the textbox
cc_text             equ $01
cc_textOrange       equ $01A0
cc_textWhite        equ $0180
cc_fast             equ $02
cc_speed            equ $03     ; Format 03 XX: 00=fastest, 09=slowest
cc_margin           equ $04     ; Format 04 XX: byte in X sets textbox margin
cc_wait             equ $05     ; Displays arrow and waits for user input
cc_jump             equ $06     ; Format 06 XXXX: word in X points to the location
cc_lock             equ $07     ; disables fast forward of text
cc_newline          equ $09     ; Starts a new line in the textbox

orange              equ $A0 
white               equ $80

