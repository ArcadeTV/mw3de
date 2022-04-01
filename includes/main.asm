; =================================================================================================
; INSTRUCTIONS
; labels are jumped to from includes/overwrites.asm
; =================================================================================================

bypassMenuTableAddress_Headline:
    add.w   d0,d0
    lea     base_PointerTable_MenuItems,a1
    jmp     jumpBackMenuTableAddress_Headline

bypassMenuTableAddress_Items:
    lea     mitem2,a1                       ; First Menu Item after Headline (#2) => "WEAPON"
    moveq   #5,d2                           ; Adopt original instruction
    jmp     jumpBackMenuTableAddress_Items

bypassSpriteTableAddress:                   ; Extra Routine to replace the sprite table address

    add.l   a0,d1                           ; Adopt original instruction
    cmp.l   #locSpriteTable_logo,d1         ; Compare address in D1 to original sprite table location
    beq     setNewSpriteTable_logo          ; If it matches, branch to set a custom address
    cmp.l   #locSpriteTable_arrow,d1        ; Compare address in D1 to original sprite table location
    beq     setNewSpriteTable_arrow         ; If it matches, branch to set a custom address
    cmp.l   #locSpriteTable_pressStart,d1   ; Compare address in D1 to original sprite table location
    beq     setNewSpriteTable_pressStart    ; If it matches, branch to set a custom address
    cmp.l   #locSpriteTable_newGame,d1      ; Compare address in D1 to original sprite table location
    beq     setNewSpriteTable_newGame       ; If it matches, branch to set a custom address
    cmp.l   #locSpriteTable_continue,d1     ; Compare address in D1 to original sprite table location
    beq     setNewSpriteTable_continue      ; If it matches, branch to set a custom address
    bra.s   ret_bypassSpriteTableAddress    ; If no matches found, return
setNewSpriteTable_logo:
    move.l  #newSpriteTable_logo,d1         ; If found, load our own address into D1
    bra.s   ret_bypassSpriteTableAddress
setNewSpriteTable_arrow:
    move.l  #newSpriteTable_arrow,d1        ; If found, load our own address into D1
    bra.s   ret_bypassSpriteTableAddress
setNewSpriteTable_pressStart:
    move.l  #newSpriteTable_pressStart,d1   ; If found, load our own address into D1
    bra.s   ret_bypassSpriteTableAddress
setNewSpriteTable_newGame:
    move.l  #newSpriteTable_newGame,d1      ; If found, load our own address into D1
    bra.s   ret_bypassSpriteTableAddress
setNewSpriteTable_continue:
    move.l  #newSpriteTable_continue,d1     ; If found, load our own address into D1
ret_bypassSpriteTableAddress:
    move.l  d1,$FFFFC100(a4)                ; Adopt original instruction
    jmp     jumpBack                        ; Return to original location


writePlanemaps:                             ; write custom tilemaps to VRAM:
writePlanemapA:                             ; Plane A C000-CFFF, Plane B E000-EFFF
    movem.l d0/d1/a4,-(sp)                  ; save registers
    SetVRAMWrite vram_addr_plane_a          ; Call macro to set address for writing to VRAM
    lea     planeMapA,a4                    ; Move the address of the first graphics tile into a4
    jsr     writePlanemap
writePlanemapB:
    SetVRAMWrite vram_addr_plane_b          ; Call macro to set address for writing to VRAM
    lea     planeMapB,a4                    ; Move the address of the first graphics tile into a4
    jsr     writePlanemap
    movem.l (sp)+,d0/d1/a4                  ; restore registers
    jmp     $7102                           ; return
writePlanemap:
    move.l  #((64*64)/2)-1,d0               ; Loop counter (-1 for DBRA loop)
writePlanemap_Loop:
    move.w  (a4)+,d1                        ; Start of loop
    move.w  d1,vdp_data                     ; Write tile line (4 bytes per line), and post-increment address
    dbra    d0,writePlanemap_Loop           ; Decrement d0 and loop until finished (when d0 reaches -1)
    rts



; Bypass Menu Magic Item Names:

bypassMenuMagicNames:
    lea     base_PointerTable_Magic,a1      ; load custom address
    adda.w  (a1,d0.w),a1                    ; Adopt original instruction
    jmp     ret_bypassMenuMagicNames        ; return

bypassMenuMagicNames_alt:
    moveq   #0,d4                           ; Adopt original instruction
    lea     magic1,a1                       ; load custom address
    jmp     ret_bypassMenuMagicNames_alt    ; return



; INGAME TEXT: FOUND XX GOLD:

bypassFoundGoldText:                        ; Order of instructions changed in favor of text flow:
    lea     textFound,a0   ; "Found "       ; load custom address
    jsr     sub_1F8E                        ; Adopt original instruction
    movea.l a1,a0                           ; Adopt original instruction
    jsr     sub_1F8E                        ; Adopt original instruction
    lea     textGold,a0    ; " GOLD."       ; Adopt original instruction
    jsr     sub_1F8E                        ; Adopt original instruction
    unlk    a6                              ; Adopt original instruction
    rts                                     ; Adopt original instruction / return

bypassFoundItemText:
    move.w  d1,d0
    lea     textDot,a0
    jmp     ret_bypassFoundItemText



; Bypass "THE END" and "TO BE CONTINUED" ending GFX:
    
    align 2

change_theEnd:
    movem.l d0-d1/a0-a1,-(sp)               ; save registers
    
    ; load new tiles into VRAM:
	SetVRAMWrite $1000                      ; Setup the VDP to write to VRAM address $1000 (we will overwrite the unneded japanese characters)

	lea     tileData_theEnd_de,a0			; Move the address of the first graphics tile into a0
	move.l  #((tilecount_theEnd+tilecount_toBeContinued)*size_tile_l)-1,d0  
                                            ; Loop counter = 8 longwords per tile * num tiles (-1 for DBRA loop)
	@Tiles_Loop:							; Start of loop
	move.l  (a0)+,vdp_data					; Write tile line (4 bytes per line), and post-increment address
	dbra    d0,@Tiles_Loop					; Decrement d0 and loop until finished (when d0 reaches -1)

    ; return to original instructions:

    movem.l (sp)+,d0-d1/a0-a1               ; restore registers
    lea     tilemap_theEnd,a0               ; change address in original instruction
    move.l  a0,($FFA3B6).l                  ; Adopt original instruction
    jmp     ret_change_theEnd               ; return to game code


bypassstaffRoll:
    lea     staffRoll,a1                    ; change address in original instruction
    move.l  a1,($FFA3B6).l                  ; Adopt original instruction
    jmp     ret_bypassstaffRoll             ; return to game code



; Sphinx Quiz Messages:

bypassSphinx_timesUp:
    lea     sphinx_timesUp,a2
    moveq   #$35,d0
    jmp     ret_bypassSphinx_timesUp

bypassSphinx_incorrect:
    lea     sphinx_incorrect,a2
    moveq   #$35,d0
    jmp     ret_bypassSphinx_correct

bypassSphinx_correct:
    lea     sphinx_correct,a2
    addq.b  #1,($FFFF8CD3).w
    jmp     ret_bypassSphinx_correct



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


TRACKS equ 24

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
    move.b  ($FFFF1970),d0
    lea     musicIDs,a0
    move.b  (a0,d0),d1
    move.l  d1,d0
    jsr     ($366)
    ;jsr     showTrackInfo
    movem.l (sp)+,d0-d3/a0-a1
    rts 

musicID_reset_min:
    move.b  0,($FFFF1970)
    bra.w   musicPlayAndReturn
musicID_reset_max:
    move.b  #TRACKS-1,($FFFF1970)
    bra.w   musicPlayAndReturn


musicIDs:
    dc.b    $14,$01,$00,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F,$10,$11,$12,$15,$17,$16
    even

;showTrackInfo:
;    move.w #$8300+($A000>>10),($c00004).l
;    SetVRAMWrite $A000 
;    move.l #2048-1,d3 
;.loop 
;    move.w  #$20C4,vdp_data
;    dbra    d3,.loop
;    rts 
    