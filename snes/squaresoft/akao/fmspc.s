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
020f: 1a c7     decw  $c7
0211: e8 00     mov   a,#$00
0213: 8d 2c     mov   y,#$2c
0215: 3f 05 07  call  $0705
0218: 8d 3c     mov   y,#$3c
021a: 3f 05 07  call  $0705
021d: cd 40     mov   x,#$40
021f: d5 bc f1  mov   $f1bc+x,a
0222: 1d        dec   x
0223: 1d        dec   x
0224: 1d        dec   x
0225: 1d        dec   x
0226: d0 f7     bne   $021f
0228: e8 1e     mov   a,#$1e
022a: 8d 5d     mov   y,#$5d
022c: 3f 05 07  call  $0705
022f: 8d 07     mov   y,#$07
0231: cd a0     mov   x,#$a0
0233: cb f2     mov   $f2,y
0235: d8 f3     mov   $f3,x
0237: dd        mov   a,y
0238: 60        clrc
0239: 88 10     adc   a,#$10
023b: fd        mov   y,a
023c: 10 f5     bpl   $0233
023e: 8f 30 f1  mov   $f1,#$30
0241: 8f 2a fa  mov   $fa,#$2a
0244: 8f 80 fb  mov   $fb,#$80
0247: 8f 05 fc  mov   $fc,#$05
024a: 8f 07 f1  mov   $f1,#$07
024d: 8f 05 8f  mov   $8f,#$05
0250: 3f 20 13  call  $1320
0253: 8b 23     dec   $23
0255: 8f 07 c9  mov   $c9,#$07
0258: cd 20     mov   x,#$20
025a: e8 ff     mov   a,#$ff
025c: d5 5f f1  mov   $f15f+x,a
025f: d5 20 f2  mov   $f220+x,a
0262: e8 00     mov   a,#$00
0264: d5 9e f1  mov   $f19e+x,a
0267: 1d        dec   x
0268: 1d        dec   x
0269: d0 ef     bne   $025a
026b: e8 58     mov   a,#$58
026d: c5 40 1e  mov   $1e40,a
0270: e8 1d     mov   a,#$1d
0272: c5 41 1e  mov   $1e41,a
0275: e8 61     mov   a,#$61
0277: c5 42 1e  mov   $1e42,a
027a: e8 1d     mov   a,#$1d
027c: c5 43 1e  mov   $1e43,a
027f: e8 ff     mov   a,#$ff
0281: c5 a0 1f  mov   $1fa0,a
0284: e8 e0     mov   a,#$e0
0286: c5 a1 1f  mov   $1fa1,a
0289: e8 e1     mov   a,#$e1
028b: c5 20 1f  mov   $1f20,a
028e: e8 00     mov   a,#$00
0290: c5 21 1f  mov   $1f21,a
0293: e8 3f     mov   a,#$3f
0295: 8d 0c     mov   y,#$0c
0297: 3f 05 07  call  $0705
029a: 8d 1c     mov   y,#$1c
029c: 3f 05 07  call  $0705
029f: 8f 02 e4  mov   $e4,#$02
02a2: 3f 0b 0b  call  $0b0b
02a5: eb fd     mov   y,$fd
02a7: f0 f9     beq   $02a2
02a9: 8d 11     mov   y,#$11
02ab: f6 97 16  mov   a,$1697+y
02ae: c4 f2     mov   $f2,a
02b0: f6 a8 16  mov   a,$16a8+y
02b3: 5d        mov   x,a
02b4: e6        mov   a,(x)
02b5: c4 f3     mov   $f3,a
02b7: fe f2     dbnz  y,$02ab
02b9: cb 23     mov   $23,y
02bb: cb 22     mov   $22,y
02bd: e3 89 16  bbs7  $89,$02d5
02c0: e4 53     mov   a,$53
02c2: 9f        xcn   a
02c3: 04 53     or    a,$53
02c5: 28 0f     and   a,#$0f
02c7: 04 86     or    a,$86
02c9: fd        mov   y,a
02ca: e4 df     mov   a,$df
02cc: da f6     movw  $f6,ya
02ce: eb 7b     mov   y,$7b
02d0: e8 00     mov   a,#$00
02d2: da f4     movw  $f4,ya
02d4: 2f 03     bra   $02d9
02d6: 3f 2f 14  call  $142f
02d9: 83 88 c6  bbs4  $88,$02a1
02dc: 8b c9     dec   $c9
02de: d0 06     bne   $02e6
02e0: 8f 07 c9  mov   $c9,#$07
02e3: 3f 89 14  call  $1489
02e6: 3f 2f 04  call  $042f
02e9: 3f 4d 03  call  $034d
02ec: 3f 2f 08  call  $082f
02ef: 83 88 b0  bbs4  $88,$02a1
02f2: cd 00     mov   x,#$00
02f4: 8f 01 92  mov   $92,#$01
02f7: e4 86     mov   a,$86
02f9: 04 87     or    a,$87
02fb: 48 ff     eor   a,#$ff
02fd: 24 53     and   a,$53
02ff: 24 24     and   a,$24
0301: c4 a4     mov   $a4,a
0303: 2f 15     bra   $031a
0305: d8 a7     mov   $a7,x
0307: e4 86     mov   a,$86
0309: d0 05     bne   $0310
030b: 3f 65 08  call  $0865
030e: 2f 03     bra   $0313
0310: 3f 58 09  call  $0958
0313: 3f f4 07  call  $07f4
0316: 3d        inc   x
0317: 3d        inc   x
0318: 0b 92     asl   $92
031a: 4b a4     lsr   $a4
031c: b0 e7     bcs   $0305
031e: d0 f6     bne   $0316
0320: cd 1e     mov   x,#$1e
0322: 8f 80 92  mov   $92,#$80
0325: e4 86     mov   a,$86
0327: 24 25     and   a,$25
0329: c4 a4     mov   $a4,a
032b: 2f 0c     bra   $0339
032d: d8 a7     mov   $a7,x
032f: 3f 65 08  call  $0865
0332: 3f f4 07  call  $07f4
0335: 1d        dec   x
0336: 1d        dec   x
0337: 4b 92     lsr   $92
0339: 0b a4     asl   $a4
033b: b0 f0     bcs   $032d
033d: d0 f6     bne   $0335
033f: e8 00     mov   a,#$00
0341: fd        mov   y,a
0342: da dc     movw  $dc,ya
0344: 3f 2f 08  call  $082f
0347: 3f d1 0a  call  $0ad1
034a: 5f a2 02  jmp   $02a2

034d: a3 89 1f  bbs5  $89,$036e
0350: e4 47     mov   a,$47
0352: eb b6     mov   y,$b6
0354: f0 12     beq   $0368
0356: cf        mul   ya
0357: dd        mov   a,y
0358: e3 b6 0a  bbs7  $b6,$0364
035b: 1c        asl   a
035c: 60        clrc
035d: 84 47     adc   a,$47
035f: 90 07     bcc   $0368
0361: e8 ff     mov   a,#$ff
0363: 2f 03     bra   $0368
0365: d0 01     bne   $0368
0367: bc        inc   a
0368: 60        clrc
0369: 84 48     adc   a,$48
036b: c4 48     mov   $48,a
036d: 90 67     bcc   $03d6
036f: cd 00     mov   x,#$00
0371: 8f 01 92  mov   $92,#$01
0374: fa 53 a4  mov   ($a4),($53)
0377: 2f 46     bra   $03bf
0379: d8 a7     mov   $a7,x
037b: 9b 26     dec   $26+x
037d: d0 0a     bne   $0389
037f: 72 89     clr3  $89
0381: 3f 45 04  call  $0445
0384: 73 89 2e  bbc3  $89,$03b4
0387: 2f 32     bra   $03bb
0389: 8d 00     mov   y,#$00
038b: c8 10     cmp   x,#$10
038d: b0 01     bcs   $0390
038f: e8 fc     mov   a,#$fc
0391: e8 02     mov   a,#$02
0393: de 26 1f  cbne  $26+x,$03b4
0396: f6 5a 00  mov   a,$005a+y
0399: 24 92     and   a,$92
039b: d0 18     bne   $03b5
039d: e4 92     mov   a,$92
039f: 48 ff     eor   a,#$ff
03a1: 36 24 00  and   a,$0024+y
03a4: d6 24 00  mov   $0024+y,a
03a7: dd        mov   a,y
03a8: d0 08     bne   $03b2
03aa: e4 86     mov   a,$86
03ac: 04 87     or    a,$87
03ae: 24 92     and   a,$92
03b0: d0 03     bne   $03b5
03b2: 09 92 23  or    ($23),($92)
03b5: 3f 11 07  call  $0711
03b8: 3f f4 07  call  $07f4
03bb: 3d        inc   x
03bc: 3d        inc   x
03bd: 0b 92     asl   $92
03bf: 4b a4     lsr   $a4
03c1: b0 b6     bcs   $0379
03c3: d0 f6     bne   $03bb
03c5: c8 18     cmp   x,#$18
03c7: b0 25     bcs   $03ee
03c9: 3f ef 03  call  $03ef
03cc: e4 86     mov   a,$86
03ce: 04 87     or    a,$87
03d0: 4e dc 00  tclr1 $00dc
03d3: 4e dd 00  tclr1 $00dd
03d6: a3 89 09  bbs5  $89,$03e1
03d9: e8 81     mov   a,#$81
03db: 60        clrc
03dc: 84 49     adc   a,$49
03de: c4 49     mov   $49,a
03e0: 90 0c     bcc   $03ee
03e2: cd 18     mov   x,#$18
03e4: 8f 10 92  mov   $92,#$10
03e7: e4 86     mov   a,$86
03e9: 9f        xcn   a
03ea: c4 a4     mov   $a4,a
03ec: 2f d1     bra   $03bf
03ee: 6f        ret

03ef: e4 4a     mov   a,$4a
03f1: f0 08     beq   $03fb
03f3: 8b 4a     dec   $4a
03f5: ba 4b     movw  ya,$4b
03f7: 7a 46     addw  ya,$46
03f9: da 46     movw  $46,ya
03fb: e4 52     mov   a,$52
03fd: f0 08     beq   $0407
03ff: 8b 52     dec   $52
0401: ba 50     movw  ya,$50
0403: 7a 4e     addw  ya,$4e
0405: da 4e     movw  $4e,ya
0407: e4 78     mov   a,$78
0409: f0 08     beq   $0413
040b: 8b 78     dec   $78
040d: ba 79     movw  ya,$79
040f: 7a 75     addw  ya,$75
0411: da 75     movw  $75,ya
0413: e4 77     mov   a,$77
0415: f0 17     beq   $042e
0417: 8b 77     dec   $77
0419: cd 10     mov   x,#$10
041b: f4 63     mov   a,$63+x
041d: 60        clrc
041e: 95 fe 00  adc   a,$00fe+x
0421: d4 63     mov   $63+x,a
0423: f4 64     mov   a,$64+x
0425: 95 ff 00  adc   a,$00ff+x
0428: d4 64     mov   $64+x,a
042a: 1d        dec   x
042b: 1d        dec   x
042c: d0 ed     bne   $041b
042e: 6f        ret

042f: e4 87     mov   a,$87
0431: f0 11     beq   $0444
0433: 5d        mov   x,a
0434: 8d 7c     mov   y,#$7c
0436: cb f2     mov   $f2,y
0438: 24 f3     and   a,$f3
043a: 4e 87 00  tclr1 $0087
043d: 3e 87     cmp   x,$87
043f: f0 03     beq   $0444
0441: 5f ad 19  jmp   $19ad

0444: 6f        ret

0445: 3f b5 06  call  $06b5
0448: 68 c4     cmp   a,#$c4
044a: 90 05     bcc   $0451
044c: 3f a0 06  call  $06a0
044f: 2f f4     bra   $0445
0451: fb 26     mov   y,$26+x
0453: d0 0a     bne   $045f
0455: cd 0e     mov   x,#$0e
0457: 9e        div   ya,x
0458: f8 a7     mov   x,$a7
045a: f6 48 1d  mov   a,$1d48+y
045d: d4 26     mov   $26+x,a
045f: c8 10     cmp   x,#$10
0461: b0 06     bcs   $0469
0463: e4 92     mov   a,$92
0465: 24 86     and   a,$86
0467: d0 0a     bne   $0473
0469: e4 a6     mov   a,$a6
046b: 68 a8     cmp   a,#$a8
046d: 90 08     bcc   $0477
046f: 68 b6     cmp   a,#$b6
0471: 90 01     bcc   $0474
0473: 6f        ret

0474: 5f 5c 05  jmp   $055c

0477: 8d 00     mov   y,#$00
0479: cd 0e     mov   x,#$0e
047b: 9e        div   ya,x
047c: c4 a6     mov   $a6,a
047e: f8 a7     mov   x,$a7
0480: c8 10     cmp   x,#$10
0482: b0 0b     bcs   $048f
0484: e4 92     mov   a,$92
0486: 24 7c     and   a,$7c
0488: f0 05     beq   $048f
048a: 3f 83 06  call  $0683
048d: 2f 06     bra   $0495
048f: f5 00 f2  mov   a,$f200+x
0492: 60        clrc
0493: 84 a6     adc   a,$a6
0495: 60        clrc
0496: 95 61 f3  adc   a,$f361+x
0499: 80        setc
049a: a8 0a     sbc   a,#$0a
049c: d5 a1 f3  mov   $f3a1+x,a
049f: c4 a6     mov   $a6,a
04a1: f5 80 f3  mov   a,$f380+x
04a4: 60        clrc
04a5: 95 a0 f3  adc   a,$f3a0+x
04a8: c4 9c     mov   $9c,a
04aa: f5 81 f3  mov   a,$f381+x
04ad: c4 9d     mov   $9d,a
04af: e4 a6     mov   a,$a6
04b1: 3f 2b 06  call  $062b
04b4: f8 a7     mov   x,$a7
04b6: e4 c1     mov   a,$c1
04b8: d5 20 f5  mov   $f520+x,a
04bb: e4 c2     mov   a,$c2
04bd: d5 21 f5  mov   $f521+x,a
04c0: f5 51 01  mov   a,$0151+x
04c3: f0 33     beq   $04f8
04c5: c4 a6     mov   $a6,a
04c7: 3f 2a 18  call  $182a
04ca: c8 10     cmp   x,#$10
04cc: b0 04     bcs   $04d2
04ce: 8d 00     mov   y,#$00
04d0: 2f 04     bra   $04d6
04d2: f5 10 01  mov   a,$0110+x
04d5: fd        mov   y,a
04d6: f6 1c 1d  mov   a,$1d1c+y
04d9: fd        mov   y,a
04da: d0 04     bne   $04e0
04dc: ba c1     movw  ya,$c1
04de: 2f 11     bra   $04f1
04e0: cb 9e     mov   $9e,y
04e2: e4 c2     mov   a,$c2
04e4: cf        mul   ya
04e5: da 9c     movw  $9c,ya
04e7: e4 c1     mov   a,$c1
04e9: eb 9e     mov   y,$9e
04eb: cf        mul   ya
04ec: dd        mov   a,y
04ed: 8d 00     mov   y,#$00
04ef: 7a 9c     addw  ya,$9c
04f1: d5 00 f3  mov   $f300+x,a
04f4: dd        mov   a,y
04f5: d5 01 f3  mov   $f301+x,a
04f8: f5 70 01  mov   a,$0170+x
04fb: f0 07     beq   $0504
04fd: c4 a6     mov   $a6,a
04ff: 3f e6 18  call  $18e6
0502: e8 00     mov   a,#$00
0504: d5 00 f5  mov   $f500+x,a
0507: d5 01 f5  mov   $f501+x,a
050a: d5 a0 f4  mov   $f4a0+x,a
050d: d5 a1 f4  mov   $f4a1+x,a
0510: d5 c0 f3  mov   $f3c0+x,a
0513: d5 c1 f3  mov   $f3c1+x,a
0516: c8 10     cmp   x,#$10
0518: b0 20     bcs   $053a
051a: 09 92 24  or    ($24),($92)
051d: e4 86     mov   a,$86
051f: 04 87     or    a,$87
0521: 24 92     and   a,$92
0523: d0 37     bne   $055c
0525: e4 92     mov   a,$92
0527: 24 60     and   a,$60
0529: d0 25     bne   $0550
052b: e4 92     mov   a,$92
052d: 24 5c     and   a,$5c
052f: f0 1f     beq   $0550
0531: 24 5e     and   a,$5e
0533: d0 1e     bne   $0553
0535: 09 92 5e  or    ($5e),($92)
0538: 2f 16     bra   $0550
053a: 09 92 25  or    ($25),($92)
053d: e4 92     mov   a,$92
053f: 24 61     and   a,$61
0541: d0 0d     bne   $0550
0543: e4 92     mov   a,$92
0545: 24 5d     and   a,$5d
0547: f0 07     beq   $0550
0549: 24 5f     and   a,$5f
054b: d0 06     bne   $0553
054d: 09 92 5f  or    ($5f),($92)
0550: 09 92 22  or    ($22),($92)
0553: 09 92 dc  or    ($dc),($92)
0556: 09 92 dd  or    ($dd),($92)
0559: 3f 84 1a  call  $1a84
055c: 3f c0 06  call  $06c0
055f: fd        mov   y,a
0560: e4 92     mov   a,$92
0562: c8 10     cmp   x,#$10
0564: b0 21     bcs   $0587
0566: ad b6     cmp   y,#$b6
0568: b0 09     bcs   $0573
056a: ad a8     cmp   y,#$a8
056c: 90 0b     bcc   $0579
056e: 0e 5a 00  tset1 $005a
0571: 2f 33     bra   $05a6
0573: 4e 5c 00  tclr1 $005c
0576: 4e 60 00  tclr1 $0060
0579: 4e 5a 00  tclr1 $005a
057c: e4 5c     mov   a,$5c
057e: 04 60     or    a,$60
0580: 24 92     and   a,$92
0582: 0e 5a 00  tset1 $005a
0585: 2f 1f     bra   $05a6
0587: ad b6     cmp   y,#$b6
0589: b0 09     bcs   $0594
058b: ad a8     cmp   y,#$a8
058d: 90 0b     bcc   $059a
058f: 0e 5b 00  tset1 $005b
0592: 2f 12     bra   $05a6
0594: 4e 5d 00  tclr1 $005d
0597: 4e 61 00  tclr1 $0061
059a: 4e 5b 00  tclr1 $005b
059d: e4 5d     mov   a,$5d
059f: 04 61     or    a,$61
05a1: 24 92     and   a,$92
05a3: 0e 5b 00  tset1 $005b
05a6: f5 50 01  mov   a,$0150+x
05a9: f0 7f     beq   $062a
05ab: f5 80 f3  mov   a,$f380+x
05ae: 60        clrc
05af: 95 a0 f3  adc   a,$f3a0+x
05b2: c4 9c     mov   $9c,a
05b4: f5 81 f3  mov   a,$f381+x
05b7: c4 9d     mov   $9d,a
05b9: f5 50 01  mov   a,$0150+x
05bc: 60        clrc
05bd: 95 a1 f3  adc   a,$f3a1+x
05c0: d5 a1 f3  mov   $f3a1+x,a
05c3: 3f 2b 06  call  $062b
05c6: f8 a7     mov   x,$a7
05c8: f5 21 f5  mov   a,$f521+x
05cb: fd        mov   y,a
05cc: f5 20 f5  mov   a,$f520+x
05cf: da 9c     movw  $9c,ya
05d1: ba c1     movw  ya,$c1
05d3: 80        setc
05d4: 9a 9c     subw  ya,$9c
05d6: da 9c     movw  $9c,ya
05d8: 0d        push  psw
05d9: b0 08     bcs   $05e3
05db: 58 ff 9c  eor   $9c,#$ff
05de: 58 ff 9d  eor   $9d,#$ff
05e1: 3a 9c     incw  $9c
05e3: f5 60 f3  mov   a,$f360+x
05e6: d0 05     bne   $05ed
05e8: 8f 00 9e  mov   $9e,#$00
05eb: 2f 12     bra   $05ff
05ed: 5d        mov   x,a
05ee: e4 9d     mov   a,$9d
05f0: 8d 00     mov   y,#$00
05f2: 9e        div   ya,x
05f3: c4 9e     mov   $9e,a
05f5: e4 9c     mov   a,$9c
05f7: 9e        div   ya,x
05f8: c4 9d     mov   $9d,a
05fa: e8 00     mov   a,#$00
05fc: 9e        div   ya,x
05fd: c4 9c     mov   $9c,a
05ff: 8e        pop   psw
0600: b0 0f     bcs   $0611
0602: 58 ff 9c  eor   $9c,#$ff
0605: 58 ff 9d  eor   $9d,#$ff
0608: 58 ff 9e  eor   $9e,#$ff
060b: 3a 9c     incw  $9c
060d: d0 02     bne   $0611
060f: ab 9e     inc   $9e
0611: f8 a7     mov   x,$a7
0613: e4 9c     mov   a,$9c
0615: d5 e0 f4  mov   $f4e0+x,a
0618: e4 9d     mov   a,$9d
061a: d5 c0 f3  mov   $f3c0+x,a
061d: e4 9e     mov   a,$9e
061f: d5 c1 f3  mov   $f3c1+x,a
0622: e8 00     mov   a,#$00
0624: d5 50 01  mov   $0150+x,a
0627: d5 e1 f4  mov   $f4e1+x,a
062a: 6f        ret

062b: cd 0c     mov   x,#$0c
062d: 8d 00     mov   y,#$00
062f: 9e        div   ya,x
0630: c4 a5     mov   $a5,a
0632: dd        mov   a,y
0633: 1c        asl   a
0634: fd        mov   y,a
0635: f6 02 1d  mov   a,$1d02+y
0638: c4 c3     mov   $c3,a
063a: f6 03 1d  mov   a,$1d03+y
063d: c4 c4     mov   $c4,a
063f: eb 9c     mov   y,$9c
0641: cf        mul   ya
0642: da c1     movw  $c1,ya
0644: eb c3     mov   y,$c3
0646: e4 9c     mov   a,$9c
0648: cf        mul   ya
0649: dd        mov   a,y
064a: 8d 00     mov   y,#$00
064c: 7a c1     addw  ya,$c1
064e: da c1     movw  $c1,ya
0650: e4 9d     mov   a,$9d
0652: f0 08     beq   $065c
0654: cf        mul   ya
0655: dd        mov   a,y
0656: 8d 00     mov   y,#$00
0658: 7a c1     addw  ya,$c1
065a: 2f 02     bra   $065e
065c: e4 c1     mov   a,$c1
065e: e3 9c 02  bbs7  $9c,$0662
0661: 7a c3     addw  ya,$c3
0663: da c1     movw  $c1,ya
0665: e8 04     mov   a,#$04
0667: eb a5     mov   y,$a5
0669: 30 0f     bmi   $067a
066b: f0 0d     beq   $067a
066d: 64 a5     cmp   a,$a5
066f: b0 0e     bcs   $067f
0671: 0b c1     asl   $c1
0673: 2b c2     rol   $c2
0675: bc        inc   a
0676: 2e a5 f8  cbne  $a5,$0670
0679: 6f        ret

067a: 4b c2     lsr   $c2
067c: 6b c1     ror   $c1
067e: 9c        dec   a
067f: 2e a5 f8  cbne  $a5,$0679
0682: 6f        ret

0683: e4 a6     mov   a,$a6
0685: 8d 03     mov   y,#$03
0687: cf        mul   ya
0688: fd        mov   y,a
0689: f6 22 f1  mov   a,$f122+y
068c: 30 04     bmi   $0692
068e: 1c        asl   a
068f: d5 81 f2  mov   $f281+x,a
0692: f6 21 f1  mov   a,$f121+y
0695: c4 a6     mov   $a6,a
0697: f6 20 f1  mov   a,$f120+y
069a: 3f 66 1a  call  $1a66
069d: e4 a6     mov   a,$a6
069f: 6f        ret

06a0: a8 c4     sbc   a,#$c4
06a2: 1c        asl   a
06a3: fd        mov   y,a
06a4: f6 ed 14  mov   a,$14ed+y
06a7: 2d        push  a
06a8: f6 ec 14  mov   a,$14ec+y
06ab: 2d        push  a
06ac: dd        mov   a,y
06ad: 5c        lsr   a
06ae: fd        mov   y,a
06af: f6 64 15  mov   a,$1564+y
06b2: d0 01     bne   $06b5
06b4: 6f        ret

06b5: e7 02     mov   a,($02+x)
06b7: c4 a6     mov   $a6,a
06b9: bb 02     inc   $02+x
06bb: d0 02     bne   $06bf
06bd: bb 03     inc   $03+x
06bf: 6f        ret

06c0: f4 02     mov   a,$02+x
06c2: fb 03     mov   y,$03+x
06c4: da 94     movw  $94,ya
06c6: f4 27     mov   a,$27+x
06c8: c4 c6     mov   $c6,a
06ca: 8d 00     mov   y,#$00
06cc: f7 94     mov   a,($94)+y
06ce: 68 c4     cmp   a,#$c4
06d0: 90 32     bcc   $0704
06d2: 3a 94     incw  $94
06d4: 68 eb     cmp   a,#$eb
06d6: f0 2c     beq   $0704
06d8: 80        setc
06d9: a8 c4     sbc   a,#$c4
06db: c4 93     mov   $93,a
06dd: 1c        asl   a
06de: fd        mov   y,a
06df: f6 a1 15  mov   a,$15a1+y
06e2: f0 12     beq   $06f6
06e4: c4 9c     mov   $9c,a
06e6: e8 06     mov   a,#$06
06e8: 2d        push  a
06e9: e8 ca     mov   a,#$ca
06eb: 2d        push  a
06ec: e4 9c     mov   a,$9c
06ee: 2d        push  a
06ef: f6 a0 15  mov   a,$15a0+y
06f2: 2d        push  a
06f3: 8d 00     mov   y,#$00
06f5: 6f        ret

06f6: eb 93     mov   y,$93
06f8: f6 64 15  mov   a,$1564+y
06fb: f0 cd     beq   $06ca
06fd: fd        mov   y,a
06fe: 3a 94     incw  $94
0700: fe fc     dbnz  y,$06fe
0702: 2f c8     bra   $06cc
0704: 6f        ret

0705: cb f2     mov   $f2,y
0707: c4 f3     mov   $f3,a
0709: 6f        ret

070a: 8f 17 f1  mov   $f1,#$17
070d: 8f 07 f1  mov   $f1,#$07
0710: 6f        ret

0711: 40        setp
0712: f4 11     mov   a,$11+x
0714: f0 02     beq   $0718
0716: 9b 11     dec   $11+x
0718: f4 31     mov   a,$31+x
071a: f0 02     beq   $071e
071c: 9b 31     dec   $31+x
071e: 20        clrp
071f: f5 c0 f2  mov   a,$f2c0+x
0722: f0 1f     beq   $0743
0724: 9c        dec   a
0725: d5 c0 f2  mov   $f2c0+x,a
0728: f5 40 f2  mov   a,$f240+x
072b: 60        clrc
072c: 95 60 f2  adc   a,$f260+x
072f: d5 40 f2  mov   $f240+x,a
0732: f5 41 f2  mov   a,$f241+x
0735: 95 61 f2  adc   a,$f261+x
0738: 75 41 f2  cmp   a,$f241+x
073b: d5 41 f2  mov   $f241+x,a
073e: f0 03     beq   $0743
0740: 09 92 dc  or    ($dc),($92)
0743: f5 c1 f2  mov   a,$f2c1+x
0746: f0 1f     beq   $0767
0748: 9c        dec   a
0749: d5 c1 f2  mov   $f2c1+x,a
074c: f5 80 f2  mov   a,$f280+x
074f: 60        clrc
0750: 95 a0 f2  adc   a,$f2a0+x
0753: d5 80 f2  mov   $f280+x,a
0756: f5 81 f2  mov   a,$f281+x
0759: 95 a1 f2  adc   a,$f2a1+x
075c: 75 81 f2  cmp   a,$f281+x
075f: d5 81 f2  mov   $f281+x,a
0762: f0 03     beq   $0767
0764: 09 92 dc  or    ($dc),($92)
0767: f5 e0 f4  mov   a,$f4e0+x
076a: c4 9c     mov   $9c,a
076c: f5 c0 f3  mov   a,$f3c0+x
076f: c4 9d     mov   $9d,a
0771: f5 c1 f3  mov   a,$f3c1+x
0774: c4 9e     mov   $9e,a
0776: ba 9c     movw  ya,$9c
0778: d0 04     bne   $077e
077a: e4 9e     mov   a,$9e
077c: f0 2e     beq   $07ac
077e: f5 60 f3  mov   a,$f360+x
0781: 9c        dec   a
0782: d0 09     bne   $078d
0784: d5 c0 f3  mov   $f3c0+x,a
0787: d5 c1 f3  mov   $f3c1+x,a
078a: d5 e0 f4  mov   $f4e0+x,a
078d: d5 60 f3  mov   $f360+x,a
0790: 60        clrc
0791: f5 20 f5  mov   a,$f520+x
0794: fd        mov   y,a
0795: f5 e1 f4  mov   a,$f4e1+x
0798: 7a 9c     addw  ya,$9c
079a: d5 e1 f4  mov   $f4e1+x,a
079d: dd        mov   a,y
079e: d5 20 f5  mov   $f520+x,a
07a1: e4 9e     mov   a,$9e
07a3: 95 21 f5  adc   a,$f521+x
07a6: d5 21 f5  mov   $f521+x,a
07a9: 09 92 dd  or    ($dd),($92)
07ac: f5 71 01  mov   a,$0171+x
07af: f0 42     beq   $07f3
07b1: f5 e0 f3  mov   a,$f3e0+x
07b4: c4 9c     mov   $9c,a
07b6: f5 e1 f3  mov   a,$f3e1+x
07b9: c4 9d     mov   $9d,a
07bb: f5 c1 f4  mov   a,$f4c1+x
07be: fd        mov   y,a
07bf: c4 9e     mov   $9e,a
07c1: f5 c0 f4  mov   a,$f4c0+x
07c4: 7a 9c     addw  ya,$9c
07c6: d5 c0 f4  mov   $f4c0+x,a
07c9: dd        mov   a,y
07ca: 75 c1 f4  cmp   a,$f4c1+x
07cd: d5 c1 f4  mov   $f4c1+x,a
07d0: f0 03     beq   $07d5
07d2: 09 92 dc  or    ($dc),($92)
07d5: f5 41 f3  mov   a,$f341+x
07d8: 9c        dec   a
07d9: d0 15     bne   $07f0
07db: 58 ff 9c  eor   $9c,#$ff
07de: 58 ff 9d  eor   $9d,#$ff
07e1: 3a 9c     incw  $9c
07e3: e4 9c     mov   a,$9c
07e5: d5 e0 f3  mov   $f3e0+x,a
07e8: e4 9d     mov   a,$9d
07ea: d5 e1 f3  mov   $f3e1+x,a
07ed: f5 40 f3  mov   a,$f340+x
07f0: d5 41 f3  mov   $f341+x,a
07f3: 6f        ret

07f4: e4 f4     mov   a,$f4
07f6: f0 36     beq   $082e
07f8: 64 f4     cmp   a,$f4
07fa: d0 f8     bne   $07f4
07fc: 68 fe     cmp   a,#$fe
07fe: f0 2e     beq   $082e
0800: 68 10     cmp   a,#$10
0802: 90 04     bcc   $0808
0804: 68 18     cmp   a,#$18
0806: 90 26     bcc   $082e
0808: 4d        push  x
0809: f8 e3     mov   x,$e3
080b: d5 c0 f1  mov   $f1c0+x,a
080e: fd        mov   y,a
080f: e4 f5     mov   a,$f5
0811: d5 c1 f1  mov   $f1c1+x,a
0814: e4 f6     mov   a,$f6
0816: d5 c2 f1  mov   $f1c2+x,a
0819: e4 f7     mov   a,$f7
081b: d5 c3 f1  mov   $f1c3+x,a
081e: 7d        mov   a,x
081f: 60        clrc
0820: 88 04     adc   a,#$04
0822: 68 40     cmp   a,#$40
0824: b0 02     bcs   $0828
0826: c4 e3     mov   $e3,a
0828: ce        pop   x
0829: 3f 0a 07  call  $070a
082c: cb f4     mov   $f4,y
082e: 6f        ret

082f: cd 00     mov   x,#$00
0831: f5 c0 f1  mov   a,$f1c0+x
0834: f0 1e     beq   $0854
0836: c4 8e     mov   $8e,a
0838: f5 c1 f1  mov   a,$f1c1+x
083b: c4 8f     mov   $8f,a
083d: f5 c2 f1  mov   a,$f1c2+x
0840: c4 90     mov   $90,a
0842: f5 c3 f1  mov   a,$f1c3+x
0845: c4 91     mov   $91,a
0847: 4d        push  x
0848: 3f 21 0b  call  $0b21
084b: ae        pop   a
084c: 60        clrc
084d: 88 04     adc   a,#$04
084f: 5d        mov   x,a
0850: c8 40     cmp   x,#$40
0852: d0 dd     bne   $0831
0854: 7d        mov   a,x
0855: f0 0b     beq   $0862
0857: e8 00     mov   a,#$00
0859: d5 bc f1  mov   $f1bc+x,a
085c: 1d        dec   x
085d: 1d        dec   x
085e: 1d        dec   x
085f: 1d        dec   x
0860: d0 f7     bne   $0859
0862: c4 e3     mov   $e3,a
0864: 6f        ret

0865: f5 51 01  mov   a,$0151+x
0868: f0 0b     beq   $0875
086a: c4 a6     mov   $a6,a
086c: c8 10     cmp   x,#$10
086e: b0 08     bcs   $0878
0870: f5 11 01  mov   a,$0111+x
0873: f0 03     beq   $0878
0875: 5f f7 08  jmp   $08f7

0878: f5 21 f4  mov   a,$f421+x
087b: fd        mov   y,a
087c: f5 20 f4  mov   a,$f420+x
087f: da c1     movw  $c1,ya
0881: f5 81 f4  mov   a,$f481+x
0884: fd        mov   y,a
0885: f5 80 f4  mov   a,$f480+x
0888: 7a c1     addw  ya,$c1
088a: da c3     movw  $c3,ya
088c: d5 80 f4  mov   $f480+x,a
088f: dd        mov   a,y
0890: 75 81 f4  cmp   a,$f481+x
0893: f0 2e     beq   $08c3
0895: d5 81 f4  mov   $f481+x,a
0898: 0b c3     asl   $c3
089a: 2b c4     rol   $c4
089c: f5 01 f3  mov   a,$f301+x
089f: fd        mov   y,a
08a0: f5 00 f3  mov   a,$f300+x
08a3: da 9c     movw  $9c,ya
08a5: e4 c4     mov   a,$c4
08a7: cf        mul   ya
08a8: da 9e     movw  $9e,ya
08aa: eb 9c     mov   y,$9c
08ac: e4 c4     mov   a,$c4
08ae: cf        mul   ya
08af: dd        mov   a,y
08b0: 8d 00     mov   y,#$00
08b2: 7a 9e     addw  ya,$9e
08b4: f3 c4 02  bbc7  $c4,$08b8
08b7: 9a 9c     subw  ya,$9c
08b9: d5 00 f5  mov   $f500+x,a
08bc: dd        mov   a,y
08bd: d5 01 f5  mov   $f501+x,a
08c0: 09 92 dd  or    ($dd),($92)
08c3: f5 e1 f2  mov   a,$f2e1+x
08c6: 9c        dec   a
08c7: d0 2b     bne   $08f4
08c9: f5 01 f4  mov   a,$f401+x
08cc: fd        mov   y,a
08cd: f5 00 f4  mov   a,$f400+x
08d0: da 9c     movw  $9c,ya
08d2: e4 c2     mov   a,$c2
08d4: c4 c3     mov   $c3,a
08d6: f5 21 f2  mov   a,$f221+x
08d9: c4 9f     mov   $9f,a
08db: 38 70 9f  and   $9f,#$70
08de: 28 07     and   a,#$07
08e0: 3f 53 0a  call  $0a53
08e3: d5 20 f4  mov   $f420+x,a
08e6: dd        mov   a,y
08e7: d5 21 f4  mov   $f421+x,a
08ea: e4 9e     mov   a,$9e
08ec: 04 9f     or    a,$9f
08ee: d5 21 f2  mov   $f221+x,a
08f1: f5 e0 f2  mov   a,$f2e0+x
08f4: d5 e1 f2  mov   $f2e1+x,a
08f7: f5 70 01  mov   a,$0170+x
08fa: f0 5c     beq   $0958
08fc: c4 a6     mov   $a6,a
08fe: f5 31 01  mov   a,$0131+x
0901: d0 55     bne   $0958
0903: f5 61 f4  mov   a,$f461+x
0906: fd        mov   y,a
0907: f5 60 f4  mov   a,$f460+x
090a: da c1     movw  $c1,ya
090c: cb c3     mov   $c3,y
090e: f5 a1 f4  mov   a,$f4a1+x
0911: fd        mov   y,a
0912: f5 a0 f4  mov   a,$f4a0+x
0915: 7a c1     addw  ya,$c1
0917: d5 a0 f4  mov   $f4a0+x,a
091a: dd        mov   a,y
091b: 75 a1 f4  cmp   a,$f4a1+x
091e: f0 06     beq   $0926
0920: d5 a1 f4  mov   $f4a1+x,a
0923: 09 92 dc  or    ($dc),($92)
0926: f5 21 f3  mov   a,$f321+x
0929: 9c        dec   a
092a: d0 29     bne   $0955
092c: f5 41 f4  mov   a,$f441+x
092f: fd        mov   y,a
0930: f5 40 f4  mov   a,$f440+x
0933: da 9c     movw  $9c,ya
0935: f5 21 f2  mov   a,$f221+x
0938: c4 9f     mov   $9f,a
093a: 38 07 9f  and   $9f,#$07
093d: 9f        xcn   a
093e: 28 07     and   a,#$07
0940: 3f 53 0a  call  $0a53
0943: d5 60 f4  mov   $f460+x,a
0946: dd        mov   a,y
0947: d5 61 f4  mov   $f461+x,a
094a: e4 9e     mov   a,$9e
094c: 9f        xcn   a
094d: 04 9f     or    a,$9f
094f: d5 21 f2  mov   $f221+x,a
0952: f5 20 f3  mov   a,$f320+x
0955: d5 21 f3  mov   $f321+x,a
0958: ba dc     movw  ya,$dc
095a: d0 01     bne   $095d
095c: 6f        ret

095d: 7d        mov   a,x
095e: 28 0f     and   a,#$0f
0960: c4 9c     mov   $9c,a
0962: 9f        xcn   a
0963: 5c        lsr   a
0964: c4 9d     mov   $9d,a
0966: e4 92     mov   a,$92
0968: 24 dc     and   a,$dc
096a: f0 79     beq   $09e5
096c: 8f 80 9e  mov   $9e,#$80
096f: 03 88 22  bbs0  $88,$0993
0972: f5 81 f2  mov   a,$f281+x
0975: fd        mov   y,a
0976: c8 10     cmp   x,#$10
0978: 90 10     bcc   $098a
097a: c8 1c     cmp   x,#$1c
097c: b0 04     bcs   $0982
097e: e4 aa     mov   a,$aa
0980: 2f 02     bra   $0984
0982: e4 ac     mov   a,$ac
0984: 48 80     eor   a,#$80
0986: 3f d1 12  call  $12d1
0989: fd        mov   y,a
098a: f5 c1 f4  mov   a,$f4c1+x
098d: 3f d1 12  call  $12d1
0990: 48 ff     eor   a,#$ff
0992: c4 9e     mov   $9e,a
0994: f5 41 f2  mov   a,$f241+x
0997: fd        mov   y,a
0998: c4 9f     mov   $9f,a
099a: f5 a1 f4  mov   a,$f4a1+x
099d: f0 0e     beq   $09ad
099f: 1c        asl   a
09a0: cf        mul   ya
09a1: b0 0a     bcs   $09ad
09a3: dd        mov   a,y
09a4: 84 9f     adc   a,$9f
09a6: 10 04     bpl   $09ac
09a8: 90 02     bcc   $09ac
09aa: e8 7f     mov   a,#$7f
09ac: fd        mov   y,a
09ad: f5 61 f1  mov   a,$f161+x
09b0: cf        mul   ya
09b1: c8 10     cmp   x,#$10
09b3: b0 11     bcs   $09c6
09b5: e4 92     mov   a,$92
09b7: 24 a8     and   a,$a8
09b9: f0 04     beq   $09bf
09bb: 8d 00     mov   y,#$00
09bd: 2f 07     bra   $09c6
09bf: f5 20 f2  mov   a,$f220+x
09c2: cf        mul   ya
09c3: e4 4d     mov   a,$4d
09c5: cf        mul   ya
09c6: cb 9f     mov   $9f,y
09c8: e4 9e     mov   a,$9e
09ca: eb 9f     mov   y,$9f
09cc: cf        mul   ya
09cd: dd        mov   a,y
09ce: eb 9c     mov   y,$9c
09d0: d6 ca 00  mov   $00ca+y,a
09d3: eb 9d     mov   y,$9d
09d5: cb f2     mov   $f2,y
09d7: c4 f3     mov   $f3,a
09d9: e4 9e     mov   a,$9e
09db: 48 ff     eor   a,#$ff
09dd: ea 9c 00  not1  $0013,4
09e0: ab 9d     inc   $9d
09e2: 33 9d e5  bbc1  $9d,$09c9
09e5: e4 92     mov   a,$92
09e7: 24 dd     and   a,$dd
09e9: f0 67     beq   $0a52
09eb: 22 9d     set1  $9d
09ed: f5 20 f5  mov   a,$f520+x
09f0: 60        clrc
09f1: 95 00 f5  adc   a,$f500+x
09f4: c4 9e     mov   $9e,a
09f6: f5 21 f5  mov   a,$f521+x
09f9: 95 01 f5  adc   a,$f501+x
09fc: c4 9f     mov   $9f,a
09fe: c8 10     cmp   x,#$10
0a00: 90 25     bcc   $0a27
0a02: c8 1c     cmp   x,#$1c
0a04: b0 04     bcs   $0a0a
0a06: ba 9e     movw  ya,$9e
0a08: 2f 39     bra   $0a43
0a0a: eb bd     mov   y,$bd
0a0c: f0 f8     beq   $0a06
0a0e: cf        mul   ya
0a0f: da a0     movw  $a0,ya
0a11: eb bd     mov   y,$bd
0a13: e4 9e     mov   a,$9e
0a15: cf        mul   ya
0a16: dd        mov   a,y
0a17: 8d 00     mov   y,#$00
0a19: 7a a0     addw  ya,$a0
0a1b: 1c        asl   a
0a1c: c4 a2     mov   $a2,a
0a1e: dd        mov   a,y
0a1f: 3c        rol   a
0a20: fd        mov   y,a
0a21: e4 a2     mov   a,$a2
0a23: 7a 9e     addw  ya,$9e
0a25: 2f 1c     bra   $0a43
0a27: eb bb     mov   y,$bb
0a29: cf        mul   ya
0a2a: da a0     movw  $a0,ya
0a2c: eb bb     mov   y,$bb
0a2e: e4 9e     mov   a,$9e
0a30: cf        mul   ya
0a31: dd        mov   a,y
0a32: 8d 00     mov   y,#$00
0a34: 7a a0     addw  ya,$a0
0a36: e3 bb 0a  bbs7  $bb,$0a42
0a39: 1c        asl   a
0a3a: c4 a2     mov   $a2,a
0a3c: dd        mov   a,y
0a3d: 3c        rol   a
0a3e: fd        mov   y,a
0a3f: e4 a2     mov   a,$a2
0a41: 7a 9e     addw  ya,$9e
0a43: d8 9c     mov   $9c,x
0a45: f8 9d     mov   x,$9d
0a47: d8 f2     mov   $f2,x
0a49: c4 f3     mov   $f3,a
0a4b: 3d        inc   x
0a4c: d8 f2     mov   $f2,x
0a4e: cb f3     mov   $f3,y
0a50: f8 9c     mov   x,$9c
0a52: 6f        ret

0a53: 8f 00 9e  mov   $9e,#$00
0a56: 78 c0 a6  cmp   $a6,#$c0
0a59: b0 49     bcs   $0aa4
0a5b: 78 80 a6  cmp   $a6,#$80
0a5e: b0 1e     bcs   $0a7e
0a60: 58 ff c1  eor   $c1,#$ff
0a63: 58 ff c2  eor   $c2,#$ff
0a66: 3a c1     incw  $c1
0a68: fd        mov   y,a
0a69: f0 63     beq   $0ace
0a6b: 9c        dec   a
0a6c: c4 9e     mov   $9e,a
0a6e: e3 c2 5d  bbs7  $c2,$0acd
0a71: 4b 9d     lsr   $9d
0a73: 6b 9c     ror   $9c
0a75: 4b 9d     lsr   $9d
0a77: 6b 9c     ror   $9c
0a79: ba 9c     movw  ya,$9c
0a7b: 7a c1     addw  ya,$c1
0a7d: 6f        ret

0a7e: 58 ff c1  eor   $c1,#$ff
0a81: 58 ff c2  eor   $c2,#$ff
0a84: 3a c1     incw  $c1
0a86: fd        mov   y,a
0a87: f0 45     beq   $0ace
0a89: 9c        dec   a
0a8a: c4 9e     mov   $9e,a
0a8c: f3 c2 3f  bbc7  $c2,$0acd
0a8f: 4b 9d     lsr   $9d
0a91: 6b 9c     ror   $9c
0a93: 4b 9d     lsr   $9d
0a95: 6b 9c     ror   $9c
0a97: 58 ff 9c  eor   $9c,#$ff
0a9a: 58 ff 9d  eor   $9d,#$ff
0a9d: 3a 9c     incw  $9c
0a9f: ba 9c     movw  ya,$9c
0aa1: 7a c1     addw  ya,$c1
0aa3: 6f        ret

0aa4: fd        mov   y,a
0aa5: f0 1f     beq   $0ac6
0aa7: 9c        dec   a
0aa8: c4 9e     mov   $9e,a
0aaa: f3 c2 08  bbc7  $c2,$0ab4
0aad: 58 ff c1  eor   $c1,#$ff
0ab0: 58 ff c2  eor   $c2,#$ff
0ab3: 3a c1     incw  $c1
0ab5: 4b 9d     lsr   $9d
0ab7: 6b 9c     ror   $9c
0ab9: 4b 9d     lsr   $9d
0abb: 6b 9c     ror   $9c
0abd: ba 9c     movw  ya,$9c
0abf: 7a c1     addw  ya,$c1
0ac1: da c1     movw  $c1,ya
0ac3: e3 c3 08  bbs7  $c3,$0acd
0ac6: 58 ff c1  eor   $c1,#$ff
0ac9: 58 ff c2  eor   $c2,#$ff
0acc: 3a c1     incw  $c1
0ace: ba c1     movw  ya,$c1
0ad0: 6f        ret

0ad1: e4 e4     mov   a,$e4
0ad3: 68 23     cmp   a,#$23
0ad5: f0 28     beq   $0aff
0ad7: 5c        lsr   a
0ad8: fd        mov   y,a
0ad9: e8 70     mov   a,#$70
0adb: 90 01     bcc   $0ade
0add: 9f        xcn   a
0ade: 56 61 1d  eor   a,$1d61+y
0ae1: d6 61 1d  mov   $1d61+y,a
0ae4: e4 e4     mov   a,$e4
0ae6: bc        inc   a
0ae7: 68 24     cmp   a,#$24
0ae9: f0 0f     beq   $0afa
0aeb: 2d        push  a
0aec: 5c        lsr   a
0aed: 8d 00     mov   y,#$00
0aef: cd 09     mov   x,#$09
0af1: 9e        div   ya,x
0af2: dd        mov   a,y
0af3: ae        pop   a
0af4: d0 06     bne   $0afc
0af6: bc        inc   a
0af7: bc        inc   a
0af8: 2f 02     bra   $0afc
0afa: e8 03     mov   a,#$03
0afc: c4 e4     mov   $e4,a
0afe: 6f        ret

0aff: e8 70     mov   a,#$70
0b01: 45 62 1d  eor   a,$1d62
0b04: c5 62 1d  mov   $1d62,a
0b07: e4 e4     mov   a,$e4
0b09: 2f cc     bra   $0ad7
0b0b: f8 f4     mov   x,$f4
0b0d: d0 03     bne   $0b12
0b0f: 6f        ret

0b10: f8 f4     mov   x,$f4
0b12: 3e f4     cmp   x,$f4
0b14: d0 fa     bne   $0b10
0b16: ba f6     movw  ya,$f6
0b18: da 90     movw  $90,ya
0b1a: ba f4     movw  ya,$f4
0b1c: da 8e     movw  $8e,ya
0b1e: 3f 0a 07  call  $070a
0b21: f8 8e     mov   x,$8e
0b23: 7d        mov   a,x
0b24: 10 05     bpl   $0b2b
0b26: d8 f4     mov   $f4,x
0b28: 5f a1 0e  jmp   $0ea1

0b2b: c8 10     cmp   x,#$10
0b2d: 90 1c     bcc   $0b4b
0b2f: c8 20     cmp   x,#$20
0b31: b0 18     bcs   $0b4b
0b33: 7d        mov   a,x
0b34: 28 0f     and   a,#$0f
0b36: 1c        asl   a
0b37: fd        mov   y,a
0b38: f6 19 16  mov   a,$1619+y
0b3b: 2d        push  a
0b3c: f6 18 16  mov   a,$1618+y
0b3f: 2d        push  a
0b40: f6 39 16  mov   a,$1639+y
0b43: f0 05     beq   $0b4a
0b45: 2d        push  a
0b46: f6 38 16  mov   a,$1638+y
0b49: 2d        push  a
0b4a: 6f        ret

0b4b: d8 f4     mov   $f4,x
0b4d: 6f        ret

0b4e: 3f 9b 13  call  $139b
0b51: 8f 10 c5  mov   $c5,#$10
0b54: 2f 06     bra   $0b5c
0b56: 3f 9b 13  call  $139b
0b59: 8f 20 c5  mov   $c5,#$20
0b5c: e8 ff     mov   a,#$ff
0b5e: 8d 5c     mov   y,#$5c
0b60: 3f 05 07  call  $0705
0b63: 8d 10     mov   y,#$10
0b65: e8 00     mov   a,#$00
0b67: d6 0f f1  mov   $f10f+y,a
0b6a: fe fb     dbnz  y,$0b67
0b6c: fa 8f c8  mov   ($c8),($8f)
0b6f: e4 90     mov   a,$90
0b71: c4 4d     mov   $4d,a
0b73: e4 91     mov   a,$91
0b75: 28 0f     and   a,#$0f
0b77: 64 81     cmp   a,$81
0b79: f0 09     beq   $0b84
0b7b: c4 81     mov   $81,a
0b7d: 02 89     set0  $89
0b7f: 22 89     set1  $89
0b81: 3f 08 13  call  $1308
0b84: 3f 89 10  call  $1089
0b87: e8 00     mov   a,#$00
0b89: fd        mov   y,a
0b8a: c4 86     mov   $86,a
0b8c: c4 87     mov   $87,a
0b8e: b2 89     clr5  $89
0b90: da de     movw  $de,ya
0b92: c4 dd     mov   $dd,a
0b94: 69 c8 c7  cmp   ($c7),($c8)
0b97: d0 46     bne   $0bdf
0b99: 3f d7 13  call  $13d7
0b9c: e4 53     mov   a,$53
0b9e: f0 3f     beq   $0bdf
0ba0: 38 e0 8d  and   $8d,#$e0
0ba3: 09 62 8d  or    ($8d),($62)
0ba6: cd 00     mov   x,#$00
0ba8: 8f 01 92  mov   $92,#$01
0bab: bb 26     inc   $26+x
0bad: d8 a7     mov   $a7,x
0baf: 3f 84 1a  call  $1a84
0bb2: 7d        mov   a,x
0bb3: 9f        xcn   a
0bb4: 5c        lsr   a
0bb5: fd        mov   y,a
0bb6: e8 00     mov   a,#$00
0bb8: 3f 05 07  call  $0705
0bbb: fc        inc   y
0bbc: 3f 05 07  call  $0705
0bbf: fc        inc   y
0bc0: cb 9d     mov   $9d,y
0bc2: 3f ed 09  call  $09ed
0bc5: 3d        inc   x
0bc6: 3d        inc   x
0bc7: 0b 92     asl   $92
0bc9: d0 e0     bne   $0bab
0bcb: e8 00     mov   a,#$00
0bcd: c4 55     mov   $55,a
0bcf: c4 57     mov   $57,a
0bd1: c4 59     mov   $59,a
0bd3: fa 24 22  mov   ($22),($24)
0bd6: c4 23     mov   $23,a
0bd8: c4 25     mov   $25,a
0bda: fa 53 dc  mov   ($dc),($53)
0bdd: 2f 6f     bra   $0c4e
0bdf: e8 00     mov   a,#$00
0be1: fd        mov   y,a
0be2: c4 53     mov   $53,a
0be4: da 54     movw  $54,ya
0be6: da 56     movw  $56,ya
0be8: da 58     movw  $58,ya
0bea: c4 22     mov   $22,a
0bec: c4 23     mov   $23,a
0bee: da 24     movw  $24,ya
0bf0: c4 5a     mov   $5a,a
0bf2: c4 5c     mov   $5c,a
0bf4: c4 60     mov   $60,a
0bf6: c4 7c     mov   $7c,a
0bf8: c4 7b     mov   $7b,a
0bfa: 8f 01 47  mov   $47,#$01
0bfd: 8f ff 48  mov   $48,#$ff
0c00: eb c5     mov   y,$c5
0c02: cd 10     mov   x,#$10
0c04: f6 03 20  mov   a,$2003+y
0c07: d4 01     mov   $01+x,a
0c09: dc        dec   y
0c0a: 1d        dec   x
0c0b: d0 f7     bne   $0c04
0c0d: e5 00 20  mov   a,$2000
0c10: c4 00     mov   $00,a
0c12: e5 01 20  mov   a,$2001
0c15: c4 01     mov   $01,a
0c17: e8 24     mov   a,#$24
0c19: 8d 20     mov   y,#$20
0c1b: 9a 00     subw  ya,$00
0c1d: da 00     movw  $00,ya
0c1f: cd 0e     mov   x,#$0e
0c21: 8f 80 92  mov   $92,#$80
0c24: e5 02 20  mov   a,$2002
0c27: ec 03 20  mov   y,$2003
0c2a: da 9c     movw  $9c,ya
0c2c: f4 02     mov   a,$02+x
0c2e: fb 03     mov   y,$03+x
0c30: 5a 9c     cmpw  ya,$9c
0c32: f0 11     beq   $0c45
0c34: 09 92 53  or    ($53),($92)
0c37: 7a 00     addw  ya,$00
0c39: d4 02     mov   $02+x,a
0c3b: db 03     mov   $03+x,y
0c3d: 3f 90 0c  call  $0c90
0c40: e8 ff     mov   a,#$ff
0c42: d5 20 f2  mov   $f220+x,a
0c45: 1d        dec   x
0c46: 1d        dec   x
0c47: 4b 92     lsr   $92
0c49: d0 e1     bne   $0c2c
0c4b: 8f 00 dc  mov   $dc,#$00
0c4e: e4 80     mov   a,$80
0c50: 68 2e     cmp   a,#$2e
0c52: f0 04     beq   $0c58
0c54: 68 2a     cmp   a,#$2a
0c56: d0 03     bne   $0c5b
0c58: e8 70     mov   a,#$70
0c5a: ec e8 3f  mov   y,$3fe8
0c5d: 8d 0c     mov   y,#$0c
0c5f: 3f 05 07  call  $0705
0c62: 8d 1c     mov   y,#$1c
0c64: 3f 05 07  call  $0705
0c67: 13 89 15  bbc0  $89,$0c7e
0c6a: 33 89 0b  bbc1  $89,$0c77
0c6d: cd 82     mov   x,#$82
0c6f: 3f eb 12  call  $12eb
0c72: 8f 00 83  mov   $83,#$00
0c75: 3f 89 13  call  $1389
0c78: cd 81     mov   x,#$81
0c7a: 3f eb 12  call  $12eb
0c7d: 12 89     clr0  $89
0c7f: fa 54 8a  mov   ($8a),($54)
0c82: fa 56 8b  mov   ($8b),($56)
0c85: fa 58 8c  mov   ($8c),($58)
0c88: cd ff     mov   x,#$ff
0c8a: bd        mov   sp,x
0c8b: e4 fd     mov   a,$fd
0c8d: 5f a2 02  jmp   $02a2

0c90: 7d        mov   a,x
0c91: 1c        asl   a
0c92: d4 27     mov   $27+x,a
0c94: e8 00     mov   a,#$00
0c96: d5 50 01  mov   $0150+x,a
0c99: d5 c0 f3  mov   $f3c0+x,a
0c9c: d5 c1 f3  mov   $f3c1+x,a
0c9f: d5 e0 f4  mov   $f4e0+x,a
0ca2: d5 51 01  mov   $0151+x,a
0ca5: d5 70 01  mov   $0170+x,a
0ca8: d5 71 01  mov   $0171+x,a
0cab: d5 c0 f4  mov   $f4c0+x,a
0cae: d5 c1 f4  mov   $f4c1+x,a
0cb1: d5 a0 f3  mov   $f3a0+x,a
0cb4: d5 61 f3  mov   $f361+x,a
0cb7: d5 00 f3  mov   $f300+x,a
0cba: bc        inc   a
0cbb: d4 26     mov   $26+x,a
0cbd: e8 10     mov   a,#$10
0cbf: d5 01 f3  mov   $f301+x,a
0cc2: 6f        ret

0cc3: e4 8f     mov   a,$8f
0cc5: 64 80     cmp   a,$80
0cc7: c4 80     mov   $80,a
0cc9: f0 05     beq   $0cd0
0ccb: c4 f5     mov   $f5,a
0ccd: d8 f4     mov   $f4,x
0ccf: 6f        ret

0cd0: ae        pop   a
0cd1: ae        pop   a
0cd2: e8 ff     mov   a,#$ff
0cd4: c4 f5     mov   $f5,a
0cd6: d8 f4     mov   $f4,x
0cd8: e4 f4     mov   a,$f4
0cda: f0 fc     beq   $0cd8
0cdc: 5f 0a 07  jmp   $070a

0cdf: d8 f4     mov   $f4,x
0ce1: cd 1e     mov   x,#$1e
0ce3: 8f 80 92  mov   $92,#$80
0ce6: 8f c0 91  mov   $91,#$c0
0ce9: fa 90 ac  mov   ($ac),($90)
0cec: 8f 00 b3  mov   $b3,#$00
0cef: 2f 10     bra   $0d01
0cf1: d8 f4     mov   $f4,x
0cf3: cd 1a     mov   x,#$1a
0cf5: 8f 20 92  mov   $92,#$20
0cf8: 8f 30 91  mov   $91,#$30
0cfb: fa 90 aa  mov   ($aa),($90)
0cfe: 8f 00 b1  mov   $b1,#$00
0d01: 93 88 01  bbc4  $88,$0d04
0d04: 6f        ret

0d05: fa 8f 94  mov   ($94),($8f)
0d08: 8f 00 95  mov   $95,#$00
0d0b: 0b 94     asl   $94
0d0d: 2b 95     rol   $95
0d0f: 0b 94     asl   $94
0d11: 2b 95     rol   $95
0d13: e8 00     mov   a,#$00
0d15: 8d 2f     mov   y,#$2f
0d17: 7a 94     addw  ya,$94
0d19: da 94     movw  $94,ya
0d1b: 8d 03     mov   y,#$03
0d1d: 8f 00 a5  mov   $a5,#$00
0d20: f7 94     mov   a,($94)+y
0d22: f0 34     beq   $0d58
0d24: d4 03     mov   $03+x,a
0d26: dc        dec   y
0d27: f7 94     mov   a,($94)+y
0d29: d4 02     mov   $02+x,a
0d2b: 09 92 a5  or    ($a5),($92)
0d2e: 3f 90 0c  call  $0c90
0d31: bb 26     inc   $26+x
0d33: e8 50     mov   a,#$50
0d35: d5 41 f2  mov   $f241+x,a
0d38: e8 80     mov   a,#$80
0d3a: d5 81 f2  mov   $f281+x,a
0d3d: e8 24     mov   a,#$24
0d3f: d5 00 f2  mov   $f200+x,a
0d42: e8 00     mov   a,#$00
0d44: d5 c0 f2  mov   $f2c0+x,a
0d47: d5 c1 f2  mov   $f2c1+x,a
0d4a: cb 9c     mov   $9c,y
0d4c: e8 04     mov   a,#$04
0d4e: 3f 66 1a  call  $1a66
0d51: eb 9c     mov   y,$9c
0d53: 1d        dec   x
0d54: 1d        dec   x
0d55: 4b 92     lsr   $92
0d57: e8 dc     mov   a,#$dc
0d59: dc        dec   y
0d5a: 10 c4     bpl   $0d20
0d5c: e4 86     mov   a,$86
0d5e: 24 91     and   a,$91
0d60: 04 a5     or    a,$a5
0d62: 4e 87 00  tclr1 $0087
0d65: 4e 88 00  tclr1 $0088
0d68: 4e 22 00  tclr1 $0022
0d6b: 4e 5b 00  tclr1 $005b
0d6e: 4e 5d 00  tclr1 $005d
0d71: 4e 61 00  tclr1 $0061
0d74: 4e dc 00  tclr1 $00dc
0d77: 4e dd 00  tclr1 $00dd
0d7a: 0e 23 00  tset1 $0023
0d7d: 4e 25 00  tclr1 $0025
0d80: c4 a6     mov   $a6,a
0d82: cd 1e     mov   x,#$1e
0d84: 8f 80 92  mov   $92,#$80
0d87: 0b a6     asl   $a6
0d89: 90 03     bcc   $0d8e
0d8b: 3f e1 1c  call  $1ce1
0d8e: 1d        dec   x
0d8f: 1d        dec   x
0d90: 4b 92     lsr   $92
0d92: 73 92 f2  bbc3  $92,$0d86
0d95: e4 a5     mov   a,$a5
0d97: 0e 86 00  tset1 $0086
0d9a: 4e 8a 00  tclr1 $008a
0d9d: 4e 8c 00  tclr1 $008c
0da0: 4e 8b 00  tclr1 $008b
0da3: 4e 24 00  tclr1 $0024
0da6: e4 91     mov   a,$91
0da8: 24 87     and   a,$87
0daa: f0 06     beq   $0db2
0dac: 0e 22 00  tset1 $0022
0daf: 4e 87 00  tclr1 $0087
0db2: 6f        ret

0db3: 8f 00 a7  mov   $a7,#$00
0db6: 8f 1c 92  mov   $92,#$1c
0db9: 8f c0 93  mov   $93,#$c0
0dbc: 2f 09     bra   $0dc7
0dbe: 8f 06 a7  mov   $a7,#$06
0dc1: 8f 18 92  mov   $92,#$18
0dc4: 8f 30 93  mov   $93,#$30
0dc7: d8 f4     mov   $f4,x
0dc9: e4 8f     mov   a,$8f
0dcb: 28 0f     and   a,#$0f
0dcd: fd        mov   y,a
0dce: f6 10 f1  mov   a,$f110+y
0dd1: d0 01     bne   $0dd4
0dd3: 6f        ret

0dd4: f8 a7     mov   x,$a7
0dd6: 80        setc
0dd7: a8 0a     sbc   a,#$0a
0dd9: c4 9e     mov   $9e,a
0ddb: dd        mov   a,y
0ddc: 08 30     or    a,#$30
0dde: d5 f4 ff  mov   $fff4+x,a
0de1: c4 9f     mov   $9f,a
0de3: e4 8f     mov   a,$8f
0de5: d5 f5 ff  mov   $fff5+x,a
0de8: e4 90     mov   a,$90
0dea: 48 ff     eor   a,#$ff
0dec: 5c        lsr   a
0ded: d5 f0 ff  mov   $fff0+x,a
0df0: e4 90     mov   a,$90
0df2: 5c        lsr   a
0df3: d5 f1 ff  mov   $fff1+x,a
0df6: e4 9f     mov   a,$9f
0df8: 1c        asl   a
0df9: fd        mov   y,a
0dfa: f6 00 1f  mov   a,$1f00+y
0dfd: c4 9c     mov   $9c,a
0dff: f6 01 1f  mov   a,$1f01+y
0e02: c4 9d     mov   $9d,a
0e04: e4 9e     mov   a,$9e
0e06: 3f 2b 06  call  $062b
0e09: f8 a7     mov   x,$a7
0e0b: e4 c1     mov   a,$c1
0e0d: d5 f2 ff  mov   $fff2+x,a
0e10: e4 c2     mov   a,$c2
0e12: d5 f3 ff  mov   $fff3+x,a
0e15: f8 92     mov   x,$92
0e17: 8d 57     mov   y,#$57
0e19: db 02     mov   $02+x,y
0e1b: db 04     mov   $04+x,y
0e1d: 8d 1d     mov   y,#$1d
0e1f: db 03     mov   $03+x,y
0e21: db 05     mov   $05+x,y
0e23: 8d 02     mov   y,#$02
0e25: db 26     mov   $26+x,y
0e27: db 28     mov   $28+x,y
0e29: e4 93     mov   a,$93
0e2b: 0e 86 00  tset1 $0086
0e2e: 0e 23 00  tset1 $0023
0e31: 4e 22 00  tclr1 $0022
0e34: 4e dc 00  tclr1 $00dc
0e37: 4e dd 00  tclr1 $00dd
0e3a: 4e 87 00  tclr1 $0087
0e3d: 4e 25 00  tclr1 $0025
0e40: 6f        ret

; vcmd ef
0e41: ae        pop   a
0e42: ae        pop   a
0e43: 3f e1 1c  call  $1ce1
0e46: e4 92     mov   a,$92
0e48: 0e 22 00  tset1 $0022
0e4b: 0e 87 00  tset1 $0087
0e4e: 4e 8a 00  tclr1 $008a
0e51: 7d        mov   a,x
0e52: 9f        xcn   a
0e53: 5c        lsr   a
0e54: fd        mov   y,a
0e55: 68 60     cmp   a,#$60
0e57: b0 04     bcs   $0e5d
0e59: cd 06     mov   x,#$06
0e5b: 2f 02     bra   $0e5f
0e5d: cd 00     mov   x,#$00
0e5f: f5 f5 ff  mov   a,$fff5+x
0e62: c4 8f     mov   $8f,a
0e64: f5 f0 ff  mov   a,$fff0+x
0e67: 3f 05 07  call  $0705
0e6a: fc        inc   y
0e6b: f5 f1 ff  mov   a,$fff1+x
0e6e: 3f 05 07  call  $0705
0e71: fc        inc   y
0e72: f5 f2 ff  mov   a,$fff2+x
0e75: 3f 05 07  call  $0705
0e78: fc        inc   y
0e79: f5 f3 ff  mov   a,$fff3+x
0e7c: 3f 05 07  call  $0705
0e7f: fc        inc   y
0e80: f5 f4 ff  mov   a,$fff4+x
0e83: 3f 05 07  call  $0705
0e86: fc        inc   y
0e87: 1c        asl   a
0e88: 5d        mov   x,a
0e89: f5 80 1f  mov   a,$1f80+x
0e8c: 3f 05 07  call  $0705
0e8f: fc        inc   y
0e90: f5 81 1f  mov   a,$1f81+x
0e93: 3f 05 07  call  $0705
0e96: f8 a7     mov   x,$a7
0e98: 93 8f 05  bbc4  $8f,$0e9f
0e9b: e4 92     mov   a,$92
0e9d: 0e 8a 00  tset1 $008a
0ea0: 6f        ret

0ea1: c8 f0     cmp   x,#$f0
0ea3: b0 04     bcs   $0ea9
0ea5: c8 90     cmp   x,#$90
0ea7: b0 0d     bcs   $0eb6
0ea9: 7d        mov   a,x
0eaa: 28 1f     and   a,#$1f
0eac: 1c        asl   a
0ead: fd        mov   y,a
0eae: f6 59 16  mov   a,$1659+y
0eb1: 2d        push  a
0eb2: f6 58 16  mov   a,$1658+y
0eb5: 2d        push  a
0eb6: 6f        ret

0eb7: 3f c0 0e  call  $0ec0
0eba: 3f cf 0e  call  $0ecf
0ebd: 5f dc 0e  jmp   $0edc

0ec0: 18 ff dc  or    $dc,#$ff
0ec3: cd 00     mov   x,#$00
0ec5: 3f e6 0e  call  $0ee6
0ec8: 3d        inc   x
0ec9: 3d        inc   x
0eca: c8 10     cmp   x,#$10
0ecc: d0 f7     bne   $0ec5
0ece: 6f        ret

0ecf: 18 c0 dc  or    $dc,#$c0
0ed2: cd 1c     mov   x,#$1c
0ed4: 3f e6 0e  call  $0ee6
0ed7: cd 1e     mov   x,#$1e
0ed9: 5f e6 0e  jmp   $0ee6

0edc: 18 30 dc  or    $dc,#$30
0edf: cd 18     mov   x,#$18
0ee1: 3f e6 0e  call  $0ee6
0ee4: cd 1a     mov   x,#$1a
0ee6: eb 90     mov   y,$90
0ee8: e4 8f     mov   a,$8f
0eea: d5 a0 f1  mov   $f1a0+x,a
0eed: d0 0e     bne   $0efd
0eef: d5 60 f1  mov   $f160+x,a
0ef2: d5 80 f1  mov   $f180+x,a
0ef5: d5 81 f1  mov   $f181+x,a
0ef8: dd        mov   a,y
0ef9: d5 61 f1  mov   $f161+x,a
0efc: 6f        ret

0efd: dd        mov   a,y
0efe: 80        setc
0eff: b5 61 f1  sbc   a,$f161+x
0f02: f0 e6     beq   $0eea
0f04: 4d        push  x
0f05: 3f 16 0f  call  $0f16
0f08: ce        pop   x
0f09: d5 80 f1  mov   $f180+x,a
0f0c: dd        mov   a,y
0f0d: d5 81 f1  mov   $f181+x,a
0f10: e8 00     mov   a,#$00
0f12: d5 60 f1  mov   $f160+x,a
0f15: 6f        ret

0f16: 0d        push  psw
0f17: b0 03     bcs   $0f1c
0f19: 48 ff     eor   a,#$ff
0f1b: bc        inc   a
0f1c: f8 8f     mov   x,$8f
0f1e: 8d 00     mov   y,#$00
0f20: 9e        div   ya,x
0f21: c4 c2     mov   $c2,a
0f23: e8 00     mov   a,#$00
0f25: 9e        div   ya,x
0f26: c4 c1     mov   $c1,a
0f28: 8e        pop   psw
0f29: b0 08     bcs   $0f33
0f2b: 58 ff c1  eor   $c1,#$ff
0f2e: 58 ff c2  eor   $c2,#$ff
0f31: 3a c1     incw  $c1
0f33: ba c1     movw  ya,$c1
0f35: 6f        ret

0f36: 3f 61 0f  call  $0f61
0f39: eb 90     mov   y,$90
0f3b: e4 8f     mov   a,$8f
0f3d: c4 b9     mov   $b9,a
0f3f: d0 09     bne   $0f4a
0f41: cb b6     mov   $b6,y
0f43: c4 b5     mov   $b5,a
0f45: c4 b8     mov   $b8,a
0f47: c4 b7     mov   $b7,a
0f49: 6f        ret

0f4a: fa b6 a6  mov   ($a6),($b6)
0f4d: 58 80 a6  eor   $a6,#$80
0f50: dd        mov   a,y
0f51: 48 80     eor   a,#$80
0f53: 80        setc
0f54: a4 a6     sbc   a,$a6
0f56: f0 e5     beq   $0f3d
0f58: 3f 16 0f  call  $0f16
0f5b: da b7     movw  $b7,ya
0f5d: 8f 00 b5  mov   $b5,#$00
0f60: 6f        ret

0f61: eb 90     mov   y,$90
0f63: e4 8f     mov   a,$8f
0f65: c4 c0     mov   $c0,a
0f67: d0 0a     bne   $0f73
0f69: cb bb     mov   $bb,y
0f6b: c4 ba     mov   $ba,a
0f6d: c4 bf     mov   $bf,a
0f6f: c4 be     mov   $be,a
0f71: 2f 16     bra   $0f89
0f73: fa bb a6  mov   ($a6),($bb)
0f76: 58 80 a6  eor   $a6,#$80
0f79: dd        mov   a,y
0f7a: 48 80     eor   a,#$80
0f7c: 80        setc
0f7d: a4 a6     sbc   a,$a6
0f7f: f0 e4     beq   $0f65
0f81: 3f 16 0f  call  $0f16
0f84: da be     movw  $be,ya
0f86: 8f 00 ba  mov   $ba,#$00
0f89: 8f ff dd  mov   $dd,#$ff
0f8c: 6f        ret

0f8d: e4 8f     mov   a,$8f
0f8f: d0 04     bne   $0f95
0f91: 12 88     clr0  $88
0f93: 2f 02     bra   $0f97
0f95: 02 88     set0  $88
0f97: 8f ff dc  mov   $dc,#$ff
0f9a: 6f        ret

0f9b: 3f a4 0f  call  $0fa4
0f9e: 3f cc 0f  call  $0fcc
0fa1: 5f fe 0f  jmp   $0ffe

0fa4: e4 86     mov   a,$86
0fa6: 48 ff     eor   a,#$ff
0fa8: 0e 23 00  tset1 $0023
0fab: 4e 22 00  tclr1 $0022
0fae: 4e 8a 00  tclr1 $008a
0fb1: 4e 8c 00  tclr1 $008c
0fb4: 4e 8b 00  tclr1 $008b
0fb7: e8 00     mov   a,#$00
0fb9: c4 53     mov   $53,a
0fbb: c4 54     mov   $54,a
0fbd: c4 58     mov   $58,a
0fbf: c4 56     mov   $56,a
0fc1: 9c        dec   a
0fc2: c4 80     mov   $80,a
0fc4: c4 c7     mov   $c7,a
0fc6: c4 c8     mov   $c8,a
0fc8: 6f        ret

0fc9: 03 8f 32  bbs0  $8f,$0ffd
0fcc: e4 86     mov   a,$86
0fce: 28 c0     and   a,#$c0
0fd0: 0e 23 00  tset1 $0023
0fd3: 4e 22 00  tclr1 $0022
0fd6: 4e 25 00  tclr1 $0025
0fd9: 4e dc 00  tclr1 $00dc
0fdc: 4e dd 00  tclr1 $00dd
0fdf: c4 a5     mov   $a5,a
0fe1: cd 1e     mov   x,#$1e
0fe3: 8f 80 92  mov   $92,#$80
0fe6: 0b a5     asl   $a5
0fe8: 90 0c     bcc   $0ff6
0fea: e8 56     mov   a,#$56
0fec: d4 02     mov   $02+x,a
0fee: e8 1d     mov   a,#$1d
0ff0: d4 03     mov   $03+x,a
0ff2: e8 02     mov   a,#$02
0ff4: d4 26     mov   $26+x,a
0ff6: 1d        dec   x
0ff7: 1d        dec   x
0ff8: 4b 92     lsr   $92
0ffa: b3 92 e9  bbc5  $92,$0fe5
0ffd: 6f        ret

0ffe: e4 86     mov   a,$86
1000: 28 30     and   a,#$30
1002: 0e 23 00  tset1 $0023
1005: 4e 22 00  tclr1 $0022
1008: 4e 25 00  tclr1 $0025
100b: 4e dc 00  tclr1 $00dc
100e: 4e dd 00  tclr1 $00dd
1011: 1c        asl   a
1012: 1c        asl   a
1013: c4 a5     mov   $a5,a
1015: cd 1a     mov   x,#$1a
1017: 8f 20 92  mov   $92,#$20
101a: 0b a5     asl   $a5
101c: 90 0c     bcc   $102a
101e: e8 56     mov   a,#$56
1020: d4 02     mov   $02+x,a
1022: e8 1d     mov   a,#$1d
1024: d4 03     mov   $03+x,a
1026: e8 02     mov   a,#$02
1028: d4 26     mov   $26+x,a
102a: 1d        dec   x
102b: 1d        dec   x
102c: 4b 92     lsr   $92
102e: 73 92 e9  bbc3  $92,$1019
1031: 6f        ret

1032: fa 8f a8  mov   ($a8),($8f)
1035: 8f ff dc  mov   $dc,#$ff
1038: 6f        ret

1039: e4 8f     mov   a,$8f
103b: f0 35     beq   $1072
103d: 8d 05     mov   y,#$05
103f: cb f2     mov   $f2,y
1041: e4 f3     mov   a,$f3
1043: 28 7f     and   a,#$7f
1045: c4 f3     mov   $f3,a
1047: dd        mov   a,y
1048: 60        clrc
1049: 88 10     adc   a,#$10
104b: fd        mov   y,a
104c: 10 f1     bpl   $103f
104e: cd 00     mov   x,#$00
1050: 8d 00     mov   y,#$00
1052: cb f2     mov   $f2,y
1054: d8 f3     mov   $f3,x
1056: fc        inc   y
1057: cb f2     mov   $f2,y
1059: d8 f3     mov   $f3,x
105b: dd        mov   a,y
105c: 60        clrc
105d: 88 0f     adc   a,#$0f
105f: fd        mov   y,a
1060: 10 f0     bpl   $1052
1062: 82 88     set4  $88
1064: e8 00     mov   a,#$00
1066: c4 dc     mov   $dc,a
1068: c4 22     mov   $22,a
106a: 8d 10     mov   y,#$10
106c: d6 c9 00  mov   $00c9+y,a
106f: fe fb     dbnz  y,$106c
1071: 6f        ret

1072: 8d 05     mov   y,#$05
1074: cb f2     mov   $f2,y
1076: e4 f3     mov   a,$f3
1078: 08 80     or    a,#$80
107a: c4 f3     mov   $f3,a
107c: dd        mov   a,y
107d: 60        clrc
107e: 88 10     adc   a,#$10
1080: fd        mov   y,a
1081: 10 f1     bpl   $1074
1083: 92 88     clr4  $88
1085: 8f ff dc  mov   $dc,#$ff
1088: 6f        ret

1089: 7d        mov   a,x
108a: bc        inc   a
108b: 28 7f     and   a,#$7f
108d: c4 9c     mov   $9c,a
108f: e4 f4     mov   a,$f4
1091: f0 fc     beq   $108f
1093: 64 f4     cmp   a,$f4
1095: d0 f8     bne   $108f
1097: 3e f4     cmp   x,$f4
1099: d0 04     bne   $109f
109b: d8 f4     mov   $f4,x
109d: 2f f0     bra   $108f
109f: 64 9c     cmp   a,$9c
10a1: d0 ec     bne   $108f
10a3: 5d        mov   x,a
10a4: 13 89 03  bbc0  $89,$10a9
10a7: 3f 18 13  call  $1318
10aa: ba f6     movw  ya,$f6
10ac: da 94     movw  $94,ya
10ae: e4 f5     mov   a,$f5
10b0: 68 e0     cmp   a,#$e0
10b2: f0 3b     beq   $10ef
10b4: c4 f5     mov   $f5,a
10b6: d8 f4     mov   $f4,x
10b8: 28 07     and   a,#$07
10ba: 1c        asl   a
10bb: ad 1e     cmp   y,#$1e
10bd: 90 10     bcc   $10cf
10bf: ad 2f     cmp   y,#$2f
10c1: d0 0e     bne   $10d1
10c3: 4d        push  x
10c4: 2d        push  a
10c5: 3f cc 0f  call  $0fcc
10c8: 3f fe 0f  call  $0ffe
10cb: ae        pop   a
10cc: ce        pop   x
10cd: 2f 02     bra   $10d1
10cf: e8 00     mov   a,#$00
10d1: fd        mov   y,a
10d2: e8 10     mov   a,#$10
10d4: 2d        push  a
10d5: e8 a4     mov   a,#$a4
10d7: 2d        push  a
10d8: f6 dd 14  mov   a,$14dd+y
10db: 2d        push  a
10dc: f6 dc 14  mov   a,$14dc+y
10df: 2d        push  a
10e0: 3e f4     cmp   x,$f4
10e2: f0 fc     beq   $10e0
10e4: f8 f4     mov   x,$f4
10e6: 3e f4     cmp   x,$f4
10e8: d0 fa     bne   $10e4
10ea: e8 ee     mov   a,#$ee
10ec: c4 f5     mov   $f5,a
10ee: 6f        ret

10ef: 8f 00 f5  mov   $f5,#$00
10f2: d8 f4     mov   $f4,x
10f4: 5f 0a 07  jmp   $070a

10f7: ba 94     movw  ya,$94
10f9: c5 16 11  mov   $1116,a
10fc: cc 17 11  mov   $1117,y
10ff: c5 1e 11  mov   $111e,a
1102: cc 1f 11  mov   $111f,y
1105: c5 24 11  mov   $1124,a
1108: cc 25 11  mov   $1125,y
110b: 8d 00     mov   y,#$00
110d: 2f 04     bra   $1113
110f: 3e f4     cmp   x,$f4
1111: d0 1a     bne   $112d
1113: e4 f5     mov   a,$f5
1115: d6 20 f1  mov   $f120+y,a
1118: fc        inc   y
1119: d8 f4     mov   $f4,x
111b: e4 f6     mov   a,$f6
111d: d6 20 f1  mov   $f120+y,a
1120: fc        inc   y
1121: e4 f7     mov   a,$f7
1123: d6 20 f1  mov   $f120+y,a
1126: fc        inc   y
1127: 30 1e     bmi   $1147
1129: 3e f4     cmp   x,$f4
112b: f0 fc     beq   $1129
112d: f8 f4     mov   x,$f4
112f: 10 de     bpl   $110f
1131: 3e f4     cmp   x,$f4
1133: d0 f8     bne   $112d
1135: c8 e0     cmp   x,#$e0
1137: f0 2d     beq   $1166
1139: c8 ff     cmp   x,#$ff
113b: d0 ec     bne   $1129
113d: e8 f0     mov   a,#$f0
113f: 2e f5 e7  cbne  $f5,$1128
1142: c4 8f     mov   $8f,a
1144: 5f b0 12  jmp   $12b0

1147: dd        mov   a,y
1148: 28 7f     and   a,#$7f
114a: fd        mov   y,a
114b: e5 16 11  mov   a,$1116
114e: 48 80     eor   a,#$80
1150: 30 09     bmi   $115b
1152: ac 17 11  inc   $1117
1155: ac 1f 11  inc   $111f
1158: ac 25 11  inc   $1125
115b: c5 16 11  mov   $1116,a
115e: c5 1e 11  mov   $111e,a
1161: c5 24 11  mov   $1124,a
1164: 2f c3     bra   $1129
1166: 6f        ret

1167: ba 94     movw  ya,$94
1169: c5 80 11  mov   $1180,a
116c: cc 81 11  mov   $1181,y
116f: c5 88 11  mov   $1188,a
1172: cc 89 11  mov   $1189,y
1175: 8d 00     mov   y,#$00
1177: 2f 04     bra   $117d
1179: 3e f4     cmp   x,$f4
117b: d0 1a     bne   $1197
117d: e4 f5     mov   a,$f5
117f: d6 c0 1f  mov   $1fc0+y,a
1182: fc        inc   y
1183: e4 f6     mov   a,$f6
1185: d8 f4     mov   $f4,x
1187: d6 c0 1f  mov   $1fc0+y,a
118a: fc        inc   y
118b: d0 06     bne   $1193
118d: ac 81 11  inc   $1181
1190: ac 89 11  inc   $1189
1193: 3e f4     cmp   x,$f4
1195: f0 fc     beq   $1193
1197: f8 f4     mov   x,$f4
1199: 10 de     bpl   $1179
119b: 3e f4     cmp   x,$f4
119d: d0 f8     bne   $1197
119f: c8 e0     cmp   x,#$e0
11a1: f0 0e     beq   $11b1
11a3: c8 ff     cmp   x,#$ff
11a5: d0 ec     bne   $1193
11a7: e8 f0     mov   a,#$f0
11a9: 2e f5 e7  cbne  $f5,$1192
11ac: c4 8f     mov   $8f,a
11ae: 5f b0 12  jmp   $12b0

11b1: 6f        ret

11b2: 8d 00     mov   y,#$00
11b4: 2f 04     bra   $11ba
11b6: 3e f4     cmp   x,$f4
11b8: d0 0f     bne   $11c9
11ba: e4 f5     mov   a,$f5
11bc: d8 f4     mov   $f4,x
11be: d7 94     mov   ($94)+y,a
11c0: fc        inc   y
11c1: d0 02     bne   $11c5
11c3: ab 95     inc   $95
11c5: 3e f4     cmp   x,$f4
11c7: f0 fc     beq   $11c5
11c9: f8 f4     mov   x,$f4
11cb: 10 e9     bpl   $11b6
11cd: 3e f4     cmp   x,$f4
11cf: d0 f8     bne   $11c9
11d1: c8 e0     cmp   x,#$e0
11d3: f0 0e     beq   $11e3
11d5: c8 ff     cmp   x,#$ff
11d7: d0 ec     bne   $11c5
11d9: e8 f0     mov   a,#$f0
11db: 2e f5 e7  cbne  $f5,$11c4
11de: c4 8f     mov   $8f,a
11e0: 5f b0 12  jmp   $12b0

11e3: 6f        ret

11e4: d8 f4     mov   $f4,x
11e6: 3e f4     cmp   x,$f4
11e8: f0 fc     beq   $11e6
11ea: f8 f4     mov   x,$f4
11ec: 3e f4     cmp   x,$f4
11ee: d0 fa     bne   $11ea
11f0: 7d        mov   a,x
11f1: 10 f1     bpl   $11e4
11f3: c8 e0     cmp   x,#$e0
11f5: f0 0e     beq   $1205
11f7: c8 ff     cmp   x,#$ff
11f9: d0 e9     bne   $11e4
11fb: e8 f0     mov   a,#$f0
11fd: 2e f5 e4  cbne  $f5,$11e3
1200: c4 8f     mov   $8f,a
1202: 5f b0 12  jmp   $12b0

1205: 6f        ret

1206: ba f6     movw  ya,$f6
1208: da 96     movw  $96,ya
120a: d8 f4     mov   $f4,x
120c: 3f 75 12  call  $1275
120f: b0 63     bcs   $1274
1211: ba f6     movw  ya,$f6
1213: da 9c     movw  $9c,ya
1215: d8 f4     mov   $f4,x
1217: ba 94     movw  ya,$94
1219: c5 2d 12  mov   $122d,a
121c: cc 2e 12  mov   $122e,y
121f: ba 96     movw  ya,$96
1221: c5 30 12  mov   $1230,a
1224: cc 31 12  mov   $1231,y
1227: dd        mov   a,y
1228: f0 18     beq   $1242
122a: 8d 00     mov   y,#$00
122c: f6 5b 91  mov   a,$915b+y
122f: d6 f9 4a  mov   $4af9+y,a
1232: fc        inc   y
1233: d0 f7     bne   $122c
1235: ab 95     inc   $95
1237: ab 97     inc   $97
1239: ac 2e 12  inc   $122e
123c: ac 31 12  inc   $1231
123f: 6e 9d ea  dbnz  $9d,$122b
1242: 1a 94     decw  $94
1244: 1a 96     decw  $96
1246: ba 94     movw  ya,$94
1248: c5 5b 12  mov   $125b,a
124b: cc 5c 12  mov   $125c,y
124e: ba 96     movw  ya,$96
1250: c5 5e 12  mov   $125e,a
1253: cc 5f 12  mov   $125f,y
1256: eb 9c     mov   y,$9c
1258: f0 08     beq   $1262
125a: f6 5a 91  mov   a,$915a+y
125d: d6 f8 4a  mov   $4af8+y,a
1260: fe f8     dbnz  y,$125a
1262: 3f 75 12  call  $1275
1265: b0 0d     bcs   $1274
1267: ba f6     movw  ya,$f6
1269: da 94     movw  $94,ya
126b: d8 f4     mov   $f4,x
126d: 3f 75 12  call  $1275
1270: b0 02     bcs   $1274
1272: 2f 92     bra   $1206
1274: 6f        ret

1275: 3e f4     cmp   x,$f4
1277: f0 fc     beq   $1275
1279: f8 f4     mov   x,$f4
127b: 3e f4     cmp   x,$f4
127d: d0 fa     bne   $1279
127f: c8 e0     cmp   x,#$e0
1281: f0 0d     beq   $1290
1283: e8 ff     mov   a,#$ff
1285: 8d f0     mov   y,#$f0
1287: 5a f4     cmpw  ya,$f4
1289: d0 07     bne   $1292
128b: cb 8f     mov   $8f,y
128d: 5f b0 12  jmp   $12b0

1290: 80        setc
1291: 8d 60     mov   y,#$60
1293: 6f        ret

1294: e4 8f     mov   a,$8f
1296: 60        clrc
1297: 88 ff     adc   a,#$ff
1299: ca 89 a0  mov1  $1411,1,c
129c: b0 04     bcs   $12a2
129e: e8 2a     mov   a,#$2a
12a0: 2f 02     bra   $12a4
12a2: e8 01     mov   a,#$01
12a4: 8f 06 f1  mov   $f1,#$06
12a7: c4 fa     mov   $fa,a
12a9: 8f 07 f1  mov   $f1,#$07
12ac: 6f        ret

12ad: c4 de     mov   $de,a
12af: 6f        ret

12b0: e4 8f     mov   a,$8f
12b2: 68 01     cmp   a,#$01
12b4: d0 09     bne   $12bf
12b6: e4 90     mov   a,$90
12b8: 60        clrc
12b9: 88 ff     adc   a,#$ff
12bb: ca 89 e0  mov1  $1c11,1,c
12be: 6f        ret

12bf: 68 f0     cmp   a,#$f0
12c1: d0 fb     bne   $12be
12c3: e8 e0     mov   a,#$e0
12c5: 8d 6c     mov   y,#$6c
12c7: 3f 05 07  call  $0705
12ca: 8f 80 f1  mov   $f1,#$80
12cd: 5f c0 ff  jmp   $ffc0

; vcmd e5,e7 - nop
12d0: 6f        ret

12d1: c4 c1     mov   $c1,a
12d3: dd        mov   a,y
12d4: 60        clrc
12d5: 84 c1     adc   a,$c1
12d7: e3 c1 05  bbs7  $c1,$12de
12da: 90 07     bcc   $12e3
12dc: e8 ff     mov   a,#$ff
12de: 6f        ret

12df: b0 02     bcs   $12e3
12e1: e8 00     mov   a,#$00
12e3: 6f        ret

12e4: eb 8f     mov   y,$8f
12e6: e4 90     mov   a,$90
12e8: 5f 05 07  jmp   $0705

12eb: 8f 00 e3  mov   $e3,#$00
12ee: e6        mov   a,(x)
12ef: f0 16     beq   $1307
12f1: e4 83     mov   a,$83
12f3: 2f 0c     bra   $1301
12f5: eb fe     mov   y,$fe
12f7: d0 07     bne   $1300
12f9: 2d        push  a
12fa: 3f f4 07  call  $07f4
12fd: ae        pop   a
12fe: 2f f5     bra   $12f5
1300: bc        inc   a
1301: 66        cmp   a,(x)
1302: 90 f1     bcc   $12f5
1304: 3f 2f 08  call  $082f
1307: 6f        ret

1308: 3f 44 13  call  $1344
130b: 8f 00 83  mov   $83,#$00
130e: e4 82     mov   a,$82
1310: f0 01     beq   $1313
1312: 6f        ret

1313: 32 89     clr1  $89
1315: 5f 89 13  jmp   $1389

1318: e4 fe     mov   a,$fe
131a: 60        clrc
131b: 84 83     adc   a,$83
131d: c4 83     mov   $83,a
131f: 6f        ret

1320: e4 8f     mov   a,$8f
1322: 28 0f     and   a,#$0f
1324: 64 81     cmp   a,$81
1326: f0 1b     beq   $1343
1328: 8f 00 83  mov   $83,#$00
132b: c4 81     mov   $81,a
132d: 3f 44 13  call  $1344
1330: cd 82     mov   x,#$82
1332: 3f eb 12  call  $12eb
1335: 3f 89 13  call  $1389
1338: cd 81     mov   x,#$81
133a: 3f eb 12  call  $12eb
133d: e4 53     mov   a,$53
133f: d0 02     bne   $1343
1341: c4 4f     mov   $4f,a
1343: 6f        ret

1344: 8f 6c f2  mov   $f2,#$6c
1347: e4 f3     mov   a,$f3
1349: 08 20     or    a,#$20
134b: c4 f3     mov   $f3,a
134d: e8 00     mov   a,#$00
134f: 8d 4d     mov   y,#$4d
1351: 3f 05 07  call  $0705
1354: 8d 0d     mov   y,#$0d
1356: 3f 05 07  call  $0705
1359: 8d 2c     mov   y,#$2c
135b: 3f 05 07  call  $0705
135e: 8d 3c     mov   y,#$3c
1360: 3f 05 07  call  $0705
1363: 8d 7d     mov   y,#$7d
1365: cb f2     mov   $f2,y
1367: e4 f3     mov   a,$f3
1369: 28 0f     and   a,#$0f
136b: c4 82     mov   $82,a
136d: e4 81     mov   a,$81
136f: 3f 05 07  call  $0705
1372: 1c        asl   a
1373: 1c        asl   a
1374: 1c        asl   a
1375: 48 ff     eor   a,#$ff
1377: bc        inc   a
1378: 60        clrc
1379: 88 f1     adc   a,#$f1
137b: 8d 6d     mov   y,#$6d
137d: 3f 05 07  call  $0705
1380: 8f 05 f1  mov   $f1,#$05
1383: eb fe     mov   y,$fe
1385: 8f 07 f1  mov   $f1,#$07
1388: 6f        ret

1389: 8f 05 f1  mov   $f1,#$05
138c: eb fe     mov   y,$fe
138e: 8f 07 f1  mov   $f1,#$07
1391: 8f 6c f2  mov   $f2,#$6c
1394: e4 f3     mov   a,$f3
1396: 28 df     and   a,#$df
1398: c4 f3     mov   $f3,a
139a: 6f        ret

139b: fa c8 c7  mov   ($c7),($c8)
139e: e8 00     mov   a,#$00
13a0: c4 94     mov   $94,a
13a2: e8 f2     mov   a,#$f2
13a4: c4 95     mov   $95,a
13a6: e8 00     mov   a,#$00
13a8: c4 96     mov   $96,a
13aa: e8 f8     mov   a,#$f8
13ac: c4 97     mov   $97,a
13ae: 8d 00     mov   y,#$00
13b0: f7 94     mov   a,($94)+y
13b2: d7 96     mov   ($96)+y,a
13b4: fc        inc   y
13b5: d0 f9     bne   $13b0
13b7: ab 95     inc   $95
13b9: ab 97     inc   $97
13bb: 78 f8 95  cmp   $95,#$f8
13be: d0 f0     bne   $13b0
13c0: 1a 96     decw  $96
13c2: 8d 80     mov   y,#$80
13c4: f6 ff ff  mov   a,$ffff+y
13c7: d7 96     mov   ($96)+y,a
13c9: fe f9     dbnz  y,$13c4
13cb: ab 97     inc   $97
13cd: 8d 90     mov   y,#$90
13cf: f6 ff 00  mov   a,$00ff+y
13d2: d7 96     mov   ($96)+y,a
13d4: fe f9     dbnz  y,$13cf
13d6: 6f        ret

13d7: 8f ff c7  mov   $c7,#$ff
13da: e8 00     mov   a,#$00
13dc: c4 94     mov   $94,a
13de: e8 f2     mov   a,#$f2
13e0: c4 95     mov   $95,a
13e2: e8 00     mov   a,#$00
13e4: c4 96     mov   $96,a
13e6: e8 f8     mov   a,#$f8
13e8: c4 97     mov   $97,a
13ea: 8d 00     mov   y,#$00
13ec: f7 96     mov   a,($96)+y
13ee: d7 94     mov   ($94)+y,a
13f0: fc        inc   y
13f1: d0 f9     bne   $13ec
13f3: ab 95     inc   $95
13f5: ab 97     inc   $97
13f7: 78 f8 95  cmp   $95,#$f8
13fa: d0 f0     bne   $13ec
13fc: 1a 96     decw  $96
13fe: 8d 80     mov   y,#$80
1400: f7 96     mov   a,($96)+y
1402: d6 ff ff  mov   $ffff+y,a
1405: fe f9     dbnz  y,$1400
1407: ab 97     inc   $97
1409: 8d 90     mov   y,#$90
140b: f7 96     mov   a,($96)+y
140d: d6 ff 00  mov   $00ff+y,a
1410: fe f9     dbnz  y,$140b
1412: 8d 10     mov   y,#$10
1414: e8 08     mov   a,#$08
1416: d6 9e f1  mov   $f19e+y,a
1419: e8 00     mov   a,#$00
141b: d6 5e f1  mov   $f15e+y,a
141e: d6 5f f1  mov   $f15f+y,a
1421: e8 e0     mov   a,#$e0
1423: d6 7e f1  mov   $f17e+y,a
1426: e8 1f     mov   a,#$1f
1428: d6 7f f1  mov   $f17f+y,a
142b: dc        dec   y
142c: fe e6     dbnz  y,$1414
142e: 6f        ret

142f: e8 9c     mov   a,#$9c
1431: c4 a1     mov   $a1,a
1433: e8 ca     mov   a,#$ca
1435: 8f 00 a5  mov   $a5,#$00
1438: 60        clrc
1439: 8f 09 92  mov   $92,#$09
143c: 83 89 02  bbs4  $89,$1440
143f: 2f 06     bra   $1447
1441: 88 08     adc   a,#$08
1443: c2 92     set6  $92
1445: e2 a5     set7  $a5
1447: c4 a2     mov   $a2,a
1449: 88 08     adc   a,#$08
144b: c4 a4     mov   $a4,a
144d: f8 a2     mov   x,$a2
144f: eb 92     mov   y,$92
1451: cb f2     mov   $f2,y
1453: eb f3     mov   y,$f3
1455: cb a3     mov   $a3,y
1457: bf        mov   a,(x)+
1458: 1c        asl   a
1459: cf        mul   ya
145a: dd        mov   a,y
145b: 28 70     and   a,#$70
145d: c4 a0     mov   $a0,a
145f: eb a3     mov   y,$a3
1461: bf        mov   a,(x)+
1462: 1c        asl   a
1463: cf        mul   ya
1464: dd        mov   a,y
1465: d8 a2     mov   $a2,x
1467: f8 a1     mov   x,$a1
1469: 9f        xcn   a
146a: 28 07     and   a,#$07
146c: 04 a0     or    a,$a0
146e: 04 a5     or    a,$a5
1470: af        mov   (x)+,a
1471: d8 a1     mov   $a1,x
1473: 60        clrc
1474: 98 10 92  adc   $92,#$10
1477: f8 a2     mov   x,$a2
1479: 3e a4     cmp   x,$a4
147b: d0 d2     bne   $144f
147d: ba 9c     movw  ya,$9c
147f: da f4     movw  $f4,ya
1481: ba 9e     movw  ya,$9e
1483: da f6     movw  $f6,ya
1485: ea 89 80  not1  $1011,1
1488: 6f        ret

1489: cd 20     mov   x,#$20
148b: 8f 80 92  mov   $92,#$80
148e: f5 9e f1  mov   a,$f19e+x
1491: f0 1f     beq   $14b2
1493: 9c        dec   a
1494: d5 9e f1  mov   $f19e+x,a
1497: f5 5e f1  mov   a,$f15e+x
149a: 60        clrc
149b: 95 7e f1  adc   a,$f17e+x
149e: d5 5e f1  mov   $f15e+x,a
14a1: f5 5f f1  mov   a,$f15f+x
14a4: 95 7f f1  adc   a,$f17f+x
14a7: 75 5f f1  cmp   a,$f15f+x
14aa: d5 5f f1  mov   $f15f+x,a
14ad: f0 03     beq   $14b2
14af: 09 92 dc  or    ($dc),($92)
14b2: 4b 92     lsr   $92
14b4: d0 02     bne   $14b8
14b6: e2 92     set7  $92
14b8: 1d        dec   x
14b9: 1d        dec   x
14ba: d0 d2     bne   $148e
14bc: e4 b9     mov   a,$b9
14be: f0 08     beq   $14c8
14c0: 8b b9     dec   $b9
14c2: ba b7     movw  ya,$b7
14c4: 7a b5     addw  ya,$b5
14c6: da b5     movw  $b5,ya
14c8: e4 c0     mov   a,$c0
14ca: f0 0f     beq   $14db
14cc: 8b c0     dec   $c0
14ce: ba be     movw  ya,$be
14d0: 7a ba     addw  ya,$ba
14d2: 7e bb     cmp   y,$bb
14d4: da ba     movw  $ba,ya
14d6: f0 03     beq   $14db
14d8: 09 53 dd  or    ($dd),($53)
14db: 6f        ret

14dc: dw $11e4
14de: dw $11b2
14e0: dw $1167
14e2: dw $10f7
14e4: dw $11e4
14e6: dw $11e4
14e8: dw $11e4
14ea: dw $1206

; vcmd dispatch table
14ec: dw $16f7  ; c4
14ee: dw $1708  ; c5
14f0: dw $1752  ; c6
14f2: dw $1762  ; c7
14f4: dw $1782  ; c8
14f6: dw $17fe  ; c9
14f8: dw $18bc  ; ca
14fa: dw $18c6  ; cb
14fc: dw $191a  ; cc
14fe: dw $1924  ; cd
1500: dw $197a  ; ce
1502: dw $1a0d  ; cf
1504: dw $19cf  ; d0
1506: dw $19fd  ; d1
1508: dw $1a2d  ; d2
150a: dw $1a4c  ; d3
150c: dw $19a1  ; d4
150e: dw $19bf  ; d5
1510: dw $199a  ; d6
1512: dw $1986  ; d7
1514: dw $1990  ; d8
1516: dw $1791  ; d9
1518: dw $178d  ; da
151a: dw $1c8b  ; db
151c: dw $1a66  ; dc
151e: dw $1a93  ; dd
1520: dw $1ac3  ; de
1522: dw $1ad6  ; df
1524: dw $1ae8  ; e0
1526: dw $1af8  ; e1
1528: dw $1bfd  ; e2
1529: dw $1c2d  ; e3
152c: dw $1b0b  ; e4
152e: dw $12d0  ; e5 - nop
1530: dw $1b33  ; e6
1532: dw $12d0  ; e7 - nop
1534: dw $1c88  ; e8
1536: dw $1b41  ; e9
1538: dw $1b45  ; ea
153a: dw $1cdf  ; eb
153c: dw $1cdf  ; ec
153e: dw $1cdf  ; ed
1540: dw $1cdf  ; ee
1542: dw $0e41  ; ef
1544: dw $16ba  ; f0
1546: dw $16ca  ; f1
1548: dw $1729  ; f2
154a: dw $1732  ; f3
154c: dw $16e9  ; f4
154e: dw $1ba2  ; f5
1550: dw $1b87  ; f6
1552: dw $1795  ; f7
1554: dw $17b6  ; f8
1556: dw $1c8f  ; f9
1558: dw $1c92  ; fa
155a: dw $1a5c  ; fb
155c: dw $1a60  ; fc
155e: dw $16ef  ; fd
1560: dw $1cdf  ; fe
1562: dw $1cdf  ; ff

; vcmd oplens
1564: db                 $01,$02,$01,$02,$02,$03,$00,$03,$00,$02,$00,$01
1570: db $00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$01,$01,$01,$01,$01,$01
1580: db $01,$00,$01,$00,$00,$00,$00,$00,$01,$01,$01,$00,$00,$00,$00,$00
1590: db $01,$02,$01,$02,$01,$03,$02,$02,$02,$01,$03,$00,$00,$01,$00,$00

; readahead dispatch tbl?
15a0: dw                         $0000,$0000,$0000,$0000
15a8: dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
15b8: dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
15c8: dw $0000,$0000,$0000,$0000,$1b1f,$0000,$0000,$0000
15d8: dw $0000,$0000,$0000,$1c62,$1b1f,$1b1f,$1b1f,$1b1f
15e8: dw $0000,$1b72,$1b76,$0000,$0000,$0000,$0000,$0000
15f8: dw $0000,$0000,$0000,$0000,$0000,$1bd2,$1b95,$0000
1608: dw $0000,$0000,$1cbd,$0000,$0000,$0000,$0000,$0000

1618: dw $0b51
161a: dw $0b59
161c: dw $12d0
161e: dw $12d0
1620: dw $0b4e
1622: dw $0b56
1624: dw $12d0
1626: dw $12d0
1628: dw $0cdf
162a: dw $0cf1
162c: dw $12d0
162e: dw $12d0
1630: dw $0db3
1632: dw $0dbe
1634: dw $12d0
1636: dw $12d0

1638: dw $0cc3
163a: dw $0cc3
163c: dw $0000
163e: dw $0000
1640: dw $0cc3
1642: dw $0cc3
1644: dw $0000
1646: dw $0000
1648: dw $0000
164a: dw $0000
164c: dw $0000
164e: dw $0000
1650: dw $0000
1652: dw $0000
1654: dw $0000
1656: dw $0000

1658: dw $0eb7
165a: dw $0ec0
165c: dw $0ecf
165e: dw $0edc
1660: dw $12d0
1662: dw $0f36
1664: dw $0f39
1666: dw $0f61
1668: dw $12ad
166a: dw $12d0
166c: dw $12d0
166e: dw $12d0
1670: dw $12d0
1672: dw $12d0
1674: dw $12d0
1676: dw $12d0
1678: dw $0f9b
167a: dw $0fa4
167c: dw $0fc9
167e: dw $0f8d
1680: dw $1032
1682: dw $1039
1684: dw $1294
1686: dw $12d0
1688: dw $12d0
168a: dw $12d0
168c: dw $12d0
168e: dw $12d0
1690: dw $1320
1692: dw $12e4
1694: dw $1089
1698: dw $12b0

169a: db $4c,$2d,$3d,$6c,$5c,$4d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f
16a9: db $22,$8c,$8b,$8d,$23,$8a,$4f,$4f,$76,$66,$68,$6a,$6c,$6e,$70,$72,$74

; vcmd f0
16ba: 8d 14     mov   y,#$14
16bc: cf        mul   ya
16bd: dd        mov   a,y
16be: 60        clrc
16bf: 84 a6     adc   a,$a6
16c1: c4 47     mov   $47,a
16c3: e8 00     mov   a,#$00
16c5: c4 46     mov   $46,a
16c7: c4 4a     mov   $4a,a
16c9: 6f        ret

; vcmd f1
16ca: c4 4a     mov   $4a,a
16cc: c4 8f     mov   $8f,a
16ce: 3f b5 06  call  $06b5
16d1: eb 8f     mov   y,$8f
16d3: f0 e5     beq   $16ba
16d5: 8d 14     mov   y,#$14
16d7: cf        mul   ya
16d8: dd        mov   a,y
16d9: 60        clrc
16da: 84 a6     adc   a,$a6
16dc: 80        setc
16dd: a4 47     sbc   a,$47
16df: f0 e6     beq   $16c7
16e1: 3f 16 0f  call  $0f16
16e4: f8 a7     mov   x,$a7
16e6: da 4b     movw  $4b,ya
16e8: 6f        ret

; vcmd f4
16e9: c4 4d     mov   $4d,a
16eb: 09 53 dc  or    ($dc),($53)
16ee: 6f        ret

; vcmd fd
16ef: 1c        asl   a
16f0: d5 20 f2  mov   $f220+x,a
16f3: 09 92 dc  or    ($dc),($92)
16f6: 6f        ret

; vcmd c4
16f7: 28 7f     and   a,#$7f
16f9: d5 41 f2  mov   $f241+x,a
16fc: e8 00     mov   a,#$00
16fe: d5 40 f2  mov   $f240+x,a
1701: 09 92 dc  or    ($dc),($92)
1704: d5 c0 f2  mov   $f2c0+x,a
1707: 6f        ret

; vcmd c5
1708: d5 c0 f2  mov   $f2c0+x,a
170b: c4 8f     mov   $8f,a
170d: 3f b5 06  call  $06b5
1710: 28 7f     and   a,#$7f
1712: eb 8f     mov   y,$8f
1714: f0 e1     beq   $16f7
1716: 80        setc
1717: b5 41 f2  sbc   a,$f241+x
171a: f0 e8     beq   $1704
171c: 3f 16 0f  call  $0f16
171f: f8 a7     mov   x,$a7
1721: d5 60 f2  mov   $f260+x,a
1724: dd        mov   a,y
1725: d5 61 f2  mov   $f261+x,a
1728: 6f        ret

; vcmd f2
1729: c4 4f     mov   $4f,a
172b: e8 00     mov   a,#$00
172d: c4 4e     mov   $4e,a
172f: c4 52     mov   $52,a
1731: 6f        ret

; vcmd f3
1732: c4 52     mov   $52,a
1734: c4 8f     mov   $8f,a
1736: 3f b5 06  call  $06b5
1739: eb 8f     mov   y,$8f
173b: f0 ec     beq   $1729
173d: 48 80     eor   a,#$80
173f: ea 4f e0  not1  $1c09,7
1742: 80        setc
1743: a4 4f     sbc   a,$4f
1745: ea 4f e0  not1  $1c09,7
1748: f0 e5     beq   $172f
174a: 3f 16 0f  call  $0f16
174d: f8 a7     mov   x,$a7
174f: da 50     movw  $50,ya
1751: 6f        ret

; vcmd c6
1752: 1c        asl   a
1753: d5 81 f2  mov   $f281+x,a
1756: e8 00     mov   a,#$00
1758: d5 80 f2  mov   $f280+x,a
175b: 09 92 dc  or    ($dc),($92)
175e: d5 c1 f2  mov   $f2c1+x,a
1761: 6f        ret

; vcmd c7
1762: d5 c1 f2  mov   $f2c1+x,a
1765: c4 8f     mov   $8f,a
1767: 3f b5 06  call  $06b5
176a: eb 8f     mov   y,$8f
176c: f0 e4     beq   $1752
176e: 1c        asl   a
176f: 80        setc
1770: b5 81 f2  sbc   a,$f281+x
1773: f0 e9     beq   $175e
1775: 3f 16 0f  call  $0f16
1778: f8 a7     mov   x,$a7
177a: d5 a0 f2  mov   $f2a0+x,a
177d: dd        mov   a,y
177e: d5 a1 f2  mov   $f2a1+x,a
1781: 6f        ret

; vcmd c8
1782: bc        inc   a
1783: d5 60 f3  mov   $f360+x,a
1786: 3f b5 06  call  $06b5
1789: d5 50 01  mov   $0150+x,a
178c: 6f        ret

; vcmd da
178d: 60        clrc
178e: 95 61 f3  adc   a,$f361+x
; vcmd d9
1791: d5 61 f3  mov   $f361+x,a
1794: 6f        ret

; vcmd f7
1795: c4 78     mov   $78,a
1797: c4 8f     mov   $8f,a
1799: 3f b5 06  call  $06b5
179c: eb 8f     mov   y,$8f
179e: f0 13     beq   $17b3
17a0: 48 80     eor   a,#$80
17a2: ea 76 e0  not1  $1c0e,6
17a5: 80        setc
17a6: a4 76     sbc   a,$76
17a8: ea 76 e0  not1  $1c0e,6
17ab: 3f 16 0f  call  $0f16
17ae: f8 a7     mov   x,$a7
17b0: da 79     movw  $79,ya
17b2: 6f        ret

17b3: c4 76     mov   $76,a
17b5: 6f        ret

; vcmd f8
17b6: c4 77     mov   $77,a
17b8: c4 8f     mov   $8f,a
17ba: 3f b5 06  call  $06b5
17bd: 28 03     and   a,#$03
17bf: bc        inc   a
17c0: 1c        asl   a
17c1: 1c        asl   a
17c2: 1c        asl   a
17c3: fd        mov   y,a
17c4: cd 10     mov   x,#$10
17c6: e4 8f     mov   a,$8f
17c8: f0 27     beq   $17f1
17ca: e8 00     mov   a,#$00
17cc: d4 63     mov   $63+x,a
17ce: f4 64     mov   a,$64+x
17d0: 48 80     eor   a,#$80
17d2: c4 9c     mov   $9c,a
17d4: f6 27 1d  mov   a,$1d27+y
17d7: 48 80     eor   a,#$80
17d9: 80        setc
17da: a4 9c     sbc   a,$9c
17dc: 6d        push  y
17dd: 4d        push  x
17de: 3f 16 0f  call  $0f16
17e1: ce        pop   x
17e2: d5 fe 00  mov   $00fe+x,a
17e5: dd        mov   a,y
17e6: d5 ff 00  mov   $00ff+x,a
17e9: ee        pop   y
17ea: dc        dec   y
17eb: 1d        dec   x
17ec: 1d        dec   x
17ed: d0 db     bne   $17ca
17ef: 2f 0a     bra   $17fb
17f1: f6 27 1d  mov   a,$1d27+y
17f4: d4 64     mov   $64+x,a
17f6: dc        dec   y
17f7: 1d        dec   x
17f8: 1d        dec   x
17f9: d0 f6     bne   $17f1
17fb: f8 a7     mov   x,$a7
17fd: 6f        ret

; vcmd c9
17fe: c8 10     cmp   x,#$10
1800: 90 08     bcc   $180a
1802: 8d 00     mov   y,#$00
1804: cd 0c     mov   x,#$0c
1806: 9e        div   ya,x
1807: f8 a7     mov   x,$a7
1809: dd        mov   a,y
180a: d5 10 01  mov   $0110+x,a
180d: 3f b5 06  call  $06b5
1810: d5 e0 f2  mov   $f2e0+x,a
1813: c4 9c     mov   $9c,a
1815: 3f b5 06  call  $06b5
1818: d5 51 01  mov   $0151+x,a
181b: 3f 6c 18  call  $186c
181e: f8 a7     mov   x,$a7
1820: e4 9c     mov   a,$9c
1822: d5 00 f4  mov   $f400+x,a
1825: e4 9d     mov   a,$9d
1827: d5 01 f4  mov   $f401+x,a
182a: e8 00     mov   a,#$00
182c: d5 00 f5  mov   $f500+x,a
182f: d5 01 f5  mov   $f501+x,a
1832: d5 80 f4  mov   $f480+x,a
1835: d5 81 f4  mov   $f481+x,a
1838: f5 e0 f2  mov   a,$f2e0+x
183b: d5 e1 f2  mov   $f2e1+x,a
183e: f5 01 f4  mov   a,$f401+x
1841: fd        mov   y,a
1842: f5 00 f4  mov   a,$f400+x
1845: da 9c     movw  $9c,ya
1847: f5 21 f2  mov   a,$f221+x
184a: 28 70     and   a,#$70
184c: fd        mov   y,a
184d: c8 10     cmp   x,#$10
184f: 90 04     bcc   $1855
1851: e8 00     mov   a,#$00
1853: 2f 03     bra   $1858
1855: f5 10 01  mov   a,$0110+x
1858: d5 11 01  mov   $0111+x,a
185b: 3f 96 18  call  $1896
185e: d5 21 f2  mov   $f221+x,a
1861: e4 9c     mov   a,$9c
1863: d5 20 f4  mov   $f420+x,a
1866: e4 9d     mov   a,$9d
1868: d5 21 f4  mov   $f421+x,a
186b: 6f        ret

186c: 28 3f     and   a,#$3f
186e: bc        inc   a
186f: 8d 00     mov   y,#$00
1871: cb 9d     mov   $9d,y
1873: f8 9c     mov   x,$9c
1875: f0 06     beq   $187d
1877: 9e        div   ya,x
1878: c4 9d     mov   $9d,a
187a: e8 00     mov   a,#$00
187c: 9e        div   ya,x
187d: c4 9c     mov   $9c,a
187f: 4b 9d     lsr   $9d
1881: 6b 9c     ror   $9c
1883: 4b 9d     lsr   $9d
1885: 6b 9c     ror   $9c
1887: ba 9c     movw  ya,$9c
1889: d0 02     bne   $188d
188b: ab 9c     inc   $9c
188d: 0b 9c     asl   $9c
188f: 2b 9d     rol   $9d
1891: 0b 9c     asl   $9c
1893: 2b 9d     rol   $9d
1895: 6f        ret

1896: 0d        push  psw
1897: f0 08     beq   $18a1
1899: 4b 9d     lsr   $9d
189b: 6b 9c     ror   $9c
189d: 4b 9d     lsr   $9d
189f: 6b 9c     ror   $9c
18a1: 78 80 a6  cmp   $a6,#$80
18a4: 90 0d     bcc   $18b3
18a6: 78 c0 a6  cmp   $a6,#$c0
18a9: b0 08     bcs   $18b3
18ab: 58 ff 9c  eor   $9c,#$ff
18ae: 58 ff 9d  eor   $9d,#$ff
18b1: 3a 9c     incw  $9c
18b3: 8e        pop   psw
18b4: f0 04     beq   $18ba
18b6: dd        mov   a,y
18b7: 08 07     or    a,#$07
18b9: 8d dd     mov   y,#$dd
18bb: 6f        ret

; vcmd ca
18bc: d5 51 01  mov   $0151+x,a
18bf: d5 00 f5  mov   $f500+x,a
18c2: d5 01 f5  mov   $f501+x,a
18c5: 6f        ret

; vcmd cb
18c6: d5 30 01  mov   $0130+x,a
18c9: 3f b5 06  call  $06b5
18cc: d5 20 f3  mov   $f320+x,a
18cf: c4 9c     mov   $9c,a
18d1: 3f b5 06  call  $06b5
18d4: d5 70 01  mov   $0170+x,a
18d7: 3f 6c 18  call  $186c
18da: f8 a7     mov   x,$a7
18dc: e4 9c     mov   a,$9c
18de: d5 40 f4  mov   $f440+x,a
18e1: e4 9d     mov   a,$9d
18e3: d5 41 f4  mov   $f441+x,a
18e6: e8 00     mov   a,#$00
18e8: d5 a0 f4  mov   $f4a0+x,a
18eb: d5 a1 f4  mov   $f4a1+x,a
18ee: f5 20 f3  mov   a,$f320+x
18f1: d5 21 f3  mov   $f321+x,a
18f4: f5 41 f4  mov   a,$f441+x
18f7: fd        mov   y,a
18f8: f5 40 f4  mov   a,$f440+x
18fb: da 9c     movw  $9c,ya
18fd: f5 21 f2  mov   a,$f221+x
1900: 28 70     and   a,#$70
1902: fd        mov   y,a
1903: f5 30 01  mov   a,$0130+x
1906: d5 31 01  mov   $0131+x,a
1909: 3f 96 18  call  $1896
190c: d5 21 f2  mov   $f221+x,a
190f: e4 9c     mov   a,$9c
1911: d5 60 f4  mov   $f460+x,a
1914: e4 9d     mov   a,$9d
1916: d5 61 f4  mov   $f461+x,a
1919: 6f        ret

; vcmd cc
191a: d5 70 01  mov   $0170+x,a
191d: d5 a0 f4  mov   $f4a0+x,a
1920: d5 a1 f4  mov   $f4a1+x,a
1923: 6f        ret

; vcmd cd
1924: 60        clrc
1925: bc        inc   a
1926: f0 08     beq   $1930
1928: 28 fe     and   a,#$fe
192a: d0 05     bne   $1931
192c: e8 02     mov   a,#$02
192e: 2f 01     bra   $1931
1930: 80        setc
1931: d5 40 f3  mov   $f340+x,a
1934: 7c        ror   a
1935: d5 41 f3  mov   $f341+x,a
1938: fd        mov   y,a
1939: 3f b5 06  call  $06b5
193c: 1c        asl   a
193d: e4 a6     mov   a,$a6
193f: 28 7f     and   a,#$7f
1941: 90 02     bcc   $1945
1943: 48 7f     eor   a,#$7f
1945: c4 9c     mov   $9c,a
1947: dd        mov   a,y
1948: 10 05     bpl   $194f
194a: 8f 00 9d  mov   $9d,#$00
194d: 2f 13     bra   $1962
194f: 5d        mov   x,a
1950: 8d 00     mov   y,#$00
1952: e4 9c     mov   a,$9c
1954: 9e        div   ya,x
1955: c4 9d     mov   $9d,a
1957: e8 00     mov   a,#$00
1959: 9e        div   ya,x
195a: c4 9c     mov   $9c,a
195c: ba 9c     movw  ya,$9c
195e: d0 02     bne   $1962
1960: ab 9c     inc   $9c
1962: 90 08     bcc   $196c
1964: 58 ff 9c  eor   $9c,#$ff
1967: 58 ff 9d  eor   $9d,#$ff
196a: 3a 9c     incw  $9c
196c: f8 a7     mov   x,$a7
196e: e4 9c     mov   a,$9c
1970: d5 e0 f3  mov   $f3e0+x,a
1973: e4 9d     mov   a,$9d
1975: d5 e1 f3  mov   $f3e1+x,a
1978: e4 a6     mov   a,$a6
; vcmd ce
197a: d5 71 01  mov   $0171+x,a
197d: e8 00     mov   a,#$00
197f: d5 c0 f4  mov   $f4c0+x,a
1982: d5 c1 f4  mov   $f4c1+x,a
1985: 6f        ret

; vcmd d7
1986: f5 00 f2  mov   a,$f200+x
1989: 60        clrc
198a: 88 0c     adc   a,#$0c
198c: d5 00 f2  mov   $f200+x,a
198f: 6f        ret

; vcmd d8
1990: f5 00 f2  mov   a,$f200+x
1993: 80        setc
1994: a8 0c     sbc   a,#$0c
1996: d5 00 f2  mov   $f200+x,a
1999: 6f        ret

; vcmd d6
199a: 8d 0c     mov   y,#$0c
199c: cf        mul   ya
199d: d5 00 f2  mov   $f200+x,a
19a0: 6f        ret

; vcmd d4
19a1: c8 10     cmp   x,#$10
19a3: b0 05     bcs   $19aa
19a5: 09 92 54  or    ($54),($92)
19a8: 2f 03     bra   $19ad
19aa: 09 92 55  or    ($55),($92)
19ad: 29 87 8a  and   ($8a),($87)
19b0: e4 86     mov   a,$86
19b2: 04 87     or    a,$87
19b4: 48 ff     eor   a,#$ff
19b6: 24 54     and   a,$54
19b8: 04 55     or    a,$55
19ba: 04 8a     or    a,$8a
19bc: c4 8a     mov   $8a,a
19be: 6f        ret

; vcmd d5
19bf: e4 92     mov   a,$92
19c1: c8 10     cmp   x,#$10
19c3: b0 05     bcs   $19ca
19c5: 4e 54 00  tclr1 $0054
19c8: 2f e3     bra   $19ad
19ca: 4e 55 00  tclr1 $0055
19cd: 2f de     bra   $19ad
; vcmd d0
19cf: c8 10     cmp   x,#$10
19d1: b0 05     bcs   $19d8
19d3: 09 92 56  or    ($56),($92)
19d6: 2f 03     bra   $19db
19d8: 09 92 57  or    ($57),($92)
19db: fa 57 9c  mov   ($9c),($57)
19de: 12 9c     clr0  $9c
19e0: e4 8d     mov   a,$8d
19e2: 28 e0     and   a,#$e0
19e4: eb 57     mov   y,$57
19e6: d0 04     bne   $19ec
19e8: 04 62     or    a,$62
19ea: 2f 02     bra   $19ee
19ec: 04 63     or    a,$63
19ee: c4 8d     mov   $8d,a
19f0: e4 86     mov   a,$86
19f2: 04 87     or    a,$87
19f4: 48 ff     eor   a,#$ff
19f6: 24 56     and   a,$56
19f8: 04 9c     or    a,$9c
19fa: c4 8b     mov   $8b,a
19fc: 6f        ret

; vcmd d1
19fd: e4 92     mov   a,$92
19ff: c8 10     cmp   x,#$10
1a01: b0 05     bcs   $1a08
1a03: 4e 56 00  tclr1 $0056
1a06: 2f d3     bra   $19db
1a08: 4e 57 00  tclr1 $0057
1a0b: 2f ce     bra   $19db
; vcmd cf
1a0d: 28 1f     and   a,#$1f
1a0f: c8 10     cmp   x,#$10
1a11: b0 0d     bcs   $1a20
1a13: 64 a6     cmp   a,$a6
1a15: f0 05     beq   $1a1c
1a17: 60        clrc
1a18: 84 62     adc   a,$62
1a1a: 28 1f     and   a,#$1f
1a1c: c4 62     mov   $62,a
1a1e: 2f bb     bra   $19db
1a20: 64 a6     cmp   a,$a6
1a22: f0 05     beq   $1a29
1a24: 60        clrc
1a25: 84 63     adc   a,$63
1a27: 28 1f     and   a,#$1f
1a29: c4 63     mov   $63,a
1a2b: 2f ae     bra   $19db
; vcmd d2
1a2d: c8 10     cmp   x,#$10
1a2f: b0 05     bcs   $1a36
1a31: 09 92 58  or    ($58),($92)
1a34: 2f 09     bra   $1a3f
1a36: e4 92     mov   a,$92
1a38: 28 50     and   a,#$50
1a3a: d0 03     bne   $1a3f
1a3c: 09 92 59  or    ($59),($92)
1a3f: e4 86     mov   a,$86
1a41: 04 87     or    a,$87
1a43: 48 ff     eor   a,#$ff
1a45: 24 58     and   a,$58
1a47: 04 59     or    a,$59
1a49: c4 8c     mov   $8c,a
1a4b: 6f        ret

; vcmd d3
1a4c: e4 92     mov   a,$92
1a4e: c8 10     cmp   x,#$10
1a50: b0 05     bcs   $1a57
1a52: 4e 58 00  tclr1 $0058
1a55: 2f e8     bra   $1a3f
1a57: 4e 59 00  tclr1 $0059
1a5a: 2f e3     bra   $1a3f
; vcmd fb
1a5c: 09 92 7c  or    ($7c),($92)
1a5f: 6f        ret

; vcmd fc
1a60: e4 92     mov   a,$92
1a62: 4e 7c 00  tclr1 $007c
1a65: 6f        ret

; vcmd dc
1a66: d5 01 f2  mov   $f201+x,a
1a69: 1c        asl   a
1a6a: fd        mov   y,a
1a6b: f6 00 1f  mov   a,$1f00+y
1a6e: d5 80 f3  mov   $f380+x,a
1a71: f6 01 1f  mov   a,$1f01+y
1a74: d5 81 f3  mov   $f381+x,a
1a77: f6 80 1f  mov   a,$1f80+y
1a7a: d5 40 f5  mov   $f540+x,a
1a7d: f6 81 1f  mov   a,$1f81+y
1a80: d5 41 f5  mov   $f541+x,a
1a83: 6f        ret

1a84: f5 01 f2  mov   a,$f201+x
1a87: fd        mov   y,a
1a88: 7d        mov   a,x
1a89: 9f        xcn   a
1a8a: 5c        lsr   a
1a8b: 08 04     or    a,#$04
1a8d: c4 f2     mov   $f2,a
1a8f: cb f3     mov   $f3,y
1a91: 2f 10     bra   $1aa3
; vcmd dd
1a93: 28 0f     and   a,#$0f
1a95: c4 a6     mov   $a6,a
1a97: f5 40 f5  mov   a,$f540+x
1a9a: 28 70     and   a,#$70
1a9c: 04 a6     or    a,$a6
1a9e: 08 80     or    a,#$80
1aa0: d5 40 f5  mov   $f540+x,a
1aa3: c8 10     cmp   x,#$10
1aa5: b0 09     bcs   $1ab0
1aa7: e4 86     mov   a,$86
1aa9: 04 87     or    a,$87
1aab: 24 92     and   a,$92
1aad: f0 01     beq   $1ab0
1aaf: 6f        ret

1ab0: 7d        mov   a,x
1ab1: 9f        xcn   a
1ab2: 5c        lsr   a
1ab3: 08 05     or    a,#$05
1ab5: fd        mov   y,a
1ab6: f5 40 f5  mov   a,$f540+x
1ab9: 3f 05 07  call  $0705
1abc: fc        inc   y
1abd: f5 41 f5  mov   a,$f541+x
1ac0: 5f 05 07  jmp   $0705

; vcmd de
1ac3: 28 07     and   a,#$07
1ac5: 9f        xcn   a
1ac6: c4 a6     mov   $a6,a
1ac8: f5 40 f5  mov   a,$f540+x
1acb: 28 0f     and   a,#$0f
1acd: 04 a6     or    a,$a6
1acf: 08 80     or    a,#$80
1ad1: d5 40 f5  mov   $f540+x,a
1ad4: 2f cd     bra   $1aa3
; vcmd df
1ad6: 28 07     and   a,#$07
1ad8: 9f        xcn   a
1ad9: 1c        asl   a
1ada: c4 a6     mov   $a6,a
1adc: f5 41 f5  mov   a,$f541+x
1adf: 28 1f     and   a,#$1f
1ae1: 04 a6     or    a,$a6
1ae3: d5 41 f5  mov   $f541+x,a
1ae6: 2f bb     bra   $1aa3
; vcmd e0
1ae8: 28 1f     and   a,#$1f
1aea: c4 a6     mov   $a6,a
1aec: f5 41 f5  mov   a,$f541+x
1aef: 28 e0     and   a,#$e0
1af1: 04 a6     or    a,$a6
1af3: d5 41 f5  mov   $f541+x,a
1af6: 2f ab     bra   $1aa3
; vcmd e1
1af8: f5 01 f2  mov   a,$f201+x
1afb: 1c        asl   a
1afc: fd        mov   y,a
1afd: f6 80 1f  mov   a,$1f80+y
1b00: d5 40 f5  mov   $f540+x,a
1b03: f6 81 1f  mov   a,$1f81+y
1b06: d5 41 f5  mov   $f541+x,a
1b09: 2f 98     bra   $1aa3
; vcmd e4
1b0b: e4 92     mov   a,$92
1b0d: c8 10     cmp   x,#$10
1b0f: b0 07     bcs   $1b18
1b11: 0e 5c 00  tset1 $005c
1b14: 4e 5e 00  tclr1 $005e
1b17: 6f        ret

1b18: 0e 5d 00  tset1 $005d
1b1b: 4e 5f 00  tclr1 $005f
1b1e: 6f        ret

1b1f: e4 92     mov   a,$92
1b21: c8 10     cmp   x,#$10
1b23: b0 07     bcs   $1b2c
1b25: 4e 5c 00  tclr1 $005c
1b28: 4e 60 00  tclr1 $0060
1b2b: 6f        ret

1b2c: 4e 5d 00  tclr1 $005d
1b2f: 4e 61 00  tclr1 $0061
1b32: 6f        ret

; vcmd e6
1b33: e4 92     mov   a,$92
1b35: c8 10     cmp   x,#$10
1b37: b0 04     bcs   $1b3d
1b39: 0e 60 00  tset1 $0060
1b3c: 6f        ret

1b3d: 0e 61 00  tset1 $0061
1b40: 6f        ret

; vcmd e9
1b41: 8d 00     mov   y,#$00
1b43: 2f 02     bra   $1b47
; vcmd ea
1b45: 8d 02     mov   y,#$02
1b47: 3f 55 1b  call  $1b55
1b4a: d4 02     mov   $02+x,a
1b4c: db 03     mov   $03+x,y
1b4e: dd        mov   a,y
1b4f: d0 03     bne   $1b54
1b51: 5f df 1c  jmp   $1cdf

1b54: 6f        ret

1b55: 8f 00 97  mov   $97,#$00
1b58: 1c        asl   a
1b59: 2b 97     rol   $97
1b5b: 1c        asl   a
1b5c: 2b 97     rol   $97
1b5e: c4 96     mov   $96,a
1b60: dd        mov   a,y
1b61: 8d 2f     mov   y,#$2f
1b63: 7a 96     addw  ya,$96
1b65: da 96     movw  $96,ya
1b67: 8d 00     mov   y,#$00
1b69: f7 96     mov   a,($96)+y
1b6b: 2d        push  a
1b6c: fc        inc   y
1b6d: f7 96     mov   a,($96)+y
1b6f: fd        mov   y,a
1b70: ae        pop   a
1b71: 6f        ret

1b72: f7 94     mov   a,($94)+y
1b74: 2f 04     bra   $1b7a
1b76: f7 94     mov   a,($94)+y
1b78: 8d 02     mov   y,#$02
1b7a: 3f 55 1b  call  $1b55
1b7d: da 94     movw  $94,ya
1b7f: dd        mov   a,y
1b80: f0 04     beq   $1b86
1b82: ae        pop   a
1b83: ae        pop   a
1b84: e8 eb     mov   a,#$eb
1b86: 6f        ret

; vcmd f6
1b87: fd        mov   y,a
1b88: 3f b5 06  call  $06b5
1b8b: dd        mov   a,y
1b8c: eb a6     mov   y,$a6
1b8e: 7a 00     addw  ya,$00
1b90: d4 02     mov   $02+x,a
1b92: db 03     mov   $03+x,y
1b94: 6f        ret

1b95: f7 94     mov   a,($94)+y
1b97: 2d        push  a
1b98: fc        inc   y
1b99: f7 94     mov   a,($94)+y
1b9b: fd        mov   y,a
1b9c: ae        pop   a
1b9d: 7a 00     addw  ya,$00
1b9f: da 94     movw  $94,ya
1ba1: 6f        ret

; vcmd f5
1ba2: c4 9e     mov   $9e,a
1ba4: 3f b5 06  call  $06b5
1ba7: c4 9c     mov   $9c,a
1ba9: 3f b5 06  call  $06b5
1bac: c4 9d     mov   $9d,a
1bae: fb 27     mov   y,$27+x
1bb0: f6 60 f5  mov   a,$f560+y
1bb3: 2e 9e 1b  cbne  $9e,$1bd0
1bb6: f6 80 f5  mov   a,$f580+y
1bb9: 9c        dec   a
1bba: d0 0d     bne   $1bc9
1bbc: 7d        mov   a,x
1bbd: 1c        asl   a
1bbe: 9c        dec   a
1bbf: 9b 27     dec   $27+x
1bc1: de 27 05  cbne  $27+x,$1bc8
1bc4: 60        clrc
1bc5: 88 04     adc   a,#$04
1bc7: d4 27     mov   $27+x,a
1bc9: ba 9c     movw  ya,$9c
1bcb: 7a 00     addw  ya,$00
1bcd: d4 02     mov   $02+x,a
1bcf: db 03     mov   $03+x,y
1bd1: 6f        ret

1bd2: eb c6     mov   y,$c6
1bd4: f6 60 f5  mov   a,$f560+y
1bd7: 8d 00     mov   y,#$00
1bd9: 77 94     cmp   a,($94)+y
1bdb: d0 19     bne   $1bf6
1bdd: eb c6     mov   y,$c6
1bdf: f6 80 f5  mov   a,$f580+y
1be2: 9c        dec   a
1be3: d0 0c     bne   $1bf1
1be5: 7d        mov   a,x
1be6: 1c        asl   a
1be7: 9c        dec   a
1be8: 8b c6     dec   $c6
1bea: 2e c6 04  cbne  $c6,$1bf0
1bed: 60        clrc
1bee: 98 04 c6  adc   $c6,#$04
1bf1: 8d 01     mov   y,#$01
1bf3: 5f 95 1b  jmp   $1b95

1bf6: 3a 94     incw  $94
1bf8: 3a 94     incw  $94
1bfa: 3a 94     incw  $94
1bfc: 6f        ret

; vcmd e2
1bfd: 7d        mov   a,x
1bfe: 1c        asl   a
1bff: 60        clrc
1c00: 88 04     adc   a,#$04
1c02: bb 27     inc   $27+x
1c04: de 27 05  cbne  $27+x,$1c0b
1c07: 80        setc
1c08: a8 04     sbc   a,#$04
1c0a: d4 27     mov   $27+x,a
1c0c: fb 27     mov   y,$27+x
1c0e: e4 a6     mov   a,$a6
1c10: f0 01     beq   $1c13
1c12: bc        inc   a
1c13: d6 80 f5  mov   $f580+y,a
1c16: c8 10     cmp   x,#$10
1c18: b0 05     bcs   $1c1f
1c1a: e8 01     mov   a,#$01
1c1c: d6 60 f5  mov   $f560+y,a
1c1f: dd        mov   a,y
1c20: 1c        asl   a
1c21: fd        mov   y,a
1c22: f4 02     mov   a,$02+x
1c24: d6 c0 f5  mov   $f5c0+y,a
1c27: f4 03     mov   a,$03+x
1c29: d6 c1 f5  mov   $f5c1+y,a
1c2c: 6f        ret

; vcmd e3
1c2d: fb 27     mov   y,$27+x
1c2f: c8 10     cmp   x,#$10
1c31: b0 07     bcs   $1c3a
1c33: f6 60 f5  mov   a,$f560+y
1c36: bc        inc   a
1c37: d6 60 f5  mov   $f560+y,a
1c3a: f6 80 f5  mov   a,$f580+y
1c3d: f0 15     beq   $1c54
1c3f: 9c        dec   a
1c40: d0 0f     bne   $1c51
1c42: 7d        mov   a,x
1c43: 1c        asl   a
1c44: 9c        dec   a
1c45: 9b 27     dec   $27+x
1c47: de 27 17  cbne  $27+x,$1c60
1c4a: 60        clrc
1c4b: 88 04     adc   a,#$04
1c4d: d4 27     mov   $27+x,a
1c4f: 2f 10     bra   $1c61
1c51: d6 80 f5  mov   $f580+y,a
1c54: dd        mov   a,y
1c55: 1c        asl   a
1c56: fd        mov   y,a
1c57: f6 c0 f5  mov   a,$f5c0+y
1c5a: d4 02     mov   $02+x,a
1c5c: f6 c1 f5  mov   a,$f5c1+y
1c5f: d4 03     mov   $03+x,a
1c61: 6f        ret

1c62: eb c6     mov   y,$c6
1c64: f6 80 f5  mov   a,$f580+y
1c67: f0 11     beq   $1c7a
1c69: 9c        dec   a
1c6a: d0 0e     bne   $1c7a
1c6c: 7d        mov   a,x
1c6d: 1c        asl   a
1c6e: 9c        dec   a
1c6f: 8b c6     dec   $c6
1c71: 2e c6 13  cbne  $c6,$1c86
1c74: 60        clrc
1c75: 98 04 c6  adc   $c6,#$04
1c78: 2f 0d     bra   $1c87
1c7a: dd        mov   a,y
1c7b: 1c        asl   a
1c7c: fd        mov   y,a
1c7d: f6 c0 f5  mov   a,$f5c0+y
1c80: c4 94     mov   $94,a
1c82: f6 c1 f5  mov   a,$f5c1+y
1c85: c4 95     mov   $95,a
1c87: 6f        ret

; vcmd e8
1c88: d4 26     mov   $26+x,a
1c8a: 6f        ret

; vcmd db
1c8b: d5 a0 f3  mov   $f3a0+x,a
1c8e: 6f        ret

; vcmd f9
1c8f: c4 7b     mov   $7b,a
1c91: 6f        ret

; vcmd fa
1c92: 64 df     cmp   a,$df
1c94: 90 02     bcc   $1c98
1c96: c4 df     mov   $df,a
1c98: e4 de     mov   a,$de
1c9a: 64 a6     cmp   a,$a6
1c9c: b0 0e     bcs   $1cac
1c9e: bb 02     inc   $02+x
1ca0: d0 02     bne   $1ca4
1ca2: bb 03     inc   $03+x
1ca4: bb 02     inc   $02+x
1ca6: d0 14     bne   $1cbc
1ca8: bb 03     inc   $03+x
1caa: 2f 10     bra   $1cbc
1cac: 3f b5 06  call  $06b5
1caf: fd        mov   y,a
1cb0: 3f b5 06  call  $06b5
1cb3: dd        mov   a,y
1cb4: eb a6     mov   y,$a6
1cb6: 7a 00     addw  ya,$00
1cb8: d4 02     mov   $02+x,a
1cba: db 03     mov   $03+x,y
1cbc: 6f        ret

1cbd: 8d 00     mov   y,#$00
1cbf: f7 94     mov   a,($94)+y
1cc1: c4 a6     mov   $a6,a
1cc3: e4 de     mov   a,$de
1cc5: 64 a6     cmp   a,$a6
1cc7: b0 08     bcs   $1cd1
1cc9: 3a 94     incw  $94
1ccb: 3a 94     incw  $94
1ccd: 3a 94     incw  $94
1ccf: 2f 0d     bra   $1cde
1cd1: fc        inc   y
1cd2: f7 94     mov   a,($94)+y
1cd4: 2d        push  a
1cd5: fc        inc   y
1cd6: f7 94     mov   a,($94)+y
1cd8: fd        mov   y,a
1cd9: ae        pop   a
1cda: 7a 00     addw  ya,$00
1cdc: da 94     movw  $94,ya
1cde: 6f        ret

; vcmd eb-ee, fe-ff - end of track
1cdf: ae        pop   a
1ce0: ae        pop   a
1ce1: 62 89     set3  $89
1ce3: e4 92     mov   a,$92
1ce5: c8 10     cmp   x,#$10
1ce7: b0 0a     bcs   $1cf3
1ce9: 4e 53 00  tclr1 $0053
1cec: d0 0b     bne   $1cf9
1cee: 8f ff 80  mov   $80,#$ff
1cf1: 2f 06     bra   $1cf9
1cf3: 4e 86 00  tclr1 $0086
1cf6: 4e 5e 00  tclr1 $005e
1cf9: 3f fd 19  call  $19fd
1cfc: 3f 4c 1a  call  $1a4c
1cff: 5f bf 19  jmp   $19bf

1d02: dw $0879
1d04: dw $08fa
1d06: dw $0983
1d08: dw $0a14
1d0a: dw $0aad
1d0c: dw $0b50
1d0e: dw $0bfc
1d10: dw $0cb2
1d12: dw $0d74
1d14: dw $0e41
1d16: dw $0f1a
1d18: dw $1000
1d1a: dw $10f3

1d1c: db $0f,$1f,$30,$42,$55,$6a,$7f,$96,$ae,$c8,$e3,$00

1d28: db $7f,$00,$00,$00,$00,$00,$00,$00
1d30: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1d38: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1d40: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

1d48: db $c0,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03

1d56: db $eb
1d57: db $ef

1d58: db $02,$00,$00,$00,$00,$00,$00,$00,$00
1d61: db $c2,$00,$00,$00,$00,$00,$00,$00,$00
1d6a: db $c2,$00,$77,$77,$77,$77,$77,$77,$77
1d73: db $c2,$77,$77,$77,$77,$77,$77,$77,$77
1d7c: db $c3,$77,$77,$77,$77,$77,$77,$77,$77
