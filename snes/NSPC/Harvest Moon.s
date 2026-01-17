0500: 20        clrp
0501: cd cf     mov   x,#$cf
0503: bd        mov   sp,x
0504: e8 30     mov   a,#$30
0506: c5 f1 00  mov   $00f1,a
0509: 3f 7d 0f  call  $0f7d
050c: 8d 0a     mov   y,#$0a
050e: ad 05     cmp   y,#$05
0510: f0 07     beq   $0519
0512: b0 08     bcs   $051c
0514: 69 89 88  cmp   ($88),($89)
0517: d0 11     bne   $052a
0519: e3 88 0e  bbs7  $88,$052a
051c: f6 8b 14  mov   a,$148b+y
051f: c5 f2 00  mov   $00f2,a
0522: f6 95 14  mov   a,$1495+y
0525: 5d        mov   x,a
0526: e6        mov   a,(x)
0527: c5 f3 00  mov   $00f3,a
052a: fe e2     dbnz  y,$050e
052c: cb 81     mov   $81,y
052e: cb 82     mov   $82,y
0530: e4 74     mov   a,$74
0532: 44 75     eor   a,$75
0534: 5c        lsr   a
0535: 5c        lsr   a
0536: ed        notc
0537: 6b 74     ror   $74
0539: 6b 75     ror   $75
053b: ec fd 00  mov   y,$00fd
053e: f0 fb     beq   $053b
0540: cc 6b 03  mov   $036b,y
0543: 6d        push  y
0544: e8 20     mov   a,#$20
0546: cf        mul   ya
0547: 60        clrc
0548: 84 90     adc   a,$90
054a: c4 90     mov   $90,a
054c: 90 07     bcc   $0555
054e: 69 89 88  cmp   ($88),($89)
0551: f0 02     beq   $0555
0553: ab 88     inc   $88
0555: e4 d2     mov   a,$d2
0557: f0 03     beq   $055c
0559: 3f 93 0c  call  $0c93
055c: e4 93     mov   a,$93
055e: ee        pop   y
055f: cf        mul   ya
0560: 60        clrc
0561: 84 91     adc   a,$91
0563: c4 91     mov   $91,a
0565: 90 08     bcc   $056f
0567: 13 cf 31  bbc0  $cf,$059b
056a: 3f a9 05  call  $05a9
056d: 2f 1e     bra   $058d
056f: 83 cf 1b  bbs4  $cf,$058d
0572: 13 cf 26  bbc0  $cf,$059b
0575: cd 00     mov   x,#$00
0577: 8f 01 83  mov   $83,#$01
057a: e4 83     mov   a,$83
057c: 24 d2     and   a,$d2
057e: d0 07     bne   $0587
0580: f4 01     mov   a,$01+x
0582: f0 03     beq   $0587
0584: 3f 38 0b  call  $0b38
0587: 3d        inc   x
0588: 3d        inc   x
0589: 0b 83     asl   $83
058b: d0 ed     bne   $057a
058d: b3 cf 0b  bbc5  $cf,$059b
0590: e4 9a     mov   a,$9a
0592: d0 07     bne   $059b
0594: b2 cf     clr5  $cf
0596: 12 cf     clr0  $cf
0598: 8f e0 99  mov   $99,#$e0
059b: 63 cf 06  bbs3  $cf,$05a4
059e: 3f 3c 10  call  $103c
05a1: 5f 0c 05  jmp   $050c

05a4: 72 cf     clr3  $cf
05a6: 5f 0c 05  jmp   $050c

05a9: 93 cf 08  bbc4  $cf,$05b4
05ac: 3f c9 0b  call  $0bc9
05af: 3f fd 0b  call  $0bfd
05b2: 92 cf     clr4  $cf
05b4: cd 00     mov   x,#$00
05b6: d8 9e     mov   $9e,x
05b8: 8f 01 83  mov   $83,#$01
05bb: e4 83     mov   a,$83
05bd: 24 d2     and   a,$d2
05bf: d0 3b     bne   $05fc
05c1: d8 76     mov   $76,x
05c3: f4 01     mov   a,$01+x
05c5: f0 35     beq   $05fc
05c7: 9b 10     dec   $10+x
05c9: d0 33     bne   $05fe
05cb: e7 00     mov   a,($00+x)
05cd: bb 00     inc   $00+x
05cf: d0 02     bne   $05d3
05d1: bb 01     inc   $01+x
05d3: fd        mov   y,a
05d4: d0 2a     bne   $0600
05d6: f4 60     mov   a,$60+x
05d8: d0 03     bne   $05dd
05da: 5f fd 0b  jmp   $0bfd

05dd: 6d        push  y
05de: f5 41 03  mov   a,$0341+x
05e1: fd        mov   y,a
05e2: f5 40 03  mov   a,$0340+x
05e5: 7a ac     addw  ya,$ac
05e7: d4 00     mov   $00+x,a
05e9: db 01     mov   $01+x,y
05eb: ee        pop   y
05ec: 9b 60     dec   $60+x
05ee: d0 db     bne   $05cb
05f0: f5 30 03  mov   a,$0330+x
05f3: d4 00     mov   $00+x,a
05f5: f5 31 03  mov   a,$0331+x
05f8: d4 01     mov   $01+x,a
05fa: 2f cf     bra   $05cb
05fc: 2f 58     bra   $0656
05fe: 2f 50     bra   $0650
0600: 30 2c     bmi   $062e
0602: d5 00 02  mov   $0200+x,a
0605: e7 00     mov   a,($00+x)
0607: bb 00     inc   $00+x
0609: d0 02     bne   $060d
060b: bb 01     inc   $01+x
060d: fd        mov   y,a
060e: 30 1e     bmi   $062e
0610: 2d        push  a
0611: 9f        xcn   a
0612: 28 07     and   a,#$07
0614: fd        mov   y,a
0615: f6 a0 14  mov   a,$14a0+y
0618: d5 01 02  mov   $0201+x,a
061b: ae        pop   a
061c: 28 0f     and   a,#$0f
061e: fd        mov   y,a
061f: f6 a8 14  mov   a,$14a8+y
0622: d5 10 03  mov   $0310+x,a
0625: e7 00     mov   a,($00+x)
0627: bb 00     inc   $00+x
0629: d0 02     bne   $062d
062b: bb 01     inc   $01+x
062d: fd        mov   y,a
062e: 68 de     cmp   a,#$de
0630: f0 2f     beq   $0661
0632: 68 e0     cmp   a,#$e0
0634: 90 05     bcc   $063b
0636: 3f bb 06  call  $06bb
0639: 2f 90     bra   $05cb
063b: 3f 0c 0e  call  $0e0c
063e: f5 00 02  mov   a,$0200+x
0641: d4 10     mov   $10+x,a
0643: fd        mov   y,a
0644: f5 01 02  mov   a,$0201+x
0647: cf        mul   ya
0648: dd        mov   a,y
0649: d0 01     bne   $064c
064b: bc        inc   a
064c: d4 11     mov   $11+x,a
064e: 2f 03     bra   $0653
0650: 3f 54 0a  call  $0a54
0653: 3f 02 09  call  $0902
0656: 3d        inc   x
0657: 3d        inc   x
0658: 0b 83     asl   $83
065a: d0 02     bne   $065e
065c: 2f 0a     bra   $0668
065e: 5f bb 05  jmp   $05bb

0661: 12 cf     clr0  $cf
0663: 62 cf     set3  $cf
0665: 5f cb 05  jmp   $05cb

0668: e4 94     mov   a,$94
066a: f0 0b     beq   $0677
066c: ba 96     movw  ya,$96
066e: 7a 92     addw  ya,$92
0670: 6e 94 02  dbnz  $94,$0675
0673: ba 94     movw  ya,$94
0675: da 92     movw  $92,ya
0677: e4 a7     mov   a,$a7
0679: f0 15     beq   $0690
067b: ba a3     movw  ya,$a3
067d: 7a 9f     addw  ya,$9f
067f: da 9f     movw  $9f,ya
0681: ba a5     movw  ya,$a5
0683: 7a a1     addw  ya,$a1
0685: 6e a7 06  dbnz  $a7,$068e
0688: ba a7     movw  ya,$a7
068a: da 9f     movw  $9f,ya
068c: eb a9     mov   y,$a9
068e: da a1     movw  $a1,ya
0690: e4 9a     mov   a,$9a
0692: f0 0e     beq   $06a2
0694: ba 9c     movw  ya,$9c
0696: 7a 98     addw  ya,$98
0698: 6e 9a 02  dbnz  $9a,$069d
069b: ba 9a     movw  ya,$9a
069d: da 98     movw  $98,ya
069f: 8f ff 9e  mov   $9e,#$ff
06a2: cd 00     mov   x,#$00
06a4: 8f 01 83  mov   $83,#$01
06a7: e4 83     mov   a,$83
06a9: 24 d2     and   a,$d2
06ab: d0 07     bne   $06b4
06ad: f4 01     mov   a,$01+x
06af: f0 03     beq   $06b4
06b1: 3f 9d 09  call  $099d
06b4: 3d        inc   x
06b5: 3d        inc   x
06b6: 0b 83     asl   $83
06b8: d0 ed     bne   $06a7
06ba: 6f        ret

; dispatch vcmd in A (e0-ff)
06bb: 1c        asl   a
06bc: fd        mov   y,a
06bd: f6 21 13  mov   a,$1321+y
06c0: 2d        push  a
06c1: f6 20 13  mov   a,$1320+y
06c4: 2d        push  a
06c5: dd        mov   a,y
06c6: 5c        lsr   a
06c7: fd        mov   y,a
06c8: f6 be 13  mov   a,$13be+y
06cb: f0 03     beq   $06d0
06cd: 5f 64 0f  jmp   $0f64

06d0: 5f 6c 0f  jmp   $0f6c

; vcmd e1 - pan
06d3: d3 cf 02  bbc6  $cf,$06d8
06d6: e8 0a     mov   a,#$0a
06d8: d5 61 02  mov   $0261+x,a
06db: 28 1f     and   a,#$1f
06dd: d5 41 02  mov   $0241+x,a
06e0: e8 00     mov   a,#$00
06e2: d5 40 02  mov   $0240+x,a
06e5: 6f        ret

; vcmd e2 - pan fade
06e6: d3 cf 0a  bbc6  $cf,$06f3
06e9: e7 00     mov   a,($00+x)
06eb: bb 00     inc   $00+x
06ed: d0 02     bne   $06f1
06ef: bb 01     inc   $01+x
06f1: fd        mov   y,a
06f2: 6f        ret

06f3: d4 21     mov   $21+x,a
06f5: 2d        push  a
06f6: e7 00     mov   a,($00+x)
06f8: bb 00     inc   $00+x
06fa: d0 02     bne   $06fe
06fc: bb 01     inc   $01+x
06fe: fd        mov   y,a
06ff: d5 60 02  mov   $0260+x,a
0702: 80        setc
0703: b5 41 02  sbc   a,$0241+x
0706: ce        pop   x
0707: 3f 57 09  call  $0957
070a: d5 50 02  mov   $0250+x,a
070d: dd        mov   a,y
070e: d5 51 02  mov   $0251+x,a
0711: 6f        ret

; vcmd e3 - vibrato on
0712: d5 d0 02  mov   $02d0+x,a
0715: e7 00     mov   a,($00+x)
0717: bb 00     inc   $00+x
0719: d0 02     bne   $071d
071b: bb 01     inc   $01+x
071d: fd        mov   y,a
071e: d5 c1 02  mov   $02c1+x,a
0721: e7 00     mov   a,($00+x)
0723: bb 00     inc   $00+x
0725: d0 02     bne   $0729
0727: bb 01     inc   $01+x
0729: fd        mov   y,a
; vcmd e4 - vibrato off
072a: d4 41     mov   $41+x,a
072c: d5 e1 02  mov   $02e1+x,a
072f: e8 00     mov   a,#$00
0731: d5 d1 02  mov   $02d1+x,a
0734: 6f        ret

; vcmd f0 - vibrato fade
0735: d5 d1 02  mov   $02d1+x,a
0738: 2d        push  a
0739: 8d 00     mov   y,#$00
073b: f4 41     mov   a,$41+x
073d: ce        pop   x
073e: 9e        div   ya,x
073f: f8 76     mov   x,$76
0741: d5 e0 02  mov   $02e0+x,a
0744: 6f        ret

; vcmd e5 - master volume
0745: e8 00     mov   a,#$00
0747: da 98     movw  $98,ya
0749: 6f        ret

; vcmd e6 - master volume fade
074a: c4 9a     mov   $9a,a
074c: e7 00     mov   a,($00+x)
074e: bb 00     inc   $00+x
0750: d0 02     bne   $0754
0752: bb 01     inc   $01+x
0754: fd        mov   y,a
0755: c4 9b     mov   $9b,a
0757: 80        setc
0758: a4 99     sbc   a,$99
075a: f8 9a     mov   x,$9a
075c: 3f 57 09  call  $0957
075f: da 9c     movw  $9c,ya
0761: 6f        ret

; vcmd e7 - tempo
0762: e8 00     mov   a,#$00
0764: da 92     movw  $92,ya
0766: 6f        ret

; vcmd e8 - tempo fade
0767: c4 94     mov   $94,a
0769: e7 00     mov   a,($00+x)
076b: bb 00     inc   $00+x
076d: d0 02     bne   $0771
076f: bb 01     inc   $01+x
0771: fd        mov   y,a
0772: c4 95     mov   $95,a
0774: 80        setc
0775: a4 93     sbc   a,$93
0777: f8 94     mov   x,$94
0779: 3f 57 09  call  $0957
077c: da 96     movw  $96,ya
077e: 6f        ret

; vcmd e9 - global transpose
077f: c4 8b     mov   $8b,a
0781: 6f        ret

; vcmd ea - per-voice transpose
0782: d5 50 03  mov   $0350+x,a
0785: 6f        ret

; vcmd eb - tremolo on
0786: d5 00 03  mov   $0300+x,a
0789: e7 00     mov   a,($00+x)
078b: bb 00     inc   $00+x
078d: d0 02     bne   $0791
078f: bb 01     inc   $01+x
0791: fd        mov   y,a
0792: d5 f1 02  mov   $02f1+x,a
0795: e7 00     mov   a,($00+x)
0797: bb 00     inc   $00+x
0799: d0 02     bne   $079d
079b: bb 01     inc   $01+x
079d: fd        mov   y,a
; vcmd ec - tremolo off
079e: d4 51     mov   $51+x,a
07a0: 6f        ret

; vcmd f1 - pitch envelope (release)
07a1: e8 01     mov   a,#$01
07a3: 2f 02     bra   $07a7
; vcmd f2 - pitch envelope (attack)
07a5: e8 00     mov   a,#$00
07a7: d5 80 02  mov   $0280+x,a
07aa: dd        mov   a,y
07ab: d5 71 02  mov   $0271+x,a
07ae: e7 00     mov   a,($00+x)
07b0: bb 00     inc   $00+x
07b2: d0 02     bne   $07b6
07b4: bb 01     inc   $01+x
07b6: fd        mov   y,a
07b7: d5 70 02  mov   $0270+x,a
07ba: e7 00     mov   a,($00+x)
07bc: bb 00     inc   $00+x
07be: d0 02     bne   $07c2
07c0: bb 01     inc   $01+x
07c2: fd        mov   y,a
07c3: d5 81 02  mov   $0281+x,a
07c6: 6f        ret

; vcmd f3 - pitch envelope off
07c7: d5 70 02  mov   $0270+x,a
07ca: 6f        ret

; vcmd ed - volume
07cb: d5 11 02  mov   $0211+x,a
07ce: e8 00     mov   a,#$00
07d0: d5 10 02  mov   $0210+x,a
07d3: 6f        ret

; vcmd ee - volume fade
07d4: d4 20     mov   $20+x,a
07d6: 2d        push  a
07d7: e7 00     mov   a,($00+x)
07d9: bb 00     inc   $00+x
07db: d0 02     bne   $07df
07dd: bb 01     inc   $01+x
07df: fd        mov   y,a
07e0: d5 30 02  mov   $0230+x,a
07e3: 80        setc
07e4: b5 11 02  sbc   a,$0211+x
07e7: ce        pop   x
07e8: 3f 57 09  call  $0957
07eb: d5 20 02  mov   $0220+x,a
07ee: dd        mov   a,y
07ef: d5 21 02  mov   $0221+x,a
07f2: 6f        ret

; vcmd f4 - tuning
07f3: d5 b1 02  mov   $02b1+x,a
07f6: 6f        ret

; vcmd ef - call subroutine
07f7: d5 40 03  mov   $0340+x,a
07fa: e7 00     mov   a,($00+x)
07fc: bb 00     inc   $00+x
07fe: d0 02     bne   $0802
0800: bb 01     inc   $01+x
0802: fd        mov   y,a
0803: d5 41 03  mov   $0341+x,a
0806: e7 00     mov   a,($00+x)
0808: bb 00     inc   $00+x
080a: d0 02     bne   $080e
080c: bb 01     inc   $01+x
080e: fd        mov   y,a
080f: d4 60     mov   $60+x,a
0811: f4 00     mov   a,$00+x
0813: d5 30 03  mov   $0330+x,a
0816: f4 01     mov   a,$01+x
0818: d5 31 03  mov   $0331+x,a
081b: 6d        push  y
081c: f5 41 03  mov   a,$0341+x
081f: fd        mov   y,a
0820: f5 40 03  mov   a,$0340+x
0823: 7a ac     addw  ya,$ac
0825: d4 00     mov   $00+x,a
0827: db 01     mov   $01+x,y
0829: ee        pop   y
082a: 6f        ret

; vcmd f5 - echo vbits/volume
082b: c4 86     mov   $86,a
082d: e7 00     mov   a,($00+x)
082f: bb 00     inc   $00+x
0831: d0 02     bne   $0835
0833: bb 01     inc   $01+x
0835: fd        mov   y,a
0836: e8 00     mov   a,#$00
0838: da 9f     movw  $9f,ya
083a: e7 00     mov   a,($00+x)
083c: bb 00     inc   $00+x
083e: d0 02     bne   $0842
0840: bb 01     inc   $01+x
0842: fd        mov   y,a
0843: e8 00     mov   a,#$00
0845: da a1     movw  $a1,ya
0847: b2 84     clr5  $84
0849: 6f        ret

; vcmd f8 - echo volume fade
084a: c4 a7     mov   $a7,a
084c: e7 00     mov   a,($00+x)
084e: bb 00     inc   $00+x
0850: d0 02     bne   $0854
0852: bb 01     inc   $01+x
0854: fd        mov   y,a
0855: c4 a8     mov   $a8,a
0857: 80        setc
0858: a4 a0     sbc   a,$a0
085a: f8 a7     mov   x,$a7
085c: 3f 57 09  call  $0957
085f: da a3     movw  $a3,ya
0861: a3 d0 16  bbs5  $d0,$087a
0864: e7 00     mov   a,($00+x)
0866: bb 00     inc   $00+x
0868: d0 02     bne   $086c
086a: bb 01     inc   $01+x
086c: fd        mov   y,a
086d: c4 a9     mov   $a9,a
086f: 80        setc
0870: a4 a2     sbc   a,$a2
0872: f8 a7     mov   x,$a7
0874: 3f 57 09  call  $0957
0877: da a5     movw  $a5,ya
0879: 6f        ret

087a: e8 00     mov   a,#$00
087c: 2f f1     bra   $086f
; vcmd f6 - disable echo
087e: da 9f     movw  $9f,ya
0880: da a1     movw  $a1,ya
0882: a2 84     set5  $84
0884: 6f        ret

; vcmd f7 - set echo params
0885: 3f b3 08  call  $08b3
0888: e7 00     mov   a,($00+x)
088a: bb 00     inc   $00+x
088c: d0 02     bne   $0890
088e: bb 01     inc   $01+x
0890: fd        mov   y,a
0891: c4 8a     mov   $8a,a
0893: e7 00     mov   a,($00+x)
0895: bb 00     inc   $00+x
0897: d0 02     bne   $089b
0899: bb 01     inc   $01+x
089b: fd        mov   y,a
089c: 8d 08     mov   y,#$08
089e: cf        mul   ya
089f: 5d        mov   x,a
08a0: 8d 0f     mov   y,#$0f
08a2: f5 6c 14  mov   a,$146c+x
08a5: 3f 76 0f  call  $0f76
08a8: 3d        inc   x
08a9: dd        mov   a,y
08aa: 60        clrc
08ab: 88 10     adc   a,#$10
08ad: fd        mov   y,a
08ae: 10 f2     bpl   $08a2
08b0: f8 76     mov   x,$76
08b2: 6f        ret

08b3: c4 89     mov   $89,a
08b5: 8d 7d     mov   y,#$7d
08b7: cc f2 00  mov   $00f2,y
08ba: e5 f3 00  mov   a,$00f3
08bd: 64 89     cmp   a,$89
08bf: f0 31     beq   $08f2
08c1: 28 0f     and   a,#$0f
08c3: 48 ff     eor   a,#$ff
08c5: f3 88 03  bbc7  $88,$08cb
08c8: 60        clrc
08c9: 84 88     adc   a,$88
08cb: c4 88     mov   $88,a
08cd: 8d 04     mov   y,#$04
08cf: f6 8b 14  mov   a,$148b+y
08d2: c5 f2 00  mov   $00f2,a
08d5: e8 00     mov   a,#$00
08d7: c5 f3 00  mov   $00f3,a
08da: fe f3     dbnz  y,$08cf
08dc: e4 84     mov   a,$84
08de: 08 20     or    a,#$20
08e0: 8d 6c     mov   y,#$6c
08e2: cc f2 00  mov   $00f2,y
08e5: c5 f3 00  mov   $00f3,a
08e8: e4 89     mov   a,$89
08ea: 8d 7d     mov   y,#$7d
08ec: cc f2 00  mov   $00f2,y
08ef: c5 f3 00  mov   $00f3,a
08f2: 1c        asl   a
08f3: 1c        asl   a
08f4: 1c        asl   a
08f5: 48 ff     eor   a,#$ff
08f7: 80        setc
08f8: 88 ff     adc   a,#$ff
08fa: 8d 6d     mov   y,#$6d
08fc: 5f 76 0f  jmp   $0f76

; vcmd fa - set perc patch base
08ff: c4 8c     mov   $8c,a
0901: 6f        ret

0902: f4 30     mov   a,$30+x
0904: d0 45     bne   $094b
0906: e7 00     mov   a,($00+x)
0908: 68 f9     cmp   a,#$f9
090a: d0 3f     bne   $094b
090c: 3f 66 0f  call  $0f66
090f: e7 00     mov   a,($00+x)
0911: bb 00     inc   $00+x
0913: d0 02     bne   $0917
0915: bb 01     inc   $01+x
0917: fd        mov   y,a
; vcmd f9 - pitch slide
0918: d4 31     mov   $31+x,a
091a: e7 00     mov   a,($00+x)
091c: bb 00     inc   $00+x
091e: d0 02     bne   $0922
0920: bb 01     inc   $01+x
0922: fd        mov   y,a
0923: d4 30     mov   $30+x,a
0925: e7 00     mov   a,($00+x)
0927: bb 00     inc   $00+x
0929: d0 02     bne   $092d
092b: bb 01     inc   $01+x
092d: fd        mov   y,a
092e: 60        clrc
092f: 84 8b     adc   a,$8b
0931: 95 50 03  adc   a,$0350+x
0934: 28 7f     and   a,#$7f
0936: d5 b0 02  mov   $02b0+x,a
0939: 80        setc
093a: b5 91 02  sbc   a,$0291+x
093d: fb 30     mov   y,$30+x
093f: 6d        push  y
0940: ce        pop   x
0941: 3f 57 09  call  $0957
0944: d5 a0 02  mov   $02a0+x,a
0947: dd        mov   a,y
0948: d5 a1 02  mov   $02a1+x,a
094b: 6f        ret

094c: f5 91 02  mov   a,$0291+x
094f: c4 7a     mov   $7a,a
0951: f5 90 02  mov   a,$0290+x
0954: c4 79     mov   $79,a
0956: 6f        ret

0957: ed        notc
0958: 6b 7b     ror   $7b
095a: 10 03     bpl   $095f
095c: 48 ff     eor   a,#$ff
095e: bc        inc   a
095f: 8d 00     mov   y,#$00
0961: 9e        div   ya,x
0962: 2d        push  a
0963: e8 00     mov   a,#$00
0965: 9e        div   ya,x
0966: ee        pop   y
0967: f8 76     mov   x,$76
0969: f3 7b 06  bbc7  $7b,$0972
096c: da 70     movw  $70,ya
096e: ba df     movw  ya,$df
0970: 9a 70     subw  ya,$70
0972: 6f        ret

0973: e2 7c     set7  $7c
0975: eb 91     mov   y,$91
0977: f5 f1 02  mov   a,$02f1+x
097a: cf        mul   ya
097b: dd        mov   a,y
097c: 60        clrc
097d: 95 f0 02  adc   a,$02f0+x
0980: 1c        asl   a
0981: 90 02     bcc   $0985
0983: 48 ff     eor   a,#$ff
0985: fb 51     mov   y,$51+x
0987: cf        mul   ya
0988: dd        mov   a,y
0989: 48 ff     eor   a,#$ff
098b: eb 99     mov   y,$99
098d: cf        mul   ya
098e: f5 10 03  mov   a,$0310+x
0991: cf        mul   ya
0992: f5 11 02  mov   a,$0211+x
0995: cf        mul   ya
0996: dd        mov   a,y
0997: cf        mul   ya
0998: dd        mov   a,y
0999: d5 31 02  mov   $0231+x,a
099c: 6f        ret

099d: f4 20     mov   a,$20+x
099f: f0 09     beq   $09aa
09a1: e8 10     mov   a,#$10
09a3: 8d 02     mov   y,#$02
09a5: 9b 20     dec   $20+x
09a7: 3f 30 0a  call  $0a30
09aa: fb 51     mov   y,$51+x
09ac: f0 23     beq   $09d1
09ae: f5 00 03  mov   a,$0300+x
09b1: de 50 1b  cbne  $50+x,$09cf
09b4: 09 83 9e  or    ($9e),($83)
09b7: f5 f0 02  mov   a,$02f0+x
09ba: 10 07     bpl   $09c3
09bc: fc        inc   y
09bd: d0 04     bne   $09c3
09bf: e8 80     mov   a,#$80
09c1: 2f 04     bra   $09c7
09c3: 60        clrc
09c4: 95 f1 02  adc   a,$02f1+x
09c7: d5 f0 02  mov   $02f0+x,a
09ca: 3f 80 09  call  $0980
09cd: 2f 07     bra   $09d6
09cf: bb 50     inc   $50+x
09d1: e8 ff     mov   a,#$ff
09d3: 3f 8b 09  call  $098b
09d6: f4 21     mov   a,$21+x
09d8: f0 09     beq   $09e3
09da: e8 40     mov   a,#$40
09dc: 8d 02     mov   y,#$02
09de: 9b 21     dec   $21+x
09e0: 3f 30 0a  call  $0a30
09e3: e4 83     mov   a,$83
09e5: 24 9e     and   a,$9e
09e7: f0 46     beq   $0a2f
09e9: f5 41 02  mov   a,$0241+x
09ec: fd        mov   y,a
09ed: f5 40 02  mov   a,$0240+x
09f0: da 79     movw  $79,ya
09f2: 7d        mov   a,x
09f3: 9f        xcn   a
09f4: 5c        lsr   a
09f5: c4 7b     mov   $7b,a
09f7: eb 7a     mov   y,$7a
09f9: f6 58 14  mov   a,$1458+y
09fc: 80        setc
09fd: b6 57 14  sbc   a,$1457+y
0a00: eb 79     mov   y,$79
0a02: cf        mul   ya
0a03: dd        mov   a,y
0a04: eb 7a     mov   y,$7a
0a06: 60        clrc
0a07: 96 57 14  adc   a,$1457+y
0a0a: fd        mov   y,a
0a0b: f5 31 02  mov   a,$0231+x
0a0e: cf        mul   ya
0a0f: f5 61 02  mov   a,$0261+x
0a12: 1c        asl   a
0a13: 13 7b 01  bbc0  $7b,$0a17
0a16: 1c        asl   a
0a17: dd        mov   a,y
0a18: 90 03     bcc   $0a1d
0a1a: 48 ff     eor   a,#$ff
0a1c: bc        inc   a
0a1d: eb 7b     mov   y,$7b
0a1f: 3f 6e 0f  call  $0f6e
0a22: 8d 14     mov   y,#$14
0a24: e8 00     mov   a,#$00
0a26: 9a 79     subw  ya,$79
0a28: da 79     movw  $79,ya
0a2a: ab 7b     inc   $7b
0a2c: 33 7b c8  bbc1  $7b,$09f7
0a2f: 6f        ret

0a30: 09 83 9e  or    ($9e),($83)
0a33: da 70     movw  $70,ya
0a35: da 72     movw  $72,ya
0a37: 4d        push  x
0a38: ee        pop   y
0a39: 60        clrc
0a3a: d0 0a     bne   $0a46
0a3c: 98 1f 72  adc   $72,#$1f
0a3f: e8 00     mov   a,#$00
0a41: d7 70     mov   ($70)+y,a
0a43: fc        inc   y
0a44: 2f 09     bra   $0a4f
0a46: 98 10 72  adc   $72,#$10
0a49: 3f 4d 0a  call  $0a4d
0a4c: fc        inc   y
0a4d: f7 70     mov   a,($70)+y
0a4f: 97 72     adc   a,($72)+y
0a51: d7 70     mov   ($70)+y,a
0a53: 6f        ret

0a54: f4 11     mov   a,$11+x
0a56: f0 70     beq   $0ac8
0a58: 9b 11     dec   $11+x
0a5a: f0 05     beq   $0a61
0a5c: e8 02     mov   a,#$02
0a5e: de 10 67  cbne  $10+x,$0ac8
0a61: f4 60     mov   a,$60+x
0a63: c4 73     mov   $73,a
0a65: f4 00     mov   a,$00+x
0a67: fb 01     mov   y,$01+x
0a69: da 70     movw  $70,ya
0a6b: 8d 00     mov   y,#$00
0a6d: f7 70     mov   a,($70)+y
0a6f: f0 1e     beq   $0a8f
0a71: 30 07     bmi   $0a7a
0a73: fc        inc   y
0a74: 30 40     bmi   $0ab6
0a76: f7 70     mov   a,($70)+y
0a78: 10 f9     bpl   $0a73
0a7a: 68 c8     cmp   a,#$c8
0a7c: f0 4a     beq   $0ac8
0a7e: 68 ef     cmp   a,#$ef
0a80: f0 29     beq   $0aab
0a82: 68 e0     cmp   a,#$e0
0a84: 90 30     bcc   $0ab6
0a86: 6d        push  y
0a87: fd        mov   y,a
0a88: ae        pop   a
0a89: 96 3e 13  adc   a,$133e+y
0a8c: fd        mov   y,a
0a8d: 2f de     bra   $0a6d
0a8f: e4 73     mov   a,$73
0a91: f0 23     beq   $0ab6
0a93: 8b 73     dec   $73
0a95: d0 0a     bne   $0aa1
0a97: f5 31 03  mov   a,$0331+x
0a9a: 2d        push  a
0a9b: f5 30 03  mov   a,$0330+x
0a9e: ee        pop   y
0a9f: 2f c8     bra   $0a69
0aa1: f5 41 03  mov   a,$0341+x
0aa4: 2d        push  a
0aa5: f5 40 03  mov   a,$0340+x
0aa8: ee        pop   y
0aa9: 2f be     bra   $0a69
0aab: fc        inc   y
0aac: f7 70     mov   a,($70)+y
0aae: 2d        push  a
0aaf: fc        inc   y
0ab0: f7 70     mov   a,($70)+y
0ab2: fd        mov   y,a
0ab3: ae        pop   a
0ab4: 2f b3     bra   $0a69
0ab6: e4 83     mov   a,$83
0ab8: 8d 5c     mov   y,#$5c
0aba: 2d        push  a
0abb: e4 83     mov   a,$83
0abd: 24 80     and   a,$80
0abf: ae        pop   a
0ac0: d0 06     bne   $0ac8
0ac2: cc f2 00  mov   $00f2,y
0ac5: c5 f3 00  mov   $00f3,a
0ac8: f2 7c     clr7  $7c
0aca: f4 30     mov   a,$30+x
0acc: f0 13     beq   $0ae1
0ace: f4 31     mov   a,$31+x
0ad0: f0 04     beq   $0ad6
0ad2: 9b 31     dec   $31+x
0ad4: 2f 0b     bra   $0ae1
0ad6: e2 7c     set7  $7c
0ad8: e8 90     mov   a,#$90
0ada: 8d 02     mov   y,#$02
0adc: 9b 30     dec   $30+x
0ade: 3f 33 0a  call  $0a33
0ae1: 3f 4c 09  call  $094c
0ae4: f4 41     mov   a,$41+x
0ae6: f0 4c     beq   $0b34
0ae8: f5 d0 02  mov   a,$02d0+x
0aeb: de 40 44  cbne  $40+x,$0b32
0aee: f5 00 01  mov   a,$0100+x
0af1: 75 d1 02  cmp   a,$02d1+x
0af4: d0 05     bne   $0afb
0af6: f5 e1 02  mov   a,$02e1+x
0af9: 2f 0d     bra   $0b08
0afb: 40        setp
0afc: bb 00     inc   $00+x
0afe: 20        clrp
0aff: fd        mov   y,a
0b00: f0 02     beq   $0b04
0b02: f4 41     mov   a,$41+x
0b04: 60        clrc
0b05: 95 e0 02  adc   a,$02e0+x
0b08: d4 41     mov   $41+x,a
0b0a: f5 c0 02  mov   a,$02c0+x
0b0d: 60        clrc
0b0e: 95 c1 02  adc   a,$02c1+x
0b11: d5 c0 02  mov   $02c0+x,a
0b14: c4 7b     mov   $7b,a
0b16: 1c        asl   a
0b17: 1c        asl   a
0b18: 90 02     bcc   $0b1c
0b1a: 48 ff     eor   a,#$ff
0b1c: fd        mov   y,a
0b1d: f4 41     mov   a,$41+x
0b1f: 68 f1     cmp   a,#$f1
0b21: 90 05     bcc   $0b28
0b23: 28 0f     and   a,#$0f
0b25: cf        mul   ya
0b26: 2f 04     bra   $0b2c
0b28: cf        mul   ya
0b29: dd        mov   a,y
0b2a: 8d 00     mov   y,#$00
0b2c: 3f a9 0b  call  $0ba9
0b2f: 5f 7a 0e  jmp   $0e7a

0b32: bb 40     inc   $40+x
0b34: e3 7c f8  bbs7  $7c,$0b2f
0b37: 6f        ret

0b38: f2 7c     clr7  $7c
0b3a: f4 51     mov   a,$51+x
0b3c: f0 09     beq   $0b47
0b3e: f5 00 03  mov   a,$0300+x
0b41: de 50 03  cbne  $50+x,$0b47
0b44: 3f 73 09  call  $0973
0b47: f5 41 02  mov   a,$0241+x
0b4a: fd        mov   y,a
0b4b: f5 40 02  mov   a,$0240+x
0b4e: da 79     movw  $79,ya
0b50: f4 21     mov   a,$21+x
0b52: f0 0a     beq   $0b5e
0b54: f5 51 02  mov   a,$0251+x
0b57: fd        mov   y,a
0b58: f5 50 02  mov   a,$0250+x
0b5b: 3f 93 0b  call  $0b93
0b5e: f3 7c 03  bbc7  $7c,$0b64
0b61: 3f f2 09  call  $09f2
0b64: f2 7c     clr7  $7c
0b66: 3f 4c 09  call  $094c
0b69: f4 30     mov   a,$30+x
0b6b: f0 0e     beq   $0b7b
0b6d: f4 31     mov   a,$31+x
0b6f: d0 0a     bne   $0b7b
0b71: f5 a1 02  mov   a,$02a1+x
0b74: fd        mov   y,a
0b75: f5 a0 02  mov   a,$02a0+x
0b78: 3f 93 0b  call  $0b93
0b7b: f4 41     mov   a,$41+x
0b7d: f0 b5     beq   $0b34
0b7f: f5 d0 02  mov   a,$02d0+x
0b82: de 40 af  cbne  $40+x,$0b34
0b85: eb 91     mov   y,$91
0b87: f5 c1 02  mov   a,$02c1+x
0b8a: cf        mul   ya
0b8b: dd        mov   a,y
0b8c: 60        clrc
0b8d: 95 c0 02  adc   a,$02c0+x
0b90: 5f 14 0b  jmp   $0b14

0b93: e2 7c     set7  $7c
0b95: cb 7b     mov   $7b,y
0b97: 3f 69 09  call  $0969
0b9a: 6d        push  y
0b9b: eb 91     mov   y,$91
0b9d: cf        mul   ya
0b9e: cb 70     mov   $70,y
0ba0: 8f 00 71  mov   $71,#$00
0ba3: eb 91     mov   y,$91
0ba5: ae        pop   a
0ba6: cf        mul   ya
0ba7: 7a 70     addw  ya,$70
0ba9: 3f 69 09  call  $0969
0bac: 7a 79     addw  ya,$79
0bae: da 79     movw  $79,ya
0bb0: 6f        ret

; play song
0bb1: ba dc     movw  ya,$dc
0bb3: da ac     movw  $ac,ya
0bb5: da b0     movw  $b0,ya
0bb7: 82 cf     set4  $cf
0bb9: 02 cf     set0  $cf
0bbb: e8 00     mov   a,#$00
0bbd: c4 de     mov   $de,a
0bbf: c4 d2     mov   $d2,a
0bc1: e4 80     mov   a,$80
0bc3: 48 ff     eor   a,#$ff
0bc5: 0e 82 00  tset1 $0082
0bc8: 6f        ret

; reset song params
0bc9: cd 0e     mov   x,#$0e
0bcb: 8f 80 83  mov   $83,#$80          ; last voice
0bce: e8 ff     mov   a,#$ff
0bd0: d5 11 02  mov   $0211+x,a         ; voice volume = $ff
0bd3: e8 0a     mov   a,#$0a
0bd5: 3f d3 06  call  $06d3             ; pan
0bd8: d5 11 03  mov   $0311+x,a         ; zero instrument
0bdb: d5 b1 02  mov   $02b1+x,a
0bde: d5 50 03  mov   $0350+x,a
0be1: d5 70 02  mov   $0270+x,a
0be4: d4 41     mov   $41+x,a
0be6: d4 51     mov   $51+x,a
0be8: 1d        dec   x
0be9: 1d        dec   x
0bea: 4b 83     lsr   $83
0bec: d0 e0     bne   $0bce             ; loop for each voice
0bee: c4 a7     mov   $a7,a
0bf0: c4 94     mov   $94,a
0bf2: c4 8b     mov   $8b,a
0bf4: c4 b2     mov   $b2,a
0bf6: 8f 0b 8c  mov   $8c,#$0b
0bf9: 8f 20 93  mov   $93,#$20          ; tempo
0bfc: 6f        ret

0bfd: 3f 7b 0c  call  $0c7b		; get next block
0c00: ad 00     cmp   y,#$00		; is it 0?
0c02: d0 14     bne   $0c18
0c04: fd        mov   y,a
0c05: f0 ba     beq   $0bc1
; set/dec repeat count
0c07: 8b b2     dec   $b2
0c09: 10 02     bpl   $0c0d
0c0b: c4 b2     mov   $b2,a
0c0d: 3f 7b 0c  call  $0c7b
0c10: f8 b2     mov   x,$b2
0c12: f0 e9     beq   $0bfd
0c14: da b0     movw  $b0,ya
0c16: 2f e5     bra   $0bfd
0c18: da 72     movw  $72,ya
0c1a: 8d 0f     mov   y,#$0f
0c1c: 8f 80 d7  mov   $d7,#$80
0c1f: 6d        push  y
0c20: f7 72     mov   a,($72)+y
0c22: dc        dec   y
0c23: 2d        push  a
0c24: f7 72     mov   a,($72)+y
0c26: ee        pop   y
0c27: ad 00     cmp   y,#$00
0c29: d0 04     bne   $0c2f
0c2b: 68 00     cmp   a,#$00
0c2d: f0 02     beq   $0c31
0c2f: 7a ac     addw  ya,$ac
0c31: da ae     movw  $ae,ya
0c33: ee        pop   y
0c34: e4 d7     mov   a,$d7
0c36: 24 d2     and   a,$d2
0c38: d0 12     bne   $0c4c
0c3a: e4 af     mov   a,$af
0c3c: d6 00 00  mov   $0000+y,a
0c3f: dc        dec   y
0c40: e4 ae     mov   a,$ae
0c42: d6 00 00  mov   $0000+y,a
0c45: 4b d7     lsr   $d7
0c47: dc        dec   y
0c48: 10 d5     bpl   $0c1f
0c4a: 2f 06     bra   $0c52
0c4c: 4b d7     lsr   $d7
0c4e: dc        dec   y
0c4f: dc        dec   y
0c50: 10 cd     bpl   $0c1f
0c52: cd 00     mov   x,#$00
0c54: 8f 01 83  mov   $83,#$01
0c57: e4 83     mov   a,$83
0c59: 24 d2     and   a,$d2
0c5b: d0 17     bne   $0c74
0c5d: f4 01     mov   a,$01+x
0c5f: f0 08     beq   $0c69
0c61: f5 11 03  mov   a,$0311+x
0c64: d0 03     bne   $0c69
0c66: 3f 0b 0f  call  $0f0b
0c69: e8 00     mov   a,#$00
0c6b: d4 60     mov   $60+x,a
0c6d: d4 20     mov   $20+x,a
0c6f: d4 21     mov   $21+x,a
0c71: bc        inc   a
0c72: d4 10     mov   $10+x,a
0c74: 3d        inc   x
0c75: 3d        inc   x
0c76: 0b 83     asl   $83
0c78: d0 dd     bne   $0c57
0c7a: 6f        ret

0c7b: 8d 00     mov   y,#$00
0c7d: f7 b0     mov   a,($b0)+y
0c7f: 3a b0     incw  $b0
0c81: 2d        push  a
0c82: f7 b0     mov   a,($b0)+y
0c84: 3a b0     incw  $b0
0c86: fd        mov   y,a
0c87: 60        clrc
0c88: 1c        asl   a
0c89: b0 04     bcs   $0c8f
0c8b: ae        pop   a
0c8c: 7a ac     addw  ya,$ac
0c8e: 6f        ret

0c8f: 8d 00     mov   y,#$00
0c91: ae        pop   a
0c92: 6f        ret

0c93: 3f a2 0d  call  $0da2
0c96: cd 00     mov   x,#$00
0c98: 8f 01 83  mov   $83,#$01
0c9b: e4 83     mov   a,$83
0c9d: 24 de     and   a,$de
0c9f: d0 0d     bne   $0cae
0ca1: e4 83     mov   a,$83
0ca3: 24 d2     and   a,$d2
0ca5: f0 07     beq   $0cae
0ca7: f4 01     mov   a,$01+x
0ca9: f0 03     beq   $0cae
0cab: 3f 38 0b  call  $0b38
0cae: 8f 00 de  mov   $de,#$00
0cb1: 3d        inc   x
0cb2: 3d        inc   x
0cb3: 0b 83     asl   $83
0cb5: d0 e4     bne   $0c9b
0cb7: 3f bd 0d  call  $0dbd
0cba: e4 c1     mov   a,$c1
0cbc: ec 6b 03  mov   y,$036b
0cbf: cf        mul   ya
0cc0: 60        clrc
0cc1: 84 bf     adc   a,$bf
0cc3: c4 bf     mov   $bf,a
0cc5: 90 02     bcc   $0cc9
0cc7: 2f 01     bra   $0cca
0cc9: 6f        ret

0cca: 3f a2 0d  call  $0da2
0ccd: cd 00     mov   x,#$00
0ccf: d8 9e     mov   $9e,x
0cd1: 8f 01 83  mov   $83,#$01
0cd4: e4 83     mov   a,$83
0cd6: 24 d2     and   a,$d2
0cd8: f0 25     beq   $0cff
0cda: d8 76     mov   $76,x
0cdc: 9b 10     dec   $10+x
0cde: d0 22     bne   $0d02
0ce0: e7 00     mov   a,($00+x)
0ce2: bb 00     inc   $00+x
0ce4: d0 02     bne   $0ce8
0ce6: bb 01     inc   $01+x
0ce8: fd        mov   y,a
0ce9: d0 1a     bne   $0d05
0ceb: e4 83     mov   a,$83
0ced: 4e d2 00  tclr1 $00d2
0cf0: 4e 85 00  tclr1 $0085
0cf3: e8 00     mov   a,#$00
0cf5: d5 30 03  mov   $0330+x,a
0cf8: d4 00     mov   $00+x,a
0cfa: d5 31 03  mov   $0331+x,a
0cfd: d4 01     mov   $01+x,a
0cff: 5f 69 0d  jmp   $0d69

0d02: 5f 63 0d  jmp   $0d63

0d05: 30 2c     bmi   $0d33
0d07: d5 00 02  mov   $0200+x,a
0d0a: e7 00     mov   a,($00+x)
0d0c: bb 00     inc   $00+x
0d0e: d0 02     bne   $0d12
0d10: bb 01     inc   $01+x
0d12: fd        mov   y,a
0d13: 30 1e     bmi   $0d33
0d15: 2d        push  a
0d16: 9f        xcn   a
0d17: 28 07     and   a,#$07
0d19: fd        mov   y,a
0d1a: f6 a0 14  mov   a,$14a0+y
0d1d: d5 01 02  mov   $0201+x,a
0d20: ae        pop   a
0d21: 28 0f     and   a,#$0f
0d23: fd        mov   y,a
0d24: f6 a8 14  mov   a,$14a8+y
0d27: d5 10 03  mov   $0310+x,a
0d2a: e7 00     mov   a,($00+x)
0d2c: bb 00     inc   $00+x
0d2e: d0 02     bne   $0d32
0d30: bb 01     inc   $01+x
0d32: fd        mov   y,a
0d33: 68 e0     cmp   a,#$e0
0d35: f0 08     beq   $0d3f
0d37: 68 df     cmp   a,#$df
0d39: f0 09     beq   $0d44
0d3b: 90 11     bcc   $0d4e
0d3d: 2f 0a     bra   $0d49
0d3f: 3f d8 0d  call  $0dd8
0d42: 2f 9c     bra   $0ce0
0d44: 3f f4 0d  call  $0df4
0d47: 2f 97     bra   $0ce0
0d49: 3f bb 06  call  $06bb
0d4c: 2f 92     bra   $0ce0
0d4e: 3f 0c 0e  call  $0e0c
0d51: f5 00 02  mov   a,$0200+x
0d54: d4 10     mov   $10+x,a
0d56: fd        mov   y,a
0d57: f5 01 02  mov   a,$0201+x
0d5a: cf        mul   ya
0d5b: dd        mov   a,y
0d5c: d0 01     bne   $0d5f
0d5e: bc        inc   a
0d5f: d4 11     mov   $11+x,a
0d61: 2f 03     bra   $0d66
0d63: 3f 54 0a  call  $0a54
0d66: 3f 02 09  call  $0902
0d69: 3d        inc   x
0d6a: 3d        inc   x
0d6b: 0b 83     asl   $83
0d6d: d0 02     bne   $0d71
0d6f: 2f 03     bra   $0d74
0d71: 5f d4 0c  jmp   $0cd4

0d74: e4 94     mov   a,$94
0d76: f0 0b     beq   $0d83
0d78: ba 96     movw  ya,$96
0d7a: 7a 92     addw  ya,$92
0d7c: 6e 94 02  dbnz  $94,$0d81
0d7f: ba 94     movw  ya,$94
0d81: da 92     movw  $92,ya
0d83: 8f ff 9e  mov   $9e,#$ff
0d86: cd 00     mov   x,#$00
0d88: 8f 01 83  mov   $83,#$01
0d8b: e4 83     mov   a,$83
0d8d: 24 d2     and   a,$d2
0d8f: f0 07     beq   $0d98
0d91: f4 01     mov   a,$01+x
0d93: f0 03     beq   $0d98
0d95: 3f 9d 09  call  $099d
0d98: 3d        inc   x
0d99: 3d        inc   x
0d9a: 0b 83     asl   $83
0d9c: d0 ed     bne   $0d8b
0d9e: 3f bd 0d  call  $0dbd
0da1: 6f        ret

0da2: 8d 00     mov   y,#$00
0da4: f6 90 00  mov   a,$0090+y
0da7: d6 6d 03  mov   $036d+y,a
0daa: fc        inc   y
0dab: ad 08     cmp   y,#$08
0dad: d0 f5     bne   $0da4
0daf: 8d 00     mov   y,#$00
0db1: f6 be 00  mov   a,$00be+y
0db4: d6 90 00  mov   $0090+y,a
0db7: fc        inc   y
0db8: ad 08     cmp   y,#$08
0dba: d0 f5     bne   $0db1
0dbc: 6f        ret

0dbd: 8d 00     mov   y,#$00
0dbf: f6 90 00  mov   a,$0090+y
0dc2: d6 be 00  mov   $00be+y,a
0dc5: fc        inc   y
0dc6: ad 08     cmp   y,#$08
0dc8: d0 f5     bne   $0dbf
0dca: 8d 00     mov   y,#$00
0dcc: f6 6d 03  mov   a,$036d+y
0dcf: d6 90 00  mov   $0090+y,a
0dd2: fc        inc   y
0dd3: ad 08     cmp   y,#$08
0dd5: d0 f5     bne   $0dcc
0dd7: 6f        ret

0dd8: e7 00     mov   a,($00+x)
0dda: bb 00     inc   $00+x
0ddc: d0 02     bne   $0de0
0dde: bb 01     inc   $01+x
0de0: fd        mov   y,a
0de1: 8d 00     mov   y,#$00
0de3: 76 b8 14  cmp   a,$14b8+y
0de6: f0 07     beq   $0def
0de8: fc        inc   y
0de9: ad 1a     cmp   y,#$1a
0deb: d0 f6     bne   $0de3
0ded: 8d 0e     mov   y,#$0e
0def: dd        mov   a,y
0df0: 3f 0b 0f  call  $0f0b
0df3: 6f        ret

0df4: 3f 64 0f  call  $0f64
0df7: 12 84     clr0  $84
0df9: 32 84     clr1  $84
0dfb: 52 84     clr2  $84
0dfd: 72 84     clr3  $84
0dff: 92 84     clr4  $84
0e01: 04 84     or    a,$84
0e03: c4 84     mov   $84,a
0e05: e4 83     mov   a,$83
0e07: 0e 85 00  tset1 $0085
0e0a: 6f        ret

0e0b: 6f        ret

; handle a note vcmd (80-df)
0e0c: ad ca     cmp   y,#$ca
0e0e: 90 05     bcc   $0e15
; vcmds ca-df - percussion note
0e10: 3f 0b 0f  call  $0f0b
0e13: 8d a4     mov   y,#$a4
; vcmds 80-c7,c8,c9 - note/tie/rest
0e15: ad c8     cmp   y,#$c8
0e17: b0 f2     bcs   $0e0b
0e19: e4 80     mov   a,$80
0e1b: 24 83     and   a,$83
0e1d: d0 ec     bne   $0e0b
; vcmds 80-c7 - note (note number in Y)
0e1f: dd        mov   a,y
0e20: 28 7f     and   a,#$7f
0e22: 60        clrc
0e23: 84 8b     adc   a,$8b
0e25: 60        clrc
0e26: 95 50 03  adc   a,$0350+x
0e29: d5 91 02  mov   $0291+x,a
0e2c: f5 b1 02  mov   a,$02b1+x
0e2f: d5 90 02  mov   $0290+x,a
0e32: f5 d1 02  mov   a,$02d1+x
0e35: 5c        lsr   a
0e36: e8 00     mov   a,#$00
0e38: 7c        ror   a
0e39: d5 c0 02  mov   $02c0+x,a
0e3c: e8 00     mov   a,#$00
0e3e: d5 40 00  mov   $0040+x,a
0e41: d5 50 00  mov   $0050+x,a
0e44: d5 00 01  mov   $0100+x,a
0e47: d5 f0 02  mov   $02f0+x,a
0e4a: 09 83 9e  or    ($9e),($83)
0e4d: 09 83 81  or    ($81),($83)
0e50: f5 70 02  mov   a,$0270+x
0e53: d5 30 00  mov   $0030+x,a
0e56: f0 1f     beq   $0e77
0e58: f5 71 02  mov   a,$0271+x
0e5b: d5 31 00  mov   $0031+x,a
0e5e: f5 80 02  mov   a,$0280+x
0e61: d0 0a     bne   $0e6d
0e63: f5 91 02  mov   a,$0291+x
0e66: 80        setc
0e67: b5 81 02  sbc   a,$0281+x
0e6a: d5 91 02  mov   $0291+x,a
0e6d: f5 81 02  mov   a,$0281+x
0e70: 60        clrc
0e71: 95 91 02  adc   a,$0291+x
0e74: 3f 34 09  call  $0934
0e77: 3f 4c 09  call  $094c
0e7a: 8d 00     mov   y,#$00
0e7c: e4 7a     mov   a,$7a
0e7e: 80        setc
0e7f: a8 34     sbc   a,#$34
0e81: b0 09     bcs   $0e8c
0e83: e4 7a     mov   a,$7a
0e85: 80        setc
0e86: a8 13     sbc   a,#$13
0e88: b0 06     bcs   $0e90
0e8a: dc        dec   y
0e8b: 1c        asl   a
0e8c: 7a 79     addw  ya,$79
0e8e: da 79     movw  $79,ya
0e90: 4d        push  x
0e91: e4 7a     mov   a,$7a
0e93: 1c        asl   a
0e94: 8d 00     mov   y,#$00
0e96: cd 18     mov   x,#$18
0e98: 9e        div   ya,x
0e99: 5d        mov   x,a
0e9a: f6 3e 14  mov   a,$143e+y
0e9d: c4 71     mov   $71,a
0e9f: f6 3d 14  mov   a,$143d+y
0ea2: c4 70     mov   $70,a
0ea4: f6 40 14  mov   a,$1440+y
0ea7: 2d        push  a
0ea8: f6 3f 14  mov   a,$143f+y
0eab: ee        pop   y
0eac: 9a 70     subw  ya,$70
0eae: eb 79     mov   y,$79
0eb0: cf        mul   ya
0eb1: dd        mov   a,y
0eb2: 8d 00     mov   y,#$00
0eb4: 7a 70     addw  ya,$70
0eb6: cb 71     mov   $71,y
0eb8: 1c        asl   a
0eb9: 2b 71     rol   $71
0ebb: c4 70     mov   $70,a
0ebd: 2f 04     bra   $0ec3
0ebf: 4b 71     lsr   $71
0ec1: 7c        ror   a
0ec2: 3d        inc   x
0ec3: c8 06     cmp   x,#$06
0ec5: d0 f8     bne   $0ebf
0ec7: c4 70     mov   $70,a
0ec9: ce        pop   x
0eca: f5 20 03  mov   a,$0320+x
0ecd: eb 71     mov   y,$71
0ecf: cf        mul   ya
0ed0: da 72     movw  $72,ya
0ed2: f5 20 03  mov   a,$0320+x
0ed5: eb 70     mov   y,$70
0ed7: cf        mul   ya
0ed8: 6d        push  y
0ed9: f5 21 03  mov   a,$0321+x
0edc: eb 70     mov   y,$70
0ede: cf        mul   ya
0edf: 7a 72     addw  ya,$72
0ee1: da 72     movw  $72,ya
0ee3: f5 21 03  mov   a,$0321+x
0ee6: eb 71     mov   y,$71
0ee8: cf        mul   ya
0ee9: fd        mov   y,a
0eea: ae        pop   a
0eeb: 7a 72     addw  ya,$72
0eed: da 72     movw  $72,ya
0eef: 7d        mov   a,x
0ef0: 9f        xcn   a
0ef1: 5c        lsr   a
0ef2: 08 02     or    a,#$02
0ef4: fd        mov   y,a
0ef5: e4 72     mov   a,$72
0ef7: 2d        push  a
0ef8: e4 83     mov   a,$83
0efa: 24 80     and   a,$80
0efc: ae        pop   a
0efd: d0 06     bne   $0f05
0eff: cc f2 00  mov   $00f2,y
0f02: c5 f3 00  mov   $00f3,a
0f05: fc        inc   y
0f06: e4 73     mov   a,$73
0f08: 5f 6e 0f  jmp   $0f6e

; vcmd e0 - set instrument
0f0b: d5 11 03  mov   $0311+x,a
0f0e: fd        mov   y,a
0f0f: 10 06     bpl   $0f17
0f11: 80        setc
0f12: a8 ca     sbc   a,#$ca
0f14: 60        clrc
0f15: 84 8c     adc   a,$8c
0f17: 8d 06     mov   y,#$06
0f19: cf        mul   ya
0f1a: da 70     movw  $70,ya
0f1c: 60        clrc
0f1d: 98 00 70  adc   $70,#$00
0f20: 98 04 71  adc   $71,#$04
0f23: e4 80     mov   a,$80
0f25: 24 83     and   a,$83
0f27: d0 3a     bne   $0f63
0f29: 4d        push  x
0f2a: 7d        mov   a,x
0f2b: 9f        xcn   a
0f2c: 5c        lsr   a
0f2d: 08 04     or    a,#$04
0f2f: 5d        mov   x,a
0f30: 8d 00     mov   y,#$00
0f32: f7 70     mov   a,($70)+y
0f34: 10 0e     bpl   $0f44
0f36: 28 1f     and   a,#$1f
0f38: 38 20 84  and   $84,#$20
0f3b: 0e 84 00  tset1 $0084
0f3e: 09 83 85  or    ($85),($83)
0f41: dd        mov   a,y
0f42: 2f 07     bra   $0f4b
0f44: e4 83     mov   a,$83
0f46: 4e 85 00  tclr1 $0085
0f49: f7 70     mov   a,($70)+y
0f4b: c9 f2 00  mov   $00f2,x
0f4e: c5 f3 00  mov   $00f3,a
0f51: 3d        inc   x
0f52: fc        inc   y
0f53: ad 04     cmp   y,#$04
0f55: d0 f2     bne   $0f49
0f57: ce        pop   x
0f58: f7 70     mov   a,($70)+y
0f5a: d5 21 03  mov   $0321+x,a
0f5d: fc        inc   y
0f5e: f7 70     mov   a,($70)+y
0f60: d5 20 03  mov   $0320+x,a
0f63: 6f        ret

0f64: e7 00     mov   a,($00+x)
0f66: bb 00     inc   $00+x
0f68: d0 02     bne   $0f6c
0f6a: bb 01     inc   $01+x
0f6c: fd        mov   y,a
0f6d: 6f        ret

0f6e: 2d        push  a
0f6f: e4 83     mov   a,$83
0f71: 24 80     and   a,$80
0f73: ae        pop   a
0f74: d0 06     bne   $0f7c
0f76: cc f2 00  mov   $00f2,y
0f79: c5 f3 00  mov   $00f3,a
0f7c: 6f        ret

0f7d: e8 00     mov   a,#$00
0f7f: c5 f7 00  mov   $00f7,a
0f82: c5 f7 00  mov   $00f7,a
0f85: e8 00     mov   a,#$00
0f87: 5d        mov   x,a
0f88: af        mov   (x)+,a
0f89: c8 e8     cmp   x,#$e8
0f8b: d0 fb     bne   $0f88
0f8d: 2d        push  a
0f8e: 8d 02     mov   y,#$02
0f90: e8 00     mov   a,#$00
0f92: da ac     movw  $ac,ya
0f94: e8 00     mov   a,#$00
0f96: 8d 00     mov   y,#$00
0f98: d7 ac     mov   ($ac)+y,a
0f9a: 3a ac     incw  $ac
0f9c: 8d 03     mov   y,#$03
0f9e: e8 ff     mov   a,#$ff
0fa0: 5a ac     cmpw  ya,$ac
0fa2: d0 f0     bne   $0f94
0fa4: 8d 15     mov   y,#$15
0fa6: e8 00     mov   a,#$00
0fa8: da ac     movw  $ac,ya
0faa: e8 00     mov   a,#$00
0fac: 8d 00     mov   y,#$00
0fae: d7 ac     mov   ($ac)+y,a
0fb0: 3a ac     incw  $ac
0fb2: 8d d0     mov   y,#$d0
0fb4: e8 00     mov   a,#$00
0fb6: 5a ac     cmpw  ya,$ac
0fb8: d0 f0     bne   $0faa
0fba: ae        pop   a
0fbb: bc        inc   a
0fbc: 3f b3 08  call  $08b3
0fbf: a2 84     set5  $84
0fc1: e8 6e     mov   a,#$6e
0fc3: 8d 0c     mov   y,#$0c
0fc5: cc f2 00  mov   $00f2,y
0fc8: c5 f3 00  mov   $00f3,a
0fcb: 8d 1c     mov   y,#$1c
0fcd: cc f2 00  mov   $00f2,y
0fd0: c5 f3 00  mov   $00f3,a
0fd3: e8 00     mov   a,#$00
0fd5: e8 15     mov   a,#$15
0fd7: 8d 5d     mov   y,#$5d
0fd9: cc f2 00  mov   $00f2,y
0fdc: c5 f3 00  mov   $00f3,a
0fdf: e8 00     mov   a,#$00
0fe1: c5 ba 00  mov   $00ba,a
0fe4: c5 b6 00  mov   $00b6,a
0fe7: e8 15     mov   a,#$15
0fe9: c5 bb 00  mov   $00bb,a
0fec: e8 30     mov   a,#$30
0fee: c5 b7 00  mov   $00b7,a
0ff1: e8 f4     mov   a,#$f4
0ff3: 8d 19     mov   y,#$19
0ff5: da dc     movw  $dc,ya
0ff7: e8 f4     mov   a,#$f4
0ff9: 8d 1f     mov   y,#$1f
0ffb: da c9     movw  $c9,ya
0ffd: e8 f4     mov   a,#$f4
0fff: 8d 65     mov   y,#$65
1001: da cb     movw  $cb,ya
1003: da d8     movw  $d8,ya
1005: e8 f4     mov   a,#$f4
1007: 8d b7     mov   y,#$b7
1009: da cd     movw  $cd,ya
100b: da da     movw  $da,ya
100d: e8 f0     mov   a,#$f0
100f: c5 f1 00  mov   $00f1,a
1012: e8 10     mov   a,#$10
1014: c5 fa 00  mov   $00fa,a
1017: c5 fb 00  mov   $00fb,a
101a: c4 93     mov   $93,a
101c: c4 c1     mov   $c1,a
101e: e8 03     mov   a,#$03
1020: c5 f1 00  mov   $00f1,a
1023: 38 00 cf  and   $cf,#$00
1026: e8 0b     mov   a,#$0b
1028: c5 77 03  mov   $0377,a
102b: e8 00     mov   a,#$00
102d: c5 78 03  mov   $0378,a
1030: e8 15     mov   a,#$15
1032: c5 79 03  mov   $0379,a
1035: 8f 25 c1  mov   $c1,#$25
1038: 8f e0 99  mov   $99,#$e0
103b: 6f        ret

103c: 03 d0 02  bbs0  $d0,$1041
103f: 2f 0a     bra   $104b
1041: ae        pop   a
1042: ae        pop   a
1043: 5f 3c 12  jmp   $123c

1046: ae        pop   a
1047: ae        pop   a
1048: 5f 96 13  jmp   $1396

104b: 3f 1a 13  call  $131a
104e: 1c        asl   a
104f: 5d        mov   x,a
1050: 1f 53 10  jmp   ($1053+x)

1051: dw $1053

1053: dw $1330
1055: dw $106d
1057: dw $1089
1059: dw $109e
105b: dw $10b3
105d: dw $10f6
105f: dw $1112
1061: dw $1130
1063: dw $1152
1065: dw $1177
1067: dw $11a5
1069: dw $121f
106b: dw $122d

106d: 3f 71 13  call  $1371
1070: 8d 16     mov   y,#$16
1072: e8 00     mov   a,#$00
1074: da c7     movw  $c7,ya
1076: da b3     movw  $b3,ya
1078: ec 65 03  mov   y,$0365
107b: e5 64 03  mov   a,$0364
107e: da aa     movw  $aa,ya
1080: e8 00     mov   a,#$00
1082: c5 62 03  mov   $0362,a
1085: 3f 3c 12  call  $123c
1088: 6f        ret

1089: ba c9     movw  ya,$c9
108b: da b6     movw  $b6,ya
108d: e5 77 03  mov   a,$0377
1090: c5 7a 03  mov   $037a,a
1093: 3f 86 12  call  $1286
1096: ac 77 03  inc   $0377
1099: ba b3     movw  ya,$b3
109b: da c9     movw  $c9,ya
109d: 6f        ret

109e: ba cb     movw  ya,$cb
10a0: da b6     movw  $b6,ya
10a2: e5 78 03  mov   a,$0378
10a5: c5 7a 03  mov   $037a,a
10a8: 3f 86 12  call  $1286
10ab: ac 78 03  inc   $0378
10ae: ba b3     movw  ya,$b3
10b0: da cb     movw  $cb,ya
10b2: 6f        ret

10b3: 3f 89 13  call  $1389
10b6: e5 64 03  mov   a,$0364
10b9: c5 78 03  mov   $0378,a
10bc: c5 7a 03  mov   $037a,a
10bf: fd        mov   y,a
10c0: e8 00     mov   a,#$00
10c2: d6 b8 14  mov   $14b8+y,a
10c5: fc        inc   y
10c6: ad 0b     cmp   y,#$0b
10c8: d0 f8     bne   $10c2
10ca: e5 78 03  mov   a,$0378
10cd: 68 00     cmp   a,#$00
10cf: f0 20     beq   $10f1
10d1: ac 7a 03  inc   $037a
10d4: ec 7a 03  mov   y,$037a
10d7: e8 04     mov   a,#$04
10d9: cf        mul   ya
10da: 60        clrc
10db: a8 03     sbc   a,#$03
10dd: 7a ba     addw  ya,$ba
10df: c5 b8 00  mov   $00b8,a
10e2: cc b9 00  mov   $00b9,y
10e5: 8d 00     mov   y,#$00
10e7: f7 b8     mov   a,($b8)+y
10e9: c4 cb     mov   $cb,a
10eb: fc        inc   y
10ec: f7 b8     mov   a,($b8)+y
10ee: c4 cc     mov   $cc,a
10f0: 6f        ret

10f1: ba d8     movw  ya,$d8
10f3: da cb     movw  $cb,ya
10f5: 6f        ret

10f6: 3f 71 13  call  $1371
10f9: ba dc     movw  ya,$dc
10fb: da ac     movw  $ac,ya
10fd: da b0     movw  $b0,ya
10ff: da b3     movw  $b3,ya
1101: ec 65 03  mov   y,$0365
1104: e5 64 03  mov   a,$0364
1107: da aa     movw  $aa,ya
1109: e8 00     mov   a,#$00
110b: c5 62 03  mov   $0362,a
110e: 3f 3c 12  call  $123c
1111: 6f        ret

1112: ba cd     movw  ya,$cd
1114: da b6     movw  $b6,ya
1116: e5 79 03  mov   a,$0379
1119: c5 7a 03  mov   $037a,a
111c: 3f 86 12  call  $1286
111f: ac 79 03  inc   $0379
1122: e5 79 03  mov   a,$0379
1125: 68 19     cmp   a,#$19
1127: d0 02     bne   $112b
1129: 42 cf     set2  $cf
112b: ba b3     movw  ya,$b3
112d: da cd     movw  $cd,ya
112f: 6f        ret

1130: 52 cf     clr2  $cf
1132: e8 15     mov   a,#$15
1134: c5 79 03  mov   $0379,a
1137: e8 00     mov   a,#$00
1139: 8d 15     mov   y,#$15
113b: d6 b8 14  mov   $14b8+y,a
113e: 8d 16     mov   y,#$16
1140: d6 b8 14  mov   $14b8+y,a
1143: 8d 17     mov   y,#$17
1145: d6 b8 14  mov   $14b8+y,a
1148: 8d 18     mov   y,#$18
114a: d6 b8 14  mov   $14b8+y,a
114d: ba da     movw  ya,$da
114f: da cd     movw  $cd,ya
1151: 6f        ret

1152: 3f 79 13  call  $1379
1155: e5 64 03  mov   a,$0364
1158: d0 09     bne   $1163
115a: 8f e0 99  mov   $99,#$e0
115d: 8f 00 9a  mov   $9a,#$00
1160: 5f b1 0b  jmp   $0bb1

1163: b2 cf     clr5  $cf
1165: 8f 00 99  mov   $99,#$00
1168: e5 65 03  mov   a,$0365
116b: c4 9a     mov   $9a,a
116d: e8 e0     mov   a,#$e0
116f: c4 9b     mov   $9b,a
1171: 3f 57 07  call  $0757
1174: 5f b1 0b  jmp   $0bb1
1177: 3f 79 13  call  $1379
117a: e5 64 03  mov   a,$0364
117d: d0 07     bne   $1186
117f: 12 cf     clr0  $cf
1181: 62 cf     set3  $cf
1183: 5f c1 0b  jmp   $0bc1

1186: e5 65 03  mov   a,$0365
1189: c4 9a     mov   $9a,a
118b: e8 00     mov   a,#$00
118d: c4 9b     mov   $9b,a
118f: 3f 57 07  call  $0757
1192: a2 cf     set5  $cf
1194: 6f        ret

1195: db $01,$02,$04,$08,$10,$20,$40,$80

119d: db $00,$02,$04,$06,$08,$0A,$0C,$0E

11a5: 3f 89 13  call  $1389
11a8: e9 65 03  mov   x,$0365
11ab: f5 95 11  mov   a,$1195+x
11ae: 2d        push  a
11af: e9 65 03  mov   x,$0365
11b2: f5 9d 11  mov   a,$119d+x
11b5: 5d        mov   x,a
11b6: e8 00     mov   a,#$00
11b8: d5 11 02  mov   $0211+x,a
11bb: d5 11 03  mov   $0311+x,a
11be: d5 b1 02  mov   $02b1+x,a
11c1: d5 50 03  mov   $0350+x,a
11c4: d5 70 02  mov   $0270+x,a
11c7: d4 41     mov   $41+x,a
11c9: d4 51     mov   $51+x,a
11cb: d5 91 02  mov   $0291+x,a
11ce: d5 90 02  mov   $0290+x,a
11d1: ae        pop   a
11d2: 0e 82 00  tset1 $0082
11d5: 4e 81 00  tclr1 $0081
11d8: 4e 85 00  tclr1 $0085
11db: c4 de     mov   $de,a
11dd: 04 d2     or    a,$d2
11df: c4 d2     mov   $d2,a
11e1: ba c7     movw  ya,$c7
11e3: da d3     movw  $d3,ya
11e5: e5 64 03  mov   a,$0364
11e8: 8d 02     mov   y,#$02
11ea: cf        mul   ya
11eb: 7a d3     addw  ya,$d3
11ed: da d3     movw  $d3,ya
11ef: 8d 00     mov   y,#$00
11f1: f7 d3     mov   a,($d3)+y
11f3: 2d        push  a
11f4: 3a d3     incw  $d3
11f6: f7 d3     mov   a,($d3)+y
11f8: 2d        push  a
11f9: e9 65 03  mov   x,$0365
11fc: f5 9d 11  mov   a,$119d+x
11ff: 5d        mov   x,a
1200: ae        pop   a
1201: d4 01     mov   $01+x,a
1203: ae        pop   a
1204: d4 00     mov   $00+x,a
1206: e8 00     mov   a,#$00
1208: d4 60     mov   $60+x,a
120a: d4 20     mov   $20+x,a
120c: d4 21     mov   $21+x,a
120e: bc        inc   a
120f: d4 10     mov   $10+x,a
1211: e9 65 03  mov   x,$0365
1214: f5 9d 11  mov   a,$119d+x
1217: 5d        mov   x,a
1218: e5 66 03  mov   a,$0366
121b: 3f d3 06  call  $06d3
121e: 6f        ret

121f: 3f 58 13  call  $1358
1222: e5 64 03  mov   a,$0364
1225: d0 03     bne   $122a
1227: d2 cf     clr6  $cf
1229: 6f        ret

122a: c2 cf     set6  $cf
122c: 6f        ret

122d: e3 cf 07  bbs7  $cf,$1237
1230: 12 cf     clr0  $cf
1232: e2 cf     set7  $cf
1234: 5f c1 0b  jmp   $0bc1
1237: 02 cf     set0  $cf
1239: f2 cf     clr7  $cf
123b: 6f        ret

123c: e8 0c     mov   a,#$0c
123e: c5 62 03  mov   $0362,a
1241: 8d 00     mov   y,#$00
1243: e8 01     mov   a,#$01
1245: c5 f7 00  mov   $00f7,a
1248: e5 f7 00  mov   a,$00f7
124b: 68 02     cmp   a,#$02
124d: d0 f9     bne   $1248
124f: e4 f4     mov   a,$f4
1251: d7 b3     mov   ($b3)+y,a
1253: 3a b3     incw  $b3
1255: e4 f5     mov   a,$f5
1257: d7 b3     mov   ($b3)+y,a
1259: 3a b3     incw  $b3
125b: e4 f6     mov   a,$f6
125d: d7 b3     mov   ($b3)+y,a
125f: 3a b3     incw  $b3
1261: e8 00     mov   a,#$00
1263: c5 f7 00  mov   $00f7,a
1266: e5 f7 00  mov   a,$00f7
1269: 68 02     cmp   a,#$02
126b: f0 f9     beq   $1266
126d: 1a aa     decw  $aa
126f: f0 12     beq   $1283
1271: 03 cf 02  bbs0  $cf,$1276
1274: 2f c6     bra   $123c
1276: 8c 62 03  dec   $0362
1279: d0 05     bne   $1280
127b: 02 d0     set0  $d0
127d: 5f a1 05  jmp   $05a1

1280: 5f 43 12  jmp   $1243
1283: 12 d0     clr0  $d0
1285: 6f        ret

1286: 3f 81 13  call  $1381
1289: e5 64 03  mov   a,$0364
128c: ec 7a 03  mov   y,$037a
128f: d6 b8 14  mov   $14b8+y,a
1292: e8 06     mov   a,#$06
1294: ec 7a 03  mov   y,$037a
1297: cf        mul   ya
1298: fd        mov   y,a
1299: e5 7a 03  mov   a,$037a
129c: d6 00 04  mov   $0400+y,a
129f: ac 7a 03  inc   $037a
12a2: fc        inc   y
12a3: cc b5 00  mov   $00b5,y
12a6: ec 7a 03  mov   y,$037a
12a9: e8 04     mov   a,#$04
12ab: cf        mul   ya
12ac: 60        clrc
12ad: a8 03     sbc   a,#$03
12af: 7a ba     addw  ya,$ba
12b1: c5 b8 00  mov   $00b8,a
12b4: cc b9 00  mov   $00b9,y
12b7: e5 65 03  mov   a,$0365
12ba: ec 66 03  mov   y,$0366
12bd: 7a b6     addw  ya,$b6
12bf: da bc     movw  $bc,ya
12c1: 8d 00     mov   y,#$00
12c3: e4 b6     mov   a,$b6
12c5: d7 b8     mov   ($b8)+y,a
12c7: fc        inc   y
12c8: e4 b7     mov   a,$b7
12ca: d7 b8     mov   ($b8)+y,a
12cc: fc        inc   y
12cd: e4 bc     mov   a,$bc
12cf: d7 b8     mov   ($b8)+y,a
12d1: fc        inc   y
12d2: e4 bd     mov   a,$bd
12d4: d7 b8     mov   ($b8)+y,a
12d6: 3f 81 13  call  $1381
12d9: ec b5 00  mov   y,$00b5
12dc: e5 64 03  mov   a,$0364
12df: d6 00 04  mov   $0400+y,a
12e2: fc        inc   y
12e3: e5 65 03  mov   a,$0365
12e6: d6 00 04  mov   $0400+y,a
12e9: fc        inc   y
12ea: e5 66 03  mov   a,$0366
12ed: d6 00 04  mov   $0400+y,a
12f0: fc        inc   y
12f1: cc b5 00  mov   $00b5,y
12f4: 3f 71 13  call  $1371
12f7: ec b5 00  mov   y,$00b5
12fa: e5 64 03  mov   a,$0364
12fd: d6 00 04  mov   $0400+y,a
1300: fc        inc   y
1301: e5 65 03  mov   a,$0365
1304: d6 00 04  mov   $0400+y,a
1307: 3f 71 13  call  $1371
130a: ec 65 03  mov   y,$0365
130d: e5 64 03  mov   a,$0364
1310: da aa     movw  $aa,ya
1312: ba b6     movw  ya,$b6
1314: da b3     movw  $b3,ya
1316: 3f 3c 12  call  $123c
1319: 6f        ret

131a: e4 cf     mov   a,$cf
131c: c5 f4 00  mov   $00f4,a
131f: e8 01     mov   a,#$01
1321: c5 f7 00  mov   $00f7,a
1324: e5 f7 00  mov   a,$00f7
1327: 65 f7 00  cmp   a,$00f7
132a: d0 f8     bne   $1324
132c: 28 02     and   a,#$02
132e: d0 01     bne   $1331
1330: 6f        ret

1331: e8 00     mov   a,#$00
1333: c5 f7 00  mov   $00f7,a
1336: 2f 2b     bra   $1363
1338: e5 f4 00  mov   a,$00f4
133b: ec f5 00  mov   y,$00f5
133e: c5 64 03  mov   $0364,a
1341: cc 65 03  mov   $0365,y
1344: 6f        ret

1345: ec f4 00  mov   y,$00f4
1348: e5 f5 00  mov   a,$00f5
134b: e9 f6 00  mov   x,$00f6
134e: cc 64 03  mov   $0364,y
1351: c5 65 03  mov   $0365,a
1354: c9 66 03  mov   $0366,x
1357: 6f        ret

1358: 3f a5 13  call  $13a5
135b: e5 f4 00  mov   a,$00f4
135e: c5 64 03  mov   $0364,a
1361: 2f 5b     bra   $13be
1363: e5 f4 00  mov   a,$00f4
1366: 65 f4 00  cmp   a,$00f4
1369: d0 f8     bne   $1363
136b: c5 64 03  mov   $0364,a
136e: 5f c8 13  jmp   $13c8

1371: 3f a5 13  call  $13a5
1374: 3f 38 13  call  $1338
1377: 2f 4f     bra   $13c8
1379: 3f 91 13  call  $1391
137c: 3f 38 13  call  $1338
137f: 2f 3d     bra   $13be
1381: 3f a5 13  call  $13a5
1384: 3f 45 13  call  $1345
1387: 2f 3f     bra   $13c8
1389: 3f a5 13  call  $13a5
138c: 3f 45 13  call  $1345
138f: 2f 2d     bra   $13be
1391: e8 01     mov   a,#$01
1393: c5 f7 00  mov   $00f7,a
1396: e5 f7 00  mov   a,$00f7
1399: 68 02     cmp   a,#$02
139b: d0 f9     bne   $1396
139d: e5 f7 00  mov   a,$00f7
13a0: 68 02     cmp   a,#$02
13a2: d0 f2     bne   $1396
13a4: 6f        ret

13a5: e8 01     mov   a,#$01
13a7: c5 f7 00  mov   $00f7,a
13aa: e5 f7 00  mov   a,$00f7
13ad: 68 02     cmp   a,#$02
13af: d0 f9     bne   $13aa
13b1: e5 f7 00  mov   a,$00f7
13b4: 68 02     cmp   a,#$02
13b6: d0 f2     bne   $13aa
13b8: e8 00     mov   a,#$00
13ba: c5 f7 00  mov   $00f7,a
13bd: 6f        ret

13be: 6d        push  y
13bf: 8d 08     mov   y,#$08
13c1: cc f7 00  mov   $00f7,y
13c4: ee        pop   y
13c5: 2d        push  a
13c6: 2f 08     bra   $13d0
13c8: 6d        push  y
13c9: 8d 04     mov   y,#$04
13cb: cc f7 00  mov   $00f7,y
13ce: ee        pop   y
13cf: 2d        push  a
13d0: e5 f7 00  mov   a,$00f7
13d3: 28 02     and   a,#$02
13d5: d0 f9     bne   $13d0
13d7: e5 f7 00  mov   a,$00f7
13da: 28 02     and   a,#$02
13dc: d0 f2     bne   $13d0
13de: ae        pop   a
13df: 6f        ret

; vcmd dispatch table
13e0: dw $0f0b	; e0 - set instrument
13e2: dw $06d3	; e1 - pan
13e4: dw $06e6	; e2 - pan fade
13e6: dw $0712	; e3 - vibrato on
13e8: dw $072a	; e4 - vibrato off
13ea: dw $0745	; e5 - master volume
13ec: dw $074a	; e6 - master volume fade
13ee: dw $0762	; e7 - tempo
13f0: dw $0767	; e8 - tempo fade
13f2: dw $077f	; e9 - global transpose
13f4: dw $0782	; ea - per-voice transpose
13f6: dw $0786	; eb - tremolo on
13f8: dw $079e	; ec - tremolo off
13fa: dw $07cb	; ed - volume
13fc: dw $07d4	; ee - volume fade
13fe: dw $07f7	; ef - call subroutine
1400: dw $0735	; f0 - vibrato fade
1402: dw $07a1	; f1 - pitch envelope (release)
1404: dw $07a5	; f2 - pitch envelope (attack)
1406: dw $07c7	; f3 - pitch envelope off
1408: dw $07f3	; f4 - tuning
140a: dw $082b	; f5 - echo vbits/volume
140c: dw $087e	; f6 - disable echo
140e: dw $0885	; f7 - set echo params
1410: dw $084a	; f8 - echo volume slide
1412: dw $0918	; f9 - pitch slide
1414: dw $08ff	; fa - set perc patch base

; vcmd lengths
1416: db $00,$00,$00,$00,$00,$00,$00,$00 ; d8-df?
141e: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
1426: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
142e: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
1436: db $03,$03,$01,$02,$00,$00,$00	 ; f8-fe

; pitch table
143d: dw $085f
143f: dw $08de
1441: dw $0965
1443: dw $09f4
1445: dw $0a8c
1447: dw $0b2c
1449: dw $0bd6
144b: dw $0c8b
144d: dw $0d4a
144f: dw $0e14
1451: dw $0eea
1453: dw $0fcd
1455: dw $10be

; pan table
1457: db $00,$01,$03,$07,$0d,$15,$1e,$29
145f: db $34,$42,$51,$5e,$67,$6e,$73,$77
1467: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
146c: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
1474: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
146c: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
1474: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs for dsp regs
148c: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1496: db $a0,$a2,$8a,$86,$84,$81,$df,$85,$87,$82

; note dur%'s
14a0: db $32,$b2,$bf,$cb,$d8,$e5,$f2,$fc
; per-note velocity values
14a8: db $19,$32,$4c,$65,$72,$7f,$8c,$98
14b0: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

14b8: db $05,$01,$07,$06,$05