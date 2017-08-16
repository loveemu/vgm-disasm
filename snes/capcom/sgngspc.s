; Super Ghouls 'N Ghosts

0300: 20        clrp
0301: cd cf     mov   x,#$cf
0303: bd        mov   sp,x
0304: 3f 11 0b  call  $0b11
0307: e8 f0     mov   a,#$f0
0309: c5 f1 00  mov   $00f1,a
030c: e8 00     mov   a,#$00
030e: c5 f5 00  mov   $00f5,a
0311: c5 f6 00  mov   $00f6,a
0314: c5 f7 00  mov   $00f7,a
0317: bc        inc   a
0318: c4 cb     mov   $cb,a
031a: c5 f4 00  mov   $00f4,a
031d: e8 40     mov   a,#$40
031f: c5 fa 00  mov   $00fa,a
0322: e8 01     mov   a,#$01
0324: c5 f1 00  mov   $00f1,a
0327: 8f 20 c9  mov   $c9,#$20
032a: e5 fd 00  mov   a,$00fd
032d: f0 fb     beq   $032a
032f: 8b c9     dec   $c9
0331: d0 f7     bne   $032a
0333: 8d 6c     mov   y,#$6c
0335: e8 00     mov   a,#$00
0337: 3f f2 0b  call  $0bf2
033a: 3f cb 03  call  $03cb
033d: e4 ce     mov   a,$ce
033f: 8d 5c     mov   y,#$5c
0341: 3f f2 0b  call  $0bf2
0344: e5 fd 00  mov   a,$00fd
0347: 60        clrc
0348: 84 ca     adc   a,$ca
034a: c4 ca     mov   $ca,a
034c: f0 ec     beq   $033a
034e: 8b ca     dec   $ca
0350: e8 03     mov   a,#$03
0352: cd 3a     mov   x,#$3a
0354: 2d        push  a
0355: 4d        push  x
0356: 8f 80 cd  mov   $cd,#$80
0359: 8f 07 cc  mov   $cc,#$07
035c: cd 0f     mov   x,#$0f
035e: 60        clrc
035f: 98 80 c9  adc   $c9,#$80
0362: 30 37     bmi   $039b
0364: c3 c9 33  bbs6  $c9,$039a
0367: 8d 00     mov   y,#$00
0369: e4 d2     mov   a,$d2
036b: 7a d4     addw  ya,$d4
036d: da d2     movw  $d2,ya
036f: fa d0 d1  mov   ($d1),($d0)
0372: f4 10     mov   a,$10+x
0374: 14 00     or    a,$00+x
0376: f0 03     beq   $037b
0378: 3f 56 06  call  $0656
037b: 0b d1     asl   $d1
037d: 4b cd     lsr   $cd
037f: 1d        dec   x
0380: 1d        dec   x
0381: 8b cc     dec   $cc
0383: 10 ed     bpl   $0372
0385: e4 d8     mov   a,$d8
0387: f0 11     beq   $039a
0389: 8d 00     mov   y,#$00
038b: e4 da     mov   a,$da
038d: 7a db     addw  ya,$db
038f: 90 07     bcc   $0398
0391: 8f 00 d8  mov   $d8,#$00
0394: 8d ff     mov   y,#$ff
0396: e8 ff     mov   a,#$ff
0398: da db     movw  $db,ya
039a: 6f        ret

039b: 8f 00 d1  mov   $d1,#$00
039e: 1d        dec   x
039f: e4 d0     mov   a,$d0
03a1: f0 27     beq   $03ca
03a3: 24 cd     and   a,$cd
03a5: f0 1b     beq   $03c2
03a7: 4d        push  x
03a8: f8 cc     mov   x,$cc
03aa: 40        setp
03ab: f4 18     mov   a,$18+x
03ad: c4 c0     mov   $c0,a
03af: f4 20     mov   a,$20+x
03b1: c4 c1     mov   $c1,a
03b3: 8d 00     mov   y,#$00
03b5: f4 08     mov   a,$08+x
03b7: 7a c0     addw  ya,$c0
03b9: d4 08     mov   $08+x,a
03bb: db 10     mov   $10+x,y
03bd: 20        clrp
03be: ce        pop   x
03bf: 3f 56 06  call  $0656
03c2: 4b cd     lsr   $cd
03c4: 1d        dec   x
03c5: 1d        dec   x
03c6: 8b cc     dec   $cc
03c8: 10 d5     bpl   $039f
03ca: 6f        ret

03cb: e5 f4 00  mov   a,$00f4
03ce: f0 12     beq   $03e2
03d0: c5 f7 00  mov   $00f7,a
03d3: ab cb     inc   $cb
03d5: 3f e3 03  call  $03e3
03d8: e8 31     mov   a,#$31
03da: c5 f1 00  mov   $00f1,a
03dd: e4 cb     mov   a,$cb
03df: c5 f4 00  mov   $00f4,a
03e2: 6f        ret

03e3: 68 f0     cmp   a,#$f0
03e5: 90 03     bcc   $03ea
03e7: 5f e9 04  jmp   $04e9

03ea: 65 00 0e  cmp   a,$0e00
03ed: 90 06     bcc   $03f5
03ef: 80        setc
03f0: a5 00 0e  sbc   a,$0e00
03f3: 2f f5     bra   $03ea
03f5: 1c        asl   a
03f6: 5d        mov   x,a
03f7: f5 03 0e  mov   a,$0e03+x
03fa: c4 c0     mov   $c0,a
03fc: f5 02 0e  mov   a,$0e02+x         ; read song header address from song list
03ff: c4 c1     mov   $c1,a
0401: 04 c0     or    a,$c0
0403: f0 dd     beq   $03e2             ; return if song header address == $0000
0405: 8d 00     mov   y,#$00
0407: f7 c0     mov   a,($c0)+y         ; read the first byte (priority?)
0409: d0 48     bne   $0453             ; branch if first byte != 0
; when song header first byte == 0:
; (in this game, a song seems to have $00 for this field)
040b: 3f 5d 05  call  $055d
040e: 8d 01     mov   y,#$01
0410: e8 99     mov   a,#$99
0412: da d4     movw  $d4,ya
0414: 8f 00 d2  mov   $d2,#$00
0417: 8f e8 d7  mov   $d7,#$e8
041a: e5 01 0e  mov   a,$0e01
041d: 1c        asl   a
041e: c4 d6     mov   $d6,a
0420: cd 0f     mov   x,#$0f             ; voice index *2-1 (initialize voices in reverse-order)
0422: 8d 00     mov   y,#$00
0424: 3a c0     incw  $c0
0426: f7 c0     mov   a,($c0)+y
0428: c4 c3     mov   $c3,a              ; starting address (hi-byte)
042a: 3a c0     incw  $c0
042c: f7 c0     mov   a,($c0)+y
042e: c4 c2     mov   $c2,a              ; starting address (lo-byte)
0430: f7 c2     mov   a,($c2)+y
0432: 68 17     cmp   a,#$17             ; next if the first event byte == end of track ($17)
0434: f0 18     beq   $044e
0436: e4 c3     mov   a,$c3
0438: d4 10     mov   $10+x,a
043a: e4 c2     mov   a,$c2
043c: d4 00     mov   $00+x,a
043e: e8 b8     mov   a,#$b8
0440: d5 d0 02  mov   $02d0+x,a
0443: 40        setp
0444: e8 00     mov   a,#$00
0446: d4 30     mov   $30+x,a
0448: d4 40     mov   $40+x,a
044a: 9c        dec   a
044b: d4 50     mov   $50+x,a
044d: 20        clrp
044e: 1d        dec   x
044f: 1d        dec   x
0450: 10 d0     bpl   $0422
0452: 6f        ret
; when song header first byte != 0:
0453: c4 c4     mov   $c4,a
0455: 8f 80 cd  mov   $cd,#$80
0458: 8f 07 cc  mov   $cc,#$07           ; voice index (initialize voices in reverse-order)
045b: cd 0e     mov   x,#$0e
045d: 8d 00     mov   y,#$00
045f: 3a c0     incw  $c0
0461: f7 c0     mov   a,($c0)+y
0463: c4 c3     mov   $c3,a              ; starting address (hi-byte)
0465: 3a c0     incw  $c0
0467: f7 c0     mov   a,($c0)+y
0469: c4 c2     mov   $c2,a              ; starting address (lo-byte)
046b: f7 c2     mov   a,($c2)+y
046d: 68 17     cmp   a,#$17             ; next if the first event byte == end of track ($17)
046f: f0 6d     beq   $04de
0471: eb cc     mov   y,$cc
0473: e4 c4     mov   a,$c4
0475: 76 00 01  cmp   a,$0100+y
0478: 90 64     bcc   $04de
047a: 09 cd ce  or    ($ce),($cd)
047d: 09 cd d0  or    ($d0),($cd)
0480: 2d        push  a
0481: e4 c3     mov   a,$c3
0483: 2d        push  a
0484: e4 c2     mov   a,$c2
0486: 2d        push  a
0487: 3f 23 05  call  $0523
048a: ae        pop   a
048b: d4 00     mov   $00+x,a
048d: ae        pop   a
048e: d4 10     mov   $10+x,a
0490: eb cc     mov   y,$cc
0492: ae        pop   a
0493: d6 00 01  mov   $0100+y,a
0496: e8 99     mov   a,#$99
0498: d6 18 01  mov   $0118+y,a
049b: e8 01     mov   a,#$01
049d: d6 20 01  mov   $0120+y,a
04a0: e8 00     mov   a,#$00
04a2: d6 08 01  mov   $0108+y,a
04a5: e5 f5 00  mov   a,$00f5
04a8: 30 05     bmi   $04af
04aa: 48 ff     eor   a,#$ff
04ac: bc        inc   a
04ad: 28 7f     and   a,#$7f
04af: 1c        asl   a
04b0: d0 01     bne   $04b3
04b2: 9c        dec   a
04b3: b0 0a     bcs   $04bf
04b5: 8f 00 c8  mov   $c8,#$00
04b8: ec f6 00  mov   y,$00f6
04bb: f0 0e     beq   $04cb
04bd: 2f 08     bra   $04c7
04bf: 8f 20 c8  mov   $c8,#$20
04c2: ec f6 00  mov   y,$00f6
04c5: d0 04     bne   $04cb
04c7: 82 c8     set4  $c8
04c9: 48 ff     eor   a,#$ff
04cb: d5 50 01  mov   $0150+x,a
04ce: e4 c8     mov   a,$c8
04d0: d5 00 02  mov   $0200+x,a
04d3: e5 f7 00  mov   a,$00f7
04d6: d5 40 01  mov   $0140+x,a
04d9: e8 b0     mov   a,#$b0
04db: d5 d0 02  mov   $02d0+x,a
04de: 4b cd     lsr   $cd
04e0: 1d        dec   x
04e1: 1d        dec   x
04e2: 8b cc     dec   $cc
04e4: 30 0e     bmi   $04f4
04e6: 5f 5d 04  jmp   $045d

04e9: 28 0f     and   a,#$0f
04eb: 68 0b     cmp   a,#$0b
04ed: b0 05     bcs   $04f4
04ef: 1c        asl   a
04f0: 5d        mov   x,a
04f1: 1f f5 04  jmp   ($04f5+x)

04f4: 6f        ret
04f5: 09 05 0c  or    ($0c),($05)
04f8: 05 5d 05  or    a,$055d
04fb: 7f        reti
04fc: 05 83 05  or    a,$0583
04ff: c8 05     cmp   x,#$05
0501: cc 05 03  mov   $0305,y
0504: 06        or    a,(x)
0505: 06        or    a,(x)
0506: 06        or    a,(x)
0507: 09 06 3f  or    ($3f),($06)
050a: 5d        mov   x,a
050b: 05 09 d0  or    a,$d009
050e: ce        pop   x
050f: 8f 07 cc  mov   $cc,#$07
0512: cd 0e     mov   x,#$0e
0514: f3 d0 03  bbc7  $d0,$051a
0517: 3f 23 05  call  $0523
051a: 1d        dec   x
051b: 1d        dec   x
051c: 8b cc     dec   $cc
051e: 0b d0     asl   $d0
0520: d0 f2     bne   $0514
0522: 6f        ret

0523: 7d        mov   a,x
0524: 60        clrc
0525: 88 b0     adc   a,#$b0
0527: 8f 00 c2  mov   $c2,#$00
052a: 8f 00 c3  mov   $c3,#$00
052d: 8f 10 c5  mov   $c5,#$10
0530: 3f 51 05  call  $0551
0533: 7d        mov   a,x
0534: 60        clrc
0535: 88 f0     adc   a,#$f0
0537: 8f 00 c2  mov   $c2,#$00
053a: 8f 02 c3  mov   $c3,#$02
053d: 8f 10 c5  mov   $c5,#$10
0540: 3f 51 05  call  $0551
0543: e4 cc     mov   a,$cc
0545: 60        clrc
0546: 88 20     adc   a,#$20
0548: 8f 00 c2  mov   $c2,#$00
054b: 8f 01 c3  mov   $c3,#$01
054e: 8f 08 c5  mov   $c5,#$08
0551: fd        mov   y,a
0552: e8 00     mov   a,#$00
0554: d7 c2     mov   ($c2)+y,a
0556: dd        mov   a,y
0557: 80        setc
0558: a4 c5     sbc   a,$c5
055a: b0 f5     bcs   $0551
055c: 6f        ret

055d: 3f f3 05  call  $05f3
0560: e4 d0     mov   a,$d0
0562: 48 ff     eor   a,#$ff
0564: 04 ce     or    a,$ce
0566: c4 ce     mov   $ce,a
0568: e8 00     mov   a,#$00
056a: cd bf     mov   x,#$bf
056c: c6        mov   (x),a
056d: 1d        dec   x
056e: 1d        dec   x
056f: c8 ff     cmp   x,#$ff
0571: d0 f9     bne   $056c
0573: cd ff     mov   x,#$ff
0575: d5 00 02  mov   $0200+x,a
0578: 1d        dec   x
0579: 1d        dec   x
057a: c8 ff     cmp   x,#$ff
057c: d0 f7     bne   $0575
057e: 6f        ret

057f: c2 c9     set6  $c9
0581: 2f 02     bra   $0585
0583: d2 c9     clr6  $c9
0585: 8f 80 cd  mov   $cd,#$80
0588: 8f 07 cc  mov   $cc,#$07
058b: cd 0f     mov   x,#$0f
058d: e4 d0     mov   a,$d0
058f: 24 cd     and   a,$cd
0591: d0 2c     bne   $05bf
0593: f4 10     mov   a,$10+x
0595: 14 00     or    a,$00+x
0597: f0 26     beq   $05bf
0599: d3 c9 0d  bbc6  $c9,$05a9
059c: e8 00     mov   a,#$00
059e: 8d 00     mov   y,#$00
05a0: 3f e8 0b  call  $0be8             ; VOL(L)
05a3: fc        inc   y
05a4: 3f f2 0b  call  $0bf2             ; VOL(R)
05a7: 2f 16     bra   $05bf
05a9: f4 50     mov   a,$50+x
05ab: f0 12     beq   $05bf
05ad: 3f 8f 0a  call  $0a8f
05b0: f5 c0 02  mov   a,$02c0+x
05b3: 8d 05     mov   y,#$05
05b5: 3f e8 0b  call  $0be8             ; ADSR(1)
05b8: e4 cd     mov   a,$cd
05ba: 8d 4c     mov   y,#$4c
05bc: 3f f2 0b  call  $0bf2
05bf: 4b cd     lsr   $cd
05c1: 1d        dec   x
05c2: 1d        dec   x
05c3: 8b cc     dec   $cc
05c5: 10 c6     bpl   $058d
05c7: 6f        ret

05c8: cd 01     mov   x,#$01
05ca: 2f 02     bra   $05ce
05cc: cd ff     mov   x,#$ff
05ce: ec f5 00  mov   y,$00f5
05d1: f0 20     beq   $05f3
05d3: 3e d9     cmp   x,$d9
05d5: f0 0e     beq   $05e5
05d7: e4 d8     mov   a,$d8
05d9: f0 0b     beq   $05e6
05db: d8 d9     mov   $d9,x
05dd: cb da     mov   $da,y
05df: e4 dc     mov   a,$dc
05e1: 48 ff     eor   a,#$ff
05e3: c4 dc     mov   $dc,a
05e5: 6f        ret

05e6: 8b d8     dec   $d8
05e8: d8 d9     mov   $d9,x
05ea: cb da     mov   $da,y
05ec: 8f 00 db  mov   $db,#$00
05ef: 8f 00 dc  mov   $dc,#$00
05f2: 6f        ret

05f3: 8f 00 d8  mov   $d8,#$00
05f6: 8f 00 d9  mov   $d9,#$00
05f9: 8f 00 da  mov   $da,#$00
05fc: 8f ff db  mov   $db,#$ff
05ff: 8f ff dc  mov   $dc,#$ff
0602: 6f        ret

0603: b2 c9     clr5  $c9
0605: 6f        ret

0606: a2 c9     set5  $c9
0608: 6f        ret

0609: e8 aa     mov   a,#$aa
060b: c5 f4 00  mov   $00f4,a
060e: e8 bb     mov   a,#$bb
0610: c5 f5 00  mov   $00f5,a
0613: e5 f4 00  mov   a,$00f4
0616: 68 cc     cmp   a,#$cc
0618: d0 f9     bne   $0613
061a: 2f 20     bra   $063c
061c: ec f4 00  mov   y,$00f4
061f: d0 fb     bne   $061c
0621: 5e f4 00  cmp   y,$00f4
0624: d0 0f     bne   $0635
0626: e5 f5 00  mov   a,$00f5
0629: cc f4 00  mov   $00f4,y
062c: d7 c0     mov   ($c0)+y,a
062e: fc        inc   y
062f: d0 f0     bne   $0621
0631: ab c1     inc   $c1
0633: 2f ec     bra   $0621
0635: 10 ea     bpl   $0621
0637: 5e f4 00  cmp   y,$00f4
063a: 10 e5     bpl   $0621
063c: e5 f6 00  mov   a,$00f6
063f: ec f7 00  mov   y,$00f7
0642: da c0     movw  $c0,ya
0644: ec f4 00  mov   y,$00f4
0647: e5 f5 00  mov   a,$00f5
064a: cc f4 00  mov   $00f4,y
064d: d0 cd     bne   $061c
064f: c5 f5 00  mov   $00f5,a
0652: bc        inc   a
0653: c4 cb     mov   $cb,a
0655: 6f        ret

0656: f4 30     mov   a,$30+x
0658: f0 41     beq   $069b
065a: f3 c9 09  bbc7  $c9,$0666
065d: eb cc     mov   y,$cc
065f: f6 10 01  mov   a,$0110+y
0662: c4 c4     mov   $c4,a
0664: 2f 03     bra   $0669
0666: fa d3 c4  mov   ($c4),($d3)
0669: f4 20     mov   a,$20+x
066b: 30 1c     bmi   $0689
066d: f4 50     mov   a,$50+x
066f: f0 18     beq   $0689
0671: 80        setc
0672: a4 c4     sbc   a,$c4
0674: f0 02     beq   $0678
0676: b0 0f     bcs   $0687
0678: e3 d1 0a  bbs7  $d1,$0685
067b: f5 c0 02  mov   a,$02c0+x
067e: 28 7f     and   a,#$7f
0680: 8d 05     mov   y,#$05
0682: 3f e8 0b  call  $0be8             ; ADSR(1)
0685: e8 00     mov   a,#$00
0687: d4 50     mov   $50+x,a
0689: f4 30     mov   a,$30+x
068b: 80        setc
068c: a4 c4     sbc   a,$c4
068e: d4 30     mov   $30+x,a
0690: f0 09     beq   $069b
0692: 90 07     bcc   $069b
0694: 68 c1     cmp   a,#$c1
0696: b0 03     bcs   $069b
0698: 5f fc 09  jmp   $09fc

069b: 3f e9 09  call  $09e9
069e: 68 20     cmp   a,#$20
06a0: b0 05     bcs   $06a7             ; return if vcmd >= $20
06a2: 3f d2 07  call  $07d2
06a5: 2f f4     bra   $069b
06a7: 2d        push  a
06a8: 9f        xcn   a
06a9: 5c        lsr   a
06aa: 28 07     and   a,#$07
06ac: 9c        dec   a
06ad: fd        mov   y,a
06ae: f4 20     mov   a,$20+x
06b0: 28 30     and   a,#$30
06b2: d0 05     bne   $06b9
06b4: f6 b4 07  mov   a,$07b4+y
06b7: 2f 12     bra   $06cb
06b9: 28 10     and   a,#$10
06bb: d0 05     bne   $06c2
06bd: f6 ad 07  mov   a,$07ad+y
06c0: 2f 09     bra   $06cb
06c2: f4 20     mov   a,$20+x
06c4: 28 ef     and   a,#$ef
06c6: d4 20     mov   $20+x,a
06c8: f6 bb 07  mov   a,$07bb+y
06cb: 60        clrc
06cc: 94 30     adc   a,$30+x
06ce: d4 30     mov   $30+x,a
06d0: ae        pop   a
06d1: 28 1f     and   a,#$1f
06d3: d0 03     bne   $06d8
06d5: d4 50     mov   $50+x,a
06d7: 6f        ret

06d8: 2d        push  a
06d9: f4 20     mov   a,$20+x
06db: 28 0f     and   a,#$0f
06dd: fd        mov   y,a
06de: ae        pop   a
06df: 60        clrc
06e0: 96 c2 07  adc   a,$07c2+y
06e3: f3 c9 05  bbc7  $c9,$06eb
06e6: 60        clrc
06e7: 88 e8     adc   a,#$e8            ; 2-oct down
06e9: 2f 03     bra   $06ee
06eb: 60        clrc
06ec: 84 d7     adc   a,$d7
06ee: 60        clrc
06ef: 94 60     adc   a,$60+x
06f1: c4 c1     mov   $c1,a
06f3: 8f 00 c0  mov   $c0,#$00
06f6: 8d 00     mov   y,#$00
06f8: f4 70     mov   a,$70+x
06fa: 10 01     bpl   $06fd
06fc: dc        dec   y
06fd: 7a c0     addw  ya,$c0
06ff: ad 55     cmp   y,#$55
0701: 90 02     bcc   $0705
0703: 8d 54     mov   y,#$54
0705: da c2     movw  $c2,ya
0707: f5 00 02  mov   a,$0200+x
070a: c4 c4     mov   $c4,a
070c: 12 c4     clr0  $c4
070e: f5 50 02  mov   a,$0250+x
0711: f0 09     beq   $071c
0713: f5 80 02  mov   a,$0280+x
0716: f0 04     beq   $071c
0718: 64 c3     cmp   a,$c3
071a: d0 04     bne   $0720
071c: e4 c2     mov   a,$c2
071e: 2f 11     bra   $0731
0720: b0 04     bcs   $0726
0722: 22 c4     set1  $c4
0724: 2f 02     bra   $0728
0726: 32 c4     clr1  $c4
0728: ab c4     inc   $c4
072a: f5 80 02  mov   a,$0280+x
072d: fd        mov   y,a
072e: f5 90 02  mov   a,$0290+x
0731: 2d        push  a
0732: e4 c4     mov   a,$c4
0734: d5 00 02  mov   $0200+x,a
0737: e4 c3     mov   a,$c3
0739: d5 80 02  mov   $0280+x,a
073c: e4 c2     mov   a,$c2
073e: d5 90 02  mov   $0290+x,a
0741: ae        pop   a
0742: d5 70 02  mov   $0270+x,a
0745: dd        mov   a,y
0746: d5 60 02  mov   $0260+x,a
0749: f4 20     mov   a,$20+x
074b: 30 1b     bmi   $0768
074d: f5 00 02  mov   a,$0200+x
0750: fd        mov   y,a
0751: 28 08     and   a,#$08
0753: f0 0b     beq   $0760
0755: dd        mov   a,y
0756: 28 3f     and   a,#$3f
0758: d5 00 02  mov   $0200+x,a
075b: e8 00     mov   a,#$00
075d: d5 40 02  mov   $0240+x,a
0760: dd        mov   a,y
0761: 28 04     and   a,#$04
0763: f0 03     beq   $0768
0765: 3f 64 09  call  $0964
0768: e3 d1 29  bbs7  $d1,$0794
076b: 3f 8f 0a  call  $0a8f
076e: 3f cc 0a  call  $0acc
0771: f4 20     mov   a,$20+x
0773: 30 1f     bmi   $0794
0775: e4 ce     mov   a,$ce
0777: 24 cd     and   a,$cd
0779: f0 0a     beq   $0785
077b: 49 cd ce  eor   ($ce),($cd)
077e: e8 00     mov   a,#$00
0780: 8d 5c     mov   y,#$5c
0782: 3f f2 0b  call  $0bf2
0785: f5 c0 02  mov   a,$02c0+x
0788: 8d 05     mov   y,#$05
078a: 3f e8 0b  call  $0be8             ; ADSR(1)
078d: e4 cd     mov   a,$cd
078f: 8d 4c     mov   y,#$4c
0791: 3f f2 0b  call  $0bf2
0794: f4 20     mov   a,$20+x
0796: fd        mov   y,a
0797: 28 7f     and   a,#$7f
0799: c4 c3     mov   $c3,a
079b: dd        mov   a,y
079c: 28 40     and   a,#$40
079e: 1c        asl   a
079f: 04 c3     or    a,$c3
07a1: d4 20     mov   $20+x,a
07a3: 30 07     bmi   $07ac
07a5: fb 40     mov   y,$40+x
07a7: f4 30     mov   a,$30+x
07a9: cf        mul   ya
07aa: db 50     mov   $50+x,y
07ac: 6f        ret

07ad: db $02,$04,$08,$10,$20,$40,$80
07b4: db $03,$06,$0c,$18,$30,$60,$c0
07bb: db $00,$09,$12,$24,$48,$90,$00

07c2: db $00,$0c,$18,$24,$30,$3c,$48,$54
07ca: db $18,$24,$30,$3c,$48,$54,$60,$6c

07d2: 1c        asl   a
07d3: fd        mov   y,a
07d4: f6 e7 07  mov   a,$07e7+y
07d7: 2d        push  a
07d8: f6 e6 07  mov   a,$07e6+y
07db: 2d        push  a
07dc: ad 08     cmp   y,#$08
07de: 90 05     bcc   $07e5
07e0: cb c2     mov   $c2,y
07e2: 3f e9 09  call  $09e9
07e5: 6f        ret

07e6: dw $0826  ; 00 - toggle triplet
07e8: dw $082a  ; 01 - toggle tie/slur
07ea: dw $082e  ; 02 - dotted note switch on
07ec: dw $0834  ; 03 - 2-oct up toggle
07ee: dw $092d  ; 04 - set triplet/dotted/oct-up directly
07f0: dw $083b  ; 05 - tempo
07f2: dw $085b  ; 06 - duration rate
07f4: dw $085e  ; 07 - volume
07f6: dw $086e  ; 08 - instrument
07f8: dw $08b6  ; 09 - key offset
07fa: dw $08c1  ; 0a - global transpose
07fc: dw $08ca  ; 0b - per-voice transpose
07fe: dw $08cd  ; 0c - tuning
0800: dw $08d0  ; 0d - portamento time
0802: dw $08d5  ; 0e - loop for #1
0804: dw $08d9  ; 0f - loop for #2
0806: dw $08dd  ; 10 - loop for #3
0808: dw $08e1  ; 11 - loop for #4
080a: dw $08d5  ; 12 - loop break #1
080c: dw $08d9  ; 13 - loop break #2
080e: dw $08dd  ; 14 - loop break #3
0810: dw $08e1  ; 15 - loop break #4
0812: dw $0917  ; 16 - goto
0814: dw $0938  ; 17 - end of track
0816: dw $0959  ; 18 - pan
0818: dw $0981  ; 19 - master volume
081a: dw $0998  ; 1a - LFO param
081c: dw $09be  ; 1b - nop (echo params)
081e: dw $09c2  ; 1c - nop (echo on/off)
0820: dw $09c3  ; 1d - release rate (GAIN)
0822: dw $09d6  ; 1e
0824: dw $09da  ; 1f

; vcmd 00 - toggle triplet
0826: e8 20     mov   a,#$20
0828: 2f 0c     bra   $0836
; vcmd 01 - toggle tie/slur
082a: e8 40     mov   a,#$40
082c: 2f 08     bra   $0836
; vcmd 02 - dotted note switch on
082e: e8 10     mov   a,#$10
0830: 14 20     or    a,$20+x
0832: 2f 04     bra   $0838
; vcmd 03 - 2-oct up toggle
0834: e8 08     mov   a,#$08
0836: 54 20     eor   a,$20+x
0838: d4 20     mov   $20+x,a
083a: 6f        ret

; vcmd 05 - tempo
083b: 2d        push  a
083c: 3f e9 09  call  $09e9
083f: ee        pop   y
0840: f3 c9 12  bbc7  $c9,$0855
0843: 6d        push  y
0844: 2d        push  a
0845: eb cc     mov   y,$cc
0847: ae        pop   a
0848: d6 18 01  mov   $0118+y,a
084b: ae        pop   a
084c: d6 20 01  mov   $0120+y,a
084f: e8 00     mov   a,#$00
0851: d6 08 01  mov   $0108+y,a
0854: 6f        ret
0855: da d4     movw  $d4,ya
0857: 8f 00 d2  mov   $d2,#$00
085a: 6f        ret

; vcmd 06 - duration rate
085b: d4 40     mov   $40+x,a
085d: 6f        ret

; vcmd 07 - volume
085e: d5 e0 02  mov   $02e0+x,a
0861: f3 c9 05  bbc7  $c9,$0869
0864: e8 fe     mov   a,#$fe
0866: 5f 8e 09  jmp   $098e
0869: e4 d6     mov   a,$d6
086b: 5f 8e 09  jmp   $098e             ; apply master volume

; vcmd 08 - instrument
086e: e3 c9 0a  bbs7  $c9,$087b
0871: bc        inc   a
0872: eb cc     mov   y,$cc
0874: d6 28 01  mov   $0128+y,a
0877: e3 d1 3b  bbs7  $d1,$08b5
087a: 9c        dec   a
087b: 8d 06     mov   y,#$06
087d: cf        mul   ya
087e: da c0     movw  $c0,ya
0880: 60        clrc
0881: 98 80 c0  adc   $c0,#$80
0884: 98 58 c1  adc   $c1,#$58          ; $a0 = #$5880 + (a * 6)
0887: 8d 01     mov   y,#$01
0889: f7 c0     mov   a,($c0)+y
088b: d5 c0 02  mov   $02c0+x,a
088e: 4d        push  x
088f: e4 cc     mov   a,$cc
0891: 9f        xcn   a
0892: 08 04     or    a,#$04
0894: 5d        mov   x,a
0895: 8d 00     mov   y,#$00
0897: f7 c0     mov   a,($c0)+y
0899: c9 f2 00  mov   $00f2,x
089c: c5 f3 00  mov   $00f3,a           ; SRCN,ADSR(1),ADSR(2),GAIN
089f: 3d        inc   x
08a0: fc        inc   y
08a1: ad 03     cmp   y,#$03
08a3: d0 f2     bne   $0897
08a5: ce        pop   x
08a6: fc        inc   y
08a7: f7 c0     mov   a,($c0)+y
08a9: d5 a0 02  mov   $02a0+x,a
08ac: fc        inc   y
08ad: f7 c0     mov   a,($c0)+y
08af: d5 b0 02  mov   $02b0+x,a
08b2: 3f cd 09  call  $09cd
08b5: 6f        ret

; vcmd 09 - key offset
08b6: c4 c3     mov   $c3,a
08b8: f4 20     mov   a,$20+x
08ba: 28 f8     and   a,#$f8
08bc: 04 c3     or    a,$c3
08be: d4 20     mov   $20+x,a
08c0: 6f        ret

; vcmd 0a - global transpose
08c1: e3 c9 05  bbs7  $c9,$08c9
08c4: 60        clrc
08c5: 88 e8     adc   a,#$e8            ; 2-oct down
08c7: c4 d7     mov   $d7,a
08c9: 6f        ret

; vcmd 0b - per-voice transpose
08ca: d4 60     mov   $60+x,a
08cc: 6f        ret

; vcmd 0c - tuning
08cd: d4 70     mov   $70+x,a
08cf: 6f        ret

; vcmd 0d - portamento time
08d0: 1c        asl   a
08d1: d5 50 02  mov   $0250+x,a
08d4: 6f        ret

08d5: 8d 80     mov   y,#$80            ; $80+x - vcmd 0e,12
08d7: 2f 0a     bra   $08e3
08d9: 8d 90     mov   y,#$90            ; $90+x - vcmd 0f,13
08db: 2f 06     bra   $08e3
08dd: 8d a0     mov   y,#$a0            ; $a0+x - vcmd 10,14
08df: 2f 02     bra   $08e3
08e1: 8d b0     mov   y,#$b0            ; $b0+x - vcmd 11,15
08e3: c4 c3     mov   $c3,a
08e5: cb c0     mov   $c0,y
08e7: 7d        mov   a,x
08e8: 60        clrc
08e9: 84 c0     adc   a,$c0
08eb: fd        mov   y,a
08ec: 8f 00 c1  mov   $c1,#$00
08ef: 8f 00 c0  mov   $c0,#$00
08f2: 78 24 c2  cmp   $c2,#$24
08f5: b0 11     bcs   $0908
; vcmd 0e-11 - loop for
08f7: f7 c0     mov   a,($c0)+y
08f9: f0 07     beq   $0902
08fb: 9c        dec   a
08fc: d7 c0     mov   ($c0)+y,a
08fe: f0 21     beq   $0921
0900: 2f 12     bra   $0914
0902: e4 c3     mov   a,$c3
0904: d7 c0     mov   ($c0)+y,a
0906: 2f 0c     bra   $0914
; vcmd 12-15 - loop break
0908: f7 c0     mov   a,($c0)+y
090a: 9c        dec   a
090b: d0 14     bne   $0921
090d: d7 c0     mov   ($c0)+y,a
090f: e4 c3     mov   a,$c3
0911: 3f 2d 09  call  $092d
0914: 3f e9 09  call  $09e9
; vcmd 16 - goto
0917: 2d        push  a
0918: 3f e9 09  call  $09e9
091b: d4 00     mov   $00+x,a
091d: ae        pop   a
091e: d4 10     mov   $10+x,a
0920: 6f        ret
; strip 2 args
0921: e8 02     mov   a,#$02
0923: 60        clrc
0924: 94 00     adc   a,$00+x
0926: d4 00     mov   $00+x,a
0928: 90 02     bcc   $092c
092a: bb 10     inc   $10+x
092c: 6f        ret

; vcmd 04 - set triplet/dotted/oct-up directly
092d: c4 c3     mov   $c3,a
092f: f4 20     mov   a,$20+x
0931: 28 97     and   a,#$97
0933: 04 c3     or    a,$c3
0935: d4 20     mov   $20+x,a
0937: 6f        ret

; vcmd 17 - end of track
0938: ae        pop   a
0939: ae        pop   a
093a: e8 00     mov   a,#$00
093c: d4 10     mov   $10+x,a
093e: d4 00     mov   $00+x,a
0940: f3 c9 0f  bbc7  $c9,$0952
0943: e4 cd     mov   a,$cd
0945: 48 ff     eor   a,#$ff
0947: 24 d0     and   a,$d0
0949: c4 d0     mov   $d0,a
094b: e8 00     mov   a,#$00
094d: eb cc     mov   y,$cc
094f: d6 00 01  mov   $0100+y,a
0952: e3 d1 03  bbs7  $d1,$0958
0955: 09 cd ce  or    ($ce),($cd)
0958: 6f        ret

; vcmd 18 - pan
0959: fd        mov   y,a
095a: 30 05     bmi   $0961
095c: 48 ff     eor   a,#$ff
095e: bc        inc   a
095f: 28 7f     and   a,#$7f
0961: d5 30 01  mov   $0130+x,a
0964: f5 30 01  mov   a,$0130+x
0967: 1c        asl   a
0968: d0 01     bne   $096b
096a: 9c        dec   a
;
096b: d5 50 01  mov   $0150+x,a
096e: e8 00     mov   a,#$00
0970: 88 00     adc   a,#$00
0972: 1c        asl   a
0973: 9f        xcn   a
0974: c4 c8     mov   $c8,a
0976: f5 00 02  mov   a,$0200+x
0979: 28 cf     and   a,#$cf
097b: 04 c8     or    a,$c8
097d: d5 00 02  mov   $0200+x,a
0980: 6f        ret

; vcmd 19 - master volume
0981: e3 c9 13  bbs7  $c9,$0997
0984: fd        mov   y,a
0985: e5 01 0e  mov   a,$0e01
0988: 1c        asl   a
0989: cf        mul   ya
098a: dd        mov   a,y
098b: 1c        asl   a
098c: c4 d6     mov   $d6,a
; multiple channel volume by a/256
098e: fd        mov   y,a
098f: f5 e0 02  mov   a,$02e0+x         ; channel volume
0992: cf        mul   ya
0993: dd        mov   a,y
0994: d5 f0 02  mov   $02f0+x,a         ; adjusted volume
0997: 6f        ret

; vcmd 1a - LFO param
0998: 2d        push  a
0999: 3f e9 09  call  $09e9
099c: ee        pop   y
099d: ad 03     cmp   y,#$03
099f: f0 0e     beq   $09af
; param type 00-02 (vibrato depth, tremolo depth, LFO speed)
09a1: 2d        push  a
09a2: dd        mov   a,y
09a3: 9f        xcn   a
09a4: d8 c4     mov   $c4,x
09a6: 60        clrc
09a7: 84 c4     adc   a,$c4
09a9: fd        mov   y,a
09aa: ae        pop   a
09ab: d6 10 02  mov   $0210+y,a
09ae: 6f        ret
; param type 03 - reset LFO per note, or not
09af: 9f        xcn   a
09b0: 5c        lsr   a
09b1: c4 c3     mov   $c3,a
09b3: f5 00 02  mov   a,$0200+x
09b6: 28 f7     and   a,#$f7
09b8: 04 c3     or    a,$c3
09ba: d5 00 02  mov   $0200+x,a
09bd: 6f        ret

; vcmd 1b - nop (echo params)
09be: 3f e9 09  call  $09e9             ; skip param byte
09c1: 6f        ret

; vcmd 1c - nop (echo on/off)
09c2: 6f        ret

; vcmd 1d - release rate (GAIN)
09c3: 28 1f     and   a,#$1f
09c5: 08 a0     or    a,#$a0            ; GAIN exp
09c7: d5 d0 02  mov   $02d0+x,a
09ca: e3 d1 08  bbs7  $d1,$09d5
09cd: f5 d0 02  mov   a,$02d0+x
09d0: 8d 07     mov   y,#$07
09d2: 3f e8 0b  call  $0be8             ; GAIN
09d5: 6f        ret

; vcmd 1e
09d6: d5 40 01  mov   $0140+x,a
09d9: 6f        ret

; vcmd 1f
09da: 1c        asl   a
09db: 1c        asl   a
09dc: c4 c3     mov   $c3,a
09de: f5 00 02  mov   a,$0200+x
09e1: 28 fb     and   a,#$fb
09e3: 04 c3     or    a,$c3
09e5: d5 00 02  mov   $0200+x,a
09e8: 6f        ret

09e9: f4 00     mov   a,$00+x
09eb: c4 c0     mov   $c0,a
09ed: f4 10     mov   a,$10+x
09ef: c4 c1     mov   $c1,a
09f1: 8d 00     mov   y,#$00
09f3: f7 c0     mov   a,($c0)+y
09f5: bb 00     inc   $00+x
09f7: d0 02     bne   $09fb
09f9: bb 10     inc   $10+x
09fb: 6f        ret

09fc: f5 30 02  mov   a,$0230+x
09ff: 60        clrc
0a00: 95 40 02  adc   a,$0240+x
0a03: d5 40 02  mov   $0240+x,a
0a06: 90 09     bcc   $0a11
0a08: f5 00 02  mov   a,$0200+x
0a0b: 60        clrc
0a0c: 88 40     adc   a,#$40
0a0e: d5 00 02  mov   $0200+x,a
0a11: 40        setp
0a12: f4 40     mov   a,$40+x
0a14: 60        clrc
0a15: 94 50     adc   a,$50+x
0a17: d4 50     mov   $50+x,a
0a19: 20        clrp
0a1a: 90 21     bcc   $0a3d
0a1c: f5 00 02  mov   a,$0200+x
0a1f: 2d        push  a
0a20: 80        setc
0a21: a8 10     sbc   a,#$10
0a23: 28 30     and   a,#$30
0a25: c4 c4     mov   $c4,a
0a27: f3 c9 0b  bbc7  $c9,$0a35
0a2a: 83 c4 08  bbs4  $c4,$0a35
0a2d: e8 00     mov   a,#$00
0a2f: d5 40 01  mov   $0140+x,a
0a32: d5 50 01  mov   $0150+x,a
0a35: ae        pop   a
0a36: 28 cf     and   a,#$cf
0a38: 04 c4     or    a,$c4
0a3a: d5 00 02  mov   $0200+x,a
0a3d: f5 00 02  mov   a,$0200+x
0a40: c4 c4     mov   $c4,a
0a42: 13 c4 3b  bbc0  $c4,$0a80
0a45: 8f 00 c1  mov   $c1,#$00
0a48: f5 50 02  mov   a,$0250+x
0a4b: c4 c0     mov   $c0,a
0a4d: f5 80 02  mov   a,$0280+x
0a50: c4 c3     mov   $c3,a
0a52: f5 90 02  mov   a,$0290+x
0a55: c4 c2     mov   $c2,a
0a57: f5 60 02  mov   a,$0260+x
0a5a: fd        mov   y,a
0a5b: f5 70 02  mov   a,$0270+x
0a5e: 23 c4 0a  bbs1  $c4,$0a6b
0a61: 9a c0     subw  ya,$c0
0a63: 90 0c     bcc   $0a71
0a65: 5a c2     cmpw  ya,$c2
0a67: 90 08     bcc   $0a71
0a69: 2f 0e     bra   $0a79
0a6b: 7a c0     addw  ya,$c0
0a6d: 5a c2     cmpw  ya,$c2
0a6f: 90 08     bcc   $0a79
0a71: e4 c4     mov   a,$c4
0a73: 9c        dec   a
0a74: d5 00 02  mov   $0200+x,a
0a77: ba c2     movw  ya,$c2
0a79: d5 70 02  mov   $0270+x,a
0a7c: dd        mov   a,y
0a7d: d5 60 02  mov   $0260+x,a
0a80: e3 d1 0b  bbs7  $d1,$0a8e
0a83: 3f 8f 0a  call  $0a8f
0a86: 03 c4 43  bbs0  $c4,$0acc
0a89: f5 10 02  mov   a,$0210+x
0a8c: d0 4c     bne   $0ada
0a8e: 6f        ret

0a8f: f5 20 02  mov   a,$0220+x
0a92: f0 19     beq   $0aad
0a94: 1c        asl   a
0a95: fd        mov   y,a
0a96: f5 00 02  mov   a,$0200+x
0a99: 1c        asl   a
0a9a: 1c        asl   a
0a9b: f5 40 02  mov   a,$0240+x
0a9e: 90 02     bcc   $0aa2
0aa0: 48 ff     eor   a,#$ff
0aa2: cf        mul   ya
0aa3: dd        mov   a,y
0aa4: 48 ff     eor   a,#$ff
0aa6: fd        mov   y,a
0aa7: f5 f0 02  mov   a,$02f0+x
0aaa: cf        mul   ya
0aab: 2f 04     bra   $0ab1
0aad: f5 f0 02  mov   a,$02f0+x
0ab0: fd        mov   y,a
0ab1: e3 c9 08  bbs7  $c9,$0abc
0ab4: e4 dc     mov   a,$dc
0ab6: f3 d9 02  bbc7  $d9,$0abb
0ab9: 48 ff     eor   a,#$ff
0abb: cf        mul   ya
0abc: f5 00 02  mov   a,$0200+x
0abf: c4 c7     mov   $c7,a
0ac1: f5 50 01  mov   a,$0150+x
0ac4: 93 c7 02  bbc4  $c7,$0ac9
0ac7: 48 ff     eor   a,#$ff
0ac9: 5f cc 0b  jmp   $0bcc

0acc: f5 10 02  mov   a,$0210+x
0acf: d0 09     bne   $0ada
0ad1: f5 60 02  mov   a,$0260+x
0ad4: fd        mov   y,a
0ad5: f5 70 02  mov   a,$0270+x
0ad8: 2f 34     bra   $0b0e
0ada: 1c        asl   a
0adb: 8d 0c     mov   y,#$0c
0add: cf        mul   ya
0ade: da c0     movw  $c0,ya
0ae0: f5 00 02  mov   a,$0200+x
0ae3: 0d        push  psw
0ae4: 1c        asl   a
0ae5: 1c        asl   a
0ae6: f5 40 02  mov   a,$0240+x
0ae9: 90 02     bcc   $0aed
0aeb: 48 ff     eor   a,#$ff
0aed: 2d        push  a
0aee: eb c0     mov   y,$c0
0af0: cf        mul   ya
0af1: cb c0     mov   $c0,y
0af3: ae        pop   a
0af4: eb c1     mov   y,$c1
0af6: cf        mul   ya
0af7: 8f 00 c1  mov   $c1,#$00
0afa: 7a c0     addw  ya,$c0
0afc: da c0     movw  $c0,ya
0afe: f5 60 02  mov   a,$0260+x
0b01: fd        mov   y,a
0b02: f5 70 02  mov   a,$0270+x
0b05: 8e        pop   psw
0b06: 30 04     bmi   $0b0c
0b08: 7a c0     addw  ya,$c0
0b0a: 2f 02     bra   $0b0e
0b0c: 9a c0     subw  ya,$c0
0b0e: 5f 4b 0b  jmp   $0b4b

0b11: e8 00     mov   a,#$00
0b13: 5d        mov   x,a
0b14: af        mov   (x)+,a
0b15: c8 e0     cmp   x,#$e0
0b17: d0 fb     bne   $0b14
0b19: 5d        mov   x,a
0b1a: d5 00 01  mov   $0100+x,a
0b1d: 3d        inc   x
0b1e: c8 80     cmp   x,#$80
0b20: d0 f8     bne   $0b1a
0b22: 5d        mov   x,a
0b23: d5 00 02  mov   $0200+x,a
0b26: 3d        inc   x
0b27: d0 fa     bne   $0b23
0b29: f5 f9 0b  mov   a,$0bf9+x         ; DSP reg initialize table (address)
0b2c: fd        mov   y,a
0b2d: f5 05 0c  mov   a,$0c05+x         ; DSP reg initialize table (value)
0b30: 3f f2 0b  call  $0bf2             ; initialize DSP reg
0b33: 3d        inc   x
0b34: c8 0c     cmp   x,#$0c
0b36: d0 f1     bne   $0b29
0b38: cd 00     mov   x,#$00
0b3a: 8d 0f     mov   y,#$0f
0b3c: f5 11 0c  mov   a,$0c11+x         ; initialize echo FIR
0b3f: 3f f2 0b  call  $0bf2
0b42: 3d        inc   x
0b43: dd        mov   a,y
0b44: 60        clrc
0b45: 88 10     adc   a,#$10
0b47: fd        mov   y,a
0b48: 10 f2     bpl   $0b3c
0b4a: 6f        ret

0b4b: dc        dec   y
0b4c: cb c1     mov   $c1,y
0b4e: c4 c0     mov   $c0,a
0b50: dd        mov   a,y
0b51: 8d 00     mov   y,#$00
0b53: 80        setc
0b54: a8 34     sbc   a,#$34
0b56: b0 09     bcs   $0b61
0b58: e4 c1     mov   a,$c1
0b5a: 80        setc
0b5b: a8 13     sbc   a,#$13
0b5d: b0 06     bcs   $0b65
0b5f: dc        dec   y
0b60: 1c        asl   a
0b61: 7a c0     addw  ya,$c0
0b63: da c0     movw  $c0,ya
0b65: 4d        push  x
0b66: e4 c1     mov   a,$c1
0b68: 1c        asl   a
0b69: 8d 00     mov   y,#$00
0b6b: cd 18     mov   x,#$18
0b6d: 9e        div   ya,x
0b6e: 5d        mov   x,a
0b6f: f6 1a 0c  mov   a,$0c1a+y
0b72: c4 c3     mov   $c3,a
0b74: f6 19 0c  mov   a,$0c19+y
0b77: c4 c2     mov   $c2,a
0b79: f6 1c 0c  mov   a,$0c1c+y
0b7c: 2d        push  a
0b7d: f6 1b 0c  mov   a,$0c1b+y
0b80: ee        pop   y
0b81: 9a c2     subw  ya,$c2
0b83: eb c0     mov   y,$c0
0b85: cf        mul   ya
0b86: dd        mov   a,y
0b87: 8d 00     mov   y,#$00
0b89: 7a c2     addw  ya,$c2
0b8b: cb c1     mov   $c1,y
0b8d: 1c        asl   a
0b8e: 2b c1     rol   $c1
0b90: c8 06     cmp   x,#$06
0b92: f0 06     beq   $0b9a
0b94: 4b c1     lsr   $c1
0b96: 7c        ror   a
0b97: 3d        inc   x
0b98: 2f f6     bra   $0b90
0b9a: c4 c0     mov   $c0,a
0b9c: ce        pop   x
0b9d: f5 b0 02  mov   a,$02b0+x
0ba0: eb c1     mov   y,$c1
0ba2: cf        mul   ya
0ba3: da c2     movw  $c2,ya
0ba5: f5 b0 02  mov   a,$02b0+x
0ba8: eb c0     mov   y,$c0
0baa: cf        mul   ya
0bab: 6d        push  y
0bac: f5 a0 02  mov   a,$02a0+x
0baf: eb c0     mov   y,$c0
0bb1: cf        mul   ya
0bb2: 7a c2     addw  ya,$c2
0bb4: da c2     movw  $c2,ya
0bb6: f5 a0 02  mov   a,$02a0+x
0bb9: eb c1     mov   y,$c1
0bbb: cf        mul   ya
0bbc: fd        mov   y,a
0bbd: ae        pop   a
0bbe: 7a c2     addw  ya,$c2
0bc0: 28 f0     and   a,#$f0
0bc2: 6d        push  y
0bc3: 8d 02     mov   y,#$02
0bc5: 3f e8 0b  call  $0be8             ; P(L)
0bc8: ae        pop   a
0bc9: fc        inc   y
0bca: 2f 26     bra   $0bf2             ; P(H)
0bcc: b3 c9 03  bbc5  $c9,$0bd2
0bcf: dd        mov   a,y
0bd0: 2f 0a     bra   $0bdc
0bd2: 6d        push  y
0bd3: cf        mul   ya
0bd4: dd        mov   a,y
0bd5: ee        pop   y
0bd6: b3 c7 03  bbc5  $c7,$0bdc
0bd9: 2d        push  a
0bda: dd        mov   a,y
0bdb: ee        pop   y
0bdc: cb c7     mov   $c7,y
0bde: 8d 00     mov   y,#$00
0be0: 3f e8 0b  call  $0be8             ; VOL(L)
0be3: e4 c7     mov   a,$c7
0be5: fc        inc   y
0be6: 2f 0a     bra   $0bf2             ; VOL(R)
; write A to DSP reg Y of channel X
0be8: 2d        push  a
0be9: cb c6     mov   $c6,y
0beb: e4 cc     mov   a,$cc
0bed: 9f        xcn   a
0bee: 04 c6     or    a,$c6
0bf0: fd        mov   y,a
0bf1: ae        pop   a
; write A to DSP reg Y
0bf2: cc f2 00  mov   $00f2,y
0bf5: c5 f3 00  mov   $00f3,a
0bf8: 6f        ret

; EON,EFB,EVOL(L),EVOL(R),FLG,EDL,ESA,DIR,MVOL(L),MVOL(R),PMON,NON
0bf9: db $4d,$0d,$2c,$3c,$6c,$7d,$6d,$5d,$0c,$1c,$2d,$3d
0c05: db $00,$00,$00,$00,$20,$00,$0d,$58,$7f,$7f,$00,$00

; FIR
0c11: db $7f,$00,$00,$00,$00,$00,$00,$00

0c19: dw $085f
0c1b: dw $08de
0c1d: dw $0965
0c1f: dw $09f4
0c21: dw $0a8c
0c23: dw $0b2c
0c25: dw $0bd6
0c27: dw $0c8b
0c29: dw $0d4a
0c2b: dw $0e14
0c2d: dw $0eea
0c2f: dw $0fcd
0c31: dw $10be
