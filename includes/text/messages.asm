; =================================================================================================
; TEXT DATA: MESSAGES
; =================================================================================================

; Item or Gold found:

    align 2

textFoundThe:
    dc.b    $00

textFound:
    dc.b    $00

textGold:
    dc.b    ' Taler gefunden.',$00

textDot:
    dc.b    ' gefunden.',$00  
    dc.b    $00



; Sphinx quiz:

sphinx_timesUp:
    dc.b    cc_text,orange,"Die Zeit ist um",cc_text,white,$00 

sphinx_incorrect:
    dc.b    cc_text,orange,"Falsch!",cc_text,white,$00 

sphinx_correct:
    dc.b    cc_text,orange,"Richtig",cc_text,white,$00 
    dc.b    $00