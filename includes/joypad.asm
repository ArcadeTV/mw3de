;==============================================================
; Joypad/Controllers Routines
;==============================================================

PAD_InitPads:
    move.b #pad_byte_latch,pad_ctrl_a
    move.b #pad_byte_latch,pad_ctrl_b
    rts

PAD_ReadPadA:
    ; Returns: d7 (word) - pad A state in format 00SA0000 00CBRLDU
    move.b  #$00,pad_data_a
    nop
    nop
    move.b  pad_data_a,d7
    lsl.w   #$08,d7
    move.b  #pad_byte_latch,pad_data_a
    nop
    nop
    move.b  pad_data_a,d7
    neg.w   d7
    subq.w  #$01,d7
    andi.w  #pad_button_all,d7
    move.l  d7,($FFFF1996).l
    rts
