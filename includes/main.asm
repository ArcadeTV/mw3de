; =================================================================================================
; INSTRUCTIONS
; labels are jumped to from includes/overwrites.asm
; =================================================================================================


    org     $A4C80 ; Free Space in ROM from here --------------------------------------------------

bypassMenuTableAddress_Headline:
    add.w   d0,d0
    lea     base_PointerTable_MenuItems,a1
    jmp     jumpBackMenuTableAddress_Headline

bypassMenuTableAddress_Items:
    lea     item2,a1                        ; "WEAPON"
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
    movem.l d0-d1/a0-a1,-(sp)               ; save registers
    SetVRAMWrite vram_addr_plane_a          ; Call macro to set address for writing to VRAM
    lea     planeMapA,a0                    ; Move the address of the first graphics tile into a0
    move.l  #(64*64)-1,d0                   ; Loop counter (-1 for DBRA loop)
    jsr     writePlanemap_Loop
writePlanemapB:
    SetVRAMWrite vram_addr_plane_b          ; Call macro to set address for writing to VRAM
    lea     planeMapB,a0                    ; Move the address of the first graphics tile into a0
    move.l  #(64*64)-1,d0                   ; Loop counter (-1 for DBRA loop)
    jsr     writePlanemap_Loop
    movem.l (sp)+,d0-d1/a0-a1               ; restore registers
    rts
writePlanemap_Loop:
    move.w  (a0)+,d1                        ; Start of loop
    move.w  d1,vdp_data                     ; Write tile line (4 bytes per line), and post-increment address
    dbra    d0,writePlanemap_Loop           ; Decrement d0 and loop until finished (when d0 reaches -1)
    rts


bypassFoundText:
    lea     textFound,a0   ; "Found "
    jsr    sub_1F8E
    movea.l a1,a0
    jsr    sub_1F8E
    lea     textGold,a0  ; " GOLD."
    jsr    sub_1F8E
    unlk    a6
    rts

textFoundThe:
    dc.b    $00
textFound:
    dc.b    $00
textGold:
    dc.b    ' Taler gefunden.',$00
textDot:
    dc.b    ' gefunden.',$00  
    dc.b    $00