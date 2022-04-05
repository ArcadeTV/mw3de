; =================================================================================================
; DATA: TEXTBOX STYLES
; =================================================================================================
    
    align 2

base_textBoxStyles:

    ; Text Box Styles
    ;       X   Y   W   H   
    ;       ˅   ˅   ˅   ˅     00112233: 0.b=xPos, 1.b=yPos, 2.b=width, 3.b=height
    dc.b    $04,$01,$17,$03 ; Text Box Style 0, was 04 01 17 03                     
    dc.b    $04,$05,$17,$02 ; Text Box Style 1, was 04 05 17 02                     
    dc.b    $01,$01,$15,$03 ; Text Box Style 2, was 01 01 15 03                     
    dc.b    $06,$03,$11,$01 ; Text Box Style 3, was 06 03 11 01                     
    dc.b    $00,$00,$11,$05 ; Text Box Style 4, was 00 00 11 05                     
    dc.b    $00,$00,$13,$03 ; Text Box Style 5, was 00 00 13 03                     
    dc.b    $04,$0A,$17,$03 ; Text Box Style 6, was 04 0A 17 03                     
    dc.b    $02,$03,$1A,$01 ; Text Box Style 7, was 02 03 1A 01                     

    dc.b    $02,$01,$1B,$03 ; Text Box Style 8, new style for shopping dialogue     
    dc.b    $04,$03,$16,$01 ; Text Box Style 9, same as Style 3 with width of 21 chars
