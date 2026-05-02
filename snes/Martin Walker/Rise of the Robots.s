0600: 20        clrp			; clear ram variables
0601: cd ff     mov   x,#$ff
0603: bd        mov   sp,x
0604: e8 00     mov   a,#$00		; EVOL(L)
0606: 8d 2c     mov   y,#$2c
0608: 3f f1 10  call  $10f1
060b: 8d 3c     mov   y,#$3c		; EVOL(R)
060d: 3f f1 10  call  $10f1
0610: 8d 0c     mov   y,#$0c		; MVOL(L)
0612: 3f f1 10  call  $10f1
0615: 8d 1c     mov   y,#$1c		; MVOL(R)
0617: 3f f1 10  call  $10f1
061a: 8d 2d     mov   y,#$2d		; PMON
061c: 3f f1 10  call  $10f1
061f: e8 04     mov   a,#$04		; source directory
0621: 8d 5d     mov   y,#$5d
0623: 3f f1 10  call  $10f1
0626: cd 07     mov   x,#$07		; GAIN
0628: 8d 00     mov   y,#$00
062a: 7d        mov   a,x
062b: 9f        xcn   a
062c: c5 f2 00  mov   $00f2,a
062f: cc f3 00  mov   $00f3,y
0632: bc        inc   a
0633: c5 f2 00  mov   $00f2,a
0636: cc f3 00  mov   $00f3,y
0639: 1d        dec   x
063a: 10 ee     bpl   $062a
063c: cd 00     mov   x,#$00
063e: 7d        mov   a,x
063f: af        mov   (x)+,a
0640: c8 f0     cmp   x,#$f0
0642: d0 fb     bne   $063f
0644: 5d        mov   x,a
0645: d5 00 01  mov   $0100+x,a
0648: d5 00 02  mov   $0200+x,a
064b: d5 00 03  mov   $0300+x,a
064e: 3d        inc   x
064f: d0 f4     bne   $0645
0651: 3f f8 10  call  $10f8
0654: 3f 57 11  call  $1157
0657: 3f 0f 08  call  $080f
065a: e8 90     mov   a,#$90
065c: c5 f1 00  mov   $00f1,a
065f: e8 20     mov   a,#$20
0661: c5 fa 00  mov   $00fa,a
0664: e8 81     mov   a,#$81
0666: c5 f1 00  mov   $00f1,a
0669: 8f 00 f4  mov   $f4,#$00
066c: e4 f6     mov   a,$f6
066e: f0 fc     beq   $066c
0670: e8 ff     mov   a,#$ff
0672: c4 01     mov   $01,a
0674: c4 f4     mov   $f4,a
0676: e4 2e     mov   a,$2e
0678: 8d 5c     mov   y,#$5c
067a: 3f f1 10  call  $10f1
067d: e8 00     mov   a,#$00
067f: c4 2e     mov   $2e,a
0681: e3 1c 28  bbs7  $1c,$06ac
0684: e4 2f     mov   a,$2f
0686: 8d 6c     mov   y,#$6c
0688: 3f f1 10  call  $10f1
068b: 69 1d 1c  cmp   ($1c),($1d)
068e: d0 1c     bne   $06ac
0690: e4 31     mov   a,$31
0692: 8d 4d     mov   y,#$4d
0694: 3f f1 10  call  $10f1
0697: e4 33     mov   a,$33
0699: 8d 0d     mov   y,#$0d
069b: 3f f1 10  call  $10f1
069e: e4 42     mov   a,$42
06a0: 8d 2c     mov   y,#$2c
06a2: 3f f1 10  call  $10f1
06a5: e4 44     mov   a,$44
06a7: 8d 3c     mov   y,#$3c
06a9: 3f f1 10  call  $10f1
06ac: e4 30     mov   a,$30
06ae: 8d 3d     mov   y,#$3d
06b0: 3f f1 10  call  $10f1
06b3: e8 00     mov   a,#$00
06b5: 8d 5c     mov   y,#$5c
06b7: 3f f1 10  call  $10f1
06ba: e4 2d     mov   a,$2d
06bc: 8d 4c     mov   y,#$4c
06be: 3f f1 10  call  $10f1
06c1: e8 00     mov   a,#$00
06c3: c4 2d     mov   $2d,a
06c5: 3f 9f 11  call  $119f
06c8: ec fd 00  mov   y,$00fd
06cb: f0 f8     beq   $06c5
06cd: dd        mov   a,y
06ce: 60        clrc
06cf: 84 19     adc   a,$19
06d1: 68 04     cmp   a,#$04
06d3: 90 09     bcc   $06de
06d5: 69 1d 1c  cmp   ($1c),($1d)
06d8: f0 02     beq   $06dc
06da: ab 1c     inc   $1c
06dc: e8 00     mov   a,#$00
06de: c4 19     mov   $19,a
06e0: e8 80     mov   a,#$80
06e2: cf        mul   ya
06e3: ad 00     cmp   y,#$00
06e5: f0 05     beq   $06ec
06e7: e8 00     mov   a,#$00
06e9: 80        setc
06ea: 2f 03     bra   $06ef
06ec: 60        clrc
06ed: 84 22     adc   a,$22
06ef: c4 22     mov   $22,a
06f1: b0 15     bcs   $0708
06f3: cd 00     mov   x,#$00
06f5: 8f 01 1a  mov   $1a,#$01
06f8: f4 50     mov   a,$50+x
06fa: f0 03     beq   $06ff
06fc: 3f 57 0d  call  $0d57
06ff: 3d        inc   x
0700: 3d        inc   x
0701: 0b 1a     asl   $1a
0703: d0 f3     bne   $06f8
0705: 5f 76 06  jmp   $0676
0708: 3f 9d 08  call  $089d
070b: 3f 11 07  call  $0711
070e: 5f 76 06  jmp   $0676
0711: e4 4d     mov   a,$4d
0713: 30 06     bmi   $071b
0715: 3f 26 07  call  $0726
0718: 8f ff 4d  mov   $4d,#$ff
071b: e4 00     mov   a,$00
071d: 30 06     bmi   $0725
071f: 3f 26 07  call  $0726
0722: 8f ff 00  mov   $00,#$ff
0725: 6f        ret
0726: c4 21     mov   $21,a
0728: 8d 09     mov   y,#$09
072a: cf        mul   ya
072b: da 25     movw  $25,ya
072d: 60        clrc
072e: 89 0e 25  adc   ($25),($0e)
0731: 89 0f 26  adc   ($26),($0f)
0734: 8d 00     mov   y,#$00
0736: f7 25     mov   a,($25)+y
0738: c4 17     mov   $17,a
073a: 28 7f     and   a,#$7f
073c: c4 15     mov   $15,a
073e: cd 0e     mov   x,#$0e
0740: 8f 80 1a  mov   $1a,#$80
0743: 7d        mov   a,x
0744: 5c        lsr   a
0745: fd        mov   y,a
0746: fc        inc   y
0747: f7 25     mov   a,($25)+y
0749: 68 ff     cmp   a,#$ff
074b: f0 59     beq   $07a6
074d: c4 18     mov   $18,a
074f: f5 11 03  mov   a,$0311+x
0752: 64 15     cmp   a,$15
0754: 90 50     bcc   $07a6
0756: 8f 00 36  mov   $36,#$00
0759: 8f 00 3e  mov   $3e,#$00
075c: 8f 00 34  mov   $34,#$00
075f: 8f ff 35  mov   $35,#$ff
0762: 3f bf 07  call  $07bf
0765: e4 15     mov   a,$15
0767: d5 11 03  mov   $0311+x,a
076a: e4 02     mov   a,$02
076c: d5 a0 03  mov   $03a0+x,a
076f: e8 ff     mov   a,#$ff
0771: d4 50     mov   $50+x,a
0773: c8 00     cmp   x,#$00
0775: d0 03     bne   $077a
0777: fa 21 4c  mov   ($4c),($21)
077a: e4 17     mov   a,$17
077c: 10 0c     bpl   $078a
077e: d5 70 03  mov   $0370+x,a
0781: e4 18     mov   a,$18
0783: d4 91     mov   $91+x,a
0785: 3f 6d 0a  call  $0a6d
0788: 2f 1c     bra   $07a6
078a: e4 18     mov   a,$18
078c: 1c        asl   a
078d: fd        mov   y,a
078e: 60        clrc
078f: e4 0c     mov   a,$0c
0791: 97 0a     adc   a,($0a)+y
0793: d4 60     mov   $60+x,a
0795: d4 70     mov   $70+x,a
0797: fc        inc   y
0798: e4 0d     mov   a,$0d
079a: 97 0a     adc   a,($0a)+y
079c: d4 61     mov   $61+x,a
079e: d4 71     mov   $71+x,a
07a0: 3f de 09  call  $09de
07a3: 3f 6d 0a  call  $0a6d
07a6: 4b 1a     lsr   $1a
07a8: 1d        dec   x
07a9: 1d        dec   x
07aa: 10 97     bpl   $0743
07ac: e8 7f     mov   a,#$7f
07ae: 8d 0c     mov   y,#$0c
07b0: cc f2 00  mov   $00f2,y
07b3: c5 f3 00  mov   $00f3,a
07b6: 8d 1c     mov   y,#$1c
07b8: cc f2 00  mov   $00f2,y
07bb: c5 f3 00  mov   $00f3,a
07be: 6f        ret
07bf: e8 ff     mov   a,#$ff
07c1: d5 21 02  mov   $0221+x,a
07c4: d5 91 03  mov   $0391+x,a
07c7: d5 11 03  mov   $0311+x,a
07ca: d5 00 02  mov   $0200+x,a
07cd: d5 01 02  mov   $0201+x,a
07d0: 8d 0c     mov   y,#$0c
07d2: 3f 39 0f  call  $0f39
07d5: e8 00     mov   a,#$00
07d7: d5 60 02  mov   $0260+x,a
07da: d5 11 02  mov   $0211+x,a
07dd: d5 a1 02  mov   $02a1+x,a
07e0: d5 61 02  mov   $0261+x,a
07e3: d5 51 03  mov   $0351+x,a
07e6: d5 90 03  mov   $0390+x,a
07e9: d5 b0 02  mov   $02b0+x,a
07ec: d4 51     mov   $51+x,a
07ee: d4 c0     mov   $c0+x,a
07f0: d4 a1     mov   $a1+x,a
07f2: d4 c1     mov   $c1+x,a
07f4: d5 00 03  mov   $0300+x,a
07f7: d4 e0     mov   $e0+x,a
07f9: d4 e1     mov   $e1+x,a
07fb: d4 b0     mov   $b0+x,a
07fd: d4 b1     mov   $b1+x,a
07ff: d5 70 03  mov   $0370+x,a
0802: e4 1a     mov   a,$1a
0804: 4e 2d 00  tclr1 $002d
0807: 0e 2e 00  tset1 $002e
080a: e8 01     mov   a,#$01
080c: d4 a0     mov   $a0+x,a
080e: 6f        ret
080f: cd 0e     mov   x,#$0e
0811: e8 00     mov   a,#$00
0813: d4 50     mov   $50+x,a
0815: d5 11 02  mov   $0211+x,a
0818: e8 ff     mov   a,#$ff
081a: d5 11 03  mov   $0311+x,a
081d: 1d        dec   x
081e: 1d        dec   x
081f: 10 f0     bpl   $0811
0821: e8 00     mov   a,#$00
0823: fd        mov   y,a
0824: da 41     movw  $41,ya
0826: da 43     movw  $43,ya
0828: da 38     movw  $38,ya
082a: e8 01     mov   a,#$01
082c: 3f 50 08  call  $0850
082f: a2 2f     set5  $2f
0831: 8f ff 00  mov   $00,#$ff
0834: 8f ff 4d  mov   $4d,#$ff
0837: 8f ff 2e  mov   $2e,#$ff
083a: 8f 00 36  mov   $36,#$00
083d: 8f 00 3e  mov   $3e,#$00
0840: 8f 00 03  mov   $03,#$00
0843: 8f 00 49  mov   $49,#$00
0846: 8f 80 4a  mov   $4a,#$80
0849: 8f ff 4c  mov   $4c,#$ff
084c: 8f 00 2d  mov   $2d,#$00
084f: 6f        ret
0850: 68 00     cmp   a,#$00
0852: d0 02     bne   $0856
0854: e8 01     mov   a,#$01
0856: c4 1d     mov   $1d,a
0858: 8d 7d     mov   y,#$7d
085a: cc f2 00  mov   $00f2,y
085d: e5 f3 00  mov   a,$00f3
0860: 28 0f     and   a,#$0f
0862: 48 ff     eor   a,#$ff
0864: f3 1c 03  bbc7  $1c,$086a
0867: 60        clrc
0868: 84 1c     adc   a,$1c
086a: c4 1c     mov   $1c,a
086c: e8 00     mov   a,#$00
086e: 8d 4d     mov   y,#$4d
0870: 3f f1 10  call  $10f1
0873: 8d 0d     mov   y,#$0d
0875: 3f f1 10  call  $10f1
0878: 8d 2c     mov   y,#$2c
087a: 3f f1 10  call  $10f1
087d: 8d 3c     mov   y,#$3c
087f: 3f f1 10  call  $10f1
0882: e4 2f     mov   a,$2f
0884: 08 20     or    a,#$20
0886: 8d 6c     mov   y,#$6c
0888: 3f f1 10  call  $10f1
088b: e4 1d     mov   a,$1d
088d: 8d 7d     mov   y,#$7d
088f: 3f f1 10  call  $10f1
0892: 1c        asl   a
0893: 1c        asl   a
0894: 1c        asl   a
0895: 48 ff     eor   a,#$ff
0897: 8d 6d     mov   y,#$6d
0899: 3f f1 10  call  $10f1
089c: 6f        ret
089d: cd 00     mov   x,#$00
089f: 8f 00 1e  mov   $1e,#$00
08a2: 8f 01 1a  mov   $1a,#$01
08a5: d8 1b     mov   $1b,x
08a7: f4 50     mov   a,$50+x
08a9: d0 03     bne   $08ae
08ab: 5f 4b 09  jmp   $094b
08ae: e4 4a     mov   a,$4a
08b0: f0 0c     beq   $08be
08b2: 8f 01 46  mov   $46,#$01
08b5: 8f 00 47  mov   $47,#$00
08b8: 8f 00 48  mov   $48,#$00
08bb: 8f 00 4a  mov   $4a,#$00
08be: f5 51 03  mov   a,$0351+x
08c1: f0 1d     beq   $08e0
08c3: f5 60 03  mov   a,$0360+x
08c6: bc        inc   a
08c7: d5 60 03  mov   $0360+x,a
08ca: 8d 7c     mov   y,#$7c
08cc: cc f2 00  mov   $00f2,y
08cf: e5 f3 00  mov   a,$00f3
08d2: 24 1a     and   a,$1a
08d4: f0 72     beq   $0948
08d6: e8 01     mov   a,#$01
08d8: d4 a0     mov   $a0+x,a
08da: 9c        dec   a
08db: d5 51 03  mov   $0351+x,a
08de: 2f 68     bra   $0948
08e0: 60        clrc
08e1: f5 01 02  mov   a,$0201+x
08e4: 95 00 02  adc   a,$0200+x
08e7: d5 01 02  mov   $0201+x,a
08ea: 90 5c     bcc   $0948
08ec: f5 60 03  mov   a,$0360+x
08ef: bc        inc   a
08f0: d5 60 03  mov   $0360+x,a
08f3: 9b a0     dec   $a0+x
08f5: d0 51     bne   $0948
08f7: 3f 03 10  call  $1003
08fa: 3f 4a 0e  call  $0e4a		; get next byte
08fd: 68 ff     cmp   a,#$ff		; check for end of sequence flag
08ff: d0 11     bne   $0912
0901: f5 70 03  mov   a,$0370+x
0904: f0 03     beq   $0909
0906: 5f 28 0a  jmp   $0a28
0909: 3f da 09  call  $09da
090c: f4 50     mov   a,$50+x
090e: d0 ea     bne   $08fa
0910: 2f 39     bra   $094b
0912: 10 09     bpl   $091d
0914: 68 9e     cmp   a,#$9e
0916: b0 05     bcs   $091d
0918: 3f 3e 0e  call  $0e3e		; get note/vcmd
091b: 2f dd     bra   $08fa
091d: 3f a4 0a  call  $0aa4
0920: 3f 4a 0e  call  $0e4a
0923: 68 ff     cmp   a,#$ff
0925: d0 05     bne   $092c
0927: d5 51 03  mov   $0351+x,a
092a: 2f 15     bra   $0941
092c: 1c        asl   a
092d: d4 a0     mov   $a0+x,a
092f: f5 71 03  mov   a,$0371+x
0932: f0 0d     beq   $0941
0934: 3f 5f 0c  call  $0c5f
0937: e4 29     mov   a,$29
0939: 35 71 03  and   a,$0371+x
093c: 60        clrc
093d: 94 a0     adc   a,$a0+x
093f: d4 a0     mov   $a0+x,a
0941: e8 00     mov   a,#$00
0943: d5 60 03  mov   $0360+x,a
0946: 2f 03     bra   $094b
0948: 3f bf 0c  call  $0cbf
094b: 3d        inc   x
094c: 3d        inc   x
094d: 0b 1a     asl   $1a
094f: f0 03     beq   $0954
0951: 5f a5 08  jmp   $08a5
0954: e4 3e     mov   a,$3e
0956: f0 15     beq   $096d
0958: ba 3a     movw  ya,$3a
095a: 7a 41     addw  ya,$41
095c: da 41     movw  $41,ya
095e: ba 3c     movw  ya,$3c
0960: 7a 43     addw  ya,$43
0962: 6e 3e 06  dbnz  $3e,$096b
0965: ba 3e     movw  ya,$3e
0967: da 41     movw  $41,ya
0969: eb 40     mov   y,$40
096b: da 43     movw  $43,ya
096d: e4 36     mov   a,$36
096f: f0 0f     beq   $0980
0971: ba 38     movw  ya,$38
0973: 7a 34     addw  ya,$34
0975: 8b 36     dec   $36
0977: d0 02     bne   $097b
0979: ba 36     movw  ya,$36
097b: da 34     movw  $34,ya
097d: 8f ff 1e  mov   $1e,#$ff
0980: cd 00     mov   x,#$00
0982: 8f 00 49  mov   $49,#$00
0985: 8f 01 1a  mov   $1a,#$01
0988: f4 50     mov   a,$50+x
098a: f0 06     beq   $0992
098c: 09 1a 49  or    ($49),($1a)
098f: 3f b1 0b  call  $0bb1
0992: 3d        inc   x
0993: 3d        inc   x
0994: 0b 1a     asl   $1a
0996: d0 f0     bne   $0988
0998: ba 38     movw  ya,$38
099a: f0 07     beq   $09a3
099c: e4 35     mov   a,$35
099e: d0 03     bne   $09a3
09a0: 3f 0f 08  call  $080f
09a3: e4 49     mov   a,$49
09a5: d0 05     bne   $09ac
09a7: 8f 80 4a  mov   $4a,#$80
09aa: 2f 0f     bra   $09bb
09ac: 60        clrc
09ad: e4 48     mov   a,$48
09af: 84 45     adc   a,$45
09b1: c4 48     mov   $48,a
09b3: 90 06     bcc   $09bb
09b5: ab 46     inc   $46
09b7: d0 02     bne   $09bb
09b9: ab 47     inc   $47
09bb: 78 00 4b  cmp   $4b,#$00
09be: d0 09     bne   $09c9
09c0: e4 49     mov   a,$49
09c2: c4 f5     mov   $f5,a
09c4: e4 4c     mov   a,$4c
09c6: c4 f6     mov   $f6,a
09c8: 6f        ret
09c9: e4 46     mov   a,$46
09cb: fa 47 26  mov   ($26),($47)
09ce: 4b 26     lsr   $26
09d0: 7c        ror   a
09d1: c4 f5     mov   $f5,a
09d3: e4 26     mov   a,$26
09d5: 04 4a     or    a,$4a
09d7: c4 f6     mov   $f6,a
09d9: 6f        ret

09da: 9b 90     dec   $90+x		; get current pattern vcmd
09dc: d0 46     bne   $0a24
09de: 3f 64 0a  call  $0a64		; copy bytes to ram
09e1: d4 90     mov   $90+x,a
09e3: 68 ff     cmp   a,#$ff		; check for vcmd
09e5: f0 49     beq   $0a30
09e7: 68 fe     cmp   a,#$fe
09e9: f0 3d     beq   $0a28
09eb: 68 fd     cmp   a,#$fd
09ed: f0 51     beq   $0a40
09ef: 68 fc     cmp   a,#$fc
09f1: f0 6b     beq   $0a5e
09f3: 28 40     and   a,#$40
09f5: f0 28     beq   $0a1f
09f7: f4 51     mov   a,$51+x
09f9: d0 12     bne   $0a0d
09fb: f4 90     mov   a,$90+x
09fd: 28 3f     and   a,#$3f
09ff: d4 51     mov   $51+x,a
0a01: f4 70     mov   a,$70+x
0a03: d5 50 02  mov   $0250+x,a
0a06: f4 71     mov   a,$71+x
0a08: d5 51 02  mov   $0251+x,a
0a0b: 2f d1     bra   $09de
0a0d: 9b 51     dec   $51+x
0a0f: d0 02     bne   $0a13
0a11: 2f cb     bra   $09de
0a13: f5 50 02  mov   a,$0250+x
0a16: d4 70     mov   $70+x,a
0a18: f5 51 02  mov   a,$0251+x
0a1b: d4 71     mov   $71+x,a
0a1d: 2f bf     bra   $09de

0a1f: 3f 64 0a  call  $0a64		; pattern vcmd 40-7f - repeat sequence
0a22: d4 91     mov   $91+x,a
0a24: 3f 6d 0a  call  $0a6d
0a27: 6f        ret

0a28: 3f bf 07  call  $07bf		; pattern vcmd fe - end of channel
0a2b: e8 00     mov   a,#$00
0a2d: d4 50     mov   $50+x,a
0a2f: 6f        ret

0a30: 3f 64 0a  call  $0a64		; pattern vcmd ff - go to loop
0a33: 60        clrc
0a34: 94 60     adc   a,$60+x
0a36: d4 70     mov   $70+x,a
0a38: f4 61     mov   a,$61+x
0a3a: 88 00     adc   a,#$00
0a3c: d4 71     mov   $71+x,a
0a3e: 2f 9e     bra   $09de

0a40: 3f 64 0a  call  $0a64		; pattern vcmd $fd
0a43: 1c        asl   a
0a44: fd        mov   y,a
0a45: 60        clrc
0a46: e4 0c     mov   a,$0c
0a48: 97 0a     adc   a,($0a)+y
0a4a: d4 60     mov   $60+x,a
0a4c: d4 70     mov   $70+x,a
0a4e: fc        inc   y
0a4f: e4 0d     mov   a,$0d
0a51: 97 0a     adc   a,($0a)+y
0a53: d4 61     mov   $61+x,a
0a55: d4 71     mov   $71+x,a
0a57: 3f de 09  call  $09de
0a5a: 3f 6d 0a  call  $0a6d
0a5d: 6f        ret

0a5e: 3f 64 0a  call  $0a64		; pattern vcmd $fc - play another song
0a61: c4 4d     mov   $4d,a
0a63: 6f        ret

0a64: e7 70     mov   a,($70+x)		; copy pattern vcmd to ram
0a66: bb 70     inc   $70+x
0a68: d0 02     bne   $0a6c
0a6a: bb 71     inc   $71+x
0a6c: 6f        ret

0a6d: f4 91     mov   a,$91+x
0a6f: 8d 02     mov   y,#$02
0a71: cf        mul   ya
0a72: da 27     movw  $27,ya
0a74: 60        clrc
0a75: 89 06 27  adc   ($27),($06)
0a78: 89 07 28  adc   ($28),($07)
0a7b: 8d 00     mov   y,#$00
0a7d: f7 27     mov   a,($27)+y
0a7f: 2d        push  a
0a80: fc        inc   y
0a81: f7 27     mov   a,($27)+y
0a83: fd        mov   y,a
0a84: ae        pop   a
0a85: da 27     movw  $27,ya
0a87: 60        clrc
0a88: 89 08 27  adc   ($27),($08)
0a8b: 89 09 28  adc   ($28),($09)
0a8e: e4 27     mov   a,$27
0a90: d4 80     mov   $80+x,a
0a92: e4 28     mov   a,$28
0a94: d4 81     mov   $81+x,a
0a96: e8 ff     mov   a,#$ff
0a98: d5 61 03  mov   $0361+x,a
0a9b: e8 00     mov   a,#$00
0a9d: d5 80 03  mov   $0380+x,a
0aa0: d5 71 03  mov   $0371+x,a
0aa3: 6f        ret
0aa4: f5 80 03  mov   a,$0380+x
0aa7: f0 08     beq   $0ab1
0aa9: 3f 5f 0c  call  $0c5f
0aac: e4 29     mov   a,$29
0aae: 35 80 03  and   a,$0380+x
0ab1: c4 2b     mov   $2b,a
0ab3: f5 b0 03  mov   a,$03b0+x
0ab6: c4 16     mov   $16,a
0ab8: dd        mov   a,y
0ab9: e3 16 08  bbs7  $16,$0ac4
0abc: 60        clrc
0abd: 95 60 02  adc   a,$0260+x
0ac0: 60        clrc
0ac1: 95 61 02  adc   a,$0261+x
0ac4: 60        clrc
0ac5: 95 70 02  adc   a,$0270+x
0ac8: 60        clrc
0ac9: 84 2b     adc   a,$2b
0acb: d5 81 02  mov   $0281+x,a
0ace: 60        clrc
0acf: f5 a1 02  mov   a,$02a1+x
0ad2: 95 71 02  adc   a,$0271+x
0ad5: d5 80 02  mov   $0280+x,a
0ad8: f5 50 03  mov   a,$0350+x
0adb: f0 11     beq   $0aee
0add: 3f 5f 0c  call  $0c5f
0ae0: e4 29     mov   a,$29
0ae2: 68 19     cmp   a,#$19
0ae4: 90 05     bcc   $0aeb
0ae6: 80        setc
0ae7: a8 18     sbc   a,#$18
0ae9: 2f f7     bra   $0ae2
0aeb: 3f 3f 0f  call  $0f3f
0aee: f5 e1 02  mov   a,$02e1+x
0af1: 5c        lsr   a
0af2: e8 00     mov   a,#$00
0af4: 7c        ror   a
0af5: d5 d0 02  mov   $02d0+x,a
0af8: e8 00     mov   a,#$00
0afa: d4 c0     mov   $c0+x,a
0afc: d4 a1     mov   $a1+x,a
0afe: d5 00 03  mov   $0300+x,a
0b01: d4 e0     mov   $e0+x,a
0b03: f5 90 03  mov   a,$0390+x
0b06: f0 07     beq   $0b0f
0b08: 30 11     bmi   $0b1b
0b0a: e8 ff     mov   a,#$ff
0b0c: d5 90 03  mov   $0390+x,a
0b0f: e4 4e     mov   a,$4e
0b11: 24 1a     and   a,$1a
0b13: d0 06     bne   $0b1b
0b15: 09 1a 1e  or    ($1e),($1a)
0b18: 09 1a 2d  or    ($2d),($1a)
0b1b: f5 b0 02  mov   a,$02b0+x
0b1e: d4 d0     mov   $d0+x,a
0b20: f0 23     beq   $0b45
0b22: f5 b1 02  mov   a,$02b1+x
0b25: d4 d1     mov   $d1+x,a
0b27: f5 c1 02  mov   a,$02c1+x
0b2a: 60        clrc
0b2b: 95 81 02  adc   a,$0281+x
0b2e: 28 7f     and   a,#$7f
0b30: d5 a0 02  mov   $02a0+x,a
0b33: 80        setc
0b34: b5 81 02  sbc   a,$0281+x
0b37: fb d0     mov   y,$d0+x
0b39: 6d        push  y
0b3a: ce        pop   x
0b3b: 3f 7e 0c  call  $0c7e
0b3e: d5 90 02  mov   $0290+x,a
0b41: dd        mov   a,y
0b42: d5 91 02  mov   $0291+x,a
0b45: 3f 6d 0c  call  $0c6d
0b48: 4d        push  x
0b49: e4 24     mov   a,$24
0b4b: 1c        asl   a
0b4c: 8d 00     mov   y,#$00
0b4e: cd 18     mov   x,#$18
0b50: 9e        div   ya,x
0b51: 5d        mov   x,a
0b52: f6 98 0b  mov   a,$0b98+y
0b55: c4 26     mov   $26,a
0b57: f6 97 0b  mov   a,$0b97+y
0b5a: c4 25     mov   $25,a
0b5c: f6 9a 0b  mov   a,$0b9a+y
0b5f: 2d        push  a
0b60: f6 99 0b  mov   a,$0b99+y
0b63: ee        pop   y
0b64: 9a 25     subw  ya,$25
0b66: eb 23     mov   y,$23
0b68: cf        mul   ya
0b69: dd        mov   a,y
0b6a: 8d 00     mov   y,#$00
0b6c: 7a 25     addw  ya,$25
0b6e: cb 26     mov   $26,y
0b70: 1c        asl   a
0b71: 2b 26     rol   $26
0b73: 1c        asl   a
0b74: 2b 26     rol   $26
0b76: c4 25     mov   $25,a
0b78: 2f 04     bra   $0b7e
0b7a: 4b 26     lsr   $26
0b7c: 7c        ror   a
0b7d: 3d        inc   x
0b7e: c8 08     cmp   x,#$08
0b80: d0 f8     bne   $0b7a
0b82: c4 25     mov   $25,a
0b84: ce        pop   x
0b85: 7d        mov   a,x
0b86: 9f        xcn   a
0b87: 5c        lsr   a
0b88: 08 02     or    a,#$02
0b8a: fd        mov   y,a
0b8b: e4 25     mov   a,$25
0b8d: 3f f1 10  call  $10f1
0b90: fc        inc   y
0b91: e4 26     mov   a,$26
0b93: 3f f1 10  call  $10f1
0b96: 6f        ret
0b97: 5f 08 de  jmp   $de08
0b9a: 08 65     or    a,#$65
0b9c: 09 f4 09  or    ($09),($f4)
0b9f: 8c 0a 2c  dec   $2c0a
0ba2: 0b d6     asl   $d6
0ba4: 0b 8b     asl   $8b
0ba6: 0c 4a 0d  asl   $0d4a
0ba9: 14 0e     or    a,$0e+x
0bab: ea 0e cd  not1  $0d0e,6
0bae: 0f        brk
0baf: be        das   a
0bb0: 10 f4     bpl   $0ba6
0bb2: b0 f0     bcs   $0ba4
0bb4: 09 e8 20  or    ($20),($e8)
0bb7: 8d 02     mov   y,#$02
0bb9: 9b b0     dec   $b0+x
0bbb: 3f 9b 0c  call  $0c9b
0bbe: fb e1     mov   y,$e1+x
0bc0: f0 23     beq   $0be5
0bc2: f5 10 03  mov   a,$0310+x
0bc5: de e0 1b  cbne  $e0+x,$0be3
0bc8: 09 1a 1e  or    ($1e),($1a)
0bcb: f5 00 03  mov   a,$0300+x
0bce: 10 07     bpl   $0bd7
0bd0: fc        inc   y
0bd1: d0 04     bne   $0bd7
0bd3: e8 80     mov   a,#$80
0bd5: 2f 04     bra   $0bdb
0bd7: 60        clrc
0bd8: 95 01 03  adc   a,$0301+x
0bdb: d5 00 03  mov   $0300+x,a
0bde: 3f dd 0d  call  $0ddd
0be1: 2f 07     bra   $0bea
0be3: bb e0     inc   $e0+x
0be5: e8 ff     mov   a,#$ff
0be7: 3f e8 0d  call  $0de8
0bea: f4 b1     mov   a,$b1+x
0bec: f0 09     beq   $0bf7
0bee: e8 20     mov   a,#$20
0bf0: 8d 03     mov   y,#$03
0bf2: 9b b1     dec   $b1+x
0bf4: 3f 9b 0c  call  $0c9b
0bf7: e4 1a     mov   a,$1a
0bf9: 24 1e     and   a,$1e
0bfb: f0 47     beq   $0c44
0bfd: f5 21 03  mov   a,$0321+x
0c00: fd        mov   y,a
0c01: f5 20 03  mov   a,$0320+x
0c04: da 23     movw  $23,ya
0c06: 7d        mov   a,x
0c07: 9f        xcn   a
0c08: 5c        lsr   a
0c09: bc        inc   a
0c0a: c4 16     mov   $16,a
0c0c: eb 24     mov   y,$24
0c0e: f6 46 0c  mov   a,$0c46+y
0c11: 80        setc
0c12: b6 45 0c  sbc   a,$0c45+y
0c15: eb 23     mov   y,$23
0c17: cf        mul   ya
0c18: dd        mov   a,y
0c19: eb 24     mov   y,$24
0c1b: 60        clrc
0c1c: 96 45 0c  adc   a,$0c45+y
0c1f: fd        mov   y,a
0c20: f5 41 02  mov   a,$0241+x
0c23: cf        mul   ya
0c24: f5 41 03  mov   a,$0341+x
0c27: 1c        asl   a
0c28: 13 16 01  bbc0  $16,$0c2c
0c2b: 1c        asl   a
0c2c: dd        mov   a,y
0c2d: 90 03     bcc   $0c32
0c2f: 48 ff     eor   a,#$ff
0c31: bc        inc   a
0c32: eb 16     mov   y,$16
0c34: 3f f1 10  call  $10f1
0c37: 8d 18     mov   y,#$18
0c39: e8 00     mov   a,#$00
0c3b: 9a 23     subw  ya,$23
0c3d: da 23     movw  $23,ya
0c3f: 8b 16     dec   $16
0c41: 73 16 c8  bbc3  $16,$0c0c
0c44: 6f        ret

0c45: db $00,$06,$0c,$10,$15,$1b,$21,$26,$2c,$30,$35,$3b,$41,$45,$4b,$50,$56,$5c,$61,$65,$6b,$70,$75,$7b,$7f,$7f

0c5f: e4 29     mov   a,$29
0c61: 44 2a     eor   a,$2a
0c63: 5c        lsr   a
0c64: 5c        lsr   a
0c65: ed        notc
0c66: 6b 29     ror   $29
0c68: 6b 2a     ror   $2a
0c6a: 8b 29     dec   $29
0c6c: 6f        ret
0c6d: f5 81 02  mov   a,$0281+x
0c70: 68 6c     cmp   a,#$6c
0c72: 90 02     bcc   $0c76
0c74: e8 6b     mov   a,#$6b
0c76: c4 24     mov   $24,a
0c78: f5 80 02  mov   a,$0280+x
0c7b: c4 23     mov   $23,a
0c7d: 6f        ret
0c7e: ed        notc
0c7f: 6b 16     ror   $16
0c81: 10 03     bpl   $0c86
0c83: 48 ff     eor   a,#$ff
0c85: bc        inc   a
0c86: 8d 00     mov   y,#$00
0c88: 9e        div   ya,x
0c89: 2d        push  a
0c8a: e8 00     mov   a,#$00
0c8c: 9e        div   ya,x
0c8d: ee        pop   y
0c8e: f8 1b     mov   x,$1b
0c90: f3 16 07  bbc7  $16,$0c9a
0c93: da 25     movw  $25,ya
0c95: e8 00     mov   a,#$00
0c97: fd        mov   y,a
0c98: 9a 25     subw  ya,$25
0c9a: 6f        ret
0c9b: 09 1a 1e  or    ($1e),($1a)
0c9e: da 25     movw  $25,ya
0ca0: da 27     movw  $27,ya
0ca2: 4d        push  x
0ca3: ee        pop   y
0ca4: 60        clrc
0ca5: d0 0a     bne   $0cb1
0ca7: 98 1f 27  adc   $27,#$1f
0caa: e8 00     mov   a,#$00
0cac: d7 25     mov   ($25)+y,a
0cae: fc        inc   y
0caf: 2f 09     bra   $0cba
0cb1: 98 10 27  adc   $27,#$10
0cb4: 3f b8 0c  call  $0cb8
0cb7: fc        inc   y
0cb8: f7 25     mov   a,($25)+y
0cba: 97 27     adc   a,($27)+y
0cbc: d7 25     mov   ($25)+y,a
0cbe: 6f        ret
0cbf: f5 51 03  mov   a,$0351+x
0cc2: d0 18     bne   $0cdc
0cc4: f5 90 03  mov   a,$0390+x
0cc7: d0 13     bne   $0cdc
0cc9: f5 60 03  mov   a,$0360+x
0ccc: 75 61 03  cmp   a,$0361+x
0ccf: f0 06     beq   $0cd7
0cd1: e8 01     mov   a,#$01
0cd3: 74 a0     cmp   a,$a0+x
0cd5: d0 05     bne   $0cdc
0cd7: e4 1a     mov   a,$1a
0cd9: 0e 2e 00  tset1 $002e
0cdc: f2 17     clr7  $17
0cde: f4 d0     mov   a,$d0+x
0ce0: f0 21     beq   $0d03
0ce2: f4 d1     mov   a,$d1+x
0ce4: f0 04     beq   $0cea
0ce6: 9b d1     dec   $d1+x
0ce8: 2f 19     bra   $0d03
0cea: e2 17     set7  $17
0cec: e8 80     mov   a,#$80
0cee: 8d 02     mov   y,#$02
0cf0: 9b d0     dec   $d0+x
0cf2: 3f 9e 0c  call  $0c9e
0cf5: f4 d0     mov   a,$d0+x
0cf7: d0 0a     bne   $0d03
0cf9: 60        clrc
0cfa: f5 a1 02  mov   a,$02a1+x
0cfd: 95 71 02  adc   a,$0271+x
0d00: d5 80 02  mov   $0280+x,a
0d03: 3f 6d 0c  call  $0c6d
0d06: f4 c1     mov   a,$c1+x
0d08: f0 49     beq   $0d53
0d0a: f5 e0 02  mov   a,$02e0+x
0d0d: de c0 41  cbne  $c0+x,$0d51
0d10: f4 a1     mov   a,$a1+x
0d12: 75 e1 02  cmp   a,$02e1+x
0d15: d0 05     bne   $0d1c
0d17: f5 f1 02  mov   a,$02f1+x
0d1a: 2f 0b     bra   $0d27
0d1c: bb a1     inc   $a1+x
0d1e: fd        mov   y,a
0d1f: f0 02     beq   $0d23
0d21: f4 c1     mov   a,$c1+x
0d23: 60        clrc
0d24: 95 f0 02  adc   a,$02f0+x
0d27: d4 c1     mov   $c1+x,a
0d29: f5 d0 02  mov   a,$02d0+x
0d2c: 60        clrc
0d2d: 95 d1 02  adc   a,$02d1+x
0d30: d5 d0 02  mov   $02d0+x,a
0d33: c4 16     mov   $16,a
0d35: 1c        asl   a
0d36: 1c        asl   a
0d37: 90 02     bcc   $0d3b
0d39: 48 ff     eor   a,#$ff
0d3b: fd        mov   y,a
0d3c: f4 c1     mov   a,$c1+x
0d3e: 68 f1     cmp   a,#$f1
0d40: 90 05     bcc   $0d47
0d42: 28 0f     and   a,#$0f
0d44: cf        mul   ya
0d45: 2f 04     bra   $0d4b
0d47: cf        mul   ya
0d48: dd        mov   a,y
0d49: 8d 00     mov   y,#$00
0d4b: 3f c8 0d  call  $0dc8
0d4e: 5f 48 0b  jmp   $0b48
0d51: bb c0     inc   $c0+x
0d53: e3 17 f8  bbs7  $17,$0d4e
0d56: 6f        ret
0d57: f2 17     clr7  $17
0d59: f4 e1     mov   a,$e1+x
0d5b: f0 09     beq   $0d66
0d5d: f5 10 03  mov   a,$0310+x
0d60: de e0 03  cbne  $e0+x,$0d66
0d63: 3f d0 0d  call  $0dd0
0d66: f5 21 03  mov   a,$0321+x
0d69: fd        mov   y,a
0d6a: f5 20 03  mov   a,$0320+x
0d6d: da 23     movw  $23,ya
0d6f: f4 b1     mov   a,$b1+x
0d71: f0 0a     beq   $0d7d
0d73: f5 31 03  mov   a,$0331+x
0d76: fd        mov   y,a
0d77: f5 30 03  mov   a,$0330+x
0d7a: 3f b2 0d  call  $0db2
0d7d: f3 17 03  bbc7  $17,$0d83
0d80: 3f 06 0c  call  $0c06
0d83: f2 17     clr7  $17
0d85: 3f 6d 0c  call  $0c6d
0d88: f4 d0     mov   a,$d0+x
0d8a: f0 0e     beq   $0d9a
0d8c: f4 d1     mov   a,$d1+x
0d8e: d0 0a     bne   $0d9a
0d90: f5 91 02  mov   a,$0291+x
0d93: fd        mov   y,a
0d94: f5 90 02  mov   a,$0290+x
0d97: 3f b2 0d  call  $0db2
0d9a: f4 c1     mov   a,$c1+x
0d9c: f0 b5     beq   $0d53
0d9e: f5 e0 02  mov   a,$02e0+x
0da1: de c0 af  cbne  $c0+x,$0d53
0da4: eb 22     mov   y,$22
0da6: f5 d1 02  mov   a,$02d1+x
0da9: cf        mul   ya
0daa: dd        mov   a,y
0dab: 60        clrc
0dac: 95 d0 02  adc   a,$02d0+x
0daf: 5f 33 0d  jmp   $0d33
0db2: e2 17     set7  $17
0db4: cb 16     mov   $16,y
0db6: 3f 90 0c  call  $0c90
0db9: 6d        push  y
0dba: eb 22     mov   y,$22
0dbc: cf        mul   ya
0dbd: cb 25     mov   $25,y
0dbf: 8f 00 26  mov   $26,#$00
0dc2: eb 22     mov   y,$22
0dc4: ae        pop   a
0dc5: cf        mul   ya
0dc6: 7a 25     addw  ya,$25
0dc8: 3f 90 0c  call  $0c90
0dcb: 7a 23     addw  ya,$23
0dcd: da 23     movw  $23,ya
0dcf: 6f        ret
0dd0: e2 17     set7  $17
0dd2: eb 22     mov   y,$22
0dd4: f5 01 03  mov   a,$0301+x
0dd7: cf        mul   ya
0dd8: dd        mov   a,y
0dd9: 60        clrc
0dda: 95 00 03  adc   a,$0300+x
0ddd: 1c        asl   a
0dde: 90 02     bcc   $0de2
0de0: 48 ff     eor   a,#$ff
0de2: fb e1     mov   y,$e1+x
0de4: cf        mul   ya
0de5: dd        mov   a,y
0de6: 48 ff     eor   a,#$ff
0de8: eb 35     mov   y,$35
0dea: cf        mul   ya
0deb: f5 10 02  mov   a,$0210+x
0dee: cf        mul   ya
0def: f5 21 02  mov   a,$0221+x
0df2: cf        mul   ya
0df3: f5 91 03  mov   a,$0391+x
0df6: cf        mul   ya
0df7: f5 a0 03  mov   a,$03a0+x
0dfa: cf        mul   ya
0dfb: dd        mov   a,y
0dfc: cf        mul   ya
0dfd: dd        mov   a,y
0dfe: d5 41 02  mov   $0241+x,a
0e01: 6f        ret

; vcmd table (80-9d)
0e02: dw $0e5d		; 80 - set instrument/sample
0e04: dw $0ef1		; 81 - rest
0e06: dw $0efe		; 82 - set tempo
0e08: dw $0f02		; 83 - set tempo (multiple channels)
0e0a: dw $0f25		; 84 - set channel gain
0e0c: dw $0f34		; 85 - set release
0e0e: dw $0f39		; 86 - set attack
0e10: dw $0f53		; 87 - set panpot?
0e12: dw $0f6f		; 88 - set pan
0e14: dw $0f73		; 89 - set detune
0e16: dw $0f77		; 8a - set channel transpose
0e18: dw $0f7b		; 8b - set channel transpose (multiple channels)
0e1a: dw $0f9e		; 8c - set channel volume (absolute)
0e1c: dw $0fa9		; 8d - (2 bytes)
0e1e: dw $0fb8		; 8e - clear 8d value
0e20: dw $0fbd		; 8f - (2 bytes)
0e22: dw $0fd4		; 90
0e24: dw $0fe4		; 91 - clear 90 value
0e28: dw $0ff1		; 92 - pitch bend (multiple channels)
0e2a: dw $1002		; 93 - pitch bend (removed - useless)
0e2c: dw $1003		; 94 - disable pitch bend
0e2e: dw $1009		; 95 - set echo volume
0e30: dw $103b		; 96 - set echo delay
0e32: dw $104e		; 97 - disable echo
0e34: dw $1058		; 98 - (2 bytes)
0e36: dw $1079		; 99 - (2 bytes)
0e38: dw $1087		; 9a - (multiple channels)
0e3a: dw $10c6		; 9b - set vibrato
0e3c: dw $10ca		; 9c - set delay
0e3c: dw $10ce		; 9d - set channel volume (multiple channels)

0e3e: 1c        asl   a			; dispatch vcmd (80-9d)
0e3f: fd        mov   y,a
0e40: fc        inc   y
0e41: f6 02 0e  mov   a,$0e02+y
0e44: 2d        push  a
0e45: dc        dec   y
0e46: f6 02 0e  mov   a,$0e02+y
0e49: 2d        push  a

0e4a: e7 80     mov   a,($80+x)		; update/increment sequence pointer
0e4c: bb 80     inc   $80+x
0e4e: d0 02     bne   $0e52
0e50: bb 81     inc   $81+x
0e52: fd        mov   y,a
0e53: 6f        ret

0e54: e7 80     mov   a,($80+x)
0e56: bb 80     inc   $80+x
0e58: d0 02     bne   $0e5c
0e5a: bb 81     inc   $81+x
0e5c: 6f        ret

0e5d: 75 11 02  cmp   a,$0211+x		; vcmd 80 - set instrument/sample
0e60: d0 01     bne   $0e63
0e62: 6f        ret
0e63: d5 11 02  mov   $0211+x,a
0e66: 8d 10     mov   y,#$10
0e68: cf        mul   ya
0e69: da 2b     movw  $2b,ya
0e6b: 60        clrc
0e6c: 89 04 2b  adc   ($2b),($04)
0e6f: 89 05 2c  adc   ($2c),($05)
0e72: e4 1a     mov   a,$1a
0e74: 4e 30 00  tclr1 $0030
0e77: 8d 00     mov   y,#$00
0e79: f7 2b     mov   a,($2b)+y
0e7b: 08 80     or    a,#$80
0e7d: c4 12     mov   $12,a
0e7f: fc        inc   y
0e80: f7 2b     mov   a,($2b)+y
0e82: c4 13     mov   $13,a
0e84: fc        inc   y
0e85: f7 2b     mov   a,($2b)+y
0e87: d5 10 02  mov   $0210+x,a
0e8a: fc        inc   y
0e8b: f7 2b     mov   a,($2b)+y
0e8d: 68 80     cmp   a,#$80
0e8f: 90 0d     bcc   $0e9e
0e91: 28 1f     and   a,#$1f
0e93: 38 20 2f  and   $2f,#$20
0e96: 0e 2f 00  tset1 $002f
0e99: 09 1a 30  or    ($30),($1a)
0e9c: e8 00     mov   a,#$00
0e9e: c4 14     mov   $14,a
0ea0: fc        inc   y
0ea1: f7 2b     mov   a,($2b)+y
0ea3: d5 70 02  mov   $0270+x,a
0ea6: fc        inc   y
0ea7: f7 2b     mov   a,($2b)+y
0ea9: d5 71 02  mov   $0271+x,a
0eac: 8d 0c     mov   y,#$0c
0eae: f7 2b     mov   a,($2b)+y
0eb0: d5 b0 03  mov   $03b0+x,a
0eb3: fc        inc   y
0eb4: f7 2b     mov   a,($2b)+y
0eb6: d5 d1 02  mov   $02d1+x,a
0eb9: fc        inc   y
0eba: f7 2b     mov   a,($2b)+y
0ebc: d4 c1     mov   $c1+x,a
0ebe: d5 f1 02  mov   $02f1+x,a
0ec1: fc        inc   y
0ec2: f7 2b     mov   a,($2b)+y
0ec4: d5 e0 02  mov   $02e0+x,a
0ec7: e8 00     mov   a,#$00
0ec9: d5 e1 02  mov   $02e1+x,a
0ecc: d5 90 03  mov   $0390+x,a
0ecf: 7d        mov   a,x
0ed0: 9f        xcn   a
0ed1: 5c        lsr   a
0ed2: 08 04     or    a,#$04
0ed4: fd        mov   y,a
0ed5: e4 14     mov   a,$14
0ed7: cb f2     mov   $f2,y
0ed9: c4 f3     mov   $f3,a
0edb: fc        inc   y
0edc: e4 12     mov   a,$12
0ede: cb f2     mov   $f2,y
0ee0: c4 f3     mov   $f3,a
0ee2: fc        inc   y
0ee3: e4 13     mov   a,$13
0ee5: cb f2     mov   $f2,y
0ee7: c4 f3     mov   $f3,a
0ee9: fc        inc   y
0eea: e8 00     mov   a,#$00
0eec: cb f2     mov   $f2,y
0eee: c4 f3     mov   $f3,a
0ef0: 6f        ret

0ef1: 1c        asl   a			; vcmd 81 - rest
0ef2: d4 a0     mov   $a0+x,a
0ef4: e4 1a     mov   a,$1a
0ef6: 0e 2e 00  tset1 $002e
0ef9: ae        pop   a
0efa: ae        pop   a
0efb: 5f 41 09  jmp   $0941

0efe: d5 00 02  mov   $0200+x,a		; vcmd 82 - set tempo
0f01: 6f        ret

0f02: c4 1f     mov   $1f,a		; vcmd 83 - set tempo (multiple channels)
0f04: 3f 4a 0e  call  $0e4a
0f07: c4 45     mov   $45,a
0f09: 4d        push  x
0f0a: cd 00     mov   x,#$00
0f0c: 8f 01 20  mov   $20,#$01
0f0f: e4 1f     mov   a,$1f
0f11: 24 20     and   a,$20
0f13: f0 05     beq   $0f1a
0f15: e4 45     mov   a,$45
0f17: d5 00 02  mov   $0200+x,a
0f1a: 3d        inc   x
0f1b: 3d        inc   x
0f1c: 0b 20     asl   $20
0f1e: d0 ef     bne   $0f0f
0f20: ce        pop   x
0f21: 3f 4a 0e  call  $0e4a
0f24: 6f        ret

0f25: 28 01     and   a,#$01		; vcmd 84 - set channel gain
0f27: f0 07     beq   $0f30
0f29: f5 90 03  mov   a,$0390+x
0f2c: 30 05     bmi   $0f33
0f2e: e8 01     mov   a,#$01
0f30: d5 90 03  mov   $0390+x,a
0f33: 6f        ret

0f34: 1c        asl   a			; vcmd 85 - set release
0f35: d5 61 03  mov   $0361+x,a
0f38: 6f        ret

0f39: e8 00     mov   a,#$00		; vcmd 86 - set attack
0f3b: d5 50 03  mov   $0350+x,a
0f3e: dd        mov   a,y
0f3f: d5 41 03  mov   $0341+x,a
0f42: 28 1f     and   a,#$1f
0f44: 68 19     cmp   a,#$19
0f46: 90 02     bcc  33 $0f4a
0f48: e8 18     mov   a,#$18
0f4a: d5 21 03  mov   $0321+x,a
0f4d: e8 00     mov   a,#$00
0f4f: d5 20 03  mov   $0320+x,a
0f52: 6f        ret

0f53: d4 b1     mov   $b1+x,a		; vcmd 87 - set panpot?
0f55: 2d        push  a
0f56: 3f 4a 0e  call  $0e4a
0f59: d5 40 03  mov   $0340+x,a
0f5c: 80        setc333
0f5d: b5 21 03  sbc   a,$0321+x
0f60: ce        pop   x
0f61: 3f 7e 0c  call  $0c7e
0f64: d5 30 03  mov   $0330+x,a
0f67: dd        mov   a,y
0f68: d5 31 03  mov   $0331+x,a
0f6b: 3f 4a 0e  call  $0e4a
0f6e: 6f        ret

0f6f: d5 50 03  mov   $0350+x,a		; vcmd 88 - set pan
0f72: 6f        ret

0f73: d5 a1 02  mov   $02a1+x,a		; vcmd 89 - set detune
0f76: 6f        ret

0f77: d5 61 02  mov   $0261+x,a		; vcmd 8a - set channel transpose
0f7a: 6f        ret

0f7b: c4 1f     mov   $1f,a		; vcmd 8b - set channel transpose (multiple channels)
0f7d: 3f 4a 0e  call  $0e4a
0f80: c4 03     mov   $03,a
0f82: 4d        push  x
0f83: cd 00     mov   x,#$00
0f85: 8f 01 20  mov   $20,#$01
0f88: e4 1f     mov   a,$1f
0f8a: 24 20     and   a,$20
0f8c: f0 05     beq   $0f93
0f8e: e4 03     mov   a,$03
0f90: d5 60 02  mov   $0260+x,a
0f93: 3d        inc   x
0f94: 3d        inc   x
0f95: 0b 20     asl   $20
0f97: d0 ef     bne   $0f88
0f99: ce        pop   x
0f9a: 3f 4a 0e  call  $0e4a
0f9d: 6f        ret

0f9e: d5 21 02  mov   $0221+x,a		; vcmd 8c - set channel volume (absolute)
0fa1: e8 00     mov   a,#$00
0fa3: d5 20 02  mov   $0220+x,a
0fa6: d4 b0     mov   $b0+x,a
0fa8: 6f        ret

0fa9: d5 01 03  mov   $0301+x,a		; vcmd 8d - (2 bytes)
0fac: 3f 4a 0e  call  $0e4a
0faf: d4 e1     mov   $e1+x,a
0fb1: 3f 4a 0e  call  $0e4a
0fb4: d5 10 03  mov   $0310+x,a
0fb7: 6f        ret

0fb8: e8 00     mov   a,#$00		; vcmd 8e - clear 8d value
0fba: d4 e1     mov   $e1+x,a
0fbc: 6f        ret

0fbd: d5 d1 02  mov   $02d1+x,a		; vcmd 8f - (2 bytes)
0fc0: 3f 4a 0e  call  $0e4a
0fc3: d4 c1     mov   $c1+x,a
0fc5: d5 f1 02  mov   $02f1+x,a
0fc8: 3f 4a 0e  call  $0e4a
0fcb: d5 e0 02  mov   $02e0+x,a
0fce: e8 00     mov   a,#$00
0fd0: d5 e1 02  mov   $02e1+x,a
0fd3: 6f        ret

0fd4: d5 e1 02  mov   $02e1+x,a		; vcmd 90
0fd7: 2d        push  a
0fd8: 8d 00     mov   y,#$00
0fda: f4 c1     mov   a,$c1+x
0fdc: ce        pop   x
0fdd: 9e        div   ya,x
0fde: f8 1b     mov   x,$1b
0fe0: d5 f0 02  mov   $02f0+x,a
0fe3: 6f        ret

0fe4: e8 00     mov   a,#$00		; vcmd 91 - clear 90 value
0fe6: d4 c1     mov   $c1+x,a
0fe8: d5 f1 02  mov   $02f1+x,a
0feb: e8 00     mov   a,#$00
0fed: d5 e1 02  mov   $02e1+x,a
0ff0: 6f        ret

0ff1: dd        mov   a,y		; vcmd 92 - pitch bend (multiple channels)
0ff2: d5 b0 02  mov   $02b0+x,a
0ff5: 3f 4a 0e  call  $0e4a
0ff8: d5 c1 02  mov   $02c1+x,a
0ffb: 3f 4a 0e  call  $0e4a
0ffe: d5 b1 02  mov   $02b1+x,a
1001: 6f        ret

1002: 6f        ret			; vcmd 93 - nop

1003: e8 00     mov   a,#$00		; vcmd 94 - disable pitch bend
1005: d5 b0 02  mov   $02b0+x,a
1008: 6f        ret

1009: 3f 50 08  call  $0850		; vcmd 95 - set echo volume
100c: 3f 4a 0e  call  $0e4a
100f: 8d 08     mov   y,#$08
1011: cf        mul   ya
1012: 5d        mov   x,a
1013: 8d 0f     mov   y,#$0f
1015: f5 2b 10  mov   a,$102b+x
1018: 3f f1 10  call  $10f1
101b: 3d        inc   x
101c: dd        mov   a,y
101d: 60        clrc
101e: 88 10     adc   a,#$10
1020: fd        mov   y,a
1021: 10 f2     bpl   $1015
1023: f8 1b     mov   x,$1b
1025: 3f 4a 0e  call  $0e4a
1028: c4 33     mov   $33,a
102a: 6f        ret

102b: db $7f,$00,$00,$00,$00,$00,$00,$00,$ff,$08,$17,$24,$24,$17,$08,$ff

103b: c4 31     mov   $31,a		; vcmd 96 - set echo delay
103d: 3f 4a 0e  call  $0e4a
1040: e8 00     mov   a,#$00
1042: da 41     movw  $41,ya
1044: 3f 4a 0e  call  $0e4a
1047: e8 00     mov   a,#$00
1049: da 43     movw  $43,ya
104b: b2 2f     clr5  $2f
104d: 6f        ret

104e: e8 00     mov   a,#$00		; vcmd 97 - disable echo
1050: fd        mov   y,a
1051: da 41     movw  $41,ya
1053: da 43     movw  $43,ya
1055: a2 2f     set5  $2f
1057: 6f        ret

1058: c4 3e     mov   $3e,a		; vcmd 98 - (2 bytes)
105a: 3f 4a 0e  call  $0e4a
105d: c4 3f     mov   $3f,a
105f: 80        setc
1060: a4 42     sbc   a,$42
1062: f8 3e     mov   x,$3e
1064: 3f 7e 0c  call  $0c7e
1067: da 3a     movw  $3a,ya
1069: 3f 4a 0e  call  $0e4a
106c: c4 40     mov   $40,a
106e: 80        setc
106f: a4 44     sbc   a,$44
1071: f8 3e     mov   x,$3e
1073: 3f 7e 0c  call  $0c7e
1076: da 3c     movw  $3c,ya
1078: 6f        ret

1079: c4 21     mov   $21,a		; vcmd 99 - (2 bytes)
107b: 3f 4a 0e  call  $0e4a
107e: c4 15     mov   $15,a
1080: 3f 4a 0e  call  $0e4a
1083: 3f aa 10  call  $10aa
1086: 6f        ret

1087: c4 1f     mov   $1f,a		; vcmd 9a - (multiple channels)
1089: 3f 4a 0e  call  $0e4a
108c: c4 21     mov   $21,a
108e: 3f 4a 0e  call  $0e4a
1091: c4 15     mov   $15,a
1093: 4d        push  x
1094: cd 00     mov   x,#$00
1096: 8f 01 20  mov   $20,#$01
1099: e4 1f     mov   a,$1f
109b: 24 20     and   a,$20
109d: f0 03     beq   $10a2
109f: 3f aa 10  call  $10aa
10a2: 3d        inc   x
10a3: 3d        inc   x
10a4: 0b 20     asl   $20
10a6: d0 f1     bne   $1099
10a8: ce        pop   x
10a9: 6f        ret

10aa: 4d        push  x
10ab: e4 21     mov   a,$21
10ad: d4 b0     mov   $b0+x,a
10af: 2d        push  a
10b0: e4 15     mov   a,$15
10b2: d5 40 02  mov   $0240+x,a
10b5: 80        setc
10b6: b5 21 02  sbc   a,$0221+x
10b9: ce        pop   x
10ba: 3f 7e 0c  call  $0c7e
10bd: ce        pop   x
10be: d5 30 02  mov   $0230+x,a
10c1: dd        mov   a,y
10c2: d5 31 02  mov   $0231+x,a
10c5: 6f        ret

10c6: d5 80 03  mov   $0380+x,a		; vcmd 9b - set vibrato
10c9: 6f        ret

10ca: d5 71 03  mov   $0371+x,a		; vcmd 9c - set delay
10cd: 6f        ret

10ce: c4 1f     mov   $1f,a		; vcmd 9d - set channel volume (multiple channels)
10d0: 3f 4a 0e  call  $0e4a		; update pointer
10d3: c4 21     mov   $21,a		
10d5: 4d        push  x
10d6: cd 00     mov   x,#$00
10d8: 8f 01 20  mov   $20,#$01
10db: e4 1f     mov   a,$1f
10dd: 24 20     and   a,$20
10df: f0 05     beq   $10e6
10e1: e4 21     mov   a,$21
10e3: d5 91 03  mov   $0391+x,a
10e6: 3d        inc   x
10e7: 3d        inc   x
10e8: 0b 20     asl   $20
10ea: d0 ef     bne   $10db
10ec: ce        pop   x
10ed: 3f 4a 0e  call  $0e4a
10f0: 6f        ret

10f1: cc f2 00  mov   $00f2,y		; set dsp register address
10f4: c5 f3 00  mov   $00f3,a		; set dsp register data
10f7: 6f        ret

10f8: 8f 00 10  mov   $10,#$00
10fb: e5 0c 13  mov   a,$130c
10fe: ec 0d 13  mov   y,$130d
1101: da 25     movw  $25,ya
1103: 3f 11 11  call  $1111
1106: 8f 40 10  mov   $10,#$40
1109: e5 0e 13  mov   a,$130e
110c: ec 0f 13  mov   y,$130f
110f: da 25     movw  $25,ya
1111: 8f 3f 11  mov   $11,#$3f
1114: e4 11     mov   a,$11
1116: 1c        asl   a
1117: fd        mov   y,a
1118: f7 25     mov   a,($25)+y
111a: c4 27     mov   $27,a
111c: fc        inc   y
111d: f7 25     mov   a,($25)+y
111f: c4 28     mov   $28,a
1121: e4 11     mov   a,$11
1123: 60        clrc
1124: 84 10     adc   a,$10
1126: 8d 04     mov   y,#$04
1128: cf        mul   ya
1129: da 2b     movw  $2b,ya
112b: 60        clrc
112c: 98 04 2c  adc   $2c,#$04
112f: e4 27     mov   a,$27
1131: 60        clrc
1132: 88 02     adc   a,#$02
1134: 8d 00     mov   y,#$00
1136: d7 2b     mov   ($2b)+y,a
1138: fc        inc   y
1139: e4 28     mov   a,$28
113b: 88 00     adc   a,#$00
113d: d7 2b     mov   ($2b)+y,a
113f: dc        dec   y
1140: f7 27     mov   a,($27)+y
1142: 60        clrc
1143: 97 2b     adc   a,($2b)+y
1145: 8d 02     mov   y,#$02
1147: d7 2b     mov   ($2b)+y,a
1149: dc        dec   y
114a: f7 27     mov   a,($27)+y
114c: 97 2b     adc   a,($2b)+y
114e: 8d 03     mov   y,#$03
1150: d7 2b     mov   ($2b)+y,a
1152: 8b 11     dec   $11
1154: 10 be     bpl   $1114
1156: 6f        ret
1157: 8f 00 25  mov   $25,#$00
115a: 8f 13 26  mov   $26,#$13
115d: 60        clrc
115e: e4 25     mov   a,$25
1160: 88 10     adc   a,#$10
1162: c4 27     mov   $27,a
1164: e4 26     mov   a,$26
1166: 88 00     adc   a,#$00
1168: c4 28     mov   $28,a
116a: ba 27     movw  ya,$27
116c: da 04     movw  $04,ya
116e: 8d 00     mov   y,#$00
1170: 3f 92 11  call  $1192
1173: da 06     movw  $06,ya
1175: 8d 02     mov   y,#$02
1177: 3f 92 11  call  $1192
117a: da 08     movw  $08,ya
117c: 8d 04     mov   y,#$04
117e: 3f 92 11  call  $1192
1181: da 0a     movw  $0a,ya
1183: 8d 06     mov   y,#$06
1185: 3f 92 11  call  $1192
1188: da 0c     movw  $0c,ya
118a: 8d 08     mov   y,#$08
118c: 3f 92 11  call  $1192
118f: da 0e     movw  $0e,ya
1191: 6f        ret

1192: f7 25     mov   a,($25)+y
1194: 2d        push  a
1195: fc        inc   y
1196: f7 25     mov   a,($25)+y
1198: fd        mov   y,a
1199: ae        pop   a
119a: 7a 27     addw  ya,$27
119c: da 27     movw  $27,ya
119e: 6f        ret
119f: e4 f7     mov   a,$f7
11a1: 64 01     cmp   a,$01
11a3: d0 01     bne   $11a6
11a5: 6f        ret


11a6: c4 01     mov   $01,a
11a8: e4 f4     mov   a,$f4
11aa: 68 60     cmp   a,#$60
11ac: 90 21     bcc   $11cf
11ae: 68 80     cmp   a,#$80
11b0: f0 24     beq   $11d6
11b2: 68 81     cmp   a,#$81
11b4: f0 25     beq   $11db
11b6: 68 82     cmp   a,#$82
11b8: f0 33     beq   $11ed
11ba: 68 83     cmp   a,#$83
11bc: f0 3e     beq   $11fc
11be: 68 84     cmp   a,#$84
11c0: f0 3f     beq   $1201
11c2: 68 85     cmp   a,#$85
11c4: f0 5f     beq   $1225
11c6: 68 86     cmp   a,#$86
11c8: f0 56     beq   $1220

11ca: e4 01     mov   a,$01
11cc: c4 f4     mov   $f4,a
11ce: 6f        ret

11cf: c4 00     mov   $00,a
11d1: fa f5 02  mov   ($02),($f5)
11d4: 2f f4     bra   $11ca

11d6: 3f 0f 08  call  $080f
11d9: 2f ef     bra   $11ca

11db: 8f 60 36  mov   $36,#$60
11de: 8f 00 37  mov   $37,#$00
11e1: 80        setc
11e2: a4 35     sbc   a,$35
11e4: f8 36     mov   x,$36
11e6: 3f 7e 0c  call  $0c7e
11e9: da 38     movw  $38,ya
11eb: 2f dd     bra   $11ca

11ed: e8 01     mov   a,#$01
11ef: 3f 50 08  call  $0850
11f2: e8 ff     mov   a,#$ff
11f4: 8d 6c     mov   y,#$6c
11f6: 3f f1 10  call  $10f1
11f9: 5f c0 ff  jmp   $ffc0

11fc: fa f5 4b  mov   ($4b),($f5)
11ff: 2f c9     bra   $11ca

1201: fa f5 25  mov   ($25),($f5)
1204: fa f6 26  mov   ($26),($f6)
1207: e4 01     mov   a,$01
1209: c4 f4     mov   $f4,a
120b: ab 01     inc   $01
120d: e4 01     mov   a,$01
120f: 8d 10     mov   y,#$10
1211: 64 f7     cmp   a,$f7
1213: f0 03     beq   $1218
1215: dc        dec   y
1216: d0 f9     bne   $1211
1218: e4 f5     mov   a,$f5
121a: 8d 00     mov   y,#$00
121c: d7 25     mov   ($25)+y,a
121e: 2f aa     bra   $11ca

1220: fa f5 4e  mov   ($4e),($f5)
1223: 2f a5     bra   $11ca

1225: cd 00     mov   x,#$00
1227: f5 60 03  mov   a,$0360+x
122a: 3f 75 12  call  $1275
122d: f4 91     mov   a,$91+x
122f: 3f 75 12  call  $1275
1232: f5 11 02  mov   a,$0211+x
1235: 3f 75 12  call  $1275
1238: f5 81 02  mov   a,$0281+x
123b: 3f 75 12  call  $1275
123e: f5 61 03  mov   a,$0361+x
1241: 3f 75 12  call  $1275
1244: f5 21 02  mov   a,$0221+x
1247: 3f 75 12  call  $1275
124a: f5 41 03  mov   a,$0341+x
124d: 3f 75 12  call  $1275
1250: 3d        inc   x
1251: 3d        inc   x
1252: c8 10     cmp   x,#$10
1254: 90 d1     bcc   $1227
1256: e4 45     mov   a,$45
1258: 3f 75 12  call  $1275
125b: e4 46     mov   a,$46
125d: fa 47 26  mov   ($26),($47)
1260: 4b 26     lsr   $26
1262: 7c        ror   a
1263: 3f 75 12  call  $1275
1266: e4 26     mov   a,$26
1268: 04 4a     or    a,$4a
126a: 3f 75 12  call  $1275
126d: e4 03     mov   a,$03
126f: 3f 75 12  call  $1275
1272: 5f ca 11  jmp   $11ca
1275: c4 f5     mov   $f5,a
1277: e4 01     mov   a,$01
1279: c4 f4     mov   $f4,a
127b: ab 01     inc   $01
127d: e4 01     mov   a,$01
127f: 8d 10     mov   y,#$10
1281: 64 f7     cmp   a,$f7
1283: f0 03     beq   $1288
1285: dc        dec   y
1286: d0 f9     bne   $1281
1288: 6f        ret

