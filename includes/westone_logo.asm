; =================================================================================================
; WESTONE LOGO
; 256x224px, 32x28 tiles, 42 tiles used
; =================================================================================================

    even
    move	#$2700,sr

    ; init new game mode:

GameMode_Westone:
    dc.l    0
GM_Kwst:
    dc.b    "Kwst"

westone:

    ; reset timer
    move.l  #0,($FFFF1984).l


    ; fadeOut SEGA palette:

    lea    palettes_fadeOut_SEGA,a1
    move.l #16-1,d0                         ; 16 colors
    move.l #8-1,d1                          ; 8 steps/palettes
    move.l #$C0000000,vdp_control           ; CRAM Write (Color RAM)
.ldpal:
    move.w (a1)+,vdp_data
    dbra   d0,.ldpal
    move.l #$C0000000,vdp_control           ; CRAM Write (Color RAM)
    move.l #16-1,d0
    jsr    WaitVBlank
    dbra   d1,.ldpal



    ; load tiledata:

	SetVRAMWrite $1000                      ; Setup the VDP to write to VRAM address $0000

	lea     tiledata_westone,a0			    ; Move the address of the first graphics tile into a0
	move.l  #(42*size_tile_l)-1,d0          ; 42 tiles used
                                            ; Loop counter = 8 longwords per tile * num tiles (-1 for DBRA loop)
	.Tiles_Loop:							; Start of loop
	move.l  (a0)+,vdp_data					; Write tile line (4 bytes per line), and post-increment address
	dbra    d0,.Tiles_Loop					; Decrement d0 and loop until finished (when d0 reaches -1)



	; Load Tilemap
   	move.l 	#0,d4                           ; start y = 1st row
	clr.l 	d5
	lea     tilemap_westone,a0	                 
	move.l  #(28)-1,d1                      ; Map height
	move.l 	#vram_addr_plane_a,d2     ; start x/y on canvas
	jsr 	SendVRAMWriteAddress

@Map_Logo_Loop_cols:
	move.l  #(32)-1,d0                      ; Map width
@Map_Logo_Loop_rows:
    move.w  (a0)+,a1
    add.w   #$80,a1
    move.w  a1,vdp_data
	dbra    d0,@Map_Logo_Loop_rows		   

	addi.b 	#1,d4                           ; increment row counter
	move.l  d4,d5
	mulu.w  #64,d5
    ;addi.w  #10,d5 
    mulu.w  #size_word,d5
	move.l 	#vram_addr_plane_a,d2
	add.w 	d5,d2
	jsr 	SendVRAMWriteAddress
	dbra    d1,@Map_Logo_Loop_cols		    


    ; play sound:
    moveq   #$13,d0
    jsr     ($366)


    ; fadeIn Westone palette:

    lea    palettes_fadeIn,a1
    move.l #16-1,d0                         ; 16 colors
    move.l #8-1,d1                          ; 8 steps/palettes
    move.l #$C0000000,vdp_control           ; CRAM Write (Color RAM)
.ldpal:
    move.w (a1)+,vdp_data
    dbra   d0,.ldpal
    move.l #$C0000000,vdp_control           ; CRAM Write (Color RAM)
    move.l #16-1,d0
    jsr    WaitVBlank
    dbra   d1,.ldpal


    ; setup vdp
    ;move.w #$8014,($c00004).l
    ;move.w #$8164,($c00004).l

    ;jmp     infLoop

    jsr     PAD_InitPads

infLoop:
    jsr     WaitVBlank 
    move.l  ($FFFF1984).l,d0 
    addi.l  #1,d0 
    cmpi.l  #$150,d0
    bcc.s   jmp_SEGA
    move.l  d0,($FFFF1984).l

    jsr     PAD_ReadPadA
    btst    #pad_button_start,d7
    bne.w   abort_westone
    bra.s   infLoop


jmp_SEGA:
    
    ; fadeOut palette:

    lea    palettes_fadeOut,a1
    move.l #16-1,d0                         ; 16 colors
    move.l #7-1,d1                          ; 7 steps/palettes
    move.l #$C0000000,vdp_control           ; CRAM Write (Color RAM)
.ldpal:
    move.w (a1)+,vdp_data
    dbra   d0,.ldpal
    move.l #$C0000000,vdp_control           ; CRAM Write (Color RAM)
    move.l #16-1,d0
    jsr    WaitVBlank
    dbra   d1,.ldpal

    jsr     ($400)
    rts
    ;movea.l #$4D14,a1
    ;jmp ($50D4)



palettes_fadeIn:
    dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$0020,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$0040,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$0260,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$0480,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$06A0,$0222,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$08C0,$0444,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

palettes_fadeOut:
    dc.w $0000,$0000,$08C0,$0444,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$06A0,$0222,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$0480,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$0260,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$0040,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$0020,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
    dc.w $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

palettes_fadeOut_SEGA:
    dc.w $000,$000,$EC0,$EA0,$E80,$E60,$E40,$E20,$E00,$C00,$A00,$E60,$E80,$EA0,$EC0,$EEE
    dc.w $000,$000,$CA0,$C80,$E60,$C40,$C20,$C00,$C00,$A00,$800,$C40,$C60,$C80,$CA0,$CCC
    dc.w $000,$000,$A80,$A60,$E40,$A20,$A00,$A00,$A00,$800,$600,$A20,$A40,$A60,$A80,$AAA
    dc.w $000,$000,$860,$840,$E20,$800,$800,$800,$800,$600,$400,$800,$820,$840,$860,$888
    dc.w $000,$000,$640,$620,$E00,$600,$600,$600,$600,$400,$200,$600,$600,$620,$640,$666
    dc.w $000,$000,$420,$400,$E00,$400,$400,$400,$400,$200,$000,$400,$400,$400,$420,$444
    dc.w $000,$000,$200,$200,$E00,$200,$200,$200,$200,$000,$000,$200,$200,$200,$200,$222
    dc.w $000,$000,$000,$000,$E00,$000,$000,$000,$000,$000,$000,$000,$000,$000,$000,$000


SendVRAMWriteAddress:
	move.l 	d3,-(sp)
	clr.l 	d3
	; the two highest bits in d2 need to be the lowest bits in the final result
	move.w	d2,d3                                   ; start by copying d2 to d3	
	lsr.w	#$07,d3	                                ; shift bits 7 to the right
	lsr.w	#$07,d3	                                ; shift bits 7 more to the right
	and.l	#%00000000000000000000000000000011,d3	; clear all but lowest two
	; the two highest bits from d2 are now in d3
	swap	d2	                                    ; move the value in d2 to the high word
	and.l	#%00111111111111110000000000000000,d2	; clear all but the magic 14
	add.l	d3,d2	                                ; add the value in d0
	add.l	#vdp_cmd_vram_write,d2	                ; add the base VRAM write address
    move.l  d2,vdp_control
	move.l 	(sp)+,d3
	rts


abort_westone:                                      ; jump when start is pressed
    moveq   #$FFFFFFFF,d0                           ; stop logo jingle sound
    jsr     ($366)
    jmp     jmp_SEGA


palette_westone:
    incbin  "includes/bin/gfx/westone_palette.bin"
tiledata_westone:
    incbin  "includes/bin/gfx/westone_tiledata_32x28_42t.bin"
tilemap_westone:
    incbin  "includes/bin/gfx/westone_tilemap_32x28.bin"