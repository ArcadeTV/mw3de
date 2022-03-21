; =================================================================================================
; Control Codes:
; =================================================================================================

cc_close            equ $00     ; Closes the textbox
cc_text             equ $01     ; Text Color setter,
                                ; format: 01.b 0RGB.w
cc_textOrange       equ $01A0
cc_textWhite        equ $0180
cc_fast             equ $02     ; Changes the write speed to 'fast'
cc_speed            equ $03     ; Changes the write speed to given value,
                                ; format 03 value.b: 00=fastest, 09=slowest

cc_margin           equ $04     ; sets textbox margin
                                ; format 04 value.b, where value equals value*tilewidth=8 pixels

cc_wait             equ $05     ; Displays arrow and waits for user input
cc_jump             equ $06     ; Jumps to a text location
                                ; format: 06.b pointer.w
cc_lock             equ $07     ; disables fast forward of text
cc_newline          equ $09     ; Starts a new line in the textbox

orange              equ $A0 
white               equ $80


; =================================================================================================

; 0B:

; 0B 02             show yes/no options
;                   format: 0B02.w xpos.b ypos.b pntrToNoAnswer.w



; 0C:

; 0C 59             Priscilla