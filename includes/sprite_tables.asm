; SPRITE TABLES:

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
