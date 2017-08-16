; The Magical Quest Starring Mickey Mouse

02c0: 20        clrp
02c1: cd cf     mov   x,#$cf
02c3: bd        mov   sp,x
02c4: e8 00     mov   a,#$00
02c6: 5d        mov   x,a
02c7: af        mov   (x)+,a
02c8: c8 e0     cmp   x,#$e0
02ca: d0 fb     bne   $02c7
02cc: 40        setp
02cd: 5d        mov   x,a
02ce: af        mov   (x)+,a
02cf: c8 b0     cmp   x,#$b0
02d1: d0 fb     bne   $02ce
02d3: 20        clrp
02d4: 5d        mov   x,a
02d5: d5 00 02  mov   $0200+x,a
02d8: 3d        inc   x
02d9: c8 c0     cmp   x,#$c0
02db: d0 f8     bne   $02d5
02dd: 3f 2f 04  call  $042f
02e0: e8 40     mov   a,#$40
02e2: c5 fa 00  mov   $00fa,a
02e5: e8 f1     mov   a,#$f1
02e7: c5 f1 00  mov   $00f1,a
02ea: e8 01     mov   a,#$01
02ec: c4 b2     mov   $b2,a
02ee: c5 f6 00  mov   $00f6,a
02f1: 9c        dec   a
02f2: c5 f7 00  mov   $00f7,a
02f5: 3f 48 04  call  $0448
02f8: e5 fd 00  mov   a,$00fd
02fb: 60        clrc
02fc: 84 b1     adc   a,$b1
02fe: c4 b1     mov   $b1,a
0300: f0 f3     beq   $02f5
0302: 8b b1     dec   $b1
0304: 8d 02     mov   y,#$02
0306: e8 f5     mov   a,#$f5
0308: 6d        push  y
0309: 2d        push  a
030a: 60        clrc
030b: 98 80 b0  adc   $b0,#$80
030e: 10 03     bpl   $0313
0310: 5f 97 03  jmp   $0397
0313: e3 cd 0c  bbs7  $cd,$0322
0316: 8d 6c     mov   y,#$6c
0318: e8 00     mov   a,#$00
031a: 3f cf 0c  call  $0ccf             ; FLG
031d: 69 cd cc  cmp   ($cc),($cd)
0320: f0 04     beq   $0326
0322: ab cd     inc   $cd
0324: 2f 1b     bra   $0341
0326: 8d 4d     mov   y,#$4d
0328: e4 b8     mov   a,$b8
032a: 48 ff     eor   a,#$ff
032c: 24 bc     and   a,$bc
032e: 04 b7     or    a,$b7
0330: 3f cf 0c  call  $0ccf             ; EON
0333: 8d 2c     mov   y,#$2c
0335: e4 ce     mov   a,$ce
0337: 3f cf 0c  call  $0ccf             ; EVOL(L)
033a: 8d 3c     mov   y,#$3c
033c: e4 cf     mov   a,$cf
033e: 3f cf 0c  call  $0ccf             ; EVOL(R)
0341: cd 07     mov   x,#$07
0343: 8d 57     mov   y,#$57
0345: e4 ba     mov   a,$ba
0347: 04 b5     or    a,$b5
0349: 2d        push  a
034a: 6d        push  y
034b: f3 b5 0a  bbc7  $b5,$0358
034e: f6 38 02  mov   a,$0238+y
0351: c4 a3     mov   $a3,a
0353: f6 40 02  mov   a,$0240+y
0356: 2f 1b     bra   $0373
0358: f3 bd 0d  bbc7  $bd,$0368
035b: f5 50 02  mov   a,$0250+x
035e: 3f ce 08  call  $08ce
0361: 40        setp
0362: 3f fd 0b  call  $0bfd
0365: 3f 2b 0b  call  $0b2b
0368: f3 ba 14  bbc7  $ba,$037f
036b: f5 38 02  mov   a,$0238+x
036e: c4 a3     mov   $a3,a
0370: f5 40 02  mov   a,$0240+x
0373: 8d 07     mov   y,#$07
0375: 3f c4 0c  call  $0cc4             ; GAIN
0378: 8d 05     mov   y,#$05
037a: e4 a3     mov   a,$a3
037c: 3f c4 0c  call  $0cc4             ; ADSR(1)
037f: 0b b5     asl   $b5
0381: 0b bd     asl   $bd
0383: 0b ba     asl   $ba
0385: ee        pop   y
0386: dc        dec   y
0387: 1d        dec   x
0388: 10 c0     bpl   $034a
038a: 8d 5c     mov   y,#$5c
038c: e8 00     mov   a,#$00
038e: 3f cf 0c  call  $0ccf             ; KOF
0391: ae        pop   a
0392: 8d 4c     mov   y,#$4c
0394: 5f cf 0c  jmp   $0ccf             ; KON

0397: f2 b0     clr7  $b0
0399: c3 b0 39  bbs6  $b0,$03d5
039c: 8f 80 b3  mov   $b3,#$80
039f: fa b8 b9  mov   ($b9),($b8)
03a2: cd 07     mov   x,#$07
03a4: ba be     movw  ya,$be
03a6: 7a c0     addw  ya,$c0
03a8: da a9     movw  $a9,ya
03aa: 8d 00     mov   y,#$00
03ac: e4 c2     mov   a,$c2
03ae: 7a a9     addw  ya,$a9
03b0: cb a8     mov   $a8,y
03b2: c4 c2     mov   $c2,a
03b4: f4 08     mov   a,$08+x
03b6: 14 00     or    a,$00+x
03b8: f0 03     beq   $03bd
03ba: 3f bb 06  call  $06bb
03bd: 1d        dec   x
03be: 0b b9     asl   $b9
03c0: 4b b3     lsr   $b3
03c2: d0 f0     bne   $03b4
03c4: ba c7     movw  ya,$c7
03c6: 7a c9     addw  ya,$c9
03c8: 90 09     bcc   $03d3
03ca: 8f 00 c7  mov   $c7,#$00
03cd: 8f 00 c8  mov   $c8,#$00
03d0: 8d ff     mov   y,#$ff
03d2: dd        mov   a,y
03d3: da c9     movw  $c9,ya
03d5: e2 b0     set7  $b0
03d7: 8f 80 b3  mov   $b3,#$80
03da: 8f 00 b9  mov   $b9,#$00
03dd: cd 57     mov   x,#$57
03df: e4 b8     mov   a,$b8
03e1: 24 b3     and   a,$b3
03e3: f0 19     beq   $03fe
03e5: f5 60 02  mov   a,$0260+x
03e8: c4 aa     mov   $aa,a
03ea: f5 58 02  mov   a,$0258+x
03ed: c4 a9     mov   $a9,a
03ef: 8d 00     mov   y,#$00
03f1: f5 68 02  mov   a,$0268+x
03f4: 7a a9     addw  ya,$a9
03f6: cb a8     mov   $a8,y
03f8: d5 68 02  mov   $0268+x,a
03fb: 3f bb 06  call  $06bb
03fe: 1d        dec   x
03ff: 4b b3     lsr   $b3
0401: d0 dc     bne   $03df
0403: e8 4c     mov   a,#$4c
0405: c5 f2 00  mov   $00f2,a
0408: e5 f3 00  mov   a,$00f3           ; KON
040b: c4 a3     mov   $a3,a
040d: e4 b6     mov   a,$b6
040f: 04 bb     or    a,$bb
0411: 24 a3     and   a,$a3
0413: 8d 5c     mov   y,#$5c
0415: 8f 00 b6  mov   $b6,#$00
0418: 8f 00 bb  mov   $bb,#$00
041b: 5f cf 0c  jmp   $0ccf             ; KOF
041e: 8d 07     mov   y,#$07
0420: e8 9e     mov   a,#$9e
0422: 3f c4 0c  call  $0cc4             ; GAIN
0425: 8d 05     mov   y,#$05
0427: f5 38 02  mov   a,$0238+x
042a: 28 7f     and   a,#$7f
042c: 5f c4 0c  jmp   $0cc4             ; ADSR(1)
042f: 8d 03     mov   y,#$03
0431: f6 41 04  mov   a,$0441+y         ; DSP reg initialize table -1 (address)
0434: c5 f2 00  mov   $00f2,a
0437: f6 44 04  mov   a,$0444+y         ; DSP reg initialize table -1 (value)
043a: c5 f3 00  mov   $00f3,a           ; initialize DSP reg
043d: fe f2     dbnz  y,$0431
043f: 5f 0e 0a  jmp   $0a0e             ; initialize echo

; PMON,NON,DIR
0442: db $2d,$3d,$5d
0445: db $00,$00,$66

0448: e5 f4 00  mov   a,$00f4
044b: 65 f4 00  cmp   a,$00f4
044e: d0 f8     bne   $0448
0450: fd        mov   y,a
0451: f0 14     beq   $0467
0453: 2d        push  a
0454: ab b2     inc   $b2
0456: 3f 68 04  call  $0468
0459: e8 31     mov   a,#$31
045b: c5 f1 00  mov   $00f1,a
045e: e4 b2     mov   a,$b2
0460: c5 f6 00  mov   $00f6,a
0463: ae        pop   a
0464: c5 f7 00  mov   $00f7,a
0467: 6f        ret

0468: 68 f0     cmp   a,#$f0
046a: 90 03     bcc   $046f
046c: 5f 14 05  jmp   $0514
046f: 65 20 0d  cmp   a,$0d20
0472: 90 06     bcc   $047a
0474: 80        setc
0475: a5 20 0d  sbc   a,$0d20
0478: 2f f5     bra   $046f
047a: 1c        asl   a
047b: 5d        mov   x,a
047c: f5 22 0d  mov   a,$0d22+x         ; read song header address from song list
047f: c4 a1     mov   $a1,a
0481: f5 23 0d  mov   a,$0d23+x
0484: c4 a0     mov   $a0,a
0486: 04 a1     or    a,$a1
0488: f0 dd     beq   $0467             ; return if song header address == $0000
048a: 8d 00     mov   y,#$00
048c: f7 a0     mov   a,($a0)+y         ; read the first byte (priority?)
048e: d0 03     bne   $0493
0490: 5f 7a 05  jmp   $057a
; when song header first byte != 0:
; (in this game, a song seems to have $02 for this field)
0493: c4 a4     mov   $a4,a
0495: 8f 80 b3  mov   $b3,#$80          ; voice mask (initialize voices in reverse-order)
0498: cd 57     mov   x,#$57
049a: 8d 00     mov   y,#$00
049c: 3a a0     incw  $a0
049e: f7 a0     mov   a,($a0)+y
04a0: c4 a3     mov   $a3,a             ; starting address (hi-byte)
04a2: 3a a0     incw  $a0
04a4: f7 a0     mov   a,($a0)+y
04a6: c4 a2     mov   $a2,a             ; starting address (lo-byte)
04a8: f7 a2     mov   a,($a2)+y
04aa: 68 17     cmp   a,#$17            ; next if the first event byte == end of track ($17)
04ac: f0 2e     beq   $04dc
04ae: e4 a4     mov   a,$a4
04b0: 75 50 02  cmp   a,$0250+x
04b3: 90 27     bcc   $04dc
04b5: 09 b3 b8  or    ($b8),($b3)
04b8: 3f ee 04  call  $04ee
04bb: 3f 1e 04  call  $041e
04be: e4 a4     mov   a,$a4
04c0: d5 50 02  mov   $0250+x,a
04c3: ba a2     movw  ya,$a2
04c5: db 08     mov   $08+x,y
04c7: d4 00     mov   $00+x,a           ; set reading ptr
04c9: e8 10     mov   a,#$10
04cb: d5 00 01  mov   $0100+x,a
04ce: e8 b8     mov   a,#$b8
04d0: d5 40 02  mov   $0240+x,a
04d3: e5 f5 00  mov   a,$00f5
04d6: 60        clrc
04d7: 88 80     adc   a,#$80
04d9: d5 48 02  mov   $0248+x,a
04dc: 1d        dec   x
04dd: 4b b3     lsr   $b3
04df: d0 b9     bne   $049a
04e1: e4 b8     mov   a,$b8
04e3: 48 ff     eor   a,#$ff
04e5: c4 a4     mov   $a4,a
04e7: 29 a4 b7  and   ($b7),($a4)
04ea: 29 a4 ba  and   ($ba),($a4)
04ed: 6f        ret

04ee: 7d        mov   a,x
04ef: 60        clrc
04f0: 88 08     adc   a,#$08
04f2: fd        mov   y,a
04f3: e8 00     mov   a,#$00
04f5: d6 00 02  mov   $0200+y,a
04f8: dd        mov   a,y
04f9: 60        clrc
04fa: 88 08     adc   a,#$08
04fc: 68 c0     cmp   a,#$c0
04fe: 90 f2     bcc   $04f2
0500: 40        setp
0501: 3f 05 05  call  $0505
0504: 20        clrp
0505: 4d        push  x
0506: e8 00     mov   a,#$00
0508: c6        mov   (x),a
0509: 7d        mov   a,x
050a: 60        clrc
050b: 88 08     adc   a,#$08
050d: 5d        mov   x,a
050e: c8 a0     cmp   x,#$a0
0510: 90 f4     bcc   $0506
0512: ce        pop   x
0513: 6f        ret

0514: 28 0f     and   a,#$0f
0516: 1c        asl   a
0517: 5d        mov   x,a
0518: 1f 1b 05  jmp   ($051b+x)
051b: 37 05     and   a,($05)+y
051d: 3a 05     incw  $05
051f: 53 05 e6  bbc2  $05,$0508
0522: 05 ea 05  or    a,$05ea
0525: 20        clrp
0526: 06        or    a,(x)
0527: 24 06     and   a,$06
0529: 5a 06     cmpw  ya,$06
052b: 5d        mov   x,a
052c: 06        or    a,(x)
052d: 60        clrc
052e: 06        or    a,(x)
052f: 71        tcall 7
0530: 05 74 05  or    a,$0574
0533: bb 05     inc   $05+x
0535: e0        clrv
0536: 05 3f 53  or    a,$533f
0539: 05 8f 80  or    a,$808f
053c: b3 cd 57  bbc5  $cd,$0596
053f: f3 b8 03  bbc7  $b8,$0545
0542: 3f a6 09  call  $09a6
0545: 1d        dec   x
0546: 0b b8     asl   $b8
0548: 4b b3     lsr   $b3
054a: d0 f3     bne   $053f
054c: 8f 00 b5  mov   $b5,#$00
054f: 8f 00 b7  mov   $b7,#$00
0552: 6f        ret

0553: 3f 03 06  call  $0603
0556: e8 00     mov   a,#$00
0558: c4 bc     mov   $bc,a
055a: cd 08     mov   x,#$08
055c: d5 00 02  mov   $0200+x,a
055f: 3d        inc   x
0560: c8 58     cmp   x,#$58
0562: d0 f8     bne   $055c
0564: 40        setp
0565: 3f 69 05  call  $0569
0568: 20        clrp
0569: cd 00     mov   x,#$00
056b: af        mov   (x)+,a
056c: c8 50     cmp   x,#$50
056e: d0 fb     bne   $056b
0570: 6f        ret

0571: 3f 60 06  call  $0660
0574: 8f 0d a1  mov   $a1,#$0d
0577: 8f 1f a0  mov   $a0,#$1f          ; song address = $0d1f
; fall through...
; or when song header first byte == 0:
057a: 3f 53 05  call  $0553
057d: 8d 00     mov   y,#$00
057f: dd        mov   a,y
0580: da c0     movw  $c0,ya
0582: c4 c4     mov   $c4,a
0584: c4 c5     mov   $c5,a
0586: 9c        dec   a
0587: c4 c3     mov   $c3,a
0589: 3f 4f 06  call  $064f
058c: cd 07     mov   x,#$07            ; voice index (initialize voices in reverse-order)
058e: 8d 00     mov   y,#$00
0590: 3a a0     incw  $a0
0592: f7 a0     mov   a,($a0)+y
0594: c4 a3     mov   $a3,a             ; starting address (hi-byte)
0596: 3a a0     incw  $a0
0598: f7 a0     mov   a,($a0)+y
059a: c4 a2     mov   $a2,a             ; starting address (lo-byte)
059c: f7 a2     mov   a,($a2)+y
059e: 68 17     cmp   a,#$17            ; next if the first event byte == end of track ($17)
05a0: f0 15     beq   $05b7
05a2: ba a2     movw  ya,$a2
05a4: db 08     mov   $08+x,y
05a6: d4 00     mov   $00+x,a           ; set reading ptr
05a8: e8 10     mov   a,#$10
05aa: d5 00 01  mov   $0100+x,a
05ad: e8 b8     mov   a,#$b8
05af: d5 40 02  mov   $0240+x,a
05b2: e8 80     mov   a,#$80
05b4: d5 48 02  mov   $0248+x,a
05b7: 1d        dec   x
05b8: 10 d4     bpl   $058e
05ba: 6f        ret

05bb: e5 f5 00  mov   a,$00f5
05be: 0d        push  psw
05bf: 10 03     bpl   $05c4
05c1: 48 ff     eor   a,#$ff
05c3: bc        inc   a
05c4: 2d        push  a
05c5: 8d 69     mov   y,#$69
05c7: cf        mul   ya
05c8: 8f 00 a3  mov   $a3,#$00
05cb: cb a2     mov   $a2,y
05cd: ae        pop   a
05ce: 8d 03     mov   y,#$03
05d0: cf        mul   ya
05d1: 7a a2     addw  ya,$a2
05d3: 8e        pop   psw
05d4: 10 07     bpl   $05dd
05d6: da a2     movw  $a2,ya
05d8: 8d 00     mov   y,#$00
05da: dd        mov   a,y
05db: 9a a2     subw  ya,$a2
05dd: da c0     movw  $c0,ya
05df: 6f        ret

05e0: e5 f5 00  mov   a,$00f5
05e3: c4 c5     mov   $c5,a
05e5: 6f        ret

05e6: c2 b0     set6  $b0
05e8: 2f 19     bra   $0603
05ea: d2 b0     clr6  $b0
05ec: 8f 00 ba  mov   $ba,#$00
05ef: 8f 80 b3  mov   $b3,#$80
05f2: cd 57     mov   x,#$57
05f4: e4 b8     mov   a,$b8
05f6: 24 b3     and   a,$b3
05f8: d0 03     bne   $05fd
05fa: 3f b1 09  call  $09b1
05fd: 1d        dec   x
05fe: 4b b3     lsr   $b3
0600: d0 f2     bne   $05f4
0602: 6f        ret

0603: cd 07     mov   x,#$07
0605: 8f 80 b3  mov   $b3,#$80
0608: e4 b8     mov   a,$b8
060a: 24 b3     and   a,$b3
060c: d0 06     bne   $0614
060e: 3f 1e 04  call  $041e
0611: 09 b3 bb  or    ($bb),($b3)
0614: 1d        dec   x
0615: 4b b3     lsr   $b3
0617: d0 ef     bne   $0608
0619: 8f 00 ba  mov   $ba,#$00
061c: 8f 00 bd  mov   $bd,#$00
061f: 6f        ret

0620: cd ff     mov   x,#$ff
0622: 2f 02     bra   $0626
0624: cd 01     mov   x,#$01
0626: 3e c6     cmp   x,$c6
0628: f0 1c     beq   $0646
062a: e5 f6 00  mov   a,$00f6
062d: 05 f7 00  or    a,$00f7
0630: f0 1d     beq   $064f
0632: e5 f6 00  mov   a,$00f6
0635: ec f7 00  mov   y,$00f7
0638: 0b c6     asl   $c6
063a: f0 0b     beq   $0647
063c: 3f 55 06  call  $0655
063f: 8d ff     mov   y,#$ff
0641: dd        mov   a,y
0642: 9a c9     subw  ya,$c9
0644: da c9     movw  $c9,ya
0646: 6f        ret

0647: 8f 00 c9  mov   $c9,#$00
064a: 8f 00 ca  mov   $ca,#$00
064d: 2f 06     bra   $0655
064f: e8 00     mov   a,#$00
0651: fd        mov   y,a
0652: 5d        mov   x,a
0653: da c9     movw  $c9,ya
0655: da c7     movw  $c7,ya
0657: d8 c6     mov   $c6,x
0659: 6f        ret

065a: b2 b0     clr5  $b0
065c: 6f        ret

065d: a2 b0     set5  $b0
065f: 6f        ret

0660: 3f 37 05  call  $0537
0663: e8 aa     mov   a,#$aa
0665: c5 f4 00  mov   $00f4,a
0668: e8 bb     mov   a,#$bb
066a: c5 f5 00  mov   $00f5,a
066d: e5 f4 00  mov   a,$00f4
0670: 68 cc     cmp   a,#$cc
0672: d0 f9     bne   $066d
0674: 2f 20     bra   $0696
0676: ec f4 00  mov   y,$00f4
0679: d0 fb     bne   $0676
067b: 5e f4 00  cmp   y,$00f4
067e: d0 0f     bne   $068f
0680: e5 f5 00  mov   a,$00f5
0683: cc f4 00  mov   $00f4,y
0686: d7 a0     mov   ($a0)+y,a
0688: fc        inc   y
0689: d0 f0     bne   $067b
068b: ab a1     inc   $a1
068d: 2f ec     bra   $067b
068f: 10 ea     bpl   $067b
0691: 5e f4 00  cmp   y,$00f4
0694: 10 e5     bpl   $067b
0696: e5 f6 00  mov   a,$00f6
0699: ec f7 00  mov   y,$00f7
069c: da a0     movw  $a0,ya
069e: ec f4 00  mov   y,$00f4
06a1: e5 f5 00  mov   a,$00f5
06a4: f0 05     beq   $06ab
06a6: cc f4 00  mov   $00f4,y
06a9: 2f cb     bra   $0676
06ab: c5 f6 00  mov   $00f6,a
06ae: bc        inc   a
06af: c4 b2     mov   $b2,a
06b1: e5 fd 00  mov   a,$00fd
06b4: 8f 00 b1  mov   $b1,#$00
06b7: cc f4 00  mov   $00f4,y
06ba: 6f        ret

06bb: fa b3 b4  mov   ($b4),($b3)
06be: 58 ff b4  eor   $b4,#$ff
06c1: f4 18     mov   a,$18+x
06c3: f0 2e     beq   $06f3
06c5: fb 28     mov   y,$28+x
06c7: dd        mov   a,y
06c8: 14 20     or    a,$20+x
06ca: f0 15     beq   $06e1
06cc: f4 20     mov   a,$20+x
06ce: 9a a9     subw  ya,$a9
06d0: f0 02     beq   $06d4
06d2: b0 09     bcs   $06dd
06d4: e3 b9 03  bbs7  $b9,$06da
06d7: 3f 25 04  call  $0425
06da: 8d 00     mov   y,#$00
06dc: dd        mov   a,y
06dd: db 28     mov   $28+x,y
06df: d4 20     mov   $20+x,a
06e1: f4 18     mov   a,$18+x
06e3: 80        setc
06e4: a4 a8     sbc   a,$a8
06e6: d4 18     mov   $18+x,a
06e8: f0 09     beq   $06f3
06ea: 90 07     bcc   $06f3
06ec: 68 c1     cmp   a,#$c1
06ee: b0 03     bcs   $06f3
06f0: 5f d7 0a  jmp   $0ad7
06f3: 8d 06     mov   y,#$06
06f5: e8 fc     mov   a,#$fc
06f7: 6d        push  y
06f8: 2d        push  a
06f9: 5f 0d 08  jmp   $080d
06fc: 2d        push  a
06fd: 9f        xcn   a
06fe: 5c        lsr   a
06ff: 28 07     and   a,#$07
0701: 9c        dec   a
0702: fd        mov   y,a
0703: f4 10     mov   a,$10+x
0705: 28 30     and   a,#$30
0707: d0 05     bne   $070e
0709: f6 ef 07  mov   a,$07ef+y
070c: 2f 12     bra   $0720
070e: 28 10     and   a,#$10
0710: d0 05     bne   $0717
0712: f6 e8 07  mov   a,$07e8+y
0715: 2f 09     bra   $0720
0717: f4 10     mov   a,$10+x
0719: 28 ef     and   a,#$ef
071b: d4 10     mov   $10+x,a
071d: f6 f6 07  mov   a,$07f6+y
0720: 60        clrc
0721: 94 18     adc   a,$18+x
0723: d4 18     mov   $18+x,a
0725: ae        pop   a
0726: 28 1f     and   a,#$1f
0728: d0 01     bne   $072b
072a: 6f        ret

072b: 2d        push  a
072c: f4 10     mov   a,$10+x
072e: 28 0f     and   a,#$0f
0730: fd        mov   y,a
0731: ae        pop   a
0732: 60        clrc
0733: 96 fd 07  adc   a,$07fd+y
0736: e3 b0 03  bbs7  $b0,$073c
0739: 60        clrc
073a: 84 c4     adc   a,$c4
073c: 60        clrc
073d: 95 10 02  adc   a,$0210+x
0740: c4 a1     mov   $a1,a
0742: 8f 00 a0  mov   $a0,#$00
0745: 8d 00     mov   y,#$00
0747: f5 18 02  mov   a,$0218+x
074a: 10 01     bpl   $074d
074c: dc        dec   y
074d: 7a a0     addw  ya,$a0
074f: ad 61     cmp   y,#$61
0751: 90 02     bcc   $0755
0753: 8d 60     mov   y,#$60
0755: 40        setp
0756: da a2     movw  $a2,ya
0758: f4 00     mov   a,$00+x
075a: c4 a4     mov   $a4,a
075c: 12 a4     clr0  $a4
075e: f4 28     mov   a,$28+x
0760: f0 08     beq   $076a
0762: f4 40     mov   a,$40+x
0764: f0 04     beq   $076a
0766: 64 a3     cmp   a,$a3
0768: d0 04     bne   $076e
076a: e4 a2     mov   a,$a2
076c: 2f 0e     bra   $077c
076e: b0 04     bcs   $0774
0770: 22 a4     set1  $a4
0772: 2f 02     bra   $0776
0774: 32 a4     clr1  $a4
0776: ab a4     inc   $a4
0778: fb 40     mov   y,$40+x
077a: f4 48     mov   a,$48+x
077c: 2d        push  a
077d: e4 a4     mov   a,$a4
077f: d4 00     mov   $00+x,a
0781: e4 a3     mov   a,$a3
0783: d4 40     mov   $40+x,a
0785: e4 a2     mov   a,$a2
0787: d4 48     mov   $48+x,a
0789: ae        pop   a
078a: db 30     mov   $30+x,y
078c: d4 38     mov   $38+x,a
078e: 20        clrp
078f: f4 10     mov   a,$10+x
0791: 30 2a     bmi   $07bd
0793: f5 00 01  mov   a,$0100+x
0796: fd        mov   y,a
0797: 28 10     and   a,#$10
0799: f0 0b     beq   $07a6
079b: dd        mov   a,y
079c: 28 3f     and   a,#$3f
079e: d5 00 01  mov   $0100+x,a
07a1: e8 00     mov   a,#$00
07a3: d5 20 01  mov   $0120+x,a
07a6: f3 b0 08  bbc7  $b0,$07b1
07a9: 09 b3 b5  or    ($b5),($b3)
07ac: 09 b3 b6  or    ($b6),($b3)
07af: 2f 09     bra   $07ba
07b1: e3 b9 13  bbs7  $b9,$07c7
07b4: 09 b3 ba  or    ($ba),($b3)
07b7: 09 b3 bb  or    ($bb),($b3)
07ba: 3f 1e 04  call  $041e
07bd: e3 b9 07  bbs7  $b9,$07c7
07c0: 40        setp
07c1: 3f fd 0b  call  $0bfd
07c4: 3f 2b 0b  call  $0b2b
07c7: f4 10     mov   a,$10+x
07c9: fd        mov   y,a
07ca: 28 7f     and   a,#$7f
07cc: c4 a3     mov   $a3,a
07ce: dd        mov   a,y
07cf: 28 40     and   a,#$40
07d1: 1c        asl   a
07d2: 04 a3     or    a,$a3
07d4: d4 10     mov   $10+x,a
07d6: 10 05     bpl   $07dd
07d8: 8d 00     mov   y,#$00
07da: dd        mov   a,y
07db: 2f 06     bra   $07e3
07dd: fb 18     mov   y,$18+x
07df: f5 08 02  mov   a,$0208+x
07e2: cf        mul   ya
07e3: db 28     mov   $28+x,y
07e5: d4 20     mov   $20+x,a
07e7: 6f        ret

07e8: db $02,$04,$08,$10,$20,$40,$80
07ef: db $03,$06,$0c,$18,$30,$60,$c0
07f6: db $00,$09,$12,$24,$48,$90,$00

07fd: db $00,$0c,$18,$24,$30,$3c,$48,$54
0805: db $18,$24,$30,$3c,$48,$54,$60,$6c

080d: 3f 2a 08  call  $082a
0810: 68 20     cmp   a,#$20
0812: b0 26     bcs   $083a             ; return if vcmd >= $20
0814: c4 a7     mov   $a7,a             ; store vbyte into $a7
0816: 8d 08     mov   y,#$08
0818: 6d        push  y
0819: 8d 0d     mov   y,#$0d
081b: 6d        push  y                 ; set return address $0d08
081c: 1c        asl   a
081d: fd        mov   y,a
081e: f6 3c 08  mov   a,$083c+y
0821: 2d        push  a
0822: f6 3b 08  mov   a,$083b+y
0825: 2d        push  a
0826: ad 08     cmp   y,#$08
0828: 90 10     bcc   $083a             ; don't read op1 if vbyte < $04
;
082a: fb 08     mov   y,$08+x
082c: f4 00     mov   a,$00+x
082e: da a0     movw  $a0,ya
0830: 8d 00     mov   y,#$00
0832: f7 a0     mov   a,($a0)+y
0834: bb 00     inc   $00+x
0836: d0 02     bne   $083a
0838: bb 08     inc   $08+x
; vcmd 1e,1f - nop
083a: 6f        ret

083b: dw $087b  ; 00 - toggle triplet
083d: dw $087f  ; 01 - toggle tie/slur
083f: dw $0883  ; 02 - dotted note switch on
0841: dw $0889  ; 03 - 2-oct up toggle
0843: dw $097b  ; 04 - set triplet/dotted/oct-up directly
0845: dw $0890  ; 05 - tempo
0847: dw $08ab  ; 06 - duration rate
0849: dw $08af  ; 07 - volume
0851: dw $08c4  ; 08 - instrument
0853: dw $0906  ; 09 - key offset
0855: dw $0911  ; 0a - global transpose
0851: dw $0917  ; 0b - per-voice transpose
0853: dw $091b  ; 0c - tuning
0855: dw $091f  ; 0d - portamento time
0857: dw $0923  ; 0e - loop for #1
0859: dw $0927  ; 0f - loop for #2
085b: dw $092b  ; 10 - loop for #3
085d: dw $092f  ; 11 - loop for #4
085f: dw $0923  ; 12 - loop break #1
0861: dw $0927  ; 13 - loop break #2
0863: dw $092b  ; 14 - loop break #3
0865: dw $092f  ; 15 - loop break #4
0867: dw $0965  ; 16 - goto
0869: dw $0986  ; 17 - end of track
086b: dw $09cb  ; 18 - pan
086d: dw $09d2  ; 19 - master volume
086f: dw $09dc  ; 1a - LFO param
0871: dw $0a02  ; 1b - echo params
0873: dw $0ab4  ; 1c - echo on/off
0875: dw $0ad1  ; 1d - release rate (GAIN)
0877: dw $083a  ; 1e - nop
0879: dw $083a  ; 1f - nop

; vcmd 00 - toggle triplet
087b: e8 20     mov   a,#$20
087d: 2f 0c     bra   $088b

; vcmd 01 - toggle tie/slur
087f: e8 40     mov   a,#$40
0881: 2f 08     bra   $088b

; vcmd 02 - dotted note switch on
0883: e8 10     mov   a,#$10
0885: 14 10     or    a,$10+x
0887: 2f 04     bra   $088d

; vcmd 03 - 2-oct up toggle
0889: e8 08     mov   a,#$08
088b: 54 10     eor   a,$10+x
088d: d4 10     mov   $10+x,a
088f: 6f        ret

; vcmd 05 - tempo
0890: 2d        push  a
0891: 3f 2a 08  call  $082a
0894: ee        pop   y
0895: f3 b0 0d  bbc7  $b0,$08a5
0898: d5 58 02  mov   $0258+x,a
089b: dd        mov   a,y
089c: d5 60 02  mov   $0260+x,a
089f: e8 00     mov   a,#$00
08a1: d5 68 02  mov   $0268+x,a
08a4: 6f        ret

08a5: da be     movw  $be,ya
08a7: 8f 00 c2  mov   $c2,#$00
08aa: 6f        ret

; vcmd 06 - duration rate
08ab: d5 08 02  mov   $0208+x,a
08ae: 6f        ret

; vcmd 07 - volume
08af: fd        mov   y,a
08b0: 3f a2 0b  call  $0ba2
08b3: e3 b0 0a  bbs7  $b0,$08c0
08b6: 2d        push  a
08b7: ec 21 0d  mov   y,$0d21
08ba: 3f a2 0b  call  $0ba2
08bd: ee        pop   y
08be: cf        mul   ya
08bf: dd        mov   a,y
08c0: d5 30 02  mov   $0230+x,a
08c3: 6f        ret

; vcmd 08 - instrument
08c4: e3 b0 08  bbs7  $b0,$08cf
08c7: bc        inc   a
08c8: d5 50 02  mov   $0250+x,a
08cb: e3 b9 37  bbs7  $b9,$0905
08ce: 9c        dec   a
08cf: 8d 06     mov   y,#$06
08d1: cf        mul   ya
08d2: da a0     movw  $a0,ya
08d4: 60        clrc
08d5: 98 7c a0  adc   $a0,#$7c
08d8: 98 66 a1  adc   $a1,#$66          ; $a0 = #$667c + (a * 6)s
08db: 8d 01     mov   y,#$01
08dd: f7 a0     mov   a,($a0)+y
08df: d5 38 02  mov   $0238+x,a
08e2: dc        dec   y
08e3: 4d        push  x
08e4: 7d        mov   a,x
08e5: 9f        xcn   a
08e6: 28 70     and   a,#$70
08e8: 08 04     or    a,#$04
08ea: 5d        mov   x,a
08eb: f7 a0     mov   a,($a0)+y
08ed: c9 f2 00  mov   $00f2,x
08f0: c5 f3 00  mov   $00f3,a           ; SRCN,ADSR(1),ADSR(2),GAIN
08f3: 3d        inc   x
08f4: fc        inc   y
08f5: ad 04     cmp   y,#$04
08f7: d0 f2     bne   $08eb
08f9: ce        pop   x
08fa: f7 a0     mov   a,($a0)+y
08fc: d5 20 02  mov   $0220+x,a
08ff: fc        inc   y
0900: f7 a0     mov   a,($a0)+y
0902: d5 28 02  mov   $0228+x,a
0905: 6f        ret

; vcmd 09 - key offset
0906: c4 a3     mov   $a3,a
0908: f4 10     mov   a,$10+x
090a: 28 f8     and   a,#$f8
090c: 04 a3     or    a,$a3
090e: d4 10     mov   $10+x,a
0910: 6f        ret

; vcmd 0a - global transpose
0911: e3 b0 02  bbs7  $b0,$0916
0914: c4 c4     mov   $c4,a
0916: 6f        ret

; vcmd 0b - per-voice transpose
0917: d5 10 02  mov   $0210+x,a
091a: 6f        ret

; vcmd 0c - tuning
091b: d5 18 02  mov   $0218+x,a
091e: 6f        ret

; vcmd 0d - portamento time
091f: d5 28 01  mov   $0128+x,a
0922: 6f        ret

0923: 8d 30     mov   y,#$30            ; $30+x - vcmd 0e,12
0925: 2f 0a     bra   $0931 
0927: 8d 38     mov   y,#$38            ; $38+x - vcmd 0f,13
0929: 2f 06     bra   $0931 
092b: 8d 40     mov   y,#$40            ; $40+x - vcmd 10,14
092d: 2f 02     bra   $0931 
092f: 8d 48     mov   y,#$48            ; $48+x - vcmd 11,15
0931: c4 a3     mov   $a3,a
0933: cb a0     mov   $a0,y
0935: 7d        mov   a,x
0936: 60        clrc
0937: 84 a0     adc   a,$a0
0939: fd        mov   y,a
093a: 8f 00 a1  mov   $a1,#$00
093d: 8f 00 a0  mov   $a0,#$00
0940: 78 12 a7  cmp   $a7,#$12
0943: b0 11     bcs   $0956
; vcmd 0e-11
0945: f7 a0     mov   a,($a0)+y
0947: f0 07     beq   $0950
0949: 9c        dec   a
094a: d7 a0     mov   ($a0)+y,a
094c: f0 21     beq   $096f
094e: 2f 12     bra   $0962
0950: e4 a3     mov   a,$a3
0952: d7 a0     mov   ($a0)+y,a
0954: 2f 0c     bra   $0962
; vcmd 12-15
0956: f7 a0     mov   a,($a0)+y
0958: 9c        dec   a
0959: d0 14     bne   $096f
095b: d7 a0     mov   ($a0)+y,a
095d: e4 a3     mov   a,$a3
095f: 3f 7b 09  call  $097b
0962: 3f 2a 08  call  $082a
; vcmd 16 - goto
0965: 2d        push  a
0966: 3f 2a 08  call  $082a
0969: d4 00     mov   $00+x,a
096b: ae        pop   a
096c: d4 08     mov   $08+x,a
096e: 6f        ret

096f: e8 02     mov   a,#$02
0971: 60        clrc
0972: 94 00     adc   a,$00+x
0974: d4 00     mov   $00+x,a
0976: 90 02     bcc   $097a
0978: bb 08     inc   $08+x
097a: 6f        ret

; vcmd 04
097b: c4 a3     mov   $a3,a
097d: f4 10     mov   a,$10+x
097f: 28 97     and   a,#$97
0981: 04 a3     or    a,$a3
0983: d4 10     mov   $10+x,a
0985: 6f        ret

; vcmd 17 - end of track
0986: ae        pop   a
0987: ae        pop   a
0988: ae        pop   a
0989: ae        pop   a
098a: e3 b0 13  bbs7  $b0,$09a0
098d: e8 00     mov   a,#$00
098f: d4 08     mov   $08+x,a
0991: d4 00     mov   $00+x,a
0993: d5 50 02  mov   $0250+x,a
0996: e3 b9 06  bbs7  $b9,$099f
0999: 3f 1e 04  call  $041e
099c: 09 b3 bb  or    ($bb),($b3)
099f: 6f        ret

09a0: 29 b4 b8  and   ($b8),($b4)
09a3: 29 b4 b7  and   ($b7),($b4)
09a6: e8 00     mov   a,#$00
09a8: d5 50 02  mov   $0250+x,a
09ab: 3f 1e 04  call  $041e
09ae: 09 b3 b6  or    ($b6),($b3)
09b1: 4d        push  x
09b2: 7d        mov   a,x
09b3: 80        setc
09b4: a8 50     sbc   a,#$50
09b6: 5d        mov   x,a
09b7: f5 50 02  mov   a,$0250+x
09ba: f0 0d     beq   $09c9
09bc: 09 b3 bd  or    ($bd),($b3)
09bf: c3 b0 07  bbs6  $b0,$09c9
09c2: f4 10     mov   a,$10+x
09c4: 10 03     bpl   $09c9
09c6: 09 b3 ba  or    ($ba),($b3)
09c9: ce        pop   x
09ca: 6f        ret

; vcmd 18 - pan
09cb: 60        clrc
09cc: 88 80     adc   a,#$80
09ce: d5 48 02  mov   $0248+x,a
09d1: 6f        ret

; vcmd 19 - master volume
09d2: e3 b0 06  bbs7  $b0,$09db
09d5: fd        mov   y,a
09d6: 3f a2 0b  call  $0ba2
09d9: c4 c3     mov   $c3,a
09db: 6f        ret

; vcmd 1a - LFO param
09dc: 2d        push  a
09dd: 3f 2a 08  call  $082a
09e0: ee        pop   y
09e1: ad 03     cmp   y,#$03
09e3: d0 0e     bne   $09f3
09e5: 9f        xcn   a
09e6: c4 a3     mov   $a3,a
09e8: f5 00 01  mov   a,$0100+x
09eb: 28 ef     and   a,#$ef
09ed: 04 a3     or    a,$a3
09ef: d5 00 01  mov   $0100+x,a
09f2: 6f        ret

09f3: 2d        push  a
09f4: e8 08     mov   a,#$08
09f6: cf        mul   ya
09f7: d8 a4     mov   $a4,x
09f9: 60        clrc
09fa: 84 a4     adc   a,$a4
09fc: fd        mov   y,a
09fd: ae        pop   a
09fe: d6 08 01  mov   $0108+y,a
0a01: 6f        ret

; vcmd 1b - echo params
0a02: 3f 2a 08  call  $082a             ; arg2 = preset # (arg1 ignored?)
0a05: 8d 08     mov   y,#$08
0a07: cf        mul   ya
0a08: 64 cb     cmp   a,$cb
0a0a: f0 56     beq   $0a62             ; ret if same preset
0a0c: c4 cb     mov   $cb,a
0a0e: 4d        push  x
0a0f: 5d        mov   x,a
0a10: 8d 0c     mov   y,#$0c
0a12: f5 10 0d  mov   a,$0d10+x
0a15: 3f cf 0c  call  $0ccf             ; MVOL(L)
0a18: 8d 1c     mov   y,#$1c
0a1a: f5 11 0d  mov   a,$0d11+x
0a1d: 3f cf 0c  call  $0ccf             ; MVOL(R)
0a20: f5 12 0d  mov   a,$0d12+x
0a23: c4 ce     mov   $ce,a
0a25: f5 13 0d  mov   a,$0d13+x
0a28: c4 cf     mov   $cf,a
0a2a: 3f 63 0a  call  $0a63
0a2d: 8d 6d     mov   y,#$6d
0a2f: f5 14 0d  mov   a,$0d14+x
0a32: 3f cf 0c  call  $0ccf             ; ESA
0a35: e8 7d     mov   a,#$7d
0a37: c5 f2 00  mov   $00f2,a
0a3a: e5 f3 00  mov   a,$00f3           ; EDL
0a3d: 28 0f     and   a,#$0f
0a3f: bc        inc   a
0a40: 48 ff     eor   a,#$ff
0a42: f3 cd 03  bbc7  $cd,$0a48
0a45: 60        clrc
0a46: 84 cd     adc   a,$cd
0a48: c4 cd     mov   $cd,a
0a4a: f5 15 0d  mov   a,$0d15+x
0a4d: c5 f3 00  mov   $00f3,a
0a50: bc        inc   a
0a51: c4 cc     mov   $cc,a
0a53: 8d 0d     mov   y,#$0d
0a55: f5 16 0d  mov   a,$0d16+x
0a58: 3f cf 0c  call  $0ccf             ; EFB
0a5b: f5 17 0d  mov   a,$0d17+x
0a5e: 3f 7d 0a  call  $0a7d
0a61: ce        pop   x
0a62: 6f        ret

0a63: 8d 6c     mov   y,#$6c
0a65: e8 20     mov   a,#$20
0a67: 3f cf 0c  call  $0ccf             ; FLG
0a6a: 8d 03     mov   y,#$03
0a6c: f6 79 0a  mov   a,$0a79+y
0a6f: c5 f2 00  mov   $00f2,a
0a72: e8 00     mov   a,#$00
0a74: c5 f3 00  mov   $00f3,a
0a77: fe f3     dbnz  y,$0a6c
0a79: 6f        ret

0a7a: 4d        push  x
0a7b: 2c 3c 4d  rol   $4d3c
0a7e: 8d 08     mov   y,#$08
0a80: cf        mul   ya
0a81: 5d        mov   x,a
0a82: 8d 0f     mov   y,#$0f
0a84: f5 94 0a  mov   a,$0a94+x
0a87: 3f cf 0c  call  $0ccf             ; FIR
0a8a: 3d        inc   x
0a8b: dd        mov   a,y
0a8c: 60        clrc
0a8d: 88 10     adc   a,#$10
0a8f: fd        mov   y,a
0a90: 10 f2     bpl   $0a84
0a92: ce        pop   x
0a93: 6f        ret

0a94: db $7f,$00,$00,$00,$00,$00,$00,$00
0a9c: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0aa4: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0aac: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; vcmd 1c - echo on/off
0ab4: 5c        lsr   a
0ab5: fa b4 a3  mov   ($a3),($b4)
0ab8: e4 b3     mov   a,$b3
0aba: b0 02     bcs   $0abe
0abc: e8 00     mov   a,#$00
0abe: e3 b0 08  bbs7  $b0,$0ac9
0ac1: 29 a3 bc  and   ($bc),($a3)
0ac4: 04 bc     or    a,$bc
0ac6: c4 bc     mov   $bc,a
0ac8: 6f        ret

0ac9: 29 a3 b7  and   ($b7),($a3)
0acc: 04 b7     or    a,$b7
0ace: c4 b7     mov   $b7,a
0ad0: 6f        ret

; vcmd 1d - release rate (GAIN)
0ad1: 08 a0     or    a,#$a0
0ad3: d5 40 02  mov   $0240+x,a
0ad6: 6f        ret

0ad7: 40        setp
0ad8: f4 18     mov   a,$18+x
0ada: 60        clrc
0adb: 94 20     adc   a,$20+x
0add: d4 20     mov   $20+x,a
0adf: 90 07     bcc   $0ae8
0ae1: f4 00     mov   a,$00+x
0ae3: 60        clrc
0ae4: 88 40     adc   a,#$40
0ae6: d4 00     mov   $00+x,a
0ae8: f4 00     mov   a,$00+x
0aea: c4 a4     mov   $a4,a
0aec: 13 a4 32  bbc0  $a4,$0b21
0aef: 8f 00 a1  mov   $a1,#$00
0af2: f4 28     mov   a,$28+x
0af4: 1c        asl   a
0af5: c4 a0     mov   $a0,a
0af7: f4 40     mov   a,$40+x
0af9: c4 a3     mov   $a3,a
0afb: f4 48     mov   a,$48+x
0afd: c4 a2     mov   $a2,a
0aff: fb 30     mov   y,$30+x
0b01: f4 38     mov   a,$38+x
0b03: 23 a4 0a  bbs1  $a4,$0b10
0b06: 9a a0     subw  ya,$a0
0b08: 90 0c     bcc   $0b16
0b0a: 5a a2     cmpw  ya,$a2
0b0c: 90 08     bcc   $0b16
0b0e: 2f 0d     bra   $0b1d
0b10: 7a a0     addw  ya,$a0
0b12: 5a a2     cmpw  ya,$a2
0b14: 90 07     bcc   $0b1d
0b16: e4 a4     mov   a,$a4
0b18: 9c        dec   a
0b19: d4 00     mov   $00+x,a
0b1b: ba a2     movw  ya,$a2
0b1d: db 30     mov   $30+x,y
0b1f: d4 38     mov   $38+x,a
0b21: e5 b9 00  mov   a,$00b9
0b24: 10 02     bpl   $0b28
0b26: 20        clrp
0b27: 6f        ret

0b28: 3f ea 0b  call  $0bea
0b2b: fb 10     mov   y,$10+x
0b2d: f4 00     mov   a,$00+x
0b2f: 1c        asl   a
0b30: 1c        asl   a
0b31: f4 20     mov   a,$20+x
0b33: b0 02     bcs   $0b37
0b35: 48 ff     eor   a,#$ff
0b37: cf        mul   ya
0b38: da a2     movw  $a2,ya
0b3a: 8d 7e     mov   y,#$7e
0b3c: e8 81     mov   a,#$81
0b3e: 9a a2     subw  ya,$a2
0b40: 3f a4 0b  call  $0ba4
0b43: fd        mov   y,a
0b44: 20        clrp
0b45: e3 b0 13  bbs7  $b0,$0b5b
0b48: e4 c3     mov   a,$c3
0b4a: cf        mul   ya
0b4b: 6d        push  y
0b4c: ba c9     movw  ya,$c9
0b4e: e3 c6 05  bbs7  $c6,$0b56
0b51: 8d ff     mov   y,#$ff
0b53: dd        mov   a,y
0b54: 9a c9     subw  ya,$c9
0b56: 3f 9c 0b  call  $0b9c
0b59: ee        pop   y
0b5a: cf        mul   ya
0b5b: f5 30 02  mov   a,$0230+x         ; channel volume
0b5e: cf        mul   ya
0b5f: cb a3     mov   $a3,y
0b61: b3 b0 04  bbc5  $b0,$0b68
0b64: e8 80     mov   a,#$80
0b66: 2f 03     bra   $0b6b
0b68: f5 48 02  mov   a,$0248+x         ; pan (center = $80)
0b6b: 8d 14     mov   y,#$14
0b6d: cf        mul   ya
0b6e: da a0     movw  $a0,ya            ; volume balance ($a0 fractional, $a1 integer)
0b70: 8f 01 a5  mov   $a5,#$01          ; target = right channel
0b73: eb a1     mov   y,$a1
0b75: f6 d5 0b  mov   a,$0bd5+y
0b78: 80        setc
0b79: b6 d4 0b  sbc   a,$0bd4+y
0b7c: eb a0     mov   y,$a0
0b7e: cf        mul   ya                ; linear interpolation
0b7f: dd        mov   a,y
0b80: eb a1     mov   y,$a1
0b82: 60        clrc
0b83: 96 d4 0b  adc   a,$0bd4+y         ; final volume balance
0b86: eb a3     mov   y,$a3
0b88: cf        mul   ya                ; apply linear pan
0b89: dd        mov   a,y
0b8a: eb a5     mov   y,$a5
0b8c: 3f c4 0c  call  $0cc4             ; VOL(L),VOL(R)
0b8f: 8d 14     mov   y,#$14
0b91: e8 00     mov   a,#$00
0b93: 9a a0     subw  ya,$a0
0b95: da a0     movw  $a0,ya            ; inverse volume balance, for another speaker
0b97: 8b a5     dec   $a5
0b99: 10 d8     bpl   $0b73
0b9b: 6f        ret

0b9c: cb a1     mov   $a1,y
0b9e: 8d 04     mov   y,#$04
0ba0: 2f 06     bra   $0ba8
0ba2: e8 ff     mov   a,#$ff
0ba4: cb a1     mov   $a1,y
0ba6: 8d 03     mov   y,#$03
0ba8: 4b a1     lsr   $a1
0baa: 7c        ror   a
0bab: fe fb     dbnz  y,$0ba8
0bad: c4 a0     mov   $a0,a
0baf: eb a1     mov   y,$a1
0bb1: f6 c4 0b  mov   a,$0bc4+y
0bb4: 80        setc
0bb5: b6 c3 0b  sbc   a,$0bc3+y
0bb8: eb a0     mov   y,$a0
0bba: cf        mul   ya
0bbb: dd        mov   a,y
0bbc: eb a1     mov   y,$a1
0bbe: 60        clrc
0bbf: 96 c3 0b  adc   a,$0bc3+y
0bc2: 6f        ret

; volume table (combination of two lines)
0bc3: db $00,$0c,$19,$26,$33,$40,$4c,$59
0bcb: db $66,$73,$80,$8c,$99,$b3,$cc,$e6
0bd3: db $ff

; pan table (compatible with Nintendo engine)
0bd4: db $00,$01,$03,$07,$0d,$15,$1e,$29
0bdc: db $34,$42,$51,$5e,$67,$6e,$73,$77
0be4: db $7a,$7c,$7d,$7e,$7f,$7f

0bea: f4 00     mov   a,$00+x
0bec: 28 01     and   a,#$01
0bee: 14 08     or    a,$08+x
0bf0: d0 0b     bne   $0bfd
0bf2: e5 b0 00  mov   a,$00b0
0bf5: 30 05     bmi   $0bfc
0bf7: e5 c5 00  mov   a,$00c5
0bfa: d0 05     bne   $0c01
0bfc: 6f        ret

0bfd: f4 08     mov   a,$08+x
0bff: d0 06     bne   $0c07
0c01: fb 30     mov   y,$30+x
0c03: f4 38     mov   a,$38+x
0c05: 2f 2f     bra   $0c36
0c07: 1c        asl   a
0c08: 8d 0c     mov   y,#$0c
0c0a: cf        mul   ya
0c0b: da a0     movw  $a0,ya
0c0d: f4 00     mov   a,$00+x
0c0f: 0d        push  psw
0c10: 1c        asl   a
0c11: 1c        asl   a
0c12: f4 20     mov   a,$20+x
0c14: 90 02     bcc   $0c18
0c16: 48 ff     eor   a,#$ff
0c18: 2d        push  a
0c19: eb a0     mov   y,$a0
0c1b: cf        mul   ya
0c1c: cb a0     mov   $a0,y
0c1e: ae        pop   a
0c1f: eb a1     mov   y,$a1
0c21: cf        mul   ya
0c22: 8f 00 a1  mov   $a1,#$00
0c25: 7a a0     addw  ya,$a0
0c27: da a0     movw  $a0,ya
0c29: fb 30     mov   y,$30+x
0c2b: f4 38     mov   a,$38+x
0c2d: 8e        pop   psw
0c2e: 30 04     bmi   $0c34
0c30: 7a a0     addw  ya,$a0
0c32: 2f 02     bra   $0c36
0c34: 9a a0     subw  ya,$a0
0c36: 20        clrp
0c37: e3 b0 08  bbs7  $b0,$0c42
0c3a: fa c5 a1  mov   ($a1),($c5)
0c3d: 8f 00 a0  mov   $a0,#$00
0c40: 7a a0     addw  ya,$a0
0c42: 40        setp
0c43: dc        dec   y
0c44: cb a1     mov   $a1,y
0c46: c4 a0     mov   $a0,a
0c48: dd        mov   a,y
0c49: 8d 00     mov   y,#$00
0c4b: 80        setc
0c4c: a8 34     sbc   a,#$34
0c4e: b0 09     bcs   $0c59
0c50: e4 a1     mov   a,$a1
0c52: 80        setc
0c53: a8 13     sbc   a,#$13
0c55: b0 06     bcs   $0c5d
0c57: dc        dec   y
0c58: 1c        asl   a
0c59: 7a a0     addw  ya,$a0
0c5b: da a0     movw  $a0,ya
0c5d: 4d        push  x
0c5e: e4 a1     mov   a,$a1
0c60: 1c        asl   a
0c61: 8d 00     mov   y,#$00
0c63: cd 18     mov   x,#$18
0c65: 9e        div   ya,x
0c66: 5d        mov   x,a
0c67: f6 d7 0c  mov   a,$0cd7+y
0c6a: c4 a3     mov   $a3,a
0c6c: f6 d6 0c  mov   a,$0cd6+y
0c6f: c4 a2     mov   $a2,a
0c71: f6 d9 0c  mov   a,$0cd9+y
0c74: 2d        push  a
0c75: f6 d8 0c  mov   a,$0cd8+y
0c78: ee        pop   y
0c79: 9a a2     subw  ya,$a2
0c7b: eb a0     mov   y,$a0
0c7d: cf        mul   ya
0c7e: dd        mov   a,y
0c7f: 8d 00     mov   y,#$00
0c81: 7a a2     addw  ya,$a2
0c83: cb a1     mov   $a1,y
0c85: 1c        asl   a
0c86: 2b a1     rol   $a1
0c88: c8 08     cmp   x,#$08
0c8a: f0 06     beq   $0c92
0c8c: 4b a1     lsr   $a1
0c8e: 7c        ror   a
0c8f: 3d        inc   x
0c90: 2f f6     bra   $0c88
0c92: c4 a0     mov   $a0,a
0c94: ce        pop   x
0c95: f5 28 02  mov   a,$0228+x
0c98: eb a1     mov   y,$a1
0c9a: cf        mul   ya
0c9b: da a2     movw  $a2,ya
0c9d: f5 28 02  mov   a,$0228+x
0ca0: eb a0     mov   y,$a0
0ca2: cf        mul   ya
0ca3: 6d        push  y
0ca4: f5 20 02  mov   a,$0220+x
0ca7: eb a0     mov   y,$a0
0ca9: cf        mul   ya
0caa: 7a a2     addw  ya,$a2
0cac: da a2     movw  $a2,ya
0cae: f5 20 02  mov   a,$0220+x
0cb1: eb a1     mov   y,$a1
0cb3: cf        mul   ya
0cb4: fd        mov   y,a
0cb5: ae        pop   a
0cb6: 7a a2     addw  ya,$a2
0cb8: 28 f0     and   a,#$f0
0cba: 6d        push  y
0cbb: 8d 02     mov   y,#$02
0cbd: 3f c4 0c  call  $0cc4             ; P(L)
0cc0: ae        pop   a
0cc1: fc        inc   y
0cc2: 2f 0b     bra   $0ccf             ; P(H)
; write A to DSP reg Y of channel X
0cc4: 2d        push  a
0cc5: cb a6     mov   $a6,y
0cc7: 7d        mov   a,x
0cc8: 9f        xcn   a
0cc9: 28 70     and   a,#$70
0ccb: 04 a6     or    a,$a6
0ccd: fd        mov   y,a
0cce: ae        pop   a
; write A to DSP reg Y
0ccf: cc f2 00  mov   $00f2,y
0cd2: c5 f3 00  mov   $00f3,a
0cd5: 6f        ret

0cd6: dw $085f
0cd8: dw $08de
0cda: dw $0965
0cdc: dw $09f4
0cde: dw $0a8c
0ce0: dw $0b2c
0ce2: dw $0bd6
0ce4: dw $0c8b
0ce6: dw $0d4a
0ce8: dw $0e14
0cea: dw $0eea
0cec: dw $0fcd
0cee: dw $10be
