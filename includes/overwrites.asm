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

    org     $1A4                            ; Adjust to 8MBIT ROM size 00FFFFFF (was 6MBIT 00BFFFFF)
    dc.l    $FFFFFF

    org     $1C0
    dc.b    "--> ArcadeTV <--"
    org     $1D0
    include "includes/version.asm"          ; include the generated file from build.bat
    org     $1E0                            ; Date is written upon building
    dc.b    "================"

    org     $1F0
    dc.b    "JUE"                           ; All Regions allowed

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


    ; CHEAT:
    ifne CHEAT_UNLGOLD
    org     $1882                           ; Cheat: Unl. Gold (do not decrease)
    nop
    nop
    endif



    ; translate Sphinx Quiz messages:
    org     $1CEE
    jmp     bypassSphinx_timesUp            ; Message: Time's up.
    org     $1CF4
ret_bypassSphinx_timesUp:                   ; only for Label

    org     $1D14
    jmp     bypassSphinx_incorrect          ; Message: Incorrect
    org     $1D1A
ret_bypassSphinx_incorrect:                 ; only for Label

    org     $1D22
    jmp     bypassSphinx_correct            ; Message: Correct
    nop
    org     $1D2A
ret_bypassSphinx_correct:                   ; only for Label

    org     $1D3E                           ; Move messages 2 chars left
    move.w  #0,($FFFF8C9A).w                ; was #2



    ; translate "Found the" (item):
    org     $1F14                           ; disable the first part of sentence
    nop
    nop

    org     $1F3A                           ; bypass address for second  part of sentence
    jmp     bypassFoundItemText
ret_bypassFoundItemText:                    ; only for label


    ; translate "Found XX Gold":
    org     $1F74                           ; bypass "Found XX Gold" routine
    jmp     bypassFoundGoldText
    
    org     $1F8E
sub_1F8E:                                   ; just a label


    org     $1F5C                           ; move "Found XX Gold" 3 tiles left
    addi.w  #11,d0                          ; value is subtracted in the routine, was #5, plus 3xsize_w = #11
    

    ;org     $4A74                           ; set initial GMode
    ;jmp     ($4CE2).l                       ; 4CEC,4CE2("Md"): Title; 4CB8,4F9C: SEGA; 4DCA: Game, 4D90: Demo; 



    ; CHEATS:
    ;----------------------
    ifne CHEAT_99GOLD
    org     $8E46                           ; Cheat: Have more Gold upon New Game start
    dc.b    $0F,$42,$3F                     ; 1st Nybble: Starting location (0=Shion's House, 1=Alsedo, 2=Castle, 3=Lilypad ...),
                                            ; 2nd Nybble + 2 Bytes = 999999 Gold
    endif
    ;----------------------
    ifne CHEAT_HEARTS
    org     $8E4A                           ; Cheat: Have all Hearts upon New Game start
    dc.b    $8
    endif
    ;----------------------
    ifne CHEAT_INVINC
    org     $E0A4                           ; Cheat: Unl. Energy (do not decrease)
    nop
    nop 
    endif
    

    ; TITLE SCREEN
    ; BACKGROUND POSITION:
    
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


    org     $7BB6
    jmp     bypassMenuMagicNames_alt
ret_bypassMenuMagicNames_alt:


    org     $7C56
    jmp     bypassMenuMagicNames
    nop
ret_bypassMenuMagicNames:


    org     $8276
    jmp     bypassMenuTableAddress_Headline
jumpBackMenuTableAddress_Headline:

    org     $82B2
    dc.b    $0F                             ; change: 10 -> 0F to shift headline 1 tile to the left

    org     $84DE
    dc.b    $F8,$F9,$00                     ; Replace AP (Attack Points) with custom icon
    dc.b    $FA,$FB,$00                     ; Replace DP (Defense Points) with custom icon
    dc.b    $FC,$FD,$00                     ; Replace SP (Speed Points) with custom icon


    
    ; Using the Ocarina:

    org     $C4AC
    move.l  #text_ShionPlaysOcarina_outOfContext,($FFFF8C7A).w

    org     $C4D2
    move.l  #text_ShionPlaysOcarina,($FFFF8C7A).w

    org     $C512
    move.l  #text_ShionPlaysOcarina_youPlayBeautifully,($FFFF8C7A).w

    org     $C522
    move.l  #text_ShionPlaysOcarina_notVeryWell,($FFFF8C7A).w

    org     $C52C
    move.l  #text_ShionPlaysOcarina_melodyNotRight,($FFFF8C7A).w



    ; End Credits / Staff Roll:

    org     $1AB10
    jmp     bypassstaffRoll
    nop 
ret_bypassstaffRoll:

    org     $1AB4C                          ; word sized timer var for staff roll (light beam, skip to outro)
    dc.w    $0A20                           ; was #820

    org     $1AEF8                          ; word sized timer var for staff roll (world map scroll in)
    dc.w    $1380                           ; was #F80



    ; Bypass "THE END" and "TO BE CONTINUED" ending GFX:

    org     $1B3B8
    jmp     change_theEnd                   ; Bypass instructions to load custom tiles into VRAM
    nop
ret_change_theEnd:

    ; Overwrite Tilemaps:

    org     $1B61A
tilemap_theEnd:
    ;       upper,lower ROW
    ;        ˅     ˅
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8081,$8087
    dc.w    $8082,$8088
    dc.w    $8083,$8089
    dc.w    $8084,$808A
    dc.w    $8085,$808B
    dc.w    $8086,$808C
    dc.w    $8081,$8087
    dc.w    $8082,$8088
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080

tilemap_toBeContinued:
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $808E,$80A8
    dc.w    $808F,$80A9
    dc.w    $8090,$80AA
    dc.w    $8091,$80AB
    dc.w    $8092,$80AC
    dc.w    $8093,$80AD
    dc.w    $8094,$80AE
    dc.w    $8095,$80AF
    dc.w    $8096,$80B0
    dc.w    $8097,$80B1
    dc.w    $8098,$80B2
    dc.w    $8099,$80B3
    dc.w    $809A,$80B4
    dc.w    $809B,$80B5
    dc.w    $809C,$80B6
    dc.w    $809D,$80B7
    dc.w    $809E,$80B8
    dc.w    $809F,$80B9
    dc.w    $80A0,$80BA
    dc.w    $80A1,$80BB
    dc.w    $80A2,$80BC
    dc.w    $80A3,$80BD
    dc.w    $80A4,$80BE
    dc.w    $80A5,$80BF
    dc.w    $80A6,$80C0
    dc.w    $80A7,$80C1
    dc.w    $8080,$8080
    dc.w    $8080,$8080
    dc.w    $8080,$8080


    ; Text Table Base Addresses:

    org     $1CC14
    dc.l    base_PointerTable_Dialogues

    org     $1CC18
    dc.l    base_textBoxStyles  ; was 0001DD74

    org     $211CA
    dc.l    base_PointerTable_Snippets
    
    org     $211CE
    dc.l    base_PointerTable_Items

    org     $211D2
    dc.l    base_PointerTable_Names

    org     $211D6
    dc.l    base_PointerTable_SpecialDialogues



    ; Replace GFX data pointers:
    ; Font:
    org     $4100C
    dc.l    fontGFX_pack_c+$02000000                ; was 02 041F23
    org     $4101C
    dc.l    fontGFX_pack_de+$02000000               ; was 02 0423FA

    ; Exit Sign:
    org     $412E0                                  ; was 02 056476
    dc.l    newExitGFX_pack+$02000000               ; was 02 0691F5


    ; Purapril Inn Sign:
    org     $410DC
    dc.l    newInnSign_Purapril_GFX_pack+$02000000  ; was 02 047A13

    ; Lilypad Inn Sign:
    org     $41220
    dc.l    newInnSign_Lilypad_GFX_pack+$02000000   ; was 02 051A1E

    ; Alsedo Inn Sign:
    org     $4134C
    dc.l    newInnSign_Alsedo_GFX_pack+$02000000    ; was 02 05906B

    ; Childam Inn Sign:
    org     $4142C
    dc.l    newInnSign_Childam_GFX_pack+$02000000   ; was 02 060049

    ; Begonia Inn Sign:
    org     $41470
    dc.l    newInnSign_Begonia_GFX_pack+$02000000   ; was 02 061EF0


    ; Logo:
    org     $4155C
    dc.l    newLogoGFX_pack1+$02000000              ; was 02 068930

    org     $41560
    dc.l    newLogoGFX_pack2+$02000000              ; was 02 068ADA

    org     $41564
    dc.l    newLogoGFX_pack3+$02000000              ; was 02 068C8A

    org     $41568
    dc.l    newLogoGFX_pack4+$02000000              ; was 02 068E5C

    org     $4156C
    dc.l    newLogoGFX_pack5+$02000000              ; was 02 068FEC

    org     $41570
    dc.l    newLogoGFX_pack6+$02000000              ; was 02 0691F5

    ; Titlescreen Text GFX: Press Start Button, New Game, Continue and Arrow
    org     $41598                
    dc.l    newTitleTxtGFX_pack1+$02000000          ; was 02 06A2C9

    org     $4159C 
    dc.l    newTitleTxtGFX_pack2+$02000000          ; was 02 06A3F5

    org     $415A0 
    dc.l    newTitleTxtGFX_pack3+$02000000          ; was 02 06A4FE

    ; Replace Sprite Table Values for re-positioning:
    org     $A0E4C                                  ; Sprite Table for Copyright Stuff
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
