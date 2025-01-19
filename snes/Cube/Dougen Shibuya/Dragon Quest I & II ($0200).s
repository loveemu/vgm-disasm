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
0216: 3f 41 0d  call  $0d41
0219: 3f 28 0d  call  $0d28
021c: 3f 60 03  call  $0360
021f: 3f 4c 03  call  $034c
0222: 3f 40 02  call  $0240
0225: 3f 68 0d  call  $0d68
0228: 8f 19 f4  mov   $f4,#$19
022b: 8f 67 f5  mov   $f5,#$67
022e: 8f 07 f6  mov   $f6,#$07
0231: 8f 04 f7  mov   $f7,#$04
0234: 3f 4b 02  call  $024b
0237: 3f dc 04  call  $04dc
023a: 3f b1 0a  call  $0ab1
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
0255: f0 5a     beq   $02b1
0257: 68 01     cmp   a,#$01
0259: d0 03     bne   $025e
025b: 5f cd 02  jmp   $02cd

025e: 68 02     cmp   a,#$02
0260: d0 03     bne   $0265
0262: 5f d9 02  jmp   $02d9

0265: 68 04     cmp   a,#$04
0267: d0 03     bne   $026c
0269: 5f 07 03  jmp   $0307

026c: 68 05     cmp   a,#$05
026e: d0 03     bne   $0273
0270: 5f 22 03  jmp   $0322

0273: 68 06     cmp   a,#$06
0275: d0 03     bne   $027a
0277: 5f 28 03  jmp   $0328

027a: 68 07     cmp   a,#$07
027c: d0 03     bne   $0281
027e: 5f 16 03  jmp   $0316

0281: 68 08     cmp   a,#$08
0283: d0 03     bne   $0288
0285: 5f 31 03  jmp   $0331

0288: 68 09     cmp   a,#$09
028a: d0 03     bne   $028f
028c: 5f 40 03  jmp   $0340

028f: 68 0a     cmp   a,#$0a
0291: d0 03     bne   $0296
0293: 5f 43 03  jmp   $0343

0296: 68 0b     cmp   a,#$0b
0298: d0 03     bne   $029d
029a: 5f 46 03  jmp   $0346

029d: 8f ff f5  mov   $f5,#$ff
02a0: 8f ff f6  mov   $f6,#$ff
02a3: 8f ff f7  mov   $f7,#$ff
02a6: 8f 37 f1  mov   $f1,#$37
02a9: e4 d5     mov   a,$d5
02ab: bc        inc   a
02ac: c4 d5     mov   $d5,a
02ae: c4 f4     mov   $f4,a
02b0: 6f        ret

02b1: 8d 00     mov   y,#$00
02b3: e4 f5     mov   a,$f5
02b5: d7 d8     mov   ($d8)+y,a
02b7: 3a d8     incw  $d8
02b9: e4 f6     mov   a,$f6
02bb: d7 d8     mov   ($d8)+y,a
02bd: 3a d8     incw  $d8
02bf: e4 f7     mov   a,$f7
02c1: d7 d8     mov   ($d8)+y,a
02c3: 3a d8     incw  $d8
02c5: fa d8 f6  mov   ($f6),($d8)
02c8: fa d9 f7  mov   ($f7),($d9)
02cb: 2f d9     bra   $02a6
02cd: e4 f5     mov   a,$f5
02cf: c4 d6     mov   $d6,a
02d1: 8f 00 d8  mov   $d8,#$00
02d4: 8f 46 d9  mov   $d9,#$46
02d7: 2f cd     bra   $02a6
02d9: e4 f5     mov   a,$f5
02db: 8f 00 e0  mov   $e0,#$00
02de: 8f 1e e1  mov   $e1,#$1e          ; $1e00
02e1: 1c        asl   a
02e2: 1c        asl   a
02e3: fd        mov   y,a
02e4: fa d8 d0  mov   ($d0),($d8)
02e7: e4 d0     mov   a,$d0
02e9: d7 e0     mov   ($e0)+y,a
02eb: fc        inc   y
02ec: fa d9 d1  mov   ($d1),($d9)
02ef: e4 d1     mov   a,$d1
02f1: d7 e0     mov   ($e0)+y,a
02f3: fc        inc   y
02f4: 60        clrc
02f5: 89 f6 d0  adc   ($d0),($f6)
02f8: 89 f7 d1  adc   ($d1),($f7)
02fb: e4 d0     mov   a,$d0
02fd: d7 e0     mov   ($e0)+y,a
02ff: fc        inc   y
0300: e4 d1     mov   a,$d1
0302: d7 e0     mov   ($e0)+y,a
0304: 5f a6 02  jmp   $02a6

0307: 3f 78 0b  call  $0b78
030a: 3f b2 03  call  $03b2
030d: 3f 14 04  call  $0414
0310: 8f 00 f5  mov   $f5,#$00
0313: 5f a6 02  jmp   $02a6

0316: 3f 78 0b  call  $0b78
0319: 3f b2 03  call  $03b2
031c: 8f 00 f5  mov   $f5,#$00
031f: 5f a6 02  jmp   $02a6

0322: 8f 01 ce  mov   $ce,#$01
0325: 5f a6 02  jmp   $02a6

0328: 8f fe cc  mov   $cc,#$fe
032b: 18 01 cd  or    $cd,#$01
032e: 5f a6 02  jmp   $02a6

0331: e4 f5     mov   a,$f5
0333: 68 47     cmp   a,#$47
0335: b0 06     bcs   $033d
0337: 3f 6e 04  call  $046e
033a: 8f 00 f5  mov   $f5,#$00
033d: 5f a6 02  jmp   $02a6

0340: 5f a6 02  jmp   $02a6

0343: 5f a6 02  jmp   $02a6

0346: fa f5 da  mov   ($da),($f5)
0349: 5f a6 02  jmp   $02a6

034c: cd 00     mov   x,#$00
034e: 7d        mov   a,x
034f: fd        mov   y,a
0350: 8f 00 e0  mov   $e0,#$00
0353: 8f d7 e1  mov   $e1,#$d7          ; $d700
0356: d7 e0     mov   ($e0)+y,a
0358: 3a e0     incw  $e0
035a: 78 ff e1  cmp   $e1,#$ff
035d: d0 f7     bne   $0356
035f: 6f        ret

0360: cd 00     mov   x,#$00
0362: e8 ff     mov   a,#$ff
0364: d4 00     mov   $00+x,a
0366: d4 02     mov   $02+x,a
0368: bc        inc   a
0369: d5 00 01  mov   $0100+x,a
036c: d5 01 01  mov   $0101+x,a
036f: d5 04 01  mov   $0104+x,a
0372: d5 05 01  mov   $0105+x,a
0375: d5 06 01  mov   $0106+x,a
0378: d5 07 01  mov   $0107+x,a
037b: d5 03 01  mov   $0103+x,a
037e: d5 02 01  mov   $0102+x,a
0381: 7d        mov   a,x
0382: 60        clrc
0383: 88 10     adc   a,#$10
0385: 5d        mov   x,a
0386: c8 80     cmp   x,#$80
0388: d0 d8     bne   $0362
038a: cd 00     mov   x,#$00
038c: e8 01     mov   a,#$01
038e: d4 80     mov   $80+x,a
0390: e8 00     mov   a,#$00
0392: d4 81     mov   $81+x,a
0394: d4 82     mov   $82+x,a
0396: d4 84     mov   $84+x,a
0398: e8 40     mov   a,#$40
039a: d4 83     mov   $83+x,a
039c: e8 7f     mov   a,#$7f
039e: d4 85     mov   $85+x,a
03a0: 7d        mov   a,x
03a1: 60        clrc
03a2: 88 08     adc   a,#$08
03a4: 5d        mov   x,a
03a5: c8 40     cmp   x,#$40
03a7: d0 e3     bne   $038c
03a9: 8f 00 d4  mov   $d4,#$00
03ac: 6f        ret

03ad: e8 02     mov   a,#$02
03af: c4 80     mov   $80,a
03b1: 6f        ret

03b2: cd 00     mov   x,#$00
03b4: f4 00     mov   a,$00+x
03b6: 68 ff     cmp   a,#$ff
03b8: f0 08     beq   $03c2
03ba: 68 06     cmp   a,#$06
03bc: b0 04     bcs   $03c2
03be: e8 ff     mov   a,#$ff
03c0: d4 00     mov   $00+x,a
03c2: 7d        mov   a,x
03c3: 60        clrc
03c4: 88 10     adc   a,#$10
03c6: 5d        mov   x,a
03c7: c8 80     cmp   x,#$80
03c9: d0 e9     bne   $03b4
03cb: cd 00     mov   x,#$00
03cd: e8 00     mov   a,#$00
03cf: d5 00 01  mov   $0100+x,a
03d2: d5 01 01  mov   $0101+x,a
03d5: d5 04 01  mov   $0104+x,a
03d8: d5 05 01  mov   $0105+x,a
03db: d5 06 01  mov   $0106+x,a
03de: d5 07 01  mov   $0107+x,a
03e1: d5 03 01  mov   $0103+x,a
03e4: d5 02 01  mov   $0102+x,a
03e7: 7d        mov   a,x
03e8: 60        clrc
03e9: 88 10     adc   a,#$10
03eb: 5d        mov   x,a
03ec: c8 60     cmp   x,#$60
03ee: d0 dd     bne   $03cd
03f0: cd 00     mov   x,#$00
03f2: e8 01     mov   a,#$01
03f4: d4 80     mov   $80+x,a
03f6: e8 00     mov   a,#$00
03f8: d4 81     mov   $81+x,a
03fa: d4 82     mov   $82+x,a
03fc: d4 84     mov   $84+x,a
03fe: e8 40     mov   a,#$40
0400: d4 83     mov   $83+x,a
0402: e8 7f     mov   a,#$7f
0404: d4 85     mov   $85+x,a
0406: 7d        mov   a,x
0407: 60        clrc
0408: 88 08     adc   a,#$08
040a: 5d        mov   x,a
040b: c8 30     cmp   x,#$30
040d: d0 e3     bne   $03f2
040f: e8 02     mov   a,#$02
0411: c4 80     mov   $80,a
0413: 6f        ret

0414: 8f 00 e0  mov   $e0,#$00
0417: 8f 46 e1  mov   $e1,#$46          ; $4600
041a: fa e0 de  mov   ($de),($e0)
041d: fa e1 df  mov   ($df),($e1)
0420: 8d 00     mov   y,#$00
0422: f7 e0     mov   a,($e0)+y
0424: c4 ef     mov   $ef,a
0426: 3a e0     incw  $e0
0428: 5d        mov   x,a
0429: 8d 27     mov   y,#$27
042b: e8 10     mov   a,#$10
042d: 9e        div   ya,x
042e: c4 fa     mov   $fa,a
0430: 8d 00     mov   y,#$00
0432: cd 00     mov   x,#$00
0434: 60        clrc
0435: f7 e0     mov   a,($e0)+y
0437: 60        clrc
0438: 84 de     adc   a,$de
043a: d5 00 01  mov   $0100+x,a
043d: 3a e0     incw  $e0
043f: f7 e0     mov   a,($e0)+y
0441: 60        clrc
0442: 84 df     adc   a,$df
0444: d5 01 01  mov   $0101+x,a
0447: 3a e0     incw  $e0
0449: 7d        mov   a,x
044a: 60        clrc
044b: 88 10     adc   a,#$10
044d: 5d        mov   x,a
044e: c8 60     cmp   x,#$60
0450: d0 e2     bne   $0434
0452: 3f ad 03  call  $03ad
0455: e4 ce     mov   a,$ce
0457: f0 0b     beq   $0464
0459: 8f 00 ce  mov   $ce,#$00
045c: 8f 00 cd  mov   $cd,#$00
045f: 8f 02 cc  mov   $cc,#$02
0462: 2f 06     bra   $046a
0464: 8f ff cd  mov   $cd,#$ff
0467: 8f 00 cc  mov   $cc,#$00
046a: 8f 01 cb  mov   $cb,#$01
046d: 6f        ret

046e: 1c        asl   a
046f: 5d        mov   x,a
0470: f5 00 0f  mov   a,$0f00+x
0473: c4 e0     mov   $e0,a
0475: f5 01 0f  mov   a,$0f01+x
0478: c4 e1     mov   $e1,a
047a: fa e0 de  mov   ($de),($e0)
047d: fa e1 df  mov   ($df),($e1)
0480: 8d 00     mov   y,#$00
0482: cd 60     mov   x,#$60
0484: 3a e0     incw  $e0
0486: f7 e0     mov   a,($e0)+y
0488: 3a e0     incw  $e0
048a: 68 ff     cmp   a,#$ff
048c: f0 44     beq   $04d2
048e: 1a e0     decw  $e0
0490: 1a e0     decw  $e0
0492: 60        clrc
0493: f7 e0     mov   a,($e0)+y
0495: 84 de     adc   a,$de
0497: d5 00 01  mov   $0100+x,a
049a: 3a e0     incw  $e0
049c: f7 e0     mov   a,($e0)+y
049e: 84 df     adc   a,$df
04a0: d5 01 01  mov   $0101+x,a
04a3: 3a e0     incw  $e0
04a5: e8 00     mov   a,#$00
04a7: d5 04 01  mov   $0104+x,a
04aa: d5 05 01  mov   $0105+x,a
04ad: d5 06 01  mov   $0106+x,a
04b0: d5 07 01  mov   $0107+x,a
04b3: d5 03 01  mov   $0103+x,a
04b6: d5 02 01  mov   $0102+x,a
04b9: 4d        push  x
04ba: 7d        mov   a,x
04bb: 5c        lsr   a
04bc: 5d        mov   x,a
04bd: e8 00     mov   a,#$00
04bf: d4 81     mov   $81+x,a
04c1: e8 01     mov   a,#$01
04c3: d4 80     mov   $80+x,a
04c5: d4 82     mov   $82+x,a
04c7: d4 84     mov   $84+x,a
04c9: e8 40     mov   a,#$40
04cb: d4 83     mov   $83+x,a
04cd: e8 7f     mov   a,#$7f
04cf: d4 85     mov   $85+x,a
04d1: ce        pop   x
04d2: 7d        mov   a,x
04d3: 60        clrc
04d4: 88 10     adc   a,#$10
04d6: 5d        mov   x,a
04d7: c8 80     cmp   x,#$80
04d9: d0 a9     bne   $0484
04db: 6f        ret

04dc: e4 c8     mov   a,$c8
04de: 60        clrc
04df: 84 fd     adc   a,$fd
04e1: f0 06     beq   $04e9
04e3: 2d        push  a
04e4: 3f ec 04  call  $04ec             ; tick
04e7: ae        pop   a
04e8: 9c        dec   a
04e9: c4 c8     mov   $c8,a             ; update counter
04eb: 6f        ret

04ec: 3f 57 0a  call  $0a57
04ef: 8f 00 e7  mov   $e7,#$00
04f2: cd 00     mov   x,#$00
04f4: 3f 20 05  call  $0520
04f7: 8f 01 e7  mov   $e7,#$01
04fa: cd 10     mov   x,#$10
04fc: 3f 20 05  call  $0520
04ff: 8f 02 e7  mov   $e7,#$02
0502: cd 20     mov   x,#$20
0504: 3f 20 05  call  $0520
0507: 8f 03 e7  mov   $e7,#$03
050a: cd 30     mov   x,#$30
050c: 3f 20 05  call  $0520
050f: 8f 04 e7  mov   $e7,#$04
0512: cd 40     mov   x,#$40
0514: 3f 20 05  call  $0520
0517: 8f 05 e7  mov   $e7,#$05
051a: cd 50     mov   x,#$50
051c: 3f 20 05  call  $0520
051f: 6f        ret

0520: f5 00 01  mov   a,$0100+x
0523: 15 01 01  or    a,$0101+x
0526: d0 01     bne   $0529             ; branch if not nullptr
0528: 6f        ret

0529: f5 02 01  mov   a,$0102+x
052c: f0 05     beq   $0533
052e: 9c        dec   a
052f: d5 02 01  mov   $0102+x,a         ; decrease delta-time counter
0532: 6f        ret

; dispatch vcmd
0533: f5 00 01  mov   a,$0100+x
0536: c4 e0     mov   $e0,a
0538: f5 01 01  mov   a,$0101+x
053b: c4 e1     mov   $e1,a             ; $e0/1 = voice pointer
053d: 8d 00     mov   y,#$00
053f: f7 e0     mov   a,($e0)+y
0541: c4 d0     mov   $d0,a             ; read vcmd
0543: fc        inc   y
0544: f7 e0     mov   a,($e0)+y
0546: c4 d1     mov   $d1,a             ; read arg1
0548: fc        inc   y
0549: f7 e0     mov   a,($e0)+y
054b: c4 d2     mov   $d2,a             ; read arg2
054d: fc        inc   y
054e: f7 e0     mov   a,($e0)+y
0550: c4 d3     mov   $d3,a             ; read arg3
0552: e4 d0     mov   a,$d0
0554: 68 df     cmp   a,#$df
0556: b0 03     bcs   $055b             ; vcmds f6-fe
0558: 5f 97 06  jmp   $0697

055b: 68 fe     cmp   a,#$fe
055d: d0 13     bne   $0572
; vcmd fe
055f: e8 00     mov   a,#$00
0561: d5 00 01  mov   $0100+x,a
0564: d5 01 01  mov   $0101+x,a
0567: c8 00     cmp   x,#$00
0569: d0 06     bne   $0571
056b: 8f 00 f6  mov   $f6,#$00
056e: 8f 00 f7  mov   $f7,#$00
0571: 6f        ret

0572: 68 f9     cmp   a,#$f9
0574: d0 34     bne   $05aa
; vcmd f9
0576: 3a e0     incw  $e0
0578: f5 04 01  mov   a,$0104+x
057b: 15 05 01  or    a,$0105+x
057e: d0 18     bne   $0598
0580: e4 e0     mov   a,$e0
0582: d5 04 01  mov   $0104+x,a
0585: d5 06 01  mov   $0106+x,a
0588: e4 e1     mov   a,$e1
058a: d5 05 01  mov   $0105+x,a
058d: d5 07 01  mov   $0107+x,a
0590: e8 00     mov   a,#$00
0592: d5 03 01  mov   $0103+x,a
0595: 5f ef 06  jmp   $06ef

0598: e4 e0     mov   a,$e0
059a: d5 06 01  mov   $0106+x,a
059d: e4 e1     mov   a,$e1
059f: d5 07 01  mov   $0107+x,a
05a2: e8 00     mov   a,#$00
05a4: d5 03 01  mov   $0103+x,a
05a7: 5f ef 06  jmp   $06ef

05aa: 68 f8     cmp   a,#$f8
05ac: d0 41     bne   $05ef
; vcmd f8
05ae: f5 06 01  mov   a,$0106+x
05b1: 15 07 01  or    a,$0107+x
05b4: d0 0d     bne   $05c3
05b6: f5 04 01  mov   a,$0104+x
05b9: c4 e0     mov   $e0,a
05bb: f5 05 01  mov   a,$0105+x
05be: c4 e1     mov   $e1,a
05c0: 5f ef 06  jmp   $06ef

05c3: 3a e0     incw  $e0
05c5: 3a e0     incw  $e0
05c7: 78 00 d1  cmp   $d1,#$00
05ca: f0 08     beq   $05d4
05cc: f5 03 01  mov   a,$0103+x
05cf: bc        inc   a
05d0: 64 d1     cmp   a,$d1
05d2: f0 10     beq   $05e4
05d4: d5 03 01  mov   $0103+x,a
05d7: f5 06 01  mov   a,$0106+x
05da: c4 e0     mov   $e0,a
05dc: f5 07 01  mov   a,$0107+x
05df: c4 e1     mov   $e1,a
05e1: 5f ef 06  jmp   $06ef

05e4: e8 00     mov   a,#$00
05e6: d5 06 01  mov   $0106+x,a
05e9: d5 07 01  mov   $0107+x,a
05ec: 5f ef 06  jmp   $06ef

05ef: 68 fc     cmp   a,#$fc
05f1: d0 11     bne   $0604
; vcmd fc
05f3: 7d        mov   a,x
05f4: 5c        lsr   a
05f5: 5d        mov   x,a
05f6: e4 d1     mov   a,$d1
05f8: d4 82     mov   $82+x,a
05fa: 7d        mov   a,x
05fb: 1c        asl   a
05fc: 5d        mov   x,a
05fd: 3a e0     incw  $e0
05ff: 3a e0     incw  $e0
0601: 5f ef 06  jmp   $06ef

0604: 68 fb     cmp   a,#$fb
0606: d0 1b     bne   $0623
; vcmd fb
0608: 4d        push  x
0609: 6d        push  y
060a: eb ef     mov   y,$ef
060c: e4 d1     mov   a,$d1
060e: cf        mul   ya
060f: cd 40     mov   x,#$40
0611: 9e        div   ya,x
0612: 5d        mov   x,a
0613: 8d 27     mov   y,#$27
0615: e8 10     mov   a,#$10
0617: 9e        div   ya,x
0618: c4 fa     mov   $fa,a
061a: 3a e0     incw  $e0
061c: 3a e0     incw  $e0
061e: ee        pop   y
061f: ce        pop   x
0620: 5f ef 06  jmp   $06ef

0623: 68 f7     cmp   a,#$f7
0625: d0 11     bne   $0638
; vcmd f7
0627: 7d        mov   a,x
0628: 5c        lsr   a
0629: 5d        mov   x,a
062a: e4 d1     mov   a,$d1
062c: d4 85     mov   $85+x,a
062e: 7d        mov   a,x
062f: 1c        asl   a
0630: 5d        mov   x,a
0631: 3a e0     incw  $e0
0633: 3a e0     incw  $e0
0635: 5f ef 06  jmp   $06ef

0638: 68 fd     cmp   a,#$fd
063a: d0 11     bne   $064d
; vcmd fd
063c: 7d        mov   a,x
063d: 5c        lsr   a
063e: 5d        mov   x,a
063f: e4 d1     mov   a,$d1
0641: d4 84     mov   $84+x,a
0643: 7d        mov   a,x
0644: 1c        asl   a
0645: 5d        mov   x,a
0646: 3a e0     incw  $e0
0648: 3a e0     incw  $e0
064a: 5f ef 06  jmp   $06ef

064d: 68 fa     cmp   a,#$fa
064f: d0 11     bne   $0662
; vcmd fa
0651: 7d        mov   a,x
0652: 5c        lsr   a
0653: 5d        mov   x,a
0654: e4 d1     mov   a,$d1
0656: d4 83     mov   $83+x,a
0658: 7d        mov   a,x
0659: 1c        asl   a
065a: 5d        mov   x,a
065b: 3a e0     incw  $e0
065d: 3a e0     incw  $e0
065f: 5f ef 06  jmp   $06ef

0662: 68 f6     cmp   a,#$f6
0664: d0 31     bne   $0697
; vcmd f6
0666: e4 d1     mov   a,$d1
0668: 68 ff     cmp   a,#$ff
066a: d0 1b     bne   $0687
066c: e8 01     mov   a,#$01
066e: c4 80     mov   $80,a
0670: c4 88     mov   $88,a
0672: c5 10 01  mov   $0110,a
0675: c5 98 01  mov   $0198,a
0678: c5 20 02  mov   $0220,a
067b: c5 a8 02  mov   $02a8,a
067e: c5 30 03  mov   $0330,a
0681: c5 b8 03  mov   $03b8,a
0684: 8f 02 d1  mov   $d1,#$02
0687: 7d        mov   a,x
0688: 5c        lsr   a
0689: 5d        mov   x,a
068a: e4 d1     mov   a,$d1
068c: d4 80     mov   $80+x,a
068e: 7d        mov   a,x
068f: 1c        asl   a
0690: 5d        mov   x,a
0691: 3a e0     incw  $e0
0693: 3a e0     incw  $e0
0695: 2f 58     bra   $06ef
; vcmds 00-de
0697: 3a e0     incw  $e0
0699: 78 00 d0  cmp   $d0,#$00          ; test MSB of vcmd
069c: 30 1c     bmi   $06ba
;
069e: 3a e0     incw  $e0
06a0: e4 d1     mov   a,$d1
06a2: d5 08 01  mov   $0108+x,a
06a5: 78 00 d0  cmp   $d0,#$00
06a8: f0 1f     beq   $06c9             ; skip below if vcmd == 0
06aa: 3a e0     incw  $e0
06ac: e4 d2     mov   a,$d2
06ae: d5 09 01  mov   $0109+x,a
06b1: 3a e0     incw  $e0
06b3: e4 d3     mov   a,$d3
06b5: d5 0a 01  mov   $010a+x,a
06b8: 2f 0f     bra   $06c9
;
06ba: f5 08 01  mov   a,$0108+x
06bd: c4 d1     mov   $d1,a
06bf: f5 09 01  mov   a,$0109+x
06c2: c4 d2     mov   $d2,a
06c4: f5 0a 01  mov   a,$010a+x
06c7: c4 d3     mov   $d3,a
;
06c9: 38 7f d0  and   $d0,#$7f
06cc: 78 00 d0  cmp   $d0,#$00
06cf: f0 19     beq   $06ea
;
06d1: e4 d0     mov   a,$d0
06d3: c4 e9     mov   $e9,a
06d5: e4 d2     mov   a,$d2
06d7: c4 e8     mov   $e8,a
06d9: e4 d3     mov   a,$d3
06db: c4 ea     mov   $ea,a
06dd: 3f fc 06  call  $06fc
06e0: 2f 08     bra   $06ea
;
06e2: 3a e0     incw  $e0
06e4: 3a e0     incw  $e0
06e6: 3a e0     incw  $e0
06e8: 3a e0     incw  $e0
06ea: e4 d1     mov   a,$d1
06ec: d5 02 01  mov   $0102+x,a
06ef: e4 e0     mov   a,$e0
06f1: d5 00 01  mov   $0100+x,a
06f4: e4 e1     mov   a,$e1
06f6: d5 01 01  mov   $0101+x,a
06f9: 5f 20 05  jmp   $0520             ; dispatch next vcmd

06fc: 4d        push  x
06fd: 6d        push  y
06fe: 2d        push  a
06ff: cd 00     mov   x,#$00
0701: d8 eb     mov   $eb,x
0703: f4 00     mov   a,$00+x
0705: 64 e7     cmp   a,$e7
0707: d0 1a     bne   $0723
0709: 4d        push  x
070a: e4 e7     mov   a,$e7
070c: 1c        asl   a
070d: 1c        asl   a
070e: 1c        asl   a
070f: 5d        mov   x,a
0710: f4 82     mov   a,$82+x
0712: 28 80     and   a,#$80
0714: ce        pop   x
0715: d0 06     bne   $071d
0717: f4 01     mov   a,$01+x
0719: 64 e9     cmp   a,$e9
071b: d0 06     bne   $0723
071d: 3f 10 08  call  $0810
0720: 5f ec 07  jmp   $07ec

0723: ab eb     inc   $eb
0725: 7d        mov   a,x
0726: 60        clrc
0727: 88 10     adc   a,#$10
0729: 5d        mov   x,a
072a: c8 80     cmp   x,#$80
072c: d0 d5     bne   $0703
072e: cd 00     mov   x,#$00
0730: d8 eb     mov   $eb,x
0732: f4 00     mov   a,$00+x
0734: 68 ff     cmp   a,#$ff
0736: d0 2d     bne   $0765
0738: e4 eb     mov   a,$eb
073a: c4 ec     mov   $ec,a
073c: 8f 00 ed  mov   $ed,#$00
073f: f4 00     mov   a,$00+x
0741: 68 ff     cmp   a,#$ff
0743: d0 0b     bne   $0750
0745: f4 0f     mov   a,$0f+x
0747: 64 ed     cmp   a,$ed
0749: 90 05     bcc   $0750
074b: c4 ed     mov   $ed,a
074d: fa ec eb  mov   ($eb),($ec)
0750: ab ec     inc   $ec
0752: 7d        mov   a,x
0753: 60        clrc
0754: 88 10     adc   a,#$10
0756: 5d        mov   x,a
0757: c8 80     cmp   x,#$80
0759: d0 e4     bne   $073f
075b: e4 d4     mov   a,$d4
075d: c4 ed     mov   $ed,a
075f: 3f f0 07  call  $07f0
0762: 5f ec 07  jmp   $07ec

0765: ab eb     inc   $eb
0767: 7d        mov   a,x
0768: 60        clrc
0769: 88 10     adc   a,#$10
076b: 5d        mov   x,a
076c: c8 80     cmp   x,#$80
076e: d0 c2     bne   $0732
0770: e4 e7     mov   a,$e7
0772: 1c        asl   a
0773: 1c        asl   a
0774: 1c        asl   a
0775: 5d        mov   x,a
0776: f4 80     mov   a,$80+x
0778: 74 81     cmp   a,$81+x
077a: b0 35     bcs   $07b1
077c: cd 00     mov   x,#$00
077e: d8 eb     mov   $eb,x
0780: d8 ec     mov   $ec,x
0782: fa d4 ed  mov   ($ed),($d4)
0785: f4 00     mov   a,$00+x
0787: 64 e7     cmp   a,$e7
0789: d0 0f     bne   $079a
078b: f4 02     mov   a,$02+x
078d: fd        mov   y,a
078e: 80        setc
078f: a4 ed     sbc   a,$ed
0791: 28 80     and   a,#$80
0793: f0 05     beq   $079a
0795: cb ed     mov   $ed,y
0797: fa ec eb  mov   ($eb),($ec)
079a: ab ec     inc   $ec
079c: 7d        mov   a,x
079d: 60        clrc
079e: 88 10     adc   a,#$10
07a0: 5d        mov   x,a
07a1: c8 80     cmp   x,#$80
07a3: d0 e0     bne   $0785
07a5: e4 d4     mov   a,$d4
07a7: c4 ed     mov   $ed,a
07a9: 3f 11 0a  call  $0a11
07ac: 3f f0 07  call  $07f0
07af: 2f 3b     bra   $07ec
07b1: cd 00     mov   x,#$00
07b3: d8 eb     mov   $eb,x
07b5: d8 ec     mov   $ec,x
07b7: fa d4 ed  mov   ($ed),($d4)
07ba: 4d        push  x
07bb: f4 00     mov   a,$00+x
07bd: 1c        asl   a
07be: 1c        asl   a
07bf: 1c        asl   a
07c0: 5d        mov   x,a
07c1: f4 80     mov   a,$80+x
07c3: 74 81     cmp   a,$81+x
07c5: ce        pop   x
07c6: b0 0f     bcs   $07d7
07c8: f4 02     mov   a,$02+x
07ca: fd        mov   y,a
07cb: 80        setc
07cc: a4 ed     sbc   a,$ed
07ce: 28 80     and   a,#$80
07d0: f0 05     beq   $07d7
07d2: cb ed     mov   $ed,y
07d4: fa ec eb  mov   ($eb),($ec)
07d7: ab ec     inc   $ec
07d9: 7d        mov   a,x
07da: 60        clrc
07db: 88 10     adc   a,#$10
07dd: 5d        mov   x,a
07de: c8 80     cmp   x,#$80
07e0: d0 d8     bne   $07ba
07e2: e4 d4     mov   a,$d4
07e4: c4 ed     mov   $ed,a
07e6: 3f 11 0a  call  $0a11
07e9: 3f f0 07  call  $07f0
07ec: ae        pop   a
07ed: ee        pop   y
07ee: ce        pop   x
07ef: 6f        ret

07f0: 8f 00 ca  mov   $ca,#$00
07f3: f8 eb     mov   x,$eb
07f5: f5 20 0d  mov   a,$0d20+x
07f8: 8f 5c f2  mov   $f2,#$5c          ; KOF
07fb: c4 f3     mov   $f3,a
07fd: e4 eb     mov   a,$eb
07ff: 1c        asl   a
0800: 1c        asl   a
0801: 1c        asl   a
0802: 1c        asl   a
0803: 5d        mov   x,a
0804: 7d        mov   a,x
0805: 60        clrc
0806: 88 08     adc   a,#$08
0808: c4 f2     mov   $f2,a             ; ENVX
080a: e4 f3     mov   a,$f3
080c: d0 fc     bne   $080a
080e: 2f 03     bra   $0813
0810: 8f ff ca  mov   $ca,#$ff
0813: e4 eb     mov   a,$eb
0815: 1c        asl   a
0816: 1c        asl   a
0817: 1c        asl   a
0818: 1c        asl   a
0819: c4 e3     mov   $e3,a
081b: c4 e4     mov   $e4,a
081d: e4 e7     mov   a,$e7
081f: 1c        asl   a
0820: 1c        asl   a
0821: 1c        asl   a
0822: c4 e5     mov   $e5,a
0824: 5d        mov   x,a
0825: e4 da     mov   a,$da
0827: f0 04     beq   $082d
0829: e8 40     mov   a,#$40
082b: 2f 02     bra   $082f
082d: f4 83     mov   a,$83+x
082f: 5c        lsr   a
0830: 5c        lsr   a
0831: f0 01     beq   $0834
0833: 9c        dec   a
0834: fd        mov   y,a
0835: f6 0e 0c  mov   a,$0c0e+y
0838: eb ea     mov   y,$ea
083a: cf        mul   ya
083b: dd        mov   a,y
083c: 6d        push  y
083d: eb e4     mov   y,$e4
083f: d6 0c 00  mov   $000c+y,a
0842: ee        pop   y
0843: 78 06 e7  cmp   $e7,#$06
0846: b0 03     bcs   $084b
0848: e4 cd     mov   a,$cd
084a: cf        mul   ya
084b: fa e3 f2  mov   ($f2),($e3)       ; VOL(L)
084e: cb f3     mov   $f3,y
0850: ab e3     inc   $e3
0852: e4 da     mov   a,$da
0854: f0 04     beq   $085a
0856: e8 40     mov   a,#$40
0858: 2f 05     bra   $085f
085a: e8 7f     mov   a,#$7f
085c: 80        setc
085d: b4 83     sbc   a,$83+x
085f: 5c        lsr   a
0860: 5c        lsr   a
0861: f0 01     beq   $0864
0863: 9c        dec   a
0864: fd        mov   y,a
0865: f6 0e 0c  mov   a,$0c0e+y
0868: eb ea     mov   y,$ea
086a: cf        mul   ya
086b: 6d        push  y
086c: dd        mov   a,y
086d: eb e4     mov   y,$e4
086f: d6 0d 00  mov   $000d+y,a
0872: ee        pop   y
0873: 78 06 e7  cmp   $e7,#$06
0876: b0 03     bcs   $087b
0878: e4 cd     mov   a,$cd
087a: cf        mul   ya
087b: fa e3 f2  mov   ($f2),($e3)       ; VOL(R)
087e: cb f3     mov   $f3,y
0880: ab e3     inc   $e3
0882: f8 e5     mov   x,$e5
0884: f4 82     mov   a,$82+x
0886: 2d        push  a
0887: 68 7f     cmp   a,#$7f
0889: d0 16     bne   $08a1
088b: cd 00     mov   x,#$00
088d: f5 bc 0d  mov   a,$0dbc+x
0890: c4 e2     mov   $e2,a
0892: 3d        inc   x
0893: e4 e9     mov   a,$e9
0895: 75 bc 0d  cmp   a,$0dbc+x
0898: 90 05     bcc   $089f
089a: ab e2     inc   $e2
089c: 3d        inc   x
089d: 2f f6     bra   $0895
089f: e4 e2     mov   a,$e2
08a1: 1c        asl   a
08a2: 1c        asl   a
08a3: 1c        asl   a
08a4: 5d        mov   x,a
08a5: f5 c5 0d  mov   a,$0dc5+x
08a8: 2d        push  a
08a9: 3d        inc   x
08aa: e4 e9     mov   a,$e9
08ac: 80        setc
08ad: b5 c5 0d  sbc   a,$0dc5+x
08b0: 60        clrc
08b1: 88 3c     adc   a,#$3c
08b3: 1c        asl   a
08b4: 3d        inc   x
08b5: 4d        push  x
08b6: 5d        mov   x,a
08b7: f5 2d 0c  mov   a,$0c2d+x
08ba: c4 dc     mov   $dc,a
08bc: f5 2e 0c  mov   a,$0c2e+x
08bf: c4 dd     mov   $dd,a
08c1: ce        pop   x
08c2: 8f 00 d3  mov   $d3,#$00
08c5: f5 c5 0d  mov   a,$0dc5+x
08c8: 4d        push  x
08c9: f8 e5     mov   x,$e5
08cb: 60        clrc
08cc: 94 84     adc   a,$84+x
08ce: ce        pop   x
08cf: c4 d0     mov   $d0,a
08d1: eb dc     mov   y,$dc
08d3: cf        mul   ya
08d4: e4 d0     mov   a,$d0
08d6: 30 08     bmi   $08e0
08d8: dd        mov   a,y
08d9: 60        clrc
08da: 84 dc     adc   a,$dc
08dc: 98 00 d3  adc   $d3,#$00
08df: fd        mov   y,a
08e0: cb d2     mov   $d2,y
08e2: eb dd     mov   y,$dd
08e4: e4 d0     mov   a,$d0
08e6: cf        mul   ya
08e7: 2d        push  a
08e8: e4 d0     mov   a,$d0
08ea: 30 05     bmi   $08f1
08ec: dd        mov   a,y
08ed: 60        clrc
08ee: 84 dd     adc   a,$dd
08f0: fd        mov   y,a
08f1: ae        pop   a
08f2: 7a d2     addw  ya,$d2
08f4: da dc     movw  $dc,ya
08f6: eb e4     mov   y,$e4
08f8: e4 dc     mov   a,$dc
08fa: d6 08 00  mov   $0008+y,a
08fd: d6 0a 00  mov   $000a+y,a
0900: fa e3 f2  mov   ($f2),($e3)       ; P(L)
0903: c4 f3     mov   $f3,a
0905: ab e3     inc   $e3
0907: e4 dd     mov   a,$dd
0909: d6 09 00  mov   $0009+y,a
090c: d6 0b 00  mov   $000b+y,a
090f: fa e3 f2  mov   ($f2),($e3)       ; P(H)
0912: c4 f3     mov   $f3,a
0914: ab e3     inc   $e3
0916: 3d        inc   x
0917: fa e3 f2  mov   ($f2),($e3)       ; SRCN
091a: ae        pop   a
091b: c4 f3     mov   $f3,a
091d: ab e3     inc   $e3
091f: ae        pop   a
0920: d6 0e 00  mov   $000e+y,a
0923: 68 00     cmp   a,#$00
0925: d0 09     bne   $0930
0927: e4 e9     mov   a,$e9
0929: 28 1f     and   a,#$1f
092b: 8f 6c f2  mov   $f2,#$6c          ; FLG
092e: c4 f3     mov   $f3,a
0930: fa e3 f2  mov   ($f2),($e3)       ; ADSR(1)
0933: f5 c5 0d  mov   a,$0dc5+x
0936: c4 f3     mov   $f3,a
0938: ab e3     inc   $e3
093a: 3d        inc   x
093b: fa e3 f2  mov   ($f2),($e3)       ; ADSR(2)
093e: f5 c5 0d  mov   a,$0dc5+x
0941: c4 f3     mov   $f3,a
0943: ab e3     inc   $e3
0945: 3d        inc   x
0946: fa e3 f2  mov   ($f2),($e3)       ; GAIN
0949: f5 c5 0d  mov   a,$0dc5+x
094c: c4 f3     mov   $f3,a
094e: ab e3     inc   $e3
0950: 3d        inc   x
0951: eb e4     mov   y,$e4
0953: f5 c5 0d  mov   a,$0dc5+x
0956: c4 e6     mov   $e6,a
0958: 3d        inc   x
0959: f5 c5 0d  mov   a,$0dc5+x
095c: 5d        mov   x,a
095d: f5 d7 0c  mov   a,$0cd7+x
0960: d6 05 00  mov   $0005+y,a
0963: e4 d4     mov   a,$d4
0965: f8 e4     mov   x,$e4
0967: d4 02     mov   $02+x,a
0969: e4 e9     mov   a,$e9
096b: d4 01     mov   $01+x,a
096d: e4 e7     mov   a,$e7
096f: d4 00     mov   $00+x,a
0971: e4 e8     mov   a,$e8
0973: d4 06     mov   $06+x,a
0975: e8 00     mov   a,#$00
0977: d4 0f     mov   $0f+x,a
0979: ab d4     inc   $d4
097b: 78 00 ca  cmp   $ca,#$00
097e: d0 69     bne   $09e9
0980: 4d        push  x
0981: 3f a5 09  call  $09a5
0984: f8 eb     mov   x,$eb
0986: f5 20 0d  mov   a,$0d20+x
0989: 8f 4c f2  mov   $f2,#$4c          ; KON
098c: c4 f3     mov   $f3,a
098e: ce        pop   x
098f: 8f 5c f2  mov   $f2,#$5c          ; KOF
0992: 8f 00 f3  mov   $f3,#$00
0995: e4 e6     mov   a,$e6
0997: d4 03     mov   $03+x,a
0999: f4 05     mov   a,$05+x
099b: d4 04     mov   $04+x,a
099d: f8 e5     mov   x,$e5
099f: f4 81     mov   a,$81+x
09a1: bc        inc   a
09a2: d4 81     mov   $81+x,a
09a4: 6f        ret

09a5: 8f 00 e2  mov   $e2,#$00
09a8: cd 00     mov   x,#$00
09aa: f4 0e     mov   a,$0e+x
09ac: 68 00     cmp   a,#$00
09ae: d0 03     bne   $09b3
09b0: 80        setc
09b1: 2f 01     bra   $09b4
09b3: 60        clrc
09b4: 6b e2     ror   $e2
09b6: 7d        mov   a,x
09b7: 60        clrc
09b8: 88 10     adc   a,#$10
09ba: 5d        mov   x,a
09bb: c8 80     cmp   x,#$80
09bd: d0 eb     bne   $09aa
09bf: 8f 3d f2  mov   $f2,#$3d          ; NON
09c2: fa e2 f3  mov   ($f3),($e2)
09c5: 8f 00 e2  mov   $e2,#$00
09c8: cd 00     mov   x,#$00
09ca: f4 00     mov   a,$00+x
09cc: 68 ff     cmp   a,#$ff
09ce: f0 04     beq   $09d4
09d0: 68 06     cmp   a,#$06
09d2: b0 03     bcs   $09d7
09d4: 80        setc
09d5: 2f 01     bra   $09d8
09d7: 60        clrc
09d8: 6b e2     ror   $e2
09da: 7d        mov   a,x
09db: 60        clrc
09dc: 88 10     adc   a,#$10
09de: 5d        mov   x,a
09df: c8 80     cmp   x,#$80
09e1: d0 e7     bne   $09ca
09e3: 8f 4d f2  mov   $f2,#$4d          ; EON
09e6: fa e2 f3  mov   ($f3),($e2)
09e9: 6f        ret

09ea: 4d        push  x
09eb: 6d        push  y
09ec: 2d        push  a
09ed: cd 00     mov   x,#$00
09ef: d8 eb     mov   $eb,x
09f1: f4 00     mov   a,$00+x
09f3: 64 e7     cmp   a,$e7
09f5: d0 0b     bne   $0a02
09f7: f4 01     mov   a,$01+x
09f9: 64 e9     cmp   a,$e9
09fb: d0 05     bne   $0a02
09fd: 3f 11 0a  call  $0a11
0a00: 2f 0b     bra   $0a0d
0a02: ab eb     inc   $eb
0a04: 7d        mov   a,x
0a05: 60        clrc
0a06: 88 10     adc   a,#$10
0a08: 5d        mov   x,a
0a09: c8 80     cmp   x,#$80
0a0b: d0 e4     bne   $09f1
0a0d: ae        pop   a
0a0e: ee        pop   y
0a0f: ce        pop   x
0a10: 6f        ret

0a11: e4 eb     mov   a,$eb
0a13: 1c        asl   a
0a14: 1c        asl   a
0a15: 1c        asl   a
0a16: 1c        asl   a
0a17: 5d        mov   x,a
0a18: 2d        push  a
0a19: f4 0e     mov   a,$0e+x
0a1b: 68 7f     cmp   a,#$7f
0a1d: ae        pop   a
0a1e: f0 23     beq   $0a43
0a20: 2d        push  a
0a21: f4 00     mov   a,$00+x
0a23: 68 06     cmp   a,#$06
0a25: ae        pop   a
0a26: 90 1b     bcc   $0a43
0a28: 4d        push  x
0a29: f8 eb     mov   x,$eb
0a2b: f5 20 0d  mov   a,$0d20+x
0a2e: 8f 5c f2  mov   $f2,#$5c          ; KOF
0a31: c4 f3     mov   $f3,a
0a33: e4 eb     mov   a,$eb
0a35: 1c        asl   a
0a36: 1c        asl   a
0a37: 1c        asl   a
0a38: 1c        asl   a
0a39: 60        clrc
0a3a: 88 08     adc   a,#$08
0a3c: c4 f2     mov   $f2,a             ; ENVX
0a3e: e4 f3     mov   a,$f3
0a40: d0 fc     bne   $0a3e
0a42: ce        pop   x
0a43: f4 00     mov   a,$00+x
0a45: 1c        asl   a
0a46: 1c        asl   a
0a47: 1c        asl   a
0a48: c4 e5     mov   $e5,a
0a4a: e8 ff     mov   a,#$ff
0a4c: d4 00     mov   $00+x,a
0a4e: bc        inc   a
0a4f: f8 e5     mov   x,$e5
0a51: f4 81     mov   a,$81+x
0a53: 9c        dec   a
0a54: d4 81     mov   $81+x,a
0a56: 6f        ret

0a57: cd 00     mov   x,#$00
0a59: d8 eb     mov   $eb,x
0a5b: 4d        push  x
0a5c: f4 00     mov   a,$00+x
0a5e: 68 ff     cmp   a,#$ff
0a60: f0 10     beq   $0a72
0a62: 68 06     cmp   a,#$06
0a64: b0 0c     bcs   $0a72
0a66: f4 06     mov   a,$06+x
0a68: 9c        dec   a
0a69: d0 05     bne   $0a70
0a6b: 3f 11 0a  call  $0a11
0a6e: 2f 02     bra   $0a72
0a70: d4 06     mov   $06+x,a
0a72: ce        pop   x
0a73: ab eb     inc   $eb
0a75: 7d        mov   a,x
0a76: 60        clrc
0a77: 88 10     adc   a,#$10
0a79: 5d        mov   x,a
0a7a: c8 80     cmp   x,#$80
0a7c: d0 dd     bne   $0a5b
0a7e: 6f        ret

0a7f: cd 00     mov   x,#$00
0a81: d8 eb     mov   $eb,x
0a83: 4d        push  x
0a84: f4 00     mov   a,$00+x
0a86: 68 ff     cmp   a,#$ff
0a88: d0 0a     bne   $0a94
0a8a: f4 0f     mov   a,$0f+x
0a8c: bc        inc   a
0a8d: d0 01     bne   $0a90
0a8f: 9c        dec   a
0a90: d4 0f     mov   $0f+x,a
0a92: 2f 10     bra   $0aa4
0a94: 68 06     cmp   a,#$06
0a96: 90 0c     bcc   $0aa4
0a98: f4 06     mov   a,$06+x
0a9a: 9c        dec   a
0a9b: d0 05     bne   $0aa2
0a9d: 3f 11 0a  call  $0a11
0aa0: 2f 02     bra   $0aa4
0aa2: d4 06     mov   $06+x,a
0aa4: ce        pop   x
0aa5: ab eb     inc   $eb
0aa7: 7d        mov   a,x
0aa8: 60        clrc
0aa9: 88 10     adc   a,#$10
0aab: 5d        mov   x,a
0aac: c8 80     cmp   x,#$80
0aae: d0 d3     bne   $0a83
0ab0: 6f        ret

0ab1: e4 c9     mov   a,$c9
0ab3: 60        clrc
0ab4: 84 fe     adc   a,$fe
0ab6: f0 06     beq   $0abe
0ab8: 2d        push  a
0ab9: 3f c1 0a  call  $0ac1
0abc: ae        pop   a
0abd: 9c        dec   a
0abe: c4 c9     mov   $c9,a
0ac0: 6f        ret

0ac1: cd 00     mov   x,#$00
0ac3: d8 eb     mov   $eb,x
0ac5: 4d        push  x
0ac6: f4 00     mov   a,$00+x
0ac8: f4 03     mov   a,$03+x
0aca: 9c        dec   a
0acb: d0 05     bne   $0ad2
0acd: 3f 9f 0b  call  $0b9f
0ad0: 2f 02     bra   $0ad4
0ad2: d4 03     mov   $03+x,a
0ad4: f4 00     mov   a,$00+x
0ad6: 68 ff     cmp   a,#$ff
0ad8: d0 2e     bne   $0b08
0ada: 68 06     cmp   a,#$06
0adc: 90 2a     bcc   $0b08
0ade: f4 0e     mov   a,$0e+x
0ae0: 68 7f     cmp   a,#$7f
0ae2: f0 24     beq   $0b08
0ae4: f4 0c     mov   a,$0c+x
0ae6: f0 0d     beq   $0af5
0ae8: 8d f0     mov   y,#$f0
0aea: cf        mul   ya
0aeb: e4 cd     mov   a,$cd
0aed: cf        mul   ya
0aee: d8 f2     mov   $f2,x             ; 
0af0: cb f3     mov   $f3,y
0af2: dd        mov   a,y
0af3: d4 0c     mov   $0c+x,a
0af5: f4 0d     mov   a,$0d+x
0af7: f0 0f     beq   $0b08
0af9: 8d f0     mov   y,#$f0
0afb: cf        mul   ya
0afc: e4 cd     mov   a,$cd
0afe: cf        mul   ya
0aff: 7d        mov   a,x
0b00: bc        inc   a
0b01: c4 f2     mov   $f2,a             ; 
0b03: cb f3     mov   $f3,y
0b05: dd        mov   a,y
0b06: d4 0d     mov   $0d+x,a
0b08: ce        pop   x
0b09: ab eb     inc   $eb
0b0b: 7d        mov   a,x
0b0c: 60        clrc
0b0d: 88 10     adc   a,#$10
0b0f: 5d        mov   x,a
0b10: c8 80     cmp   x,#$80
0b12: d0 b1     bne   $0ac5
0b14: e4 cc     mov   a,$cc
0b16: f0 1e     beq   $0b36
0b18: 60        clrc
0b19: 84 cd     adc   a,$cd
0b1b: c4 cd     mov   $cd,a
0b1d: 68 00     cmp   a,#$00
0b1f: d0 08     bne   $0b29
0b21: 8f ff cd  mov   $cd,#$ff
0b24: 8f 00 cc  mov   $cc,#$00
0b27: 2f 0a     bra   $0b33
0b29: 68 ff     cmp   a,#$ff
0b2b: d0 06     bne   $0b33
0b2d: 8f 00 cc  mov   $cc,#$00
0b30: 8f 00 cd  mov   $cd,#$00
0b33: 3f 4a 0b  call  $0b4a
0b36: 3f 7f 0a  call  $0a7f
0b39: 8f 06 e7  mov   $e7,#$06
0b3c: cd 60     mov   x,#$60
0b3e: 3f 20 05  call  $0520
0b41: 8f 07 e7  mov   $e7,#$07
0b44: cd 70     mov   x,#$70
0b46: 3f 20 05  call  $0520
0b49: 6f        ret

0b4a: cd 00     mov   x,#$00
0b4c: f4 00     mov   a,$00+x
0b4e: 68 ff     cmp   a,#$ff
0b50: f0 1c     beq   $0b6e
0b52: 68 06     cmp   a,#$06
0b54: b0 18     bcs   $0b6e
0b56: f4 0c     mov   a,$0c+x
0b58: f0 07     beq   $0b61
0b5a: eb cd     mov   y,$cd
0b5c: cf        mul   ya
0b5d: d8 f2     mov   $f2,x             ; 
0b5f: cb f3     mov   $f3,y
0b61: f4 0d     mov   a,$0d+x
0b63: f0 09     beq   $0b6e
0b65: eb cd     mov   y,$cd
0b67: cf        mul   ya
0b68: 7d        mov   a,x
0b69: bc        inc   a
0b6a: c4 f2     mov   $f2,a             ; 
0b6c: cb f3     mov   $f3,y
0b6e: 7d        mov   a,x
0b6f: 60        clrc
0b70: 88 10     adc   a,#$10
0b72: 5d        mov   x,a
0b73: c8 80     cmp   x,#$80
0b75: d0 d5     bne   $0b4c
0b77: 6f        ret

0b78: cd 00     mov   x,#$00
0b7a: d8 eb     mov   $eb,x
0b7c: f4 00     mov   a,$00+x
0b7e: 68 ff     cmp   a,#$ff
0b80: f0 04     beq   $0b86
0b82: 68 06     cmp   a,#$06
0b84: b0 0d     bcs   $0b93
0b86: 4d        push  x
0b87: e8 06     mov   a,#$06
0b89: d4 00     mov   $00+x,a
0b8b: e8 01     mov   a,#$01
0b8d: d4 0e     mov   $0e+x,a
0b8f: 3f 11 0a  call  $0a11
0b92: ce        pop   x
0b93: ab eb     inc   $eb
0b95: 7d        mov   a,x
0b96: 60        clrc
0b97: 88 10     adc   a,#$10
0b99: 5d        mov   x,a
0b9a: c8 80     cmp   x,#$80
0b9c: d0 de     bne   $0b7c
0b9e: 6f        ret

0b9f: e4 eb     mov   a,$eb
0ba1: 1c        asl   a
0ba2: 1c        asl   a
0ba3: 1c        asl   a
0ba4: 1c        asl   a
0ba5: 5d        mov   x,a
0ba6: 60        clrc
0ba7: 88 02     adc   a,#$02
0ba9: c4 e3     mov   $e3,a
0bab: f4 08     mov   a,$08+x
0bad: c4 e0     mov   $e0,a
0baf: f4 09     mov   a,$09+x
0bb1: c4 e1     mov   $e1,a
0bb3: f4 04     mov   a,$04+x
0bb5: fd        mov   y,a
0bb6: f6 df 0c  mov   a,$0cdf+y
0bb9: c4 d0     mov   $d0,a
0bbb: 28 f0     and   a,#$f0
0bbd: 68 80     cmp   a,#$80
0bbf: d0 0c     bne   $0bcd
0bc1: 38 0f d0  and   $d0,#$0f
0bc4: f4 04     mov   a,$04+x
0bc6: 80        setc
0bc7: a4 d0     sbc   a,$d0
0bc9: d4 04     mov   $04+x,a
0bcb: 2f e6     bra   $0bb3
0bcd: bb 04     inc   $04+x
0bcf: 8f 00 d3  mov   $d3,#$00
0bd2: e4 d0     mov   a,$d0
0bd4: eb e0     mov   y,$e0
0bd6: cf        mul   ya
0bd7: e4 d0     mov   a,$d0
0bd9: 30 08     bmi   $0be3
0bdb: dd        mov   a,y
0bdc: 60        clrc
0bdd: 84 e0     adc   a,$e0
0bdf: 98 00 d3  adc   $d3,#$00
0be2: fd        mov   y,a
0be3: cb d2     mov   $d2,y
0be5: eb e1     mov   y,$e1
0be7: e4 d0     mov   a,$d0
0be9: cf        mul   ya
0bea: 2d        push  a
0beb: e4 d0     mov   a,$d0
0bed: 30 05     bmi   $0bf4
0bef: dd        mov   a,y
0bf0: 60        clrc
0bf1: 84 e1     adc   a,$e1
0bf3: fd        mov   y,a
0bf4: ae        pop   a
0bf5: 7a d2     addw  ya,$d2
0bf7: da e0     movw  $e0,ya
0bf9: e4 e0     mov   a,$e0
0bfb: d4 0a     mov   $0a+x,a
0bfd: fa e3 f2  mov   ($f2),($e3)       ; 
0c00: c4 f3     mov   $f3,a
0c02: ab e3     inc   $e3
0c04: e4 e1     mov   a,$e1
0c06: d4 0b     mov   $0b+x,a
0c08: fa e3 f2  mov   ($f2),($e3)       ; 
0c0b: c4 f3     mov   $f3,a
0c0d: 6f        ret

0c0e: db $ff,$f8,$f1,$ea,$e3,$dc,$d5,$ce
0c16: db $c7,$c0,$b9,$b2,$ab,$a4,$9d,$96
0c1e: db $8f,$88,$81,$7a,$73,$6c,$65,$5e
0c26: db $57,$50,$49,$42,$3b,$34,$2d

; pitch table
0c2d: dw $0080
0c2f: dw $0087
0c31: dw $008e
0c33: dw $0098
0c35: dw $00a1
0c37: dw $00aa
0c39: dw $00b5
0c3b: dw $00bf
0c3d: dw $00c6
0c3f: dw $00d7
0c41: dw $00e4
0c43: dw $00f1
0c45: dw $0100
0c47: dw $010f
0c49: dw $011c
0c4b: dw $0130
0c4d: dw $0142
0c4f: dw $0155
0c51: dw $016a
0c53: dw $017f
0c55: dw $0196
0c57: dw $01ae
0c59: dw $01c8
0c5b: dw $01e3
0c5d: dw $0200
0c5f: dw $021e
0c61: dw $023e
0c63: dw $0260
0c65: dw $0285
0c67: dw $02ab
0c69: dw $02d4
0c6b: dw $02ff
0c6d: dw $032c
0c6f: dw $035d
0c71: dw $0390
0c73: dw $03c6
0c75: dw $0400
0c77: dw $043c
0c79: dw $047d
0c7b: dw $04c1
0c7d: dw $050a
0c7f: dw $0556
0c81: dw $05a8
0c83: dw $05fe
0c85: dw $0659
0c87: dw $06ba
0c89: dw $0720
0c8b: dw $078d
0c8d: dw $0800
0c8f: dw $0879
0c91: dw $08fa
0c93: dw $0983
0c95: dw $0a14
0c97: dw $0aad
0c99: dw $0b50
0c9b: dw $0bfc
0c9d: dw $0cb3
0c9f: dw $0d74
0ca1: dw $0e41
0ca3: dw $0f1a
0ca5: dw $1000
0ca7: dw $10f3
0ca9: dw $11f5
0cab: dw $1307
0cad: dw $1428
0caf: dw $155b
0cb1: dw $16a0
0cb3: dw $17f9
0cb5: dw $1966
0cb7: dw $1ae8
0cb9: dw $1c82
0cbb: dw $1e34
0cbd: dw $2000
0cbf: dw $21e7
0cc1: dw $23eb
0cc3: dw $260e
0cc5: dw $2851
0cc7: dw $2ab7
0cc9: dw $2d41
0ccb: dw $2ff2
0ccd: dw $32cc
0ccf: dw $35d1
0cd1: dw $3904
0cd3: dw $3c68
0cd5: dw $3fff

0cd7: db $00,$02,$1b,$34,$41,$41,$41,$41

0cdf: db $00,$81,$00,$00,$ff,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$ff,$fe,$ff,$00,$00,$00,$01,$02,$01,$00,$00,$8c,$00,$00,$ff,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$ff,$ff,$00,$00,$00,$00,$01,$01,$00,$00,$8c,$00,$00,$ff,$00,$00,$00,$00,$00,$01,$00,$00,$00,$8c

0d20: db $01,$02,$04,$08,$10,$20,$40,$80

0d28: 8f 00 f1  mov   $f1,#$00
0d2b: 8f 46 fa  mov   $fa,#$46
0d2e: 8f 85 fb  mov   $fb,#$85
0d31: 8f 33 f1  mov   $f1,#$33
0d34: 8f 00 f4  mov   $f4,#$00
0d37: 8f 00 f5  mov   $f5,#$00
0d3a: 8f 00 f6  mov   $f6,#$00
0d3d: 8f 00 f7  mov   $f7,#$00
0d40: 6f        ret

0d41: cd 2e     mov   x,#$2e            ; 46 bytes
0d43: 8d 00     mov   y,#$00
0d45: 8f 74 e0  mov   $e0,#$74
0d48: 8f 0d e1  mov   $e1,#$0d          ; from $0d74
; set S-DSP hardware registers
; @in X length of input in bytes
; @in Y offset (should be 0)
; @in $e0/1 pointer of address-value pairs
0d4b: f7 e0     mov   a,($e0)+y
0d4d: c4 f2     mov   $f2,a
0d4f: 3a e0     incw  $e0
0d51: 1d        dec   x
0d52: f7 e0     mov   a,($e0)+y
0d54: c4 f3     mov   $f3,a
0d56: 3a e0     incw  $e0
0d58: 1d        dec   x
0d59: d0 f0     bne   $0d4b
0d5b: 6f        ret

0d5c: cd 0c     mov   x,#$0c            ; 12 bytes
0d5e: 8d 00     mov   y,#$00
0d60: 8f a2 e0  mov   $e0,#$a2
0d63: 8f 0d e1  mov   $e1,#$0d          ; from $0da2
0d66: 2f e3     bra   $0d4b
;
0d68: cd 0e     mov   x,#$0e            ; 14 bytes
0d6a: 8d 00     mov   y,#$00
0d6c: 8f ae e0  mov   $e0,#$ae
0d6f: 8f 0d e1  mov   $e1,#$0d          ; from $0dae
0d72: 2f d7     bra   $0d4b

0d74: db $6c,$60                        ; FLG
0d76: db $6d,$d7                        ; ESA
0d78: db $7d,$05                        ; EDL
0d7a: db $0d,$30                        ; EFB
0d7c: db $4d,$00                        ; EON
0d7e: db $2d,$00                        ; PMON
0d80: db $3d,$00                        ; NON
0d82: db $0c,$00                        ; MVOL(L)
0d84: db $1c,$00                        ; MVOL(R)
0d86: db $2c,$00                        ; EVOL(L)
0d88: db $3c,$00                        ; EVOL(R)
0d8a: db $5d,$1e                        ; DIR
0d8c: db $5c,$ff                        ; KOF
0d8e: db $4c,$00                        ; KON
0d90: db $0f,$ff                        ; FIR C0
0d92: db $1f,$07                        ; FIR C1
0d94: db $2f,$16                        ; FIR C2
0d96: db $3f,$23                        ; FIR C3
0d98: db $4f,$23                        ; FIR C4
0d9a: db $5f,$16                        ; FIR C5
0d9c: db $6f,$07                        ; FIR C6
0d9e: db $7f,$fe                        ; FIR C7
0da0: db $6c,$20                        ; FLG

0da2: db $0c,$00                        ; MVOL(L)
0da4: db $1c,$00                        ; MVOL(R)
0da6: db $2c,$00                        ; EVOL(L)
0da8: db $3c,$00                        ; EVOL(R)
0daa: db $4d,$ff                        ; EON
0dac: db $6c,$00                        ; FLG

0dae: db $5c,$00                        ; KOF
0db0: db $0c,$38                        ; MVOL(L)
0db2: db $1c,$38                        ; MVOL(R)
0db4: db $2c,$1c                        ; EVOL(L)
0db6: db $3c,$1c                        ; EVOL(R)
0db8: db $4d,$ff                        ; EON
0dba: db $6c,$00                        ; FLG

0dbc: db $10,$26,$29,$2a,$2d,$2e,$30,$31,$80

0dc5: db $00,$18,$00,$8e,$e0,$00,$ff,$00,$01,$53,$02,$8e,$e0,$00,$ff,$00,$02,$48,$02,$99,$e1,$00,$ff,$00,$03,$3c,$fe,$ce,$38,$00,$ff,$01,$04,$49,$00,$de,$8e,$00,$ff,$01,$05,$48,$00,$9e,$c6,$00,$18,$02,$06,$3c,$fd,$9e,$c6,$00,$18,$03,$07,$48,$fe,$9d,$c6,$00,$18,$01,$08,$30,$00,$9e,$c6,$00,$00,$00,$09,$3c,$fd,$9b,$c6,$00,$18,$01,$0a,$54,$01,$9b,$c6,$00,$18,$01,$0b,$3c,$fd,$9e,$c6,$00,$ff,$01,$0c,$30,$ff,$9d,$e1,$00,$18,$03,$0d,$2d,$fd,$9e,$c7,$00,$ff,$01,$0e,$45,$00,$9f,$2e,$00,$ff,$01,$0f,$47,$fe,$ee,$ac,$00,$ff,$01,$10,$29,$00,$9e,$c8,$00,$ff,$01,$11,$26,$00,$9e,$c6,$00,$ff,$01,$12,$3c,$00,$9f,$c6,$00,$ff,$01,$14,$2a,$00,$df,$2a,$00,$ff,$01,$12,$39,$00,$9f,$c6,$00,$ff,$01,$14,$2e,$00,$cd,$a7,$00,$ff,$01,$12,$35,$00,$9f,$c6,$00,$ff,$01,$15,$2d,$00,$8f,$10,$00,$ff,$01,$18,$30,$02,$98,$e1,$00,$ff,$00,$19,$54,$00,$be,$23,$00,$ff,$01,$1a,$48,$02,$98,$e1,$00,$01,$03,$1b,$3c,$00,$9a,$e1,$00,$ff,$03,$03,$3c,$fe,$ce,$51,$00,$ff,$01,$1d,$53,$03,$ce,$e0,$00,$01,$00,$1e,$53,$03,$8e,$e0,$00,$01,$00,$1f,$53,$03,$8e,$e0,$00,$01,$00
