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
0212: 3f 1a 03  call  $031a
0215: 8f 00 f6  mov   $f6,#$00
0218: 8f 02 f7  mov   $f7,#$02
021b: c4 f4     mov   $f4,a
021d: c4 f5     mov   $f5,a
021f: e4 f7     mov   a,$f7
0221: d0 fc     bne   $021f
0223: e8 00     mov   a,#$00
0225: 2e fd 1b  cbne  $fd,$0243
0228: 2e fe 4c  cbne  $fe,$0277
022b: 2e f4 0d  cbne  $f4,$023b
022e: 2e ff 6f  cbne  $ff,$02a0
0231: 3f fe 02  call  $02fe
0234: 2f ed     bra   $0223
0236: 3f d2 02  call  $02d2
0239: 2f e8     bra   $0223
023b: 3f 08 03  call  $0308
023e: 3f fe 02  call  $02fe
0241: 2f e0     bra   $0223
0243: e4 61     mov   a,$61
0245: f0 2e     beq   $0275
0247: c4 2f     mov   $2f,a
0249: ba 62     movw  ya,$62
024b: da 30     movw  $30,ya
024d: e4 4a     mov   a,$4a
024f: 04 5e     or    a,$5e
0251: 48 ff     eor   a,#$ff
0253: c4 22     mov   $22,a
0255: e4 1d     mov   a,$1d
0257: 3f 8a 15  call  $158a
025a: ba 59     movw  ya,$59
025c: da 23     movw  $23,ya
025e: 8f 08 1c  mov   $1c,#$08
0261: 3f 7d 0b  call  $0b7d
0264: ba 23     movw  ya,$23
0266: da 59     movw  $59,ya
0268: e4 23     mov   a,$23
026a: f0 09     beq   $0275
026c: 64 67     cmp   a,$67
026e: d0 05     bne   $0275
0270: ab 68     inc   $68
0272: 8f 00 67  mov   $67,#$00
0275: 2f ac     bra   $0223
0277: e4 57     mov   a,$57
0279: f0 03     beq   $027e
027b: 3f a2 15  call  $15a2
027e: 8f ff 22  mov   $22,#$ff
0281: e8 14     mov   a,#$14
0283: 3f 8a 15  call  $158a
0286: 8f 04 1c  mov   $1c,#$04
0289: fa 50 2f  mov   ($2f),($50)
028c: fa 51 31  mov   ($31),($51)
028f: 8f 00 30  mov   $30,#$00
0292: ba 4a     movw  ya,$4a
0294: da 23     movw  $23,ya
0296: 3f 7d 0b  call  $0b7d
0299: ba 23     movw  ya,$23
029b: da 4a     movw  $4a,ya
029d: 5f 23 02  jmp   $0223

02a0: 03 37 2c  bbs0  $37,$02cf
02a3: e4 39     mov   a,$39
02a5: f0 0c     beq   $02b3
02a7: 6e 3c 09  dbnz  $3c,$02b3
02aa: 33 39 03  bbc1  $39,$02b0
02ad: 3f ae 0a  call  $0aae
02b0: fa 3b 3c  mov   ($3c),($3b)
02b3: e4 3a     mov   a,$3a
02b5: f0 18     beq   $02cf
02b7: 6e 41 15  dbnz  $41,$02cf
02ba: 13 3a 03  bbc0  $3a,$02c0
02bd: 3f d4 0a  call  $0ad4
02c0: 33 3a 03  bbc1  $3a,$02c6
02c3: 3f f7 0a  call  $0af7
02c6: 73 3a 03  bbc3  $3a,$02cc
02c9: 3f 31 0b  call  $0b31
02cc: fa 40 41  mov   ($41),($40)
02cf: 5f 23 02  jmp   $0223

02d2: 6e 34 28  dbnz  $34,$02fd
02d5: a3 38 18  bbs5  $38,$02f0
02d8: 3f 9c 16  call  $169c
02db: e8 1b     mov   a,#$1b
02dd: c5 27 02  mov   $0227,a
02e0: e4 5f     mov   a,$5f
02e2: 60        clrc
02e3: 84 60     adc   a,$60
02e5: c4 fa     mov   $fa,a
02e7: 12 37     clr0  $37
02e9: 8f 4d f2  mov   $f2,#$4d
02ec: 3f e0 14  call  $14e0
02ef: 6f        ret

02f0: fa 64 34  mov   ($34),($64)
02f3: ab 34     inc   $34
02f5: b2 38     clr5  $38
02f7: 8f 6c f2  mov   $f2,#$6c
02fa: fa 38 f3  mov   ($f3),($38)
02fd: 6f        ret

02fe: fa 52 f5  mov   ($f5),($52)
0301: fa 59 f6  mov   ($f6),($59)
0304: fa 69 f7  mov   ($f7),($69)
0307: 6f        ret

0308: e4 f4     mov   a,$f4
030a: 2e f4 fb  cbne  $f4,$0308
030d: 68 34     cmp   a,#$34
030f: b0 06     bcs   $0317
0311: 9c        dec   a
0312: 1c        asl   a
0313: 5d        mov   x,a
0314: 1f d9 16  jmp   ($16d9+x)

0317: 5f cd 16  jmp   $16cd

031a: 8f 6c f2  mov   $f2,#$6c
031d: 8f e0 f3  mov   $f3,#$e0
0320: a2 38     set5  $38
0322: cd f3     mov   x,#$f3
0324: e8 00     mov   a,#$00
0326: c4 f1     mov   $f1,a
0328: 8f 2c f2  mov   $f2,#$2c
032b: c6        mov   (x),a
032c: 8f 3c f2  mov   $f2,#$3c
032f: c6        mov   (x),a
0330: 8f 0d f2  mov   $f2,#$0d
0333: c6        mov   (x),a
0334: 8f 0c f2  mov   $f2,#$0c
0337: c6        mov   (x),a
0338: 8f 1c f2  mov   $f2,#$1c
033b: c6        mov   (x),a
033c: 8f 2d f2  mov   $f2,#$2d
033f: c6        mov   (x),a
0340: 8f 3d f2  mov   $f2,#$3d
0343: c6        mov   (x),a
0344: 8f 4d f2  mov   $f2,#$4d
0347: c6        mov   (x),a
0348: c4 fa     mov   $fa,a
034a: c4 fb     mov   $fb,a
034c: 8f 00 fc  mov   $fc,#$00
034f: 8f 07 33  mov   $33,#$07
0352: 8f 07 f1  mov   $f1,#$07
0355: 8f 5d f2  mov   $f2,#$5d
0358: 8f 46 f3  mov   $f3,#$46
035b: 3f 95 0a  call  $0a95
035e: 6f        ret

035f: 8f 00 5e  mov   $5e,#$00
0362: 8f 20 01  mov   $01,#$20
0365: 8f 00 00  mov   $00,#$00
0368: 5f 20 09  jmp   $0920

036b: 58 08 1d  eor   $1d,#$08
036e: 8d 11     mov   y,#$11
0370: cd 00     mov   x,#$00
0372: f4 59     mov   a,$59+x
0374: d5 24 1e  mov   $1e24+x,a
0377: 3d        inc   x
0378: fe f8     dbnz  y,$0372
037a: 5f 1f 0a  jmp   $0a1f

037d: 58 08 1d  eor   $1d,#$08
0380: 8d 11     mov   y,#$11
0382: cd 00     mov   x,#$00
0384: f5 24 1e  mov   a,$1e24+x
0387: d4 59     mov   $59+x,a
0389: 3d        inc   x
038a: fe f8     dbnz  y,$0384
038c: 8f ff 5a  mov   $5a,#$ff
038f: 03 37 03  bbs0  $37,$0395
0392: fa 5f fa  mov   ($fa),($5f)
0395: 3f ce 15  call  $15ce
0398: 5f 1f 0a  jmp   $0a1f

039b: fa f5 61  mov   ($61),($f5)
039e: 3f 1f 0a  call  $0a1f
03a1: 3f 89 04  call  $0489
03a4: 8f 08 06  mov   $06,#$08
03a7: e4 1d     mov   a,$1d
03a9: 1c        asl   a
03aa: 5d        mov   x,a
03ab: f6 00 20  mov   a,$2000+y
03ae: d5 fc 1b  mov   $1bfc+x,a
03b1: f6 01 20  mov   a,$2001+y
03b4: d5 fd 1b  mov   $1bfd+x,a
03b7: 3d        inc   x
03b8: 3d        inc   x
03b9: fc        inc   y
03ba: fc        inc   y
03bb: 6e 06 ed  dbnz  $06,$03ab
03be: e8 00     mov   a,#$00
03c0: fd        mov   y,a
03c1: c4 60     mov   $60,a
03c3: c4 3a     mov   $3a,a
03c5: da 5b     movw  $5b,ya
03c7: c4 5d     mov   $5d,a
03c9: da 62     movw  $62,ya
03cb: da 67     movw  $67,ya
03cd: c4 69     mov   $69,a
03cf: e4 1d     mov   a,$1d
03d1: 3f 8a 15  call  $158a
03d4: 8f 00 06  mov   $06,#$00
03d7: 8f 80 07  mov   $07,#$80
03da: 8f 08 1c  mov   $1c,#$08
03dd: fa 61 2f  mov   ($2f),($61)
03e0: 3f 33 0a  call  $0a33
03e3: e4 23     mov   a,$23
03e5: c4 59     mov   $59,a
03e7: c4 5a     mov   $5a,a
03e9: 3f ad 10  call  $10ad
03ec: 3f 7e 10  call  $107e
03ef: 3f e0 14  call  $14e0
03f2: e8 3e     mov   a,#$3e
03f4: c4 5f     mov   $5f,a
03f6: 03 37 02  bbs0  $37,$03fb
03f9: c4 fa     mov   $fa,a
03fb: 6f        ret

03fc: 3f 1f 0a  call  $0a1f
03ff: 8f 5c f2  mov   $f2,#$5c
0402: e4 4a     mov   a,$4a
0404: 48 ff     eor   a,#$ff
0406: c4 f3     mov   $f3,a
0408: 8f 00 59  mov   $59,#$00
040b: 6f        ret

040c: 03 37 06  bbs0  $37,$0415
040f: 8f 6c f2  mov   $f2,#$6c
0412: fa 38 f3  mov   ($f3),($38)
0415: e4 f5     mov   a,$f5
0417: c4 61     mov   $61,a
0419: c4 2f     mov   $2f,a
041b: 3f 1f 0a  call  $0a1f
041e: 8f 5c f2  mov   $f2,#$5c
0421: 8f 00 f3  mov   $f3,#$00
0424: 3f 89 04  call  $0489
0427: 3f ad 10  call  $10ad
042a: 3f 7e 10  call  $107e
042d: 3f e0 14  call  $14e0
0430: fa 61 2f  mov   ($2f),($61)
0433: ba 62     movw  ya,$62
0435: da 30     movw  $30,ya
0437: e4 4a     mov   a,$4a
0439: 04 5e     or    a,$5e
043b: 48 ff     eor   a,#$ff
043d: c4 22     mov   $22,a
043f: 8f 08 1c  mov   $1c,#$08
0442: e4 1d     mov   a,$1d
0444: 3f 8a 15  call  $158a
0447: e8 00     mov   a,#$00
0449: c4 25     mov   $25,a
044b: c4 3a     mov   $3a,a
044d: c4 59     mov   $59,a
044f: eb 1f     mov   y,$1f
0451: f6 fd 1b  mov   a,$1bfd+y
0454: f0 1c     beq   $0472
0456: eb 1e     mov   y,$1e
0458: f6 00 01  mov   a,$0100+y
045b: 28 22     and   a,#$22
045d: d0 03     bne   $0462
045f: 09 20 25  or    ($25),($20)
0462: f6 00 01  mov   a,$0100+y
0465: 28 20     and   a,#$20
0467: d0 06     bne   $046f
0469: 3f fd 14  call  $14fd
046c: 3f 68 0f  call  $0f68
046f: 09 20 59  or    ($59),($20)
0472: 0b 20     asl   $20
0474: ab 1e     inc   $1e
0476: 98 02 1f  adc   $1f,#$02
0479: 98 10 21  adc   $21,#$10
047c: 6e 1c d0  dbnz  $1c,$044f
047f: 8f 4c f2  mov   $f2,#$4c
0482: 29 22 25  and   ($25),($22)
0485: fa 25 f3  mov   ($f3),($25)
0488: 6f        ret

0489: 8d 00     mov   y,#$00
048b: f6 00 20  mov   a,$2000+y
048e: 30 1c     bmi   $04ac
0490: 1c        asl   a
0491: 1c        asl   a
0492: 88 6a     adc   a,#$6a
0494: 5d        mov   x,a
0495: f6 01 20  mov   a,$2001+y
0498: af        mov   (x)+,a
0499: f6 02 20  mov   a,$2002+y
049c: af        mov   (x)+,a
049d: f6 03 20  mov   a,$2003+y
04a0: af        mov   (x)+,a
04a1: f6 04 20  mov   a,$2004+y
04a4: c6        mov   (x),a
04a5: dd        mov   a,y
04a6: 60        clrc
04a7: 88 05     adc   a,#$05
04a9: fd        mov   y,a
04aa: 2f df     bra   $048b
04ac: fc        inc   y
04ad: 6f        ret

04ae: 8f 14 48  mov   $48,#$14
04b1: 8f 30 49  mov   $49,#$30
04b4: 2f 06     bra   $04bc
04b6: 8f 16 48  mov   $48,#$16
04b9: 8f c0 49  mov   $49,#$c0
04bc: e4 f7     mov   a,$f7
04be: 28 0f     and   a,#$0f
04c0: fd        mov   y,a
04c1: e4 4a     mov   a,$4a
04c3: 24 49     and   a,$49
04c5: f0 04     beq   $04cb
04c7: 7e 53     cmp   y,$53
04c9: 30 1d     bmi   $04e8
04cb: cb 53     mov   $53,y
04cd: fa f6 47  mov   ($47),($f6)
04d0: f8 f5     mov   x,$f5
04d2: 3f e8 04  call  $04e8
04d5: 7d        mov   a,x
04d6: 3f f9 04  call  $04f9
04d9: da 45     movw  $45,ya
04db: e4 fe     mov   a,$fe
04dd: 8f 3e fb  mov   $fb,#$3e
04e0: 8f 3e 4f  mov   $4f,#$3e
04e3: 8f 00 58  mov   $58,#$00
04e6: 2f 1c     bra   $0504
04e8: e4 f7     mov   a,$f7
04ea: 82 33     set4  $33
04ec: fa 33 f1  mov   ($f1),($33)
04ef: 92 33     clr4  $33
04f1: 28 f0     and   a,#$f0
04f3: 9f        xcn   a
04f4: c4 52     mov   $52,a
04f6: c4 f5     mov   $f5,a
04f8: 6f        ret

04f9: 8d 04     mov   y,#$04
04fb: cf        mul   ya
04fc: 2d        push  a
04fd: dd        mov   a,y
04fe: 60        clrc
04ff: 88 30     adc   a,#$30
0501: fd        mov   y,a
0502: ae        pop   a
0503: 6f        ret

0504: e4 48     mov   a,$48
0506: 3f 8a 15  call  $158a
0509: 8d 00     mov   y,#$00
050b: f8 1f     mov   x,$1f
050d: f7 45     mov   a,($45)+y
050f: d5 fc 1b  mov   $1bfc+x,a
0512: fc        inc   y
0513: 3d        inc   x
0514: ad 04     cmp   y,#$04
0516: d0 f5     bne   $050d
0518: fa 50 2f  mov   ($2f),($50)
051b: 8f 80 06  mov   $06,#$80
051e: fa 47 07  mov   ($07),($47)
0521: 8f 02 1c  mov   $1c,#$02
0524: 3f 33 0a  call  $0a33
0527: fa 23 4b  mov   ($4b),($23)
052a: 09 23 5a  or    ($5a),($23)
052d: 8f 5c f2  mov   $f2,#$5c
0530: e4 49     mov   a,$49
0532: 24 4a     and   a,$4a
0534: 04 23     or    a,$23
0536: c4 f3     mov   $f3,a
0538: 09 49 57  or    ($57),($49)
053b: e4 49     mov   a,$49
053d: 48 ff     eor   a,#$ff
053f: c4 0a     mov   $0a,a
0541: 24 4a     and   a,$4a
0543: 04 23     or    a,$23
0545: c4 4a     mov   $4a,a
0547: 29 0a 4d  and   ($4d),($0a)
054a: 29 0a 4c  and   ($4c),($0a)
054d: 3f ad 10  call  $10ad
0550: 3f 7e 10  call  $107e
0553: 8f 00 49  mov   $49,#$00
0556: 6f        ret

0557: 3f 1f 0a  call  $0a1f
055a: 8f 5c f2  mov   $f2,#$5c
055d: fa 4a f3  mov   ($f3),($4a)
0560: 09 4a 57  or    ($57),($4a)
0563: e8 00     mov   a,#$00
0565: c4 4a     mov   $4a,a
0567: c4 4d     mov   $4d,a
0569: c4 4c     mov   $4c,a
056b: 3f ad 10  call  $10ad
056e: 3f 7e 10  call  $107e
0571: 6f        ret

0572: 8f 30 01  mov   $01,#$30
0575: 8f 00 00  mov   $00,#$00
0578: 5f 20 09  jmp   $0920

057b: 3f 1f 0a  call  $0a1f
057e: 8f 5c f2  mov   $f2,#$5c
0581: 8f ff f3  mov   $f3,#$ff
0584: e8 00     mov   a,#$00
0586: fd        mov   y,a
0587: c4 59     mov   $59,a
0589: da 4a     movw  $4a,ya
058b: da 4c     movw  $4c,ya
058d: c4 4e     mov   $4e,a
058f: c4 49     mov   $49,a
0591: 6f        ret

0592: fa f6 fb  mov   ($fb),($f6)
0595: fa 4f f5  mov   ($f5),($4f)
0598: 2f 0b     bra   $05a5
059a: 12 3a     clr0  $3a
059c: e4 f6     mov   a,$f6
059e: c4 60     mov   $60,a
05a0: 60        clrc
05a1: 84 5f     adc   a,$5f
05a3: c4 fa     mov   $fa,a
05a5: 5f 1f 0a  jmp   $0a1f

05a8: 32 39     clr1  $39
05aa: e4 f6     mov   a,$f6
05ac: 30 29     bmi   $05d7
05ae: c4 50     mov   $50,a
05b0: c4 2f     mov   $2f,a
05b2: 3f 1f 0a  call  $0a1f
05b5: fa 4a 22  mov   ($22),($4a)
05b8: e8 10     mov   a,#$10
05ba: 3f 16 0b  call  $0b16
05bd: 6f        ret

05be: 32 3a     clr1  $3a
05c0: e4 f6     mov   a,$f6
05c2: 30 13     bmi   $05d7
05c4: c4 61     mov   $61,a
05c6: c4 2f     mov   $2f,a
05c8: 3f 1f 0a  call  $0a1f
05cb: fa 4a 22  mov   ($22),($4a)
05ce: 58 ff 22  eor   $22,#$ff
05d1: e4 1d     mov   a,$1d
05d3: 3f 16 0b  call  $0b16
05d6: 6f        ret

05d7: 5f 1f 0a  jmp   $0a1f

05da: fa f5 51  mov   ($51),($f5)
05dd: fa 4a 22  mov   ($22),($4a)
05e0: 2f 0e     bra   $05f0
05e2: 72 3a     clr3  $3a
05e4: fa f6 63  mov   ($63),($f6)
05e7: 8f 00 62  mov   $62,#$00
05ea: fa 4a 22  mov   ($22),($4a)
05ed: 58 ff 22  eor   $22,#$ff
05f0: c4 30     mov   $30,a
05f2: 3f 1f 0a  call  $0a1f
05f5: ba 62     movw  ya,$62
05f7: da 30     movw  $30,ya
05f9: e4 1d     mov   a,$1d
05fb: 3f 66 0b  call  $0b66
05fe: 6f        ret

05ff: 5f 1f 0a  jmp   $0a1f

0602: 5f 1f 0a  jmp   $0a1f

0605: 02 3a     set0  $3a
0607: fa f6 42  mov   ($42),($f6)
060a: fa f5 40  mov   ($40),($f5)
060d: 8f 01 41  mov   $41,#$01
0610: 5f 1f 0a  jmp   $0a1f

0613: 22 39     set1  $39
0615: fa f6 3e  mov   ($3e),($f6)
0618: fa f5 3b  mov   ($3b),($f5)
061b: 8f 01 3c  mov   $3c,#$01
061e: 5f 1f 0a  jmp   $0a1f

0621: 22 3a     set1  $3a
0623: fa f6 43  mov   ($43),($f6)
0626: fa f5 40  mov   ($40),($f5)
0629: 8f 01 41  mov   $41,#$01
062c: 5f 1f 0a  jmp   $0a1f

062f: 5f 1f 0a  jmp   $0a1f

0632: 62 3a     set3  $3a
0634: fa f6 44  mov   ($44),($f6)
0637: 60        clrc
0638: 98 80 44  adc   $44,#$80
063b: fa f5 40  mov   ($40),($f5)
063e: 8f 01 41  mov   $41,#$01
0641: 5f 1f 0a  jmp   $0a1f

0644: fa f5 58  mov   ($58),($f5)
0647: 5f 1f 0a  jmp   $0a1f

064a: fa 69 f5  mov   ($f5),($69)
064d: fa 5f f6  mov   ($f6),($5f)
0650: fa 68 f7  mov   ($f7),($68)
0653: 5f 15 0a  jmp   $0a15

0656: 38 07 37  and   $37,#$07
0659: 09 f5 37  or    ($37),($f5)
065c: 3f 1f 0a  call  $0a1f
065f: 3f 04 0b  call  $0b04
0662: 3f 76 16  call  $1676
0665: 5f ce 15  jmp   $15ce

0668: 13 f6 10  bbc0  $f6,$067b
066b: fa f5 5e  mov   ($5e),($f5)
066e: e4 4a     mov   a,$4a
0670: 48 ff     eor   a,#$ff
0672: 24 5e     and   a,$5e
0674: c4 22     mov   $22,a
0676: 8f 5c f2  mov   $f2,#$5c
0679: c4 f3     mov   $f3,a
067b: fa 5e f5  mov   ($f5),($5e)
067e: 5f 15 0a  jmp   $0a15

0681: e4 f5     mov   a,$f5
0683: c4 06     mov   $06,a
0685: 28 0f     and   a,#$0f
0687: c4 64     mov   $64,a
0689: ba f6     movw  ya,$f6
068b: da 65     movw  $65,ya
068d: 3f 1f 0a  call  $0a1f
0690: 3f ce 15  call  $15ce
0693: e4 06     mov   a,$06
0695: 28 f0     and   a,#$f0
0697: 9f        xcn   a
0698: 5c        lsr   a
0699: 5d        mov   x,a
069a: 8d 08     mov   y,#$08
069c: 7d        mov   a,x
069d: 28 07     and   a,#$07
069f: 9f        xcn   a
06a0: 08 0f     or    a,#$0f
06a2: c4 f2     mov   $f2,a
06a4: f5 1c 18  mov   a,$181c+x
06a7: c4 f3     mov   $f3,a
06a9: 3d        inc   x
06aa: fe f0     dbnz  y,$069c
06ac: 6f        ret

06ad: fa 36 f7  mov   ($f7),($36)
06b0: e4 f5     mov   a,$f5
06b2: 30 0b     bmi   $06bf
06b4: c4 36     mov   $36,a
06b6: 3f 15 0a  call  $0a15
06b9: 3f 76 16  call  $1676
06bc: 5f ce 15  jmp   $15ce

06bf: 5f 15 0a  jmp   $0a15

06c2: f8 f5     mov   x,$f5
06c4: d8 0c     mov   $0c,x
06c6: fa f6 0d  mov   ($0d),($f6)
06c9: f5 80 46  mov   a,$4680+x
06cc: c4 f5     mov   $f5,a
06ce: c4 06     mov   $06,a
06d0: 10 10     bpl   $06e2
06d2: e4 1b     mov   a,$1b
06d4: d5 80 46  mov   $4680+x,a
06d7: 1c        asl   a
06d8: 5d        mov   x,a
06d9: 1c        asl   a
06da: c4 02     mov   $02,a
06dc: ba 19     movw  ya,$19
06de: da 00     movw  $00,ya
06e0: 2f 10     bra   $06f2
06e2: 1c        asl   a
06e3: 5d        mov   x,a
06e4: 1c        asl   a
06e5: c4 02     mov   $02,a
06e7: fd        mov   y,a
06e8: f6 00 46  mov   a,$4600+y
06eb: c4 00     mov   $00,a
06ed: f6 01 46  mov   a,$4601+y
06f0: c4 01     mov   $01,a
06f2: e4 0c     mov   a,$0c
06f4: d5 00 47  mov   $4700+x,a
06f7: e4 0d     mov   a,$0d
06f9: d5 01 47  mov   $4701+x,a
06fc: 3f 09 0a  call  $0a09
06ff: ba f6     movw  ya,$f6
0701: 7a 00     addw  ya,$00
0703: da 04     movw  $04,ya
0705: eb 02     mov   y,$02
0707: e4 00     mov   a,$00
0709: d6 00 46  mov   $4600+y,a
070c: e4 01     mov   a,$01
070e: d6 01 46  mov   $4601+y,a
0711: e4 04     mov   a,$04
0713: d6 02 46  mov   $4602+y,a
0716: e4 05     mov   a,$05
0718: d6 03 46  mov   $4603+y,a
071b: 3f 09 0a  call  $0a09
071e: e4 f6     mov   a,$f6
0720: d5 41 47  mov   $4741+x,a
0723: e4 f7     mov   a,$f7
0725: d5 40 47  mov   $4740+x,a
0728: 3f 09 0a  call  $0a09
072b: e4 f6     mov   a,$f6
072d: d5 80 47  mov   $4780+x,a
0730: e4 f7     mov   a,$f7
0732: d5 81 47  mov   $4781+x,a
0735: e4 06     mov   a,$06
0737: 30 03     bmi   $073c
0739: 5f 1f 0a  jmp   $0a1f

073c: 3f 09 0a  call  $0a09
073f: ba f6     movw  ya,$f6
0741: da 06     movw  $06,ya
0743: d5 c0 47  mov   $47c0+x,a
0746: dd        mov   a,y
0747: d5 c1 47  mov   $47c1+x,a
074a: 3f 09 0a  call  $0a09
074d: ba 19     movw  ya,$19
074f: 7a 06     addw  ya,$06
0751: 7a 06     addw  ya,$06
0753: 7a 06     addw  ya,$06
0755: da 19     movw  $19,ya
0757: ab 1b     inc   $1b
0759: 5f 79 09  jmp   $0979

075c: e4 f5     mov   a,$f5
075e: 30 14     bmi   $0774
0760: fd        mov   y,a
0761: f6 80 46  mov   a,$4680+y
0764: 1c        asl   a
0765: 5d        mov   x,a
0766: e8 ff     mov   a,#$ff
0768: d5 00 47  mov   $4700+x,a
076b: d5 01 47  mov   $4701+x,a
076e: d6 80 46  mov   $4680+y,a
0771: 5f 1f 0a  jmp   $0a1f

0774: e8 00     mov   a,#$00
0776: 8d 48     mov   y,#$48
0778: da 00     movw  $00,ya
077a: fd        mov   y,a
077b: c4 1b     mov   $1b,a
077d: da 06     movw  $06,ya
077f: da 08     movw  $08,ya
0781: 8f 20 0c  mov   $0c,#$20
0784: f8 06     mov   x,$06
0786: f5 00 47  mov   a,$4700+x
0789: 30 27     bmi   $07b2
078b: 69 08 06  cmp   ($06),($08)
078e: f0 03     beq   $0793
0790: 3f c4 07  call  $07c4
0793: f8 08     mov   x,$08
0795: f5 c0 47  mov   a,$47c0+x
0798: c4 0a     mov   $0a,a
079a: f5 c1 47  mov   a,$47c1+x
079d: c4 0b     mov   $0b,a
079f: ba 00     movw  ya,$00
07a1: 7a 0a     addw  ya,$0a
07a3: 7a 0a     addw  ya,$0a
07a5: 7a 0a     addw  ya,$0a
07a7: da 00     movw  $00,ya
07a9: ab 1b     inc   $1b
07ab: 60        clrc
07ac: 98 02 08  adc   $08,#$02
07af: 98 04 09  adc   $09,#$04
07b2: 60        clrc
07b3: 98 02 06  adc   $06,#$02
07b6: 98 04 07  adc   $07,#$04
07b9: 8b 0c     dec   $0c
07bb: d0 c7     bne   $0784
07bd: ba 00     movw  ya,$00
07bf: da 19     movw  $19,ya
07c1: 5f 1f 0a  jmp   $0a1f

07c4: f8 06     mov   x,$06
07c6: eb 08     mov   y,$08
07c8: f5 c0 47  mov   a,$47c0+x
07cb: d6 c0 47  mov   $47c0+y,a
07ce: c4 0a     mov   $0a,a
07d0: f5 c1 47  mov   a,$47c1+x
07d3: d6 c1 47  mov   $47c1+y,a
07d6: c4 0b     mov   $0b,a
07d8: f5 00 47  mov   a,$4700+x
07db: d6 00 47  mov   $4700+y,a
07de: fd        mov   y,a
07df: e4 1b     mov   a,$1b
07e1: d6 80 46  mov   $4680+y,a
07e4: e8 ff     mov   a,#$ff
07e6: d5 00 47  mov   $4700+x,a
07e9: d5 01 47  mov   $4701+x,a
07ec: f8 09     mov   x,$09
07ee: e4 01     mov   a,$01
07f0: c4 03     mov   $03,a
07f2: d5 01 46  mov   $4601+x,a
07f5: e4 00     mov   a,$00
07f7: c4 02     mov   $02,a
07f9: d5 00 46  mov   $4600+x,a
07fc: ba 00     movw  ya,$00
07fe: c5 48 08  mov   $0848,a
0801: cc 49 08  mov   $0849,y
0804: bc        inc   a
0805: d0 01     bne   $0808
0807: fc        inc   y
0808: c5 4e 08  mov   $084e,a
080b: cc 4f 08  mov   $084f,y
080e: bc        inc   a
080f: d0 01     bne   $0812
0811: fc        inc   y
0812: c5 54 08  mov   $0854,a
0815: cc 55 08  mov   $0855,y
0818: f8 07     mov   x,$07
081a: f5 01 46  mov   a,$4601+x
081d: fd        mov   y,a
081e: f5 00 46  mov   a,$4600+x
0821: c5 45 08  mov   $0845,a
0824: cc 46 08  mov   $0846,y
0827: bc        inc   a
0828: d0 01     bne   $082b
082a: fc        inc   y
082b: c5 4b 08  mov   $084b,a
082e: cc 4c 08  mov   $084c,y
0831: bc        inc   a
0832: d0 01     bne   $0835
0834: fc        inc   y
0835: c5 51 08  mov   $0851,a
0838: cc 52 08  mov   $0852,y
083b: 60        clrc
083c: cd 00     mov   x,#$00
083e: eb 0a     mov   y,$0a
0840: d0 02     bne   $0844
0842: 8b 0b     dec   $0b
0844: f5 28 77  mov   a,$7728+x         ; note: these addresses ($7728/9/a, $54d8/9/a) changes dynamically by the code above!
0847: d5 d8 54  mov   $54d8+x,a
084a: f5 29 77  mov   a,$7729+x
084d: d5 d9 54  mov   $54d9+x,a
0850: f5 2a 77  mov   a,$772a+x
0853: d5 da 54  mov   $54da+x,a
0856: 7d        mov   a,x
0857: 88 03     adc   a,#$03
0859: 90 13     bcc   $086e
085b: ac 46 08  inc   $0846
085e: ac 49 08  inc   $0849
0861: ac 4c 08  inc   $084c
0864: ac 4f 08  inc   $084f
0867: ac 52 08  inc   $0852
086a: ac 55 08  inc   $0855
086d: 60        clrc
086e: 5d        mov   x,a
086f: fe d3     dbnz  y,$0844
0871: e4 0b     mov   a,$0b
0873: f0 04     beq   $0879
0875: 8b 0b     dec   $0b
0877: 2f cb     bra   $0844
0879: 6f        ret

087a: 8f 0e 00  mov   $00,#$0e
087d: 8f 00 01  mov   $01,#$00
0880: 3f 20 09  call  $0920
0883: eb 0e     mov   y,$0e
0885: f6 80 46  mov   a,$4680+y
0888: 1c        asl   a
0889: fd        mov   y,a
088a: cd 0f     mov   x,#$0f
088c: bf        mov   a,(x)+
088d: d6 01 47  mov   $4701+y,a
0890: bf        mov   a,(x)+
0891: d6 40 47  mov   $4740+y,a
0894: bf        mov   a,(x)+
0895: d6 41 47  mov   $4741+y,a
0898: bf        mov   a,(x)+
0899: d6 80 47  mov   $4780+y,a
089c: bf        mov   a,(x)+
089d: d6 81 47  mov   $4781+y,a
08a0: 6f        ret

08a1: cd 00     mov   x,#$00
08a3: e7 f5     mov   a,($f5+x)
08a5: c4 f7     mov   $f7,a
08a7: 5f 15 0a  jmp   $0a15

08aa: cd 00     mov   x,#$00
08ac: e7 f5     mov   a,($f5+x)
08ae: c4 f7     mov   $f7,a
08b0: e4 f7     mov   a,$f7
08b2: c7 f5     mov   ($f5+x),a
08b4: 5f 15 0a  jmp   $0a15

08b7: fa f5 f2  mov   ($f2),($f5)
08ba: fa f3 f7  mov   ($f7),($f3)
08bd: 5f 15 0a  jmp   $0a15

08c0: fa f5 f2  mov   ($f2),($f5)
08c3: fa f7 f3  mov   ($f3),($f7)
08c6: 5f 1f 0a  jmp   $0a1f

08c9: 3f 7b 05  call  $057b
08cc: 3f 95 0a  call  $0a95
08cf: 8f 00 52  mov   $52,#$00
08d2: 6f        ret

08d3: cd 0e     mov   x,#$0e
08d5: eb f5     mov   y,$f5
08d7: f6 00 01  mov   a,$0100+y
08da: af        mov   (x)+,a
08db: f6 24 18  mov   a,$1824+y
08de: af        mov   (x)+,a
08df: f6 54 18  mov   a,$1854+y
08e2: af        mov   (x)+,a
08e3: dd        mov   a,y
08e4: 1c        asl   a
08e5: fd        mov   y,a
08e6: f6 25 1b  mov   a,$1b25+y
08e9: af        mov   (x)+,a
08ea: f6 85 18  mov   a,$1885+y
08ed: c6        mov   (x),a
08ee: 5f f0 09  jmp   $09f0

08f1: cd 07     mov   x,#$07
08f3: 7d        mov   a,x
08f4: 9f        xcn   a
08f5: 04 f5     or    a,$f5
08f7: c4 f2     mov   $f2,a
08f9: e4 f3     mov   a,$f3
08fb: d4 0e     mov   $0e+x,a
08fd: 1d        dec   x
08fe: 10 f3     bpl   $08f3
0900: 5f f0 09  jmp   $09f0

0903: fa 1a 0e  mov   ($0e),($1a)
0906: 8f e2 11  mov   $11,#$e2
0909: 8f 3c 0f  mov   $0f,#$3c
090c: 8f 1e 10  mov   $10,#$1e
090f: 5f f0 09  jmp   $09f0

0912: ba 17     movw  ya,$17
0914: da 00     movw  $00,ya
0916: 5f 20 09  jmp   $0920

0919: ba 17     movw  ya,$17
091b: da 00     movw  $00,ya
091d: 5f 79 09  jmp   $0979

0920: ba f6     movw  ya,$f6
0922: da 06     movw  $06,ya
0924: e4 f4     mov   a,$f4
0926: 2e f4 fb  cbne  $f4,$0924
0929: c4 f4     mov   $f4,a
092b: 5d        mov   x,a
092c: ba 00     movw  ya,$00
092e: 7a 06     addw  ya,$06
0930: 7a 06     addw  ya,$06
0932: da 17     movw  $17,ya
0934: ba 00     movw  ya,$00
0936: c5 52 09  mov   $0952,a
0939: cc 53 09  mov   $0953,y
093c: c5 58 09  mov   $0958,a
093f: cc 59 09  mov   $0959,y
0942: 7d        mov   a,x
0943: eb 06     mov   y,$06
0945: d0 02     bne   $0949
0947: 8b 07     dec   $07
0949: cd 00     mov   x,#$00
094b: 64 f4     cmp   a,$f4
094d: f0 fc     beq   $094b
094f: e4 f6     mov   a,$f6
0951: d5 00 24  mov   $2400+x,a         ; note: these addresses ($2400) changes dynamically by the code above!
0954: 3d        inc   x
0955: e4 f7     mov   a,$f7
0957: d5 00 24  mov   $2400+x,a
095a: e4 f4     mov   a,$f4
095c: 2e f4 fb  cbne  $f4,$095a
095f: c4 f4     mov   $f4,a
0961: 3d        inc   x
0962: d0 06     bne   $096a
0964: ac 53 09  inc   $0953
0967: ac 59 09  inc   $0959
096a: fe df     dbnz  y,$094b
096c: eb 07     mov   y,$07
096e: f0 06     beq   $0976
0970: 8b 07     dec   $07
0972: 8d 00     mov   y,#$00
0974: 2f d5     bra   $094b
0976: 5f 1f 0a  jmp   $0a1f

0979: ba f6     movw  ya,$f6
097b: da 06     movw  $06,ya
097d: e4 f4     mov   a,$f4
097f: 2e f4 fb  cbne  $f4,$097d
0982: c4 f4     mov   $f4,a
0984: c4 16     mov   $16,a
0986: ba 00     movw  ya,$00
0988: c5 bd 09  mov   $09bd,a
098b: cc be 09  mov   $09be,y
098e: bc        inc   a
098f: d0 01     bne   $0992
0991: fc        inc   y
0992: c5 c2 09  mov   $09c2,a
0995: cc c3 09  mov   $09c3,y
0998: bc        inc   a
0999: d0 01     bne   $099c
099b: fc        inc   y
099c: c5 c7 09  mov   $09c7,a
099f: cc c8 09  mov   $09c8,y
09a2: ba 00     movw  ya,$00
09a4: 7a 06     addw  ya,$06
09a6: 7a 06     addw  ya,$06
09a8: 7a 06     addw  ya,$06
09aa: da 17     movw  $17,ya
09ac: eb 06     mov   y,$06
09ae: d0 02     bne   $09b2
09b0: 8b 07     dec   $07
09b2: cd 00     mov   x,#$00
09b4: e4 16     mov   a,$16
09b6: 64 f4     cmp   a,$f4
09b8: f0 fc     beq   $09b6
09ba: e4 f5     mov   a,$f5
09bc: d5 6e ad  mov   $ad6e+x,a         ; note: these addresses ($ad6e/f/70) changes dynamically by the code above!
09bf: e4 f6     mov   a,$f6
09c1: d5 6f ad  mov   $ad6f+x,a
09c4: e4 f7     mov   a,$f7
09c6: d5 70 ad  mov   $ad70+x,a
09c9: e4 f4     mov   a,$f4
09cb: 2e f4 fb  cbne  $f4,$09c9
09ce: c4 f4     mov   $f4,a
09d0: c4 16     mov   $16,a
09d2: 60        clrc
09d3: 7d        mov   a,x
09d4: 88 03     adc   a,#$03
09d6: 90 09     bcc   $09e1
09d8: ac be 09  inc   $09be
09db: ac c3 09  inc   $09c3
09de: ac c8 09  inc   $09c8
09e1: 5d        mov   x,a
09e2: fe d0     dbnz  y,$09b4
09e4: eb 07     mov   y,$07
09e6: f0 06     beq   $09ee
09e8: 8b 07     dec   $07
09ea: 8d 00     mov   y,#$00
09ec: 2f c6     bra   $09b4
09ee: 2f 2f     bra   $0a1f
09f0: cd 0e     mov   x,#$0e
09f2: 8d 04     mov   y,#$04
09f4: bf        mov   a,(x)+
09f5: c4 f5     mov   $f5,a
09f7: bf        mov   a,(x)+
09f8: c4 f6     mov   $f6,a
09fa: e4 f4     mov   a,$f4
09fc: 2e f4 fb  cbne  $f4,$09fa
09ff: c4 f4     mov   $f4,a
0a01: 64 f4     cmp   a,$f4
0a03: f0 fc     beq   $0a01
0a05: fe ed     dbnz  y,$09f4
0a07: 2f 16     bra   $0a1f
0a09: e4 f4     mov   a,$f4
0a0b: 2e f4 fb  cbne  $f4,$0a09
0a0e: c4 f4     mov   $f4,a
0a10: 64 f4     cmp   a,$f4
0a12: f0 fc     beq   $0a10
0a14: 6f        ret

0a15: cd f4     mov   x,#$f4
0a17: e6        mov   a,(x)
0a18: 66        cmp   a,(x)
0a19: d0 fc     bne   $0a17
0a1b: c6        mov   (x),a
0a1c: 66        cmp   a,(x)
0a1d: f0 fd     beq   $0a1c
0a1f: 8f ff f4  mov   $f4,#$ff
0a22: e4 f4     mov   a,$f4
0a24: d0 fc     bne   $0a22
0a26: 8f 00 f4  mov   $f4,#$00
0a29: fa 52 f5  mov   ($f5),($52)
0a2c: fa 59 f6  mov   ($f6),($59)
0a2f: fa 69 f7  mov   ($f7),($69)
0a32: 6f        ret

0a33: 8f 00 23  mov   $23,#$00
0a36: f8 1f     mov   x,$1f
0a38: f5 fd 1b  mov   a,$1bfd+x
0a3b: f0 4a     beq   $0a87
0a3d: eb 1e     mov   y,$1e
0a3f: e8 ff     mov   a,#$ff
0a41: d6 5c 1c  mov   $1c5c+y,a
0a44: d6 54 18  mov   $1854+y,a
0a47: e4 06     mov   a,$06
0a49: 08 02     or    a,#$02
0a4b: d6 00 01  mov   $0100+y,a
0a4e: e8 0f     mov   a,#$0f
0a50: d6 6c 18  mov   $186c+y,a
0a53: e8 00     mov   a,#$00
0a55: d6 18 01  mov   $0118+y,a
0a58: d6 30 01  mov   $0130+y,a
0a5b: d6 1c 1a  mov   $1a1c+y,a
0a5e: d5 2d 1c  mov   $1c2d+x,a
0a61: d5 ec 19  mov   $19ec+x,a
0a64: d5 ed 19  mov   $19ed+x,a
0a67: d5 34 1a  mov   $1a34+x,a
0a6a: d5 24 1b  mov   $1b24+x,a
0a6d: e8 64     mov   a,#$64
0a6f: d5 35 1a  mov   $1a35+x,a
0a72: e4 07     mov   a,$07
0a74: d5 25 1b  mov   $1b25+x,a
0a77: e8 06     mov   a,#$06
0a79: d6 3c 18  mov   $183c+y,a
0a7c: e8 04     mov   a,#$04
0a7e: d6 24 18  mov   $1824+y,a
0a81: 3f 60 12  call  $1260
0a84: 09 20 23  or    ($23),($20)
0a87: 0b 20     asl   $20
0a89: ab 1e     inc   $1e
0a8b: 98 02 1f  adc   $1f,#$02
0a8e: 98 10 21  adc   $21,#$10
0a91: 6e 1c a2  dbnz  $1c,$0a36
0a94: 6f        ret

0a95: e8 ff     mov   a,#$ff
0a97: 8d 80     mov   y,#$80
0a99: d6 7f 46  mov   $467f+y,a
0a9c: fe fb     dbnz  y,$0a99
0a9e: 8d 40     mov   y,#$40
0aa0: d6 ff 46  mov   $46ff+y,a
0aa3: fe fb     dbnz  y,$0aa0
0aa5: e8 00     mov   a,#$00
0aa7: c4 1b     mov   $1b,a
0aa9: 8d 48     mov   y,#$48
0aab: da 19     movw  $19,ya
0aad: 6f        ret

0aae: 69 3e 50  cmp   ($50),($3e)
0ab1: f0 14     beq   $0ac7
0ab3: 90 04     bcc   $0ab9
0ab5: 8b 50     dec   $50
0ab7: 2f 02     bra   $0abb
0ab9: ab 50     inc   $50
0abb: fa 50 2f  mov   ($2f),($50)
0abe: fa 4a 22  mov   ($22),($4a)
0ac1: e8 10     mov   a,#$10
0ac3: 3f 16 0b  call  $0b16
0ac6: 6f        ret

0ac7: 32 39     clr1  $39
0ac9: e4 50     mov   a,$50
0acb: d0 06     bne   $0ad3
0acd: 3f 5a 05  call  $055a
0ad0: 8f 7f 50  mov   $50,#$7f
0ad3: 6f        ret

0ad4: 60        clrc
0ad5: fa 42 06  mov   ($06),($42)
0ad8: 98 80 06  adc   $06,#$80
0adb: 60        clrc
0adc: e4 60     mov   a,$60
0ade: 88 80     adc   a,#$80
0ae0: 64 06     cmp   a,$06
0ae2: f0 10     beq   $0af4
0ae4: 90 04     bcc   $0aea
0ae6: 8b 60     dec   $60
0ae8: 2f 02     bra   $0aec
0aea: ab 60     inc   $60
0aec: 60        clrc
0aed: e4 5f     mov   a,$5f
0aef: 84 60     adc   a,$60
0af1: c4 fa     mov   $fa,a
0af3: 6f        ret

0af4: 12 3a     clr0  $3a
0af6: 6f        ret

0af7: 69 43 61  cmp   ($61),($43)
0afa: f0 17     beq   $0b13
0afc: 90 04     bcc   $0b02
0afe: 8b 61     dec   $61
0b00: 2f 02     bra   $0b04
0b02: ab 61     inc   $61
0b04: fa 61 2f  mov   ($2f),($61)
0b07: fa 4a 22  mov   ($22),($4a)
0b0a: 58 ff 22  eor   $22,#$ff
0b0d: e4 1d     mov   a,$1d
0b0f: 3f 16 0b  call  $0b16
0b12: 6f        ret

0b13: 32 3a     clr1  $3a
0b15: 6f        ret

0b16: 3f 8a 15  call  $158a
0b19: 8f 08 1c  mov   $1c,#$08
0b1c: f8 1e     mov   x,$1e
0b1e: f4 9a     mov   a,$9a+x
0b20: 3f 3a 15  call  $153a
0b23: 0b 20     asl   $20
0b25: ab 1e     inc   $1e
0b27: 98 02 1f  adc   $1f,#$02
0b2a: 98 10 21  adc   $21,#$10
0b2d: 6e 1c ec  dbnz  $1c,$0b1c
0b30: 6f        ret

0b31: e4 63     mov   a,$63
0b33: 60        clrc
0b34: 88 80     adc   a,#$80
0b36: 64 44     cmp   a,$44
0b38: f0 16     beq   $0b50
0b3a: 90 0a     bcc   $0b46
0b3c: 8d ff     mov   y,#$ff
0b3e: e8 e0     mov   a,#$e0
0b40: 7a 62     addw  ya,$62
0b42: da 62     movw  $62,ya
0b44: 2f 12     bra   $0b58
0b46: 8d 00     mov   y,#$00
0b48: e8 20     mov   a,#$20
0b4a: 7a 62     addw  ya,$62
0b4c: da 62     movw  $62,ya
0b4e: 2f 08     bra   $0b58
0b50: 72 3a     clr3  $3a
0b52: e8 00     mov   a,#$00
0b54: c4 62     mov   $62,a
0b56: eb 63     mov   y,$63
0b58: da 30     movw  $30,ya
0b5a: fa 4a 22  mov   ($22),($4a)
0b5d: 58 ff 22  eor   $22,#$ff
0b60: e4 1d     mov   a,$1d
0b62: 3f 66 0b  call  $0b66
0b65: 6f        ret

0b66: 3f 8a 15  call  $158a
0b69: 8f 08 1c  mov   $1c,#$08
0b6c: 3f 68 0f  call  $0f68
0b6f: 0b 20     asl   $20
0b71: ab 1e     inc   $1e
0b73: 98 02 1f  adc   $1f,#$02
0b76: 98 10 21  adc   $21,#$10
0b79: 6e 1c f0  dbnz  $1c,$0b6c
0b7c: 6f        ret

0b7d: 8f 00 25  mov   $25,#$00
0b80: e4 23     mov   a,$23
0b82: 24 20     and   a,$20
0b84: f0 35     beq   $0bbb
0b86: 3f d5 0b  call  $0bd5
0b89: 03 26 43  bbs0  $26,$0bcf
0b8c: f8 1f     mov   x,$1f
0b8e: f5 fd 1b  mov   a,$1bfd+x
0b91: fd        mov   y,a
0b92: f5 fc 1b  mov   a,$1bfc+x
0b95: da 29     movw  $29,ya
0b97: eb 1e     mov   y,$1e
0b99: cd 00     mov   x,#$00
0b9b: e7 29     mov   a,($29+x)
0b9d: 3a 29     incw  $29
0b9f: 68 c4     cmp   a,#$c4
0ba1: 90 2f     bcc   $0bd2
0ba3: 3f 10 10  call  $1010
0ba6: e4 23     mov   a,$23
0ba8: 24 20     and   a,$20
0baa: d0 eb     bne   $0b97
0bac: f8 1f     mov   x,$1f
0bae: e4 29     mov   a,$29
0bb0: d5 fc 1b  mov   $1bfc+x,a
0bb3: e4 2a     mov   a,$2a
0bb5: d5 fd 1b  mov   $1bfd+x,a
0bb8: 3f fa 0b  call  $0bfa
0bbb: 0b 20     asl   $20
0bbd: ab 1e     inc   $1e
0bbf: 98 02 1f  adc   $1f,#$02
0bc2: 98 10 21  adc   $21,#$10
0bc5: 6e 1c b8  dbnz  $1c,$0b80
0bc8: 8f 4c f2  mov   $f2,#$4c
0bcb: fa 25 f3  mov   ($f3),($25)
0bce: 6f        ret

0bcf: 5f 22 0c  jmp   $0c22

0bd2: 5f c4 0d  jmp   $0dc4

0bd5: f8 1e     mov   x,$1e
0bd7: f5 00 01  mov   a,$0100+x
0bda: c4 26     mov   $26,a
0bdc: f5 30 01  mov   a,$0130+x
0bdf: fd        mov   y,a
0be0: f5 18 01  mov   a,$0118+x
0be3: da 27     movw  $27,ya
0be5: f8 1f     mov   x,$1f
0be7: f5 85 18  mov   a,$1885+x
0bea: fd        mov   y,a
0beb: f5 84 18  mov   a,$1884+x
0bee: da 2b     movw  $2b,ya
0bf0: f5 b5 18  mov   a,$18b5+x
0bf3: fd        mov   y,a
0bf4: f5 b4 18  mov   a,$18b4+x
0bf7: da 2d     movw  $2d,ya
0bf9: 6f        ret

0bfa: f8 1f     mov   x,$1f
0bfc: e4 2b     mov   a,$2b
0bfe: d5 84 18  mov   $1884+x,a
0c01: e4 2c     mov   a,$2c
0c03: d5 85 18  mov   $1885+x,a
0c06: e4 2d     mov   a,$2d
0c08: d5 b4 18  mov   $18b4+x,a
0c0b: e4 2e     mov   a,$2e
0c0d: d5 b5 18  mov   $18b5+x,a
0c10: f8 1e     mov   x,$1e
0c12: e4 26     mov   a,$26
0c14: d5 00 01  mov   $0100+x,a
0c17: e4 27     mov   a,$27
0c19: d5 18 01  mov   $0118+x,a
0c1c: e4 28     mov   a,$28
0c1e: d5 30 01  mov   $0130+x,a
0c21: 6f        ret

0c22: e4 27     mov   a,$27
0c24: 28 09     and   a,#$09
0c26: f0 37     beq   $0c5f
0c28: 13 27 12  bbc0  $27,$0c3d
0c2b: f8 1e     mov   x,$1e
0c2d: f5 bc 19  mov   a,$19bc+x
0c30: f0 06     beq   $0c38
0c32: 9c        dec   a
0c33: d5 bc 19  mov   $19bc+x,a
0c36: 2f 05     bra   $0c3d
0c38: 3f 21 0d  call  $0d21
0c3b: e2 27     set7  $27
0c3d: 73 27 17  bbc3  $27,$0c57
0c40: f8 1e     mov   x,$1e
0c42: f5 44 19  mov   a,$1944+x
0c45: d0 07     bne   $0c4e
0c47: a3 27 04  bbs5  $27,$0c4e
0c4a: 72 27     clr3  $27
0c4c: 2f 09     bra   $0c57
0c4e: 9c        dec   a
0c4f: d5 44 19  mov   $1944+x,a
0c52: 3f 4c 0d  call  $0d4c
0c55: e2 27     set7  $27
0c57: f3 27 05  bbc7  $27,$0c5f
0c5a: f2 27     clr7  $27
0c5c: 3f 73 0f  call  $0f73             ; update pitch reg value
0c5f: e4 28     mov   a,$28
0c61: 28 59     and   a,#$59
0c63: f0 7d     beq   $0ce2
0c65: 13 28 12  bbc0  $28,$0c7a
0c68: f8 1e     mov   x,$1e
0c6a: f5 f4 1a  mov   a,$1af4+x
0c6d: f0 06     beq   $0c75
0c6f: 9c        dec   a
0c70: d5 f4 1a  mov   $1af4+x,a
0c73: 2f 05     bra   $0c7a
0c75: 3f 69 0d  call  $0d69
0c78: e2 28     set7  $28
0c7a: 73 28 28  bbc3  $28,$0ca5
0c7d: f8 1e     mov   x,$1e
0c7f: f5 94 1a  mov   a,$1a94+x
0c82: f0 1f     beq   $0ca3
0c84: 9c        dec   a
0c85: d5 94 1a  mov   $1a94+x,a
0c88: f8 1f     mov   x,$1f
0c8a: 60        clrc
0c8b: f5 34 1a  mov   a,$1a34+x
0c8e: 95 64 1a  adc   a,$1a64+x
0c91: d5 34 1a  mov   $1a34+x,a
0c94: f5 35 1a  mov   a,$1a35+x
0c97: 95 65 1a  adc   a,$1a65+x
0c9a: 28 7f     and   a,#$7f
0c9c: d5 35 1a  mov   $1a35+x,a
0c9f: e2 28     set7  $28
0ca1: 2f 02     bra   $0ca5
0ca3: 72 28     clr3  $28
0ca5: d3 28 26  bbc6  $28,$0cce
0ca8: f8 1e     mov   x,$1e
0caa: f5 84 1b  mov   a,$1b84+x
0cad: f0 1d     beq   $0ccc
0caf: 9c        dec   a
0cb0: d5 84 1b  mov   $1b84+x,a
0cb3: f8 1f     mov   x,$1f
0cb5: 60        clrc
0cb6: f5 24 1b  mov   a,$1b24+x
0cb9: 95 54 1b  adc   a,$1b54+x
0cbc: d5 24 1b  mov   $1b24+x,a
0cbf: f5 25 1b  mov   a,$1b25+x
0cc2: 95 55 1b  adc   a,$1b55+x
0cc5: d5 25 1b  mov   $1b25+x,a
0cc8: e2 28     set7  $28
0cca: 2f 0a     bra   $0cd6
0ccc: d2 28     clr6  $28
0cce: 93 28 05  bbc4  $28,$0cd6
0cd1: 3f 8c 0d  call  $0d8c
0cd4: e2 28     set7  $28
0cd6: f3 28 09  bbc7  $28,$0ce2
0cd9: f2 28     clr7  $28
0cdb: f8 1e     mov   x,$1e
0cdd: f4 9a     mov   a,$9a+x
0cdf: 3f 3a 15  call  $153a
0ce2: f8 1e     mov   x,$1e
0ce4: 43 26 2d  bbs2  $26,$0d14
0ce7: 9b ca     dec   $ca+x
0ce9: d0 1f     bne   $0d0a
0ceb: 22 26     set1  $26
0ced: e4 20     mov   a,$20
0cef: 24 22     and   a,$22
0cf1: f0 17     beq   $0d0a
0cf3: 83 26 07  bbs4  $26,$0cfd
0cf6: 8f 5c f2  mov   $f2,#$5c
0cf9: c4 f3     mov   $f3,a
0cfb: 2f 0d     bra   $0d0a
0cfd: eb 1f     mov   y,$1f
0cff: e4 21     mov   a,$21
0d01: 08 06     or    a,#$06
0d03: c4 f2     mov   $f2,a
0d05: f6 61 01  mov   a,$0161+y
0d08: c4 f3     mov   $f3,a
0d0a: 9b b2     dec   $b2+x
0d0c: d0 10     bne   $0d1e
0d0e: 38 fc 26  and   $26,#$fc
0d11: 5f 8c 0b  jmp   $0b8c

0d14: 9b b2     dec   $b2+x
0d16: d0 06     bne   $0d1e
0d18: 38 fc 26  and   $26,#$fc
0d1b: 5f 8c 0b  jmp   $0b8c

0d1e: 5f b8 0b  jmp   $0bb8

0d21: f8 1f     mov   x,$1f
0d23: f5 5d 19  mov   a,$195d+x
0d26: fd        mov   y,a
0d27: f5 5c 19  mov   a,$195c+x
0d2a: da 0e     movw  $0e,ya
0d2c: ba 2b     movw  ya,$2b
0d2e: 43 27 04  bbs2  $27,$0d35
0d31: 7a 0e     addw  ya,$0e
0d33: 2f 02     bra   $0d37
0d35: 9a 0e     subw  ya,$0e
0d37: da 2b     movw  $2b,ya
0d39: f8 1e     mov   x,$1e
0d3b: f5 8c 19  mov   a,$198c+x
0d3e: 9c        dec   a
0d3f: d0 07     bne   $0d48
0d41: ea 27 40  not1  $0804,7
0d44: f5 a4 19  mov   a,$19a4+x
0d47: 1c        asl   a
0d48: d5 8c 19  mov   $198c+x,a
0d4b: 6f        ret

0d4c: f8 1f     mov   x,$1f
0d4e: f5 15 19  mov   a,$1915+x
0d51: fd        mov   y,a
0d52: f5 14 19  mov   a,$1914+x
0d55: 7a 2d     addw  ya,$2d
0d57: 90 02     bcc   $0d5b
0d59: 3a 2b     incw  $2b
0d5b: da 2d     movw  $2d,ya
0d5d: f5 e5 18  mov   a,$18e5+x
0d60: fd        mov   y,a
0d61: f5 e4 18  mov   a,$18e4+x
0d64: 7a 2b     addw  ya,$2b
0d66: da 2b     movw  $2b,ya
0d68: 6f        ret

0d69: f4 9a     mov   a,$9a+x
0d6b: 53 28 06  bbc2  $28,$0d74
0d6e: 60        clrc
0d6f: 95 ac 1a  adc   a,$1aac+x
0d72: 2f 04     bra   $0d78
0d74: 80        setc
0d75: b5 ac 1a  sbc   a,$1aac+x
0d78: 28 7f     and   a,#$7f
0d7a: d4 9a     mov   $9a+x,a
0d7c: f5 c4 1a  mov   a,$1ac4+x
0d7f: 9c        dec   a
0d80: d0 06     bne   $0d88
0d82: ea 28 40  not1  $0805,0
0d85: f5 dc 1a  mov   a,$1adc+x
0d88: d5 c4 1a  mov   $1ac4+x,a
0d8b: 6f        ret

0d8c: f8 1f     mov   x,$1f
0d8e: f5 cd 1b  mov   a,$1bcd+x
0d91: fd        mov   y,a
0d92: f5 cc 1b  mov   a,$1bcc+x
0d95: da 0e     movw  $0e,ya
0d97: f5 25 1b  mov   a,$1b25+x
0d9a: fd        mov   y,a
0d9b: f5 24 1b  mov   a,$1b24+x
0d9e: a3 28 06  bbs5  $28,$0da7
0da1: 7a 0e     addw  ya,$0e
0da3: b0 0d     bcs   $0db2
0da5: 2f 04     bra   $0dab
0da7: 9a 0e     subw  ya,$0e
0da9: 90 07     bcc   $0db2
0dab: d5 24 1b  mov   $1b24+x,a
0dae: dd        mov   a,y
0daf: d5 25 1b  mov   $1b25+x,a
0db2: eb 1e     mov   y,$1e
0db4: f6 9c 1b  mov   a,$1b9c+y
0db7: 9c        dec   a
0db8: d0 06     bne   $0dc0
0dba: ea 28 a0  not1  $1405,0
0dbd: f6 b4 1b  mov   a,$1bb4+y
0dc0: d6 9c 1b  mov   $1b9c+y,a
0dc3: 6f        ret

0dc4: 8d 00     mov   y,#$00
0dc6: cb 08     mov   $08,y
0dc8: cd 0e     mov   x,#$0e
0dca: 9e        div   ya,x
0dcb: c4 06     mov   $06,a
0dcd: cb 09     mov   $09,y
0dcf: ad 0d     cmp   y,#$0d
0dd1: f0 06     beq   $0dd9
0dd3: ad 0c     cmp   y,#$0c
0dd5: f0 07     beq   $0dde
0dd7: 2f 0b     bra   $0de4
0dd9: 02 26     set0  $26
0ddb: 5f 9f 0e  jmp   $0e9f

0dde: 18 03 26  or    $26,#$03
0de1: 5f 9f 0e  jmp   $0e9f

0de4: 02 26     set0  $26
0de6: 32 26     clr1  $26
0de8: eb 1e     mov   y,$1e
0dea: b3 26 05  bbc5  $26,$0df2
0ded: 3f e9 0f  call  $0fe9
0df0: 2f 23     bra   $0e15
0df2: f6 3c 18  mov   a,$183c+y
0df5: 8d 0c     mov   y,#$0c
0df7: cf        mul   ya
0df8: 60        clrc
0df9: 84 09     adc   a,$09
0dfb: c4 09     mov   $09,a
0dfd: eb 1e     mov   y,$1e
0dff: f6 54 18  mov   a,$1854+y
0e02: c4 07     mov   $07,a
0e04: 2e 09 03  cbne  $09,$0e0a
0e07: 43 26 77  bbs2  $26,$0e81
0e0a: e4 09     mov   a,$09
0e0c: d6 54 18  mov   $1854+y,a
0e0f: f6 a4 19  mov   a,$19a4+y
0e12: d6 8c 19  mov   $198c+y,a
0e15: f6 1c 1a  mov   a,$1a1c+y
0e18: f0 0f     beq   $0e29
0e1a: c4 0a     mov   $0a,a
0e1c: 80        setc
0e1d: e4 09     mov   a,$09
0e1f: a4 07     sbc   a,$07
0e21: c4 0b     mov   $0b,a
0e23: 3f 01 13  call  $1301
0e26: fa 07 09  mov   ($09),($07)
0e29: f8 1f     mov   x,$1f
0e2b: f5 91 01  mov   a,$0191+x
0e2e: fd        mov   y,a
0e2f: f5 90 01  mov   a,$0190+x
0e32: 7a 08     addw  ya,$08            ; add per-instrument tuning
0e34: da 2b     movw  $2b,ya
0e36: f5 ed 19  mov   a,$19ed+x
0e39: fd        mov   y,a
0e3a: f5 ec 19  mov   a,$19ec+x
0e3d: 7a 2b     addw  ya,$2b            ; add channel transpose/tuning
0e3f: da 2b     movw  $2b,ya
0e41: 3f 73 0f  call  $0f73             ; update pitch reg value
0e44: f8 1e     mov   x,$1e
0e46: 43 26 38  bbs2  $26,$0e81
0e49: e4 20     mov   a,$20
0e4b: 24 22     and   a,$22
0e4d: 04 25     or    a,$25
0e4f: c4 25     mov   $25,a
0e51: 8f 5c f2  mov   $f2,#$5c
0e54: 8f 00 f3  mov   $f3,#$00
0e57: f5 48 01  mov   a,$0148+x
0e5a: d4 9a     mov   $9a+x,a
0e5c: 13 27 0c  bbc0  $27,$0e6b
0e5f: aa 27 20  mov1  c,$0404,7
0e62: ca 27 40  mov1  $0804,7,c
0e65: f5 d4 19  mov   a,$19d4+x
0e68: d5 bc 19  mov   $19bc+x,a
0e6b: 13 28 13  bbc0  $28,$0e81
0e6e: 52 28     clr2  $28
0e70: f5 dc 1a  mov   a,$1adc+x
0e73: d5 c4 1a  mov   $1ac4+x,a
0e76: f5 0c 1b  mov   a,$1b0c+x
0e79: d5 f4 1a  mov   $1af4+x,a
0e7c: f4 9a     mov   a,$9a+x
0e7e: 3f 3a 15  call  $153a
0e81: e4 20     mov   a,$20
0e83: 24 22     and   a,$22
0e85: f0 18     beq   $0e9f
0e87: e4 24     mov   a,$24
0e89: 24 20     and   a,$20
0e8b: f0 03     beq   $0e90
0e8d: 3f fd 14  call  $14fd
0e90: 93 26 0c  bbc4  $26,$0e9f
0e93: e4 21     mov   a,$21
0e95: 08 06     or    a,#$06
0e97: c4 f2     mov   $f2,a
0e99: e4 f3     mov   a,$f3
0e9b: 28 e0     and   a,#$e0
0e9d: c4 f3     mov   $f3,a
0e9f: f8 1e     mov   x,$1e
0ea1: 78 0d 06  cmp   $06,#$0d
0ea4: f0 0a     beq   $0eb0
0ea6: eb 06     mov   y,$06
0ea8: f6 f5 17  mov   a,$17f5+y
0eab: fd        mov   y,a
0eac: db b2     mov   $b2+x,y
0eae: 2f 09     bra   $0eb9
0eb0: 8d 00     mov   y,#$00
0eb2: f7 29     mov   a,($29)+y
0eb4: 3a 29     incw  $29
0eb6: fd        mov   y,a
0eb7: d4 b2     mov   $b2+x,a
0eb9: f5 6c 18  mov   a,$186c+x
0ebc: f0 0a     beq   $0ec8
0ebe: 68 0f     cmp   a,#$0f
0ec0: f0 09     beq   $0ecb
0ec2: 9f        xcn   a
0ec3: cf        mul   ya
0ec4: dd        mov   a,y
0ec5: bc        inc   a
0ec6: 2f 09     bra   $0ed1
0ec8: dd        mov   a,y
0ec9: 2f 06     bra   $0ed1
0ecb: dd        mov   a,y
0ecc: 68 01     cmp   a,#$01
0ece: f0 01     beq   $0ed1
0ed0: 9c        dec   a
0ed1: d4 ca     mov   $ca+x,a
0ed3: 23 26 21  bbs1  $26,$0ef7
0ed6: f5 5c 1c  mov   a,$1c5c+x
0ed9: c4 06     mov   $06,a
0edb: ba 29     movw  ya,$29
0edd: da 00     movw  $00,ya
0edf: 8d 00     mov   y,#$00
0ee1: f7 00     mov   a,($00)+y
0ee3: 68 c4     cmp   a,#$c4
0ee5: b0 1a     bcs   $0f01
0ee7: cd 0e     mov   x,#$0e
0ee9: 8d 00     mov   y,#$00
0eeb: 9e        div   ya,x
0eec: ad 0d     cmp   y,#$0d
0eee: f0 0c     beq   $0efc
0ef0: ad 0c     cmp   y,#$0c
0ef2: f0 03     beq   $0ef7
0ef4: 63 26 05  bbs3  $26,$0efc
0ef7: 52 26     clr2  $26
0ef9: 5f ac 0b  jmp   $0bac

0efc: 42 26     set2  $26
0efe: 5f ac 0b  jmp   $0bac

0f01: 80        setc
0f02: a8 c4     sbc   a,#$c4
0f04: 5d        mov   x,a
0f05: f5 b9 17  mov   a,$17b9+x
0f08: c4 04     mov   $04,a
0f0a: 9f        xcn   a
0f0b: 28 0f     and   a,#$0f
0f0d: 1c        asl   a
0f0e: 5d        mov   x,a
0f0f: 1f 5c 0f  jmp   ($0f5c+x)

0f12: 60        clrc
0f13: 38 07 04  and   $04,#$07
0f16: dd        mov   a,y
0f17: 84 04     adc   a,$04
0f19: fd        mov   y,a
0f1a: 2f c5     bra   $0ee1
0f1c: f8 1f     mov   x,$1f
0f1e: f5 2d 1c  mov   a,$1c2d+x
0f21: f0 d4     beq   $0ef7
0f23: fd        mov   y,a
0f24: f5 2c 1c  mov   a,$1c2c+x
0f27: da 00     movw  $00,ya
0f29: 2f b4     bra   $0edf
0f2b: e4 06     mov   a,$06
0f2d: 3f 5e 16  call  $165e
0f30: f5 74 1c  mov   a,$1c74+x
0f33: f0 22     beq   $0f57
0f35: f5 05 1d  mov   a,$1d05+x
0f38: fd        mov   y,a
0f39: f5 04 1d  mov   a,$1d04+x
0f3c: da 00     movw  $00,ya
0f3e: 2f 9f     bra   $0edf
0f40: e4 06     mov   a,$06
0f42: 3f 5e 16  call  $165e
0f45: f5 74 1c  mov   a,$1c74+x
0f48: d0 0f     bne   $0f59
0f4a: f5 95 1d  mov   a,$1d95+x
0f4d: fd        mov   y,a
0f4e: f5 94 1d  mov   a,$1d94+x
0f51: da 00     movw  $00,ya
0f53: 8b 06     dec   $06
0f55: 2f 88     bra   $0edf
0f57: 8b 06     dec   $06
0f59: fc        inc   y
0f5a: 2f 85     bra   $0ee1

0f5c: dw $0f12  ; 
0f5e: dw $0efc  ; 
0f60: dw $0ef7  ; 
0f62: dw $0f1c  ; 
0f64: dw $0f2b  ; 
0f66: dw $0f40  ; 
0f68: dw $1ff8  ; 

0f6a: f5 85 18  mov   a,$1885+x
0f6d: fd        mov   y,a
0f6e: f5 84 18  mov   a,$1884+x
0f71: da 2b     movw  $2b,ya
; calculate final pitch reg value ($2b = note number)
0f73: e4 20     mov   a,$20
0f75: 24 22     and   a,$22
0f77: f0 6f     beq   $0fe8             ; skip if not changed
0f79: ba 2b     movw  ya,$2b
0f7b: 7a 30     addw  ya,$30            ; add global tuning?
0f7d: da 02     movw  $02,ya            ; $03 = note number, $02 = fraction
0f7f: cd 0c     mov   x,#$0c
0f81: 8d 00     mov   y,#$00
0f83: e4 03     mov   a,$03
0f85: 60        clrc
0f86: 9e        div   ya,x
0f87: c4 08     mov   $08,a             ; octave
0f89: dd        mov   a,y               ; key
0f8a: 1c        asl   a
0f8b: 5d        mov   x,a
0f8c: f5 03 18  mov   a,$1803+x
0f8f: fd        mov   y,a
0f90: f5 02 18  mov   a,$1802+x         ; pitch table
0f93: da 0a     movw  $0a,ya
0f95: da 04     movw  $04,ya
0f97: f5 05 18  mov   a,$1805+x
0f9a: fd        mov   y,a
0f9b: f5 04 18  mov   a,$1804+x
0f9e: 9a 0a     subw  ya,$0a
0fa0: cb 0b     mov   $0b,y
0fa2: eb 02     mov   y,$02
0fa4: cf        mul   ya                ; interpolate by note number fraction
0fa5: 8f 00 0d  mov   $0d,#$00
0fa8: cb 0c     mov   $0c,y
0faa: eb 02     mov   y,$02
0fac: e4 0b     mov   a,$0b
0fae: cf        mul   ya
0faf: 7a 0c     addw  ya,$0c
0fb1: 7a 04     addw  ya,$04
0fb3: da 0c     movw  $0c,ya
0fb5: e4 08     mov   a,$08             ; octave
0fb7: 28 07     and   a,#$07
0fb9: c4 0a     mov   $0a,a
0fbb: 1c        asl   a
0fbc: 84 0a     adc   a,$0a             ; $0a *= 3 (lsr + ror = 3 bytes)
0fbe: c5 c3 0f  mov   $0fc3,a           ; self-modifying code!
0fc1: dd        mov   a,y
0fc2: 2f 09     bra   $0fcd             ; note: destination changes dynamically by the code above!
0fc4: 5c        lsr   a
0fc5: 6b 0c     ror   $0c
0fc7: 5c        lsr   a
0fc8: 6b 0c     ror   $0c
0fca: 5c        lsr   a
0fcb: 6b 0c     ror   $0c
0fcd: 5c        lsr   a
0fce: 6b 0c     ror   $0c
0fd0: 5c        lsr   a
0fd1: 6b 0c     ror   $0c
0fd3: 5c        lsr   a
0fd4: 6b 0c     ror   $0c
0fd6: 5c        lsr   a
0fd7: 6b 0c     ror   $0c
0fd9: fd        mov   y,a
0fda: e4 21     mov   a,$21
0fdc: 08 02     or    a,#$02
0fde: c4 f2     mov   $f2,a
0fe0: fa 0c f3  mov   ($f3),($0c)
0fe3: bc        inc   a
0fe4: c4 f2     mov   $f2,a
0fe6: cb f3     mov   $f3,y             ; set voice $21 pitch from $0C/Y
0fe8: 6f        ret

0fe9: e4 09     mov   a,$09
0feb: d6 54 18  mov   $1854+y,a
0fee: 1c        asl   a
0fef: 1c        asl   a
0ff0: 5d        mov   x,a
0ff1: c4 0a     mov   $0a,a
0ff3: f4 6a     mov   a,$6a+x
0ff5: d6 24 18  mov   $1824+y,a
0ff8: 3f 60 12  call  $1260
0ffb: eb 1f     mov   y,$1f
0ffd: f8 0a     mov   x,$0a
0fff: f4 6d     mov   a,$6d+x
1001: d6 25 1b  mov   $1b25+y,a
1004: eb 1e     mov   y,$1e
1006: f4 6c     mov   a,$6c+x
1008: d6 48 01  mov   $0148+y,a
100b: f4 6b     mov   a,$6b+x
100d: c4 09     mov   $09,a
100f: 6f        ret

1010: 80        setc
1011: a8 c4     sbc   a,#$c4
1013: 2d        push  a
1014: 5d        mov   x,a
1015: f5 b9 17  mov   a,$17b9+x
1018: 28 07     and   a,#$07
101a: c4 06     mov   $06,a
101c: 8d 00     mov   y,#$00
101e: cd 00     mov   x,#$00
1020: 8b 06     dec   $06
1022: f0 09     beq   $102d
1024: f7 29     mov   a,($29)+y
1026: d4 0e     mov   $0e+x,a
1028: 3a 29     incw  $29
102a: 3d        inc   x
102b: 2f f3     bra   $1020
102d: ae        pop   a
102e: 1c        asl   a
102f: 5d        mov   x,a
1030: 60        clrc
1031: eb 1e     mov   y,$1e
1033: 1f 3f 17  jmp   ($173f+x)

; vcmd c4,e1,ea,ab,fd,ff - octave up
1036: f6 3c 18  mov   a,$183c+y
1039: bc        inc   a
103a: 2f 08     bra   $1044

; vcmd c5 - octave down
103c: f6 3c 18  mov   a,$183c+y
103f: 9c        dec   a
1040: 2f 02     bra   $1044

; vcmd c6 - set octave
1042: e4 0e     mov   a,$0e
1044: d6 3c 18  mov   $183c+y,a
1047: 6f        ret

; vcmd c7 - nop
1048: 6f        ret

; vcmd c8 - set noise freq
1049: e4 0e     mov   a,$0e
104b: 2f 05     bra   $1052

; vcmd df - change noise freq
104d: e4 0e     mov   a,$0e
104f: 60        clrc
1050: 84 38     adc   a,$38
1052: 28 1f     and   a,#$1f
1054: 38 e0 38  and   $38,#$e0
1057: 04 38     or    a,$38
1059: c4 38     mov   $38,a
105b: 8f 6c f2  mov   $f2,#$6c
105e: c4 f3     mov   $f3,a
; vcmd c9 - noise on
1060: e3 26 05  bbs7  $26,$1068
1063: 09 20 5b  or    ($5b),($20)
1066: 2f 16     bra   $107e
1068: 09 20 4c  or    ($4c),($20)
106b: 2f 11     bra   $107e

; vcmd ca - noise off
106d: e4 20     mov   a,$20
106f: 48 ff     eor   a,#$ff
1071: e3 26 06  bbs7  $26,$107a
1074: 24 5b     and   a,$5b
1076: c4 5b     mov   $5b,a
1078: 2f 04     bra   $107e
107a: 24 4c     and   a,$4c
107c: c4 4c     mov   $4c,a
107e: 8f 3d f2  mov   $f2,#$3d
1081: e4 4a     mov   a,$4a
1083: 48 ff     eor   a,#$ff
1085: 24 5b     and   a,$5b
1087: 04 4c     or    a,$4c
1089: c4 f3     mov   $f3,a
108b: 6f        ret

; vcmd cb - pitchmod on
108c: e3 26 05  bbs7  $26,$1094
108f: 09 20 5c  or    ($5c),($20)
1092: 2f 19     bra   $10ad
1094: 13 1e f4  bbc0  $1e,$108b
1097: 09 20 4d  or    ($4d),($20)
109a: 2f 11     bra   $10ad

; vcmd cc - pitchmod off
109c: e4 20     mov   a,$20
109e: 48 ff     eor   a,#$ff
10a0: e3 26 06  bbs7  $26,$10a9
10a3: 24 5c     and   a,$5c
10a5: c4 5c     mov   $5c,a
10a7: 2f 04     bra   $10ad
10a9: 24 4d     and   a,$4d
10ab: c4 4d     mov   $4d,a
10ad: 8f 2d f2  mov   $f2,#$2d
10b0: e4 4a     mov   a,$4a
10b2: 48 ff     eor   a,#$ff
10b4: 24 5c     and   a,$5c
10b6: 04 4d     or    a,$4d
10b8: c4 f3     mov   $f3,a
10ba: 6f        ret

; vcmd cd
10bb: e4 0e     mov   a,$0e
10bd: 3f f9 04  call  $04f9
10c0: 2f 07     bra   $10c9

; vcmd ce
10c2: e4 0e     mov   a,$0e
10c4: 3f f9 04  call  $04f9
10c7: bc        inc   a
10c8: bc        inc   a
10c9: da 00     movw  $00,ya
10cb: 8d 00     mov   y,#$00
10cd: f7 00     mov   a,($00)+y
10cf: c4 29     mov   $29,a
10d1: fc        inc   y
10d2: f7 00     mov   a,($00)+y
10d4: c4 2a     mov   $2a,a
10d6: 6f        ret

; vcmd cf - transpose (absolute, signed, 16 = 1 semitone)
10d7: e4 0e     mov   a,$0e             ; signed
; divide by 4 (arithmetic)
10d9: 30 05     bmi   $10e0
10db: 9f        xcn   a
10dc: 28 0f     and   a,#$0f            ; higher 4 bits
10de: 2f 03     bra   $10e3
10e0: 9f        xcn   a
10e1: 08 f0     or    a,#$f0            ; negative padding
; update transpose
10e3: eb 1f     mov   y,$1f
10e5: d6 ed 19  mov   $19ed+y,a         ; transpose
10e8: e4 0e     mov   a,$0e
10ea: 9f        xcn   a
10eb: 28 f0     and   a,#$f0            ; lower 4 bits
10ed: d6 ec 19  mov   $19ec+y,a         ; transpose (fraction)
10f0: 6f        ret

; vcmd d0 - end/return
10f1: f8 1f     mov   x,$1f
10f3: f5 2d 1c  mov   a,$1c2d+x
10f6: c4 2a     mov   $2a,a
10f8: f0 0c     beq   $1106
10fa: f5 2c 1c  mov   a,$1c2c+x
10fd: c4 29     mov   $29,a
10ff: e3 26 03  bbs7  $26,$1105
1102: 09 20 67  or    ($67),($20)
1105: 6f        ret

1106: 8f 5c f2  mov   $f2,#$5c
1109: fa 20 f3  mov   ($f3),($20)
110c: e4 20     mov   a,$20
110e: 48 ff     eor   a,#$ff
1110: 24 23     and   a,$23
1112: c4 23     mov   $23,a
1114: f3 26 0b  bbc7  $26,$1122
1117: 09 20 57  or    ($57),($20)
111a: c4 4a     mov   $4a,a
111c: 3f 9c 10  call  $109c
111f: 3f 6d 10  call  $106d
1122: 6f        ret

; vcmd d1 - tempo
1123: e4 0e     mov   a,$0e
1125: e3 26 0b  bbs7  $26,$1133
1128: c4 5f     mov   $5f,a
112a: 03 37 05  bbs0  $37,$1132
112d: 60        clrc
112e: 84 60     adc   a,$60
1130: c4 fa     mov   $fa,a
1132: 6f        ret

1133: c4 fb     mov   $fb,a
1135: c4 4f     mov   $4f,a
1137: 6f        ret

; vcmd d2 - set timer 1 freq
1138: fa 0e 69  mov   ($69),($0e)
113b: 6f        ret

; vcmd d3 - change timer 1 freq
113c: 60        clrc
113d: 89 0e 69  adc   ($69),($0e)
1140: 6f        ret

; vcmd d4 - repeat start
1141: f6 3c 18  mov   a,$183c+y
1144: c4 06     mov   $06,a
1146: f6 5c 1c  mov   a,$1c5c+y
1149: bc        inc   a
114a: d6 5c 1c  mov   $1c5c+y,a         ; increment nest level
114d: 3f 5b 16  call  $165b
1150: e4 0e     mov   a,$0e
1152: 9c        dec   a
1153: d5 74 1c  mov   $1c74+x,a         ; push repeat count
1156: e4 06     mov   a,$06
1158: d5 75 1c  mov   $1c75+x,a         ; push octave
115b: e4 29     mov   a,$29
115d: d5 04 1d  mov   $1d04+x,a
1160: e4 2a     mov   a,$2a
1162: d5 05 1d  mov   $1d05+x,a         ; push vcmd ptr
1165: 6f        ret

; vcmd d5 - repeat end
1166: 3f 5b 16  call  $165b
1169: f5 74 1c  mov   a,$1c74+x
116c: f0 3f     beq   $11ad
116e: 9c        dec   a
116f: d5 74 1c  mov   $1c74+x,a         ; decrement nest level
1172: 2f 0b     bra   $117f             ; continue

; vcmd fe
1174: 3f 5b 16  call  $165b
1177: f5 74 1c  mov   a,$1c74+x
117a: bc        inc   a
117b: 64 58     cmp   a,$58
117d: f0 2e     beq   $11ad
; repeat continue
117f: f5 75 1c  mov   a,$1c75+x
1182: d6 3c 18  mov   $183c+y,a         ; reload octave
1185: e4 29     mov   a,$29
1187: d5 94 1d  mov   $1d94+x,a
118a: e4 2a     mov   a,$2a
118c: d5 95 1d  mov   $1d95+x,a         ; save loop end point
118f: f5 05 1d  mov   a,$1d05+x
1192: fd        mov   y,a
1193: f5 04 1d  mov   a,$1d04+x
1196: da 29     movw  $29,ya            ; reload vcmd ptr
1198: 6f        ret

; vcmd d6 - repeat break
1199: 3f 5b 16  call  $165b
119c: f5 74 1c  mov   a,$1c74+x
119f: f0 01     beq   $11a2
11a1: 6f        ret
; jump to loop end
11a2: f5 95 1d  mov   a,$1d95+x
11a5: fd        mov   y,a
11a6: f5 94 1d  mov   a,$1d94+x
11a9: da 29     movw  $29,ya
11ab: eb 1e     mov   y,$1e
; decrement repeat nest level
11ad: f6 5c 1c  mov   a,$1c5c+y
11b0: 9c        dec   a
11b1: d6 5c 1c  mov   $1c5c+y,a
11b4: 6f        ret

; vcmd d7 - set loop point
11b5: f8 1f     mov   x,$1f
11b7: e4 29     mov   a,$29
11b9: d5 2c 1c  mov   $1c2c+x,a
11bc: e4 2a     mov   a,$2a
11be: d5 2d 1c  mov   $1c2d+x,a
11c1: 6f        ret

; vcmd d8 - default ADSR
11c2: f6 24 18  mov   a,$1824+y
11c5: 5d        mov   x,a
11c6: f5 80 46  mov   a,$4680+x
11c9: 1c        asl   a
11ca: 5d        mov   x,a
11cb: eb 1f     mov   y,$1f
11cd: f5 40 47  mov   a,$4740+x
11d0: d6 60 01  mov   $0160+y,a
11d3: f5 41 47  mov   a,$4741+x
11d6: d6 61 01  mov   $0161+y,a
11d9: e4 20     mov   a,$20
11db: 24 22     and   a,$22
11dd: f0 15     beq   $11f4
11df: cd f2     mov   x,#$f2
11e1: e4 21     mov   a,$21
11e3: 08 05     or    a,#$05
11e5: af        mov   (x)+,a
11e6: f6 60 01  mov   a,$0160+y
11e9: c6        mov   (x),a
11ea: e4 21     mov   a,$21
11ec: 08 06     or    a,#$06
11ee: 1d        dec   x
11ef: af        mov   (x)+,a
11f0: f6 61 01  mov   a,$0161+y
11f3: c6        mov   (x),a
11f4: 6f        ret

; vcmd d9
11f5: e4 21     mov   a,$21
11f7: 08 05     or    a,#$05
11f9: c4 f2     mov   $f2,a
11fb: eb 1f     mov   y,$1f
11fd: f6 60 01  mov   a,$0160+y
1200: 28 f0     and   a,#$f0
1202: 04 0e     or    a,$0e
1204: 2f 42     bra   $1248

; vcmd da
1206: e4 21     mov   a,$21
1208: 08 05     or    a,#$05
120a: c4 f2     mov   $f2,a
120c: eb 1f     mov   y,$1f
120e: f6 60 01  mov   a,$0160+y
1211: 28 8f     and   a,#$8f
1213: 9f        xcn   a
1214: 04 0e     or    a,$0e
1216: 9f        xcn   a
1217: 2f 2f     bra   $1248

; vcmd db
1219: e4 21     mov   a,$21
121b: 08 06     or    a,#$06
121d: c4 f2     mov   $f2,a
121f: eb 1f     mov   y,$1f
1221: fc        inc   y
1222: f6 60 01  mov   a,$0160+y
1225: 28 1f     and   a,#$1f
1227: c4 06     mov   $06,a
1229: e4 0e     mov   a,$0e
122b: 38 1f 06  and   $06,#$1f
122e: 9f        xcn   a
122f: 1c        asl   a
1230: 04 06     or    a,$06
1232: 2f 14     bra   $1248

; vcmd dc
1234: e4 21     mov   a,$21
1236: 08 06     or    a,#$06
1238: c4 f2     mov   $f2,a
123a: eb 1f     mov   y,$1f
123c: fc        inc   y
123d: f6 60 01  mov   a,$0160+y
1240: 28 e0     and   a,#$e0
1242: 04 0e     or    a,$0e
1244: 92 26     clr4  $26
1246: 2f 00     bra   $1248
1248: d6 60 01  mov   $0160+y,a
124b: fd        mov   y,a
124c: e4 20     mov   a,$20
124e: 24 22     and   a,$22
1250: f0 02     beq   $1254
1252: cb f3     mov   $f3,y
1254: 6f        ret

; vcmd dd - duration rate
1255: e4 0e     mov   a,$0e
1257: d6 6c 18  mov   $186c+y,a
125a: 6f        ret

; vcmd de - set instrument
125b: e4 0e     mov   a,$0e
125d: d6 24 18  mov   $1824+y,a         ; save instrument #
1260: 5d        mov   x,a
1261: f5 80 46  mov   a,$4680+x         ; SRCN table
1264: 1c        asl   a
1265: 5d        mov   x,a
1266: f5 01 47  mov   a,$4701+x
1269: d6 48 01  mov   $0148+y,a         ; volume
126c: eb 1f     mov   y,$1f
126e: f5 40 47  mov   a,$4740+x         ; ADSR(1)
1271: d6 60 01  mov   $0160+y,a
1274: f5 41 47  mov   a,$4741+x         ; ADSR(2)
1277: d6 61 01  mov   $0161+y,a
127a: f5 80 47  mov   a,$4780+x         ; coarse tuning
127d: d6 90 01  mov   $0190+y,a
1280: f5 81 47  mov   a,$4781+x         ; fine tuning
1283: d6 91 01  mov   $0191+y,a
1286: 09 20 24  or    ($24),($20)
1289: 92 26     clr4  $26
128b: 6f        ret

; vcmd e0
128c: eb 1f     mov   y,$1f
128e: f6 61 01  mov   a,$0161+y
1291: 28 e0     and   a,#$e0
1293: 04 0e     or    a,$0e
1295: d6 61 01  mov   $0161+y,a
1298: 82 26     set4  $26
129a: 6f        ret

; vcmd e2 - volume
129b: e4 0e     mov   a,$0e
129d: f8 1f     mov   x,$1f
129f: d5 35 1a  mov   $1a35+x,a
12a2: e8 00     mov   a,#$00
12a4: d5 34 1a  mov   $1a34+x,a
12a7: f6 48 01  mov   a,$0148+y
12aa: 5f 3a 15  jmp   $153a

; vcmd e3 - change volume
12ad: e4 0e     mov   a,$0e
12af: f8 1f     mov   x,$1f
12b1: 60        clrc
12b2: 95 35 1a  adc   a,$1a35+x
12b5: 28 7f     and   a,#$7f
12b7: d5 35 1a  mov   $1a35+x,a
12ba: f6 48 01  mov   a,$0148+y
12bd: 5f 3a 15  jmp   $153a

; vcmd e4 - volume fade
12c0: e4 0e     mov   a,$0e
12c2: f0 36     beq   $12fa
12c4: c4 0c     mov   $0c,a
12c6: d6 94 1a  mov   $1a94+y,a
12c9: e4 0f     mov   a,$0f
12cb: f8 1f     mov   x,$1f
12cd: 80        setc
12ce: b5 35 1a  sbc   a,$1a35+x
12d1: f0 27     beq   $12fa
12d3: 0d        push  psw
12d4: b0 03     bcs   $12d9
12d6: 48 ff     eor   a,#$ff
12d8: bc        inc   a
12d9: 8f 00 0a  mov   $0a,#$00
12dc: c4 0b     mov   $0b,a
12de: 3f 67 16  call  $1667
12e1: 8e        pop   psw
12e2: b0 08     bcs   $12ec
12e4: 58 ff 0a  eor   $0a,#$ff
12e7: 58 ff 0b  eor   $0b,#$ff
12ea: 3a 0a     incw  $0a
12ec: f8 1f     mov   x,$1f
12ee: e4 0b     mov   a,$0b
12f0: d5 65 1a  mov   $1a65+x,a
12f3: e4 0a     mov   a,$0a
12f5: d5 64 1a  mov   $1a64+x,a
12f8: 62 28     set3  $28
12fa: 6f        ret

; vcmd e5 - portamento
12fb: fa 0e 0a  mov   ($0a),($0e)
12fe: fa 0f 0b  mov   ($0b),($0f)
1301: e4 0a     mov   a,$0a
1303: f0 4f     beq   $1354
1305: d6 44 19  mov   $1944+y,a
1308: 5d        mov   x,a
1309: e4 0b     mov   a,$0b
130b: f0 47     beq   $1354
130d: 0d        push  psw
130e: 10 03     bpl   $1313
1310: 48 ff     eor   a,#$ff
1312: bc        inc   a
1313: 8d 00     mov   y,#$00
1315: 9e        div   ya,x
1316: c4 0b     mov   $0b,a
1318: e8 00     mov   a,#$00
131a: 9e        div   ya,x
131b: c4 0a     mov   $0a,a
131d: e8 00     mov   a,#$00
131f: 9e        div   ya,x
1320: c4 0d     mov   $0d,a
1322: e8 00     mov   a,#$00
1324: 9e        div   ya,x
1325: c4 0c     mov   $0c,a
1327: 8e        pop   psw
1328: 10 12     bpl   $133c
132a: 58 ff 0c  eor   $0c,#$ff
132d: 58 ff 0d  eor   $0d,#$ff
1330: 58 ff 0a  eor   $0a,#$ff
1333: 58 ff 0b  eor   $0b,#$ff
1336: 3a 0c     incw  $0c
1338: d0 02     bne   $133c
133a: 3a 0a     incw  $0a
133c: f8 1f     mov   x,$1f
133e: e4 0a     mov   a,$0a
1340: d5 e4 18  mov   $18e4+x,a
1343: e4 0b     mov   a,$0b
1345: d5 e5 18  mov   $18e5+x,a
1348: e4 0c     mov   a,$0c
134a: d5 14 19  mov   $1914+x,a
134d: e4 0d     mov   a,$0d
134f: d5 15 19  mov   $1915+x,a
1352: 62 27     set3  $27
1354: 6f        ret

; vcmd e6 - portamento toggle
1355: a3 27 03  bbs5  $27,$135b
1358: a2 27     set5  $27
135a: 6f        ret

135b: b2 27     clr5  $27
135d: 72 27     clr3  $27
135f: 6f        ret

; vcmd e7 - panpot
1360: 92 28     clr4  $28
1362: e4 0e     mov   a,$0e
1364: f8 1f     mov   x,$1f
1366: d5 25 1b  mov   $1b25+x,a
1369: f6 48 01  mov   a,$0148+y
136c: 5f 3a 15  jmp   $153a

; vcmd e8 - panpot fade
136f: e4 0e     mov   a,$0e
1371: f0 3b     beq   $13ae
1373: c4 0c     mov   $0c,a
1375: d6 84 1b  mov   $1b84+y,a
1378: e4 0f     mov   a,$0f
137a: f8 1f     mov   x,$1f
137c: 80        setc
137d: b5 25 1b  sbc   a,$1b25+x
1380: f0 2c     beq   $13ae
1382: 0d        push  psw
1383: b0 03     bcs   $1388
1385: 48 ff     eor   a,#$ff
1387: bc        inc   a
1388: c4 0b     mov   $0b,a
138a: 8f 00 0a  mov   $0a,#$00
138d: 3f 67 16  call  $1667
1390: 8e        pop   psw
1391: b0 08     bcs   $139b
1393: 58 ff 0a  eor   $0a,#$ff
1396: 58 ff 0b  eor   $0b,#$ff
1399: 3a 0a     incw  $0a
139b: f8 1f     mov   x,$1f
139d: e4 0b     mov   a,$0b
139f: d5 55 1b  mov   $1b55+x,a
13a2: e4 0a     mov   a,$0a
13a4: d5 54 1b  mov   $1b54+x,a
13a7: e8 80     mov   a,#$80
13a9: d5 24 1b  mov   $1b24+x,a
13ac: c2 28     set6  $28
13ae: 6f        ret

; vcmd e9 - panpot LFO on
13af: b2 28     clr5  $28
13b1: e4 0e     mov   a,$0e
13b3: d6 9c 1b  mov   $1b9c+y,a
13b6: 1c        asl   a
13b7: d6 b4 1b  mov   $1bb4+y,a
13ba: c4 0c     mov   $0c,a
13bc: e4 0f     mov   a,$0f
13be: 10 02     bpl   $13c2
13c0: a2 28     set5  $28
13c2: 1c        asl   a
13c3: c4 0b     mov   $0b,a
13c5: 8f 00 0a  mov   $0a,#$00
13c8: 3f 67 16  call  $1667
13cb: f8 1f     mov   x,$1f
13cd: e4 0b     mov   a,$0b
13cf: d5 cd 1b  mov   $1bcd+x,a
13d2: e4 0a     mov   a,$0a
13d4: d5 cc 1b  mov   $1bcc+x,a
13d7: 82 28     set4  $28
13d9: 6f        ret

13da: 6f        ret

; vcmd ec - transpose (absolute, signed, 4 = 1 semitone)
13db: 3f 01 14  call  $1401
13de: f8 1f     mov   x,$1f
13e0: e4 06     mov   a,$06
13e2: d5 ec 19  mov   $19ec+x,a
13e5: e4 07     mov   a,$07
13e7: d5 ed 19  mov   $19ed+x,a
13ea: 6f        ret

; vcmd ed - transpose (relative, signed, 4 = 1 semitone)
13eb: 3f 01 14  call  $1401
13ee: f8 1f     mov   x,$1f
13f0: f5 ed 19  mov   a,$19ed+x
13f3: fd        mov   y,a
13f4: f5 ec 19  mov   a,$19ec+x
13f7: 7a 06     addw  ya,$06
13f9: d5 ec 19  mov   $19ec+x,a
13fc: dd        mov   a,y
13fd: d5 ed 19  mov   $19ed+x,a
1400: 6f        ret

; divide the 1st argument by 4 (arithmetic, set results into $06/7)
1401: 8f 00 06  mov   $06,#$00
1404: e4 0e     mov   a,$0e             ; take first argument (tuning amount)
1406: 30 08     bmi   $1410
; positive tuning
1408: 5c        lsr   a
1409: 6b 06     ror   $06
140b: 5c        lsr   a
140c: 6b 06     ror   $06
140e: 2f 08     bra   $1418
; negative tuning
1410: 80        setc
1411: 7c        ror   a
1412: 6b 06     ror   $06
1414: 80        setc
1415: 7c        ror   a
1416: 6b 06     ror   $06
; divided by 4, result is in $06/07
1418: c4 07     mov   $07,a
141a: e8 ff     mov   a,#$ff
141c: d6 54 18  mov   $1854+y,a
141f: 6f        ret

; vcmd f6
1420: e4 0e     mov   a,$0e
1422: d6 1c 1a  mov   $1a1c+y,a
1425: 6f        ret

; vcmd ee - rhythm kit on
1426: a2 26     set5  $26
1428: 6f        ret

; vcmd ef - rhythm kit off
1429: b2 26     clr5  $26
142b: 6f        ret

; vcmd f0 - vibrato on
142c: 32 27     clr1  $27
142e: e4 0e     mov   a,$0e
1430: f0 2d     beq   $145f
1432: d6 a4 19  mov   $19a4+y,a
1435: d6 8c 19  mov   $198c+y,a
1438: c4 0c     mov   $0c,a
143a: e4 0f     mov   a,$0f
143c: 10 05     bpl   $1443
143e: 48 ff     eor   a,#$ff
1440: bc        inc   a
1441: 22 27     set1  $27
1443: 60        clrc
1444: 88 04     adc   a,#$04
1446: fd        mov   y,a
1447: cf        mul   ya
1448: da 0a     movw  $0a,ya
144a: 4b 0b     lsr   $0b
144c: 6b 0a     ror   $0a
144e: 3f 67 16  call  $1667
1451: f8 1f     mov   x,$1f
1453: e4 0a     mov   a,$0a
1455: d5 5c 19  mov   $195c+x,a
1458: e4 0b     mov   a,$0b
145a: d5 5d 19  mov   $195d+x,a
145d: 02 27     set0  $27
145f: eb 1e     mov   y,$1e
1461: e8 00     mov   a,#$00
1463: d6 d4 19  mov   $19d4+y,a
1466: 6f        ret

; vcmd f1 - vibrato on (w/delay)
1467: 3f 2c 14  call  $142c
146a: e4 10     mov   a,$10
146c: d6 d4 19  mov   $19d4+y,a
146f: 6f        ret

; vcmd f2 - change tempo
1470: e4 0e     mov   a,$0e
1472: e3 26 0c  bbs7  $26,$1481
1475: 84 5f     adc   a,$5f
1477: c4 5f     mov   $5f,a
1479: 03 37 04  bbs0  $37,$1480
147c: 84 60     adc   a,$60
147e: c4 fa     mov   $fa,a
1480: 6f        ret

1481: 84 4f     adc   a,$4f
1483: c4 4f     mov   $4f,a
1485: c4 fb     mov   $fb,a
1487: 6f        ret

; vcmd f3 - vibrato off
1488: 12 27     clr0  $27
148a: 6f        ret

; vcmd f4 - tremolo on
148b: e4 0e     mov   a,$0e
148d: d6 dc 1a  mov   $1adc+y,a
1490: d6 c4 1a  mov   $1ac4+y,a
1493: e4 0f     mov   a,$0f
1495: d6 ac 1a  mov   $1aac+y,a
1498: e8 00     mov   a,#$00
149a: d6 0c 1b  mov   $1b0c+y,a
149d: 02 28     set0  $28
149f: 6f        ret

; vcmd f5 - tremolo on (w/delay)
14a0: 3f 8b 14  call  $148b
14a3: e4 10     mov   a,$10
14a5: d6 0c 1b  mov   $1b0c+y,a
14a8: 6f        ret

; vcmd f7 - tremolo off
14a9: 12 28     clr0  $28
14ab: f6 48 01  mov   a,$0148+y
14ae: 5f 3a 15  jmp   $153a

14b1: 6f        ret

; vcmd f8 - slur on
14b2: 62 26     set3  $26
14b4: 6f        ret

; vcmd f9 - slur off
14b5: 72 26     clr3  $26
14b7: 52 26     clr2  $26
14b9: 6f        ret

; vcmd fa - echo on
14ba: e3 26 05  bbs7  $26,$14c2
14bd: 09 20 5d  or    ($5d),($20)
14c0: 2f 1e     bra   $14e0
14c2: 09 20 4e  or    ($4e),($20)
14c5: e4 20     mov   a,$20
14c7: 48 ff     eor   a,#$ff
14c9: 24 57     and   a,$57
14cb: c4 57     mov   $57,a
14cd: 2f 11     bra   $14e0

; vcmd fb - echo off
14cf: e4 20     mov   a,$20
14d1: 48 ff     eor   a,#$ff
14d3: e3 26 06  bbs7  $26,$14dc
14d6: 24 5d     and   a,$5d
14d8: c4 5d     mov   $5d,a
14da: 2f 04     bra   $14e0
14dc: 24 4e     and   a,$4e
14de: c4 4e     mov   $4e,a
14e0: 8f 4d f2  mov   $f2,#$4d
14e3: e4 4a     mov   a,$4a
14e5: 04 57     or    a,$57
14e7: 48 ff     eor   a,#$ff
14e9: 24 5d     and   a,$5d
14eb: 04 4e     or    a,$4e
14ed: c4 f3     mov   $f3,a
14ef: 6f        ret

; vcmd fc
14f0: fa 0e 64  mov   ($64),($0e)
14f3: fa 0f 65  mov   ($65),($0f)
14f6: fa 10 66  mov   ($66),($10)
14f9: 3f ce 15  call  $15ce
14fc: 6f        ret

14fd: e4 20     mov   a,$20
14ff: 24 22     and   a,$22
1501: f0 36     beq   $1539
1503: e4 20     mov   a,$20
1505: 48 ff     eor   a,#$ff
1507: 24 24     and   a,$24
1509: c4 24     mov   $24,a
150b: eb 1e     mov   y,$1e
150d: e4 21     mov   a,$21
150f: 08 04     or    a,#$04
1511: c4 f2     mov   $f2,a
1513: f6 24 18  mov   a,$1824+y
1516: 5d        mov   x,a
1517: f5 80 46  mov   a,$4680+x
151a: c4 f3     mov   $f3,a
151c: f8 1f     mov   x,$1f
151e: e4 21     mov   a,$21
1520: 08 05     or    a,#$05
1522: c4 f2     mov   $f2,a
1524: f5 60 01  mov   a,$0160+x
1527: c4 f3     mov   $f3,a
1529: e4 21     mov   a,$21
152b: 08 06     or    a,#$06
152d: c4 f2     mov   $f2,a
152f: f5 61 01  mov   a,$0161+x
1532: c4 f3     mov   $f3,a
1534: f6 48 01  mov   a,$0148+y
1537: 2f 01     bra   $153a
1539: 6f        ret

; calculate volume reg value
153a: fd        mov   y,a               ; y = per-instrument volume
153b: e4 20     mov   a,$20
153d: 24 22     and   a,$22
153f: f0 48     beq   $1589             ; skip if not changed
1541: f8 1f     mov   x,$1f
1543: f5 35 1a  mov   a,$1a35+x         ; channel volume
1546: 1c        asl   a                 ; convert from 7 bits to 8 bits
1547: cf        mul   ya
1548: e4 2f     mov   a,$2f             ; master volume?
154a: 1c        asl   a                 ; convert from 7 bits to 8 bits
154b: cf        mul   ya
154c: 63 37 2f  bbs3  $37,$157e         ; branch if mono
154f: f5 25 1b  mov   a,$1b25+x         ; pan
1552: 68 80     cmp   a,#$80
1554: f0 28     beq   $157e
1556: 90 15     bcc   $156d
; left pan (pan < 128)
1558: e4 21     mov   a,$21
155a: bc        inc   a
155b: c4 f2     mov   $f2,a
155d: cb f3     mov   $f3,y             ; VOL(R)
155f: fa 21 f2  mov   ($f2),($21)
1562: f5 25 1b  mov   a,$1b25+x         ; pan
1565: 48 ff     eor   a,#$ff
1567: bc        inc   a                 ; 0..127 => 0..-127
1568: 1c        asl   a
1569: cf        mul   ya                ; decrease left volume
156a: cb f3     mov   $f3,y             ; VOL(L)
156c: 6f        ret
; right pan (pan > 128)
156d: e4 21     mov   a,$21
156f: c4 f2     mov   $f2,a
1571: cb f3     mov   $f3,y             ; VOL(L)
1573: bc        inc   a
1574: c4 f2     mov   $f2,a
1576: f5 25 1b  mov   a,$1b25+x
1579: 1c        asl   a
157a: cf        mul   ya                ; decrease right volume
157b: cb f3     mov   $f3,y             ; VOL(R)
157d: 6f        ret
; center (pan == 128)
157e: e4 21     mov   a,$21
1580: c4 f2     mov   $f2,a
1582: cb f3     mov   $f3,y
1584: bc        inc   a
1585: c4 f2     mov   $f2,a
1587: cb f3     mov   $f3,y
1589: 6f        ret

158a: fd        mov   y,a
158b: c4 1e     mov   $1e,a
158d: 1c        asl   a
158e: c4 1f     mov   $1f,a
1590: dd        mov   a,y
1591: 9f        xcn   a
1592: 28 70     and   a,#$70
1594: c4 21     mov   $21,a
1596: 1c        asl   a
1597: 08 02     or    a,#$02
1599: c5 9f 15  mov   $159f,a
159c: 8f 00 20  mov   $20,#$00
159f: 02 20     set0  $20
15a1: 6f        ret

15a2: 09 57 5a  or    ($5a),($57)
15a5: 8d 07     mov   y,#$07
15a7: 8f 00 08  mov   $08,#$00
15aa: fa 57 06  mov   ($06),($57)
15ad: 0b 06     asl   $06
15af: 90 0d     bcc   $15be
15b1: dd        mov   a,y
15b2: 9f        xcn   a
15b3: 08 08     or    a,#$08
15b5: c4 f2     mov   $f2,a
15b7: e4 f3     mov   a,$f3
15b9: d0 03     bne   $15be
15bb: 60        clrc
15bc: 2f 01     bra   $15bf
15be: 80        setc
15bf: 2b 08     rol   $08
15c1: dc        dec   y
15c2: 10 e9     bpl   $15ad
15c4: 29 08 4e  and   ($4e),($08)
15c7: 29 08 57  and   ($57),($08)
15ca: 3f e0 14  call  $14e0
15cd: 6f        ret

15ce: eb 36     mov   y,$36
15d0: e4 66     mov   a,$66
15d2: 0d        push  psw
15d3: 10 03     bpl   $15d8
15d5: 48 ff     eor   a,#$ff
15d7: bc        inc   a
15d8: cf        mul   ya
15d9: cd 40     mov   x,#$40
15db: 9e        div   ya,x
15dc: 8e        pop   psw
15dd: 10 03     bpl   $15e2
15df: 48 ff     eor   a,#$ff
15e1: bc        inc   a
15e2: c4 35     mov   $35,a
15e4: cd f3     mov   x,#$f3
15e6: e4 64     mov   a,$64
15e8: f0 55     beq   $163f
15ea: a3 38 17  bbs5  $38,$1604
15ed: 8f 7d f2  mov   $f2,#$7d
15f0: 2e f3 0f  cbne  $f3,$1602
15f3: 03 37 0b  bbs0  $37,$1601
15f6: b2 38     clr5  $38
15f8: 8f 6c f2  mov   $f2,#$6c
15fb: fa 38 f3  mov   ($f3),($38)
15fe: 3f 9c 16  call  $169c
1601: 6f        ret

1602: a2 38     set5  $38
1604: 8f 6c f2  mov   $f2,#$6c
1607: fa 38 f3  mov   ($f3),($38)
160a: e8 00     mov   a,#$00
160c: 8f 4d f2  mov   $f2,#$4d
160f: c6        mov   (x),a
1610: 8f 2c f2  mov   $f2,#$2c
1613: c6        mov   (x),a
1614: 8f 3c f2  mov   $f2,#$3c
1617: c6        mov   (x),a
1618: 8f 0d f2  mov   $f2,#$0d
161b: c6        mov   (x),a
161c: 8f 7d f2  mov   $f2,#$7d
161f: fa f3 34  mov   ($34),($f3)
1622: ab 34     inc   $34
1624: e4 64     mov   a,$64
1626: c6        mov   (x),a
1627: 9f        xcn   a
1628: 5c        lsr   a
1629: c4 0c     mov   $0c,a
162b: e8 00     mov   a,#$00
162d: 80        setc
162e: a4 0c     sbc   a,$0c
1630: 8f 6d f2  mov   $f2,#$6d
1633: c6        mov   (x),a
1634: 02 37     set0  $37
1636: e8 0e     mov   a,#$0e
1638: c5 27 02  mov   $0227,a
163b: 8f 81 fa  mov   $fa,#$81
163e: 6f        ret

163f: a2 38     set5  $38
1641: 8f 6c f2  mov   $f2,#$6c
1644: fa 38 f3  mov   ($f3),($38)
1647: 8f 7d f2  mov   $f2,#$7d
164a: c6        mov   (x),a
164b: 8f 6d f2  mov   $f2,#$6d
164e: 8f ff f3  mov   $f3,#$ff
1651: c4 35     mov   $35,a
1653: c4 65     mov   $65,a
1655: 3f 9c 16  call  $169c
1658: 12 37     clr0  $37
165a: 6f        ret

165b: f6 5c 1c  mov   a,$1c5c+y
165e: 1c        asl   a
165f: 84 1f     adc   a,$1f
1661: 84 1f     adc   a,$1f
1663: 84 1f     adc   a,$1f
1665: 5d        mov   x,a
1666: 6f        ret

1667: f8 0c     mov   x,$0c
1669: e4 0b     mov   a,$0b
166b: 8d 00     mov   y,#$00
166d: 9e        div   ya,x
166e: c4 0b     mov   $0b,a
1670: e4 0a     mov   a,$0a
1672: 9e        div   ya,x
1673: c4 0a     mov   $0a,a
1675: 6f        ret

1676: 8f 0c f2  mov   $f2,#$0c
1679: e4 36     mov   a,$36
167b: 63 37 16  bbs3  $37,$1694
167e: 93 37 03  bbc4  $37,$1684
1681: 48 ff     eor   a,#$ff
1683: bc        inc   a
1684: c4 f3     mov   $f3,a
1686: 8f 1c f2  mov   $f2,#$1c
1689: e4 36     mov   a,$36
168b: b3 37 03  bbc5  $37,$1691
168e: 48 ff     eor   a,#$ff
1690: bc        inc   a
1691: c4 f3     mov   $f3,a
1693: 6f        ret

1694: c4 f3     mov   $f3,a
1696: 8f 1c f2  mov   $f2,#$1c
1699: c4 f3     mov   $f3,a
169b: 6f        ret

169c: 8f 0d f2  mov   $f2,#$0d
169f: fa 65 f3  mov   ($f3),($65)
16a2: 63 37 1b  bbs3  $37,$16c0
16a5: 8f 2c f2  mov   $f2,#$2c
16a8: e4 35     mov   a,$35
16aa: d3 37 03  bbc6  $37,$16b0
16ad: 48 ff     eor   a,#$ff
16af: bc        inc   a
16b0: c4 f3     mov   $f3,a
16b2: 8f 3c f2  mov   $f2,#$3c
16b5: e4 35     mov   a,$35
16b7: f3 37 03  bbc7  $37,$16bd
16ba: 48 ff     eor   a,#$ff
16bc: bc        inc   a
16bd: c4 f3     mov   $f3,a
16bf: 6f        ret

16c0: e4 35     mov   a,$35
16c2: 8f 2c f2  mov   $f2,#$2c
16c5: c4 f3     mov   $f3,a
16c7: 8f 3c f2  mov   $f2,#$3c
16ca: c4 f3     mov   $f3,a
16cc: 6f        ret

16cd: 8f 6c f2  mov   $f2,#$6c
16d0: 8f e0 f3  mov   $f3,#$e0
16d3: 8f b0 f1  mov   $f1,#$b0
16d6: 5f c0 ff  jmp   $ffc0

16d9: dw $035f  ; 01
16db: dw $036b  ; 02
16dd: dw $037d  ; 03
16df: dw $039b  ; 04
16e1: dw $03fc  ; 05
16e3: dw $040c  ; 06
16e5: dw $0415  ; 07
16e7: dw $04b6  ; 08
16e9: dw $04ae  ; 09
16eb: dw $0317  ; 0a
16ed: dw $0557  ; 0b
16ef: dw $0572  ; 0c
16f1: dw $06c2  ; 0d
16f3: dw $075c  ; 0e
16f5: dw $057b  ; 0f
16f7: dw $0602  ; 10
16f9: dw $0605  ; 11
16fb: dw $0613  ; 12
16fd: dw $0621  ; 13
16ff: dw $062f  ; 14
1701: dw $0632  ; 15
1703: dw $0644  ; 16
1705: dw $0644  ; 17
1707: dw $0592  ; 18
1709: dw $059a  ; 19
170b: dw $05a8  ; 1a
170d: dw $05be  ; 1b
170f: dw $05da  ; 1c
1711: dw $05e2  ; 1d
1713: dw $05ff  ; 1e
1715: dw $05ff  ; 1f
1717: dw $0644  ; 20
1719: dw $064a  ; 21
171b: dw $0656  ; 22
171d: dw $0668  ; 23
171f: dw $0317  ; 24
1721: dw $0681  ; 25
1723: dw $06ad  ; 26
1725: dw $0317  ; 27
1727: dw $08a1  ; 28
1729: dw $08aa  ; 29
172b: dw $08b7  ; 2a
172d: dw $08c0  ; 2b
172f: dw $08c9  ; 2c
1731: dw $087a  ; 2d
1733: dw $08d3  ; 2e
1735: dw $08f1  ; 2f
1737: dw $0903  ; 30
1739: dw $0912  ; 31
173b: dw $0912  ; 32
173d: dw $0919  ; 33

173f: dw $1036  ; c4 - octave up
1741: dw $103c  ; c5 - octave down
1743: dw $1042  ; c6 - set octave
1745: dw $1048  ; c7 - nop
1747: dw $1049  ; c8 - set noise freq
1749: dw $1060  ; c9 - noise on
174b: dw $106d  ; ca - noise off
174d: dw $108c  ; cb - pitchmod on
174f: dw $109c  ; cc - pitchmod off
1751: dw $10bb  ; cd
1753: dw $10c2  ; ce
1755: dw $10d7  ; cf - transpose (absolute, signed, 16 = 1 semitone)
1757: dw $10f1  ; d0 - end/return
1759: dw $1123  ; d1 - tempo
175b: dw $1138  ; d2 - set timer 1 freq
175d: dw $113c  ; d3 - change timer 1 freq
175f: dw $1141  ; d4 - repeat start
1761: dw $1166  ; d5 - repeat end
1763: dw $1199  ; d6 - repeat break
1765: dw $11b5  ; d7 - set loop point
1767: dw $11c2  ; d8 - default ADSR
1769: dw $11f5  ; d9 - set attack rate (AR)
176b: dw $1206  ; da - set decay rate (DR)
176d: dw $1219  ; db - set sustain level (SL)
176f: dw $1234  ; dc - set sustain rate (SR)
1771: dw $1255  ; dd - duration rate
1773: dw $125b  ; de - set instrument
1775: dw $104d  ; df - change noise freq
1777: dw $128c  ; e0
1779: dw $1036  ; e1 - octave up (duplicated)
177b: dw $129b  ; e2 - volume
177d: dw $12ad  ; e3 - change volume
177f: dw $12c0  ; e4 - volume fade
1781: dw $12fb  ; e5 - portamento
1783: dw $1355  ; e6 - portamento toggle
1785: dw $1360  ; e7 - panpot
1787: dw $136f  ; e8 - panpot fade
1789: dw $13af  ; e9 - panpot LFO on
178b: dw $1036  ; ea - octave up (duplicated)
178d: dw $1036  ; eb - octave up (duplicated)
178f: dw $13db  ; ec - transpose (absolute, signed, 4 = 1 semitone)
1791: dw $13eb  ; ed - transpose (relative, signed, 4 = 1 semitone)
1793: dw $1426  ; ee - rhythm kit on
1795: dw $1429  ; ef - rhythm kit off
1797: dw $142c  ; f0 - vibrato on
1799: dw $1467  ; f1 - vibrato on (w/delay)
179b: dw $1470  ; f2 - change tempo
179d: dw $1488  ; f3 - vibrato off
179f: dw $148b  ; f4 - tremolo on
17a1: dw $14a0  ; f5 - tremolo on (w/delay)
17a3: dw $1420  ; f6
17a5: dw $14a9  ; f7 - tremolo off
17a7: dw $14b2  ; f8 - slur on
17a9: dw $14b5  ; f9 - slur off
17ab: dw $14ba  ; fa - echo on
17ad: dw $14cf  ; fb - echo off
17af: dw $14f0  ; fc
17b1: dw $1036  ; fd - octave up (duplicated)
17b3: dw $1174  ; fe
17b5: dw $1036  ; ff - octave up (duplicated)
17b7: dw $1036  ; (garbage?)

17b9: db                 $01,$01,$02,$11,$02,$01,$01,$01,$01,$02,$02,$02
17c5: db $31,$02,$02,$02,$02,$41,$51,$01,$01,$02,$02,$02,$02,$02,$02,$02
17d5: db $02,$02,$02,$02,$03,$03,$01,$02,$03,$03,$01,$01,$02,$02,$01,$01
17e5: db $03,$04,$02,$01,$03,$04,$02,$01,$01,$21,$01,$01,$04,$01,$01,$01

17f5: db $c0,$90,$60,$48,$30,$24,$20,$18,$10,$0c,$08,$06,$03

; pitch table
1802: dw $260e
1804: dw $2851
1806: dw $2ab7
1808: dw $2d41
180a: dw $2ff2
180c: dw $32cc
180e: dw $35d1
1810: dw $3904
1812: dw $3c68
1814: dw $4000
1816: dw $43ce
1818: dw $47d6
181a: dw $4c1b

181c: db $7f,$00,$00,$00,$00,$00,$00,$00
1824: db $52,$52,$5d,$59,$69,$1f,$57,$1f
