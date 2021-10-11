; Super Mario All-Stars - loveemu labo
; Disassembler: spcdas v0.01
; 
; The game was also released as:
; * Super Mario Collection (J)

0500: 20        clrp
0501: cd cf     mov   x,#$cf
0503: bd        mov   sp,x              ; set SP to (01)cf
0504: e8 00     mov   a,#$00
0506: 5d        mov   x,a
0507: af        mov   (x)+,a
0508: c8 e0     cmp   x,#$e0
050a: d0 fb     bne   $0507             ; zero 00-e0
050c: cd 00     mov   x,#$00
050e: d5 00 02  mov   $0200+x,a
0511: 3d        inc   x
0512: d0 fa     bne   $050e             ; zero 0200-02ff
0514: d5 00 03  mov   $0300+x,a
0517: 3d        inc   x
0518: d0 fa     bne   $0514             ; zero 0300-03ff
051a: bc        inc   a
051b: 3f 11 0c  call  $0c11             ; set echo delay to 1 (16ms)
051e: a2 48     set5  $48
0520: 3f 36 07  call  $0736
0523: e8 60     mov   a,#$60
0525: 8d 0c     mov   y,#$0c
0527: 3f fc 06  call  $06fc             ; master vol L = $60
052a: 8d 1c     mov   y,#$1c
052c: 3f fc 06  call  $06fc             ; master vol R = $60
052f: e8 3c     mov   a,#$3c
0531: 8d 5d     mov   y,#$5d
0533: 3f fc 06  call  $06fc             ; source dir = $3c00
0536: e8 f0     mov   a,#$f0
0538: c5 f1 00  mov   $00f1,a           ; reset ports, disable timers
053b: e8 10     mov   a,#$10
053d: c5 fa 00  mov   $00fa,a           ; set timer0 latch to #$10 (500 Hz, 2ms)
0540: c4 53     mov   $53,a
0542: e8 01     mov   a,#$01
0544: c5 f1 00  mov   $00f1,a           ; start timer0
; main loop
0547: 8d 0a     mov   y,#$0a            ; set DSP regs from shadow:
0549: ad 05     cmp   y,#$05
054b: f0 07     beq   $0554
054d: b0 08     bcs   $0557
054f: 69 4d 4c  cmp   ($4c),($4d)
0552: d0 11     bne   $0565
0554: e3 4c 0e  bbs7  $4c,$0565
0557: f6 98 0f  mov   a,$0f98+y
055a: c5 f2 00  mov   $00f2,a
055d: f6 a2 0f  mov   a,$0fa2+y
0560: 5d        mov   x,a
0561: e6        mov   a,(x)
0562: c5 f3 00  mov   $00f3,a           ; write to DSP reg
0565: fe e2     dbnz  y,$0549           ; loop for each reg
0567: cb 45     mov   $45,y
0569: cb 46     mov   $46,y
056b: e4 18     mov   a,$18
056d: 44 19     eor   a,$19
056f: 5c        lsr   a
0570: 5c        lsr   a
0571: ed        notc
0572: 6b 18     ror   $18
0574: 6b 19     ror   $19
0576: ec fd 00  mov   y,$00fd           ; wait for counter0 increment
0579: f0 fb     beq   $0576
057b: 6d        push  y
057c: e8 38     mov   a,#$38
057e: cf        mul   ya
057f: 60        clrc
0580: 84 43     adc   a,$43
0582: c4 43     mov   $43,a
0584: 90 2b     bcc   $05b1
0586: 3f 2e 10  call  $102e
0589: cd 00     mov   x,#$00
058b: 3f ed 05  call  $05ed
058e: 3f c1 14  call  $14c1
0591: 3f e4 13  call  $13e4
0594: cd 01     mov   x,#$01
0596: 3f e7 05  call  $05e7
0599: 3f d6 11  call  $11d6
059c: cd 03     mov   x,#$03
059e: 3f ed 05  call  $05ed
05a1: 69 4d 4c  cmp   ($4c),($4d)
05a4: f0 0b     beq   $05b1
05a6: ac c7 03  inc   $03c7
05a9: e5 c7 03  mov   a,$03c7
05ac: 5c        lsr   a
05ad: b0 02     bcs   $05b1
05af: ab 4c     inc   $4c
05b1: e4 53     mov   a,$53
05b3: ee        pop   y
05b4: cf        mul   ya
05b5: 60        clrc
05b6: 84 51     adc   a,$51
05b8: c4 51     mov   $51,a
05ba: 90 0b     bcc   $05c7
05bc: 3f bb 08  call  $08bb
05bf: cd 02     mov   x,#$02
05c1: 3f ed 05  call  $05ed
05c4: 5f 47 05  jmp   $0547

05c7: e4 06     mov   a,$06
05c9: f0 12     beq   $05dd
05cb: cd 00     mov   x,#$00
05cd: 8f 01 47  mov   $47,#$01
05d0: f4 31     mov   a,$31+x
05d2: f0 03     beq   $05d7
05d4: 3f c1 0e  call  $0ec1
05d7: 3d        inc   x
05d8: 3d        inc   x
05d9: 0b 47     asl   $47
05db: d0 f3     bne   $05d0
05dd: e4 26     mov   a,$26
05df: f0 03     beq   $05e4
05e1: 3f 03 07  call  $0703
05e4: 5f 47 05  jmp   $0547

05e7: e4 05     mov   a,$05
05e9: 04 26     or    a,$26
05eb: 2f 02     bra   $05ef
05ed: f4 d2     mov   a,$d2+x
05ef: d5 f4 00  mov   $00f4+x,a
05f2: f5 f4 00  mov   a,$00f4+x
05f5: 75 f4 00  cmp   a,$00f4+x
05f8: d0 f8     bne   $05f2
05fa: fd        mov   y,a
05fb: f4 08     mov   a,$08+x
05fd: db 08     mov   $08+x,y
05ff: de 08 02  cbne  $08+x,$0604
0602: 8d 00     mov   y,#$00
0604: db 00     mov   $00+x,y
0606: 6f        ret

; handle a note vcmd (80-df)
0607: ad ca     cmp   y,#$ca
0609: 90 05     bcc   $0610
; vcmds ca-df - percussion note
060b: 3f 22 0a  call  $0a22             ; set sample
060e: 8d a4     mov   y,#$a4            ; dispatch as note $a4
; vcmds 80-c7,c8,c9 - note/tie/rest
0610: ad c8     cmp   y,#$c8
0612: b0 f2     bcs   $0606             ; skip if tie/rest
0614: e4 1a     mov   a,$1a
0616: 24 47     and   a,$47
0618: d0 ec     bne   $0606
; vcmds 80-c7 - note (note number in Y)
061a: dd        mov   a,y
061b: 28 7f     and   a,#$7f
061d: 60        clrc
061e: 84 50     adc   a,$50             ; add global transpose
0620: 60        clrc
0621: 95 f0 02  adc   a,$02f0+x         ; add per-voice transpose
0624: d5 61 03  mov   $0361+x,a
0627: f5 81 03  mov   a,$0381+x
062a: d5 60 03  mov   $0360+x,a
062d: f5 b1 02  mov   a,$02b1+x
0630: 5c        lsr   a
0631: e8 00     mov   a,#$00
0633: 7c        ror   a
0634: d5 a0 02  mov   $02a0+x,a
0637: e8 00     mov   a,#$00
0639: d4 b0     mov   $b0+x,a
063b: d5 00 01  mov   $0100+x,a
063e: d5 d0 02  mov   $02d0+x,a
0641: d4 c0     mov   $c0+x,a
0643: 09 47 5e  or    ($5e),($47)       ; set volume changed flg
0646: 09 47 45  or    ($45),($47)       ; set key on shadow bit
0649: f5 80 02  mov   a,$0280+x         ; pitch envelope counter
064c: d4 a0     mov   $a0+x,a           ; portamento counter
064e: f0 1e     beq   $066e
0650: f5 81 02  mov   a,$0281+x
0653: d4 a1     mov   $a1+x,a
0655: f5 90 02  mov   a,$0290+x         ; pitch envelope mode (0:attack / 1:release)
0658: d0 0a     bne   $0664
065a: f5 61 03  mov   a,$0361+x
065d: 80        setc
065e: b5 91 02  sbc   a,$0291+x
0661: d5 61 03  mov   $0361+x,a
0664: f5 91 02  mov   a,$0291+x
0667: 60        clrc
; set DSP pitch from $10/1
0668: 95 61 03  adc   a,$0361+x
066b: 3f 98 0c  call  $0c98
066e: 3f b0 0c  call  $0cb0
0671: 8d 00     mov   y,#$00
0673: e4 11     mov   a,$11
0675: 80        setc
0676: a8 34     sbc   a,#$34
0678: b0 09     bcs   $0683
067a: e4 11     mov   a,$11
067c: 80        setc
067d: a8 13     sbc   a,#$13
067f: b0 06     bcs   $0687
0681: dc        dec   y
0682: 1c        asl   a
0683: 7a 10     addw  ya,$10
0685: da 10     movw  $10,ya
0687: 4d        push  x
0688: e4 11     mov   a,$11
; get pitch from note number in A (with octave correction)
068a: 1c        asl   a
068b: 8d 00     mov   y,#$00
068d: cd 18     mov   x,#$18
068f: 9e        div   ya,x
0690: 5d        mov   x,a
0691: f6 ae 0f  mov   a,$0fae+y
0694: c4 15     mov   $15,a
0696: f6 ad 0f  mov   a,$0fad+y
0699: c4 14     mov   $14,a             ; set $14/5 from pitch table
069b: f6 b0 0f  mov   a,$0fb0+y
069e: 2d        push  a
069f: f6 af 0f  mov   a,$0faf+y
06a2: ee        pop   y
06a3: 9a 14     subw  ya,$14
06a5: eb 10     mov   y,$10
06a7: cf        mul   ya
06a8: dd        mov   a,y
06a9: 8d 00     mov   y,#$00
06ab: 7a 14     addw  ya,$14
06ad: cb 15     mov   $15,y
06af: 1c        asl   a
06b0: 2b 15     rol   $15
06b2: c4 14     mov   $14,a
06b4: 2f 04     bra   $06ba
06b6: 4b 15     lsr   $15
06b8: 7c        ror   a
06b9: 3d        inc   x
06ba: c8 06     cmp   x,#$06
06bc: d0 f8     bne   $06b6
06be: c4 14     mov   $14,a
06c0: ce        pop   x
06c1: f5 20 02  mov   a,$0220+x
06c4: eb 15     mov   y,$15
06c6: cf        mul   ya
06c7: da 16     movw  $16,ya
06c9: f5 20 02  mov   a,$0220+x
06cc: eb 14     mov   y,$14
06ce: cf        mul   ya
06cf: 6d        push  y
06d0: f5 21 02  mov   a,$0221+x
06d3: eb 14     mov   y,$14
06d5: cf        mul   ya
06d6: 7a 16     addw  ya,$16
06d8: da 16     movw  $16,ya
06da: f5 21 02  mov   a,$0221+x
06dd: eb 15     mov   y,$15
06df: cf        mul   ya
06e0: fd        mov   y,a
06e1: ae        pop   a
06e2: 7a 16     addw  ya,$16
06e4: da 16     movw  $16,ya
06e6: 7d        mov   a,x               ; set voice X pitch DSP reg from $16/7
06e7: 9f        xcn   a                 ;  (if vbit clear in $1a)
06e8: 5c        lsr   a
06e9: 08 02     or    a,#$02
06eb: fd        mov   y,a               ; Y = voice X pitch DSP reg
06ec: e4 16     mov   a,$16
06ee: 3f f4 06  call  $06f4
06f1: fc        inc   y
06f2: e4 17     mov   a,$17
; write A to DSP reg Y if vbit clear in $1a
06f4: 2d        push  a
06f5: e4 47     mov   a,$47
06f7: 24 1a     and   a,$1a
06f9: ae        pop   a
06fa: d0 06     bne   $0702
; write A to DSP reg Y
06fc: cc f2 00  mov   $00f2,y
06ff: c5 f3 00  mov   $00f3,a
0702: 6f        ret

0703: 8b 24     dec   $24
0705: e4 24     mov   a,$24
0707: 28 03     and   a,#$03
0709: 8d 3f     mov   y,#$3f
070b: cf        mul   ya
070c: fd        mov   y,a
070d: 8f 07 12  mov   $12,#$07
0710: fc        inc   y
0711: cd 04     mov   x,#$04
0713: aa 19 c0  mov1  c,$1803,1
0716: 8a 19 a0  eor1  c,$1403,1
0719: 2b 18     rol   $18
071b: 2b 19     rol   $19
071d: e4 19     mov   a,$19
071f: 28 ff     and   a,#$ff
0721: 08 11     or    a,#$11
0723: d6 00 fe  mov   $fe00+y,a
0726: fc        inc   y
0727: e4 18     mov   a,$18
0729: 08 11     or    a,#$11
072b: d6 00 fe  mov   $fe00+y,a
072e: fc        inc   y
072f: 1d        dec   x
0730: d0 e1     bne   $0713
0732: 6e 12 db  dbnz  $12,$0710
0735: 6f        ret

0736: 8d 00     mov   y,#$00
0738: cd 1b     mov   x,#$1b
073a: e8 96     mov   a,#$96
073c: d6 00 fe  mov   $fe00+y,a
073f: fc        inc   y
0740: fc        inc   y
0741: fc        inc   y
0742: fc        inc   y
0743: fc        inc   y
0744: fc        inc   y
0745: fc        inc   y
0746: fc        inc   y
0747: fc        inc   y
0748: 1d        dec   x
0749: d0 f1     bne   $073c
074b: bc        inc   a
074c: d6 00 fe  mov   $fe00+y,a
074f: 8d fe     mov   y,#$fe
0751: e8 00     mov   a,#$00
0753: c5 80 3c  mov   $3c80,a
0756: cc 81 3c  mov   $3c81,y
0759: c5 82 3c  mov   $3c82,a
075c: cc 83 3c  mov   $3c83,y
075f: e4 18     mov   a,$18
0761: 04 19     or    a,$19
0763: d0 02     bne   $0767
0765: ab 18     inc   $18
0767: 6f        ret

0768: e8 00     mov   a,#$00
076a: 8d 2c     mov   y,#$2c
076c: 3f fc 06  call  $06fc
076f: 8d 3c     mov   y,#$3c
0771: 3f fc 06  call  $06fc
0774: e8 ff     mov   a,#$ff
0776: 8d 5c     mov   y,#$5c
0778: 3f fc 06  call  $06fc
077b: 3f d2 0f  call  $0fd2
077e: e8 00     mov   a,#$00
0780: c5 ca 03  mov   $03ca,a
0783: c4 04     mov   $04,a
0785: c4 05     mov   $05,a
0787: c4 07     mov   $07,a
0789: c4 26     mov   $26,a
078b: c4 1a     mov   $1a,a
078d: c5 c8 03  mov   $03c8,a
0790: e5 f8 03  mov   a,$03f8
0793: d0 04     bne   $0799
0795: e8 00     mov   a,#$00
0797: c4 06     mov   $06,a
0799: 6f        ret

079a: 8d 00     mov   y,#$00
079c: cc c8 03  mov   $03c8,y
079f: eb 26     mov   y,$26
07a1: f0 03     beq   $07a6
07a3: 3f a9 13  call  $13a9
07a6: cd 90     mov   x,#$90
07a8: d8 5a     mov   $5a,x
07aa: c9 ca 03  mov   $03ca,x
07ad: e8 00     mov   a,#$00
07af: c4 5b     mov   $5b,a
07b1: 80        setc
07b2: a4 59     sbc   a,$59
07b4: 3f bb 0c  call  $0cbb
07b7: da 5c     movw  $5c,ya
07b9: 5f c9 08  jmp   $08c9

07bc: e8 00     mov   a,#$00
07be: c5 ca 03  mov   $03ca,a
07c1: c4 5a     mov   $5a,a
07c3: e5 f1 03  mov   a,$03f1
07c6: d0 1e     bne   $07e6
07c8: e4 59     mov   a,$59
07ca: c5 f1 03  mov   $03f1,a
07cd: e8 70     mov   a,#$70
07cf: c4 59     mov   $59,a
07d1: 5f c9 08  jmp   $08c9

07d4: e5 f1 03  mov   a,$03f1
07d7: f0 0d     beq   $07e6
07d9: e5 f1 03  mov   a,$03f1
07dc: c4 59     mov   $59,a
07de: e8 00     mov   a,#$00
07e0: c5 f1 03  mov   $03f1,a
07e3: 5f c9 08  jmp   $08c9

07e6: 6f        ret

07e7: 68 f1     cmp   a,#$f1
07e9: f0 d1     beq   $07bc
07eb: 68 f2     cmp   a,#$f2
07ed: f0 e5     beq   $07d4
07ef: 68 f0     cmp   a,#$f0
07f1: f0 13     beq   $0806
07f3: 68 f3     cmp   a,#$f3
07f5: f0 a3     beq   $079a
07f7: 30 a6     bmi   $079f
07f9: 68 19     cmp   a,#$19
07fb: 90 28     bcc   $0825
07fd: 6f        ret

07fe: 8c ca 03  dec   $03ca
0801: f0 03     beq   $0806
0803: 5f da 08  jmp   $08da

0806: e4 1a     mov   a,$1a
0808: 48 ff     eor   a,#$ff
080a: 0e 46 00  tset1 $0046
080d: 8f 00 06  mov   $06,#$00
0810: 8f 00 d4  mov   $d4,#$00
0813: 8f 00 47  mov   $47,#$00
0816: 6f        ret

; read $40/1 into YA with advancing the ptr
0817: 8d 00     mov   y,#$00
0819: f7 40     mov   a,($40)+y
081b: 3a 40     incw  $40
081d: 2d        push  a
081e: f7 40     mov   a,($40)+y
0820: 3a 40     incw  $40
0822: fd        mov   y,a
0823: ae        pop   a
0824: 6f        ret

; play song in A
0825: 60        clrc
0826: 68 12     cmp   a,#$12
0828: f0 22     beq   $084c
082a: 68 07     cmp   a,#$07
082c: f0 10     beq   $083e
082e: 68 09     cmp   a,#$09
0830: 90 1a     bcc   $084c
0832: 68 0d     cmp   a,#$0d
0834: f0 16     beq   $084c
0836: 68 11     cmp   a,#$11
0838: f0 12     beq   $084c
083a: 68 14     cmp   a,#$14
083c: f0 0e     beq   $084c
083e: 8d 00     mov   y,#$00
0840: cc c8 03  mov   $03c8,y
0843: eb 26     mov   y,$26
0845: f0 05     beq   $084c
0847: 2d        push  a
0848: 3f a9 13  call  $13a9
084b: ae        pop   a
084c: cd 00     mov   x,#$00
084e: c9 ca 03  mov   $03ca,x
0851: c9 f1 03  mov   $03f1,x
0854: c4 06     mov   $06,a
0856: 60        clrc
0857: 1c        asl   a
0858: 5d        mov   x,a
0859: f5 ff bf  mov   a,$bfff+x
085c: fd        mov   y,a
085d: d0 03     bne   $0862
085f: c4 06     mov   $06,a
0861: 6f        ret
0862: f5 fe bf  mov   a,$bffe+x
0865: da 40     movw  $40,ya
0867: 8f 02 0d  mov   $0d,#$02
086a: e4 1a     mov   a,$1a
086c: 48 ff     eor   a,#$ff
086e: 0e 46 00  tset1 $0046
0871: 6f        ret

; reset song params
0872: cd 0e     mov   x,#$0e
0874: 8f 80 47  mov   $47,#$80          ; last voice
0877: e4 47     mov   a,$47
0879: 24 1a     and   a,$1a
087b: 28 20     and   a,#$20
087d: d0 23     bne   $08a2
087f: e8 ff     mov   a,#$ff
0881: d5 01 03  mov   $0301+x,a         ; voice volume = $ff
0884: e8 0a     mov   a,#$0a
0886: 3f 7b 0a  call  $0a7b             ; pan = $0a.00
0889: d5 11 02  mov   $0211+x,a
088c: d5 81 03  mov   $0381+x,a
088f: d5 f0 02  mov   $02f0+x,a
0892: d5 80 02  mov   $0280+x,a
0895: d5 e1 03  mov   $03e1+x,a
0898: d5 e0 03  mov   $03e0+x,a
089b: d5 a1 03  mov   $03a1+x,a
089e: d4 b1     mov   $b1+x,a
08a0: d4 c1     mov   $c1+x,a
08a2: 1d        dec   x
08a3: 1d        dec   x
08a4: 4b 47     lsr   $47
08a6: d0 cf     bne   $0877             ; loop for each voice
08a8: c4 5a     mov   $5a,a             ; zero master vol fade counter
08aa: c4 68     mov   $68,a             ; zero echo vol fade counter
08ac: c4 54     mov   $54,a             ; zero tempo fade counter
08ae: c4 50     mov   $50,a             ; zero global transpose
08b0: c4 42     mov   $42,a             ; zero block repeat count
08b2: c4 5f     mov   $5f,a             ; 
08b4: 8f c0 59  mov   $59,#$c0          ; master vol
08b7: 8f 20 53  mov   $53,#$20          ; tempo
08ba: 6f        ret

08bb: e4 02     mov   a,$02
08bd: f0 0a     beq   $08c9
08bf: cd 00     mov   x,#$00
08c1: c9 f8 03  mov   $03f8,x
08c4: c4 d4     mov   $d4,a
08c6: 5f e7 07  jmp   $07e7

08c9: e5 f8 03  mov   a,$03f8
08cc: d0 ec     bne   $08ba
08ce: e4 06     mov   a,$06
08d0: f0 e8     beq   $08ba
08d2: e5 ca 03  mov   a,$03ca
08d5: f0 03     beq   $08da
08d7: 5f fe 07  jmp   $07fe

08da: e4 0d     mov   a,$0d
08dc: f0 57     beq   $0935
;
08de: 6e 0d 91  dbnz  $0d,$0872
08e1: 3f 17 08  call  $0817             ; read block addr from $40/1, advance ptr
08e4: d0 17     bne   $08fd             ; load start addresses, if hi-byte is non zero
08e6: fd        mov   y,a               ; refetch lo-byte
08e7: d0 03     bne   $08ec             ; set/dec repeat count
08e9: 5f 06 08  jmp   $0806             ; key off, return if also zero
; set/dec repeat count
08ec: 8b 42     dec   $42
08ee: 10 02     bpl   $08f2
08f0: c4 42     mov   $42,a
08f2: 3f 17 08  call  $0817             ; read next word as well
08f5: f8 42     mov   x,$42
08f7: f0 e8     beq   $08e1
08f9: da 40     movw  $40,ya            ;   "goto" that address
08fb: 2f e4     bra   $08e1             ; continue
; load start addresses - hi-byte not zero
08fd: da 16     movw  $16,ya
08ff: 8d 0f     mov   y,#$0f
0901: f7 16     mov   a,($16)+y
0903: d6 30 00  mov   $0030+y,a
0906: dc        dec   y
0907: 10 f8     bpl   $0901             ; set all reading ptrs
0909: cd 00     mov   x,#$00
090b: 8f 01 47  mov   $47,#$01          ; first voice
090e: f4 31     mov   a,$31+x
0910: f0 0a     beq   $091c
0912: f5 11 02  mov   a,$0211+x
0915: d0 05     bne   $091c             ; if vptr hi != 0
0917: e8 00     mov   a,#$00
0919: 3f 22 0a  call  $0a22             ; set instrument #0 if not set
091c: e8 00     mov   a,#$00
091e: d4 80     mov   $80+x,a           ; zero subroutine repeat counter
0920: 2d        push  a
0921: e4 47     mov   a,$47
0923: 24 1a     and   a,$1a
0925: ae        pop   a
0926: d0 04     bne   $092c
0928: d4 91     mov   $91+x,a           ; zero pan fade counter
092a: d4 90     mov   $90+x,a           ; zero voice vol fade counter
092c: bc        inc   a
092d: d4 70     mov   $70+x,a           ; set duration counter to 1
092f: 3d        inc   x
0930: 3d        inc   x
0931: 0b 47     asl   $47               ; next voice
0933: d0 d9     bne   $090e             ; foreach voice
0935: cd 00     mov   x,#$00
0937: d8 5e     mov   $5e,x
0939: 8f 01 47  mov   $47,#$01          ; first voice
093c: d8 44     mov   $44,x
093e: f4 31     mov   a,$31+x
0940: f0 6e     beq   $09b0             ; next if vptr hi zero
0942: 9b 70     dec   $70+x             ; dec duration counter
0944: d0 64     bne   $09aa             ; if not zero, skip to voice readahead
0946: 3f 18 0a  call  $0a18             ; read vcmd into A and Y
0949: d0 17     bne   $0962
; vcmd 00 - end repeat/return
094b: f4 80     mov   a,$80+x
094d: f0 92     beq   $08e1             ; read next block if loop has been done
; repeat / return from subroutine
094f: 3f a6 0b  call  $0ba6             ; jump to loop start addr
0952: 9b 80     dec   $80+x             ; dec repeat count
0954: d0 f0     bne   $0946             ; if the loop has been done
0956: f5 30 02  mov   a,$0230+x
0959: d4 30     mov   $30+x,a
095b: f5 31 02  mov   a,$0231+x
095e: d4 31     mov   $31+x,a           ; back to return addr instead
0960: 2f e4     bra   $0946             ; then continue
; vcmd branches
0962: 30 20     bmi   $0984             ; vcmds 01-7f - note info:
0964: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
0967: 3f 18 0a  call  $0a18             ;   read next byte
096a: 30 18     bmi   $0984             ;   if note note then
096c: 2d        push  a
096d: 9f        xcn   a
096e: 28 07     and   a,#$07
0970: fd        mov   y,a
0971: f6 e8 3e  mov   a,$3ee8+y
0974: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
0977: ae        pop   a
0978: 28 0f     and   a,#$0f
097a: fd        mov   y,a
097b: f6 f0 3e  mov   a,$3ef0+y
097e: d5 10 02  mov   $0210+x,a         ;   set per-note vol from low nybble
0981: 3f 18 0a  call  $0a18             ;   read vcmd into A and Y
; vcmd branches 80-ff
0984: 68 e0     cmp   a,#$e0
0986: 90 05     bcc   $098d
0988: 3f 06 0a  call  $0a06             ; vcmds e0-ff
098b: 2f b9     bra   $0946
; vcmds 80-df - note
098d: 2d        push  a
098e: e4 47     mov   a,$47
0990: 24 1a     and   a,$1a
0992: ae        pop   a
0993: d0 03     bne   $0998
0995: 3f 07 06  call  $0607             ; handle note cmd if vbit $1a clear
0998: f5 00 02  mov   a,$0200+x
099b: d4 70     mov   $70+x,a
099d: fd        mov   y,a
099e: f5 01 02  mov   a,$0201+x
09a1: cf        mul   ya
09a2: dd        mov   a,y
09a3: d0 01     bne   $09a6
09a5: bc        inc   a
09a6: d4 71     mov   $71+x,a           ; set actual key-off dur counter
09a8: 2f 03     bra   $09ad
09aa: 3f e2 0d  call  $0de2             ; do readahead
09ad: 3f 67 0c  call  $0c67
09b0: 3d        inc   x
09b1: 3d        inc   x
09b2: 0b 47     asl   $47
09b4: f0 03     beq   $09b9
09b6: 5f 3c 09  jmp   $093c

09b9: e4 54     mov   a,$54             ; tempo fade counter
09bb: f0 0b     beq   $09c8
09bd: ba 56     movw  ya,$56
09bf: 7a 52     addw  ya,$52            ; add tempo fade to tempo
09c1: 6e 54 02  dbnz  $54,$09c6
09c4: ba 54     movw  ya,$54            ; last time: move tempo target to tempo
09c6: da 52     movw  $52,ya
09c8: e4 68     mov   a,$68             ; echo vol fade counter
09ca: f0 15     beq   $09e1
09cc: ba 64     movw  ya,$64
09ce: 7a 60     addw  ya,$60            ; add echo L delta to echo L vol
09d0: da 60     movw  $60,ya
09d2: ba 66     movw  ya,$66
09d4: 7a 62     addw  ya,$62            ; add echo R delta to echo R vol
09d6: 6e 68 06  dbnz  $68,$09df
09d9: ba 68     movw  ya,$68
09db: da 60     movw  $60,ya
09dd: eb 6a     mov   y,$6a
09df: da 62     movw  $62,ya
09e1: e4 5a     mov   a,$5a             ; master vol fade counter
09e3: f0 0e     beq   $09f3
09e5: ba 5c     movw  ya,$5c
09e7: 7a 58     addw  ya,$58            ; add master vol delta to value
09e9: 6e 5a 02  dbnz  $5a,$09ee
09ec: ba 5a     movw  ya,$5a
09ee: da 58     movw  $58,ya
09f0: 8f ff 5e  mov   $5e,#$ff          ; set all vol chg flags
09f3: cd 00     mov   x,#$00
09f5: 8f 01 47  mov   $47,#$01          ; first voice
09f8: f4 31     mov   a,$31+x
09fa: f0 03     beq   $09ff
09fc: 3f 28 0d  call  $0d28             ; do per-voice fades
09ff: 3d        inc   x
0a00: 3d        inc   x
0a01: 0b 47     asl   $47
0a03: d0 f3     bne   $09f8
0a05: 6f        ret

; dispatch vcmd in A (e0-ff)
0a06: 1c        asl   a                 ; e0-ff => c0-fe (8 bit)
0a07: fd        mov   y,a
0a08: f6 18 0c  mov   a,$0c18+y
0a0b: 2d        push  a
0a0c: f6 17 0c  mov   a,$0c17+y
0a0f: 2d        push  a                 ; push jump address from table
0a10: dd        mov   a,y
0a11: 5c        lsr   a
0a12: fd        mov   y,a
0a13: f6 ad 0c  mov   a,$0cad+y         ; vcmd length
0a16: f0 08     beq   $0a20             ; if non zero
; read new argument to A and Y
0a18: e7 30     mov   a,($30+x)
; advance reading ptr
0a1a: bb 30     inc   $30+x
0a1c: d0 02     bne   $0a20
0a1e: bb 31     inc   $31+x             ; inc reading ptr
0a20: fd        mov   y,a
0a21: 6f        ret                     ; jump to vcmd

; vcmd e0 - set instrument
0a22: d5 11 02  mov   $0211+x,a
0a25: fd        mov   y,a
0a26: 10 06     bpl   $0a2e             ; if percussion note:
0a28: 80        setc
0a29: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
0a2b: 60        clrc
0a2c: 84 5f     adc   a,$5f             ; add perc patch base
0a2e: 8d 06     mov   y,#$06
; set sample A in bank at $14/5 width Y
0a30: cf        mul   ya
0a31: da 14     movw  $14,ya
0a33: 60        clrc
0a34: 98 00 14  adc   $14,#$00
0a37: 98 3d 15  adc   $15,#$3d
0a3a: e4 1a     mov   a,$1a
0a3c: 24 47     and   a,$47
0a3e: d0 3a     bne   $0a7a
0a40: 4d        push  x
0a41: 7d        mov   a,x
0a42: 9f        xcn   a
0a43: 5c        lsr   a
0a44: 08 04     or    a,#$04            ; voice X SRCN
0a46: 5d        mov   x,a
0a47: 8d 00     mov   y,#$00
0a49: f7 14     mov   a,($14)+y
0a4b: 10 0e     bpl   $0a5b
0a4d: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0a4f: 38 20 48  and   $48,#$20          ;  keep echo bit from FLG
0a52: 0e 48 00  tset1 $0048             ;  OR in noise freq
0a55: 09 47 49  or    ($49),($47)       ;  set vbit in noise enable
0a58: dd        mov   a,y               ;  set SRCN to 0
0a59: 2f 07     bra   $0a62             ; else
0a5b: e4 47     mov   a,$47
0a5d: 4e 49 00  tclr1 $0049             ;  clear noise vbit
0a60: f7 14     mov   a,($14)+y         ;  set SRCN from table
0a62: c9 f2 00  mov   $00f2,x
0a65: c5 f3 00  mov   $00f3,a
0a68: 3d        inc   x
0a69: fc        inc   y
0a6a: ad 04     cmp   y,#$04
0a6c: d0 f2     bne   $0a60             ; set SRCN, ADSR1/2, GAIN from table
0a6e: ce        pop   x
0a6f: f7 14     mov   a,($14)+y
0a71: d5 21 02  mov   $0221+x,a         ; set pitch multiplier
0a74: fc        inc   y
0a75: f7 14     mov   a,($14)+y
0a77: d5 20 02  mov   $0220+x,a
0a7a: 6f        ret

; vcmd e1 - pan
0a7b: d5 51 03  mov   $0351+x,a
0a7e: 28 1f     and   a,#$1f
0a80: d5 31 03  mov   $0331+x,a         ; voice pan value
0a83: e8 00     mov   a,#$00
0a85: d5 30 03  mov   $0330+x,a
0a88: 6f        ret

; vcmd e2 - pan fade
0a89: d4 91     mov   $91+x,a
0a8b: 2d        push  a
0a8c: 3f 18 0a  call  $0a18
0a8f: d5 50 03  mov   $0350+x,a
0a92: 80        setc
0a93: b5 31 03  sbc   a,$0331+x         ; current pan value
0a96: ce        pop   x
0a97: 3f bb 0c  call  $0cbb             ; delta = pan value / steps
0a9a: d5 40 03  mov   $0340+x,a
0a9d: dd        mov   a,y
0a9e: d5 41 03  mov   $0341+x,a
0aa1: 6f        ret

; vcmd e3 - vibrato on
0aa2: d5 b0 02  mov   $02b0+x,a
0aa5: 3f 18 0a  call  $0a18
0aa8: d5 a1 02  mov   $02a1+x,a
0aab: 3f 18 0a  call  $0a18
; vcmd e4 - vibrato off
0aae: d4 b1     mov   $b1+x,a
0ab0: d5 c1 02  mov   $02c1+x,a
0ab3: e8 00     mov   a,#$00
0ab5: d5 b1 02  mov   $02b1+x,a
0ab8: 6f        ret

; vcmd f0 - vibrato fade
0ab9: d5 b1 02  mov   $02b1+x,a
0abc: 2d        push  a
0abd: 8d 00     mov   y,#$00
0abf: f4 b1     mov   a,$b1+x
0ac1: ce        pop   x
0ac2: 9e        div   ya,x
0ac3: f8 44     mov   x,$44
0ac5: d5 c0 02  mov   $02c0+x,a
0ac8: 6f        ret

; vcmd e5 - master volume
0ac9: e5 ca 03  mov   a,$03ca
0acc: d0 09     bne   $0ad7
0ace: e5 f1 03  mov   a,$03f1
0ad1: d0 04     bne   $0ad7
0ad3: e8 00     mov   a,#$00
0ad5: da 58     movw  $58,ya
0ad7: 6f        ret

; vcmd e6 - master volume fade
0ad8: c4 5a     mov   $5a,a
0ada: 3f 18 0a  call  $0a18
0add: c4 5b     mov   $5b,a
0adf: 80        setc
0ae0: a4 59     sbc   a,$59
0ae2: f8 5a     mov   x,$5a
0ae4: 3f bb 0c  call  $0cbb
0ae7: da 5c     movw  $5c,ya
0ae9: 6f        ret

; vcmd e7 - tempo
0aea: 85 c8 03  adc   a,$03c8
0aed: fd        mov   y,a
0aee: e8 00     mov   a,#$00
0af0: da 52     movw  $52,ya
0af2: 6f        ret

; vcmd e8 - tempo fade
0af3: c4 54     mov   $54,a
0af5: 3f 18 0a  call  $0a18
0af8: 85 c8 03  adc   a,$03c8
0afb: c4 55     mov   $55,a
0afd: 80        setc
0afe: a4 53     sbc   a,$53
0b00: f8 54     mov   x,$54
0b02: 3f bb 0c  call  $0cbb
0b05: da 56     movw  $56,ya
0b07: 6f        ret

; vcmd e9 - global transpose
0b08: c4 50     mov   $50,a
0b0a: 6f        ret

; vcmd ea - per-voice transpose
0b0b: d5 a1 03  mov   $03a1+x,a
0b0e: 2d        push  a
0b0f: e4 47     mov   a,$47
0b11: 24 1a     and   a,$1a
0b13: ae        pop   a
0b14: d0 06     bne   $0b1c
0b16: f5 a1 03  mov   a,$03a1+x
0b19: d5 f0 02  mov   $02f0+x,a
0b1c: 6f        ret

; vcmd eb - tremolo on
0b1d: d5 e0 02  mov   $02e0+x,a
0b20: 3f 18 0a  call  $0a18
0b23: d5 d1 02  mov   $02d1+x,a
0b26: 3f 18 0a  call  $0a18
; vcmd ec - tremolo off
0b29: d4 c1     mov   $c1+x,a
0b2b: 6f        ret

; vcmd f1 - pitch envelope (release)
0b2c: e8 01     mov   a,#$01
0b2e: 2f 02     bra   $0b32
; vcmd f2 - pitch envelope (attack)
0b30: e8 00     mov   a,#$00
0b32: d5 90 02  mov   $0290+x,a
0b35: dd        mov   a,y
0b36: d5 81 02  mov   $0281+x,a
0b39: 3f 18 0a  call  $0a18
0b3c: d5 e1 03  mov   $03e1+x,a
0b3f: 2d        push  a
0b40: e4 47     mov   a,$47
0b42: 24 1a     and   a,$1a
0b44: ae        pop   a
0b45: f0 02     beq   $0b49
0b47: e8 00     mov   a,#$00
0b49: d5 80 02  mov   $0280+x,a
0b4c: 3f 18 0a  call  $0a18
0b4f: d5 91 02  mov   $0291+x,a
0b52: 6f        ret

; vcmd f3 - pitch envelope off
0b53: d5 80 02  mov   $0280+x,a
0b56: d5 e1 03  mov   $03e1+x,a
0b59: 6f        ret

; vcmd ed - volume
0b5a: d5 01 03  mov   $0301+x,a
0b5d: e8 00     mov   a,#$00
0b5f: d5 00 03  mov   $0300+x,a
0b62: 6f        ret

; vcmd ee - volume fade
0b63: d4 90     mov   $90+x,a
0b65: 2d        push  a
0b66: 3f 18 0a  call  $0a18
0b69: d5 20 03  mov   $0320+x,a
0b6c: 80        setc
0b6d: b5 01 03  sbc   a,$0301+x
0b70: ce        pop   x
0b71: 3f bb 0c  call  $0cbb
0b74: d5 10 03  mov   $0310+x,a
0b77: dd        mov   a,y
0b78: d5 11 03  mov   $0311+x,a
0b7b: 6f        ret

; vcmd f4 - tuning
0b7c: d5 e0 03  mov   $03e0+x,a
0b7f: 2d        push  a
0b80: e4 47     mov   a,$47
0b82: 24 1a     and   a,$1a
0b84: ae        pop   a
0b85: d0 06     bne   $0b8d
0b87: f5 e0 03  mov   a,$03e0+x
0b8a: d5 81 03  mov   $0381+x,a
0b8d: 6f        ret

; vcmd ef - call subroutine
0b8e: d5 40 02  mov   $0240+x,a
0b91: 3f 18 0a  call  $0a18
0b94: d5 41 02  mov   $0241+x,a         ; $0240/1+X - destination (arg1/2)
0b97: 3f 18 0a  call  $0a18
0b9a: d4 80     mov   $80+x,a           ; repeat count from arg3
0b9c: f4 30     mov   a,$30+x
0b9e: d5 30 02  mov   $0230+x,a
0ba1: f4 31     mov   a,$31+x
0ba3: d5 31 02  mov   $0231+x,a         ; $0230/1+X - return addr
; jump to $0240/1+X (loop destination)
0ba6: f5 40 02  mov   a,$0240+x
0ba9: d4 30     mov   $30+x,a
0bab: f5 41 02  mov   a,$0241+x
0bae: d4 31     mov   $31+x,a
0bb0: 6f        ret

; vcmd f5 - echo vbits/volume
0bb1: c5 c3 03  mov   $03c3,a
0bb4: c4 4a     mov   $4a,a             ; echo vbit shadow = arg1
0bb6: 3f 18 0a  call  $0a18
0bb9: e8 00     mov   a,#$00
0bbb: da 60     movw  $60,ya            ; echo vol L shadow = arg2
0bbd: 3f 18 0a  call  $0a18
0bc0: e8 00     mov   a,#$00
0bc2: da 62     movw  $62,ya            ; echo vol R shadow = arg3
0bc4: b2 48     clr5  $48
0bc6: 6f        ret

; vcmd f8 - echo volume fade
0bc7: c4 68     mov   $68,a
0bc9: 3f 18 0a  call  $0a18
0bcc: c4 69     mov   $69,a
0bce: 80        setc
0bcf: a4 61     sbc   a,$61
0bd1: f8 68     mov   x,$68
0bd3: 3f bb 0c  call  $0cbb
0bd6: da 64     movw  $64,ya
0bd8: 3f 18 0a  call  $0a18
0bdb: c4 6a     mov   $6a,a
0bdd: 80        setc
0bde: a4 63     sbc   a,$63
0be0: f8 68     mov   x,$68
0be2: 3f bb 0c  call  $0cbb
0be5: da 66     movw  $66,ya
0be7: 6f        ret

; vcmd f6 - disable echo
0be8: da 60     movw  $60,ya            ; zero echo vol L shadow
0bea: da 62     movw  $62,ya            ; zero echo vol R shadow
0bec: a2 48     set5  $48               ; disable echo write
0bee: 6f        ret

; vcmd f7 - set echo params
0bef: 3f 11 0c  call  $0c11             ; set echo delay from arg1
0bf2: 3f 18 0a  call  $0a18
0bf5: c4 4e     mov   $4e,a             ; set echo feedback shadow from arg2
0bf7: 3f 18 0a  call  $0a18
0bfa: 8d 08     mov   y,#$08
0bfc: cf        mul   ya
0bfd: 5d        mov   x,a
0bfe: 8d 0f     mov   y,#$0f
0c00: f5 79 0f  mov   a,$0f79+x         ; filter table
0c03: 3f fc 06  call  $06fc
0c06: 3d        inc   x
0c07: dd        mov   a,y
0c08: 60        clrc
0c09: 88 10     adc   a,#$10
0c0b: fd        mov   y,a
0c0c: 10 f2     bpl   $0c00             ; set echo filter from table index arg3
0c0e: f8 44     mov   x,$44
0c10: 6f        ret
; set echo delay to A
0c11: c4 4d     mov   $4d,a
0c13: 8d 7d     mov   y,#$7d
0c15: cc f2 00  mov   $00f2,y
0c18: e5 f3 00  mov   a,$00f3           ; set echo delay
0c1b: 64 4d     cmp   a,$4d
0c1d: f0 2b     beq   $0c4a             ; same as $4d?
0c1f: 28 0f     and   a,#$0f
0c21: 48 ff     eor   a,#$ff
0c23: f3 4c 03  bbc7  $4c,$0c29
0c26: 60        clrc
0c27: 84 4c     adc   a,$4c
0c29: c4 4c     mov   $4c,a
0c2b: 8d 04     mov   y,#$04
0c2d: f6 98 0f  mov   a,$0f98+y         ; shadow reg DSP reg table
0c30: c5 f2 00  mov   $00f2,a
0c33: e8 00     mov   a,#$00
0c35: c5 f3 00  mov   $00f3,a
0c38: fe f3     dbnz  y,$0c2d           ; zero echo vol, feedback, vbit DSP regs
0c3a: e4 48     mov   a,$48
0c3c: 08 20     or    a,#$20
0c3e: 8d 6c     mov   y,#$6c
0c40: 3f fc 06  call  $06fc             ; set FLG from shadow but disable echo
0c43: e4 4d     mov   a,$4d
0c45: 8d 7d     mov   y,#$7d
0c47: 3f fc 06  call  $06fc             ; set echo delay from $4d
0c4a: 1c        asl   a
0c4b: 1c        asl   a
0c4c: 1c        asl   a
0c4d: 48 ff     eor   a,#$ff
0c4f: 80        setc
0c50: 88 3c     adc   a,#$3c
0c52: 8d 6d     mov   y,#$6d
0c54: 5f fc 06  jmp   $06fc             ; set echo region to $3c00-8*delay

; vcmd fa - set perc patch base
0c57: c4 5f     mov   $5f,a
0c59: 6f        ret

; vcmd f9 - pitch slide
0c5a: 2d        push  a
0c5b: e4 47     mov   a,$47
0c5d: 24 1a     and   a,$1a
0c5f: ae        pop   a
0c60: f0 26     beq   $0c88
0c62: 8f 02 10  mov   $10,#$02
0c65: 2f 13     bra   $0c7a
0c67: f4 a0     mov   a,$a0+x
0c69: d0 44     bne   $0caf
0c6b: e7 30     mov   a,($30+x)
0c6d: 68 f9     cmp   a,#$f9
0c6f: d0 3e     bne   $0caf
0c71: e4 47     mov   a,$47
0c73: 24 1a     and   a,$1a
0c75: f0 0b     beq   $0c82
0c77: 8f 04 10  mov   $10,#$04
0c7a: 3f 1a 0a  call  $0a1a
0c7d: 6e 10 fa  dbnz  $10,$0c7a
0c80: 2f 2d     bra   $0caf
0c82: 3f 1a 0a  call  $0a1a
0c85: 3f 18 0a  call  $0a18
0c88: d4 a1     mov   $a1+x,a
0c8a: 3f 18 0a  call  $0a18
0c8d: d4 a0     mov   $a0+x,a
0c8f: 3f 18 0a  call  $0a18
0c92: 60        clrc
0c93: 84 50     adc   a,$50             ; add global transpose
0c95: 95 f0 02  adc   a,$02f0+x         ; per-voice transpose
; calculate portamento delta
0c98: 28 7f     and   a,#$7f
0c9a: d5 80 03  mov   $0380+x,a         ; final portamento value
0c9d: 80        setc
0c9e: b5 61 03  sbc   a,$0361+x         ; note number
0ca1: fb a0     mov   y,$a0+x           ; portamento steps
0ca3: 6d        push  y
0ca4: ce        pop   x
0ca5: 3f bb 0c  call  $0cbb
0ca8: d5 70 03  mov   $0370+x,a
0cab: dd        mov   a,y
0cac: d5 71 03  mov   $0371+x,a         ; portamento delta
0caf: 6f        ret

0cb0: f5 61 03  mov   a,$0361+x
0cb3: c4 11     mov   $11,a
0cb5: f5 60 03  mov   a,$0360+x
0cb8: c4 10     mov   $10,a
0cba: 6f        ret

; signed 16 bit division
0cbb: ed        notc
0cbc: 6b 12     ror   $12
0cbe: 10 03     bpl   $0cc3
0cc0: 48 ff     eor   a,#$ff
0cc2: bc        inc   a
0cc3: 8d 00     mov   y,#$00
0cc5: 9e        div   ya,x
0cc6: 2d        push  a
0cc7: e8 00     mov   a,#$00
0cc9: 9e        div   ya,x
0cca: ee        pop   y
0ccb: f8 44     mov   x,$44
0ccd: f3 12 06  bbc7  $12,$0cd6
0cd0: da 14     movw  $14,ya
0cd2: ba 0e     movw  ya,$0e
0cd4: 9a 14     subw  ya,$14
0cd6: 6f        ret

; vcmd dispatch table ($0c17)
0cd7: dw $0a22  ; e0 - set instrument
0cd9: dw $0a7b  ; e1 - pan
0cdb: dw $0a89  ; e2 - pan fade
0cdd: dw $0aa2  ; e3 - vibrato on
0cdf: dw $0aae  ; e4 - vibrato off
0ce1: dw $0ac9  ; e5 - master volume
0ce3: dw $0ad8  ; e6 - master volume fade
0ce5: dw $0aea  ; e7 - tempo
0ce7: dw $0af3  ; e8 - tempo fade
0ce9: dw $0b08  ; e9 - global transpose
0ceb: dw $0b0b  ; ea - per-voice transpose
0ced: dw $0b1d  ; eb - tremolo on
0cef: dw $0b29  ; ec - tremolo off
0cf1: dw $0b5a  ; ed - volume
0cf3: dw $0b63  ; ee - volume fade
0cf5: dw $0b8e  ; ef - call subroutine
0cf7: dw $0ab9  ; f0 - vibrato fade
0cf9: dw $0b2c  ; f1 - pitch envelope (release)
0cfb: dw $0b30  ; f2 - pitch envelope (attack)
0cfd: dw $0b53  ; f3 - pitch envelope off
0cff: dw $0b7c  ; f4 - tuning
0d01: dw $0bb1  ; f5 - echo vbits/volume
0d03: dw $0be8  ; f6 - disable echo
0d05: dw $0bef  ; f7 - set echo params
0d07: dw $0bc7  ; f8 - echo volume fade
0d09: dw $0c5a  ; f9 - pitch slide
0d0b: dw $0c57  ; fa - set perc patch base
                ; fb-ff undefined

; vcmd lengths ($0cad)
0d0d: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0d15: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0d1d: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0d25: db $03,$03,$01                     ; f8-fa

; do voice fades
0d28: f4 90     mov   a,$90+x           ; voice volume fade counter
0d2a: f0 09     beq   $0d35
0d2c: e8 00     mov   a,#$00
0d2e: 8d 03     mov   y,#$03
0d30: 9b 90     dec   $90+x             ; dec voice vol fade counter
0d32: 3f be 0d  call  $0dbe
0d35: fb c1     mov   y,$c1+x
0d37: f0 23     beq   $0d5c
0d39: f5 e0 02  mov   a,$02e0+x
0d3c: de c0 1b  cbne  $c0+x,$0d5a
0d3f: 09 47 5e  or    ($5e),($47)
0d42: f5 d0 02  mov   a,$02d0+x
0d45: 10 07     bpl   $0d4e
0d47: fc        inc   y
0d48: d0 04     bne   $0d4e
0d4a: e8 80     mov   a,#$80
0d4c: 2f 04     bra   $0d52
0d4e: 60        clrc
0d4f: 95 d1 02  adc   a,$02d1+x
0d52: d5 d0 02  mov   $02d0+x,a
0d55: 3f 47 0f  call  $0f47
0d58: 2f 07     bra   $0d61
0d5a: bb c0     inc   $c0+x
0d5c: e8 ff     mov   a,#$ff
0d5e: 3f 52 0f  call  $0f52
0d61: f4 91     mov   a,$91+x
0d63: f0 09     beq   $0d6e
0d65: e8 30     mov   a,#$30
0d67: 8d 03     mov   y,#$03
0d69: 9b 91     dec   $91+x
0d6b: 3f be 0d  call  $0dbe
0d6e: e4 47     mov   a,$47
0d70: 24 5e     and   a,$5e
0d72: f0 49     beq   $0dbd
0d74: f5 31 03  mov   a,$0331+x
0d77: fd        mov   y,a
0d78: f5 30 03  mov   a,$0330+x
0d7b: da 10     movw  $10,ya
0d7d: 7d        mov   a,x
0d7e: 9f        xcn   a
0d7f: 5c        lsr   a
0d80: c4 12     mov   $12,a
0d82: eb 11     mov   y,$11
0d84: f6 65 0f  mov   a,$0f65+y         ; next pan val from table
0d87: 80        setc
0d88: b6 64 0f  sbc   a,$0f64+y         ; pan val
0d8b: eb 10     mov   y,$10
0d8d: cf        mul   ya
0d8e: dd        mov   a,y
0d8f: eb 11     mov   y,$11
0d91: 60        clrc
0d92: 96 64 0f  adc   a,$0f64+y         ; add integer part to pan val
0d95: fd        mov   y,a
0d96: d5 50 02  mov   $0250+x,a         ; volume
0d99: f5 21 03  mov   a,$0321+x
0d9c: cf        mul   ya
0d9d: f5 51 03  mov   a,$0351+x         ; bits 7/6 will negate volume L/R
0da0: 1c        asl   a
0da1: 13 12 01  bbc0  $12,$0da5
0da4: 1c        asl   a
0da5: dd        mov   a,y
0da6: 90 03     bcc   $0dab
0da8: 48 ff     eor   a,#$ff
0daa: bc        inc   a
0dab: eb 12     mov   y,$12
0dad: 3f f4 06  call  $06f4
0db0: 8d 14     mov   y,#$14
0db2: e8 00     mov   a,#$00
0db4: 9a 10     subw  ya,$10
0db6: da 10     movw  $10,ya
0db8: ab 12     inc   $12
0dba: 33 12 c5  bbc1  $12,$0d82
0dbd: 6f        ret

0dbe: 09 47 5e  or    ($5e),($47)
0dc1: da 14     movw  $14,ya
0dc3: da 16     movw  $16,ya
0dc5: 4d        push  x
0dc6: ee        pop   y
0dc7: 60        clrc
0dc8: d0 0a     bne   $0dd4
0dca: 98 1f 16  adc   $16,#$1f
0dcd: e8 00     mov   a,#$00
0dcf: d7 14     mov   ($14)+y,a
0dd1: fc        inc   y
0dd2: 2f 09     bra   $0ddd
0dd4: 98 10 16  adc   $16,#$10
0dd7: 3f db 0d  call  $0ddb
0dda: fc        inc   y
0ddb: f7 14     mov   a,($14)+y
0ddd: 97 16     adc   a,($16)+y
0ddf: d7 14     mov   ($14)+y,a
0de1: 6f        ret

; do readahead
0de2: f4 71     mov   a,$71+x
0de4: f0 65     beq   $0e4b
0de6: 9b 71     dec   $71+x
0de8: f0 05     beq   $0def
0dea: e8 02     mov   a,#$02
0dec: de 70 5c  cbne  $70+x,$0e4b
0def: f4 80     mov   a,$80+x
0df1: c4 17     mov   $17,a
0df3: f4 30     mov   a,$30+x
0df5: fb 31     mov   y,$31+x
0df7: da 14     movw  $14,ya
0df9: 8d 00     mov   y,#$00
0dfb: f7 14     mov   a,($14)+y
0dfd: f0 1e     beq   $0e1d
0dff: 30 07     bmi   $0e08
0e01: fc        inc   y
0e02: 30 40     bmi   $0e44
0e04: f7 14     mov   a,($14)+y
0e06: 10 f9     bpl   $0e01
0e08: 68 c8     cmp   a,#$c8
0e0a: f0 3f     beq   $0e4b
0e0c: 68 ef     cmp   a,#$ef
0e0e: f0 29     beq   $0e39
0e10: 68 e0     cmp   a,#$e0
0e12: 90 30     bcc   $0e44
0e14: 6d        push  y
0e15: fd        mov   y,a
0e16: ae        pop   a
0e17: 96 2d 0c  adc   a,$0c2d+y         ; vcmd lengths
0e1a: fd        mov   y,a
0e1b: 2f de     bra   $0dfb
0e1d: e4 17     mov   a,$17
0e1f: f0 23     beq   $0e44
0e21: 8b 17     dec   $17
0e23: d0 0a     bne   $0e2f
; read $0230/1+X into YA
0e25: f5 31 02  mov   a,$0231+x
0e28: 2d        push  a
0e29: f5 30 02  mov   a,$0230+x
0e2c: ee        pop   y
0e2d: 2f c8     bra   $0df7
; read $0240/1+X into YA
0e2f: f5 41 02  mov   a,$0241+x
0e32: 2d        push  a
0e33: f5 40 02  mov   a,$0240+x
0e36: ee        pop   y
0e37: 2f be     bra   $0df7
;
0e39: fc        inc   y
0e3a: f7 14     mov   a,($14)+y
0e3c: 2d        push  a
0e3d: fc        inc   y
0e3e: f7 14     mov   a,($14)+y
0e40: fd        mov   y,a
0e41: ae        pop   a
0e42: 2f b3     bra   $0df7
0e44: e4 47     mov   a,$47
0e46: 8d 5c     mov   y,#$5c
0e48: 3f f4 06  call  $06f4
0e4b: f2 13     clr7  $13
0e4d: f4 a0     mov   a,$a0+x
0e4f: f0 19     beq   $0e6a
0e51: f4 a1     mov   a,$a1+x
0e53: f0 04     beq   $0e59
0e55: 9b a1     dec   $a1+x
0e57: 2f 11     bra   $0e6a
0e59: e4 1a     mov   a,$1a
0e5b: 24 47     and   a,$47
0e5d: d0 0b     bne   $0e6a
0e5f: e2 13     set7  $13
0e61: e8 60     mov   a,#$60
0e63: 8d 03     mov   y,#$03
0e65: 9b a0     dec   $a0+x
0e67: 3f c1 0d  call  $0dc1
0e6a: 3f b0 0c  call  $0cb0
0e6d: f4 b1     mov   a,$b1+x
0e6f: f0 4c     beq   $0ebd
0e71: f5 b0 02  mov   a,$02b0+x
0e74: de b0 44  cbne  $b0+x,$0ebb
0e77: f5 00 01  mov   a,$0100+x
0e7a: 75 b1 02  cmp   a,$02b1+x
0e7d: d0 05     bne   $0e84
0e7f: f5 c1 02  mov   a,$02c1+x
0e82: 2f 0d     bra   $0e91
0e84: 40        setp
0e85: bb 00     inc   $00+x
0e87: 20        clrp
0e88: fd        mov   y,a
0e89: f0 02     beq   $0e8d
0e8b: f4 b1     mov   a,$b1+x
0e8d: 60        clrc
0e8e: 95 c0 02  adc   a,$02c0+x
0e91: d4 b1     mov   $b1+x,a
0e93: f5 a0 02  mov   a,$02a0+x
0e96: 60        clrc
0e97: 95 a1 02  adc   a,$02a1+x
0e9a: d5 a0 02  mov   $02a0+x,a
0e9d: c4 12     mov   $12,a
0e9f: 1c        asl   a
0ea0: 1c        asl   a
0ea1: 90 02     bcc   $0ea5
0ea3: 48 ff     eor   a,#$ff
0ea5: fd        mov   y,a
0ea6: f4 b1     mov   a,$b1+x
0ea8: 68 f1     cmp   a,#$f1
0eaa: 90 05     bcc   $0eb1
0eac: 28 0f     and   a,#$0f
0eae: cf        mul   ya
0eaf: 2f 04     bra   $0eb5
0eb1: cf        mul   ya
0eb2: dd        mov   a,y
0eb3: 8d 00     mov   y,#$00
0eb5: 3f 32 0f  call  $0f32
0eb8: 5f 71 06  jmp   $0671

0ebb: bb b0     inc   $b0+x
0ebd: e3 13 f8  bbs7  $13,$0eb8
0ec0: 6f        ret

; per-voice fades/dsps
0ec1: f2 13     clr7  $13
0ec3: f4 c1     mov   a,$c1+x
0ec5: f0 09     beq   $0ed0
0ec7: f5 e0 02  mov   a,$02e0+x
0eca: de c0 03  cbne  $c0+x,$0ed0
0ecd: 3f 3a 0f  call  $0f3a
0ed0: f5 31 03  mov   a,$0331+x
0ed3: fd        mov   y,a
0ed4: f5 30 03  mov   a,$0330+x
0ed7: da 10     movw  $10,ya            ; $10/1 = voice pan value
0ed9: f4 91     mov   a,$91+x           ; voice pan fade counter
0edb: f0 0a     beq   $0ee7
0edd: f5 41 03  mov   a,$0341+x
0ee0: fd        mov   y,a
0ee1: f5 40 03  mov   a,$0340+x         ; pan fade delta
0ee4: 3f 1c 0f  call  $0f1c             ; add delta (with mutations)?
0ee7: f3 13 03  bbc7  $13,$0eed
0eea: 3f 7d 0d  call  $0d7d
0eed: f2 13     clr7  $13
0eef: 3f b0 0c  call  $0cb0
0ef2: f4 a0     mov   a,$a0+x
0ef4: f0 0e     beq   $0f04
0ef6: f4 a1     mov   a,$a1+x
0ef8: d0 0a     bne   $0f04
0efa: f5 71 03  mov   a,$0371+x
0efd: fd        mov   y,a
0efe: f5 70 03  mov   a,$0370+x
0f01: 3f 1c 0f  call  $0f1c
0f04: f4 b1     mov   a,$b1+x
0f06: f0 b5     beq   $0ebd
0f08: f5 b0 02  mov   a,$02b0+x
0f0b: de b0 af  cbne  $b0+x,$0ebd
0f0e: eb 51     mov   y,$51
0f10: f5 a1 02  mov   a,$02a1+x
0f13: cf        mul   ya
0f14: dd        mov   a,y
0f15: 60        clrc
0f16: 95 a0 02  adc   a,$02a0+x
0f19: 5f 9d 0e  jmp   $0e9d

0f1c: e2 13     set7  $13
0f1e: cb 12     mov   $12,y
0f20: 3f cd 0c  call  $0ccd
0f23: 6d        push  y
0f24: eb 51     mov   y,$51
0f26: cf        mul   ya
0f27: cb 14     mov   $14,y
0f29: 8f 00 15  mov   $15,#$00
0f2c: eb 51     mov   y,$51
0f2e: ae        pop   a
0f2f: cf        mul   ya
0f30: 7a 14     addw  ya,$14
0f32: 3f cd 0c  call  $0ccd
0f35: 7a 10     addw  ya,$10
0f37: da 10     movw  $10,ya
0f39: 6f        ret

0f3a: e2 13     set7  $13
0f3c: eb 51     mov   y,$51
0f3e: f5 d1 02  mov   a,$02d1+x
0f41: cf        mul   ya
0f42: dd        mov   a,y
0f43: 60        clrc
0f44: 95 d0 02  adc   a,$02d0+x
0f47: 1c        asl   a
0f48: 90 02     bcc   $0f4c
0f4a: 48 ff     eor   a,#$ff
0f4c: fb c1     mov   y,$c1+x
0f4e: cf        mul   ya
0f4f: dd        mov   a,y
0f50: 48 ff     eor   a,#$ff
0f52: eb 59     mov   y,$59
0f54: cf        mul   ya
0f55: f5 10 02  mov   a,$0210+x
0f58: cf        mul   ya
0f59: f5 01 03  mov   a,$0301+x
0f5c: cf        mul   ya
0f5d: dd        mov   a,y
0f5e: cf        mul   ya
0f5f: dd        mov   a,y
0f60: d5 21 03  mov   $0321+x,a
0f63: 6f        ret

; pan table
0f64: db $00,$01,$03,$07,$0d,$15,$1e,$29
0f6c: db $34,$42,$51,$5e,$67,$6e,$73,$77
0f74: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
0f79: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
0f81: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
0f89: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
0f91: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($0fa2+1) for dsp regs ($0f98+1)
0f99: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0fa3: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
0fad: dw $085f
0faf: dw $08de
0fb1: dw $0965
0fb3: dw $09f4
0fb5: dw $0a8c
0fb7: dw $0b2c
0fb9: dw $0bd6
0fbb: dw $0c8b
0fbd: dw $0d4a
0fbf: dw $0e14
0fc1: dw $0eea
0fc3: dw $0fcd
0fc5: dw $10be

0fc7: db $2a,$56,$65,$72,$20,$53,$31,$2e,$32,$30,$2a

0fd2: e8 aa     mov   a,#$aa
0fd4: c5 f4 00  mov   $00f4,a
0fd7: e8 bb     mov   a,#$bb
0fd9: c5 f5 00  mov   $00f5,a
0fdc: e5 f4 00  mov   a,$00f4
0fdf: 68 cc     cmp   a,#$cc
0fe1: d0 f9     bne   $0fdc
0fe3: 2f 20     bra   $1005
0fe5: ec f4 00  mov   y,$00f4
0fe8: d0 fb     bne   $0fe5
0fea: 5e f4 00  cmp   y,$00f4
0fed: d0 0f     bne   $0ffe
0fef: e5 f5 00  mov   a,$00f5
0ff2: cc f4 00  mov   $00f4,y
0ff5: d7 14     mov   ($14)+y,a
0ff7: fc        inc   y
0ff8: d0 f0     bne   $0fea
0ffa: ab 15     inc   $15
0ffc: 2f ec     bra   $0fea
0ffe: 10 ea     bpl   $0fea
1000: 5e f4 00  cmp   y,$00f4
1003: 10 e5     bpl   $0fea
1005: e5 f6 00  mov   a,$00f6
1008: ec f7 00  mov   y,$00f7
100b: da 14     movw  $14,ya
100d: ec f4 00  mov   y,$00f4
1010: e5 f5 00  mov   a,$00f5
1013: cc f4 00  mov   $00f4,y
1016: d0 cd     bne   $0fe5
1018: cd 31     mov   x,#$31
101a: c9 f1 00  mov   $00f1,x
101d: 6f        ret

101e: e8 0a     mov   a,#$0a
1020: c5 c8 03  mov   $03c8,a
1023: e4 53     mov   a,$53
1025: 3f ea 0a  call  $0aea
1028: e8 1d     mov   a,#$1d
102a: c4 03     mov   $03,a
102c: 2f 39     bra   $1067
102e: e4 00     mov   a,$00
1030: f0 06     beq   $1038
1032: c4 d2     mov   $d2,a
1034: 28 7f     and   a,#$7f
1036: c4 00     mov   $00,a
1038: 78 43 00  cmp   $00,#$43
103b: f0 14     beq   $1051
103d: 78 12 00  cmp   $00,#$12
1040: f0 0f     beq   $1051
1042: 78 11 00  cmp   $00,#$11
1045: f0 0a     beq   $1051
1047: 78 11 04  cmp   $04,#$11
104a: f0 0e     beq   $105a
104c: 78 1d 04  cmp   $04,#$1d
104f: f0 09     beq   $105a
1051: 78 7f 00  cmp   $00,#$7f
1054: f0 c8     beq   $101e
1056: e4 00     mov   a,$00
1058: d0 0d     bne   $1067
105a: e5 0c 00  mov   a,$000c
105d: d0 49     bne   $10a8
105f: e4 04     mov   a,$04
1061: d0 01     bne   $1064
1063: 6f        ret

1064: 5f 03 11  jmp   $1103

1067: c4 04     mov   $04,a
1069: e5 f8 03  mov   a,$03f8
106c: f0 0b     beq   $1079
106e: e4 04     mov   a,$04
1070: 68 12     cmp   a,#$12
1072: d0 05     bne   $1079
1074: e8 00     mov   a,#$00
1076: c5 f8 03  mov   $03f8,a
1079: e8 02     mov   a,#$02
107b: c5 0c 00  mov   $000c,a
107e: e8 10     mov   a,#$10
1080: 8d 5c     mov   y,#$5c
1082: 3f fc 06  call  $06fc
1085: 82 1a     set4  $1a
1087: e8 00     mov   a,#$00
1089: c5 88 02  mov   $0288,a
108c: c4 a8     mov   $a8,a
108e: c5 89 03  mov   $0389,a
1091: c5 f8 02  mov   $02f8,a
1094: 78 3b 04  cmp   $04,#$3b
1097: f0 05     beq   $109e
1099: 78 43 04  cmp   $04,#$43
109c: d0 09     bne   $10a7
109e: 92 4a     clr4  $4a
10a0: e4 4a     mov   a,$4a
10a2: 8d 4d     mov   y,#$4d
10a4: 3f fc 06  call  $06fc
10a7: 6f        ret

10a8: 8c 0c 00  dec   $000c
10ab: d0 b6     bne   $1063
10ad: e4 04     mov   a,$04
10af: 1c        asl   a
10b0: fd        mov   y,a
10b1: f6 d6 17  mov   a,$17d6+y
10b4: c4 2c     mov   $2c,a
10b6: f6 d7 17  mov   a,$17d7+y
10b9: c4 2d     mov   $2d,a
10bb: 2f 4d     bra   $110a
10bd: 78 11 04  cmp   $04,#$11
10c0: d0 0a     bne   $10cc
10c2: e8 ff     mov   a,#$ff
10c4: c5 f8 03  mov   $03f8,a
10c7: 8d 5c     mov   y,#$5c
10c9: 3f fc 06  call  $06fc
10cc: 8f 00 04  mov   $04,#$00
10cf: 8f 00 d2  mov   $d2,#$00
10d2: 92 1a     clr4  $1a
10d4: e5 c3 03  mov   a,$03c3
10d7: 28 10     and   a,#$10
10d9: f0 09     beq   $10e4
10db: 82 4a     set4  $4a
10dd: e4 4a     mov   a,$4a
10df: 8d 4d     mov   y,#$4d
10e1: 3f fc 06  call  $06fc
10e4: e8 00     mov   a,#$00
10e6: c4 a8     mov   $a8,a
10e8: e5 a9 03  mov   a,$03a9
10eb: c5 f8 02  mov   $02f8,a
10ee: e5 e8 03  mov   a,$03e8
10f1: c5 89 03  mov   $0389,a
10f4: e5 e9 03  mov   a,$03e9
10f7: c5 88 02  mov   $0288,a
10fa: cd 08     mov   x,#$08
10fc: e5 19 02  mov   a,$0219
10ff: 5f 22 0a  jmp   $0a22

1102: 6f        ret

1103: 8c 2e 00  dec   $002e
1106: d0 58     bne   $1160
1108: 3a 2c     incw  $2c
110a: cd 00     mov   x,#$00
110c: e7 2c     mov   a,($2c+x)
110e: f0 ad     beq   $10bd
1110: 30 2a     bmi   $113c
1112: c5 2f 00  mov   $002f,a
1115: 3a 2c     incw  $2c
1117: e7 2c     mov   a,($2c+x)
1119: c4 10     mov   $10,a
111b: 30 1f     bmi   $113c
111d: 8d 40     mov   y,#$40
111f: 3f fc 06  call  $06fc
1122: 3a 2c     incw  $2c
1124: e7 2c     mov   a,($2c+x)
1126: 10 0b     bpl   $1133
1128: 5d        mov   x,a
1129: e4 10     mov   a,$10
112b: 8d 41     mov   y,#$41
112d: 3f fc 06  call  $06fc
1130: 7d        mov   a,x
1131: 2f 09     bra   $113c
1133: 8d 41     mov   y,#$41
1135: 3f fc 06  call  $06fc
1138: 3a 2c     incw  $2c
113a: e7 2c     mov   a,($2c+x)
113c: 68 e0     cmp   a,#$e0
113e: f0 6e     beq   $11ae
1140: 68 f9     cmp   a,#$f9
1142: f0 38     beq   $117c
1144: 68 f1     cmp   a,#$f1
1146: f0 48     beq   $1190
1148: 68 ff     cmp   a,#$ff
114a: d0 03     bne   $114f
114c: 5f ad 10  jmp   $10ad

114f: cd 08     mov   x,#$08
1151: fd        mov   y,a
1152: 3f 07 06  call  $0607
1155: e8 10     mov   a,#$10
1157: 3f 72 13  call  $1372
115a: e5 2f 00  mov   a,$002f
115d: c5 2e 00  mov   $002e,a
1160: f2 13     clr7  $13
1162: cd 08     mov   x,#$08
1164: f4 a0     mov   a,$a0+x
1166: f0 05     beq   $116d
1168: 3f a9 14  call  $14a9
116b: 2f 0e     bra   $117b
116d: e8 02     mov   a,#$02
116f: 65 2e 00  cmp   a,$002e
1172: d0 07     bne   $117b
1174: e8 10     mov   a,#$10
1176: 8d 5c     mov   y,#$5c
1178: 3f fc 06  call  $06fc
117b: 6f        ret

117c: cd 00     mov   x,#$00
117e: 3a 2c     incw  $2c
1180: e7 2c     mov   a,($2c+x)
1182: 8f 08 44  mov   $44,#$08
1185: cd 08     mov   x,#$08
1187: fd        mov   y,a
1188: 3f 07 06  call  $0607
118b: e8 10     mov   a,#$10
118d: 3f 72 13  call  $1372
1190: cd 00     mov   x,#$00
1192: 3a 2c     incw  $2c
1194: e7 2c     mov   a,($2c+x)
1196: c4 a9     mov   $a9,a
1198: 3a 2c     incw  $2c
119a: e7 2c     mov   a,($2c+x)
119c: c4 a8     mov   $a8,a
119e: 2d        push  a
119f: 3a 2c     incw  $2c
11a1: e7 2c     mov   a,($2c+x)
11a3: ee        pop   y
11a4: 8f 08 44  mov   $44,#$08
11a7: cd 08     mov   x,#$08
11a9: 3f 98 0c  call  $0c98
11ac: 2f ac     bra   $115a
11ae: cd 00     mov   x,#$00
11b0: 3a 2c     incw  $2c
11b2: e7 2c     mov   a,($2c+x)
11b4: 8d 09     mov   y,#$09
11b6: cf        mul   ya
11b7: 5d        mov   x,a
11b8: 8d 40     mov   y,#$40
11ba: 8f 08 12  mov   $12,#$08
11bd: f5 6d 16  mov   a,$166d+x
11c0: 3f fc 06  call  $06fc
11c3: 3d        inc   x
11c4: fc        inc   y
11c5: 6e 12 f5  dbnz  $12,$11bd
11c8: f5 6d 16  mov   a,$166d+x
11cb: c5 29 02  mov   $0229,a
11ce: e8 00     mov   a,#$00
11d0: c5 28 02  mov   $0228,a
11d3: 5f 08 11  jmp   $1108

11d6: e4 03     mov   a,$03
11d8: f0 06     beq   $11e0
11da: c4 d5     mov   $d5,a
11dc: 28 7f     and   a,#$7f
11de: c4 03     mov   $03,a
11e0: 78 1d 07  cmp   $07,#$1d
11e3: f0 0e     beq   $11f3
11e5: 78 05 03  cmp   $03,#$05
11e8: f0 05     beq   $11ef
11ea: 78 05 07  cmp   $07,#$05
11ed: f0 04     beq   $11f3
11ef: e4 03     mov   a,$03
11f1: d0 09     bne   $11fc
11f3: e4 23     mov   a,$23
11f5: d0 21     bne   $1218
11f7: e4 07     mov   a,$07
11f9: d0 60     bne   $125b
11fb: 6f        ret

11fc: c4 07     mov   $07,a
11fe: 8f 02 23  mov   $23,#$02
1201: e8 40     mov   a,#$40
1203: 8d 5c     mov   y,#$5c
1205: 3f fc 06  call  $06fc
1208: c2 1a     set6  $1a
120a: e8 00     mov   a,#$00
120c: c5 8c 02  mov   $028c,a
120f: c4 ac     mov   $ac,a
1211: c5 8d 03  mov   $038d,a
1214: c5 fc 02  mov   $02fc,a
1217: 6f        ret

1218: 6e 23 e0  dbnz  $23,$11fb
121b: e4 07     mov   a,$07
121d: 1c        asl   a
121e: fd        mov   y,a
121f: f6 3a 17  mov   a,$173a+y
1222: c4 d0     mov   $d0,a
1224: f6 3b 17  mov   a,$173b+y
1227: c4 d1     mov   $d1,a
1229: 2f 37     bra   $1262
122b: 8f 00 07  mov   $07,#$00
122e: 8f 00 d5  mov   $d5,#$00
1231: d2 1a     clr6  $1a
1233: e8 00     mov   a,#$00
1235: c4 49     mov   $49,a
1237: 8d 3d     mov   y,#$3d
1239: 3f fc 06  call  $06fc
123c: e8 00     mov   a,#$00
123e: c4 ac     mov   $ac,a
1240: e5 ad 03  mov   a,$03ad
1243: c5 fc 02  mov   $02fc,a
1246: e5 ec 03  mov   a,$03ec
1249: c5 8d 03  mov   $038d,a
124c: e5 ed 03  mov   a,$03ed
124f: c5 8c 02  mov   $028c,a
1252: cd 0c     mov   x,#$0c
1254: e5 1d 02  mov   a,$021d
1257: 5f 22 0a  jmp   $0a22

125a: 6f        ret

125b: 8c d1 03  dec   $03d1
125e: d0 59     bne   $12b9
1260: 3a d0     incw  $d0
1262: cd 00     mov   x,#$00
1264: e7 d0     mov   a,($d0+x)
1266: f0 c3     beq   $122b
1268: 30 2a     bmi   $1294
126a: c5 d3 03  mov   $03d3,a
126d: 3a d0     incw  $d0
126f: e7 d0     mov   a,($d0+x)
1271: c4 10     mov   $10,a
1273: 30 1f     bmi   $1294
1275: 8d 60     mov   y,#$60
1277: 3f fc 06  call  $06fc
127a: 3a d0     incw  $d0
127c: e7 d0     mov   a,($d0+x)
127e: 10 0b     bpl   $128b
1280: 5d        mov   x,a
1281: e4 10     mov   a,$10
1283: 8d 61     mov   y,#$61
1285: 3f fc 06  call  $06fc
1288: 7d        mov   a,x
1289: 2f 09     bra   $1294
128b: 8d 61     mov   y,#$61
128d: 3f fc 06  call  $06fc
1290: 3a d0     incw  $d0
1292: e7 d0     mov   a,($d0+x)
1294: 68 e0     cmp   a,#$e0
1296: f0 6f     beq   $1307
1298: 68 f9     cmp   a,#$f9
129a: f0 39     beq   $12d5
129c: 68 f1     cmp   a,#$f1
129e: f0 49     beq   $12e9
12a0: 68 ff     cmp   a,#$ff
12a2: d0 04     bne   $12a8
12a4: 1a d0     decw  $d0
12a6: 2f ba     bra   $1262
12a8: cd 0c     mov   x,#$0c
12aa: fd        mov   y,a
12ab: 3f 07 06  call  $0607
12ae: e8 40     mov   a,#$40
12b0: 3f 72 13  call  $1372
12b3: e5 d3 03  mov   a,$03d3
12b6: c5 d1 03  mov   $03d1,a
12b9: f2 13     clr7  $13
12bb: cd 0c     mov   x,#$0c
12bd: f4 a0     mov   a,$a0+x
12bf: f0 05     beq   $12c6
12c1: 3f a9 14  call  $14a9
12c4: 2f 0e     bra   $12d4
12c6: e8 02     mov   a,#$02
12c8: 65 d1 03  cmp   a,$03d1
12cb: d0 07     bne   $12d4
12cd: e8 40     mov   a,#$40
12cf: 8d 5c     mov   y,#$5c
12d1: 3f fc 06  call  $06fc
12d4: 6f        ret

12d5: cd 00     mov   x,#$00
12d7: 3a d0     incw  $d0
12d9: e7 d0     mov   a,($d0+x)
12db: 8f 0c 44  mov   $44,#$0c
12de: cd 0c     mov   x,#$0c
12e0: fd        mov   y,a
12e1: 3f 07 06  call  $0607
12e4: e8 40     mov   a,#$40
12e6: 3f 72 13  call  $1372
12e9: cd 00     mov   x,#$00
12eb: 3a d0     incw  $d0
12ed: e7 d0     mov   a,($d0+x)
12ef: c4 ad     mov   $ad,a
12f1: 3a d0     incw  $d0
12f3: e7 d0     mov   a,($d0+x)
12f5: c4 ac     mov   $ac,a
12f7: 2d        push  a
12f8: 3a d0     incw  $d0
12fa: e7 d0     mov   a,($d0+x)
12fc: ee        pop   y
12fd: 8f 0c 44  mov   $44,#$0c
1300: cd 0c     mov   x,#$0c
1302: 3f 98 0c  call  $0c98
1305: 2f ac     bra   $12b3
1307: e8 00     mov   a,#$00
1309: c4 49     mov   $49,a
130b: 8d 3d     mov   y,#$3d
130d: 3f fc 06  call  $06fc
1310: cd 00     mov   x,#$00
1312: 3a d0     incw  $d0
1314: e7 d0     mov   a,($d0+x)
1316: 30 22     bmi   $133a
1318: 8d 09     mov   y,#$09
131a: cf        mul   ya
131b: 5d        mov   x,a
131c: 8d 60     mov   y,#$60
131e: 8f 08 12  mov   $12,#$08
1321: f5 6d 16  mov   a,$166d+x
1324: 3f fc 06  call  $06fc
1327: 3d        inc   x
1328: fc        inc   y
1329: 6e 12 f5  dbnz  $12,$1321
132c: f5 6d 16  mov   a,$166d+x
132f: c5 2d 02  mov   $022d,a
1332: e8 00     mov   a,#$00
1334: c5 2c 02  mov   $022c,a
1337: 5f 60 12  jmp   $1260

133a: 28 1f     and   a,#$1f
133c: 38 20 48  and   $48,#$20
133f: 0e 48 00  tset1 $0048
1342: 8d 6c     mov   y,#$6c
1344: 3f fc 06  call  $06fc
1347: e8 40     mov   a,#$40
1349: c4 49     mov   $49,a
134b: 8d 3d     mov   y,#$3d
134d: 3f fc 06  call  $06fc
1350: 2f be     bra   $1310
1352: 8d 09     mov   y,#$09
1354: cf        mul   ya
1355: 5d        mov   x,a
1356: 8d 50     mov   y,#$50
1358: 8f 08 12  mov   $12,#$08
135b: f5 6d 16  mov   a,$166d+x
135e: 3f fc 06  call  $06fc
1361: 3d        inc   x
1362: fc        inc   y
1363: 6e 12 f5  dbnz  $12,$135b
1366: f5 6d 16  mov   a,$166d+x
1369: c5 2b 02  mov   $022b,a
136c: e8 00     mov   a,#$00
136e: c5 2a 02  mov   $022a,a
1371: 6f        ret

1372: 2d        push  a
1373: 8d 5c     mov   y,#$5c
1375: e8 00     mov   a,#$00
1377: 3f fc 06  call  $06fc
137a: ae        pop   a
137b: 8d 4c     mov   y,#$4c
137d: 5f fc 06  jmp   $06fc

1380: 5d        mov   x,a
1381: 8d 06     mov   y,#$06
1383: cf        mul   ya
1384: 5d        mov   x,a
1385: 8d 54     mov   y,#$54
1387: 8f 04 12  mov   $12,#$04
138a: f5 a3 13  mov   a,$13a3+x
138d: 3f fc 06  call  $06fc
1390: 3d        inc   x
1391: fc        inc   y
1392: 6e 12 f5  dbnz  $12,$138a
1395: f5 a3 13  mov   a,$13a3+x
1398: c5 2b 02  mov   $022b,a
139b: 3d        inc   x
139c: f5 a3 13  mov   a,$13a3+x
139f: c5 2a 02  mov   $022a,a
13a2: 6f        ret

13a3: db $20,$00,$00
13a6: db $e8,$04,$00

13a9: e8 20     mov   a,#$20
13ab: 8d 5c     mov   y,#$5c
13ad: 3f fc 06  call  $06fc
13b0: e5 c3 03  mov   a,$03c3
13b3: 28 20     and   a,#$20
13b5: f0 07     beq   $13be
13b7: a2 4a     set5  $4a
13b9: 8d 4d     mov   y,#$4d
13bb: 3f fc 06  call  $06fc
13be: 8f 00 26  mov   $26,#$00
13c1: b2 1a     clr5  $1a
13c3: cd 0a     mov   x,#$0a
13c5: e5 1b 02  mov   a,$021b
13c8: 3f 22 0a  call  $0a22
13cb: e8 00     mov   a,#$00
13cd: c4 27     mov   $27,a
13cf: c4 aa     mov   $aa,a
13d1: e5 ea 03  mov   a,$03ea
13d4: c5 8b 03  mov   $038b,a
13d7: e5 eb 03  mov   a,$03eb
13da: c5 8a 02  mov   $028a,a
13dd: e5 ab 03  mov   a,$03ab
13e0: c5 fa 02  mov   $02fa,a
13e3: 6f        ret

13e4: e4 25     mov   a,$25
13e6: 68 10     cmp   a,#$10
13e8: f0 0f     beq   $13f9
13ea: 68 20     cmp   a,#$20
13ec: f0 bb     beq   $13a9
13ee: e4 27     mov   a,$27
13f0: d0 25     bne   $1417
13f2: e4 26     mov   a,$26
13f4: 68 10     cmp   a,#$10
13f6: f0 48     beq   $1440
13f8: 6f        ret

13f9: c4 26     mov   $26,a
13fb: e8 03     mov   a,#$03
13fd: c5 27 00  mov   $0027,a
1400: e8 20     mov   a,#$20
1402: 8d 5c     mov   y,#$5c
1404: 3f fc 06  call  $06fc
1407: a2 1a     set5  $1a
1409: e8 00     mov   a,#$00
140b: c5 8a 02  mov   $028a,a
140e: c4 aa     mov   $aa,a
1410: c5 8b 03  mov   $038b,a
1413: c5 fa 02  mov   $02fa,a
1416: 6f        ret

1417: 8c 27 00  dec   $0027
141a: d0 fa     bne   $1416
141c: e8 00     mov   a,#$00
141e: 3f 80 13  call  $1380
1421: e8 20     mov   a,#$20
1423: 3f 72 13  call  $1372
1426: b2 4a     clr5  $4a
1428: e4 4a     mov   a,$4a
142a: 8d 4d     mov   y,#$4d
142c: 3f fc 06  call  $06fc
142f: e8 01     mov   a,#$01
1431: c4 aa     mov   $aa,a
1433: 8f 00 ab  mov   $ab,#$00
1436: e8 a4     mov   a,#$a4
1438: cd 0a     mov   x,#$0a
143a: d8 44     mov   $44,x
143c: 3f 98 0c  call  $0c98
143f: 6f        ret

1440: f2 13     clr7  $13
1442: e4 aa     mov   a,$aa
1444: f0 1f     beq   $1465
1446: cd 0a     mov   x,#$0a
1448: 3f a9 14  call  $14a9
144b: e5 f1 03  mov   a,$03f1
144e: f0 04     beq   $1454
1450: e8 0a     mov   a,#$0a
1452: 2f 02     bra   $1456
1454: e8 18     mov   a,#$18
1456: c4 10     mov   $10,a
1458: 8d 50     mov   y,#$50
145a: 3f fc 06  call  $06fc
145d: c4 10     mov   $10,a
145f: 8d 51     mov   y,#$51
1461: 3f fc 06  call  $06fc
1464: 6f        ret

1465: e8 80     mov   a,#$80
1467: c4 aa     mov   $aa,a
1469: 8f 00 ab  mov   $ab,#$00
146c: e4 18     mov   a,$18
146e: 28 03     and   a,#$03
1470: 08 a4     or    a,#$a4
1472: cd 0a     mov   x,#$0a
1474: d8 44     mov   $44,x
1476: 3f 98 0c  call  $0c98
1479: 6f        ret

147a: e8 00     mov   a,#$00
147c: 8d 2c     mov   y,#$2c
147e: 3f fc 06  call  $06fc
1481: 8d 3c     mov   y,#$3c
1483: 3f fc 06  call  $06fc
1486: e8 ff     mov   a,#$ff
1488: 8d 5c     mov   y,#$5c
148a: 3f fc 06  call  $06fc
148d: e8 00     mov   a,#$00
148f: c5 ca 03  mov   $03ca,a
1492: c4 04     mov   $04,a
1494: c4 05     mov   $05,a
1496: c4 06     mov   $06,a
1498: c4 07     mov   $07,a
149a: c4 26     mov   $26,a
149c: c4 1a     mov   $1a,a
149e: c5 c8 03  mov   $03c8,a
14a1: e8 80     mov   a,#$80
14a3: c5 f1 00  mov   $00f1,a
14a6: 5f c0 ff  jmp   $ffc0

14a9: e8 60     mov   a,#$60
14ab: 8d 03     mov   y,#$03
14ad: 9b a0     dec   $a0+x
14af: 3f c1 0d  call  $0dc1
14b2: f5 61 03  mov   a,$0361+x
14b5: fd        mov   y,a
14b6: f5 60 03  mov   a,$0360+x
14b9: da 10     movw  $10,ya
14bb: 8f 00 47  mov   $47,#$00
14be: 5f 71 06  jmp   $0671

14c1: e4 01     mov   a,$01
14c3: 68 ff     cmp   a,#$ff
14c5: d0 03     bne   $14ca
14c7: 5f 68 07  jmp   $0768

14ca: 68 f0     cmp   a,#$f0
14cc: d0 03     bne   $14d1
14ce: 5f 7a 14  jmp   $147a

14d1: e4 01     mov   a,$01
14d3: 28 f0     and   a,#$f0
14d5: c4 25     mov   $25,a
14d7: e4 01     mov   a,$01
14d9: 28 0f     and   a,#$0f
14db: c4 01     mov   $01,a
14dd: 68 01     cmp   a,#$01
14df: f0 1d     beq   $14fe
14e1: e4 05     mov   a,$05
14e3: 68 01     cmp   a,#$01
14e5: f0 06     beq   $14ed
14e7: e4 01     mov   a,$01
14e9: 68 04     cmp   a,#$04
14eb: f0 0b     beq   $14f8
14ed: e4 05     mov   a,$05
14ef: 68 01     cmp   a,#$01
14f1: f0 4c     beq   $153f
14f3: 68 04     cmp   a,#$04
14f5: f0 04     beq   $14fb
14f7: 6f        ret

14f8: 5f d6 15  jmp   $15d6

14fb: 5f 05 16  jmp   $1605

14fe: c4 05     mov   $05,a
1500: e8 04     mov   a,#$04
1502: c5 c6 03  mov   $03c6,a
1505: e8 80     mov   a,#$80
1507: 8d 5c     mov   y,#$5c
1509: 3f fc 06  call  $06fc
150c: e2 1a     set7  $1a
150e: e8 00     mov   a,#$00
1510: c5 8e 02  mov   $028e,a
1513: c4 ae     mov   $ae,a
1515: c5 8f 03  mov   $038f,a
1518: c5 fe 02  mov   $02fe,a
151b: 6f        ret

151c: 8c c6 03  dec   $03c6
151f: d0 fa     bne   $151b
1521: 8f 30 20  mov   $20,#$30
1524: 2f 45     bra   $156b
1526: 78 2a 20  cmp   $20,#$2a
1529: d0 71     bne   $159c
152b: 8f 0e 44  mov   $44,#$0e
152e: cd 0e     mov   x,#$0e
1530: 8d 00     mov   y,#$00
1532: cb af     mov   $af,y
1534: 8d 12     mov   y,#$12
1536: cb ae     mov   $ae,y
1538: e8 b9     mov   a,#$b9
153a: 3f 98 0c  call  $0c98
153d: 2f 5d     bra   $159c
153f: e5 c6 03  mov   a,$03c6
1542: d0 d8     bne   $151c
1544: 6e 20 df  dbnz  $20,$1526
1547: 8f 00 05  mov   $05,#$00
154a: f2 1a     clr7  $1a
154c: e8 00     mov   a,#$00
154e: c4 ae     mov   $ae,a
1550: e5 af 03  mov   a,$03af
1553: c5 fe 02  mov   $02fe,a
1556: e5 ee 03  mov   a,$03ee
1559: c5 8f 03  mov   $038f,a
155c: e5 ef 03  mov   a,$03ef
155f: c5 8e 02  mov   $028e,a
1562: cd 0e     mov   x,#$0e
1564: e5 1f 02  mov   a,$021f
1567: 5f 22 0a  jmp   $0a22

156a: 6f        ret

156b: 3f b4 15  call  $15b4
156e: 8d b2     mov   y,#$b2
1570: 8f 0e 44  mov   $44,#$0e
1573: cd 0e     mov   x,#$0e
1575: 3f 07 06  call  $0607
1578: 8d 00     mov   y,#$00
157a: cb af     mov   $af,y
157c: 8d 05     mov   y,#$05
157e: cb ae     mov   $ae,y
1580: e8 b5     mov   a,#$b5
1582: 3f 98 0c  call  $0c98
1585: e8 38     mov   a,#$38
1587: c4 10     mov   $10,a
1589: 8d 70     mov   y,#$70
158b: 3f fc 06  call  $06fc
158e: e8 38     mov   a,#$38
1590: c4 10     mov   $10,a
1592: 8d 71     mov   y,#$71
1594: 3f fc 06  call  $06fc
1597: e8 80     mov   a,#$80
1599: 3f 72 13  call  $1372
159c: e8 02     mov   a,#$02
159e: 2e 20 07  cbne  $20,$15a8
15a1: e8 80     mov   a,#$80
15a3: 8d 5c     mov   y,#$5c
15a5: 3f fc 06  call  $06fc
15a8: f2 13     clr7  $13
15aa: e4 ae     mov   a,$ae
15ac: f0 05     beq   $15b3
15ae: cd 0e     mov   x,#$0e
15b0: 3f a9 14  call  $14a9
15b3: 6f        ret

15b4: e8 08     mov   a,#$08
15b6: 8d 09     mov   y,#$09
15b8: cf        mul   ya
15b9: 5d        mov   x,a
15ba: 8d 70     mov   y,#$70
15bc: 8f 08 12  mov   $12,#$08
15bf: f5 6d 16  mov   a,$166d+x
15c2: 3f fc 06  call  $06fc
15c5: 3d        inc   x
15c6: fc        inc   y
15c7: 6e 12 f5  dbnz  $12,$15bf
15ca: f5 6d 16  mov   a,$166d+x
15cd: c5 2f 02  mov   $022f,a
15d0: e8 00     mov   a,#$00
15d2: c5 2e 02  mov   $022e,a
15d5: 6f        ret

15d6: c4 05     mov   $05,a
15d8: e8 02     mov   a,#$02
15da: c5 c6 03  mov   $03c6,a
15dd: e8 80     mov   a,#$80
15df: 8d 5c     mov   y,#$5c
15e1: 3f fc 06  call  $06fc
15e4: e2 1a     set7  $1a
15e6: e8 00     mov   a,#$00
15e8: c5 8e 02  mov   $028e,a
15eb: c4 ae     mov   $ae,a
15ed: c5 8f 03  mov   $038f,a
15f0: c5 fe 02  mov   $02fe,a
15f3: 6f        ret

15f4: 8c c6 03  dec   $03c6
15f7: d0 fa     bne   $15f3
15f9: 8f 05 22  mov   $22,#$05
15fc: 8f 01 20  mov   $20,#$01
15ff: e8 01     mov   a,#$01
1601: 3f b6 15  call  $15b6
1604: 6f        ret

1605: e5 c6 03  mov   a,$03c6
1608: d0 ea     bne   $15f4
160a: 6e 20 4f  dbnz  $20,$165c
160d: 8f 04 20  mov   $20,#$04
1610: 8b 22     dec   $22
1612: f0 10     beq   $1624
1614: f8 22     mov   x,$22
1616: f5 69 16  mov   a,$1669+x
1619: fd        mov   y,a
161a: 8f 0e 44  mov   $44,#$0e
161d: cd 0e     mov   x,#$0e
161f: 3f 07 06  call  $0607
1622: 2f 23     bra   $1647
1624: 8f 00 05  mov   $05,#$00
1627: f2 1a     clr7  $1a
1629: e8 00     mov   a,#$00
162b: c4 ae     mov   $ae,a
162d: e5 af 03  mov   a,$03af
1630: c5 fe 02  mov   $02fe,a
1633: e5 ee 03  mov   a,$03ee
1636: c5 8f 03  mov   $038f,a
1639: e5 ef 03  mov   a,$03ef
163c: c5 8e 02  mov   $028e,a
163f: cd 0e     mov   x,#$0e
1641: e5 1f 02  mov   a,$021f
1644: 5f 22 0a  jmp   $0a22

1647: e8 14     mov   a,#$14
1649: c4 10     mov   $10,a
164b: 8d 70     mov   y,#$70
164d: 3f fc 06  call  $06fc
1650: e4 10     mov   a,$10
1652: 8d 71     mov   y,#$71
1654: 3f fc 06  call  $06fc
1657: e8 80     mov   a,#$80
1659: 3f 72 13  call  $1372
165c: e8 02     mov   a,#$02
165e: 2e 20 07  cbne  $20,$1668
1661: e8 80     mov   a,#$80
1663: 8d 5c     mov   y,#$5c
1665: 3f fc 06  call  $06fc
1668: 6f        ret
