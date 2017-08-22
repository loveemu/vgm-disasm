; Super Puyo Puyo SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Super Puyo Puyo (1993)
; * Kirby's Avalanche (U) (1995)
;
; The game was also released as:
; * Kirby's Ghost Trap (E) (1995)

0550: 3f 3a 09  call  $093a
0553: 3f 8f 08  call  $088f
0556: 3f c6 13  call  $13c6
0559: ba 00     movw  ya,$00
055b: da f6     movw  $f6,ya            ; set APU2/3 to $00/1
; begin main loop
055d: e4 ea     mov   a,$ea
055f: c4 f4     mov   $f4,a             ; set APU0 to $EA
0561: 64 f4     cmp   a,$f4             ; CPU updates APU0 every 8ms
0563: d0 fc     bne   $0561
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
05b8: 3f 40 15  call  $1540
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
05d7: dw $06dc  ; e0
05d9: dw $06dc  ; e1
05db: dw $06dc  ; e2
05dd: dw $06dc  ; e3
05df: dw $06dc  ; e4
05e1: dw $06dc  ; e5
05e3: dw $06dc  ; e6
05e5: dw $06dc  ; e7
05e7: dw $06dc  ; e8
05e9: dw $06dc  ; e9
05eb: dw $06dc  ; ea
05ed: dw $06dc  ; eb
05ef: dw $06dc  ; ec
05f1: dw $06dc  ; ed
05f3: dw $06dc  ; ee
05f5: dw $06dc  ; ef
05f7: dw $06fa  ; f0
05f9: dw $0638  ; f1
05fb: dw $063b  ; f2
05fd: dw $063e  ; f3
05ff: dw $0650  ; f4
0601: dw $065b  ; f5
0603: dw $0684  ; f6
0605: dw $068f  ; f7
0607: dw $06b3  ; f8
0609: dw $06bd  ; f9
060b: dw $069a  ; fa
060d: dw $0637  ; fb
060f: dw $06a0  ; fc
0611: dw $0637  ; fd
0613: dw $06df  ; fe - reset
0615: dw $06f0  ; ff
; CPU cmds FB,FD
0637: 6f        ret
; CPU cmd F1
0638: 5f 3a 09  jmp   $093a
; CPU cmd F2
063b: 5f f1 09  jmp   $09f1
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
0654: 3f 40 15  call  $1540
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
068c: 5f 40 15  jmp   $1540
; CPU cmd F7
068f: e4 01     mov   a,$01
0691: 28 fd     and   a,#$fd
0693: c4 01     mov   $01,a
0695: e8 00     mov   a,#$00
0697: 5f 40 15  jmp   $1540
; CPU cmd FA
069a: f6 18 00  mov   a,$0018+y
069d: 5f 14 0a  jmp   $0a14
; CPU cmd FC
06a0: f6 18 00  mov   a,$0018+y
06a3: c4 32     mov   $32,a
06a5: f6 20 00  mov   a,$0020+y
06a8: c4 33     mov   $33,a
06aa: 8f 01 3a  mov   $3a,#$01
06ad: f6 08 00  mov   a,$0008+y
06b0: 5f 43 15  jmp   $1543
; CPU cmd F8
06b3: e4 f7     mov   a,$f7
06b5: f8 f6     mov   x,$f6
06b7: 48 ff     eor   a,#$ff
06b9: 34 00     and   a,$00+x
06bb: 2f 06     bra   $06c3
; CPU cmd F9
06bd: e4 f7     mov   a,$f7
06bf: f8 f6     mov   x,$f6
06c1: 14 00     or    a,$00+x
06c3: d4 00     mov   $00+x,a
06c5: ba 00     movw  ya,$00
06c7: da f6     movw  $f6,ya
06c9: e4 01     mov   a,$01
06cb: 28 08     and   a,#$08
06cd: 68 08     cmp   a,#$08
06cf: e4 44     mov   a,$44
06d1: 28 1f     and   a,#$1f
06d3: b0 02     bcs   $06d7
06d5: 08 20     or    a,#$20
06d7: 8f 6c f2  mov   $f2,#$6c
06da: c4 f3     mov   $f3,a
; CPU cmd E0-EF
06dc: 5f 5d 05  jmp   $055d
; CPU cmd FE - reset
06df: 8f b0 f1  mov   $f1,#$b0          ; clear ports
06e2: 8f 6c f2  mov   $f2,#$6c
06e5: 8f e0 f3  mov   $f3,#$e0          ; do soft reset
06e8: 8f 80 f1  mov   $f1,#$80
06eb: cd 00     mov   x,#$00
06ed: 1f fe ff  jmp   ($fffe+x)
; CPU cmd FF
06f0: e4 ea     mov   a,$ea
06f2: c4 f4     mov   $f4,a
06f4: bc        inc   a
06f5: c4 ea     mov   $ea,a
06f7: 5f 3c 07  jmp   $073c
; CPU cmd F0
06fa: ba f6     movw  ya,$f6
06fc: da 34     movw  $34,ya
06fe: f8 ea     mov   x,$ea
0700: d8 f4     mov   $f4,x
0702: 3e f4     cmp   x,$f4
0704: d0 fc     bne   $0702
0706: 3d        inc   x
0707: eb f6     mov   y,$f6
0709: d0 18     bne   $0723
070b: d8 f4     mov   $f4,x
070d: 3e f4     cmp   x,$f4
070f: d0 fc     bne   $070d
0711: 3d        inc   x
0712: e4 f6     mov   a,$f6
0714: d7 34     mov   ($34)+y,a
0716: fc        inc   y
0717: e4 f7     mov   a,$f7
0719: d7 34     mov   ($34)+y,a
071b: fc        inc   y
071c: d0 ed     bne   $070b
071e: d8 ea     mov   $ea,x
0720: 5f 5d 05  jmp   $055d
0723: cb 38     mov   $38,y
0725: 8d 00     mov   y,#$00
0727: d8 f4     mov   $f4,x
0729: 3e f4     cmp   x,$f4
072b: d0 fc     bne   $0729
072d: 3d        inc   x
072e: e4 f6     mov   a,$f6
0730: d7 34     mov   ($34)+y,a
0732: fc        inc   y
0733: 7e 38     cmp   y,$38
0735: d0 f0     bne   $0727
0737: d8 ea     mov   $ea,x
0739: 5f 5d 05  jmp   $055d
;
073c: 3f ab 05  call  $05ab
073f: 3f dd 0a  call  $0add
0742: 8f 5c f2  mov   $f2,#$5c
0745: 8f 00 f3  mov   $f3,#$00          ; key off all voices
0748: 3f 8f 08  call  $088f
074b: 3f c6 13  call  $13c6
074e: e4 01     mov   a,$01
0750: 28 02     and   a,#$02
0752: d0 0a     bne   $075e
0754: e4 8f     mov   a,$8f
0756: d0 06     bne   $075e
0758: cd 0e     mov   x,#$0e
075a: d8 2c     mov   $2c,x
075c: 2f 05     bra   $0763
075e: cd 0f     mov   x,#$0f
0760: 8f 8f 2c  mov   $2c,#$8f
0763: 8f 00 3a  mov   $3a,#$00
0766: d8 2b     mov   $2b,x
0768: f4 80     mov   a,$80+x
076a: d0 03     bne   $076f
076c: 5f 34 08  jmp   $0834
076f: f5 60 03  mov   a,$0360+x         ; tempo value
0772: f0 09     beq   $077d             ; #$00 means no wait (16ms/tick)
0774: 60        clrc
0775: 95 d0 03  adc   a,$03d0+x
0778: d5 d0 03  mov   $03d0+x,a         ; add tempo value
077b: 90 50     bcc   $07cd             ; jump if not tick
077d: f4 80     mov   a,$80+x
077f: 28 10     and   a,#$10
0781: d0 3b     bne   $07be
0783: f4 90     mov   a,$90+x
0785: 28 04     and   a,#$04
0787: f0 35     beq   $07be
0789: f5 c0 01  mov   a,$01c0+x
078c: f0 30     beq   $07be
078e: 10 0f     bpl   $079f
0790: 28 7f     and   a,#$7f
0792: 60        clrc
0793: 95 00 04  adc   a,$0400+x
0796: b0 0e     bcs   $07a6
0798: 75 10 04  cmp   a,$0410+x
079b: 90 21     bcc   $07be
079d: b0 07     bcs   $07a6
079f: 75 00 04  cmp   a,$0400+x
07a2: f0 02     beq   $07a6
07a4: b0 18     bcs   $07be
07a6: f4 90     mov   a,$90+x
07a8: 28 fb     and   a,#$fb
07aa: d4 90     mov   $90+x,a
07ac: f4 80     mov   a,$80+x
07ae: 28 04     and   a,#$04
07b0: d0 0c     bne   $07be
07b2: e4 3a     mov   a,$3a
07b4: 08 04     or    a,#$04
07b6: c4 3a     mov   $3a,a
07b8: f4 a0     mov   a,$a0+x
07ba: 08 10     or    a,#$10
07bc: d4 a0     mov   $a0+x,a
07be: f5 00 04  mov   a,$0400+x
07c1: bc        inc   a
07c2: d5 00 04  mov   $0400+x,a         ; inc duration counter
07c5: 75 10 04  cmp   a,$0410+x
07c8: d0 03     bne   $07cd             ; wait for duration
07ca: 3f b7 0e  call  $0eb7             ; do vcmds
07cd: 3f bf 10  call  $10bf
07d0: 3f 05 11  call  $1105
07d3: f4 90     mov   a,$90+x
07d5: 10 03     bpl   $07da
07d7: 3f 49 11  call  $1149
07da: f4 a0     mov   a,$a0+x
07dc: 28 08     and   a,#$08
07de: f0 03     beq   $07e3
07e0: 3f 92 11  call  $1192
07e3: 3f 2d 12  call  $122d
07e6: 3f 9e 12  call  $129e
07e9: f4 90     mov   a,$90+x
07eb: 28 01     and   a,#$01
07ed: f0 03     beq   $07f2
07ef: 3f 42 13  call  $1342
07f2: 3f f3 13  call  $13f3
07f5: f4 90     mov   a,$90+x
07f7: 28 20     and   a,#$20
07f9: f0 33     beq   $082e
07fb: f5 a0 01  mov   a,$01a0+x
07fe: 60        clrc
07ff: 95 b0 01  adc   a,$01b0+x
0802: d5 b0 01  mov   $01b0+x,a
0805: 90 27     bcc   $082e
0807: f5 20 03  mov   a,$0320+x
080a: 75 90 01  cmp   a,$0190+x
080d: d0 08     bne   $0817
080f: f4 90     mov   a,$90+x
0811: 08 02     or    a,#$02
0813: d4 90     mov   $90+x,a
0815: 2f 17     bra   $082e
0817: f4 90     mov   a,$90+x
0819: 28 fd     and   a,#$fd
081b: d4 90     mov   $90+x,a
081d: 28 10     and   a,#$10
081f: d0 06     bne   $0827
0821: f5 20 03  mov   a,$0320+x
0824: bc        inc   a
0825: 2f 04     bra   $082b
0827: f5 20 03  mov   a,$0320+x
082a: 9c        dec   a
082b: d5 20 03  mov   $0320+x,a
082e: f4 80     mov   a,$80+x
0830: 28 20     and   a,#$20
0832: d0 08     bne   $083c
0834: 1d        dec   x
0835: 8b 2c     dec   $2c
0837: 30 03     bmi   $083c
0839: 5f 63 07  jmp   $0763
083c: 1d        dec   x
083d: 30 09     bmi   $0848
083f: f4 a0     mov   a,$a0+x
0841: 08 40     or    a,#$40
0843: d4 a0     mov   $a0+x,a
0845: 1d        dec   x
0846: 10 f7     bpl   $083f
0848: e4 eb     mov   a,$eb
084a: f0 03     beq   $084f
084c: 3f ab 05  call  $05ab
084f: e4 01     mov   a,$01
0851: 28 20     and   a,#$20
0853: f0 2a     beq   $087f
0855: e4 70     mov   a,$70
0857: 60        clrc
0858: 84 71     adc   a,$71
085a: c4 71     mov   $71,a
085c: 90 21     bcc   $087f
085e: e4 01     mov   a,$01
0860: 28 10     and   a,#$10
0862: d0 12     bne   $0876
0864: e4 72     mov   a,$72
0866: 64 73     cmp   a,$73
0868: f0 07     beq   $0871
086a: bc        inc   a
086b: c4 72     mov   $72,a
086d: 64 73     cmp   a,$73
086f: d0 0e     bne   $087f
0871: 3f fc 09  call  $09fc
0874: 2f 09     bra   $087f
0876: e4 72     mov   a,$72
0878: 64 73     cmp   a,$73
087a: f0 03     beq   $087f
087c: 9c        dec   a
087d: c4 72     mov   $72,a
087f: e4 3e     mov   a,$3e
0881: 48 ff     eor   a,#$ff
0883: 04 42     or    a,$42
0885: 04 40     or    a,$40
0887: 8f 5c f2  mov   $f2,#$5c
088a: c4 f3     mov   $f3,a             ;; DSP reg KOF
088c: 5f 59 05  jmp   $0559
;
088f: e4 48     mov   a,$48
0891: f0 29     beq   $08bc
0893: 8d 10     mov   y,#$10
0895: 4b 48     lsr   $48
0897: 4b 48     lsr   $48
0899: 90 16     bcc   $08b1
089b: f6 08 02  mov   a,$0208+y
089e: 76 f8 01  cmp   a,$01f8+y
08a1: f0 0e     beq   $08b1
08a3: e8 ff     mov   a,#$ff
08a5: d6 08 02  mov   $0208+y,a
08a8: e8 00     mov   a,#$00
08aa: d6 00 02  mov   $0200+y,a
08ad: d6 01 02  mov   $0201+y,a
08b0: 60        clrc
08b1: 6b 38     ror   $38
08b3: dd        mov   a,y
08b4: 60        clrc
08b5: 88 10     adc   a,#$10
08b7: fd        mov   y,a
08b8: 10 dd     bpl   $0897             ; do all voices
08ba: e4 38     mov   a,$38
08bc: 8f 2d f2  mov   $f2,#$2d
08bf: c4 f3     mov   $f3,a             ;; DSP reg PMON
08c1: 8d 00     mov   y,#$00
08c3: 4b 3e     lsr   $3e
08c5: b0 0e     bcs   $08d5
08c7: cb f2     mov   $f2,y
08c9: 8f 00 f3  mov   $f3,#$00          ; zero voice vol L
08cc: fc        inc   y
08cd: cb f2     mov   $f2,y
08cf: 8f 00 f3  mov   $f3,#$00          ; zero voice vol R
08d2: dc        dec   y
08d3: 2f 0f     bra   $08e4
08d5: 6d        push  y
08d6: cd 08     mov   x,#$08
08d8: cb f2     mov   $f2,y
08da: f6 00 02  mov   a,$0200+y
08dd: c4 f3     mov   $f3,a
08df: fc        inc   y
08e0: 1d        dec   x
08e1: d0 f5     bne   $08d8             ; copy $0200+Y to DSP voice regs 00-07
08e3: ee        pop   y
08e4: dd        mov   a,y
08e5: 60        clrc
08e6: 88 10     adc   a,#$10
08e8: fd        mov   y,a
08e9: 10 d8     bpl   $08c3             ; do all voices
08eb: e4 01     mov   a,$01
08ed: 28 08     and   a,#$08
08ef: f0 0c     beq   $08fd
08f1: e4 2e     mov   a,$2e
08f3: 68 04     cmp   a,#$04
08f5: f0 20     beq   $0917
08f7: e4 44     mov   a,$44
08f9: 28 1f     and   a,#$1f
08fb: 2f 06     bra   $0903
08fd: e4 44     mov   a,$44
08ff: 28 1f     and   a,#$1f
0901: 08 20     or    a,#$20
0903: 8f 4d f2  mov   $f2,#$4d
0906: 8f 00 f3  mov   $f3,#$00          ;; DSP reg EON
0909: 8f 2c f2  mov   $f2,#$2c
090c: 8f 00 f3  mov   $f3,#$00          ;; DSP reg EVOL(L)
090f: 8f 3c f2  mov   $f2,#$3c
0912: 8f 00 f3  mov   $f3,#$00          ;; DSP reg EVOL(R)
0915: 2f 0f     bra   $0926
0917: e4 4a     mov   a,$4a
0919: 04 7e     or    a,$7e
091b: 24 7d     and   a,$7d
091d: 8f 4d f2  mov   $f2,#$4d
0920: c4 f3     mov   $f3,a             ;; DSP reg EON
0922: e4 44     mov   a,$44
0924: 28 1f     and   a,#$1f
0926: 8f 6c f2  mov   $f2,#$6c
0929: c4 f3     mov   $f3,a             ;; DSP reg FLG
092b: e4 46     mov   a,$46
092d: 8f 3d f2  mov   $f2,#$3d
0930: c4 f3     mov   $f3,a             ;; DSP reg NON
0932: e4 40     mov   a,$40
0934: 8f 4c f2  mov   $f2,#$4c
0937: c4 f3     mov   $f3,a             ;; DSP reg KON
0939: 6f        ret
;
093a: 8f 6c f2  mov   $f2,#$6c
093d: 8f 20 f3  mov   $f3,#$20          ; FLG, disable echo
0940: e4 01     mov   a,$01
0942: 28 0c     and   a,#$0c
0944: c4 01     mov   $01,a
0946: e5 00 18  mov   a,$1800
0949: c4 50     mov   $50,a
094b: e5 01 18  mov   a,$1801
094e: c4 51     mov   $51,a             ; set $50/1 to $1800/1
0950: e5 02 18  mov   a,$1802
0953: c4 52     mov   $52,a
0955: 60        clrc
0956: 88 11     adc   a,#$11
0958: c4 54     mov   $54,a
095a: e5 03 18  mov   a,$1803
095d: c4 53     mov   $53,a             ; set $52/3 to $1802/3 (duration table address)
095f: 88 00     adc   a,#$00
0961: c4 55     mov   $55,a             ; set $54/5 to $1802/3+#$0011
0963: e5 04 18  mov   a,$1804
0966: c4 56     mov   $56,a
0968: e5 05 18  mov   a,$1805
096b: c4 57     mov   $57,a             ; set $56/7 to $1804/5
096d: e5 06 18  mov   a,$1806
0970: c4 58     mov   $58,a
0972: e5 07 18  mov   a,$1807
0975: c4 59     mov   $59,a             ; set $58/9 to $1806/7
0977: e5 08 18  mov   a,$1808
097a: c4 5a     mov   $5a,a
097c: e5 09 18  mov   a,$1809
097f: c4 5b     mov   $5b,a             ; set $5A/B to $1808/9
0981: e5 0a 18  mov   a,$180a
0984: c4 5c     mov   $5c,a
0986: e5 0b 18  mov   a,$180b
0989: c4 5d     mov   $5d,a             ; set $5C/D to $180A/B
098b: e5 0c 18  mov   a,$180c
098e: c4 5e     mov   $5e,a
0990: e5 0d 18  mov   a,$180d
0993: c4 5f     mov   $5f,a             ; set $5E/F to $180C/D
0995: 8f 5d f2  mov   $f2,#$5d
0998: e5 0e 18  mov   a,$180e
099b: c4 f3     mov   $f3,a             ; set sample dir from $180E
099d: e5 0f 18  mov   a,$180f
09a0: c4 3d     mov   $3d,a             ; set $3D to $180F
09a2: e5 12 18  mov   a,$1812
09a5: c4 62     mov   $62,a
09a7: e5 13 18  mov   a,$1813
09aa: c4 63     mov   $63,a             ; set $62/3 to $1812/3
09ac: e5 14 18  mov   a,$1814
09af: c4 64     mov   $64,a
09b1: e5 15 18  mov   a,$1815
09b4: c4 65     mov   $65,a             ; set $64/5 to $1814/5
09b6: e5 16 18  mov   a,$1816
09b9: c4 66     mov   $66,a
09bb: e5 17 18  mov   a,$1817
09be: c4 67     mov   $67,a             ; set $66/7 to $1816/7
09c0: e5 10 18  mov   a,$1810
09c3: c4 60     mov   $60,a
09c5: e5 11 18  mov   a,$1811
09c8: c4 61     mov   $61,a             ; set $60/1 to $1810/1
09ca: e8 00     mov   a,#$00
09cc: 3f 14 0a  call  $0a14
09cf: 8d 00     mov   y,#$00
09d1: e8 00     mov   a,#$00
09d3: d6 00 02  mov   $0200+y,a         ; zero voice vol L shadow
09d6: d6 01 02  mov   $0201+y,a         ; zero voice vol R shadow
09d9: d6 02 02  mov   $0202+y,a
09dc: d6 04 02  mov   $0204+y,a         ; zero source number
09df: d6 05 02  mov   $0205+y,a
09e2: d6 07 02  mov   $0207+y,a         ; zero envelope
09e5: e8 10     mov   a,#$10
09e7: d6 03 02  mov   $0203+y,a         ; clear pitch shadow
09ea: dd        mov   a,y
09eb: 60        clrc
09ec: 88 10     adc   a,#$10
09ee: fd        mov   y,a
09ef: 10 e0     bpl   $09d1
09f1: 4d        push  x
09f2: cd 0f     mov   x,#$0f
09f4: e8 00     mov   a,#$00
09f6: d4 80     mov   $80+x,a
09f8: 1d        dec   x
09f9: 10 f9     bpl   $09f4
09fb: ce        pop   x
;
09fc: e4 01     mov   a,$01
09fe: 28 df     and   a,#$df
0a00: c4 01     mov   $01,a
0a02: e8 1f     mov   a,#$1f
0a04: c4 72     mov   $72,a
0a06: 4d        push  x
0a07: cd 0d     mov   x,#$0d
0a09: f4 90     mov   a,$90+x
0a0b: 28 f7     and   a,#$f7
0a0d: d4 90     mov   $90+x,a
0a0f: 1d        dec   x
0a10: 10 f7     bpl   $0a09
0a12: ce        pop   x
0a13: 6f        ret
;
0a14: 1c        asl   a
0a15: fd        mov   y,a
0a16: f7 60     mov   a,($60)+y
0a18: c4 36     mov   $36,a
0a1a: fc        inc   y
0a1b: f7 60     mov   a,($60)+y
0a1d: c4 37     mov   $37,a
0a1f: 8d 07     mov   y,#$07
0a21: f7 36     mov   a,($36)+y
0a23: d6 78 00  mov   $0078+y,a
0a26: dc        dec   y
0a27: 10 f8     bpl   $0a21
0a29: 8d 08     mov   y,#$08
0a2b: cd 0f     mov   x,#$0f
0a2d: f7 36     mov   a,($36)+y
0a2f: d8 f2     mov   $f2,x
0a31: c4 f3     mov   $f3,a
0a33: fc        inc   y
0a34: 7d        mov   a,x
0a35: 60        clrc
0a36: 88 10     adc   a,#$10
0a38: 5d        mov   x,a
0a39: 10 f2     bpl   $0a2d
0a3b: e4 01     mov   a,$01
0a3d: 28 04     and   a,#$04
0a3f: d0 12     bne   $0a53
0a41: e4 7f     mov   a,$7f
0a43: 5c        lsr   a
0a44: 44 7f     eor   a,$7f
0a46: 5c        lsr   a
0a47: 90 03     bcc   $0a4c
0a49: 8f 00 7f  mov   $7f,#$00
0a4c: e4 7a     mov   a,$7a
0a4e: 5c        lsr   a
0a4f: 2d        push  a
0a50: fd        mov   y,a
0a51: 2f 0f     bra   $0a62
0a53: eb 7a     mov   y,$7a
0a55: e4 7b     mov   a,$7b
0a57: 48 7f     eor   a,#$7f
0a59: cf        mul   ya
0a5a: 6d        push  y
0a5b: eb 7a     mov   y,$7a
0a5d: e4 7b     mov   a,$7b
0a5f: 48 80     eor   a,#$80
0a61: cf        mul   ya
0a62: e4 7f     mov   a,$7f
0a64: 5c        lsr   a
0a65: c4 38     mov   $38,a
0a67: dd        mov   a,y
0a68: 10 02     bpl   $0a6c
0a6a: e8 7f     mov   a,#$7f
0a6c: 90 03     bcc   $0a71
0a6e: 48 ff     eor   a,#$ff
0a70: bc        inc   a
0a71: c4 7a     mov   $7a,a
0a73: 4b 38     lsr   $38
0a75: ae        pop   a
0a76: 10 02     bpl   $0a7a
0a78: e8 7f     mov   a,#$7f
0a7a: 90 03     bcc   $0a7f
0a7c: 48 ff     eor   a,#$ff
0a7e: bc        inc   a
0a7f: cb 7b     mov   $7b,y
0a81: 8f 7d f2  mov   $f2,#$7d
0a84: e4 f3     mov   a,$f3
0a86: c4 39     mov   $39,a
0a88: 8f 6d f2  mov   $f2,#$6d
0a8b: e4 f3     mov   a,$f3
0a8d: c4 38     mov   $38,a
0a8f: e4 2e     mov   a,$2e
0a91: d0 2f     bne   $0ac2
0a93: 8f 0f 2f  mov   $2f,#$0f
0a96: 8f 0f 2d  mov   $2d,#$0f
0a99: e4 78     mov   a,$78
0a9b: 8f 6d f2  mov   $f2,#$6d
0a9e: c4 f3     mov   $f3,a
0aa0: e4 79     mov   a,$79
0aa2: 8f 7d f2  mov   $f2,#$7d
0aa5: c4 f3     mov   $f3,a
0aa7: 8f 00 f1  mov   $f1,#$00
0aaa: 8f 02 f1  mov   $f1,#$02
0aad: e4 2d     mov   a,$2d
0aaf: f0 04     beq   $0ab5
0ab1: 8f 01 2e  mov   $2e,#$01
0ab4: 6f        ret
0ab5: e4 01     mov   a,$01
0ab7: 28 08     and   a,#$08
0ab9: d0 04     bne   $0abf
0abb: 8f 02 2e  mov   $2e,#$02
0abe: 6f        ret
0abf: 5f 47 0b  jmp   $0b47
0ac2: e4 38     mov   a,$38
0ac4: 64 78     cmp   a,$78
0ac6: d0 07     bne   $0acf
0ac8: e4 39     mov   a,$39
0aca: 64 79     cmp   a,$79
0acc: d0 01     bne   $0acf
0ace: 6f        ret
0acf: e4 2f     mov   a,$2f
0ad1: c4 2d     mov   $2d,a
0ad3: e4 79     mov   a,$79
0ad5: 64 2f     cmp   a,$2f
0ad7: 90 c0     bcc   $0a99
0ad9: c4 2f     mov   $2f,a
0adb: 2f bc     bra   $0a99
0add: e4 2e     mov   a,$2e
0adf: 5c        lsr   a
0ae0: b0 0d     bcs   $0aef
0ae2: 9c        dec   a
0ae3: f0 28     beq   $0b0d
0ae5: e4 01     mov   a,$01
0ae7: 28 08     and   a,#$08
0ae9: d0 03     bne   $0aee
0aeb: 8f 02 2e  mov   $2e,#$02
0aee: 6f        ret
0aef: d0 3e     bne   $0b2f
0af1: e4 fe     mov   a,$fe
0af3: f0 39     beq   $0b2e
0af5: c4 38     mov   $38,a
0af7: e4 2d     mov   a,$2d
0af9: 80        setc
0afa: a4 38     sbc   a,$38
0afc: 90 05     bcc   $0b03
0afe: f0 03     beq   $0b03
0b00: c4 2d     mov   $2d,a
0b02: 6f        ret
0b03: 8f 7d f2  mov   $f2,#$7d
0b06: e4 f3     mov   a,$f3
0b08: c4 2f     mov   $2f,a
0b0a: 8f 02 2e  mov   $2e,#$02
0b0d: e4 01     mov   a,$01
0b0f: 28 08     and   a,#$08
0b11: f0 1b     beq   $0b2e
0b13: e4 2f     mov   a,$2f
0b15: f0 30     beq   $0b47
0b17: c4 2d     mov   $2d,a
0b19: 8f 0d f2  mov   $f2,#$0d
0b1c: 8f 00 f3  mov   $f3,#$00
0b1f: 8f 4d f2  mov   $f2,#$4d
0b22: 8f 00 f3  mov   $f3,#$00
0b25: 8f 00 f1  mov   $f1,#$00
0b28: 8f 02 f1  mov   $f1,#$02
0b2b: 8f 03 2e  mov   $2e,#$03
0b2e: 6f        ret
0b2f: e4 01     mov   a,$01
0b31: 28 08     and   a,#$08
0b33: f0 b6     beq   $0aeb
0b35: e4 fe     mov   a,$fe
0b37: f0 f5     beq   $0b2e
0b39: c4 38     mov   $38,a
0b3b: e4 2d     mov   a,$2d
0b3d: 80        setc
0b3e: a4 38     sbc   a,$38
0b40: 90 05     bcc   $0b47
0b42: f0 03     beq   $0b47
0b44: c4 2d     mov   $2d,a
0b46: 6f        ret
0b47: e4 7a     mov   a,$7a
0b49: 8f 2c f2  mov   $f2,#$2c
0b4c: c4 f3     mov   $f3,a
0b4e: e4 7b     mov   a,$7b
0b50: 8f 3c f2  mov   $f2,#$3c
0b53: c4 f3     mov   $f3,a
0b55: e4 7c     mov   a,$7c
0b57: 8f 0d f2  mov   $f2,#$0d
0b5a: c4 f3     mov   $f3,a
0b5c: 8f 04 2e  mov   $2e,#$04
0b5f: 6f        ret
; vcmd dispatch table
0b60: dw $0bc4  ; 80 - goto
0b62: dw $0bcf  ; 81 - loop end
0b64: dw $0c1b  ; 82 - halt
0b66: dw $0c26  ; 83 - set vibrato
0b68: dw $0c54  ; 84
0b6a: dw $0c6c  ; 85
0b6c: dw $0c16  ; 86
0b6e: dw $0c50  ; 87 - set volume
0b70: dw $0c2a  ; 88 - set software volume envelope
0b72: dw $0c2e  ; 89 - transpose (relative)
0b74: dw $0c39  ; 8a - increase/decrease volume
0b76: dw $0d0c  ; 8b
0b78: dw $0d4b  ; 8c - nop
0b7a: dw $0c0b  ; 8d - loop begin
0b7c: dw $0cfe  ; 8e
0b7e: dw $0d02  ; 8f
0b80: dw $0c36  ; 90
0b82: dw $0c84  ; 91
0b84: dw $0c89  ; 92
0b86: dw $0c9c  ; 93
0b88: dw $0d18  ; 94
0b8a: dw $0cc9  ; 95
0b8c: dw $0cfa  ; 96 - set tempo
0b8e: dw $0d99  ; 97 - tuning
0b90: dw $0d5d  ; 98
0b92: dw $0d3b  ; 99
0b94: dw $0dbb  ; 9a
0b96: dw $0dce  ; 9b
0b98: dw $0cde  ; 9c
0b9a: dw $0d61  ; 9d
0b9c: dw $0cd6  ; 9e
0b9e: dw $0d95  ; 9f - set ADSR
0ba0: dw $0d65  ; a0 - set sample
0ba2: dw $0d4d  ; a1 - slur on
0ba4: dw $0d55  ; a2 - slur off
0ba6: dw $0ddb  ; a3
0ba8: dw $0c03  ; a4
0baa: dw $0bf7  ; a5
0bac: dw $0e23  ; a6
0bae: dw $0e2b  ; a7
0bb0: dw $0e33  ; a8
0bb2: dw $0e3f  ; a9
0bb4: dw $0e47  ; aa
0bb6: dw $0e16  ; ab - set panpot
0bb8: dw $0d08  ; ac
0bba: dw $0be3  ; ad - conditional loop
0bbc: dw $0e64  ; ae
0bbe: dw $0e6c  ; af
0bc0: dw $0e4f  ; b0
0bc2: dw $0e74  ; b1
                ; b2-bf - crash
; vcmd 80 - goto
0bc4: 5d        mov   x,a
0bc5: fc        inc   y
0bc6: f7 34     mov   a,($34)+y
0bc8: c4 35     mov   $35,a
0bca: d8 34     mov   $34,x             ; set $34/5 to arg1/2
0bcc: 8d ff     mov   y,#$ff            ; clear reading index
0bce: 6f        ret
; vcmd 81 - jump if (--counter != 0)
0bcf: 60        clrc
0bd0: 84 2b     adc   a,$2b
0bd2: 5d        mov   x,a
0bd3: fc        inc   y
0bd4: f5 00 03  mov   a,$0300+x
0bd7: 9c        dec   a
0bd8: d5 00 03  mov   $0300+x,a         ; dec loop counter ($0300+X+arg1)
0bdb: f0 04     beq   $0be1
0bdd: f7 34     mov   a,($34)+y
0bdf: 2f e3     bra   $0bc4             ; if (counter != 0) goto arg2/3
0be1: fc        inc   y
0be2: 6f        ret
; vcmd AD - jump if (--counter == 0)
0be3: 60        clrc
0be4: 84 2b     adc   a,$2b
0be6: 5d        mov   x,a
0be7: fc        inc   y
0be8: f5 00 03  mov   a,$0300+x
0beb: 9c        dec   a
0bec: d5 00 03  mov   $0300+x,a         ; dec loop counter ($0300+X+arg1)
0bef: d0 04     bne   $0bf5
0bf1: f7 34     mov   a,($34)+y
0bf3: 2f cf     bra   $0bc4             ; if (counter == 0) goto arg2/3
0bf5: fc        inc   y
0bf6: 6f        ret
; vcmd A5
0bf7: fc        inc   y
0bf8: 75 70 03  cmp   a,$0370+x
0bfb: f0 02     beq   $0bff
0bfd: fc        inc   y
0bfe: 6f        ret
0bff: f7 34     mov   a,($34)+y
0c01: 2f c1     bra   $0bc4
; vcmd A4
0c03: 75 70 03  cmp   a,$0370+x
0c06: f0 02     beq   $0c0a
0c08: fc        inc   y
0c09: fc        inc   y
0c0a: 6f        ret
; vcmd 8D - loop begin
0c0b: 60        clrc
0c0c: 84 2b     adc   a,$2b
0c0e: 5d        mov   x,a
0c0f: fc        inc   y
0c10: f7 34     mov   a,($34)+y
0c12: d5 00 03  mov   $0300+x,a         ; set loop counter ($0300+X+arg1) to arg2
0c15: 6f        ret
; vcmd 86
0c16: f5 f0 01  mov   a,$01f0+x
0c19: c4 00     mov   $00,a
; vcmd 82 - halt
0c1b: e8 00     mov   a,#$00
0c1d: d4 80     mov   $80+x,a
0c1f: ae        pop   a
0c20: ae        pop   a
0c21: ae        pop   a
0c22: ae        pop   a
0c23: 5f 2e 08  jmp   $082e
; vcmd 83 - set vibrato
0c26: d5 40 03  mov   $0340+x,a
0c29: 6f        ret
; vcmd 88 - set software volume envelope
0c2a: d5 30 03  mov   $0330+x,a
0c2d: 6f        ret
; vcmd 89 - transpose (relative)
0c2e: 60        clrc
0c2f: 95 50 03  adc   a,$0350+x
0c32: d5 50 03  mov   $0350+x,a
0c35: 6f        ret
; vcmd 90
0c36: d4 80     mov   $80+x,a
0c38: 6f        ret
; vcmd 8A - increase/decrease volume
0c39: 60        clrc
0c3a: 30 0d     bmi   $0c49
0c3c: 95 20 03  adc   a,$0320+x
0c3f: 68 1f     cmp   a,#$1f
0c41: 90 02     bcc   $0c45
0c43: e8 1f     mov   a,#$1f
0c45: d5 20 03  mov   $0320+x,a
0c48: 6f        ret
0c49: 95 20 03  adc   a,$0320+x
0c4c: b0 f7     bcs   $0c45
0c4e: e8 00     mov   a,#$00
; vcmd 87 - set volume
0c50: d5 20 03  mov   $0320+x,a
0c53: 6f        ret
; vcmd 84
0c54: f0 0f     beq   $0c65
0c56: d5 90 04  mov   $0490+x,a
0c59: e8 00     mov   a,#$00
0c5b: d5 40 05  mov   $0540+x,a
0c5e: f4 a0     mov   a,$a0+x
0c60: 08 08     or    a,#$08
0c62: d4 a0     mov   $a0+x,a
0c64: 6f        ret
0c65: f4 a0     mov   a,$a0+x
0c67: 28 f7     and   a,#$f7
0c69: d4 a0     mov   $a0+x,a
0c6b: 6f        ret
; vcmd 85
0c6c: fc        inc   y
0c6d: f8 eb     mov   x,$eb
0c6f: c8 08     cmp   x,#$08
0c71: f0 0f     beq   $0c82
0c73: d4 10     mov   $10+x,a
0c75: f7 34     mov   a,($34)+y
0c77: d4 18     mov   $18+x,a
0c79: fc        inc   y
0c7a: f7 34     mov   a,($34)+y
0c7c: d4 20     mov   $20+x,a
0c7e: 3d        inc   x
0c7f: d8 eb     mov   $eb,x
0c81: 6f        ret
0c82: fc        inc   y
0c83: 6f        ret
; vcmd 91
0c84: 04 00     or    a,$00
0c86: c4 00     mov   $00,a
0c88: 6f        ret
; vcmd 92
0c89: 28 03     and   a,#$03
0c8b: c4 38     mov   $38,a
0c8d: e4 01     mov   a,$01
0c8f: 28 04     and   a,#$04
0c91: f0 08     beq   $0c9b
0c93: f4 b0     mov   a,$b0+x
0c95: 28 fc     and   a,#$fc
0c97: 04 38     or    a,$38
0c99: d4 b0     mov   $b0+x,a
0c9b: 6f        ret
; vcmd 93
0c9c: c4 36     mov   $36,a
0c9e: 28 1f     and   a,#$1f
0ca0: d5 90 01  mov   $0190+x,a
0ca3: f4 90     mov   a,$90+x
0ca5: 28 cd     and   a,#$cd
0ca7: 08 20     or    a,#$20
0ca9: cb 37     mov   $37,y
0cab: eb 36     mov   y,$36
0cad: 10 02     bpl   $0cb1
0caf: 08 10     or    a,#$10
0cb1: d4 90     mov   $90+x,a
0cb3: e8 00     mov   a,#$00
0cb5: d5 b0 01  mov   $01b0+x,a
0cb8: eb 37     mov   y,$37
0cba: fc        inc   y
0cbb: f7 34     mov   a,($34)+y
0cbd: d5 a0 01  mov   $01a0+x,a
0cc0: d0 06     bne   $0cc8
0cc2: f4 90     mov   a,$90+x
0cc4: 28 df     and   a,#$df
0cc6: d4 90     mov   $90+x,a
0cc8: 6f        ret
; vcmd 95
0cc9: f4 90     mov   a,$90+x
0ccb: 28 02     and   a,#$02
0ccd: d0 05     bne   $0cd4
0ccf: f7 34     mov   a,($34)+y
0cd1: 5f c4 0b  jmp   $0bc4
0cd4: fc        inc   y
0cd5: 6f        ret
; vcmd 9E
0cd6: f4 a0     mov   a,$a0+x
0cd8: 28 20     and   a,#$20
0cda: d0 f3     bne   $0ccf
0cdc: fc        inc   y
0cdd: 6f        ret
; vcmd 9C
0cde: b5 00 03  sbc   a,$0300+x
0ce1: 2d        push  a
0ce2: fc        inc   y
0ce3: f7 34     mov   a,($34)+y
0ce5: c4 36     mov   $36,a
0ce7: fc        inc   y
0ce8: f7 34     mov   a,($34)+y
0cea: c4 37     mov   $37,a
0cec: ae        pop   a
0ced: 6d        push  y
0cee: fd        mov   y,a
0cef: f7 36     mov   a,($36)+y
0cf1: ee        pop   y
0cf2: 60        clrc
0cf3: 95 50 03  adc   a,$0350+x
0cf6: d5 50 03  mov   $0350+x,a
0cf9: 6f        ret
; vcmd 96 - set tempo
0cfa: d5 60 03  mov   $0360+x,a
0cfd: 6f        ret
; vcmd 8E
0cfe: d5 50 01  mov   $0150+x,a
0d01: 6f        ret
; vcmd 8F
0d02: 60        clrc
0d03: 95 60 01  adc   a,$0160+x
0d06: 28 1f     and   a,#$1f
; vcmd AC
0d08: d5 60 01  mov   $0160+x,a
0d0b: 6f        ret
; vcmd 8B
0d0c: 30 03     bmi   $0d11
0d0e: d5 40 04  mov   $0440+x,a
0d11: fc        inc   y
0d12: f7 34     mov   a,($34)+y
0d14: d5 50 04  mov   $0450+x,a
0d17: 6f        ret
; vcmd 94
0d18: 30 0e     bmi   $0d28
0d1a: f0 18     beq   $0d34
0d1c: d5 b0 04  mov   $04b0+x,a
0d1f: f4 90     mov   a,$90+x
0d21: 28 bf     and   a,#$bf
0d23: 08 80     or    a,#$80
0d25: d4 90     mov   $90+x,a
0d27: 6f        ret
0d28: 28 7f     and   a,#$7f
0d2a: d5 b0 04  mov   $04b0+x,a
0d2d: f4 90     mov   a,$90+x
0d2f: 08 c0     or    a,#$c0
0d31: d4 90     mov   $90+x,a
0d33: 6f        ret
0d34: f4 90     mov   a,$90+x
0d36: 28 7f     and   a,#$7f
0d38: d4 90     mov   $90+x,a
0d3a: 6f        ret
; vcmd 99
0d3b: f4 80     mov   a,$80+x
0d3d: 48 10     eor   a,#$10
0d3f: d4 80     mov   $80+x,a
0d41: 28 10     and   a,#$10
0d43: f0 06     beq   $0d4b
0d45: e4 3a     mov   a,$3a
0d47: 08 08     or    a,#$08
0d49: c4 3a     mov   $3a,a
; vcmd 8C - nop
0d4b: dc        dec   y
0d4c: 6f        ret
; vcmd A1 - slur on
0d4d: f4 80     mov   a,$80+x
0d4f: 08 10     or    a,#$10
0d51: d4 80     mov   $80+x,a
0d53: 2f f0     bra   $0d45
; vcmd A2 - slur off
0d55: f4 80     mov   a,$80+x
0d57: 28 ef     and   a,#$ef
0d59: d4 80     mov   $80+x,a
0d5b: dc        dec   y
0d5c: 6f        ret
; vcmd 98
0d5d: d5 70 03  mov   $0370+x,a
0d60: 6f        ret
; vcmd 9D
0d61: d5 c0 01  mov   $01c0+x,a
0d64: 6f        ret
; vcmd A0 - set sample
0d65: 3f 6f 0d  call  $0d6f
0d68: e4 3a     mov   a,$3a
0d6a: 08 10     or    a,#$10
0d6c: c4 3a     mov   $3a,a
0d6e: 6f        ret
;
0d6f: d5 a0 03  mov   $03a0+x,a
;
0d72: 1c        asl   a
0d73: 6d        push  y
0d74: fd        mov   y,a
0d75: fc        inc   y
0d76: f7 62     mov   a,($62)+y
0d78: d0 0c     bne   $0d86
0d7a: e8 52     mov   a,#$52
0d7c: d5 70 01  mov   $0170+x,a
0d7f: e8 16     mov   a,#$16
0d81: d5 80 01  mov   $0180+x,a
0d84: ee        pop   y
0d85: 6f        ret
0d86: 1c        asl   a
0d87: fd        mov   y,a
0d88: f7 66     mov   a,($66)+y
0d8a: d5 70 01  mov   $0170+x,a
0d8d: fc        inc   y
0d8e: f7 66     mov   a,($66)+y
0d90: d5 80 01  mov   $0180+x,a
0d93: ee        pop   y
0d94: 6f        ret
; vcmd 9F - set ADSR
0d95: d5 b0 03  mov   $03b0+x,a
0d98: 6f        ret
; vcmd 97 - tuning
0d99: c4 36     mov   $36,a
0d9b: 60        clrc
0d9c: 95 20 04  adc   a,$0420+x
0d9f: d5 20 04  mov   $0420+x,a
0da2: fc        inc   y
0da3: f7 34     mov   a,($34)+y
0da5: d0 0d     bne   $0db4
0da7: e4 36     mov   a,$36
0da9: d0 07     bne   $0db2
0dab: d5 20 04  mov   $0420+x,a
0dae: d5 30 04  mov   $0430+x,a
0db1: 6f        ret
0db2: e8 00     mov   a,#$00
0db4: 95 30 04  adc   a,$0430+x
0db7: d5 30 04  mov   $0430+x,a
0dba: 6f        ret
; vcmd 9A
0dbb: dd        mov   a,y
0dbc: 80        setc
0dbd: 84 34     adc   a,$34
0dbf: d5 d0 01  mov   $01d0+x,a
0dc2: e4 35     mov   a,$35
0dc4: 88 00     adc   a,#$00
0dc6: d5 e0 01  mov   $01e0+x,a
0dc9: f7 34     mov   a,($34)+y
0dcb: 5f c4 0b  jmp   $0bc4
; vcmd 9B
0dce: f5 d0 01  mov   a,$01d0+x
0dd1: c4 34     mov   $34,a
0dd3: f5 e0 01  mov   a,$01e0+x
0dd6: c4 35     mov   $35,a
0dd8: 8d 00     mov   y,#$00
0dda: 6f        ret
; vcmd A3
0ddb: f0 30     beq   $0e0d
0ddd: 1c        asl   a
0dde: 6d        push  y
0ddf: fd        mov   y,a
0de0: f7 64     mov   a,($64)+y
0de2: d5 60 04  mov   $0460+x,a
0de5: c4 36     mov   $36,a
0de7: fc        inc   y
0de8: f7 64     mov   a,($64)+y
0dea: d5 70 04  mov   $0470+x,a
0ded: c4 37     mov   $37,a
0def: 8d 00     mov   y,#$00
0df1: f7 36     mov   a,($36)+y
0df3: ee        pop   y
0df4: d5 c0 03  mov   $03c0+x,a
0df7: e4 01     mov   a,$01
0df9: 28 04     and   a,#$04
0dfb: d0 04     bne   $0e01
0dfd: d5 c0 03  mov   $03c0+x,a
0e00: 6f        ret
0e01: f4 90     mov   a,$90+x
0e03: 08 01     or    a,#$01
0e05: d4 90     mov   $90+x,a
0e07: e8 80     mov   a,#$80
0e09: d5 80 04  mov   $0480+x,a
0e0c: 6f        ret
0e0d: f4 90     mov   a,$90+x
0e0f: 28 fe     and   a,#$fe
0e11: d4 90     mov   $90+x,a
0e13: fc        inc   y
0e14: f7 34     mov   a,($34)+y
; vcmd AB - set panpot
0e16: d5 c0 03  mov   $03c0+x,a
0e19: e4 01     mov   a,$01
0e1b: 28 04     and   a,#$04
0e1d: d0 03     bne   $0e22
0e1f: d5 c0 03  mov   $03c0+x,a
0e22: 6f        ret
; vcmd A6
0e23: f4 a0     mov   a,$a0+x
0e25: 08 02     or    a,#$02
0e27: d4 a0     mov   $a0+x,a
0e29: dc        dec   y
0e2a: 6f        ret
; vcmd A7
0e2b: f4 a0     mov   a,$a0+x
0e2d: 28 fd     and   a,#$fd
0e2f: d4 a0     mov   $a0+x,a
0e31: dc        dec   y
0e32: 6f        ret
; vcmd A8
0e33: 6d        push  y
0e34: 3f 14 0a  call  $0a14
0e37: ee        pop   y
0e38: f4 a0     mov   a,$a0+x
0e3a: 08 01     or    a,#$01
0e3c: d4 a0     mov   $a0+x,a
0e3e: 6f        ret
; vcmd A9
0e3f: f4 a0     mov   a,$a0+x
0e41: 08 01     or    a,#$01
0e43: d4 a0     mov   $a0+x,a
0e45: dc        dec   y
0e46: 6f        ret
; vcmd AA
0e47: f4 a0     mov   a,$a0+x
0e49: 28 fe     and   a,#$fe
0e4b: d4 a0     mov   $a0+x,a
0e4d: dc        dec   y
0e4e: 6f        ret
; vcmd B0
0e4f: f0 09     beq   $0e5a
0e51: 8f 00 38  mov   $38,#$00
0e54: e4 01     mov   a,$01
0e56: 08 08     or    a,#$08
0e58: 2f 07     bra   $0e61
0e5a: 8f 20 38  mov   $38,#$20
0e5d: e4 01     mov   a,$01
0e5f: 28 f7     and   a,#$f7
0e61: c4 01     mov   $01,a
0e63: 6f        ret
; vcmd AE
0e64: f4 b0     mov   a,$b0+x
0e66: 28 fb     and   a,#$fb
0e68: d4 b0     mov   $b0+x,a
0e6a: dc        dec   y
0e6b: 6f        ret
; vcmd AF
0e6c: f4 b0     mov   a,$b0+x
0e6e: 08 04     or    a,#$04
0e70: d4 b0     mov   $b0+x,a
0e72: dc        dec   y
0e73: 6f        ret
; vcmd B1
0e74: f8 eb     mov   x,$eb
0e76: c8 08     cmp   x,#$08
0e78: f0 13     beq   $0e8d
0e7a: d4 08     mov   $08+x,a
0e7c: e8 fc     mov   a,#$fc
0e7e: d4 10     mov   $10+x,a
0e80: f5 20 03  mov   a,$0320+x
0e83: d4 18     mov   $18+x,a
0e85: f5 50 03  mov   a,$0350+x
0e88: d4 20     mov   $20+x,a
0e8a: 3d        inc   x
0e8b: d8 eb     mov   $eb,x
0e8d: f8 2b     mov   x,$2b
0e8f: e4 3a     mov   a,$3a
0e91: 08 40     or    a,#$40
0e93: c4 3a     mov   $3a,a
0e95: f5 40 05  mov   a,$0540+x
0e98: 0d        push  psw
0e99: e8 01     mov   a,#$01
0e9b: d5 d0 00  mov   $00d0+x,a
0e9e: d5 40 05  mov   $0540+x,a
0ea1: fc        inc   y
0ea2: ae        pop   a
0ea3: ae        pop   a
0ea4: 5f a5 0f  jmp   $0fa5
; dispatch vcmd in A, read first argument
0ea7: 1c        asl   a
0ea8: 5d        mov   x,a
0ea9: f5 61 0b  mov   a,$0b61+x
0eac: 2d        push  a
0ead: f5 60 0b  mov   a,$0b60+x
0eb0: 2d        push  a
0eb1: f8 2b     mov   x,$2b
0eb3: fc        inc   y
0eb4: f7 34     mov   a,($34)+y
0eb6: 6f        ret
; do vcmds
0eb7: f5 80 03  mov   a,$0380+x
0eba: c4 34     mov   $34,a
0ebc: f5 90 03  mov   a,$0390+x
0ebf: c4 35     mov   $35,a             ; set $34/5 to reading ptr (lo/hi)
0ec1: 8d 00     mov   y,#$00            ; zero reading index
0ec3: f7 34     mov   a,($34)+y         ; read vcmd
0ec5: 30 03     bmi   $0eca             ; vcmds 80-FF
0ec7: 5f 65 0f  jmp   $0f65             ; vcmds 00-7F
0eca: 68 c0     cmp   a,#$c0
0ecc: b0 08     bcs   $0ed6
0ece: 3f a7 0e  call  $0ea7             ; dispatch vcmds 80-BF
0ed1: f8 2b     mov   x,$2b             ; voice number
0ed3: fc        inc   y
0ed4: 2f ed     bra   $0ec3             ; do next vcmd
0ed6: 68 de     cmp   a,#$de
0ed8: 90 03     bcc   $0edd             ; vcmds C0-DD
0eda: 5f 5d 0f  jmp   $0f5d             ; vcmds DE-FF
0edd: a8 bf     sbc   a,#$bf
0edf: 1c        asl   a
0ee0: 1c        asl   a
0ee1: 1c        asl   a
0ee2: 6d        push  y
0ee3: fd        mov   y,a
0ee4: f7 54     mov   a,($54)+y
0ee6: 75 a0 03  cmp   a,$03a0+x
0ee9: f0 03     beq   $0eee
0eeb: 3f 6f 0d  call  $0d6f
0eee: e4 3a     mov   a,$3a
0ef0: 08 10     or    a,#$10
0ef2: c4 3a     mov   $3a,a
0ef4: fc        inc   y
0ef5: f7 54     mov   a,($54)+y
0ef7: d5 b0 03  mov   $03b0+x,a
0efa: fc        inc   y
0efb: f7 54     mov   a,($54)+y
0efd: d5 30 03  mov   $0330+x,a
0f00: fc        inc   y
0f01: f7 54     mov   a,($54)+y
0f03: c4 38     mov   $38,a
0f05: fc        inc   y
0f06: f7 54     mov   a,($54)+y
0f08: c4 39     mov   $39,a
0f0a: 28 1f     and   a,#$1f
0f0c: d5 60 01  mov   $0160+x,a
0f0f: e4 39     mov   a,$39
0f11: 0d        push  psw
0f12: 3c        rol   a
0f13: 3c        rol   a
0f14: 3c        rol   a
0f15: 3c        rol   a
0f16: 28 03     and   a,#$03
0f18: c4 39     mov   $39,a
0f1a: f4 80     mov   a,$80+x
0f1c: 28 fc     and   a,#$fc
0f1e: 04 39     or    a,$39
0f20: d4 80     mov   $80+x,a
0f22: e4 38     mov   a,$38
0f24: 8e        pop   psw
0f25: 30 0a     bmi   $0f31
0f27: d5 40 03  mov   $0340+x,a
0f2a: e8 00     mov   a,#$00
0f2c: d5 b0 04  mov   $04b0+x,a
0f2f: 2f 0a     bra   $0f3b
0f31: 28 ff     and   a,#$ff
0f33: 3f 18 0d  call  $0d18
0f36: e8 00     mov   a,#$00
0f38: d5 40 03  mov   $0340+x,a
0f3b: fc        inc   y
0f3c: f4 b0     mov   a,$b0+x
0f3e: 28 04     and   a,#$04
0f40: d0 0b     bne   $0f4d
0f42: e4 01     mov   a,$01
0f44: 28 04     and   a,#$04
0f46: f0 02     beq   $0f4a
0f48: f7 54     mov   a,($54)+y
0f4a: d5 c0 03  mov   $03c0+x,a
0f4d: fc        inc   y
0f4e: fc        inc   y
0f4f: f7 54     mov   a,($54)+y
0f51: d0 11     bne   $0f64
0f53: c4 39     mov   $39,a
0f55: ee        pop   y
0f56: fc        inc   y
0f57: f7 34     mov   a,($34)+y         ; read vcmd
0f59: 10 0a     bpl   $0f65             ; vcmds 00-7F
0f5b: 30 0b     bmi   $0f68             ; vcmds 80-FF
; vcmds DE-FF - set duration
0f5d: f5 40 05  mov   a,$0540+x
0f60: 0d        push  psw
0f61: 5f 71 0f  jmp   $0f71
0f64: ee        pop   y
; vcmds 00-7F - note
0f65: c4 39     mov   $39,a             ;; $39 <- note number
0f67: fc        inc   y
0f68: f5 40 05  mov   a,$0540+x
0f6b: 0d        push  psw
0f6c: e4 39     mov   a,$39             ;; note number?
0f6e: d5 40 05  mov   $0540+x,a
0f71: f0 2f     beq   $0fa2             ;; jump if ($0540+X == 0) (rest)
0f73: c4 38     mov   $38,a
0f75: f4 a0     mov   a,$a0+x
0f77: 28 08     and   a,#$08
0f79: f0 25     beq   $0fa0
0f7b: f4 c0     mov   a,$c0+x
0f7d: c4 28     mov   $28,a
0f7f: f4 d0     mov   a,$d0+x
0f81: c4 29     mov   $29,a
0f83: e4 38     mov   a,$38
0f85: 3f 5c 10  call  $105c
0f88: f4 c0     mov   a,$c0+x
0f8a: d5 a0 04  mov   $04a0+x,a
0f8d: f4 d0     mov   a,$d0+x
0f8f: d5 b0 04  mov   $04b0+x,a
0f92: 8e        pop   psw
0f93: 0d        push  psw
0f94: f0 0f     beq   $0fa5
0f96: e4 28     mov   a,$28
0f98: d4 c0     mov   $c0+x,a
0f9a: e4 29     mov   a,$29
0f9c: d4 d0     mov   $d0+x,a
0f9e: 2f 05     bra   $0fa5
0fa0: e4 38     mov   a,$38
0fa2: 3f 5c 10  call  $105c
0fa5: f7 34     mov   a,($34)+y         ; read vcmd
0fa7: 68 ef     cmp   a,#$ef
0fa9: 90 1c     bcc   $0fc7             ; vcmds 00-EE
0fab: a8 ef     sbc   a,#$ef
0fad: d0 05     bne   $0fb4             ; vcmds F0-FF
0faf: fc        inc   y                 ; vcmd EF, inc reading ptr
0fb0: f7 34     mov   a,($34)+y         ; read argument
0fb2: b0 07     bcs   $0fbb
0fb4: cb 36     mov   $36,y
0fb6: fd        mov   y,a
0fb7: f7 52     mov   a,($52)+y         ; read duration from table
0fb9: eb 36     mov   y,$36
0fbb: fc        inc   y
0fbc: d5 10 04  mov   $0410+x,a
0fbf: f7 34     mov   a,($34)+y
0fc1: d5 c0 01  mov   $01c0+x,a
0fc4: fc        inc   y
0fc5: 2f 16     bra   $0fdd
0fc7: a8 dd     sbc   a,#$dd
0fc9: 90 12     bcc   $0fdd             ; vcmds 00-DD
0fcb: d0 05     bne   $0fd2             ; vcmds DF-EE
0fcd: fc        inc   y                 ; vcmd DE, inc reading ptr
0fce: f7 34     mov   a,($34)+y         ; read argument
0fd0: b0 07     bcs   $0fd9             ; branch always
0fd2: cb 36     mov   $36,y
0fd4: fd        mov   y,a
0fd5: f7 52     mov   a,($52)+y         ; read duration from table
0fd7: eb 36     mov   y,$36
0fd9: fc        inc   y                 ; inc reading ptr
0fda: d5 10 04  mov   $0410+x,a         ; set duration
0fdd: e8 00     mov   a,#$00
0fdf: d5 00 04  mov   $0400+x,a         ; zero duration counter
0fe2: 8e        pop   psw
0fe3: f0 2c     beq   $1011             ;; jump if ($0540+X == 0) (rest)
0fe5: f4 80     mov   a,$80+x
0fe7: 28 10     and   a,#$10
0fe9: f0 14     beq   $0fff
0feb: e4 3a     mov   a,$3a
0fed: 28 08     and   a,#$08
0fef: d0 0e     bne   $0fff
0ff1: f4 a0     mov   a,$a0+x
0ff3: 28 40     and   a,#$40
0ff5: f0 42     beq   $1039
0ff7: e4 3a     mov   a,$3a
0ff9: 08 20     or    a,#$20
0ffb: c4 3a     mov   $3a,a
0ffd: 2f 3a     bra   $1039
0fff: f4 80     mov   a,$80+x
1001: 28 04     and   a,#$04
1003: f0 0c     beq   $1011
1005: e4 3a     mov   a,$3a
1007: 28 10     and   a,#$10
1009: d0 06     bne   $1011
100b: f4 a0     mov   a,$a0+x
100d: 28 50     and   a,#$50
100f: f0 06     beq   $1017
;
1011: e4 3a     mov   a,$3a
1013: 08 20     or    a,#$20
1015: c4 3a     mov   $3a,a
1017: e8 01     mov   a,#$01
1019: d5 f0 04  mov   $04f0+x,a         ; set $04f0+X to #$01
101c: d5 10 05  mov   $0510+x,a         ; set $0510+X to #$01
101f: d5 30 05  mov   $0530+x,a         ; set $0530+X to #$01
1022: d5 d0 04  mov   $04d0+x,a         ; set $04d0+X to #$01
1025: e8 ff     mov   a,#$ff
1027: d5 e0 04  mov   $04e0+x,a         ; set $04e0+X to #$ff
102a: d5 00 05  mov   $0500+x,a         ; set $0500+X to #$ff
102d: d5 20 05  mov   $0520+x,a         ; set $0520+X to #$ff
1030: d5 c0 04  mov   $04c0+x,a         ; set $04c0+X to #$ff
1033: f4 90     mov   a,$90+x
1035: 08 04     or    a,#$04
1037: d4 90     mov   $90+x,a
1039: dd        mov   a,y
103a: 60        clrc
103b: 84 34     adc   a,$34
103d: d5 80 03  mov   $0380+x,a
1040: e4 35     mov   a,$35
1042: 88 00     adc   a,#$00
1044: d5 90 03  mov   $0390+x,a         ; set reading ptr (lo/hi) to $34/5 + Y
1047: e4 3a     mov   a,$3a
1049: 08 80     or    a,#$80
104b: c4 3a     mov   $3a,a
104d: e4 3a     mov   a,$3a
104f: 28 40     and   a,#$40
1051: c4 36     mov   $36,a
1053: f4 a0     mov   a,$a0+x
1055: 28 af     and   a,#$af
1057: 04 36     or    a,$36
1059: d4 a0     mov   $a0+x,a
105b: 6f        ret
;
105c: d4 c0     mov   $c0+x,a
105e: 28 ff     and   a,#$ff
1060: d0 03     bne   $1065
1062: d4 d0     mov   $d0+x,a
1064: 6f        ret
;
1065: f4 80     mov   a,$80+x
1067: 28 08     and   a,#$08
1069: f0 13     beq   $107e
106b: e8 01     mov   a,#$01
106d: d4 d0     mov   $d0+x,a
106f: f4 c0     mov   a,$c0+x
1071: 9c        dec   a
1072: 60        clrc
1073: 95 50 03  adc   a,$0350+x
1076: d4 c0     mov   $c0+x,a
1078: 28 1f     and   a,#$1f
107a: d5 60 01  mov   $0160+x,a
107d: 6f        ret
;
107e: f4 c0     mov   a,$c0+x
1080: 60        clrc
1081: 95 50 03  adc   a,$0350+x
1084: c4 38     mov   $38,a
1086: 6d        push  y
1087: f5 a0 03  mov   a,$03a0+x
108a: 1c        asl   a
108b: fd        mov   y,a
108c: f7 62     mov   a,($62)+y
108e: 84 38     adc   a,$38
1090: f0 25     beq   $10b7
1092: 68 79     cmp   a,#$79
1094: b0 21     bcs   $10b7
1096: 1c        asl   a
1097: fd        mov   y,a
1098: f5 70 01  mov   a,$0170+x
109b: c4 36     mov   $36,a
109d: f5 80 01  mov   a,$0180+x
10a0: c4 37     mov   $37,a
10a2: f5 20 04  mov   a,$0420+x
10a5: 97 36     adc   a,($36)+y
10a7: d4 c0     mov   $c0+x,a
10a9: fc        inc   y
10aa: f7 36     mov   a,($36)+y
10ac: 95 30 04  adc   a,$0430+x
10af: 68 40     cmp   a,#$40
10b1: b0 04     bcs   $10b7
10b3: d4 d0     mov   $d0+x,a
10b5: ee        pop   y
10b6: 6f        ret
;
10b7: e8 00     mov   a,#$00
10b9: d4 c0     mov   $c0+x,a
10bb: d4 d0     mov   $d0+x,a
10bd: ee        pop   y
10be: 6f        ret
; read ADSR from $5e[$03b0+x] to $3b/c
10bf: f5 b0 03  mov   a,$03b0+x
10c2: 1c        asl   a
10c3: b0 0b     bcs   $10d0
10c5: fd        mov   y,a
10c6: f7 5e     mov   a,($5e)+y
10c8: c4 3b     mov   $3b,a
10ca: fc        inc   y
10cb: f7 5e     mov   a,($5e)+y
10cd: c4 3c     mov   $3c,a
10cf: 6f        ret
; reset ADSR if the index >= 0x80
10d0: 8f 00 3b  mov   $3b,#$00
10d3: d0 04     bne   $10d9
10d5: 8f 7f 3c  mov   $3c,#$7f
10d8: 6f        ret
;
10d9: fd        mov   y,a
10da: f7 5c     mov   a,($5c)+y
10dc: c4 36     mov   $36,a
10de: fc        inc   y
10df: f7 5c     mov   a,($5c)+y
10e1: c4 37     mov   $37,a
10e3: f5 d0 04  mov   a,$04d0+x
10e6: 9c        dec   a
10e7: d5 d0 04  mov   $04d0+x,a
10ea: f0 06     beq   $10f2
10ec: f5 c0 04  mov   a,$04c0+x
10ef: fd        mov   y,a
10f0: 2f 0e     bra   $1100
10f2: f5 c0 04  mov   a,$04c0+x
10f5: fd        mov   y,a
10f6: 3f 0c 13  call  $130c
10f9: d5 d0 04  mov   $04d0+x,a
10fc: dd        mov   a,y
10fd: d5 c0 04  mov   $04c0+x,a
1100: f7 36     mov   a,($36)+y
1102: c4 3c     mov   $3c,a
1104: 6f        ret
; read software envelope params
1105: f5 30 03  mov   a,$0330+x
1108: d0 06     bne   $1110
110a: f5 20 03  mov   a,$0320+x
110d: c4 2a     mov   $2a,a
110f: 6f        ret
1110: 1c        asl   a
1111: fd        mov   y,a
1112: f7 56     mov   a,($56)+y
1114: c4 36     mov   $36,a
1116: fc        inc   y
1117: f7 56     mov   a,($56)+y
1119: c4 37     mov   $37,a
111b: f5 f0 04  mov   a,$04f0+x
111e: 9c        dec   a
111f: d5 f0 04  mov   $04f0+x,a
1122: f0 07     beq   $112b
1124: f5 e0 04  mov   a,$04e0+x
1127: fd        mov   y,a
1128: 5f 39 11  jmp   $1139
112b: f5 e0 04  mov   a,$04e0+x
112e: fd        mov   y,a
112f: 3f 0c 13  call  $130c
1132: d5 f0 04  mov   $04f0+x,a
1135: dd        mov   a,y
1136: d5 e0 04  mov   $04e0+x,a
1139: f7 36     mov   a,($36)+y
113b: bc        inc   a
113c: 1c        asl   a
113d: 1c        asl   a
113e: fd        mov   y,a
113f: f5 20 03  mov   a,$0320+x
1142: cf        mul   ya
1143: 1c        asl   a
1144: dd        mov   a,y
1145: 3c        rol   a
1146: c4 2a     mov   $2a,a
1148: 6f        ret
;
1149: e4 3a     mov   a,$3a
114b: 10 0d     bpl   $115a
114d: f5 40 05  mov   a,$0540+x
1150: f0 04     beq   $1156
1152: 60        clrc
1153: 95 50 03  adc   a,$0350+x
1156: d5 a0 04  mov   $04a0+x,a
1159: 6f        ret
115a: f4 90     mov   a,$90+x
115c: 28 40     and   a,#$40
115e: d0 13     bne   $1173
1160: f5 a0 04  mov   a,$04a0+x
1163: f0 f4     beq   $1159
1165: 80        setc
1166: b5 b0 04  sbc   a,$04b0+x
1169: 90 1d     bcc   $1188
116b: f0 1b     beq   $1188
116d: d5 a0 04  mov   $04a0+x,a
1170: 5f 84 10  jmp   $1084
1173: f5 a0 04  mov   a,$04a0+x
1176: f0 e1     beq   $1159
1178: 60        clrc
1179: 95 b0 04  adc   a,$04b0+x
117c: b0 0a     bcs   $1188
117e: 68 79     cmp   a,#$79
1180: b0 06     bcs   $1188
1182: d5 a0 04  mov   $04a0+x,a
1185: 5f 84 10  jmp   $1084
1188: e8 00     mov   a,#$00
118a: d5 a0 04  mov   $04a0+x,a
118d: d4 c0     mov   $c0+x,a
118f: d4 d0     mov   $d0+x,a
1191: 6f        ret
;
1192: f5 40 05  mov   a,$0540+x
1195: f0 10     beq   $11a7
1197: f4 d0     mov   a,$d0+x
1199: 75 b0 04  cmp   a,$04b0+x
119c: c4 38     mov   $38,a
119e: d0 08     bne   $11a8
11a0: f4 c0     mov   a,$c0+x
11a2: 75 a0 04  cmp   a,$04a0+x
11a5: d0 01     bne   $11a8
11a7: 6f        ret
11a8: 0d        push  psw
11a9: 4b 38     lsr   $38
11ab: 7c        ror   a
11ac: eb 38     mov   y,$38
11ae: c4 39     mov   $39,a
11b0: f5 90 04  mov   a,$0490+x
11b3: c4 36     mov   $36,a
11b5: d8 37     mov   $37,x
11b7: 7e 36     cmp   y,$36
11b9: b0 0d     bcs   $11c8
11bb: e4 39     mov   a,$39
11bd: f8 36     mov   x,$36
11bf: 8f 00 36  mov   $36,#$00
11c2: 9e        div   ya,x
11c3: d0 22     bne   $11e7
11c5: bc        inc   a
11c6: 2f 1f     bra   $11e7
11c8: dd        mov   a,y
11c9: 0b 39     asl   $39
11cb: 3c        rol   a
11cc: 0b 39     asl   $39
11ce: 3c        rol   a
11cf: 0b 39     asl   $39
11d1: 3c        rol   a
11d2: 8d 00     mov   y,#$00
11d4: f8 36     mov   x,$36
11d6: 9e        div   ya,x
11d7: 8f 00 39  mov   $39,#$00
11da: 5c        lsr   a
11db: 6b 39     ror   $39
11dd: 5c        lsr   a
11de: 6b 39     ror   $39
11e0: 5c        lsr   a
11e1: 6b 39     ror   $39
11e3: c4 36     mov   $36,a
11e5: e4 39     mov   a,$39
11e7: f8 37     mov   x,$37
11e9: 8e        pop   psw
11ea: b0 1a     bcs   $1206
11ec: 94 c0     adc   a,$c0+x
11ee: d4 c0     mov   $c0+x,a
11f0: e4 36     mov   a,$36
11f2: 94 d0     adc   a,$d0+x
11f4: d4 d0     mov   $d0+x,a
11f6: 75 b0 04  cmp   a,$04b0+x
11f9: 90 31     bcc   $122c
11fb: d0 25     bne   $1222
11fd: f4 c0     mov   a,$c0+x
11ff: 75 a0 04  cmp   a,$04a0+x
1202: 90 28     bcc   $122c
1204: b0 1c     bcs   $1222
1206: c4 37     mov   $37,a
1208: f4 c0     mov   a,$c0+x
120a: a4 37     sbc   a,$37
120c: d4 c0     mov   $c0+x,a
120e: f4 d0     mov   a,$d0+x
1210: a4 36     sbc   a,$36
1212: d4 d0     mov   $d0+x,a
1214: 75 b0 04  cmp   a,$04b0+x
1217: 90 09     bcc   $1222
1219: d0 11     bne   $122c
121b: f4 c0     mov   a,$c0+x
121d: 75 a0 04  cmp   a,$04a0+x
1220: b0 0a     bcs   $122c
1222: f5 a0 04  mov   a,$04a0+x
1225: d4 c0     mov   $c0+x,a
1227: f5 b0 04  mov   a,$04b0+x
122a: d4 d0     mov   $d0+x,a
122c: 6f        ret
;
122d: f4 c0     mov   a,$c0+x
122f: c4 28     mov   $28,a
1231: f4 d0     mov   a,$d0+x
1233: c4 29     mov   $29,a
1235: 04 28     or    a,$28
1237: f0 05     beq   $123e
1239: f5 40 03  mov   a,$0340+x
123c: d0 01     bne   $123f
123e: 6f        ret
; read vibrato params
123f: 1c        asl   a
1240: fd        mov   y,a
1241: f7 58     mov   a,($58)+y
1243: c4 36     mov   $36,a
1245: fc        inc   y
1246: f7 58     mov   a,($58)+y
1248: c4 37     mov   $37,a
124a: f5 10 05  mov   a,$0510+x
124d: 9c        dec   a
124e: d5 10 05  mov   $0510+x,a
1251: f0 07     beq   $125a
1253: f5 00 05  mov   a,$0500+x
1256: fd        mov   y,a
1257: 5f 68 12  jmp   $1268
125a: f5 00 05  mov   a,$0500+x
125d: fd        mov   y,a
125e: 3f 0c 13  call  $130c
1261: d5 10 05  mov   $0510+x,a
1264: dd        mov   a,y
1265: d5 00 05  mov   $0500+x,a
1268: f7 36     mov   a,($36)+y
126a: 60        clrc
126b: 30 12     bmi   $127f
126d: 84 28     adc   a,$28
126f: c4 28     mov   $28,a
1271: e8 00     mov   a,#$00
1273: 84 29     adc   a,$29
1275: c4 29     mov   $29,a
1277: b0 14     bcs   $128d
1279: 68 40     cmp   a,#$40
127b: 90 16     bcc   $1293
127d: b0 0e     bcs   $128d
127f: 84 28     adc   a,$28
1281: c4 28     mov   $28,a
1283: e8 ff     mov   a,#$ff
1285: 84 29     adc   a,$29
1287: c4 29     mov   $29,a
1289: b0 08     bcs   $1293
128b: 90 00     bcc   $128d
128d: e8 00     mov   a,#$00
128f: c4 28     mov   $28,a
1291: c4 29     mov   $29,a
1293: e4 28     mov   a,$28
1295: d5 c0 00  mov   $00c0+x,a
1298: e4 29     mov   a,$29
129a: d5 d0 00  mov   $00d0+x,a
129d: 6f        ret
;
129e: f5 50 01  mov   a,$0150+x
12a1: 30 30     bmi   $12d3
12a3: 68 20     cmp   a,#$20
12a5: b0 09     bcs   $12b0
12a7: 95 60 01  adc   a,$0160+x
12aa: 28 1f     and   a,#$1f
12ac: d5 60 01  mov   $0160+x,a
12af: 6f        ret
;
12b0: 68 30     cmp   a,#$30
12b2: b0 0b     bcs   $12bf
12b4: 95 60 01  adc   a,$0160+x
12b7: 28 0f     and   a,#$0f
12b9: 08 10     or    a,#$10
12bb: d5 60 01  mov   $0160+x,a
12be: 6f        ret
;
12bf: 60        clrc
12c0: c4 38     mov   $38,a
12c2: 95 60 01  adc   a,$0160+x
12c5: 28 07     and   a,#$07
12c7: c4 39     mov   $39,a
12c9: e4 38     mov   a,$38
12cb: 28 18     and   a,#$18
12cd: 04 39     or    a,$39
12cf: d5 60 01  mov   $0160+x,a
12d2: 6f        ret
;
12d3: 1c        asl   a
12d4: d0 09     bne   $12df
12d6: f5 60 01  mov   a,$0160+x
12d9: 48 1f     eor   a,#$1f
12db: d5 60 01  mov   $0160+x,a
12de: 6f        ret
;
12df: fd        mov   y,a
12e0: f7 5a     mov   a,($5a)+y
12e2: c4 36     mov   $36,a
12e4: fc        inc   y
12e5: f7 5a     mov   a,($5a)+y
12e7: c4 37     mov   $37,a
12e9: f5 30 05  mov   a,$0530+x
12ec: 9c        dec   a
12ed: d5 30 05  mov   $0530+x,a
12f0: f0 06     beq   $12f8
12f2: f5 20 05  mov   a,$0520+x
12f5: fd        mov   y,a
12f6: 2f 0e     bra   $1306
12f8: f5 20 05  mov   a,$0520+x
12fb: fd        mov   y,a
12fc: 3f 0c 13  call  $130c
12ff: d5 30 05  mov   $0530+x,a
1302: dd        mov   a,y
1303: d5 20 05  mov   $0520+x,a
1306: f7 36     mov   a,($36)+y
1308: d5 60 01  mov   $0160+x,a
130b: 6f        ret
;
130c: fc        inc   y
130d: f7 36     mov   a,($36)+y
130f: 30 02     bmi   $1313
1311: fc        inc   y
1312: 6f        ret
1313: 68 81     cmp   a,#$81
1315: f0 06     beq   $131d
1317: b0 0c     bcs   $1325
1319: e8 00     mov   a,#$00
131b: dc        dec   y
131c: 6f        ret
;
131d: dd        mov   a,y
131e: fc        inc   y
131f: 80        setc
1320: b7 36     sbc   a,($36)+y
1322: fd        mov   y,a
1323: 2f e8     bra   $130d
1325: ad 83     cmp   y,#$83
1327: f0 06     beq   $132f
1329: b0 0e     bcs   $1339
132b: 8d 00     mov   y,#$00
132d: 2f de     bra   $130d
132f: f4 90     mov   a,$90+x
1331: 28 04     and   a,#$04
1333: f0 0a     beq   $133f
1335: e8 01     mov   a,#$01
1337: 2f e2     bra   $131b
1339: f4 90     mov   a,$90+x
133b: 28 04     and   a,#$04
133d: d0 de     bne   $131d
133f: fc        inc   y
1340: 2f cb     bra   $130d
;
1342: f5 60 04  mov   a,$0460+x
1345: c4 36     mov   $36,a
1347: f5 70 04  mov   a,$0470+x
134a: c4 37     mov   $37,a
134c: 8d 01     mov   y,#$01
134e: f7 36     mov   a,($36)+y
1350: 48 80     eor   a,#$80
1352: c4 38     mov   $38,a
1354: f5 c0 03  mov   a,$03c0+x
1357: 48 80     eor   a,#$80
1359: c4 39     mov   $39,a
135b: fc        inc   y
135c: f7 36     mov   a,($36)+y
135e: 60        clrc
135f: 95 80 04  adc   a,$0480+x
1362: d5 80 04  mov   $0480+x,a
1365: fc        inc   y
1366: f7 36     mov   a,($36)+y
1368: 30 0e     bmi   $1378
136a: 84 39     adc   a,$39
136c: b0 14     bcs   $1382
136e: 64 38     cmp   a,$38
1370: b0 10     bcs   $1382
1372: 48 80     eor   a,#$80
1374: d5 c0 03  mov   $03c0+x,a
1377: 6f        ret
1378: 84 39     adc   a,$39
137a: 90 06     bcc   $1382
137c: 64 38     cmp   a,$38
137e: 90 02     bcc   $1382
1380: d0 f0     bne   $1372
1382: fc        inc   y
1383: f7 36     mov   a,($36)+y
1385: fc        inc   y
1386: 77 36     cmp   a,($36)+y
1388: f0 13     beq   $139d
138a: d5 c0 03  mov   $03c0+x,a
138d: dc        dec   y
138e: dd        mov   a,y
138f: 60        clrc
1390: 84 36     adc   a,$36
1392: d5 60 04  mov   $0460+x,a
1395: e4 37     mov   a,$37
1397: 88 00     adc   a,#$00
1399: d5 70 04  mov   $0470+x,a
139c: 6f        ret
139d: fc        inc   y
139e: f7 36     mov   a,($36)+y
13a0: c4 34     mov   $34,a
13a2: fc        inc   y
13a3: 17 36     or    a,($36)+y
13a5: f0 11     beq   $13b8
13a7: f7 36     mov   a,($36)+y
13a9: c4 37     mov   $37,a
13ab: e4 34     mov   a,$34
13ad: c4 36     mov   $36,a
13af: 8d 00     mov   y,#$00
13b1: f7 36     mov   a,($36)+y
13b3: d5 c0 03  mov   $03c0+x,a
13b6: 2f d6     bra   $138e
13b8: e4 38     mov   a,$38
13ba: 48 80     eor   a,#$80
13bc: d5 c0 03  mov   $03c0+x,a
13bf: f4 90     mov   a,$90+x
13c1: 28 fe     and   a,#$fe
13c3: d4 90     mov   $90+x,a
13c5: 6f        ret
;
13c6: e8 ff     mov   a,#$ff
13c8: c5 08 02  mov   $0208,a
13cb: c5 18 02  mov   $0218,a
13ce: c5 28 02  mov   $0228,a
13d1: c5 38 02  mov   $0238,a
13d4: c5 48 02  mov   $0248,a
13d7: c5 58 02  mov   $0258,a
13da: c5 68 02  mov   $0268,a
13dd: c5 78 02  mov   $0278,a
13e0: e8 00     mov   a,#$00
13e2: c4 3e     mov   $3e,a             ;; DSP KOF
13e4: c4 40     mov   $40,a             ;; DSP KON
13e6: c4 42     mov   $42,a             ;; DSP ?KOF
13e8: c4 46     mov   $46,a             ;; DSP NON
13ea: c4 48     mov   $48,a
13ec: c4 4a     mov   $4a,a
13ee: e8 ff     mov   a,#$ff
13f0: c4 44     mov   $44,a             ;; DSP FLG
13f2: 6f        ret
;
13f3: f4 a0     mov   a,$a0+x
13f5: 28 40     and   a,#$40
13f7: d0 f9     bne   $13f2
13f9: f5 70 03  mov   a,$0370+x
13fc: fd        mov   y,a
13fd: 1c        asl   a
13fe: 1c        asl   a
13ff: 1c        asl   a
1400: 1c        asl   a
1401: c4 39     mov   $39,a
1403: f6 38 15  mov   a,$1538+y
1406: c4 38     mov   $38,a
1408: 24 3e     and   a,$3e
140a: f0 07     beq   $1413
140c: f4 a0     mov   a,$a0+x
140e: 08 40     or    a,#$40
1410: d4 a0     mov   $a0+x,a
1412: 6f        ret
1413: e4 28     mov   a,$28
1415: 04 29     or    a,$29
1417: f0 f3     beq   $140c
1419: f4 90     mov   a,$90+x
141b: 28 08     and   a,#$08
141d: f0 1b     beq   $143a
141f: e4 01     mov   a,$01
1421: 28 20     and   a,#$20
1423: d0 08     bne   $142d
1425: f4 90     mov   a,$90+x
1427: 28 f7     and   a,#$f7
1429: d4 90     mov   $90+x,a
142b: 2f 0d     bra   $143a
142d: e4 72     mov   a,$72
142f: bc        inc   a
1430: 1c        asl   a
1431: 1c        asl   a
1432: eb 2a     mov   y,$2a
1434: cf        mul   ya
1435: 1c        asl   a
1436: dd        mov   a,y
1437: 3c        rol   a
1438: c4 2a     mov   $2a,a
143a: f4 80     mov   a,$80+x
143c: 28 02     and   a,#$02
143e: f0 4a     beq   $148a
1440: f4 80     mov   a,$80+x
1442: 28 01     and   a,#$01
1444: d0 1e     bne   $1464
1446: e4 44     mov   a,$44
1448: 30 01     bmi   $144b
144a: 6f        ret
;
144b: f5 60 01  mov   a,$0160+x
144e: c4 44     mov   $44,a
1450: e4 46     mov   a,$46
1452: 04 38     or    a,$38
1454: c4 46     mov   $46,a
1456: eb 2a     mov   y,$2a
1458: f5 50 04  mov   a,$0450+x
145b: 30 2f     bmi   $148c
145d: cf        mul   ya
145e: 1c        asl   a
145f: dd        mov   a,y
1460: 3c        rol   a
1461: fd        mov   y,a
1462: 2f 28     bra   $148c
1464: e4 44     mov   a,$44
1466: 10 22     bpl   $148a
1468: e4 39     mov   a,$39
146a: 2d        push  a
146b: e4 38     mov   a,$38
146d: 2d        push  a
146e: f5 40 04  mov   a,$0440+x
1471: fd        mov   y,a
1472: 1c        asl   a
1473: 1c        asl   a
1474: 1c        asl   a
1475: 1c        asl   a
1476: c4 39     mov   $39,a
1478: f6 38 15  mov   a,$1538+y
147b: c4 38     mov   $38,a
147d: 24 3e     and   a,$3e
147f: d0 03     bne   $1484
1481: 3f 4b 14  call  $144b
1484: ae        pop   a
1485: c4 38     mov   $38,a
1487: ae        pop   a
1488: c4 39     mov   $39,a
148a: eb 2a     mov   y,$2a
148c: f6 18 15  mov   a,$1518+y
148f: c4 36     mov   $36,a
1491: fd        mov   y,a
1492: f5 c0 03  mov   a,$03c0+x
1495: 48 80     eor   a,#$80
1497: cf        mul   ya
1498: f4 b0     mov   a,$b0+x
149a: 5c        lsr   a
149b: c4 37     mov   $37,a
149d: dd        mov   a,y
149e: eb 39     mov   y,$39
14a0: 90 03     bcc   $14a5
14a2: 48 ff     eor   a,#$ff
14a4: bc        inc   a
14a5: d6 00 02  mov   $0200+y,a
14a8: eb 36     mov   y,$36
14aa: f5 c0 03  mov   a,$03c0+x
14ad: 48 7f     eor   a,#$7f
14af: cf        mul   ya
14b0: dd        mov   a,y
14b1: eb 39     mov   y,$39
14b3: 4b 37     lsr   $37
14b5: 90 03     bcc   $14ba
14b7: 48 ff     eor   a,#$ff
14b9: bc        inc   a
14ba: d6 01 02  mov   $0201+y,a
14bd: e4 28     mov   a,$28
14bf: d6 02 02  mov   $0202+y,a
14c2: e4 29     mov   a,$29
14c4: d6 03 02  mov   $0203+y,a
14c7: f5 a0 03  mov   a,$03a0+x
14ca: d6 04 02  mov   $0204+y,a
14cd: e4 3b     mov   a,$3b
14cf: d6 05 02  mov   $0205+y,a
14d2: e4 3c     mov   a,$3c
14d4: d6 06 02  mov   $0206+y,a
14d7: d6 07 02  mov   $0207+y,a
14da: e4 3e     mov   a,$3e
14dc: 04 38     or    a,$38
14de: c4 3e     mov   $3e,a
14e0: f4 a0     mov   a,$a0+x
14e2: 28 01     and   a,#$01
14e4: f0 06     beq   $14ec
14e6: e4 4a     mov   a,$4a
14e8: 04 38     or    a,$38
14ea: c4 4a     mov   $4a,a
14ec: f5 f0 01  mov   a,$01f0+x
14ef: d6 08 02  mov   $0208+y,a
14f2: f4 a0     mov   a,$a0+x
14f4: 28 02     and   a,#$02
14f6: f0 06     beq   $14fe
14f8: e4 48     mov   a,$48
14fa: 04 38     or    a,$38
14fc: c4 48     mov   $48,a
14fe: e4 3a     mov   a,$3a
1500: 28 20     and   a,#$20
1502: f0 07     beq   $150b
1504: e4 40     mov   a,$40
1506: 04 38     or    a,$38
1508: c4 40     mov   $40,a
150a: 6f        ret
150b: e4 3a     mov   a,$3a
150d: 28 04     and   a,#$04
150f: f0 06     beq   $1517
1511: e4 42     mov   a,$42
1513: 04 38     or    a,$38
1515: c4 42     mov   $42,a
1517: 6f        ret
;; ref:$2a
1518: db $00,$03,$04,$05,$06,$07,$09,$0a,$0c,$0d,$0f,$12,$14,$17,$1a,$1c
1528: db $1f,$24,$28,$2d,$31,$36,$3a,$3f,$47,$4f,$57,$5f,$67,$6f,$77,$7f
;; ref:$0370+x * #$10, $0440+x * #$10
1538: db $01,$02,$04,$08,$10,$20,$40,$80
;
1540: 8f 00 3a  mov   $3a,#$00
1543: c4 38     mov   $38,a
1545: 1c        asl   a
1546: fd        mov   y,a
1547: f7 50     mov   a,($50)+y
1549: c4 36     mov   $36,a
154b: fc        inc   y
154c: f7 50     mov   a,($50)+y
154e: c4 37     mov   $37,a
1550: 8d 00     mov   y,#$00
1552: f7 36     mov   a,($36)+y
1554: d0 1f     bne   $1575
1556: 8d 02     mov   y,#$02
1558: f7 36     mov   a,($36)+y
155a: 5d        mov   x,a
155b: f5 f0 01  mov   a,$01f0+x
155e: 64 38     cmp   a,$38
1560: d0 0f     bne   $1571
1562: f5 10 03  mov   a,$0310+x
1565: 68 ff     cmp   a,#$ff
1567: d0 08     bne   $1571
1569: f4 80     mov   a,$80+x
156b: f0 04     beq   $1571
156d: e8 01     mov   a,#$01
156f: d4 80     mov   $80+x,a
1571: 8d 01     mov   y,#$01
1573: f7 36     mov   a,($36)+y
1575: fc        inc   y
1576: c4 39     mov   $39,a
1578: f7 36     mov   a,($36)+y
157a: fc        inc   y
157b: 5d        mov   x,a
157c: f7 36     mov   a,($36)+y
157e: d0 07     bne   $1587
1580: d4 80     mov   $80+x,a
1582: fc        inc   y
1583: 5f 4c 16  jmp   $164c
1586: 6f        ret
1587: f4 80     mov   a,$80+x
1589: 28 40     and   a,#$40
158b: d0 f9     bne   $1586
158d: d5 00 04  mov   $0400+x,a         ; zero duration counter
1590: d5 c0 01  mov   $01c0+x,a
1593: d5 20 04  mov   $0420+x,a
1596: d5 30 04  mov   $0430+x,a
1599: d5 40 05  mov   $0540+x,a
159c: d5 50 01  mov   $0150+x,a
159f: d5 60 01  mov   $0160+x,a
15a2: d5 10 03  mov   $0310+x,a
15a5: d4 90     mov   $90+x,a
15a7: d4 a0     mov   $a0+x,a
15a9: d4 b0     mov   $b0+x,a
15ab: e4 38     mov   a,$38
15ad: 75 f0 01  cmp   a,$01f0+x
15b0: d0 0a     bne   $15bc
15b2: f4 80     mov   a,$80+x
15b4: f0 09     beq   $15bf
15b6: e8 20     mov   a,#$20
15b8: d4 a0     mov   $a0+x,a
15ba: e4 38     mov   a,$38
15bc: d5 f0 01  mov   $01f0+x,a
15bf: f7 36     mov   a,($36)+y
15c1: d4 80     mov   $80+x,a
15c3: fc        inc   y
15c4: f7 36     mov   a,($36)+y
15c6: d5 20 03  mov   $0320+x,a
15c9: fc        inc   y
15ca: f7 36     mov   a,($36)+y
15cc: d5 30 03  mov   $0330+x,a
15cf: fc        inc   y
15d0: f7 36     mov   a,($36)+y
15d2: d5 40 03  mov   $0340+x,a
15d5: fc        inc   y
15d6: f7 36     mov   a,($36)+y
15d8: 60        clrc
15d9: 84 3d     adc   a,$3d
15db: d5 50 03  mov   $0350+x,a
15de: fc        inc   y
15df: f7 36     mov   a,($36)+y
15e1: d5 60 03  mov   $0360+x,a
15e4: fc        inc   y
15e5: f7 36     mov   a,($36)+y
15e7: d5 70 03  mov   $0370+x,a
15ea: bc        inc   a
15eb: 28 07     and   a,#$07
15ed: d5 40 04  mov   $0440+x,a
15f0: fc        inc   y
15f1: f7 36     mov   a,($36)+y
15f3: d5 80 03  mov   $0380+x,a
15f6: fc        inc   y
15f7: f7 36     mov   a,($36)+y
15f9: d5 90 03  mov   $0390+x,a
15fc: fc        inc   y
15fd: f7 36     mov   a,($36)+y
15ff: d5 a0 03  mov   $03a0+x,a
1602: fc        inc   y
1603: f7 36     mov   a,($36)+y
1605: d5 b0 03  mov   $03b0+x,a
1608: fc        inc   y
1609: e4 01     mov   a,$01
160b: 28 04     and   a,#$04
160d: f0 02     beq   $1611
160f: f7 36     mov   a,($36)+y
1611: d5 c0 03  mov   $03c0+x,a
1614: fc        inc   y
1615: fc        inc   y
1616: f5 a0 03  mov   a,$03a0+x
1619: 3f 72 0d  call  $0d72
161c: e8 01     mov   a,#$01
161e: d5 10 04  mov   $0410+x,a         ; set duration to #$01
1621: e8 ff     mov   a,#$ff
1623: d5 d0 03  mov   $03d0+x,a
1626: e8 40     mov   a,#$40
1628: d5 50 04  mov   $0450+x,a
162b: e4 3a     mov   a,$3a
162d: f0 1d     beq   $164c
162f: 6d        push  y
1630: f5 20 03  mov   a,$0320+x
1633: fd        mov   y,a
1634: e4 32     mov   a,$32
1636: bc        inc   a
1637: 1c        asl   a
1638: 1c        asl   a
1639: cf        mul   ya
163a: 1c        asl   a
163b: dd        mov   a,y
163c: 3c        rol   a
163d: d5 20 03  mov   $0320+x,a
1640: ee        pop   y
1641: e4 33     mov   a,$33
1643: 95 50 03  adc   a,$0350+x
1646: 80        setc
1647: a4 3d     sbc   a,$3d
1649: d5 50 03  mov   $0350+x,a
164c: 8b 39     dec   $39
164e: f0 03     beq   $1653
1650: 5f 78 15  jmp   $1578
1653: 6f        ret
