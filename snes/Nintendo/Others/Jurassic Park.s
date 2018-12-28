0500: 20        clrp
0501: cd cf     mov   x,#$cf
0503: bd        mov   sp,x
0504: e8 00     mov   a,#$00
0506: 5d        mov   x,a
0507: af        mov   (x)+,a
0508: c8 f0     cmp   x,#$f0
050a: d0 fb     bne   $0507
050c: bc        inc   a
050d: 3f a7 12  call  $12a7
0510: a2 43     set5  $43
0512: e8 68     mov   a,#$68
0514: 8d 0c     mov   y,#$0c
0516: 3f bf 0b  call  $0bbf
0519: 8d 1c     mov   y,#$1c
051b: 3f bf 0b  call  $0bbf
051e: e8 1f     mov   a,#$1f
0520: 8d 5d     mov   y,#$5d
0522: 3f bf 0b  call  $0bbf
0525: e8 00     mov   a,#$00
0527: 5d        mov   x,a
0528: d5 00 01  mov   $0100+x,a
052b: d5 00 02  mov   $0200+x,a
052e: d5 00 03  mov   $0300+x,a
0531: d5 00 04  mov   $0400+x,a
0534: 3d        inc   x
0535: d0 f1     bne   $0528
0537: e8 01     mov   a,#$01
0539: c5 92 03  mov   $0392,a
053c: e8 f0     mov   a,#$f0
053e: c5 f1 00  mov   $00f1,a
0541: e8 10     mov   a,#$10
0543: c5 fa 00  mov   $00fa,a
0546: c4 4c     mov   $4c,a
0548: e8 01     mov   a,#$01
054a: c5 f1 00  mov   $00f1,a
054d: 8d 00     mov   y,#$00
054f: cb 14     mov   $14,y
0551: e8 ff     mov   a,#$ff
0553: c4 13     mov   $13,a
0555: cd 0a     mov   x,#$0a
0557: 9e        div   ya,x
0558: c4 15     mov   $15,a
055a: 3a 13     incw  $13
055c: eb 14     mov   y,$14
055e: e4 13     mov   a,$13
0560: cd ff     mov   x,#$ff
0562: 6d        push  y
0563: 2d        push  a
0564: 9e        div   ya,x
0565: c4 16     mov   $16,a
0567: ae        pop   a
0568: c4 08     mov   $08,a
056a: ae        pop   a
056b: 5c        lsr   a
056c: 6b 08     ror   $08
056e: fd        mov   y,a
056f: e4 08     mov   a,$08
0571: cd 10     mov   x,#$10
0573: 9e        div   ya,x
0574: c5 91 03  mov   $0391,a
0577: e8 05     mov   a,#$05
0579: fd        mov   y,a
057a: e8 00     mov   a,#$00
057c: cb f2     mov   $f2,y
057e: c4 f3     mov   $f3,a
0580: dd        mov   a,y
0581: 60        clrc
0582: 88 10     adc   a,#$10
0584: 68 85     cmp   a,#$85
0586: d0 f1     bne   $0579
0588: e8 80     mov   a,#$80
058a: c5 00 04  mov   $0400,a
058d: c4 f4     mov   $f4,a
058f: 64 f4     cmp   a,$f4
0591: d0 fc     bne   $058f
0593: e8 30     mov   a,#$30
0595: c5 f1 00  mov   $00f1,a
0598: ac 00 04  inc   $0400
059b: e5 00 04  mov   a,$0400
059e: c4 f4     mov   $f4,a
05a0: e8 9c     mov   a,#$9c
05a2: c4 0c     mov   $0c,a
05a4: 1c        asl   a
05a5: c4 0d     mov   $0d,a
05a7: e8 01     mov   a,#$01
05a9: c5 f1 00  mov   $00f1,a
05ac: 8d 0a     mov   y,#$0a
05ae: ad 05     cmp   y,#$05
05b0: f0 07     beq   $05b9
05b2: b0 08     bcs   $05bc
05b4: 69 48 47  cmp   ($47),($48)
05b7: d0 11     bne   $05ca
05b9: e3 47 0e  bbs7  $47,$05ca
05bc: f6 39 06  mov   a,$0639+y
05bf: c5 f2 00  mov   $00f2,a
05c2: f6 43 06  mov   a,$0643+y
05c5: 5d        mov   x,a
05c6: e6        mov   a,(x)
05c7: c5 f3 00  mov   $00f3,a
05ca: fe e2     dbnz  y,$05ae
05cc: cb 3f     mov   $3f,y
05ce: cb 40     mov   $40,y
05d0: 3f 84 06  call  $0684
05d3: 3f 4e 06  call  $064e
05d6: cd 00     mov   x,#$00
05d8: 8f 01 41  mov   $41,#$01
05db: 3f 90 16  call  $1690
05de: 3d        inc   x
05df: 3d        inc   x
05e0: 0b 41     asl   $41
05e2: d0 f7     bne   $05db
05e4: ec fd 00  mov   y,$00fd
05e7: d0 03     bne   $05ec
05e9: 5f d0 05  jmp   $05d0

05ec: 6d        push  y
05ed: e8 20     mov   a,#$20
05ef: cf        mul   ya
05f0: 60        clrc
05f1: 84 18     adc   a,$18
05f3: c4 18     mov   $18,a
05f5: 90 07     bcc   $05fe
05f7: 69 48 47  cmp   ($47),($48)
05fa: f0 02     beq   $05fe
05fc: ab 47     inc   $47
05fe: ee        pop   y
05ff: e4 4c     mov   a,$4c
0601: cf        mul   ya
0602: 60        clrc
0603: 84 4a     adc   a,$4a
0605: c4 4a     mov   $4a,a
0607: 90 0f     bcc   $0618
0609: 8f 01 09  mov   $09,#$01
060c: 3f 84 06  call  $0684
060f: 3f a3 0d  call  $0da3
0612: 3f be 0d  call  $0dbe
0615: 5f ac 05  jmp   $05ac

0618: f0 fb     beq   $0615
061a: cd 00     mov   x,#$00
061c: 8f 01 41  mov   $41,#$01
061f: f4 61     mov   a,$61+x
0621: f0 03     beq   $0626
0623: 3f c5 15  call  $15c5
0626: 3d        inc   x
0627: 3d        inc   x
0628: 0b 41     asl   $41
062a: d0 f3     bne   $061f
062c: 2f e7     bra   $0615
062e: e4 0c     mov   a,$0c
0630: 44 0d     eor   a,$0d
0632: 5c        lsr   a
0633: 5c        lsr   a
0634: ed        notc
0635: 6b 0c     ror   $0c
0637: 6b 0d     ror   $0d
0639: 6f        ret

063a: 2c 3c 0d  rol   $0d3c
063d: 4d        push  x
063e: 6c 4c 5c  ror   $5c4c
0641: 3d        inc   x
0642: 2d        push  a
0643: 5c        lsr   a
0644: 72 74     clr3  $74
0646: 49 45 43  eor   ($43),($45)
0649: 3f 02 44  call  $4402
064c: 46        eor   a,(x)
064d: 40        setp
064e: e5 4d 04  mov   a,$044d
0651: f0 1c     beq   $066f
0653: 8b 11     dec   $11
0655: d0 18     bne   $066f
0657: e5 4d 04  mov   a,$044d
065a: c4 11     mov   $11,a
065c: 8b 12     dec   $12
065e: d0 10     bne   $0670
0660: e4 0e     mov   a,$0e
0662: 08 1f     or    a,#$1f
0664: 0e 40 00  tset1 $0040
0667: 3f 6c 0c  call  $0c6c
066a: e8 00     mov   a,#$00
066c: c5 4d 04  mov   $044d,a
066f: 6f        ret

0670: cd 00     mov   x,#$00
0672: 8f 01 41  mov   $41,#$01
0675: f4 61     mov   a,$61+x
0677: f0 04     beq   $067d
0679: e8 01     mov   a,#$01
067b: d4 cd     mov   $cd+x,a
067d: 3d        inc   x
067e: 3d        inc   x
067f: 0b 41     asl   $41
0681: d0 f2     bne   $0675
0683: 6f        ret

0684: e4 f4     mov   a,$f4
0686: 64 f4     cmp   a,$f4
0688: d0 fa     bne   $0684
068a: 68 00     cmp   a,#$00
068c: 30 48     bmi   $06d6
068e: f0 10     beq   $06a0
0690: 68 1a     cmp   a,#$1a
0692: b0 0d     bcs   $06a1
0694: 5d        mov   x,a
0695: 1c        asl   a
0696: fd        mov   y,a
0697: f6 a3 06  mov   a,$06a3+y
069a: 2d        push  a
069b: f6 a2 06  mov   a,$06a2+y
069e: 2d        push  a
069f: 7d        mov   a,x
06a0: 6f        ret

06a1: 5f 93 07  jmp   $0793

06a4: 02 07     set0  $07
06a6: 1e 07 40  cmp   x,$4007
06a9: 07 62     or    a,($62+x)
06ab: 07 65     or    a,($65+x)
06ad: 07 68     or    a,($68+x)
06af: 07 71     or    a,($71+x)
06b1: 07 79     or    a,($79+x)
06b3: 07 93     or    a,($93+x)
06b5: 07 a9     or    a,($a9+x)
06b7: 07 c3     or    a,($c3+x)
06b9: 07 3a     or    a,($3a+x)
06bb: 07 3d     or    a,($3d+x)
06bd: 07 a6     or    a,($a6+x)
06bf: 07 14     or    a,($14+x)
06c1: 08 71     or    a,#$71
06c3: 08 aa     or    a,#$aa
06c5: 08 ad     or    a,#$ad
06c7: 08 b0     or    a,#$b0
06c9: 08 57     or    a,#$57
06cb: 07 e8     or    a,($e8+x)
06cd: 08 03     or    a,#$03
06cf: 09 0d 08  or    ($08),($0d)
06d2: 06        or    a,(x)
06d3: 09 1d 09  or    ($09),($1d)
06d6: 28 7f     and   a,#$7f
06d8: f0 25     beq   $06ff
06da: c5 52 03  mov   $0352,a
06dd: 3f 38 18  call  $1838
06e0: e4 f5     mov   a,$f5
06e2: 9f        xcn   a
06e3: 28 0f     and   a,#$0f
06e5: d5 05 04  mov   $0405+x,a
06e8: e4 f5     mov   a,$f5
06ea: 28 0f     and   a,#$0f
06ec: d5 15 04  mov   $0415+x,a
06ef: e4 f6     mov   a,$f6
06f1: d5 06 04  mov   $0406+x,a
06f4: e4 f7     mov   a,$f7
06f6: d5 16 04  mov   $0416+x,a
06f9: 8f 01 08  mov   $08,#$01
06fc: 3f 3c 09  call  $093c
06ff: 5f 93 07  jmp   $0793

0702: e4 f5     mov   a,$f5
0704: 68 02     cmp   a,#$02
0706: b0 13     bcs   $071b
0708: c5 38 04  mov   $0438,a
070b: 68 00     cmp   a,#$00
070d: d0 03     bne   $0712
070f: 3f 28 0c  call  $0c28
0712: eb f6     mov   y,$f6
0714: 3f a6 11  call  $11a6
0717: e4 f7     mov   a,$f7
0719: c4 12     mov   $12,a
071b: 5f 93 07  jmp   $0793

071e: e4 f5     mov   a,$f5
0720: 9f        xcn   a
0721: 28 0f     and   a,#$0f
0723: c5 01 04  mov   $0401,a
0726: e4 f5     mov   a,$f5
0728: 28 0f     and   a,#$0f
072a: c5 03 04  mov   $0403,a
072d: e4 f6     mov   a,$f6
072f: c5 02 04  mov   $0402,a
0732: e4 f7     mov   a,$f7
0734: c5 04 04  mov   $0404,a
0737: 5f 93 07  jmp   $0793

073a: 5f 93 07  jmp   $0793

073d: 5f 93 07  jmp   $0793

0740: e5 f5 00  mov   a,$00f5
0743: c4 5b     mov   $5b,a
0745: e5 f6 00  mov   a,$00f6
0748: c4 5c     mov   $5c,a
074a: 80        setc
074b: a4 5a     sbc   a,$5a
074d: f8 5b     mov   x,$5b
074f: 3f 36 13  call  $1336
0752: da 5d     movw  $5d,ya
0754: 5f 93 07  jmp   $0793

0757: e5 f5 00  mov   a,$00f5
075a: c5 4d 04  mov   $044d,a
075d: c4 11     mov   $11,a
075f: 5f 93 07  jmp   $0793

0762: 5f 93 07  jmp   $0793

0765: 5f 93 07  jmp   $0793

0768: 5f 93 07  jmp   $0793

076b: 3f be 0d  call  $0dbe
076e: 5f 93 07  jmp   $0793

0771: e4 f5     mov   a,$f5
0773: c5 92 03  mov   $0392,a
0776: 5f 93 07  jmp   $0793

0779: e5 fa 03  mov   a,$03fa
077c: f0 06     beq   $0784
077e: 80        setc
077f: a8 02     sbc   a,#$02
0781: c5 fa 03  mov   $03fa,a
0784: e8 80     mov   a,#$80
0786: cd ff     mov   x,#$ff
0788: 3f 2d 19  call  $192d
078b: e8 00     mov   a,#$00
078d: c5 7f 03  mov   $037f,a
0790: 5f 93 07  jmp   $0793

0793: e8 31     mov   a,#$31
0795: c5 f1 00  mov   $00f1,a
0798: ac 00 04  inc   $0400
079b: e5 00 04  mov   a,$0400
079e: 28 8f     and   a,#$8f
07a0: c5 00 04  mov   $0400,a
07a3: c4 f4     mov   $f4,a
07a5: 6f        ret

07a6: 5f 93 07  jmp   $0793

07a9: 8d 6c     mov   y,#$6c
07ab: cb f2     mov   $f2,y
07ad: e4 f3     mov   a,$f3
07af: 08 e0     or    a,#$e0
07b1: 3f bf 0b  call  $0bbf
07b4: e8 01     mov   a,#$01
07b6: 3f a7 12  call  $12a7
07b9: a2 43     set5  $43
07bb: e8 f0     mov   a,#$f0
07bd: c5 f1 00  mov   $00f1,a
07c0: 5f c0 ff  jmp   $ffc0

07c3: 8d 6c     mov   y,#$6c
07c5: cb f2     mov   $f2,y
07c7: e4 f3     mov   a,$f3
07c9: 08 e0     or    a,#$e0
07cb: 3f bf 0b  call  $0bbf
07ce: 3f 28 0c  call  $0c28
07d1: e8 ff     mov   a,#$ff
07d3: c5 39 04  mov   $0439,a
07d6: e8 01     mov   a,#$01
07d8: 3f a7 12  call  $12a7
07db: 8f c0 09  mov   $09,#$c0
07de: 8f 00 08  mov   $08,#$00
07e1: 8d 00     mov   y,#$00
07e3: e8 00     mov   a,#$00
07e5: d7 08     mov   ($08)+y,a
07e7: fc        inc   y
07e8: d0 fb     bne   $07e5
07ea: ab 09     inc   $09
07ec: d0 f7     bne   $07e5
07ee: e8 80     mov   a,#$80
07f0: c4 f1     mov   $f1,a
07f2: 5f c0 ff  jmp   $ffc0

07f5: 3f 13 08  call  $0813
07f8: e8 00     mov   a,#$00
07fa: 8d 6c     mov   y,#$6c
07fc: 3f bf 0b  call  $0bbf
07ff: 3f 93 07  call  $0793
0802: e4 f4     mov   a,$f4
0804: 65 00 04  cmp   a,$0400
0807: d0 fb     bne   $0804
0809: 5f 93 07  jmp   $0793

080c: 6f        ret

080d: 3f 13 08  call  $0813
0810: 5f 93 07  jmp   $0793

0813: 6f        ret

0814: e4 f5     mov   a,$f5
0816: c4 0f     mov   $0f,a
0818: e4 f6     mov   a,$f6
081a: c4 10     mov   $10,a
081c: e4 f7     mov   a,$f7
081e: c5 3c 04  mov   $043c,a
0821: 68 35     cmp   a,#$35
0823: 90 20     bcc   $0845
0825: e4 0e     mov   a,$0e
0827: 48 1f     eor   a,#$1f
0829: 0e 40 00  tset1 $0040
082c: 8f c0 09  mov   $09,#$c0
082f: 8f 00 08  mov   $08,#$00
0832: 8d 00     mov   y,#$00
0834: e8 00     mov   a,#$00
0836: d7 08     mov   ($08)+y,a
0838: fc        inc   y
0839: d0 fb     bne   $0836
083b: ab 09     inc   $09
083d: d0 f7     bne   $0836
083f: 3f 6c 0c  call  $0c6c
0842: 5f 93 07  jmp   $0793

0845: 8f 20 41  mov   $41,#$20
0848: e9 fa 03  mov   x,$03fa
084b: f5 71 04  mov   a,$0471+x
084e: f0 18     beq   $0868
0850: e8 00     mov   a,#$00
0852: d5 55 03  mov   $0355+x,a
0855: d4 61     mov   $61+x,a
0857: d5 56 03  mov   $0356+x,a
085a: 8d 5c     mov   y,#$5c
085c: cb f2     mov   $f2,y
085e: e4 f3     mov   a,$f3
0860: c4 f7     mov   $f7,a
0862: 04 41     or    a,$41
0864: cb f2     mov   $f2,y
0866: c4 f3     mov   $f3,a
0868: 3d        inc   x
0869: 3d        inc   x
086a: 0b 41     asl   $41
086c: d0 dd     bne   $084b
086e: 5f 93 07  jmp   $0793

0871: 8d 00     mov   y,#$00
0873: e9 3c 04  mov   x,$043c
0876: e4 f5     mov   a,$f5
0878: d7 0f     mov   ($0f)+y,a
087a: fc        inc   y
087b: e4 f6     mov   a,$f6
087d: d7 0f     mov   ($0f)+y,a
087f: fc        inc   y
0880: e4 f7     mov   a,$f7
0882: d7 0f     mov   ($0f)+y,a
0884: fc        inc   y
0885: 3f 93 07  call  $0793
0888: 1d        dec   x
0889: f0 0d     beq   $0898
088b: e4 f4     mov   a,$f4
088d: 68 10     cmp   a,#$10
088f: f0 e5     beq   $0876
0891: 68 11     cmp   a,#$11
0893: d0 f6     bne   $088b
0895: 5f 93 07  jmp   $0793

0898: e5 3c 04  mov   a,$043c
089b: 1c        asl   a
089c: 60        clrc
089d: 85 3c 04  adc   a,$043c
08a0: 60        clrc
08a1: 84 0f     adc   a,$0f
08a3: c4 0f     mov   $0f,a
08a5: 90 02     bcc   $08a9
08a7: ab 10     inc   $10
08a9: 6f        ret

08aa: 5f 93 07  jmp   $0793

08ad: 5f 93 07  jmp   $0793

08b0: eb f5     mov   y,$f5
08b2: cb 14     mov   $14,y
08b4: e4 f6     mov   a,$f6
08b6: c4 13     mov   $13,a
08b8: cd 0a     mov   x,#$0a
08ba: 9e        div   ya,x
08bb: c4 15     mov   $15,a
08bd: 3a 13     incw  $13
08bf: eb 14     mov   y,$14
08c1: e4 13     mov   a,$13
08c3: 2d        push  a
08c4: 6d        push  y
08c5: cd ff     mov   x,#$ff
08c7: 9e        div   ya,x
08c8: c4 16     mov   $16,a
08ca: ae        pop   a
08cb: ce        pop   x
08cc: 2d        push  a
08cd: 6d        push  y
08ce: 8d 00     mov   y,#$00
08d0: e8 ff     mov   a,#$ff
08d2: 9e        div   ya,x
08d3: c4 17     mov   $17,a
08d5: ae        pop   a
08d6: c4 08     mov   $08,a
08d8: ae        pop   a
08d9: 5c        lsr   a
08da: 6b 08     ror   $08
08dc: fd        mov   y,a
08dd: e4 08     mov   a,$08
08df: cd 10     mov   x,#$10
08e1: 9e        div   ya,x
08e2: c5 91 03  mov   $0391,a
08e5: 5f 93 07  jmp   $0793

08e8: 3f be 0d  call  $0dbe
08eb: 3f be 0d  call  $0dbe
08ee: 3f be 0d  call  $0dbe
08f1: 3f be 0d  call  $0dbe
08f4: 3f be 0d  call  $0dbe
08f7: 3f be 0d  call  $0dbe
08fa: 3f be 0d  call  $0dbe
08fd: 3f be 0d  call  $0dbe
0900: 5f 93 07  jmp   $0793

0903: 5f d3 1d  jmp   $1dd3

0906: e4 f5     mov   a,$f5
0908: f0 10     beq   $091a
090a: c5 52 03  mov   $0352,a
090d: 3f 38 18  call  $1838
0910: e4 f6     mov   a,$f6
0912: 3f fb 10  call  $10fb
0915: e4 f7     mov   a,$f7
0917: 3f 0f 12  call  $120f
091a: 5f 93 07  jmp   $0793

091d: e9 7f 03  mov   x,$037f
0920: f5 56 03  mov   a,$0356+x
0923: 68 a3     cmp   a,#$a3
0925: d0 12     bne   $0939
0927: e5 fa 03  mov   a,$03fa
092a: f0 06     beq   $0932
092c: 80        setc
092d: a8 02     sbc   a,#$02
092f: c5 fa 03  mov   $03fa,a
0932: e8 80     mov   a,#$80
0934: cd ff     mov   x,#$ff
0936: 3f 2d 19  call  $192d
0939: 5f 93 07  jmp   $0793

093c: d8 51     mov   $51,x
093e: 8f 00 58  mov   $58,#$00
0941: f5 05 04  mov   a,$0405+x
0944: c4 05     mov   $05,a
0946: f5 06 04  mov   a,$0406+x
0949: c4 04     mov   $04,a
094b: ec 01 04  mov   y,$0401
094e: e5 02 04  mov   a,$0402
0951: 5a 04     cmpw  ya,$04
0953: 90 26     bcc   $097b
0955: 9a 04     subw  ya,$04
0957: fa 13 04  mov   ($04),($13)
095a: fa 14 05  mov   ($05),($14)
095d: 5a 04     cmpw  ya,$04
095f: b0 0a     bcs   $096b
0961: da 04     movw  $04,ya
0963: f8 15     mov   x,$15
0965: 9e        div   ya,x
0966: 60        clrc
0967: 88 0a     adc   a,#$0a
0969: 2f 34     bra   $099f
096b: f8 51     mov   x,$51
096d: e8 00     mov   a,#$00
096f: d5 55 03  mov   $0355+x,a
0972: d4 61     mov   $61+x,a
0974: d5 56 03  mov   $0356+x,a
0977: d5 4e 04  mov   $044e+x,a
097a: 6f        ret

097b: 6d        push  y
097c: c4 52     mov   $52,a
097e: ba 04     movw  ya,$04
0980: ce        pop   x
0981: d8 05     mov   $05,x
0983: f8 52     mov   x,$52
0985: d8 04     mov   $04,x
0987: 9a 04     subw  ya,$04
0989: fa 13 04  mov   ($04),($13)
098c: fa 14 05  mov   ($05),($14)
098f: 5a 04     cmpw  ya,$04
0991: b0 d8     bcs   $096b
0993: da 04     movw  $04,ya
0995: f8 15     mov   x,$15
0997: 9e        div   ya,x
0998: c4 52     mov   $52,a
099a: e8 0a     mov   a,#$0a
099c: 80        setc
099d: a4 52     sbc   a,$52
099f: c5 26 04  mov   $0426,a
09a2: ba 04     movw  ya,$04
09a4: f8 16     mov   x,$16
09a6: d0 05     bne   $09ad
09a8: eb 17     mov   y,$17
09aa: cf        mul   ya
09ab: 2f 01     bra   $09ae
09ad: 9e        div   ya,x
09ae: 5c        lsr   a
09af: c4 53     mov   $53,a
09b1: f8 51     mov   x,$51
09b3: 3f de 09  call  $09de
09b6: 5c        lsr   a
09b7: 60        clrc
09b8: 84 53     adc   a,$53
09ba: c4 53     mov   $53,a
09bc: e8 ff     mov   a,#$ff
09be: 80        setc
09bf: a4 53     sbc   a,$53
09c1: f8 51     mov   x,$51
09c3: c5 70 04  mov   $0470,a
09c6: 3f 0f 12  call  $120f
09c9: e5 26 04  mov   a,$0426
09cc: 3f fb 10  call  $10fb
09cf: 4d        push  x
09d0: e8 01     mov   a,#$01
09d2: 1c        asl   a
09d3: 1d        dec   x
09d4: 1d        dec   x
09d5: d0 fb     bne   $09d2
09d7: c4 41     mov   $41,a
09d9: 09 41 5f  or    ($5f),($41)
09dc: ce        pop   x
09dd: 6f        ret

09de: f5 15 04  mov   a,$0415+x
09e1: c4 05     mov   $05,a
09e3: f5 16 04  mov   a,$0416+x
09e6: c4 04     mov   $04,a
09e8: ec 03 04  mov   y,$0403
09eb: e5 04 04  mov   a,$0404
09ee: 5a 04     cmpw  ya,$04
09f0: 90 1a     bcc   $0a0c
09f2: 9a 04     subw  ya,$04
09f4: fa 13 04  mov   ($04),($13)
09f7: fa 14 05  mov   ($05),($14)
09fa: 5a 04     cmpw  ya,$04
09fc: 90 03     bcc   $0a01
09fe: 5f 6b 09  jmp   $096b

0a01: f8 16     mov   x,$16
0a03: d0 05     bne   $0a0a
0a05: eb 17     mov   y,$17
0a07: cf        mul   ya
0a08: 2f 01     bra   $0a0b
0a0a: 9e        div   ya,x
0a0b: 6f        ret

0a0c: 6d        push  y
0a0d: c4 52     mov   $52,a
0a0f: ba 04     movw  ya,$04
0a11: ce        pop   x
0a12: d8 05     mov   $05,x
0a14: f8 52     mov   x,$52
0a16: d8 04     mov   $04,x
0a18: 9a 04     subw  ya,$04
0a1a: ad 00     cmp   y,#$00
0a1c: d0 07     bne   $0a25
0a1e: 68 05     cmp   a,#$05
0a20: b0 03     bcs   $0a25
0a22: 8f 01 58  mov   $58,#$01
0a25: fa 13 04  mov   ($04),($13)
0a28: fa 14 05  mov   ($05),($14)
0a2b: 5a 04     cmpw  ya,$04
0a2d: 90 03     bcc   $0a32
0a2f: 5f 6b 09  jmp   $096b

0a32: cc 6e 04  mov   $046e,y
0a35: c5 6f 04  mov   $046f,a
0a38: f8 16     mov   x,$16
0a3a: d0 05     bne   $0a41
0a3c: eb 17     mov   y,$17
0a3e: cf        mul   ya
0a3f: 2f 01     bra   $0a42
0a41: 9e        div   ya,x
0a42: 2d        push  a
0a43: e5 92 03  mov   a,$0392
0a46: 68 02     cmp   a,#$02
0a48: f0 02     beq   $0a4c
0a4a: ae        pop   a
0a4b: 6f        ret

0a4c: 13 58 04  bbc0  $58,$0a53
0a4f: e8 00     mov   a,#$00
0a51: 2f 2c     bra   $0a7f
0a53: e5 26 04  mov   a,$0426
0a56: 68 0a     cmp   a,#$0a
0a58: 90 04     bcc   $0a5e
0a5a: e8 40     mov   a,#$40
0a5c: 2f 02     bra   $0a60
0a5e: e8 80     mov   a,#$80
0a60: c5 26 04  mov   $0426,a
0a63: e5 6e 04  mov   a,$046e
0a66: c4 05     mov   $05,a
0a68: e5 6f 04  mov   a,$046f
0a6b: c4 04     mov   $04,a
0a6d: e9 91 03  mov   x,$0391
0a70: 9e        div   ya,x
0a71: f8 51     mov   x,$51
0a73: 68 08     cmp   a,#$08
0a75: b0 02     bcs   $0a79
0a77: e8 08     mov   a,#$08
0a79: 68 10     cmp   a,#$10
0a7b: 90 02     bcc   $0a7f
0a7d: e8 10     mov   a,#$10
0a7f: d5 5e 04  mov   $045e+x,a
0a82: ae        pop   a
0a83: 6f        ret

0a84: 6f        ret

0a85: ad c8     cmp   y,#$c8
0a87: b0 fb     bcs   $0a84
0a89: e4 0e     mov   a,$0e
0a8b: 24 41     and   a,$41
0a8d: d0 f5     bne   $0a84
0a8f: 6d        push  y
0a90: e4 41     mov   a,$41
0a92: 0e 40 00  tset1 $0040
0a95: 8d 5c     mov   y,#$5c
0a97: 3f b7 0b  call  $0bb7
0a9a: ee        pop   y
0a9b: f5 93 03  mov   a,$0393+x
0a9e: f0 11     beq   $0ab1
0aa0: e4 0c     mov   a,$0c
0aa2: 68 14     cmp   a,#$14
0aa4: 90 05     bcc   $0aab
0aa6: 80        setc
0aa7: a8 14     sbc   a,#$14
0aa9: 2f f7     bra   $0aa2
0aab: 3f fb 10  call  $10fb
0aae: 3f 2e 06  call  $062e
0ab1: f5 e6 03  mov   a,$03e6+x
0ab4: f0 0d     beq   $0ac3
0ab6: 4d        push  x
0ab7: 6d        push  y
0ab8: 3f 39 17  call  $1739
0abb: ee        pop   y
0abc: ce        pop   x
0abd: e5 f9 03  mov   a,$03f9
0ac0: f0 01     beq   $0ac3
0ac2: fd        mov   y,a
0ac3: dd        mov   a,y
0ac4: 28 7f     and   a,#$7f
0ac6: 1e fa 03  cmp   x,$03fa
0ac9: b0 11     bcs   $0adc
0acb: ec f9 03  mov   y,$03f9
0ace: d0 10     bne   $0ae0
0ad0: 60        clrc
0ad1: 85 51 03  adc   a,$0351
0ad4: 60        clrc
0ad5: 95 a3 03  adc   a,$03a3+x
0ad8: 60        clrc
0ad9: 95 b3 03  adc   a,$03b3+x
0adc: 60        clrc
0add: 95 41 03  adc   a,$0341+x
0ae0: d5 b1 02  mov   $02b1+x,a
0ae3: f5 d1 02  mov   a,$02d1+x
0ae6: d5 b0 02  mov   $02b0+x,a
0ae9: f5 11 03  mov   a,$0311+x
0aec: 5c        lsr   a
0aed: e8 00     mov   a,#$00
0aef: 7c        ror   a
0af0: d5 00 03  mov   $0300+x,a
0af3: e8 00     mov   a,#$00
0af5: d4 bc     mov   $bc+x,a
0af7: d4 8d     mov   $8d+x,a
0af9: d5 30 03  mov   $0330+x,a
0afc: d4 cc     mov   $cc+x,a
0afe: c5 f9 03  mov   $03f9,a
0b01: 3f 18 17  call  $1718
0b04: 09 41 5f  or    ($5f),($41)
0b07: 09 41 3f  or    ($3f),($41)
0b0a: f5 e0 02  mov   a,$02e0+x
0b0d: d4 ac     mov   $ac+x,a
0b0f: f0 1e     beq   $0b2f
0b11: f5 e1 02  mov   a,$02e1+x
0b14: d4 ad     mov   $ad+x,a
0b16: f5 f0 02  mov   a,$02f0+x
0b19: d0 0a     bne   $0b25
0b1b: f5 b1 02  mov   a,$02b1+x
0b1e: 80        setc
0b1f: b5 f1 02  sbc   a,$02f1+x
0b22: d5 b1 02  mov   $02b1+x,a
0b25: f5 f1 02  mov   a,$02f1+x
0b28: 60        clrc
0b29: 95 b1 02  adc   a,$02b1+x
0b2c: 3f 11 13  call  $1311
0b2f: 3f 2b 13  call  $132b
0b32: 8d 00     mov   y,#$00
0b34: e4 05     mov   a,$05
0b36: 80        setc
0b37: a8 34     sbc   a,#$34
0b39: b0 09     bcs   $0b44
0b3b: e4 05     mov   a,$05
0b3d: 80        setc
0b3e: a8 13     sbc   a,#$13
0b40: b0 06     bcs   $0b48
0b42: dc        dec   y
0b43: 1c        asl   a
0b44: 7a 04     addw  ya,$04
0b46: da 04     movw  $04,ya
0b48: 4d        push  x
0b49: e4 05     mov   a,$05
0b4b: 1c        asl   a
0b4c: 8d 00     mov   y,#$00
0b4e: cd 18     mov   x,#$18
0b50: 9e        div   ya,x
0b51: 5d        mov   x,a
0b52: f6 c7 0b  mov   a,$0bc7+y
0b55: c4 09     mov   $09,a
0b57: f6 c6 0b  mov   a,$0bc6+y
0b5a: c4 08     mov   $08,a
0b5c: f6 c9 0b  mov   a,$0bc9+y
0b5f: 2d        push  a
0b60: f6 c8 0b  mov   a,$0bc8+y
0b63: ee        pop   y
0b64: 9a 08     subw  ya,$08
0b66: eb 04     mov   y,$04
0b68: cf        mul   ya
0b69: dd        mov   a,y
0b6a: 8d 00     mov   y,#$00
0b6c: 7a 08     addw  ya,$08
0b6e: cb 09     mov   $09,y
0b70: 1c        asl   a
0b71: 2b 09     rol   $09
0b73: c4 08     mov   $08,a
0b75: 2f 04     bra   $0b7b
0b77: 4b 09     lsr   $09
0b79: 7c        ror   a
0b7a: 3d        inc   x
0b7b: c8 06     cmp   x,#$06
0b7d: f0 02     beq   $0b81
0b7f: 90 f6     bcc   $0b77
0b81: c4 08     mov   $08,a
0b83: ce        pop   x
0b84: f5 20 02  mov   a,$0220+x
0b87: eb 09     mov   y,$09
0b89: cf        mul   ya
0b8a: da 0a     movw  $0a,ya
0b8c: f5 20 02  mov   a,$0220+x
0b8f: eb 08     mov   y,$08
0b91: cf        mul   ya
0b92: 6d        push  y
0b93: f5 21 02  mov   a,$0221+x
0b96: eb 08     mov   y,$08
0b98: cf        mul   ya
0b99: 7a 0a     addw  ya,$0a
0b9b: da 0a     movw  $0a,ya
0b9d: f5 21 02  mov   a,$0221+x
0ba0: eb 09     mov   y,$09
0ba2: cf        mul   ya
0ba3: fd        mov   y,a
0ba4: ae        pop   a
0ba5: 7a 0a     addw  ya,$0a
0ba7: da 0a     movw  $0a,ya
0ba9: 7d        mov   a,x
0baa: 9f        xcn   a
0bab: 5c        lsr   a
0bac: 08 02     or    a,#$02
0bae: fd        mov   y,a
0baf: e4 0a     mov   a,$0a
0bb1: 3f b7 0b  call  $0bb7
0bb4: fc        inc   y
0bb5: e4 0b     mov   a,$0b
0bb7: 2d        push  a
0bb8: e4 41     mov   a,$41
0bba: 24 0e     and   a,$0e
0bbc: ae        pop   a
0bbd: d0 06     bne   $0bc5
0bbf: cc f2 00  mov   $00f2,y
0bc2: c5 f3 00  mov   $00f3,a
0bc5: 6f        ret

; pitch table
0bc6: dw $085f
0bc8: dw $08de
0bca: dw $0965
0bcc: dw $09f4
0bce: dw $0a8c
0bd0: dw $0b2c
0bd2: dw $0bd6
0bd4: dw $0c8b
0bd6: dw $0d4a
0bd8: dw $0e14
0bda: dw $0eea
0bdc: dw $0fcd
0bde: dw $10be

0be0: 8d 0f     mov   y,#$0f
0be2: cd 0f     mov   x,#$0f
0be4: f7 1d     mov   a,($1d)+y
0be6: f0 04     beq   $0bec
0be8: d4 1f     mov   $1f+x,a
0bea: d4 61     mov   $61+x,a
0bec: dc        dec   y
0bed: 1d        dec   x
0bee: 10 f4     bpl   $0be4
0bf0: e9 fa 03  mov   x,$03fa
0bf3: 1d        dec   x
0bf4: 1d        dec   x
0bf5: 8f 01 41  mov   $41,#$01
0bf8: e7 1f     mov   a,($1f+x)
0bfa: d4 2f     mov   $2f+x,a
0bfc: f0 06     beq   $0c04
0bfe: bb 1f     inc   $1f+x
0c00: d0 02     bne   $0c04
0c02: bb 20     inc   $20+x
0c04: e7 1f     mov   a,($1f+x)
0c06: d4 30     mov   $30+x,a
0c08: f0 06     beq   $0c10
0c0a: bb 1f     inc   $1f+x
0c0c: d0 02     bne   $0c10
0c0e: bb 20     inc   $20+x
0c10: f5 11 02  mov   a,$0211+x
0c13: d0 05     bne   $0c1a
0c15: e8 00     mov   a,#$00
0c17: 3f 47 10  call  $1047
0c1a: e8 00     mov   a,#$00
0c1c: d4 9c     mov   $9c+x,a
0c1e: d4 9d     mov   $9d+x,a
0c20: bc        inc   a
0c21: d4 7c     mov   $7c+x,a
0c23: 1d        dec   x
0c24: 1d        dec   x
0c25: 10 d1     bpl   $0bf8
0c27: 6f        ret

0c28: e4 0e     mov   a,$0e
0c2a: 48 ff     eor   a,#$ff
0c2c: 0e 40 00  tset1 $0040
0c2f: e8 00     mov   a,#$00
0c31: c5 7f 03  mov   $037f,a
0c34: cd 00     mov   x,#$00
0c36: d4 61     mov   $61+x,a
0c38: d5 11 02  mov   $0211+x,a
0c3b: d5 d1 02  mov   $02d1+x,a
0c3e: d5 41 03  mov   $0341+x,a
0c41: d5 93 03  mov   $0393+x,a
0c44: d5 e0 02  mov   $02e0+x,a
0c47: d4 bc     mov   $bc+x,a
0c49: d4 8d     mov   $8d+x,a
0c4b: d4 bd     mov   $bd+x,a
0c4d: d5 30 03  mov   $0330+x,a
0c50: d4 cc     mov   $cc+x,a
0c52: d4 cd     mov   $cd+x,a
0c54: d5 b3 03  mov   $03b3+x,a
0c57: d5 e6 03  mov   $03e6+x,a
0c5a: d5 a3 03  mov   $03a3+x,a
0c5d: d5 55 03  mov   $0355+x,a
0c60: d5 56 03  mov   $0356+x,a
0c63: 3d        inc   x
0c64: 3d        inc   x
0c65: c8 10     cmp   x,#$10
0c67: d0 cd     bne   $0c36
0c69: c5 4d 04  mov   $044d,a
0c6c: e8 0a     mov   a,#$0a
0c6e: c5 fa 03  mov   $03fa,a
0c71: e8 ff     mov   a,#$ff
0c73: c5 38 04  mov   $0438,a
0c76: e8 00     mov   a,#$00
0c78: c5 6c 03  mov   $036c,a
0c7b: c5 39 04  mov   $0439,a
0c7e: cd 00     mov   x,#$00
0c80: d4 61     mov   $61+x,a
0c82: d5 d1 02  mov   $02d1+x,a
0c85: 3d        inc   x
0c86: 3d        inc   x
0c87: 1e fa 03  cmp   x,$03fa
0c8a: d0 f4     bne   $0c80
0c8c: c4 5b     mov   $5b,a
0c8e: c4 79     mov   $79,a
0c90: c4 4d     mov   $4d,a
0c92: c5 51 03  mov   $0351,a
0c95: c4 60     mov   $60,a
0c97: e8 01     mov   a,#$01
0c99: c4 4d     mov   $4d,a
0c9b: e8 19     mov   a,#$19
0c9d: c4 4e     mov   $4e,a
0c9f: 80        setc
0ca0: a4 4c     sbc   a,$4c
0ca2: f8 4d     mov   x,$4d
0ca4: 3f 36 13  call  $1336
0ca7: da 4f     movw  $4f,ya
0ca9: e8 01     mov   a,#$01
0cab: 3f a7 12  call  $12a7
0cae: a2 43     set5  $43
0cb0: e8 00     mov   a,#$00
0cb2: 8d 00     mov   y,#$00
0cb4: da 71     movw  $71,ya
0cb6: da 73     movw  $73,ya
0cb8: 6f        ret

0cb9: c5 39 04  mov   $0439,a
0cbc: c5 6c 03  mov   $036c,a
0cbf: 1c        asl   a
0cc0: 1c        asl   a
0cc1: 1c        asl   a
0cc2: f0 f4     beq   $0cb8
0cc4: 5d        mov   x,a
0cc5: f5 f9 7f  mov   a,$7ff9+x
0cc8: fd        mov   y,a
0cc9: f5 f8 7f  mov   a,$7ff8+x
0ccc: da 1d     movw  $1d,ya
0cce: f5 fa 7f  mov   a,$7ffa+x
0cd1: c5 fa 03  mov   $03fa,a
0cd4: f5 fd 7f  mov   a,$7ffd+x
0cd7: fd        mov   y,a
0cd8: f5 fc 7f  mov   a,$7ffc+x
0cdb: da 19     movw  $19,ya
0cdd: f5 fe 7f  mov   a,$7ffe+x
0ce0: c5 3a 04  mov   $043a,a
0ce3: f5 ff 7f  mov   a,$7fff+x
0ce6: c5 3b 04  mov   $043b,a
0ce9: e4 0e     mov   a,$0e
0ceb: 48 0f     eor   a,#$0f
0ced: 0e 40 00  tset1 $0040
0cf0: e8 00     mov   a,#$00
0cf2: c5 4d 04  mov   $044d,a
0cf5: cd 00     mov   x,#$00
0cf7: 8f 01 41  mov   $41,#$01
0cfa: e8 ff     mov   a,#$ff
0cfc: c5 38 04  mov   $0438,a
0cff: d5 51 02  mov   $0251+x,a
0d02: e8 06     mov   a,#$06
0d04: d4 8c     mov   $8c+x,a
0d06: 7d        mov   a,x
0d07: e8 0a     mov   a,#$0a
0d09: 3f fb 10  call  $10fb
0d0c: e8 00     mov   a,#$00
0d0e: d5 11 02  mov   $0211+x,a
0d11: d5 d1 02  mov   $02d1+x,a
0d14: d5 41 03  mov   $0341+x,a
0d17: d5 93 03  mov   $0393+x,a
0d1a: d5 e0 02  mov   $02e0+x,a
0d1d: d4 bc     mov   $bc+x,a
0d1f: d4 8d     mov   $8d+x,a
0d21: d4 bd     mov   $bd+x,a
0d23: d5 30 03  mov   $0330+x,a
0d26: d4 cc     mov   $cc+x,a
0d28: d4 cd     mov   $cd+x,a
0d2a: d5 b3 03  mov   $03b3+x,a
0d2d: d5 e6 03  mov   $03e6+x,a
0d30: d5 a3 03  mov   $03a3+x,a
0d33: d4 61     mov   $61+x,a
0d35: 0b 41     asl   $41
0d37: 3d        inc   x
0d38: 3d        inc   x
0d39: 1e fa 03  cmp   x,$03fa
0d3c: d0 bc     bne   $0cfa
0d3e: e8 00     mov   a,#$00
0d40: c5 6b 03  mov   $036b,a
0d43: c4 5b     mov   $5b,a
0d45: c4 79     mov   $79,a
0d47: c4 4d     mov   $4d,a
0d49: c5 51 03  mov   $0351,a
0d4c: c4 60     mov   $60,a
0d4e: 8f 20 4c  mov   $4c,#$20
0d51: ec fa 03  mov   y,$03fa
0d54: dc        dec   y
0d55: e9 fa 03  mov   x,$03fa
0d58: 1d        dec   x
0d59: f7 1d     mov   a,($1d)+y
0d5b: d4 1f     mov   $1f+x,a
0d5d: e8 01     mov   a,#$01
0d5f: d4 61     mov   $61+x,a
0d61: dc        dec   y
0d62: 1d        dec   x
0d63: 10 f4     bpl   $0d59
0d65: cd 00     mov   x,#$00
0d67: 8f 01 41  mov   $41,#$01
0d6a: e7 1f     mov   a,($1f+x)
0d6c: d4 2f     mov   $2f+x,a
0d6e: f0 06     beq   $0d76
0d70: bb 1f     inc   $1f+x
0d72: d0 02     bne   $0d76
0d74: bb 20     inc   $20+x
0d76: e7 1f     mov   a,($1f+x)
0d78: d4 30     mov   $30+x,a
0d7a: f0 06     beq   $0d82
0d7c: bb 1f     inc   $1f+x
0d7e: d0 02     bne   $0d82
0d80: bb 20     inc   $20+x
0d82: 0b 41     asl   $41
0d84: 3d        inc   x
0d85: 3d        inc   x
0d86: 1e fa 03  cmp   x,$03fa
0d89: d0 df     bne   $0d6a
0d8b: cd 00     mov   x,#$00
0d8d: 8f 01 41  mov   $41,#$01
0d90: e8 00     mov   a,#$00
0d92: d4 9c     mov   $9c+x,a
0d94: d4 9d     mov   $9d+x,a
0d96: bc        inc   a
0d97: d4 7c     mov   $7c+x,a
0d99: 0b 41     asl   $41
0d9b: 3d        inc   x
0d9c: 3d        inc   x
0d9d: 1e fa 03  cmp   x,$03fa
0da0: d0 ee     bne   $0d90
0da2: 6f        ret

0da3: e5 38 04  mov   a,$0438
0da6: 30 15     bmi   $0dbd
0da8: 65 39 04  cmp   a,$0439
0dab: f0 06     beq   $0db3
0dad: e5 38 04  mov   a,$0438
0db0: 5f b9 0c  jmp   $0cb9

0db3: e5 4d 04  mov   a,$044d
0db6: d0 f5     bne   $0dad
0db8: e8 ff     mov   a,#$ff
0dba: c5 38 04  mov   $0438,a
0dbd: 6f        ret

0dbe: cd 00     mov   x,#$00
0dc0: d8 5f     mov   $5f,x
0dc2: 8f 01 41  mov   $41,#$01
0dc5: d8 42     mov   $42,x
0dc7: f4 61     mov   a,$61+x
0dc9: d0 03     bne   $0dce
0dcb: 5f 91 0e  jmp   $0e91

0dce: f5 4e 04  mov   a,$044e+x
0dd1: f0 09     beq   $0ddc
0dd3: f5 4e 04  mov   a,$044e+x
0dd6: 80        setc
0dd7: a8 01     sbc   a,#$01
0dd9: d5 4e 04  mov   $044e+x,a
0ddc: 7d        mov   a,x
0ddd: 9b 7c     dec   $7c+x
0ddf: f0 03     beq   $0de4
0de1: 5f 8b 0e  jmp   $0e8b

; dispatch voice bytes
0de4: 3f 6b 0f  call  $0f6b             ; read vcmd
0de7: d0 68     bne   $0e51
; vcmd 00
0de9: 3f 6b 0f  call  $0f6b
0dec: f0 28     beq   $0e16             ; vcmd 00 00 - end pattern
0dee: 68 02     cmp   a,#$02
0df0: f0 15     beq   $0e07
; vcmd 00 xx - ?
0df2: e8 00     mov   a,#$00
0df4: d5 55 03  mov   $0355+x,a
0df7: d4 61     mov   $61+x,a
0df9: d5 56 03  mov   $0356+x,a
0dfc: d5 4e 04  mov   $044e+x,a
0dff: e4 41     mov   a,$41
0e01: 0e 40 00  tset1 $0040
0e04: 5f 91 0e  jmp   $0e91

; vcmd 00 02 - goto
0e07: 3f 6b 0f  call  $0f6b
0e0a: 2d        push  a
0e0b: 3f 6b 0f  call  $0f6b
0e0e: d4 30     mov   $30+x,a
0e10: ae        pop   a
0e11: d4 2f     mov   $2f+x,a           ; goto arg1/2
0e13: 5f e4 0d  jmp   $0de4

; dispatch pattern event
;
; note: each tracks has the corresponding pattern sequence
; (incompatible with standard N-SPC, which has only a single global pattern sequence)
0e16: e7 1f     mov   a,($1f+x)
0e18: d4 2f     mov   $2f+x,a
0e1a: bb 1f     inc   $1f+x
0e1c: d0 02     bne   $0e20
0e1e: bb 20     inc   $20+x
0e20: e7 1f     mov   a,($1f+x)
0e22: d4 30     mov   $30+x,a           ; read new start address for the track
0e24: bb 1f     inc   $1f+x
0e26: d0 02     bne   $0e2a
0e28: bb 20     inc   $20+x
0e2a: f4 30     mov   a,$30+x
0e2c: f0 0b     beq   $0e39             ; if $00xx: ?
0e2e: 68 ff     cmp   a,#$ff
0e30: f0 1c     beq   $0e4e             ; if $ffxx: ?
0e32: 68 01     cmp   a,#$01
0e34: f0 06     beq   $0e3c             ; if $01xx (usually 00 01): goto
0e36: 5f e4 0d  jmp   $0de4             ; else: start dispatching the new pattern

0e39: 5f 28 0c  jmp   $0c28

; goto for the pattern sequence
0e3c: e7 1f     mov   a,($1f+x)
0e3e: 2d        push  a
0e3f: bb 1f     inc   $1f+x
0e41: d0 02     bne   $0e45
0e43: ab 20     inc   $20
0e45: e7 1f     mov   a,($1f+x)
0e47: d4 20     mov   $20+x,a
0e49: ae        pop   a
0e4a: d4 1f     mov   $1f+x,a
0e4c: 2f c8     bra   $0e16

0e4e: 5f e0 0b  jmp   $0be0

0e51: 30 19     bmi   $0e6c             ; vcmds 01-7f - note info:
0e53: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
0e56: 3f 6b 0f  call  $0f6b             ;   read next byte
0e59: 30 11     bmi   $0e6c             ;   branch if not a note
0e5b: d0 03     bne   $0e60             ;   branch if the second argument of the last note
0e5d: 5f e9 0d  jmp   $0de9             ;   branch if zero (end pattern)

; process the second note param (velocity)
; (incompatible with standard N-SPC)
0e60: 1c        asl   a                 ; extend 7-bit value to 8-bit
0e61: d5 10 02  mov   $0210+x,a         ; set per-note volume (velocity)
0e64: e8 ff     mov   a,#$ff
0e66: d5 01 02  mov   $0201+x,a         ; maximize dur%
0e69: 5f e4 0d  jmp   $0de4

; vcmd branches 80-ff
0e6c: 68 ca     cmp   a,#$ca
0e6e: 90 06     bcc   $0e76
0e70: 3f 54 0f  call  $0f54
0e73: 5f e4 0d  jmp   $0de4

; vcmds 80-c9 - note
0e76: 3f 85 0a  call  $0a85
0e79: f5 00 02  mov   a,$0200+x
0e7c: d4 7c     mov   $7c+x,a
0e7e: fd        mov   y,a
0e7f: f5 01 02  mov   a,$0201+x
0e82: cf        mul   ya
0e83: dd        mov   a,y
0e84: d0 01     bne   $0e87
0e86: bc        inc   a
0e87: d4 7d     mov   $7d+x,a
0e89: 2f 03     bra   $0e8e
0e8b: 3f 8e 14  call  $148e
0e8e: 3f f0 12  call  $12f0
0e91: 3d        inc   x
0e92: 3d        inc   x
0e93: 0b 41     asl   $41
0e95: f0 03     beq   $0e9a
0e97: 5f c5 0d  jmp   $0dc5

0e9a: e4 4d     mov   a,$4d
0e9c: f0 0b     beq   $0ea9
0e9e: ba 4f     movw  ya,$4f
0ea0: 7a 4b     addw  ya,$4b
0ea2: 6e 4d 02  dbnz  $4d,$0ea7
0ea5: ba 4d     movw  ya,$4d
0ea7: da 4b     movw  $4b,ya
0ea9: e4 79     mov   a,$79
0eab: f0 15     beq   $0ec2
0ead: ba 75     movw  ya,$75
0eaf: 7a 71     addw  ya,$71
0eb1: da 71     movw  $71,ya
0eb3: ba 77     movw  ya,$77
0eb5: 7a 73     addw  ya,$73
0eb7: 6e 79 06  dbnz  $79,$0ec0
0eba: ba 79     movw  ya,$79
0ebc: da 71     movw  $71,ya
0ebe: eb 7b     mov   y,$7b
0ec0: da 73     movw  $73,ya
0ec2: e4 5b     mov   a,$5b
0ec4: f0 0f     beq   $0ed5
0ec6: ba 5d     movw  ya,$5d
0ec8: 7a 59     addw  ya,$59
0eca: 8b 5b     dec   $5b
0ecc: d0 02     bne   $0ed0
0ece: ba 5b     movw  ya,$5b
0ed0: da 59     movw  $59,ya
0ed2: 8f ff 5f  mov   $5f,#$ff
0ed5: cd 00     mov   x,#$00
0ed7: 8f 01 41  mov   $41,#$01
0eda: f4 61     mov   a,$61+x
0edc: f0 03     beq   $0ee1
0ede: 3f 52 13  call  $1352
0ee1: 3d        inc   x
0ee2: 3d        inc   x
0ee3: 0b 41     asl   $41
0ee5: d0 f3     bne   $0eda
0ee7: 6f        ret

; vcmd dispatch table
0ee8: dw $0f7e  ; ca - set instrument
0eea: dw $10fb  ; cb - pan
0eec: dw $1166  ; cc - pan fade
0eee: dw $117f  ; cd - vibrato on
0ef0: dw $118b  ; ce - vibrato off
0ef2: dw $11a6  ; cf - master volume
0ef4: dw $11ab  ; d0 - master volume fade
0ef6: dw $11bd  ; d1 - tempo
0ef8: dw $11c7  ; d2 - tempo fade
0efa: dw $11d9  ; d3 - global transpose
0efc: dw $11dd  ; d4 - per-voice transpose
0efe: dw $11e2  ; d5 - tremolo on
0f00: dw $11ee  ; d6 - tremolo off
0f02: dw $120f  ; d7 - volume
0f04: dw $1218  ; d8 - volume fade
0f06: dw $1239  ; d9
0f08: dw $1196  ; da - vibrato fade
0f0a: dw $11f1  ; db - pitch envelope (release)
0f0c: dw $11f5  ; dc - pitch envelope (attack)
0f0e: dw $120b  ; dd - pitch envelope off
0f10: dw $1231  ; de - tuning
0f12: dw $124a  ; df - echo vbits/volume
0f14: dw $127e  ; e0 - disable echo
0f16: dw $1285  ; e1 - set echo params
0f18: dw $125d  ; e2 - echo volume fade
0f1a: dw $1300  ; e3 - pitch slide
0f1c: dw $0f30  ; e4 - invalid
0f1e: dw $11e1  ; e5 - nop
0f20: dw $1047  ; e6
0f22: dw $10e5  ; e7
0f24: dw $110d  ; e8
0f26: dw $1111  ; e9
0f28: dw $1117  ; ea
0f2a: dw $1121  ; eb
0f2c: dw $1137  ; ec
0f2e: dw $114f  ; ed
                ; ee-ff - undefined

; vcmd lengths
0f30: db         $01,$01,$02,$03,$00,$01 ; ca-cf
0f36: db $02,$01,$02,$01,$01,$03,$00,$01 ; d0-d7
0f3e: db $02,$01,$01,$03,$03,$00,$01,$03 ; d8-df
0f46: db $00,$03,$03,$03,$01,$00,$01,$04 ; e0-e7
0f4e: db $00,$00,$01,$01,$01,$00         ; e8-ef

; dispatch vcmd
0f54: 28 7f     and   a,#$7f
0f56: 80        setc
0f57: a8 4a     sbc   a,#$4a
0f59: 1c        asl   a
0f5a: fd        mov   y,a
0f5b: f6 e9 0e  mov   a,$0ee9+y
0f5e: 2d        push  a
0f5f: f6 e8 0e  mov   a,$0ee8+y
0f62: 2d        push  a
0f63: dd        mov   a,y
0f64: 5c        lsr   a
0f65: fd        mov   y,a
0f66: f6 30 0f  mov   a,$0f30+y
0f69: f0 08     beq   $0f73
; read byte from $2f/30+x
0f6b: e7 2f     mov   a,($2f+x)
; increment score pointer
0f6d: bb 2f     inc   $2f+x
0f6f: d0 02     bne   $0f73
0f71: bb 30     inc   $30+x
0f73: fd        mov   y,a
0f74: 6f        ret

0f75: e7 2f     mov   a,($2f+x)
0f77: bb 2f     inc   $2f+x
0f79: d0 02     bne   $0f7d
0f7b: bb 30     inc   $30+x
0f7d: 6f        ret

; vcmd ca - set instrument
0f7e: d5 11 02  mov   $0211+x,a
0f81: fd        mov   y,a
0f82: ad ff     cmp   y,#$ff
0f84: f0 1f     beq   $0fa5
0f86: 10 2f     bpl   $0fb7
0f88: 80        setc
0f89: a8 80     sbc   a,#$80
0f8b: c4 51     mov   $51,a
0f8d: 8d 02     mov   y,#$02
0f8f: cf        mul   ya
0f90: da 08     movw  $08,ya
0f92: 60        clrc
0f93: 98 00 08  adc   $08,#$00
0f96: 98 60 09  adc   $09,#$60
0f99: e4 41     mov   a,$41
0f9b: 4e 44 00  tclr1 $0044
0f9e: e8 11     mov   a,#$11
0fa0: c5 e4 03  mov   $03e4,a
0fa3: 2f 2c     bra   $0fd1
0fa5: 3f 6b 0f  call  $0f6b
0fa8: 28 1f     and   a,#$1f
0faa: 38 20 43  and   $43,#$20
0fad: 0e 43 00  tset1 $0043
0fb0: 09 41 44  or    ($44),($41)
0fb3: e8 00     mov   a,#$00
0fb5: 2f 0c     bra   $0fc3
0fb7: 2d        push  a
0fb8: e8 01     mov   a,#$01
0fba: c5 e4 03  mov   $03e4,a
0fbd: e4 41     mov   a,$41
0fbf: 4e 44 00  tclr1 $0044
0fc2: ae        pop   a
0fc3: c4 51     mov   $51,a
0fc5: 8d 02     mov   y,#$02
0fc7: cf        mul   ya
0fc8: da 08     movw  $08,ya
0fca: 60        clrc
0fcb: 98 00 08  adc   $08,#$00
0fce: 98 20 09  adc   $09,#$20
0fd1: e4 0e     mov   a,$0e
0fd3: 24 41     and   a,$41
0fd5: d0 6f     bne   $1046
0fd7: e4 51     mov   a,$51
0fd9: 60        clrc
0fda: 85 e4 03  adc   a,$03e4
0fdd: 1c        asl   a
0fde: 1c        asl   a
0fdf: c9 68 03  mov   $0368,x
0fe2: 5d        mov   x,a
0fe3: 8d 01     mov   y,#$01
0fe5: f7 08     mov   a,($08)+y
0fe7: 2d        push  a
0fe8: dc        dec   y
0fe9: f7 08     mov   a,($08)+y
0feb: ee        pop   y
0fec: da 08     movw  $08,ya
0fee: e4 08     mov   a,$08
0ff0: 60        clrc
0ff1: 88 05     adc   a,#$05
0ff3: d5 00 1f  mov   $1f00+x,a
0ff6: e4 09     mov   a,$09
0ff8: 88 00     adc   a,#$00
0ffa: d5 01 1f  mov   $1f01+x,a
0ffd: 8d 00     mov   y,#$00
0fff: f7 08     mov   a,($08)+y
1001: 60        clrc
1002: 95 00 1f  adc   a,$1f00+x
1005: d5 02 1f  mov   $1f02+x,a
1008: fc        inc   y
1009: f7 08     mov   a,($08)+y
100b: 95 01 1f  adc   a,$1f01+x
100e: d5 03 1f  mov   $1f03+x,a
1011: fc        inc   y
1012: e9 68 03  mov   x,$0368
1015: f7 08     mov   a,($08)+y
1017: d5 20 02  mov   $0220+x,a
101a: fc        inc   y
101b: f7 08     mov   a,($08)+y
101d: d5 21 02  mov   $0221+x,a
1020: e8 00     mov   a,#$00
1022: d5 a3 03  mov   $03a3+x,a
1025: e8 1f     mov   a,#$1f
1027: d5 c3 03  mov   $03c3+x,a
102a: d5 c4 03  mov   $03c4+x,a
102d: e8 7f     mov   a,#$7f
102f: d5 d3 03  mov   $03d3+x,a
1032: e8 00     mov   a,#$00
1034: d5 d4 03  mov   $03d4+x,a
1037: 7d        mov   a,x
1038: 9f        xcn   a
1039: 5c        lsr   a
103a: 08 04     or    a,#$04
103c: fd        mov   y,a
103d: e4 51     mov   a,$51
103f: 60        clrc
1040: 85 e4 03  adc   a,$03e4
1043: 3f bf 0b  call  $0bbf
1046: 6f        ret

; vcmd e6
1047: d5 11 02  mov   $0211+x,a
104a: fd        mov   y,a
104b: c4 51     mov   $51,a
104d: 8d 02     mov   y,#$02
104f: cf        mul   ya
1050: da 08     movw  $08,ya
1052: e5 3a 04  mov   a,$043a
1055: 60        clrc
1056: 84 08     adc   a,$08
1058: c4 08     mov   $08,a
105a: e5 3b 04  mov   a,$043b
105d: 60        clrc
105e: 84 09     adc   a,$09
1060: c4 09     mov   $09,a
1062: e4 41     mov   a,$41
1064: 4e 44 00  tclr1 $0044
1067: e4 0e     mov   a,$0e
1069: 24 41     and   a,$41
106b: f0 03     beq   $1070
106d: 5f e4 10  jmp   $10e4

1070: 8d 01     mov   y,#$01
1072: f7 08     mov   a,($08)+y
1074: 2d        push  a
1075: dc        dec   y
1076: f7 08     mov   a,($08)+y
1078: ee        pop   y
1079: da 08     movw  $08,ya
107b: e4 51     mov   a,$51
107d: c4 52     mov   $52,a
107f: 60        clrc
1080: 88 28     adc   a,#$28
1082: c4 51     mov   $51,a
1084: 1c        asl   a
1085: 1c        asl   a
1086: c9 68 03  mov   $0368,x
1089: 5d        mov   x,a
108a: e4 08     mov   a,$08
108c: 60        clrc
108d: 88 05     adc   a,#$05
108f: d5 00 1f  mov   $1f00+x,a
1092: e4 09     mov   a,$09
1094: 88 00     adc   a,#$00
1096: d5 01 1f  mov   $1f01+x,a
1099: 8d 00     mov   y,#$00
109b: f7 08     mov   a,($08)+y
109d: 60        clrc
109e: 95 00 1f  adc   a,$1f00+x
10a1: d5 02 1f  mov   $1f02+x,a
10a4: fc        inc   y
10a5: f7 08     mov   a,($08)+y
10a7: 95 01 1f  adc   a,$1f01+x
10aa: d5 03 1f  mov   $1f03+x,a
10ad: fc        inc   y
10ae: e9 68 03  mov   x,$0368
10b1: f7 08     mov   a,($08)+y
10b3: d5 20 02  mov   $0220+x,a
10b6: fc        inc   y
10b7: f7 08     mov   a,($08)+y
10b9: d5 21 02  mov   $0221+x,a
10bc: fc        inc   y
10bd: f7 08     mov   a,($08)+y
10bf: c4 52     mov   $52,a
10c1: 8d 00     mov   y,#$00
10c3: 4d        push  x
10c4: cd 0c     mov   x,#$0c
10c6: 9e        div   ya,x
10c7: 8d 0c     mov   y,#$0c
10c9: cf        mul   ya
10ca: c4 53     mov   $53,a
10cc: e4 52     mov   a,$52
10ce: 80        setc
10cf: a4 53     sbc   a,$53
10d1: 48 ff     eor   a,#$ff
10d3: bc        inc   a
10d4: ce        pop   x
10d5: d5 a3 03  mov   $03a3+x,a
10d8: 7d        mov   a,x
10d9: 9f        xcn   a
10da: 5c        lsr   a
10db: 08 04     or    a,#$04
10dd: fd        mov   y,a
10de: e4 51     mov   a,$51
10e0: cb f2     mov   $f2,y
10e2: c4 f3     mov   $f3,a
10e4: 6f        ret

; vcmd e7
10e5: d5 c3 03  mov   $03c3+x,a
10e8: 3f 6b 0f  call  $0f6b
10eb: d5 c4 03  mov   $03c4+x,a
10ee: 3f 6b 0f  call  $0f6b
10f1: d5 d3 03  mov   $03d3+x,a
10f4: 3f 6b 0f  call  $0f6b
10f7: d5 d4 03  mov   $03d4+x,a
10fa: 6f        ret

; vcmd cb - pan
10fb: d5 a1 02  mov   $02a1+x,a
10fe: 68 14     cmp   a,#$14
1100: 90 02     bcc   $1104
1102: e8 14     mov   a,#$14
1104: d5 81 02  mov   $0281+x,a
1107: e8 00     mov   a,#$00
1109: d5 80 02  mov   $0280+x,a
110c: 6f        ret

; vcmd e8
110d: e8 01     mov   a,#$01
110f: 2f 02     bra   $1113
; vcmd e9
1111: e8 00     mov   a,#$00
1113: d5 93 03  mov   $0393+x,a
1116: 6f        ret

; vcmd ea
1117: 68 10     cmp   a,#$10
1119: 90 02     bcc   $111d
111b: e8 10     mov   a,#$10
111d: d5 5e 04  mov   $045e+x,a
1120: 6f        ret

; vcmd eb
1121: c4 51     mov   $51,a
1123: 3f 2e 06  call  $062e
1126: e4 0c     mov   a,$0c
1128: 28 1f     and   a,#$1f
112a: 64 51     cmp   a,$51
112c: 90 05     bcc   $1133
112e: 80        setc
112f: a4 51     sbc   a,$51
1131: 2f f7     bra   $112a
1133: d5 41 03  mov   $0341+x,a
1136: 6f        ret

; vcmd ec
1137: c4 51     mov   $51,a
1139: 3f 2e 06  call  $062e
113c: e4 0c     mov   a,$0c
113e: 28 1f     and   a,#$1f
1140: 64 51     cmp   a,$51
1142: 90 05     bcc   $1149
1144: 80        setc
1145: a4 51     sbc   a,$51
1147: 2f f7     bra   $1140
1149: 08 03     or    a,#$03
114b: d5 00 02  mov   $0200+x,a
114e: 6f        ret

; vcmd ed
114f: e8 03     mov   a,#$03
1151: c4 51     mov   $51,a
1153: 3f 2e 06  call  $062e
1156: e4 0c     mov   a,$0c
1158: 28 0f     and   a,#$0f
115a: 64 51     cmp   a,$51
115c: 90 05     bcc   $1163
115e: 80        setc
115f: a4 51     sbc   a,$51
1161: 2f f7     bra   $115a
1163: 5f 8b 0f  jmp   $0f8b

; vcmd cc - pan fade
1166: d4 9d     mov   $9d+x,a
1168: 2d        push  a
1169: 3f 6b 0f  call  $0f6b
116c: d5 a0 02  mov   $02a0+x,a
116f: 80        setc
1170: b5 81 02  sbc   a,$0281+x
1173: ce        pop   x
1174: 3f 36 13  call  $1336
1177: d5 90 02  mov   $0290+x,a
117a: dd        mov   a,y
117b: d5 91 02  mov   $0291+x,a
117e: 6f        ret

; vcmd cd - vibrato on
117f: d5 10 03  mov   $0310+x,a
1182: 3f 6b 0f  call  $0f6b
1185: d5 01 03  mov   $0301+x,a
1188: 3f 6b 0f  call  $0f6b
; vcmd ce - vibrato off
118b: d4 bd     mov   $bd+x,a
118d: d5 21 03  mov   $0321+x,a
1190: e8 00     mov   a,#$00
1192: d5 11 03  mov   $0311+x,a
1195: 6f        ret

; vcmd da - vibrato fade
1196: d5 11 03  mov   $0311+x,a
1199: 2d        push  a
119a: 8d 00     mov   y,#$00
119c: f4 bd     mov   a,$bd+x
119e: ce        pop   x
119f: 9e        div   ya,x
11a0: f8 42     mov   x,$42
11a2: d5 20 03  mov   $0320+x,a
11a5: 6f        ret

; vcmd cf - master volume
11a6: e8 00     mov   a,#$00
11a8: da 59     movw  $59,ya
11aa: 6f        ret

; vcmd d0 - master volume fade
11ab: c4 5b     mov   $5b,a
11ad: 3f 6b 0f  call  $0f6b
11b0: c4 5c     mov   $5c,a
11b2: 80        setc
11b3: a4 5a     sbc   a,$5a
11b5: f8 5b     mov   x,$5b
11b7: 3f 36 13  call  $1336
11ba: da 5d     movw  $5d,ya
11bc: 6f        ret

; vcmd d1 - tempo
11bd: e5 6b 03  mov   a,$036b
11c0: d0 04     bne   $11c6
11c2: e8 00     mov   a,#$00
11c4: da 4b     movw  $4b,ya
11c6: 6f        ret

; vcmd d2 - tempo fade
11c7: c4 4d     mov   $4d,a
11c9: 3f 6b 0f  call  $0f6b
11cc: c4 4e     mov   $4e,a
11ce: 80        setc
11cf: a4 4c     sbc   a,$4c
11d1: f8 4d     mov   x,$4d
11d3: 3f 36 13  call  $1336
11d6: da 4f     movw  $4f,ya
11d8: 6f        ret

; vcmd d3 - global transpose
11d9: c5 51 03  mov   $0351,a
11dc: 6f        ret

; vcmd d4 - per-voice transpose
11dd: d5 41 03  mov   $0341+x,a
11e0: 6f        ret

; vcmd e5 - nop
11e1: 6f        ret

; vcmd d5 - tremolo on
11e2: d5 40 03  mov   $0340+x,a
11e5: 3f 6b 0f  call  $0f6b
11e8: d5 31 03  mov   $0331+x,a
11eb: 3f 6b 0f  call  $0f6b
; vcmd d6 - tremolo off
11ee: d4 cd     mov   $cd+x,a
11f0: 6f        ret

; vcmd db - pitch envelope (release)
11f1: e8 01     mov   a,#$01
11f3: 2f 02     bra   $11f7
; vcmd dc - pitch envelope (attack)
11f5: e8 00     mov   a,#$00
11f7: d5 f0 02  mov   $02f0+x,a
11fa: dd        mov   a,y
11fb: d5 e1 02  mov   $02e1+x,a
11fe: 3f 6b 0f  call  $0f6b
1201: d5 e0 02  mov   $02e0+x,a
1204: 3f 6b 0f  call  $0f6b
1207: d5 f1 02  mov   $02f1+x,a
120a: 6f        ret

; vcmd dd - pitch envelope off
120b: d5 e0 02  mov   $02e0+x,a
120e: 6f        ret

; vcmd d7 - volume
120f: d5 51 02  mov   $0251+x,a
1212: e8 00     mov   a,#$00
1214: d5 50 02  mov   $0250+x,a
1217: 6f        ret

; vcmd d8 - volume fade
1218: d4 9c     mov   $9c+x,a
121a: 2d        push  a
121b: 3f 6b 0f  call  $0f6b
121e: d5 70 02  mov   $0270+x,a
1221: 80        setc
1222: b5 51 02  sbc   a,$0251+x
1225: ce        pop   x
1226: 3f 36 13  call  $1336
1229: d5 60 02  mov   $0260+x,a
122c: dd        mov   a,y
122d: d5 61 02  mov   $0261+x,a
1230: 6f        ret

; vcmd de - tuning
1231: c4 51     mov   $51,a
1233: e4 51     mov   a,$51
1235: d5 d1 02  mov   $02d1+x,a
1238: 6f        ret

; vcmd d9
1239: 1c        asl   a
123a: fd        mov   y,a
123b: f7 19     mov   a,($19)+y
123d: d5 3d 04  mov   $043d+x,a
1240: fc        inc   y
1241: f7 19     mov   a,($19)+y
1243: d5 3e 04  mov   $043e+x,a
1246: d5 e6 03  mov   $03e6+x,a
1249: 6f        ret

; vcmd df - echo vbits/volume
124a: c4 45     mov   $45,a
124c: 3f 6b 0f  call  $0f6b
124f: e8 00     mov   a,#$00
1251: da 71     movw  $71,ya
1253: 3f 6b 0f  call  $0f6b
1256: e8 00     mov   a,#$00
1258: da 73     movw  $73,ya
125a: b2 43     clr5  $43
125c: 6f        ret

; vcmd e2 - echo volume fade
125d: c4 79     mov   $79,a
125f: 3f 6b 0f  call  $0f6b
1262: c4 7a     mov   $7a,a
1264: 80        setc
1265: a4 72     sbc   a,$72
1267: f8 79     mov   x,$79
1269: 3f 36 13  call  $1336
126c: da 75     movw  $75,ya
126e: 3f 6b 0f  call  $0f6b
1271: c4 7b     mov   $7b,a
1273: 80        setc
1274: a4 74     sbc   a,$74
1276: f8 79     mov   x,$79
1278: 3f 36 13  call  $1336
127b: da 77     movw  $77,ya
127d: 6f        ret

; vcmd e0 - disable echo
127e: da 71     movw  $71,ya
1280: da 73     movw  $73,ya
1282: a2 43     set5  $43
1284: 6f        ret

; vcmd e1 - set echo params
1285: 3f a7 12  call  $12a7
1288: 3f 6b 0f  call  $0f6b
128b: c4 49     mov   $49,a
128d: 3f 6b 0f  call  $0f6b
1290: 8d 08     mov   y,#$08
1292: cf        mul   ya
1293: 5d        mov   x,a
1294: 8d 0f     mov   y,#$0f
1296: f5 70 16  mov   a,$1670+x
1299: 3f bf 0b  call  $0bbf
129c: 3d        inc   x
129d: dd        mov   a,y
129e: 60        clrc
129f: 88 10     adc   a,#$10
12a1: fd        mov   y,a
12a2: 10 f2     bpl   $1296
12a4: f8 42     mov   x,$42
12a6: 6f        ret

12a7: c4 48     mov   $48,a
12a9: 8d 7d     mov   y,#$7d
12ab: cc f2 00  mov   $00f2,y
12ae: e5 f3 00  mov   a,$00f3
12b1: 64 48     cmp   a,$48
12b3: f0 2b     beq   $12e0
12b5: 28 0f     and   a,#$0f
12b7: 48 ff     eor   a,#$ff
12b9: f3 47 03  bbc7  $47,$12bf
12bc: 60        clrc
12bd: 84 47     adc   a,$47
12bf: c4 47     mov   $47,a
12c1: 8d 04     mov   y,#$04
12c3: f6 39 06  mov   a,$0639+y
12c6: c5 f2 00  mov   $00f2,a
12c9: e8 00     mov   a,#$00
12cb: c5 f3 00  mov   $00f3,a
12ce: fe f3     dbnz  y,$12c3
12d0: e4 43     mov   a,$43
12d2: 08 20     or    a,#$20
12d4: 8d 6c     mov   y,#$6c
12d6: 3f bf 0b  call  $0bbf
12d9: e4 48     mov   a,$48
12db: 8d 7d     mov   y,#$7d
12dd: 3f bf 0b  call  $0bbf
12e0: 1c        asl   a
12e1: 1c        asl   a
12e2: 1c        asl   a
12e3: 48 ff     eor   a,#$ff
12e5: 80        setc
12e6: 84 ff     adc   a,$ff
12e8: 8d 6d     mov   y,#$6d
12ea: 5f bf 0b  jmp   $0bbf

12ed: c4 60     mov   $60,a
12ef: 6f        ret

12f0: f4 ac     mov   a,$ac+x
12f2: d0 34     bne   $1328
12f4: e7 2f     mov   a,($2f+x)
12f6: 68 e3     cmp   a,#$e3
12f8: d0 2e     bne   $1328
12fa: 3f 6d 0f  call  $0f6d
12fd: 3f 6b 0f  call  $0f6b
; vcmd e3 - pitch slide
1300: d4 ad     mov   $ad+x,a
1302: 3f 6b 0f  call  $0f6b
1305: d4 ac     mov   $ac+x,a
1307: 3f 6b 0f  call  $0f6b
130a: 60        clrc
130b: 85 51 03  adc   a,$0351
130e: 95 41 03  adc   a,$0341+x
1311: 28 7f     and   a,#$7f
1313: d5 d0 02  mov   $02d0+x,a
1316: 80        setc
1317: b5 b1 02  sbc   a,$02b1+x
131a: fb ac     mov   y,$ac+x
131c: 6d        push  y
131d: ce        pop   x
131e: 3f 36 13  call  $1336
1321: d5 c0 02  mov   $02c0+x,a
1324: dd        mov   a,y
1325: d5 c1 02  mov   $02c1+x,a
1328: e8 00     mov   a,#$00
132a: 6f        ret

132b: f5 b1 02  mov   a,$02b1+x
132e: c4 05     mov   $05,a
1330: f5 b0 02  mov   a,$02b0+x
1333: c4 04     mov   $04,a
1335: 6f        ret

1336: ed        notc
1337: 6b 06     ror   $06
1339: 10 03     bpl   $133e
133b: 48 ff     eor   a,#$ff
133d: bc        inc   a
133e: 8d 00     mov   y,#$00
1340: 9e        div   ya,x
1341: 2d        push  a
1342: e8 00     mov   a,#$00
1344: 9e        div   ya,x
1345: ee        pop   y
1346: f8 42     mov   x,$42
1348: f3 06 06  bbc7  $06,$1351
134b: da 08     movw  $08,ya
134d: ba 02     movw  ya,$02
134f: 9a 08     subw  ya,$08
1351: 6f        ret

1352: f4 9c     mov   a,$9c+x
1354: f0 09     beq   $135f
1356: e8 50     mov   a,#$50
1358: 8d 02     mov   y,#$02
135a: 9b 9c     dec   $9c+x
135c: 3f 5a 14  call  $145a
135f: fb cd     mov   y,$cd+x
1361: f0 23     beq   $1386
1363: f5 40 03  mov   a,$0340+x
1366: de cc 1b  cbne  $cc+x,$1384
1369: 09 41 5f  or    ($5f),($41)
136c: f5 30 03  mov   a,$0330+x
136f: 10 07     bpl   $1378
1371: fc        inc   y
1372: d0 04     bne   $1378
1374: e8 80     mov   a,#$80
1376: 2f 04     bra   $137c
1378: 60        clrc
1379: 95 31 03  adc   a,$0331+x
137c: d5 30 03  mov   $0330+x,a
137f: 3f 4b 16  call  $164b
1382: 2f 07     bra   $138b
1384: bb cc     inc   $cc+x
1386: e8 ff     mov   a,#$ff
1388: 3f 56 16  call  $1656
138b: f4 9d     mov   a,$9d+x
138d: f0 09     beq   $1398
138f: e8 80     mov   a,#$80
1391: 8d 02     mov   y,#$02
1393: 9b 9d     dec   $9d+x
1395: 3f 5a 14  call  $145a
1398: e4 41     mov   a,$41
139a: 24 5f     and   a,$5f
139c: f0 6a     beq   $1408
139e: f5 81 02  mov   a,$0281+x
13a1: fd        mov   y,a
13a2: f5 80 02  mov   a,$0280+x
13a5: da 04     movw  $04,ya
13a7: 7d        mov   a,x
13a8: 9f        xcn   a
13a9: 5c        lsr   a
13aa: c4 06     mov   $06,a
13ac: e5 92 03  mov   a,$0392
13af: 68 02     cmp   a,#$02
13b1: d0 0c     bne   $13bf
13b3: f5 5e 04  mov   a,$045e+x
13b6: f0 07     beq   $13bf
13b8: f5 a1 02  mov   a,$02a1+x
13bb: 68 40     cmp   a,#$40
13bd: b0 4a     bcs   $1409
13bf: e5 92 03  mov   a,$0392
13c2: d0 00     bne   $13c4
13c4: eb 05     mov   y,$05
13c6: f6 45 14  mov   a,$1445+y
13c9: 80        setc
13ca: b6 44 14  sbc   a,$1444+y
13cd: eb 04     mov   y,$04
13cf: cf        mul   ya
13d0: dd        mov   a,y
13d1: eb 05     mov   y,$05
13d3: 2d        push  a
13d4: e5 92 03  mov   a,$0392
13d7: d0 05     bne   $13de
13d9: ae        pop   a
13da: e8 64     mov   a,#$64
13dc: 2f 05     bra   $13e3
13de: ae        pop   a
13df: 60        clrc
13e0: 96 44 14  adc   a,$1444+y
13e3: fd        mov   y,a
13e4: f5 71 02  mov   a,$0271+x
13e7: cf        mul   ya
13e8: f5 a1 02  mov   a,$02a1+x
13eb: 1c        asl   a
13ec: 13 06 01  bbc0  $06,$13f0
13ef: 1c        asl   a
13f0: dd        mov   a,y
13f1: 90 03     bcc   $13f6
13f3: 48 ff     eor   a,#$ff
13f5: bc        inc   a
13f6: eb 06     mov   y,$06
13f8: 3f b7 0b  call  $0bb7
13fb: 8d 14     mov   y,#$14
13fd: e8 00     mov   a,#$00
13ff: 9a 04     subw  ya,$04
1401: da 04     movw  $04,ya
1403: ab 06     inc   $06
1405: 33 06 b7  bbc1  $06,$13bf
1408: 6f        ret

1409: 10 13     bpl   $141e
140b: 3f 31 14  call  $1431
140e: f5 71 02  mov   a,$0271+x
1411: 5c        lsr   a
1412: eb 06     mov   y,$06
1414: 3f bf 0b  call  $0bbf
1417: fc        inc   y
1418: f5 5f 04  mov   a,$045f+x
141b: 5f bf 0b  jmp   $0bbf

141e: 3f 31 14  call  $1431
1421: f5 5f 04  mov   a,$045f+x
1424: eb 06     mov   y,$06
1426: 3f bf 0b  call  $0bbf
1429: fc        inc   y
142a: f5 71 02  mov   a,$0271+x
142d: 5c        lsr   a
142e: 5f bf 0b  jmp   $0bbf

1431: f5 5e 04  mov   a,$045e+x
1434: fd        mov   y,a
1435: f5 71 02  mov   a,$0271+x
1438: 5c        lsr   a
1439: 9f        xcn   a
143a: 28 0f     and   a,#$0f
143c: cf        mul   ya
143d: 48 ff     eor   a,#$ff
143f: bc        inc   a
1440: d5 5f 04  mov   $045f+x,a
1443: 6f        ret

1444: db $00,$01,$03,$07,$0d,$15,$1e,$29
144c: db $34,$42,$51,$5e,$67,$6e,$73,$77
1454: db $7a,$7c,$7d,$7e,$7f,$7f

145a: 09 41 5f  or    ($5f),($41)
145d: da 08     movw  $08,ya
145f: da 0a     movw  $0a,ya
1461: 4d        push  x
1462: ee        pop   y
1463: 60        clrc
1464: d0 0a     bne   $1470
1466: 98 1f 0a  adc   $0a,#$1f
1469: e8 00     mov   a,#$00
146b: d7 08     mov   ($08)+y,a
146d: fc        inc   y
146e: 2f 09     bra   $1479
1470: 98 10 0a  adc   $0a,#$10
1473: 3f 77 14  call  $1477
1476: fc        inc   y
1477: f7 08     mov   a,($08)+y
1479: 97 0a     adc   a,($0a)+y
147b: d7 08     mov   ($08)+y,a
147d: 6f        ret

147e: fc        inc   y
147f: f7 08     mov   a,($08)+y
1481: 2d        push  a
1482: fc        inc   y
1483: f7 08     mov   a,($08)+y
1485: c4 09     mov   $09,a
1487: ae        pop   a
1488: c4 08     mov   $08,a
148a: 8d 00     mov   y,#$00
148c: 2f 24     bra   $14b2
148e: 1e fa 03  cmp   x,$03fa
1491: b0 09     bcs   $149c
1493: e8 01     mov   a,#$01
1495: 74 7c     cmp   a,$7c+x
1497: f0 0c     beq   $14a5
1499: 5f 57 15  jmp   $1557

149c: e8 01     mov   a,#$01
149e: 74 7c     cmp   a,$7c+x
14a0: f0 03     beq   $14a5
14a2: 5f 57 15  jmp   $1557

14a5: e8 00     mov   a,#$00
14a7: c5 7e 03  mov   $037e,a
14aa: f4 2f     mov   a,$2f+x
14ac: fb 30     mov   y,$30+x
14ae: da 08     movw  $08,ya
14b0: 8d 00     mov   y,#$00
14b2: f7 08     mov   a,($08)+y
14b4: f0 1f     beq   $14d5
14b6: 30 07     bmi   $14bf
14b8: fc        inc   y
14b9: f7 08     mov   a,($08)+y
14bb: 10 fb     bpl   $14b8
14bd: f0 16     beq   $14d5
14bf: 68 c8     cmp   a,#$c8
14c1: d0 03     bne   $14c6
14c3: 5f 57 15  jmp   $1557

14c6: 68 ca     cmp   a,#$ca
14c8: 90 6d     bcc   $1537
14ca: fc        inc   y
14cb: 6d        push  y
14cc: fd        mov   y,a
14cd: ae        pop   a
14ce: 60        clrc
14cf: 96 66 0e  adc   a,$0e66+y
14d2: fd        mov   y,a
14d3: 2f dd     bra   $14b2
14d5: fc        inc   y
14d6: f7 08     mov   a,($08)+y
14d8: f0 06     beq   $14e0
14da: 68 01     cmp   a,#$01
14dc: f0 59     beq   $1537
14de: 2f 9e     bra   $147e
14e0: f4 20     mov   a,$20+x
14e2: 2d        push  a
14e3: f4 1f     mov   a,$1f+x
14e5: ee        pop   y
14e6: da 08     movw  $08,ya
14e8: ec 7e 03  mov   y,$037e
14eb: f7 08     mov   a,($08)+y
14ed: 2d        push  a
14ee: fc        inc   y
14ef: f7 08     mov   a,($08)+y
14f1: fc        inc   y
14f2: cc 7e 03  mov   $037e,y
14f5: fd        mov   y,a
14f6: ae        pop   a
14f7: da 08     movw  $08,ya
14f9: 8d 00     mov   y,#$00
14fb: e4 09     mov   a,$09
14fd: f0 38     beq   $1537
14ff: 68 ff     cmp   a,#$ff
1501: f0 06     beq   $1509
1503: 68 01     cmp   a,#$01
1505: f0 15     beq   $151c
1507: 2f a9     bra   $14b2
1509: 4d        push  x
150a: ee        pop   y
150b: f7 1d     mov   a,($1d)+y
150d: 2d        push  a
150e: fc        inc   y
150f: f7 1d     mov   a,($1d)+y
1511: fd        mov   y,a
1512: ae        pop   a
1513: da 08     movw  $08,ya
1515: 8d 00     mov   y,#$00
1517: cc 7e 03  mov   $037e,y
151a: 2f cf     bra   $14eb
151c: f4 20     mov   a,$20+x
151e: 2d        push  a
151f: f4 1f     mov   a,$1f+x
1521: ee        pop   y
1522: da 08     movw  $08,ya
1524: 8d 02     mov   y,#$02
1526: f7 08     mov   a,($08)+y
1528: 2d        push  a
1529: fc        inc   y
152a: f7 08     mov   a,($08)+y
152c: fd        mov   y,a
152d: ae        pop   a
152e: da 08     movw  $08,ya
1530: 8d 00     mov   y,#$00
1532: cc 7e 03  mov   $037e,y
1535: 2f b4     bra   $14eb
1537: 68 c9     cmp   a,#$c9
1539: d0 0b     bne   $1546
153b: f4 8c     mov   a,$8c+x
153d: 68 04     cmp   a,#$04
153f: f0 16     beq   $1557
1541: 3f 0b 17  call  $170b
1544: 2f 11     bra   $1557
1546: 1e fa 03  cmp   x,$03fa
1549: b0 07     bcs   $1552
154b: f5 00 02  mov   a,$0200+x
154e: 68 02     cmp   a,#$02
1550: 90 05     bcc   $1557
1552: e4 41     mov   a,$41
1554: 0e 40 00  tset1 $0040
1557: f2 07     clr7  $07
1559: f4 ac     mov   a,$ac+x
155b: f0 13     beq   $1570
155d: f4 ad     mov   a,$ad+x
155f: f0 04     beq   $1565
1561: 9b ad     dec   $ad+x
1563: 2f 0b     bra   $1570
1565: e2 07     set7  $07
1567: e8 b0     mov   a,#$b0
1569: 8d 02     mov   y,#$02
156b: 9b ac     dec   $ac+x
156d: 3f 5d 14  call  $145d
1570: 3f 2b 13  call  $132b
1573: f4 bd     mov   a,$bd+x
1575: f0 4a     beq   $15c1
1577: f5 10 03  mov   a,$0310+x
157a: de bc 42  cbne  $bc+x,$15bf
157d: f5 8d 00  mov   a,$008d+x
1580: 75 11 03  cmp   a,$0311+x
1583: d0 05     bne   $158a
1585: f5 21 03  mov   a,$0321+x
1588: 2f 0b     bra   $1595
158a: bb 8d     inc   $8d+x
158c: fd        mov   y,a
158d: f0 02     beq   $1591
158f: f4 bd     mov   a,$bd+x
1591: 60        clrc
1592: 95 20 03  adc   a,$0320+x
1595: d4 bd     mov   $bd+x,a
1597: f5 00 03  mov   a,$0300+x
159a: 60        clrc
159b: 95 01 03  adc   a,$0301+x
159e: d5 00 03  mov   $0300+x,a
15a1: c4 06     mov   $06,a
15a3: 1c        asl   a
15a4: 1c        asl   a
15a5: 90 02     bcc   $15a9
15a7: 48 ff     eor   a,#$ff
15a9: fd        mov   y,a
15aa: f4 bd     mov   a,$bd+x
15ac: 68 f1     cmp   a,#$f1
15ae: 90 05     bcc   $15b5
15b0: 28 0f     and   a,#$0f
15b2: cf        mul   ya
15b3: 2f 04     bra   $15b9
15b5: cf        mul   ya
15b6: dd        mov   a,y
15b7: 8d 00     mov   y,#$00
15b9: 3f 36 16  call  $1636
15bc: 5f 32 0b  jmp   $0b32

15bf: bb bc     inc   $bc+x
15c1: e3 07 f8  bbs7  $07,$15bc
15c4: 6f        ret

15c5: f2 07     clr7  $07
15c7: f4 cd     mov   a,$cd+x
15c9: f0 09     beq   $15d4
15cb: f5 40 03  mov   a,$0340+x
15ce: de cc 03  cbne  $cc+x,$15d4
15d1: 3f 3e 16  call  $163e
15d4: f5 81 02  mov   a,$0281+x
15d7: fd        mov   y,a
15d8: f5 80 02  mov   a,$0280+x
15db: da 04     movw  $04,ya
15dd: f4 9d     mov   a,$9d+x
15df: f0 0a     beq   $15eb
15e1: f5 91 02  mov   a,$0291+x
15e4: fd        mov   y,a
15e5: f5 90 02  mov   a,$0290+x
15e8: 3f 20 16  call  $1620
15eb: f3 07 03  bbc7  $07,$15f1
15ee: 3f a7 13  call  $13a7
15f1: f2 07     clr7  $07
15f3: 3f 2b 13  call  $132b
15f6: f4 ac     mov   a,$ac+x
15f8: f0 0e     beq   $1608
15fa: f4 ad     mov   a,$ad+x
15fc: d0 0a     bne   $1608
15fe: f5 c1 02  mov   a,$02c1+x
1601: fd        mov   y,a
1602: f5 c0 02  mov   a,$02c0+x
1605: 3f 20 16  call  $1620
1608: f4 bd     mov   a,$bd+x
160a: f0 b5     beq   $15c1
160c: f5 10 03  mov   a,$0310+x
160f: de bc af  cbne  $bc+x,$15c1
1612: eb 4a     mov   y,$4a
1614: f5 01 03  mov   a,$0301+x
1617: cf        mul   ya
1618: dd        mov   a,y
1619: 60        clrc
161a: 95 00 03  adc   a,$0300+x
161d: 5f a1 15  jmp   $15a1

1620: e2 07     set7  $07
1622: cb 06     mov   $06,y
1624: 3f 48 13  call  $1348
1627: 6d        push  y
1628: eb 4a     mov   y,$4a
162a: cf        mul   ya
162b: cb 08     mov   $08,y
162d: 8f 00 09  mov   $09,#$00
1630: eb 4a     mov   y,$4a
1632: ae        pop   a
1633: cf        mul   ya
1634: 7a 08     addw  ya,$08
1636: 3f 48 13  call  $1348
1639: 7a 04     addw  ya,$04
163b: da 04     movw  $04,ya
163d: 6f        ret

163e: e2 07     set7  $07
1640: eb 4a     mov   y,$4a
1642: f5 31 03  mov   a,$0331+x
1645: cf        mul   ya
1646: dd        mov   a,y
1647: 60        clrc
1648: 95 30 03  adc   a,$0330+x
164b: 1c        asl   a
164c: 90 02     bcc   $1650
164e: 48 ff     eor   a,#$ff
1650: fb cd     mov   y,$cd+x
1652: cf        mul   ya
1653: dd        mov   a,y
1654: 48 ff     eor   a,#$ff
1656: eb 5a     mov   y,$5a
1658: cf        mul   ya
1659: f5 10 02  mov   a,$0210+x
165c: cf        mul   ya
165d: f5 51 02  mov   a,$0251+x
1660: cf        mul   ya
1661: 1e fa 03  cmp   x,$03fa
1664: b0 03     bcs   $1669
1666: e4 12     mov   a,$12
1668: cf        mul   ya
1669: dd        mov   a,y
166a: cf        mul   ya
166b: dd        mov   a,y
166c: d5 71 02  mov   $0271+x,a
166f: 6f        ret

1670: db $7f,$00,$00,$00,$00,$00,$00,$00
1678: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1680: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1688: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

1690: f4 8c     mov   a,$8c+x
1692: f0 10     beq   $16a4
1694: 68 01     cmp   a,#$01
1696: f0 0d     beq   $16a5
1698: 68 02     cmp   a,#$02
169a: f0 27     beq   $16c3
169c: 68 04     cmp   a,#$04
169e: f0 33     beq   $16d3
16a0: 68 05     cmp   a,#$05
16a2: f0 52     beq   $16f6
16a4: 6f        ret

16a5: 3f 2e 17  call  $172e
16a8: 68 7f     cmp   a,#$7f
16aa: d0 f8     bne   $16a4
16ac: f5 d3 03  mov   a,$03d3+x
16af: 68 7f     cmp   a,#$7f
16b1: d0 05     bne   $16b8
16b3: bb 8c     inc   $8c+x
16b5: bb 8c     inc   $8c+x
16b7: 6f        ret

16b8: f5 c4 03  mov   a,$03c4+x
16bb: 08 a0     or    a,#$a0
16bd: 3f 21 17  call  $1721
16c0: bb 8c     inc   $8c+x
16c2: 6f        ret

16c3: 3f 2e 17  call  $172e
16c6: 75 d3 03  cmp   a,$03d3+x
16c9: b0 d9     bcs   $16a4
16cb: e8 80     mov   a,#$80
16cd: 3f 21 17  call  $1721
16d0: bb 8c     inc   $8c+x
16d2: 6f        ret

16d3: 3f 2e 17  call  $172e
16d6: 68 01     cmp   a,#$01
16d8: b0 ca     bcs   $16a4
16da: f5 d4 03  mov   a,$03d4+x
16dd: 28 e0     and   a,#$e0
16df: f0 10     beq   $16f1
16e1: 5c        lsr   a
16e2: 5c        lsr   a
16e3: 5c        lsr   a
16e4: 5c        lsr   a
16e5: d5 b4 03  mov   $03b4+x,a
16e8: e8 cb     mov   a,#$cb
16ea: 3f 21 17  call  $1721
16ed: bb 8c     inc   $8c+x
16ef: 2f 05     bra   $16f6
16f1: e8 06     mov   a,#$06
16f3: d4 8c     mov   $8c+x,a
16f5: 6f        ret

16f6: 3f 2e 17  call  $172e
16f9: 68 03     cmp   a,#$03
16fb: 90 a7     bcc   $16a4
16fd: e8 10     mov   a,#$10
16ff: 80        setc
1700: b5 b4 03  sbc   a,$03b4+x
1703: 08 a0     or    a,#$a0
1705: 3f 21 17  call  $1721
1708: bb 8c     inc   $8c+x
170a: 6f        ret

170b: f5 d4 03  mov   a,$03d4+x
170e: 28 1f     and   a,#$1f
1710: 08 a0     or    a,#$a0
1712: 3f 21 17  call  $1721
1715: bb 8c     inc   $8c+x
1717: 6f        ret

1718: e8 01     mov   a,#$01
171a: d4 8c     mov   $8c+x,a
171c: f5 c3 03  mov   a,$03c3+x
171f: 08 c0     or    a,#$c0
1721: 2d        push  a
1722: 7d        mov   a,x
1723: 9f        xcn   a
1724: 5c        lsr   a
1725: 08 07     or    a,#$07
1727: fd        mov   y,a
1728: ae        pop   a
1729: cb f2     mov   $f2,y
172b: c4 f3     mov   $f3,a
172d: 6f        ret

172e: 7d        mov   a,x
172f: 9f        xcn   a
1730: 5c        lsr   a
1731: 08 08     or    a,#$08
1733: fd        mov   y,a
1734: cb f2     mov   $f2,y
1736: e4 f3     mov   a,$f3
1738: 6f        ret

1739: cb 51     mov   $51,y
173b: f5 3e 04  mov   a,$043e+x
173e: fd        mov   y,a
173f: f5 3d 04  mov   a,$043d+x
1742: da 1b     movw  $1b,ya
1744: 8d 00     mov   y,#$00
1746: f7 1b     mov   a,($1b)+y
1748: c4 52     mov   $52,a
174a: fc        inc   y
174b: e8 00     mov   a,#$00
174d: c4 53     mov   $53,a
174f: fc        inc   y
1750: fc        inc   y
1751: f7 1b     mov   a,($1b)+y
1753: 64 51     cmp   a,$51
1755: f0 21     beq   $1778
1757: 90 02     bcc   $175b
1759: 2f 09     bra   $1764
175b: fc        inc   y
175c: f7 1b     mov   a,($1b)+y
175e: 64 51     cmp   a,$51
1760: b0 16     bcs   $1778
1762: f0 14     beq   $1778
1764: ab 53     inc   $53
1766: e4 53     mov   a,$53
1768: 1c        asl   a
1769: 1c        asl   a
176a: 1c        asl   a
176b: 1c        asl   a
176c: fd        mov   y,a
176d: fc        inc   y
176e: 64 52     cmp   a,$52
1770: d0 dd     bne   $174f
1772: e8 01     mov   a,#$01
1774: c5 f6 03  mov   $03f6,a
1777: 6f        ret

1778: e4 53     mov   a,$53
177a: 9f        xcn   a
177b: bc        inc   a
177c: fd        mov   y,a
177d: f7 1b     mov   a,($1b)+y
177f: c5 f8 03  mov   $03f8,a
1782: fc        inc   y
1783: f7 1b     mov   a,($1b)+y
1785: d5 b3 03  mov   $03b3+x,a
1788: fc        inc   y
1789: fc        inc   y
178a: fc        inc   y
178b: f7 1b     mov   a,($1b)+y
178d: 1c        asl   a
178e: 75 10 02  cmp   a,$0210+x
1791: 90 05     bcc   $1798
1793: 2f cf     bra   $1764
1795: fc        inc   y
1796: 2f 0b     bra   $17a3
1798: fc        inc   y
1799: f7 1b     mov   a,($1b)+y
179b: 1c        asl   a
179c: 75 10 02  cmp   a,$0210+x
179f: b0 02     bcs   $17a3
17a1: 2f c1     bra   $1764
17a3: e5 f8 03  mov   a,$03f8
17a6: 6d        push  y
17a7: 3f 47 10  call  $1047
17aa: ee        pop   y
17ab: fc        inc   y
17ac: f7 1b     mov   a,($1b)+y
17ae: d5 c3 03  mov   $03c3+x,a
17b1: fc        inc   y
17b2: f7 1b     mov   a,($1b)+y
17b4: d5 c4 03  mov   $03c4+x,a
17b7: fc        inc   y
17b8: f7 1b     mov   a,($1b)+y
17ba: d5 d3 03  mov   $03d3+x,a
17bd: fc        inc   y
17be: f7 1b     mov   a,($1b)+y
17c0: d5 d4 03  mov   $03d4+x,a
17c3: fc        inc   y
17c4: f7 1b     mov   a,($1b)+y
17c6: 68 ff     cmp   a,#$ff
17c8: d0 02     bne   $17cc
17ca: 2f 13     bra   $17df
17cc: 68 fe     cmp   a,#$fe
17ce: d0 03     bne   $17d3
17d0: fc        inc   y
17d1: 2f 40     bra   $1813
17d3: 68 fd     cmp   a,#$fd
17d5: d0 18     bne   $17ef
17d7: e4 51     mov   a,$51
17d9: 28 7f     and   a,#$7f
17db: 5c        lsr   a
17dc: 5c        lsr   a
17dd: 2f 10     bra   $17ef
17df: e4 0c     mov   a,$0c
17e1: 68 14     cmp   a,#$14
17e3: 90 05     bcc   $17ea
17e5: 80        setc
17e6: a8 14     sbc   a,#$14
17e8: 2f f7     bra   $17e1
17ea: 2d        push  a
17eb: 3f 2e 06  call  $062e
17ee: ae        pop   a
17ef: 3f fb 10  call  $10fb
17f2: fc        inc   y
17f3: f7 1b     mov   a,($1b)+y
17f5: f0 1c     beq   $1813
17f7: d4 9d     mov   $9d+x,a
17f9: 2d        push  a
17fa: fc        inc   y
17fb: f7 1b     mov   a,($1b)+y
17fd: d5 a0 02  mov   $02a0+x,a
1800: 80        setc
1801: b5 81 02  sbc   a,$0281+x
1804: ce        pop   x
1805: 6d        push  y
1806: 3f 36 13  call  $1336
1809: d5 90 02  mov   $0290+x,a
180c: dd        mov   a,y
180d: d5 91 02  mov   $0291+x,a
1810: ee        pop   y
1811: 2f 01     bra   $1814
1813: fc        inc   y
1814: fc        inc   y
1815: f7 1b     mov   a,($1b)+y
1817: 1c        asl   a
1818: 75 10 02  cmp   a,$0210+x
181b: 90 03     bcc   $1820
181d: d5 10 02  mov   $0210+x,a
1820: fc        inc   y
1821: f7 1b     mov   a,($1b)+y
1823: 1c        asl   a
1824: 75 10 02  cmp   a,$0210+x
1827: b0 03     bcs   $182c
1829: d5 10 02  mov   $0210+x,a
182c: fc        inc   y
182d: f7 1b     mov   a,($1b)+y
182f: c5 f9 03  mov   $03f9,a
1832: e8 00     mov   a,#$00
1834: c5 f6 03  mov   $03f6,a
1837: 6f        ret

1838: e5 52 03  mov   a,$0352
183b: f0 fa     beq   $1837
183d: e5 fa 03  mov   a,$03fa
1840: f0 0a     beq   $184c
1842: 68 10     cmp   a,#$10
1844: f0 f1     beq   $1837
1846: 80        setc
1847: a8 02     sbc   a,#$02
1849: c5 fa 03  mov   $03fa,a
184c: e5 52 03  mov   a,$0352
184f: c5 e3 03  mov   $03e3,a
1852: fd        mov   y,a
1853: f6 23 1a  mov   a,$1a23+y
1856: f0 1f     beq   $1877
1858: 68 01     cmp   a,#$01
185a: f0 35     beq   $1891
185c: 68 04     cmp   a,#$04
185e: d0 0a     bne   $186a
1860: e5 52 03  mov   a,$0352
1863: 08 80     or    a,#$80
1865: c5 e3 03  mov   $03e3,a
1868: 2f 0d     bra   $1877
186a: 68 03     cmp   a,#$03
186c: f0 23     beq   $1891
186e: e5 52 03  mov   a,$0352
1871: 60        clrc
1872: 88 80     adc   a,#$80
1874: c5 52 03  mov   $0352,a
1877: cd 0e     mov   x,#$0e
1879: c9 fc 03  mov   $03fc,x
187c: f5 56 03  mov   a,$0356+x
187f: 65 52 03  cmp   a,$0352
1882: d0 06     bne   $188a
1884: c9 fc 03  mov   $03fc,x
1887: 5f fd 18  jmp   $18fd

188a: 1d        dec   x
188b: 1d        dec   x
188c: 1e fa 03  cmp   x,$03fa
188f: d0 eb     bne   $187c
1891: cd 0e     mov   x,#$0e
1893: c9 fc 03  mov   $03fc,x
1896: e8 ff     mov   a,#$ff
1898: c5 fb 03  mov   $03fb,a
189b: f4 61     mov   a,$61+x
189d: d0 05     bne   $18a4
189f: c9 fc 03  mov   $03fc,x
18a2: 2f 59     bra   $18fd
18a4: f5 56 03  mov   a,$0356+x
18a7: 30 17     bmi   $18c0
18a9: f5 55 03  mov   a,$0355+x
18ac: 30 12     bmi   $18c0
18ae: f5 4e 04  mov   a,$044e+x
18b1: d0 0d     bne   $18c0
18b3: f4 7c     mov   a,$7c+x
18b5: 65 fb 03  cmp   a,$03fb
18b8: b0 06     bcs   $18c0
18ba: c5 fb 03  mov   $03fb,a
18bd: c9 fc 03  mov   $03fc,x
18c0: 1d        dec   x
18c1: 1d        dec   x
18c2: 1e fa 03  cmp   x,$03fa
18c5: d0 d4     bne   $189b
18c7: e5 fb 03  mov   a,$03fb
18ca: 10 31     bpl   $18fd
18cc: e5 58 04  mov   a,$0458
18cf: 05 5a 04  or    a,$045a
18d2: 05 5c 04  or    a,$045c
18d5: f0 26     beq   $18fd
18d7: cd 0e     mov   x,#$0e
18d9: e8 ff     mov   a,#$ff
18db: c5 fb 03  mov   $03fb,a
18de: f5 55 03  mov   a,$0355+x
18e1: 30 13     bmi   $18f6
18e3: f5 56 03  mov   a,$0356+x
18e6: 30 0e     bmi   $18f6
18e8: f5 4e 04  mov   a,$044e+x
18eb: 65 fb 03  cmp   a,$03fb
18ee: b0 06     bcs   $18f6
18f0: c5 fb 03  mov   $03fb,a
18f3: c9 fc 03  mov   $03fc,x
18f6: 1d        dec   x
18f7: 1d        dec   x
18f8: 1e fa 03  cmp   x,$03fa
18fb: d0 e1     bne   $18de
18fd: e5 e3 03  mov   a,$03e3
1900: fd        mov   y,a
1901: f6 56 1a  mov   a,$1a56+y
1904: d5 4e 04  mov   $044e+x,a
1907: f6 89 1a  mov   a,$1a89+y
190a: d5 71 04  mov   $0471+x,a
190d: f6 23 1a  mov   a,$1a23+y
1910: 68 03     cmp   a,#$03
1912: d0 08     bne   $191c
1914: e5 fb 03  mov   a,$03fb
1917: 68 50     cmp   a,#$50
1919: 90 01     bcc   $191c
191b: 6f        ret

191c: e9 fc 03  mov   x,$03fc
191f: e5 52 03  mov   a,$0352
1922: e5 e3 03  mov   a,$03e3
1925: d5 55 03  mov   $0355+x,a
1928: e5 52 03  mov   a,$0352
192b: 10 34     bpl   $1961
192d: c4 51     mov   $51,a
192f: 4d        push  x
1930: e9 7f 03  mov   x,$037f
1933: f0 22     beq   $1957
1935: e8 00     mov   a,#$00
1937: d4 61     mov   $61+x,a
1939: d5 55 03  mov   $0355+x,a
193c: d5 56 03  mov   $0356+x,a
193f: e8 01     mov   a,#$01
1941: 1c        asl   a
1942: 1d        dec   x
1943: 1d        dec   x
1944: d0 fb     bne   $1941
1946: c4 58     mov   $58,a
1948: 0e 40 00  tset1 $0040
194b: 8d 5c     mov   y,#$5c
194d: cb f2     mov   $f2,y
194f: e4 f3     mov   a,$f3
1951: 04 58     or    a,$58
1953: cb f2     mov   $f2,y
1955: c4 f3     mov   $f3,a
1957: ce        pop   x
1958: e4 51     mov   a,$51
195a: 28 7f     and   a,#$7f
195c: f0 54     beq   $19b2
195e: c9 7f 03  mov   $037f,x
1961: 1c        asl   a
1962: f0 4e     beq   $19b2
1964: fd        mov   y,a
1965: f6 bc 19  mov   a,$19bc+y
1968: d4 2f     mov   $2f+x,a
196a: f6 bd 19  mov   a,$19bd+y
196d: d4 30     mov   $30+x,a
196f: e8 01     mov   a,#$01
1971: d4 61     mov   $61+x,a
1973: e5 52 03  mov   a,$0352
1976: d5 56 03  mov   $0356+x,a
1979: 4d        push  x
197a: e8 01     mov   a,#$01
197c: 1c        asl   a
197d: 1d        dec   x
197e: 1d        dec   x
197f: d0 fb     bne   $197c
1981: c4 58     mov   $58,a
1983: 0e 40 00  tset1 $0040
1986: 8d 5c     mov   y,#$5c
1988: cb f2     mov   $f2,y
198a: e4 f3     mov   a,$f3
198c: 04 58     or    a,$58
198e: cb f2     mov   $f2,y
1990: c4 f3     mov   $f3,a
1992: ce        pop   x
1993: e8 00     mov   a,#$00
1995: d5 41 03  mov   $0341+x,a
1998: d5 11 02  mov   $0211+x,a
199b: d5 d1 02  mov   $02d1+x,a
199e: d5 e0 02  mov   $02e0+x,a
19a1: d4 bd     mov   $bd+x,a
19a3: d4 cd     mov   $cd+x,a
19a5: e8 00     mov   a,#$00
19a7: d4 9c     mov   $9c+x,a
19a9: d4 9d     mov   $9d+x,a
19ab: e8 02     mov   a,#$02
19ad: d5 00 02  mov   $0200+x,a
19b0: d4 7c     mov   $7c+x,a
19b2: e5 fa 03  mov   a,$03fa
19b5: f0 06     beq   $19bd
19b7: 60        clrc
19b8: 88 02     adc   a,#$02
19ba: c5 fa 03  mov   $03fa,a
19bd: 6f        ret

19be: dw $1abd
19c0: dw $1acb
19c2: dw $1adf
19c4: dw $1ae6
19c6: dw $1afa
19c8: dw $1b06
19ca: dw $1b1f
19cc: dw $1b3e
19ce: dw $1b53
19d0: dw $1b5a
19d2: dw $1b66
19d4: dw $1b6d
19d6: dw $1b79
19d8: dw $1b8b
19da: dw $1b9d
19dc: dw $1bb1
19de: dw $1bb8
19e0: dw $1bc4
19e2: dw $1bd0
19e4: dw $1bd7
19e6: dw $1bde
19e8: dw $1bed
19ea: dw $1bf9
19ec: dw $1c02
19ee: dw $1c0b
19f0: dw $1c12
19f2: dw $1c19
19f4: dw $1c20
19f6: dw $1c30
19f8: dw $1c37
19fa: dw $1c3e
19fc: dw $1c4a
19fe: dw $1c5c
1a00: dw $1c7d
1a02: dw $1c9e
1a04: dw $1cc1
1a06: dw $1cc8
1a08: dw $1ccf
1a0a: dw $1cda
1a0c: dw $1ce6
1a0e: dw $1d00
1a10: dw $1d28
1a12: dw $1d54
1a14: dw $1d5b
1a16: dw $1d62
1a18: dw $1d73
1a1a: dw $1d83
1a1c: dw $1d90
1a1e: dw $1da3
1a20: dw $1db3
1a22: dw $1dc3

1a23: 00 00 01 04 00 02 01 01 01 01 01 01 04 04 01 01 01 01 01 01 02 01 01 04 01 01 01 00 01 01 01 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 02 02 00

1a56: 00 03 03 01 80 01 01 28 10 10 01 01 01 80 80 01 01 01 01 01 01 01 01 01 80 01 01 01 04 08 04 02 02 80 80 80 08 08 08 01 01 18 18 80 80 02 02 01 80 80 04

1a89: 01 00 00 00 01 00 00 00 01 01 00 00 00 01 01 00 00 01 01 01 01 01 01 00 01 00 00 00 00 01 01 00 00 00 00 01 01 01 01 00 00 00 00 01 01 00 00 01 01 00 01 00
