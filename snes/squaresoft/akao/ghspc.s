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
0213: 3f 40 07  call  $0740
0216: 8d 3c     mov   y,#$3c
0218: 3f 40 07  call  $0740
021b: cd 40     mov   x,#$40
021d: d5 6e f8  mov   $f86e+x,a
0220: d5 0c ff  mov   $ff0c+x,a
0223: d5 0d ff  mov   $ff0d+x,a
0226: d5 0e ff  mov   $ff0e+x,a
0229: d5 0f ff  mov   $ff0f+x,a
022c: 1d        dec   x
022d: 1d        dec   x
022e: 1d        dec   x
022f: 1d        dec   x
0230: d0 eb     bne   $021d
0232: e8 20     mov   a,#$20
0234: 8d 5d     mov   y,#$5d
0236: 3f 40 07  call  $0740
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
0257: 3f 2f 14  call  $142f
025a: 8b 23     dec   $23
025c: 8f 07 c6  mov   $c6,#$07
025f: cd 06     mov   x,#$06
0261: e8 ff     mov   a,#$ff
0263: d5 5f f8  mov   $f85f+x,a
0266: bc        inc   a
0267: d5 64 f8  mov   $f864+x,a
026a: 1d        dec   x
026b: 1d        dec   x
026c: d0 f3     bne   $0261
026e: e8 09     mov   a,#$09
0270: c5 40 20  mov   $2040,a
0273: e8 1e     mov   a,#$1e
0275: c5 41 20  mov   $2041,a
0278: e8 12     mov   a,#$12
027a: c5 42 20  mov   $2042,a
027d: e8 1e     mov   a,#$1e
027f: c5 43 20  mov   $2043,a
0282: e8 ff     mov   a,#$ff
0284: c5 a0 21  mov   $21a0,a
0287: e8 e0     mov   a,#$e0
0289: c5 a1 21  mov   $21a1,a
028c: e8 e2     mov   a,#$e2
028e: c5 20 21  mov   $2120,a
0291: e8 00     mov   a,#$00
0293: c5 21 21  mov   $2121,a
0296: e8 40     mov   a,#$40
0298: c4 e6     mov   $e6,a
029a: c4 e7     mov   $e7,a
029c: e8 00     mov   a,#$00
029e: c5 00 ff  mov   $ff00,a
02a1: e8 02     mov   a,#$02
02a3: c4 e1     mov   $e1,a
02a5: 3f 65 0b  call  $0b65
02a8: eb fd     mov   y,$fd
02aa: f0 f9     beq   $02a5
02ac: 13 88 03  bbc0  $88,$02b2
02af: 23 88 06  bbs1  $88,$02b8
02b2: e4 4f     mov   a,$4f
02b4: c4 e8     mov   $e8,a
02b6: c4 e9     mov   $e9,a
02b8: 8d 13     mov   y,#$13
02ba: f6 97 17  mov   a,$1797+y
02bd: c4 f2     mov   $f2,a
02bf: f6 aa 17  mov   a,$17aa+y
02c2: 5d        mov   x,a
02c3: e6        mov   a,(x)
02c4: c4 f3     mov   $f3,a
02c6: fe f2     dbnz  y,$02ba
02c8: cb 23     mov   $23,y
02ca: cb 22     mov   $22,y
02cc: e3 89 05  bbs7  $89,$02d4
02cf: 3f a1 03  call  $03a1
02d2: 2f 03     bra   $02d7
02d4: 3f aa 14  call  $14aa
02d7: 83 88 cb  bbs4  $88,$02a5
02da: 8b c6     dec   $c6
02dc: d0 06     bne   $02e4
02de: 8f 07 c6  mov   $c6,#$07
02e1: 3f 04 15  call  $1504
02e4: 3f 53 04  call  $0453
02e7: 3f b6 03  call  $03b6
02ea: 3f 85 08  call  $0885
02ed: 83 88 b5  bbs4  $88,$02a5
02f0: cd 00     mov   x,#$00
02f2: 8f 01 92  mov   $92,#$01
02f5: e4 86     mov   a,$86
02f7: 04 87     or    a,$87
02f9: 48 ff     eor   a,#$ff
02fb: 24 53     and   a,$53
02fd: 24 24     and   a,$24
02ff: c4 a4     mov   $a4,a
0301: e5 61 f8  mov   a,$f861
0304: c4 a9     mov   $a9,a
0306: 2f 0c     bra   $0314
0308: d8 a7     mov   $a7,x
030a: 3f c1 08  call  $08c1
030d: 3f 44 08  call  $0844
0310: 3d        inc   x
0311: 3d        inc   x
0312: 0b 92     asl   $92
0314: 4b a4     lsr   $a4
0316: b0 f0     bcs   $0308
0318: d0 f6     bne   $0310
031a: cd 14     mov   x,#$14
031c: 8f 04 92  mov   $92,#$04
031f: e4 86     mov   a,$86
0321: 24 25     and   a,$25
0323: 28 0c     and   a,#$0c
0325: c4 a4     mov   $a4,a
0327: e5 61 f8  mov   a,$f861
032a: c4 a9     mov   $a9,a
032c: 2f 0c     bra   $033a
032e: d8 a7     mov   $a7,x
0330: 3f c1 08  call  $08c1
0333: 3f 44 08  call  $0844
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
034e: e5 65 f8  mov   a,$f865
0351: c4 a9     mov   $a9,a
0353: 2f 0c     bra   $0361
0355: d8 a7     mov   $a7,x
0357: 3f c1 08  call  $08c1
035a: 3f 44 08  call  $0844
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
0377: e5 63 f8  mov   a,$f863
037a: c4 a9     mov   $a9,a
037c: 2f 0c     bra   $038a
037e: d8 a7     mov   $a7,x
0380: 3f c1 08  call  $08c1
0383: 3f 44 08  call  $0844
0386: 3d        inc   x
0387: 3d        inc   x
0388: 0b 92     asl   $92
038a: 4b a4     lsr   $a4
038c: b0 f0     bcs   $037e
038e: d0 f6     bne   $0386
0390: e8 00     mov   a,#$00
0392: fd        mov   y,a
0393: da d9     movw  $d9,ya
0395: 3f 85 08  call  $0885
0398: 3f 56 1f  call  $1f56
039b: 3f 2e 0b  call  $0b2e
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

03b6: 52 89     clr2  $89
03b8: ec 26 04  mov   y,$0426
03bb: a3 89 1f  bbs5  $89,$03dd
03be: e4 47     mov   a,$47
03c0: eb ab     mov   y,$ab
03c2: f0 12     beq   $03d6
03c4: cf        mul   ya
03c5: dd        mov   a,y
03c6: e3 ab 0a  bbs7  $ab,$03d3
03c9: 1c        asl   a
03ca: 60        clrc
03cb: 84 47     adc   a,$47
03cd: 90 07     bcc   $03d6
03cf: e8 ff     mov   a,#$ff
03d1: 2f 03     bra   $03d6
03d3: d0 01     bne   $03d6
03d5: bc        inc   a
03d6: 60        clrc
03d7: 84 48     adc   a,$48
03d9: c4 48     mov   $48,a
03db: 90 5c     bcc   $0439
03dd: cd 00     mov   x,#$00
03df: 8f 01 92  mov   $92,#$01
03e2: fa 53 a4  mov   ($a4),($53)
03e5: 2f 46     bra   $042d
03e7: d8 a7     mov   $a7,x
03e9: 9b 26     dec   $26+x
03eb: d0 0a     bne   $03f7
03ed: 72 89     clr3  $89
03ef: 3f ca 04  call  $04ca
03f2: 73 89 2e  bbc3  $89,$0423
03f5: 2f 32     bra   $0429
03f7: 8d 00     mov   y,#$00
03f9: c8 10     cmp   x,#$10
03fb: b0 01     bcs   $03fe
03fd: e8 fc     mov   a,#$fc
03ff: e8 02     mov   a,#$02
0401: de 26 1f  cbne  $26+x,$0423
0404: f6 5a 00  mov   a,$005a+y
0407: 24 92     and   a,$92
0409: d0 18     bne   $0423
040b: e4 92     mov   a,$92
040d: 48 ff     eor   a,#$ff
040f: 36 24 00  and   a,$0024+y
0412: d6 24 00  mov   $0024+y,a
0415: dd        mov   a,y
0416: d0 08     bne   $0420
0418: e4 86     mov   a,$86
041a: 04 87     or    a,$87
041c: 24 92     and   a,$92
041e: d0 03     bne   $0423
0420: 09 92 23  or    ($23),($92)
0423: 3f 61 07  call  $0761
0426: 3f 44 08  call  $0844
0429: 3d        inc   x
042a: 3d        inc   x
042b: 0b 92     asl   $92
042d: 4b a4     lsr   $a4
042f: b0 b6     bcs   $03e7
0431: d0 f6     bne   $0429
0433: 43 89 1c  bbs2  $89,$0452
0436: 3f 8a 04  call  $048a
0439: 42 89     set2  $89
043b: a3 89 09  bbs5  $89,$0447
043e: e8 81     mov   a,#$81
0440: 60        clrc
0441: 84 49     adc   a,$49
0443: c4 49     mov   $49,a
0445: 90 0b     bcc   $0452
0447: cd 10     mov   x,#$10
0449: 8f 01 92  mov   $92,#$01
044c: e4 86     mov   a,$86
044e: c4 a4     mov   $a4,a
0450: d0 db     bne   $042d
0452: 6f        ret

0453: 73 87 18  bbc3  $87,$046e
0456: e8 38     mov   a,#$38
0458: c4 f2     mov   $f2,a
045a: e4 f3     mov   a,$f3
045c: d0 10     bne   $046e
045e: e8 06     mov   a,#$06
0460: 8d 1e     mov   y,#$1e
0462: da 18     movw  $18,ya
0464: e8 02     mov   a,#$02
0466: c4 3c     mov   $3c,a
0468: 72 87     clr3  $87
046a: 62 23     set3  $23
046c: 62 86     set3  $86
046e: 53 87 18  bbc2  $87,$0489
0471: e8 28     mov   a,#$28
0473: c4 f2     mov   $f2,a
0475: e4 f3     mov   a,$f3
0477: d0 10     bne   $0489
0479: e8 06     mov   a,#$06
047b: 8d 1e     mov   y,#$1e
047d: da 16     movw  $16,ya
047f: e8 02     mov   a,#$02
0481: c4 3a     mov   $3a,a
0483: 52 87     clr2  $87
0485: 42 23     set2  $23
0487: 42 86     set2  $86
0489: 6f        ret

048a: e4 4a     mov   a,$4a
048c: f0 08     beq   $0496
048e: 8b 4a     dec   $4a
0490: ba 4b     movw  ya,$4b
0492: 7a 46     addw  ya,$46
0494: da 46     movw  $46,ya
0496: e4 52     mov   a,$52
0498: f0 08     beq   $04a2
049a: 8b 52     dec   $52
049c: ba 50     movw  ya,$50
049e: 7a 4e     addw  ya,$4e
04a0: da 4e     movw  $4e,ya
04a2: e4 78     mov   a,$78
04a4: f0 08     beq   $04ae
04a6: 8b 78     dec   $78
04a8: ba 79     movw  ya,$79
04aa: 7a 75     addw  ya,$75
04ac: da 75     movw  $75,ya
04ae: e4 77     mov   a,$77
04b0: f0 17     beq   $04c9
04b2: 8b 77     dec   $77
04b4: cd 10     mov   x,#$10
04b6: f4 63     mov   a,$63+x
04b8: 60        clrc
04b9: 95 fe 00  adc   a,$00fe+x
04bc: d4 63     mov   $63+x,a
04be: f4 64     mov   a,$64+x
04c0: 95 ff 00  adc   a,$00ff+x
04c3: d4 64     mov   $64+x,a
04c5: 1d        dec   x
04c6: 1d        dec   x
04c7: d0 ed     bne   $04b6
04c9: 6f        ret

04ca: 3f f0 06  call  $06f0
04cd: 68 c4     cmp   a,#$c4
04cf: 90 05     bcc   $04d6
04d1: 3f da 06  call  $06da
04d4: 2f f4     bra   $04ca
04d6: fb 26     mov   y,$26+x
04d8: d0 0a     bne   $04e4
04da: cd 0e     mov   x,#$0e
04dc: 9e        div   ya,x
04dd: f8 a7     mov   x,$a7
04df: f6 f8 1d  mov   a,$1df8+y
04e2: d4 26     mov   $26+x,a
04e4: e4 a6     mov   a,$a6
04e6: 68 a8     cmp   a,#$a8
04e8: 90 08     bcc   $04f2
04ea: 68 b6     cmp   a,#$b6
04ec: 90 01     bcc   $04ef
04ee: 6f        ret

04ef: 5f 9c 05  jmp   $059c

04f2: 8d 00     mov   y,#$00
04f4: cd 0e     mov   x,#$0e
04f6: 9e        div   ya,x
04f7: c4 a6     mov   $a6,a
04f9: f8 a7     mov   x,$a7
04fb: c8 10     cmp   x,#$10
04fd: b0 0b     bcs   $050a
04ff: e4 92     mov   a,$92
0501: 24 7c     and   a,$7c
0503: f0 05     beq   $050a
0505: 3f bd 06  call  $06bd
0508: 2f 06     bra   $0510
050a: f5 00 f9  mov   a,$f900+x
050d: 60        clrc
050e: 84 a6     adc   a,$a6
0510: 60        clrc
0511: 95 61 fa  adc   a,$fa61+x
0514: 80        setc
0515: a8 0a     sbc   a,#$0a
0517: d5 a1 fa  mov   $faa1+x,a
051a: 3f 58 06  call  $0658
051d: e4 be     mov   a,$be
051f: d5 e0 fb  mov   $fbe0+x,a
0522: e4 bf     mov   a,$bf
0524: d5 e1 fb  mov   $fbe1+x,a
0527: c8 10     cmp   x,#$10
0529: b0 05     bcs   $0530
052b: 09 92 24  or    ($24),($92)
052e: 2f 03     bra   $0533
0530: 09 92 25  or    ($25),($92)
0533: f5 51 01  mov   a,$0151+x
0536: f0 05     beq   $053d
0538: 3f 3d 19  call  $193d
053b: e8 00     mov   a,#$00
053d: d5 c0 fb  mov   $fbc0+x,a
0540: d5 c1 fb  mov   $fbc1+x,a
0543: d5 20 fb  mov   $fb20+x,a
0546: f5 70 01  mov   a,$0170+x
0549: f0 05     beq   $0550
054b: 3f d9 19  call  $19d9
054e: e8 00     mov   a,#$00
0550: d5 60 fb  mov   $fb60+x,a
0553: d5 c0 fa  mov   $fac0+x,a
0556: d5 c1 fa  mov   $fac1+x,a
0559: d5 a0 fb  mov   $fba0+x,a
055c: c8 10     cmp   x,#$10
055e: b0 1d     bcs   $057d
0560: e4 86     mov   a,$86
0562: 04 87     or    a,$87
0564: 24 92     and   a,$92
0566: d0 34     bne   $059c
0568: e4 92     mov   a,$92
056a: 24 60     and   a,$60
056c: d0 22     bne   $0590
056e: e4 92     mov   a,$92
0570: 24 5c     and   a,$5c
0572: f0 1c     beq   $0590
0574: 24 5e     and   a,$5e
0576: d0 1b     bne   $0593
0578: 09 92 5e  or    ($5e),($92)
057b: 2f 13     bra   $0590
057d: e4 92     mov   a,$92
057f: 24 61     and   a,$61
0581: d0 0d     bne   $0590
0583: e4 92     mov   a,$92
0585: 24 5d     and   a,$5d
0587: f0 07     beq   $0590
0589: 24 5f     and   a,$5f
058b: d0 06     bne   $0593
058d: 09 92 5f  or    ($5f),($92)
0590: 09 92 22  or    ($22),($92)
0593: 09 92 d9  or    ($d9),($92)
0596: 09 92 da  or    ($da),($92)
0599: 3f 4e 1b  call  $1b4e
059c: 3f fb 06  call  $06fb
059f: fd        mov   y,a
05a0: e4 92     mov   a,$92
05a2: c8 10     cmp   x,#$10
05a4: b0 21     bcs   $05c7
05a6: ad b6     cmp   y,#$b6
05a8: b0 09     bcs   $05b3
05aa: ad a8     cmp   y,#$a8
05ac: 90 0b     bcc   $05b9
05ae: 0e 5a 00  tset1 $005a
05b1: 2f 33     bra   $05e6
05b3: 4e 5c 00  tclr1 $005c
05b6: 4e 60 00  tclr1 $0060
05b9: 4e 5a 00  tclr1 $005a
05bc: e4 5c     mov   a,$5c
05be: 04 60     or    a,$60
05c0: 24 92     and   a,$92
05c2: 0e 5a 00  tset1 $005a
05c5: 2f 1f     bra   $05e6
05c7: ad b6     cmp   y,#$b6
05c9: b0 09     bcs   $05d4
05cb: ad a8     cmp   y,#$a8
05cd: 90 0b     bcc   $05da
05cf: 0e 5b 00  tset1 $005b
05d2: 2f 12     bra   $05e6
05d4: 4e 5d 00  tclr1 $005d
05d7: 4e 61 00  tclr1 $0061
05da: 4e 5b 00  tclr1 $005b
05dd: e4 5d     mov   a,$5d
05df: 04 61     or    a,$61
05e1: 24 92     and   a,$92
05e3: 0e 5b 00  tset1 $005b
05e6: f5 50 01  mov   a,$0150+x
05e9: f0 6c     beq   $0657
05eb: 60        clrc
05ec: 95 a1 fa  adc   a,$faa1+x
05ef: d5 a1 fa  mov   $faa1+x,a
05f2: 3f 58 06  call  $0658
05f5: f5 e1 fb  mov   a,$fbe1+x
05f8: fd        mov   y,a
05f9: f5 e0 fb  mov   a,$fbe0+x
05fc: da 9c     movw  $9c,ya
05fe: ba be     movw  ya,$be
0600: 80        setc
0601: 9a 9c     subw  ya,$9c
0603: da 9c     movw  $9c,ya
0605: 0d        push  psw
0606: b0 08     bcs   $0610
0608: 58 ff 9c  eor   $9c,#$ff
060b: 58 ff 9d  eor   $9d,#$ff
060e: 3a 9c     incw  $9c
0610: f5 60 fa  mov   a,$fa60+x
0613: d0 05     bne   $061a
0615: 8f 00 9e  mov   $9e,#$00
0618: 2f 12     bra   $062c
061a: 5d        mov   x,a
061b: e4 9d     mov   a,$9d
061d: 8d 00     mov   y,#$00
061f: 9e        div   ya,x
0620: c4 9e     mov   $9e,a
0622: e4 9c     mov   a,$9c
0624: 9e        div   ya,x
0625: c4 9d     mov   $9d,a
0627: e8 00     mov   a,#$00
0629: 9e        div   ya,x
062a: c4 9c     mov   $9c,a
062c: 8e        pop   psw
062d: b0 0f     bcs   $063e
062f: 58 ff 9c  eor   $9c,#$ff
0632: 58 ff 9d  eor   $9d,#$ff
0635: 58 ff 9e  eor   $9e,#$ff
0638: 3a 9c     incw  $9c
063a: d0 02     bne   $063e
063c: ab 9e     inc   $9e
063e: f8 a7     mov   x,$a7
0640: e4 9c     mov   a,$9c
0642: d5 a0 fb  mov   $fba0+x,a
0645: e4 9d     mov   a,$9d
0647: d5 c0 fa  mov   $fac0+x,a
064a: e4 9e     mov   a,$9e
064c: d5 c1 fa  mov   $fac1+x,a
064f: e8 00     mov   a,#$00
0651: d5 50 01  mov   $0150+x,a
0654: d5 a1 fb  mov   $fba1+x,a
0657: 6f        ret

0658: cd 0c     mov   x,#$0c
065a: 8d 00     mov   y,#$00
065c: 9e        div   ya,x
065d: f8 a7     mov   x,$a7
065f: c4 a5     mov   $a5,a
0661: dd        mov   a,y
0662: 1c        asl   a
0663: fd        mov   y,a
0664: f6 b2 1d  mov   a,$1db2+y
0667: c4 c0     mov   $c0,a
0669: f6 b3 1d  mov   a,$1db3+y
066c: c4 c1     mov   $c1,a
066e: fd        mov   y,a
066f: f5 80 fa  mov   a,$fa80+x
0672: 60        clrc
0673: 95 a0 fa  adc   a,$faa0+x
0676: c4 9c     mov   $9c,a
0678: cf        mul   ya
0679: da be     movw  $be,ya
067b: eb c0     mov   y,$c0
067d: e4 9c     mov   a,$9c
067f: cf        mul   ya
0680: dd        mov   a,y
0681: 8d 00     mov   y,#$00
0683: 7a be     addw  ya,$be
0685: da be     movw  $be,ya
0687: f5 81 fa  mov   a,$fa81+x
068a: f0 0a     beq   $0696
068c: eb c1     mov   y,$c1
068e: cf        mul   ya
068f: dd        mov   a,y
0690: 8d 00     mov   y,#$00
0692: 7a be     addw  ya,$be
0694: 2f 02     bra   $0698
0696: e4 be     mov   a,$be
0698: e3 9c 02  bbs7  $9c,$069d
069b: 7a c0     addw  ya,$c0
069d: da be     movw  $be,ya
069f: e8 04     mov   a,#$04
06a1: eb a5     mov   y,$a5
06a3: 30 0f     bmi   $06b4
06a5: f0 0d     beq   $06b4
06a7: 64 a5     cmp   a,$a5
06a9: b0 0e     bcs   $06b9
06ab: 0b be     asl   $be
06ad: 2b bf     rol   $bf
06af: bc        inc   a
06b0: 2e a5 f8  cbne  $a5,$06ab
06b3: 6f        ret

06b4: 4b bf     lsr   $bf
06b6: 6b be     ror   $be
06b8: 9c        dec   a
06b9: 2e a5 f8  cbne  $a5,$06b4
06bc: 6f        ret

06bd: e4 a6     mov   a,$a6
06bf: 8d 03     mov   y,#$03
06c1: cf        mul   ya
06c2: fd        mov   y,a
06c3: f6 22 f8  mov   a,$f822+y
06c6: 30 04     bmi   $06cc
06c8: 1c        asl   a
06c9: d5 81 f9  mov   $f981+x,a
06cc: f6 21 f8  mov   a,$f821+y
06cf: c4 a6     mov   $a6,a
06d1: f6 20 f8  mov   a,$f820+y
06d4: 3f 30 1b  call  $1b30
06d7: e4 a6     mov   a,$a6
06d9: 6f        ret

06da: a8 c4     sbc   a,#$c4
06dc: c4 a6     mov   $a6,a
06de: 1c        asl   a
06df: fd        mov   y,a
06e0: f6 ed 15  mov   a,$15ed+y
06e3: 2d        push  a
06e4: f6 ec 15  mov   a,$15ec+y
06e7: 2d        push  a
06e8: eb a6     mov   y,$a6
06ea: f6 64 16  mov   a,$1664+y
06ed: d0 01     bne   $06f0
06ef: 6f        ret

06f0: e7 02     mov   a,($02+x)
06f2: c4 a6     mov   $a6,a
06f4: bb 02     inc   $02+x
06f6: d0 02     bne   $06fa
06f8: bb 03     inc   $03+x
06fa: 6f        ret

06fb: f4 02     mov   a,$02+x
06fd: fb 03     mov   y,$03+x
06ff: da 94     movw  $94,ya
0701: f4 27     mov   a,$27+x
0703: c4 c3     mov   $c3,a
0705: 8d 00     mov   y,#$00
0707: f7 94     mov   a,($94)+y
0709: 68 c4     cmp   a,#$c4
070b: 90 32     bcc   $073f
070d: 3a 94     incw  $94
070f: 68 ec     cmp   a,#$ec
0711: f0 2c     beq   $073f
0713: 80        setc
0714: a8 c4     sbc   a,#$c4
0716: c4 93     mov   $93,a
0718: 1c        asl   a
0719: fd        mov   y,a
071a: f6 a1 16  mov   a,$16a1+y
071d: f0 12     beq   $0731
071f: c4 9c     mov   $9c,a
0721: e8 07     mov   a,#$07
0723: 2d        push  a
0724: e8 05     mov   a,#$05
0726: 2d        push  a
0727: e4 9c     mov   a,$9c
0729: 2d        push  a
072a: f6 a0 16  mov   a,$16a0+y
072d: 2d        push  a
072e: 8d 00     mov   y,#$00
0730: 6f        ret

0731: eb 93     mov   y,$93
0733: f6 64 16  mov   a,$1664+y
0736: f0 cd     beq   $0705
0738: fd        mov   y,a
0739: 3a 94     incw  $94
073b: fe fc     dbnz  y,$0739
073d: 2f c8     bra   $0707
073f: 6f        ret

0740: cb f2     mov   $f2,y
0742: c4 f3     mov   $f3,a
0744: 6f        ret

0745: da 9c     movw  $9c,ya
0747: e4 86     mov   a,$86
0749: 04 87     or    a,$87
074b: 2d        push  a
074c: 24 9d     and   a,$9d
074e: c4 9d     mov   $9d,a
0750: ae        pop   a
0751: 48 ff     eor   a,#$ff
0753: 24 53     and   a,$53
0755: 24 9c     and   a,$9c
0757: 04 9d     or    a,$9d
0759: 6f        ret

075a: 8f 33 f1  mov   $f1,#$33
075d: 8f 03 f1  mov   $f1,#$03
0760: 6f        ret

0761: 40        setp
0762: f4 11     mov   a,$11+x
0764: f0 02     beq   $0768
0766: 9b 11     dec   $11+x
0768: f4 31     mov   a,$31+x
076a: f0 02     beq   $076e
076c: 9b 31     dec   $31+x
076e: 20        clrp
076f: f5 c0 f9  mov   a,$f9c0+x
0772: f0 1f     beq   $0793
0774: 9c        dec   a
0775: d5 c0 f9  mov   $f9c0+x,a
0778: f5 40 f9  mov   a,$f940+x
077b: 60        clrc
077c: 95 60 f9  adc   a,$f960+x
077f: d5 40 f9  mov   $f940+x,a
0782: f5 41 f9  mov   a,$f941+x
0785: 95 61 f9  adc   a,$f961+x
0788: 75 41 f9  cmp   a,$f941+x
078b: d5 41 f9  mov   $f941+x,a
078e: f0 03     beq   $0793
0790: 09 92 d9  or    ($d9),($92)
0793: f5 c1 f9  mov   a,$f9c1+x
0796: f0 1f     beq   $07b7
0798: 9c        dec   a
0799: d5 c1 f9  mov   $f9c1+x,a
079c: f5 80 f9  mov   a,$f980+x
079f: 60        clrc
07a0: 95 a0 f9  adc   a,$f9a0+x
07a3: d5 80 f9  mov   $f980+x,a
07a6: f5 81 f9  mov   a,$f981+x
07a9: 95 a1 f9  adc   a,$f9a1+x
07ac: 75 81 f9  cmp   a,$f981+x
07af: d5 81 f9  mov   $f981+x,a
07b2: f0 03     beq   $07b7
07b4: 09 92 d9  or    ($d9),($92)
07b7: f5 a0 fb  mov   a,$fba0+x
07ba: c4 9c     mov   $9c,a
07bc: f5 c0 fa  mov   a,$fac0+x
07bf: c4 9d     mov   $9d,a
07c1: f5 c1 fa  mov   a,$fac1+x
07c4: c4 9e     mov   $9e,a
07c6: ba 9c     movw  ya,$9c
07c8: d0 04     bne   $07ce
07ca: e4 9e     mov   a,$9e
07cc: f0 2e     beq   $07fc
07ce: f5 60 fa  mov   a,$fa60+x
07d1: 9c        dec   a
07d2: d0 09     bne   $07dd
07d4: d5 c0 fa  mov   $fac0+x,a
07d7: d5 c1 fa  mov   $fac1+x,a
07da: d5 a0 fb  mov   $fba0+x,a
07dd: d5 60 fa  mov   $fa60+x,a
07e0: 60        clrc
07e1: f5 e0 fb  mov   a,$fbe0+x
07e4: fd        mov   y,a
07e5: f5 a1 fb  mov   a,$fba1+x
07e8: 7a 9c     addw  ya,$9c
07ea: d5 a1 fb  mov   $fba1+x,a
07ed: dd        mov   a,y
07ee: d5 e0 fb  mov   $fbe0+x,a
07f1: e4 9e     mov   a,$9e
07f3: 95 e1 fb  adc   a,$fbe1+x
07f6: d5 e1 fb  mov   $fbe1+x,a
07f9: 09 92 da  or    ($da),($92)
07fc: f5 71 01  mov   a,$0171+x
07ff: f0 42     beq   $0843
0801: f5 e0 fa  mov   a,$fae0+x
0804: c4 9c     mov   $9c,a
0806: f5 e1 fa  mov   a,$fae1+x
0809: c4 9d     mov   $9d,a
080b: f5 81 fb  mov   a,$fb81+x
080e: fd        mov   y,a
080f: c4 9e     mov   $9e,a
0811: f5 80 fb  mov   a,$fb80+x
0814: 7a 9c     addw  ya,$9c
0816: d5 80 fb  mov   $fb80+x,a
0819: dd        mov   a,y
081a: 75 81 fb  cmp   a,$fb81+x
081d: d5 81 fb  mov   $fb81+x,a
0820: f0 03     beq   $0825
0822: 09 92 d9  or    ($d9),($92)
0825: f5 41 fa  mov   a,$fa41+x
0828: 9c        dec   a
0829: d0 15     bne   $0840
082b: 58 ff 9c  eor   $9c,#$ff
082e: 58 ff 9d  eor   $9d,#$ff
0831: 3a 9c     incw  $9c
0833: e4 9c     mov   a,$9c
0835: d5 e0 fa  mov   $fae0+x,a
0838: e4 9d     mov   a,$9d
083a: d5 e1 fa  mov   $fae1+x,a
083d: f5 40 fa  mov   a,$fa40+x
0840: d5 41 fa  mov   $fa41+x,a
0843: 6f        ret

0844: e4 f4     mov   a,$f4
0846: f0 3c     beq   $0884
0848: 64 f4     cmp   a,$f4
084a: d0 f8     bne   $0844
084c: 68 fe     cmp   a,#$fe
084e: f0 34     beq   $0884
0850: 68 10     cmp   a,#$10
0852: 90 04     bcc   $0858
0854: 68 18     cmp   a,#$18
0856: 90 2c     bcc   $0884
0858: 4d        push  x
0859: f8 e0     mov   x,$e0
085b: d5 72 f8  mov   $f872+x,a
085e: fd        mov   y,a
085f: e4 f5     mov   a,$f5
0861: d5 73 f8  mov   $f873+x,a
0864: c4 f5     mov   $f5,a
0866: e4 f6     mov   a,$f6
0868: d5 74 f8  mov   $f874+x,a
086b: c4 f6     mov   $f6,a
086d: e4 f7     mov   a,$f7
086f: d5 75 f8  mov   $f875+x,a
0872: c4 f7     mov   $f7,a
0874: 7d        mov   a,x
0875: 60        clrc
0876: 88 04     adc   a,#$04
0878: 68 40     cmp   a,#$40
087a: b0 02     bcs   $087e
087c: c4 e0     mov   $e0,a
087e: ce        pop   x
087f: 3f 5a 07  call  $075a
0882: cb f4     mov   $f4,y
0884: 6f        ret

0885: cd 00     mov   x,#$00
0887: f5 72 f8  mov   a,$f872+x
088a: f0 1e     beq   $08aa
088c: c4 8e     mov   $8e,a
088e: f5 73 f8  mov   a,$f873+x
0891: c4 8f     mov   $8f,a
0893: f5 74 f8  mov   a,$f874+x
0896: c4 90     mov   $90,a
0898: f5 75 f8  mov   a,$f875+x
089b: c4 91     mov   $91,a
089d: 4d        push  x
089e: 3f 7b 0b  call  $0b7b
08a1: ae        pop   a
08a2: 60        clrc
08a3: 88 04     adc   a,#$04
08a5: 5d        mov   x,a
08a6: c8 40     cmp   x,#$40
08a8: d0 dd     bne   $0887
08aa: 7d        mov   a,x
08ab: f0 0b     beq   $08b8
08ad: e8 00     mov   a,#$00
08af: d5 6e f8  mov   $f86e+x,a
08b2: 1d        dec   x
08b3: 1d        dec   x
08b4: 1d        dec   x
08b5: 1d        dec   x
08b6: d0 f7     bne   $08af
08b8: c4 e0     mov   $e0,a
08ba: e3 89 03  bbs7  $89,$08c0
08bd: 5f a1 03  jmp   $03a1

08c0: 6f        ret

08c1: f5 51 01  mov   a,$0151+x
08c4: f0 63     beq   $0929
08c6: c4 a6     mov   $a6,a
08c8: c8 10     cmp   x,#$10
08ca: b0 05     bcs   $08d1
08cc: f5 11 01  mov   a,$0111+x
08cf: d0 58     bne   $0929
08d1: f5 e1 f9  mov   a,$f9e1+x
08d4: 9c        dec   a
08d5: d0 4f     bne   $0926
08d7: f5 00 fb  mov   a,$fb00+x
08da: c4 be     mov   $be,a
08dc: f5 20 fb  mov   a,$fb20+x
08df: c4 bf     mov   $bf,a
08e1: f5 21 f9  mov   a,$f921+x
08e4: 28 07     and   a,#$07
08e6: c4 c0     mov   $c0,a
08e8: 3f 8a 0a  call  $0a8a
08eb: f8 a7     mov   x,$a7
08ed: d5 20 fb  mov   $fb20+x,a
08f0: c4 be     mov   $be,a
08f2: f5 21 f9  mov   a,$f921+x
08f5: 28 70     and   a,#$70
08f7: 04 c0     or    a,$c0
08f9: d5 21 f9  mov   $f921+x,a
08fc: f5 01 fa  mov   a,$fa01+x
08ff: fd        mov   y,a
0900: f5 00 fa  mov   a,$fa00+x
0903: da 9c     movw  $9c,ya
0905: e4 be     mov   a,$be
0907: cf        mul   ya
0908: da 9e     movw  $9e,ya
090a: eb 9c     mov   y,$9c
090c: e4 be     mov   a,$be
090e: cf        mul   ya
090f: dd        mov   a,y
0910: 8d 00     mov   y,#$00
0912: 7a 9e     addw  ya,$9e
0914: f3 be 02  bbc7  $be,$0919
0917: 9a 9c     subw  ya,$9c
0919: d5 c0 fb  mov   $fbc0+x,a
091c: dd        mov   a,y
091d: d5 c1 fb  mov   $fbc1+x,a
0920: 09 92 da  or    ($da),($92)
0923: f5 e0 f9  mov   a,$f9e0+x
0926: d5 e1 f9  mov   $f9e1+x,a
0929: f5 70 01  mov   a,$0170+x
092c: f0 3e     beq   $096c
092e: c4 a6     mov   $a6,a
0930: f5 31 01  mov   a,$0131+x
0933: d0 37     bne   $096c
0935: f5 21 fa  mov   a,$fa21+x
0938: 9c        dec   a
0939: d0 2e     bne   $0969
093b: f5 40 fb  mov   a,$fb40+x
093e: c4 be     mov   $be,a
0940: f5 60 fb  mov   a,$fb60+x
0943: c4 bf     mov   $bf,a
0945: f5 21 f9  mov   a,$f921+x
0948: 28 70     and   a,#$70
094a: 9f        xcn   a
094b: c4 c0     mov   $c0,a
094d: 3f 8a 0a  call  $0a8a
0950: f8 a7     mov   x,$a7
0952: d5 60 fb  mov   $fb60+x,a
0955: c4 be     mov   $be,a
0957: f5 21 f9  mov   a,$f921+x
095a: 28 07     and   a,#$07
095c: 9f        xcn   a
095d: 04 c0     or    a,$c0
095f: 9f        xcn   a
0960: d5 21 f9  mov   $f921+x,a
0963: 09 92 d9  or    ($d9),($92)
0966: f5 20 fa  mov   a,$fa20+x
0969: d5 21 fa  mov   $fa21+x,a
096c: ba d9     movw  ya,$d9
096e: d0 01     bne   $0971
0970: 6f        ret

0971: 7d        mov   a,x
0972: 28 0f     and   a,#$0f
0974: c4 9c     mov   $9c,a
0976: 9f        xcn   a
0977: 5c        lsr   a
0978: c4 9d     mov   $9d,a
097a: e4 92     mov   a,$92
097c: 24 d9     and   a,$d9
097e: f0 70     beq   $09f0
0980: b2 88     clr5  $88
0982: 8f 80 9e  mov   $9e,#$80
0985: 03 88 0e  bbs0  $88,$0996
0988: f5 81 f9  mov   a,$f981+x
098b: fd        mov   y,a
098c: f5 81 fb  mov   a,$fb81+x
098f: 3f df 13  call  $13df
0992: 48 ff     eor   a,#$ff
0994: c4 9e     mov   $9e,a
0996: f5 41 f9  mov   a,$f941+x
0999: fd        mov   y,a
099a: c4 9f     mov   $9f,a
099c: f5 60 fb  mov   a,$fb60+x
099f: f0 0c     beq   $09ad
09a1: 1c        asl   a
09a2: cf        mul   ya
09a3: b0 08     bcs   $09ad
09a5: dd        mov   a,y
09a6: 84 9f     adc   a,$9f
09a8: 10 02     bpl   $09ac
09aa: e8 7f     mov   a,#$7f
09ac: fd        mov   y,a
09ad: e4 a9     mov   a,$a9
09af: cf        mul   ya
09b0: c8 10     cmp   x,#$10
09b2: b0 11     bcs   $09c5
09b4: e4 92     mov   a,$92
09b6: 24 a8     and   a,$a8
09b8: f0 04     beq   $09be
09ba: 8d 00     mov   y,#$00
09bc: 2f 07     bra   $09c5
09be: f5 20 f9  mov   a,$f920+x
09c1: cf        mul   ya
09c2: e4 4d     mov   a,$4d
09c4: cf        mul   ya
09c5: cb 9f     mov   $9f,y
09c7: e4 9e     mov   a,$9e
09c9: cf        mul   ya
09ca: dd        mov   a,y
09cb: eb 9c     mov   y,$9c
09cd: d6 c7 00  mov   $00c7+y,a
09d0: eb 9d     mov   y,$9d
09d2: cb f2     mov   $f2,y
09d4: c4 f3     mov   $f3,a
09d6: ea 9c 00  not1  $009c,0
09d9: ab 9d     inc   $9d
09db: e4 9e     mov   a,$9e
09dd: 48 ff     eor   a,#$ff
09df: eb 9f     mov   y,$9f
09e1: cf        mul   ya
09e2: dd        mov   a,y
09e3: eb 9c     mov   y,$9c
09e5: d6 c7 00  mov   $00c7+y,a
09e8: eb 9d     mov   y,$9d
09ea: cb f2     mov   $f2,y
09ec: c4 f3     mov   $f3,a
09ee: ab 9d     inc   $9d
09f0: e4 92     mov   a,$92
09f2: 24 da     and   a,$da
09f4: d0 03     bne   $09f9
09f6: 5f 89 0a  jmp   $0a89

09f9: 22 9d     set1  $9d
09fb: f5 e0 fb  mov   a,$fbe0+x
09fe: 60        clrc
09ff: 95 c0 fb  adc   a,$fbc0+x
0a02: c4 9e     mov   $9e,a
0a04: f5 e1 fb  mov   a,$fbe1+x
0a07: 95 c1 fb  adc   a,$fbc1+x
0a0a: c4 9f     mov   $9f,a
0a0c: c8 10     cmp   x,#$10
0a0e: b0 20     bcs   $0a30
0a10: eb b0     mov   y,$b0
0a12: f0 64     beq   $0a78
0a14: cf        mul   ya
0a15: da a0     movw  $a0,ya
0a17: eb b0     mov   y,$b0
0a19: e4 9e     mov   a,$9e
0a1b: cf        mul   ya
0a1c: dd        mov   a,y
0a1d: 8d 00     mov   y,#$00
0a1f: 7a a0     addw  ya,$a0
0a21: e3 b0 56  bbs7  $b0,$0a7a
0a24: 1c        asl   a
0a25: c4 a2     mov   $a2,a
0a27: dd        mov   a,y
0a28: 3c        rol   a
0a29: fd        mov   y,a
0a2a: e4 a2     mov   a,$a2
0a2c: 7a 9e     addw  ya,$9e
0a2e: 2f 4a     bra   $0a7a
0a30: c8 18     cmp   x,#$18
0a32: 90 44     bcc   $0a78
0a34: c8 1c     cmp   x,#$1c
0a36: 90 20     bcc   $0a58
0a38: eb b2     mov   y,$b2
0a3a: f0 3c     beq   $0a78
0a3c: cf        mul   ya
0a3d: da a0     movw  $a0,ya
0a3f: eb b2     mov   y,$b2
0a41: e4 9e     mov   a,$9e
0a43: cf        mul   ya
0a44: dd        mov   a,y
0a45: 8d 00     mov   y,#$00
0a47: 7a a0     addw  ya,$a0
0a49: e3 b2 2e  bbs7  $b2,$0a7a
0a4c: 1c        asl   a
0a4d: c4 a2     mov   $a2,a
0a4f: dd        mov   a,y
0a50: 3c        rol   a
0a51: fd        mov   y,a
0a52: e4 a2     mov   a,$a2
0a54: 7a 9e     addw  ya,$9e
0a56: 2f 22     bra   $0a7a
0a58: eb b4     mov   y,$b4
0a5a: f0 1c     beq   $0a78
0a5c: cf        mul   ya
0a5d: da a0     movw  $a0,ya
0a5f: eb b4     mov   y,$b4
0a61: e4 9e     mov   a,$9e
0a63: cf        mul   ya
0a64: dd        mov   a,y
0a65: 8d 00     mov   y,#$00
0a67: 7a a0     addw  ya,$a0
0a69: e3 b4 0e  bbs7  $b4,$0a7a
0a6c: 1c        asl   a
0a6d: c4 a2     mov   $a2,a
0a6f: dd        mov   a,y
0a70: 3c        rol   a
0a71: fd        mov   y,a
0a72: e4 a2     mov   a,$a2
0a74: 7a 9e     addw  ya,$9e
0a76: 2f 02     bra   $0a7a
0a78: ba 9e     movw  ya,$9e
0a7a: d8 9c     mov   $9c,x
0a7c: f8 9d     mov   x,$9d
0a7e: d8 f2     mov   $f2,x
0a80: c4 f3     mov   $f3,a
0a82: 3d        inc   x
0a83: d8 f2     mov   $f2,x
0a85: cb f3     mov   $f3,y
0a87: f8 9c     mov   x,$9c
0a89: 6f        ret

0a8a: e4 c0     mov   a,$c0
0a8c: f0 02     beq   $0a90
0a8e: 8b c0     dec   $c0
0a90: 1c        asl   a
0a91: 5d        mov   x,a
0a92: 78 c0 a6  cmp   $a6,#$c0
0a95: b0 0b     bcs   $0aa2
0a97: 78 80 a6  cmp   $a6,#$80
0a9a: b0 03     bcs   $0a9f
0a9c: 1f a5 0a  jmp   ($0aa5+x)

0a9f: 1f b5 0a  jmp   ($0ab5+x)

0aa2: 1f c5 0a  jmp   ($0ac5+x)

0aa5: 28 0b     and   a,#$0b
0aa7: 25 0b 22  and   a,$220b
0aaa: 0b de     asl   $de
0aac: 0a 22 0b  or1   c,$0b22,0
0aaf: da 0a     movw  $0a,ya
0ab1: 22 0b     set1  $0b
0ab3: d5 0a 28  mov   $280a+x,a
0ab6: 0b 25     asl   $25
0ab8: 0b 22     asl   $22
0aba: 0b f4     asl   $f4
0abc: 0a 22 0b  or1   c,$0b22,0
0abf: ef        sleep
0ac0: 0a 22 0b  or1   c,$0b22,0
0ac3: e8 0a     mov   a,#$0a
0ac5: 13 0b 25  bbc0  $0b,$0aed
0ac8: 0b 13     asl   $13
0aca: 0b 09     asl   $09
0acc: 0b 13     asl   $13
0ace: 0b 05     asl   $05
0ad0: 0b 13     asl   $13
0ad2: 0b 00     asl   $00
0ad4: 0b e4     asl   $e4
0ad6: be        das   a
0ad7: 5c        lsr   a
0ad8: 5c        lsr   a
0ad9: 6f        ret

0ada: e4 be     mov   a,$be
0adc: 5c        lsr   a
0add: 6f        ret

0ade: e4 be     mov   a,$be
0ae0: 5c        lsr   a
0ae1: c4 c1     mov   $c1,a
0ae3: 5c        lsr   a
0ae4: 60        clrc
0ae5: 84 c1     adc   a,$c1
0ae7: 6f        ret

0ae8: e4 be     mov   a,$be
0aea: 5c        lsr   a
0aeb: 5c        lsr   a
0aec: 08 c0     or    a,#$c0
0aee: 6f        ret

0aef: e4 be     mov   a,$be
0af1: 80        setc
0af2: 7c        ror   a
0af3: 6f        ret

0af4: e4 be     mov   a,$be
0af6: 80        setc
0af7: 7c        ror   a
0af8: c4 c1     mov   $c1,a
0afa: 80        setc
0afb: 7c        ror   a
0afc: 60        clrc
0afd: 84 c1     adc   a,$c1
0aff: 6f        ret

0b00: e4 be     mov   a,$be
0b02: 5c        lsr   a
0b03: 5c        lsr   a
0b04: 6f        ret

0b05: e4 be     mov   a,$be
0b07: 5c        lsr   a
0b08: 6f        ret

0b09: e4 be     mov   a,$be
0b0b: 5c        lsr   a
0b0c: c4 c1     mov   $c1,a
0b0e: 5c        lsr   a
0b0f: 60        clrc
0b10: 84 c1     adc   a,$c1
0b12: 6f        ret

0b13: 7d        mov   a,x
0b14: f0 04     beq   $0b1a
0b16: e4 bf     mov   a,$bf
0b18: 2f 05     bra   $0b1f
0b1a: e4 be     mov   a,$be
0b1c: e3 bf 02  bbs7  $bf,$0b21
0b1f: 48 ff     eor   a,#$ff
0b21: 6f        ret

0b22: e8 00     mov   a,#$00
0b24: 6f        ret

0b25: e4 be     mov   a,$be
0b27: 6f        ret

0b28: e4 bf     mov   a,$bf
0b2a: f0 f9     beq   $0b25
0b2c: 2f f4     bra   $0b22
0b2e: e4 e1     mov   a,$e1
0b30: 68 23     cmp   a,#$23
0b32: d0 0a     bne   $0b3e
0b34: e8 70     mov   a,#$70
0b36: 45 13 1e  eor   a,$1e13
0b39: c5 13 1e  mov   $1e13,a
0b3c: e4 e1     mov   a,$e1
0b3e: 5c        lsr   a
0b3f: fd        mov   y,a
0b40: e8 70     mov   a,#$70
0b42: 90 01     bcc   $0b45
0b44: 9f        xcn   a
0b45: 56 12 1e  eor   a,$1e12+y
0b48: d6 12 1e  mov   $1e12+y,a
0b4b: e4 e1     mov   a,$e1
0b4d: bc        inc   a
0b4e: 68 24     cmp   a,#$24
0b50: f0 0e     beq   $0b60
0b52: 2d        push  a
0b53: 5c        lsr   a
0b54: 8d 00     mov   y,#$00
0b56: cd 09     mov   x,#$09
0b58: 9e        div   ya,x
0b59: dd        mov   a,y
0b5a: ae        pop   a
0b5b: d0 05     bne   $0b62
0b5d: bc        inc   a
0b5e: bc        inc   a
0b5f: ec e8 03  mov   y,$03e8
0b62: c4 e1     mov   $e1,a
0b64: 6f        ret

0b65: f8 f4     mov   x,$f4
0b67: d0 03     bne   $0b6c
0b69: 6f        ret

0b6a: f8 f4     mov   x,$f4
0b6c: 3e f4     cmp   x,$f4
0b6e: d0 fa     bne   $0b6a
0b70: ba f6     movw  ya,$f6
0b72: da 90     movw  $90,ya
0b74: ba f4     movw  ya,$f4
0b76: da 8e     movw  $8e,ya
0b78: 3f 5a 07  call  $075a
0b7b: f8 8e     mov   x,$8e
0b7d: 7d        mov   a,x
0b7e: 10 0b     bpl   $0b8b
0b80: ba 90     movw  ya,$90
0b82: da f6     movw  $f6,ya
0b84: ba 8e     movw  ya,$8e
0b86: da f4     movw  $f4,ya
0b88: 5f a2 0e  jmp   $0ea2

0b8b: 28 0f     and   a,#$0f
0b8d: 1c        asl   a
0b8e: fd        mov   y,a
0b8f: c8 10     cmp   x,#$10
0b91: 90 21     bcc   $0bb4
0b93: c8 18     cmp   x,#$18
0b95: b0 11     bcs   $0ba8
0b97: f6 19 17  mov   a,$1719+y
0b9a: 2d        push  a
0b9b: f6 18 17  mov   a,$1718+y
0b9e: 2d        push  a
0b9f: f6 39 17  mov   a,$1739+y
0ba2: 2d        push  a
0ba3: f6 38 17  mov   a,$1738+y
0ba6: 2d        push  a
0ba7: 6f        ret

0ba8: c8 20     cmp   x,#$20
0baa: b0 08     bcs   $0bb4
0bac: f6 19 17  mov   a,$1719+y
0baf: 2d        push  a
0bb0: f6 18 17  mov   a,$1718+y
0bb3: 2d        push  a
0bb4: ba 90     movw  ya,$90
0bb6: da f6     movw  $f6,ya
0bb8: ba 8e     movw  ya,$8e
0bba: da f4     movw  $f4,ya
0bbc: 6f        ret

0bbd: 8f 10 c2  mov   $c2,#$10
0bc0: 2f 03     bra   $0bc5
0bc2: 8f 20 c2  mov   $c2,#$20
0bc5: e8 ff     mov   a,#$ff
0bc7: 8d 5c     mov   y,#$5c
0bc9: 3f 40 07  call  $0740
0bcc: fa 8f c5  mov   ($c5),($8f)
0bcf: e4 90     mov   a,$90
0bd1: c4 4d     mov   $4d,a
0bd3: e4 91     mov   a,$91
0bd5: 28 0f     and   a,#$0f
0bd7: 64 81     cmp   a,$81
0bd9: f0 09     beq   $0be4
0bdb: c4 81     mov   $81,a
0bdd: 02 89     set0  $89
0bdf: 22 89     set1  $89
0be1: 3f 17 14  call  $1417
0be4: ec 66 f8  mov   y,$f866
0be7: f0 24     beq   $0c0d
0be9: 6d        push  y
0bea: e5 6c f8  mov   a,$f86c
0bed: cf        mul   ya
0bee: da 9c     movw  $9c,ya
0bf0: ee        pop   y
0bf1: e5 6d f8  mov   a,$f86d
0bf4: cf        mul   ya
0bf5: fd        mov   y,a
0bf6: e8 00     mov   a,#$00
0bf8: 7a 9c     addw  ya,$9c
0bfa: da 9c     movw  $9c,ya
0bfc: e5 60 f8  mov   a,$f860
0bff: ec 61 f8  mov   y,$f861
0c02: 7a 9c     addw  ya,$9c
0c04: dd        mov   a,y
0c05: d0 06     bne   $0c0d
0c07: c5 66 f8  mov   $f866,a
0c0a: c5 61 f8  mov   $f861,a
0c0d: e8 00     mov   a,#$00
0c0f: da 86     movw  $86,ya
0c11: 8d 40     mov   y,#$40
0c13: d6 0c ff  mov   $ff0c+y,a
0c16: d6 0d ff  mov   $ff0d+y,a
0c19: d6 0e ff  mov   $ff0e+y,a
0c1c: d6 0f ff  mov   $ff0f+y,a
0c1f: dc        dec   y
0c20: dc        dec   y
0c21: dc        dec   y
0c22: fe ef     dbnz  y,$0c13
0c24: c5 c1 20  mov   $20c1,a
0c27: b2 89     clr5  $89
0c29: 3f 9a 11  call  $119a
0c2c: 3f a9 0c  call  $0ca9
0c2f: 13 89 15  bbc0  $89,$0c47
0c32: 33 89 0b  bbc1  $89,$0c40
0c35: cd 82     mov   x,#$82
0c37: 3f fa 13  call  $13fa
0c3a: 8f 00 83  mov   $83,#$00
0c3d: 3f 98 14  call  $1498
0c40: cd 81     mov   x,#$81
0c42: 3f fa 13  call  $13fa
0c45: 12 89     clr0  $89
0c47: cd ff     mov   x,#$ff
0c49: bd        mov   sp,x
0c4a: e4 fd     mov   a,$fd
0c4c: 5f a5 02  jmp   $02a5

0c4f: 7d        mov   a,x
0c50: 1c        asl   a
0c51: d4 27     mov   $27+x,a
0c53: e8 00     mov   a,#$00
0c55: d5 c0 f9  mov   $f9c0+x,a
0c58: d5 c1 f9  mov   $f9c1+x,a
0c5b: d5 50 01  mov   $0150+x,a
0c5e: d5 51 01  mov   $0151+x,a
0c61: d5 70 01  mov   $0170+x,a
0c64: d5 71 01  mov   $0171+x,a
0c67: d5 80 fb  mov   $fb80+x,a
0c6a: d5 81 fb  mov   $fb81+x,a
0c6d: d5 a0 fa  mov   $faa0+x,a
0c70: d5 61 fa  mov   $fa61+x,a
0c73: d5 00 fa  mov   $fa00+x,a
0c76: bc        inc   a
0c77: d4 26     mov   $26+x,a
0c79: e8 10     mov   a,#$10
0c7b: d5 01 fa  mov   $fa01+x,a
0c7e: 6f        ret

0c7f: e4 8f     mov   a,$8f
0c81: 64 80     cmp   a,$80
0c83: c4 80     mov   $80,a
0c85: f0 05     beq   $0c8c
0c87: c4 f5     mov   $f5,a
0c89: d8 f4     mov   $f4,x
0c8b: 6f        ret

0c8c: ae        pop   a
0c8d: ae        pop   a
0c8e: e8 ff     mov   a,#$ff
0c90: c4 f5     mov   $f5,a
0c92: d8 f4     mov   $f4,x
0c94: e4 f4     mov   a,$f4
0c96: f0 fc     beq   $0c94
0c98: e4 53     mov   a,$53
0c9a: f0 03     beq   $0c9f
0c9c: 5f 5a 07  jmp   $075a

0c9f: 3f 5a 07  call  $075a
0ca2: 3f a9 0c  call  $0ca9
0ca5: 8f ff 23  mov   $23,#$ff
0ca8: 6f        ret

0ca9: e8 00     mov   a,#$00
0cab: fd        mov   y,a
0cac: c4 53     mov   $53,a
0cae: da 86     movw  $86,ya
0cb0: da 54     movw  $54,ya
0cb2: da 56     movw  $56,ya
0cb4: da 58     movw  $58,ya
0cb6: c4 8a     mov   $8a,a
0cb8: c4 8b     mov   $8b,a
0cba: c4 8c     mov   $8c,a
0cbc: c4 22     mov   $22,a
0cbe: c4 23     mov   $23,a
0cc0: da 24     movw  $24,ya
0cc2: c4 5a     mov   $5a,a
0cc4: c4 5c     mov   $5c,a
0cc6: c4 60     mov   $60,a
0cc8: c4 7c     mov   $7c,a
0cca: c4 7b     mov   $7b,a
0ccc: da db     movw  $db,ya
0cce: c4 da     mov   $da,a
0cd0: c4 d9     mov   $d9,a
0cd2: 8f 01 47  mov   $47,#$01
0cd5: 8f ff 48  mov   $48,#$ff
0cd8: eb c2     mov   y,$c2
0cda: cd 10     mov   x,#$10
0cdc: f6 03 22  mov   a,$2203+y
0cdf: d4 01     mov   $01+x,a
0ce1: dc        dec   y
0ce2: 1d        dec   x
0ce3: d0 f7     bne   $0cdc
0ce5: e5 00 22  mov   a,$2200
0ce8: c4 00     mov   $00,a
0cea: e5 01 22  mov   a,$2201
0ced: c4 01     mov   $01,a
0cef: e8 24     mov   a,#$24
0cf1: 8d 22     mov   y,#$22
0cf3: 9a 00     subw  ya,$00
0cf5: da 00     movw  $00,ya
0cf7: cd 0e     mov   x,#$0e
0cf9: 8f 80 92  mov   $92,#$80
0cfc: e5 02 22  mov   a,$2202
0cff: ec 03 22  mov   y,$2203
0d02: da 9c     movw  $9c,ya
0d04: f4 02     mov   a,$02+x
0d06: fb 03     mov   y,$03+x
0d08: 5a 9c     cmpw  ya,$9c
0d0a: f0 16     beq   $0d22
0d0c: 09 92 53  or    ($53),($92)
0d0f: 7a 00     addw  ya,$00
0d11: d4 02     mov   $02+x,a
0d13: db 03     mov   $03+x,y
0d15: 3f 4f 0c  call  $0c4f
0d18: e8 ff     mov   a,#$ff
0d1a: d5 20 f9  mov   $f920+x,a
0d1d: e8 00     mov   a,#$00
0d1f: 3f 30 1b  call  $1b30
0d22: 1d        dec   x
0d23: 1d        dec   x
0d24: 4b 92     lsr   $92
0d26: d0 dc     bne   $0d04
0d28: 6f        ret

0d29: cd 1e     mov   x,#$1e
0d2b: 8f 80 92  mov   $92,#$80
0d2e: 8f c0 91  mov   $91,#$c0
0d31: 2f 12     bra   $0d45
0d33: cd 1a     mov   x,#$1a
0d35: 8f 20 92  mov   $92,#$20
0d38: 8f 30 91  mov   $91,#$30
0d3b: 2f 08     bra   $0d45
0d3d: cd 12     mov   x,#$12
0d3f: 8f 02 92  mov   $92,#$02
0d42: 8f 03 91  mov   $91,#$03
0d45: 93 88 01  bbc4  $88,$0d49
0d48: 6f        ret

0d49: fa 8f 94  mov   ($94),($8f)
0d4c: 8f 00 95  mov   $95,#$00
0d4f: 0b 94     asl   $94
0d51: 2b 95     rol   $95
0d53: 0b 94     asl   $94
0d55: 2b 95     rol   $95
0d57: e8 00     mov   a,#$00
0d59: 8d 31     mov   y,#$31
0d5b: 7a 94     addw  ya,$94
0d5d: da 94     movw  $94,ya
0d5f: 8d 03     mov   y,#$03
0d61: 8f 00 a5  mov   $a5,#$00
0d64: f7 94     mov   a,($94)+y
0d66: f0 34     beq   $0d9c
0d68: d4 03     mov   $03+x,a
0d6a: dc        dec   y
0d6b: f7 94     mov   a,($94)+y
0d6d: d4 02     mov   $02+x,a
0d6f: 09 92 a5  or    ($a5),($92)
0d72: 3f 4f 0c  call  $0c4f
0d75: bb 26     inc   $26+x
0d77: e8 50     mov   a,#$50
0d79: d5 41 f9  mov   $f941+x,a
0d7c: e4 90     mov   a,$90
0d7e: d5 81 f9  mov   $f981+x,a
0d81: e8 48     mov   a,#$48
0d83: d5 00 f9  mov   $f900+x,a
0d86: e8 00     mov   a,#$00
0d88: d5 c0 f9  mov   $f9c0+x,a
0d8b: d5 c1 f9  mov   $f9c1+x,a
0d8e: cb 9c     mov   $9c,y
0d90: e8 09     mov   a,#$09
0d92: 3f 30 1b  call  $1b30
0d95: eb 9c     mov   y,$9c
0d97: 1d        dec   x
0d98: 1d        dec   x
0d99: 4b 92     lsr   $92
0d9b: e8 dc     mov   a,#$dc
0d9d: dc        dec   y
0d9e: 10 c4     bpl   $0d64
0da0: e4 86     mov   a,$86
0da2: 24 91     and   a,$91
0da4: 04 a5     or    a,$a5
0da6: 4e 22 00  tclr1 $0022
0da9: 4e 5b 00  tclr1 $005b
0dac: 4e 5d 00  tclr1 $005d
0daf: 4e 61 00  tclr1 $0061
0db2: 4e d9 00  tclr1 $00d9
0db5: 4e da 00  tclr1 $00da
0db8: 0e 23 00  tset1 $0023
0dbb: 4e 25 00  tclr1 $0025
0dbe: c4 a6     mov   $a6,a
0dc0: cd 1e     mov   x,#$1e
0dc2: 8f 80 92  mov   $92,#$80
0dc5: 2f 07     bra   $0dce
0dc7: 3f 96 1d  call  $1d96
0dca: 1d        dec   x
0dcb: 1d        dec   x
0dcc: 4b 92     lsr   $92
0dce: 0b a6     asl   $a6
0dd0: b0 f5     bcs   $0dc7
0dd2: d0 f6     bne   $0dca
0dd4: e4 a5     mov   a,$a5
0dd6: 0e 86 00  tset1 $0086
0dd9: 4e 8a 00  tclr1 $008a
0ddc: 4e 8c 00  tclr1 $008c
0ddf: 4e 8b 00  tclr1 $008b
0de2: 4e 24 00  tclr1 $0024
0de5: 6f        ret

0de6: 8f 00 9c  mov   $9c,#$00
0de9: 8f 08 92  mov   $92,#$08
0dec: 8f 16 a7  mov   $a7,#$16
0def: 2f 1f     bra   $0e10
0df1: 8f 08 9c  mov   $9c,#$08
0df4: 8f 08 92  mov   $92,#$08
0df7: 8f 16 a7  mov   $a7,#$16
0dfa: 2f 14     bra   $0e10
0dfc: 8f 00 9c  mov   $9c,#$00
0dff: 8f 04 92  mov   $92,#$04
0e02: 8f 14 a7  mov   $a7,#$14
0e05: 2f 09     bra   $0e10
0e07: 8f 04 9c  mov   $9c,#$04
0e0a: 8f 04 92  mov   $92,#$04
0e0d: 8f 14 a7  mov   $a7,#$14
0e10: e4 8f     mov   a,$8f
0e12: cd 40     mov   x,#$40
0e14: 75 0e ff  cmp   a,$ff0e+x
0e17: f0 08     beq   $0e21
0e19: 1d        dec   x
0e1a: 1d        dec   x
0e1b: 1d        dec   x
0e1c: 1d        dec   x
0e1d: d0 f5     bne   $0e14
0e1f: 2f 62     bra   $0e83
0e21: f5 0c ff  mov   a,$ff0c+x
0e24: f0 5d     beq   $0e83
0e26: 1d        dec   x
0e27: 1d        dec   x
0e28: 1d        dec   x
0e29: 1d        dec   x
0e2a: 8d 00     mov   y,#$00
0e2c: 13 8e 02  bbc0  $8e,$0e31
0e2f: 8d 08     mov   y,#$08
0e31: d6 00 ff  mov   $ff00+y,a
0e34: f5 11 ff  mov   a,$ff11+x
0e37: d6 01 ff  mov   $ff01+y,a
0e3a: f5 13 ff  mov   a,$ff13+x
0e3d: d6 02 ff  mov   $ff02+y,a
0e40: e4 90     mov   a,$90
0e42: d6 03 ff  mov   $ff03+y,a
0e45: e4 9c     mov   a,$9c
0e47: d6 04 ff  mov   $ff04+y,a
0e4a: f8 a7     mov   x,$a7
0e4c: 3f 96 1d  call  $1d96
0e4f: e4 92     mov   a,$92
0e51: 0e 86 00  tset1 $0086
0e54: 4e 87 00  tclr1 $0087
0e57: 4e 8a 00  tclr1 $008a
0e5a: 4e 8c 00  tclr1 $008c
0e5d: 4e 8b 00  tclr1 $008b
0e60: 0e 23 00  tset1 $0023
0e63: 4e 22 00  tclr1 $0022
0e66: 4e 24 00  tclr1 $0024
0e69: 4e 25 00  tclr1 $0025
0e6c: 03 8e 08  bbs0  $8e,$0e77
0e6f: e8 07     mov   a,#$07
0e71: d4 02     mov   $02+x,a
0e73: e8 1e     mov   a,#$1e
0e75: 2f 06     bra   $0e7d
0e77: e8 08     mov   a,#$08
0e79: d4 02     mov   $02+x,a
0e7b: e8 1e     mov   a,#$1e
0e7d: d4 03     mov   $03+x,a
0e7f: e8 02     mov   a,#$02
0e81: d4 26     mov   $26+x,a
0e83: 6f        ret

0e84: e8 02     mov   a,#$02
0e86: d4 26     mov   $26+x,a
0e88: e8 1e     mov   a,#$1e
0e8a: d4 03     mov   $03+x,a
0e8c: e8 06     mov   a,#$06
0e8e: d4 02     mov   $02+x,a
0e90: e8 00     mov   a,#$00
0e92: d5 51 01  mov   $0151+x,a
0e95: d5 c1 fb  mov   $fbc1+x,a
0e98: d5 c0 fb  mov   $fbc0+x,a
0e9b: d5 70 01  mov   $0170+x,a
0e9e: d5 60 fb  mov   $fb60+x,a
0ea1: 6f        ret

0ea2: c8 f0     cmp   x,#$f0
0ea4: b0 04     bcs   $0eaa
0ea6: c8 90     cmp   x,#$90
0ea8: b0 0d     bcs   $0eb7
0eaa: 7d        mov   a,x
0eab: 28 1f     and   a,#$1f
0ead: 1c        asl   a
0eae: fd        mov   y,a
0eaf: f6 59 17  mov   a,$1759+y
0eb2: 2d        push  a
0eb3: f6 58 17  mov   a,$1758+y
0eb6: 2d        push  a
0eb7: 6f        ret

0eb8: 3f c1 0e  call  $0ec1
0ebb: 3f f6 0e  call  $0ef6
0ebe: 5f 29 0f  jmp   $0f29

0ec1: e4 86     mov   a,$86
0ec3: 48 ff     eor   a,#$ff
0ec5: 24 53     and   a,$53
0ec7: 0e d9 00  tset1 $00d9
0eca: eb 90     mov   y,$90
0ecc: e4 8f     mov   a,$8f
0ece: c5 66 f8  mov   $f866,a
0ed1: d0 0d     bne   $0ee0
0ed3: c5 60 f8  mov   $f860,a
0ed6: c5 6c f8  mov   $f86c,a
0ed9: c5 6d f8  mov   $f86d,a
0edc: cc 61 f8  mov   $f861,y
0edf: 6f        ret

0ee0: dd        mov   a,y
0ee1: 80        setc
0ee2: a5 61 f8  sbc   a,$f861
0ee5: f0 e7     beq   $0ece
0ee7: 3f 5c 0f  call  $0f5c
0eea: c5 6c f8  mov   $f86c,a
0eed: cc 6d f8  mov   $f86d,y
0ef0: e8 00     mov   a,#$00
0ef2: c5 60 f8  mov   $f860,a
0ef5: 6f        ret

0ef6: e4 86     mov   a,$86
0ef8: 28 c0     and   a,#$c0
0efa: 0e d9 00  tset1 $00d9
0efd: eb 90     mov   y,$90
0eff: e4 8f     mov   a,$8f
0f01: c5 68 f8  mov   $f868,a
0f04: d0 0d     bne   $0f13
0f06: c5 62 f8  mov   $f862,a
0f09: c5 6e f8  mov   $f86e,a
0f0c: c5 6f f8  mov   $f86f,a
0f0f: cc 63 f8  mov   $f863,y
0f12: 6f        ret

0f13: dd        mov   a,y
0f14: 80        setc
0f15: a5 63 f8  sbc   a,$f863
0f18: f0 e7     beq   $0f01
0f1a: 3f 5c 0f  call  $0f5c
0f1d: c5 6e f8  mov   $f86e,a
0f20: cc 6f f8  mov   $f86f,y
0f23: e8 00     mov   a,#$00
0f25: c5 62 f8  mov   $f862,a
0f28: 6f        ret

0f29: e4 86     mov   a,$86
0f2b: 28 30     and   a,#$30
0f2d: 0e d9 00  tset1 $00d9
0f30: eb 90     mov   y,$90
0f32: e4 8f     mov   a,$8f
0f34: c5 6a f8  mov   $f86a,a
0f37: d0 0d     bne   $0f46
0f39: c5 64 f8  mov   $f864,a
0f3c: c5 70 f8  mov   $f870,a
0f3f: c5 71 f8  mov   $f871,a
0f42: cc 65 f8  mov   $f865,y
0f45: 6f        ret

0f46: dd        mov   a,y
0f47: 80        setc
0f48: a5 65 f8  sbc   a,$f865
0f4b: f0 e7     beq   $0f34
0f4d: 3f 5c 0f  call  $0f5c
0f50: c5 70 f8  mov   $f870,a
0f53: cc 71 f8  mov   $f871,y
0f56: e8 00     mov   a,#$00
0f58: c5 64 f8  mov   $f864,a
0f5b: 6f        ret

0f5c: 0d        push  psw
0f5d: b0 03     bcs   $0f62
0f5f: 48 ff     eor   a,#$ff
0f61: bc        inc   a
0f62: f8 8f     mov   x,$8f
0f64: 8d 00     mov   y,#$00
0f66: 9e        div   ya,x
0f67: c4 bf     mov   $bf,a
0f69: e8 00     mov   a,#$00
0f6b: 9e        div   ya,x
0f6c: c4 be     mov   $be,a
0f6e: 8e        pop   psw
0f6f: b0 08     bcs   $0f79
0f71: 58 ff be  eor   $be,#$ff
0f74: 58 ff bf  eor   $bf,#$ff
0f77: 3a be     incw  $be
0f79: ba be     movw  ya,$be
0f7b: 6f        ret

0f7c: 3f a7 0f  call  $0fa7
0f7f: eb 90     mov   y,$90
0f81: e4 8f     mov   a,$8f
0f83: c4 ae     mov   $ae,a
0f85: d0 09     bne   $0f90
0f87: cb ab     mov   $ab,y
0f89: c4 aa     mov   $aa,a
0f8b: c4 ad     mov   $ad,a
0f8d: c4 ac     mov   $ac,a
0f8f: 6f        ret

0f90: fa ab a6  mov   ($a6),($ab)
0f93: 58 80 a6  eor   $a6,#$80
0f96: dd        mov   a,y
0f97: 48 80     eor   a,#$80
0f99: 80        setc
0f9a: a4 a6     sbc   a,$a6
0f9c: f0 e5     beq   $0f83
0f9e: 3f 5c 0f  call  $0f5c
0fa1: da ac     movw  $ac,ya
0fa3: 8f 00 aa  mov   $aa,#$00
0fa6: 6f        ret

0fa7: eb 90     mov   y,$90
0fa9: e4 8f     mov   a,$8f
0fab: c4 bb     mov   $bb,a
0fad: d0 0a     bne   $0fb9
0faf: cb b0     mov   $b0,y
0fb1: c4 af     mov   $af,a
0fb3: c4 b6     mov   $b6,a
0fb5: c4 b5     mov   $b5,a
0fb7: 2f 16     bra   $0fcf
0fb9: fa b0 a6  mov   ($a6),($b0)
0fbc: 58 80 a6  eor   $a6,#$80
0fbf: dd        mov   a,y
0fc0: 48 80     eor   a,#$80
0fc2: 80        setc
0fc3: a4 a6     sbc   a,$a6
0fc5: f0 e4     beq   $0fab
0fc7: 3f 5c 0f  call  $0f5c
0fca: da b5     movw  $b5,ya
0fcc: 8f 00 af  mov   $af,#$00
0fcf: e4 86     mov   a,$86
0fd1: 48 ff     eor   a,#$ff
0fd3: 24 53     and   a,$53
0fd5: 0e da 00  tset1 $00da
0fd8: 6f        ret

0fd9: eb 90     mov   y,$90
0fdb: e4 8f     mov   a,$8f
0fdd: c4 bc     mov   $bc,a
0fdf: d0 0a     bne   $0feb
0fe1: cb b2     mov   $b2,y
0fe3: c4 b1     mov   $b1,a
0fe5: c4 b8     mov   $b8,a
0fe7: c4 b7     mov   $b7,a
0fe9: 2f 16     bra   $1001
0feb: fa b2 a6  mov   ($a6),($b2)
0fee: 58 80 a6  eor   $a6,#$80
0ff1: dd        mov   a,y
0ff2: 48 80     eor   a,#$80
0ff4: 80        setc
0ff5: a4 a6     sbc   a,$a6
0ff7: f0 e4     beq   $0fdd
0ff9: 3f 5c 0f  call  $0f5c
0ffc: da b7     movw  $b7,ya
0ffe: 8f 00 b1  mov   $b1,#$00
1001: e4 86     mov   a,$86
1003: 28 c0     and   a,#$c0
1005: 0e da 00  tset1 $00da
1008: 6f        ret

1009: eb 90     mov   y,$90
100b: e4 8f     mov   a,$8f
100d: c4 bd     mov   $bd,a
100f: d0 0a     bne   $101b
1011: cb b4     mov   $b4,y
1013: c4 b3     mov   $b3,a
1015: c4 ba     mov   $ba,a
1017: c4 b9     mov   $b9,a
1019: 2f 16     bra   $1031
101b: fa b4 a6  mov   ($a6),($b4)
101e: 58 80 a6  eor   $a6,#$80
1021: dd        mov   a,y
1022: 48 80     eor   a,#$80
1024: 80        setc
1025: a4 a6     sbc   a,$a6
1027: f0 e4     beq   $100d
1029: 3f 5c 0f  call  $0f5c
102c: da b9     movw  $b9,ya
102e: 8f 00 b3  mov   $b3,#$00
1031: e4 86     mov   a,$86
1033: 28 30     and   a,#$30
1035: 0e da 00  tset1 $00da
1038: 6f        ret

1039: cd 1c     mov   x,#$1c
103b: 8f c0 92  mov   $92,#$c0
103e: 2f 05     bra   $1045
1040: cd 18     mov   x,#$18
1042: 8f 30 92  mov   $92,#$30
1045: e4 8f     mov   a,$8f
1047: d5 81 f9  mov   $f981+x,a
104a: d5 83 f9  mov   $f983+x,a
104d: e8 00     mov   a,#$00
104f: d5 c1 f9  mov   $f9c1+x,a
1052: d5 c3 f9  mov   $f9c3+x,a
1055: 09 92 d9  or    ($d9),($92)
1058: 6f        ret

1059: e4 8f     mov   a,$8f
105b: d0 04     bne   $1061
105d: 12 88     clr0  $88
105f: 2f 08     bra   $1069
1061: 02 88     set0  $88
1063: e8 40     mov   a,#$40
1065: c4 e6     mov   $e6,a
1067: c4 e7     mov   $e7,a
1069: 8f ff d9  mov   $d9,#$ff
106c: 6f        ret

106d: 3f 79 10  call  $1079
1070: 3f c6 10  call  $10c6
1073: 3f cd 10  call  $10cd
1076: 5f d4 10  jmp   $10d4

1079: e4 86     mov   a,$86
107b: 48 ff     eor   a,#$ff
107d: 0e 23 00  tset1 $0023
1080: 4e 22 00  tclr1 $0022
1083: 4e 8a 00  tclr1 $008a
1086: 4e 8c 00  tclr1 $008c
1089: 4e 8b 00  tclr1 $008b
108c: e8 00     mov   a,#$00
108e: c4 53     mov   $53,a
1090: c4 54     mov   $54,a
1092: c4 58     mov   $58,a
1094: c4 56     mov   $56,a
1096: 9c        dec   a
1097: c4 c4     mov   $c4,a
1099: c4 c5     mov   $c5,a
109b: 6f        ret

109c: 93 8f 03  bbc4  $8f,$10a2
109f: 3f bb 10  call  $10bb
10a2: b3 8f 03  bbc5  $8f,$10a8
10a5: 3f be 10  call  $10be
10a8: 13 8f 03  bbc0  $8f,$10ae
10ab: 3f c6 10  call  $10c6
10ae: 33 8f 03  bbc1  $8f,$10b4
10b1: 3f cd 10  call  $10cd
10b4: 73 8f 03  bbc3  $8f,$10ba
10b7: 5f d4 10  jmp   $10d4

10ba: 6f        ret

10bb: e8 08     mov   a,#$08
10bd: ec e8 04  mov   y,$04e8
10c0: 24 87     and   a,$87
10c2: 0e 23 00  tset1 $0023
10c5: 6f        ret

10c6: e4 86     mov   a,$86
10c8: 28 c0     and   a,#$c0
10ca: d0 0f     bne   $10db
10cc: 6f        ret

10cd: e4 86     mov   a,$86
10cf: 28 30     and   a,#$30
10d1: d0 08     bne   $10db
10d3: 6f        ret

10d4: e4 86     mov   a,$86
10d6: 28 03     and   a,#$03
10d8: d0 01     bne   $10db
10da: 6f        ret

10db: 0e 23 00  tset1 $0023
10de: 4e 22 00  tclr1 $0022
10e1: 4e 25 00  tclr1 $0025
10e4: 4e d9 00  tclr1 $00d9
10e7: 4e da 00  tclr1 $00da
10ea: c4 a5     mov   $a5,a
10ec: cd 1e     mov   x,#$1e
10ee: 2f 0e     bra   $10fe
10f0: e8 06     mov   a,#$06
10f2: d4 02     mov   $02+x,a
10f4: e8 1e     mov   a,#$1e
10f6: d4 03     mov   $03+x,a
10f8: e8 02     mov   a,#$02
10fa: d4 26     mov   $26+x,a
10fc: 1d        dec   x
10fd: 1d        dec   x
10fe: 0b a5     asl   $a5
1100: b0 ee     bcs   $10f0
1102: d0 f8     bne   $10fc
1104: 6f        ret

1105: 03 88 0b  bbs0  $88,$1113
1108: 03 8f 09  bbs0  $8f,$1114
110b: e8 40     mov   a,#$40
110d: c4 e6     mov   $e6,a
110f: c4 e7     mov   $e7,a
1111: 32 88     clr1  $88
1113: 6f        ret

1114: e8 50     mov   a,#$50
1116: c4 ee     mov   $ee,a
1118: 8d 00     mov   y,#$00
111a: e8 7f     mov   a,#$7f
111c: cd a0     mov   x,#$a0
111e: 9e        div   ya,x
111f: c4 ed     mov   $ed,a
1121: e8 00     mov   a,#$00
1123: 9e        div   ya,x
1124: c4 ec     mov   $ec,a
1126: 8d 40     mov   y,#$40
1128: e8 00     mov   a,#$00
112a: da ea     movw  $ea,ya
112c: 22 88     set1  $88
112e: 5f 56 1f  jmp   $1f56

1131: fa 8f a8  mov   ($a8),($8f)
1134: 8f ff d9  mov   $d9,#$ff
1137: 6f        ret

1138: e4 8f     mov   a,$8f
113a: 4e a8 00  tclr1 $00a8
113d: 0e d9 00  tset1 $00d9
1140: 6f        ret

1141: e4 8f     mov   a,$8f
1143: 0e a8 00  tset1 $00a8
1146: 0e d9 00  tset1 $00d9
1149: 6f        ret

114a: e4 8f     mov   a,$8f
114c: f0 35     beq   $1183
114e: 8d 05     mov   y,#$05
1150: cb f2     mov   $f2,y
1152: e4 f3     mov   a,$f3
1154: 28 7f     and   a,#$7f
1156: c4 f3     mov   $f3,a
1158: dd        mov   a,y
1159: 60        clrc
115a: 88 10     adc   a,#$10
115c: fd        mov   y,a
115d: 10 f1     bpl   $1150
115f: cd 00     mov   x,#$00
1161: 8d 00     mov   y,#$00
1163: cb f2     mov   $f2,y
1165: d8 f3     mov   $f3,x
1167: fc        inc   y
1168: cb f2     mov   $f2,y
116a: d8 f3     mov   $f3,x
116c: dd        mov   a,y
116d: 60        clrc
116e: 88 0f     adc   a,#$0f
1170: fd        mov   y,a
1171: 10 f0     bpl   $1163
1173: 82 88     set4  $88
1175: e8 00     mov   a,#$00
1177: c4 d9     mov   $d9,a
1179: c4 22     mov   $22,a
117b: 8d 10     mov   y,#$10
117d: d6 c6 00  mov   $00c6+y,a
1180: fe fb     dbnz  y,$117d
1182: 6f        ret

1183: 8d 05     mov   y,#$05
1185: cb f2     mov   $f2,y
1187: e4 f3     mov   a,$f3
1189: 08 80     or    a,#$80
118b: c4 f3     mov   $f3,a
118d: dd        mov   a,y
118e: 60        clrc
118f: 88 10     adc   a,#$10
1191: fd        mov   y,a
1192: 10 f1     bpl   $1185
1194: 92 88     clr4  $88
1196: 8f ff d9  mov   $d9,#$ff
1199: 6f        ret

119a: 7d        mov   a,x
119b: bc        inc   a
119c: 28 7f     and   a,#$7f
119e: 08 40     or    a,#$40
11a0: c4 9c     mov   $9c,a
11a2: e4 f4     mov   a,$f4
11a4: 64 f4     cmp   a,$f4
11a6: d0 fa     bne   $11a2
11a8: 3e f4     cmp   x,$f4
11aa: d0 02     bne   $11ae
11ac: d8 f4     mov   $f4,x
11ae: 64 9c     cmp   a,$9c
11b0: d0 f0     bne   $11a2
11b2: 5d        mov   x,a
11b3: 13 89 03  bbc0  $89,$11b9
11b6: 3f 27 14  call  $1427
11b9: ba f6     movw  ya,$f6
11bb: da 98     movw  $98,ya
11bd: e4 f5     mov   a,$f5
11bf: 68 e0     cmp   a,#$e0
11c1: f0 49     beq   $120c
11c3: c4 f5     mov   $f5,a
11c5: d8 f4     mov   $f4,x
11c7: 28 07     and   a,#$07
11c9: 1c        asl   a
11ca: ad 20     cmp   y,#$20
11cc: 90 10     bcc   $11de
11ce: ad 31     cmp   y,#$31
11d0: d0 0e     bne   $11e0
11d2: 4d        push  x
11d3: 2d        push  a
11d4: 3f cd 10  call  $10cd
11d7: 3f c6 10  call  $10c6
11da: ae        pop   a
11db: ce        pop   x
11dc: 2f 02     bra   $11e0
11de: e8 00     mov   a,#$00
11e0: fd        mov   y,a
11e1: e8 11     mov   a,#$11
11e3: 2d        push  a
11e4: e8 b3     mov   a,#$b3
11e6: 2d        push  a
11e7: f6 dd 15  mov   a,$15dd+y
11ea: 2d        push  a
11eb: f6 dc 15  mov   a,$15dc+y
11ee: 2d        push  a
11ef: e5 b9 03  mov   a,$03b9
11f2: ec ba 03  mov   y,$03ba
11f5: da 94     movw  $94,ya
11f7: e8 ec     mov   a,#$ec
11f9: 8d 00     mov   y,#$00
11fb: d7 94     mov   ($94)+y,a
11fd: 3e f4     cmp   x,$f4
11ff: f0 fc     beq   $11fd
1201: f8 f4     mov   x,$f4
1203: 3e f4     cmp   x,$f4
1205: d0 fa     bne   $1201
1207: e8 ee     mov   a,#$ee
1209: c4 f5     mov   $f5,a
120b: 6f        ret

120c: e5 b9 03  mov   a,$03b9
120f: ec ba 03  mov   y,$03ba
1212: da 94     movw  $94,ya
1214: e8 3f     mov   a,#$3f
1216: 8d 00     mov   y,#$00
1218: d7 94     mov   ($94)+y,a
121a: 8f 00 f5  mov   $f5,#$00
121d: d8 f4     mov   $f4,x
121f: 5f 5a 07  jmp   $075a

1222: ba 98     movw  ya,$98
1224: c5 45 12  mov   $1245,a
1227: cc 46 12  mov   $1246,y
122a: c5 4d 12  mov   $124d,a
122d: cc 4e 12  mov   $124e,y
1230: c5 53 12  mov   $1253,a
1233: cc 54 12  mov   $1254,y
1236: 8d 00     mov   y,#$00
1238: 2f 08     bra   $1242
123a: 3e f4     cmp   x,$f4
123c: d0 1e     bne   $125c
123e: c8 40     cmp   x,#$40
1240: 90 16     bcc   $1258
1242: e4 f5     mov   a,$f5
1244: d6 20 f8  mov   $f820+y,a
1247: fc        inc   y
1248: d8 f4     mov   $f4,x
124a: e4 f6     mov   a,$f6
124c: d6 20 f8  mov   $f820+y,a
124f: e4 f7     mov   a,$f7
1251: fc        inc   y
1252: d6 20 f8  mov   $f820+y,a
1255: fc        inc   y
1256: 30 1e     bmi   $1276
1258: 3e f4     cmp   x,$f4
125a: f0 fc     beq   $1258
125c: f8 f4     mov   x,$f4
125e: 10 da     bpl   $123a
1260: 3e f4     cmp   x,$f4
1262: d0 f8     bne   $125c
1264: c8 e0     cmp   x,#$e0
1266: f0 2d     beq   $1295
1268: c8 ff     cmp   x,#$ff
126a: d0 ec     bne   $1258
126c: e8 f0     mov   a,#$f0
126e: 2e f5 e7  cbne  $f5,$1258
1271: c4 8f     mov   $8f,a
1273: 5f be 13  jmp   $13be

1276: dd        mov   a,y
1277: 28 7f     and   a,#$7f
1279: fd        mov   y,a
127a: e5 45 12  mov   a,$1245
127d: 48 80     eor   a,#$80
127f: 30 09     bmi   $128a
1281: ac 46 12  inc   $1246
1284: ac 4e 12  inc   $124e
1287: ac 54 12  inc   $1254
128a: c5 45 12  mov   $1245,a
128d: c5 4d 12  mov   $124d,a
1290: c5 53 12  mov   $1253,a
1293: 2f c3     bra   $1258
1295: 6f        ret

1296: ba 98     movw  ya,$98
1298: c5 b3 12  mov   $12b3,a
129b: cc b4 12  mov   $12b4,y
129e: c5 bb 12  mov   $12bb,a
12a1: cc bc 12  mov   $12bc,y
12a4: 8d 00     mov   y,#$00
12a6: 2f 08     bra   $12b0
12a8: 3e f4     cmp   x,$f4
12aa: d0 1e     bne   $12ca
12ac: c8 40     cmp   x,#$40
12ae: 90 16     bcc   $12c6
12b0: e4 f5     mov   a,$f5
12b2: d6 c0 21  mov   $21c0+y,a
12b5: e4 f6     mov   a,$f6
12b7: d8 f4     mov   $f4,x
12b9: fc        inc   y
12ba: d6 c0 21  mov   $21c0+y,a
12bd: fc        inc   y
12be: d0 06     bne   $12c6
12c0: ac b4 12  inc   $12b4
12c3: ac bc 12  inc   $12bc
12c6: 3e f4     cmp   x,$f4
12c8: f0 fc     beq   $12c6
12ca: f8 f4     mov   x,$f4
12cc: 10 da     bpl   $12a8
12ce: 3e f4     cmp   x,$f4
12d0: d0 f8     bne   $12ca
12d2: c8 e0     cmp   x,#$e0
12d4: f0 0e     beq   $12e4
12d6: c8 ff     cmp   x,#$ff
12d8: d0 ec     bne   $12c6
12da: e8 f0     mov   a,#$f0
12dc: 2e f5 e7  cbne  $f5,$12c6
12df: c4 8f     mov   $8f,a
12e1: 5f be 13  jmp   $13be

12e4: 6f        ret

12e5: d8 f4     mov   $f4,x
12e7: 3e f4     cmp   x,$f4
12e9: f0 fc     beq   $12e7
12eb: f8 f4     mov   x,$f4
12ed: 3e f4     cmp   x,$f4
12ef: d0 fa     bne   $12eb
12f1: 7d        mov   a,x
12f2: 10 f1     bpl   $12e5
12f4: c8 e0     cmp   x,#$e0
12f6: f0 0e     beq   $1306
12f8: c8 ff     cmp   x,#$ff
12fa: d0 e9     bne   $12e5
12fc: e8 f0     mov   a,#$f0
12fe: 2e f5 e4  cbne  $f5,$12e5
1301: c4 8f     mov   $8f,a
1303: 5f be 13  jmp   $13be

1306: 6f        ret

1307: ba f6     movw  ya,$f6
1309: da 9a     movw  $9a,ya
130b: d8 f4     mov   $f4,x
130d: 3f 76 13  call  $1376
1310: b0 63     bcs   $1375
1312: ba f6     movw  ya,$f6
1314: da 9c     movw  $9c,ya
1316: d8 f4     mov   $f4,x
1318: dd        mov   a,y
1319: f0 28     beq   $1343
131b: ba 98     movw  ya,$98
131d: c5 2e 13  mov   $132e,a
1320: cc 2f 13  mov   $132f,y
1323: ba 9a     movw  ya,$9a
1325: c5 31 13  mov   $1331,a
1328: cc 32 13  mov   $1332,y
132b: 8d 00     mov   y,#$00
132d: f6 c4 92  mov   a,$92c4+y
1330: d6 23 70  mov   $7023+y,a
1333: fc        inc   y
1334: d0 f7     bne   $132d
1336: ab 99     inc   $99
1338: ab 9b     inc   $9b
133a: ac 2f 13  inc   $132f
133d: ac 32 13  inc   $1332
1340: 6e 9d ea  dbnz  $9d,$132d
1343: 1a 98     decw  $98
1345: 1a 9a     decw  $9a
1347: ba 98     movw  ya,$98
1349: c5 5c 13  mov   $135c,a
134c: cc 5d 13  mov   $135d,y
134f: ba 9a     movw  ya,$9a
1351: c5 5f 13  mov   $135f,a
1354: cc 60 13  mov   $1360,y
1357: eb 9c     mov   y,$9c
1359: f0 08     beq   $1363
135b: f6 c3 92  mov   a,$92c3+y
135e: d6 22 70  mov   $7022+y,a
1361: fe f8     dbnz  y,$135b
1363: 3f 76 13  call  $1376
1366: b0 0d     bcs   $1375
1368: ba f6     movw  ya,$f6
136a: da 98     movw  $98,ya
136c: d8 f4     mov   $f4,x
136e: 3f 76 13  call  $1376
1371: b0 02     bcs   $1375
1373: 2f 92     bra   $1307
1375: 6f        ret

1376: 3e f4     cmp   x,$f4
1378: f0 fc     beq   $1376
137a: f8 f4     mov   x,$f4
137c: 10 16     bpl   $1394
137e: 3e f4     cmp   x,$f4
1380: d0 f8     bne   $137a
1382: c8 e0     cmp   x,#$e0
1384: f0 14     beq   $139a
1386: c8 ff     cmp   x,#$ff
1388: d0 ec     bne   $1376
138a: e8 f0     mov   a,#$f0
138c: 2e f5 e7  cbne  $f5,$1376
138f: c4 8f     mov   $8f,a
1391: 5f be 13  jmp   $13be

1394: 3e f4     cmp   x,$f4
1396: f0 04     beq   $139c
1398: 2f dc     bra   $1376
139a: 80        setc
139b: 8d 60     mov   y,#$60
139d: 6f        ret

139e: e4 8f     mov   a,$8f
13a0: 60        clrc
13a1: 88 ff     adc   a,#$ff
13a3: ca 89 a0  mov1  $0089,5,c
13a6: b0 04     bcs   $13ac
13a8: e8 27     mov   a,#$27
13aa: 2f 02     bra   $13ae
13ac: e8 01     mov   a,#$01
13ae: 8f 02 f1  mov   $f1,#$02
13b1: c4 fa     mov   $fa,a
13b3: 8f 03 f1  mov   $f1,#$03
13b6: 6f        ret

13b7: e4 8f     mov   a,$8f
13b9: 28 0f     and   a,#$0f
13bb: c4 db     mov   $db,a
13bd: 6f        ret

13be: e4 8f     mov   a,$8f
13c0: 68 01     cmp   a,#$01
13c2: d0 09     bne   $13cd
13c4: e4 90     mov   a,$90
13c6: 60        clrc
13c7: 88 ff     adc   a,#$ff
13c9: ca 89 e0  mov1  $0089,7,c
13cc: 6f        ret

13cd: 68 f0     cmp   a,#$f0
13cf: d0 fb     bne   $13cc
13d1: e8 e0     mov   a,#$e0
13d3: 8d 6c     mov   y,#$6c
13d5: 3f 40 07  call  $0740
13d8: 8f 80 f1  mov   $f1,#$80
13db: 5f c0 ff  jmp   $ffc0

; vcmd e5,e7 - nop
13de: 6f        ret

13df: cb be     mov   $be,y
13e1: 60        clrc
13e2: fd        mov   y,a
13e3: 30 07     bmi   $13ec
13e5: 84 be     adc   a,$be
13e7: 90 09     bcc   $13f2
13e9: e8 ff     mov   a,#$ff
13eb: 6f        ret

13ec: 84 be     adc   a,$be
13ee: b0 02     bcs   $13f2
13f0: e8 00     mov   a,#$00
13f2: 6f        ret

13f3: eb 8f     mov   y,$8f
13f5: e4 90     mov   a,$90
13f7: 5f 40 07  jmp   $0740

13fa: 8f 00 e0  mov   $e0,#$00
13fd: e6        mov   a,(x)
13fe: f0 16     beq   $1416
1400: e4 83     mov   a,$83
1402: 2f 0c     bra   $1410
1404: eb fe     mov   y,$fe
1406: d0 07     bne   $140f
1408: 2d        push  a
1409: 3f 44 08  call  $0844
140c: ae        pop   a
140d: 2f f5     bra   $1404
140f: bc        inc   a
1410: 66        cmp   a,(x)
1411: 90 f1     bcc   $1404
1413: 3f 85 08  call  $0885
1416: 6f        ret

1417: 3f 53 14  call  $1453
141a: 8f 00 83  mov   $83,#$00
141d: e4 82     mov   a,$82
141f: f0 01     beq   $1422
1421: 6f        ret

1422: 32 89     clr1  $89
1424: 5f 98 14  jmp   $1498

1427: e4 fe     mov   a,$fe
1429: 60        clrc
142a: 84 83     adc   a,$83
142c: c4 83     mov   $83,a
142e: 6f        ret

142f: e4 8f     mov   a,$8f
1431: 28 0f     and   a,#$0f
1433: 64 81     cmp   a,$81
1435: f0 1b     beq   $1452
1437: 8f 00 83  mov   $83,#$00
143a: c4 81     mov   $81,a
143c: 3f 53 14  call  $1453
143f: cd 82     mov   x,#$82
1441: 3f fa 13  call  $13fa
1444: 3f 98 14  call  $1498
1447: cd 81     mov   x,#$81
1449: 3f fa 13  call  $13fa
144c: e4 53     mov   a,$53
144e: d0 02     bne   $1452
1450: c4 4f     mov   $4f,a
1452: 6f        ret

1453: 8f 6c f2  mov   $f2,#$6c
1456: e4 f3     mov   a,$f3
1458: 08 20     or    a,#$20
145a: c4 f3     mov   $f3,a
145c: e8 00     mov   a,#$00
145e: 8d 4d     mov   y,#$4d
1460: 3f 40 07  call  $0740
1463: 8d 0d     mov   y,#$0d
1465: 3f 40 07  call  $0740
1468: 8d 2c     mov   y,#$2c
146a: 3f 40 07  call  $0740
146d: 8d 3c     mov   y,#$3c
146f: 3f 40 07  call  $0740
1472: 8d 7d     mov   y,#$7d
1474: cb f2     mov   $f2,y
1476: e4 f3     mov   a,$f3
1478: 28 0f     and   a,#$0f
147a: c4 82     mov   $82,a
147c: e4 81     mov   a,$81
147e: 3f 40 07  call  $0740
1481: 1c        asl   a
1482: 1c        asl   a
1483: 1c        asl   a
1484: 48 ff     eor   a,#$ff
1486: bc        inc   a
1487: 60        clrc
1488: 88 f8     adc   a,#$f8
148a: 8d 6d     mov   y,#$6d
148c: 3f 40 07  call  $0740
148f: 8f 01 f1  mov   $f1,#$01
1492: eb fe     mov   y,$fe
1494: 8f 03 f1  mov   $f1,#$03
1497: 6f        ret

1498: 8f 01 f1  mov   $f1,#$01
149b: eb fe     mov   y,$fe
149d: 8f 03 f1  mov   $f1,#$03
14a0: 8f 6c f2  mov   $f2,#$6c
14a3: e4 f3     mov   a,$f3
14a5: 28 df     and   a,#$df
14a7: c4 f3     mov   $f3,a
14a9: 6f        ret

14aa: e8 9c     mov   a,#$9c
14ac: c4 a1     mov   $a1,a
14ae: e8 c7     mov   a,#$c7
14b0: 8f 00 a5  mov   $a5,#$00
14b3: 60        clrc
14b4: 8f 09 92  mov   $92,#$09
14b7: 83 89 02  bbs4  $89,$14bc
14ba: 2f 06     bra   $14c2
14bc: 88 08     adc   a,#$08
14be: c2 92     set6  $92
14c0: e2 a5     set7  $a5
14c2: c4 a2     mov   $a2,a
14c4: 88 08     adc   a,#$08
14c6: c4 a4     mov   $a4,a
14c8: f8 a2     mov   x,$a2
14ca: eb 92     mov   y,$92
14cc: cb f2     mov   $f2,y
14ce: eb f3     mov   y,$f3
14d0: cb a3     mov   $a3,y
14d2: bf        mov   a,(x)+
14d3: 1c        asl   a
14d4: cf        mul   ya
14d5: dd        mov   a,y
14d6: 28 70     and   a,#$70
14d8: c4 a0     mov   $a0,a
14da: eb a3     mov   y,$a3
14dc: bf        mov   a,(x)+
14dd: 1c        asl   a
14de: cf        mul   ya
14df: dd        mov   a,y
14e0: d8 a2     mov   $a2,x
14e2: f8 a1     mov   x,$a1
14e4: 9f        xcn   a
14e5: 28 07     and   a,#$07
14e7: 04 a0     or    a,$a0
14e9: 04 a5     or    a,$a5
14eb: af        mov   (x)+,a
14ec: d8 a1     mov   $a1,x
14ee: 60        clrc
14ef: 98 10 92  adc   $92,#$10
14f2: f8 a2     mov   x,$a2
14f4: 3e a4     cmp   x,$a4
14f6: d0 d2     bne   $14ca
14f8: ba 9c     movw  ya,$9c
14fa: da f4     movw  $f4,ya
14fc: ba 9e     movw  ya,$9e
14fe: da f6     movw  $f6,ya
1500: ea 89 80  not1  $0089,4
1503: 6f        ret

1504: e5 66 f8  mov   a,$f866
1507: f0 31     beq   $153a
1509: 9c        dec   a
150a: c5 66 f8  mov   $f866,a
150d: 5d        mov   x,a
150e: e5 60 f8  mov   a,$f860
1511: 60        clrc
1512: 85 6c f8  adc   a,$f86c
1515: c5 60 f8  mov   $f860,a
1518: e5 61 f8  mov   a,$f861
151b: 85 6d f8  adc   a,$f86d
151e: 65 61 f8  cmp   a,$f861
1521: c5 61 f8  mov   $f861,a
1524: f0 03     beq   $1529
1526: 09 53 d9  or    ($d9),($53)
1529: fd        mov   y,a
152a: d0 0e     bne   $153a
152c: 7d        mov   a,x
152d: d0 0b     bne   $153a
152f: ba c4     movw  ya,$c4
1531: 2d        push  a
1532: 6d        push  y
1533: 3f 79 10  call  $1079
1536: ee        pop   y
1537: ae        pop   a
1538: da c4     movw  $c4,ya
153a: e5 68 f8  mov   a,$f868
153d: f0 29     beq   $1568
153f: 9c        dec   a
1540: c5 68 f8  mov   $f868,a
1543: 5d        mov   x,a
1544: e5 62 f8  mov   a,$f862
1547: 60        clrc
1548: 85 6e f8  adc   a,$f86e
154b: c5 62 f8  mov   $f862,a
154e: e5 63 f8  mov   a,$f863
1551: 85 6f f8  adc   a,$f86f
1554: 65 63 f8  cmp   a,$f863
1557: c5 63 f8  mov   $f863,a
155a: f0 03     beq   $155f
155c: 09 86 d9  or    ($d9),($86)
155f: fd        mov   y,a
1560: d0 06     bne   $1568
1562: 7d        mov   a,x
1563: d0 03     bne   $1568
1565: 3f c6 10  call  $10c6
1568: e5 6a f8  mov   a,$f86a
156b: f0 29     beq   $1596
156d: 9c        dec   a
156e: c5 6a f8  mov   $f86a,a
1571: 5d        mov   x,a
1572: e5 64 f8  mov   a,$f864
1575: 60        clrc
1576: 85 70 f8  adc   a,$f870
1579: c5 64 f8  mov   $f864,a
157c: e5 65 f8  mov   a,$f865
157f: 85 71 f8  adc   a,$f871
1582: 65 65 f8  cmp   a,$f865
1585: c5 65 f8  mov   $f865,a
1588: f0 03     beq   $158d
158a: 09 86 d9  or    ($d9),($86)
158d: fd        mov   y,a
158e: d0 06     bne   $1596
1590: 7d        mov   a,x
1591: d0 03     bne   $1596
1593: 3f cd 10  call  $10cd
1596: e4 ae     mov   a,$ae
1598: f0 08     beq   $15a2
159a: 8b ae     dec   $ae
159c: ba ac     movw  ya,$ac
159e: 7a aa     addw  ya,$aa
15a0: da aa     movw  $aa,ya
15a2: e4 bb     mov   a,$bb
15a4: f0 0f     beq   $15b5
15a6: 8b bb     dec   $bb
15a8: ba b5     movw  ya,$b5
15aa: 7a af     addw  ya,$af
15ac: 7e b0     cmp   y,$b0
15ae: da af     movw  $af,ya
15b0: f0 29     beq   $15db
15b2: 09 53 da  or    ($da),($53)
15b5: e4 bc     mov   a,$bc
15b7: f0 0f     beq   $15c8
15b9: 8b bc     dec   $bc
15bb: ba b7     movw  ya,$b7
15bd: 7a b1     addw  ya,$b1
15bf: 7e b2     cmp   y,$b2
15c1: da b1     movw  $b1,ya
15c3: f0 16     beq   $15db
15c5: 18 c0 da  or    $da,#$c0
15c8: e4 bd     mov   a,$bd
15ca: f0 0f     beq   $15db
15cc: 8b bd     dec   $bd
15ce: ba b9     movw  ya,$b9
15d0: 7a b3     addw  ya,$b3
15d2: 7e b4     cmp   y,$b4
15d4: da b3     movw  $b3,ya
15d6: f0 03     beq   $15db
15d8: 18 30 da  or    $da,#$30
15db: 6f        ret

15dc: dw $12e5
15de: dw $12e5
15e0: dw $1296
15e2: dw $1222
15e4: dw $12e5
15e6: dw $12e5
15e8: dw $12e5
15ea: dw $1307

15ec: dw $17e7  ; c4 - volume
15ee: dw $17f8  ; c5 - volume fade
15f0: dw $183e  ; c6 - panpot
15f2: dw $184e  ; c7 - panpot fade
15f4: dw $186e  ; c8 - portamento
15f6: dw $18f8  ; c9 - vibrato on
15f8: dw $198f  ; ca - vibrato off
15fa: dw $19b7  ; cb - tremolo on
15fc: dw $19f5  ; cc - tremolo off
15fe: dw $19fc  ; cd - panpot LFO on
1600: dw $1a52  ; ce - panpot LFO off
1602: dw $1ad5  ; cf - set noise frequency
1604: dw $1a9d  ; d0 - noise on
1606: dw $1ac5  ; d1 - noise off
1608: dw $1af5  ; d2 - pitchmod on
160a: dw $1b16  ; d3 - pitchmod off
160c: dw $1a79  ; d4 - echo on
160e: dw $1a8d  ; d5 - echo off
1610: dw $1a72  ; d6 - set octave
1612: dw $1a5e  ; d7 - increase octave
1614: dw $1a68  ; d8 - decrease octave
1616: dw $187d  ; d9 - transpose (absolute)
1618: dw $1879  ; da - transpose (relative)
161a: dw $1d53  ; db - tuning
161c: dw $1b30  ; dc - instrument
161e: dw $1b5d  ; dd - attack rate
1620: dw $1b8b  ; de - decay rate
1622: dw $1b9e  ; df - sustain level
1624: dw $1bb0  ; e0 - sustain rate
1626: dw $1bc0  ; e1 - default ADSR
1628: dw $1cc5  ; e2 - repeat start
162a: dw $1cf5  ; e3 - repeat end
162c: dw $1bd3  ; e4 - slur on
162e: dw $13de  ; e5 - nop (slur off)
1630: dw $1bfb  ; e6 - legato on
1632: dw $13de  ; e7 - nop (legato off)
1634: dw $1d50  ; e8 - force next note length
1636: dw $1c09  ; e9 - goto address in $3100+A*4
1638: dw $1c0d  ; ea - goto address in $3102+A*4
163a: dw $1999  ; eb
163c: dw $1d94  ; ec - end of track
163e: dw $1d94  ; ed - end of track (duplicated)
1640: dw $1e36  ; ee
1642: dw $1ec6  ; ef
1644: dw $17be  ; f0 - tempo
1646: dw $17c7  ; f1 - tempo fade
1648: dw $1819  ; f2 - echo volume
164a: dw $1824  ; f3 - echo volume fade
164c: dw $17df  ; f4 - expression
164e: dw $1c6a  ; f5 - conditional jump in repeat
1650: dw $1c4f  ; f6 - goto
1652: dw $1881  ; f7 - echo feedback
1654: dw $18a9  ; f8 - echo FIR
1656: dw $1d57  ; f9 - (related to vcmd fa)
1658: dw $1d5c  ; fa - CPU-controled branch
165a: dw $1b26  ; fb - rhythm kit on
165c: dw $1b2a  ; fc - rhythm kit off
165e: dw $1d94  ; fd - end of track (duplicated)
1660: dw $1d94  ; fe - end of track (duplicated)
1662: dw $1d94  ; ff - end of track (duplicated)

; vcmd length table
1664: db                 $01,$02,$01,$02,$02,$03,$00,$03,$00,$02,$00,$01
1670: db $00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$01,$01,$01,$01,$01,$01
1680: db $01,$00,$01,$00,$00,$00,$00,$00,$01,$01,$01,$01,$00,$00,$00,$00
1690: db $01,$02,$01,$02,$01,$03,$02,$01,$01,$01,$03,$00,$00,$00,$00,$00

16a0: dw                         $0000,$0000,$0000,$0000
16a8: dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
16b8: dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
16c8: dw $0000,$0000,$0000,$0000,$1be7,$0000,$0000,$0000
16d8: dw $0000,$0000,$0000,$1d2a,$1be7,$1be7,$1be7,$1be7
16e8: dw $0000,$1c3a,$1c3e,$0000,$0000,$0000,$0000,$0000
16f8: dw $0000,$0000,$0000,$0000,$0000,$1c9a,$1c5d,$0000
1708: dw $0000,$0000,$1d7f,$0000,$0000,$0000,$0000,$0000

1718: dw $0bbd,$0bc2,$13de,$13de,$0bbd,$0bc2,$13de,$13de
1728: dw $0d29,$0d33,$13de,$0d3d,$0de6,$0dfc,$0df1,$0e07

1738: dw $0c7f,$0c7f,$0000,$0000,$0c7f,$0c7f,$0000,$0000
1748: dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

1758: $0eb8,$0ec1,$0ef6,$0f29,$13de,$0f7c,$0f7f,$0fa7
1768: $13b7,$0fd9,$1009,$13de,$1039,$1040,$13de,$1105
1778: $106d,$1079,$109c,$1059,$1131,$114a,$139e,$13de
1788: $1138,$1141,$13de,$13de,$142f,$13f3,$119a,$13be

1798: db $4c,$2d,$3d,$6c,$5c,$0c,$1c,$4d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f
17ab: db $22,$8c,$8b,$8d,$23,$e6,$e7,$8a,$e8,$e9,$76,$66,$68,$6a,$6c,$6e,$70,$72,$74

; vcmd f0
17be: c4 47     mov   $47,a
17c0: e8 00     mov   a,#$00
17c2: c4 46     mov   $46,a
17c4: c4 4a     mov   $4a,a
17c6: 6f        ret

; vcmd f1
17c7: c4 4a     mov   $4a,a
17c9: c4 8f     mov   $8f,a
17cb: 3f f0 06  call  $06f0
17ce: eb 8f     mov   y,$8f
17d0: f0 ec     beq   $17be
17d2: 80        setc
17d3: a4 47     sbc   a,$47
17d5: f0 ed     beq   $17c4
17d7: 3f 5c 0f  call  $0f5c
17da: f8 a7     mov   x,$a7
17dc: da 4b     movw  $4b,ya
17de: 6f        ret

; vcmd f4
17df: 1c        asl   a
17e0: d5 20 f9  mov   $f920+x,a
17e3: 09 92 d9  or    ($d9),($92)
17e6: 6f        ret

; vcmd c4 - volume
17e7: 28 7f     and   a,#$7f
17e9: d5 41 f9  mov   $f941+x,a
17ec: e8 00     mov   a,#$00
17ee: d5 40 f9  mov   $f940+x,a
17f1: 09 92 d9  or    ($d9),($92)
17f4: d5 c0 f9  mov   $f9c0+x,a
17f7: 6f        ret

; vcmd c5 - volume fade
17f8: d5 c0 f9  mov   $f9c0+x,a
17fb: c4 8f     mov   $8f,a
17fd: 3f f0 06  call  $06f0
1800: 28 7f     and   a,#$7f
1802: eb 8f     mov   y,$8f
1804: f0 e1     beq   $17e7
1806: 80        setc
1807: b5 41 f9  sbc   a,$f941+x
180a: f0 e8     beq   $17f4
180c: 3f 5c 0f  call  $0f5c
180f: f8 a7     mov   x,$a7
1811: d5 60 f9  mov   $f960+x,a
1814: dd        mov   a,y
1815: d5 61 f9  mov   $f961+x,a
1818: 6f        ret

; vcmd f2
1819: 28 7f     and   a,#$7f
181b: c4 4f     mov   $4f,a
181d: e8 00     mov   a,#$00
181f: c4 4e     mov   $4e,a
1821: c4 52     mov   $52,a
1823: 6f        ret

; vcmd f3
1824: c4 52     mov   $52,a
1826: c4 8f     mov   $8f,a
1828: 3f f0 06  call  $06f0
182b: 28 7f     and   a,#$7f
182d: eb 8f     mov   y,$8f
182f: f0 e8     beq   $1819
1831: 80        setc
1832: a4 4f     sbc   a,$4f
1834: f0 eb     beq   $1821
1836: 3f 5c 0f  call  $0f5c
1839: f8 a7     mov   x,$a7
183b: da 50     movw  $50,ya
183d: 6f        ret

; vcmd c6 - panpot
183e: 1c        asl   a
183f: d5 81 f9  mov   $f981+x,a
1842: e8 00     mov   a,#$00
1844: d5 80 f9  mov   $f980+x,a
1847: 09 92 d9  or    ($d9),($92)
184a: d5 c1 f9  mov   $f9c1+x,a
184d: 6f        ret

; vcmd c7 - panpot fade
184e: d5 c1 f9  mov   $f9c1+x,a
1851: c4 8f     mov   $8f,a
1853: 3f f0 06  call  $06f0
1856: eb 8f     mov   y,$8f
1858: f0 e4     beq   $183e
185a: 1c        asl   a
185b: 80        setc
185c: b5 81 f9  sbc   a,$f981+x
185f: f0 e9     beq   $184a
1861: 3f 5c 0f  call  $0f5c
1864: f8 a7     mov   x,$a7
1866: d5 a0 f9  mov   $f9a0+x,a
1869: dd        mov   a,y
186a: d5 a1 f9  mov   $f9a1+x,a
186d: 6f        ret

; vcmd c8 - portamento
186e: bc        inc   a
186f: d5 60 fa  mov   $fa60+x,a
1872: 3f f0 06  call  $06f0
1875: d5 50 01  mov   $0150+x,a
1878: 6f        ret

; vcmd da - transpose (relative)
1879: 60        clrc
187a: 95 61 fa  adc   a,$fa61+x
; vcmd d9 - transpose (absolute)
187d: d5 61 fa  mov   $fa61+x,a
1880: 6f        ret

; vcmd f7
1881: e3 89 03  bbs7  $89,$1887
1884: e8 30     mov   a,#$30
1886: ec e8 00  mov   y,$00e8
1889: c4 78     mov   $78,a
188b: c4 8f     mov   $8f,a
188d: e4 a6     mov   a,$a6
188f: eb 78     mov   y,$78
1891: f0 13     beq   $18a6
1893: 48 80     eor   a,#$80
1895: ea 76 e0  not1  $0076,7
1898: 80        setc
1899: a4 76     sbc   a,$76
189b: ea 76 e0  not1  $0076,7
189e: 3f 5c 0f  call  $0f5c
18a1: f8 a7     mov   x,$a7
18a3: da 79     movw  $79,ya
18a5: 6f        ret

18a6: c4 76     mov   $76,a
18a8: 6f        ret

; vcmd f8
18a9: e3 89 03  bbs7  $89,$18af
18ac: e8 30     mov   a,#$30
18ae: ec e8 00  mov   y,$00e8
18b1: c4 77     mov   $77,a
18b3: c4 8f     mov   $8f,a
18b5: e4 a6     mov   a,$a6
18b7: 28 03     and   a,#$03
18b9: bc        inc   a
18ba: 1c        asl   a
18bb: 1c        asl   a
18bc: 1c        asl   a
18bd: fd        mov   y,a
18be: cd 10     mov   x,#$10
18c0: e4 77     mov   a,$77
18c2: f0 27     beq   $18eb
18c4: e8 00     mov   a,#$00
18c6: d4 63     mov   $63+x,a
18c8: f4 64     mov   a,$64+x
18ca: 48 80     eor   a,#$80
18cc: c4 9c     mov   $9c,a
18ce: f6 d7 1d  mov   a,$1dd7+y
18d1: 48 80     eor   a,#$80
18d3: 80        setc
18d4: a4 9c     sbc   a,$9c
18d6: 6d        push  y
18d7: 4d        push  x
18d8: 3f 5c 0f  call  $0f5c
18db: ce        pop   x
18dc: d5 fe 00  mov   $00fe+x,a
18df: dd        mov   a,y
18e0: d5 ff 00  mov   $00ff+x,a
18e3: ee        pop   y
18e4: dc        dec   y
18e5: 1d        dec   x
18e6: 1d        dec   x
18e7: d0 db     bne   $18c4
18e9: 2f 0a     bra   $18f5
18eb: f6 d7 1d  mov   a,$1dd7+y
18ee: d4 64     mov   $64+x,a
18f0: dc        dec   y
18f1: 1d        dec   x
18f2: 1d        dec   x
18f3: d0 f6     bne   $18eb
18f5: f8 a7     mov   x,$a7
18f7: 6f        ret

; vcmd c9 - vibrato on
18f8: c8 10     cmp   x,#$10
18fa: 90 08     bcc   $1904
18fc: 8d 00     mov   y,#$00
18fe: cd 0c     mov   x,#$0c
1900: 9e        div   ya,x
1901: f8 a7     mov   x,$a7
1903: dd        mov   a,y
1904: d5 10 01  mov   $0110+x,a
1907: 3f f0 06  call  $06f0
190a: d5 e0 f9  mov   $f9e0+x,a
190d: 3f f0 06  call  $06f0
1910: d5 51 01  mov   $0151+x,a
1913: 28 3f     and   a,#$3f
1915: 80        setc
1916: 3c        rol   a
1917: 78 c0 a6  cmp   $a6,#$c0
191a: b0 07     bcs   $1923
191c: 78 80 a6  cmp   $a6,#$80
191f: 90 02     bcc   $1923
1921: 48 ff     eor   a,#$ff
1923: d5 00 fb  mov   $fb00+x,a
1926: c8 10     cmp   x,#$10
1928: b0 03     bcs   $192d
192a: e4 24     mov   a,$24
192c: ec e4 25  mov   y,$25e4
192f: 24 92     and   a,$92
1931: f0 0a     beq   $193d
1933: f5 e0 fb  mov   a,$fbe0+x
1936: c4 be     mov   $be,a
1938: f5 e1 fb  mov   a,$fbe1+x
193b: c4 bf     mov   $bf,a
193d: c8 10     cmp   x,#$10
193f: b0 04     bcs   $1945
1941: 8d 00     mov   y,#$00
1943: 2f 04     bra   $1949
1945: f5 10 01  mov   a,$0110+x
1948: fd        mov   y,a
1949: f6 cc 1d  mov   a,$1dcc+y
194c: fd        mov   y,a
194d: d0 04     bne   $1953
194f: ba be     movw  ya,$be
1951: 2f 11     bra   $1964
1953: cb 9e     mov   $9e,y
1955: e4 bf     mov   a,$bf
1957: cf        mul   ya
1958: da 9c     movw  $9c,ya
195a: e4 be     mov   a,$be
195c: eb 9e     mov   y,$9e
195e: cf        mul   ya
195f: dd        mov   a,y
1960: 8d 00     mov   y,#$00
1962: 7a 9c     addw  ya,$9c
1964: d5 00 fa  mov   $fa00+x,a
1967: dd        mov   a,y
1968: d5 01 fa  mov   $fa01+x,a
196b: f5 21 f9  mov   a,$f921+x
196e: 28 70     and   a,#$70
1970: c4 a6     mov   $a6,a
1972: c8 10     cmp   x,#$10
1974: 90 04     bcc   $197a
1976: e8 00     mov   a,#$00
1978: 2f 03     bra   $197d
197a: f5 10 01  mov   a,$0110+x
197d: d5 11 01  mov   $0111+x,a
1980: f0 02     beq   $1984
1982: e8 07     mov   a,#$07
1984: 04 a6     or    a,$a6
1986: d5 21 f9  mov   $f921+x,a
1989: e8 01     mov   a,#$01
198b: d5 e1 f9  mov   $f9e1+x,a
198e: 6f        ret

; vcmd c9 - vibrato off
198f: d5 51 01  mov   $0151+x,a
1992: d5 c0 fb  mov   $fbc0+x,a
1995: d5 c1 fb  mov   $fbc1+x,a
1998: 6f        ret

; vcmd eb
1999: fd        mov   y,a
199a: f5 51 01  mov   a,$0151+x
199d: f0 17     beq   $19b6
199f: dd        mov   a,y
19a0: d5 51 01  mov   $0151+x,a
19a3: 28 3f     and   a,#$3f
19a5: 80        setc
19a6: 3c        rol   a
19a7: 78 c0 a6  cmp   $a6,#$c0
19aa: b0 07     bcs   $19b3
19ac: 78 80 a6  cmp   $a6,#$80
19af: 90 02     bcc   $19b3
19b1: 48 ff     eor   a,#$ff
19b3: d5 00 fb  mov   $fb00+x,a
19b6: 6f        ret

; vcmd cb - tremolo on
19b7: d5 30 01  mov   $0130+x,a
19ba: 3f f0 06  call  $06f0
19bd: d5 20 fa  mov   $fa20+x,a
19c0: 3f f0 06  call  $06f0
19c3: d5 70 01  mov   $0170+x,a
19c6: 28 3f     and   a,#$3f
19c8: 80        setc
19c9: 3c        rol   a
19ca: 78 c0 a6  cmp   $a6,#$c0
19cd: b0 07     bcs   $19d6
19cf: 78 80 a6  cmp   $a6,#$80
19d2: 90 02     bcc   $19d6
19d4: 48 ff     eor   a,#$ff
19d6: d5 40 fb  mov   $fb40+x,a
19d9: e8 01     mov   a,#$01
19db: d5 21 fa  mov   $fa21+x,a
19de: f5 21 f9  mov   a,$f921+x
19e1: 28 07     and   a,#$07
19e3: c4 a6     mov   $a6,a
19e5: f5 30 01  mov   a,$0130+x
19e8: d5 31 01  mov   $0131+x,a
19eb: f0 02     beq   $19ef
19ed: e8 70     mov   a,#$70
19ef: 04 a6     or    a,$a6
19f1: d5 21 f9  mov   $f921+x,a
19f4: 6f        ret

; vcmd cc - tremolo off
19f5: d5 70 01  mov   $0170+x,a
19f8: d5 60 fb  mov   $fb60+x,a
19fb: 6f        ret

; vcmd cd - panpot LFO on
19fc: 60        clrc
19fd: bc        inc   a
19fe: f0 08     beq   $1a08
1a00: 28 fe     and   a,#$fe
1a02: d0 05     bne   $1a09
1a04: e8 02     mov   a,#$02
1a06: 2f 01     bra   $1a09
1a08: 80        setc
1a09: d5 40 fa  mov   $fa40+x,a
1a0c: 7c        ror   a
1a0d: d5 41 fa  mov   $fa41+x,a
1a10: fd        mov   y,a
1a11: 3f f0 06  call  $06f0
1a14: 1c        asl   a
1a15: e4 a6     mov   a,$a6
1a17: 28 7f     and   a,#$7f
1a19: 90 02     bcc   $1a1d
1a1b: 48 7f     eor   a,#$7f
1a1d: c4 9c     mov   $9c,a
1a1f: dd        mov   a,y
1a20: 10 05     bpl   $1a27
1a22: 8f 00 9d  mov   $9d,#$00
1a25: 2f 13     bra   $1a3a
1a27: 5d        mov   x,a
1a28: 8d 00     mov   y,#$00
1a2a: e4 9c     mov   a,$9c
1a2c: 9e        div   ya,x
1a2d: c4 9d     mov   $9d,a
1a2f: e8 00     mov   a,#$00
1a31: 9e        div   ya,x
1a32: c4 9c     mov   $9c,a
1a34: ba 9c     movw  ya,$9c
1a36: d0 02     bne   $1a3a
1a38: ab 9c     inc   $9c
1a3a: 90 08     bcc   $1a44
1a3c: 58 ff 9c  eor   $9c,#$ff
1a3f: 58 ff 9d  eor   $9d,#$ff
1a42: 3a 9c     incw  $9c
1a44: f8 a7     mov   x,$a7
1a46: e4 9c     mov   a,$9c
1a48: d5 e0 fa  mov   $fae0+x,a
1a4b: e4 9d     mov   a,$9d
1a4d: d5 e1 fa  mov   $fae1+x,a
1a50: e4 a6     mov   a,$a6
; vcmd ce - panpot LFO off
1a52: d5 71 01  mov   $0171+x,a
1a55: e8 00     mov   a,#$00
1a57: d5 80 fb  mov   $fb80+x,a
1a5a: d5 81 fb  mov   $fb81+x,a
1a5d: 6f        ret

; vcmd d7 - increase octave
1a5e: f5 00 f9  mov   a,$f900+x
1a61: 60        clrc
1a62: 88 0c     adc   a,#$0c
1a64: d5 00 f9  mov   $f900+x,a
1a67: 6f        ret

; vcmd d8 - decrease octave
1a68: f5 00 f9  mov   a,$f900+x
1a6b: 80        setc
1a6c: a8 0c     sbc   a,#$0c
1a6e: d5 00 f9  mov   $f900+x,a
1a71: 6f        ret

; vcmd d6 - set octave
1a72: 8d 0c     mov   y,#$0c
1a74: cf        mul   ya
1a75: d5 00 f9  mov   $f900+x,a
1a78: 6f        ret

; vcmd d4 - echo on
1a79: c8 10     cmp   x,#$10
1a7b: b0 05     bcs   $1a82
1a7d: 09 92 54  or    ($54),($92)
1a80: 2f 03     bra   $1a85
1a82: 09 92 55  or    ($55),($92)
1a85: ba 54     movw  ya,$54
1a87: 3f 45 07  call  $0745
1a8a: c4 8a     mov   $8a,a
1a8c: 6f        ret

; vcmd d5 - echo off
1a8d: e4 92     mov   a,$92
1a8f: c8 10     cmp   x,#$10
1a91: b0 05     bcs   $1a98
1a93: 4e 54 00  tclr1 $0054
1a96: 2f ed     bra   $1a85
1a98: 4e 55 00  tclr1 $0055
1a9b: 2f e8     bra   $1a85

; vcmd d0 - noise on
1a9d: c8 10     cmp   x,#$10
1a9f: b0 05     bcs   $1aa6
1aa1: 09 92 56  or    ($56),($92)
1aa4: 2f 03     bra   $1aa9
1aa6: 09 92 57  or    ($57),($92)
1aa9: e4 8d     mov   a,$8d
1aab: 28 e0     and   a,#$e0
1aad: 2d        push  a
1aae: e4 86     mov   a,$86
1ab0: 24 57     and   a,$57
1ab2: ae        pop   a
1ab3: d0 04     bne   $1ab9
1ab5: 04 62     or    a,$62
1ab7: 2f 02     bra   $1abb
1ab9: 04 63     or    a,$63
1abb: c4 8d     mov   $8d,a
1abd: ba 56     movw  ya,$56
1abf: 3f 45 07  call  $0745
1ac2: c4 8b     mov   $8b,a
1ac4: 6f        ret

; vcmd d1 - noise off
1ac5: e4 92     mov   a,$92
1ac7: c8 10     cmp   x,#$10
1ac9: b0 05     bcs   $1ad0
1acb: 4e 56 00  tclr1 $0056
1ace: 2f d9     bra   $1aa9
1ad0: 4e 57 00  tclr1 $0057
1ad3: 2f d4     bra   $1aa9

; vcmd cf - set noise frequency
1ad5: 28 1f     and   a,#$1f
1ad7: c8 10     cmp   x,#$10
1ad9: b0 0d     bcs   $1ae8
1adb: 64 a6     cmp   a,$a6
1add: f0 05     beq   $1ae4
1adf: 60        clrc
1ae0: 84 62     adc   a,$62
1ae2: 28 1f     and   a,#$1f
1ae4: c4 62     mov   $62,a
1ae6: 2f c1     bra   $1aa9
1ae8: 64 a6     cmp   a,$a6
1aea: f0 05     beq   $1af1
1aec: 60        clrc
1aed: 84 63     adc   a,$63
1aef: 28 1f     and   a,#$1f
1af1: c4 63     mov   $63,a
1af3: 2f b4     bra   $1aa9

; vcmd d2 - pitchmod on
1af5: c8 10     cmp   x,#$10
1af7: b0 05     bcs   $1afe
1af9: 09 92 58  or    ($58),($92)
1afc: 2f 10     bra   $1b0e
1afe: e4 92     mov   a,$92
1b00: 28 55     and   a,#$55
1b02: d0 0a     bne   $1b0e
1b04: e4 92     mov   a,$92
1b06: 5c        lsr   a
1b07: 24 86     and   a,$86
1b09: f0 03     beq   $1b0e
1b0b: 09 92 59  or    ($59),($92)
1b0e: ba 58     movw  ya,$58
1b10: 3f 45 07  call  $0745
1b13: c4 8c     mov   $8c,a
1b15: 6f        ret

; vcmd d3 - pitchmod off
1b16: e4 92     mov   a,$92
1b18: c8 10     cmp   x,#$10
1b1a: b0 05     bcs   $1b21
1b1c: 4e 58 00  tclr1 $0058
1b1f: 2f ed     bra   $1b0e
1b21: 4e 59 00  tclr1 $0059
1b24: 2f e8     bra   $1b0e

; vcmd fb
1b26: 09 92 7c  or    ($7c),($92)
1b29: 6f        ret

; vcmd fc
1b2a: e4 92     mov   a,$92
1b2c: 4e 7c 00  tclr1 $007c
1b2f: 6f        ret

; vcmd dc - instrument
1b30: d5 01 f9  mov   $f901+x,a
1b33: 1c        asl   a
1b34: fd        mov   y,a
1b35: f6 00 21  mov   a,$2100+y
1b38: d5 80 fa  mov   $fa80+x,a
1b3b: f6 01 21  mov   a,$2101+y
1b3e: d5 81 fa  mov   $fa81+x,a
1b41: f6 80 21  mov   a,$2180+y
1b44: d5 00 fc  mov   $fc00+x,a
1b47: f6 81 21  mov   a,$2181+y
1b4a: d5 01 fc  mov   $fc01+x,a
1b4d: 6f        ret

1b4e: f5 01 f9  mov   a,$f901+x
1b51: fd        mov   y,a
1b52: 7d        mov   a,x
1b53: 9f        xcn   a
1b54: 5c        lsr   a
1b55: 08 04     or    a,#$04
1b57: c4 f2     mov   $f2,a
1b59: cb f3     mov   $f3,y
1b5b: 2f 10     bra   $1b6d

; vcmd dd - attack rate
1b5d: 28 0f     and   a,#$0f
1b5f: c4 a6     mov   $a6,a
1b61: f5 00 fc  mov   a,$fc00+x
1b64: 28 70     and   a,#$70
1b66: 04 a6     or    a,$a6
1b68: 08 80     or    a,#$80
1b6a: d5 00 fc  mov   $fc00+x,a
1b6d: c8 10     cmp   x,#$10
1b6f: b0 07     bcs   $1b78
1b71: e4 86     mov   a,$86
1b73: 24 92     and   a,$92
1b75: f0 01     beq   $1b78
1b77: 6f        ret

1b78: 7d        mov   a,x
1b79: 9f        xcn   a
1b7a: 5c        lsr   a
1b7b: 08 05     or    a,#$05
1b7d: fd        mov   y,a
1b7e: f5 00 fc  mov   a,$fc00+x
1b81: 3f 40 07  call  $0740
1b84: fc        inc   y
1b85: f5 01 fc  mov   a,$fc01+x
1b88: 5f 40 07  jmp   $0740

; vcmd de - decay rate
1b8b: 28 07     and   a,#$07
1b8d: 9f        xcn   a
1b8e: c4 a6     mov   $a6,a
1b90: f5 00 fc  mov   a,$fc00+x
1b93: 28 0f     and   a,#$0f
1b95: 04 a6     or    a,$a6
1b97: 08 80     or    a,#$80
1b99: d5 00 fc  mov   $fc00+x,a
1b9c: 2f cf     bra   $1b6d

; vcmd df - sustain level
1b9e: 28 07     and   a,#$07
1ba0: 9f        xcn   a
1ba1: 1c        asl   a
1ba2: c4 a6     mov   $a6,a
1ba4: f5 01 fc  mov   a,$fc01+x
1ba7: 28 1f     and   a,#$1f
1ba9: 04 a6     or    a,$a6
1bab: d5 01 fc  mov   $fc01+x,a
1bae: 2f bd     bra   $1b6d

; vcmd e0 - sustain rate
1bb0: 28 1f     and   a,#$1f
1bb2: c4 a6     mov   $a6,a
1bb4: f5 01 fc  mov   a,$fc01+x
1bb7: 28 e0     and   a,#$e0
1bb9: 04 a6     or    a,$a6
1bbb: d5 01 fc  mov   $fc01+x,a
1bbe: 2f ad     bra   $1b6d

; vcmd e1 - default ADSR
1bc0: f5 01 f9  mov   a,$f901+x
1bc3: 1c        asl   a
1bc4: fd        mov   y,a
1bc5: f6 80 21  mov   a,$2180+y
1bc8: d5 00 fc  mov   $fc00+x,a
1bcb: f6 81 21  mov   a,$2181+y
1bce: d5 01 fc  mov   $fc01+x,a
1bd1: 2f 9a     bra   $1b6d

; vcmd e4 - slur on
1bd3: e4 92     mov   a,$92
1bd5: c8 10     cmp   x,#$10
1bd7: b0 07     bcs   $1be0
1bd9: 0e 5c 00  tset1 $005c
1bdc: 4e 5e 00  tclr1 $005e
1bdf: 6f        ret

1be0: 0e 5d 00  tset1 $005d
1be3: 4e 5f 00  tclr1 $005f
1be6: 6f        ret

1be7: e4 92     mov   a,$92
1be9: c8 10     cmp   x,#$10
1beb: b0 07     bcs   $1bf4
1bed: 4e 5c 00  tclr1 $005c
1bf0: 4e 60 00  tclr1 $0060
1bf3: 6f        ret

1bf4: 4e 5d 00  tclr1 $005d
1bf7: 4e 61 00  tclr1 $0061
1bfa: 6f        ret

; vcmd e6 - legato on
1bfb: e4 92     mov   a,$92
1bfd: c8 10     cmp   x,#$10
1bff: b0 04     bcs   $1c05
1c01: 0e 60 00  tset1 $0060
1c04: 6f        ret

1c05: 0e 61 00  tset1 $0061
1c08: 6f        ret

; vcmd e9 - goto address in $3100+A*4
1c09: 8d 00     mov   y,#$00
1c0b: 2f 02     bra   $1c0f
; vcmd ea - goto address in $3102+A*4
1c0d: 8d 02     mov   y,#$02
1c0f: 3f 1d 1c  call  $1c1d
1c12: d4 02     mov   $02+x,a
1c14: db 03     mov   $03+x,y
1c16: dd        mov   a,y
1c17: d0 03     bne   $1c1c
1c19: 5f 94 1d  jmp   $1d94

1c1c: 6f        ret

1c1d: 8f 00 97  mov   $97,#$00
1c20: 1c        asl   a
1c21: 2b 97     rol   $97
1c23: 1c        asl   a
1c24: 2b 97     rol   $97
1c26: c4 96     mov   $96,a
1c28: dd        mov   a,y
1c29: 8d 31     mov   y,#$31
1c2b: 7a 96     addw  ya,$96
1c2d: da 96     movw  $96,ya
1c2f: 8d 00     mov   y,#$00
1c31: f7 96     mov   a,($96)+y
1c33: 2d        push  a
1c34: fc        inc   y
1c35: f7 96     mov   a,($96)+y
1c37: fd        mov   y,a
1c38: ae        pop   a
1c39: 6f        ret

1c3a: f7 94     mov   a,($94)+y
1c3c: 2f 04     bra   $1c42
1c3e: f7 94     mov   a,($94)+y
1c40: 8d 02     mov   y,#$02
1c42: 3f 1d 1c  call  $1c1d
1c45: da 94     movw  $94,ya
1c47: dd        mov   a,y
1c48: d0 04     bne   $1c4e
1c4a: ae        pop   a
1c4b: ae        pop   a
1c4c: e8 ec     mov   a,#$ec
1c4e: 6f        ret

; vcmd f6
1c4f: fd        mov   y,a
1c50: 3f f0 06  call  $06f0
1c53: dd        mov   a,y
1c54: eb a6     mov   y,$a6
1c56: 7a 00     addw  ya,$00
1c58: d4 02     mov   $02+x,a
1c5a: db 03     mov   $03+x,y
1c5c: 6f        ret

1c5d: f7 94     mov   a,($94)+y
1c5f: 2d        push  a
1c60: fc        inc   y
1c61: f7 94     mov   a,($94)+y
1c63: fd        mov   y,a
1c64: ae        pop   a
1c65: 7a 00     addw  ya,$00
1c67: da 94     movw  $94,ya
1c69: 6f        ret

; vcmd f5
1c6a: c4 9e     mov   $9e,a
1c6c: 3f f0 06  call  $06f0
1c6f: c4 9c     mov   $9c,a
1c71: 3f f0 06  call  $06f0
1c74: c4 9d     mov   $9d,a
1c76: fb 27     mov   y,$27+x
1c78: f6 20 fc  mov   a,$fc20+y
1c7b: 2e 9e 1b  cbne  $9e,$1c99
1c7e: f6 40 fc  mov   a,$fc40+y
1c81: 9c        dec   a
1c82: d0 0d     bne   $1c91
1c84: 7d        mov   a,x
1c85: 1c        asl   a
1c86: 9c        dec   a
1c87: 9b 27     dec   $27+x
1c89: de 27 05  cbne  $27+x,$1c91
1c8c: 60        clrc
1c8d: 88 04     adc   a,#$04
1c8f: d4 27     mov   $27+x,a
1c91: ba 9c     movw  ya,$9c
1c93: 7a 00     addw  ya,$00
1c95: d4 02     mov   $02+x,a
1c97: db 03     mov   $03+x,y
1c99: 6f        ret

1c9a: eb c3     mov   y,$c3
1c9c: f6 20 fc  mov   a,$fc20+y
1c9f: 8d 00     mov   y,#$00
1ca1: 77 94     cmp   a,($94)+y
1ca3: d0 19     bne   $1cbe
1ca5: eb c3     mov   y,$c3
1ca7: f6 40 fc  mov   a,$fc40+y
1caa: 9c        dec   a
1cab: d0 0c     bne   $1cb9
1cad: 7d        mov   a,x
1cae: 1c        asl   a
1caf: 9c        dec   a
1cb0: 8b c3     dec   $c3
1cb2: 2e c3 04  cbne  $c3,$1cb9
1cb5: 60        clrc
1cb6: 98 04 c3  adc   $c3,#$04
1cb9: 8d 01     mov   y,#$01
1cbb: 5f 5d 1c  jmp   $1c5d

1cbe: 3a 94     incw  $94
1cc0: 3a 94     incw  $94
1cc2: 3a 94     incw  $94
1cc4: 6f        ret

; vcmd e2 - repeat start
1cc5: 7d        mov   a,x
1cc6: 1c        asl   a
1cc7: 60        clrc
1cc8: 88 04     adc   a,#$04
1cca: bb 27     inc   $27+x
1ccc: de 27 05  cbne  $27+x,$1cd4
1ccf: 80        setc
1cd0: a8 04     sbc   a,#$04
1cd2: d4 27     mov   $27+x,a
1cd4: fb 27     mov   y,$27+x
1cd6: e4 a6     mov   a,$a6
1cd8: f0 01     beq   $1cdb
1cda: bc        inc   a
1cdb: d6 40 fc  mov   $fc40+y,a
1cde: c8 10     cmp   x,#$10
1ce0: b0 05     bcs   $1ce7
1ce2: e8 01     mov   a,#$01
1ce4: d6 20 fc  mov   $fc20+y,a
1ce7: dd        mov   a,y
1ce8: 1c        asl   a
1ce9: fd        mov   y,a
1cea: f4 02     mov   a,$02+x
1cec: d6 80 fc  mov   $fc80+y,a
1cef: f4 03     mov   a,$03+x
1cf1: d6 81 fc  mov   $fc81+y,a
1cf4: 6f        ret

; vcmd e3 - repeat end
1cf5: fb 27     mov   y,$27+x
1cf7: c8 10     cmp   x,#$10
1cf9: b0 07     bcs   $1d02
1cfb: f6 20 fc  mov   a,$fc20+y
1cfe: bc        inc   a
1cff: d6 20 fc  mov   $fc20+y,a
1d02: f6 40 fc  mov   a,$fc40+y
1d05: f0 15     beq   $1d1c
1d07: 9c        dec   a
1d08: d0 0f     bne   $1d19
1d0a: 7d        mov   a,x
1d0b: 1c        asl   a
1d0c: 9c        dec   a
1d0d: 9b 27     dec   $27+x
1d0f: de 27 17  cbne  $27+x,$1d29
1d12: 60        clrc
1d13: 88 04     adc   a,#$04
1d15: d4 27     mov   $27+x,a
1d17: 2f 10     bra   $1d29
1d19: d6 40 fc  mov   $fc40+y,a
1d1c: dd        mov   a,y
1d1d: 1c        asl   a
1d1e: fd        mov   y,a
1d1f: f6 80 fc  mov   a,$fc80+y
1d22: d4 02     mov   $02+x,a
1d24: f6 81 fc  mov   a,$fc81+y
1d27: d4 03     mov   $03+x,a
1d29: 6f        ret

1d2a: eb c3     mov   y,$c3
1d2c: f6 40 fc  mov   a,$fc40+y
1d2f: f0 11     beq   $1d42
1d31: 9c        dec   a
1d32: d0 0e     bne   $1d42
1d34: 7d        mov   a,x
1d35: 1c        asl   a
1d36: 9c        dec   a
1d37: 8b c3     dec   $c3
1d39: 2e c3 13  cbne  $c3,$1d4f
1d3c: 60        clrc
1d3d: 98 04 c3  adc   $c3,#$04
1d40: 2f 0d     bra   $1d4f
1d42: dd        mov   a,y
1d43: 1c        asl   a
1d44: fd        mov   y,a
1d45: f6 80 fc  mov   a,$fc80+y
1d48: c4 94     mov   $94,a
1d4a: f6 81 fc  mov   a,$fc81+y
1d4d: c4 95     mov   $95,a
1d4f: 6f        ret

; vcmd e8 - force next note length
1d50: d4 26     mov   $26+x,a
1d52: 6f        ret

; vcmd db - tuning
1d53: d5 a0 fa  mov   $faa0+x,a
1d56: 6f        ret

; vcmd f9
1d57: 28 0f     and   a,#$0f
1d59: c4 7b     mov   $7b,a
1d5b: 6f        ret

; vcmd fa
1d5c: 28 0f     and   a,#$0f
1d5e: c4 a6     mov   $a6,a
1d60: 64 dc     cmp   a,$dc
1d62: 90 02     bcc   $1d66
1d64: c4 dc     mov   $dc,a
1d66: e4 db     mov   a,$db
1d68: 64 a6     cmp   a,$a6
1d6a: b0 0d     bcs   $1d79
1d6c: bb 02     inc   $02+x
1d6e: d0 02     bne   $1d72
1d70: bb 03     inc   $03+x
1d72: bb 02     inc   $02+x
1d74: d0 02     bne   $1d78
1d76: bb 03     inc   $03+x
1d78: 6f        ret

1d79: 3f f0 06  call  $06f0
1d7c: 5f 4f 1c  jmp   $1c4f

1d7f: f7 94     mov   a,($94)+y
1d81: c4 a6     mov   $a6,a
1d83: e4 db     mov   a,$db
1d85: 64 a6     cmp   a,$a6
1d87: b0 07     bcs   $1d90
1d89: 3a 94     incw  $94
1d8b: 3a 94     incw  $94
1d8d: 3a 94     incw  $94
1d8f: 6f        ret

1d90: fc        inc   y
1d91: 5f 5d 1c  jmp   $1c5d

; vcmd ec,ed,fd-ff
1d94: ae        pop   a
1d95: ae        pop   a
1d96: 62 89     set3  $89
1d98: e4 92     mov   a,$92
1d9a: c8 10     cmp   x,#$10
1d9c: b0 05     bcs   $1da3
1d9e: 4e 53 00  tclr1 $0053
1da1: 2f 06     bra   $1da9
1da3: 4e 86 00  tclr1 $0086
1da6: 4e 5e 00  tclr1 $005e
1da9: 3f c5 1a  call  $1ac5
1dac: 3f 16 1b  call  $1b16
1daf: 5f 8d 1a  jmp   $1a8d

1db2: dw $0879
1db4: dw $08fa
1db6: dw $0983
1db8: dw $0a14
1dba: dw $0aad
1dbc: dw $0b50
1dbe: dw $0bfc
1dc0: dw $0cb2
1dc2: dw $0d74
1dc4: dw $0e41
1dc6: dw $0f1a
1dc8: dw $1000
1dc9: dw $10f3
1dcb: dw $1f0f

1dcd: db $30,$42,$55,$6a,$7f,$96,$ae,$c8,$e3,$00

1dd8: db $7f,$00,$00,$00,$00,$00,$00,$00
1de0: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1de8: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1df0: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

1df8: db $c0,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03

1e06: db $ec,$ee,$ef
1e09: db $02,$00,$00,$00,$00,$00,$00,$00,$00
1e12: db $c2,$77,$77,$77,$77,$00,$00,$00,$00
1e1b: db $c2,$00,$00,$00,$00,$00,$00,$00,$00
1e24: db $c2,$77,$77,$77,$77,$77,$77,$77,$77
1e2d: db $c3,$77,$77,$77,$77,$77,$77,$77,$77

; vcmd ee
1e36: 7d        mov   a,x
1e37: 9f        xcn   a
1e38: 5c        lsr   a
1e39: c4 93     mov   $93,a
1e3b: e5 00 ff  mov   a,$ff00
1e3e: 3f 30 1b  call  $1b30
1e41: 3f 4e 1b  call  $1b4e
1e44: e8 00     mov   a,#$00
1e46: d5 a0 fa  mov   $faa0+x,a
1e49: e5 01 ff  mov   a,$ff01
1e4c: 80        setc
1e4d: a8 0a     sbc   a,#$0a
1e4f: 3f 58 06  call  $0658
1e52: e4 93     mov   a,$93
1e54: 08 02     or    a,#$02
1e56: fd        mov   y,a
1e57: e4 be     mov   a,$be
1e59: 3f 40 07  call  $0740
1e5c: e4 bf     mov   a,$bf
1e5e: fc        inc   y
1e5f: 3f 40 07  call  $0740
1e62: fc        inc   y
1e63: fc        inc   y
1e64: e5 e0 21  mov   a,$21e0
1e67: 3f 40 07  call  $0740
1e6a: e5 e1 21  mov   a,$21e1
1e6d: fc        inc   y
1e6e: 3f 40 07  call  $0740
1e71: e5 02 ff  mov   a,$ff02
1e74: ec 03 ff  mov   y,$ff03
1e77: da 9c     movw  $9c,ya
1e79: ad 80     cmp   y,#$80
1e7b: b0 03     bcs   $1e80
1e7d: cf        mul   ya
1e7e: dd        mov   a,y
1e7f: 8d 5c     mov   y,#$5c
1e81: eb 93     mov   y,$93
1e83: fc        inc   y
1e84: 3f 40 07  call  $0740
1e87: e4 9d     mov   a,$9d
1e89: 48 ff     eor   a,#$ff
1e8b: fd        mov   y,a
1e8c: e4 9c     mov   a,$9c
1e8e: ad 80     cmp   y,#$80
1e90: b0 03     bcs   $1e95
1e92: cf        mul   ya
1e93: dd        mov   a,y
1e94: 8d 5c     mov   y,#$5c
1e96: eb 93     mov   y,$93
1e98: 3f 40 07  call  $0740
1e9b: e8 08     mov   a,#$08
1e9d: ad 30     cmp   y,#$30
1e9f: f0 01     beq   $1ea2
1ea1: 5c        lsr   a
1ea2: 4e 8a 00  tclr1 $008a
1ea5: 4e 8b 00  tclr1 $008b
1ea8: 4e 8c 00  tclr1 $008c
1eab: ec 04 ff  mov   y,$ff04
1eae: f0 06     beq   $1eb6
1eb0: 0e 55 00  tset1 $0055
1eb3: 0e 8a 00  tset1 $008a
1eb6: 0e 87 00  tset1 $0087
1eb9: 4e 86 00  tclr1 $0086
1ebc: 8d 4c     mov   y,#$4c
1ebe: 3f 40 07  call  $0740
1ec1: ae        pop   a
1ec2: ae        pop   a
1ec3: 62 89     set3  $89
1ec5: 6f        ret

; vcmd ef
1ec6: 7d        mov   a,x
1ec7: 9f        xcn   a
1ec8: 5c        lsr   a
1ec9: c4 93     mov   $93,a
1ecb: e5 08 ff  mov   a,$ff08
1ece: 3f 30 1b  call  $1b30
1ed1: 3f 4e 1b  call  $1b4e
1ed4: e8 00     mov   a,#$00
1ed6: d5 a0 fa  mov   $faa0+x,a
1ed9: e5 09 ff  mov   a,$ff09
1edc: 80        setc
1edd: a8 0a     sbc   a,#$0a
1edf: 3f 58 06  call  $0658
1ee2: e4 93     mov   a,$93
1ee4: 08 02     or    a,#$02
1ee6: fd        mov   y,a
1ee7: e4 be     mov   a,$be
1ee9: 3f 40 07  call  $0740
1eec: e4 bf     mov   a,$bf
1eee: fc        inc   y
1eef: 3f 40 07  call  $0740
1ef2: fc        inc   y
1ef3: fc        inc   y
1ef4: e5 e0 21  mov   a,$21e0
1ef7: 3f 40 07  call  $0740
1efa: e5 e1 21  mov   a,$21e1
1efd: fc        inc   y
1efe: 3f 40 07  call  $0740
1f01: e5 0a ff  mov   a,$ff0a
1f04: ec 0b ff  mov   y,$ff0b
1f07: da 9c     movw  $9c,ya
1f09: ad 80     cmp   y,#$80
1f0b: b0 03     bcs   $1f10
1f0d: cf        mul   ya
1f0e: dd        mov   a,y
1f0f: 8d 5c     mov   y,#$5c
1f11: eb 93     mov   y,$93
1f13: fc        inc   y
1f14: 3f 40 07  call  $0740
1f17: e4 9d     mov   a,$9d
1f19: 48 ff     eor   a,#$ff
1f1b: fd        mov   y,a
1f1c: e4 9c     mov   a,$9c
1f1e: ad 80     cmp   y,#$80
1f20: b0 03     bcs   $1f25
1f22: cf        mul   ya
1f23: dd        mov   a,y
1f24: 8d 5c     mov   y,#$5c
1f26: eb 93     mov   y,$93
1f28: 3f 40 07  call  $0740
1f2b: e8 08     mov   a,#$08
1f2d: ad 30     cmp   y,#$30
1f2f: f0 01     beq   $1f32
1f31: 5c        lsr   a
1f32: 4e 8a 00  tclr1 $008a
1f35: 4e 8b 00  tclr1 $008b
1f38: 4e 8c 00  tclr1 $008c
1f3b: ec 0c ff  mov   y,$ff0c
1f3e: f0 06     beq   $1f46
1f40: 0e 55 00  tset1 $0055
1f43: 0e 8a 00  tset1 $008a
1f46: 0e 87 00  tset1 $0087
1f49: 4e 86 00  tclr1 $0086
1f4c: 8d 4c     mov   y,#$4c
1f4e: 3f 40 07  call  $0740
1f51: ae        pop   a
1f52: ae        pop   a
1f53: 62 89     set3  $89
1f55: 6f        ret

1f56: 03 88 54  bbs0  $88,$1fad
1f59: 33 88 51  bbc1  $88,$1fad
1f5c: ba ea     movw  ya,$ea
1f5e: 7a ec     addw  ya,$ec
1f60: 7e eb     cmp   y,$eb
1f62: da ea     movw  $ea,ya
1f64: f0 38     beq   $1f9e
1f66: dd        mov   a,y
1f67: c4 9c     mov   $9c,a
1f69: 8d 40     mov   y,#$40
1f6b: cf        mul   ya
1f6c: dd        mov   a,y
1f6d: 1c        asl   a
1f6e: c4 9d     mov   $9d,a
1f70: 60        clrc
1f71: 88 20     adc   a,#$20
1f73: c4 e7     mov   $e7,a
1f75: e8 60     mov   a,#$60
1f77: 80        setc
1f78: a4 9d     sbc   a,$9d
1f7a: 48 ff     eor   a,#$ff
1f7c: bc        inc   a
1f7d: c4 e6     mov   $e6,a
1f7f: e4 4f     mov   a,$4f
1f81: c4 9d     mov   $9d,a
1f83: 4b 9d     lsr   $9d
1f85: 1c        asl   a
1f86: eb 9c     mov   y,$9c
1f88: cf        mul   ya
1f89: dd        mov   a,y
1f8a: c4 9e     mov   $9e,a
1f8c: 60        clrc
1f8d: 84 9d     adc   a,$9d
1f8f: c4 e8     mov   $e8,a
1f91: e4 4f     mov   a,$4f
1f93: 60        clrc
1f94: 84 9d     adc   a,$9d
1f96: 80        setc
1f97: a4 9e     sbc   a,$9e
1f99: 48 ff     eor   a,#$ff
1f9b: bc        inc   a
1f9c: c4 e9     mov   $e9,a
1f9e: 8b ee     dec   $ee
1fa0: d0 0b     bne   $1fad
1fa2: 8f a0 ee  mov   $ee,#$a0
1fa5: 58 ff ec  eor   $ec,#$ff
1fa8: 58 ff ed  eor   $ed,#$ff
1fab: 3a ec     incw  $ec
1fad: 6f        ret

