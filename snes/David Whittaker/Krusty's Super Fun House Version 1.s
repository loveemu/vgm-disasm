0300: 20        clrp
0301: e8 00     mov   a,#$00
0303: c5 f4 00  mov   $00f4,a
0306: c5 f5 00  mov   $00f5,a
0309: cd cf     mov   x,#$cf
030b: bd        mov   sp,x
030c: e8 00     mov   a,#$00
030e: 5d        mov   x,a
030f: af        mov   (x)+,a
0310: c8 f0     cmp   x,#$f0
0312: d0 fb     bne   $030f
0314: 5d        mov   x,a
0315: d5 00 01  mov   $0100+x,a
0318: d5 00 02  mov   $0200+x,a
031b: 3d        inc   x
031c: d0 f7     bne   $0315
031e: 3f a8 07  call  $07a8
0321: 8d 00     mov   y,#$00
0323: e8 00     mov   a,#$00
0325: 3f a1 07  call  $07a1
0328: fc        inc   y
0329: 3f a1 07  call  $07a1
032c: dd        mov   a,y
032d: 60        clrc
032e: 88 0f     adc   a,#$0f
0330: fd        mov   y,a
0331: 10 f0     bpl   $0323
0333: e8 00     mov   a,#$00
0335: 8d 2d     mov   y,#$2d
0337: 3f a1 07  call  $07a1
033a: cd 3f     mov   x,#$3f
033c: 3f e5 04  call  $04e5
033f: cd 00     mov   x,#$00
0341: f5 00 90  mov   a,$9000+x
0344: d5 3c 36  mov   $363c+x,a
0347: 3d        inc   x
0348: c8 28     cmp   x,#$28
034a: d0 f5     bne   $0341
034c: e8 36     mov   a,#$36
034e: 8d 5d     mov   y,#$5d
0350: 3f a1 07  call  $07a1
0353: 8f ff 9e  mov   $9e,#$ff
0356: 8f 80 9f  mov   $9f,#$80
0359: 8f 1b a0  mov   $a0,#$1b
035c: 8f 34 a1  mov   $a1,#$34
035f: e8 b0     mov   a,#$b0
0361: c5 f1 00  mov   $00f1,a
0364: e8 10     mov   a,#$10
0366: c5 fa 00  mov   $00fa,a
0369: e8 81     mov   a,#$81
036b: c5 f1 00  mov   $00f1,a
036e: e8 55     mov   a,#$55
0370: c5 f4 00  mov   $00f4,a
0373: c5 f5 00  mov   $00f5,a
0376: e4 f4     mov   a,$f4
0378: f0 fc     beq   $0376
037a: d0 0a     bne   $0386
037c: ec fd 00  mov   y,$00fd
037f: f0 fb     beq   $037c
0381: e5 f4 00  mov   a,$00f4
0384: f0 70     beq   $03f6
0386: e9 f5 00  mov   x,$00f5
0389: ec f6 00  mov   y,$00f6
038c: cb a4     mov   $a4,y
038e: 8f b1 f1  mov   $f1,#$b1
0391: c5 f4 00  mov   $00f4,a
0394: c9 f5 00  mov   $00f5,x
0397: cc f6 00  mov   $00f6,y
039a: 68 01     cmp   a,#$01
039c: d0 09     bne   $03a7
039e: c8 0b     cmp   x,#$0b
03a0: b0 54     bcs   $03f6
03a2: 3f 6d 04  call  $046d
03a5: 2f 4f     bra   $03f6
03a7: 68 04     cmp   a,#$04
03a9: d0 0d     bne   $03b8
03ab: c8 ff     cmp   x,#$ff
03ad: f0 04     beq   $03b3
03af: c8 4a     cmp   x,#$4a
03b1: b0 43     bcs   $03f6
03b3: 3f 19 08  call  $0819
03b6: 2f 3e     bra   $03f6
03b8: 68 05     cmp   a,#$05
03ba: d0 0d     bne   $03c9
03bc: c8 ff     cmp   x,#$ff
03be: f0 04     beq   $03c4
03c0: c8 4a     cmp   x,#$4a
03c2: b0 32     bcs   $03f6
03c4: 3f d8 08  call  $08d8
03c7: 2f 2d     bra   $03f6
03c9: 68 02     cmp   a,#$02
03cb: d0 05     bne   $03d2
03cd: 3f cb 04  call  $04cb
03d0: 2f 24     bra   $03f6
03d2: 68 03     cmp   a,#$03
03d4: d0 05     bne   $03db
03d6: 3f c0 04  call  $04c0
03d9: 2f 1b     bra   $03f6
03db: 68 06     cmp   a,#$06
03dd: d0 05     bne   $03e4
03df: 8f ff a2  mov   $a2,#$ff
03e2: 2f 12     bra   $03f6
03e4: 68 07     cmp   a,#$07
03e6: d0 05     bne   $03ed
03e8: 8f 00 a2  mov   $a2,#$00
03eb: 2f 09     bra   $03f6
03ed: 68 08     cmp   a,#$08
03ef: d0 05     bne   $03f6
03f1: 3f e5 04  call  $04e5
03f4: 2f 00     bra   $03f6
03f6: e8 00     mov   a,#$00
03f8: f8 9c     mov   x,$9c
03fa: 10 02     bpl   $03fe
03fc: 08 01     or    a,#$01
03fe: f8 9d     mov   x,$9d
0400: 10 02     bpl   $0404
0402: 08 02     or    a,#$02
0404: f8 1a     mov   x,$1a
0406: 10 02     bpl   $040a
0408: 08 04     or    a,#$04
040a: c4 f7     mov   $f7,a
040c: ab a3     inc   $a3
040e: 78 0a a3  cmp   $a3,#$0a
0411: f0 03     beq   $0416
0413: 5f 7c 03  jmp   $037c
0416: 8f 00 a3  mov   $a3,#$00
0419: e4 1f     mov   a,$1f
041b: f0 2d     beq   $044a
041d: e4 a2     mov   a,$a2
041f: d0 09     bne   $042a
0421: e4 1b     mov   a,$1b
0423: 60        clrc
0424: 84 1d     adc   a,$1d
0426: c4 1d     mov   $1d,a
0428: 90 10     bcc   $043a
042a: cd 00     mov   x,#$00
042c: 8f 01 0e  mov   $0e,#$01
042f: 3f f1 04  call  $04f1
0432: 0b 0e     asl   $0e
0434: 3d        inc   x
0435: 3d        inc   x
0436: c8 0c     cmp   x,#$0c
0438: d0 f5     bne   $042f
043a: cd 00     mov   x,#$00
043c: 8f 01 0e  mov   $0e,#$01
043f: 3f 70 06  call  $0670
0442: 0b 0e     asl   $0e
0444: 3d        inc   x
0445: 3d        inc   x
0446: c8 0c     cmp   x,#$0c
0448: d0 f5     bne   $043f
044a: 3f 99 09  call  $0999
044d: 8d 09     mov   y,#$09
044f: ad 05     cmp   y,#$05
0451: d0 01     bne   $0454
0453: dc        dec   y
0454: f6 db 07  mov   a,$07db+y
0457: c5 f2 00  mov   $00f2,a
045a: f6 e4 07  mov   a,$07e4+y
045d: 5d        mov   x,a
045e: e6        mov   a,(x)
045f: c5 f3 00  mov   $00f3,a
0462: fe eb     dbnz  y,$044f
0464: 8f 00 0c  mov   $0c,#$00
0467: 8f 00 0d  mov   $0d,#$00
046a: 5f 7c 03  jmp   $037c
046d: 3f cb 04  call  $04cb
0470: 7d        mov   a,x
0471: 8d 0d     mov   y,#$0d
0473: cf        mul   ya
0474: fd        mov   y,a
0475: e8 00     mov   a,#$00
0477: cd 6b     mov   x,#$6b
0479: d4 20     mov   $20+x,a
047b: 1d        dec   x
047c: 10 fb     bpl   $0479
047e: f6 3f 10  mov   a,$103f+y
0481: c4 1b     mov   $1b,a
0483: c4 1c     mov   $1c,a
0485: fc        inc   y
0486: cd 00     mov   x,#$00
0488: f6 3f 10  mov   a,$103f+y
048b: d4 2c     mov   $2c+x,a
048d: c4 17     mov   $17,a
048f: fc        inc   y
0490: f6 3f 10  mov   a,$103f+y
0493: d4 2d     mov   $2d+x,a
0495: c4 18     mov   $18,a
0497: fc        inc   y
0498: 6d        push  y
0499: 8d 00     mov   y,#$00
049b: f7 17     mov   a,($17)+y
049d: d4 20     mov   $20+x,a
049f: fc        inc   y
04a0: f7 17     mov   a,($17)+y
04a2: d4 21     mov   $21+x,a
04a4: ee        pop   y
04a5: e8 02     mov   a,#$02
04a7: d4 38     mov   $38+x,a
04a9: 9c        dec   a
04aa: d4 51     mov   $51+x,a
04ac: 3d        inc   x
04ad: 3d        inc   x
04ae: c8 0c     cmp   x,#$0c
04b0: d0 d6     bne   $0488
04b2: e8 00     mov   a,#$00
04b4: c4 1e     mov   $1e,a
04b6: c4 a2     mov   $a2,a
04b8: 9c        dec   a
04b9: c4 1d     mov   $1d,a
04bb: c4 1f     mov   $1f,a
04bd: c4 1a     mov   $1a,a
04bf: 6f        ret

04c0: e4 1f     mov   a,$1f
04c2: f0 06     beq   $04ca
04c4: e4 1a     mov   a,$1a
04c6: d0 02     bne   $04ca
04c8: 8b 1a     dec   $1a
04ca: 6f        ret

04cb: e8 00     mov   a,#$00
04cd: c4 1a     mov   $1a,a
04cf: c4 9c     mov   $9c,a
04d1: c4 9d     mov   $9d,a
04d3: c4 10     mov   $10,a
04d5: c4 0c     mov   $0c,a
04d7: c4 0d     mov   $0d,a
04d9: 8d 3d     mov   y,#$3d
04db: 3f a1 07  call  $07a1
04de: e8 ff     mov   a,#$ff
04e0: 8d 5c     mov   y,#$5c
04e2: 5f a1 07  jmp   $07a1

04e5: 7d        mov   a,x
04e6: 8d 0c     mov   y,#$0c
04e8: 3f a1 07  call  $07a1
04eb: 8d 1c     mov   y,#$1c
04ed: 3f a1 07  call  $07a1
04f0: 6f        ret

04f1: 78 00 1a  cmp   $1a,#$00
04f4: d0 01     bne   $04f7
04f6: 6f        ret

04f7: 9b 51     dec   $51+x
04f9: f0 01     beq   $04fc
04fb: 6f        ret

04fc: f4 20     mov   a,$20+x
04fe: c4 17     mov   $17,a
0500: f4 21     mov   a,$21+x
0502: c4 18     mov   $18,a
0504: e8 00     mov   a,#$00
0506: d4 75     mov   $75+x,a
0508: 8d 00     mov   y,#$00
050a: f7 17     mov   a,($17)+y
050c: fd        mov   y,a
050d: ab 17     inc   $17
050f: d0 02     bne   $0513
0511: ab 18     inc   $18
0513: dd        mov   a,y
0514: 30 24     bmi   $053a
0516: 68 60     cmp   a,#$60
0518: 90 06     bcc   $0520
051a: 88 a0     adc   a,#$a0
051c: d4 50     mov   $50+x,a
051e: 2f e8     bra   $0508
0520: c8 08     cmp   x,#$08
0522: f0 03     beq   $0527
0524: 60        clrc
0525: 84 1e     adc   a,$1e
0527: 60        clrc
0528: 94 74     adc   a,$74+x
052a: 3f 0a 07  call  $070a
052d: e4 17     mov   a,$17
052f: d4 20     mov   $20+x,a
0531: e4 18     mov   a,$18
0533: d4 21     mov   $21+x,a
0535: f4 50     mov   a,$50+x
0537: d4 51     mov   $51+x,a
0539: 6f        ret

053a: 8d 00     mov   y,#$00
053c: 68 ff     cmp   a,#$ff
053e: d0 3c     bne   $057c
0540: f4 38     mov   a,$38+x
0542: 60        clrc
0543: 94 2c     adc   a,$2c+x
0545: c4 17     mov   $17,a
0547: f4 39     mov   a,$39+x
0549: 94 2d     adc   a,$2d+x
054b: c4 18     mov   $18,a
054d: f4 38     mov   a,$38+x
054f: 88 02     adc   a,#$02
0551: d4 38     mov   $38+x,a
0553: dd        mov   a,y
0554: 94 39     adc   a,$39+x
0556: d4 39     mov   $39+x,a
0558: f7 17     mov   a,($17)+y
055a: fc        inc   y
055b: 17 17     or    a,($17)+y
055d: d0 10     bne   $056f
055f: f4 2c     mov   a,$2c+x
0561: c4 17     mov   $17,a
0563: f4 2d     mov   a,$2d+x
0565: c4 18     mov   $18,a
0567: e8 02     mov   a,#$02
0569: d4 38     mov   $38+x,a
056b: e8 00     mov   a,#$00
056d: d4 39     mov   $39+x,a
056f: f7 17     mov   a,($17)+y
0571: 2d        push  a
0572: dc        dec   y
0573: f7 17     mov   a,($17)+y
0575: c4 17     mov   $17,a
0577: ae        pop   a
0578: c4 18     mov   $18,a
057a: 2f 8c     bra   $0508
057c: 68 fa     cmp   a,#$fa
057e: d0 0e     bne   $058e
0580: f7 17     mov   a,($17)+y
0582: ab 17     inc   $17
0584: d0 02     bne   $0588
0586: ab 18     inc   $18
0588: 3f da 06  call  $06da
058b: 5f 08 05  jmp   $0508
058e: 68 f8     cmp   a,#$f8
0590: d0 05     bne   $0597
0592: 09 0e 0d  or    ($0d),($0e)
0595: 2f 96     bra   $052d
0597: 68 f9     cmp   a,#$f9
0599: d0 03     bne   $059e
059b: 5f 2d 05  jmp   $052d
059e: 68 f2     cmp   a,#$f2
05a0: d0 0f     bne   $05b1
05a2: f7 17     mov   a,($17)+y
05a4: ab 17     inc   $17
05a6: d0 02     bne   $05aa
05a8: ab 18     inc   $18
05aa: d4 5c     mov   $5c+x,a
05ac: db 5d     mov   $5d+x,y
05ae: 5f 08 05  jmp   $0508
05b1: 68 f1     cmp   a,#$f1
05b3: d0 0d     bne   $05c2
05b5: f7 17     mov   a,($17)+y
05b7: ab 17     inc   $17
05b9: d0 02     bne   $05bd
05bb: ab 18     inc   $18
05bd: d4 75     mov   $75+x,a
05bf: 5f 08 05  jmp   $0508
05c2: 68 f0     cmp   a,#$f0
05c4: d0 0d     bne   $05d3
05c6: f7 17     mov   a,($17)+y
05c8: ab 17     inc   $17
05ca: d0 02     bne   $05ce
05cc: ab 18     inc   $18
05ce: d4 81     mov   $81+x,a
05d0: 5f 08 05  jmp   $0508
05d3: 68 fb     cmp   a,#$fb
05d5: d0 0d     bne   $05e4
05d7: f7 17     mov   a,($17)+y
05d9: ab 17     inc   $17
05db: d0 02     bne   $05df
05dd: ab 18     inc   $18
05df: c4 1e     mov   $1e,a
05e1: 5f 08 05  jmp   $0508
05e4: 68 fc     cmp   a,#$fc
05e6: d0 0d     bne   $05f5
05e8: f7 17     mov   a,($17)+y
05ea: ab 17     inc   $17
05ec: d0 02     bne   $05f0
05ee: ab 18     inc   $18
05f0: d4 74     mov   $74+x,a
05f2: 5f 08 05  jmp   $0508
05f5: 68 f5     cmp   a,#$f5
05f7: d0 24     bne   $061d
05f9: f7 17     mov   a,($17)+y
05fb: 2d        push  a
05fc: d4 2c     mov   $2c+x,a
05fe: fc        inc   y
05ff: f7 17     mov   a,($17)+y
0601: c4 18     mov   $18,a
0603: d4 2d     mov   $2d+x,a
0605: ae        pop   a
0606: c4 17     mov   $17,a
0608: e8 02     mov   a,#$02
060a: d4 38     mov   $38+x,a
060c: dc        dec   y
060d: db 39     mov   $39+x,y
060f: f7 17     mov   a,($17)+y
0611: 2d        push  a
0612: fc        inc   y
0613: f7 17     mov   a,($17)+y
0615: c4 18     mov   $18,a
0617: ae        pop   a
0618: c4 17     mov   $17,a
061a: 5f 08 05  jmp   $0508
061d: 68 f3     cmp   a,#$f3
061f: d0 25     bne   $0646
0621: f7 17     mov   a,($17)+y
0623: d4 44     mov   $44+x,a
0625: fc        inc   y
0626: f7 17     mov   a,($17)+y
0628: d4 45     mov   $45+x,a
062a: 60        clrc
062b: 98 02 17  adc   $17,#$02
062e: 90 02     bcc   $0632
0630: ab 18     inc   $18
0632: 7d        mov   a,x
0633: 9f        xcn   a
0634: 5c        lsr   a
0635: fd        mov   y,a
0636: f4 44     mov   a,$44+x
0638: 3f a1 07  call  $07a1
063b: fc        inc   y
063c: f4 45     mov   a,$45+x
063e: 3f a1 07  call  $07a1
0641: 8d 00     mov   y,#$00
0643: 5f 08 05  jmp   $0508
0646: 68 f4     cmp   a,#$f4
0648: d0 0f     bne   $0659
064a: f7 17     mov   a,($17)+y
064c: ab 17     inc   $17
064e: d0 02     bne   $0652
0650: ab 18     inc   $18
0652: c4 1b     mov   $1b,a
0654: c4 1c     mov   $1c,a
0656: 5f 08 05  jmp   $0508
0659: 68 fe     cmp   a,#$fe
065b: d0 11     bne   $066e
065d: e8 00     mov   a,#$00
065f: c4 1f     mov   $1f,a
0661: c4 1a     mov   $1a,a
0663: c4 0c     mov   $0c,a
0665: c4 0d     mov   $0d,a
0667: e8 3f     mov   a,#$3f
0669: 8d 5c     mov   y,#$5c
066b: 5f a1 07  jmp   $07a1
066e: 2f fe     bra   $066e

0670: f4 75     mov   a,$75+x
0672: f0 15     beq   $0689
0674: c4 17     mov   $17,a
0676: 8f 00 18  mov   $18,#$00
0679: 28 ff     and   a,#$ff
067b: 10 02     bpl   $067f
067d: 8b 18     dec   $18
067f: f4 68     mov   a,$68+x
0681: fb 69     mov   y,$69+x
0683: 7a 17     addw  ya,$17
0685: d4 68     mov   $68+x,a
0687: db 69     mov   $69+x,y
0689: fb 5c     mov   y,$5c+x
068b: f6 e2 0f  mov   a,$0fe2+y
068e: c4 17     mov   $17,a
0690: f6 eb 0f  mov   a,$0feb+y
0693: c4 18     mov   $18,a
0695: fb 5d     mov   y,$5d+x
0697: f7 17     mov   a,($17)+y
0699: 68 80     cmp   a,#$80
069b: d0 06     bne   $06a3
069d: 8d 00     mov   y,#$00
069f: db 5d     mov   $5d+x,y
06a1: f7 17     mov   a,($17)+y
06a3: bb 5d     inc   $5d+x
06a5: c4 17     mov   $17,a
06a7: 8f 00 18  mov   $18,#$00
06aa: 28 ff     and   a,#$ff
06ac: 10 02     bpl   $06b0
06ae: 8b 18     dec   $18
06b0: f4 68     mov   a,$68+x
06b2: fb 69     mov   y,$69+x
06b4: 7a 17     addw  ya,$17
06b6: 2d        push  a
06b7: f4 81     mov   a,$81+x
06b9: c4 17     mov   $17,a
06bb: 8f 00 18  mov   $18,#$00
06be: 28 ff     and   a,#$ff
06c0: 10 02     bpl   $06c4
06c2: 8b 18     dec   $18
06c4: ae        pop   a
06c5: 7a 17     addw  ya,$17
06c7: 6d        push  y
06c8: 2d        push  a
06c9: 7d        mov   a,x
06ca: 9f        xcn   a
06cb: 5c        lsr   a
06cc: 08 02     or    a,#$02
06ce: fd        mov   y,a
06cf: ae        pop   a
06d0: 3f a1 07  call  $07a1
06d3: fc        inc   y
06d4: ae        pop   a
06d5: 28 3f     and   a,#$3f
06d7: 5f a1 07  jmp   $07a1

06da: 8d 06     mov   y,#$06
06dc: cf        mul   ya
06dd: da 08     movw  $08,ya
06df: 60        clrc
06e0: 98 d1 08  adc   $08,#$d1
06e3: 98 33 09  adc   $09,#$33
06e6: 4d        push  x
06e7: 7d        mov   a,x
06e8: 9f        xcn   a
06e9: 5c        lsr   a
06ea: 08 04     or    a,#$04
06ec: 5d        mov   x,a
06ed: 8d 00     mov   y,#$00
06ef: f7 08     mov   a,($08)+y
06f1: c9 f2 00  mov   $00f2,x
06f4: c5 f3 00  mov   $00f3,a
06f7: 3d        inc   x
06f8: fc        inc   y
06f9: ad 04     cmp   y,#$04
06fb: d0 f2     bne   $06ef
06fd: ce        pop   x
06fe: f7 08     mov   a,($08)+y
0700: d5 8d 00  mov   $008d+x,a
0703: fc        inc   y
0704: f7 08     mov   a,($08)+y
0706: d5 8c 00  mov   $008c+x,a
0709: 6f        ret

070a: c4 07     mov   $07,a
070c: 8f 5c f2  mov   $f2,#$5c
070f: fa 0e f3  mov   ($f3),($0e)
0712: 8f 00 06  mov   $06,#$00
0715: 09 0e 0c  or    ($0c),($0e)
0718: 8d 00     mov   y,#$00
071a: e4 07     mov   a,$07
071c: 80        setc
071d: a8 34     sbc   a,#$34
071f: b0 09     bcs   $072a
0721: e4 07     mov   a,$07
0723: 80        setc
0724: a8 13     sbc   a,#$13
0726: b0 06     bcs   $072e
0728: dc        dec   y
0729: 1c        asl   a
072a: 7a 06     addw  ya,$06
072c: da 06     movw  $06,ya
072e: 4d        push  x
072f: e4 07     mov   a,$07
0731: 1c        asl   a
0732: 8d 00     mov   y,#$00
0734: cd 18     mov   x,#$18
0736: 9e        div   ya,x
0737: 5d        mov   x,a
0738: f6 ef 07  mov   a,$07ef+y
073b: c4 09     mov   $09,a
073d: f6 ee 07  mov   a,$07ee+y
0740: c4 08     mov   $08,a
0742: f6 f1 07  mov   a,$07f1+y
0745: 2d        push  a
0746: f6 f0 07  mov   a,$07f0+y
0749: ee        pop   y
074a: 9a 08     subw  ya,$08
074c: eb 06     mov   y,$06
074e: cf        mul   ya
074f: dd        mov   a,y
0750: 8d 00     mov   y,#$00
0752: 7a 08     addw  ya,$08
0754: cb 09     mov   $09,y
0756: 1c        asl   a
0757: 2b 09     rol   $09
0759: c4 08     mov   $08,a
075b: 2f 04     bra   $0761
075d: 4b 09     lsr   $09
075f: 7c        ror   a
0760: 3d        inc   x
0761: c8 06     cmp   x,#$06
0763: d0 f8     bne   $075d
0765: c4 08     mov   $08,a
0767: ce        pop   x
0768: f5 8c 00  mov   a,$008c+x
076b: eb 09     mov   y,$09
076d: cf        mul   ya
076e: da 0a     movw  $0a,ya
0770: f5 8c 00  mov   a,$008c+x
0773: eb 08     mov   y,$08
0775: cf        mul   ya
0776: 6d        push  y
0777: f5 8d 00  mov   a,$008d+x
077a: eb 08     mov   y,$08
077c: cf        mul   ya
077d: 7a 0a     addw  ya,$0a
077f: da 0a     movw  $0a,ya
0781: f5 8d 00  mov   a,$008d+x
0784: eb 09     mov   y,$09
0786: cf        mul   ya
0787: fd        mov   y,a
0788: ae        pop   a
0789: 7a 0a     addw  ya,$0a
078b: da 0a     movw  $0a,ya
078d: 7d        mov   a,x
078e: 9f        xcn   a
078f: 5c        lsr   a
0790: 08 02     or    a,#$02
0792: fd        mov   y,a
0793: e4 0a     mov   a,$0a
0795: d4 68     mov   $68+x,a
0797: 3f a1 07  call  $07a1
079a: fc        inc   y
079b: e4 0b     mov   a,$0b
079d: 28 3f     and   a,#$3f
079f: d4 69     mov   $69+x,a
07a1: cc f2 00  mov   $00f2,y
07a4: c5 f3 00  mov   $00f3,a
07a7: 6f        ret

07a8: a2 0f     set5  $0f
07aa: e4 0f     mov   a,$0f
07ac: 8d 6c     mov   y,#$6c
07ae: 3f a1 07  call  $07a1
07b1: e8 00     mov   a,#$00
07b3: 8d 7d     mov   y,#$7d
07b5: 3f a1 07  call  $07a1
07b8: c4 14     mov   $14,a
07ba: 8d 6d     mov   y,#$6d
07bc: 3f a1 07  call  $07a1
07bf: 8d 0d     mov   y,#$0d
07c1: 3f a1 07  call  $07a1
07c4: c4 13     mov   $13,a
07c6: 8d 4d     mov   y,#$4d
07c8: 3f a1 07  call  $07a1
07cb: c4 11     mov   $11,a
07cd: 8d 2c     mov   y,#$2c
07cf: 3f a1 07  call  $07a1
07d2: c4 15     mov   $15,a
07d4: 8d 3c     mov   y,#$3c
07d6: 3f a1 07  call  $07a1
07d9: c4 16     mov   $16,a
07db: 6f        ret

07dc: db $2c, $3c, $0d, $4d, $6c, $4c, $3d, $2d, $5c
07e5: db $15, $16, $13, $11, $0f, $0c, $10, $12, $0d

07ee: dw $085f
07f0: dw $08de
07f2: dw $0965
07f4: dw $09f4
07f6: dw $0a8c
07f8: dw $0b2c
07fa: dw $0bd6
07fc: dw $0c8b
07fe: dw $0d4a
0800: dw $0e14
0802: dw $0eea
0804: dw $0fcd
0806: dw $10be

0808: e4 9e     mov   a,$9e
080a: 28 48     and   a,#$48
080c: 88 38     adc   a,#$38
080e: 1c        asl   a
080f: 1c        asl   a
0810: 2b a1     rol   $a1
0812: 2b a0     rol   $a0
0814: 2b 9f     rol   $9f
0816: 2b 9e     rol   $9e
0818: 6f        ret

0819: 8f 00 9c  mov   $9c,#$00
081c: 7d        mov   a,x
081d: 10 0b     bpl   $082a
081f: e8 40     mov   a,#$40
0821: 8f 5c f2  mov   $f2,#$5c
0824: c5 f3 00  mov   $00f3,a
0827: 5f d2 08  jmp   $08d2
082a: 1c        asl   a
082b: fd        mov   y,a
082c: f6 42 0b  mov   a,$0b42+y
082f: c4 17     mov   $17,a
0831: f6 43 0b  mov   a,$0b43+y
0834: c4 18     mov   $18,a
0836: 8d 0d     mov   y,#$0d
0838: f7 17     mov   a,($17)+y
083a: d6 00 02  mov   $0200+y,a
083d: dc        dec   y
083e: 10 f8     bpl   $0838
0840: e5 01 02  mov   a,$0201
0843: c5 10 02  mov   $0210,a
0846: e5 0d 02  mov   a,$020d
0849: c5 11 02  mov   $0211,a
084c: e5 06 02  mov   a,$0206
084f: 28 7f     and   a,#$7f
0851: 8f 64 f2  mov   $f2,#$64
0854: c5 f3 00  mov   $00f3,a
0857: 38 bf 10  and   $10,#$bf
085a: e5 06 02  mov   a,$0206
085d: 10 1a     bpl   $0879
085f: 18 40 10  or    $10,#$40
0862: e5 02 02  mov   a,$0202
0865: c5 0e 02  mov   $020e,a
0868: 28 1f     and   a,#$1f
086a: 38 e0 0f  and   $0f,#$e0
086d: 04 0f     or    a,$0f
086f: c4 0f     mov   $0f,a
0871: 8f 6c f2  mov   $f2,#$6c
0874: c5 f3 00  mov   $00f3,a
0877: 2f 1a     bra   $0893
0879: e5 02 02  mov   a,$0202
087c: c5 0e 02  mov   $020e,a
087f: 8f 62 f2  mov   $f2,#$62
0882: c5 f3 00  mov   $00f3,a
0885: e5 03 02  mov   a,$0203
0888: c5 0f 02  mov   $020f,a
088b: 28 3f     and   a,#$3f
088d: 8f 63 f2  mov   $f2,#$63
0890: c5 f3 00  mov   $00f3,a
0893: e4 10     mov   a,$10
0895: 8f 3d f2  mov   $f2,#$3d
0898: c5 f3 00  mov   $00f3,a
089b: e5 0a 02  mov   a,$020a
089e: 8f 65 f2  mov   $f2,#$65
08a1: c5 f3 00  mov   $00f3,a
08a4: e5 0b 02  mov   a,$020b
08a7: 8f 66 f2  mov   $f2,#$66
08aa: c5 f3 00  mov   $00f3,a
08ad: e4 a4     mov   a,$a4
08af: 28 f0     and   a,#$f0
08b1: 9f        xcn   a
08b2: 1c        asl   a
08b3: 1c        asl   a
08b4: 1c        asl   a
08b5: 8f 60 f2  mov   $f2,#$60
08b8: c5 f3 00  mov   $00f3,a
08bb: e4 a4     mov   a,$a4
08bd: 28 0f     and   a,#$0f
08bf: 1c        asl   a
08c0: 1c        asl   a
08c1: 1c        asl   a
08c2: 8f 61 f2  mov   $f2,#$61
08c5: c5 f3 00  mov   $00f3,a
08c8: e8 40     mov   a,#$40
08ca: 8f 4c f2  mov   $f2,#$4c
08cd: c5 f3 00  mov   $00f3,a
08d0: 8b 9c     dec   $9c
08d2: cd 00     mov   x,#$00
08d4: 1d        dec   x
08d5: d0 fd     bne   $08d4
08d7: 6f        ret

08d8: 8f 00 9d  mov   $9d,#$00
08db: 7d        mov   a,x
08dc: 10 0b     bpl   $08e9
08de: e8 80     mov   a,#$80
08e0: 8f 5c f2  mov   $f2,#$5c
08e3: c5 f3 00  mov   $00f3,a
08e6: 5f d2 08  jmp   $08d2
08e9: 1c        asl   a
08ea: fd        mov   y,a
08eb: f6 42 0b  mov   a,$0b42+y
08ee: c4 17     mov   $17,a
08f0: f6 43 0b  mov   a,$0b43+y
08f3: c4 18     mov   $18,a
08f5: 8d 0d     mov   y,#$0d
08f7: f7 17     mov   a,($17)+y
08f9: d6 12 02  mov   $0212+y,a
08fc: dc        dec   y
08fd: 10 f8     bpl   $08f7
08ff: e5 13 02  mov   a,$0213
0902: c5 22 02  mov   $0222,a
0905: e5 1f 02  mov   a,$021f
0908: c5 23 02  mov   $0223,a
090b: e5 18 02  mov   a,$0218
090e: 28 7f     and   a,#$7f
0910: 8f 74 f2  mov   $f2,#$74
0913: c5 f3 00  mov   $00f3,a
0916: 38 7f 10  and   $10,#$7f
0919: e5 18 02  mov   a,$0218
091c: 10 1a     bpl   $0938
091e: 18 80 10  or    $10,#$80
0921: e5 14 02  mov   a,$0214
0924: c5 20 02  mov   $0220,a
0927: 28 1f     and   a,#$1f
0929: 38 e0 0f  and   $0f,#$e0
092c: 04 0f     or    a,$0f
092e: c4 0f     mov   $0f,a
0930: 8f 6c f2  mov   $f2,#$6c
0933: c5 f3 00  mov   $00f3,a
0936: 2f 1a     bra   $0952
0938: e5 14 02  mov   a,$0214
093b: c5 20 02  mov   $0220,a
093e: 8f 72 f2  mov   $f2,#$72
0941: c5 f3 00  mov   $00f3,a
0944: e5 15 02  mov   a,$0215
0947: c5 21 02  mov   $0221,a
094a: 28 3f     and   a,#$3f
094c: 8f 73 f2  mov   $f2,#$73
094f: c5 f3 00  mov   $00f3,a
0952: e4 10     mov   a,$10
0954: 8f 3d f2  mov   $f2,#$3d
0957: c5 f3 00  mov   $00f3,a
095a: e5 1c 02  mov   a,$021c
095d: 8f 75 f2  mov   $f2,#$75
0960: c5 f3 00  mov   $00f3,a
0963: e5 1d 02  mov   a,$021d
0966: 8f 76 f2  mov   $f2,#$76
0969: c5 f3 00  mov   $00f3,a
096c: e4 a4     mov   a,$a4
096e: 28 f0     and   a,#$f0
0970: 9f        xcn   a
0971: 1c        asl   a
0972: 1c        asl   a
0973: 1c        asl   a
0974: 8f 70 f2  mov   $f2,#$70
0977: c5 f3 00  mov   $00f3,a
097a: e4 a4     mov   a,$a4
097c: 28 0f     and   a,#$0f
097e: 1c        asl   a
097f: 1c        asl   a
0980: 1c        asl   a
0981: 8f 71 f2  mov   $f2,#$71
0984: c5 f3 00  mov   $00f3,a
0987: e8 80     mov   a,#$80
0989: 8f 4c f2  mov   $f2,#$4c
098c: c5 f3 00  mov   $00f3,a
098f: cd 00     mov   x,#$00
0991: 1d        dec   x
0992: d0 fd     bne   $0991
0994: 8b 9d     dec   $9d
0996: 5f d2 08  jmp   $08d2

0999: 3f 08 08  call  $0808
099c: 3f a2 09  call  $09a2
099f: 5f 72 0a  jmp   $0a72

09a2: e4 9c     mov   a,$9c
09a4: d0 01     bne   $09a7
09a6: 6f        ret

09a7: e5 00 02  mov   a,$0200
09aa: d0 13     bne   $09bf
09ac: e5 0c 02  mov   a,$020c
09af: d0 0e     bne   $09bf
09b1: e8 40     mov   a,#$40
09b3: 8f 5c f2  mov   $f2,#$5c
09b6: c5 f3 00  mov   $00f3,a
09b9: 8f 00 9c  mov   $9c,#$00
09bc: 5f d2 08  jmp   $08d2
09bf: 8c 00 02  dec   $0200
09c2: e5 10 02  mov   a,$0210
09c5: d0 38     bne   $09ff
09c7: e5 0c 02  mov   a,$020c
09ca: d0 06     bne   $09d2
09cc: e5 09 02  mov   a,$0209
09cf: d0 01     bne   $09d2
09d1: 6f        ret

09d2: 8c 09 02  dec   $0209
09d5: e5 01 02  mov   a,$0201
09d8: c5 10 02  mov   $0210,a
09db: e5 02 02  mov   a,$0202
09de: ec 03 02  mov   y,$0203
09e1: e9 07 02  mov   x,$0207
09e4: f0 04     beq   $09ea
09e6: e4 9e     mov   a,$9e
09e8: eb 9f     mov   y,$9f
09ea: c5 0e 02  mov   $020e,a
09ed: 8f 62 f2  mov   $f2,#$62
09f0: c5 f3 00  mov   $00f3,a
09f3: dd        mov   a,y
09f4: c5 0f 02  mov   $020f,a
09f7: 28 3f     and   a,#$3f
09f9: 8f 63 f2  mov   $f2,#$63
09fc: c5 f3 00  mov   $00f3,a
09ff: 8c 10 02  dec   $0210
0a02: e5 0d 02  mov   a,$020d
0a05: f0 08     beq   $0a0f
0a07: 8c 11 02  dec   $0211
0a0a: d0 4e     bne   $0a5a
0a0c: c5 11 02  mov   $0211,a
0a0f: e5 08 02  mov   a,$0208
0a12: f0 46     beq   $0a5a
0a14: 10 23     bpl   $0a39
0a16: e5 0e 02  mov   a,$020e
0a19: 80        setc
0a1a: a5 04 02  sbc   a,$0204
0a1d: c5 0e 02  mov   $020e,a
0a20: 8f 62 f2  mov   $f2,#$62
0a23: c5 f3 00  mov   $00f3,a
0a26: e5 0f 02  mov   a,$020f
0a29: a5 05 02  sbc   a,$0205
0a2c: c5 0f 02  mov   $020f,a
0a2f: 28 3f     and   a,#$3f
0a31: 8f 63 f2  mov   $f2,#$63
0a34: c5 f3 00  mov   $00f3,a
0a37: 2f 21     bra   $0a5a
0a39: e5 0e 02  mov   a,$020e
0a3c: 60        clrc
0a3d: 85 04 02  adc   a,$0204
0a40: c5 0e 02  mov   $020e,a
0a43: 8f 62 f2  mov   $f2,#$62
0a46: c5 f3 00  mov   $00f3,a
0a49: e5 0f 02  mov   a,$020f
0a4c: 85 05 02  adc   a,$0205
0a4f: c5 0f 02  mov   $020f,a
0a52: 28 3f     and   a,#$3f
0a54: 8f 63 f2  mov   $f2,#$63
0a57: c5 f3 00  mov   $00f3,a
0a5a: e5 06 02  mov   a,$0206
0a5d: 10 12     bpl   $0a71
0a5f: e5 0e 02  mov   a,$020e
0a62: 28 1f     and   a,#$1f
0a64: 38 e0 0f  and   $0f,#$e0
0a67: 04 0f     or    a,$0f
0a69: c4 0f     mov   $0f,a
0a6b: 8f 6c f2  mov   $f2,#$6c
0a6e: c5 f3 00  mov   $00f3,a
0a71: 6f        ret

0a72: e4 9d     mov   a,$9d
0a74: d0 01     bne   $0a77
0a76: 6f        ret

0a77: e5 12 02  mov   a,$0212
0a7a: d0 13     bne   $0a8f
0a7c: e5 1e 02  mov   a,$021e
0a7f: d0 0e     bne   $0a8f
0a81: e8 80     mov   a,#$80
0a83: 8f 5c f2  mov   $f2,#$5c
0a86: c5 f3 00  mov   $00f3,a
0a89: 8f 00 9d  mov   $9d,#$00
0a8c: 5f d2 08  jmp   $08d2
0a8f: 8c 12 02  dec   $0212
0a92: e5 22 02  mov   a,$0222
0a95: d0 38     bne   $0acf
0a97: e5 1e 02  mov   a,$021e
0a9a: d0 06     bne   $0aa2
0a9c: e5 1b 02  mov   a,$021b
0a9f: d0 01     bne   $0aa2
0aa1: 6f        ret

0aa2: 8c 1b 02  dec   $021b
0aa5: e5 13 02  mov   a,$0213
0aa8: c5 22 02  mov   $0222,a
0aab: e5 14 02  mov   a,$0214
0aae: ec 15 02  mov   y,$0215
0ab1: e9 19 02  mov   x,$0219
0ab4: f0 04     beq   $0aba
0ab6: e4 9e     mov   a,$9e
0ab8: eb 9f     mov   y,$9f
0aba: c5 20 02  mov   $0220,a
0abd: 8f 72 f2  mov   $f2,#$72
0ac0: c5 f3 00  mov   $00f3,a
0ac3: dd        mov   a,y
0ac4: c5 21 02  mov   $0221,a
0ac7: 28 3f     and   a,#$3f
0ac9: 8f 73 f2  mov   $f2,#$73
0acc: c5 f3 00  mov   $00f3,a
0acf: 8c 22 02  dec   $0222
0ad2: e5 1f 02  mov   a,$021f
0ad5: f0 08     beq   $0adf
0ad7: 8c 23 02  dec   $0223
0ada: d0 4e     bne   $0b2a
0adc: c5 23 02  mov   $0223,a
0adf: e5 1a 02  mov   a,$021a
0ae2: f0 46     beq   $0b2a
0ae4: 10 23     bpl   $0b09
0ae6: e5 20 02  mov   a,$0220
0ae9: 80        setc
0aea: a5 16 02  sbc   a,$0216
0aed: c5 20 02  mov   $0220,a
0af0: 8f 72 f2  mov   $f2,#$72
0af3: c5 f3 00  mov   $00f3,a
0af6: e5 21 02  mov   a,$0221
0af9: a5 17 02  sbc   a,$0217
0afc: c5 21 02  mov   $0221,a
0aff: 28 3f     and   a,#$3f
0b01: 8f 73 f2  mov   $f2,#$73
0b04: c5 f3 00  mov   $00f3,a
0b07: 2f 21     bra   $0b2a
0b09: e5 20 02  mov   a,$0220
0b0c: 60        clrc
0b0d: 85 16 02  adc   a,$0216
0b10: c5 20 02  mov   $0220,a
0b13: 8f 72 f2  mov   $f2,#$72
0b16: c5 f3 00  mov   $00f3,a
0b19: e5 21 02  mov   a,$0221
0b1c: 85 17 02  adc   a,$0217
0b1f: c5 21 02  mov   $0221,a
0b22: 28 3f     and   a,#$3f
0b24: 8f 73 f2  mov   $f2,#$73
0b27: c5 f3 00  mov   $00f3,a
0b2a: e5 18 02  mov   a,$0218
0b2d: 10 12     bpl   $0b41
0b2f: e5 20 02  mov   a,$0220
0b32: 28 1f     and   a,#$1f
0b34: 38 e0 0f  and   $0f,#$e0
0b37: 04 0f     or    a,$0f
0b39: c4 0f     mov   $0f,a
0b3b: 8f 6c f2  mov   $f2,#$6c
0b3e: c5 f3 00  mov   $00f3,a
0b41: 6f        ret
