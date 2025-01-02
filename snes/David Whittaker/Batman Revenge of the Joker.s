0200: 20        clrp
0201: e8 00     mov   a,#$00
0203: c4 f4     mov   $f4,a
0205: c4 f5     mov   $f5,a
0207: c4 f6     mov   $f6,a
0209: c4 f7     mov   $f7,a
020b: cd ff     mov   x,#$ff
020d: bd        mov   sp,x
020e: e8 00     mov   a,#$00
0210: 5d        mov   x,a
0211: af        mov   (x)+,a
0212: c8 f0     cmp   x,#$f0
0214: d0 fb     bne   $0211
0216: 5d        mov   x,a
0217: d5 00 01  mov   $0100+x,a
021a: 3d        inc   x
021b: d0 fa     bne   $0217
021d: 8f 00 17  mov   $17,#$00
0220: 8f bf 18  mov   $18,#$bf
0223: e8 00     mov   a,#$00
0225: fd        mov   y,a
0226: d7 17     mov   ($17)+y,a
0228: fc        inc   y
0229: d0 fb     bne   $0226
022b: ab 18     inc   $18
022d: 78 ff 18  cmp   $18,#$ff
0230: d0 f4     bne   $0226
0232: 3f 1f 09  call  $091f
0235: 8d 00     mov   y,#$00
0237: e8 00     mov   a,#$00
0239: 3f 1a 09  call  $091a
023c: fc        inc   y
023d: 3f 1a 09  call  $091a
0240: dd        mov   a,y
0241: 60        clrc
0242: 88 0f     adc   a,#$0f
0244: fd        mov   y,a
0245: 10 f0     bpl   $0237
0247: e8 00     mov   a,#$00
0249: c4 12     mov   $12,a
024b: 8d 2d     mov   y,#$2d
024d: 3f 1a 09  call  $091a
0250: cd 00     mov   x,#$00
0252: f5 00 70  mov   a,$7000+x
0255: d5 24 37  mov   $3724+x,a
0258: 3d        inc   x
0259: c8 20     cmp   x,#$20
025b: d0 f5     bne   $0252
025d: e8 37     mov   a,#$37
025f: 8d 5d     mov   y,#$5d
0261: 3f 1a 09  call  $091a
0264: 8f ff d0  mov   $d0,#$ff
0267: 8f 80 d1  mov   $d1,#$80
026a: 8f 1b d2  mov   $d2,#$1b
026d: 8f 34 d3  mov   $d3,#$34
0270: e8 b0     mov   a,#$b0
0272: c4 f1     mov   $f1,a
0274: e8 10     mov   a,#$10
0276: c4 fa     mov   $fa,a
0278: e8 81     mov   a,#$81
027a: c4 f1     mov   $f1,a
027c: 8f 00 da  mov   $da,#$00
027f: eb fd     mov   y,$fd
0281: f0 fc     beq   $027f
0283: 00        nop
0284: 8f 80 f1  mov   $f1,#$80
0287: 00        nop
0288: 8f 81 f1  mov   $f1,#$81
028b: ab da     inc   $da
028d: 78 ff da  cmp   $da,#$ff
0290: d0 ed     bne   $027f
0292: e8 ff     mov   a,#$ff
0294: c4 11     mov   $11,a
0296: 8d 4d     mov   y,#$4d
0298: 3f 1a 09  call  $091a
029b: e8 3f     mov   a,#$3f
029d: c4 13     mov   $13,a
029f: 8d 0d     mov   y,#$0d
02a1: 3f 1a 09  call  $091a
02a4: e4 0f     mov   a,$0f
02a6: 28 df     and   a,#$df
02a8: c4 0f     mov   $0f,a
02aa: 8d 6c     mov   y,#$6c
02ac: 3f 1a 09  call  $091a
02af: cd 4f     mov   x,#$4f
02b1: 3f eb 05  call  $05eb
02b4: e8 55     mov   a,#$55
02b6: c4 19     mov   $19,a
02b8: c4 f4     mov   $f4,a
02ba: c4 f5     mov   $f5,a
02bc: e4 f4     mov   a,$f4
02be: f0 fc     beq   $02bc
02c0: d0 0e     bne   $02d0
02c2: 3f 83 09  call  $0983
02c5: eb fd     mov   y,$fd
02c7: f0 f9     beq   $02c2
02c9: e4 f4     mov   a,$f4
02cb: d0 03     bne   $02d0
02cd: 5f 26 04  jmp   $0426
02d0: f8 f5     mov   x,$f5
02d2: eb f6     mov   y,$f6
02d4: cb d6     mov   $d6,y
02d6: 8f b1 f1  mov   $f1,#$b1
02d9: ab 19     inc   $19
02db: eb 19     mov   y,$19
02dd: cb f4     mov   $f4,y
02df: 68 01     cmp   a,#$01
02e1: d0 06     bne   $02e9
02e3: 3f 02 05  call  $0502
02e6: 5f 26 04  jmp   $0426
02e9: 68 0b     cmp   a,#$0b
02eb: d0 1c     bne   $0309
02ed: c8 ff     cmp   x,#$ff
02ef: f0 07     beq   $02f8
02f1: c8 51     cmp   x,#$51
02f3: 90 03     bcc   $02f8
02f5: 5f 26 04  jmp   $0426
02f8: d8 d7     mov   $d7,x
02fa: 8f 0e d8  mov   $d8,#$0e
02fd: 8f 70 d9  mov   $d9,#$70
0300: 8f 80 0e  mov   $0e,#$80
0303: 3f 94 09  call  $0994
0306: 5f 26 04  jmp   $0426
0309: 68 0a     cmp   a,#$0a
030b: d0 1c     bne   $0329
030d: c8 ff     cmp   x,#$ff
030f: f0 07     beq   $0318
0311: c8 51     cmp   x,#$51
0313: 90 03     bcc   $0318
0315: 5f 26 04  jmp   $0426
0318: d8 d7     mov   $d7,x
031a: 8f 0c d8  mov   $d8,#$0c
031d: 8f 60 d9  mov   $d9,#$60
0320: 8f 40 0e  mov   $0e,#$40
0323: 3f 94 09  call  $0994
0326: 5f 26 04  jmp   $0426
0329: 68 09     cmp   a,#$09
032b: d0 1c     bne   $0349
032d: c8 ff     cmp   x,#$ff
032f: f0 07     beq   $0338
0331: c8 51     cmp   x,#$51
0333: 90 03     bcc   $0338
0335: 5f 26 04  jmp   $0426
0338: d8 d7     mov   $d7,x
033a: 8f 0a d8  mov   $d8,#$0a
033d: 8f 50 d9  mov   $d9,#$50
0340: 8f 20 0e  mov   $0e,#$20
0343: 3f 94 09  call  $0994
0346: 5f 26 04  jmp   $0426
0349: 68 08     cmp   a,#$08
034b: d0 1c     bne   $0369
034d: c8 ff     cmp   x,#$ff
034f: f0 07     beq   $0358
0351: c8 51     cmp   x,#$51
0353: 90 03     bcc   $0358
0355: 5f 26 04  jmp   $0426
0358: d8 d7     mov   $d7,x
035a: 8f 08 d8  mov   $d8,#$08
035d: 8f 40 d9  mov   $d9,#$40
0360: 8f 10 0e  mov   $0e,#$10
0363: 3f 94 09  call  $0994
0366: 5f 26 04  jmp   $0426
0369: 68 07     cmp   a,#$07
036b: d0 1c     bne   $0389
036d: c8 ff     cmp   x,#$ff
036f: f0 07     beq   $0378
0371: c8 51     cmp   x,#$51
0373: 90 03     bcc   $0378
0375: 5f 26 04  jmp   $0426
0378: d8 d7     mov   $d7,x
037a: 8f 06 d8  mov   $d8,#$06
037d: 8f 30 d9  mov   $d9,#$30
0380: 8f 08 0e  mov   $0e,#$08
0383: 3f 94 09  call  $0994
0386: 5f 26 04  jmp   $0426
0389: 68 06     cmp   a,#$06
038b: d0 1c     bne   $03a9
038d: c8 ff     cmp   x,#$ff
038f: f0 07     beq   $0398
0391: c8 51     cmp   x,#$51
0393: 90 03     bcc   $0398
0395: 5f 26 04  jmp   $0426
0398: d8 d7     mov   $d7,x
039a: 8f 04 d8  mov   $d8,#$04
039d: 8f 20 d9  mov   $d9,#$20
03a0: 8f 04 0e  mov   $0e,#$04
03a3: 3f 94 09  call  $0994
03a6: 5f 26 04  jmp   $0426
03a9: 68 05     cmp   a,#$05
03ab: d0 1c     bne   $03c9
03ad: c8 ff     cmp   x,#$ff
03af: f0 07     beq   $03b8
03b1: c8 51     cmp   x,#$51
03b3: 90 03     bcc   $03b8
03b5: 5f 26 04  jmp   $0426
03b8: d8 d7     mov   $d7,x
03ba: 8f 02 d8  mov   $d8,#$02
03bd: 8f 10 d9  mov   $d9,#$10
03c0: 8f 02 0e  mov   $0e,#$02
03c3: 3f 94 09  call  $0994
03c6: 5f 26 04  jmp   $0426
03c9: 68 04     cmp   a,#$04
03cb: d0 18     bne   $03e5
03cd: c8 ff     cmp   x,#$ff
03cf: f0 04     beq   $03d5
03d1: c8 51     cmp   x,#$51
03d3: b0 51     bcs   $0426
03d5: d8 d7     mov   $d7,x
03d7: 8f 00 d8  mov   $d8,#$00
03da: 8f 00 d9  mov   $d9,#$00
03dd: 8f 01 0e  mov   $0e,#$01
03e0: 3f 94 09  call  $0994
03e3: 2f 41     bra   $0426
03e5: 68 02     cmp   a,#$02
03e7: d0 05     bne   $03ee
03e9: 3f a5 05  call  $05a5
03ec: 2f 38     bra   $0426
03ee: 68 03     cmp   a,#$03
03f0: d0 05     bne   $03f7
03f2: 3f 60 05  call  $0560
03f5: 2f 2f     bra   $0426
03f7: 68 0c     cmp   a,#$0c
03f9: d0 05     bne   $0400
03fb: 8f ff d4  mov   $d4,#$ff
03fe: 2f 26     bra   $0426
0400: 68 0d     cmp   a,#$0d
0402: d0 05     bne   $0409
0404: 8f 00 d4  mov   $d4,#$00
0407: 2f 1d     bra   $0426
0409: 68 0e     cmp   a,#$0e
040b: d0 05     bne   $0412
040d: 3f eb 05  call  $05eb
0410: 2f 14     bra   $0426
0412: 68 0f     cmp   a,#$0f
0414: d0 05     bne   $041b
0416: 3f 07 06  call  $0607
0419: 2f 0b     bra   $0426
041b: 68 10     cmp   a,#$10
041d: d0 07     bne   $0426
041f: e8 80     mov   a,#$80
0421: c4 f1     mov   $f1,a
0423: 5f c0 ff  jmp   $ffc0
0426: e8 00     mov   a,#$00
0428: e9 00 01  mov   x,$0100
042b: 10 02     bpl   $042f
042d: 08 01     or    a,#$01
042f: e9 02 01  mov   x,$0102
0432: 10 02     bpl   $0436
0434: 08 02     or    a,#$02
0436: e9 04 01  mov   x,$0104
0439: 10 02     bpl   $043d
043b: 08 04     or    a,#$04
043d: e9 06 01  mov   x,$0106
0440: 10 02     bpl   $0444
0442: 08 08     or    a,#$08
0444: e9 08 01  mov   x,$0108
0447: 10 02     bpl   $044b
0449: 08 10     or    a,#$10
044b: e9 0a 01  mov   x,$010a
044e: 10 02     bpl   $0452
0450: 08 20     or    a,#$20
0452: e9 0c 01  mov   x,$010c
0455: 10 02     bpl   $0459
0457: 08 40     or    a,#$40
0459: e9 0e 01  mov   x,$010e
045c: 10 02     bpl   $0460
045e: 08 80     or    a,#$80
0460: c4 f7     mov   $f7,a
0462: e4 1a     mov   a,$1a
0464: c4 f6     mov   $f6,a
0466: e8 00     mov   a,#$00
0468: e9 01 01  mov   x,$0101
046b: 10 02     bpl   $046f
046d: 08 01     or    a,#$01
046f: e9 03 01  mov   x,$0103
0472: 10 02     bpl   $0476
0474: 08 02     or    a,#$02
0476: e9 05 01  mov   x,$0105
0479: 10 02     bpl   $047d
047b: 08 04     or    a,#$04
047d: e9 07 01  mov   x,$0107
0480: 10 02     bpl   $0484
0482: 08 08     or    a,#$08
0484: e9 09 01  mov   x,$0109
0487: 10 02     bpl   $048b
0489: 08 10     or    a,#$10
048b: e9 0b 01  mov   x,$010b
048e: 10 02     bpl   $0492
0490: 08 20     or    a,#$20
0492: e9 0d 01  mov   x,$010d
0495: 10 02     bpl   $0499
0497: 08 40     or    a,#$40
0499: e9 0f 01  mov   x,$010f
049c: 10 02     bpl   $04a0
049e: 08 80     or    a,#$80
04a0: c4 f5     mov   $f5,a
04a2: 3f 83 09  call  $0983
04a5: ab d5     inc   $d5
04a7: 78 0a d5  cmp   $d5,#$0a
04aa: f0 03     beq   $04af
04ac: 5f c2 02  jmp   $02c2
04af: 8f 00 d5  mov   $d5,#$00
04b2: e4 1f     mov   a,$1f
04b4: f0 2d     beq   $04e3
04b6: e4 d4     mov   a,$d4
04b8: d0 09     bne   $04c3
04ba: e4 1b     mov   a,$1b
04bc: 60        clrc
04bd: 84 1d     adc   a,$1d
04bf: c4 1d     mov   $1d,a
04c1: 90 10     bcc   $04d3
04c3: cd 00     mov   x,#$00
04c5: 8f 01 0e  mov   $0e,#$01
04c8: 3f 10 06  call  $0610
04cb: 0b 0e     asl   $0e
04cd: 3d        inc   x
04ce: 3d        inc   x
04cf: c8 10     cmp   x,#$10
04d1: d0 f5     bne   $04c8
04d3: cd 00     mov   x,#$00
04d5: 8f 01 0e  mov   $0e,#$01
04d8: 3f cc 07  call  $07cc
04db: 0b 0e     asl   $0e
04dd: 3d        inc   x
04de: 3d        inc   x
04df: c8 10     cmp   x,#$10
04e1: d0 f5     bne   $04d8
04e3: 3f 70 0a  call  $0a70
04e6: e8 5c     mov   a,#$5c
04e8: c4 f2     mov   $f2,a
04ea: e4 0d     mov   a,$0d
04ec: c4 f3     mov   $f3,a
04ee: 00        nop
04ef: 00        nop
04f0: 00        nop
04f1: e8 4c     mov   a,#$4c
04f3: c4 f2     mov   $f2,a
04f5: e4 0c     mov   a,$0c
04f7: c4 f3     mov   $f3,a
04f9: 8f 00 0c  mov   $0c,#$00
04fc: 8f 00 0d  mov   $0d,#$00
04ff: 5f c2 02  jmp   $02c2

0502: c8 0e     cmp   x,#$0e
0504: b0 59     bcs   $055f
0506: 3f a5 05  call  $05a5
0509: 7d        mov   a,x
050a: 8d 11     mov   y,#$11
050c: cf        mul   ya
050d: da 04     movw  $04,ya
050f: 60        clrc
0510: 98 4c 04  adc   $04,#$4c
0513: 98 11 05  adc   $05,#$11
0516: e8 00     mov   a,#$00
0518: 5d        mov   x,a
0519: d4 20     mov   $20+x,a
051b: 3d        inc   x
051c: c8 a0     cmp   x,#$a0
051e: d0 f9     bne   $0519
0520: fd        mov   y,a
0521: f7 04     mov   a,($04)+y
0523: c4 1b     mov   $1b,a
0525: c4 1c     mov   $1c,a
0527: fc        inc   y
0528: cd 00     mov   x,#$00
052a: f7 04     mov   a,($04)+y
052c: d4 30     mov   $30+x,a
052e: c4 17     mov   $17,a
0530: fc        inc   y
0531: f7 04     mov   a,($04)+y
0533: d4 31     mov   $31+x,a
0535: c4 18     mov   $18,a
0537: fc        inc   y
0538: 6d        push  y
0539: 8d 00     mov   y,#$00
053b: f7 17     mov   a,($17)+y
053d: d4 20     mov   $20+x,a
053f: fc        inc   y
0540: f7 17     mov   a,($17)+y
0542: d4 21     mov   $21+x,a
0544: ee        pop   y
0545: e8 02     mov   a,#$02
0547: d4 40     mov   $40+x,a
0549: 9c        dec   a
054a: d4 61     mov   $61+x,a
054c: 3d        inc   x
054d: 3d        inc   x
054e: c8 10     cmp   x,#$10
0550: d0 d8     bne   $052a
0552: e8 00     mov   a,#$00
0554: c4 1e     mov   $1e,a
0556: c4 d4     mov   $d4,a
0558: 9c        dec   a
0559: c4 1d     mov   $1d,a
055b: c4 1f     mov   $1f,a
055d: c4 1a     mov   $1a,a
055f: 6f        ret

0560: e4 1f     mov   a,$1f
0562: f0 40     beq   $05a4
0564: e4 1a     mov   a,$1a
0566: d0 3c     bne   $05a4
0568: cd 00     mov   x,#$00
056a: 8f 00 d9  mov   $d9,#$00
056d: 8f 01 0e  mov   $0e,#$01
0570: eb d9     mov   y,$d9
0572: cb f2     mov   $f2,y
0574: f4 50     mov   a,$50+x
0576: c4 f3     mov   $f3,a
0578: fc        inc   y
0579: cb f2     mov   $f2,y
057b: f4 51     mov   a,$51+x
057d: c4 f3     mov   $f3,a
057f: fc        inc   y
0580: fc        inc   y
0581: fc        inc   y
0582: cb f2     mov   $f2,y
0584: f4 a1     mov   a,$a1+x
0586: c4 f3     mov   $f3,a
0588: fc        inc   y
0589: cb f2     mov   $f2,y
058b: f4 b0     mov   a,$b0+x
058d: c4 f3     mov   $f3,a
058f: fc        inc   y
0590: cb f2     mov   $f2,y
0592: f4 b1     mov   a,$b1+x
0594: c4 f3     mov   $f3,a
0596: 0b 0e     asl   $0e
0598: 60        clrc
0599: 98 10 d9  adc   $d9,#$10
059c: 3d        inc   x
059d: 3d        inc   x
059e: c8 10     cmp   x,#$10
05a0: d0 ce     bne   $0570
05a2: 8b 1a     dec   $1a
05a4: 6f        ret

05a5: e8 00     mov   a,#$00
05a7: c4 1a     mov   $1a,a
05a9: c5 00 01  mov   $0100,a
05ac: c5 02 01  mov   $0102,a
05af: c5 04 01  mov   $0104,a
05b2: c5 06 01  mov   $0106,a
05b5: c5 08 01  mov   $0108,a
05b8: c5 0a 01  mov   $010a,a
05bb: c5 0c 01  mov   $010c,a
05be: c5 0e 01  mov   $010e,a
05c1: c5 01 01  mov   $0101,a
05c4: c5 03 01  mov   $0103,a
05c7: c5 05 01  mov   $0105,a
05ca: c5 07 01  mov   $0107,a
05cd: c5 09 01  mov   $0109,a
05d0: c5 0b 01  mov   $010b,a
05d3: c5 0d 01  mov   $010d,a
05d6: c5 0f 01  mov   $010f,a
05d9: c4 0c     mov   $0c,a
05db: c4 0d     mov   $0d,a
05dd: c4 10     mov   $10,a
05df: 8d 3d     mov   y,#$3d
05e1: 3f 1a 09  call  $091a
05e4: e8 ff     mov   a,#$ff
05e6: 8d 5c     mov   y,#$5c
05e8: 5f 1a 09  jmp   $091a

05eb: 7d        mov   a,x
05ec: 8d 0c     mov   y,#$0c
05ee: 3f 1a 09  call  $091a
05f1: 8d 1c     mov   y,#$1c
05f3: 3f 1a 09  call  $091a
05f6: 5c        lsr   a
05f7: 5c        lsr   a
05f8: c4 15     mov   $15,a
05fa: 8d 2c     mov   y,#$2c
05fc: 3f 1a 09  call  $091a
05ff: c4 16     mov   $16,a
0601: 8d 3c     mov   y,#$3c
0603: 3f 1a 09  call  $091a
0606: 6f        ret

0607: 7d        mov   a,x
0608: c4 13     mov   $13,a
060a: 8d 0d     mov   y,#$0d
060c: 3f 1a 09  call  $091a
060f: 6f        ret

0610: 78 00 1a  cmp   $1a,#$00
0613: d0 01     bne   $0616
0615: 6f        ret

0616: 9b 61     dec   $61+x
0618: f0 01     beq   $061b
061a: 6f        ret

061b: f4 20     mov   a,$20+x
061d: c4 17     mov   $17,a
061f: f4 21     mov   a,$21+x
0621: c4 18     mov   $18,a
0623: e8 00     mov   a,#$00
0625: d4 91     mov   $91+x,a
0627: 8d 00     mov   y,#$00
0629: f7 17     mov   a,($17)+y
062b: fd        mov   y,a
062c: ab 17     inc   $17
062e: d0 02     bne   $0632
0630: ab 18     inc   $18
0632: dd        mov   a,y
0633: 30 30     bmi   $0665
0635: 68 60     cmp   a,#$60
0637: 90 06     bcc   $063f
0639: 88 a0     adc   a,#$a0
063b: d4 60     mov   $60+x,a
063d: 2f e8     bra   $0627
063f: 2d        push  a
0640: e8 ff     mov   a,#$ff
0642: d5 01 01  mov   $0101+x,a
0645: f5 00 01  mov   a,$0100+x
0648: ae        pop   a
0649: d0 0d     bne   $0658
064b: c8 08     cmp   x,#$08
064d: f0 03     beq   $0652
064f: 60        clrc
0650: 84 1e     adc   a,$1e
0652: 60        clrc
0653: 94 90     adc   a,$90+x
0655: 3f 83 08  call  $0883
0658: e4 17     mov   a,$17
065a: d4 20     mov   $20+x,a
065c: e4 18     mov   a,$18
065e: d4 21     mov   $21+x,a
0660: f4 60     mov   a,$60+x
0662: d4 61     mov   $61+x,a
0664: 6f        ret

0665: 8d 00     mov   y,#$00
0667: 68 ff     cmp   a,#$ff
0669: d0 3c     bne   $06a7
066b: f4 40     mov   a,$40+x
066d: 60        clrc
066e: 94 30     adc   a,$30+x
0670: c4 17     mov   $17,a
0672: f4 41     mov   a,$41+x
0674: 94 31     adc   a,$31+x
0676: c4 18     mov   $18,a
0678: f4 40     mov   a,$40+x
067a: 88 02     adc   a,#$02
067c: d4 40     mov   $40+x,a
067e: dd        mov   a,y
067f: 94 41     adc   a,$41+x
0681: d4 41     mov   $41+x,a
0683: f7 17     mov   a,($17)+y
0685: fc        inc   y
0686: 17 17     or    a,($17)+y
0688: d0 10     bne   $069a
068a: f4 30     mov   a,$30+x
068c: c4 17     mov   $17,a
068e: f4 31     mov   a,$31+x
0690: c4 18     mov   $18,a
0692: e8 02     mov   a,#$02
0694: d4 40     mov   $40+x,a
0696: e8 00     mov   a,#$00
0698: d4 41     mov   $41+x,a
069a: f7 17     mov   a,($17)+y
069c: 2d        push  a
069d: dc        dec   y
069e: f7 17     mov   a,($17)+y
06a0: c4 17     mov   $17,a
06a2: ae        pop   a
06a3: c4 18     mov   $18,a
06a5: 2f 80     bra   $0627
06a7: 68 fa     cmp   a,#$fa
06a9: d0 0e     bne   $06b9
06ab: f7 17     mov   a,($17)+y
06ad: ab 17     inc   $17
06af: d0 02     bne   $06b3
06b1: ab 18     inc   $18
06b3: 3f 40 08  call  $0840
06b6: 5f 27 06  jmp   $0627
06b9: 68 f8     cmp   a,#$f8
06bb: d0 0f     bne   $06cc
06bd: e8 00     mov   a,#$00
06bf: d5 01 01  mov   $0101+x,a
06c2: f5 00 01  mov   a,$0100+x
06c5: d0 91     bne   $0658
06c7: 09 0e 0d  or    ($0d),($0e)
06ca: 2f 8c     bra   $0658
06cc: 68 f9     cmp   a,#$f9
06ce: d0 03     bne   $06d3
06d0: 5f 58 06  jmp   $0658
06d3: 68 f2     cmp   a,#$f2
06d5: d0 0f     bne   $06e6
06d7: f7 17     mov   a,($17)+y
06d9: ab 17     inc   $17
06db: d0 02     bne   $06df
06dd: ab 18     inc   $18
06df: d4 70     mov   $70+x,a
06e1: db 71     mov   $71+x,y
06e3: 5f 27 06  jmp   $0627
06e6: 68 f1     cmp   a,#$f1
06e8: d0 0d     bne   $06f7
06ea: f7 17     mov   a,($17)+y
06ec: ab 17     inc   $17
06ee: d0 02     bne   $06f2
06f0: ab 18     inc   $18
06f2: d4 91     mov   $91+x,a
06f4: 5f 27 06  jmp   $0627
06f7: 68 f0     cmp   a,#$f0
06f9: d0 0d     bne   $0708
06fb: f7 17     mov   a,($17)+y
06fd: ab 17     inc   $17
06ff: d0 02     bne   $0703
0701: ab 18     inc   $18
0703: d4 a0     mov   $a0+x,a
0705: 5f 27 06  jmp   $0627
0708: 68 fb     cmp   a,#$fb
070a: d0 0d     bne   $0719
070c: f7 17     mov   a,($17)+y
070e: ab 17     inc   $17
0710: d0 02     bne   $0714
0712: ab 18     inc   $18
0714: c4 1e     mov   $1e,a
0716: 5f 27 06  jmp   $0627
0719: 68 fc     cmp   a,#$fc
071b: d0 0d     bne   $072a
071d: f7 17     mov   a,($17)+y
071f: ab 17     inc   $17
0721: d0 02     bne   $0725
0723: ab 18     inc   $18
0725: d4 90     mov   $90+x,a
0727: 5f 27 06  jmp   $0627
072a: 68 f5     cmp   a,#$f5
072c: d0 24     bne   $0752
072e: f7 17     mov   a,($17)+y
0730: 2d        push  a
0731: d4 30     mov   $30+x,a
0733: fc        inc   y
0734: f7 17     mov   a,($17)+y
0736: c4 18     mov   $18,a
0738: d4 31     mov   $31+x,a
073a: ae        pop   a
073b: c4 17     mov   $17,a
073d: e8 02     mov   a,#$02
073f: d4 40     mov   $40+x,a
0741: dc        dec   y
0742: db 41     mov   $41+x,y
0744: f7 17     mov   a,($17)+y
0746: 2d        push  a
0747: fc        inc   y
0748: f7 17     mov   a,($17)+y
074a: c4 18     mov   $18,a
074c: ae        pop   a
074d: c4 17     mov   $17,a
074f: 5f 27 06  jmp   $0627
0752: 68 f3     cmp   a,#$f3
0754: d0 28     bne   $077e
0756: f7 17     mov   a,($17)+y
0758: d4 50     mov   $50+x,a
075a: fc        inc   y
075b: f7 17     mov   a,($17)+y
075d: d4 51     mov   $51+x,a
075f: 60        clrc
0760: 98 02 17  adc   $17,#$02
0763: 90 02     bcc   $0767
0765: ab 18     inc   $18
0767: f5 00 01  mov   a,$0100+x
076a: d0 0f     bne   $077b
076c: 7d        mov   a,x
076d: 9f        xcn   a
076e: 5c        lsr   a
076f: fd        mov   y,a
0770: f4 50     mov   a,$50+x
0772: 3f 1a 09  call  $091a
0775: fc        inc   y
0776: f4 51     mov   a,$51+x
0778: 3f 1a 09  call  $091a
077b: 5f 27 06  jmp   $0627
077e: 68 ef     cmp   a,#$ef
0780: d0 2a     bne   $07ac
0782: f7 17     mov   a,($17)+y
0784: d4 b0     mov   $b0+x,a
0786: fc        inc   y
0787: f7 17     mov   a,($17)+y
0789: d4 b1     mov   $b1+x,a
078b: 60        clrc
078c: 98 02 17  adc   $17,#$02
078f: 90 02     bcc   $0793
0791: ab 18     inc   $18
0793: f5 00 01  mov   a,$0100+x
0796: d0 11     bne   $07a9
0798: 7d        mov   a,x
0799: 9f        xcn   a
079a: 5c        lsr   a
079b: 08 05     or    a,#$05
079d: fd        mov   y,a
079e: f4 b0     mov   a,$b0+x
07a0: 3f 1a 09  call  $091a
07a3: fc        inc   y
07a4: f4 b1     mov   a,$b1+x
07a6: 3f 1a 09  call  $091a
07a9: 5f 27 06  jmp   $0627
07ac: 68 f4     cmp   a,#$f4
07ae: d0 0f     bne   $07bf
07b0: f7 17     mov   a,($17)+y
07b2: ab 17     inc   $17
07b4: d0 02     bne   $07b8
07b6: ab 18     inc   $18
07b8: c4 1b     mov   $1b,a
07ba: c4 1c     mov   $1c,a
07bc: 5f 27 06  jmp   $0627
07bf: 68 fe     cmp   a,#$fe
07c1: d0 07     bne   $07ca
07c3: e8 00     mov   a,#$00
07c5: c4 1f     mov   $1f,a
07c7: 5f a5 05  jmp   $05a5
07ca: 2f fe     bra   $07ca
07cc: e4 1a     mov   a,$1a
07ce: d0 01     bne   $07d1
07d0: 6f        ret

07d1: f5 00 01  mov   a,$0100+x
07d4: d0 fa     bne   $07d0
07d6: f4 91     mov   a,$91+x
07d8: f0 15     beq   $07ef
07da: c4 17     mov   $17,a
07dc: 8f 00 18  mov   $18,#$00
07df: 28 ff     and   a,#$ff
07e1: 10 02     bpl   $07e5
07e3: 8b 18     dec   $18
07e5: f4 80     mov   a,$80+x
07e7: fb 81     mov   y,$81+x
07e9: 7a 17     addw  ya,$17
07eb: d4 80     mov   $80+x,a
07ed: db 81     mov   $81+x,y
07ef: fb 70     mov   y,$70+x
07f1: f6 ef 10  mov   a,$10ef+y
07f4: c4 17     mov   $17,a
07f6: f6 f8 10  mov   a,$10f8+y
07f9: c4 18     mov   $18,a
07fb: fb 71     mov   y,$71+x
07fd: f7 17     mov   a,($17)+y
07ff: 68 80     cmp   a,#$80
0801: d0 06     bne   $0809
0803: 8d 00     mov   y,#$00
0805: db 71     mov   $71+x,y
0807: f7 17     mov   a,($17)+y
0809: bb 71     inc   $71+x
080b: c4 17     mov   $17,a
080d: 8f 00 18  mov   $18,#$00
0810: 28 ff     and   a,#$ff
0812: 10 02     bpl   $0816
0814: 8b 18     dec   $18
0816: f4 80     mov   a,$80+x
0818: fb 81     mov   y,$81+x
081a: 7a 17     addw  ya,$17
081c: 2d        push  a
081d: f4 a0     mov   a,$a0+x
081f: c4 17     mov   $17,a
0821: 8f 00 18  mov   $18,#$00
0824: 28 ff     and   a,#$ff
0826: 10 02     bpl   $082a
0828: 8b 18     dec   $18
082a: ae        pop   a
082b: 7a 17     addw  ya,$17
082d: 6d        push  y
082e: 2d        push  a
082f: 7d        mov   a,x
0830: 9f        xcn   a
0831: 5c        lsr   a
0832: 08 02     or    a,#$02
0834: fd        mov   y,a
0835: ae        pop   a
0836: 3f 1a 09  call  $091a
0839: fc        inc   y
083a: ae        pop   a
083b: 28 3f     and   a,#$3f
083d: 5f 1a 09  jmp   $091a

0840: 8d 06     mov   y,#$06
0842: cf        mul   ya
0843: da 08     movw  $08,ya
0845: 60        clrc
0846: 98 64 08  adc   $08,#$64
0849: 98 36 09  adc   $09,#$36
084c: 8d 00     mov   y,#$00
084e: f7 08     mov   a,($08)+y
0850: d4 a1     mov   $a1+x,a
0852: fc        inc   y
0853: f7 08     mov   a,($08)+y
0855: d4 b0     mov   $b0+x,a
0857: fc        inc   y
0858: f7 08     mov   a,($08)+y
085a: d4 b1     mov   $b1+x,a
085c: f5 00 01  mov   a,$0100+x
085f: d0 16     bne   $0877
0861: 4d        push  x
0862: 7d        mov   a,x
0863: 9f        xcn   a
0864: 5c        lsr   a
0865: 08 04     or    a,#$04
0867: 5d        mov   x,a
0868: 8d 00     mov   y,#$00
086a: f7 08     mov   a,($08)+y
086c: d8 f2     mov   $f2,x
086e: c4 f3     mov   $f3,a
0870: 3d        inc   x
0871: fc        inc   y
0872: ad 03     cmp   y,#$03
0874: d0 f4     bne   $086a
0876: ce        pop   x
0877: 8d 04     mov   y,#$04
0879: f7 08     mov   a,($08)+y
087b: d4 c1     mov   $c1+x,a
087d: fc        inc   y
087e: f7 08     mov   a,($08)+y
0880: d4 c0     mov   $c0+x,a
0882: 6f        ret

0883: 8f 5c f2  mov   $f2,#$5c
0886: fa 0e f3  mov   ($f3),($0e)
0889: 09 0e 0c  or    ($0c),($0e)
088c: c4 07     mov   $07,a
088e: 8f 00 06  mov   $06,#$00
0891: 8d 00     mov   y,#$00
0893: e4 07     mov   a,$07
0895: 80        setc
0896: a8 34     sbc   a,#$34
0898: b0 09     bcs   $08a3
089a: e4 07     mov   a,$07
089c: 80        setc
089d: a8 13     sbc   a,#$13
089f: b0 06     bcs   $08a7
08a1: dc        dec   y
08a2: 1c        asl   a
08a3: 7a 06     addw  ya,$06
08a5: da 06     movw  $06,ya
08a7: 4d        push  x
08a8: e4 07     mov   a,$07
08aa: 1c        asl   a
08ab: 8d 00     mov   y,#$00
08ad: cd 18     mov   x,#$18
08af: 9e        div   ya,x
08b0: 5d        mov   x,a
08b1: f6 6a 09  mov   a,$096a+y
08b4: c4 09     mov   $09,a
08b6: f6 69 09  mov   a,$0969+y
08b9: c4 08     mov   $08,a
08bb: f6 6c 09  mov   a,$096c+y
08be: 2d        push  a
08bf: f6 6b 09  mov   a,$096b+y
08c2: ee        pop   y
08c3: 9a 08     subw  ya,$08
08c5: eb 06     mov   y,$06
08c7: cf        mul   ya
08c8: dd        mov   a,y
08c9: 8d 00     mov   y,#$00
08cb: 7a 08     addw  ya,$08
08cd: cb 09     mov   $09,y
08cf: 1c        asl   a
08d0: 2b 09     rol   $09
08d2: c4 08     mov   $08,a
08d4: 2f 04     bra   $08da
08d6: 4b 09     lsr   $09
08d8: 7c        ror   a
08d9: 3d        inc   x
08da: c8 06     cmp   x,#$06
08dc: d0 f8     bne   $08d6
08de: c4 08     mov   $08,a
08e0: ce        pop   x
08e1: f5 c0 00  mov   a,$00c0+x
08e4: eb 09     mov   y,$09
08e6: cf        mul   ya
08e7: da 0a     movw  $0a,ya
08e9: f5 c0 00  mov   a,$00c0+x
08ec: eb 08     mov   y,$08
08ee: cf        mul   ya
08ef: 6d        push  y
08f0: f5 c1 00  mov   a,$00c1+x
08f3: eb 08     mov   y,$08
08f5: cf        mul   ya
08f6: 7a 0a     addw  ya,$0a
08f8: da 0a     movw  $0a,ya
08fa: f5 c1 00  mov   a,$00c1+x
08fd: eb 09     mov   y,$09
08ff: cf        mul   ya
0900: fd        mov   y,a
0901: ae        pop   a
0902: 7a 0a     addw  ya,$0a
0904: da 0a     movw  $0a,ya
0906: 7d        mov   a,x
0907: 9f        xcn   a
0908: 5c        lsr   a
0909: 08 02     or    a,#$02
090b: fd        mov   y,a
090c: e4 0a     mov   a,$0a
090e: d4 80     mov   $80+x,a
0910: 3f 1a 09  call  $091a
0913: fc        inc   y
0914: e4 0b     mov   a,$0b
0916: 28 3f     and   a,#$3f
0918: d4 81     mov   $81+x,a
091a: cb f2     mov   $f2,y
091c: c4 f3     mov   $f3,a
091e: 6f        ret

091f: e8 00     mov   a,#$00
0921: 8d 4d     mov   y,#$4d
0923: 3f 1a 09  call  $091a
0926: 8d 0d     mov   y,#$0d
0928: 3f 1a 09  call  $091a
092b: 8d 2c     mov   y,#$2c
092d: 3f 1a 09  call  $091a
0930: 8d 3c     mov   y,#$3c
0932: 3f 1a 09  call  $091a
0935: e8 20     mov   a,#$20
0937: c4 0f     mov   $0f,a
0939: 8d 6c     mov   y,#$6c
093b: 3f 1a 09  call  $091a
093e: e8 08     mov   a,#$08
0940: c4 14     mov   $14,a
0942: 8d 7d     mov   y,#$7d
0944: 3f 1a 09  call  $091a
0947: e8 bf     mov   a,#$bf
0949: 8d 6d     mov   y,#$6d
094b: 3f 1a 09  call  $091a
094e: cd 00     mov   x,#$00
0950: 8d 0f     mov   y,#$0f
0952: f5 61 09  mov   a,$0961+x
0955: 3f 1a 09  call  $091a
0958: 3d        inc   x
0959: dd        mov   a,y
095a: 60        clrc
095b: 88 10     adc   a,#$10
095d: fd        mov   y,a
095e: 10 f2     bpl   $0952
0960: 6f        ret

0961: db $0c, $21, $2b, $2b, $13, $fe, $f3, $f9

0969: dw $085f
096b: dw $08de
096d: dw $0965
096f: dw $09f4
0971: dw $0a8c
0973: dw $0b2c
0975: dw $0bd6
0977: dw $0c8b
0979: dw $0d4a
097b: dw $0e14
097d: dw $0eea
097f: dw $0fcd
0981: dw $10be

0983: e4 d0     mov   a,$d0
0985: 28 48     and   a,#$48
0987: 88 38     adc   a,#$38
0989: 1c        asl   a
098a: 1c        asl   a
098b: 2b d3     rol   $d3
098d: 2b d2     rol   $d2
098f: 2b d1     rol   $d1
0991: 2b d0     rol   $d0
0993: 6f        ret

0994: 8f 5c f2  mov   $f2,#$5c
0997: fa 0e f3  mov   ($f3),($0e)
099a: f8 d8     mov   x,$d8
099c: e8 00     mov   a,#$00
099e: d5 00 01  mov   $0100+x,a
09a1: e4 d7     mov   a,$d7
09a3: 10 03     bpl   $09a8
09a5: 5f 9e 0a  jmp   $0a9e
09a8: 1c        asl   a
09a9: fd        mov   y,a
09aa: f6 cf 0b  mov   a,$0bcf+y
09ad: c4 17     mov   $17,a
09af: f6 d0 0b  mov   a,$0bd0+y
09b2: c4 18     mov   $18,a
09b4: 8d 00     mov   y,#$00
09b6: f7 17     mov   a,($17)+y
09b8: d5 10 01  mov   $0110+x,a
09bb: 3d        inc   x
09bc: fc        inc   y
09bd: f7 17     mov   a,($17)+y
09bf: d5 10 01  mov   $0110+x,a
09c2: 7d        mov   a,x
09c3: 60        clrc
09c4: 88 0f     adc   a,#$0f
09c6: 5d        mov   x,a
09c7: fc        inc   y
09c8: ad 0e     cmp   y,#$0e
09ca: d0 ea     bne   $09b6
09cc: f8 d8     mov   x,$d8
09ce: f5 11 01  mov   a,$0111+x
09d1: d5 90 01  mov   $0190+x,a
09d4: f5 71 01  mov   a,$0171+x
09d7: d5 91 01  mov   $0191+x,a
09da: e4 d9     mov   a,$d9
09dc: 08 04     or    a,#$04
09de: c4 f2     mov   $f2,a
09e0: f5 40 01  mov   a,$0140+x
09e3: 28 7f     and   a,#$7f
09e5: c4 f3     mov   $f3,a
09e7: 09 0e 10  or    ($10),($0e)
09ea: 49 0e 10  eor   ($10),($0e)
09ed: f5 40 01  mov   a,$0140+x
09f0: 10 19     bpl   $0a0b
09f2: 09 0e 10  or    ($10),($0e)
09f5: f5 20 01  mov   a,$0120+x
09f8: d5 80 01  mov   $0180+x,a
09fb: 28 1f     and   a,#$1f
09fd: 38 e0 0f  and   $0f,#$e0
0a00: 04 0f     or    a,$0f
0a02: c4 0f     mov   $0f,a
0a04: 8f 6c f2  mov   $f2,#$6c
0a07: c4 f3     mov   $f3,a
0a09: 2f 1e     bra   $0a29
0a0b: e4 d9     mov   a,$d9
0a0d: 08 02     or    a,#$02
0a0f: c4 f2     mov   $f2,a
0a11: f5 20 01  mov   a,$0120+x
0a14: d5 80 01  mov   $0180+x,a
0a17: c4 f3     mov   $f3,a
0a19: e4 d9     mov   a,$d9
0a1b: 08 03     or    a,#$03
0a1d: c4 f2     mov   $f2,a
0a1f: f5 21 01  mov   a,$0121+x
0a22: d5 81 01  mov   $0181+x,a
0a25: 28 3f     and   a,#$3f
0a27: c4 f3     mov   $f3,a
0a29: e4 10     mov   a,$10
0a2b: 8f 3d f2  mov   $f2,#$3d
0a2e: c4 f3     mov   $f3,a
0a30: e4 d9     mov   a,$d9
0a32: 08 05     or    a,#$05
0a34: c4 f2     mov   $f2,a
0a36: f5 60 01  mov   a,$0160+x
0a39: c4 f3     mov   $f3,a
0a3b: e4 d9     mov   a,$d9
0a3d: 08 06     or    a,#$06
0a3f: c4 f2     mov   $f2,a
0a41: f5 61 01  mov   a,$0161+x
0a44: c4 f3     mov   $f3,a
0a46: e4 d6     mov   a,$d6
0a48: 28 f0     and   a,#$f0
0a4a: 9f        xcn   a
0a4b: 1c        asl   a
0a4c: 1c        asl   a
0a4d: 1c        asl   a
0a4e: fd        mov   y,a
0a4f: e4 d9     mov   a,$d9
0a51: 08 00     or    a,#$00
0a53: c4 f2     mov   $f2,a
0a55: cb f3     mov   $f3,y
0a57: e4 d6     mov   a,$d6
0a59: 28 0f     and   a,#$0f
0a5b: 1c        asl   a
0a5c: 1c        asl   a
0a5d: 1c        asl   a
0a5e: fd        mov   y,a
0a5f: e4 d9     mov   a,$d9
0a61: 08 01     or    a,#$01
0a63: c4 f2     mov   $f2,a
0a65: cb f3     mov   $f3,y
0a67: e8 ff     mov   a,#$ff
0a69: d5 00 01  mov   $0100+x,a
0a6c: 09 0e 0c  or    ($0c),($0e)
0a6f: 6f        ret

0a70: cd 00     mov   x,#$00
0a72: 8f 00 d9  mov   $d9,#$00
0a75: 8f 01 0e  mov   $0e,#$01
0a78: 3f 88 0a  call  $0a88
0a7b: 0b 0e     asl   $0e
0a7d: 60        clrc
0a7e: 98 10 d9  adc   $d9,#$10
0a81: 3d        inc   x
0a82: 3d        inc   x
0a83: c8 10     cmp   x,#$10
0a85: d0 f1     bne   $0a78
0a87: 6f        ret

0a88: f5 00 01  mov   a,$0100+x
0a8b: d0 01     bne   $0a8e
0a8d: 6f        ret

0a8e: f5 10 01  mov   a,$0110+x
0a91: d0 54     bne   $0ae7
0a93: f5 70 01  mov   a,$0170+x
0a96: d0 4f     bne   $0ae7
0a98: 8f 5c f2  mov   $f2,#$5c
0a9b: fa 0e f3  mov   ($f3),($0e)
0a9e: e4 d7     mov   a,$d7
0aa0: 10 0c     bpl   $0aae
0aa2: 8d 04     mov   y,#$04
0aa4: 6d        push  y
0aa5: 8d 00     mov   y,#$00
0aa7: dc        dec   y
0aa8: d0 fd     bne   $0aa7
0aaa: ee        pop   y
0aab: dc        dec   y
0aac: d0 f6     bne   $0aa4
0aae: 09 0e 10  or    ($10),($0e)
0ab1: 49 0e 10  eor   ($10),($0e)
0ab4: e4 10     mov   a,$10
0ab6: 8f 3d f2  mov   $f2,#$3d
0ab9: c4 f3     mov   $f3,a
0abb: eb d9     mov   y,$d9
0abd: cb f2     mov   $f2,y
0abf: f4 50     mov   a,$50+x
0ac1: c4 f3     mov   $f3,a
0ac3: fc        inc   y
0ac4: cb f2     mov   $f2,y
0ac6: f4 51     mov   a,$51+x
0ac8: c4 f3     mov   $f3,a
0aca: fc        inc   y
0acb: fc        inc   y
0acc: fc        inc   y
0acd: cb f2     mov   $f2,y
0acf: f4 a1     mov   a,$a1+x
0ad1: c4 f3     mov   $f3,a
0ad3: fc        inc   y
0ad4: cb f2     mov   $f2,y
0ad6: f4 b0     mov   a,$b0+x
0ad8: c4 f3     mov   $f3,a
0ada: fc        inc   y
0adb: cb f2     mov   $f2,y
0add: f4 b1     mov   a,$b1+x
0adf: c4 f3     mov   $f3,a
0ae1: e8 00     mov   a,#$00
0ae3: d5 00 01  mov   $0100+x,a
0ae6: 6f        ret

0ae7: f5 10 01  mov   a,$0110+x
0aea: 9c        dec   a
0aeb: d5 10 01  mov   $0110+x,a
0aee: f5 90 01  mov   a,$0190+x
0af1: d0 4b     bne   $0b3e
0af3: f5 70 01  mov   a,$0170+x
0af6: d0 06     bne   $0afe
0af8: f5 51 01  mov   a,$0151+x
0afb: d0 01     bne   $0afe
0afd: 6f        ret

0afe: f5 51 01  mov   a,$0151+x
0b01: 9c        dec   a
0b02: d5 51 01  mov   $0151+x,a
0b05: f5 11 01  mov   a,$0111+x
0b08: d5 90 01  mov   $0190+x,a
0b0b: f5 20 01  mov   a,$0120+x
0b0e: d5 80 01  mov   $0180+x,a
0b11: f5 21 01  mov   a,$0121+x
0b14: d5 81 01  mov   $0181+x,a
0b17: f5 41 01  mov   a,$0141+x
0b1a: f0 0a     beq   $0b26
0b1c: e4 d0     mov   a,$d0
0b1e: d5 80 01  mov   $0180+x,a
0b21: e4 d1     mov   a,$d1
0b23: d5 81 01  mov   $0181+x,a
0b26: e4 d9     mov   a,$d9
0b28: 08 02     or    a,#$02
0b2a: c4 f2     mov   $f2,a
0b2c: f5 80 01  mov   a,$0180+x
0b2f: c4 f3     mov   $f3,a
0b31: e4 d9     mov   a,$d9
0b33: 08 03     or    a,#$03
0b35: c4 f2     mov   $f2,a
0b37: f5 81 01  mov   a,$0181+x
0b3a: 28 3f     and   a,#$3f
0b3c: c4 f3     mov   $f3,a
0b3e: f5 90 01  mov   a,$0190+x
0b41: 9c        dec   a
0b42: d5 90 01  mov   $0190+x,a
0b45: f5 71 01  mov   a,$0171+x
0b48: f0 0f     beq   $0b59
0b4a: f5 91 01  mov   a,$0191+x
0b4d: 9c        dec   a
0b4e: d5 91 01  mov   $0191+x,a
0b51: d0 65     bne   $0bb8
0b53: f5 71 01  mov   a,$0171+x
0b56: d5 91 01  mov   $0191+x,a
0b59: f5 50 01  mov   a,$0150+x
0b5c: f0 5a     beq   $0bb8
0b5e: 10 2d     bpl   $0b8d
0b60: f5 80 01  mov   a,$0180+x
0b63: 80        setc
0b64: b5 30 01  sbc   a,$0130+x
0b67: d5 80 01  mov   $0180+x,a
0b6a: f5 81 01  mov   a,$0181+x
0b6d: b5 31 01  sbc   a,$0131+x
0b70: d5 81 01  mov   $0181+x,a
0b73: e4 d9     mov   a,$d9
0b75: 08 02     or    a,#$02
0b77: c4 f2     mov   $f2,a
0b79: f5 80 01  mov   a,$0180+x
0b7c: c4 f3     mov   $f3,a
0b7e: e4 d9     mov   a,$d9
0b80: 08 03     or    a,#$03
0b82: c4 f2     mov   $f2,a
0b84: f5 81 01  mov   a,$0181+x
0b87: 28 3f     and   a,#$3f
0b89: c4 f3     mov   $f3,a
0b8b: 2f 2b     bra   $0bb8
0b8d: f5 80 01  mov   a,$0180+x
0b90: 60        clrc
0b91: 95 30 01  adc   a,$0130+x
0b94: d5 80 01  mov   $0180+x,a
0b97: f5 81 01  mov   a,$0181+x
0b9a: 95 31 01  adc   a,$0131+x
0b9d: d5 81 01  mov   $0181+x,a
0ba0: e4 d9     mov   a,$d9
0ba2: 08 02     or    a,#$02
0ba4: c4 f2     mov   $f2,a
0ba6: f5 80 01  mov   a,$0180+x
0ba9: c4 f3     mov   $f3,a
0bab: e4 d9     mov   a,$d9
0bad: 08 03     or    a,#$03
0baf: c4 f2     mov   $f2,a
0bb1: f5 81 01  mov   a,$0181+x
0bb4: 28 3f     and   a,#$3f
0bb6: c4 f3     mov   $f3,a
0bb8: f5 40 01  mov   a,$0140+x
0bbb: 10 11     bpl   $0bce
0bbd: f5 80 01  mov   a,$0180+x
0bc0: 28 1f     and   a,#$1f
0bc2: 38 e0 0f  and   $0f,#$e0
0bc5: 04 0f     or    a,$0f
0bc7: c4 0f     mov   $0f,a
0bc9: 8f 6c f2  mov   $f2,#$6c
0bcc: c4 f3     mov   $f3,a
0bce: 6f        ret