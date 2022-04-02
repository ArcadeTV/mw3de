;==============================================================
; SOUNDTEST
; Main Menu Hacks
;==============================================================

bypass_checkInput:
    bsr.w   checkInput_Left
    bsr.w   checkInput_Right
    bsr.w   checkStartBtn
    bne.s   jmp_7224
    jmp     (ret_bypass_checkInput)
jmp_7224:
    jmp     ($7224)

bypass_checkInputWithSRAM:
    bsr.w   checkInput_Left
    bsr.w   checkInput_Right
    bsr.w   checkStartBtn
    beq.s   jmp_71FC
    jmp     (ret_bypass_checkInputWithSRAM)
jmp_71FC:
    jmp     ($71FC)


;513C 
;#0 -> up
;#1 -> down
;#2 -> left
;#3 -> right
;#4 -> btn_B
;#5 -> btn_C
;#6 -> btn_A
;#7 -> Start
checkStartBtn:
    move.b  ($FFFF8A7D).w,d0
    bpl.s   loc_5156
    lea     ($FFFF8A81).w,a0
    andi.b  #$7F,d0
    beq.s   loc_5150
    lea     ($FFFF8A84).w,a0
loc_5150:
    btst    #7,(a0)
    bra.s   locret_516E
loc_5156:
    moveq   #$FFFFFF80,d0
    btst    #7,($FFFF8A81).w
    bne.s   pressed_Start
    btst    #7,($FFFF8A84).w
    beq.s   locret_516E
    moveq   #$FFFFFF81,d0
pressed_Start:
    move.b  d0,($FFFF8A7D).w
locret_516E:
    rts


checkInput_Left:
    btst    #2,($FFFF8A81).w
    bne.s   pressed_Left
    bra.w   locret
checkInput_Right:
    btst    #3,($FFFF8A81).w
    bne.s   pressed_Right
    bra.w   locret
pressed_Left:
    bsr.w   musicLeft
    bra.w   locret
pressed_Right:
    bsr.w   musicRight
locret:
    rts



musicRight:
    movem.l d0-d1/a0-a1,-(sp)
    cmpi.b  #TRACKS-1,($FFFF1970)
    bcc.w   musicID_reset_min
    addi.b  #1,($FFFF1970)
    move.b  ($FFFF1970),d0
    bra.w   musicPlayAndReturn
musicLeft:
    movem.l d0-d3/a0-a1,-(sp)
    tst.b   ($FFFF1970)
    beq.w   musicID_reset_max
    subi.b  #1,($FFFF1970)
musicPlayAndReturn:
    move.b  ($FFFF1970),d0                  ; load music index in d0

    lea     titleTable,a0                   ; set table address in a0
    move.l  d0,d1                           ; index into d1 to keep d0 untouched
    mulu.w  #size_long,d1                   ; index * 4 because we're dealing with longwords
    move.l  (a0,d1),a0                      ; load titleTable[d1.l] in a0
    jsr     showTrackInfo                   ; call subroutine for writing text

    lea     musicIDs,a0                     ; set table address in a0
    move.b  (a0,d0),d1                      ; load musicIDs[d0] in d1
    move.l  d1,d0                           ; move into d0 before calling playSound subroutine
    jsr     ($366)                          ; call playSound subroutine

    movem.l (sp)+,d0-d3/a0-a1
    rts 

musicID_reset_min:
    move.b  0,($FFFF1970)
    bra.w   musicPlayAndReturn
musicID_reset_max:
    move.b  #TRACKS-1,($FFFF1970)
    bra.w   musicPlayAndReturn
    

killSprites:
    SetVRAMWrite $3C00
    move.l  #((32*32)/2),d0
.loop1
    move.b  #0,vdp_data
    dbra    d0,.loop1

    SetVRAMWrite $5860
    move.l  #((13*32)/2),d0
.loop2a 
    move.b  #0,vdp_data
    dbra    d0,.loop2a

    SetVRAMWrite $5A60
    move.l  #((12*32)/2),d0
.loop2b 
    move.b  #0,vdp_data
    dbra    d0,.loop2b


    SetVRAMWrite $74A0
    move.l  #((27*32)/2),d0
.loop3 
    move.b  #0,vdp_data
    dbra    d0,.loop3

    jsr     loadFont
    moveq   #0,d0
    move.b  d0,($FFFF1970).l
    lea     musicTitle1,a0
    jsr     showTrackInfo

    ; jmp back:
    dc.b    $22,$7C,$00,$00,$4D,$A4 ; movea.l #aKmnu,a1
    jmp     ret_killSprites


loadFont:
    SetVRAMWrite $8400
    lea     font,a1
    move.l  #((96*32)/size_long),d0
lfloop:
    move.l  (a1)+,vdp_data
    dbra    d0,lfloop
    rts 


showTrackInfo:
    SetVRAMWrite $CD00
showTrackInfoLoop:
     clr.w  d3
     move.b (a0)+,d3
     beq    .quit                   ; End of string on zero byte
     ori.w  #$6000,d3
     addi.w #$400,d3                ; ASCII offset
     move.w d3,vdp_data
     bra    showTrackInfoLoop
.quit:
     rts


