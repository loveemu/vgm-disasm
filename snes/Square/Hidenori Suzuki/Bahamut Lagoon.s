0200: e8 00     mov   a,#$00
0202: 40        setp
0203: 5d        mov   x,a
0204: c6        mov   (x),a
0205: 1d        dec   x
0206: d0 fc     bne   $0204
0208: 20        clrp
0209: 5d        mov   x,a
020a: af        mov   (x)+,a
020b: c8 f0     cmp   x,#$f0
020d: d0 fb     bne   $020a
020f: cd ff     mov   x,#$ff
0211: bd        mov   sp,x
0212: 3f 11 03  call  $0311
0215: 8f 00 f6  mov   $f6,#$00
0218: 8f 02 f7  mov   $f7,#$02
021b: c4 f4     mov   $f4,a
021d: c4 f5     mov   $f5,a
021f: e4 f7     mov   a,$f7
0221: d0 fc     bne   $021f
0223: e8 00     mov   a,#$00
0225: 2e fd 1b  cbne  $fd,$0243
0228: 2e fe 53  cbne  $fe,$027e
022b: 2e f4 0d  cbne  $f4,$023b
022e: 2e ff 6f  cbne  $ff,$02a0
0231: 3f f4 02  call  $02f4
0234: 2f ed     bra   $0223
0236: 3f d2 02  call  $02d2
0239: 2f e8     bra   $0223
023b: 3f fe 02  call  $02fe
023e: 3f f4 02  call  $02f4
0241: 2f e0     bra   $0223
0243: e4 5f     mov   a,$5f
0245: f0 2e     beq   $0275
0247: c4 2f     mov   $2f,a
0249: ba 60     movw  ya,$60
024b: da 30     movw  $30,ya
024d: e4 4a     mov   a,$4a
024f: 04 5c     or    a,$5c
0251: 48 ff     eor   a,#$ff
0253: c4 22     mov   $22,a
0255: e4 1d     mov   a,$1d
0257: 3f 32 15  call  $1532
025a: ba 57     movw  ya,$57
025c: da 23     movw  $23,ya
025e: 8f 08 1c  mov   $1c,#$08
0261: 3f 5a 0b  call  $0b5a
0264: ba 23     movw  ya,$23
0266: da 57     movw  $57,ya
0268: e4 23     mov   a,$23
026a: f0 09     beq   $0275
026c: 64 65     cmp   a,$65
026e: d0 05     bne   $0275
0270: ab 66     inc   $66
0272: 8f 00 65  mov   $65,#$00
0275: e4 49     mov   a,$49
0277: f0 aa     beq   $0223
0279: 3f f4 04  call  $04f4
027c: 2f a5     bra   $0223
027e: 8f ff 22  mov   $22,#$ff
0281: e8 10     mov   a,#$10
0283: 3f 32 15  call  $1532
0286: 8f 08 1c  mov   $1c,#$08
0289: fa 50 2f  mov   ($2f),($50)
028c: fa 51 31  mov   ($31),($51)
028f: 8f 00 30  mov   $30,#$00
0292: ba 4a     movw  ya,$4a
0294: da 23     movw  $23,ya
0296: 3f 5a 0b  call  $0b5a
0299: ba 23     movw  ya,$23
029b: da 4a     movw  $4a,ya
029d: 5f 23 02  jmp   $0223

02a0: 03 37 2c  bbs0  $37,$02cf
02a3: e4 39     mov   a,$39
02a5: f0 0c     beq   $02b3
02a7: 6e 3c 09  dbnz  $3c,$02b3
02aa: 33 39 03  bbc1  $39,$02b0
02ad: 3f 8a 0a  call  $0a8a
02b0: fa 3b 3c  mov   ($3c),($3b)
02b3: e4 3a     mov   a,$3a
02b5: f0 18     beq   $02cf
02b7: 6e 41 15  dbnz  $41,$02cf
02ba: 13 3a 03  bbc0  $3a,$02c0
02bd: 3f b0 0a  call  $0ab0
02c0: 33 3a 03  bbc1  $3a,$02c6
02c3: 3f d3 0a  call  $0ad3
02c6: 73 3a 03  bbc3  $3a,$02cc
02c9: 3f 0d 0b  call  $0b0d
02cc: fa 40 41  mov   ($41),($40)
02cf: 5f 23 02  jmp   $0223

02d2: 6e 34 1e  dbnz  $34,$02f3
02d5: a3 38 0e  bbs5  $38,$02e6
02d8: 3f 14 16  call  $1614
02db: e8 1b     mov   a,#$1b
02dd: c5 27 02  mov   $0227,a
02e0: fa 5d fa  mov   ($fa),($5d)
02e3: 12 37     clr0  $37
02e5: 6f        ret

02e6: fa 62 34  mov   ($34),($62)
02e9: ab 34     inc   $34
02eb: b2 38     clr5  $38
02ed: 8f 6c f2  mov   $f2,#$6c
02f0: fa 38 f3  mov   ($f3),($38)
02f3: 6f        ret

02f4: fa 52 f5  mov   ($f5),($52)
02f7: fa 57 f6  mov   ($f6),($57)
02fa: fa 5f f7  mov   ($f7),($5f)
02fd: 6f        ret

02fe: e4 f4     mov   a,$f4
0300: 64 f4     cmp   a,$f4
0302: d0 fa     bne   $02fe
0304: 68 31     cmp   a,#$31
0306: b0 06     bcs   $030e
0308: 9c        dec   a
0309: 1c        asl   a
030a: 5d        mov   x,a
030b: 1f 49 16  jmp   ($1649+x)

030e: 5f 3d 16  jmp   $163d

0311: 8f 6c f2  mov   $f2,#$6c
0314: 8f e0 f3  mov   $f3,#$e0
0317: a2 38     set5  $38
0319: cd f3     mov   x,#$f3
031b: e8 00     mov   a,#$00
031d: 8f 2c f2  mov   $f2,#$2c
0320: c6        mov   (x),a
0321: 8f 3c f2  mov   $f2,#$3c
0324: c6        mov   (x),a
0325: 8f 0d f2  mov   $f2,#$0d
0328: c6        mov   (x),a
0329: 8f 0c f2  mov   $f2,#$0c
032c: c6        mov   (x),a
032d: 8f 1c f2  mov   $f2,#$1c
0330: c6        mov   (x),a
0331: c4 f1     mov   $f1,a
0333: 3f ea 03  call  $03ea
0336: c4 fa     mov   $fa,a
0338: c4 fb     mov   $fb,a
033a: 8f 00 fc  mov   $fc,#$00
033d: 8f 07 33  mov   $33,#$07
0340: 8f 07 f1  mov   $f1,#$07
0343: 8f 5d f2  mov   $f2,#$5d
0346: 8f 56 f3  mov   $f3,#$56
0349: 3f 71 0a  call  $0a71
034c: 6f        ret

034d: 8f 00 5c  mov   $5c,#$00
0350: 8f 20 03  mov   $03,#$20
0353: 8f 00 02  mov   $02,#$00
0356: 5f 6c 09  jmp   $096c

0359: 58 08 1d  eor   $1d,#$08
035c: 8d 11     mov   y,#$11
035e: cd 00     mov   x,#$00
0360: f4 57     mov   a,$57+x
0362: d5 74 1d  mov   $1d74+x,a
0365: 3d        inc   x
0366: fe f8     dbnz  y,$0360
0368: 5f fe 09  jmp   $09fe

036b: 58 08 1d  eor   $1d,#$08
036e: 8d 11     mov   y,#$11
0370: cd 00     mov   x,#$00
0372: f5 74 1d  mov   a,$1d74+x
0375: d4 57     mov   $57+x,a
0377: 3d        inc   x
0378: fe f8     dbnz  y,$0372
037a: 8f ff 58  mov   $58,#$ff
037d: 03 37 05  bbs0  $37,$0385
0380: fa 5d fa  mov   ($fa),($5d)
0383: a2 38     set5  $38
0385: 3f 4a 15  call  $154a
0388: 5f fe 09  jmp   $09fe

038b: fa f5 5f  mov   ($5f),($f5)
038e: 3f fe 09  call  $09fe
0391: 3f 8a 04  call  $048a
0394: 8f 08 06  mov   $06,#$08
0397: e4 1d     mov   a,$1d
0399: 1c        asl   a
039a: 5d        mov   x,a
039b: f6 00 20  mov   a,$2000+y
039e: d5 4c 1b  mov   $1b4c+x,a
03a1: f6 01 20  mov   a,$2001+y
03a4: d5 4d 1b  mov   $1b4d+x,a
03a7: 3d        inc   x
03a8: 3d        inc   x
03a9: fc        inc   y
03aa: fc        inc   y
03ab: 6e 06 ed  dbnz  $06,$039b
03ae: e8 00     mov   a,#$00
03b0: fd        mov   y,a
03b1: c4 3a     mov   $3a,a
03b3: da 59     movw  $59,ya
03b5: c4 5b     mov   $5b,a
03b7: da 60     movw  $60,ya
03b9: da 65     movw  $65,ya
03bb: c4 49     mov   $49,a
03bd: e4 1d     mov   a,$1d
03bf: 3f 32 15  call  $1532
03c2: 8f 00 06  mov   $06,#$00
03c5: 8f 80 07  mov   $07,#$80
03c8: 8f 08 1c  mov   $1c,#$08
03cb: fa 5f 2f  mov   ($2f),($5f)
03ce: 3f 11 0a  call  $0a11
03d1: e4 23     mov   a,$23
03d3: c4 57     mov   $57,a
03d5: c4 58     mov   $58,a
03d7: e8 00     mov   a,#$00
03d9: cd f3     mov   x,#$f3
03db: 3f ea 03  call  $03ea
03de: c4 5e     mov   $5e,a
03e0: e8 3e     mov   a,#$3e
03e2: c4 5d     mov   $5d,a
03e4: 03 37 02  bbs0  $37,$03e9
03e7: c4 fa     mov   $fa,a
03e9: 6f        ret

03ea: 8f 2d f2  mov   $f2,#$2d
03ed: c6        mov   (x),a
03ee: 8f 3d f2  mov   $f2,#$3d
03f1: c6        mov   (x),a
03f2: 8f 4d f2  mov   $f2,#$4d
03f5: c6        mov   (x),a
03f6: 6f        ret

03f7: 3f fe 09  call  $09fe
03fa: 8f 5c f2  mov   $f2,#$5c
03fd: e4 4a     mov   a,$4a
03ff: 48 ff     eor   a,#$ff
0401: c4 f3     mov   $f3,a
0403: 33 37 05  bbc1  $37,$040b
0406: 32 37     clr1  $37
0408: fa 5d fa  mov   ($fa),($5d)
040b: 8f 00 57  mov   $57,#$00
040e: 6f        ret

040f: 03 37 06  bbs0  $37,$0418
0412: 8f 6c f2  mov   $f2,#$6c
0415: fa 38 f3  mov   ($f3),($38)
0418: e4 f5     mov   a,$f5
041a: c4 5f     mov   $5f,a
041c: c4 2f     mov   $2f,a
041e: 3f fe 09  call  $09fe
0421: 3f 8a 04  call  $048a
0424: 8f 5c f2  mov   $f2,#$5c
0427: 8f 00 f3  mov   $f3,#$00
042a: 3f 83 10  call  $1083
042d: 3f 57 10  call  $1057
0430: 3f 96 14  call  $1496
0433: fa 5f 2f  mov   ($2f),($5f)
0436: ba 60     movw  ya,$60
0438: da 30     movw  $30,ya
043a: e4 4a     mov   a,$4a
043c: 04 5c     or    a,$5c
043e: 48 ff     eor   a,#$ff
0440: c4 22     mov   $22,a
0442: 8f 08 1c  mov   $1c,#$08
0445: e4 1d     mov   a,$1d
0447: 3f 32 15  call  $1532
044a: 8f 00 25  mov   $25,#$00
044d: 8f 00 3a  mov   $3a,#$00
0450: eb 1f     mov   y,$1f
0452: f6 4d 1b  mov   a,$1b4d+y
0455: f0 1c     beq   $0473
0457: eb 1e     mov   y,$1e
0459: f6 00 01  mov   a,$0100+y
045c: 28 22     and   a,#$22
045e: d0 03     bne   $0463
0460: 09 20 25  or    ($25),($20)
0463: f6 00 01  mov   a,$0100+y
0466: 28 20     and   a,#$20
0468: d0 06     bne   $0470
046a: 3f a4 14  call  $14a4
046d: 3f 43 0f  call  $0f43
0470: 09 20 57  or    ($57),($20)
0473: 0b 20     asl   $20
0475: ab 1e     inc   $1e
0477: 98 02 1f  adc   $1f,#$02
047a: 98 10 21  adc   $21,#$10
047d: 6e 1c d0  dbnz  $1c,$0450
0480: 8f 4c f2  mov   $f2,#$4c
0483: 29 22 25  and   ($25),($22)
0486: fa 25 f3  mov   ($f3),($25)
0489: 6f        ret

048a: 8d 00     mov   y,#$00
048c: f6 00 20  mov   a,$2000+y
048f: 30 1c     bmi   $04ad
0491: 1c        asl   a
0492: 1c        asl   a
0493: 88 68     adc   a,#$68
0495: 5d        mov   x,a
0496: f6 01 20  mov   a,$2001+y
0499: af        mov   (x)+,a
049a: f6 02 20  mov   a,$2002+y
049d: af        mov   (x)+,a
049e: f6 03 20  mov   a,$2003+y
04a1: af        mov   (x)+,a
04a2: f6 04 20  mov   a,$2004+y
04a5: c6        mov   (x),a
04a6: dd        mov   a,y
04a7: 60        clrc
04a8: 88 05     adc   a,#$05
04aa: fd        mov   y,a
04ab: 2f df     bra   $048c
04ad: fc        inc   y
04ae: 6f        ret

04af: fa f6 47  mov   ($47),($f6)
04b2: 8f c0 49  mov   $49,#$c0
04b5: 8f 16 48  mov   $48,#$16
04b8: 8f 02 53  mov   $53,#$02
04bb: 2f 0c     bra   $04c9
04bd: 8f 80 47  mov   $47,#$80
04c0: 8f fc 49  mov   $49,#$fc
04c3: 8f 12 48  mov   $48,#$12
04c6: 8f 06 53  mov   $53,#$06
04c9: f8 f5     mov   x,$f5
04cb: 82 33     set4  $33
04cd: fa 33 f1  mov   ($f1),($33)
04d0: 92 33     clr4  $33
04d2: e4 f7     mov   a,$f7
04d4: 28 0f     and   a,#$0f
04d6: c4 52     mov   $52,a
04d8: c4 f5     mov   $f5,a
04da: 7d        mov   a,x
04db: 3f e9 04  call  $04e9
04de: da 45     movw  $45,ya
04e0: e4 fe     mov   a,$fe
04e2: 8f 3e fb  mov   $fb,#$3e
04e5: 8f 3e 4f  mov   $4f,#$3e
04e8: 6f        ret

04e9: 8d 04     mov   y,#$04
04eb: cf        mul   ya
04ec: 2d        push  a
04ed: dd        mov   a,y
04ee: 60        clrc
04ef: 88 38     adc   a,#$38
04f1: fd        mov   y,a
04f2: ae        pop   a
04f3: 6f        ret

04f4: e4 48     mov   a,$48
04f6: 3f 32 15  call  $1532
04f9: e4 53     mov   a,$53
04fb: 1c        asl   a
04fc: c4 06     mov   $06,a
04fe: 8d 00     mov   y,#$00
0500: f8 1f     mov   x,$1f
0502: f7 45     mov   a,($45)+y
0504: d5 4c 1b  mov   $1b4c+x,a
0507: fc        inc   y
0508: 3d        inc   x
0509: 7e 06     cmp   y,$06
050b: d0 f5     bne   $0502
050d: fa 50 2f  mov   ($2f),($50)
0510: 8f 80 06  mov   $06,#$80
0513: fa 47 07  mov   ($07),($47)
0516: fa 53 1c  mov   ($1c),($53)
0519: 3f 11 0a  call  $0a11
051c: fa 23 4b  mov   ($4b),($23)
051f: 09 23 58  or    ($58),($23)
0522: 8f 5c f2  mov   $f2,#$5c
0525: e4 4a     mov   a,$4a
0527: 04 23     or    a,$23
0529: c4 f3     mov   $f3,a
052b: fa 23 4a  mov   ($4a),($23)
052e: e8 00     mov   a,#$00
0530: c4 4d     mov   $4d,a
0532: c4 4c     mov   $4c,a
0534: c4 4e     mov   $4e,a
0536: 3f 83 10  call  $1083
0539: 3f 57 10  call  $1057
053c: 3f 96 14  call  $1496
053f: 22 33     set1  $33
0541: fa 33 f1  mov   ($f1),($33)
0544: 8f 00 49  mov   $49,#$00
0547: 6f        ret

0548: 3f fe 09  call  $09fe
054b: 8f 5c f2  mov   $f2,#$5c
054e: fa 4a f3  mov   ($f3),($4a)
0551: e8 00     mov   a,#$00
0553: c4 4a     mov   $4a,a
0555: c4 4d     mov   $4d,a
0557: c4 4c     mov   $4c,a
0559: c4 4e     mov   $4e,a
055b: 3f 83 10  call  $1083
055e: 3f 57 10  call  $1057
0561: 3f 96 14  call  $1496
0564: 6f        ret

0565: 8f 38 03  mov   $03,#$38
0568: 8f 00 02  mov   $02,#$00
056b: 5f 6c 09  jmp   $096c

056e: 3f fe 09  call  $09fe
0571: e8 00     mov   a,#$00
0573: 8f 5c f2  mov   $f2,#$5c
0576: 8f ff f3  mov   $f3,#$ff
0579: c4 57     mov   $57,a
057b: c4 4a     mov   $4a,a
057d: c4 4c     mov   $4c,a
057f: c4 4d     mov   $4d,a
0581: c4 4e     mov   $4e,a
0583: c4 49     mov   $49,a
0585: 6f        ret

0586: fa f6 fb  mov   ($fb),($f6)
0589: fa 4f f5  mov   ($f5),($4f)
058c: 2f 0b     bra   $0599
058e: 12 3a     clr0  $3a
0590: e4 f6     mov   a,$f6
0592: c4 5e     mov   $5e,a
0594: 60        clrc
0595: 84 5d     adc   a,$5d
0597: c4 fa     mov   $fa,a
0599: 5f fe 09  jmp   $09fe

059c: 32 39     clr1  $39
059e: e4 f6     mov   a,$f6
05a0: 30 29     bmi   $05cb
05a2: c4 50     mov   $50,a
05a4: c4 2f     mov   $2f,a
05a6: 3f fe 09  call  $09fe
05a9: fa 4a 22  mov   ($22),($4a)
05ac: e8 10     mov   a,#$10
05ae: 3f f2 0a  call  $0af2
05b1: 6f        ret

05b2: 32 3a     clr1  $3a
05b4: e4 f6     mov   a,$f6
05b6: 30 13     bmi   $05cb
05b8: c4 5f     mov   $5f,a
05ba: c4 2f     mov   $2f,a
05bc: 3f fe 09  call  $09fe
05bf: fa 4a 22  mov   ($22),($4a)
05c2: 58 ff 22  eor   $22,#$ff
05c5: e4 1d     mov   a,$1d
05c7: 3f f2 0a  call  $0af2
05ca: 6f        ret

05cb: 5f fe 09  jmp   $09fe

05ce: fa f5 51  mov   ($51),($f5)
05d1: fa 4a 22  mov   ($22),($4a)
05d4: 2f 0e     bra   $05e4
05d6: 72 3a     clr3  $3a
05d8: fa f6 61  mov   ($61),($f6)
05db: 8f 00 60  mov   $60,#$00
05de: fa 4a 22  mov   ($22),($4a)
05e1: 58 ff 22  eor   $22,#$ff
05e4: c4 30     mov   $30,a
05e6: 3f fe 09  call  $09fe
05e9: ba 60     movw  ya,$60
05eb: da 30     movw  $30,ya
05ed: e4 1d     mov   a,$1d
05ef: 3f 42 0b  call  $0b42
05f2: 6f        ret

05f3: 5f fe 09  jmp   $09fe

05f6: 5f fe 09  jmp   $09fe

05f9: 02 3a     set0  $3a
05fb: fa f6 42  mov   ($42),($f6)
05fe: fa f5 40  mov   ($40),($f5)
0601: 8f 01 41  mov   $41,#$01
0604: 5f fe 09  jmp   $09fe

0607: 22 39     set1  $39
0609: fa f6 3e  mov   ($3e),($f6)
060c: fa f5 3b  mov   ($3b),($f5)
060f: 8f 01 3c  mov   $3c,#$01
0612: 5f fe 09  jmp   $09fe

0615: 22 3a     set1  $3a
0617: fa f6 43  mov   ($43),($f6)
061a: fa f5 40  mov   ($40),($f5)
061d: 8f 01 41  mov   $41,#$01
0620: 5f fe 09  jmp   $09fe

0623: 5f fe 09  jmp   $09fe

0626: 62 3a     set3  $3a
0628: fa f6 44  mov   ($44),($f6)
062b: 60        clrc
062c: 98 80 44  adc   $44,#$80
062f: fa f5 40  mov   ($40),($f5)
0632: 8f 01 41  mov   $41,#$01
0635: 5f fe 09  jmp   $09fe

0638: fa f5 56  mov   ($56),($f5)
063b: 5f fe 09  jmp   $09fe

063e: fa 67 f5  mov   ($f5),($67)
0641: fa 5d f6  mov   ($f6),($5d)
0644: fa 66 f7  mov   ($f7),($66)
0647: 5f f2 09  jmp   $09f2

064a: 38 07 37  and   $37,#$07
064d: 09 f5 37  or    ($37),($f5)
0650: 3f fe 09  call  $09fe
0653: 3f e0 0a  call  $0ae0
0656: 3f ee 15  call  $15ee
0659: 5f 4a 15  jmp   $154a

065c: 13 f6 10  bbc0  $f6,$066f
065f: fa f5 5c  mov   ($5c),($f5)
0662: e4 4a     mov   a,$4a
0664: 48 ff     eor   a,#$ff
0666: 24 5c     and   a,$5c
0668: c4 22     mov   $22,a
066a: 8f 5c f2  mov   $f2,#$5c
066d: c4 f3     mov   $f3,a
066f: fa 5c f5  mov   ($f5),($5c)
0672: 5f f2 09  jmp   $09f2

0675: e4 f5     mov   a,$f5
0677: c4 06     mov   $06,a
0679: 28 0f     and   a,#$0f
067b: c4 62     mov   $62,a
067d: ba f6     movw  ya,$f6
067f: da 63     movw  $63,ya
0681: 3f fe 09  call  $09fe
0684: 3f 4a 15  call  $154a
0687: e4 06     mov   a,$06
0689: 28 f0     and   a,#$f0
068b: 9f        xcn   a
068c: 5c        lsr   a
068d: 5d        mov   x,a
068e: 8d 08     mov   y,#$08
0690: 7d        mov   a,x
0691: 28 07     and   a,#$07
0693: 9f        xcn   a
0694: 08 0f     or    a,#$0f
0696: c4 f2     mov   $f2,a
0698: f5 84 17  mov   a,$1784+x
069b: c4 f3     mov   $f3,a
069d: 3d        inc   x
069e: fe f0     dbnz  y,$0690
06a0: 6f        ret

06a1: fa 36 f7  mov   ($f7),($36)
06a4: e4 f5     mov   a,$f5
06a6: 30 0b     bmi   $06b3
06a8: c4 36     mov   $36,a
06aa: 3f f2 09  call  $09f2
06ad: 3f ee 15  call  $15ee
06b0: 5f 4a 15  jmp   $154a

06b3: 5f f2 09  jmp   $09f2

06b6: f8 f5     mov   x,$f5
06b8: f5 80 56  mov   a,$5680+x
06bb: c4 f5     mov   $f5,a
06bd: c4 06     mov   $06,a
06bf: 10 10     bpl   $06d1
06c1: e4 1b     mov   a,$1b
06c3: d5 80 56  mov   $5680+x,a
06c6: 1c        asl   a
06c7: 5d        mov   x,a
06c8: 1c        asl   a
06c9: c4 02     mov   $02,a
06cb: ba 19     movw  ya,$19
06cd: da 00     movw  $00,ya
06cf: 2f 10     bra   $06e1
06d1: 1c        asl   a
06d2: 5d        mov   x,a
06d3: 1c        asl   a
06d4: c4 02     mov   $02,a
06d6: fd        mov   y,a
06d7: f6 00 56  mov   a,$5600+y
06da: c4 00     mov   $00,a
06dc: f6 01 56  mov   a,$5601+y
06df: c4 01     mov   $01,a
06e1: e4 f5     mov   a,$f5
06e3: d5 00 57  mov   $5700+x,a
06e6: e4 f6     mov   a,$f6
06e8: d5 01 57  mov   $5701+x,a
06eb: 3f e2 09  call  $09e2
06ee: 60        clrc
06ef: ba f6     movw  ya,$f6
06f1: 7a 00     addw  ya,$00
06f3: da 04     movw  $04,ya
06f5: eb 02     mov   y,$02
06f7: e4 00     mov   a,$00
06f9: d6 00 56  mov   $5600+y,a
06fc: e4 01     mov   a,$01
06fe: d6 01 56  mov   $5601+y,a
0701: e4 04     mov   a,$04
0703: d6 02 56  mov   $5602+y,a
0706: e4 05     mov   a,$05
0708: d6 03 56  mov   $5603+y,a
070b: 3f e2 09  call  $09e2
070e: e4 f6     mov   a,$f6
0710: d5 41 57  mov   $5741+x,a
0713: e4 f7     mov   a,$f7
0715: d5 40 57  mov   $5740+x,a
0718: 3f e2 09  call  $09e2
071b: e4 f6     mov   a,$f6
071d: d5 80 57  mov   $5780+x,a
0720: e4 f7     mov   a,$f7
0722: d5 81 57  mov   $5781+x,a
0725: e4 06     mov   a,$06
0727: 30 03     bmi   $072c
0729: 5f fe 09  jmp   $09fe

072c: 3f e2 09  call  $09e2
072f: ba f6     movw  ya,$f6
0731: da 06     movw  $06,ya
0733: da 0c     movw  $0c,ya
0735: d5 c0 57  mov   $57c0+x,a
0738: dd        mov   a,y
0739: d5 c1 57  mov   $57c1+x,a
073c: e4 f4     mov   a,$f4
073e: 64 f4     cmp   a,$f4
0740: d0 fa     bne   $073c
0742: c4 f4     mov   $f4,a
0744: c4 16     mov   $16,a
0746: ba 00     movw  ya,$00
0748: c5 73 07  mov   $0773,a
074b: cc 74 07  mov   $0774,y
074e: bc        inc   a
074f: d0 01     bne   $0752
0751: fc        inc   y
0752: c5 78 07  mov   $0778,a
0755: cc 79 07  mov   $0779,y
0758: bc        inc   a
0759: d0 01     bne   $075c
075b: fc        inc   y
075c: c5 7d 07  mov   $077d,a
075f: cc 7e 07  mov   $077e,y
0762: eb 06     mov   y,$06
0764: d0 02     bne   $0768
0766: 8b 07     dec   $07
0768: cd 00     mov   x,#$00
076a: e4 16     mov   a,$16
076c: 64 f4     cmp   a,$f4
076e: f0 fa     beq   $076a
0770: e4 f5     mov   a,$f5
0772: d5 02 d3  mov   $d302+x,a
0775: e4 f6     mov   a,$f6
0777: d5 03 d3  mov   $d303+x,a
077a: e4 f7     mov   a,$f7
077c: d5 04 d3  mov   $d304+x,a
077f: e4 f4     mov   a,$f4
0781: 64 f4     cmp   a,$f4
0783: d0 fa     bne   $077f
0785: c4 f4     mov   $f4,a
0787: c4 16     mov   $16,a
0789: 60        clrc
078a: 7d        mov   a,x
078b: 88 03     adc   a,#$03
078d: 90 09     bcc   $0798
078f: ac 74 07  inc   $0774
0792: ac 79 07  inc   $0779
0795: ac 7e 07  inc   $077e
0798: 5d        mov   x,a
0799: fe cf     dbnz  y,$076a
079b: eb 07     mov   y,$07
079d: f0 06     beq   $07a5
079f: 8b 07     dec   $07
07a1: 8d 00     mov   y,#$00
07a3: 2f c5     bra   $076a
07a5: ba 19     movw  ya,$19
07a7: 7a 0c     addw  ya,$0c
07a9: 7a 0c     addw  ya,$0c
07ab: 7a 0c     addw  ya,$0c
07ad: da 19     movw  $19,ya
07af: ab 1b     inc   $1b
07b1: 5f fe 09  jmp   $09fe

07b4: 5f 3d 16  jmp   $163d

07b7: e4 f5     mov   a,$f5
07b9: 30 14     bmi   $07cf
07bb: fd        mov   y,a
07bc: f6 80 56  mov   a,$5680+y
07bf: 1c        asl   a
07c0: 5d        mov   x,a
07c1: e8 ff     mov   a,#$ff
07c3: d5 00 57  mov   $5700+x,a
07c6: d5 01 57  mov   $5701+x,a
07c9: d6 80 56  mov   $5680+y,a
07cc: 5f fe 09  jmp   $09fe

07cf: e8 00     mov   a,#$00
07d1: 8d 58     mov   y,#$58
07d3: da 00     movw  $00,ya
07d5: fd        mov   y,a
07d6: c4 1b     mov   $1b,a
07d8: da 06     movw  $06,ya
07da: da 08     movw  $08,ya
07dc: 8f 20 0c  mov   $0c,#$20
07df: f8 06     mov   x,$06
07e1: f5 00 57  mov   a,$5700+x
07e4: 30 28     bmi   $080e
07e6: 69 08 06  cmp   ($06),($08)
07e9: f0 03     beq   $07ee
07eb: 3f 20 08  call  $0820
07ee: f8 08     mov   x,$08
07f0: f5 c0 57  mov   a,$57c0+x
07f3: c4 0a     mov   $0a,a
07f5: f5 c1 57  mov   a,$57c1+x
07f8: c4 0b     mov   $0b,a
07fa: ba 00     movw  ya,$00
07fc: 60        clrc
07fd: 7a 0a     addw  ya,$0a
07ff: 7a 0a     addw  ya,$0a
0801: 7a 0a     addw  ya,$0a
0803: da 00     movw  $00,ya
0805: ab 1b     inc   $1b
0807: 60        clrc
0808: 98 02 08  adc   $08,#$02
080b: 98 04 09  adc   $09,#$04
080e: 60        clrc
080f: 98 02 06  adc   $06,#$02
0812: 98 04 07  adc   $07,#$04
0815: 8b 0c     dec   $0c
0817: d0 c6     bne   $07df
0819: ba 00     movw  ya,$00
081b: da 19     movw  $19,ya
081d: 5f fe 09  jmp   $09fe

0820: f8 06     mov   x,$06
0822: eb 08     mov   y,$08
0824: f5 c0 57  mov   a,$57c0+x
0827: d6 c0 57  mov   $57c0+y,a
082a: c4 0a     mov   $0a,a
082c: f5 c1 57  mov   a,$57c1+x
082f: d6 c1 57  mov   $57c1+y,a
0832: c4 0b     mov   $0b,a
0834: f5 00 57  mov   a,$5700+x
0837: fd        mov   y,a
0838: e4 1b     mov   a,$1b
083a: d6 80 56  mov   $5680+y,a
083d: e8 ff     mov   a,#$ff
083f: d5 00 57  mov   $5700+x,a
0842: d5 01 57  mov   $5701+x,a
0845: f8 09     mov   x,$09
0847: e4 01     mov   a,$01
0849: c4 03     mov   $03,a
084b: d5 01 56  mov   $5601+x,a
084e: fd        mov   y,a
084f: e4 00     mov   a,$00
0851: c4 02     mov   $02,a
0853: d5 00 56  mov   $5600+x,a
0856: ba 00     movw  ya,$00
0858: c5 a2 08  mov   $08a2,a
085b: cc a3 08  mov   $08a3,y
085e: bc        inc   a
085f: d0 01     bne   $0862
0861: fc        inc   y
0862: c5 a8 08  mov   $08a8,a
0865: cc a9 08  mov   $08a9,y
0868: bc        inc   a
0869: d0 01     bne   $086c
086b: fc        inc   y
086c: c5 ae 08  mov   $08ae,a
086f: cc af 08  mov   $08af,y
0872: f8 07     mov   x,$07
0874: f5 01 56  mov   a,$5601+x
0877: fd        mov   y,a
0878: f5 00 56  mov   a,$5600+x
087b: c5 9f 08  mov   $089f,a
087e: cc a0 08  mov   $08a0,y
0881: bc        inc   a
0882: d0 01     bne   $0885
0884: fc        inc   y
0885: c5 a5 08  mov   $08a5,a
0888: cc a6 08  mov   $08a6,y
088b: bc        inc   a
088c: d0 01     bne   $088f
088e: fc        inc   y
088f: c5 ab 08  mov   $08ab,a
0892: cc ac 08  mov   $08ac,y
0895: 60        clrc
0896: cd 00     mov   x,#$00
0898: eb 0a     mov   y,$0a
089a: d0 02     bne   $089e
089c: 8b 0b     dec   $0b
089e: f5 00 00  mov   a,$0000+x
08a1: d5 00 00  mov   $0000+x,a
08a4: f5 00 00  mov   a,$0000+x
08a7: d5 00 00  mov   $0000+x,a
08aa: f5 00 00  mov   a,$0000+x
08ad: d5 00 00  mov   $0000+x,a
08b0: 7d        mov   a,x
08b1: 88 03     adc   a,#$03
08b3: 90 13     bcc   $08c8
08b5: 60        clrc
08b6: ac a0 08  inc   $08a0
08b9: ac a3 08  inc   $08a3
08bc: ac a6 08  inc   $08a6
08bf: ac a9 08  inc   $08a9
08c2: ac ac 08  inc   $08ac
08c5: ac af 08  inc   $08af
08c8: 5d        mov   x,a
08c9: fe d3     dbnz  y,$089e
08cb: e4 0b     mov   a,$0b
08cd: f0 04     beq   $08d3
08cf: 8b 0b     dec   $0b
08d1: 2f cb     bra   $089e
08d3: 6f        ret

08d4: 8f 0e 02  mov   $02,#$0e
08d7: 8f 00 03  mov   $03,#$00
08da: 3f 6c 09  call  $096c
08dd: eb 0e     mov   y,$0e
08df: f6 80 56  mov   a,$5680+y
08e2: 1c        asl   a
08e3: fd        mov   y,a
08e4: cd 0f     mov   x,#$0f
08e6: bf        mov   a,(x)+
08e7: d6 01 57  mov   $5701+y,a
08ea: bf        mov   a,(x)+
08eb: d6 40 57  mov   $5740+y,a
08ee: bf        mov   a,(x)+
08ef: d6 41 57  mov   $5741+y,a
08f2: bf        mov   a,(x)+
08f3: d6 80 57  mov   $5780+y,a
08f6: bf        mov   a,(x)+
08f7: d6 81 57  mov   $5781+y,a
08fa: 6f        ret

08fb: cd 00     mov   x,#$00
08fd: e7 f5     mov   a,($f5+x)
08ff: c4 f7     mov   $f7,a
0901: 5f f2 09  jmp   $09f2

0904: cd 00     mov   x,#$00
0906: e7 f5     mov   a,($f5+x)
0908: c4 f7     mov   $f7,a
090a: e4 f7     mov   a,$f7
090c: c7 f5     mov   ($f5+x),a
090e: 5f f2 09  jmp   $09f2

0911: fa f5 f2  mov   ($f2),($f5)
0914: fa f3 f7  mov   ($f7),($f3)
0917: 5f f2 09  jmp   $09f2

091a: fa f5 f2  mov   ($f2),($f5)
091d: fa f7 f3  mov   ($f3),($f7)
0920: 5f fe 09  jmp   $09fe

0923: 8f 00 52  mov   $52,#$00
0926: 3f 6e 05  call  $056e
0929: 3f 71 0a  call  $0a71
092c: 6f        ret

092d: cd 0e     mov   x,#$0e
092f: eb f5     mov   y,$f5
0931: f6 00 01  mov   a,$0100+y
0934: af        mov   (x)+,a
0935: f6 d8 01  mov   a,$01d8+y
0938: af        mov   (x)+,a
0939: f6 bc 17  mov   a,$17bc+y
093c: af        mov   (x)+,a
093d: dd        mov   a,y
093e: 1c        asl   a
093f: fd        mov   y,a
0940: f6 8d 1a  mov   a,$1a8d+y
0943: af        mov   (x)+,a
0944: f6 ed 17  mov   a,$17ed+y
0947: c6        mov   (x),a
0948: 5f c4 09  jmp   $09c4

094b: cd 07     mov   x,#$07
094d: 7d        mov   a,x
094e: 9f        xcn   a
094f: 04 f5     or    a,$f5
0951: c4 f2     mov   $f2,a
0953: e4 f3     mov   a,$f3
0955: d4 0e     mov   $0e+x,a
0957: 1d        dec   x
0958: 10 f3     bpl   $094d
095a: 5f c4 09  jmp   $09c4

095d: fa 1a 0e  mov   ($0e),($1a)
0960: 8f d0 0f  mov   $0f,#$d0
0963: 8f 05 10  mov   $10,#$05
0966: 8f e0 11  mov   $11,#$e0
0969: 5f c4 09  jmp   $09c4

096c: ba f6     movw  ya,$f6
096e: da 0c     movw  $0c,ya
0970: da f6     movw  $f6,ya
0972: f8 f4     mov   x,$f4
0974: 30 4b     bmi   $09c1
0976: 3e f4     cmp   x,$f4
0978: d0 f8     bne   $0972
097a: d8 f4     mov   $f4,x
097c: ba 02     movw  ya,$02
097e: c5 9a 09  mov   $099a,a
0981: c5 a0 09  mov   $09a0,a
0984: cc 9b 09  mov   $099b,y
0987: cc a1 09  mov   $09a1,y
098a: 7d        mov   a,x
098b: eb 0c     mov   y,$0c
098d: d0 02     bne   $0991
098f: 8b 0d     dec   $0d
0991: cd 00     mov   x,#$00
0993: 64 f4     cmp   a,$f4
0995: f0 fc     beq   $0993
0997: e4 f6     mov   a,$f6
0999: d5 00 23  mov   $2300+x,a
099c: 3d        inc   x
099d: e4 f7     mov   a,$f7
099f: d5 00 23  mov   $2300+x,a
09a2: e4 f4     mov   a,$f4
09a4: 64 f4     cmp   a,$f4
09a6: d0 fa     bne   $09a2
09a8: c4 f4     mov   $f4,a
09aa: 3d        inc   x
09ab: d0 06     bne   $09b3
09ad: ac 9b 09  inc   $099b
09b0: ac a1 09  inc   $09a1
09b3: fe de     dbnz  y,$0993
09b5: eb 0d     mov   y,$0d
09b7: f0 06     beq   $09bf
09b9: 8b 0d     dec   $0d
09bb: 8d 00     mov   y,#$00
09bd: 2f d4     bra   $0993
09bf: 2f 3d     bra   $09fe
09c1: 5f 3d 16  jmp   $163d

09c4: cd 0e     mov   x,#$0e
09c6: 8f 04 06  mov   $06,#$04
09c9: bf        mov   a,(x)+
09ca: c4 f5     mov   $f5,a
09cc: bf        mov   a,(x)+
09cd: c4 f6     mov   $f6,a
09cf: eb f4     mov   y,$f4
09d1: 30 1c     bmi   $09ef
09d3: 7e f4     cmp   y,$f4
09d5: d0 f8     bne   $09cf
09d7: cb f4     mov   $f4,y
09d9: 7e f4     cmp   y,$f4
09db: f0 fc     beq   $09d9
09dd: 6e 06 e9  dbnz  $06,$09c9
09e0: 2f 1c     bra   $09fe
09e2: e4 f4     mov   a,$f4
09e4: 64 f4     cmp   a,$f4
09e6: d0 fa     bne   $09e2
09e8: c4 f4     mov   $f4,a
09ea: 64 f4     cmp   a,$f4
09ec: f0 fc     beq   $09ea
09ee: 6f        ret

09ef: 5f 3d 16  jmp   $163d

09f2: e4 f4     mov   a,$f4
09f4: 64 f4     cmp   a,$f4
09f6: d0 fa     bne   $09f2
09f8: c4 f4     mov   $f4,a
09fa: 64 f4     cmp   a,$f4
09fc: f0 fc     beq   $09fa
09fe: 8f ff f4  mov   $f4,#$ff
0a01: e4 f4     mov   a,$f4
0a03: d0 fc     bne   $0a01
0a05: c4 f4     mov   $f4,a
0a07: fa 52 f5  mov   ($f5),($52)
0a0a: fa 57 f6  mov   ($f6),($57)
0a0d: fa 5f f7  mov   ($f7),($5f)
0a10: 6f        ret

0a11: 8f 00 23  mov   $23,#$00
0a14: f8 1f     mov   x,$1f
0a16: f5 4d 1b  mov   a,$1b4d+x
0a19: f0 48     beq   $0a63
0a1b: eb 1e     mov   y,$1e
0a1d: e8 ff     mov   a,#$ff
0a1f: d6 ac 1b  mov   $1bac+y,a
0a22: d6 bc 17  mov   $17bc+y,a
0a25: e4 06     mov   a,$06
0a27: d6 00 01  mov   $0100+y,a
0a2a: e8 0f     mov   a,#$0f
0a2c: d6 d4 17  mov   $17d4+y,a
0a2f: e8 00     mov   a,#$00
0a31: d6 18 01  mov   $0118+y,a
0a34: d6 30 01  mov   $0130+y,a
0a37: d6 84 19  mov   $1984+y,a
0a3a: d5 7d 1b  mov   $1b7d+x,a
0a3d: d5 54 19  mov   $1954+x,a
0a40: d5 55 19  mov   $1955+x,a
0a43: d5 9c 19  mov   $199c+x,a
0a46: d5 8c 1a  mov   $1a8c+x,a
0a49: e8 50     mov   a,#$50
0a4b: d5 9d 19  mov   $199d+x,a
0a4e: e4 07     mov   a,$07
0a50: d5 8d 1a  mov   $1a8d+x,a
0a53: e8 06     mov   a,#$06
0a55: d6 a4 17  mov   $17a4+y,a
0a58: e8 06     mov   a,#$06
0a5a: d6 d8 01  mov   $01d8+y,a
0a5d: 3f 32 12  call  $1232
0a60: 09 20 23  or    ($23),($20)
0a63: 0b 20     asl   $20
0a65: ab 1e     inc   $1e
0a67: 98 02 1f  adc   $1f,#$02
0a6a: 98 10 21  adc   $21,#$10
0a6d: 6e 1c a4  dbnz  $1c,$0a14
0a70: 6f        ret

0a71: e8 00     mov   a,#$00
0a73: c4 1b     mov   $1b,a
0a75: 8d 58     mov   y,#$58
0a77: da 19     movw  $19,ya
0a79: e8 ff     mov   a,#$ff
0a7b: 8d 80     mov   y,#$80
0a7d: d6 7f 56  mov   $567f+y,a
0a80: fe fb     dbnz  y,$0a7d
0a82: 8d 40     mov   y,#$40
0a84: d6 ff 56  mov   $56ff+y,a
0a87: fe fb     dbnz  y,$0a84
0a89: 6f        ret

0a8a: 69 3e 50  cmp   ($50),($3e)
0a8d: f0 14     beq   $0aa3
0a8f: 90 04     bcc   $0a95
0a91: 8b 50     dec   $50
0a93: 2f 02     bra   $0a97
0a95: ab 50     inc   $50
0a97: fa 50 2f  mov   ($2f),($50)
0a9a: fa 4a 22  mov   ($22),($4a)
0a9d: e8 10     mov   a,#$10
0a9f: 3f f2 0a  call  $0af2
0aa2: 6f        ret

0aa3: 32 39     clr1  $39
0aa5: e4 50     mov   a,$50
0aa7: d0 06     bne   $0aaf
0aa9: 3f 4b 05  call  $054b
0aac: 8f 7f 50  mov   $50,#$7f
0aaf: 6f        ret

0ab0: 60        clrc
0ab1: fa 42 06  mov   ($06),($42)
0ab4: 98 80 06  adc   $06,#$80
0ab7: 60        clrc
0ab8: e4 5e     mov   a,$5e
0aba: 88 80     adc   a,#$80
0abc: 64 06     cmp   a,$06
0abe: f0 10     beq   $0ad0
0ac0: 90 04     bcc   $0ac6
0ac2: 8b 5e     dec   $5e
0ac4: 2f 02     bra   $0ac8
0ac6: ab 5e     inc   $5e
0ac8: 60        clrc
0ac9: e4 5d     mov   a,$5d
0acb: 84 5e     adc   a,$5e
0acd: c4 fa     mov   $fa,a
0acf: 6f        ret

0ad0: 12 3a     clr0  $3a
0ad2: 6f        ret

0ad3: 69 43 5f  cmp   ($5f),($43)
0ad6: f0 17     beq   $0aef
0ad8: 90 04     bcc   $0ade
0ada: 8b 5f     dec   $5f
0adc: 2f 02     bra   $0ae0
0ade: ab 5f     inc   $5f
0ae0: fa 5f 2f  mov   ($2f),($5f)
0ae3: fa 4a 22  mov   ($22),($4a)
0ae6: 58 ff 22  eor   $22,#$ff
0ae9: e4 1d     mov   a,$1d
0aeb: 3f f2 0a  call  $0af2
0aee: 6f        ret

0aef: 32 3a     clr1  $3a
0af1: 6f        ret

0af2: 3f 32 15  call  $1532
0af5: 8f 08 1c  mov   $1c,#$08
0af8: f8 1e     mov   x,$1e
0afa: f4 98     mov   a,$98+x
0afc: 3f e2 14  call  $14e2
0aff: 0b 20     asl   $20
0b01: ab 1e     inc   $1e
0b03: 98 02 1f  adc   $1f,#$02
0b06: 98 10 21  adc   $21,#$10
0b09: 6e 1c ec  dbnz  $1c,$0af8
0b0c: 6f        ret

0b0d: e4 61     mov   a,$61
0b0f: 60        clrc
0b10: 88 80     adc   a,#$80
0b12: 64 44     cmp   a,$44
0b14: f0 16     beq   $0b2c
0b16: 90 0a     bcc   $0b22
0b18: 8d ff     mov   y,#$ff
0b1a: e8 e0     mov   a,#$e0
0b1c: 7a 60     addw  ya,$60
0b1e: da 60     movw  $60,ya
0b20: 2f 12     bra   $0b34
0b22: 8d 00     mov   y,#$00
0b24: e8 20     mov   a,#$20
0b26: 7a 60     addw  ya,$60
0b28: da 60     movw  $60,ya
0b2a: 2f 08     bra   $0b34
0b2c: 72 3a     clr3  $3a
0b2e: e8 00     mov   a,#$00
0b30: c4 60     mov   $60,a
0b32: eb 61     mov   y,$61
0b34: da 30     movw  $30,ya
0b36: fa 4a 22  mov   ($22),($4a)
0b39: 58 ff 22  eor   $22,#$ff
0b3c: e4 1d     mov   a,$1d
0b3e: 3f 42 0b  call  $0b42
0b41: 6f        ret

0b42: 3f 32 15  call  $1532
0b45: 8f 08 1c  mov   $1c,#$08
0b48: 3f 43 0f  call  $0f43
0b4b: 0b 20     asl   $20
0b4d: ab 1e     inc   $1e
0b4f: 98 02 1f  adc   $1f,#$02
0b52: 98 10 21  adc   $21,#$10
0b55: 6e 1c f0  dbnz  $1c,$0b48
0b58: 6f        ret

0b59: 6f        ret

0b5a: 8f 00 25  mov   $25,#$00
0b5d: e4 23     mov   a,$23
0b5f: 24 20     and   a,$20
0b61: f0 35     beq   $0b98
0b63: 3f b2 0b  call  $0bb2
0b66: 03 26 43  bbs0  $26,$0bac
0b69: f8 1f     mov   x,$1f
0b6b: f5 4d 1b  mov   a,$1b4d+x
0b6e: fd        mov   y,a
0b6f: f5 4c 1b  mov   a,$1b4c+x
0b72: da 29     movw  $29,ya
0b74: eb 1e     mov   y,$1e
0b76: cd 00     mov   x,#$00
0b78: e7 29     mov   a,($29+x)
0b7a: 3a 29     incw  $29
0b7c: 68 c4     cmp   a,#$c4
0b7e: 90 2f     bcc   $0baf
0b80: 3f e9 0f  call  $0fe9
0b83: e4 23     mov   a,$23
0b85: 24 20     and   a,$20
0b87: d0 eb     bne   $0b74
0b89: f8 1f     mov   x,$1f
0b8b: e4 29     mov   a,$29
0b8d: d5 4c 1b  mov   $1b4c+x,a
0b90: e4 2a     mov   a,$2a
0b92: d5 4d 1b  mov   $1b4d+x,a
0b95: 3f d7 0b  call  $0bd7
0b98: 0b 20     asl   $20
0b9a: ab 1e     inc   $1e
0b9c: 98 02 1f  adc   $1f,#$02
0b9f: 98 10 21  adc   $21,#$10
0ba2: 6e 1c b8  dbnz  $1c,$0b5d
0ba5: 8f 4c f2  mov   $f2,#$4c
0ba8: fa 25 f3  mov   ($f3),($25)
0bab: 6f        ret

0bac: 5f ff 0b  jmp   $0bff

0baf: 5f a1 0d  jmp   $0da1

0bb2: f8 1e     mov   x,$1e
0bb4: f5 00 01  mov   a,$0100+x
0bb7: c4 26     mov   $26,a
0bb9: f5 30 01  mov   a,$0130+x
0bbc: fd        mov   y,a
0bbd: f5 18 01  mov   a,$0118+x
0bc0: da 27     movw  $27,ya
0bc2: f8 1f     mov   x,$1f
0bc4: f5 ed 17  mov   a,$17ed+x
0bc7: fd        mov   y,a
0bc8: f5 ec 17  mov   a,$17ec+x
0bcb: da 2b     movw  $2b,ya
0bcd: f5 1d 18  mov   a,$181d+x
0bd0: fd        mov   y,a
0bd1: f5 1c 18  mov   a,$181c+x
0bd4: da 2d     movw  $2d,ya
0bd6: 6f        ret

0bd7: f8 1f     mov   x,$1f
0bd9: e4 2b     mov   a,$2b
0bdb: d5 ec 17  mov   $17ec+x,a
0bde: e4 2c     mov   a,$2c
0be0: d5 ed 17  mov   $17ed+x,a
0be3: e4 2d     mov   a,$2d
0be5: d5 1c 18  mov   $181c+x,a
0be8: e4 2e     mov   a,$2e
0bea: d5 1d 18  mov   $181d+x,a
0bed: f8 1e     mov   x,$1e
0bef: e4 26     mov   a,$26
0bf1: d5 00 01  mov   $0100+x,a
0bf4: e4 27     mov   a,$27
0bf6: d5 18 01  mov   $0118+x,a
0bf9: e4 28     mov   a,$28
0bfb: d5 30 01  mov   $0130+x,a
0bfe: 6f        ret

0bff: e4 27     mov   a,$27
0c01: 28 09     and   a,#$09
0c03: f0 37     beq   $0c3c
0c05: 13 27 12  bbc0  $27,$0c1a
0c08: f8 1e     mov   x,$1e
0c0a: f5 24 19  mov   a,$1924+x
0c0d: f0 06     beq   $0c15
0c0f: 9c        dec   a
0c10: d5 24 19  mov   $1924+x,a
0c13: 2f 05     bra   $0c1a
0c15: 3f fe 0c  call  $0cfe
0c18: e2 27     set7  $27
0c1a: 73 27 17  bbc3  $27,$0c34
0c1d: f8 1e     mov   x,$1e
0c1f: f5 ac 18  mov   a,$18ac+x
0c22: d0 07     bne   $0c2b
0c24: a3 27 04  bbs5  $27,$0c2b
0c27: 72 27     clr3  $27
0c29: 2f 09     bra   $0c34
0c2b: 9c        dec   a
0c2c: d5 ac 18  mov   $18ac+x,a
0c2f: 3f 2b 0d  call  $0d2b
0c32: e2 27     set7  $27
0c34: f3 27 05  bbc7  $27,$0c3c
0c37: f2 27     clr7  $27
0c39: 3f 4e 0f  call  $0f4e
0c3c: e4 28     mov   a,$28
0c3e: 28 59     and   a,#$59
0c40: f0 7d     beq   $0cbf
0c42: 13 28 12  bbc0  $28,$0c57
0c45: f8 1e     mov   x,$1e
0c47: f5 5c 1a  mov   a,$1a5c+x
0c4a: f0 06     beq   $0c52
0c4c: 9c        dec   a
0c4d: d5 5c 1a  mov   $1a5c+x,a
0c50: 2f 05     bra   $0c57
0c52: 3f 48 0d  call  $0d48
0c55: e2 28     set7  $28
0c57: 73 28 28  bbc3  $28,$0c82
0c5a: f8 1e     mov   x,$1e
0c5c: f5 fc 19  mov   a,$19fc+x
0c5f: f0 1f     beq   $0c80
0c61: 9c        dec   a
0c62: d5 fc 19  mov   $19fc+x,a
0c65: f8 1f     mov   x,$1f
0c67: 60        clrc
0c68: f5 9c 19  mov   a,$199c+x
0c6b: 95 cc 19  adc   a,$19cc+x
0c6e: d5 9c 19  mov   $199c+x,a
0c71: f5 9d 19  mov   a,$199d+x
0c74: 95 cd 19  adc   a,$19cd+x
0c77: 28 7f     and   a,#$7f
0c79: d5 9d 19  mov   $199d+x,a
0c7c: e2 28     set7  $28
0c7e: 2f 02     bra   $0c82
0c80: 72 28     clr3  $28
0c82: d3 28 26  bbc6  $28,$0cab
0c85: f8 1e     mov   x,$1e
0c87: f5 ec 1a  mov   a,$1aec+x
0c8a: f0 1d     beq   $0ca9
0c8c: 9c        dec   a
0c8d: d5 ec 1a  mov   $1aec+x,a
0c90: f8 1f     mov   x,$1f
0c92: 60        clrc
0c93: f5 8c 1a  mov   a,$1a8c+x
0c96: 95 bc 1a  adc   a,$1abc+x
0c99: d5 8c 1a  mov   $1a8c+x,a
0c9c: f5 8d 1a  mov   a,$1a8d+x
0c9f: 95 bd 1a  adc   a,$1abd+x
0ca2: d5 8d 1a  mov   $1a8d+x,a
0ca5: e2 28     set7  $28
0ca7: 2f 0a     bra   $0cb3
0ca9: d2 28     clr6  $28
0cab: 93 28 05  bbc4  $28,$0cb3
0cae: 3f 6b 0d  call  $0d6b
0cb1: e2 28     set7  $28
0cb3: f3 28 09  bbc7  $28,$0cbf
0cb6: f2 28     clr7  $28
0cb8: f8 1e     mov   x,$1e
0cba: f4 98     mov   a,$98+x
0cbc: 3f e2 14  call  $14e2
0cbf: f8 1e     mov   x,$1e
0cc1: 43 26 2d  bbs2  $26,$0cf1
0cc4: 9b c8     dec   $c8+x
0cc6: d0 1f     bne   $0ce7
0cc8: 22 26     set1  $26
0cca: e4 20     mov   a,$20
0ccc: 24 22     and   a,$22
0cce: f0 17     beq   $0ce7
0cd0: 83 26 07  bbs4  $26,$0cda
0cd3: 8f 5c f2  mov   $f2,#$5c
0cd6: c4 f3     mov   $f3,a
0cd8: 2f 0d     bra   $0ce7
0cda: eb 1f     mov   y,$1f
0cdc: e4 21     mov   a,$21
0cde: 08 06     or    a,#$06
0ce0: c4 f2     mov   $f2,a
0ce2: f6 61 01  mov   a,$0161+y
0ce5: c4 f3     mov   $f3,a
0ce7: 9b b0     dec   $b0+x
0ce9: d0 10     bne   $0cfb
0ceb: 38 fc 26  and   $26,#$fc
0cee: 5f 69 0b  jmp   $0b69

0cf1: 9b b0     dec   $b0+x
0cf3: d0 06     bne   $0cfb
0cf5: 38 fc 26  and   $26,#$fc
0cf8: 5f 69 0b  jmp   $0b69

0cfb: 5f 95 0b  jmp   $0b95

0cfe: f8 1f     mov   x,$1f
0d00: f5 c5 18  mov   a,$18c5+x
0d03: fd        mov   y,a
0d04: f5 c4 18  mov   a,$18c4+x
0d07: da 0e     movw  $0e,ya
0d09: ba 2b     movw  ya,$2b
0d0b: 43 27 05  bbs2  $27,$0d13
0d0e: 60        clrc
0d0f: 7a 0e     addw  ya,$0e
0d11: 2f 03     bra   $0d16
0d13: 80        setc
0d14: 9a 0e     subw  ya,$0e
0d16: da 2b     movw  $2b,ya
0d18: f8 1e     mov   x,$1e
0d1a: f5 f4 18  mov   a,$18f4+x
0d1d: 9c        dec   a
0d1e: d0 07     bne   $0d27
0d20: ea 27 40  not1  $0027,2
0d23: f5 0c 19  mov   a,$190c+x
0d26: 1c        asl   a
0d27: d5 f4 18  mov   $18f4+x,a
0d2a: 6f        ret

0d2b: f8 1f     mov   x,$1f
0d2d: f5 7d 18  mov   a,$187d+x
0d30: fd        mov   y,a
0d31: f5 7c 18  mov   a,$187c+x
0d34: 7a 2d     addw  ya,$2d
0d36: 90 02     bcc   $0d3a
0d38: 3a 2b     incw  $2b
0d3a: da 2d     movw  $2d,ya
0d3c: f5 4d 18  mov   a,$184d+x
0d3f: fd        mov   y,a
0d40: f5 4c 18  mov   a,$184c+x
0d43: 7a 2b     addw  ya,$2b
0d45: da 2b     movw  $2b,ya
0d47: 6f        ret

0d48: f4 98     mov   a,$98+x
0d4a: 53 28 06  bbc2  $28,$0d53
0d4d: 60        clrc
0d4e: 95 14 1a  adc   a,$1a14+x
0d51: 2f 04     bra   $0d57
0d53: 80        setc
0d54: b5 14 1a  sbc   a,$1a14+x
0d57: 28 7f     and   a,#$7f
0d59: d4 98     mov   $98+x,a
0d5b: f5 2c 1a  mov   a,$1a2c+x
0d5e: 9c        dec   a
0d5f: d0 06     bne   $0d67
0d61: ea 28 40  not1  $0028,2
0d64: f5 44 1a  mov   a,$1a44+x
0d67: d5 2c 1a  mov   $1a2c+x,a
0d6a: 6f        ret

0d6b: eb 1e     mov   y,$1e
0d6d: f8 1f     mov   x,$1f
0d6f: f5 8d 1a  mov   a,$1a8d+x
0d72: a3 28 0a  bbs5  $28,$0d7f
0d75: 60        clrc
0d76: 96 34 1b  adc   a,$1b34+y
0d79: 90 0c     bcc   $0d87
0d7b: e8 ff     mov   a,#$ff
0d7d: 2f 08     bra   $0d87
0d7f: 80        setc
0d80: b6 34 1b  sbc   a,$1b34+y
0d83: b0 02     bcs   $0d87
0d85: e8 00     mov   a,#$00
0d87: d5 8d 1a  mov   $1a8d+x,a
0d8a: f6 04 1b  mov   a,$1b04+y
0d8d: 9c        dec   a
0d8e: d0 0d     bne   $0d9d
0d90: ea 28 a0  not1  $0028,5
0d93: f6 1c 1b  mov   a,$1b1c+y
0d96: 30 03     bmi   $0d9b
0d98: 1c        asl   a
0d99: 2f 02     bra   $0d9d
0d9b: 28 7f     and   a,#$7f
0d9d: d6 04 1b  mov   $1b04+y,a
0da0: 6f        ret

0da1: 8d 00     mov   y,#$00
0da3: cb 08     mov   $08,y
0da5: cd 0e     mov   x,#$0e
0da7: 9e        div   ya,x
0da8: c4 06     mov   $06,a
0daa: cb 09     mov   $09,y
0dac: ad 0d     cmp   y,#$0d
0dae: f0 06     beq   $0db6
0db0: ad 0c     cmp   y,#$0c
0db2: f0 07     beq   $0dbb
0db4: 2f 0b     bra   $0dc1
0db6: 02 26     set0  $26
0db8: 5f 7a 0e  jmp   $0e7a

0dbb: 18 03 26  or    $26,#$03
0dbe: 5f 7a 0e  jmp   $0e7a

0dc1: 02 26     set0  $26
0dc3: eb 1e     mov   y,$1e
0dc5: b3 26 05  bbc5  $26,$0dcd
0dc8: 3f c4 0f  call  $0fc4
0dcb: 2f 23     bra   $0df0
0dcd: f6 a4 17  mov   a,$17a4+y
0dd0: 8d 0c     mov   y,#$0c
0dd2: cf        mul   ya
0dd3: 60        clrc
0dd4: 84 09     adc   a,$09
0dd6: c4 09     mov   $09,a
0dd8: eb 1e     mov   y,$1e
0dda: f6 bc 17  mov   a,$17bc+y
0ddd: c4 07     mov   $07,a
0ddf: 2e 09 03  cbne  $09,$0de5
0de2: 43 26 77  bbs2  $26,$0e5c
0de5: e4 09     mov   a,$09
0de7: d6 bc 17  mov   $17bc+y,a
0dea: f6 0c 19  mov   a,$190c+y
0ded: d6 f4 18  mov   $18f4+y,a
0df0: f6 84 19  mov   a,$1984+y
0df3: f0 0f     beq   $0e04
0df5: c4 0a     mov   $0a,a
0df7: 80        setc
0df8: e4 09     mov   a,$09
0dfa: a4 07     sbc   a,$07
0dfc: c4 0b     mov   $0b,a
0dfe: 3f d2 12  call  $12d2
0e01: fa 07 09  mov   ($09),($07)
0e04: f8 1f     mov   x,$1f
0e06: f5 91 01  mov   a,$0191+x
0e09: fd        mov   y,a
0e0a: f5 90 01  mov   a,$0190+x
0e0d: 7a 08     addw  ya,$08
0e0f: da 2b     movw  $2b,ya
0e11: f5 55 19  mov   a,$1955+x
0e14: fd        mov   y,a
0e15: f5 54 19  mov   a,$1954+x
0e18: 7a 2b     addw  ya,$2b
0e1a: da 2b     movw  $2b,ya
0e1c: 3f 4e 0f  call  $0f4e
0e1f: f8 1e     mov   x,$1e
0e21: 43 26 38  bbs2  $26,$0e5c
0e24: e4 20     mov   a,$20
0e26: 24 22     and   a,$22
0e28: 04 25     or    a,$25
0e2a: c4 25     mov   $25,a
0e2c: 8f 5c f2  mov   $f2,#$5c
0e2f: 8f 00 f3  mov   $f3,#$00
0e32: f5 48 01  mov   a,$0148+x
0e35: d4 98     mov   $98+x,a
0e37: 13 27 0c  bbc0  $27,$0e46
0e3a: aa 27 20  mov1  c,$0027,1
0e3d: ca 27 40  mov1  $0027,2,c
0e40: f5 3c 19  mov   a,$193c+x
0e43: d5 24 19  mov   $1924+x,a
0e46: 13 28 13  bbc0  $28,$0e5c
0e49: 52 28     clr2  $28
0e4b: f5 44 1a  mov   a,$1a44+x
0e4e: d5 2c 1a  mov   $1a2c+x,a
0e51: f5 74 1a  mov   a,$1a74+x
0e54: d5 5c 1a  mov   $1a5c+x,a
0e57: f4 98     mov   a,$98+x
0e59: 3f e2 14  call  $14e2
0e5c: e4 20     mov   a,$20
0e5e: 24 22     and   a,$22
0e60: f0 18     beq   $0e7a
0e62: e4 24     mov   a,$24
0e64: 24 20     and   a,$20
0e66: f0 03     beq   $0e6b
0e68: 3f a4 14  call  $14a4
0e6b: 93 26 0c  bbc4  $26,$0e7a
0e6e: e4 21     mov   a,$21
0e70: 08 06     or    a,#$06
0e72: c4 f2     mov   $f2,a
0e74: e4 f3     mov   a,$f3
0e76: 28 e0     and   a,#$e0
0e78: c4 f3     mov   $f3,a
0e7a: f8 1e     mov   x,$1e
0e7c: 78 0d 06  cmp   $06,#$0d
0e7f: f0 0a     beq   $0e8b
0e81: eb 06     mov   y,$06
0e83: f6 5d 17  mov   a,$175d+y
0e86: fd        mov   y,a
0e87: db b0     mov   $b0+x,y
0e89: 2f 09     bra   $0e94
0e8b: 8d 00     mov   y,#$00
0e8d: f7 29     mov   a,($29)+y
0e8f: 3a 29     incw  $29
0e91: fd        mov   y,a
0e92: d4 b0     mov   $b0+x,a
0e94: f5 d4 17  mov   a,$17d4+x
0e97: f0 0a     beq   $0ea3
0e99: 68 0f     cmp   a,#$0f
0e9b: f0 09     beq   $0ea6
0e9d: 9f        xcn   a
0e9e: cf        mul   ya
0e9f: dd        mov   a,y
0ea0: bc        inc   a
0ea1: 2f 09     bra   $0eac
0ea3: dd        mov   a,y
0ea4: 2f 06     bra   $0eac
0ea6: dd        mov   a,y
0ea7: 68 01     cmp   a,#$01
0ea9: f0 01     beq   $0eac
0eab: 9c        dec   a
0eac: d4 c8     mov   $c8+x,a
0eae: 23 26 21  bbs1  $26,$0ed2
0eb1: f5 ac 1b  mov   a,$1bac+x
0eb4: c4 06     mov   $06,a
0eb6: ba 29     movw  ya,$29
0eb8: da 00     movw  $00,ya
0eba: 8d 00     mov   y,#$00
0ebc: f7 00     mov   a,($00)+y
0ebe: 68 c4     cmp   a,#$c4
0ec0: b0 1a     bcs   $0edc
0ec2: cd 0e     mov   x,#$0e
0ec4: 8d 00     mov   y,#$00
0ec6: 9e        div   ya,x
0ec7: ad 0d     cmp   y,#$0d
0ec9: f0 0c     beq   $0ed7
0ecb: ad 0c     cmp   y,#$0c
0ecd: f0 03     beq   $0ed2
0ecf: 63 26 05  bbs3  $26,$0ed7
0ed2: 52 26     clr2  $26
0ed4: 5f 89 0b  jmp   $0b89

0ed7: 42 26     set2  $26
0ed9: 5f 89 0b  jmp   $0b89

0edc: 80        setc
0edd: a8 c4     sbc   a,#$c4
0edf: 5d        mov   x,a
0ee0: f5 21 17  mov   a,$1721+x
0ee3: c4 04     mov   $04,a
0ee5: 9f        xcn   a
0ee6: 28 0f     and   a,#$0f
0ee8: 1c        asl   a
0ee9: 5d        mov   x,a
0eea: 1f 37 0f  jmp   ($0f37+x)

0eed: 60        clrc
0eee: 38 07 04  and   $04,#$07
0ef1: dd        mov   a,y
0ef2: 84 04     adc   a,$04
0ef4: fd        mov   y,a
0ef5: 2f c5     bra   $0ebc
0ef7: f8 1f     mov   x,$1f
0ef9: f5 7d 1b  mov   a,$1b7d+x
0efc: f0 d4     beq   $0ed2
0efe: fd        mov   y,a
0eff: f5 7c 1b  mov   a,$1b7c+x
0f02: da 00     movw  $00,ya
0f04: 2f b4     bra   $0eba
0f06: e4 06     mov   a,$06
0f08: 3f d6 15  call  $15d6
0f0b: f5 c4 1b  mov   a,$1bc4+x
0f0e: f0 22     beq   $0f32
0f10: f5 55 1c  mov   a,$1c55+x
0f13: fd        mov   y,a
0f14: f5 54 1c  mov   a,$1c54+x
0f17: da 00     movw  $00,ya
0f19: 2f 9f     bra   $0eba
0f1b: e4 06     mov   a,$06
0f1d: 3f d6 15  call  $15d6
0f20: f5 c4 1b  mov   a,$1bc4+x
0f23: d0 0f     bne   $0f34
0f25: f5 e5 1c  mov   a,$1ce5+x
0f28: fd        mov   y,a
0f29: f5 e4 1c  mov   a,$1ce4+x
0f2c: da 00     movw  $00,ya
0f2e: 8b 06     dec   $06
0f30: 2f 88     bra   $0eba
0f32: 8b 06     dec   $06
0f34: fc        inc   y
0f35: 2f 85     bra   $0ebc
0f37: ed        notc
0f38: 0e d7 0e  tset1 $0ed7
0f3b: d2 0e     clr6  $0e
0f3d: f7 0e     mov   a,($0e)+y
0f3f: 06        or    a,(x)
0f40: 0f        brk
0f41: 1b 0f     asl   $0f+x
0f43: f8 1f     mov   x,$1f
0f45: f5 ed 17  mov   a,$17ed+x
0f48: fd        mov   y,a
0f49: f5 ec 17  mov   a,$17ec+x
0f4c: da 2b     movw  $2b,ya
0f4e: e4 20     mov   a,$20
0f50: 24 22     and   a,$22
0f52: f0 6f     beq   $0fc3
0f54: ba 2b     movw  ya,$2b
0f56: 7a 30     addw  ya,$30
0f58: da 02     movw  $02,ya
0f5a: cd 0c     mov   x,#$0c
0f5c: 8d 00     mov   y,#$00
0f5e: e4 03     mov   a,$03
0f60: 60        clrc
0f61: 9e        div   ya,x
0f62: c4 08     mov   $08,a
0f64: dd        mov   a,y
0f65: 1c        asl   a
0f66: 5d        mov   x,a
0f67: f5 6b 17  mov   a,$176b+x
0f6a: fd        mov   y,a
0f6b: f5 6a 17  mov   a,$176a+x
0f6e: da 0a     movw  $0a,ya
0f70: da 04     movw  $04,ya
0f72: f5 6d 17  mov   a,$176d+x
0f75: fd        mov   y,a
0f76: f5 6c 17  mov   a,$176c+x
0f79: 9a 0a     subw  ya,$0a
0f7b: cb 0b     mov   $0b,y
0f7d: eb 02     mov   y,$02
0f7f: cf        mul   ya
0f80: 8f 00 0d  mov   $0d,#$00
0f83: cb 0c     mov   $0c,y
0f85: eb 02     mov   y,$02
0f87: e4 0b     mov   a,$0b
0f89: cf        mul   ya
0f8a: 7a 0c     addw  ya,$0c
0f8c: 7a 04     addw  ya,$04
0f8e: da 0c     movw  $0c,ya
0f90: e4 08     mov   a,$08
0f92: 28 07     and   a,#$07
0f94: c4 0a     mov   $0a,a
0f96: 1c        asl   a
0f97: 84 0a     adc   a,$0a
0f99: c5 9e 0f  mov   $0f9e,a
0f9c: dd        mov   a,y
0f9d: 2f 0c     bra   $0fab
0f9f: 5c        lsr   a
0fa0: 6b 0c     ror   $0c
0fa2: 5c        lsr   a
0fa3: 6b 0c     ror   $0c
0fa5: 5c        lsr   a
0fa6: 6b 0c     ror   $0c
0fa8: 5c        lsr   a
0fa9: 6b 0c     ror   $0c
0fab: 5c        lsr   a
0fac: 6b 0c     ror   $0c
0fae: 5c        lsr   a
0faf: 6b 0c     ror   $0c
0fb1: 5c        lsr   a
0fb2: 6b 0c     ror   $0c
0fb4: fd        mov   y,a
0fb5: e4 21     mov   a,$21
0fb7: 08 02     or    a,#$02
0fb9: c4 f2     mov   $f2,a
0fbb: fa 0c f3  mov   ($f3),($0c)
0fbe: bc        inc   a
0fbf: c4 f2     mov   $f2,a
0fc1: cb f3     mov   $f3,y
0fc3: 6f        ret

0fc4: e4 09     mov   a,$09
0fc6: d6 bc 17  mov   $17bc+y,a
0fc9: 1c        asl   a
0fca: 1c        asl   a
0fcb: 5d        mov   x,a
0fcc: c4 0a     mov   $0a,a
0fce: f4 68     mov   a,$68+x
0fd0: d6 d8 01  mov   $01d8+y,a
0fd3: 3f 32 12  call  $1232
0fd6: f8 0a     mov   x,$0a
0fd8: f4 6b     mov   a,$6b+x
0fda: d6 8d 1a  mov   $1a8d+y,a
0fdd: eb 1e     mov   y,$1e
0fdf: f4 6a     mov   a,$6a+x
0fe1: d6 48 01  mov   $0148+y,a
0fe4: f4 69     mov   a,$69+x
0fe6: c4 09     mov   $09,a
0fe8: 6f        ret

0fe9: 80        setc
0fea: a8 c4     sbc   a,#$c4
0fec: 2d        push  a
0fed: 5d        mov   x,a
0fee: f5 21 17  mov   a,$1721+x
0ff1: 28 07     and   a,#$07
0ff3: c4 06     mov   $06,a
0ff5: 8d 00     mov   y,#$00
0ff7: cd 00     mov   x,#$00
0ff9: 8b 06     dec   $06
0ffb: f0 09     beq   $1006
0ffd: f7 29     mov   a,($29)+y
0fff: d4 0e     mov   $0e+x,a
1001: 3a 29     incw  $29
1003: 3d        inc   x
1004: 2f f3     bra   $0ff9
1006: ae        pop   a
1007: 1c        asl   a
1008: 5d        mov   x,a
1009: 60        clrc
100a: eb 1e     mov   y,$1e
100c: 1f a9 16  jmp   ($16a9+x)

; vcmd c4,e1,ca-cb,fc-fd - octave up
100f: f6 a4 17  mov   a,$17a4+y
1012: bc        inc   a
1013: 2f 08     bra   $101d

; vcmd c5 - octave down
1015: f6 a4 17  mov   a,$17a4+y
1018: 9c        dec   a
1019: 2f 02     bra   $101d

; vcmd c6 - set octave
101b: e4 0e     mov   a,$0e
101d: d6 a4 17  mov   $17a4+y,a
1020: 6f        ret

; vcmd c7 - nop
1021: 6f        ret

; vcmd c8 - set noise freq
1022: e4 0e     mov   a,$0e
1024: 2f 05     bra   $102b

; vcmd df - change noise freq
1026: e4 0e     mov   a,$0e
1028: 60        clrc
1029: 84 38     adc   a,$38
102b: 28 1f     and   a,#$1f
102d: 38 e0 38  and   $38,#$e0
1030: 04 38     or    a,$38
1032: c4 38     mov   $38,a
1034: 8f 6c f2  mov   $f2,#$6c
1037: c4 f3     mov   $f3,a
; vcmd c9 - noise on
1039: e3 26 05  bbs7  $26,$1041
103c: 09 20 59  or    ($59),($20)
103f: 2f 16     bra   $1057
1041: 09 20 4c  or    ($4c),($20)
1044: 2f 11     bra   $1057

; vcmd ca - noise off
1046: e4 20     mov   a,$20
1048: 48 ff     eor   a,#$ff
104a: e3 26 06  bbs7  $26,$1053
104d: 24 59     and   a,$59
104f: c4 59     mov   $59,a
1051: 2f 04     bra   $1057
1053: 24 4c     and   a,$4c
1055: c4 4c     mov   $4c,a
1057: 8f 3d f2  mov   $f2,#$3d
105a: e4 4a     mov   a,$4a
105c: 48 ff     eor   a,#$ff
105e: 24 59     and   a,$59
1060: 04 4c     or    a,$4c
1062: c4 f3     mov   $f3,a
1064: 6f        ret

; vcmd cb - pitchmod on
1065: e3 26 05  bbs7  $26,$106d
1068: 09 20 5a  or    ($5a),($20)
106b: 2f 16     bra   $1083
106d: 09 20 4d  or    ($4d),($20)
1070: 2f 11     bra   $1083

; vcmd cc - pitchmod off
1072: e4 20     mov   a,$20
1074: 48 ff     eor   a,#$ff
1076: e3 26 06  bbs7  $26,$107f
1079: 24 5a     and   a,$5a
107b: c4 5a     mov   $5a,a
107d: 2f 04     bra   $1083
107f: 24 4d     and   a,$4d
1081: c4 4d     mov   $4d,a
1083: 8f 2d f2  mov   $f2,#$2d
1086: e4 4a     mov   a,$4a
1088: 48 ff     eor   a,#$ff
108a: 24 5a     and   a,$5a
108c: 04 4d     or    a,$4d
108e: c4 f3     mov   $f3,a
1090: 6f        ret

; vcmd cd
1091: e4 0e     mov   a,$0e
1093: 3f e9 04  call  $04e9
1096: 2f 07     bra   $109f

; vcmd ce
1098: e4 0e     mov   a,$0e
109a: 3f e9 04  call  $04e9
109d: bc        inc   a
109e: bc        inc   a
109f: da 00     movw  $00,ya
10a1: 8d 00     mov   y,#$00
10a3: f7 00     mov   a,($00)+y
10a5: c4 29     mov   $29,a
10a7: fc        inc   y
10a8: f7 00     mov   a,($00)+y
10aa: c4 2a     mov   $2a,a
10ac: 6f        ret

; vcmd cf - transpose (absolute, signed, 16 = 1 semitone)
10ad: e4 0e     mov   a,$0e
10af: 30 05     bmi   $10b6
10b1: 9f        xcn   a
10b2: 28 0f     and   a,#$0f
10b4: 2f 03     bra   $10b9
10b6: 9f        xcn   a
10b7: 08 f0     or    a,#$f0
10b9: eb 1f     mov   y,$1f
10bb: d6 55 19  mov   $1955+y,a
10be: e4 0e     mov   a,$0e
10c0: 9f        xcn   a
10c1: 28 f0     and   a,#$f0
10c3: d6 54 19  mov   $1954+y,a
10c6: 6f        ret

; vcmd d0 - end/return
10c7: f8 1f     mov   x,$1f
10c9: f5 7c 1b  mov   a,$1b7c+x
10cc: c4 29     mov   $29,a
10ce: f5 7d 1b  mov   a,$1b7d+x
10d1: c4 2a     mov   $2a,a
10d3: f0 07     beq   $10dc
10d5: e3 26 03  bbs7  $26,$10db
10d8: 09 20 65  or    ($65),($20)
10db: 6f        ret

10dc: e4 20     mov   a,$20
10de: 48 ff     eor   a,#$ff
10e0: 24 23     and   a,$23
10e2: c4 23     mov   $23,a
10e4: f3 26 02  bbc7  $26,$10e9
10e7: c4 4a     mov   $4a,a
10e9: 8f 5c f2  mov   $f2,#$5c
10ec: fa 20 f3  mov   ($f3),($20)
10ef: 3f 72 10  call  $1072
10f2: 3f 46 10  call  $1046
10f5: 3f 85 14  call  $1485
10f8: 6f        ret

; vcmd d1 - tempo
10f9: e4 0e     mov   a,$0e
10fb: e3 26 08  bbs7  $26,$1106
10fe: c4 5d     mov   $5d,a
1100: 60        clrc
1101: 84 5e     adc   a,$5e
1103: c4 fa     mov   $fa,a
1105: 6f        ret

1106: c4 fb     mov   $fb,a
1108: c4 4f     mov   $4f,a
110a: 6f        ret

; vcmd d2 - set timer 1 freq
110b: fa 0e 67  mov   ($67),($0e)
110e: 6f        ret

; vcmd d3 - change timer 1 freq
110f: 60        clrc
1110: 89 0e 67  adc   ($67),($0e)
1113: 6f        ret

; vcmd d4 - repeat start
1114: f6 a4 17  mov   a,$17a4+y
1117: c4 06     mov   $06,a
1119: f6 ac 1b  mov   a,$1bac+y
111c: bc        inc   a
111d: d6 ac 1b  mov   $1bac+y,a
1120: 3f d3 15  call  $15d3
1123: e4 0e     mov   a,$0e
1125: 9c        dec   a
1126: d5 c4 1b  mov   $1bc4+x,a
1129: e4 06     mov   a,$06
112b: d5 c5 1b  mov   $1bc5+x,a
112e: e4 29     mov   a,$29
1130: d5 54 1c  mov   $1c54+x,a
1133: e4 2a     mov   a,$2a
1135: d5 55 1c  mov   $1c55+x,a
1138: 6f        ret

; vcmd d5 - repeat end
1139: 3f d3 15  call  $15d3
113c: f5 c4 1b  mov   a,$1bc4+x
113f: f0 3e     beq   $117f
1141: 9c        dec   a
1142: d5 c4 1b  mov   $1bc4+x,a
1145: 2f 0a     bra   $1151
1147: 3f d3 15  call  $15d3
114a: f5 c4 1b  mov   a,$1bc4+x
114d: 64 56     cmp   a,$56
114f: f0 2e     beq   $117f
1151: f5 c5 1b  mov   a,$1bc5+x
1154: d6 a4 17  mov   $17a4+y,a
1157: e4 29     mov   a,$29
1159: d5 e4 1c  mov   $1ce4+x,a
115c: e4 2a     mov   a,$2a
115e: d5 e5 1c  mov   $1ce5+x,a
1161: f5 55 1c  mov   a,$1c55+x
1164: fd        mov   y,a
1165: f5 54 1c  mov   a,$1c54+x
1168: da 29     movw  $29,ya
116a: 6f        ret

; vcmd d6 - repeat break
116b: 3f d3 15  call  $15d3
116e: f5 c4 1b  mov   a,$1bc4+x
1171: f0 01     beq   $1174
1173: 6f        ret

1174: f5 e5 1c  mov   a,$1ce5+x
1177: fd        mov   y,a
1178: f5 e4 1c  mov   a,$1ce4+x
117b: da 29     movw  $29,ya
117d: eb 1e     mov   y,$1e
117f: f6 ac 1b  mov   a,$1bac+y
1182: 9c        dec   a
1183: d6 ac 1b  mov   $1bac+y,a
1186: 6f        ret

; vcmd d7 - set loop point
1187: f8 1f     mov   x,$1f
1189: e4 29     mov   a,$29
118b: d5 7c 1b  mov   $1b7c+x,a
118e: e4 2a     mov   a,$2a
1190: d5 7d 1b  mov   $1b7d+x,a
1193: 6f        ret

; vcmd d8 - default ADSR
1194: f6 d8 01  mov   a,$01d8+y
1197: 5d        mov   x,a
1198: f5 80 56  mov   a,$5680+x
119b: 1c        asl   a
119c: 5d        mov   x,a
119d: eb 1f     mov   y,$1f
119f: f5 40 57  mov   a,$5740+x
11a2: d6 60 01  mov   $0160+y,a
11a5: f5 41 57  mov   a,$5741+x
11a8: d6 61 01  mov   $0161+y,a
11ab: e4 20     mov   a,$20
11ad: 24 22     and   a,$22
11af: f0 15     beq   $11c6
11b1: cd f2     mov   x,#$f2
11b3: e4 21     mov   a,$21
11b5: 08 05     or    a,#$05
11b7: af        mov   (x)+,a
11b8: f6 60 01  mov   a,$0160+y
11bb: c6        mov   (x),a
11bc: e4 21     mov   a,$21
11be: 08 06     or    a,#$06
11c0: 1d        dec   x
11c1: af        mov   (x)+,a
11c2: f6 61 01  mov   a,$0161+y
11c5: c6        mov   (x),a
11c6: 6f        ret

; vcmd d9
11c7: e4 21     mov   a,$21
11c9: 08 05     or    a,#$05
11cb: c4 f2     mov   $f2,a
11cd: eb 1f     mov   y,$1f
11cf: f6 60 01  mov   a,$0160+y
11d2: 28 f0     and   a,#$f0
11d4: 04 0e     or    a,$0e
11d6: 2f 42     bra   $121a

; vcmd da
11d8: e4 21     mov   a,$21
11da: 08 05     or    a,#$05
11dc: c4 f2     mov   $f2,a
11de: eb 1f     mov   y,$1f
11e0: f6 60 01  mov   a,$0160+y
11e3: 28 8f     and   a,#$8f
11e5: 9f        xcn   a
11e6: 04 0e     or    a,$0e
11e8: 9f        xcn   a
11e9: 2f 2f     bra   $121a

; vcmd db
11eb: e4 21     mov   a,$21
11ed: 08 06     or    a,#$06
11ef: c4 f2     mov   $f2,a
11f1: eb 1f     mov   y,$1f
11f3: fc        inc   y
11f4: f6 60 01  mov   a,$0160+y
11f7: 28 1f     and   a,#$1f
11f9: c4 06     mov   $06,a
11fb: e4 0e     mov   a,$0e
11fd: 38 1f 06  and   $06,#$1f
1200: 9f        xcn   a
1201: 1c        asl   a
1202: 04 06     or    a,$06
1204: 2f 14     bra   $121a

; vcmd dc
1206: e4 21     mov   a,$21
1208: 08 06     or    a,#$06
120a: c4 f2     mov   $f2,a
120c: eb 1f     mov   y,$1f
120e: fc        inc   y
120f: f6 60 01  mov   a,$0160+y
1212: 28 e0     and   a,#$e0
1214: 04 0e     or    a,$0e
1216: 92 26     clr4  $26
1218: 2f 00     bra   $121a
121a: d6 60 01  mov   $0160+y,a
121d: fd        mov   y,a
121e: e4 20     mov   a,$20
1220: 24 22     and   a,$22
1222: f0 02     beq   $1226
1224: cb f3     mov   $f3,y
1226: 6f        ret

; vcmd dd - duration rate
1227: e4 0e     mov   a,$0e
1229: d6 d4 17  mov   $17d4+y,a
122c: 6f        ret

; vcmd de - set instrument
122d: e4 0e     mov   a,$0e
122f: d6 d8 01  mov   $01d8+y,a
1232: 5d        mov   x,a
1233: f5 80 56  mov   a,$5680+x
1236: 1c        asl   a
1237: 5d        mov   x,a
1238: f5 01 57  mov   a,$5701+x
123b: d6 48 01  mov   $0148+y,a
123e: eb 1f     mov   y,$1f
1240: f5 40 57  mov   a,$5740+x
1243: d6 60 01  mov   $0160+y,a
1246: f5 41 57  mov   a,$5741+x
1249: d6 61 01  mov   $0161+y,a
124c: f5 80 57  mov   a,$5780+x
124f: d6 90 01  mov   $0190+y,a
1252: f5 81 57  mov   a,$5781+x
1255: d6 91 01  mov   $0191+y,a
1258: 09 20 24  or    ($24),($20)
125b: 92 26     clr4  $26
125d: 6f        ret

; vcmd e0
125e: eb 1f     mov   y,$1f
1260: f6 61 01  mov   a,$0161+y
1263: 28 e0     and   a,#$e0
1265: 04 0e     or    a,$0e
1267: d6 61 01  mov   $0161+y,a
126a: 82 26     set4  $26
126c: 6f        ret

; vcmd e2 - volume
126d: e4 0e     mov   a,$0e
126f: f8 1f     mov   x,$1f
1271: d5 9d 19  mov   $199d+x,a
1274: e8 00     mov   a,#$00
1276: d5 9c 19  mov   $199c+x,a
1279: f6 48 01  mov   a,$0148+y
127c: 5f e2 14  jmp   $14e2

; vcmd e3 - change volume
127f: e4 0e     mov   a,$0e
1281: f8 1f     mov   x,$1f
1283: 95 9d 19  adc   a,$199d+x
1286: 28 7f     and   a,#$7f
1288: d5 9d 19  mov   $199d+x,a
128b: f6 48 01  mov   a,$0148+y
128e: 5f e2 14  jmp   $14e2

; vcmd e4 - volume fade
1291: e4 0e     mov   a,$0e
1293: f0 36     beq   $12cb
1295: c4 0c     mov   $0c,a
1297: d6 fc 19  mov   $19fc+y,a
129a: e4 0f     mov   a,$0f
129c: f8 1f     mov   x,$1f
129e: 80        setc
129f: b5 9d 19  sbc   a,$199d+x
12a2: f0 27     beq   $12cb
12a4: 0d        push  psw
12a5: b0 03     bcs   $12aa
12a7: 48 ff     eor   a,#$ff
12a9: bc        inc   a
12aa: 8f 00 0a  mov   $0a,#$00
12ad: c4 0b     mov   $0b,a
12af: 3f df 15  call  $15df
12b2: 8e        pop   psw
12b3: b0 08     bcs   $12bd
12b5: 58 ff 0a  eor   $0a,#$ff
12b8: 58 ff 0b  eor   $0b,#$ff
12bb: 3a 0a     incw  $0a
12bd: f8 1f     mov   x,$1f
12bf: e4 0b     mov   a,$0b
12c1: d5 cd 19  mov   $19cd+x,a
12c4: e4 0a     mov   a,$0a
12c6: d5 cc 19  mov   $19cc+x,a
12c9: 62 28     set3  $28
12cb: 6f        ret

; vcmd e5 - portamento
12cc: fa 0e 0a  mov   ($0a),($0e)
12cf: fa 0f 0b  mov   ($0b),($0f)
12d2: e4 0a     mov   a,$0a
12d4: f0 4f     beq   $1325
12d6: d6 ac 18  mov   $18ac+y,a
12d9: 5d        mov   x,a
12da: e4 0b     mov   a,$0b
12dc: f0 47     beq   $1325
12de: 0d        push  psw
12df: 10 03     bpl   $12e4
12e1: 48 ff     eor   a,#$ff
12e3: bc        inc   a
12e4: 8d 00     mov   y,#$00
12e6: 9e        div   ya,x
12e7: c4 0b     mov   $0b,a
12e9: e8 00     mov   a,#$00
12eb: 9e        div   ya,x
12ec: c4 0a     mov   $0a,a
12ee: e8 00     mov   a,#$00
12f0: 9e        div   ya,x
12f1: c4 0d     mov   $0d,a
12f3: e8 00     mov   a,#$00
12f5: 9e        div   ya,x
12f6: c4 0c     mov   $0c,a
12f8: 8e        pop   psw
12f9: 10 12     bpl   $130d
12fb: 58 ff 0c  eor   $0c,#$ff
12fe: 58 ff 0d  eor   $0d,#$ff
1301: 58 ff 0a  eor   $0a,#$ff
1304: 58 ff 0b  eor   $0b,#$ff
1307: 3a 0c     incw  $0c
1309: d0 02     bne   $130d
130b: 3a 0a     incw  $0a
130d: f8 1f     mov   x,$1f
130f: e4 0a     mov   a,$0a
1311: d5 4c 18  mov   $184c+x,a
1314: e4 0b     mov   a,$0b
1316: d5 4d 18  mov   $184d+x,a
1319: e4 0c     mov   a,$0c
131b: d5 7c 18  mov   $187c+x,a
131e: e4 0d     mov   a,$0d
1320: d5 7d 18  mov   $187d+x,a
1323: 62 27     set3  $27
1325: 6f        ret

; vcmd e6 - portamento toggle
1326: a3 27 03  bbs5  $27,$132c
1329: a2 27     set5  $27
132b: 6f        ret

132c: b2 27     clr5  $27
132e: 72 27     clr3  $27
1330: 6f        ret

; vcmd e7 - panpot
1331: 92 28     clr4  $28
1333: e4 0e     mov   a,$0e
1335: f8 1f     mov   x,$1f
1337: d5 8d 1a  mov   $1a8d+x,a
133a: f6 48 01  mov   a,$0148+y
133d: 5f e2 14  jmp   $14e2

; vcmd e8 - panpot fade
1340: e4 0e     mov   a,$0e
1342: f0 3b     beq   $137f
1344: c4 0c     mov   $0c,a
1346: d6 ec 1a  mov   $1aec+y,a
1349: e4 0f     mov   a,$0f
134b: f8 1f     mov   x,$1f
134d: 80        setc
134e: b5 8d 1a  sbc   a,$1a8d+x
1351: f0 2c     beq   $137f
1353: 0d        push  psw
1354: b0 03     bcs   $1359
1356: 48 ff     eor   a,#$ff
1358: bc        inc   a
1359: c4 0b     mov   $0b,a
135b: 8f 00 0a  mov   $0a,#$00
135e: 3f df 15  call  $15df
1361: 8e        pop   psw
1362: b0 08     bcs   $136c
1364: 58 ff 0a  eor   $0a,#$ff
1367: 58 ff 0b  eor   $0b,#$ff
136a: 3a 0a     incw  $0a
136c: f8 1f     mov   x,$1f
136e: e4 0b     mov   a,$0b
1370: d5 bd 1a  mov   $1abd+x,a
1373: e4 0a     mov   a,$0a
1375: d5 bc 1a  mov   $1abc+x,a
1378: e8 80     mov   a,#$80
137a: d5 8c 1a  mov   $1a8c+x,a
137d: c2 28     set6  $28
137f: 6f        ret

; vcmd e9 - panpot LFO on
1380: b2 28     clr5  $28
1382: e4 0e     mov   a,$0e
1384: d6 1c 1b  mov   $1b1c+y,a
1387: 28 7f     and   a,#$7f
1389: d6 04 1b  mov   $1b04+y,a
138c: e4 0f     mov   a,$0f
138e: 10 05     bpl   $1395
1390: 48 ff     eor   a,#$ff
1392: bc        inc   a
1393: a2 28     set5  $28
1395: d6 34 1b  mov   $1b34+y,a
1398: 82 28     set4  $28
139a: 6f        ret

139b: 6f        ret

; vcmd ec - transpose (absolute, signed, 4 = 1 semitone)
139c: 3f c2 13  call  $13c2
139f: f8 1f     mov   x,$1f
13a1: e4 06     mov   a,$06
13a3: d5 54 19  mov   $1954+x,a
13a6: e4 07     mov   a,$07
13a8: d5 55 19  mov   $1955+x,a
13ab: 6f        ret

; vcmd ed - transpose (relative, signed, 4 = 1 semitone)
13ac: 3f c2 13  call  $13c2
13af: f8 1f     mov   x,$1f
13b1: f5 55 19  mov   a,$1955+x
13b4: fd        mov   y,a
13b5: f5 54 19  mov   a,$1954+x
13b8: 7a 06     addw  ya,$06
13ba: d5 54 19  mov   $1954+x,a
13bd: dd        mov   a,y
13be: d5 55 19  mov   $1955+x,a
13c1: 6f        ret

13c2: 8f 00 06  mov   $06,#$00
13c5: e4 0e     mov   a,$0e
13c7: 30 08     bmi   $13d1
13c9: 5c        lsr   a
13ca: 6b 06     ror   $06
13cc: 5c        lsr   a
13cd: 6b 06     ror   $06
13cf: 2f 08     bra   $13d9
13d1: 80        setc
13d2: 7c        ror   a
13d3: 6b 06     ror   $06
13d5: 80        setc
13d6: 7c        ror   a
13d7: 6b 06     ror   $06
13d9: c4 07     mov   $07,a
13db: e8 ff     mov   a,#$ff
13dd: d6 bc 17  mov   $17bc+y,a
13e0: 6f        ret

; vcmd f6
13e1: e4 0e     mov   a,$0e
13e3: d6 84 19  mov   $1984+y,a
13e6: 6f        ret

; vcmd ee - rhythm kit on
13e7: a2 26     set5  $26
13e9: 6f        ret

; vcmd ef - rhythm kit off
13ea: b2 26     clr5  $26
13ec: 6f        ret

; vcmd f0 - vibrato on
13ed: 32 27     clr1  $27
13ef: e4 0e     mov   a,$0e
13f1: f0 2d     beq   $1420
13f3: d6 0c 19  mov   $190c+y,a
13f6: d6 f4 18  mov   $18f4+y,a
13f9: c4 0c     mov   $0c,a
13fb: e4 0f     mov   a,$0f
13fd: 10 05     bpl   $1404
13ff: 48 ff     eor   a,#$ff
1401: bc        inc   a
1402: 22 27     set1  $27
1404: 60        clrc
1405: 88 04     adc   a,#$04
1407: fd        mov   y,a
1408: cf        mul   ya
1409: da 0a     movw  $0a,ya
140b: 4b 0b     lsr   $0b
140d: 6b 0a     ror   $0a
140f: 3f df 15  call  $15df
1412: f8 1f     mov   x,$1f
1414: e4 0a     mov   a,$0a
1416: d5 c4 18  mov   $18c4+x,a
1419: e4 0b     mov   a,$0b
141b: d5 c5 18  mov   $18c5+x,a
141e: 02 27     set0  $27
1420: eb 1e     mov   y,$1e
1422: e8 00     mov   a,#$00
1424: d6 3c 19  mov   $193c+y,a
1427: 6f        ret

; vcmd f1 - vibrato on (w/delay)
1428: 3f ed 13  call  $13ed
142b: e4 10     mov   a,$10
142d: d6 3c 19  mov   $193c+y,a
1430: 6f        ret

; vcmd f2 - change tempo
1431: e4 0e     mov   a,$0e
1433: e3 26 09  bbs7  $26,$143f
1436: 84 5d     adc   a,$5d
1438: c4 5d     mov   $5d,a
143a: 84 5e     adc   a,$5e
143c: c4 fa     mov   $fa,a
143e: 6f        ret

143f: 84 4f     adc   a,$4f
1441: c4 4f     mov   $4f,a
1443: c4 fb     mov   $fb,a
1445: 6f        ret

; vcmd f3 - vibrato off
1446: 12 27     clr0  $27
1448: 6f        ret

; vcmd f4 - tremolo on
1449: e4 0e     mov   a,$0e
144b: d6 44 1a  mov   $1a44+y,a
144e: d6 2c 1a  mov   $1a2c+y,a
1451: e4 0f     mov   a,$0f
1453: d6 14 1a  mov   $1a14+y,a
1456: e8 00     mov   a,#$00
1458: d6 74 1a  mov   $1a74+y,a
145b: 02 28     set0  $28
145d: 6f        ret

; vcmd f5 - tremolo on (w/delay)
145e: 3f 49 14  call  $1449
1461: e4 10     mov   a,$10
1463: d6 74 1a  mov   $1a74+y,a
1466: 6f        ret

; vcmd f7 - tremolo off
1467: 12 28     clr0  $28
1469: f6 48 01  mov   a,$0148+y
146c: 5f e2 14  jmp   $14e2

146f: 6f        ret

; vcmd f8 - slur on
1470: 62 26     set3  $26
1472: 6f        ret

; vcmd f9 - slur off
1473: 72 26     clr3  $26
1475: 52 26     clr2  $26
1477: 6f        ret

; vcmd fa - echo on
1478: e3 26 05  bbs7  $26,$1480
147b: 09 20 5b  or    ($5b),($20)
147e: 2f 16     bra   $1496
1480: 09 20 4e  or    ($4e),($20)
1483: 2f 11     bra   $1496

; vcmd fb - echo off
1485: e4 20     mov   a,$20
1487: 48 ff     eor   a,#$ff
1489: e3 26 06  bbs7  $26,$1492
148c: 24 5b     and   a,$5b
148e: c4 5b     mov   $5b,a
1490: 2f 04     bra   $1496
1492: 24 4e     and   a,$4e
1494: c4 4e     mov   $4e,a
1496: 8f 4d f2  mov   $f2,#$4d
1499: e4 4a     mov   a,$4a
149b: 48 ff     eor   a,#$ff
149d: 24 5b     and   a,$5b
149f: 04 4e     or    a,$4e
14a1: c4 f3     mov   $f3,a
14a3: 6f        ret

; vcmd fe-ff
14a4: e4 20     mov   a,$20
14a6: 24 22     and   a,$22
14a8: f0 37     beq   $14e1
14aa: e4 20     mov   a,$20
14ac: 48 ff     eor   a,#$ff
14ae: 24 24     and   a,$24
14b0: c4 24     mov   $24,a
14b2: eb 1e     mov   y,$1e
14b4: e4 21     mov   a,$21
14b6: 08 04     or    a,#$04
14b8: c4 f2     mov   $f2,a
14ba: f6 d8 01  mov   a,$01d8+y
14bd: 5d        mov   x,a
14be: f5 80 56  mov   a,$5680+x
14c1: c4 f3     mov   $f3,a
14c3: f8 1f     mov   x,$1f
14c5: e4 21     mov   a,$21
14c7: 08 05     or    a,#$05
14c9: c4 f2     mov   $f2,a
14cb: f5 60 01  mov   a,$0160+x
14ce: c4 f3     mov   $f3,a
14d0: e4 21     mov   a,$21
14d2: 08 06     or    a,#$06
14d4: c4 f2     mov   $f2,a
14d6: f5 61 01  mov   a,$0161+x
14d9: c4 f3     mov   $f3,a
14db: f6 48 01  mov   a,$0148+y
14de: 3f e2 14  call  $14e2
14e1: 6f        ret

14e2: fd        mov   y,a
14e3: e4 20     mov   a,$20
14e5: 24 22     and   a,$22
14e7: f0 48     beq   $1531
14e9: f8 1f     mov   x,$1f
14eb: f5 9d 19  mov   a,$199d+x
14ee: 1c        asl   a
14ef: cf        mul   ya
14f0: e4 2f     mov   a,$2f
14f2: 1c        asl   a
14f3: cf        mul   ya
14f4: 63 37 2f  bbs3  $37,$1526
14f7: f5 8d 1a  mov   a,$1a8d+x
14fa: 68 80     cmp   a,#$80
14fc: f0 28     beq   $1526
14fe: 90 15     bcc   $1515
1500: e4 21     mov   a,$21
1502: bc        inc   a
1503: c4 f2     mov   $f2,a
1505: cb f3     mov   $f3,y
1507: fa 21 f2  mov   ($f2),($21)
150a: f5 8d 1a  mov   a,$1a8d+x
150d: 48 ff     eor   a,#$ff
150f: bc        inc   a
1510: 1c        asl   a
1511: cf        mul   ya
1512: cb f3     mov   $f3,y
1514: 6f        ret

1515: e4 21     mov   a,$21
1517: c4 f2     mov   $f2,a
1519: cb f3     mov   $f3,y
151b: bc        inc   a
151c: c4 f2     mov   $f2,a
151e: f5 8d 1a  mov   a,$1a8d+x
1521: 1c        asl   a
1522: cf        mul   ya
1523: cb f3     mov   $f3,y
1525: 6f        ret

1526: e4 21     mov   a,$21
1528: c4 f2     mov   $f2,a
152a: cb f3     mov   $f3,y
152c: bc        inc   a
152d: c4 f2     mov   $f2,a
152f: cb f3     mov   $f3,y
1531: 6f        ret

1532: fd        mov   y,a
1533: c4 1e     mov   $1e,a
1535: 1c        asl   a
1536: c4 1f     mov   $1f,a
1538: dd        mov   a,y
1539: 28 07     and   a,#$07
153b: 9f        xcn   a
153c: c4 21     mov   $21,a
153e: 1c        asl   a
153f: 08 02     or    a,#$02
1541: c5 47 15  mov   $1547,a
1544: 8f 00 20  mov   $20,#$00
1547: 02 20     set0  $20
1549: 6f        ret

154a: eb 36     mov   y,$36
154c: e4 64     mov   a,$64
154e: 0d        push  psw
154f: 10 03     bpl   $1554
1551: 48 ff     eor   a,#$ff
1553: bc        inc   a
1554: cf        mul   ya
1555: cd 40     mov   x,#$40
1557: 9e        div   ya,x
1558: 8e        pop   psw
1559: 10 03     bpl   $155e
155b: 48 ff     eor   a,#$ff
155d: bc        inc   a
155e: c4 35     mov   $35,a
1560: cd f3     mov   x,#$f3
1562: e4 62     mov   a,$62
1564: f0 51     beq   $15b7
1566: a3 38 17  bbs5  $38,$1580
1569: 8f 7d f2  mov   $f2,#$7d
156c: 2e f3 0f  cbne  $f3,$157e
156f: 03 37 0b  bbs0  $37,$157d
1572: b2 38     clr5  $38
1574: 8f 6c f2  mov   $f2,#$6c
1577: fa 38 f3  mov   ($f3),($38)
157a: 3f 14 16  call  $1614
157d: 6f        ret

157e: a2 38     set5  $38
1580: 8f 6c f2  mov   $f2,#$6c
1583: fa 38 f3  mov   ($f3),($38)
1586: e8 00     mov   a,#$00
1588: 8f 2c f2  mov   $f2,#$2c
158b: c6        mov   (x),a
158c: 8f 3c f2  mov   $f2,#$3c
158f: c6        mov   (x),a
1590: 8f 0d f2  mov   $f2,#$0d
1593: c6        mov   (x),a
1594: 8f 7d f2  mov   $f2,#$7d
1597: fa f3 34  mov   ($34),($f3)
159a: ab 34     inc   $34
159c: e4 62     mov   a,$62
159e: c6        mov   (x),a
159f: 9f        xcn   a
15a0: 5c        lsr   a
15a1: c4 0c     mov   $0c,a
15a3: e8 00     mov   a,#$00
15a5: 80        setc
15a6: a4 0c     sbc   a,$0c
15a8: 8f 6d f2  mov   $f2,#$6d
15ab: c6        mov   (x),a
15ac: 02 37     set0  $37
15ae: e8 0e     mov   a,#$0e
15b0: c5 27 02  mov   $0227,a
15b3: 8f 81 fa  mov   $fa,#$81
15b6: 6f        ret

15b7: a2 38     set5  $38
15b9: 8f 6c f2  mov   $f2,#$6c
15bc: fa 38 f3  mov   ($f3),($38)
15bf: 8f 7d f2  mov   $f2,#$7d
15c2: c6        mov   (x),a
15c3: 8f 6d f2  mov   $f2,#$6d
15c6: 8f ff f3  mov   $f3,#$ff
15c9: c4 35     mov   $35,a
15cb: c4 63     mov   $63,a
15cd: 3f 14 16  call  $1614
15d0: 12 37     clr0  $37
15d2: 6f        ret

15d3: f6 ac 1b  mov   a,$1bac+y
15d6: 1c        asl   a
15d7: 84 1f     adc   a,$1f
15d9: 84 1f     adc   a,$1f
15db: 84 1f     adc   a,$1f
15dd: 5d        mov   x,a
15de: 6f        ret

15df: f8 0c     mov   x,$0c
15e1: e4 0b     mov   a,$0b
15e3: 8d 00     mov   y,#$00
15e5: 9e        div   ya,x
15e6: c4 0b     mov   $0b,a
15e8: e4 0a     mov   a,$0a
15ea: 9e        div   ya,x
15eb: c4 0a     mov   $0a,a
15ed: 6f        ret

15ee: 8f 0c f2  mov   $f2,#$0c
15f1: e4 36     mov   a,$36
15f3: 63 37 16  bbs3  $37,$160c
15f6: 93 37 03  bbc4  $37,$15fc
15f9: 48 ff     eor   a,#$ff
15fb: bc        inc   a
15fc: c4 f3     mov   $f3,a
15fe: 8f 1c f2  mov   $f2,#$1c
1601: e4 36     mov   a,$36
1603: b3 37 03  bbc5  $37,$1609
1606: 48 ff     eor   a,#$ff
1608: bc        inc   a
1609: c4 f3     mov   $f3,a
160b: 6f        ret

160c: c4 f3     mov   $f3,a
160e: 8f 1c f2  mov   $f2,#$1c
1611: c4 f3     mov   $f3,a
1613: 6f        ret

1614: 8f 0d f2  mov   $f2,#$0d
1617: fa 63 f3  mov   ($f3),($63)
161a: 8f 2c f2  mov   $f2,#$2c
161d: e4 35     mov   a,$35
161f: 63 37 13  bbs3  $37,$1635
1622: d3 37 03  bbc6  $37,$1628
1625: 48 ff     eor   a,#$ff
1627: bc        inc   a
1628: c4 f3     mov   $f3,a
162a: 8f 3c f2  mov   $f2,#$3c
162d: e4 35     mov   a,$35
162f: f3 37 03  bbc7  $37,$1635
1632: 48 ff     eor   a,#$ff
1634: bc        inc   a
1635: c4 f3     mov   $f3,a
1637: 8f 3c f2  mov   $f2,#$3c
163a: c4 f3     mov   $f3,a
163c: 6f        ret

163d: 8f 6c f2  mov   $f2,#$6c
1640: 8f e0 f3  mov   $f3,#$e0
1643: 8f b0 f1  mov   $f1,#$b0
1646: 5f c0 ff  jmp   $ffc0

1649: dw $034d  ; 01
164b: dw $0359  ; 02
164d: dw $036b  ; 03
164f: dw $038b  ; 04
1651: dw $03f7  ; 05
1653: dw $040f  ; 06
1655: dw $0418  ; 07
1657: dw $04af  ; 08
1659: dw $04bd  ; 09
165b: dw $030e  ; 0a
165d: dw $0548  ; 0b
165f: dw $0565  ; 0c
1661: dw $06b6  ; 0d
1663: dw $07b7  ; 0e
1665: dw $056e  ; 0f
1667: dw $05f6  ; 10
1669: dw $05f9  ; 11
166b: dw $0607  ; 12
166d: dw $0615  ; 13
166f: dw $0623  ; 14
1671: dw $0626  ; 15
1673: dw $0638  ; 16
1675: dw $0638  ; 17
1677: dw $0586  ; 18
1679: dw $058e  ; 19
167b: dw $059c  ; 1a
167d: dw $05b2  ; 1b
167f: dw $05ce  ; 1c
1681: dw $05d6  ; 1d
1683: dw $05f3  ; 1e
1685: dw $05f3  ; 1f
1687: dw $0638  ; 20
1689: dw $063e  ; 21
168b: dw $064a  ; 22
168d: dw $065c  ; 23
168f: dw $030e  ; 24
1691: dw $0675  ; 25
1693: dw $06a1  ; 26
1695: dw $030e  ; 27
1697: dw $08fb  ; 28
1699: dw $0904  ; 29
169b: dw $0911  ; 2a
169d: dw $091a  ; 2b
169f: dw $0923  ; 2c
16a1: dw $08d4  ; 2d
16a3: dw $092d  ; 2e
16a5: dw $094b  ; 2f
16a7: dw $095d  ; 30

16a9: dw $100f  ; c4 - octave up
16ab: dw $1015  ; c5 - octave down
16ad: dw $101b  ; c6 - set octave
16af: dw $1021  ; c7 - nop
16b1: dw $1022  ; c8 - set noise freq
16b3: dw $1039  ; c9 - noise on
16b5: dw $1046  ; ca - noise off
16b7: dw $1065  ; cb - pitchmod on
16b9: dw $1072  ; cc - pitchmod off
16bb: dw $1091  ; cd
16bd: dw $1098  ; ce
16bf: dw $10ad  ; cf - transpose (absolute, signed, 16 = 1 semitone)
16c1: dw $10c7  ; d0 - end/return
16c3: dw $10f9  ; d1 - tempo
16c5: dw $110b  ; d2 - set timer 1 freq
16c7: dw $110f  ; d3 - change timer 1 freq
16c9: dw $1114  ; d4 - repeat start
16cb: dw $1139  ; d5 - repeat end
16cd: dw $116b  ; d6 - repeat break
16cf: dw $1187  ; d7 - set loop point
16d1: dw $1194  ; d8 - default ADSR
16d3: dw $11c7  ; d9 - set attack rate (AR)
16d5: dw $11d8  ; da - set decay rate (DR)
16d7: dw $11eb  ; db - set sustain level (SL)
16d9: dw $1206  ; dc - set sustain rate (SR)
16db: dw $1227  ; dd - duration rate
16dd: dw $122d  ; de - set instrument
16df: dw $1026  ; df - change noise freq
16e1: dw $125e  ; e0
16e3: dw $100f  ; e1 - octave up (duplicated)
16e5: dw $126d  ; e2 - volume
16e7: dw $127f  ; e3 - change volume
16e9: dw $1291  ; e4 - volume fade
16eb: dw $12cc  ; e5 - portamento
16ed: dw $1326  ; e6 - portamento toggle
16ef: dw $1331  ; e7 - panpot
16f1: dw $1340  ; e8 - panpot fade
16f3: dw $1380  ; e9 - panpot LFO on
16f5: dw $100f  ; ea - octave up (duplicated)
16f7: dw $100f  ; eb - octave up (duplicated)
16f9: dw $139c  ; ec - transpose (absolute, signed, 4 = 1 semitone)
16fb: dw $13ac  ; ed - transpose (relative, signed, 4 = 1 semitone)
16fd: dw $13e7  ; ee - rhythm kit on
16ff: dw $13ea  ; ef - rhythm kit off
1701: dw $13ed  ; f0 - vibrato on
1703: dw $1428  ; f1 - vibrato on (w/delay)
1705: dw $1431  ; f2 - change tempo
1707: dw $1446  ; f3 - vibrato off
1709: dw $1449  ; f4 - tremolo on
170b: dw $145e  ; f5 - tremolo on (w/delay)
170d: dw $13e1  ; f6
170f: dw $1467  ; f7 - tremolo off
1711: dw $1470  ; f8 - slur on
1713: dw $1473  ; f9 - slur off
1715: dw $1478  ; fa - echo on
1717: dw $1485  ; fb - echo off
1719: dw $100f  ; fc - octave up (duplicated)
171b: dw $100f  ; fd - octave up (duplicated)
171d: dw $14a4  ; fe
171f: dw $14a4  ; ff

1721: db                 $01,$01,$02,$11,$02,$01,$01,$01,$01,$02,$02,$02
172d: db $31,$02,$02,$02,$02,$41,$51,$01,$01,$02,$02,$02,$02,$02,$02,$02
173d: db $02,$02,$02,$02,$03,$03,$01,$02,$03,$03,$01,$01,$02,$02,$01,$01
174d: db $03,$04,$02,$01,$03,$04,$02,$01,$01,$21,$01,$01,$01,$01,$01,$01

175d: db $c0,$90,$60,$48,$30,$24,$20,$18,$10,$0c,$08,$06,$03

176a: dw $260e
176c: dw $2851
176e: dw $2ab7
1770: dw $2d41
1772: dw $2ff2
1774: dw $32cc
1776: dw $35d1
1778: dw $3904
177a: dw $3c68
177c: dw $4000
177e: dw $43ce
1780: dw $47d6
1782: dw $4c1b

1784: db $7f,$00,$00,$00,$00,$00,$00,$00
178c: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1794: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
179c: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
