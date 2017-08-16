0200: 20        clrp
0201: c0        di
0202: cd ff     mov   x,#$ff
0204: bd        mov   sp,x
0205: e8 00     mov   a,#$00
0207: 5d        mov   x,a
0208: af        mov   (x)+,a
0209: c8 f0     cmp   x,#$f0
020b: d0 fb     bne   $0208
020d: 1a c5     decw  $c5
020f: e8 00     mov   a,#$00
0211: 8d 0c     mov   y,#$0c
0213: 3f 5c 06  call  $065c
0216: 8d 1c     mov   y,#$1c
0218: 3f 5c 06  call  $065c
021b: 8d 2c     mov   y,#$2c
021d: 3f 5c 06  call  $065c
0220: 8d 3c     mov   y,#$3c
0222: 3f 5c 06  call  $065c
0225: 8d 2d     mov   y,#$2d
0227: 3f 5c 06  call  $065c
022a: 8d 3d     mov   y,#$3d
022c: 3f 5c 06  call  $065c
022f: 8d 4d     mov   y,#$4d
0231: 3f 5c 06  call  $065c
0234: 8d 5d     mov   y,#$5d
0236: e8 1b     mov   a,#$1b
0238: 3f 5c 06  call  $065c
023b: 8d 07     mov   y,#$07
023d: cd a0     mov   x,#$a0
023f: cb f2     mov   $f2,y
0241: d8 f3     mov   $f3,x
0243: dd        mov   a,y
0244: 60        clrc
0245: 88 10     adc   a,#$10
0247: fd        mov   y,a
0248: 10 f5     bpl   $023f
024a: 8f f0 f1  mov   $f1,#$f0
024d: 8f 24 fa  mov   $fa,#$24
0250: 8f 80 fb  mov   $fb,#$80
0253: 8f 05 fc  mov   $fc,#$05
0256: 8f 07 f1  mov   $f1,#$07
0259: 8f 05 8b  mov   $8b,#$05
025c: 3f 72 0f  call  $0f72
025f: e8 7f     mov   a,#$7f
0261: 8d 0c     mov   y,#$0c
0263: 3f 5c 06  call  $065c
0266: 8d 1c     mov   y,#$1c
0268: 3f 5c 06  call  $065c
026b: 8f ff 24  mov   $24,#$ff
026e: 8f 07 c7  mov   $c7,#$07
0271: 8f ff a7  mov   $a7,#$ff
0274: 8f 00 b4  mov   $b4,#$00
0277: 8f 00 ae  mov   $ae,#$00
027a: 8f 00 f5  mov   $f5,#$00
027d: e2 a2     set7  $a2
027f: 3f 43 09  call  $0943
0282: eb fd     mov   y,$fd
0284: f0 f9     beq   $027f
0286: 8d 08     mov   y,#$08
0288: f6 1b 18  mov   a,$181b+y
028b: c4 f2     mov   $f2,a
028d: f6 23 18  mov   a,$1823+y
0290: 5d        mov   x,a
0291: e6        mov   a,(x)
0292: c4 f3     mov   $f3,a
0294: fe f2     dbnz  y,$0288
0296: cb 24     mov   $24,y
0298: cb 22     mov   $22,y
029a: e3 85 08  bbs7  $85,$02a5
029d: e4 52     mov   a,$52
029f: eb 83     mov   y,$83
02a1: da f6     movw  $f6,ya
02a3: 2f 03     bra   $02a8
02a5: 3f 7e 10  call  $107e
02a8: ba d8     movw  ya,$d8
02aa: d0 0a     bne   $02b6
02ac: 8b c7     dec   $c7
02ae: d0 06     bne   $02b6
02b0: 8f 07 c7  mov   $c7,#$07
02b3: 3f d5 10  call  $10d5
02b6: 3f f5 02  call  $02f5
02b9: cd 00     mov   x,#$00
02bb: 8f 01 8e  mov   $8e,#$01
02be: e4 83     mov   a,$83
02c0: 04 84     or    a,$84
02c2: 48 ff     eor   a,#$ff
02c4: 24 52     and   a,$52
02c6: c4 9f     mov   $9f,a
02c8: 4b 9f     lsr   $9f
02ca: 90 05     bcc   $02d1
02cc: d8 a2     mov   $a2,x
02ce: 3f 2f 07  call  $072f
02d1: 3d        inc   x
02d2: 3d        inc   x
02d3: 0b 8e     asl   $8e
02d5: d0 f1     bne   $02c8
02d7: cd 1e     mov   x,#$1e
02d9: 8f 80 8e  mov   $8e,#$80
02dc: e4 83     mov   a,$83
02de: 04 84     or    a,$84
02e0: c4 9f     mov   $9f,a
02e2: 0b 9f     asl   $9f
02e4: 90 05     bcc   $02eb
02e6: d8 a2     mov   $a2,x
02e8: 3f 2f 07  call  $072f
02eb: 1d        dec   x
02ec: 1d        dec   x
02ed: 4b 8e     lsr   $8e
02ef: 73 8e f0  bbc3  $8e,$02e2
02f2: 5f 7d 02  jmp   $027d

02f5: e4 46     mov   a,$46
02f7: eb b6     mov   y,$b6
02f9: f0 12     beq   $030d
02fb: cf        mul   ya
02fc: dd        mov   a,y
02fd: e3 b6 0a  bbs7  $b6,$030a
0300: 1c        asl   a
0301: 60        clrc
0302: 84 46     adc   a,$46
0304: 90 07     bcc   $030d
0306: e8 ff     mov   a,#$ff
0308: 2f 03     bra   $030d
030a: d0 01     bne   $030d
030c: bc        inc   a
030d: 60        clrc
030e: 84 47     adc   a,$47
0310: c4 47     mov   $47,a
0312: c3 85 05  bbs6  $85,$031a
0315: b0 03     bcs   $031a
0317: 5f a7 03  jmp   $03a7

031a: cd 00     mov   x,#$00
031c: 8f 01 8e  mov   $8e,#$01
031f: fa 52 9f  mov   ($9f),($52)
0322: 4b 9f     lsr   $9f
0324: 90 50     bcc   $0376
0326: d8 a2     mov   $a2,x
0328: 9b 25     dec   $25+x
032a: d0 05     bne   $0331
032c: 3f c0 03  call  $03c0
032f: 2f 41     bra   $0372
0331: c8 10     cmp   x,#$10
0333: b0 15     bcs   $034a
0335: e4 83     mov   a,$83
0337: 04 84     or    a,$84
0339: 24 8e     and   a,$8e
033b: d0 28     bne   $0365
033d: e8 02     mov   a,#$02
033f: de 25 23  cbne  $25+x,$0365
0342: e4 59     mov   a,$59
0344: 04 5b     or    a,$5b
0346: 04 5f     or    a,$5f
0348: 2f 0b     bra   $0355
034a: e8 02     mov   a,#$02
034c: de 25 16  cbne  $25+x,$0365
034f: e4 5a     mov   a,$5a
0351: 04 5c     or    a,$5c
0353: 04 60     or    a,$60
0355: 24 8e     and   a,$8e
0357: d0 0c     bne   $0365
0359: 09 8e 24  or    ($24),($8e)
035c: c8 10     cmp   x,#$10
035e: b0 05     bcs   $0365
0360: e4 8e     mov   a,$8e
0362: 4e 23 00  tclr1 $0023
0365: 40        setp
0366: f4 00     mov   a,$00+x
0368: f0 02     beq   $036c
036a: 9b 00     dec   $00+x
036c: f4 01     mov   a,$01+x
036e: f0 02     beq   $0372
0370: 9b 01     dec   $01+x
0372: 20        clrp
0373: 3f 61 06  call  $0661
0376: c8 10     cmp   x,#$10
0378: b0 0b     bcs   $0385
037a: 4d        push  x
037b: e4 8e     mov   a,$8e
037d: 2d        push  a
037e: 3f 43 09  call  $0943
0381: ae        pop   a
0382: c4 8e     mov   $8e,a
0384: ce        pop   x
0385: 3d        inc   x
0386: 3d        inc   x
0387: 0b 8e     asl   $8e
0389: d0 97     bne   $0322
038b: c8 20     cmp   x,#$20
038d: b0 30     bcs   $03bf
038f: e4 49     mov   a,$49
0391: f0 08     beq   $039b
0393: 8b 49     dec   $49
0395: ba 4a     movw  ya,$4a
0397: 7a 45     addw  ya,$45
0399: da 45     movw  $45,ya
039b: e4 50     mov   a,$50
039d: f0 08     beq   $03a7
039f: 8b 50     dec   $50
03a1: ba 4e     movw  ya,$4e
03a3: 7a 4c     addw  ya,$4c
03a5: da 4c     movw  $4c,ya
03a7: e8 78     mov   a,#$78
03a9: 60        clrc
03aa: 84 48     adc   a,$48
03ac: c4 48     mov   $48,a
03ae: 90 0f     bcc   $03bf
03b0: cd 18     mov   x,#$18
03b2: 8f 10 8e  mov   $8e,#$10
03b5: e4 83     mov   a,$83
03b7: 04 84     or    a,$84
03b9: 9f        xcn   a
03ba: c4 9f     mov   $9f,a
03bc: 5f 22 03  jmp   $0322

03bf: 6f        ret

03c0: 3f d8 05  call  $05d8
03c3: 68 c4     cmp   a,#$c4
03c5: 90 05     bcc   $03cc
03c7: 3f c4 05  call  $05c4
03ca: 2f f4     bra   $03c0
03cc: fb 25     mov   y,$25+x
03ce: d0 0c     bne   $03dc
03d0: 8d 00     mov   y,#$00
03d2: cd 0e     mov   x,#$0e
03d4: 9e        div   ya,x
03d5: f8 a2     mov   x,$a2
03d7: f6 aa 16  mov   a,$16aa+y
03da: d4 25     mov   $25+x,a
03dc: 78 a8 a1  cmp   $a1,#$a8
03df: 90 09     bcc   $03ea
03e1: 78 b6 a1  cmp   $a1,#$b6
03e4: b0 03     bcs   $03e9
03e6: 5f c3 04  jmp   $04c3

03e9: 6f        ret

03ea: c8 10     cmp   x,#$10
03ec: b0 08     bcs   $03f6
03ee: e4 83     mov   a,$83
03f0: 04 84     or    a,$84
03f2: 24 8e     and   a,$8e
03f4: d0 f3     bne   $03e9
03f6: e4 a1     mov   a,$a1
03f8: 8d 00     mov   y,#$00
03fa: cd 0e     mov   x,#$0e
03fc: 9e        div   ya,x
03fd: c4 a1     mov   $a1,a
03ff: f8 a2     mov   x,$a2
0401: f5 00 f6  mov   a,$f600+x
0404: 8d 0c     mov   y,#$0c
0406: cf        mul   ya
0407: 60        clrc
0408: 84 a1     adc   a,$a1
040a: 60        clrc
040b: 95 81 f7  adc   a,$f781+x
040e: 80        setc
040f: a8 0a     sbc   a,#$0a
0411: d5 61 f7  mov   $f761+x,a
0414: 3f 63 05  call  $0563
0417: e4 bf     mov   a,$bf
0419: d5 80 f8  mov   $f880+x,a
041c: e4 c0     mov   a,$c0
041e: d5 81 f8  mov   $f881+x,a
0421: 3f 23 14  call  $1423
0424: 8d 07     mov   y,#$07
0426: f5 21 01  mov   a,$0121+x
0429: f0 22     beq   $044d
042b: 68 c0     cmp   a,#$c0
042d: b0 04     bcs   $0433
042f: e8 00     mov   a,#$00
0431: 2f 02     bra   $0435
0433: e8 80     mov   a,#$80
0435: d5 e0 f7  mov   $f7e0+x,a
0438: e8 01     mov   a,#$01
043a: d5 00 f7  mov   $f700+x,a
043d: f5 60 01  mov   a,$0160+x
0440: d5 00 01  mov   $0100+x,a
0443: f0 03     beq   $0448
0445: dd        mov   a,y
0446: 2f 02     bra   $044a
0448: e8 00     mov   a,#$00
044a: d5 20 f8  mov   $f820+x,a
044d: f5 40 01  mov   a,$0140+x
0450: f0 24     beq   $0476
0452: 68 c0     cmp   a,#$c0
0454: b0 04     bcs   $045a
0456: e8 00     mov   a,#$00
0458: 2f 02     bra   $045c
045a: e8 80     mov   a,#$80
045c: d5 e1 f7  mov   $f7e1+x,a
045f: e8 01     mov   a,#$01
0461: d5 01 f7  mov   $f701+x,a
0464: f5 61 01  mov   a,$0161+x
0467: d5 01 01  mov   $0101+x,a
046a: f0 03     beq   $046f
046c: dd        mov   a,y
046d: 2f 02     bra   $0471
046f: e8 00     mov   a,#$00
0471: d5 21 f8  mov   $f821+x,a
0474: e8 00     mov   a,#$00
0476: d5 60 f8  mov   $f860+x,a
0479: d5 61 f8  mov   $f861+x,a
047c: d5 21 f7  mov   $f721+x,a
047f: d5 a0 f7  mov   $f7a0+x,a
0482: d5 a1 f7  mov   $f7a1+x,a
0485: c8 10     cmp   x,#$10
0487: b0 1a     bcs   $04a3
0489: 09 8e 23  or    ($23),($8e)
048c: e4 8e     mov   a,$8e
048e: 24 5f     and   a,$5f
0490: d0 28     bne   $04ba
0492: e4 8e     mov   a,$8e
0494: 24 5b     and   a,$5b
0496: f0 22     beq   $04ba
0498: e4 8e     mov   a,$8e
049a: 24 5d     and   a,$5d
049c: d0 1f     bne   $04bd
049e: 09 8e 5d  or    ($5d),($8e)
04a1: 2f 17     bra   $04ba
04a3: e4 8e     mov   a,$8e
04a5: 24 60     and   a,$60
04a7: d0 11     bne   $04ba
04a9: e4 8e     mov   a,$8e
04ab: 24 5c     and   a,$5c
04ad: f0 0b     beq   $04ba
04af: e4 8e     mov   a,$8e
04b1: 24 5e     and   a,$5e
04b3: d0 08     bne   $04bd
04b5: 09 8e 5e  or    ($5e),($8e)
04b8: 2f 00     bra   $04ba
04ba: 09 8e 22  or    ($22),($8e)
04bd: 09 8e da  or    ($da),($8e)
04c0: 09 8e db  or    ($db),($8e)
04c3: 3f e3 05  call  $05e3
04c6: fd        mov   y,a
04c7: e4 8e     mov   a,$8e
04c9: c8 10     cmp   x,#$10
04cb: b0 18     bcs   $04e5
04cd: ad b6     cmp   y,#$b6
04cf: b0 09     bcs   $04da
04d1: ad a8     cmp   y,#$a8
04d3: 90 0b     bcc   $04e0
04d5: 0e 59 00  tset1 $0059
04d8: 2f 21     bra   $04fb
04da: 4e 5b 00  tclr1 $005b
04dd: 4e 5f 00  tclr1 $005f
04e0: 4e 59 00  tclr1 $0059
04e3: 2f 16     bra   $04fb
04e5: ad b6     cmp   y,#$b6
04e7: b0 09     bcs   $04f2
04e9: ad a8     cmp   y,#$a8
04eb: 90 0b     bcc   $04f8
04ed: 0e 5a 00  tset1 $005a
04f0: 2f 09     bra   $04fb
04f2: 4e 5c 00  tclr1 $005c
04f5: 4e 60 00  tclr1 $0060
04f8: 4e 5a 00  tclr1 $005a
04fb: f5 20 01  mov   a,$0120+x
04fe: f0 62     beq   $0562
0500: 60        clrc
0501: 95 61 f7  adc   a,$f761+x
0504: d5 61 f7  mov   $f761+x,a
0507: 3f 63 05  call  $0563
050a: f5 80 f8  mov   a,$f880+x
050d: c4 97     mov   $97,a
050f: f5 81 f8  mov   a,$f881+x
0512: c4 98     mov   $98,a
0514: ba bf     movw  ya,$bf
0516: 80        setc
0517: 9a 97     subw  ya,$97
0519: da 97     movw  $97,ya
051b: 0d        push  psw
051c: b0 08     bcs   $0526
051e: 58 ff 97  eor   $97,#$ff
0521: 58 ff 98  eor   $98,#$ff
0524: 3a 97     incw  $97
0526: f5 e1 f6  mov   a,$f6e1+x
0529: d0 08     bne   $0533
052b: fa 98 97  mov   ($97),($98)
052e: 8f 00 98  mov   $98,#$00
0531: 2f 0d     bra   $0540
0533: 5d        mov   x,a
0534: e4 98     mov   a,$98
0536: 8d 00     mov   y,#$00
0538: 9e        div   ya,x
0539: c4 98     mov   $98,a
053b: e4 97     mov   a,$97
053d: 9e        div   ya,x
053e: c4 97     mov   $97,a
0540: ba 97     movw  ya,$97
0542: d0 02     bne   $0546
0544: ab 97     inc   $97
0546: 8e        pop   psw
0547: b0 08     bcs   $0551
0549: 58 ff 97  eor   $97,#$ff
054c: 58 ff 98  eor   $98,#$ff
054f: 3a 97     incw  $97
0551: f8 a2     mov   x,$a2
0553: e4 97     mov   a,$97
0555: d5 a0 f7  mov   $f7a0+x,a
0558: e4 98     mov   a,$98
055a: d5 a1 f7  mov   $f7a1+x,a
055d: e8 00     mov   a,#$00
055f: d5 20 01  mov   $0120+x,a
0562: 6f        ret

0563: cd 0c     mov   x,#$0c
0565: 8d 00     mov   y,#$00
0567: 9e        div   ya,x
0568: f8 a2     mov   x,$a2
056a: c4 a0     mov   $a0,a
056c: dd        mov   a,y
056d: 1c        asl   a
056e: fd        mov   y,a
056f: f6 70 16  mov   a,$1670+y
0572: c4 c1     mov   $c1,a
0574: f6 71 16  mov   a,$1671+y
0577: c4 c2     mov   $c2,a
0579: fd        mov   y,a
057a: f5 40 f7  mov   a,$f740+x
057d: 60        clrc
057e: 95 60 f7  adc   a,$f760+x
0581: 0d        push  psw
0582: 2d        push  a
0583: cf        mul   ya
0584: da bf     movw  $bf,ya
0586: eb c1     mov   y,$c1
0588: ae        pop   a
0589: cf        mul   ya
058a: dd        mov   a,y
058b: 8d 00     mov   y,#$00
058d: 7a bf     addw  ya,$bf
058f: da bf     movw  $bf,ya
0591: f5 41 f7  mov   a,$f741+x
0594: f0 08     beq   $059e
0596: cf        mul   ya
0597: dd        mov   a,y
0598: 8d 00     mov   y,#$00
059a: 7a bf     addw  ya,$bf
059c: 2f 02     bra   $05a0
059e: e4 bf     mov   a,$bf
05a0: 8e        pop   psw
05a1: 30 02     bmi   $05a5
05a3: 7a c1     addw  ya,$c1
05a5: da bf     movw  $bf,ya
05a7: e8 04     mov   a,#$04
05a9: eb a0     mov   y,$a0
05ab: 30 0e     bmi   $05bb
05ad: 64 a0     cmp   a,$a0
05af: b0 0f     bcs   $05c0
05b1: 0b bf     asl   $bf
05b3: 2b c0     rol   $c0
05b5: bc        inc   a
05b6: 2e a0 f8  cbne  $a0,$05b1
05b9: 2f 08     bra   $05c3
05bb: 4b c0     lsr   $c0
05bd: 6b bf     ror   $bf
05bf: 9c        dec   a
05c0: 2e a0 f8  cbne  $a0,$05bb
05c3: 6f        ret

05c4: a8 c4     sbc   a,#$c4
05c6: 1c        asl   a
05c7: fd        mov   y,a
05c8: f6 09 17  mov   a,$1709+y
05cb: 2d        push  a
05cc: f6 08 17  mov   a,$1708+y
05cf: 2d        push  a
05d0: dd        mov   a,y
05d1: 5c        lsr   a
05d2: fd        mov   y,a
05d3: f6 80 17  mov   a,$1780+y
05d6: f0 0a     beq   $05e2
; read next vbyte
05d8: e7 02     mov   a,($02+x)
05da: c4 a1     mov   $a1,a
05dc: bb 02     inc   $02+x
05de: d0 02     bne   $05e2
05e0: bb 03     inc   $03+x
05e2: 6f        ret

05e3: f4 02     mov   a,$02+x
05e5: fb 03     mov   y,$03+x
05e7: da 8f     movw  $8f,ya
05e9: f4 26     mov   a,$26+x
05eb: c4 c4     mov   $c4,a
05ed: 8d 00     mov   y,#$00
05ef: f7 8f     mov   a,($8f)+y
05f1: 68 c4     cmp   a,#$c4
05f3: 90 66     bcc   $065b
05f5: 3a 8f     incw  $8f
05f7: 68 eb     cmp   a,#$eb
05f9: f0 60     beq   $065b
05fb: 68 f7     cmp   a,#$f7
05fd: d0 05     bne   $0604
05ff: 3f 53 15  call  $1553
0602: 2f e9     bra   $05ed
0604: 68 e3     cmp   a,#$e3
0606: d0 05     bne   $060d
0608: 3f 20 16  call  $1620
060b: 2f e0     bra   $05ed
060d: 68 f6     cmp   a,#$f6
060f: d0 05     bne   $0616
0611: 3f 99 15  call  $1599
0614: 2f d7     bra   $05ed
0616: 68 e5     cmp   a,#$e5
0618: d0 05     bne   $061f
061a: 3f cd 14  call  $14cd
061d: 2f ce     bra   $05ed
061f: 68 e7     cmp   a,#$e7
0621: d0 05     bne   $0628
0623: 3f f1 14  call  $14f1
0626: 2f c5     bra   $05ed
0628: 68 e9     cmp   a,#$e9
062a: d0 05     bne   $0631
062c: 3f 31 15  call  $1531
062f: 2f 07     bra   $0638
0631: 68 ea     cmp   a,#$ea
0633: d0 0a     bne   $063f
0635: 3f 37 15  call  $1537
0638: dd        mov   a,y
0639: d0 b2     bne   $05ed
063b: e8 eb     mov   a,#$eb
063d: 2f 1c     bra   $065b
063f: 68 dc     cmp   a,#$dc
0641: d0 08     bne   $064b
0643: 3f cd 14  call  $14cd
0646: 3f f1 14  call  $14f1
0649: 2f a2     bra   $05ed
064b: 80        setc
064c: a8 c4     sbc   a,#$c4
064e: fd        mov   y,a
064f: f6 80 17  mov   a,$1780+y
0652: f0 99     beq   $05ed
0654: fd        mov   y,a
0655: 3a 8f     incw  $8f
0657: fe fc     dbnz  y,$0655
0659: 2f 94     bra   $05ef
065b: 6f        ret

065c: cb f2     mov   $f2,y
065e: c4 f3     mov   $f3,a
0660: 6f        ret

0661: f5 a0 f6  mov   a,$f6a0+x
0664: f0 26     beq   $068c
0666: 9c        dec   a
0667: d5 a0 f6  mov   $f6a0+x,a
066a: f5 20 f6  mov   a,$f620+x
066d: c4 97     mov   $97,a
066f: f5 21 f6  mov   a,$f621+x
0672: c4 98     mov   $98,a
0674: f5 41 f6  mov   a,$f641+x
0677: fd        mov   y,a
0678: f5 40 f6  mov   a,$f640+x
067b: 7a 97     addw  ya,$97
067d: d5 20 f6  mov   $f620+x,a
0680: dd        mov   a,y
0681: 75 21 f6  cmp   a,$f621+x
0684: d5 21 f6  mov   $f621+x,a
0687: f0 03     beq   $068c
0689: 09 8e da  or    ($da),($8e)
068c: f5 a1 f6  mov   a,$f6a1+x
068f: f0 26     beq   $06b7
0691: 9c        dec   a
0692: d5 a1 f6  mov   $f6a1+x,a
0695: f5 60 f6  mov   a,$f660+x
0698: c4 97     mov   $97,a
069a: f5 61 f6  mov   a,$f661+x
069d: c4 98     mov   $98,a
069f: f5 81 f6  mov   a,$f681+x
06a2: fd        mov   y,a
06a3: f5 80 f6  mov   a,$f680+x
06a6: 7a 97     addw  ya,$97
06a8: d5 60 f6  mov   $f660+x,a
06ab: dd        mov   a,y
06ac: 75 61 f6  cmp   a,$f661+x
06af: d5 61 f6  mov   $f661+x,a
06b2: f0 03     beq   $06b7
06b4: 09 8e da  or    ($da),($8e)
06b7: f5 a0 f7  mov   a,$f7a0+x
06ba: c4 97     mov   $97,a
06bc: f5 a1 f7  mov   a,$f7a1+x
06bf: c4 98     mov   $98,a
06c1: ba 97     movw  ya,$97
06c3: f0 22     beq   $06e7
06c5: f5 e1 f6  mov   a,$f6e1+x
06c8: 9c        dec   a
06c9: d0 06     bne   $06d1
06cb: d5 a0 f7  mov   $f7a0+x,a
06ce: d5 a1 f7  mov   $f7a1+x,a
06d1: d5 e1 f6  mov   $f6e1+x,a
06d4: f5 81 f8  mov   a,$f881+x
06d7: fd        mov   y,a
06d8: f5 80 f8  mov   a,$f880+x
06db: 7a 97     addw  ya,$97
06dd: d5 80 f8  mov   $f880+x,a
06e0: dd        mov   a,y
06e1: d5 81 f8  mov   $f881+x,a
06e4: 09 8e db  or    ($db),($8e)
06e7: f5 41 01  mov   a,$0141+x
06ea: f0 42     beq   $072e
06ec: f5 c0 f7  mov   a,$f7c0+x
06ef: c4 97     mov   $97,a
06f1: f5 c1 f7  mov   a,$f7c1+x
06f4: c4 98     mov   $98,a
06f6: f5 01 f8  mov   a,$f801+x
06f9: fd        mov   y,a
06fa: c4 99     mov   $99,a
06fc: f5 00 f8  mov   a,$f800+x
06ff: 7a 97     addw  ya,$97
0701: d5 00 f8  mov   $f800+x,a
0704: dd        mov   a,y
0705: 75 01 f8  cmp   a,$f801+x
0708: d5 01 f8  mov   $f801+x,a
070b: f0 03     beq   $0710
070d: 09 8e da  or    ($da),($8e)
0710: f5 20 f7  mov   a,$f720+x
0713: 9c        dec   a
0714: d0 15     bne   $072b
0716: 58 ff 97  eor   $97,#$ff
0719: 58 ff 98  eor   $98,#$ff
071c: 3a 97     incw  $97
071e: e4 97     mov   a,$97
0720: d5 c0 f7  mov   $f7c0+x,a
0723: e4 98     mov   a,$98
0725: d5 c1 f7  mov   $f7c1+x,a
0728: f5 e0 f6  mov   a,$f6e0+x
072b: d5 20 f7  mov   $f720+x,a
072e: 6f        ret

072f: f5 21 01  mov   a,$0121+x
0732: f0 6c     beq   $07a0
0734: fd        mov   y,a
0735: f5 00 01  mov   a,$0100+x
0738: d0 66     bne   $07a0
073a: f5 00 f7  mov   a,$f700+x
073d: 9c        dec   a
073e: d0 5d     bne   $079d
0740: f5 20 f8  mov   a,$f820+x
0743: da 97     movw  $97,ya
0745: f5 e0 f7  mov   a,$f7e0+x
0748: c4 99     mov   $99,a
074a: 3f f2 08  call  $08f2
074d: d5 e0 f7  mov   $f7e0+x,a
0750: 1c        asl   a
0751: d0 03     bne   $0756
0753: fd        mov   y,a
0754: 2f 3a     bra   $0790
0756: 0d        push  psw
0757: 2d        push  a
0758: 2d        push  a
0759: e4 97     mov   a,$97
075b: d5 20 f8  mov   $f820+x,a
075e: 8d 0f     mov   y,#$0f
0760: f5 81 f8  mov   a,$f881+x
0763: cf        mul   ya
0764: da 99     movw  $99,ya
0766: 8d 0f     mov   y,#$0f
0768: f5 80 f8  mov   a,$f880+x
076b: cf        mul   ya
076c: dd        mov   a,y
076d: 8d 00     mov   y,#$00
076f: 7a 99     addw  ya,$99
0771: c4 99     mov   $99,a
0773: ae        pop   a
0774: cf        mul   ya
0775: da 9b     movw  $9b,ya
0777: ae        pop   a
0778: eb 99     mov   y,$99
077a: cf        mul   ya
077b: dd        mov   a,y
077c: 8d 00     mov   y,#$00
077e: 7a 9b     addw  ya,$9b
0780: 8e        pop   psw
0781: 90 0d     bcc   $0790
0783: 48 ff     eor   a,#$ff
0785: c4 9b     mov   $9b,a
0787: dd        mov   a,y
0788: 48 ff     eor   a,#$ff
078a: c4 9c     mov   $9c,a
078c: 3a 9b     incw  $9b
078e: ba 9b     movw  ya,$9b
0790: d5 60 f8  mov   $f860+x,a
0793: dd        mov   a,y
0794: d5 61 f8  mov   $f861+x,a
0797: 09 8e db  or    ($db),($8e)
079a: f5 c0 f6  mov   a,$f6c0+x
079d: d5 00 f7  mov   $f700+x,a
07a0: f5 40 01  mov   a,$0140+x
07a3: f0 2d     beq   $07d2
07a5: fd        mov   y,a
07a6: f5 01 01  mov   a,$0101+x
07a9: d0 27     bne   $07d2
07ab: f5 01 f7  mov   a,$f701+x
07ae: 9c        dec   a
07af: d0 1e     bne   $07cf
07b1: f5 21 f8  mov   a,$f821+x
07b4: da 97     movw  $97,ya
07b6: f5 e1 f7  mov   a,$f7e1+x
07b9: c4 99     mov   $99,a
07bb: 3f f2 08  call  $08f2
07be: d5 e1 f7  mov   $f7e1+x,a
07c1: d5 21 f7  mov   $f721+x,a
07c4: e4 97     mov   a,$97
07c6: d5 21 f8  mov   $f821+x,a
07c9: 09 8e da  or    ($da),($8e)
07cc: f5 c1 f6  mov   a,$f6c1+x
07cf: d5 01 f7  mov   $f701+x,a
07d2: ba da     movw  ya,$da
07d4: d0 01     bne   $07d7
07d6: 6f        ret

07d7: 7d        mov   a,x
07d8: 28 0f     and   a,#$0f
07da: c4 97     mov   $97,a
07dc: e4 97     mov   a,$97
07de: 9f        xcn   a
07df: 5c        lsr   a
07e0: c4 98     mov   $98,a
07e2: e4 8e     mov   a,$8e
07e4: 24 da     and   a,$da
07e6: f0 06     beq   $07ee
07e8: 4e da 00  tclr1 $00da
07eb: 3f fd 07  call  $07fd
07ee: e4 8e     mov   a,$8e
07f0: 24 db     and   a,$db
07f2: f0 08     beq   $07fc
07f4: 4e db 00  tclr1 $00db
07f7: 22 98     set1  $98
07f9: 3f a4 08  call  $08a4
07fc: 6f        ret

07fd: 8f 80 99  mov   $99,#$80
0800: 03 85 20  bbs0  $85,$0823
0803: e4 8e     mov   a,$8e
0805: 24 84     and   a,$84
0807: d0 1a     bne   $0823
0809: f5 61 f6  mov   a,$f661+x
080c: c8 10     cmp   x,#$10
080e: 90 08     bcc   $0818
0810: fd        mov   y,a
0811: e4 b1     mov   a,$b1
0813: 48 80     eor   a,#$80
0815: 3f 4a 0f  call  $0f4a
0818: fd        mov   y,a
0819: f5 01 f8  mov   a,$f801+x
081c: 3f 4a 0f  call  $0f4a
081f: 48 ff     eor   a,#$ff
0821: c4 99     mov   $99,a
0823: f5 21 f6  mov   a,$f621+x
0826: fd        mov   y,a
0827: c4 9a     mov   $9a,a
0829: f5 21 f7  mov   a,$f721+x
082c: 1c        asl   a
082d: f0 10     beq   $083f
082f: 90 03     bcc   $0834
0831: 48 ff     eor   a,#$ff
0833: bc        inc   a
0834: cf        mul   ya
0835: b0 08     bcs   $083f
0837: dd        mov   a,y
0838: 84 9a     adc   a,$9a
083a: 90 02     bcc   $083e
083c: e8 ff     mov   a,#$ff
083e: fd        mov   y,a
083f: c8 10     cmp   x,#$10
0841: b0 0d     bcs   $0850
0843: e4 a5     mov   a,$a5
0845: cf        mul   ya
0846: e4 8e     mov   a,$8e
0848: 24 61     and   a,$61
084a: d0 10     bne   $085c
084c: e4 51     mov   a,$51
084e: 2f 0c     bra   $085c
0850: e4 8e     mov   a,$8e
0852: 24 84     and   a,$84
0854: f0 04     beq   $085a
0856: e8 ff     mov   a,#$ff
0858: 2f 02     bra   $085c
085a: e4 a7     mov   a,$a7
085c: cf        mul   ya
085d: cb 9a     mov   $9a,y
085f: c8 10     cmp   x,#$10
0861: 90 06     bcc   $0869
0863: aa 85 20  mov1  c,$0085,1
0866: ca 97 00  mov1  $0097,0,c
0869: e4 99     mov   a,$99
086b: fd        mov   y,a
086c: c8 10     cmp   x,#$10
086e: b0 01     bcs   $0871
0870: cf        mul   ya
0871: e4 9a     mov   a,$9a
0873: cf        mul   ya
0874: e4 8e     mov   a,$8e
0876: 24 a3     and   a,$a3
0878: f0 02     beq   $087c
087a: 8d 00     mov   y,#$00
087c: dd        mov   a,y
087d: eb 97     mov   y,$97
087f: d6 c8 00  mov   $00c8+y,a
0882: 5c        lsr   a
0883: fd        mov   y,a
0884: e4 98     mov   a,$98
0886: c8 10     cmp   x,#$10
0888: 90 05     bcc   $088f
088a: 33 85 02  bbc1  $85,$088f
088d: 48 01     eor   a,#$01
088f: c4 f2     mov   $f2,a
0891: 7e f3     cmp   y,$f3
0893: f0 02     beq   $0897
0895: cb f3     mov   $f3,y
0897: e4 99     mov   a,$99
0899: 48 ff     eor   a,#$ff
089b: ea 97 00  not1  $0097,0
089e: ab 98     inc   $98
08a0: 33 98 c8  bbc1  $98,$086b
08a3: 6f        ret

08a4: f5 80 f8  mov   a,$f880+x
08a7: c4 99     mov   $99,a
08a9: f5 81 f8  mov   a,$f881+x
08ac: c4 9a     mov   $9a,a
08ae: f5 61 f8  mov   a,$f861+x
08b1: fd        mov   y,a
08b2: f5 60 f8  mov   a,$f860+x
08b5: 7a 99     addw  ya,$99
08b7: da 99     movw  $99,ya
08b9: c8 10     cmp   x,#$10
08bb: 90 04     bcc   $08c1
08bd: ba 99     movw  ya,$99
08bf: 2f 1b     bra   $08dc
08c1: e4 bb     mov   a,$bb
08c3: 0d        push  psw
08c4: 2d        push  a
08c5: cf        mul   ya
08c6: da 9b     movw  $9b,ya
08c8: ae        pop   a
08c9: eb 99     mov   y,$99
08cb: cf        mul   ya
08cc: dd        mov   a,y
08cd: 8d 00     mov   y,#$00
08cf: 7a 9b     addw  ya,$9b
08d1: 8e        pop   psw
08d2: 30 08     bmi   $08dc
08d4: 1c        asl   a
08d5: 2d        push  a
08d6: dd        mov   a,y
08d7: 3c        rol   a
08d8: fd        mov   y,a
08d9: ae        pop   a
08da: 7a 99     addw  ya,$99
08dc: 4d        push  x
08dd: f8 98     mov   x,$98
08df: d8 f2     mov   $f2,x
08e1: 64 f3     cmp   a,$f3
08e3: f0 02     beq   $08e7
08e5: c4 f3     mov   $f3,a
08e7: 3d        inc   x
08e8: d8 f2     mov   $f2,x
08ea: 7e f3     cmp   y,$f3
08ec: f0 02     beq   $08f0
08ee: cb f3     mov   $f3,y
08f0: ce        pop   x
08f1: 6f        ret

08f2: dd        mov   a,y
08f3: 28 3f     and   a,#$3f
08f5: 1c        asl   a
08f6: bc        inc   a
08f7: f3 98 09  bbc7  $98,$0903
08fa: d3 98 06  bbc6  $98,$0903
08fd: f3 99 3e  bbc7  $99,$093e
0900: 8f 00 99  mov   $99,#$00
0903: 0b 99     asl   $99
0905: d0 29     bne   $0930
0907: eb 97     mov   y,$97
0909: f0 27     beq   $0932
090b: 13 97 09  bbc0  $97,$0917
090e: 12 97     clr0  $97
0910: 5c        lsr   a
0911: 5c        lsr   a
0912: d0 1e     bne   $0932
0914: bc        inc   a
0915: 2f 1b     bra   $0932
0917: 33 97 08  bbc1  $97,$0922
091a: 32 97     clr1  $97
091c: 5c        lsr   a
091d: d0 13     bne   $0932
091f: bc        inc   a
0920: 2f 10     bra   $0932
0922: 52 97     clr2  $97
0924: 5c        lsr   a
0925: c4 9b     mov   $9b,a
0927: 5c        lsr   a
0928: 60        clrc
0929: 84 9b     adc   a,$9b
092b: d0 05     bne   $0932
092d: bc        inc   a
092e: 2f 02     bra   $0932
0930: e8 00     mov   a,#$00
0932: 38 40 98  and   $98,#$40
0935: 0b 98     asl   $98
0937: 58 80 98  eor   $98,#$80
093a: 04 98     or    a,$98
093c: 2f 04     bra   $0942
093e: e4 99     mov   a,$99
0940: 08 80     or    a,#$80
0942: 6f        ret

0943: f8 f4     mov   x,$f4
0945: f0 51     beq   $0998
0947: ba f6     movw  ya,$f6
0949: da 8c     movw  $8c,ya
094b: ba f4     movw  ya,$f4
094d: da 8a     movw  $8a,ya
094f: c4 f4     mov   $f4,a
0951: 64 f4     cmp   a,$f4
0953: f0 fc     beq   $0951
0955: 5d        mov   x,a
0956: 10 0d     bpl   $0965
0958: c8 fe     cmp   x,#$fe
095a: d0 03     bne   $095f
095c: 5f f5 0d  jmp   $0df5

095f: 8f 00 f4  mov   $f4,#$00
0962: 5f d0 0b  jmp   $0bd0

0965: c8 10     cmp   x,#$10
0967: 90 2f     bcc   $0998
0969: c8 18     cmp   x,#$18
096b: b0 0d     bcs   $097a
096d: 28 0f     and   a,#$0f
096f: 1c        asl   a
0970: fd        mov   y,a
0971: f6 bd 17  mov   a,$17bd+y
0974: 2d        push  a
0975: f6 bc 17  mov   a,$17bc+y
0978: 2d        push  a
0979: 6f        ret

097a: c8 20     cmp   x,#$20
097c: b0 10     bcs   $098e
097e: 8f 00 f4  mov   $f4,#$00
0981: 28 0f     and   a,#$0f
0983: 1c        asl   a
0984: fd        mov   y,a
0985: f6 bd 17  mov   a,$17bd+y
0988: 2d        push  a
0989: f6 bc 17  mov   a,$17bc+y
098c: 2d        push  a
098d: 6f        ret

098e: c8 30     cmp   x,#$30
0990: b0 06     bcs   $0998
0992: 8f 00 f4  mov   $f4,#$00
0995: 5f 71 0b  jmp   $0b71

0998: 6f        ret

0999: 3f 06 10  call  $1006
099c: 8f 10 c3  mov   $c3,#$10
099f: 2f 06     bra   $09a7
09a1: 3f 06 10  call  $1006
09a4: 8f 20 c3  mov   $c3,#$20
09a7: e8 ff     mov   a,#$ff
09a9: 8d 5c     mov   y,#$5c
09ab: 3f 5c 06  call  $065c
09ae: fa 8b c6  mov   ($c6),($8b)
09b1: e4 8c     mov   a,$8c
09b3: c4 a5     mov   $a5,a
09b5: 8f 00 ac  mov   $ac,#$00
09b8: 3f f5 0d  call  $0df5
09bb: 3f ad 0f  call  $0fad
09be: 3f cf 0f  call  $0fcf
09c1: e8 00     mov   a,#$00
09c3: 8d 5c     mov   y,#$5c
09c5: 3f 5c 06  call  $065c
09c8: e8 00     mov   a,#$00
09ca: fd        mov   y,a
09cb: da 83     movw  $83,ya
09cd: d2 85     clr6  $85
09cf: c4 54     mov   $54,a
09d1: c4 56     mov   $56,a
09d3: c4 58     mov   $58,a
09d5: c4 22     mov   $22,a
09d7: c4 24     mov   $24,a
09d9: da da     movw  $da,ya
09db: da d8     movw  $d8,ya
09dd: 63 a1 44  bbs3  $a1,$0a24
09e0: 69 c6 c5  cmp   ($c5),($c6)
09e3: d0 3f     bne   $0a24
09e5: 3f 42 10  call  $1042
09e8: 3f a0 12  call  $12a0
09eb: e4 62     mov   a,$62
09ed: 28 1f     and   a,#$1f
09ef: 38 e0 89  and   $89,#$e0
09f2: 04 89     or    a,$89
09f4: c4 89     mov   $89,a
09f6: cd 00     mov   x,#$00
09f8: 8f 01 8e  mov   $8e,#$01
09fb: bb 25     inc   $25+x
09fd: d8 a2     mov   $a2,x
09ff: 3f 23 14  call  $1423
0a02: 7d        mov   a,x
0a03: 9f        xcn   a
0a04: 5c        lsr   a
0a05: fd        mov   y,a
0a06: e8 00     mov   a,#$00
0a08: 3f 5c 06  call  $065c
0a0b: fc        inc   y
0a0c: 3f 5c 06  call  $065c
0a0f: 3f a4 08  call  $08a4
0a12: 3d        inc   x
0a13: 3d        inc   x
0a14: 0b 8e     asl   $8e
0a16: d0 e3     bne   $09fb
0a18: e4 23     mov   a,$23
0a1a: 8d 4c     mov   y,#$4c
0a1c: 3f 5c 06  call  $065c
0a1f: 8f ff da  mov   $da,#$ff
0a22: 2f 6d     bra   $0a91
0a24: e8 00     mov   a,#$00
0a26: fd        mov   y,a
0a27: c4 52     mov   $52,a
0a29: c4 53     mov   $53,a
0a2b: c4 55     mov   $55,a
0a2d: c4 57     mov   $57,a
0a2f: c4 23     mov   $23,a
0a31: c4 4d     mov   $4d,a
0a33: c4 50     mov   $50,a
0a35: c4 59     mov   $59,a
0a37: c4 5b     mov   $5b,a
0a39: c4 5f     mov   $5f,a
0a3b: c4 61     mov   $61,a
0a3d: 8f 01 46  mov   $46,#$01
0a40: 8f ff 47  mov   $47,#$ff
0a43: 8f ff 51  mov   $51,#$ff
0a46: c4 66     mov   $66,a
0a48: 63 a1 46  bbs3  $a1,$0a91
0a4b: eb c3     mov   y,$c3
0a4d: cd 10     mov   x,#$10
0a4f: f6 03 1c  mov   a,$1c03+y
0a52: d4 01     mov   $01+x,a
0a54: dc        dec   y
0a55: 1d        dec   x
0a56: d0 f7     bne   $0a4f
0a58: e5 00 1c  mov   a,$1c00
0a5b: c4 00     mov   $00,a
0a5d: e5 01 1c  mov   a,$1c01
0a60: c4 01     mov   $01,a
0a62: e8 24     mov   a,#$24
0a64: 8d 1c     mov   y,#$1c
0a66: 9a 00     subw  ya,$00
0a68: da 00     movw  $00,ya
0a6a: cd 0e     mov   x,#$0e
0a6c: 8f 80 8e  mov   $8e,#$80
0a6f: e5 02 1c  mov   a,$1c02
0a72: ec 03 1c  mov   y,$1c03
0a75: da 97     movw  $97,ya
0a77: f4 02     mov   a,$02+x
0a79: fb 03     mov   y,$03+x
0a7b: 5a 97     cmpw  ya,$97
0a7d: f0 0c     beq   $0a8b
0a7f: 09 8e 52  or    ($52),($8e)
0a82: 7a 00     addw  ya,$00
0a84: d4 02     mov   $02+x,a
0a86: db 03     mov   $03+x,y
0a88: 3f a2 0a  call  $0aa2
0a8b: 1d        dec   x
0a8c: 1d        dec   x
0a8d: 4b 8e     lsr   $8e
0a8f: d0 e6     bne   $0a77
0a91: fa 53 86  mov   ($86),($53)
0a94: fa 55 87  mov   ($87),($55)
0a97: fa 57 88  mov   ($88),($57)
0a9a: cd ff     mov   x,#$ff
0a9c: bd        mov   sp,x
0a9d: e4 fd     mov   a,$fd
0a9f: 5f 7d 02  jmp   $027d

0aa2: 7d        mov   a,x
0aa3: 1c        asl   a
0aa4: d4 26     mov   $26+x,a
0aa6: e8 00     mov   a,#$00
0aa8: d5 20 01  mov   $0120+x,a
0aab: d5 a0 f7  mov   $f7a0+x,a
0aae: d5 a1 f7  mov   $f7a1+x,a
0ab1: d5 21 01  mov   $0121+x,a
0ab4: d5 40 01  mov   $0140+x,a
0ab7: d5 41 01  mov   $0141+x,a
0aba: d5 00 f8  mov   $f800+x,a
0abd: d5 01 f8  mov   $f801+x,a
0ac0: d5 60 f7  mov   $f760+x,a
0ac3: d5 81 f7  mov   $f781+x,a
0ac6: bc        inc   a
0ac7: d4 25     mov   $25+x,a
0ac9: 6f        ret

0aca: fa 8b 8f  mov   ($8f),($8b)
0acd: 8f 00 90  mov   $90,#$00
0ad0: 0b 8f     asl   $8f
0ad2: 2b 90     rol   $90
0ad4: 0b 8f     asl   $8f
0ad6: 2b 90     rol   $90
0ad8: e8 00     mov   a,#$00
0ada: 8d 2c     mov   y,#$2c
0adc: 7a 8f     addw  ya,$8f
0ade: da 8f     movw  $8f,ya
0ae0: cd 1e     mov   x,#$1e
0ae2: 8f 80 8e  mov   $8e,#$80
0ae5: e4 83     mov   a,$83
0ae7: d0 04     bne   $0aed
0ae9: e4 84     mov   a,$84
0aeb: 48 f0     eor   a,#$f0
0aed: c4 a0     mov   $a0,a
0aef: e4 a0     mov   a,$a0
0af1: 24 8e     and   a,$8e
0af3: d0 07     bne   $0afc
0af5: 4b 8e     lsr   $8e
0af7: 1d        dec   x
0af8: 1d        dec   x
0af9: b3 8e f3  bbc5  $8e,$0aef
0afc: 8d 03     mov   y,#$03
0afe: 8f 00 a0  mov   $a0,#$00
0b01: f7 8f     mov   a,($8f)+y
0b03: f0 2e     beq   $0b33
0b05: d4 03     mov   $03+x,a
0b07: dc        dec   y
0b08: f7 8f     mov   a,($8f)+y
0b0a: d4 02     mov   $02+x,a
0b0c: 09 8e a0  or    ($a0),($8e)
0b0f: 3f a2 0a  call  $0aa2
0b12: bb 25     inc   $25+x
0b14: e8 50     mov   a,#$50
0b16: d5 21 f6  mov   $f621+x,a
0b19: e8 80     mov   a,#$80
0b1b: d5 61 f6  mov   $f661+x,a
0b1e: e8 00     mov   a,#$00
0b20: d5 a0 f6  mov   $f6a0+x,a
0b23: d5 a1 f6  mov   $f6a1+x,a
0b26: 6d        push  y
0b27: e8 04     mov   a,#$04
0b29: 3f fc 13  call  $13fc
0b2c: ee        pop   y
0b2d: 1d        dec   x
0b2e: 1d        dec   x
0b2f: 4b 8e     lsr   $8e
0b31: 2f 01     bra   $0b34
0b33: dc        dec   y
0b34: dc        dec   y
0b35: 10 ca     bpl   $0b01
0b37: e4 83     mov   a,$83
0b39: 04 a0     or    a,$a0
0b3b: 4e 22 00  tclr1 $0022
0b3e: 4e 5a 00  tclr1 $005a
0b41: 4e 5c 00  tclr1 $005c
0b44: 4e 60 00  tclr1 $0060
0b47: 0e 24 00  tset1 $0024
0b4a: c4 a1     mov   $a1,a
0b4c: cd 1e     mov   x,#$1e
0b4e: 8f 80 8e  mov   $8e,#$80
0b51: 0b a1     asl   $a1
0b53: 90 03     bcc   $0b58
0b55: 3f 56 16  call  $1656
0b58: 1d        dec   x
0b59: 1d        dec   x
0b5a: 4b 8e     lsr   $8e
0b5c: 73 8e f2  bbc3  $8e,$0b51
0b5f: e4 a0     mov   a,$a0
0b61: c4 83     mov   $83,a
0b63: 4e 86 00  tclr1 $0086
0b66: 4e 88 00  tclr1 $0088
0b69: 4e 87 00  tclr1 $0087
0b6c: e4 8c     mov   a,$8c
0b6e: c4 b1     mov   $b1,a
0b70: 6f        ret

0b71: 7d        mov   a,x
0b72: 28 0f     and   a,#$0f
0b74: 1c        asl   a
0b75: fd        mov   y,a
0b76: cd 20     mov   x,#$20
0b78: e4 83     mov   a,$83
0b7a: 04 84     or    a,$84
0b7c: 28 f0     and   a,#$f0
0b7e: 8f 80 8e  mov   $8e,#$80
0b81: 68 f0     cmp   a,#$f0
0b83: f0 0c     beq   $0b91
0b85: 1d        dec   x
0b86: 1d        dec   x
0b87: 1c        asl   a
0b88: 90 14     bcc   $0b9e
0b8a: 4b 8e     lsr   $8e
0b8c: 73 8e f6  bbc3  $8e,$0b85
0b8f: 2f 0d     bra   $0b9e
0b91: 1d        dec   x
0b92: 1d        dec   x
0b93: e4 84     mov   a,$84
0b95: 24 8e     and   a,$8e
0b97: d0 05     bne   $0b9e
0b99: 4b 8e     lsr   $8e
0b9b: 73 8e f3  bbc3  $8e,$0b91
0b9e: f6 b9 16  mov   a,$16b9+y
0ba1: f0 2c     beq   $0bcf
0ba3: d4 03     mov   $03+x,a
0ba5: f6 b8 16  mov   a,$16b8+y
0ba8: d4 02     mov   $02+x,a
0baa: 3f a2 0a  call  $0aa2
0bad: bb 25     inc   $25+x
0baf: 3f 56 16  call  $1656
0bb2: e4 8e     mov   a,$8e
0bb4: 4e 5a 00  tclr1 $005a
0bb7: 4e 5c 00  tclr1 $005c
0bba: 4e 60 00  tclr1 $0060
0bbd: 0e 24 00  tset1 $0024
0bc0: 4e 22 00  tclr1 $0022
0bc3: 4e 86 00  tclr1 $0086
0bc6: 4e 88 00  tclr1 $0088
0bc9: 4e 87 00  tclr1 $0087
0bcc: 09 8e 84  or    ($84),($8e)
0bcf: 6f        ret

0bd0: c8 f0     cmp   x,#$f0
0bd2: b0 04     bcs   $0bd8
0bd4: c8 90     cmp   x,#$90
0bd6: b0 0d     bcs   $0be5
0bd8: 7d        mov   a,x
0bd9: 28 1f     and   a,#$1f
0bdb: 1c        asl   a
0bdc: fd        mov   y,a
0bdd: f6 dd 17  mov   a,$17dd+y
0be0: 2d        push  a
0be1: f6 dc 17  mov   a,$17dc+y
0be4: 2d        push  a
0be5: 6f        ret

0be6: cd 00     mov   x,#$00
0be8: e4 8a     mov   a,$8a
0bea: 13 8a 03  bbc0  $8a,$0bf0
0bed: bc        inc   a
0bee: 2f 0d     bra   $0bfd
0bf0: 33 8a 05  bbc1  $8a,$0bf8
0bf3: bc        inc   a
0bf4: cd 02     mov   x,#$02
0bf6: 2f 05     bra   $0bfd
0bf8: ab 8a     inc   $8a
0bfa: 60        clrc
0bfb: 88 03     adc   a,#$03
0bfd: c4 97     mov   $97,a
0bff: eb 8c     mov   y,$8c
0c01: e4 8b     mov   a,$8b
0c03: d4 ac     mov   $ac+x,a
0c05: d0 0a     bne   $0c11
0c07: db a5     mov   $a5+x,y
0c09: d4 a4     mov   $a4+x,a
0c0b: d4 a9     mov   $a9+x,a
0c0d: d4 a8     mov   $a8+x,a
0c0f: 2f 35     bra   $0c46
0c11: dd        mov   a,y
0c12: 80        setc
0c13: b4 a5     sbc   a,$a5+x
0c15: f0 ec     beq   $0c03
0c17: 4d        push  x
0c18: 0d        push  psw
0c19: b0 03     bcs   $0c1e
0c1b: 48 ff     eor   a,#$ff
0c1d: bc        inc   a
0c1e: f8 8b     mov   x,$8b
0c20: 8d 00     mov   y,#$00
0c22: 9e        div   ya,x
0c23: c4 9a     mov   $9a,a
0c25: e8 00     mov   a,#$00
0c27: 9e        div   ya,x
0c28: c4 99     mov   $99,a
0c2a: ba 99     movw  ya,$99
0c2c: d0 02     bne   $0c30
0c2e: ab 99     inc   $99
0c30: 8e        pop   psw
0c31: b0 08     bcs   $0c3b
0c33: 58 ff 99  eor   $99,#$ff
0c36: 58 ff 9a  eor   $9a,#$ff
0c39: 3a 99     incw  $99
0c3b: ba 99     movw  ya,$99
0c3d: ce        pop   x
0c3e: d4 a8     mov   $a8+x,a
0c40: db a9     mov   $a9+x,y
0c42: e8 00     mov   a,#$00
0c44: d4 a4     mov   $a4+x,a
0c46: ab 8a     inc   $8a
0c48: 69 97 8a  cmp   ($8a),($97)
0c4b: f0 04     beq   $0c51
0c4d: 3d        inc   x
0c4e: 3d        inc   x
0c4f: 2f ae     bra   $0bff
0c51: 8f ff da  mov   $da,#$ff
0c54: 6f        ret

0c55: eb 8c     mov   y,$8c
0c57: e4 8b     mov   a,$8b
0c59: c4 b4     mov   $b4,a
0c5b: d0 0a     bne   $0c67
0c5d: cb b1     mov   $b1,y
0c5f: c4 b0     mov   $b0,a
0c61: c4 b3     mov   $b3,a
0c63: c4 b2     mov   $b2,a
0c65: 2f 32     bra   $0c99
0c67: dd        mov   a,y
0c68: 80        setc
0c69: a4 b1     sbc   a,$b1
0c6b: f0 ec     beq   $0c59
0c6d: 0d        push  psw
0c6e: b0 03     bcs   $0c73
0c70: 48 ff     eor   a,#$ff
0c72: bc        inc   a
0c73: f8 8b     mov   x,$8b
0c75: 8d 00     mov   y,#$00
0c77: 9e        div   ya,x
0c78: c4 98     mov   $98,a
0c7a: e8 00     mov   a,#$00
0c7c: 9e        div   ya,x
0c7d: c4 97     mov   $97,a
0c7f: ba 97     movw  ya,$97
0c81: d0 02     bne   $0c85
0c83: ab 97     inc   $97
0c85: 8e        pop   psw
0c86: b0 08     bcs   $0c90
0c88: 58 ff 97  eor   $97,#$ff
0c8b: 58 ff 98  eor   $98,#$ff
0c8e: 3a 97     incw  $97
0c90: ba 97     movw  ya,$97
0c92: c4 b2     mov   $b2,a
0c94: cb b3     mov   $b3,y
0c96: 8f 00 b0  mov   $b0,#$00
0c99: 8f ff da  mov   $da,#$ff
0c9c: 6f        ret

0c9d: eb 8c     mov   y,$8c
0c9f: e4 8b     mov   a,$8b
0ca1: c4 b9     mov   $b9,a
0ca3: d0 0a     bne   $0caf
0ca5: cb b6     mov   $b6,y
0ca7: c4 b5     mov   $b5,a
0ca9: c4 b8     mov   $b8,a
0cab: c4 b7     mov   $b7,a
0cad: 2f 32     bra   $0ce1
0caf: dd        mov   a,y
0cb0: 80        setc
0cb1: a4 b6     sbc   a,$b6
0cb3: f0 ec     beq   $0ca1
0cb5: 0d        push  psw
0cb6: b0 03     bcs   $0cbb
0cb8: 48 ff     eor   a,#$ff
0cba: bc        inc   a
0cbb: f8 8b     mov   x,$8b
0cbd: 8d 00     mov   y,#$00
0cbf: 9e        div   ya,x
0cc0: c4 98     mov   $98,a
0cc2: e8 00     mov   a,#$00
0cc4: 9e        div   ya,x
0cc5: c4 97     mov   $97,a
0cc7: ba 97     movw  ya,$97
0cc9: d0 02     bne   $0ccd
0ccb: ab 97     inc   $97
0ccd: 8e        pop   psw
0cce: b0 08     bcs   $0cd8
0cd0: 58 ff 97  eor   $97,#$ff
0cd3: 58 ff 98  eor   $98,#$ff
0cd6: 3a 97     incw  $97
0cd8: ba 97     movw  ya,$97
0cda: c4 b7     mov   $b7,a
0cdc: cb b8     mov   $b8,y
0cde: 8f 00 b5  mov   $b5,#$00
0ce1: 6f        ret

0ce2: eb 8c     mov   y,$8c
0ce4: e4 8b     mov   a,$8b
0ce6: c4 be     mov   $be,a
0ce8: d0 0a     bne   $0cf4
0cea: cb bb     mov   $bb,y
0cec: c4 ba     mov   $ba,a
0cee: c4 bd     mov   $bd,a
0cf0: c4 bc     mov   $bc,a
0cf2: 2f 32     bra   $0d26
0cf4: dd        mov   a,y
0cf5: 80        setc
0cf6: a4 bb     sbc   a,$bb
0cf8: f0 ec     beq   $0ce6
0cfa: 0d        push  psw
0cfb: b0 03     bcs   $0d00
0cfd: 48 ff     eor   a,#$ff
0cff: bc        inc   a
0d00: f8 8b     mov   x,$8b
0d02: 8d 00     mov   y,#$00
0d04: 9e        div   ya,x
0d05: c4 98     mov   $98,a
0d07: e8 00     mov   a,#$00
0d09: 9e        div   ya,x
0d0a: c4 97     mov   $97,a
0d0c: ba 97     movw  ya,$97
0d0e: d0 02     bne   $0d12
0d10: ab 97     inc   $97
0d12: 8e        pop   psw
0d13: b0 08     bcs   $0d1d
0d15: 58 ff 97  eor   $97,#$ff
0d18: 58 ff 98  eor   $98,#$ff
0d1b: 3a 97     incw  $97
0d1d: ba 97     movw  ya,$97
0d1f: c4 bc     mov   $bc,a
0d21: cb bd     mov   $bd,y
0d23: 8f 00 ba  mov   $ba,#$00
0d26: 6f        ret

0d27: 13 8a 04  bbc0  $8a,$0d2e
0d2a: 12 85     clr0  $85
0d2c: 2f 02     bra   $0d30
0d2e: 02 85     set0  $85
0d30: 8f ff da  mov   $da,#$ff
0d33: 6f        ret

0d34: 23 8a 29  bbs1  $8a,$0d60
0d37: e4 83     mov   a,$83
0d39: 04 84     or    a,$84
0d3b: 48 ff     eor   a,#$ff
0d3d: 0e 24 00  tset1 $0024
0d40: 4e 22 00  tclr1 $0022
0d43: 4e 86 00  tclr1 $0086
0d46: 4e 88 00  tclr1 $0088
0d49: 4e 87 00  tclr1 $0087
0d4c: e8 00     mov   a,#$00
0d4e: c4 52     mov   $52,a
0d50: c4 d8     mov   $d8,a
0d52: c4 53     mov   $53,a
0d54: c4 57     mov   $57,a
0d56: c4 55     mov   $55,a
0d58: 9c        dec   a
0d59: c4 c5     mov   $c5,a
0d5b: c4 c6     mov   $c6,a
0d5d: 03 8a 1d  bbs0  $8a,$0d7d
0d60: e4 83     mov   a,$83
0d62: 0e 24 00  tset1 $0024
0d65: 4e 22 00  tclr1 $0022
0d68: c4 a0     mov   $a0,a
0d6a: cd 1e     mov   x,#$1e
0d6c: 8f 80 8e  mov   $8e,#$80
0d6f: 0b a0     asl   $a0
0d71: 90 03     bcc   $0d76
0d73: 3f 56 16  call  $1656
0d76: 1d        dec   x
0d77: 1d        dec   x
0d78: 4b 8e     lsr   $8e
0d7a: 73 8e f2  bbc3  $8e,$0d6f
0d7d: 6f        ret

0d7e: fa 8b a3  mov   ($a3),($8b)
0d81: 8f ff da  mov   $da,#$ff
0d84: 6f        ret

0d85: 60        clrc
0d86: e8 ff     mov   a,#$ff
0d88: 84 8b     adc   a,$8b
0d8a: ca 85 60  mov1  $0085,3,c
0d8d: 6f        ret

0d8e: 03 8a 42  bbs0  $8a,$0dd3
0d91: 8d 05     mov   y,#$05
0d93: cb f2     mov   $f2,y
0d95: e4 f3     mov   a,$f3
0d97: 28 7f     and   a,#$7f
0d99: c4 f3     mov   $f3,a
0d9b: dd        mov   a,y
0d9c: 60        clrc
0d9d: 88 10     adc   a,#$10
0d9f: fd        mov   y,a
0da0: 10 f1     bpl   $0d93
0da2: cd 00     mov   x,#$00
0da4: 8d 00     mov   y,#$00
0da6: cb f2     mov   $f2,y
0da8: d8 f3     mov   $f3,x
0daa: fc        inc   y
0dab: cb f2     mov   $f2,y
0dad: d8 f3     mov   $f3,x
0daf: dd        mov   a,y
0db0: 60        clrc
0db1: 88 0f     adc   a,#$0f
0db3: fd        mov   y,a
0db4: 10 f0     bpl   $0da6
0db6: fa 52 97  mov   ($97),($52)
0db9: fa 83 98  mov   ($98),($83)
0dbc: ba 97     movw  ya,$97
0dbe: f0 08     beq   $0dc8
0dc0: da d8     movw  $d8,ya
0dc2: e8 00     mov   a,#$00
0dc4: c4 52     mov   $52,a
0dc6: c4 83     mov   $83,a
0dc8: c4 22     mov   $22,a
0dca: 8d 10     mov   y,#$10
0dcc: d6 c7 00  mov   $00c7+y,a
0dcf: fe fb     dbnz  y,$0dcc
0dd1: 2f 21     bra   $0df4
0dd3: 8d 05     mov   y,#$05
0dd5: cb f2     mov   $f2,y
0dd7: e4 f3     mov   a,$f3
0dd9: 08 80     or    a,#$80
0ddb: c4 f3     mov   $f3,a
0ddd: dd        mov   a,y
0dde: 60        clrc
0ddf: 88 10     adc   a,#$10
0de1: fd        mov   y,a
0de2: 10 f1     bpl   $0dd5
0de4: ba d8     movw  ya,$d8
0de6: f0 0c     beq   $0df4
0de8: 8f ff da  mov   $da,#$ff
0deb: c4 52     mov   $52,a
0ded: cb 83     mov   $83,y
0def: e8 00     mov   a,#$00
0df1: fd        mov   y,a
0df2: da d8     movw  $d8,ya
0df4: 6f        ret

0df5: e4 f5     mov   a,$f5
0df7: c4 a1     mov   $a1,a
0df9: 28 07     and   a,#$07
0dfb: c4 f5     mov   $f5,a
0dfd: d0 0c     bne   $0e0b
0dff: f8 f4     mov   x,$f4
0e01: d8 f4     mov   $f4,x
0e03: 78 80 a1  cmp   $a1,#$80
0e06: d0 21     bne   $0e29
0e08: 5f 33 11  jmp   $1133

0e0b: 1c        asl   a
0e0c: 2d        push  a
0e0d: ba f6     movw  ya,$f6
0e0f: da 8f     movw  $8f,ya
0e11: ee        pop   y
0e12: f6 50 11  mov   a,$1150+y
0e15: 2d        push  a
0e16: f6 4f 11  mov   a,$114f+y
0e19: 2d        push  a
0e1a: 8d 00     mov   y,#$00
0e1c: dd        mov   a,y
0e1d: da dc     movw  $dc,ya
0e1f: f8 f4     mov   x,$f4
0e21: d8 f4     mov   $f4,x
0e23: 3e f4     cmp   x,$f4
0e25: f0 fc     beq   $0e23
0e27: f8 f4     mov   x,$f4
0e29: 6f        ret

0e2a: e4 f5     mov   a,$f5
0e2c: d7 8f     mov   ($8f)+y,a
0e2e: fc        inc   y
0e2f: e4 f6     mov   a,$f6
0e31: d7 8f     mov   ($8f)+y,a
0e33: fc        inc   y
0e34: e4 f7     mov   a,$f7
0e36: d8 f4     mov   $f4,x
0e38: d7 8f     mov   ($8f)+y,a
0e3a: 60        clrc
0e3b: 98 03 8f  adc   $8f,#$03
0e3e: 98 00 90  adc   $90,#$00
0e41: 8d 00     mov   y,#$00
0e43: dd        mov   a,y
0e44: da dc     movw  $dc,ya
0e46: 3e f4     cmp   x,$f4
0e48: d0 05     bne   $0e4f
0e4a: 3f 2e 11  call  $112e
0e4d: 2f f7     bra   $0e46
0e4f: 3e f4     cmp   x,$f4
0e51: f0 f3     beq   $0e46
0e53: f8 f4     mov   x,$f4
0e55: d0 d3     bne   $0e2a
0e57: e8 00     mov   a,#$00
0e59: f8 f4     mov   x,$f4
0e5b: d0 cd     bne   $0e2a
0e5d: bc        inc   a
0e5e: d0 f9     bne   $0e59
0e60: 5f f5 0d  jmp   $0df5

0e63: e4 f6     mov   a,$f6
0e65: d7 8f     mov   ($8f)+y,a
0e67: fc        inc   y
0e68: e4 f7     mov   a,$f7
0e6a: d8 f4     mov   $f4,x
0e6c: d7 8f     mov   ($8f)+y,a
0e6e: 3a 8f     incw  $8f
0e70: 3a 8f     incw  $8f
0e72: dc        dec   y
0e73: dd        mov   a,y
0e74: da dc     movw  $dc,ya
0e76: 3e f4     cmp   x,$f4
0e78: d0 05     bne   $0e7f
0e7a: 3f 2e 11  call  $112e
0e7d: 2f f7     bra   $0e76
0e7f: 3e f4     cmp   x,$f4
0e81: f0 f3     beq   $0e76
0e83: f8 f4     mov   x,$f4
0e85: d0 dc     bne   $0e63
0e87: e8 00     mov   a,#$00
0e89: f8 f4     mov   x,$f4
0e8b: d0 d6     bne   $0e63
0e8d: bc        inc   a
0e8e: d0 f9     bne   $0e89
0e90: 5f f5 0d  jmp   $0df5

0e93: e4 f7     mov   a,$f7
0e95: d8 f4     mov   $f4,x
0e97: d7 8f     mov   ($8f)+y,a
0e99: 3a 8f     incw  $8f
0e9b: dd        mov   a,y
0e9c: da dc     movw  $dc,ya
0e9e: 3e f4     cmp   x,$f4
0ea0: d0 05     bne   $0ea7
0ea2: 3f 2e 11  call  $112e
0ea5: 2f f7     bra   $0e9e
0ea7: 3e f4     cmp   x,$f4
0ea9: f0 f3     beq   $0e9e
0eab: f8 f4     mov   x,$f4
0ead: d0 e4     bne   $0e93
0eaf: e8 00     mov   a,#$00
0eb1: f8 f4     mov   x,$f4
0eb3: d0 de     bne   $0e93
0eb5: bc        inc   a
0eb6: d0 f9     bne   $0eb1
0eb8: 5f f5 0d  jmp   $0df5

0ebb: d8 f4     mov   $f4,x
0ebd: e8 00     mov   a,#$00
0ebf: fd        mov   y,a
0ec0: da dc     movw  $dc,ya
0ec2: 3e f4     cmp   x,$f4
0ec4: d0 05     bne   $0ecb
0ec6: 3f 2e 11  call  $112e
0ec9: 2f f7     bra   $0ec2
0ecb: 3e f4     cmp   x,$f4
0ecd: f0 f3     beq   $0ec2
0ecf: f8 f4     mov   x,$f4
0ed1: d0 e8     bne   $0ebb
0ed3: e8 00     mov   a,#$00
0ed5: f8 f4     mov   x,$f4
0ed7: d0 e2     bne   $0ebb
0ed9: bc        inc   a
0eda: d0 f9     bne   $0ed5
0edc: 5f f5 0d  jmp   $0df5

0edf: ba f6     movw  ya,$f6
0ee1: da 91     movw  $91,ya
0ee3: d8 f4     mov   $f4,x
0ee5: 3e f4     cmp   x,$f4
0ee7: f0 fc     beq   $0ee5
0ee9: f8 f4     mov   x,$f4
0eeb: ba f6     movw  ya,$f6
0eed: da 97     movw  $97,ya
0eef: d8 f4     mov   $f4,x
0ef1: 8d 00     mov   y,#$00
0ef3: f7 8f     mov   a,($8f)+y
0ef5: d7 91     mov   ($91)+y,a
0ef7: fc        inc   y
0ef8: d0 04     bne   $0efe
0efa: ab 90     inc   $90
0efc: ab 92     inc   $92
0efe: 1a 97     decw  $97
0f00: d0 f1     bne   $0ef3
0f02: 3e f4     cmp   x,$f4
0f04: f0 fc     beq   $0f02
0f06: f8 f4     mov   x,$f4
0f08: f0 0e     beq   $0f18
0f0a: ba f6     movw  ya,$f6
0f0c: da 8f     movw  $8f,ya
0f0e: d8 f4     mov   $f4,x
0f10: 3e f4     cmp   x,$f4
0f12: f0 fc     beq   $0f10
0f14: f8 f4     mov   x,$f4
0f16: 2f c7     bra   $0edf
0f18: 5f f5 0d  jmp   $0df5

0f1b: aa 8a 00  mov1  c,$008a,0
0f1e: ca 85 c0  mov1  $0085,6,c
0f21: b0 04     bcs   $0f27
0f23: e8 24     mov   a,#$24
0f25: 2f 02     bra   $0f29
0f27: e8 01     mov   a,#$01
0f29: 8f 06 f1  mov   $f1,#$06
0f2c: c4 fa     mov   $fa,a
0f2e: 8f 07 f1  mov   $f1,#$07
0f31: 6f        ret

0f32: e8 ff     mov   a,#$ff
0f34: 8d fe     mov   y,#$fe
0f36: 5a 8a     cmpw  ya,$8a
0f38: d0 0c     bne   $0f46
0f3a: e8 fd     mov   a,#$fd
0f3c: 8d fc     mov   y,#$fc
0f3e: 5a 8c     cmpw  ya,$8c
0f40: d0 04     bne   $0f46
0f42: e2 85     set7  $85
0f44: 2f 02     bra   $0f48
0f46: f2 85     clr7  $85
0f48: 6f        ret

0f49: 6f        ret

0f4a: c4 bf     mov   $bf,a
0f4c: dd        mov   a,y
0f4d: 60        clrc
0f4e: 84 bf     adc   a,$bf
0f50: e3 bf 06  bbs7  $bf,$0f59
0f53: 90 08     bcc   $0f5d
0f55: e8 ff     mov   a,#$ff
0f57: 2f 04     bra   $0f5d
0f59: b0 02     bcs   $0f5d
0f5b: e8 00     mov   a,#$00
0f5d: 6f        ret

0f5e: eb 8b     mov   y,$8b
0f60: e4 8c     mov   a,$8c
0f62: 5f 5c 06  jmp   $065c

0f65: e4 fe     mov   a,$fe
0f67: 2f 05     bra   $0f6e
0f69: eb fe     mov   y,$fe
0f6b: f0 fc     beq   $0f69
0f6d: bc        inc   a
0f6e: 66        cmp   a,(x)
0f6f: 90 f8     bcc   $0f69
0f71: 6f        ret

0f72: 38 0f 8b  and   $8b,#$0f
0f75: fa 8b 80  mov   ($80),($8b)
0f78: 3f 7f 0f  call  $0f7f
0f7b: 3f cf 0f  call  $0fcf
0f7e: 6f        ret

0f7f: 3f ad 0f  call  $0fad
0f82: 8d 7d     mov   y,#$7d
0f84: cb f2     mov   $f2,y
0f86: e4 f3     mov   a,$f3
0f88: 28 0f     and   a,#$0f
0f8a: c4 81     mov   $81,a
0f8c: e4 80     mov   a,$80
0f8e: 3f 5c 06  call  $065c
0f91: fd        mov   y,a
0f92: d0 01     bne   $0f95
0f94: bc        inc   a
0f95: 1c        asl   a
0f96: 1c        asl   a
0f97: 1c        asl   a
0f98: 48 ff     eor   a,#$ff
0f9a: bc        inc   a
0f9b: 60        clrc
0f9c: 88 f5     adc   a,#$f5
0f9e: 8d 6d     mov   y,#$6d
0fa0: 3f 5c 06  call  $065c
0fa3: c4 82     mov   $82,a
0fa5: cd 81     mov   x,#$81
0fa7: e4 fe     mov   a,$fe
0fa9: 3f 65 0f  call  $0f65
0fac: 6f        ret

0fad: 8f 6c f2  mov   $f2,#$6c
0fb0: e4 f3     mov   a,$f3
0fb2: 08 20     or    a,#$20
0fb4: c4 f3     mov   $f3,a
0fb6: e8 00     mov   a,#$00
0fb8: 8d 4d     mov   y,#$4d
0fba: 3f 5c 06  call  $065c
0fbd: 8d 2c     mov   y,#$2c
0fbf: 3f 5c 06  call  $065c
0fc2: 8d 3c     mov   y,#$3c
0fc4: 3f 5c 06  call  $065c
0fc7: 8d 0d     mov   y,#$0d
0fc9: 3f 5c 06  call  $065c
0fcc: e4 fe     mov   a,$fe
0fce: 6f        ret

0fcf: e4 80     mov   a,$80
0fd1: f0 13     beq   $0fe6
0fd3: e8 00     mov   a,#$00
0fd5: eb 82     mov   y,$82
0fd7: da 8f     movw  $8f,ya
0fd9: fd        mov   y,a
0fda: d7 8f     mov   ($8f)+y,a
0fdc: fc        inc   y
0fdd: d0 fb     bne   $0fda
0fdf: ab 90     inc   $90
0fe1: 78 f5 90  cmp   $90,#$f5
0fe4: d0 f4     bne   $0fda
0fe6: 8f 6c f2  mov   $f2,#$6c
0fe9: e4 f3     mov   a,$f3
0feb: 28 df     and   a,#$df
0fed: c4 f3     mov   $f3,a
0fef: 6f        ret

0ff0: e8 00     mov   a,#$00
0ff2: c4 a3     mov   $a3,a
0ff4: c4 d8     mov   $d8,a
0ff6: c4 d9     mov   $d9,a
0ff8: 12 85     clr0  $85
0ffa: c4 b9     mov   $b9,a
0ffc: c4 b6     mov   $b6,a
0ffe: c4 be     mov   $be,a
1000: c4 bb     mov   $bb,a
1002: 8f ff a7  mov   $a7,#$ff
1005: 6f        ret

1006: fa c6 c5  mov   ($c5),($c6)
1009: e8 00     mov   a,#$00
100b: c4 8f     mov   $8f,a
100d: e8 f6     mov   a,#$f6
100f: c4 90     mov   $90,a
1011: e8 00     mov   a,#$00
1013: c4 91     mov   $91,a
1015: e8 fa     mov   a,#$fa
1017: c4 92     mov   $92,a
1019: 8d 00     mov   y,#$00
101b: f7 8f     mov   a,($8f)+y
101d: d7 91     mov   ($91)+y,a
101f: fc        inc   y
1020: d0 f9     bne   $101b
1022: ab 90     inc   $90
1024: ab 92     inc   $92
1026: 78 fa 90  cmp   $90,#$fa
1029: d0 f0     bne   $101b
102b: 1a 91     decw  $91
102d: 8d 80     mov   y,#$80
102f: f6 ff ff  mov   a,$ffff+y
1032: d7 91     mov   ($91)+y,a
1034: fe f9     dbnz  y,$102f
1036: ab 92     inc   $92
1038: 8d 80     mov   y,#$80
103a: f6 ff 00  mov   a,$00ff+y
103d: d7 91     mov   ($91)+y,a
103f: fe f9     dbnz  y,$103a
1041: 6f        ret

1042: 8f ff c5  mov   $c5,#$ff
1045: e8 00     mov   a,#$00
1047: c4 8f     mov   $8f,a
1049: e8 f6     mov   a,#$f6
104b: c4 90     mov   $90,a
104d: e8 00     mov   a,#$00
104f: c4 91     mov   $91,a
1051: e8 fa     mov   a,#$fa
1053: c4 92     mov   $92,a
1055: 8d 00     mov   y,#$00
1057: f7 91     mov   a,($91)+y
1059: d7 8f     mov   ($8f)+y,a
105b: fc        inc   y
105c: d0 f9     bne   $1057
105e: ab 90     inc   $90
1060: ab 92     inc   $92
1062: 78 fa 90  cmp   $90,#$fa
1065: d0 f0     bne   $1057
1067: 1a 91     decw  $91
1069: 8d 80     mov   y,#$80
106b: f7 91     mov   a,($91)+y
106d: d6 ff ff  mov   $ffff+y,a
1070: fe f9     dbnz  y,$106b
1072: ab 92     inc   $92
1074: 8d 80     mov   y,#$80
1076: f7 91     mov   a,($91)+y
1078: d6 ff 00  mov   $00ff+y,a
107b: fe f9     dbnz  y,$1076
107d: 6f        ret

107e: e8 97     mov   a,#$97
1080: c4 9c     mov   $9c,a
1082: e8 c8     mov   a,#$c8
1084: 8f 00 a0  mov   $a0,#$00
1087: 43 85 05  bbs2  $85,$108f
108a: 8f 09 8e  mov   $8e,#$09
108d: 2f 08     bra   $1097
108f: 8f 49 8e  mov   $8e,#$49
1092: 60        clrc
1093: 88 08     adc   a,#$08
1095: e2 a0     set7  $a0
1097: c4 9d     mov   $9d,a
1099: 60        clrc
109a: 88 08     adc   a,#$08
109c: c4 9f     mov   $9f,a
109e: f8 9d     mov   x,$9d
10a0: eb 8e     mov   y,$8e
10a2: cb f2     mov   $f2,y
10a4: eb f3     mov   y,$f3
10a6: 6d        push  y
10a7: bf        mov   a,(x)+
10a8: cf        mul   ya
10a9: dd        mov   a,y
10aa: 28 70     and   a,#$70
10ac: c4 9b     mov   $9b,a
10ae: ee        pop   y
10af: bf        mov   a,(x)+
10b0: cf        mul   ya
10b1: dd        mov   a,y
10b2: d8 9d     mov   $9d,x
10b4: f8 9c     mov   x,$9c
10b6: 9f        xcn   a
10b7: 28 07     and   a,#$07
10b9: 04 9b     or    a,$9b
10bb: 04 a0     or    a,$a0
10bd: af        mov   (x)+,a
10be: d8 9c     mov   $9c,x
10c0: 60        clrc
10c1: 98 10 8e  adc   $8e,#$10
10c4: 69 9f 9d  cmp   ($9d),($9f)
10c7: d0 d5     bne   $109e
10c9: ba 97     movw  ya,$97
10cb: da f4     movw  $f4,ya
10cd: ba 99     movw  ya,$99
10cf: da f6     movw  $f6,ya
10d1: 58 04 85  eor   $85,#$04
10d4: 6f        ret

10d5: e4 ac     mov   a,$ac
10d7: f0 0f     beq   $10e8
10d9: 8b ac     dec   $ac
10db: ba a8     movw  ya,$a8
10dd: 7a a4     addw  ya,$a4
10df: 7e a5     cmp   y,$a5
10e1: da a4     movw  $a4,ya
10e3: f0 03     beq   $10e8
10e5: 09 52 da  or    ($da),($52)
10e8: e4 ae     mov   a,$ae
10ea: f0 0f     beq   $10fb
10ec: 8b ae     dec   $ae
10ee: ba aa     movw  ya,$aa
10f0: 7a a6     addw  ya,$a6
10f2: 7e a7     cmp   y,$a7
10f4: da a6     movw  $a6,ya
10f6: f0 03     beq   $10fb
10f8: 09 83 da  or    ($da),($83)
10fb: e4 b4     mov   a,$b4
10fd: f0 0f     beq   $110e
10ff: 8b b4     dec   $b4
1101: ba b2     movw  ya,$b2
1103: 7a b0     addw  ya,$b0
1105: 7e b1     cmp   y,$b1
1107: da b0     movw  $b0,ya
1109: f0 03     beq   $110e
110b: 09 83 da  or    ($da),($83)
110e: e4 b9     mov   a,$b9
1110: f0 08     beq   $111a
1112: 8b b9     dec   $b9
1114: ba b7     movw  ya,$b7
1116: 7a b5     addw  ya,$b5
1118: da b5     movw  $b5,ya
111a: e4 be     mov   a,$be
111c: f0 0f     beq   $112d
111e: 8b be     dec   $be
1120: ba bc     movw  ya,$bc
1122: 7a ba     addw  ya,$ba
1124: 7e bb     cmp   y,$bb
1126: da ba     movw  $ba,ya
1128: f0 03     beq   $112d
112a: 09 52 db  or    ($db),($52)
112d: 6f        ret

112e: 3a dc     incw  $dc
1130: f0 01     beq   $1133
1132: 6f        ret

1133: e8 80     mov   a,#$80
1135: 8f 00 f4  mov   $f4,#$00
1138: c4 f5     mov   $f5,a
113a: 8f f0 8a  mov   $8a,#$f0
113d: e4 f4     mov   a,$f4
113f: d0 fc     bne   $113d
1141: cd ff     mov   x,#$ff
1143: bd        mov   sp,x
1144: e8 02     mov   a,#$02
1146: 2d        push  a
1147: e8 7d     mov   a,#$7d
1149: 2d        push  a
114a: cd f0     mov   x,#$f0
114c: 5f d0 0b  jmp   $0bd0

114f: dw $0ebb
1151: dw $0e93
1153: dw $0e63
1155: dw $0e2a
1157: dw $0ebb
1159: dw $0ebb
115b: dw $0ebb
115d: dw $0edf

; vcmd f0 - tempo
115f: c8 10     cmp   x,#$10
1161: b0 08     bcs   $116b
1163: c4 46     mov   $46,a
1165: e8 00     mov   a,#$00
1167: c4 45     mov   $45,a
1169: c4 49     mov   $49,a
116b: 6f        ret

; vcmd f1 - tempo fade
116c: c4 49     mov   $49,a
116e: 3f d8 05  call  $05d8
1171: c8 10     cmp   x,#$10
1173: b0 2e     bcs   $11a3
1175: eb 49     mov   y,$49
1177: f0 e6     beq   $115f
1179: 80        setc
117a: a4 46     sbc   a,$46
117c: f0 eb     beq   $1169
117e: 0d        push  psw
117f: b0 03     bcs   $1184
1181: 48 ff     eor   a,#$ff
1183: bc        inc   a
1184: f8 49     mov   x,$49
1186: 8d 00     mov   y,#$00
1188: 9e        div   ya,x
1189: c4 98     mov   $98,a
118b: e8 00     mov   a,#$00
118d: 9e        div   ya,x
118e: c4 97     mov   $97,a
1190: f8 a2     mov   x,$a2
1192: 8e        pop   psw
1193: b0 08     bcs   $119d
1195: 58 ff 97  eor   $97,#$ff
1198: 58 ff 98  eor   $98,#$ff
119b: 3a 97     incw  $97
119d: ba 97     movw  ya,$97
119f: c4 4a     mov   $4a,a
11a1: cb 4b     mov   $4b,y
11a3: 6f        ret

; vcmd f5 - master volume
11a4: c4 51     mov   $51,a
11a6: 6f        ret

; vcmd c4 - volume
11a7: d5 21 f6  mov   $f621+x,a
11aa: e8 00     mov   a,#$00
11ac: d5 20 f6  mov   $f620+x,a
11af: d5 a0 f6  mov   $f6a0+x,a
11b2: 6f        ret

; vcmd c5 - volume fade
11b3: c4 97     mov   $97,a
11b5: d5 a0 f6  mov   $f6a0+x,a
11b8: 3f d8 05  call  $05d8
11bb: eb 97     mov   y,$97
11bd: f0 e8     beq   $11a7
11bf: 80        setc
11c0: b5 21 f6  sbc   a,$f621+x
11c3: f0 ea     beq   $11af
11c5: 0d        push  psw
11c6: b0 03     bcs   $11cb
11c8: 48 ff     eor   a,#$ff
11ca: bc        inc   a
11cb: f8 97     mov   x,$97
11cd: 8d 00     mov   y,#$00
11cf: 9e        div   ya,x
11d0: c4 98     mov   $98,a
11d2: e8 00     mov   a,#$00
11d4: 9e        div   ya,x
11d5: c4 97     mov   $97,a
11d7: f8 a2     mov   x,$a2
11d9: 8e        pop   psw
11da: b0 08     bcs   $11e4
11dc: 58 ff 97  eor   $97,#$ff
11df: 58 ff 98  eor   $98,#$ff
11e2: 3a 97     incw  $97
11e4: e4 97     mov   a,$97
11e6: d5 40 f6  mov   $f640+x,a
11e9: e4 98     mov   a,$98
11eb: d5 41 f6  mov   $f641+x,a
11ee: 6f        ret

; vcmd f2 - echo volume
11ef: c8 10     cmp   x,#$10
11f1: b0 09     bcs   $11fc
11f3: 5c        lsr   a
11f4: c4 4d     mov   $4d,a
11f6: e8 00     mov   a,#$00
11f8: c4 4c     mov   $4c,a
11fa: c4 50     mov   $50,a
11fc: 6f        ret

; vcmd f3 - echo volume fade
11fd: c4 50     mov   $50,a
11ff: 3f d8 05  call  $05d8
1202: c8 10     cmp   x,#$10
1204: b0 2f     bcs   $1235
1206: eb 50     mov   y,$50
1208: f0 e5     beq   $11ef
120a: 5c        lsr   a
120b: 80        setc
120c: a4 4d     sbc   a,$4d
120e: f0 ea     beq   $11fa
1210: 0d        push  psw
1211: b0 03     bcs   $1216
1213: 48 ff     eor   a,#$ff
1215: bc        inc   a
1216: f8 50     mov   x,$50
1218: 8d 00     mov   y,#$00
121a: 9e        div   ya,x
121b: c4 98     mov   $98,a
121d: e8 00     mov   a,#$00
121f: 9e        div   ya,x
1220: c4 97     mov   $97,a
1222: f8 a2     mov   x,$a2
1224: 8e        pop   psw
1225: b0 08     bcs   $122f
1227: 58 ff 97  eor   $97,#$ff
122a: 58 ff 98  eor   $98,#$ff
122d: 3a 97     incw  $97
122f: ba 97     movw  ya,$97
1231: c4 4e     mov   $4e,a
1233: cb 4f     mov   $4f,y
1235: 6f        ret

; vcmd c6 - panpot
1236: d5 61 f6  mov   $f661+x,a
1239: e8 00     mov   a,#$00
123b: d5 60 f6  mov   $f660+x,a
123e: d5 a1 f6  mov   $f6a1+x,a
1241: 6f        ret

; vcmd c7 - panpot fade
1242: c4 97     mov   $97,a
1244: d5 a1 f6  mov   $f6a1+x,a
1247: 3f d8 05  call  $05d8
124a: eb 97     mov   y,$97
124c: f0 e8     beq   $1236
124e: 80        setc
124f: b5 61 f6  sbc   a,$f661+x
1252: f0 ea     beq   $123e
1254: 0d        push  psw
1255: b0 03     bcs   $125a
1257: 48 ff     eor   a,#$ff
1259: bc        inc   a
125a: f8 97     mov   x,$97
125c: 8d 00     mov   y,#$00
125e: 9e        div   ya,x
125f: c4 98     mov   $98,a
1261: e8 00     mov   a,#$00
1263: 9e        div   ya,x
1264: c4 97     mov   $97,a
1266: f8 a2     mov   x,$a2
1268: 8e        pop   psw
1269: b0 08     bcs   $1273
126b: 58 ff 97  eor   $97,#$ff
126e: 58 ff 98  eor   $98,#$ff
1271: 3a 97     incw  $97
1273: e4 97     mov   a,$97
1275: d5 80 f6  mov   $f680+x,a
1278: e4 98     mov   a,$98
127a: d5 81 f6  mov   $f681+x,a
127d: 6f        ret

; vcmd c8 - portamento
127e: bc        inc   a
127f: d5 e1 f6  mov   $f6e1+x,a
1282: 3f d8 05  call  $05d8
1285: d5 20 01  mov   $0120+x,a
1288: 6f        ret

; vcmd da - transpose (relative)
1289: 60        clrc
128a: 95 81 f7  adc   a,$f781+x
; vcmd d9 - transpose (absolute)
128d: d5 81 f7  mov   $f781+x,a
1290: 6f        ret

; vcmd f4 - echo feedback, FIR filter
1291: c4 97     mov   $97,a
1293: 3f d8 05  call  $05d8
1296: c8 10     cmp   x,#$10
1298: 90 01     bcc   $129b
129a: 6f        ret

129b: fa 97 65  mov   ($65),($97)
129e: c4 64     mov   $64,a
12a0: e4 64     mov   a,$64
12a2: 28 03     and   a,#$03
12a4: 1c        asl   a
12a5: 1c        asl   a
12a6: 1c        asl   a
12a7: fd        mov   y,a
12a8: cd 0f     mov   x,#$0f
12aa: f6 8a 16  mov   a,$168a+y
12ad: d8 f2     mov   $f2,x
12af: c4 f3     mov   $f3,a
12b1: fc        inc   y
12b2: 7d        mov   a,x
12b3: 60        clrc
12b4: 88 10     adc   a,#$10
12b6: 5d        mov   x,a
12b7: 10 f1     bpl   $12aa
12b9: f8 a2     mov   x,$a2
12bb: 8d 0d     mov   y,#$0d
12bd: e4 65     mov   a,$65
12bf: 5f 5c 06  jmp   $065c

; vcmd c9 - vibrato on
12c2: d5 60 01  mov   $0160+x,a
12c5: 3f d8 05  call  $05d8
12c8: bc        inc   a
12c9: d5 c0 f6  mov   $f6c0+x,a
12cc: e8 01     mov   a,#$01
12ce: d5 00 f7  mov   $f700+x,a
12d1: 3f d8 05  call  $05d8
; vcmd ca - vibrato off
12d4: d5 21 01  mov   $0121+x,a
12d7: 6f        ret

; vcmd cb - tremolo on
12d8: d5 61 01  mov   $0161+x,a
12db: 3f d8 05  call  $05d8
12de: bc        inc   a
12df: d5 c1 f6  mov   $f6c1+x,a
12e2: e8 01     mov   a,#$01
12e4: d5 01 f7  mov   $f701+x,a
12e7: 3f d8 05  call  $05d8
; vcmd cc - tremolo off
12ea: d5 40 01  mov   $0140+x,a
12ed: 6f        ret

; vcmd cd - panpot LFO on
12ee: 60        clrc
12ef: bc        inc   a
12f0: f0 08     beq   $12fa
12f2: 28 fe     and   a,#$fe
12f4: d0 05     bne   $12fb
12f6: e8 02     mov   a,#$02
12f8: 2f 01     bra   $12fb
12fa: 80        setc
12fb: d5 e0 f6  mov   $f6e0+x,a
12fe: 7c        ror   a
12ff: d5 20 f7  mov   $f720+x,a
1302: fd        mov   y,a
1303: 3f d8 05  call  $05d8
1306: 1c        asl   a
1307: e4 a1     mov   a,$a1
1309: 28 7f     and   a,#$7f
130b: 90 02     bcc   $130f
130d: 48 7f     eor   a,#$7f
130f: c4 97     mov   $97,a
1311: dd        mov   a,y
1312: 10 05     bpl   $1319
1314: 8f 00 98  mov   $98,#$00
1317: 2f 13     bra   $132c
1319: 5d        mov   x,a
131a: 8d 00     mov   y,#$00
131c: e4 97     mov   a,$97
131e: 9e        div   ya,x
131f: c4 98     mov   $98,a
1321: e8 00     mov   a,#$00
1323: 9e        div   ya,x
1324: c4 97     mov   $97,a
1326: ba 97     movw  ya,$97
1328: d0 02     bne   $132c
132a: ab 97     inc   $97
132c: 90 08     bcc   $1336
132e: 58 ff 97  eor   $97,#$ff
1331: 58 ff 98  eor   $98,#$ff
1334: 3a 97     incw  $97
1336: f8 a2     mov   x,$a2
1338: e4 97     mov   a,$97
133a: d5 c0 f7  mov   $f7c0+x,a
133d: e4 98     mov   a,$98
133f: d5 c1 f7  mov   $f7c1+x,a
1342: e4 a1     mov   a,$a1
; vcmd ce - panpot LFO off
1344: d5 41 01  mov   $0141+x,a
1347: e8 00     mov   a,#$00
1349: d5 00 f8  mov   $f800+x,a
134c: d5 01 f8  mov   $f801+x,a
134f: 6f        ret

; vcmd d7 - increase octave
1350: f5 00 f6  mov   a,$f600+x
1353: bc        inc   a
1354: 2f 04     bra   $135a
; vcmd d8 - decrease octave
1356: f5 00 f6  mov   a,$f600+x
1359: 9c        dec   a
; vcmd d6 - set octave
135a: d5 00 f6  mov   $f600+x,a
135d: 6f        ret

; vcmd d4 - echo on
135e: c8 10     cmp   x,#$10
1360: b0 05     bcs   $1367
1362: 09 8e 53  or    ($53),($8e)
1365: 2f 03     bra   $136a
1367: 09 8e 54  or    ($54),($8e)
136a: e4 83     mov   a,$83
136c: 04 84     or    a,$84
136e: 48 ff     eor   a,#$ff
1370: 24 53     and   a,$53
1372: 04 54     or    a,$54
1374: c4 86     mov   $86,a
1376: 6f        ret

; vcmd d5 - echo off
1377: e4 8e     mov   a,$8e
1379: c8 10     cmp   x,#$10
137b: b0 05     bcs   $1382
137d: 4e 53 00  tclr1 $0053
1380: 2f e8     bra   $136a
1382: 4e 54 00  tclr1 $0054
1385: 2f e3     bra   $136a

; vcmd d0 - noise on
1387: c8 10     cmp   x,#$10
1389: b0 05     bcs   $1390
138b: 09 8e 55  or    ($55),($8e)
138e: 2f 03     bra   $1393
1390: 09 8e 56  or    ($56),($8e)
1393: fa 56 97  mov   ($97),($56)
1396: 12 97     clr0  $97
1398: e4 89     mov   a,$89
139a: 28 e0     and   a,#$e0
139c: eb 56     mov   y,$56
139e: d0 04     bne   $13a4
13a0: 04 62     or    a,$62
13a2: 2f 02     bra   $13a6
13a4: 04 63     or    a,$63
13a6: c4 89     mov   $89,a
13a8: e4 83     mov   a,$83
13aa: 04 84     or    a,$84
13ac: 48 ff     eor   a,#$ff
13ae: 24 55     and   a,$55
13b0: 04 97     or    a,$97
13b2: c4 87     mov   $87,a
13b4: 6f        ret

; vcmd d1 - noise off
13b5: e4 8e     mov   a,$8e
13b7: c8 10     cmp   x,#$10
13b9: b0 05     bcs   $13c0
13bb: 4e 55 00  tclr1 $0055
13be: 2f d3     bra   $1393
13c0: 4e 56 00  tclr1 $0056
13c3: 2f ce     bra   $1393

; vcmd cf - set noise frequency
13c5: 28 1f     and   a,#$1f
13c7: c8 10     cmp   x,#$10
13c9: b0 04     bcs   $13cf
13cb: c4 62     mov   $62,a
13cd: 2f c4     bra   $1393
13cf: c4 63     mov   $63,a
13d1: 2f c0     bra   $1393

; vcmd d2 - pitchmod on
13d3: c8 10     cmp   x,#$10
13d5: b0 05     bcs   $13dc
13d7: 09 8e 57  or    ($57),($8e)
13da: 2f 03     bra   $13df
13dc: 09 8e 58  or    ($58),($8e)
13df: e4 83     mov   a,$83
13e1: 04 84     or    a,$84
13e3: 48 ff     eor   a,#$ff
13e5: 24 57     and   a,$57
13e7: 04 58     or    a,$58
13e9: c4 88     mov   $88,a
13eb: 6f        ret

; vcmd d3 - pitchmod off
13ec: e4 8e     mov   a,$8e
13ee: c8 10     cmp   x,#$10
13f0: b0 05     bcs   $13f7
13f2: 4e 57 00  tclr1 $0057
13f5: 2f e8     bra   $13df
13f7: 4e 58 00  tclr1 $0058
13fa: 2f e3     bra   $13df

; vcmd dc - instrument
13fc: d5 01 f6  mov   $f601+x,a
13ff: 1c        asl   a
1400: fd        mov   y,a
1401: f6 00 1a  mov   a,$1a00+y
1404: d5 40 f7  mov   $f740+x,a
1407: f6 01 1a  mov   a,$1a01+y
140a: d5 41 f7  mov   $f741+x,a
140d: f6 80 1a  mov   a,$1a80+y
1410: d5 a0 f8  mov   $f8a0+x,a
1413: f6 81 1a  mov   a,$1a81+y
1416: d5 a1 f8  mov   $f8a1+x,a
1419: c8 10     cmp   x,#$10
141b: b0 05     bcs   $1422
141d: e4 8e     mov   a,$8e
141f: 4e 61 00  tclr1 $0061
1422: 6f        ret

1423: f5 01 f6  mov   a,$f601+x
1426: fd        mov   y,a
1427: 7d        mov   a,x
1428: 9f        xcn   a
1429: 5c        lsr   a
142a: 08 04     or    a,#$04
142c: c4 f2     mov   $f2,a
142e: cb f3     mov   $f3,y
1430: 2f 10     bra   $1442

; vcmd dd - attack rate
1432: 28 0f     and   a,#$0f
1434: c4 a1     mov   $a1,a
1436: f5 a0 f8  mov   a,$f8a0+x
1439: 28 70     and   a,#$70
143b: 04 a1     or    a,$a1
143d: 08 80     or    a,#$80
143f: d5 a0 f8  mov   $f8a0+x,a
1442: c8 10     cmp   x,#$10
1444: b0 09     bcs   $144f
1446: e4 83     mov   a,$83
1448: 04 84     or    a,$84
144a: 24 8e     and   a,$8e
144c: f0 01     beq   $144f
144e: 6f        ret

144f: 7d        mov   a,x
1450: 9f        xcn   a
1451: 5c        lsr   a
1452: 08 05     or    a,#$05
1454: fd        mov   y,a
1455: f5 a0 f8  mov   a,$f8a0+x
1458: 3f 5c 06  call  $065c
145b: fc        inc   y
145c: f5 a1 f8  mov   a,$f8a1+x
145f: 5f 5c 06  jmp   $065c

; vcmd de - decay rate
1462: 28 07     and   a,#$07
1464: 9f        xcn   a
1465: c4 a1     mov   $a1,a
1467: f5 a0 f8  mov   a,$f8a0+x
146a: 28 0f     and   a,#$0f
146c: 04 a1     or    a,$a1
146e: 08 80     or    a,#$80
1470: d5 a0 f8  mov   $f8a0+x,a
1473: 2f cd     bra   $1442

; vcmd df - sustain level
1475: 28 07     and   a,#$07
1477: 9f        xcn   a
1478: 1c        asl   a
1479: c4 a1     mov   $a1,a
147b: f5 a1 f8  mov   a,$f8a1+x
147e: 28 1f     and   a,#$1f
1480: 04 a1     or    a,$a1
1482: d5 a1 f8  mov   $f8a1+x,a
1485: 2f bb     bra   $1442

; vcmd e0 - sustain rate
1487: 28 1f     and   a,#$1f
1489: c4 a1     mov   $a1,a
148b: f5 a1 f8  mov   a,$f8a1+x
148e: 28 e0     and   a,#$e0
1490: 04 a1     or    a,$a1
1492: d5 a1 f8  mov   $f8a1+x,a
1495: 2f ab     bra   $1442

; vcmd e1 - default ADSR
1497: f5 01 f6  mov   a,$f601+x
149a: 1c        asl   a
149b: fd        mov   y,a
149c: f6 80 1a  mov   a,$1a80+y
149f: d5 a0 f8  mov   $f8a0+x,a
14a2: f6 81 1a  mov   a,$1a81+y
14a5: d5 a1 f8  mov   $f8a1+x,a
14a8: 2f 98     bra   $1442

; vcmd fa - mute channel
14aa: c8 10     cmp   x,#$10
14ac: b0 03     bcs   $14b1
14ae: 09 8e 61  or    ($61),($8e)
14b1: 6f        ret

; vcmd e4 - slur on
14b2: e4 8e     mov   a,$8e
14b4: c8 10     cmp   x,#$10
14b6: b0 0b     bcs   $14c3
14b8: 0e 5b 00  tset1 $005b
14bb: 4e 5d 00  tclr1 $005d
14be: 4e 5f 00  tclr1 $005f
14c1: 2f 09     bra   $14cc
14c3: 0e 5c 00  tset1 $005c
14c6: 4e 5e 00  tclr1 $005e
14c9: 4e 60 00  tclr1 $0060
14cc: 6f        ret

; vcmd e5 - slur off
14cd: e4 8e     mov   a,$8e
14cf: c8 10     cmp   x,#$10
14d1: b0 05     bcs   $14d8
14d3: 4e 5b 00  tclr1 $005b
14d6: 2f 03     bra   $14db
14d8: 4e 5c 00  tclr1 $005c
14db: 6f        ret

; vcmd e6 - legato on
14dc: e4 8e     mov   a,$8e
14de: c8 10     cmp   x,#$10
14e0: b0 08     bcs   $14ea
14e2: 0e 5f 00  tset1 $005f
14e5: 4e 5b 00  tclr1 $005b
14e8: 2f 06     bra   $14f0
14ea: 0e 60 00  tset1 $0060
14ed: 4e 5c 00  tclr1 $005c
14f0: 6f        ret

; vcmd e7 - legato off
14f1: e4 8e     mov   a,$8e
14f3: c8 10     cmp   x,#$10
14f5: b0 05     bcs   $14fc
14f7: 4e 5f 00  tclr1 $005f
14fa: 2f 03     bra   $14ff
14fc: 4e 60 00  tclr1 $0060
14ff: 6f        ret

; vcmd e9 - goto address in $2c00+A*4
1500: 8d 00     mov   y,#$00
1502: 2f 02     bra   $1506
; vcmd ea - goto address in $2c02+A*4
1504: 8d 02     mov   y,#$02
1506: 3f 14 15  call  $1514
1509: d4 02     mov   $02+x,a
150b: db 03     mov   $03+x,y
150d: dd        mov   a,y
150e: d0 03     bne   $1513
1510: 5f 54 16  jmp   $1654

1513: 6f        ret

1514: 8f 00 92  mov   $92,#$00
1517: 1c        asl   a
1518: 2b 92     rol   $92
151a: 1c        asl   a
151b: 2b 92     rol   $92
151d: c4 91     mov   $91,a
151f: dd        mov   a,y
1520: 8d 2c     mov   y,#$2c
1522: 7a 91     addw  ya,$91
1524: da 91     movw  $91,ya
1526: 8d 00     mov   y,#$00
1528: f7 91     mov   a,($91)+y
152a: 2d        push  a
152b: fc        inc   y
152c: f7 91     mov   a,($91)+y
152e: fd        mov   y,a
152f: ae        pop   a
1530: 6f        ret

1531: f7 8f     mov   a,($8f)+y
1533: 8d 00     mov   y,#$00
1535: 2f 04     bra   $153b
1537: f7 8f     mov   a,($8f)+y
1539: 8d 02     mov   y,#$02
153b: 3f 14 15  call  $1514
153e: da 8f     movw  $8f,ya
1540: 6f        ret

; vcmd f7 - goto
1541: fd        mov   y,a
1542: 3f d8 05  call  $05d8
1545: c8 10     cmp   x,#$10
1547: b0 09     bcs   $1552
1549: dd        mov   a,y
154a: eb a1     mov   y,$a1
154c: 7a 00     addw  ya,$00
154e: d4 02     mov   $02+x,a
1550: db 03     mov   $03+x,y
1552: 6f        ret

1553: f7 8f     mov   a,($8f)+y
1555: 2d        push  a
1556: fc        inc   y
1557: f7 8f     mov   a,($8f)+y
1559: fd        mov   y,a
155a: ae        pop   a
155b: 7a 00     addw  ya,$00
155d: da 8f     movw  $8f,ya
155f: 6f        ret

; vcmd f6 - conditional jump in repeat
1560: c4 99     mov   $99,a
1562: 3f d8 05  call  $05d8
1565: c4 97     mov   $97,a
1567: 3f d8 05  call  $05d8
156a: c4 98     mov   $98,a
156c: c8 10     cmp   x,#$10
156e: b0 28     bcs   $1598
1570: fb 26     mov   y,$26+x
1572: f6 c0 f8  mov   a,$f8c0+y
1575: bc        inc   a
1576: d6 c0 f8  mov   $f8c0+y,a
1579: 2e 99 1c  cbne  $99,$1598
157c: f6 e0 f8  mov   a,$f8e0+y
157f: 9c        dec   a
1580: 9c        dec   a
1581: d0 0d     bne   $1590
1583: 7d        mov   a,x
1584: 1c        asl   a
1585: 9c        dec   a
1586: 9b 26     dec   $26+x
1588: de 26 05  cbne  $26+x,$1590
158b: 60        clrc
158c: 88 04     adc   a,#$04
158e: d4 26     mov   $26+x,a
1590: ba 97     movw  ya,$97
1592: 7a 00     addw  ya,$00
1594: d4 02     mov   $02+x,a
1596: db 03     mov   $03+x,y
1598: 6f        ret

1599: eb c4     mov   y,$c4
159b: f6 c0 f8  mov   a,$f8c0+y
159e: bc        inc   a
159f: 8d 00     mov   y,#$00
15a1: 77 8f     cmp   a,($8f)+y
15a3: d0 1a     bne   $15bf
15a5: eb c4     mov   y,$c4
15a7: f6 e0 f8  mov   a,$f8e0+y
15aa: 9c        dec   a
15ab: 9c        dec   a
15ac: d0 0c     bne   $15ba
15ae: 7d        mov   a,x
15af: 1c        asl   a
15b0: 9c        dec   a
15b1: 8b c4     dec   $c4
15b3: 2e c4 04  cbne  $c4,$15ba
15b6: 60        clrc
15b7: 98 04 c4  adc   $c4,#$04
15ba: 8d 01     mov   y,#$01
15bc: 5f 53 15  jmp   $1553

15bf: 3a 8f     incw  $8f
15c1: 3a 8f     incw  $8f
15c3: 3a 8f     incw  $8f
15c5: 6f        ret

; vcmd e2 - repeat start
15c6: bb 26     inc   $26+x
15c8: 7d        mov   a,x
15c9: 1c        asl   a
15ca: 60        clrc
15cb: 88 04     adc   a,#$04
15cd: de 26 05  cbne  $26+x,$15d5
15d0: 80        setc
15d1: a8 04     sbc   a,#$04
15d3: d4 26     mov   $26+x,a
15d5: fb 26     mov   y,$26+x
15d7: e4 a1     mov   a,$a1
15d9: f0 01     beq   $15dc
15db: bc        inc   a
15dc: d6 e0 f8  mov   $f8e0+y,a
15df: c8 10     cmp   x,#$10
15e1: b0 05     bcs   $15e8
15e3: e8 00     mov   a,#$00
15e5: d6 c0 f8  mov   $f8c0+y,a
15e8: dd        mov   a,y
15e9: 1c        asl   a
15ea: fd        mov   y,a
15eb: f4 02     mov   a,$02+x
15ed: d6 20 f9  mov   $f920+y,a
15f0: f4 03     mov   a,$03+x
15f2: d6 21 f9  mov   $f921+y,a
15f5: 6f        ret

; vcmd e3 - repeat end
15f6: fb 26     mov   y,$26+x
15f8: f6 e0 f8  mov   a,$f8e0+y
15fb: f0 15     beq   $1612
15fd: 9c        dec   a
15fe: d0 0f     bne   $160f
1600: 7d        mov   a,x
1601: 1c        asl   a
1602: 9c        dec   a
1603: 9b 26     dec   $26+x
1605: de 26 17  cbne  $26+x,$161f
1608: 60        clrc
1609: 88 04     adc   a,#$04
160b: d4 26     mov   $26+x,a
160d: 2f 10     bra   $161f
160f: d6 e0 f8  mov   $f8e0+y,a
1612: dd        mov   a,y
1613: 1c        asl   a
1614: fd        mov   y,a
1615: f6 20 f9  mov   a,$f920+y
1618: d4 02     mov   $02+x,a
161a: f6 21 f9  mov   a,$f921+y
161d: d4 03     mov   $03+x,a
161f: 6f        ret

1620: eb c4     mov   y,$c4
1622: f6 e0 f8  mov   a,$f8e0+y
1625: f0 11     beq   $1638
1627: 9c        dec   a
1628: d0 0e     bne   $1638
162a: 7d        mov   a,x
162b: 1c        asl   a
162c: 9c        dec   a
162d: 8b c4     dec   $c4
162f: 2e c4 13  cbne  $c4,$1645
1632: 60        clrc
1633: 98 04 c4  adc   $c4,#$04
1636: 2f 0d     bra   $1645
1638: dd        mov   a,y
1639: 1c        asl   a
163a: fd        mov   y,a
163b: f6 20 f9  mov   a,$f920+y
163e: c4 8f     mov   $8f,a
1640: f6 21 f9  mov   a,$f921+y
1643: c4 90     mov   $90,a
1645: 6f        ret

; vcmd e8 - force next note length
1646: d4 25     mov   $25+x,a
1648: 6f        ret

; vcmd db - tuning
1649: d5 60 f7  mov   $f760+x,a
164c: 6f        ret

; vcmd f8 - increment cpu-shared counter
164d: ab 66     inc   $66
164f: 6f        ret

; vcmd f9 - zero cpu-shared counter
1650: 8f 00 66  mov   $66,#$00
1653: 6f        ret

; vcmd eb,ec-ef,fb-ff - end of track
1654: ae        pop   a
1655: ae        pop   a
1656: e4 8e     mov   a,$8e
1658: c8 10     cmp   x,#$10
165a: b0 05     bcs   $1661
165c: 4e 52 00  tclr1 $0052
165f: 2f 06     bra   $1667
1661: 4e 83 00  tclr1 $0083
1664: 4e 84 00  tclr1 $0084
1667: 3f b5 13  call  $13b5
166a: 3f ec 13  call  $13ec
166d: 5f 77 13  jmp   $1377

1670: dw $0879
1672: dw $08fa
1674: dw $0983
1676: dw $0a14
1678: dw $0aad
167a: dw $0b50
167c: dw $0bfc
167e: dw $0cb2
1680: dw $0d74
1682: dw $0e41
1683: dw $0f1a
1686: dw $1000
1687: dw $10f3

1689: db $7f,$00,$00,$00,$00,$00,$00,$00
1692: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
169a: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
16a2: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

16aa: db $c0,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03

16b8: dw $16d8
16ba: dw $16e5
16bc: dw $16f6
16be: dw $0000
16c0: dw $0000
16c2: dw $0000
16c4: dw $0000
16c6: dw $0000
16c8: dw $0000
16ca: dw $0000
16cc: dw $0000
16ce: dw $0000
16d0: dw $0000
16d2: dw $0000
16d4: dw $0000
16d6: dw $0000

16d8: db $c4,$8c,$dc,$05,$d6,$05,$c8,$0c,$35,$e0,$17,$a4,$eb
16e5: db $c4,$78,$dc,$03,$d6,$06,$c9,$00,$08,$d3,$e0,$14,$c8,$10,$7e,$87,$eb
16f6: db $c4,$8c,$dc,$02,$d6,$04,$c9,$00,$00,$ff,$cb,$00,$00,$e7,$e0,$16,$4f,$eb

; vcmd dispatch table
1708: dw $11a7  ; c4 - volume
170a: dw $11b3  ; c5 - volume fade
170c: dw $1236  ; c6 - panpot
170e: dw $1242  ; c7 - panpot fade
1710: dw $127e  ; c8 - portamento
1712: dw $12c2  ; c9 - vibrato on
1714: dw $12d4  ; ca - vibrato off
1716: dw $12d8  ; cb - tremolo on
1718: dw $12ea  ; cc - tremolo off
171a: dw $12ee  ; cd - panpot LFO on
171b: dw $1344  ; ce - panpot LFO off
171d: dw $13c5  ; cf - set noise frequency
1720: dw $1387  ; d0 - noise on
1722: dw $13b5  ; d1 - noise off
1724: dw $13d3  ; d2 - pitchmod on
1726: dw $13ec  ; d3 - pitchmod off
1728: dw $135e  ; d4 - echo on
172a: dw $1377  ; d5 - echo off
172c: dw $135a  ; d6 - set octave
172e: dw $1350  ; d7 - increase octave
1730: dw $1356  ; d8 - decrease octave
1732: dw $128d  ; d9 - transpose (absolute)
1734: dw $1289  ; da - transpose (relative)
1736: dw $1649  ; db - tuning
1738: dw $13fc  ; dc - instrument
173a: dw $1432  ; dd - attack rate
173c: dw $1462  ; de - decay rate
173e: dw $1475  ; df - sustain level
1740: dw $1487  ; e0 - sustain rate
1742: dw $1497  ; e1 - default ADSR
1744: dw $15c6  ; e2 - repeat start
1746: dw $15f6  ; e3 - repeat end
1748: dw $14b2  ; e4 - slur on
174a: dw $14cd  ; e5 - slur off
174c: dw $14dc  ; e6 - legato on
174e: dw $14f1  ; e7 - legato off
1750: dw $1646  ; e8 - force next note length
1752: dw $1500  ; e9 - goto address in $2c00+A*4
1754: dw $1504  ; ea - goto address in $2c02+A*4
1756: dw $1654  ; eb - end of track
1758: dw $1654  ; ec - end of track (duplicated)
175a: dw $1654  ; ed - end of track (duplicated)
175c: dw $1654  ; ee - end of track (duplicated)
175e: dw $1654  ; ef - end of track (duplicated)
1760: dw $115f  ; f0 - tempo
1762: dw $116c  ; f1 - tempo fade
1764: dw $11ef  ; f2 - echo volume
1766: dw $11fd  ; f3 - echo volume fade
1768: dw $1291  ; f4 - echo feedback, FIR filter
176a: dw $11a4  ; f5 - master volume
176c: dw $1560  ; f6 - conditional jump in repeat
176e: dw $1541  ; f7 - goto
1770: dw $164d  ; f8 - increment cpu-shared counter
1772: dw $1650  ; f9 - zero cpu-shared counter
1774: dw $14aa  ; fa - mute channel
1776: dw $1654  ; fb - end of track (duplicated)
1778: dw $1654  ; fc - end of track (duplicated)
177a: dw $1654  ; fd - end of track (duplicated)
177c: dw $1654  ; fe - end of track (duplicated)
177e: dw $1654  ; ff - end of track (duplicated)

1780: db                 $01,$02,$01,$02,$02,$03,$00,$03,$00,$02,$00,$01
178c: db $00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$01,$01,$01,$01,$01,$01
179c: db $01,$00,$01,$00,$00,$00,$00,$00,$01,$01,$00,$00,$00,$00,$00,$00
17ac: db $01,$02,$01,$02,$02,$01,$03,$02,$00,$00,$00,$00,$00,$00,$00,$00

17bc: dw $099c
17be: dw $09a4
17c0: dw $0f49
17c2: dw $0f49
17c4: dw $0999
17c6: dw $09a1
17c8: dw $0f49
17ca: dw $0f49
17cc: dw $0aca
17ce: dw $0f49
17d0: dw $0f49
17d2: dw $0f49
17d4: dw $0f49
17d6: dw $0f49
17d8: dw $0f49
17da: dw $0f49
17dc: dw $0be6
17de: dw $0be6
17e0: dw $0be6
17e2: dw $0c55
17e4: dw $0f49
17e6: dw $0f49
17e8: dw $0c9d
17ea: dw $0f49
17ec: dw $0f49
17ee: dw $0ce2
17f0: dw $0f49
17f2: dw $0f49
17f4: dw $0f49
17f6: dw $0f49
17f8: dw $0f49
17fa: dw $0ff0
17fc: dw $0d34
17fe: dw $0d34
1800: dw $0d34
1802: dw $0d27
1804: dw $0d27
1806: dw $0d7e
1808: dw $0d8e
180a: dw $0d8e
180c: dw $0f1b
180e: dw $0f1b
1810: dw $0d85
1812: dw $0f49
1814: dw $0f72
1816: dw $0f5e
1818: dw $0f49
181a: dw $0f32

181c: db $4c,$2d,$3d,$4d,$2c,$3c,$6c,$5c
1824: db $22,$88,$87,$86,$4d,$4d,$89,$24
