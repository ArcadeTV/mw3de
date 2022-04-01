## Hacking Notes

### Adresses
#### ROM

| Address     | Length | Type          | Description                                                                                                                  |
| :---------- | :----- | :------------ | :--------------------------------------------------------------------------------------------------------------------------- |
| 7BFE        | 6*w    | Pointer Table | relative Pointers to Child Menu Items of "WEAPON", starting at $82C4, format: base.l+value.w                                 |
| 82B6        | 6*w    | Pointer Table | relative Pointers to Menu Items starting at $82C4, format: base.l+value.w                                                    |
| 1DD94       | $189   | Pointer Table | relative Pointers to Dialogues starting at $1DF1D, format: textboxtype.b+length.w                                            |
| 211DA       | $1D0   | Pointer Table | relative Pointers to Dictionary starting at $213A9                                                                           |
| 2125A-21A39 | $150   | Pointer Table | Text                                                                                                                         |
| 21720       |        | Pointer Table | Item Names                                                                                                                   |
| 21A06       |        | Pointer Table | Names                                                                                                                        |
| 41000-41BBF | $BC0   | Pointer Table | Points to GFX Packs:<br>Format: TLLL<br>T:Type<br>00: Uncompressed<br>01: Compressed<br>02:LZ77+Huffman<br>L:Absolute Offset |
| 41C00-9622A | $5462B | GFX Data      | GFX Data, decribed in Table at $41000                                                                                        |
|             |        |               |                                                                                                                              |

#### RAM

| Address | Length | Description                          |
| :------ | :----- | :----------------------------------- |
| FF59F2  | w      | Timer: Invincibility after being hit |
| FF962E  | w      | Gold                                 |
| FFDA00  | w      | Energy                               |
| FF3309  | w      | initial Gold, FFFF for max Gold      |


### GFX

#### Font
Is referenced in the table that starts at 41000.
Entry is at 4101C-4101F: 02_0423FA

#### SEGA Screen
| Location | VDP Write | Description                  |
| :------- | :-------- | :--------------------------- |
| 5596     | Palette   | Update Palettes from $FF2800 |

#### Title Screen
| Plane A   | Plane B   | Sprites   |
| :-------- | :-------- | :-------- |
| C000-CFFF | E000-EFFF | D000-D27F |
| Shion     | Dragon    | Logo      |

| Location | VDP Write    | Description                            |
| :------- | :----------- | :------------------------------------- |
| 2336     | Tiles        | For Plane B: Dragon                    |
| 6D9E     | Tiles        | For Plane B: Dragon, first pack: 65CC6 |
| 6BCE     | Tiles        | For Sprites: Logo, first pack: 4155C   |
| 5596     | Sprite Table | Sprites in vram D000 from FF2800       |


 
##### GFX Packs Usage:
02_065CC6.cbin
02_065EF0.cbin
02_066154.cbin
02_066351.cbin
02_0665B2.cbin
02_06685E.cbin
02_066A98.cbin
02_066CA2.cbin
02_066E99.cbin
00_067047.cbin
02_067222.cbin
02_067448.cbin
02_067612.cbin
02_067782.cbin
02_067953.cbin
02_067AF6.cbin
02_067C25.cbin
02_067DB4.cbin
02_067F12.cbin
02_068151.cbin
02_068394.cbin
02_0685E5.cbin
02_0687EF.cbin
02_068930.cbin
02_068ADA.cbin
02_068C8A.cbin
02_068E5C.cbin
02_068FEC.cbin
02_0691F5.cbin
02_06925D.cbin
02_069346.cbin
02_06940A.cbin
02_069541.cbin
02_069797.cbin
02_0699B5.cbin
02_069C0A.cbin
02_069E3B.cbin
02_06A0B4.cbin
02_06A2C9.cbin
02_06A3F5.cbin
02_06A4FE.cbin

Text (Press Start, New Game, Continue) GFX Packs:
Tiles in VRAM from 3C0, Sprite Table at: 
41598: 02_06A2C9
4159C: 02_06A3F5
415A0: 02_06A4FE
Sprite Tables: A18C8, A18A8

A18A8-A18B7: (New Game)
05 6 3D0 1A FB 
0D 6 3C8 FA FB 
0D 6 3C0 DA FB FF

A18B8-A18C7: (Continue)
05 6 3E4 1A FB
0D 6 3DC FA FB 
0D 6 3D4 DA FB FF

A18C8-A18E6: (Press Start Button)
01 6 416 4D FB
0D 6 40C 2D FB
0D 6 404 0D FB
0D 6 3F8 ED FB
0D 6 3F0 CD FB
0D 6 3E8 AD FB
FF

A18E7-A18EC: (-> Arrow)
05 6 400 FB F9 FF


SEGA GFX Packs:
Pointers: 41000-410A7

Plane A/B GFX Packs:
Pointers: 41500-415A3

Logo GFX Packs:
Pointers: 4155C-41571

02068930
02068ADA
02068C8A
02068E5C
02068FEC
020691F5

Compressed GFX Data: 68930-06925C (32 tiles, 8x8 each, in each pack) [~2 sprites á 32x32 in each pack]
068930
068ADA
068C8A
068E5C
068FEC
0691F5

New Logo: 224x64 px = 28x8 tiles, 14 sprites each 32x32px(4x4 tiles) [=7 GFX packs]


000A37F8:   contains 000E0000 which is shifted and added to 000A0000 to read 000A0E00 (location of sprite table)

000008DA:   move.l  d1,$FFFFC100(a4)
then
Sprite Table Address in RAM FFC100:
FFC100: 000A0E00 000A0E4C 000A018C8
then
00:54F2  20 6C  MOVE.L  $C100(A4),A0


Trace:
```
00:53D8  4E B8  JSR     ($080E)                  A0=FFFF8B28 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BFC D0=FFFFFFC0 D1=0000FFFF D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:080E  41 F9  LEA     ($000A0000),A0           A0=FFFF8B28 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=FFFFFFC0 D1=0000FFFF D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:0814  08 EC  BSET    #0,$C003(A4)             A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=FFFFFFC0 D1=0000FFFF D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:081A  66 30  BNE     #$30 [00:084C]           A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=FFFFFFC0 D1=0000FFFF D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:081C  70 00  MOVEQ   #$00,D0                  A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=FFFFFFC0 D1=0000FFFF D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:081E  10 2C  MOVE.B  $C300(A4),D0             A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=0000FFFF D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:0822  32 30  MOVE.W  $00(A0,D0),D1            A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000008 D1=0000FFFF D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvc
00:0826  10 2C  MOVE.B  $C301(A4),D0             A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000008 D1=0000004E D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvc
00:082A  D2 40  ADD.W   D0,D1                    A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=0000004E D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:082C  32 30  MOVE.W  $00(A0,D1),D1            A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=0000004E D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvc
00:0830  10 2C  MOVE.B  $C302(A4),D0             A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=00000264 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvc
00:0834  D2 40  ADD.W   D0,D1                    A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=00000264 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:0836  32 30  MOVE.W  $00(A0,D1),D1            A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=00000264 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvc
00:083A  43 F0  LEA     $00(A0,D1),A1            A0=000A0000 A1=0000560C A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=000037F8 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvc
00:083E  29 49  MOVE.L  A1,$C500(A4)             A0=000A0000 A1=000A37F8 A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=000037F8 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvc
00:0842  42 6C  CLR.W   $C600(A4)                A0=000A0000 A1=000A37F8 A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=000037F8 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvc
00:0846  42 2C  CLR.B   $D400(A4)                A0=000A0000 A1=000A37F8 A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=000037F8 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:084A  60 2C  BRA     #$2C [00:0878]           A0=000A0000 A1=000A37F8 A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=000037F8 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:0878  10 19  MOVE.B  (A1)+,D0                 A0=000A0000 A1=000A37F8 A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=000037F8 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:087A  0C 00  CMPI.B  #$F0,D0                  A0=000A0000 A1=000A37F9 A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=000037F8 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnZvc
00:087E  65 50  BCS     #$50 [00:08D0]           A0=000A0000 A1=000A37F9 A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=000037F8 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvC
00:08D0  12 19  MOVE.B  (A1)+,D1                 A0=000A0000 A1=000A37F9 A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=000037F8 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvC
00:08D2  E1 49  LSL.W   #8,D1                    A0=000A0000 A1=000A37FA A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=0000370E D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvc
00:08D4  12 19  MOVE.B  (A1)+,D1                 A0=000A0000 A1=000A37FA A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=00000E00 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 XnzvC
00:08D6  48 C1  EXT.L   D1                       A0=000A0000 A1=000A37FB A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=00000E00 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 XnZvc
00:08D8  D2 88  ADD.L   A0,D1                    A0=000A0000 A1=000A37FB A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=00000E00 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 Xnzvc
00:08DA  29 41  MOVE.L  D1,$C100(A4)             A0=000A0000 A1=000A37FB A2=0000601E A3=00FF2CFE A4=00000000 A5=FFFF8248 A6=00000000 A7=00FF0BF8 D0=00000000 D1=000A0E00 D2=4B636F6C D3=00000000 D4=0000FFFF D5=0000FFFF D6=00000004 D7=00002000 xnzvc
```

00:53D8  JSR     ($080E)            ; Jump to Subroutine
00:080E  LEA     ($000A0000),A0     ; Load Address in A0
00:0814  BSET    #0,$C003(A4)       ; Set LSB in FFC003 to 1
00:081A  BNE     #$30 [00:084C]     ; Branch if not 0
00:081C  MOVEQ   #$00,D0            ; Clear D0
00:081E  MOVE.B  $C300(A4),D0       ; Move 1 BYTE from FFC300 to D0
00:0822  MOVE.W  $00(A0,D0),D1      ; Move a WORD from (SUM of WORDS A0+D0) to D1
00:0826  MOVE.B  $C301(A4),D0       ; Move 1 BYTE from FFC301 to D0
00:082A  ADD.W   D0,D1              ; Add the WORD from D0 to D1
00:082C  MOVE.W  $00(A0,D1),D1      ; Move a WORD from (SUM of WORDS A0+D1) to D1
00:0830  MOVE.B  $C302(A4),D0       ; Move 1 BYTE from FFC302 to D0
00:0834  ADD.W   D0,D1              ; Add the WORD from D0 to D1
00:0836  MOVE.W  $00(A0,D1),D1      ; Move a WORD from (SUM of WORDS A0+D1) to D1
00:083A  LEA     $00(A0,D1),A1      ; Load Address of the (SUM of WORDS A0+D1) in A1
00:083E  MOVE.L  A1,$C500(A4)       ; Move the LONG WORD from A1 to FFC500
00:0842  CLR.W   $C600(A4)          ; Clear the WORD in FFC600
00:0846  CLR.B   $D400(A4)          ; Clear the WORD in FFC400
00:084A  BRA     #$2C [00:0878]     ; Branch
00:0878  MOVE.B  (A1)+,D0           ; Move 1 BYTE from the location stored in A1 to D0 and increment A1 after that
00:087A  CMPI.B  #$F0,D0            ; Compare 1 BYTE in D0 if it is equal to #$F0
00:087E  BCS     #$50 [00:08D0]     ; Branch if BYTE in D0 is lower than F0
00:08D0  MOVE.B  (A1)+,D1           ; Move 1 BYTE from the location stored in A1 to D0 and increment A1 after that
00:08D2  LSL.W   #8,D1              ; Logic-Shift-Left the WORD in D1 by 8
00:08D4  MOVE.B  (A1)+,D1           ; Move 1 BYTE from the location stored in A1 to D0 and increment A1 after that
00:08D6  EXT.L   D1                 ; Sign-extend the LONG WORD in D1
00:08D8  ADD.L   A0,D1              ; Add the LONG WORD in A0 to D1
00:08DA  MOVE.L  D1,$C100(A4)       ; Move the LONG WORD from D1 to FFC100


##### Sprite Table:

| Offset    | Mode | Flag | Tile ID | Xpos | Ypos |
| :-------- | :--: | :--: | :-----: | :--: | :--: |
| 000A0E00: |  04  |  6   |   384   |  68  |  13  |
| 000A0E05: |  04  |  6   |   384   |  2E  |  FB  |
| 000A0E0A: |  09  |  6   |   2F6   |  50  |  10  |
| 000A0E0F: |  0D  |  6   |   2EE   |  30  |  10  |
| 000A0E14: |  09  |  6   |   2E8   |  B8  |  10  |
| 000A0E19: |  0D  |  6   |   2E0   |  98  |  10  |
| 000A0E1E: |  0F  |  6   |   374   |  10  |  00  |
| 000A0E23: |  0F  |  6   |   364   |  F0  |  00  |
| 000A0E28: |  0F  |  6   |   354   |  D0  |  00  |
| 000A0E2D: |  07  |  6   |   34C   |  48  |  E0  |
| 000A0E32: |  0F  |  6   |   33C   |  28  |  E0  |
| 000A0E37: |  0F  |  6   |   32C   |  08  |  E0  |
| 000A0E3C: |  0F  |  6   |   31C   |  E8  |  E0  |
| 000A0E41: |  0F  |  6   |   30C   |  C8  |  E0  |
| 000A0E46: |  0F  |  6   |   2FC   |  A8  |  E0  |
| 000A0E4B: |  FF  |      |         |      |      |

###### Modes:

00: 8x8
01: 8x16
02: 8x24
03: 8x32
04: 16x8
05: 16x16
06: 16x24
07: 16x32
08: 24x8
09: 24x16
0A: 24x24
0B: 24x32
0C: 32x8
0D: 32x16
0E: 32x24
0F: 32x32


#### Tilemaps:

00:70F4  45 FA  LEA     $02D6(PC),A2
6B64 puts tilemap data from D7 into VDP data port!

#### Main Loop

GM SEGA:  006F8A
GM TITLE: 004D1C

### Game Modes
is set in ROM:$50F0 -> RAM:$FF804C

| Description                             | Mode | ModeAddress | jmpGMode  | absolute  |
| :-------------------------------------- | :--- | :---------- | :-------- | :-------- |
| Ending                                  | Kedm | 4F54        | 50D4      |           |
| SEGA Logo                               | Ksmt | 4CC4        | 50D4,50E2 | 4CB8,4F9C |
| Title with animation                    | Ktmt | 4D14        | 50D4      | 4CEC      |
| Game start                              | Kgmt | 507C        | 50D4      | 4DCA      |
| Demo Game                               | Kdym | 4DDE        | 50D4      | 4D90      |
| Title Music Start                       | Ktm3 | 4D52        | 50E2      | 4D3E      |
| Title after pressing Start > New Game   | Kmnu | 4DA4        | 50E2      | 4D6C?     |
| Title after pressing Start in SEGA Mode | Ktm2 | 4D64        | 50D4      |           |
|                                         | Keds | 4FC8        |           |           |
|                                         | Kcol | 5608        |           |           |

```
    movea.l #ModeAddress,a1
    jmp (jmpGMode)
```
or
```
    org     $4A74 ; set initial GMode
    jmp     (absolute).l

```

### Music

```
moveq   #ID,d0
jsr     ($366)
```

- 00 - Cave 1, Mushroom cave
- 01 - Beginning music
- 02 - Lilypad and Childam
- 03 - Sky, before sky fortress
- 04 - Desert
- 05 - Castle and outside the castle in the beginning
- 06 - Pyramid
- 07 - Cave after Queen Eleanora
- 08 - Generic boss theme used by Gragg & Glagg, Ice Bomber,
- 09 - Jungle music before beating the tribe
- 0A - Alsedo, and the underwater temple
- 0B - Eleanora
- 0C - Beach areas
- 0D - Jungle, normal
- 0E - Boss theme used by Tyrant Dragon
- 0F - Begonia
- 10 - Generic boss theme used by Mushroom boss, Sphinx, Almighty Demon King, and final boss
- 11 - Sky castle
- 12 - Underwater areas, ice areas
- 13 - Unknown jingle
- 14 - Title screen
- 15 - Spaceship
- 16 - End credits
- 17 - Final dungeon