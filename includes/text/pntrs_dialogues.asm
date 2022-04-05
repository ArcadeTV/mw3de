; =================================================================================================
; POINTER TABLE DATA: DIALOGUES
; origin: $1DD94-$1DF1C
; Format: XX.b YYYY.w
;         XX:   Textbox Type
;         YYYY: Distance from pointer table base
; =================================================================================================
    
    align 2

base_PointerTable_Dialogues:
    
    ; #001: 00 0189
    dc.b $00
    dc.w text1-base_PointerTable_Dialogues      ; First textbox that pops up automatically upon game start in the house
    
    ; #002: 01 0265
    dc.b $01
    dc.w text2-base_PointerTable_Dialogues      ; First sign after leaving the house
    
    ; #003: 00 027A
    dc.b $00
    dc.w text3-base_PointerTable_Dialogues      ; Old lady in the tree
    
    ; #004: 01 0359
    dc.b $01
    dc.w text4-base_PointerTable_Dialogues      ; Alsedo Sign
    
    ; #005: 01 0371
    dc.b $01
    dc.w text5-base_PointerTable_Dialogues      ; Purapril Castle Entrance
    
    ; #006: 01 0388
    dc.b $01
    dc.w text6-base_PointerTable_Dialogues      ; Maugham Desert Sign
    
    ; #007: 01 03A9
    dc.b $01
    dc.w text7-base_PointerTable_Dialogues      ; Lilypad Sign
    
    ; #008: 01 03BE
    dc.b $01
    dc.w text8-base_PointerTable_Dialogues      ; Begonia Sign
    
    ; #009: 01 03DC
    dc.b $01
    dc.w text9-base_PointerTable_Dialogues      ; Childam Sign
    
    ; #010: 01 03FD
    dc.b $01
    dc.w text10-base_PointerTable_Dialogues     ; Purapril Sign
    
    ; #011: 00 0419
    dc.b $00
    dc.w text11-base_PointerTable_Dialogues     
    
    ; #012: 00 041F
    dc.b $00
    dc.w text12-base_PointerTable_Dialogues 
    
    ; #013: 00 0425
    dc.b $00
    dc.w text13-base_PointerTable_Dialogues 
    
    ; #014: 00 042B
    dc.b $08
    dc.w text14-base_PointerTable_Dialogues     ; Alsedo Shop: Spear
    
    ; #015: 00 0431
    dc.b $00
    dc.w text15-base_PointerTable_Dialogues 
    
    ; #016: 00 0437
    dc.b $00
    dc.w text16-base_PointerTable_Dialogues 
    
    ; #017: 00 043D
    dc.b $00
    dc.w text17-base_PointerTable_Dialogues 
    
    ; #018: 00 0443
    dc.b $00
    dc.w text18-base_PointerTable_Dialogues 
    
    ; #019: 00 0449
    dc.b $00
    dc.w text19-base_PointerTable_Dialogues 
    
    ; #020: 00 044F
    dc.b $00
    dc.w text20-base_PointerTable_Dialogues 
    
    ; #021: 00 0455
    dc.b $00
    dc.w text21-base_PointerTable_Dialogues 
    
    ; #022: 00 045B
    dc.b $00
    dc.w text22-base_PointerTable_Dialogues 
    
    ; #023: 00 0461
    dc.b $00
    dc.w text23-base_PointerTable_Dialogues 
    
    ; #024: 00 0467
    dc.b $00
    dc.w text24-base_PointerTable_Dialogues 
    
    ; #025: 00 046D
    dc.b $00
    dc.w text25-base_PointerTable_Dialogues 
    
    ; #026: 00 0473
    dc.b $00
    dc.w text26-base_PointerTable_Dialogues 
    
    ; #027: 00 0479
    dc.b $00
    dc.w text27-base_PointerTable_Dialogues 
    
    ; #028: 00 047F
    dc.b $00
    dc.w text28-base_PointerTable_Dialogues 
    
    ; #029: 00 0485
    dc.b $00
    dc.w text29-base_PointerTable_Dialogues 
    
    ; #030: 00 048B
    dc.b $00
    dc.w text30-base_PointerTable_Dialogues 
    
    ; #031: 00 0491
    dc.b $00
    dc.w text31-base_PointerTable_Dialogues 
    
    ; #032: 00 0497
    dc.b $00
    dc.w text32-base_PointerTable_Dialogues 
    
    ; #033: 00 049D
    dc.b $00
    dc.w text33-base_PointerTable_Dialogues 
    
    ; #034: 00 04A3
    dc.b $00
    dc.w text34-base_PointerTable_Dialogues 
    
    ; #035: 00 04A9
    dc.b $00
    dc.w text35-base_PointerTable_Dialogues 
    
    ; #036: 00 04AF
    dc.b $00
    dc.w text36-base_PointerTable_Dialogues 
    
    ; #037: 00 04B5
    dc.b $00
    dc.w text37-base_PointerTable_Dialogues 
    
    ; #038: 00 04BB
    dc.b $00
    dc.w text38-base_PointerTable_Dialogues 
    
    ; #039: 00 04C1
    dc.b $00
    dc.w text39-base_PointerTable_Dialogues 
    
    ; #040: 00 04C7
    dc.b $00
    dc.w text40-base_PointerTable_Dialogues 
    
    ; #041: 01 04CD
    dc.b $01
    dc.w text41-base_PointerTable_Dialogues 
    
    ; #042: 00 04F6
    dc.b $08
    dc.w text42-base_PointerTable_Dialogues     ; Purapril: Sundry Shop: Charmstone
    
    ; #043: 00 04FC
    dc.b $08
    dc.w text43-base_PointerTable_Dialogues     ; Shop Item
    
    ; #044: 00 0502
    dc.b $08
    dc.w text44-base_PointerTable_Dialogues     ; Shop Item
    
    ; #045: 00 0508
    dc.b $08
    dc.w text45-base_PointerTable_Dialogues     ; Shop Item
    
    ; #046: 00 050E
    dc.b $08
    dc.w text46-base_PointerTable_Dialogues     ; Shop Item
    
    ; #047: 00 0514
    dc.b $08
    dc.w text47-base_PointerTable_Dialogues     ; Shop Item
    
    ; #048: 00 051A
    dc.b $08
    dc.w text48-base_PointerTable_Dialogues     ; Shop Item
    
    ; #049: 00 0520
    dc.b $08
    dc.w text49-base_PointerTable_Dialogues     ; Shop Item
    
    ; #050: 00 0526
    dc.b $00
    dc.w text50-base_PointerTable_Dialogues 
    
    ; #051: 00 058A
    dc.b $00
    dc.w text51-base_PointerTable_Dialogues 
    
    ; #052: 00 05E0
    dc.b $00
    dc.w text52-base_PointerTable_Dialogues 
    
    ; #053: 00 062C
    dc.b $00
    dc.w text53-base_PointerTable_Dialogues 
    
    ; #054: 00 06E1
    dc.b $00
    dc.w text54-base_PointerTable_Dialogues 
    
    ; #055: 00 06E7
    dc.b $00
    dc.w text55-base_PointerTable_Dialogues 
    
    ; #056: 00 077E
    dc.b $00
    dc.w text56-base_PointerTable_Dialogues 
    
    ; #057: 00 080A
    dc.b $00
    dc.w text57-base_PointerTable_Dialogues 
    
    ; #058: 02 08A6
    dc.b $02
    dc.w text58-base_PointerTable_Dialogues 
    
    ; #059: 00 099A
    dc.b $00
    dc.w text59-base_PointerTable_Dialogues 
    
    ; #060: 00 09DE
    dc.b $00
    dc.w text60-base_PointerTable_Dialogues 
    
    ; #061: 00 09E4
    dc.b $00
    dc.w text61-base_PointerTable_Dialogues 
    
    ; #062: 00 0AB7
    dc.b $00
    dc.w text62-base_PointerTable_Dialogues 
    
    ; #063: 00 0B19
    dc.b $00
    dc.w text63-base_PointerTable_Dialogues 
    
    ; #064: 00 0B99
    dc.b $00
    dc.w text64-base_PointerTable_Dialogues 
    
    ; #065: 00 0D49
    dc.b $00
    dc.w text65-base_PointerTable_Dialogues 
    
    ; #066: 00 0E59
    dc.b $00
    dc.w text66-base_PointerTable_Dialogues 
    
    ; #067: 00 0E5F
    dc.b $00
    dc.w text67-base_PointerTable_Dialogues 
    
    ; #068: 00 0F03
    dc.b $00
    dc.w text68-base_PointerTable_Dialogues 
    
    ; #069: 00 0F4C
    dc.b $00
    dc.w text69-base_PointerTable_Dialogues 
    
    ; #070: 00 10C0
    dc.b $00
    dc.w text70-base_PointerTable_Dialogues 
    
    ; #071: 00 125E
    dc.b $00
    dc.w text71-base_PointerTable_Dialogues 
    
    ; #072: 00 131E
    dc.b $00
    dc.w text72-base_PointerTable_Dialogues 
    
    ; #073: 00 1393
    dc.b $00
    dc.w text73-base_PointerTable_Dialogues 
    
    ; #074: 05 142B
    dc.b $05
    dc.w text74-base_PointerTable_Dialogues 
    
    ; #075: 00 16A1
    dc.b $00
    dc.w text75-base_PointerTable_Dialogues 
    
    ; #076: 00 172A
    dc.b $00
    dc.w text76-base_PointerTable_Dialogues 
    
    ; #077: 00 1799
    dc.b $00
    dc.w text77-base_PointerTable_Dialogues 
    
    ; #078: 00 1820
    dc.b $00
    dc.w text78-base_PointerTable_Dialogues 
    
    ; #079: 00 18F7
    dc.b $00
    dc.w text79-base_PointerTable_Dialogues 
    
    ; #080: 01 1AA4
    dc.b $01
    dc.w text80-base_PointerTable_Dialogues 
    
    ; #081: 00 1AB4
    dc.b $00
    dc.w text81-base_PointerTable_Dialogues 
    
    ; #082: 03 1D03
    dc.b $03
    dc.w text82-base_PointerTable_Dialogues 
    
    ; #083: 01 1D16
    dc.b $01
    dc.w text83-base_PointerTable_Dialogues 
    
    ; #084: 00 1D2F
    dc.b $00
    dc.w text84-base_PointerTable_Dialogues 
    
    ; #085: 03 1E5D
    dc.b $09
    dc.w text85-base_PointerTable_Dialogues 
    
    ; #086: 00 1E6D
    dc.b $00
    dc.w text86-base_PointerTable_Dialogues 
    
    ; #087: 00 1EBD
    dc.b $00
    dc.w text87-base_PointerTable_Dialogues 
    
    ; #088: 00 1EFF
    dc.b $00
    dc.w text88-base_PointerTable_Dialogues 
    
    ; #089: 00 211F
    dc.b $00
    dc.w text89-base_PointerTable_Dialogues 
    
    ; #090: 00 227A
    dc.b $00
    dc.w text90-base_PointerTable_Dialogues 
    
    ; #091: 01 22D5
    dc.b $01
    dc.w text91-base_PointerTable_Dialogues 
    
    ; #092: 04 22EE
    dc.b $04
    dc.w text92-base_PointerTable_Dialogues 
    
    ; #093: 00 25F8
    dc.b $00
    dc.w text93-base_PointerTable_Dialogues 
    
    ; #094: 01 26AF
    dc.b $01
    dc.w text94-base_PointerTable_Dialogues 
    
    ; #095: 00 26BF
    dc.b $00
    dc.w text95-base_PointerTable_Dialogues 
    
    ; #096: 03 2847
    dc.b $03
    dc.w text96-base_PointerTable_Dialogues 
    
    ; #097: 01 2855
    dc.b $01
    dc.w text97-base_PointerTable_Dialogues 
    
    ; #098: 01 2876
    dc.b $01
    dc.w text98-base_PointerTable_Dialogues 
    
    ; #099: 00 288F
    dc.b $00
    dc.w text99-base_PointerTable_Dialogues 
    
    ; #100: 00 292D
    dc.b $00
    dc.w text100-base_PointerTable_Dialogues 
    
    ; #101: 00 2983
    dc.b $00
    dc.w text101-base_PointerTable_Dialogues 
    
    ; #102: 00 2989
    dc.b $00
    dc.w text102-base_PointerTable_Dialogues 
    
    ; #103: 00 2B43
    dc.b $00
    dc.w text103-base_PointerTable_Dialogues 
    
    ; #104: 03 2CB4
    dc.b $03
    dc.w text104-base_PointerTable_Dialogues 
    
    ; #105: 03 2CCA
    dc.b $03
    dc.w text105-base_PointerTable_Dialogues 
    
    ; #106: 07 2CE0
    dc.b $07
    dc.w text106-base_PointerTable_Dialogues 
    
    ; #107: 07 2CF5
    dc.b $07
    dc.w text107-base_PointerTable_Dialogues 
    
    ; #108: 00 2D14
    dc.b $00
    dc.w text108-base_PointerTable_Dialogues 
    
    ; #109: 00 2D45
    dc.b $00
    dc.w text109-base_PointerTable_Dialogues 
    
    ; #110: 00 2D76
    dc.b $00
    dc.w text110-base_PointerTable_Dialogues 
    
    ; #111: 00 2DEA
    dc.b $00
    dc.w text111-base_PointerTable_Dialogues 
    
    ; #112: 00 2E7D
    dc.b $00
    dc.w text112-base_PointerTable_Dialogues 
    
    ; #113: 00 2F31
    dc.b $00
    dc.w text113-base_PointerTable_Dialogues 
    
    ; #114: 00 2F68
    dc.b $00
    dc.w text114-base_PointerTable_Dialogues 
    
    ; #115: 00 2FA6
    dc.b $00
    dc.w text115-base_PointerTable_Dialogues 
    
    ; #116: 01 3038
    dc.b $01
    dc.w text116-base_PointerTable_Dialogues 
    
    ; #117: 01 309D
    dc.b $01
    dc.w text117-base_PointerTable_Dialogues 
    
    ; #118: 00 30D2
    dc.b $00
    dc.w text118-base_PointerTable_Dialogues 
    
    ; #119: 00 3108
    dc.b $00
    dc.w text119-base_PointerTable_Dialogues 
    
    ; #120: 03 31AF
    dc.b $03
    dc.w text120-base_PointerTable_Dialogues 
    
    ; #121: 07 31C2
    dc.b $07
    dc.w text121-base_PointerTable_Dialogues 
    
    ; #122: 00 31D7
    dc.b $00
    dc.w text122-base_PointerTable_Dialogues 
    
    ; #123: 06 320F
    dc.b $06
    dc.w text123-base_PointerTable_Dialogues 
    
    ; #124: 06 324C
    dc.b $06
    dc.w text124-base_PointerTable_Dialogues 
    
    ; #125: 06 328D
    dc.b $06
    dc.w text125-base_PointerTable_Dialogues 
    
    ; #126: 06 32C8
    dc.b $06
    dc.w text126-base_PointerTable_Dialogues 
    
    ; #127: 06 331A
    dc.b $06
    dc.w text127-base_PointerTable_Dialogues 
    
    ; #128: 06 3362
    dc.b $06
    dc.w text128-base_PointerTable_Dialogues 
    
    ; #129: 01 33B6
    dc.b $01
    dc.w text129-base_PointerTable_Dialogues 
    
    ; #130: 01 33D8
    dc.b $01
    dc.w text130-base_PointerTable_Dialogues 
    
    ; #131: 01 33F7
    dc.b $01
    dc.w text131-base_PointerTable_Dialogues
