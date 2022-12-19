; Shin Megami Tensei II (Japan) (Rev 2)
0500: 20        clrp
0501: cd ff     mov   x,#$ff
0503: bd        mov   sp,x
0504: e8 00     mov   a,#$00
0506: 5d        mov   x,a
0507: af        mov   (x)+,a
0508: c8 e0     cmp   x,#$e0
050a: d0 fb     bne   $0507
050c: cd c0     mov   x,#$c0
050e: 1d        dec   x
050f: d5 00 01  mov   $0100+x,a
0512: d0 fa     bne   $050e
0514: 5d        mov   x,a
0515: d5 00 02  mov   $0200+x,a
0518: d5 00 03  mov   $0300+x,a
051b: d5 00 04  mov   $0400+x,a
051e: 3d        inc   x
051f: d0 f4     bne   $0515
0521: 3f 84 06  call  $0684
0524: e8 00     mov   a,#$00
0526: c5 f4 00  mov   $00f4,a
0529: bc        inc   a
052a: c5 f5 00  mov   $00f5,a
052d: 8f 40 b9  mov   $b9,#$40
0530: 8f 34 ba  mov   $ba,#$34
0533: 8f f2 bb  mov   $bb,#$f2
0536: 8f 7f bc  mov   $bc,#$7f
0539: e5 fd 00  mov   a,$00fd
053c: f0 03     beq   $0541
053e: 3f 1c 07  call  $071c
0541: e5 fe 00  mov   a,$00fe
0544: f0 03     beq   $0549
0546: 3f 50 07  call  $0750
0549: e8 ff     mov   a,#$ff
054b: c5 f5 00  mov   $00f5,a
054e: 8d 04     mov   y,#$04
0550: fe fe     dbnz  y,$0550
0552: e5 f4 00  mov   a,$00f4
0555: c4 b4     mov   $b4,a
0557: e5 f5 00  mov   a,$00f5
055a: c4 b5     mov   $b5,a
055c: e5 f6 00  mov   a,$00f6
055f: c4 b6     mov   $b6,a
0561: e5 f7 00  mov   a,$00f7
0564: c4 b7     mov   $b7,a
0566: e8 33     mov   a,#$33
0568: c5 f1 00  mov   $00f1,a
056b: ab bd     inc   $bd
056d: e4 bd     mov   a,$bd
056f: c5 f4 00  mov   $00f4,a
0572: 43 b0 05  bbs2  $b0,$057a
0575: e8 00     mov   a,#$00
0577: c5 f5 00  mov   $00f5,a
057a: cd ff     mov   x,#$ff
057c: 3d        inc   x
057d: c8 05     cmp   x,#$05
057f: f0 b8     beq   $0539
0581: f4 b4     mov   a,$b4+x
0583: f0 f7     beq   $057c
0585: 68 f0     cmp   a,#$f0
0587: 90 07     bcc   $0590
0589: 4d        push  x
058a: 3f 34 0e  call  $0e34
058d: ce        pop   x
058e: 2f 10     bra   $05a0
0590: 68 e0     cmp   a,#$e0
0592: b0 12     bcs   $05a6
0594: 68 1f     cmp   a,#$1f
0596: f0 03     beq   $059b
0598: 43 b0 05  bbs2  $b0,$05a0
059b: 4d        push  x
059c: 3f b1 05  call  $05b1
059f: ce        pop   x
05a0: e8 00     mov   a,#$00
05a2: d4 b4     mov   $b4+x,a
05a4: 2f d6     bra   $057c
05a6: 28 07     and   a,#$07
05a8: 5d        mov   x,a
05a9: f5 e8 16  mov   a,$16e8+x
05ac: c4 c1     mov   $c1,a
05ae: 5f 39 05  jmp   $0539

05b1: 13 b0 01  bbc0  $b0,$05b5
05b4: 6f        ret

05b5: 5d        mov   x,a
05b6: 10 10     bpl   $05c8
05b8: 28 7f     and   a,#$7f
05ba: 1c        asl   a
05bb: 5d        mov   x,a
05bc: f5 66 19  mov   a,$1966+x
05bf: c4 00     mov   $00,a
05c1: f5 67 19  mov   a,$1967+x
05c4: c4 01     mov   $01,a
05c6: 2f 0c     bra   $05d4
05c8: 1c        asl   a
05c9: 5d        mov   x,a
05ca: f5 66 18  mov   a,$1866+x
05cd: c4 00     mov   $00,a
05cf: f5 67 18  mov   a,$1867+x
05d2: c4 01     mov   $01,a
05d4: 8d ff     mov   y,#$ff
05d6: fc        inc   y
05d7: f7 00     mov   a,($00)+y
05d9: 30 40     bmi   $061b
05db: 5d        mov   x,a
05dc: f5 d8 16  mov   a,$16d8+x
05df: c8 08     cmp   x,#$08
05e1: b0 06     bcs   $05e9
05e3: 04 02     or    a,$02
05e5: c4 02     mov   $02,a
05e7: 2f 04     bra   $05ed
05e9: 04 03     or    a,$03
05eb: c4 03     mov   $03,a
05ed: fc        inc   y
05ee: f7 00     mov   a,($00)+y
05f0: d5 20 02  mov   $0220+x,a
05f3: fc        inc   y
05f4: f7 00     mov   a,($00)+y
05f6: d5 30 02  mov   $0230+x,a
05f9: e8 00     mov   a,#$00
05fb: d5 00 02  mov   $0200+x,a
05fe: d5 10 02  mov   $0210+x,a
0601: d5 70 02  mov   $0270+x,a
0604: d5 80 02  mov   $0280+x,a
0607: d5 a0 02  mov   $02a0+x,a
060a: d5 b0 02  mov   $02b0+x,a
060d: d5 00 01  mov   $0100+x,a
0610: d5 90 02  mov   $0290+x,a
0613: d5 30 01  mov   $0130+x,a
0616: bc        inc   a
0617: d4 10     mov   $10+x,a
0619: 2f bb     bra   $05d6
061b: 28 0f     and   a,#$0f
061d: 1c        asl   a
061e: 5d        mov   x,a
061f: 1f 22 06  jmp   ($0622+x)

0622: dw $0645
0624: dw $064d
0626: dw $0665
0628: dw $066d
062a: dw $0642
062c: dw $0642
062e: dw $0642
0630: dw $0642
0632: dw $0642
0634: dw $0642
0636: dw $0642
0638: dw $0642
063a: dw $0642
063c: dw $0642
063e: dw $0642
0640: dw $0683

0642: 5f d6 05  jmp   $05d6
0645: 6d        push  y
0646: 3f 84 06  call  $0684
0649: ee        pop   y
064a: 5f d6 05  jmp   $05d6

064d: e8 02     mov   a,#$02
064f: c5 f1 00  mov   $00f1,a
0652: fc        inc   y
0653: f7 00     mov   a,($00)+y
0655: 60        clrc
0656: 88 80     adc   a,#$80
0658: c5 fa 00  mov   $00fa,a
065b: c4 c4     mov   $c4,a
065d: e8 03     mov   a,#$03
065f: c5 f1 00  mov   $00f1,a
0662: 5f d6 05  jmp   $05d6

0665: fc        inc   y
0666: f7 00     mov   a,($00)+y
0668: c4 b3     mov   $b3,a
066a: 5f d6 05  jmp   $05d6

066d: e8 02     mov   a,#$02
066f: c5 f1 00  mov   $00f1,a
0672: fc        inc   y
0673: f7 00     mov   a,($00)+y
0675: 60        clrc
0676: 88 80     adc   a,#$80
0678: c5 fa 00  mov   $00fa,a
067b: e8 03     mov   a,#$03
067d: c5 f1 00  mov   $00f1,a
0680: 5f d6 05  jmp   $05d6

0683: 6f        ret

0684: 8d 6c     mov   y,#$6c
0686: cc f2 00  mov   $00f2,y
0689: e8 e0     mov   a,#$e0
068b: c5 f3 00  mov   $00f3,a
068e: e8 00     mov   a,#$00
0690: c4 02     mov   $02,a
0692: c4 03     mov   $03,a
0694: c4 b0     mov   $b0,a
0696: c5 f1 00  mov   $00f1,a
0699: c5 f7 00  mov   $00f7,a
069c: 8d 4d     mov   y,#$4d
069e: cc f2 00  mov   $00f2,y
06a1: c5 f3 00  mov   $00f3,a
06a4: 8d 2c     mov   y,#$2c
06a6: cc f2 00  mov   $00f2,y
06a9: c5 f3 00  mov   $00f3,a
06ac: 8d 7d     mov   y,#$7d
06ae: cc f2 00  mov   $00f2,y
06b1: c5 f3 00  mov   $00f3,a
06b4: 8d 6d     mov   y,#$6d
06b6: cc f2 00  mov   $00f2,y
06b9: 9c        dec   a
06ba: c5 f3 00  mov   $00f3,a
06bd: 8d 3c     mov   y,#$3c
06bf: cc f2 00  mov   $00f2,y
06c2: bc        inc   a
06c3: c5 f3 00  mov   $00f3,a
06c6: 8d 0d     mov   y,#$0d
06c8: cc f2 00  mov   $00f2,y
06cb: c5 f3 00  mov   $00f3,a
06ce: 8d 2d     mov   y,#$2d
06d0: cc f2 00  mov   $00f2,y
06d3: c5 f3 00  mov   $00f3,a
06d6: 8d 3d     mov   y,#$3d
06d8: cc f2 00  mov   $00f2,y
06db: c5 f3 00  mov   $00f3,a
06de: 8d 0c     mov   y,#$0c
06e0: cc f2 00  mov   $00f2,y
06e3: e8 60     mov   a,#$60
06e5: c5 f3 00  mov   $00f3,a
06e8: 8d 1c     mov   y,#$1c
06ea: cc f2 00  mov   $00f2,y
06ed: c5 f3 00  mov   $00f3,a
06f0: 8d 5d     mov   y,#$5d
06f2: cc f2 00  mov   $00f2,y
06f5: e8 34     mov   a,#$34
06f7: c5 f3 00  mov   $00f3,a
06fa: 8d 6c     mov   y,#$6c
06fc: cc f2 00  mov   $00f2,y
06ff: e8 14     mov   a,#$14
0701: c5 f3 00  mov   $00f3,a
0704: e8 80     mov   a,#$80
0706: c5 fa 00  mov   $00fa,a
0709: c5 fb 00  mov   $00fb,a
070c: e8 33     mov   a,#$33
070e: c5 f1 00  mov   $00f1,a
0711: e8 5c     mov   a,#$5c
0713: c5 f2 00  mov   $00f2,a
0716: e8 00     mov   a,#$00
0718: c5 f3 00  mov   $00f3,a
071b: 6f        ret

071c: fa 02 06  mov   ($06),($02)
071f: fa c1 c2  mov   ($c2),($c1)
0722: 8f ff 08  mov   $08,#$ff
0725: 2f 02     bra   $0729
0727: 4b c2     lsr   $c2
0729: ab 08     inc   $08
072b: 4b 06     lsr   $06
072d: 90 1e     bcc   $074d
072f: 0d        push  psw
0730: f8 08     mov   x,$08
0732: 8f 01 b1  mov   $b1,#$01
0735: f5 d8 16  mov   a,$16d8+x
0738: 24 03     and   a,$03
073a: f0 03     beq   $073f
073c: 8f 03 b1  mov   $b1,#$03
073f: f5 00 02  mov   a,$0200+x
0742: c4 b2     mov   $b2,a
0744: 3f 8d 07  call  $078d
0747: e4 b2     mov   a,$b2
0749: d5 00 02  mov   $0200+x,a
074c: 8e        pop   psw
074d: d0 d8     bne   $0727
074f: 6f        ret

0750: fa 03 06  mov   ($06),($03)
0753: fa c1 c2  mov   ($c2),($c1)
0756: 8f 07 08  mov   $08,#$07
0759: 8f 00 b1  mov   $b1,#$00
075c: 2f 02     bra   $0760
075e: 4b c2     lsr   $c2
0760: ab 08     inc   $08
0762: 4b 06     lsr   $06
0764: 90 1e     bcc   $0784
0766: 0d        push  psw
0767: 8f 00 b1  mov   $b1,#$00
076a: f8 08     mov   x,$08
076c: f5 d8 16  mov   a,$16d8+x
076f: 24 02     and   a,$02
0771: f0 03     beq   $0776
0773: 8f 04 b1  mov   $b1,#$04
0776: f5 00 02  mov   a,$0200+x
0779: c4 b2     mov   $b2,a
077b: 3f 8d 07  call  $078d
077e: e4 b2     mov   a,$b2
0780: d5 00 02  mov   $0200+x,a
0783: 8e        pop   psw
0784: d0 d8     bne   $075e
0786: 53 b0 03  bbc2  $b0,$078c
0789: 3f f0 0d  call  $0df0
078c: 6f        ret

078d: 9b 10     dec   $10+x
078f: d0 03     bne   $0794
0791: 5f c2 07  jmp   $07c2

0794: a3 b2 2a  bbs5  $b2,$07c1
0797: 13 b2 03  bbc0  $b2,$079d
079a: 3f 70 0d  call  $0d70
079d: d3 b2 03  bbc6  $b2,$07a3
07a0: 3f ad 0d  call  $0dad
07a3: 9b 40     dec   $40+x
07a5: d0 1a     bne   $07c1
07a7: 43 b2 17  bbs2  $b2,$07c1
07aa: 23 b1 14  bbs1  $b1,$07c1
07ad: 03 c2 11  bbs0  $c2,$07c1
07b0: 7d        mov   a,x
07b1: 28 07     and   a,#$07
07b3: 9f        xcn   a
07b4: 08 05     or    a,#$05
07b6: c5 f2 00  mov   $00f2,a
07b9: e5 f3 00  mov   a,$00f3
07bc: 28 7f     and   a,#$7f
07be: c5 f3 00  mov   $00f3,a
07c1: 6f        ret

07c2: f5 20 02  mov   a,$0220+x
07c5: c4 00     mov   $00,a
07c7: f5 30 02  mov   a,$0230+x
07ca: c4 01     mov   $01,a
07cc: 2f 02     bra   $07d0
07ce: 3a 00     incw  $00
07d0: f8 08     mov   x,$08
07d2: 8d 00     mov   y,#$00
07d4: f7 00     mov   a,($00)+y
07d6: 30 33     bmi   $080b
07d8: 68 60     cmp   a,#$60
07da: b0 03     bcs   $07df
07dc: 5f 8c 08  jmp   $088c

07df: 28 1f     and   a,#$1f
07e1: fd        mov   y,a
07e2: f6 78 16  mov   a,$1678+y
07e5: d5 90 02  mov   $0290+x,a
07e8: c4 09     mov   $09,a
07ea: 3f fb 07  call  $07fb
07ed: d5 50 00  mov   $0050+x,a
07f0: e4 09     mov   a,$09
07f2: 9f        xcn   a
07f3: 3f fb 07  call  $07fb
07f6: d5 60 00  mov   $0060+x,a
07f9: 2f d3     bra   $07ce
07fb: 28 0f     and   a,#$0f
07fd: 1c        asl   a
07fe: 60        clrc
07ff: 95 70 02  adc   a,$0270+x
0802: 10 02     bpl   $0806
0804: e8 7f     mov   a,#$7f
0806: 48 ff     eor   a,#$ff
0808: 28 7f     and   a,#$7f
080a: 6f        ret

080b: 68 c0     cmp   a,#$c0
080d: 90 07     bcc   $0816
080f: 28 3f     and   a,#$3f
0811: 1c        asl   a
0812: 5d        mov   x,a
0813: 1f 6c 09  jmp   ($096c+x)

0816: 28 7f     and   a,#$7f
0818: 60        clrc
0819: 95 80 02  adc   a,$0280+x
081c: fd        mov   y,a
081d: f6 70 17  mov   a,$1770+y
0820: 80        setc
0821: b5 00 01  sbc   a,$0100+x
0824: b0 04     bcs   $082a
0826: d0 02     bne   $082a
0828: e8 01     mov   a,#$01
082a: d5 60 02  mov   $0260+x,a
082d: 80        setc
082e: b5 30 01  sbc   a,$0130+x
0831: b0 02     bcs   $0835
0833: e8 01     mov   a,#$01
0835: d5 20 01  mov   $0120+x,a
0838: 2f 94     bra   $07ce
083a: dd        mov   a,y
083b: 28 1f     and   a,#$1f
083d: 23 b0 02  bbs1  $b0,$0842
0840: 08 20     or    a,#$20
0842: d5 10 01  mov   $0110+x,a
0845: 23 b1 24  bbs1  $b1,$086c
0848: 03 c2 21  bbs0  $c2,$086c
084b: fd        mov   y,a
084c: e8 3d     mov   a,#$3d
084e: c5 f2 00  mov   $00f2,a
0851: e5 f3 00  mov   a,$00f3
0854: f0 08     beq   $085e
0856: f5 d8 16  mov   a,$16d8+x
0859: 45 f3 00  eor   a,$00f3
085c: d0 11     bne   $086f
085e: f5 d8 16  mov   a,$16d8+x
0861: c5 f3 00  mov   $00f3,a
0864: e8 6c     mov   a,#$6c
0866: c5 f2 00  mov   $00f2,a
0869: cc f3 00  mov   $00f3,y
086c: 5f 34 09  jmp   $0934

086f: 13 b1 ec  bbc0  $b1,$085e
0872: a2 b2     set5  $b2
0874: 23 b1 14  bbs1  $b1,$088b
0877: 03 c2 11  bbs0  $c2,$088b
087a: 7d        mov   a,x
087b: 28 07     and   a,#$07
087d: 9f        xcn   a
087e: 08 05     or    a,#$05
0880: c5 f2 00  mov   $00f2,a
0883: e5 f3 00  mov   a,$00f3
0886: 28 7f     and   a,#$7f
0888: c5 f3 00  mov   $00f3,a
088b: 6f        ret

088c: 3a 00     incw  $00
088e: fd        mov   y,a
088f: e4 00     mov   a,$00
0891: d5 20 02  mov   $0220+x,a
0894: e4 01     mov   a,$01
0896: d5 30 02  mov   $0230+x,a
0899: f5 60 02  mov   a,$0260+x
089c: d4 10     mov   $10+x,a
089e: f5 20 01  mov   a,$0120+x
08a1: d4 40     mov   $40+x,a
08a3: ad 3c     cmp   y,#$3c
08a5: f0 cb     beq   $0872
08a7: b2 b2     clr5  $b2
08a9: 90 0b     bcc   $08b6
08ab: ad 3d     cmp   y,#$3d
08ad: d0 07     bne   $08b6
08af: e2 b0     set7  $b0
08b1: 5f 34 09  jmp   $0934

08b4: 2f 84     bra   $083a
08b6: 03 c2 11  bbs0  $c2,$08ca
08b9: 7d        mov   a,x
08ba: 28 07     and   a,#$07
08bc: 9f        xcn   a
08bd: 08 05     or    a,#$05
08bf: c5 f2 00  mov   $00f2,a
08c2: e5 f3 00  mov   a,$00f3
08c5: 08 80     or    a,#$80
08c7: c5 f3 00  mov   $00f3,a
08ca: ad 3e     cmp   y,#$3e
08cc: d0 03     bne   $08d1
08ce: 5f 58 09  jmp   $0958

08d1: b0 e1     bcs   $08b4
08d3: 92 b2     clr4  $b2
08d5: 23 b1 11  bbs1  $b1,$08e9
08d8: 03 c2 0e  bbs0  $c2,$08e9
08db: e8 3d     mov   a,#$3d
08dd: c5 f2 00  mov   $00f2,a
08e0: f5 e8 16  mov   a,$16e8+x
08e3: 25 f3 00  and   a,$00f3
08e6: c5 f3 00  mov   $00f3,a
08e9: dd        mov   a,y
08ea: 60        clrc
08eb: 95 10 02  adc   a,$0210+x
08ee: 68 3c     cmp   a,#$3c
08f0: 90 01     bcc   $08f3
08f2: dd        mov   a,y
08f3: 1c        asl   a
08f4: fd        mov   y,a
08f5: f6 f8 16  mov   a,$16f8+y
08f8: c4 0a     mov   $0a,a
08fa: f6 f9 16  mov   a,$16f9+y
08fd: c4 0b     mov   $0b,a
08ff: f5 58 01  mov   a,$0158+x
0902: d5 68 01  mov   $0168+x,a
0905: 3f 2d 16  call  $162d
0908: 60        clrc
0909: 7a 0a     addw  ya,$0a
090b: d5 40 02  mov   $0240+x,a
090e: 23 b1 18  bbs1  $b1,$0929
0911: 03 c2 15  bbs0  $c2,$0929
0914: 5d        mov   x,a
0915: e4 08     mov   a,$08
0917: 28 07     and   a,#$07
0919: 9f        xcn   a
091a: 08 02     or    a,#$02
091c: c5 f2 00  mov   $00f2,a
091f: c9 f3 00  mov   $00f3,x
0922: bc        inc   a
0923: c5 f2 00  mov   $00f2,a
0926: cc f3 00  mov   $00f3,y
0929: dd        mov   a,y
092a: f8 08     mov   x,$08
092c: d5 50 02  mov   $0250+x,a
092f: e8 00     mov   a,#$00
0931: d5 68 01  mov   $0168+x,a
0934: 23 b1 1b  bbs1  $b1,$0952
0937: 03 c2 18  bbs0  $c2,$0952
093a: 7d        mov   a,x
093b: 28 07     and   a,#$07
093d: 9f        xcn   a
093e: fd        mov   y,a
093f: f5 50 00  mov   a,$0050+x
0942: cc f2 00  mov   $00f2,y
0945: c5 f3 00  mov   $00f3,a
0948: fc        inc   y
0949: f5 60 00  mov   a,$0060+x
094c: cc f2 00  mov   $00f2,y
094f: c5 f3 00  mov   $00f3,a
0952: e3 b0 14  bbs7  $b0,$0969
0955: 43 b2 11  bbs2  $b2,$0969
0958: 23 b1 0e  bbs1  $b1,$0969
095b: 03 c2 0b  bbs0  $c2,$0969
095e: e8 4c     mov   a,#$4c
0960: c5 f2 00  mov   $00f2,a
0963: f5 d8 16  mov   a,$16d8+x
0966: c5 f3 00  mov   $00f3,a
0969: f2 b0     clr7  $b0
096b: 6f        ret

096c: dw $0bd3
096e: dw $0bd7
0970: dw $09ec
0972: dw $09ec
0974: dw $09ec
0976: dw $09ec
0978: dw $09ec
097a: dw $09ec
097c: dw $09ec
097e: dw $09ec
0980: dw $09ec
0982: dw $09ec
0984: dw $09ec
0986: dw $09ec
0988: dw $09ec
098a: dw $0b90
098c: dw $09ef
098e: dw $09f9
0990: dw $0a61
0992: dw $09ec
0994: dw $09ec
0996: dw $09ec
0998: dw $0a03
099a: dw $0a22
099c: dw $0a31
099e: dw $0a49
09a0: dw $0b50
09a2: dw $09ec
09a4: dw $09ec
09a6: dw $09ec
09a8: dw $09ec
09aa: dw $09ec
09ac: dw $0a7a
09ae: dw $0a95
09b0: dw $0a98
09b2: dw $0a9d
09b4: dw $0aab
09b6: dw $0ac0
09b8: dw $0add
09ba: dw $0afc
09bc: dw $0b0b
09be: dw $0b29
09c0: dw $0b2e
09c2: dw $0b44
09c4: dw $0b62
09c6: dw $0b7c
09c8: dw $0b86
09ca: dw $0b8b
09cc: dw $0b94
09ce: dw $0bdb
09d0: dw $0bfd
09d2: dw $0c0c
09d4: dw $0c18
09d6: dw $0c2d
09d8: dw $0c4a
09da: dw $0c69
09dc: dw $0c78
09de: dw $0c88
09e0: dw $0c94
09e2: dw $0ca0
09e4: dw $0cac
09e6: dw $0cb1
09e8: dw $0cb6
09ea: dw $0cbf

09ec: 5f ce 07  jmp   $07ce
09ef: f8 08     mov   x,$08
09f1: e8 01     mov   a,#$01
09f3: d5 30 01  mov   $0130+x,a
09f6: 5f ce 07  jmp   $07ce

09f9: f8 08     mov   x,$08
09fb: e8 00     mov   a,#$00
09fd: d5 30 01  mov   $0130+x,a
0a00: 5f ce 07  jmp   $07ce

0a03: f8 08     mov   x,$08
0a05: 3a 00     incw  $00
0a07: f7 00     mov   a,($00)+y
0a09: c4 09     mov   $09,a
0a0b: 3a 00     incw  $00
0a0d: f7 00     mov   a,($00)+y
0a0f: fd        mov   y,a
0a10: e4 00     mov   a,$00
0a12: d5 40 03  mov   $0340+x,a
0a15: e4 01     mov   a,$01
0a17: d5 50 03  mov   $0350+x,a
0a1a: fa 09 00  mov   ($00),($09)
0a1d: cb 01     mov   $01,y
0a1f: 5f d0 07  jmp   $07d0

0a22: f8 08     mov   x,$08
0a24: f5 40 03  mov   a,$0340+x
0a27: c4 00     mov   $00,a
0a29: f5 50 03  mov   a,$0350+x
0a2c: c4 01     mov   $01,a
0a2e: 5f ce 07  jmp   $07ce

0a31: f8 08     mov   x,$08
0a33: 9b 30     dec   $30+x
0a35: f0 05     beq   $0a3c
0a37: bb 30     inc   $30+x
0a39: 5f ce 07  jmp   $07ce

0a3c: f5 00 03  mov   a,$0300+x
0a3f: c4 00     mov   $00,a
0a41: f5 10 03  mov   a,$0310+x
0a44: c4 01     mov   $01,a
0a46: 5f ce 07  jmp   $07ce

0a49: f8 08     mov   x,$08
0a4b: 9b 20     dec   $20+x
0a4d: f0 05     beq   $0a54
0a4f: bb 20     inc   $20+x
0a51: 5f ce 07  jmp   $07ce

0a54: f5 20 03  mov   a,$0320+x
0a57: c4 00     mov   $00,a
0a59: f5 30 03  mov   a,$0330+x
0a5c: c4 01     mov   $01,a
0a5e: 5f ce 07  jmp   $07ce

0a61: 3a 00     incw  $00
0a63: f7 00     mov   a,($00)+y
0a65: 60        clrc
0a66: 2d        push  a
0a67: e8 02     mov   a,#$02
0a69: c5 f1 00  mov   $00f1,a
0a6c: ae        pop   a
0a6d: 88 80     adc   a,#$80
0a6f: c5 fa 00  mov   $00fa,a
0a72: e8 33     mov   a,#$33
0a74: c5 f1 00  mov   $00f1,a
0a77: 5f ce 07  jmp   $07ce

0a7a: 3a 00     incw  $00
0a7c: f7 00     mov   a,($00)+y
0a7e: 60        clrc
0a7f: 2d        push  a
0a80: e8 02     mov   a,#$02
0a82: c5 f1 00  mov   $00f1,a
0a85: ae        pop   a
0a86: 88 80     adc   a,#$80
0a88: c5 fa 00  mov   $00fa,a
0a8b: c4 c4     mov   $c4,a
0a8d: e8 33     mov   a,#$33
0a8f: c5 f1 00  mov   $00f1,a
0a92: 5f ce 07  jmp   $07ce

0a95: 5f ce 07  jmp   $07ce

0a98: 12 b2     clr0  $b2
0a9a: 5f ce 07  jmp   $07ce

0a9d: 02 b2     set0  $b2
0a9f: 3a 00     incw  $00
0aa1: f7 00     mov   a,($00)+y
0aa3: f8 08     mov   x,$08
0aa5: d5 b0 02  mov   $02b0+x,a
0aa8: 5f ce 07  jmp   $07ce

0aab: 3a 00     incw  $00
0aad: f7 00     mov   a,($00)+y
0aaf: f8 08     mov   x,$08
0ab1: d4 20     mov   $20+x,a
0ab3: e4 00     mov   a,$00
0ab5: d5 70 00  mov   $0070+x,a
0ab8: e4 01     mov   a,$01
0aba: d5 80 00  mov   $0080+x,a
0abd: 5f ce 07  jmp   $07ce

0ac0: f8 08     mov   x,$08
0ac2: e4 00     mov   a,$00
0ac4: d5 20 03  mov   $0320+x,a
0ac7: e4 01     mov   a,$01
0ac9: d5 30 03  mov   $0330+x,a
0acc: 9b 20     dec   $20+x
0ace: f0 0a     beq   $0ada
0ad0: f5 70 00  mov   a,$0070+x
0ad3: c4 00     mov   $00,a
0ad5: f5 80 00  mov   a,$0080+x
0ad8: c4 01     mov   $01,a
0ada: 5f ce 07  jmp   $07ce

0add: f8 08     mov   x,$08
0adf: 3a 00     incw  $00
0ae1: f7 00     mov   a,($00)+y
0ae3: c4 09     mov   $09,a
0ae5: 3a 00     incw  $00
0ae7: f7 00     mov   a,($00)+y
0ae9: fd        mov   y,a
0aea: e4 00     mov   a,$00
0aec: d5 e0 02  mov   $02e0+x,a
0aef: e4 01     mov   a,$01
0af1: d5 f0 02  mov   $02f0+x,a
0af4: fa 09 00  mov   ($00),($09)
0af7: cb 01     mov   $01,y
0af9: 5f d0 07  jmp   $07d0

0afc: f8 08     mov   x,$08
0afe: f5 e0 02  mov   a,$02e0+x
0b01: c4 00     mov   $00,a
0b03: f5 f0 02  mov   a,$02f0+x
0b06: c4 01     mov   $01,a
0b08: 5f ce 07  jmp   $07ce

0b0b: c2 b2     set6  $b2
0b0d: f8 08     mov   x,$08
0b0f: 3a 00     incw  $00
0b11: f7 00     mov   a,($00)+y
0b13: 1c        asl   a
0b14: fd        mov   y,a
0b15: f6 b0 17  mov   a,$17b0+y
0b18: d5 78 01  mov   $0178+x,a
0b1b: f6 b1 17  mov   a,$17b1+y
0b1e: d5 88 01  mov   $0188+x,a
0b21: e8 00     mov   a,#$00
0b23: d5 68 01  mov   $0168+x,a
0b26: 5f ce 07  jmp   $07ce

0b29: d2 b2     clr6  $b2
0b2b: 5f ce 07  jmp   $07ce

0b2e: f8 08     mov   x,$08
0b30: f5 d8 16  mov   a,$16d8+x
0b33: 23 b1 0b  bbs1  $b1,$0b41
0b36: 23 c2 08  bbs1  $c2,$0b41
0b39: 8d 5c     mov   y,#$5c
0b3b: cc f2 00  mov   $00f2,y
0b3e: c5 f3 00  mov   $00f3,a
0b41: 5f ce 07  jmp   $07ce

0b44: f8 08     mov   x,$08
0b46: 3a 00     incw  $00
0b48: f7 00     mov   a,($00)+y
0b4a: d5 30 01  mov   $0130+x,a
0b4d: 5f ce 07  jmp   $07ce

0b50: e8 00     mov   a,#$00
0b52: cd 0c     mov   x,#$0c
0b54: c9 f2 00  mov   $00f2,x
0b57: c5 f3 00  mov   $00f3,a
0b5a: cd 1c     mov   x,#$1c
0b5c: c9 f2 00  mov   $00f2,x
0b5f: c5 f3 00  mov   $00f3,a
0b62: f8 08     mov   x,$08
0b64: 3a 00     incw  $00
0b66: f7 00     mov   a,($00)+y
0b68: c4 be     mov   $be,a
0b6a: c4 bf     mov   $bf,a
0b6c: 3a 00     incw  $00
0b6e: f7 00     mov   a,($00)+y
0b70: c4 c0     mov   $c0,a
0b72: 42 b0     set2  $b0
0b74: e8 fe     mov   a,#$fe
0b76: c5 f5 00  mov   $00f5,a
0b79: 5f ce 07  jmp   $07ce

0b7c: 3a 00     incw  $00
0b7e: f7 00     mov   a,($00)+y
0b80: c5 f7 00  mov   $00f7,a
0b83: 5f ce 07  jmp   $07ce

0b86: 02 b0     set0  $b0
0b88: 5f ce 07  jmp   $07ce

0b8b: 12 b0     clr0  $b0
0b8d: 5f ce 07  jmp   $07ce

0b90: e8 ff     mov   a,#$ff
0b92: 2f 04     bra   $0b98
0b94: 3a 00     incw  $00
0b96: f7 00     mov   a,($00)+y
0b98: f8 08     mov   x,$08
0b9a: 2d        push  a
0b9b: 3a 00     incw  $00
0b9d: f7 00     mov   a,($00)+y
0b9f: ee        pop   y
0ba0: 13 b1 0f  bbc0  $b1,$0bb2
0ba3: d5 48 01  mov   $0148+x,a
0ba6: 2d        push  a
0ba7: dd        mov   a,y
0ba8: d5 40 01  mov   $0140+x,a
0bab: ae        pop   a
0bac: 23 b1 21  bbs1  $b1,$0bd0
0baf: 03 c2 1e  bbs0  $c2,$0bd0
0bb2: 5d        mov   x,a
0bb3: e4 08     mov   a,$08
0bb5: 28 07     and   a,#$07
0bb7: 9f        xcn   a
0bb8: 08 05     or    a,#$05
0bba: c5 f2 00  mov   $00f2,a
0bbd: cc f3 00  mov   $00f3,y
0bc0: bc        inc   a
0bc1: c5 f2 00  mov   $00f2,a
0bc4: c9 f3 00  mov   $00f3,x
0bc7: bc        inc   a
0bc8: c5 f2 00  mov   $00f2,a
0bcb: e8 9f     mov   a,#$9f
0bcd: c5 f3 00  mov   $00f3,a
0bd0: 5f ce 07  jmp   $07ce

0bd3: e8 00     mov   a,#$00
0bd5: 2f 08     bra   $0bdf
0bd7: e8 01     mov   a,#$01
0bd9: 2f 04     bra   $0bdf
0bdb: 3a 00     incw  $00
0bdd: f7 00     mov   a,($00)+y
0bdf: f8 08     mov   x,$08
0be1: 43 b1 03  bbs2  $b1,$0be7
0be4: d5 50 01  mov   $0150+x,a
0be7: 23 b1 10  bbs1  $b1,$0bfa
0bea: 03 c2 0d  bbs0  $c2,$0bfa
0bed: fd        mov   y,a
0bee: 7d        mov   a,x
0bef: 28 07     and   a,#$07
0bf1: 9f        xcn   a
0bf2: 08 04     or    a,#$04
0bf4: c5 f2 00  mov   $00f2,a
0bf7: cc f3 00  mov   $00f3,y
0bfa: 5f ce 07  jmp   $07ce

0bfd: f8 08     mov   x,$08
0bff: 3a 00     incw  $00
0c01: f7 00     mov   a,($00)+y
0c03: d5 70 02  mov   $0270+x,a
0c06: f5 90 02  mov   a,$0290+x
0c09: 5f e8 07  jmp   $07e8

0c0c: f8 08     mov   x,$08
0c0e: 3a 00     incw  $00
0c10: f7 00     mov   a,($00)+y
0c12: d5 10 02  mov   $0210+x,a
0c15: 5f ce 07  jmp   $07ce

0c18: 3a 00     incw  $00
0c1a: f7 00     mov   a,($00)+y
0c1c: f8 08     mov   x,$08
0c1e: d4 30     mov   $30+x,a
0c20: e4 00     mov   a,$00
0c22: d5 90 00  mov   $0090+x,a
0c25: e4 01     mov   a,$01
0c27: d5 a0 00  mov   $00a0+x,a
0c2a: 5f ce 07  jmp   $07ce

0c2d: f8 08     mov   x,$08
0c2f: e4 00     mov   a,$00
0c31: d5 00 03  mov   $0300+x,a
0c34: e4 01     mov   a,$01
0c36: d5 10 03  mov   $0310+x,a
0c39: 9b 30     dec   $30+x
0c3b: f0 0a     beq   $0c47
0c3d: f5 90 00  mov   a,$0090+x
0c40: c4 00     mov   $00,a
0c42: f5 a0 00  mov   a,$00a0+x
0c45: c4 01     mov   $01,a
0c47: 5f ce 07  jmp   $07ce

0c4a: f8 08     mov   x,$08
0c4c: 3a 00     incw  $00
0c4e: f7 00     mov   a,($00)+y
0c50: c4 09     mov   $09,a
0c52: 3a 00     incw  $00
0c54: f7 00     mov   a,($00)+y
0c56: fd        mov   y,a
0c57: e4 00     mov   a,$00
0c59: d5 c0 02  mov   $02c0+x,a
0c5c: e4 01     mov   a,$01
0c5e: d5 d0 02  mov   $02d0+x,a
0c61: fa 09 00  mov   ($00),($09)
0c64: cb 01     mov   $01,y
0c66: 5f d0 07  jmp   $07d0

0c69: f8 08     mov   x,$08
0c6b: f5 c0 02  mov   a,$02c0+x
0c6e: c4 00     mov   $00,a
0c70: f5 d0 02  mov   a,$02d0+x
0c73: c4 01     mov   $01,a
0c75: 5f ce 07  jmp   $07ce

0c78: 3a 00     incw  $00
0c7a: f7 00     mov   a,($00)+y
0c7c: 5d        mov   x,a
0c7d: 3a 00     incw  $00
0c7f: f7 00     mov   a,($00)+y
0c81: d8 00     mov   $00,x
0c83: c4 01     mov   $01,a
0c85: 5f d0 07  jmp   $07d0

0c88: f8 08     mov   x,$08
0c8a: 3a 00     incw  $00
0c8c: f7 00     mov   a,($00)+y
0c8e: d5 a0 02  mov   $02a0+x,a
0c91: 5f ce 07  jmp   $07ce

0c94: f8 08     mov   x,$08
0c96: 3a 00     incw  $00
0c98: f7 00     mov   a,($00)+y
0c9a: d5 00 01  mov   $0100+x,a
0c9d: 5f ce 07  jmp   $07ce

0ca0: f8 08     mov   x,$08
0ca2: 3a 00     incw  $00
0ca4: f7 00     mov   a,($00)+y
0ca6: d5 80 02  mov   $0280+x,a
0ca9: 5f ce 07  jmp   $07ce

0cac: 42 b2     set2  $b2
0cae: 5f ce 07  jmp   $07ce

0cb1: 52 b2     clr2  $b2
0cb3: 5f ce 07  jmp   $07ce

0cb6: 3a 00     incw  $00
0cb8: f7 00     mov   a,($00)+y
0cba: c4 b8     mov   $b8,a
0cbc: 5f ce 07  jmp   $07ce

0cbf: f8 08     mov   x,$08
0cc1: cb b2     mov   $b2,y
0cc3: f5 e8 16  mov   a,$16e8+x
0cc6: 13 b1 06  bbc0  $b1,$0ccf
0cc9: 24 02     and   a,$02
0ccb: c4 02     mov   $02,a
0ccd: 2f 04     bra   $0cd3
0ccf: 24 03     and   a,$03
0cd1: c4 03     mov   $03,a
0cd3: 23 b1 2c  bbs1  $b1,$0d02
0cd6: 43 b1 2a  bbs2  $b1,$0d03
0cd9: f5 d8 16  mov   a,$16d8+x
0cdc: fd        mov   y,a
0cdd: e8 3d     mov   a,#$3d
0cdf: c5 f2 00  mov   $00f2,a
0ce2: dd        mov   a,y
0ce3: 25 f3 00  and   a,$00f3
0ce6: f0 05     beq   $0ced
0ce8: e8 00     mov   a,#$00
0cea: c5 f3 00  mov   $00f3,a
0ced: 7d        mov   a,x
0cee: 28 07     and   a,#$07
0cf0: 9f        xcn   a
0cf1: 7d        mov   a,x
0cf2: 28 07     and   a,#$07
0cf4: 9f        xcn   a
0cf5: 08 05     or    a,#$05
0cf7: c5 f2 00  mov   $00f2,a
0cfa: e5 f3 00  mov   a,$00f3
0cfd: 28 7f     and   a,#$7f
0cff: c5 f3 00  mov   $00f3,a
0d02: 6f        ret

0d03: 7d        mov   a,x
0d04: 28 07     and   a,#$07
0d06: 9f        xcn   a
0d07: 08 05     or    a,#$05
0d09: c5 f2 00  mov   $00f2,a
0d0c: e5 f3 00  mov   a,$00f3
0d0f: 28 7f     and   a,#$7f
0d11: c5 f3 00  mov   $00f3,a
0d14: 7d        mov   a,x
0d15: 28 07     and   a,#$07
0d17: 5d        mov   x,a
0d18: 9f        xcn   a
0d19: 8d 00     mov   y,#$00
0d1b: c5 f2 00  mov   $00f2,a
0d1e: cc f3 00  mov   $00f3,y
0d21: bc        inc   a
0d22: c5 f2 00  mov   $00f2,a
0d25: cc f3 00  mov   $00f3,y
0d28: fd        mov   y,a
0d29: fc        inc   y
0d2a: cc f2 00  mov   $00f2,y
0d2d: f5 40 02  mov   a,$0240+x
0d30: c5 f3 00  mov   $00f3,a
0d33: fc        inc   y
0d34: cc f2 00  mov   $00f2,y
0d37: f5 50 02  mov   a,$0250+x
0d3a: c5 f3 00  mov   $00f3,a
0d3d: fc        inc   y
0d3e: cc f2 00  mov   $00f2,y
0d41: f5 50 01  mov   a,$0150+x
0d44: c5 f3 00  mov   $00f3,a
0d47: fc        inc   y
0d48: cc f2 00  mov   $00f2,y
0d4b: f5 40 01  mov   a,$0140+x
0d4e: c5 f3 00  mov   $00f3,a
0d51: fc        inc   y
0d52: cc f2 00  mov   $00f2,y
0d55: f5 48 01  mov   a,$0148+x
0d58: c5 f3 00  mov   $00f3,a
0d5b: f5 d8 16  mov   a,$16d8+x
0d5e: fd        mov   y,a
0d5f: e8 3d     mov   a,#$3d
0d61: c5 f2 00  mov   $00f2,a
0d64: dd        mov   a,y
0d65: 25 f3 00  and   a,$00f3
0d68: f0 83     beq   $0ced
0d6a: e8 00     mov   a,#$00
0d6c: c5 f3 00  mov   $00f3,a
0d6f: 6f        ret

0d70: f5 40 02  mov   a,$0240+x
0d73: c4 0a     mov   $0a,a
0d75: f5 50 02  mov   a,$0250+x
0d78: c4 0b     mov   $0b,a
0d7a: f5 b0 02  mov   a,$02b0+x
0d7d: 30 04     bmi   $0d83
0d7f: 8d 00     mov   y,#$00
0d81: 2f 02     bra   $0d85
0d83: 8d ff     mov   y,#$ff
0d85: 7a 0a     addw  ya,$0a
0d87: ad 3f     cmp   y,#$3f
0d89: b0 21     bcs   $0dac
0d8b: d5 40 02  mov   $0240+x,a
0d8e: 23 b1 17  bbs1  $b1,$0da8
0d91: 5d        mov   x,a
0d92: e4 08     mov   a,$08
0d94: 28 07     and   a,#$07
0d96: 9f        xcn   a
0d97: 08 02     or    a,#$02
0d99: c5 f2 00  mov   $00f2,a
0d9c: c9 f3 00  mov   $00f3,x
0d9f: bc        inc   a
0da0: c5 f2 00  mov   $00f2,a
0da3: cc f3 00  mov   $00f3,y
0da6: f8 08     mov   x,$08
0da8: dd        mov   a,y
0da9: d5 50 02  mov   $0250+x,a
0dac: 6f        ret

0dad: f5 78 01  mov   a,$0178+x
0db0: c4 0a     mov   $0a,a
0db2: f5 88 01  mov   a,$0188+x
0db5: c4 0b     mov   $0b,a
0db7: f5 68 01  mov   a,$0168+x
0dba: fd        mov   y,a
0dbb: f7 0a     mov   a,($0a)+y
0dbd: 68 80     cmp   a,#$80
0dbf: d0 07     bne   $0dc8
0dc1: fc        inc   y
0dc2: dd        mov   a,y
0dc3: d5 58 01  mov   $0158+x,a
0dc6: 2f f3     bra   $0dbb
0dc8: 68 81     cmp   a,#$81
0dca: d0 06     bne   $0dd2
0dcc: f5 58 01  mov   a,$0158+x
0dcf: fd        mov   y,a
0dd0: 2f e9     bra   $0dbb
0dd2: 2d        push  a
0dd3: f5 40 02  mov   a,$0240+x
0dd6: c4 0a     mov   $0a,a
0dd8: f5 50 02  mov   a,$0250+x
0ddb: c4 0b     mov   $0b,a
0ddd: fc        inc   y
0dde: dd        mov   a,y
0ddf: d5 68 01  mov   $0168+x,a
0de2: ae        pop   a
0de3: 68 7f     cmp   a,#$7f
0de5: b0 04     bcs   $0deb
0de7: 8d 00     mov   y,#$00
0de9: 2f 02     bra   $0ded
0deb: 8d ff     mov   y,#$ff
0ded: 5f 85 0d  jmp   $0d85

0df0: 8b be     dec   $be
0df2: f0 01     beq   $0df5
0df4: 6f        ret

0df5: fa bf be  mov   ($be),($bf)
0df8: 8d 0c     mov   y,#$0c
0dfa: cc f2 00  mov   $00f2,y
0dfd: e5 f3 00  mov   a,$00f3
0e00: 80        setc
0e01: a4 c0     sbc   a,$c0
0e03: 30 10     bmi   $0e15
0e05: 68 60     cmp   a,#$60
0e07: b0 17     bcs   $0e20
0e09: c5 f3 00  mov   $00f3,a
0e0c: 8d 1c     mov   y,#$1c
0e0e: cc f2 00  mov   $00f2,y
0e11: c5 f3 00  mov   $00f3,a
0e14: 6f        ret

0e15: 3f 84 06  call  $0684
0e18: 52 b0     clr2  $b0
0e1a: e8 00     mov   a,#$00
0e1c: c5 f5 00  mov   $00f5,a
0e1f: 6f        ret

0e20: e8 60     mov   a,#$60
0e22: 8d 1c     mov   y,#$1c
0e24: cc f2 00  mov   $00f2,y
0e27: c5 f3 00  mov   $00f3,a
0e2a: 8d 1c     mov   y,#$1c
0e2c: cc f2 00  mov   $00f2,y
0e2f: c5 f3 00  mov   $00f3,a
0e32: 2f e4     bra   $0e18
0e34: bc        inc   a
0e35: d0 03     bne   $0e3a
0e37: 5f 84 06  jmp   $0684

0e3a: 53 b0 01  bbc2  $b0,$0e3e
0e3d: 6f        ret

0e3e: 9c        dec   a
0e3f: 28 0f     and   a,#$0f
0e41: 1c        asl   a
0e42: 5d        mov   x,a
0e43: 1f 46 0e  jmp   ($0e46+x)

0e46: dw $0e65
0e48: dw $0e69
0e4a: dw $0e6d
0e4c: dw $0e71
0e4e: dw $0e75
0e50: dw $0e64
0e52: dw $0e64
0e54: dw $0e64
0e56: dw $0e83
0e58: dw $0e8e
0e5a: dw $0efb
0e5c: dw $0e99
0e5e: dw $0ee7
0e60: dw $0f03
0e62: dw $0f15

0e64: 6f        ret

0e65: e8 40     mov   a,#$40
0e67: 2f 0e     bra   $0e77
0e69: e8 18     mov   a,#$18
0e6b: 2f 0a     bra   $0e77
0e6d: e8 00     mov   a,#$00
0e6f: 2f 06     bra   $0e77
0e71: e8 f4     mov   a,#$f4
0e73: 2f 02     bra   $0e77
0e75: e8 e8     mov   a,#$e8
0e77: 60        clrc
0e78: 88 80     adc   a,#$80
0e7a: c5 fa 00  mov   $00fa,a
0e7d: e8 03     mov   a,#$03
0e7f: c5 f1 00  mov   $00f1,a
0e82: 6f        ret

0e83: 8d 20     mov   y,#$20
0e85: f6 97 16  mov   a,$1697+y
0e88: d6 77 16  mov   $1677+y,a
0e8b: fe f8     dbnz  y,$0e85
0e8d: 6f        ret

0e8e: 8d 20     mov   y,#$20
0e90: f6 b7 16  mov   a,$16b7+y
0e93: d6 77 16  mov   $1677+y,a
0e96: fe f8     dbnz  y,$0e90
0e98: 6f        ret

0e99: e8 00     mov   a,#$00
0e9b: 8d 0c     mov   y,#$0c
0e9d: cc f2 00  mov   $00f2,y
0ea0: c5 f3 00  mov   $00f3,a
0ea3: 8d 1c     mov   y,#$1c
0ea5: cc f2 00  mov   $00f2,y
0ea8: c5 f3 00  mov   $00f3,a
0eab: e8 ff     mov   a,#$ff
0ead: 8d 5c     mov   y,#$5c
0eaf: cc f2 00  mov   $00f2,y
0eb2: c5 f3 00  mov   $00f3,a
0eb5: e8 00     mov   a,#$00
0eb7: c5 f3 00  mov   $00f3,a
0eba: 3f 4d 13  call  $134d
0ebd: e4 02     mov   a,$02
0ebf: 8d 4c     mov   y,#$4c
0ec1: cc f2 00  mov   $00f2,y
0ec4: c5 f3 00  mov   $00f3,a
0ec7: e4 c5     mov   a,$c5
0ec9: f0 04     beq   $0ecf
0ecb: e8 1f     mov   a,#$1f
0ecd: c4 b8     mov   $b8,a
0ecf: 42 b0     set2  $b0
0ed1: e5 fa 04  mov   a,$04fa
0ed4: c5 fa 00  mov   $00fa,a
0ed7: e8 01     mov   a,#$01
0ed9: c4 be     mov   $be,a
0edb: c4 bf     mov   $bf,a
0edd: e8 ff     mov   a,#$ff
0edf: c4 c0     mov   $c0,a
0ee1: e8 fe     mov   a,#$fe
0ee3: c5 f5 00  mov   $00f5,a
0ee6: 6f        ret

0ee7: e8 00     mov   a,#$00
0ee9: 8d 0c     mov   y,#$0c
0eeb: cc f2 00  mov   $00f2,y
0eee: c5 f3 00  mov   $00f3,a
0ef1: 8d 1c     mov   y,#$1c
0ef3: cc f2 00  mov   $00f2,y
0ef6: c5 f3 00  mov   $00f3,a
0ef9: 2f d4     bra   $0ecf
0efb: 3f 73 10  call  $1073
0efe: e4 c4     mov   a,$c4
0f00: c5 fa 04  mov   $04fa,a
0f03: 42 b0     set2  $b0
0f05: e8 01     mov   a,#$01
0f07: c4 be     mov   $be,a
0f09: c4 bf     mov   $bf,a
0f0b: e8 02     mov   a,#$02
0f0d: c4 c0     mov   $c0,a
0f0f: e8 fe     mov   a,#$fe
0f11: c5 f5 00  mov   $00f5,a
0f14: 6f        ret

0f15: 3f 84 06  call  $0684
0f18: 3f 21 0f  call  $0f21
0f1b: ce        pop   x
0f1c: ce        pop   x
0f1d: ce        pop   x
0f1e: 5f 39 05  jmp   $0539

0f21: e8 30     mov   a,#$30
0f23: c5 f1 00  mov   $00f1,a
0f26: e8 00     mov   a,#$00
0f28: c5 f4 00  mov   $00f4,a
0f2b: e8 ee     mov   a,#$ee
0f2d: c5 f5 00  mov   $00f5,a
0f30: e9 f4 00  mov   x,$00f4
0f33: f0 fb     beq   $0f30
0f35: e8 00     mov   a,#$00
0f37: c5 f5 00  mov   $00f5,a
0f3a: e5 f6 00  mov   a,$00f6
0f3d: c4 08     mov   $08,a
0f3f: e4 08     mov   a,$08
0f41: c5 f6 00  mov   $00f6,a
0f44: e5 f7 00  mov   a,$00f7
0f47: c4 09     mov   $09,a
0f49: e4 09     mov   a,$09
0f4b: c5 f7 00  mov   $00f7,a
0f4e: e8 30     mov   a,#$30
0f50: c5 f1 00  mov   $00f1,a
0f53: c9 f4 00  mov   $00f4,x
0f56: e9 f4 00  mov   x,$00f4
0f59: f0 fb     beq   $0f56
0f5b: e5 f5 00  mov   a,$00f5
0f5e: d0 da     bne   $0f3a
0f60: e4 09     mov   a,$09
0f62: 10 03     bpl   $0f67
0f64: 5f 19 10  jmp   $1019

0f67: e5 f6 00  mov   a,$00f6
0f6a: c4 00     mov   $00,a
0f6c: e4 00     mov   a,$00
0f6e: c5 f6 00  mov   $00f6,a
0f71: e5 f7 00  mov   a,$00f7
0f74: c4 01     mov   $01,a
0f76: e4 01     mov   a,$01
0f78: c5 f7 00  mov   $00f7,a
0f7b: e8 30     mov   a,#$30
0f7d: c5 f1 00  mov   $00f1,a
0f80: c9 f4 00  mov   $00f4,x
0f83: e9 f4 00  mov   x,$00f4
0f86: f0 fb     beq   $0f83
0f88: e5 f5 00  mov   a,$00f5
0f8b: d0 da     bne   $0f67
0f8d: 7d        mov   a,x
0f8e: fd        mov   y,a
0f8f: cd 00     mov   x,#$00
0f91: e5 f6 00  mov   a,$00f6
0f94: c7 00     mov   ($00+x),a
0f96: e7 00     mov   a,($00+x)
0f98: 65 f6 00  cmp   a,$00f6
0f9b: d0 f4     bne   $0f91
0f9d: c5 f6 00  mov   $00f6,a
0fa0: 3a 00     incw  $00
0fa2: 1a 08     decw  $08
0fa4: d0 02     bne   $0fa8
0fa6: ab 08     inc   $08
0fa8: e5 f7 00  mov   a,$00f7
0fab: c7 00     mov   ($00+x),a
0fad: e7 00     mov   a,($00+x)
0faf: 65 f7 00  cmp   a,$00f7
0fb2: d0 f4     bne   $0fa8
0fb4: c5 f7 00  mov   $00f7,a
0fb7: 3a 00     incw  $00
0fb9: e8 30     mov   a,#$30
0fbb: c5 f1 00  mov   $00f1,a
0fbe: cc f4 00  mov   $00f4,y
0fc1: ec f4 00  mov   y,$00f4
0fc4: f0 fb     beq   $0fc1
0fc6: e5 f5 00  mov   a,$00f5
0fc9: d0 06     bne   $0fd1
0fcb: 1a 08     decw  $08
0fcd: f0 0a     beq   $0fd9
0fcf: 2f c0     bra   $0f91
0fd1: 1a 00     decw  $00
0fd3: 1a 00     decw  $00
0fd5: 3a 08     incw  $08
0fd7: 2f b8     bra   $0f91
0fd9: e9 f4 00  mov   x,$00f4
0fdc: e8 78     mov   a,#$78
0fde: c5 f6 00  mov   $00f6,a
0fe1: e8 9a     mov   a,#$9a
0fe3: c5 f7 00  mov   $00f7,a
0fe6: ec f6 00  mov   y,$00f6
0fe9: e5 f7 00  mov   a,$00f7
0fec: da 0a     movw  $0a,ya
0fee: 68 fe     cmp   a,#$fe
0ff0: d0 07     bne   $0ff9
0ff2: ad fe     cmp   y,#$fe
0ff4: d0 e3     bne   $0fd9
0ff6: 5f 21 0f  jmp   $0f21

0ff9: ba 0a     movw  ya,$0a
0ffb: d0 dc     bne   $0fd9
0ffd: e8 30     mov   a,#$30
0fff: c5 f1 00  mov   $00f1,a
1002: e8 ff     mov   a,#$ff
1004: d8 bd     mov   $bd,x
1006: c9 f4 00  mov   $00f4,x
1009: c5 f5 00  mov   $00f5,a
100c: 8f 40 b9  mov   $b9,#$40
100f: 8f 34 ba  mov   $ba,#$34
1012: 8f f2 bb  mov   $bb,#$f2
1015: 8f 7f bc  mov   $bc,#$7f
1018: 6f        ret

1019: 38 7f 09  and   $09,#$7f
101c: e5 f6 00  mov   a,$00f6
101f: c4 0a     mov   $0a,a
1021: e4 0a     mov   a,$0a
1023: c5 f6 00  mov   $00f6,a
1026: e5 f7 00  mov   a,$00f7
1029: c4 0b     mov   $0b,a
102b: e4 0b     mov   a,$0b
102d: c5 f7 00  mov   $00f7,a
1030: e8 30     mov   a,#$30
1032: c5 f1 00  mov   $00f1,a
1035: c9 f4 00  mov   $00f4,x
1038: e9 f4 00  mov   x,$00f4
103b: f0 fb     beq   $1038
103d: e5 f5 00  mov   a,$00f5
1040: d0 da     bne   $101c
1042: 4d        push  x
1043: cd 00     mov   x,#$00
1045: e4 bb     mov   a,$bb
1047: c7 b9     mov   ($b9+x),a
1049: c4 00     mov   $00,a
104b: 3a b9     incw  $b9
104d: c4 0c     mov   $0c,a
104f: e4 bc     mov   a,$bc
1051: c7 b9     mov   ($b9+x),a
1053: c4 01     mov   $01,a
1055: 3a b9     incw  $b9
1057: c4 0d     mov   $0d,a
1059: fd        mov   y,a
105a: e4 0c     mov   a,$0c
105c: 7a 0a     addw  ya,$0a
105e: c7 b9     mov   ($b9+x),a
1060: 3a b9     incw  $b9
1062: dd        mov   a,y
1063: c7 b9     mov   ($b9+x),a
1065: 3a b9     incw  $b9
1067: ba 0c     movw  ya,$0c
1069: 7a 08     addw  ya,$08
106b: c4 bb     mov   $bb,a
106d: cb bc     mov   $bc,y
106f: ee        pop   y
1070: 5f 8f 0f  jmp   $0f8f

1073: 8f 10 08  mov   $08,#$10
1076: 8f 00 09  mov   $09,#$00
1079: 8f 60 0a  mov   $0a,#$60
107c: 8f 03 0b  mov   $0b,#$03
107f: 3f 23 16  call  $1623
1082: 8f 20 08  mov   $08,#$20
1085: 8f 00 09  mov   $09,#$00
1088: 8f 68 0a  mov   $0a,#$68
108b: 8f 03 0b  mov   $0b,#$03
108e: 3f 23 16  call  $1623
1091: 8f 30 08  mov   $08,#$30
1094: 8f 00 09  mov   $09,#$00
1097: 8f 70 0a  mov   $0a,#$70
109a: 8f 03 0b  mov   $0b,#$03
109d: 3f 23 16  call  $1623
10a0: 8f 40 08  mov   $08,#$40
10a3: 8f 00 09  mov   $09,#$00
10a6: 8f 78 0a  mov   $0a,#$78
10a9: 8f 03 0b  mov   $0b,#$03
10ac: 3f 23 16  call  $1623
10af: 8f 50 08  mov   $08,#$50
10b2: 8f 00 09  mov   $09,#$00
10b5: 8f 80 0a  mov   $0a,#$80
10b8: 8f 03 0b  mov   $0b,#$03
10bb: 3f 23 16  call  $1623
10be: 8f 60 08  mov   $08,#$60
10c1: 8f 00 09  mov   $09,#$00
10c4: 8f 88 0a  mov   $0a,#$88
10c7: 8f 03 0b  mov   $0b,#$03
10ca: 3f 23 16  call  $1623
10cd: 8f 70 08  mov   $08,#$70
10d0: 8f 00 09  mov   $09,#$00
10d3: 8f 90 0a  mov   $0a,#$90
10d6: 8f 03 0b  mov   $0b,#$03
10d9: 3f 23 16  call  $1623
10dc: 8f 80 08  mov   $08,#$80
10df: 8f 00 09  mov   $09,#$00
10e2: 8f 98 0a  mov   $0a,#$98
10e5: 8f 03 0b  mov   $0b,#$03
10e8: 3f 23 16  call  $1623
10eb: 8f 90 08  mov   $08,#$90
10ee: 8f 00 09  mov   $09,#$00
10f1: 8f a0 0a  mov   $0a,#$a0
10f4: 8f 03 0b  mov   $0b,#$03
10f7: 3f 23 16  call  $1623
10fa: 8f a0 08  mov   $08,#$a0
10fd: 8f 00 09  mov   $09,#$00
1100: 8f a8 0a  mov   $0a,#$a8
1103: 8f 03 0b  mov   $0b,#$03
1106: 3f 23 16  call  $1623
1109: 8f 00 08  mov   $08,#$00
110c: 8f 01 09  mov   $09,#$01
110f: 8f b0 0a  mov   $0a,#$b0
1112: 8f 03 0b  mov   $0b,#$03
1115: 3f 23 16  call  $1623
1118: 8f 10 08  mov   $08,#$10
111b: 8f 01 09  mov   $09,#$01
111e: 8f b8 0a  mov   $0a,#$b8
1121: 8f 03 0b  mov   $0b,#$03
1124: 3f 23 16  call  $1623
1127: 8f 20 08  mov   $08,#$20
112a: 8f 01 09  mov   $09,#$01
112d: 8f c0 0a  mov   $0a,#$c0
1130: 8f 03 0b  mov   $0b,#$03
1133: 3f 23 16  call  $1623
1136: 8f 30 08  mov   $08,#$30
1139: 8f 01 09  mov   $09,#$01
113c: 8f c8 0a  mov   $0a,#$c8
113f: 8f 03 0b  mov   $0b,#$03
1142: 3f 23 16  call  $1623
1145: 8f 40 08  mov   $08,#$40
1148: 8f 01 09  mov   $09,#$01
114b: 8f d0 0a  mov   $0a,#$d0
114e: 8f 03 0b  mov   $0b,#$03
1151: 3f 23 16  call  $1623
1154: 8f 48 08  mov   $08,#$48
1157: 8f 01 09  mov   $09,#$01
115a: 8f d8 0a  mov   $0a,#$d8
115d: 8f 03 0b  mov   $0b,#$03
1160: 3f 23 16  call  $1623
1163: 8f 50 08  mov   $08,#$50
1166: 8f 01 09  mov   $09,#$01
1169: 8f e0 0a  mov   $0a,#$e0
116c: 8f 03 0b  mov   $0b,#$03
116f: 3f 23 16  call  $1623
1172: 8f 58 08  mov   $08,#$58
1175: 8f 01 09  mov   $09,#$01
1178: 8f e8 0a  mov   $0a,#$e8
117b: 8f 03 0b  mov   $0b,#$03
117e: 3f 23 16  call  $1623
1181: 8f 68 08  mov   $08,#$68
1184: 8f 01 09  mov   $09,#$01
1187: 8f f0 0a  mov   $0a,#$f0
118a: 8f 03 0b  mov   $0b,#$03
118d: 3f 23 16  call  $1623
1190: 8f 78 08  mov   $08,#$78
1193: 8f 01 09  mov   $09,#$01
1196: 8f f8 0a  mov   $0a,#$f8
1199: 8f 03 0b  mov   $0b,#$03
119c: 3f 23 16  call  $1623
119f: 8f 88 08  mov   $08,#$88
11a2: 8f 01 09  mov   $09,#$01
11a5: 8f 00 0a  mov   $0a,#$00
11a8: 8f 04 0b  mov   $0b,#$04
11ab: 3f 23 16  call  $1623
11ae: 8f 00 08  mov   $08,#$00
11b1: 8f 02 09  mov   $09,#$02
11b4: 8f 08 0a  mov   $0a,#$08
11b7: 8f 04 0b  mov   $0b,#$04
11ba: 3f 23 16  call  $1623
11bd: 8f 10 08  mov   $08,#$10
11c0: 8f 02 09  mov   $09,#$02
11c3: 8f 10 0a  mov   $0a,#$10
11c6: 8f 04 0b  mov   $0b,#$04
11c9: 3f 23 16  call  $1623
11cc: 8f 20 08  mov   $08,#$20
11cf: 8f 02 09  mov   $09,#$02
11d2: 8f 18 0a  mov   $0a,#$18
11d5: 8f 04 0b  mov   $0b,#$04
11d8: 3f 23 16  call  $1623
11db: 8f 30 08  mov   $08,#$30
11de: 8f 02 09  mov   $09,#$02
11e1: 8f 20 0a  mov   $0a,#$20
11e4: 8f 04 0b  mov   $0b,#$04
11e7: 3f 23 16  call  $1623
11ea: 8f 40 08  mov   $08,#$40
11ed: 8f 02 09  mov   $09,#$02
11f0: 8f 28 0a  mov   $0a,#$28
11f3: 8f 04 0b  mov   $0b,#$04
11f6: 3f 23 16  call  $1623
11f9: 8f 50 08  mov   $08,#$50
11fc: 8f 02 09  mov   $09,#$02
11ff: 8f 30 0a  mov   $0a,#$30
1202: 8f 04 0b  mov   $0b,#$04
1205: 3f 23 16  call  $1623
1208: 8f 60 08  mov   $08,#$60
120b: 8f 02 09  mov   $09,#$02
120e: 8f 38 0a  mov   $0a,#$38
1211: 8f 04 0b  mov   $0b,#$04
1214: 3f 23 16  call  $1623
1217: 8f 70 08  mov   $08,#$70
121a: 8f 02 09  mov   $09,#$02
121d: 8f 40 0a  mov   $0a,#$40
1220: 8f 04 0b  mov   $0b,#$04
1223: 3f 23 16  call  $1623
1226: 8f 80 08  mov   $08,#$80
1229: 8f 02 09  mov   $09,#$02
122c: 8f 48 0a  mov   $0a,#$48
122f: 8f 04 0b  mov   $0b,#$04
1232: 3f 23 16  call  $1623
1235: 8f 90 08  mov   $08,#$90
1238: 8f 02 09  mov   $09,#$02
123b: 8f 50 0a  mov   $0a,#$50
123e: 8f 04 0b  mov   $0b,#$04
1241: 3f 23 16  call  $1623
1244: 8f a0 08  mov   $08,#$a0
1247: 8f 02 09  mov   $09,#$02
124a: 8f 58 0a  mov   $0a,#$58
124d: 8f 04 0b  mov   $0b,#$04
1250: 3f 23 16  call  $1623
1253: 8f b0 08  mov   $08,#$b0
1256: 8f 02 09  mov   $09,#$02
1259: 8f 60 0a  mov   $0a,#$60
125c: 8f 04 0b  mov   $0b,#$04
125f: 3f 23 16  call  $1623
1262: 8f c0 08  mov   $08,#$c0
1265: 8f 02 09  mov   $09,#$02
1268: 8f 68 0a  mov   $0a,#$68
126b: 8f 04 0b  mov   $0b,#$04
126e: 3f 23 16  call  $1623
1271: 8f d0 08  mov   $08,#$d0
1274: 8f 02 09  mov   $09,#$02
1277: 8f 70 0a  mov   $0a,#$70
127a: 8f 04 0b  mov   $0b,#$04
127d: 3f 23 16  call  $1623
1280: 8f e0 08  mov   $08,#$e0
1283: 8f 02 09  mov   $09,#$02
1286: 8f 78 0a  mov   $0a,#$78
1289: 8f 04 0b  mov   $0b,#$04
128c: 3f 23 16  call  $1623
128f: 8f f0 08  mov   $08,#$f0
1292: 8f 02 09  mov   $09,#$02
1295: 8f 80 0a  mov   $0a,#$80
1298: 8f 04 0b  mov   $0b,#$04
129b: 3f 23 16  call  $1623
129e: 8f 00 08  mov   $08,#$00
12a1: 8f 03 09  mov   $09,#$03
12a4: 8f 88 0a  mov   $0a,#$88
12a7: 8f 04 0b  mov   $0b,#$04
12aa: 3f 23 16  call  $1623
12ad: 8f 10 08  mov   $08,#$10
12b0: 8f 03 09  mov   $09,#$03
12b3: 8f 90 0a  mov   $0a,#$90
12b6: 8f 04 0b  mov   $0b,#$04
12b9: 3f 23 16  call  $1623
12bc: 8f 20 08  mov   $08,#$20
12bf: 8f 03 09  mov   $09,#$03
12c2: 8f 98 0a  mov   $0a,#$98
12c5: 8f 04 0b  mov   $0b,#$04
12c8: 3f 23 16  call  $1623
12cb: 8f 30 08  mov   $08,#$30
12ce: 8f 03 09  mov   $09,#$03
12d1: 8f a0 0a  mov   $0a,#$a0
12d4: 8f 04 0b  mov   $0b,#$04
12d7: 3f 23 16  call  $1623
12da: 8f 40 08  mov   $08,#$40
12dd: 8f 03 09  mov   $09,#$03
12e0: 8f a8 0a  mov   $0a,#$a8
12e3: 8f 04 0b  mov   $0b,#$04
12e6: 3f 23 16  call  $1623
12e9: 8f 50 08  mov   $08,#$50
12ec: 8f 03 09  mov   $09,#$03
12ef: 8f b0 0a  mov   $0a,#$b0
12f2: 8f 04 0b  mov   $0b,#$04
12f5: 3f 23 16  call  $1623
12f8: e4 02     mov   a,$02
12fa: c5 f8 04  mov   $04f8,a
12fd: e4 03     mov   a,$03
12ff: c4 c5     mov   $c5,a
1301: 8f b8 08  mov   $08,#$b8
1304: 8f 04 09  mov   $09,#$04
1307: 8d 00     mov   y,#$00
1309: 8f 00 0a  mov   $0a,#$00
130c: 3f 3a 13  call  $133a
130f: 8f 10 0a  mov   $0a,#$10
1312: 3f 3a 13  call  $133a
1315: 8f 20 0a  mov   $0a,#$20
1318: 3f 3a 13  call  $133a
131b: 8f 30 0a  mov   $0a,#$30
131e: 3f 3a 13  call  $133a
1321: 8f 40 0a  mov   $0a,#$40
1324: 3f 3a 13  call  $133a
1327: 8f 50 0a  mov   $0a,#$50
132a: 3f 3a 13  call  $133a
132d: 8f 60 0a  mov   $0a,#$60
1330: 3f 3a 13  call  $133a
1333: 8f 70 0a  mov   $0a,#$70
1336: 3f 3a 13  call  $133a
1339: 6f        ret

133a: cd 08     mov   x,#$08
133c: e4 0a     mov   a,$0a
133e: c5 f2 00  mov   $00f2,a
1341: e5 f3 00  mov   a,$00f3
1344: d7 08     mov   ($08)+y,a
1346: fc        inc   y
1347: ab 0a     inc   $0a
1349: 1d        dec   x
134a: d0 f0     bne   $133c
134c: 6f        ret

134d: 8f 10 0a  mov   $0a,#$10
1350: 8f 00 0b  mov   $0b,#$00
1353: 8f 60 08  mov   $08,#$60
1356: 8f 03 09  mov   $09,#$03
1359: 3f 23 16  call  $1623
135c: 8f 20 0a  mov   $0a,#$20
135f: 8f 00 0b  mov   $0b,#$00
1362: 8f 68 08  mov   $08,#$68
1365: 8f 03 09  mov   $09,#$03
1368: 3f 23 16  call  $1623
136b: 8f 30 0a  mov   $0a,#$30
136e: 8f 00 0b  mov   $0b,#$00
1371: 8f 70 08  mov   $08,#$70
1374: 8f 03 09  mov   $09,#$03
1377: 3f 23 16  call  $1623
137a: 8f 40 0a  mov   $0a,#$40
137d: 8f 00 0b  mov   $0b,#$00
1380: 8f 78 08  mov   $08,#$78
1383: 8f 03 09  mov   $09,#$03
1386: 3f 23 16  call  $1623
1389: 8f 50 0a  mov   $0a,#$50
138c: 8f 00 0b  mov   $0b,#$00
138f: 8f 80 08  mov   $08,#$80
1392: 8f 03 09  mov   $09,#$03
1395: 3f 23 16  call  $1623
1398: 8f 60 0a  mov   $0a,#$60
139b: 8f 00 0b  mov   $0b,#$00
139e: 8f 88 08  mov   $08,#$88
13a1: 8f 03 09  mov   $09,#$03
13a4: 3f 23 16  call  $1623
13a7: 8f 70 0a  mov   $0a,#$70
13aa: 8f 00 0b  mov   $0b,#$00
13ad: 8f 90 08  mov   $08,#$90
13b0: 8f 03 09  mov   $09,#$03
13b3: 3f 23 16  call  $1623
13b6: 8f 80 0a  mov   $0a,#$80
13b9: 8f 00 0b  mov   $0b,#$00
13bc: 8f 98 08  mov   $08,#$98
13bf: 8f 03 09  mov   $09,#$03
13c2: 3f 23 16  call  $1623
13c5: 8f 90 0a  mov   $0a,#$90
13c8: 8f 00 0b  mov   $0b,#$00
13cb: 8f a0 08  mov   $08,#$a0
13ce: 8f 03 09  mov   $09,#$03
13d1: 3f 23 16  call  $1623
13d4: 8f a0 0a  mov   $0a,#$a0
13d7: 8f 00 0b  mov   $0b,#$00
13da: 8f a8 08  mov   $08,#$a8
13dd: 8f 03 09  mov   $09,#$03
13e0: 3f 23 16  call  $1623
13e3: 8f 00 0a  mov   $0a,#$00
13e6: 8f 01 0b  mov   $0b,#$01
13e9: 8f b0 08  mov   $08,#$b0
13ec: 8f 03 09  mov   $09,#$03
13ef: 3f 23 16  call  $1623
13f2: 8f 10 0a  mov   $0a,#$10
13f5: 8f 01 0b  mov   $0b,#$01
13f8: 8f b8 08  mov   $08,#$b8
13fb: 8f 03 09  mov   $09,#$03
13fe: 3f 23 16  call  $1623
1401: 8f 20 0a  mov   $0a,#$20
1404: 8f 01 0b  mov   $0b,#$01
1407: 8f c0 08  mov   $08,#$c0
140a: 8f 03 09  mov   $09,#$03
140d: 3f 23 16  call  $1623
1410: 8f 30 0a  mov   $0a,#$30
1413: 8f 01 0b  mov   $0b,#$01
1416: 8f c8 08  mov   $08,#$c8
1419: 8f 03 09  mov   $09,#$03
141c: 3f 23 16  call  $1623
141f: 8f 40 0a  mov   $0a,#$40
1422: 8f 01 0b  mov   $0b,#$01
1425: 8f d0 08  mov   $08,#$d0
1428: 8f 03 09  mov   $09,#$03
142b: 3f 23 16  call  $1623
142e: 8f 48 0a  mov   $0a,#$48
1431: 8f 01 0b  mov   $0b,#$01
1434: 8f d8 08  mov   $08,#$d8
1437: 8f 03 09  mov   $09,#$03
143a: 3f 23 16  call  $1623
143d: 8f 50 0a  mov   $0a,#$50
1440: 8f 01 0b  mov   $0b,#$01
1443: 8f e0 08  mov   $08,#$e0
1446: 8f 03 09  mov   $09,#$03
1449: 3f 23 16  call  $1623
144c: 8f 58 0a  mov   $0a,#$58
144f: 8f 01 0b  mov   $0b,#$01
1452: 8f e8 08  mov   $08,#$e8
1455: 8f 03 09  mov   $09,#$03
1458: 3f 23 16  call  $1623
145b: 8f 68 0a  mov   $0a,#$68
145e: 8f 01 0b  mov   $0b,#$01
1461: 8f f0 08  mov   $08,#$f0
1464: 8f 03 09  mov   $09,#$03
1467: 3f 23 16  call  $1623
146a: 8f 78 0a  mov   $0a,#$78
146d: 8f 01 0b  mov   $0b,#$01
1470: 8f f8 08  mov   $08,#$f8
1473: 8f 03 09  mov   $09,#$03
1476: 3f 23 16  call  $1623
1479: 8f 88 0a  mov   $0a,#$88
147c: 8f 01 0b  mov   $0b,#$01
147f: 8f 00 08  mov   $08,#$00
1482: 8f 04 09  mov   $09,#$04
1485: 3f 23 16  call  $1623
1488: 8f 00 0a  mov   $0a,#$00
148b: 8f 02 0b  mov   $0b,#$02
148e: 8f 08 08  mov   $08,#$08
1491: 8f 04 09  mov   $09,#$04
1494: 3f 23 16  call  $1623
1497: 8f 10 0a  mov   $0a,#$10
149a: 8f 02 0b  mov   $0b,#$02
149d: 8f 10 08  mov   $08,#$10
14a0: 8f 04 09  mov   $09,#$04
14a3: 3f 23 16  call  $1623
14a6: 8f 20 0a  mov   $0a,#$20
14a9: 8f 02 0b  mov   $0b,#$02
14ac: 8f 18 08  mov   $08,#$18
14af: 8f 04 09  mov   $09,#$04
14b2: 3f 23 16  call  $1623
14b5: 8f 30 0a  mov   $0a,#$30
14b8: 8f 02 0b  mov   $0b,#$02
14bb: 8f 20 08  mov   $08,#$20
14be: 8f 04 09  mov   $09,#$04
14c1: 3f 23 16  call  $1623
14c4: 8f 40 0a  mov   $0a,#$40
14c7: 8f 02 0b  mov   $0b,#$02
14ca: 8f 28 08  mov   $08,#$28
14cd: 8f 04 09  mov   $09,#$04
14d0: 3f 23 16  call  $1623
14d3: 8f 50 0a  mov   $0a,#$50
14d6: 8f 02 0b  mov   $0b,#$02
14d9: 8f 30 08  mov   $08,#$30
14dc: 8f 04 09  mov   $09,#$04
14df: 3f 23 16  call  $1623
14e2: 8f 60 0a  mov   $0a,#$60
14e5: 8f 02 0b  mov   $0b,#$02
14e8: 8f 38 08  mov   $08,#$38
14eb: 8f 04 09  mov   $09,#$04
14ee: 3f 23 16  call  $1623
14f1: 8f 70 0a  mov   $0a,#$70
14f4: 8f 02 0b  mov   $0b,#$02
14f7: 8f 40 08  mov   $08,#$40
14fa: 8f 04 09  mov   $09,#$04
14fd: 3f 23 16  call  $1623
1500: 8f 80 0a  mov   $0a,#$80
1503: 8f 02 0b  mov   $0b,#$02
1506: 8f 48 08  mov   $08,#$48
1509: 8f 04 09  mov   $09,#$04
150c: 3f 23 16  call  $1623
150f: 8f 90 0a  mov   $0a,#$90
1512: 8f 02 0b  mov   $0b,#$02
1515: 8f 50 08  mov   $08,#$50
1518: 8f 04 09  mov   $09,#$04
151b: 3f 23 16  call  $1623
151e: 8f a0 0a  mov   $0a,#$a0
1521: 8f 02 0b  mov   $0b,#$02
1524: 8f 58 08  mov   $08,#$58
1527: 8f 04 09  mov   $09,#$04
152a: 3f 23 16  call  $1623
152d: 8f b0 0a  mov   $0a,#$b0
1530: 8f 02 0b  mov   $0b,#$02
1533: 8f 60 08  mov   $08,#$60
1536: 8f 04 09  mov   $09,#$04
1539: 3f 23 16  call  $1623
153c: 8f c0 0a  mov   $0a,#$c0
153f: 8f 02 0b  mov   $0b,#$02
1542: 8f 68 08  mov   $08,#$68
1545: 8f 04 09  mov   $09,#$04
1548: 3f 23 16  call  $1623
154b: 8f d0 0a  mov   $0a,#$d0
154e: 8f 02 0b  mov   $0b,#$02
1551: 8f 70 08  mov   $08,#$70
1554: 8f 04 09  mov   $09,#$04
1557: 3f 23 16  call  $1623
155a: 8f e0 0a  mov   $0a,#$e0
155d: 8f 02 0b  mov   $0b,#$02
1560: 8f 78 08  mov   $08,#$78
1563: 8f 04 09  mov   $09,#$04
1566: 3f 23 16  call  $1623
1569: 8f f0 0a  mov   $0a,#$f0
156c: 8f 02 0b  mov   $0b,#$02
156f: 8f 80 08  mov   $08,#$80
1572: 8f 04 09  mov   $09,#$04
1575: 3f 23 16  call  $1623
1578: 8f 00 0a  mov   $0a,#$00
157b: 8f 03 0b  mov   $0b,#$03
157e: 8f 88 08  mov   $08,#$88
1581: 8f 04 09  mov   $09,#$04
1584: 3f 23 16  call  $1623
1587: 8f 10 0a  mov   $0a,#$10
158a: 8f 03 0b  mov   $0b,#$03
158d: 8f 90 08  mov   $08,#$90
1590: 8f 04 09  mov   $09,#$04
1593: 3f 23 16  call  $1623
1596: 8f 20 0a  mov   $0a,#$20
1599: 8f 03 0b  mov   $0b,#$03
159c: 8f 98 08  mov   $08,#$98
159f: 8f 04 09  mov   $09,#$04
15a2: 3f 23 16  call  $1623
15a5: 8f 30 0a  mov   $0a,#$30
15a8: 8f 03 0b  mov   $0b,#$03
15ab: 8f a0 08  mov   $08,#$a0
15ae: 8f 04 09  mov   $09,#$04
15b1: 3f 23 16  call  $1623
15b4: 8f 40 0a  mov   $0a,#$40
15b7: 8f 03 0b  mov   $0b,#$03
15ba: 8f a8 08  mov   $08,#$a8
15bd: 8f 04 09  mov   $09,#$04
15c0: 3f 23 16  call  $1623
15c3: 8f 50 0a  mov   $0a,#$50
15c6: 8f 03 0b  mov   $0b,#$03
15c9: 8f b0 08  mov   $08,#$b0
15cc: 8f 04 09  mov   $09,#$04
15cf: 3f 23 16  call  $1623
15d2: e5 f8 04  mov   a,$04f8
15d5: c4 02     mov   $02,a
15d7: 8f b8 08  mov   $08,#$b8
15da: 8f 04 09  mov   $09,#$04
15dd: 8d 00     mov   y,#$00
15df: 8f 00 0a  mov   $0a,#$00
15e2: 3f 10 16  call  $1610
15e5: 8f 10 0a  mov   $0a,#$10
15e8: 3f 10 16  call  $1610
15eb: 8f 20 0a  mov   $0a,#$20
15ee: 3f 10 16  call  $1610
15f1: 8f 30 0a  mov   $0a,#$30
15f4: 3f 10 16  call  $1610
15f7: 8f 40 0a  mov   $0a,#$40
15fa: 3f 10 16  call  $1610
15fd: 8f 50 0a  mov   $0a,#$50
1600: 3f 10 16  call  $1610
1603: 8f 60 0a  mov   $0a,#$60
1606: 3f 10 16  call  $1610
1609: 8f 70 0a  mov   $0a,#$70
160c: 3f 10 16  call  $1610
160f: 6f        ret

1610: cd 08     mov   x,#$08
1612: e4 0a     mov   a,$0a
1614: c5 f2 00  mov   $00f2,a
1617: f7 08     mov   a,($08)+y
1619: c5 f3 00  mov   $00f3,a
161c: fc        inc   y
161d: ab 0a     inc   $0a
161f: 1d        dec   x
1620: d0 f0     bne   $1612
1622: 6f        ret

1623: 8d 07     mov   y,#$07
1625: f7 08     mov   a,($08)+y
1627: d7 0a     mov   ($0a)+y,a
1629: dc        dec   y
162a: 10 f9     bpl   $1625
162c: 6f        ret

162d: f5 a0 02  mov   a,$02a0+x
1630: 30 21     bmi   $1653
1632: 1c        asl   a
1633: c4 0e     mov   $0e,a
1635: f6 fb 16  mov   a,$16fb+y
1638: c4 0c     mov   $0c,a
163a: f6 fa 16  mov   a,$16fa+y
163d: eb 0c     mov   y,$0c
163f: 9a 0a     subw  ya,$0a
1641: c4 0c     mov   $0c,a
1643: e4 0e     mov   a,$0e
1645: c4 0d     mov   $0d,a
1647: cf        mul   ya
1648: da 0e     movw  $0e,ya
164a: ba 0c     movw  ya,$0c
164c: cf        mul   ya
164d: dd        mov   a,y
164e: 8d 00     mov   y,#$00
1650: 7a 0e     addw  ya,$0e
1652: 6f        ret

1653: 48 ff     eor   a,#$ff
1655: bc        inc   a
1656: 1c        asl   a
1657: c4 0e     mov   $0e,a
1659: f6 f6 16  mov   a,$16f6+y
165c: c4 0c     mov   $0c,a
165e: f6 f7 16  mov   a,$16f7+y
1661: c4 0d     mov   $0d,a
1663: ba 0a     movw  ya,$0a
1665: 9a 0c     subw  ya,$0c
1667: 3f 41 16  call  $1641
166a: 48 ff     eor   a,#$ff
166c: c4 0c     mov   $0c,a
166e: dd        mov   a,y
166f: 48 ff     eor   a,#$ff
1671: c4 0d     mov   $0d,a
1673: 3a 0c     incw  $0c
1675: ba 0c     movw  ya,$0c
1677: 6f        ret
