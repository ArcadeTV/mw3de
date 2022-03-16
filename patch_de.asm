; #################################################################################################
; #                                   Translation (DE) / ROMHACK                                  #
; #                            Wonder Boy in Monster World (USA, Europe)                          #
; #                           for SEGA GENESIS - v0.1 2022-03-12, ArcadeTV                        #
; #################################################################################################
; =================================================================================================
; CHANGELOG
; =================================================================================================
; v1.1 : 2022-03-11
; - Moved planes A and B down a bit
; - Moved copyright text and icons down a bit
;
; v1.0 : 2022-03-09
; - Draw an entirely new logo on the title screen
; #################################################################################################



; =================================================================================================
; CONSTANTS
; =================================================================================================

; Utility
size_word                   equ 2
size_long                   equ 4

; VDP port addresses
vdp_control                 equ $00C00004
vdp_data                    equ $00C00000

; VDP commands
vdp_cmd_vram_write          equ $40000000

; VDP memory addresses
vram_addr_tiles             equ $0000
vram_addr_plane_a           equ $C000
vram_addr_plane_b           equ $E000

; Locations
locSpriteTable_logo         equ $A0E00
locSpriteTable_newGame      equ $A18A8
locSpriteTable_continue     equ $A18B8
locSpriteTable_pressStart   equ $A18C8
locSpriteTable_arrow        equ $A18E7

; Control Codes:
cc_close                    equ $00
cc_wait                     equ $05
cc_newline                  equ $09


; =================================================================================================
; MACROS
; =================================================================================================

; Set the VRAM (video RAM) address to write to next
    macro SetVRAMWrite
    move.l  #(vdp_cmd_vram_write)|((\1)&$3FFF)<<16|(\1)>>14,vdp_control
    endm

    macro writePointer
    dc.b    $\1
    dc.l    \2-base_PointerTable_Dialogues
    endm


; =================================================================================================
; OVERWRITES
; =================================================================================================
    
    org $1B2
    dc.b    $F0,$20                         ; SRAM Fix 1/2
    org $1BB
    dc.b    $81                             ; SRAM Fix 2/2

    org $8D8
    jmp     bypassSpriteTableAddress
    
    org $8DE
jumpBack:                                   ; only for Label

    org     $1882                           ; Cheat: Unl. Gold (do not decrease)
    nop
    nop 
    org     $8E46                           ; Cheat: Have more Gold upon New Game start
    dc.b    $0F,$42,$3F                     ; 1st Nybble: Starting location (0=Shion's House, 1=Alsedo, 2=Castle, 3=Lilypad ...),
                                            ; 2nd Nybble + 2 Bytes = 999999 Gold
    org     $8E4A                           ; Cheat: Have all Hearts upon New Game start
    ;dc.b    $8
    org     $E0A4                           ; Cheat: Unl. Energy (do not decrease)
    ;nop
    ;nop 

    org     $70E6
    jsr     writePlanemaps
    rept    $B                              ; overwrite $70E6-$7102: ($1C/#28 bytes = $E/#14 words) - 6 Bytes for the JSR above
    nop                                     ; with nops
    endr
                                            ; (i) $70F0.w: Skip SubRoutine to Load Plane A Map to C000-CFFF
                                            ; (i) $70FE.w: Skip SubRoutine to Load Plane B Map to E000-EFFF
                                            
    org     $77D7
    ;dc.b    $F7                             ; Increase Menu Text Length

    ; Menu Hacks:
    org     $84DE
    dc.b    $F8,$F9,$00                     ; Replace AP (Attack Points) with custom icon
    dc.b    $FA,$FB,$00                     ; Replace DP (Defense Points) with custom icon
    dc.b    $FC,$FD,$00                     ; Replace SP (Speed Points) with custom icon

    ; Dialogue Text:
    org     $1CC14
    dc.l    base_PointerTable_Dialogues

    ; Replace GFX data pointers:
    ; Font:
    org     $4101C
    dc.l    fontGFX_pack+$02000000          ; was 02 0423FA

    ; Logo:
    org     $4155C
    dc.l    newLogoGFX_pack1+$02000000      ; was 02 068930

    org     $41560
    dc.l    newLogoGFX_pack2+$02000000      ; was 02 068ADA

    org     $41564
    dc.l    newLogoGFX_pack3+$02000000      ; was 02 068C8A

    org     $41568
    dc.l    newLogoGFX_pack4+$02000000      ; was 02 068E5C

    org     $4156C
    dc.l    newLogoGFX_pack5+$02000000      ; was 02 068FEC

    org     $41570
    dc.l    newLogoGFX_pack6+$02000000      ; was 02 0691F5

    ; Titlescreen Text GFX: Press Start Button, New Game, Continue and Arrow
    org     $41598                
    dc.l    newTitleTxtGFX_pack1+$02000000  ; was 02 06A2C9

    org     $4159C 
    dc.l    newTitleTxtGFX_pack2+$02000000  ; was 02 06A3F5

    org     $415A0 
    dc.l    newTitleTxtGFX_pack3+$02000000  ; was 02 06A4FE

    ; Replace Sprite Table Values for re-positioning:
    org     $A0E4C                          ; Sprite Table for Copyright Stuff
          ; ss: size, 
          ; ff: flag+1st id-nybble
          ; ii: 2nd id-nybble
          ; xx: xpos
          ; yy: ypos
          ; ----------------------
          ; ss, ff, ii, xx, yy
          ; ˅   ˅   ˅   ˅   ˅
    dc.b    $00,$63,$BD,$4C,$1C 
    dc.b    $0C,$63,$B9,$2C,$1C 
    dc.b    $05,$63,$B5,$1C,$18 
    dc.b    $0D,$63,$AD,$FC,$18 
    dc.b    $0D,$63,$A5,$DC,$18 
    dc.b    $05,$62,$DB,$CD,$19 
    dc.b    $0D,$62,$D3,$AD,$19 
    dc.b    $09,$62,$C9,$14,$08 
    dc.b    $09,$62,$C3,$14,$F8 
    dc.b    $0F,$61,$F0,$F4,$F8 
    dc.b    $0F,$61,$E0,$D4,$F8 
    dc.b    $FF

; =================================================================================================
; INSTRUCTIONS
; =================================================================================================

    org     $A4C80 ; Free Space in ROM from here --------------------------------------------------
    align   2
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



; =================================================================================================
; DATA
; =================================================================================================

base_PointerTable_Dialogues:
    dc.b $00
    dc.w text1-base_PointerTable_Dialogues
    dc.b $01
    dc.w text2-base_PointerTable_Dialogues
    dc.b $00,$02,$7A 
    dc.b $01,$03,$59 
    dc.b $01,$03,$71 
    dc.b $01,$03,$88 
    dc.b $01,$03,$A9 
    dc.b $01,$03,$BE 
    dc.b $01,$03,$DC 
    dc.b $01,$03,$FD 
    dc.b $00,$04,$19 
    dc.b $00,$04,$1F 
    dc.b $00,$04,$25 
    dc.b $00,$04,$2B 
    dc.b $00,$04,$31 
    dc.b $00,$04,$37 
    dc.b $00,$04,$3D 
    dc.b $00,$04,$43 
    dc.b $00,$04,$49 
    dc.b $00,$04,$4F 
    dc.b $00,$04,$55 
    dc.b $00,$04,$5B 
    dc.b $00,$04,$61 
    dc.b $00,$04,$67 
    dc.b $00,$04,$6D 
    dc.b $00,$04,$73 
    dc.b $00,$04,$79 
    dc.b $00,$04,$7F 
    dc.b $00,$04,$85 
    dc.b $00,$04,$8B 
    dc.b $00,$04,$91 
    dc.b $00,$04,$97 
    dc.b $00,$04,$9D 
    dc.b $00,$04,$A3 
    dc.b $00,$04,$A9 
    dc.b $00,$04,$AF 
    dc.b $00,$04,$B5 
    dc.b $00,$04,$BB 
    dc.b $00,$04,$C1 
    dc.b $00,$04,$C7 
    dc.b $01,$04,$CD 
    dc.b $00,$04,$F6 
    dc.b $00,$04,$FC 
    dc.b $00,$05,$02 
    dc.b $00,$05,$08 
    dc.b $00,$05,$0E 
    dc.b $00,$05,$14 
    dc.b $00,$05,$1A 
    dc.b $00,$05,$20 
    dc.b $00,$05,$26 
    dc.b $00,$05,$8A 
    dc.b $00,$05,$E0 
    dc.b $00,$06,$2C 
    dc.b $00,$06,$E1 
    dc.b $00,$06,$E7 
    dc.b $00,$07,$7E 
    dc.b $00,$08,$0A 
    dc.b $02,$08,$A6 
    dc.b $00,$09,$9A 
    dc.b $00,$09,$DE 
    dc.b $00,$09,$E4 
    dc.b $00,$0A,$B7 
    dc.b $00,$0B,$19 
    dc.b $00,$0B,$99 
    dc.b $00,$0D,$49 
    dc.b $00,$0E,$59 
    dc.b $00,$0E,$5F 
    dc.b $00,$0F,$03 
    dc.b $00,$0F,$4C 
    dc.b $00,$10,$C0 
    dc.b $00,$12,$5E 
    dc.b $00,$13,$1E 
    dc.b $00,$13,$93 
    dc.b $05,$14,$2B 
    dc.b $00,$16,$A1 
    dc.b $00,$17,$2A 
    dc.b $00,$17,$99 
    dc.b $00,$18,$20 
    dc.b $00,$18,$F7 
    dc.b $01,$1A,$A4 
    dc.b $00,$1A,$B4 
    dc.b $03,$1D,$03 
    dc.b $01,$1D,$16 
    dc.b $00,$1D,$2F 
    dc.b $03,$1E,$5D 
    dc.b $00,$1E,$6D 
    dc.b $00,$1E,$BD 
    dc.b $00,$1E,$FF 
    dc.b $00,$21,$1F 
    dc.b $00,$22,$7A 
    dc.b $01,$22,$D5 
    dc.b $04,$22,$EE 
    dc.b $00,$25,$F8 
    dc.b $01,$26,$AF 
    dc.b $00,$26,$BF 
    dc.b $03,$28,$47 
    dc.b $01,$28,$55 
    dc.b $01,$28,$76 
    dc.b $00,$28,$8F 
    dc.b $00,$29,$2D 
    dc.b $00,$29,$83 
    dc.b $00,$29,$89 
    dc.b $00,$2B,$43 
    dc.b $03,$2C,$B4 
    dc.b $03,$2C,$CA 
    dc.b $07,$2C,$E0 
    dc.b $07,$2C,$F5 
    dc.b $00,$2D,$14 
    dc.b $00,$2D,$45 
    dc.b $00,$2D,$76 
    dc.b $00,$2D,$EA 
    dc.b $00,$2E,$7D 
    dc.b $00,$2F,$31 
    dc.b $00,$2F,$68 
    dc.b $00,$2F,$A6 
    dc.b $01,$30,$38 
    dc.b $01,$30,$9D 
    dc.b $00,$30,$D2 
    dc.b $00,$31,$08 
    dc.b $03,$31,$AF 
    dc.b $07,$31,$C2 
    dc.b $00,$31,$D7 
    dc.b $06,$32,$0F 
    dc.b $06,$32,$4C 
    dc.b $06,$32,$8D 
    dc.b $06,$32,$C8 
    dc.b $06,$33,$1A 
    dc.b $06,$33,$62 
    dc.b $01,$33,$B6 
    dc.b $01,$33,$D8 
    dc.b $01,$33,$F7

textData_Dialogues:
text1:
    ;                                      ^       ^
    dc.b $0B,$11,$10,$00,$A5,$03,$06,$0A,$01,$04,$01,$07
    ; Monster World war|einst ein friedvoller|Ort.
    dc.b $0C,$54," ",$0C,$67," war",cc_newline,"einst ein friedvoller",cc_newline,"Ort."
    dc.b cc_wait,cc_newline,cc_newline,cc_newline
    ; Doch der Frieden|wurde gestört, als|die Monster das Land|wie eine Armee|überfielen.
    dc.b "Doch der Frieden",cc_newline,"wurde gest",$F4,"rt, als",cc_newline,"die Monster das Land",cc_wait,cc_newline
    dc.b "wie eine Armee",cc_newline,$F5,"berfielen.",cc_wait,cc_newline,cc_newline,cc_newline
    ; Ein junger Mann|namens Shion gelobte,|sie zu besiegen und|seinem Land|den Frieden|zurückzubringen.
    dc.b "Ein junger Mann",cc_newline,"namens ",$01,$A0,$0E,$00,$01,$80," gelobte,",cc_newline,"sie zu besiegen",cc_wait,cc_newline
    dc.b "und seinem Land",cc_newline,"den Frieden",cc_newline,"zur",$F5,"ckzubringen.",cc_wait
    dc.b cc_close
text1_end:
text2:
    dc.b $03,$08,$04,$02,"Willkommen in",$02,$04,$07,$0C,$54,$20,$0C,$67,$21,$20,cc_wait
    dc.b cc_close
text2_end:

newSpriteTable_logo:
        ; ss: size, 
        ; ff: flag+1st id-nybble
        ; ii: 2nd id-nybble
        ; xx: xpos
        ; yy: ypos
        ; ----------------------
        ; ss, ff, ii, xx, yy
        ; ˅   ˅   ˅   ˅   ˅
    dc.b $0D,$62,$E0,$A8,$D8 ; 8 Tiles, 32x16
    dc.b $0D,$62,$E8,$C8,$D8 ; 8 Tiles, 32x16
    dc.b $0D,$62,$F0,$E8,$D8 ; 8 Tiles, 32x16
    dc.b $0D,$62,$F8,$08,$D8 ; 8 Tiles, 32x16
    dc.b $0D,$63,$00,$28,$D8 ; 8 Tiles, 32x16
    dc.b $0D,$63,$08,$48,$D8 ; 8 Tiles, 32x16
    dc.b $04,$63,$10,$68,$D8 ; 2 Tiles, 16x8

    dc.b $00,$63,$12,$C0,$E8 ; 1 Tiles, 8x8
    dc.b $05,$63,$13,$B8,$F0 ; 4 Tiles, 16x16
    dc.b $09,$63,$17,$B0,$00 ; 6 Tiles, 24x16
    dc.b $0C,$63,$1D,$A8,$10 ; 4 Tiles, 32x8

    dc.b $0F,$63,$21,$C8,$E8 ; 16 Tiles, 32x32
    dc.b $0F,$63,$31,$E8,$E8 ; 16 Tiles, 32x32
    dc.b $0F,$63,$41,$08,$E8 ; 16 Tiles, 32x32
    dc.b $0F,$63,$51,$28,$E8 ; 16 Tiles, 32x32

    dc.b $0D,$63,$61,$C8,$08 ; 8 Tiles, 32x16
    dc.b $0D,$63,$69,$E8,$08 ; 8 Tiles, 32x16
    dc.b $0D,$63,$71,$08,$08 ; 8 Tiles, 32x16
    dc.b $0D,$63,$79,$28,$08 ; 8 Tiles, 32x16

    dc.b $08,$63,$81,$48,$E8 ; 3 Tiles, 24x8
    dc.b $05,$63,$84,$48,$F0 ; 4 Tiles, 16x16
    dc.b $02,$63,$88,$48,$00 ; 3 Tiles, 8x24
    dc.b $FF


newSpriteTable_pressStart:
        ; ss: size, 
        ; ff: flag+1st id-nybble
        ; ii: 2nd id-nybble
        ; xx: xpos
        ; yy: ypos
        ; ----------------------
        ; ss, ff, ii, xx, yy
        ; ˅   ˅   ˅   ˅   ˅
    dc.b $0D,$63,$C0,$C8,$F1 ; 8 Tiles, 32x16
    dc.b $0D,$63,$C8,$E8,$F1 ; 8 Tiles, 32x16
    dc.b $0D,$63,$D0,$08,$F1 ; 8 Tiles, 32x16
    dc.b $05,$63,$D8,$28,$F1 ; 4 Tiles, 16x16
    dc.b $FF


newSpriteTable_newGame:
        ; ss: size, 
        ; ff: flag+1st id-nybble
        ; ii: 2nd id-nybble
        ; xx: xpos
        ; yy: ypos
        ; ----------------------
        ; ss, ff, ii, xx, yy
        ; ˅   ˅   ˅   ˅   ˅
    dc.b $01,$63,$DC,$CD,$F9 ; 2 Tiles, 8x16
    dc.b $0D,$63,$DE,$D5,$F9 ; 8 Tiles, 32x16 
    dc.b $0D,$63,$E6,$F5,$F9 ; 8 Tiles, 32x16
    dc.b $0D,$63,$EE,$15,$F9 ; 8 Tiles, 32x16
    dc.b $FF


newSpriteTable_continue:
        ; ss: size, 
        ; ff: flag+1st id-nybble
        ; ii: 2nd id-nybble
        ; xx: xpos
        ; yy: ypos
        ; ----------------------
        ; ss, ff, ii, xx, yy
        ; ˅   ˅   ˅   ˅   ˅
    dc.b $01,$63,$F8,$CD,$F9 ; 2 Tiles, 8x16
    dc.b $0D,$63,$FA,$D5,$F9 ; 8 Tiles, 32x16 
    dc.b $0D,$64,$02,$F5,$F9 ; 8 Tiles, 32x16
    dc.b $0D,$64,$0A,$15,$F9 ; 8 Tiles, 32x16
    dc.b $FF


newSpriteTable_arrow:
        ; ss: size, 
        ; ff: flag+1st id-nybble
        ; ii: 2nd id-nybble
        ; xx: xpos
        ; yy: ypos
        ; ----------------------
        ; ss, ff, ii, xx, yy
        ; ˅   ˅   ˅   ˅   ˅
    dc.b $05,$64,$12,$ED,$F9 ; 4 Tiles, 16x16
    dc.b $FF

    
    ; TILE MAPS:
    align 2
planeMapA:
    incbin  "bin/maps/planeA_map_shifted[C000-CFFF].bin"
planeMapB:
    incbin  "bin/maps/planeB_map_shifted[E000-EFFF].bin"


    ; GFX PACKS:
    align 2
newLogoGFX_pack1:
    incbin "bin/gfx/pack1.cbin"
newLogoGFX_pack2:
    incbin "bin/gfx/pack2.cbin"
newLogoGFX_pack3:
    incbin "bin/gfx/pack3.cbin"
newLogoGFX_pack4:
    incbin "bin/gfx/pack4.cbin"
newLogoGFX_pack5:
    incbin "bin/gfx/pack5.cbin"
newLogoGFX_pack6:
    incbin "bin/gfx/pack6.cbin"

newTitleTxtGFX_pack1:
    incbin "bin/gfx/pack7.cbin"
newTitleTxtGFX_pack2:
    incbin "bin/gfx/pack8.cbin"
newTitleTxtGFX_pack3:
    incbin "bin/gfx/pack9.cbin"

fontGFX_pack:
    incbin "bin/gfx/fonthack.cbin"
