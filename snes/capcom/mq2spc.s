02c0: 20        clrp
02c1: cd cf     mov   x,#$cf
02c3: bd        mov   sp,x
02c4: e8 00     mov   a,#$00
02c6: 5d        mov   x,a
02c7: af        mov   (x)+,a
02c8: c8 e8     cmp   x,#$e8
02ca: d0 fb     bne   $02c7
02cc: 40        setp
02cd: 5d        mov   x,a
02ce: af        mov   (x)+,a
02cf: c8 d0     cmp   x,#$d0
02d1: d0 fb     bne   $02ce
02d3: 20        clrp
02d4: 5d        mov   x,a
02d5: d5 00 02  mov   $0200+x,a
02d8: 3d        inc   x
02d9: c8 c0     cmp   x,#$c0
02db: d0 f8     bne   $02d5
02dd: 3f 51 04  call  $0451
02e0: e8 40     mov   a,#$40
02e2: c5 fa 00  mov   $00fa,a
02e5: e8 f1     mov   a,#$f1
02e7: c5 f1 00  mov   $00f1,a
02ea: e8 01     mov   a,#$01
02ec: c4 b2     mov   $b2,a
02ee: c5 f6 00  mov   $00f6,a
02f1: 9c        dec   a
02f2: c5 f7 00  mov   $00f7,a
02f5: 9c        dec   a
02f6: fd        mov   y,a
02f7: da dd     movw  $dd,ya
02f9: 3f 6a 04  call  $046a
02fc: e5 fd 00  mov   a,$00fd
02ff: 60        clrc
0300: 84 b1     adc   a,$b1
0302: c4 b1     mov   $b1,a
0304: f0 f3     beq   $02f9
0306: 8b b1     dec   $b1
0308: 8d 02     mov   y,#$02
030a: e8 f9     mov   a,#$f9
030c: 6d        push  y
030d: 2d        push  a
030e: 60        clrc
030f: 98 80 b0  adc   $b0,#$80
0312: 10 03     bpl   $0317
0314: 5f b7 03  jmp   $03b7

0317: 69 b7 b6  cmp   ($b6),($b7)
031a: f0 15     beq   $0331
031c: e3 b7 0e  bbs7  $b7,$032d
031f: 8d 6c     mov   y,#$6c
0321: e8 00     mov   a,#$00
0323: 3f 7e 0d  call  $0d7e
0326: 8d 4d     mov   y,#$4d
0328: e8 ff     mov   a,#$ff
032a: 3f 7e 0d  call  $0d7e
032d: ab b7     inc   $b7
032f: 2f 1b     bra   $034c
0331: 8d 4d     mov   y,#$4d
0333: e4 c3     mov   a,$c3
0335: 48 ff     eor   a,#$ff
0337: 24 ca     and   a,$ca
0339: 04 c2     or    a,$c2
033b: 3f 7e 0d  call  $0d7e
033e: 8d 2c     mov   y,#$2c
0340: e4 bb     mov   a,$bb
0342: 3f 7e 0d  call  $0d7e
0345: 8d 3c     mov   y,#$3c
0347: e4 ba     mov   a,$ba
0349: 3f 7e 0d  call  $0d7e
034c: 8d 0c     mov   y,#$0c
034e: e4 b9     mov   a,$b9
0350: 3f 7e 0d  call  $0d7e
0353: 8d 1c     mov   y,#$1c
0355: e4 b8     mov   a,$b8
0357: 3f 7e 0d  call  $0d7e
035a: cd 07     mov   x,#$07
035c: 8d 57     mov   y,#$57
035e: e4 c8     mov   a,$c8
0360: 04 c0     or    a,$c0
0362: 2d        push  a
0363: 6d        push  y
0364: f3 c0 0f  bbc7  $c0,$0376
0367: f6 38 02  mov   a,$0238+y
036a: c4 a0     mov   $a0,a
036c: f6 40 02  mov   a,$0240+y
036f: c4 a1     mov   $a1,a
0371: f6 48 02  mov   a,$0248+y
0374: 2f 1b     bra   $0391
0376: f3 cb 08  bbc7  $cb,$0381
0379: f5 50 02  mov   a,$0250+x
037c: 3f 7a 09  call  $097a
037f: 2f 1e     bra   $039f
0381: f3 c8 1b  bbc7  $c8,$039f
0384: f5 38 02  mov   a,$0238+x
0387: c4 a0     mov   $a0,a
0389: f5 40 02  mov   a,$0240+x
038c: c4 a1     mov   $a1,a
038e: f5 48 02  mov   a,$0248+x
0391: 8d 07     mov   y,#$07
0393: 3f 73 0d  call  $0d73
0396: 8d 01     mov   y,#$01
0398: f7 a0     mov   a,($a0)+y
039a: 8d 05     mov   y,#$05
039c: 3f 73 0d  call  $0d73
039f: 0b c0     asl   $c0
03a1: 0b cb     asl   $cb
03a3: 0b c8     asl   $c8
03a5: ee        pop   y
03a6: dc        dec   y
03a7: 1d        dec   x
03a8: 10 b9     bpl   $0363
03aa: 8d 5c     mov   y,#$5c
03ac: e8 00     mov   a,#$00
03ae: 3f 7e 0d  call  $0d7e
03b1: ae        pop   a
03b2: 8d 4c     mov   y,#$4c
03b4: 5f 7e 0d  jmp   $0d7e

03b7: f2 b0     clr7  $b0
03b9: c3 b0 56  bbs6  $b0,$0412
03bc: 8f 80 b3  mov   $b3,#$80
03bf: fa c3 c4  mov   ($c4),($c3)
03c2: ba cc     movw  ya,$cc
03c4: 7a ce     addw  ya,$ce
03c6: da a8     movw  $a8,ya
03c8: cd 07     mov   x,#$07
03ca: f4 08     mov   a,$08+x
03cc: 14 00     or    a,$00+x
03ce: f0 03     beq   $03d3
03d0: 3f 51 07  call  $0751
03d3: 1d        dec   x
03d4: 0b c4     asl   $c4
03d6: 4b b3     lsr   $b3
03d8: d0 f0     bne   $03ca
03da: ba d5     movw  ya,$d5
03dc: 7a d7     addw  ya,$d7
03de: 90 0d     bcc   $03ed
03e0: 8d 00     mov   y,#$00
03e2: f3 d4 02  bbc7  $d4,$03e7
03e5: cb d4     mov   $d4,y
03e7: cb d5     mov   $d5,y
03e9: cb d6     mov   $d6,y
03eb: dc        dec   y
03ec: dd        mov   a,y
03ed: da d7     movw  $d7,ya
03ef: 13 d9 20  bbc0  $d9,$0412
03f2: f3 d9 0c  bbc7  $d9,$0401
03f5: ba db     movw  ya,$db
03f7: 7a dd     addw  ya,$dd
03f9: b0 10     bcs   $040b
03fb: 7e da     cmp   y,$da
03fd: b0 0c     bcs   $040b
03ff: 2f 0f     bra   $0410
0401: ba dd     movw  ya,$dd
0403: 9a db     subw  ya,$db
0405: 90 04     bcc   $040b
0407: 7e da     cmp   y,$da
0409: b0 05     bcs   $0410
040b: 8f 00 d9  mov   $d9,#$00
040e: eb da     mov   y,$da
0410: da dd     movw  $dd,ya
0412: e2 b0     set7  $b0
0414: 8f 80 b3  mov   $b3,#$80
0417: 8f 00 c4  mov   $c4,#$00
041a: cd 57     mov   x,#$57
041c: e4 c3     mov   a,$c3
041e: 24 b3     and   a,$b3
0420: f0 0d     beq   $042f
0422: f5 58 02  mov   a,$0258+x
0425: c4 a8     mov   $a8,a
0427: f5 60 02  mov   a,$0260+x
042a: c4 a9     mov   $a9,a
042c: 3f 51 07  call  $0751
042f: 1d        dec   x
0430: 4b b3     lsr   $b3
0432: d0 e8     bne   $041c
0434: e4 c1     mov   a,$c1
0436: 04 c9     or    a,$c9
0438: 8f 00 c1  mov   $c1,#$00
043b: 8f 00 c9  mov   $c9,#$00
043e: 8d 5c     mov   y,#$5c
0440: 5f 7e 0d  jmp   $0d7e

0443: 8d 07     mov   y,#$07
0445: e8 9e     mov   a,#$9e
0447: 3f 73 0d  call  $0d73
044a: 8d 05     mov   y,#$05
044c: e8 00     mov   a,#$00
044e: 5f 73 0d  jmp   $0d73

0451: 8d 03     mov   y,#$03
0453: f6 63 04  mov   a,$0463+y
0456: c5 f2 00  mov   $00f2,a
0459: f6 66 04  mov   a,$0466+y
045c: c5 f3 00  mov   $00f3,a
045f: fe f2     dbnz  y,$0453
0461: 5f a8 0a  jmp   $0aa8

; PMON,NON,DIR
0464: db $2d,$3d,$5d
0467: db $00,$00,$40

046a: e5 f4 00  mov   a,$00f4
046d: 65 f4 00  cmp   a,$00f4
0470: d0 f8     bne   $046a
0472: fd        mov   y,a
0473: f0 17     beq   $048c
0475: 2d        push  a
0476: ab b2     inc   $b2
0478: 3f 8d 04  call  $048d
047b: e8 31     mov   a,#$31
047d: c5 f1 00  mov   $00f1,a
0480: 00        nop
0481: 00        nop
0482: 00        nop
0483: e4 b2     mov   a,$b2
0485: c5 f6 00  mov   $00f6,a
0488: ae        pop   a
0489: c5 f7 00  mov   $00f7,a
048c: 6f        ret

048d: 68 f0     cmp   a,#$f0
048f: 90 03     bcc   $0494
0491: 5f 45 05  jmp   $0545

0494: 65 40 14  cmp   a,$1440
0497: 90 06     bcc   $049f
0499: 80        setc
049a: a5 40 14  sbc   a,$1440
049d: 2f f5     bra   $0494
049f: 8f 42 a2  mov   $a2,#$42
04a2: 8f 14 a3  mov   $a3,#$14          ; sub-song address table $1442
04a5: 1c        asl   a
04a6: 90 02     bcc   $04aa
04a8: ab a3     inc   $a3
04aa: fd        mov   y,a
04ab: f7 a2     mov   a,($a2)+y
04ad: c4 a1     mov   $a1,a
04af: fc        inc   y
04b0: f7 a2     mov   a,($a2)+y
04b2: c4 a0     mov   $a0,a
04b4: 04 a1     or    a,$a1
04b6: f0 d4     beq   $048c
04b8: 8d 00     mov   y,#$00
04ba: f7 a0     mov   a,($a0)+y
04bc: d0 03     bne   $04c1
04be: 5f af 05  jmp   $05af

04c1: c4 a4     mov   $a4,a
04c3: 8f 80 b3  mov   $b3,#$80
04c6: cd 57     mov   x,#$57
04c8: 8d 00     mov   y,#$00
04ca: 3a a0     incw  $a0
04cc: f7 a0     mov   a,($a0)+y         ; starting address (hi-byte)
04ce: c4 a3     mov   $a3,a
04d0: 3a a0     incw  $a0
04d2: f7 a0     mov   a,($a0)+y         ; starting address (lo-byte)
04d4: c4 a2     mov   $a2,a
04d6: f7 a2     mov   a,($a2)+y
04d8: 68 17     cmp   a,#$17
04da: f0 3d     beq   $0519             ; branch if next song address is $17xx
04dc: e4 a4     mov   a,$a4
04de: 75 50 02  cmp   a,$0250+x
04e1: 90 36     bcc   $0519
04e3: 09 b3 c3  or    ($c3),($b3)
04e6: e4 b3     mov   a,$b3
04e8: 48 ff     eor   a,#$ff
04ea: c4 a5     mov   $a5,a
04ec: 29 a5 c2  and   ($c2),($a5)
04ef: 29 a5 c8  and   ($c8),($a5)
04f2: 3f 1f 05  call  $051f
04f5: 3f 43 04  call  $0443
04f8: 09 b3 c1  or    ($c1),($b3)
04fb: e4 a4     mov   a,$a4
04fd: d5 50 02  mov   $0250+x,a
0500: ba a2     movw  ya,$a2
0502: db 08     mov   $08+x,y
0504: d4 00     mov   $00+x,a           ; set reading ptr
0506: e8 10     mov   a,#$10
0508: d5 00 01  mov   $0100+x,a
050b: e8 b8     mov   a,#$b8
050d: d5 48 02  mov   $0248+x,a         ; release rate
0510: e5 f5 00  mov   a,$00f5
0513: 60        clrc
0514: 88 80     adc   a,#$80
0516: d5 30 02  mov   $0230+x,a
0519: 1d        dec   x
051a: 4b b3     lsr   $b3
051c: d0 aa     bne   $04c8
051e: 6f        ret

051f: 7d        mov   a,x
0520: 60        clrc
0521: 88 08     adc   a,#$08
0523: fd        mov   y,a
0524: e8 00     mov   a,#$00
0526: d6 00 02  mov   $0200+y,a
0529: dd        mov   a,y
052a: 60        clrc
052b: 88 08     adc   a,#$08
052d: 68 b8     cmp   a,#$b8
052f: 90 f2     bcc   $0523
0531: 40        setp
0532: 3f 36 05  call  $0536
0535: 20        clrp
0536: 4d        push  x
0537: e8 00     mov   a,#$00
0539: c6        mov   (x),a
053a: 7d        mov   a,x
053b: 60        clrc
053c: 88 08     adc   a,#$08
053e: 5d        mov   x,a
053f: c8 a0     cmp   x,#$a0
0541: 90 f4     bcc   $0537
0543: ce        pop   x
0544: 6f        ret

0545: 28 0f     and   a,#$0f
0547: 1c        asl   a
0548: 5d        mov   x,a
0549: 1f 4c 05  jmp   ($054c+x)

054c: 6c 05 6f  ror   $6f05
054f: 05 88 05  or    a,$0588
0552: 34 06     and   a,$06+x
0554: 38 06 6e  and   $6e,#$06
0557: 06        or    a,(x)
0558: 72 06     clr3  $06
055a: cd 06     mov   x,#$06
055c: e4 06     mov   a,$06
055e: f5 06 a6  mov   a,$a606+x
0561: 05 a9 05  or    a,$05a9
0564: f0 05     beq   $056b
0566: 15 06 a8  or    a,$a806+x
0569: 06        or    a,(x)
056a: ac 06 3f  inc   $3f06
056d: 88 05     adc   a,#$05
056f: 8f 80 b3  mov   $b3,#$80
0572: cd 57     mov   x,#$57
0574: f3 c3 03  bbc7  $c3,$057a
0577: 3f 4a 0a  call  $0a4a
057a: 1d        dec   x
057b: 0b c3     asl   $c3
057d: 4b b3     lsr   $b3
057f: d0 f3     bne   $0574
0581: 8f 00 c0  mov   $c0,#$00
0584: 8f 00 c2  mov   $c2,#$00
0587: 6f        ret

0588: 3f 51 06  call  $0651
058b: e8 00     mov   a,#$00
058d: c4 ca     mov   $ca,a
058f: cd 08     mov   x,#$08
0591: d5 00 02  mov   $0200+x,a
0594: 3d        inc   x
0595: c8 58     cmp   x,#$58
0597: d0 f8     bne   $0591
0599: 40        setp
059a: 3f 9e 05  call  $059e
059d: 20        clrp
059e: cd 00     mov   x,#$00
05a0: af        mov   (x)+,a
05a1: c8 50     cmp   x,#$50
05a3: d0 fb     bne   $05a0
05a5: 6f        ret

05a6: 3f f5 06  call  $06f5
05a9: 8f 0d a1  mov   $a1,#$0d
05ac: 8f ff a0  mov   $a0,#$ff          ; song address = $0dff (+1 for actual start address)
; fall through...
; or when song header first byte == 0:
05af: 3f 88 05  call  $0588
05b2: 8d 00     mov   y,#$00
05b4: dd        mov   a,y
05b5: da ce     movw  $ce,ya
05b7: c4 d1     mov   $d1,a
05b9: da d2     movw  $d2,ya
05bb: 9c        dec   a
05bc: c4 d0     mov   $d0,a
05be: 3f 9d 06  call  $069d             ; zero work registers
05c1: cd 07     mov   x,#$07            ; voice index (initialize voices in reverse-order)
05c3: 8d 00     mov   y,#$00
05c5: 3a a0     incw  $a0               ; skip first byte (priority)
05c7: f7 a0     mov   a,($a0)+y
05c9: c4 a3     mov   $a3,a             ; starting address (hi-byte)
05cb: 3a a0     incw  $a0
05cd: f7 a0     mov   a,($a0)+y
05cf: c4 a2     mov   $a2,a             ; starting address (lo-byte)
05d1: f7 a2     mov   a,($a2)+y
05d3: 68 17     cmp   a,#$17
05d5: f0 15     beq   $05ec             ; next if the first event byte == end of track ($17)
05d7: ba a2     movw  ya,$a2
05d9: db 08     mov   $08+x,y
05db: d4 00     mov   $00+x,a           ; set reading ptr
05dd: e8 10     mov   a,#$10
05df: d5 00 01  mov   $0100+x,a
05e2: e8 b8     mov   a,#$b8
05e4: d5 48 02  mov   $0248+x,a         ; release rate
05e7: e8 80     mov   a,#$80
05e9: d5 30 02  mov   $0230+x,a
05ec: 1d        dec   x
05ed: 10 d4     bpl   $05c3             ; foreach voice
05ef: 6f        ret

05f0: e5 f5 00  mov   a,$00f5
05f3: 0d        push  psw
05f4: 10 03     bpl   $05f9
05f6: 48 ff     eor   a,#$ff
05f8: bc        inc   a
05f9: 2d        push  a
05fa: 8d 69     mov   y,#$69
05fc: cf        mul   ya
05fd: 8f 00 a3  mov   $a3,#$00
0600: cb a2     mov   $a2,y
0602: ae        pop   a
0603: 8d 03     mov   y,#$03
0605: cf        mul   ya
0606: 7a a2     addw  ya,$a2
0608: 8e        pop   psw
0609: 10 07     bpl   $0612
060b: da a2     movw  $a2,ya
060d: 8d 00     mov   y,#$00
060f: dd        mov   a,y
0610: 9a a2     subw  ya,$a2
0612: da ce     movw  $ce,ya
0614: 6f        ret

0615: e5 f5 00  mov   a,$00f5
0618: 0d        push  psw
0619: 10 03     bpl   $061e
061b: 48 ff     eor   a,#$ff
061d: bc        inc   a
061e: 5d        mov   x,a
061f: 9f        xcn   a
0620: 28 0f     and   a,#$0f
0622: fd        mov   y,a
0623: 7d        mov   a,x
0624: 9f        xcn   a
0625: 28 f0     and   a,#$f0
0627: 8e        pop   psw
0628: 10 07     bpl   $0631
062a: da a2     movw  $a2,ya
062c: 8d 00     mov   y,#$00
062e: dd        mov   a,y
062f: 9a a2     subw  ya,$a2
0631: da d2     movw  $d2,ya
0633: 6f        ret

0634: c2 b0     set6  $b0
0636: 2f 19     bra   $0651
0638: d2 b0     clr6  $b0
063a: 8f 00 c8  mov   $c8,#$00
063d: 8f 80 b3  mov   $b3,#$80
0640: cd 57     mov   x,#$57
0642: e4 c3     mov   a,$c3
0644: 24 b3     and   a,$b3
0646: d0 03     bne   $064b
0648: 3f 55 0a  call  $0a55
064b: 1d        dec   x
064c: 4b b3     lsr   $b3
064e: d0 f2     bne   $0642
0650: 6f        ret

0651: cd 07     mov   x,#$07
0653: 8f 80 b3  mov   $b3,#$80
0656: e4 c3     mov   a,$c3
0658: 24 b3     and   a,$b3
065a: d0 06     bne   $0662
065c: 3f 43 04  call  $0443
065f: 09 b3 c9  or    ($c9),($b3)
0662: 1d        dec   x
0663: 4b b3     lsr   $b3
0665: d0 ef     bne   $0656
0667: 8f 00 c8  mov   $c8,#$00
066a: 8f 00 cb  mov   $cb,#$00
066d: 6f        ret

066e: cd ff     mov   x,#$ff
0670: 2f 02     bra   $0674
0672: cd 01     mov   x,#$01
0674: 3e d4     cmp   x,$d4
0676: f0 1c     beq   $0694
0678: e5 f6 00  mov   a,$00f6
067b: 05 f7 00  or    a,$00f7
067e: f0 1d     beq   $069d
0680: e5 f6 00  mov   a,$00f6
0683: ec f7 00  mov   y,$00f7
0686: 0b d4     asl   $d4
0688: f0 0b     beq   $0695
068a: 3f a3 06  call  $06a3
068d: 8d ff     mov   y,#$ff
068f: dd        mov   a,y
0690: 9a d7     subw  ya,$d7
0692: da d7     movw  $d7,ya
0694: 6f        ret

0695: 8f 00 d7  mov   $d7,#$00
0698: 8f 00 d8  mov   $d8,#$00
069b: 2f 06     bra   $06a3
069d: e8 00     mov   a,#$00
069f: fd        mov   y,a
06a0: 5d        mov   x,a
06a1: da d7     movw  $d7,ya
06a3: da d5     movw  $d5,ya
06a5: d8 d4     mov   $d4,x
06a7: 6f        ret

06a8: cd ff     mov   x,#$ff
06aa: 2f 02     bra   $06ae
06ac: cd 01     mov   x,#$01
06ae: e5 f6 00  mov   a,$00f6
06b1: 05 f7 00  or    a,$00f7
06b4: d0 07     bne   $06bd
06b6: 5d        mov   x,a
06b7: 9c        dec   a
06b8: fd        mov   y,a
06b9: da dd     movw  $dd,ya
06bb: 2f 05     bra   $06c2
06bd: e5 f5 00  mov   a,$00f5
06c0: c4 da     mov   $da,a
06c2: e5 f6 00  mov   a,$00f6
06c5: ec f7 00  mov   y,$00f7
06c8: da db     movw  $db,ya
06ca: d8 d9     mov   $d9,x
06cc: 6f        ret

06cd: b2 b0     clr5  $b0
06cf: f8 b5     mov   x,$b5
06d1: f5 a1 0d  mov   a,$0da1+x
06d4: fd        mov   y,a
06d5: f5 a2 0d  mov   a,$0da2+x
06d8: da b8     movw  $b8,ya
06da: f5 a4 0d  mov   a,$0da4+x
06dd: fd        mov   y,a
06de: f5 a5 0d  mov   a,$0da5+x
06e1: da ba     movw  $ba,ya
06e3: 6f        ret

06e4: a2 b0     set5  $b0
06e6: f8 b5     mov   x,$b5
06e8: f5 a0 0d  mov   a,$0da0+x
06eb: fd        mov   y,a
06ec: da b8     movw  $b8,ya
06ee: f5 a3 0d  mov   a,$0da3+x
06f1: fd        mov   y,a
06f2: da ba     movw  $ba,ya
06f4: 6f        ret

06f5: 3f 6c 05  call  $056c
06f8: e8 aa     mov   a,#$aa
06fa: c5 f4 00  mov   $00f4,a
06fd: e8 bb     mov   a,#$bb
06ff: c5 f5 00  mov   $00f5,a
0702: e5 f4 00  mov   a,$00f4
0705: 68 cc     cmp   a,#$cc
0707: d0 f9     bne   $0702
0709: 2f 21     bra   $072c
070b: ec f4 00  mov   y,$00f4
070e: d0 fb     bne   $070b
0710: 5e f4 00  cmp   y,$00f4
0713: d0 f6     bne   $070b
0715: e5 f5 00  mov   a,$00f5
0718: d7 a0     mov   ($a0)+y,a
071a: cc f4 00  mov   $00f4,y
071d: 5e f4 00  cmp   y,$00f4
0720: f0 fb     beq   $071d
0722: fc        inc   y
0723: d0 02     bne   $0727
0725: ab a1     inc   $a1
0727: 5e f4 00  cmp   y,$00f4
072a: f0 e9     beq   $0715
072c: e5 f6 00  mov   a,$00f6
072f: ec f7 00  mov   y,$00f7
0732: da a0     movw  $a0,ya
0734: ec f4 00  mov   y,$00f4
0737: e5 f5 00  mov   a,$00f5
073a: f0 05     beq   $0741
073c: cc f4 00  mov   $00f4,y
073f: 2f ca     bra   $070b
0741: c5 f6 00  mov   $00f6,a
0744: bc        inc   a
0745: c4 b2     mov   $b2,a
0747: e5 fd 00  mov   a,$00fd
074a: 8f 00 b1  mov   $b1,#$00
074d: cc f4 00  mov   $00f4,y
0750: 6f        ret

0751: fa b3 b4  mov   ($b4),($b3)
0754: 58 ff b4  eor   $b4,#$ff
0757: f5 10 02  mov   a,$0210+x
075a: 15 08 02  or    a,$0208+x
075d: f0 3b     beq   $079a
075f: 3f 77 0b  call  $0b77
0762: f4 28     mov   a,$28+x
0764: 14 20     or    a,$20+x
0766: f0 17     beq   $077f
0768: fb 28     mov   y,$28+x
076a: f4 20     mov   a,$20+x
076c: 9a a8     subw  ya,$a8
076e: f0 02     beq   $0772
0770: b0 09     bcs   $077b
0772: e3 c4 03  bbs7  $c4,$0778
0775: 3f 4a 04  call  $044a
0778: 8d 00     mov   y,#$00
077a: dd        mov   a,y
077b: db 28     mov   $28+x,y
077d: d4 20     mov   $20+x,a
077f: f5 10 02  mov   a,$0210+x
0782: fd        mov   y,a
0783: f5 08 02  mov   a,$0208+x
0786: 9a a8     subw  ya,$a8
0788: 0d        push  psw
0789: d5 08 02  mov   $0208+x,a
078c: dd        mov   a,y
078d: d5 10 02  mov   $0210+x,a
0790: 8e        pop   psw
0791: f0 07     beq   $079a
0793: 90 05     bcc   $079a
0795: ad c1     cmp   y,#$c1
0797: b0 01     bcs   $079a
0799: 6f        ret

079a: 8d 07     mov   y,#$07
079c: e8 a3     mov   a,#$a3
079e: 6d        push  y
079f: 2d        push  a
07a0: 5f c2 08  jmp   $08c2

07a3: 2d        push  a
07a4: 9f        xcn   a
07a5: 5c        lsr   a
07a6: 28 07     and   a,#$07
07a8: 9c        dec   a
07a9: fd        mov   y,a
07aa: f4 10     mov   a,$10+x
07ac: 28 30     and   a,#$30
07ae: d0 05     bne   $07b5
07b0: f6 a4 08  mov   a,$08a4+y
07b3: 2f 12     bra   $07c7
07b5: 28 10     and   a,#$10
07b7: d0 05     bne   $07be
07b9: f6 9d 08  mov   a,$089d+y
07bc: 2f 09     bra   $07c7
07be: f4 10     mov   a,$10+x
07c0: 28 ef     and   a,#$ef
07c2: d4 10     mov   $10+x,a
07c4: f6 ab 08  mov   a,$08ab+y
07c7: 60        clrc
07c8: 95 10 02  adc   a,$0210+x
07cb: d5 10 02  mov   $0210+x,a
07ce: ae        pop   a
07cf: 28 1f     and   a,#$1f
07d1: d0 01     bne   $07d4
07d3: 6f        ret

07d4: 2d        push  a
07d5: f4 10     mov   a,$10+x
07d7: 28 0f     and   a,#$0f
07d9: fd        mov   y,a
07da: ae        pop   a
07db: 60        clrc
07dc: 96 b2 08  adc   a,$08b2+y
07df: e3 b0 03  bbs7  $b0,$07e5
07e2: 60        clrc
07e3: 84 d1     adc   a,$d1
07e5: 60        clrc
07e6: 95 18 02  adc   a,$0218+x
07e9: c4 a1     mov   $a1,a
07eb: 8f 00 a0  mov   $a0,#$00
07ee: 8d 00     mov   y,#$00
07f0: f5 20 02  mov   a,$0220+x
07f3: 10 01     bpl   $07f6
07f5: dc        dec   y
07f6: 7a a0     addw  ya,$a0
07f8: ad 61     cmp   y,#$61
07fa: 90 02     bcc   $07fe
07fc: 8d 60     mov   y,#$60
07fe: 40        setp
07ff: da a2     movw  $a2,ya
0801: f4 00     mov   a,$00+x
0803: c4 a4     mov   $a4,a
0805: 12 a4     clr0  $a4
0807: f4 28     mov   a,$28+x
0809: f0 08     beq   $0813
080b: f4 40     mov   a,$40+x
080d: f0 04     beq   $0813
080f: 64 a3     cmp   a,$a3
0811: d0 04     bne   $0817
0813: e4 a2     mov   a,$a2
0815: 2f 0e     bra   $0825
0817: b0 04     bcs   $081d
0819: 22 a4     set1  $a4
081b: 2f 02     bra   $081f
081d: 32 a4     clr1  $a4
081f: ab a4     inc   $a4
0821: fb 40     mov   y,$40+x
0823: f4 48     mov   a,$48+x
0825: 2d        push  a
0826: e4 a4     mov   a,$a4
0828: d4 00     mov   $00+x,a
082a: e4 a3     mov   a,$a3
082c: d4 40     mov   $40+x,a
082e: e4 a2     mov   a,$a2
0830: d4 48     mov   $48+x,a
0832: ae        pop   a
0833: db 30     mov   $30+x,y
0835: d4 38     mov   $38+x,a
0837: 20        clrp
0838: f4 10     mov   a,$10+x
083a: 30 2a     bmi   $0866
083c: f5 00 01  mov   a,$0100+x
083f: fd        mov   y,a
0840: 28 10     and   a,#$10
0842: f0 0b     beq   $084f
0844: dd        mov   a,y
0845: 28 3f     and   a,#$3f
0847: d5 00 01  mov   $0100+x,a
084a: e8 00     mov   a,#$00
084c: d5 20 01  mov   $0120+x,a
084f: f3 b0 08  bbc7  $b0,$085a
0852: 09 b3 c0  or    ($c0),($b3)
0855: 09 b3 c1  or    ($c1),($b3)
0858: 2f 09     bra   $0863
085a: e3 c4 12  bbs7  $c4,$086f
085d: 09 b3 c8  or    ($c8),($b3)
0860: 09 b3 c9  or    ($c9),($b3)
0863: 3f 43 04  call  $0443
0866: e3 c4 06  bbs7  $c4,$086f
0869: 3f a6 0c  call  $0ca6
086c: 3f c9 0b  call  $0bc9
086f: f4 10     mov   a,$10+x
0871: fd        mov   y,a
0872: 28 7f     and   a,#$7f
0874: c4 a0     mov   $a0,a
0876: dd        mov   a,y
0877: 28 40     and   a,#$40
0879: 1c        asl   a
087a: 04 a0     or    a,$a0
087c: d4 10     mov   $10+x,a
087e: 10 05     bpl   $0885
0880: 8d 00     mov   y,#$00
0882: dd        mov   a,y
0883: 2f 13     bra   $0898
0885: fb 18     mov   y,$18+x
0887: f5 08 02  mov   a,$0208+x
088a: cf        mul   ya
088b: cb a0     mov   $a0,y
088d: 8f 00 a1  mov   $a1,#$00
0890: fb 18     mov   y,$18+x
0892: f5 10 02  mov   a,$0210+x
0895: cf        mul   ya
0896: 7a a0     addw  ya,$a0
0898: db 28     mov   $28+x,y
089a: d4 20     mov   $20+x,a
089c: 6f        ret

; duration table
089d: db $02,$04,$08,$10,$20,$40,$80 ; set5 $10 (triplet)
08a4: db $03,$06,$0c,$18,$30,$60,$c0 ; others   (normal note)
08ab: db $00,$09,$12,$24,$48,$90,$00 ; set4 $10 (dotted note)

; octave correction table
08b2: db $00,$0c,$18,$24,$30,$3c,$48,$54
08ba: db $18,$24,$30,$3c,$48,$54,$60,$6c

08c2: 3f df 08  call  $08df
08c5: 68 20     cmp   a,#$20
08c7: b0 26     bcs   $08ef
08c9: c4 a7     mov   $a7,a
08cb: 8d 08     mov   y,#$08
08cd: 6d        push  y
08ce: 8d c2     mov   y,#$c2
08d0: 6d        push  y
08d1: 1c        asl   a
08d2: fd        mov   y,a
08d3: f6 f1 08  mov   a,$08f1+y
08d6: 2d        push  a
08d7: f6 f0 08  mov   a,$08f0+y
08da: 2d        push  a
08db: ad 08     cmp   y,#$08
08dd: 90 10     bcc   $08ef
08df: fb 08     mov   y,$08+x
08e1: f4 00     mov   a,$00+x
08e3: da a0     movw  $a0,ya            ; $08/00 = reading ptr
08e5: 8d 00     mov   y,#$00
08e7: f7 a0     mov   a,($a0)+y
08e9: bb 00     inc   $00+x
08eb: d0 02     bne   $08ef
08ed: bb 08     inc   $08+x
; vcmd 1e,1f - nop
08ef: 6f        ret

; vcmd dispatch table
08f0: dw $0930  ; 00 - toggle triplet
08f2: dw $0934  ; 01 - toggle tie/slur
08f4: dw $0938  ; 02 - dotted note switch on
08f6: dw $093e  ; 03 - 2-oct up toggle
08f8: dw $0a1f  ; 04 - set triplet/dotted/oct-up directly
08fa: dw $0945  ; 05 - tempo
08fc: dw $0958  ; 06 - duration rate
08fe: dw $095b  ; 07 - volume
0900: dw $0970  ; 08 - instrument
0902: dw $09aa  ; 09 - key offset
0904: dw $09b5  ; 0a - global transpose
0906: dw $09bb  ; 0b - per-voice transpose
0908: dw $09bf  ; 0c - tuning
090a: dw $09c3  ; 0d - portamento time
090c: dw $09c7  ; 0e - loop for #1
090e: dw $09cb  ; 0f - loop for #2
0910: dw $09cf  ; 10 - loop for #3
0912: dw $09d3  ; 11 - loop for #4
0914: dw $09c7  ; 12 - loop break #1
0916: dw $09cb  ; 13 - loop break #2
0918: dw $09cf  ; 14 - loop break #3
091a: dw $09d3  ; 15 - loop break #4
091c: dw $0a09  ; 16 - goto
091e: dw $0a2a  ; 17 - end of track
0920: dw $0a65  ; 18 - pan
0922: dw $0a6c  ; 19 - master volume
0924: dw $0a76  ; 1a - LFO param
0926: dw $0a9c  ; 1b - echo params
0928: dw $0b57  ; 1c - echo on/off
092a: dw $0b71  ; 1d - release rate (GAIN)
092c: dw $08ef  ; 1e - nop
092e: dw $08ef  ; 1f - nop

; vcmd 00 - toggle triplet
0930: e8 20     mov   a,#$20
0932: 2f 0c     bra   $0940
; vcmd 01 - toggle tie/slur
0934: e8 40     mov   a,#$40
0936: 2f 08     bra   $0940
; vcmd 02 - dotted note switch on
0938: e8 10     mov   a,#$10
093a: 14 10     or    a,$10+x
093c: 2f 04     bra   $0942
; vcmd 03 - 2-oct up toggle
093e: e8 08     mov   a,#$08
0940: 54 10     eor   a,$10+x
0942: d4 10     mov   $10+x,a
0944: 6f        ret

; vcmd 05 - tempo
0945: 2d        push  a
0946: 3f df 08  call  $08df
0949: ee        pop   y
094a: f3 b0 08  bbc7  $b0,$0955
094d: d5 58 02  mov   $0258+x,a
0950: dd        mov   a,y
0951: d5 60 02  mov   $0260+x,a
0954: 6f        ret

0955: da cc     movw  $cc,ya
0957: 6f        ret

; vcmd 06 - duration rate
0958: d4 18     mov   $18+x,a
095a: 6f        ret

; vcmd 07 - volume
095b: fd        mov   y,a
095c: 3f 4a 0c  call  $0c4a
095f: e3 b0 0a  bbs7  $b0,$096c
0962: 2d        push  a
0963: ec 41 14  mov   y,$1441
0966: 3f 4a 0c  call  $0c4a
0969: ee        pop   y
096a: cf        mul   ya
096b: dd        mov   a,y
096c: d5 28 02  mov   $0228+x,a
096f: 6f        ret

; vcmd 08 - instrument
0970: e3 b0 08  bbs7  $b0,$097b
0973: bc        inc   a
0974: d5 50 02  mov   $0250+x,a
0977: e3 c4 2f  bbs7  $c4,$09a9
097a: 9c        dec   a
097b: 8d 06     mov   y,#$06
097d: cf        mul   ya
097e: da a0     movw  $a0,ya
0980: 60        clrc
0981: 98 f8 a0  adc   $a0,#$f8
0984: 98 40 a1  adc   $a1,#$40
0987: ba a0     movw  ya,$a0
0989: d5 38 02  mov   $0238+x,a
098c: dd        mov   a,y
098d: d5 40 02  mov   $0240+x,a
0990: 4d        push  x
0991: 7d        mov   a,x
0992: 9f        xcn   a
0993: 28 70     and   a,#$70
0995: 08 04     or    a,#$04
0997: 5d        mov   x,a
0998: 8d 00     mov   y,#$00
099a: f7 a0     mov   a,($a0)+y
099c: c9 f2 00  mov   $00f2,x
099f: c5 f3 00  mov   $00f3,a
09a2: 3d        inc   x
09a3: fc        inc   y
09a4: ad 04     cmp   y,#$04
09a6: d0 f2     bne   $099a
09a8: ce        pop   x
09a9: 6f        ret

; vcmd 09 - key offset
09aa: c4 a0     mov   $a0,a
09ac: f4 10     mov   a,$10+x
09ae: 28 f8     and   a,#$f8
09b0: 04 a0     or    a,$a0
09b2: d4 10     mov   $10+x,a
09b4: 6f        ret

; vcmd 0a - global transpose
09b5: e3 b0 02  bbs7  $b0,$09ba
09b8: c4 d1     mov   $d1,a
09ba: 6f        ret

; vcmd 0b - per-voice transpose
09bb: d5 18 02  mov   $0218+x,a
09be: 6f        ret

; vcmd 0c - tuning
09bf: d5 20 02  mov   $0220+x,a
09c2: 6f        ret

; vcmd 0d - portamento time
09c3: d5 28 01  mov   $0128+x,a
09c6: 6f        ret

09c7: 8d 30     mov   y,#$30            ; $30+x - vcmd 0e,12
09c9: 2f 0a     bra   $09d5 
09cb: 8d 38     mov   y,#$38            ; $38+x - vcmd 0f,13
09cd: 2f 06     bra   $09d5 
09cf: 8d 40     mov   y,#$40            ; $40+x - vcmd 10,14
09d1: 2f 02     bra   $09d5 
09d3: 8d 48     mov   y,#$48            ; $48+x - vcmd 11,15
09d5: c4 a2     mov   $a2,a
09d7: cb a0     mov   $a0,y
09d9: 7d        mov   a,x
09da: 60        clrc
09db: 84 a0     adc   a,$a0
09dd: fd        mov   y,a
09de: 8f 00 a1  mov   $a1,#$00
09e1: 8f 00 a0  mov   $a0,#$00
09e4: 78 12 a7  cmp   $a7,#$12
09e7: b0 11     bcs   $09fa
09e9: f7 a0     mov   a,($a0)+y
09eb: f0 07     beq   $09f4
09ed: 9c        dec   a
09ee: d7 a0     mov   ($a0)+y,a
09f0: f0 21     beq   $0a13
09f2: 2f 12     bra   $0a06
09f4: e4 a2     mov   a,$a2
09f6: d7 a0     mov   ($a0)+y,a
09f8: 2f 0c     bra   $0a06
09fa: f7 a0     mov   a,($a0)+y
09fc: 9c        dec   a
09fd: d0 14     bne   $0a13
09ff: d7 a0     mov   ($a0)+y,a
0a01: e4 a2     mov   a,$a2
0a03: 3f 1f 0a  call  $0a1f
0a06: 3f df 08  call  $08df
; vcmd 16 - goto
0a09: 2d        push  a
0a0a: 3f df 08  call  $08df
0a0d: d4 00     mov   $00+x,a
0a0f: ae        pop   a
0a10: d4 08     mov   $08+x,a
0a12: 6f        ret

0a13: e8 02     mov   a,#$02
0a15: 60        clrc
0a16: 94 00     adc   a,$00+x
0a18: d4 00     mov   $00+x,a
0a1a: 90 02     bcc   $0a1e
0a1c: bb 08     inc   $08+x
0a1e: 6f        ret

; vcmd 04 - set triplet/dotted/oct-up directly
0a1f: c4 a0     mov   $a0,a
0a21: f4 10     mov   a,$10+x
0a23: 28 97     and   a,#$97
0a25: 04 a0     or    a,$a0
0a27: d4 10     mov   $10+x,a
0a29: 6f        ret

; vcmd 17 - end of track
0a2a: ae        pop   a
0a2b: ae        pop   a
0a2c: ae        pop   a
0a2d: ae        pop   a
0a2e: e3 b0 13  bbs7  $b0,$0a44
0a31: e8 00     mov   a,#$00
0a33: d4 08     mov   $08+x,a
0a35: d4 00     mov   $00+x,a
0a37: d5 50 02  mov   $0250+x,a
0a3a: e3 c4 06  bbs7  $c4,$0a43
0a3d: 3f 43 04  call  $0443
0a40: 09 b3 c9  or    ($c9),($b3)
0a43: 6f        ret

0a44: 29 b4 c3  and   ($c3),($b4)
0a47: 29 b4 c2  and   ($c2),($b4)
0a4a: e8 00     mov   a,#$00
0a4c: d5 50 02  mov   $0250+x,a
0a4f: 3f 43 04  call  $0443
0a52: 09 b3 c1  or    ($c1),($b3)
0a55: 4d        push  x
0a56: 7d        mov   a,x
0a57: 80        setc
0a58: a8 50     sbc   a,#$50
0a5a: 5d        mov   x,a
0a5b: f5 50 02  mov   a,$0250+x
0a5e: f0 03     beq   $0a63
0a60: 09 b3 cb  or    ($cb),($b3)
0a63: ce        pop   x
0a64: 6f        ret

; vcmd 18 - pan
0a65: 60        clrc
0a66: 88 80     adc   a,#$80
0a68: d5 30 02  mov   $0230+x,a
0a6b: 6f        ret

; vcmd 19 - master volume
0a6c: e3 b0 06  bbs7  $b0,$0a75
0a6f: fd        mov   y,a
0a70: 3f 4a 0c  call  $0c4a
0a73: c4 d0     mov   $d0,a
0a75: 6f        ret

; vcmd 1a - LFO param
0a76: 2d        push  a
0a77: 3f df 08  call  $08df
0a7a: ee        pop   y
0a7b: ad 03     cmp   y,#$03
0a7d: d0 0e     bne   $0a8d
0a7f: 9f        xcn   a
0a80: c4 a0     mov   $a0,a
0a82: f5 00 01  mov   a,$0100+x
0a85: 28 ef     and   a,#$ef
0a87: 04 a0     or    a,$a0
0a89: d5 00 01  mov   $0100+x,a
0a8c: 6f        ret

0a8d: 2d        push  a
0a8e: e8 08     mov   a,#$08
0a90: cf        mul   ya
0a91: d8 a0     mov   $a0,x
0a93: 60        clrc
0a94: 84 a0     adc   a,$a0
0a96: fd        mov   y,a
0a97: ae        pop   a
0a98: d6 08 01  mov   $0108+y,a
0a9b: 6f        ret

; vcmd 1b - echo params
0a9c: 3f df 08  call  $08df
0a9f: 8d 0a     mov   y,#$0a
0aa1: cf        mul   ya
0aa2: 64 b5     cmp   a,$b5
0aa4: f0 50     beq   $0af6
0aa6: c4 b5     mov   $b5,a
0aa8: 4d        push  x
0aa9: 5d        mov   x,a
0aaa: a3 b0 05  bbs5  $b0,$0ab2
0aad: 3f d1 06  call  $06d1
0ab0: 2f 03     bra   $0ab5
0ab2: 3f e8 06  call  $06e8
0ab5: 3f f7 0a  call  $0af7
0ab8: 8d 6d     mov   y,#$6d
0aba: f5 a6 0d  mov   a,$0da6+x
0abd: 3f 7e 0d  call  $0d7e
0ac0: e8 7d     mov   a,#$7d
0ac2: c5 f2 00  mov   $00f2,a
0ac5: e5 f3 00  mov   a,$00f3
0ac8: 28 0f     and   a,#$0f
0aca: bc        inc   a
0acb: 48 ff     eor   a,#$ff
0acd: f3 b7 09  bbc7  $b7,$0ad9
0ad0: 60        clrc
0ad1: 84 b7     adc   a,$b7
0ad3: 68 e0     cmp   a,#$e0
0ad5: b0 02     bcs   $0ad9
0ad7: e8 e0     mov   a,#$e0
0ad9: c4 b7     mov   $b7,a
0adb: f5 a7 0d  mov   a,$0da7+x
0ade: c5 f3 00  mov   $00f3,a
0ae1: fd        mov   y,a
0ae2: f6 10 0b  mov   a,$0b10+y
0ae5: c4 b6     mov   $b6,a
0ae7: 8d 0d     mov   y,#$0d
0ae9: f5 a8 0d  mov   a,$0da8+x
0aec: 3f 7e 0d  call  $0d7e
0aef: f5 a9 0d  mov   a,$0da9+x
0af2: 3f 20 0b  call  $0b20
0af5: ce        pop   x
0af6: 6f        ret

0af7: 8d 03     mov   y,#$03
0af9: f6 0c 0b  mov   a,$0b0c+y
0afc: c5 f2 00  mov   $00f2,a
0aff: e8 00     mov   a,#$00
0b01: c5 f3 00  mov   $00f3,a
0b04: fe f3     dbnz  y,$0af9
0b06: 8d 6c     mov   y,#$6c
0b08: e8 20     mov   a,#$20
0b0a: 5f 7e 0d  jmp   $0d7e

; EVOL(L),EVOL(R),EON
0b0d: db $2c,$3c,$4d

0b10: db $00,$0c,$16,$22,$2c,$34,$42,$4c
0b18: db $50,$58,$6c,$74,$80,$88,$98,$a0

0b20: 4d        push  x
0b21: 8d 08     mov   y,#$08
0b23: cf        mul   ya
0b24: 5d        mov   x,a
0b25: 8d 0f     mov   y,#$0f
0b27: f5 37 0b  mov   a,$0b37+x
0b2a: 3f 7e 0d  call  $0d7e
0b2d: 3d        inc   x
0b2e: dd        mov   a,y
0b2f: 60        clrc
0b30: 88 10     adc   a,#$10
0b32: fd        mov   y,a
0b33: 10 f2     bpl   $0b27
0b35: ce        pop   x
0b36: 6f        ret

; echo FIR presets
0b37: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
0b3f: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
0b47: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
0b4f: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; vcmd 1c - echo on/off
0b57: 28 01     and   a,#$01
0b59: 5c        lsr   a
0b5a: 90 02     bcc   $0b5e
0b5c: e4 b3     mov   a,$b3
0b5e: e3 b0 08  bbs7  $b0,$0b69
0b61: 29 b4 ca  and   ($ca),($b4)
0b64: 04 ca     or    a,$ca
0b66: c4 ca     mov   $ca,a
0b68: 6f        ret

0b69: 29 b4 c2  and   ($c2),($b4)
0b6c: 04 c2     or    a,$c2
0b6e: c4 c2     mov   $c2,a
0b70: 6f        ret

; vcmd 1d - release rate (GAIN)
0b71: 08 a0     or    a,#$a0
0b73: d5 48 02  mov   $0248+x,a
0b76: 6f        ret

0b77: 40        setp
0b78: f4 18     mov   a,$18+x
0b7a: 60        clrc
0b7b: 94 20     adc   a,$20+x
0b7d: d4 20     mov   $20+x,a
0b7f: 90 07     bcc   $0b88
0b81: f4 00     mov   a,$00+x
0b83: 60        clrc
0b84: 88 40     adc   a,#$40
0b86: d4 00     mov   $00+x,a
0b88: f4 00     mov   a,$00+x
0b8a: c4 a4     mov   $a4,a
0b8c: 13 a4 32  bbc0  $a4,$0bc1
0b8f: 8f 00 a1  mov   $a1,#$00
0b92: f4 28     mov   a,$28+x
0b94: 1c        asl   a
0b95: c4 a0     mov   $a0,a
0b97: f4 40     mov   a,$40+x
0b99: c4 a3     mov   $a3,a
0b9b: f4 48     mov   a,$48+x
0b9d: c4 a2     mov   $a2,a
0b9f: fb 30     mov   y,$30+x
0ba1: f4 38     mov   a,$38+x
0ba3: 23 a4 0a  bbs1  $a4,$0bb0
0ba6: 9a a0     subw  ya,$a0
0ba8: 90 0c     bcc   $0bb6
0baa: 5a a2     cmpw  ya,$a2
0bac: 90 08     bcc   $0bb6
0bae: 2f 0d     bra   $0bbd
0bb0: 7a a0     addw  ya,$a0
0bb2: 5a a2     cmpw  ya,$a2
0bb4: 90 07     bcc   $0bbd
0bb6: e4 a4     mov   a,$a4
0bb8: 9c        dec   a
0bb9: d4 00     mov   $00+x,a
0bbb: ba a2     movw  ya,$a2
0bbd: db 30     mov   $30+x,y
0bbf: d4 38     mov   $38+x,a
0bc1: 20        clrp
0bc2: f3 c4 01  bbc7  $c4,$0bc6
0bc5: 6f        ret

0bc6: 3f 92 0c  call  $0c92
0bc9: 40        setp
0bca: fb 10     mov   y,$10+x
0bcc: f4 00     mov   a,$00+x
0bce: 1c        asl   a
0bcf: 1c        asl   a
0bd0: f4 20     mov   a,$20+x
0bd2: b0 02     bcs   $0bd6
0bd4: 48 ff     eor   a,#$ff
0bd6: cf        mul   ya
0bd7: da a0     movw  $a0,ya
0bd9: 8d 7e     mov   y,#$7e
0bdb: e8 81     mov   a,#$81
0bdd: 9a a0     subw  ya,$a0
0bdf: 3f 4c 0c  call  $0c4c
0be2: fd        mov   y,a
0be3: 20        clrp
0be4: e3 b0 1e  bbs7  $b0,$0c05
0be7: e4 d0     mov   a,$d0
0be9: cf        mul   ya
0bea: 13 d4 10  bbc0  $d4,$0bfd
0bed: 6d        push  y
0bee: ba d7     movw  ya,$d7
0bf0: e3 d4 05  bbs7  $d4,$0bf8
0bf3: 8d ff     mov   y,#$ff
0bf5: dd        mov   a,y
0bf6: 9a d7     subw  ya,$d7
0bf8: 3f 44 0c  call  $0c44
0bfb: ee        pop   y
0bfc: cf        mul   ya
0bfd: 6d        push  y
0bfe: ba dd     movw  ya,$dd
0c00: 3f 44 0c  call  $0c44
0c03: ee        pop   y
0c04: cf        mul   ya
0c05: f5 28 02  mov   a,$0228+x
0c08: cf        mul   ya
0c09: cb a2     mov   $a2,y
0c0b: f5 30 02  mov   a,$0230+x
0c0e: b3 b0 02  bbc5  $b0,$0c13
0c11: e8 80     mov   a,#$80
0c13: 8d 14     mov   y,#$14
0c15: cf        mul   ya
0c16: da a0     movw  $a0,ya
0c18: 8f 01 a3  mov   $a3,#$01
0c1b: eb a1     mov   y,$a1
0c1d: f6 7d 0c  mov   a,$0c7d+y
0c20: 80        setc
0c21: b6 7c 0c  sbc   a,$0c7c+y
0c24: eb a0     mov   y,$a0
0c26: cf        mul   ya
0c27: dd        mov   a,y
0c28: eb a1     mov   y,$a1
0c2a: 60        clrc
0c2b: 96 7c 0c  adc   a,$0c7c+y
0c2e: eb a2     mov   y,$a2
0c30: cf        mul   ya
0c31: dd        mov   a,y
0c32: eb a3     mov   y,$a3
0c34: 3f 73 0d  call  $0d73
0c37: 8d 14     mov   y,#$14
0c39: e8 00     mov   a,#$00
0c3b: 9a a0     subw  ya,$a0
0c3d: da a0     movw  $a0,ya
0c3f: 8b a3     dec   $a3
0c41: 10 d8     bpl   $0c1b
0c43: 6f        ret

0c44: cb a4     mov   $a4,y
0c46: 8d 04     mov   y,#$04
0c48: 2f 06     bra   $0c50
0c4a: e8 ff     mov   a,#$ff
0c4c: cb a4     mov   $a4,y
0c4e: 8d 03     mov   y,#$03
0c50: 4b a4     lsr   $a4
0c52: 7c        ror   a
0c53: fe fb     dbnz  y,$0c50
0c55: c4 a5     mov   $a5,a
0c57: eb a4     mov   y,$a4
0c59: f6 6c 0c  mov   a,$0c6c+y
0c5c: 80        setc
0c5d: b6 6b 0c  sbc   a,$0c6b+y
0c60: eb a5     mov   y,$a5
0c62: cf        mul   ya
0c63: dd        mov   a,y
0c64: eb a4     mov   y,$a4
0c66: 60        clrc
0c67: 96 6b 0c  adc   a,$0c6b+y
0c6a: 6f        ret

; volume table (combination of two lines)
0c6b: db $00,$0c,$19,$26,$33,$40,$4c,$59
0c73: db $66,$73,$80,$8c,$99,$b3,$cc,$e6
0c7b: db $ff

; pan table (compatible with Nintendo engine)
0c7c: db $00,$01,$03,$07,$0d,$15,$1e,$29
0c84: db $34,$42,$51,$5e,$67,$6e,$73,$77
0c8c: db $7a,$7c,$7d,$7e,$7f,$7f

0c92: f5 00 01  mov   a,$0100+x
0c95: 28 01     and   a,#$01
0c97: 15 08 01  or    a,$0108+x
0c9a: d0 0a     bne   $0ca6
0c9c: e3 b0 06  bbs7  $b0,$0ca5
0c9f: e4 d2     mov   a,$d2
0ca1: 04 d3     or    a,$d3
0ca3: d0 01     bne   $0ca6
0ca5: 6f        ret

0ca6: 40        setp
0ca7: f4 08     mov   a,$08+x
0ca9: d0 06     bne   $0cb1
0cab: fb 30     mov   y,$30+x
0cad: f4 38     mov   a,$38+x
0caf: 2f 2f     bra   $0ce0
0cb1: 1c        asl   a
0cb2: 8d 0c     mov   y,#$0c
0cb4: cf        mul   ya
0cb5: da a0     movw  $a0,ya
0cb7: f4 00     mov   a,$00+x
0cb9: 0d        push  psw
0cba: 1c        asl   a
0cbb: 1c        asl   a
0cbc: f4 20     mov   a,$20+x
0cbe: 90 02     bcc   $0cc2
0cc0: 48 ff     eor   a,#$ff
0cc2: 2d        push  a
0cc3: eb a0     mov   y,$a0
0cc5: cf        mul   ya
0cc6: cb a0     mov   $a0,y
0cc8: ae        pop   a
0cc9: eb a1     mov   y,$a1
0ccb: cf        mul   ya
0ccc: 8f 00 a1  mov   $a1,#$00
0ccf: 7a a0     addw  ya,$a0
0cd1: da a0     movw  $a0,ya
0cd3: fb 30     mov   y,$30+x
0cd5: f4 38     mov   a,$38+x
0cd7: 8e        pop   psw
0cd8: 30 04     bmi   $0cde
0cda: 7a a0     addw  ya,$a0
0cdc: 2f 02     bra   $0ce0
0cde: 9a a0     subw  ya,$a0
0ce0: 20        clrp
0ce1: e3 b0 02  bbs7  $b0,$0ce6
0ce4: 7a d2     addw  ya,$d2
0ce6: dc        dec   y
0ce7: da a0     movw  $a0,ya
0ce9: dd        mov   a,y
0cea: 8d 00     mov   y,#$00
0cec: 80        setc
0ced: a8 34     sbc   a,#$34
0cef: b0 09     bcs   $0cfa
0cf1: e4 a1     mov   a,$a1
0cf3: 80        setc
0cf4: a8 13     sbc   a,#$13
0cf6: b0 06     bcs   $0cfe
0cf8: dc        dec   y
0cf9: 1c        asl   a
0cfa: 7a a0     addw  ya,$a0
0cfc: da a0     movw  $a0,ya
0cfe: 4d        push  x
0cff: e4 a1     mov   a,$a1
0d01: 1c        asl   a
0d02: 8d 00     mov   y,#$00
0d04: cd 18     mov   x,#$18
0d06: 9e        div   ya,x
0d07: 5d        mov   x,a
0d08: f6 86 0d  mov   a,$0d86+y
0d0b: c4 a3     mov   $a3,a
0d0d: f6 85 0d  mov   a,$0d85+y
0d10: c4 a2     mov   $a2,a
0d12: f6 88 0d  mov   a,$0d88+y
0d15: 2d        push  a
0d16: f6 87 0d  mov   a,$0d87+y
0d19: ee        pop   y
0d1a: 9a a2     subw  ya,$a2
0d1c: eb a0     mov   y,$a0
0d1e: cf        mul   ya
0d1f: dd        mov   a,y
0d20: 8d 00     mov   y,#$00
0d22: 7a a2     addw  ya,$a2
0d24: cb a1     mov   $a1,y
0d26: 1c        asl   a
0d27: 2b a1     rol   $a1
0d29: c8 08     cmp   x,#$08
0d2b: f0 06     beq   $0d33
0d2d: 4b a1     lsr   $a1
0d2f: 7c        ror   a
0d30: 3d        inc   x
0d31: 2f f6     bra   $0d29
0d33: c4 a0     mov   $a0,a
0d35: ce        pop   x
0d36: f5 38 02  mov   a,$0238+x
0d39: c4 a4     mov   $a4,a
0d3b: f5 40 02  mov   a,$0240+x
0d3e: c4 a5     mov   $a5,a
0d40: 8d 05     mov   y,#$05
0d42: f7 a4     mov   a,($a4)+y
0d44: eb a1     mov   y,$a1
0d46: cf        mul   ya
0d47: da a2     movw  $a2,ya
0d49: 8d 05     mov   y,#$05
0d4b: f7 a4     mov   a,($a4)+y
0d4d: eb a0     mov   y,$a0
0d4f: cf        mul   ya
0d50: 6d        push  y
0d51: 8d 04     mov   y,#$04
0d53: f7 a4     mov   a,($a4)+y
0d55: eb a0     mov   y,$a0
0d57: cf        mul   ya
0d58: 7a a2     addw  ya,$a2
0d5a: da a2     movw  $a2,ya
0d5c: 8d 04     mov   y,#$04
0d5e: f7 a4     mov   a,($a4)+y
0d60: eb a1     mov   y,$a1
0d62: cf        mul   ya
0d63: fd        mov   y,a
0d64: ae        pop   a
0d65: 7a a2     addw  ya,$a2
0d67: 28 f0     and   a,#$f0
0d69: 6d        push  y
0d6a: 8d 02     mov   y,#$02
0d6c: 3f 73 0d  call  $0d73
0d6f: ae        pop   a
0d70: fc        inc   y
0d71: 2f 0b     bra   $0d7e
0d73: 2d        push  a
0d74: cb a6     mov   $a6,y
0d76: 7d        mov   a,x
0d77: 9f        xcn   a
0d78: 28 70     and   a,#$70
0d7a: 04 a6     or    a,$a6
0d7c: fd        mov   y,a
0d7d: ae        pop   a
0d7e: cc f2 00  mov   $00f2,y
0d81: c5 f3 00  mov   $00f3,a
0d84: 6f        ret

; pitch table
0d85: dw $085f  ; c
0d87: dw $08de  ; c+
0d89: dw $0965  ; d
0d8b: dw $09f4  ; d+
0d8d: dw $0a8c  ; e
0d8f: dw $0b2c  ; f
0d91: dw $0bd6  ; f+
0d93: dw $0c8b  ; g
0d95: dw $0d4a  ; g+
0d97: dw $0e14  ; a
0d99: dw $0eea  ; a+
0d9b: dw $0fcd  ; b
0d9d: dw $10be  ; c

0d9f: db $ff

0da0: db $68,$68,$68
0da3: db $00,$00,$00
0da6: db $f8,$00,$00
0da9: db $00,$68,$68
0dac: db $68,$48,$90
0db0: db $70,$f8,$01
0db3: db $c0,$00,$68
0db6: db $68,$68,$28
0db9: db $d0,$38,$d8
0dbc: db $05,$b0,$00
