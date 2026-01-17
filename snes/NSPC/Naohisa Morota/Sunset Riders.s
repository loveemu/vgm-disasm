0420: 20        clrp
0421: cd cf     mov   x,#$cf
0423: bd        mov   sp,x
0424: e8 00     mov   a,#$00
0426: 5d        mov   x,a
0427: af        mov   (x)+,a
0428: c8 e0     cmp   x,#$e0
042a: d0 fb     bne   $0427
042c: 8d 02     mov   y,#$02
042e: da 14     movw  $14,ya
0430: fd        mov   y,a
0431: d7 14     mov   ($14)+y,a
0433: fc        inc   y
0434: d0 fb     bne   $0431
0436: ab 15     inc   $15
0438: f8 15     mov   x,$15
043a: c8 04     cmp   x,#$04
043c: d0 f3     bne   $0431
043e: e8 3f     mov   a,#$3f
0440: 8d 5d     mov   y,#$5d
0442: 3f 5e 06  call  $065e
0445: a2 48     set5  $48
0447: 8d ff     mov   y,#$ff
0449: cd 00     mov   x,#$00
044b: 1d        dec   x
044c: d0 fd     bne   $044b
044e: dc        dec   y
044f: d0 fa     bne   $044b
0451: 8d ff     mov   y,#$ff
0453: cd 00     mov   x,#$00
0455: 1d        dec   x
0456: d0 fd     bne   $0455
0458: dc        dec   y
0459: d0 fa     bne   $0455
045b: e8 00     mov   a,#$00
045d: 8d 6d     mov   y,#$6d
045f: 3f 5e 06  call  $065e
0462: 8d 7d     mov   y,#$7d
0464: 3f 5e 06  call  $065e
0467: 8d 4d     mov   y,#$4d
0469: 3f 5e 06  call  $065e
046c: 8d 0d     mov   y,#$0d
046e: 3f 5e 06  call  $065e
0471: 8d 2c     mov   y,#$2c
0473: 3f 5e 06  call  $065e
0476: 8d 3c     mov   y,#$3c
0478: 3f 5e 06  call  $065e
047b: 8d 71     mov   y,#$71
047d: e8 00     mov   a,#$00
047f: 3f 5e 06  call  $065e
0482: dc        dec   y
0483: 3f 5e 06  call  $065e
0486: dd        mov   a,y
0487: 80        setc
0488: a8 0f     sbc   a,#$0f
048a: fd        mov   y,a
048b: 10 f0     bpl   $047d
048d: e8 ff     mov   a,#$ff
048f: c4 46     mov   $46,a
0491: 8d 5c     mov   y,#$5c
0493: 3f 5e 06  call  $065e
0496: e8 7f     mov   a,#$7f
0498: 8d 0c     mov   y,#$0c
049a: 3f 5e 06  call  $065e
049d: 8d 1c     mov   y,#$1c
049f: 3f 5e 06  call  $065e
04a2: e8 f0     mov   a,#$f0
04a4: c5 f1 00  mov   $00f1,a
04a7: e8 10     mov   a,#$10
04a9: c5 fa 00  mov   $00fa,a
04ac: c4 53     mov   $53,a
04ae: e8 01     mov   a,#$01
04b0: c5 f1 00  mov   $00f1,a
04b3: e8 07     mov   a,#$07
04b5: c5 d0 00  mov   $00d0,a
04b8: e8 00     mov   a,#$00
04ba: c4 31     mov   $31,a
04bc: c4 33     mov   $33,a
04be: c4 35     mov   $35,a
04c0: c4 37     mov   $37,a
04c2: c4 39     mov   $39,a
04c4: c4 3b     mov   $3b,a
04c6: c4 3d     mov   $3d,a
04c8: c4 3e     mov   $3e,a
04ca: c4 3f     mov   $3f,a
04cc: c4 e3     mov   $e3,a
04ce: c4 e4     mov   $e4,a
04d0: c4 e2     mov   $e2,a
04d2: 9c        dec   a
04d3: c4 e5     mov   $e5,a
04d5: e8 80     mov   a,#$80
04d7: c4 e0     mov   $e0,a
04d9: ab e1     inc   $e1
04db: 8d 0a     mov   y,#$0a
04dd: ad 05     cmp   y,#$05
04df: f0 07     beq   $04e8
04e1: b0 08     bcs   $04eb
04e3: 69 4d 4c  cmp   ($4c),($4d)
04e6: d0 11     bne   $04f9
04e8: e3 4c 0e  bbs7  $4c,$04f9
04eb: f6 02 11  mov   a,$1102+y
04ee: c5 f2 00  mov   $00f2,a
04f1: f6 0c 11  mov   a,$110c+y
04f4: 5d        mov   x,a
04f5: e6        mov   a,(x)
04f6: c5 f3 00  mov   $00f3,a
04f9: fe e2     dbnz  y,$04dd
04fb: cb 45     mov   $45,y
04fd: cb 46     mov   $46,y
04ff: e4 18     mov   a,$18
0501: 44 19     eor   a,$19
0503: 5c        lsr   a
0504: 5c        lsr   a
0505: ed        notc
0506: 6b 18     ror   $18
0508: 6b 19     ror   $19
050a: ec fd 00  mov   y,$00fd
050d: f0 fb     beq   $050a
050f: 6d        push  y
0510: ee        pop   y
0511: 6d        push  y
0512: e8 20     mov   a,#$20
0514: cf        mul   ya
0515: 60        clrc
0516: 84 43     adc   a,$43
0518: c4 43     mov   $43,a
051a: 90 0d     bcc   $0529
051c: 3f 4f 08  call  $084f
051f: 3f 65 06  call  $0665
0522: 69 4d 4c  cmp   ($4c),($4d)
0525: f0 02     beq   $0529
0527: ab 4c     inc   $4c
0529: e4 53     mov   a,$53
052b: ee        pop   y
052c: cf        mul   ya
052d: 60        clrc
052e: 84 51     adc   a,$51
0530: c4 51     mov   $51,a
0532: 90 06     bcc   $053a
0534: 3f 8e 09  call  $098e
0537: 5f d9 04  jmp   $04d9

053a: e4 04     mov   a,$04
053c: f0 18     beq   $0556
053e: cd 00     mov   x,#$00
0540: 8f 01 47  mov   $47,#$01
0543: e4 d0     mov   a,$d0
0545: c4 d1     mov   $d1,a
0547: f4 31     mov   a,$31+x
0549: f0 03     beq   $054e
054b: 3f 2b 10  call  $102b
054e: 3d        inc   x
054f: 3d        inc   x
0550: 0b 47     asl   $47
0552: 8b d1     dec   $d1
0554: 10 f1     bpl   $0547
0556: 5f d9 04  jmp   $04d9

0559: f4 04     mov   a,$04+x
055b: d5 f4 00  mov   $00f4+x,a
055e: f5 f4 00  mov   a,$00f4+x
0561: 75 f4 00  cmp   a,$00f4+x
0564: d0 f8     bne   $055e
0566: d4 1b     mov   $1b+x,a
0568: 6f        ret

0569: ad ca     cmp   y,#$ca
056b: 90 05     bcc   $0572
056d: 3f 31 0b  call  $0b31
0570: 8d a4     mov   y,#$a4
0572: ad c8     cmp   y,#$c8
0574: b0 f2     bcs   $0568
0576: e4 1a     mov   a,$1a
0578: 24 47     and   a,$47
057a: d0 ec     bne   $0568
057c: dd        mov   a,y
057d: 28 7f     and   a,#$7f
057f: 60        clrc
0580: 84 50     adc   a,$50
0582: 60        clrc
0583: 95 f0 02  adc   a,$02f0+x
0586: d5 61 03  mov   $0361+x,a
0589: f5 81 03  mov   a,$0381+x
058c: d5 60 03  mov   $0360+x,a
058f: f5 b1 02  mov   a,$02b1+x
0592: 5c        lsr   a
0593: e8 00     mov   a,#$00
0595: 7c        ror   a
0596: d5 a0 02  mov   $02a0+x,a
0599: e8 00     mov   a,#$00
059b: d4 b0     mov   $b0+x,a
059d: d5 00 01  mov   $0100+x,a
05a0: d5 d0 02  mov   $02d0+x,a
05a3: d4 c0     mov   $c0+x,a
05a5: 09 47 5e  or    ($5e),($47)
05a8: 09 47 45  or    ($45),($47)
05ab: f5 80 02  mov   a,$0280+x
05ae: d4 a0     mov   $a0+x,a
05b0: f0 1e     beq   $05d0
05b2: f5 81 02  mov   a,$0281+x
05b5: d4 a1     mov   $a1+x,a
05b7: f5 90 02  mov   a,$0290+x
05ba: d0 0a     bne   $05c6
05bc: f5 61 03  mov   a,$0361+x
05bf: 80        setc
05c0: b5 91 02  sbc   a,$0291+x
05c3: d5 61 03  mov   $0361+x,a
05c6: f5 91 02  mov   a,$0291+x
05c9: 60        clrc
05ca: 95 61 03  adc   a,$0361+x
05cd: 3f d7 0d  call  $0dd7
05d0: 3f ef 0d  call  $0def
05d3: 8d 00     mov   y,#$00
05d5: e4 11     mov   a,$11
05d7: 80        setc
05d8: a8 34     sbc   a,#$34
05da: b0 09     bcs   $05e5
05dc: e4 11     mov   a,$11
05de: 80        setc
05df: a8 13     sbc   a,#$13
05e1: b0 06     bcs   $05e9
05e3: dc        dec   y
05e4: 1c        asl   a
05e5: 7a 10     addw  ya,$10
05e7: da 10     movw  $10,ya
05e9: 4d        push  x
05ea: e4 11     mov   a,$11
05ec: 1c        asl   a
05ed: 8d 00     mov   y,#$00
05ef: cd 18     mov   x,#$18
05f1: 9e        div   ya,x
05f2: 5d        mov   x,a
05f3: f6 18 11  mov   a,$1118+y
05f6: c4 15     mov   $15,a
05f8: f6 17 11  mov   a,$1117+y
05fb: c4 14     mov   $14,a
05fd: f6 1a 11  mov   a,$111a+y
0600: 2d        push  a
0601: f6 19 11  mov   a,$1119+y
0604: ee        pop   y
0605: 9a 14     subw  ya,$14
0607: eb 10     mov   y,$10
0609: cf        mul   ya
060a: dd        mov   a,y
060b: 8d 00     mov   y,#$00
060d: 7a 14     addw  ya,$14
060f: cb 15     mov   $15,y
0611: 1c        asl   a
0612: 2b 15     rol   $15
0614: c4 14     mov   $14,a
0616: 2f 04     bra   $061c
0618: 4b 15     lsr   $15
061a: 7c        ror   a
061b: 3d        inc   x
061c: c8 06     cmp   x,#$06
061e: d0 f8     bne   $0618
0620: c4 14     mov   $14,a
0622: ce        pop   x
0623: f5 20 02  mov   a,$0220+x
0626: eb 15     mov   y,$15
0628: cf        mul   ya
0629: da 16     movw  $16,ya
062b: f5 20 02  mov   a,$0220+x
062e: eb 14     mov   y,$14
0630: cf        mul   ya
0631: 6d        push  y
0632: f5 21 02  mov   a,$0221+x
0635: eb 14     mov   y,$14
0637: cf        mul   ya
0638: 7a 16     addw  ya,$16
063a: da 16     movw  $16,ya
063c: f5 21 02  mov   a,$0221+x
063f: eb 15     mov   y,$15
0641: cf        mul   ya
0642: fd        mov   y,a
0643: ae        pop   a
0644: 7a 16     addw  ya,$16
0646: da 16     movw  $16,ya
0648: 7d        mov   a,x
0649: 9f        xcn   a
064a: 5c        lsr   a
064b: 08 02     or    a,#$02
064d: fd        mov   y,a
064e: e4 16     mov   a,$16
0650: 3f 56 06  call  $0656
0653: fc        inc   y
0654: e4 17     mov   a,$17
0656: 2d        push  a
0657: e4 47     mov   a,$47
0659: 24 1a     and   a,$1a
065b: ae        pop   a
065c: d0 06     bne   $0664
065e: cc f2 00  mov   $00f2,y
0661: c5 f3 00  mov   $00f3,a
0664: 6f        ret

0665: eb d0     mov   y,$d0
0667: ad 07     cmp   y,#$07
0669: b0 03     bcs   $066e
066b: 3f 4c 07  call  $074c
066e: 6f        ret

066f: 8d 00     mov   y,#$00
0671: f7 40     mov   a,($40)+y
0673: 3a 40     incw  $40
0675: 2d        push  a
0676: f7 40     mov   a,($40)+y
0678: 3a 40     incw  $40
067a: fd        mov   y,a
067b: ae        pop   a
067c: 6f        ret

067d: 3f a4 11  call  $11a4
0680: c4 08     mov   $08,a
0682: 6f        ret

0683: 2d        push  a
0684: f4 d3     mov   a,$d3+x
0686: 60        clrc
0687: 88 01     adc   a,#$01
0689: d4 d3     mov   $d3+x,a
068b: e8 00     mov   a,#$00
068d: 94 d4     adc   a,$d4+x
068f: d4 d4     mov   $d4+x,a
0691: ae        pop   a
0692: 6f        ret

0693: c4 04     mov   $04,a
0695: f8 d0     mov   x,$d0
0697: c8 07     cmp   x,#$07
0699: b0 06     bcs   $06a1
069b: 80        setc
069c: a8 10     sbc   a,#$10
069e: 3f a2 06  call  $06a2
06a1: 6f        ret

06a2: c4 05     mov   $05,a
06a4: 1c        asl   a
06a5: 5d        mov   x,a
06a6: f5 1f 19  mov   a,$191f+x
06a9: 2d        push  a
06aa: f5 20 19  mov   a,$1920+x
06ad: fd        mov   y,a
06ae: ae        pop   a
06af: da d3     movw  $d3,ya
06b1: cd 00     mov   x,#$00
06b3: c9 13 00  mov   $0013,x
06b6: e7 d3     mov   a,($d3+x)
06b8: 30 c8     bmi   $0682
06ba: c5 10 00  mov   $0010,a
06bd: 28 01     and   a,#$01
06bf: fd        mov   y,a
06c0: e4 d0     mov   a,$d0
06c2: 68 06     cmp   a,#$06
06c4: d0 07     bne   $06cd
06c6: ad 00     cmp   y,#$00
06c8: d0 03     bne   $06cd
06ca: ac 13 00  inc   $0013
06cd: f6 e3 00  mov   a,$00e3+y
06d0: c5 11 00  mov   $0011,a
06d3: 3f 83 06  call  $0683
06d6: e7 d3     mov   a,($d3+x)
06d8: 64 11     cmp   a,$11
06da: 90 a6     bcc   $0682
06dc: d6 e3 00  mov   $00e3+y,a
06df: 3f 83 06  call  $0683
06e2: e7 d3     mov   a,($d3+x)
06e4: fd        mov   y,a
06e5: 3f 83 06  call  $0683
06e8: e7 d3     mov   a,($d3+x)
06ea: 3f 83 06  call  $0683
06ed: da d9     movw  $d9,ya
06ef: e5 13 00  mov   a,$0013
06f2: d0 43     bne   $0737
06f4: e5 10 00  mov   a,$0010
06f7: 68 00     cmp   a,#$00
06f9: d0 0c     bne   $0707
06fb: e4 d9     mov   a,$d9
06fd: c4 3d     mov   $3d,a
06ff: e4 da     mov   a,$da
0701: c4 3c     mov   $3c,a
0703: cd 0c     mov   x,#$0c
0705: 2f 0a     bra   $0711
0707: e4 d9     mov   a,$d9
0709: c4 3f     mov   $3f,a
070b: e4 da     mov   a,$da
070d: c4 3e     mov   $3e,a
070f: cd 0e     mov   x,#$0e
0711: e8 0a     mov   a,#$0a
0713: 3f 8f 0b  call  $0b8f
0716: d5 11 02  mov   $0211+x,a
0719: d5 81 03  mov   $0381+x,a
071c: d5 f0 02  mov   $02f0+x,a
071f: d5 80 02  mov   $0280+x,a
0722: d4 b1     mov   $b1+x,a
0724: d4 c1     mov   $c1+x,a
0726: d5 e0 03  mov   $03e0+x,a
0729: d5 d0 03  mov   $03d0+x,a
072c: e8 ff     mov   a,#$ff
072e: d5 01 03  mov   $0301+x,a
0731: 8f ff 59  mov   $59,#$ff
0734: 3f eb 07  call  $07eb
0737: 5f b1 06  jmp   $06b1

073a: 7d        mov   a,x
073b: 5c        lsr   a
073c: 28 01     and   a,#$01
073e: fd        mov   y,a
073f: e8 00     mov   a,#$00
0741: d6 e3 00  mov   $00e3+y,a
0744: 6f        ret

0745: 00        nop
0746: 00        nop
0747: 00        nop
0748: 00        nop
0749: 00        nop
074a: 40        setp
074b: 80        setc
074c: e9 d0 00  mov   x,$00d0
074f: f5 45 07  mov   a,$0745+x
0752: c4 47     mov   $47,a
0754: e5 d0 00  mov   a,$00d0
0757: bc        inc   a
0758: 1c        asl   a
0759: 5d        mov   x,a
075a: f4 31     mov   a,$31+x
075c: f0 62     beq   $07c0
075e: 9b 70     dec   $70+x
0760: d0 58     bne   $07ba
0762: 3f 1f 0b  call  $0b1f
0765: d0 09     bne   $0770
0767: 3f e4 07  call  $07e4
076a: 3f 3a 07  call  $073a
076d: 5f c0 07  jmp   $07c0

0770: 30 28     bmi   $079a
0772: d5 00 02  mov   $0200+x,a
0775: 3f 1f 0b  call  $0b1f
0778: 30 20     bmi   $079a
077a: 2d        push  a
077b: 9f        xcn   a
077c: 28 07     and   a,#$07
077e: fd        mov   y,a
077f: ad 07     cmp   y,#$07
0781: d0 04     bne   $0787
0783: e8 00     mov   a,#$00
0785: 2f 03     bra   $078a
0787: f6 1c 22  mov   a,$221c+y
078a: d5 01 02  mov   $0201+x,a
078d: ae        pop   a
078e: 28 0f     and   a,#$0f
0790: fd        mov   y,a
0791: f6 24 22  mov   a,$2224+y
0794: d5 10 02  mov   $0210+x,a
0797: 3f 1f 0b  call  $0b1f
079a: 68 e0     cmp   a,#$e0
079c: 90 05     bcc   $07a3
079e: 3f 0d 0b  call  $0b0d
07a1: 2f bf     bra   $0762
07a3: 3f 69 05  call  $0569
07a6: f5 00 02  mov   a,$0200+x
07a9: d4 70     mov   $70+x,a
07ab: fd        mov   y,a
07ac: f5 01 02  mov   a,$0201+x
07af: f0 05     beq   $07b6
07b1: cf        mul   ya
07b2: dd        mov   a,y
07b3: d0 01     bne   $07b6
07b5: bc        inc   a
07b6: d4 71     mov   $71+x,a
07b8: 2f 03     bra   $07bd
07ba: 3f 36 0f  call  $0f36
07bd: 3f b7 0d  call  $0db7
07c0: 0b 47     asl   $47
07c2: 3d        inc   x
07c3: 3d        inc   x
07c4: c8 10     cmp   x,#$10
07c6: d0 92     bne   $075a
07c8: e9 d0 00  mov   x,$00d0
07cb: f5 45 07  mov   a,$0745+x
07ce: c4 47     mov   $47,a
07d0: e5 d0 00  mov   a,$00d0
07d3: bc        inc   a
07d4: 1c        asl   a
07d5: 5d        mov   x,a
07d6: f4 31     mov   a,$31+x
07d8: f0 03     beq   $07dd
07da: 3f 73 0e  call  $0e73
07dd: 3d        inc   x
07de: 3d        inc   x
07df: 0b 47     asl   $47
07e1: d0 f3     bne   $07d6
07e3: 6f        ret

07e4: e8 00     mov   a,#$00
07e6: d4 31     mov   $31+x,a
07e8: 3f 31 0b  call  $0b31
07eb: e8 00     mov   a,#$00
07ed: d4 80     mov   $80+x,a
07ef: d4 90     mov   $90+x,a
07f1: d4 91     mov   $91+x,a
07f3: d5 e0 03  mov   $03e0+x,a
07f6: d5 d0 03  mov   $03d0+x,a
07f9: bc        inc   a
07fa: d4 70     mov   $70+x,a
07fc: 2d        push  a
07fd: 6d        push  y
07fe: 8d 40     mov   y,#$40
0800: c8 0c     cmp   x,#$0c
0802: f0 02     beq   $0806
0804: 8d 80     mov   y,#$80
0806: dd        mov   a,y
0807: 8d 5c     mov   y,#$5c
0809: 3f 56 06  call  $0656
080c: ee        pop   y
080d: ae        pop   a
080e: 6f        ret

080f: e5 d0 00  mov   a,$00d0
0812: 68 06     cmp   a,#$06
0814: f0 08     beq   $081e
0816: cd 0c     mov   x,#$0c
0818: 3f e4 07  call  $07e4
081b: 3f 3a 07  call  $073a
081e: cd 0e     mov   x,#$0e
0820: 3f e4 07  call  $07e4
0823: 3f 3a 07  call  $073a
0826: 6f        ret

0827: c4 04     mov   $04,a
0829: e4 1a     mov   a,$1a
082b: 48 ff     eor   a,#$ff
082d: 0e 46 00  tset1 $0046
0830: e8 00     mov   a,#$00
0832: c4 e3     mov   $e3,a
0834: c4 e4     mov   $e4,a
0836: cd 10     mov   x,#$10
0838: d4 31     mov   $31+x,a
083a: d5 01 03  mov   $0301+x,a
083d: 1d        dec   x
083e: 1d        dec   x
083f: 10 f7     bpl   $0838
0841: e4 e0     mov   a,$e0
0843: 08 80     or    a,#$80
0845: c4 e0     mov   $e0,a
0847: 6f        ret

0848: e5 f6 00  mov   a,$00f6
084b: c5 1a 00  mov   $001a,a
084e: 6f        ret

084f: cd 00     mov   x,#$00
0851: 3f 59 05  call  $0559
0854: e5 f4 00  mov   a,$00f4
0857: 65 f4 00  cmp   a,$00f4
085a: d0 f3     bne   $084f
085c: c4 04     mov   $04,a
085e: d5 f4 00  mov   $00f4+x,a
0861: 64 e5     cmp   a,$e5
0863: f0 e2     beq   $0847
0865: c4 e5     mov   $e5,a
0867: 68 11     cmp   a,#$11
0869: 90 dc     bcc   $0847
086b: 68 f0     cmp   a,#$f0
086d: b0 03     bcs   $0872
086f: 5f 93 06  jmp   $0693

0872: 68 fe     cmp   a,#$fe
0874: f0 0c     beq   $0882
0876: 68 ff     cmp   a,#$ff
0878: d0 10     bne   $088a
087a: e8 00     mov   a,#$00
087c: 3f 7d 06  call  $067d
087f: 5f e7 08  jmp   $08e7

0882: e8 00     mov   a,#$00
0884: 3f 5b 11  call  $115b
0887: 5f e7 08  jmp   $08e7

088a: 68 f2     cmp   a,#$f2
088c: d0 06     bne   $0894
088e: 3f fa 11  call  $11fa
0891: 5f e7 08  jmp   $08e7

0894: 68 f3     cmp   a,#$f3
0896: d0 06     bne   $089e
0898: 3f 0c 12  call  $120c
089b: 5f e7 08  jmp   $08e7

089e: 68 f4     cmp   a,#$f4
08a0: d0 06     bne   $08a8
08a2: 3f 0f 08  call  $080f
08a5: 5f e7 08  jmp   $08e7

08a8: 68 f5     cmp   a,#$f5
08aa: d0 05     bne   $08b1
08ac: 3f 27 08  call  $0827
08af: 2f 36     bra   $08e7
08b1: 68 f6     cmp   a,#$f6
08b3: d0 05     bne   $08ba
08b5: 3f 15 12  call  $1215
08b8: 2f 2d     bra   $08e7
08ba: 68 f7     cmp   a,#$f7
08bc: d0 07     bne   $08c5
08be: 8d 01     mov   y,#$01
08c0: 3f 71 12  call  $1271
08c3: 2f 22     bra   $08e7
08c5: 68 f8     cmp   a,#$f8
08c7: d0 05     bne   $08ce
08c9: 3f 6f 12  call  $126f
08cc: 2f 19     bra   $08e7
08ce: 68 f9     cmp   a,#$f9
08d0: d0 05     bne   $08d7
08d2: 3f 04 12  call  $1204
08d5: 2f 10     bra   $08e7
08d7: 68 fa     cmp   a,#$fa
08d9: d0 05     bne   $08e0
08db: 3f 22 12  call  $1222
08de: 2f 07     bra   $08e7
08e0: 68 fc     cmp   a,#$fc
08e2: d0 03     bne   $08e7
08e4: 3f 48 08  call  $0848
08e7: 6f        ret

08e8: 00        nop
08e9: 00        nop
08ea: 00        nop
08eb: 00        nop
08ec: 00        nop
08ed: 3f 7f ff  call  $ff7f
08f0: c4 04     mov   $04,a
08f2: 1c        asl   a
08f3: f0 15     beq   $090a
08f5: 5d        mov   x,a
08f6: f5 73 12  mov   a,$1273+x
08f9: fd        mov   y,a
08fa: f5 72 12  mov   a,$1272+x
08fd: da 40     movw  $40,ya
08ff: 8f 02 0c  mov   $0c,#$02
0902: e4 e0     mov   a,$e0
0904: 28 7c     and   a,#$7c
0906: c4 e0     mov   $e0,a
0908: 2f 06     bra   $0910
090a: e4 e0     mov   a,$e0
090c: 08 80     or    a,#$80
090e: c4 e0     mov   $e0,a
0910: f8 d0     mov   x,$d0
0912: f5 e8 08  mov   a,$08e8+x
0915: c4 11     mov   $11,a
0917: e4 1a     mov   a,$1a
0919: 44 11     eor   a,$11
091b: 0e 46 00  tset1 $0046
091e: 6f        ret

091f: 2d        push  a
0920: e8 00     mov   a,#$00
0922: 3f 6b 0d  call  $0d6b
0925: e8 00     mov   a,#$00
0927: fd        mov   y,a
0928: da 60     movw  $60,ya
092a: da 62     movw  $62,ya
092c: a2 48     set5  $48
092e: ae        pop   a
092f: 8f 80 47  mov   $47,#$80
0932: e4 d0     mov   a,$d0
0934: c4 d1     mov   $d1,a
0936: 1c        asl   a
0937: 5d        mov   x,a
0938: e8 e0     mov   a,#$e0
093a: d5 01 03  mov   $0301+x,a
093d: e8 ff     mov   a,#$ff
093f: d5 51 00  mov   $0051+x,a
0942: e8 0a     mov   a,#$0a
0944: 3f 8f 0b  call  $0b8f
0947: e8 00     mov   a,#$00
0949: d5 30 03  mov   $0330+x,a
094c: d5 81 03  mov   $0381+x,a
094f: d5 f0 02  mov   $02f0+x,a
0952: d5 80 02  mov   $0280+x,a
0955: d5 b1 00  mov   $00b1+x,a
0958: d5 c1 00  mov   $00c1+x,a
095b: d5 e0 03  mov   $03e0+x,a
095e: d5 d0 03  mov   $03d0+x,a
0961: d6 80 00  mov   $0080+y,a
0964: d6 90 00  mov   $0090+y,a
0967: d6 91 00  mov   $0091+y,a
096a: bc        inc   a
096b: d6 70 00  mov   $0070+y,a
096e: d6 01 02  mov   $0201+y,a
0971: 1d        dec   x
0972: 1d        dec   x
0973: 4b 47     lsr   $47
0975: 8b d1     dec   $d1
0977: 10 bf     bpl   $0938
0979: e8 00     mov   a,#$00
097b: c4 5a     mov   $5a,a
097d: c4 68     mov   $68,a
097f: c4 54     mov   $54,a
0981: c4 50     mov   $50,a
0983: c4 42     mov   $42,a
0985: c4 5f     mov   $5f,a
0987: 8f ff 59  mov   $59,#$ff
098a: 8f 20 53  mov   $53,#$20
098d: 6f        ret

098e: eb 08     mov   y,$08
0990: e4 1b     mov   a,$1b
0992: c4 08     mov   $08,a
0994: 68 11     cmp   a,#$11
0996: 90 20     bcc   $09b8
0998: 68 f0     cmp   a,#$f0
099a: b0 02     bcs   $099e
099c: c4 04     mov   $04,a
099e: 68 f0     cmp   a,#$f0
09a0: d0 05     bne   $09a7
09a2: c4 04     mov   $04,a
09a4: 5f 10 09  jmp   $0910

09a7: 68 f1     cmp   a,#$f1
09a9: d0 05     bne   $09b0
09ab: c4 04     mov   $04,a
09ad: 5f c2 09  jmp   $09c2

09b0: 68 fb     cmp   a,#$fb
09b2: d0 0e     bne   $09c2
09b4: c4 04     mov   $04,a
09b6: 2f 0a     bra   $09c2
09b8: 7e 1b     cmp   y,$1b
09ba: f0 06     beq   $09c2
09bc: 5f f0 08  jmp   $08f0

09bf: 5f 1f 09  jmp   $091f

09c2: 3f 2f 12  call  $122f
09c5: e4 e0     mov   a,$e0
09c7: 10 03     bpl   $09cc
09c9: 5f 8d 09  jmp   $098d

09cc: e4 0c     mov   a,$0c
09ce: f0 5e     beq   $0a2e
09d0: 6e 0c ec  dbnz  $0c,$09bf
09d3: 3f 6f 06  call  $066f
09d6: d0 17     bne   $09ef
09d8: fd        mov   y,a
09d9: d0 03     bne   $09de
09db: 5f f0 08  jmp   $08f0

09de: 8b 42     dec   $42
09e0: 10 02     bpl   $09e4
09e2: c4 42     mov   $42,a
09e4: 3f 6f 06  call  $066f
09e7: f8 42     mov   x,$42
09e9: f0 e8     beq   $09d3
09eb: da 40     movw  $40,ya
09ed: 2f e4     bra   $09d3
09ef: da 16     movw  $16,ya
09f1: e4 d0     mov   a,$d0
09f3: 1c        asl   a
09f4: bc        inc   a
09f5: fd        mov   y,a
09f6: f7 16     mov   a,($16)+y
09f8: d6 30 00  mov   $0030+y,a
09fb: dc        dec   y
09fc: 10 f8     bpl   $09f6
09fe: cd 00     mov   x,#$00
0a00: 8f 01 47  mov   $47,#$01
0a03: e4 d0     mov   a,$d0
0a05: c4 d1     mov   $d1,a
0a07: f4 31     mov   a,$31+x
0a09: f0 0a     beq   $0a15
0a0b: f5 11 02  mov   a,$0211+x
0a0e: d0 05     bne   $0a15
0a10: e8 00     mov   a,#$00
0a12: 3f 31 0b  call  $0b31
0a15: e8 00     mov   a,#$00
0a17: d4 80     mov   $80+x,a
0a19: d4 90     mov   $90+x,a
0a1b: d4 91     mov   $91+x,a
0a1d: d5 e0 03  mov   $03e0+x,a
0a20: d5 d0 03  mov   $03d0+x,a
0a23: bc        inc   a
0a24: d4 70     mov   $70+x,a
0a26: 3d        inc   x
0a27: 3d        inc   x
0a28: 0b 47     asl   $47
0a2a: 8b d1     dec   $d1
0a2c: 10 d9     bpl   $0a07
0a2e: cd 00     mov   x,#$00
0a30: d8 5e     mov   $5e,x
0a32: 8f 01 47  mov   $47,#$01
0a35: e4 d0     mov   a,$d0
0a37: c4 d1     mov   $d1,a
0a39: d8 44     mov   $44,x
0a3b: f4 31     mov   a,$31+x
0a3d: f0 70     beq   $0aaf
0a3f: 9b 70     dec   $70+x
0a41: d0 66     bne   $0aa9
0a43: 3f 1f 0b  call  $0b1f
0a46: d0 17     bne   $0a5f
0a48: f4 80     mov   a,$80+x
0a4a: f0 87     beq   $09d3
0a4c: 3f fe 0c  call  $0cfe
0a4f: 9b 80     dec   $80+x
0a51: d0 f0     bne   $0a43
0a53: f5 30 02  mov   a,$0230+x
0a56: d4 30     mov   $30+x,a
0a58: f5 31 02  mov   a,$0231+x
0a5b: d4 31     mov   $31+x,a
0a5d: 2f e4     bra   $0a43
0a5f: 30 28     bmi   $0a89
0a61: d5 00 02  mov   $0200+x,a
0a64: 3f 1f 0b  call  $0b1f
0a67: 30 20     bmi   $0a89
0a69: 2d        push  a
0a6a: 9f        xcn   a
0a6b: 28 07     and   a,#$07
0a6d: fd        mov   y,a
0a6e: ad 07     cmp   y,#$07
0a70: d0 04     bne   $0a76
0a72: e8 00     mov   a,#$00
0a74: 2f 03     bra   $0a79
0a76: f6 1c 22  mov   a,$221c+y
0a79: d5 01 02  mov   $0201+x,a
0a7c: ae        pop   a
0a7d: 28 0f     and   a,#$0f
0a7f: fd        mov   y,a
0a80: f6 24 22  mov   a,$2224+y
0a83: d5 10 02  mov   $0210+x,a
0a86: 3f 1f 0b  call  $0b1f
0a89: 68 e0     cmp   a,#$e0
0a8b: 90 05     bcc   $0a92
0a8d: 3f 0d 0b  call  $0b0d
0a90: 2f b1     bra   $0a43
0a92: 3f 69 05  call  $0569
0a95: f5 00 02  mov   a,$0200+x
0a98: d4 70     mov   $70+x,a
0a9a: fd        mov   y,a
0a9b: f5 01 02  mov   a,$0201+x
0a9e: f0 05     beq   $0aa5
0aa0: cf        mul   ya
0aa1: dd        mov   a,y
0aa2: d0 01     bne   $0aa5
0aa4: bc        inc   a
0aa5: d4 71     mov   $71+x,a
0aa7: 2f 03     bra   $0aac
0aa9: 3f 36 0f  call  $0f36
0aac: 3f b7 0d  call  $0db7
0aaf: 3d        inc   x
0ab0: 3d        inc   x
0ab1: 0b 47     asl   $47
0ab3: 8b d1     dec   $d1
0ab5: 30 03     bmi   $0aba
0ab7: 5f 39 0a  jmp   $0a39

0aba: e4 54     mov   a,$54
0abc: f0 0b     beq   $0ac9
0abe: ba 56     movw  ya,$56
0ac0: 7a 52     addw  ya,$52
0ac2: 6e 54 02  dbnz  $54,$0ac7
0ac5: ba 54     movw  ya,$54
0ac7: da 52     movw  $52,ya
0ac9: e4 68     mov   a,$68
0acb: f0 15     beq   $0ae2
0acd: ba 64     movw  ya,$64
0acf: 7a 60     addw  ya,$60
0ad1: da 60     movw  $60,ya
0ad3: ba 66     movw  ya,$66
0ad5: 7a 62     addw  ya,$62
0ad7: 6e 68 06  dbnz  $68,$0ae0
0ada: ba 68     movw  ya,$68
0adc: da 60     movw  $60,ya
0ade: eb 6a     mov   y,$6a
0ae0: da 62     movw  $62,ya
0ae2: e4 5a     mov   a,$5a
0ae4: f0 0e     beq   $0af4
0ae6: ba 5c     movw  ya,$5c
0ae8: 7a 58     addw  ya,$58
0aea: 6e 5a 02  dbnz  $5a,$0aef
0aed: ba 5a     movw  ya,$5a
0aef: da 58     movw  $58,ya
0af1: 8f ff 5e  mov   $5e,#$ff
0af4: cd 00     mov   x,#$00
0af6: 8f 01 47  mov   $47,#$01
0af9: e4 d0     mov   a,$d0
0afb: c4 d1     mov   $d1,a
0afd: f4 31     mov   a,$31+x
0aff: f0 03     beq   $0b04
0b01: 3f 73 0e  call  $0e73
0b04: 3d        inc   x
0b05: 3d        inc   x
0b06: 0b 47     asl   $47
0b08: 8b d1     dec   $d1
0b0a: 10 f1     bpl   $0afd
0b0c: 6f        ret

; dispatch vcmd in A (e0-ff)
0b0d: 1c        asl   a
0b0e: fd        mov   y,a
0b0f: f6 57 0d  mov   a,$0d57+y
0b12: 2d        push  a
0b13: f6 56 0d  mov   a,$0d56+y
0b16: 2d        push  a
0b17: dd        mov   a,y
0b18: 5c        lsr   a
0b19: fd        mov   y,a
0b1a: f6 f4 0d  mov   a,$0df4+y
0b1d: f0 08     beq   $0b27
0b1f: e7 30     mov   a,($30+x)
0b21: bb 30     inc   $30+x
0b23: d0 02     bne   $0b27
0b25: bb 31     inc   $31+x
0b27: fd        mov   y,a
0b28: 6f        ret
0b29: 9b 30     dec   $30+x
0b2b: b0 02     bcs   $0b2f
0b2d: 9b 31     dec   $31+x
0b2f: fd        mov   y,a
0b30: 6f        ret

; vcmd e0 - set instrument
0b31: d5 11 02  mov   $0211+x,a
0b34: fd        mov   y,a
0b35: 10 06     bpl   $0b3d
0b37: 80        setc
0b38: a8 ca     sbc   a,#$ca
0b3a: 60        clrc
0b3b: 84 5f     adc   a,$5f
0b3d: 8d 06     mov   y,#$06
0b3f: cf        mul   ya
0b40: da 14     movw  $14,ya
0b42: 60        clrc
0b43: 98 49 14  adc   $14,#$49
0b46: 98 16 15  adc   $15,#$16
0b49: e4 1a     mov   a,$1a
0b4b: 24 47     and   a,$47
0b4d: d0 3b     bne   $0b8a
0b4f: 4d        push  x
0b50: 7d        mov   a,x
0b51: 9f        xcn   a
0b52: 5c        lsr   a
0b53: 08 04     or    a,#$04
0b55: 5d        mov   x,a
0b56: 8d 00     mov   y,#$00
0b58: f7 14     mov   a,($14)+y
0b5a: 10 0f     bpl   $0b6b
0b5c: 28 1f     and   a,#$1f
0b5e: 38 20 48  and   $48,#$20
0b61: 0e 48 00  tset1 $0048
0b64: 09 47 49  or    ($49),($47)
0b67: e8 02     mov   a,#$02
0b69: 2f 07     bra   $0b72
0b6b: e4 47     mov   a,$47
0b6d: 4e 49 00  tclr1 $0049
0b70: f7 14     mov   a,($14)+y
0b72: c9 f2 00  mov   $00f2,x
0b75: c5 f3 00  mov   $00f3,a
0b78: 3d        inc   x
0b79: fc        inc   y
0b7a: ad 04     cmp   y,#$04
0b7c: d0 f2     bne   $0b70
0b7e: ce        pop   x
0b7f: f7 14     mov   a,($14)+y
0b81: d5 21 02  mov   $0221+x,a
0b84: fc        inc   y
0b85: f7 14     mov   a,($14)+y
0b87: d5 20 02  mov   $0220+x,a
0b8a: 6f        ret

; vcmd e1 - pan
0b8b: eb e2     mov   y,$e2
0b8d: d0 0d     bne   $0b9c
0b8f: d5 51 03  mov   $0351+x,a
0b92: 28 1f     and   a,#$1f
0b94: d5 31 03  mov   $0331+x,a
0b97: e8 00     mov   a,#$00
0b99: d5 30 03  mov   $0330+x,a
0b9c: 6f        ret

; vcmd e2 - pan fade
0b9d: eb e2     mov   y,$e2
0b9f: d0 fb     bne   $0b9c
0ba1: d4 91     mov   $91+x,a
0ba3: 2d        push  a
0ba4: 3f 1f 0b  call  $0b1f
0ba7: d5 50 03  mov   $0350+x,a
0baa: 80        setc
0bab: b5 31 03  sbc   a,$0331+x
0bae: ce        pop   x
0baf: 3f fa 0d  call  $0dfa
0bb2: d5 40 03  mov   $0340+x,a
0bb5: dd        mov   a,y
0bb6: d5 41 03  mov   $0341+x,a
0bb9: 6f        ret

; vcmd e3 - vibrato on
0bba: d5 b0 02  mov   $02b0+x,a
0bbd: 3f 1f 0b  call  $0b1f
0bc0: d5 a1 02  mov   $02a1+x,a
0bc3: 3f 1f 0b  call  $0b1f
; vcmd e4 - vibrato off
0bc6: d4 b1     mov   $b1+x,a
0bc8: d5 c1 02  mov   $02c1+x,a
0bcb: e8 00     mov   a,#$00
0bcd: d5 b1 02  mov   $02b1+x,a
0bd0: 6f        ret

; vcmd f0 - vibrato fade+
0bd1: d5 b1 02  mov   $02b1+x,a
0bd4: 2d        push  a
0bd5: 8d 00     mov   y,#$00
0bd7: f4 b1     mov   a,$b1+x
0bd9: ce        pop   x
0bda: 9e        div   ya,x
0bdb: f8 44     mov   x,$44
0bdd: d5 c0 02  mov   $02c0+x,a
0be0: 6f        ret

; vcmd e5 - master volume
0be1: e4 d0     mov   a,$d0
0be3: 68 07     cmp   a,#$07
0be5: f0 04     beq   $0beb
0be7: c8 0c     cmp   x,#$0c
0be9: b0 05     bcs   $0bf0
0beb: e8 00     mov   a,#$00
0bed: da 58     movw  $58,ya
0bef: 6f        ret

0bf0: 3f 29 0b  call  $0b29
0bf3: 3f 1f 0b  call  $0b1f
0bf6: 2d        push  a
0bf7: 3f 1f 0b  call  $0b1f
0bfa: fd        mov   y,a
0bfb: ae        pop   a
0bfc: d4 30     mov   $30+x,a
0bfe: dd        mov   a,y
0bff: d4 31     mov   $31+x,a
0c01: 6f        ret

; vcmd fd - repeat section
0c02: f5 e0 03  mov   a,$03e0+x
0c05: d0 0a     bne   $0c11
0c07: 3f 1f 0b  call  $0b1f
0c0a: fd        mov   y,a
0c0b: dd        mov   a,y
0c0c: d5 e0 03  mov   $03e0+x,a
0c0f: 2f 0c     bra   $0c1d
0c11: f5 e0 03  mov   a,$03e0+x
0c14: 9c        dec   a
0c15: d5 e0 03  mov   $03e0+x,a
0c18: f0 12     beq   $0c2c
0c1a: 3f 21 0b  call  $0b21
0c1d: 3f 1f 0b  call  $0b1f
0c20: 2d        push  a
0c21: 3f 1f 0b  call  $0b1f
0c24: fd        mov   y,a
0c25: ae        pop   a
0c26: d4 30     mov   $30+x,a
0c28: dd        mov   a,y
0c29: d4 31     mov   $31+x,a
0c2b: 6f        ret

0c2c: 3f 21 0b  call  $0b21
0c2f: 3f 21 0b  call  $0b21
0c32: 3f 21 0b  call  $0b21
0c35: 6f        ret

; vcmd fc - jump to position
0c36: f5 d0 03  mov   a,$03d0+x
0c39: d0 fb     bne   $0c36
0c3b: f4 30     mov   a,$30+x
0c3d: d5 d0 03  mov   $03d0+x,a
0c40: f4 31     mov   a,$31+x
0c42: d5 d1 03  mov   $03d1+x,a
0c45: 5f f3 0b  jmp   $0bf3

; vcmd fe - return from jump
0c48: f5 d0 03  mov   a,$03d0+x
0c4b: f0 0d     beq   $0c5a
0c4d: d4 30     mov   $30+x,a
0c4f: f5 d1 03  mov   a,$03d1+x
0c52: d4 31     mov   $31+x,a
0c54: 3f 21 0b  call  $0b21
0c57: 3f 21 0b  call  $0b21
0c5a: e8 00     mov   a,#$00
0c5c: d5 d0 03  mov   $03d0+x,a
0c5f: d5 d1 03  mov   $03d1+x,a
0c62: 6f        ret

; vcmd e6 - master volume fade
0c63: c4 5a     mov   $5a,a
0c65: 3f 1f 0b  call  $0b1f
0c68: c4 5b     mov   $5b,a
0c6a: 80        setc
0c6b: a4 59     sbc   a,$59
0c6d: f8 5a     mov   x,$5a
0c6f: 3f fa 0d  call  $0dfa
0c72: da 5c     movw  $5c,ya
0c74: 6f        ret

; vcmd e7 - tempo
0c75: e8 00     mov   a,#$00
0c77: da 52     movw  $52,ya
0c79: 6f        ret

; vcmd e8 - tempo fade
0c7a: c4 54     mov   $54,a
0c7c: 3f 1f 0b  call  $0b1f
0c7f: c4 55     mov   $55,a
0c81: 80        setc
0c82: a4 53     sbc   a,$53
0c84: f8 54     mov   x,$54
0c86: 3f fa 0d  call  $0dfa
0c89: da 56     movw  $56,ya
0c8b: 6f        ret

; vcmd e9 - global transpose
0c8c: c4 50     mov   $50,a
0c8e: 6f        ret

; vcmd ea - per-voice transpose
0c8f: d5 f0 02  mov   $02f0+x,a
0c92: 6f        ret

; vcmd eb - tremolo on
0c93: d5 e0 02  mov   $02e0+x,a
0c96: 3f 1f 0b  call  $0b1f
0c99: d5 d1 02  mov   $02d1+x,a
0c9c: 3f 1f 0b  call  $0b1f
; vcmd ec - tremolo off
0c9f: d4 c1     mov   $c1+x,a
0ca1: 6f        ret

; vcmd f1 - pitch envelope (release)
0ca2: e8 01     mov   a,#$01
0ca4: 2f 02     bra   $0ca8
; vcmd f2 - pitch envelope (attack)
0ca6: e8 00     mov   a,#$00
0ca8: d5 90 02  mov   $0290+x,a
0cab: dd        mov   a,y
0cac: d5 81 02  mov   $0281+x,a
0caf: 3f 1f 0b  call  $0b1f
0cb2: d5 80 02  mov   $0280+x,a
0cb5: 3f 1f 0b  call  $0b1f
0cb8: d5 91 02  mov   $0291+x,a
0cbb: 6f        ret

; vcmd f3 - pitch envelope off
0cbc: d5 80 02  mov   $0280+x,a
0cbf: 6f        ret

; vcmd ed - volume
0cc0: d5 01 03  mov   $0301+x,a
0cc3: e8 00     mov   a,#$00
0cc5: d5 00 03  mov   $0300+x,a
0cc8: 6f        ret

; vcmd ee - volume fade
0cc9: d4 90     mov   $90+x,a
0ccb: 2d        push  a
0ccc: 3f 1f 0b  call  $0b1f
0ccf: d5 20 03  mov   $0320+x,a
0cd2: 80        setc
0cd3: b5 01 03  sbc   a,$0301+x
0cd6: ce        pop   x
0cd7: 3f fa 0d  call  $0dfa
0cda: d5 10 03  mov   $0310+x,a
0cdd: dd        mov   a,y
0cde: d5 11 03  mov   $0311+x,a
0ce1: 6f        ret

; vcmd f4 - tuning
0ce2: d5 81 03  mov   $0381+x,a
0ce5: 6f        ret

; vcmd ef - call subroutine
0ce6: d5 40 02  mov   $0240+x,a
0ce9: 3f 1f 0b  call  $0b1f
0cec: d5 41 02  mov   $0241+x,a
0cef: 3f 1f 0b  call  $0b1f
0cf2: d4 80     mov   $80+x,a
0cf4: f4 30     mov   a,$30+x
0cf6: d5 30 02  mov   $0230+x,a
0cf9: f4 31     mov   a,$31+x
0cfb: d5 31 02  mov   $0231+x,a
0cfe: f5 40 02  mov   a,$0240+x
0d01: d4 30     mov   $30+x,a
0d03: f5 41 02  mov   a,$0241+x
0d06: d4 31     mov   $31+x,a
0d08: 6f        ret

; vcmd f5 - echo vbits/volume
0d09: c4 4a     mov   $4a,a
0d0b: 3f 1f 0b  call  $0b1f
0d0e: e8 00     mov   a,#$00
0d10: da 60     movw  $60,ya
0d12: 3f 1f 0b  call  $0b1f
0d15: e8 00     mov   a,#$00
0d17: da 62     movw  $62,ya
0d19: b2 48     clr5  $48
0d1b: 6f        ret

; vcmd f8 - echo volume fade
0d1c: c4 68     mov   $68,a
0d1e: 3f 1f 0b  call  $0b1f
0d21: c4 69     mov   $69,a
0d23: 80        setc
0d24: a4 61     sbc   a,$61
0d26: f8 68     mov   x,$68
0d28: 3f fa 0d  call  $0dfa
0d2b: da 64     movw  $64,ya
0d2d: 3f 1f 0b  call  $0b1f
0d30: c4 6a     mov   $6a,a
0d32: 80        setc
0d33: a4 63     sbc   a,$63
0d35: f8 68     mov   x,$68
0d37: 3f fa 0d  call  $0dfa
0d3a: da 66     movw  $66,ya
0d3c: 6f        ret

; vcmd f6 - disable echo
0d3d: da 60     movw  $60,ya
0d3f: da 62     movw  $62,ya
0d41: e8 00     mov   a,#$00
0d43: 3f 6b 0d  call  $0d6b
0d46: a2 48     set5  $48
0d48: 6f        ret

; vcmd f7 - set echo params
0d49: 3f 6b 0d  call  $0d6b
0d4c: 3f 1f 0b  call  $0b1f
0d4f: c4 4e     mov   $4e,a
0d51: 3f 1f 0b  call  $0b1f
0d54: 8d 08     mov   y,#$08
0d56: cf        mul   ya
0d57: 5d        mov   x,a
0d58: 8d 0f     mov   y,#$0f
0d5a: f5 e3 10  mov   a,$10e3+x
0d5d: 3f 5e 06  call  $065e
0d60: 3d        inc   x
0d61: dd        mov   a,y
0d62: 60        clrc
0d63: 88 10     adc   a,#$10
0d65: fd        mov   y,a
0d66: 10 f2     bpl   $0d5a
0d68: f8 44     mov   x,$44
0d6a: 6f        ret

0d6b: c4 4d     mov   $4d,a
0d6d: 8d 7d     mov   y,#$7d
0d6f: cc f2 00  mov   $00f2,y
0d72: e5 f3 00  mov   a,$00f3
0d75: 64 4d     cmp   a,$4d
0d77: f0 2b     beq   $0da4
0d79: 28 0f     and   a,#$0f
0d7b: 48 ff     eor   a,#$ff
0d7d: f3 4c 03  bbc7  $4c,$0d83
0d80: 60        clrc
0d81: 84 4c     adc   a,$4c
0d83: c4 4c     mov   $4c,a
0d85: 8d 04     mov   y,#$04
0d87: f6 02 11  mov   a,$1102+y
0d8a: c5 f2 00  mov   $00f2,a
0d8d: e8 00     mov   a,#$00
0d8f: c5 f3 00  mov   $00f3,a
0d92: fe f3     dbnz  y,$0d87
0d94: e4 48     mov   a,$48
0d96: 08 20     or    a,#$20
0d98: 8d 6c     mov   y,#$6c
0d9a: 3f 5e 06  call  $065e
0d9d: e4 4d     mov   a,$4d
0d9f: 8d 7d     mov   y,#$7d
0da1: 3f 5e 06  call  $065e
0da4: 1c        asl   a
0da5: 1c        asl   a
0da6: 1c        asl   a
0da7: 48 ff     eor   a,#$ff
0da9: 80        setc
0daa: 88 ff     adc   a,#$ff
0dac: 8d 6d     mov   y,#$6d
0dae: 5f 5e 06  jmp   $065e

; vcmd fa - set perc patch base
0db1: c4 5f     mov   $5f,a
0db3: 6f        ret

; vcmd fb
0db4: 3f 21 0b  call  $0b21
0db7: f4 a0     mov   a,$a0+x
0db9: d0 33     bne   $0dee
0dbb: e7 30     mov   a,($30+x)
0dbd: 68 f9     cmp   a,#$f9
0dbf: d0 2d     bne   $0dee
0dc1: 3f 21 0b  call  $0b21
0dc4: 3f 1f 0b  call  $0b1f

; vcmd f9 - pitch slide
0dc7: d4 a1     mov   $a1+x,a
0dc9: 3f 1f 0b  call  $0b1f
0dcc: d4 a0     mov   $a0+x,a
0dce: 3f 1f 0b  call  $0b1f
0dd1: 60        clrc
0dd2: 84 50     adc   a,$50
0dd4: 95 f0 02  adc   a,$02f0+x
0dd7: 28 7f     and   a,#$7f
0dd9: d5 80 03  mov   $0380+x,a
0ddc: 80        setc
0ddd: b5 61 03  sbc   a,$0361+x
0de0: fb a0     mov   y,$a0+x
0de2: 6d        push  y
0de3: ce        pop   x
0de4: 3f fa 0d  call  $0dfa
0de7: d5 70 03  mov   $0370+x,a
0dea: dd        mov   a,y
0deb: d5 71 03  mov   $0371+x,a
0dee: 6f        ret

0def: f5 61 03  mov   a,$0361+x
0df2: c4 11     mov   $11,a
0df4: f5 60 03  mov   a,$0360+x
0df7: c4 10     mov   $10,a
0df9: 6f        ret

0dfa: ed        notc
0dfb: 6b 12     ror   $12
0dfd: 10 03     bpl   $0e02
0dff: 48 ff     eor   a,#$ff
0e01: bc        inc   a
0e02: 8d 00     mov   y,#$00
0e04: 9e        div   ya,x
0e05: 2d        push  a
0e06: e8 00     mov   a,#$00
0e08: 9e        div   ya,x
0e09: ee        pop   y
0e0a: f8 44     mov   x,$44
0e0c: f3 12 06  bbc7  $12,$0e15
0e0f: da 14     movw  $14,ya
0e11: ba 0e     movw  ya,$0e
0e13: 9a 14     subw  ya,$14
0e15: 6f        ret

; vcmd dispatch table
0e16: dw $0b31	; e0 - set instrument
0e18: dw $0b8b	; e1 - pan
0e1a: dw $0b9d	; e2 - pan fade
0e1c: dw $0bba	; e3 - vibrato on
0e1e: dw $0bc6	; e4 - vibrato off
0e20: dw $0be1	; e5 - master volume
0e22: dw $0c63	; e6 - master volume fade
0e24: dw $0c75	; e7 - tempo
0e26: dw $0c7a	; e8 - tempo fade
0e28: dw $0c8c	; e9 - global transpose
0e2a: dw $0c8f	; ea - per-voice transpose
0e2c: dw $0c93	; eb - tremolo on
0e2e: dw $0c9f	; ec - tremolo off
0e30: dw $0cc0	; ed - volume
0e32: dw $0cc9	; ee - volume fade
0e34: dw $0ce6	; ef - call subroutine
0e36: dw $0bd1	; f0 - vibrato fade
0e38: dw $0ca2	; f1 - pitch envelope (release)
0e3a: dw $0ca6	; f2 - pitch envelope (attack)
0e3c: dw $0cbc	; f3 - pitch envelope off
0e3e: dw $0ce2	; f4 - tuning
0e40: dw $0d09	; f5 - echo vbits/volume
0e42: dw $0d3d	; f6 - disable echo
0e44: dw $0d49	; f7 - set echo params
0e46: dw $0d1c	; f8 - echo volume fade
0e48: dw $0dc7	; f9 - pitch slide
0e4a: dw $0db1	; fa - set perc patch base
0e4c: dw $0db4	; fb
0e4e: dw $0c36	; fc - jump to position
0e50: dw $0c02	; fd - repeat section
0e52: dw $0c48	; fe - return from jump

; vcmd lengths
0e54: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0e5c: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0e64: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0e6d: db $03,$03,$01,$02,$00,$00,$00	 ; f8-fe

0e73: f4 90     mov   a,$90+x
0e75: f0 24     beq   $0e9b
0e77: 09 47 5e  or    ($5e),($47)
0e7a: 9b 90     dec   $90+x
0e7c: d0 0a     bne   $0e88
0e7e: e8 00     mov   a,#$00
0e80: d5 00 03  mov   $0300+x,a
0e83: f5 20 03  mov   a,$0320+x
0e86: 2f 10     bra   $0e98
0e88: 60        clrc
0e89: f5 00 03  mov   a,$0300+x
0e8c: 95 10 03  adc   a,$0310+x
0e8f: d5 00 03  mov   $0300+x,a
0e92: f5 01 03  mov   a,$0301+x
0e95: 95 11 03  adc   a,$0311+x
0e98: d5 01 03  mov   $0301+x,a
0e9b: fb c1     mov   y,$c1+x
0e9d: f0 23     beq   $0ec2
0e9f: f5 e0 02  mov   a,$02e0+x
0ea2: de c0 1b  cbne  $c0+x,$0ec0
0ea5: 09 47 5e  or    ($5e),($47)
0ea8: f5 d0 02  mov   a,$02d0+x
0eab: 10 07     bpl   $0eb4
0ead: fc        inc   y
0eae: d0 04     bne   $0eb4
0eb0: e8 80     mov   a,#$80
0eb2: 2f 04     bra   $0eb8
0eb4: 60        clrc
0eb5: 95 d1 02  adc   a,$02d1+x
0eb8: d5 d0 02  mov   $02d0+x,a
0ebb: 3f b1 10  call  $10b1
0ebe: 2f 07     bra   $0ec7
0ec0: bb c0     inc   $c0+x
0ec2: e8 ff     mov   a,#$ff
0ec4: 3f bc 10  call  $10bc
0ec7: f4 91     mov   a,$91+x
0ec9: f0 24     beq   $0eef
0ecb: 09 47 5e  or    ($5e),($47)
0ece: 9b 91     dec   $91+x
0ed0: d0 0a     bne   $0edc
0ed2: e8 00     mov   a,#$00
0ed4: d5 30 03  mov   $0330+x,a
0ed7: f5 50 03  mov   a,$0350+x
0eda: 2f 10     bra   $0eec
0edc: 60        clrc
0edd: f5 30 03  mov   a,$0330+x
0ee0: 95 40 03  adc   a,$0340+x
0ee3: d5 30 03  mov   $0330+x,a
0ee6: f5 31 03  mov   a,$0331+x
0ee9: 95 41 03  adc   a,$0341+x
0eec: d5 31 03  mov   $0331+x,a
0eef: f5 31 03  mov   a,$0331+x
0ef2: fd        mov   y,a
0ef3: f5 30 03  mov   a,$0330+x
0ef6: da 10     movw  $10,ya
0ef8: 7d        mov   a,x
0ef9: 9f        xcn   a
0efa: 5c        lsr   a
0efb: c4 12     mov   $12,a
0efd: eb 11     mov   y,$11
0eff: f6 cf 10  mov   a,$10cf+y
0f02: 80        setc
0f03: b6 ce 10  sbc   a,$10ce+y
0f06: eb 10     mov   y,$10
0f08: cf        mul   ya
0f09: dd        mov   a,y
0f0a: eb 11     mov   y,$11
0f0c: 60        clrc
0f0d: 96 ce 10  adc   a,$10ce+y
0f10: fd        mov   y,a
0f11: f5 21 03  mov   a,$0321+x
0f14: cf        mul   ya
0f15: f5 51 03  mov   a,$0351+x
0f18: 1c        asl   a
0f19: 13 12 01  bbc0  $12,$0f1d
0f1c: 1c        asl   a
0f1d: dd        mov   a,y
0f1e: 90 03     bcc   $0f23
0f20: 48 ff     eor   a,#$ff
0f22: bc        inc   a
0f23: eb 12     mov   y,$12
0f25: 3f 56 06  call  $0656
0f28: 8d 14     mov   y,#$14
0f2a: e8 00     mov   a,#$00
0f2c: 9a 10     subw  ya,$10
0f2e: da 10     movw  $10,ya
0f30: ab 12     inc   $12
0f32: 33 12 c8  bbc1  $12,$0efd
0f35: 6f        ret

0f36: f5 01 02  mov   a,$0201+x
0f39: f0 08     beq   $0f43
0f3b: f4 71     mov   a,$71+x
0f3d: f0 63     beq   $0fa2
0f3f: 9b 71     dec   $71+x
0f41: f0 03     beq   $0f46
0f43: 5f a2 0f  jmp   $0fa2

0f46: f4 80     mov   a,$80+x
0f48: c4 17     mov   $17,a
0f4a: f4 30     mov   a,$30+x
0f4c: fb 31     mov   y,$31+x
0f4e: da 14     movw  $14,ya
0f50: 8d 00     mov   y,#$00
0f52: f7 14     mov   a,($14)+y
0f54: f0 1e     beq   $0f74
0f56: 30 07     bmi   $0f5f
0f58: fc        inc   y
0f59: 30 40     bmi   $0f9b
0f5b: f7 14     mov   a,($14)+y
0f5d: 10 f9     bpl   $0f58
0f5f: 68 c8     cmp   a,#$c8
0f61: f0 3f     beq   $0fa2
0f63: 68 ef     cmp   a,#$ef
0f65: f0 29     beq   $0f90
0f67: 68 e0     cmp   a,#$e0
0f69: 90 30     bcc   $0f9b
0f6b: 6d        push  y
0f6c: fd        mov   y,a
0f6d: ae        pop   a
0f6e: 96 74 0d  adc   a,$0d74+y
0f71: fd        mov   y,a
0f72: 2f de     bra   $0f52
0f74: e4 17     mov   a,$17
0f76: f0 23     beq   $0f9b
0f78: 8b 17     dec   $17
0f7a: d0 0a     bne   $0f86
0f7c: f5 31 02  mov   a,$0231+x
0f7f: 2d        push  a
0f80: f5 30 02  mov   a,$0230+x
0f83: ee        pop   y
0f84: 2f c8     bra   $0f4e
0f86: f5 41 02  mov   a,$0241+x
0f89: 2d        push  a
0f8a: f5 40 02  mov   a,$0240+x
0f8d: ee        pop   y
0f8e: 2f be     bra   $0f4e
0f90: fc        inc   y
0f91: f7 14     mov   a,($14)+y
0f93: 2d        push  a
0f94: fc        inc   y
0f95: f7 14     mov   a,($14)+y
0f97: fd        mov   y,a
0f98: ae        pop   a
0f99: 2f b3     bra   $0f4e
0f9b: e4 47     mov   a,$47
0f9d: 8d 5c     mov   y,#$5c
0f9f: 3f 56 06  call  $0656
0fa2: f2 13     clr7  $13
0fa4: f4 a0     mov   a,$a0+x
0fa6: f0 2c     beq   $0fd4
0fa8: f4 a1     mov   a,$a1+x
0faa: f0 04     beq   $0fb0
0fac: 9b a1     dec   $a1+x
0fae: 2f 24     bra   $0fd4
0fb0: e2 13     set7  $13
0fb2: 9b a0     dec   $a0+x
0fb4: d0 0b     bne   $0fc1
0fb6: f5 81 03  mov   a,$0381+x
0fb9: d5 60 03  mov   $0360+x,a
0fbc: f5 80 03  mov   a,$0380+x
0fbf: 2f 10     bra   $0fd1
0fc1: 60        clrc
0fc2: f5 60 03  mov   a,$0360+x
0fc5: 95 70 03  adc   a,$0370+x
0fc8: d5 60 03  mov   $0360+x,a
0fcb: f5 61 03  mov   a,$0361+x
0fce: 95 71 03  adc   a,$0371+x
0fd1: d5 61 03  mov   $0361+x,a
0fd4: 3f ef 0d  call  $0def
0fd7: f4 b1     mov   a,$b1+x
0fd9: f0 4c     beq   $1027
0fdb: f5 b0 02  mov   a,$02b0+x
0fde: de b0 44  cbne  $b0+x,$1025
0fe1: f5 00 01  mov   a,$0100+x
0fe4: 75 b1 02  cmp   a,$02b1+x
0fe7: d0 05     bne   $0fee
0fe9: f5 c1 02  mov   a,$02c1+x
0fec: 2f 0d     bra   $0ffb
0fee: 40        setp
0fef: bb 00     inc   $00+x
0ff1: 20        clrp
0ff2: fd        mov   y,a
0ff3: f0 02     beq   $0ff7
0ff5: f4 b1     mov   a,$b1+x
0ff7: 60        clrc
0ff8: 95 c0 02  adc   a,$02c0+x
0ffb: d4 b1     mov   $b1+x,a
0ffd: f5 a0 02  mov   a,$02a0+x
1000: 60        clrc
1001: 95 a1 02  adc   a,$02a1+x
1004: d5 a0 02  mov   $02a0+x,a
1007: c4 12     mov   $12,a
1009: 1c        asl   a
100a: 1c        asl   a
100b: 90 02     bcc   $100f
100d: 48 ff     eor   a,#$ff
100f: fd        mov   y,a
1010: f4 b1     mov   a,$b1+x
1012: 68 f1     cmp   a,#$f1
1014: 90 05     bcc   $101b
1016: 28 0f     and   a,#$0f
1018: cf        mul   ya
1019: 2f 04     bra   $101f
101b: cf        mul   ya
101c: dd        mov   a,y
101d: 8d 00     mov   y,#$00
101f: 3f 9c 10  call  $109c
1022: 5f d3 05  jmp   $05d3

1025: bb b0     inc   $b0+x
1027: e3 13 f8  bbs7  $13,$1022
102a: 6f        ret

102b: f2 13     clr7  $13
102d: f4 c1     mov   a,$c1+x
102f: f0 09     beq   $103a
1031: f5 e0 02  mov   a,$02e0+x
1034: de c0 03  cbne  $c0+x,$103a
1037: 3f a4 10  call  $10a4
103a: f5 31 03  mov   a,$0331+x
103d: fd        mov   y,a
103e: f5 30 03  mov   a,$0330+x
1041: da 10     movw  $10,ya
1043: f4 91     mov   a,$91+x
1045: f0 0a     beq   $1051
1047: f5 41 03  mov   a,$0341+x
104a: fd        mov   y,a
104b: f5 40 03  mov   a,$0340+x
104e: 3f 86 10  call  $1086
1051: f3 13 03  bbc7  $13,$1057
1054: 3f f8 0e  call  $0ef8
1057: f2 13     clr7  $13
1059: 3f ef 0d  call  $0def
105c: f4 a0     mov   a,$a0+x
105e: f0 0e     beq   $106e
1060: f4 a1     mov   a,$a1+x
1062: d0 0a     bne   $106e
1064: f5 71 03  mov   a,$0371+x
1067: fd        mov   y,a
1068: f5 70 03  mov   a,$0370+x
106b: 3f 86 10  call  $1086
106e: f4 b1     mov   a,$b1+x
1070: f0 b5     beq   $1027
1072: f5 b0 02  mov   a,$02b0+x
1075: de b0 af  cbne  $b0+x,$1027
1078: eb 51     mov   y,$51
107a: f5 a1 02  mov   a,$02a1+x
107d: cf        mul   ya
107e: dd        mov   a,y
107f: 60        clrc
1080: 95 a0 02  adc   a,$02a0+x
1083: 5f 07 10  jmp   $1007

1086: e2 13     set7  $13
1088: cb 12     mov   $12,y
108a: 3f 0c 0e  call  $0e0c
108d: 6d        push  y
108e: eb 51     mov   y,$51
1090: cf        mul   ya
1091: cb 14     mov   $14,y
1093: 8f 00 15  mov   $15,#$00
1096: eb 51     mov   y,$51
1098: ae        pop   a
1099: cf        mul   ya
109a: 7a 14     addw  ya,$14
109c: 3f 0c 0e  call  $0e0c
109f: 7a 10     addw  ya,$10
10a1: da 10     movw  $10,ya
10a3: 6f        ret

10a4: e2 13     set7  $13
10a6: eb 51     mov   y,$51
10a8: f5 d1 02  mov   a,$02d1+x
10ab: cf        mul   ya
10ac: dd        mov   a,y
10ad: 60        clrc
10ae: 95 d0 02  adc   a,$02d0+x
10b1: 1c        asl   a
10b2: 90 02     bcc   $10b6
10b4: 48 ff     eor   a,#$ff
10b6: fb c1     mov   y,$c1+x
10b8: cf        mul   ya
10b9: dd        mov   a,y
10ba: 48 ff     eor   a,#$ff
10bc: eb 59     mov   y,$59
10be: cf        mul   ya
10bf: f5 10 02  mov   a,$0210+x
10c2: cf        mul   ya
10c3: f5 01 03  mov   a,$0301+x
10c6: cf        mul   ya
10c7: dd        mov   a,y
10c8: cf        mul   ya
10c9: dd        mov   a,y
10ca: d5 21 03  mov   $0321+x,a
10cd: 6f        ret

; pan table
10ce: db $00,$01,$03,$07,$0d,$15,$1e,$29
10d6: db $34,$42,$51,$5e,$67,$6e,$73,$77
10de: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
10e3: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
10ec: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
10f3: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
10fb: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs for dsp regs
1103: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
110d: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
1117: dw $085f
1119: dw $08de
111b: dw $0965
111d: dw $09f4
111f: dw $0a8c
1121: dw $0b2c
1123: dw $0bd6
1125: dw $0c8b
1127: dw $0d4a
1129: dw $0e14
112b: dw $0eea
112d: dw $0fcd
112f: dw $10be

; version number text
1131: db "*Ver S1.20*"

113c: fc        inc   y
113d: e5 f7 00  mov   a,$00f7
1140: 65 f7 00  cmp   a,$00f7
1143: d0 f8     bne   $113d
1145: c5 f7 00  mov   $00f7,a
1148: d7 10     mov   ($10)+y,a
114a: dc        dec   y
114b: e5 f6 00  mov   a,$00f6
114e: 65 f6 00  cmp   a,$00f6
1151: d0 f8     bne   $114b
1153: c5 f6 00  mov   $00f6,a
1156: d7 10     mov   ($10)+y,a
1158: fc        inc   y
1159: fc        inc   y
115a: 6f        ret

115b: e5 f4 00  mov   a,$00f4
115e: c5 f4 00  mov   $00f4,a
1161: e8 11     mov   a,#$11
1163: c5 f6 00  mov   $00f6,a
1166: e8 22     mov   a,#$22
1168: c5 f7 00  mov   $00f7,a
116b: e5 f4 00  mov   a,$00f4
116e: 68 cc     cmp   a,#$cc
1170: d0 f9     bne   $116b
1172: c5 f4 00  mov   $00f4,a
1175: e5 f7 00  mov   a,$00f7
1178: 65 f7 00  cmp   a,$00f7
117b: d0 f8     bne   $1175
117d: c5 f7 00  mov   $00f7,a
1180: fd        mov   y,a
1181: e5 f6 00  mov   a,$00f6
1184: 65 f6 00  cmp   a,$00f6
1187: d0 f8     bne   $1181
1189: c5 f6 00  mov   $00f6,a
118c: da 10     movw  $10,ya
118e: e5 f4 00  mov   a,$00f4
1191: 68 ff     cmp   a,#$ff
1193: d0 f9     bne   $118e
1195: 8d 00     mov   y,#$00
1197: 3f 3c 11  call  $113c
119a: e5 f4 00  mov   a,$00f4
119d: 68 00     cmp   a,#$00
119f: d0 f9     bne   $119a
11a1: 3f 3c 11  call  $113c
11a4: e8 aa     mov   a,#$aa
11a6: c5 f4 00  mov   $00f4,a
11a9: e8 bb     mov   a,#$bb
11ab: c5 f5 00  mov   $00f5,a
11ae: e9 f4 00  mov   x,$00f4
11b1: 1e f4 00  cmp   x,$00f4
11b4: d0 f8     bne   $11ae
11b6: c8 cc     cmp   x,#$cc
11b8: d0 f4     bne   $11ae
11ba: 2f 20     bra   $11dc
11bc: ec f4 00  mov   y,$00f4
11bf: d0 fb     bne   $11bc
11c1: 5e f4 00  cmp   y,$00f4
11c4: d0 0f     bne   $11d5
11c6: e5 f5 00  mov   a,$00f5
11c9: cc f4 00  mov   $00f4,y
11cc: d7 10     mov   ($10)+y,a
11ce: fc        inc   y
11cf: d0 f0     bne   $11c1
11d1: ab 11     inc   $11
11d3: 2f ec     bra   $11c1
11d5: 10 ea     bpl   $11c1
11d7: 5e f4 00  cmp   y,$00f4
11da: 10 e5     bpl   $11c1
11dc: e5 f6 00  mov   a,$00f6
11df: ec f7 00  mov   y,$00f7
11e2: da 10     movw  $10,ya
11e4: e5 f4 00  mov   a,$00f4
11e7: ec f5 00  mov   y,$00f5
11ea: c5 f4 00  mov   $00f4,a
11ed: dd        mov   a,y
11ee: 5d        mov   x,a
11ef: cc f5 00  mov   $00f5,y
11f2: d0 c8     bne   $11bc
11f4: e8 31     mov   a,#$31
11f6: c5 f1 00  mov   $00f1,a
11f9: 6f        ret

11fa: e8 00     mov   a,#$00
11fc: c4 3d     mov   $3d,a
11fe: c4 3f     mov   $3f,a
1200: e8 05     mov   a,#$05
1202: 2f 0d     bra   $1211
1204: e8 00     mov   a,#$00
1206: c4 3f     mov   $3f,a
1208: e8 06     mov   a,#$06
120a: 2f 05     bra   $1211
120c: 3f 0f 08  call  $080f
120f: e8 07     mov   a,#$07
1211: c5 d0 00  mov   $00d0,a
1214: 6f        ret

1215: e4 e0     mov   a,$e0
1217: 28 03     and   a,#$03
1219: d0 06     bne   $1221
121b: e4 e0     mov   a,$e0
121d: 08 01     or    a,#$01
121f: c4 e0     mov   $e0,a
1221: 6f        ret

1222: e4 e0     mov   a,$e0
1224: 28 03     and   a,#$03
1226: d0 06     bne   $122e
1228: e4 e0     mov   a,$e0
122a: 08 02     or    a,#$02
122c: c4 e0     mov   $e0,a
122e: 6f        ret

122f: e4 e0     mov   a,$e0
1231: 28 03     and   a,#$03
1233: f0 ec     beq   $1221
1235: 28 02     and   a,#$02
1237: d0 06     bne   $123f
1239: e4 e1     mov   a,$e1
123b: 28 01     and   a,#$01
123d: f0 e2     beq   $1221
123f: e8 00     mov   a,#$00
1241: c4 11     mov   $11,a
1243: e4 d0     mov   a,$d0
1245: 1c        asl   a
1246: 5d        mov   x,a
1247: f5 01 03  mov   a,$0301+x
124a: f0 0a     beq   $1256
124c: 80        setc
124d: a8 01     sbc   a,#$01
124f: d5 01 03  mov   $0301+x,a
1252: d0 02     bne   $1256
1254: e8 00     mov   a,#$00
1256: d5 01 03  mov   $0301+x,a
1259: 04 11     or    a,$11
125b: c4 11     mov   $11,a
125d: 1d        dec   x
125e: 1d        dec   x
125f: 10 e6     bpl   $1247
1261: e4 11     mov   a,$11
1263: f0 01     beq   $1266
1265: 6f        ret

1266: e4 e0     mov   a,$e0
1268: 28 fe     and   a,#$fe
126a: c4 e0     mov   $e0,a
126c: 5f 0a 09  jmp   $090a

126f: 8d 00     mov   y,#$00
1271: cb e2     mov   $e2,y
1273: 6f        ret