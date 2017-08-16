0400: 20        clrp
0401: cd ff     mov   x,#$ff
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: cd ef     mov   x,#$ef
0408: c6        mov   (x),a
0409: 1d        dec   x
040a: 10 fc     bpl   $0408
040c: cd 07     mov   x,#$07
040e: e8 00     mov   a,#$00
0410: d5 18 03  mov   $0318+x,a
0413: 1d        dec   x
0414: 10 fa     bpl   $0410
0416: c5 a4 03  mov   $03a4,a
0419: 3f 59 05  call  $0559
041c: 8f ab f4  mov   $f4,#$ab
041f: 8f cd f5  mov   $f5,#$cd
0422: 78 67 f6  cmp   $f6,#$67
0425: d0 fb     bne   $0422
0427: 78 89 f7  cmp   $f7,#$89
042a: d0 fb     bne   $0427
042c: 3f 44 05  call  $0544
042f: e4 f6     mov   a,$f6
0431: f0 fc     beq   $042f
0433: 64 f7     cmp   a,$f7
0435: d0 f8     bne   $042f
0437: 9c        dec   a
0438: 1c        asl   a
0439: 5d        mov   x,a
043a: 1f 3d 04  jmp   ($043d+x)

043d: dw $045d  ; 01
043f: dw $1664  ; 02
0441: dw $042c  ; 03
0443: dw $042c  ; 04
0445: dw $042c  ; 05
0447: dw $0535  ; 06
0449: dw $051d  ; 07
044b: dw $0528  ; 08
044d: dw $052f  ; 09
044f: dw $0494  ; 0a
0451: dw $053b  ; 0b
0453: dw $042c  ; 0c
0455: dw $049a  ; 0d
0457: dw $04b1  ; 0e
0459: dw $04a8  ; 0f
045b: dw $04a1  ; 10

045d: ba f4     movw  ya,$f4
045f: da 14     movw  $14,ya
0461: 3f 44 05  call  $0544
0464: e4 f6     mov   a,$f6
0466: f0 fc     beq   $0464
0468: 8d 00     mov   y,#$00
046a: dd        mov   a,y
046b: 28 7f     and   a,#$7f
046d: 78 ff f7  cmp   $f7,#$ff
0470: d0 03     bne   $0475
0472: 5f 2c 04  jmp   $042c

0475: 64 f6     cmp   a,$f6
0477: d0 f4     bne   $046d
0479: dd        mov   a,y
047a: 5d        mov   x,a
047b: e4 f4     mov   a,$f4
047d: d7 14     mov   ($14)+y,a
047f: fc        inc   y
0480: d0 02     bne   $0484
0482: ab 15     inc   $15
0484: e4 f5     mov   a,$f5
0486: d7 14     mov   ($14)+y,a
0488: fc        inc   y
0489: d0 02     bne   $048d
048b: ab 15     inc   $15
048d: 7d        mov   a,x
048e: 08 80     or    a,#$80
0490: c4 f6     mov   $f6,a
0492: 2f d6     bra   $046a
0494: 3f 59 05  call  $0559
0497: 5f 2c 04  jmp   $042c

049a: ba f4     movw  ya,$f4
049c: da 6f     movw  $6f,ya
049e: 5f 2c 04  jmp   $042c

04a1: ba 6f     movw  ya,$6f
04a3: da f4     movw  $f4,ya
04a5: 5f 2c 04  jmp   $042c

04a8: e4 f4     mov   a,$f4
04aa: 1c        asl   a
04ab: 1c        asl   a
04ac: c4 71     mov   $71,a
04ae: 5f 2c 04  jmp   $042c

04b1: 3f 44 05  call  $0544
04b4: 8d 08     mov   y,#$08
04b6: 3f 0d 05  call  $050d
04b9: c4 10     mov   $10,a
04bb: 3f 0d 05  call  $050d
04be: c4 11     mov   $11,a
04c0: 3f 0d 05  call  $050d
04c3: c4 0c     mov   $0c,a
04c5: 3f 0d 05  call  $050d
04c8: c4 0d     mov   $0d,a
04ca: f8 71     mov   x,$71
04cc: 3f 0d 05  call  $050d
04cf: d5 00 61  mov   $6100+x,a
04d2: 3f 0d 05  call  $050d
04d5: d5 01 61  mov   $6101+x,a
04d8: 3f 0d 05  call  $050d
04db: d5 02 61  mov   $6102+x,a
04de: 3f 0d 05  call  $050d
04e1: d5 03 61  mov   $6103+x,a
04e4: e4 6f     mov   a,$6f
04e6: d5 00 60  mov   $6000+x,a
04e9: c4 14     mov   $14,a
04eb: 60        clrc
04ec: 84 10     adc   a,$10
04ee: c4 6f     mov   $6f,a
04f0: e4 70     mov   a,$70
04f2: d5 01 60  mov   $6001+x,a
04f5: c4 15     mov   $15,a
04f7: 84 11     adc   a,$11
04f9: c4 70     mov   $70,a
04fb: ba 14     movw  ya,$14
04fd: 7a 0c     addw  ya,$0c
04ff: d5 02 60  mov   $6002+x,a
0502: dd        mov   a,y
0503: d5 03 60  mov   $6003+x,a
0506: 60        clrc
0507: 98 04 71  adc   $71,#$04
050a: 5f 68 04  jmp   $0468

050d: dd        mov   a,y
050e: 64 f6     cmp   a,$f6
0510: d0 fc     bne   $050e
0512: e4 f4     mov   a,$f4
0514: 2d        push  a
0515: dd        mov   a,y
0516: 08 80     or    a,#$80
0518: c4 f6     mov   $f6,a
051a: dc        dec   y
051b: ae        pop   a
051c: 6f        ret

051d: e4 f4     mov   a,$f4
051f: c5 90 03  mov   $0390,a
0522: 3f a2 1e  call  $1ea2
0525: 5f 2c 04  jmp   $042c

0528: e4 f4     mov   a,$f4
052a: c4 6d     mov   $6d,a
052c: 5f 2c 04  jmp   $042c

052f: 3f 7f 20  call  $207f
0532: 5f 2c 04  jmp   $042c

0535: 8f 00 f4  mov   $f4,#$00
0538: 5f 2c 04  jmp   $042c

053b: e8 00     mov   a,#$00
053d: c4 f4     mov   $f4,a
053f: c4 f5     mov   $f5,a
0541: 5f 2c 04  jmp   $042c

0544: 8f cd f6  mov   $f6,#$cd
0547: 8f ef f7  mov   $f7,#$ef
054a: e8 00     mov   a,#$00
054c: 64 f6     cmp   a,$f6
054e: d0 fc     bne   $054c
0550: 64 f6     cmp   a,$f6
0552: d0 fc     bne   $0550
0554: c4 f6     mov   $f6,a
0556: c4 f7     mov   $f7,a
0558: 6f        ret

0559: 8f 30 f1  mov   $f1,#$30
055c: 8f 6c f2  mov   $f2,#$6c
055f: 8f e0 f3  mov   $f3,#$e0          ; set FLG
0562: cd 00     mov   x,#$00
0564: f5 cd 05  mov   a,$05cd+x
0567: 68 ff     cmp   a,#$ff
0569: f0 0b     beq   $0576
056b: c4 f2     mov   $f2,a
056d: 3d        inc   x
056e: f5 cd 05  mov   a,$05cd+x
0571: c4 f3     mov   $f3,a
0573: 3d        inc   x
0574: 2f ee     bra   $0564
0576: cd 00     mov   x,#$00
0578: 8d 00     mov   y,#$00
057a: d8 f2     mov   $f2,x
057c: f6 c5 05  mov   a,$05c5+y
057f: c4 f3     mov   $f3,a
0581: fc        inc   y
0582: 3d        inc   x
0583: ad 08     cmp   y,#$08
0585: d0 f3     bne   $057a
0587: 7d        mov   a,x
0588: 28 f0     and   a,#$f0
058a: 60        clrc
058b: 88 10     adc   a,#$10
058d: 5d        mov   x,a
058e: 68 80     cmp   a,#$80
0590: d0 e6     bne   $0578
0592: 8f 80 fa  mov   $fa,#$80
0595: 8f 01 f1  mov   $f1,#$01
0598: cd 40     mov   x,#$40
059a: e4 fd     mov   a,$fd
059c: f0 fc     beq   $059a
059e: 1d        dec   x
059f: d0 f9     bne   $059a
05a1: 8f 00 f1  mov   $f1,#$00
05a4: 8f 6c f2  mov   $f2,#$6c
05a7: 8f 00 f3  mov   $f3,#$00
05aa: 8f 80 fa  mov   $fa,#$80
05ad: 8f 01 f1  mov   $f1,#$01
05b0: cd 04     mov   x,#$04
05b2: e4 fd     mov   a,$fd
05b4: f0 fc     beq   $05b2
05b6: 1d        dec   x
05b7: d0 f9     bne   $05b2
05b9: 8f 00 f1  mov   $f1,#$00
05bc: e8 48     mov   a,#$48
05be: c5 90 03  mov   $0390,a
05c1: 3f a2 1e  call  $1ea2
05c4: 6f        ret

; initial dsp value ($x0-$x6)
05c5: db $00,$00,$00,$10,$00,$ff,$ff

; initial dsp value
05cd: db $1c,$00
05cf: db $0c,$00
05d1: db $4c,$00
05d3: db $5c,$00
05d5: db $2d,$00
05d7: db $3d,$00
05d9: db $5d,$60
05db: db $4d,$00
05dd: db $0d,$00
05df: db $3c,$00
05e1: db $2c,$00
05e3: db $6d,$40
05e5: db $7d,$04
05e7: db $ff

05e8: dw $0080
05ea: dw $00a3
05ec: dw $00f2
05ee: dw $0110
05f0: dw $014c
05f2: dw $0163
05f4: dw $017a
05f6: dw $0195
05f8: dw $01ac
05fa: dw $01f4
05fc: dw $023f
05fe: dw $028f
0600: dw $02c9
0602: dw $02ec
0604: dw $031f
0606: dw $03ff
0608: dw $041c
060a: dw $045b
060c: dw $04b5
060e: dw $0591
0610: dw $05ac
0612: dw $05d1
0614: dw $05fe
0616: dw $0615
0618: dw $0631
061a: dw $0651
061c: dw $0670
061e: dw $0697
0620: dw $06c7
0622: dw $0706
0624: dw $0760
0626: dw $083c
0628: dw $08bb
062a: dw $0925
062c: dw $094e
062e: dw $0989
0630: dw $09cf
0632: dw $0b74
0634: dw $0b9f
0636: dw $0bbd
0638: dw $0bd8
063a: dw $0bef
063c: dw $0c06
063e: dw $0c61
0640: dw $0ccf
0642: dw $0cfa
0644: dw $0d48
0646: dw $0d66
0648: dw $0e24
064a: dw $0ea3
064c: dw $0eba
064e: dw $0ed1
0650: dw $0ef2
0652: dw $0f1e
0654: dw $0f53
0656: dw $0f74
0658: dw $0f97
065a: dw $0ff7
065c: dw $100a
065e: dw $101d
0660: dw $1030
0662: dw $1043
0664: dw $1056
0666: dw $1069

1660: f7 01     mov   a,($01)+y
1662: 0c fe 3f  asl   $3ffe
1665: 30 18     bmi   $167f
1667: e5 90 03  mov   a,$0390
166a: 3f a2 1e  call  $1ea2
166d: e8 03     mov   a,#$03
166f: c5 a3 03  mov   $03a3,a
1672: 3f 0b 1f  call  $1f0b
1675: e8 00     mov   a,#$00
1677: 8f 4d f2  mov   $f2,#$4d
167a: c4 f3     mov   $f3,a             ; set EON
167c: 8f 3c f2  mov   $f2,#$3c
167f: c4 f3     mov   $f3,a             ; set EVOL(R)
1681: 8f 2c f2  mov   $f2,#$2c
1684: c4 f3     mov   $f3,a             ; set EVOL(L)
1686: c5 9e 03  mov   $039e,a
1689: 8f 3d f2  mov   $f2,#$3d
168c: c4 f3     mov   $f3,a             ; set NON
168e: c5 9f 03  mov   $039f,a
1691: 8f 2d f2  mov   $f2,#$2d
1694: c4 f3     mov   $f3,a             ; set PMON
1696: c5 a0 03  mov   $03a0,a
1699: e8 ff     mov   a,#$ff
169b: c5 9a 03  mov   $039a,a
169e: c5 a2 03  mov   $03a2,a
16a1: e8 06     mov   a,#$06
16a3: c4 74     mov   $74,a
16a5: e8 40     mov   a,#$40
16a7: c5 91 03  mov   $0391,a
16aa: c5 93 03  mov   $0393,a
16ad: c5 92 03  mov   $0392,a
16b0: e8 30     mov   a,#$30
16b2: c5 9b 03  mov   $039b,a
16b5: e8 03     mov   a,#$03
16b7: c5 9c 03  mov   $039c,a
16ba: e8 04     mov   a,#$04
16bc: c5 9d 03  mov   $039d,a
16bf: bc        inc   a
16c0: c5 6c 00  mov   $006c,a
16c3: 8f 10 08  mov   $08,#$10
16c6: 8f 28 09  mov   $09,#$28
16c9: cd 04     mov   x,#$04
16cb: e8 00     mov   a,#$00
16cd: d5 18 03  mov   $0318+x,a
16d0: 3d        inc   x
16d1: c8 08     cmp   x,#$08
16d3: d0 f8     bne   $16cd
16d5: 8d 00     mov   y,#$00
16d7: f7 08     mov   a,($08)+y
16d9: d6 00 02  mov   $0200+y,a
16dc: 10 0e     bpl   $16ec
16de: f6 99 1f  mov   a,$1f99+y
16e1: 48 ff     eor   a,#$ff
16e3: 25 9a 03  and   a,$039a
16e6: c5 9a 03  mov   $039a,a
16e9: c5 a2 03  mov   $03a2,a
16ec: fc        inc   y
16ed: ad 08     cmp   y,#$08
16ef: d0 e6     bne   $16d7
16f1: 8d 10     mov   y,#$10
16f3: cd 00     mov   x,#$00
16f5: 4d        push  x
16f6: e8 00     mov   a,#$00
16f8: d5 30 02  mov   $0230+x,a
16fb: f7 08     mov   a,($08)+y
16fd: d5 10 02  mov   $0210+x,a
1700: c4 00     mov   $00,a
1702: fc        inc   y
1703: f7 08     mov   a,($08)+y
1705: d5 18 02  mov   $0218+x,a
1708: c4 01     mov   $01,a
170a: fc        inc   y
170b: 6d        push  y
170c: 8d 00     mov   y,#$00
170e: f7 00     mov   a,($00)+y
1710: 10 1c     bpl   $172e
; section cmd: 80-ff(fe) - global transpose
1712: 28 7f     and   a,#$7f
1714: d5 30 02  mov   $0230+x,a
; increase section pointer
1717: f5 10 02  mov   a,$0210+x
171a: 60        clrc
171b: 88 01     adc   a,#$01
171d: d5 10 02  mov   $0210+x,a
1720: c4 00     mov   $00,a
1722: f5 18 02  mov   a,$0218+x
1725: 88 00     adc   a,#$00
1727: d5 18 02  mov   $0218+x,a
172a: c4 01     mov   $01,a
172c: 2f de     bra   $170c             ; continue
; section cmd: 00-7f - section
; note: section offset is is big-endian value.
172e: d5 28 02  mov   $0228+x,a         ; set voice pointer (hi-byte)
1731: fc        inc   y
1732: f7 00     mov   a,($00)+y
1734: d5 20 02  mov   $0220+x,a         ; set voice pointer (lo-byte)
1737: d8 68     mov   $68,x
1739: e8 80     mov   a,#$80
173b: d5 78 02  mov   $0278+x,a
173e: e8 01     mov   a,#$01
1740: d5 30 00  mov   $0030+x,a
1743: e8 00     mov   a,#$00
1745: d5 38 00  mov   $0038+x,a
1748: d5 48 02  mov   $0248+x,a
174b: d5 68 02  mov   $0268+x,a
174e: d5 70 02  mov   $0270+x,a
1751: d5 40 02  mov   $0240+x,a
1754: d5 60 02  mov   $0260+x,a
1757: d5 38 02  mov   $0238+x,a
175a: d5 60 00  mov   $0060+x,a
175d: d5 a0 02  mov   $02a0+x,a
1760: d5 d0 02  mov   $02d0+x,a
1763: d5 88 02  mov   $0288+x,a
1766: d5 b8 02  mov   $02b8+x,a
1769: d5 e0 02  mov   $02e0+x,a
176c: 3f c9 1e  call  $1ec9
176f: e8 60     mov   a,#$60
1771: 3f 92 1e  call  $1e92
1774: e8 40     mov   a,#$40
1776: d5 08 02  mov   $0208+x,a
1779: 3f 6a 1e  call  $1e6a
177c: ee        pop   y
177d: ce        pop   x
177e: 3d        inc   x
177f: c8 08     cmp   x,#$08
1781: f0 03     beq   $1786
1783: 5f f5 16  jmp   $16f5

1786: 8f 00 f1  mov   $f1,#$00
1789: e5 03 28  mov   a,$2803
178c: c4 fa     mov   $fa,a
178e: 8f 7d fb  mov   $fb,#$7d
1791: 8f 03 f1  mov   $f1,#$03
1794: e8 00     mov   a,#$00
1796: c5 6e 00  mov   $006e,a
1799: c5 99 03  mov   $0399,a
179c: c4 6a     mov   $6a,a
179e: c4 6b     mov   $6b,a
17a0: 3f 44 05  call  $0544
17a3: e5 6e 00  mov   a,$006e
17a6: d0 6f     bne   $1817
17a8: e4 fd     mov   a,$fd
17aa: d0 14     bne   $17c0
17ac: e4 fe     mov   a,$fe
17ae: d0 1a     bne   $17ca
17b0: e4 f6     mov   a,$f6
17b2: f0 ef     beq   $17a3
17b4: 64 f7     cmp   a,$f7
17b6: d0 f8     bne   $17b0
17b8: c4 22     mov   $22,a
17ba: 9c        dec   a
17bb: 1c        asl   a
17bc: 5d        mov   x,a
17bd: 1f d7 17  jmp   ($17d7+x)

17c0: 2d        push  a
17c1: 3f a3 18  call  $18a3
17c4: ae        pop   a
17c5: 9c        dec   a
17c6: d0 f8     bne   $17c0
17c8: 2f d9     bra   $17a3
17ca: 2d        push  a
17cb: 3f a1 1f  call  $1fa1
17ce: 3f fb 20  call  $20fb
17d1: ae        pop   a
17d2: 9c        dec   a
17d3: d0 f5     bne   $17ca
17d5: 2f cc     bra   $17a3

17d7: dw $188c
17d9: dw $188c
17db: dw $1848
17dd: dw $184e
17df: dw $188c
17e1: dw $1840
17e3: dw $186d
17e5: dw $1878
17e7: dw $17f7
17e9: dw $188c
17eb: dw $1892
17ed: dw $17fd
17ef: dw $188c
17f1: dw $188c
17f3: dw $188c
17f5: dw $188c

17f7: 3f 7f 20  call  $207f
17fa: 5f 8c 18  jmp   $188c

17fd: e4 f4     mov   a,$f4
17ff: 5d        mov   x,a
1800: f5 00 02  mov   a,$0200+x
1803: 68 ff     cmp   a,#$ff
1805: f0 0d     beq   $1814
1807: 48 40     eor   a,#$40
1809: d5 00 02  mov   $0200+x,a
180c: f5 99 1f  mov   a,$1f99+x
180f: 8f 5c f2  mov   $f2,#$5c
1812: c4 f3     mov   $f3,a             ; set KOF
1814: 5f 8c 18  jmp   $188c

1817: 3f 30 18  call  $1830
181a: e8 00     mov   a,#$00
181c: 8f 4d f2  mov   $f2,#$4d
181f: c4 f3     mov   $f3,a             ; set EON
1821: 8f 2c f2  mov   $f2,#$2c
1824: c4 f3     mov   $f3,a             ; set EVOL(L)
1826: 8f 3c f2  mov   $f2,#$3c
1829: c4 f3     mov   $f3,a             ; set EVOL(R)
182b: c4 f1     mov   $f1,a
182d: 5f 2f 04  jmp   $042f

1830: 8f 5c f2  mov   $f2,#$5c
1833: 8f ff f3  mov   $f3,#$ff          ; keyoff all voices
1836: e8 00     mov   a,#$00
1838: c4 6b     mov   $6b,a
183a: c4 6a     mov   $6a,a
183c: 3f c7 18  call  $18c7
183f: 6f        ret

1840: e5 60 00  mov   a,$0060
1843: c4 f4     mov   $f4,a
1845: 5f 8c 18  jmp   $188c

1848: 8f ff 6e  mov   $6e,#$ff
184b: 5f 8c 18  jmp   $188c

184e: e5 90 03  mov   a,$0390
1851: c5 94 03  mov   $0394,a
1854: e5 91 03  mov   a,$0391
1857: c5 95 03  mov   $0395,a
185a: e8 00     mov   a,#$00
185c: c5 96 03  mov   $0396,a
185f: c5 97 03  mov   $0397,a
1862: e4 f4     mov   a,$f4
1864: c5 99 03  mov   $0399,a
1867: c5 98 03  mov   $0398,a
186a: 5f 8c 18  jmp   $188c

186d: e4 f4     mov   a,$f4
186f: c5 90 03  mov   $0390,a
1872: 3f a2 1e  call  $1ea2
1875: 5f 8c 18  jmp   $188c

1878: e4 f4     mov   a,$f4
187a: c4 6d     mov   $6d,a
187c: 8f 00 68  mov   $68,#$00
187f: f8 68     mov   x,$68
1881: f5 08 02  mov   a,$0208+x
1884: 3f 6a 1e  call  $1e6a
1887: ab 68     inc   $68
1889: 73 68 f3  bbc3  $68,$187f
188c: 3f 44 05  call  $0544
188f: 5f a3 17  jmp   $17a3

1892: e4 6e     mov   a,$6e
1894: 28 80     and   a,#$80
1896: 48 80     eor   a,#$80
1898: 05 99 03  or    a,$0399
189b: c4 f4     mov   $f4,a
189d: 8f ff f5  mov   $f5,#$ff
18a0: 5f 8c 18  jmp   $188c

18a3: 8f 00 68  mov   $68,#$00
18a6: f8 68     mov   x,$68
18a8: f5 00 02  mov   a,$0200+x
18ab: 68 ff     cmp   a,#$ff
18ad: f0 13     beq   $18c2
18af: 9b 38     dec   $38+x
18b1: d0 08     bne   $18bb
18b3: f5 18 03  mov   a,$0318+x
18b6: d0 03     bne   $18bb
18b8: 3f 8d 19  call  $198d
18bb: 9b 30     dec   $30+x             ; decrease wait counter
18bd: d0 03     bne   $18c2
18bf: 3f ee 18  call  $18ee             ; enter to vcmd parse loop
18c2: ab 68     inc   $68
18c4: 73 68 df  bbc3  $68,$18a6
18c7: e4 6b     mov   a,$6b
18c9: f0 09     beq   $18d4
18cb: 8f 5c f2  mov   $f2,#$5c
18ce: c4 f3     mov   $f3,a             ; set KOF
18d0: 8d 40     mov   y,#$40
18d2: fe fe     dbnz  y,$18d2
18d4: e4 6a     mov   a,$6a
18d6: f0 0f     beq   $18e7
18d8: 8f 5c f2  mov   $f2,#$5c
18db: 8f 00 f3  mov   $f3,#$00          ; set KOF
18de: 8d 40     mov   y,#$40
18e0: fe fe     dbnz  y,$18e0
18e2: 8f 4c f2  mov   $f2,#$4c
18e5: c4 f3     mov   $f3,a             ; set KON
18e7: 8f 00 6b  mov   $6b,#$00
18ea: 8f 00 6a  mov   $6a,#$00
18ed: 6f        ret

; vcmd parser main loop
18ee: f8 68     mov   x,$68
18f0: f5 20 02  mov   a,$0220+x
18f3: c4 08     mov   $08,a
18f5: f5 28 02  mov   a,$0228+x
18f8: c4 09     mov   $09,a             ; set voice pointer of channel X to $08/9
18fa: 8d 00     mov   y,#$00
18fc: f7 08     mov   a,($08)+y
18fe: 30 27     bmi   $1927
; vcmd 00-7f
1900: 3f c0 19  call  $19c0             ; save note param
1903: fc        inc   y
1904: 60        clrc
1905: 95 30 02  adc   a,$0230+x         ; add global transpose (unsigned)
1908: d5 40 02  mov   $0240+x,a         ; note number
190b: f7 08     mov   a,($08)+y
190d: d4 30     mov   $30+x,a
190f: d5 50 02  mov   $0250+x,a         ; arg1: delta-time
1912: fc        inc   y
1913: f7 08     mov   a,($08)+y
1915: d4 38     mov   $38+x,a
1917: d5 58 02  mov   $0258+x,a         ; arg2: duration
191a: fc        inc   y
191b: f7 08     mov   a,($08)+y
191d: d5 48 02  mov   $0248+x,a         ; arg3: note volume
1920: 8d 04     mov   y,#$04
1922: 3f 6d 1d  call  $1d6d
1925: 2f 23     bra   $194a
; 80-ff
1927: fc        inc   y
1928: 68 f0     cmp   a,#$f0
192a: 90 03     bcc   $192f
192c: 5f d5 19  jmp   $19d5

192f: 3f c0 19  call  $19c0
1932: 28 7f     and   a,#$7f
1934: 60        clrc
1935: 95 30 02  adc   a,$0230+x
1938: d5 40 02  mov   $0240+x,a
193b: f5 68 02  mov   a,$0268+x
193e: d4 30     mov   $30+x,a
1940: f5 70 02  mov   a,$0270+x
1943: d4 38     mov   $38+x,a
1945: 8d 01     mov   y,#$01
1947: 3f 6d 1d  call  $1d6d
194a: f5 18 03  mov   a,$0318+x
194d: d0 33     bne   $1982
194f: f4 38     mov   a,$38+x
1951: f0 29     beq   $197c
1953: f5 00 02  mov   a,$0200+x
1956: 30 3d     bmi   $1995
1958: f5 68 02  mov   a,$0268+x
195b: 75 70 02  cmp   a,$0270+x
195e: b0 08     bcs   $1968
1960: f5 60 02  mov   a,$0260+x
1963: 75 40 02  cmp   a,$0240+x
1966: f0 14     beq   $197c
1968: f5 40 02  mov   a,$0240+x
196b: 3f 92 1d  call  $1d92
196e: 3f 21 1e  call  $1e21
1971: f8 68     mov   x,$68
1973: f5 00 02  mov   a,$0200+x
1976: 1c        asl   a
1977: 30 03     bmi   $197c
1979: 3f 83 19  call  $1983
197c: f5 48 02  mov   a,$0248+x
197f: 3f 37 1e  call  $1e37
1982: 6f        ret

1983: f5 99 1f  mov   a,$1f99+x
1986: 05 6a 00  or    a,$006a
1989: c5 6a 00  mov   $006a,a
198c: 6f        ret

198d: f5 99 1f  mov   a,$1f99+x
1990: 04 6b     or    a,$6b
1992: c4 6b     mov   $6b,a
1994: 6f        ret

1995: 8d 0b     mov   y,#$0b
1997: f5 40 02  mov   a,$0240+x
199a: 76 62 1f  cmp   a,$1f62+y
199d: f0 04     beq   $19a3
199f: dc        dec   y
19a0: 10 f8     bpl   $199a
19a2: 6f        ret

19a3: f6 8e 1f  mov   a,$1f8e+y
19a6: 3f c9 1e  call  $1ec9
19a9: f6 83 1f  mov   a,$1f83+y
19ac: 3f 6a 1e  call  $1e6a
19af: f8 68     mov   x,$68
19b1: f6 6d 1f  mov   a,$1f6d+y
19b4: d4 50     mov   $50+x,a
19b6: f6 78 1f  mov   a,$1f78+y
19b9: d4 58     mov   $58+x,a
19bb: 3f 21 1e  call  $1e21
19be: 2f b1     bra   $1971
19c0: 2d        push  a
19c1: f5 40 02  mov   a,$0240+x
19c4: d5 60 02  mov   $0260+x,a
19c7: f5 50 02  mov   a,$0250+x
19ca: d5 68 02  mov   $0268+x,a
19cd: f5 58 02  mov   a,$0258+x
19d0: d5 70 02  mov   $0270+x,a
19d3: ae        pop   a
19d4: 6f        ret

; dispatch vcmd
19d5: 80        setc
19d6: a8 f0     sbc   a,#$f0
19d8: 1c        asl   a
19d9: 5d        mov   x,a
19da: 1f dd 19  jmp   ($19dd+x)

19dd: dw $1a01  ; f0
19df: dw $1a09  ; f1
19e1: dw $1a16  ; f2
19e3: dw $19fd  ; f3
19e5: dw $19fd  ; f4
19e7: dw $19fd  ; f5
19e9: dw $1a23  ; f6
19eb: dw $1a3e  ; f7 - instrument
19ed: dw $19fd  ; f8
19ef: dw $19fd  ; f9
19f1: dw $19fd  ; fa
19f3: dw $1a56  ; fb
19f5: dw $1abd  ; fc
19f7: dw $1b52  ; fd
19f9: dw $1b95  ; fe
19fb: dw $1b9b  ; ff

; vcmd f3-f5, f8-fa - nop?
19fd: fc        inc   y
19fe: 5f 6d 1d  jmp   $1d6d

; vcmd f0
1a01: 3f 65 1d  call  $1d65
1a04: 8d 03     mov   y,#$03
1a06: 5f 6d 1d  jmp   $1d6d

; vcmd f1
1a09: 3f 65 1d  call  $1d65
1a0c: f7 08     mov   a,($08)+y
1a0e: 3f 92 1e  call  $1e92
1a11: 8d 03     mov   y,#$03
1a13: 5f 6d 1d  jmp   $1d6d

; vcmd f2
1a16: 3f 65 1d  call  $1d65
1a19: f7 08     mov   a,($08)+y
1a1b: 3f 6a 1e  call  $1e6a
1a1e: 8d 03     mov   y,#$03
1a20: 5f 6d 1d  jmp   $1d6d

; vcmd f6
1a23: 3f 65 1d  call  $1d65
1a26: f7 08     mov   a,($08)+y
1a28: d5 78 02  mov   $0278+x,a
1a2b: f5 18 03  mov   a,$0318+x
1a2e: d0 09     bne   $1a39
1a30: f5 40 02  mov   a,$0240+x
1a33: 3f 92 1d  call  $1d92
1a36: 3f 21 1e  call  $1e21
1a39: 8d 04     mov   y,#$04
1a3b: 5f 6d 1d  jmp   $1d6d

; vcmd f7 - instrument
1a3e: 3f 65 1d  call  $1d65             ; read arg1: instrument #
1a41: f7 08     mov   a,($08)+y
1a43: d5 38 02  mov   $0238+x,a
1a46: f5 18 03  mov   a,$0318+x
1a49: d0 06     bne   $1a51
1a4b: f5 38 02  mov   a,$0238+x
1a4e: 3f c9 1e  call  $1ec9             ; set sample
1a51: 8d 03     mov   y,#$03
1a53: 5f 6d 1d  jmp   $1d6d

; vcmd fb
1a56: f8 68     mov   x,$68
1a58: f5 88 02  mov   a,$0288+x
1a5b: d0 2a     bne   $1a87
1a5d: f5 10 02  mov   a,$0210+x
1a60: d5 80 02  mov   $0280+x,a
1a63: f5 18 02  mov   a,$0218+x
1a66: d5 88 02  mov   $0288+x,a
1a69: f5 20 02  mov   a,$0220+x
1a6c: 60        clrc
1a6d: 88 01     adc   a,#$01
1a6f: d5 90 02  mov   $0290+x,a
1a72: f5 28 02  mov   a,$0228+x
1a75: 88 00     adc   a,#$00
1a77: d5 98 02  mov   $0298+x,a
1a7a: e8 fe     mov   a,#$fe
1a7c: d5 a0 02  mov   $02a0+x,a
1a7f: f5 30 02  mov   a,$0230+x
1a82: d5 a8 02  mov   $02a8+x,a
1a85: 2f 2d     bra   $1ab4
1a87: f5 b8 02  mov   a,$02b8+x
1a8a: d0 28     bne   $1ab4
1a8c: f5 10 02  mov   a,$0210+x
1a8f: d5 b0 02  mov   $02b0+x,a
1a92: f5 18 02  mov   a,$0218+x
1a95: d5 b8 02  mov   $02b8+x,a
1a98: f5 20 02  mov   a,$0220+x
1a9b: 60        clrc
1a9c: 88 01     adc   a,#$01
1a9e: d5 c0 02  mov   $02c0+x,a
1aa1: f5 28 02  mov   a,$0228+x
1aa4: 88 00     adc   a,#$00
1aa6: d5 c8 02  mov   $02c8+x,a
1aa9: e8 fe     mov   a,#$fe
1aab: d5 d0 02  mov   $02d0+x,a
1aae: f5 30 02  mov   a,$0230+x
1ab1: d5 d8 02  mov   $02d8+x,a
1ab4: e8 00     mov   a,#$00
1ab6: d4 30     mov   $30+x,a
1ab8: 8d 01     mov   y,#$01
1aba: 5f 6d 1d  jmp   $1d6d

; vcmd fc
1abd: f8 68     mov   x,$68
1abf: f5 d0 02  mov   a,$02d0+x
1ac2: d0 44     bne   $1b08
1ac4: f5 a0 02  mov   a,$02a0+x
1ac7: 68 ff     cmp   a,#$ff
1ac9: f0 1c     beq   $1ae7
1acb: 68 fe     cmp   a,#$fe
1acd: f0 10     beq   $1adf
1acf: 9c        dec   a
1ad0: d5 a0 02  mov   $02a0+x,a
1ad3: d0 12     bne   $1ae7
1ad5: e8 00     mov   a,#$00
1ad7: d5 b8 02  mov   $02b8+x,a
1ada: d5 d0 02  mov   $02d0+x,a
1add: 2f 6a     bra   $1b49
1adf: f7 08     mov   a,($08)+y
1ae1: 9c        dec   a
1ae2: f0 65     beq   $1b49
1ae4: d5 a0 02  mov   $02a0+x,a
1ae7: f5 80 02  mov   a,$0280+x
1aea: d5 10 02  mov   $0210+x,a
1aed: f5 88 02  mov   a,$0288+x
1af0: d5 18 02  mov   $0218+x,a
1af3: f5 90 02  mov   a,$0290+x
1af6: d5 20 02  mov   $0220+x,a
1af9: f5 98 02  mov   a,$0298+x
1afc: d5 28 02  mov   $0228+x,a
1aff: f5 a8 02  mov   a,$02a8+x
1b02: d5 30 02  mov   $0230+x,a
1b05: 5f ee 18  jmp   $18ee

1b08: 68 ff     cmp   a,#$ff
1b0a: f0 1c     beq   $1b28
1b0c: 68 fe     cmp   a,#$fe
1b0e: f0 10     beq   $1b20
1b10: 9c        dec   a
1b11: d5 d0 02  mov   $02d0+x,a
1b14: d0 12     bne   $1b28
1b16: e8 00     mov   a,#$00
1b18: d5 b8 02  mov   $02b8+x,a
1b1b: d5 d0 02  mov   $02d0+x,a
1b1e: 2f 29     bra   $1b49
1b20: f7 08     mov   a,($08)+y
1b22: 9c        dec   a
1b23: f0 24     beq   $1b49
1b25: d5 d0 02  mov   $02d0+x,a
1b28: f5 b0 02  mov   a,$02b0+x
1b2b: d5 10 02  mov   $0210+x,a
1b2e: f5 b8 02  mov   a,$02b8+x
1b31: d5 18 02  mov   $0218+x,a
1b34: f5 c0 02  mov   a,$02c0+x
1b37: d5 20 02  mov   $0220+x,a
1b3a: f5 c8 02  mov   a,$02c8+x
1b3d: d5 28 02  mov   $0228+x,a
1b40: f5 d8 02  mov   a,$02d8+x
1b43: d5 30 02  mov   $0230+x,a
1b46: 5f ee 18  jmp   $18ee

1b49: e8 00     mov   a,#$00
1b4b: d4 30     mov   $30+x,a
1b4d: 8d 02     mov   y,#$02
1b4f: 5f 6d 1d  jmp   $1d6d

; vcmd fd
1b52: f8 68     mov   x,$68
1b54: e8 00     mov   a,#$00
1b56: d5 30 02  mov   $0230+x,a
1b59: bb 60     inc   $60+x
1b5b: f5 10 02  mov   a,$0210+x
1b5e: 60        clrc
1b5f: 88 02     adc   a,#$02
1b61: c4 08     mov   $08,a
1b63: d5 10 02  mov   $0210+x,a
1b66: f5 18 02  mov   a,$0218+x
1b69: 88 00     adc   a,#$00
1b6b: c4 09     mov   $09,a
1b6d: d5 18 02  mov   $0218+x,a
1b70: 8d 00     mov   y,#$00
1b72: f7 08     mov   a,($08)+y
1b74: 68 ff     cmp   a,#$ff
1b76: f0 1d     beq   $1b95
1b78: 08 00     or    a,#$00
1b7a: 10 0d     bpl   $1b89
1b7c: 28 7f     and   a,#$7f
1b7e: d5 30 02  mov   $0230+x,a
1b81: f5 10 02  mov   a,$0210+x
1b84: 60        clrc
1b85: 88 01     adc   a,#$01
1b87: 2f d8     bra   $1b61
1b89: d5 28 02  mov   $0228+x,a
1b8c: fc        inc   y
1b8d: f7 08     mov   a,($08)+y
1b8f: d5 20 02  mov   $0220+x,a
1b92: 5f ee 18  jmp   $18ee

; vcmd fe
1b95: e8 ff     mov   a,#$ff
1b97: c5 6e 00  mov   $006e,a
1b9a: 6f        ret

; vcmd ff - sub-command
1b9b: f7 08     mov   a,($08)+y
1b9d: c4 02     mov   $02,a
1b9f: fc        inc   y
1ba0: f7 08     mov   a,($08)+y
1ba2: c4 03     mov   $03,a
1ba4: e4 02     mov   a,$02
1ba6: 1c        asl   a
1ba7: 5d        mov   x,a
1ba8: 1f b6 1b  jmp   ($1bb6+x)

1bab: f8 68     mov   x,$68
1bad: e8 00     mov   a,#$00
1baf: d4 30     mov   $30+x,a
1bb1: 8d 03     mov   y,#$03
1bb3: 5f 6d 1d  jmp   $1d6d

; voice subcmd dispatch table
1bb6: dw $1be6  ; 00
1bb8: dw $1bee  ; 01
1bba: dw $1bf8  ; 02
1bbc: dw $1c02  ; 03
1bbe: dw $1c12  ; 04
1bc0: dw $1c24  ; 05
1bc2: dw $1c27  ; 06
1bc4: dw $1c2a  ; 07
1bc6: dw $1c2d  ; 08
1bc8: dw $1c30  ; 09
1bca: dw $1c33  ; 0a
1bcc: dw $1c36  ; 0b
1bce: dw $1c48  ; 0c
1bd0: dw $1c62  ; 0d
1bd2: dw $1c7a  ; 0e
1bd4: dw $1c8c  ; 0f
1bd6: dw $1c96  ; 10
1bd8: dw $1ca0  ; 11
1bda: dw $1cb3  ; 12
1bdc: dw $1cb6  ; 13
1bde: dw $1ccb  ; 14
1be0: dw $1cd5  ; 15
1be2: dw $1cea  ; 16
1be4: dw $1cf7  ; 17

; subcmd 00
1be6: e4 03     mov   a,$03
1be8: c5 9d 03  mov   $039d,a
1beb: 5f ab 1b  jmp   $1bab

; subcmd 01
1bee: e4 03     mov   a,$03
1bf0: c5 9b 03  mov   $039b,a
1bf3: 22 74     set1  $74
1bf5: 5f ab 1b  jmp   $1bab

; subcmd 02
1bf8: e4 03     mov   a,$03
1bfa: c5 a3 03  mov   $03a3,a
1bfd: 22 74     set1  $74
1bff: 5f ab 1b  jmp   $1bab

; subcmd 03
1c02: f8 68     mov   x,$68
1c04: f5 99 1f  mov   a,$1f99+x
1c07: 05 9a 03  or    a,$039a
1c0a: c5 9a 03  mov   $039a,a
1c0d: 42 74     set2  $74
1c0f: 5f ab 1b  jmp   $1bab

; subcmd 04
1c12: f8 68     mov   x,$68
1c14: f5 99 1f  mov   a,$1f99+x
1c17: 48 ff     eor   a,#$ff
1c19: 25 9a 03  and   a,$039a
1c1c: c5 9a 03  mov   $039a,a
1c1f: 42 74     set2  $74
1c21: 5f ab 1b  jmp   $1bab

; subcmd 05
1c24: 5f ab 1b  jmp   $1bab

; subcmd 06
1c27: 5f ab 1b  jmp   $1bab

; subcmd 07
1c2a: 5f ab 1b  jmp   $1bab

; subcmd 08
1c2d: 5f ab 1b  jmp   $1bab

; subcmd 09
1c30: 5f ab 1b  jmp   $1bab

; subcmd 0a
1c33: 5f ab 1b  jmp   $1bab

; subcmd 0b
1c36: 3f 0c 1d  call  $1d0c
1c39: 8d 00     mov   y,#$00
1c3b: f7 18     mov   a,($18)+y
1c3d: 28 f0     and   a,#$f0
1c3f: 04 03     or    a,$03
1c41: d8 f2     mov   $f2,x
1c43: c4 f3     mov   $f3,a
1c45: 5f ab 1b  jmp   $1bab

; subcmd 0c
1c48: 3f 0c 1d  call  $1d0c
1c4b: 8d 00     mov   y,#$00
1c4d: f7 18     mov   a,($18)+y
1c4f: 28 8f     and   a,#$8f
1c51: c4 18     mov   $18,a
1c53: e4 03     mov   a,$03
1c55: 1c        asl   a
1c56: 1c        asl   a
1c57: 1c        asl   a
1c58: 1c        asl   a
1c59: 04 18     or    a,$18
1c5b: d8 f2     mov   $f2,x
1c5d: c4 f3     mov   $f3,a
1c5f: 5f ab 1b  jmp   $1bab

; subcmd 0d
1c62: 3f 0c 1d  call  $1d0c
1c65: 8d 00     mov   y,#$00
1c67: f7 18     mov   a,($18)+y
1c69: 28 1f     and   a,#$1f
1c6b: c4 18     mov   $18,a
1c6d: e4 03     mov   a,$03
1c6f: 9f        xcn   a
1c70: 1c        asl   a
1c71: 04 03     or    a,$03
1c73: d8 f2     mov   $f2,x
1c75: c4 f3     mov   $f3,a
1c77: 5f ab 1b  jmp   $1bab

; subcmd 0e
1c7a: 3f 0c 1d  call  $1d0c
1c7d: 8d 00     mov   y,#$00
1c7f: f7 18     mov   a,($18)+y
1c81: 28 e0     and   a,#$e0
1c83: 04 03     or    a,$03
1c85: d8 f2     mov   $f2,x
1c87: c4 f3     mov   $f3,a
1c89: 5f ab 1b  jmp   $1bab

; subcmd 0f
1c8c: e4 03     mov   a,$03
1c8e: c5 93 03  mov   $0393,a
1c91: 42 74     set2  $74
1c93: 5f ab 1b  jmp   $1bab

; subcmd 10
1c96: e4 03     mov   a,$03
1c98: c5 92 03  mov   $0392,a
1c9b: 42 74     set2  $74
1c9d: 5f ab 1b  jmp   $1bab

; subcmd 11
1ca0: f8 68     mov   x,$68
1ca2: f5 99 1f  mov   a,$1f99+x
1ca5: 05 9f 03  or    a,$039f
1ca8: c5 9f 03  mov   $039f,a
1cab: 8f 3d f2  mov   $f2,#$3d
1cae: c4 f3     mov   $f3,a             ; set NON
1cb0: 5f ab 1b  jmp   $1bab

; subcmd 12
1cb3: 5f ab 1b  jmp   $1bab

; subcmd 13
1cb6: f8 68     mov   x,$68
1cb8: f5 99 1f  mov   a,$1f99+x
1cbb: 05 a0 03  or    a,$03a0
1cbe: 28 fe     and   a,#$fe
1cc0: c5 a0 03  mov   $03a0,a
1cc3: 8f 2d f2  mov   $f2,#$2d
1cc6: c4 f3     mov   $f3,a             ; set PMON
1cc8: 5f ab 1b  jmp   $1bab

; subcmd 14
1ccb: e4 03     mov   a,$03
1ccd: 28 1f     and   a,#$1f
1ccf: c5 9e 03  mov   $039e,a
1cd2: 5f ab 1b  jmp   $1bab

; subcmd 15
1cd5: f8 68     mov   x,$68
1cd7: f5 99 1f  mov   a,$1f99+x
1cda: 48 ff     eor   a,#$ff
1cdc: 25 9f 03  and   a,$039f
1cdf: c5 9f 03  mov   $039f,a
1ce2: 8f 3d f2  mov   $f2,#$3d
1ce5: c4 f3     mov   $f3,a             ; set NON
1ce7: 5f ab 1b  jmp   $1bab

; subcmd 16
1cea: e4 03     mov   a,$03
1cec: c5 93 03  mov   $0393,a
1cef: c5 92 03  mov   $0392,a
1cf2: 42 74     set2  $74
1cf4: 5f ab 1b  jmp   $1bab

; subcmd 17
1cf7: f8 68     mov   x,$68
1cf9: f5 99 1f  mov   a,$1f99+x
1cfc: 48 ff     eor   a,#$ff
1cfe: 25 a0 03  and   a,$03a0
1d01: c5 a0 03  mov   $03a0,a
1d04: 8f 2d f2  mov   $f2,#$2d
1d07: c4 f3     mov   $f3,a             ; set PMON
1d09: 5f ab 1b  jmp   $1bab

1d0c: f8 68     mov   x,$68
1d0e: f5 38 02  mov   a,$0238+x
1d11: 1c        asl   a
1d12: 1c        asl   a
1d13: 60        clrc
1d14: 88 00     adc   a,#$00
1d16: c4 18     mov   $18,a
1d18: e8 61     mov   a,#$61
1d1a: 88 00     adc   a,#$00
1d1c: c4 19     mov   $19,a
1d1e: e4 68     mov   a,$68
1d20: 9f        xcn   a
1d21: 60        clrc
1d22: 88 05     adc   a,#$05
1d24: 5d        mov   x,a
1d25: 6f        ret

1d26: 8f 4d f2  mov   $f2,#$4d
1d29: e5 9a 03  mov   a,$039a
1d2c: 65 f3 00  cmp   a,$00f3
1d2f: f0 03     beq   $1d34
1d31: c5 f3 00  mov   $00f3,a           ; set EON
1d34: 6f        ret

1d35: e5 9a 03  mov   a,$039a
1d38: d0 0e     bne   $1d48
1d3a: e8 00     mov   a,#$00
1d3c: 8f 3c f2  mov   $f2,#$3c
1d3f: c4 f3     mov   $f3,a             ; zero EVOL(R)
1d41: 8f 2c f2  mov   $f2,#$2c
1d44: c4 f3     mov   $f3,a             ; zero EVOL(L)
1d46: 2f 1c     bra   $1d64
1d48: 8f 3c f2  mov   $f2,#$3c
1d4b: e5 93 03  mov   a,$0393
1d4e: 65 f3 00  cmp   a,$00f3
1d51: f0 03     beq   $1d56
1d53: c5 f3 00  mov   $00f3,a           ; set EVOL(R)
1d56: 8f 2c f2  mov   $f2,#$2c
1d59: e5 92 03  mov   a,$0392
1d5c: 65 f3 00  cmp   a,$00f3
1d5f: f0 03     beq   $1d64
1d61: c5 f3 00  mov   $00f3,a           ; set EVOL(L)
1d64: 6f        ret

; read voice byte, increase index Y
1d65: f8 68     mov   x,$68
1d67: f7 08     mov   a,($08)+y
1d69: d4 30     mov   $30+x,a
1d6b: fc        inc   y
1d6c: 6f        ret

1d6d: f8 68     mov   x,$68
1d6f: dd        mov   a,y
1d70: 60        clrc
1d71: 84 08     adc   a,$08
1d73: d5 20 02  mov   $0220+x,a
1d76: e4 09     mov   a,$09
1d78: 88 00     adc   a,#$00
1d7a: d5 28 02  mov   $0228+x,a
1d7d: f4 30     mov   a,$30+x
1d7f: d0 03     bne   $1d84
1d81: 5f ee 18  jmp   $18ee

1d84: 6f        ret

1d85: f8 73     mov   x,$73
1d87: d8 19     mov   $19,x
1d89: 2d        push  a
1d8a: f5 68 03  mov   a,$0368+x
1d8d: c4 1f     mov   $1f,a
1d8f: ae        pop   a
1d90: 2f 0b     bra   $1d9d
1d92: f8 68     mov   x,$68
1d94: d8 19     mov   $19,x
1d96: 2d        push  a
1d97: f5 78 02  mov   a,$0278+x
1d9a: c4 1f     mov   $1f,a
1d9c: ae        pop   a
1d9d: 4d        push  x
1d9e: 8d 00     mov   y,#$00
1da0: cd 0c     mov   x,#$0c
1da2: 9e        div   ya,x
1da3: ce        pop   x
1da4: 2d        push  a
1da5: f6 4a 1f  mov   a,$1f4a+y
1da8: c4 18     mov   $18,a
1daa: f6 56 1f  mov   a,$1f56+y
1dad: ee        pop   y
1dae: f0 08     beq   $1db8
1db0: 5c        lsr   a
1db1: 6b 18     ror   $18
1db3: fc        inc   y
1db4: ad 08     cmp   y,#$08
1db6: d0 f8     bne   $1db0
1db8: f8 19     mov   x,$19
1dba: d4 58     mov   $58+x,a
1dbc: e4 18     mov   a,$18
1dbe: d4 50     mov   $50+x,a
1dc0: f5 10 03  mov   a,$0310+x
1dc3: fb 58     mov   y,$58+x
1dc5: cf        mul   ya
1dc6: da 0e     movw  $0e,ya
1dc8: f5 10 03  mov   a,$0310+x
1dcb: fb 50     mov   y,$50+x
1dcd: cf        mul   ya
1dce: 6d        push  y
1dcf: f5 08 03  mov   a,$0308+x
1dd2: fb 50     mov   y,$50+x
1dd4: cf        mul   ya
1dd5: 7a 0e     addw  ya,$0e
1dd7: da 0e     movw  $0e,ya
1dd9: f5 08 03  mov   a,$0308+x
1ddc: fb 58     mov   y,$58+x
1dde: cf        mul   ya
1ddf: fd        mov   y,a
1de0: ae        pop   a
1de1: 7a 0e     addw  ya,$0e
1de3: da 0e     movw  $0e,ya
1de5: e4 1f     mov   a,$1f
1de7: 68 80     cmp   a,#$80
1de9: d0 0a     bne   $1df5
1deb: e4 0e     mov   a,$0e
1ded: d4 50     mov   $50+x,a
1def: dd        mov   a,y
1df0: 28 3f     and   a,#$3f
1df2: d4 58     mov   $58+x,a
1df4: 6f        ret

1df5: 08 00     or    a,#$00
1df7: d0 0c     bne   $1e05
1df9: e4 0e     mov   a,$0e
1dfb: 1c        asl   a
1dfc: d4 50     mov   $50+x,a
1dfe: dd        mov   a,y
1dff: 3c        rol   a
1e00: 28 3f     and   a,#$3f
1e02: d4 58     mov   $58+x,a
1e04: 6f        ret

1e05: eb 0e     mov   y,$0e
1e07: cf        mul   ya
1e08: cb 1c     mov   $1c,y
1e0a: e4 0f     mov   a,$0f
1e0c: eb 1f     mov   y,$1f
1e0e: cf        mul   ya
1e0f: 60        clrc
1e10: 84 1c     adc   a,$1c
1e12: c4 1c     mov   $1c,a
1e14: 90 01     bcc   $1e17
1e16: fc        inc   y
1e17: 1c        asl   a
1e18: d4 50     mov   $50+x,a
1e1a: dd        mov   a,y
1e1b: 3c        rol   a
1e1c: 28 3f     and   a,#$3f
1e1e: d4 58     mov   $58+x,a
1e20: 6f        ret

1e21: e4 68     mov   a,$68
1e23: 5d        mov   x,a
1e24: 9f        xcn   a
1e25: 60        clrc
1e26: 88 02     adc   a,#$02
1e28: fd        mov   y,a
1e29: f4 50     mov   a,$50+x
1e2b: cb f2     mov   $f2,y
1e2d: c4 f3     mov   $f3,a             ; set P(L)
1e2f: fc        inc   y
1e30: f4 58     mov   a,$58+x
1e32: cb f2     mov   $f2,y
1e34: c4 f3     mov   $f3,a             ; set P(H)
1e36: 6f        ret

1e37: f8 68     mov   x,$68
1e39: 2d        push  a
1e3a: f5 f8 02  mov   a,$02f8+x
1e3d: fd        mov   y,a
1e3e: ae        pop   a
1e3f: cf        mul   ya
1e40: 6d        push  y
1e41: f5 00 03  mov   a,$0300+x
1e44: 68 ff     cmp   a,#$ff
1e46: f0 01     beq   $1e49
1e48: cf        mul   ya
1e49: f5 08 02  mov   a,$0208+x
1e4c: 3f bc 1e  call  $1ebc
1e4f: 68 40     cmp   a,#$40
1e51: b0 0c     bcs   $1e5f
1e53: 3d        inc   x
1e54: d8 f2     mov   $f2,x
1e56: cb f3     mov   $f3,y
1e58: ee        pop   y
1e59: 1d        dec   x
1e5a: d8 f2     mov   $f2,x
1e5c: cb f3     mov   $f3,y
1e5e: 6f        ret

1e5f: d8 f2     mov   $f2,x
1e61: cb f3     mov   $f3,y
1e63: ee        pop   y
1e64: 3d        inc   x
1e65: d8 f2     mov   $f2,x
1e67: cb f3     mov   $f3,y
1e69: 6f        ret

1e6a: 6d        push  y
1e6b: f8 68     mov   x,$68
1e6d: 13 6d 04  bbc0  $6d,$1e74
1e70: e8 40     mov   a,#$40
1e72: 2f 03     bra   $1e77
1e74: d5 08 02  mov   $0208+x,a
1e77: 68 3f     cmp   a,#$3f
1e79: 90 06     bcc   $1e81
1e7b: 80        setc
1e7c: a8 7f     sbc   a,#$7f
1e7e: 48 ff     eor   a,#$ff
1e80: bc        inc   a
1e81: fd        mov   y,a
1e82: e8 00     mov   a,#$00
1e84: cd 3f     mov   x,#$3f
1e86: 9e        div   ya,x
1e87: 50 02     bvc   $1e8b
1e89: e8 ff     mov   a,#$ff
1e8b: f8 68     mov   x,$68
1e8d: d5 00 03  mov   $0300+x,a
1e90: ee        pop   y
1e91: 6f        ret

1e92: fd        mov   y,a
1e93: e8 00     mov   a,#$00
1e95: cd 7f     mov   x,#$7f
1e97: 9e        div   ya,x
1e98: d0 02     bne   $1e9c
1e9a: e8 01     mov   a,#$01
1e9c: f8 68     mov   x,$68
1e9e: d5 f8 02  mov   $02f8+x,a
1ea1: 6f        ret

1ea2: 8d 0c     mov   y,#$0c
1ea4: 3f 45 1f  call  $1f45             ; set MVOL(L)
1ea7: 8d 1c     mov   y,#$1c
1ea9: 5f 45 1f  jmp   $1f45             ; set MVOL(R)

1eac: 8d 2c     mov   y,#$2c
1eae: cc 92 03  mov   $0392,y
1eb1: 3f 45 1f  call  $1f45             ; set EVOL(L)
1eb4: 8d 3c     mov   y,#$3c
1eb6: cc 93 03  mov   $0393,y
1eb9: 5f 45 1f  jmp   $1f45             ; set EVOL(R)

1ebc: 2d        push  a
1ebd: 7d        mov   a,x
1ebe: 9f        xcn   a
1ebf: 5d        mov   x,a
1ec0: ae        pop   a
1ec1: 6f        ret

1ec2: f8 73     mov   x,$73
1ec4: d8 0d     mov   $0d,x
1ec6: 6d        push  y
1ec7: 2f 08     bra   $1ed1
1ec9: f8 68     mov   x,$68
1ecb: d8 0d     mov   $0d,x
1ecd: 6d        push  y
1ece: d5 38 02  mov   $0238+x,a
1ed1: 2d        push  a
1ed2: 7d        mov   a,x
1ed3: 9f        xcn   a
1ed4: 60        clrc
1ed5: 88 04     adc   a,#$04
1ed7: 5d        mov   x,a
1ed8: d8 f2     mov   $f2,x
1eda: ae        pop   a
1edb: c4 f3     mov   $f3,a             ; set SRCN
1edd: 1c        asl   a
1ede: 1c        asl   a
1edf: 60        clrc
1ee0: 88 00     adc   a,#$00
1ee2: c4 18     mov   $18,a
1ee4: e8 00     mov   a,#$00
1ee6: 88 61     adc   a,#$61
1ee8: c4 19     mov   $19,a
1eea: 8d 00     mov   y,#$00
1eec: f7 18     mov   a,($18)+y
1eee: fc        inc   y
1eef: 3d        inc   x
1ef0: d8 f2     mov   $f2,x
1ef2: c4 f3     mov   $f3,a             ; set ADSR(1)
1ef4: f7 18     mov   a,($18)+y
1ef6: fc        inc   y
1ef7: 3d        inc   x
1ef8: d8 f2     mov   $f2,x
1efa: c4 f3     mov   $f3,a             ; set ADSR(2)
1efc: f8 0d     mov   x,$0d
1efe: f7 18     mov   a,($18)+y
1f00: d5 08 03  mov   $0308+x,a
1f03: fc        inc   y
1f04: f7 18     mov   a,($18)+y
1f06: d5 10 03  mov   $0310+x,a
1f09: ee        pop   y
1f0a: 6f        ret

1f0b: 1c        asl   a
1f0c: 1c        asl   a
1f0d: 1c        asl   a
1f0e: 5d        mov   x,a
1f0f: 8f 08 0c  mov   $0c,#$08
1f12: 8d 0f     mov   y,#$0f
1f14: f5 25 1f  mov   a,$1f25+x
1f17: 3f 45 1f  call  $1f45             ; set FIR C0-C7
1f1a: dd        mov   a,y
1f1b: 60        clrc
1f1c: 88 10     adc   a,#$10
1f1e: fd        mov   y,a
1f1f: 3d        inc   x
1f20: 8b 0c     dec   $0c
1f22: d0 f0     bne   $1f14
1f24: 6f        ret

; FIR
1f25: db $7f,$00,$00,$00,$00,$00,$00,$00
1f2d: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1f35: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1f3d: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; write A to dsp reg Y
1f45: cb f2     mov   $f2,y
1f47: c4 f3     mov   $f3,a
1f49: 6f        ret

1f4a: db $7d,$7b,$97,$d3,$31,$b3,$5c,$2d,$29,$52,$ab,$38
1f56: db $21,$23,$25,$27,$2a,$2c,$2f,$32,$35,$38,$3b,$3f

1f62: db $31,$37,$26,$28,$34,$30,$2d,$29,$2a,$2e,$24

1f6d: db $00,$e0,$00,$00,$fc,$14,$00,$fe,$00,$00,$00
1f78: db $0a,$09,$08,$0f,$0b,$0a,$08,$05,$10,$10,$08

1f83: db $60,$20,$40,$40,$70,$50,$30,$10,$30,$30,$40
1f8e: db $36,$36,$31,$32,$35,$35,$35,$35,$33,$34,$30

1f99: db $01,$02,$04,$08,$10,$20,$40,$80

1fa1: e5 99 03  mov   a,$0399
1fa4: f0 03     beq   $1fa9
1fa6: 5f 42 20  jmp   $2042

1fa9: 3f ad 1f  call  $1fad
1fac: 6f        ret

1fad: e5 6c 00  mov   a,$006c
1fb0: f0 06     beq   $1fb8
1fb2: 3f 39 20  call  $2039
1fb5: 5f 15 20  jmp   $2015

1fb8: 8f 7d f2  mov   $f2,#$7d
1fbb: e5 9d 03  mov   a,$039d
1fbe: 64 f3     cmp   a,$f3
1fc0: f0 06     beq   $1fc8             ; branch if EDL == 0
1fc2: 3f 16 20  call  $2016
1fc5: 5f 15 20  jmp   $2015

1fc8: 33 74 12  bbc1  $74,$1fdd
1fcb: 42 74     set2  $74
1fcd: e5 9b 03  mov   a,$039b
1fd0: 8f 0d f2  mov   $f2,#$0d
1fd3: c4 f3     mov   $f3,a             ; set EFB
1fd5: e5 a3 03  mov   a,$03a3
1fd8: 3f 0b 1f  call  $1f0b
1fdb: 32 74     clr1  $74
1fdd: 53 74 28  bbc2  $74,$2008
1fe0: e5 9a 03  mov   a,$039a
1fe3: 8f 4d f2  mov   $f2,#$4d
1fe6: c4 f3     mov   $f3,a             ; set EON
1fe8: f0 12     beq   $1ffc
1fea: e5 93 03  mov   a,$0393
1fed: 8f 3c f2  mov   $f2,#$3c
1ff0: c4 f3     mov   $f3,a             ; set EVOL(R)
1ff2: e5 92 03  mov   a,$0392
1ff5: 8f 2c f2  mov   $f2,#$2c
1ff8: c4 f3     mov   $f3,a             ; set EVOL(L)
1ffa: 2f 0a     bra   $2006
1ffc: 8f 3c f2  mov   $f2,#$3c
1fff: c4 f3     mov   $f3,a             ; set EVOL(R)
2001: 8f 2c f2  mov   $f2,#$2c
2004: c4 f3     mov   $f3,a             ; set EVOL(L)
2006: 52 74     clr2  $74
2008: e5 9e 03  mov   a,$039e
200b: 28 1f     and   a,#$1f
200d: 8f 6c f2  mov   $f2,#$6c
2010: c4 f3     mov   $f3,a             ; set FLG
2012: c5 9e 03  mov   $039e,a
2015: 6f        ret

2016: 8f 7d f2  mov   $f2,#$7d
2019: e4 f3     mov   a,$f3             ; set EDL
201b: bc        inc   a
201c: c5 6c 00  mov   $006c,a
201f: e8 00     mov   a,#$00
2021: 8f 4d f2  mov   $f2,#$4d
2024: c4 f3     mov   $f3,a             ; set EON
2026: 8f 2c f2  mov   $f2,#$2c
2029: c4 f3     mov   $f3,a             ; set EVOL(L)
202b: 8f 3c f2  mov   $f2,#$3c
202e: c4 f3     mov   $f3,a             ; set EVOL(R)
2030: e5 9d 03  mov   a,$039d
2033: 8f 7d f2  mov   $f2,#$7d
2036: c4 f3     mov   $f3,a             ; set EDL
2038: 6f        ret

2039: 9c        dec   a
203a: c5 6c 00  mov   $006c,a
203d: d0 02     bne   $2041
203f: 42 74     set2  $74
2041: 6f        ret

2042: 8c 98 03  dec   $0398
2045: d0 37     bne   $207e
2047: e5 99 03  mov   a,$0399
204a: c5 98 03  mov   $0398,a
204d: e5 94 03  mov   a,$0394
2050: f0 0e     beq   $2060
2052: 9c        dec   a
2053: c5 94 03  mov   $0394,a
2056: 8f 0c f2  mov   $f2,#$0c
2059: c4 f3     mov   $f3,a             ; set MVOL(L)
205b: 8f 1c f2  mov   $f2,#$1c
205e: c4 f3     mov   $f3,a             ; set MVOL(R)
2060: e5 95 03  mov   a,$0395
2063: f0 0e     beq   $2073
2065: 9c        dec   a
2066: c5 95 03  mov   $0395,a
2069: 8f 2c f2  mov   $f2,#$2c
206c: c4 f3     mov   $f3,a             ; set EVOL(L)
206e: 8f 3c f2  mov   $f2,#$3c
2071: c4 f3     mov   $f3,a             ; set EVOL(R)
2073: e5 94 03  mov   a,$0394
2076: 05 95 03  or    a,$0395
2079: d0 03     bne   $207e
207b: 8f ff 6e  mov   $6e,#$ff
207e: 6f        ret

207f: e4 f4     mov   a,$f4
2081: c5 a1 03  mov   $03a1,a
2084: 1c        asl   a
2085: fd        mov   y,a
2086: f6 e8 05  mov   a,$05e8+y
2089: 60        clrc
208a: 88 e8     adc   a,#$e8
208c: c4 14     mov   $14,a
208e: f6 e9 05  mov   a,$05e9+y
2091: 88 05     adc   a,#$05
2093: c4 15     mov   $15,a
2095: cd 07     mov   x,#$07
2097: d8 0c     mov   $0c,x
2099: 3f f2 20  call  $20f2
209c: fd        mov   y,a
209d: f7 14     mov   a,($14)+y
209f: 68 ff     cmp   a,#$ff
20a1: f0 47     beq   $20ea
20a3: 5d        mov   x,a
20a4: d5 18 03  mov   $0318+x,a
20a7: f5 99 1f  mov   a,$1f99+x
20aa: 48 ff     eor   a,#$ff
20ac: 25 a2 03  and   a,$03a2
20af: c5 a2 03  mov   $03a2,a
20b2: 8f 4d f2  mov   $f2,#$4d
20b5: c4 f3     mov   $f3,a
20b7: 3f f2 20  call  $20f2
20ba: 1c        asl   a
20bb: 60        clrc
20bc: 88 04     adc   a,#$04
20be: fd        mov   y,a
20bf: f7 14     mov   a,($14)+y
20c1: 60        clrc
20c2: 84 14     adc   a,$14
20c4: d5 40 03  mov   $0340+x,a
20c7: fc        inc   y
20c8: f7 14     mov   a,($14)+y
20ca: 84 15     adc   a,$15
20cc: d5 3c 03  mov   $033c+x,a
20cf: e8 01     mov   a,#$01
20d1: d4 40     mov   $40+x,a
20d3: 9c        dec   a
20d4: d4 48     mov   $48+x,a
20d6: d5 60 03  mov   $0360+x,a
20d9: d5 5c 03  mov   $035c+x,a
20dc: d5 30 03  mov   $0330+x,a
20df: d5 34 03  mov   $0334+x,a
20e2: d5 80 03  mov   $0380+x,a
20e5: e8 80     mov   a,#$80
20e7: d5 68 03  mov   $0368+x,a
20ea: f8 0c     mov   x,$0c
20ec: 1d        dec   x
20ed: c8 03     cmp   x,#$03
20ef: d0 a6     bne   $2097
20f1: 6f        ret

20f2: e4 0c     mov   a,$0c
20f4: 80        setc
20f5: a8 07     sbc   a,#$07
20f7: 48 ff     eor   a,#$ff
20f9: bc        inc   a
20fa: 6f        ret

20fb: cd 04     mov   x,#$04
20fd: d8 73     mov   $73,x
20ff: f5 18 03  mov   a,$0318+x
2102: f0 10     beq   $2114
2104: 9b 48     dec   $48+x
2106: d0 03     bne   $210b
2108: 3f 8d 19  call  $198d
210b: 9b 40     dec   $40+x
210d: d0 05     bne   $2114
210f: 3f 1a 21  call  $211a
2112: f8 73     mov   x,$73
2114: 3d        inc   x
2115: c8 08     cmp   x,#$08
2117: d0 e4     bne   $20fd
2119: 6f        ret

211a: f5 40 03  mov   a,$0340+x
211d: c4 14     mov   $14,a
211f: f5 3c 03  mov   a,$033c+x
2122: c4 15     mov   $15,a
2124: 8d 00     mov   y,#$00
2126: f7 14     mov   a,($14)+y
2128: 30 22     bmi   $214c
212a: 3f 8e 22  call  $228e
212d: d5 54 03  mov   $0354+x,a
2130: fc        inc   y
2131: f7 14     mov   a,($14)+y
2133: d4 40     mov   $40+x,a
2135: d5 60 03  mov   $0360+x,a
2138: fc        inc   y
2139: f7 14     mov   a,($14)+y
213b: d4 48     mov   $48+x,a
213d: d5 5c 03  mov   $035c+x,a
2140: fc        inc   y
2141: f7 14     mov   a,($14)+y
2143: d5 20 03  mov   $0320+x,a
2146: fc        inc   y
2147: 3f a3 22  call  $22a3
214a: 2f 1d     bra   $2169
214c: fc        inc   y
214d: 68 f0     cmp   a,#$f0
214f: 90 03     bcc   $2154
2151: 5f a6 21  jmp   $21a6

2154: 28 7f     and   a,#$7f
2156: d5 54 03  mov   $0354+x,a
2159: 3f 8e 22  call  $228e
215c: f5 4c 03  mov   a,$034c+x
215f: d4 40     mov   $40+x,a
2161: f5 58 03  mov   a,$0358+x
2164: d4 48     mov   $48+x,a
2166: 3f a3 22  call  $22a3
2169: f4 48     mov   a,$48+x
216b: f0 22     beq   $218f
216d: f5 4c 03  mov   a,$034c+x
2170: 75 58 03  cmp   a,$0358+x
2173: b0 08     bcs   $217d
2175: f5 50 03  mov   a,$0350+x
2178: 75 54 03  cmp   a,$0354+x
217b: f0 12     beq   $218f
217d: f5 54 03  mov   a,$0354+x
2180: 3f 85 1d  call  $1d85
2183: 3f 90 21  call  $2190
2186: 3f 83 19  call  $1983
2189: f5 20 03  mov   a,$0320+x
218c: 3f b4 22  call  $22b4
218f: 6f        ret

2190: e4 73     mov   a,$73
2192: 5d        mov   x,a
2193: 9f        xcn   a
2194: 60        clrc
2195: 88 02     adc   a,#$02
2197: fd        mov   y,a
2198: f4 50     mov   a,$50+x
219a: cb f2     mov   $f2,y
219c: c4 f3     mov   $f3,a
219e: fc        inc   y
219f: f4 58     mov   a,$58+x
21a1: cb f2     mov   $f2,y
21a3: c4 f3     mov   $f3,a
21a5: 6f        ret

21a6: 80        setc
21a7: a8 f0     sbc   a,#$f0
21a9: 1c        asl   a
21aa: 5d        mov   x,a
21ab: 1f ae 21  jmp   ($21ae+x)

21ae: dw $21ce  ; f0 - halt
21b0: dw $21ce  ; f1 - halt
21b2: dw $21d1  ; f2
21b4: dw $21ce  ; f3 - halt
21b6: dw $21ce  ; f4 - halt
21b8: dw $21ce  ; f5 - halt
21ba: dw $21de  ; f6
21bc: dw $21f4  ; f7
21be: dw $21ce  ; f8 - halt
21c0: dw $21ce  ; f9 - halt
21c2: dw $21ce  ; fa - halt
21c4: dw $2201  ; fb
21c6: dw $221e  ; fc
21c8: dw $21ce  ; fd - halt
21ca: dw $2243  ; fe
21cc: dw $21ce  ; ff - halt

; halt
21ce: 5f ce 21  jmp   $21ce

21d1: 3f 86 22  call  $2286
21d4: f7 14     mov   a,($14)+y
21d6: 3f e6 22  call  $22e6
21d9: 8d 03     mov   y,#$03
21db: 5f 70 22  jmp   $2270

21de: 3f 86 22  call  $2286
21e1: f7 14     mov   a,($14)+y
21e3: d5 68 03  mov   $0368+x,a
21e6: f5 54 03  mov   a,$0354+x
21e9: 3f 85 1d  call  $1d85
21ec: 3f 90 21  call  $2190
21ef: 8d 04     mov   y,#$04
21f1: 5f 70 22  jmp   $2270

21f4: 3f 86 22  call  $2286
21f7: f7 14     mov   a,($14)+y
21f9: 3f c2 1e  call  $1ec2
21fc: 8d 03     mov   y,#$03
21fe: 5f 70 22  jmp   $2270

2201: f8 73     mov   x,$73
2203: f5 40 03  mov   a,$0340+x
2206: 60        clrc
2207: 88 01     adc   a,#$01
2209: d5 64 03  mov   $0364+x,a
220c: f5 3c 03  mov   a,$033c+x
220f: 88 00     adc   a,#$00
2211: d5 70 03  mov   $0370+x,a
2214: e8 00     mov   a,#$00
2216: d5 6c 03  mov   $036c+x,a
2219: 8d 01     mov   y,#$01
221b: 5f 70 22  jmp   $2270

221e: f8 73     mov   x,$73
2220: f5 6c 03  mov   a,$036c+x
2223: f0 12     beq   $2237
2225: 9c        dec   a
2226: f0 16     beq   $223e
2228: f5 64 03  mov   a,$0364+x
222b: d5 40 03  mov   $0340+x,a
222e: f5 70 03  mov   a,$0370+x
2231: d5 3c 03  mov   $033c+x,a
2234: 5f 1a 21  jmp   $211a

2237: f7 14     mov   a,($14)+y
2239: d5 6c 03  mov   $036c+x,a
223c: 2f ea     bra   $2228
223e: 8d 01     mov   y,#$01
2240: 5f 70 22  jmp   $2270

2243: f8 73     mov   x,$73
2245: e8 00     mov   a,#$00
2247: d5 18 03  mov   $0318+x,a
224a: 3f 8d 19  call  $198d
224d: e4 73     mov   a,$73
224f: 9f        xcn   a
2250: 60        clrc
2251: 88 09     adc   a,#$09
2253: c4 f2     mov   $f2,a
2255: 8f 00 f3  mov   $f3,#$00
2258: f5 38 02  mov   a,$0238+x
225b: 3f c2 1e  call  $1ec2
225e: f5 99 1f  mov   a,$1f99+x
2261: 25 9a 03  and   a,$039a
2264: 05 a2 03  or    a,$03a2
2267: c5 a2 03  mov   $03a2,a
226a: 8f 4d f2  mov   $f2,#$4d
226d: c4 f3     mov   $f3,a
226f: 6f        ret

2270: dd        mov   a,y
2271: 60        clrc
2272: 84 14     adc   a,$14
2274: d5 40 03  mov   $0340+x,a
2277: e4 15     mov   a,$15
2279: 88 00     adc   a,#$00
227b: d5 3c 03  mov   $033c+x,a
227e: f4 40     mov   a,$40+x
2280: d0 03     bne   $2285
2282: 5f 1a 21  jmp   $211a

2285: 6f        ret

2286: f8 73     mov   x,$73
2288: f7 14     mov   a,($14)+y
228a: d4 40     mov   $40+x,a
228c: fc        inc   y
228d: 6f        ret

228e: 2d        push  a
228f: f5 54 03  mov   a,$0354+x
2292: d5 50 03  mov   $0350+x,a
2295: f5 60 03  mov   a,$0360+x
2298: d5 4c 03  mov   $034c+x,a
229b: f5 5c 03  mov   a,$035c+x
229e: d5 58 03  mov   $0358+x,a
22a1: ae        pop   a
22a2: 6f        ret

22a3: f8 73     mov   x,$73
22a5: dd        mov   a,y
22a6: 60        clrc
22a7: 84 14     adc   a,$14
22a9: d5 40 03  mov   $0340+x,a
22ac: e4 15     mov   a,$15
22ae: 88 00     adc   a,#$00
22b0: d5 3c 03  mov   $033c+x,a
22b3: 6f        ret

22b4: f8 73     mov   x,$73
22b6: 2d        push  a
22b7: e8 fb     mov   a,#$fb
22b9: fd        mov   y,a
22ba: ae        pop   a
22bb: cf        mul   ya
22bc: 6d        push  y
22bd: f5 48 03  mov   a,$0348+x
22c0: 68 ff     cmp   a,#$ff
22c2: f0 01     beq   $22c5
22c4: cf        mul   ya
22c5: f5 44 03  mov   a,$0344+x
22c8: 3f bc 1e  call  $1ebc
22cb: 68 40     cmp   a,#$40
22cd: b0 0c     bcs   $22db
22cf: 3d        inc   x
22d0: d8 f2     mov   $f2,x
22d2: cb f3     mov   $f3,y
22d4: ee        pop   y
22d5: 1d        dec   x
22d6: d8 f2     mov   $f2,x
22d8: cb f3     mov   $f3,y
22da: 6f        ret

22db: d8 f2     mov   $f2,x
22dd: cb f3     mov   $f3,y
22df: ee        pop   y
22e0: 3d        inc   x
22e1: d8 f2     mov   $f2,x
22e3: cb f3     mov   $f3,y
22e5: 6f        ret

22e6: 6d        push  y
22e7: f8 73     mov   x,$73
22e9: 13 6d 04  bbc0  $6d,$22f0
22ec: e8 40     mov   a,#$40
22ee: 2f 03     bra   $22f3
22f0: d5 44 03  mov   $0344+x,a
22f3: 68 3f     cmp   a,#$3f
22f5: 90 06     bcc   $22fd
22f7: 80        setc
22f8: a8 7f     sbc   a,#$7f
22fa: 48 ff     eor   a,#$ff
22fc: bc        inc   a
22fd: fd        mov   y,a
22fe: e8 00     mov   a,#$00
2300: cd 3f     mov   x,#$3f
2302: 9e        div   ya,x
2303: 50 02     bvc   $2307
2305: e8 ff     mov   a,#$ff
2307: f8 73     mov   x,$73
2309: d5 48 03  mov   $0348+x,a
230c: ee        pop   y
230d: 6f        ret
