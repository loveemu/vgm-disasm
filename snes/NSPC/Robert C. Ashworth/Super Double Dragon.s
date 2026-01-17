0300: 20        clrp
0301: cd cf     mov   x,#$cf
0303: bd        mov   sp,x
0304: e8 00     mov   a,#$00
0306: 5d        mov   x,a
0307: d5 00 02  mov   $0200+x,a
030a: 3d        inc   x
030b: d0 fa     bne   $0307
030d: af        mov   (x)+,a
030e: c8 e0     cmp   x,#$e0
0310: d0 fb     bne   $030d
0312: e8 00     mov   a,#$00
0314: 8d 03     mov   y,#$03
0316: da 17     movw  $17,ya
0318: 8d 00     mov   y,#$00
031a: f7 17     mov   a,($17)+y
031c: 60        clrc
031d: 84 10     adc   a,$10
031f: c4 10     mov   $10,a
0321: 90 02     bcc   $0325
0323: ab 11     inc   $11
0325: 3a 17     incw  $17
0327: e8 97     mov   a,#$97
0329: 8d 0e     mov   y,#$0e
032b: 5a 17     cmpw  ya,$17
032d: d0 e9     bne   $0318
032f: cd 0c     mov   x,#$0c
0331: f5 c9 0d  mov   a,$0dc9+x
0334: fd        mov   y,a
0335: f5 d6 0d  mov   a,$0dd6+x
0338: 3f c2 04  call  $04c2
033b: 1d        dec   x
033c: 10 f3     bpl   $0331
033e: 8f 80 14  mov   $14,#$80
0341: 8f 80 13  mov   $13,#$80
0344: e8 30     mov   a,#$30
0346: c5 f1 00  mov   $00f1,a
0349: e8 20     mov   a,#$20
034b: c5 fa 00  mov   $00fa,a
034e: 00        nop
034f: 00        nop
0350: 00        nop
0351: 00        nop
0352: e8 01     mov   a,#$01
0354: c5 f1 00  mov   $00f1,a
0357: 9c        dec   a
0358: cd 03     mov   x,#$03
035a: d5 f4 00  mov   $00f4+x,a
035d: 1d        dec   x
035e: 10 fa     bpl   $035a
0360: e4 11     mov   a,$11
0362: c5 f4 00  mov   $00f4,a
0365: e4 10     mov   a,$10
0367: c5 f5 00  mov   $00f5,a
036a: 3f f3 0a  call  $0af3
036d: eb fd     mov   y,$fd
036f: d0 4f     bne   $03c0
0371: e9 f7 00  mov   x,$00f7
0374: 1e f7 00  cmp   x,$00f7
0377: d0 f8     bne   $0371
0379: 3e 14     cmp   x,$14
037b: f0 13     beq   $0390
037d: 3e 13     cmp   x,$13
037f: f0 ec     beq   $036d
0381: d8 13     mov   $13,x
0383: 8f 80 14  mov   $14,#$80
0386: ec f6 00  mov   y,$00f6
0389: 5e f6 00  cmp   y,$00f6
038c: d0 f8     bne   $0386
038e: 2f 2a     bra   $03ba
0390: ec f6 00  mov   y,$00f6
0393: 5e f6 00  cmp   y,$00f6
0396: d0 f8     bne   $0390
0398: 7d        mov   a,x
0399: c4 13     mov   $13,a
039b: 10 0f     bpl   $03ac
039d: 68 80     cmp   a,#$80
039f: d0 05     bne   $03a6
03a1: cb 15     mov   $15,y
03a3: bc        inc   a
03a4: 2f 12     bra   $03b8
03a6: cb 16     mov   $16,y
03a8: e8 00     mov   a,#$00
03aa: 2f 0c     bra   $03b8
03ac: dd        mov   a,y
03ad: 8d 00     mov   y,#$00
03af: d7 15     mov   ($15)+y,a
03b1: 3a 15     incw  $15
03b3: fd        mov   y,a
03b4: 7d        mov   a,x
03b5: bc        inc   a
03b6: 28 7f     and   a,#$7f
03b8: c4 14     mov   $14,a
03ba: cb f6     mov   $f6,y
03bc: d8 f7     mov   $f7,x
03be: 2f ad     bra   $036d
03c0: cb 36     mov   $36,y
03c2: 3f ba 05  call  $05ba
03c5: cd 00     mov   x,#$00
03c7: d8 1e     mov   $1e,x
03c9: 8f 01 20  mov   $20,#$01
03cc: f5 37 00  mov   a,$0037+x
03cf: f0 1a     beq   $03eb
03d1: e4 20     mov   a,$20
03d3: 24 0a     and   a,$0a
03d5: d0 14     bne   $03eb
03d7: d8 1d     mov   $1d,x
03d9: eb 36     mov   y,$36
03db: f4 48     mov   a,$48+x
03dd: cf        mul   ya
03de: 60        clrc
03df: 94 47     adc   a,$47+x
03e1: d4 47     mov   $47+x,a
03e3: 90 06     bcc   $03eb
03e5: 3f 10 08  call  $0810
03e8: 3f 9d 0b  call  $0b9d
03eb: 3d        inc   x
03ec: 3d        inc   x
03ed: 0b 20     asl   $20
03ef: d0 db     bne   $03cc
03f1: 3f 91 05  call  $0591
03f4: 5f 6d 03  jmp   $036d

03f7: 80        setc
03f8: a8 ca     sbc   a,#$ca
03fa: 30 12     bmi   $040e
03fc: 8d 07     mov   y,#$07
03fe: 8f b4 17  mov   $17,#$b4
0401: 8f 0f 18  mov   $18,#$0f
0404: 3f d4 08  call  $08d4
0407: fc        inc   y
0408: f7 17     mov   a,($17)+y
040a: 28 7f     and   a,#$7f
040c: 2f 09     bra   $0417
040e: 88 4a     adc   a,#$4a
0410: fb 37     mov   y,$37+x
0412: 10 03     bpl   $0417
0414: 60        clrc
0415: 84 1c     adc   a,$1c
0417: 60        clrc
0418: 95 30 01  adc   a,$0130+x
041b: d5 61 02  mov   $0261+x,a
041e: f5 81 02  mov   a,$0281+x
0421: d5 60 02  mov   $0260+x,a
0424: e8 00     mov   a,#$00
0426: d5 b0 02  mov   $02b0+x,a
0429: d5 e0 02  mov   $02e0+x,a
042c: d4 a8     mov   $a8+x,a
042e: d4 97     mov   $97+x,a
0430: d4 b8     mov   $b8+x,a
0432: 09 20 1e  or    ($1e),($20)
0435: f5 90 02  mov   a,$0290+x
0438: d4 87     mov   $87+x,a
043a: f0 1e     beq   $045a
043c: f5 91 02  mov   a,$0291+x
043f: d4 88     mov   $88+x,a
0441: f5 a0 02  mov   a,$02a0+x
0444: d0 0a     bne   $0450
0446: f5 61 02  mov   a,$0261+x
0449: 80        setc
044a: b5 a1 02  sbc   a,$02a1+x
044d: d5 61 02  mov   $0261+x,a
0450: f5 a1 02  mov   a,$02a1+x
0453: 60        clrc
0454: 95 61 02  adc   a,$0261+x
0457: 3f 82 0a  call  $0a82
045a: f5 61 02  mov   a,$0261+x
045d: fd        mov   y,a
045e: f5 60 02  mov   a,$0260+x
0461: da 21     movw  $21,ya
0463: e4 22     mov   a,$22
0465: 1c        asl   a
0466: fd        mov   y,a
0467: f6 e4 0d  mov   a,$0de4+y
046a: c4 18     mov   $18,a
046c: f6 e3 0d  mov   a,$0de3+y
046f: c4 17     mov   $17,a
0471: f6 e6 0d  mov   a,$0de6+y
0474: 2d        push  a
0475: f6 e5 0d  mov   a,$0de5+y
0478: ee        pop   y
0479: 9a 17     subw  ya,$17
047b: 6d        push  y
047c: fd        mov   y,a
047d: e4 21     mov   a,$21
047f: cf        mul   ya
0480: cb 19     mov   $19,y
0482: 8f 00 1a  mov   $1a,#$00
0485: ee        pop   y
0486: e4 21     mov   a,$21
0488: cf        mul   ya
0489: 7a 19     addw  ya,$19
048b: 7a 17     addw  ya,$17
048d: da 17     movw  $17,ya
048f: f5 50 01  mov   a,$0150+x
0492: eb 18     mov   y,$18
0494: cf        mul   ya
0495: da 19     movw  $19,ya
0497: f5 50 01  mov   a,$0150+x
049a: eb 17     mov   y,$17
049c: cf        mul   ya
049d: 6d        push  y
049e: f5 51 01  mov   a,$0151+x
04a1: eb 17     mov   y,$17
04a3: cf        mul   ya
04a4: 7a 19     addw  ya,$19
04a6: da 19     movw  $19,ya
04a8: f5 51 01  mov   a,$0151+x
04ab: eb 18     mov   y,$18
04ad: cf        mul   ya
04ae: fd        mov   y,a
04af: ae        pop   a
04b0: 7a 19     addw  ya,$19
04b2: da 19     movw  $19,ya
04b4: 7d        mov   a,x
04b5: 9f        xcn   a
04b6: 5c        lsr   a
04b7: 08 02     or    a,#$02
04b9: fd        mov   y,a
04ba: e4 19     mov   a,$19
04bc: 3f c2 04  call  $04c2
04bf: fc        inc   y
04c0: e4 1a     mov   a,$1a
04c2: cc f2 00  mov   $00f2,y
04c5: c5 f3 00  mov   $00f3,a
04c8: 6f        ret

04c9: a2 27     set5  $27
04cb: 5d        mov   x,a
04cc: d8 34     mov   $34,x
04ce: e8 00     mov   a,#$00
04d0: c4 35     mov   $35,a
04d2: 80        setc
04d3: a4 31     sbc   a,$31
04d5: 3f 9b 0a  call  $0a9b
04d8: da 32     movw  $32,ya
04da: 6f        ret

04db: a2 27     set5  $27
04dd: 5d        mov   x,a
04de: d8 34     mov   $34,x
04e0: e8 ff     mov   a,#$ff
04e2: c4 35     mov   $35,a
04e4: 80        setc
04e5: eb 37     mov   y,$37
04e7: f0 02     beq   $04eb
04e9: a4 31     sbc   a,$31
04eb: 3f 9b 0a  call  $0a9b
04ee: da 32     movw  $32,ya
04f0: 6f        ret

04f1: 3f b3 07  call  $07b3
04f4: 5f e5 05  jmp   $05e5

04f7: 8d 00     mov   y,#$00
04f9: cb 20     mov   $20,y
04fb: 8f 01 09  mov   $09,#$01
04fe: 76 37 00  cmp   a,$0037+y
0501: d0 15     bne   $0518
0503: 2d        push  a
0504: 1c        asl   a
0505: 90 05     bcc   $050c
0507: 8f 00 07  mov   $07,#$00
050a: b2 27     clr5  $27
050c: e8 00     mov   a,#$00
050e: d6 37 00  mov   $0037+y,a
0511: d6 38 00  mov   $0038+y,a
0514: 09 09 20  or    ($20),($09)
0517: ae        pop   a
0518: fc        inc   y
0519: fc        inc   y
051a: 0b 09     asl   $09
051c: d0 e0     bne   $04fe
051e: 3f 63 05  call  $0563
0521: e4 20     mov   a,$20
0523: 5f e5 05  jmp   $05e5

0526: 30 17     bmi   $053f
0528: 3f 7c 06  call  $067c
052b: f0 12     beq   $053f
052d: f8 0b     mov   x,$0b
052f: e4 08     mov   a,$08
0531: 9c        dec   a
0532: 28 1f     and   a,#$1f
0534: d5 31 02  mov   $0231+x,a
0537: e8 00     mov   a,#$00
0539: d5 30 02  mov   $0230+x,a
053c: 09 09 26  or    ($26),($09)
053f: 6f        ret

0540: f2 27     clr7  $27
0542: 6f        ret

0543: e2 27     set7  $27
0545: 2f 25     bra   $056c
0547: e3 27 18  bbs7  $27,$0562
054a: a3 27 15  bbs5  $27,$0562
054d: e4 31     mov   a,$31
054f: f0 11     beq   $0562
0551: e8 10     mov   a,#$10
0553: 5d        mov   x,a
0554: c4 34     mov   $34,a
0556: e8 d2     mov   a,#$d2
0558: c4 35     mov   $35,a
055a: 80        setc
055b: a4 31     sbc   a,$31
055d: 3f 9b 0a  call  $0a9b
0560: da 32     movw  $32,ya
0562: 6f        ret

0563: e3 27 12  bbs7  $27,$0578
0566: e4 43     mov   a,$43
0568: 04 45     or    a,$45
056a: d0 0c     bne   $0578
056c: a3 27 09  bbs5  $27,$0578
056f: e4 31     mov   a,$31
0571: f0 05     beq   $0578
0573: e8 40     mov   a,#$40
0575: 3f dd 04  call  $04dd
0578: 6f        ret

0579: e8 ff     mov   a,#$ff
057b: 3f e8 05  call  $05e8
057e: e8 02     mov   a,#$02
0580: 3f 7c 06  call  $067c
0583: 48 ff     eor   a,#$ff
0585: c4 0a     mov   $0a,a
0587: 6f        ret

0588: 29 0a 1f  and   ($1f),($0a)
058b: 8f 00 0a  mov   $0a,#$00
058e: fa 1f 1e  mov   ($1e),($1f)
0591: 8d 5c     mov   y,#$5c
0593: e8 00     mov   a,#$00
0595: 3f c2 04  call  $04c2
0598: e4 1e     mov   a,$1e
059a: 09 1e 1f  or    ($1f),($1e)
059d: 8d 4c     mov   y,#$4c
059f: 5f c2 04  jmp   $04c2

05a2: c2 27     set6  $27
05a4: 8f ff 26  mov   $26,#$ff
05a7: 6f        ret

05a8: d2 27     clr6  $27
05aa: 8f ff 26  mov   $26,#$ff
05ad: 6f        ret

05ae: 28 7f     and   a,#$7f
05b0: 8d 0c     mov   y,#$0c
05b2: 3f c2 04  call  $04c2
05b5: 8d 1c     mov   y,#$1c
05b7: 5f c2 04  jmp   $04c2

05ba: 3f ed 05  call  $05ed
05bd: f0 22     beq   $05e1
05bf: 93 27 0b  bbc4  $27,$05cd
05c2: 92 27     clr4  $27
05c4: fd        mov   y,a
05c5: e4 12     mov   a,$12
05c7: 1c        asl   a
05c8: 5d        mov   x,a
05c9: dd        mov   a,y
05ca: 1f 7f 0e  jmp   ($0e7f+x)

05cd: 68 f0     cmp   a,#$f0
05cf: 90 11     bcc   $05e2
05d1: 68 fc     cmp   a,#$fc
05d3: b0 0c     bcs   $05e1
05d5: 28 0f     and   a,#$0f
05d7: c4 12     mov   $12,a
05d9: 5d        mov   x,a
05da: f5 73 0e  mov   a,$0e73+x
05dd: f0 e5     beq   $05c4
05df: 82 27     set4  $27
05e1: 6f        ret

05e2: 3f 7c 06  call  $067c
05e5: 4e 1f 00  tclr1 $001f
05e8: 8d 5c     mov   y,#$5c
05ea: 5f c2 04  jmp   $04c2

05ed: e5 f5 00  mov   a,$00f5
05f0: 65 f5 00  cmp   a,$00f5
05f3: d0 f8     bne   $05ed
05f5: 68 00     cmp   a,#$00
05f7: f0 02     beq   $05fb
05f9: c4 08     mov   $08,a
05fb: e5 f4 00  mov   a,$00f4
05fe: 65 f4 00  cmp   a,$00f4
0601: d0 f8     bne   $05fb
0603: 68 00     cmp   a,#$00
0605: f0 03     beq   $060a
0607: c5 f4 00  mov   $00f4,a
060a: eb 07     mov   y,$07
060c: 8d 11     mov   y,#$11
060e: cc f1 00  mov   $00f1,y
0611: fd        mov   y,a
0612: 6f        ret

0613: e8 0a     mov   a,#$0a
0615: d6 31 02  mov   $0231+y,a
0618: e8 ff     mov   a,#$ff
061a: d6 01 02  mov   $0201+y,a
061d: d6 47 00  mov   $0047+y,a
0620: e8 00     mov   a,#$00
0622: d6 81 02  mov   $0281+y,a
0625: d6 50 02  mov   $0250+y,a
0628: d6 30 01  mov   $0130+y,a
062b: d6 30 02  mov   $0230+y,a
062e: d6 67 00  mov   $0067+y,a
0631: d6 68 00  mov   $0068+y,a
0634: d6 a7 00  mov   $00a7+y,a
0637: d6 b7 00  mov   $00b7+y,a
063a: d6 77 00  mov   $0077+y,a
063d: d6 90 02  mov   $0290+y,a
0640: d6 91 02  mov   $0291+y,a
0643: d6 87 00  mov   $0087+y,a
0646: d6 88 00  mov   $0088+y,a
0649: d6 60 02  mov   $0260+y,a
064c: d6 61 02  mov   $0261+y,a
064f: bc        inc   a
0650: d6 57 00  mov   $0057+y,a
0653: e8 20     mov   a,#$20
0655: d6 48 00  mov   $0048+y,a
0658: f6 37 00  mov   a,$0037+y
065b: 10 1e     bpl   $067b
065d: e8 00     mov   a,#$00
065f: c4 28     mov   $28,a
0661: c4 30     mov   $30,a
0663: c4 1c     mov   $1c,a
0665: c4 2e     mov   $2e,a
0667: c4 2f     mov   $2f,a
0669: d6 38 00  mov   $0038+y,a
066c: 8f ff 29  mov   $29,#$ff
066f: 78 03 12  cmp   $12,#$03
0672: f0 07     beq   $067b
0674: c4 34     mov   $34,a
0676: c4 35     mov   $35,a
0678: 8f ff 31  mov   $31,#$ff
067b: 6f        ret

067c: 3f ee 06  call  $06ee
067f: f0 36     beq   $06b7
0681: 78 60 0e  cmp   $0e,#$60
0684: b0 34     bcs   $06ba
0686: cd 01     mov   x,#$01
0688: 8d 0c     mov   y,#$0c
068a: 8f 40 09  mov   $09,#$40
068d: 76 37 00  cmp   a,$0037+y
0690: f0 1f     beq   $06b1
0692: 76 39 00  cmp   a,$0039+y
0695: f0 16     beq   $06ad
0697: e4 0f     mov   a,$0f
0699: 2d        push  a
069a: f6 3a 00  mov   a,$003a+y
069d: 76 38 00  cmp   a,$0038+y
06a0: ae        pop   a
06a1: 90 05     bcc   $06a8
06a3: 76 38 00  cmp   a,$0038+y
06a6: b0 09     bcs   $06b1
06a8: 76 3a 00  cmp   a,$003a+y
06ab: 90 0a     bcc   $06b7
06ad: fc        inc   y
06ae: fc        inc   y
06af: 0b 09     asl   $09
06b1: 3f 0d 07  call  $070d
06b4: e4 09     mov   a,$09
06b6: 6f        ret

06b7: e8 00     mov   a,#$00
06b9: 6f        ret

06ba: c2 07     set6  $07
06bc: f2 07     clr7  $07
06be: 78 a0 0e  cmp   $0e,#$a0
06c1: b0 21     bcs   $06e4
06c3: 8d 00     mov   y,#$00
06c5: cd 06     mov   x,#$06
06c7: 3f 0d 07  call  $070d
06ca: 8d 0c     mov   y,#$0c
06cc: f6 37 00  mov   a,$0037+y
06cf: 10 10     bpl   $06e1
06d1: e8 00     mov   a,#$00
06d3: d6 37 00  mov   $0037+y,a
06d6: d6 38 00  mov   $0038+y,a
06d9: d6 39 00  mov   $0039+y,a
06dc: d6 3a 00  mov   $003a+y,a
06df: 9c        dec   a
06e0: 6f        ret

06e1: e8 3f     mov   a,#$3f
06e3: 6f        ret

06e4: 8d 00     mov   y,#$00
06e6: cd 08     mov   x,#$08
06e8: 3f 0d 07  call  $070d
06eb: e8 ff     mov   a,#$ff
06ed: 6f        ret

06ee: 2d        push  a
06ef: c4 0e     mov   $0e,a
06f1: 1c        asl   a
06f2: 5d        mov   x,a
06f3: b0 13     bcs   $0708
06f5: f5 e1 10  mov   a,$10e1+x
06f8: f0 0c     beq   $0706
06fa: fd        mov   y,a
06fb: f5 e0 10  mov   a,$10e0+x
06fe: da 19     movw  $19,ya
0700: 8d 00     mov   y,#$00
0702: f7 19     mov   a,($19)+y
0704: c4 0f     mov   $0f,a
0706: ae        pop   a
0707: 6f        ret

0708: f5 01 10  mov   a,$1001+x		; play song
070b: 2f f9     bra   $0706
070d: cb 0b     mov   $0b,y
070f: 4d        push  x
0710: e4 0e     mov   a,$0e
0712: 1c        asl   a
0713: 90 25     bcc   $073a
0715: 5d        mov   x,a
0716: f5 01 10  mov   a,$1001+x
0719: fd        mov   y,a
071a: f5 00 10  mov   a,$1000+x
071d: da 23     movw  $23,ya
071f: 3f 6e 07  call  $076e
0722: da 19     movw  $19,ya
0724: ce        pop   x
0725: eb 0b     mov   y,$0b
0727: e4 0e     mov   a,$0e
0729: d6 37 00  mov   $0037+y,a
072c: 3f 13 06  call  $0613
072f: 3f 84 07  call  $0784
0732: 1d        dec   x
0733: d0 f2     bne   $0727
0735: d8 25     mov   $25,x
0737: 5f f3 0a  jmp   $0af3

073a: 5d        mov   x,a
073b: f5 e1 10  mov   a,$10e1+x
073e: fd        mov   y,a
073f: f5 e0 10  mov   a,$10e0+x
0742: 80        setc
0743: a4 0b     sbc   a,$0b
0745: b0 01     bcs   $0748
0747: dc        dec   y
0748: da 19     movw  $19,ya
074a: 3a 19     incw  $19
074c: ce        pop   x
074d: eb 0b     mov   y,$0b
074f: e4 0e     mov   a,$0e
0751: d6 37 00  mov   $0037+y,a
0754: 3f 13 06  call  $0613
0757: e4 0f     mov   a,$0f
0759: d6 38 00  mov   $0038+y,a
075c: f7 19     mov   a,($19)+y
075e: d6 c7 00  mov   $00c7+y,a
0761: fc        inc   y
0762: f7 19     mov   a,($19)+y
0764: d6 c7 00  mov   $00c7+y,a
0767: fc        inc   y
0768: 1d        dec   x
0769: d0 e4     bne   $074f
076b: 5f 47 05  jmp   $0547

076e: 8d 00     mov   y,#$00
0770: f7 23     mov   a,($23)+y
0772: 3a 23     incw  $23
0774: 2d        push  a
0775: f7 23     mov   a,($23)+y
0777: f0 06     beq   $077f
0779: 3a 23     incw  $23
077b: fd        mov   y,a
077c: ae        pop   a
077d: 2f 04     bra   $0783
077f: 3a 23     incw  $23
0781: fd        mov   y,a
0782: ae        pop   a
0783: 6f        ret

0784: f7 19     mov   a,($19)+y
0786: d6 c7 00  mov   $00c7+y,a
0789: fc        inc   y
078a: f7 19     mov   a,($19)+y
078c: d6 c7 00  mov   $00c7+y,a
078f: fc        inc   y
0790: 6f        ret

0791: f5 37 00  mov   a,$0037+x
0794: 68 80     cmp   a,#$80
0796: 90 10     bcc   $07a8
0798: 68 a0     cmp   a,#$a0
079a: b0 06     bcs   $07a2
079c: 4d        push  x
079d: 3f ca 07  call  $07ca
07a0: ce        pop   x
07a1: 6f        ret

07a2: 4d        push  x
07a3: 3f b3 07  call  $07b3
07a6: ce        pop   x
07a7: 6f        ret

07a8: e8 00     mov   a,#$00
07aa: d5 37 00  mov   $0037+x,a
07ad: d5 38 00  mov   $0038+x,a
07b0: 5f 63 05  jmp   $0563

07b3: 8f 00 07  mov   $07,#$00
07b6: b2 27     clr5  $27
07b8: cd 0e     mov   x,#$0e
07ba: 8d ff     mov   y,#$ff
07bc: e8 00     mov   a,#$00
07be: d5 37 00  mov   $0037+x,a
07c1: d5 38 00  mov   $0038+x,a
07c4: 1d        dec   x
07c5: 1d        dec   x
07c6: 10 f6     bpl   $07be
07c8: dd        mov   a,y
07c9: 6f        ret

07ca: 8f 00 07  mov   $07,#$00
07cd: b2 27     clr5  $27
07cf: cd 0a     mov   x,#$0a
07d1: 8d 3f     mov   y,#$3f
07d3: 2f e7     bra   $07bc
07d5: 3f 6e 07  call  $076e
07d8: d0 19     bne   $07f3
07da: fd        mov   y,a
07db: d0 03     bne   $07e0
07dd: 5f 91 07  jmp   $0791

07e0: 8b 25     dec   $25
07e2: 10 02     bpl   $07e6
07e4: c4 25     mov   $25,a
07e6: 3f 6e 07  call  $076e
07e9: 2d        push  a
07ea: e4 25     mov   a,$25
07ec: ae        pop   a
07ed: f0 e6     beq   $07d5
07ef: da 23     movw  $23,ya
07f1: 2f e2     bra   $07d5
07f3: da 19     movw  $19,ya
07f5: 8d 00     mov   y,#$00
07f7: e8 01     mov   a,#$01
07f9: d6 57 00  mov   $0057+y,a
07fc: 3f 84 07  call  $0784
07ff: f5 37 00  mov   a,$0037+x
0802: 68 a0     cmp   a,#$a0
0804: b0 06     bcs   $080c
0806: ad 0c     cmp   y,#$0c
0808: d0 ed     bne   $07f7
080a: 2f 04     bra   $0810
080c: ad 10     cmp   y,#$10
080e: d0 e7     bne   $07f7
0810: 9b 57     dec   $57+x
0812: f0 30     beq   $0844
0814: 3f b5 0c  call  $0cb5
0817: 9b 58     dec   $58+x
0819: f0 01     beq   $081c
081b: 6f        ret

081c: f4 c7     mov   a,$c7+x
081e: fb c8     mov   y,$c8+x
0820: da 17     movw  $17,ya
0822: 8d 00     mov   y,#$00
0824: f7 17     mov   a,($17)+y
0826: f0 17     beq   $083f
0828: 30 03     bmi   $082d
082a: fc        inc   y
082b: 2f f7     bra   $0824
; vcmds 80-c7,c8,c9 - note/tie/rest
082d: 68 c8     cmp   a,#$c8
082f: f0 ea     beq   $081b
0831: 68 e0     cmp   a,#$e0
0833: 90 0a     bcc   $083f
0835: 6d        push  y
0836: fd        mov   y,a
0837: ae        pop   a
0838: 60        clrc
0839: 96 8c 0a  adc   a,$0a8c+y
083c: fd        mov   y,a
083d: 2f e5     bra   $0824
083f: e4 20     mov   a,$20
0841: 5f e5 05  jmp   $05e5

0844: 3f 88 0d  call  $0d88
0847: d0 2f     bne   $0878
0849: f4 77     mov   a,$77+x
084b: d0 0d     bne   $085a
084d: f5 37 00  mov   a,$0037+x
0850: 68 80     cmp   a,#$80
0852: b0 03     bcs   $0857
0854: 5f 91 07  jmp   $0791

0857: 5f d5 07  jmp   $07d5

085a: 3f 6d 08  call  $086d
085d: 9b 77     dec   $77+x
085f: d0 e3     bne   $0844
0861: f5 10 01  mov   a,$0110+x
0864: d4 c7     mov   $c7+x,a
0866: f5 11 01  mov   a,$0111+x
0869: d4 c8     mov   $c8+x,a
086b: 2f d7     bra   $0844
086d: f5 20 01  mov   a,$0120+x
0870: d4 c7     mov   $c7+x,a
0872: f5 21 01  mov   a,$0121+x
0875: d4 c8     mov   $c8+x,a
0877: 6f        ret

; vcmds 01-7f
0878: 30 23     bmi   $089d
087a: d5 00 01  mov   $0100+x,a
087d: 3f 8a 0d  call  $0d8a
0880: 30 1b     bmi   $089d
0882: 2d        push  a
0883: 9f        xcn   a
0884: 28 07     and   a,#$07
0886: fd        mov   y,a
0887: f6 85 0b  mov   a,$0b85+y		;   set dur% from high nybble
088a: d5 01 01  mov   $0101+x,a
088d: ae        pop   a
088e: 28 0f     and   a,#$0f
0890: fd        mov   y,a
0891: f6 8d 0b  mov   a,$0b8d+y		;   set per-note vol from low nybble
0894: d5 40 01  mov   $0140+x,a
0897: 09 20 26  or    ($26),($20)
089a: 3f 8a 0d  call  $0d8a
089d: 68 e0     cmp   a,#$e0
089f: 90 05     bcc   $08a6
08a1: 3f c2 08  call  $08c2
08a4: 2f 9e     bra   $0844
08a6: 68 c9     cmp   a,#$c9
08a8: f0 07     beq   $08b1
08aa: 68 c8     cmp   a,#$c8
08ac: f0 03     beq   $08b1
08ae: 3f f7 03  call  $03f7
08b1: f5 00 01  mov   a,$0100+x
08b4: d4 57     mov   $57+x,a
08b6: fd        mov   y,a
08b7: f5 01 01  mov   a,$0101+x
08ba: cf        mul   ya
08bb: dd        mov   a,y
08bc: d0 01     bne   $08bf
08be: bc        inc   a
08bf: d4 58     mov   $58+x,a
08c1: 6f        ret

; dispatch vcmd in A (e0-ff)
08c2: 1c        asl   a
08c3: 5d        mov   x,a
08c4: e8 00     mov   a,#$00
08c6: 1f 7a 0a  jmp   ($0a7a+x)

; vcmd e0 - set instrument
08c9: 3f 88 0d  call  $0d88
08cc: 8d 06     mov   y,#$06
08ce: 8f 00 17  mov   $17,#$00
08d1: 8f 0f 18  mov   $18,#$0f
08d4: cf        mul   ya
08d5: 7a 17     addw  ya,$17
08d7: da 17     movw  $17,ya
08d9: 4d        push  x
08da: 7d        mov   a,x
08db: 9f        xcn   a
08dc: 5c        lsr   a
08dd: 08 04     or    a,#$04
08df: 5d        mov   x,a
08e0: e4 20     mov   a,$20
08e2: 48 ff     eor   a,#$ff
08e4: 24 1b     and   a,$1b
08e6: c4 1b     mov   $1b,a
08e8: 8d 3d     mov   y,#$3d
08ea: 3f c2 04  call  $04c2
08ed: 8d 00     mov   y,#$00
08ef: f7 17     mov   a,($17)+y
08f1: c9 f2 00  mov   $00f2,x
08f4: c5 f3 00  mov   $00f3,a
08f7: 3d        inc   x
08f8: fc        inc   y
08f9: ad 04     cmp   y,#$04
08fb: d0 f2     bne   $08ef
08fd: f7 17     mov   a,($17)+y
08ff: ce        pop   x
0900: d5 51 01  mov   $0151+x,a
0903: fc        inc   y
0904: f7 17     mov   a,($17)+y
0906: d5 50 01  mov   $0150+x,a
0909: e8 00     mov   a,#$00
090b: 6f        ret

; vcmd e1 - pan
090c: 3f 88 0d  call  $0d88
090f: 28 1f     and   a,#$1f
0911: d5 31 02  mov   $0231+x,a
0914: e8 00     mov   a,#$00
0916: d5 30 02  mov   $0230+x,a
0919: 09 20 26  or    ($26),($20)
091c: 6f        ret

; vcmd e2 - pan fade
091d: 3f 88 0d  call  $0d88
0920: d4 68     mov   $68+x,a
0922: 2d        push  a
0923: 3f 8a 0d  call  $0d8a
0926: d5 50 02  mov   $0250+x,a
0929: 80        setc
092a: b5 31 02  sbc   a,$0231+x
092d: ce        pop   x
092e: 3f 9b 0a  call  $0a9b
0931: d5 40 02  mov   $0240+x,a
0934: dd        mov   a,y
0935: d5 41 02  mov   $0241+x,a
0938: 6f        ret

; vcmd e3 - vibrato on
0939: 3f 88 0d  call  $0d88
093c: d5 c0 02  mov   $02c0+x,a
093f: e8 00     mov   a,#$00
0941: d5 c1 02  mov   $02c1+x,a
0944: 3f 8a 0d  call  $0d8a
0947: d5 b1 02  mov   $02b1+x,a
094a: 3f 8a 0d  call  $0d8a
; vcmd e4 - vibrato off
094d: f8 1d     mov   x,$1d
094f: d4 a7     mov   $a7+x,a
0951: 6f        ret

; vcmd ef - vibrato fade
0952: 3f 88 0d  call  $0d88
0955: d5 c1 02  mov   $02c1+x,a
0958: 2d        push  a
0959: f4 a7     mov   a,$a7+x
095b: d5 d1 02  mov   $02d1+x,a
095e: ce        pop   x
095f: 8d 00     mov   y,#$00
0961: 9e        div   ya,x
0962: f8 1d     mov   x,$1d
0964: d5 d0 02  mov   $02d0+x,a
0967: 6f        ret

; vcmd e5 - master volume
0968: 3f 88 0d  call  $0d88
096b: c4 29     mov   $29,a
096d: fa 00 28  mov   ($28),($00)
0970: 6f        ret

; vcmd e6 - master volume fade
0971: 3f 88 0d  call  $0d88
0974: c4 2e     mov   $2e,a
0976: 2d        push  a
0977: 3f 8a 0d  call  $0d8a
097a: c4 2f     mov   $2f,a
097c: 80        setc
097d: ce        pop   x
097e: a4 29     sbc   a,$29
0980: 3f 9b 0a  call  $0a9b
0983: da 2a     movw  $2a,ya
0985: 6f        ret

; vcmd e7 - tempo
0986: 3f 88 0d  call  $0d88
0989: 1c        asl   a
098a: d4 48     mov   $48+x,a
098c: 6f        ret

; vcmd e8 - global transpose
098d: 3f 88 0d  call  $0d88
0990: c4 1c     mov   $1c,a
0992: 6f        ret

; vcmd e9 - per-voice transpose
0993: 3f 88 0d  call  $0d88
0996: d5 30 01  mov   $0130+x,a
0999: 6f        ret

; vcmd ea - tremolo on
099a: 3f 88 0d  call  $0d88
099d: d5 f0 02  mov   $02f0+x,a
09a0: 3f 8a 0d  call  $0d8a
09a3: d5 e1 02  mov   $02e1+x,a
09a6: 3f 8a 0d  call  $0d8a
; vcmd eb - tremolo off
09a9: f8 1d     mov   x,$1d
09ab: d4 b7     mov   $b7+x,a
09ad: 6f        ret

; vcmd f0 - pitch envelope (release)
09ae: e8 01     mov   a,#$01
09b0: 2f 02     bra   $09b4
; vcmd f1 - pitch envelope (attack)
09b2: e8 00     mov   a,#$00
09b4: f8 1d     mov   x,$1d
09b6: d5 a0 02  mov   $02a0+x,a
09b9: 3f 88 0d  call  $0d88
09bc: d5 91 02  mov   $0291+x,a
09bf: 3f 8a 0d  call  $0d8a
09c2: d5 90 02  mov   $0290+x,a
09c5: 3f 8a 0d  call  $0d8a
09c8: d5 a1 02  mov   $02a1+x,a
09cb: 6f        ret

; vcmd f2 - pitch envelope off
09cc: f8 1d     mov   x,$1d
09ce: d5 90 02  mov   $0290+x,a
09d1: 6f        ret

; vcmd ec - volume
09d2: 3f 88 0d  call  $0d88
09d5: d5 01 02  mov   $0201+x,a
09d8: e8 00     mov   a,#$00
09da: d5 00 02  mov   $0200+x,a
09dd: 09 20 26  or    ($26),($20)
09e0: 6f        ret

; vcmd ed - volume fade
09e1: 3f 88 0d  call  $0d88
09e4: d4 67     mov   $67+x,a
09e6: 2d        push  a
09e7: 3f 8a 0d  call  $0d8a
09ea: d5 20 02  mov   $0220+x,a
09ed: 80        setc
09ee: b5 01 02  sbc   a,$0201+x
09f1: ce        pop   x
09f2: 3f 9b 0a  call  $0a9b
09f5: d5 10 02  mov   $0210+x,a
09f8: dd        mov   a,y
09f9: d5 11 02  mov   $0211+x,a
09fc: 6f        ret

; vcmd f3 - tuning
09fd: 3f 88 0d  call  $0d88
0a00: d5 81 02  mov   $0281+x,a
0a03: 6f        ret

; vcmd f5 - set ASDR
0a04: 3f 88 0d  call  $0d88
0a07: 8d 00     mov   y,#$00
0a09: 68 a0     cmp   a,#$a0
0a0b: b0 10     bcs   $0a1d
0a0d: 4d        push  x
0a0e: cd 0a     mov   x,#$0a
0a10: 9e        div   ya,x
0a11: c4 0b     mov   $0b,a
0a13: dd        mov   a,y
0a14: 28 07     and   a,#$07
0a16: 9f        xcn   a
0a17: 04 0b     or    a,$0b
0a19: 08 80     or    a,#$80
0a1b: fd        mov   y,a
0a1c: ce        pop   x
0a1d: 4d        push  x
0a1e: 7d        mov   a,x
0a1f: 9f        xcn   a
0a20: 5c        lsr   a
0a21: 08 05     or    a,#$05
0a23: 5d        mov   x,a
0a24: dd        mov   a,y
0a25: c9 f2 00  mov   $00f2,x
0a28: c5 f3 00  mov   $00f3,a
0a2b: 4d        push  x
0a2c: ee        pop   y
0a2d: ce        pop   x
0a2e: fc        inc   y
0a2f: 3f 54 0a  call  $0a54
0a32: cc f2 00  mov   $00f2,y
0a35: 4d        push  x
0a36: 6d        push  y
0a37: 8d 00     mov   y,#$00
0a39: cd 1e     mov   x,#$1e
0a3b: 9e        div   ya,x
0a3c: fc        inc   y
0a3d: fc        inc   y
0a3e: cb 0b     mov   $0b,y
0a40: 9f        xcn   a
0a41: 1c        asl   a
0a42: 04 0b     or    a,$0b
0a44: ee        pop   y
0a45: ce        pop   x
0a46: c5 f3 00  mov   $00f3,a
0a49: fc        inc   y
0a4a: 3f 54 0a  call  $0a54
0a4d: cc f2 00  mov   $00f2,y
0a50: c5 f3 00  mov   $00f3,a
0a53: 6f        ret

0a54: e7 c7     mov   a,($c7+x)
0a56: bb c7     inc   $c7+x
0a58: d0 02     bne   $0a5c
0a5a: bb c8     inc   $c8+x
0a5c: 6f        ret

; vcmd ee - call subroutine
0a5d: 3f 88 0d  call  $0d88
0a60: 2d        push  a
0a61: 3f 8a 0d  call  $0d8a
0a64: 2d        push  a
0a65: 3f 8a 0d  call  $0d8a
0a68: d5 77 00  mov   $0077+x,a
0a6b: f4 c7     mov   a,$c7+x
0a6d: d5 10 01  mov   $0110+x,a
0a70: f4 c8     mov   a,$c8+x
0a72: d5 11 01  mov   $0111+x,a
0a75: ae        pop   a
0a76: d4 c8     mov   $c8+x,a
0a78: d5 21 01  mov   $0121+x,a
0a7b: ae        pop   a
0a7c: d4 c7     mov   $c7+x,a
0a7e: d5 20 01  mov   $0120+x,a
0a81: 6f        ret

0a82: 28 7f     and   a,#$7f
0a84: d5 80 02  mov   $0280+x,a
0a87: 80        setc
0a88: b5 61 02  sbc   a,$0261+x
0a8b: 2d        push  a
0a8c: f4 87     mov   a,$87+x
0a8e: 5d        mov   x,a
0a8f: ae        pop   a
0a90: 3f 9b 0a  call  $0a9b
0a93: d5 70 02  mov   $0270+x,a
0a96: dd        mov   a,y
0a97: d5 71 02  mov   $0271+x,a
0a9a: 6f        ret

0a9b: b0 0d     bcs   $0aaa
0a9d: 48 ff     eor   a,#$ff
0a9f: bc        inc   a
0aa0: 3f aa 0a  call  $0aaa
0aa3: da 17     movw  $17,ya
0aa5: ba 0c     movw  ya,$0c
0aa7: 9a 17     subw  ya,$17
0aa9: 6f        ret

0aaa: 8d 00     mov   y,#$00
0aac: 9e        div   ya,x
0aad: 2d        push  a
0aae: e8 00     mov   a,#$00
0ab0: 9e        div   ya,x
0ab1: ee        pop   y
0ab2: f8 1d     mov   x,$1d
0ab4: 6f        ret

; vcmd f6 - echo vbits/volume
0ab5: 3f 88 0d  call  $0d88
0ab8: c4 03     mov   $03,a
0aba: 3f 88 0d  call  $0d88
0abd: c4 04     mov   $04,a
0abf: 3f 88 0d  call  $0d88
0ac2: c4 05     mov   $05,a
0ac4: b2 02     clr5  $02
0ac6: 6f        ret

; vcmd f7 - set echo params
0ac7: 4d        push  x
0ac8: 3f 88 0d  call  $0d88
0acb: 3f 09 0b  call  $0b09
0ace: 3f 88 0d  call  $0d88
0ad1: c4 06     mov   $06,a
0ad3: 3f 88 0d  call  $0d88
0ad6: 9f        xcn   a
0ad7: 5c        lsr   a
0ad8: 5d        mov   x,a
0ad9: 8d 0f     mov   y,#$0f
0adb: f5 a9 0d  mov   a,$0da9+x
0ade: 3f c2 04  call  $04c2
0ae1: 3d        inc   x
0ae2: dd        mov   a,y
0ae3: 60        clrc
0ae4: 88 10     adc   a,#$10
0ae6: fd        mov   y,a
0ae7: 10 f2     bpl   $0adb
0ae9: ce        pop   x
0aea: e4 03     mov   a,$03
0aec: 8d 4d     mov   y,#$4d
0aee: b2 02     clr5  $02
0af0: 5f c2 04  jmp   $04c2

0af3: 8f 00 04  mov   $04,#$00
0af6: 8f 00 05  mov   $05,#$00
0af9: a2 02     set5  $02
0afb: e8 02     mov   a,#$02
0afd: 3f 09 0b  call  $0b09
0b00: e8 00     mov   a,#$00
0b02: 8d 6c     mov   y,#$6c
0b04: 5f c2 04  jmp   $04c2

; vcmd f8 - pitch slide
0b07: 2f ea     bra   $0af3
0b09: c4 00     mov   $00,a
0b0b: 8f 20 01  mov   $01,#$20
0b0e: e8 00     mov   a,#$00
0b10: 8d 2c     mov   y,#$2c
0b12: 3f c2 04  call  $04c2
0b15: 8d 3c     mov   y,#$3c
0b17: 3f c2 04  call  $04c2
0b1a: e8 00     mov   a,#$00
0b1c: 8d 0d     mov   y,#$0d
0b1e: 3f c2 04  call  $04c2
0b21: e4 00     mov   a,$00
0b23: 68 03     cmp   a,#$03
0b25: 90 02     bcc   $0b29
0b27: e8 02     mov   a,#$02
0b29: 8d 7d     mov   y,#$7d
0b2b: 3f c2 04  call  $04c2
0b2e: 9f        xcn   a
0b2f: 5c        lsr   a
0b30: 48 ff     eor   a,#$ff
0b32: 60        clrc
0b33: 88 01     adc   a,#$01
0b35: 8d 6d     mov   y,#$6d
0b37: 5f c2 04  jmp   $04c2

; vcmd dispatch table
0b3a: dw $08c9 ; e0 - set instrument
0b3c: dw $090c ; e1 - pan
0b3e: dw $091d ; e2 - pan fade
0b40: dw $0939 ; e3 - vibrato on
0b42: dw $094d ; e4 - vibrato off
0b44: dw $0968 ; e5 - master volume
0b46: dw $0971 ; e6 - master volume fade
0b48: dw $0986 ; e7 - tempo
0b4a: dw $098d ; e8 - global transpose
0b4c: dw $0993 ; e9 - per-voice transpose
0b4e: dw $099a ; ea - tremolo on
0b50: dw $09a9 ; eb - tremolo off
0b52: dw $09d2 ; ec - volume
0b54: dw $09e1 ; ed - volume fade
0b56: dw $0a5d ; ee - call subroutine
0b58: dw $0952 ; ef - vibrato fade
0b5a: dw $09ae ; f0 - pitch envelope (release)
0b5c: dw $09b2 ; f1 - pitch envelope (attack)
0b5e: dw $09cc ; f2 - pitch envelope off
0b60: dw $09fd ; f3 - tuning
0b62: dw $0cc1 ; f4
0b64: dw $0a04 ; f5 - set ASDR
0b66: dw $0ab5 ; f6 - echo vbits/volume
0b68: dw $0ac7 ; f7 - set echo params
0b6a: dw $0b07 ; f8 - pitch slide

; vcmd lengths
0b6c: db $02,$02,$03,$04,$01,$02,$03,$02 ; e0-e7
0b74: db $02,$02,$04,$01,$02,$03,$04,$02 ; e8-ef
0b7c: db $04,$04,$01,$02,$04,$04,$04,$04 ; f0-f7
0b84: db $01				 ; f8

; note dur%'s
0b85: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
; per-note velocity values
0b8d: db $19,$32,$4c,$65,$72,$7f,$8c,$98
0b95: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

0b9d: 7d        mov   a,x
0b9e: d0 2a     bne   $0bca
0ba0: e4 34     mov   a,$34
0ba2: f0 14     beq   $0bb8
0ba4: e2 07     set7  $07
0ba6: ba 32     movw  ya,$32
0ba8: 7a 30     addw  ya,$30
0baa: 6e 34 06  dbnz  $34,$0bb3
0bad: f2 07     clr7  $07
0baf: b2 27     clr5  $27
0bb1: ba 34     movw  ya,$34
0bb3: da 30     movw  $30,ya
0bb5: 8f ff 26  mov   $26,#$ff
0bb8: e4 2e     mov   a,$2e
0bba: f0 0e     beq   $0bca
0bbc: ba 2a     movw  ya,$2a
0bbe: 7a 28     addw  ya,$28
0bc0: 6e 2e 02  dbnz  $2e,$0bc5
0bc3: ba 2e     movw  ya,$2e
0bc5: da 28     movw  $28,ya
0bc7: 8f ff 26  mov   $26,#$ff
0bca: e4 01     mov   a,$01
0bcc: f0 20     beq   $0bee
0bce: 8b 01     dec   $01
0bd0: d0 1c     bne   $0bee
0bd2: e4 04     mov   a,$04
0bd4: 8d 2c     mov   y,#$2c
0bd6: 3f c2 04  call  $04c2
0bd9: e4 05     mov   a,$05
0bdb: 8d 3c     mov   y,#$3c
0bdd: 3f c2 04  call  $04c2
0be0: e4 06     mov   a,$06
0be2: 8d 0d     mov   y,#$0d
0be4: 3f c2 04  call  $04c2
0be7: e4 02     mov   a,$02
0be9: 8d 6c     mov   y,#$6c
0beb: 3f c2 04  call  $04c2
0bee: f4 67     mov   a,$67+x
0bf0: f0 0c     beq   $0bfe
0bf2: 09 20 26  or    ($26),($20)
0bf5: e8 00     mov   a,#$00
0bf7: 8d 02     mov   y,#$02
0bf9: 9b 67     dec   $67+x
0bfb: 3f 89 0c  call  $0c89
0bfe: f4 b7     mov   a,$b7+x
0c00: fd        mov   y,a
0c01: f0 23     beq   $0c26
0c03: f5 f0 02  mov   a,$02f0+x
0c06: de b8 1b  cbne  $b8+x,$0c24
0c09: 09 20 26  or    ($26),($20)
0c0c: f5 e0 02  mov   a,$02e0+x
0c0f: 10 07     bpl   $0c18
0c11: fc        inc   y
0c12: d0 04     bne   $0c18
0c14: e8 80     mov   a,#$80
0c16: 2f 04     bra   $0c1c
0c18: 60        clrc
0c19: 95 e1 02  adc   a,$02e1+x
0c1c: d5 e0 02  mov   $02e0+x,a
0c1f: 3f 5e 0d  call  $0d5e
0c22: 2f 08     bra   $0c2c
0c24: bb b8     inc   $b8+x
0c26: f5 40 01  mov   a,$0140+x
0c29: 3f 6d 0d  call  $0d6d
0c2c: f4 68     mov   a,$68+x
0c2e: d0 0d     bne   $0c3d
0c30: e4 26     mov   a,$26
0c32: 24 20     and   a,$20
0c34: f0 52     beq   $0c88
0c36: e4 20     mov   a,$20
0c38: 4e 26 00  tclr1 $0026
0c3b: 2f 09     bra   $0c46
0c3d: e8 30     mov   a,#$30
0c3f: 8d 02     mov   y,#$02
0c41: 9b 68     dec   $68+x
0c43: 3f 89 0c  call  $0c89
0c46: f5 31 02  mov   a,$0231+x
0c49: fd        mov   y,a
0c4a: f5 30 02  mov   a,$0230+x
0c4d: da 21     movw  $21,ya
0c4f: 7d        mov   a,x
0c50: 9f        xcn   a
0c51: 5c        lsr   a
0c52: c4 10     mov   $10,a
0c54: eb 22     mov   y,$22
0c56: d3 27 06  bbc6  $27,$0c5f
0c59: 8d 0a     mov   y,#$0a
0c5b: cb 22     mov   $22,y
0c5d: cb 21     mov   $21,y
0c5f: f6 95 0d  mov   a,$0d95+y
0c62: 80        setc
0c63: b6 94 0d  sbc   a,$0d94+y
0c66: eb 21     mov   y,$21
0c68: cf        mul   ya
0c69: dd        mov   a,y
0c6a: eb 22     mov   y,$22
0c6c: 60        clrc
0c6d: 96 94 0d  adc   a,$0d94+y
0c70: fd        mov   y,a
0c71: f5 41 01  mov   a,$0141+x
0c74: cf        mul   ya
0c75: dd        mov   a,y
0c76: eb 10     mov   y,$10
0c78: 3f c2 04  call  $04c2
0c7b: e8 00     mov   a,#$00
0c7d: 8d 14     mov   y,#$14
0c7f: 9a 21     subw  ya,$21
0c81: da 21     movw  $21,ya
0c83: ab 10     inc   $10
0c85: 33 10 cc  bbc1  $10,$0c54
0c88: 6f        ret

0c89: da 17     movw  $17,ya
0c8b: d0 0f     bne   $0c9c
0c8d: 60        clrc
0c8e: 88 20     adc   a,#$20
0c90: da 19     movw  $19,ya
0c92: 7d        mov   a,x
0c93: fd        mov   y,a
0c94: e8 00     mov   a,#$00
0c96: 2d        push  a
0c97: f7 19     mov   a,($19)+y
0c99: fc        inc   y
0c9a: 2f 12     bra   $0cae
0c9c: 60        clrc
0c9d: 88 10     adc   a,#$10
0c9f: da 19     movw  $19,ya
0ca1: 7d        mov   a,x
0ca2: fd        mov   y,a
0ca3: f7 17     mov   a,($17)+y
0ca5: 60        clrc
0ca6: 97 19     adc   a,($19)+y
0ca8: 2d        push  a
0ca9: fc        inc   y
0caa: f7 17     mov   a,($17)+y
0cac: 97 19     adc   a,($19)+y
0cae: d7 17     mov   ($17)+y,a
0cb0: dc        dec   y
0cb1: ae        pop   a
0cb2: d7 17     mov   ($17)+y,a
0cb4: 6f        ret

0cb5: f2 11     clr7  $11
0cb7: f4 87     mov   a,$87+x
0cb9: d0 26     bne   $0ce1
0cbb: e7 c7     mov   a,($c7+x)
0cbd: 68 f4     cmp   a,#$f4
0cbf: d0 33     bne   $0cf4
; vcmd f4
0cc1: 3f 8c 0d  call  $0d8c
0cc4: 3f 8a 0d  call  $0d8a
0cc7: d4 88     mov   $88+x,a
0cc9: 3f 8a 0d  call  $0d8a
0ccc: d4 87     mov   $87+x,a
0cce: 3f 8a 0d  call  $0d8a
0cd1: 2d        push  a
0cd2: f4 37     mov   a,$37+x
0cd4: ae        pop   a
0cd5: 10 03     bpl   $0cda
0cd7: 60        clrc
0cd8: 84 1c     adc   a,$1c
0cda: 60        clrc
0cdb: 95 30 01  adc   a,$0130+x
0cde: 3f 82 0a  call  $0a82
0ce1: f4 88     mov   a,$88+x
0ce3: f0 04     beq   $0ce9
0ce5: 9b 88     dec   $88+x
0ce7: 2f 0b     bra   $0cf4
0ce9: e2 11     set7  $11
0ceb: e8 60     mov   a,#$60
0ced: 8d 02     mov   y,#$02
0cef: 9b 87     dec   $87+x
0cf1: 3f 89 0c  call  $0c89
0cf4: f5 61 02  mov   a,$0261+x
0cf7: fd        mov   y,a
0cf8: f5 60 02  mov   a,$0260+x
0cfb: da 21     movw  $21,ya
0cfd: f4 a7     mov   a,$a7+x
0cff: f0 09     beq   $0d0a
0d01: f5 c0 02  mov   a,$02c0+x
0d04: 74 a8     cmp   a,$a8+x
0d06: f0 06     beq   $0d0e
0d08: bb a8     inc   $a8+x
0d0a: e3 11 4e  bbs7  $11,$0d5b
0d0d: 6f        ret

0d0e: f5 c1 02  mov   a,$02c1+x
0d11: f0 19     beq   $0d2c
0d13: 74 97     cmp   a,$97+x
0d15: d0 07     bne   $0d1e
0d17: f5 d1 02  mov   a,$02d1+x
0d1a: d4 a7     mov   $a7+x,a
0d1c: 2f 0e     bra   $0d2c
0d1e: f4 97     mov   a,$97+x
0d20: f0 02     beq   $0d24
0d22: f4 a7     mov   a,$a7+x
0d24: 60        clrc
0d25: 95 d0 02  adc   a,$02d0+x
0d28: d4 a7     mov   $a7+x,a
0d2a: bb 97     inc   $97+x
0d2c: f5 b0 02  mov   a,$02b0+x
0d2f: 60        clrc
0d30: 95 b1 02  adc   a,$02b1+x
0d33: d5 b0 02  mov   $02b0+x,a
0d36: c4 10     mov   $10,a
0d38: 1c        asl   a
0d39: 1c        asl   a
0d3a: 90 02     bcc   $0d3e
0d3c: 48 ff     eor   a,#$ff
0d3e: fd        mov   y,a
0d3f: f4 a7     mov   a,$a7+x
0d41: 68 f1     cmp   a,#$f1
0d43: b0 06     bcs   $0d4b
0d45: cf        mul   ya
0d46: dd        mov   a,y
0d47: 8d 00     mov   y,#$00
0d49: 2f 03     bra   $0d4e
0d4b: 28 0f     and   a,#$0f
0d4d: cf        mul   ya
0d4e: f3 10 06  bbc7  $10,$0d57
0d51: da 10     movw  $10,ya
0d53: ba 0c     movw  ya,$0c
0d55: 9a 10     subw  ya,$10
0d57: 7a 21     addw  ya,$21
0d59: da 21     movw  $21,ya
0d5b: 5f 63 04  jmp   $0463
0d5e: 1c        asl   a
0d5f: 90 02     bcc   $0d63
0d61: 48 ff     eor   a,#$ff
0d63: fb b7     mov   y,$b7+x
0d65: cf        mul   ya
0d66: f5 40 01  mov   a,$0140+x
0d69: cf        mul   ya
0d6a: dd        mov   a,y
0d6b: 48 ff     eor   a,#$ff
0d6d: fd        mov   y,a
0d6e: f5 01 02  mov   a,$0201+x
0d71: cf        mul   ya
0d72: f5 37 00  mov   a,$0037+x
0d75: 30 04     bmi   $0d7b
0d77: e8 ff     mov   a,#$ff
0d79: 2f 05     bra   $0d80
0d7b: e4 31     mov   a,$31
0d7d: cf        mul   ya
0d7e: e4 29     mov   a,$29
0d80: cf        mul   ya
0d81: dd        mov   a,y
0d82: cf        mul   ya
0d83: dd        mov   a,y
0d84: d5 41 01  mov   $0141+x,a
0d87: 6f        ret

; get next byte
0d88: f8 1d     mov   x,$1d
0d8a: e7 c7     mov   a,($c7+x)
0d8c: bb c7     inc   $c7+x
0d8e: d0 02     bne   $0d92
0d90: bb c8     inc   $c8+x
0d92: fd        mov   y,a
0d93: 6f        ret

; pan table
0d94: db $00,$01,$03,$07,$0d,$15,$1e,$29
0d9c: db $34,$42,$51,$5e,$67,$6e,$73,$77
0da4: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
0da9: db $7f,$00,$00,$00,$00,$00,$00,$00
0db1: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0db9: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0dc1: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0dc9: db $0c,$1c,$2d,$3d,$5d,$0d,$4d,$6d,$7d,$6c,$2c,$3c,$5c
0dd6: db $7f,$7f,$00,$00,$2e,$00,$00,$f0,$00,$20,$00,$00,$ff

; pitch table
0de3: dw $0042
0de5: dw $0046
0de7: dw $004b
0de9: dw $004f
0deb: dw $0054
0ded: dw $0059
0def: dw $005e
0df1: dw $0064
0df3: dw $006a
0df5: dw $0070
0df7: dw $0077
0df9: dw $007e
0dfb: dw $0085
0dfd: dw $008d
0dff: dw $0096
0e01: dw $009f
0e03: dw $00a8
0e05: dw $00b2
0e07: dw $00bd
0e09: dw $00c8
0e0b: dw $00d4
0e0d: dw $00e1
0e0f: dw $00ee
0e11: dw $00fc
0e13: dw $010b
0e15: dw $011b
0e17: dw $012c
0e19: dw $013e
0e1b: dw $0151
0e1d: dw $0165
0e1f: dw $017a
0e21: dw $0191
0e23: dw $01a9
0e25: dw $01c2
0e27: dw $01dd
0e29: dw $01f9
0e2b: dw $0217
0e2d: dw $0237
0e2f: dw $0259
0e31: dw $027d
0e33: dw $02a3
0e35: dw $02cb
0e37: dw $02f5
0e39: dw $0322
0e3b: dw $0352
0e3d: dw $0385
0e3f: dw $03ba
0e41: dw $03f3
0e43: dw $042f
0e45: dw $046f
0e47: dw $04b2
0e49: dw $04fa
0e4b: dw $0546
0e4d: dw $0596
0e4f: dw $05eb
0e51: dw $0645
0e53: dw $06a5
0e55: dw $070a
0e57: dw $0775
0e59: dw $07e6
0e5b: dw $085f
0e5d: dw $08de
0e5f: dw $0965
0e61: dw $09f4
0e63: dw $0a8c
0e65: dw $0b2c
0e67: dw $0bd6
0e69: dw $0c8b
0e6b: dw $0d4a
0e6d: dw $0e14
0e6f: dw $0eea
0e71: dw $0fcd

0e73: db $00,$00,$01,$01,$00,$01,$00,$00,$01,$01,$00,$00

0e7f: dw $0579
0e81: dw $0588
0e83: dw $04c9
0e85: dw $04db
0e87: dw $04f1
0e89: dw $04f7
0e8b: dw $05a2
0e8d: dw $05a8
0e8f: dw $05ae
0e91: dw $0526
0e93: dw $0540
0e95: dw $0543
