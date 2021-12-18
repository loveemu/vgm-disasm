; Super Nazo Puyo SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Super Nazo Puyo (1995)

0550: 3f ca 08  call  $08ca
0553: 3f 86 08  call  $0886
0556: 3f bc 11  call  $11bc
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
05b8: 3f 02 13  call  $1302
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
0638: 5f ca 08  jmp   $08ca
; CPU cmd F2
063b: 5f 72 09  jmp   $0972
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
0654: 3f 02 13  call  $1302
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
068c: 5f 02 13  jmp   $1302
; CPU cmd F7
068f: e4 01     mov   a,$01
0691: 28 fd     and   a,#$fd
0693: c4 01     mov   $01,a
0695: e8 00     mov   a,#$00
0697: 5f 02 13  jmp   $1302
; CPU cmd FC
069a: f6 18 00  mov   a,$0018+y
069d: c4 32     mov   $32,a
069f: f6 20 00  mov   a,$0020+y
06a2: c4 33     mov   $33,a
06a4: 8f 01 3a  mov   $3a,#$01
06a7: f6 08 00  mov   a,$0008+y
06aa: 5f 05 13  jmp   $1305
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
06d4: c4 f3     mov   $f3,a
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
06f1: 5f 36 07  jmp   $0736
; CPU cmd F0
06f4: ba f6     movw  ya,$f6
06f6: da 34     movw  $34,ya
06f8: f8 ea     mov   x,$ea
06fa: d8 f4     mov   $f4,x
06fc: 3e f4     cmp   x,$f4
06fe: d0 fc     bne   $06fc
0700: 3d        inc   x
0701: eb f6     mov   y,$f6
0703: d0 18     bne   $071d
0705: d8 f4     mov   $f4,x
0707: 3e f4     cmp   x,$f4
0709: d0 fc     bne   $0707
070b: 3d        inc   x
070c: e4 f6     mov   a,$f6
070e: d7 34     mov   ($34)+y,a
0710: fc        inc   y
0711: e4 f7     mov   a,$f7
0713: d7 34     mov   ($34)+y,a
0715: fc        inc   y
0716: d0 ed     bne   $0705
0718: d8 ea     mov   $ea,x
071a: 5f 5d 05  jmp   $055d
071d: cb 38     mov   $38,y
071f: 8d 00     mov   y,#$00
0721: d8 f4     mov   $f4,x
0723: 3e f4     cmp   x,$f4
0725: d0 fc     bne   $0723
0727: 3d        inc   x
0728: e4 f6     mov   a,$f6
072a: d7 34     mov   ($34)+y,a
072c: fc        inc   y
072d: 7e 38     cmp   y,$38
072f: d0 f0     bne   $0721
0731: d8 ea     mov   $ea,x
0733: 5f 5d 05  jmp   $055d
;
0736: 3f ab 05  call  $05ab
0739: 8f 5c f2  mov   $f2,#$5c
073c: 8f 00 f3  mov   $f3,#$00          ; key off all voices
073f: 3f 86 08  call  $0886
0742: 3f bc 11  call  $11bc
0745: e4 01     mov   a,$01
0747: 28 02     and   a,#$02
0749: d0 0a     bne   $0755
074b: e4 8f     mov   a,$8f
074d: d0 06     bne   $0755
074f: cd 0e     mov   x,#$0e
0751: d8 2c     mov   $2c,x
0753: 2f 05     bra   $075a
0755: cd 0f     mov   x,#$0f
0757: 8f 8f 2c  mov   $2c,#$8f
075a: 8f 00 3a  mov   $3a,#$00
075d: d8 2b     mov   $2b,x
075f: f4 80     mov   a,$80+x
0761: d0 03     bne   $0766
0763: 5f 2b 08  jmp   $082b
0766: f5 60 03  mov   a,$0360+x         ; tempo value
0769: f0 09     beq   $0774             ; #$00 means no wait (16ms/tick)
076b: 60        clrc
076c: 95 d0 03  adc   a,$03d0+x
076f: d5 d0 03  mov   $03d0+x,a         ; add tempo value
0772: 90 50     bcc   $07c4             ; jump if not tick
0774: f4 80     mov   a,$80+x
0776: 28 10     and   a,#$10
0778: d0 3b     bne   $07b5
077a: f4 90     mov   a,$90+x
077c: 28 04     and   a,#$04
077e: f0 35     beq   $07b5
0780: f5 c0 01  mov   a,$01c0+x
0783: f0 30     beq   $07b5
0785: 10 0f     bpl   $0796
0787: 28 7f     and   a,#$7f
0789: 60        clrc
078a: 95 00 04  adc   a,$0400+x
078d: b0 0e     bcs   $079d
078f: 75 10 04  cmp   a,$0410+x
0792: 90 21     bcc   $07b5
0794: b0 07     bcs   $079d
0796: 75 00 04  cmp   a,$0400+x
0799: f0 02     beq   $079d
079b: b0 18     bcs   $07b5
079d: f4 90     mov   a,$90+x
079f: 28 fb     and   a,#$fb
07a1: d4 90     mov   $90+x,a
07a3: f4 80     mov   a,$80+x
07a5: 28 04     and   a,#$04
07a7: d0 0c     bne   $07b5
07a9: e4 3a     mov   a,$3a
07ab: 08 04     or    a,#$04
07ad: c4 3a     mov   $3a,a
07af: f4 a0     mov   a,$a0+x
07b1: 08 10     or    a,#$10
07b3: d4 a0     mov   $a0+x,a
07b5: f5 00 04  mov   a,$0400+x
07b8: bc        inc   a
07b9: d5 00 04  mov   $0400+x,a         ; inc duration counter
07bc: 75 10 04  cmp   a,$0410+x
07bf: d0 03     bne   $07c4             ; wait for duration
07c1: 3f ad 0c  call  $0cad             ; do vcmds
07c4: 3f b5 0e  call  $0eb5
07c7: 3f fb 0e  call  $0efb
07ca: f4 90     mov   a,$90+x
07cc: 10 03     bpl   $07d1
07ce: 3f 3f 0f  call  $0f3f
07d1: f4 a0     mov   a,$a0+x
07d3: 28 08     and   a,#$08
07d5: f0 03     beq   $07da
07d7: 3f 88 0f  call  $0f88
07da: 3f 23 10  call  $1023
07dd: 3f 94 10  call  $1094
07e0: f4 90     mov   a,$90+x
07e2: 28 01     and   a,#$01
07e4: f0 03     beq   $07e9
07e6: 3f 38 11  call  $1138
07e9: 3f cf 11  call  $11cf
07ec: f4 90     mov   a,$90+x
07ee: 28 20     and   a,#$20
07f0: f0 33     beq   $0825
07f2: f5 a0 01  mov   a,$01a0+x
07f5: 60        clrc
07f6: 95 b0 01  adc   a,$01b0+x
07f9: d5 b0 01  mov   $01b0+x,a
07fc: 90 27     bcc   $0825
07fe: f5 20 03  mov   a,$0320+x
0801: 75 90 01  cmp   a,$0190+x
0804: d0 08     bne   $080e
0806: f4 90     mov   a,$90+x
0808: 08 02     or    a,#$02
080a: d4 90     mov   $90+x,a
080c: 2f 17     bra   $0825
080e: f4 90     mov   a,$90+x
0810: 28 fd     and   a,#$fd
0812: d4 90     mov   $90+x,a
0814: 28 10     and   a,#$10
0816: d0 06     bne   $081e
0818: f5 20 03  mov   a,$0320+x
081b: bc        inc   a
081c: 2f 04     bra   $0822
081e: f5 20 03  mov   a,$0320+x
0821: 9c        dec   a
0822: d5 20 03  mov   $0320+x,a
0825: f4 80     mov   a,$80+x
0827: 28 20     and   a,#$20
0829: d0 08     bne   $0833
082b: 1d        dec   x
082c: 8b 2c     dec   $2c
082e: 30 03     bmi   $0833
0830: 5f 5a 07  jmp   $075a
0833: 1d        dec   x
0834: 30 09     bmi   $083f
0836: f4 a0     mov   a,$a0+x
0838: 08 40     or    a,#$40
083a: d4 a0     mov   $a0+x,a
083c: 1d        dec   x
083d: 10 f7     bpl   $0836
083f: e4 eb     mov   a,$eb
0841: f0 03     beq   $0846
0843: 3f ab 05  call  $05ab
0846: e4 01     mov   a,$01
0848: 28 20     and   a,#$20
084a: f0 2a     beq   $0876
084c: e4 70     mov   a,$70
084e: 60        clrc
084f: 84 71     adc   a,$71
0851: c4 71     mov   $71,a
0853: 90 21     bcc   $0876
0855: e4 01     mov   a,$01
0857: 28 10     and   a,#$10
0859: d0 12     bne   $086d
085b: e4 72     mov   a,$72
085d: 64 73     cmp   a,$73
085f: f0 07     beq   $0868
0861: bc        inc   a
0862: c4 72     mov   $72,a
0864: 64 73     cmp   a,$73
0866: d0 0e     bne   $0876
0868: 3f 7d 09  call  $097d
086b: 2f 09     bra   $0876
086d: e4 72     mov   a,$72
086f: 64 73     cmp   a,$73
0871: f0 03     beq   $0876
0873: 9c        dec   a
0874: c4 72     mov   $72,a
0876: e4 3e     mov   a,$3e
0878: 48 ff     eor   a,#$ff
087a: 04 42     or    a,$42
087c: 04 40     or    a,$40
087e: 8f 5c f2  mov   $f2,#$5c
0881: c4 f3     mov   $f3,a             ;; DSP reg KOF
0883: 5f 59 05  jmp   $0559
;
0886: 8d 00     mov   y,#$00
0888: 4b 3e     lsr   $3e
088a: b0 0e     bcs   $089a
088c: cb f2     mov   $f2,y
088e: 8f 00 f3  mov   $f3,#$00          ; zero voice vol L
0891: fc        inc   y
0892: cb f2     mov   $f2,y
0894: 8f 00 f3  mov   $f3,#$00          ; zero voice vol R
0897: dc        dec   y
0898: 2f 0f     bra   $08a9
089a: 6d        push  y
089b: cd 08     mov   x,#$08
089d: cb f2     mov   $f2,y
089f: f6 00 02  mov   a,$0200+y
08a2: c4 f3     mov   $f3,a
08a4: fc        inc   y
08a5: 1d        dec   x
08a6: d0 f5     bne   $089d             ; copy $0200+Y to DSP voice regs 00-07
08a8: ee        pop   y
08a9: dd        mov   a,y
08aa: 60        clrc
08ab: 88 10     adc   a,#$10
08ad: fd        mov   y,a
08ae: 10 d8     bpl   $0888             ; do all voices
08b0: e4 44     mov   a,$44
08b2: 28 5f     and   a,#$5f
08b4: 08 20     or    a,#$20
08b6: 8f 6c f2  mov   $f2,#$6c
08b9: c4 f3     mov   $f3,a             ;; DSP reg FLG, disable mute, enable echo
08bb: e4 46     mov   a,$46
08bd: 8f 3d f2  mov   $f2,#$3d
08c0: c4 f3     mov   $f3,a             ;; DSP reg NON
08c2: e4 40     mov   a,$40
08c4: 8f 4c f2  mov   $f2,#$4c
08c7: c4 f3     mov   $f3,a             ;; DSP reg KON
08c9: 6f        ret
;
08ca: 8f 6c f2  mov   $f2,#$6c
08cd: 8f 60 f3  mov   $f3,#$60          ; FLG, mute all voices, disable echo
08d0: e4 01     mov   a,$01
08d2: 28 4c     and   a,#$4c
08d4: c4 01     mov   $01,a
08d6: e5 00 18  mov   a,$1800
08d9: c4 50     mov   $50,a
08db: e5 01 18  mov   a,$1801
08de: c4 51     mov   $51,a             ; set $50/1 to $1800/1
08e0: e5 02 18  mov   a,$1802
08e3: c4 52     mov   $52,a
08e5: 60        clrc
08e6: 88 11     adc   a,#$11
08e8: c4 54     mov   $54,a
08ea: e5 03 18  mov   a,$1803
08ed: c4 53     mov   $53,a             ; set $52/3 to $1802/3 (duration table address)
08ef: 88 00     adc   a,#$00
08f1: c4 55     mov   $55,a             ; set $54/5 to $1802/3+#$0011
08f3: e5 04 18  mov   a,$1804
08f6: c4 56     mov   $56,a
08f8: e5 05 18  mov   a,$1805
08fb: c4 57     mov   $57,a             ; set $56/7 to $1804/5
08fd: e5 06 18  mov   a,$1806
0900: c4 58     mov   $58,a
0902: e5 07 18  mov   a,$1807
0905: c4 59     mov   $59,a             ; set $58/9 to $1806/7
0907: e5 08 18  mov   a,$1808
090a: c4 5a     mov   $5a,a
090c: e5 09 18  mov   a,$1809
090f: c4 5b     mov   $5b,a             ; set $5A/B to $1808/9
0911: e5 0a 18  mov   a,$180a
0914: c4 5c     mov   $5c,a
0916: e5 0b 18  mov   a,$180b
0919: c4 5d     mov   $5d,a             ; set $5C/D to $180A/B
091b: e5 0c 18  mov   a,$180c
091e: c4 5e     mov   $5e,a
0920: e5 0d 18  mov   a,$180d
0923: c4 5f     mov   $5f,a             ; set $5E/F to $180C/D
0925: 8f 5d f2  mov   $f2,#$5d
0928: e5 0e 18  mov   a,$180e
092b: c4 f3     mov   $f3,a             ; set sample dir from $180E
092d: e5 0f 18  mov   a,$180f
0930: c4 3d     mov   $3d,a             ; set $3D to $180F
0932: e5 12 18  mov   a,$1812
0935: c4 62     mov   $62,a
0937: e5 13 18  mov   a,$1813
093a: c4 63     mov   $63,a             ; set $62/3 to $1812/3
093c: e5 14 18  mov   a,$1814
093f: c4 64     mov   $64,a
0941: e5 15 18  mov   a,$1815
0944: c4 65     mov   $65,a             ; set $64/5 to $1814/5
0946: e5 16 18  mov   a,$1816
0949: c4 66     mov   $66,a
094b: e5 17 18  mov   a,$1817
094e: c4 67     mov   $67,a             ; set $66/7 to $1816/7
0950: 8d 00     mov   y,#$00
0952: e8 00     mov   a,#$00
0954: d6 00 02  mov   $0200+y,a         ; zero voice vol L shadow
0957: d6 01 02  mov   $0201+y,a         ; zero voice vol R shadow
095a: d6 02 02  mov   $0202+y,a
095d: d6 04 02  mov   $0204+y,a         ; zero source number
0960: d6 05 02  mov   $0205+y,a
0963: d6 07 02  mov   $0207+y,a         ; zero envelope
0966: e8 10     mov   a,#$10
0968: d6 03 02  mov   $0203+y,a         ; clear pitch shadow (#$1000)
096b: dd        mov   a,y
096c: 60        clrc
096d: 88 10     adc   a,#$10
096f: fd        mov   y,a
0970: 10 e0     bpl   $0952
0972: 4d        push  x
0973: cd 0f     mov   x,#$0f
0975: e8 00     mov   a,#$00
0977: d4 80     mov   $80+x,a
0979: 1d        dec   x
097a: 10 f9     bpl   $0975
097c: ce        pop   x
;
097d: e4 01     mov   a,$01
097f: 28 df     and   a,#$df
0981: c4 01     mov   $01,a
0983: e8 1f     mov   a,#$1f
0985: c4 72     mov   $72,a
0987: 4d        push  x
0988: cd 0d     mov   x,#$0d
098a: f4 90     mov   a,$90+x
098c: 28 f7     and   a,#$f7
098e: d4 90     mov   $90+x,a
0990: 1d        dec   x
0991: 10 f7     bpl   $098a
0993: ce        pop   x
0994: 6f        ret
; vcmd dispatch table
0995: dw $09f9  ; 80 - goto
0997: dw $0a04  ; 81 - loop end
0999: dw $0a50  ; 82 - halt
099b: dw $0a5b  ; 83 - set pitch envelope id
099d: dw $0a89  ; 84
099f: dw $0aa1  ; 85
09a1: dw $0a4b  ; 86
09a3: dw $0a85  ; 87 - set volume
09a5: dw $0a5f  ; 88 - set software volume envelope
09a7: dw $0a63  ; 89 - transpose (relative)
09a9: dw $0a6e  ; 8a - increase/decrease volume
09ab: dw $0b41  ; 8b
09ad: dw $0b80  ; 8c - nop
09af: dw $0a40  ; 8d - loop begin
09b1: dw $0b33  ; 8e
09b3: dw $0b37  ; 8f
09b5: dw $0a6b  ; 90
09b7: dw $0ab9  ; 91
09b9: dw $0abe  ; 92
09bb: dw $0ad1  ; 93
09bd: dw $0b4d  ; 94
09bf: dw $0afe  ; 95
09c1: dw $0b2f  ; 96 - set tempo
09c3: dw $0bce  ; 97 - tuning
09c5: dw $0b92  ; 98
09c7: dw $0b70  ; 99
09c9: dw $0bf0  ; 9a
09ca: dw $0c03  ; 9b
09cc: dw $0b13  ; 9c
09cf: dw $0b96  ; 9d
09d1: dw $0b0b  ; 9e
09d3: dw $0bca  ; 9f - set ADSR
09d5: dw $0b9a  ; a0 - set sample
09d7: dw $0b82  ; a1 - slur on
09d9: dw $0b8a  ; a2 - slur off
09db: dw $0c10  ; a3
09dd: dw $0a38  ; a4
09df: dw $0a2c  ; a5
09e1: dw $0c58  ; a6
09e3: dw $0c58  ; a7
09e5: dw $0c5a  ; a8
09e7: dw $0c5a  ; a9
09e9: dw $0c5a  ; aa
09eb: dw $0c4b  ; ab - set panpot
09ed: dw $0b3d  ; ac
09ef: dw $0a18  ; ad - conditional loop
09ed: dw $0c5a  ; ae
09f3: dw $0c62  ; af
09f5: dw $0c5a  ; b0
09f7: dw $0c6a  ; b1
                ; b2-bf - crash
; vcmd 80 - goto
09f9: 5d        mov   x,a
09fa: fc        inc   y
09fb: f7 34     mov   a,($34)+y
09fd: c4 35     mov   $35,a
09ff: d8 34     mov   $34,x             ; set $34/5 to arg1/2
0a01: 8d ff     mov   y,#$ff            ; clear reading index
0a03: 6f        ret
; vcmd 81 - jump if (--counter != 0)
0a04: 60        clrc
0a05: 84 2b     adc   a,$2b
0a07: 5d        mov   x,a
0a08: fc        inc   y
0a09: f5 00 03  mov   a,$0300+x
0a0c: 9c        dec   a
0a0d: d5 00 03  mov   $0300+x,a         ; dec loop counter ($0300+X+arg1)
0a10: f0 04     beq   $0a16
0a12: f7 34     mov   a,($34)+y
0a14: 2f e3     bra   $09f9             ; if (counter != 0) goto arg2/3
0a16: fc        inc   y
0a17: 6f        ret
; vcmd AD - jump if (--counter == 0)
0a18: 60        clrc
0a19: 84 2b     adc   a,$2b
0a1b: 5d        mov   x,a
0a1c: fc        inc   y
0a1d: f5 00 03  mov   a,$0300+x
0a20: 9c        dec   a
0a21: d5 00 03  mov   $0300+x,a         ; dec loop counter ($0300+X+arg1)
0a24: d0 04     bne   $0a2a
0a26: f7 34     mov   a,($34)+y
0a28: 2f cf     bra   $09f9             ; if (counter == 0) goto arg2/3
0a2a: fc        inc   y
0a2b: 6f        ret
; vcmd A5
0a2c: fc        inc   y
0a2d: 75 70 03  cmp   a,$0370+x
0a30: f0 02     beq   $0a34
0a32: fc        inc   y
0a33: 6f        ret
0a34: f7 34     mov   a,($34)+y
0a36: 2f c1     bra   $09f9
; vcmd A4
0a38: 75 70 03  cmp   a,$0370+x
0a3b: f0 02     beq   $0a3f
0a3d: fc        inc   y
0a3e: fc        inc   y
0a3f: 6f        ret
; vcmd 8D - loop begin
0a40: 60        clrc
0a41: 84 2b     adc   a,$2b
0a43: 5d        mov   x,a
0a44: fc        inc   y
0a45: f7 34     mov   a,($34)+y
0a47: d5 00 03  mov   $0300+x,a         ; set loop counter ($0300+X+arg1) to arg2
0a4a: 6f        ret
; vcmd 86
0a4b: f5 f0 01  mov   a,$01f0+x
0a4e: c4 00     mov   $00,a
; vcmd 82 - halt
0a50: e8 00     mov   a,#$00
0a52: d4 80     mov   $80+x,a
0a54: ae        pop   a
0a55: ae        pop   a
0a56: ae        pop   a
0a57: ae        pop   a
0a58: 5f 25 08  jmp   $0825
; vcmd 83 - set pitch envelope id
0a5b: d5 40 03  mov   $0340+x,a
0a5e: 6f        ret
; vcmd 88 - set software volume envelope
0a5f: d5 30 03  mov   $0330+x,a
0a62: 6f        ret
; vcmd 89 - transpose (relative)
0a63: 60        clrc
0a64: 95 50 03  adc   a,$0350+x
0a67: d5 50 03  mov   $0350+x,a
0a6a: 6f        ret
; vcmd 90
0a6b: d4 80     mov   $80+x,a
0a6d: 6f        ret
; vcmd 8A - increase/decrease volume
0a6e: 60        clrc
0a6f: 30 0d     bmi   $0a7e
0a71: 95 20 03  adc   a,$0320+x
0a74: 68 1f     cmp   a,#$1f
0a76: 90 02     bcc   $0a7a
0a78: e8 1f     mov   a,#$1f
0a7a: d5 20 03  mov   $0320+x,a
0a7d: 6f        ret
0a7e: 95 20 03  adc   a,$0320+x
0a81: b0 f7     bcs   $0a7a
0a83: e8 00     mov   a,#$00
; vcmd 87 - set volume
0a85: d5 20 03  mov   $0320+x,a
0a88: 6f        ret
; vcmd 84
0a89: f0 0f     beq   $0a9a
0a8b: d5 90 04  mov   $0490+x,a
0a8e: e8 00     mov   a,#$00
0a90: d5 40 05  mov   $0540+x,a
0a93: f4 a0     mov   a,$a0+x
0a95: 08 08     or    a,#$08
0a97: d4 a0     mov   $a0+x,a
0a99: 6f        ret
0a9a: f4 a0     mov   a,$a0+x
0a9c: 28 f7     and   a,#$f7
0a9e: d4 a0     mov   $a0+x,a
0aa0: 6f        ret
; vcmd 85
0aa1: fc        inc   y
0aa2: f8 eb     mov   x,$eb
0aa4: c8 08     cmp   x,#$08
0aa6: f0 0f     beq   $0ab7
0aa8: d4 10     mov   $10+x,a
0aaa: f7 34     mov   a,($34)+y
0aac: d4 18     mov   $18+x,a
0aae: fc        inc   y
0aaf: f7 34     mov   a,($34)+y
0ab1: d4 20     mov   $20+x,a
0ab3: 3d        inc   x
0ab4: d8 eb     mov   $eb,x
0ab6: 6f        ret
0ab7: fc        inc   y
0ab8: 6f        ret
; vcmd 91
0ab9: 04 00     or    a,$00
0abb: c4 00     mov   $00,a
0abd: 6f        ret
; vcmd 92
0abe: 28 03     and   a,#$03
0ac0: c4 38     mov   $38,a
0ac2: e4 01     mov   a,$01
0ac4: 28 04     and   a,#$04
0ac6: f0 08     beq   $0ad0
0ac8: f4 b0     mov   a,$b0+x
0aca: 28 fc     and   a,#$fc
0acc: 04 38     or    a,$38
0ace: d4 b0     mov   $b0+x,a
0ad0: 6f        ret
; vcmd 93
0ad1: c4 36     mov   $36,a
0ad3: 28 1f     and   a,#$1f
0ad5: d5 90 01  mov   $0190+x,a
0ad8: f4 90     mov   a,$90+x
0ada: 28 cd     and   a,#$cd
0adc: 08 20     or    a,#$20
0ade: cb 37     mov   $37,y
0ae0: eb 36     mov   y,$36
0ae2: 10 02     bpl   $0ae6
0ae4: 08 10     or    a,#$10
0ae6: d4 90     mov   $90+x,a
0ae8: e8 00     mov   a,#$00
0aea: d5 b0 01  mov   $01b0+x,a
0aed: eb 37     mov   y,$37
0aef: fc        inc   y
0af0: f7 34     mov   a,($34)+y
0af2: d5 a0 01  mov   $01a0+x,a
0af5: d0 06     bne   $0afd
0af7: f4 90     mov   a,$90+x
0af9: 28 df     and   a,#$df
0afb: d4 90     mov   $90+x,a
0afd: 6f        ret
; vcmd 95
0afe: f4 90     mov   a,$90+x
0b00: 28 02     and   a,#$02
0b02: d0 05     bne   $0b09
0b04: f7 34     mov   a,($34)+y
0b06: 5f f9 09  jmp   $09f9
0b09: fc        inc   y
0b0a: 6f        ret
; vcmd 9E
0b0b: f4 a0     mov   a,$a0+x
0b0d: 28 20     and   a,#$20
0b0f: d0 f3     bne   $0b04
0b11: fc        inc   y
0b12: 6f        ret
; vcmd 9C
0b13: b5 00 03  sbc   a,$0300+x
0b16: 2d        push  a
0b17: fc        inc   y
0b18: f7 34     mov   a,($34)+y
0b1a: c4 36     mov   $36,a
0b1c: fc        inc   y
0b1d: f7 34     mov   a,($34)+y
0b1f: c4 37     mov   $37,a
0b21: ae        pop   a
0b22: 6d        push  y
0b23: fd        mov   y,a
0b24: f7 36     mov   a,($36)+y
0b26: ee        pop   y
0b27: 60        clrc
0b28: 95 50 03  adc   a,$0350+x
0b2b: d5 50 03  mov   $0350+x,a
0b2e: 6f        ret
; vcmd 96 - set tempo
0b2f: d5 60 03  mov   $0360+x,a
0b32: 6f        ret
; vcmd 8E
0b33: d5 50 01  mov   $0150+x,a
0b36: 6f        ret
; vcmd 8F
0b37: 60        clrc
0b38: 95 60 01  adc   a,$0160+x
0b3b: 28 1f     and   a,#$1f
; vcmd AC
0b3d: d5 60 01  mov   $0160+x,a
0b40: 6f        ret
; vcmd 8B
0b41: 30 03     bmi   $0b46
0b43: d5 40 04  mov   $0440+x,a
0b46: fc        inc   y
0b47: f7 34     mov   a,($34)+y
0b49: d5 50 04  mov   $0450+x,a
0b4c: 6f        ret
; vcmd 94
0b4d: 30 0e     bmi   $0b5d
0b4f: f0 18     beq   $0b69
0b51: d5 b0 04  mov   $04b0+x,a
0b54: f4 90     mov   a,$90+x
0b56: 28 bf     and   a,#$bf
0b58: 08 80     or    a,#$80
0b5a: d4 90     mov   $90+x,a
0b5c: 6f        ret
0b5d: 28 7f     and   a,#$7f
0b5f: d5 b0 04  mov   $04b0+x,a
0b62: f4 90     mov   a,$90+x
0b64: 08 c0     or    a,#$c0
0b66: d4 90     mov   $90+x,a
0b68: 6f        ret
0b69: f4 90     mov   a,$90+x
0b6b: 28 7f     and   a,#$7f
0b6d: d4 90     mov   $90+x,a
0b6f: 6f        ret
; vcmd 99
0b70: f4 80     mov   a,$80+x
0b72: 48 10     eor   a,#$10
0b74: d4 80     mov   $80+x,a
0b76: 28 10     and   a,#$10
0b78: f0 06     beq   $0b80
0b7a: e4 3a     mov   a,$3a
0b7c: 08 08     or    a,#$08
0b7e: c4 3a     mov   $3a,a
; vcmd 8C - nop
0b80: dc        dec   y
0b81: 6f        ret
; vcmd A1 - slur on
0b82: f4 80     mov   a,$80+x
0b84: 08 10     or    a,#$10
0b86: d4 80     mov   $80+x,a
0b88: 2f f0     bra   $0b7a
; vcmd A2 - slur off
0b8a: f4 80     mov   a,$80+x
0b8c: 28 ef     and   a,#$ef
0b8e: d4 80     mov   $80+x,a
0b90: dc        dec   y
0b91: 6f        ret
; vcmd 98
0b92: d5 70 03  mov   $0370+x,a
0b95: 6f        ret
; vcmd 9D
0b96: d5 c0 01  mov   $01c0+x,a
0b99: 6f        ret
; vcmd A0 - set sample
0b9a: 3f a4 0b  call  $0ba4
0b9d: e4 3a     mov   a,$3a
0b9f: 08 10     or    a,#$10
0ba1: c4 3a     mov   $3a,a
0ba3: 6f        ret
;
0ba4: d5 a0 03  mov   $03a0+x,a
;
0ba7: 1c        asl   a
0ba8: 6d        push  y
0ba9: fd        mov   y,a
0baa: fc        inc   y
0bab: f7 62     mov   a,($62)+y
0bad: d0 0c     bne   $0bbb
0baf: e8 f3     mov   a,#$f3
0bb1: d5 70 01  mov   $0170+x,a
0bb4: e8 13     mov   a,#$13
0bb6: d5 80 01  mov   $0180+x,a
0bb9: ee        pop   y
0bba: 6f        ret
0bbb: 1c        asl   a
0bbc: fd        mov   y,a
0bbd: f7 66     mov   a,($66)+y
0bbf: d5 70 01  mov   $0170+x,a
0bc2: fc        inc   y
0bc3: f7 66     mov   a,($66)+y
0bc5: d5 80 01  mov   $0180+x,a
0bc8: ee        pop   y
0bc9: 6f        ret
; vcmd 9F - set ADSR
0bca: d5 b0 03  mov   $03b0+x,a
0bcd: 6f        ret
; vcmd 97 - tuning
0bce: c4 36     mov   $36,a
0bd0: 60        clrc
0bd1: 95 20 04  adc   a,$0420+x
0bd4: d5 20 04  mov   $0420+x,a
0bd7: fc        inc   y
0bd8: f7 34     mov   a,($34)+y
0bda: d0 0d     bne   $0be9
0bdc: e4 36     mov   a,$36
0bde: d0 07     bne   $0be7
0be0: d5 20 04  mov   $0420+x,a
0be3: d5 30 04  mov   $0430+x,a
0be6: 6f        ret
0be7: e8 00     mov   a,#$00
0be9: 95 30 04  adc   a,$0430+x
0bec: d5 30 04  mov   $0430+x,a
0bef: 6f        ret
; vcmd 9A
0bf0: dd        mov   a,y
0bf1: 80        setc
0bf2: 84 34     adc   a,$34
0bf4: d5 d0 01  mov   $01d0+x,a
0bf7: e4 35     mov   a,$35
0bf9: 88 00     adc   a,#$00
0bfb: d5 e0 01  mov   $01e0+x,a
0bfe: f7 34     mov   a,($34)+y
0c00: 5f f9 09  jmp   $09f9
; vcmd 9B
0c03: f5 d0 01  mov   a,$01d0+x
0c06: c4 34     mov   $34,a
0c08: f5 e0 01  mov   a,$01e0+x
0c0b: c4 35     mov   $35,a
0c0d: 8d 00     mov   y,#$00
0c0f: 6f        ret
; vcmd A3
0c10: f0 30     beq   $0c42
0c12: 1c        asl   a
0c13: 6d        push  y
0c14: fd        mov   y,a
0c15: f7 64     mov   a,($64)+y
0c17: d5 60 04  mov   $0460+x,a
0c1a: c4 36     mov   $36,a
0c1c: fc        inc   y
0c1d: f7 64     mov   a,($64)+y
0c1f: d5 70 04  mov   $0470+x,a
0c22: c4 37     mov   $37,a
0c24: 8d 00     mov   y,#$00
0c26: f7 36     mov   a,($36)+y
0c28: ee        pop   y
0c29: d5 c0 03  mov   $03c0+x,a
0c2c: e4 01     mov   a,$01
0c2e: 28 04     and   a,#$04
0c30: d0 04     bne   $0c36
0c32: d5 c0 03  mov   $03c0+x,a
0c35: 6f        ret
0c36: f4 90     mov   a,$90+x
0c38: 08 01     or    a,#$01
0c3a: d4 90     mov   $90+x,a
0c3c: e8 80     mov   a,#$80
0c3e: d5 80 04  mov   $0480+x,a
0c41: 6f        ret
0c42: f4 90     mov   a,$90+x
0c44: 28 fe     and   a,#$fe
0c46: d4 90     mov   $90+x,a
0c48: fc        inc   y
0c49: f7 34     mov   a,($34)+y
; vcmd AB - set panpot
0c4b: d5 c0 03  mov   $03c0+x,a
0c4e: e4 01     mov   a,$01
0c50: 28 04     and   a,#$04
0c52: d0 03     bne   $0c57
0c54: d5 c0 03  mov   $03c0+x,a
0c57: 6f        ret
; vcmds A6,A7 - nop
0c58: dc        dec   y
0c59: 6f        ret
; vcmds A8,A9,AA,AE,B0
0c5a: f4 b0     mov   a,$b0+x
0c5c: 28 fb     and   a,#$fb
0c5e: d4 b0     mov   $b0+x,a
0c60: dc        dec   y
0c61: 6f        ret
; vcmd AF
0c62: f4 b0     mov   a,$b0+x
0c64: 08 04     or    a,#$04
0c66: d4 b0     mov   $b0+x,a
0c68: dc        dec   y
0c69: 6f        ret
; vcmd B1
0c6a: f8 eb     mov   x,$eb
0c6c: c8 08     cmp   x,#$08
0c6e: f0 13     beq   $0c83
0c70: d4 08     mov   $08+x,a
0c72: e8 fc     mov   a,#$fc
0c74: d4 10     mov   $10+x,a
0c76: f5 20 03  mov   a,$0320+x
0c79: d4 18     mov   $18+x,a
0c7b: f5 50 03  mov   a,$0350+x
0c7e: d4 20     mov   $20+x,a
0c80: 3d        inc   x
0c81: d8 eb     mov   $eb,x
0c83: f8 2b     mov   x,$2b
0c85: e4 3a     mov   a,$3a
0c87: 08 40     or    a,#$40
0c89: c4 3a     mov   $3a,a
0c8b: f5 40 05  mov   a,$0540+x
0c8e: 0d        push  psw
0c8f: e8 01     mov   a,#$01
0c91: d5 d0 00  mov   $00d0+x,a
0c94: d5 40 05  mov   $0540+x,a
0c97: fc        inc   y
0c98: ae        pop   a
0c99: ae        pop   a
0c9a: 5f 9b 0d  jmp   $0d9b
; dispatch vcmd in A, read first argument
0c9d: 1c        asl   a
0c9e: 5d        mov   x,a
0c9f: f5 96 09  mov   a,$0996+x
0ca2: 2d        push  a
0ca3: f5 95 09  mov   a,$0995+x
0ca6: 2d        push  a
0ca7: f8 2b     mov   x,$2b
0ca9: fc        inc   y
0caa: f7 34     mov   a,($34)+y
0cac: 6f        ret
; do vcmds
0cad: f5 80 03  mov   a,$0380+x
0cb0: c4 34     mov   $34,a
0cb2: f5 90 03  mov   a,$0390+x
0cb5: c4 35     mov   $35,a             ; set $34/5 to reading ptr (lo/hi)
0cb7: 8d 00     mov   y,#$00            ; zero reading index
0cb9: f7 34     mov   a,($34)+y         ; read vcmd
0cbb: 30 03     bmi   $0cc0             ; vcmds 80-FF
0cbd: 5f 5b 0d  jmp   $0d5b             ; vcmds 00-7F
0cc0: 68 c0     cmp   a,#$c0
0cc2: b0 08     bcs   $0ccc
0cc4: 3f 9d 0c  call  $0c9d             ; dispatch vcmds 80-BF
0cc7: f8 2b     mov   x,$2b             ; voice number
0cc9: fc        inc   y
0cca: 2f ed     bra   $0cb9             ; do next vcmd
0ccc: 68 de     cmp   a,#$de
0cce: 90 03     bcc   $0cd3             ; vcmds C0-DD
0cd0: 5f 53 0d  jmp   $0d53             ; vcmds DE-FF
0cd3: a8 bf     sbc   a,#$bf
0cd5: 1c        asl   a
0cd6: 1c        asl   a
0cd7: 1c        asl   a
0cd8: 6d        push  y
0cd9: fd        mov   y,a
0cda: f7 54     mov   a,($54)+y
0cdc: 75 a0 03  cmp   a,$03a0+x
0cdf: f0 03     beq   $0ce4
0ce1: 3f a4 0b  call  $0ba4
0ce4: e4 3a     mov   a,$3a
0ce6: 08 10     or    a,#$10
0ce8: c4 3a     mov   $3a,a
0cea: fc        inc   y
0ceb: f7 54     mov   a,($54)+y
0ced: d5 b0 03  mov   $03b0+x,a
0cf0: fc        inc   y
0cf1: f7 54     mov   a,($54)+y
0cf3: d5 30 03  mov   $0330+x,a
0cf6: fc        inc   y
0cf7: f7 54     mov   a,($54)+y
0cf9: c4 38     mov   $38,a
0cfb: fc        inc   y
0cfc: f7 54     mov   a,($54)+y
0cfe: c4 39     mov   $39,a
0d00: 28 1f     and   a,#$1f
0d02: d5 60 01  mov   $0160+x,a
0d05: e4 39     mov   a,$39
0d07: 0d        push  psw
0d08: 3c        rol   a
0d09: 3c        rol   a
0d0a: 3c        rol   a
0d0b: 3c        rol   a
0d0c: 28 03     and   a,#$03
0d0e: c4 39     mov   $39,a
0d10: f4 80     mov   a,$80+x
0d12: 28 fc     and   a,#$fc
0d14: 04 39     or    a,$39
0d16: d4 80     mov   $80+x,a
0d18: e4 38     mov   a,$38
0d1a: 8e        pop   psw
0d1b: 30 0a     bmi   $0d27
0d1d: d5 40 03  mov   $0340+x,a
0d20: e8 00     mov   a,#$00
0d22: d5 b0 04  mov   $04b0+x,a
0d25: 2f 0a     bra   $0d31
0d27: 28 ff     and   a,#$ff
0d29: 3f 4d 0b  call  $0b4d
0d2c: e8 00     mov   a,#$00
0d2e: d5 40 03  mov   $0340+x,a
0d31: fc        inc   y
0d32: f4 b0     mov   a,$b0+x
0d34: 28 04     and   a,#$04
0d36: d0 0b     bne   $0d43
0d38: e4 01     mov   a,$01
0d3a: 28 04     and   a,#$04
0d3c: f0 02     beq   $0d40
0d3e: f7 54     mov   a,($54)+y
0d40: d5 c0 03  mov   $03c0+x,a
0d43: fc        inc   y
0d44: fc        inc   y
0d45: f7 54     mov   a,($54)+y
0d47: d0 11     bne   $0d5a
0d49: c4 39     mov   $39,a
0d4b: ee        pop   y
0d4c: fc        inc   y
0d4d: f7 34     mov   a,($34)+y         ; read vcmd
0d4f: 10 0a     bpl   $0d5b             ; vcmds 00-7F
0d51: 30 0b     bmi   $0d5e             ; vcmds 80-FF
; vcmds DE-FF - set duration
0d53: f5 40 05  mov   a,$0540+x
0d56: 0d        push  psw
0d57: 5f 67 0d  jmp   $0d67
0d5a: ee        pop   y
; vcmds 00-7F - note
0d5b: c4 39     mov   $39,a             ;; $39 <- note number
0d5d: fc        inc   y
0d5e: f5 40 05  mov   a,$0540+x
0d61: 0d        push  psw
0d62: e4 39     mov   a,$39             ;; note number?
0d64: d5 40 05  mov   $0540+x,a
0d67: f0 2f     beq   $0d98             ;; jump if ($0540+X == 0) (rest)
0d69: c4 38     mov   $38,a
0d6b: f4 a0     mov   a,$a0+x
0d6d: 28 08     and   a,#$08
0d6f: f0 25     beq   $0d96
0d71: f4 c0     mov   a,$c0+x
0d73: c4 28     mov   $28,a
0d75: f4 d0     mov   a,$d0+x
0d77: c4 29     mov   $29,a
0d79: e4 38     mov   a,$38
0d7b: 3f 52 0e  call  $0e52
0d7e: f4 c0     mov   a,$c0+x
0d80: d5 a0 04  mov   $04a0+x,a
0d83: f4 d0     mov   a,$d0+x
0d85: d5 b0 04  mov   $04b0+x,a
0d88: 8e        pop   psw
0d89: 0d        push  psw
0d8a: f0 0f     beq   $0d9b
0d8c: e4 28     mov   a,$28
0d8e: d4 c0     mov   $c0+x,a
0d90: e4 29     mov   a,$29
0d92: d4 d0     mov   $d0+x,a
0d94: 2f 05     bra   $0d9b
0d96: e4 38     mov   a,$38
0d98: 3f 52 0e  call  $0e52
0d9b: f7 34     mov   a,($34)+y         ; read vcmd
0d9d: 68 ef     cmp   a,#$ef
0d9f: 90 1c     bcc   $0dbd             ; vcmds 00-EE
0da1: a8 ef     sbc   a,#$ef
0da3: d0 05     bne   $0daa             ; vcmds F0-FF
0da5: fc        inc   y                 ; vcmd EF, inc reading ptr
0da6: f7 34     mov   a,($34)+y         ; read argument
0da8: b0 07     bcs   $0db1
0daa: cb 36     mov   $36,y
0dac: fd        mov   y,a
0dad: f7 52     mov   a,($52)+y         ; read duration from table
0daf: eb 36     mov   y,$36
0db1: fc        inc   y
0db2: d5 10 04  mov   $0410+x,a
0db5: f7 34     mov   a,($34)+y
0db7: d5 c0 01  mov   $01c0+x,a
0dba: fc        inc   y
0dbb: 2f 16     bra   $0dd3
0dbd: a8 dd     sbc   a,#$dd
0dbf: 90 12     bcc   $0dd3             ; vcmds 00-DD
0dc1: d0 05     bne   $0dc8             ; vcmds DF-EE
0dc3: fc        inc   y                 ; vcmd DE, inc reading ptr
0dc4: f7 34     mov   a,($34)+y         ; read argument
0dc6: b0 07     bcs   $0dcf             ; branch always
0dc8: cb 36     mov   $36,y
0dca: fd        mov   y,a
0dcb: f7 52     mov   a,($52)+y         ; read duration from table
0dcd: eb 36     mov   y,$36
0dcf: fc        inc   y                 ; inc reading ptr
0dd0: d5 10 04  mov   $0410+x,a         ; set duration
0dd3: e8 00     mov   a,#$00
0dd5: d5 00 04  mov   $0400+x,a         ; zero duration counter
0dd8: 8e        pop   psw
0dd9: f0 2c     beq   $0e07             ;; jump if ($0540+X == 0) (rest)
0ddb: f4 80     mov   a,$80+x
0ddd: 28 10     and   a,#$10
0ddf: f0 14     beq   $0df5
0de1: e4 3a     mov   a,$3a
0de3: 28 08     and   a,#$08
0de5: d0 0e     bne   $0df5
0de7: f4 a0     mov   a,$a0+x
0de9: 28 40     and   a,#$40
0deb: f0 42     beq   $0e2f
0ded: e4 3a     mov   a,$3a
0def: 08 20     or    a,#$20
0df1: c4 3a     mov   $3a,a
0df3: 2f 3a     bra   $0e2f
0df5: f4 80     mov   a,$80+x
0df7: 28 04     and   a,#$04
0df9: f0 0c     beq   $0e07
0dfb: e4 3a     mov   a,$3a
0dfd: 28 10     and   a,#$10
0dff: d0 06     bne   $0e07
0e01: f4 a0     mov   a,$a0+x
0e03: 28 50     and   a,#$50
0e05: f0 06     beq   $0e0d
;
0e07: e4 3a     mov   a,$3a
0e09: 08 20     or    a,#$20
0e0b: c4 3a     mov   $3a,a
0e0d: e8 01     mov   a,#$01
0e0f: d5 f0 04  mov   $04f0+x,a         ; set $04f0+X to #$01
0e12: d5 10 05  mov   $0510+x,a         ; set $0510+X to #$01
0e15: d5 30 05  mov   $0530+x,a         ; set $0530+X to #$01
0e18: d5 d0 04  mov   $04d0+x,a         ; set $04d0+X to #$01
0e1b: e8 ff     mov   a,#$ff
0e1d: d5 e0 04  mov   $04e0+x,a         ; set $04e0+X to #$ff
0e20: d5 00 05  mov   $0500+x,a         ; set $0500+X to #$ff
0e23: d5 20 05  mov   $0520+x,a         ; set $0520+X to #$ff
0e26: d5 c0 04  mov   $04c0+x,a         ; set $04c0+X to #$ff
0e29: f4 90     mov   a,$90+x
0e2b: 08 04     or    a,#$04
0e2d: d4 90     mov   $90+x,a
0e2f: dd        mov   a,y
0e30: 60        clrc
0e31: 84 34     adc   a,$34
0e33: d5 80 03  mov   $0380+x,a
0e36: e4 35     mov   a,$35
0e38: 88 00     adc   a,#$00
0e3a: d5 90 03  mov   $0390+x,a         ; set reading ptr (lo/hi) to $34/5 + Y
0e3d: e4 3a     mov   a,$3a
0e3f: 08 80     or    a,#$80
0e41: c4 3a     mov   $3a,a
0e43: e4 3a     mov   a,$3a
0e45: 28 40     and   a,#$40
0e47: c4 36     mov   $36,a
0e49: f4 a0     mov   a,$a0+x
0e4b: 28 af     and   a,#$af
0e4d: 04 36     or    a,$36
0e4f: d4 a0     mov   $a0+x,a
0e51: 6f        ret
;
0e52: d4 c0     mov   $c0+x,a
0e54: 28 ff     and   a,#$ff
0e56: d0 03     bne   $0e5b
0e58: d4 d0     mov   $d0+x,a
0e5a: 6f        ret
;
0e5b: f4 80     mov   a,$80+x
0e5d: 28 08     and   a,#$08
0e5f: f0 13     beq   $0e74
0e61: e8 01     mov   a,#$01
0e63: d4 d0     mov   $d0+x,a
0e65: f4 c0     mov   a,$c0+x
0e67: 9c        dec   a
0e68: 60        clrc
0e69: 95 50 03  adc   a,$0350+x
0e6c: d4 c0     mov   $c0+x,a
0e6e: 28 1f     and   a,#$1f
0e70: d5 60 01  mov   $0160+x,a
0e73: 6f        ret
;
0e74: f4 c0     mov   a,$c0+x
0e76: 60        clrc
0e77: 95 50 03  adc   a,$0350+x
0e7a: c4 38     mov   $38,a
0e7c: 6d        push  y
0e7d: f5 a0 03  mov   a,$03a0+x
0e80: 1c        asl   a
0e81: fd        mov   y,a
0e82: f7 62     mov   a,($62)+y
0e84: 84 38     adc   a,$38
0e86: f0 25     beq   $0ead
0e88: 68 79     cmp   a,#$79
0e8a: b0 21     bcs   $0ead
0e8c: 1c        asl   a
0e8d: fd        mov   y,a
0e8e: f5 70 01  mov   a,$0170+x
0e91: c4 36     mov   $36,a
0e93: f5 80 01  mov   a,$0180+x
0e96: c4 37     mov   $37,a
0e98: f5 20 04  mov   a,$0420+x
0e9b: 97 36     adc   a,($36)+y
0e9d: d4 c0     mov   $c0+x,a
0e9f: fc        inc   y
0ea0: f7 36     mov   a,($36)+y
0ea2: 95 30 04  adc   a,$0430+x
0ea5: 68 40     cmp   a,#$40
0ea7: b0 04     bcs   $0ead
0ea9: d4 d0     mov   $d0+x,a
0eab: ee        pop   y
0eac: 6f        ret
;
0ead: e8 00     mov   a,#$00
0eaf: d4 c0     mov   $c0+x,a
0eb1: d4 d0     mov   $d0+x,a
0eb3: ee        pop   y
0eb4: 6f        ret
; read ADSR from $5e[$03b0+x] to $3b/c
0eb5: f5 b0 03  mov   a,$03b0+x
0eb8: 1c        asl   a
0eb9: b0 0b     bcs   $0ec6
0ebb: fd        mov   y,a
0ebc: f7 5e     mov   a,($5e)+y
0ebe: c4 3b     mov   $3b,a
0ec0: fc        inc   y
0ec1: f7 5e     mov   a,($5e)+y
0ec3: c4 3c     mov   $3c,a
0ec5: 6f        ret
; reset ADSR if the index >= 0x80
0ec6: 8f 00 3b  mov   $3b,#$00
0ec9: d0 04     bne   $0ecf
0ecb: 8f 7f 3c  mov   $3c,#$7f
0ece: 6f        ret
;
0ecf: fd        mov   y,a
0ed0: f7 5c     mov   a,($5c)+y
0ed2: c4 36     mov   $36,a
0ed4: fc        inc   y
0ed5: f7 5c     mov   a,($5c)+y
0ed7: c4 37     mov   $37,a
0ed9: f5 d0 04  mov   a,$04d0+x
0edc: 9c        dec   a
0edd: d5 d0 04  mov   $04d0+x,a
0ee0: f0 06     beq   $0ee8
0ee2: f5 c0 04  mov   a,$04c0+x
0ee5: fd        mov   y,a
0ee6: 2f 0e     bra   $0ef6
0ee8: f5 c0 04  mov   a,$04c0+x
0eeb: fd        mov   y,a
0eec: 3f 02 11  call  $1102
0eef: d5 d0 04  mov   $04d0+x,a
0ef2: dd        mov   a,y
0ef3: d5 c0 04  mov   $04c0+x,a
0ef6: f7 36     mov   a,($36)+y
0ef8: c4 3c     mov   $3c,a
0efa: 6f        ret
; read software envelope params
0efb: f5 30 03  mov   a,$0330+x
0efe: d0 06     bne   $0f06
0f00: f5 20 03  mov   a,$0320+x
0f03: c4 2a     mov   $2a,a
0f05: 6f        ret
0f06: 1c        asl   a
0f07: fd        mov   y,a
0f08: f7 56     mov   a,($56)+y
0f0a: c4 36     mov   $36,a
0f0c: fc        inc   y
0f0d: f7 56     mov   a,($56)+y
0f0f: c4 37     mov   $37,a
0f11: f5 f0 04  mov   a,$04f0+x
0f14: 9c        dec   a
0f15: d5 f0 04  mov   $04f0+x,a
0f18: f0 07     beq   $0f21
0f1a: f5 e0 04  mov   a,$04e0+x
0f1d: fd        mov   y,a
0f1e: 5f 2f 0f  jmp   $0f2f
0f21: f5 e0 04  mov   a,$04e0+x
0f24: fd        mov   y,a
0f25: 3f 02 11  call  $1102
0f28: d5 f0 04  mov   $04f0+x,a
0f2b: dd        mov   a,y
0f2c: d5 e0 04  mov   $04e0+x,a
0f2f: f7 36     mov   a,($36)+y
0f31: bc        inc   a
0f32: 1c        asl   a
0f33: 1c        asl   a
0f34: fd        mov   y,a
0f35: f5 20 03  mov   a,$0320+x
0f38: cf        mul   ya
0f39: 1c        asl   a
0f3a: dd        mov   a,y
0f3b: 3c        rol   a
0f3c: c4 2a     mov   $2a,a
0f3e: 6f        ret
;
0f3f: e4 3a     mov   a,$3a
0f41: 10 0d     bpl   $0f50
0f43: f5 40 05  mov   a,$0540+x
0f46: f0 04     beq   $0f4c
0f48: 60        clrc
0f49: 95 50 03  adc   a,$0350+x
0f4c: d5 a0 04  mov   $04a0+x,a
0f4f: 6f        ret
0f50: f4 90     mov   a,$90+x
0f52: 28 40     and   a,#$40
0f54: d0 13     bne   $0f69
0f56: f5 a0 04  mov   a,$04a0+x
0f59: f0 f4     beq   $0f4f
0f5b: 80        setc
0f5c: b5 b0 04  sbc   a,$04b0+x
0f5f: 90 1d     bcc   $0f7e
0f61: f0 1b     beq   $0f7e
0f63: d5 a0 04  mov   $04a0+x,a
0f66: 5f 7a 0e  jmp   $0e7a
0f69: f5 a0 04  mov   a,$04a0+x
0f6c: f0 e1     beq   $0f4f
0f6e: 60        clrc
0f6f: 95 b0 04  adc   a,$04b0+x
0f72: b0 0a     bcs   $0f7e
0f74: 68 79     cmp   a,#$79
0f76: b0 06     bcs   $0f7e
0f78: d5 a0 04  mov   $04a0+x,a
0f7b: 5f 7a 0e  jmp   $0e7a
0f7e: e8 00     mov   a,#$00
0f80: d5 a0 04  mov   $04a0+x,a
0f83: d4 c0     mov   $c0+x,a
0f85: d4 d0     mov   $d0+x,a
0f87: 6f        ret
;
0f88: f5 40 05  mov   a,$0540+x
0f8b: f0 10     beq   $0f9d
0f8d: f4 d0     mov   a,$d0+x
0f8f: 75 b0 04  cmp   a,$04b0+x
0f92: c4 38     mov   $38,a
0f94: d0 08     bne   $0f9e
0f96: f4 c0     mov   a,$c0+x
0f98: 75 a0 04  cmp   a,$04a0+x
0f9b: d0 01     bne   $0f9e
0f9d: 6f        ret
0f9e: 0d        push  psw
0f9f: 4b 38     lsr   $38
0fa1: 7c        ror   a
0fa2: eb 38     mov   y,$38
0fa4: c4 39     mov   $39,a
0fa6: f5 90 04  mov   a,$0490+x
0fa9: c4 36     mov   $36,a
0fab: d8 37     mov   $37,x
0fad: 7e 36     cmp   y,$36
0faf: b0 0d     bcs   $0fbe
0fb1: e4 39     mov   a,$39
0fb3: f8 36     mov   x,$36
0fb5: 8f 00 36  mov   $36,#$00
0fb8: 9e        div   ya,x
0fb9: d0 22     bne   $0fdd
0fbb: bc        inc   a
0fbc: 2f 1f     bra   $0fdd
0fbe: dd        mov   a,y
0fbf: 0b 39     asl   $39
0fc1: 3c        rol   a
0fc2: 0b 39     asl   $39
0fc4: 3c        rol   a
0fc5: 0b 39     asl   $39
0fc7: 3c        rol   a
0fc8: 8d 00     mov   y,#$00
0fca: f8 36     mov   x,$36
0fcc: 9e        div   ya,x
0fcd: 8f 00 39  mov   $39,#$00
0fd0: 5c        lsr   a
0fd1: 6b 39     ror   $39
0fd3: 5c        lsr   a
0fd4: 6b 39     ror   $39
0fd6: 5c        lsr   a
0fd7: 6b 39     ror   $39
0fd9: c4 36     mov   $36,a
0fdb: e4 39     mov   a,$39
0fdd: f8 37     mov   x,$37
0fdf: 8e        pop   psw
0fe0: b0 1a     bcs   $0ffc
0fe2: 94 c0     adc   a,$c0+x
0fe4: d4 c0     mov   $c0+x,a
0fe6: e4 36     mov   a,$36
0fe8: 94 d0     adc   a,$d0+x
0fea: d4 d0     mov   $d0+x,a
0fec: 75 b0 04  cmp   a,$04b0+x
0fef: 90 31     bcc   $1022
0ff1: d0 25     bne   $1018
0ff3: f4 c0     mov   a,$c0+x
0ff5: 75 a0 04  cmp   a,$04a0+x
0ff8: 90 28     bcc   $1022
0ffa: b0 1c     bcs   $1018
0ffc: c4 37     mov   $37,a
0ffe: f4 c0     mov   a,$c0+x
1000: a4 37     sbc   a,$37
1002: d4 c0     mov   $c0+x,a
1004: f4 d0     mov   a,$d0+x
1006: a4 36     sbc   a,$36
1008: d4 d0     mov   $d0+x,a
100a: 75 b0 04  cmp   a,$04b0+x
100d: 90 09     bcc   $1018
100f: d0 11     bne   $1022
1011: f4 c0     mov   a,$c0+x
1013: 75 a0 04  cmp   a,$04a0+x
1016: b0 0a     bcs   $1022
1018: f5 a0 04  mov   a,$04a0+x
101b: d4 c0     mov   $c0+x,a
101d: f5 b0 04  mov   a,$04b0+x
1020: d4 d0     mov   $d0+x,a
1022: 6f        ret
;
1023: f4 c0     mov   a,$c0+x
1025: c4 28     mov   $28,a
1027: f4 d0     mov   a,$d0+x
1029: c4 29     mov   $29,a
102b: 04 28     or    a,$28
102d: f0 05     beq   $1034
102f: f5 40 03  mov   a,$0340+x
1032: d0 01     bne   $1035
1034: 6f        ret
; read pitch envelope
1035: 1c        asl   a
1036: fd        mov   y,a
1037: f7 58     mov   a,($58)+y
1039: c4 36     mov   $36,a
103b: fc        inc   y
103c: f7 58     mov   a,($58)+y
103e: c4 37     mov   $37,a
1040: f5 10 05  mov   a,$0510+x
1043: 9c        dec   a
1044: d5 10 05  mov   $0510+x,a
1047: f0 07     beq   $1050
1049: f5 00 05  mov   a,$0500+x
104c: fd        mov   y,a
104d: 5f 5e 10  jmp   $105e
1050: f5 00 05  mov   a,$0500+x
1053: fd        mov   y,a
1054: 3f 02 11  call  $1102
1057: d5 10 05  mov   $0510+x,a
105a: dd        mov   a,y
105b: d5 00 05  mov   $0500+x,a
105e: f7 36     mov   a,($36)+y
1060: 60        clrc
1061: 30 12     bmi   $1075
1063: 84 28     adc   a,$28
1065: c4 28     mov   $28,a
1067: e8 00     mov   a,#$00
1069: 84 29     adc   a,$29
106b: c4 29     mov   $29,a
106d: b0 14     bcs   $1083
106f: 68 40     cmp   a,#$40
1071: 90 16     bcc   $1089
1073: b0 0e     bcs   $1083
1075: 84 28     adc   a,$28
1077: c4 28     mov   $28,a
1079: e8 ff     mov   a,#$ff
107b: 84 29     adc   a,$29
107d: c4 29     mov   $29,a
107f: b0 08     bcs   $1089
1081: 90 00     bcc   $1083
1083: e8 00     mov   a,#$00
1085: c4 28     mov   $28,a
1087: c4 29     mov   $29,a
1089: e4 28     mov   a,$28
108b: d5 c0 00  mov   $00c0+x,a
108e: e4 29     mov   a,$29
1090: d5 d0 00  mov   $00d0+x,a
1093: 6f        ret
;
1094: f5 50 01  mov   a,$0150+x
1097: 30 30     bmi   $10c9
1099: 68 20     cmp   a,#$20
109b: b0 09     bcs   $10a6
109d: 95 60 01  adc   a,$0160+x
10a0: 28 1f     and   a,#$1f
10a2: d5 60 01  mov   $0160+x,a
10a5: 6f        ret
;
10a6: 68 30     cmp   a,#$30
10a8: b0 0b     bcs   $10b5
10aa: 95 60 01  adc   a,$0160+x
10ad: 28 0f     and   a,#$0f
10af: 08 10     or    a,#$10
10b1: d5 60 01  mov   $0160+x,a
10b4: 6f        ret
;
10b5: 60        clrc
10b6: c4 38     mov   $38,a
10b8: 95 60 01  adc   a,$0160+x
10bb: 28 07     and   a,#$07
10bd: c4 39     mov   $39,a
10bf: e4 38     mov   a,$38
10c1: 28 18     and   a,#$18
10c3: 04 39     or    a,$39
10c5: d5 60 01  mov   $0160+x,a
10c8: 6f        ret
;
10c9: 1c        asl   a
10ca: d0 09     bne   $10d5
10cc: f5 60 01  mov   a,$0160+x
10cf: 48 1f     eor   a,#$1f
10d1: d5 60 01  mov   $0160+x,a
10d4: 6f        ret
;
10d5: fd        mov   y,a
10d6: f7 5a     mov   a,($5a)+y
10d8: c4 36     mov   $36,a
10da: fc        inc   y
10db: f7 5a     mov   a,($5a)+y
10dd: c4 37     mov   $37,a
10df: f5 30 05  mov   a,$0530+x
10e2: 9c        dec   a
10e3: d5 30 05  mov   $0530+x,a
10e6: f0 06     beq   $10ee
10e8: f5 20 05  mov   a,$0520+x
10eb: fd        mov   y,a
10ec: 2f 0e     bra   $10fc
10ee: f5 20 05  mov   a,$0520+x
10f1: fd        mov   y,a
10f2: 3f 02 11  call  $1102
10f5: d5 30 05  mov   $0530+x,a
10f8: dd        mov   a,y
10f9: d5 20 05  mov   $0520+x,a
10fc: f7 36     mov   a,($36)+y
10fe: d5 60 01  mov   $0160+x,a
1101: 6f        ret
;
1102: fc        inc   y
1103: f7 36     mov   a,($36)+y
1105: 30 02     bmi   $1109
1107: fc        inc   y
1108: 6f        ret
1109: 68 81     cmp   a,#$81
110b: f0 06     beq   $1113
110d: b0 0c     bcs   $111b
110f: e8 00     mov   a,#$00
1111: dc        dec   y
1112: 6f        ret
;
1113: dd        mov   a,y
1114: fc        inc   y
1115: 80        setc
1116: b7 36     sbc   a,($36)+y
1118: fd        mov   y,a
1119: 2f e8     bra   $1103
111b: ad 83     cmp   y,#$83
111d: f0 06     beq   $1125
111f: b0 0e     bcs   $112f
1121: 8d 00     mov   y,#$00
1123: 2f de     bra   $1103
1125: f4 90     mov   a,$90+x
1127: 28 04     and   a,#$04
1129: f0 0a     beq   $1135
112b: e8 01     mov   a,#$01
112d: 2f e2     bra   $1111
112f: f4 90     mov   a,$90+x
1131: 28 04     and   a,#$04
1133: d0 de     bne   $1113
1135: fc        inc   y
1136: 2f cb     bra   $1103
;
1138: f5 60 04  mov   a,$0460+x
113b: c4 36     mov   $36,a
113d: f5 70 04  mov   a,$0470+x
1140: c4 37     mov   $37,a
1142: 8d 01     mov   y,#$01
1144: f7 36     mov   a,($36)+y
1146: 48 80     eor   a,#$80
1148: c4 38     mov   $38,a
114a: f5 c0 03  mov   a,$03c0+x
114d: 48 80     eor   a,#$80
114f: c4 39     mov   $39,a
1151: fc        inc   y
1152: f7 36     mov   a,($36)+y
1154: 60        clrc
1155: 95 80 04  adc   a,$0480+x
1158: d5 80 04  mov   $0480+x,a
115b: fc        inc   y
115c: f7 36     mov   a,($36)+y
115e: 30 0e     bmi   $116e
1160: 84 39     adc   a,$39
1162: b0 14     bcs   $1178
1164: 64 38     cmp   a,$38
1166: b0 10     bcs   $1178
1168: 48 80     eor   a,#$80
116a: d5 c0 03  mov   $03c0+x,a
116d: 6f        ret
116e: 84 39     adc   a,$39
1170: 90 06     bcc   $1178
1172: 64 38     cmp   a,$38
1174: 90 02     bcc   $1178
1176: d0 f0     bne   $1168
1178: fc        inc   y
1179: f7 36     mov   a,($36)+y
117b: fc        inc   y
117c: 77 36     cmp   a,($36)+y
117e: f0 13     beq   $1193
1180: d5 c0 03  mov   $03c0+x,a
1183: dc        dec   y
1184: dd        mov   a,y
1185: 60        clrc
1186: 84 36     adc   a,$36
1188: d5 60 04  mov   $0460+x,a
118b: e4 37     mov   a,$37
118d: 88 00     adc   a,#$00
118f: d5 70 04  mov   $0470+x,a
1192: 6f        ret
1193: fc        inc   y
1194: f7 36     mov   a,($36)+y
1196: c4 34     mov   $34,a
1198: fc        inc   y
1199: 17 36     or    a,($36)+y
119b: f0 11     beq   $11ae
119d: f7 36     mov   a,($36)+y
119f: c4 37     mov   $37,a
11a1: e4 34     mov   a,$34
11a3: c4 36     mov   $36,a
11a5: 8d 00     mov   y,#$00
11a7: f7 36     mov   a,($36)+y
11a9: d5 c0 03  mov   $03c0+x,a
11ac: 2f d6     bra   $1184
11ae: e4 38     mov   a,$38
11b0: 48 80     eor   a,#$80
11b2: d5 c0 03  mov   $03c0+x,a
11b5: f4 90     mov   a,$90+x
11b7: 28 fe     and   a,#$fe
11b9: d4 90     mov   $90+x,a
11bb: 6f        ret
;
11bc: e8 00     mov   a,#$00
11be: c4 3e     mov   $3e,a             ;; DSP KOF
11c0: c4 40     mov   $40,a             ;; DSP KON
11c2: c4 42     mov   $42,a             ;; DSP ?KOF
11c4: c4 46     mov   $46,a             ;; DSP NON
11c6: e4 01     mov   a,$01
11c8: 28 40     and   a,#$40
11ca: 08 80     or    a,#$80
11cc: c4 44     mov   $44,a             ;; DSP FLG
11ce: 6f        ret
;
11cf: f4 a0     mov   a,$a0+x
11d1: 28 40     and   a,#$40
11d3: d0 f9     bne   $11ce
11d5: f5 70 03  mov   a,$0370+x
11d8: fd        mov   y,a
11d9: 1c        asl   a
11da: 1c        asl   a
11db: 1c        asl   a
11dc: 1c        asl   a
11dd: c4 39     mov   $39,a
11df: f6 fa 12  mov   a,$12fa+y
11e2: c4 38     mov   $38,a
11e4: 24 3e     and   a,$3e
11e6: f0 07     beq   $11ef
11e8: f4 a0     mov   a,$a0+x
11ea: 08 40     or    a,#$40
11ec: d4 a0     mov   $a0+x,a
11ee: 6f        ret
11ef: e4 28     mov   a,$28
11f1: 04 29     or    a,$29
11f3: f0 f3     beq   $11e8
11f5: f4 90     mov   a,$90+x
11f7: 28 08     and   a,#$08
11f9: f0 1b     beq   $1216
11fb: e4 01     mov   a,$01
11fd: 28 20     and   a,#$20
11ff: d0 08     bne   $1209
1201: f4 90     mov   a,$90+x
1203: 28 f7     and   a,#$f7
1205: d4 90     mov   $90+x,a
1207: 2f 0d     bra   $1216
1209: e4 72     mov   a,$72
120b: bc        inc   a
120c: 1c        asl   a
120d: 1c        asl   a
120e: eb 2a     mov   y,$2a
1210: cf        mul   ya
1211: 1c        asl   a
1212: dd        mov   a,y
1213: 3c        rol   a
1214: c4 2a     mov   $2a,a
1216: f4 80     mov   a,$80+x
1218: 28 02     and   a,#$02
121a: f0 4e     beq   $126a
121c: f4 80     mov   a,$80+x
121e: 28 01     and   a,#$01
1220: d0 22     bne   $1244
1222: e4 44     mov   a,$44
1224: 30 01     bmi   $1227
1226: 6f        ret
;
1227: e4 01     mov   a,$01
1229: 28 40     and   a,#$40
122b: 15 60 01  or    a,$0160+x
122e: c4 44     mov   $44,a
1230: e4 46     mov   a,$46
1232: 04 38     or    a,$38
1234: c4 46     mov   $46,a
1236: eb 2a     mov   y,$2a
1238: f5 50 04  mov   a,$0450+x
123b: 30 2f     bmi   $126c
123d: cf        mul   ya
123e: 1c        asl   a
123f: dd        mov   a,y
1240: 3c        rol   a
1241: fd        mov   y,a
1242: 2f 28     bra   $126c
1244: e4 44     mov   a,$44
1246: 10 22     bpl   $126a
1248: e4 39     mov   a,$39
124a: 2d        push  a
124b: e4 38     mov   a,$38
124d: 2d        push  a
124e: f5 40 04  mov   a,$0440+x
1251: fd        mov   y,a
1252: 1c        asl   a
1253: 1c        asl   a
1254: 1c        asl   a
1255: 1c        asl   a
1256: c4 39     mov   $39,a
1258: f6 fa 12  mov   a,$12fa+y
125b: c4 38     mov   $38,a
125d: 24 3e     and   a,$3e
125f: d0 03     bne   $1264
1261: 3f 27 12  call  $1227
1264: ae        pop   a
1265: c4 38     mov   $38,a
1267: ae        pop   a
1268: c4 39     mov   $39,a
126a: eb 2a     mov   y,$2a
126c: f6 da 12  mov   a,$12da+y
126f: c4 36     mov   $36,a
1271: fd        mov   y,a
1272: f5 c0 03  mov   a,$03c0+x
1275: 48 80     eor   a,#$80
1277: cf        mul   ya
1278: f4 b0     mov   a,$b0+x
127a: 5c        lsr   a
127b: c4 37     mov   $37,a
127d: dd        mov   a,y
127e: eb 39     mov   y,$39
1280: 90 03     bcc   $1285
1282: 48 ff     eor   a,#$ff
1284: bc        inc   a
1285: d6 00 02  mov   $0200+y,a
1288: eb 36     mov   y,$36
128a: f5 c0 03  mov   a,$03c0+x
128d: 48 7f     eor   a,#$7f
128f: cf        mul   ya
1290: dd        mov   a,y
1291: eb 39     mov   y,$39
1293: 4b 37     lsr   $37
1295: 90 03     bcc   $129a
1297: 48 ff     eor   a,#$ff
1299: bc        inc   a
129a: d6 01 02  mov   $0201+y,a
129d: e4 28     mov   a,$28
129f: d6 02 02  mov   $0202+y,a
12a2: e4 29     mov   a,$29
12a4: d6 03 02  mov   $0203+y,a
12a7: f5 a0 03  mov   a,$03a0+x
12aa: d6 04 02  mov   $0204+y,a
12ad: e4 3b     mov   a,$3b
12af: d6 05 02  mov   $0205+y,a
12b2: e4 3c     mov   a,$3c
12b4: d6 06 02  mov   $0206+y,a
12b7: d6 07 02  mov   $0207+y,a
12ba: e4 3e     mov   a,$3e
12bc: 04 38     or    a,$38
12be: c4 3e     mov   $3e,a
12c0: e4 3a     mov   a,$3a
12c2: 28 20     and   a,#$20
12c4: f0 07     beq   $12cd
12c6: e4 40     mov   a,$40
12c8: 04 38     or    a,$38
12ca: c4 40     mov   $40,a
12cc: 6f        ret
12cd: e4 3a     mov   a,$3a
12cf: 28 04     and   a,#$04
12d1: f0 06     beq   $12d9
12d3: e4 42     mov   a,$42
12d5: 04 38     or    a,$38
12d7: c4 42     mov   $42,a
12d9: 6f        ret
;; ref:$2A
12da: db $00,$03,$04,$05,$06,$07,$09,$0a,$0c,$0d,$0f,$12,$14,$17,$1a,$1c
12ea: db $1f,$24,$28,$2d,$31,$36,$3a,$3f,$47,$4f,$57,$5f,$67,$6f,$77,$7f
;; ref:$0370+x * #$10, $0440+x * #$10
12fa: db $01,$02,$04,$08,$10,$20,$40,$80
;
1302: 8f 00 3a  mov   $3a,#$00
1305: c4 38     mov   $38,a
1307: 1c        asl   a
1308: fd        mov   y,a
1309: f7 50     mov   a,($50)+y
130b: c4 36     mov   $36,a
130d: fc        inc   y
130e: f7 50     mov   a,($50)+y
1310: c4 37     mov   $37,a
1312: 8d 00     mov   y,#$00
1314: f7 36     mov   a,($36)+y
1316: fc        inc   y
1317: c4 39     mov   $39,a
1319: f7 36     mov   a,($36)+y
131b: fc        inc   y
131c: 5d        mov   x,a
131d: f7 36     mov   a,($36)+y
131f: d0 07     bne   $1328
1321: d4 80     mov   $80+x,a
1323: fc        inc   y
1324: 5f ed 13  jmp   $13ed
1327: 6f        ret
1328: f4 80     mov   a,$80+x
132a: 28 40     and   a,#$40
132c: d0 f9     bne   $1327
132e: d5 00 04  mov   $0400+x,a         ; zero duration counter
1331: d5 c0 01  mov   $01c0+x,a
1334: d5 20 04  mov   $0420+x,a
1337: d5 30 04  mov   $0430+x,a
133a: d5 40 05  mov   $0540+x,a
133d: d5 50 01  mov   $0150+x,a
1340: d5 60 01  mov   $0160+x,a
1343: d5 10 03  mov   $0310+x,a
1346: d4 90     mov   $90+x,a
1348: d4 a0     mov   $a0+x,a
134a: d4 b0     mov   $b0+x,a
134c: e4 38     mov   a,$38
134e: 75 f0 01  cmp   a,$01f0+x
1351: d0 0a     bne   $135d
1353: f4 80     mov   a,$80+x
1355: f0 09     beq   $1360
1357: e8 20     mov   a,#$20
1359: d4 a0     mov   $a0+x,a
135b: e4 38     mov   a,$38
135d: d5 f0 01  mov   $01f0+x,a
1360: f7 36     mov   a,($36)+y
1362: d4 80     mov   $80+x,a
1364: fc        inc   y
1365: f7 36     mov   a,($36)+y
1367: d5 20 03  mov   $0320+x,a
136a: fc        inc   y
136b: f7 36     mov   a,($36)+y
136d: d5 30 03  mov   $0330+x,a
1370: fc        inc   y
1371: f7 36     mov   a,($36)+y
1373: d5 40 03  mov   $0340+x,a
1376: fc        inc   y
1377: f7 36     mov   a,($36)+y
1379: 60        clrc
137a: 84 3d     adc   a,$3d
137c: d5 50 03  mov   $0350+x,a
137f: fc        inc   y
1380: f7 36     mov   a,($36)+y
1382: d5 60 03  mov   $0360+x,a
1385: fc        inc   y
1386: f7 36     mov   a,($36)+y
1388: d5 70 03  mov   $0370+x,a
138b: bc        inc   a
138c: 28 07     and   a,#$07
138e: d5 40 04  mov   $0440+x,a
1391: fc        inc   y
1392: f7 36     mov   a,($36)+y
1394: d5 80 03  mov   $0380+x,a
1397: fc        inc   y
1398: f7 36     mov   a,($36)+y
139a: d5 90 03  mov   $0390+x,a
139d: fc        inc   y
139e: f7 36     mov   a,($36)+y
13a0: d5 a0 03  mov   $03a0+x,a
13a3: fc        inc   y
13a4: f7 36     mov   a,($36)+y
13a6: d5 b0 03  mov   $03b0+x,a
13a9: fc        inc   y
13aa: e4 01     mov   a,$01
13ac: 28 04     and   a,#$04
13ae: f0 02     beq   $13b2
13b0: f7 36     mov   a,($36)+y
13b2: d5 c0 03  mov   $03c0+x,a
13b5: fc        inc   y
13b6: fc        inc   y
13b7: f5 a0 03  mov   a,$03a0+x
13ba: 3f a7 0b  call  $0ba7
13bd: e8 01     mov   a,#$01
13bf: d5 10 04  mov   $0410+x,a         ; set duration to #$01
13c2: e8 ff     mov   a,#$ff
13c4: d5 d0 03  mov   $03d0+x,a         ; set pulse counter to #$FF
13c7: e8 40     mov   a,#$40
13c9: d5 50 04  mov   $0450+x,a
13cc: e4 3a     mov   a,$3a
13ce: f0 1d     beq   $13ed
13d0: 6d        push  y
13d1: f5 20 03  mov   a,$0320+x
13d4: fd        mov   y,a
13d5: e4 32     mov   a,$32
13d7: bc        inc   a
13d8: 1c        asl   a
13d9: 1c        asl   a
13da: cf        mul   ya
13db: 1c        asl   a
13dc: dd        mov   a,y
13dd: 3c        rol   a
13de: d5 20 03  mov   $0320+x,a
13e1: ee        pop   y
13e2: e4 33     mov   a,$33
13e4: 95 50 03  adc   a,$0350+x
13e7: 80        setc
13e8: a4 3d     sbc   a,$3d
13ea: d5 50 03  mov   $0350+x,a
13ed: 8b 39     dec   $39
13ef: f0 03     beq   $13f4
13f1: 5f 19 13  jmp   $1319
13f4: 6f        ret
