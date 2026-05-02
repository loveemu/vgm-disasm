0479: 20        clrp
047a: cd 7f     mov   x,#$7f
047c: bd        mov   sp,x
047d: e8 00     mov   a,#$00		; clear registers
047f: cd 00     mov   x,#$00
0481: 8d 00     mov   y,#$00
0483: 3f 49 07  call  $0749		; clear RAM
0486: 3f 7a 07  call  $077a
0489: 3f b1 16  call  $16b1
048c: 3f 66 07  call  $0766
048f: 8f fe f4  mov   $f4,#$fe		; set communication ports
0492: 78 ff f6  cmp   $f6,#$ff
0495: d0 fb     bne   $0492
0497: 8f 00 f4  mov   $f4,#$00
049a: 8f 00 f5  mov   $f5,#$00
049d: 8f 00 f6  mov   $f6,#$00
04a0: 8f 00 f7  mov   $f7,#$00
04a3: 8f 03 f1  mov   $f1,#$03
04a6: 3f b9 16  call  $16b9
04a9: 90 43     bcc   $04ee
04ab: 5d        mov   x,a
04ac: 28 f0     and   a,#$f0
04ae: 68 10     cmp   a,#$10
04b0: f0 16     beq   $04c8
04b2: 68 20     cmp   a,#$20
04b4: f0 1a     beq   $04d0
04b6: 68 30     cmp   a,#$30
04b8: f0 1e     beq   $04d8
04ba: 68 ca     cmp   a,#$ca
04bc: b0 04     bcs   $04c2
04be: 68 40     cmp   a,#$40
04c0: b0 1b     bcs   $04dd
04c2: 68 f0     cmp   a,#$f0
04c4: f0 20     beq   $04e6
04c6: 2f 26     bra   $04ee
04c8: 7d        mov   a,x
04c9: 28 0f     and   a,#$0f
04cb: 3f d9 13  call  $13d9
04ce: 2f 1e     bra   $04ee
04d0: 7d        mov   a,x
04d1: 28 0f     and   a,#$0f
04d3: 3f ac 14  call  $14ac
04d6: 2f 16     bra   $04ee
04d8: 3f 24 15  call  $1524
04db: 2f 11     bra   $04ee
04dd: 7d        mov   a,x
04de: 80        setc
04df: a8 40     sbc   a,#$40
04e1: 3f 69 15  call  $1569
04e4: 2f 08     bra   $04ee
04e6: 7d        mov   a,x
04e7: 28 0f     and   a,#$0f
04e9: 3f f7 14  call  $14f7
04ec: 2f 00     bra   $04ee
04ee: e8 00     mov   a,#$00
04f0: f8 fd     mov   x,$fd
04f2: f0 02     beq   $04f6
04f4: 08 01     or    a,#$01
04f6: f8 fe     mov   x,$fe
04f8: f0 02     beq   $04fc
04fa: 08 02     or    a,#$02
04fc: 68 00     cmp   a,#$00
04fe: f0 a6     beq   $04a6
0500: c4 58     mov   $58,a
0502: e8 00     mov   a,#$00
0504: c4 33     mov   $33,a
0506: e4 58     mov   a,$58
0508: 28 01     and   a,#$01
050a: f0 04     beq   $0510
050c: e4 30     mov   a,$30
050e: c4 fa     mov   $fa,a
0510: e4 58     mov   a,$58
0512: 28 02     and   a,#$02
0514: f0 04     beq   $051a
0516: e4 31     mov   a,$31
0518: c4 fb     mov   $fb,a
051a: 3f a3 08  call  $08a3
051d: 3f 2f 09  call  $092f
0520: e8 00     mov   a,#$00
0522: c4 59     mov   $59,a
0524: c4 5a     mov   $5a,a
0526: f8 33     mov   x,$33
0528: f4 00     mov   a,$00+x
052a: f0 6a     beq   $0596
052c: 28 0f     and   a,#$0f
052e: 68 01     cmp   a,#$01
0530: d0 64     bne   $0596
0532: 7d        mov   a,x
0533: 1c        asl   a
0534: 5d        mov   x,a
0535: f5 5b 00  mov   a,$005b+x
0538: c4 40     mov   $40,a
053a: 3d        inc   x
053b: f5 5b 00  mov   a,$005b+x
053e: c4 41     mov   $41,a
0540: 8d 06     mov   y,#$06
0542: f7 40     mov   a,($40)+y
0544: bc        inc   a
0545: 24 58     and   a,$58
0547: f0 4d     beq   $0596
0549: 8d 04     mov   y,#$04
054b: f7 40     mov   a,($40)+y
054d: c4 44     mov   $44,a
054f: 8d 05     mov   y,#$05
0551: f7 40     mov   a,($40)+y
0553: c4 45     mov   $45,a
0555: 8d 00     mov   y,#$00
0557: f7 40     mov   a,($40)+y
0559: 68 00     cmp   a,#$00
055b: f0 17     beq   $0574
055d: 68 01     cmp   a,#$01
055f: d0 03     bne   $0564
0561: 3f 52 0e  call  $0e52
0564: 9c        dec   a
0565: d7 40     mov   ($40)+y,a
0567: e4 44     mov   a,$44
0569: 8d 04     mov   y,#$04
056b: d7 40     mov   ($40)+y,a
056d: e4 45     mov   a,$45
056f: fc        inc   y
0570: d7 40     mov   ($40)+y,a
0572: 2f 22     bra   $0596
0574: cd 00     mov   x,#$00
0576: e7 44     mov   a,($44+x)
0578: 3a 44     incw  $44
057a: 68 80     cmp   a,#$80		; check if next byte is a vcmd
057c: 10 05     bpl   $0583
057e: 3f 2f 0d  call  $0d2f
0581: 2f d2     bra   $0555
0583: 60        clrc			; dispatch current vcmd from table
0584: 28 7f     and   a,#$7f
0586: 1c        asl   a
0587: 5d        mov   x,a
0588: 3f 93 05  call  $0593
058b: f8 33     mov   x,$33
058d: f4 00     mov   a,$00+x
058f: f0 05     beq   $0596
0591: 2f c2     bra   $0555
0593: 1f 44 0a  jmp   ($0a44+x)

0596: ab 33     inc   $33
0598: 78 10 33  cmp   $33,#$10
059b: f0 03     beq   $05a0
059d: 5f 26 05  jmp   $0526

05a0: eb 59     mov   y,$59
05a2: e8 5c     mov   a,#$5c
05a4: 3f 85 06  call  $0685
05a7: e0        clrv
05a8: e8 00     mov   a,#$00
05aa: c4 33     mov   $33,a
05ac: f8 33     mov   x,$33
05ae: f4 00     mov   a,$00+x
05b0: f0 44     beq   $05f6
05b2: 28 0f     and   a,#$0f
05b4: 68 01     cmp   a,#$01
05b6: d0 3e     bne   $05f6
05b8: 7d        mov   a,x
05b9: 1c        asl   a
05ba: 5d        mov   x,a
05bb: f5 5b 00  mov   a,$005b+x
05be: c4 40     mov   $40,a
05c0: 3d        inc   x
05c1: f5 5b 00  mov   a,$005b+x
05c4: c4 41     mov   $41,a
05c6: 8d 06     mov   y,#$06
05c8: f7 40     mov   a,($40)+y
05ca: bc        inc   a
05cb: 24 58     and   a,$58
05cd: f0 27     beq   $05f6
05cf: 8d 24     mov   y,#$24
05d1: f7 40     mov   a,($40)+y
05d3: 28 30     and   a,#$30
05d5: f0 1f     beq   $05f6
05d7: 3f 8a 06  call  $068a
05da: 90 17     bcc   $05f3
05dc: 3f 79 06  call  $0679
05df: 8d 24     mov   y,#$24
05e1: f7 40     mov   a,($40)+y
05e3: 2d        push  a
05e4: 28 08     and   a,#$08
05e6: d0 0a     bne   $05f2
05e8: ae        pop   a
05e9: 28 10     and   a,#$10
05eb: d0 06     bne   $05f3
05ed: 3f c2 06  call  $06c2
05f0: 2f 01     bra   $05f3
05f2: ae        pop   a
05f3: 3f 97 0d  call  $0d97
05f6: ab 33     inc   $33
05f8: 78 10 33  cmp   $33,#$10
05fb: d0 af     bne   $05ac
05fd: e8 00     mov   a,#$00
05ff: c4 33     mov   $33,a
0601: f8 33     mov   x,$33
0603: f4 00     mov   a,$00+x
0605: f0 61     beq   $0668
0607: 28 0f     and   a,#$0f
0609: 68 01     cmp   a,#$01
060b: d0 5b     bne   $0668
060d: 7d        mov   a,x
060e: 1c        asl   a
060f: 5d        mov   x,a
0610: f5 5b 00  mov   a,$005b+x
0613: c4 40     mov   $40,a
0615: 3d        inc   x
0616: f5 5b 00  mov   a,$005b+x
0619: c4 41     mov   $41,a
061b: 8d 06     mov   y,#$06
061d: f7 40     mov   a,($40)+y
061f: bc        inc   a
0620: 24 58     and   a,$58
0622: f0 44     beq   $0668
0624: 3f 8a 06  call  $068a
0627: 90 3f     bcc   $0668
0629: e8 00     mov   a,#$00
062b: c4 38     mov   $38,a
062d: c4 39     mov   $39,a
062f: c4 3a     mov   $3a,a
0631: 3f 47 09  call  $0947
0634: 90 02     bcc   $0638
0636: ab 3a     inc   $3a
0638: 3f c1 09  call  $09c1
063b: 90 08     bcc   $0645
063d: 8d 17     mov   y,#$17
063f: f7 40     mov   a,($40)+y
0641: c4 38     mov   $38,a
0643: ab 3a     inc   $3a
0645: e4 3a     mov   a,$3a
0647: f0 1f     beq   $0668
0649: 3f 79 06  call  $0679
064c: 8d 0e     mov   y,#$0e
064e: f7 40     mov   a,($40)+y
0650: c4 36     mov   $36,a
0652: 8d 0f     mov   y,#$0f
0654: f7 40     mov   a,($40)+y
0656: c4 37     mov   $37,a
0658: 60        clrc
0659: e4 36     mov   a,$36
065b: 84 38     adc   a,$38
065d: c4 36     mov   $36,a
065f: e4 37     mov   a,$37
0661: 84 39     adc   a,$39
0663: c4 37     mov   $37,a
0665: 3f 3a 07  call  $073a
0668: ab 33     inc   $33
066a: 78 10 33  cmp   $33,#$10
066d: d0 92     bne   $0601
066f: eb 5a     mov   y,$5a
0671: e8 4c     mov   a,#$4c
0673: 3f 85 06  call  $0685
0676: 5f a6 04  jmp   $04a6

0679: e4 34     mov   a,$34
067b: 1c        asl   a
067c: 1c        asl   a
067d: 1c        asl   a
067e: 1c        asl   a
067f: c4 49     mov   $49,a
0681: 6f        ret

0682: 60        clrc
0683: 84 49     adc   a,$49
0685: c4 f2     mov   $f2,a
0687: cb f3     mov   $f3,y
0689: 6f        ret

068a: f8 33     mov   x,$33
068c: f4 10     mov   a,$10+x
068e: fb 20     mov   y,$20+x
0690: cd 00     mov   x,#$00
0692: 8f 10 3a  mov   $3a,#$10
0695: 8f 00 38  mov   $38,#$00
0698: 3e 33     cmp   x,$33
069a: f0 16     beq   $06b2
069c: 2d        push  a
069d: f4 00     mov   a,$00+x
069f: ae        pop   a
06a0: f0 10     beq   $06b2
06a2: 74 10     cmp   a,$10+x
06a4: d0 0c     bne   $06b2
06a6: c4 34     mov   $34,a
06a8: dd        mov   a,y
06a9: 74 20     cmp   a,$20+x
06ab: b0 03     bcs   $06b0
06ad: 8f 01 38  mov   $38,#$01
06b0: e4 34     mov   a,$34
06b2: 3d        inc   x
06b3: 6e 3a e2  dbnz  $3a,$0698
06b6: c4 34     mov   $34,a
06b8: e8 00     mov   a,#$00
06ba: 64 38     cmp   a,$38
06bc: f0 02     beq   $06c0
06be: 60        clrc
06bf: 6f        ret

06c0: 80        setc
06c1: 6f        ret

06c2: 8d 0e     mov   y,#$0e
06c4: f7 40     mov   a,($40)+y
06c6: c4 36     mov   $36,a
06c8: 8d 0f     mov   y,#$0f
06ca: f7 40     mov   a,($40)+y
06cc: c4 37     mov   $37,a
06ce: 3f 3a 07  call  $073a
06d1: 8d 21     mov   y,#$21
06d3: f7 40     mov   a,($40)+y
06d5: fd        mov   y,a
06d6: e8 05     mov   a,#$05
06d8: 3f 82 06  call  $0682
06db: 8d 22     mov   y,#$22
06dd: f7 40     mov   a,($40)+y
06df: fd        mov   y,a
06e0: e8 06     mov   a,#$06
06e2: 3f 82 06  call  $0682
06e5: 8d 23     mov   y,#$23
06e7: f7 40     mov   a,($40)+y
06e9: fd        mov   y,a
06ea: e8 07     mov   a,#$07
06ec: 3f 82 06  call  $0682
06ef: f8 33     mov   x,$33
06f1: f4 10     mov   a,$10+x
06f3: 3f a0 0d  call  $0da0
06f6: 8d 20     mov   y,#$20
06f8: f7 40     mov   a,($40)+y
06fa: fd        mov   y,a
06fb: e8 04     mov   a,#$04
06fd: 3f 82 06  call  $0682
0700: 8d 09     mov   y,#$09
0702: f7 40     mov   a,($40)+y
0704: c4 36     mov   $36,a
0706: 3f 0a 07  call  $070a
0709: 6f        ret

070a: 8d 27     mov   y,#$27
070c: f7 40     mov   a,($40)+y
070e: 28 0f     and   a,#$0f
0710: 1c        asl   a
0711: 1c        asl   a
0712: 1c        asl   a
0713: 1c        asl   a
0714: c4 38     mov   $38,a
0716: 8d 0a     mov   y,#$0a
0718: f7 40     mov   a,($40)+y
071a: c4 3a     mov   $3a,a
071c: eb 38     mov   y,$38
071e: cf        mul   ya
071f: e4 3a     mov   a,$3a
0721: cb 38     mov   $38,y
0723: 80        setc
0724: a4 38     sbc   a,$38
0726: c4 38     mov   $38,a
0728: fd        mov   y,a
0729: e8 00     mov   a,#$00
072b: 3f 82 06  call  $0682
072e: e4 3a     mov   a,$3a
0730: 80        setc
0731: a4 38     sbc   a,$38
0733: fd        mov   y,a
0734: e8 01     mov   a,#$01
0736: 3f 82 06  call  $0682
0739: 6f        ret

073a: eb 36     mov   y,$36
073c: e8 02     mov   a,#$02
073e: 3f 82 06  call  $0682
0741: eb 37     mov   y,$37
0743: e8 03     mov   a,#$03
0745: 3f 82 06  call  $0682
0748: 6f        ret

0749: e8 00     mov   a,#$00
074b: 5d        mov   x,a
074c: af        mov   (x)+,a
074d: c8 5b     cmp   x,#$5b
074f: d0 fb     bne   $074c
0751: e8 00     mov   a,#$00
0753: c5 20 04  mov   $0420,a
0756: c5 21 04  mov   $0421,a
0759: c5 22 04  mov   $0422,a
075c: c5 23 04  mov   $0423,a
075f: c5 24 04  mov   $0424,a
0762: c5 25 04  mov   $0425,a
0765: 6f        ret

0766: 8f 30 f1  mov   $f1,#$30
0769: e8 00     mov   a,#$00
076b: c4 f1     mov   $f1,a
076d: e8 00     mov   a,#$00
076f: c4 fa     mov   $fa,a
0771: c4 fb     mov   $fb,a
0773: c4 fc     mov   $fc,a
0775: e8 50     mov   a,#$50
0777: c4 30     mov   $30,a
0779: 6f        ret

077a: e8 6d     mov   a,#$6d
077c: 8d ff     mov   y,#$ff
077e: 3f 85 06  call  $0685
0781: e8 3d     mov   a,#$3d
0783: 8d 00     mov   y,#$00
0785: 3f 85 06  call  $0685
0788: e8 4d     mov   a,#$4d
078a: 8d 00     mov   y,#$00
078c: 3f 85 06  call  $0685
078f: e8 7d     mov   a,#$7d
0791: 8d 00     mov   y,#$00
0793: 3f 85 06  call  $0685
0796: e8 0d     mov   a,#$0d
0798: 8d 00     mov   y,#$00
079a: 3f 85 06  call  $0685
079d: e8 2d     mov   a,#$2d
079f: 8d 00     mov   y,#$00
07a1: 3f 85 06  call  $0685
07a4: e8 6c     mov   a,#$6c
07a6: 8d 20     mov   y,#$20
07a8: 3f 85 06  call  $0685
07ab: e8 0c     mov   a,#$0c
07ad: 8d 00     mov   y,#$00
07af: 3f 85 06  call  $0685
07b2: e8 1c     mov   a,#$1c
07b4: 8d 00     mov   y,#$00
07b6: 3f 85 06  call  $0685
07b9: e8 2c     mov   a,#$2c
07bb: 8d 00     mov   y,#$00
07bd: 3f 85 06  call  $0685
07c0: e8 3c     mov   a,#$3c
07c2: 8d 00     mov   y,#$00
07c4: 3f 85 06  call  $0685
07c7: e8 0f     mov   a,#$0f
07c9: 8d 7f     mov   y,#$7f
07cb: 3f 85 06  call  $0685
07ce: e8 1f     mov   a,#$1f
07d0: 8d 00     mov   y,#$00
07d2: 3f 85 06  call  $0685
07d5: e8 2f     mov   a,#$2f
07d7: 8d 00     mov   y,#$00
07d9: 3f 85 06  call  $0685
07dc: e8 3f     mov   a,#$3f
07de: 8d 00     mov   y,#$00
07e0: 3f 85 06  call  $0685
07e3: e8 4f     mov   a,#$4f
07e5: 8d 00     mov   y,#$00
07e7: 3f 85 06  call  $0685
07ea: e8 5f     mov   a,#$5f
07ec: 8d 00     mov   y,#$00
07ee: 3f 85 06  call  $0685
07f1: e8 6f     mov   a,#$6f
07f3: 8d 00     mov   y,#$00
07f5: 3f 85 06  call  $0685
07f8: e8 7f     mov   a,#$7f
07fa: 8d 00     mov   y,#$00
07fc: 3f 85 06  call  $0685
07ff: 3f 1e 08  call  $081e
0802: 00        nop
0803: 00        nop
0804: 00        nop
0805: 00        nop
0806: 00        nop
0807: 00        nop
0808: 00        nop
0809: 00        nop
080a: 00        nop
080b: 00        nop
080c: 3f 2e 08  call  $082e
080f: e8 0c     mov   a,#$0c
0811: 8d 60     mov   y,#$60
0813: 3f 85 06  call  $0685
0816: e8 1c     mov   a,#$1c
0818: 8d 60     mov   y,#$60
081a: 3f 85 06  call  $0685
081d: 6f        ret

081e: e8 5c     mov   a,#$5c
0820: 8d ff     mov   y,#$ff
0822: 3f 85 06  call  $0685
0825: 6f        ret

0826: e8 4c     mov   a,#$4c
0828: 8d ff     mov   y,#$ff
082a: 3f 85 06  call  $0685
082d: 6f        ret

082e: e8 00     mov   a,#$00
0830: 8d 00     mov   y,#$00
0832: e8 00     mov   a,#$00
0834: 8d 00     mov   y,#$00
0836: 3f 85 06  call  $0685
0839: e8 01     mov   a,#$01
083b: 8d 00     mov   y,#$00
083d: 3f 85 06  call  $0685
0840: e8 10     mov   a,#$10
0842: 8d 00     mov   y,#$00
0844: 3f 85 06  call  $0685
0847: e8 11     mov   a,#$11
0849: 8d 00     mov   y,#$00
084b: 3f 85 06  call  $0685
084e: e8 20     mov   a,#$20
0850: 8d 00     mov   y,#$00
0852: 3f 85 06  call  $0685
0855: e8 21     mov   a,#$21
0857: 8d 00     mov   y,#$00
0859: 3f 85 06  call  $0685
085c: e8 30     mov   a,#$30
085e: 8d 00     mov   y,#$00
0860: 3f 85 06  call  $0685
0863: e8 31     mov   a,#$31
0865: 8d 00     mov   y,#$00
0867: 3f 85 06  call  $0685
086a: e8 40     mov   a,#$40
086c: 8d 00     mov   y,#$00
086e: 3f 85 06  call  $0685
0871: e8 41     mov   a,#$41
0873: 8d 00     mov   y,#$00
0875: 3f 85 06  call  $0685
0878: e8 50     mov   a,#$50
087a: 8d 00     mov   y,#$00
087c: 3f 85 06  call  $0685
087f: e8 51     mov   a,#$51
0881: 8d 00     mov   y,#$00
0883: 3f 85 06  call  $0685
0886: e8 60     mov   a,#$60
0888: 8d 00     mov   y,#$00
088a: 3f 85 06  call  $0685
088d: e8 61     mov   a,#$61
088f: 8d 00     mov   y,#$00
0891: 3f 85 06  call  $0685
0894: e8 70     mov   a,#$70
0896: 8d 00     mov   y,#$00
0898: 3f 85 06  call  $0685
089b: e8 71     mov   a,#$71
089d: 8d 00     mov   y,#$00
089f: 3f 85 06  call  $0685
08a2: 6f        ret

08a3: e5 20 04  mov   a,$0420
08a6: f0 4d     beq   $08f5
08a8: e5 21 04  mov   a,$0421
08ab: d0 23     bne   $08d0
08ad: e5 20 04  mov   a,$0420
08b0: 5c        lsr   a
08b1: 90 05     bcc   $08b8
08b3: e8 00     mov   a,#$00
08b5: 3f ac 14  call  $14ac
08b8: 5c        lsr   a
08b9: 90 05     bcc   $08c0
08bb: e8 01     mov   a,#$01
08bd: 3f ac 14  call  $14ac
08c0: e8 00     mov   a,#$00
08c2: c5 20 04  mov   $0420,a
08c5: c5 21 04  mov   $0421,a
08c8: c5 22 04  mov   $0422,a
08cb: c5 23 04  mov   $0423,a
08ce: 2f 25     bra   $08f5
08d0: e5 26 04  mov   a,$0426
08d3: bc        inc   a
08d4: 28 0f     and   a,#$0f
08d6: c5 26 04  mov   $0426,a
08d9: d0 1a     bne   $08f5
08db: e5 21 04  mov   a,$0421
08de: 9c        dec   a
08df: c5 21 04  mov   $0421,a
08e2: 60        clrc
08e3: e5 24 04  mov   a,$0424
08e6: 85 22 04  adc   a,$0422
08e9: c5 24 04  mov   $0424,a
08ec: e5 25 04  mov   a,$0425
08ef: 85 23 04  adc   a,$0423
08f2: c5 25 04  mov   $0425,a
08f5: 6f        ret

08f6: cd 00     mov   x,#$00
08f8: 1e 20 04  cmp   x,$0420
08fb: f0 2e     beq   $092b
08fd: f8 33     mov   x,$33
08ff: c4 47     mov   $47,a
0901: f4 00     mov   a,$00+x
0903: 5c        lsr   a
0904: 5c        lsr   a
0905: 5c        lsr   a
0906: 5c        lsr   a
0907: c4 46     mov   $46,a
0909: 25 20 04  and   a,$0420
090c: f0 0c     beq   $091a
090e: e4 47     mov   a,$47
0910: 80        setc
0911: a5 25 04  sbc   a,$0425
0914: 10 15     bpl   $092b
0916: e8 00     mov   a,#$00
0918: 2f 11     bra   $092b
091a: e4 46     mov   a,$46
091c: 25 20 04  and   a,$0420
091f: f0 0b     beq   $092c
0921: e4 47     mov   a,$47
0923: 80        setc
0924: a5 25 04  sbc   a,$0425
0927: 10 02     bpl   $092b
0929: e8 00     mov   a,#$00
092b: 6f        ret

092c: e4 47     mov   a,$47
092e: 6f        ret

092f: e5 20 04  mov   a,$0420
0932: f0 12     beq   $0946
0934: e8 3c     mov   a,#$3c
0936: 3f f6 08  call  $08f6
0939: fd        mov   y,a
093a: e8 0c     mov   a,#$0c
093c: 6d        push  y
093d: 3f 85 06  call  $0685
0940: ee        pop   y
0941: e8 1c     mov   a,#$1c
0943: 3f 85 06  call  $0685
0946: 6f        ret

0947: 8d 24     mov   y,#$24
0949: f7 40     mov   a,($40)+y
094b: 28 04     and   a,#$04
094d: d0 02     bne   $0951
094f: 60        clrc
0950: 6f        ret

0951: 8d 13     mov   y,#$13
0953: f7 40     mov   a,($40)+y
0955: f0 68     beq   $09bf
0957: 8d 12     mov   y,#$12
0959: f7 40     mov   a,($40)+y
095b: f0 30     beq   $098d
095d: 9c        dec   a
095e: 8d 12     mov   y,#$12
0960: d7 40     mov   ($40)+y,a
0962: 8d 0e     mov   y,#$0e
0964: f7 40     mov   a,($40)+y
0966: c4 38     mov   $38,a
0968: 8d 0f     mov   y,#$0f
096a: f7 40     mov   a,($40)+y
096c: c4 39     mov   $39,a
096e: 8d 14     mov   y,#$14
0970: f7 40     mov   a,($40)+y
0972: c4 3a     mov   $3a,a
0974: 8d 15     mov   y,#$15
0976: f7 40     mov   a,($40)+y
0978: c4 3b     mov   $3b,a
097a: 60        clrc
097b: ba 38     movw  ya,$38
097d: 7a 3a     addw  ya,$3a
097f: da 38     movw  $38,ya
0981: 8d 0e     mov   y,#$0e
0983: d7 40     mov   ($40)+y,a
0985: e4 39     mov   a,$39
0987: 8d 0f     mov   y,#$0f
0989: d7 40     mov   ($40)+y,a
098b: 2f 32     bra   $09bf
098d: 8d 10     mov   y,#$10
098f: f7 40     mov   a,($40)+y
0991: c4 38     mov   $38,a
0993: 8d 11     mov   y,#$11
0995: f7 40     mov   a,($40)+y
0997: c4 39     mov   $39,a
0999: 8d 0e     mov   y,#$0e
099b: f7 40     mov   a,($40)+y
099d: c4 3a     mov   $3a,a
099f: 8d 0f     mov   y,#$0f
09a1: f7 40     mov   a,($40)+y
09a3: c4 3b     mov   $3b,a
09a5: e4 38     mov   a,$38
09a7: 64 3a     cmp   a,$3a
09a9: d0 08     bne   $09b3
09ab: e4 39     mov   a,$39
09ad: 64 3b     cmp   a,$3b
09af: d0 02     bne   $09b3
09b1: 60        clrc
09b2: 6f        ret

09b3: e4 38     mov   a,$38
09b5: 8d 0e     mov   y,#$0e
09b7: d7 40     mov   ($40)+y,a
09b9: e4 39     mov   a,$39
09bb: 8d 0f     mov   y,#$0f
09bd: d7 40     mov   ($40)+y,a
09bf: 80        setc
09c0: 6f        ret

09c1: 8d 24     mov   y,#$24
09c3: f7 40     mov   a,($40)+y
09c5: 28 02     and   a,#$02
09c7: d0 02     bne   $09cb
09c9: 60        clrc
09ca: 6f        ret

09cb: 8d 00     mov   y,#$00
09cd: 8d 1a     mov   y,#$1a
09cf: f7 40     mov   a,($40)+y
09d1: f0 6f     beq   $0a42
09d3: 8d 19     mov   y,#$19
09d5: f7 40     mov   a,($40)+y
09d7: f0 07     beq   $09e0
09d9: 9c        dec   a
09da: 8d 19     mov   y,#$19
09dc: d7 40     mov   ($40)+y,a
09de: 2f 62     bra   $0a42
09e0: 8d 17     mov   y,#$17
09e2: f7 40     mov   a,($40)+y
09e4: c4 36     mov   $36,a
09e6: 8d 1b     mov   y,#$1b
09e8: f7 40     mov   a,($40)+y
09ea: c4 38     mov   $38,a
09ec: e8 00     mov   a,#$00
09ee: c4 37     mov   $37,a
09f0: c4 39     mov   $39,a
09f2: 8d 1f     mov   y,#$1f
09f4: f7 40     mov   a,($40)+y
09f6: 68 00     cmp   a,#$00
09f8: d0 2b     bne   $0a25
09fa: 60        clrc
09fb: ba 36     movw  ya,$36
09fd: 7a 38     addw  ya,$38
09ff: da 36     movw  $36,ya
0a01: c4 37     mov   $37,a
0a03: 8d 1d     mov   y,#$1d
0a05: f7 40     mov   a,($40)+y
0a07: c4 38     mov   $38,a
0a09: e4 36     mov   a,$36
0a0b: 64 38     cmp   a,$38
0a0d: e4 37     mov   a,$37
0a0f: a4 39     sbc   a,$39
0a11: 90 10     bcc   $0a23
0a13: e8 01     mov   a,#$01
0a15: 8d 1f     mov   y,#$1f
0a17: d7 40     mov   ($40)+y,a
0a19: 8d 1d     mov   y,#$1d
0a1b: f7 40     mov   a,($40)+y
0a1d: c4 36     mov   $36,a
0a1f: e8 00     mov   a,#$00
0a21: c4 37     mov   $37,a
0a23: 2f 17     bra   $0a3c
0a25: 80        setc
0a26: ba 36     movw  ya,$36
0a28: 9a 38     subw  ya,$38
0a2a: da 36     movw  $36,ya
0a2c: e4 37     mov   a,$37
0a2e: 10 f3     bpl   $0a23
0a30: e8 00     mov   a,#$00
0a32: 8d 1f     mov   y,#$1f
0a34: d7 40     mov   ($40)+y,a
0a36: e8 00     mov   a,#$00
0a38: c4 36     mov   $36,a
0a3a: c4 37     mov   $37,a
0a3c: e4 36     mov   a,$36
0a3e: 8d 17     mov   y,#$17
0a40: d7 40     mov   ($40)+y,a
0a42: 80        setc
0a43: 6f        ret

; vcmd table (80-96)
0a44: dw $0a72		; 80 - set variables?
0a46: dw $0aae		; 81 - (2 bytes)
0a48: dw $0a89		; 82 - start of song loop
0a4a: dw $0aef		; 83 - (7 bytes)
0a4c: dw $0b44		; 84 - set tempo
0a4e: dw $0b56		; 85 - set instrument
0a50: dw $0b60		; 86 - (3 bytes)
0a52: dw $0b81		; 87 - (1 byte)
0a54: dw $0b8a		; 88 - set ASDR bit 7
0a56: dw $0b93		; 89 - clear ASDR bits
0a58: dw $0b9c		; 8a - set up vibrato parameters
0a5a: dw $0be6		; 8b - set ASDR bit 6
0a5c: dw $0bef		; 8c - set ASDR bits on
0a5e: dw $0bf8		; 8d - (2 bytes)
0a60: dw $0ca5		; 8e - nop
0a62: dw $0ca6		; 8f - set ASDR bit 5
0a64: dw $0caf		; 90 - clear ASDR bits
0a66: dw $0cb8		; 91 - restart channel
0a68: dw $0cd0		; 92 - repeat section
0a6a: dw $0d12		; 93 - set ASDR bit 4
0a6c: dw $0d1b		; 94 - set panning
0a6e: dw $0e4b		; 95 - stop channel
0a70: dw $0cc4		; 96 - start of song loop

0a72: cd 00     mov   x,#$00		; vcmd 80 - set variables?
0a74: e7 44     mov   a,($44+x)
0a76: 3a 44     incw  $44
0a78: c4 4b     mov   $4b,a
0a7a: c4 4d     mov   $4d,a
0a7c: e8 00     mov   a,#$00
0a7e: c4 4a     mov   $4a,a
0a80: c4 4c     mov   $4c,a
0a82: c4 4e     mov   $4e,a
0a84: c4 4f     mov   $4f,a
0a86: c4 50     mov   $50,a
0a88: 6f        ret

0a89: cd 00     mov   x,#$00		; vcmd 82 - start of song loop
0a8b: e7 44     mov   a,($44+x)
0a8d: 3a 44     incw  $44
0a8f: 8d 08     mov   y,#$08
0a91: d7 40     mov   ($40)+y,a
0a93: 8d 0a     mov   y,#$0a
0a95: d7 40     mov   ($40)+y,a
0a97: e8 00     mov   a,#$00
0a99: 8d 07     mov   y,#$07
0a9b: d7 40     mov   ($40)+y,a
0a9d: 8d 09     mov   y,#$09
0a9f: d7 40     mov   ($40)+y,a
0aa1: 8d 0b     mov   y,#$0b
0aa3: d7 40     mov   ($40)+y,a
0aa5: 8d 0c     mov   y,#$0c
0aa7: d7 40     mov   ($40)+y,a
0aa9: 8d 0d     mov   y,#$0d
0aab: d7 40     mov   ($40)+y,a
0aad: 6f        ret

0aae: cd 00     mov   x,#$00		; vcmd 81 - (2 bytes)
0ab0: e7 44     mov   a,($44+x)
0ab2: 3a 44     incw  $44
0ab4: c4 34     mov   $34,a
0ab6: e7 44     mov   a,($44+x)
0ab8: 3a 44     incw  $44
0aba: c4 36     mov   $36,a
0abc: e4 34     mov   a,$34
0abe: c4 4d     mov   $4d,a
0ac0: e4 36     mov   a,$36
0ac2: c4 4e     mov   $4e,a
0ac4: e8 00     mov   a,#$00
0ac6: c4 4c     mov   $4c,a
0ac8: e4 4a     mov   a,$4a
0aca: c4 34     mov   $34,a
0acc: e4 4b     mov   a,$4b
0ace: c4 35     mov   $35,a
0ad0: e4 4c     mov   a,$4c
0ad2: c4 36     mov   $36,a
0ad4: e4 4d     mov   a,$4d
0ad6: c4 37     mov   $37,a
0ad8: 3f 23 16  call  $1623
0adb: e4 4e     mov   a,$4e
0add: c4 37     mov   $37,a
0adf: e8 00     mov   a,#$00
0ae1: c4 36     mov   $36,a
0ae3: 3f 2a 16  call  $162a
0ae6: e4 34     mov   a,$34
0ae8: c4 4f     mov   $4f,a
0aea: e4 35     mov   a,$35
0aec: c4 50     mov   $50,a
0aee: 6f        ret

0aef: cd 00     mov   x,#$00		; vcmd 83 - (7 bytes)
0af1: e7 44     mov   a,($44+x)
0af3: 3a 44     incw  $44
0af5: c4 34     mov   $34,a
0af7: e7 44     mov   a,($44+x)
0af9: 3a 44     incw  $44
0afb: c4 36     mov   $36,a
0afd: e4 34     mov   a,$34
0aff: 8d 0a     mov   y,#$0a
0b01: d7 40     mov   ($40)+y,a
0b03: e4 36     mov   a,$36
0b05: 8d 0b     mov   y,#$0b
0b07: d7 40     mov   ($40)+y,a
0b09: e8 00     mov   a,#$00
0b0b: 8d 09     mov   y,#$09
0b0d: d7 40     mov   ($40)+y,a
0b0f: e7 44     mov   a,($44+x)
0b11: 3a 44     incw  $44
0b13: c4 34     mov   $34,a
0b15: e7 44     mov   a,($44+x)
0b17: 3a 44     incw  $44
0b19: c4 35     mov   $35,a
0b1b: e7 44     mov   a,($44+x)
0b1d: 3a 44     incw  $44
0b1f: c4 36     mov   $36,a
0b21: e7 44     mov   a,($44+x)
0b23: 3a 44     incw  $44
0b25: c4 37     mov   $37,a
0b27: 3f 23 16  call  $1623
0b2a: e7 44     mov   a,($44+x)
0b2c: 3a 44     incw  $44
0b2e: c4 37     mov   $37,a
0b30: e8 00     mov   a,#$00
0b32: c4 36     mov   $36,a
0b34: 3f 2a 16  call  $162a
0b37: e4 34     mov   a,$34
0b39: 8d 0c     mov   y,#$0c
0b3b: d7 40     mov   ($40)+y,a
0b3d: e4 35     mov   a,$35
0b3f: 8d 0d     mov   y,#$0d
0b41: d7 40     mov   ($40)+y,a
0b43: 6f        ret

0b44: cd 00     mov   x,#$00		; vcmd 84 - set tempo
0b46: e7 44     mov   a,($44+x)
0b48: 3a 44     incw  $44
0b4a: c4 34     mov   $34,a
0b4c: 8d 06     mov   y,#$06
0b4e: f7 40     mov   a,($40)+y
0b50: c4 36     mov   $36,a
0b52: 3f 44 0e  call  $0e44
0b55: 6f        ret

0b56: cd 00     mov   x,#$00		; vcmd 85 - set instrument
0b58: e7 44     mov   a,($44+x)
0b5a: 3a 44     incw  $44
0b5c: 3f 87 16  call  $1687
0b5f: 6f        ret

0b60: cd 00     mov   x,#$00		; vcmd 86 - (3 bytes)
0b62: e7 44     mov   a,($44+x)
0b64: 3a 44     incw  $44
0b66: c4 34     mov   $34,a
0b68: e7 44     mov   a,($44+x)
0b6a: 3a 44     incw  $44
0b6c: c4 36     mov   $36,a
0b6e: e7 44     mov   a,($44+x)
0b70: 3a 44     incw  $44
0b72: c4 38     mov   $38,a
0b74: e4 34     mov   a,$34
0b76: c4 54     mov   $54,a
0b78: e4 36     mov   a,$36
0b7a: c4 52     mov   $52,a
0b7c: e4 36     mov   a,$36
0b7e: c4 53     mov   $53,a
0b80: 6f        ret

0b81: cd 00     mov   x,#$00		; vcmd 87 - (1 byte)
0b83: e7 44     mov   a,($44+x)
0b85: 3a 44     incw  $44
0b87: c4 51     mov   $51,a
0b89: 6f        ret

0b8a: 8d 24     mov   y,#$24		; vcmd 88 - set ASDR bit 7
0b8c: f7 40     mov   a,($40)+y
0b8e: 08 01     or    a,#$01
0b90: d7 40     mov   ($40)+y,a
0b92: 6f        ret

0b93: 8d 24     mov   y,#$24		; vcmd 89 - clear ASDR bits
0b95: f7 40     mov   a,($40)+y
0b97: 28 fe     and   a,#$fe
0b99: d7 40     mov   ($40)+y,a
0b9b: 6f        ret

0b9c: cd 00     mov   x,#$00		; vcmd 8a - set up vibrato parameters
0b9e: e7 44     mov   a,($44+x)
0ba0: 3a 44     incw  $44
0ba2: 8d 19     mov   y,#$19
0ba4: d7 40     mov   ($40)+y,a
0ba6: 8d 1a     mov   y,#$1a
0ba8: d7 40     mov   ($40)+y,a
0baa: e7 44     mov   a,($44+x)
0bac: 3a 44     incw  $44
0bae: 2d        push  a
0baf: e7 44     mov   a,($44+x)
0bb1: 3a 44     incw  $44
0bb3: 8d 1d     mov   y,#$1d
0bb5: d7 40     mov   ($40)+y,a
0bb7: ce        pop   x
0bb8: 8d 00     mov   y,#$00
0bba: 9e        div   ya,x
0bbb: 8d 1b     mov   y,#$1b
0bbd: d7 40     mov   ($40)+y,a
0bbf: e8 00     mov   a,#$00
0bc1: 8d 17     mov   y,#$17
0bc3: d7 40     mov   ($40)+y,a
0bc5: 8d 1f     mov   y,#$1f
0bc7: d7 40     mov   ($40)+y,a
0bc9: 6f        ret

0bca: 8d 24     mov   y,#$24
0bcc: f7 40     mov   a,($40)+y
0bce: 28 02     and   a,#$02
0bd0: d0 01     bne   $0bd3
0bd2: 6f        ret

0bd3: 8d 1a     mov   y,#$1a
0bd5: f7 40     mov   a,($40)+y
0bd7: 8d 19     mov   y,#$19
0bd9: d7 40     mov   ($40)+y,a
0bdb: e8 00     mov   a,#$00
0bdd: 8d 17     mov   y,#$17
0bdf: d7 40     mov   ($40)+y,a
0be1: 8d 1f     mov   y,#$1f
0be3: d7 40     mov   ($40)+y,a
0be5: 6f        ret

0be6: 8d 24     mov   y,#$24		; vcmd 8b - set ASDR bit 6
0be8: f7 40     mov   a,($40)+y
0bea: 08 02     or    a,#$02
0bec: d7 40     mov   ($40)+y,a
0bee: 6f        ret

0bef: 8d 24     mov   y,#$24		; vcmd 8c - set ASDR bits on
0bf1: f7 40     mov   a,($40)+y
0bf3: 28 fb     and   a,#$fb
0bf5: d7 40     mov   ($40)+y,a
0bf7: 6f        ret

0bf8: cd 00     mov   x,#$00		; vcmd 8d - (2 bytes)
0bfa: e7 44     mov   a,($44+x)
0bfc: 3a 44     incw  $44
0bfe: 8d 12     mov   y,#$12
0c00: d7 40     mov   ($40)+y,a
0c02: 8d 13     mov   y,#$13
0c04: d7 40     mov   ($40)+y,a
0c06: e7 44     mov   a,($44+x)
0c08: 3a 44     incw  $44
0c0a: 8d 16     mov   y,#$16
0c0c: d7 40     mov   ($40)+y,a
0c0e: 6f        ret

0c0f: 2d        push  a
0c10: 8d 24     mov   y,#$24
0c12: f7 40     mov   a,($40)+y
0c14: 28 04     and   a,#$04
0c16: ae        pop   a
0c17: d0 01     bne   $0c1a
0c19: 6f        ret

0c1a: c4 36     mov   $36,a
0c1c: 8d 16     mov   y,#$16
0c1e: f7 40     mov   a,($40)+y
0c20: 60        clrc
0c21: 84 36     adc   a,$36
0c23: 10 02     bpl   $0c27
0c25: e8 01     mov   a,#$01
0c27: 68 55     cmp   a,#$55
0c29: 90 02     bcc   $0c2d
0c2b: e8 55     mov   a,#$55
0c2d: 9c        dec   a
0c2e: c4 37     mov   $37,a
0c30: e8 00     mov   a,#$00
0c32: c4 36     mov   $36,a
0c34: 8d 28     mov   y,#$28
0c36: f7 40     mov   a,($40)+y
0c38: c4 38     mov   $38,a
0c3a: 8d 29     mov   y,#$29
0c3c: f7 40     mov   a,($40)+y
0c3e: c4 39     mov   $39,a
0c40: 3f ba 0d  call  $0dba
0c43: e4 3a     mov   a,$3a
0c45: 8d 10     mov   y,#$10
0c47: d7 40     mov   ($40)+y,a
0c49: e4 3b     mov   a,$3b
0c4b: 8d 11     mov   y,#$11
0c4d: d7 40     mov   ($40)+y,a
0c4f: 8d 0e     mov   y,#$0e
0c51: f7 40     mov   a,($40)+y
0c53: c4 38     mov   $38,a
0c55: 8d 0f     mov   y,#$0f
0c57: f7 40     mov   a,($40)+y
0c59: c4 39     mov   $39,a
0c5b: e4 3b     mov   a,$3b
0c5d: 64 39     cmp   a,$39
0c5f: b0 13     bcs   $0c74
0c61: 80        setc
0c62: e4 38     mov   a,$38
0c64: a4 3a     sbc   a,$3a
0c66: c4 38     mov   $38,a
0c68: e4 39     mov   a,$39
0c6a: a4 3b     sbc   a,$3b
0c6c: c4 39     mov   $39,a
0c6e: e8 ff     mov   a,#$ff
0c70: c4 3b     mov   $3b,a
0c72: 2f 11     bra   $0c85
0c74: 80        setc
0c75: e4 3a     mov   a,$3a
0c77: a4 38     sbc   a,$38
0c79: c4 38     mov   $38,a
0c7b: e4 3b     mov   a,$3b
0c7d: a4 39     sbc   a,$39
0c7f: c4 39     mov   $39,a
0c81: e8 00     mov   a,#$00
0c83: c4 3b     mov   $3b,a
0c85: 8d 13     mov   y,#$13
0c87: f7 40     mov   a,($40)+y
0c89: 8d 12     mov   y,#$12
0c8b: d7 40     mov   ($40)+y,a
0c8d: 5d        mov   x,a
0c8e: e4 38     mov   a,$38
0c90: eb 39     mov   y,$39
0c92: 9e        div   ya,x
0c93: f8 3b     mov   x,$3b
0c95: 10 03     bpl   $0c9a
0c97: 48 ff     eor   a,#$ff
0c99: bc        inc   a
0c9a: 8d 14     mov   y,#$14
0c9c: d7 40     mov   ($40)+y,a
0c9e: e4 3b     mov   a,$3b
0ca0: 8d 15     mov   y,#$15
0ca2: d7 40     mov   ($40)+y,a
0ca4: 6f        ret

0ca5: 6f        ret			; vcmd 8e - nop

0ca6: 8d 24     mov   y,#$24		; vcmd 8f - set ASDR bit 5
0ca8: f7 40     mov   a,($40)+y
0caa: 08 04     or    a,#$04
0cac: d7 40     mov   ($40)+y,a
0cae: 6f        ret

0caf: 8d 24     mov   y,#$24		; vcmd 90 - clear ASDR bits
0cb1: f7 40     mov   a,($40)+y
0cb3: 28 fb     and   a,#$fb
0cb5: d7 40     mov   ($40)+y,a
0cb7: 6f        ret

0cb8: 8d 02     mov   y,#$02		; vcmd 91 - restart channel
0cba: f7 40     mov   a,($40)+y
0cbc: c4 44     mov   $44,a
0cbe: fc        inc   y
0cbf: f7 40     mov   a,($40)+y
0cc1: c4 45     mov   $45,a
0cc3: 6f        ret

0cc4: 8d 02     mov   y,#$02		; vcmd 96 - start of song loop
0cc6: e4 44     mov   a,$44
0cc8: d7 40     mov   ($40)+y,a
0cca: fc        inc   y
0ccb: e4 45     mov   a,$45
0ccd: d7 40     mov   ($40)+y,a
0ccf: 6f        ret

0cd0: cd 00     mov   x,#$00		; vcmd 92 - repeat section
0cd2: e7 44     mov   a,($44+x)
0cd4: 3a 44     incw  $44
0cd6: fd        mov   y,a
0cd7: 68 ff     cmp   a,#$ff
0cd9: f0 1a     beq   $0cf5
0cdb: e7 44     mov   a,($44+x)
0cdd: 68 ff     cmp   a,#$ff
0cdf: f0 06     beq   $0ce7
0ce1: 68 00     cmp   a,#$00
0ce3: f0 05     beq   $0cea
0ce5: 2f 12     bra   $0cf9
0ce7: dd        mov   a,y
0ce8: 2f 0f     bra   $0cf9
0cea: e8 ff     mov   a,#$ff
0cec: c7 44     mov   ($44+x),a
0cee: 3a 44     incw  $44
0cf0: 3a 44     incw  $44
0cf2: 3a 44     incw  $44
0cf4: 6f        ret

0cf5: 3a 44     incw  $44
0cf7: 2f 05     bra   $0cfe
0cf9: 9c        dec   a
0cfa: c7 44     mov   ($44+x),a
0cfc: 3a 44     incw  $44
0cfe: e7 44     mov   a,($44+x)
0d00: 3a 44     incw  $44
0d02: c4 34     mov   $34,a
0d04: e7 44     mov   a,($44+x)
0d06: 3a 44     incw  $44
0d08: c4 35     mov   $35,a
0d0a: ba 44     movw  ya,$44
0d0c: 9a 34     subw  ya,$34
0d0e: e0        clrv
0d0f: da 44     movw  $44,ya
0d11: 6f        ret

0d12: 8d 24     mov   y,#$24		; vcmd 93 - set ASDR bit 4
0d14: f7 40     mov   a,($40)+y
0d16: 08 08     or    a,#$08
0d18: d7 40     mov   ($40)+y,a
0d1a: 6f        ret

0d1b: cd 00     mov   x,#$00		; vcmd 94 - set panning
0d1d: e7 44     mov   a,($44+x)
0d1f: 3a 44     incw  $44
0d21: 8d 27     mov   y,#$27
0d23: d7 40     mov   ($40)+y,a
0d25: 6f        ret

0d26: 8d 24     mov   y,#$24
0d28: f7 40     mov   a,($40)+y
0d2a: 28 f7     and   a,#$f7
0d2c: d7 40     mov   ($40)+y,a
0d2e: 6f        ret

0d2f: cd 00     mov   x,#$00
0d31: 2d        push  a
0d32: 8d 25     mov   y,#$25
0d34: f7 40     mov   a,($40)+y
0d36: 8d 26     mov   y,#$26
0d38: d7 40     mov   ($40)+y,a
0d3a: e7 44     mov   a,($44+x)
0d3c: 3a 44     incw  $44
0d3e: 8d 00     mov   y,#$00
0d40: d7 40     mov   ($40)+y,a
0d42: ae        pop   a
0d43: 8d 25     mov   y,#$25
0d45: d7 40     mov   ($40)+y,a
0d47: 9c        dec   a
0d48: 30 36     bmi   $0d80
0d4a: c4 37     mov   $37,a
0d4c: e8 00     mov   a,#$00
0d4e: c4 36     mov   $36,a
0d50: 8d 28     mov   y,#$28
0d52: f7 40     mov   a,($40)+y
0d54: c4 38     mov   $38,a
0d56: 8d 29     mov   y,#$29
0d58: f7 40     mov   a,($40)+y
0d5a: c4 39     mov   $39,a
0d5c: 3f ba 0d  call  $0dba
0d5f: e4 3a     mov   a,$3a
0d61: 8d 0e     mov   y,#$0e
0d63: d7 40     mov   ($40)+y,a
0d65: e4 3b     mov   a,$3b
0d67: 8d 0f     mov   y,#$0f
0d69: d7 40     mov   ($40)+y,a
0d6b: 8d 24     mov   y,#$24
0d6d: f7 40     mov   a,($40)+y
0d6f: 28 0f     and   a,#$0f
0d71: 08 20     or    a,#$20
0d73: d7 40     mov   ($40)+y,a
0d75: 8d 25     mov   y,#$25
0d77: f7 40     mov   a,($40)+y
0d79: 3f 0f 0c  call  $0c0f
0d7c: 3f ca 0b  call  $0bca
0d7f: 6f        ret

0d80: e8 00     mov   a,#$00
0d82: 8d 0e     mov   y,#$0e
0d84: d7 40     mov   ($40)+y,a
0d86: 8d 0f     mov   y,#$0f
0d88: d7 40     mov   ($40)+y,a
0d8a: 8d 24     mov   y,#$24
0d8c: f7 40     mov   a,($40)+y
0d8e: 28 0f     and   a,#$0f
0d90: 08 10     or    a,#$10
0d92: d7 40     mov   ($40)+y,a
0d94: 5f 75 0d  jmp   $0d75

0d97: 8d 24     mov   y,#$24
0d99: f7 40     mov   a,($40)+y
0d9b: 28 c7     and   a,#$c7
0d9d: d7 40     mov   ($40)+y,a
0d9f: 6f        ret

0da0: 5d        mov   x,a
0da1: f5 b2 0d  mov   a,$0db2+x
0da4: 04 5a     or    a,$5a
0da6: c4 5a     mov   $5a,a
0da8: 6f        ret

0da9: 5d        mov   x,a
0daa: f5 b2 0d  mov   a,$0db2+x
0dad: 04 59     or    a,$59
0daf: c4 59     mov   $59,a
0db1: 6f        ret

0db2: db $01,$02,$04,$08,$10,$20,$40,$80

0dba: 8d 00     mov   y,#$00
0dbc: e4 37     mov   a,$37
0dbe: 80        setc
0dbf: a8 34     sbc   a,#$34
0dc1: b0 09     bcs   $0dcc
0dc3: e4 37     mov   a,$37
0dc5: 80        setc
0dc6: a8 13     sbc   a,#$13
0dc8: b0 06     bcs   $0dd0
0dca: dc        dec   y
0dcb: 1c        asl   a
0dcc: 7a 36     addw  ya,$36
0dce: da 36     movw  $36,ya
0dd0: e4 37     mov   a,$37
0dd2: 1c        asl   a
0dd3: 8d 00     mov   y,#$00
0dd5: cd 18     mov   x,#$18
0dd7: 9e        div   ya,x
0dd8: 5d        mov   x,a
0dd9: f6 2b 0e  mov   a,$0e2b+y
0ddc: c4 3b     mov   $3b,a
0dde: f6 2a 0e  mov   a,$0e2a+y
0de1: c4 3a     mov   $3a,a
0de3: f6 2d 0e  mov   a,$0e2d+y
0de6: 2d        push  a
0de7: f6 2c 0e  mov   a,$0e2c+y
0dea: ee        pop   y
0deb: 9a 3a     subw  ya,$3a
0ded: eb 36     mov   y,$36
0def: cf        mul   ya
0df0: dd        mov   a,y
0df1: 8d 00     mov   y,#$00
0df3: 7a 3a     addw  ya,$3a
0df5: cb 3b     mov   $3b,y
0df7: 1c        asl   a
0df8: 2b 3b     rol   $3b
0dfa: c4 3a     mov   $3a,a
0dfc: 2f 04     bra   $0e02
0dfe: 4b 3b     lsr   $3b
0e00: 7c        ror   a
0e01: 3d        inc   x
0e02: c8 06     cmp   x,#$06
0e04: d0 f8     bne   $0dfe
0e06: c4 3a     mov   $3a,a
0e08: e4 38     mov   a,$38
0e0a: eb 3b     mov   y,$3b
0e0c: cf        mul   ya
0e0d: da 3c     movw  $3c,ya
0e0f: e4 38     mov   a,$38
0e11: eb 3a     mov   y,$3a
0e13: cf        mul   ya
0e14: 6d        push  y
0e15: e4 39     mov   a,$39
0e17: eb 3a     mov   y,$3a
0e19: cf        mul   ya
0e1a: 7a 3c     addw  ya,$3c
0e1c: da 3c     movw  $3c,ya
0e1e: e4 39     mov   a,$39
0e20: eb 3b     mov   y,$3b
0e22: cf        mul   ya
0e23: fd        mov   y,a
0e24: ae        pop   a
0e25: 7a 3c     addw  ya,$3c
0e27: da 3a     movw  $3a,ya
0e29: 6f        ret

0e2a: dw $085f
0e2c: dw $08de
0e2e: dw $0965
0e30: dw $09f4
0e32: dw $0a8c
0e34: dw $0b2c
0e36: dw $0bd6
0e38: dw $0c8b
0e3a: dw $0d4a
0e3c: dw $0e14
0e3e: dw $0eea
0e40: dw $0fcd
0e42: dw $10be

0e44: e4 34     mov   a,$34
0e46: f8 36     mov   x,$36
0e48: d4 30     mov   $30+x,a
0e4a: 6f        ret

0e4b: eb 33     mov   y,$33		; vcmd 95 - stop channel
0e4d: cd 00     mov   x,#$00
0e4f: d9 00     mov   $00+y,x
0e51: 6f        ret

0e52: db $2d,$4d,$6d,$3f,$8a,$06,$90,$0f,$cd,$00,$e7,$44,$68,$93,$f0,$07,$f8,$33,$f4,$10,$3f,$a9,$0d,$ee,$ce,$ae,$6f,$14,$3c,$0f,$14,$4b,$0f,$14,$5a,$0f,$18,$69,$0f,$18,$78,$0f,$18,$87,$0f,$18,$96,$0f,$18,$a9,$0f,$18,$bc,$0f,$18,$cf,$0f,$18,$e2,$0f,$18,$f7,$0f,$15,$0e,$10,$18,$1d,$10,$1c,$30,$10,$1c,$3f,$10,$1c,$4e,$10,$16,$6c,$10,$16,$7f,$10,$16,$92,$10,$16,$a5,$10,$16,$b8,$10,$16,$cb,$10,$16,$de,$10,$16,$f1,$10,$16,$04,$11,$16,$17,$11,$16,$26,$11,$16,$35,$11,$16,$44,$11,$16,$53,$11,$16,$62,$11,$16,$71,$11,$16,$80,$11,$16,$8f,$11,$16,$9e,$11,$16,$ad,$11,$16,$bc,$11,$16,$cb,$11,$16,$da,$11,$16,$e9,$11,$16,$f8,$11,$16,$07,$12,$16,$16,$12,$16,$25,$12,$16,$34,$12,$16,$43,$12,$16,$52,$12,$16,$61,$12,$16,$70,$12,$16,$81,$12,$16,$90,$12,$16,$9f,$12,$16,$ae,$12,$16,$bd,$12,$16,$cc,$12,$16,$db,$12,$16,$ea,$12,$16,$f9,$12,$16,$08,$13,$16,$17,$13,$16,$26,$13,$16,$35,$13,$16,$44,$13,$16,$53,$13,$1e,$62,$13,$1e,$7d,$13,$1e,$b2,$13,$1e,$c1,$13,$00,$01,$84,$4c,$85,$01,$94,$08,$82,$4d,$25,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$01,$94,$08,$82,$4d,$2a,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$01,$94,$08,$82,$4d,$30,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$00,$94,$08,$82,$7f,$20,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$00,$94,$08,$82,$7f,$24,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$00,$94,$08,$82,$7f,$2c,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$0e,$94,$08,$82,$7f,$2c,$08,$85,$0d,$2c,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$0e,$94,$08,$82,$7f,$29,$08,$85,$0d,$29,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$0e,$94,$08,$82,$7f,$25,$08,$85,$0d,$25,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$0e,$94,$08,$82,$7f,$25,$06,$85,$0d,$22,$0c,$00,$02,$95,$00,$01,$84,$4c,$85,$0e,$94,$08,$82,$7f,$25,$06,$22,$06,$85,$0d,$20,$0c,$00,$02,$95,$00,$01,$84,$4c,$85,$0e,$94,$08,$82,$7f,$25,$06,$24,$06,$22,$06,$85,$0d,$25,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$0e,$94,$08,$82,$7f,$29,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$0e,$94,$08,$82,$7f,$1d,$06,$85,$0d,$1d,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$0b,$94,$08,$82,$7f,$29,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$0b,$94,$08,$82,$7f,$25,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$0b,$94,$08,$82,$7f,$22,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$0b,$94,$08,$82,$7f,$20,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$0f,$94,$08,$82,$7f,$25,$72,$85,$11,$25,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$0f,$94,$08,$82,$7f,$24,$76,$85,$11,$24,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$0f,$94,$08,$82,$7f,$23,$82,$85,$11,$23,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$10,$94,$08,$82,$7f,$25,$5a,$85,$11,$25,$15,$00,$02,$95,$00,$01,$84,$4c,$85,$10,$94,$08,$82,$7f,$24,$60,$85,$11,$24,$15,$00,$02,$95,$00,$01,$84,$4c,$85,$10,$94,$08,$82,$7f,$23,$65,$85,$11,$23,$15,$00,$02,$95,$00,$01,$84,$4c,$85,$17,$94,$08,$82,$7f,$25,$52,$85,$18,$25,$0f,$00,$02,$95,$00,$01,$84,$4c,$85,$17,$94,$08,$82,$7f,$24,$53,$85,$18,$24,$0f,$00,$02,$95,$00,$01,$84,$4c,$85,$17,$94,$08,$82,$7f,$23,$5a,$85,$18,$23,$0f,$00,$02,$95,$00,$01,$84,$4c,$85,$0c,$94,$08,$82,$7f,$25,$52,$00,$02,$95,$00,$01,$84,$4c,$85,$0c,$94,$08,$82,$7f,$25,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$0c,$94,$08,$82,$7f,$22,$1a,$00,$02,$95,$00,$01,$84,$4c,$85,$0c,$94,$08,$82,$7f,$20,$1c,$00,$02,$95,$00,$01,$84,$4c,$85,$08,$94,$08,$82,$7f,$25,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$08,$94,$08,$82,$7f,$22,$1a,$00,$02,$95,$00,$01,$84,$4c,$85,$09,$94,$08,$82,$7f,$25,$2a,$00,$02,$95,$00,$01,$84,$4c,$85,$09,$94,$08,$82,$7f,$22,$2e,$00,$02,$95,$00,$01,$84,$4c,$85,$02,$94,$08,$82,$7f,$24,$38,$00,$02,$95,$00,$01,$84,$4c,$85,$03,$94,$08,$82,$7f,$25,$24,$00,$02,$95,$00,$01,$84,$4c,$85,$03,$94,$08,$82,$7f,$22,$28,$00,$02,$95,$00,$01,$84,$4c,$85,$04,$94,$08,$82,$7f,$25,$12,$00,$02,$95,$00,$01,$84,$4c,$85,$04,$94,$08,$82,$7f,$22,$16,$00,$02,$95,$00,$01,$84,$4c,$85,$05,$94,$08,$82,$7f,$25,$28,$00,$02,$95,$00,$01,$84,$4c,$85,$05,$94,$08,$82,$7f,$22,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$05,$94,$08,$82,$7f,$20,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$06,$94,$08,$82,$7f,$25,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$07,$94,$08,$82,$7f,$25,$3a,$00,$02,$95,$00,$01,$84,$4c,$85,$07,$94,$08,$82,$7f,$24,$3e,$00,$02,$95,$00,$01,$84,$4c,$85,$07,$94,$08,$82,$7f,$22,$40,$00,$02,$95,$00,$01,$84,$4c,$85,$0a,$94,$08,$82,$7f,$27,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$0a,$94,$08,$82,$7f,$24,$32,$00,$02,$95,$00,$01,$84,$4c,$85,$0a,$94,$08,$82,$7f,$22,$35,$00,$02,$95,$00,$01,$84,$4c,$85,$0d,$94,$08,$82,$7f,$22,$0c,$1d,$30,$00,$02,$95,$00,$01,$84,$4c,$85,$13,$94,$08,$82,$7f,$25,$48,$00,$02,$95,$00,$01,$84,$4c,$85,$13,$94,$08,$82,$7f,$24,$4a,$00,$02,$95,$00,$01,$84,$4c,$85,$13,$94,$08,$82,$7f,$22,$50,$00,$02,$95,$00,$01,$84,$4c,$85,$14,$94,$08,$82,$7f,$25,$50,$00,$02,$95,$00,$01,$84,$4c,$85,$14,$94,$08,$82,$7f,$24,$54,$00,$02,$95,$00,$01,$84,$4c,$85,$14,$94,$08,$82,$7f,$22,$56,$00,$02,$95,$00,$01,$84,$4c,$85,$15,$94,$08,$82,$7f,$25,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$15,$94,$08,$82,$7f,$22,$1a,$00,$02,$95,$00,$01,$84,$4c,$85,$15,$94,$08,$82,$7f,$20,$1c,$00,$02,$95,$00,$01,$84,$4c,$85,$16,$94,$08,$82,$7f,$25,$18,$00,$02,$95,$00,$01,$84,$4c,$85,$16,$94,$08,$82,$7f,$22,$1a,$00,$02,$95,$00,$01,$84,$4c,$85,$16,$94,$08,$82,$7f,$20,$1c,$00,$02,$95,$00,$01,$84,$4c,$85,$12,$94,$08,$82,$7f,$25,$40,$00,$02,$95,$00,$01,$84,$4c,$85,$12,$94,$08,$82,$7f,$24,$42,$00,$02,$95,$00,$01,$84,$4c,$85,$12,$94,$08,$82,$7f,$22,$44,$00,$02,$95,$00,$01,$84,$4c,$85,$1a,$94,$08,$82,$28,$2e,$0c,$82,$14,$2e,$0c,$82,$0a,$2e,$0c,$82,$05,$2e,$18,$00,$02,$95,$00,$01,$84,$50,$85,$19,$94,$08,$82,$3c,$19,$06,$1b,$06,$1d,$06,$20,$06,$22,$06,$24,$06,$82,$0f,$19,$06,$1b,$06,$1d,$06,$20,$06,$22,$06,$24,$06,$82,$07,$19,$06,$1b,$06,$1d,$06,$20,$06,$22,$06,$24,$06,$00,$02,$95,$84,$4c,$85,$27,$94,$08,$82,$7f,$2a,$08,$24,$30,$00,$02,$95,$84,$4c,$85,$27,$94,$08,$82,$7f,$19,$08,$22,$30,$82,$1e,$22,$30,$82,$0a,$22,$30,$00,$02,$95,$6f

13d9: e8 16     mov   a,#$16		; load song
13db: fd        mov   y,a
13dc: e8 e0     mov   a,#$e0
13de: da 3e     movw  $3e,ya
13e0: da 40     movw  $40,ya
13e2: cd 00     mov   x,#$00
13e4: e7 3e     mov   a,($3e+x)
13e6: 3a 3e     incw  $3e
13e8: c4 36     mov   $36,a
13ea: d0 01     bne   $13ed
13ec: 6f        ret

13ed: 1c        asl   a
13ee: 60        clrc
13ef: 88 01     adc   a,#$01
13f1: 8d 00     mov   y,#$00
13f3: 7a 40     addw  ya,$40
13f5: da 40     movw  $40,ya
13f7: e8 00     mov   a,#$00
13f9: c4 34     mov   $34,a
13fb: e4 34     mov   a,$34
13fd: 1c        asl   a
13fe: 5d        mov   x,a
13ff: f4 5b     mov   a,$5b+x
1401: c4 42     mov   $42,a
1403: 3d        inc   x
1404: f4 5b     mov   a,$5b+x
1406: c4 43     mov   $43,a
1408: eb 34     mov   y,$34
140a: cd 10     mov   x,#$10
140c: d9 00     mov   $00+y,x
140e: cd 0a     mov   x,#$0a
1410: d9 20     mov   $20+y,x
1412: f8 34     mov   x,$34
1414: d9 10     mov   $10+y,x
1416: cd 00     mov   x,#$00
1418: e7 3e     mov   a,($3e+x)
141a: 2d        push  a
141b: 3a 3e     incw  $3e
141d: e7 3e     mov   a,($3e+x)
141f: fd        mov   y,a
1420: 3a 3e     incw  $3e
1422: ae        pop   a
1423: 7a 40     addw  ya,$40
1425: da 44     movw  $44,ya
1427: e8 00     mov   a,#$00
1429: 8d 00     mov   y,#$00
142b: d7 42     mov   ($42)+y,a
142d: fc        inc   y
142e: d7 42     mov   ($42)+y,a
1430: fc        inc   y
1431: e4 44     mov   a,$44
1433: d7 42     mov   ($42)+y,a
1435: fc        inc   y
1436: e4 45     mov   a,$45
1438: d7 42     mov   ($42)+y,a
143a: fc        inc   y
143b: e4 44     mov   a,$44
143d: d7 42     mov   ($42)+y,a
143f: fc        inc   y
1440: e4 45     mov   a,$45
1442: d7 42     mov   ($42)+y,a
1444: fc        inc   y
1445: e8 00     mov   a,#$00
1447: d7 42     mov   ($42)+y,a
1449: fc        inc   y
144a: e8 00     mov   a,#$00
144c: d7 42     mov   ($42)+y,a
144e: fc        inc   y
144f: ad 28     cmp   y,#$28
1451: d0 f9     bne   $144c
1453: ab 34     inc   $34
1455: e4 36     mov   a,$36
1457: 64 34     cmp   a,$34
1459: d0 a0     bne   $13fb
145b: e8 10     mov   a,#$10
145d: 64 34     cmp   a,$34
145f: f0 1b     beq   $147c
1461: f8 34     mov   x,$34
1463: e5 f3 14  mov   a,$14f3
1466: 74 00     cmp   a,$00+x
1468: d0 0a     bne   $1474
146a: eb 34     mov   y,$34
146c: cd 00     mov   x,#$00
146e: d9 00     mov   $00+y,x
1470: d9 20     mov   $20+y,x
1472: d9 10     mov   $10+y,x
1474: ab 34     inc   $34
1476: e8 10     mov   a,#$10
1478: 64 34     cmp   a,$34
147a: d0 e5     bne   $1461
147c: cd 00     mov   x,#$00
147e: f5 f3 14  mov   a,$14f3+x
1481: cd 00     mov   x,#$00
1483: 8d 10     mov   y,#$10
1485: 74 00     cmp   a,$00+x
1487: d0 08     bne   $1491
1489: 2d        push  a
148a: f4 00     mov   a,$00+x
148c: 08 01     or    a,#$01
148e: d4 00     mov   $00+x,a
1490: ae        pop   a
1491: 3d        inc   x
1492: fe f1     dbnz  y,$1485
1494: e8 50     mov   a,#$50
1496: c4 30     mov   $30,a
1498: e8 00     mov   a,#$00
149a: c5 20 04  mov   $0420,a
149d: e8 0c     mov   a,#$0c
149f: 8d 3c     mov   y,#$3c
14a1: 3f 85 06  call  $0685
14a4: e8 1c     mov   a,#$1c
14a6: 8d 3c     mov   y,#$3c
14a8: 3f 85 06  call  $0685
14ab: 6f        ret

14ac: e8 00     mov   a,#$00
14ae: c4 59     mov   $59,a
14b0: 5d        mov   x,a
14b1: f5 f3 14  mov   a,$14f3+x
14b4: 08 01     or    a,#$01
14b6: cd 00     mov   x,#$00
14b8: 8d 10     mov   y,#$10
14ba: 74 00     cmp   a,$00+x
14bc: d0 2a     bne   $14e8
14be: 2d        push  a
14bf: 4d        push  x
14c0: 6d        push  y
14c1: d8 33     mov   $33,x
14c3: 7d        mov   a,x
14c4: 1c        asl   a
14c5: 5d        mov   x,a
14c6: f5 5b 00  mov   a,$005b+x
14c9: c4 40     mov   $40,a
14cb: 3d        inc   x
14cc: f5 5b 00  mov   a,$005b+x
14cf: c4 41     mov   $41,a
14d1: 3f 8a 06  call  $068a
14d4: 90 0a     bcc   $14e0
14d6: 3f 79 06  call  $0679
14d9: f8 33     mov   x,$33
14db: f4 10     mov   a,$10+x
14dd: 3f a9 0d  call  $0da9
14e0: ee        pop   y
14e1: ce        pop   x
14e2: e8 00     mov   a,#$00
14e4: d5 00 00  mov   $0000+x,a
14e7: ae        pop   a
14e8: 3d        inc   x
14e9: fe cf     dbnz  y,$14ba
14eb: eb 59     mov   y,$59
14ed: e8 5c     mov   a,#$5c
14ef: 3f 85 06  call  $0685
14f2: 6f        ret

14f3: 10 20     bpl   $1515
14f5: 6f        ret

14f6: 6f        ret

14f7: cd 00     mov   x,#$00
14f9: 1e 20 04  cmp   x,$0420
14fc: f0 01     beq   $14ff
14fe: 6f        ret

14ff: c5 20 04  mov   $0420,a
1502: cc 21 04  mov   $0421,y
1505: dd        mov   a,y
1506: 5d        mov   x,a
1507: e8 7f     mov   a,#$7f
1509: 8d 00     mov   y,#$00
150b: 9e        div   ya,x
150c: c5 23 04  mov   $0423,a
150f: cb 34     mov   $34,y
1511: dd        mov   a,y
1512: 60        clrc
1513: 84 34     adc   a,$34
1515: 60        clrc
1516: 84 34     adc   a,$34
1518: c5 22 04  mov   $0422,a
151b: e8 00     mov   a,#$00
151d: c5 24 04  mov   $0424,a
1520: c5 25 04  mov   $0425,a
1523: 6f        ret

1524: e8 00     mov   a,#$00
1526: 3f ac 14  call  $14ac
1529: 8f aa f4  mov   $f4,#$aa
152c: 8f bb f5  mov   $f5,#$bb
152f: 78 cc f4  cmp   $f4,#$cc
1532: d0 fb     bne   $152f
1534: 2f 19     bra   $154f
1536: eb f4     mov   y,$f4
1538: d0 fc     bne   $1536
153a: 7e f4     cmp   y,$f4
153c: d0 0b     bne   $1549
153e: e4 f5     mov   a,$f5
1540: cb f4     mov   $f4,y
1542: d7 3e     mov   ($3e)+y,a
1544: fc        inc   y
1545: d0 f3     bne   $153a
1547: ab 3f     inc   $3f
1549: 10 ef     bpl   $153a
154b: 7e f4     cmp   y,$f4
154d: 10 eb     bpl   $153a
154f: ba f6     movw  ya,$f6
1551: da 3e     movw  $3e,ya
1553: ba f4     movw  ya,$f4
1555: c4 f4     mov   $f4,a
1557: dd        mov   a,y
1558: 5d        mov   x,a
1559: d0 db     bne   $1536
155b: 8f 00 f4  mov   $f4,#$00
155e: 8f 00 f5  mov   $f5,#$00
1561: 8f 00 f6  mov   $f6,#$00
1564: 8f 00 f7  mov   $f7,#$00
1567: 6f        ret

1568: 6f        ret

1569: c4 34     mov   $34,a
156b: 5c        lsr   a
156c: c4 3e     mov   $3e,a
156e: e8 00     mov   a,#$00
1570: c4 3f     mov   $3f,a
1572: 8d 00     mov   y,#$00
1574: 7a 3e     addw  ya,$3e
1576: 7a 3e     addw  ya,$3e
1578: 7a 3e     addw  ya,$3e
157a: da 3e     movw  $3e,ya
157c: e8 0e     mov   a,#$0e
157e: fd        mov   y,a
157f: e8 6d     mov   a,#$6d
1581: 7a 3e     addw  ya,$3e
1583: cd 00     mov   x,#$00
1585: da 3e     movw  $3e,ya
1587: e4 34     mov   a,$34
1589: 28 01     and   a,#$01
158b: 60        clrc
158c: 88 06     adc   a,#$06
158e: c4 36     mov   $36,a
1590: 60        clrc
1591: 88 08     adc   a,#$08
1593: c4 34     mov   $34,a
1595: e7 3e     mov   a,($3e+x)
1597: c4 37     mov   $37,a
1599: 3a 3e     incw  $3e
159b: ba 3e     movw  ya,$3e
159d: da 40     movw  $40,ya
159f: f8 34     mov   x,$34
15a1: e8 00     mov   a,#$00
15a3: 74 00     cmp   a,$00+x
15a5: f0 07     beq   $15ae
15a7: e4 37     mov   a,$37
15a9: 74 20     cmp   a,$20+x
15ab: 10 01     bpl   $15ae
15ad: 6f        ret

15ae: e4 37     mov   a,$37
15b0: d4 20     mov   $20+x,a
15b2: e4 36     mov   a,$36
15b4: d4 10     mov   $10+x,a
15b6: e8 21     mov   a,#$21
15b8: d4 00     mov   $00+x,a
15ba: e4 34     mov   a,$34
15bc: 1c        asl   a
15bd: 5d        mov   x,a
15be: f4 5b     mov   a,$5b+x
15c0: c4 42     mov   $42,a
15c2: 3d        inc   x
15c3: f4 5b     mov   a,$5b+x
15c5: c4 43     mov   $43,a
15c7: cd 00     mov   x,#$00
15c9: e7 3e     mov   a,($3e+x)
15cb: 2d        push  a
15cc: 3a 3e     incw  $3e
15ce: e7 3e     mov   a,($3e+x)
15d0: fd        mov   y,a
15d1: 3a 3e     incw  $3e
15d3: ae        pop   a
15d4: da 44     movw  $44,ya
15d6: e8 00     mov   a,#$00
15d8: 8d 00     mov   y,#$00
15da: d7 42     mov   ($42)+y,a
15dc: fc        inc   y
15dd: d7 42     mov   ($42)+y,a
15df: fc        inc   y
15e0: e4 44     mov   a,$44
15e2: d7 42     mov   ($42)+y,a
15e4: fc        inc   y
15e5: e4 45     mov   a,$45
15e7: d7 42     mov   ($42)+y,a
15e9: fc        inc   y
15ea: e4 44     mov   a,$44
15ec: d7 42     mov   ($42)+y,a
15ee: fc        inc   y
15ef: e4 45     mov   a,$45
15f1: d7 42     mov   ($42)+y,a
15f3: fc        inc   y
15f4: e8 01     mov   a,#$01
15f6: d7 42     mov   ($42)+y,a
15f8: fc        inc   y
15f9: e8 00     mov   a,#$00
15fb: d7 42     mov   ($42)+y,a
15fd: fc        inc   y
15fe: ad 28     cmp   y,#$28
1600: d0 f9     bne   $15fb
1602: 8d 06     mov   y,#$06
1604: e8 01     mov   a,#$01
1606: d7 42     mov   ($42)+y,a
1608: e8 32     mov   a,#$32
160a: c4 31     mov   $31,a
160c: e8 0c     mov   a,#$0c
160e: 8d 3c     mov   y,#$3c
1610: 3f 85 06  call  $0685
1613: e8 1c     mov   a,#$1c
1615: 8d 3c     mov   y,#$3c
1617: 3f 85 06  call  $0685
161a: 6f        ret

161b: 6f        ret

161c: e4 34     mov   a,$34
161e: eb 35     mov   y,$35
1620: 7a 36     addw  ya,$36
1622: 6f        ret

1623: e4 34     mov   a,$34
1625: eb 35     mov   y,$35
1627: 9a 36     subw  ya,$36
1629: 6f        ret

162a: e4 35     mov   a,$35
162c: 0d        push  psw
162d: 10 0d     bpl   $163c
162f: e8 00     mov   a,#$00
1631: 80        setc
1632: a4 34     sbc   a,$34
1634: c4 34     mov   $34,a
1636: e8 00     mov   a,#$00
1638: a4 35     sbc   a,$35
163a: c4 35     mov   $35,a
163c: 3f 50 16  call  $1650
163f: 8e        pop   psw
1640: 10 0d     bpl   $164f
1642: e8 00     mov   a,#$00
1644: 80        setc
1645: a4 34     sbc   a,$34
1647: c4 34     mov   $34,a
1649: e8 00     mov   a,#$00
164b: a4 35     sbc   a,$35
164d: c4 35     mov   $35,a
164f: 6f        ret

1650: 4d        push  x
1651: 6d        push  y
1652: cd 10     mov   x,#$10
1654: e8 00     mov   a,#$00
1656: c4 38     mov   $38,a
1658: c4 39     mov   $39,a
165a: 2b 34     rol   $34
165c: 2b 35     rol   $35
165e: 2b 38     rol   $38
1660: 2b 39     rol   $39
1662: e4 38     mov   a,$38
1664: 80        setc
1665: a4 36     sbc   a,$36
1667: fd        mov   y,a
1668: e4 39     mov   a,$39
166a: a4 37     sbc   a,$37
166c: 90 04     bcc   $1672
166e: eb 38     mov   y,$38
1670: e4 39     mov   a,$39
1672: 2b 34     rol   $34
1674: 2b 35     rol   $35
1676: 1d        dec   x
1677: d0 e5     bne   $165e
1679: ee        pop   y
167a: ce        pop   x
167b: 6f        ret

167c: e4 34     mov   a,$34
167e: eb 35     mov   y,$35
1680: a8 80     sbc   a,#$80
1682: 90 01     bcc   $1685
1684: fc        inc   y
1685: dd        mov   a,y
1686: 6f        ret

1687: 2d        push  a
1688: 8d 20     mov   y,#$20
168a: d7 40     mov   ($40)+y,a
168c: e8 ff     mov   a,#$ff
168e: 8d 21     mov   y,#$21
1690: d7 40     mov   ($40)+y,a
1692: e8 e0     mov   a,#$e0
1694: 8d 22     mov   y,#$22
1696: d7 40     mov   ($40)+y,a
1698: e8 b8     mov   a,#$b8
169a: 8d 23     mov   y,#$23
169c: d7 40     mov   ($40)+y,a
169e: ae        pop   a
169f: 1c        asl   a
16a0: 5d        mov   x,a
16a1: f5 27 04  mov   a,$0427+x
16a4: 3d        inc   x
16a5: 8d 29     mov   y,#$29
16a7: d7 40     mov   ($40)+y,a
16a9: f5 27 04  mov   a,$0427+x
16ac: 8d 28     mov   y,#$28
16ae: d7 40     mov   ($40)+y,a
16b0: 6f        ret

16b1: e8 5d     mov   a,#$5d
16b3: 8d 25     mov   y,#$25
16b5: 3f 85 06  call  $0685
16b8: 6f        ret

16b9: e4 f4     mov   a,$f4
16bb: 64 f4     cmp   a,$f4
16bd: d0 0f     bne   $16ce
16bf: 68 00     cmp   a,#$00
16c1: f0 0b     beq   $16ce
16c3: eb f5     mov   y,$f5
16c5: 8f f3 f1  mov   $f1,#$f3
16c8: cd 00     mov   x,#$00
16ca: d8 f4     mov   $f4,x
16cc: 80        setc
16cd: 6f        ret

16ce: 60        clrc
16cf: 6f        ret
