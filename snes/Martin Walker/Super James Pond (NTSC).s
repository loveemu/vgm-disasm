0500: 20        clrp			; clear ram variables
0501: cd ff     mov   x,#$ff
0503: bd        mov   sp,x
0504: 3d        inc   x
0505: 7d        mov   a,x
0506: af        mov   (x)+,a
0507: c8 f0     cmp   x,#$f0
0509: d0 fb     bne   $0506
050b: 5d        mov   x,a
050c: d5 00 01  mov   $0100+x,a
050f: d5 00 02  mov   $0200+x,a
0512: d5 00 03  mov   $0300+x,a
0515: 3d        inc   x
0516: d0 f4     bne   $050c
0518: e8 60     mov   a,#$60
051a: 8d 0c     mov   y,#$0c
051c: 3f ad 09  call  $09ad
051f: 8d 1c     mov   y,#$1c
0521: 3f ad 09  call  $09ad
0524: e8 04     mov   a,#$04
0526: 8d 5d     mov   y,#$5d
0528: 3f ad 09  call  $09ad
052b: 3f 37 06  call  $0637
052e: 3f 84 06  call  $0684
0531: 3f ce 06  call  $06ce
0534: e8 90     mov   a,#$90
0536: c5 f1 00  mov   $00f1,a
0539: e8 10     mov   a,#$10
053b: c5 fa 00  mov   $00fa,a
053e: e8 81     mov   a,#$81
0540: c5 f1 00  mov   $00f1,a
0543: e8 00     mov   a,#$00
0545: c4 f4     mov   $f4,a
0547: e8 ff     mov   a,#$ff
0549: c4 f4     mov   $f4,a
054b: 8d 0a     mov   y,#$0a
054d: ad 05     cmp   y,#$05
054f: f0 07     beq   $0558
0551: b0 08     bcs   $055b
0553: 69 4f 4e  cmp   ($4e),($4f)
0556: d0 11     bne   $0569
0558: e3 4e 0e  bbs7  $4e,$0569
055b: f6 b5 05  mov   a,$05b5+y
055e: c5 f2 00  mov   $00f2,a
0561: f6 bf 05  mov   a,$05bf+y
0564: 5d        mov   x,a
0565: e6        mov   a,(x)
0566: c5 f3 00  mov   $00f3,a
0569: fe e2     dbnz  y,$054d
056b: cb 46     mov   $46,y
056d: cb 47     mov   $47,y
056f: 3f ca 05  call  $05ca
0572: ec fd 00  mov   y,$00fd
0575: f0 f8     beq   $056f
0577: 6d        push  y
0578: e8 20     mov   a,#$20
057a: cf        mul   ya
057b: 60        clrc
057c: 84 22     adc   a,$22
057e: c4 22     mov   $22,a
0580: 90 07     bcc   $0589
0582: 69 4f 4e  cmp   ($4e),($4f)
0585: f0 02     beq   $0589
0587: ab 4e     inc   $4e
0589: ee        pop   y
058a: e8 40     mov   a,#$40
058c: cf        mul   ya
058d: 60        clrc
058e: 84 52     adc   a,$52
0590: c4 52     mov   $52,a
0592: 90 0b     bcc   $059f
0594: 3f f9 06  call  $06f9
0597: 3f a0 07  call  $07a0
059a: 3f ca 05  call  $05ca
059d: 2f ac     bra   $054b
059f: f0 fc     beq   $059d
05a1: cd 00     mov   x,#$00
05a3: 8f 01 48  mov   $48,#$01
05a6: f4 70     mov   a,$70+x
05a8: f0 03     beq   $05ad
05aa: 3f dc 0d  call  $0ddc
05ad: 3d        inc   x
05ae: 3d        inc   x
05af: 0b 48     asl   $48
05b1: d0 f3     bne   $05a6
05b3: 5f 4b 05  jmp   $054b
05b6: 2c 3c 0d  rol   $0d3c
05b9: 4d        push  x
05ba: 6c 4c 5c  ror   $5c4c
05bd: 3d        inc   x
05be: 2d        push  a
05bf: 5c        lsr   a
05c0: 62 64     set3  $64
05c2: 50 4c     bvc   $0610
05c4: 4a 46 02  and1  c,$0246,0
05c7: 4b 4d     lsr   $4d
05c9: 47 e4     eor   a,($e4+x)
05cb: f7 64     mov   a,($64)+y
05cd: 01        tcall 0
05ce: d0 01     bne   $05d1
05d0: 6f        ret
05d1: c4 01     mov   $01,a
05d3: e4 f4     mov   a,$f4
05d5: 68 60     cmp   a,#$60
05d7: 90 12     bcc   $05eb
05d9: 68 80     cmp   a,#$80
05db: f0 18     beq   $05f5
05dd: 68 81     cmp   a,#$81
05df: f0 19     beq   $05fa
05e1: 68 82     cmp   a,#$82
05e3: f0 29     beq   $060e
05e5: 6f        ret
05e6: e8 ff     mov   a,#$ff
05e8: c4 f4     mov   $f4,a
05ea: 6f        ret
05eb: c4 00     mov   $00,a
05ed: 8d ff     mov   y,#$ff
05ef: e8 00     mov   a,#$00
05f1: da 59     movw  $59,ya
05f3: 2f f1     bra   $05e6
05f5: 3f ce 06  call  $06ce
05f8: 2f ec     bra   $05e6
05fa: e8 60     mov   a,#$60
05fc: c4 5b     mov   $5b,a
05fe: e8 00     mov   a,#$00
0600: c4 5c     mov   $5c,a
0602: 80        setc
0603: a4 5a     sbc   a,$5a
0605: f8 5b     mov   x,$5b
0607: 3f 1f 0d  call  $0d1f
060a: da 5d     movw  $5d,ya
060c: 2f d8     bra   $05e6
060e: e8 ff     mov   a,#$ff
0610: 8d 6c     mov   y,#$6c
0612: 3f ad 09  call  $09ad
0615: e8 01     mov   a,#$01
0617: 3f ca 0c  call  $0cca
061a: a2 4a     set5  $4a
061c: 8f 96 1c  mov   $1c,#$96
061f: 8f 00 1b  mov   $1b,#$00
0622: 8d 00     mov   y,#$00
0624: e8 00     mov   a,#$00
0626: d7 1b     mov   ($1b)+y,a
0628: ab 1b     inc   $1b
062a: d0 fa     bne   $0626
062c: ab 1c     inc   $1c
062e: e4 1c     mov   a,$1c
0630: 68 f0     cmp   a,#$f0
0632: d0 f0     bne   $0624
0634: 5f c0 ff  jmp   $ffc0
0637: e8 00     mov   a,#$00
0639: c4 10     mov   $10,a
063b: 8f 00 1b  mov   $1b,#$00
063e: 8f 7a 1c  mov   $1c,#$7a
0641: 2f 00     bra   $0643
0643: e8 1f     mov   a,#$1f
0645: c4 11     mov   $11,a
0647: e4 11     mov   a,$11
0649: 1c        asl   a
064a: fd        mov   y,a
064b: f7 1b     mov   a,($1b)+y
064d: c4 1d     mov   $1d,a
064f: fc        inc   y
0650: f7 1b     mov   a,($1b)+y
0652: c4 1e     mov   $1e,a
0654: e4 11     mov   a,$11
0656: 60        clrc
0657: 84 10     adc   a,$10
0659: 1c        asl   a
065a: 1c        asl   a
065b: 5d        mov   x,a
065c: e4 1d     mov   a,$1d
065e: 60        clrc
065f: 88 04     adc   a,#$04
0661: d5 00 04  mov   $0400+x,a
0664: e4 1e     mov   a,$1e
0666: 88 00     adc   a,#$00
0668: d5 01 04  mov   $0401+x,a
066b: 8d 00     mov   y,#$00
066d: f7 1d     mov   a,($1d)+y
066f: 60        clrc
0670: 95 00 04  adc   a,$0400+x
0673: d5 02 04  mov   $0402+x,a
0676: fc        inc   y
0677: f7 1d     mov   a,($1d)+y
0679: 95 01 04  adc   a,$0401+x
067c: d5 03 04  mov   $0403+x,a
067f: 8b 11     dec   $11
0681: 10 c4     bpl   $0647
0683: 6f        ret
0684: e8 00     mov   a,#$00
0686: c4 1b     mov   $1b,a
0688: e8 10     mov   a,#$10
068a: c4 1c     mov   $1c,a
068c: 60        clrc
068d: e4 1b     mov   a,$1b
068f: 88 0c     adc   a,#$0c
0691: c4 1d     mov   $1d,a
0693: e4 1c     mov   a,$1c
0695: 88 00     adc   a,#$00
0697: c4 1e     mov   $1e,a
0699: ba 1d     movw  ya,$1d
069b: da 04     movw  $04,ya
069d: 8d 00     mov   y,#$00
069f: 3f c1 06  call  $06c1
06a2: da 06     movw  $06,ya
06a4: 8d 02     mov   y,#$02
06a6: 3f c1 06  call  $06c1
06a9: da 08     movw  $08,ya
06ab: 8d 04     mov   y,#$04
06ad: 3f c1 06  call  $06c1
06b0: da 0a     movw  $0a,ya
06b2: 8d 06     mov   y,#$06
06b4: 3f c1 06  call  $06c1
06b7: da 0c     movw  $0c,ya
06b9: 8d 08     mov   y,#$08
06bb: 3f c1 06  call  $06c1
06be: da 0e     movw  $0e,ya
06c0: 6f        ret
06c1: f7 1b     mov   a,($1b)+y
06c3: 2d        push  a
06c4: fc        inc   y
06c5: f7 1b     mov   a,($1b)+y
06c7: fd        mov   y,a
06c8: ae        pop   a
06c9: 7a 1d     addw  ya,$1d
06cb: da 1d     movw  $1d,ya
06cd: 6f        ret
06ce: e8 ff     mov   a,#$ff
06d0: c4 00     mov   $00,a
06d2: c4 47     mov   $47,a
06d4: cd 0e     mov   x,#$0e
06d6: e8 00     mov   a,#$00
06d8: d4 70     mov   $70+x,a
06da: e8 ff     mov   a,#$ff
06dc: d5 41 03  mov   $0341+x,a
06df: 1d        dec   x
06e0: 1d        dec   x
06e1: 10 f3     bpl   $06d6
06e3: e8 00     mov   a,#$00
06e5: c4 5b     mov   $5b,a
06e7: c4 69     mov   $69,a
06e9: e8 01     mov   a,#$01
06eb: 3f ca 0c  call  $0cca
06ee: a2 4a     set5  $4a
06f0: e8 00     mov   a,#$00
06f2: 8d 00     mov   y,#$00
06f4: da 61     movw  $61,ya
06f6: da 63     movw  $63,ya
06f8: 6f        ret
06f9: e4 00     mov   a,$00
06fb: 10 01     bpl   $06fe
06fd: 6f        ret
06fe: 8d 09     mov   y,#$09
0700: cf        mul   ya
0701: da 1b     movw  $1b,ya
0703: 60        clrc
0704: 89 0e 1b  adc   ($1b),($0e)
0707: 89 0f 1c  adc   ($1c),($0f)
070a: e8 ff     mov   a,#$ff
070c: c4 00     mov   $00,a
070e: 8d 00     mov   y,#$00
0710: f7 1b     mov   a,($1b)+y
0712: c4 15     mov   $15,a
0714: e8 00     mov   a,#$00
0716: c4 5b     mov   $5b,a
0718: c4 69     mov   $69,a
071a: cd 0e     mov   x,#$0e
071c: 8f 80 48  mov   $48,#$80
071f: 7d        mov   a,x
0720: 5c        lsr   a
0721: fd        mov   y,a
0722: fc        inc   y
0723: f7 1b     mov   a,($1b)+y
0725: 68 ff     cmp   a,#$ff
0727: f0 2c     beq   $0755
0729: c4 25     mov   $25,a
072b: f5 41 03  mov   a,$0341+x
072e: 64 15     cmp   a,$15
0730: 90 23     bcc   $0755
0732: e4 25     mov   a,$25
0734: 1c        asl   a
0735: fd        mov   y,a
0736: 60        clrc
0737: e4 0c     mov   a,$0c
0739: 97 0a     adc   a,($0a)+y
073b: d4 80     mov   $80+x,a
073d: d4 26     mov   $26+x,a
073f: fc        inc   y
0740: e4 0d     mov   a,$0d
0742: 97 0a     adc   a,($0a)+y
0744: d4 81     mov   $81+x,a
0746: d4 27     mov   $27+x,a
0748: 3f 5c 07  call  $075c
074b: e8 ff     mov   a,#$ff
074d: d4 70     mov   $70+x,a
074f: 3f 41 08  call  $0841
0752: 3f a4 08  call  $08a4
0755: 4b 48     lsr   $48
0757: 1d        dec   x
0758: 1d        dec   x
0759: 10 c4     bpl   $071f
075b: 6f        ret
075c: e8 ff     mov   a,#$ff
075e: d5 51 02  mov   $0251+x,a
0761: d5 41 03  mov   $0341+x,a
0764: d5 00 02  mov   $0200+x,a
0767: d5 01 02  mov   $0201+x,a
076a: e8 0a     mov   a,#$0a
076c: 3f 50 0b  call  $0b50
076f: e8 00     mov   a,#$00
0771: d5 11 02  mov   $0211+x,a
0774: d5 d1 02  mov   $02d1+x,a
0777: d5 31 02  mov   $0231+x,a
077a: d5 40 02  mov   $0240+x,a
077d: d5 e0 02  mov   $02e0+x,a
0780: d4 71     mov   $71+x,a
0782: d4 d0     mov   $d0+x,a
0784: d4 a1     mov   $a1+x,a
0786: d4 d1     mov   $d1+x,a
0788: d5 30 03  mov   $0330+x,a
078b: d4 e0     mov   $e0+x,a
078d: d4 e1     mov   $e1+x,a
078f: d4 b0     mov   $b0+x,a
0791: d4 b1     mov   $b1+x,a
0793: 3f d3 0a  call  $0ad3
0796: e4 48     mov   a,$48
0798: 0e 47 00  tset1 $0047
079b: e8 01     mov   a,#$01
079d: d4 90     mov   $90+x,a
079f: 6f        ret
07a0: cd 00     mov   x,#$00
07a2: d8 5f     mov   $5f,x
07a4: 8f 01 48  mov   $48,#$01
07a7: d8 49     mov   $49,x
07a9: f4 70     mov   a,$70+x
07ab: d0 03     bne   $07b0
07ad: 5f ee 07  jmp   $07ee
07b0: 60        clrc
07b1: f5 01 02  mov   a,$0201+x
07b4: 95 00 02  adc   a,$0200+x
07b7: d5 01 02  mov   $0201+x,a
07ba: b0 03     bcs   $07bf
07bc: 5f eb 07  jmp   $07eb
07bf: 7d        mov   a,x
07c0: 9b 90     dec   $90+x
07c2: f0 03     beq   $07c7
07c4: 5f eb 07  jmp   $07eb
07c7: 3f c0 0a  call  $0ac0
07ca: 68 ff     cmp   a,#$ff
07cc: d0 0a     bne   $07d8
07ce: 3f 3d 08  call  $083d
07d1: f4 70     mov   a,$70+x
07d3: d0 f2     bne   $07c7
07d5: 5f ee 07  jmp   $07ee
07d8: 10 06     bpl   $07e0
07da: 3f b4 0a  call  $0ab4
07dd: 5f c7 07  jmp   $07c7
07e0: 3f cf 08  call  $08cf
07e3: 3f c0 0a  call  $0ac0
07e6: 1c        asl   a
07e7: d4 90     mov   $90+x,a
07e9: 2f 03     bra   $07ee
07eb: 3f 5f 0d  call  $0d5f
07ee: 3d        inc   x
07ef: 3d        inc   x
07f0: 0b 48     asl   $48
07f2: f0 03     beq   $07f7
07f4: 5f a7 07  jmp   $07a7
07f7: e4 69     mov   a,$69
07f9: f0 15     beq   $0810
07fb: ba 65     movw  ya,$65
07fd: 7a 61     addw  ya,$61
07ff: da 61     movw  $61,ya
0801: ba 67     movw  ya,$67
0803: 7a 63     addw  ya,$63
0805: 6e 69 06  dbnz  $69,$080e
0808: ba 69     movw  ya,$69
080a: da 61     movw  $61,ya
080c: eb 6b     mov   y,$6b
080e: da 63     movw  $63,ya
0810: e4 5b     mov   a,$5b
0812: f0 0f     beq   $0823
0814: ba 5d     movw  ya,$5d
0816: 7a 59     addw  ya,$59
0818: 8b 5b     dec   $5b
081a: d0 02     bne   $081e
081c: ba 5b     movw  ya,$5b
081e: da 59     movw  $59,ya
0820: 8f ff 5f  mov   $5f,#$ff
0823: cd 00     mov   x,#$00
0825: 8f 01 48  mov   $48,#$01
0828: f4 70     mov   a,$70+x
082a: f0 03     beq   $082f
082c: 3f ce 09  call  $09ce
082f: 3d        inc   x
0830: 3d        inc   x
0831: 0b 48     asl   $48
0833: d0 f3     bne   $0828
0835: e4 5a     mov   a,$5a
0837: d0 03     bne   $083c
0839: 3f ce 06  call  $06ce
083c: 6f        ret

083d: 9b 91     dec   $91+x		; get current pattern vcmd
083f: d0 3e     bne   $087f
0841: 3f 9b 08  call  $089b		; copy bytes to ram
0844: d4 91     mov   $91+x,a
0846: 68 ff     cmp   a,#$ff		; check for vcmd
0848: f0 41     beq   $088b
084a: 68 fe     cmp   a,#$fe
084c: f0 35     beq   $0883
084e: 28 40     and   a,#$40
0850: f0 28     beq   $087a
0852: f4 71     mov   a,$71+x
0854: d0 12     bne   $0868
0856: f4 91     mov   a,$91+x
0858: 28 3f     and   a,#$3f
085a: d4 71     mov   $71+x,a
085c: f4 26     mov   a,$26+x
085e: d5 20 02  mov   $0220+x,a
0861: f4 27     mov   a,$27+x
0863: d5 21 02  mov   $0221+x,a
0866: 2f d9     bra   $0841
0868: 9b 71     dec   $71+x
086a: d0 02     bne   $086e
086c: 2f d3     bra   $0841
086e: f5 20 02  mov   a,$0220+x
0871: d4 26     mov   $26+x,a
0873: f5 21 02  mov   a,$0221+x
0876: d4 27     mov   $27+x,a
0878: 2f c7     bra   $0841

087a: 3f 9b 08  call  $089b		; pattern vcmd 40-7f - repeat sequence
087d: d4 a0     mov   $a0+x,a
087f: 3f a4 08  call  $08a4
0882: 6f        ret

0883: 3f 5c 07  call  $075c		; pattern vcmd fe - end of channel
0886: e8 00     mov   a,#$00
0888: d4 70     mov   $70+x,a
088a: 6f        ret

088b: 3f 9b 08  call  $089b		; pattern vcmd ff - go to loop
088e: 60        clrc
088f: 94 80     adc   a,$80+x
0891: d4 26     mov   $26+x,a
0893: f4 81     mov   a,$81+x
0895: 88 00     adc   a,#$00
0897: d4 27     mov   $27+x,a
0899: 2f a6     bra   $0841

089b: e7 26     mov   a,($26+x)		; copy pattern vcmd to ram
089d: bb 26     inc   $26+x
089f: d0 02     bne   $08a3
08a1: bb 27     inc   $27+x
08a3: 6f        ret

08a4: f4 a0     mov   a,$a0+x
08a6: 8d 02     mov   y,#$02
08a8: cf        mul   ya
08a9: da 1d     movw  $1d,ya
08ab: 60        clrc
08ac: 89 06 1d  adc   ($1d),($06)
08af: 89 07 1e  adc   ($1e),($07)
08b2: 8d 00     mov   y,#$00
08b4: f7 1d     mov   a,($1d)+y
08b6: 2d        push  a
08b7: fc        inc   y
08b8: f7 1d     mov   a,($1d)+y
08ba: fd        mov   y,a
08bb: ae        pop   a
08bc: da 1d     movw  $1d,ya
08be: 60        clrc
08bf: 89 08 1d  adc   ($1d),($08)
08c2: 89 09 1e  adc   ($1e),($09)
08c5: e4 1d     mov   a,$1d
08c7: d4 36     mov   $36+x,a
08c9: e4 1e     mov   a,$1e
08cb: d4 37     mov   $37+x,a
08cd: 6f        ret
08ce: 6f        ret
08cf: f5 40 02  mov   a,$0240+x
08d2: f0 11     beq   $08e5
08d4: e4 1f     mov   a,$1f
08d6: 68 14     cmp   a,#$14
08d8: 90 05     bcc   $08df
08da: 80        setc
08db: a8 14     sbc   a,#$14
08dd: 2f f7     bra   $08d6
08df: 3f 50 0b  call  $0b50
08e2: 3f 76 0a  call  $0a76
08e5: dd        mov   a,y
08e6: 60        clrc
08e7: 95 30 02  adc   a,$0230+x
08ea: 60        clrc
08eb: 95 31 02  adc   a,$0231+x
08ee: 60        clrc
08ef: 95 41 02  adc   a,$0241+x
08f2: d5 b1 02  mov   $02b1+x,a
08f5: f5 d1 02  mov   a,$02d1+x
08f8: d5 b0 02  mov   $02b0+x,a
08fb: f5 11 03  mov   a,$0311+x
08fe: 5c        lsr   a
08ff: e8 00     mov   a,#$00
0901: 7c        ror   a
0902: d5 00 03  mov   $0300+x,a
0905: e8 00     mov   a,#$00
0907: d4 d0     mov   $d0+x,a
0909: d4 a1     mov   $a1+x,a
090b: d5 30 03  mov   $0330+x,a
090e: d4 e0     mov   $e0+x,a
0910: 09 48 5f  or    ($5f),($48)
0913: 09 48 46  or    ($46),($48)
0916: f5 e0 02  mov   a,$02e0+x
0919: d4 c0     mov   $c0+x,a
091b: f0 32     beq   $094f
091d: f5 e1 02  mov   a,$02e1+x
0920: d4 c1     mov   $c1+x,a
0922: f5 f0 02  mov   a,$02f0+x
0925: d0 0a     bne   $0931
0927: f5 b1 02  mov   a,$02b1+x
092a: 80        setc
092b: b5 f1 02  sbc   a,$02f1+x
092e: d5 b1 02  mov   $02b1+x,a
0931: f5 f1 02  mov   a,$02f1+x
0934: 60        clrc
0935: 95 b1 02  adc   a,$02b1+x
0938: 28 7f     and   a,#$7f
093a: d5 d0 02  mov   $02d0+x,a
093d: 80        setc
093e: b5 b1 02  sbc   a,$02b1+x
0941: fb c0     mov   y,$c0+x
0943: 6d        push  y
0944: ce        pop   x
0945: 3f 1f 0d  call  $0d1f
0948: d5 c0 02  mov   $02c0+x,a
094b: dd        mov   a,y
094c: d5 c1 02  mov   $02c1+x,a
094f: 3f 0e 0d  call  $0d0e
0952: 4d        push  x
0953: e4 18     mov   a,$18
0955: 1c        asl   a
0956: 8d 00     mov   y,#$00
0958: cd 18     mov   x,#$18
095a: 9e        div   ya,x
095b: 5d        mov   x,a
095c: f6 b5 09  mov   a,$09b5+y
095f: c4 1c     mov   $1c,a
0961: f6 b4 09  mov   a,$09b4+y
0964: c4 1b     mov   $1b,a
0966: f6 b7 09  mov   a,$09b7+y
0969: 2d        push  a
096a: f6 b6 09  mov   a,$09b6+y
096d: ee        pop   y
096e: 9a 1b     subw  ya,$1b
0970: eb 17     mov   y,$17
0972: cf        mul   ya
0973: dd        mov   a,y
0974: 8d 00     mov   y,#$00
0976: 7a 1b     addw  ya,$1b
0978: cb 1c     mov   $1c,y
097a: 1c        asl   a
097b: 2b 1c     rol   $1c
097d: c4 1b     mov   $1b,a
097f: 2f 04     bra   $0985
0981: 4b 1c     lsr   $1c
0983: 7c        ror   a
0984: 3d        inc   x
0985: c8 09     cmp   x,#$09
0987: d0 f8     bne   $0981
0989: c4 1b     mov   $1b,a
098b: ce        pop   x
098c: e8 04     mov   a,#$04
098e: eb 1b     mov   y,$1b
0990: cf        mul   ya
0991: da 1d     movw  $1d,ya
0993: e8 04     mov   a,#$04
0995: eb 1c     mov   y,$1c
0997: cf        mul   ya
0998: fd        mov   y,a
0999: e8 00     mov   a,#$00
099b: 7a 1d     addw  ya,$1d
099d: da 1d     movw  $1d,ya
099f: 7d        mov   a,x
09a0: 9f        xcn   a
09a1: 5c        lsr   a
09a2: 08 02     or    a,#$02
09a4: fd        mov   y,a
09a5: e4 1d     mov   a,$1d
09a7: 3f ad 09  call  $09ad
09aa: fc        inc   y
09ab: e4 1e     mov   a,$1e
09ad: cc f2 00  mov   $00f2,y
09b0: c5 f3 00  mov   $00f3,a
09b3: 6f        ret

0db4: dw $085f
0db6: dw $08de
0db8: dw $0965
0dba: dw $09f4
0dbc: dw $0a8c
0dbe: dw $0b2c
0dc0: dw $0bd6
0dc2: dw $0c8b
0dc4: dw $0d4a
0dc6: dw $0e14
0dc8: dw $0eea
0dca: dw $0fcd
0dcc: dw $10be

09ce: f4 b0     mov   a,$b0+x
09d0: f0 09     beq   $09db
09d2: e8 50     mov   a,#$50
09d4: 8d 02     mov   y,#$02
09d6: 9b b0     dec   $b0+x
09d8: 3f 3b 0d  call  $0d3b
09db: fb e1     mov   y,$e1+x
09dd: f0 23     beq   $0a02
09df: f5 40 03  mov   a,$0340+x
09e2: de e0 1b  cbne  $e0+x,$0a00
09e5: 09 48 5f  or    ($5f),($48)
09e8: f5 30 03  mov   a,$0330+x
09eb: 10 07     bpl   $09f4
09ed: fc        inc   y
09ee: d0 04     bne   $09f4
09f0: e8 80     mov   a,#$80
09f2: 2f 04     bra   $09f8
09f4: 60        clrc
09f5: 95 31 03  adc   a,$0331+x
09f8: d5 30 03  mov   $0330+x,a
09fb: 3f 62 0e  call  $0e62
09fe: 2f 07     bra   $0a07
0a00: bb e0     inc   $e0+x
0a02: e8 ff     mov   a,#$ff
0a04: 3f 6d 0e  call  $0e6d
0a07: f4 b1     mov   a,$b1+x
0a09: f0 09     beq   $0a14
0a0b: e8 80     mov   a,#$80
0a0d: 8d 02     mov   y,#$02
0a0f: 9b b1     dec   $b1+x
0a11: 3f 3b 0d  call  $0d3b
0a14: e4 48     mov   a,$48
0a16: 24 5f     and   a,$5f
0a18: f0 46     beq   $0a60
0a1a: f5 81 02  mov   a,$0281+x
0a1d: fd        mov   y,a
0a1e: f5 80 02  mov   a,$0280+x
0a21: da 17     movw  $17,ya
0a23: 7d        mov   a,x
0a24: 9f        xcn   a
0a25: 5c        lsr   a
0a26: c4 19     mov   $19,a
0a28: eb 18     mov   y,$18
0a2a: f6 62 0a  mov   a,$0a62+y
0a2d: 80        setc
0a2e: b6 61 0a  sbc   a,$0a61+y
0a31: eb 17     mov   y,$17
0a33: cf        mul   ya
0a34: dd        mov   a,y
0a35: eb 18     mov   y,$18
0a37: 60        clrc
0a38: 96 61 0a  adc   a,$0a61+y
0a3b: fd        mov   y,a
0a3c: f5 71 02  mov   a,$0271+x
0a3f: cf        mul   ya
0a40: f5 a1 02  mov   a,$02a1+x
0a43: 1c        asl   a
0a44: 13 19 01  bbc0  $19,$0a48
0a47: 1c        asl   a
0a48: dd        mov   a,y
0a49: 90 03     bcc   $0a4e
0a4b: 48 ff     eor   a,#$ff
0a4d: bc        inc   a
0a4e: eb 19     mov   y,$19
0a50: 3f ad 09  call  $09ad
0a53: 8d 14     mov   y,#$14
0a55: e8 00     mov   a,#$00
0a57: 9a 17     subw  ya,$17
0a59: da 17     movw  $17,ya
0a5b: ab 19     inc   $19
0a5d: 33 19 c8  bbc1  $19,$0a28
0a60: 6f        ret

0a61: db $00,$01,$03,$07,$0d,$15,$1e,$29,$34,$42,$51,$5e,$67,$6e,$73,$77,$7a,$7c,$7d,$7e,$7f

0a76: e4 1f     mov   a,$1f
0a78: 44 20     eor   a,$20
0a7a: 5c        lsr   a
0a7b: 5c        lsr   a
0a7c: ed        notc
0a7d: 6b 1f     ror   $1f
0a7f: 6b 20     ror   $20
0a81: 6f        ret

; vcmd table (80-98)
0a82: dw $0ad3		; 80 - set instrument/sample
0a84: dw $0b50		; 81 - set gain (all channels)
0a86: dw $0b62		; 82 - set tempo
0a88: dw $0b7e		; 83 - (2 bytes)
0a8a: dw $0b95		; 84
0a8c: dw $0b5e		; 85
0a8e: dw $0bb0		; 86 - set global volume
0a90: dw $0bc5		; 87 - set channel volume (multiple channels)
0a92: dw $0be8		; 88 - set tempo
0a94: dw $0bec		; 89 - set tempo (multiple channels)
0a96: dw $0c0f		; 8a - set channel transpose
0a98: dw $0c14		; 8b - set transpose (multiple channels)
0a9a: dw $0c23		; 8c - disable transpose
0a9c: dw $0c44		; 8d - set channel volume (absolute)
0a9e: dw $0c4d		; 8e - (2 bytes)
0aa0: dw $0c13		; 8f - nop
0aa2: dw $0ba0		; 90 - set vibrato (all channels?)
0aa4: dw $0c26		; 91 - pitch bend (multiple channels)
0aa6: dw $0c2a		; 92
0aa8: dw $0c40		; 93 - disable pitch bend
0aaa: dw $0c69		; 94 - set detune
0aac: dw $0c6d		; 95 - set echo delay
0aae: dw $0c80		; 96 - disable echo
0ab0: dw $0c87		; 97 - set echo volume
0ab2: dw $0ca9		; 98 - (2 bytes)

0ab4: 1c        asl   a			; dispatch vcmd (80-9d)
0ab5: fd        mov   y,a
0ab6: fc        inc   y
0ab7: f6 82 0a  mov   a,$0a82+y
0aba: 2d        push  a
0abb: dc        dec   y
0abc: f6 82 0a  mov   a,$0a82+y
0abf: 2d        push  a

0ac0: e7 36     mov   a,($36+x)		; update/increment sequence pointer
0ac2: bb 36     inc   $36+x
0ac4: d0 02     bne   $0ac8
0ac6: bb 37     inc   $37+x
0ac8: fd        mov   y,a
0ac9: 6f        ret

0aca: e7 36     mov   a,($36+x)
0acc: bb 36     inc   $36+x
0ace: d0 02     bne   $0ad2
0ad0: bb 37     inc   $37+x
0ad2: 6f        ret

0ad3: d5 11 02  mov   $0211+x,a		; vcmd 80 - set instrument/sample
0ad6: 8d 10     mov   y,#$10
0ad8: cf        mul   ya
0ad9: da 23     movw  $23,ya
0adb: 60        clrc
0adc: 89 04 23  adc   ($23),($04)
0adf: 89 05 24  adc   ($24),($05)
0ae2: e4 48     mov   a,$48
0ae4: 4e 4b 00  tclr1 $004b
0ae7: 8d 00     mov   y,#$00
0ae9: f7 23     mov   a,($23)+y
0aeb: c4 12     mov   $12,a
0aed: fc        inc   y
0aee: f7 23     mov   a,($23)+y
0af0: c4 13     mov   $13,a
0af2: fc        inc   y
0af3: f7 23     mov   a,($23)+y
0af5: d5 10 02  mov   $0210+x,a
0af8: fc        inc   y
0af9: f7 23     mov   a,($23)+y
0afb: 68 40     cmp   a,#$40
0afd: 90 0d     bcc   $0b0c
0aff: 28 1f     and   a,#$1f
0b01: 38 20 4a  and   $4a,#$20
0b04: 0e 4a 00  tset1 $004a
0b07: 09 48 4b  or    ($4b),($48)
0b0a: e8 00     mov   a,#$00
0b0c: c4 14     mov   $14,a
0b0e: fc        inc   y
0b0f: f7 23     mov   a,($23)+y
0b11: d5 41 02  mov   $0241+x,a
0b14: 8d 0d     mov   y,#$0d
0b16: f7 23     mov   a,($23)+y
0b18: d5 01 03  mov   $0301+x,a
0b1b: fc        inc   y
0b1c: f7 23     mov   a,($23)+y
0b1e: d4 d1     mov   $d1+x,a
0b20: d5 21 03  mov   $0321+x,a
0b23: fc        inc   y
0b24: f7 23     mov   a,($23)+y
0b26: d5 10 03  mov   $0310+x,a
0b29: e8 00     mov   a,#$00
0b2b: d5 11 03  mov   $0311+x,a
0b2e: 7d        mov   a,x
0b2f: 9f        xcn   a
0b30: 5c        lsr   a
0b31: 08 04     or    a,#$04
0b33: fd        mov   y,a
0b34: e4 14     mov   a,$14
0b36: cb f2     mov   $f2,y
0b38: c4 f3     mov   $f3,a
0b3a: fc        inc   y
0b3b: e4 12     mov   a,$12
0b3d: cb f2     mov   $f2,y
0b3f: c4 f3     mov   $f3,a
0b41: fc        inc   y
0b42: e4 13     mov   a,$13
0b44: cb f2     mov   $f2,y
0b46: c4 f3     mov   $f3,a
0b48: fc        inc   y
0b49: e8 00     mov   a,#$00
0b4b: cb f2     mov   $f2,y
0b4d: c4 f3     mov   $f3,a
0b4f: 6f        ret

0b50: d5 a1 02  mov   $02a1+x,a		; vcmd 81 - set gain (all channels)
0b53: 28 1f     and   a,#$1f
0b55: d5 81 02  mov   $0281+x,a
0b58: e8 00     mov   a,#$00
0b5a: d5 80 02  mov   $0280+x,a
0b5d: 6f        ret

0b5e: d5 40 02  mov   $0240+x,a		; vcmd 85
0b61: 6f        ret

0b62: 3f c0 0a  call  $0ac0		; vcmd 82 - set gain (multiple channels)
0b65: d4 b1     mov   $b1+x,a
0b67: 2d        push  a
0b68: 3f c0 0a  call  $0ac0
0b6b: d5 a0 02  mov   $02a0+x,a
0b6e: 80        setc
0b6f: b5 81 02  sbc   a,$0281+x
0b72: ce        pop   x
0b73: 3f 1f 0d  call  $0d1f
0b76: d5 90 02  mov   $0290+x,a
0b79: dd        mov   a,y
0b7a: d5 91 02  mov   $0291+x,a
0b7d: 6f        ret

0b7e: d5 10 03  mov   $0310+x,a		; vcmd 83 - set vibrato (all channels)
0b81: 3f c0 0a  call  $0ac0
0b84: d5 01 03  mov   $0301+x,a
0b87: 3f c0 0a  call  $0ac0
0b8a: d4 d1     mov   $d1+x,a
0b8c: d5 21 03  mov   $0321+x,a
0b8f: e8 00     mov   a,#$00
0b91: d5 11 03  mov   $0311+x,a
0b94: 6f        ret

0b95: d4 d1     mov   $d1+x,a		; vcmd 84 - set vibrato
0b97: d5 21 03  mov   $0321+x,a
0b9a: e8 00     mov   a,#$00
0b9c: d5 11 03  mov   $0311+x,a
0b9f: 6f        ret

0ba0: d5 11 03  mov   $0311+x,a		; vcmd 90 - set vibrato (all channels?)
0ba3: 2d        push  a
0ba4: 8d 00     mov   y,#$00
0ba6: f4 d1     mov   a,$d1+x
0ba8: ce        pop   x
0ba9: 9e        div   ya,x
0baa: f8 49     mov   x,$49
0bac: d5 20 03  mov   $0320+x,a
0baf: 6f        ret

0bb0: 3f c0 0a  call  $0ac0		; vcmd 86 - set global volume
0bb3: c4 5b     mov   $5b,a
0bb5: 3f c0 0a  call  $0ac0
0bb8: c4 5c     mov   $5c,a
0bba: 80        setc
0bbb: a4 5a     sbc   a,$5a
0bbd: f8 5b     mov   x,$5b
0bbf: 3f 1f 0d  call  $0d1f
0bc2: da 5d     movw  $5d,ya
0bc4: 6f        ret

0bc5: 3f c0 0a  call  $0ac0		; vcmd 87 - set channel volume (multiple channels)
0bc8: c4 6c     mov   $6c,a
0bca: 3f c0 0a  call  $0ac0		; update pointer
0bcd: c4 6e     mov   $6e,a
0bcf: 4d        push  x
0bd0: cd 00     mov   x,#$00
0bd2: 8f 01 6d  mov   $6d,#$01
0bd5: e4 6c     mov   a,$6c
0bd7: 24 6d     and   a,$6d
0bd9: f0 05     beq   $0be0
0bdb: e4 6e     mov   a,$6e
0bdd: d5 00 02  mov   $0200+x,a
0be0: 3d        inc   x
0be1: 3d        inc   x
0be2: 0b 6d     asl   $6d
0be4: d0 ef     bne   $0bd5
0be6: ce        pop   x
0be7: 6f        ret

0be8: d5 00 02  mov   $0200+x,a		; vcmd 88 - set tempo
0beb: 6f        ret

0bec: 3f c0 0a  call  $0ac0		; vcmd 89 - set tempo (multiple channels)
0bef: c4 6c     mov   $6c,a
0bf1: 3f c0 0a  call  $0ac0
0bf4: c4 6e     mov   $6e,a
0bf6: 4d        push  x
0bf7: cd 00     mov   x,#$00
0bf9: 8f 01 6d  mov   $6d,#$01
0bfc: e4 6c     mov   a,$6c
0bfe: 24 6d     and   a,$6d
0c00: f0 05     beq   $0c07
0c02: e4 6e     mov   a,$6e
0c04: d5 30 02  mov   $0230+x,a
0c07: 3d        inc   x
0c08: 3d        inc   x
0c09: 0b 6d     asl   $6d
0c0b: d0 ef     bne   $0bfc
0c0d: ce        pop   x
0c0e: 6f        ret

0c0f: d5 31 02  mov   $0231+x,a		; vcmd 8a - set channel transpose
0c12: 6f        ret

0c13: 6f        ret			; vcmd 8f - nop

0c14: d5 40 03  mov   $0340+x,a		; vcmd 8b - set transpose (multiple channels)
0c17: 3f c0 0a  call  $0ac0
0c1a: d5 31 03  mov   $0331+x,a
0c1d: 3f c0 0a  call  $0ac0
0c20: d4 e1     mov   $e1+x,a
0c22: 6f        ret

0c23: d4 e1     mov   $e1+x,a		; vcmd 8c - disable transpose
0c25: 6f        ret

0c26: e8 01     mov   a,#$01		; vcmd 91 - pitch bend (multiple channels)
0c28: 2f 02     bra   $0c2c

0c2a: e8 00     mov   a,#$00		; vcmd 92
0c2c: d5 f0 02  mov   $02f0+x,a
0c2f: dd        mov   a,y
0c30: d5 e1 02  mov   $02e1+x,a
0c33: 3f c0 0a  call  $0ac0
0c36: d5 e0 02  mov   $02e0+x,a
0c39: 3f c0 0a  call  $0ac0
0c3c: d5 f1 02  mov   $02f1+x,a
0c3f: 6f        ret

0c40: d5 e0 02  mov   $02e0+x,a		; vcmd 93 - disable pitch bend
0c43: 6f        ret

0c44: d5 51 02  mov   $0251+x,a		; vcmd 8d - set channel volume (absolute)
0c47: e8 00     mov   a,#$00
0c49: d5 50 02  mov   $0250+x,a
0c4c: 6f        ret

0c4d: 3f c0 0a  call  $0ac0		; vcmd 8e (2 bytes)
0c50: d4 b0     mov   $b0+x,a
0c52: 2d        push  a
0c53: 3f c0 0a  call  $0ac0
0c56: d5 70 02  mov   $0270+x,a
0c59: 80        setc
0c5a: b5 51 02  sbc   a,$0251+x
0c5d: ce        pop   x
0c5e: 3f 1f 0d  call  $0d1f
0c61: d5 60 02  mov   $0260+x,a
0c64: dd        mov   a,y
0c65: d5 61 02  mov   $0261+x,a
0c68: 6f        ret

0c69: d5 d1 02  mov   $02d1+x,a		; vcmd 94 - set detune
0c6c: 6f        ret

0c6d: c4 4c     mov   $4c,a		; vcmd 95 - set echo delay
0c6f: 3f c0 0a  call  $0ac0
0c72: e8 00     mov   a,#$00
0c74: da 61     movw  $61,ya
0c76: 3f c0 0a  call  $0ac0
0c79: e8 00     mov   a,#$00
0c7b: da 63     movw  $63,ya
0c7d: b2 4a     clr5  $4a
0c7f: 6f        ret

0c80: da 61     movw  $61,ya		; vcmd 96 - disable echo
0c82: da 63     movw  $63,ya
0c84: a2 4a     set5  $4a
0c86: 6f        ret

0c87: 3f ca 0c  call  $0cca		; vcmd 97 - set echo volume
0c8a: 3f c0 0a  call  $0ac0
0c8d: c4 50     mov   $50,a
0c8f: 3f c0 0a  call  $0ac0
0c92: 8d 08     mov   y,#$08
0c94: cf        mul   ya
0c95: 5d        mov   x,a
0c96: 8d 0f     mov   y,#$0f
0c98: f5 7f 0e  mov   a,$0e7f+x
0c9b: 3f ad 09  call  $09ad
0c9e: 3d        inc   x
0c9f: dd        mov   a,y
0ca0: 60        clrc
0ca1: 88 10     adc   a,#$10
0ca3: fd        mov   y,a
0ca4: 10 f2     bpl   $0c98
0ca6: f8 49     mov   x,$49
0ca8: 6f        ret

0ca9: c4 69     mov   $69,a		; vcmd 98 - (2 bytes)
0cab: 3f c0 0a  call  $0ac0
0cae: c4 6a     mov   $6a,a
0cb0: 80        setc
0cb1: a4 62     sbc   a,$62
0cb3: f8 69     mov   x,$69
0cb5: 3f 1f 0d  call  $0d1f
0cb8: da 65     movw  $65,ya
0cba: 3f c0 0a  call  $0ac0
0cbd: c4 6b     mov   $6b,a
0cbf: 80        setc
0cc0: a4 64     sbc   a,$64
0cc2: f8 69     mov   x,$69
0cc4: 3f 1f 0d  call  $0d1f
0cc7: da 67     movw  $67,ya
0cc9: 6f        ret
0cca: c4 4f     mov   $4f,a
0ccc: 8d 7d     mov   y,#$7d
0cce: cc f2 00  mov   $00f2,y
0cd1: e5 f3 00  mov   a,$00f3
0cd4: 64 4f     cmp   a,$4f
0cd6: 28 0f     and   a,#$0f
0cd8: 48 ff     eor   a,#$ff
0cda: f3 4e 03  bbc7  $4e,$0ce0
0cdd: 60        clrc
0cde: 84 4e     adc   a,$4e
0ce0: c4 4e     mov   $4e,a
0ce2: 8d 04     mov   y,#$04
0ce4: f6 b5 05  mov   a,$05b5+y
0ce7: c5 f2 00  mov   $00f2,a
0cea: e8 00     mov   a,#$00
0cec: c5 f3 00  mov   $00f3,a
0cef: fe f3     dbnz  y,$0ce4
0cf1: e4 4a     mov   a,$4a
0cf3: 08 20     or    a,#$20
0cf5: 8d 6c     mov   y,#$6c
0cf7: 3f ad 09  call  $09ad
0cfa: e4 4f     mov   a,$4f
0cfc: 8d 7d     mov   y,#$7d
0cfe: 3f ad 09  call  $09ad
0d01: 1c        asl   a
0d02: 1c        asl   a
0d03: 1c        asl   a
0d04: 48 ff     eor   a,#$ff
0d06: 80        setc
0d07: 88 ff     adc   a,#$ff
0d09: 8d 6d     mov   y,#$6d
0d0b: 5f ad 09  jmp   $09ad
0d0e: f5 b1 02  mov   a,$02b1+x
0d11: 68 6c     cmp   a,#$6c
0d13: 90 02     bcc   $0d17
0d15: e8 6b     mov   a,#$6b
0d17: c4 18     mov   $18,a
0d19: f5 b0 02  mov   a,$02b0+x
0d1c: c4 17     mov   $17,a
0d1e: 6f        ret
0d1f: ed        notc
0d20: 6b 19     ror   $19
0d22: 10 03     bpl   $0d27
0d24: 48 ff     eor   a,#$ff
0d26: bc        inc   a
0d27: 8d 00     mov   y,#$00
0d29: 9e        div   ya,x
0d2a: 2d        push  a
0d2b: e8 00     mov   a,#$00
0d2d: 9e        div   ya,x
0d2e: ee        pop   y
0d2f: f8 49     mov   x,$49
0d31: f3 19 06  bbc7  $19,$0d3a
0d34: da 1b     movw  $1b,ya
0d36: ba 02     movw  ya,$02
0d38: 9a 1b     subw  ya,$1b
0d3a: 6f        ret
0d3b: 09 48 5f  or    ($5f),($48)
0d3e: da 1b     movw  $1b,ya
0d40: da 1d     movw  $1d,ya
0d42: 4d        push  x
0d43: ee        pop   y
0d44: 60        clrc
0d45: d0 0a     bne   $0d51
0d47: 98 1f 1d  adc   $1d,#$1f
0d4a: e8 00     mov   a,#$00
0d4c: d7 1b     mov   ($1b)+y,a
0d4e: fc        inc   y
0d4f: 2f 09     bra   $0d5a
0d51: 98 10 1d  adc   $1d,#$10
0d54: 3f 58 0d  call  $0d58
0d57: fc        inc   y
0d58: f7 1b     mov   a,($1b)+y
0d5a: 97 1d     adc   a,($1d)+y
0d5c: d7 1b     mov   ($1b)+y,a
0d5e: 6f        ret
0d5f: e8 01     mov   a,#$01
0d61: 74 90     cmp   a,$90+x
0d63: d0 0a     bne   $0d6f
0d65: e4 48     mov   a,$48
0d67: 0e 47 00  tset1 $0047
0d6a: 8d 5c     mov   y,#$5c
0d6c: 3f ad 09  call  $09ad
0d6f: f2 1a     clr7  $1a
0d71: f4 c0     mov   a,$c0+x
0d73: f0 13     beq   $0d88
0d75: f4 c1     mov   a,$c1+x
0d77: f0 04     beq   $0d7d
0d79: 9b c1     dec   $c1+x
0d7b: 2f 0b     bra   $0d88
0d7d: e2 1a     set7  $1a
0d7f: e8 b0     mov   a,#$b0
0d81: 8d 02     mov   y,#$02
0d83: 9b c0     dec   $c0+x
0d85: 3f 3e 0d  call  $0d3e
0d88: 3f 0e 0d  call  $0d0e
0d8b: f4 d1     mov   a,$d1+x
0d8d: f0 49     beq   $0dd8
0d8f: f5 10 03  mov   a,$0310+x
0d92: de d0 41  cbne  $d0+x,$0dd6
0d95: f4 a1     mov   a,$a1+x
0d97: 75 11 03  cmp   a,$0311+x
0d9a: d0 05     bne   $0da1
0d9c: f5 21 03  mov   a,$0321+x
0d9f: 2f 0b     bra   $0dac
0da1: bb a1     inc   $a1+x
0da3: fd        mov   y,a
0da4: f0 02     beq   $0da8
0da6: f4 d1     mov   a,$d1+x
0da8: 60        clrc
0da9: 95 20 03  adc   a,$0320+x
0dac: d4 d1     mov   $d1+x,a
0dae: f5 00 03  mov   a,$0300+x
0db1: 60        clrc
0db2: 95 01 03  adc   a,$0301+x
0db5: d5 00 03  mov   $0300+x,a
0db8: c4 19     mov   $19,a
0dba: 1c        asl   a
0dbb: 1c        asl   a
0dbc: 90 02     bcc   $0dc0
0dbe: 48 ff     eor   a,#$ff
0dc0: fd        mov   y,a
0dc1: f4 d1     mov   a,$d1+x
0dc3: 68 f1     cmp   a,#$f1
0dc5: 90 05     bcc   $0dcc
0dc7: 28 0f     and   a,#$0f
0dc9: cf        mul   ya
0dca: 2f 04     bra   $0dd0
0dcc: cf        mul   ya
0dcd: dd        mov   a,y
0dce: 8d 00     mov   y,#$00
0dd0: 3f 4d 0e  call  $0e4d
0dd3: 5f 52 09  jmp   $0952
0dd6: bb d0     inc   $d0+x
0dd8: e3 1a f8  bbs7  $1a,$0dd3
0ddb: 6f        ret
0ddc: f2 1a     clr7  $1a
0dde: f4 e1     mov   a,$e1+x
0de0: f0 09     beq   $0deb
0de2: f5 40 03  mov   a,$0340+x
0de5: de e0 03  cbne  $e0+x,$0deb
0de8: 3f 55 0e  call  $0e55
0deb: f5 81 02  mov   a,$0281+x
0dee: fd        mov   y,a
0def: f5 80 02  mov   a,$0280+x
0df2: da 17     movw  $17,ya
0df4: f4 b1     mov   a,$b1+x
0df6: f0 0a     beq   $0e02
0df8: f5 91 02  mov   a,$0291+x
0dfb: fd        mov   y,a
0dfc: f5 90 02  mov   a,$0290+x
0dff: 3f 37 0e  call  $0e37
0e02: f3 1a 03  bbc7  $1a,$0e08
0e05: 3f 23 0a  call  $0a23
0e08: f2 1a     clr7  $1a
0e0a: 3f 0e 0d  call  $0d0e
0e0d: f4 c0     mov   a,$c0+x
0e0f: f0 0e     beq   $0e1f
0e11: f4 c1     mov   a,$c1+x
0e13: d0 0a     bne   $0e1f
0e15: f5 c1 02  mov   a,$02c1+x
0e18: fd        mov   y,a
0e19: f5 c0 02  mov   a,$02c0+x
0e1c: 3f 37 0e  call  $0e37
0e1f: f4 d1     mov   a,$d1+x
0e21: f0 b5     beq   $0dd8
0e23: f5 10 03  mov   a,$0310+x
0e26: de d0 af  cbne  $d0+x,$0dd8
0e29: eb 52     mov   y,$52
0e2b: f5 01 03  mov   a,$0301+x
0e2e: cf        mul   ya
0e2f: dd        mov   a,y
0e30: 60        clrc
0e31: 95 00 03  adc   a,$0300+x
0e34: 5f b8 0d  jmp   $0db8
0e37: e2 1a     set7  $1a
0e39: cb 19     mov   $19,y
0e3b: 3f 31 0d  call  $0d31
0e3e: 6d        push  y
0e3f: eb 52     mov   y,$52
0e41: cf        mul   ya
0e42: cb 1b     mov   $1b,y
0e44: 8f 00 1c  mov   $1c,#$00
0e47: eb 52     mov   y,$52
0e49: ae        pop   a
0e4a: cf        mul   ya
0e4b: 7a 1b     addw  ya,$1b
0e4d: 3f 31 0d  call  $0d31
0e50: 7a 17     addw  ya,$17
0e52: da 17     movw  $17,ya
0e54: 6f        ret
0e55: e2 1a     set7  $1a
0e57: eb 52     mov   y,$52
0e59: f5 31 03  mov   a,$0331+x
0e5c: cf        mul   ya
0e5d: dd        mov   a,y
0e5e: 60        clrc
0e5f: 95 30 03  adc   a,$0330+x
0e62: 1c        asl   a
0e63: 90 02     bcc   $0e67
0e65: 48 ff     eor   a,#$ff
0e67: fb e1     mov   y,$e1+x
0e69: cf        mul   ya
0e6a: dd        mov   a,y
0e6b: 48 ff     eor   a,#$ff
0e6d: eb 5a     mov   y,$5a
0e6f: cf        mul   ya
0e70: f5 10 02  mov   a,$0210+x
0e73: cf        mul   ya
0e74: f5 51 02  mov   a,$0251+x
0e77: cf        mul   ya
0e78: dd        mov   a,y
0e79: cf        mul   ya
0e7a: dd        mov   a,y
0e7b: d5 71 02  mov   $0271+x,a
0e7e: 6f        ret

0e7f: db $7f,$00,$00,$00,$00,$00,$00,$00,$58,$bf,$db,$f0,$fe,$07,$0c,$0c,$0c,$21,$2b,$2b,$13,$fe,$f3,$f9,$34,$33,$00,$d9,$e5,$01,$fc,$eb
