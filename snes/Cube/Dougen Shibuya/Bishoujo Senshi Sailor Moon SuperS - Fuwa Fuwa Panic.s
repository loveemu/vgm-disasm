0200: c0        di
0201: 20        clrp
0202: cd ff     mov   x,#$ff
0204: bd        mov   sp,x
0205: e8 00     mov   a,#$00
0207: 5d        mov   x,a
0208: af        mov   (x)+,a
0209: c8 f0     cmp   x,#$f0
020b: d0 fb     bne   $0208
020d: e8 00     mov   a,#$00
020f: 5d        mov   x,a
0210: d5 00 01  mov   $0100+x,a
0213: 3d        inc   x
0214: d0 fa     bne   $0210
0216: 3f e3 0d  call  $0de3
0219: 3f ca 0d  call  $0dca
021c: 3f 6d 03  call  $036d
021f: 3f 59 03  call  $0359
0222: 3f 40 02  call  $0240
0225: 3f 0a 0e  call  $0e0a
0228: 8f 19 f4  mov   $f4,#$19
022b: 8f 67 f5  mov   $f5,#$67
022e: 8f 07 f6  mov   $f6,#$07
0231: 8f 04 f7  mov   $f7,#$04
0234: 3f 4b 02  call  $024b
0237: 3f 1c 05  call  $051c
023a: 3f 0e 0b  call  $0b0e
023d: 5f 34 02  jmp   $0234

0240: cd 10     mov   x,#$10
0242: e4 fe     mov   a,$fe
0244: f0 fc     beq   $0242
0246: 1d        dec   x
0247: d0 f9     bne   $0242
0249: 6f        ret

024a: 6f        ret

024b: e4 f4     mov   a,$f4
024d: f0 fb     beq   $024a
024f: 64 f4     cmp   a,$f4
0251: d0 f7     bne   $024a
0253: 68 03     cmp   a,#$03
0255: f0 58     beq   $02af
0257: 68 01     cmp   a,#$01
0259: d0 03     bne   $025e
025b: 5f c5 02  jmp   $02c5

025e: 68 02     cmp   a,#$02
0260: d0 03     bne   $0265
0262: 5f d1 02  jmp   $02d1

0265: 68 04     cmp   a,#$04
0267: d0 03     bne   $026c
0269: 5f 05 03  jmp   $0305

026c: 68 05     cmp   a,#$05
026e: d0 03     bne   $0273
0270: 5f 26 03  jmp   $0326

0273: 68 06     cmp   a,#$06
0275: d0 03     bne   $027a
0277: 5f 2c 03  jmp   $032c

027a: 68 07     cmp   a,#$07
027c: d0 03     bne   $0281
027e: 5f 1a 03  jmp   $031a

0281: 68 08     cmp   a,#$08
0283: d0 03     bne   $0288
0285: 5f 35 03  jmp   $0335

0288: 68 09     cmp   a,#$09
028a: d0 03     bne   $028f
028c: 5f 44 03  jmp   $0344

028f: 68 0a     cmp   a,#$0a
0291: d0 03     bne   $0296
0293: 5f 47 03  jmp   $0347

0296: 68 0b     cmp   a,#$0b
0298: d0 03     bne   $029d
029a: 5f 4a 03  jmp   $034a

029d: 68 0c     cmp   a,#$0c
029f: d0 03     bne   $02a4
02a1: 5f 50 03  jmp   $0350

02a4: 8f 37 f1  mov   $f1,#$37
02a7: e4 d5     mov   a,$d5
02a9: bc        inc   a
02aa: c4 d5     mov   $d5,a
02ac: c4 f4     mov   $f4,a
02ae: 6f        ret

02af: 8d 00     mov   y,#$00
02b1: e4 f5     mov   a,$f5
02b3: d7 d8     mov   ($d8)+y,a
02b5: 3a d8     incw  $d8
02b7: e4 f6     mov   a,$f6
02b9: d7 d8     mov   ($d8)+y,a
02bb: 3a d8     incw  $d8
02bd: e4 f7     mov   a,$f7
02bf: d7 d8     mov   ($d8)+y,a
02c1: 3a d8     incw  $d8
02c3: 2f df     bra   $02a4
02c5: e4 f5     mov   a,$f5
02c7: c4 d6     mov   $d6,a
02c9: 8f 00 d8  mov   $d8,#$00
02cc: 8f 5f d9  mov   $d9,#$5f
02cf: 2f d3     bra   $02a4
02d1: e4 f5     mov   a,$f5
02d3: 8f 00 e0  mov   $e0,#$00
02d6: 8f 1b e1  mov   $e1,#$1b
02d9: 8d 04     mov   y,#$04
02db: cf        mul   ya
02dc: 7a e0     addw  ya,$e0
02de: da e0     movw  $e0,ya
02e0: 8d 00     mov   y,#$00
02e2: fa d8 d0  mov   ($d0),($d8)
02e5: e4 d0     mov   a,$d0
02e7: d7 e0     mov   ($e0)+y,a
02e9: fc        inc   y
02ea: fa d9 d1  mov   ($d1),($d9)
02ed: e4 d1     mov   a,$d1
02ef: d7 e0     mov   ($e0)+y,a
02f1: fc        inc   y
02f2: 60        clrc
02f3: 89 f6 d0  adc   ($d0),($f6)
02f6: 89 f7 d1  adc   ($d1),($f7)
02f9: e4 d0     mov   a,$d0
02fb: d7 e0     mov   ($e0)+y,a
02fd: fc        inc   y
02fe: e4 d1     mov   a,$d1
0300: d7 e0     mov   ($e0)+y,a
0302: 5f a4 02  jmp   $02a4

0305: 3f d4 0b  call  $0bd4
0308: 3f bf 03  call  $03bf
030b: 3f 21 04  call  $0421
030e: 8f 00 f5  mov   $f5,#$00
0311: 8f 00 c4  mov   $c4,#$00
0314: 8f 00 c5  mov   $c5,#$00
0317: 5f a4 02  jmp   $02a4

031a: 3f d4 0b  call  $0bd4
031d: 3f bf 03  call  $03bf
0320: 8f 00 f5  mov   $f5,#$00
0323: 5f a4 02  jmp   $02a4

0326: 8f 01 ce  mov   $ce,#$01
0329: 5f a4 02  jmp   $02a4

032c: 8f fe cc  mov   $cc,#$fe
032f: 38 fe cd  and   $cd,#$fe
0332: 5f a4 02  jmp   $02a4

0335: e4 f5     mov   a,$f5
0337: 68 ab     cmp   a,#$ab
0339: b0 06     bcs   $0341
033b: 3f 7b 04  call  $047b
033e: 8f 00 f5  mov   $f5,#$00
0341: 5f a4 02  jmp   $02a4

0344: 5f a4 02  jmp   $02a4

0347: 5f a4 02  jmp   $02a4

034a: fa f5 da  mov   ($da),($f5)
034d: 5f a4 02  jmp   $02a4

0350: 8f 00 d8  mov   $d8,#$00
0353: 8f b7 d9  mov   $d9,#$b7
0356: 5f a4 02  jmp   $02a4

0359: cd 00     mov   x,#$00
035b: 7d        mov   a,x
035c: fd        mov   y,a
035d: 8f 00 e0  mov   $e0,#$00
0360: 8f e7 e1  mov   $e1,#$e7
0363: d7 e0     mov   ($e0)+y,a
0365: 3a e0     incw  $e0
0367: 78 ff e1  cmp   $e1,#$ff
036a: d0 f7     bne   $0363
036c: 6f        ret

036d: cd 00     mov   x,#$00
036f: e8 ff     mov   a,#$ff
0371: d4 00     mov   $00+x,a
0373: d4 02     mov   $02+x,a
0375: bc        inc   a
0376: d5 00 01  mov   $0100+x,a
0379: d5 01 01  mov   $0101+x,a
037c: d5 04 01  mov   $0104+x,a
037f: d5 05 01  mov   $0105+x,a
0382: d5 06 01  mov   $0106+x,a
0385: d5 07 01  mov   $0107+x,a
0388: d5 03 01  mov   $0103+x,a
038b: d5 02 01  mov   $0102+x,a
038e: 7d        mov   a,x
038f: 60        clrc
0390: 88 10     adc   a,#$10
0392: 5d        mov   x,a
0393: c8 80     cmp   x,#$80
0395: d0 d8     bne   $036f
0397: cd 00     mov   x,#$00
0399: e8 01     mov   a,#$01
039b: d4 80     mov   $80+x,a
039d: e8 00     mov   a,#$00
039f: d4 81     mov   $81+x,a
03a1: d4 82     mov   $82+x,a
03a3: d4 84     mov   $84+x,a
03a5: e8 40     mov   a,#$40
03a7: d4 83     mov   $83+x,a
03a9: e8 7f     mov   a,#$7f
03ab: d4 85     mov   $85+x,a
03ad: 7d        mov   a,x
03ae: 60        clrc
03af: 88 08     adc   a,#$08
03b1: 5d        mov   x,a
03b2: c8 40     cmp   x,#$40
03b4: d0 e3     bne   $0399
03b6: 8f 00 d4  mov   $d4,#$00
03b9: 6f        ret

03ba: e8 02     mov   a,#$02
03bc: c4 80     mov   $80,a
03be: 6f        ret

03bf: cd 00     mov   x,#$00
03c1: f4 00     mov   a,$00+x
03c3: 68 ff     cmp   a,#$ff
03c5: f0 08     beq   $03cf
03c7: 68 06     cmp   a,#$06
03c9: b0 04     bcs   $03cf
03cb: e8 ff     mov   a,#$ff
03cd: d4 00     mov   $00+x,a
03cf: 7d        mov   a,x
03d0: 60        clrc
03d1: 88 10     adc   a,#$10
03d3: 5d        mov   x,a
03d4: c8 80     cmp   x,#$80
03d6: d0 e9     bne   $03c1
03d8: cd 00     mov   x,#$00
03da: e8 00     mov   a,#$00
03dc: d5 00 01  mov   $0100+x,a
03df: d5 01 01  mov   $0101+x,a
03e2: d5 04 01  mov   $0104+x,a
03e5: d5 05 01  mov   $0105+x,a
03e8: d5 06 01  mov   $0106+x,a
03eb: d5 07 01  mov   $0107+x,a
03ee: d5 03 01  mov   $0103+x,a
03f1: d5 02 01  mov   $0102+x,a
03f4: 7d        mov   a,x
03f5: 60        clrc
03f6: 88 10     adc   a,#$10
03f8: 5d        mov   x,a
03f9: c8 60     cmp   x,#$60
03fb: d0 dd     bne   $03da
03fd: cd 00     mov   x,#$00
03ff: e8 01     mov   a,#$01
0401: d4 80     mov   $80+x,a
0403: e8 00     mov   a,#$00
0405: d4 81     mov   $81+x,a
0407: d4 82     mov   $82+x,a
0409: d4 84     mov   $84+x,a
040b: e8 40     mov   a,#$40
040d: d4 83     mov   $83+x,a
040f: e8 7f     mov   a,#$7f
0411: d4 85     mov   $85+x,a
0413: 7d        mov   a,x
0414: 60        clrc
0415: 88 08     adc   a,#$08
0417: 5d        mov   x,a
0418: c8 30     cmp   x,#$30
041a: d0 e3     bne   $03ff
041c: e8 02     mov   a,#$02
041e: c4 80     mov   $80,a
0420: 6f        ret

0421: 8f 00 e0  mov   $e0,#$00
0424: 8f 5f e1  mov   $e1,#$5f
0427: fa e0 de  mov   ($de),($e0)
042a: fa e1 df  mov   ($df),($e1)
042d: 8d 00     mov   y,#$00
042f: f7 e0     mov   a,($e0)+y
0431: c4 ef     mov   $ef,a
0433: 3a e0     incw  $e0
0435: 5d        mov   x,a
0436: 8d 27     mov   y,#$27
0438: e8 10     mov   a,#$10
043a: 9e        div   ya,x
043b: c4 fa     mov   $fa,a
043d: 8d 00     mov   y,#$00
043f: cd 00     mov   x,#$00
0441: 60        clrc
0442: f7 e0     mov   a,($e0)+y
0444: 60        clrc
0445: 84 de     adc   a,$de
0447: d5 00 01  mov   $0100+x,a
044a: 3a e0     incw  $e0
044c: f7 e0     mov   a,($e0)+y
044e: 60        clrc
044f: 84 df     adc   a,$df
0451: d5 01 01  mov   $0101+x,a
0454: 3a e0     incw  $e0
0456: 7d        mov   a,x
0457: 60        clrc
0458: 88 10     adc   a,#$10
045a: 5d        mov   x,a
045b: c8 60     cmp   x,#$60
045d: d0 e2     bne   $0441
045f: 3f ba 03  call  $03ba
0462: e4 ce     mov   a,$ce
0464: f0 0b     beq   $0471
0466: 8f 00 ce  mov   $ce,#$00
0469: 8f 00 cd  mov   $cd,#$00
046c: 8f 02 cc  mov   $cc,#$02
046f: 2f 06     bra   $0477
0471: 8f 70 cd  mov   $cd,#$70
0474: 8f 00 cc  mov   $cc,#$00
0477: 8f 01 cb  mov   $cb,#$01
047a: 6f        ret

047b: 8d 02     mov   y,#$02
047d: cf        mul   ya
047e: 8f 00 e0  mov   $e0,#$00
0481: 8f 13 e1  mov   $e1,#$13
0484: 7a e0     addw  ya,$e0
0486: da e0     movw  $e0,ya
0488: 8d 00     mov   y,#$00
048a: f7 e0     mov   a,($e0)+y
048c: 2d        push  a
048d: fc        inc   y
048e: f7 e0     mov   a,($e0)+y
0490: c4 e1     mov   $e1,a
0492: ae        pop   a
0493: c4 e0     mov   $e0,a
0495: fa e0 de  mov   ($de),($e0)
0498: fa e1 df  mov   ($df),($e1)
049b: 8d 00     mov   y,#$00
049d: cd 60     mov   x,#$60
049f: 8f 06 e2  mov   $e2,#$06
04a2: 3a e0     incw  $e0
04a4: f7 e0     mov   a,($e0)+y
04a6: 3a e0     incw  $e0
04a8: 68 ff     cmp   a,#$ff
04aa: f0 47     beq   $04f3
04ac: 3f ff 04  call  $04ff
04af: 1a e0     decw  $e0
04b1: 1a e0     decw  $e0
04b3: 60        clrc
04b4: f7 e0     mov   a,($e0)+y
04b6: 84 de     adc   a,$de
04b8: d5 00 01  mov   $0100+x,a
04bb: 3a e0     incw  $e0
04bd: f7 e0     mov   a,($e0)+y
04bf: 84 df     adc   a,$df
04c1: d5 01 01  mov   $0101+x,a
04c4: 3a e0     incw  $e0
04c6: e8 00     mov   a,#$00
04c8: d5 04 01  mov   $0104+x,a
04cb: d5 05 01  mov   $0105+x,a
04ce: d5 06 01  mov   $0106+x,a
04d1: d5 07 01  mov   $0107+x,a
04d4: d5 03 01  mov   $0103+x,a
04d7: d5 02 01  mov   $0102+x,a
04da: 4d        push  x
04db: 7d        mov   a,x
04dc: 5c        lsr   a
04dd: 5d        mov   x,a
04de: e8 00     mov   a,#$00
04e0: d4 81     mov   $81+x,a
04e2: e8 01     mov   a,#$01
04e4: d4 80     mov   $80+x,a
04e6: d4 82     mov   $82+x,a
04e8: d4 84     mov   $84+x,a
04ea: e8 40     mov   a,#$40
04ec: d4 83     mov   $83+x,a
04ee: e8 7f     mov   a,#$7f
04f0: d4 85     mov   $85+x,a
04f2: ce        pop   x
04f3: ab e2     inc   $e2
04f5: 7d        mov   a,x
04f6: 60        clrc
04f7: 88 10     adc   a,#$10
04f9: 5d        mov   x,a
04fa: c8 80     cmp   x,#$80
04fc: d0 a4     bne   $04a2
04fe: 6f        ret

04ff: 4d        push  x
0500: cd 00     mov   x,#$00
0502: d8 eb     mov   $eb,x
0504: 4d        push  x
0505: f4 00     mov   a,$00+x
0507: 64 e2     cmp   a,$e2
0509: d0 03     bne   $050e
050b: 3f 76 0a  call  $0a76
050e: ce        pop   x
050f: ab eb     inc   $eb
0511: 7d        mov   a,x
0512: 60        clrc
0513: 88 10     adc   a,#$10
0515: 5d        mov   x,a
0516: c8 80     cmp   x,#$80
0518: d0 ea     bne   $0504
051a: ce        pop   x
051b: 6f        ret

051c: e4 c8     mov   a,$c8
051e: 60        clrc
051f: 84 fd     adc   a,$fd
0521: f0 06     beq   $0529
0523: 2d        push  a
0524: 3f 2c 05  call  $052c             ; tick
0527: ae        pop   a
0528: 9c        dec   a
0529: c4 c8     mov   $c8,a             ; update counter
052b: 6f        ret

052c: 3f b4 0a  call  $0ab4
052f: 8f 05 e7  mov   $e7,#$05
0532: cd 50     mov   x,#$50
0534: 3f 75 05  call  $0575
0537: 8f 04 e7  mov   $e7,#$04
053a: cd 40     mov   x,#$40
053c: 3f 75 05  call  $0575
053f: 8f 00 e7  mov   $e7,#$00
0542: cd 00     mov   x,#$00
0544: 3f 75 05  call  $0575
0547: 8f 01 e7  mov   $e7,#$01
054a: cd 10     mov   x,#$10
054c: 3f 75 05  call  $0575
054f: 8f 02 e7  mov   $e7,#$02
0552: cd 20     mov   x,#$20
0554: 3f 75 05  call  $0575
0557: 8f 03 e7  mov   $e7,#$03
055a: cd 30     mov   x,#$30
055c: 3f 75 05  call  $0575
055f: e5 01 01  mov   a,$0101
0562: d0 08     bne   $056c
0564: 8f 00 c4  mov   $c4,#$00
0567: 8f 00 c5  mov   $c5,#$00
056a: 2f 02     bra   $056e
056c: 3a c4     incw  $c4
056e: fa c4 f6  mov   ($f6),($c4)
0571: fa c5 f7  mov   ($f7),($c5)
0574: 6f        ret

0575: f5 00 01  mov   a,$0100+x
0578: 15 01 01  or    a,$0101+x
057b: d0 01     bne   $057e             ; branch if not nullptr
057d: 6f        ret

057e: f5 02 01  mov   a,$0102+x
0581: f0 05     beq   $0588
0583: 9c        dec   a
0584: d5 02 01  mov   $0102+x,a         ; decrease delta-time counter
0587: 6f        ret

; dispatch vcmd
0588: f5 00 01  mov   a,$0100+x
058b: c4 e0     mov   $e0,a
058d: f5 01 01  mov   a,$0101+x
0590: c4 e1     mov   $e1,a             ; $e0/1 = voice pointer
0592: 8d 00     mov   y,#$00
0594: f7 e0     mov   a,($e0)+y
0596: c4 d0     mov   $d0,a             ; read vcmd
0598: fc        inc   y
0599: f7 e0     mov   a,($e0)+y
059b: c4 d1     mov   $d1,a             ; read arg1
059d: fc        inc   y
059e: f7 e0     mov   a,($e0)+y
05a0: c4 d2     mov   $d2,a             ; read arg2
05a2: fc        inc   y
05a3: f7 e0     mov   a,($e0)+y
05a5: c4 d3     mov   $d3,a             ; read arg3
05a7: e4 d0     mov   a,$d0
05a9: 68 df     cmp   a,#$df
05ab: b0 03     bcs   $05b0             ; vcmds f5-fe
05ad: 5f f9 06  jmp   $06f9

05b0: 68 fe     cmp   a,#$fe
05b2: d0 09     bne   $05bd
; vcmd fe
05b4: e8 00     mov   a,#$00
05b6: d5 00 01  mov   $0100+x,a
05b9: d5 01 01  mov   $0101+x,a
05bc: 6f        ret

05bd: 68 f9     cmp   a,#$f9
05bf: d0 34     bne   $05f5
; vcmd f9
05c1: 3a e0     incw  $e0
05c3: f5 04 01  mov   a,$0104+x
05c6: 15 05 01  or    a,$0105+x
05c9: d0 18     bne   $05e3
05cb: e4 e0     mov   a,$e0
05cd: d5 04 01  mov   $0104+x,a
05d0: d5 06 01  mov   $0106+x,a
05d3: e4 e1     mov   a,$e1
05d5: d5 05 01  mov   $0105+x,a
05d8: d5 07 01  mov   $0107+x,a
05db: e8 00     mov   a,#$00
05dd: d5 03 01  mov   $0103+x,a
05e0: 5f 51 07  jmp   $0751

05e3: e4 e0     mov   a,$e0
05e5: d5 06 01  mov   $0106+x,a
05e8: e4 e1     mov   a,$e1
05ea: d5 07 01  mov   $0107+x,a
05ed: e8 00     mov   a,#$00
05ef: d5 03 01  mov   $0103+x,a
05f2: 5f 51 07  jmp   $0751

05f5: 68 f8     cmp   a,#$f8
05f7: d0 41     bne   $063a
; vcmd f8
05f9: f5 06 01  mov   a,$0106+x
05fc: 15 07 01  or    a,$0107+x
05ff: d0 0d     bne   $060e
0601: f5 04 01  mov   a,$0104+x
0604: c4 e0     mov   $e0,a
0606: f5 05 01  mov   a,$0105+x
0609: c4 e1     mov   $e1,a
060b: 5f 51 07  jmp   $0751

060e: 3a e0     incw  $e0
0610: 3a e0     incw  $e0
0612: 78 00 d1  cmp   $d1,#$00
0615: f0 08     beq   $061f
0617: f5 03 01  mov   a,$0103+x
061a: bc        inc   a
061b: 64 d1     cmp   a,$d1
061d: f0 10     beq   $062f
061f: d5 03 01  mov   $0103+x,a
0622: f5 06 01  mov   a,$0106+x
0625: c4 e0     mov   $e0,a
0627: f5 07 01  mov   a,$0107+x
062a: c4 e1     mov   $e1,a
062c: 5f 51 07  jmp   $0751

062f: e8 00     mov   a,#$00
0631: d5 06 01  mov   $0106+x,a
0634: d5 07 01  mov   $0107+x,a
0637: 5f 51 07  jmp   $0751

063a: 68 fc     cmp   a,#$fc
063c: d0 11     bne   $064f
; vcmd fc
063e: 7d        mov   a,x
063f: 5c        lsr   a
0640: 5d        mov   x,a
0641: e4 d1     mov   a,$d1
0643: d4 82     mov   $82+x,a
0645: 7d        mov   a,x
0646: 1c        asl   a
0647: 5d        mov   x,a
0648: 3a e0     incw  $e0
064a: 3a e0     incw  $e0
064c: 5f 51 07  jmp   $0751

064f: 68 fb     cmp   a,#$fb
0651: d0 1b     bne   $066e
; vcmd fb
0653: 4d        push  x
0654: 6d        push  y
0655: eb ef     mov   y,$ef
0657: e4 d1     mov   a,$d1
0659: cf        mul   ya
065a: cd 40     mov   x,#$40
065c: 9e        div   ya,x
065d: 5d        mov   x,a
065e: 8d 27     mov   y,#$27
0660: e8 10     mov   a,#$10
0662: 9e        div   ya,x
0663: c4 fa     mov   $fa,a
0665: 3a e0     incw  $e0
0667: 3a e0     incw  $e0
0669: ee        pop   y
066a: ce        pop   x
066b: 5f 51 07  jmp   $0751

066e: 68 f7     cmp   a,#$f7
0670: d0 11     bne   $0683
; vcmd f7
0672: 7d        mov   a,x
0673: 5c        lsr   a
0674: 5d        mov   x,a
0675: e4 d1     mov   a,$d1
0677: d4 85     mov   $85+x,a
0679: 7d        mov   a,x
067a: 1c        asl   a
067b: 5d        mov   x,a
067c: 3a e0     incw  $e0
067e: 3a e0     incw  $e0
0680: 5f 51 07  jmp   $0751

0683: 68 fd     cmp   a,#$fd
0685: d0 11     bne   $0698
; vcmd fd
0687: 7d        mov   a,x
0688: 5c        lsr   a
0689: 5d        mov   x,a
068a: e4 d1     mov   a,$d1
068c: d4 84     mov   $84+x,a
068e: 7d        mov   a,x
068f: 1c        asl   a
0690: 5d        mov   x,a
0691: 3a e0     incw  $e0
0693: 3a e0     incw  $e0
0695: 5f 51 07  jmp   $0751

0698: 68 fa     cmp   a,#$fa
069a: d0 11     bne   $06ad
; vcmd fa
069c: 7d        mov   a,x
069d: 5c        lsr   a
069e: 5d        mov   x,a
069f: e4 d1     mov   a,$d1
06a1: d4 83     mov   $83+x,a
06a3: 7d        mov   a,x
06a4: 1c        asl   a
06a5: 5d        mov   x,a
06a6: 3a e0     incw  $e0
06a8: 3a e0     incw  $e0
06aa: 5f 51 07  jmp   $0751

06ad: 68 f6     cmp   a,#$f6
06af: d0 31     bne   $06e2
; vcmd f6
06b1: e4 d1     mov   a,$d1
06b3: 68 ff     cmp   a,#$ff
06b5: d0 1b     bne   $06d2
06b7: e8 01     mov   a,#$01
06b9: c4 80     mov   $80,a
06bb: c4 88     mov   $88,a
06bd: c5 10 01  mov   $0110,a
06c0: c5 98 01  mov   $0198,a
06c3: c5 20 02  mov   $0220,a
06c6: c5 a8 02  mov   $02a8,a
06c9: c5 30 03  mov   $0330,a
06cc: c5 b8 03  mov   $03b8,a
06cf: 8f 02 d1  mov   $d1,#$02
06d2: 7d        mov   a,x
06d3: 5c        lsr   a
06d4: 5d        mov   x,a
06d5: e4 d1     mov   a,$d1
06d7: d4 80     mov   $80+x,a
06d9: 7d        mov   a,x
06da: 1c        asl   a
06db: 5d        mov   x,a
06dc: 3a e0     incw  $e0
06de: 3a e0     incw  $e0
06e0: 2f 6f     bra   $0751
06e2: 68 f5     cmp   a,#$f5
06e4: d0 13     bne   $06f9
; vcmd f5
06e6: 8f 2c f2  mov   $f2,#$2c          ; EVOL(L)
06e9: fa d1 f3  mov   ($f3),($d1)
06ec: 8f 3c f2  mov   $f2,#$3c          ; EVOL(R)
06ef: fa d1 f3  mov   ($f3),($d1)
06f2: 3a e0     incw  $e0
06f4: 3a e0     incw  $e0
06f6: 5f 51 07  jmp   $0751

; vcmds 00-de
06f9: 3a e0     incw  $e0
06fb: 78 00 d0  cmp   $d0,#$00          ; test MSB of vcmd
06fe: 30 1c     bmi   $071c
;
0700: 3a e0     incw  $e0
0702: e4 d1     mov   a,$d1
0704: d5 08 01  mov   $0108+x,a
0707: 78 00 d0  cmp   $d0,#$00
070a: f0 1f     beq   $072b
070c: 3a e0     incw  $e0
070e: e4 d2     mov   a,$d2
0710: d5 09 01  mov   $0109+x,a
0713: 3a e0     incw  $e0
0715: e4 d3     mov   a,$d3
0717: d5 0a 01  mov   $010a+x,a
071a: 2f 0f     bra   $072b
;
071c: f5 08 01  mov   a,$0108+x
071f: c4 d1     mov   $d1,a
0721: f5 09 01  mov   a,$0109+x
0724: c4 d2     mov   $d2,a
0726: f5 0a 01  mov   a,$010a+x
0729: c4 d3     mov   $d3,a
;
072b: 38 7f d0  and   $d0,#$7f
072e: 78 00 d0  cmp   $d0,#$00
0731: f0 19     beq   $074c
0733: e4 d0     mov   a,$d0
0735: c4 e9     mov   $e9,a
0737: e4 d2     mov   a,$d2
0739: c4 e8     mov   $e8,a
073b: e4 d3     mov   a,$d3
073d: c4 ea     mov   $ea,a
073f: 3f 5e 07  call  $075e
0742: 2f 08     bra   $074c
0744: 3a e0     incw  $e0
0746: 3a e0     incw  $e0
0748: 3a e0     incw  $e0
074a: 3a e0     incw  $e0
074c: e4 d1     mov   a,$d1
074e: d5 02 01  mov   $0102+x,a
0751: e4 e0     mov   a,$e0
0753: d5 00 01  mov   $0100+x,a
0756: e4 e1     mov   a,$e1
0758: d5 01 01  mov   $0101+x,a
075b: 5f 75 05  jmp   $0575             ; dispatch next vcmd

075e: 4d        push  x
075f: 6d        push  y
0760: 2d        push  a
0761: cd 00     mov   x,#$00
0763: d8 eb     mov   $eb,x
0765: f4 00     mov   a,$00+x
0767: 64 e7     cmp   a,$e7
0769: d0 1f     bne   $078a
076b: 78 06 e7  cmp   $e7,#$06
076e: b0 1a     bcs   $078a
0770: 4d        push  x
0771: e4 e7     mov   a,$e7
0773: 1c        asl   a
0774: 1c        asl   a
0775: 1c        asl   a
0776: 5d        mov   x,a
0777: f4 82     mov   a,$82+x
0779: 28 80     and   a,#$80
077b: ce        pop   x
077c: d0 06     bne   $0784
077e: f4 01     mov   a,$01+x
0780: 64 e9     cmp   a,$e9
0782: d0 06     bne   $078a
0784: 3f 75 08  call  $0875
0787: 5f 53 08  jmp   $0853

078a: ab eb     inc   $eb
078c: 7d        mov   a,x
078d: 60        clrc
078e: 88 10     adc   a,#$10
0790: 5d        mov   x,a
0791: c8 80     cmp   x,#$80
0793: d0 d0     bne   $0765
0795: cd 00     mov   x,#$00
0797: d8 eb     mov   $eb,x
0799: f4 00     mov   a,$00+x
079b: 68 ff     cmp   a,#$ff
079d: d0 2d     bne   $07cc
079f: e4 eb     mov   a,$eb
07a1: c4 ec     mov   $ec,a
07a3: 8f 00 ed  mov   $ed,#$00
07a6: f4 00     mov   a,$00+x
07a8: 68 ff     cmp   a,#$ff
07aa: d0 0b     bne   $07b7
07ac: f4 0f     mov   a,$0f+x
07ae: 64 ed     cmp   a,$ed
07b0: 90 05     bcc   $07b7
07b2: c4 ed     mov   $ed,a
07b4: fa ec eb  mov   ($eb),($ec)
07b7: ab ec     inc   $ec
07b9: 7d        mov   a,x
07ba: 60        clrc
07bb: 88 10     adc   a,#$10
07bd: 5d        mov   x,a
07be: c8 80     cmp   x,#$80
07c0: d0 e4     bne   $07a6
07c2: e4 d4     mov   a,$d4
07c4: c4 ed     mov   $ed,a
07c6: 3f 57 08  call  $0857
07c9: 5f 53 08  jmp   $0853

07cc: ab eb     inc   $eb
07ce: 7d        mov   a,x
07cf: 60        clrc
07d0: 88 10     adc   a,#$10
07d2: 5d        mov   x,a
07d3: c8 80     cmp   x,#$80
07d5: d0 c2     bne   $0799
07d7: e4 e7     mov   a,$e7
07d9: 1c        asl   a
07da: 1c        asl   a
07db: 1c        asl   a
07dc: 5d        mov   x,a
07dd: f4 80     mov   a,$80+x
07df: 74 81     cmp   a,$81+x
07e1: b0 35     bcs   $0818
07e3: cd 00     mov   x,#$00
07e5: d8 eb     mov   $eb,x
07e7: d8 ec     mov   $ec,x
07e9: fa d4 ed  mov   ($ed),($d4)
07ec: f4 00     mov   a,$00+x
07ee: 64 e7     cmp   a,$e7
07f0: d0 0f     bne   $0801
07f2: f4 02     mov   a,$02+x
07f4: fd        mov   y,a
07f5: 80        setc
07f6: a4 ed     sbc   a,$ed
07f8: 28 80     and   a,#$80
07fa: f0 05     beq   $0801
07fc: cb ed     mov   $ed,y
07fe: fa ec eb  mov   ($eb),($ec)
0801: ab ec     inc   $ec
0803: 7d        mov   a,x
0804: 60        clrc
0805: 88 10     adc   a,#$10
0807: 5d        mov   x,a
0808: c8 80     cmp   x,#$80
080a: d0 e0     bne   $07ec
080c: e4 d4     mov   a,$d4
080e: c4 ed     mov   $ed,a
0810: 3f 76 0a  call  $0a76
0813: 3f 57 08  call  $0857
0816: 2f 3b     bra   $0853
0818: cd 00     mov   x,#$00
081a: d8 eb     mov   $eb,x
081c: d8 ec     mov   $ec,x
081e: fa d4 ed  mov   ($ed),($d4)
0821: 4d        push  x
0822: f4 00     mov   a,$00+x
0824: 1c        asl   a
0825: 1c        asl   a
0826: 1c        asl   a
0827: 5d        mov   x,a
0828: f4 80     mov   a,$80+x
082a: 74 81     cmp   a,$81+x
082c: ce        pop   x
082d: b0 0f     bcs   $083e
082f: f4 02     mov   a,$02+x
0831: fd        mov   y,a
0832: 80        setc
0833: a4 ed     sbc   a,$ed
0835: 28 80     and   a,#$80
0837: f0 05     beq   $083e
0839: cb ed     mov   $ed,y
083b: fa ec eb  mov   ($eb),($ec)
083e: ab ec     inc   $ec
0840: 7d        mov   a,x
0841: 60        clrc
0842: 88 10     adc   a,#$10
0844: 5d        mov   x,a
0845: c8 80     cmp   x,#$80
0847: d0 d8     bne   $0821
0849: e4 d4     mov   a,$d4
084b: c4 ed     mov   $ed,a
084d: 3f 76 0a  call  $0a76
0850: 3f 57 08  call  $0857
0853: ae        pop   a
0854: ee        pop   y
0855: ce        pop   x
0856: 6f        ret

0857: 8f 00 ca  mov   $ca,#$00
085a: f8 eb     mov   x,$eb
085c: f5 c2 0d  mov   a,$0dc2+x
085f: 8f 5c f2  mov   $f2,#$5c          ; KON
0862: c4 f3     mov   $f3,a
0864: e4 eb     mov   a,$eb
0866: 1c        asl   a
0867: 1c        asl   a
0868: 1c        asl   a
0869: 1c        asl   a
086a: 60        clrc
086b: 88 08     adc   a,#$08
086d: c4 f2     mov   $f2,a             ; ENVX
086f: e4 f3     mov   a,$f3
0871: d0 fc     bne   $086f
0873: 2f 03     bra   $0878
0875: 8f ff ca  mov   $ca,#$ff
0878: e4 eb     mov   a,$eb
087a: 1c        asl   a
087b: 1c        asl   a
087c: 1c        asl   a
087d: 1c        asl   a
087e: c4 e3     mov   $e3,a
0880: c4 e4     mov   $e4,a
0882: e4 e7     mov   a,$e7
0884: 1c        asl   a
0885: 1c        asl   a
0886: 1c        asl   a
0887: c4 e5     mov   $e5,a
0889: 5d        mov   x,a
088a: e4 da     mov   a,$da
088c: f0 04     beq   $0892
088e: e8 40     mov   a,#$40
0890: 2f 02     bra   $0894
0892: f4 83     mov   a,$83+x
0894: 5c        lsr   a
0895: 5c        lsr   a
0896: f0 01     beq   $0899
0898: 9c        dec   a
0899: fd        mov   y,a
089a: f6 6a 0c  mov   a,$0c6a+y
089d: eb ea     mov   y,$ea
089f: cf        mul   ya
08a0: dd        mov   a,y
08a1: 6d        push  y
08a2: eb e4     mov   y,$e4
08a4: d6 0c 00  mov   $000c+y,a
08a7: ee        pop   y
08a8: 78 06 e7  cmp   $e7,#$06
08ab: b0 03     bcs   $08b0
08ad: e4 cd     mov   a,$cd
08af: cf        mul   ya
08b0: fa e3 f2  mov   ($f2),($e3)       ; VOL(L)
08b3: cb f3     mov   $f3,y
08b5: ab e3     inc   $e3
08b7: e4 da     mov   a,$da
08b9: f0 04     beq   $08bf
08bb: e8 40     mov   a,#$40
08bd: 2f 05     bra   $08c4
08bf: e8 7f     mov   a,#$7f
08c1: 80        setc
08c2: b4 83     sbc   a,$83+x
08c4: 5c        lsr   a
08c5: 5c        lsr   a
08c6: f0 01     beq   $08c9
08c8: 9c        dec   a
08c9: fd        mov   y,a
08ca: f6 6a 0c  mov   a,$0c6a+y
08cd: eb ea     mov   y,$ea
08cf: cf        mul   ya
08d0: 6d        push  y
08d1: dd        mov   a,y
08d2: eb e4     mov   y,$e4
08d4: d6 0d 00  mov   $000d+y,a
08d7: ee        pop   y
08d8: 78 06 e7  cmp   $e7,#$06
08db: b0 03     bcs   $08e0
08dd: e4 cd     mov   a,$cd
08df: cf        mul   ya
08e0: fa e3 f2  mov   ($f2),($e3)       ; VOL(R)
08e3: cb f3     mov   $f3,y
08e5: ab e3     inc   $e3
08e7: f8 e5     mov   x,$e5
08e9: f4 82     mov   a,$82+x
08eb: 68 7f     cmp   a,#$7f
08ed: d0 16     bne   $0905
08ef: cd 00     mov   x,#$00
08f1: f5 5e 0e  mov   a,$0e5e+x
08f4: c4 e2     mov   $e2,a
08f6: 3d        inc   x
08f7: e4 e9     mov   a,$e9
08f9: 75 5e 0e  cmp   a,$0e5e+x
08fc: 90 05     bcc   $0903
08fe: ab e2     inc   $e2
0900: 3d        inc   x
0901: 2f f6     bra   $08f9
0903: e4 e2     mov   a,$e2
0905: 8d 08     mov   y,#$08
0907: cf        mul   ya
0908: 8f 69 c6  mov   $c6,#$69
090b: 8f 0e c7  mov   $c7,#$0e          ; $0e69
090e: 7a c6     addw  ya,$c6
0910: da c6     movw  $c6,ya
0912: 8d 00     mov   y,#$00
0914: f7 c6     mov   a,($c6)+y
0916: 2d        push  a
0917: 2d        push  a
0918: fc        inc   y
0919: e4 e9     mov   a,$e9
091b: 80        setc
091c: b7 c6     sbc   a,($c6)+y
091e: 60        clrc
091f: 88 3c     adc   a,#$3c
0921: 1c        asl   a
0922: fc        inc   y
0923: 5d        mov   x,a
0924: f5 89 0c  mov   a,$0c89+x
0927: c4 dc     mov   $dc,a
0929: f5 8a 0c  mov   a,$0c8a+x
092c: c4 dd     mov   $dd,a
092e: 8f 00 d3  mov   $d3,#$00
0931: f7 c6     mov   a,($c6)+y
0933: f8 e5     mov   x,$e5
0935: 60        clrc
0936: 94 84     adc   a,$84+x
0938: c4 d0     mov   $d0,a
093a: 6d        push  y
093b: eb dc     mov   y,$dc
093d: cf        mul   ya
093e: e4 d0     mov   a,$d0
0940: 30 08     bmi   $094a
0942: dd        mov   a,y
0943: 60        clrc
0944: 84 dc     adc   a,$dc
0946: 98 00 d3  adc   $d3,#$00
0949: fd        mov   y,a
094a: cb d2     mov   $d2,y
094c: eb dd     mov   y,$dd
094e: e4 d0     mov   a,$d0
0950: cf        mul   ya
0951: 2d        push  a
0952: e4 d0     mov   a,$d0
0954: 30 05     bmi   $095b
0956: dd        mov   a,y
0957: 60        clrc
0958: 84 dd     adc   a,$dd
095a: fd        mov   y,a
095b: ae        pop   a
095c: 7a d2     addw  ya,$d2
095e: da dc     movw  $dc,ya
0960: eb e4     mov   y,$e4
0962: e4 dc     mov   a,$dc
0964: d6 08 00  mov   $0008+y,a
0967: d6 0a 00  mov   $000a+y,a
096a: fa e3 f2  mov   ($f2),($e3)       ; P(L)
096d: c4 f3     mov   $f3,a
096f: ab e3     inc   $e3
0971: e4 dd     mov   a,$dd
0973: d6 09 00  mov   $0009+y,a
0976: d6 0b 00  mov   $000b+y,a
0979: fa e3 f2  mov   ($f2),($e3)       ; P(H)
097c: c4 f3     mov   $f3,a
097e: ab e3     inc   $e3
0980: ee        pop   y
0981: fc        inc   y
0982: fa e3 f2  mov   ($f2),($e3)       ; SRCN
0985: ae        pop   a
0986: c4 f3     mov   $f3,a
0988: ab e3     inc   $e3
098a: ae        pop   a
098b: f8 e4     mov   x,$e4
098d: d4 0e     mov   $0e+x,a
098f: 68 01     cmp   a,#$01
0991: d0 09     bne   $099c
0993: e4 e9     mov   a,$e9
0995: 28 1f     and   a,#$1f
0997: 8f 6c f2  mov   $f2,#$6c          ; FLG
099a: c4 f3     mov   $f3,a
099c: fa e3 f2  mov   ($f2),($e3)       ; ADSR(1)
099f: f7 c6     mov   a,($c6)+y
09a1: c4 f3     mov   $f3,a
09a3: ab e3     inc   $e3
09a5: fc        inc   y
09a6: fa e3 f2  mov   ($f2),($e3)       ; ADSR(2)
09a9: f7 c6     mov   a,($c6)+y
09ab: c4 f3     mov   $f3,a
09ad: ab e3     inc   $e3
09af: fc        inc   y
09b0: fa e3 f2  mov   ($f2),($e3)       ; GAIN
09b3: f7 c6     mov   a,($c6)+y
09b5: c4 f3     mov   $f3,a
09b7: ab e3     inc   $e3
09b9: fc        inc   y
09ba: f7 c6     mov   a,($c6)+y
09bc: c4 e6     mov   $e6,a
09be: fc        inc   y
09bf: f7 c6     mov   a,($c6)+y
09c1: 28 7f     and   a,#$7f
09c3: 5d        mov   x,a
09c4: f5 33 0d  mov   a,$0d33+x
09c7: eb e4     mov   y,$e4
09c9: d6 05 00  mov   $0005+y,a
09cc: e4 d4     mov   a,$d4
09ce: f8 e4     mov   x,$e4
09d0: d4 02     mov   $02+x,a
09d2: e4 e9     mov   a,$e9
09d4: d4 01     mov   $01+x,a
09d6: e4 e7     mov   a,$e7
09d8: d4 00     mov   $00+x,a
09da: e4 e8     mov   a,$e8
09dc: d4 06     mov   $06+x,a
09de: e8 00     mov   a,#$00
09e0: d4 0f     mov   $0f+x,a
09e2: ab d4     inc   $d4
09e4: 78 00 ca  cmp   $ca,#$00
09e7: d0 65     bne   $0a4e
09e9: 4d        push  x
09ea: 8f 00 e2  mov   $e2,#$00
09ed: 8f 00 e3  mov   $e3,#$00
09f0: cd 00     mov   x,#$00
09f2: f4 0e     mov   a,$0e+x
09f4: 68 01     cmp   a,#$01
09f6: d0 03     bne   $09fb
09f8: 80        setc
09f9: 2f 01     bra   $09fc
09fb: 60        clrc
09fc: 6b e2     ror   $e2
09fe: 8d 08     mov   y,#$08
0a00: cf        mul   ya
0a01: 8f 69 c6  mov   $c6,#$69
0a04: 8f 0e c7  mov   $c7,#$0e          ; $0e69
0a07: 7a c6     addw  ya,$c6
0a09: da c6     movw  $c6,ya
0a0b: 8d 07     mov   y,#$07
0a0d: f7 c6     mov   a,($c6)+y
0a0f: 28 80     and   a,#$80
0a11: f0 03     beq   $0a16
0a13: 80        setc
0a14: 2f 01     bra   $0a17
0a16: 60        clrc
0a17: 6b e3     ror   $e3
0a19: 7d        mov   a,x
0a1a: 60        clrc
0a1b: 88 10     adc   a,#$10
0a1d: 5d        mov   x,a
0a1e: c8 80     cmp   x,#$80
0a20: d0 d0     bne   $09f2
0a22: 8f 3d f2  mov   $f2,#$3d          ; NON
0a25: fa e2 f3  mov   ($f3),($e2)
0a28: 8f 4d f2  mov   $f2,#$4d          ; EON
0a2b: fa e3 f3  mov   ($f3),($e3)
0a2e: f8 eb     mov   x,$eb
0a30: f5 c2 0d  mov   a,$0dc2+x
0a33: 8f 4c f2  mov   $f2,#$4c          ; KON
0a36: c4 f3     mov   $f3,a
0a38: ce        pop   x
0a39: 8f 5c f2  mov   $f2,#$5c          ; KOF
0a3c: 8f 00 f3  mov   $f3,#$00
0a3f: e4 e6     mov   a,$e6
0a41: d4 03     mov   $03+x,a
0a43: f4 05     mov   a,$05+x
0a45: d4 04     mov   $04+x,a
0a47: f8 e5     mov   x,$e5
0a49: f4 81     mov   a,$81+x
0a4b: bc        inc   a
0a4c: d4 81     mov   $81+x,a
0a4e: 6f        ret

0a4f: 4d        push  x
0a50: 6d        push  y
0a51: 2d        push  a
0a52: cd 00     mov   x,#$00
0a54: d8 eb     mov   $eb,x
0a56: f4 00     mov   a,$00+x
0a58: 64 e7     cmp   a,$e7
0a5a: d0 0b     bne   $0a67
0a5c: f4 01     mov   a,$01+x
0a5e: 64 e9     cmp   a,$e9
0a60: d0 05     bne   $0a67
0a62: 3f 76 0a  call  $0a76
0a65: 2f 0b     bra   $0a72
0a67: ab eb     inc   $eb
0a69: 7d        mov   a,x
0a6a: 60        clrc
0a6b: 88 10     adc   a,#$10
0a6d: 5d        mov   x,a
0a6e: c8 80     cmp   x,#$80
0a70: d0 e4     bne   $0a56
0a72: ae        pop   a
0a73: ee        pop   y
0a74: ce        pop   x
0a75: 6f        ret

0a76: e4 eb     mov   a,$eb
0a78: 1c        asl   a
0a79: 1c        asl   a
0a7a: 1c        asl   a
0a7b: 1c        asl   a
0a7c: 5d        mov   x,a
0a7d: 2d        push  a
0a7e: f4 00     mov   a,$00+x
0a80: 68 06     cmp   a,#$06
0a82: ae        pop   a
0a83: 90 1b     bcc   $0aa0
0a85: 4d        push  x
0a86: f8 eb     mov   x,$eb
0a88: f5 c2 0d  mov   a,$0dc2+x
0a8b: 8f 5c f2  mov   $f2,#$5c          ; KOF
0a8e: c4 f3     mov   $f3,a
0a90: e4 eb     mov   a,$eb
0a92: 1c        asl   a
0a93: 1c        asl   a
0a94: 1c        asl   a
0a95: 1c        asl   a
0a96: 60        clrc
0a97: 88 08     adc   a,#$08
0a99: c4 f2     mov   $f2,a             ; ENVX
0a9b: e4 f3     mov   a,$f3
0a9d: d0 fc     bne   $0a9b
0a9f: ce        pop   x
0aa0: f4 00     mov   a,$00+x
0aa2: 1c        asl   a
0aa3: 1c        asl   a
0aa4: 1c        asl   a
0aa5: c4 e5     mov   $e5,a
0aa7: e8 ff     mov   a,#$ff
0aa9: d4 00     mov   $00+x,a
0aab: bc        inc   a
0aac: f8 e5     mov   x,$e5
0aae: f4 81     mov   a,$81+x
0ab0: 9c        dec   a
0ab1: d4 81     mov   $81+x,a
0ab3: 6f        ret

0ab4: cd 00     mov   x,#$00
0ab6: d8 eb     mov   $eb,x
0ab8: 4d        push  x
0ab9: f4 00     mov   a,$00+x
0abb: 68 ff     cmp   a,#$ff
0abd: f0 10     beq   $0acf
0abf: 68 06     cmp   a,#$06
0ac1: b0 0c     bcs   $0acf
0ac3: f4 06     mov   a,$06+x
0ac5: 9c        dec   a
0ac6: d0 05     bne   $0acd
0ac8: 3f 76 0a  call  $0a76
0acb: 2f 02     bra   $0acf
0acd: d4 06     mov   $06+x,a
0acf: ce        pop   x
0ad0: ab eb     inc   $eb
0ad2: 7d        mov   a,x
0ad3: 60        clrc
0ad4: 88 10     adc   a,#$10
0ad6: 5d        mov   x,a
0ad7: c8 80     cmp   x,#$80
0ad9: d0 dd     bne   $0ab8
0adb: 6f        ret

0adc: cd 00     mov   x,#$00
0ade: d8 eb     mov   $eb,x
0ae0: 4d        push  x
0ae1: f4 00     mov   a,$00+x
0ae3: 68 ff     cmp   a,#$ff
0ae5: d0 0a     bne   $0af1
0ae7: f4 0f     mov   a,$0f+x
0ae9: bc        inc   a
0aea: d0 01     bne   $0aed
0aec: 9c        dec   a
0aed: d4 0f     mov   $0f+x,a
0aef: 2f 10     bra   $0b01
0af1: 68 06     cmp   a,#$06
0af3: 90 0c     bcc   $0b01
0af5: f4 06     mov   a,$06+x
0af7: 9c        dec   a
0af8: d0 05     bne   $0aff
0afa: 3f 76 0a  call  $0a76
0afd: 2f 02     bra   $0b01
0aff: d4 06     mov   $06+x,a
0b01: ce        pop   x
0b02: ab eb     inc   $eb
0b04: 7d        mov   a,x
0b05: 60        clrc
0b06: 88 10     adc   a,#$10
0b08: 5d        mov   x,a
0b09: c8 80     cmp   x,#$80
0b0b: d0 d3     bne   $0ae0
0b0d: 6f        ret

0b0e: e4 c9     mov   a,$c9
0b10: 60        clrc
0b11: 84 fe     adc   a,$fe
0b13: f0 06     beq   $0b1b
0b15: 2d        push  a
0b16: 3f 1e 0b  call  $0b1e
0b19: ae        pop   a
0b1a: 9c        dec   a
0b1b: c4 c9     mov   $c9,a
0b1d: 6f        ret

0b1e: cd 00     mov   x,#$00
0b20: d8 eb     mov   $eb,x
0b22: 4d        push  x
0b23: f4 00     mov   a,$00+x
0b25: f4 03     mov   a,$03+x
0b27: 9c        dec   a
0b28: d0 05     bne   $0b2f
0b2a: 3f fb 0b  call  $0bfb
0b2d: 2f 02     bra   $0b31
0b2f: d4 03     mov   $03+x,a
0b31: f4 00     mov   a,$00+x
0b33: 68 ff     cmp   a,#$ff
0b35: d0 28     bne   $0b5f
0b37: 68 06     cmp   a,#$06
0b39: 90 24     bcc   $0b5f
0b3b: f4 0c     mov   a,$0c+x
0b3d: f0 0d     beq   $0b4c
0b3f: 8d f0     mov   y,#$f0
0b41: cf        mul   ya
0b42: e4 cd     mov   a,$cd
0b44: cf        mul   ya
0b45: d8 f2     mov   $f2,x             ; 
0b47: cb f3     mov   $f3,y
0b49: dd        mov   a,y
0b4a: d4 0c     mov   $0c+x,a
0b4c: f4 0d     mov   a,$0d+x
0b4e: f0 0f     beq   $0b5f
0b50: 8d f0     mov   y,#$f0
0b52: cf        mul   ya
0b53: e4 cd     mov   a,$cd
0b55: cf        mul   ya
0b56: 7d        mov   a,x
0b57: bc        inc   a
0b58: c4 f2     mov   $f2,a             ; 
0b5a: cb f3     mov   $f3,y
0b5c: dd        mov   a,y
0b5d: d4 0d     mov   $0d+x,a
0b5f: ce        pop   x
0b60: ab eb     inc   $eb
0b62: 7d        mov   a,x
0b63: 60        clrc
0b64: 88 10     adc   a,#$10
0b66: 5d        mov   x,a
0b67: c8 80     cmp   x,#$80
0b69: d0 b7     bne   $0b22
0b6b: e4 cc     mov   a,$cc
0b6d: f0 23     beq   $0b92
0b6f: 10 0f     bpl   $0b80
0b71: 60        clrc
0b72: 84 cd     adc   a,$cd
0b74: c4 cd     mov   $cd,a
0b76: b0 17     bcs   $0b8f
0b78: 8f 00 cd  mov   $cd,#$00
0b7b: 8f 00 cc  mov   $cc,#$00
0b7e: 2f 0f     bra   $0b8f
0b80: 60        clrc
0b81: 84 cd     adc   a,$cd
0b83: c4 cd     mov   $cd,a
0b85: 68 70     cmp   a,#$70
0b87: 90 06     bcc   $0b8f
0b89: 8f 70 cd  mov   $cd,#$70
0b8c: 8f 00 cc  mov   $cc,#$00
0b8f: 3f a6 0b  call  $0ba6
0b92: 3f dc 0a  call  $0adc
0b95: 8f 06 e7  mov   $e7,#$06
0b98: cd 60     mov   x,#$60
0b9a: 3f 75 05  call  $0575
0b9d: 8f 07 e7  mov   $e7,#$07
0ba0: cd 70     mov   x,#$70
0ba2: 3f 75 05  call  $0575
0ba5: 6f        ret

0ba6: cd 00     mov   x,#$00
0ba8: f4 00     mov   a,$00+x
0baa: 68 ff     cmp   a,#$ff
0bac: f0 1c     beq   $0bca
0bae: 68 06     cmp   a,#$06
0bb0: b0 18     bcs   $0bca
0bb2: f4 0c     mov   a,$0c+x
0bb4: f0 07     beq   $0bbd
0bb6: eb cd     mov   y,$cd
0bb8: cf        mul   ya
0bb9: d8 f2     mov   $f2,x             ; 
0bbb: cb f3     mov   $f3,y
0bbd: f4 0d     mov   a,$0d+x
0bbf: f0 09     beq   $0bca
0bc1: eb cd     mov   y,$cd
0bc3: cf        mul   ya
0bc4: 7d        mov   a,x
0bc5: bc        inc   a
0bc6: c4 f2     mov   $f2,a             ; 
0bc8: cb f3     mov   $f3,y
0bca: 7d        mov   a,x
0bcb: 60        clrc
0bcc: 88 10     adc   a,#$10
0bce: 5d        mov   x,a
0bcf: c8 80     cmp   x,#$80
0bd1: d0 d5     bne   $0ba8
0bd3: 6f        ret

0bd4: cd 00     mov   x,#$00
0bd6: d8 eb     mov   $eb,x
0bd8: f4 00     mov   a,$00+x
0bda: 68 ff     cmp   a,#$ff
0bdc: f0 04     beq   $0be2
0bde: 68 06     cmp   a,#$06
0be0: b0 0d     bcs   $0bef
0be2: 4d        push  x
0be3: e8 06     mov   a,#$06
0be5: d4 00     mov   $00+x,a
0be7: e8 01     mov   a,#$01
0be9: d4 0e     mov   $0e+x,a
0beb: 3f 76 0a  call  $0a76
0bee: ce        pop   x
0bef: ab eb     inc   $eb
0bf1: 7d        mov   a,x
0bf2: 60        clrc
0bf3: 88 10     adc   a,#$10
0bf5: 5d        mov   x,a
0bf6: c8 80     cmp   x,#$80
0bf8: d0 de     bne   $0bd8
0bfa: 6f        ret

0bfb: e4 eb     mov   a,$eb
0bfd: 1c        asl   a
0bfe: 1c        asl   a
0bff: 1c        asl   a
0c00: 1c        asl   a
0c01: 5d        mov   x,a
0c02: 60        clrc
0c03: 88 02     adc   a,#$02
0c05: c4 e3     mov   $e3,a
0c07: f4 08     mov   a,$08+x
0c09: c4 e0     mov   $e0,a
0c0b: f4 09     mov   a,$09+x
0c0d: c4 e1     mov   $e1,a
0c0f: f4 04     mov   a,$04+x
0c11: fd        mov   y,a
0c12: f6 3a 0d  mov   a,$0d3a+y
0c15: c4 d0     mov   $d0,a
0c17: 28 f0     and   a,#$f0
0c19: 68 80     cmp   a,#$80
0c1b: d0 0c     bne   $0c29
0c1d: 38 0f d0  and   $d0,#$0f
0c20: f4 04     mov   a,$04+x
0c22: 80        setc
0c23: a4 d0     sbc   a,$d0
0c25: d4 04     mov   $04+x,a
0c27: 2f e6     bra   $0c0f
0c29: bb 04     inc   $04+x
0c2b: 8f 00 d3  mov   $d3,#$00
0c2e: e4 d0     mov   a,$d0
0c30: eb e0     mov   y,$e0
0c32: cf        mul   ya
0c33: e4 d0     mov   a,$d0
0c35: 30 08     bmi   $0c3f
0c37: dd        mov   a,y
0c38: 60        clrc
0c39: 84 e0     adc   a,$e0
0c3b: 98 00 d3  adc   $d3,#$00
0c3e: fd        mov   y,a
0c3f: cb d2     mov   $d2,y
0c41: eb e1     mov   y,$e1
0c43: e4 d0     mov   a,$d0
0c45: cf        mul   ya
0c46: 2d        push  a
0c47: e4 d0     mov   a,$d0
0c49: 30 05     bmi   $0c50
0c4b: dd        mov   a,y
0c4c: 60        clrc
0c4d: 84 e1     adc   a,$e1
0c4f: fd        mov   y,a
0c50: ae        pop   a
0c51: 7a d2     addw  ya,$d2
0c53: da e0     movw  $e0,ya
0c55: e4 e0     mov   a,$e0
0c57: d4 0a     mov   $0a+x,a
0c59: fa e3 f2  mov   ($f2),($e3)       ; 
0c5c: c4 f3     mov   $f3,a
0c5e: ab e3     inc   $e3
0c60: e4 e1     mov   a,$e1
0c62: d4 0b     mov   $0b+x,a
0c64: fa e3 f2  mov   ($f2),($e3)       ; 
0c67: c4 f3     mov   $f3,a
0c69: 6f        ret

0c6a: db $ff,$f8,$f1,$ea,$e3,$dc,$d5,$ce,$c7,$c0,$b9,$b2,$ab,$a4,$9d,$96,$8f,$88,$81,$7a,$73,$6c,$65,$5e,$57,$50,$49,$42,$3b,$34,$2d

; pitch table
0c89: dw $0080
0c8b: dw $0087
0c8d: dw $008e
0c8f: dw $0098
0c91: dw $00a1
0c93: dw $00aa
0c95: dw $00b5
0c97: dw $00bf
0c99: dw $00c6
0c9b: dw $00d7
0c9d: dw $00e4
0c9f: dw $00f1
0ca1: dw $0100
0ca3: dw $010f
0ca5: dw $011c
0ca7: dw $0130
0ca9: dw $0142
0cab: dw $0155
0cad: dw $016a
0caf: dw $017f
0cb1: dw $0196
0cb3: dw $01ae
0cb5: dw $01c8
0cb7: dw $01e3
0cb9: dw $0200
0cbb: dw $021e
0cbd: dw $023e
0cbf: dw $0260
0cc1: dw $0285
0cc3: dw $02ab
0cc5: dw $02d4
0cc7: dw $02ff
0cc9: dw $032c
0ccb: dw $035d
0ccd: dw $0390
0ccf: dw $03c6
0cd1: dw $0400
0cd3: dw $043c
0cd5: dw $047d
0cd7: dw $04c1
0cd9: dw $050a
0cdb: dw $0556
0cdd: dw $05a8
0cdf: dw $05fe
0ce1: dw $0659
0ce3: dw $06ba
0ce5: dw $0720
0ce7: dw $078d
0ce9: dw $0800
0ceb: dw $0879
0ced: dw $08fa
0cef: dw $0983
0cf1: dw $0a14
0cf3: dw $0aad
0cf5: dw $0b50
0cf7: dw $0bfc
0cf9: dw $0cb3
0cfb: dw $0d74
0cfd: dw $0e41
0cff: dw $0f1a
0d01: dw $1000
0d03: dw $10f3
0d05: dw $11f5
0d07: dw $1307
0d09: dw $1428
0d0b: dw $155b
0d0d: dw $16a0
0d0f: dw $17f9
0d11: dw $1966
0d13: dw $1ae8
0d15: dw $1c82
0d17: dw $1e34
0d19: dw $2000
0d1b: dw $21e7
0d1d: dw $23eb
0d1f: dw $260e
0d21: dw $2851
0d23: dw $2ab7
0d25: dw $2d41
0d27: dw $2ff2
0d29: dw $32cc
0d2b: dw $35d1
0d2d: dw $3904
0d2f: dw $3c68
0d31: dw $3fff

0d33: db $00,$02,$19,$32,$3f,$6b,$83

0d3a: db $00,$81,$00,$00,$00,$ff,$00,$00,$00,$01,$00,$00,$00,$ff,$ff,$00,$00,$00,$00,$01,$01,$00,$00,$00,$8c,$00,$00,$ff,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$ff,$ff,$00,$00,$00,$00,$01,$01,$00,$00,$8c,$00,$00,$e0,$00,$00,$10,$00,$00,$e0,$00,$00,$00,$8c,$00,$ff,$00,$00,$00,$01,$00,$00,$00,$ff,$fe,$ff,$00,$00,$01,$02,$01,$00,$00,$fe,$fd,$fc,$fd,$fe,$00,$00,$02,$03,$04,$03,$02,$00,$fe,$fc,$fb,$fc,$fe,$00,$02,$04,$05,$04,$02,$8c,$00,$ff,$fe,$fe,$ff,$00,$00,$01,$02,$02,$01,$00,$ff,$fe,$fd,$fe,$ff,$00,$01,$02,$03,$02,$01,$8c,$00,$e0,$00,$10,$8c

0dc2: db $01,$02,$04,$08,$10,$20,$40,$80

0dca: 8f 00 f1  mov   $f1,#$00
0dcd: 8f 46 fa  mov   $fa,#$46
0dd0: 8f 85 fb  mov   $fb,#$85
0dd3: 8f 33 f1  mov   $f1,#$33
0dd6: 8f 00 f4  mov   $f4,#$00
0dd9: 8f 00 f5  mov   $f5,#$00
0ddc: 8f 00 f6  mov   $f6,#$00
0ddf: 8f 00 f7  mov   $f7,#$00
0de2: 6f        ret

0de3: cd 2e     mov   x,#$2e            ; 46 bytes
0de5: 8d 00     mov   y,#$00
0de7: 8f 16 e0  mov   $e0,#$16
0dea: 8f 0e e1  mov   $e1,#$0e          ; from $0e16
; set S-DSP hardware registers
; @in X length of input in bytes
; @in Y offset (should be 0)
; @in $e0/1 pointer of address-value pairs
0ded: f7 e0     mov   a,($e0)+y
0def: c4 f2     mov   $f2,a
0df1: 3a e0     incw  $e0
0df3: 1d        dec   x
0df4: f7 e0     mov   a,($e0)+y
0df6: c4 f3     mov   $f3,a
0df8: 3a e0     incw  $e0
0dfa: 1d        dec   x
0dfb: d0 f0     bne   $0ded
0dfd: 6f        ret

0dfe: cd 0c     mov   x,#$0c            ; 12 bytes
0e00: 8d 00     mov   y,#$00
0e02: 8f 44 e0  mov   $e0,#$44
0e05: 8f 0e e1  mov   $e1,#$0e          ; from $0e44
0e08: 2f e3     bra   $0ded
;
0e0a: cd 0e     mov   x,#$0e            ; 14 bytes
0e0c: 8d 00     mov   y,#$00
0e0e: 8f 50 e0  mov   $e0,#$50
0e11: 8f 0e e1  mov   $e1,#$0e          ; from $0e50
0e14: 2f d7     bra   $0ded

0e16: db $6c,$60
0e18: db $6d,$e7
0e1a: db $7d,$03
0e1c: db $0d,$40
0e1e: db $4d,$00
0e20: db $2d,$00
0e22: db $3d,$00
0e24: db $0c,$00
0e26: db $1c,$00
0e28: db $2c,$00
0e2a: db $3c,$00
0e2c: db $5d,$1b
0e2e: db $5c,$ff
0e30: db $4c,$00
0e32: db $0f,$7f
0e34: db $1f,$00
0e36: db $2f,$00
0e38: db $3f,$00
0e3a: db $4f,$00
0e3c: db $5f,$00
0e3e: db $6f,$00
0e40: db $7f,$00
0e42: db $6c,$20

0e44: db $0c,$00
0e46: db $1c,$00
0e48: db $2c,$00
0e4a: db $3c,$00
0e4c: db $4d,$ff
0e4e: db $6c,$00

0e50: db $5c,$00
0e52: db $0c,$90
0e54: db $1c,$90
0e56: db $2c,$40
0e58: db $3c,$40
0e5a: db $4d,$ff
0e5c: db $6c,$00

0e5e: db $02,$25,$26,$28,$29,$2a,$2d,$2e,$30,$31,$80

0e69: db $00,$54,$0b,$8f,$e0,$00,$18,$03,$01,$60,$00,$8f,$e4,$00,$ff,$00,$02,$34,$00,$9f,$d9,$00,$ff,$00,$03,$26,$07,$ef,$aa,$00,$ff,$00,$04,$30,$00,$8f,$ee,$00,$ff,$00,$05,$30,$00,$8f,$e0,$00,$ff,$00,$06,$3b,$00,$af,$02,$00,$18,$03,$07,$2f,$00,$ff,$36,$00,$ff,$00,$06,$35,$00,$af,$c5,$00,$ff,$80,$07,$31,$00,$8a,$e7,$00,$ff,$00,$06,$32,$00,$af,$a8,$00,$18,$03,$0b,$37,$00,$af,$cf,$00,$ff,$80,$0c,$36,$04,$bf,$6d,$00,$ff,$00,$0d,$24,$fb,$8f,$e3,$00,$ff,$00,$00,$36,$04,$8f,$e0,$00,$ff,$80,$0f,$4c,$fd,$bf,$6a,$00,$ff,$80,$10,$48,$00,$8e,$e8,$00,$0c,$84,$11,$48,$fc,$bd,$6a,$00,$ff,$80,$12,$59,$ff,$cf,$b4,$00,$ff,$00,$13,$4d,$0c,$8f,$ac,$00,$ff,$00,$14,$54,$00,$bd,$e2,$00,$ff,$80,$15,$48,$fc,$8f,$e0,$00,$10,$84,$16,$48,$fc,$ff,$a0,$00,$18,$84,$17,$5f,$fd,$cc,$c8,$00,$18,$84,$18,$49,$03,$cc,$c8,$00,$ff,$80,$19,$48,$ff,$8f,$64,$00,$ff,$80,$1a,$4c,$fd,$bd,$74,$00,$ff,$80,$1b,$4e,$0d,$df,$25,$00,$0c,$84,$1c,$48,$00,$ef,$85,$00,$ff,$00,$1d,$4c,$fd,$8f,$e0,$00,$18,$84,$1e,$4c,$fd,$ad,$0f,$00,$ff,$80,$1f,$54,$0b,$8f,$88,$00,$0c,$02,$00,$53,$ff,$af,$a6,$00,$0c,$02,$01,$60,$00,$83,$44,$00,$ff,$00,$00,$53,$ff,$a8,$a6,$00,$02,$03,$1f,$54,$0b,$8a,$e0,$00,$02,$03,$24,$4c,$00,$8f,$e0,$00,$ff,$00,$25,$30,$00,$8f,$e0,$00,$ff,$00,$26,$32,$00,$bf,$8f,$00,$ff,$80,$1d,$4c,$fd,$88,$e0,$00,$18,$84,$28,$53,$fd,$8a,$ec,$00,$ff,$00,$03,$23,$00,$ef,$aa,$00,$ff,$00,$00,$53,$ff,$85,$e0,$00,$ff,$03,$14,$54,$00,$b9,$e2,$00,$ff,$80,$2c,$4c,$fd,$8f,$e0,$00,$18,$84,$00,$4c,$00,$8f,$e0,$00,$ff,$00,$00,$48,$00,$8f,$e7,$00,$ff,$00,$00,$3c,$00,$8f,$e2,$00,$ff,$00,$00,$45,$00,$8f,$e0,$00,$ff,$00,$00,$48,$00,$8f,$ea,$00,$ff,$00,$00,$4f,$00,$8f,$e0,$00,$ff,$00,$00,$60,$00,$8f,$e0,$00,$ff,$00,$00,$48,$00,$af,$d0,$00,$ff,$80,$00,$48,$00,$f5,$04,$00,$30,$06,$00,$60,$00,$8f,$e0,$00,$ff,$00,$00,$60,$00,$83,$e4,$00,$ff,$00,$38,$4c,$00,$8f,$e0,$00,$ff,$00,$39,$4c,$00,$8f,$e0,$00,$ff,$00,$3a,$4c,$00,$8f,$e0,$00,$ff,$00,$3b,$4c,$00,$8f,$e0,$00,$ff,$00,$3c,$4c,$00,$8f,$e0,$00,$ff,$00,$3d,$4c,$00,$8f,$e0,$00,$ff,$00,$3e,$4c,$00,$8f,$e0,$00,$ff,$00,$3f,$4c,$00,$8f,$e0,$00,$ff,$00,$40,$4c,$00,$8f,$e0,$00,$ff,$00,$41,$4c,$00,$8f,$e0,$00,$ff,$00,$42,$4c,$00,$8f,$e0,$00,$ff,$00,$43,$4c,$00,$8f,$e0,$00,$ff,$00,$44,$4c,$00,$8f,$e0,$00,$ff,$00,$45,$4c,$03,$8f,$e0,$00,$ff,$00,$46,$4c,$03,$8f,$e0,$00,$ff,$00,$47,$4c,$00,$8f,$e0,$00,$ff,$00,$48,$4c,$00,$8f,$e0,$00,$ff,$00,$49,$4c,$00,$8f,$e0,$00,$ff,$00,$4a,$4c,$00,$8f,$e0,$00,$ff,$00,$4b,$4c,$00,$8f,$e0,$00,$ff,$00,$4c,$4c,$00,$8f,$e0,$00,$ff,$00,$4d,$4c,$00,$8f,$e0,$00,$ff,$00,$4e,$4c,$00,$8f,$e0,$00,$ff,$00,$4f,$4c,$00,$8f,$e0,$00,$ff,$00,$50,$4c,$00,$8f,$e0,$00,$ff,$00,$51,$4c,$00,$8f,$e0,$00,$ff,$00,$52,$4c,$00,$8f,$e0,$00,$ff,$00,$53,$4c,$00,$8f,$e0,$00,$ff,$00,$54,$4c,$00,$8f,$e0,$00,$ff,$00,$55,$4c,$00,$8f,$e0,$00,$ff,$00,$56,$4c,$00,$8f,$e0,$00,$ff,$00,$57,$4c,$00,$8f,$e0,$00,$ff,$00,$58,$4c,$00,$8f,$e0,$00,$ff,$00,$59,$4c,$00,$8f,$e0,$00,$ff,$00,$5a,$4c,$00,$8f,$e0,$00,$ff,$00,$5b,$4c,$00,$8f,$e0,$00,$ff,$00,$5c,$4c,$00,$8f,$e0,$00,$ff,$00,$5d,$4c,$00,$8f,$e0,$00,$ff,$00,$5e,$4c,$00,$8f,$e0,$00,$ff,$00,$5f,$4c,$00,$8f,$e0,$00,$ff,$00,$60,$4c,$00,$8f,$e0,$00,$ff,$00,$61,$4c,$00,$8f,$e0,$00,$ff,$00,$62,$4c,$00,$8f,$e0,$00,$ff,$00,$63,$4c,$00,$8f,$e0,$00,$ff,$00,$64,$4c,$00,$8f,$e0,$00,$ff,$00,$65,$4c,$00,$8f,$e0,$00,$ff,$00,$66,$4c,$00,$8f,$e0,$00,$ff,$00,$67,$4c,$00,$8f,$e0,$00,$ff,$00,$68,$4c,$00,$8f,$e0,$00,$ff,$00,$69,$4c,$00,$8f,$e0,$00,$ff,$00,$6a,$4c,$00,$8f,$e0,$00,$ff,$00,$6b,$57,$00,$8f,$e0,$00,$ff,$00,$6c,$4c,$00,$8f,$e0,$00,$ff,$00,$6d,$48,$fe,$8f,$e0,$00,$ff,$00,$6e,$48,$fe,$8f,$e0,$00,$ff,$00,$6f,$48,$fe,$8f,$e0,$00,$ff,$00,$70,$48,$fe,$8f,$e0,$00,$ff,$00,$71,$48,$fe,$8f,$e0,$00,$ff,$00,$72,$4d,$fd,$8f,$e0,$00,$ff,$00,$73,$4c,$00,$8f,$e0,$00,$ff,$00,$74,$4d,$00,$8f,$e0,$00,$ff,$00,$75,$4c,$00,$8f,$e0,$00,$ff,$00,$76,$4c,$00,$8f,$e0,$00,$ff,$00,$77,$4c,$00,$8f,$e0,$00,$ff,$00,$78,$4c,$00,$8f,$e0,$00,$ff,$00,$79,$4c,$00,$8f,$e0,$00,$ff,$00,$7a,$4c,$00,$8f,$e0,$00,$ff,$00,$7b,$4d,$00,$8f,$e0,$00,$ff,$00,$7c,$4f,$00,$8f,$e0,$00,$ff,$00,$7d,$4c,$00,$8f,$e0,$00,$ff,$00,$7e,$4c,$00,$8f,$e0,$00,$ff,$00,$02,$54,$00,$8f,$e0,$00,$ff,$00,$80,$4c,$00,$8f,$e0,$00,$ff,$00,$81,$4c,$00,$8f,$e0,$00,$ff,$00,$82,$4c,$00,$8f,$e0,$00,$ff,$00,$83,$4c,$00,$8f,$e0,$00,$ff,$00,$84,$4c,$00,$8f,$e0,$00,$ff,$00,$85,$4c,$00,$8f,$e0,$00,$ff,$00,$86,$4c,$00,$8f,$e0,$00,$ff,$00,$87,$4c,$00,$8f,$e0,$00,$ff,$00,$88,$4c,$00,$8f,$e0,$00,$ff,$00
