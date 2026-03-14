0600: 20        clrp			; clear ram variables
0601: cd ff     mov   x,#$ff
0603: bd        mov   sp,x
0604: e8 00     mov   a,#$00		; EVOL(L)
0606: 8d 2c     mov   y,#$2c
0608: 3f 41 10  call  $1041
060b: 8d 3c     mov   y,#$3c		; EVOL(R)
060d: 3f 41 10  call  $1041
0610: 8d 0c     mov   y,#$0c		; MVOL(L)
0612: 3f 41 10  call  $1041
0615: 8d 1c     mov   y,#$1c		; MVOL(R)
0617: 3f 41 10  call  $1041
061a: 8d 2d     mov   y,#$2d		; PMON
061c: 3f 41 10  call  $1041
061f: cd 07     mov   x,#$07		; GAIN
0621: 8d 00     mov   y,#$00
0623: 7d        mov   a,x
0624: 9f        xcn   a
0625: c5 f2 00  mov   $00f2,a
0628: cc f3 00  mov   $00f3,y
062b: bc        inc   a
062c: c5 f2 00  mov   $00f2,a
062f: cc f3 00  mov   $00f3,y
0632: 1d        dec   x
0633: 10 ee     bpl   $0623
0635: cd 00     mov   x,#$00
0637: 7d        mov   a,x
0638: af        mov   (x)+,a
0639: c8 f0     cmp   x,#$f0
063b: d0 fb     bne   $0638
063d: 5d        mov   x,a
063e: d5 00 01  mov   $0100+x,a
0641: d5 00 02  mov   $0200+x,a
0644: d5 00 03  mov   $0300+x,a
0647: 3d        inc   x
0648: d0 f4     bne   $063e
064a: e8 04     mov   a,#$04
064c: 8d 5d     mov   y,#$5d
064e: cc f2 00  mov   $00f2,y
0651: c5 f3 00  mov   $00f3,a
0654: 3f 48 10  call  $1048
0657: 3f a7 10  call  $10a7
065a: 3f f3 07  call  $07f3
065d: e8 90     mov   a,#$90
065f: c5 f1 00  mov   $00f1,a
0662: e8 20     mov   a,#$20
0664: c5 fa 00  mov   $00fa,a
0667: e8 81     mov   a,#$81
0669: c5 f1 00  mov   $00f1,a
066c: 8f 00 f4  mov   $f4,#$00
066f: e4 f6     mov   a,$f6
0671: f0 fc     beq   $066f
0673: e8 ff     mov   a,#$ff
0675: c4 01     mov   $01,a
0677: c4 f4     mov   $f4,a
0679: e4 2e     mov   a,$2e
067b: 8d 5c     mov   y,#$5c
067d: 3f 41 10  call  $1041
0680: e8 00     mov   a,#$00
0682: c4 2e     mov   $2e,a
0684: e3 1c 28  bbs7  $1c,$06af
0687: e4 2f     mov   a,$2f
0689: 8d 6c     mov   y,#$6c
068b: 3f 41 10  call  $1041
068e: 69 1d 1c  cmp   ($1c),($1d)
0691: d0 1c     bne   $06af
0693: e4 31     mov   a,$31
0695: 8d 4d     mov   y,#$4d
0697: 3f 41 10  call  $1041
069a: e4 33     mov   a,$33
069c: 8d 0d     mov   y,#$0d
069e: 3f 41 10  call  $1041
06a1: e4 42     mov   a,$42
06a3: 8d 2c     mov   y,#$2c
06a5: 3f 41 10  call  $1041
06a8: e4 44     mov   a,$44
06aa: 8d 3c     mov   y,#$3c
06ac: 3f 41 10  call  $1041
06af: e4 30     mov   a,$30
06b1: 8d 3d     mov   y,#$3d
06b3: 3f 41 10  call  $1041
06b6: e8 00     mov   a,#$00
06b8: 8d 5c     mov   y,#$5c
06ba: 3f 41 10  call  $1041
06bd: e4 2d     mov   a,$2d
06bf: 8d 4c     mov   y,#$4c
06c1: 3f 41 10  call  $1041
06c4: e8 00     mov   a,#$00
06c6: c4 2d     mov   $2d,a
06c8: 3f ef 10  call  $10ef
06cb: ec fd 00  mov   y,$00fd
06ce: f0 f8     beq   $06c8
06d0: dd        mov   a,y
06d1: 60        clrc
06d2: 84 19     adc   a,$19
06d4: 68 04     cmp   a,#$04
06d6: 90 09     bcc   $06e1
06d8: 69 1d 1c  cmp   ($1c),($1d)
06db: f0 02     beq   $06df
06dd: ab 1c     inc   $1c
06df: e8 00     mov   a,#$00
06e1: c4 19     mov   $19,a
06e3: e8 80     mov   a,#$80
06e5: cf        mul   ya
06e6: ad 00     cmp   y,#$00
06e8: f0 05     beq   $06ef
06ea: e8 00     mov   a,#$00
06ec: 80        setc
06ed: 2f 03     bra   $06f2
06ef: 60        clrc
06f0: 84 22     adc   a,$22
06f2: c4 22     mov   $22,a
06f4: b0 15     bcs   $070b
06f6: cd 00     mov   x,#$00
06f8: 8f 01 1a  mov   $1a,#$01
06fb: f4 50     mov   a,$50+x
06fd: f0 03     beq   $0702
06ff: 3f cc 0c  call  $0ccc
0702: 3d        inc   x
0703: 3d        inc   x
0704: 0b 1a     asl   $1a
0706: d0 f3     bne   $06fb
0708: 5f 79 06  jmp   $0679
070b: 3f 6f 08  call  $086f
070e: 3f 14 07  call  $0714
0711: 5f 79 06  jmp   $0679
0714: e4 00     mov   a,$00
0716: 10 01     bpl   $0719
0718: 6f        ret
0719: 8d 09     mov   y,#$09
071b: cf        mul   ya
071c: da 25     movw  $25,ya
071e: 60        clrc
071f: 89 0e 25  adc   ($25),($0e)
0722: 89 0f 26  adc   ($26),($0f)
0725: 8f ff 00  mov   $00,#$ff
0728: 8d 00     mov   y,#$00
072a: f7 25     mov   a,($25)+y
072c: c4 17     mov   $17,a
072e: 28 7f     and   a,#$7f
0730: c4 15     mov   $15,a
0732: 8f 00 36  mov   $36,#$00
0735: 8f 00 3e  mov   $3e,#$00
0738: cd 0e     mov   x,#$0e
073a: 8f 80 1a  mov   $1a,#$80
073d: 7d        mov   a,x
073e: 5c        lsr   a
073f: fd        mov   y,a
0740: fc        inc   y
0741: f7 25     mov   a,($25)+y
0743: 68 ff     cmp   a,#$ff
0745: f0 46     beq   $078d
0747: c4 18     mov   $18,a
0749: f5 11 03  mov   a,$0311+x
074c: 64 15     cmp   a,$15
074e: 90 3d     bcc   $078d
0750: 3f a6 07  call  $07a6
0753: e4 15     mov   a,$15
0755: d5 11 03  mov   $0311+x,a
0758: e4 02     mov   a,$02
075a: d5 a0 03  mov   $03a0+x,a
075d: e8 ff     mov   a,#$ff
075f: d4 50     mov   $50+x,a
0761: e4 17     mov   a,$17
0763: 10 0c     bpl   $0771
0765: d5 70 03  mov   $0370+x,a
0768: e4 18     mov   a,$18
076a: d4 91     mov   $91+x,a
076c: 3f ee 09  call  $09ee
076f: 2f 1c     bra   $078d
0771: e4 18     mov   a,$18
0773: 1c        asl   a
0774: fd        mov   y,a
0775: 60        clrc
0776: e4 0c     mov   a,$0c
0778: 97 0a     adc   a,($0a)+y
077a: d4 60     mov   $60+x,a
077c: d4 70     mov   $70+x,a
077e: fc        inc   y
077f: e4 0d     mov   a,$0d
0781: 97 0a     adc   a,($0a)+y
0783: d4 61     mov   $61+x,a
0785: d4 71     mov   $71+x,a
0787: 3f 8b 09  call  $098b
078a: 3f ee 09  call  $09ee
078d: 4b 1a     lsr   $1a
078f: 1d        dec   x
0790: 1d        dec   x
0791: 10 aa     bpl   $073d
0793: e8 7f     mov   a,#$7f
0795: 8d 0c     mov   y,#$0c
0797: cc f2 00  mov   $00f2,y
079a: c5 f3 00  mov   $00f3,a
079d: 8d 1c     mov   y,#$1c
079f: cc f2 00  mov   $00f2,y
07a2: c5 f3 00  mov   $00f3,a
07a5: 6f        ret
07a6: e8 ff     mov   a,#$ff
07a8: d5 21 02  mov   $0221+x,a
07ab: d5 91 03  mov   $0391+x,a
07ae: d5 11 03  mov   $0311+x,a
07b1: d5 00 02  mov   $0200+x,a
07b4: d5 01 02  mov   $0201+x,a
07b7: 8d 0c     mov   y,#$0c
07b9: 3f a8 0e  call  $0ea8
07bc: e8 00     mov   a,#$00
07be: d5 11 02  mov   $0211+x,a
07c1: d5 a1 02  mov   $02a1+x,a
07c4: d5 61 02  mov   $0261+x,a
07c7: d5 51 03  mov   $0351+x,a
07ca: d5 90 03  mov   $0390+x,a
07cd: d5 b0 02  mov   $02b0+x,a
07d0: d4 51     mov   $51+x,a
07d2: d4 c0     mov   $c0+x,a
07d4: d4 a1     mov   $a1+x,a
07d6: d4 c1     mov   $c1+x,a
07d8: d5 00 03  mov   $0300+x,a
07db: d4 e0     mov   $e0+x,a
07dd: d4 e1     mov   $e1+x,a
07df: d4 b0     mov   $b0+x,a
07e1: d4 b1     mov   $b1+x,a
07e3: d5 70 03  mov   $0370+x,a
07e6: e4 1a     mov   a,$1a
07e8: 4e 2d 00  tclr1 $002d
07eb: 0e 2e 00  tset1 $002e
07ee: e8 01     mov   a,#$01
07f0: d4 a0     mov   $a0+x,a
07f2: 6f        ret
07f3: cd 0e     mov   x,#$0e
07f5: e8 00     mov   a,#$00
07f7: d4 50     mov   $50+x,a
07f9: d5 11 02  mov   $0211+x,a
07fc: e8 ff     mov   a,#$ff
07fe: d5 11 03  mov   $0311+x,a
0801: 1d        dec   x
0802: 1d        dec   x
0803: 10 f0     bpl   $07f5
0805: e8 00     mov   a,#$00
0807: 8d 00     mov   y,#$00
0809: da 41     movw  $41,ya
080b: da 43     movw  $43,ya
080d: 3f 28 08  call  $0828
0810: a2 2f     set5  $2f
0812: 8f ff 00  mov   $00,#$ff
0815: 8f ff 2e  mov   $2e,#$ff
0818: 8f 00 36  mov   $36,#$00
081b: 8f 00 3e  mov   $3e,#$00
081e: 8f 00 49  mov   $49,#$00
0821: 8f ff 4a  mov   $4a,#$ff
0824: 8f 00 2d  mov   $2d,#$00
0827: 6f        ret
0828: c4 1d     mov   $1d,a
082a: 8d 7d     mov   y,#$7d
082c: cc f2 00  mov   $00f2,y
082f: e5 f3 00  mov   a,$00f3
0832: 28 0f     and   a,#$0f
0834: 48 ff     eor   a,#$ff
0836: f3 1c 03  bbc7  $1c,$083c
0839: 60        clrc
083a: 84 1c     adc   a,$1c
083c: c4 1c     mov   $1c,a
083e: e8 00     mov   a,#$00
0840: 8d 4d     mov   y,#$4d
0842: 3f 41 10  call  $1041
0845: 8d 0d     mov   y,#$0d
0847: 3f 41 10  call  $1041
084a: 8d 2c     mov   y,#$2c
084c: 3f 41 10  call  $1041
084f: 8d 3c     mov   y,#$3c
0851: 3f 41 10  call  $1041
0854: e4 2f     mov   a,$2f
0856: 08 20     or    a,#$20
0858: 8d 6c     mov   y,#$6c
085a: 3f 41 10  call  $1041
085d: e4 1d     mov   a,$1d
085f: 8d 7d     mov   y,#$7d
0861: 3f 41 10  call  $1041
0864: 1c        asl   a
0865: 1c        asl   a
0866: 1c        asl   a
0867: 48 ff     eor   a,#$ff
0869: 8d 6d     mov   y,#$6d
086b: 3f 41 10  call  $1041
086e: 6f        ret
086f: cd 00     mov   x,#$00
0871: 8f 00 1e  mov   $1e,#$00
0874: 8f 01 1a  mov   $1a,#$01
0877: d8 1b     mov   $1b,x
0879: f4 50     mov   a,$50+x
087b: d0 03     bne   $0880
087d: 5f 1b 09  jmp   $091b
0880: e4 4a     mov   a,$4a
0882: f0 0c     beq   $0890
0884: 8f 01 46  mov   $46,#$01
0887: 8f 00 47  mov   $47,#$00
088a: 8f 00 48  mov   $48,#$00
088d: 8f 00 4a  mov   $4a,#$00
0890: f5 51 03  mov   a,$0351+x
0893: f0 1e     beq   $08b3
0895: f5 60 03  mov   a,$0360+x
0898: bc        inc   a
0899: d5 60 03  mov   $0360+x,a
089c: 8d 7c     mov   y,#$7c
089e: cc f2 00  mov   $00f2,y
08a1: e5 f3 00  mov   a,$00f3
08a4: 24 1a     and   a,$1a
08a6: f0 70     beq   $0918
08a8: e8 01     mov   a,#$01
08aa: d4 a0     mov   $a0+x,a
08ac: e8 00     mov   a,#$00
08ae: d5 51 03  mov   $0351+x,a
08b1: 2f 65     bra   $0918
08b3: 60        clrc
08b4: f5 01 02  mov   a,$0201+x
08b7: 95 00 02  adc   a,$0200+x
08ba: d5 01 02  mov   $0201+x,a
08bd: 90 59     bcc   $0918
08bf: f5 60 03  mov   a,$0360+x
08c2: bc        inc   a
08c3: d5 60 03  mov   $0360+x,a
08c6: 9b a0     dec   $a0+x
08c8: d0 4e     bne   $0918
08ca: 3f bf 0d  call  $0dbf
08cd: 68 ff     cmp   a,#$ff
08cf: d0 11     bne   $08e2
08d1: f5 70 03  mov   a,$0370+x
08d4: f0 03     beq   $08d9
08d6: 5f cd 09  jmp   $09cd
08d9: 3f 87 09  call  $0987
08dc: f4 50     mov   a,$50+x
08de: d0 ea     bne   $08ca
08e0: 2f 39     bra   $091b
08e2: 10 09     bpl   $08ed
08e4: 68 9e     cmp   a,#$9e
08e6: b0 05     bcs   $08ed
08e8: 3f b3 0d  call  $0db3
08eb: 2f dd     bra   $08ca
08ed: 3f 25 0a  call  $0a25
08f0: 3f bf 0d  call  $0dbf
08f3: 68 ff     cmp   a,#$ff
08f5: d0 05     bne   $08fc
08f7: d5 51 03  mov   $0351+x,a
08fa: 2f 15     bra   $0911
08fc: 1c        asl   a
08fd: d4 a0     mov   $a0+x,a
08ff: f5 71 03  mov   a,$0371+x
0902: f0 0d     beq   $0911
0904: 3f e1 0b  call  $0be1
0907: e4 29     mov   a,$29
0909: 35 71 03  and   a,$0371+x
090c: 60        clrc
090d: 94 a0     adc   a,$a0+x
090f: d4 a0     mov   $a0+x,a
0911: e8 00     mov   a,#$00
0913: d5 60 03  mov   $0360+x,a
0916: 2f 03     bra   $091b
0918: 3f 42 0c  call  $0c42
091b: 3d        inc   x
091c: 3d        inc   x
091d: 0b 1a     asl   $1a
091f: f0 03     beq   $0924
0921: 5f 77 08  jmp   $0877
0924: e4 3e     mov   a,$3e
0926: f0 15     beq   $093d
0928: ba 3a     movw  ya,$3a
092a: 7a 41     addw  ya,$41
092c: da 41     movw  $41,ya
092e: ba 3c     movw  ya,$3c
0930: 7a 43     addw  ya,$43
0932: 6e 3e 06  dbnz  $3e,$093b
0935: ba 3e     movw  ya,$3e
0937: da 41     movw  $41,ya
0939: eb 40     mov   y,$40
093b: da 43     movw  $43,ya
093d: e4 36     mov   a,$36
093f: f0 0f     beq   $0950
0941: ba 38     movw  ya,$38
0943: 7a 34     addw  ya,$34
0945: 8b 36     dec   $36
0947: d0 02     bne   $094b
0949: ba 36     movw  ya,$36
094b: da 34     movw  $34,ya
094d: 8f ff 1e  mov   $1e,#$ff
0950: cd 00     mov   x,#$00
0952: 8f 00 49  mov   $49,#$00
0955: 8f 01 1a  mov   $1a,#$01
0958: f4 50     mov   a,$50+x
095a: f0 05     beq   $0961
095c: c4 49     mov   $49,a
095e: 3f 33 0b  call  $0b33
0961: 3d        inc   x
0962: 3d        inc   x
0963: 0b 1a     asl   $1a
0965: d0 f1     bne   $0958
0967: e4 35     mov   a,$35
0969: d0 03     bne   $096e
096b: 3f f3 07  call  $07f3
096e: e4 49     mov   a,$49
0970: d0 05     bne   $0977
0972: 8f ff 4a  mov   $4a,#$ff
0975: 2f 0f     bra   $0986
0977: 60        clrc
0978: e4 48     mov   a,$48
097a: 84 45     adc   a,$45
097c: c4 48     mov   $48,a
097e: 90 06     bcc   $0986
0980: ab 46     inc   $46
0982: d0 02     bne   $0986
0984: ab 47     inc   $47
0986: 6f        ret

0987: 9b 90     dec   $90+x		; get current pattern vcmd
0989: d0 3e     bne   $09c9
098b: 3f e5 09  call  $09e5		; copy bytes to ram
098e: d4 90     mov   $90+x,a
0990: 68 ff     cmp   a,#$ff		; check for vcmd
0992: f0 41     beq   $09d5
0994: 68 fe     cmp   a,#$fe
0996: f0 35     beq   $09cd
0998: 28 40     and   a,#$40
099a: f0 28     beq   $09c4
099c: f4 51     mov   a,$51+x
099e: d0 12     bne   $09b2
09a0: f4 90     mov   a,$90+x
09a2: 28 3f     and   a,#$3f
09a4: d4 51     mov   $51+x,a
09a6: f4 70     mov   a,$70+x
09a8: d5 50 02  mov   $0250+x,a
09ab: f4 71     mov   a,$71+x
09ad: d5 51 02  mov   $0251+x,a
09b0: 2f d9     bra   $098b
09b2: 9b 51     dec   $51+x
09b4: d0 02     bne   $09b8
09b6: 2f d3     bra   $098b
09b8: f5 50 02  mov   a,$0250+x
09bb: d4 70     mov   $70+x,a
09bd: f5 51 02  mov   a,$0251+x
09c0: d4 71     mov   $71+x,a
09c2: 2f c7     bra   $098b

09c4: 3f e5 09  call  $09e5		; pattern vcmd 40-7f - repeat sequence
09c7: d4 91     mov   $91+x,a
09c9: 3f ee 09  call  $09ee
09cc: 6f        ret

09cd: 3f a6 07  call  $07a6		; pattern vcmd fe - end of channel
09d0: e8 00     mov   a,#$00
09d2: d4 50     mov   $50+x,a
09d4: 6f        ret

09d5: 3f e5 09  call  $09e5		; pattern vcmd ff - go to loop
09d8: 60        clrc
09d9: 94 60     adc   a,$60+x
09db: d4 70     mov   $70+x,a
09dd: f4 61     mov   a,$61+x
09df: 88 00     adc   a,#$00
09e1: d4 71     mov   $71+x,a
09e3: 2f a6     bra   $098b

09e5: e7 70     mov   a,($70+x)		; copy pattern vcmd to ram
09e7: bb 70     inc   $70+x
09e9: d0 02     bne   $09ed
09eb: bb 71     inc   $71+x
09ed: 6f        ret

09ee: f4 91     mov   a,$91+x
09f0: 8d 02     mov   y,#$02
09f2: cf        mul   ya
09f3: da 27     movw  $27,ya
09f5: 60        clrc
09f6: 89 06 27  adc   ($27),($06)
09f9: 89 07 28  adc   ($28),($07)
09fc: 8d 00     mov   y,#$00
09fe: f7 27     mov   a,($27)+y
0a00: 2d        push  a
0a01: fc        inc   y
0a02: f7 27     mov   a,($27)+y
0a04: fd        mov   y,a
0a05: ae        pop   a
0a06: da 27     movw  $27,ya
0a08: 60        clrc
0a09: 89 08 27  adc   ($27),($08)
0a0c: 89 09 28  adc   ($28),($09)
0a0f: e4 27     mov   a,$27
0a11: d4 80     mov   $80+x,a
0a13: e4 28     mov   a,$28
0a15: d4 81     mov   $81+x,a
0a17: e8 ff     mov   a,#$ff
0a19: d5 61 03  mov   $0361+x,a
0a1c: e8 00     mov   a,#$00
0a1e: d5 80 03  mov   $0380+x,a
0a21: d5 71 03  mov   $0371+x,a
0a24: 6f        ret
0a25: f5 80 03  mov   a,$0380+x
0a28: f0 08     beq   $0a32
0a2a: 3f e1 0b  call  $0be1
0a2d: e4 29     mov   a,$29
0a2f: 35 80 03  and   a,$0380+x
0a32: c4 2b     mov   $2b,a
0a34: dd        mov   a,y
0a35: 60        clrc
0a36: 95 60 02  adc   a,$0260+x
0a39: 60        clrc
0a3a: 95 61 02  adc   a,$0261+x
0a3d: 60        clrc
0a3e: 95 70 02  adc   a,$0270+x
0a41: 60        clrc
0a42: 84 2b     adc   a,$2b
0a44: d5 81 02  mov   $0281+x,a
0a47: 60        clrc
0a48: f5 a1 02  mov   a,$02a1+x
0a4b: 95 71 02  adc   a,$0271+x
0a4e: d5 80 02  mov   $0280+x,a
0a51: f5 50 03  mov   a,$0350+x
0a54: f0 11     beq   $0a67
0a56: 3f e1 0b  call  $0be1
0a59: e4 29     mov   a,$29
0a5b: 68 19     cmp   a,#$19
0a5d: 90 05     bcc   $0a64
0a5f: 80        setc
0a60: a8 18     sbc   a,#$18
0a62: 2f f7     bra   $0a5b
0a64: 3f ae 0e  call  $0eae
0a67: f5 e1 02  mov   a,$02e1+x
0a6a: 5c        lsr   a
0a6b: e8 00     mov   a,#$00
0a6d: 7c        ror   a
0a6e: d5 d0 02  mov   $02d0+x,a
0a71: e8 00     mov   a,#$00
0a73: d4 c0     mov   $c0+x,a
0a75: d4 a1     mov   $a1+x,a
0a77: d5 00 03  mov   $0300+x,a
0a7a: d4 e0     mov   $e0+x,a
0a7c: f5 90 03  mov   a,$0390+x
0a7f: f0 07     beq   $0a88
0a81: 30 0b     bmi   $0a8e
0a83: e8 ff     mov   a,#$ff
0a85: d5 90 03  mov   $0390+x,a
0a88: 09 1a 1e  or    ($1e),($1a)
0a8b: 09 1a 2d  or    ($2d),($1a)
0a8e: f5 b0 02  mov   a,$02b0+x
0a91: d4 d0     mov   $d0+x,a
0a93: f0 32     beq   $0ac7
0a95: f5 b1 02  mov   a,$02b1+x
0a98: d4 d1     mov   $d1+x,a
0a9a: f5 c0 02  mov   a,$02c0+x
0a9d: d0 0a     bne   $0aa9
0a9f: f5 81 02  mov   a,$0281+x
0aa2: 80        setc
0aa3: b5 c1 02  sbc   a,$02c1+x
0aa6: d5 81 02  mov   $0281+x,a
0aa9: f5 c1 02  mov   a,$02c1+x
0aac: 60        clrc
0aad: 95 81 02  adc   a,$0281+x
0ab0: 28 7f     and   a,#$7f
0ab2: d5 a0 02  mov   $02a0+x,a
0ab5: 80        setc
0ab6: b5 81 02  sbc   a,$0281+x
0ab9: fb d0     mov   y,$d0+x
0abb: 6d        push  y
0abc: ce        pop   x
0abd: 3f 00 0c  call  $0c00
0ac0: d5 90 02  mov   $0290+x,a
0ac3: dd        mov   a,y
0ac4: d5 91 02  mov   $0291+x,a
0ac7: 3f ef 0b  call  $0bef
0aca: 4d        push  x
0acb: e4 24     mov   a,$24
0acd: 1c        asl   a
0ace: 8d 00     mov   y,#$00
0ad0: cd 18     mov   x,#$18
0ad2: 9e        div   ya,x
0ad3: 5d        mov   x,a
0ad4: f6 1a 0b  mov   a,$0b1a+y
0ad7: c4 26     mov   $26,a
0ad9: f6 19 0b  mov   a,$0b19+y
0adc: c4 25     mov   $25,a
0ade: f6 1c 0b  mov   a,$0b1c+y
0ae1: 2d        push  a
0ae2: f6 1b 0b  mov   a,$0b1b+y
0ae5: ee        pop   y
0ae6: 9a 25     subw  ya,$25
0ae8: eb 23     mov   y,$23
0aea: cf        mul   ya
0aeb: dd        mov   a,y
0aec: 8d 00     mov   y,#$00
0aee: 7a 25     addw  ya,$25
0af0: cb 26     mov   $26,y
0af2: 1c        asl   a
0af3: 2b 26     rol   $26
0af5: 1c        asl   a
0af6: 2b 26     rol   $26
0af8: c4 25     mov   $25,a
0afa: 2f 04     bra   $0b00
0afc: 4b 26     lsr   $26
0afe: 7c        ror   a
0aff: 3d        inc   x
0b00: c8 08     cmp   x,#$08
0b02: d0 f8     bne   $0afc
0b04: c4 25     mov   $25,a
0b06: ce        pop   x
0b07: 7d        mov   a,x
0b08: 9f        xcn   a
0b09: 5c        lsr   a
0b0a: 08 02     or    a,#$02
0b0c: fd        mov   y,a
0b0d: e4 25     mov   a,$25
0b0f: 3f 41 10  call  $1041
0b12: fc        inc   y
0b13: e4 26     mov   a,$26
0b15: 3f 41 10  call  $1041
0b18: 6f        ret
0b19: 5f 08 de  jmp   $de08
0b1c: 08 65     or    a,#$65
0b1e: 09 f4 09  or    ($09),($f4)
0b21: 8c 0a 2c  dec   $2c0a
0b24: 0b d6     asl   $d6
0b26: 0b 8b     asl   $8b
0b28: 0c 4a 0d  asl   $0d4a
0b2b: 14 0e     or    a,$0e+x
0b2d: ea 0e cd  not1  $0d0e,6
0b30: 0f        brk
0b31: be        das   a
0b32: 10 f4     bpl   $0b28
0b34: b0 f0     bcs   $0b26
0b36: 09 e8 20  or    ($20),($e8)
0b39: 8d 02     mov   y,#$02
0b3b: 9b b0     dec   $b0+x
0b3d: 3f 1e 0c  call  $0c1e
0b40: fb e1     mov   y,$e1+x
0b42: f0 23     beq   $0b67
0b44: f5 10 03  mov   a,$0310+x
0b47: de e0 1b  cbne  $e0+x,$0b65
0b4a: 09 1a 1e  or    ($1e),($1a)
0b4d: f5 00 03  mov   a,$0300+x
0b50: 10 07     bpl   $0b59
0b52: fc        inc   y
0b53: d0 04     bne   $0b59
0b55: e8 80     mov   a,#$80
0b57: 2f 04     bra   $0b5d
0b59: 60        clrc
0b5a: 95 01 03  adc   a,$0301+x
0b5d: d5 00 03  mov   $0300+x,a
0b60: 3f 52 0d  call  $0d52
0b63: 2f 07     bra   $0b6c
0b65: bb e0     inc   $e0+x
0b67: e8 ff     mov   a,#$ff
0b69: 3f 5d 0d  call  $0d5d
0b6c: f4 b1     mov   a,$b1+x
0b6e: f0 09     beq   $0b79
0b70: e8 20     mov   a,#$20
0b72: 8d 03     mov   y,#$03
0b74: 9b b1     dec   $b1+x
0b76: 3f 1e 0c  call  $0c1e
0b79: e4 1a     mov   a,$1a
0b7b: 24 1e     and   a,$1e
0b7d: f0 47     beq   $0bc6
0b7f: f5 21 03  mov   a,$0321+x
0b82: fd        mov   y,a
0b83: f5 20 03  mov   a,$0320+x
0b86: da 23     movw  $23,ya
0b88: 7d        mov   a,x
0b89: 9f        xcn   a
0b8a: 5c        lsr   a
0b8b: bc        inc   a
0b8c: c4 16     mov   $16,a
0b8e: eb 24     mov   y,$24
0b90: f6 c8 0b  mov   a,$0bc8+y
0b93: 80        setc
0b94: b6 c7 0b  sbc   a,$0bc7+y
0b97: eb 23     mov   y,$23
0b99: cf        mul   ya
0b9a: dd        mov   a,y
0b9b: eb 24     mov   y,$24
0b9d: 60        clrc
0b9e: 96 c7 0b  adc   a,$0bc7+y
0ba1: fd        mov   y,a
0ba2: f5 41 02  mov   a,$0241+x
0ba5: cf        mul   ya
0ba6: f5 41 03  mov   a,$0341+x
0ba9: 1c        asl   a
0baa: 13 16 01  bbc0  $16,$0bae
0bad: 1c        asl   a
0bae: dd        mov   a,y
0baf: 90 03     bcc   $0bb4
0bb1: 48 ff     eor   a,#$ff
0bb3: bc        inc   a
0bb4: eb 16     mov   y,$16
0bb6: 3f 41 10  call  $1041
0bb9: 8d 18     mov   y,#$18
0bbb: e8 00     mov   a,#$00
0bbd: 9a 23     subw  ya,$23
0bbf: da 23     movw  $23,ya
0bc1: 8b 16     dec   $16
0bc3: 73 16 c8  bbc3  $16,$0b8e
0bc6: 6f        ret

0bc7: db $00,$05,$0b,$10,$15,$1b,$20,$25,$2b,$30,$35,$3b,$40,$45,$4b,$50,$55,$5b,$60,$65,$6b,$70,$75,$7b,$7f,$7f

0be1: e4 29     mov   a,$29
0be3: 44 2a     eor   a,$2a
0be5: 5c        lsr   a
0be6: 5c        lsr   a
0be7: ed        notc
0be8: 6b 29     ror   $29
0bea: 6b 2a     ror   $2a
0bec: 8b 29     dec   $29
0bee: 6f        ret
0bef: f5 81 02  mov   a,$0281+x
0bf2: 68 6c     cmp   a,#$6c
0bf4: 90 02     bcc   $0bf8
0bf6: e8 6b     mov   a,#$6b
0bf8: c4 24     mov   $24,a
0bfa: f5 80 02  mov   a,$0280+x
0bfd: c4 23     mov   $23,a
0bff: 6f        ret
0c00: ed        notc
0c01: 6b 16     ror   $16
0c03: 10 03     bpl   $0c08
0c05: 48 ff     eor   a,#$ff
0c07: bc        inc   a
0c08: 8d 00     mov   y,#$00
0c0a: 9e        div   ya,x
0c0b: 2d        push  a
0c0c: e8 00     mov   a,#$00
0c0e: 9e        div   ya,x
0c0f: ee        pop   y
0c10: f8 1b     mov   x,$1b
0c12: f3 16 08  bbc7  $16,$0c1d
0c15: da 25     movw  $25,ya
0c17: e8 00     mov   a,#$00
0c19: 8d 00     mov   y,#$00
0c1b: 9a 25     subw  ya,$25
0c1d: 6f        ret
0c1e: 09 1a 1e  or    ($1e),($1a)
0c21: da 25     movw  $25,ya
0c23: da 27     movw  $27,ya
0c25: 4d        push  x
0c26: ee        pop   y
0c27: 60        clrc
0c28: d0 0a     bne   $0c34
0c2a: 98 1f 27  adc   $27,#$1f
0c2d: e8 00     mov   a,#$00
0c2f: d7 25     mov   ($25)+y,a
0c31: fc        inc   y
0c32: 2f 09     bra   $0c3d
0c34: 98 10 27  adc   $27,#$10
0c37: 3f 3b 0c  call  $0c3b
0c3a: fc        inc   y
0c3b: f7 25     mov   a,($25)+y
0c3d: 97 27     adc   a,($27)+y
0c3f: d7 25     mov   ($25)+y,a
0c41: 6f        ret
0c42: f5 51 03  mov   a,$0351+x
0c45: d0 18     bne   $0c5f
0c47: f5 90 03  mov   a,$0390+x
0c4a: d0 13     bne   $0c5f
0c4c: f5 60 03  mov   a,$0360+x
0c4f: 75 61 03  cmp   a,$0361+x
0c52: f0 06     beq   $0c5a
0c54: e8 01     mov   a,#$01
0c56: 74 a0     cmp   a,$a0+x
0c58: d0 05     bne   $0c5f
0c5a: e4 1a     mov   a,$1a
0c5c: 0e 2e 00  tset1 $002e
0c5f: f2 17     clr7  $17
0c61: f4 d0     mov   a,$d0+x
0c63: f0 13     beq   $0c78
0c65: f4 d1     mov   a,$d1+x
0c67: f0 04     beq   $0c6d
0c69: 9b d1     dec   $d1+x
0c6b: 2f 0b     bra   $0c78
0c6d: e2 17     set7  $17
0c6f: e8 80     mov   a,#$80
0c71: 8d 02     mov   y,#$02
0c73: 9b d0     dec   $d0+x
0c75: 3f 21 0c  call  $0c21
0c78: 3f ef 0b  call  $0bef
0c7b: f4 c1     mov   a,$c1+x
0c7d: f0 49     beq   $0cc8
0c7f: f5 e0 02  mov   a,$02e0+x
0c82: de c0 41  cbne  $c0+x,$0cc6
0c85: f4 a1     mov   a,$a1+x
0c87: 75 e1 02  cmp   a,$02e1+x
0c8a: d0 05     bne   $0c91
0c8c: f5 f1 02  mov   a,$02f1+x
0c8f: 2f 0b     bra   $0c9c
0c91: bb a1     inc   $a1+x
0c93: fd        mov   y,a
0c94: f0 02     beq   $0c98
0c96: f4 c1     mov   a,$c1+x
0c98: 60        clrc
0c99: 95 f0 02  adc   a,$02f0+x
0c9c: d4 c1     mov   $c1+x,a
0c9e: f5 d0 02  mov   a,$02d0+x
0ca1: 60        clrc
0ca2: 95 d1 02  adc   a,$02d1+x
0ca5: d5 d0 02  mov   $02d0+x,a
0ca8: c4 16     mov   $16,a
0caa: 1c        asl   a
0cab: 1c        asl   a
0cac: 90 02     bcc   $0cb0
0cae: 48 ff     eor   a,#$ff
0cb0: fd        mov   y,a
0cb1: f4 c1     mov   a,$c1+x
0cb3: 68 f1     cmp   a,#$f1
0cb5: 90 05     bcc   $0cbc
0cb7: 28 0f     and   a,#$0f
0cb9: cf        mul   ya
0cba: 2f 04     bra   $0cc0
0cbc: cf        mul   ya
0cbd: dd        mov   a,y
0cbe: 8d 00     mov   y,#$00
0cc0: 3f 3d 0d  call  $0d3d
0cc3: 5f ca 0a  jmp   $0aca
0cc6: bb c0     inc   $c0+x
0cc8: e3 17 f8  bbs7  $17,$0cc3
0ccb: 6f        ret
0ccc: f2 17     clr7  $17
0cce: f4 e1     mov   a,$e1+x
0cd0: f0 09     beq   $0cdb
0cd2: f5 10 03  mov   a,$0310+x
0cd5: de e0 03  cbne  $e0+x,$0cdb
0cd8: 3f 45 0d  call  $0d45
0cdb: f5 21 03  mov   a,$0321+x
0cde: fd        mov   y,a
0cdf: f5 20 03  mov   a,$0320+x
0ce2: da 23     movw  $23,ya
0ce4: f4 b1     mov   a,$b1+x
0ce6: f0 0a     beq   $0cf2
0ce8: f5 31 03  mov   a,$0331+x
0ceb: fd        mov   y,a
0cec: f5 30 03  mov   a,$0330+x
0cef: 3f 27 0d  call  $0d27
0cf2: f3 17 03  bbc7  $17,$0cf8
0cf5: 3f 88 0b  call  $0b88
0cf8: f2 17     clr7  $17
0cfa: 3f ef 0b  call  $0bef
0cfd: f4 d0     mov   a,$d0+x
0cff: f0 0e     beq   $0d0f
0d01: f4 d1     mov   a,$d1+x
0d03: d0 0a     bne   $0d0f
0d05: f5 91 02  mov   a,$0291+x
0d08: fd        mov   y,a
0d09: f5 90 02  mov   a,$0290+x
0d0c: 3f 27 0d  call  $0d27
0d0f: f4 c1     mov   a,$c1+x
0d11: f0 b5     beq   $0cc8
0d13: f5 e0 02  mov   a,$02e0+x
0d16: de c0 af  cbne  $c0+x,$0cc8
0d19: eb 22     mov   y,$22
0d1b: f5 d1 02  mov   a,$02d1+x
0d1e: cf        mul   ya
0d1f: dd        mov   a,y
0d20: 60        clrc
0d21: 95 d0 02  adc   a,$02d0+x
0d24: 5f a8 0c  jmp   $0ca8
0d27: e2 17     set7  $17
0d29: cb 16     mov   $16,y
0d2b: 3f 12 0c  call  $0c12
0d2e: 6d        push  y
0d2f: eb 22     mov   y,$22
0d31: cf        mul   ya
0d32: cb 25     mov   $25,y
0d34: 8f 00 26  mov   $26,#$00
0d37: eb 22     mov   y,$22
0d39: ae        pop   a
0d3a: cf        mul   ya
0d3b: 7a 25     addw  ya,$25
0d3d: 3f 12 0c  call  $0c12
0d40: 7a 23     addw  ya,$23
0d42: da 23     movw  $23,ya
0d44: 6f        ret
0d45: e2 17     set7  $17
0d47: eb 22     mov   y,$22
0d49: f5 01 03  mov   a,$0301+x
0d4c: cf        mul   ya
0d4d: dd        mov   a,y
0d4e: 60        clrc
0d4f: 95 00 03  adc   a,$0300+x
0d52: 1c        asl   a
0d53: 90 02     bcc   $0d57
0d55: 48 ff     eor   a,#$ff
0d57: fb e1     mov   y,$e1+x
0d59: cf        mul   ya
0d5a: dd        mov   a,y
0d5b: 48 ff     eor   a,#$ff
0d5d: eb 35     mov   y,$35
0d5f: cf        mul   ya
0d60: f5 10 02  mov   a,$0210+x
0d63: cf        mul   ya
0d64: f5 21 02  mov   a,$0221+x
0d67: cf        mul   ya
0d68: f5 91 03  mov   a,$0391+x
0d6b: cf        mul   ya
0d6c: f5 a0 03  mov   a,$03a0+x
0d6f: cf        mul   ya
0d70: dd        mov   a,y
0d71: cf        mul   ya
0d72: dd        mov   a,y
0d73: d5 41 02  mov   $0241+x,a
0d76: 6f        ret

; vcmd table (80-9d)
0d77: dw $0dd2		; 80 - set instrument/sample
0d79: dw $0e60		; 81 - rest
0d7b: dw $0e6d		; 82 - set tempo
0d7d: dw $0e71		; 83 - set tempo (multiple channels)
0d7f: dw $0e94		; 84 - set channel gain
0d81: dw $0ea3		; 85 - set release
0d83: dw $0ea8		; 86 - set attack
0d85: dw $0ec2		; 87 - set panpot?
0d87: dw $0ede		; 88 - set pan
0d89: dw $0ee2		; 89 - set detune
0d8b: dw $0ee6		; 8a - set channel transpose
0d8d: dw $0eea		; 8b - set channel transpose (multiple channels)
0d8f: dw $0f0d		; 8c - set channel volume (absolute)
0d91: dw $0f16		; 8d - (2 bytes)
0d93: dw $0f25		; 8e - clear 8d value
0d95: dw $0f28		; 8f - (2 bytes)
0d97: dw $0f3f		; 90
0d99: dw $0f4f		; 91 - clear 90 value
0d9a: dw $0f5a		; 92 - pitch bend (multiple channels)
0d9c: dw $0f5e		; 93 - pitch bend
0d9f: dw $0f74		; 94 - disable pitch bend
0da1: dw $0f78		; 95 - set echo volume
0da3: dw $0faa		; 96 - set echo delay
0da5: dw $0fbd		; 97 - disable echo
0da7: dw $0fc4		; 98 - (2 bytes)
0da9: dw $0fe5		; 99 - (2 bytes)
0dab: dw $1001		; 9a - (multiple channels)
0dad: dw $1016		; 9b - set vibrato
0daf: dw $101a		; 9c - set delay
0db1: dw $101e		; 9d - set channel volume (multiple channels)

0db3: 1c        asl   a			; dispatch vcmd (80-9d)
0db4: fd        mov   y,a
0db5: fc        inc   y
0db6: f6 77 0d  mov   a,$0d77+y
0db9: 2d        push  a
0dba: dc        dec   y
0dbb: f6 77 0d  mov   a,$0d77+y
0dbe: 2d        push  a

0dbf: e7 80     mov   a,($80+x)		; update/increment sequence pointer
0dc1: bb 80     inc   $80+x
0dc3: d0 02     bne   $0dc7
0dc5: bb 81     inc   $81+x
0dc7: fd        mov   y,a
0dc8: 6f        ret

0dc9: e7 80     mov   a,($80+x)
0dcb: bb 80     inc   $80+x
0dcd: d0 02     bne   $0dd1
0dcf: bb 81     inc   $81+x
0dd1: 6f        ret

0dd2: 75 11 02  cmp   a,$0211+x		; vcmd 80 - set instrument/sample
0dd5: d0 01     bne   $0dd8
0dd7: 6f        ret
0dd8: d5 11 02  mov   $0211+x,a
0ddb: 8d 10     mov   y,#$10
0ddd: cf        mul   ya
0dde: da 2b     movw  $2b,ya
0de0: 60        clrc
0de1: 89 04 2b  adc   ($2b),($04)
0de4: 89 05 2c  adc   ($2c),($05)
0de7: e4 1a     mov   a,$1a
0de9: 4e 30 00  tclr1 $0030
0dec: 8d 00     mov   y,#$00
0dee: f7 2b     mov   a,($2b)+y
0df0: 08 80     or    a,#$80
0df2: c4 12     mov   $12,a
0df4: fc        inc   y
0df5: f7 2b     mov   a,($2b)+y
0df7: c4 13     mov   $13,a
0df9: fc        inc   y
0dfa: f7 2b     mov   a,($2b)+y
0dfc: d5 10 02  mov   $0210+x,a
0dff: fc        inc   y
0e00: f7 2b     mov   a,($2b)+y
0e02: 68 80     cmp   a,#$80
0e04: 90 0d     bcc   $0e13
0e06: 28 1f     and   a,#$1f
0e08: 38 20 2f  and   $2f,#$20
0e0b: 0e 2f 00  tset1 $002f
0e0e: 09 1a 30  or    ($30),($1a)
0e11: e8 00     mov   a,#$00
0e13: c4 14     mov   $14,a
0e15: fc        inc   y
0e16: f7 2b     mov   a,($2b)+y
0e18: d5 70 02  mov   $0270+x,a
0e1b: fc        inc   y
0e1c: f7 2b     mov   a,($2b)+y
0e1e: d5 71 02  mov   $0271+x,a
0e21: 8d 0d     mov   y,#$0d
0e23: f7 2b     mov   a,($2b)+y
0e25: d5 d1 02  mov   $02d1+x,a
0e28: fc        inc   y
0e29: f7 2b     mov   a,($2b)+y
0e2b: d4 c1     mov   $c1+x,a
0e2d: d5 f1 02  mov   $02f1+x,a
0e30: fc        inc   y
0e31: f7 2b     mov   a,($2b)+y
0e33: d5 e0 02  mov   $02e0+x,a
0e36: e8 00     mov   a,#$00
0e38: d5 e1 02  mov   $02e1+x,a
0e3b: d5 90 03  mov   $0390+x,a
0e3e: 7d        mov   a,x
0e3f: 9f        xcn   a
0e40: 5c        lsr   a
0e41: 08 04     or    a,#$04
0e43: fd        mov   y,a
0e44: e4 14     mov   a,$14
0e46: cb f2     mov   $f2,y
0e48: c4 f3     mov   $f3,a
0e4a: fc        inc   y
0e4b: e4 12     mov   a,$12
0e4d: cb f2     mov   $f2,y
0e4f: c4 f3     mov   $f3,a
0e51: fc        inc   y
0e52: e4 13     mov   a,$13
0e54: cb f2     mov   $f2,y
0e56: c4 f3     mov   $f3,a
0e58: fc        inc   y
0e59: e8 00     mov   a,#$00
0e5b: cb f2     mov   $f2,y
0e5d: c4 f3     mov   $f3,a
0e5f: 6f        ret

0e60: 1c        asl   a			; vcmd 81 - rest
0e61: d4 a0     mov   $a0+x,a
0e63: e4 1a     mov   a,$1a
0e65: 0e 2e 00  tset1 $002e
0e68: ae        pop   a
0e69: ae        pop   a
0e6a: 5f 1b 09  jmp   $091b

0e6d: d5 00 02  mov   $0200+x,a		; vcmd 82 - set tempo
0e70: 6f        ret

0e71: c4 1f     mov   $1f,a		; vcmd 83 - set tempo (multiple channels)
0e73: 3f bf 0d  call  $0dbf
0e76: c4 45     mov   $45,a
0e78: 4d        push  x
0e79: cd 00     mov   x,#$00
0e7b: 8f 01 20  mov   $20,#$01
0e7e: e4 1f     mov   a,$1f
0e80: 24 20     and   a,$20
0e82: f0 05     beq   $0e89
0e84: e4 45     mov   a,$45
0e86: d5 00 02  mov   $0200+x,a
0e89: 3d        inc   x
0e8a: 3d        inc   x
0e8b: 0b 20     asl   $20
0e8d: d0 ef     bne   $0e7e
0e8f: ce        pop   x
0e90: 3f bf 0d  call  $0dbf
0e93: 6f        ret

0e94: 28 01     and   a,#$01		; vcmd 84 - set channel gain
0e96: f0 07     beq   $0e9f
0e98: f5 90 03  mov   a,$0390+x
0e9b: 30 05     bmi   $0ea2
0e9d: e8 01     mov   a,#$01
0e9f: d5 90 03  mov   $0390+x,a
0ea2: 6f        ret

0ea3: 1c        asl   a			; vcmd 85 - set release
0ea4: d5 61 03  mov   $0361+x,a
0ea7: 6f        ret

0ea8: e8 00     mov   a,#$00		; vcmd 86 - set attack
0eaa: d5 50 03  mov   $0350+x,a
0ead: dd        mov   a,y
0eae: d5 41 03  mov   $0341+x,a
0eb1: 28 1f     and   a,#$1f
0eb3: 68 19     cmp   a,#$19
0eb5: 90 02     bcc   $0eb9
0eb7: e8 18     mov   a,#$18
0eb9: d5 21 03  mov   $0321+x,a
0ebc: e8 00     mov   a,#$00
0ebe: d5 20 03  mov   $0320+x,a
0ec1: 6f        ret

0ec2: d4 b1     mov   $b1+x,a		; vcmd 87 - set panpot?
0ec4: 2d        push  a
0ec5: 3f bf 0d  call  $0dbf
0ec8: d5 40 03  mov   $0340+x,a
0ecb: 80        setc
0ecc: b5 21 03  sbc   a,$0321+x
0ecf: ce        pop   x
0ed0: 3f 00 0c  call  $0c00
0ed3: d5 30 03  mov   $0330+x,a
0ed6: dd        mov   a,y
0ed7: d5 31 03  mov   $0331+x,a
0eda: 3f bf 0d  call  $0dbf
0edd: 6f        ret

0ede: d5 50 03  mov   $0350+x,a		; vcmd 88 - set pan
0ee1: 6f        ret

0ee2: d5 a1 02  mov   $02a1+x,a		; vcmd 89 - set detune
0ee5: 6f        ret

0ee6: d5 61 02  mov   $0261+x,a		; vcmd 8a - set channel transpose
0ee9: 6f        ret

0eea: c4 1f     mov   $1f,a		; vcmd 8b - set channel transpose (multiple channels)
0eec: 3f bf 0d  call  $0dbf
0eef: c4 21     mov   $21,a
0ef1: 4d        push  x
0ef2: cd 00     mov   x,#$00
0ef4: 8f 01 20  mov   $20,#$01
0ef7: e4 1f     mov   a,$1f
0ef9: 24 20     and   a,$20
0efb: f0 05     beq   $0f02
0efd: e4 21     mov   a,$21
0eff: d5 60 02  mov   $0260+x,a
0f02: 3d        inc   x
0f03: 3d        inc   x
0f04: 0b 20     asl   $20
0f06: d0 ef     bne   $0ef7
0f08: ce        pop   x
0f09: 3f bf 0d  call  $0dbf
0f0c: 6f        ret

0f0d: d5 21 02  mov   $0221+x,a		; vcmd 8c - set channel volume (absolute)
0f10: e8 00     mov   a,#$00
0f12: d5 20 02  mov   $0220+x,a
0f15: 6f        ret

0f16: d5 01 03  mov   $0301+x,a		; vcmd 8d - (2 bytes)
0f19: 3f bf 0d  call  $0dbf
0f1c: d4 e1     mov   $e1+x,a
0f1e: 3f bf 0d  call  $0dbf
0f21: d5 10 03  mov   $0310+x,a
0f24: 6f        ret

0f25: d4 e1     mov   $e1+x,a		; vcmd 8e - clear 8d value
0f27: 6f        ret

0f28: d5 d1 02  mov   $02d1+x,a		; vcmd 8f - (2 bytes)
0f2b: 3f bf 0d  call  $0dbf
0f2e: d4 c1     mov   $c1+x,a
0f30: d5 f1 02  mov   $02f1+x,a
0f33: 3f bf 0d  call  $0dbf
0f36: d5 e0 02  mov   $02e0+x,a
0f39: e8 00     mov   a,#$00
0f3b: d5 e1 02  mov   $02e1+x,a
0f3e: 6f        ret

0f3f: d5 e1 02  mov   $02e1+x,a		; vcmd 90
0f42: 2d        push  a
0f43: 8d 00     mov   y,#$00
0f45: f4 c1     mov   a,$c1+x
0f47: ce        pop   x
0f48: 9e        div   ya,x
0f49: f8 1b     mov   x,$1b
0f4b: d5 f0 02  mov   $02f0+x,a
0f4e: 6f        ret

0f4f: d4 c1     mov   $c1+x,a		; vcmd 91 - clear 90 value
0f51: d5 f1 02  mov   $02f1+x,a
0f54: e8 00     mov   a,#$00
0f56: d5 e1 02  mov   $02e1+x,a
0f59: 6f        ret

0f5a: e8 01     mov   a,#$01		; vcmd 92 - pitch bend (multiple channels)
0f5c: 2f 02     bra   $0f60
0f5e: e8 00     mov   a,#$00		; vcmd 93
0f60: d5 c0 02  mov   $02c0+x,a
0f63: dd        mov   a,y
0f64: d5 b0 02  mov   $02b0+x,a
0f67: 3f bf 0d  call  $0dbf
0f6a: d5 c1 02  mov   $02c1+x,a
0f6d: 3f bf 0d  call  $0dbf
0f70: d5 b1 02  mov   $02b1+x,a
0f73: 6f        ret

0f74: d5 b0 02  mov   $02b0+x,a		; vcmd 94 - disable pitch bend
0f77: 6f        ret

0f78: 3f 28 08  call  $0828		; vcmd 95 - set echo volume
0f7b: 3f bf 0d  call  $0dbf
0f7e: 8d 08     mov   y,#$08
0f80: cf        mul   ya
0f81: 5d        mov   x,a
0f82: 8d 0f     mov   y,#$0f
0f84: f5 9a 0f  mov   a,$0f9a+x
0f87: 3f 41 10  call  $1041
0f8a: 3d        inc   x
0f8b: dd        mov   a,y
0f8c: 60        clrc
0f8d: 88 10     adc   a,#$10
0f8f: fd        mov   y,a
0f90: 10 f2     bpl   $0f84
0f92: f8 1b     mov   x,$1b
0f94: 3f bf 0d  call  $0dbf
0f97: c4 33     mov   $33,a
0f99: 6f        ret

0f9a: db $7f,$00,$00,$00,$00,$00,$00,$00,$ff,$08,$17,$24,$24,$17,$08,$ff

0faa: c4 31     mov   $31,a		; vcmd 96 - set echo delay
0fac: 3f bf 0d  call  $0dbf
0faf: e8 00     mov   a,#$00
0fb1: da 41     movw  $41,ya
0fb3: 3f bf 0d  call  $0dbf
0fb6: e8 00     mov   a,#$00
0fb8: da 43     movw  $43,ya
0fba: b2 2f     clr5  $2f
0fbc: 6f        ret

0fbd: da 41     movw  $41,ya		; vcmd 97 - disable echo
0fbf: da 43     movw  $43,ya
0fc1: a2 2f     set5  $2f
0fc3: 6f        ret

0fc4: c4 3e     mov   $3e,a		; vcmd 98 - (2 bytes)
0fc6: 3f bf 0d  call  $0dbf
0fc9: c4 3f     mov   $3f,a
0fcb: 80        setc
0fcc: a4 42     sbc   a,$42
0fce: f8 3e     mov   x,$3e
0fd0: 3f 00 0c  call  $0c00
0fd3: da 3a     movw  $3a,ya
0fd5: 3f bf 0d  call  $0dbf
0fd8: c4 40     mov   $40,a
0fda: 80        setc
0fdb: a4 44     sbc   a,$44
0fdd: f8 3e     mov   x,$3e
0fdf: 3f 00 0c  call  $0c00
0fe2: da 3c     movw  $3c,ya
0fe4: 6f        ret

0fe5: d4 b0     mov   $b0+x,a		; vcmd 99 - (2 bytes)
0fe7: 2d        push  a
0fe8: 3f bf 0d  call  $0dbf
0feb: d5 40 02  mov   $0240+x,a
0fee: 80        setc
0fef: b5 21 02  sbc   a,$0221+x
0ff2: ce        pop   x
0ff3: 3f 00 0c  call  $0c00
0ff6: d5 30 02  mov   $0230+x,a
0ff9: dd        mov   a,y
0ffa: d5 31 02  mov   $0231+x,a
0ffd: 3f bf 0d  call  $0dbf
1000: 6f        ret

1001: c4 36     mov   $36,a		; vcmd 9a - (multiple channels)
1003: 3f bf 0d  call  $0dbf
1006: c4 37     mov   $37,a
1008: 80        setc
1009: a4 35     sbc   a,$35
100b: f8 36     mov   x,$36
100d: 3f 00 0c  call  $0c00
1010: da 38     movw  $38,ya
1012: 3f bf 0d  call  $0dbf
1015: 6f        ret

1016: d5 80 03  mov   $0380+x,a		; vcmd 9b - set vibrato
1019: 6f        ret

101a: d5 71 03  mov   $0371+x,a		; vcmd 9c - set delay
101d: 6f        ret

101e: c4 1f     mov   $1f,a		; vcmd 9d - set channel volume (multiple channels)
1020: 3f bf 0d  call  $0dbf		; update pointer
1023: c4 21     mov   $21,a
1025: 4d        push  x
1026: cd 00     mov   x,#$00
1028: 8f 01 20  mov   $20,#$01
102b: e4 1f     mov   a,$1f
102d: 24 20     and   a,$20
102f: f0 05     beq   $1036
1031: e4 21     mov   a,$21
1033: d5 91 03  mov   $0391+x,a
1036: 3d        inc   x
1037: 3d        inc   x
1038: 0b 20     asl   $20
103a: d0 ef     bne   $102b
103c: ce        pop   x
103d: 3f bf 0d  call  $0dbf
1040: 6f        ret

1041: cc f2 00  mov   $00f2,y		; set dsp register address
1044: c5 f3 00  mov   $00f3,a		; set dsp register data
1047: 6f        ret

1048: 8f 00 10  mov   $10,#$00
104b: e5 0c 12  mov   a,$120c
104e: ec 0d 12  mov   y,$120d
1051: da 25     movw  $25,ya
1053: 3f 61 10  call  $1061
1056: 8f 40 10  mov   $10,#$40
1059: e5 0e 12  mov   a,$120e
105c: ec 0f 12  mov   y,$120f
105f: da 25     movw  $25,ya
1061: 8f 3f 11  mov   $11,#$3f
1064: e4 11     mov   a,$11
1066: 1c        asl   a
1067: fd        mov   y,a
1068: f7 25     mov   a,($25)+y
106a: c4 27     mov   $27,a
106c: fc        inc   y
106d: f7 25     mov   a,($25)+y
106f: c4 28     mov   $28,a
1071: e4 11     mov   a,$11
1073: 60        clrc
1074: 84 10     adc   a,$10
1076: 8d 04     mov   y,#$04
1078: cf        mul   ya
1079: da 2b     movw  $2b,ya
107b: 60        clrc
107c: 98 04 2c  adc   $2c,#$04
107f: e4 27     mov   a,$27
1081: 60        clrc
1082: 88 02     adc   a,#$02
1084: 8d 00     mov   y,#$00
1086: d7 2b     mov   ($2b)+y,a
1088: fc        inc   y
1089: e4 28     mov   a,$28
108b: 88 00     adc   a,#$00
108d: d7 2b     mov   ($2b)+y,a
108f: dc        dec   y
1090: f7 27     mov   a,($27)+y
1092: 60        clrc
1093: 97 2b     adc   a,($2b)+y
1095: 8d 02     mov   y,#$02
1097: d7 2b     mov   ($2b)+y,a
1099: dc        dec   y
109a: f7 27     mov   a,($27)+y
109c: 97 2b     adc   a,($2b)+y
109e: 8d 03     mov   y,#$03
10a0: d7 2b     mov   ($2b)+y,a
10a2: 8b 11     dec   $11
10a4: 10 be     bpl   $1064
10a6: 6f        ret
10a7: 8f 00 25  mov   $25,#$00
10aa: 8f 12 26  mov   $26,#$12
10ad: 60        clrc
10ae: e4 25     mov   a,$25
10b0: 88 10     adc   a,#$10
10b2: c4 27     mov   $27,a
10b4: e4 26     mov   a,$26
10b6: 88 00     adc   a,#$00
10b8: c4 28     mov   $28,a
10ba: ba 27     movw  ya,$27
10bc: da 04     movw  $04,ya
10be: 8d 00     mov   y,#$00
10c0: 3f e2 10  call  $10e2
10c3: da 06     movw  $06,ya
10c5: 8d 02     mov   y,#$02
10c7: 3f e2 10  call  $10e2
10ca: da 08     movw  $08,ya
10cc: 8d 04     mov   y,#$04
10ce: 3f e2 10  call  $10e2
10d1: da 0a     movw  $0a,ya
10d3: 8d 06     mov   y,#$06
10d5: 3f e2 10  call  $10e2
10d8: da 0c     movw  $0c,ya
10da: 8d 08     mov   y,#$08
10dc: 3f e2 10  call  $10e2
10df: da 0e     movw  $0e,ya
10e1: 6f        ret
10e2: f7 25     mov   a,($25)+y
10e4: 2d        push  a
10e5: fc        inc   y
10e6: f7 25     mov   a,($25)+y
10e8: fd        mov   y,a
10e9: ae        pop   a
10ea: 7a 27     addw  ya,$27
10ec: da 27     movw  $27,ya
10ee: 6f        ret
10ef: e4 f7     mov   a,$f7
10f1: 64 01     cmp   a,$01
10f3: d0 01     bne   $10f6
10f5: 6f        ret
10f6: c4 01     mov   $01,a
10f8: e4 f4     mov   a,$f4
10fa: c4 f4     mov   $f4,a
10fc: 68 60     cmp   a,#$60
10fe: 90 20     bcc   $1120
1100: 68 80     cmp   a,#$80
1102: f0 29     beq   $112d
1104: 68 81     cmp   a,#$81
1106: f0 2a     beq   $1132
1108: 68 82     cmp   a,#$82
110a: f0 38     beq   $1144
110c: 68 83     cmp   a,#$83
110e: f0 43     beq   $1153
1110: 68 84     cmp   a,#$84
1112: f0 54     beq   $1168
1114: 68 85     cmp   a,#$85
1116: d0 03     bne   $111b
1118: 5f a3 11  jmp   $11a3
111b: e8 ff     mov   a,#$ff
111d: c4 f4     mov   $f4,a
111f: 6f        ret
1120: c4 00     mov   $00,a
1122: fa f5 02  mov   ($02),($f5)
1125: 8d ff     mov   y,#$ff
1127: e8 00     mov   a,#$00
1129: da 34     movw  $34,ya
112b: 2f ee     bra   $111b
112d: 3f f3 07  call  $07f3
1130: 2f e9     bra   $111b
1132: 8f 60 36  mov   $36,#$60
1135: 8f 00 37  mov   $37,#$00
1138: 80        setc
1139: a4 35     sbc   a,$35
113b: f8 36     mov   x,$36
113d: 3f 00 0c  call  $0c00
1140: da 38     movw  $38,ya
1142: 2f d7     bra   $111b
1144: e8 00     mov   a,#$00
1146: 3f 28 08  call  $0828
1149: e8 ff     mov   a,#$ff
114b: 8d 6c     mov   y,#$6c
114d: 3f 41 10  call  $1041
1150: 5f c0 ff  jmp   $ffc0
1153: fa f5 25  mov   ($25),($f5)
1156: fa f6 26  mov   ($26),($f6)
1159: 8f 00 f4  mov   $f4,#$00
115c: e4 f4     mov   a,$f4
115e: d0 fc     bne   $115c
1160: e4 f5     mov   a,$f5
1162: 8d 00     mov   y,#$00
1164: d7 25     mov   ($25)+y,a
1166: 2f b3     bra   $111b
1168: cd 00     mov   x,#$00
116a: 8d 00     mov   y,#$00
116c: f5 60 03  mov   a,$0360+x
116f: 3f bc 11  call  $11bc
1172: f4 91     mov   a,$91+x
1174: 3f bc 11  call  $11bc
1177: f5 11 02  mov   a,$0211+x
117a: 3f bc 11  call  $11bc
117d: f5 81 02  mov   a,$0281+x
1180: 3f bc 11  call  $11bc
1183: f5 61 03  mov   a,$0361+x
1186: 3f bc 11  call  $11bc
1189: f5 21 02  mov   a,$0221+x
118c: 3f bc 11  call  $11bc
118f: f5 41 03  mov   a,$0341+x
1192: 3f bc 11  call  $11bc
1195: 3d        inc   x
1196: 3d        inc   x
1197: c8 10     cmp   x,#$10
1199: 90 d1     bcc   $116c
119b: e4 45     mov   a,$45
119d: 3f bc 11  call  $11bc
11a0: 5f 1b 11  jmp   $111b
11a3: 8d 00     mov   y,#$00
11a5: fa 46 25  mov   ($25),($46)
11a8: fa 47 26  mov   ($26),($47)
11ab: 4b 26     lsr   $26
11ad: 6b 25     ror   $25
11af: e4 25     mov   a,$25
11b1: 3f bc 11  call  $11bc
11b4: e4 26     mov   a,$26
11b6: 3f bc 11  call  $11bc
11b9: 5f 1b 11  jmp   $111b
11bc: c4 f5     mov   $f5,a
11be: cb f4     mov   $f4,y
11c0: 7e f4     cmp   y,$f4
11c2: d0 fc     bne   $11c0
11c4: fc        inc   y
11c5: 6f        ret
