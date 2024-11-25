0200: 20        clrp
0201: c0        di
0202: cd ff     mov   x,#$ff
0204: bd        mov   sp,x
0205: e8 00     mov   a,#$00
0207: 5d        mov   x,a
0208: af        mov   (x)+,a
0209: c8 f0     cmp   x,#$f0
020b: d0 fb     bne   $0208
020d: 1a 02     decw  $02
020f: 1a ed     decw  $ed
0211: e8 00     mov   a,#$00
0213: 8d 0c     mov   y,#$0c
0215: 3f 38 06  call  $0638
0218: 8d 1c     mov   y,#$1c
021a: 3f 38 06  call  $0638
021d: 8d 2c     mov   y,#$2c
021f: 3f 38 06  call  $0638
0222: 8d 3c     mov   y,#$3c
0224: 3f 38 06  call  $0638
0227: 8d 2d     mov   y,#$2d
0229: 3f 38 06  call  $0638
022c: 8d 3d     mov   y,#$3d
022e: 3f 38 06  call  $0638
0231: 8d 4d     mov   y,#$4d
0233: 3f 38 06  call  $0638
0236: 8d 5d     mov   y,#$5d
0238: e8 1b     mov   a,#$1b
023a: 3f 38 06  call  $0638
023d: 8d 07     mov   y,#$07
023f: cd a0     mov   x,#$a0
0241: cb f2     mov   $f2,y
0243: d8 f3     mov   $f3,x
0245: dd        mov   a,y
0246: 60        clrc
0247: 88 10     adc   a,#$10
0249: fd        mov   y,a
024a: 10 f5     bpl   $0241
024c: 8f f0 f1  mov   $f1,#$f0
024f: 8f 24 fa  mov   $fa,#$24
0252: 8f 80 fb  mov   $fb,#$80
0255: 8f 03 f1  mov   $f1,#$03
0258: 3f 77 13  call  $1377
025b: e8 d2     mov   a,#$d2
025d: 8d 6d     mov   y,#$6d
025f: 3f 38 06  call  $0638
0262: e8 05     mov   a,#$05
0264: 8d 7d     mov   y,#$7d
0266: 3f 38 06  call  $0638
0269: e8 00     mov   a,#$00
026b: eb fe     mov   y,$fe
026d: f0 fc     beq   $026b
026f: bc        inc   a
0270: 68 10     cmp   a,#$10
0272: d0 f7     bne   $026b
0274: e8 7f     mov   a,#$7f
0276: 8d 0c     mov   y,#$0c
0278: 3f 38 06  call  $0638
027b: 8d 1c     mov   y,#$1c
027d: 3f 38 06  call  $0638
0280: 8f ff bf  mov   $bf,#$ff
0283: 8f 07 ec  mov   $ec,#$07
0286: e2 9e     set7  $9e
0288: e2 a0     set7  $a0
028a: e2 aa     set7  $aa
028c: e2 ac     set7  $ac
028e: 3f 27 0d  call  $0d27
0291: eb fd     mov   y,$fd
0293: f0 f9     beq   $028e
0295: 8d 08     mov   y,#$08
0297: f6 de 18  mov   a,$18de+y
029a: c4 f2     mov   $f2,a
029c: f6 e6 18  mov   a,$18e6+y
029f: 5d        mov   x,a
02a0: e6        mov   a,(x)
02a1: c4 f3     mov   $f3,a
02a3: fe f2     dbnz  y,$0297
02a5: cb bf     mov   $bf,y
02a7: cb be     mov   $be,y
02a9: e3 c0 0a  bbs7  $c0,$02b6
02ac: ba bb     movw  ya,$bb
02ae: da f6     movw  $f6,ya
02b0: e4 d3     mov   a,$d3
02b2: c4 f5     mov   $f5,a
02b4: 2f 03     bra   $02b9
02b6: 3f d8 16  call  $16d8
02b9: ba da     movw  ya,$da
02bb: d0 0a     bne   $02c7
02bd: 8b ec     dec   $ec
02bf: d0 06     bne   $02c7
02c1: 8f 07 ec  mov   $ec,#$07
02c4: 3f 2f 17  call  $172f
02c7: 3f 06 03  call  $0306
02ca: cd 00     mov   x,#$00
02cc: 8f 01 c1  mov   $c1,#$01
02cf: e4 bc     mov   a,$bc
02d1: 04 bd     or    a,$bd
02d3: 48 ff     eor   a,#$ff
02d5: 24 bb     and   a,$bb
02d7: c4 04     mov   $04,a
02d9: 4b 04     lsr   $04
02db: 90 05     bcc   $02e2
02dd: d8 07     mov   $07,x
02df: 3f 17 0b  call  $0b17
02e2: 3d        inc   x
02e3: 3d        inc   x
02e4: 0b c1     asl   $c1
02e6: d0 f1     bne   $02d9
02e8: cd 1e     mov   x,#$1e
02ea: 8f 80 c1  mov   $c1,#$80
02ed: e4 bc     mov   a,$bc
02ef: 04 bd     or    a,$bd
02f1: c4 04     mov   $04,a
02f3: 0b 04     asl   $04
02f5: 90 05     bcc   $02fc
02f7: d8 07     mov   $07,x
02f9: 3f 17 0b  call  $0b17
02fc: 1d        dec   x
02fd: 1d        dec   x
02fe: 4b c1     lsr   $c1
0300: 73 c1 f0  bbc3  $c1,$02f3
0303: 5f 8e 02  jmp   $028e

0306: e4 9e     mov   a,$9e
0308: 48 80     eor   a,#$80
030a: eb 7f     mov   y,$7f
030c: cf        mul   ya
030d: dd        mov   a,y
030e: f3 9e 0a  bbc7  $9e,$031b
0311: 1c        asl   a
0312: 60        clrc
0313: 84 7f     adc   a,$7f
0315: 90 07     bcc   $031e
0317: e8 ff     mov   a,#$ff
0319: 2f 03     bra   $031e
031b: d0 01     bne   $031e
031d: bc        inc   a
031e: 60        clrc
031f: 84 80     adc   a,$80
0321: c4 80     mov   $80,a
0323: 33 c0 01  bbc1  $c0,$0327
0326: 80        setc
0327: 90 5c     bcc   $0385
0329: cd 00     mov   x,#$00
032b: 8f 01 c1  mov   $c1,#$01
032e: fa bb 04  mov   ($04),($bb)
0331: 4b 04     lsr   $04
0333: 90 32     bcc   $0367
0335: d8 07     mov   $07,x
0337: 9b 3e     dec   $3e+x
0339: d0 05     bne   $0340
033b: 3f e9 03  call  $03e9
033e: 2f 23     bra   $0363
0340: e4 bc     mov   a,$bc
0342: 04 bd     or    a,$bd
0344: 24 c1     and   a,$c1
0346: d0 1f     bne   $0367
0348: e8 02     mov   a,#$02
034a: de 3e 09  cbne  $3e+x,$0356
034d: e4 d1     mov   a,$d1
034f: 24 c1     and   a,$c1
0351: d0 03     bne   $0356
0353: 09 c1 bf  or    ($bf),($c1)
0356: 40        setp
0357: f4 00     mov   a,$00+x
0359: f0 02     beq   $035d
035b: 9b 00     dec   $00+x
035d: f4 01     mov   a,$01+x
035f: f0 02     beq   $0363
0361: 9b 01     dec   $01+x
0363: 20        clrp
0364: 3f 36 0a  call  $0a36
0367: 3d        inc   x
0368: 3d        inc   x
0369: 0b c1     asl   $c1
036b: d0 c4     bne   $0331
036d: e4 82     mov   a,$82
036f: f0 08     beq   $0379
0371: 8b 82     dec   $82
0373: ba 83     movw  ya,$83
0375: 7a 7e     addw  ya,$7e
0377: da 7e     movw  $7e,ya
0379: e4 b9     mov   a,$b9
037b: f0 08     beq   $0385
037d: 8b b9     dec   $b9
037f: ba b7     movw  ya,$b7
0381: 7a b5     addw  ya,$b5
0383: da b5     movw  $b5,ya
0385: e4 a0     mov   a,$a0
0387: 48 80     eor   a,#$80
0389: 8d 78     mov   y,#$78
038b: cf        mul   ya
038c: dd        mov   a,y
038d: f3 a0 0a  bbc7  $a0,$039a
0390: 1c        asl   a
0391: 60        clrc
0392: 88 78     adc   a,#$78
0394: 90 07     bcc   $039d
0396: e8 ff     mov   a,#$ff
0398: 2f 03     bra   $039d
039a: d0 01     bne   $039d
039c: bc        inc   a
039d: 60        clrc
039e: 84 83     adc   a,$83
03a0: c4 83     mov   $83,a
03a2: 33 c0 01  bbc1  $c0,$03a6
03a5: 80        setc
03a6: 90 40     bcc   $03e8
03a8: cd 18     mov   x,#$18
03aa: 8f 10 c1  mov   $c1,#$10
03ad: e4 bc     mov   a,$bc
03af: 04 bd     or    a,$bd
03b1: 9f        xcn   a
03b2: c4 04     mov   $04,a
03b4: 4b 04     lsr   $04
03b6: 90 2a     bcc   $03e2
03b8: d8 07     mov   $07,x
03ba: 9b 3e     dec   $3e+x
03bc: d0 05     bne   $03c3
03be: 3f e9 03  call  $03e9
03c1: 2f 1b     bra   $03de
03c3: e8 02     mov   a,#$02
03c5: de 3e 09  cbne  $3e+x,$03d1
03c8: e4 d2     mov   a,$d2
03ca: 24 c1     and   a,$c1
03cc: d0 03     bne   $03d1
03ce: 09 c1 bf  or    ($bf),($c1)
03d1: 40        setp
03d2: f4 00     mov   a,$00+x
03d4: f0 02     beq   $03d8
03d6: 9b 00     dec   $00+x
03d8: f4 01     mov   a,$01+x
03da: f0 02     beq   $03de
03dc: 9b 01     dec   $01+x
03de: 20        clrp
03df: 3f 36 0a  call  $0a36
03e2: 3d        inc   x
03e3: 3d        inc   x
03e4: 0b c1     asl   $c1
03e6: d0 cc     bne   $03b4
03e8: 6f        ret

03e9: 3f 9a 05  call  $059a
03ec: 68 d2     cmp   a,#$d2
03ee: 90 05     bcc   $03f5
03f0: 3f 86 05  call  $0586
03f3: 2f f4     bra   $03e9
03f5: 8d 00     mov   y,#$00
03f7: cd 0f     mov   x,#$0f
03f9: 9e        div   ya,x
03fa: f8 07     mov   x,$07
03fc: f6 8e 18  mov   a,$188e+y
03ff: d4 3e     mov   $3e+x,a
0401: 3f a5 05  call  $05a5
0404: 78 b4 06  cmp   $06,#$b4
0407: 90 09     bcc   $0412
0409: 78 c3 06  cmp   $06,#$c3
040c: b0 03     bcs   $0411
040e: 5f bd 04  jmp   $04bd

0411: 6f        ret

0412: c8 10     cmp   x,#$10
0414: b0 08     bcs   $041e
0416: e4 bc     mov   a,$bc
0418: 04 bd     or    a,$bd
041a: 24 c1     and   a,$c1
041c: d0 f3     bne   $0411
041e: e4 06     mov   a,$06
0420: 8d 00     mov   y,#$00
0422: cd 0f     mov   x,#$0f
0424: 9e        div   ya,x
0425: c4 06     mov   $06,a
0427: f8 07     mov   x,$07
0429: f4 3f     mov   a,$3f+x
042b: 8d 0c     mov   y,#$0c
042d: cf        mul   ya
042e: 60        clrc
042f: 84 06     adc   a,$06
0431: 60        clrc
0432: 95 61 fb  adc   a,$fb61+x
0435: 80        setc
0436: a8 01     sbc   a,#$01
0438: d5 41 fb  mov   $fb41+x,a
043b: 3f 25 05  call  $0525
043e: e4 0a     mov   a,$0a
0440: d5 60 fc  mov   $fc60+x,a
0443: e4 0b     mov   a,$0b
0445: d5 61 fc  mov   $fc61+x,a
0448: 8d 07     mov   y,#$07
044a: f5 21 01  mov   a,$0121+x
044d: f0 22     beq   $0471
044f: 68 c0     cmp   a,#$c0
0451: b0 04     bcs   $0457
0453: e8 00     mov   a,#$00
0455: 2f 02     bra   $0459
0457: e8 80     mov   a,#$80
0459: d5 c0 fb  mov   $fbc0+x,a
045c: e8 01     mov   a,#$01
045e: d5 e0 fa  mov   $fae0+x,a
0461: f5 60 01  mov   a,$0160+x
0464: d5 00 01  mov   $0100+x,a
0467: f0 03     beq   $046c
0469: dd        mov   a,y
046a: 2f 02     bra   $046e
046c: e8 00     mov   a,#$00
046e: d5 00 fc  mov   $fc00+x,a
0471: f5 40 01  mov   a,$0140+x
0474: f0 24     beq   $049a
0476: 68 c0     cmp   a,#$c0
0478: b0 04     bcs   $047e
047a: e8 00     mov   a,#$00
047c: 2f 02     bra   $0480
047e: e8 80     mov   a,#$80
0480: d5 c1 fb  mov   $fbc1+x,a
0483: e8 01     mov   a,#$01
0485: d5 e1 fa  mov   $fae1+x,a
0488: f5 61 01  mov   a,$0161+x
048b: d5 01 01  mov   $0101+x,a
048e: f0 03     beq   $0493
0490: dd        mov   a,y
0491: 2f 02     bra   $0495
0493: e8 00     mov   a,#$00
0495: d5 01 fc  mov   $fc01+x,a
0498: e8 00     mov   a,#$00
049a: d5 40 fc  mov   $fc40+x,a
049d: d5 41 fc  mov   $fc41+x,a
04a0: d5 01 fb  mov   $fb01+x,a
04a3: c8 10     cmp   x,#$10
04a5: b0 0a     bcs   $04b1
04a7: e4 bc     mov   a,$bc
04a9: 04 bd     or    a,$bd
04ab: 24 c1     and   a,$c1
04ad: f0 02     beq   $04b1
04af: 2f 0c     bra   $04bd
04b1: 09 c1 d8  or    ($d8),($c1)
04b4: 09 c1 d9  or    ($d9),($c1)
04b7: 09 c1 be  or    ($be),($c1)
04ba: 3f f1 08  call  $08f1
04bd: f5 20 01  mov   a,$0120+x
04c0: f0 62     beq   $0524
04c2: 60        clrc
04c3: 95 41 fb  adc   a,$fb41+x
04c6: d5 41 fb  mov   $fb41+x,a
04c9: 3f 25 05  call  $0525
04cc: f5 60 fc  mov   a,$fc60+x
04cf: c4 36     mov   $36,a
04d1: f5 61 fc  mov   a,$fc61+x
04d4: c4 37     mov   $37,a
04d6: ba 0a     movw  ya,$0a
04d8: 80        setc
04d9: 9a 36     subw  ya,$36
04db: da 36     movw  $36,ya
04dd: 0d        push  psw
04de: b0 08     bcs   $04e8
04e0: 58 ff 36  eor   $36,#$ff
04e3: 58 ff 37  eor   $37,#$ff
04e6: 3a 36     incw  $36
04e8: f5 c1 fa  mov   a,$fac1+x
04eb: d0 08     bne   $04f5
04ed: fa 37 36  mov   ($36),($37)
04f0: 8f 00 37  mov   $37,#$00
04f3: 2f 0d     bra   $0502
04f5: 5d        mov   x,a
04f6: e4 37     mov   a,$37
04f8: 8d 00     mov   y,#$00
04fa: 9e        div   ya,x
04fb: c4 37     mov   $37,a
04fd: e4 36     mov   a,$36
04ff: 9e        div   ya,x
0500: c4 36     mov   $36,a
0502: ba 36     movw  ya,$36
0504: d0 02     bne   $0508
0506: ab 36     inc   $36
0508: 8e        pop   psw
0509: b0 08     bcs   $0513
050b: 58 ff 36  eor   $36,#$ff
050e: 58 ff 37  eor   $37,#$ff
0511: 3a 36     incw  $36
0513: f8 07     mov   x,$07
0515: e4 36     mov   a,$36
0517: d5 80 fb  mov   $fb80+x,a
051a: e4 37     mov   a,$37
051c: d5 81 fb  mov   $fb81+x,a
051f: e8 00     mov   a,#$00
0521: d5 20 01  mov   $0120+x,a
0524: 6f        ret

0525: cd 0c     mov   x,#$0c
0527: 8d 00     mov   y,#$00
0529: 9e        div   ya,x
052a: f8 07     mov   x,$07
052c: c4 05     mov   $05,a
052e: dd        mov   a,y
052f: 1c        asl   a
0530: fd        mov   y,a
0531: f6 54 18  mov   a,$1854+y
0534: c4 0c     mov   $0c,a
0536: f6 55 18  mov   a,$1855+y
0539: c4 0d     mov   $0d,a
053b: fd        mov   y,a
053c: f5 20 fb  mov   a,$fb20+x
053f: 60        clrc
0540: 95 40 fb  adc   a,$fb40+x
0543: 0d        push  psw
0544: 2d        push  a
0545: cf        mul   ya
0546: da 0a     movw  $0a,ya
0548: eb 0c     mov   y,$0c
054a: ae        pop   a
054b: cf        mul   ya
054c: dd        mov   a,y
054d: 8d 00     mov   y,#$00
054f: 7a 0a     addw  ya,$0a
0551: da 0a     movw  $0a,ya
0553: f5 21 fb  mov   a,$fb21+x
0556: f0 08     beq   $0560
0558: cf        mul   ya
0559: dd        mov   a,y
055a: 8d 00     mov   y,#$00
055c: 7a 0a     addw  ya,$0a
055e: 2f 02     bra   $0562
0560: e4 0a     mov   a,$0a
0562: 8e        pop   psw
0563: 30 02     bmi   $0567
0565: 7a 0c     addw  ya,$0c
0567: da 0a     movw  $0a,ya
0569: e8 04     mov   a,#$04
056b: eb 05     mov   y,$05
056d: 30 0e     bmi   $057d
056f: 64 05     cmp   a,$05
0571: b0 0f     bcs   $0582
0573: 0b 0a     asl   $0a
0575: 2b 0b     rol   $0b
0577: bc        inc   a
0578: 2e 05 f8  cbne  $05,$0573
057b: 2f 08     bra   $0585
057d: 4b 0b     lsr   $0b
057f: 6b 0a     ror   $0a
0581: 9c        dec   a
0582: 2e 05 f8  cbne  $05,$057d
0585: 6f        ret

0586: a8 d2     sbc   a,#$d2
0588: 1c        asl   a
0589: fd        mov   y,a
058a: f6 cb 17  mov   a,$17cb+y
058d: 2d        push  a
058e: f6 ca 17  mov   a,$17ca+y
0591: 2d        push  a
0592: dd        mov   a,y
0593: 5c        lsr   a
0594: fd        mov   y,a
0595: f6 26 18  mov   a,$1826+y
0598: f0 0a     beq   $05a4
; read next vbyte
059a: e7 0e     mov   a,($0e+x)
059c: c4 06     mov   $06,a
059e: bb 0e     inc   $0e+x
05a0: d0 02     bne   $05a4
05a2: bb 0f     inc   $0f+x
05a4: 6f        ret

05a5: f4 0e     mov   a,$0e+x
05a7: fb 0f     mov   y,$0f+x
05a9: da 2e     movw  $2e,ya
05ab: 8d 00     mov   y,#$00
05ad: f7 2e     mov   a,($2e)+y
05af: 68 d2     cmp   a,#$d2
05b1: 90 68     bcc   $061b
05b3: 3a 2e     incw  $2e
05b5: 68 f2     cmp   a,#$f2
05b7: f0 62     beq   $061b
05b9: 68 fa     cmp   a,#$fa
05bb: d0 0e     bne   $05cb
05bd: f7 2e     mov   a,($2e)+y
05bf: 2d        push  a
05c0: fc        inc   y
05c1: f7 2e     mov   a,($2e)+y
05c3: fd        mov   y,a
05c4: ae        pop   a
05c5: 7a 08     addw  ya,$08
05c7: da 2e     movw  $2e,ya
05c9: 2f e0     bra   $05ab
05cb: 68 f1     cmp   a,#$f1
05cd: d0 1b     bne   $05ea
05cf: fb 5e     mov   y,$5e+x
05d1: f6 a0 fc  mov   a,$fca0+y
05d4: f0 05     beq   $05db
05d6: 9c        dec   a
05d7: d0 02     bne   $05db
05d9: 2f d0     bra   $05ab
05db: dd        mov   a,y
05dc: 1c        asl   a
05dd: fd        mov   y,a
05de: f6 e0 fc  mov   a,$fce0+y
05e1: c4 2e     mov   $2e,a
05e3: f6 e1 fc  mov   a,$fce1+y
05e6: c4 2f     mov   $2f,a
05e8: 2f c1     bra   $05ab
05ea: 68 f9     cmp   a,#$f9
05ec: d0 0f     bne   $05fd
05ee: f5 60 fb  mov   a,$fb60+x
05f1: bc        inc   a
05f2: 77 2e     cmp   a,($2e)+y
05f4: d0 03     bne   $05f9
05f6: fc        inc   y
05f7: 2f c4     bra   $05bd
05f9: 8d 03     mov   y,#$03
05fb: 2f 18     bra   $0615
05fd: 68 fb     cmp   a,#$fb
05ff: d0 0a     bne   $060b
0601: e4 c1     mov   a,$c1
0603: 24 d3     and   a,$d3
0605: d0 b6     bne   $05bd
0607: 8d 02     mov   y,#$02
0609: 2f 0a     bra   $0615
060b: 80        setc
060c: a8 d2     sbc   a,#$d2
060e: fd        mov   y,a
060f: f6 26 18  mov   a,$1826+y
0612: f0 97     beq   $05ab
0614: fd        mov   y,a
0615: 3a 2e     incw  $2e
0617: fe fc     dbnz  y,$0615
0619: 2f 92     bra   $05ad
061b: 4d        push  x
061c: c8 10     cmp   x,#$10
061e: cd d1     mov   x,#$d1
0620: 90 01     bcc   $0623
0622: 3d        inc   x
0623: 68 c3     cmp   a,#$c3
0625: b0 09     bcs   $0630
0627: 68 b4     cmp   a,#$b4
0629: 90 05     bcc   $0630
062b: e4 c1     mov   a,$c1
062d: 06        or    a,(x)
062e: 2f 05     bra   $0635
0630: e4 c1     mov   a,$c1
0632: 48 ff     eor   a,#$ff
0634: 26        and   a,(x)
0635: c6        mov   (x),a
0636: ce        pop   x
0637: 6f        ret

0638: cb f2     mov   $f2,y
063a: c4 f3     mov   $f3,a
063c: 6f        ret

; vcmd f3
063d: c8 10     cmp   x,#$10
063f: b0 08     bcs   $0649
0641: c4 7f     mov   $7f,a
0643: e8 00     mov   a,#$00
0645: c4 7e     mov   $7e,a
0647: c4 82     mov   $82,a
0649: 6f        ret

; vcmd f4
064a: c4 82     mov   $82,a
064c: 3f 9a 05  call  $059a
064f: c8 10     cmp   x,#$10
0651: b0 2e     bcs   $0681
0653: eb 82     mov   y,$82
0655: f0 e6     beq   $063d
0657: 80        setc
0658: a4 7f     sbc   a,$7f
065a: f0 eb     beq   $0647
065c: 0d        push  psw
065d: b0 03     bcs   $0662
065f: 48 ff     eor   a,#$ff
0661: bc        inc   a
0662: f8 82     mov   x,$82
0664: 8d 00     mov   y,#$00
0666: 9e        div   ya,x
0667: c4 37     mov   $37,a
0669: e8 00     mov   a,#$00
066b: 9e        div   ya,x
066c: c4 36     mov   $36,a
066e: f8 07     mov   x,$07
0670: 8e        pop   psw
0671: b0 08     bcs   $067b
0673: 58 ff 36  eor   $36,#$ff
0676: 58 ff 37  eor   $37,#$ff
0679: 3a 36     incw  $36
067b: ba 36     movw  ya,$36
067d: c4 83     mov   $83,a
067f: cb 84     mov   $84,y
0681: 6f        ret

; vcmd f8
0682: c4 ba     mov   $ba,a
0684: 6f        ret

; vcmd d2
0685: d5 01 fa  mov   $fa01+x,a
0688: e8 00     mov   a,#$00
068a: d5 00 fa  mov   $fa00+x,a
068d: d5 80 fa  mov   $fa80+x,a
0690: 6f        ret

; vcmd d3
0691: c4 36     mov   $36,a
0693: d5 80 fa  mov   $fa80+x,a
0696: 3f 9a 05  call  $059a
0699: eb 36     mov   y,$36
069b: f0 e8     beq   $0685
069d: 80        setc
069e: b5 01 fa  sbc   a,$fa01+x
06a1: f0 ea     beq   $068d
06a3: 0d        push  psw
06a4: b0 03     bcs   $06a9
06a6: 48 ff     eor   a,#$ff
06a8: bc        inc   a
06a9: f8 36     mov   x,$36
06ab: 8d 00     mov   y,#$00
06ad: 9e        div   ya,x
06ae: c4 37     mov   $37,a
06b0: e8 00     mov   a,#$00
06b2: 9e        div   ya,x
06b3: c4 36     mov   $36,a
06b5: f8 07     mov   x,$07
06b7: 8e        pop   psw
06b8: b0 08     bcs   $06c2
06ba: 58 ff 36  eor   $36,#$ff
06bd: 58 ff 37  eor   $37,#$ff
06c0: 3a 36     incw  $36
06c2: e4 36     mov   a,$36
06c4: d5 20 fa  mov   $fa20+x,a
06c7: e4 37     mov   a,$37
06c9: d5 21 fa  mov   $fa21+x,a
06cc: 6f        ret

; vcmd f5
06cd: c8 10     cmp   x,#$10
06cf: b0 08     bcs   $06d9
06d1: 5c        lsr   a
06d2: c4 b6     mov   $b6,a
06d4: 8f 00 b5  mov   $b5,#$00
06d7: c4 b9     mov   $b9,a
06d9: 6f        ret

; vcmd f6
06da: c4 b9     mov   $b9,a
06dc: 3f 9a 05  call  $059a
06df: c8 10     cmp   x,#$10
06e1: b0 2f     bcs   $0712
06e3: eb b9     mov   y,$b9
06e5: f0 e6     beq   $06cd
06e7: 5c        lsr   a
06e8: 80        setc
06e9: a4 b6     sbc   a,$b6
06eb: f0 ea     beq   $06d7
06ed: 0d        push  psw
06ee: b0 03     bcs   $06f3
06f0: 48 ff     eor   a,#$ff
06f2: bc        inc   a
06f3: f8 b9     mov   x,$b9
06f5: 8d 00     mov   y,#$00
06f7: 9e        div   ya,x
06f8: c4 37     mov   $37,a
06fa: e8 00     mov   a,#$00
06fc: 9e        div   ya,x
06fd: c4 36     mov   $36,a
06ff: f8 07     mov   x,$07
0701: 8e        pop   psw
0702: b0 08     bcs   $070c
0704: 58 ff 36  eor   $36,#$ff
0707: 58 ff 37  eor   $37,#$ff
070a: 3a 36     incw  $36
070c: ba 36     movw  ya,$36
070e: c4 b7     mov   $b7,a
0710: cb b8     mov   $b8,y
0712: 6f        ret

; vcmd d4
0713: d5 41 fa  mov   $fa41+x,a
0716: e8 00     mov   a,#$00
0718: d5 40 fa  mov   $fa40+x,a
071b: d5 81 fa  mov   $fa81+x,a
071e: 6f        ret

; vcmd d5
071f: c4 36     mov   $36,a
0721: d5 81 fa  mov   $fa81+x,a
0724: 3f 9a 05  call  $059a
0727: eb 36     mov   y,$36
0729: f0 e8     beq   $0713
072b: 80        setc
072c: b5 41 fa  sbc   a,$fa41+x
072f: f0 ea     beq   $071b
0731: 0d        push  psw
0732: b0 03     bcs   $0737
0734: 48 ff     eor   a,#$ff
0736: bc        inc   a
0737: f8 36     mov   x,$36
0739: 8d 00     mov   y,#$00
073b: 9e        div   ya,x
073c: c4 37     mov   $37,a
073e: e8 00     mov   a,#$00
0740: 9e        div   ya,x
0741: c4 36     mov   $36,a
0743: f8 07     mov   x,$07
0745: 8e        pop   psw
0746: b0 08     bcs   $0750
0748: 58 ff 36  eor   $36,#$ff
074b: 58 ff 37  eor   $37,#$ff
074e: 3a 36     incw  $36
0750: e4 36     mov   a,$36
0752: d5 60 fa  mov   $fa60+x,a
0755: e4 37     mov   a,$37
0757: d5 61 fa  mov   $fa61+x,a
075a: 6f        ret

; vcmd d6
075b: bc        inc   a
075c: d5 c1 fa  mov   $fac1+x,a
075f: 3f 9a 05  call  $059a
0762: d5 20 01  mov   $0120+x,a
0765: 6f        ret

; vcmd e8
0766: 60        clrc
0767: 95 61 fb  adc   a,$fb61+x
; vcmd e7
076a: d5 61 fb  mov   $fb61+x,a
076d: 6f        ret

; vcmd f7
076e: c4 d7     mov   $d7,a
0770: 3f 9a 05  call  $059a
0773: c8 10     cmp   x,#$10
0775: 90 01     bcc   $0778
0777: 6f        ret

0778: 28 03     and   a,#$03
077a: c4 d6     mov   $d6,a
077c: 1c        asl   a
077d: 1c        asl   a
077e: 1c        asl   a
077f: fd        mov   y,a
0780: cd 0f     mov   x,#$0f
0782: f6 6e 18  mov   a,$186e+y
0785: d8 f2     mov   $f2,x
0787: c4 f3     mov   $f3,a
0789: fc        inc   y
078a: 7d        mov   a,x
078b: 60        clrc
078c: 88 10     adc   a,#$10
078e: 5d        mov   x,a
078f: 10 f1     bpl   $0782
0791: f8 07     mov   x,$07
0793: 8d 0d     mov   y,#$0d
0795: e4 d7     mov   a,$d7
0797: 5f 38 06  jmp   $0638

; vcmd d7
079a: d5 60 01  mov   $0160+x,a
079d: 3f 9a 05  call  $059a
07a0: bc        inc   a
07a1: d5 a0 fa  mov   $faa0+x,a
07a4: e8 01     mov   a,#$01
07a6: d5 e0 fa  mov   $fae0+x,a
07a9: 3f 9a 05  call  $059a
; vcmd d8
07ac: d5 21 01  mov   $0121+x,a
07af: 6f        ret

; vcmd d9
07b0: d5 61 01  mov   $0161+x,a
07b3: 3f 9a 05  call  $059a
07b6: bc        inc   a
07b7: d5 a1 fa  mov   $faa1+x,a
07ba: e8 01     mov   a,#$01
07bc: d5 e1 fa  mov   $fae1+x,a
07bf: 3f 9a 05  call  $059a
; vcmd da
07c2: d5 40 01  mov   $0140+x,a
07c5: 6f        ret

; vcmd db
07c6: 60        clrc
07c7: bc        inc   a
07c8: d5 c0 fa  mov   $fac0+x,a
07cb: d0 01     bne   $07ce
07cd: 80        setc
07ce: 7c        ror   a
07cf: d0 01     bne   $07d2
07d1: bc        inc   a
07d2: d5 00 fb  mov   $fb00+x,a
07d5: fd        mov   y,a
07d6: 3f 9a 05  call  $059a
07d9: 1c        asl   a
07da: e4 06     mov   a,$06
07dc: 28 7f     and   a,#$7f
07de: 90 02     bcc   $07e2
07e0: 48 7f     eor   a,#$7f
07e2: c4 36     mov   $36,a
07e4: dd        mov   a,y
07e5: 10 05     bpl   $07ec
07e7: 8f 00 37  mov   $37,#$00
07ea: 2f 13     bra   $07ff
07ec: 5d        mov   x,a
07ed: 8d 00     mov   y,#$00
07ef: e4 36     mov   a,$36
07f1: 9e        div   ya,x
07f2: c4 37     mov   $37,a
07f4: e8 00     mov   a,#$00
07f6: 9e        div   ya,x
07f7: c4 36     mov   $36,a
07f9: ba 36     movw  ya,$36
07fb: d0 02     bne   $07ff
07fd: ab 36     inc   $36
07ff: 90 08     bcc   $0809
0801: 58 ff 36  eor   $36,#$ff
0804: 58 ff 37  eor   $37,#$ff
0807: 3a 36     incw  $36
0809: f8 07     mov   x,$07
080b: e4 36     mov   a,$36
080d: d5 a0 fb  mov   $fba0+x,a
0810: e4 37     mov   a,$37
0812: d5 a1 fb  mov   $fba1+x,a
0815: e4 06     mov   a,$06
; vcmd dc
0817: d5 41 01  mov   $0141+x,a
081a: e8 00     mov   a,#$00
081c: d5 e0 fb  mov   $fbe0+x,a
081f: d5 e1 fb  mov   $fbe1+x,a
0822: 6f        ret

; vcmd e5
0823: f5 3f 00  mov   a,$003f+x
0826: bc        inc   a
0827: 2f 04     bra   $082d
; vcmd e6
0829: f5 3f 00  mov   a,$003f+x
082c: 9c        dec   a
; vcmd e4
082d: d5 3f 00  mov   $003f+x,a
0830: 6f        ret

; vcmd e2
0831: c8 10     cmp   x,#$10
0833: b0 05     bcs   $083a
0835: 09 c1 cb  or    ($cb),($c1)
0838: 2f 03     bra   $083d
083a: 09 c1 cc  or    ($cc),($c1)
083d: e4 bc     mov   a,$bc
083f: 04 bd     or    a,$bd
0841: 48 ff     eor   a,#$ff
0843: 24 cb     and   a,$cb
0845: 04 cc     or    a,$cc
0847: c4 c7     mov   $c7,a
0849: 6f        ret

; vcmd e3
084a: e4 c1     mov   a,$c1
084c: c8 10     cmp   x,#$10
084e: b0 05     bcs   $0855
0850: 4e cb 00  tclr1 $00cb
0853: 2f e8     bra   $083d
0855: 4e cc 00  tclr1 $00cc
0858: 2f e3     bra   $083d
; vcmd de
085a: c8 10     cmp   x,#$10
085c: b0 05     bcs   $0863
085e: 09 c1 cd  or    ($cd),($c1)
0861: 2f 03     bra   $0866
0863: 09 c1 ce  or    ($ce),($c1)
0866: fa ce 36  mov   ($36),($ce)
0869: 12 36     clr0  $36
086b: e4 ca     mov   a,$ca
086d: 28 e0     and   a,#$e0
086f: 03 ce 04  bbs0  $ce,$0876
0872: 04 d4     or    a,$d4
0874: 2f 02     bra   $0878
0876: 04 d5     or    a,$d5
0878: c4 ca     mov   $ca,a
087a: e4 bc     mov   a,$bc
087c: 04 bd     or    a,$bd
087e: 48 ff     eor   a,#$ff
0880: 24 cd     and   a,$cd
0882: 04 36     or    a,$36
0884: c4 c8     mov   $c8,a
0886: 6f        ret

; vcmd df
0887: e4 c1     mov   a,$c1
0889: c8 10     cmp   x,#$10
088b: b0 05     bcs   $0892
088d: 4e cd 00  tclr1 $00cd
0890: 2f d4     bra   $0866
0892: 4e ce 00  tclr1 $00ce
0895: d0 cf     bne   $0866
0897: 12 ce     clr0  $ce
0899: 2f cb     bra   $0866
; vcmd dd
089b: 28 1f     and   a,#$1f
089d: c8 10     cmp   x,#$10
089f: b0 04     bcs   $08a5
08a1: c4 d4     mov   $d4,a
08a3: 2f c1     bra   $0866
08a5: 02 ce     set0  $ce
08a7: c4 d5     mov   $d5,a
08a9: 2f bb     bra   $0866
; vcmd e0
08ab: c8 10     cmp   x,#$10
08ad: b0 05     bcs   $08b4
08af: 09 c1 cf  or    ($cf),($c1)
08b2: 2f 03     bra   $08b7
08b4: 09 c1 d0  or    ($d0),($c1)
08b7: e4 bc     mov   a,$bc
08b9: 04 bd     or    a,$bd
08bb: 48 ff     eor   a,#$ff
08bd: 24 cf     and   a,$cf
08bf: 04 d0     or    a,$d0
08c1: c4 c9     mov   $c9,a
08c3: 6f        ret

; vcmd e1
08c4: e4 c1     mov   a,$c1
08c6: c8 10     cmp   x,#$10
08c8: b0 05     bcs   $08cf
08ca: 4e cf 00  tclr1 $00cf
08cd: 2f e8     bra   $08b7
08cf: 4e d0 00  tclr1 $00d0
08d2: 2f e3     bra   $08b7
; vcmd ea
08d4: d4 5f     mov   $5f+x,a
08d6: 1c        asl   a
08d7: fd        mov   y,a
08d8: f6 00 1a  mov   a,$1a00+y
08db: d5 20 fb  mov   $fb20+x,a
08de: f6 01 1a  mov   a,$1a01+y
08e1: d5 21 fb  mov   $fb21+x,a
08e4: f6 80 1a  mov   a,$1a80+y
08e7: d5 80 fc  mov   $fc80+x,a
08ea: f6 81 1a  mov   a,$1a81+y
08ed: d5 81 fc  mov   $fc81+x,a
08f0: 6f        ret

08f1: fb 5f     mov   y,$5f+x
08f3: 7d        mov   a,x
08f4: 9f        xcn   a
08f5: 5c        lsr   a
08f6: 08 04     or    a,#$04
08f8: c4 f2     mov   $f2,a
08fa: cb f3     mov   $f3,y
08fc: 2f 10     bra   $090e
; vcmd eb
08fe: 28 0f     and   a,#$0f
0900: c4 06     mov   $06,a
0902: f5 80 fc  mov   a,$fc80+x
0905: 28 70     and   a,#$70
0907: 04 06     or    a,$06
0909: 08 80     or    a,#$80
090b: d5 80 fc  mov   $fc80+x,a
090e: c8 10     cmp   x,#$10
0910: b0 09     bcs   $091b
0912: e4 bc     mov   a,$bc
0914: 04 bd     or    a,$bd
0916: 24 c1     and   a,$c1
0918: f0 01     beq   $091b
091a: 6f        ret

091b: 7d        mov   a,x
091c: 9f        xcn   a
091d: 5c        lsr   a
091e: 08 05     or    a,#$05
0920: fd        mov   y,a
0921: f5 80 fc  mov   a,$fc80+x
0924: 3f 38 06  call  $0638
0927: fc        inc   y
0928: f5 81 fc  mov   a,$fc81+x
092b: 5f 38 06  jmp   $0638

; vcmd ec
092e: 28 07     and   a,#$07
0930: 9f        xcn   a
0931: c4 06     mov   $06,a
0933: f5 80 fc  mov   a,$fc80+x
0936: 28 0f     and   a,#$0f
0938: 04 06     or    a,$06
093a: 08 80     or    a,#$80
093c: d5 80 fc  mov   $fc80+x,a
093f: 2f cd     bra   $090e
; vcmd ed
0941: 28 07     and   a,#$07
0943: 9f        xcn   a
0944: 1c        asl   a
0945: c4 06     mov   $06,a
0947: f5 81 fc  mov   a,$fc81+x
094a: 28 1f     and   a,#$1f
094c: 04 06     or    a,$06
094e: d5 81 fc  mov   $fc81+x,a
0951: 2f bb     bra   $090e
; vcmd ee
0953: 28 1f     and   a,#$1f
0955: c4 06     mov   $06,a
0957: f5 81 fc  mov   a,$fc81+x
095a: 28 e0     and   a,#$e0
095c: 04 06     or    a,$06
095e: d5 81 fc  mov   $fc81+x,a
0961: 2f ab     bra   $090e
; vcmd ef
0963: f4 5f     mov   a,$5f+x
0965: 1c        asl   a
0966: fd        mov   y,a
0967: f6 80 1a  mov   a,$1a80+y
096a: d5 80 fc  mov   $fc80+x,a
096d: f6 81 1a  mov   a,$1a81+y
0970: d5 81 fc  mov   $fc81+x,a
0973: 2f 99     bra   $090e
; vcmd fa
0975: fd        mov   y,a
0976: 3f 9a 05  call  $059a
0979: c8 10     cmp   x,#$10
097b: b0 09     bcs   $0986
097d: dd        mov   a,y
097e: eb 06     mov   y,$06
0980: 7a 08     addw  ya,$08
0982: d4 0e     mov   $0e+x,a
0984: db 0f     mov   $0f+x,y
0986: 6f        ret

; vcmd f9
0987: fd        mov   y,a
0988: 3f 9a 05  call  $059a
098b: c4 36     mov   $36,a
098d: 3f 9a 05  call  $059a
0990: c4 37     mov   $37,a
0992: c8 10     cmp   x,#$10
0994: b0 15     bcs   $09ab
0996: f5 60 fb  mov   a,$fb60+x
0999: bc        inc   a
099a: d5 60 fb  mov   $fb60+x,a
099d: dd        mov   a,y
099e: 75 60 fb  cmp   a,$fb60+x
09a1: d0 08     bne   $09ab
09a3: ba 36     movw  ya,$36
09a5: 7a 08     addw  ya,$08
09a7: d4 0e     mov   $0e+x,a
09a9: db 0f     mov   $0f+x,y
09ab: 6f        ret

; vcmd f0
09ac: bb 5e     inc   $5e+x
09ae: 7d        mov   a,x
09af: 1c        asl   a
09b0: 60        clrc
09b1: 88 04     adc   a,#$04
09b3: de 5e 02  cbne  $5e+x,$09b8
09b6: 9b 5e     dec   $5e+x
09b8: fb 5e     mov   y,$5e+x
09ba: e4 06     mov   a,$06
09bc: f0 01     beq   $09bf
09be: bc        inc   a
09bf: d6 a0 fc  mov   $fca0+y,a
09c2: dd        mov   a,y
09c3: 1c        asl   a
09c4: fd        mov   y,a
09c5: f4 0e     mov   a,$0e+x
09c7: d6 e0 fc  mov   $fce0+y,a
09ca: f4 0f     mov   a,$0f+x
09cc: d6 e1 fc  mov   $fce1+y,a
09cf: e8 00     mov   a,#$00
09d1: d5 60 fb  mov   $fb60+x,a
09d4: 6f        ret

; vcmd f1
09d5: 7d        mov   a,x
09d6: 1c        asl   a
09d7: 9c        dec   a
09d8: 74 5e     cmp   a,$5e+x
09da: f0 1e     beq   $09fa
09dc: fb 5e     mov   y,$5e+x
09de: f6 a0 fc  mov   a,$fca0+y
09e1: f0 07     beq   $09ea
09e3: 9c        dec   a
09e4: d0 04     bne   $09ea
09e6: 9b 5e     dec   $5e+x
09e8: 2f 10     bra   $09fa
09ea: d6 a0 fc  mov   $fca0+y,a
09ed: dd        mov   a,y
09ee: 1c        asl   a
09ef: fd        mov   y,a
09f0: f6 e0 fc  mov   a,$fce0+y
09f3: d4 0e     mov   $0e+x,a
09f5: f6 e1 fc  mov   a,$fce1+y
09f8: d4 0f     mov   $0f+x,a
09fa: 6f        ret

; vcmd fb
09fb: fd        mov   y,a
09fc: 3f 9a 05  call  $059a
09ff: c8 10     cmp   x,#$10
0a01: b0 12     bcs   $0a15
0a03: e4 c1     mov   a,$c1
0a05: 24 d3     and   a,$d3
0a07: f0 0c     beq   $0a15
0a09: 4e d3 00  tclr1 $00d3
0a0c: dd        mov   a,y
0a0d: eb 06     mov   y,$06
0a0f: 7a 08     addw  ya,$08
0a11: d4 0e     mov   $0e+x,a
0a13: db 0f     mov   $0f+x,y
0a15: 6f        ret

; vcmd e9
0a16: d5 40 fb  mov   $fb40+x,a
0a19: 6f        ret

; vcmd f2,fc-ff
0a1a: ae        pop   a
0a1b: ae        pop   a
0a1c: e4 c1     mov   a,$c1
0a1e: c8 10     cmp   x,#$10
0a20: b0 05     bcs   $0a27
0a22: 4e bb 00  tclr1 $00bb
0a25: 2f 06     bra   $0a2d
0a27: 4e bc 00  tclr1 $00bc
0a2a: 4e bd 00  tclr1 $00bd
0a2d: 3f 87 08  call  $0887
0a30: 3f c4 08  call  $08c4
0a33: 5f 4a 08  jmp   $084a

0a36: f5 80 fa  mov   a,$fa80+x
0a39: f0 26     beq   $0a61
0a3b: 9c        dec   a
0a3c: d5 80 fa  mov   $fa80+x,a
0a3f: f5 00 fa  mov   a,$fa00+x
0a42: c4 36     mov   $36,a
0a44: f5 01 fa  mov   a,$fa01+x
0a47: c4 37     mov   $37,a
0a49: f5 21 fa  mov   a,$fa21+x
0a4c: fd        mov   y,a
0a4d: f5 20 fa  mov   a,$fa20+x
0a50: 7a 36     addw  ya,$36
0a52: d5 00 fa  mov   $fa00+x,a
0a55: dd        mov   a,y
0a56: 75 01 fa  cmp   a,$fa01+x
0a59: d5 01 fa  mov   $fa01+x,a
0a5c: f0 03     beq   $0a61
0a5e: 09 c1 d8  or    ($d8),($c1)
0a61: f5 81 fa  mov   a,$fa81+x
0a64: f0 26     beq   $0a8c
0a66: 9c        dec   a
0a67: d5 81 fa  mov   $fa81+x,a
0a6a: f5 40 fa  mov   a,$fa40+x
0a6d: c4 36     mov   $36,a
0a6f: f5 41 fa  mov   a,$fa41+x
0a72: c4 37     mov   $37,a
0a74: f5 61 fa  mov   a,$fa61+x
0a77: fd        mov   y,a
0a78: f5 60 fa  mov   a,$fa60+x
0a7b: 7a 36     addw  ya,$36
0a7d: d5 40 fa  mov   $fa40+x,a
0a80: dd        mov   a,y
0a81: 75 41 fa  cmp   a,$fa41+x
0a84: d5 41 fa  mov   $fa41+x,a
0a87: f0 03     beq   $0a8c
0a89: 09 c1 d8  or    ($d8),($c1)
0a8c: f5 80 fb  mov   a,$fb80+x
0a8f: c4 36     mov   $36,a
0a91: f5 81 fb  mov   a,$fb81+x
0a94: c4 37     mov   $37,a
0a96: ba 36     movw  ya,$36
0a98: f0 22     beq   $0abc
0a9a: f5 c1 fa  mov   a,$fac1+x
0a9d: 9c        dec   a
0a9e: d0 06     bne   $0aa6
0aa0: d5 80 fb  mov   $fb80+x,a
0aa3: d5 81 fb  mov   $fb81+x,a
0aa6: d5 c1 fa  mov   $fac1+x,a
0aa9: f5 61 fc  mov   a,$fc61+x
0aac: fd        mov   y,a
0aad: f5 60 fc  mov   a,$fc60+x
0ab0: 7a 36     addw  ya,$36
0ab2: d5 60 fc  mov   $fc60+x,a
0ab5: dd        mov   a,y
0ab6: d5 61 fc  mov   $fc61+x,a
0ab9: 09 c1 d9  or    ($d9),($c1)
0abc: f5 41 01  mov   a,$0141+x
0abf: f0 55     beq   $0b16
0ac1: f5 a0 fb  mov   a,$fba0+x
0ac4: c4 36     mov   $36,a
0ac6: f5 a1 fb  mov   a,$fba1+x
0ac9: c4 37     mov   $37,a
0acb: f5 e1 fb  mov   a,$fbe1+x
0ace: fd        mov   y,a
0acf: c4 38     mov   $38,a
0ad1: f5 e0 fb  mov   a,$fbe0+x
0ad4: 7a 36     addw  ya,$36
0ad6: d5 e0 fb  mov   $fbe0+x,a
0ad9: dd        mov   a,y
0ada: e3 37 09  bbs7  $37,$0ae6
0add: e3 38 0d  bbs7  $38,$0aed
0ae0: 10 0b     bpl   $0aed
0ae2: e8 7f     mov   a,#$7f
0ae4: 2f 07     bra   $0aed
0ae6: f3 38 04  bbc7  $38,$0aed
0ae9: 30 02     bmi   $0aed
0aeb: e8 80     mov   a,#$80
0aed: 75 e1 fb  cmp   a,$fbe1+x
0af0: d5 e1 fb  mov   $fbe1+x,a
0af3: f0 03     beq   $0af8
0af5: 09 c1 d8  or    ($d8),($c1)
0af8: f5 00 fb  mov   a,$fb00+x
0afb: 9c        dec   a
0afc: d0 15     bne   $0b13
0afe: 58 ff 36  eor   $36,#$ff
0b01: 58 ff 37  eor   $37,#$ff
0b04: 3a 36     incw  $36
0b06: e4 36     mov   a,$36
0b08: d5 a0 fb  mov   $fba0+x,a
0b0b: e4 37     mov   a,$37
0b0d: d5 a1 fb  mov   $fba1+x,a
0b10: f5 c0 fa  mov   a,$fac0+x
0b13: d5 00 fb  mov   $fb00+x,a
0b16: 6f        ret

0b17: f5 21 01  mov   a,$0121+x
0b1a: f0 6c     beq   $0b88
0b1c: fd        mov   y,a
0b1d: f5 00 01  mov   a,$0100+x
0b20: d0 66     bne   $0b88
0b22: f5 e0 fa  mov   a,$fae0+x
0b25: 9c        dec   a
0b26: d0 5d     bne   $0b85
0b28: f5 00 fc  mov   a,$fc00+x
0b2b: da 36     movw  $36,ya
0b2d: f5 c0 fb  mov   a,$fbc0+x
0b30: c4 38     mov   $38,a
0b32: 3f d6 0c  call  $0cd6
0b35: d5 c0 fb  mov   $fbc0+x,a
0b38: 1c        asl   a
0b39: d0 03     bne   $0b3e
0b3b: fd        mov   y,a
0b3c: 2f 3a     bra   $0b78
0b3e: 0d        push  psw
0b3f: 2d        push  a
0b40: 2d        push  a
0b41: e4 36     mov   a,$36
0b43: d5 00 fc  mov   $fc00+x,a
0b46: 8d 0f     mov   y,#$0f
0b48: f5 61 fc  mov   a,$fc61+x
0b4b: cf        mul   ya
0b4c: da 38     movw  $38,ya
0b4e: 8d 0f     mov   y,#$0f
0b50: f5 60 fc  mov   a,$fc60+x
0b53: cf        mul   ya
0b54: dd        mov   a,y
0b55: 8d 00     mov   y,#$00
0b57: 7a 38     addw  ya,$38
0b59: c4 38     mov   $38,a
0b5b: ae        pop   a
0b5c: cf        mul   ya
0b5d: da 3a     movw  $3a,ya
0b5f: ae        pop   a
0b60: eb 38     mov   y,$38
0b62: cf        mul   ya
0b63: dd        mov   a,y
0b64: 8d 00     mov   y,#$00
0b66: 7a 3a     addw  ya,$3a
0b68: 8e        pop   psw
0b69: 90 0d     bcc   $0b78
0b6b: 48 ff     eor   a,#$ff
0b6d: c4 3a     mov   $3a,a
0b6f: dd        mov   a,y
0b70: 48 ff     eor   a,#$ff
0b72: c4 3b     mov   $3b,a
0b74: 3a 3a     incw  $3a
0b76: ba 3a     movw  ya,$3a
0b78: d5 40 fc  mov   $fc40+x,a
0b7b: dd        mov   a,y
0b7c: d5 41 fc  mov   $fc41+x,a
0b7f: 09 c1 d9  or    ($d9),($c1)
0b82: f5 a0 fa  mov   a,$faa0+x
0b85: d5 e0 fa  mov   $fae0+x,a
0b88: f5 40 01  mov   a,$0140+x
0b8b: f0 2d     beq   $0bba
0b8d: fd        mov   y,a
0b8e: f5 01 01  mov   a,$0101+x
0b91: d0 27     bne   $0bba
0b93: f5 e1 fa  mov   a,$fae1+x
0b96: 9c        dec   a
0b97: d0 1e     bne   $0bb7
0b99: f5 01 fc  mov   a,$fc01+x
0b9c: da 36     movw  $36,ya
0b9e: f5 c1 fb  mov   a,$fbc1+x
0ba1: c4 38     mov   $38,a
0ba3: 3f d6 0c  call  $0cd6
0ba6: d5 c1 fb  mov   $fbc1+x,a
0ba9: d5 01 fb  mov   $fb01+x,a
0bac: e4 36     mov   a,$36
0bae: d5 01 fc  mov   $fc01+x,a
0bb1: 09 c1 d8  or    ($d8),($c1)
0bb4: f5 a1 fa  mov   a,$faa1+x
0bb7: d5 e1 fa  mov   $fae1+x,a
0bba: ba d8     movw  ya,$d8
0bbc: d0 01     bne   $0bbf
0bbe: 6f        ret

0bbf: 7d        mov   a,x
0bc0: 28 0f     and   a,#$0f
0bc2: c4 36     mov   $36,a
0bc4: 9f        xcn   a
0bc5: 5c        lsr   a
0bc6: c4 37     mov   $37,a
0bc8: e4 c1     mov   a,$c1
0bca: 24 d8     and   a,$d8
0bcc: d0 03     bne   $0bd1
0bce: 5f 76 0c  jmp   $0c76

0bd1: 8f 80 38  mov   $38,#$80
0bd4: 03 c0 2d  bbs0  $c0,$0c04
0bd7: e4 c1     mov   a,$c1
0bd9: 24 bd     and   a,$bd
0bdb: d0 27     bne   $0c04
0bdd: c8 10     cmp   x,#$10
0bdf: b0 04     bcs   $0be5
0be1: e4 92     mov   a,$92
0be3: 2f 02     bra   $0be7
0be5: e4 94     mov   a,$94
0be7: 48 80     eor   a,#$80
0be9: 60        clrc
0bea: 95 e1 fb  adc   a,$fbe1+x
0bed: 60        clrc
0bee: 30 09     bmi   $0bf9
0bf0: 95 41 fa  adc   a,$fa41+x
0bf3: 90 0b     bcc   $0c00
0bf5: e8 ff     mov   a,#$ff
0bf7: 2f 07     bra   $0c00
0bf9: 95 41 fa  adc   a,$fa41+x
0bfc: b0 02     bcs   $0c00
0bfe: e8 00     mov   a,#$00
0c00: 48 ff     eor   a,#$ff
0c02: c4 38     mov   $38,a
0c04: f5 01 fa  mov   a,$fa01+x
0c07: fd        mov   y,a
0c08: c4 39     mov   $39,a
0c0a: f5 01 fb  mov   a,$fb01+x
0c0d: 1c        asl   a
0c0e: f0 10     beq   $0c20
0c10: 90 03     bcc   $0c15
0c12: 48 ff     eor   a,#$ff
0c14: bc        inc   a
0c15: cf        mul   ya
0c16: b0 08     bcs   $0c20
0c18: dd        mov   a,y
0c19: 84 39     adc   a,$39
0c1b: 90 02     bcc   $0c1f
0c1d: e8 ff     mov   a,#$ff
0c1f: fd        mov   y,a
0c20: c8 10     cmp   x,#$10
0c22: b0 07     bcs   $0c2b
0c24: e4 86     mov   a,$86
0c26: cf        mul   ya
0c27: e4 ba     mov   a,$ba
0c29: 2f 0c     bra   $0c37
0c2b: e4 c1     mov   a,$c1
0c2d: 24 bd     and   a,$bd
0c2f: f0 04     beq   $0c35
0c31: e8 ff     mov   a,#$ff
0c33: 2f 02     bra   $0c37
0c35: e4 88     mov   a,$88
0c37: cf        mul   ya
0c38: cb 39     mov   $39,y
0c3a: c8 10     cmp   x,#$10
0c3c: 90 06     bcc   $0c44
0c3e: aa c0 60  mov1  c,$0c18,0
0c41: ca 36 00  mov1  $0006,6,c
0c44: e4 38     mov   a,$38
0c46: fd        mov   y,a
0c47: cf        mul   ya
0c48: e4 39     mov   a,$39
0c4a: cf        mul   ya
0c4b: e4 c1     mov   a,$c1
0c4d: 24 c2     and   a,$c2
0c4f: f0 02     beq   $0c53
0c51: 8d 00     mov   y,#$00
0c53: dd        mov   a,y
0c54: eb 36     mov   y,$36
0c56: d6 dc 00  mov   $00dc+y,a
0c59: 5c        lsr   a
0c5a: fd        mov   y,a
0c5b: e4 37     mov   a,$37
0c5d: c8 10     cmp   x,#$10
0c5f: 90 05     bcc   $0c66
0c61: 73 c0 02  bbc3  $c0,$0c66
0c64: 48 01     eor   a,#$01
0c66: c4 f2     mov   $f2,a
0c68: cb f3     mov   $f3,y
0c6a: e4 38     mov   a,$38
0c6c: 48 ff     eor   a,#$ff
0c6e: ea 36 00  not1  $0006,6
0c71: ab 37     inc   $37
0c73: 33 37 d0  bbc1  $37,$0c46
0c76: 22 37     set1  $37
0c78: e4 c1     mov   a,$c1
0c7a: 24 d9     and   a,$d9
0c7c: f0 4f     beq   $0ccd
0c7e: f5 60 fc  mov   a,$fc60+x
0c81: c4 38     mov   $38,a
0c83: f5 61 fc  mov   a,$fc61+x
0c86: c4 39     mov   $39,a
0c88: f5 41 fc  mov   a,$fc41+x
0c8b: fd        mov   y,a
0c8c: f5 40 fc  mov   a,$fc40+x
0c8f: 7a 38     addw  ya,$38
0c91: da 38     movw  $38,ya
0c93: 2d        push  a
0c94: e4 c1     mov   a,$c1
0c96: 24 bd     and   a,$bd
0c98: ae        pop   a
0c99: d0 25     bne   $0cc0
0c9b: c8 10     cmp   x,#$10
0c9d: b0 04     bcs   $0ca3
0c9f: e4 aa     mov   a,$aa
0ca1: 2f 02     bra   $0ca5
0ca3: e4 ac     mov   a,$ac
0ca5: 48 80     eor   a,#$80
0ca7: 0d        push  psw
0ca8: 2d        push  a
0ca9: cf        mul   ya
0caa: da 3a     movw  $3a,ya
0cac: ae        pop   a
0cad: eb 38     mov   y,$38
0caf: cf        mul   ya
0cb0: dd        mov   a,y
0cb1: 8d 00     mov   y,#$00
0cb3: 7a 3a     addw  ya,$3a
0cb5: 8e        pop   psw
0cb6: 30 08     bmi   $0cc0
0cb8: 1c        asl   a
0cb9: 2d        push  a
0cba: dd        mov   a,y
0cbb: 3c        rol   a
0cbc: fd        mov   y,a
0cbd: ae        pop   a
0cbe: 7a 38     addw  ya,$38
0cc0: f8 37     mov   x,$37
0cc2: d8 f2     mov   $f2,x
0cc4: c4 f3     mov   $f3,a
0cc6: 3d        inc   x
0cc7: d8 f2     mov   $f2,x
0cc9: cb f3     mov   $f3,y
0ccb: f8 07     mov   x,$07
0ccd: e4 c1     mov   a,$c1
0ccf: 4e d8 00  tclr1 $00d8
0cd2: 4e d9 00  tclr1 $00d9
0cd5: 6f        ret

0cd6: dd        mov   a,y
0cd7: 28 3f     and   a,#$3f
0cd9: 1c        asl   a
0cda: bc        inc   a
0cdb: f3 37 09  bbc7  $37,$0ce7
0cde: d3 37 06  bbc6  $37,$0ce7
0ce1: f3 38 3e  bbc7  $38,$0d22
0ce4: 8f 00 38  mov   $38,#$00
0ce7: 0b 38     asl   $38
0ce9: d0 29     bne   $0d14
0ceb: eb 36     mov   y,$36
0ced: f0 27     beq   $0d16
0cef: 13 36 09  bbc0  $36,$0cfb
0cf2: 12 36     clr0  $36
0cf4: 5c        lsr   a
0cf5: 5c        lsr   a
0cf6: d0 1e     bne   $0d16
0cf8: bc        inc   a
0cf9: 2f 1b     bra   $0d16
0cfb: 33 36 08  bbc1  $36,$0d06
0cfe: 32 36     clr1  $36
0d00: 5c        lsr   a
0d01: d0 13     bne   $0d16
0d03: bc        inc   a
0d04: 2f 10     bra   $0d16
0d06: 52 36     clr2  $36
0d08: 5c        lsr   a
0d09: c4 3a     mov   $3a,a
0d0b: 5c        lsr   a
0d0c: 60        clrc
0d0d: 84 3a     adc   a,$3a
0d0f: d0 05     bne   $0d16
0d11: bc        inc   a
0d12: 2f 02     bra   $0d16
0d14: e8 00     mov   a,#$00
0d16: 38 40 37  and   $37,#$40
0d19: 0b 37     asl   $37
0d1b: 58 80 37  eor   $37,#$80
0d1e: 04 37     or    a,$37
0d20: 2f 04     bra   $0d26
0d22: e4 38     mov   a,$38
0d24: 08 80     or    a,#$80
0d26: 6f        ret

0d27: f8 f4     mov   x,$f4
0d29: f0 31     beq   $0d5c
0d2b: ba f6     movw  ya,$f6
0d2d: da c5     movw  $c5,ya
0d2f: ba f4     movw  ya,$f4
0d31: da c3     movw  $c3,ya
0d33: c4 f4     mov   $f4,a
0d35: 64 f4     cmp   a,$f4
0d37: f0 fc     beq   $0d35
0d39: 5d        mov   x,a
0d3a: 10 03     bpl   $0d3f
0d3c: 5f 68 0f  jmp   $0f68

0d3f: c8 01     cmp   x,#$01
0d41: f0 1a     beq   $0d5d
0d43: c8 03     cmp   x,#$03
0d45: f0 16     beq   $0d5d
0d47: 8f 00 f4  mov   $f4,#$00
0d4a: c8 02     cmp   x,#$02
0d4c: d0 03     bne   $0d51
0d4e: 5f 8b 0e  jmp   $0e8b

0d51: c8 10     cmp   x,#$10
0d53: 90 07     bcc   $0d5c
0d55: c8 20     cmp   x,#$20
0d57: b0 03     bcs   $0d5c
0d59: 5f 20 0f  jmp   $0f20

0d5c: 6f        ret

0d5d: e8 ff     mov   a,#$ff
0d5f: 8d 5c     mov   y,#$5c
0d61: 3f 38 06  call  $0638
0d64: 8f 00 f1  mov   $f1,#$00
0d67: 8f 24 fa  mov   $fa,#$24
0d6a: 8f 01 f1  mov   $f1,#$01
0d6d: e4 fd     mov   a,$fd
0d6f: 3f 8b 12  call  $128b
0d72: 78 03 c3  cmp   $c3,#$03
0d75: d0 05     bne   $0d7c
0d77: 3f 8d 13  call  $138d
0d7a: e8 00     mov   a,#$00
0d7c: fa c4 ee  mov   ($ee),($c4)
0d7f: fd        mov   y,a
0d80: da bb     movw  $bb,ya
0d82: c4 bd     mov   $bd,a
0d84: da cb     movw  $cb,ya
0d86: da cd     movw  $cd,ya
0d88: da cf     movw  $cf,ya
0d8a: c4 c7     mov   $c7,a
0d8c: c4 c8     mov   $c8,a
0d8e: c4 c9     mov   $c9,a
0d90: 32 c0     clr1  $c0
0d92: da be     movw  $be,ya
0d94: c4 b6     mov   $b6,a
0d96: c4 b9     mov   $b9,a
0d98: c4 9e     mov   $9e,a
0d9a: c4 a0     mov   $a0,a
0d9c: e2 9e     set7  $9e
0d9e: e2 a0     set7  $a0
0da0: c4 a5     mov   $a5,a
0da2: c4 a7     mov   $a7,a
0da4: c4 aa     mov   $aa,a
0da6: c4 ac     mov   $ac,a
0da8: e2 aa     set7  $aa
0daa: e2 ac     set7  $ac
0dac: c4 b1     mov   $b1,a
0dae: c4 b3     mov   $b3,a
0db0: da d8     movw  $d8,ya
0db2: da d1     movw  $d1,ya
0db4: c4 c2     mov   $c2,a
0db6: c4 d3     mov   $d3,a
0db8: da da     movw  $da,ya
0dba: 8f 01 7f  mov   $7f,#$01
0dbd: 8f ff 80  mov   $80,#$ff
0dc0: 8f ff ba  mov   $ba,#$ff
0dc3: e4 fd     mov   a,$fd
0dc5: 68 02     cmp   a,#$02
0dc7: b0 07     bcs   $0dd0
0dc9: eb fd     mov   y,$fd
0dcb: f0 fc     beq   $0dc9
0dcd: bc        inc   a
0dce: 2f f5     bra   $0dc5
0dd0: e8 00     mov   a,#$00
0dd2: 8d 4d     mov   y,#$4d
0dd4: 3f 38 06  call  $0638
0dd7: 8d 0d     mov   y,#$0d
0dd9: 3f 38 06  call  $0638
0ddc: 8d 2c     mov   y,#$2c
0dde: 3f 38 06  call  $0638
0de1: 8d 3c     mov   y,#$3c
0de3: 3f 38 06  call  $0638
0de6: 3f 77 13  call  $1377
0de9: 73 06 03  bbc3  $06,$0def
0dec: 5f 5c 0e  jmp   $0e5c

0def: 69 ee ed  cmp   ($ed),($ee)
0df2: d0 05     bne   $0df9
0df4: 3f 2e 15  call  $152e
0df7: 2f 3b     bra   $0e34
0df9: cd 10     mov   x,#$10
0dfb: f5 ff 1b  mov   a,$1bff+x
0dfe: d4 0d     mov   $0d+x,a
0e00: 1d        dec   x
0e01: d0 f8     bne   $0dfb
0e03: e8 12     mov   a,#$12
0e05: 8d 1c     mov   y,#$1c
0e07: 9a 0e     subw  ya,$0e
0e09: da 08     movw  $08,ya
0e0b: cd 0e     mov   x,#$0e
0e0d: 8f 80 c1  mov   $c1,#$80
0e10: e5 10 1c  mov   a,$1c10
0e13: ec 11 1c  mov   y,$1c11
0e16: da 36     movw  $36,ya
0e18: f4 0e     mov   a,$0e+x
0e1a: fb 0f     mov   y,$0f+x
0e1c: 5a 36     cmpw  ya,$36
0e1e: f0 0e     beq   $0e2e
0e20: 09 c1 bb  or    ($bb),($c1)
0e23: da 36     movw  $36,ya
0e25: 7a 08     addw  ya,$08
0e27: d4 0e     mov   $0e+x,a
0e29: db 0f     mov   $0f+x,y
0e2b: 3f 62 0e  call  $0e62
0e2e: 1d        dec   x
0e2f: 1d        dec   x
0e30: 4b c1     lsr   $c1
0e32: d0 e4     bne   $0e18
0e34: e4 c5     mov   a,$c5
0e36: 28 0f     and   a,#$0f
0e38: f0 03     beq   $0e3d
0e3a: 9f        xcn   a
0e3b: c4 92     mov   $92,a
0e3d: e4 c6     mov   a,$c6
0e3f: 28 f0     and   a,#$f0
0e41: 9f        xcn   a
0e42: 8d 11     mov   y,#$11
0e44: cf        mul   ya
0e45: c4 86     mov   $86,a
0e47: e4 c5     mov   a,$c5
0e49: 28 f0     and   a,#$f0
0e4b: c4 c4     mov   $c4,a
0e4d: e4 c6     mov   a,$c6
0e4f: 28 0f     and   a,#$0f
0e51: 04 c4     or    a,$c4
0e53: c4 c4     mov   $c4,a
0e55: e8 81     mov   a,#$81
0e57: c4 c3     mov   $c3,a
0e59: 3f c7 0f  call  $0fc7
0e5c: cd ff     mov   x,#$ff
0e5e: bd        mov   sp,x
0e5f: 5f 8e 02  jmp   $028e

0e62: 7d        mov   a,x
0e63: 1c        asl   a
0e64: 9c        dec   a
0e65: d4 5e     mov   $5e+x,a
0e67: e8 00     mov   a,#$00
0e69: d5 20 01  mov   $0120+x,a
0e6c: d5 80 fb  mov   $fb80+x,a
0e6f: d5 81 fb  mov   $fb81+x,a
0e72: d5 21 01  mov   $0121+x,a
0e75: d5 40 01  mov   $0140+x,a
0e78: d5 41 01  mov   $0141+x,a
0e7b: d5 e1 fb  mov   $fbe1+x,a
0e7e: d5 e0 fb  mov   $fbe0+x,a
0e81: d5 40 fb  mov   $fb40+x,a
0e84: d5 61 fb  mov   $fb61+x,a
0e87: bc        inc   a
0e88: d4 3e     mov   $3e+x,a
0e8a: 6f        ret

0e8b: fa c4 2e  mov   ($2e),($c4)
0e8e: 8f 00 2f  mov   $2f,#$00
0e91: 0b 2e     asl   $2e
0e93: 2b 2f     rol   $2f
0e95: 0b 2e     asl   $2e
0e97: 2b 2f     rol   $2f
0e99: e8 00     mov   a,#$00
0e9b: 8d 2c     mov   y,#$2c
0e9d: 7a 2e     addw  ya,$2e
0e9f: da 2e     movw  $2e,ya
0ea1: cd 1e     mov   x,#$1e
0ea3: 8d 03     mov   y,#$03
0ea5: 8f 80 c1  mov   $c1,#$80
0ea8: 8f 00 05  mov   $05,#$00
0eab: f7 2e     mov   a,($2e)+y
0ead: f0 15     beq   $0ec4
0eaf: d4 0f     mov   $0f+x,a
0eb1: dc        dec   y
0eb2: f7 2e     mov   a,($2e)+y
0eb4: d4 0e     mov   $0e+x,a
0eb6: 09 c1 05  or    ($05),($c1)
0eb9: 3f 62 0e  call  $0e62
0ebc: bb 3e     inc   $3e+x
0ebe: 1d        dec   x
0ebf: 1d        dec   x
0ec0: 4b c1     lsr   $c1
0ec2: 2f 01     bra   $0ec5
0ec4: dc        dec   y
0ec5: dc        dec   y
0ec6: 10 e3     bpl   $0eab
0ec8: e4 bc     mov   a,$bc
0eca: 04 05     or    a,$05
0ecc: 4e be 00  tclr1 $00be
0ecf: 4e d2 00  tclr1 $00d2
0ed2: 0e bf 00  tset1 $00bf
0ed5: c4 04     mov   $04,a
0ed7: cd 1e     mov   x,#$1e
0ed9: 8f 80 c1  mov   $c1,#$80
0edc: 0b 04     asl   $04
0ede: 90 03     bcc   $0ee3
0ee0: 3f 1c 0a  call  $0a1c
0ee3: 1d        dec   x
0ee4: 1d        dec   x
0ee5: 4b c1     lsr   $c1
0ee7: 73 c1 f2  bbc3  $c1,$0edc
0eea: e4 05     mov   a,$05
0eec: c4 bc     mov   $bc,a
0eee: 4e c7 00  tclr1 $00c7
0ef1: 4e c9 00  tclr1 $00c9
0ef4: 4e c8 00  tclr1 $00c8
0ef7: e4 c6     mov   a,$c6
0ef9: f0 24     beq   $0f1f
0efb: 28 f0     and   a,#$f0
0efd: f0 02     beq   $0f01
0eff: c4 94     mov   $94,a
0f01: e4 c5     mov   a,$c5
0f03: 28 0f     and   a,#$0f
0f05: 8d 11     mov   y,#$11
0f07: cf        mul   ya
0f08: c4 88     mov   $88,a
0f0a: e4 c5     mov   a,$c5
0f0c: 28 f0     and   a,#$f0
0f0e: c4 c4     mov   $c4,a
0f10: e4 c6     mov   a,$c6
0f12: 28 0f     and   a,#$0f
0f14: 04 c4     or    a,$c4
0f16: c4 c4     mov   $c4,a
0f18: e8 85     mov   a,#$85
0f1a: c4 c3     mov   $c3,a
0f1c: 5f 45 10  jmp   $1045

0f1f: 6f        ret

0f20: 7d        mov   a,x
0f21: 28 0f     and   a,#$0f
0f23: 1c        asl   a
0f24: fd        mov   y,a
0f25: cd 20     mov   x,#$20
0f27: e4 bc     mov   a,$bc
0f29: 04 bd     or    a,$bd
0f2b: 8f 80 c1  mov   $c1,#$80
0f2e: 1d        dec   x
0f2f: 1d        dec   x
0f30: 1c        asl   a
0f31: 90 07     bcc   $0f3a
0f33: 4b c1     lsr   $c1
0f35: 73 c1 f6  bbc3  $c1,$0f2e
0f38: 0b c1     asl   $c1
0f3a: f6 9e 18  mov   a,$189e+y
0f3d: f0 28     beq   $0f67
0f3f: d4 0f     mov   $0f+x,a
0f41: f6 9d 18  mov   a,$189d+y
0f44: d4 0e     mov   $0e+x,a
0f46: 3f 62 0e  call  $0e62
0f49: bb 3e     inc   $3e+x
0f4b: d8 07     mov   $07,x
0f4d: 3f 1c 0a  call  $0a1c
0f50: e4 c1     mov   a,$c1
0f52: 4e d2 00  tclr1 $00d2
0f55: 0e bf 00  tset1 $00bf
0f58: 4e be 00  tclr1 $00be
0f5b: 4e c7 00  tclr1 $00c7
0f5e: 4e c9 00  tclr1 $00c9
0f61: 4e c8 00  tclr1 $00c8
0f64: 09 c1 bd  or    ($bd),($c1)
0f67: 6f        ret

0f68: c8 fe     cmp   x,#$fe
0f6a: d0 03     bne   $0f6f
0f6c: 5f 8b 12  jmp   $128b

0f6f: 8f 00 f4  mov   $f4,#$00
0f72: c8 83     cmp   x,#$83
0f74: b0 03     bcs   $0f79
0f76: 5f c7 0f  jmp   $0fc7

0f79: c8 86     cmp   x,#$86
0f7b: b0 03     bcs   $0f80
0f7d: 5f 45 10  jmp   $1045

0f80: c8 89     cmp   x,#$89
0f82: b0 03     bcs   $0f87
0f84: 5f c2 10  jmp   $10c2

0f87: c8 8c     cmp   x,#$8c
0f89: b0 03     bcs   $0f8e
0f8b: 5f 43 11  jmp   $1143

0f8e: c8 f0     cmp   x,#$f0
0f90: 90 34     bcc   $0fc6
0f92: c8 f3     cmp   x,#$f3
0f94: b0 03     bcs   $0f99
0f96: 5f d3 11  jmp   $11d3

0f99: c8 f5     cmp   x,#$f5
0f9b: b0 03     bcs   $0fa0
0f9d: 5f c6 11  jmp   $11c6

0fa0: d0 03     bne   $0fa5
0fa2: 5f 1d 12  jmp   $121d

0fa5: c8 f8     cmp   x,#$f8
0fa7: b0 03     bcs   $0fac
0fa9: 5f 2f 12  jmp   $122f

0fac: c8 fb     cmp   x,#$fb
0fae: b0 03     bcs   $0fb3
0fb0: 5f 46 13  jmp   $1346

0fb3: d0 03     bne   $0fb8
0fb5: 5f 24 12  jmp   $1224

0fb8: 68 fe     cmp   a,#$fe
0fba: b0 03     bcs   $0fbf
0fbc: 5f 28 12  jmp   $1228

0fbf: c8 ff     cmp   x,#$ff
0fc1: d0 03     bne   $0fc6
0fc3: 5f 60 13  jmp   $1360

0fc6: 6f        ret

0fc7: e4 c4     mov   a,$c4
0fc9: 28 0f     and   a,#$0f
0fcb: 8d 11     mov   y,#$11
0fcd: cf        mul   ya
0fce: c4 c5     mov   $c5,a
0fd0: 38 f0 c4  and   $c4,#$f0
0fd3: 9f        xcn   a
0fd4: c4 c5     mov   $c5,a
0fd6: cd 00     mov   x,#$00
0fd8: e4 c3     mov   a,$c3
0fda: 13 c3 03  bbc0  $c3,$0fe0
0fdd: bc        inc   a
0fde: 2f 0d     bra   $0fed
0fe0: 33 c3 05  bbc1  $c3,$0fe8
0fe3: bc        inc   a
0fe4: cd 02     mov   x,#$02
0fe6: 2f 05     bra   $0fed
0fe8: ab c3     inc   $c3
0fea: 60        clrc
0feb: 88 03     adc   a,#$03
0fed: c4 36     mov   $36,a
0fef: eb c5     mov   y,$c5
0ff1: e4 c4     mov   a,$c4
0ff3: d4 8d     mov   $8d+x,a
0ff5: d0 0a     bne   $1001
0ff7: db 86     mov   $86+x,y
0ff9: d4 85     mov   $85+x,a
0ffb: d4 8a     mov   $8a+x,a
0ffd: d4 89     mov   $89+x,a
0fff: 2f 35     bra   $1036
1001: dd        mov   a,y
1002: 80        setc
1003: b4 86     sbc   a,$86+x
1005: f0 ec     beq   $0ff3
1007: 4d        push  x
1008: 0d        push  psw
1009: b0 03     bcs   $100e
100b: 48 ff     eor   a,#$ff
100d: bc        inc   a
100e: f8 c4     mov   x,$c4
1010: 8d 00     mov   y,#$00
1012: 9e        div   ya,x
1013: c4 39     mov   $39,a
1015: e8 00     mov   a,#$00
1017: 9e        div   ya,x
1018: c4 38     mov   $38,a
101a: ba 38     movw  ya,$38
101c: d0 02     bne   $1020
101e: ab 38     inc   $38
1020: 8e        pop   psw
1021: b0 08     bcs   $102b
1023: 58 ff 38  eor   $38,#$ff
1026: 58 ff 39  eor   $39,#$ff
1029: 3a 38     incw  $38
102b: ba 38     movw  ya,$38
102d: ce        pop   x
102e: d4 89     mov   $89+x,a
1030: db 8a     mov   $8a+x,y
1032: e8 00     mov   a,#$00
1034: d4 85     mov   $85+x,a
1036: ab c3     inc   $c3
1038: 69 36 c3  cmp   ($c3),($36)
103b: f0 04     beq   $1041
103d: 3d        inc   x
103e: 3d        inc   x
103f: 2f ae     bra   $0fef
1041: 8f ff d8  mov   $d8,#$ff
1044: 6f        ret

1045: ab c3     inc   $c3
1047: e4 c4     mov   a,$c4
1049: 28 0f     and   a,#$0f
104b: f0 71     beq   $10be
104d: 38 f0 c4  and   $c4,#$f0
1050: 9f        xcn   a
1051: c4 c5     mov   $c5,a
1053: cd 00     mov   x,#$00
1055: e4 c3     mov   a,$c3
1057: 13 c3 03  bbc0  $c3,$105d
105a: bc        inc   a
105b: 2f 0d     bra   $106a
105d: 33 c3 05  bbc1  $c3,$1065
1060: bc        inc   a
1061: cd 02     mov   x,#$02
1063: 2f 05     bra   $106a
1065: ab c3     inc   $c3
1067: 60        clrc
1068: 88 03     adc   a,#$03
106a: c4 36     mov   $36,a
106c: eb c5     mov   y,$c5
106e: e4 c4     mov   a,$c4
1070: d4 99     mov   $99+x,a
1072: d0 0a     bne   $107e
1074: db 92     mov   $92+x,y
1076: d4 91     mov   $91+x,a
1078: d4 96     mov   $96+x,a
107a: d4 95     mov   $95+x,a
107c: 2f 35     bra   $10b3
107e: dd        mov   a,y
107f: 80        setc
1080: b4 92     sbc   a,$92+x
1082: f0 ec     beq   $1070
1084: 4d        push  x
1085: 0d        push  psw
1086: b0 03     bcs   $108b
1088: 48 ff     eor   a,#$ff
108a: bc        inc   a
108b: f8 c4     mov   x,$c4
108d: 8d 00     mov   y,#$00
108f: 9e        div   ya,x
1090: c4 39     mov   $39,a
1092: e8 00     mov   a,#$00
1094: 9e        div   ya,x
1095: c4 38     mov   $38,a
1097: ba 38     movw  ya,$38
1099: d0 02     bne   $109d
109b: ab 38     inc   $38
109d: 8e        pop   psw
109e: b0 08     bcs   $10a8
10a0: 58 ff 38  eor   $38,#$ff
10a3: 58 ff 39  eor   $39,#$ff
10a6: 3a 38     incw  $38
10a8: ba 38     movw  ya,$38
10aa: ce        pop   x
10ab: d4 95     mov   $95+x,a
10ad: db 96     mov   $96+x,y
10af: e8 00     mov   a,#$00
10b1: d4 91     mov   $91+x,a
10b3: ab c3     inc   $c3
10b5: 69 36 c3  cmp   ($c3),($36)
10b8: f0 04     beq   $10be
10ba: 3d        inc   x
10bb: 3d        inc   x
10bc: 2f ae     bra   $106c
10be: 8f ff d8  mov   $d8,#$ff
10c1: 6f        ret

10c2: e4 c4     mov   a,$c4
10c4: 28 07     and   a,#$07
10c6: f0 08     beq   $10d0
10c8: 8d 12     mov   y,#$12
10ca: cf        mul   ya
10cb: 73 c4 02  bbc3  $c4,$10d0
10ce: 48 ff     eor   a,#$ff
10d0: 48 80     eor   a,#$80
10d2: c4 c5     mov   $c5,a
10d4: 38 f0 c4  and   $c4,#$f0
10d7: cd 00     mov   x,#$00
10d9: e4 c3     mov   a,$c3
10db: 13 c3 03  bbc0  $c3,$10e1
10de: bc        inc   a
10df: 2f 0d     bra   $10ee
10e1: 23 c3 05  bbs1  $c3,$10e9
10e4: bc        inc   a
10e5: cd 02     mov   x,#$02
10e7: 2f 05     bra   $10ee
10e9: ab c3     inc   $c3
10eb: 60        clrc
10ec: 88 03     adc   a,#$03
10ee: c4 36     mov   $36,a
10f0: eb c5     mov   y,$c5
10f2: e4 c4     mov   a,$c4
10f4: d4 a5     mov   $a5+x,a
10f6: d0 0a     bne   $1102
10f8: db 9e     mov   $9e+x,y
10fa: d4 9d     mov   $9d+x,a
10fc: d4 a2     mov   $a2+x,a
10fe: d4 a1     mov   $a1+x,a
1100: 2f 35     bra   $1137
1102: dd        mov   a,y
1103: 80        setc
1104: b4 9e     sbc   a,$9e+x
1106: f0 ec     beq   $10f4
1108: 4d        push  x
1109: 0d        push  psw
110a: b0 03     bcs   $110f
110c: 48 ff     eor   a,#$ff
110e: bc        inc   a
110f: f8 c4     mov   x,$c4
1111: 8d 00     mov   y,#$00
1113: 9e        div   ya,x
1114: c4 39     mov   $39,a
1116: e8 00     mov   a,#$00
1118: 9e        div   ya,x
1119: c4 38     mov   $38,a
111b: ba 38     movw  ya,$38
111d: d0 02     bne   $1121
111f: ab 38     inc   $38
1121: 8e        pop   psw
1122: b0 08     bcs   $112c
1124: 58 ff 38  eor   $38,#$ff
1127: 58 ff 39  eor   $39,#$ff
112a: 3a 38     incw  $38
112c: ba 38     movw  ya,$38
112e: ce        pop   x
112f: d4 a1     mov   $a1+x,a
1131: db a2     mov   $a2+x,y
1133: e8 00     mov   a,#$00
1135: d4 9d     mov   $9d+x,a
1137: ab c3     inc   $c3
1139: 69 36 c3  cmp   ($c3),($36)
113c: f0 04     beq   $1142
113e: 3d        inc   x
113f: 3d        inc   x
1140: 2f ae     bra   $10f0
1142: 6f        ret

1143: ab c3     inc   $c3
1145: e4 c4     mov   a,$c4
1147: 28 07     and   a,#$07
1149: f0 08     beq   $1153
114b: 8d 12     mov   y,#$12
114d: cf        mul   ya
114e: 73 c4 02  bbc3  $c4,$1153
1151: 48 ff     eor   a,#$ff
1153: 48 80     eor   a,#$80
1155: c4 c5     mov   $c5,a
1157: 38 f0 c4  and   $c4,#$f0
115a: cd 00     mov   x,#$00
115c: e4 c3     mov   a,$c3
115e: 13 c3 03  bbc0  $c3,$1164
1161: bc        inc   a
1162: 2f 0d     bra   $1171
1164: 23 c3 05  bbs1  $c3,$116c
1167: bc        inc   a
1168: cd 02     mov   x,#$02
116a: 2f 05     bra   $1171
116c: ab c3     inc   $c3
116e: 60        clrc
116f: 88 03     adc   a,#$03
1171: c4 36     mov   $36,a
1173: eb c5     mov   y,$c5
1175: e4 c4     mov   a,$c4
1177: d4 b1     mov   $b1+x,a
1179: d0 0a     bne   $1185
117b: db aa     mov   $aa+x,y
117d: d4 a9     mov   $a9+x,a
117f: d4 ae     mov   $ae+x,a
1181: d4 ad     mov   $ad+x,a
1183: 2f 35     bra   $11ba
1185: dd        mov   a,y
1186: 80        setc
1187: b4 aa     sbc   a,$aa+x
1189: f0 ec     beq   $1177
118b: 4d        push  x
118c: 0d        push  psw
118d: b0 03     bcs   $1192
118f: 48 ff     eor   a,#$ff
1191: bc        inc   a
1192: f8 c4     mov   x,$c4
1194: 8d 00     mov   y,#$00
1196: 9e        div   ya,x
1197: c4 39     mov   $39,a
1199: e8 00     mov   a,#$00
119b: 9e        div   ya,x
119c: c4 38     mov   $38,a
119e: ba 38     movw  ya,$38
11a0: d0 02     bne   $11a4
11a2: ab 38     inc   $38
11a4: 8e        pop   psw
11a5: b0 08     bcs   $11af
11a7: 58 ff 38  eor   $38,#$ff
11aa: 58 ff 39  eor   $39,#$ff
11ad: 3a 38     incw  $38
11af: ba 38     movw  ya,$38
11b1: ce        pop   x
11b2: d4 ad     mov   $ad+x,a
11b4: db ae     mov   $ae+x,y
11b6: e8 00     mov   a,#$00
11b8: d4 a9     mov   $a9+x,a
11ba: ab c3     inc   $c3
11bc: 69 36 c3  cmp   ($c3),($36)
11bf: f0 04     beq   $11c5
11c1: 3d        inc   x
11c2: 3d        inc   x
11c3: 2f ae     bra   $1173
11c5: 6f        ret

11c6: 13 c3 04  bbc0  $c3,$11cd
11c9: 12 c0     clr0  $c0
11cb: 2f 02     bra   $11cf
11cd: 02 c0     set0  $c0
11cf: 8f ff d8  mov   $d8,#$ff
11d2: 6f        ret

11d3: 23 c3 29  bbs1  $c3,$11ff
11d6: e4 bc     mov   a,$bc
11d8: 04 bd     or    a,$bd
11da: 48 ff     eor   a,#$ff
11dc: 0e bf 00  tset1 $00bf
11df: 4e be 00  tclr1 $00be
11e2: 4e c7 00  tclr1 $00c7
11e5: 4e c9 00  tclr1 $00c9
11e8: 4e c8 00  tclr1 $00c8
11eb: e8 00     mov   a,#$00
11ed: c4 bb     mov   $bb,a
11ef: c4 da     mov   $da,a
11f1: c4 cb     mov   $cb,a
11f3: c4 cf     mov   $cf,a
11f5: c4 cd     mov   $cd,a
11f7: 9c        dec   a
11f8: c4 ed     mov   $ed,a
11fa: c4 ee     mov   $ee,a
11fc: 03 c3 1d  bbs0  $c3,$121c
11ff: e4 bc     mov   a,$bc
1201: 0e bf 00  tset1 $00bf
1204: 4e be 00  tclr1 $00be
1207: c4 04     mov   $04,a
1209: cd 1e     mov   x,#$1e
120b: 8f 80 c1  mov   $c1,#$80
120e: 0b 04     asl   $04
1210: 90 03     bcc   $1215
1212: 3f 1c 0a  call  $0a1c
1215: 1d        dec   x
1216: 1d        dec   x
1217: 4b c1     lsr   $c1
1219: b3 c1 f2  bbc5  $c1,$120e
121c: 6f        ret

121d: fa c4 c2  mov   ($c2),($c4)
1220: 8f ff d8  mov   $d8,#$ff
1223: 6f        ret

1224: fa bb d3  mov   ($d3),($bb)
1227: 6f        ret

1228: aa c3 00  mov1  c,$0018,3
122b: ca c0 60  mov1  $0c18,0,c
122e: 6f        ret

122f: 03 c3 3a  bbs0  $c3,$126c
1232: 8d 05     mov   y,#$05
1234: cb f2     mov   $f2,y
1236: e4 f3     mov   a,$f3
1238: 28 7f     and   a,#$7f
123a: c4 f3     mov   $f3,a
123c: dd        mov   a,y
123d: 60        clrc
123e: 88 10     adc   a,#$10
1240: fd        mov   y,a
1241: 10 f1     bpl   $1234
1243: cd 00     mov   x,#$00
1245: 8d 00     mov   y,#$00
1247: cb f2     mov   $f2,y
1249: d8 f3     mov   $f3,x
124b: fc        inc   y
124c: cb f2     mov   $f2,y
124e: d8 f3     mov   $f3,x
1250: dd        mov   a,y
1251: 60        clrc
1252: 88 0f     adc   a,#$0f
1254: fd        mov   y,a
1255: 10 f0     bpl   $1247
1257: ba bb     movw  ya,$bb
1259: f0 06     beq   $1261
125b: da da     movw  $da,ya
125d: ba 00     movw  ya,$00
125f: da bb     movw  $bb,ya
1261: c4 be     mov   $be,a
1263: 8d 10     mov   y,#$10
1265: d6 db 00  mov   $00db+y,a
1268: fe fb     dbnz  y,$1265
126a: 2f 1e     bra   $128a
126c: 8d 05     mov   y,#$05
126e: cb f2     mov   $f2,y
1270: e4 f3     mov   a,$f3
1272: 08 80     or    a,#$80
1274: c4 f3     mov   $f3,a
1276: dd        mov   a,y
1277: 60        clrc
1278: 88 10     adc   a,#$10
127a: fd        mov   y,a
127b: 10 f1     bpl   $126e
127d: ba da     movw  ya,$da
127f: f0 09     beq   $128a
1281: 8f ff d8  mov   $d8,#$ff
1284: da bb     movw  $bb,ya
1286: ba 00     movw  ya,$00
1288: da da     movw  $da,ya
128a: 6f        ret

128b: e4 f5     mov   a,$f5
128d: c4 06     mov   $06,a
128f: 28 07     and   a,#$07
1291: c4 f5     mov   $f5,a
1293: d0 04     bne   $1299
1295: d8 f4     mov   $f4,x
1297: 2f 1b     bra   $12b4
1299: 1c        asl   a
129a: 2d        push  a
129b: ba f6     movw  ya,$f6
129d: da 2e     movw  $2e,ya
129f: ee        pop   y
12a0: f6 bb 17  mov   a,$17bb+y
12a3: 2d        push  a
12a4: f6 ba 17  mov   a,$17ba+y
12a7: 2d        push  a
12a8: 8d 00     mov   y,#$00
12aa: f8 f4     mov   x,$f4
12ac: d8 f4     mov   $f4,x
12ae: 3e f4     cmp   x,$f4
12b0: f0 fc     beq   $12ae
12b2: f8 f4     mov   x,$f4
12b4: 6f        ret

12b5: e4 f5     mov   a,$f5
12b7: d7 2e     mov   ($2e)+y,a
12b9: 3a 2e     incw  $2e
12bb: e4 f6     mov   a,$f6
12bd: d7 2e     mov   ($2e)+y,a
12bf: 3a 2e     incw  $2e
12c1: e4 f7     mov   a,$f7
12c3: d7 2e     mov   ($2e)+y,a
12c5: 3a 2e     incw  $2e
12c7: d8 f4     mov   $f4,x
12c9: 3e f4     cmp   x,$f4
12cb: f0 fc     beq   $12c9
12cd: f8 f4     mov   x,$f4
12cf: d0 e4     bne   $12b5
12d1: 2f b8     bra   $128b
12d3: e4 f6     mov   a,$f6
12d5: d7 2e     mov   ($2e)+y,a
12d7: 3a 2e     incw  $2e
12d9: e4 f7     mov   a,$f7
12db: d7 2e     mov   ($2e)+y,a
12dd: 3a 2e     incw  $2e
12df: d8 f4     mov   $f4,x
12e1: 3e f4     cmp   x,$f4
12e3: f0 fc     beq   $12e1
12e5: f8 f4     mov   x,$f4
12e7: d0 ea     bne   $12d3
12e9: 2f a0     bra   $128b
12eb: e4 f7     mov   a,$f7
12ed: d7 2e     mov   ($2e)+y,a
12ef: 3a 2e     incw  $2e
12f1: d8 f4     mov   $f4,x
12f3: 3e f4     cmp   x,$f4
12f5: f0 fc     beq   $12f3
12f7: f8 f4     mov   x,$f4
12f9: d0 f0     bne   $12eb
12fb: 2f 8e     bra   $128b
12fd: d8 f4     mov   $f4,x
12ff: 3e f4     cmp   x,$f4
1301: f0 fc     beq   $12ff
1303: f8 f4     mov   x,$f4
1305: d0 f6     bne   $12fd
1307: 5f 8b 12  jmp   $128b

130a: ba f6     movw  ya,$f6
130c: da 30     movw  $30,ya
130e: d8 f4     mov   $f4,x
1310: 3e f4     cmp   x,$f4
1312: f0 fc     beq   $1310
1314: f8 f4     mov   x,$f4
1316: ba f6     movw  ya,$f6
1318: da 36     movw  $36,ya
131a: d8 f4     mov   $f4,x
131c: 8d 00     mov   y,#$00
131e: f7 2e     mov   a,($2e)+y
1320: d7 30     mov   ($30)+y,a
1322: fc        inc   y
1323: d0 04     bne   $1329
1325: ab 2f     inc   $2f
1327: ab 31     inc   $31
1329: 1a 36     decw  $36
132b: d0 f1     bne   $131e
132d: 3e f4     cmp   x,$f4
132f: f0 fc     beq   $132d
1331: f8 f4     mov   x,$f4
1333: f0 0e     beq   $1343
1335: ba f6     movw  ya,$f6
1337: da 2e     movw  $2e,ya
1339: d8 f4     mov   $f4,x
133b: 3e f4     cmp   x,$f4
133d: f0 fc     beq   $133b
133f: f8 f4     mov   x,$f4
1341: 2f c7     bra   $130a
1343: 5f 8b 12  jmp   $128b

1346: ea c3 20  not1  $0418,3
1349: aa c3 20  mov1  c,$0418,3
134c: ca c0 20  mov1  $0418,0,c
134f: b0 04     bcs   $1355
1351: e8 24     mov   a,#$24
1353: 2f 02     bra   $1357
1355: e8 01     mov   a,#$01
1357: 8f 00 f1  mov   $f1,#$00
135a: c4 fa     mov   $fa,a
135c: 8f 01 f1  mov   $f1,#$01
135f: 6f        ret

1360: e8 ff     mov   a,#$ff
1362: 8d fe     mov   y,#$fe
1364: 5a c3     cmpw  ya,$c3
1366: d0 0c     bne   $1374
1368: e8 fd     mov   a,#$fd
136a: 8d fc     mov   y,#$fc
136c: 5a c5     cmpw  ya,$c5
136e: d0 04     bne   $1374
1370: e2 c0     set7  $c0
1372: 2f 02     bra   $1376
1374: f2 c0     clr7  $c0
1376: 6f        ret

1377: e8 00     mov   a,#$00
1379: 8d d2     mov   y,#$d2
137b: da 2e     movw  $2e,ya
137d: e8 00     mov   a,#$00
137f: fd        mov   y,a
1380: d7 2e     mov   ($2e)+y,a
1382: fc        inc   y
1383: d0 fb     bne   $1380
1385: ab 2f     inc   $2f
1387: 78 fa 2f  cmp   $2f,#$fa
138a: d0 f4     bne   $1380
138c: 6f        ret

138d: fa ee ed  mov   ($ed),($ee)
1390: e4 82     mov   a,$82
1392: c5 60 fd  mov   $fd60,a
1395: e4 b9     mov   a,$b9
1397: c5 61 fd  mov   $fd61,a
139a: e4 bb     mov   a,$bb
139c: c5 62 fd  mov   $fd62,a
139f: e4 cb     mov   a,$cb
13a1: c5 63 fd  mov   $fd63,a
13a4: e4 cd     mov   a,$cd
13a6: c5 64 fd  mov   $fd64,a
13a9: e4 cf     mov   a,$cf
13ab: c5 65 fd  mov   $fd65,a
13ae: e4 d1     mov   a,$d1
13b0: c5 66 fd  mov   $fd66,a
13b3: e4 d3     mov   a,$d3
13b5: c5 67 fd  mov   $fd67,a
13b8: e4 d4     mov   a,$d4
13ba: c5 68 fd  mov   $fd68,a
13bd: e4 d6     mov   a,$d6
13bf: c5 69 fd  mov   $fd69,a
13c2: e4 d7     mov   a,$d7
13c4: c5 6a fd  mov   $fd6a,a
13c7: ba 08     movw  ya,$08
13c9: c5 6b fd  mov   $fd6b,a
13cc: cc 6c fd  mov   $fd6c,y
13cf: ba 7e     movw  ya,$7e
13d1: c5 6d fd  mov   $fd6d,a
13d4: cc 6e fd  mov   $fd6e,y
13d7: ba 80     movw  ya,$80
13d9: c5 6f fd  mov   $fd6f,a
13dc: cc 70 fd  mov   $fd70,y
13df: ba 83     movw  ya,$83
13e1: c5 71 fd  mov   $fd71,a
13e4: cc 72 fd  mov   $fd72,y
13e7: ba b5     movw  ya,$b5
13e9: c5 73 fd  mov   $fd73,a
13ec: cc 74 fd  mov   $fd74,y
13ef: ba b7     movw  ya,$b7
13f1: c5 75 fd  mov   $fd75,a
13f4: cc 76 fd  mov   $fd76,y
13f7: cd 0e     mov   x,#$0e
13f9: f4 3e     mov   a,$3e+x
13fb: d5 77 fd  mov   $fd77+x,a
13fe: f4 3f     mov   a,$3f+x
1400: d5 78 fd  mov   $fd78+x,a
1403: f4 5e     mov   a,$5e+x
1405: d5 87 fd  mov   $fd87+x,a
1408: f4 5f     mov   a,$5f+x
140a: d5 88 fd  mov   $fd88+x,a
140d: f5 00 01  mov   a,$0100+x
1410: d5 97 fd  mov   $fd97+x,a
1413: f5 01 01  mov   a,$0101+x
1416: d5 98 fd  mov   $fd98+x,a
1419: f5 20 01  mov   a,$0120+x
141c: d5 a7 fd  mov   $fda7+x,a
141f: f5 21 01  mov   a,$0121+x
1422: d5 a8 fd  mov   $fda8+x,a
1425: f5 40 01  mov   a,$0140+x
1428: d5 b7 fd  mov   $fdb7+x,a
142b: f5 41 01  mov   a,$0141+x
142e: d5 b8 fd  mov   $fdb8+x,a
1431: f5 60 01  mov   a,$0160+x
1434: d5 c7 fd  mov   $fdc7+x,a
1437: f5 61 01  mov   a,$0161+x
143a: d5 c8 fd  mov   $fdc8+x,a
143d: f5 80 fa  mov   a,$fa80+x
1440: d5 d7 fd  mov   $fdd7+x,a
1443: f5 81 fa  mov   a,$fa81+x
1446: d5 d8 fd  mov   $fdd8+x,a
1449: f5 a0 fa  mov   a,$faa0+x
144c: d5 e7 fd  mov   $fde7+x,a
144f: f5 a1 fa  mov   a,$faa1+x
1452: d5 e8 fd  mov   $fde8+x,a
1455: f5 c0 fa  mov   a,$fac0+x
1458: d5 f7 fd  mov   $fdf7+x,a
145b: 1d        dec   x
145c: 1d        dec   x
145d: 10 9a     bpl   $13f9
145f: cd 0e     mov   x,#$0e
1461: f5 c1 fa  mov   a,$fac1+x
1464: d5 f8 fd  mov   $fdf8+x,a
1467: f5 e0 fa  mov   a,$fae0+x
146a: d5 07 fe  mov   $fe07+x,a
146d: f5 e1 fa  mov   a,$fae1+x
1470: d5 08 fe  mov   $fe08+x,a
1473: f5 00 fb  mov   a,$fb00+x
1476: d5 17 fe  mov   $fe17+x,a
1479: f5 40 fb  mov   a,$fb40+x
147c: d5 27 fe  mov   $fe27+x,a
147f: f5 41 fb  mov   a,$fb41+x
1482: d5 28 fe  mov   $fe28+x,a
1485: f5 60 fb  mov   a,$fb60+x
1488: d5 37 fe  mov   $fe37+x,a
148b: f5 61 fb  mov   a,$fb61+x
148e: d5 38 fe  mov   $fe38+x,a
1491: f5 c0 fb  mov   a,$fbc0+x
1494: d5 47 fe  mov   $fe47+x,a
1497: f5 c1 fb  mov   a,$fbc1+x
149a: d5 48 fe  mov   $fe48+x,a
149d: f5 01 fb  mov   a,$fb01+x
14a0: d5 18 fe  mov   $fe18+x,a
14a3: f5 00 fc  mov   a,$fc00+x
14a6: d5 57 fe  mov   $fe57+x,a
14a9: f5 01 fc  mov   a,$fc01+x
14ac: d5 58 fe  mov   $fe58+x,a
14af: 1d        dec   x
14b0: 1d        dec   x
14b1: 10 ae     bpl   $1461
14b3: cd 3f     mov   x,#$3f
14b5: f5 e0 fc  mov   a,$fce0+x
14b8: d5 57 ff  mov   $ff57+x,a
14bb: 1d        dec   x
14bc: c8 20     cmp   x,#$20
14be: b0 f5     bcs   $14b5
14c0: f5 e0 fc  mov   a,$fce0+x
14c3: d5 57 ff  mov   $ff57+x,a
14c6: f5 a0 fc  mov   a,$fca0+x
14c9: d5 37 ff  mov   $ff37+x,a
14cc: 1d        dec   x
14cd: c8 10     cmp   x,#$10
14cf: b0 ef     bcs   $14c0
14d1: f5 e0 fc  mov   a,$fce0+x
14d4: d5 57 ff  mov   $ff57+x,a
14d7: f5 a0 fc  mov   a,$fca0+x
14da: d5 37 ff  mov   $ff37+x,a
14dd: f4 0e     mov   a,$0e+x
14df: d5 67 fe  mov   $fe67+x,a
14e2: f5 00 fa  mov   a,$fa00+x
14e5: d5 77 fe  mov   $fe77+x,a
14e8: f5 20 fa  mov   a,$fa20+x
14eb: d5 87 fe  mov   $fe87+x,a
14ee: f5 40 fa  mov   a,$fa40+x
14f1: d5 97 fe  mov   $fe97+x,a
14f4: f5 60 fa  mov   a,$fa60+x
14f7: d5 a7 fe  mov   $fea7+x,a
14fa: f5 20 fb  mov   a,$fb20+x
14fd: d5 b7 fe  mov   $feb7+x,a
1500: f5 80 fb  mov   a,$fb80+x
1503: d5 c7 fe  mov   $fec7+x,a
1506: f5 a0 fb  mov   a,$fba0+x
1509: d5 d7 fe  mov   $fed7+x,a
150c: f5 e0 fb  mov   a,$fbe0+x
150f: d5 e7 fe  mov   $fee7+x,a
1512: f5 20 fc  mov   a,$fc20+x
1515: d5 f7 fe  mov   $fef7+x,a
1518: f5 40 fc  mov   a,$fc40+x
151b: d5 07 ff  mov   $ff07+x,a
151e: f5 60 fc  mov   a,$fc60+x
1521: d5 17 ff  mov   $ff17+x,a
1524: f5 80 fc  mov   a,$fc80+x
1527: d5 27 ff  mov   $ff27+x,a
152a: 1d        dec   x
152b: 10 a4     bpl   $14d1
152d: 6f        ret

152e: 8f ff ed  mov   $ed,#$ff
1531: e5 60 fd  mov   a,$fd60
1534: c4 82     mov   $82,a
1536: e5 61 fd  mov   a,$fd61
1539: c4 b9     mov   $b9,a
153b: e5 62 fd  mov   a,$fd62
153e: c4 bb     mov   $bb,a
1540: e5 63 fd  mov   a,$fd63
1543: c4 cb     mov   $cb,a
1545: c4 c7     mov   $c7,a
1547: e5 64 fd  mov   a,$fd64
154a: c4 cd     mov   $cd,a
154c: c4 c8     mov   $c8,a
154e: e5 65 fd  mov   a,$fd65
1551: c4 cf     mov   $cf,a
1553: c4 c9     mov   $c9,a
1555: e5 66 fd  mov   a,$fd66
1558: c4 d1     mov   $d1,a
155a: e5 67 fd  mov   a,$fd67
155d: c4 d3     mov   $d3,a
155f: e5 68 fd  mov   a,$fd68
1562: c4 d4     mov   $d4,a
1564: c4 ca     mov   $ca,a
1566: e5 6a fd  mov   a,$fd6a
1569: c4 d7     mov   $d7,a
156b: e5 69 fd  mov   a,$fd69
156e: 3f 78 07  call  $0778
1571: e5 6b fd  mov   a,$fd6b
1574: ec 6c fd  mov   y,$fd6c
1577: da 08     movw  $08,ya
1579: e5 6d fd  mov   a,$fd6d
157c: ec 6e fd  mov   y,$fd6e
157f: da 7e     movw  $7e,ya
1581: e5 6f fd  mov   a,$fd6f
1584: ec 70 fd  mov   y,$fd70
1587: da 80     movw  $80,ya
1589: e5 71 fd  mov   a,$fd71
158c: ec 72 fd  mov   y,$fd72
158f: da 83     movw  $83,ya
1591: e5 73 fd  mov   a,$fd73
1594: ec 74 fd  mov   y,$fd74
1597: da b5     movw  $b5,ya
1599: e5 75 fd  mov   a,$fd75
159c: ec 76 fd  mov   y,$fd76
159f: da b7     movw  $b7,ya
15a1: cd 0e     mov   x,#$0e
15a3: f5 77 fd  mov   a,$fd77+x
15a6: d4 3e     mov   $3e+x,a
15a8: f5 78 fd  mov   a,$fd78+x
15ab: d4 3f     mov   $3f+x,a
15ad: f5 87 fd  mov   a,$fd87+x
15b0: d4 5e     mov   $5e+x,a
15b2: f5 88 fd  mov   a,$fd88+x
15b5: d4 5f     mov   $5f+x,a
15b7: f5 97 fd  mov   a,$fd97+x
15ba: d5 00 01  mov   $0100+x,a
15bd: f5 98 fd  mov   a,$fd98+x
15c0: d5 01 01  mov   $0101+x,a
15c3: f5 a7 fd  mov   a,$fda7+x
15c6: d5 20 01  mov   $0120+x,a
15c9: f5 a8 fd  mov   a,$fda8+x
15cc: d5 21 01  mov   $0121+x,a
15cf: f5 b7 fd  mov   a,$fdb7+x
15d2: d5 40 01  mov   $0140+x,a
15d5: f5 b8 fd  mov   a,$fdb8+x
15d8: d5 41 01  mov   $0141+x,a
15db: f5 c7 fd  mov   a,$fdc7+x
15de: d5 60 01  mov   $0160+x,a
15e1: f5 c8 fd  mov   a,$fdc8+x
15e4: d5 61 01  mov   $0161+x,a
15e7: f5 d7 fd  mov   a,$fdd7+x
15ea: d5 80 fa  mov   $fa80+x,a
15ed: f5 d8 fd  mov   a,$fdd8+x
15f0: d5 81 fa  mov   $fa81+x,a
15f3: f5 e7 fd  mov   a,$fde7+x
15f6: d5 a0 fa  mov   $faa0+x,a
15f9: f5 e8 fd  mov   a,$fde8+x
15fc: d5 a1 fa  mov   $faa1+x,a
15ff: f5 f7 fd  mov   a,$fdf7+x
1602: d5 c0 fa  mov   $fac0+x,a
1605: 1d        dec   x
1606: 1d        dec   x
1607: 10 9a     bpl   $15a3
1609: cd 0e     mov   x,#$0e
160b: f5 f8 fd  mov   a,$fdf8+x
160e: d5 c1 fa  mov   $fac1+x,a
1611: f5 07 fe  mov   a,$fe07+x
1614: d5 e0 fa  mov   $fae0+x,a
1617: f5 08 fe  mov   a,$fe08+x
161a: d5 e1 fa  mov   $fae1+x,a
161d: f5 17 fe  mov   a,$fe17+x
1620: d5 00 fb  mov   $fb00+x,a
1623: f5 27 fe  mov   a,$fe27+x
1626: d5 40 fb  mov   $fb40+x,a
1629: f5 28 fe  mov   a,$fe28+x
162c: d5 41 fb  mov   $fb41+x,a
162f: f5 37 fe  mov   a,$fe37+x
1632: d5 60 fb  mov   $fb60+x,a
1635: f5 38 fe  mov   a,$fe38+x
1638: d5 61 fb  mov   $fb61+x,a
163b: f5 47 fe  mov   a,$fe47+x
163e: d5 c0 fb  mov   $fbc0+x,a
1641: f5 48 fe  mov   a,$fe48+x
1644: d5 c1 fb  mov   $fbc1+x,a
1647: f5 18 fe  mov   a,$fe18+x
164a: d5 01 fb  mov   $fb01+x,a
164d: f5 57 fe  mov   a,$fe57+x
1650: d5 00 fc  mov   $fc00+x,a
1653: f5 58 fe  mov   a,$fe58+x
1656: d5 01 fc  mov   $fc01+x,a
1659: 1d        dec   x
165a: 1d        dec   x
165b: 10 ae     bpl   $160b
165d: cd 3f     mov   x,#$3f
165f: f5 57 ff  mov   a,$ff57+x
1662: d5 e0 fc  mov   $fce0+x,a
1665: 1d        dec   x
1666: c8 20     cmp   x,#$20
1668: b0 f5     bcs   $165f
166a: f5 57 ff  mov   a,$ff57+x
166d: d5 e0 fc  mov   $fce0+x,a
1670: f5 37 ff  mov   a,$ff37+x
1673: d5 a0 fc  mov   $fca0+x,a
1676: 1d        dec   x
1677: c8 10     cmp   x,#$10
1679: b0 ef     bcs   $166a
167b: f5 57 ff  mov   a,$ff57+x
167e: d5 e0 fc  mov   $fce0+x,a
1681: f5 37 ff  mov   a,$ff37+x
1684: d5 a0 fc  mov   $fca0+x,a
1687: f5 67 fe  mov   a,$fe67+x
168a: d4 0e     mov   $0e+x,a
168c: f5 77 fe  mov   a,$fe77+x
168f: d5 00 fa  mov   $fa00+x,a
1692: f5 87 fe  mov   a,$fe87+x
1695: d5 20 fa  mov   $fa20+x,a
1698: f5 97 fe  mov   a,$fe97+x
169b: d5 40 fa  mov   $fa40+x,a
169e: f5 a7 fe  mov   a,$fea7+x
16a1: d5 60 fa  mov   $fa60+x,a
16a4: f5 b7 fe  mov   a,$feb7+x
16a7: d5 20 fb  mov   $fb20+x,a
16aa: f5 c7 fe  mov   a,$fec7+x
16ad: d5 80 fb  mov   $fb80+x,a
16b0: f5 d7 fe  mov   a,$fed7+x
16b3: d5 a0 fb  mov   $fba0+x,a
16b6: f5 e7 fe  mov   a,$fee7+x
16b9: d5 e0 fb  mov   $fbe0+x,a
16bc: f5 f7 fe  mov   a,$fef7+x
16bf: d5 20 fc  mov   $fc20+x,a
16c2: f5 07 ff  mov   a,$ff07+x
16c5: d5 40 fc  mov   $fc40+x,a
16c8: f5 17 ff  mov   a,$ff17+x
16cb: d5 60 fc  mov   $fc60+x,a
16ce: f5 27 ff  mov   a,$ff27+x
16d1: d5 80 fc  mov   $fc80+x,a
16d4: 1d        dec   x
16d5: 10 a4     bpl   $167b
16d7: 6f        ret

16d8: e8 36     mov   a,#$36
16da: c4 3b     mov   $3b,a
16dc: e8 dc     mov   a,#$dc
16de: 8f 00 05  mov   $05,#$00
16e1: 43 c0 05  bbs2  $c0,$16e9
16e4: 8f 09 c1  mov   $c1,#$09
16e7: 2f 08     bra   $16f1
16e9: 8f 49 c1  mov   $c1,#$49
16ec: 60        clrc
16ed: 88 08     adc   a,#$08
16ef: e2 05     set7  $05
16f1: c4 3c     mov   $3c,a
16f3: 60        clrc
16f4: 88 08     adc   a,#$08
16f6: c4 04     mov   $04,a
16f8: f8 3c     mov   x,$3c
16fa: eb c1     mov   y,$c1
16fc: cb f2     mov   $f2,y
16fe: eb f3     mov   y,$f3
1700: 6d        push  y
1701: bf        mov   a,(x)+
1702: cf        mul   ya
1703: dd        mov   a,y
1704: 28 70     and   a,#$70
1706: c4 3a     mov   $3a,a
1708: ee        pop   y
1709: bf        mov   a,(x)+
170a: cf        mul   ya
170b: dd        mov   a,y
170c: d8 3c     mov   $3c,x
170e: f8 3b     mov   x,$3b
1710: 9f        xcn   a
1711: 28 07     and   a,#$07
1713: 04 3a     or    a,$3a
1715: 04 05     or    a,$05
1717: af        mov   (x)+,a
1718: d8 3b     mov   $3b,x
171a: 60        clrc
171b: 98 10 c1  adc   $c1,#$10
171e: 69 04 3c  cmp   ($3c),($04)
1721: d0 d5     bne   $16f8
1723: ba 36     movw  ya,$36
1725: da f4     movw  $f4,ya
1727: ba 38     movw  ya,$38
1729: da f6     movw  $f6,ya
172b: 58 04 c0  eor   $c0,#$04
172e: 6f        ret

172f: e4 8d     mov   a,$8d
1731: f0 0f     beq   $1742
1733: 8b 8d     dec   $8d
1735: ba 89     movw  ya,$89
1737: 7a 85     addw  ya,$85
1739: 7e 86     cmp   y,$86
173b: da 85     movw  $85,ya
173d: f0 03     beq   $1742
173f: 09 bb d8  or    ($d8),($bb)
1742: e4 8f     mov   a,$8f
1744: f0 0f     beq   $1755
1746: 8b 8f     dec   $8f
1748: ba 8b     movw  ya,$8b
174a: 7a 87     addw  ya,$87
174c: 7e 88     cmp   y,$88
174e: da 87     movw  $87,ya
1750: f0 03     beq   $1755
1752: 09 bc d8  or    ($d8),($bc)
1755: e4 99     mov   a,$99
1757: f0 0f     beq   $1768
1759: 8b 99     dec   $99
175b: ba 95     movw  ya,$95
175d: 7a 91     addw  ya,$91
175f: 7e 92     cmp   y,$92
1761: da 91     movw  $91,ya
1763: f0 03     beq   $1768
1765: 09 bb d8  or    ($d8),($bb)
1768: e4 9b     mov   a,$9b
176a: f0 0f     beq   $177b
176c: 8b 9b     dec   $9b
176e: ba 97     movw  ya,$97
1770: 7a 93     addw  ya,$93
1772: 7e 94     cmp   y,$94
1774: da 93     movw  $93,ya
1776: f0 03     beq   $177b
1778: 09 bc d8  or    ($d8),($bc)
177b: e4 a5     mov   a,$a5
177d: f0 08     beq   $1787
177f: 8b a5     dec   $a5
1781: ba a1     movw  ya,$a1
1783: 7a 9d     addw  ya,$9d
1785: da 9d     movw  $9d,ya
1787: e4 a7     mov   a,$a7
1789: f0 08     beq   $1793
178b: 8b a7     dec   $a7
178d: ba a3     movw  ya,$a3
178f: 7a 9f     addw  ya,$9f
1791: da 9f     movw  $9f,ya
1793: e4 b1     mov   a,$b1
1795: f0 0f     beq   $17a6
1797: 8b b1     dec   $b1
1799: ba ad     movw  ya,$ad
179b: 7a a9     addw  ya,$a9
179d: 7e aa     cmp   y,$aa
179f: da a9     movw  $a9,ya
17a1: f0 03     beq   $17a6
17a3: 09 bb d9  or    ($d9),($bb)
17a6: e4 b3     mov   a,$b3
17a8: f0 0f     beq   $17b9
17aa: 8b b3     dec   $b3
17ac: ba af     movw  ya,$af
17ae: 7a ab     addw  ya,$ab
17b0: 7e ac     cmp   y,$ac
17b2: da ab     movw  $ab,ya
17b4: f0 03     beq   $17b9
17b6: 09 bc d9  or    ($d9),($bc)
17b9: 6f        ret

17ba: dw $12fd
17bc: dw $12eb
17be: dw $12d3
17c0: dw $12b5
17c2: dw $12fd
17c4: dw $12fd
17c6: dw $12fd
17c8: dw $130a

17ca: dw $0685  ; d2
17cc: dw $0691  ; d3
17ce: dw $0713  ; d4
17d0: dw $071f  ; d5
17d2: dw $075b  ; d6
17d4: dw $079a  ; d7
17d6: dw $07ac  ; d8
17d8: dw $07b0  ; d9
17da: dw $07c2  ; da
17dc: dw $07c6  ; db
17de: dw $0817  ; dc
17e0: dw $089b  ; dd
17e2: dw $085a  ; de
17e4: dw $0887  ; df
17e6: dw $08ab  ; e0
17e8: dw $08c4  ; e1
17ea: dw $0831  ; e2
17ec: dw $084a  ; e3
17ee: dw $082d  ; e4
17f0: dw $0823  ; e5
17f2: dw $0829  ; e6
17f4: dw $076a  ; e7
17f6: dw $0766  ; e8
17f8: dw $0a16  ; e9
17fa: dw $08d4  ; ea
17fc: dw $08fe  ; eb
17fe: dw $092e  ; ec
1800: dw $0941  ; ed
1802: dw $0953  ; ee
1804: dw $0963  ; ef
1806: dw $09ac  ; f0
1808: dw $09d5  ; f1
180a: dw $0a1a  ; f2
180c: dw $063d  ; f3
180e: dw $064a  ; f4
1810: dw $06cd  ; f5
1812: dw $06da  ; f6
1814: dw $076e  ; f7
1816: dw $0682  ; f8
1818: dw $0987  ; f9
181a: dw $0975  ; fa
181c: dw $09fb  ; fb
181e: dw $0a1a  ; fc
1820: dw $0a1a  ; fd
1822: dw $0a1a  ; fe
1824: dw $0a1a  ; ff

1826: db         $01,$02,$01,$02,$02,$03,$00,$03,$00,$02,$00,$01,$00,$00
1834: db $00,$00,$00,$00,$01,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$00
1844: db $01,$00,$00,$01,$02,$01,$02,$02,$01,$03,$02,$02,$00,$00,$00,$00

1854: dw $0879
1856: dw $08fa
1858: dw $0983
185a: dw $0a14
185c: dw $0aad
185e: dw $0b50
1860: dw $0bfc
1862: dw $0cb2
1864: dw $0d74
1866: dw $0e41
1868: dw $0f1a
186a: dw $1000
186c: dw $10f3

186e: db $7f,$00,$00,$00,$00,$00,$00,$00
1876: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
187e: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1886: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

188e: db $c0,$90,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03

189d: dw $18bd
189f: dw $18cc
18a1: dw $0000
18a3: dw $0000
18a5: dw $0000
18a7: dw $0000
18a9: dw $0000
18ab: dw $0000
18ad: dw $0000
18af: dw $0000
18b1: dw $0000
18b3: dw $0000
18b5: dw $0000
18b7: dw $0000
18b9: dw $0000
18bb: dw $0000

18bd: db $d2,$d2,$ea,$02,$e4,$05,$0d,$e5,$0d,$d2,$28,$0d,$e5,$0d,$f2
18cc: db $d2,$fa,$ea,$07,$e4,$05,$0d,$e5,$0d,$e6,$0d,$d2,$32,$0d,$e5,$0d,$e6,$0d,$f2

18df: db $4c,$5c,$2d,$3d,$4d,$2c,$3c,$6c
18e7: db $be,$bf,$c9,$c8,$c7,$b6,$b6,$ca
