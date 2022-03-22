; =================================================================================================
; TEXT DATA: SNIPPETS
; Pointer Table: includes\text\pntrs_snippets.asm
; =================================================================================================

    align 2

; Yes / No Option
snippet1:
    dc.b    $03,$00,$02,$04,$04,"Ja   Nein",0 ; <- format: 4 chars + space + 4 chars

; Gold (Item price in shops)
snippet2:
    dc.b    " Taler",0


snippet3:
    dc.b    $01,$A0,$0B,$06,$01,$80,$00


snippet4:
    dc.b    $04,$01,$0B,$04,$FF,$0B,$05,$0C,$01,$00


snippet5:
    dc.b    $95,$97,$8C,$98,$9B,$BD,$00


snippet6:
    dc.b    $04,$03,$0B,$0F,$FF,$0B,$05,$0C,$01,$00


snippet7:
    dc.b    $0A,$02,$03,$06,$04,$02,$00


snippet8:
    dc.b    $03,$06,$0A,$02,$05,$09,$00


snippet9:
    dc.b    $03,$10,$20,$0F,$04,$0F,$03,$0F,$04,$0F,$03,$0F,$04,$0F,$05,$0F,$04,$03,$06,$00


snippet10:
    dc.b    $03,$10,$20,$0F,$03,$0F,$04,$0F,$05,$0F,$04,$0F,$05,$0F,$03,$0F,$04,$03,$06,$00


snippet11:
    dc.b    $03,$10,$20,$0F,$03,$0F,$05,$0F,$05,$0F,$03,$0F,$04,$0F,$03,$0F,$04,$03,$06,$00


snippet12:
    dc.b    "Welches war die",cc_newline,"erste Magie, die",cc_newline,"Du erhalten hast?",0


snippet13:
    dc.b    "Feuersturm"


snippet14:
    dc.b    "Tornado"


snippet15:
    dc.b    "Beben"


snippet16:
    dc.b    "Welchen Namen tr",ae,"gt",cc_newline,"die K",oe,"nigin des",cc_newline,"Elfendorfs?",0


snippet17:
    dc.b    "Rosanna",0


snippet18:
    dc.b    "Eleanora",0


snippet19:
    dc.b    "Sonia",0


snippet20:
    dc.b    "Welches dieser",cc_newline,"Monster hast Du",cc_newline,"zuerst besiegt?",0


snippet21:
    dc.b    "Myconid",0


snippet22:
    dc.b    "Mecha-Dragon",0


snippet23:
    dc.b    "Eleanora",0


snippet24:
    dc.b    "Was hast Du",cc_newline,"erhalten, nachdem Du",cc_newline,"Gragg & Glagg,",cc_newline,"besiegt hast?",0


snippet25:
    dc.b    "Eine Lampe",0


snippet26:
    dc.b    "Ein Amulett",0


snippet27:
    dc.b    "Den Dreizack",0


snippet28:
    dc.b    "Was kannst Du nicht",cc_newline,"im Waffenladen vom",cc_newline,"Wanderer kaufen?",0
            

snippet29:
    dc.b    "Dreizack",0


snippet30:
    dc.b    "Excalibur",0


snippet31:
    dc.b    "Stahlschild",0


snippet32:
    dc.b    "Wie lautet der Name",cc_newline,"vom Dorf, in dem",cc_newline,"die Zwerge leben?",0


snippet33:
    dc.b    "Lilian",0


snippet34:
    dc.b    "Lilypad",0


snippet35:
    dc.b    "Lollipop",0


snippet36:
    dc.b    "Welchen Schl",ue,"ssel",cc_newline,"ben",oe,"tigt man, um",cc_newline,"die Pyramide",cc_newline,"zu betreten?",0


snippet37:
    dc.b    "Sternenschl",ue,"ssel",0


snippet38:
    dc.b    "Sonnenschl",ue,"ssel",0


snippet39:
    dc.b    "Mondschl",ue,"ssel",0


snippet40:
    dc.b    "Wieviel kostet ein",cc_newline,"Charmstein?",0


snippet41:
    dc.b    "50000 Taler",0


snippet42:
    dc.b    "500000 Taler",0


snippet43:
    dc.b    "5000000 Taler",0


snippet44:
    dc.b    "Welcher Gegenstand",cc_newline,"wird ben",oe,"tigt, um",cc_newline,"die Maugham-W",ue,"ste",cc_newline,"zu durchqueren?",0
            

snippet45:
    dc.b    "W",ue,"stenstiefel",0


snippet46:
    dc.b    "Oasenstiefel",0


snippet47:
    dc.b    "Sandalen",0


snippet48:
    dc.b    "Welcher dieser",cc_newline,"L",ae,"den verkauft",cc_newline,"keine Waffen?",0


snippet49:
    dc.b    "Gooningle",0


snippet50:
    dc.b    "Bacchus",0


snippet51:
    dc.b    "Felissimo",0


snippet52:
    dc.b    $03,$00,$02,$04,$04,"Ja   Nein",0

snippet53:
snippet54:
snippet55:
snippet56:
snippet57:
snippet58:
snippet59:
snippet60:
snippet61:
snippet62:
snippet63:
snippet64:
    dc.b    $00

snippet65:
    dc.b    "Alsedo",0

snippet66:
    dc.b    "Amulet",0

snippet67:
    dc.b    "Axt",0

snippet68:
    dc.b    "Schmied",0

snippet69:
    dc.b    "Armreif",0

snippet70:
    dc.b    "Schlo",ss,0

snippet71:
    dc.b    "Charmstein",0

snippet72:
    dc.b    "Charmsteine",0

snippet73:
    dc.b    "Komm",0

snippet74:
    dc.b    "Weiter",0

snippet75:
    dc.b    "W",ue"ste",0

snippet76:
    dc.b    "Drache",0

snippet77:
    dc.b    cAE,"lteste",0

snippet78:
    dc.b    "Eleanora",0

snippet79:
    dc.b    "Finde",0

snippet80:
    dc.b    "Gut",0

snippet81:
    dc.b    "Hier",0

snippet82:
    dc.b    "Lilypad",0

snippet83:
    dc.b    "Sieht aus",0

snippet84:
    dc.b    "Maugham",0

snippet85:
    dc.b    "Monster",0

snippet86:
    dc.b    "Jetzt",0

snippet87:
    dc.b    "Okarina",0

snippet88:
    dc.b    "Bitte",0

snippet89:
    dc.b    "Poseidon",0

snippet90:
    dc.b    "Priscilla",0

snippet91:
    dc.b    "Purapril",0

snippet92:
    dc.b    "Pygm",ae,"en",0

snippet93:
    dc.b    "K",oe,"nigin",0

snippet94:
    dc.b    "Denk daran",0

snippet95:
    dc.b    "Shion",0

snippet96:
    dc.b    "Sphinx",0

snippet97:
    dc.b    "Nimm",0

snippet98:
    dc.b    "Dank",0

snippet99:
    dc.b    "Das",0

snippet100:
    dc.b    "Da",0

snippet101:
    dc.b    "Dies",0

snippet102:
    dc.b    "Willkommen",0

snippet103:
    dc.b    "Was",0

snippet104:
    dc.b    "World",0

snippet105:
    dc.b    "Du",0

snippet106:
    dc.b    "blubb106",0 ;able

snippet107:
    dc.b    "blubb107",0

snippet108:
    dc.b    "blubb108",0

snippet109:
    dc.b    "blubb109",0

snippet110:
    dc.b    "blubb110",0

snippet111:
    dc.b    "blubb111",0

snippet112:
    dc.b    "blubb112",0

snippet113:
    dc.b    "blubb113",0

snippet114:
    dc.b    "blubb114",0

snippet115:
    dc.b    "blubb115",0

snippet116:
    dc.b    "blubb116",0

snippet117:
    dc.b    "blubb117",0

snippet118:
    dc.b    "blubb118",0

snippet119:
    dc.b    "blubb119",0

snippet120:
    dc.b    "blubb120",0

snippet121:
    dc.b    "blubb121",0

snippet122:
    dc.b    "blubb122",0

snippet123:
    dc.b    "blubb123",0

snippet124:
    dc.b    "blubb124",0

snippet125:
    dc.b    "blubb125",0

snippet126:
    dc.b    "blubb126",0

snippet127:
    dc.b    "blubb127",0

snippet128:
    dc.b    "blubb128",0

snippet129:
    dc.b    "blubb129",0

snippet130:
    dc.b    "blubb130",0

snippet131:
    dc.b    "blubb131",0

snippet132:
    dc.b    "blubb132",0

snippet133:
    dc.b    "blubb133",0

snippet134:
    dc.b    "blubb134",0

snippet135:
    dc.b    "blubb135",0

snippet136:
    dc.b    "blubb136",0

snippet137:
    dc.b    "blubb137",0

snippet138:
    dc.b    "blubb138",0

snippet139:
    dc.b    "blubb139",0

snippet140:
    dc.b    "blubb140",0

snippet141:
    dc.b    "blubb141",0

snippet142:
    dc.b    "blubb142",0

snippet143:
    dc.b    "blubb143",0

snippet144:
    dc.b    "blubb144",0

snippet145:
    dc.b    "blubb145",0

snippet146:
    dc.b    "blubb146",0

snippet147:
    dc.b    "blubb147",0

snippet148:
    dc.b    "blubb148",0

snippet149:
    dc.b    "blubb149",0

snippet150:
    dc.b    "blubb150",0

snippet151:
    dc.b    "blubb151",0

snippet152:
    dc.b    "blubb152",0

snippet153:
    dc.b    "blubb153",0

snippet154:
    dc.b    "blubb154",0

snippet155:
    dc.b    "blubb155",0

snippet156:
    dc.b    "blubb156",0

snippet157:
    dc.b    "blubb157",0

snippet158:
    dc.b    "blubb158",0

snippet159:
    dc.b    "blubb159",0

snippet160:
    dc.b    "blubb160",0

snippet161:
    dc.b    "blubb161",0

snippet162:
    dc.b    "blubb162",0

snippet163:
    dc.b    "blubb163",0

snippet164:
    dc.b    "blubb164",0

snippet165:
    dc.b    "blubb165",0

snippet166:
    dc.b    "blubb166",0

snippet167:
    dc.b    "blubb167",0

snippet168:
    dc.b    "blubb168",0

snippet169:
    dc.b    "blubb169",0

snippet170:
    dc.b    "blubb170",0

snippet171:
    dc.b    "blubb171",0

snippet172:
    dc.b    "blubb172",0

snippet173:
    dc.b    "blubb173",0

snippet174:
    dc.b    "blubb174",0

snippet175:
    dc.b    "blubb175",0

snippet176:
    dc.b    "blubb176",0

snippet177:
    dc.b    "blubb177",0

snippet178:
    dc.b    "blubb178",0

snippet179:
    dc.b    "blubb179",0

snippet180:
    dc.b    "blubb180",0

snippet181:
    dc.b    "blubb181",0

snippet182:
    dc.b    "blubb182",0

snippet183:
    dc.b    "blubb183",0

snippet184:
    dc.b    "blubb184",0

snippet185:
    dc.b    "blubb185",0

snippet186:
    dc.b    "blubb186",0

snippet187:
    dc.b    "blubb187",0

snippet188:
    dc.b    "blubb188",0

snippet189:
    dc.b    "blubb189",0

snippet190:
    dc.b    "blubb190",0

snippet191:
    dc.b    "blubb191",0

snippet192:
    dc.b    "blubb192",0

snippet193:
    dc.b    "blubb193",0

snippet194:
    dc.b    "blubb194",0

snippet195:
    dc.b    "blubb195",0

snippet196:
    dc.b    "blubb196",0

snippet197:
    dc.b    "blubb197",0

snippet198:
    dc.b    "blubb198",0

snippet199:
    dc.b    "blubb199",0

snippet200:
    dc.b    "blubb200",0

snippet201:
    dc.b    "blubb201",0

snippet202:
    dc.b    "blubb202",0

snippet203:
    dc.b    "blubb203",0

snippet204:
    dc.b    "blubb204",0

snippet205:
    dc.b    "blubb205",0

snippet206:
    dc.b    "blubb206",0

snippet207:
    dc.b    "blubb207",0

snippet208:
    dc.b    "blubb208",0

snippet209:
    dc.b    "blubb209",0

snippet210:
    dc.b    "blubb210",0

snippet211:
    dc.b    "blubb211",0

snippet212:
    dc.b    "blubb212",0

snippet213:
    dc.b    "blubb213",0

snippet214:
    dc.b    "blubb214",0

snippet215:
    dc.b    "blubb215",0

snippet216:
    dc.b    "blubb216",0

snippet217:
    dc.b    "blubb217",0

snippet218:
    dc.b    "blubb218",0

snippet219:
    dc.b    "blubb219",0

snippet220:
    dc.b    "blubb220",0

snippet221:
    dc.b    "blubb221",0

snippet222:
    dc.b    "blubb222",0

snippet223:
    dc.b    "blubb223",0

snippet224:
    dc.b    "blubb224",0

snippet225:
    dc.b    "blubb225",0

snippet226:
    dc.b    "blubb226",0

snippet227:
    dc.b    "blubb227",0

snippet228:
    dc.b    "blubb228",0

snippet229:
    dc.b    "blubb229",0

snippet230:
    dc.b    "blubb230",0

snippet231:
    dc.b    "blubb231",0

snippet232:
    dc.b    "blubb232",0

