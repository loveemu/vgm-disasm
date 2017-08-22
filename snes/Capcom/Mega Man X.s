; Mega Man X

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
02e2: c5 fa 00  mov   $00fa,a           ; timer 0 frequency = 8 ms
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
02fc: e5 fd 00  mov   a,$00fd           ; timer 0 counter
02ff: 60        clrc
0300: 84 b1     adc   a,$b1
0302: c4 b1     mov   $b1,a
0304: f0 f3     beq   $02f9             ; wait for timer 0 tick (8 ms)
0306: 8b b1     dec   $b1
0308: 8d 02     mov   y,#$02
030a: e8 f9     mov   a,#$f9
030c: 6d        push  y
030d: 2d        push  a
030e: 60        clrc
030f: 98 80 b0  adc   $b0,#$80
0312: 10 03     bpl   $0317             ; update dsp voice regs
0314: 5f b7 03  jmp   $03b7             ; else, process score data and voices

0317: 69 b7 b6  cmp   ($b6),($b7)
031a: f0 15     beq   $0331
031c: e3 b7 0e  bbs7  $b7,$032d
031f: 8d 6c     mov   y,#$6c
0321: e8 00     mov   a,#$00
0323: 3f 64 0d  call  $0d64             ; FLG
0326: 8d 4d     mov   y,#$4d
0328: e8 ff     mov   a,#$ff
032a: 3f 64 0d  call  $0d64             ; EON
032d: ab b7     inc   $b7
032f: 2f 1b     bra   $034c
0331: 8d 4d     mov   y,#$4d
0333: e4 c3     mov   a,$c3
0335: 48 ff     eor   a,#$ff
0337: 24 ca     and   a,$ca
0339: 04 c2     or    a,$c2
033b: 3f 64 0d  call  $0d64             ; EON
033e: 8d 2c     mov   y,#$2c
0340: e4 bb     mov   a,$bb
0342: 3f 64 0d  call  $0d64             ; EVOL(L)
0345: 8d 3c     mov   y,#$3c
0347: e4 ba     mov   a,$ba
0349: 3f 64 0d  call  $0d64             ; EVOL(R)
034c: 8d 0c     mov   y,#$0c
034e: e4 b9     mov   a,$b9
0350: 3f 64 0d  call  $0d64             ; MVOL(L)
0353: 8d 1c     mov   y,#$1c
0355: e4 b8     mov   a,$b8
0357: 3f 64 0d  call  $0d64             ; MVOL(R)
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
036f: c4 a1     mov   $a1,a             ; $a0 = instrument entry addrss
0371: f6 48 02  mov   a,$0248+y
0374: 2f 1b     bra   $0391
0376: f3 cb 08  bbc7  $cb,$0381
0379: f5 50 02  mov   a,$0250+x
037c: 3f 73 09  call  $0973
037f: 2f 1e     bra   $039f
0381: f3 c8 1b  bbc7  $c8,$039f
0384: f5 38 02  mov   a,$0238+x
0387: c4 a0     mov   $a0,a
0389: f5 40 02  mov   a,$0240+x
038c: c4 a1     mov   $a1,a             ; $a0 = instrument entry addrss
038e: f5 48 02  mov   a,$0248+x         ; release rate
0391: 8d 07     mov   y,#$07
0393: 3f 59 0d  call  $0d59             ; GAIN
0396: 8d 01     mov   y,#$01
0398: f7 a0     mov   a,($a0)+y
039a: 8d 05     mov   y,#$05
039c: 3f 59 0d  call  $0d59             ; [0x01] ADSR(1)
039f: 0b c0     asl   $c0
03a1: 0b cb     asl   $cb
03a3: 0b c8     asl   $c8
03a5: ee        pop   y
03a6: dc        dec   y
03a7: 1d        dec   x
03a8: 10 b9     bpl   $0363
03aa: 8d 5c     mov   y,#$5c
03ac: e8 00     mov   a,#$00
03ae: 3f 64 0d  call  $0d64             ; KOF
03b1: ae        pop   a
03b2: 8d 4c     mov   y,#$4c
03b4: 5f 64 0d  jmp   $0d64             ; KON

03b7: f2 b0     clr7  $b0
03b9: c3 b0 56  bbs6  $b0,$0412
03bc: 8f 80 b3  mov   $b3,#$80
03bf: fa c3 c4  mov   ($c4),($c3)
03c2: ba cc     movw  ya,$cc            ; tempo
03c4: 7a ce     addw  ya,$ce            ; tempo (relative)
03c6: da a8     movw  $a8,ya            ; final tempo
;
03c8: cd 07     mov   x,#$07            ; voice #
03ca: f4 08     mov   a,$08+x
03cc: 14 00     or    a,$00+x
03ce: f0 03     beq   $03d3             ; next if voice is not active
03d0: 3f 4a 07  call  $074a             ; process voice stream
03d3: 1d        dec   x
03d4: 0b c4     asl   $c4
03d6: 4b b3     lsr   $b3               ; voice bit mask
03d8: d0 f0     bne   $03ca
;
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
042c: 3f 4a 07  call  $074a             ; process voice stream
042f: 1d        dec   x
0430: 4b b3     lsr   $b3
0432: d0 e8     bne   $041c
0434: e4 c1     mov   a,$c1
0436: 04 c9     or    a,$c9
0438: 8f 00 c1  mov   $c1,#$00
043b: 8f 00 c9  mov   $c9,#$00
043e: 8d 5c     mov   y,#$5c
0440: 5f 64 0d  jmp   $0d64             ; KOF

0443: 8d 07     mov   y,#$07
0445: e8 9e     mov   a,#$9e
0447: 3f 59 0d  call  $0d59             ; GAIN
044a: 8d 05     mov   y,#$05
044c: e8 00     mov   a,#$00
044e: 5f 59 0d  jmp   $0d59             ; ADSR(1)

0451: 8d 03     mov   y,#$03
0453: f6 63 04  mov   a,$0463+y         ; DSP reg initialize table -1 (address)
0456: c5 f2 00  mov   $00f2,a
0459: f6 66 04  mov   a,$0466+y         ; DSP reg initialize table -1 (value)
045c: c5 f3 00  mov   $00f3,a           ; initialize DSP reg
045f: fe f2     dbnz  y,$0453
0461: 5f a1 0a  jmp   $0aa1             ; initialize echo

; PMON,NON,DIR
0464: db $2d,$3d,$5d
0467: db $00,$00,$47

046a: e5 f4 00  mov   a,$00f4
046d: 65 f4 00  cmp   a,$00f4
0470: d0 f8     bne   $046a
0472: fd        mov   y,a
0473: f0 14     beq   $0489
0475: 2d        push  a
0476: ab b2     inc   $b2
0478: 3f 8a 04  call  $048a
047b: e8 31     mov   a,#$31
047d: c5 f1 00  mov   $00f1,a
0480: e4 b2     mov   a,$b2
0482: c5 f6 00  mov   $00f6,a
0485: ae        pop   a
0486: c5 f7 00  mov   $00f7,a
0489: 6f        ret

048a: 68 f0     cmp   a,#$f0
048c: 90 03     bcc   $0491
048e: 5f 3f 05  jmp   $053f

0491: 65 00 1c  cmp   a,$1c00
0494: 90 06     bcc   $049c
0496: 80        setc
0497: a5 00 1c  sbc   a,$1c00
049a: 2f f5     bra   $0491
049c: 8f 02 a2  mov   $a2,#$02
049f: 8f 1c a3  mov   $a3,#$1c          ; song list address = $1c02
04a2: 1c        asl   a
04a3: 90 02     bcc   $04a7
04a5: ab a3     inc   $a3
04a7: fd        mov   y,a
04a8: f7 a2     mov   a,($a2)+y
04aa: c4 a1     mov   $a1,a
04ac: fc        inc   y
04ad: f7 a2     mov   a,($a2)+y         ; read song header address from song list
04af: c4 a0     mov   $a0,a
04b1: 04 a1     or    a,$a1
04b3: f0 d4     beq   $0489             ; return if song header address == $0000
04b5: 8d 00     mov   y,#$00
04b7: f7 a0     mov   a,($a0)+y         ; read the first byte (priority?)
04b9: d0 03     bne   $04be
04bb: 5f a9 05  jmp   $05a9

; when song header first byte != 0:
04be: c4 a4     mov   $a4,a
04c0: 8f 80 b3  mov   $b3,#$80
04c3: cd 57     mov   x,#$57
04c5: 8d 00     mov   y,#$00
04c7: 3a a0     incw  $a0
04c9: f7 a0     mov   a,($a0)+y
04cb: c4 a3     mov   $a3,a
04cd: 3a a0     incw  $a0
04cf: f7 a0     mov   a,($a0)+y
04d1: c4 a2     mov   $a2,a
04d3: f7 a2     mov   a,($a2)+y
04d5: 68 17     cmp   a,#$17
04d7: f0 3a     beq   $0513
04d9: e4 a4     mov   a,$a4
04db: 75 50 02  cmp   a,$0250+x
04de: 90 33     bcc   $0513
04e0: 09 b3 c3  or    ($c3),($b3)
04e3: e4 b3     mov   a,$b3
04e5: 48 ff     eor   a,#$ff
04e7: c4 a5     mov   $a5,a
04e9: 29 a5 c2  and   ($c2),($a5)
04ec: 29 a5 c8  and   ($c8),($a5)
04ef: 3f 19 05  call  $0519
04f2: 3f 43 04  call  $0443
04f5: e4 a4     mov   a,$a4
04f7: d5 50 02  mov   $0250+x,a
04fa: ba a2     movw  ya,$a2
04fc: db 08     mov   $08+x,y
04fe: d4 00     mov   $00+x,a
0500: e8 10     mov   a,#$10
0502: d5 00 01  mov   $0100+x,a
0505: e8 b8     mov   a,#$b8
0507: d5 48 02  mov   $0248+x,a
050a: e5 f5 00  mov   a,$00f5
050d: 60        clrc
050e: 88 80     adc   a,#$80
0510: d5 30 02  mov   $0230+x,a
0513: 1d        dec   x
0514: 4b b3     lsr   $b3
0516: d0 ad     bne   $04c5
0518: 6f        ret

0519: 7d        mov   a,x
051a: 60        clrc
051b: 88 08     adc   a,#$08
051d: fd        mov   y,a
051e: e8 00     mov   a,#$00
0520: d6 00 02  mov   $0200+y,a
0523: dd        mov   a,y
0524: 60        clrc
0525: 88 08     adc   a,#$08
0527: 68 b8     cmp   a,#$b8
0529: 90 f2     bcc   $051d
052b: 40        setp
052c: 3f 30 05  call  $0530
052f: 20        clrp
0530: 4d        push  x
0531: e8 00     mov   a,#$00
0533: c6        mov   (x),a
0534: 7d        mov   a,x
0535: 60        clrc
0536: 88 08     adc   a,#$08
0538: 5d        mov   x,a
0539: c8 a0     cmp   x,#$a0
053b: 90 f4     bcc   $0531
053d: ce        pop   x
053e: 6f        ret

053f: 28 0f     and   a,#$0f
0541: 1c        asl   a
0542: 5d        mov   x,a
0543: 1f 46 05  jmp   ($0546+x)

0546: 66        cmp   a,(x)
0547: 05 69 05  or    a,$0569
054a: 82 05     set4  $05
054c: 2e 06 32  cbne  $06,$0581
054f: 06        or    a,(x)
0550: 68 06     cmp   a,#$06
0552: 6c 06 c7  ror   $c706
0555: 06        or    a,(x)
0556: de 06 ef  cbne  $06+x,$0548
0559: 06        or    a,(x)
055a: a0        ei
055b: 05 a3 05  or    a,$05a3
055e: ea 05 0f  not1  $01e0,5
0561: 06        or    a,(x)
0562: a2 06     set5  $06
0564: a6        sbc   a,(x)
0565: 06        or    a,(x)
;
0566: 3f 82 05  call  $0582
0569: 8f 80 b3  mov   $b3,#$80
056c: cd 57     mov   x,#$57
056e: f3 c3 03  bbc7  $c3,$0574
0571: 3f 43 0a  call  $0a43
0574: 1d        dec   x
0575: 0b c3     asl   $c3
0577: 4b b3     lsr   $b3
0579: d0 f3     bne   $056e
057b: 8f 00 c0  mov   $c0,#$00
057e: 8f 00 c2  mov   $c2,#$00
0581: 6f        ret

0582: 3f 4b 06  call  $064b
0585: e8 00     mov   a,#$00
0587: c4 ca     mov   $ca,a
0589: cd 08     mov   x,#$08
058b: d5 00 02  mov   $0200+x,a
058e: 3d        inc   x
058f: c8 58     cmp   x,#$58
0591: d0 f8     bne   $058b
0593: 40        setp
0594: 3f 98 05  call  $0598
0597: 20        clrp
0598: cd 00     mov   x,#$00
059a: af        mov   (x)+,a
059b: c8 50     cmp   x,#$50
059d: d0 fb     bne   $059a
059f: 6f        ret

05a0: 3f ef 06  call  $06ef
05a3: 8f 0d a1  mov   $a1,#$0d
05a6: 8f af a0  mov   $a0,#$af          ; song address = $0daf (+1 for actual start address)
; fall through...
; or when song header first byte == 0:
05a9: 3f 82 05  call  $0582
05ac: 8d 00     mov   y,#$00
05ae: dd        mov   a,y
05af: da ce     movw  $ce,ya
05b1: c4 d1     mov   $d1,a
05b3: da d2     movw  $d2,ya
05b5: 9c        dec   a
05b6: c4 d0     mov   $d0,a
05b8: 3f 97 06  call  $0697             ; zero work registers
05bb: cd 07     mov   x,#$07            ; voice index (initialize voices in reverse-order)
05bd: 8d 00     mov   y,#$00
05bf: 3a a0     incw  $a0               ; skip first byte (priority)
05c1: f7 a0     mov   a,($a0)+y
05c3: c4 a3     mov   $a3,a             ; starting address (hi-byte)
05c5: 3a a0     incw  $a0
05c7: f7 a0     mov   a,($a0)+y
05c9: c4 a2     mov   $a2,a             ; starting address (lo-byte)
05cb: f7 a2     mov   a,($a2)+y
05cd: 68 17     cmp   a,#$17
05cf: f0 15     beq   $05e6             ; next if the first event byte == end of track ($17)
05d1: ba a2     movw  ya,$a2
05d3: db 08     mov   $08+x,y
05d5: d4 00     mov   $00+x,a           ; set reading ptr
05d7: e8 10     mov   a,#$10
05d9: d5 00 01  mov   $0100+x,a
05dc: e8 b8     mov   a,#$b8
05de: d5 48 02  mov   $0248+x,a         ; release rate
05e1: e8 80     mov   a,#$80
05e3: d5 30 02  mov   $0230+x,a
05e6: 1d        dec   x
05e7: 10 d4     bpl   $05bd             ; foreach voice
05e9: 6f        ret

05ea: e5 f5 00  mov   a,$00f5
05ed: 0d        push  psw
05ee: 10 03     bpl   $05f3
05f0: 48 ff     eor   a,#$ff
05f2: bc        inc   a
05f3: 2d        push  a
05f4: 8d 69     mov   y,#$69
05f6: cf        mul   ya
05f7: 8f 00 a3  mov   $a3,#$00
05fa: cb a2     mov   $a2,y
05fc: ae        pop   a
05fd: 8d 03     mov   y,#$03
05ff: cf        mul   ya
0600: 7a a2     addw  ya,$a2
0602: 8e        pop   psw
0603: 10 07     bpl   $060c
0605: da a2     movw  $a2,ya
0607: 8d 00     mov   y,#$00
0609: dd        mov   a,y
060a: 9a a2     subw  ya,$a2
060c: da ce     movw  $ce,ya
060e: 6f        ret

060f: e5 f5 00  mov   a,$00f5
0612: 0d        push  psw
0613: 10 03     bpl   $0618
0615: 48 ff     eor   a,#$ff
0617: bc        inc   a
0618: 5d        mov   x,a
0619: 9f        xcn   a
061a: 28 0f     and   a,#$0f
061c: fd        mov   y,a
061d: 7d        mov   a,x
061e: 9f        xcn   a
061f: 28 f0     and   a,#$f0
0621: 8e        pop   psw
0622: 10 07     bpl   $062b
0624: da a2     movw  $a2,ya
0626: 8d 00     mov   y,#$00
0628: dd        mov   a,y
0629: 9a a2     subw  ya,$a2
062b: da d2     movw  $d2,ya
062d: 6f        ret

062e: c2 b0     set6  $b0
0630: 2f 19     bra   $064b
0632: d2 b0     clr6  $b0
0634: 8f 00 c8  mov   $c8,#$00
0637: 8f 80 b3  mov   $b3,#$80
063a: cd 57     mov   x,#$57
063c: e4 c3     mov   a,$c3
063e: 24 b3     and   a,$b3
0640: d0 03     bne   $0645
0642: 3f 4e 0a  call  $0a4e
0645: 1d        dec   x
0646: 4b b3     lsr   $b3
0648: d0 f2     bne   $063c
064a: 6f        ret

064b: cd 07     mov   x,#$07
064d: 8f 80 b3  mov   $b3,#$80
0650: e4 c3     mov   a,$c3
0652: 24 b3     and   a,$b3
0654: d0 06     bne   $065c
0656: 3f 43 04  call  $0443
0659: 09 b3 c9  or    ($c9),($b3)
065c: 1d        dec   x
065d: 4b b3     lsr   $b3
065f: d0 ef     bne   $0650
0661: 8f 00 c8  mov   $c8,#$00
0664: 8f 00 cb  mov   $cb,#$00
0667: 6f        ret

0668: cd ff     mov   x,#$ff
066a: 2f 02     bra   $066e
066c: cd 01     mov   x,#$01
066e: 3e d4     cmp   x,$d4
0670: f0 1c     beq   $068e
0672: e5 f6 00  mov   a,$00f6
0675: 05 f7 00  or    a,$00f7
0678: f0 1d     beq   $0697
067a: e5 f6 00  mov   a,$00f6
067d: ec f7 00  mov   y,$00f7
0680: 0b d4     asl   $d4
0682: f0 0b     beq   $068f
0684: 3f 9d 06  call  $069d
0687: 8d ff     mov   y,#$ff
0689: dd        mov   a,y
068a: 9a d7     subw  ya,$d7
068c: da d7     movw  $d7,ya
068e: 6f        ret

068f: 8f 00 d7  mov   $d7,#$00
0692: 8f 00 d8  mov   $d8,#$00
0695: 2f 06     bra   $069d
0697: e8 00     mov   a,#$00
0699: fd        mov   y,a
069a: 5d        mov   x,a
069b: da d7     movw  $d7,ya
069d: da d5     movw  $d5,ya
069f: d8 d4     mov   $d4,x
06a1: 6f        ret

06a2: cd ff     mov   x,#$ff
06a4: 2f 02     bra   $06a8
06a6: cd 01     mov   x,#$01
06a8: e5 f6 00  mov   a,$00f6
06ab: 05 f7 00  or    a,$00f7
06ae: d0 07     bne   $06b7
06b0: 5d        mov   x,a
06b1: 9c        dec   a
06b2: fd        mov   y,a
06b3: da dd     movw  $dd,ya
06b5: 2f 05     bra   $06bc
06b7: e5 f5 00  mov   a,$00f5
06ba: c4 da     mov   $da,a
06bc: e5 f6 00  mov   a,$00f6
06bf: ec f7 00  mov   y,$00f7
06c2: da db     movw  $db,ya
06c4: d8 d9     mov   $d9,x
06c6: 6f        ret

06c7: b2 b0     clr5  $b0
06c9: f8 b5     mov   x,$b5
06cb: f5 91 0d  mov   a,$0d91+x
06ce: fd        mov   y,a
06cf: f5 92 0d  mov   a,$0d92+x
06d2: da b8     movw  $b8,ya
06d4: f5 94 0d  mov   a,$0d94+x
06d7: fd        mov   y,a
06d8: f5 95 0d  mov   a,$0d95+x
06db: da ba     movw  $ba,ya
06dd: 6f        ret

06de: a2 b0     set5  $b0
06e0: f8 b5     mov   x,$b5
06e2: f5 90 0d  mov   a,$0d90+x
06e5: fd        mov   y,a
06e6: da b8     movw  $b8,ya
06e8: f5 93 0d  mov   a,$0d93+x
06eb: fd        mov   y,a
06ec: da ba     movw  $ba,ya
06ee: 6f        ret

06ef: 3f 66 05  call  $0566
06f2: e8 aa     mov   a,#$aa
06f4: c5 f4 00  mov   $00f4,a
06f7: e8 bb     mov   a,#$bb
06f9: c5 f5 00  mov   $00f5,a
06fc: e5 f4 00  mov   a,$00f4
06ff: 68 cc     cmp   a,#$cc
0701: d0 f9     bne   $06fc
0703: 2f 20     bra   $0725
0705: ec f4 00  mov   y,$00f4
0708: d0 fb     bne   $0705
070a: 5e f4 00  cmp   y,$00f4
070d: d0 0f     bne   $071e
070f: e5 f5 00  mov   a,$00f5
0712: cc f4 00  mov   $00f4,y
0715: d7 a0     mov   ($a0)+y,a
0717: fc        inc   y
0718: d0 f0     bne   $070a
071a: ab a1     inc   $a1
071c: 2f ec     bra   $070a
071e: 10 ea     bpl   $070a
0720: 5e f4 00  cmp   y,$00f4
0723: 10 e5     bpl   $070a
0725: e5 f6 00  mov   a,$00f6
0728: ec f7 00  mov   y,$00f7
072b: da a0     movw  $a0,ya
072d: ec f4 00  mov   y,$00f4
0730: e5 f5 00  mov   a,$00f5
0733: f0 05     beq   $073a
0735: cc f4 00  mov   $00f4,y
0738: 2f cb     bra   $0705
073a: c5 f6 00  mov   $00f6,a
073d: bc        inc   a
073e: c4 b2     mov   $b2,a
0740: e5 fd 00  mov   a,$00fd
0743: 8f 00 b1  mov   $b1,#$00
0746: cc f4 00  mov   $00f4,y
0749: 6f        ret

; process voice stream
; x = voice #, $b3 = voice mask, $a8 = tempo
074a: fa b3 b4  mov   ($b4),($b3)
074d: 58 ff b4  eor   $b4,#$ff          ; inverted voice mask
0750: f5 10 02  mov   a,$0210+x
0753: 15 08 02  or    a,$0208+x
0756: f0 3b     beq   $0793             ; process next vcmd if delta time == 0
0758: 3f 5d 0b  call  $0b5d
075b: f4 28     mov   a,$28+x
075d: 14 20     or    a,$20+x
075f: f0 17     beq   $0778             ; skip if duration counter == 0
0761: fb 28     mov   y,$28+x
0763: f4 20     mov   a,$20+x
0765: 9a a8     subw  ya,$a8            ; if (duration counter - tempo)
0767: f0 02     beq   $076b             ;   <= 0: note off, update counter to 0
0769: b0 09     bcs   $0774             ;   else: just update the counter
076b: e3 c4 03  bbs7  $c4,$0771
076e: 3f 4a 04  call  $044a             ; switch to GAIN mode
0771: 8d 00     mov   y,#$00
0773: dd        mov   a,y               ; clip to 0 if necessary
0774: db 28     mov   $28+x,y
0776: d4 20     mov   $20+x,a           ; update duration counter
;
0778: f5 10 02  mov   a,$0210+x
077b: fd        mov   y,a
077c: f5 08 02  mov   a,$0208+x
077f: 9a a8     subw  ya,$a8
0781: 0d        push  psw
0782: d5 08 02  mov   $0208+x,a
0785: dd        mov   a,y
0786: d5 10 02  mov   $0210+x,a         ; delta time -= tempo
0789: 8e        pop   psw
078a: f0 07     beq   $0793             ; branch if
078c: 90 05     bcc   $0793             ;   delta time <= 0
078e: ad c1     cmp   y,#$c1
0790: b0 01     bcs   $0793             ;   or delta time >= 0xc100 (think it as negative value)
0792: 6f        ret

0793: 8d 07     mov   y,#$07
0795: e8 9c     mov   a,#$9c
0797: 6d        push  y
0798: 2d        push  a                 ; set return address $079c (note vcmd)
0799: 5f bb 08  jmp   $08bb
; vcmd branch 20-ff - note
079c: 2d        push  a
079d: 9f        xcn   a
079e: 5c        lsr   a
079f: 28 07     and   a,#$07
07a1: 9c        dec   a
07a2: fd        mov   y,a               ; y = vbyte(7 downto 5) - 1
07a3: f4 10     mov   a,$10+x
07a5: 28 30     and   a,#$30
07a7: d0 05     bne   $07ae
; when not set4/5 $10 (normal note)
07a9: f6 9d 08  mov   a,$089d+y
07ac: 2f 12     bra   $07c0
; (branch)
07ae: 28 10     and   a,#$10
07b0: d0 05     bne   $07b7
; when set5 $10 (triplet)
07b2: f6 96 08  mov   a,$0896+y
07b5: 2f 09     bra   $07c0
; when set4 $10 (dotted note, priority)
07b7: f4 10     mov   a,$10+x
07b9: 28 ef     and   a,#$ef
07bb: d4 10     mov   $10+x,a           ; clear dotted note
07bd: f6 a4 08  mov   a,$08a4+y
; set duration from table
07c0: 60        clrc
07c1: 95 10 02  adc   a,$0210+x
07c4: d5 10 02  mov   $0210+x,a         ; add to delta time (higher byte)
07c7: ae        pop   a
07c8: 28 1f     and   a,#$1f
07ca: d0 01     bne   $07cd             ; process lower-5bit if non zero
07cc: 6f        ret
; note vcmd 0bxxxyyyyy
;   xxx = used above for duration
; yyyyy = key
07cd: 2d        push  a                 ; lower-5bit of vcmd
07ce: f4 10     mov   a,$10+x
07d0: 28 0f     and   a,#$0f
07d2: fd        mov   y,a               ; lower 4bit of $10
07d3: ae        pop   a
07d4: 60        clrc
07d5: 96 ab 08  adc   a,$08ab+y         ; octave correction
07d8: e3 b0 03  bbs7  $b0,$07de
07db: 60        clrc
07dc: 84 d1     adc   a,$d1             ; global transpose
07de: 60        clrc
07df: 95 18 02  adc   a,$0218+x         ; per-voice transpose
07e2: c4 a1     mov   $a1,a
07e4: 8f 00 a0  mov   $a0,#$00          ; convert to 16bit (8bit integer + 8bit fraction)
07e7: 8d 00     mov   y,#$00
07e9: f5 20 02  mov   a,$0220+x
07ec: 10 01     bpl   $07ef
07ee: dc        dec   y
07ef: 7a a0     addw  ya,$a0            ; tuning
07f1: ad 61     cmp   y,#$61
07f3: 90 02     bcc   $07f7
07f5: 8d 60     mov   y,#$60            ; limit note number (max: 96)
; apply pitch envelope (LFO, portamento, etc.)
07f7: 40        setp
07f8: da a2     movw  $a2,ya
07fa: f4 00     mov   a,$00+x           ; LFO?
07fc: c4 a4     mov   $a4,a
07fe: 12 a4     clr0  $a4
0800: f4 28     mov   a,$28+x           ; portamento?
0802: f0 08     beq   $080c
0804: f4 40     mov   a,$40+x
0806: f0 04     beq   $080c
0808: 64 a3     cmp   a,$a3
080a: d0 04     bne   $0810
080c: e4 a2     mov   a,$a2
080e: 2f 0e     bra   $081e
0810: b0 04     bcs   $0816
0812: 22 a4     set1  $a4
0814: 2f 02     bra   $0818
0816: 32 a4     clr1  $a4
0818: ab a4     inc   $a4
081a: fb 40     mov   y,$40+x
081c: f4 48     mov   a,$48+x
081e: 2d        push  a
081f: e4 a4     mov   a,$a4
0821: d4 00     mov   $00+x,a
0823: e4 a3     mov   a,$a3
0825: d4 40     mov   $40+x,a
0827: e4 a2     mov   a,$a2
0829: d4 48     mov   $48+x,a
082b: ae        pop   a
082c: db 30     mov   $30+x,y           ; final note number $0130+x (integer)
082e: d4 38     mov   $38+x,a           ; final note number $0138+x (fraction)
0830: 20        clrp
;
0831: f4 10     mov   a,$10+x
0833: 30 2a     bmi   $085f
0835: f5 00 01  mov   a,$0100+x
0838: fd        mov   y,a
0839: 28 10     and   a,#$10
083b: f0 0b     beq   $0848
083d: dd        mov   a,y
083e: 28 3f     and   a,#$3f
0840: d5 00 01  mov   $0100+x,a
0843: e8 00     mov   a,#$00
0845: d5 20 01  mov   $0120+x,a
0848: f3 b0 08  bbc7  $b0,$0853
084b: 09 b3 c0  or    ($c0),($b3)
084e: 09 b3 c1  or    ($c1),($b3)
0851: 2f 09     bra   $085c
0853: e3 c4 12  bbs7  $c4,$0868
0856: 09 b3 c8  or    ($c8),($b3)
0859: 09 b3 c9  or    ($c9),($b3)
085c: 3f 43 04  call  $0443
085f: e3 c4 06  bbs7  $c4,$0868
0862: 3f 8c 0c  call  $0c8c
0865: 3f af 0b  call  $0baf
0868: f4 10     mov   a,$10+x
086a: fd        mov   y,a
086b: 28 7f     and   a,#$7f
086d: c4 a0     mov   $a0,a
086f: dd        mov   a,y
0870: 28 40     and   a,#$40
0872: 1c        asl   a
0873: 04 a0     or    a,$a0
0875: d4 10     mov   $10+x,a
0877: 10 05     bpl   $087e
0879: 8d 00     mov   y,#$00
087b: dd        mov   a,y
087c: 2f 13     bra   $0891
087e: fb 18     mov   y,$18+x           ; duration rate
0880: f5 08 02  mov   a,$0208+x         ; delta time (lower byte)
0883: cf        mul   ya
0884: cb a0     mov   $a0,y
0886: 8f 00 a1  mov   $a1,#$00
0889: fb 18     mov   y,$18+x
088b: f5 10 02  mov   a,$0210+x         ; delta time (higher byte)
088e: cf        mul   ya
088f: 7a a0     addw  ya,$a0            ; delta time (16bit) *= duration rate, then >> 8
0891: db 28     mov   $28+x,y
0893: d4 20     mov   $20+x,a           ; update duration counter
0895: 6f        ret

; duration table
0896: db $02,$04,$08,$10,$20,$40,$80 ; set5 $10 (triplet)
089d: db $03,$06,$0c,$18,$30,$60,$c0 ; others   (normal note)
08a4: db $00,$09,$12,$24,$48,$90,$00 ; set4 $10 (dotted note)

; octave correction table
08ab: db $00,$0c,$18,$24,$30,$3c,$48,$54
08b3: db $18,$24,$30,$3c,$48,$54,$60,$6c

08bb: 3f d8 08  call  $08d8
08be: 68 20     cmp   a,#$20
08c0: b0 26     bcs   $08e8             ; return if vcmd >= $20
08c2: c4 a7     mov   $a7,a             ; store vbyte into $a7
08c4: 8d 08     mov   y,#$08
08c6: 6d        push  y
08c7: 8d bb     mov   y,#$bb
08c9: 6d        push  y                 ; set return address $08bb
08ca: 1c        asl   a
08cb: fd        mov   y,a
08cc: f6 ea 08  mov   a,$08ea+y
08cf: 2d        push  a
08d0: f6 e9 08  mov   a,$08e9+y
08d3: 2d        push  a
08d4: ad 08     cmp   y,#$08
08d6: 90 10     bcc   $08e8             ; don't read op1 if vbyte < $04
;
08d8: fb 08     mov   y,$08+x
08da: f4 00     mov   a,$00+x
08dc: da a0     movw  $a0,ya            ; $08/00 = reading ptr
08de: 8d 00     mov   y,#$00
08e0: f7 a0     mov   a,($a0)+y
08e2: bb 00     inc   $00+x
08e4: d0 02     bne   $08e8
08e6: bb 08     inc   $08+x
; vcmd 1e,1f - nop
08e8: 6f        ret

08e9: dw $0929  ; 00 - toggle triplet
08eb: dw $092d  ; 01 - toggle tie/slur
08ed: dw $0931  ; 02 - dotted note switch on
08ef: dw $0937  ; 03 - 2-oct up toggle
08f1: dw $0a18  ; 04 - set triplet/dotted/oct-up directly
08f3: dw $093e  ; 05 - tempo
08f5: dw $0951  ; 06 - duration rate
08f7: dw $0954  ; 07 - volume
08f9: dw $0969  ; 08 - instrument
08fb: dw $09a3  ; 09 - key offset
08fd: dw $09ae  ; 0a - global transpose
08ff: dw $09b4  ; 0b - per-voice transpose
0901: dw $09b8  ; 0c - tuning
0903: dw $09bc  ; 0d - portamento time
0905: dw $09c0  ; 0e - loop for #1
0907: dw $09c4  ; 0f - loop for #2
0909: dw $09c8  ; 10 - loop for #3
090b: dw $09cc  ; 11 - loop for #4
090d: dw $09c0  ; 12 - loop break #1
090f: dw $09c4  ; 13 - loop break #2
0911: dw $09c8  ; 14 - loop break #3
0913: dw $09cc  ; 15 - loop break #4
0915: dw $0a02  ; 16 - goto
0917: dw $0a23  ; 17 - end of track
0919: dw $0a5e  ; 18 - pan
091b: dw $0a65  ; 19 - master volume
091d: dw $0a6f  ; 1a - LFO param
091f: dw $0a95  ; 1b - echo params
0921: dw $0b3d  ; 1c - echo on/off
0923: dw $0b57  ; 1d - release rate (GAIN)
0925: dw $08e8  ; 1e - nop
0927: dw $08e8  ; 1f - nop

; vcmd 00 - toggle triplet
0929: e8 20     mov   a,#$20
092b: 2f 0c     bra   $0939
; vcmd 01 - toggle tie/slur
092d: e8 40     mov   a,#$40
092f: 2f 08     bra   $0939
; vcmd 02 - dotted note switch on
0931: e8 10     mov   a,#$10
0933: 14 10     or    a,$10+x
0935: 2f 04     bra   $093b
; vcmd 03 - 2-oct up toggle
0937: e8 08     mov   a,#$08
0939: 54 10     eor   a,$10+x
093b: d4 10     mov   $10+x,a
093d: 6f        ret

; vcmd 05 - tempo
093e: 2d        push  a
093f: 3f d8 08  call  $08d8
0942: ee        pop   y
0943: f3 b0 08  bbc7  $b0,$094e
; SFX
0946: d5 58 02  mov   $0258+x,a
0949: dd        mov   a,y
094a: d5 60 02  mov   $0260+x,a
094d: 6f        ret
; BGM
094e: da cc     movw  $cc,ya
0950: 6f        ret

; vcmd 06 - duration rate
0951: d4 18     mov   $18+x,a
0953: 6f        ret

; vcmd 07 - volume
0954: fd        mov   y,a
0955: 3f 30 0c  call  $0c30             ; read volume table
0958: e3 b0 0a  bbs7  $b0,$0965
095b: 2d        push  a
095c: ec 01 1c  mov   y,$1c01           ; maximum volume level?
095f: 3f 30 0c  call  $0c30             ; read volume table
0962: ee        pop   y
0963: cf        mul   ya
0964: dd        mov   a,y
0965: d5 28 02  mov   $0228+x,a
0968: 6f        ret

; vcmd 08 - instrument
0969: e3 b0 08  bbs7  $b0,$0974
096c: bc        inc   a
096d: d5 50 02  mov   $0250+x,a
0970: e3 c4 2f  bbs7  $c4,$09a2
0973: 9c        dec   a
0974: 8d 06     mov   y,#$06
0976: cf        mul   ya
0977: da a0     movw  $a0,ya
0979: 60        clrc
097a: 98 ac a0  adc   $a0,#$ac
097d: 98 47 a1  adc   $a1,#$47          ; $a0 = instrument entry address (0x47ac + (patch * 6))
0980: ba a0     movw  ya,$a0
0982: d5 38 02  mov   $0238+x,a
0985: dd        mov   a,y
0986: d5 40 02  mov   $0240+x,a         ; save instrument entry address
0989: 4d        push  x
098a: 7d        mov   a,x
098b: 9f        xcn   a
098c: 28 70     and   a,#$70
098e: 08 04     or    a,#$04
0990: 5d        mov   x,a
0991: 8d 00     mov   y,#$00
0993: f7 a0     mov   a,($a0)+y         ; [0x00..0x03]
0995: c9 f2 00  mov   $00f2,x
0998: c5 f3 00  mov   $00f3,a           ; SRCN,ADSR(1),ADSR(2),GAIN
099b: 3d        inc   x
099c: fc        inc   y
099d: ad 04     cmp   y,#$04
099f: d0 f2     bne   $0993
09a1: ce        pop   x
09a2: 6f        ret

; vcmd 09 - key offset
09a3: c4 a0     mov   $a0,a
09a5: f4 10     mov   a,$10+x
09a7: 28 f8     and   a,#$f8
09a9: 04 a0     or    a,$a0
09ab: d4 10     mov   $10+x,a
09ad: 6f        ret

; vcmd 0a - global transpose
09ae: e3 b0 02  bbs7  $b0,$09b3
09b1: c4 d1     mov   $d1,a
09b3: 6f        ret

; vcmd 0b - per-voice transpose
09b4: d5 18 02  mov   $0218+x,a
09b7: 6f        ret

; vcmd 0c - tuning
09b8: d5 20 02  mov   $0220+x,a
09bb: 6f        ret

; vcmd 0d - portamento time
09bc: d5 28 01  mov   $0128+x,a
09bf: 6f        ret

09c0: 8d 30     mov   y,#$30            ; $30+x - vcmd 0e,12
09c2: 2f 0a     bra   $09ce
09c4: 8d 38     mov   y,#$38            ; $38+x - vcmd 0f,13
09c6: 2f 06     bra   $09ce
09c8: 8d 40     mov   y,#$40            ; $40+x - vcmd 10,14
09ca: 2f 02     bra   $09ce
09cc: 8d 48     mov   y,#$48            ; $48+x - vcmd 11,15
09ce: c4 a2     mov   $a2,a
09d0: cb a0     mov   $a0,y
09d2: 7d        mov   a,x
09d3: 60        clrc
09d4: 84 a0     adc   a,$a0
09d6: fd        mov   y,a
09d7: 8f 00 a1  mov   $a1,#$00
09da: 8f 00 a0  mov   $a0,#$00
09dd: 78 12 a7  cmp   $a7,#$12
09e0: b0 11     bcs   $09f3
; vcmd 0e-11 - loop for
09e2: f7 a0     mov   a,($a0)+y
09e4: f0 07     beq   $09ed
09e6: 9c        dec   a
09e7: d7 a0     mov   ($a0)+y,a
09e9: f0 21     beq   $0a0c
09eb: 2f 12     bra   $09ff
09ed: e4 a2     mov   a,$a2
09ef: d7 a0     mov   ($a0)+y,a
09f1: 2f 0c     bra   $09ff
; vcmd 12-15 - loop break
09f3: f7 a0     mov   a,($a0)+y
09f5: 9c        dec   a
09f6: d0 14     bne   $0a0c
09f8: d7 a0     mov   ($a0)+y,a
09fa: e4 a2     mov   a,$a2
09fc: 3f 18 0a  call  $0a18
09ff: 3f d8 08  call  $08d8
; vcmd 16 - goto
0a02: 2d        push  a
0a03: 3f d8 08  call  $08d8
0a06: d4 00     mov   $00+x,a
0a08: ae        pop   a
0a09: d4 08     mov   $08+x,a
0a0b: 6f        ret
; strip 2 args
0a0c: e8 02     mov   a,#$02
0a0e: 60        clrc
0a0f: 94 00     adc   a,$00+x
0a11: d4 00     mov   $00+x,a
0a13: 90 02     bcc   $0a17
0a15: bb 08     inc   $08+x
0a17: 6f        ret

; vcmd 04 - set triplet/dotted/oct-up directly
0a18: c4 a0     mov   $a0,a
0a1a: f4 10     mov   a,$10+x
0a1c: 28 97     and   a,#$97
0a1e: 04 a0     or    a,$a0
0a20: d4 10     mov   $10+x,a
0a22: 6f        ret

; vcmd 17 - end of track
0a23: ae        pop   a
0a24: ae        pop   a
0a25: ae        pop   a
0a26: ae        pop   a                 ; strip return addresses
0a27: e3 b0 13  bbs7  $b0,$0a3d
0a2a: e8 00     mov   a,#$00
0a2c: d4 08     mov   $08+x,a
0a2e: d4 00     mov   $00+x,a
0a30: d5 50 02  mov   $0250+x,a
0a33: e3 c4 06  bbs7  $c4,$0a3c
0a36: 3f 43 04  call  $0443
0a39: 09 b3 c9  or    ($c9),($b3)
0a3c: 6f        ret

0a3d: 29 b4 c3  and   ($c3),($b4)
0a40: 29 b4 c2  and   ($c2),($b4)
0a43: e8 00     mov   a,#$00
0a45: d5 50 02  mov   $0250+x,a
0a48: 3f 43 04  call  $0443
0a4b: 09 b3 c1  or    ($c1),($b3)
0a4e: 4d        push  x
0a4f: 7d        mov   a,x
0a50: 80        setc
0a51: a8 50     sbc   a,#$50
0a53: 5d        mov   x,a
0a54: f5 50 02  mov   a,$0250+x
0a57: f0 03     beq   $0a5c
0a59: 09 b3 cb  or    ($cb),($b3)
0a5c: ce        pop   x
0a5d: 6f        ret

; vcmd 18 - pan
0a5e: 60        clrc
0a5f: 88 80     adc   a,#$80
0a61: d5 30 02  mov   $0230+x,a
0a64: 6f        ret

; vcmd 19 - master volume
0a65: e3 b0 06  bbs7  $b0,$0a6e
0a68: fd        mov   y,a
0a69: 3f 30 0c  call  $0c30             ; read volume table
0a6c: c4 d0     mov   $d0,a
0a6e: 6f        ret

; vcmd 1a - LFO param
0a6f: 2d        push  a
0a70: 3f d8 08  call  $08d8
0a73: ee        pop   y
0a74: ad 03     cmp   y,#$03
0a76: d0 0e     bne   $0a86
; param type 03 - reset LFO per note, or not
0a78: 9f        xcn   a
0a79: c4 a0     mov   $a0,a
0a7b: f5 00 01  mov   a,$0100+x
0a7e: 28 ef     and   a,#$ef
0a80: 04 a0     or    a,$a0
0a82: d5 00 01  mov   $0100+x,a
0a85: 6f        ret
; param type 00-02 (vibrato depth, tremolo depth, LFO speed)
0a86: 2d        push  a
0a87: e8 08     mov   a,#$08
0a89: cf        mul   ya
0a8a: d8 a0     mov   $a0,x
0a8c: 60        clrc
0a8d: 84 a0     adc   a,$a0
0a8f: fd        mov   y,a
0a90: ae        pop   a
0a91: d6 08 01  mov   $0108+y,a
0a94: 6f        ret

; vcmd 1b - echo params
0a95: 3f d8 08  call  $08d8             ; arg2 = preset # (arg1 ignored?)
0a98: 8d 0a     mov   y,#$0a
0a9a: cf        mul   ya
0a9b: 64 b5     cmp   a,$b5
0a9d: f0 4d     beq   $0aec             ; ret if same preset
0a9f: c4 b5     mov   $b5,a
0aa1: 4d        push  x
0aa2: 5d        mov   x,a
0aa3: a3 b0 05  bbs5  $b0,$0aab
0aa6: 3f cb 06  call  $06cb
0aa9: 2f 03     bra   $0aae
0aab: 3f e2 06  call  $06e2
0aae: 3f ed 0a  call  $0aed
0ab1: 8d 6d     mov   y,#$6d            ; echo start address
0ab3: f5 96 0d  mov   a,$0d96+x
0ab6: 3f 64 0d  call  $0d64             ; ESA
0ab9: e8 7d     mov   a,#$7d            ; echo delay
0abb: c5 f2 00  mov   $00f2,a
0abe: e5 f3 00  mov   a,$00f3           ; EDL
0ac1: 28 0f     and   a,#$0f
0ac3: bc        inc   a
0ac4: 48 ff     eor   a,#$ff
0ac6: f3 b7 09  bbc7  $b7,$0ad2
0ac9: 60        clrc
0aca: 84 b7     adc   a,$b7
0acc: 68 e0     cmp   a,#$e0
0ace: b0 02     bcs   $0ad2
0ad0: e8 e0     mov   a,#$e0
0ad2: c4 b7     mov   $b7,a
0ad4: f5 97 0d  mov   a,$0d97+x
0ad7: c5 f3 00  mov   $00f3,a
0ada: 1c        asl   a
0adb: c4 b6     mov   $b6,a
0add: 8d 0d     mov   y,#$0d
0adf: f5 98 0d  mov   a,$0d98+x
0ae2: 3f 64 0d  call  $0d64             ; EFB
0ae5: f5 99 0d  mov   a,$0d99+x
0ae8: 3f 06 0b  call  $0b06             ; FIR filter
0aeb: ce        pop   x
0aec: 6f        ret

; zero echo vol, echo off for all voices, disable echo
0aed: 8d 03     mov   y,#$03
0aef: f6 02 0b  mov   a,$0b02+y
0af2: c5 f2 00  mov   $00f2,a
0af5: e8 00     mov   a,#$00
0af7: c5 f3 00  mov   $00f3,a
0afa: fe f3     dbnz  y,$0aef
0afc: 8d 6c     mov   y,#$6c
0afe: e8 20     mov   a,#$20
0b00: 5f 64 0d  jmp   $0d64             ; FLG

; EVOL(L),EVOL(R),EON
0b03: db $2c,$3c,$4d

; set echo filter A
0b06: 4d        push  x
0b07: 8d 08     mov   y,#$08
0b09: cf        mul   ya
0b0a: 5d        mov   x,a
0b0b: 8d 0f     mov   y,#$0f
0b0d: f5 1d 0b  mov   a,$0b1d+x
0b10: 3f 64 0d  call  $0d64             ; FIR
0b13: 3d        inc   x
0b14: dd        mov   a,y
0b15: 60        clrc
0b16: 88 10     adc   a,#$10
0b18: fd        mov   y,a
0b19: 10 f2     bpl   $0b0d
0b1b: ce        pop   x
0b1c: 6f        ret

; echo FIR presets
0b1d: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
0b25: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
0b2d: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
0b35: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; vcmd 1c - echo on/off
0b3d: 28 01     and   a,#$01
0b3f: 5c        lsr   a
0b40: 90 02     bcc   $0b44
0b42: e4 b3     mov   a,$b3
0b44: e3 b0 08  bbs7  $b0,$0b4f
0b47: 29 b4 ca  and   ($ca),($b4)
0b4a: 04 ca     or    a,$ca
0b4c: c4 ca     mov   $ca,a
0b4e: 6f        ret
0b4f: 29 b4 c2  and   ($c2),($b4)
0b52: 04 c2     or    a,$c2
0b54: c4 c2     mov   $c2,a
0b56: 6f        ret

; vcmd 1d - release rate (GAIN)
0b57: 08 a0     or    a,#$a0            ; GAIN exp
0b59: d5 48 02  mov   $0248+x,a
0b5c: 6f        ret

0b5d: 40        setp
0b5e: f4 18     mov   a,$18+x
0b60: 60        clrc
0b61: 94 20     adc   a,$20+x
0b63: d4 20     mov   $20+x,a
0b65: 90 07     bcc   $0b6e
0b67: f4 00     mov   a,$00+x
0b69: 60        clrc
0b6a: 88 40     adc   a,#$40
0b6c: d4 00     mov   $00+x,a
0b6e: f4 00     mov   a,$00+x
0b70: c4 a4     mov   $a4,a
0b72: 13 a4 32  bbc0  $a4,$0ba7
0b75: 8f 00 a1  mov   $a1,#$00
0b78: f4 28     mov   a,$28+x
0b7a: 1c        asl   a
0b7b: c4 a0     mov   $a0,a
0b7d: f4 40     mov   a,$40+x
0b7f: c4 a3     mov   $a3,a
0b81: f4 48     mov   a,$48+x
0b83: c4 a2     mov   $a2,a
0b85: fb 30     mov   y,$30+x
0b87: f4 38     mov   a,$38+x
0b89: 23 a4 0a  bbs1  $a4,$0b96
0b8c: 9a a0     subw  ya,$a0
0b8e: 90 0c     bcc   $0b9c
0b90: 5a a2     cmpw  ya,$a2
0b92: 90 08     bcc   $0b9c
0b94: 2f 0d     bra   $0ba3
0b96: 7a a0     addw  ya,$a0
0b98: 5a a2     cmpw  ya,$a2
0b9a: 90 07     bcc   $0ba3
0b9c: e4 a4     mov   a,$a4
0b9e: 9c        dec   a
0b9f: d4 00     mov   $00+x,a
0ba1: ba a2     movw  ya,$a2
0ba3: db 30     mov   $30+x,y
0ba5: d4 38     mov   $38+x,a
0ba7: 20        clrp
0ba8: f3 c4 01  bbc7  $c4,$0bac
0bab: 6f        ret

0bac: 3f 78 0c  call  $0c78
0baf: 40        setp
0bb0: fb 10     mov   y,$10+x
0bb2: f4 00     mov   a,$00+x
0bb4: 1c        asl   a
0bb5: 1c        asl   a
0bb6: f4 20     mov   a,$20+x
0bb8: b0 02     bcs   $0bbc
0bba: 48 ff     eor   a,#$ff
0bbc: cf        mul   ya
0bbd: da a0     movw  $a0,ya
0bbf: 8d 7e     mov   y,#$7e
0bc1: e8 81     mov   a,#$81
0bc3: 9a a0     subw  ya,$a0
0bc5: 3f 32 0c  call  $0c32
0bc8: fd        mov   y,a
0bc9: 20        clrp
0bca: e3 b0 1e  bbs7  $b0,$0beb
0bcd: e4 d0     mov   a,$d0             ; master volume
0bcf: cf        mul   ya
0bd0: 13 d4 10  bbc0  $d4,$0be3
0bd3: 6d        push  y
0bd4: ba d7     movw  ya,$d7
0bd6: e3 d4 05  bbs7  $d4,$0bde
0bd9: 8d ff     mov   y,#$ff
0bdb: dd        mov   a,y
0bdc: 9a d7     subw  ya,$d7
0bde: 3f 2a 0c  call  $0c2a
0be1: ee        pop   y
0be2: cf        mul   ya
0be3: 6d        push  y
0be4: ba dd     movw  ya,$dd
0be6: 3f 2a 0c  call  $0c2a
0be9: ee        pop   y
0bea: cf        mul   ya
0beb: f5 28 02  mov   a,$0228+x         ; channel volume
0bee: cf        mul   ya
0bef: cb a2     mov   $a2,y
0bf1: f5 30 02  mov   a,$0230+x         ; pan (center = $80)
0bf4: b3 b0 02  bbc5  $b0,$0bf9
0bf7: e8 80     mov   a,#$80
0bf9: 8d 14     mov   y,#$14
0bfb: cf        mul   ya
0bfc: da a0     movw  $a0,ya            ; volume balance ($a0 fractional, $a1 integer)
0bfe: 8f 01 a3  mov   $a3,#$01          ; target = right channel
0c01: eb a1     mov   y,$a1
0c03: f6 63 0c  mov   a,$0c63+y
0c06: 80        setc
0c07: b6 62 0c  sbc   a,$0c62+y
0c0a: eb a0     mov   y,$a0
0c0c: cf        mul   ya                ; linear interpolation
0c0d: dd        mov   a,y
0c0e: eb a1     mov   y,$a1
0c10: 60        clrc
0c11: 96 62 0c  adc   a,$0c62+y         ; final volume balance
0c14: eb a2     mov   y,$a2
0c16: cf        mul   ya                ; apply linear pan
0c17: dd        mov   a,y
0c18: eb a3     mov   y,$a3
0c1a: 3f 59 0d  call  $0d59             ; VOL(L,R)
0c1d: 8d 14     mov   y,#$14
0c1f: e8 00     mov   a,#$00
0c21: 9a a0     subw  ya,$a0
0c23: da a0     movw  $a0,ya            ; inverse volume balance, for another speaker
0c25: 8b a3     dec   $a3
0c27: 10 d8     bpl   $0c01
0c29: 6f        ret

0c2a: cb a4     mov   $a4,y
0c2c: 8d 04     mov   y,#$04
0c2e: 2f 06     bra   $0c36

; read volume table index Y to A
0c30: e8 ff     mov   a,#$ff            ; init fractional part
0c32: cb a4     mov   $a4,y
0c34: 8d 03     mov   y,#$03
0c36: 4b a4     lsr   $a4
0c38: 7c        ror   a
0c39: fe fb     dbnz  y,$0c36           ; y /= 16.0
0c3b: c4 a5     mov   $a5,a
0c3d: eb a4     mov   y,$a4             ; integer
0c3f: f6 52 0c  mov   a,$0c52+y
0c42: 80        setc
0c43: b6 51 0c  sbc   a,$0c51+y
0c46: eb a5     mov   y,$a5             ; fractional
0c48: cf        mul   ya
0c49: dd        mov   a,y
0c4a: eb a4     mov   y,$a4
0c4c: 60        clrc
0c4d: 96 51 0c  adc   a,$0c51+y         ; linear interpolation
0c50: 6f        ret

; volume table (combination of two lines)
0c51: db $00,$0c,$19,$26,$33,$40,$4c,$59
0c59: db $66,$73,$80,$8c,$99,$b3,$cc,$e6
0c61: db $ff

; pan table (compatible with Nintendo engine)
0c62: db $00,$01,$03,$07,$0d,$15,$1e,$29
0c6a: db $34,$42,$51,$5e,$67,$6e,$73,$77
0c72: db $7a,$7c,$7d,$7e,$7f,$7f

0c78: f5 00 01  mov   a,$0100+x
0c7b: 28 01     and   a,#$01
0c7d: 15 08 01  or    a,$0108+x
0c80: d0 0a     bne   $0c8c
0c82: e3 b0 06  bbs7  $b0,$0c8b
0c85: e4 d2     mov   a,$d2
0c87: 04 d3     or    a,$d3
0c89: d0 01     bne   $0c8c
0c8b: 6f        ret

0c8c: 40        setp
0c8d: f4 08     mov   a,$08+x
0c8f: d0 06     bne   $0c97
0c91: fb 30     mov   y,$30+x           ; final note number (integer)
0c93: f4 38     mov   a,$38+x           ; final note number (fraction)
0c95: 2f 2f     bra   $0cc6
0c97: 1c        asl   a
0c98: 8d 0c     mov   y,#$0c
0c9a: cf        mul   ya
0c9b: da a0     movw  $a0,ya
0c9d: f4 00     mov   a,$00+x
0c9f: 0d        push  psw
0ca0: 1c        asl   a
0ca1: 1c        asl   a
0ca2: f4 20     mov   a,$20+x
0ca4: 90 02     bcc   $0ca8
0ca6: 48 ff     eor   a,#$ff
0ca8: 2d        push  a
0ca9: eb a0     mov   y,$a0
0cab: cf        mul   ya
0cac: cb a0     mov   $a0,y
0cae: ae        pop   a
0caf: eb a1     mov   y,$a1
0cb1: cf        mul   ya
0cb2: 8f 00 a1  mov   $a1,#$00
0cb5: 7a a0     addw  ya,$a0
0cb7: da a0     movw  $a0,ya
0cb9: fb 30     mov   y,$30+x
0cbb: f4 38     mov   a,$38+x
0cbd: 8e        pop   psw
0cbe: 30 04     bmi   $0cc4
0cc0: 7a a0     addw  ya,$a0
0cc2: 2f 02     bra   $0cc6
0cc4: 9a a0     subw  ya,$a0
;
0cc6: 20        clrp
0cc7: e3 b0 02  bbs7  $b0,$0ccc
0cca: 7a d2     addw  ya,$d2
0ccc: dc        dec   y
0ccd: da a0     movw  $a0,ya
0ccf: dd        mov   a,y
0cd0: 8d 00     mov   y,#$00
0cd2: 80        setc
0cd3: a8 34     sbc   a,#$34
0cd5: b0 09     bcs   $0ce0
0cd7: e4 a1     mov   a,$a1
0cd9: 80        setc
0cda: a8 13     sbc   a,#$13
0cdc: b0 06     bcs   $0ce4
0cde: dc        dec   y
0cdf: 1c        asl   a
0ce0: 7a a0     addw  ya,$a0
0ce2: da a0     movw  $a0,ya
0ce4: 4d        push  x
0ce5: e4 a1     mov   a,$a1
0ce7: 1c        asl   a
0ce8: 8d 00     mov   y,#$00
0cea: cd 18     mov   x,#$18
0cec: 9e        div   ya,x
0ced: 5d        mov   x,a
0cee: f6 6c 0d  mov   a,$0d6c+y
0cf1: c4 a3     mov   $a3,a
0cf3: f6 6b 0d  mov   a,$0d6b+y
0cf6: c4 a2     mov   $a2,a             ; $a2 = base pitch for this note number (integer)
0cf8: f6 6e 0d  mov   a,$0d6e+y
0cfb: 2d        push  a
0cfc: f6 6d 0d  mov   a,$0d6d+y
0cff: ee        pop   y
0d00: 9a a2     subw  ya,$a2
0d02: eb a0     mov   y,$a0
0d04: cf        mul   ya
0d05: dd        mov   a,y
0d06: 8d 00     mov   y,#$00
0d08: 7a a2     addw  ya,$a2            ; add fractional part
0d0a: cb a1     mov   $a1,y
0d0c: 1c        asl   a
0d0d: 2b a1     rol   $a1               ; one octave up
0d0f: c8 08     cmp   x,#$08
0d11: f0 06     beq   $0d19
0d13: 4b a1     lsr   $a1
0d15: 7c        ror   a
0d16: 3d        inc   x
0d17: 2f f6     bra   $0d0f
0d19: c4 a0     mov   $a0,a
0d1b: ce        pop   x
0d1c: f5 38 02  mov   a,$0238+x
0d1f: c4 a4     mov   $a4,a
0d21: f5 40 02  mov   a,$0240+x
0d24: c4 a5     mov   $a5,a             ; $a4 = instrument entry address
0d26: 8d 05     mov   y,#$05
0d28: f7 a4     mov   a,($a4)+y         ; [0x05] fraction part of per-instrument tuning
0d2a: eb a1     mov   y,$a1
0d2c: cf        mul   ya
0d2d: da a2     movw  $a2,ya
0d2f: 8d 05     mov   y,#$05
0d31: f7 a4     mov   a,($a4)+y         ; [0x05] fraction part of per-instrument tuning
0d33: eb a0     mov   y,$a0
0d35: cf        mul   ya
0d36: 6d        push  y
0d37: 8d 04     mov   y,#$04
0d39: f7 a4     mov   a,($a4)+y         ; [0x04] integer part of per-instrument tuning
0d3b: eb a0     mov   y,$a0
0d3d: cf        mul   ya
0d3e: 7a a2     addw  ya,$a2
0d40: da a2     movw  $a2,ya
0d42: 8d 04     mov   y,#$04
0d44: f7 a4     mov   a,($a4)+y         ; [0x04] integer part of per-instrument tuning
0d46: eb a1     mov   y,$a1
0d48: cf        mul   ya
0d49: fd        mov   y,a
0d4a: ae        pop   a
0d4b: 7a a2     addw  ya,$a2
0d4d: 28 f0     and   a,#$f0
0d4f: 6d        push  y
0d50: 8d 02     mov   y,#$02
0d52: 3f 59 0d  call  $0d59             ; P(L)
0d55: ae        pop   a
0d56: fc        inc   y
0d57: 2f 0b     bra   $0d64             ; P(H)
; write A to DSP reg Y of channel X
0d59: 2d        push  a
0d5a: cb a6     mov   $a6,y
0d5c: 7d        mov   a,x
0d5d: 9f        xcn   a
0d5e: 28 70     and   a,#$70
0d60: 04 a6     or    a,$a6
0d62: fd        mov   y,a
0d63: ae        pop   a
; write A to DSP reg Y
0d64: cc f2 00  mov   $00f2,y
0d67: c5 f3 00  mov   $00f3,a
0d6a: 6f        ret

; pitch table
0d6b: dw $085f  ; c
0d6d: dw $08de  ; c+
0d6f: dw $0965  ; d
0d71: dw $09f4  ; d+
0d73: dw $0a8c  ; e
0d75: dw $0b2c  ; f
0d77: dw $0bd6  ; f+
0d79: dw $0c8b  ; g
0d7b: dw $0d4a  ; g+
0d7d: dw $0e14  ; a
0d7f: dw $0eea  ; a+
0d81: dw $0fcd  ; b
0d83: dw $10be  ; c

; echo presets:
; MVOL(L/R) when echo disabled,MVOL(L),MVOL(R)
; EVOL(L/R) when echo disabled,EVOL(L),EVOL(R)
; ESA,EDL,EFB,FIR#
0d90: db $5c,$5c,$5c,$00,$00,$00,$e8,$03,$28,$03
0d9a: db $5c,$5c,$5c,$b8,$b8,$48,$e8,$03,$44,$03
