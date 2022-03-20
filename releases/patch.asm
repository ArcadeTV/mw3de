; #################################################################################################
; #                                    Logo Revamp / GFX ROMHACK                                  #
; #                            Wonder Boy in Monster World (USA, Europe)                          #
; #                           for SEGA GENESIS - v1.1 2022-03-11, ArcadeTV                        #
; #################################################################################################
; =================================================================================================
; CHANGELOG
; =================================================================================================
; v1.2 : 2022-03-16
; - fixed a bug in writing planemap routine that would garble the menu gfx
;
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
size_word                equ 2
size_long                equ 4

; VDP port addresses
vdp_control              equ $00C00004
vdp_data                 equ $00C00000

; VDP commands
vdp_cmd_vram_write       equ $40000000

; VDP memory addresses
vram_addr_tiles          equ $0000
vram_addr_plane_a        equ $C000
vram_addr_plane_b        equ $E000



; =================================================================================================
; MACROS
; =================================================================================================

; Set the VRAM (video RAM) address to write to next
    macro SetVRAMWrite
    move.l  #(vdp_cmd_vram_write)|((\1)&$3FFF)<<16|(\1)>>14,vdp_control
    endm


; =================================================================================================
; OVERWRITES
; =================================================================================================
    
    org $1B2
    dc.b    $F0,$20                         ; SRAM Fix 1/2
    org $1BB
    dc.b    $81                             ; SRAM Fix 2/2

    org $8D8
    jmp     bypassCode
    
    org $8DE
jumpBack:                                   ; only for Label

    org $70E6
    jsr     writePlanemaps
    rept $B                                 ; overwrite $70E6-$7102: ($1C/#28 bytes = $E/#14 words) - 6 Bytes for the JSR above
    nop                                     ; with nops
    endr
                                            ; (i) $70F0.w: Skip SubRoutine to Load Plane A Map to C000-CFFF
                                            ; (i) $70FE.w: Skip SubRoutine to Load Plane B Map to E000-EFFF

    org $4155C
    dc.l    newLogoGFX_pack1+$02000000      ; was 02068930

    org $41560
    dc.l    newLogoGFX_pack2+$02000000      ; was 02068ADA

    org $41564
    dc.l    newLogoGFX_pack3+$02000000      ; was 02068C8A

    org $41568
    dc.l    newLogoGFX_pack4+$02000000      ; was 02068E5C

    org $4156C
    dc.l    newLogoGFX_pack5+$02000000      ; was 02068FEC

    org $41570
    dc.l    newLogoGFX_pack6+$02000000      ; was 020691F5


    org $A0E4C                              ; Sprite Table for Copyright Stuff
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

    org $A4C80 ; Free Space in ROM from here ------------------------------------------------------
    align 2
bypassCode:                                 ; Extra Routine to replace the sprite table address
    add.l   a0,d1                           ; Adopt original instruction
    cmp.l   #$000A0E00,d1                   ; Compare address in D1 if it matches A0E00
    bne     ret_bypassCode                  ; If not, branch to return without doing anything
    move.l  #newSpriteTable,d1              ; If found, load our own address into D1
ret_bypassCode:
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




; =================================================================================================
; DATA
; =================================================================================================

newSpriteTable:
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

    
    ; TILE MAPS:
    align 2
planeMapA:
    incbin "planeA_map_shifted[C000-CFFF].bin"
planeMapB:
    incbin "planeB_map_shifted[E000-EFFF].bin"


    ; GFX PACKS:
    align 2
newLogoGFX_pack1:
    incbin "pack1.cbin"
newLogoGFX_pack2:
    incbin "pack2.cbin"
newLogoGFX_pack3:
    incbin "pack3.cbin"
newLogoGFX_pack4:
    incbin "pack4.cbin"
newLogoGFX_pack5:
    incbin "pack5.cbin"
newLogoGFX_pack6:
    incbin "pack6.cbin"