; =================================================================================================
; OVERWRITES
; =================================================================================================
    
    ; HEADER
    org     $13F                            ; Modify Game Title in Header
    dc.b    "German"

    org     $166                            ; Fix spelling in title
    dc.b    "W"

    org     $16C                            ; Modify Game Title in Header
    dc.b    "Deutsch"

    org     $1C0
    dc.b    "--> ArcadeTV <--"
    org     $1D0
    include "includes/version.asm"          ; include the generated file from build.bat
    org     $1E0                            ; Date is written upon building
    dc.b    "================"


    ; SRAM FIX
    org     $1B2
    dc.b    $F0,$20                         ; SRAM Fix 1/2
    org     $1BB
    dc.b    $81                             ; SRAM Fix 2/2

    ; LOGO SPRITES
    org $8D8
    jmp     bypassSpriteTableAddress
    
    org $8DE
jumpBack:                                   ; only for Label

    ; CHEATS
    ifne CHEAT
    org     $1882                           ; Cheat: Unl. Gold (do not decrease)
    nop
    nop
    endif

    org     $1F74                           ; translate "Found XX Gold"
    jmp     bypassFoundText
    org     $1F8E
sub_1F8E:

    ; CHEATS
    ifne CHEAT
    org     $8E46                           ; Cheat: Have more Gold upon New Game start
    dc.b    $0F,$42,$3F                     ; 1st Nybble: Starting location (0=Shion's House, 1=Alsedo, 2=Castle, 3=Lilypad ...),
                                            ; 2nd Nybble + 2 Bytes = 999999 Gold
    org     $8E4A                           ; Cheat: Have all Hearts upon New Game start
    dc.b    $8
    org     $E0A4                           ; Cheat: Unl. Energy (do not decrease)
    nop
    nop 
    endif
    
    ; BACKGROUND POSITION
    org     $70E6
    jmp     writePlanemaps
    ;rept    $B                              ; overwrite $70E6-$7102: ($1C/#28 bytes = $E/#14 words) - 6 Bytes for the JSR above
    ;nop                                     ; with nops
    ;endr
                                            ; (i) $70F0.w: Skip SubRoutine to Load Plane A Map to C000-CFFF
                                            ; (i) $70FE.w: Skip SubRoutine to Load Plane B Map to E000-EFFF
                                            

    ; MENU HACKS:

    org     $7D6E
    dc.b    $0E                             ;change: 0F -> 0E to shift left column of items 1 tile to the left
    org     $7D70
    dc.b    $17                             ;change: 18 -> 17 to shift right column of items 1 tile to the left
    org     $7D72
    dc.b    $0E                             ;change: 0F -> 0E to shift left column of items 1 tile to the left
    org     $7D74
    dc.b    $17                             ;change: 18 -> 17 to shift right column of items 1 tile to the left
    org     $7D76
    dc.b    $0E                             ;change: 0F -> 0E to shift left column of items 1 tile to the left
    org     $7D78
    dc.b    $17                             ;change: 18 -> 17 to shift right column of items 1 tile to the left

    org     $77D4
    jmp     bypassMenuTableAddress_Items
jumpBackMenuTableAddress_Items:

    org     $8276
    jmp     bypassMenuTableAddress_Headline
jumpBackMenuTableAddress_Headline:

    org     $82B2
    dc.b    $0F                             ; change: 10 -> 0F to shift headline 1 tile to the left

    org     $84DE
    dc.b    $F8,$F9,$00                     ; Replace AP (Attack Points) with custom icon
    dc.b    $FA,$FB,$00                     ; Replace DP (Defense Points) with custom icon
    dc.b    $FC,$FD,$00                     ; Replace SP (Speed Points) with custom icon


    ; Bypass "THE END" and "TO BE CONTINUED" ending GFX:

    org     $1B3B8
    jmp     change_theEnd
    nop
ret_change_theEnd;

    org     $1B61A
tilemap_theEnd:
    dc.w    $8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8081,$8082,$8083,$8084,$8085,$8086,$8081,$8082,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080
    dc.w    $8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8087,$8088,$8089,$808A,$808B,$808C,$8087,$8088,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080,$8080
tilemap_toBeContinued:
    dc.w    $8080,$8080,$8080,$808D,$808E,$808F,$8090,$8091,$8092,$8093,$8094,$8095,$8096,$8097,$8098,$8099,$809A,$809B,$809C,$809D,$809E,$809F,$80A0,$80A1,$80A2,$80A3,$80A4,$80A5,$80A6,$8080,$8080,$8080
    dc.w    $8080,$8080,$8080,$80A7,$80A8,$80A9,$80AA,$80AB,$80AC,$80AD,$80AE,$80AF,$80B0,$80B1,$80B2,$80B3,$80B4,$80B5,$80B6,$80B7,$80B8,$80B9,$80BA,$80BB,$80BC,$80BD,$80BE,$80BF,$80C0,$8080,$8080,$8080
;        ;  PCCVHAAAAAAAAAAA
;mapbits = %1000000000000000
;emptytile = ($80^mapbits)
;    dc.w    emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,($81^mapbits),($82^mapbits),($83^mapbits),($84^mapbits),($85^mapbits),($86^mapbits),($81^mapbits),($82^mapbits),emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile
;    dc.w    emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,($87^mapbits),($88^mapbits),($89^mapbits),($8A^mapbits),($8B^mapbits),($8C^mapbits),($87^mapbits),($88^mapbits),emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile,emptytile
;tilemap_toBeContinued:
;    dc.w    emptytile,emptytile,emptytile
;    rept    $1A                             ; repeat #26 times
;    dc.w    ($80+13+REPTN)^mapbits          ; starting ID of tiles + no. of tiles already used (#13) + REPTN (0..1..2..)
;    endr                                    ; end repeat-loop
;    dc.w    emptytile,emptytile,emptytile
;    dc.w    emptytile,emptytile,emptytile
;    rept    $1A                             ; repeat #26 times
;    dc.w    ($80+39+REPTN)^mapbits          ; starting ID of tiles + no. of tiles already used (#13+26) + REPTN (0..1..2..)
;    endr                                    ; end repeat-loop
;    dc.w    emptytile,emptytile,emptytile


    ; Text Table Base Addresses:

    org     $1CC14
    dc.l    base_PointerTable_Dialogues

    org     $211D2
    dc.l    base_PointerTable_Names

    org     $211D6
    dc.l    base_PointerTable_SpecialDialogues

    ; Replace GFX data pointers:
    ; Font:
    org     $4100C
    dc.l    fontGFX_pack_c+$02000000        ; was 02 041F23
    org     $4101C
    dc.l    fontGFX_pack_de+$02000000       ; was 02 0423FA

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
