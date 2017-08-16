0200: 20        clrp
0201: c0        di
0202: cd ff     mov   x,#$ff
0204: bd        mov   sp,x
0205: e8 00     mov   a,#$00
0207: 5d        mov   x,a
0208: af        mov   (x)+,a
0209: c8 f0     cmp   x,#$f0
020b: d0 fb     bne   $0208
020d: 8b 80     dec   $80
020f: 1a bc     decw  $bc
0211: 8d 2c     mov   y,#$2c
0213: 3f 97 07  call  $0797             ; EVOL(L)
0216: 8d 3c     mov   y,#$3c
0218: 3f 97 07  call  $0797             ; EVOL(R)
021b: cd 40     mov   x,#$40
021d: d5 68 f1  mov   $f168+x,a
0220: 1d        dec   x
0221: 1d        dec   x
0222: 1d        dec   x
0223: 1d        dec   x
0224: d0 f7     bne   $021d
0226: e8 20     mov   a,#$20
0228: 8d 5d     mov   y,#$5d
022a: 3f 97 07  call  $0797             ; DIR
022d: 8d 07     mov   y,#$07
022f: cd a0     mov   x,#$a0
0231: cb f2     mov   $f2,y
0233: d8 f3     mov   $f3,x             ; GAIN
0235: dd        mov   a,y
0236: 60        clrc
0237: 88 10     adc   a,#$10
0239: fd        mov   y,a
023a: 10 f5     bpl   $0231
023c: 8f 30 f1  mov   $f1,#$30
023f: 8f 27 fa  mov   $fa,#$27
0242: 8f 80 fb  mov   $fb,#$80
0245: 8f 03 f1  mov   $f1,#$03
0248: 8f 05 8f  mov   $8f,#$05
024b: 3f 6b 14  call  $146b
024e: 8b 23     dec   $23
0250: 8f 07 be  mov   $be,#$07
0253: cd 04     mov   x,#$04
0255: e8 ff     mov   a,#$ff
0257: d5 5f f1  mov   $f15f+x,a
025a: bc        inc   a
025b: d5 62 f1  mov   $f162+x,a
025e: 1d        dec   x
025f: 1d        dec   x
0260: d0 f3     bne   $0255
0262: e8 8e     mov   a,#$8e
0264: c5 40 20  mov   $2040,a
0267: e8 1e     mov   a,#$1e
0269: c5 41 20  mov   $2041,a
026c: e8 97     mov   a,#$97
026e: c5 42 20  mov   $2042,a
0271: e8 1e     mov   a,#$1e
0273: c5 43 20  mov   $2043,a
0276: e8 bb     mov   a,#$bb
0278: c5 44 20  mov   $2044,a
027b: e8 1e     mov   a,#$1e
027d: c5 45 20  mov   $2045,a
0280: e8 c4     mov   a,#$c4
0282: c5 46 20  mov   $2046,a
0285: e8 1e     mov   a,#$1e
0287: c5 47 20  mov   $2047,a
028a: e8 ff     mov   a,#$ff
028c: c5 a0 21  mov   $21a0,a
028f: c5 a2 21  mov   $21a2,a
0292: e8 e0     mov   a,#$e0
0294: c5 a1 21  mov   $21a1,a
0297: c5 a3 21  mov   $21a3,a
029a: e8 e1     mov   a,#$e1
029c: c5 20 21  mov   $2120,a
029f: c5 22 21  mov   $2122,a
02a2: e8 00     mov   a,#$00
02a4: c5 21 21  mov   $2121,a
02a7: c5 23 21  mov   $2123,a
02aa: e8 40     mov   a,#$40
02ac: c4 de     mov   $de,a
02ae: c4 df     mov   $df,a
02b0: e8 00     mov   a,#$00
02b2: c5 f0 f1  mov   $f1f0,a
02b5: e8 02     mov   a,#$02
02b7: c4 d9     mov   $d9,a
02b9: c4 db     mov   $db,a
02bb: 5c        lsr   a
02bc: c4 dd     mov   $dd,a
02be: e8 20     mov   a,#$20
02c0: c4 4f     mov   $4f,a
02c2: e8 40     mov   a,#$40
02c4: c4 76     mov   $76,a
02c6: cd 10     mov   x,#$10
02c8: 8d 08     mov   y,#$08
02ca: f6 5d 1e  mov   a,$1e5d+y
02cd: d4 64     mov   $64+x,a
02cf: 1d        dec   x
02d0: 1d        dec   x
02d1: fe f7     dbnz  y,$02ca
02d3: 3f a0 0b  call  $0ba0
02d6: eb fd     mov   y,$fd
02d8: f0 f9     beq   $02d3
02da: 13 88 03  bbc0  $88,$02e0
02dd: 23 88 06  bbs1  $88,$02e6
02e0: e4 4f     mov   a,$4f
02e2: c4 e0     mov   $e0,a
02e4: c4 e1     mov   $e1,a
02e6: 8d 13     mov   y,#$13
02e8: f6 00 18  mov   a,$1800+y
02eb: c4 f2     mov   $f2,a
02ed: f6 13 18  mov   a,$1813+y
02f0: 5d        mov   x,a
02f1: e6        mov   a,(x)
02f2: c4 f3     mov   $f3,a             ; update DSP regs
02f4: fe f2     dbnz  y,$02e8
02f6: cb 23     mov   $23,y
02f8: cb 22     mov   $22,y
02fa: e3 89 16  bbs7  $89,$0313
02fd: eb 53     mov   y,$53
02ff: f0 02     beq   $0303
0301: eb 80     mov   y,$80
0303: e4 86     mov   a,$86
0305: da f6     movw  $f6,ya
0307: e4 d4     mov   a,$d4
0309: 9f        xcn   a
030a: 04 7b     or    a,$7b
030c: fd        mov   y,a
030d: e8 00     mov   a,#$00
030f: da f4     movw  $f4,ya
0311: 2f 03     bra   $0316
0313: 3f 5e 15  call  $155e
0316: 83 88 ba  bbs4  $88,$02d3
0319: 8b be     dec   $be
031b: d0 06     bne   $0323
031d: 8f 07 be  mov   $be,#$07
0320: 3f b8 15  call  $15b8
0323: 3f bb 04  call  $04bb
0326: 3f 92 03  call  $0392
0329: 3f dd 08  call  $08dd
032c: 83 88 a4  bbs4  $88,$02d3
032f: cd 00     mov   x,#$00
0331: 8f 01 92  mov   $92,#$01
0334: e4 86     mov   a,$86
0336: 04 87     or    a,$87
0338: 48 ff     eor   a,#$ff
033a: 24 53     and   a,$53
033c: 24 24     and   a,$24
033e: c4 a4     mov   $a4,a
0340: e5 61 f1  mov   a,$f161
0343: c4 a9     mov   $a9,a
0345: 2f 0c     bra   $0353
0347: d8 a7     mov   $a7,x
0349: 3f 13 09  call  $0913
034c: 3f 9c 08  call  $089c
034f: 3d        inc   x
0350: 3d        inc   x
0351: 0b 92     asl   $92
0353: 4b a4     lsr   $a4
0355: b0 f0     bcs   $0347
0357: d0 f6     bne   $034f
0359: cd 10     mov   x,#$10
035b: 8f 01 92  mov   $92,#$01
035e: e4 87     mov   a,$87
0360: 48 ff     eor   a,#$ff
0362: 24 86     and   a,$86
0364: 24 25     and   a,$25
0366: c4 a4     mov   $a4,a
0368: e5 63 f1  mov   a,$f163
036b: c4 a9     mov   $a9,a
036d: 2f 0c     bra   $037b
036f: d8 a7     mov   $a7,x
0371: 3f 13 09  call  $0913
0374: 3f 9c 08  call  $089c
0377: 3d        inc   x
0378: 3d        inc   x
0379: 0b 92     asl   $92
037b: 4b a4     lsr   $a4
037d: b0 f0     bcs   $036f
037f: d0 f6     bne   $0377
0381: e8 00     mov   a,#$00
0383: fd        mov   y,a
0384: da d1     movw  $d1,ya
0386: 3f dd 08  call  $08dd
0389: 3f 98 1f  call  $1f98
038c: 3f 29 0b  call  $0b29
038f: 5f d3 02  jmp   $02d3

0392: 52 89     clr2  $89
0394: ec 02 04  mov   y,$0402
0397: a3 89 1f  bbs5  $89,$03b9
039a: e4 47     mov   a,$47
039c: eb ab     mov   y,$ab
039e: f0 12     beq   $03b2
03a0: cf        mul   ya
03a1: dd        mov   a,y
03a2: e3 ab 0a  bbs7  $ab,$03af
03a5: 1c        asl   a
03a6: 60        clrc
03a7: 84 47     adc   a,$47
03a9: 90 07     bcc   $03b2
03ab: e8 ff     mov   a,#$ff
03ad: 2f 03     bra   $03b2
03af: d0 01     bne   $03b2
03b1: bc        inc   a
03b2: 60        clrc
03b3: 84 48     adc   a,$48
03b5: c4 48     mov   $48,a
03b7: 90 5c     bcc   $0415
03b9: cd 00     mov   x,#$00
03bb: 8f 01 92  mov   $92,#$01
03be: fa 53 a4  mov   ($a4),($53)
03c1: 2f 46     bra   $0409
03c3: d8 a7     mov   $a7,x
03c5: 9b 26     dec   $26+x
03c7: d0 0a     bne   $03d3
03c9: 72 89     clr3  $89
03cb: 3f 21 05  call  $0521
03ce: 73 89 2e  bbc3  $89,$03ff
03d1: 2f 32     bra   $0405
03d3: 8d 00     mov   y,#$00
03d5: c8 10     cmp   x,#$10
03d7: b0 01     bcs   $03da
03d9: e8 fc     mov   a,#$fc
03db: e8 02     mov   a,#$02
03dd: de 26 1f  cbne  $26+x,$03ff
03e0: f6 5a 00  mov   a,$005a+y
03e3: 24 92     and   a,$92
03e5: d0 18     bne   $03ff
03e7: e4 92     mov   a,$92
03e9: 48 ff     eor   a,#$ff
03eb: 36 24 00  and   a,$0024+y
03ee: d6 24 00  mov   $0024+y,a
03f1: dd        mov   a,y
03f2: d0 08     bne   $03fc
03f4: e4 86     mov   a,$86
03f6: 04 87     or    a,$87
03f8: 24 92     and   a,$92
03fa: d0 03     bne   $03ff
03fc: 09 92 23  or    ($23),($92)
03ff: 3f b8 07  call  $07b8
0402: 3f 9c 08  call  $089c
0405: 3d        inc   x
0406: 3d        inc   x
0407: 0b 92     asl   $92
0409: 4b a4     lsr   $a4
040b: b0 b6     bcs   $03c3
040d: d0 f6     bne   $0405
040f: 43 89 1c  bbs2  $89,$042e
0412: 3f e1 04  call  $04e1
0415: 42 89     set2  $89
0417: a3 89 09  bbs5  $89,$0423
041a: e8 81     mov   a,#$81
041c: 60        clrc
041d: 84 49     adc   a,$49
041f: c4 49     mov   $49,a
0421: 90 0b     bcc   $042e
0423: cd 10     mov   x,#$10
0425: 8f 01 92  mov   $92,#$01
0428: e4 86     mov   a,$86
042a: c4 a4     mov   $a4,a
042c: d0 db     bne   $0409
042e: 6f        ret

042f: 93 88 01  bbc4  $88,$0433
0432: 6f        ret

0433: 13 88 03  bbc0  $88,$0439
0436: 23 88 06  bbs1  $88,$043f
0439: e4 4f     mov   a,$4f
043b: c4 e0     mov   $e0,a
043d: c4 e1     mov   $e1,a
043f: 8d 13     mov   y,#$13
0441: f6 00 18  mov   a,$1800+y
0444: c4 f2     mov   $f2,a
0446: f6 13 18  mov   a,$1813+y
0449: 5d        mov   x,a
044a: e6        mov   a,(x)
044b: c4 f3     mov   $f3,a             ; update DSP regs
044d: fe f2     dbnz  y,$0441
044f: cb 23     mov   $23,y
0451: cb 22     mov   $22,y
0453: 8b be     dec   $be
0455: d0 06     bne   $045d
0457: 8f 07 be  mov   $be,#$07
045a: 3f b8 15  call  $15b8
045d: 3f bb 04  call  $04bb
0460: 3f 92 03  call  $0392
0463: cd 00     mov   x,#$00
0465: 8f 01 92  mov   $92,#$01
0468: e4 86     mov   a,$86
046a: 04 87     or    a,$87
046c: 48 ff     eor   a,#$ff
046e: 24 53     and   a,$53
0470: 24 24     and   a,$24
0472: c4 a4     mov   $a4,a
0474: e5 61 f1  mov   a,$f161
0477: c4 a9     mov   $a9,a
0479: 2f 09     bra   $0484
047b: d8 a7     mov   $a7,x
047d: 3f 13 09  call  $0913
0480: 3d        inc   x
0481: 3d        inc   x
0482: 0b 92     asl   $92
0484: 4b a4     lsr   $a4
0486: b0 f3     bcs   $047b
0488: d0 f6     bne   $0480
048a: cd 10     mov   x,#$10
048c: 8f 01 92  mov   $92,#$01
048f: e4 87     mov   a,$87
0491: 48 ff     eor   a,#$ff
0493: 24 86     and   a,$86
0495: 24 25     and   a,$25
0497: c4 a4     mov   $a4,a
0499: e5 63 f1  mov   a,$f163
049c: c4 a9     mov   $a9,a
049e: 2f 09     bra   $04a9
04a0: d8 a7     mov   $a7,x
04a2: 3f 13 09  call  $0913
04a5: 3d        inc   x
04a6: 3d        inc   x
04a7: 0b 92     asl   $92
04a9: 4b a4     lsr   $a4
04ab: b0 f3     bcs   $04a0
04ad: d0 f6     bne   $04a5
04af: e8 00     mov   a,#$00
04b1: fd        mov   y,a
04b2: da d1     movw  $d1,ya
04b4: 3f 98 1f  call  $1f98
04b7: 3f 29 0b  call  $0b29
04ba: 6f        ret

04bb: e4 87     mov   a,$87
04bd: f0 21     beq   $04e0
04bf: e8 78     mov   a,#$78
04c1: c4 f2     mov   $f2,a             ; ENVX
04c3: e4 f3     mov   a,$f3
04c5: d0 19     bne   $04e0
04c7: e8 8c     mov   a,#$8c
04c9: 8d 1e     mov   y,#$1e
04cb: da 1e     movw  $1e,ya
04cd: da 20     movw  $20,ya
04cf: e8 02     mov   a,#$02
04d1: c4 42     mov   $42,a
04d3: c4 44     mov   $44,a
04d5: e8 c0     mov   a,#$c0
04d7: 4e 87 00  tclr1 $0087
04da: 0e 23 00  tset1 $0023
04dd: 0e 86 00  tset1 $0086
04e0: 6f        ret

04e1: e4 4a     mov   a,$4a
04e3: f0 08     beq   $04ed
04e5: 8b 4a     dec   $4a
04e7: ba 4b     movw  ya,$4b
04e9: 7a 46     addw  ya,$46
04eb: da 46     movw  $46,ya
04ed: e4 52     mov   a,$52
04ef: f0 08     beq   $04f9
04f1: 8b 52     dec   $52
04f3: ba 50     movw  ya,$50
04f5: 7a 4e     addw  ya,$4e
04f7: da 4e     movw  $4e,ya
04f9: e4 78     mov   a,$78
04fb: f0 08     beq   $0505
04fd: 8b 78     dec   $78
04ff: ba 79     movw  ya,$79
0501: 7a 75     addw  ya,$75
0503: da 75     movw  $75,ya
0505: e4 77     mov   a,$77
0507: f0 17     beq   $0520
0509: 8b 77     dec   $77
050b: cd 10     mov   x,#$10
050d: f4 63     mov   a,$63+x
050f: 60        clrc
0510: 95 fe 00  adc   a,$00fe+x
0513: d4 63     mov   $63+x,a
0515: f4 64     mov   a,$64+x
0517: 95 ff 00  adc   a,$00ff+x
051a: d4 64     mov   $64+x,a
051c: 1d        dec   x
051d: 1d        dec   x
051e: d0 ed     bne   $050d
0520: 6f        ret

0521: 3f 47 07  call  $0747
0524: 68 c4     cmp   a,#$c4
0526: 90 05     bcc   $052d
0528: 3f 31 07  call  $0731
052b: 2f f4     bra   $0521
052d: fb 26     mov   y,$26+x
052f: d0 0a     bne   $053b
0531: cd 0e     mov   x,#$0e
0533: 9e        div   ya,x
0534: f8 a7     mov   x,$a7
0536: f6 7e 1e  mov   a,$1e7e+y
0539: d4 26     mov   $26+x,a
053b: e4 a6     mov   a,$a6
053d: 68 a8     cmp   a,#$a8
053f: 90 08     bcc   $0549
0541: 68 b6     cmp   a,#$b6
0543: 90 01     bcc   $0546
0545: 6f        ret

0546: 5f f3 05  jmp   $05f3

0549: 8d 00     mov   y,#$00
054b: cd 0e     mov   x,#$0e
054d: 9e        div   ya,x
054e: c4 a6     mov   $a6,a
0550: f8 a7     mov   x,$a7
0552: c8 10     cmp   x,#$10
0554: b0 0b     bcs   $0561
0556: e4 92     mov   a,$92
0558: 24 7c     and   a,$7c
055a: f0 05     beq   $0561
055c: 3f 12 07  call  $0712
055f: 2f 06     bra   $0567
0561: f5 00 f2  mov   a,$f200+x
0564: 60        clrc
0565: 84 a6     adc   a,$a6
0567: 60        clrc
0568: 95 61 f3  adc   a,$f361+x
056b: 80        setc
056c: a8 0a     sbc   a,#$0a
056e: d5 a1 f3  mov   $f3a1+x,a
0571: 3f af 06  call  $06af
0574: e4 b4     mov   a,$b4
0576: d5 e0 f4  mov   $f4e0+x,a         ; P(L) without LFO
0579: e4 b5     mov   a,$b5
057b: d5 e1 f4  mov   $f4e1+x,a         ; P(H) without LFO
057e: c8 10     cmp   x,#$10
0580: b0 05     bcs   $0587
0582: 09 92 24  or    ($24),($92)
0585: 2f 03     bra   $058a
0587: 09 92 25  or    ($25),($92)
058a: f5 51 01  mov   a,$0151+x
058d: f0 05     beq   $0594
058f: 3f 8f 19  call  $198f
0592: e8 00     mov   a,#$00
0594: d5 c0 f4  mov   $f4c0+x,a
0597: d5 c1 f4  mov   $f4c1+x,a
059a: d5 20 f4  mov   $f420+x,a
059d: f5 70 01  mov   a,$0170+x
05a0: f0 05     beq   $05a7
05a2: 3f 0d 1a  call  $1a0d
05a5: e8 00     mov   a,#$00
05a7: d5 60 f4  mov   $f460+x,a
05aa: d5 c0 f3  mov   $f3c0+x,a
05ad: d5 c1 f3  mov   $f3c1+x,a
05b0: d5 a0 f4  mov   $f4a0+x,a
05b3: c8 10     cmp   x,#$10
05b5: b0 1d     bcs   $05d4
05b7: e4 86     mov   a,$86
05b9: 04 87     or    a,$87
05bb: 24 92     and   a,$92
05bd: d0 34     bne   $05f3
05bf: e4 92     mov   a,$92
05c1: 24 60     and   a,$60
05c3: d0 22     bne   $05e7
05c5: e4 92     mov   a,$92
05c7: 24 5c     and   a,$5c
05c9: f0 1c     beq   $05e7
05cb: 24 5e     and   a,$5e
05cd: d0 1b     bne   $05ea
05cf: 09 92 5e  or    ($5e),($92)
05d2: 2f 13     bra   $05e7
05d4: e4 92     mov   a,$92
05d6: 24 61     and   a,$61
05d8: d0 0d     bne   $05e7
05da: e4 92     mov   a,$92
05dc: 24 5d     and   a,$5d
05de: f0 07     beq   $05e7
05e0: 24 5f     and   a,$5f
05e2: d0 06     bne   $05ea
05e4: 09 92 5f  or    ($5f),($92)
05e7: 09 92 22  or    ($22),($92)
05ea: 09 92 d1  or    ($d1),($92)
05ed: 09 92 d2  or    ($d2),($92)
05f0: 3f 82 1b  call  $1b82
05f3: 3f 52 07  call  $0752
05f6: fd        mov   y,a
05f7: e4 92     mov   a,$92
05f9: c8 10     cmp   x,#$10
05fb: b0 21     bcs   $061e
05fd: ad b6     cmp   y,#$b6
05ff: b0 09     bcs   $060a
0601: ad a8     cmp   y,#$a8
0603: 90 0b     bcc   $0610
0605: 0e 5a 00  tset1 $005a
0608: 2f 33     bra   $063d
060a: 4e 5c 00  tclr1 $005c
060d: 4e 60 00  tclr1 $0060
0610: 4e 5a 00  tclr1 $005a
0613: e4 5c     mov   a,$5c
0615: 04 60     or    a,$60
0617: 24 92     and   a,$92
0619: 0e 5a 00  tset1 $005a
061c: 2f 1f     bra   $063d
061e: ad b6     cmp   y,#$b6
0620: b0 09     bcs   $062b
0622: ad a8     cmp   y,#$a8
0624: 90 0b     bcc   $0631
0626: 0e 5b 00  tset1 $005b
0629: 2f 12     bra   $063d
062b: 4e 5d 00  tclr1 $005d
062e: 4e 61 00  tclr1 $0061
0631: 4e 5b 00  tclr1 $005b
0634: e4 5d     mov   a,$5d
0636: 04 61     or    a,$61
0638: 24 92     and   a,$92
063a: 0e 5b 00  tset1 $005b
063d: f5 50 01  mov   a,$0150+x
0640: f0 6c     beq   $06ae
0642: 60        clrc
0643: 95 a1 f3  adc   a,$f3a1+x
0646: d5 a1 f3  mov   $f3a1+x,a
0649: 3f af 06  call  $06af
064c: f5 e1 f4  mov   a,$f4e1+x
064f: fd        mov   y,a
0650: f5 e0 f4  mov   a,$f4e0+x
0653: da 9c     movw  $9c,ya
0655: ba b4     movw  ya,$b4
0657: 80        setc
0658: 9a 9c     subw  ya,$9c
065a: da 9c     movw  $9c,ya
065c: 0d        push  psw
065d: b0 08     bcs   $0667
065f: 58 ff 9c  eor   $9c,#$ff
0662: 58 ff 9d  eor   $9d,#$ff
0665: 3a 9c     incw  $9c
0667: f5 60 f3  mov   a,$f360+x
066a: d0 05     bne   $0671
066c: 8f 00 9e  mov   $9e,#$00
066f: 2f 12     bra   $0683
0671: 5d        mov   x,a
0672: e4 9d     mov   a,$9d
0674: 8d 00     mov   y,#$00
0676: 9e        div   ya,x
0677: c4 9e     mov   $9e,a
0679: e4 9c     mov   a,$9c
067b: 9e        div   ya,x
067c: c4 9d     mov   $9d,a
067e: e8 00     mov   a,#$00
0680: 9e        div   ya,x
0681: c4 9c     mov   $9c,a
0683: 8e        pop   psw
0684: b0 0f     bcs   $0695
0686: 58 ff 9c  eor   $9c,#$ff
0689: 58 ff 9d  eor   $9d,#$ff
068c: 58 ff 9e  eor   $9e,#$ff
068f: 3a 9c     incw  $9c
0691: d0 02     bne   $0695
0693: ab 9e     inc   $9e
0695: f8 a7     mov   x,$a7
0697: e4 9c     mov   a,$9c
0699: d5 a0 f4  mov   $f4a0+x,a
069c: e4 9d     mov   a,$9d
069e: d5 c0 f3  mov   $f3c0+x,a
06a1: e4 9e     mov   a,$9e
06a3: d5 c1 f3  mov   $f3c1+x,a
06a6: e8 00     mov   a,#$00
06a8: d5 50 01  mov   $0150+x,a
06ab: d5 a1 f4  mov   $f4a1+x,a
06ae: 6f        ret

; calculate pitch reg value for note A
06af: cd 0c     mov   x,#$0c
06b1: 8d 00     mov   y,#$00
06b3: 9e        div   ya,x
06b4: f8 a7     mov   x,$a7
06b6: c4 a5     mov   $a5,a             ; octave
06b8: dd        mov   a,y               ; key (0-11)
06b9: 1c        asl   a
06ba: fd        mov   y,a
06bb: f6 38 1e  mov   a,$1e38+y
06be: c4 b6     mov   $b6,a
06c0: f6 39 1e  mov   a,$1e39+y
06c3: c4 b7     mov   $b7,a             ; pitch from pitch table
06c5: fd        mov   y,a
06c6: f5 80 f3  mov   a,$f380+x         ; per-instrument tuning (signed)
06c9: 60        clrc
06ca: 95 a0 f3  adc   a,$f3a0+x         ; add per-voice tuning (signed)
06cd: c4 9c     mov   $9c,a             ; overflow seems to be ignored
06cf: cf        mul   ya
06d0: da b4     movw  $b4,ya
06d2: eb b6     mov   y,$b6
06d4: e4 9c     mov   a,$9c
06d6: cf        mul   ya
06d7: dd        mov   a,y
06d8: 8d 00     mov   y,#$00
06da: 7a b4     addw  ya,$b4
06dc: da b4     movw  $b4,ya            ; pitch * tuning / 256
06de: f5 81 f3  mov   a,$f381+x         ; per-instrument tuning (fration, unsigned)
06e1: f0 08     beq   $06eb
06e3: cf        mul   ya
06e4: dd        mov   a,y
06e5: 8d 00     mov   y,#$00
06e7: 7a b4     addw  ya,$b4            ; ya = pitch * (tuning * (1 + (coarse_tuning / 65536))) / 256
06e9: 2f 02     bra   $06ed
06eb: e4 b4     mov   a,$b4             ; ya = pitch * tuning / 256
06ed: e3 9c 02  bbs7  $9c,$06f2
06f0: 7a b6     addw  ya,$b6            ; ya += pitch if positive tuning
06f2: da b4     movw  $b4,ya            ; save calculated pitch
06f4: e8 04     mov   a,#$04
06f6: eb a5     mov   y,$a5
06f8: 30 0f     bmi   $0709
06fa: f0 0d     beq   $0709
06fc: 64 a5     cmp   a,$a5
06fe: b0 0e     bcs   $070e
; shift left if octave > 4
0700: 0b b4     asl   $b4
0702: 2b b5     rol   $b5
0704: bc        inc   a
0705: 2e a5 f8  cbne  $a5,$0700
0708: 6f        ret
; shift right until octave < 4
0709: 4b b5     lsr   $b5
070b: 6b b4     ror   $b4
070d: 9c        dec   a
070e: 2e a5 f8  cbne  $a5,$0709
0711: 6f        ret

0712: e4 a6     mov   a,$a6
0714: 8d 03     mov   y,#$03
0716: cf        mul   ya
0717: fd        mov   y,a
0718: f5 c0 f2  mov   a,$f2c0+x
071b: d0 06     bne   $0723
071d: f6 22 f1  mov   a,$f122+y
0720: d5 41 f2  mov   $f241+x,a
0723: f6 21 f1  mov   a,$f121+y
0726: c4 a6     mov   $a6,a
0728: f6 20 f1  mov   a,$f120+y
072b: 3f 64 1b  call  $1b64
072e: e4 a6     mov   a,$a6
0730: 6f        ret

; dispatch vcmd (c4-ff)
0731: a8 c4     sbc   a,#$c4
0733: c4 a6     mov   $a6,a
0735: 1c        asl   a
0736: fd        mov   y,a
0737: f6 56 16  mov   a,$1656+y
073a: 2d        push  a
073b: f6 55 16  mov   a,$1655+y
073e: 2d        push  a
073f: eb a6     mov   y,$a6
0741: f6 cd 16  mov   a,$16cd+y
0744: d0 01     bne   $0747
0746: 6f        ret

; read next vcmd byte
0747: e7 02     mov   a,($02+x)
0749: c4 a6     mov   $a6,a
074b: bb 02     inc   $02+x
074d: d0 02     bne   $0751
074f: bb 03     inc   $03+x
0751: 6f        ret

0752: f4 02     mov   a,$02+x
0754: fb 03     mov   y,$03+x
0756: da 94     movw  $94,ya
0758: f4 27     mov   a,$27+x
075a: c4 bb     mov   $bb,a
075c: 8d 00     mov   y,#$00
075e: f7 94     mov   a,($94)+y
0760: 68 c4     cmp   a,#$c4
0762: 90 32     bcc   $0796
0764: 3a 94     incw  $94
0766: 68 eb     cmp   a,#$eb
0768: f0 2c     beq   $0796
076a: 80        setc
076b: a8 c4     sbc   a,#$c4
076d: c4 93     mov   $93,a
076f: 1c        asl   a
0770: fd        mov   y,a
0771: f6 0a 17  mov   a,$170a+y
0774: f0 12     beq   $0788
0776: c4 9c     mov   $9c,a
0778: e8 07     mov   a,#$07
077a: 2d        push  a
077b: e8 5c     mov   a,#$5c
077d: 2d        push  a
077e: e4 9c     mov   a,$9c
0780: 2d        push  a
0781: f6 09 17  mov   a,$1709+y
0784: 2d        push  a
0785: 8d 00     mov   y,#$00
0787: 6f        ret

0788: eb 93     mov   y,$93
078a: f6 cd 16  mov   a,$16cd+y
078d: f0 cd     beq   $075c
078f: fd        mov   y,a
0790: 3a 94     incw  $94
0792: fe fc     dbnz  y,$0790
0794: 2f c8     bra   $075e
0796: 6f        ret

0797: cb f2     mov   $f2,y
0799: c4 f3     mov   $f3,a
079b: 6f        ret

079c: da b8     movw  $b8,ya
079e: e4 86     mov   a,$86
07a0: 04 87     or    a,$87
07a2: 2d        push  a
07a3: 24 b9     and   a,$b9
07a5: c4 b9     mov   $b9,a
07a7: ae        pop   a
07a8: 48 ff     eor   a,#$ff
07aa: 24 53     and   a,$53
07ac: 24 b8     and   a,$b8
07ae: 04 b9     or    a,$b9
07b0: 6f        ret

07b1: 8f 33 f1  mov   $f1,#$33
07b4: 8f 03 f1  mov   $f1,#$03
07b7: 6f        ret

07b8: 40        setp
07b9: f4 11     mov   a,$11+x
07bb: f0 02     beq   $07bf
07bd: 9b 11     dec   $11+x
07bf: f4 31     mov   a,$31+x
07c1: f0 02     beq   $07c5
07c3: 9b 31     dec   $31+x
07c5: 20        clrp
07c6: f5 c0 f2  mov   a,$f2c0+x
07c9: f0 1f     beq   $07ea
07cb: 9c        dec   a
07cc: d5 c0 f2  mov   $f2c0+x,a
07cf: f5 40 f2  mov   a,$f240+x
07d2: 60        clrc
07d3: 95 60 f2  adc   a,$f260+x
07d6: d5 40 f2  mov   $f240+x,a
07d9: f5 41 f2  mov   a,$f241+x
07dc: 95 61 f2  adc   a,$f261+x
07df: 75 41 f2  cmp   a,$f241+x
07e2: d5 41 f2  mov   $f241+x,a
07e5: f0 03     beq   $07ea
07e7: 09 92 d1  or    ($d1),($92)
07ea: f5 c1 f2  mov   a,$f2c1+x
07ed: f0 1f     beq   $080e
07ef: 9c        dec   a
07f0: d5 c1 f2  mov   $f2c1+x,a
07f3: f5 80 f2  mov   a,$f280+x
07f6: 60        clrc
07f7: 95 a0 f2  adc   a,$f2a0+x
07fa: d5 80 f2  mov   $f280+x,a
07fd: f5 81 f2  mov   a,$f281+x
0800: 95 a1 f2  adc   a,$f2a1+x
0803: 75 81 f2  cmp   a,$f281+x
0806: d5 81 f2  mov   $f281+x,a
0809: f0 03     beq   $080e
080b: 09 92 d1  or    ($d1),($92)
080e: f5 a0 f4  mov   a,$f4a0+x
0811: c4 9c     mov   $9c,a
0813: f5 c0 f3  mov   a,$f3c0+x
0816: c4 9d     mov   $9d,a
0818: f5 c1 f3  mov   a,$f3c1+x
081b: c4 9e     mov   $9e,a
081d: ba 9c     movw  ya,$9c
081f: d0 04     bne   $0825
0821: e4 9e     mov   a,$9e
0823: f0 2e     beq   $0853
0825: f5 60 f3  mov   a,$f360+x
0828: 9c        dec   a
0829: d0 09     bne   $0834
082b: d5 c0 f3  mov   $f3c0+x,a
082e: d5 c1 f3  mov   $f3c1+x,a
0831: d5 a0 f4  mov   $f4a0+x,a
0834: d5 60 f3  mov   $f360+x,a
0837: 60        clrc
0838: f5 e0 f4  mov   a,$f4e0+x
083b: fd        mov   y,a
083c: f5 a1 f4  mov   a,$f4a1+x
083f: 7a 9c     addw  ya,$9c
0841: d5 a1 f4  mov   $f4a1+x,a
0844: dd        mov   a,y
0845: d5 e0 f4  mov   $f4e0+x,a
0848: e4 9e     mov   a,$9e
084a: 95 e1 f4  adc   a,$f4e1+x
084d: d5 e1 f4  mov   $f4e1+x,a
0850: 09 92 d2  or    ($d2),($92)
0853: f5 71 01  mov   a,$0171+x
0856: d0 01     bne   $0859
0858: 6f        ret

0859: f5 e0 f3  mov   a,$f3e0+x
085c: c4 9c     mov   $9c,a
085e: f5 e1 f3  mov   a,$f3e1+x
0861: c4 9d     mov   $9d,a
0863: f5 81 f4  mov   a,$f481+x
0866: fd        mov   y,a
0867: c4 9e     mov   $9e,a
0869: f5 80 f4  mov   a,$f480+x
086c: 7a 9c     addw  ya,$9c
086e: d5 80 f4  mov   $f480+x,a
0871: dd        mov   a,y
0872: 75 81 f4  cmp   a,$f481+x
0875: d5 81 f4  mov   $f481+x,a
0878: f0 03     beq   $087d
087a: 09 92 d1  or    ($d1),($92)
087d: f5 41 f3  mov   a,$f341+x
0880: 9c        dec   a
0881: d0 15     bne   $0898
0883: 58 ff 9c  eor   $9c,#$ff
0886: 58 ff 9d  eor   $9d,#$ff
0889: 3a 9c     incw  $9c
088b: e4 9c     mov   a,$9c
088d: d5 e0 f3  mov   $f3e0+x,a
0890: e4 9d     mov   a,$9d
0892: d5 e1 f3  mov   $f3e1+x,a
0895: f5 40 f3  mov   a,$f340+x
0898: d5 41 f3  mov   $f341+x,a
089b: 6f        ret

089c: e4 f4     mov   a,$f4
089e: f0 3c     beq   $08dc
08a0: 64 f4     cmp   a,$f4
08a2: d0 f8     bne   $089c
08a4: 68 fe     cmp   a,#$fe
08a6: f0 34     beq   $08dc
08a8: 68 10     cmp   a,#$10
08aa: 90 04     bcc   $08b0
08ac: 68 18     cmp   a,#$18
08ae: 90 2c     bcc   $08dc
08b0: 4d        push  x
08b1: f8 d8     mov   x,$d8
08b3: d5 6c f1  mov   $f16c+x,a
08b6: fd        mov   y,a
08b7: e4 f5     mov   a,$f5
08b9: d5 6d f1  mov   $f16d+x,a
08bc: c4 f5     mov   $f5,a
08be: e4 f6     mov   a,$f6
08c0: d5 6e f1  mov   $f16e+x,a
08c3: c4 f6     mov   $f6,a
08c5: e4 f7     mov   a,$f7
08c7: d5 6f f1  mov   $f16f+x,a
08ca: c4 f7     mov   $f7,a
08cc: 7d        mov   a,x
08cd: 60        clrc
08ce: 88 04     adc   a,#$04
08d0: 68 40     cmp   a,#$40
08d2: b0 02     bcs   $08d6
08d4: c4 d8     mov   $d8,a
08d6: ce        pop   x
08d7: 3f b1 07  call  $07b1
08da: cb f4     mov   $f4,y
08dc: 6f        ret

08dd: cd 00     mov   x,#$00
08df: f5 6c f1  mov   a,$f16c+x
08e2: f0 1e     beq   $0902
08e4: c4 8e     mov   $8e,a
08e6: f5 6d f1  mov   a,$f16d+x
08e9: c4 8f     mov   $8f,a
08eb: f5 6e f1  mov   a,$f16e+x
08ee: c4 90     mov   $90,a
08f0: f5 6f f1  mov   a,$f16f+x
08f3: c4 91     mov   $91,a
08f5: 4d        push  x
08f6: 3f b6 0b  call  $0bb6
08f9: ae        pop   a
08fa: 60        clrc
08fb: 88 04     adc   a,#$04
08fd: 5d        mov   x,a
08fe: c8 40     cmp   x,#$40
0900: d0 dd     bne   $08df
0902: 7d        mov   a,x
0903: f0 0b     beq   $0910
0905: e8 00     mov   a,#$00
0907: d5 68 f1  mov   $f168+x,a
090a: 1d        dec   x
090b: 1d        dec   x
090c: 1d        dec   x
090d: 1d        dec   x
090e: d0 f7     bne   $0907
0910: c4 d8     mov   $d8,a
0912: 6f        ret

0913: f5 51 01  mov   a,$0151+x
0916: f0 63     beq   $097b
0918: c4 a6     mov   $a6,a
091a: c8 10     cmp   x,#$10
091c: b0 05     bcs   $0923
091e: f5 11 01  mov   a,$0111+x
0921: d0 58     bne   $097b
0923: f5 e1 f2  mov   a,$f2e1+x
0926: 9c        dec   a
0927: d0 4f     bne   $0978
0929: f5 00 f4  mov   a,$f400+x
092c: c4 b4     mov   $b4,a
092e: f5 20 f4  mov   a,$f420+x
0931: c4 b5     mov   $b5,a
0933: f5 21 f2  mov   a,$f221+x
0936: 28 07     and   a,#$07
0938: c4 b6     mov   $b6,a
093a: 3f 85 0a  call  $0a85
093d: f8 a7     mov   x,$a7
093f: d5 20 f4  mov   $f420+x,a
0942: c4 b4     mov   $b4,a
0944: f5 21 f2  mov   a,$f221+x
0947: 28 70     and   a,#$70
0949: 04 b6     or    a,$b6
094b: d5 21 f2  mov   $f221+x,a
094e: f5 01 f3  mov   a,$f301+x
0951: fd        mov   y,a
0952: f5 00 f3  mov   a,$f300+x
0955: da 9c     movw  $9c,ya
0957: e4 b4     mov   a,$b4
0959: cf        mul   ya
095a: da 9e     movw  $9e,ya
095c: eb 9c     mov   y,$9c
095e: e4 b4     mov   a,$b4
0960: cf        mul   ya
0961: dd        mov   a,y
0962: 8d 00     mov   y,#$00
0964: 7a 9e     addw  ya,$9e
0966: f3 b4 02  bbc7  $b4,$096b
0969: 9a 9c     subw  ya,$9c
096b: d5 c0 f4  mov   $f4c0+x,a
096e: dd        mov   a,y
096f: d5 c1 f4  mov   $f4c1+x,a
0972: 09 92 d2  or    ($d2),($92)
0975: f5 e0 f2  mov   a,$f2e0+x
0978: d5 e1 f2  mov   $f2e1+x,a
097b: f5 70 01  mov   a,$0170+x
097e: f0 3e     beq   $09be
0980: c4 a6     mov   $a6,a
0982: f5 31 01  mov   a,$0131+x
0985: d0 37     bne   $09be
0987: f5 21 f3  mov   a,$f321+x
098a: 9c        dec   a
098b: d0 2e     bne   $09bb
098d: f5 40 f4  mov   a,$f440+x
0990: c4 b4     mov   $b4,a
0992: f5 60 f4  mov   a,$f460+x
0995: c4 b5     mov   $b5,a
0997: f5 21 f2  mov   a,$f221+x
099a: 28 70     and   a,#$70
099c: 9f        xcn   a
099d: c4 b6     mov   $b6,a
099f: 3f 85 0a  call  $0a85
09a2: f8 a7     mov   x,$a7
09a4: d5 60 f4  mov   $f460+x,a
09a7: c4 b4     mov   $b4,a
09a9: f5 21 f2  mov   a,$f221+x
09ac: 28 07     and   a,#$07
09ae: 9f        xcn   a
09af: 04 b6     or    a,$b6
09b1: 9f        xcn   a
09b2: d5 21 f2  mov   $f221+x,a
09b5: 09 92 d1  or    ($d1),($92)
09b8: f5 20 f3  mov   a,$f320+x
09bb: d5 21 f3  mov   $f321+x,a
09be: ba d1     movw  ya,$d1
09c0: d0 01     bne   $09c3
09c2: 6f        ret

09c3: 7d        mov   a,x
09c4: 28 0f     and   a,#$0f
09c6: c4 9c     mov   $9c,a
09c8: 9f        xcn   a
09c9: 5c        lsr   a
09ca: c4 9d     mov   $9d,a
09cc: e4 92     mov   a,$92
09ce: 24 d1     and   a,$d1
09d0: f0 66     beq   $0a38
09d2: b2 88     clr5  $88
09d4: 8f 80 9e  mov   $9e,#$80
09d7: 03 88 0e  bbs0  $88,$09e8
09da: f5 81 f2  mov   a,$f281+x         ; panpot
09dd: fd        mov   y,a
09de: f5 81 f4  mov   a,$f481+x
09e1: 3f 22 14  call  $1422
09e4: 48 ff     eor   a,#$ff
09e6: c4 9e     mov   $9e,a
09e8: f5 41 f2  mov   a,$f241+x         ; channel volume
09eb: fd        mov   y,a
09ec: c4 9f     mov   $9f,a
09ee: f5 60 f4  mov   a,$f460+x         ; tremolo
09f1: f0 0c     beq   $09ff
09f3: 1c        asl   a
09f4: cf        mul   ya
09f5: b0 08     bcs   $09ff
09f7: dd        mov   a,y
09f8: 84 9f     adc   a,$9f
09fa: 10 02     bpl   $09fe
09fc: e8 7f     mov   a,#$7f
09fe: fd        mov   y,a
09ff: e4 a9     mov   a,$a9             ; master volume
0a01: cf        mul   ya
0a02: c8 10     cmp   x,#$10
0a04: b0 11     bcs   $0a17
0a06: e4 92     mov   a,$92
0a08: 24 a8     and   a,$a8             ; channel mask
0a0a: f0 04     beq   $0a10
0a0c: 8d 00     mov   y,#$00
0a0e: 2f 07     bra   $0a17
0a10: f5 20 f2  mov   a,$f220+x         ; expression
0a13: cf        mul   ya
0a14: e4 4d     mov   a,$4d             ; master volume
0a16: cf        mul   ya
0a17: cb 9f     mov   $9f,y
0a19: e4 9e     mov   a,$9e
0a1b: cf        mul   ya
0a1c: dd        mov   a,y
0a1d: eb 9c     mov   y,$9c
0a1f: d6 bf 00  mov   $00bf+y,a
0a22: eb 9d     mov   y,$9d
0a24: cb f2     mov   $f2,y
0a26: c4 f3     mov   $f3,a             ; VOL(L)/VOL(R)
0a28: ea 9c 00  not1  $009c,0
0a2b: ab 9d     inc   $9d
0a2d: 23 9d 08  bbs1  $9d,$0a38
0a30: e4 9e     mov   a,$9e
0a32: 48 ff     eor   a,#$ff
0a34: eb 9f     mov   y,$9f
0a36: 2f e3     bra   $0a1b
; final pitch calculation
0a38: e4 92     mov   a,$92
0a3a: 24 d2     and   a,$d2
0a3c: f0 46     beq   $0a84
0a3e: 22 9d     set1  $9d
0a40: f5 e0 f4  mov   a,$f4e0+x         ; P(L)
0a43: 60        clrc
0a44: 95 c0 f4  adc   a,$f4c0+x         ; P(L) LFO
0a47: c4 9e     mov   $9e,a
0a49: f5 e1 f4  mov   a,$f4e1+x         ; P(H)
0a4c: 95 c1 f4  adc   a,$f4c1+x         ; P(H) LFO
0a4f: c4 9f     mov   $9f,a             ; $9e/f = pitch
0a51: c8 10     cmp   x,#$10
0a53: 90 04     bcc   $0a59
0a55: ba 9e     movw  ya,$9e
0a57: 2f 1c     bra   $0a75
; process global tuning $b0 (signed, 128 = x1.0)
0a59: eb b0     mov   y,$b0
0a5b: cf        mul   ya
0a5c: da a0     movw  $a0,ya
0a5e: eb b0     mov   y,$b0
0a60: e4 9e     mov   a,$9e
0a62: cf        mul   ya
0a63: dd        mov   a,y
0a64: 8d 00     mov   y,#$00
0a66: 7a a0     addw  ya,$a0
0a68: e3 b0 0a  bbs7  $b0,$0a75
0a6b: 1c        asl   a
0a6c: c4 a2     mov   $a2,a
0a6e: dd        mov   a,y
0a6f: 3c        rol   a
0a70: fd        mov   y,a
0a71: e4 a2     mov   a,$a2
0a73: 7a 9e     addw  ya,$9e
; coup de grace
0a75: d8 9c     mov   $9c,x
0a77: f8 9d     mov   x,$9d
0a79: d8 f2     mov   $f2,x
0a7b: c4 f3     mov   $f3,a             ; P(L)
0a7d: 3d        inc   x
0a7e: d8 f2     mov   $f2,x
0a80: cb f3     mov   $f3,y             ; P(R)
0a82: f8 9c     mov   x,$9c
0a84: 6f        ret

0a85: e4 b6     mov   a,$b6
0a87: f0 02     beq   $0a8b
0a89: 8b b6     dec   $b6
0a8b: 1c        asl   a
0a8c: 5d        mov   x,a
0a8d: 78 c0 a6  cmp   $a6,#$c0
0a90: b0 0b     bcs   $0a9d
0a92: 78 80 a6  cmp   $a6,#$80
0a95: b0 03     bcs   $0a9a
0a97: 1f a0 0a  jmp   ($0aa0+x)

0a9a: 1f b0 0a  jmp   ($0ab0+x)

0a9d: 1f c0 0a  jmp   ($0ac0+x)

0aa0: dw $0b23
0aa2: dw $0b20
0aa4: dw $0b1d
0aa6: dw $0ad9
0aa8: dw $0b1d
0aaa: dw $0ad5
0aac: dw $0b1d
0aae: dw $0ad0
0ab0: dw $0b23
0ab2: dw $0b20
0ab4: dw $0b1d
0ab6: dw $0aef
0ab8: dw $0b1d
0aba: dw $0aea
0abd: dw $0b1d
0abe: dw $0ae3
0ac0: dw $0b0e
0ac2: dw $0b20
0ac4: dw $0b0e
0ac6: dw $0b04
0ac8: dw $0b0e
0aca: dw $0b00
0acc: dw $0b0e
0ace: dw $0afb

0ad0: e4 b4     mov   a,$b4
0ad2: 5c        lsr   a
0ad3: 5c        lsr   a
0ad4: 6f        ret

0ad5: e4 b4     mov   a,$b4
0ad7: 5c        lsr   a
0ad8: 6f        ret

0ad9: e4 b4     mov   a,$b4
0adb: 5c        lsr   a
0adc: c4 b7     mov   $b7,a
0ade: 5c        lsr   a
0adf: 60        clrc
0ae0: 84 b7     adc   a,$b7
0ae2: 6f        ret

0ae3: e4 b4     mov   a,$b4
0ae5: 5c        lsr   a
0ae6: 5c        lsr   a
0ae7: 08 c0     or    a,#$c0
0ae9: 6f        ret

0aea: e4 b4     mov   a,$b4
0aec: 80        setc
0aed: 7c        ror   a
0aee: 6f        ret

0aef: e4 b4     mov   a,$b4
0af1: 80        setc
0af2: 7c        ror   a
0af3: c4 b7     mov   $b7,a
0af5: 80        setc
0af6: 7c        ror   a
0af7: 60        clrc
0af8: 84 b7     adc   a,$b7
0afa: 6f        ret

0afb: e4 b4     mov   a,$b4
0afd: 5c        lsr   a
0afe: 5c        lsr   a
0aff: 6f        ret

0b00: e4 b4     mov   a,$b4
0b02: 5c        lsr   a
0b03: 6f        ret

0b04: e4 b4     mov   a,$b4
0b06: 5c        lsr   a
0b07: c4 b7     mov   $b7,a
0b09: 5c        lsr   a
0b0a: 60        clrc
0b0b: 84 b7     adc   a,$b7
0b0d: 6f        ret

0b0e: 7d        mov   a,x
0b0f: f0 04     beq   $0b15
0b11: e4 b5     mov   a,$b5
0b13: 2f 05     bra   $0b1a
0b15: e4 b4     mov   a,$b4
0b17: e3 b5 02  bbs7  $b5,$0b1c
0b1a: 48 ff     eor   a,#$ff
0b1c: 6f        ret

0b1d: e8 00     mov   a,#$00
0b1f: 6f        ret

0b20: e4 b4     mov   a,$b4
0b22: 6f        ret

0b23: e4 b5     mov   a,$b5
0b25: f0 f9     beq   $0b20
0b27: 2f f4     bra   $0b1d
0b29: e4 d9     mov   a,$d9
0b2b: 68 23     cmp   a,#$23
0b2d: d0 0a     bne   $0b39
0b2f: e8 70     mov   a,#$70
0b31: 45 98 1e  eor   a,$1e98
0b34: c5 98 1e  mov   $1e98,a
0b37: e4 d9     mov   a,$d9
0b39: 5c        lsr   a
0b3a: fd        mov   y,a
0b3b: e8 70     mov   a,#$70
0b3d: 90 01     bcc   $0b40
0b3f: 9f        xcn   a
0b40: 56 97 1e  eor   a,$1e97+y
0b43: d6 97 1e  mov   $1e97+y,a
0b46: e4 d9     mov   a,$d9
0b48: bc        inc   a
0b49: 68 24     cmp   a,#$24
0b4b: f0 0e     beq   $0b5b
0b4d: 2d        push  a
0b4e: 5c        lsr   a
0b4f: 8d 00     mov   y,#$00
0b51: cd 09     mov   x,#$09
0b53: 9e        div   ya,x
0b54: dd        mov   a,y
0b55: ae        pop   a
0b56: d0 05     bne   $0b5d
0b58: bc        inc   a
0b59: bc        inc   a
0b5a: ec e8 03  mov   y,$03e8
0b5d: c4 d9     mov   $d9,a
0b5f: 0b dd     asl   $dd
0b61: e4 dd     mov   a,$dd
0b63: 28 48     and   a,#$48
0b65: f0 38     beq   $0b9f
0b67: 02 dd     set0  $dd
0b69: e4 db     mov   a,$db
0b6b: 68 23     cmp   a,#$23
0b6d: d0 0a     bne   $0b79
0b6f: e8 70     mov   a,#$70
0b71: 45 c5 1e  eor   a,$1ec5
0b74: c5 c5 1e  mov   $1ec5,a
0b77: e4 db     mov   a,$db
0b79: 5c        lsr   a
0b7a: fd        mov   y,a
0b7b: e8 70     mov   a,#$70
0b7d: 90 01     bcc   $0b80
0b7f: 9f        xcn   a
0b80: 56 c4 1e  eor   a,$1ec4+y
0b83: d6 c4 1e  mov   $1ec4+y,a
0b86: e4 db     mov   a,$db
0b88: bc        inc   a
0b89: 68 24     cmp   a,#$24
0b8b: f0 0e     beq   $0b9b
0b8d: 2d        push  a
0b8e: 5c        lsr   a
0b8f: 8d 00     mov   y,#$00
0b91: cd 09     mov   x,#$09
0b93: 9e        div   ya,x
0b94: dd        mov   a,y
0b95: ae        pop   a
0b96: d0 05     bne   $0b9d
0b98: bc        inc   a
0b99: bc        inc   a
0b9a: ec e8 03  mov   y,$03e8
0b9d: c4 db     mov   $db,a
0b9f: 6f        ret

0ba0: f8 f4     mov   x,$f4
0ba2: d0 03     bne   $0ba7
0ba4: 6f        ret

0ba5: f8 f4     mov   x,$f4
0ba7: 3e f4     cmp   x,$f4
0ba9: d0 fa     bne   $0ba5
0bab: ba f6     movw  ya,$f6
0bad: da 90     movw  $90,ya
0baf: ba f4     movw  ya,$f4
0bb1: da 8e     movw  $8e,ya
0bb3: 3f b1 07  call  $07b1
0bb6: f8 8e     mov   x,$8e
0bb8: 7d        mov   a,x
0bb9: 10 0b     bpl   $0bc6
0bbb: ba 90     movw  ya,$90
0bbd: da f6     movw  $f6,ya
0bbf: ba 8e     movw  ya,$8e
0bc1: da f4     movw  $f4,ya
0bc3: 5f db 0e  jmp   $0edb

0bc6: 28 0f     and   a,#$0f
0bc8: 1c        asl   a
0bc9: fd        mov   y,a
0bca: c8 10     cmp   x,#$10
0bcc: 90 21     bcc   $0bef
0bce: c8 18     cmp   x,#$18
0bd0: b0 11     bcs   $0be3
0bd2: f6 82 17  mov   a,$1782+y
0bd5: 2d        push  a
0bd6: f6 81 17  mov   a,$1781+y
0bd9: 2d        push  a
0bda: f6 a2 17  mov   a,$17a2+y
0bdd: 2d        push  a
0bde: f6 a1 17  mov   a,$17a1+y
0be1: 2d        push  a
0be2: 6f        ret

0be3: c8 20     cmp   x,#$20
0be5: b0 08     bcs   $0bef
0be7: f6 82 17  mov   a,$1782+y
0bea: 2d        push  a
0beb: f6 81 17  mov   a,$1781+y
0bee: 2d        push  a
0bef: ba 90     movw  ya,$90
0bf1: da f6     movw  $f6,ya
0bf3: ba 8e     movw  ya,$8e
0bf5: da f4     movw  $f4,ya
0bf7: 6f        ret

0bf8: 3f e6 14  call  $14e6
0bfb: 8f 10 ba  mov   $ba,#$10
0bfe: 2f 06     bra   $0c06
0c00: 3f e6 14  call  $14e6
0c03: 8f 20 ba  mov   $ba,#$20
0c06: e8 ff     mov   a,#$ff
0c08: 8d 5c     mov   y,#$5c
0c0a: 3f 97 07  call  $0797             ; KOF
0c0d: fa 8f bd  mov   ($bd),($8f)
0c10: e4 90     mov   a,$90
0c12: c4 4d     mov   $4d,a
0c14: e4 91     mov   a,$91
0c16: 28 0f     and   a,#$0f
0c18: 64 81     cmp   a,$81
0c1a: f0 08     beq   $0c24
0c1c: c4 81     mov   $81,a
0c1e: 18 03 89  or    $89,#$03
0c21: 3f 53 14  call  $1453
0c24: ec 64 f1  mov   y,$f164
0c27: f0 24     beq   $0c4d
0c29: 6d        push  y
0c2a: e5 68 f1  mov   a,$f168
0c2d: cf        mul   ya
0c2e: da 9c     movw  $9c,ya
0c30: ee        pop   y
0c31: e5 69 f1  mov   a,$f169
0c34: cf        mul   ya
0c35: fd        mov   y,a
0c36: e8 00     mov   a,#$00
0c38: 7a 9c     addw  ya,$9c
0c3a: da 9c     movw  $9c,ya
0c3c: e5 60 f1  mov   a,$f160
0c3f: ec 61 f1  mov   y,$f161
0c42: 7a 9c     addw  ya,$9c
0c44: dd        mov   a,y
0c45: d0 06     bne   $0c4d
0c47: c5 64 f1  mov   $f164,a
0c4a: c5 61 f1  mov   $f161,a
0c4d: e8 00     mov   a,#$00
0c4f: fd        mov   y,a
0c50: da 86     movw  $86,ya
0c52: c4 25     mov   $25,a
0c54: c5 f0 f1  mov   $f1f0,a
0c57: c5 c1 20  mov   $20c1,a
0c5a: da d3     movw  $d3,ya
0c5c: c4 d2     mov   $d2,a
0c5e: 3f fd 10  call  $10fd
0c61: b2 89     clr5  $89
0c63: 52 88     clr2  $88
0c65: 69 bd bc  cmp   ($bc),($bd)
0c68: d0 40     bne   $0caa
0c6a: 3f 22 15  call  $1522
0c6d: e4 53     mov   a,$53
0c6f: f0 39     beq   $0caa
0c71: 38 e0 8d  and   $8d,#$e0
0c74: 09 62 8d  or    ($8d),($62)
0c77: cd 00     mov   x,#$00
0c79: 8f 01 92  mov   $92,#$01
0c7c: bb 26     inc   $26+x
0c7e: d8 a7     mov   $a7,x
0c80: 3f 82 1b  call  $1b82
0c83: 7d        mov   a,x
0c84: 9f        xcn   a
0c85: 5c        lsr   a
0c86: fd        mov   y,a
0c87: e8 00     mov   a,#$00
0c89: 3f 97 07  call  $0797             ; VOL(L)
0c8c: fc        inc   y
0c8d: 3f 97 07  call  $0797             ; VOL(R)
0c90: fc        inc   y
0c91: cb 9d     mov   $9d,y
0c93: 3f 40 0a  call  $0a40
0c96: 3d        inc   x
0c97: 3d        inc   x
0c98: 0b 92     asl   $92
0c9a: d0 e0     bne   $0c7c
0c9c: e8 00     mov   a,#$00
0c9e: fa 24 22  mov   ($22),($24)
0ca1: c4 23     mov   $23,a
0ca3: c4 25     mov   $25,a
0ca5: fa 53 d1  mov   ($d1),($53)
0ca8: 2f 03     bra   $0cad
0caa: 3f 32 0d  call  $0d32
0cad: 13 89 15  bbc0  $89,$0cc5
0cb0: 33 89 0b  bbc1  $89,$0cbe
0cb3: cd 82     mov   x,#$82
0cb5: 3f 36 14  call  $1436
0cb8: 8f 00 83  mov   $83,#$00
0cbb: 3f d4 14  call  $14d4
0cbe: cd 81     mov   x,#$81
0cc0: 3f 36 14  call  $1436
0cc3: 12 89     clr0  $89
0cc5: fa 54 8a  mov   ($8a),($54)
0cc8: fa 56 8b  mov   ($8b),($56)
0ccb: fa 58 8c  mov   ($8c),($58)
0cce: cd ff     mov   x,#$ff
0cd0: bd        mov   sp,x
0cd1: e4 fd     mov   a,$fd
0cd3: 5f d3 02  jmp   $02d3

0cd6: 7d        mov   a,x
0cd7: 1c        asl   a
0cd8: d4 27     mov   $27+x,a
0cda: e8 00     mov   a,#$00
0cdc: d5 c0 f2  mov   $f2c0+x,a
0cdf: d5 c1 f2  mov   $f2c1+x,a
0ce2: d5 50 01  mov   $0150+x,a
0ce5: d5 51 01  mov   $0151+x,a
0ce8: d5 70 01  mov   $0170+x,a
0ceb: d5 71 01  mov   $0171+x,a
0cee: d5 80 f4  mov   $f480+x,a
0cf1: d5 81 f4  mov   $f481+x,a
0cf4: d5 a0 f3  mov   $f3a0+x,a
0cf7: d5 61 f3  mov   $f361+x,a
0cfa: d5 00 f3  mov   $f300+x,a
0cfd: bc        inc   a
0cfe: d4 26     mov   $26+x,a
0d00: e8 10     mov   a,#$10
0d02: d5 01 f3  mov   $f301+x,a
0d05: 6f        ret

0d06: e4 8f     mov   a,$8f
0d08: 64 80     cmp   a,$80
0d0a: c4 80     mov   $80,a
0d0c: f0 05     beq   $0d13
0d0e: c4 f5     mov   $f5,a
0d10: d8 f4     mov   $f4,x
0d12: 6f        ret

0d13: ae        pop   a
0d14: ae        pop   a
0d15: e8 ff     mov   a,#$ff
0d17: c4 f5     mov   $f5,a
0d19: d8 f4     mov   $f4,x
0d1b: e4 f4     mov   a,$f4
0d1d: f0 fc     beq   $0d1b
0d1f: e4 53     mov   a,$53
0d21: f0 03     beq   $0d26
0d23: 5f b1 07  jmp   $07b1

0d26: 3f b1 07  call  $07b1
0d29: 3f 32 0d  call  $0d32
0d2c: 8f ff 23  mov   $23,#$ff
0d2f: 52 88     clr2  $88
0d31: 6f        ret

0d32: e8 00     mov   a,#$00
0d34: fd        mov   y,a
0d35: c4 53     mov   $53,a
0d37: da 86     movw  $86,ya
0d39: c4 54     mov   $54,a
0d3b: c4 56     mov   $56,a
0d3d: c4 58     mov   $58,a
0d3f: c4 22     mov   $22,a
0d41: c4 23     mov   $23,a
0d43: c4 24     mov   $24,a
0d45: c4 5a     mov   $5a,a
0d47: c4 5c     mov   $5c,a
0d49: c4 60     mov   $60,a
0d4b: c4 7c     mov   $7c,a
0d4d: c4 7b     mov   $7b,a
0d4f: c4 d1     mov   $d1,a
0d51: 8f 01 47  mov   $47,#$01
0d54: 8f ff 48  mov   $48,#$ff
0d57: eb ba     mov   y,$ba             ; usually #$10, sometimes #$20
0d59: cd 10     mov   x,#$10
0d5b: f6 03 22  mov   a,$2203+y
0d5e: d4 01     mov   $01+x,a           ; read 16 bytes from $2204+y to $02 (score location)
0d60: dc        dec   y
0d61: 1d        dec   x
0d62: d0 f7     bne   $0d5b
0d64: e5 00 22  mov   a,$2200           ; $2200 - header start address
0d67: c4 00     mov   $00,a
0d69: e5 01 22  mov   a,$2201
0d6c: c4 01     mov   $01,a             ; header 00/1 - ROM address base
0d6e: e8 24     mov   a,#$24
0d70: 8d 22     mov   y,#$22            ; $2224 - ARAM address base
0d72: 9a 00     subw  ya,$00
0d74: da 00     movw  $00,ya            ; $00/1 - offset from ROM to ARAM address
0d76: cd 0e     mov   x,#$0e            ; read from last, 8 channels
0d78: 8f 80 92  mov   $92,#$80          ; channel bit flag
0d7b: e5 02 22  mov   a,$2202
0d7e: ec 03 22  mov   y,$2203           ; header 02/3 - song end address (start address + size)
0d81: da 9c     movw  $9c,ya            ; set song end address to $9c/d
0d83: f4 02     mov   a,$02+x
0d85: fb 03     mov   y,$03+x
0d87: 5a 9c     cmpw  ya,$9c            ; channel address
0d89: f0 11     beq   $0d9c             ; when it points the song end, channel is not used
0d8b: 09 92 53  or    ($53),($92)
0d8e: 7a 00     addw  ya,$00
0d90: d4 02     mov   $02+x,a
0d92: db 03     mov   $03+x,y           ; convert ROM address to ARAM address
0d94: 3f d6 0c  call  $0cd6
0d97: e8 ff     mov   a,#$ff
0d99: d5 20 f2  mov   $f220+x,a
0d9c: 1d        dec   x
0d9d: 1d        dec   x
0d9e: 4b 92     lsr   $92
0da0: d0 e1     bne   $0d83
0da2: 6f        ret

0da3: cd 1e     mov   x,#$1e
0da5: e8 80     mov   a,#$80
0da7: 8d c0     mov   y,#$c0
0da9: 2f 16     bra   $0dc1
;
0dab: cd 1a     mov   x,#$1a
0dad: e8 20     mov   a,#$20
0daf: 8d 30     mov   y,#$30
0db1: 2f 0e     bra   $0dc1
;
0db3: cd 16     mov   x,#$16
0db5: e8 08     mov   a,#$08
0db7: 8d 0c     mov   y,#$0c
0db9: 2f 06     bra   $0dc1
;
0dbb: cd 12     mov   x,#$12
0dbd: e8 02     mov   a,#$02
0dbf: 8d 03     mov   y,#$03
0dc1: 93 88 01  bbc4  $88,$0dc5
0dc4: 6f        ret

0dc5: c4 92     mov   $92,a
0dc7: cb 91     mov   $91,y
0dc9: fa 8f 94  mov   ($94),($8f)
0dcc: 8f 00 95  mov   $95,#$00
0dcf: 0b 94     asl   $94
0dd1: 2b 95     rol   $95
0dd3: 0b 94     asl   $94
0dd5: 2b 95     rol   $95
0dd7: e8 00     mov   a,#$00
0dd9: 8d 31     mov   y,#$31
0ddb: 7a 94     addw  ya,$94
0ddd: da 94     movw  $94,ya            ; $3100 + ($8f) * 4
0ddf: 8d 03     mov   y,#$03
0de1: 8f 00 a5  mov   $a5,#$00
0de4: f7 94     mov   a,($94)+y
0de6: f0 32     beq   $0e1a
0de8: d4 03     mov   $03+x,a
0dea: dc        dec   y
0deb: f7 94     mov   a,($94)+y
0ded: d4 02     mov   $02+x,a
0def: 09 92 a5  or    ($a5),($92)
0df2: 3f d6 0c  call  $0cd6
0df5: bb 26     inc   $26+x
0df7: e8 46     mov   a,#$46
0df9: d5 41 f2  mov   $f241+x,a
0dfc: e4 90     mov   a,$90
0dfe: d5 81 f2  mov   $f281+x,a
0e01: e8 48     mov   a,#$48
0e03: d5 00 f2  mov   $f200+x,a
0e06: e8 00     mov   a,#$00
0e08: d5 c0 f2  mov   $f2c0+x,a
0e0b: d5 c1 f2  mov   $f2c1+x,a
0e0e: 6d        push  y
0e0f: e8 02     mov   a,#$02
0e11: 3f 64 1b  call  $1b64
0e14: ee        pop   y
0e15: 1d        dec   x
0e16: 1d        dec   x
0e17: 4b 92     lsr   $92
0e19: e8 dc     mov   a,#$dc
0e1b: dc        dec   y
0e1c: 10 c6     bpl   $0de4
0e1e: e4 91     mov   a,$91
0e20: 4e 87 00  tclr1 $0087
0e23: 24 86     and   a,$86
0e25: 04 a5     or    a,$a5
0e27: 4e 22 00  tclr1 $0022
0e2a: 4e 5b 00  tclr1 $005b
0e2d: 4e 5d 00  tclr1 $005d
0e30: 4e 61 00  tclr1 $0061
0e33: 4e d1 00  tclr1 $00d1
0e36: 4e d2 00  tclr1 $00d2
0e39: 0e 23 00  tset1 $0023
0e3c: 4e 25 00  tclr1 $0025
0e3f: c4 a6     mov   $a6,a
0e41: cd 1e     mov   x,#$1e
0e43: 8f 80 92  mov   $92,#$80
0e46: 2f 07     bra   $0e4f
0e48: 3f 1c 1e  call  $1e1c
0e4b: 1d        dec   x
0e4c: 1d        dec   x
0e4d: 4b 92     lsr   $92
0e4f: 0b a6     asl   $a6
0e51: b0 f5     bcs   $0e48
0e53: d0 f6     bne   $0e4b
0e55: e4 a5     mov   a,$a5
0e57: 0e 86 00  tset1 $0086
0e5a: 4e 8a 00  tclr1 $008a
0e5d: 4e 8c 00  tclr1 $008c
0e60: 4e 8b 00  tclr1 $008b
0e63: 4e 24 00  tclr1 $0024
0e66: 6f        ret

0e67: e8 00     mov   a,#$00
0e69: 2f 02     bra   $0e6d
0e6b: e8 c0     mov   a,#$c0
0e6d: c5 f5 f1  mov   $f1f5,a
0e70: e5 f0 f1  mov   a,$f1f0
0e73: f0 47     beq   $0ebc
0e75: 8f 40 92  mov   $92,#$40
0e78: cd 1c     mov   x,#$1c
0e7a: d8 a7     mov   $a7,x
0e7c: 3f 1c 1e  call  $1e1c
0e7f: 0b 92     asl   $92
0e81: cd 1e     mov   x,#$1e
0e83: d8 a7     mov   $a7,x
0e85: 3f 1c 1e  call  $1e1c
0e88: e8 c0     mov   a,#$c0
0e8a: 0e 86 00  tset1 $0086
0e8d: 4e 87 00  tclr1 $0087
0e90: 4e 8a 00  tclr1 $008a
0e93: 4e 8c 00  tclr1 $008c
0e96: 4e 8b 00  tclr1 $008b
0e99: 0e 23 00  tset1 $0023
0e9c: 4e 22 00  tclr1 $0022
0e9f: 4e 24 00  tclr1 $0024
0ea2: 4e 25 00  tclr1 $0025
0ea5: e4 8f     mov   a,$8f
0ea7: c5 f4 f1  mov   $f1f4,a
0eaa: e8 8d     mov   a,#$8d
0eac: 8d 1e     mov   y,#$1e
0eae: da 1e     movw  $1e,ya
0eb0: e8 8c     mov   a,#$8c
0eb2: 8d 1e     mov   y,#$1e
0eb4: da 20     movw  $20,ya
0eb6: e8 02     mov   a,#$02
0eb8: c4 42     mov   $42,a
0eba: c4 44     mov   $44,a
0ebc: 6f        ret

0ebd: e8 02     mov   a,#$02
0ebf: d4 26     mov   $26+x,a
0ec1: e8 1e     mov   a,#$1e
0ec3: d4 03     mov   $03+x,a
0ec5: e8 8c     mov   a,#$8c
0ec7: d4 02     mov   $02+x,a           ; $1e8c
0ec9: e8 00     mov   a,#$00
0ecb: d5 51 01  mov   $0151+x,a
0ece: d5 c1 f4  mov   $f4c1+x,a
0ed1: d5 c0 f4  mov   $f4c0+x,a
0ed4: d5 70 01  mov   $0170+x,a
0ed7: d5 60 f4  mov   $f460+x,a
0eda: 6f        ret

0edb: c8 f0     cmp   x,#$f0
0edd: b0 04     bcs   $0ee3
0edf: c8 90     cmp   x,#$90
0ee1: b0 0d     bcs   $0ef0
0ee3: 7d        mov   a,x
0ee4: 28 1f     and   a,#$1f
0ee6: 1c        asl   a
0ee7: fd        mov   y,a
0ee8: f6 c2 17  mov   a,$17c2+y
0eeb: 2d        push  a
0eec: f6 c1 17  mov   a,$17c1+y
0eef: 2d        push  a
0ef0: 6f        ret

0ef1: 3f f7 0e  call  $0ef7
0ef4: 5f 05 0f  jmp   $0f05

0ef7: e4 86     mov   a,$86
0ef9: 48 ff     eor   a,#$ff
0efb: 24 53     and   a,$53
0efd: 0e d1 00  tset1 $00d1
0f00: cd 00     mov   x,#$00
0f02: 5f 0a 0f  jmp   $0f0a

0f05: 09 86 d1  or    ($d1),($86)
0f08: cd 02     mov   x,#$02
0f0a: eb 90     mov   y,$90
0f0c: e4 8f     mov   a,$8f
0f0e: d5 64 f1  mov   $f164+x,a
0f11: d0 0e     bne   $0f21
0f13: d5 60 f1  mov   $f160+x,a
0f16: d5 68 f1  mov   $f168+x,a
0f19: d5 69 f1  mov   $f169+x,a
0f1c: dd        mov   a,y
0f1d: d5 61 f1  mov   $f161+x,a
0f20: 6f        ret

0f21: dd        mov   a,y
0f22: 80        setc
0f23: b5 61 f1  sbc   a,$f161+x
0f26: 4d        push  x
0f27: 3f 38 0f  call  $0f38
0f2a: ce        pop   x
0f2b: d5 68 f1  mov   $f168+x,a
0f2e: dd        mov   a,y
0f2f: d5 69 f1  mov   $f169+x,a
0f32: e8 00     mov   a,#$00
0f34: d5 60 f1  mov   $f160+x,a
0f37: 6f        ret

0f38: 0d        push  psw
0f39: b0 03     bcs   $0f3e
0f3b: 48 ff     eor   a,#$ff
0f3d: bc        inc   a
0f3e: f8 8f     mov   x,$8f
0f40: 8d 00     mov   y,#$00
0f42: 9e        div   ya,x
0f43: c4 b5     mov   $b5,a
0f45: e8 00     mov   a,#$00
0f47: 9e        div   ya,x
0f48: c4 b4     mov   $b4,a
0f4a: 8e        pop   psw
0f4b: b0 08     bcs   $0f55
0f4d: 58 ff b4  eor   $b4,#$ff
0f50: 58 ff b5  eor   $b5,#$ff
0f53: 3a b4     incw  $b4
0f55: ba b4     movw  ya,$b4
0f57: 6f        ret

0f58: 3f 83 0f  call  $0f83
0f5b: eb 90     mov   y,$90
0f5d: e4 8f     mov   a,$8f
0f5f: c4 ae     mov   $ae,a
0f61: d0 09     bne   $0f6c
0f63: cb ab     mov   $ab,y
0f65: c4 aa     mov   $aa,a
0f67: c4 ad     mov   $ad,a
0f69: c4 ac     mov   $ac,a
0f6b: 6f        ret

0f6c: fa ab a6  mov   ($a6),($ab)
0f6f: 58 80 a6  eor   $a6,#$80
0f72: dd        mov   a,y
0f73: 48 80     eor   a,#$80
0f75: 80        setc
0f76: a4 a6     sbc   a,$a6
0f78: f0 e5     beq   $0f5f
0f7a: 3f 38 0f  call  $0f38
0f7d: da ac     movw  $ac,ya
0f7f: 8f 00 aa  mov   $aa,#$00
0f82: 6f        ret

0f83: eb 90     mov   y,$90
0f85: e4 8f     mov   a,$8f
0f87: c4 b3     mov   $b3,a
0f89: d0 0a     bne   $0f95
0f8b: cb b0     mov   $b0,y
0f8d: c4 af     mov   $af,a
0f8f: c4 b2     mov   $b2,a
0f91: c4 b1     mov   $b1,a
0f93: 2f 16     bra   $0fab
0f95: fa b0 a6  mov   ($a6),($b0)
0f98: 58 80 a6  eor   $a6,#$80
0f9b: dd        mov   a,y
0f9c: 48 80     eor   a,#$80
0f9e: 80        setc
0f9f: a4 a6     sbc   a,$a6
0fa1: f0 e4     beq   $0f87
0fa3: 3f 38 0f  call  $0f38
0fa6: da b1     movw  $b1,ya
0fa8: 8f 00 af  mov   $af,#$00
0fab: e4 86     mov   a,$86
0fad: 48 ff     eor   a,#$ff
0faf: 24 53     and   a,$53
0fb1: 0e d2 00  tset1 $00d2
0fb4: 6f        ret

0fb5: e4 8f     mov   a,$8f
0fb7: d0 04     bne   $0fbd
0fb9: 12 88     clr0  $88
0fbb: 2f 08     bra   $0fc5
0fbd: 02 88     set0  $88
0fbf: e8 40     mov   a,#$40
0fc1: c4 de     mov   $de,a
0fc3: c4 df     mov   $df,a
0fc5: 8f ff d1  mov   $d1,#$ff
0fc8: 6f        ret

0fc9: 3f d8 0f  call  $0fd8
0fcc: 3f 22 10  call  $1022
0fcf: 3f 29 10  call  $1029
0fd2: 3f 30 10  call  $1030
0fd5: 5f 37 10  jmp   $1037

0fd8: e4 86     mov   a,$86
0fda: 48 ff     eor   a,#$ff
0fdc: 0e 23 00  tset1 $0023
0fdf: 4e 22 00  tclr1 $0022
0fe2: 4e 8a 00  tclr1 $008a
0fe5: 4e 8c 00  tclr1 $008c
0fe8: 4e 8b 00  tclr1 $008b
0feb: e8 00     mov   a,#$00
0fed: c4 53     mov   $53,a
0fef: c4 54     mov   $54,a
0ff1: c4 58     mov   $58,a
0ff3: c4 56     mov   $56,a
0ff5: 9c        dec   a
0ff6: c4 bc     mov   $bc,a
0ff8: c4 bd     mov   $bd,a
0ffa: 6f        ret

0ffb: 93 8f 03  bbc4  $8f,$1001
0ffe: 3f 1a 10  call  $101a
1001: 13 8f 03  bbc0  $8f,$1007
1004: 3f 22 10  call  $1022
1007: 33 8f 03  bbc1  $8f,$100d
100a: 3f 29 10  call  $1029
100d: 53 8f 03  bbc2  $8f,$1013
1010: 3f 30 10  call  $1030
1013: 73 8f 03  bbc3  $8f,$1019
1016: 5f 37 10  jmp   $1037

1019: 6f        ret

101a: e8 c0     mov   a,#$c0
101c: 24 87     and   a,$87
101e: 0e 23 00  tset1 $0023
1021: 6f        ret

1022: e4 86     mov   a,$86
1024: 28 c0     and   a,#$c0
1026: d0 16     bne   $103e
1028: 6f        ret

1029: e4 86     mov   a,$86
102b: 28 30     and   a,#$30
102d: d0 0f     bne   $103e
102f: 6f        ret

1030: e4 86     mov   a,$86
1032: 28 0c     and   a,#$0c
1034: d0 08     bne   $103e
1036: 6f        ret

1037: e4 86     mov   a,$86
1039: 28 03     and   a,#$03
103b: d0 01     bne   $103e
103d: 6f        ret

103e: 0e 23 00  tset1 $0023
1041: 4e 22 00  tclr1 $0022
1044: 4e 25 00  tclr1 $0025
1047: 4e d1 00  tclr1 $00d1
104a: 4e d2 00  tclr1 $00d2
104d: c4 a5     mov   $a5,a
104f: cd 1e     mov   x,#$1e
1051: 2f 0e     bra   $1061
1053: e8 8c     mov   a,#$8c
1055: d4 02     mov   $02+x,a
1057: e8 1e     mov   a,#$1e
1059: d4 03     mov   $03+x,a           ; $1e8c
105b: e8 02     mov   a,#$02
105d: d4 26     mov   $26+x,a
105f: 1d        dec   x
1060: 1d        dec   x
1061: 0b a5     asl   $a5
1063: b0 ee     bcs   $1053
1065: d0 f8     bne   $105f
1067: 6f        ret

1068: 03 88 0b  bbs0  $88,$1076
106b: 03 8f 09  bbs0  $8f,$1077
106e: e8 40     mov   a,#$40
1070: c4 de     mov   $de,a
1072: c4 df     mov   $df,a
1074: 32 88     clr1  $88
1076: 6f        ret

1077: e8 50     mov   a,#$50
1079: c4 e6     mov   $e6,a
107b: 8d 00     mov   y,#$00
107d: e8 7f     mov   a,#$7f
107f: cd a0     mov   x,#$a0
1081: 9e        div   ya,x
1082: c4 e5     mov   $e5,a
1084: e8 00     mov   a,#$00
1086: 9e        div   ya,x
1087: c4 e4     mov   $e4,a
1089: 8d 40     mov   y,#$40
108b: e8 00     mov   a,#$00
108d: da e2     movw  $e2,ya
108f: 22 88     set1  $88
1091: 5f 98 1f  jmp   $1f98

1094: fa 8f a8  mov   ($a8),($8f)
1097: 8f ff d1  mov   $d1,#$ff
109a: 6f        ret

109b: e4 8f     mov   a,$8f
109d: 4e a8 00  tclr1 $00a8
10a0: 0e d1 00  tset1 $00d1
10a3: 6f        ret

10a4: e4 8f     mov   a,$8f
10a6: 0e a8 00  tset1 $00a8
10a9: 0e d1 00  tset1 $00d1
10ac: 6f        ret

10ad: e4 8f     mov   a,$8f
10af: f0 35     beq   $10e6
10b1: 8d 05     mov   y,#$05
10b3: cb f2     mov   $f2,y
10b5: e4 f3     mov   a,$f3
10b7: 28 7f     and   a,#$7f
10b9: c4 f3     mov   $f3,a             ; ADSR(1)
10bb: dd        mov   a,y
10bc: 60        clrc
10bd: 88 10     adc   a,#$10
10bf: fd        mov   y,a
10c0: 10 f1     bpl   $10b3
10c2: cd 00     mov   x,#$00
10c4: 8d 00     mov   y,#$00
10c6: cb f2     mov   $f2,y
10c8: d8 f3     mov   $f3,x             ; VOL(L)
10ca: fc        inc   y
10cb: cb f2     mov   $f2,y
10cd: d8 f3     mov   $f3,x             ; VOL(R)
10cf: dd        mov   a,y
10d0: 60        clrc
10d1: 88 0f     adc   a,#$0f
10d3: fd        mov   y,a
10d4: 10 f0     bpl   $10c6
10d6: 82 88     set4  $88
10d8: e8 00     mov   a,#$00
10da: c4 d1     mov   $d1,a
10dc: c4 22     mov   $22,a
10de: 8d 10     mov   y,#$10
10e0: d6 be 00  mov   $00be+y,a
10e3: fe fb     dbnz  y,$10e0
10e5: 6f        ret

10e6: 8d 05     mov   y,#$05
10e8: cb f2     mov   $f2,y
10ea: e4 f3     mov   a,$f3
10ec: 08 80     or    a,#$80
10ee: c4 f3     mov   $f3,a             ; ADSR(1)
10f0: dd        mov   a,y
10f1: 60        clrc
10f2: 88 10     adc   a,#$10
10f4: fd        mov   y,a
10f5: 10 f1     bpl   $10e8
10f7: 92 88     clr4  $88
10f9: 8f ff d1  mov   $d1,#$ff
10fc: 6f        ret

10fd: 7d        mov   a,x
10fe: bc        inc   a
10ff: 28 7f     and   a,#$7f
1101: c4 9c     mov   $9c,a
1103: e4 f4     mov   a,$f4
1105: 64 f4     cmp   a,$f4
1107: d0 fa     bne   $1103
1109: 3e f4     cmp   x,$f4
110b: d0 02     bne   $110f
110d: d8 f4     mov   $f4,x
110f: 64 9c     cmp   a,$9c
1111: d0 f0     bne   $1103
1113: 5d        mov   x,a
1114: 13 89 03  bbc0  $89,$111a
1117: 3f 63 14  call  $1463
111a: ba f6     movw  ya,$f6
111c: da 98     movw  $98,ya
111e: e4 f5     mov   a,$f5
1120: 68 e0     cmp   a,#$e0
1122: f0 63     beq   $1187
1124: c4 f5     mov   $f5,a
1126: d8 f4     mov   $f4,x
1128: 28 07     and   a,#$07
112a: 1c        asl   a
112b: ad 20     cmp   y,#$20
112d: 90 2a     bcc   $1159
112f: ad 31     cmp   y,#$31
1131: d0 0f     bne   $1142
1133: 4d        push  x
1134: 2d        push  a
1135: 42 88     set2  $88
1137: e8 0f     mov   a,#$0f
1139: c4 8f     mov   $8f,a
113b: 3f fb 0f  call  $0ffb
113e: ae        pop   a
113f: ce        pop   x
1140: 2f 19     bra   $115b
1142: 5e c1 20  cmp   y,$20c1
1145: d0 14     bne   $115b
1147: eb 87     mov   y,$87
1149: f0 10     beq   $115b
114b: 4d        push  x
114c: 2d        push  a
114d: e8 c0     mov   a,#$c0
114f: 4e 87 00  tclr1 $0087
1152: 0e 86 00  tset1 $0086
1155: e8 10     mov   a,#$10
1157: 2f e0     bra   $1139
1159: e8 00     mov   a,#$00
115b: fd        mov   y,a
115c: e8 11     mov   a,#$11
115e: 2d        push  a
115f: e8 14     mov   a,#$14
1161: 2d        push  a
1162: f6 46 16  mov   a,$1646+y
1165: 2d        push  a
1166: f6 45 16  mov   a,$1645+y
1169: 2d        push  a
116a: e5 95 03  mov   a,$0395
116d: ec 96 03  mov   y,$0396
1170: da 94     movw  $94,ya
1172: e8 ec     mov   a,#$ec
1174: 8d 00     mov   y,#$00
1176: d7 94     mov   ($94)+y,a
1178: 3e f4     cmp   x,$f4
117a: f0 fc     beq   $1178
117c: f8 f4     mov   x,$f4
117e: 3e f4     cmp   x,$f4
1180: d0 fa     bne   $117c
1182: e8 ee     mov   a,#$ee
1184: c4 f5     mov   $f5,a
1186: 6f        ret

1187: e5 95 03  mov   a,$0395
118a: ec 96 03  mov   y,$0396
118d: da 94     movw  $94,ya
118f: e8 3f     mov   a,#$3f
1191: 8d 00     mov   y,#$00
1193: d7 94     mov   ($94)+y,a
1195: 8f 00 f5  mov   $f5,#$00
1198: d8 f4     mov   $f4,x
119a: 5f b1 07  jmp   $07b1

119d: ba 98     movw  ya,$98
119f: c5 bc 11  mov   $11bc,a
11a2: cc bd 11  mov   $11bd,y
11a5: c5 c4 11  mov   $11c4,a
11a8: cc c5 11  mov   $11c5,y
11ab: c5 ca 11  mov   $11ca,a
11ae: cc cb 11  mov   $11cb,y
11b1: 8d 00     mov   y,#$00
11b3: 2f 04     bra   $11b9
11b5: 3e f4     cmp   x,$f4
11b7: d0 1a     bne   $11d3
11b9: e4 f5     mov   a,$f5
11bb: d6 20 f1  mov   $f120+y,a
11be: fc        inc   y
11bf: d8 f4     mov   $f4,x
11c1: e4 f6     mov   a,$f6
11c3: d6 20 f1  mov   $f120+y,a
11c6: fc        inc   y
11c7: e4 f7     mov   a,$f7
11c9: d6 20 f1  mov   $f120+y,a
11cc: fc        inc   y
11cd: 30 1e     bmi   $11ed
11cf: 3e f4     cmp   x,$f4
11d1: f0 fc     beq   $11cf
11d3: f8 f4     mov   x,$f4
11d5: 10 de     bpl   $11b5
11d7: 3e f4     cmp   x,$f4
11d9: d0 f8     bne   $11d3
11db: c8 e0     cmp   x,#$e0
11dd: f0 2d     beq   $120c
11df: c8 ff     cmp   x,#$ff
11e1: d0 ec     bne   $11cf
11e3: e8 f0     mov   a,#$f0
11e5: 2e f5 e7  cbne  $f5,$11cf
11e8: c4 8f     mov   $8f,a
11ea: 5f 01 14  jmp   $1401

11ed: dd        mov   a,y
11ee: 28 7f     and   a,#$7f
11f0: fd        mov   y,a
11f1: e5 bc 11  mov   a,$11bc
11f4: 48 80     eor   a,#$80
11f6: 30 09     bmi   $1201
11f8: ac bd 11  inc   $11bd
11fb: ac c5 11  inc   $11c5
11fe: ac cb 11  inc   $11cb
1201: c5 bc 11  mov   $11bc,a
1204: c5 c4 11  mov   $11c4,a
1207: c5 ca 11  mov   $11ca,a
120a: 2f c3     bra   $11cf
120c: 6f        ret

120d: ba 98     movw  ya,$98
120f: c5 2c 12  mov   $122c,a
1212: cc 2d 12  mov   $122d,y
1215: c5 34 12  mov   $1234,a
1218: cc 35 12  mov   $1235,y
121b: c5 3a 12  mov   $123a,a
121e: cc 3b 12  mov   $123b,y
1221: 8d 00     mov   y,#$00
1223: 2f 04     bra   $1229
1225: 3e f4     cmp   x,$f4
1227: d0 25     bne   $124e
1229: e4 f5     mov   a,$f5
122b: d6 98 00  mov   $0098+y,a
122e: fc        inc   y
122f: e4 f6     mov   a,$f6
1231: d8 f4     mov   $f4,x
1233: d6 98 00  mov   $0098+y,a
1236: fc        inc   y
1237: e4 f7     mov   a,$f7
1239: d6 98 00  mov   $0098+y,a
123c: fc        inc   y
123d: 30 29     bmi   $1268
123f: e4 fd     mov   a,$fd
1241: f0 07     beq   $124a
1243: 4d        push  x
1244: 6d        push  y
1245: 3f 2f 04  call  $042f
1248: ee        pop   y
1249: ce        pop   x
124a: 3e f4     cmp   x,$f4
124c: f0 f1     beq   $123f
124e: f8 f4     mov   x,$f4
1250: 10 d3     bpl   $1225
1252: 3e f4     cmp   x,$f4
1254: d0 f8     bne   $124e
1256: c8 e0     cmp   x,#$e0
1258: f0 2d     beq   $1287
125a: c8 ff     cmp   x,#$ff
125c: d0 e1     bne   $123f
125e: e8 f0     mov   a,#$f0
1260: 2e f5 dc  cbne  $f5,$123f
1263: c4 8f     mov   $8f,a
1265: 5f 01 14  jmp   $1401

1268: dd        mov   a,y
1269: 28 7f     and   a,#$7f
126b: fd        mov   y,a
126c: e5 2c 12  mov   a,$122c
126f: 48 80     eor   a,#$80
1271: 30 09     bmi   $127c
1273: ac 2d 12  inc   $122d
1276: ac 35 12  inc   $1235
1279: ac 3b 12  inc   $123b
127c: c5 2c 12  mov   $122c,a
127f: c5 34 12  mov   $1234,a
1282: c5 3a 12  mov   $123a,a
1285: 2f b8     bra   $123f
1287: 6f        ret

1288: ba 98     movw  ya,$98
128a: c5 a1 12  mov   $12a1,a
128d: cc a2 12  mov   $12a2,y
1290: c5 a9 12  mov   $12a9,a
1293: cc aa 12  mov   $12aa,y
1296: 8d 00     mov   y,#$00
1298: 2f 04     bra   $129e
129a: 3e f4     cmp   x,$f4
129c: d0 1a     bne   $12b8
129e: e4 f5     mov   a,$f5
12a0: d6 c0 21  mov   $21c0+y,a
12a3: fc        inc   y
12a4: e4 f6     mov   a,$f6
12a6: d8 f4     mov   $f4,x
12a8: d6 c0 21  mov   $21c0+y,a
12ab: fc        inc   y
12ac: d0 06     bne   $12b4
12ae: ac a2 12  inc   $12a2
12b1: ac aa 12  inc   $12aa
12b4: 3e f4     cmp   x,$f4
12b6: f0 fc     beq   $12b4
12b8: f8 f4     mov   x,$f4
12ba: 10 de     bpl   $129a
12bc: 3e f4     cmp   x,$f4
12be: d0 f8     bne   $12b8
12c0: c8 e0     cmp   x,#$e0
12c2: f0 0e     beq   $12d2
12c4: c8 ff     cmp   x,#$ff
12c6: d0 ec     bne   $12b4
12c8: e8 f0     mov   a,#$f0
12ca: 2e f5 e7  cbne  $f5,$12b4
12cd: c4 8f     mov   $8f,a
12cf: 5f 01 14  jmp   $1401

12d2: 6f        ret

12d3: ba 98     movw  ya,$98
12d5: c5 ec 12  mov   $12ec,a
12d8: cc ed 12  mov   $12ed,y
12db: c5 f4 12  mov   $12f4,a
12de: cc f5 12  mov   $12f5,y
12e1: 8d 00     mov   y,#$00
12e3: 2f 04     bra   $12e9
12e5: 3e f4     cmp   x,$f4
12e7: d0 25     bne   $130e
12e9: e4 f6     mov   a,$f6
12eb: d6 98 00  mov   $0098+y,a
12ee: fc        inc   y
12ef: e4 f7     mov   a,$f7
12f1: d8 f4     mov   $f4,x
12f3: d6 98 00  mov   $0098+y,a
12f6: fc        inc   y
12f7: d0 06     bne   $12ff
12f9: ac ed 12  inc   $12ed
12fc: ac f5 12  inc   $12f5
12ff: e4 fd     mov   a,$fd
1301: f0 07     beq   $130a
1303: 4d        push  x
1304: 6d        push  y
1305: 3f 2f 04  call  $042f
1308: ee        pop   y
1309: ce        pop   x
130a: 3e f4     cmp   x,$f4
130c: f0 f1     beq   $12ff
130e: f8 f4     mov   x,$f4
1310: 10 d3     bpl   $12e5
1312: 3e f4     cmp   x,$f4
1314: d0 f8     bne   $130e
1316: c8 e0     cmp   x,#$e0
1318: f0 0e     beq   $1328
131a: c8 ff     cmp   x,#$ff
131c: d0 e1     bne   $12ff
131e: e8 f0     mov   a,#$f0
1320: 2e f5 dc  cbne  $f5,$12ff
1323: c4 8f     mov   $8f,a
1325: 5f 01 14  jmp   $1401

1328: 6f        ret

1329: d8 f4     mov   $f4,x
132b: 3e f4     cmp   x,$f4
132d: f0 fc     beq   $132b
132f: f8 f4     mov   x,$f4
1331: 3e f4     cmp   x,$f4
1333: d0 fa     bne   $132f
1335: 7d        mov   a,x
1336: 10 f1     bpl   $1329
1338: c8 e0     cmp   x,#$e0
133a: f0 0e     beq   $134a
133c: c8 ff     cmp   x,#$ff
133e: d0 e9     bne   $1329
1340: e8 f0     mov   a,#$f0
1342: 2e f5 e4  cbne  $f5,$1329
1345: c4 8f     mov   $8f,a
1347: 5f 01 14  jmp   $1401

134a: 6f        ret

134b: ba f6     movw  ya,$f6
134d: da 9a     movw  $9a,ya
134f: d8 f4     mov   $f4,x
1351: 3f ba 13  call  $13ba
1354: b0 63     bcs   $13b9
1356: ba f6     movw  ya,$f6
1358: da 9c     movw  $9c,ya
135a: d8 f4     mov   $f4,x
135c: dd        mov   a,y
135d: f0 28     beq   $1387
135f: ba 98     movw  ya,$98
1361: c5 72 13  mov   $1372,a
1364: cc 73 13  mov   $1373,y
1367: ba 9a     movw  ya,$9a
1369: c5 75 13  mov   $1375,a
136c: cc 76 13  mov   $1376,y
136f: 8d 00     mov   y,#$00
1371: f6 98 00  mov   a,$0098+y
1374: d6 98 00  mov   $0098+y,a
1377: fc        inc   y
1378: d0 f7     bne   $1371
137a: ab 99     inc   $99
137c: ab 9b     inc   $9b
137e: ac 73 13  inc   $1373
1381: ac 76 13  inc   $1376
1384: 6e 9d ea  dbnz  $9d,$1371
1387: 1a 98     decw  $98
1389: 1a 9a     decw  $9a
138b: ba 98     movw  ya,$98
138d: c5 a0 13  mov   $13a0,a
1390: cc a1 13  mov   $13a1,y
1393: ba 9a     movw  ya,$9a
1395: c5 a3 13  mov   $13a3,a
1398: cc a4 13  mov   $13a4,y
139b: eb 9c     mov   y,$9c
139d: f0 08     beq   $13a7
139f: f6 98 00  mov   a,$0098+y
13a2: d6 98 00  mov   $0098+y,a
13a5: fe f8     dbnz  y,$139f
13a7: 3f ba 13  call  $13ba
13aa: b0 0d     bcs   $13b9
13ac: ba f6     movw  ya,$f6
13ae: da 98     movw  $98,ya
13b0: d8 f4     mov   $f4,x
13b2: 3f ba 13  call  $13ba
13b5: b0 02     bcs   $13b9
13b7: 2f 92     bra   $134b
13b9: 6f        ret

13ba: 3e f4     cmp   x,$f4
13bc: f0 fc     beq   $13ba
13be: f8 f4     mov   x,$f4
13c0: 10 16     bpl   $13d8
13c2: 3e f4     cmp   x,$f4
13c4: d0 f8     bne   $13be
13c6: c8 e0     cmp   x,#$e0
13c8: f0 14     beq   $13de
13ca: c8 ff     cmp   x,#$ff
13cc: d0 ec     bne   $13ba
13ce: e8 f0     mov   a,#$f0
13d0: 2e f5 e7  cbne  $f5,$13ba
13d3: c4 8f     mov   $8f,a
13d5: 5f 01 14  jmp   $1401

13d8: 3e f4     cmp   x,$f4
13da: f0 04     beq   $13e0
13dc: 2f dc     bra   $13ba
13de: 80        setc
13df: 8d 60     mov   y,#$60
13e1: 6f        ret

13e2: e4 8f     mov   a,$8f
13e4: 60        clrc
13e5: 88 ff     adc   a,#$ff
13e7: ca 89 a0  mov1  $0089,5,c
13ea: b0 03     bcs   $13ef
13ec: e8 27     mov   a,#$27
13ee: ec e8 01  mov   y,$01e8
13f1: 8f 02 f1  mov   $f1,#$02
13f4: c4 fa     mov   $fa,a
13f6: 8f 03 f1  mov   $f1,#$03
13f9: 6f        ret

13fa: e4 8f     mov   a,$8f
13fc: 28 0f     and   a,#$0f
13fe: c4 d3     mov   $d3,a
1400: 6f        ret

1401: e4 8f     mov   a,$8f
1403: 68 01     cmp   a,#$01
1405: d0 09     bne   $1410
1407: e4 90     mov   a,$90
1409: 60        clrc
140a: 88 ff     adc   a,#$ff
140c: ca 89 e0  mov1  $0089,7,c
140f: 6f        ret

1410: 68 f0     cmp   a,#$f0
1412: d0 fb     bne   $140f
1414: e8 e0     mov   a,#$e0
1416: 8d 6c     mov   y,#$6c
1418: 3f 97 07  call  $0797             ; FLG
141b: 8f 80 f1  mov   $f1,#$80
141e: 5f c0 ff  jmp   $ffc0

; vcmd e5,e7 - nop
1421: 6f        ret

1422: cb b4     mov   $b4,y
1424: 60        clrc
1425: fd        mov   y,a
1426: 30 07     bmi   $142f
1428: 84 b4     adc   a,$b4
142a: 90 09     bcc   $1435
142c: e8 ff     mov   a,#$ff
142e: 6f        ret

142f: 84 b4     adc   a,$b4
1431: b0 02     bcs   $1435
1433: e8 00     mov   a,#$00
1435: 6f        ret

1436: 8f 00 d8  mov   $d8,#$00
1439: e6        mov   a,(x)
143a: f0 16     beq   $1452
143c: e4 83     mov   a,$83
143e: 2f 0c     bra   $144c
1440: eb fe     mov   y,$fe
1442: d0 07     bne   $144b
1444: 2d        push  a
1445: 3f 9c 08  call  $089c
1448: ae        pop   a
1449: 2f f5     bra   $1440
144b: bc        inc   a
144c: 66        cmp   a,(x)
144d: 90 f1     bcc   $1440
144f: 3f dd 08  call  $08dd
1452: 6f        ret

1453: 3f 8f 14  call  $148f
1456: 8f 00 83  mov   $83,#$00
1459: e4 82     mov   a,$82
145b: f0 01     beq   $145e
145d: 6f        ret

145e: 32 89     clr1  $89
1460: 5f d4 14  jmp   $14d4

1463: e4 fe     mov   a,$fe
1465: 60        clrc
1466: 84 83     adc   a,$83
1468: c4 83     mov   $83,a
146a: 6f        ret

146b: e4 8f     mov   a,$8f
146d: 28 0f     and   a,#$0f
146f: 64 81     cmp   a,$81
1471: f0 1b     beq   $148e
1473: 8f 00 83  mov   $83,#$00
1476: c4 81     mov   $81,a
1478: 3f 8f 14  call  $148f
147b: cd 82     mov   x,#$82
147d: 3f 36 14  call  $1436
1480: 3f d4 14  call  $14d4
1483: cd 81     mov   x,#$81
1485: 3f 36 14  call  $1436
1488: e4 53     mov   a,$53
148a: d0 02     bne   $148e
148c: c4 4f     mov   $4f,a
148e: 6f        ret

148f: 8f 6c f2  mov   $f2,#$6c
1492: e4 f3     mov   a,$f3
1494: 08 20     or    a,#$20
1496: c4 f3     mov   $f3,a
1498: e8 00     mov   a,#$00
149a: 8d 4d     mov   y,#$4d
149c: 3f 97 07  call  $0797             ; EON
149f: 8d 0d     mov   y,#$0d
14a1: 3f 97 07  call  $0797             ; EFB
14a4: 8d 2c     mov   y,#$2c
14a6: 3f 97 07  call  $0797             ; EVOL(L)
14a9: 8d 3c     mov   y,#$3c
14ab: 3f 97 07  call  $0797             ; EVOL(R)
14ae: 8d 7d     mov   y,#$7d
14b0: cb f2     mov   $f2,y
14b2: e4 f3     mov   a,$f3
14b4: 28 0f     and   a,#$0f
14b6: c4 82     mov   $82,a
14b8: e4 81     mov   a,$81
14ba: 3f 97 07  call  $0797             ; EDL
14bd: 1c        asl   a
14be: 1c        asl   a
14bf: 1c        asl   a
14c0: 48 ff     eor   a,#$ff
14c2: bc        inc   a
14c3: 60        clrc
14c4: 88 f1     adc   a,#$f1
14c6: 8d 6d     mov   y,#$6d
14c8: 3f 97 07  call  $0797             ; ESA
14cb: 8f 01 f1  mov   $f1,#$01
14ce: eb fe     mov   y,$fe
14d0: 8f 03 f1  mov   $f1,#$03
14d3: 6f        ret

14d4: 8f 01 f1  mov   $f1,#$01
14d7: eb fe     mov   y,$fe
14d9: 8f 03 f1  mov   $f1,#$03
14dc: 8f 6c f2  mov   $f2,#$6c
14df: e4 f3     mov   a,$f3
14e1: 28 df     and   a,#$df
14e3: c4 f3     mov   $f3,a             ; FLG
14e5: 6f        ret

14e6: fa bd bc  mov   ($bc),($bd)
14e9: e8 00     mov   a,#$00
14eb: c4 94     mov   $94,a
14ed: e8 f2     mov   a,#$f2
14ef: c4 95     mov   $95,a
14f1: e8 00     mov   a,#$00
14f3: c4 96     mov   $96,a
14f5: e8 f8     mov   a,#$f8
14f7: c4 97     mov   $97,a
14f9: 8d 00     mov   y,#$00
14fb: f7 94     mov   a,($94)+y
14fd: d7 96     mov   ($96)+y,a
14ff: fc        inc   y
1500: d0 f9     bne   $14fb
1502: ab 95     inc   $95
1504: ab 97     inc   $97
1506: 78 f8 95  cmp   $95,#$f8
1509: d0 f0     bne   $14fb
150b: 1a 96     decw  $96
150d: 8d 80     mov   y,#$80
150f: f6 ff ff  mov   a,$ffff+y
1512: d7 96     mov   ($96)+y,a
1514: fe f9     dbnz  y,$150f
1516: ab 97     inc   $97
1518: 8d 90     mov   y,#$90
151a: f6 ff 00  mov   a,$00ff+y
151d: d7 96     mov   ($96)+y,a
151f: fe f9     dbnz  y,$151a
1521: 6f        ret

1522: 8f ff bc  mov   $bc,#$ff
1525: e8 00     mov   a,#$00
1527: c4 94     mov   $94,a
1529: e8 f2     mov   a,#$f2
152b: c4 95     mov   $95,a
152d: e8 00     mov   a,#$00
152f: c4 96     mov   $96,a
1531: e8 f8     mov   a,#$f8
1533: c4 97     mov   $97,a
1535: 8d 00     mov   y,#$00
1537: f7 96     mov   a,($96)+y
1539: d7 94     mov   ($94)+y,a
153b: fc        inc   y
153c: d0 f9     bne   $1537
153e: ab 95     inc   $95
1540: ab 97     inc   $97
1542: 78 f8 95  cmp   $95,#$f8
1545: d0 f0     bne   $1537
1547: 1a 96     decw  $96
1549: 8d 80     mov   y,#$80
154b: f7 96     mov   a,($96)+y
154d: d6 ff ff  mov   $ffff+y,a
1550: fe f9     dbnz  y,$154b
1552: ab 97     inc   $97
1554: 8d 90     mov   y,#$90
1556: f7 96     mov   a,($96)+y
1558: d6 ff 00  mov   $00ff+y,a
155b: fe f9     dbnz  y,$1556
155d: 6f        ret

155e: e8 9c     mov   a,#$9c
1560: c4 a1     mov   $a1,a
1562: e8 bf     mov   a,#$bf
1564: 8f 00 a5  mov   $a5,#$00
1567: 60        clrc
1568: 8f 09 92  mov   $92,#$09
156b: 83 89 02  bbs4  $89,$1570
156e: 2f 06     bra   $1576
1570: 88 08     adc   a,#$08
1572: c2 92     set6  $92
1574: e2 a5     set7  $a5
1576: c4 a2     mov   $a2,a
1578: 88 08     adc   a,#$08
157a: c4 a4     mov   $a4,a
157c: f8 a2     mov   x,$a2
157e: eb 92     mov   y,$92
1580: cb f2     mov   $f2,y
1582: eb f3     mov   y,$f3
1584: cb a3     mov   $a3,y
1586: bf        mov   a,(x)+
1587: 1c        asl   a
1588: cf        mul   ya
1589: dd        mov   a,y
158a: 28 70     and   a,#$70
158c: c4 a0     mov   $a0,a
158e: eb a3     mov   y,$a3
1590: bf        mov   a,(x)+
1591: 1c        asl   a
1592: cf        mul   ya
1593: dd        mov   a,y
1594: d8 a2     mov   $a2,x
1596: f8 a1     mov   x,$a1
1598: 9f        xcn   a
1599: 28 07     and   a,#$07
159b: 04 a0     or    a,$a0
159d: 04 a5     or    a,$a5
159f: af        mov   (x)+,a
15a0: d8 a1     mov   $a1,x
15a2: 60        clrc
15a3: 98 10 92  adc   $92,#$10
15a6: f8 a2     mov   x,$a2
15a8: 3e a4     cmp   x,$a4
15aa: d0 d2     bne   $157e
15ac: ba 9c     movw  ya,$9c
15ae: da f4     movw  $f4,ya
15b0: ba 9e     movw  ya,$9e
15b2: da f6     movw  $f6,ya
15b4: ea 89 80  not1  $0089,4
15b7: 6f        ret

15b8: e5 64 f1  mov   a,$f164
15bb: f0 31     beq   $15ee
15bd: 9c        dec   a
15be: c5 64 f1  mov   $f164,a
15c1: 5d        mov   x,a
15c2: e5 60 f1  mov   a,$f160
15c5: 60        clrc
15c6: 85 68 f1  adc   a,$f168
15c9: c5 60 f1  mov   $f160,a
15cc: e5 61 f1  mov   a,$f161
15cf: 85 69 f1  adc   a,$f169
15d2: 65 61 f1  cmp   a,$f161
15d5: c5 61 f1  mov   $f161,a
15d8: f0 03     beq   $15dd
15da: 09 53 d1  or    ($d1),($53)
15dd: fd        mov   y,a
15de: d0 0e     bne   $15ee
15e0: 7d        mov   a,x
15e1: d0 0b     bne   $15ee
15e3: ba bc     movw  ya,$bc
15e5: 2d        push  a
15e6: 6d        push  y
15e7: 3f d8 0f  call  $0fd8
15ea: ee        pop   y
15eb: ae        pop   a
15ec: da bc     movw  $bc,ya
15ee: e5 66 f1  mov   a,$f166
15f1: f0 32     beq   $1625
15f3: 9c        dec   a
15f4: c5 66 f1  mov   $f166,a
15f7: 5d        mov   x,a
15f8: e5 62 f1  mov   a,$f162
15fb: 60        clrc
15fc: 85 6a f1  adc   a,$f16a
15ff: c5 62 f1  mov   $f162,a
1602: e5 63 f1  mov   a,$f163
1605: 85 6b f1  adc   a,$f16b
1608: 65 63 f1  cmp   a,$f163
160b: c5 63 f1  mov   $f163,a
160e: f0 03     beq   $1613
1610: 09 86 d1  or    ($d1),($86)
1613: fd        mov   y,a
1614: d0 0f     bne   $1625
1616: 7d        mov   a,x
1617: d0 0c     bne   $1625
1619: 3f 22 10  call  $1022
161c: 3f 29 10  call  $1029
161f: 3f 30 10  call  $1030
1622: 3f 37 10  call  $1037
1625: e4 ae     mov   a,$ae
1627: f0 08     beq   $1631
1629: 8b ae     dec   $ae
162b: ba ac     movw  ya,$ac
162d: 7a aa     addw  ya,$aa
162f: da aa     movw  $aa,ya
1631: e4 b3     mov   a,$b3
1633: f0 0f     beq   $1644
1635: 8b b3     dec   $b3
1637: ba b1     movw  ya,$b1
1639: 7a af     addw  ya,$af
163b: 7e b0     cmp   y,$b0
163d: da af     movw  $af,ya
163f: f0 03     beq   $1644
1641: 09 53 d2  or    ($d2),($53)
1644: 6f        ret

1645: dw $1329  ; 
1647: dw $1329  ; 
1649: dw $1288  ; 
164b: dw $119d  ; 
164d: dw $1329  ; 
164f: dw $120d  ; 
1651: dw $12d3  ; 
1653: dw $134b  ; 

; vcmd dispatch table
1655: dw $1850  ; c4 - volume
1657: dw $1861  ; c5 - volume fade
1659: dw $1890  ; c6 - panpot
165b: dw $18a0  ; c7 - panpot fade
165d: dw $18c0  ; c8 - portamento
165f: dw $194a  ; c9 - vibrato on
1661: dw $19e1  ; ca - vibrato off
1663: dw $19eb  ; cb - tremolo on
1665: dw $1a29  ; cc - tremolo off
1667: dw $1a30  ; cd - panpot LFO on
1669: dw $1a86  ; ce - panpot LFO off
166b: dw $1b09  ; cf - set noise frequency
166d: dw $1ad1  ; d0 - noise on
166f: dw $1af9  ; d1 - noise off
1671: dw $1b29  ; d2 - pitchmod on
1673: dw $1b4a  ; d3 - pitchmod off
1675: dw $1aad  ; d4 - echo on
1677: dw $1ac1  ; d5 - echo off
1679: dw $1aa6  ; d6 - set octave
167b: dw $1a92  ; d7 - increase octave
167d: dw $1a9c  ; d8 - decrease octave
167f: dw $18cf  ; d9 - transpose (absolute)
1681: dw $18cb  ; da - transpose (relative)
1683: dw $1d87  ; db - tuning
1685: dw $1b64  ; dc - instrument
1687: dw $1b91  ; dd - attack rate
1689: dw $1bbf  ; de - decay rate
168b: dw $1bd2  ; df - sustain level
168d: dw $1be4  ; e0 - sustain rate
168f: dw $1bf4  ; e1 - default ADSR
1691: dw $1cf9  ; e2 - repeat start
1693: dw $1d29  ; e3 - repeat end
1695: dw $1c07  ; e4 - slur on
1697: dw $1421  ; e5 - nop (slur off)
1699: dw $1c2f  ; e6 - legato on
169b: dw $1421  ; e7 - nop (legato off)
169d: dw $1d84  ; e8 - force next note length
169f: dw $1c3d  ; e9 - goto address in $3100+A*4
16a1: dw $1c41  ; ea - goto address in $3102+A*4
16a3: dw $1e1a  ; eb - end of track
16a5: dw $1e1a  ; ec - end of track (duplicated)
16a7: dw $1e1a  ; ed - end of track (duplicated)
16a9: dw $1e1a  ; ee - end of track (duplicated)
16ab: dw $1ee8  ; ef
16ad: dw $1827  ; f0 - tempo
16af: dw $1830  ; f1 - tempo fade
16b1: dw $1882  ; f2 - echo volume
16b3: dw $188d  ; f3 - echo volume fade
16b5: dw $1848  ; f4 - expression
16b7: dw $1c9e  ; f5 - conditional jump in repeat
16b9: dw $1c83  ; f6 - goto
16bb: dw $18d3  ; f7 - echo feedback
16bd: dw $18fb  ; f8 - echo FIR
16bf: dw $1d8b  ; f9 - (related to vcmd fa)
16c1: dw $1d90  ; fa - CPU-controled branch
16c3: dw $1b5a  ; fb - rhythm kit on
16c5: dw $1b5e  ; fc - rhythm kit off
16c7: dw $1dc8  ; fd - play SFX
16c9: dw $1e1a  ; fe - end of track (duplicated)
16cb: dw $1e1a  ; ff - end of track (duplicated)

; vcmd length table
16cd: db                 $01,$02,$01,$02,$02,$03,$00,$03,$00,$02,$00,$01
16d9: db $00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$01,$01,$01,$01,$01,$01
16e9: db $01,$00,$01,$00,$00,$00,$00,$00,$01,$01,$01,$00,$00,$00,$00,$00
16f9: db $01,$02,$01,$02,$01,$03,$02,$01,$01,$01,$03,$00,$00,$01,$00,$00

1709: dw $0000  ; c4
170b: dw $0000  ; c5
170d: dw $0000  ; c6
170f: dw $0000  ; c7
1711: dw $0000  ; c8
1713: dw $0000  ; c9
1715: dw $0000  ; ca
1717: dw $0000  ; cb
1719: dw $0000  ; cc
171b: dw $0000  ; cd
171d: dw $0000  ; ce
171f: dw $0000  ; cf
1721: dw $0000  ; d0
1723: dw $0000  ; d1
1725: dw $0000  ; d2
1727: dw $0000  ; d3
1729: dw $0000  ; d4
172b: dw $0000  ; d5
172d: dw $0000  ; d6
172f: dw $0000  ; d7
1731: dw $0000  ; d8
1733: dw $0000  ; d9
1735: dw $0000  ; da
1737: dw $0000  ; db
1739: dw $1c1b  ; dc
173b: dw $0000  ; dd
173d: dw $0000  ; de
173f: dw $0000  ; df
1741: dw $0000  ; e0
1743: dw $0000  ; e1
1745: dw $0000  ; e2
1747: dw $1d5e  ; e3
1749: dw $1c1b  ; e4
174b: dw $1c1b  ; e5
174d: dw $1c1b  ; e6
174f: dw $1c1b  ; e7
1751: dw $0000  ; e8
1753: dw $1c6e  ; e9
1755: dw $1c72  ; ea
1757: dw $0000  ; eb
1759: dw $0000  ; ec
175b: dw $0000  ; ed
175d: dw $0000  ; ee
175f: dw $0000  ; ef
1761: dw $0000  ; f0
1763: dw $0000  ; f1
1765: dw $0000  ; f2
1767: dw $0000  ; f3
1769: dw $0000  ; f4
176b: dw $1cce  ; f5
176d: dw $1c91  ; f6
176f: dw $0000  ; f7
1771: dw $0000  ; f8
1773: dw $0000  ; f9
1775: dw $1db3  ; fa
1777: dw $0000  ; fb
1779: dw $0000  ; fc
177b: dw $0000  ; fd
177d: dw $0000  ; fe
177f: dw $0000  ; ff

1781: dw $0bfb  ; 
1783: dw $0c03  ; 
1785: dw $0bfb  ; 
1787: dw $0c03  ; 
1789: dw $0bf8  ; 
178b: dw $0c00  ; 
178d: dw $0bf8  ; 
178f: dw $0c00  ; 
1791: dw $0da3  ; 
1793: dw $0dab  ; 
1795: dw $0db3  ; 
1797: dw $0dbb  ; 
1799: dw $0e67  ; 
179b: dw $0e6b  ; 
179d: dw $1421  ; 
179f: dw $1421  ; 
17a1: dw $0d06  ; 
17a3: dw $0d06  ; 
17a5: dw $0d06  ; 
17a7: dw $0d06  ; 
17a9: dw $0d06  ; 
17ab: dw $0d06  ; 
17ad: dw $0d06  ; 
17af: dw $0d06  ; 
17b1: dw $0000  ; 
17b3: dw $0000  ; 
17b5: dw $0000  ; 
17b7: dw $0000  ; 
17b9: dw $0000  ; 
17bb: dw $0000  ; 
17bd: dw $0000  ; 
17bf: dw $0000  ; 
17c1: dw $0ef1  ; 
17c3: dw $0ef7  ; 
17c5: dw $0f05  ; 
17c7: dw $1421  ; 
17c9: dw $1421  ; 
17cb: dw $0f58  ; 
17cd: dw $0f5b  ; 
17cf: dw $0f83  ; 
17d1: dw $13fa  ; 
17d3: dw $1421  ; 
17d5: dw $1421  ; 
17d7: dw $1421  ; 
17d9: dw $1421  ; 
17db: dw $0d29  ; 
17dd: dw $1f8e  ; 
17df: dw $1068  ; 
17e1: dw $0fc9  ; 
17e3: dw $0fd8  ; 
17e5: dw $0ffb  ; 
17e7: dw $0fb5  ; 
17e9: dw $1094  ; 
17eb: dw $10ad  ; 
17ed: dw $13e2  ; 
17ef: dw $1421  ; 
17f1: dw $109b  ; 
17f3: dw $10a4  ; 
17f5: dw $1421  ; 
17f7: dw $1421  ; 
17f9: dw $146b  ; 
17fb: dw $1421  ; 
17fd: dw $10fd  ; 
17ff: dw $1401  ; 

; $1800+y - dsp reg addresses
; KON,PMON,NON,FLG,KOF,MVOL(L),MVOL(R),EON,EVOL(L),EVOL(R),EFB,FIR C0-C7
1801: db $4c,$2d,$3d,$6c,$5c,$0c,$1c,$4d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f
; $1813+y - dsp reg shadows
1814: db $22,$8c,$8b,$8d,$23,$de,$df,$8a,$e0,$e1,$76,$66,$68,$6a,$6c,$6e,$70,$72,$74

; vcmd f0 - tempo
1827: c4 47     mov   $47,a
1829: e8 00     mov   a,#$00
182b: c4 46     mov   $46,a
182d: c4 4a     mov   $4a,a
182f: 6f        ret

; vcmd f1 - tempo fade
1830: c4 4a     mov   $4a,a
1832: c4 8f     mov   $8f,a
1834: 3f 47 07  call  $0747
1837: eb 8f     mov   y,$8f
1839: f0 ec     beq   $1827
183b: 80        setc
183c: a4 47     sbc   a,$47
183e: f0 ed     beq   $182d
1840: 3f 38 0f  call  $0f38
1843: f8 a7     mov   x,$a7
1845: da 4b     movw  $4b,ya
1847: 6f        ret

; vcmd f4 - expression
1848: 1c        asl   a
1849: d5 20 f2  mov   $f220+x,a
184c: 09 92 d1  or    ($d1),($92)
184f: 6f        ret

; vcmd c4 - volume
1850: 28 7f     and   a,#$7f
1852: d5 41 f2  mov   $f241+x,a
1855: e8 00     mov   a,#$00
1857: d5 40 f2  mov   $f240+x,a
185a: 09 92 d1  or    ($d1),($92)
185d: d5 c0 f2  mov   $f2c0+x,a
1860: 6f        ret

; vcmd c5 - volume fade
1861: d5 c0 f2  mov   $f2c0+x,a
1864: c4 8f     mov   $8f,a
1866: 3f 47 07  call  $0747
1869: 28 7f     and   a,#$7f
186b: eb 8f     mov   y,$8f
186d: f0 e1     beq   $1850
186f: 80        setc
1870: b5 41 f2  sbc   a,$f241+x
1873: f0 e8     beq   $185d
1875: 3f 38 0f  call  $0f38
1878: f8 a7     mov   x,$a7
187a: d5 60 f2  mov   $f260+x,a
187d: dd        mov   a,y
187e: d5 61 f2  mov   $f261+x,a
1881: 6f        ret

; vcmd f2 - echo volume
1882: 28 7f     and   a,#$7f
1884: c4 4f     mov   $4f,a
1886: e8 00     mov   a,#$00
1888: c4 4e     mov   $4e,a
188a: c4 52     mov   $52,a
188c: 6f        ret

; vcmd f3 - echo volume fade
188d: 5f 47 07  jmp   $0747

; vcmd c6 - panpot
1890: 1c        asl   a
1891: d5 81 f2  mov   $f281+x,a
1894: e8 00     mov   a,#$00
1896: d5 80 f2  mov   $f280+x,a
1899: 09 92 d1  or    ($d1),($92)
189c: d5 c1 f2  mov   $f2c1+x,a
189f: 6f        ret

; vcmd c7 - panpot fade
18a0: d5 c1 f2  mov   $f2c1+x,a
18a3: c4 8f     mov   $8f,a
18a5: 3f 47 07  call  $0747
18a8: eb 8f     mov   y,$8f
18aa: f0 e4     beq   $1890
18ac: 1c        asl   a
18ad: 80        setc
18ae: b5 81 f2  sbc   a,$f281+x
18b1: f0 e9     beq   $189c
18b3: 3f 38 0f  call  $0f38
18b6: f8 a7     mov   x,$a7
18b8: d5 a0 f2  mov   $f2a0+x,a
18bb: dd        mov   a,y
18bc: d5 a1 f2  mov   $f2a1+x,a
18bf: 6f        ret

; vcmd c8 - portamento
18c0: bc        inc   a
18c1: d5 60 f3  mov   $f360+x,a
18c4: 3f 47 07  call  $0747
18c7: d5 50 01  mov   $0150+x,a
18ca: 6f        ret

; vcmd da - transpose (relative)
18cb: 60        clrc
18cc: 95 61 f3  adc   a,$f361+x
; vcmd d9 - transpose (absolute)
18cf: d5 61 f3  mov   $f361+x,a
18d2: 6f        ret

; vcmd f7 - echo feedback
18d3: e3 89 03  bbs7  $89,$18d9
18d6: e8 30     mov   a,#$30
18d8: ec e8 00  mov   y,$00e8
;18d9:   e8 00  mov   a,#$00
18db: c4 78     mov   $78,a
18dd: c4 8f     mov   $8f,a
18df: e4 a6     mov   a,$a6
18e1: eb 78     mov   y,$78
18e3: f0 13     beq   $18f8
18e5: 48 80     eor   a,#$80
18e7: ea 76 e0  not1  $0076,7
18ea: 80        setc
18eb: a4 76     sbc   a,$76
18ed: ea 76 e0  not1  $0076,7
18f0: 3f 38 0f  call  $0f38
18f3: f8 a7     mov   x,$a7
18f5: da 79     movw  $79,ya
18f7: 6f        ret

18f8: c4 76     mov   $76,a
18fa: 6f        ret

; vcmd f8 - echo FIR
18fb: e3 89 03  bbs7  $89,$1901
18fe: e8 30     mov   a,#$30
1900: ec e8 00  mov   y,$00e8
;1901:   e8 00  mov   a,#$00
1903: c4 77     mov   $77,a
1905: c4 8f     mov   $8f,a
1907: e4 a6     mov   a,$a6
1909: 28 03     and   a,#$03
190b: bc        inc   a
190c: 1c        asl   a
190d: 1c        asl   a
190e: 1c        asl   a
190f: fd        mov   y,a
1910: cd 10     mov   x,#$10
1912: e4 77     mov   a,$77
1914: f0 27     beq   $193d
1916: e8 00     mov   a,#$00
1918: d4 63     mov   $63+x,a
191a: f4 64     mov   a,$64+x
191c: 48 80     eor   a,#$80
191e: c4 9c     mov   $9c,a
1920: f6 5d 1e  mov   a,$1e5d+y
1923: 48 80     eor   a,#$80
1925: 80        setc
1926: a4 9c     sbc   a,$9c
1928: 6d        push  y
1929: 4d        push  x
192a: 3f 38 0f  call  $0f38
192d: ce        pop   x
192e: d5 fe 00  mov   $00fe+x,a
1931: dd        mov   a,y
1932: d5 ff 00  mov   $00ff+x,a
1935: ee        pop   y
1936: dc        dec   y
1937: 1d        dec   x
1938: 1d        dec   x
1939: d0 db     bne   $1916
193b: 2f 0a     bra   $1947
193d: f6 5d 1e  mov   a,$1e5d+y
1940: d4 64     mov   $64+x,a
1942: dc        dec   y
1943: 1d        dec   x
1944: 1d        dec   x
1945: d0 f6     bne   $193d
1947: f8 a7     mov   x,$a7
1949: 6f        ret

; vcmd c9 - vibrato on
194a: c8 10     cmp   x,#$10
194c: 90 08     bcc   $1956
194e: 8d 00     mov   y,#$00
1950: cd 0c     mov   x,#$0c
1952: 9e        div   ya,x
1953: f8 a7     mov   x,$a7
1955: dd        mov   a,y
1956: d5 10 01  mov   $0110+x,a
1959: 3f 47 07  call  $0747
195c: d5 e0 f2  mov   $f2e0+x,a
195f: 3f 47 07  call  $0747
1962: d5 51 01  mov   $0151+x,a
1965: 28 3f     and   a,#$3f
1967: 80        setc
1968: 3c        rol   a
1969: 78 c0 a6  cmp   $a6,#$c0
196c: b0 07     bcs   $1975
196e: 78 80 a6  cmp   $a6,#$80
1971: 90 02     bcc   $1975
1973: 48 ff     eor   a,#$ff
1975: d5 00 f4  mov   $f400+x,a
1978: c8 10     cmp   x,#$10
197a: b0 03     bcs   $197f
197c: e4 24     mov   a,$24
197e: ec e4 25  mov   y,$25e4
1981: 24 92     and   a,$92
1983: f0 0a     beq   $198f
1985: f5 e0 f4  mov   a,$f4e0+x
1988: c4 b4     mov   $b4,a
198a: f5 e1 f4  mov   a,$f4e1+x
198d: c4 b5     mov   $b5,a
198f: c8 10     cmp   x,#$10
1991: b0 04     bcs   $1997
1993: 8d 00     mov   y,#$00
1995: 2f 04     bra   $199b
1997: f5 10 01  mov   a,$0110+x
199a: fd        mov   y,a
199b: f6 52 1e  mov   a,$1e52+y
199e: fd        mov   y,a
199f: d0 04     bne   $19a5
19a1: ba b4     movw  ya,$b4
19a3: 2f 11     bra   $19b6
19a5: cb 9e     mov   $9e,y
19a7: e4 b5     mov   a,$b5
19a9: cf        mul   ya
19aa: da 9c     movw  $9c,ya
19ac: e4 b4     mov   a,$b4
19ae: eb 9e     mov   y,$9e
19b0: cf        mul   ya
19b1: dd        mov   a,y
19b2: 8d 00     mov   y,#$00
19b4: 7a 9c     addw  ya,$9c
19b6: d5 00 f3  mov   $f300+x,a
19b9: dd        mov   a,y
19ba: d5 01 f3  mov   $f301+x,a
19bd: f5 21 f2  mov   a,$f221+x
19c0: 28 70     and   a,#$70
19c2: c4 a6     mov   $a6,a
19c4: c8 10     cmp   x,#$10
19c6: 90 04     bcc   $19cc
19c8: e8 00     mov   a,#$00
19ca: 2f 03     bra   $19cf
19cc: f5 10 01  mov   a,$0110+x
19cf: d5 11 01  mov   $0111+x,a
19d2: f0 02     beq   $19d6
19d4: e8 07     mov   a,#$07
19d6: 04 a6     or    a,$a6
19d8: d5 21 f2  mov   $f221+x,a
19db: e8 01     mov   a,#$01
19dd: d5 e1 f2  mov   $f2e1+x,a
19e0: 6f        ret

; vcmd ca - vibrato off
19e1: d5 51 01  mov   $0151+x,a
19e4: d5 c0 f4  mov   $f4c0+x,a
19e7: d5 c1 f4  mov   $f4c1+x,a
19ea: 6f        ret

; vcmd cb - tremolo on
19eb: d5 30 01  mov   $0130+x,a
19ee: 3f 47 07  call  $0747
19f1: d5 20 f3  mov   $f320+x,a
19f4: 3f 47 07  call  $0747
19f7: d5 70 01  mov   $0170+x,a
19fa: 28 3f     and   a,#$3f
19fc: 80        setc
19fd: 3c        rol   a
19fe: 78 c0 a6  cmp   $a6,#$c0
1a01: b0 07     bcs   $1a0a
1a03: 78 80 a6  cmp   $a6,#$80
1a06: 90 02     bcc   $1a0a
1a08: 48 ff     eor   a,#$ff
1a0a: d5 40 f4  mov   $f440+x,a
1a0d: e8 01     mov   a,#$01
1a0f: d5 21 f3  mov   $f321+x,a
1a12: f5 21 f2  mov   a,$f221+x
1a15: 28 07     and   a,#$07
1a17: c4 a6     mov   $a6,a
1a19: f5 30 01  mov   a,$0130+x
1a1c: d5 31 01  mov   $0131+x,a
1a1f: f0 02     beq   $1a23
1a21: e8 70     mov   a,#$70
1a23: 04 a6     or    a,$a6
1a25: d5 21 f2  mov   $f221+x,a
1a28: 6f        ret

; vcmd cc - tremolo off
1a29: d5 70 01  mov   $0170+x,a
1a2c: d5 60 f4  mov   $f460+x,a
1a2f: 6f        ret

; vcmd cd - panpot LFO on
1a30: 60        clrc
1a31: bc        inc   a
1a32: f0 08     beq   $1a3c
1a34: 28 fe     and   a,#$fe
1a36: d0 05     bne   $1a3d
1a38: e8 02     mov   a,#$02
1a3a: 2f 01     bra   $1a3d
1a3c: 80        setc
1a3d: d5 40 f3  mov   $f340+x,a
1a40: 7c        ror   a
1a41: d5 41 f3  mov   $f341+x,a
1a44: fd        mov   y,a
1a45: 3f 47 07  call  $0747
1a48: 1c        asl   a
1a49: e4 a6     mov   a,$a6
1a4b: 28 7f     and   a,#$7f
1a4d: 90 02     bcc   $1a51
1a4f: 48 7f     eor   a,#$7f
1a51: c4 9c     mov   $9c,a
1a53: dd        mov   a,y
1a54: 10 05     bpl   $1a5b
1a56: 8f 00 9d  mov   $9d,#$00
1a59: 2f 13     bra   $1a6e
1a5b: 5d        mov   x,a
1a5c: 8d 00     mov   y,#$00
1a5e: e4 9c     mov   a,$9c
1a60: 9e        div   ya,x
1a61: c4 9d     mov   $9d,a
1a63: e8 00     mov   a,#$00
1a65: 9e        div   ya,x
1a66: c4 9c     mov   $9c,a
1a68: ba 9c     movw  ya,$9c
1a6a: d0 02     bne   $1a6e
1a6c: ab 9c     inc   $9c
1a6e: 90 08     bcc   $1a78
1a70: 58 ff 9c  eor   $9c,#$ff
1a73: 58 ff 9d  eor   $9d,#$ff
1a76: 3a 9c     incw  $9c
1a78: f8 a7     mov   x,$a7
1a7a: e4 9c     mov   a,$9c
1a7c: d5 e0 f3  mov   $f3e0+x,a
1a7f: e4 9d     mov   a,$9d
1a81: d5 e1 f3  mov   $f3e1+x,a
1a84: e4 a6     mov   a,$a6
; vcmd ce - panpot LFO off
1a86: d5 71 01  mov   $0171+x,a
1a89: e8 00     mov   a,#$00
1a8b: d5 80 f4  mov   $f480+x,a
1a8e: d5 81 f4  mov   $f481+x,a
1a91: 6f        ret

; vcmd d7 - increase octave
1a92: f5 00 f2  mov   a,$f200+x
1a95: 60        clrc
1a96: 88 0c     adc   a,#$0c
1a98: d5 00 f2  mov   $f200+x,a
1a9b: 6f        ret

; vcmd d8 - decrease octave
1a9c: f5 00 f2  mov   a,$f200+x
1a9f: 80        setc
1aa0: a8 0c     sbc   a,#$0c
1aa2: d5 00 f2  mov   $f200+x,a
1aa5: 6f        ret

; vcmd d6 - set octave
1aa6: 8d 0c     mov   y,#$0c
1aa8: cf        mul   ya
1aa9: d5 00 f2  mov   $f200+x,a
1aac: 6f        ret

; vcmd d4 - echo on
1aad: c8 10     cmp   x,#$10
1aaf: b0 05     bcs   $1ab6
1ab1: 09 92 54  or    ($54),($92)
1ab4: 2f 03     bra   $1ab9
1ab6: 09 92 55  or    ($55),($92)
1ab9: ba 54     movw  ya,$54
1abb: 3f 9c 07  call  $079c
1abe: c4 8a     mov   $8a,a
1ac0: 6f        ret

; vcmd d5 - echo off
1ac1: e4 92     mov   a,$92
1ac3: c8 10     cmp   x,#$10
1ac5: b0 05     bcs   $1acc
1ac7: 4e 54 00  tclr1 $0054
1aca: 2f ed     bra   $1ab9
1acc: 4e 55 00  tclr1 $0055
1acf: 2f e8     bra   $1ab9

; vcmd d0 - noise on
1ad1: c8 10     cmp   x,#$10
1ad3: b0 05     bcs   $1ada
1ad5: 09 92 56  or    ($56),($92)
1ad8: 2f 03     bra   $1add
1ada: 09 92 57  or    ($57),($92)
1add: e4 8d     mov   a,$8d
1adf: 28 e0     and   a,#$e0
1ae1: 2d        push  a
1ae2: e4 86     mov   a,$86
1ae4: 24 57     and   a,$57
1ae6: ae        pop   a
1ae7: d0 04     bne   $1aed
1ae9: 04 62     or    a,$62
1aeb: 2f 02     bra   $1aef
1aed: 04 63     or    a,$63
1aef: c4 8d     mov   $8d,a
1af1: ba 56     movw  ya,$56
1af3: 3f 9c 07  call  $079c
1af6: c4 8b     mov   $8b,a
1af8: 6f        ret

; vcmd d1 - noise off
1af9: e4 92     mov   a,$92
1afb: c8 10     cmp   x,#$10
1afd: b0 05     bcs   $1b04
1aff: 4e 56 00  tclr1 $0056
1b02: 2f d9     bra   $1add
1b04: 4e 57 00  tclr1 $0057
1b07: 2f d4     bra   $1add

; vcmd cf - set noise frequency
1b09: 28 1f     and   a,#$1f
1b0b: c8 10     cmp   x,#$10
1b0d: b0 0d     bcs   $1b1c
1b0f: 64 a6     cmp   a,$a6
1b11: f0 05     beq   $1b18
1b13: 60        clrc
1b14: 84 62     adc   a,$62
1b16: 28 1f     and   a,#$1f
1b18: c4 62     mov   $62,a
1b1a: 2f c1     bra   $1add
1b1c: 64 a6     cmp   a,$a6
1b1e: f0 05     beq   $1b25
1b20: 60        clrc
1b21: 84 63     adc   a,$63
1b23: 28 1f     and   a,#$1f
1b25: c4 63     mov   $63,a
1b27: 2f b4     bra   $1add

; vcmd d2 - pitchmod on
1b29: c8 10     cmp   x,#$10
1b2b: b0 05     bcs   $1b32
1b2d: 09 92 58  or    ($58),($92)
1b30: 2f 10     bra   $1b42
1b32: e4 92     mov   a,$92
1b34: 28 55     and   a,#$55
1b36: d0 0a     bne   $1b42
1b38: e4 92     mov   a,$92
1b3a: 5c        lsr   a
1b3b: 24 86     and   a,$86
1b3d: f0 03     beq   $1b42
1b3f: 09 92 59  or    ($59),($92)
1b42: ba 58     movw  ya,$58
1b44: 3f 9c 07  call  $079c
1b47: c4 8c     mov   $8c,a
1b49: 6f        ret

; vcmd d3 - pitchmod off
1b4a: e4 92     mov   a,$92
1b4c: c8 10     cmp   x,#$10
1b4e: b0 05     bcs   $1b55
1b50: 4e 58 00  tclr1 $0058
1b53: 2f ed     bra   $1b42
1b55: 4e 59 00  tclr1 $0059
1b58: 2f e8     bra   $1b42

; vcmd fb - rhythm kit on
1b5a: 09 92 7c  or    ($7c),($92)
1b5d: 6f        ret

; vcmd fc - rhythm kit off
1b5e: e4 92     mov   a,$92
1b60: 4e 7c 00  tclr1 $007c
1b63: 6f        ret

; vcmd dc - instrument
1b64: d5 01 f2  mov   $f201+x,a
1b67: 1c        asl   a
1b68: fd        mov   y,a
1b69: f6 00 21  mov   a,$2100+y
1b6c: d5 80 f3  mov   $f380+x,a         ; per-instrument tuning (signed)
1b6f: f6 01 21  mov   a,$2101+y
1b72: d5 81 f3  mov   $f381+x,a         ; per-instrument tuning (fractional) (unsigned)
1b75: f6 80 21  mov   a,$2180+y         ; default ADSR(1)
1b78: d5 00 f5  mov   $f500+x,a
1b7b: f6 81 21  mov   a,$2181+y         ; default ADSR(2)
1b7e: d5 01 f5  mov   $f501+x,a
1b81: 6f        ret

1b82: f5 01 f2  mov   a,$f201+x         ; instrument #
1b85: fd        mov   y,a
1b86: 7d        mov   a,x
1b87: 9f        xcn   a
1b88: 5c        lsr   a
1b89: 08 04     or    a,#$04
1b8b: c4 f2     mov   $f2,a
1b8d: cb f3     mov   $f3,y             ; SRCN
1b8f: 2f 10     bra   $1ba1
; vcmd dd - attack rate
1b91: 28 0f     and   a,#$0f
1b93: c4 a6     mov   $a6,a
1b95: f5 00 f5  mov   a,$f500+x
1b98: 28 70     and   a,#$70
1b9a: 04 a6     or    a,$a6
1b9c: 08 80     or    a,#$80
1b9e: d5 00 f5  mov   $f500+x,a
1ba1: c8 10     cmp   x,#$10
1ba3: b0 07     bcs   $1bac
1ba5: e4 86     mov   a,$86
1ba7: 24 92     and   a,$92
1ba9: f0 01     beq   $1bac
1bab: 6f        ret

1bac: 7d        mov   a,x
1bad: 9f        xcn   a
1bae: 5c        lsr   a
1baf: 08 05     or    a,#$05
1bb1: fd        mov   y,a
1bb2: f5 00 f5  mov   a,$f500+x
1bb5: 3f 97 07  call  $0797             ; ADSR(1)
1bb8: fc        inc   y
1bb9: f5 01 f5  mov   a,$f501+x
1bbc: 5f 97 07  jmp   $0797             ; ADSR(2)

; vcmd de - decay rate
1bbf: 28 07     and   a,#$07
1bc1: 9f        xcn   a
1bc2: c4 a6     mov   $a6,a
1bc4: f5 00 f5  mov   a,$f500+x
1bc7: 28 0f     and   a,#$0f
1bc9: 04 a6     or    a,$a6
1bcb: 08 80     or    a,#$80
1bcd: d5 00 f5  mov   $f500+x,a
1bd0: 2f cf     bra   $1ba1
; vcmd df - sustain level
1bd2: 28 07     and   a,#$07
1bd4: 9f        xcn   a
1bd5: 1c        asl   a
1bd6: c4 a6     mov   $a6,a
1bd8: f5 01 f5  mov   a,$f501+x
1bdb: 28 1f     and   a,#$1f
1bdd: 04 a6     or    a,$a6
1bdf: d5 01 f5  mov   $f501+x,a
1be2: 2f bd     bra   $1ba1
; vcmd e0 - sustain rate
1be4: 28 1f     and   a,#$1f
1be6: c4 a6     mov   $a6,a
1be8: f5 01 f5  mov   a,$f501+x
1beb: 28 e0     and   a,#$e0
1bed: 04 a6     or    a,$a6
1bef: d5 01 f5  mov   $f501+x,a
1bf2: 2f ad     bra   $1ba1
; vcmd e1 - default ADSR
1bf4: f5 01 f2  mov   a,$f201+x         ; instrument #
1bf7: 1c        asl   a
1bf8: fd        mov   y,a
1bf9: f6 80 21  mov   a,$2180+y
1bfc: d5 00 f5  mov   $f500+x,a
1bff: f6 81 21  mov   a,$2181+y
1c02: d5 01 f5  mov   $f501+x,a
1c05: 2f 9a     bra   $1ba1

; vcmd e4 - slur on
1c07: e4 92     mov   a,$92
1c09: c8 10     cmp   x,#$10
1c0b: b0 07     bcs   $1c14
1c0d: 0e 5c 00  tset1 $005c
1c10: 4e 5e 00  tclr1 $005e
1c13: 6f        ret

1c14: 0e 5d 00  tset1 $005d
1c17: 4e 5f 00  tclr1 $005f
1c1a: 6f        ret

1c1b: e4 92     mov   a,$92
1c1d: c8 10     cmp   x,#$10
1c1f: b0 07     bcs   $1c28
1c21: 4e 5c 00  tclr1 $005c
1c24: 4e 60 00  tclr1 $0060
1c27: 6f        ret

1c28: 4e 5d 00  tclr1 $005d
1c2b: 4e 61 00  tclr1 $0061
1c2e: 6f        ret

; vcmd e6 - legato on
1c2f: e4 92     mov   a,$92
1c31: c8 10     cmp   x,#$10
1c33: b0 04     bcs   $1c39
1c35: 0e 60 00  tset1 $0060
1c38: 6f        ret

1c39: 0e 61 00  tset1 $0061
1c3c: 6f        ret

; vcmd e9 - goto address in $3100+A*4
1c3d: 8d 00     mov   y,#$00
1c3f: 2f 02     bra   $1c43
; vcmd ea - goto address in $3102+A*4
1c41: 8d 02     mov   y,#$02
1c43: 3f 51 1c  call  $1c51
1c46: d4 02     mov   $02+x,a
1c48: db 03     mov   $03+x,y
1c4a: dd        mov   a,y
1c4b: d0 03     bne   $1c50
1c4d: 5f 1a 1e  jmp   $1e1a

1c50: 6f        ret

; get song ptr from table at 3100, indexed by A width 4, Y selects 0 or 2
1c51: 8f 00 97  mov   $97,#$00
1c54: 1c        asl   a
1c55: 2b 97     rol   $97
1c57: 1c        asl   a
1c58: 2b 97     rol   $97
1c5a: c4 96     mov   $96,a             ; $96/7 = A * 4
1c5c: dd        mov   a,y
1c5d: 8d 31     mov   y,#$31
1c5f: 7a 96     addw  ya,$96
1c61: da 96     movw  $96,ya            ; $92/3 += #$3100 or #$3102
1c63: 8d 00     mov   y,#$00
1c65: f7 96     mov   a,($96)+y
1c67: 2d        push  a
1c68: fc        inc   y
1c69: f7 96     mov   a,($96)+y
1c6b: fd        mov   y,a
1c6c: ae        pop   a
1c6d: 6f        ret

1c6e: f7 94     mov   a,($94)+y
1c70: 2f 04     bra   $1c76
1c72: f7 94     mov   a,($94)+y
1c74: 8d 02     mov   y,#$02
1c76: 3f 51 1c  call  $1c51
1c79: da 94     movw  $94,ya
1c7b: dd        mov   a,y
1c7c: d0 04     bne   $1c82
1c7e: ae        pop   a
1c7f: ae        pop   a
1c80: e8 eb     mov   a,#$eb
1c82: 6f        ret

; vcmd f6 - goto
1c83: fd        mov   y,a
1c84: 3f 47 07  call  $0747
1c87: dd        mov   a,y
1c88: eb a6     mov   y,$a6
1c8a: 7a 00     addw  ya,$00
1c8c: d4 02     mov   $02+x,a
1c8e: db 03     mov   $03+x,y
1c90: 6f        ret

1c91: f7 94     mov   a,($94)+y
1c93: 2d        push  a
1c94: fc        inc   y
1c95: f7 94     mov   a,($94)+y
1c97: fd        mov   y,a
1c98: ae        pop   a
1c99: 7a 00     addw  ya,$00
1c9b: da 94     movw  $94,ya
1c9d: 6f        ret

; vcmd f5 - conditional jump in repeat
1c9e: c4 9e     mov   $9e,a             ; arg1 - target repeat count
1ca0: 3f 47 07  call  $0747
1ca3: c4 9c     mov   $9c,a
1ca5: 3f 47 07  call  $0747
1ca8: c4 9d     mov   $9d,a             ; arg2/3 - target address
1caa: fb 27     mov   y,$27+x
1cac: f6 20 f5  mov   a,$f520+y
1caf: 2e 9e 1b  cbne  $9e,$1ccd         ; do nothing if repeat count doesn't match
1cb2: f6 40 f5  mov   a,$f540+y         ; get decremental repeat counter
1cb5: 9c        dec   a
1cb6: d0 0d     bne   $1cc5
; decrement stack ptr (only work for the last time)
1cb8: 7d        mov   a,x
1cb9: 1c        asl   a
1cba: 9c        dec   a
1cbb: 9b 27     dec   $27+x
1cbd: de 27 05  cbne  $27+x,$1cc5
1cc0: 60        clrc
1cc1: 88 04     adc   a,#$04
1cc3: d4 27     mov   $27+x,a
; goto target address
1cc5: ba 9c     movw  ya,$9c
1cc7: 7a 00     addw  ya,$00
1cc9: d4 02     mov   $02+x,a
1ccb: db 03     mov   $03+x,y
1ccd: 6f        ret

1cce: eb bb     mov   y,$bb
1cd0: f6 20 f5  mov   a,$f520+y
1cd3: 8d 00     mov   y,#$00
1cd5: 77 94     cmp   a,($94)+y
1cd7: d0 19     bne   $1cf2
1cd9: eb bb     mov   y,$bb
1cdb: f6 40 f5  mov   a,$f540+y
1cde: 9c        dec   a
1cdf: d0 0c     bne   $1ced
1ce1: 7d        mov   a,x
1ce2: 1c        asl   a
1ce3: 9c        dec   a
1ce4: 8b bb     dec   $bb
1ce6: 2e bb 04  cbne  $bb,$1ced
1ce9: 60        clrc
1cea: 98 04 bb  adc   $bb,#$04
1ced: 8d 01     mov   y,#$01
1cef: 5f 91 1c  jmp   $1c91

1cf2: 3a 94     incw  $94
1cf4: 3a 94     incw  $94
1cf6: 3a 94     incw  $94
1cf8: 6f        ret

; vcmd e2 - repeat start
1cf9: 7d        mov   a,x
1cfa: 1c        asl   a
1cfb: 60        clrc
1cfc: 88 04     adc   a,#$04
1cfe: bb 27     inc   $27+x             ; increment stack ptr (nest level)
1d00: de 27 05  cbne  $27+x,$1d08       ; (it's actually a circular buffer)
1d03: 80        setc
1d04: a8 04     sbc   a,#$04            ; set 0 if the nest level exceeds 4
1d06: d4 27     mov   $27+x,a
1d08: fb 27     mov   y,$27+x
1d0a: e4 a6     mov   a,$a6             ; arg1 - repeat count
1d0c: f0 01     beq   $1d0f
1d0e: bc        inc   a                 ; increment unless 0
1d0f: d6 40 f5  mov   $f540+y,a         ; set repeat count
1d12: c8 10     cmp   x,#$10
1d14: b0 05     bcs   $1d1b
1d16: e8 01     mov   a,#$01
1d18: d6 20 f5  mov   $f520+y,a         ; for real voices: store 1 in $f520+y (incremental repeat counter)
1d1b: dd        mov   a,y
1d1c: 1c        asl   a
1d1d: fd        mov   y,a
1d1e: f4 02     mov   a,$02+x
1d20: d6 80 f5  mov   $f580+y,a
1d23: f4 03     mov   a,$03+x
1d25: d6 81 f5  mov   $f581+y,a         ; set repeat beginning address
1d28: 6f        ret

; vcmd e3 - repeat end
1d29: fb 27     mov   y,$27+x
1d2b: c8 10     cmp   x,#$10
1d2d: b0 07     bcs   $1d36
1d2f: f6 20 f5  mov   a,$f520+y
1d32: bc        inc   a
1d33: d6 20 f5  mov   $f520+y,a         ; for real voices: increment $f520+y
1d36: f6 40 f5  mov   a,$f540+y
1d39: f0 15     beq   $1d50             ; repeat count 0 = infinite loop
1d3b: 9c        dec   a
1d3c: d0 0f     bne   $1d4d
; repeat end
1d3e: 7d        mov   a,x
1d3f: 1c        asl   a
1d40: 9c        dec   a
1d41: 9b 27     dec   $27+x             ; decrement stack ptr
1d43: de 27 17  cbne  $27+x,$1d5d
1d46: 60        clrc
1d47: 88 04     adc   a,#$04            ; correct overflow
1d49: d4 27     mov   $27+x,a
1d4b: 2f 10     bra   $1d5d             ; next
; repeat continue
1d4d: d6 40 f5  mov   $f540+y,a         ; update repeat counter
1d50: dd        mov   a,y
1d51: 1c        asl   a
1d52: fd        mov   y,a
1d53: f6 80 f5  mov   a,$f580+y
1d56: d4 02     mov   $02+x,a
1d58: f6 81 f5  mov   a,$f581+y
1d5b: d4 03     mov   $03+x,a           ; goto repeat beginning
1d5d: 6f        ret

1d5e: eb bb     mov   y,$bb
1d60: f6 40 f5  mov   a,$f540+y
1d63: f0 11     beq   $1d76
1d65: 9c        dec   a
1d66: d0 0e     bne   $1d76
1d68: 7d        mov   a,x
1d69: 1c        asl   a
1d6a: 9c        dec   a
1d6b: 8b bb     dec   $bb
1d6d: 2e bb 13  cbne  $bb,$1d83
1d70: 60        clrc
1d71: 98 04 bb  adc   $bb,#$04
1d74: 2f 0d     bra   $1d83
1d76: dd        mov   a,y
1d77: 1c        asl   a
1d78: fd        mov   y,a
1d79: f6 80 f5  mov   a,$f580+y
1d7c: c4 94     mov   $94,a
1d7e: f6 81 f5  mov   a,$f581+y
1d81: c4 95     mov   $95,a
1d83: 6f        ret

; vcmd e8 - force next note length
1d84: d4 26     mov   $26+x,a
1d86: 6f        ret

; vcmd db - tuning
1d87: d5 a0 f3  mov   $f3a0+x,a
1d8a: 6f        ret

; vcmd f9 - (related to vcmd fa)
1d8b: 28 0f     and   a,#$0f
1d8d: c4 7b     mov   $7b,a
1d8f: 6f        ret

; vcmd fa - CPU-controled branch (used for Magical Tank Battle SFX)
1d90: 28 0f     and   a,#$0f
1d92: c4 a6     mov   $a6,a
1d94: 64 d4     cmp   a,$d4
1d96: 90 02     bcc   $1d9a
1d98: c4 d4     mov   $d4,a
1d9a: e4 d3     mov   a,$d3
1d9c: 64 a6     cmp   a,$a6
1d9e: b0 0d     bcs   $1dad
1da0: bb 02     inc   $02+x
1da2: d0 02     bne   $1da6
1da4: bb 03     inc   $03+x
1da6: bb 02     inc   $02+x
1da8: d0 02     bne   $1dac
1daa: bb 03     inc   $03+x
1dac: 6f        ret
; redirect to goto vcmd
1dad: 3f 47 07  call  $0747
1db0: 5f 83 1c  jmp   $1c83

1db3: f7 94     mov   a,($94)+y
1db5: c4 a6     mov   $a6,a
1db7: e4 d3     mov   a,$d3
1db9: 64 a6     cmp   a,$a6
1dbb: b0 07     bcs   $1dc4
1dbd: 3a 94     incw  $94
1dbf: 3a 94     incw  $94
1dc1: 3a 94     incw  $94
1dc3: 6f        ret

1dc4: fc        inc   y
1dc5: 5f 91 1c  jmp   $1c91

; vcmd fd - play SFX (used for Surprise of the Death Eaters and Jungle)
1dc8: 43 88 3e  bbs2  $88,$1e09         ; arg1 is around 12x~13x
1dcb: c4 8f     mov   $8f,a
1dcd: f5 81 f2  mov   a,$f281+x
1dd0: c4 90     mov   $90,a
1dd2: 4d        push  x
1dd3: e4 92     mov   a,$92
1dd5: 2d        push  a
1dd6: 7d        mov   a,x
1dd7: 28 0e     and   a,#$0e
1dd9: 5d        mov   x,a
1dda: e8 1d     mov   a,#$1d
1ddc: 2d        push  a
1ddd: e8 e3     mov   a,#$e3
1ddf: 2d        push  a
1de0: 1f 0a 1e  jmp   ($1e0a+x)

1de3: ae        pop   a
1de4: c4 92     mov   $92,a
1de6: ae        pop   a
1de7: 5d        mov   x,a
1de8: 60        clrc
1de9: 88 10     adc   a,#$10
1deb: 28 1c     and   a,#$1c
1ded: fd        mov   y,a
1dee: f5 a1 f2  mov   a,$f2a1+x
1df1: d6 a1 f2  mov   $f2a1+y,a
1df4: d6 a3 f2  mov   $f2a3+y,a
1df7: f5 a0 f2  mov   a,$f2a0+x
1dfa: d6 a0 f2  mov   $f2a0+y,a
1dfd: d6 a2 f2  mov   $f2a2+y,a
1e00: f5 c1 f2  mov   a,$f2c1+x
1e03: d6 c1 f2  mov   $f2c1+y,a
1e06: d6 c3 f2  mov   $f2c3+y,a
1e09: 6f        ret

1e0a: dw $0dbb  ; 
1e0c: dw $0dbb  ; 
1e0e: dw $0db3  ; 
1e10: dw $0db3  ; 
1e12: dw $0dab  ; 
1e14: dw $0dab  ; 
1e16: dw $0da3  ; 
1e18: dw $0da3  ; 

; vcmd eb,ec-ee,fe-ff - end of track
1e1a: ae        pop   a
1e1b: ae        pop   a
1e1c: 62 89     set3  $89
1e1e: e4 92     mov   a,$92
1e20: c8 10     cmp   x,#$10
1e22: b0 05     bcs   $1e29
1e24: 4e 53 00  tclr1 $0053
1e27: 2f 06     bra   $1e2f
1e29: 4e 86 00  tclr1 $0086
1e2c: 4e 5e 00  tclr1 $005e
1e2f: 3f f9 1a  call  $1af9
1e32: 3f 4a 1b  call  $1b4a
1e35: 5f c1 1a  jmp   $1ac1

; pitch table
1e38: dw $0879  ; c
1e3a: dw $08fa  ; c#
1e3c: dw $0983  ; d
1e3e: dw $0a14  ; d#
1e40: dw $0aad  ; e
1e42: dw $0b50  ; f
1e44: dw $0bfc  ; f#
1e46: dw $0cb2  ; g
1e48: dw $0d74  ; g#
1e4a: dw $0e41  ; a
1e4c: dw $0f1a  ; a#
1e4e: dw $1000  ; b
1e50: dw $10f3  ; c'
1e52: dw $1f0f

1e54: db $30,$42,$55,$6a,$7f,$96,$ae,$c8,$e3,$00

; echo FIR filter coeff tables
1e5e: db $7f,$00,$00,$00,$00,$00,$00,$00
1e66: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1e6e: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1e76: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; duration table
1e7e: db $c0,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03

1e8c: db $eb,$ef
; sample
1e8e: db $02,$00,$00,$00,$00,$00,$00,$00,$00
1e97: db $c2,$00,$00,$00,$00,$00,$00,$00,$00
1ea0: db $c2,$00,$00,$00,$07,$77,$77,$77,$77
1ea9: db $c2,$77,$77,$77,$77,$77,$77,$77,$77
1eb2: db $c3,$77,$77,$77,$77,$77,$77,$77,$77
1ebb: db $02,$00,$00,$00,$00,$00,$00,$00,$00
1ec4: db $c2,$00,$00,$00,$00,$00,$00,$00,$00
1ecd: db $c2,$00,$00,$00,$00,$00,$00,$77,$77
1ed6: db $c2,$77,$77,$77,$77,$77,$77,$77,$77
1ed9: db $c3,$77,$77,$77,$77,$77,$77,$77,$77

; vcmd ef
1ee8: e8 30     mov   a,#$30
1eea: 8d 64     mov   y,#$64
1eec: 3f 97 07  call  $0797             ; Voice 6 SRCN = $30
1eef: 8d 74     mov   y,#$74
1ef1: 3f 97 07  call  $0797             ; Voice 7 SRCN = $30
1ef4: e5 60 21  mov   a,$2160
1ef7: d5 80 f3  mov   $f380+x,a
1efa: e5 61 21  mov   a,$2161
1efd: d5 81 f3  mov   $f381+x,a
1f00: e8 00     mov   a,#$00
1f02: d5 a0 f3  mov   $f3a0+x,a
1f05: e5 f1 f1  mov   a,$f1f1
1f08: 80        setc
1f09: a8 0a     sbc   a,#$0a
1f0b: 3f af 06  call  $06af
1f0e: e4 b4     mov   a,$b4
1f10: 8d 62     mov   y,#$62
1f12: 3f 97 07  call  $0797             ; Voice 6 P(L)
1f15: 8d 72     mov   y,#$72
1f17: 3f 97 07  call  $0797             ; Voice 7 P(L)
1f1a: e4 b5     mov   a,$b5
1f1c: 8d 63     mov   y,#$63
1f1e: 3f 97 07  call  $0797             ; Voice 6 P(H)
1f21: 8d 73     mov   y,#$73
1f23: 3f 97 07  call  $0797             ; Voice 7 P(H)
1f26: e5 e0 21  mov   a,$21e0
1f29: 8d 65     mov   y,#$65
1f2b: 3f 97 07  call  $0797             ; Voice 6 ADSR(1)
1f2e: 8d 75     mov   y,#$75
1f30: 3f 97 07  call  $0797             ; Voice 7 ADSR(1)
1f33: e5 e1 21  mov   a,$21e1
1f36: 8d 66     mov   y,#$66
1f38: 3f 97 07  call  $0797             ; Voice 6 ADSR(2)
1f3b: 8d 76     mov   y,#$76
1f3d: 3f 97 07  call  $0797             ; Voice 7 ADSR(2)
1f40: e5 f3 f1  mov   a,$f1f3
1f43: ec f4 f1  mov   y,$f1f4
1f46: da 9c     movw  $9c,ya
1f48: cf        mul   ya
1f49: dd        mov   a,y
1f4a: 5c        lsr   a
1f4b: 8d 61     mov   y,#$61
1f4d: 3f 97 07  call  $0797             ; Voice 6 VOL(R)
1f50: 8d 71     mov   y,#$71
1f52: 3f 97 07  call  $0797             ; Voice 7 VOL(R)
1f55: e4 9d     mov   a,$9d
1f57: 48 ff     eor   a,#$ff
1f59: eb 9c     mov   y,$9c
1f5b: cf        mul   ya
1f5c: dd        mov   a,y
1f5d: 5c        lsr   a
1f5e: 8d 60     mov   y,#$60
1f60: 3f 97 07  call  $0797             ; Voice 6 VOL(L)
1f63: 8d 70     mov   y,#$70
1f65: 3f 97 07  call  $0797             ; Voice 7 VOL(L)
1f68: e8 c0     mov   a,#$c0
1f6a: 4e 8a 00  tclr1 $008a
1f6d: 4e 8b 00  tclr1 $008b
1f70: 4e 8c 00  tclr1 $008c
1f73: e5 f5 f1  mov   a,$f1f5
1f76: 0e 55 00  tset1 $0055
1f79: 0e 8a 00  tset1 $008a
1f7c: e8 c0     mov   a,#$c0
1f7e: 0e 87 00  tset1 $0087
1f81: 4e 86 00  tclr1 $0086
1f84: 8d 4c     mov   y,#$4c
1f86: 3f 97 07  call  $0797             ; KOL
1f89: ae        pop   a
1f8a: ae        pop   a
1f8b: 62 89     set3  $89
1f8d: 6f        ret

1f8e: e4 8f     mov   a,$8f
1f90: d0 03     bne   $1f95
1f92: 52 88     clr2  $88
1f94: ec 42 88  mov   y,$8842
1f97: 6f        ret

1f98: 03 88 54  bbs0  $88,$1fef
1f9b: 33 88 51  bbc1  $88,$1fef
1f9e: ba e2     movw  ya,$e2
1fa0: 7a e4     addw  ya,$e4
1fa2: 7e e3     cmp   y,$e3
1fa4: da e2     movw  $e2,ya
1fa6: f0 38     beq   $1fe0
1fa8: dd        mov   a,y
1fa9: c4 9c     mov   $9c,a
1fab: 8d 40     mov   y,#$40
1fad: cf        mul   ya
1fae: dd        mov   a,y
1faf: 1c        asl   a
1fb0: c4 9d     mov   $9d,a
1fb2: 60        clrc
1fb3: 88 20     adc   a,#$20
1fb5: c4 df     mov   $df,a
1fb7: e8 60     mov   a,#$60
1fb9: 80        setc
1fba: a4 9d     sbc   a,$9d
1fbc: 48 ff     eor   a,#$ff
1fbe: bc        inc   a
1fbf: c4 de     mov   $de,a
1fc1: e4 4f     mov   a,$4f
1fc3: c4 9d     mov   $9d,a
1fc5: 4b 9d     lsr   $9d
1fc7: 1c        asl   a
1fc8: eb 9c     mov   y,$9c
1fca: cf        mul   ya
1fcb: dd        mov   a,y
1fcc: c4 9e     mov   $9e,a
1fce: 60        clrc
1fcf: 84 9d     adc   a,$9d
1fd1: c4 e0     mov   $e0,a
1fd3: e4 4f     mov   a,$4f
1fd5: 60        clrc
1fd6: 84 9d     adc   a,$9d
1fd8: 80        setc
1fd9: a4 9e     sbc   a,$9e
1fdb: 48 ff     eor   a,#$ff
1fdd: bc        inc   a
1fde: c4 e1     mov   $e1,a
1fe0: 8b e6     dec   $e6
1fe2: d0 0b     bne   $1fef
1fe4: 8f a0 e6  mov   $e6,#$a0
1fe7: 58 ff e4  eor   $e4,#$ff
1fea: 58 ff e5  eor   $e5,#$ff
1fed: 3a e4     incw  $e4
1fef: 6f        ret
