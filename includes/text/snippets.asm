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
    dc.b    "Alsedo",0 ; Alsedo

snippet66:
    dc.b    "Amulet",0 ; Amulet

snippet67:
    dc.b    "Axt",0 ; Axe

snippet68:
    dc.b    "Schmied",0 ; Blacksmith

snippet69:
    dc.b    "Armreif",0 ; Bracelet

snippet70:
    dc.b    "Schlo",ss,0 ; Castle

snippet71:
    dc.b    "Charmstein",0 ; Charmstone

snippet72:
    dc.b    "Charmsteine",0 ; Charmstones

snippet73:
    dc.b    "Komm",0 ; Come

snippet74:
    dc.b    "Weiter",0 ; Continue

snippet75:
    dc.b    "W",ue"ste",0 ; Desert

snippet76:
    dc.b    "Drache",0 ; Dragon

snippet77:
    dc.b    cAE,"lteste",0 ; Elder

snippet78:
    dc.b    "Eleanora",0 ; Eleanora

snippet79:
    dc.b    "Finde",0 ; Find

snippet80:
    dc.b    "Gut",0 ; Good

snippet81:
    dc.b    "Hier",0 ; Here

snippet82:
    dc.b    "Lilypad",0 ; Lilypad

snippet83:
    dc.b    "Sieht aus",0 ; Looks

snippet84:
    dc.b    "Maugham",0 ; Maugham

snippet85:
    dc.b    "Monster",0 ; Monster

snippet86:
    dc.b    "Jetzt",0 ; Now

snippet87:
    dc.b    "Okarina",0 ; Ocarina

snippet88:
    dc.b    "Bitte",0 ; Please

snippet89:
    dc.b    "Poseidon",0 ; Poseidon

snippet90:
    dc.b    "Priscilla",0 ; Priscilla

snippet91:
    dc.b    "Purapril",0 ; Purapril

snippet92:
    dc.b    "Pygm",ae,"en",0 ; Pygmy

snippet93:
    dc.b    "K",oe,"nigin",0 ; Queen

snippet94:
    dc.b    "Denk daran",0 ; Remember

snippet95:
    dc.b    "Shion",0 ; Shion

snippet96:
    dc.b    "Sphinx",0 ; Sphinx

snippet97:
    dc.b    "Nimm",0 ; Take

snippet98:
    dc.b    "Dank",0 ; Thank

snippet99:
    dc.b    "Das",0 ; The

snippet100:
    dc.b    "Dort",0 ; There

snippet101:
    dc.b    "Dies",0 ; This

snippet102:
    dc.b    "Willkommen",0 ; Welcome

snippet103:
    dc.b    "Was",0 ; What

snippet104:
    dc.b    "World",0 ; World

snippet105:
    dc.b    "Du",0 ; You

snippet106:
    dc.b    "blubb106",0 ;able

snippet107:
    dc.b    "blubb107",0 ; about

snippet108:
    dc.b    "blubb108",0 ; again

snippet109:
    dc.b    "blubb109",0 ; ahead

snippet110:
    dc.b    "blubb110",0 ; all

snippet111:
    dc.b    "blubb111",0 ; already

snippet112:
    dc.b    "blubb112",0 ; and

snippet113:
    dc.b    "blubb113",0 ; anything

snippet114:
    dc.b    "blubb114",0 ; back

snippet115:
    dc.b    "blubb115",0 ; been

snippet116:
    dc.b    "blubb116",0 ; better

snippet117:
    dc.b    "blubb117",0 ; beyond

snippet118:
    dc.b    "blubb118",0 ; bottom

snippet119:
    dc.b    "blubb119",0 ; brother

snippet120:
    dc.b    "blubb120",0 ; but

snippet121:
    dc.b    "blubb121",0 ; can

snippet122:
    dc.b    "blubb122",0 ; castle

snippet123:
    dc.b    "blubb123",0 ; cave

snippet124:
    dc.b    "blubb124",0 ; close

snippet125:
    dc.b    "blubb125",0 ; closed

snippet126:
    dc.b    "blubb126",0 ; come

snippet127:
    dc.b    "blubb127",0 ; desert

snippet128:
    dc.b    "blubb128",0 ; don

snippet129:
    dc.b    "blubb129",0 ; door

snippet130:
    dc.b    "blubb130",0 ; dwarf

snippet131:
    dc.b    "blubb131",0 ; enter

snippet132:
    dc.b    "blubb132",0 ; ever

snippet133:
    dc.b    "blubb133",0 ; everything

snippet134:
    dc.b    "blubb134",0 ; find

snippet135:
    dc.b    "blubb135",0 ; for

snippet136:
    dc.b    "blubb136",0 ; forget

snippet137:
    dc.b    "blubb137",0 ; four

snippet138:
    dc.b    "blubb138",0 ; from

snippet139:
    dc.b    "blubb139",0 ; generation

snippet140:
    dc.b    "blubb140",0 ; going

snippet141:
    dc.b    "blubb141",0 ; gonna

snippet142:
    dc.b    "blubb142",0 ; good

snippet143:
    dc.b    "blubb143",0 ; got

snippet144:
    dc.b    "blubb144",0 ; grateful

snippet145:
    dc.b    "blubb145",0 ; has

snippet146:
    dc.b    "blubb146",0 ; have

snippet147:
    dc.b    "blubb147",0 ; heard

snippet148:
    dc.b    "blubb148",0 ; help

snippet149:
    dc.b    "blubb149",0 ; hero

snippet150:
    dc.b    "blubb150",0 ; hidden

snippet151:
    dc.b    "blubb151",0 ; increase

snippet152:
    dc.b    "blubb152",0 ; item

snippet153:
    dc.b    "blubb153",0 ; items

snippet154:
    dc.b    "blubb154",0 ; jellyfish

snippet155:
    dc.b    "blubb155",0 ; journey

snippet156:
    dc.b    "blubb156",0 ; just

snippet157:
    dc.b    "blubb157",0 ; kidnapped

snippet158:
    dc.b    "blubb158",0 ; know

snippet159:
    dc.b    "blubb159",0 ; land

snippet160:
    dc.b    "blubb160",0 ; legendary

snippet161:
    dc.b    "blubb161",0 ; like

snippet162:
    dc.b    "blubb162",0 ; long

snippet163:
    dc.b    "blubb163",0 ; look

snippet164:
    dc.b    "blubb164",0 ; looks

snippet165:
    dc.b    "blubb165",0 ; magic

snippet166:
    dc.b    "blubb166",0 ; may

snippet167:
    dc.b    "blubb167",0 ; melodies

snippet168:
    dc.b    "blubb168",0 ; monsters

snippet169:
    dc.b    "blubb169",0 ; more

snippet170:
    dc.b    "blubb170",0 ; much

snippet171:
    dc.b    "blubb171",0 ; must

snippet172:
    dc.b    "blubb172",0 ; need

snippet173:
    dc.b    "blubb173",0 ; not

snippet174:
    dc.b    "blubb174",0 ; nothing

snippet175:
    dc.b    "blubb175",0 ; now

snippet176:
    dc.b    "blubb176",0 ; one

snippet177:
    dc.b    "blubb177",0 ; only

snippet178:
    dc.b    "blubb178",0 ; other

snippet179:
    dc.b    "blubb179",0 ; out

snippet180:
    dc.b    "blubb180",0 ; peaceful

snippet181:
    dc.b    "blubb181",0 ; people

snippet182:
    dc.b    "blubb182",0 ; place

snippet183:
    dc.b    "blubb183",0 ; practice

snippet184:
    dc.b    "blubb184",0 ; princess

snippet185:
    dc.b    "blubb185",0 ; probably

snippet186:
    dc.b    "blubb186",0 ; question

snippet187:
    dc.b    "blubb187",0 ; ready

snippet188:
    dc.b    "blubb188",0 ; return

snippet189:
    dc.b    "blubb189",0 ; returned

snippet190:
    dc.b    "blubb190",0 ; right

snippet191:
    dc.b    "blubb191",0 ; safely

snippet192:
    dc.b    "blubb192",0 ; saved

snippet193:
    dc.b    "blubb193",0 ; search

snippet194:
    dc.b    "blubb194",0 ; see

snippet195:
    dc.b    "blubb195",0 ; sell

snippet196:
    dc.b    "blubb196",0 ; shop

snippet197:
    dc.b    "blubb197",0 ; shrine

snippet198:
    dc.b    "blubb198",0 ; sleep

snippet199:
    dc.b    "blubb199",0 ; some

snippet200:
    dc.b    "blubb200",0 ; something

snippet201:
    dc.b    "blubb201",0 ; sometime

snippet202:
    dc.b    "blubb202",0 ; somewhere

snippet203:
    dc.b    "blubb203",0 ; sorry

snippet204:
    dc.b    "blubb204",0 ; stock

snippet205:
    dc.b    "blubb205",0 ; store

snippet206:
    dc.b    "blubb206",0 ; storekeeper

snippet207:
    dc.b    "blubb207",0 ; sword

snippet208:
    dc.b    "blubb208",0 ; take

snippet209:
    dc.b    "blubb209",0 ; terribly

snippet210:
    dc.b    "blubb210",0 ; thank

snippet211:
    dc.b    "blubb211",0 ; that

snippet212:
    dc.b    "blubb212",0 ; the

snippet213:
    dc.b    "blubb213",0 ; their

snippet214:
    dc.b    "blubb214",0 ; them

snippet215:
    dc.b    "blubb215",0 ; then

snippet216:
    dc.b    "blubb216",0 ; there

snippet217:
    dc.b    "blubb217",0 ; this

snippet218:
    dc.b    "blubb218",0 ; though

snippet219:
    dc.b    "blubb219",0 ; time

snippet220:
    dc.b    "blubb220",0 ; underwater

snippet221:
    dc.b    "blubb221",0 ; very

snippet222:
    dc.b    "blubb222",0 ; village

snippet223:
    dc.b    "blubb223",0 ; volcano

snippet224:
    dc.b    "blubb224",0 ; waiting

snippet225:
    dc.b    "blubb225",0 ; was

snippet226:
    dc.b    "blubb226",0 ; weapon

snippet227:
    dc.b    "blubb227",0 ; well

snippet228:
    dc.b    "blubb228",0 ; what

snippet229:
    dc.b    "blubb229",0 ; will

snippet230:
    dc.b    "blubb230",0 ; with

snippet231:
    dc.b    "blubb231",0 ; you

snippet232:
    dc.b    "blubb232",0 ; your

