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
020f: 1a c4     decw  $c4
0211: 8d 2c     mov   y,#$2c
0213: 3f 1f 08  call  $081f
0216: 8d 3c     mov   y,#$3c
0218: 3f 1f 08  call  $081f
021b: cd 40     mov   x,#$40
021d: d5 6e f1  mov   $f16e+x,a
0220: d5 0c fe  mov   $fe0c+x,a
0223: d5 0d fe  mov   $fe0d+x,a
0226: d5 0e fe  mov   $fe0e+x,a
0229: d5 0f fe  mov   $fe0f+x,a
022c: 1d        dec   x
022d: 1d        dec   x
022e: 1d        dec   x
022f: 1d        dec   x
0230: d0 eb     bne   $021d
0232: e8 22     mov   a,#$22
0234: 8d 5d     mov   y,#$5d
0236: 3f 1f 08  call  $081f
0239: 8d 07     mov   y,#$07
023b: cd a0     mov   x,#$a0
023d: cb f2     mov   $f2,y
023f: d8 f3     mov   $f3,x
0241: dd        mov   a,y
0242: 60        clrc
0243: 88 10     adc   a,#$10
0245: fd        mov   y,a
0246: 10 f5     bpl   $023d
0248: 8f 30 f1  mov   $f1,#$30
024b: 8f 27 fa  mov   $fa,#$27
024e: 8f 80 fb  mov   $fb,#$80
0251: 8f 03 f1  mov   $f1,#$03
0254: 8f 05 8f  mov   $8f,#$05
0257: 3f dd 15  call  $15dd
025a: 8b 23     dec   $23
025c: 8f 07 c6  mov   $c6,#$07
025f: cd 06     mov   x,#$06
0261: e8 ff     mov   a,#$ff
0263: d5 5f f1  mov   $f15f+x,a
0266: bc        inc   a
0267: d5 64 f1  mov   $f164+x,a
026a: 1d        dec   x
026b: 1d        dec   x
026c: d0 f3     bne   $0261
026e: e8 4c     mov   a,#$4c
0270: c5 40 22  mov   $2240,a
0273: e8 20     mov   a,#$20
0275: c5 41 22  mov   $2241,a
0278: e8 55     mov   a,#$55
027a: c5 42 22  mov   $2242,a
027d: e8 20     mov   a,#$20
027f: c5 43 22  mov   $2243,a
0282: e8 ff     mov   a,#$ff
0284: c5 a0 23  mov   $23a0,a
0287: e8 e0     mov   a,#$e0
0289: c5 a1 23  mov   $23a1,a
028c: e8 e1     mov   a,#$e1
028e: c5 20 23  mov   $2320,a
0291: e8 00     mov   a,#$00
0293: c5 21 23  mov   $2321,a
0296: e8 40     mov   a,#$40
0298: c4 e6     mov   $e6,a
029a: c4 e7     mov   $e7,a
029c: e8 00     mov   a,#$00
029e: c5 00 fe  mov   $fe00,a
02a1: e8 02     mov   a,#$02
02a3: c4 e1     mov   $e1,a
02a5: 3f 3a 0c  call  $0c3a
02a8: eb fd     mov   y,$fd
02aa: f0 f9     beq   $02a5
02ac: 13 88 03  bbc0  $88,$02b2
02af: 23 88 06  bbs1  $88,$02b8
02b2: e4 4f     mov   a,$4f
02b4: c4 e8     mov   $e8,a
02b6: c4 e9     mov   $e9,a
02b8: 8d 13     mov   y,#$13
02ba: f6 97 19  mov   a,$1997+y
02bd: c4 f2     mov   $f2,a
02bf: f6 aa 19  mov   a,$19aa+y
02c2: 5d        mov   x,a
02c3: e6        mov   a,(x)
02c4: c4 f3     mov   $f3,a
02c6: fe f2     dbnz  y,$02ba
02c8: cb 23     mov   $23,y
02ca: cb 22     mov   $22,y
02cc: e3 89 05  bbs7  $89,$02d4
02cf: 3f a1 03  call  $03a1
02d2: 2f 03     bra   $02d7
02d4: 3f d0 16  call  $16d0
02d7: 83 88 cb  bbs4  $88,$02a5
02da: 8b c6     dec   $c6
02dc: d0 06     bne   $02e4
02de: 8f 07 c6  mov   $c6,#$07
02e1: 3f 2a 17  call  $172a
02e4: 3f 2a 05  call  $052a
02e7: 3f 8d 04  call  $048d
02ea: 3f 64 09  call  $0964
02ed: 83 88 b5  bbs4  $88,$02a5
02f0: cd 00     mov   x,#$00
02f2: 8f 01 92  mov   $92,#$01
02f5: e4 86     mov   a,$86
02f7: 04 87     or    a,$87
02f9: 48 ff     eor   a,#$ff
02fb: 24 53     and   a,$53
02fd: 24 24     and   a,$24
02ff: c4 a4     mov   $a4,a
0301: e5 61 f1  mov   a,$f161
0304: c4 a9     mov   $a9,a
0306: 2f 0c     bra   $0314
0308: d8 a7     mov   $a7,x
030a: 3f a0 09  call  $09a0
030d: 3f 23 09  call  $0923
0310: 3d        inc   x
0311: 3d        inc   x
0312: 0b 92     asl   $92
0314: 4b a4     lsr   $a4
0316: b0 f0     bcs   $0308
0318: d0 f6     bne   $0310
031a: cd 10     mov   x,#$10
031c: 8f 01 92  mov   $92,#$01
031f: e4 86     mov   a,$86
0321: 24 25     and   a,$25
0323: 28 0f     and   a,#$0f
0325: c4 a4     mov   $a4,a
0327: e5 61 f1  mov   a,$f161
032a: c4 a9     mov   $a9,a
032c: 2f 0c     bra   $033a
032e: d8 a7     mov   $a7,x
0330: 3f a0 09  call  $09a0
0333: 3f 23 09  call  $0923
0336: 3d        inc   x
0337: 3d        inc   x
0338: 0b 92     asl   $92
033a: 4b a4     lsr   $a4
033c: b0 f0     bcs   $032e
033e: d0 f6     bne   $0336
0340: cd 18     mov   x,#$18
0342: 8f 10 92  mov   $92,#$10
0345: e4 86     mov   a,$86
0347: 28 30     and   a,#$30
0349: 24 25     and   a,$25
034b: 9f        xcn   a
034c: c4 a4     mov   $a4,a
034e: e5 65 f1  mov   a,$f165
0351: c4 a9     mov   $a9,a
0353: 2f 0c     bra   $0361
0355: d8 a7     mov   $a7,x
0357: 3f a0 09  call  $09a0
035a: 3f 23 09  call  $0923
035d: 3d        inc   x
035e: 3d        inc   x
035f: 0b 92     asl   $92
0361: 4b a4     lsr   $a4
0363: b0 f0     bcs   $0355
0365: d0 f6     bne   $035d
0367: cd 1c     mov   x,#$1c
0369: 8f 40 92  mov   $92,#$40
036c: e4 86     mov   a,$86
036e: 24 25     and   a,$25
0370: 28 c0     and   a,#$c0
0372: 9f        xcn   a
0373: 5c        lsr   a
0374: 5c        lsr   a
0375: c4 a4     mov   $a4,a
0377: e5 63 f1  mov   a,$f163
037a: c4 a9     mov   $a9,a
037c: 2f 0c     bra   $038a
037e: d8 a7     mov   $a7,x
0380: 3f a0 09  call  $09a0
0383: 3f 23 09  call  $0923
0386: 3d        inc   x
0387: 3d        inc   x
0388: 0b 92     asl   $92
038a: 4b a4     lsr   $a4
038c: b0 f0     bcs   $037e
038e: d0 f6     bne   $0386
0390: e8 00     mov   a,#$00
0392: fd        mov   y,a
0393: da d9     movw  $d9,ya
0395: 3f 64 09  call  $0964
0398: 3f 99 21  call  $2199
039b: 3f 03 0c  call  $0c03
039e: 5f a5 02  jmp   $02a5

03a1: eb 53     mov   y,$53
03a3: f0 02     beq   $03a7
03a5: eb 80     mov   y,$80
03a7: e4 86     mov   a,$86
03a9: da f6     movw  $f6,ya
03ab: e4 dc     mov   a,$dc
03ad: 9f        xcn   a
03ae: 04 7b     or    a,$7b
03b0: fd        mov   y,a
03b1: e8 00     mov   a,#$00
03b3: da f4     movw  $f4,ya
03b5: 6f        ret

03b6: 93 88 01  bbc4  $88,$03ba
03b9: 6f        ret

03ba: 13 88 03  bbc0  $88,$03c0
03bd: 23 88 06  bbs1  $88,$03c6
03c0: e4 4f     mov   a,$4f
03c2: c4 e8     mov   $e8,a
03c4: c4 e9     mov   $e9,a
03c6: 8d 13     mov   y,#$13
03c8: f6 97 19  mov   a,$1997+y
03cb: c4 f2     mov   $f2,a
03cd: f6 aa 19  mov   a,$19aa+y
03d0: 5d        mov   x,a
03d1: e6        mov   a,(x)
03d2: c4 f3     mov   $f3,a
03d4: fe f2     dbnz  y,$03c8
03d6: cb 23     mov   $23,y
03d8: cb 22     mov   $22,y
03da: 8b c6     dec   $c6
03dc: d0 06     bne   $03e4
03de: 8f 07 c6  mov   $c6,#$07
03e1: 3f 2a 17  call  $172a
03e4: 3f 2a 05  call  $052a
03e7: 3f 8d 04  call  $048d
03ea: cd 00     mov   x,#$00
03ec: 8f 01 92  mov   $92,#$01
03ef: e4 86     mov   a,$86
03f1: 04 87     or    a,$87
03f3: 48 ff     eor   a,#$ff
03f5: 24 53     and   a,$53
03f7: 24 24     and   a,$24
03f9: c4 a4     mov   $a4,a
03fb: e5 61 f1  mov   a,$f161
03fe: c4 a9     mov   $a9,a
0400: 2f 09     bra   $040b
0402: d8 a7     mov   $a7,x
0404: 3f a0 09  call  $09a0
0407: 3d        inc   x
0408: 3d        inc   x
0409: 0b 92     asl   $92
040b: 4b a4     lsr   $a4
040d: b0 f3     bcs   $0402
040f: d0 f6     bne   $0407
0411: cd 10     mov   x,#$10
0413: 8f 01 92  mov   $92,#$01
0416: e4 86     mov   a,$86
0418: 24 25     and   a,$25
041a: 28 0f     and   a,#$0f
041c: c4 a4     mov   $a4,a
041e: e5 61 f1  mov   a,$f161
0421: c4 a9     mov   $a9,a
0423: 2f 09     bra   $042e
0425: d8 a7     mov   $a7,x
0427: 3f a0 09  call  $09a0
042a: 3d        inc   x
042b: 3d        inc   x
042c: 0b 92     asl   $92
042e: 4b a4     lsr   $a4
0430: b0 f3     bcs   $0425
0432: d0 f6     bne   $042a
0434: cd 18     mov   x,#$18
0436: 8f 10 92  mov   $92,#$10
0439: e4 86     mov   a,$86
043b: 28 30     and   a,#$30
043d: 24 25     and   a,$25
043f: 9f        xcn   a
0440: c4 a4     mov   $a4,a
0442: e5 65 f1  mov   a,$f165
0445: c4 a9     mov   $a9,a
0447: 2f 09     bra   $0452
0449: d8 a7     mov   $a7,x
044b: 3f a0 09  call  $09a0
044e: 3d        inc   x
044f: 3d        inc   x
0450: 0b 92     asl   $92
0452: 4b a4     lsr   $a4
0454: b0 f3     bcs   $0449
0456: d0 f6     bne   $044e
0458: cd 1c     mov   x,#$1c
045a: 8f 40 92  mov   $92,#$40
045d: e4 86     mov   a,$86
045f: 24 25     and   a,$25
0461: 28 c0     and   a,#$c0
0463: 9f        xcn   a
0464: 5c        lsr   a
0465: 5c        lsr   a
0466: c4 a4     mov   $a4,a
0468: e5 63 f1  mov   a,$f163
046b: c4 a9     mov   $a9,a
046d: 2f 0c     bra   $047b
046f: d8 a7     mov   $a7,x
0471: 3f a0 09  call  $09a0
0474: 3f 23 09  call  $0923
0477: 3d        inc   x
0478: 3d        inc   x
0479: 0b 92     asl   $92
047b: 4b a4     lsr   $a4
047d: b0 f0     bcs   $046f
047f: d0 f6     bne   $0477
0481: e8 00     mov   a,#$00
0483: fd        mov   y,a
0484: da d9     movw  $d9,ya
0486: 3f 99 21  call  $2199
0489: 3f 03 0c  call  $0c03
048c: 6f        ret

048d: 52 89     clr2  $89
048f: ec fd 04  mov   y,$04fd
0492: a3 89 1f  bbs5  $89,$04b4
0495: e4 47     mov   a,$47
0497: eb ab     mov   y,$ab
0499: f0 12     beq   $04ad
049b: cf        mul   ya
049c: dd        mov   a,y
049d: e3 ab 0a  bbs7  $ab,$04aa
04a0: 1c        asl   a
04a1: 60        clrc
04a2: 84 47     adc   a,$47
04a4: 90 07     bcc   $04ad
04a6: e8 ff     mov   a,#$ff
04a8: 2f 03     bra   $04ad
04aa: d0 01     bne   $04ad
04ac: bc        inc   a
04ad: 60        clrc
04ae: 84 48     adc   a,$48
04b0: c4 48     mov   $48,a
04b2: 90 5c     bcc   $0510
04b4: cd 00     mov   x,#$00
04b6: 8f 01 92  mov   $92,#$01
04b9: fa 53 a4  mov   ($a4),($53)
04bc: 2f 46     bra   $0504
04be: d8 a7     mov   $a7,x
04c0: 9b 26     dec   $26+x
04c2: d0 0a     bne   $04ce
04c4: 72 89     clr3  $89
04c6: 3f ab 05  call  $05ab
04c9: 73 89 2e  bbc3  $89,$04fa
04cc: 2f 32     bra   $0500
04ce: 8d 00     mov   y,#$00
04d0: c8 10     cmp   x,#$10
04d2: b0 01     bcs   $04d5
04d4: e8 fc     mov   a,#$fc
04d6: e8 02     mov   a,#$02
04d8: de 26 1f  cbne  $26+x,$04fa
04db: f6 5a 00  mov   a,$005a+y
04de: 24 92     and   a,$92
04e0: d0 18     bne   $04fa
04e2: e4 92     mov   a,$92
04e4: 48 ff     eor   a,#$ff
04e6: 36 24 00  and   a,$0024+y
04e9: d6 24 00  mov   $0024+y,a
04ec: dd        mov   a,y
04ed: d0 08     bne   $04f7
04ef: e4 86     mov   a,$86
04f1: 04 87     or    a,$87
04f3: 24 92     and   a,$92
04f5: d0 03     bne   $04fa
04f7: 09 92 23  or    ($23),($92)
04fa: 3f 40 08  call  $0840
04fd: 3f 23 09  call  $0923
0500: 3d        inc   x
0501: 3d        inc   x
0502: 0b 92     asl   $92
0504: 4b a4     lsr   $a4
0506: b0 b6     bcs   $04be
0508: d0 f6     bne   $0500
050a: 43 89 1c  bbs2  $89,$0529
050d: 3f 6b 05  call  $056b
0510: 42 89     set2  $89
0512: a3 89 09  bbs5  $89,$051e
0515: e8 81     mov   a,#$81
0517: 60        clrc
0518: 84 49     adc   a,$49
051a: c4 49     mov   $49,a
051c: 90 0b     bcc   $0529
051e: cd 10     mov   x,#$10
0520: 8f 01 92  mov   $92,#$01
0523: e4 86     mov   a,$86
0525: c4 a4     mov   $a4,a
0527: d0 db     bne   $0504
0529: 6f        ret

052a: 73 87 1d  bbc3  $87,$054a
052d: e8 38     mov   a,#$38
052f: c4 f2     mov   $f2,a
0531: eb f3     mov   y,$f3
0533: d0 15     bne   $054a
0535: e8 49     mov   a,#$49
0537: 8d 20     mov   y,#$20
0539: da 18     movw  $18,ya
053b: e8 02     mov   a,#$02
053d: c4 3c     mov   $3c,a
053f: e8 08     mov   a,#$08
0541: 4e 87 00  tclr1 $0087
0544: 0e 23 00  tset1 $0023
0547: 0e 86 00  tset1 $0086
054a: 53 87 1d  bbc2  $87,$056a
054d: e8 28     mov   a,#$28
054f: c4 f2     mov   $f2,a
0551: e4 f3     mov   a,$f3
0553: d0 15     bne   $056a
0555: e8 49     mov   a,#$49
0557: 8d 20     mov   y,#$20
0559: da 16     movw  $16,ya
055b: e8 02     mov   a,#$02
055d: c4 3a     mov   $3a,a
055f: e8 04     mov   a,#$04
0561: 4e 87 00  tclr1 $0087
0564: 0e 23 00  tset1 $0023
0567: 0e 86 00  tset1 $0086
056a: 6f        ret

056b: e4 4a     mov   a,$4a
056d: f0 08     beq   $0577
056f: 8b 4a     dec   $4a
0571: ba 4b     movw  ya,$4b
0573: 7a 46     addw  ya,$46
0575: da 46     movw  $46,ya
0577: e4 52     mov   a,$52
0579: f0 08     beq   $0583
057b: 8b 52     dec   $52
057d: ba 50     movw  ya,$50
057f: 7a 4e     addw  ya,$4e
0581: da 4e     movw  $4e,ya
0583: e4 78     mov   a,$78
0585: f0 08     beq   $058f
0587: 8b 78     dec   $78
0589: ba 79     movw  ya,$79
058b: 7a 75     addw  ya,$75
058d: da 75     movw  $75,ya
058f: e4 77     mov   a,$77
0591: f0 17     beq   $05aa
0593: 8b 77     dec   $77
0595: cd 10     mov   x,#$10
0597: f4 63     mov   a,$63+x
0599: 60        clrc
059a: 95 fe 00  adc   a,$00fe+x
059d: d4 63     mov   $63+x,a
059f: f4 64     mov   a,$64+x
05a1: 95 ff 00  adc   a,$00ff+x
05a4: d4 64     mov   $64+x,a
05a6: 1d        dec   x
05a7: 1d        dec   x
05a8: d0 ed     bne   $0597
05aa: 6f        ret

05ab: 3f cf 07  call  $07cf
05ae: 68 c4     cmp   a,#$c4
05b0: 90 05     bcc   $05b7
05b2: 3f b9 07  call  $07b9
05b5: 2f f4     bra   $05ab
05b7: fb 26     mov   y,$26+x
05b9: d0 0a     bne   $05c5
05bb: cd 0e     mov   x,#$0e
05bd: 9e        div   ya,x
05be: f8 a7     mov   x,$a7
05c0: f6 3b 20  mov   a,$203b+y
05c3: d4 26     mov   $26+x,a
05c5: e4 a6     mov   a,$a6
05c7: 68 a8     cmp   a,#$a8
05c9: 90 08     bcc   $05d3
05cb: 68 b6     cmp   a,#$b6
05cd: 90 01     bcc   $05d0
05cf: 6f        ret

05d0: 5f 7d 06  jmp   $067d

05d3: 8d 00     mov   y,#$00
05d5: cd 0e     mov   x,#$0e
05d7: 9e        div   ya,x
05d8: c4 a6     mov   $a6,a
05da: f8 a7     mov   x,$a7
05dc: c8 10     cmp   x,#$10
05de: b0 0b     bcs   $05eb
05e0: e4 92     mov   a,$92
05e2: 24 7c     and   a,$7c
05e4: f0 05     beq   $05eb
05e6: 3f 9c 07  call  $079c
05e9: 2f 06     bra   $05f1
05eb: f5 00 f2  mov   a,$f200+x
05ee: 60        clrc
05ef: 84 a6     adc   a,$a6
05f1: 60        clrc
05f2: 95 61 f3  adc   a,$f361+x
05f5: 80        setc
05f6: a8 0a     sbc   a,#$0a
05f8: d5 a1 f3  mov   $f3a1+x,a
05fb: 3f 39 07  call  $0739
05fe: e4 be     mov   a,$be
0600: d5 e0 f4  mov   $f4e0+x,a
0603: e4 bf     mov   a,$bf
0605: d5 e1 f4  mov   $f4e1+x,a
0608: c8 10     cmp   x,#$10
060a: b0 05     bcs   $0611
060c: 09 92 24  or    ($24),($92)
060f: 2f 03     bra   $0614
0611: 09 92 25  or    ($25),($92)
0614: f5 51 01  mov   a,$0151+x
0617: f0 05     beq   $061e
0619: 3f 3d 1b  call  $1b3d
061c: e8 00     mov   a,#$00
061e: d5 c0 f4  mov   $f4c0+x,a
0621: d5 c1 f4  mov   $f4c1+x,a
0624: d5 20 f4  mov   $f420+x,a
0627: f5 70 01  mov   a,$0170+x
062a: f0 05     beq   $0631
062c: 3f d9 1b  call  $1bd9
062f: e8 00     mov   a,#$00
0631: d5 60 f4  mov   $f460+x,a
0634: d5 c0 f3  mov   $f3c0+x,a
0637: d5 c1 f3  mov   $f3c1+x,a
063a: d5 a0 f4  mov   $f4a0+x,a
063d: c8 10     cmp   x,#$10
063f: b0 1d     bcs   $065e
0641: e4 86     mov   a,$86
0643: 04 87     or    a,$87
0645: 24 92     and   a,$92
0647: d0 34     bne   $067d
0649: e4 92     mov   a,$92
064b: 24 60     and   a,$60
064d: d0 22     bne   $0671
064f: e4 92     mov   a,$92
0651: 24 5c     and   a,$5c
0653: f0 1c     beq   $0671
0655: 24 5e     and   a,$5e
0657: d0 1b     bne   $0674
0659: 09 92 5e  or    ($5e),($92)
065c: 2f 13     bra   $0671
065e: e4 92     mov   a,$92
0660: 24 61     and   a,$61
0662: d0 0d     bne   $0671
0664: e4 92     mov   a,$92
0666: 24 5d     and   a,$5d
0668: f0 07     beq   $0671
066a: 24 5f     and   a,$5f
066c: d0 06     bne   $0674
066e: 09 92 5f  or    ($5f),($92)
0671: 09 92 22  or    ($22),($92)
0674: 09 92 d9  or    ($d9),($92)
0677: 09 92 da  or    ($da),($92)
067a: 3f 4e 1d  call  $1d4e
067d: 3f da 07  call  $07da
0680: fd        mov   y,a
0681: e4 92     mov   a,$92
0683: c8 10     cmp   x,#$10
0685: b0 21     bcs   $06a8
0687: ad b6     cmp   y,#$b6
0689: b0 09     bcs   $0694
068b: ad a8     cmp   y,#$a8
068d: 90 0b     bcc   $069a
068f: 0e 5a 00  tset1 $005a
0692: 2f 33     bra   $06c7
0694: 4e 5c 00  tclr1 $005c
0697: 4e 60 00  tclr1 $0060
069a: 4e 5a 00  tclr1 $005a
069d: e4 5c     mov   a,$5c
069f: 04 60     or    a,$60
06a1: 24 92     and   a,$92
06a3: 0e 5a 00  tset1 $005a
06a6: 2f 1f     bra   $06c7
06a8: ad b6     cmp   y,#$b6
06aa: b0 09     bcs   $06b5
06ac: ad a8     cmp   y,#$a8
06ae: 90 0b     bcc   $06bb
06b0: 0e 5b 00  tset1 $005b
06b3: 2f 12     bra   $06c7
06b5: 4e 5d 00  tclr1 $005d
06b8: 4e 61 00  tclr1 $0061
06bb: 4e 5b 00  tclr1 $005b
06be: e4 5d     mov   a,$5d
06c0: 04 61     or    a,$61
06c2: 24 92     and   a,$92
06c4: 0e 5b 00  tset1 $005b
06c7: f5 50 01  mov   a,$0150+x
06ca: f0 6c     beq   $0738
06cc: 60        clrc
06cd: 95 a1 f3  adc   a,$f3a1+x
06d0: d5 a1 f3  mov   $f3a1+x,a
06d3: 3f 39 07  call  $0739
06d6: f5 e1 f4  mov   a,$f4e1+x
06d9: fd        mov   y,a
06da: f5 e0 f4  mov   a,$f4e0+x
06dd: da 9c     movw  $9c,ya
06df: ba be     movw  ya,$be
06e1: 80        setc
06e2: 9a 9c     subw  ya,$9c
06e4: da 9c     movw  $9c,ya
06e6: 0d        push  psw
06e7: b0 08     bcs   $06f1
06e9: 58 ff 9c  eor   $9c,#$ff
06ec: 58 ff 9d  eor   $9d,#$ff
06ef: 3a 9c     incw  $9c
06f1: f5 60 f3  mov   a,$f360+x
06f4: d0 05     bne   $06fb
06f6: 8f 00 9e  mov   $9e,#$00
06f9: 2f 12     bra   $070d
06fb: 5d        mov   x,a
06fc: e4 9d     mov   a,$9d
06fe: 8d 00     mov   y,#$00
0700: 9e        div   ya,x
0701: c4 9e     mov   $9e,a
0703: e4 9c     mov   a,$9c
0705: 9e        div   ya,x
0706: c4 9d     mov   $9d,a
0708: e8 00     mov   a,#$00
070a: 9e        div   ya,x
070b: c4 9c     mov   $9c,a
070d: 8e        pop   psw
070e: b0 0f     bcs   $071f
0710: 58 ff 9c  eor   $9c,#$ff
0713: 58 ff 9d  eor   $9d,#$ff
0716: 58 ff 9e  eor   $9e,#$ff
0719: 3a 9c     incw  $9c
071b: d0 02     bne   $071f
071d: ab 9e     inc   $9e
071f: f8 a7     mov   x,$a7
0721: e4 9c     mov   a,$9c
0723: d5 a0 f4  mov   $f4a0+x,a
0726: e4 9d     mov   a,$9d
0728: d5 c0 f3  mov   $f3c0+x,a
072b: e4 9e     mov   a,$9e
072d: d5 c1 f3  mov   $f3c1+x,a
0730: e8 00     mov   a,#$00
0732: d5 50 01  mov   $0150+x,a
0735: d5 a1 f4  mov   $f4a1+x,a
0738: 6f        ret

0739: cd 0c     mov   x,#$0c
073b: 8d 00     mov   y,#$00
073d: 9e        div   ya,x
073e: f8 a7     mov   x,$a7
0740: c4 a5     mov   $a5,a
0742: dd        mov   a,y
0743: 1c        asl   a
0744: fd        mov   y,a
0745: f6 f5 1f  mov   a,$1ff5+y
0748: c4 c0     mov   $c0,a
074a: f6 f6 1f  mov   a,$1ff6+y
074d: c4 c1     mov   $c1,a
074f: fd        mov   y,a
0750: f5 80 f3  mov   a,$f380+x
0753: 60        clrc
0754: 95 a0 f3  adc   a,$f3a0+x
0757: c4 9c     mov   $9c,a
0759: cf        mul   ya
075a: da be     movw  $be,ya
075c: eb c0     mov   y,$c0
075e: e4 9c     mov   a,$9c
0760: cf        mul   ya
0761: dd        mov   a,y
0762: 8d 00     mov   y,#$00
0764: 7a be     addw  ya,$be
0766: da be     movw  $be,ya
0768: f5 81 f3  mov   a,$f381+x
076b: f0 08     beq   $0775
076d: cf        mul   ya
076e: dd        mov   a,y
076f: 8d 00     mov   y,#$00
0771: 7a be     addw  ya,$be
0773: 2f 02     bra   $0777
0775: e4 be     mov   a,$be
0777: e3 9c 02  bbs7  $9c,$077c
077a: 7a c0     addw  ya,$c0
077c: da be     movw  $be,ya
077e: e8 04     mov   a,#$04
0780: eb a5     mov   y,$a5
0782: 30 0f     bmi   $0793
0784: f0 0d     beq   $0793
0786: 64 a5     cmp   a,$a5
0788: b0 0e     bcs   $0798
078a: 0b be     asl   $be
078c: 2b bf     rol   $bf
078e: bc        inc   a
078f: 2e a5 f8  cbne  $a5,$078a
0792: 6f        ret

0793: 4b bf     lsr   $bf
0795: 6b be     ror   $be
0797: 9c        dec   a
0798: 2e a5 f8  cbne  $a5,$0793
079b: 6f        ret

079c: e4 a6     mov   a,$a6
079e: 8d 03     mov   y,#$03
07a0: cf        mul   ya
07a1: fd        mov   y,a
07a2: f6 22 f1  mov   a,$f122+y
07a5: 30 04     bmi   $07ab
07a7: 1c        asl   a
07a8: d5 81 f2  mov   $f281+x,a
07ab: f6 21 f1  mov   a,$f121+y
07ae: c4 a6     mov   $a6,a
07b0: f6 20 f1  mov   a,$f120+y
07b3: 3f 30 1d  call  $1d30
07b6: e4 a6     mov   a,$a6
07b8: 6f        ret

07b9: a8 c4     sbc   a,#$c4
07bb: c4 a6     mov   $a6,a
07bd: 1c        asl   a
07be: fd        mov   y,a
07bf: f6 ed 17  mov   a,$17ed+y
07c2: 2d        push  a
07c3: f6 ec 17  mov   a,$17ec+y
07c6: 2d        push  a
07c7: eb a6     mov   y,$a6
07c9: f6 64 18  mov   a,$1864+y
07cc: d0 01     bne   $07cf
07ce: 6f        ret

07cf: e7 02     mov   a,($02+x)
07d1: c4 a6     mov   $a6,a
07d3: bb 02     inc   $02+x
07d5: d0 02     bne   $07d9
07d7: bb 03     inc   $03+x
07d9: 6f        ret

07da: f4 02     mov   a,$02+x
07dc: fb 03     mov   y,$03+x
07de: da 94     movw  $94,ya
07e0: f4 27     mov   a,$27+x
07e2: c4 c3     mov   $c3,a
07e4: 8d 00     mov   y,#$00
07e6: f7 94     mov   a,($94)+y
07e8: 68 c4     cmp   a,#$c4
07ea: 90 32     bcc   $081e
07ec: 3a 94     incw  $94
07ee: 68 ec     cmp   a,#$ec
07f0: f0 2c     beq   $081e
07f2: 80        setc
07f3: a8 c4     sbc   a,#$c4
07f5: c4 93     mov   $93,a
07f7: 1c        asl   a
07f8: fd        mov   y,a
07f9: f6 a1 18  mov   a,$18a1+y
07fc: f0 12     beq   $0810
07fe: c4 9c     mov   $9c,a
0800: e8 07     mov   a,#$07
0802: 2d        push  a
0803: e8 e4     mov   a,#$e4
0805: 2d        push  a
0806: e4 9c     mov   a,$9c
0808: 2d        push  a
0809: f6 a0 18  mov   a,$18a0+y
080c: 2d        push  a
080d: 8d 00     mov   y,#$00
080f: 6f        ret

0810: eb 93     mov   y,$93
0812: f6 64 18  mov   a,$1864+y
0815: f0 cd     beq   $07e4
0817: fd        mov   y,a
0818: 3a 94     incw  $94
081a: fe fc     dbnz  y,$0818
081c: 2f c8     bra   $07e6
081e: 6f        ret

081f: cb f2     mov   $f2,y
0821: c4 f3     mov   $f3,a
0823: 6f        ret

0824: da 9c     movw  $9c,ya
0826: e4 86     mov   a,$86
0828: 04 87     or    a,$87
082a: 2d        push  a
082b: 24 9d     and   a,$9d
082d: c4 9d     mov   $9d,a
082f: ae        pop   a
0830: 48 ff     eor   a,#$ff
0832: 24 53     and   a,$53
0834: 24 9c     and   a,$9c
0836: 04 9d     or    a,$9d
0838: 6f        ret

0839: 8f 33 f1  mov   $f1,#$33
083c: 8f 03 f1  mov   $f1,#$03
083f: 6f        ret

0840: 40        setp
0841: f4 11     mov   a,$11+x
0843: f0 02     beq   $0847
0845: 9b 11     dec   $11+x
0847: f4 31     mov   a,$31+x
0849: f0 02     beq   $084d
084b: 9b 31     dec   $31+x
084d: 20        clrp
084e: f5 c0 f2  mov   a,$f2c0+x
0851: f0 1f     beq   $0872
0853: 9c        dec   a
0854: d5 c0 f2  mov   $f2c0+x,a
0857: f5 40 f2  mov   a,$f240+x
085a: 60        clrc
085b: 95 60 f2  adc   a,$f260+x
085e: d5 40 f2  mov   $f240+x,a
0861: f5 41 f2  mov   a,$f241+x
0864: 95 61 f2  adc   a,$f261+x
0867: 75 41 f2  cmp   a,$f241+x
086a: d5 41 f2  mov   $f241+x,a
086d: f0 03     beq   $0872
086f: 09 92 d9  or    ($d9),($92)
0872: f5 c1 f2  mov   a,$f2c1+x
0875: f0 1f     beq   $0896
0877: 9c        dec   a
0878: d5 c1 f2  mov   $f2c1+x,a
087b: f5 80 f2  mov   a,$f280+x
087e: 60        clrc
087f: 95 a0 f2  adc   a,$f2a0+x
0882: d5 80 f2  mov   $f280+x,a
0885: f5 81 f2  mov   a,$f281+x
0888: 95 a1 f2  adc   a,$f2a1+x
088b: 75 81 f2  cmp   a,$f281+x
088e: d5 81 f2  mov   $f281+x,a
0891: f0 03     beq   $0896
0893: 09 92 d9  or    ($d9),($92)
0896: f5 a0 f4  mov   a,$f4a0+x
0899: c4 9c     mov   $9c,a
089b: f5 c0 f3  mov   a,$f3c0+x
089e: c4 9d     mov   $9d,a
08a0: f5 c1 f3  mov   a,$f3c1+x
08a3: c4 9e     mov   $9e,a
08a5: ba 9c     movw  ya,$9c
08a7: d0 04     bne   $08ad
08a9: e4 9e     mov   a,$9e
08ab: f0 2e     beq   $08db
08ad: f5 60 f3  mov   a,$f360+x
08b0: 9c        dec   a
08b1: d0 09     bne   $08bc
08b3: d5 c0 f3  mov   $f3c0+x,a
08b6: d5 c1 f3  mov   $f3c1+x,a
08b9: d5 a0 f4  mov   $f4a0+x,a
08bc: d5 60 f3  mov   $f360+x,a
08bf: 60        clrc
08c0: f5 e0 f4  mov   a,$f4e0+x
08c3: fd        mov   y,a
08c4: f5 a1 f4  mov   a,$f4a1+x
08c7: 7a 9c     addw  ya,$9c
08c9: d5 a1 f4  mov   $f4a1+x,a
08cc: dd        mov   a,y
08cd: d5 e0 f4  mov   $f4e0+x,a
08d0: e4 9e     mov   a,$9e
08d2: 95 e1 f4  adc   a,$f4e1+x
08d5: d5 e1 f4  mov   $f4e1+x,a
08d8: 09 92 da  or    ($da),($92)
08db: f5 71 01  mov   a,$0171+x
08de: f0 42     beq   $0922
08e0: f5 e0 f3  mov   a,$f3e0+x
08e3: c4 9c     mov   $9c,a
08e5: f5 e1 f3  mov   a,$f3e1+x
08e8: c4 9d     mov   $9d,a
08ea: f5 81 f4  mov   a,$f481+x
08ed: fd        mov   y,a
08ee: c4 9e     mov   $9e,a
08f0: f5 80 f4  mov   a,$f480+x
08f3: 7a 9c     addw  ya,$9c
08f5: d5 80 f4  mov   $f480+x,a
08f8: dd        mov   a,y
08f9: 75 81 f4  cmp   a,$f481+x
08fc: d5 81 f4  mov   $f481+x,a
08ff: f0 03     beq   $0904
0901: 09 92 d9  or    ($d9),($92)
0904: f5 41 f3  mov   a,$f341+x
0907: 9c        dec   a
0908: d0 15     bne   $091f
090a: 58 ff 9c  eor   $9c,#$ff
090d: 58 ff 9d  eor   $9d,#$ff
0910: 3a 9c     incw  $9c
0912: e4 9c     mov   a,$9c
0914: d5 e0 f3  mov   $f3e0+x,a
0917: e4 9d     mov   a,$9d
0919: d5 e1 f3  mov   $f3e1+x,a
091c: f5 40 f3  mov   a,$f340+x
091f: d5 41 f3  mov   $f341+x,a
0922: 6f        ret

0923: e4 f4     mov   a,$f4
0925: f0 3c     beq   $0963
0927: 64 f4     cmp   a,$f4
0929: d0 f8     bne   $0923
092b: 68 fe     cmp   a,#$fe
092d: f0 34     beq   $0963
092f: 68 10     cmp   a,#$10
0931: 90 04     bcc   $0937
0933: 68 18     cmp   a,#$18
0935: 90 2c     bcc   $0963
0937: 4d        push  x
0938: f8 e0     mov   x,$e0
093a: d5 72 f1  mov   $f172+x,a
093d: fd        mov   y,a
093e: e4 f5     mov   a,$f5
0940: d5 73 f1  mov   $f173+x,a
0943: c4 f5     mov   $f5,a
0945: e4 f6     mov   a,$f6
0947: d5 74 f1  mov   $f174+x,a
094a: c4 f6     mov   $f6,a
094c: e4 f7     mov   a,$f7
094e: d5 75 f1  mov   $f175+x,a
0951: c4 f7     mov   $f7,a
0953: 7d        mov   a,x
0954: 60        clrc
0955: 88 04     adc   a,#$04
0957: 68 40     cmp   a,#$40
0959: b0 02     bcs   $095d
095b: c4 e0     mov   $e0,a
095d: ce        pop   x
095e: 3f 39 08  call  $0839
0961: cb f4     mov   $f4,y
0963: 6f        ret

0964: cd 00     mov   x,#$00
0966: f5 72 f1  mov   a,$f172+x
0969: f0 1e     beq   $0989
096b: c4 8e     mov   $8e,a
096d: f5 73 f1  mov   a,$f173+x
0970: c4 8f     mov   $8f,a
0972: f5 74 f1  mov   a,$f174+x
0975: c4 90     mov   $90,a
0977: f5 75 f1  mov   a,$f175+x
097a: c4 91     mov   $91,a
097c: 4d        push  x
097d: 3f 50 0c  call  $0c50
0980: ae        pop   a
0981: 60        clrc
0982: 88 04     adc   a,#$04
0984: 5d        mov   x,a
0985: c8 40     cmp   x,#$40
0987: d0 dd     bne   $0966
0989: 7d        mov   a,x
098a: f0 0b     beq   $0997
098c: e8 00     mov   a,#$00
098e: d5 6e f1  mov   $f16e+x,a
0991: 1d        dec   x
0992: 1d        dec   x
0993: 1d        dec   x
0994: 1d        dec   x
0995: d0 f7     bne   $098e
0997: c4 e0     mov   $e0,a
0999: e3 89 03  bbs7  $89,$099f
099c: 5f a1 03  jmp   $03a1

099f: 6f        ret

09a0: f5 51 01  mov   a,$0151+x
09a3: f0 63     beq   $0a08
09a5: c4 a6     mov   $a6,a
09a7: c8 10     cmp   x,#$10
09a9: b0 05     bcs   $09b0
09ab: f5 11 01  mov   a,$0111+x
09ae: d0 58     bne   $0a08
09b0: f5 e1 f2  mov   a,$f2e1+x
09b3: 9c        dec   a
09b4: d0 4f     bne   $0a05
09b6: f5 00 f4  mov   a,$f400+x
09b9: c4 be     mov   $be,a
09bb: f5 20 f4  mov   a,$f420+x
09be: c4 bf     mov   $bf,a
09c0: f5 21 f2  mov   a,$f221+x
09c3: 28 07     and   a,#$07
09c5: c4 c0     mov   $c0,a
09c7: 3f 5f 0b  call  $0b5f
09ca: f8 a7     mov   x,$a7
09cc: d5 20 f4  mov   $f420+x,a
09cf: c4 be     mov   $be,a
09d1: f5 21 f2  mov   a,$f221+x
09d4: 28 70     and   a,#$70
09d6: 04 c0     or    a,$c0
09d8: d5 21 f2  mov   $f221+x,a
09db: f5 01 f3  mov   a,$f301+x
09de: fd        mov   y,a
09df: f5 00 f3  mov   a,$f300+x
09e2: da 9c     movw  $9c,ya
09e4: e4 be     mov   a,$be
09e6: cf        mul   ya
09e7: da 9e     movw  $9e,ya
09e9: eb 9c     mov   y,$9c
09eb: e4 be     mov   a,$be
09ed: cf        mul   ya
09ee: dd        mov   a,y
09ef: 8d 00     mov   y,#$00
09f1: 7a 9e     addw  ya,$9e
09f3: f3 be 02  bbc7  $be,$09f8
09f6: 9a 9c     subw  ya,$9c
09f8: d5 c0 f4  mov   $f4c0+x,a
09fb: dd        mov   a,y
09fc: d5 c1 f4  mov   $f4c1+x,a
09ff: 09 92 da  or    ($da),($92)
0a02: f5 e0 f2  mov   a,$f2e0+x
0a05: d5 e1 f2  mov   $f2e1+x,a
0a08: f5 70 01  mov   a,$0170+x
0a0b: f0 3e     beq   $0a4b
0a0d: c4 a6     mov   $a6,a
0a0f: f5 31 01  mov   a,$0131+x
0a12: d0 37     bne   $0a4b
0a14: f5 21 f3  mov   a,$f321+x
0a17: 9c        dec   a
0a18: d0 2e     bne   $0a48
0a1a: f5 40 f4  mov   a,$f440+x
0a1d: c4 be     mov   $be,a
0a1f: f5 60 f4  mov   a,$f460+x
0a22: c4 bf     mov   $bf,a
0a24: f5 21 f2  mov   a,$f221+x
0a27: 28 70     and   a,#$70
0a29: 9f        xcn   a
0a2a: c4 c0     mov   $c0,a
0a2c: 3f 5f 0b  call  $0b5f
0a2f: f8 a7     mov   x,$a7
0a31: d5 60 f4  mov   $f460+x,a
0a34: c4 be     mov   $be,a
0a36: f5 21 f2  mov   a,$f221+x
0a39: 28 07     and   a,#$07
0a3b: 9f        xcn   a
0a3c: 04 c0     or    a,$c0
0a3e: 9f        xcn   a
0a3f: d5 21 f2  mov   $f221+x,a
0a42: 09 92 d9  or    ($d9),($92)
0a45: f5 20 f3  mov   a,$f320+x
0a48: d5 21 f3  mov   $f321+x,a
0a4b: ba d9     movw  ya,$d9
0a4d: d0 01     bne   $0a50
0a4f: 6f        ret

0a50: 7d        mov   a,x
0a51: 28 0f     and   a,#$0f
0a53: c4 9c     mov   $9c,a
0a55: 9f        xcn   a
0a56: 5c        lsr   a
0a57: c4 9d     mov   $9d,a
0a59: e4 92     mov   a,$92
0a5b: 24 d9     and   a,$d9
0a5d: f0 66     beq   $0ac5
0a5f: b2 88     clr5  $88
0a61: 8f 80 9e  mov   $9e,#$80
0a64: 03 88 0e  bbs0  $88,$0a75
0a67: f5 81 f2  mov   a,$f281+x
0a6a: fd        mov   y,a
0a6b: f5 81 f4  mov   a,$f481+x
0a6e: 3f 8d 15  call  $158d
0a71: 48 ff     eor   a,#$ff
0a73: c4 9e     mov   $9e,a
0a75: f5 41 f2  mov   a,$f241+x
0a78: fd        mov   y,a
0a79: c4 9f     mov   $9f,a
0a7b: f5 60 f4  mov   a,$f460+x
0a7e: f0 0c     beq   $0a8c
0a80: 1c        asl   a
0a81: cf        mul   ya
0a82: b0 08     bcs   $0a8c
0a84: dd        mov   a,y
0a85: 84 9f     adc   a,$9f
0a87: 10 02     bpl   $0a8b
0a89: e8 7f     mov   a,#$7f
0a8b: fd        mov   y,a
0a8c: e4 a9     mov   a,$a9
0a8e: cf        mul   ya
0a8f: c8 10     cmp   x,#$10
0a91: b0 11     bcs   $0aa4
0a93: e4 92     mov   a,$92
0a95: 24 a8     and   a,$a8
0a97: f0 04     beq   $0a9d
0a99: 8d 00     mov   y,#$00
0a9b: 2f 07     bra   $0aa4
0a9d: f5 20 f2  mov   a,$f220+x
0aa0: cf        mul   ya
0aa1: e4 4d     mov   a,$4d
0aa3: cf        mul   ya
0aa4: cb 9f     mov   $9f,y
0aa6: e4 9e     mov   a,$9e
0aa8: cf        mul   ya
0aa9: dd        mov   a,y
0aaa: eb 9c     mov   y,$9c
0aac: d6 c7 00  mov   $00c7+y,a
0aaf: eb 9d     mov   y,$9d
0ab1: cb f2     mov   $f2,y
0ab3: c4 f3     mov   $f3,a
0ab5: ea 9c 00  not1  $009c,0
0ab8: ab 9d     inc   $9d
0aba: 23 9d 08  bbs1  $9d,$0ac5
0abd: e4 9e     mov   a,$9e
0abf: 48 ff     eor   a,#$ff
0ac1: eb 9f     mov   y,$9f
0ac3: 2f e3     bra   $0aa8
0ac5: e4 92     mov   a,$92
0ac7: 24 da     and   a,$da
0ac9: d0 03     bne   $0ace
0acb: 5f 5e 0b  jmp   $0b5e

0ace: 22 9d     set1  $9d
0ad0: f5 e0 f4  mov   a,$f4e0+x
0ad3: 60        clrc
0ad4: 95 c0 f4  adc   a,$f4c0+x
0ad7: c4 9e     mov   $9e,a
0ad9: f5 e1 f4  mov   a,$f4e1+x
0adc: 95 c1 f4  adc   a,$f4c1+x
0adf: c4 9f     mov   $9f,a
0ae1: c8 10     cmp   x,#$10
0ae3: b0 20     bcs   $0b05
0ae5: eb b0     mov   y,$b0
0ae7: f0 64     beq   $0b4d
0ae9: cf        mul   ya
0aea: da a0     movw  $a0,ya
0aec: eb b0     mov   y,$b0
0aee: e4 9e     mov   a,$9e
0af0: cf        mul   ya
0af1: dd        mov   a,y
0af2: 8d 00     mov   y,#$00
0af4: 7a a0     addw  ya,$a0
0af6: e3 b0 56  bbs7  $b0,$0b4f
0af9: 1c        asl   a
0afa: c4 a2     mov   $a2,a
0afc: dd        mov   a,y
0afd: 3c        rol   a
0afe: fd        mov   y,a
0aff: e4 a2     mov   a,$a2
0b01: 7a 9e     addw  ya,$9e
0b03: 2f 4a     bra   $0b4f
0b05: c8 18     cmp   x,#$18
0b07: 90 44     bcc   $0b4d
0b09: c8 1c     cmp   x,#$1c
0b0b: 90 20     bcc   $0b2d
0b0d: eb b2     mov   y,$b2
0b0f: f0 3c     beq   $0b4d
0b11: cf        mul   ya
0b12: da a0     movw  $a0,ya
0b14: eb b2     mov   y,$b2
0b16: e4 9e     mov   a,$9e
0b18: cf        mul   ya
0b19: dd        mov   a,y
0b1a: 8d 00     mov   y,#$00
0b1c: 7a a0     addw  ya,$a0
0b1e: e3 b2 2e  bbs7  $b2,$0b4f
0b21: 1c        asl   a
0b22: c4 a2     mov   $a2,a
0b24: dd        mov   a,y
0b25: 3c        rol   a
0b26: fd        mov   y,a
0b27: e4 a2     mov   a,$a2
0b29: 7a 9e     addw  ya,$9e
0b2b: 2f 22     bra   $0b4f
0b2d: eb b4     mov   y,$b4
0b2f: f0 1c     beq   $0b4d
0b31: cf        mul   ya
0b32: da a0     movw  $a0,ya
0b34: eb b4     mov   y,$b4
0b36: e4 9e     mov   a,$9e
0b38: cf        mul   ya
0b39: dd        mov   a,y
0b3a: 8d 00     mov   y,#$00
0b3c: 7a a0     addw  ya,$a0
0b3e: e3 b4 0e  bbs7  $b4,$0b4f
0b41: 1c        asl   a
0b42: c4 a2     mov   $a2,a
0b44: dd        mov   a,y
0b45: 3c        rol   a
0b46: fd        mov   y,a
0b47: e4 a2     mov   a,$a2
0b49: 7a 9e     addw  ya,$9e
0b4b: 2f 02     bra   $0b4f
0b4d: ba 9e     movw  ya,$9e
0b4f: d8 9c     mov   $9c,x
0b51: f8 9d     mov   x,$9d
0b53: d8 f2     mov   $f2,x
0b55: c4 f3     mov   $f3,a
0b57: 3d        inc   x
0b58: d8 f2     mov   $f2,x
0b5a: cb f3     mov   $f3,y
0b5c: f8 9c     mov   x,$9c
0b5e: 6f        ret

0b5f: e4 c0     mov   a,$c0
0b61: f0 02     beq   $0b65
0b63: 8b c0     dec   $c0
0b65: 1c        asl   a
0b66: 5d        mov   x,a
0b67: 78 c0 a6  cmp   $a6,#$c0
0b6a: b0 0b     bcs   $0b77
0b6c: 78 80 a6  cmp   $a6,#$80
0b6f: b0 03     bcs   $0b74
0b71: 1f 7a 0b  jmp   ($0b7a+x)

0b74: 1f 8a 0b  jmp   ($0b8a+x)

0b77: 1f 9a 0b  jmp   ($0b9a+x)

0b7a: fd        mov   y,a
0b7b: 0b fa     asl   $fa
0b7d: 0b f7     asl   $f7
0b7f: 0b b3     asl   $b3
0b81: 0b f7     asl   $f7
0b83: 0b af     asl   $af
0b85: 0b f7     asl   $f7
0b87: 0b aa     asl   $aa
0b89: 0b fd     asl   $fd
0b8b: 0b fa     asl   $fa
0b8d: 0b f7     asl   $f7
0b8f: 0b c9     asl   $c9
0b91: 0b f7     asl   $f7
0b93: 0b c4     asl   $c4
0b95: 0b f7     asl   $f7
0b97: 0b bd     asl   $bd
0b99: 0b e8     asl   $e8
0b9b: 0b fa     asl   $fa
0b9d: 0b e8     asl   $e8
0b9f: 0b de     asl   $de
0ba1: 0b e8     asl   $e8
0ba3: 0b da     asl   $da
0ba5: 0b e8     asl   $e8
0ba7: 0b d5     asl   $d5
0ba9: 0b e4     asl   $e4
0bab: be        das   a
0bac: 5c        lsr   a
0bad: 5c        lsr   a
0bae: 6f        ret

0baf: e4 be     mov   a,$be
0bb1: 5c        lsr   a
0bb2: 6f        ret

0bb3: e4 be     mov   a,$be
0bb5: 5c        lsr   a
0bb6: c4 c1     mov   $c1,a
0bb8: 5c        lsr   a
0bb9: 60        clrc
0bba: 84 c1     adc   a,$c1
0bbc: 6f        ret

0bbd: e4 be     mov   a,$be
0bbf: 5c        lsr   a
0bc0: 5c        lsr   a
0bc1: 08 c0     or    a,#$c0
0bc3: 6f        ret

0bc4: e4 be     mov   a,$be
0bc6: 80        setc
0bc7: 7c        ror   a
0bc8: 6f        ret

0bc9: e4 be     mov   a,$be
0bcb: 80        setc
0bcc: 7c        ror   a
0bcd: c4 c1     mov   $c1,a
0bcf: 80        setc
0bd0: 7c        ror   a
0bd1: 60        clrc
0bd2: 84 c1     adc   a,$c1
0bd4: 6f        ret

0bd5: e4 be     mov   a,$be
0bd7: 5c        lsr   a
0bd8: 5c        lsr   a
0bd9: 6f        ret

0bda: e4 be     mov   a,$be
0bdc: 5c        lsr   a
0bdd: 6f        ret

0bde: e4 be     mov   a,$be
0be0: 5c        lsr   a
0be1: c4 c1     mov   $c1,a
0be3: 5c        lsr   a
0be4: 60        clrc
0be5: 84 c1     adc   a,$c1
0be7: 6f        ret

0be8: 7d        mov   a,x
0be9: f0 04     beq   $0bef
0beb: e4 bf     mov   a,$bf
0bed: 2f 05     bra   $0bf4
0bef: e4 be     mov   a,$be
0bf1: e3 bf 02  bbs7  $bf,$0bf6
0bf4: 48 ff     eor   a,#$ff
0bf6: 6f        ret

0bf7: e8 00     mov   a,#$00
0bf9: 6f        ret

0bfa: e4 be     mov   a,$be
0bfc: 6f        ret

0bfd: e4 bf     mov   a,$bf
0bff: f0 f9     beq   $0bfa
0c01: 2f f4     bra   $0bf7
0c03: e4 e1     mov   a,$e1
0c05: 68 23     cmp   a,#$23
0c07: d0 0a     bne   $0c13
0c09: e8 70     mov   a,#$70
0c0b: 45 56 20  eor   a,$2056
0c0e: c5 56 20  mov   $2056,a
0c11: e4 e1     mov   a,$e1
0c13: 5c        lsr   a
0c14: fd        mov   y,a
0c15: e8 70     mov   a,#$70
0c17: 90 01     bcc   $0c1a
0c19: 9f        xcn   a
0c1a: 56 55 20  eor   a,$2055+y
0c1d: d6 55 20  mov   $2055+y,a
0c20: e4 e1     mov   a,$e1
0c22: bc        inc   a
0c23: 68 24     cmp   a,#$24
0c25: f0 0e     beq   $0c35
0c27: 2d        push  a
0c28: 5c        lsr   a
0c29: 8d 00     mov   y,#$00
0c2b: cd 09     mov   x,#$09
0c2d: 9e        div   ya,x
0c2e: dd        mov   a,y
0c2f: ae        pop   a
0c30: d0 05     bne   $0c37
0c32: bc        inc   a
0c33: bc        inc   a
0c34: ec e8 03  mov   y,$03e8
0c37: c4 e1     mov   $e1,a
0c39: 6f        ret

0c3a: f8 f4     mov   x,$f4
0c3c: d0 03     bne   $0c41
0c3e: 6f        ret

0c3f: f8 f4     mov   x,$f4
0c41: 3e f4     cmp   x,$f4
0c43: d0 fa     bne   $0c3f
0c45: ba f6     movw  ya,$f6
0c47: da 90     movw  $90,ya
0c49: ba f4     movw  ya,$f4
0c4b: da 8e     movw  $8e,ya
0c4d: 3f 39 08  call  $0839
0c50: f8 8e     mov   x,$8e
0c52: 7d        mov   a,x
0c53: 10 0b     bpl   $0c60
0c55: ba 90     movw  ya,$90
0c57: da f6     movw  $f6,ya
0c59: ba 8e     movw  ya,$8e
0c5b: da f4     movw  $f4,ya
0c5d: 5f d1 0f  jmp   $0fd1

0c60: 28 0f     and   a,#$0f
0c62: 1c        asl   a
0c63: fd        mov   y,a
0c64: c8 10     cmp   x,#$10
0c66: 90 21     bcc   $0c89
0c68: c8 18     cmp   x,#$18
0c6a: b0 11     bcs   $0c7d
0c6c: f6 19 19  mov   a,$1919+y
0c6f: 2d        push  a
0c70: f6 18 19  mov   a,$1918+y
0c73: 2d        push  a
0c74: f6 39 19  mov   a,$1939+y
0c77: 2d        push  a
0c78: f6 38 19  mov   a,$1938+y
0c7b: 2d        push  a
0c7c: 6f        ret

0c7d: c8 20     cmp   x,#$20
0c7f: b0 08     bcs   $0c89
0c81: f6 19 19  mov   a,$1919+y
0c84: 2d        push  a
0c85: f6 18 19  mov   a,$1918+y
0c88: 2d        push  a
0c89: ba 90     movw  ya,$90
0c8b: da f6     movw  $f6,ya
0c8d: ba 8e     movw  ya,$8e
0c8f: da f4     movw  $f4,ya
0c91: 6f        ret

0c92: 3f 58 16  call  $1658
0c95: 8f 10 c2  mov   $c2,#$10
0c98: 2f 06     bra   $0ca0
0c9a: 3f 58 16  call  $1658
0c9d: 8f 20 c2  mov   $c2,#$20
0ca0: e8 ff     mov   a,#$ff
0ca2: 8d 5c     mov   y,#$5c
0ca4: 3f 1f 08  call  $081f
0ca7: fa 8f c5  mov   ($c5),($8f)
0caa: e4 90     mov   a,$90
0cac: c4 4d     mov   $4d,a
0cae: e4 91     mov   a,$91
0cb0: 28 0f     and   a,#$0f
0cb2: 64 81     cmp   a,$81
0cb4: f0 09     beq   $0cbf
0cb6: c4 81     mov   $81,a
0cb8: 02 89     set0  $89
0cba: 22 89     set1  $89
0cbc: 3f c5 15  call  $15c5
0cbf: ec 66 f1  mov   y,$f166
0cc2: f0 24     beq   $0ce8
0cc4: 6d        push  y
0cc5: e5 6c f1  mov   a,$f16c
0cc8: cf        mul   ya
0cc9: da 9c     movw  $9c,ya
0ccb: ee        pop   y
0ccc: e5 6d f1  mov   a,$f16d
0ccf: cf        mul   ya
0cd0: fd        mov   y,a
0cd1: e8 00     mov   a,#$00
0cd3: 7a 9c     addw  ya,$9c
0cd5: da 9c     movw  $9c,ya
0cd7: e5 60 f1  mov   a,$f160
0cda: ec 61 f1  mov   y,$f161
0cdd: 7a 9c     addw  ya,$9c
0cdf: dd        mov   a,y
0ce0: d0 06     bne   $0ce8
0ce2: c5 66 f1  mov   $f166,a
0ce5: c5 61 f1  mov   $f161,a
0ce8: e8 00     mov   a,#$00
0cea: da 86     movw  $86,ya
0cec: 8d 40     mov   y,#$40
0cee: d6 0c fe  mov   $fe0c+y,a
0cf1: d6 0d fe  mov   $fe0d+y,a
0cf4: d6 0e fe  mov   $fe0e+y,a
0cf7: d6 0f fe  mov   $fe0f+y,a
0cfa: dc        dec   y
0cfb: dc        dec   y
0cfc: dc        dec   y
0cfd: fe ef     dbnz  y,$0cee
0cff: c5 c1 22  mov   $22c1,a
0d02: b2 89     clr5  $89
0d04: 3f 81 12  call  $1281
0d07: 69 c5 c4  cmp   ($c4),($c5)
0d0a: d0 40     bne   $0d4c
0d0c: 3f 94 16  call  $1694
0d0f: e4 53     mov   a,$53
0d11: f0 39     beq   $0d4c
0d13: 38 e0 8d  and   $8d,#$e0
0d16: 09 62 8d  or    ($8d),($62)
0d19: cd 00     mov   x,#$00
0d1b: 8f 01 92  mov   $92,#$01
0d1e: bb 26     inc   $26+x
0d20: d8 a7     mov   $a7,x
0d22: 3f 4e 1d  call  $1d4e
0d25: 7d        mov   a,x
0d26: 9f        xcn   a
0d27: 5c        lsr   a
0d28: fd        mov   y,a
0d29: e8 00     mov   a,#$00
0d2b: 3f 1f 08  call  $081f
0d2e: fc        inc   y
0d2f: 3f 1f 08  call  $081f
0d32: fc        inc   y
0d33: cb 9d     mov   $9d,y
0d35: 3f d0 0a  call  $0ad0
0d38: 3d        inc   x
0d39: 3d        inc   x
0d3a: 0b 92     asl   $92
0d3c: d0 e0     bne   $0d1e
0d3e: e8 00     mov   a,#$00
0d40: fa 24 22  mov   ($22),($24)
0d43: c4 23     mov   $23,a
0d45: c4 25     mov   $25,a
0d47: fa 53 d9  mov   ($d9),($53)
0d4a: 2f 03     bra   $0d4f
0d4c: 3f e2 0d  call  $0de2
0d4f: 13 89 15  bbc0  $89,$0d67
0d52: 33 89 0b  bbc1  $89,$0d60
0d55: cd 82     mov   x,#$82
0d57: 3f a8 15  call  $15a8
0d5a: 8f 00 83  mov   $83,#$00
0d5d: 3f 46 16  call  $1646
0d60: cd 81     mov   x,#$81
0d62: 3f a8 15  call  $15a8
0d65: 12 89     clr0  $89
0d67: fa 54 8a  mov   ($8a),($54)
0d6a: fa 56 8b  mov   ($8b),($56)
0d6d: fa 58 8c  mov   ($8c),($58)
0d70: cd ff     mov   x,#$ff
0d72: bd        mov   sp,x
0d73: e4 fd     mov   a,$fd
0d75: 5f a5 02  jmp   $02a5

0d78: 7d        mov   a,x
0d79: 1c        asl   a
0d7a: d4 27     mov   $27+x,a
0d7c: e8 00     mov   a,#$00
0d7e: d5 c0 f2  mov   $f2c0+x,a
0d81: d5 c1 f2  mov   $f2c1+x,a
0d84: d5 50 01  mov   $0150+x,a
0d87: d5 51 01  mov   $0151+x,a
0d8a: d5 70 01  mov   $0170+x,a
0d8d: d5 71 01  mov   $0171+x,a
0d90: d5 80 f4  mov   $f480+x,a
0d93: d5 81 f4  mov   $f481+x,a
0d96: d5 a0 f3  mov   $f3a0+x,a
0d99: d5 61 f3  mov   $f361+x,a
0d9c: d5 00 f3  mov   $f300+x,a
0d9f: bc        inc   a
0da0: d4 26     mov   $26+x,a
0da2: e8 10     mov   a,#$10
0da4: d5 01 f3  mov   $f301+x,a
0da7: 6f        ret

0da8: e4 8f     mov   a,$8f
0daa: 64 80     cmp   a,$80
0dac: c4 80     mov   $80,a
0dae: f0 05     beq   $0db5
0db0: c4 f5     mov   $f5,a
0db2: d8 f4     mov   $f4,x
0db4: 6f        ret

0db5: ae        pop   a
0db6: ae        pop   a
0db7: e8 ff     mov   a,#$ff
0db9: c4 f5     mov   $f5,a
0dbb: d8 f4     mov   $f4,x
0dbd: e4 f4     mov   a,$f4
0dbf: f0 fc     beq   $0dbd
0dc1: e4 53     mov   a,$53
0dc3: f0 03     beq   $0dc8
0dc5: 5f 39 08  jmp   $0839

0dc8: 3f 39 08  call  $0839
0dcb: 3f e2 0d  call  $0de2
0dce: 8f ff 23  mov   $23,#$ff
0dd1: fa 54 8a  mov   ($8a),($54)
0dd4: fa 56 8b  mov   ($8b),($56)
0dd7: fa 58 8c  mov   ($8c),($58)
0dda: e8 00     mov   a,#$00
0ddc: fd        mov   y,a
0ddd: da db     movw  $db,ya
0ddf: c4 da     mov   $da,a
0de1: 6f        ret

0de2: e8 00     mov   a,#$00
0de4: fd        mov   y,a
0de5: c4 53     mov   $53,a
0de7: da 86     movw  $86,ya
0de9: c4 54     mov   $54,a
0deb: c4 56     mov   $56,a
0ded: c4 58     mov   $58,a
0def: c4 22     mov   $22,a
0df1: c4 23     mov   $23,a
0df3: da 24     movw  $24,ya
0df5: c4 5a     mov   $5a,a
0df7: c4 5c     mov   $5c,a
0df9: c4 60     mov   $60,a
0dfb: c4 7c     mov   $7c,a
0dfd: c4 7b     mov   $7b,a
0dff: c4 d9     mov   $d9,a
0e01: 8f 01 47  mov   $47,#$01
0e04: 8f ff 48  mov   $48,#$ff
0e07: eb c2     mov   y,$c2
0e09: cd 10     mov   x,#$10
0e0b: f6 03 24  mov   a,$2403+y
0e0e: d4 01     mov   $01+x,a
0e10: dc        dec   y
0e11: 1d        dec   x
0e12: d0 f7     bne   $0e0b
0e14: e5 00 24  mov   a,$2400
0e17: c4 00     mov   $00,a
0e19: e5 01 24  mov   a,$2401
0e1c: c4 01     mov   $01,a
0e1e: e8 24     mov   a,#$24
0e20: 8d 24     mov   y,#$24
0e22: 9a 00     subw  ya,$00
0e24: da 00     movw  $00,ya
0e26: cd 0e     mov   x,#$0e
0e28: 8f 80 92  mov   $92,#$80
0e2b: e5 02 24  mov   a,$2402
0e2e: ec 03 24  mov   y,$2403
0e31: da 9c     movw  $9c,ya
0e33: f4 02     mov   a,$02+x
0e35: fb 03     mov   y,$03+x
0e37: 5a 9c     cmpw  ya,$9c
0e39: f0 16     beq   $0e51
0e3b: 09 92 53  or    ($53),($92)
0e3e: 7a 00     addw  ya,$00
0e40: d4 02     mov   $02+x,a
0e42: db 03     mov   $03+x,y
0e44: 3f 78 0d  call  $0d78
0e47: e8 ff     mov   a,#$ff
0e49: d5 20 f2  mov   $f220+x,a
0e4c: e8 00     mov   a,#$00
0e4e: 3f 30 1d  call  $1d30
0e51: 1d        dec   x
0e52: 1d        dec   x
0e53: 4b 92     lsr   $92
0e55: d0 dc     bne   $0e33
0e57: 6f        ret

0e58: cd 1e     mov   x,#$1e
0e5a: 8f 80 92  mov   $92,#$80
0e5d: 8f c0 91  mov   $91,#$c0
0e60: 2f 12     bra   $0e74
0e62: cd 1a     mov   x,#$1a
0e64: 8f 20 92  mov   $92,#$20
0e67: 8f 30 91  mov   $91,#$30
0e6a: 2f 08     bra   $0e74
0e6c: cd 12     mov   x,#$12
0e6e: 8f 02 92  mov   $92,#$02
0e71: 8f 03 91  mov   $91,#$03
0e74: 93 88 01  bbc4  $88,$0e78
0e77: 6f        ret

0e78: fa 8f 94  mov   ($94),($8f)
0e7b: 8f 00 95  mov   $95,#$00
0e7e: 0b 94     asl   $94
0e80: 2b 95     rol   $95
0e82: 0b 94     asl   $94
0e84: 2b 95     rol   $95
0e86: e8 00     mov   a,#$00
0e88: 8d 33     mov   y,#$33
0e8a: 7a 94     addw  ya,$94
0e8c: da 94     movw  $94,ya
0e8e: 8d 03     mov   y,#$03
0e90: 8f 00 a5  mov   $a5,#$00
0e93: f7 94     mov   a,($94)+y
0e95: f0 34     beq   $0ecb
0e97: d4 03     mov   $03+x,a
0e99: dc        dec   y
0e9a: f7 94     mov   a,($94)+y
0e9c: d4 02     mov   $02+x,a
0e9e: 09 92 a5  or    ($a5),($92)
0ea1: 3f 78 0d  call  $0d78
0ea4: bb 26     inc   $26+x
0ea6: e8 50     mov   a,#$50
0ea8: d5 41 f2  mov   $f241+x,a
0eab: e4 90     mov   a,$90
0ead: d5 81 f2  mov   $f281+x,a
0eb0: e8 48     mov   a,#$48
0eb2: d5 00 f2  mov   $f200+x,a
0eb5: e8 00     mov   a,#$00
0eb7: d5 c0 f2  mov   $f2c0+x,a
0eba: d5 c1 f2  mov   $f2c1+x,a
0ebd: cb 9c     mov   $9c,y
0ebf: e8 02     mov   a,#$02
0ec1: 3f 30 1d  call  $1d30
0ec4: eb 9c     mov   y,$9c
0ec6: 1d        dec   x
0ec7: 1d        dec   x
0ec8: 4b 92     lsr   $92
0eca: e8 dc     mov   a,#$dc
0ecc: dc        dec   y
0ecd: 10 c4     bpl   $0e93
0ecf: e4 86     mov   a,$86
0ed1: 24 91     and   a,$91
0ed3: 04 a5     or    a,$a5
0ed5: 4e 22 00  tclr1 $0022
0ed8: 4e 5b 00  tclr1 $005b
0edb: 4e 5d 00  tclr1 $005d
0ede: 4e 61 00  tclr1 $0061
0ee1: 4e d9 00  tclr1 $00d9
0ee4: 4e da 00  tclr1 $00da
0ee7: 0e 23 00  tset1 $0023
0eea: 4e 25 00  tclr1 $0025
0eed: c4 a6     mov   $a6,a
0eef: cd 1e     mov   x,#$1e
0ef1: 8f 80 92  mov   $92,#$80
0ef4: 2f 07     bra   $0efd
0ef6: 3f d9 1f  call  $1fd9
0ef9: 1d        dec   x
0efa: 1d        dec   x
0efb: 4b 92     lsr   $92
0efd: 0b a6     asl   $a6
0eff: b0 f5     bcs   $0ef6
0f01: d0 f6     bne   $0ef9
0f03: e4 a5     mov   a,$a5
0f05: 0e 86 00  tset1 $0086
0f08: 4e 8a 00  tclr1 $008a
0f0b: 4e 8c 00  tclr1 $008c
0f0e: 4e 8b 00  tclr1 $008b
0f11: 4e 24 00  tclr1 $0024
0f14: 6f        ret

0f15: 8f 00 9c  mov   $9c,#$00
0f18: 8f 08 92  mov   $92,#$08
0f1b: 8f 16 a7  mov   $a7,#$16
0f1e: 2f 1f     bra   $0f3f
0f20: 8f 08 9c  mov   $9c,#$08
0f23: 8f 08 92  mov   $92,#$08
0f26: 8f 16 a7  mov   $a7,#$16
0f29: 2f 14     bra   $0f3f
0f2b: 8f 00 9c  mov   $9c,#$00
0f2e: 8f 04 92  mov   $92,#$04
0f31: 8f 14 a7  mov   $a7,#$14
0f34: 2f 09     bra   $0f3f
0f36: 8f 04 9c  mov   $9c,#$04
0f39: 8f 04 92  mov   $92,#$04
0f3c: 8f 14 a7  mov   $a7,#$14
0f3f: e4 8f     mov   a,$8f
0f41: cd 40     mov   x,#$40
0f43: 75 0e fe  cmp   a,$fe0e+x
0f46: f0 08     beq   $0f50
0f48: 1d        dec   x
0f49: 1d        dec   x
0f4a: 1d        dec   x
0f4b: 1d        dec   x
0f4c: d0 f5     bne   $0f43
0f4e: 2f 62     bra   $0fb2
0f50: f5 0c fe  mov   a,$fe0c+x
0f53: f0 5d     beq   $0fb2
0f55: 1d        dec   x
0f56: 1d        dec   x
0f57: 1d        dec   x
0f58: 1d        dec   x
0f59: 8d 00     mov   y,#$00
0f5b: 13 8e 02  bbc0  $8e,$0f60
0f5e: 8d 08     mov   y,#$08
0f60: d6 00 fe  mov   $fe00+y,a
0f63: f5 11 fe  mov   a,$fe11+x
0f66: d6 01 fe  mov   $fe01+y,a
0f69: f5 13 fe  mov   a,$fe13+x
0f6c: d6 02 fe  mov   $fe02+y,a
0f6f: e4 90     mov   a,$90
0f71: d6 03 fe  mov   $fe03+y,a
0f74: e4 9c     mov   a,$9c
0f76: d6 04 fe  mov   $fe04+y,a
0f79: f8 a7     mov   x,$a7
0f7b: 3f d9 1f  call  $1fd9
0f7e: e4 92     mov   a,$92
0f80: 0e 86 00  tset1 $0086
0f83: 4e 87 00  tclr1 $0087
0f86: 4e 8a 00  tclr1 $008a
0f89: 4e 8c 00  tclr1 $008c
0f8c: 4e 8b 00  tclr1 $008b
0f8f: 0e 23 00  tset1 $0023
0f92: 4e 22 00  tclr1 $0022
0f95: 4e 24 00  tclr1 $0024
0f98: 4e 25 00  tclr1 $0025
0f9b: 03 8e 08  bbs0  $8e,$0fa6
0f9e: e8 4a     mov   a,#$4a
0fa0: d4 02     mov   $02+x,a
0fa2: e8 20     mov   a,#$20
0fa4: 2f 06     bra   $0fac
0fa6: e8 4b     mov   a,#$4b
0fa8: d4 02     mov   $02+x,a
0faa: e8 20     mov   a,#$20
0fac: d4 03     mov   $03+x,a
0fae: e8 02     mov   a,#$02
0fb0: d4 26     mov   $26+x,a
0fb2: 6f        ret

0fb3: e8 02     mov   a,#$02
0fb5: d4 26     mov   $26+x,a
0fb7: e8 20     mov   a,#$20
0fb9: d4 03     mov   $03+x,a
0fbb: e8 49     mov   a,#$49
0fbd: d4 02     mov   $02+x,a
0fbf: e8 00     mov   a,#$00
0fc1: d5 51 01  mov   $0151+x,a
0fc4: d5 c1 f4  mov   $f4c1+x,a
0fc7: d5 c0 f4  mov   $f4c0+x,a
0fca: d5 70 01  mov   $0170+x,a
0fcd: d5 60 f4  mov   $f460+x,a
0fd0: 6f        ret

0fd1: c8 f0     cmp   x,#$f0
0fd3: b0 04     bcs   $0fd9
0fd5: c8 90     cmp   x,#$90
0fd7: b0 0d     bcs   $0fe6
0fd9: 7d        mov   a,x
0fda: 28 1f     and   a,#$1f
0fdc: 1c        asl   a
0fdd: fd        mov   y,a
0fde: f6 59 19  mov   a,$1959+y
0fe1: 2d        push  a
0fe2: f6 58 19  mov   a,$1958+y
0fe5: 2d        push  a
0fe6: 6f        ret

0fe7: 3f f0 0f  call  $0ff0
0fea: 3f 25 10  call  $1025
0fed: 5f 58 10  jmp   $1058

0ff0: e4 86     mov   a,$86
0ff2: 48 ff     eor   a,#$ff
0ff4: 24 53     and   a,$53
0ff6: 0e d9 00  tset1 $00d9
0ff9: eb 90     mov   y,$90
0ffb: e4 8f     mov   a,$8f
0ffd: c5 66 f1  mov   $f166,a
1000: d0 0d     bne   $100f
1002: c5 60 f1  mov   $f160,a
1005: c5 6c f1  mov   $f16c,a
1008: c5 6d f1  mov   $f16d,a
100b: cc 61 f1  mov   $f161,y
100e: 6f        ret

100f: dd        mov   a,y
1010: 80        setc
1011: a5 61 f1  sbc   a,$f161
1014: f0 e7     beq   $0ffd
1016: 3f 8b 10  call  $108b
1019: c5 6c f1  mov   $f16c,a
101c: cc 6d f1  mov   $f16d,y
101f: e8 00     mov   a,#$00
1021: c5 60 f1  mov   $f160,a
1024: 6f        ret

1025: e4 86     mov   a,$86
1027: 28 c0     and   a,#$c0
1029: 0e d9 00  tset1 $00d9
102c: eb 90     mov   y,$90
102e: e4 8f     mov   a,$8f
1030: c5 68 f1  mov   $f168,a
1033: d0 0d     bne   $1042
1035: c5 62 f1  mov   $f162,a
1038: c5 6e f1  mov   $f16e,a
103b: c5 6f f1  mov   $f16f,a
103e: cc 63 f1  mov   $f163,y
1041: 6f        ret

1042: dd        mov   a,y
1043: 80        setc
1044: a5 63 f1  sbc   a,$f163
1047: f0 e7     beq   $1030
1049: 3f 8b 10  call  $108b
104c: c5 6e f1  mov   $f16e,a
104f: cc 6f f1  mov   $f16f,y
1052: e8 00     mov   a,#$00
1054: c5 62 f1  mov   $f162,a
1057: 6f        ret

1058: e4 86     mov   a,$86
105a: 28 30     and   a,#$30
105c: 0e d9 00  tset1 $00d9
105f: eb 90     mov   y,$90
1061: e4 8f     mov   a,$8f
1063: c5 6a f1  mov   $f16a,a
1066: d0 0d     bne   $1075
1068: c5 64 f1  mov   $f164,a
106b: c5 70 f1  mov   $f170,a
106e: c5 71 f1  mov   $f171,a
1071: cc 65 f1  mov   $f165,y
1074: 6f        ret

1075: dd        mov   a,y
1076: 80        setc
1077: a5 65 f1  sbc   a,$f165
107a: f0 e7     beq   $1063
107c: 3f 8b 10  call  $108b
107f: c5 70 f1  mov   $f170,a
1082: cc 71 f1  mov   $f171,y
1085: e8 00     mov   a,#$00
1087: c5 64 f1  mov   $f164,a
108a: 6f        ret

108b: 0d        push  psw
108c: b0 03     bcs   $1091
108e: 48 ff     eor   a,#$ff
1090: bc        inc   a
1091: f8 8f     mov   x,$8f
1093: 8d 00     mov   y,#$00
1095: 9e        div   ya,x
1096: c4 bf     mov   $bf,a
1098: e8 00     mov   a,#$00
109a: 9e        div   ya,x
109b: c4 be     mov   $be,a
109d: 8e        pop   psw
109e: b0 08     bcs   $10a8
10a0: 58 ff be  eor   $be,#$ff
10a3: 58 ff bf  eor   $bf,#$ff
10a6: 3a be     incw  $be
10a8: ba be     movw  ya,$be
10aa: 6f        ret

10ab: 3f d6 10  call  $10d6
10ae: eb 90     mov   y,$90
10b0: e4 8f     mov   a,$8f
10b2: c4 ae     mov   $ae,a
10b4: d0 09     bne   $10bf
10b6: cb ab     mov   $ab,y
10b8: c4 aa     mov   $aa,a
10ba: c4 ad     mov   $ad,a
10bc: c4 ac     mov   $ac,a
10be: 6f        ret

10bf: fa ab a6  mov   ($a6),($ab)
10c2: 58 80 a6  eor   $a6,#$80
10c5: dd        mov   a,y
10c6: 48 80     eor   a,#$80
10c8: 80        setc
10c9: a4 a6     sbc   a,$a6
10cb: f0 e5     beq   $10b2
10cd: 3f 8b 10  call  $108b
10d0: da ac     movw  $ac,ya
10d2: 8f 00 aa  mov   $aa,#$00
10d5: 6f        ret

10d6: eb 90     mov   y,$90
10d8: e4 8f     mov   a,$8f
10da: c4 bb     mov   $bb,a
10dc: d0 0a     bne   $10e8
10de: cb b0     mov   $b0,y
10e0: c4 af     mov   $af,a
10e2: c4 b6     mov   $b6,a
10e4: c4 b5     mov   $b5,a
10e6: 2f 16     bra   $10fe
10e8: fa b0 a6  mov   ($a6),($b0)
10eb: 58 80 a6  eor   $a6,#$80
10ee: dd        mov   a,y
10ef: 48 80     eor   a,#$80
10f1: 80        setc
10f2: a4 a6     sbc   a,$a6
10f4: f0 e4     beq   $10da
10f6: 3f 8b 10  call  $108b
10f9: da b5     movw  $b5,ya
10fb: 8f 00 af  mov   $af,#$00
10fe: e4 86     mov   a,$86
1100: 48 ff     eor   a,#$ff
1102: 24 53     and   a,$53
1104: 0e da 00  tset1 $00da
1107: 6f        ret

1108: e4 8f     mov   a,$8f
110a: c4 b2     mov   $b2,a
110c: e4 86     mov   a,$86
110e: 28 c0     and   a,#$c0
1110: 0e da 00  tset1 $00da
1113: 6f        ret

1114: e4 8f     mov   a,$8f
1116: c4 b4     mov   $b4,a
1118: e4 86     mov   a,$86
111a: 28 30     and   a,#$30
111c: 0e da 00  tset1 $00da
111f: 6f        ret

1120: cd 1c     mov   x,#$1c
1122: 8f c0 92  mov   $92,#$c0
1125: 2f 05     bra   $112c
1127: cd 18     mov   x,#$18
1129: 8f 30 92  mov   $92,#$30
112c: e4 8f     mov   a,$8f
112e: d5 81 f2  mov   $f281+x,a
1131: d5 83 f2  mov   $f283+x,a
1134: e8 00     mov   a,#$00
1136: d5 c1 f2  mov   $f2c1+x,a
1139: d5 c3 f2  mov   $f2c3+x,a
113c: 09 92 d9  or    ($d9),($92)
113f: 6f        ret

1140: e4 8f     mov   a,$8f
1142: d0 04     bne   $1148
1144: 12 88     clr0  $88
1146: 2f 08     bra   $1150
1148: 02 88     set0  $88
114a: e8 40     mov   a,#$40
114c: c4 e6     mov   $e6,a
114e: c4 e7     mov   $e7,a
1150: 8f ff d9  mov   $d9,#$ff
1153: 6f        ret

1154: 3f 60 11  call  $1160
1157: 3f ad 11  call  $11ad
115a: 3f b4 11  call  $11b4
115d: 5f bb 11  jmp   $11bb

1160: e4 86     mov   a,$86
1162: 48 ff     eor   a,#$ff
1164: 0e 23 00  tset1 $0023
1167: 4e 22 00  tclr1 $0022
116a: 4e 8a 00  tclr1 $008a
116d: 4e 8c 00  tclr1 $008c
1170: 4e 8b 00  tclr1 $008b
1173: e8 00     mov   a,#$00
1175: c4 53     mov   $53,a
1177: c4 54     mov   $54,a
1179: c4 58     mov   $58,a
117b: c4 56     mov   $56,a
117d: 9c        dec   a
117e: c4 c4     mov   $c4,a
1180: c4 c5     mov   $c5,a
1182: 6f        ret

1183: 93 8f 03  bbc4  $8f,$1189
1186: 3f a2 11  call  $11a2
1189: b3 8f 03  bbc5  $8f,$118f
118c: 3f a5 11  call  $11a5
118f: 13 8f 03  bbc0  $8f,$1195
1192: 3f ad 11  call  $11ad
1195: 33 8f 03  bbc1  $8f,$119b
1198: 3f b4 11  call  $11b4
119b: 73 8f 03  bbc3  $8f,$11a1
119e: 5f bb 11  jmp   $11bb

11a1: 6f        ret

11a2: e8 08     mov   a,#$08
11a4: ec e8 04  mov   y,$04e8
11a7: 24 87     and   a,$87
11a9: 0e 23 00  tset1 $0023
11ac: 6f        ret

11ad: e4 86     mov   a,$86
11af: 28 c0     and   a,#$c0
11b1: d0 0f     bne   $11c2
11b3: 6f        ret

11b4: e4 86     mov   a,$86
11b6: 28 30     and   a,#$30
11b8: d0 08     bne   $11c2
11ba: 6f        ret

11bb: e4 86     mov   a,$86
11bd: 28 03     and   a,#$03
11bf: d0 01     bne   $11c2
11c1: 6f        ret

11c2: 0e 23 00  tset1 $0023
11c5: 4e 22 00  tclr1 $0022
11c8: 4e 25 00  tclr1 $0025
11cb: 4e d9 00  tclr1 $00d9
11ce: 4e da 00  tclr1 $00da
11d1: c4 a5     mov   $a5,a
11d3: cd 1e     mov   x,#$1e
11d5: 2f 0e     bra   $11e5
11d7: e8 49     mov   a,#$49
11d9: d4 02     mov   $02+x,a
11db: e8 20     mov   a,#$20
11dd: d4 03     mov   $03+x,a
11df: e8 02     mov   a,#$02
11e1: d4 26     mov   $26+x,a
11e3: 1d        dec   x
11e4: 1d        dec   x
11e5: 0b a5     asl   $a5
11e7: b0 ee     bcs   $11d7
11e9: d0 f8     bne   $11e3
11eb: 6f        ret

11ec: 03 88 0b  bbs0  $88,$11fa
11ef: 03 8f 09  bbs0  $8f,$11fb
11f2: e8 40     mov   a,#$40
11f4: c4 e6     mov   $e6,a
11f6: c4 e7     mov   $e7,a
11f8: 32 88     clr1  $88
11fa: 6f        ret

11fb: e8 50     mov   a,#$50
11fd: c4 ee     mov   $ee,a
11ff: 8d 00     mov   y,#$00
1201: e8 7f     mov   a,#$7f
1203: cd a0     mov   x,#$a0
1205: 9e        div   ya,x
1206: c4 ed     mov   $ed,a
1208: e8 00     mov   a,#$00
120a: 9e        div   ya,x
120b: c4 ec     mov   $ec,a
120d: 8d 40     mov   y,#$40
120f: e8 00     mov   a,#$00
1211: da ea     movw  $ea,ya
1213: 22 88     set1  $88
1215: 5f 99 21  jmp   $2199

1218: fa 8f a8  mov   ($a8),($8f)
121b: 8f ff d9  mov   $d9,#$ff
121e: 6f        ret

121f: e4 8f     mov   a,$8f
1221: 4e a8 00  tclr1 $00a8
1224: 0e d9 00  tset1 $00d9
1227: 6f        ret

1228: e4 8f     mov   a,$8f
122a: 0e a8 00  tset1 $00a8
122d: 0e d9 00  tset1 $00d9
1230: 6f        ret

1231: e4 8f     mov   a,$8f
1233: f0 35     beq   $126a
1235: 8d 05     mov   y,#$05
1237: cb f2     mov   $f2,y
1239: e4 f3     mov   a,$f3
123b: 28 7f     and   a,#$7f
123d: c4 f3     mov   $f3,a
123f: dd        mov   a,y
1240: 60        clrc
1241: 88 10     adc   a,#$10
1243: fd        mov   y,a
1244: 10 f1     bpl   $1237
1246: cd 00     mov   x,#$00
1248: 8d 00     mov   y,#$00
124a: cb f2     mov   $f2,y
124c: d8 f3     mov   $f3,x
124e: fc        inc   y
124f: cb f2     mov   $f2,y
1251: d8 f3     mov   $f3,x
1253: dd        mov   a,y
1254: 60        clrc
1255: 88 0f     adc   a,#$0f
1257: fd        mov   y,a
1258: 10 f0     bpl   $124a
125a: 82 88     set4  $88
125c: e8 00     mov   a,#$00
125e: c4 d9     mov   $d9,a
1260: c4 22     mov   $22,a
1262: 8d 10     mov   y,#$10
1264: d6 c6 00  mov   $00c6+y,a
1267: fe fb     dbnz  y,$1264
1269: 6f        ret

126a: 8d 05     mov   y,#$05
126c: cb f2     mov   $f2,y
126e: e4 f3     mov   a,$f3
1270: 08 80     or    a,#$80
1272: c4 f3     mov   $f3,a
1274: dd        mov   a,y
1275: 60        clrc
1276: 88 10     adc   a,#$10
1278: fd        mov   y,a
1279: 10 f1     bpl   $126c
127b: 92 88     clr4  $88
127d: 8f ff d9  mov   $d9,#$ff
1280: 6f        ret

1281: 7d        mov   a,x
1282: bc        inc   a
1283: 28 7f     and   a,#$7f
1285: c4 9c     mov   $9c,a
1287: e4 f4     mov   a,$f4
1289: 64 f4     cmp   a,$f4
128b: d0 fa     bne   $1287
128d: 3e f4     cmp   x,$f4
128f: d0 02     bne   $1293
1291: d8 f4     mov   $f4,x
1293: 64 9c     cmp   a,$9c
1295: d0 f0     bne   $1287
1297: 5d        mov   x,a
1298: 13 89 03  bbc0  $89,$129e
129b: 3f d5 15  call  $15d5
129e: ba f6     movw  ya,$f6
12a0: da 98     movw  $98,ya
12a2: e4 f5     mov   a,$f5
12a4: 68 e0     cmp   a,#$e0
12a6: f0 49     beq   $12f1
12a8: c4 f5     mov   $f5,a
12aa: d8 f4     mov   $f4,x
12ac: 28 07     and   a,#$07
12ae: 1c        asl   a
12af: ad 22     cmp   y,#$22
12b1: 90 10     bcc   $12c3
12b3: ad 33     cmp   y,#$33
12b5: d0 0e     bne   $12c5
12b7: 4d        push  x
12b8: 2d        push  a
12b9: 3f b4 11  call  $11b4
12bc: 3f ad 11  call  $11ad
12bf: ae        pop   a
12c0: ce        pop   x
12c1: 2f 02     bra   $12c5
12c3: e8 00     mov   a,#$00
12c5: fd        mov   y,a
12c6: e8 12     mov   a,#$12
12c8: 2d        push  a
12c9: e8 98     mov   a,#$98
12cb: 2d        push  a
12cc: f6 dd 17  mov   a,$17dd+y
12cf: 2d        push  a
12d0: f6 dc 17  mov   a,$17dc+y
12d3: 2d        push  a
12d4: e5 90 04  mov   a,$0490
12d7: ec 91 04  mov   y,$0491
12da: da 94     movw  $94,ya
12dc: e8 ec     mov   a,#$ec
12de: 8d 00     mov   y,#$00
12e0: d7 94     mov   ($94)+y,a
12e2: 3e f4     cmp   x,$f4
12e4: f0 fc     beq   $12e2
12e6: f8 f4     mov   x,$f4
12e8: 3e f4     cmp   x,$f4
12ea: d0 fa     bne   $12e6
12ec: e8 ee     mov   a,#$ee
12ee: c4 f5     mov   $f5,a
12f0: 6f        ret

12f1: e5 90 04  mov   a,$0490
12f4: ec 91 04  mov   y,$0491
12f7: da 94     movw  $94,ya
12f9: e8 3f     mov   a,#$3f
12fb: 8d 00     mov   y,#$00
12fd: d7 94     mov   ($94)+y,a
12ff: 8f 00 f5  mov   $f5,#$00
1302: d8 f4     mov   $f4,x
1304: 5f 39 08  jmp   $0839

1307: ba 98     movw  ya,$98
1309: c5 26 13  mov   $1326,a
130c: cc 27 13  mov   $1327,y
130f: c5 2e 13  mov   $132e,a
1312: cc 2f 13  mov   $132f,y
1315: c5 34 13  mov   $1334,a
1318: cc 35 13  mov   $1335,y
131b: 8d 00     mov   y,#$00
131d: 2f 04     bra   $1323
131f: 3e f4     cmp   x,$f4
1321: d0 1a     bne   $133d
1323: e4 f5     mov   a,$f5
1325: d6 20 f1  mov   $f120+y,a
1328: fc        inc   y
1329: d8 f4     mov   $f4,x
132b: e4 f6     mov   a,$f6
132d: d6 20 f1  mov   $f120+y,a
1330: fc        inc   y
1331: e4 f7     mov   a,$f7
1333: d6 20 f1  mov   $f120+y,a
1336: fc        inc   y
1337: 30 1e     bmi   $1357
1339: 3e f4     cmp   x,$f4
133b: f0 fc     beq   $1339
133d: f8 f4     mov   x,$f4
133f: 10 de     bpl   $131f
1341: 3e f4     cmp   x,$f4
1343: d0 f8     bne   $133d
1345: c8 e0     cmp   x,#$e0
1347: f0 2d     beq   $1376
1349: c8 ff     cmp   x,#$ff
134b: d0 ec     bne   $1339
134d: e8 f0     mov   a,#$f0
134f: 2e f5 e7  cbne  $f5,$1339
1352: c4 8f     mov   $8f,a
1354: 5f 6c 15  jmp   $156c

1357: dd        mov   a,y
1358: 28 7f     and   a,#$7f
135a: fd        mov   y,a
135b: e5 26 13  mov   a,$1326
135e: 48 80     eor   a,#$80
1360: 30 09     bmi   $136b
1362: ac 27 13  inc   $1327
1365: ac 2f 13  inc   $132f
1368: ac 35 13  inc   $1335
136b: c5 26 13  mov   $1326,a
136e: c5 2e 13  mov   $132e,a
1371: c5 34 13  mov   $1334,a
1374: 2f c3     bra   $1339
1376: 6f        ret

1377: ba 98     movw  ya,$98
1379: c5 96 13  mov   $1396,a
137c: cc 97 13  mov   $1397,y
137f: c5 9e 13  mov   $139e,a
1382: cc 9f 13  mov   $139f,y
1385: c5 a4 13  mov   $13a4,a
1388: cc a5 13  mov   $13a5,y
138b: 8d 00     mov   y,#$00
138d: 2f 04     bra   $1393
138f: 3e f4     cmp   x,$f4
1391: d0 25     bne   $13b8
1393: e4 f5     mov   a,$f5
1395: d6 98 00  mov   $0098+y,a
1398: fc        inc   y
1399: e4 f6     mov   a,$f6
139b: d8 f4     mov   $f4,x
139d: d6 98 00  mov   $0098+y,a
13a0: fc        inc   y
13a1: e4 f7     mov   a,$f7
13a3: d6 98 00  mov   $0098+y,a
13a6: fc        inc   y
13a7: 30 29     bmi   $13d2
13a9: e4 fd     mov   a,$fd
13ab: f0 07     beq   $13b4
13ad: 4d        push  x
13ae: 6d        push  y
13af: 3f b6 03  call  $03b6
13b2: ee        pop   y
13b3: ce        pop   x
13b4: 3e f4     cmp   x,$f4
13b6: f0 f1     beq   $13a9
13b8: f8 f4     mov   x,$f4
13ba: 10 d3     bpl   $138f
13bc: 3e f4     cmp   x,$f4
13be: d0 f8     bne   $13b8
13c0: c8 e0     cmp   x,#$e0
13c2: f0 2d     beq   $13f1
13c4: c8 ff     cmp   x,#$ff
13c6: d0 e1     bne   $13a9
13c8: e8 f0     mov   a,#$f0
13ca: 2e f5 dc  cbne  $f5,$13a9
13cd: c4 8f     mov   $8f,a
13cf: 5f 6c 15  jmp   $156c

13d2: dd        mov   a,y
13d3: 28 7f     and   a,#$7f
13d5: fd        mov   y,a
13d6: e5 96 13  mov   a,$1396
13d9: 48 80     eor   a,#$80
13db: 30 09     bmi   $13e6
13dd: ac 97 13  inc   $1397
13e0: ac 9f 13  inc   $139f
13e3: ac a5 13  inc   $13a5
13e6: c5 96 13  mov   $1396,a
13e9: c5 9e 13  mov   $139e,a
13ec: c5 a4 13  mov   $13a4,a
13ef: 2f b8     bra   $13a9
13f1: 6f        ret

13f2: ba 98     movw  ya,$98
13f4: c5 0b 14  mov   $140b,a
13f7: cc 0c 14  mov   $140c,y
13fa: c5 13 14  mov   $1413,a
13fd: cc 14 14  mov   $1414,y
1400: 8d 00     mov   y,#$00
1402: 2f 04     bra   $1408
1404: 3e f4     cmp   x,$f4
1406: d0 1a     bne   $1422
1408: e4 f5     mov   a,$f5
140a: d6 c0 23  mov   $23c0+y,a
140d: fc        inc   y
140e: e4 f6     mov   a,$f6
1410: d8 f4     mov   $f4,x
1412: d6 c0 23  mov   $23c0+y,a
1415: fc        inc   y
1416: d0 06     bne   $141e
1418: ac 0c 14  inc   $140c
141b: ac 14 14  inc   $1414
141e: 3e f4     cmp   x,$f4
1420: f0 fc     beq   $141e
1422: f8 f4     mov   x,$f4
1424: 10 de     bpl   $1404
1426: 3e f4     cmp   x,$f4
1428: d0 f8     bne   $1422
142a: c8 e0     cmp   x,#$e0
142c: f0 0e     beq   $143c
142e: c8 ff     cmp   x,#$ff
1430: d0 ec     bne   $141e
1432: e8 f0     mov   a,#$f0
1434: 2e f5 e7  cbne  $f5,$141e
1437: c4 8f     mov   $8f,a
1439: 5f 6c 15  jmp   $156c

143c: 6f        ret

143d: ba 98     movw  ya,$98
143f: c5 56 14  mov   $1456,a
1442: cc 57 14  mov   $1457,y
1445: c5 5e 14  mov   $145e,a
1448: cc 5f 14  mov   $145f,y
144b: 8d 00     mov   y,#$00
144d: 2f 04     bra   $1453
144f: 3e f4     cmp   x,$f4
1451: d0 25     bne   $1478
1453: e4 f6     mov   a,$f6
1455: d6 98 00  mov   $0098+y,a
1458: fc        inc   y
1459: e4 f7     mov   a,$f7
145b: d8 f4     mov   $f4,x
145d: d6 98 00  mov   $0098+y,a
1460: fc        inc   y
1461: d0 06     bne   $1469
1463: ac 57 14  inc   $1457
1466: ac 5f 14  inc   $145f
1469: e4 fd     mov   a,$fd
146b: f0 07     beq   $1474
146d: 4d        push  x
146e: 6d        push  y
146f: 3f b6 03  call  $03b6
1472: ee        pop   y
1473: ce        pop   x
1474: 3e f4     cmp   x,$f4
1476: f0 f1     beq   $1469
1478: f8 f4     mov   x,$f4
147a: 10 d3     bpl   $144f
147c: 3e f4     cmp   x,$f4
147e: d0 f8     bne   $1478
1480: c8 e0     cmp   x,#$e0
1482: f0 0e     beq   $1492
1484: c8 ff     cmp   x,#$ff
1486: d0 e1     bne   $1469
1488: e8 f0     mov   a,#$f0
148a: 2e f5 dc  cbne  $f5,$1469
148d: c4 8f     mov   $8f,a
148f: 5f 6c 15  jmp   $156c

1492: 6f        ret

1493: d8 f4     mov   $f4,x
1495: 3e f4     cmp   x,$f4
1497: f0 fc     beq   $1495
1499: f8 f4     mov   x,$f4
149b: 3e f4     cmp   x,$f4
149d: d0 fa     bne   $1499
149f: 7d        mov   a,x
14a0: 10 f1     bpl   $1493
14a2: c8 e0     cmp   x,#$e0
14a4: f0 0e     beq   $14b4
14a6: c8 ff     cmp   x,#$ff
14a8: d0 e9     bne   $1493
14aa: e8 f0     mov   a,#$f0
14ac: 2e f5 e4  cbne  $f5,$1493
14af: c4 8f     mov   $8f,a
14b1: 5f 6c 15  jmp   $156c

14b4: 6f        ret

14b5: ba f6     movw  ya,$f6
14b7: da 9a     movw  $9a,ya
14b9: d8 f4     mov   $f4,x
14bb: 3f 24 15  call  $1524
14be: b0 63     bcs   $1523
14c0: ba f6     movw  ya,$f6
14c2: da 9c     movw  $9c,ya
14c4: d8 f4     mov   $f4,x
14c6: dd        mov   a,y
14c7: f0 28     beq   $14f1
14c9: ba 98     movw  ya,$98
14cb: c5 dc 14  mov   $14dc,a
14ce: cc dd 14  mov   $14dd,y
14d1: ba 9a     movw  ya,$9a
14d3: c5 df 14  mov   $14df,a
14d6: cc e0 14  mov   $14e0,y
14d9: 8d 00     mov   y,#$00
14db: f6 b4 9e  mov   a,$9eb4+y
14de: d6 e2 61  mov   $61e2+y,a
14e1: fc        inc   y
14e2: d0 f7     bne   $14db
14e4: ab 99     inc   $99
14e6: ab 9b     inc   $9b
14e8: ac dd 14  inc   $14dd
14eb: ac e0 14  inc   $14e0
14ee: 6e 9d ea  dbnz  $9d,$14db
14f1: 1a 98     decw  $98
14f3: 1a 9a     decw  $9a
14f5: ba 98     movw  ya,$98
14f7: c5 0a 15  mov   $150a,a
14fa: cc 0b 15  mov   $150b,y
14fd: ba 9a     movw  ya,$9a
14ff: c5 0d 15  mov   $150d,a
1502: cc 0e 15  mov   $150e,y
1505: eb 9c     mov   y,$9c
1507: f0 08     beq   $1511
1509: f6 b3 9e  mov   a,$9eb3+y
150c: d6 e1 61  mov   $61e1+y,a
150f: fe f8     dbnz  y,$1509
1511: 3f 24 15  call  $1524
1514: b0 0d     bcs   $1523
1516: ba f6     movw  ya,$f6
1518: da 98     movw  $98,ya
151a: d8 f4     mov   $f4,x
151c: 3f 24 15  call  $1524
151f: b0 02     bcs   $1523
1521: 2f 92     bra   $14b5
1523: 6f        ret

1524: 3e f4     cmp   x,$f4
1526: f0 fc     beq   $1524
1528: f8 f4     mov   x,$f4
152a: 10 16     bpl   $1542
152c: 3e f4     cmp   x,$f4
152e: d0 f8     bne   $1528
1530: c8 e0     cmp   x,#$e0
1532: f0 14     beq   $1548
1534: c8 ff     cmp   x,#$ff
1536: d0 ec     bne   $1524
1538: e8 f0     mov   a,#$f0
153a: 2e f5 e7  cbne  $f5,$1524
153d: c4 8f     mov   $8f,a
153f: 5f 6c 15  jmp   $156c

1542: 3e f4     cmp   x,$f4
1544: f0 04     beq   $154a
1546: 2f dc     bra   $1524
1548: 80        setc
1549: 8d 60     mov   y,#$60
154b: 6f        ret

154c: e4 8f     mov   a,$8f
154e: 60        clrc
154f: 88 ff     adc   a,#$ff
1551: ca 89 a0  mov1  $0089,5,c
1554: b0 04     bcs   $155a
1556: e8 27     mov   a,#$27
1558: 2f 02     bra   $155c
155a: e8 01     mov   a,#$01
155c: 8f 02 f1  mov   $f1,#$02
155f: c4 fa     mov   $fa,a
1561: 8f 03 f1  mov   $f1,#$03
1564: 6f        ret

1565: e4 8f     mov   a,$8f
1567: 28 0f     and   a,#$0f
1569: c4 db     mov   $db,a
156b: 6f        ret

156c: e4 8f     mov   a,$8f
156e: 68 01     cmp   a,#$01
1570: d0 09     bne   $157b
1572: e4 90     mov   a,$90
1574: 60        clrc
1575: 88 ff     adc   a,#$ff
1577: ca 89 e0  mov1  $0089,7,c
157a: 6f        ret

157b: 68 f0     cmp   a,#$f0
157d: d0 fb     bne   $157a
157f: e8 e0     mov   a,#$e0
1581: 8d 6c     mov   y,#$6c
1583: 3f 1f 08  call  $081f
1586: 8f 80 f1  mov   $f1,#$80
1589: 5f c0 ff  jmp   $ffc0

; vcmd e5,e7 - nop
158c: 6f        ret

158d: cb be     mov   $be,y
158f: 60        clrc
1590: fd        mov   y,a
1591: 30 07     bmi   $159a
1593: 84 be     adc   a,$be
1595: 90 09     bcc   $15a0
1597: e8 ff     mov   a,#$ff
1599: 6f        ret

159a: 84 be     adc   a,$be
159c: b0 02     bcs   $15a0
159e: e8 00     mov   a,#$00
15a0: 6f        ret

15a1: eb 8f     mov   y,$8f
15a3: e4 90     mov   a,$90
15a5: 5f 1f 08  jmp   $081f

15a8: 8f 00 e0  mov   $e0,#$00
15ab: e6        mov   a,(x)
15ac: f0 16     beq   $15c4
15ae: e4 83     mov   a,$83
15b0: 2f 0c     bra   $15be
15b2: eb fe     mov   y,$fe
15b4: d0 07     bne   $15bd
15b6: 2d        push  a
15b7: 3f 23 09  call  $0923
15ba: ae        pop   a
15bb: 2f f5     bra   $15b2
15bd: bc        inc   a
15be: 66        cmp   a,(x)
15bf: 90 f1     bcc   $15b2
15c1: 3f 64 09  call  $0964
15c4: 6f        ret

15c5: 3f 01 16  call  $1601
15c8: 8f 00 83  mov   $83,#$00
15cb: e4 82     mov   a,$82
15cd: f0 01     beq   $15d0
15cf: 6f        ret

15d0: 32 89     clr1  $89
15d2: 5f 46 16  jmp   $1646

15d5: e4 fe     mov   a,$fe
15d7: 60        clrc
15d8: 84 83     adc   a,$83
15da: c4 83     mov   $83,a
15dc: 6f        ret

15dd: e4 8f     mov   a,$8f
15df: 28 0f     and   a,#$0f
15e1: 64 81     cmp   a,$81
15e3: f0 1b     beq   $1600
15e5: 8f 00 83  mov   $83,#$00
15e8: c4 81     mov   $81,a
15ea: 3f 01 16  call  $1601
15ed: cd 82     mov   x,#$82
15ef: 3f a8 15  call  $15a8
15f2: 3f 46 16  call  $1646
15f5: cd 81     mov   x,#$81
15f7: 3f a8 15  call  $15a8
15fa: e4 53     mov   a,$53
15fc: d0 02     bne   $1600
15fe: c4 4f     mov   $4f,a
1600: 6f        ret

1601: 8f 6c f2  mov   $f2,#$6c
1604: e4 f3     mov   a,$f3
1606: 08 20     or    a,#$20
1608: c4 f3     mov   $f3,a
160a: e8 00     mov   a,#$00
160c: 8d 4d     mov   y,#$4d
160e: 3f 1f 08  call  $081f
1611: 8d 0d     mov   y,#$0d
1613: 3f 1f 08  call  $081f
1616: 8d 2c     mov   y,#$2c
1618: 3f 1f 08  call  $081f
161b: 8d 3c     mov   y,#$3c
161d: 3f 1f 08  call  $081f
1620: 8d 7d     mov   y,#$7d
1622: cb f2     mov   $f2,y
1624: e4 f3     mov   a,$f3
1626: 28 0f     and   a,#$0f
1628: c4 82     mov   $82,a
162a: e4 81     mov   a,$81
162c: 3f 1f 08  call  $081f
162f: 1c        asl   a
1630: 1c        asl   a
1631: 1c        asl   a
1632: 48 ff     eor   a,#$ff
1634: bc        inc   a
1635: 60        clrc
1636: 88 f1     adc   a,#$f1
1638: 8d 6d     mov   y,#$6d
163a: 3f 1f 08  call  $081f
163d: 8f 01 f1  mov   $f1,#$01
1640: eb fe     mov   y,$fe
1642: 8f 03 f1  mov   $f1,#$03
1645: 6f        ret

1646: 8f 01 f1  mov   $f1,#$01
1649: eb fe     mov   y,$fe
164b: 8f 03 f1  mov   $f1,#$03
164e: 8f 6c f2  mov   $f2,#$6c
1651: e4 f3     mov   a,$f3
1653: 28 df     and   a,#$df
1655: c4 f3     mov   $f3,a
1657: 6f        ret

1658: fa c5 c4  mov   ($c4),($c5)
165b: e8 00     mov   a,#$00
165d: c4 94     mov   $94,a
165f: e8 f2     mov   a,#$f2
1661: c4 95     mov   $95,a
1663: e8 00     mov   a,#$00
1665: c4 96     mov   $96,a
1667: e8 f7     mov   a,#$f7
1669: c4 97     mov   $97,a
166b: 8d 00     mov   y,#$00
166d: f7 94     mov   a,($94)+y
166f: d7 96     mov   ($96)+y,a
1671: fc        inc   y
1672: d0 f9     bne   $166d
1674: ab 95     inc   $95
1676: ab 97     inc   $97
1678: 78 f7 95  cmp   $95,#$f7
167b: d0 f0     bne   $166d
167d: 1a 96     decw  $96
167f: 8d 80     mov   y,#$80
1681: f6 ff ff  mov   a,$ffff+y
1684: d7 96     mov   ($96)+y,a
1686: fe f9     dbnz  y,$1681
1688: ab 97     inc   $97
168a: 8d 90     mov   y,#$90
168c: f6 ff 00  mov   a,$00ff+y
168f: d7 96     mov   ($96)+y,a
1691: fe f9     dbnz  y,$168c
1693: 6f        ret

1694: 8f ff c4  mov   $c4,#$ff
1697: e8 00     mov   a,#$00
1699: c4 94     mov   $94,a
169b: e8 f2     mov   a,#$f2
169d: c4 95     mov   $95,a
169f: e8 00     mov   a,#$00
16a1: c4 96     mov   $96,a
16a3: e8 f7     mov   a,#$f7
16a5: c4 97     mov   $97,a
16a7: 8d 00     mov   y,#$00
16a9: f7 96     mov   a,($96)+y
16ab: d7 94     mov   ($94)+y,a
16ad: fc        inc   y
16ae: d0 f9     bne   $16a9
16b0: ab 95     inc   $95
16b2: ab 97     inc   $97
16b4: 78 f7 95  cmp   $95,#$f7
16b7: d0 f0     bne   $16a9
16b9: 1a 96     decw  $96
16bb: 8d 80     mov   y,#$80
16bd: f7 96     mov   a,($96)+y
16bf: d6 ff ff  mov   $ffff+y,a
16c2: fe f9     dbnz  y,$16bd
16c4: ab 97     inc   $97
16c6: 8d 90     mov   y,#$90
16c8: f7 96     mov   a,($96)+y
16ca: d6 ff 00  mov   $00ff+y,a
16cd: fe f9     dbnz  y,$16c8
16cf: 6f        ret

16d0: e8 9c     mov   a,#$9c
16d2: c4 a1     mov   $a1,a
16d4: e8 c7     mov   a,#$c7
16d6: 8f 00 a5  mov   $a5,#$00
16d9: 60        clrc
16da: 8f 09 92  mov   $92,#$09
16dd: 83 89 02  bbs4  $89,$16e2
16e0: 2f 06     bra   $16e8
16e2: 88 08     adc   a,#$08
16e4: c2 92     set6  $92
16e6: e2 a5     set7  $a5
16e8: c4 a2     mov   $a2,a
16ea: 88 08     adc   a,#$08
16ec: c4 a4     mov   $a4,a
16ee: f8 a2     mov   x,$a2
16f0: eb 92     mov   y,$92
16f2: cb f2     mov   $f2,y
16f4: eb f3     mov   y,$f3
16f6: cb a3     mov   $a3,y
16f8: bf        mov   a,(x)+
16f9: 1c        asl   a
16fa: cf        mul   ya
16fb: dd        mov   a,y
16fc: 28 70     and   a,#$70
16fe: c4 a0     mov   $a0,a
1700: eb a3     mov   y,$a3
1702: bf        mov   a,(x)+
1703: 1c        asl   a
1704: cf        mul   ya
1705: dd        mov   a,y
1706: d8 a2     mov   $a2,x
1708: f8 a1     mov   x,$a1
170a: 9f        xcn   a
170b: 28 07     and   a,#$07
170d: 04 a0     or    a,$a0
170f: 04 a5     or    a,$a5
1711: af        mov   (x)+,a
1712: d8 a1     mov   $a1,x
1714: 60        clrc
1715: 98 10 92  adc   $92,#$10
1718: f8 a2     mov   x,$a2
171a: 3e a4     cmp   x,$a4
171c: d0 d2     bne   $16f0
171e: ba 9c     movw  ya,$9c
1720: da f4     movw  $f4,ya
1722: ba 9e     movw  ya,$9e
1724: da f6     movw  $f6,ya
1726: ea 89 80  not1  $0089,4
1729: 6f        ret

172a: e5 66 f1  mov   a,$f166
172d: f0 31     beq   $1760
172f: 9c        dec   a
1730: c5 66 f1  mov   $f166,a
1733: 5d        mov   x,a
1734: e5 60 f1  mov   a,$f160
1737: 60        clrc
1738: 85 6c f1  adc   a,$f16c
173b: c5 60 f1  mov   $f160,a
173e: e5 61 f1  mov   a,$f161
1741: 85 6d f1  adc   a,$f16d
1744: 65 61 f1  cmp   a,$f161
1747: c5 61 f1  mov   $f161,a
174a: f0 03     beq   $174f
174c: 09 53 d9  or    ($d9),($53)
174f: fd        mov   y,a
1750: d0 0e     bne   $1760
1752: 7d        mov   a,x
1753: d0 0b     bne   $1760
1755: ba c4     movw  ya,$c4
1757: 2d        push  a
1758: 6d        push  y
1759: 3f 60 11  call  $1160
175c: ee        pop   y
175d: ae        pop   a
175e: da c4     movw  $c4,ya
1760: e5 68 f1  mov   a,$f168
1763: f0 29     beq   $178e
1765: 9c        dec   a
1766: c5 68 f1  mov   $f168,a
1769: 5d        mov   x,a
176a: e5 62 f1  mov   a,$f162
176d: 60        clrc
176e: 85 6e f1  adc   a,$f16e
1771: c5 62 f1  mov   $f162,a
1774: e5 63 f1  mov   a,$f163
1777: 85 6f f1  adc   a,$f16f
177a: 65 63 f1  cmp   a,$f163
177d: c5 63 f1  mov   $f163,a
1780: f0 03     beq   $1785
1782: 09 86 d9  or    ($d9),($86)
1785: fd        mov   y,a
1786: d0 06     bne   $178e
1788: 7d        mov   a,x
1789: d0 03     bne   $178e
178b: 3f ad 11  call  $11ad
178e: e5 6a f1  mov   a,$f16a
1791: f0 29     beq   $17bc
1793: 9c        dec   a
1794: c5 6a f1  mov   $f16a,a
1797: 5d        mov   x,a
1798: e5 64 f1  mov   a,$f164
179b: 60        clrc
179c: 85 70 f1  adc   a,$f170
179f: c5 64 f1  mov   $f164,a
17a2: e5 65 f1  mov   a,$f165
17a5: 85 71 f1  adc   a,$f171
17a8: 65 65 f1  cmp   a,$f165
17ab: c5 65 f1  mov   $f165,a
17ae: f0 03     beq   $17b3
17b0: 09 86 d9  or    ($d9),($86)
17b3: fd        mov   y,a
17b4: d0 06     bne   $17bc
17b6: 7d        mov   a,x
17b7: d0 03     bne   $17bc
17b9: 3f b4 11  call  $11b4
17bc: e4 ae     mov   a,$ae
17be: f0 08     beq   $17c8
17c0: 8b ae     dec   $ae
17c2: ba ac     movw  ya,$ac
17c4: 7a aa     addw  ya,$aa
17c6: da aa     movw  $aa,ya
17c8: e4 bb     mov   a,$bb
17ca: f0 0f     beq   $17db
17cc: 8b bb     dec   $bb
17ce: ba b5     movw  ya,$b5
17d0: 7a af     addw  ya,$af
17d2: 7e b0     cmp   y,$b0
17d4: da af     movw  $af,ya
17d6: f0 03     beq   $17db
17d8: 09 53 da  or    ($da),($53)
17db: 6f        ret

17dc: dw $1493
17de: dw $1493
17e0: dw $13f2
17e2: dw $1307
17e4: dw $1493
17e6: dw $1377
17e8: dw $143d
17ea: dw $14b5

17ec: dw $19e7  ; c4 - volume
17ee: dw $19f8  ; c5 - volume fade
17f0: dw $1a3e  ; c6 - panpot
17f2: dw $1a4e  ; c7 - panpot fade
17f4: dw $1a6e  ; c8 - portamento
17f6: dw $1af8  ; c9 - vibrato on
17f8: dw $1b8f  ; ca - vibrato off
17fa: dw $1bb7  ; cb - tremolo on
17fc: dw $1bf5  ; cc - tremolo off
17fe: dw $1bfc  ; cd - panpot LFO on
1700: dw $1c52  ; ce - panpot LFO off
1802: dw $1cd5  ; cf - set noise frequency
1804: dw $1c9d  ; d0 - noise on
1806: dw $1cc5  ; d1 - noise off
1808: dw $1cf5  ; d2 - pitchmod on
180a: dw $1d16  ; d3 - pitchmod off
180c: dw $1c79  ; d4 - echo on
180e: dw $1c8d  ; d5 - echo off
1810: dw $1c72  ; d6 - set octave
1812: dw $1c5e  ; d7 - increase octave
1814: dw $1c68  ; d8 - decrease octave
1816: dw $1a7d  ; d9 - transpose (absolute)
1818: dw $1a79  ; da - transpose (relative)
181a: dw $1f53  ; db - tuning
181c: dw $1d30  ; dc - instrument
181e: dw $1d5d  ; dd - attack rate
1820: dw $1d8b  ; de - decay rate
1822: dw $1d9e  ; df - sustain level
1824: dw $1db0  ; e0 - sustain rate
1826: dw $1dc0  ; e1 - default ADSR
1828: dw $1ec5  ; e2 - repeat start
182a: dw $1ef5  ; e3 - repeat end
182c: dw $1dd3  ; e4 - slur on
182e: dw $158c  ; e5 - nop (slur off)
1830: dw $1dfb  ; e6 - legato on
1832: dw $158c  ; e7 - nop (legato off)
1834: dw $1f50  ; e8 - force next note length
1836: dw $1e09  ; e9 - goto address in $3300+A*4
1838: dw $1e0d  ; ea - goto address in $3302+A*4
183a: dw $1b99  ; eb
183c: dw $1fd7  ; ec - end of track
183e: dw $1fd7  ; ed - end of track (duplicated)
1840: dw $2079  ; ee
1842: dw $2109  ; ef
1844: dw $19be  ; f0 - tempo
1846: dw $19c7  ; f1 - tempo fade
1848: dw $1a19  ; f2 - echo volume
184a: dw $1a24  ; f3 - echo volume fade
184c: dw $19df  ; f4 - expression
184e: dw $1e6a  ; f5 - conditional jump in repeat
1850: dw $1e4f  ; f6 - goto
1852: dw $1a81  ; f7 - echo feedback
1854: dw $1aa9  ; f8 - echo FIR
1856: dw $1f57  ; f9 - (related to vcmd fa)
1858: dw $1f5c  ; fa - CPU-controled branch
185a: dw $1d26  ; fb - rhythm kit on
185c: dw $1d2a  ; fc - rhythm kit off
185e: dw $1f94  ; fd
1860: dw $1fc2  ; fe
1862: dw $1fd7  ; ff - end of track (duplicated)

; vcmd length table
1864: db                 $01,$02,$01,$02,$02,$03,$00,$03,$00,$02,$00,$01
1870: db $00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$01,$01,$01,$01,$01,$01
1880: db $01,$00,$01,$00,$00,$00,$00,$00,$01,$01,$01,$01,$00,$00,$00,$00
1890: db $01,$02,$01,$02,$01,$03,$02,$01,$01,$01,$03,$00,$00,$01,$00,$00

18a0: dw                         $0000,$0000,$0000,$0000
18a8: dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
18b8: dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
18c8: dw $0000,$0000,$0000,$0000,$1de7,$0000,$0000,$0000
18d8: dw $0000,$0000,$0000,$1f2a,$1de7,$1de7,$1de7,$1de7
18e8: dw $0000,$1e3a,$1e3e,$0000,$0000,$0000,$0000,$0000
18f8: dw $0000,$0000,$0000,$0000,$0000,$1e9a,$1e5d,$0000

1908: dw $0000,$0000,$1f7f,$0000,$0000,$0000,$0000,$0000

1918: dw $0c95,$0c9d,$158c,$158c,$0c92,$0c9a,$158c,$158c
1928: dw $0e58,$0e62,$158c,$0e6c,$0f15,$0f2b,$0f20,$0f36

1938: dw $0da8,$0da8,$0000,$0000,$0da8,$0da8,$0000,$0000
1948: dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

1958: dw $0fe7,$0ff0,$1025,$1058,$158c,$10ab,$10ae,$10d6
1968: dw $1565,$1108,$1114,$158c,$1120,$1127,$158c,$11ec
1978: dw $1154,$1160,$1183,$1140,$1218,$1231,$154c,$158c
1988: dw $121f,$1228,$158c,$158c,$15dd,$15a1,$1281,$156c

1998: db $4c,$2d,$3d,$6c,$5c,$0c,$1c,$4d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f
19ab: db $22,$8c,$8b,$8d,$23,$e6,$e7,$8a,$e8,$e9,$76,$66,$68,$6a,$6c,$6e,$70,$72,$74

; vcmd f0 - tempo
19be: c4 47     mov   $47,a
19c0: e8 00     mov   a,#$00
19c2: c4 46     mov   $46,a
19c4: c4 4a     mov   $4a,a
19c6: 6f        ret

; vcmd f1 - tempo fade
19c7: c4 4a     mov   $4a,a
19c9: c4 8f     mov   $8f,a
19cb: 3f cf 07  call  $07cf
19ce: eb 8f     mov   y,$8f
19d0: f0 ec     beq   $19be
19d2: 80        setc
19d3: a4 47     sbc   a,$47
19d5: f0 ed     beq   $19c4
19d7: 3f 8b 10  call  $108b
19da: f8 a7     mov   x,$a7
19dc: da 4b     movw  $4b,ya
19de: 6f        ret

; vcmd f4 - expression
19df: 1c        asl   a
19e0: d5 20 f2  mov   $f220+x,a
19e3: 09 92 d9  or    ($d9),($92)
19e6: 6f        ret

; vcmd c4 - volume
19e7: 28 7f     and   a,#$7f
19e9: d5 41 f2  mov   $f241+x,a
19ec: e8 00     mov   a,#$00
19ee: d5 40 f2  mov   $f240+x,a
19f1: 09 92 d9  or    ($d9),($92)
19f4: d5 c0 f2  mov   $f2c0+x,a
19f7: 6f        ret

; vcmd c5 - volume fade
19f8: d5 c0 f2  mov   $f2c0+x,a
19fb: c4 8f     mov   $8f,a
19fd: 3f cf 07  call  $07cf
1a00: 28 7f     and   a,#$7f
1a02: eb 8f     mov   y,$8f
1a04: f0 e1     beq   $19e7
1a06: 80        setc
1a07: b5 41 f2  sbc   a,$f241+x
1a0a: f0 e8     beq   $19f4
1a0c: 3f 8b 10  call  $108b
1a0f: f8 a7     mov   x,$a7
1a11: d5 60 f2  mov   $f260+x,a
1a14: dd        mov   a,y
1a15: d5 61 f2  mov   $f261+x,a
1a18: 6f        ret

; vcmd f2 - echo volume
1a19: 28 7f     and   a,#$7f
1a1b: c4 4f     mov   $4f,a
1a1d: e8 00     mov   a,#$00
1a1f: c4 4e     mov   $4e,a
1a21: c4 52     mov   $52,a
1a23: 6f        ret

; vcmd f3 - echo volume fade
1a24: c4 52     mov   $52,a
1a26: c4 8f     mov   $8f,a
1a28: 3f cf 07  call  $07cf
1a2b: 28 7f     and   a,#$7f
1a2d: eb 8f     mov   y,$8f
1a2f: f0 e8     beq   $1a19
1a31: 80        setc
1a32: a4 4f     sbc   a,$4f
1a34: f0 eb     beq   $1a21
1a36: 3f 8b 10  call  $108b
1a39: f8 a7     mov   x,$a7
1a3b: da 50     movw  $50,ya
1a3d: 6f        ret

; vcmd c6 - panpot
1a3e: 1c        asl   a
1a3f: d5 81 f2  mov   $f281+x,a
1a42: e8 00     mov   a,#$00
1a44: d5 80 f2  mov   $f280+x,a
1a47: 09 92 d9  or    ($d9),($92)
1a4a: d5 c1 f2  mov   $f2c1+x,a
1a4d: 6f        ret

; vcmd c7 - panpot fade
1a4e: d5 c1 f2  mov   $f2c1+x,a
1a51: c4 8f     mov   $8f,a
1a53: 3f cf 07  call  $07cf
1a56: eb 8f     mov   y,$8f
1a58: f0 e4     beq   $1a3e
1a5a: 1c        asl   a
1a5b: 80        setc
1a5c: b5 81 f2  sbc   a,$f281+x
1a5f: f0 e9     beq   $1a4a
1a61: 3f 8b 10  call  $108b
1a64: f8 a7     mov   x,$a7
1a66: d5 a0 f2  mov   $f2a0+x,a
1a69: dd        mov   a,y
1a6a: d5 a1 f2  mov   $f2a1+x,a
1a6d: 6f        ret

; vcmd c8 - portamento
1a6e: bc        inc   a
1a6f: d5 60 f3  mov   $f360+x,a
1a72: 3f cf 07  call  $07cf
1a75: d5 50 01  mov   $0150+x,a
1a78: 6f        ret

; vcmd da - transpose (relative)
1a79: 60        clrc
1a7a: 95 61 f3  adc   a,$f361+x
; vcmd d9 - transpose (absolute)
1a7d: d5 61 f3  mov   $f361+x,a
1a80: 6f        ret

; vcmd f7 - echo feedback
1a81: e3 89 03  bbs7  $89,$1a87
1a84: e8 30     mov   a,#$30
1a86: ec e8 00  mov   y,$00e8
1a89: c4 78     mov   $78,a
1a8b: c4 8f     mov   $8f,a
1a8d: e4 a6     mov   a,$a6
1a8f: eb 78     mov   y,$78
1a91: f0 13     beq   $1aa6
1a93: 48 80     eor   a,#$80
1a95: ea 76 e0  not1  $0076,7
1a98: 80        setc
1a99: a4 76     sbc   a,$76
1a9b: ea 76 e0  not1  $0076,7
1a9e: 3f 8b 10  call  $108b
1aa1: f8 a7     mov   x,$a7
1aa3: da 79     movw  $79,ya
1aa5: 6f        ret

1aa6: c4 76     mov   $76,a
1aa8: 6f        ret

; vcmd f8 - echo FIR
1aa9: e3 89 03  bbs7  $89,$1aaf
1aac: e8 30     mov   a,#$30
1aae: ec e8 00  mov   y,$00e8
1ab1: c4 77     mov   $77,a
1ab3: c4 8f     mov   $8f,a
1ab5: e4 a6     mov   a,$a6
1ab7: 28 03     and   a,#$03
1ab9: bc        inc   a
1aba: 1c        asl   a
1abb: 1c        asl   a
1abc: 1c        asl   a
1abd: fd        mov   y,a
1abe: cd 10     mov   x,#$10
1ac0: e4 77     mov   a,$77
1ac2: f0 27     beq   $1aeb
1ac4: e8 00     mov   a,#$00
1ac6: d4 63     mov   $63+x,a
1ac8: f4 64     mov   a,$64+x
1aca: 48 80     eor   a,#$80
1acc: c4 9c     mov   $9c,a
1ace: f6 1a 20  mov   a,$201a+y
1ad1: 48 80     eor   a,#$80
1ad3: 80        setc
1ad4: a4 9c     sbc   a,$9c
1ad6: 6d        push  y
1ad7: 4d        push  x
1ad8: 3f 8b 10  call  $108b
1adb: ce        pop   x
1adc: d5 fe 00  mov   $00fe+x,a
1adf: dd        mov   a,y
1ae0: d5 ff 00  mov   $00ff+x,a
1ae3: ee        pop   y
1ae4: dc        dec   y
1ae5: 1d        dec   x
1ae6: 1d        dec   x
1ae7: d0 db     bne   $1ac4
1ae9: 2f 0a     bra   $1af5
1aeb: f6 1a 20  mov   a,$201a+y
1aee: d4 64     mov   $64+x,a
1af0: dc        dec   y
1af1: 1d        dec   x
1af2: 1d        dec   x
1af3: d0 f6     bne   $1aeb
1af5: f8 a7     mov   x,$a7
1af7: 6f        ret

; vcmd c9 - vibrato on
1af8: c8 10     cmp   x,#$10
1afa: 90 08     bcc   $1b04
1afc: 8d 00     mov   y,#$00
1afe: cd 0c     mov   x,#$0c
1b00: 9e        div   ya,x
1b01: f8 a7     mov   x,$a7
1b03: dd        mov   a,y
1b04: d5 10 01  mov   $0110+x,a
1b07: 3f cf 07  call  $07cf
1b0a: d5 e0 f2  mov   $f2e0+x,a
1b0d: 3f cf 07  call  $07cf
1b10: d5 51 01  mov   $0151+x,a
1b13: 28 3f     and   a,#$3f
1b15: 80        setc
1b16: 3c        rol   a
1b17: 78 c0 a6  cmp   $a6,#$c0
1b1a: b0 07     bcs   $1b23
1b1c: 78 80 a6  cmp   $a6,#$80
1b1f: 90 02     bcc   $1b23
1b21: 48 ff     eor   a,#$ff
1b23: d5 00 f4  mov   $f400+x,a
1b26: c8 10     cmp   x,#$10
1b28: b0 03     bcs   $1b2d
1b2a: e4 24     mov   a,$24
1b2c: ec e4 25  mov   y,$25e4
1b2f: 24 92     and   a,$92
1b31: f0 0a     beq   $1b3d
1b33: f5 e0 f4  mov   a,$f4e0+x
1b36: c4 be     mov   $be,a
1b38: f5 e1 f4  mov   a,$f4e1+x
1b3b: c4 bf     mov   $bf,a
1b3d: c8 10     cmp   x,#$10
1b3f: b0 04     bcs   $1b45
1b41: 8d 00     mov   y,#$00
1b43: 2f 04     bra   $1b49
1b45: f5 10 01  mov   a,$0110+x
1b48: fd        mov   y,a
1b49: f6 0f 20  mov   a,$200f+y
1b4c: fd        mov   y,a
1b4d: d0 04     bne   $1b53
1b4f: ba be     movw  ya,$be
1b51: 2f 11     bra   $1b64
1b53: cb 9e     mov   $9e,y
1b55: e4 bf     mov   a,$bf
1b57: cf        mul   ya
1b58: da 9c     movw  $9c,ya
1b5a: e4 be     mov   a,$be
1b5c: eb 9e     mov   y,$9e
1b5e: cf        mul   ya
1b5f: dd        mov   a,y
1b60: 8d 00     mov   y,#$00
1b62: 7a 9c     addw  ya,$9c
1b64: d5 00 f3  mov   $f300+x,a
1b67: dd        mov   a,y
1b68: d5 01 f3  mov   $f301+x,a
1b6b: f5 21 f2  mov   a,$f221+x
1b6e: 28 70     and   a,#$70
1b70: c4 a6     mov   $a6,a
1b72: c8 10     cmp   x,#$10
1b74: 90 04     bcc   $1b7a
1b76: e8 00     mov   a,#$00
1b78: 2f 03     bra   $1b7d
1b7a: f5 10 01  mov   a,$0110+x
1b7d: d5 11 01  mov   $0111+x,a
1b80: f0 02     beq   $1b84
1b82: e8 07     mov   a,#$07
1b84: 04 a6     or    a,$a6
1b86: d5 21 f2  mov   $f221+x,a
1b89: e8 01     mov   a,#$01
1b8b: d5 e1 f2  mov   $f2e1+x,a
1b8e: 6f        ret

; vcmd ca - vibrato off
1b8f: d5 51 01  mov   $0151+x,a
1b92: d5 c0 f4  mov   $f4c0+x,a
1b95: d5 c1 f4  mov   $f4c1+x,a
1b98: 6f        ret

; vcmd eb
1b99: fd        mov   y,a
1b9a: f5 51 01  mov   a,$0151+x
1b9d: f0 17     beq   $1bb6
1b9f: dd        mov   a,y
1ba0: d5 51 01  mov   $0151+x,a
1ba3: 28 3f     and   a,#$3f
1ba5: 80        setc
1ba6: 3c        rol   a
1ba7: 78 c0 a6  cmp   $a6,#$c0
1baa: b0 07     bcs   $1bb3
1bac: 78 80 a6  cmp   $a6,#$80
1baf: 90 02     bcc   $1bb3
1bb1: 48 ff     eor   a,#$ff
1bb3: d5 00 f4  mov   $f400+x,a
1bb6: 6f        ret

; vcmd cb - tremolo on
1bb7: d5 30 01  mov   $0130+x,a
1bba: 3f cf 07  call  $07cf
1bbd: d5 20 f3  mov   $f320+x,a
1bc0: 3f cf 07  call  $07cf
1bc3: d5 70 01  mov   $0170+x,a
1bc6: 28 3f     and   a,#$3f
1bc8: 80        setc
1bc9: 3c        rol   a
1bca: 78 c0 a6  cmp   $a6,#$c0
1bcd: b0 07     bcs   $1bd6
1bcf: 78 80 a6  cmp   $a6,#$80
1bd2: 90 02     bcc   $1bd6
1bd4: 48 ff     eor   a,#$ff
1bd6: d5 40 f4  mov   $f440+x,a
1bd9: e8 01     mov   a,#$01
1bdb: d5 21 f3  mov   $f321+x,a
1bde: f5 21 f2  mov   a,$f221+x
1be1: 28 07     and   a,#$07
1be3: c4 a6     mov   $a6,a
1be5: f5 30 01  mov   a,$0130+x
1be8: d5 31 01  mov   $0131+x,a
1beb: f0 02     beq   $1bef
1bed: e8 70     mov   a,#$70
1bef: 04 a6     or    a,$a6
1bf1: d5 21 f2  mov   $f221+x,a
1bf4: 6f        ret

; vcmd cc - tremolo off
1bf5: d5 70 01  mov   $0170+x,a
1bf8: d5 60 f4  mov   $f460+x,a
1bfb: 6f        ret

; vcmd cd - panpot LFO on
1bfc: 60        clrc
1bfd: bc        inc   a
1bfe: f0 08     beq   $1c08
1c00: 28 fe     and   a,#$fe
1c02: d0 05     bne   $1c09
1c04: e8 02     mov   a,#$02
1c06: 2f 01     bra   $1c09
1c08: 80        setc
1c09: d5 40 f3  mov   $f340+x,a
1c0c: 7c        ror   a
1c0d: d5 41 f3  mov   $f341+x,a
1c10: fd        mov   y,a
1c11: 3f cf 07  call  $07cf
1c14: 1c        asl   a
1c15: e4 a6     mov   a,$a6
1c17: 28 7f     and   a,#$7f
1c19: 90 02     bcc   $1c1d
1c1b: 48 7f     eor   a,#$7f
1c1d: c4 9c     mov   $9c,a
1c1f: dd        mov   a,y
1c20: 10 05     bpl   $1c27
1c22: 8f 00 9d  mov   $9d,#$00
1c25: 2f 13     bra   $1c3a
1c27: 5d        mov   x,a
1c28: 8d 00     mov   y,#$00
1c2a: e4 9c     mov   a,$9c
1c2c: 9e        div   ya,x
1c2d: c4 9d     mov   $9d,a
1c2f: e8 00     mov   a,#$00
1c31: 9e        div   ya,x
1c32: c4 9c     mov   $9c,a
1c34: ba 9c     movw  ya,$9c
1c36: d0 02     bne   $1c3a
1c38: ab 9c     inc   $9c
1c3a: 90 08     bcc   $1c44
1c3c: 58 ff 9c  eor   $9c,#$ff
1c3f: 58 ff 9d  eor   $9d,#$ff
1c42: 3a 9c     incw  $9c
1c44: f8 a7     mov   x,$a7
1c46: e4 9c     mov   a,$9c
1c48: d5 e0 f3  mov   $f3e0+x,a
1c4b: e4 9d     mov   a,$9d
1c4d: d5 e1 f3  mov   $f3e1+x,a
1c50: e4 a6     mov   a,$a6
; vcmd ce - panpot LFO off
1c52: d5 71 01  mov   $0171+x,a
1c55: e8 00     mov   a,#$00
1c57: d5 80 f4  mov   $f480+x,a
1c5a: d5 81 f4  mov   $f481+x,a
1c5d: 6f        ret

; vcmd d7 - increase octave
1c5e: f5 00 f2  mov   a,$f200+x
1c61: 60        clrc
1c62: 88 0c     adc   a,#$0c
1c64: d5 00 f2  mov   $f200+x,a
1c67: 6f        ret

; vcmd d8 - decrease octave
1c68: f5 00 f2  mov   a,$f200+x
1c6b: 80        setc
1c6c: a8 0c     sbc   a,#$0c
1c6e: d5 00 f2  mov   $f200+x,a
1c71: 6f        ret

; vcmd d6 - set octave
1c72: 8d 0c     mov   y,#$0c
1c74: cf        mul   ya
1c75: d5 00 f2  mov   $f200+x,a
1c78: 6f        ret

; vcmd d4 - echo on
1c79: c8 10     cmp   x,#$10
1c7b: b0 05     bcs   $1c82
1c7d: 09 92 54  or    ($54),($92)
1c80: 2f 03     bra   $1c85
1c82: 09 92 55  or    ($55),($92)
1c85: ba 54     movw  ya,$54
1c87: 3f 24 08  call  $0824
1c8a: c4 8a     mov   $8a,a
1c8c: 6f        ret

; vcmd d5 - echo off
1c8d: e4 92     mov   a,$92
1c8f: c8 10     cmp   x,#$10
1c91: b0 05     bcs   $1c98
1c93: 4e 54 00  tclr1 $0054
1c96: 2f ed     bra   $1c85
1c98: 4e 55 00  tclr1 $0055
1c9b: 2f e8     bra   $1c85

; vcmd d0 - noise on
1c9d: c8 10     cmp   x,#$10
1c9f: b0 05     bcs   $1ca6
1ca1: 09 92 56  or    ($56),($92)
1ca4: 2f 03     bra   $1ca9
1ca6: 09 92 57  or    ($57),($92)
1ca9: e4 8d     mov   a,$8d
1cab: 28 e0     and   a,#$e0
1cad: 2d        push  a
1cae: e4 86     mov   a,$86
1cb0: 24 57     and   a,$57
1cb2: ae        pop   a
1cb3: d0 04     bne   $1cb9
1cb5: 04 62     or    a,$62
1cb7: 2f 02     bra   $1cbb
1cb9: 04 63     or    a,$63
1cbb: c4 8d     mov   $8d,a
1cbd: ba 56     movw  ya,$56
1cbf: 3f 24 08  call  $0824
1cc2: c4 8b     mov   $8b,a
1cc4: 6f        ret

; vcmd d1 - noise off
1cc5: e4 92     mov   a,$92
1cc7: c8 10     cmp   x,#$10
1cc9: b0 05     bcs   $1cd0
1ccb: 4e 56 00  tclr1 $0056
1cce: 2f d9     bra   $1ca9
1cd0: 4e 57 00  tclr1 $0057
1cd3: 2f d4     bra   $1ca9

; vcmd cf - set noise frequency
1cd5: 28 1f     and   a,#$1f
1cd7: c8 10     cmp   x,#$10
1cd9: b0 0d     bcs   $1ce8
1cdb: 64 a6     cmp   a,$a6
1cdd: f0 05     beq   $1ce4
1cdf: 60        clrc
1ce0: 84 62     adc   a,$62
1ce2: 28 1f     and   a,#$1f
1ce4: c4 62     mov   $62,a
1ce6: 2f c1     bra   $1ca9
1ce8: 64 a6     cmp   a,$a6
1cea: f0 05     beq   $1cf1
1cec: 60        clrc
1ced: 84 63     adc   a,$63
1cef: 28 1f     and   a,#$1f
1cf1: c4 63     mov   $63,a
1cf3: 2f b4     bra   $1ca9

; vcmd d2 - pitchmod on
1cf5: c8 10     cmp   x,#$10
1cf7: b0 05     bcs   $1cfe
1cf9: 09 92 58  or    ($58),($92)
1cfc: 2f 10     bra   $1d0e
1cfe: e4 92     mov   a,$92
1d00: 28 55     and   a,#$55
1d02: d0 0a     bne   $1d0e
1d04: e4 92     mov   a,$92
1d06: 5c        lsr   a
1d07: 24 86     and   a,$86
1d09: f0 03     beq   $1d0e
1d0b: 09 92 59  or    ($59),($92)
1d0e: ba 58     movw  ya,$58
1d10: 3f 24 08  call  $0824
1d13: c4 8c     mov   $8c,a
1d15: 6f        ret

; vcmd d3 - pitchmod off
1d16: e4 92     mov   a,$92
1d18: c8 10     cmp   x,#$10
1d1a: b0 05     bcs   $1d21
1d1c: 4e 58 00  tclr1 $0058
1d1f: 2f ed     bra   $1d0e
1d21: 4e 59 00  tclr1 $0059
1d24: 2f e8     bra   $1d0e

; vcmd fb - rhythm kit on
1d26: 09 92 7c  or    ($7c),($92)
1d29: 6f        ret

; vcmd fc - rhythm kit off
1d2a: e4 92     mov   a,$92
1d2c: 4e 7c 00  tclr1 $007c
1d2f: 6f        ret

; vcmd dc - instrument
1d30: d5 01 f2  mov   $f201+x,a
1d33: 1c        asl   a
1d34: fd        mov   y,a
1d35: f6 00 23  mov   a,$2300+y
1d38: d5 80 f3  mov   $f380+x,a
1d3b: f6 01 23  mov   a,$2301+y
1d3e: d5 81 f3  mov   $f381+x,a
1d41: f6 80 23  mov   a,$2380+y
1d44: d5 00 f5  mov   $f500+x,a
1d47: f6 81 23  mov   a,$2381+y
1d4a: d5 01 f5  mov   $f501+x,a
1d4d: 6f        ret

1d4e: f5 01 f2  mov   a,$f201+x
1d51: fd        mov   y,a
1d52: 7d        mov   a,x
1d53: 9f        xcn   a
1d54: 5c        lsr   a
1d55: 08 04     or    a,#$04
1d57: c4 f2     mov   $f2,a
1d59: cb f3     mov   $f3,y
1d5b: 2f 10     bra   $1d6d

; vcmd dd - attack rate
1d5d: 28 0f     and   a,#$0f
1d5f: c4 a6     mov   $a6,a
1d61: f5 00 f5  mov   a,$f500+x
1d64: 28 70     and   a,#$70
1d66: 04 a6     or    a,$a6
1d68: 08 80     or    a,#$80
1d6a: d5 00 f5  mov   $f500+x,a
1d6d: c8 10     cmp   x,#$10
1d6f: b0 07     bcs   $1d78
1d71: e4 86     mov   a,$86
1d73: 24 92     and   a,$92
1d75: f0 01     beq   $1d78
1d77: 6f        ret

1d78: 7d        mov   a,x
1d79: 9f        xcn   a
1d7a: 5c        lsr   a
1d7b: 08 05     or    a,#$05
1d7d: fd        mov   y,a
1d7e: f5 00 f5  mov   a,$f500+x
1d81: 3f 1f 08  call  $081f
1d84: fc        inc   y
1d85: f5 01 f5  mov   a,$f501+x
1d88: 5f 1f 08  jmp   $081f

; vcmd de - decay rate
1d8b: 28 07     and   a,#$07
1d8d: 9f        xcn   a
1d8e: c4 a6     mov   $a6,a
1d90: f5 00 f5  mov   a,$f500+x
1d93: 28 0f     and   a,#$0f
1d95: 04 a6     or    a,$a6
1d97: 08 80     or    a,#$80
1d99: d5 00 f5  mov   $f500+x,a
1d9c: 2f cf     bra   $1d6d

; vcmd df - sustain level
1d9e: 28 07     and   a,#$07
1da0: 9f        xcn   a
1da1: 1c        asl   a
1da2: c4 a6     mov   $a6,a
1da4: f5 01 f5  mov   a,$f501+x
1da7: 28 1f     and   a,#$1f
1da9: 04 a6     or    a,$a6
1dab: d5 01 f5  mov   $f501+x,a
1dae: 2f bd     bra   $1d6d

; vcmd e0 - sustain rate
1db0: 28 1f     and   a,#$1f
1db2: c4 a6     mov   $a6,a
1db4: f5 01 f5  mov   a,$f501+x
1db7: 28 e0     and   a,#$e0
1db9: 04 a6     or    a,$a6
1dbb: d5 01 f5  mov   $f501+x,a
1dbe: 2f ad     bra   $1d6d

; vcmd e1 - default ADSR
1dc0: f5 01 f2  mov   a,$f201+x
1dc3: 1c        asl   a
1dc4: fd        mov   y,a
1dc5: f6 80 23  mov   a,$2380+y
1dc8: d5 00 f5  mov   $f500+x,a
1dcb: f6 81 23  mov   a,$2381+y
1dce: d5 01 f5  mov   $f501+x,a
1dd1: 2f 9a     bra   $1d6d

; vcmd e4 - slur on
1dd3: e4 92     mov   a,$92
1dd5: c8 10     cmp   x,#$10
1dd7: b0 07     bcs   $1de0
1dd9: 0e 5c 00  tset1 $005c
1ddc: 4e 5e 00  tclr1 $005e
1ddf: 6f        ret

1de0: 0e 5d 00  tset1 $005d
1de3: 4e 5f 00  tclr1 $005f
1de6: 6f        ret

1de7: e4 92     mov   a,$92
1de9: c8 10     cmp   x,#$10
1deb: b0 07     bcs   $1df4
1ded: 4e 5c 00  tclr1 $005c
1df0: 4e 60 00  tclr1 $0060
1df3: 6f        ret

1df4: 4e 5d 00  tclr1 $005d
1df7: 4e 61 00  tclr1 $0061
1dfa: 6f        ret

; vcmd e6 - legato on
1dfb: e4 92     mov   a,$92
1dfd: c8 10     cmp   x,#$10
1dff: b0 04     bcs   $1e05
1e01: 0e 60 00  tset1 $0060
1e04: 6f        ret

1e05: 0e 61 00  tset1 $0061
1e08: 6f        ret

; vcmd e9 - goto address in $3300+A*4
1e09: 8d 00     mov   y,#$00
1e0b: 2f 02     bra   $1e0f
; vcmd ea - goto address in $3302+A*4
1e0d: 8d 02     mov   y,#$02
1e0f: 3f 1d 1e  call  $1e1d
1e12: d4 02     mov   $02+x,a
1e14: db 03     mov   $03+x,y
1e16: dd        mov   a,y
1e17: d0 03     bne   $1e1c
1e19: 5f d7 1f  jmp   $1fd7

1e1c: 6f        ret

1e1d: 8f 00 97  mov   $97,#$00
1e20: 1c        asl   a
1e21: 2b 97     rol   $97
1e23: 1c        asl   a
1e24: 2b 97     rol   $97
1e26: c4 96     mov   $96,a
1e28: dd        mov   a,y
1e29: 8d 33     mov   y,#$33
1e2b: 7a 96     addw  ya,$96
1e2d: da 96     movw  $96,ya
1e2f: 8d 00     mov   y,#$00
1e31: f7 96     mov   a,($96)+y
1e33: 2d        push  a
1e34: fc        inc   y
1e35: f7 96     mov   a,($96)+y
1e37: fd        mov   y,a
1e38: ae        pop   a
1e39: 6f        ret

1e3a: f7 94     mov   a,($94)+y
1e3c: 2f 04     bra   $1e42
1e3e: f7 94     mov   a,($94)+y
1e40: 8d 02     mov   y,#$02
1e42: 3f 1d 1e  call  $1e1d
1e45: da 94     movw  $94,ya
1e47: dd        mov   a,y
1e48: d0 04     bne   $1e4e
1e4a: ae        pop   a
1e4b: ae        pop   a
1e4c: e8 ec     mov   a,#$ec
1e4e: 6f        ret

; vcmd f6 - goto
1e4f: fd        mov   y,a
1e50: 3f cf 07  call  $07cf
1e53: dd        mov   a,y
1e54: eb a6     mov   y,$a6
1e56: 7a 00     addw  ya,$00
1e58: d4 02     mov   $02+x,a
1e5a: db 03     mov   $03+x,y
1e5c: 6f        ret

1e5d: f7 94     mov   a,($94)+y
1e5f: 2d        push  a
1e60: fc        inc   y
1e61: f7 94     mov   a,($94)+y
1e63: fd        mov   y,a
1e64: ae        pop   a
1e65: 7a 00     addw  ya,$00
1e67: da 94     movw  $94,ya
1e69: 6f        ret

; vcmd f5 - conditional jump in repeat
1e6a: c4 9e     mov   $9e,a
1e6c: 3f cf 07  call  $07cf
1e6f: c4 9c     mov   $9c,a
1e71: 3f cf 07  call  $07cf
1e74: c4 9d     mov   $9d,a
1e76: fb 27     mov   y,$27+x
1e78: f6 20 f5  mov   a,$f520+y
1e7b: 2e 9e 1b  cbne  $9e,$1e99
1e7e: f6 40 f5  mov   a,$f540+y
1e81: 9c        dec   a
1e82: d0 0d     bne   $1e91
1e84: 7d        mov   a,x
1e85: 1c        asl   a
1e86: 9c        dec   a
1e87: 9b 27     dec   $27+x
1e89: de 27 05  cbne  $27+x,$1e91
1e8c: 60        clrc
1e8d: 88 04     adc   a,#$04
1e8f: d4 27     mov   $27+x,a
1e91: ba 9c     movw  ya,$9c
1e93: 7a 00     addw  ya,$00
1e95: d4 02     mov   $02+x,a
1e97: db 03     mov   $03+x,y
1e99: 6f        ret

1e9a: eb c3     mov   y,$c3
1e9c: f6 20 f5  mov   a,$f520+y
1e9f: 8d 00     mov   y,#$00
1ea1: 77 94     cmp   a,($94)+y
1ea3: d0 19     bne   $1ebe
1ea5: eb c3     mov   y,$c3
1ea7: f6 40 f5  mov   a,$f540+y
1eaa: 9c        dec   a
1eab: d0 0c     bne   $1eb9
1ead: 7d        mov   a,x
1eae: 1c        asl   a
1eaf: 9c        dec   a
1eb0: 8b c3     dec   $c3
1eb2: 2e c3 04  cbne  $c3,$1eb9
1eb5: 60        clrc
1eb6: 98 04 c3  adc   $c3,#$04
1eb9: 8d 01     mov   y,#$01
1ebb: 5f 5d 1e  jmp   $1e5d

1ebe: 3a 94     incw  $94
1ec0: 3a 94     incw  $94
1ec2: 3a 94     incw  $94
1ec4: 6f        ret

; vcmd e2 - repeat start
1ec5: 7d        mov   a,x
1ec6: 1c        asl   a
1ec7: 60        clrc
1ec8: 88 04     adc   a,#$04
1eca: bb 27     inc   $27+x
1ecc: de 27 05  cbne  $27+x,$1ed4
1ecf: 80        setc
1ed0: a8 04     sbc   a,#$04
1ed2: d4 27     mov   $27+x,a
1ed4: fb 27     mov   y,$27+x
1ed6: e4 a6     mov   a,$a6
1ed8: f0 01     beq   $1edb
1eda: bc        inc   a
1edb: d6 40 f5  mov   $f540+y,a
1ede: c8 10     cmp   x,#$10
1ee0: b0 05     bcs   $1ee7
1ee2: e8 01     mov   a,#$01
1ee4: d6 20 f5  mov   $f520+y,a
1ee7: dd        mov   a,y
1ee8: 1c        asl   a
1ee9: fd        mov   y,a
1eea: f4 02     mov   a,$02+x
1eec: d6 80 f5  mov   $f580+y,a
1eef: f4 03     mov   a,$03+x
1ef1: d6 81 f5  mov   $f581+y,a
1ef4: 6f        ret

; vcmd e3 - repeat end
1ef5: fb 27     mov   y,$27+x
1ef7: c8 10     cmp   x,#$10
1ef9: b0 07     bcs   $1f02
1efb: f6 20 f5  mov   a,$f520+y
1efe: bc        inc   a
1eff: d6 20 f5  mov   $f520+y,a
1f02: f6 40 f5  mov   a,$f540+y
1f05: f0 15     beq   $1f1c
1f07: 9c        dec   a
1f08: d0 0f     bne   $1f19
1f0a: 7d        mov   a,x
1f0b: 1c        asl   a
1f0c: 9c        dec   a
1f0d: 9b 27     dec   $27+x
1f0f: de 27 17  cbne  $27+x,$1f29
1f12: 60        clrc
1f13: 88 04     adc   a,#$04
1f15: d4 27     mov   $27+x,a
1f17: 2f 10     bra   $1f29
1f19: d6 40 f5  mov   $f540+y,a
1f1c: dd        mov   a,y
1f1d: 1c        asl   a
1f1e: fd        mov   y,a
1f1f: f6 80 f5  mov   a,$f580+y
1f22: d4 02     mov   $02+x,a
1f24: f6 81 f5  mov   a,$f581+y
1f27: d4 03     mov   $03+x,a
1f29: 6f        ret

1f2a: eb c3     mov   y,$c3
1f2c: f6 40 f5  mov   a,$f540+y
1f2f: f0 11     beq   $1f42
1f31: 9c        dec   a
1f32: d0 0e     bne   $1f42
1f34: 7d        mov   a,x
1f35: 1c        asl   a
1f36: 9c        dec   a
1f37: 8b c3     dec   $c3
1f39: 2e c3 13  cbne  $c3,$1f4f
1f3c: 60        clrc
1f3d: 98 04 c3  adc   $c3,#$04
1f40: 2f 0d     bra   $1f4f
1f42: dd        mov   a,y
1f43: 1c        asl   a
1f44: fd        mov   y,a
1f45: f6 80 f5  mov   a,$f580+y
1f48: c4 94     mov   $94,a
1f4a: f6 81 f5  mov   a,$f581+y
1f4d: c4 95     mov   $95,a
1f4f: 6f        ret

; vcmd e8 - force next note length
1f50: d4 26     mov   $26+x,a
1f52: 6f        ret

; vcmd db - tuning
1f53: d5 a0 f3  mov   $f3a0+x,a
1f56: 6f        ret

; vcmd f9 - (related to vcmd fa)
1f57: 28 0f     and   a,#$0f
1f59: c4 7b     mov   $7b,a
1f5b: 6f        ret

; vcmd fa
1f5c: 28 0f     and   a,#$0f
1f5e: c4 a6     mov   $a6,a
1f60: 64 dc     cmp   a,$dc
1f62: 90 02     bcc   $1f66
1f64: c4 dc     mov   $dc,a
1f66: e4 db     mov   a,$db
1f68: 64 a6     cmp   a,$a6
1f6a: b0 0d     bcs   $1f79
1f6c: bb 02     inc   $02+x
1f6e: d0 02     bne   $1f72
1f70: bb 03     inc   $03+x
1f72: bb 02     inc   $02+x
1f74: d0 02     bne   $1f78
1f76: bb 03     inc   $03+x
1f78: 6f        ret

1f79: 3f cf 07  call  $07cf
1f7c: 5f 4f 1e  jmp   $1e4f

1f7f: f7 94     mov   a,($94)+y
1f81: c4 a6     mov   $a6,a
1f83: e4 db     mov   a,$db
1f85: 64 a6     cmp   a,$a6
1f87: b0 07     bcs   $1f90
1f89: 3a 94     incw  $94
1f8b: 3a 94     incw  $94
1f8d: 3a 94     incw  $94
1f8f: 6f        ret

1f90: fc        inc   y
1f91: 5f 5d 1e  jmp   $1e5d

; vcmd fd
1f94: c4 8f     mov   $8f,a
1f96: 4d        push  x
1f97: e4 92     mov   a,$92
1f99: 2d        push  a
1f9a: 3f 6c 0e  call  $0e6c
1f9d: ae        pop   a
1f9e: c4 92     mov   $92,a
1fa0: ce        pop   x
1fa1: f5 81 f2  mov   a,$f281+x
1fa4: c5 91 f2  mov   $f291,a
1fa7: c5 93 f2  mov   $f293,a
1faa: f5 41 f2  mov   a,$f241+x
1fad: c5 51 f2  mov   $f251,a
1fb0: c5 53 f2  mov   $f253,a
1fb3: e8 00     mov   a,#$00
1fb5: c5 90 f2  mov   $f290,a
1fb8: c5 92 f2  mov   $f292,a
1fbb: c5 50 f2  mov   $f250,a
1fbe: c5 52 f2  mov   $f252,a
1fc1: 6f        ret

; vcmd fe
1fc2: 3f 8f 1b  call  $1b8f
1fc5: 3f f5 1b  call  $1bf5
1fc8: 3f 52 1c  call  $1c52
1fcb: 3f 16 1d  call  $1d16
1fce: 3f c5 1c  call  $1cc5
1fd1: 3f c0 1d  call  $1dc0
1fd4: 5f e7 1d  jmp   $1de7

; vcmd ec,ed,ff - end of track
1fd7: ae        pop   a
1fd8: ae        pop   a
1fd9: 62 89     set3  $89
1fdb: e4 92     mov   a,$92
1fdd: c8 10     cmp   x,#$10
1fdf: b0 05     bcs   $1fe6
1fe1: 4e 53 00  tclr1 $0053
1fe4: 2f 06     bra   $1fec
1fe6: 4e 86 00  tclr1 $0086
1fe9: 4e 5e 00  tclr1 $005e
1fec: 3f c5 1c  call  $1cc5
1fef: 3f 16 1d  call  $1d16
1ff2: 5f 8d 1c  jmp   $1c8d

1ff5: dw $0879
1ff7: dw $08fa
1ff9: dw $0983
1ffb: dw $0a14
1ffd: dw $0aad
1fff: dw $0b50
2001: dw $0bfc
2003: dw $0cb2
2005: dw $0d74
2007: dw $0e41
2009: dw $0f1a
200b: dw $1000
200d: dw $10f3

200f: db $0f,$1f,$30,$42,$55,$6a,$7f,$96,$ae,$c8,$e3,$00

201b: db $7f,$00,$00,$00,$00,$00,$00,$00
2023: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
202b: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
2033: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

203b: db $c0,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03

2049: db $ec,$ee,$ef
204c: db $02,$00,$00,$00,$00,$00,$00,$00,$00
2055: db $c2,$00,$00,$00,$00,$00,$00,$00,$07
205e: db $c2,$77,$77,$77,$77,$77,$77,$77,$77
2067: db $c2,$77,$77,$77,$77,$77,$77,$77,$77
2070: db $c3,$77,$77,$77,$77,$77,$77,$77,$77

; vcmd ee
2079: 7d        mov   a,x
207a: 9f        xcn   a
207b: 5c        lsr   a
207c: c4 93     mov   $93,a
207e: e5 00 fe  mov   a,$fe00
2081: 3f 30 1d  call  $1d30
2084: 3f 4e 1d  call  $1d4e
2087: e8 00     mov   a,#$00
2089: d5 a0 f3  mov   $f3a0+x,a
208c: e5 01 fe  mov   a,$fe01
208f: 80        setc
2090: a8 0a     sbc   a,#$0a
2092: 3f 39 07  call  $0739
2095: e4 93     mov   a,$93
2097: 08 02     or    a,#$02
2099: fd        mov   y,a
209a: e4 be     mov   a,$be
209c: 3f 1f 08  call  $081f
209f: e4 bf     mov   a,$bf
20a1: fc        inc   y
20a2: 3f 1f 08  call  $081f
20a5: fc        inc   y
20a6: fc        inc   y
20a7: e5 e0 23  mov   a,$23e0
20aa: 3f 1f 08  call  $081f
20ad: e5 e1 23  mov   a,$23e1
20b0: fc        inc   y
20b1: 3f 1f 08  call  $081f
20b4: e5 02 fe  mov   a,$fe02
20b7: ec 03 fe  mov   y,$fe03
20ba: da 9c     movw  $9c,ya
20bc: ad 80     cmp   y,#$80
20be: b0 03     bcs   $20c3
20c0: cf        mul   ya
20c1: dd        mov   a,y
20c2: 8d 5c     mov   y,#$5c
20c4: eb 93     mov   y,$93
20c6: fc        inc   y
20c7: 3f 1f 08  call  $081f
20ca: e4 9d     mov   a,$9d
20cc: 48 ff     eor   a,#$ff
20ce: fd        mov   y,a
20cf: e4 9c     mov   a,$9c
20d1: ad 80     cmp   y,#$80
20d3: b0 03     bcs   $20d8
20d5: cf        mul   ya
20d6: dd        mov   a,y
20d7: 8d 5c     mov   y,#$5c
20d9: eb 93     mov   y,$93
20db: 3f 1f 08  call  $081f
20de: e8 08     mov   a,#$08
20e0: ad 30     cmp   y,#$30
20e2: f0 01     beq   $20e5
20e4: 5c        lsr   a
20e5: 4e 8a 00  tclr1 $008a
20e8: 4e 8b 00  tclr1 $008b
20eb: 4e 8c 00  tclr1 $008c
20ee: ec 04 fe  mov   y,$fe04
20f1: f0 06     beq   $20f9
20f3: 0e 55 00  tset1 $0055
20f6: 0e 8a 00  tset1 $008a
20f9: 0e 87 00  tset1 $0087
20fc: 4e 86 00  tclr1 $0086
20ff: 8d 4c     mov   y,#$4c
2101: 3f 1f 08  call  $081f
2104: ae        pop   a
2105: ae        pop   a
2106: 62 89     set3  $89
2108: 6f        ret

; vcmd ef
2109: 7d        mov   a,x
210a: 9f        xcn   a
210b: 5c        lsr   a
210c: c4 93     mov   $93,a
210e: e5 08 fe  mov   a,$fe08
2111: 3f 30 1d  call  $1d30
2114: 3f 4e 1d  call  $1d4e
2117: e8 00     mov   a,#$00
2119: d5 a0 f3  mov   $f3a0+x,a
211c: e5 09 fe  mov   a,$fe09
211f: 80        setc
2120: a8 0a     sbc   a,#$0a
2122: 3f 39 07  call  $0739
2125: e4 93     mov   a,$93
2127: 08 02     or    a,#$02
2129: fd        mov   y,a
212a: e4 be     mov   a,$be
212c: 3f 1f 08  call  $081f
212f: e4 bf     mov   a,$bf
2131: fc        inc   y
2132: 3f 1f 08  call  $081f
2135: fc        inc   y
2136: fc        inc   y
2137: e5 e0 23  mov   a,$23e0
213a: 3f 1f 08  call  $081f
213d: e5 e1 23  mov   a,$23e1
2140: fc        inc   y
2141: 3f 1f 08  call  $081f
2144: e5 0a fe  mov   a,$fe0a
2147: ec 0b fe  mov   y,$fe0b
214a: da 9c     movw  $9c,ya
214c: ad 80     cmp   y,#$80
214e: b0 03     bcs   $2153
2150: cf        mul   ya
2151: dd        mov   a,y
2152: 8d 5c     mov   y,#$5c
2154: eb 93     mov   y,$93
2156: fc        inc   y
2157: 3f 1f 08  call  $081f
215a: e4 9d     mov   a,$9d
215c: 48 ff     eor   a,#$ff
215e: fd        mov   y,a
215f: e4 9c     mov   a,$9c
2161: ad 80     cmp   y,#$80
2163: b0 03     bcs   $2168
2165: cf        mul   ya
2166: dd        mov   a,y
2167: 8d 5c     mov   y,#$5c
2169: eb 93     mov   y,$93
216b: 3f 1f 08  call  $081f
216e: e8 08     mov   a,#$08
2170: ad 30     cmp   y,#$30
2172: f0 01     beq   $2175
2174: 5c        lsr   a
2175: 4e 8a 00  tclr1 $008a
2178: 4e 8b 00  tclr1 $008b
217b: 4e 8c 00  tclr1 $008c
217e: ec 0c fe  mov   y,$fe0c
2181: f0 06     beq   $2189
2183: 0e 55 00  tset1 $0055
2186: 0e 8a 00  tset1 $008a
2189: 0e 87 00  tset1 $0087
218c: 4e 86 00  tclr1 $0086
218f: 8d 4c     mov   y,#$4c
2191: 3f 1f 08  call  $081f
2194: ae        pop   a
2195: ae        pop   a
2196: 62 89     set3  $89
2198: 6f        ret

2199: 03 88 54  bbs0  $88,$21f0
219c: 33 88 51  bbc1  $88,$21f0
219f: ba ea     movw  ya,$ea
21a1: 7a ec     addw  ya,$ec
21a3: 7e eb     cmp   y,$eb
21a5: da ea     movw  $ea,ya
21a7: f0 38     beq   $21e1
21a9: dd        mov   a,y
21aa: c4 9c     mov   $9c,a
21ac: 8d 40     mov   y,#$40
21ae: cf        mul   ya
21af: dd        mov   a,y
21b0: 1c        asl   a
21b1: c4 9d     mov   $9d,a
21b3: 60        clrc
21b4: 88 20     adc   a,#$20
21b6: c4 e7     mov   $e7,a
21b8: e8 60     mov   a,#$60
21ba: 80        setc
21bb: a4 9d     sbc   a,$9d
21bd: 48 ff     eor   a,#$ff
21bf: bc        inc   a
21c0: c4 e6     mov   $e6,a
21c2: e4 4f     mov   a,$4f
21c4: c4 9d     mov   $9d,a
21c6: 4b 9d     lsr   $9d
21c8: 1c        asl   a
21c9: eb 9c     mov   y,$9c
21cb: cf        mul   ya
21cc: dd        mov   a,y
21cd: c4 9e     mov   $9e,a
21cf: 60        clrc
21d0: 84 9d     adc   a,$9d
21d2: c4 e8     mov   $e8,a
21d4: e4 4f     mov   a,$4f
21d6: 60        clrc
21d7: 84 9d     adc   a,$9d
21d9: 80        setc
21da: a4 9e     sbc   a,$9e
21dc: 48 ff     eor   a,#$ff
21de: bc        inc   a
21df: c4 e9     mov   $e9,a
21e1: 8b ee     dec   $ee
21e3: d0 0b     bne   $21f0
21e5: 8f a0 ee  mov   $ee,#$a0
21e8: 58 ff ec  eor   $ec,#$ff
21eb: 58 ff ed  eor   $ed,#$ff
21ee: 3a ec     incw  $ec
21f0: 6f        ret
