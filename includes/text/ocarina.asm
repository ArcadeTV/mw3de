; =================================================================================================
; TEXT DATA: PLAYING THE OCARINA
; ROM: $2B56-$2C07
; =================================================================================================

; Shion plays the Ocarina.
; Oh, that sounds lovely.
text_ShionPlaysOcarina_outOfContext:
    dc.b    cc_lock,cc_speed,$06
    dc.b    "  Shion spielt",cc_newline,"auf der "
    dc.b    $0B,$0A,$28,$0C,$02,$2E 
    dc.b    $0B,$19,$1B,$0B,$18,$96,$02
    dc.b    cc_newline,"Oh, es klingt",cc_newline,"sehr harmonisch.",cc_wait,cc_close

; Shion plays the Ocarina.
text_ShionPlaysOcarina:
    dc.b    cc_lock,cc_speed,$06
    dc.b    "  Shion spielt",cc_newline,"auf der "
    dc.b    $0B,$0A,$28,$0C,$02,$2E,$00

text_ShionPlaysOcarina_youPlayBeautifully:
    dc.b    cc_lock,cc_speed,$06,cc_fast
    dc.b    cc_newline,"Das war gro",ss,"artig.",cc_newline,cc_wait,cc_close

text_ShionPlaysOcarina_notVeryWell:
    dc.b    cc_lock,cc_speed,$06,cc_fast
    dc.b    cc_newline,"Leider spielst Du",cc_newline,"nicht besonders gut.",cc_wait,cc_close

text_ShionPlaysOcarina_melodyNotRight:
    dc.b    cc_lock,cc_speed,$06,cc_fast
    dc.b    cc_newline,"Die Melodie klingt",cc_newline,"nicht richtig.",cc_wait,cc_close
