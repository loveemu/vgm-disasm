; Super Puyo Puyo 2 SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Super Puyo Puyo 2 (1995)
; * Super Puyo Puyo 2 Remix (1996)
; * Madou Monogatari (1996)
; * Super Nazo Puyo 2 (1996)

0550: 3f da 08  call  $08da
0553: 3f 96 08  call  $0896
0556: 3f cc 11  call  $11cc
0559: ba 00     movw  ya,$00
055b: da f6     movw  $f6,ya            ; set APU2/3 to $00/1
; begin main loop
055d: e4 ea     mov   a,$ea
055f: c4 f4     mov   $f4,a
0561: 64 f4     cmp   a,$f4             ; set APU0 to $EA
0563: d0 fc     bne   $0561             ; CPU updates APU0 every 8ms
0565: bc        inc   a
0566: c4 ea     mov   $ea,a
0568: e4 f5     mov   a,$f5
056a: 68 e0     cmp   a,#$e0
056c: b0 13     bcs   $0581
056e: f8 eb     mov   x,$eb
0570: c8 08     cmp   x,#$08
0572: 90 07     bcc   $057b
0574: 3f ab 05  call  $05ab
0577: cd 00     mov   x,#$00
0579: e4 f5     mov   a,$f5
057b: d4 10     mov   $10+x,a
057d: ab eb     inc   $eb
057f: 2f dc     bra   $055d             ; restart main loop
; received a cpu cmd from $f5
0581: fd        mov   y,a
0582: f6 37 05  mov   a,$0537+y
0585: d0 1c     bne   $05a3
0587: dd        mov   a,y
0588: f8 eb     mov   x,$eb
058a: c8 08     cmp   x,#$08
058c: 90 07     bcc   $0595
058e: 3f ab 05  call  $05ab
0591: cd 00     mov   x,#$00
0593: e4 f5     mov   a,$f5
0595: d4 10     mov   $10+x,a
0597: e4 f6     mov   a,$f6
0599: d4 18     mov   $18+x,a
059b: e4 f7     mov   a,$f7
059d: d4 20     mov   $20+x,a
059f: ab eb     inc   $eb
05a1: 2f ba     bra   $055d             ; restart main loop
05a3: dd        mov   a,y
05a4: 1c        asl   a
05a5: a8 c0     sbc   a,#$c0
05a7: 5d        mov   x,a
05a8: 1f d7 05  jmp   ($05d7+x)         ; dispatch CPU cmd
;
05ab: cd 00     mov   x,#$00
05ad: 3e eb     cmp   x,$eb
05af: f0 13     beq   $05c4
05b1: f4 10     mov   a,$10+x
05b3: 68 e0     cmp   a,#$e0
05b5: b0 0e     bcs   $05c5
05b7: 4d        push  x
05b8: 3f 12 13  call  $1312
05bb: ce        pop   x
05bc: 3d        inc   x
05bd: 3e eb     cmp   x,$eb
05bf: d0 f0     bne   $05b1
05c1: 8f 00 eb  mov   $eb,#$00
05c4: 6f        ret

05c5: 1c        asl   a
05c6: a8 c0     sbc   a,#$c0
05c8: 4d        push  x
05c9: d8 38     mov   $38,x
05cb: 5d        mov   x,a
05cc: eb 38     mov   y,$38
05ce: 3f d4 05  call  $05d4
05d1: ce        pop   x
05d2: 2f e8     bra   $05bc
05d4: 1f d7 05  jmp   ($05d7+x)         ; dispatch CPU cmd

; CPU cmd dispatch table
05d7: dw $06d6  ; e0
05d9: dw $06d6  ; e1
05db: dw $06d6  ; e2
05dd: dw $06d6  ; e3
05df: dw $06d6  ; e4
05e1: dw $06d6  ; e5
05e3: dw $06d6  ; e6
05e5: dw $06d6  ; e7
05e7: dw $06d6  ; e8
05e9: dw $06d6  ; e9
05eb: dw $06d6  ; ea
05ed: dw $06d6  ; eb
05ef: dw $06d6  ; ec
05f1: dw $06d6  ; ed
05f3: dw $06d6  ; ee
05f5: dw $06d6  ; ef
05f7: dw $06f4  ; f0
05f9: dw $0638  ; f1
05fb: dw $063b  ; f2
05fd: dw $063e  ; f3
05ff: dw $0650  ; f4
0601: dw $065b  ; f5
0603: dw $0684  ; f6
0605: dw $068f  ; f7
0607: dw $06ad  ; f8
0609: dw $06b7  ; f9
060b: dw $0637  ; fa
060d: dw $0637  ; fb
060f: dw $069a  ; fc
0611: dw $0637  ; fd
0613: dw $06d9  ; fe - reset
0615: dw $06ea  ; ff

0617: db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
0627: db $01,$00,$00,$00,$00,$00,$00,$00,$01,$01,$00,$00,$00,$00,$01,$01

; CPU cmds FA,FB,FD
0637: 6f        ret

; CPU cmd F1
0638: 5f da 08  jmp   $08da
; CPU cmd F2
063b: 5f 82 09  jmp   $0982
; CPU cmd F3
063e: 3f 6a 06  call  $066a
0641: 8f 1f 72  mov   $72,#$1f
0644: f6 20 00  mov   a,$0020+y
0647: c4 73     mov   $73,a
0649: e4 01     mov   a,$01
064b: 08 30     or    a,#$30
064d: c4 01     mov   $01,a
064f: 6f        ret

; CPU cmd F4
0650: 6d        push  y
0651: f6 20 00  mov   a,$0020+y
0654: 3f 12 13  call  $1312
0657: ee        pop   y
0658: 8f 00 72  mov   $72,#$00
; CPU cmd F5
065b: 3f 6a 06  call  $066a
065e: 8f 1f 73  mov   $73,#$1f
0661: e4 01     mov   a,$01
0663: 28 ef     and   a,#$ef
0665: 08 20     or    a,#$20
0667: c4 01     mov   $01,a
0669: 6f        ret

066a: cd 0e     mov   x,#$0e
066c: f4 80     mov   a,$80+x
066e: f0 08     beq   $0678
0670: 30 06     bmi   $0678
0672: f4 90     mov   a,$90+x
0674: 08 08     or    a,#$08
0676: d4 90     mov   $90+x,a
0678: 1d        dec   x
0679: 10 f1     bpl   $066c
067b: f6 18 00  mov   a,$0018+y
067e: c4 70     mov   $70,a
0680: 8f ff 71  mov   $71,#$ff
0683: 6f        ret

; CPU cmd F6
0684: e4 01     mov   a,$01
0686: 08 02     or    a,#$02
0688: c4 01     mov   $01,a
068a: e8 00     mov   a,#$00
068c: 5f 12 13  jmp   $1312
; CPU cmd F7
068f: e4 01     mov   a,$01
0691: 28 fd     and   a,#$fd
0693: c4 01     mov   $01,a
0695: e8 00     mov   a,#$00
0697: 5f 12 13  jmp   $1312
; CPU cmd FC
069a: f6 18 00  mov   a,$0018+y
069d: c4 32     mov   $32,a
069f: f6 20 00  mov   a,$0020+y
06a2: c4 33     mov   $33,a
06a4: 8f 01 3a  mov   $3a,#$01
06a7: f6 08 00  mov   a,$0008+y
06aa: 5f 15 13  jmp   $1315
; CPU cmd F8
06ad: e4 f7     mov   a,$f7
06af: f8 f6     mov   x,$f6
06b1: 48 ff     eor   a,#$ff
06b3: 34 00     and   a,$00+x
06b5: 2f 06     bra   $06bd
; CPU cmd F9
06b7: e4 f7     mov   a,$f7
06b9: f8 f6     mov   x,$f6
06bb: 14 00     or    a,$00+x
06bd: d4 00     mov   $00+x,a
06bf: ba 00     movw  ya,$00
06c1: da f6     movw  $f6,ya
06c3: e4 01     mov   a,$01
06c5: 28 08     and   a,#$08
06c7: 68 08     cmp   a,#$08
06c9: e4 44     mov   a,$44
06cb: 28 5f     and   a,#$5f
06cd: b0 02     bcs   $06d1
06cf: 08 20     or    a,#$20
06d1: 8f 6c f2  mov   $f2,#$6c
06d4: c4 f3     mov   $f3,a             ; set FLG
; CPU cmd E0-EF
06d6: 5f 5d 05  jmp   $055d
; CPU cmd FE - reset
06d9: 8f b0 f1  mov   $f1,#$b0          ; clear ports
06dc: 8f 6c f2  mov   $f2,#$6c
06df: 8f e0 f3  mov   $f3,#$e0          ; do soft reset
06e2: 8f 80 f1  mov   $f1,#$80
06e5: cd 00     mov   x,#$00
06e7: 1f fe ff  jmp   ($fffe+x)
; CPU cmd FF
06ea: e4 ea     mov   a,$ea
06ec: c4 f4     mov   $f4,a
06ee: bc        inc   a
06ef: c4 ea     mov   $ea,a
06f1: 5f 46 07  jmp   $0746
; CPU cmd F0 - transfer data from SNES
06f4: ba f6     movw  ya,$f6            ; destination APU address
06f6: f8 ea     mov   x,$ea
06f8: d8 f4     mov   $f4,x
06fa: da 34     movw  $34,ya            ; save the destination address
06fc: 3e f4     cmp   x,$f4
06fe: d0 fc     bne   $06fc             ; sync
0700: 3d        inc   x
0701: eb f6     mov   y,$f6
0703: d0 25     bne   $072a             ; initial offset (0)
0705: e4 f5     mov   a,$f5
0707: d8 f4     mov   $f4,x
0709: d7 34     mov   ($34)+y,a         ; write APU1
070b: fc        inc   y
070c: 3e f4     cmp   x,$f4
070e: d0 fc     bne   $070c             ; sync
0710: 3d        inc   x
0711: e4 f5     mov   a,$f5
0713: d7 34     mov   ($34)+y,a         ; write APU1
0715: fc        inc   y
0716: e4 f6     mov   a,$f6
0718: d7 34     mov   ($34)+y,a         ; write APU2
071a: e4 f7     mov   a,$f7
071c: d8 f4     mov   $f4,x
071e: fc        inc   y
071f: d7 34     mov   ($34)+y,a         ; write APU3
0721: fc        inc   y
0722: d0 e8     bne   $070c
0724: d8 ea     mov   $ea,x
0726: 7d        mov   a,x
0727: 5f 61 05  jmp   $0561

072a: d8 f4     mov   $f4,x
072c: cb 38     mov   $38,y
072e: 8d 00     mov   y,#$00
0730: 3e f4     cmp   x,$f4
0732: d0 fc     bne   $0730
0734: 3d        inc   x
0735: e4 f6     mov   a,$f6
0737: d8 f4     mov   $f4,x
0739: d7 34     mov   ($34)+y,a
073b: fc        inc   y
073c: 7e 38     cmp   y,$38
073e: d0 f0     bne   $0730
0740: d8 ea     mov   $ea,x
0742: 7d        mov   a,x
0743: 5f 61 05  jmp   $0561
;
0746: 3f ab 05  call  $05ab
0749: 8f 5c f2  mov   $f2,#$5c
074c: 8f 00 f3  mov   $f3,#$00          ; key off all voices
074f: 3f 96 08  call  $0896
0752: 3f cc 11  call  $11cc
0755: e4 01     mov   a,$01
0757: 28 02     and   a,#$02
0759: d0 0a     bne   $0765
075b: e4 8f     mov   a,$8f
075d: d0 06     bne   $0765
075f: cd 0e     mov   x,#$0e
0761: d8 2c     mov   $2c,x
0763: 2f 05     bra   $076a
0765: cd 0f     mov   x,#$0f
0767: 8f 8f 2c  mov   $2c,#$8f
076a: 8f 00 3a  mov   $3a,#$00
076d: d8 2b     mov   $2b,x
076f: f4 80     mov   a,$80+x
0771: d0 03     bne   $0776
0773: 5f 3b 08  jmp   $083b

0776: f5 60 03  mov   a,$0360+x         ; tempo value
0779: f0 09     beq   $0784             ; #$00 means no wait (16ms/tick)
077b: 60        clrc
077c: 95 d0 03  adc   a,$03d0+x
077f: d5 d0 03  mov   $03d0+x,a         ; add tempo value
0782: 90 50     bcc   $07d4             ; jump if not tick
0784: f4 80     mov   a,$80+x
0786: 28 10     and   a,#$10
0788: d0 3b     bne   $07c5
078a: f4 90     mov   a,$90+x
078c: 28 04     and   a,#$04
078e: f0 35     beq   $07c5
0790: f5 c0 01  mov   a,$01c0+x
0793: f0 30     beq   $07c5
0795: 10 0f     bpl   $07a6
0797: 28 7f     and   a,#$7f
0799: 60        clrc
079a: 95 00 04  adc   a,$0400+x
079d: b0 0e     bcs   $07ad
079f: 75 10 04  cmp   a,$0410+x
07a2: 90 21     bcc   $07c5
07a4: b0 07     bcs   $07ad
07a6: 75 00 04  cmp   a,$0400+x
07a9: f0 02     beq   $07ad
07ab: b0 18     bcs   $07c5
07ad: f4 90     mov   a,$90+x
07af: 28 fb     and   a,#$fb
07b1: d4 90     mov   $90+x,a
07b3: f4 80     mov   a,$80+x
07b5: 28 04     and   a,#$04
07b7: d0 0c     bne   $07c5
07b9: e4 3a     mov   a,$3a
07bb: 08 04     or    a,#$04
07bd: c4 3a     mov   $3a,a
07bf: f4 a0     mov   a,$a0+x
07c1: 08 10     or    a,#$10
07c3: d4 a0     mov   $a0+x,a
07c5: f5 00 04  mov   a,$0400+x
07c8: bc        inc   a
07c9: d5 00 04  mov   $0400+x,a         ; inc duration counter
07cc: 75 10 04  cmp   a,$0410+x
07cf: d0 03     bne   $07d4             ; wait for duration
07d1: 3f bd 0c  call  $0cbd             ; do vcmds
07d4: 3f c5 0e  call  $0ec5             ; read ADSR/GAIN
07d7: 3f 0b 0f  call  $0f0b             ; process software envelope
07da: f4 90     mov   a,$90+x
07dc: 10 03     bpl   $07e1
07de: 3f 4f 0f  call  $0f4f
07e1: f4 a0     mov   a,$a0+x
07e3: 28 08     and   a,#$08
07e5: f0 03     beq   $07ea
07e7: 3f 98 0f  call  $0f98
07ea: 3f 33 10  call  $1033
07ed: 3f a4 10  call  $10a4
07f0: f4 90     mov   a,$90+x
07f2: 28 01     and   a,#$01
07f4: f0 03     beq   $07f9
07f6: 3f 48 11  call  $1148
07f9: 3f df 11  call  $11df
07fc: f4 90     mov   a,$90+x
07fe: 28 20     and   a,#$20
0800: f0 33     beq   $0835
0802: f5 a0 01  mov   a,$01a0+x
0805: 60        clrc
0806: 95 b0 01  adc   a,$01b0+x
0809: d5 b0 01  mov   $01b0+x,a
080c: 90 27     bcc   $0835
080e: f5 20 03  mov   a,$0320+x
0811: 75 90 01  cmp   a,$0190+x
0814: d0 08     bne   $081e
0816: f4 90     mov   a,$90+x
0818: 08 02     or    a,#$02
081a: d4 90     mov   $90+x,a
081c: 2f 17     bra   $0835
081e: f4 90     mov   a,$90+x
0820: 28 fd     and   a,#$fd
0822: d4 90     mov   $90+x,a
0824: 28 10     and   a,#$10
0826: d0 06     bne   $082e
0828: f5 20 03  mov   a,$0320+x
082b: bc        inc   a
082c: 2f 04     bra   $0832
082e: f5 20 03  mov   a,$0320+x
0831: 9c        dec   a
0832: d5 20 03  mov   $0320+x,a
0835: f4 80     mov   a,$80+x
0837: 28 20     and   a,#$20
0839: d0 08     bne   $0843
083b: 1d        dec   x
083c: 8b 2c     dec   $2c
083e: 30 03     bmi   $0843
0840: 5f 6a 07  jmp   $076a

0843: 1d        dec   x
0844: 30 09     bmi   $084f
0846: f4 a0     mov   a,$a0+x
0848: 08 40     or    a,#$40
084a: d4 a0     mov   $a0+x,a
084c: 1d        dec   x
084d: 10 f7     bpl   $0846
084f: e4 eb     mov   a,$eb
0851: f0 03     beq   $0856
0853: 3f ab 05  call  $05ab
0856: e4 01     mov   a,$01
0858: 28 20     and   a,#$20
085a: f0 2a     beq   $0886
085c: e4 70     mov   a,$70
085e: 60        clrc
085f: 84 71     adc   a,$71
0861: c4 71     mov   $71,a
0863: 90 21     bcc   $0886
0865: e4 01     mov   a,$01
0867: 28 10     and   a,#$10
0869: d0 12     bne   $087d
086b: e4 72     mov   a,$72
086d: 64 73     cmp   a,$73
086f: f0 07     beq   $0878
0871: bc        inc   a
0872: c4 72     mov   $72,a
0874: 64 73     cmp   a,$73
0876: d0 0e     bne   $0886
0878: 3f 8d 09  call  $098d
087b: 2f 09     bra   $0886
087d: e4 72     mov   a,$72
087f: 64 73     cmp   a,$73
0881: f0 03     beq   $0886
0883: 9c        dec   a
0884: c4 72     mov   $72,a
0886: e4 3e     mov   a,$3e
0888: 48 ff     eor   a,#$ff
088a: 04 42     or    a,$42
088c: 04 40     or    a,$40
088e: 8f 5c f2  mov   $f2,#$5c
0891: c4 f3     mov   $f3,a             ; set KOF
0893: 5f 59 05  jmp   $0559
;
0896: 8d 00     mov   y,#$00
0898: 4b 3e     lsr   $3e
089a: b0 0e     bcs   $08aa
089c: cb f2     mov   $f2,y
089e: 8f 00 f3  mov   $f3,#$00          ; zero voice vol L
08a1: fc        inc   y
08a2: cb f2     mov   $f2,y
08a4: 8f 00 f3  mov   $f3,#$00          ; zero voice vol R
08a7: dc        dec   y
08a8: 2f 0f     bra   $08b9
08aa: 6d        push  y
08ab: cd 08     mov   x,#$08
08ad: cb f2     mov   $f2,y
08af: f6 00 02  mov   a,$0200+y
08b2: c4 f3     mov   $f3,a
08b4: fc        inc   y
08b5: 1d        dec   x
08b6: d0 f5     bne   $08ad             ; copy $0200+Y to DSP voice regs 00-07
08b8: ee        pop   y
08b9: dd        mov   a,y
08ba: 60        clrc
08bb: 88 10     adc   a,#$10
08bd: fd        mov   y,a
08be: 10 d8     bpl   $0898             ; do all voices
08c0: e4 44     mov   a,$44
08c2: 28 5f     and   a,#$5f
08c4: 08 20     or    a,#$20
08c6: 8f 6c f2  mov   $f2,#$6c
08c9: c4 f3     mov   $f3,a             ; set #$6c to FLG (disable mute, enable echo)
08cb: e4 46     mov   a,$46
08cd: 8f 3d f2  mov   $f2,#$3d
08d0: c4 f3     mov   $f3,a             ; set $46 to NON
08d2: e4 40     mov   a,$40
08d4: 8f 4c f2  mov   $f2,#$4c
08d7: c4 f3     mov   $f3,a             ; set $40 to KON
08d9: 6f        ret

08da: 8f 6c f2  mov   $f2,#$6c
08dd: 8f 60 f3  mov   $f3,#$60          ; set #$6c to FLG (mute all voices, disable echo)
08e0: e4 01     mov   a,$01
08e2: 28 4c     and   a,#$4c
08e4: c4 01     mov   $01,a
08e6: e5 00 18  mov   a,$1800
08e9: c4 50     mov   $50,a
08eb: e5 01 18  mov   a,$1801
08ee: c4 51     mov   $51,a             ; set song table address to $50/1
08f0: e5 02 18  mov   a,$1802
08f3: c4 52     mov   $52,a
08f5: 60        clrc
08f6: 88 11     adc   a,#$11
08f8: c4 54     mov   $54,a
08fa: e5 03 18  mov   a,$1803
08fd: c4 53     mov   $53,a             ; set duration table address to $52/3
08ff: 88 00     adc   a,#$00
0901: c4 55     mov   $55,a             ; set percussion table address to $54/5 (8 bytes * 30 notes)
0903: e5 04 18  mov   a,$1804
0906: c4 56     mov   $56,a
0908: e5 05 18  mov   a,$1805
090b: c4 57     mov   $57,a             ; set envelope table address to $56/7
090d: e5 06 18  mov   a,$1806
0910: c4 58     mov   $58,a
0912: e5 07 18  mov   a,$1807
0915: c4 59     mov   $59,a             ; set pitch envelope table address to $58/9
0917: e5 08 18  mov   a,$1808
091a: c4 5a     mov   $5a,a
091c: e5 09 18  mov   a,$1809
091f: c4 5b     mov   $5b,a             ; set $5A/B to $1808/9
0921: e5 0a 18  mov   a,$180a
0924: c4 5c     mov   $5c,a
0926: e5 0b 18  mov   a,$180b
0929: c4 5d     mov   $5d,a             ; set $5C/D to $180A/B
092b: e5 0c 18  mov   a,$180c
092e: c4 5e     mov   $5e,a
0930: e5 0d 18  mov   a,$180d
0933: c4 5f     mov   $5f,a             ; set ADSR/GAIN pattern table address to $5e/f
0935: 8f 5d f2  mov   $f2,#$5d
0938: e5 0e 18  mov   a,$180e
093b: c4 f3     mov   $f3,a             ; set $180E to DIR
093d: e5 0f 18  mov   a,$180f
0940: c4 3d     mov   $3d,a             ; set global transpose?
0942: e5 12 18  mov   a,$1812
0945: c4 62     mov   $62,a
0947: e5 13 18  mov   a,$1813
094a: c4 63     mov   $63,a             ; set instrument region table address to $62/3 (2 bytes / sample, index by SRCN)
094c: e5 14 18  mov   a,$1814
094f: c4 64     mov   $64,a
0951: e5 15 18  mov   a,$1815
0954: c4 65     mov   $65,a             ; set panpot envelope table address to $64/5
0956: e5 16 18  mov   a,$1816
0959: c4 66     mov   $66,a
095b: e5 17 18  mov   a,$1817
095e: c4 67     mov   $67,a             ; set customized pitch table lookups
0960: 8d 00     mov   y,#$00
0962: e8 00     mov   a,#$00
0964: d6 00 02  mov   $0200+y,a         ; zero voice vol L
0967: d6 01 02  mov   $0201+y,a         ; zero voice vol R
096a: d6 02 02  mov   $0202+y,a         ; zero pitch value (lo)
096d: d6 04 02  mov   $0204+y,a         ; zero source number
0970: d6 05 02  mov   $0205+y,a         ; zero ADSR(1)
0973: d6 07 02  mov   $0207+y,a         ; zero envelope
0976: e8 10     mov   a,#$10
0978: d6 03 02  mov   $0203+y,a         ; clear pitch (#$1000)
097b: dd        mov   a,y
097c: 60        clrc
097d: 88 10     adc   a,#$10
097f: fd        mov   y,a
0980: 10 e0     bpl   $0962
0982: 4d        push  x
0983: cd 0f     mov   x,#$0f
0985: e8 00     mov   a,#$00
0987: d4 80     mov   $80+x,a           ; inactivate all tracks
0989: 1d        dec   x
098a: 10 f9     bpl   $0985
098c: ce        pop   x
;
098d: e4 01     mov   a,$01
098f: 28 df     and   a,#$df
0991: c4 01     mov   $01,a
0993: e8 1f     mov   a,#$1f
0995: c4 72     mov   $72,a
0997: 4d        push  x
0998: cd 0d     mov   x,#$0d
099a: f4 90     mov   a,$90+x
099c: 28 f7     and   a,#$f7
099e: d4 90     mov   $90+x,a
09a0: 1d        dec   x
09a1: 10 f7     bpl   $099a
09a3: ce        pop   x
09a4: 6f        ret

; vcmd dispatch table
09a5: dw $0a09  ; 80 - jump
09a7: dw $0a14  ; 81 - loop end
09a9: dw $0a60  ; 82 - halt
09ab: dw $0a6b  ; 83 - set pitch envelope id
09ad: dw $0a99  ; 84
09af: dw $0ab1  ; 85
09b1: dw $0a5b  ; 86
09b3: dw $0a95  ; 87 - set volume
09b5: dw $0a6f  ; 88 - set software volume envelope
09b7: dw $0a73  ; 89 - transpose (relative)
09b9: dw $0a7e  ; 8a - increase/decrease volume
09bb: dw $0b51  ; 8b
09bd: dw $0b90  ; 8c - nop
09bf: dw $0a50  ; 8d - loop begin
09c1: dw $0b43  ; 8e
09c3: dw $0b47  ; 8f
09c5: dw $0a7b  ; 90 - set $80+x
09c7: dw $0ac9  ; 91
09c9: dw $0ace  ; 92
09cb: dw $0ae1  ; 93
09cd: dw $0b5d  ; 94
09cf: dw $0b0e  ; 95
09d1: dw $0b3f  ; 96 - set tempo
09d3: dw $0bde  ; 97 - tuning
09d5: dw $0ba2  ; 98
09d7: dw $0b80  ; 99
09d9: dw $0c00  ; 9a - subroutine jump
09db: dw $0c13  ; 9b - exit subroutine
09dd: dw $0b23  ; 9c
09df: dw $0ba6  ; 9d
09e1: dw $0b1b  ; 9e
09e3: dw $0bda  ; 9f - set ADSR/GAIN pattern
09e5: dw $0baa  ; a0 - set sample
09e7: dw $0b92  ; a1 - slur on
09e9: dw $0b9a  ; a2 - slur off
09eb: dw $0c20  ; a3 - set panpot envelope pattern
09ed: dw $0a48  ; a4 - conditional do
09ef: dw $0a3c  ; a5 - branch channel
09f1: dw $0c68  ; a6 - nop (*)
09f3: dw $0c68  ; a7 - nop (*)
09f5: dw $0c6a  ; a8 (*)
09f7: dw $0c6a  ; a9 (*)
09f9: dw $0c6a  ; aa (*)
09fb: dw $0c5b  ; ab - set panpot
09fd: dw $0b4d  ; ac
09ff: dw $0a28  ; ad - conditional loop
0a01: dw $0c6a  ; ae
0a03: dw $0c72  ; af
0a05: dw $0c6a  ; b0 (*)
0a07: dw $0c7a  ; b1
                ; b2-bf - crash
; vcmd 80 - jump
0a09: 5d        mov   x,a
0a0a: fc        inc   y
0a0b: f7 34     mov   a,($34)+y
0a0d: c4 35     mov   $35,a
0a0f: d8 34     mov   $34,x             ; goto arg1/2
0a11: 8d ff     mov   y,#$ff            ; clear reading index
0a13: 6f        ret

; vcmd 81 - jump if (--counter != 0)
0a14: 60        clrc
0a15: 84 2b     adc   a,$2b
0a17: 5d        mov   x,a
0a18: fc        inc   y
0a19: f5 00 03  mov   a,$0300+x
0a1c: 9c        dec   a
0a1d: d5 00 03  mov   $0300+x,a         ; dec loop counter ($0300+X+arg1)
0a20: f0 04     beq   $0a26
0a22: f7 34     mov   a,($34)+y
0a24: 2f e3     bra   $0a09             ; if (counter != 0) jump to arg2/3
0a26: fc        inc   y
0a27: 6f        ret

; vcmd AD - jump if (--counter == 0)
0a28: 60        clrc
0a29: 84 2b     adc   a,$2b
0a2b: 5d        mov   x,a
0a2c: fc        inc   y
0a2d: f5 00 03  mov   a,$0300+x
0a30: 9c        dec   a
0a31: d5 00 03  mov   $0300+x,a         ; dec loop counter ($0300+X+arg1)
0a34: d0 04     bne   $0a3a
0a36: f7 34     mov   a,($34)+y
0a38: 2f cf     bra   $0a09             ; if (counter == 0) jump to arg2/3
0a3a: fc        inc   y
0a3b: 6f        ret

; vcmd A5 - branch channel
0a3c: fc        inc   y
0a3d: 75 70 03  cmp   a,$0370+x
0a40: f0 02     beq   $0a44             ; branch if (arg1 == curChannel)
0a42: fc        inc   y
0a43: 6f        ret

0a44: f7 34     mov   a,($34)+y
0a46: 2f c1     bra   $0a09             ; jump to arg2/3
; vcmd A4 - conditional do
0a48: 75 70 03  cmp   a,$0370+x
0a4b: f0 02     beq   $0a4f
0a4d: fc        inc   y                 ; if (arg1 != curChannel)
0a4e: fc        inc   y                 ;     skip next vcmd
0a4f: 6f        ret

; vcmd 8D - loop begin
0a50: 60        clrc
0a51: 84 2b     adc   a,$2b
0a53: 5d        mov   x,a
0a54: fc        inc   y
0a55: f7 34     mov   a,($34)+y
0a57: d5 00 03  mov   $0300+x,a         ; set loop counter ($0300+X+arg1) to arg2
0a5a: 6f        ret

; vcmd 86
0a5b: f5 f0 01  mov   a,$01f0+x
0a5e: c4 00     mov   $00,a
; vcmd 82 - halt
0a60: e8 00     mov   a,#$00
0a62: d4 80     mov   $80+x,a
0a64: ae        pop   a
0a65: ae        pop   a
0a66: ae        pop   a
0a67: ae        pop   a
0a68: 5f 35 08  jmp   $0835
; vcmd 83 - set pitch envelope id
0a6b: d5 40 03  mov   $0340+x,a
0a6e: 6f        ret

; vcmd 88 - set software volume envelope
0a6f: d5 30 03  mov   $0330+x,a
0a72: 6f        ret

; vcmd 89 - transpose (relative)
0a73: 60        clrc
0a74: 95 50 03  adc   a,$0350+x
0a77: d5 50 03  mov   $0350+x,a         ; add arg1 (semitones)
0a7a: 6f        ret

; vcmd 90 - set $80+X
0a7b: d4 80     mov   $80+x,a
0a7d: 6f        ret

; vcmd 8A - increase/decrease volume
0a7e: 60        clrc
0a7f: 30 0d     bmi   $0a8e
0a81: 95 20 03  adc   a,$0320+x
0a84: 68 1f     cmp   a,#$1f
0a86: 90 02     bcc   $0a8a
0a88: e8 1f     mov   a,#$1f
0a8a: d5 20 03  mov   $0320+x,a
0a8d: 6f        ret

0a8e: 95 20 03  adc   a,$0320+x
0a91: b0 f7     bcs   $0a8a
0a93: e8 00     mov   a,#$00
; vcmd 87 - set volume
0a95: d5 20 03  mov   $0320+x,a
0a98: 6f        ret

; vcmd 84
0a99: f0 0f     beq   $0aaa
0a9b: d5 90 04  mov   $0490+x,a
0a9e: e8 00     mov   a,#$00
0aa0: d5 40 05  mov   $0540+x,a
0aa3: f4 a0     mov   a,$a0+x
0aa5: 08 08     or    a,#$08
0aa7: d4 a0     mov   $a0+x,a
0aa9: 6f        ret

0aaa: f4 a0     mov   a,$a0+x
0aac: 28 f7     and   a,#$f7
0aae: d4 a0     mov   $a0+x,a
0ab0: 6f        ret

; vcmd 85
0ab1: fc        inc   y
0ab2: f8 eb     mov   x,$eb
0ab4: c8 08     cmp   x,#$08
0ab6: f0 0f     beq   $0ac7
0ab8: d4 10     mov   $10+x,a
0aba: f7 34     mov   a,($34)+y
0abc: d4 18     mov   $18+x,a
0abe: fc        inc   y
0abf: f7 34     mov   a,($34)+y
0ac1: d4 20     mov   $20+x,a
0ac3: 3d        inc   x
0ac4: d8 eb     mov   $eb,x
0ac6: 6f        ret

0ac7: fc        inc   y
0ac8: 6f        ret

; vcmd 91
0ac9: 04 00     or    a,$00
0acb: c4 00     mov   $00,a
0acd: 6f        ret

; vcmd 92
0ace: 28 03     and   a,#$03
0ad0: c4 38     mov   $38,a
0ad2: e4 01     mov   a,$01
0ad4: 28 04     and   a,#$04
0ad6: f0 08     beq   $0ae0
0ad8: f4 b0     mov   a,$b0+x
0ada: 28 fc     and   a,#$fc
0adc: 04 38     or    a,$38
0ade: d4 b0     mov   $b0+x,a
0ae0: 6f        ret

; vcmd 93
0ae1: c4 36     mov   $36,a
0ae3: 28 1f     and   a,#$1f
0ae5: d5 90 01  mov   $0190+x,a
0ae8: f4 90     mov   a,$90+x
0aea: 28 cd     and   a,#$cd
0aec: 08 20     or    a,#$20
0aee: cb 37     mov   $37,y
0af0: eb 36     mov   y,$36
0af2: 10 02     bpl   $0af6
0af4: 08 10     or    a,#$10
0af6: d4 90     mov   $90+x,a
0af8: e8 00     mov   a,#$00
0afa: d5 b0 01  mov   $01b0+x,a
0afd: eb 37     mov   y,$37
0aff: fc        inc   y
0b00: f7 34     mov   a,($34)+y
0b02: d5 a0 01  mov   $01a0+x,a
0b05: d0 06     bne   $0b0d
0b07: f4 90     mov   a,$90+x
0b09: 28 df     and   a,#$df
0b0b: d4 90     mov   $90+x,a
0b0d: 6f        ret

; vcmd 95
0b0e: f4 90     mov   a,$90+x
0b10: 28 02     and   a,#$02
0b12: d0 05     bne   $0b19
0b14: f7 34     mov   a,($34)+y
0b16: 5f 09 0a  jmp   $0a09
0b19: fc        inc   y
0b1a: 6f        ret

; vcmd 9E
0b1b: f4 a0     mov   a,$a0+x
0b1d: 28 20     and   a,#$20
0b1f: d0 f3     bne   $0b14
0b21: fc        inc   y
0b22: 6f        ret

; vcmd 9C
0b23: b5 00 03  sbc   a,$0300+x
0b26: 2d        push  a
0b27: fc        inc   y
0b28: f7 34     mov   a,($34)+y
0b2a: c4 36     mov   $36,a
0b2c: fc        inc   y
0b2d: f7 34     mov   a,($34)+y
0b2f: c4 37     mov   $37,a
0b31: ae        pop   a
0b32: 6d        push  y
0b33: fd        mov   y,a
0b34: f7 36     mov   a,($36)+y
0b36: ee        pop   y
0b37: 60        clrc
0b38: 95 50 03  adc   a,$0350+x
0b3b: d5 50 03  mov   $0350+x,a
0b3e: 6f        ret

; vcmd 96 - set tempo
0b3f: d5 60 03  mov   $0360+x,a
0b42: 6f        ret

; vcmd 8E
0b43: d5 50 01  mov   $0150+x,a
0b46: 6f        ret

; vcmd 8F
0b47: 60        clrc
0b48: 95 60 01  adc   a,$0160+x
0b4b: 28 1f     and   a,#$1f
; vcmd AC
0b4d: d5 60 01  mov   $0160+x,a
0b50: 6f        ret

; vcmd 8B
0b51: 30 03     bmi   $0b56
0b53: d5 40 04  mov   $0440+x,a
0b56: fc        inc   y
0b57: f7 34     mov   a,($34)+y
0b59: d5 50 04  mov   $0450+x,a
0b5c: 6f        ret

; vcmd 94
0b5d: 30 0e     bmi   $0b6d
0b5f: f0 18     beq   $0b79
0b61: d5 b0 04  mov   $04b0+x,a
0b64: f4 90     mov   a,$90+x
0b66: 28 bf     and   a,#$bf
0b68: 08 80     or    a,#$80
0b6a: d4 90     mov   $90+x,a
0b6c: 6f        ret

0b6d: 28 7f     and   a,#$7f
0b6f: d5 b0 04  mov   $04b0+x,a
0b72: f4 90     mov   a,$90+x
0b74: 08 c0     or    a,#$c0
0b76: d4 90     mov   $90+x,a
0b78: 6f        ret

0b79: f4 90     mov   a,$90+x
0b7b: 28 7f     and   a,#$7f
0b7d: d4 90     mov   $90+x,a
0b7f: 6f        ret

; vcmd 99
0b80: f4 80     mov   a,$80+x
0b82: 48 10     eor   a,#$10
0b84: d4 80     mov   $80+x,a
0b86: 28 10     and   a,#$10
0b88: f0 06     beq   $0b90
0b8a: e4 3a     mov   a,$3a
0b8c: 08 08     or    a,#$08
0b8e: c4 3a     mov   $3a,a
; vcmd 8C - nop
0b90: dc        dec   y
0b91: 6f        ret

; vcmd A1 - slur on
0b92: f4 80     mov   a,$80+x
0b94: 08 10     or    a,#$10
0b96: d4 80     mov   $80+x,a
0b98: 2f f0     bra   $0b8a
; vcmd A2 - slur off
0b9a: f4 80     mov   a,$80+x
0b9c: 28 ef     and   a,#$ef
0b9e: d4 80     mov   $80+x,a
0ba0: dc        dec   y
0ba1: 6f        ret

; vcmd 98
0ba2: d5 70 03  mov   $0370+x,a
0ba5: 6f        ret

; vcmd 9D
0ba6: d5 c0 01  mov   $01c0+x,a
0ba9: 6f        ret

; vcmd A0 - set sample
0baa: 3f b4 0b  call  $0bb4
0bad: e4 3a     mov   a,$3a
0baf: 08 10     or    a,#$10
0bb1: c4 3a     mov   $3a,a
0bb3: 6f        ret

; change voice X sample to A
0bb4: d5 a0 03  mov   $03a0+x,a         ; SRCN
;
0bb7: 1c        asl   a
0bb8: 6d        push  y
0bb9: fd        mov   y,a
0bba: fc        inc   y
0bbb: f7 62     mov   a,($62)+y         ; read higher byte (pitch table index)
0bbd: d0 0c     bne   $0bcb             ; pitch table index is set
0bbf: e8 03     mov   a,#$03
0bc1: d5 70 01  mov   $0170+x,a
0bc4: e8 14     mov   a,#$14
0bc6: d5 80 01  mov   $0180+x,a         ; set fixed pitch table address
0bc9: ee        pop   y
0bca: 6f        ret
; set customized pitch table address
0bcb: 1c        asl   a
0bcc: fd        mov   y,a
0bcd: f7 66     mov   a,($66)+y
0bcf: d5 70 01  mov   $0170+x,a
0bd2: fc        inc   y
0bd3: f7 66     mov   a,($66)+y
0bd5: d5 80 01  mov   $0180+x,a         ; set customized pitch table address
0bd8: ee        pop   y
0bd9: 6f        ret

; vcmd 9F - set ADSR/GAIN pattern
0bda: d5 b0 03  mov   $03b0+x,a
0bdd: 6f        ret

; vcmd 97 - tuning
0bde: c4 36     mov   $36,a
0be0: 60        clrc
0be1: 95 20 04  adc   a,$0420+x
0be4: d5 20 04  mov   $0420+x,a
0be7: fc        inc   y
0be8: f7 34     mov   a,($34)+y
0bea: d0 0d     bne   $0bf9
0bec: e4 36     mov   a,$36
0bee: d0 07     bne   $0bf7
0bf0: d5 20 04  mov   $0420+x,a
0bf3: d5 30 04  mov   $0430+x,a
0bf6: 6f        ret

0bf7: e8 00     mov   a,#$00
0bf9: 95 30 04  adc   a,$0430+x
0bfc: d5 30 04  mov   $0430+x,a
0bff: 6f        ret

; vcmd 9A - subroutine jump
0c00: dd        mov   a,y
0c01: 80        setc
0c02: 84 34     adc   a,$34
0c04: d5 d0 01  mov   $01d0+x,a
0c07: e4 35     mov   a,$35
0c09: 88 00     adc   a,#$00
0c0b: d5 e0 01  mov   $01e0+x,a         ; save position
0c0e: f7 34     mov   a,($34)+y
0c10: 5f 09 0a  jmp   $0a09             ; subroutine jump
; vcmd 9B - exit subroutine
0c13: f5 d0 01  mov   a,$01d0+x
0c16: c4 34     mov   $34,a
0c18: f5 e0 01  mov   a,$01e0+x
0c1b: c4 35     mov   $35,a             ; restore position
0c1d: 8d 00     mov   y,#$00            ; clear reading index
0c1f: 6f        ret

; vcmd A3 - set panpot envelope pattern
0c20: f0 30     beq   $0c52
0c22: 1c        asl   a
0c23: 6d        push  y
0c24: fd        mov   y,a
0c25: f7 64     mov   a,($64)+y
0c27: d5 60 04  mov   $0460+x,a
0c2a: c4 36     mov   $36,a
0c2c: fc        inc   y
0c2d: f7 64     mov   a,($64)+y
0c2f: d5 70 04  mov   $0470+x,a
0c32: c4 37     mov   $37,a             ; load panpot envelope address
0c34: 8d 00     mov   y,#$00
0c36: f7 36     mov   a,($36)+y
0c38: ee        pop   y
0c39: d5 c0 03  mov   $03c0+x,a         ; set panpot
0c3c: e4 01     mov   a,$01
0c3e: 28 04     and   a,#$04
0c40: d0 04     bne   $0c46
0c42: d5 c0 03  mov   $03c0+x,a         ; mono, force center
0c45: 6f        ret

0c46: f4 90     mov   a,$90+x
0c48: 08 01     or    a,#$01
0c4a: d4 90     mov   $90+x,a
0c4c: e8 80     mov   a,#$80
0c4e: d5 80 04  mov   $0480+x,a
0c51: 6f        ret
; 00 - direct
0c52: f4 90     mov   a,$90+x
0c54: 28 fe     and   a,#$fe
0c56: d4 90     mov   $90+x,a
0c58: fc        inc   y
0c59: f7 34     mov   a,($34)+y         ; arg2 - panpot
; vcmd AB - set panpot
0c5b: d5 c0 03  mov   $03c0+x,a         ; signed 8bit pan
0c5e: e4 01     mov   a,$01
0c60: 28 04     and   a,#$04
0c62: d0 03     bne   $0c67
0c64: d5 c0 03  mov   $03c0+x,a         ; mono, force center
0c67: 6f        ret

; vcmds A6,A7 - nop (*)
0c68: dc        dec   y
0c69: 6f        ret

; vcmd AE, vcmds A8,A9,AA,B0 (*)
0c6a: f4 b0     mov   a,$b0+x
0c6c: 28 fb     and   a,#$fb
0c6e: d4 b0     mov   $b0+x,a
0c70: dc        dec   y
0c71: 6f        ret

; vcmd AF
0c72: f4 b0     mov   a,$b0+x
0c74: 08 04     or    a,#$04
0c76: d4 b0     mov   $b0+x,a
0c78: dc        dec   y
0c79: 6f        ret

; vcmd B1
0c7a: f8 eb     mov   x,$eb
0c7c: c8 08     cmp   x,#$08
0c7e: f0 13     beq   $0c93
0c80: d4 08     mov   $08+x,a
0c82: e8 fc     mov   a,#$fc
0c84: d4 10     mov   $10+x,a
0c86: f5 20 03  mov   a,$0320+x
0c89: d4 18     mov   $18+x,a
0c8b: f5 50 03  mov   a,$0350+x
0c8e: d4 20     mov   $20+x,a
0c90: 3d        inc   x
0c91: d8 eb     mov   $eb,x
0c93: f8 2b     mov   x,$2b
0c95: e4 3a     mov   a,$3a
0c97: 08 40     or    a,#$40
0c99: c4 3a     mov   $3a,a
0c9b: f5 40 05  mov   a,$0540+x
0c9e: 0d        push  psw
0c9f: e8 01     mov   a,#$01
0ca1: d5 d0 00  mov   $00d0+x,a
0ca4: d5 40 05  mov   $0540+x,a
0ca7: fc        inc   y
0ca8: ae        pop   a
0ca9: ae        pop   a
0caa: 5f ab 0d  jmp   $0dab
; dispatch vcmd in A, read first argument
0cad: 1c        asl   a
0cae: 5d        mov   x,a
0caf: f5 a6 09  mov   a,$09a6+x
0cb2: 2d        push  a
0cb3: f5 a5 09  mov   a,$09a5+x
0cb6: 2d        push  a
0cb7: f8 2b     mov   x,$2b
0cb9: fc        inc   y
0cba: f7 34     mov   a,($34)+y
0cbc: 6f        ret

; do vcmds
0cbd: f5 80 03  mov   a,$0380+x
0cc0: c4 34     mov   $34,a
0cc2: f5 90 03  mov   a,$0390+x
0cc5: c4 35     mov   $35,a             ; set $34/5 to reading ptr (lo/hi)
0cc7: 8d 00     mov   y,#$00            ; zero reading index
0cc9: f7 34     mov   a,($34)+y         ; read vcmd
0ccb: 30 03     bmi   $0cd0             ; vcmds 80-FF
0ccd: 5f 6b 0d  jmp   $0d6b             ; vcmds 00-7F
;
0cd0: 68 c0     cmp   a,#$c0
0cd2: b0 08     bcs   $0cdc
0cd4: 3f ad 0c  call  $0cad             ; dispatch vcmds 80-BF
0cd7: f8 2b     mov   x,$2b             ; voice number
0cd9: fc        inc   y
0cda: 2f ed     bra   $0cc9             ; do next vcmd
0cdc: 68 de     cmp   a,#$de
0cde: 90 03     bcc   $0ce3             ; vcmds C0-DD
0ce0: 5f 63 0d  jmp   $0d63             ; vcmds DE-FF
; vcmds C0-DD, percussion notes
0ce3: a8 bf     sbc   a,#$bf
0ce5: 1c        asl   a
0ce6: 1c        asl   a
0ce7: 1c        asl   a                 ; percussion index * 8
0ce8: 6d        push  y
0ce9: fd        mov   y,a
0cea: f7 54     mov   a,($54)+y
0cec: 75 a0 03  cmp   a,$03a0+x         ; +0 SRCN
0cef: f0 03     beq   $0cf4
0cf1: 3f b4 0b  call  $0bb4
0cf4: e4 3a     mov   a,$3a
0cf6: 08 10     or    a,#$10
0cf8: c4 3a     mov   $3a,a
0cfa: fc        inc   y
0cfb: f7 54     mov   a,($54)+y
0cfd: d5 b0 03  mov   $03b0+x,a         ; +1 ADSR/GAIN pattern
0d00: fc        inc   y
0d01: f7 54     mov   a,($54)+y
0d03: d5 30 03  mov   $0330+x,a         ; +2 volume envelope #
0d06: fc        inc   y
0d07: f7 54     mov   a,($54)+y
0d09: c4 38     mov   $38,a             ; +3 note number?
0d0b: fc        inc   y
0d0c: f7 54     mov   a,($54)+y
0d0e: c4 39     mov   $39,a             ; +4 flags and something?
0d10: 28 1f     and   a,#$1f
0d12: d5 60 01  mov   $0160+x,a
0d15: e4 39     mov   a,$39
0d17: 0d        push  psw
0d18: 3c        rol   a
0d19: 3c        rol   a
0d1a: 3c        rol   a
0d1b: 3c        rol   a
0d1c: 28 03     and   a,#$03
0d1e: c4 39     mov   $39,a
0d20: f4 80     mov   a,$80+x
0d22: 28 fc     and   a,#$fc
0d24: 04 39     or    a,$39
0d26: d4 80     mov   $80+x,a
0d28: e4 38     mov   a,$38
0d2a: 8e        pop   psw
0d2b: 30 0a     bmi   $0d37
0d2d: d5 40 03  mov   $0340+x,a
0d30: e8 00     mov   a,#$00
0d32: d5 b0 04  mov   $04b0+x,a
0d35: 2f 0a     bra   $0d41
0d37: 28 ff     and   a,#$ff
0d39: 3f 5d 0b  call  $0b5d
0d3c: e8 00     mov   a,#$00
0d3e: d5 40 03  mov   $0340+x,a
0d41: fc        inc   y
0d42: f4 b0     mov   a,$b0+x
0d44: 28 04     and   a,#$04
0d46: d0 0b     bne   $0d53
0d48: e4 01     mov   a,$01
0d4a: 28 04     and   a,#$04
0d4c: f0 02     beq   $0d50
0d4e: f7 54     mov   a,($54)+y
0d50: d5 c0 03  mov   $03c0+x,a         ; +5 panpot
0d53: fc        inc   y                 ; +6 not used?
0d54: fc        inc   y
0d55: f7 54     mov   a,($54)+y
0d57: d0 11     bne   $0d6a             ; +7
0d59: c4 39     mov   $39,a
0d5b: ee        pop   y
0d5c: fc        inc   y
0d5d: f7 34     mov   a,($34)+y         ; read vcmd
0d5f: 10 0a     bpl   $0d6b             ; vcmds 00-7F
0d61: 30 0b     bmi   $0d6e             ; vcmds 80-FF
; vcmds DE-FF - set duration
0d63: f5 40 05  mov   a,$0540+x
0d66: 0d        push  psw
0d67: 5f 77 0d  jmp   $0d77
;
0d6a: ee        pop   y
; vcmds 00-7F - note
0d6b: c4 39     mov   $39,a
0d6d: fc        inc   y
0d6e: f5 40 05  mov   a,$0540+x
0d71: 0d        push  psw
0d72: e4 39     mov   a,$39
0d74: d5 40 05  mov   $0540+x,a         ; set note number
0d77: f0 2f     beq   $0da8             ; rest (#$00)
0d79: c4 38     mov   $38,a             ; save note number
0d7b: f4 a0     mov   a,$a0+x
0d7d: 28 08     and   a,#$08            ; if voice slurred
0d7f: f0 25     beq   $0da6
0d81: f4 c0     mov   a,$c0+x
0d83: c4 28     mov   $28,a
0d85: f4 d0     mov   a,$d0+x
0d87: c4 29     mov   $29,a             ; set current pitch to $28/9
0d89: e4 38     mov   a,$38             ; set note number to A
0d8b: 3f 62 0e  call  $0e62             ; calculate pitch value (slurred)
0d8e: f4 c0     mov   a,$c0+x
0d90: d5 a0 04  mov   $04a0+x,a
0d93: f4 d0     mov   a,$d0+x
0d95: d5 b0 04  mov   $04b0+x,a         ; set target pitch value
0d98: 8e        pop   psw
0d99: 0d        push  psw
0d9a: f0 0f     beq   $0dab             ; rest (#$00)
0d9c: e4 28     mov   a,$28
0d9e: d4 c0     mov   $c0+x,a
0da0: e4 29     mov   a,$29
0da2: d4 d0     mov   $d0+x,a
0da4: 2f 05     bra   $0dab
0da6: e4 38     mov   a,$38             ; set note number to A
0da8: 3f 62 0e  call  $0e62             ; calculate pitch value
0dab: f7 34     mov   a,($34)+y         ; read vcmd
0dad: 68 ef     cmp   a,#$ef
0daf: 90 1c     bcc   $0dcd             ; vcmds 00-EE
0db1: a8 ef     sbc   a,#$ef
0db3: d0 05     bne   $0dba             ; vcmds F0-FF
0db5: fc        inc   y                 ; vcmd EF, inc reading index
0db6: f7 34     mov   a,($34)+y         ; read argument
0db8: b0 07     bcs   $0dc1
0dba: cb 36     mov   $36,y
0dbc: fd        mov   y,a
0dbd: f7 52     mov   a,($52)+y         ; read duration from table
0dbf: eb 36     mov   y,$36
0dc1: fc        inc   y
0dc2: d5 10 04  mov   $0410+x,a
0dc5: f7 34     mov   a,($34)+y
0dc7: d5 c0 01  mov   $01c0+x,a
0dca: fc        inc   y
0dcb: 2f 16     bra   $0de3
0dcd: a8 dd     sbc   a,#$dd
0dcf: 90 12     bcc   $0de3             ; vcmds 00-DD
0dd1: d0 05     bne   $0dd8             ; vcmds DF-EE
0dd3: fc        inc   y                 ; vcmd DE, inc reading index
0dd4: f7 34     mov   a,($34)+y         ; read argument
0dd6: b0 07     bcs   $0ddf             ; branch always
0dd8: cb 36     mov   $36,y
0dda: fd        mov   y,a
0ddb: f7 52     mov   a,($52)+y         ; read duration from table
0ddd: eb 36     mov   y,$36
0ddf: fc        inc   y                 ; inc reading index
0de0: d5 10 04  mov   $0410+x,a         ; set duration
0de3: e8 00     mov   a,#$00
0de5: d5 00 04  mov   $0400+x,a         ; zero duration counter
0de8: 8e        pop   psw
0de9: f0 2c     beq   $0e17             ;; jump if ($0540+X == 0) (rest)
0deb: f4 80     mov   a,$80+x
0ded: 28 10     and   a,#$10
0def: f0 14     beq   $0e05
0df1: e4 3a     mov   a,$3a
0df3: 28 08     and   a,#$08
0df5: d0 0e     bne   $0e05
0df7: f4 a0     mov   a,$a0+x
0df9: 28 40     and   a,#$40
0dfb: f0 42     beq   $0e3f
0dfd: e4 3a     mov   a,$3a
0dff: 08 20     or    a,#$20
0e01: c4 3a     mov   $3a,a
0e03: 2f 3a     bra   $0e3f
0e05: f4 80     mov   a,$80+x
0e07: 28 04     and   a,#$04
0e09: f0 0c     beq   $0e17
0e0b: e4 3a     mov   a,$3a
0e0d: 28 10     and   a,#$10
0e0f: d0 06     bne   $0e17
0e11: f4 a0     mov   a,$a0+x
0e13: 28 50     and   a,#$50
0e15: f0 06     beq   $0e1d
;
0e17: e4 3a     mov   a,$3a
0e19: 08 20     or    a,#$20
0e1b: c4 3a     mov   $3a,a
0e1d: e8 01     mov   a,#$01
0e1f: d5 f0 04  mov   $04f0+x,a         ; set $04f0+X to #$01
0e22: d5 10 05  mov   $0510+x,a         ; set $0510+X to #$01
0e25: d5 30 05  mov   $0530+x,a         ; set $0530+X to #$01
0e28: d5 d0 04  mov   $04d0+x,a         ; set $04d0+X to #$01
0e2b: e8 ff     mov   a,#$ff
0e2d: d5 e0 04  mov   $04e0+x,a         ; set $04e0+X to #$FF
0e30: d5 00 05  mov   $0500+x,a         ; set $0500+X to #$FF
0e33: d5 20 05  mov   $0520+x,a         ; set $0520+X to #$FF
0e36: d5 c0 04  mov   $04c0+x,a         ; set $04c0+X to #$FF
0e39: f4 90     mov   a,$90+x
0e3b: 08 04     or    a,#$04
0e3d: d4 90     mov   $90+x,a
0e3f: dd        mov   a,y
0e40: 60        clrc
0e41: 84 34     adc   a,$34
0e43: d5 80 03  mov   $0380+x,a
0e46: e4 35     mov   a,$35
0e48: 88 00     adc   a,#$00
0e4a: d5 90 03  mov   $0390+x,a         ; set reading ptr (lo/hi) to $34/5 + Y
0e4d: e4 3a     mov   a,$3a
0e4f: 08 80     or    a,#$80
0e51: c4 3a     mov   $3a,a
0e53: e4 3a     mov   a,$3a
0e55: 28 40     and   a,#$40
0e57: c4 36     mov   $36,a
0e59: f4 a0     mov   a,$a0+x
0e5b: 28 af     and   a,#$af
0e5d: 04 36     or    a,$36
0e5f: d4 a0     mov   $a0+x,a
0e61: 6f        ret

; calculate pitch value for note in A
0e62: d4 c0     mov   $c0+x,a           ; note number
0e64: 28 ff     and   a,#$ff
0e66: d0 03     bne   $0e6b             ; note (not rest)
0e68: d4 d0     mov   $d0+x,a           ; zero $C0/D0+X
0e6a: 6f        ret

0e6b: f4 80     mov   a,$80+x
0e6d: 28 08     and   a,#$08
0e6f: f0 13     beq   $0e84
0e71: e8 01     mov   a,#$01
0e73: d4 d0     mov   $d0+x,a
0e75: f4 c0     mov   a,$c0+x
0e77: 9c        dec   a
0e78: 60        clrc
0e79: 95 50 03  adc   a,$0350+x         ; add transpose
0e7c: d4 c0     mov   $c0+x,a
0e7e: 28 1f     and   a,#$1f
0e80: d5 60 01  mov   $0160+x,a
0e83: 6f        ret

0e84: f4 c0     mov   a,$c0+x           ; note number
0e86: 60        clrc
0e87: 95 50 03  adc   a,$0350+x         ; add transpose
0e8a: c4 38     mov   $38,a
0e8c: 6d        push  y
0e8d: f5 a0 03  mov   a,$03a0+x         ; SRCN
0e90: 1c        asl   a
0e91: fd        mov   y,a
0e92: f7 62     mov   a,($62)+y         ; get lower byte (per-voice transpose)
0e94: 84 38     adc   a,$38
0e96: f0 25     beq   $0ebd             ; invalid note < 0, rest
0e98: 68 79     cmp   a,#$79
0e9a: b0 21     bcs   $0ebd             ; invalid note > 79, rest
0e9c: 1c        asl   a
0e9d: fd        mov   y,a
0e9e: f5 70 01  mov   a,$0170+x
0ea1: c4 36     mov   $36,a
0ea3: f5 80 01  mov   a,$0180+x
0ea6: c4 37     mov   $37,a             ; pitch table address
0ea8: f5 20 04  mov   a,$0420+x
0eab: 97 36     adc   a,($36)+y         ; add tuning value to pitch value (lo)
0ead: d4 c0     mov   $c0+x,a           ; set pitch value (lo)
0eaf: fc        inc   y
0eb0: f7 36     mov   a,($36)+y
0eb2: 95 30 04  adc   a,$0430+x         ; add tuning value to pitch value (hi)
0eb5: 68 40     cmp   a,#$40
0eb7: b0 04     bcs   $0ebd             ; limits pitch range (0000-3FFF)
0eb9: d4 d0     mov   $d0+x,a           ; set pitch value (hi)
0ebb: ee        pop   y
0ebc: 6f        ret
; nullify invalid note (work as rest)
0ebd: e8 00     mov   a,#$00
0ebf: d4 c0     mov   $c0+x,a
0ec1: d4 d0     mov   $d0+x,a           ; zero $C0/D0+X
0ec3: ee        pop   y
0ec4: 6f        ret

; read actual ADSR/GAIN value from table
0ec5: f5 b0 03  mov   a,$03b0+x         ; ADSR/GAIN pattern #
0ec8: 1c        asl   a
0ec9: b0 0b     bcs   $0ed6
0ecb: fd        mov   y,a
0ecc: f7 5e     mov   a,($5e)+y
0ece: c4 3b     mov   $3b,a
0ed0: fc        inc   y
0ed1: f7 5e     mov   a,($5e)+y ;used for both ADSR(2) and GAIN
0ed3: c4 3c     mov   $3c,a
0ed5: 6f        ret

; reset ADSR/GAIN if the index = 0x80
0ed6: 8f 00 3b  mov   $3b,#$00
0ed9: d0 04     bne   $0edf
0edb: 8f 7f 3c  mov   $3c,#$7f
0ede: 6f        ret

;
0edf: fd        mov   y,a
0ee0: f7 5c     mov   a,($5c)+y
0ee2: c4 36     mov   $36,a
0ee4: fc        inc   y
0ee5: f7 5c     mov   a,($5c)+y
0ee7: c4 37     mov   $37,a
0ee9: f5 d0 04  mov   a,$04d0+x
0eec: 9c        dec   a
0eed: d5 d0 04  mov   $04d0+x,a
0ef0: f0 06     beq   $0ef8
0ef2: f5 c0 04  mov   a,$04c0+x
0ef5: fd        mov   y,a
0ef6: 2f 0e     bra   $0f06
0ef8: f5 c0 04  mov   a,$04c0+x
0efb: fd        mov   y,a
0efc: 3f 12 11  call  $1112
0eff: d5 d0 04  mov   $04d0+x,a
0f02: dd        mov   a,y
0f03: d5 c0 04  mov   $04c0+x,a
0f06: f7 36     mov   a,($36)+y
0f08: c4 3c     mov   $3c,a
0f0a: 6f        ret

; process software envelope
0f0b: f5 30 03  mov   a,$0330+x         ; volume envelope #
0f0e: d0 06     bne   $0f16
0f10: f5 20 03  mov   a,$0320+x
0f13: c4 2a     mov   $2a,a             ; constant volume
0f15: 6f        ret

0f16: 1c        asl   a
0f17: fd        mov   y,a
0f18: f7 56     mov   a,($56)+y
0f1a: c4 36     mov   $36,a
0f1c: fc        inc   y
0f1d: f7 56     mov   a,($56)+y
0f1f: c4 37     mov   $37,a             ; load envelope table address
0f21: f5 f0 04  mov   a,$04f0+x
0f24: 9c        dec   a
0f25: d5 f0 04  mov   $04f0+x,a
0f28: f0 07     beq   $0f31
0f2a: f5 e0 04  mov   a,$04e0+x
0f2d: fd        mov   y,a
0f2e: 5f 3f 0f  jmp   $0f3f

0f31: f5 e0 04  mov   a,$04e0+x
0f34: fd        mov   y,a
0f35: 3f 12 11  call  $1112
0f38: d5 f0 04  mov   $04f0+x,a
0f3b: dd        mov   a,y
0f3c: d5 e0 04  mov   $04e0+x,a
0f3f: f7 36     mov   a,($36)+y
0f41: bc        inc   a
0f42: 1c        asl   a
0f43: 1c        asl   a
0f44: fd        mov   y,a
0f45: f5 20 03  mov   a,$0320+x
0f48: cf        mul   ya
0f49: 1c        asl   a
0f4a: dd        mov   a,y
0f4b: 3c        rol   a
0f4c: c4 2a     mov   $2a,a
0f4e: 6f        ret

0f4f: e4 3a     mov   a,$3a
0f51: 10 0d     bpl   $0f60
0f53: f5 40 05  mov   a,$0540+x
0f56: f0 04     beq   $0f5c
0f58: 60        clrc
0f59: 95 50 03  adc   a,$0350+x
0f5c: d5 a0 04  mov   $04a0+x,a
0f5f: 6f        ret

0f60: f4 90     mov   a,$90+x
0f62: 28 40     and   a,#$40
0f64: d0 13     bne   $0f79
0f66: f5 a0 04  mov   a,$04a0+x
0f69: f0 f4     beq   $0f5f
0f6b: 80        setc
0f6c: b5 b0 04  sbc   a,$04b0+x
0f6f: 90 1d     bcc   $0f8e
0f71: f0 1b     beq   $0f8e
0f73: d5 a0 04  mov   $04a0+x,a
0f76: 5f 8a 0e  jmp   $0e8a

0f79: f5 a0 04  mov   a,$04a0+x
0f7c: f0 e1     beq   $0f5f
0f7e: 60        clrc
0f7f: 95 b0 04  adc   a,$04b0+x
0f82: b0 0a     bcs   $0f8e
0f84: 68 79     cmp   a,#$79
0f86: b0 06     bcs   $0f8e
0f88: d5 a0 04  mov   $04a0+x,a
0f8b: 5f 8a 0e  jmp   $0e8a

0f8e: e8 00     mov   a,#$00
0f90: d5 a0 04  mov   $04a0+x,a
0f93: d4 c0     mov   $c0+x,a
0f95: d4 d0     mov   $d0+x,a
0f97: 6f        ret

0f98: f5 40 05  mov   a,$0540+x
0f9b: f0 10     beq   $0fad
0f9d: f4 d0     mov   a,$d0+x
0f9f: 75 b0 04  cmp   a,$04b0+x
0fa2: c4 38     mov   $38,a
0fa4: d0 08     bne   $0fae
0fa6: f4 c0     mov   a,$c0+x
0fa8: 75 a0 04  cmp   a,$04a0+x
0fab: d0 01     bne   $0fae
0fad: 6f        ret

0fae: 0d        push  psw
0faf: 4b 38     lsr   $38
0fb1: 7c        ror   a
0fb2: eb 38     mov   y,$38
0fb4: c4 39     mov   $39,a
0fb6: f5 90 04  mov   a,$0490+x
0fb9: c4 36     mov   $36,a
0fbb: d8 37     mov   $37,x
0fbd: 7e 36     cmp   y,$36
0fbf: b0 0d     bcs   $0fce
0fc1: e4 39     mov   a,$39
0fc3: f8 36     mov   x,$36
0fc5: 8f 00 36  mov   $36,#$00
0fc8: 9e        div   ya,x
0fc9: d0 22     bne   $0fed
0fcb: bc        inc   a
0fcc: 2f 1f     bra   $0fed
0fce: dd        mov   a,y
0fcf: 0b 39     asl   $39
0fd1: 3c        rol   a
0fd2: 0b 39     asl   $39
0fd4: 3c        rol   a
0fd5: 0b 39     asl   $39
0fd7: 3c        rol   a
0fd8: 8d 00     mov   y,#$00
0fda: f8 36     mov   x,$36
0fdc: 9e        div   ya,x
0fdd: 8f 00 39  mov   $39,#$00
0fe0: 5c        lsr   a
0fe1: 6b 39     ror   $39
0fe3: 5c        lsr   a
0fe4: 6b 39     ror   $39
0fe6: 5c        lsr   a
0fe7: 6b 39     ror   $39
0fe9: c4 36     mov   $36,a
0feb: e4 39     mov   a,$39
0fed: f8 37     mov   x,$37
0fef: 8e        pop   psw
0ff0: b0 1a     bcs   $100c
0ff2: 94 c0     adc   a,$c0+x
0ff4: d4 c0     mov   $c0+x,a
0ff6: e4 36     mov   a,$36
0ff8: 94 d0     adc   a,$d0+x
0ffa: d4 d0     mov   $d0+x,a
0ffc: 75 b0 04  cmp   a,$04b0+x
0fff: 90 31     bcc   $1032
1001: d0 25     bne   $1028
1003: f4 c0     mov   a,$c0+x
1005: 75 a0 04  cmp   a,$04a0+x
1008: 90 28     bcc   $1032
100a: b0 1c     bcs   $1028
100c: c4 37     mov   $37,a
100e: f4 c0     mov   a,$c0+x
1010: a4 37     sbc   a,$37
1012: d4 c0     mov   $c0+x,a
1014: f4 d0     mov   a,$d0+x
1016: a4 36     sbc   a,$36
1018: d4 d0     mov   $d0+x,a
101a: 75 b0 04  cmp   a,$04b0+x
101d: 90 09     bcc   $1028
101f: d0 11     bne   $1032
1021: f4 c0     mov   a,$c0+x
1023: 75 a0 04  cmp   a,$04a0+x
1026: b0 0a     bcs   $1032
1028: f5 a0 04  mov   a,$04a0+x
102b: d4 c0     mov   $c0+x,a
102d: f5 b0 04  mov   a,$04b0+x
1030: d4 d0     mov   $d0+x,a
1032: 6f        ret

1033: f4 c0     mov   a,$c0+x
1035: c4 28     mov   $28,a
1037: f4 d0     mov   a,$d0+x
1039: c4 29     mov   $29,a
103b: 04 28     or    a,$28
103d: f0 05     beq   $1044
103f: f5 40 03  mov   a,$0340+x
1042: d0 01     bne   $1045
1044: 6f        ret

; read pitch envelope
1045: 1c        asl   a
1046: fd        mov   y,a
1047: f7 58     mov   a,($58)+y
1049: c4 36     mov   $36,a
104b: fc        inc   y
104c: f7 58     mov   a,($58)+y
104e: c4 37     mov   $37,a
1050: f5 10 05  mov   a,$0510+x
1053: 9c        dec   a
1054: d5 10 05  mov   $0510+x,a
1057: f0 07     beq   $1060
1059: f5 00 05  mov   a,$0500+x
105c: fd        mov   y,a
105d: 5f 6e 10  jmp   $106e

1060: f5 00 05  mov   a,$0500+x
1063: fd        mov   y,a
1064: 3f 12 11  call  $1112
1067: d5 10 05  mov   $0510+x,a
106a: dd        mov   a,y
106b: d5 00 05  mov   $0500+x,a
106e: f7 36     mov   a,($36)+y
1070: 60        clrc
1071: 30 12     bmi   $1085
1073: 84 28     adc   a,$28
1075: c4 28     mov   $28,a
1077: e8 00     mov   a,#$00
1079: 84 29     adc   a,$29
107b: c4 29     mov   $29,a
107d: b0 14     bcs   $1093
107f: 68 40     cmp   a,#$40
1081: 90 16     bcc   $1099
1083: b0 0e     bcs   $1093
1085: 84 28     adc   a,$28
1087: c4 28     mov   $28,a
1089: e8 ff     mov   a,#$ff
108b: 84 29     adc   a,$29
108d: c4 29     mov   $29,a
108f: b0 08     bcs   $1099
1091: 90 00     bcc   $1093
1093: e8 00     mov   a,#$00
1095: c4 28     mov   $28,a
1097: c4 29     mov   $29,a
1099: e4 28     mov   a,$28
109b: d5 c0 00  mov   $00c0+x,a
109e: e4 29     mov   a,$29
10a0: d5 d0 00  mov   $00d0+x,a
10a3: 6f        ret

10a4: f5 50 01  mov   a,$0150+x
10a7: 30 30     bmi   $10d9
10a9: 68 20     cmp   a,#$20
10ab: b0 09     bcs   $10b6
10ad: 95 60 01  adc   a,$0160+x
10b0: 28 1f     and   a,#$1f
10b2: d5 60 01  mov   $0160+x,a
10b5: 6f        ret

10b6: 68 30     cmp   a,#$30
10b8: b0 0b     bcs   $10c5
10ba: 95 60 01  adc   a,$0160+x
10bd: 28 0f     and   a,#$0f
10bf: 08 10     or    a,#$10
10c1: d5 60 01  mov   $0160+x,a
10c4: 6f        ret

10c5: 60        clrc
10c6: c4 38     mov   $38,a
10c8: 95 60 01  adc   a,$0160+x
10cb: 28 07     and   a,#$07
10cd: c4 39     mov   $39,a
10cf: e4 38     mov   a,$38
10d1: 28 18     and   a,#$18
10d3: 04 39     or    a,$39
10d5: d5 60 01  mov   $0160+x,a
10d8: 6f        ret

10d9: 1c        asl   a
10da: d0 09     bne   $10e5
10dc: f5 60 01  mov   a,$0160+x
10df: 48 1f     eor   a,#$1f
10e1: d5 60 01  mov   $0160+x,a
10e4: 6f        ret

10e5: fd        mov   y,a
10e6: f7 5a     mov   a,($5a)+y
10e8: c4 36     mov   $36,a
10ea: fc        inc   y
10eb: f7 5a     mov   a,($5a)+y
10ed: c4 37     mov   $37,a
10ef: f5 30 05  mov   a,$0530+x
10f2: 9c        dec   a
10f3: d5 30 05  mov   $0530+x,a
10f6: f0 06     beq   $10fe
10f8: f5 20 05  mov   a,$0520+x
10fb: fd        mov   y,a
10fc: 2f 0e     bra   $110c
10fe: f5 20 05  mov   a,$0520+x
1101: fd        mov   y,a
1102: 3f 12 11  call  $1112
1105: d5 30 05  mov   $0530+x,a
1108: dd        mov   a,y
1109: d5 20 05  mov   $0520+x,a
110c: f7 36     mov   a,($36)+y
110e: d5 60 01  mov   $0160+x,a
1111: 6f        ret

; read next envelope value
1112: fc        inc   y                 ; step
1113: f7 36     mov   a,($36)+y         ; read new value
1115: 30 02     bmi   $1119
; 00-7f
1117: fc        inc   y
1118: 6f        ret

1119: 68 81     cmp   a,#$81
111b: f0 06     beq   $1123
111d: b0 0c     bcs   $112b
; 80
111f: e8 00     mov   a,#$00
1121: dc        dec   y
1122: 6f        ret

; 81
1123: dd        mov   a,y
1124: fc        inc   y
1125: 80        setc
1126: b7 36     sbc   a,($36)+y
1128: fd        mov   y,a
1129: 2f e8     bra   $1113
;
112b: ad 83     cmp   y,#$83
112d: f0 06     beq   $1135
112f: b0 0e     bcs   $113f
; 82
1131: 8d 00     mov   y,#$00
1133: 2f de     bra   $1113
; 83
1135: f4 90     mov   a,$90+x
1137: 28 04     and   a,#$04
1139: f0 0a     beq   $1145
113b: e8 01     mov   a,#$01
113d: 2f e2     bra   $1121
; 84-ff
113f: f4 90     mov   a,$90+x
1141: 28 04     and   a,#$04
1143: d0 de     bne   $1123
1145: fc        inc   y
1146: 2f cb     bra   $1113
;
1148: f5 60 04  mov   a,$0460+x
114b: c4 36     mov   $36,a
114d: f5 70 04  mov   a,$0470+x
1150: c4 37     mov   $37,a
1152: 8d 01     mov   y,#$01
1154: f7 36     mov   a,($36)+y
1156: 48 80     eor   a,#$80
1158: c4 38     mov   $38,a
115a: f5 c0 03  mov   a,$03c0+x
115d: 48 80     eor   a,#$80
115f: c4 39     mov   $39,a
1161: fc        inc   y
1162: f7 36     mov   a,($36)+y
1164: 60        clrc
1165: 95 80 04  adc   a,$0480+x
1168: d5 80 04  mov   $0480+x,a
116b: fc        inc   y
116c: f7 36     mov   a,($36)+y
116e: 30 0e     bmi   $117e
1170: 84 39     adc   a,$39
1172: b0 14     bcs   $1188
1174: 64 38     cmp   a,$38
1176: b0 10     bcs   $1188
1178: 48 80     eor   a,#$80
117a: d5 c0 03  mov   $03c0+x,a
117d: 6f        ret

117e: 84 39     adc   a,$39
1180: 90 06     bcc   $1188
1182: 64 38     cmp   a,$38
1184: 90 02     bcc   $1188
1186: d0 f0     bne   $1178
1188: fc        inc   y
1189: f7 36     mov   a,($36)+y
118b: fc        inc   y
118c: 77 36     cmp   a,($36)+y
118e: f0 13     beq   $11a3
1190: d5 c0 03  mov   $03c0+x,a
1193: dc        dec   y
1194: dd        mov   a,y
1195: 60        clrc
1196: 84 36     adc   a,$36
1198: d5 60 04  mov   $0460+x,a
119b: e4 37     mov   a,$37
119d: 88 00     adc   a,#$00
119f: d5 70 04  mov   $0470+x,a
11a2: 6f        ret

11a3: fc        inc   y
11a4: f7 36     mov   a,($36)+y
11a6: c4 34     mov   $34,a
11a8: fc        inc   y
11a9: 17 36     or    a,($36)+y
11ab: f0 11     beq   $11be
11ad: f7 36     mov   a,($36)+y
11af: c4 37     mov   $37,a
11b1: e4 34     mov   a,$34
11b3: c4 36     mov   $36,a
11b5: 8d 00     mov   y,#$00
11b7: f7 36     mov   a,($36)+y
11b9: d5 c0 03  mov   $03c0+x,a
11bc: 2f d6     bra   $1194
11be: e4 38     mov   a,$38
11c0: 48 80     eor   a,#$80
11c2: d5 c0 03  mov   $03c0+x,a
11c5: f4 90     mov   a,$90+x
11c7: 28 fe     and   a,#$fe
11c9: d4 90     mov   $90+x,a
11cb: 6f        ret

11cc: e8 00     mov   a,#$00
11ce: c4 3e     mov   $3e,a             ;; DSP KOF
11d0: c4 40     mov   $40,a             ;; DSP KON
11d2: c4 42     mov   $42,a             ;; DSP ?KOF
11d4: c4 46     mov   $46,a             ;; DSP NON
11d6: e4 01     mov   a,$01
11d8: 28 40     and   a,#$40
11da: 08 80     or    a,#$80
11dc: c4 44     mov   $44,a             ;; DSP FLG
11de: 6f        ret

11df: f4 a0     mov   a,$a0+x
11e1: 28 40     and   a,#$40
11e3: d0 f9     bne   $11de
11e5: f5 70 03  mov   a,$0370+x
11e8: fd        mov   y,a
11e9: 1c        asl   a
11ea: 1c        asl   a
11eb: 1c        asl   a
11ec: 1c        asl   a
11ed: c4 39     mov   $39,a
11ef: f6 0a 13  mov   a,$130a+y
11f2: c4 38     mov   $38,a
11f4: 24 3e     and   a,$3e
11f6: f0 07     beq   $11ff
11f8: f4 a0     mov   a,$a0+x
11fa: 08 40     or    a,#$40
11fc: d4 a0     mov   $a0+x,a
11fe: 6f        ret

11ff: e4 28     mov   a,$28
1201: 04 29     or    a,$29
1203: f0 f3     beq   $11f8
1205: f4 90     mov   a,$90+x
1207: 28 08     and   a,#$08
1209: f0 1b     beq   $1226
120b: e4 01     mov   a,$01
120d: 28 20     and   a,#$20
120f: d0 08     bne   $1219
1211: f4 90     mov   a,$90+x
1213: 28 f7     and   a,#$f7
1215: d4 90     mov   $90+x,a
1217: 2f 0d     bra   $1226
1219: e4 72     mov   a,$72
121b: bc        inc   a
121c: 1c        asl   a
121d: 1c        asl   a
121e: eb 2a     mov   y,$2a
1220: cf        mul   ya
1221: 1c        asl   a
1222: dd        mov   a,y
1223: 3c        rol   a
1224: c4 2a     mov   $2a,a
1226: f4 80     mov   a,$80+x
1228: 28 02     and   a,#$02
122a: f0 4e     beq   $127a
122c: f4 80     mov   a,$80+x
122e: 28 01     and   a,#$01
1230: d0 22     bne   $1254
1232: e4 44     mov   a,$44
1234: 30 01     bmi   $1237
1236: 6f        ret

1237: e4 01     mov   a,$01
1239: 28 40     and   a,#$40
123b: 15 60 01  or    a,$0160+x
123e: c4 44     mov   $44,a
1240: e4 46     mov   a,$46
1242: 04 38     or    a,$38
1244: c4 46     mov   $46,a
1246: eb 2a     mov   y,$2a
1248: f5 50 04  mov   a,$0450+x
124b: 30 2f     bmi   $127c
124d: cf        mul   ya
124e: 1c        asl   a
124f: dd        mov   a,y
1250: 3c        rol   a
1251: fd        mov   y,a
1252: 2f 28     bra   $127c
1254: e4 44     mov   a,$44
1256: 10 22     bpl   $127a
1258: e4 39     mov   a,$39
125a: 2d        push  a
125b: e4 38     mov   a,$38
125d: 2d        push  a
125e: f5 40 04  mov   a,$0440+x
1261: fd        mov   y,a
1262: 1c        asl   a
1263: 1c        asl   a
1264: 1c        asl   a
1265: 1c        asl   a
1266: c4 39     mov   $39,a
1268: f6 0a 13  mov   a,$130a+y
126b: c4 38     mov   $38,a
126d: 24 3e     and   a,$3e
126f: d0 03     bne   $1274
1271: 3f 37 12  call  $1237
1274: ae        pop   a
1275: c4 38     mov   $38,a
1277: ae        pop   a
1278: c4 39     mov   $39,a
127a: eb 2a     mov   y,$2a             ; volume (00-1f)
127c: f6 ea 12  mov   a,$12ea+y         ; get actual volume from table
127f: c4 36     mov   $36,a
1281: fd        mov   y,a
1282: f5 c0 03  mov   a,$03c0+x
1285: 48 80     eor   a,#$80
1287: cf        mul   ya                ; mul panpot
1288: f4 b0     mov   a,$b0+x
128a: 5c        lsr   a
128b: c4 37     mov   $37,a
128d: dd        mov   a,y
128e: eb 39     mov   y,$39
1290: 90 03     bcc   $1295
1292: 48 ff     eor   a,#$ff
1294: bc        inc   a
1295: d6 00 02  mov   $0200+y,a         ; set VOL(L)
1298: eb 36     mov   y,$36
129a: f5 c0 03  mov   a,$03c0+x
129d: 48 7f     eor   a,#$7f
129f: cf        mul   ya                ; mul panpot
12a0: dd        mov   a,y
12a1: eb 39     mov   y,$39
12a3: 4b 37     lsr   $37
12a5: 90 03     bcc   $12aa
12a7: 48 ff     eor   a,#$ff
12a9: bc        inc   a
12aa: d6 01 02  mov   $0201+y,a         ; set VOL(R)
12ad: e4 28     mov   a,$28
12af: d6 02 02  mov   $0202+y,a         ; set P(L)
12b2: e4 29     mov   a,$29
12b4: d6 03 02  mov   $0203+y,a         ; set P(H)
12b7: f5 a0 03  mov   a,$03a0+x
12ba: d6 04 02  mov   $0204+y,a         ; set SRCN
12bd: e4 3b     mov   a,$3b
12bf: d6 05 02  mov   $0205+y,a         ; set ADSR(1)
12c2: e4 3c     mov   a,$3c
12c4: d6 06 02  mov   $0206+y,a         ; set ADSR(2)
12c7: d6 07 02  mov   $0207+y,a         ; set GAIN
12ca: e4 3e     mov   a,$3e
12cc: 04 38     or    a,$38
12ce: c4 3e     mov   $3e,a
12d0: e4 3a     mov   a,$3a
12d2: 28 20     and   a,#$20
12d4: f0 07     beq   $12dd
12d6: e4 40     mov   a,$40
12d8: 04 38     or    a,$38
12da: c4 40     mov   $40,a
12dc: 6f        ret

12dd: e4 3a     mov   a,$3a
12df: 28 04     and   a,#$04
12e1: f0 06     beq   $12e9
12e3: e4 42     mov   a,$42
12e5: 04 38     or    a,$38
12e7: c4 42     mov   $42,a
12e9: 6f        ret

; volume table
12ea: db $00,$03,$04,$05,$06,$07,$09,$0a,$0c,$0d,$0f,$12,$14,$17,$1a,$1c
12fa: db $1f,$24,$28,$2d,$31,$36,$3a,$3f,$47,$4f,$57,$5f,$67,$6f,$77,$7f
;; ref:$0370+x * #$10, $0440+x * #$10
130a: db $01,$02,$04,$08,$10,$20,$40,$80
;
1312: 8f 00 3a  mov   $3a,#$00
1315: c4 38     mov   $38,a
1317: 1c        asl   a
1318: fd        mov   y,a
1319: f7 50     mov   a,($50)+y
131b: c4 36     mov   $36,a
131d: fc        inc   y
131e: f7 50     mov   a,($50)+y
1320: c4 37     mov   $37,a             ; set song header address to $36/7 from $50/1
1322: 8d 00     mov   y,#$00
1324: f7 36     mov   a,($36)+y
1326: fc        inc   y
1327: c4 39     mov   $39,a             ; header+0: number of tracks
1329: f7 36     mov   a,($36)+y
132b: fc        inc   y
132c: 5d        mov   x,a               ; +00 channel #
132d: f7 36     mov   a,($36)+y
132f: d0 07     bne   $1338
1331: d4 80     mov   $80+x,a
1333: fc        inc   y
1334: 5f fd 13  jmp   $13fd
1337: 6f        ret

1338: f4 80     mov   a,$80+x
133a: 28 40     and   a,#$40
133c: d0 f9     bne   $1337
133e: d5 00 04  mov   $0400+x,a         ; zero duration counter
1341: d5 c0 01  mov   $01c0+x,a
1344: d5 20 04  mov   $0420+x,a
1347: d5 30 04  mov   $0430+x,a
134a: d5 40 05  mov   $0540+x,a
134d: d5 50 01  mov   $0150+x,a
1350: d5 60 01  mov   $0160+x,a
1353: d5 10 03  mov   $0310+x,a
1356: d4 90     mov   $90+x,a
1358: d4 a0     mov   $a0+x,a
135a: d4 b0     mov   $b0+x,a
135c: e4 38     mov   a,$38
135e: 75 f0 01  cmp   a,$01f0+x
1361: d0 0a     bne   $136d
1363: f4 80     mov   a,$80+x
1365: f0 09     beq   $1370
1367: e8 20     mov   a,#$20
1369: d4 a0     mov   $a0+x,a
136b: e4 38     mov   a,$38
136d: d5 f0 01  mov   $01f0+x,a
1370: f7 36     mov   a,($36)+y
1372: d4 80     mov   $80+x,a           ; +01 flags
1374: fc        inc   y
1375: f7 36     mov   a,($36)+y
1377: d5 20 03  mov   $0320+x,a         ; +02 volume
137a: fc        inc   y
137b: f7 36     mov   a,($36)+y
137d: d5 30 03  mov   $0330+x,a         ; +03 volume envelope #
1380: fc        inc   y
1381: f7 36     mov   a,($36)+y
1383: d5 40 03  mov   $0340+x,a         ; +04 pitch envelope #
1386: fc        inc   y
1387: f7 36     mov   a,($36)+y
1389: 60        clrc
138a: 84 3d     adc   a,$3d
138c: d5 50 03  mov   $0350+x,a         ; +05 transpose
138f: fc        inc   y
1390: f7 36     mov   a,($36)+y
1392: d5 60 03  mov   $0360+x,a         ; +06 tempo
1395: fc        inc   y
1396: f7 36     mov   a,($36)+y
1398: d5 70 03  mov   $0370+x,a         ; +07 variable for conditional branch? (channel #)
139b: bc        inc   a
139c: 28 07     and   a,#$07
139e: d5 40 04  mov   $0440+x,a
13a1: fc        inc   y
13a2: f7 36     mov   a,($36)+y
13a4: d5 80 03  mov   $0380+x,a         ; +08 voice reading ptr (lo)
13a7: fc        inc   y
13a8: f7 36     mov   a,($36)+y
13aa: d5 90 03  mov   $0390+x,a         ; +09 voice reading ptr (hi)
13ad: fc        inc   y
13ae: f7 36     mov   a,($36)+y
13b0: d5 a0 03  mov   $03a0+x,a         ; +10 SRCN
13b3: fc        inc   y
13b4: f7 36     mov   a,($36)+y
13b6: d5 b0 03  mov   $03b0+x,a         ; +11 ADSR/GAIN pattern #
13b9: fc        inc   y
13ba: e4 01     mov   a,$01
13bc: 28 04     and   a,#$04
13be: f0 02     beq   $13c2
13c0: f7 36     mov   a,($36)+y
13c2: d5 c0 03  mov   $03c0+x,a         ; +12 panpot
13c5: fc        inc   y                 ; +13 (not used)
13c6: fc        inc   y
13c7: f5 a0 03  mov   a,$03a0+x
13ca: 3f b7 0b  call  $0bb7
13cd: e8 01     mov   a,#$01
13cf: d5 10 04  mov   $0410+x,a         ; set duration to #$01
13d2: e8 ff     mov   a,#$ff
13d4: d5 d0 03  mov   $03d0+x,a         ; set pulse counter to #$FF
13d7: e8 40     mov   a,#$40
13d9: d5 50 04  mov   $0450+x,a
13dc: e4 3a     mov   a,$3a
13de: f0 1d     beq   $13fd
13e0: 6d        push  y
13e1: f5 20 03  mov   a,$0320+x
13e4: fd        mov   y,a
13e5: e4 32     mov   a,$32
13e7: bc        inc   a
13e8: 1c        asl   a
13e9: 1c        asl   a
13ea: cf        mul   ya
13eb: 1c        asl   a
13ec: dd        mov   a,y
13ed: 3c        rol   a
13ee: d5 20 03  mov   $0320+x,a
13f1: ee        pop   y
13f2: e4 33     mov   a,$33
13f4: 95 50 03  adc   a,$0350+x
13f7: 80        setc
13f8: a4 3d     sbc   a,$3d
13fa: d5 50 03  mov   $0350+x,a
13fd: 8b 39     dec   $39
13ff: f0 03     beq   $1404
1401: 5f 29 13  jmp   $1329
1404: 6f        ret

27d6: 8f e0
27d8: ff e5
27da: df ef
27dc: ff f1
27de: 9f 3f
27e0: ff f7
27e2: ff f4
27e4: df f1
27e6: 9f bf
27e8: df f3
27ea: bf bf
27ec: ff ea
27ee: ff 8c
27f0: db eb
27f2: ff 4d
27f4: ff f3
27f6: df 8c
27f8: df ea
27fa: df f3
27fc: df 89
27fe: da e9
2800: ee 2e
2802: fa e5

2804: 18 28
2806: 20 28
2808: 2c 28
280a: 34 28
280c: 40 28
280e: 50 28
2810: 58 28
2812: 68 28
2814: 74 28
2816: 80 28
