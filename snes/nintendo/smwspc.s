; Super Mario World SPC - loveemu labo
; Disassembler: spcdas v0.01
; Heavily based on C.Bongo's assembly, thanks.

0500: 20        clrp
0501: cd cf     mov   x,#$cf
0503: bd        mov   sp,x              ; set SP to (01)cf
0504: e8 00     mov   a,#$00
0506: c5 86 03  mov   $0386,a
0509: c5 87 03  mov   $0387,a
050c: c5 88 03  mov   $0388,a
050f: c5 89 03  mov   $0389,a           ; zero 0386-9
0512: 5d        mov   x,a
0513: af        mov   (x)+,a
0514: c8 e8     cmp   x,#$e8
0516: d0 fb     bne   $0513             ; zero 00-e7
0518: e8 00     mov   a,#$00
051a: 5d        mov   x,a
051b: d5 00 02  mov   $0200+x,a
051e: 3d        inc   x
051f: d0 fa     bne   $051b             ; zero 0200-02ff
0521: d5 00 03  mov   $0300+x,a
0524: 3d        inc   x
0525: d0 fa     bne   $0521             ; zero 0300-03ff
0527: cd 0b     mov   x,#$0b
0529: f5 a1 12  mov   a,$12a1+x
052c: fd        mov   y,a
052d: f5 95 12  mov   a,$1295+x
0530: 3f 97 06  call  $0697             ; write A to DSP reg Y
0533: 1d        dec   x
0534: 10 f3     bpl   $0529             ; set initial DSP reg values
0536: e8 f0     mov   a,#$f0
0538: c5 f1 00  mov   $00f1,a           ; reset ports, disable timers
053b: e8 10     mov   a,#$10
053d: c5 fa 00  mov   $00fa,a           ; set timer0 freq to 2ms
0540: e8 36     mov   a,#$36
0542: c4 51     mov   $51,a             ; set $51 to #$36
0544: e8 01     mov   a,#$01
0546: c5 f1 00  mov   $00f1,a           ; start timer 0
; main loop
0549: ec fd 00  mov   y,$00fd
054c: f0 fb     beq   $0549             ; wait for counter 0 increment
054e: 6d        push  y
054f: e8 38     mov   a,#$38
0551: cf        mul   ya
0552: 60        clrc
0553: 84 44     adc   a,$44
0555: c4 44     mov   $44,a
0557: 90 1a     bcc   $0573
0559: ab 45     inc   $45
055b: 3f ae 06  call  $06ae
055e: cd 00     mov   x,#$00
0560: 3f a5 05  call  $05a5             ; read/send APU0
0563: 3f e5 09  call  $09e5
0566: cd 01     mov   x,#$01
0568: 3f a5 05  call  $05a5             ; read/send APU1
056b: 3f 16 08  call  $0816
056e: cd 03     mov   x,#$03
0570: 3f a5 05  call  $05a5             ; read/send APU3
0573: e4 51     mov   a,$51
0575: ee        pop   y
0576: cf        mul   ya
0577: 60        clrc
0578: 84 49     adc   a,$49
057a: c4 49     mov   $49,a
057c: 90 0f     bcc   $058d
057e: e5 88 03  mov   a,$0388
0581: d0 03     bne   $0586
0583: 3f c0 0b  call  $0bc0
0586: cd 02     mov   x,#$02
0588: 3f a5 05  call  $05a5             ; read/send APU2
058b: 2f bc     bra   $0549             ; restart main loop
058d: e4 06     mov   a,$06             ; if writing 0 to APU2 then
058f: f0 b8     beq   $0549             ;   restart main loop
0591: cd 0e     mov   x,#$0e            ; foreach voice
0593: 8f 80 48  mov   $48,#$80
0596: f4 31     mov   a,$31+x
0598: f0 03     beq   $059d             ; skip call if vptr == 0
059a: 3f 98 11  call  $1198             ; do per-voice fades/dsps?
059d: 4b 48     lsr   $48
059f: 1d        dec   x
05a0: 1d        dec   x
05a1: 10 f3     bpl   $0596             ; loop for each voice
05a3: 2f a4     bra   $0549             ; restart main loop
; send 04+X to APUX; get APUX to 00+X with "debounce"?
05a5: 7d        mov   a,x
05a6: fd        mov   y,a
05a7: f4 04     mov   a,$04+x
05a9: d5 f4 00  mov   $00f4+x,a
05ac: f5 f4 00  mov   a,$00f4+x
05af: 75 f4 00  cmp   a,$00f4+x
05b2: d0 f8     bne   $05ac
05b4: fd        mov   y,a
05b5: f4 08     mov   a,$08+x
05b7: db 08     mov   $08+x,y
05b9: de 08 05  cbne  $08+x,$05c0
05bc: 8d 00     mov   y,#$00
05be: db 00     mov   $00+x,y
05c0: 6f        ret
05c1: db 00     mov   $00+x,y
05c3: dd        mov   a,y
05c4: 6f        ret
; handle a note vcmd
05c5: 68 d0     cmp   a,#$d0
05c7: b0 05     bcs   $05ce             ; percussion note
05c9: 68 c6     cmp   a,#$c6
05cb: 90 16     bcc   $05e3             ; normal notenum OR $80
05cd: 6f        ret
05ce: d4 c1     mov   $c1+x,a
05d0: 80        setc
05d1: a8 d0     sbc   a,#$d0
05d3: 8d 06     mov   y,#$06
05d5: 8f a5 14  mov   $14,#$a5
05d8: 8f 5f 15  mov   $15,#$5f
05db: 3f 56 0d  call  $0d56             ; set sample A-$D0 in bank $5FA5 width 6
05de: d0 ed     bne   $05cd             ; return if 1D vbit set
05e0: fc        inc   y
05e1: f7 14     mov   a,($14)+y         ; get perc note num from instr tbl
05e3: 28 7f     and   a,#$7f
05e5: 60        clrc
05e6: 84 43     adc   a,$43             ; add global transpose
05e8: d5 b1 02  mov   $02b1+x,a
05eb: f5 d1 02  mov   a,$02d1+x
05ee: d5 b0 02  mov   $02b0+x,a
05f1: e8 00     mov   a,#$00
05f3: d5 30 03  mov   $0330+x,a
05f6: d5 60 03  mov   $0360+x,a
05f9: d4 a0     mov   $a0+x,a
05fb: d5 10 01  mov   $0110+x,a
05fe: d4 b0     mov   $b0+x,a
0600: 09 48 5c  or    ($5c),($48)       ; set volume changed flg
0603: 09 48 47  or    ($47),($48)       ; set key on shadow vbit
0606: f5 00 03  mov   a,$0300+x
0609: d4 90     mov   $90+x,a
060b: f0 1e     beq   $062b
060d: f5 01 03  mov   a,$0301+x
0610: d4 91     mov   $91+x,a
0612: f5 20 03  mov   a,$0320+x
0615: d0 0a     bne   $0621
0617: f5 b1 02  mov   a,$02b1+x
061a: 80        setc
061b: b5 21 03  sbc   a,$0321+x
061e: d5 b1 02  mov   $02b1+x,a
0621: f5 21 03  mov   a,$0321+x
0624: 60        clrc
0625: 95 b1 02  adc   a,$02b1+x
0628: 3f 5d 0f  call  $0f5d
062b: f5 b1 02  mov   a,$02b1+x
062e: fd        mov   y,a
062f: f5 b0 02  mov   a,$02b0+x
0632: da 10     movw  $10,ya
; set DSP pitch from $10/11
0634: 8d 00     mov   y,#$00
0636: e4 11     mov   a,$11
0638: 80        setc
0639: a8 34     sbc   a,#$34
063b: b0 09     bcs   $0646
063d: e4 11     mov   a,$11
063f: 80        setc
0640: a8 13     sbc   a,#$13
0642: b0 06     bcs   $064a
0644: dc        dec   y
0645: 1c        asl   a
0646: 7a 10     addw  ya,$10
0648: da 10     movw  $10,ya
064a: 4d        push  x
064b: e4 11     mov   a,$11
064d: 3f bd 12  call  $12bd
0650: da 14     movw  $14,ya            ; $14/5 = pitch for notenum $11
0652: e4 11     mov   a,$11
0654: bc        inc   a
0655: 3f bd 12  call  $12bd             ; get pitch for notenum $11 + 1
0658: ce        pop   x
0659: 9a 14     subw  ya,$14
065b: 2d        push  a
065c: e4 10     mov   a,$10
065e: cf        mul   ya                ; multiply pitch diff by fraction ($10)
065f: 7a 14     addw  ya,$14
0661: da 14     movw  $14,ya
0663: e4 10     mov   a,$10
0665: ee        pop   y
0666: cf        mul   ya
0667: dd        mov   a,y
0668: 8d 00     mov   y,#$00
066a: 7a 14     addw  ya,$14
066c: da 14     movw  $14,ya
066e: f5 10 02  mov   a,$0210+x
0671: eb 14     mov   y,$14
0673: cf        mul   ya
0674: da 16     movw  $16,ya
0676: f5 10 02  mov   a,$0210+x
0679: eb 15     mov   y,$15
067b: cf        mul   ya
067c: 60        clrc
067d: 84 17     adc   a,$17
067f: c4 17     mov   $17,a             ; $16/7 = $14/15 * 0210+X
0681: 7d        mov   a,x               ; set voice X pitch DSP reg from 16/7
0682: 9f        xcn   a                 ;  (if vbit clear in 1D)
0683: 5c        lsr   a
0684: 08 02     or    a,#$02
0686: fd        mov   y,a               ; Y = voice X pitch DSP reg
0687: e4 16     mov   a,$16
0689: 3f 8f 06  call  $068f
068c: fc        inc   y
068d: e4 17     mov   a,$17
; write A to DSP reg Y if vbit clear in $1D
068f: 2d        push  a
0690: e4 48     mov   a,$48
0692: 24 1d     and   a,$1d
0694: ae        pop   a
0695: d0 06     bne   $069d
; write A to DSP reg Y
0697: cc f2 00  mov   $00f2,y
069a: c5 f3 00  mov   $00f3,a
069d: 6f        ret
;
069e: e8 0a     mov   a,#$0a
06a0: c5 87 03  mov   $0387,a
06a3: e4 51     mov   a,$51
06a5: 3f 14 0e  call  $0e14             ; add #$0A to tempo; zero tempo low
06a8: e8 1d     mov   a,#$1d
06aa: c4 03     mov   $03,a
06ac: 2f 24     bra   $06d2
;
06ae: 78 12 00  cmp   $00,#$12
06b1: f0 0f     beq   $06c2
06b3: 78 11 00  cmp   $00,#$11
06b6: f0 0a     beq   $06c2
06b8: 78 11 04  cmp   $04,#$11
06bb: f0 0b     beq   $06c8
06bd: 78 1d 04  cmp   $04,#$1d
06c0: f0 06     beq   $06c8
06c2: e4 00     mov   a,$00
06c4: 30 d8     bmi   $069e
06c6: d0 0a     bne   $06d2
06c8: e5 82 03  mov   a,$0382
06cb: d0 4d     bne   $071a
06cd: e4 04     mov   a,$04
06cf: d0 7c     bne   $074d
06d1: 6f        ret
06d2: c4 04     mov   $04,a
06d4: e5 88 03  mov   a,$0388
06d7: f0 1e     beq   $06f7
06d9: e8 00     mov   a,#$00
06db: c5 88 03  mov   $0388,a
06de: e5 89 03  mov   a,$0389
06e1: d0 04     bne   $06e7
06e3: e8 20     mov   a,#$20
06e5: 2f 0b     bra   $06f2             ; disable echo write
06e7: e8 16     mov   a,#$16
06e9: c4 62     mov   $62,a
06eb: c4 64     mov   $64,a
06ed: 3f eb 0e  call  $0eeb             ; set echo vol L/R to #$16
06f0: e8 00     mov   a,#$00
06f2: 8d 6c     mov   y,#$6c
06f4: 3f 97 06  call  $0697             ; enable echo write
06f7: e8 02     mov   a,#$02
06f9: c5 82 03  mov   $0382,a
06fc: 78 11 04  cmp   $04,#$11
06ff: d0 0a     bne   $070b
0701: e5 89 03  mov   a,$0389
0704: f0 05     beq   $070b
0706: e8 00     mov   a,#$00
0708: 3f 22 0f  call  $0f22
070b: e8 10     mov   a,#$10
070d: 8d 5c     mov   y,#$5c
070f: 3f 97 06  call  $0697             ; key off voice 4
0712: 82 1d     set4  $1d
0714: e8 00     mov   a,#$00
0716: c5 08 03  mov   $0308,a
0719: 6f        ret
; 0382 nonzero
071a: 8c 82 03  dec   $0382
071d: d0 b2     bne   $06d1             ; ret
071f: e4 04     mov   a,$04
0721: 1c        asl   a
0722: fd        mov   y,a
0723: f6 81 56  mov   a,$5681+y
0726: c4 18     mov   $18,a
0728: f6 82 56  mov   a,$5682+y
072b: c4 19     mov   $19,a
072d: 2f 25     bra   $0754
072f: 78 11 04  cmp   $04,#$11
0732: d0 0a     bne   $073e
0734: e8 60     mov   a,#$60
0736: c5 88 03  mov   $0388,a
0739: 8d 6c     mov   y,#$6c
073b: 3f 97 06  call  $0697
073e: 8f 00 04  mov   $04,#$00
0741: 92 1d     clr4  $1d
0743: cd 08     mov   x,#$08
0745: e4 c9     mov   a,$c9
0747: f0 03     beq   $074c
0749: 5f 4b 0d  jmp   $0d4b
074c: 6f        ret
074d: 8c 80 03  dec   $0380
0750: d0 54     bne   $07a6
0752: 3a 18     incw  $18
0754: cd 00     mov   x,#$00
0756: e7 18     mov   a,($18+x)
0758: f0 d5     beq   $072f
075a: 30 2a     bmi   $0786
075c: c5 81 03  mov   $0381,a
075f: 3a 18     incw  $18
0761: e7 18     mov   a,($18+x)
0763: c4 10     mov   $10,a
0765: 30 1f     bmi   $0786
0767: 8d 40     mov   y,#$40
0769: 3f 97 06  call  $0697
076c: 3a 18     incw  $18
076e: e7 18     mov   a,($18+x)
0770: 10 0b     bpl   $077d
0772: 5d        mov   x,a
0773: e4 10     mov   a,$10
0775: 8d 41     mov   y,#$41
0777: 3f 97 06  call  $0697
077a: 7d        mov   a,x
077b: 2f 09     bra   $0786
077d: 8d 41     mov   y,#$41
077f: 3f 97 06  call  $0697
0782: 3a 18     incw  $18
0784: e7 18     mov   a,($18+x)
0786: 68 da     cmp   a,#$da
0788: f0 69     beq   $07f3
078a: 68 dd     cmp   a,#$dd
078c: f0 34     beq   $07c2
078e: 68 eb     cmp   a,#$eb
0790: f0 43     beq   $07d5
0792: 68 ff     cmp   a,#$ff
0794: f0 89     beq   $071f
0796: cd 08     mov   x,#$08
0798: 3f c5 05  call  $05c5
079b: e8 10     mov   a,#$10
079d: 3f 32 0d  call  $0d32
07a0: e5 81 03  mov   a,$0381
07a3: c5 80 03  mov   $0380,a
07a6: f2 13     clr7  $13
07a8: cd 08     mov   x,#$08
07aa: f4 90     mov   a,$90+x
07ac: f0 05     beq   $07b3
07ae: 3f cd 09  call  $09cd
07b1: 2f 0e     bra   $07c1
07b3: e8 02     mov   a,#$02
07b5: 65 80 03  cmp   a,$0380
07b8: d0 07     bne   $07c1
07ba: e8 10     mov   a,#$10
07bc: 8d 5c     mov   y,#$5c
07be: 3f 97 06  call  $0697
07c1: 6f        ret
07c2: cd 00     mov   x,#$00
07c4: 3a 18     incw  $18
07c6: e7 18     mov   a,($18+x)
07c8: 8f 08 46  mov   $46,#$08
07cb: cd 08     mov   x,#$08
07cd: 3f c5 05  call  $05c5
07d0: e8 10     mov   a,#$10
07d2: 3f 32 0d  call  $0d32
07d5: cd 00     mov   x,#$00
07d7: 3a 18     incw  $18
07d9: e7 18     mov   a,($18+x)
07db: c4 99     mov   $99,a
07dd: 3a 18     incw  $18
07df: e7 18     mov   a,($18+x)
07e1: c4 98     mov   $98,a
07e3: 2d        push  a
07e4: 3a 18     incw  $18
07e6: e7 18     mov   a,($18+x)
07e8: ee        pop   y
07e9: 8f 08 46  mov   $46,#$08
07ec: cd 08     mov   x,#$08
07ee: 3f 5d 0f  call  $0f5d
07f1: 2f ad     bra   $07a0
07f3: cd 00     mov   x,#$00
07f5: 3a 18     incw  $18
07f7: e7 18     mov   a,($18+x)
07f9: 8d 09     mov   y,#$09
07fb: cf        mul   ya
07fc: 5d        mov   x,a
07fd: 8d 40     mov   y,#$40
07ff: 8f 08 12  mov   $12,#$08
0802: f5 70 55  mov   a,$5570+x
0805: 3f 97 06  call  $0697
0808: 3d        inc   x
0809: fc        inc   y
080a: 6e 12 f5  dbnz  $12,$0801
080d: f5 70 55  mov   a,$5570+x
0810: c5 18 02  mov   $0218,a
0813: 5f 52 07  jmp   $0752
;
0816: 78 24 07  cmp   $07,#$24
0819: f0 13     beq   $082e
081b: 78 24 03  cmp   $03,#$24
081e: f0 0a     beq   $082a
0820: 78 1d 07  cmp   $07,#$1d
0823: f0 09     beq   $082e
0825: 78 05 07  cmp   $07,#$05
0828: f0 04     beq   $082e
082a: e4 03     mov   a,$03
082c: d0 09     bne   $0837
082e: e4 0d     mov   a,$0d
0830: d0 19     bne   $084b
0832: e4 07     mov   a,$07
0834: d0 40     bne   $0876
0836: 6f        ret
0837: c4 07     mov   $07,a
0839: 8f 02 0d  mov   $0d,#$02
083c: e8 40     mov   a,#$40
083e: 8d 5c     mov   y,#$5c
0840: 3f 97 06  call  $0697             ; key off voice 6 now
0843: c2 1d     set6  $1d               ; don't set vol DSP for voice 6
0845: e8 00     mov   a,#$00
0847: c5 0c 03  mov   $030c,a
084a: 6f        ret
084b: 6e 0d e8  dbnz  $0d,$0835
084e: e4 07     mov   a,$07
0850: 1c        asl   a
0851: fd        mov   y,a
0852: f6 19 56  mov   a,$5619+y
0855: c4 1a     mov   $1a,a
0857: f6 1a 56  mov   a,$561a+y
085a: c4 1b     mov   $1b,a
085c: 2f 1f     bra   $087d
085e: 8f 00 07  mov   $07,#$00
0861: d2 1d     clr6  $1d               ; OK to use voice 6 again
0863: e8 00     mov   a,#$00
0865: c4 2f     mov   $2f,a
0867: 8d 3d     mov   y,#$3d
0869: 3f 97 06  call  $0697             ; noise vbits off
086c: cd 0c     mov   x,#$0c
086e: e4 cd     mov   a,$cd
0870: f0 03     beq   $0875
0872: 5f 4b 0d  jmp   $0d4b
0875: 6f        ret
0876: 8c 84 03  dec   $0384
0879: d0 58     bne   $08d3
087b: 3a 1a     incw  $1a
087d: cd 00     mov   x,#$00
087f: e7 1a     mov   a,($1a+x)
0881: f0 db     beq   $085e
0883: 30 2a     bmi   $08af
0885: c5 85 03  mov   $0385,a
0888: 3a 1a     incw  $1a
088a: e7 1a     mov   a,($1a+x)
088c: c4 10     mov   $10,a
088e: 30 1f     bmi   $08af
0890: 8d 60     mov   y,#$60
0892: 3f 97 06  call  $0697             ; set voice 6 vol L
0895: 3a 1a     incw  $1a
0897: e7 1a     mov   a,($1a+x)
0899: 10 0b     bpl   $08a6
089b: 5d        mov   x,a
089c: e4 10     mov   a,$10
089e: 8d 61     mov   y,#$61
08a0: 3f 97 06  call  $0697             ; set voice 6 vol R from $10
08a3: 7d        mov   a,x
08a4: 2f 09     bra   $08af
08a6: 8d 61     mov   y,#$61
08a8: 3f 97 06  call  $0697             ; set voice 6 vol R
08ab: 3a 1a     incw  $1a
08ad: e7 1a     mov   a,($1a+x)
08af: 68 da     cmp   a,#$da
08b1: f0 6d     beq   $0920
08b3: 68 dd     cmp   a,#$dd
08b5: f0 38     beq   $08ef
08b7: 68 eb     cmp   a,#$eb
08b9: f0 47     beq   $0902
08bb: 68 ff     cmp   a,#$ff
08bd: d0 04     bne   $08c3
08bf: 1a 1a     decw  $1a
08c1: 2f ba     bra   $087d
; other $80+
08c3: cd 0c     mov   x,#$0c
08c5: 3f c5 05  call  $05c5
08c8: e8 40     mov   a,#$40
08ca: 3f 32 0d  call  $0d32
08cd: e5 85 03  mov   a,$0385
08d0: c5 84 03  mov   $0384,a
08d3: f2 13     clr7  $13
08d5: cd 0c     mov   x,#$0c
08d7: f4 90     mov   a,$90+x           ; pitch slide counter
08d9: f0 05     beq   $08e0
08db: 3f cd 09  call  $09cd             ; add pitch slide delta and set DSP pitch
08de: 2f 0e     bra   $08ee
08e0: e8 02     mov   a,#$02
08e2: 65 84 03  cmp   a,$0384
08e5: d0 07     bne   $08ee
08e7: e8 40     mov   a,#$40
08e9: 8d 5c     mov   y,#$5c
08eb: 3f 97 06  call  $0697             ; key off voice 6 now
08ee: 6f        ret
; DD
08ef: cd 00     mov   x,#$00
08f1: 3a 1a     incw  $1a
08f3: e7 1a     mov   a,($1a+x)
08f5: 8f 0c 46  mov   $46,#$0c
08f8: cd 0c     mov   x,#$0c
08fa: 3f c5 05  call  $05c5
08fd: e8 40     mov   a,#$40
08ff: 3f 32 0d  call  $0d32
; EB
0902: cd 00     mov   x,#$00
0904: 3a 1a     incw  $1a
0906: e7 1a     mov   a,($1a+x)
0908: c4 9d     mov   $9d,a
090a: 3a 1a     incw  $1a
090c: e7 1a     mov   a,($1a+x)
090e: c4 9c     mov   $9c,a
0910: 2d        push  a
0911: 3a 1a     incw  $1a
0913: e7 1a     mov   a,($1a+x)
0915: ee        pop   y
0916: 8f 0c 46  mov   $46,#$0c
0919: cd 0c     mov   x,#$0c
091b: 3f 5d 0f  call  $0f5d
091e: 2f ad     bra   $08cd
; DA
0920: e8 00     mov   a,#$00
0922: c4 2f     mov   $2f,a
0924: 8d 3d     mov   y,#$3d
0926: 3f 97 06  call  $0697
0929: cd 00     mov   x,#$00
092b: 3a 1a     incw  $1a
092d: e7 1a     mov   a,($1a+x)
092f: 30 1d     bmi   $094e
0931: 8d 09     mov   y,#$09
0933: cf        mul   ya
0934: 5d        mov   x,a
0935: 8d 60     mov   y,#$60
0937: 8f 08 12  mov   $12,#$08
093a: f5 70 55  mov   a,$5570+x
093d: 3f 97 06  call  $0697
0940: 3d        inc   x
0941: fc        inc   y
0942: 6e 12 f5  dbnz  $12,$0939
0945: f5 70 55  mov   a,$5570+x
0948: c5 1c 02  mov   $021c,a
094b: 5f 7b 08  jmp   $087b
094e: 28 1f     and   a,#$1f
0950: c4 2e     mov   $2e,a
0952: 8d 6c     mov   y,#$6c
0954: 3f 97 06  call  $0697
0957: e8 40     mov   a,#$40
0959: c4 2f     mov   $2f,a
095b: 8d 3d     mov   y,#$3d
095d: 3f 97 06  call  $0697
0960: 2f c7     bra   $0929
; set DSP regs for voice 5 from 5570+(9*A)
0962: 8d 09     mov   y,#$09
0964: cf        mul   ya
0965: 5d        mov   x,a
0966: 8d 50     mov   y,#$50
0968: 8f 08 12  mov   $12,#$08
096b: f5 70 55  mov   a,$5570+x
096e: 3f 97 06  call  $0697
0971: 3d        inc   x
0972: fc        inc   y
0973: 6e 12 f5  dbnz  $12,$096a
0976: f5 70 55  mov   a,$5570+x
0979: c5 1a 02  mov   $021a,a           ; set voice 5 pitch mult from 5570+X
097c: 6f        ret
; $01 = 02
097d: e4 06     mov   a,$06
097f: 68 06     cmp   a,#$06
0981: f0 04     beq   $0987
0983: 28 fc     and   a,#$fc
0985: d0 7c     bne   $0a03
0987: e5 86 03  mov   a,$0386
098a: d0 0e     bne   $099a
098c: e8 09     mov   a,#$09
098e: 3f 62 09  call  $0962             ; set voice 5 DSP from 5570+(9*9)
0991: e8 01     mov   a,#$01
0993: d0 02     bne   $0997
; $01 = 03
0995: e8 00     mov   a,#$00
0997: c5 86 03  mov   $0386,a
099a: 2f 67     bra   $0a03
; $01 = FF (reset?)
099c: e8 60     mov   a,#$60
099e: 8d 6c     mov   y,#$6c
09a0: 3f 97 06  call  $0697             ; mute all voices
09a3: e8 ff     mov   a,#$ff
09a5: 8d 5c     mov   y,#$5c
09a7: 3f 97 06  call  $0697             ; key off all voices now
09aa: 3f f2 12  call  $12f2             ; do standardish SPC transfer
09ad: e8 00     mov   a,#$00
09af: c4 04     mov   $04,a
09b1: c4 05     mov   $05,a
09b3: c4 06     mov   $06,a
09b5: c4 07     mov   $07,a
09b7: c4 1d     mov   $1d,a
09b9: c5 87 03  mov   $0387,a
09bc: c5 88 03  mov   $0388,a
09bf: c5 86 03  mov   $0386,a
09c2: c5 89 03  mov   $0389,a
09c5: e8 20     mov   a,#$20
09c7: 8d 6c     mov   y,#$6c
09c9: 3f 97 06  call  $0697             ; unmute voices
09cc: 6f        ret
; add pitch slide delta and set DSP pitch
09cd: e8 b0     mov   a,#$b0
09cf: 8d 02     mov   y,#$02            ; pitch (notenum fixed-point)
09d1: 9b 90     dec   $90+x
09d3: 3f 75 10  call  $1075             ; add pitch slide delta to value
09d6: f5 b1 02  mov   a,$02b1+x
09d9: fd        mov   y,a
09da: f5 b0 02  mov   a,$02b0+x
09dd: da 10     movw  $10,ya
09df: 8f 00 48  mov   $48,#$00          ; vbit flags = 0 (to force DSP set)
09e2: 5f 34 06  jmp   $0634             ; force voice DSP pitch from 02B0/1
;
09e5: e4 01     mov   a,$01
09e7: 68 ff     cmp   a,#$ff
09e9: f0 b1     beq   $099c
09eb: 68 02     cmp   a,#$02
09ed: f0 8e     beq   $097d
09ef: 68 03     cmp   a,#$03
09f1: f0 a2     beq   $0995
09f3: 68 01     cmp   a,#$01
09f5: f0 1d     beq   $0a14
09f7: e4 05     mov   a,$05
09f9: 68 01     cmp   a,#$01
09fb: f0 06     beq   $0a03
09fd: e4 01     mov   a,$01
09ff: 68 04     cmp   a,#$04
0a01: f0 0b     beq   $0a0e             ; (jmp $0ace)
;
0a03: e4 05     mov   a,$05
0a05: 68 01     cmp   a,#$01
0a07: f0 48     beq   $0a51
0a09: 68 04     cmp   a,#$04
0a0b: f0 04     beq   $0a11             ; (jmp $0b08)
0a0d: 6f        ret
0a0e: 5f ce 0a  jmp   $0ace
0a11: 5f 08 0b  jmp   $0b08
; $01 = 01
0a14: c4 05     mov   $05,a
0a16: e8 04     mov   a,#$04
0a18: c5 83 03  mov   $0383,a
0a1b: e8 80     mov   a,#$80
0a1d: 8d 5c     mov   y,#$5c
0a1f: 3f 97 06  call  $0697
0a22: e2 1d     set7  $1d
0a24: e8 00     mov   a,#$00
0a26: 8d 20     mov   y,#$20
0a28: d6 ff 02  mov   $02ff+y,a
0a2b: fe fb     dbnz  y,$0a28
0a2d: 6f        ret
0a2e: 8c 83 03  dec   $0383
0a31: d0 da     bne   $0a0d
0a33: 8f 30 1c  mov   $1c,#$30
0a36: 2f 30     bra   $0a68
0a38: 78 2a 1c  cmp   $1c,#$2a
0a3b: d0 5c     bne   $0a99
0a3d: 8f 0e 46  mov   $46,#$0e
0a40: cd 0e     mov   x,#$0e
0a42: 8d 00     mov   y,#$00
0a44: cb 9f     mov   $9f,y
0a46: 8d 12     mov   y,#$12
0a48: cb 9e     mov   $9e,y
0a4a: e8 b9     mov   a,#$b9
0a4c: 3f 5d 0f  call  $0f5d
0a4f: 2f 48     bra   $0a99
;
0a51: e5 83 03  mov   a,$0383
0a54: d0 d8     bne   $0a2e
0a56: 6e 1c df  dbnz  $1c,$0a37
0a59: 8f 00 05  mov   $05,#$00
0a5c: f2 1d     clr7  $1d
0a5e: cd 0e     mov   x,#$0e
0a60: e4 cf     mov   a,$cf
0a62: f0 03     beq   $0a67
0a64: 5f 4b 0d  jmp   $0d4b
0a67: 6f        ret
0a68: 3f b1 0a  call  $0ab1
0a6b: e8 b2     mov   a,#$b2
0a6d: 8f 0e 46  mov   $46,#$0e
0a70: cd 0e     mov   x,#$0e
0a72: 3f c5 05  call  $05c5
0a75: 8d 00     mov   y,#$00
0a77: cb 9f     mov   $9f,y
0a79: 8d 05     mov   y,#$05
0a7b: cb 9e     mov   $9e,y
0a7d: e8 b5     mov   a,#$b5
0a7f: 3f 5d 0f  call  $0f5d
0a82: e8 38     mov   a,#$38
0a84: c4 10     mov   $10,a
0a86: 8d 70     mov   y,#$70
0a88: 3f 97 06  call  $0697
0a8b: e8 38     mov   a,#$38
0a8d: c4 10     mov   $10,a
0a8f: 8d 71     mov   y,#$71
0a91: 3f 97 06  call  $0697
0a94: e8 80     mov   a,#$80
0a96: 3f 32 0d  call  $0d32
0a99: e8 02     mov   a,#$02
0a9b: 2e 1c 07  cbne  $1c,$0aa4
0a9e: e8 80     mov   a,#$80
0aa0: 8d 5c     mov   y,#$5c
0aa2: 3f 97 06  call  $0697
0aa5: f2 13     clr7  $13
0aa7: e4 9e     mov   a,$9e
0aa9: f0 05     beq   $0ab0
0aab: cd 0e     mov   x,#$0e
0aad: 3f cd 09  call  $09cd
0ab0: 6f        ret
0ab1: e8 08     mov   a,#$08
0ab3: 8d 09     mov   y,#$09
0ab5: cf        mul   ya
0ab6: 5d        mov   x,a
0ab7: 8d 70     mov   y,#$70
0ab9: 8f 08 12  mov   $12,#$08
0abc: f5 70 55  mov   a,$5570+x
0abf: 3f 97 06  call  $0697
0ac2: 3d        inc   x
0ac3: fc        inc   y
0ac4: 6e 12 f5  dbnz  $12,$0abb
0ac7: f5 70 55  mov   a,$5570+x
0aca: c5 1e 02  mov   $021e,a
0acd: 6f        ret
; $01 = 04 && $05 != 01
0ace: c4 05     mov   $05,a
0ad0: e8 04     mov   a,#$04
0ad2: c5 83 03  mov   $0383,a
0ad5: e8 80     mov   a,#$80
0ad7: 8d 5c     mov   y,#$5c
0ad9: 3f 97 06  call  $0697             ; key off voice 7 now
0adc: e2 1d     set7  $1d
0ade: e8 00     mov   a,#$00
0ae0: 8d 20     mov   y,#$20
0ae2: d6 ff 02  mov   $02ff+y,a
0ae5: fe fb     dbnz  y,$0ae2
0ae7: 6f        ret
;
0ae8: 8c 83 03  dec   $0383
0aeb: d0 fa     bne   $0ae7
0aed: 8f 18 1c  mov   $1c,#$18
0af0: 2f 05     bra   $0af7
0af2: 78 0c 1c  cmp   $1c,#$0c
0af5: d0 3c     bne   $0b33
0af7: e8 07     mov   a,#$07
0af9: 3f b3 0a  call  $0ab3
0afc: e8 a4     mov   a,#$a4
0afe: 8f 0e 46  mov   $46,#$0e
0b01: cd 0e     mov   x,#$0e
0b03: 3f c5 05  call  $05c5
0b06: 2f 14     bra   $0b1c
0b08: e5 83 03  mov   a,$0383
0b0b: d0 db     bne   $0ae8
0b0d: 6e 1c e2  dbnz  $1c,$0af1
0b10: 8f 00 05  mov   $05,#$00
0b13: f2 1d     clr7  $1d
0b15: cd 0e     mov   x,#$0e
0b17: e4 cf     mov   a,$cf
0b19: 5f 4b 0d  jmp   $0d4b
0b1c: e8 28     mov   a,#$28
0b1e: c4 10     mov   $10,a
0b20: 8d 70     mov   y,#$70
0b22: 3f 97 06  call  $0697
0b25: e8 28     mov   a,#$28
0b27: c4 10     mov   $10,a
0b29: 8d 71     mov   y,#$71
0b2b: 3f 97 06  call  $0697
0b2e: e8 80     mov   a,#$80
0b30: 3f 32 0d  call  $0d32
0b33: e8 02     mov   a,#$02
0b35: 2e 1c 07  cbne  $1c,$0b3e
0b38: e8 80     mov   a,#$80
0b3a: 8d 5c     mov   y,#$5c
0b3c: 3f 97 06  call  $0697
0b3f: 6f        ret
; play song in A?
0b40: 80        setc
0b41: 68 16     cmp   a,#$16
0b43: f0 10     beq   $0b55
0b45: 68 10     cmp   a,#$10
0b47: f0 0c     beq   $0b55
0b49: 68 0f     cmp   a,#$0f
0b4b: f0 08     beq   $0b55
0b4d: 68 09     cmp   a,#$09
0b4f: 90 09     bcc   $0b5a
0b51: 68 0d     cmp   a,#$0d
0b53: b0 05     bcs   $0b5a
0b55: 8d 00     mov   y,#$00
0b57: cc 87 03  mov   $0387,y
0b5a: c4 06     mov   $06,a
0b5c: 8f 02 0c  mov   $0c,#$02
0b5f: 1c        asl   a
0b60: fd        mov   y,a
0b61: f6 5e 13  mov   a,$135e+y
0b64: c4 40     mov   $40,a
0b66: f6 5f 13  mov   a,$135f+y
0b69: c4 41     mov   $41,a
0b6b: cd 0e     mov   x,#$0e            ; foreach voice
0b6d: e8 0a     mov   a,#$0a
0b6f: d5 81 02  mov   $0281+x,a         ; pan
0b72: e8 ff     mov   a,#$ff
0b74: d5 41 02  mov   $0241+x,a         ; voice base vol
0b77: e8 00     mov   a,#$00
0b79: d5 d1 02  mov   $02d1+x,a         ; portamento off
0b7c: d4 81     mov   $81+x,a           ; pan fade ctr
0b7e: d4 80     mov   $80+x,a           ; vol fade ctr
0b80: d4 a1     mov   $a1+x,a
0b82: d4 b1     mov   $b1+x,a
0b84: d4 c0     mov   $c0+x,a           ; repeat ctr
0b86: d4 c1     mov   $c1+x,a           ; current instr
0b88: 1d        dec   x
0b89: 1d        dec   x
0b8a: 10 e1     bpl   $0b6d
0b8c: c4 58     mov   $58,a             ; master vol fade ctr
0b8e: c4 60     mov   $60,a             ; echo vol fade ctr
0b90: c4 52     mov   $52,a             ; tempo fade ctr
0b92: c4 43     mov   $43,a             ; global transpose
0b94: 8f c0 57  mov   $57,#$c0          ; master vol
0b97: 8f 36 51  mov   $51,#$36          ; tempo
0b9a: 8d 20     mov   y,#$20
0b9c: d6 ff 02  mov   $02ff+y,a
0b9f: fe fb     dbnz  y,$0b9c           ; zero $0300-031f
0ba1: 2f 02     bra   $0ba5
;
0ba3: c4 06     mov   $06,a
0ba5: e4 1d     mov   a,$1d
0ba7: 48 ff     eor   a,#$ff
0ba9: 8d 5c     mov   y,#$5c
0bab: 5f 97 06  jmp   $0697
; fade volume out over 240 counts
0bae: cd f0     mov   x,#$f0
0bb0: d8 58     mov   $58,x
0bb2: e8 00     mov   a,#$00
0bb4: c4 59     mov   $59,a
0bb6: 80        setc
0bb7: a4 57     sbc   a,$57
0bb9: 3f 76 0f  call  $0f76
0bbc: da 5a     movw  $5a,ya            ; set volume fade out after 240 counts
0bbe: 2f 27     bra   $0be7
;
0bc0: e4 06     mov   a,$06
0bc2: f0 1a     beq   $0bde
0bc4: 68 06     cmp   a,#$06
0bc6: f0 04     beq   $0bcc
0bc8: 28 fc     and   a,#$fc
0bca: d0 10     bne   $0bdc
0bcc: e5 86 03  mov   a,$0386
0bcf: d0 0b     bne   $0bdc
0bd1: e8 20     mov   a,#$20
0bd3: 8d 5c     mov   y,#$5c
0bd5: 3f 97 06  call  $0697
0bd8: a2 1d     set5  $1d
0bda: 2f 02     bra   $0bde
0bdc: b2 1d     clr5  $1d
0bde: e4 02     mov   a,$02
0be0: 30 cc     bmi   $0bae
0be2: f0 03     beq   $0be7
0be4: 5f 40 0b  jmp   $0b40             ; play song in A?
0be7: e4 0c     mov   a,$0c
0be9: d0 13     bne   $0bfe
0beb: e4 06     mov   a,$06
0bed: d0 57     bne   $0c46
0bef: 6f        ret
; read next word at $40 into YA
0bf0: 8d 00     mov   y,#$00
0bf2: f7 40     mov   a,($40)+y
0bf4: 3a 40     incw  $40
0bf6: 2d        push  a
0bf7: f7 40     mov   a,($40)+y
0bf9: 3a 40     incw  $40
0bfb: fd        mov   y,a
0bfc: ae        pop   a
0bfd: 6f        ret
;
0bfe: 6e 0c ee  dbnz  $0c,$0bee
0c01: 3f f0 0b  call  $0bf0             ; read next word at $40
0c04: da 16     movw  $16,ya            ; save in $16/17
0c06: dd        mov   a,y               ; high byte zero?
0c07: d0 19     bne   $0c22
0c09: e4 16     mov   a,$16             ; refetch lo byte
0c0b: f0 96     beq   $0ba3             ; key off, return if also zero
0c0d: 8b 42     dec   $42
0c0f: f0 0b     beq   $0c1c
0c11: 10 02     bpl   $0c15
0c13: c4 42     mov   $42,a
0c15: 3f f0 0b  call  $0bf0             ; read next word at $40
0c18: da 40     movw  $40,ya            ; "goto" that address
0c1a: 2f e5     bra   $0c01             ; and continue
0c1c: 3a 40     incw  $40
0c1e: 3a 40     incw  $40               ; skip goto address
0c20: 2f df     bra   $0c01             ; continue
0c22: 8d 0f     mov   y,#$0f            ; high byte not zero:
0c24: f7 16     mov   a,($16)+y
0c26: d6 30 00  mov   $0030+y,a
0c29: dc        dec   y
0c2a: 10 f8     bpl   $0c24             ; set vptrs from [$16]
0c2c: cd 0e     mov   x,#$0e
0c2e: 8f 80 48  mov   $48,#$80          ; foreach voice
0c31: f4 31     mov   a,$31+x
0c33: f0 0b     beq   $0c40             ;  next if vptr hi = 0
0c35: e8 01     mov   a,#$01
0c37: d4 70     mov   $70+x,a           ;  set duration counter to 1
0c39: f4 c1     mov   a,$c1+x
0c3b: d0 03     bne   $0c40
0c3d: 3f 4a 0d  call  $0d4a             ;  set instr to 0 if no instr set
0c40: 4b 48     lsr   $48
0c42: 1d        dec   x
0c43: 1d        dec   x
0c44: 10 eb     bpl   $0c31             ; loop
0c46: cd 00     mov   x,#$00
0c48: d8 47     mov   $47,x
0c4a: 8f 01 48  mov   $48,#$01          ; foreach voice
0c4d: d8 46     mov   $46,x
0c4f: f4 31     mov   a,$31+x
0c51: f0 76     beq   $0cc9             ; next if vptr hi zero
0c53: 9b 70     dec   $70+x             ; dec duration counter
0c55: d0 6f     bne   $0cc6             ; if not zero, skip to voice readahead
0c57: 3f 5e 12  call  $125e             ; get next vbyte
0c5a: d0 1e     bne   $0c7a
0c5c: f4 c0     mov   a,$c0+x           ; vcmd 00:  end repeat/return
0c5e: f0 a1     beq   $0c01             ;  goto next $40 section if rpt count 0
0c60: 9b c0     dec   $c0+x             ;  dec repeat count
0c62: d0 0a     bne   $0c6e             ;  if zero then
0c64: f5 e0 03  mov   a,$03e0+x
0c67: d4 30     mov   $30+x,a
0c69: f5 e1 03  mov   a,$03e1+x
0c6c: 2f 08     bra   $0c76             ;   goto 03E0/1
0c6e: f5 f0 03  mov   a,$03f0+x         ;  else
0c71: d4 30     mov   $30+x,a
0c73: f5 f1 03  mov   a,$03f1+x         ;   goto 03F0/1
0c76: d4 31     mov   $31+x,a
0c78: 2f dd     bra   $0c57             ;  continue to next vbyte
0c7a: 30 23     bmi   $0c9f             ; vcmds 01-7f:
0c7c: d5 00 02  mov   $0200+x,a         ;  set cmd as duration
0c7f: 3f 5e 12  call  $125e             ;  get next vcmd
0c82: 30 1b     bmi   $0c9f             ;  if not note then
0c84: 2d        push  a
0c85: 9f        xcn   a
0c86: 28 07     and   a,#$07
0c88: fd        mov   y,a
0c89: f6 68 12  mov   a,$1268+y
0c8c: d5 01 02  mov   $0201+x,a         ; set dur% from high nybble
0c8f: ae        pop   a
0c90: 28 0f     and   a,#$0f
0c92: fd        mov   y,a
0c93: f6 70 12  mov   a,$1270+y
0c96: d5 11 02  mov   $0211+x,a         ; set per-note vol from low nybble
0c99: 09 48 5c  or    ($5c),($48)       ; mark vol changed?
0c9c: 3f 5e 12  call  $125e             ; get next vbyte
0c9f: 68 da     cmp   a,#$da
0ca1: 90 05     bcc   $0ca8             ; vcmd da-ff:
0ca3: 3f 40 0d  call  $0d40             ; dispatch vcmd
0ca6: 2f af     bra   $0c57             ; do next vcmd
0ca8: 2d        push  a                 ; vcmd 80-d9 (note)
0ca9: e4 48     mov   a,$48
0cab: 24 1d     and   a,$1d
0cad: ae        pop   a
0cae: d0 03     bne   $0cb3
0cb0: 3f c5 05  call  $05c5             ; handle note cmd if vbit 1D clear
0cb3: f5 00 02  mov   a,$0200+x
0cb6: d4 70     mov   $70+x,a           ; set duration counter from duration
0cb8: fd        mov   y,a
0cb9: f5 01 02  mov   a,$0201+x
0cbc: cf        mul   ya
0cbd: dd        mov   a,y
0cbe: d0 01     bne   $0cc1
0cc0: bc        inc   a
0cc1: d5 00 01  mov   $0100+x,a         ; set note dur counter from dur * dur%
0cc4: 2f 03     bra   $0cc9
0cc6: 3f a1 10  call  $10a1             ; do voice readahead
0cc9: 3d        inc   x
0cca: 3d        inc   x
0ccb: 0b 48     asl   $48
0ccd: b0 03     bcs   $0cd2
0ccf: 5f 4d 0c  jmp   $0c4d             ; loop
0cd2: e4 52     mov   a,$52             ; do global fades
0cd4: f0 0d     beq   $0ce3
0cd6: 6e 52 04  dbnz  $52,$0cdc
0cd9: ba 52     movw  ya,$52
0cdb: 2f 04     bra   $0ce1
0cdd: ba 54     movw  ya,$54
0cdf: 7a 50     addw  ya,$50
0ce1: da 50     movw  $50,ya
0ce3: e4 60     mov   a,$60
0ce5: f0 1c     beq   $0d03
0ce7: 6e 60 0a  dbnz  $60,$0cf3
0cea: e8 00     mov   a,#$00
0cec: eb 62     mov   y,$62
0cee: da 61     movw  $61,ya
0cf0: eb 64     mov   y,$64
0cf2: 2f 0a     bra   $0cfe
0cf4: ba 65     movw  ya,$65
0cf6: 7a 61     addw  ya,$61
0cf8: da 61     movw  $61,ya
0cfa: ba 67     movw  ya,$67
0cfc: 7a 63     addw  ya,$63
0cfe: da 63     movw  $63,ya
0d00: 3f eb 0e  call  $0eeb
0d03: e4 58     mov   a,$58
0d05: f0 10     beq   $0d17
0d07: 6e 58 04  dbnz  $58,$0d0d
0d0a: ba 58     movw  ya,$58
0d0c: 2f 04     bra   $0d12
0d0e: ba 5a     movw  ya,$5a
0d10: 7a 56     addw  ya,$56
0d12: da 56     movw  $56,ya
0d14: 8f ff 5c  mov   $5c,#$ff          ; set all vol chg flags
0d17: cd 0e     mov   x,#$0e
0d19: 8f 80 48  mov   $48,#$80
0d1c: f4 31     mov   a,$31+x
0d1e: f0 03     beq   $0d23
0d20: 3f db 0f  call  $0fdb             ; per-voice fades?
0d23: 4b 48     lsr   $48
0d25: 1d        dec   x
0d26: 1d        dec   x
0d27: 10 f3     bpl   $0d1c
0d29: 8f 00 5c  mov   $5c,#$00          ; clear volchg flags
0d2c: e4 1d     mov   a,$1d
0d2e: 48 ff     eor   a,#$ff
0d30: 24 47     and   a,$47
; key on voices in A
0d32: 2d        push  a
0d33: 8d 5c     mov   y,#$5c
0d35: e8 00     mov   a,#$00
0d37: 3f 97 06  call  $0697             ; key off none
0d3a: ae        pop   a
0d3b: 8d 4c     mov   y,#$4c
0d3d: 5f 97 06  jmp   $0697             ; key on voices from A
; dispatch vcmd in A
0d40: 1c        asl   a
0d41: 5d        mov   x,a
0d42: e8 00     mov   a,#$00
0d44: 1f dc 0e  jmp   ($0edc+x)         ; $DA minimum? (F90)
; vcmd DA: set instrument
0d47: 3f 5c 12  call  $125c
; set instrument to A
0d4a: bc        inc   a
0d4b: d4 c1     mov   $c1+x,a
0d4d: 9c        dec   a
0d4e: 8d 05     mov   y,#$05
0d50: 8f 46 14  mov   $14,#$46
0d53: 8f 5f 15  mov   $15,#$5f
; set sample A in bank at $14/15 width Y
0d56: cf        mul   ya
0d57: 7a 14     addw  ya,$14
0d59: da 14     movw  $14,ya
0d5b: e4 48     mov   a,$48
0d5d: 24 1d     and   a,$1d
0d5f: d0 2c     bne   $0d8d
0d61: 4d        push  x
0d62: 7d        mov   a,x
0d63: 9f        xcn   a
0d64: 5c        lsr   a
0d65: 08 04     or    a,#$04            ; voice X SRCN
0d67: 5d        mov   x,a
0d68: e4 48     mov   a,$48
0d6a: 48 ff     eor   a,#$ff
0d6c: 24 2f     and   a,$2f
0d6e: c4 2f     mov   $2f,a
0d70: 8d 3d     mov   y,#$3d
0d72: 3f 97 06  call  $0697             ; clear noise vbit
0d75: 8d 00     mov   y,#$00
0d77: f7 14     mov   a,($14)+y
0d79: c9 f2 00  mov   $00f2,x
0d7c: c5 f3 00  mov   $00f3,a
0d7f: 3d        inc   x
0d80: fc        inc   y
0d81: ad 04     cmp   y,#$04
0d83: d0 f2     bne   $0d77             ; set SRCN, ADSR1/2, GAIN
0d85: f7 14     mov   a,($14)+y
0d87: ce        pop   x
0d88: d5 10 02  mov   $0210+x,a         ; set pitch multiplier
0d8b: e8 00     mov   a,#$00
0d8d: 6f        ret
; vcmd DB: set pan
0d8e: 3f 5c 12  call  $125c
0d91: 28 1f     and   a,#$1f
0d93: d5 81 02  mov   $0281+x,a         ; voice pan value
0d96: dd        mov   a,y
0d97: 28 c0     and   a,#$c0
0d99: d5 a1 02  mov   $02a1+x,a         ; negate voice vol bits
0d9c: e8 00     mov   a,#$00
0d9e: d5 80 02  mov   $0280+x,a
0da1: 09 48 5c  or    ($5c),($48)       ; set vol chg flag
0da4: 6f        ret
; vcmd DC: pan fade
0da5: 3f 5c 12  call  $125c
0da8: d4 81     mov   $81+x,a
0daa: 2d        push  a
0dab: 3f 5e 12  call  $125e
0dae: d5 a0 02  mov   $02a0+x,a
0db1: 80        setc
0db2: b5 81 02  sbc   a,$0281+x         ; current pan value
0db5: ce        pop   x
0db6: 3f 76 0f  call  $0f76             ; delta = pan value / steps
0db9: d5 90 02  mov   $0290+x,a
0dbc: dd        mov   a,y
0dbd: d5 91 02  mov   $0291+x,a
0dc0: 6f        ret
; vcmd DE: vibrato on
0dc1: 3f 5c 12  call  $125c
0dc4: d5 40 03  mov   $0340+x,a
0dc7: e8 00     mov   a,#$00
0dc9: d5 41 03  mov   $0341+x,a
0dcc: 3f 5e 12  call  $125e
0dcf: d5 31 03  mov   $0331+x,a
; vcmd DF: vibrato off
0dd2: 3f 5e 12  call  $125e
0dd5: f8 46     mov   x,$46
0dd7: d4 a1     mov   $a1+x,a
0dd9: 6f        ret
; vcmd EA: vibrato fade
0dda: 3f 5c 12  call  $125c
0ddd: d5 41 03  mov   $0341+x,a
0de0: 2d        push  a
0de1: f4 a1     mov   a,$a1+x
0de3: d5 51 03  mov   $0351+x,a
0de6: ce        pop   x
0de7: 8d 00     mov   y,#$00
0de9: 9e        div   ya,x
0dea: f8 46     mov   x,$46
0dec: d5 50 03  mov   $0350+x,a
0def: 6f        ret
; vcmd E0: set master volume
0df0: 3f 5c 12  call  $125c
0df3: c4 57     mov   $57,a
0df5: 8f 00 56  mov   $56,#$00
0df8: 8f ff 5c  mov   $5c,#$ff          ; all vol chgd
0dfb: 6f        ret
; vcmd E1: master vol fade
0dfc: 3f 5c 12  call  $125c
0dff: c4 58     mov   $58,a
0e01: 3f 5e 12  call  $125e
0e04: c4 59     mov   $59,a
0e06: f8 58     mov   x,$58
0e08: 80        setc
0e09: a4 57     sbc   a,$57
0e0b: 3f 76 0f  call  $0f76
0e0e: da 5a     movw  $5a,ya
0e10: 6f        ret
; vcmd E2: tempo
0e11: 3f 5c 12  call  $125c
; set tempo
0e14: 85 87 03  adc   a,$0387
0e17: c4 51     mov   $51,a
0e19: 8f 00 50  mov   $50,#$00
0e1c: 6f        ret
; vcmd E3: tempo fade
0e1d: 3f 5c 12  call  $125c
0e20: c4 52     mov   $52,a
0e22: 3f 5e 12  call  $125e
0e25: 85 87 03  adc   a,$0387
0e28: c4 53     mov   $53,a
0e2a: f8 52     mov   x,$52
0e2c: 80        setc
0e2d: a4 51     sbc   a,$51
0e2f: 3f 76 0f  call  $0f76
0e32: da 54     movw  $54,ya
0e34: 6f        ret
; vcmd E4: transpose (global)
0e35: 3f 5c 12  call  $125c
0e38: c4 43     mov   $43,a
0e3a: 6f        ret
; vcmd E5: tremolo on
0e3b: 3f 5c 12  call  $125c
0e3e: d5 70 03  mov   $0370+x,a
0e41: 3f 5e 12  call  $125e
0e44: d5 62 03  mov   $0362+x,a
0e47: 3f 5e 12  call  $125e
; vcmd E6: tremolo off
0e4a: f8 46     mov   x,$46
0e4c: d4 b1     mov   $b1+x,a
0e4e: 6f        ret
; vcmd EB: pitch envelope (release)
0e4f: e8 01     mov   a,#$01
0e51: 2f 02     bra   $0e55
; vcmd EC: pitch envelope (attack)
0e53: e8 00     mov   a,#$00
0e55: f8 46     mov   x,$46
0e57: d5 20 03  mov   $0320+x,a
0e5a: 3f 5c 12  call  $125c
0e5d: d5 01 03  mov   $0301+x,a
0e60: 3f 5e 12  call  $125e
0e63: d5 00 03  mov   $0300+x,a
0e66: 3f 5e 12  call  $125e
0e69: d5 21 03  mov   $0321+x,a
0e6c: 6f        ret
0e6d: f8 46     mov   x,$46
0e6f: d5 00 03  mov   $0300+x,a
0e72: 6f        ret
; vcmd E7: set voice volume base
0e73: 3f 5c 12  call  $125c
0e76: d5 41 02  mov   $0241+x,a
0e79: e8 00     mov   a,#$00
0e7b: d5 40 02  mov   $0240+x,a
0e7e: 09 48 5c  or    ($5c),($48)       ; mark volume changed
0e81: 6f        ret
; vcmd E8: voice volume base fade
0e82: 3f 5c 12  call  $125c
0e85: d4 80     mov   $80+x,a
0e87: 2d        push  a
0e88: 3f 5e 12  call  $125e
0e8b: d5 60 02  mov   $0260+x,a
0e8e: 80        setc
0e8f: b5 41 02  sbc   a,$0241+x
0e92: ce        pop   x
0e93: 3f 76 0f  call  $0f76
0e96: d5 50 02  mov   $0250+x,a
0e99: dd        mov   a,y
0e9a: d5 51 02  mov   $0251+x,a
0e9d: 6f        ret
; vcmd EE: tuning
0e9e: 3f 5c 12  call  $125c
0ea1: d5 d1 02  mov   $02d1+x,a
0ea4: 6f        ret
; vcmd E9: call subroutine
0ea5: 3f 5c 12  call  $125c
0ea8: 2d        push  a
0ea9: 3f 5e 12  call  $125e
0eac: 2d        push  a
0ead: 3f 5e 12  call  $125e
0eb0: d4 c0     mov   $c0+x,a           ; repeat counter = op3
0eb2: f4 30     mov   a,$30+x
0eb4: d5 e0 03  mov   $03e0+x,a
0eb7: f4 31     mov   a,$31+x
0eb9: d5 e1 03  mov   $03e1+x,a         ; save current vptr in 3E0/1+X
0ebc: ae        pop   a
0ebd: d4 31     mov   $31+x,a
0ebf: d5 f1 03  mov   $03f1+x,a
0ec2: ae        pop   a
0ec3: d4 30     mov   $30+x,a
0ec5: d5 f0 03  mov   $03f0+x,a         ; set vptr/3F0/1+X to op1/2
0ec8: 6f        ret
; vcmd EF: set echo vbits/volume
0ec9: 3f 5c 12  call  $125c
0ecc: c5 89 03  mov   $0389,a           ; set echo vbit shadow from op1
0ecf: 8d 4d     mov   y,#$4d
0ed1: 3f 97 06  call  $0697             ; set echo vbits DSP from shadow
0ed4: 3f 5e 12  call  $125e
0ed7: e8 00     mov   a,#$00
0ed9: da 61     movw  $61,ya            ; set 61/2 from op2 * $100 (evol L)
0edb: 3f 5e 12  call  $125e
0ede: e8 00     mov   a,#$00
0ee0: da 63     movw  $63,ya            ; set 63/4 from op3 * $100 (evol R)
0ee2: c4 2e     mov   $2e,a             ; zero 2e
0ee4: 28 1f     and   a,#$1f
0ee6: 8d 6c     mov   y,#$6c
0ee8: 3f 97 06  call  $0697             ; zero noise freq, enable echo write
; set echo vol's from shadows
0eeb: e4 62     mov   a,$62
0eed: 8d 2c     mov   y,#$2c
0eef: 3f 97 06  call  $0697             ; set echo vol L DSP from $62
0ef2: e4 64     mov   a,$64
0ef4: 8d 3c     mov   y,#$3c
0ef6: 5f 97 06  jmp   $0697             ; set echo vol R DSP from $64
; vcmd F2: echo volume fade
0ef9: 3f 5c 12  call  $125c
0efc: c4 60     mov   $60,a
0efe: 3f 5e 12  call  $125e
0f01: c4 69     mov   $69,a
0f03: f8 60     mov   x,$60
0f05: 80        setc
0f06: a4 62     sbc   a,$62
0f08: 3f 76 0f  call  $0f76
0f0b: da 65     movw  $65,ya
0f0d: 3f 5e 12  call  $125e
0f10: c4 6a     mov   $6a,a
0f12: f8 60     mov   x,$60
0f14: 80        setc
0f15: a4 64     sbc   a,$64
0f17: 3f 76 0f  call  $0f76
0f1a: da 67     movw  $67,ya
0f1c: 6f        ret
; vcmd F0: disable echo
0f1d: f8 46     mov   x,$46
0f1f: c5 89 03  mov   $0389,a           ; clear all echo vbits
0f22: fd        mov   y,a
0f23: da 61     movw  $61,ya            ; zero echo vol L shadow
0f25: da 63     movw  $63,ya            ; zero echo vol R shadow
0f27: 3f eb 0e  call  $0eeb             ; set echo vol DSP regs from shadows
0f2a: c4 2e     mov   $2e,a             ; zero 2E
0f2c: 08 20     or    a,#$20
0f2e: 8d 6c     mov   y,#$6c
0f30: 5f 97 06  jmp   $0697             ; disable echo write, noise freq 0
; vcmd F1: set echo delay, feedback, filter
0f33: 3f 5c 12  call  $125c
0f36: 8d 7d     mov   y,#$7d
0f38: 3f 97 06  call  $0697             ; set echo delay from op1
0f3b: 3f 5e 12  call  $125e
0f3e: 8d 0d     mov   y,#$0d
0f40: 3f 97 06  call  $0697             ; set echo feedback from op2
0f43: 3f 5e 12  call  $125e
0f46: 8d 08     mov   y,#$08
0f48: cf        mul   ya
0f49: 5d        mov   x,a
0f4a: 8d 0f     mov   y,#$0f
0f4c: f5 ad 12  mov   a,$12ad+x         ; filter table
0f4f: 3f 97 06  call  $0697
0f52: 3d        inc   x
0f53: dd        mov   a,y
0f54: 60        clrc
0f55: 88 10     adc   a,#$10
0f57: fd        mov   y,a
0f58: 10 f2     bpl   $0f4c             ; set echo filter from table idx op3
0f5a: f8 46     mov   x,$46
0f5c: 6f        ret
; calculate portamento delta
0f5d: 28 7f     and   a,#$7f
0f5f: d5 d0 02  mov   $02d0+x,a         ; final portamento value
0f62: 80        setc
0f63: b5 b1 02  sbc   a,$02b1+x         ; note number
0f66: 2d        push  a
0f67: f4 90     mov   a,$90+x           ; portamento steps
0f69: 5d        mov   x,a
0f6a: ae        pop   a
0f6b: 3f 76 0f  call  $0f76
0f6e: d5 c0 02  mov   $02c0+x,a
0f71: dd        mov   a,y
0f72: d5 c1 02  mov   $02c1+x,a         ; portamento delta
0f75: 6f        ret
; signed 16 bit division
0f76: b0 0d     bcs   $0f85
0f78: 48 ff     eor   a,#$ff
0f7a: bc        inc   a
0f7b: 3f 85 0f  call  $0f85
0f7e: da 14     movw  $14,ya
0f80: ba 0e     movw  ya,$0e
0f82: 9a 14     subw  ya,$14
0f84: 6f        ret
0f85: 8d 00     mov   y,#$00
0f87: 9e        div   ya,x
0f88: 2d        push  a
0f89: e8 00     mov   a,#$00
0f8b: 9e        div   ya,x
0f8c: ee        pop   y
0f8d: f8 46     mov   x,$46
0f8f: 6f        ret
; dispatch table for 0d44 (vcmds)
0f90: dw $0d47  ; da - set instrument
0f92: dw $0d8e  ; db - set pan
0f94: dw $0da5  ; dc - pan fade
0f96: dw $0000  ; dd - undef, but slur
0f98: dw $0dc1  ; de - vibrato on
0f9a: dw $0dd5  ; df - vibrato off
0f9c: dw $0df0  ; e0 - master volume
0f9e: dw $0dfc  ; e1 - master volume fade
0fa0: dw $0e11  ; e2 - tempo
0fa2: dw $0e1d  ; e3 - tempo fade
0fa4: dw $0e35  ; e4 - global transpose
0fa6: dw $0e3b  ; e5 - tremolo on
0fa8: dw $0e4a  ; e6 - tremolo off
0faa: dw $0e73  ; e7 - voice volume base
0fac: dw $0e82  ; e8 - voice volume base fade
0fae: dw $0ea5  ; e9 - call subroutine
0fb0: dw $0dda  ; ea - vibrato fade
0fb2: dw $0e4f  ; eb - pitch envelope (release)
0fb4: dw $0e53  ; ec - pitch envelope (attack)
0fb6: dw $0000  ; ed - (undef)
0fb8: dw $0e9e  ; ee - tuning
0fba: dw $0ec9  ; ef - set echo vbits/volume
0fbc: dw $0f1d  ; f0 - disable echo
0fbe: dw $0f33  ; f1 - set echo delay, feedback, filter
0fc0: dw $0ef9  ; f2 - echo volume fade
; vcmd op lens?
0fc2: db         $02,$02,$03,$04,$04,$01 ; da-df
0fc8: db $02,$03,$02,$03,$02,$04,$01,$02 ; e0-e7
0fd0: db $03,$04,$02,$04,$04,$01,$02,$04 ; e8-ef
0fd8: db $01,$04,$04                     ; f0-f2
;
0fdb: f4 80     mov   a,$80+x
0fdd: f0 0c     beq   $0feb
0fdf: 09 48 5c  or    ($5c),($48)
0fe2: e8 40     mov   a,#$40
0fe4: 8d 02     mov   y,#$02
0fe6: 9b 80     dec   $80+x
0fe8: 3f 75 10  call  $1075
0feb: f4 b1     mov   a,$b1+x
0fed: fd        mov   y,a
0fee: f0 23     beq   $1013
0ff0: f5 70 03  mov   a,$0370+x
0ff3: de b0 1b  cbne  $b0+x,$1010
0ff6: 09 48 5c  or    ($5c),($48)
0ff9: f5 60 03  mov   a,$0360+x
0ffc: 10 07     bpl   $1005
0ffe: fc        inc   y
0fff: d0 04     bne   $1005
1001: e8 80     mov   a,#$80
1003: 2f 04     bra   $1009
1005: 60        clrc
1006: 95 62 03  adc   a,$0362+x
1009: d5 60 03  mov   $0360+x,a
100c: 3f 3a 12  call  $123a
100f: 2f 08     bra   $1019
1011: bb b0     inc   $b0+x
1013: f5 11 02  mov   a,$0211+x         ; volume from note
1016: 3f 4d 12  call  $124d             ; set voice vol from master/base/note
1019: f4 81     mov   a,$81+x
101b: d0 07     bne   $1024
101d: e4 48     mov   a,$48
101f: 24 5c     and   a,$5c
1021: d0 0a     bne   $102d
1023: 6f        ret
; do: pan fade and set volume
1024: e8 80     mov   a,#$80
1026: 8d 02     mov   y,#$02
1028: 9b 81     dec   $81+x
102a: 3f 75 10  call  $1075
102d: f5 81 02  mov   a,$0281+x
1030: fd        mov   y,a
1031: f5 80 02  mov   a,$0280+x
1034: da 10     movw  $10,ya            ; set $10/1 from voice pan
; set voice volume DSP regs with pan value from $10/1
1036: 7d        mov   a,x
1037: 9f        xcn   a
1038: 5c        lsr   a
1039: c4 12     mov   $12,a             ; $12 = voice X volume DSP reg
103b: eb 11     mov   y,$11
103d: f6 81 12  mov   a,$1281+y         ; next pan val from table
1040: 80        setc
1041: b6 80 12  sbc   a,$1280+y         ; pan val
1044: eb 10     mov   y,$10
1046: cf        mul   ya
1047: dd        mov   a,y
1048: eb 11     mov   y,$11
104a: 60        clrc
104b: 96 80 12  adc   a,$1280+y         ; add integer part to pan val
104e: fd        mov   y,a
104f: f5 71 03  mov   a,$0371+x         ; volume
1052: cf        mul   ya
1053: f5 a1 02  mov   a,$02a1+x         ; bits 7/6 will negate volume L/R
1056: 13 12 01  bbc0  $12,$105a
1059: 1c        asl   a
105a: 10 05     bpl   $1061
105c: dd        mov   a,y
105d: 48 ff     eor   a,#$ff
105f: bc        inc   a
1060: fd        mov   y,a
1061: dd        mov   a,y
1062: eb 12     mov   y,$12
1064: 3f 8f 06  call  $068f             ; set DSP vol if vbit 1D clear
1067: e8 00     mov   a,#$00
1069: 8d 14     mov   y,#$14
106b: 9a 10     subw  ya,$10
106d: da 10     movw  $10,ya            ; $10/11 = #$1400 - $10/11
106f: ab 12     inc   $12               ; go back and do R chan vol
1071: 33 12 c7  bbc1  $12,$103b
1074: 6f        ret
; add fade delta to value (set final value at end)
1075: da 14     movw  $14,ya
1077: d0 0f     bne   $1088
1079: 60        clrc
107a: 88 20     adc   a,#$20
107c: da 16     movw  $16,ya
107e: 7d        mov   a,x
107f: fd        mov   y,a
1080: e8 00     mov   a,#$00
1082: 2d        push  a
1083: f7 16     mov   a,($16)+y
1085: fc        inc   y
1086: 2f 12     bra   $109a
1088: 60        clrc
1089: 88 10     adc   a,#$10
108b: da 16     movw  $16,ya
108d: 7d        mov   a,x
108e: fd        mov   y,a
108f: f7 14     mov   a,($14)+y
1091: 60        clrc
1092: 97 16     adc   a,($16)+y
1094: 2d        push  a
1095: fc        inc   y
1096: f7 14     mov   a,($14)+y
1098: 97 16     adc   a,($16)+y
109a: d7 14     mov   ($14)+y,a
109c: dc        dec   y
109d: ae        pop   a
109e: d7 14     mov   ($14)+y,a
10a0: 6f        ret
; do: voice readahead
10a1: 40        setp
10a2: 9b 00     dec   $00+x
10a4: 20        clrp
10a5: f0 05     beq   $10ac
10a7: e8 02     mov   a,#$02
10a9: de 70 2c  cbne  $70+x,$10d7
10ac: f4 30     mov   a,$30+x
10ae: fb 31     mov   y,$31+x
10b0: da 14     movw  $14,ya
10b2: 8d 00     mov   y,#$00
10b4: f7 14     mov   a,($14)+y
10b6: f0 19     beq   $10d1
10b8: 30 05     bmi   $10bf
10ba: fc        inc   y
10bb: f7 14     mov   a,($14)+y
10bd: 10 fb     bpl   $10ba
10bf: 68 c6     cmp   a,#$c6
10c1: f0 15     beq   $10d8             ; tie?
10c3: 68 da     cmp   a,#$da
10c5: 90 0a     bcc   $10d1
10c7: 6d        push  y
10c8: fd        mov   y,a
10c9: ae        pop   a
10ca: 60        clrc
10cb: 96 e8 0e  adc   a,$0ee8+y         ; (FC2) vcmd op lens
10ce: fd        mov   y,a
10cf: 2f e3     bra   $10b4
10d1: e4 48     mov   a,$48
10d3: 8d 5c     mov   y,#$5c
10d5: 3f 8f 06  call  $068f             ; key off current voice now
10d8: f2 13     clr7  $13
10da: f4 90     mov   a,$90+x
10dc: f0 06     beq   $10e4
10de: e4 48     mov   a,$48
10e0: 24 1d     and   a,$1d
10e2: f0 2d     beq   $1111
10e4: e7 30     mov   a,($30+x)
10e6: 68 dd     cmp   a,#$dd
10e8: d0 40     bne   $112a
10ea: e4 48     mov   a,$48
10ec: 24 1d     and   a,$1d
10ee: f0 0b     beq   $10fb
10f0: 8f 04 10  mov   $10,#$04
10f3: 3f 60 12  call  $1260
10f6: 6e 10 fa  dbnz  $10,$10f2
10f9: 2f 16     bra   $1111
10fb: 3f 60 12  call  $1260
10fe: 3f 5e 12  call  $125e
1101: d4 91     mov   $91+x,a
1103: 3f 5e 12  call  $125e
1106: d4 90     mov   $90+x,a
1108: 3f 5e 12  call  $125e
110b: 60        clrc
110c: 84 43     adc   a,$43
110e: 3f 5d 0f  call  $0f5d
1111: f4 91     mov   a,$91+x
1113: f0 04     beq   $1119
1115: 9b 91     dec   $91+x
1117: 2f 11     bra   $112a
1119: e4 1d     mov   a,$1d
111b: 24 48     and   a,$48
111d: d0 0b     bne   $112a
111f: e2 13     set7  $13
1121: e8 b0     mov   a,#$b0
1123: 8d 02     mov   y,#$02
1125: 9b 90     dec   $90+x
1127: 3f 75 10  call  $1075
112a: f5 b1 02  mov   a,$02b1+x
112d: fd        mov   y,a
112e: f5 b0 02  mov   a,$02b0+x
1131: da 10     movw  $10,ya            ; note num -> $10/11
1133: f4 a1     mov   a,$a1+x
1135: f0 09     beq   $1140
1137: f5 40 03  mov   a,$0340+x
113a: 74 a0     cmp   a,$a0+x
113c: f0 06     beq   $1144
113e: bb a0     inc   $a0+x
1140: e3 13 52  bbs7  $13,$1195
1143: 6f        ret
1144: f5 41 03  mov   a,$0341+x
1147: f0 1d     beq   $1166
1149: 75 10 01  cmp   a,$0110+x
114c: d0 07     bne   $1155
114e: f5 51 03  mov   a,$0351+x
1151: d4 a1     mov   $a1+x,a
1153: 2f 11     bra   $1166
1155: f5 10 01  mov   a,$0110+x
1158: f0 02     beq   $115c
115a: f4 a1     mov   a,$a1+x
115c: 60        clrc
115d: 95 50 03  adc   a,$0350+x
1160: d4 a1     mov   $a1+x,a
1162: 40        setp
1163: bb 10     inc   $10+x
1165: 20        clrp
1166: f5 30 03  mov   a,$0330+x
1169: 60        clrc
116a: 95 31 03  adc   a,$0331+x
116d: d5 30 03  mov   $0330+x,a
;
1170: c4 12     mov   $12,a
1172: 1c        asl   a
1173: 1c        asl   a
1174: 90 02     bcc   $1178
1176: 48 ff     eor   a,#$ff
1178: fd        mov   y,a
1179: f4 a1     mov   a,$a1+x
117b: 68 f1     cmp   a,#$f1
117d: b0 06     bcs   $1185
117f: cf        mul   ya
1180: dd        mov   a,y
1181: 8d 00     mov   y,#$00
1183: 2f 03     bra   $1188
1185: 28 0f     and   a,#$0f
1187: cf        mul   ya
1188: f3 12 06  bbc7  $12,$1191
118b: da 12     movw  $12,ya
118d: ba 0e     movw  ya,$0e
118f: 9a 12     subw  ya,$12
1191: 7a 10     addw  ya,$10
1193: da 10     movw  $10,ya
1195: 5f 34 06  jmp   $0634
; per-voice fades/dsps?
1198: f2 13     clr7  $13
119a: f4 b1     mov   a,$b1+x
119c: f0 09     beq   $11a7
119e: f5 70 03  mov   a,$0370+x
11a1: de b0 03  cbne  $b0+x,$11a6
11a4: 3f 2d 12  call  $122d             ; voice vol calculations
11a7: f5 81 02  mov   a,$0281+x
11aa: fd        mov   y,a
11ab: f5 80 02  mov   a,$0280+x
11ae: da 10     movw  $10,ya            ; $10/11 = voice pan value
11b0: f4 81     mov   a,$81+x           ; voice pan fade counter
11b2: d0 05     bne   $11b9
11b4: e3 13 0c  bbs7  $13,$11c3
11b7: 2f 0d     bra   $11c6
11b9: f5 91 02  mov   a,$0291+x
11bc: fd        mov   y,a
11bd: f5 90 02  mov   a,$0290+x         ; pan fade delta
11c0: 3f 01 12  call  $1201             ; add delta (with mutations)?
11c3: 3f 36 10  call  $1036             ; set voice DSP regs, pan from $10/11
11c6: f2 13     clr7  $13
11c8: f5 b1 02  mov   a,$02b1+x
11cb: fd        mov   y,a
11cc: f5 b0 02  mov   a,$02b0+x
11cf: da 10     movw  $10,ya            ; notenum to $10/11
11d1: f4 90     mov   a,$90+x           ; pitch slide counter
11d3: f0 0e     beq   $11e3
11d5: f4 91     mov   a,$91+x
11d7: d0 0a     bne   $11e3
11d9: f5 c1 02  mov   a,$02c1+x
11dc: fd        mov   y,a
11dd: f5 c0 02  mov   a,$02c0+x
11e0: 3f ff 11  call  $11ff             ; add pitch slide delta
11e3: f4 a1     mov   a,$a1+x
11e5: d0 04     bne   $11eb
11e7: e3 13 ab  bbs7  $13,$1195
11ea: 6f        ret
11eb: f5 40 03  mov   a,$0340+x
11ee: de a0 f6  cbne  $a0+x,$11e6
11f1: eb 49     mov   y,$49
11f3: f5 31 03  mov   a,$0331+x
11f6: cf        mul   ya
11f7: dd        mov   a,y
11f8: 60        clrc
11f9: 95 30 03  adc   a,$0330+x
11fc: 5f 70 11  jmp   $1170
;
11ff: e2 13     set7  $13
;
1201: da 16     movw  $16,ya
1203: cb 12     mov   $12,y
1205: f3 12 06  bbc7  $12,$120e
1208: ba 0e     movw  ya,$0e
120a: 9a 16     subw  ya,$16
120c: da 16     movw  $16,ya
120e: eb 49     mov   y,$49
1210: e4 16     mov   a,$16
1212: cf        mul   ya
1213: cb 14     mov   $14,y
1215: 8f 00 15  mov   $15,#$00
1218: eb 49     mov   y,$49
121a: e4 17     mov   a,$17
121c: cf        mul   ya
121d: 7a 14     addw  ya,$14
121f: f3 12 06  bbc7  $12,$1228
1222: da 14     movw  $14,ya
1224: ba 0e     movw  ya,$0e
1226: 9a 14     subw  ya,$14
1228: 7a 10     addw  ya,$10
122a: da 10     movw  $10,ya
122c: 6f        ret
;
122d: e2 13     set7  $13
122f: eb 49     mov   y,$49             ; tempo counter (i.e. fractional part of tick counter)
1231: f5 62 03  mov   a,$0362+x         ; tremolo rate
1234: cf        mul   ya
1235: dd        mov   a,y
1236: 60        clrc
1237: 95 60 03  adc   a,$0360+x
123a: 1c        asl   a
123b: 90 02     bcc   $123f
123d: 48 ff     eor   a,#$ff
123f: fb b1     mov   y,$b1+x           ; tremolo depth
1241: cf        mul   ya
1242: f5 11 02  mov   a,$0211+x         ; per-note volume (velocity)
1245: cf        mul   ya
1246: dd        mov   a,y
1247: 48 ff     eor   a,#$ff
1249: 80        setc
124a: 95 11 02  adc   a,$0211+x
124d: fd        mov   y,a
; set voice volume from master/base/A
124e: f5 41 02  mov   a,$0241+x         ; channel volume
1251: cf        mul   ya
1252: e4 57     mov   a,$57             ; master volume
1254: cf        mul   ya
1255: dd        mov   a,y
1256: cf        mul   ya
1257: dd        mov   a,y               ; (^2 exponential)
1258: d5 71 03  mov   $0371+x,a         ; voice volume
125b: 6f        ret
; get next vcmd stream byte for voice $46
125c: f8 46     mov   x,$46
; get next vcmd stream byte into A/Y
125e: e7 30     mov   a,($30+x)
1260: bb 30     inc   $30+x
1262: d0 02     bne   $1266
1264: bb 31     inc   $31+x
1266: fd        mov   y,a
1267: 6f        ret
; for 0C89 - note dur%'s
1268: db $33,$66,$80,$99,$b3,$cc,$e6,$ff
; per-note velocity values
1270: db $08,$12,$1b,$24,$2c,$35,$3e,$47,$51,$5a,$62,$6b,$7d,$8f,$a1,$b3
; pan table (max pan full L = $14.00)
1280: db $00,$01,$03,$07,$0d,$15,$1e,$29,$34,$42,$51,$5e,$67,$6e,$73,$77
1290: db $7a,$7c,$7d,$7e,$7f
; default values (1295) for DSP regs (12A1)
;  mvol L/R max, echo vol L/R zero, FLG = echo off/noise 400HZ
;  echo feedback = $60, echo/pitchmod/noise vbits off
;  source dir = $8000, echo ram = $6000, echo delay = 32ms
1295: db $7f,$7f,$00,$00,$2f,$60,$00,$00,$00,$80,$60,$02 
12a1: db $0c,$1c,$2c,$3c,$6c,$0d,$2d,$3d,$4d,$5d,$6d,$7d
; echo filters 0 and 1
12ad: db $ff,$08,$17,$24,$24,$17,$08,$ff
12b5: db $7f,$00,$00,$00,$00,$00,$00,$00
; get pitch from note number in A (with octave correction) to YA
12bd: 8d 00     mov   y,#$00
12bf: 1c        asl   a
12c0: cd 18     mov   x,#$18
12c2: 9e        div   ya,x
12c3: 5d        mov   x,a
12c4: f6 da 12  mov   a,$12da+y
12c7: c4 16     mov   $16,a
12c9: f6 d9 12  mov   a,$12d9+y
12cc: 2f 04     bra   $12d2
12ce: 4b 16     lsr   $16
12d0: 7c        ror   a
12d1: 3d        inc   x
12d2: c8 06     cmp   x,#$06
12d4: d0 f8     bne   $12ce
12d6: eb 16     mov   y,$16
12d8: 6f        ret
; pitch table
12d9: dw $10be
12db: dw $11bd
12dd: dw $12cb
12df: dw $13e9
12e1: dw $1518
12e3: dw $1659
12e5: dw $17ad
12e7: dw $1916
12e9: dw $1a94
12eb: dw $1c28
12ed: dw $1dd5
12ef: dw $1f9b
12f0: db $00
; do: standardish SPU transfer
12f2: e8 aa     mov   a,#$aa
12f4: c5 f4 00  mov   $00f4,a
12f7: e8 bb     mov   a,#$bb
12f9: c5 f5 00  mov   $00f5,a
12fc: e5 f4 00  mov   a,$00f4
12ff: 68 cc     cmp   a,#$cc
1301: d0 f9     bne   $12fc
1303: 2f 20     bra   $1325
1305: ec f4 00  mov   y,$00f4
1308: d0 fb     bne   $1305
130a: 5e f4 00  cmp   y,$00f4
130d: d0 0f     bne   $131e
130f: e5 f5 00  mov   a,$00f5
1312: cc f4 00  mov   $00f4,y
1315: d7 14     mov   ($14)+y,a
1317: fc        inc   y
1318: d0 f0     bne   $130a
131a: ab 15     inc   $15
131c: 2f ec     bra   $130a
131e: 10 ea     bpl   $130a
1320: 5e f4 00  cmp   y,$00f4
1323: 10 e5     bpl   $130a
1325: e5 f6 00  mov   a,$00f6
1328: ec f7 00  mov   y,$00f7
132b: da 14     movw  $14,ya
132d: ec f4 00  mov   y,$00f4
1330: e5 f5 00  mov   a,$00f5
1333: cc f4 00  mov   $00f4,y
1336: d0 cd     bne   $1305
1338: cd 31     mov   x,#$31
133a: c9 f1 00  mov   $00f1,x           ; reset ports, keep timer running
133d: 6f        ret
