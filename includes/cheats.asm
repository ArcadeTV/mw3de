; =================================================================================================
; CHEATS
; =================================================================================================

;                0: Cheat disabled
;                1: Cheat  enabled
CHEAT_99GOLD   = 0                          ; Have 999999 Gold
CHEAT_UNLGOLD  = 1                          ; Gold is not decreased upon purchases
CHEAT_HEARTS   = 0                          ; Have all hearts
CHEAT_INVINC   = 1                          ; Energy is not decreased upon getting hit
CHEAT_1HITKILL = 1

; -------------------------------------------------------------------------------------------------

    ifne CHEAT_UNLGOLD
    org     $1882                           ; Cheat: Unl. Gold (do not decrease)
    nop
    nop
    endif

    ;----------------------

    ifne CHEAT_1HITKILL                     ; Cheat: Kill any enemy with one hit
    org     $49E2
    nop
    endif 

    ;----------------------

    ifne CHEAT_99GOLD
    org     $8E46                           ; Cheat: Have more Gold upon New Game start
    dc.b    $0F,$42,$3F                     ; 1st Nybble: Starting location (0=Shion's House, 1=Alsedo, 2=Castle, 3=Lilypad ...),
                                            ; 2nd Nybble + 2 Bytes = 999999 Gold
    endif

    ;----------------------

    ifne CHEAT_HEARTS
    org     $8E4A                           ; Cheat: Have all Hearts upon New Game start
    dc.b    $08
    endif

    ;----------------------

    ifne CHEAT_INVINC
    org     $E0A4                           ; Cheat: Unl. Energy (do not decrease)
    nop
    nop 
    endif
