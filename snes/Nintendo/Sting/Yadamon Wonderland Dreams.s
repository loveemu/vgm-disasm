0400: 2f 14     bra   $0416

0402: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
040c: db $51,$53,$3e,$3a,$38,$35,$06,$39,$3b,$36

0416: 20        clrp
0417: cd cf     mov   x,#$cf
0419: bd        mov   sp,x
041a: e8 ff     mov   a,#$ff
041c: c4 f4     mov   $f4,a
041e: c4 01     mov   $01,a
0420: bc        inc   a
0421: c4 00     mov   $00,a
0423: 8d c0     mov   y,#$c0
0425: dc        dec   y
0426: d7 00     mov   ($00)+y,a
0428: d0 fb     bne   $0425
042a: 8b 01     dec   $01
042c: 78 50 01  cmp   $01,#$50
042f: d0 f4     bne   $0425
0431: 3f 9c 0e  call  $0e9c
0434: 3f 87 06  call  $0687
0437: e8 00     mov   a,#$00
0439: c4 f4     mov   $f4,a
043b: 8d 0a     mov   y,#$0a
043d: ad 05     cmp   y,#$05
043f: f0 07     beq   $0448
0441: b0 08     bcs   $044b
0443: 69 3d 3c  cmp   ($3c),($3d)
0446: d0 0f     bne   $0457
0448: e3 3c 0c  bbs7  $3c,$0457
044b: f6 01 04  mov   a,$0401+y
044e: c4 f2     mov   $f2,a
0450: f6 0b 04  mov   a,$040b+y
0453: 5d        mov   x,a
0454: e6        mov   a,(x)
0455: c4 f3     mov   $f3,a
0457: fe e4     dbnz  y,$043d
0459: cb 35     mov   $35,y
045b: cb 36     mov   $36,y
045d: d2 38     clr6  $38
045f: eb fd     mov   y,$fd
0461: f0 fc     beq   $045f
0463: e8 00     mov   a,#$00
0465: c4 15     mov   $15,a
0467: c4 4e     mov   $4e,a
0469: c4 16     mov   $16,a
046b: cb 5d     mov   $5d,y
046d: e4 14     mov   a,$14
046f: f0 07     beq   $0478
0471: c4 17     mov   $17,a
0473: 3f 25 05  call  $0525
0476: eb 5d     mov   y,$5d
0478: e8 20     mov   a,#$20
047a: cf        mul   ya
047b: 60        clrc
047c: 84 33     adc   a,$33
047e: c4 33     mov   $33,a
0480: 90 1f     bcc   $04a1
0482: e4 1e     mov   a,$1e
0484: f0 14     beq   $049a
0486: 9c        dec   a
0487: c4 1e     mov   $1e,a
0489: d0 09     bne   $0494
048b: f8 1d     mov   x,$1d
048d: 10 05     bpl   $0494
048f: 3f ab 05  call  $05ab
0492: 2f 06     bra   $049a
0494: ba 1a     movw  ya,$1a
0496: 7a 1c     addw  ya,$1c
0498: da 1a     movw  $1a,ya
049a: 69 3d 3c  cmp   ($3c),($3d)
049d: f0 02     beq   $04a1
049f: ab 3c     inc   $3c
04a1: 3f 6b 05  call  $056b
04a4: eb 5d     mov   y,$5d
04a6: e8 00     mov   a,#$00
04a8: f8 13     mov   x,$13
04aa: 30 17     bmi   $04c3
04ac: e4 43     mov   a,$43
04ae: cf        mul   ya
04af: 60        clrc
04b0: 84 41     adc   a,$41
04b2: c4 41     mov   $41,a
04b4: 90 0b     bcc   $04c1
04b6: 3f 04 08  call  $0804
04b9: fa 12 17  mov   ($17),($12)
04bc: 3f ea 04  call  $04ea
04bf: d0 23     bne   $04e4
04c1: e4 12     mov   a,$12
04c3: 04 14     or    a,$14
04c5: f0 1a     beq   $04e1
04c7: c4 17     mov   $17,a
04c9: cd 00     mov   x,#$00
04cb: e8 01     mov   a,#$01
04cd: c4 37     mov   $37,a
04cf: 24 17     and   a,$17
04d1: f0 07     beq   $04da
04d3: 24 14     and   a,$14
04d5: c4 5c     mov   $5c,a
04d7: 3f fe 08  call  $08fe
04da: 3d        inc   x
04db: 3d        inc   x
04dc: e4 37     mov   a,$37
04de: 1c        asl   a
04df: d0 ec     bne   $04cd
04e1: 5f 3b 04  jmp   $043b

04e4: 3f e5 06  call  $06e5
04e7: 5f 3b 04  jmp   $043b

04ea: cd 00     mov   x,#$00
04ec: d8 19     mov   $19,x
04ee: d8 5c     mov   $5c,x
04f0: e8 01     mov   a,#$01
04f2: d8 34     mov   $34,x
04f4: c4 37     mov   $37,a
04f6: 24 17     and   a,$17
04f8: f0 1d     beq   $0517
04fa: 9b 60     dec   $60+x
04fc: f0 0d     beq   $050b
04fe: f4 61     mov   a,$61+x
0500: f0 0f     beq   $0511
0502: 9b 61     dec   $61+x
0504: d0 0b     bne   $0511
0506: 3f 3f 08  call  $083f
0509: 2f 06     bra   $0511
050b: 3f 48 07  call  $0748
050e: 3f af 07  call  $07af
0511: 3f 97 08  call  $0897
0514: 3f de 09  call  $09de
0517: e4 19     mov   a,$19
0519: d0 09     bne   $0524
051b: 3d        inc   x
051c: 3d        inc   x
051d: e4 37     mov   a,$37
051f: 1c        asl   a
0520: 68 40     cmp   a,#$40
0522: d0 ce     bne   $04f2
0524: 6f        ret

0525: 8d 00     mov   y,#$00
0527: cb 19     mov   $19,y
0529: cd 0c     mov   x,#$0c
052b: e8 40     mov   a,#$40
052d: d8 34     mov   $34,x
052f: c4 37     mov   $37,a
0531: 24 17     and   a,$17
0533: f0 2e     beq   $0563
0535: c4 5c     mov   $5c,a
0537: f5 b0 01  mov   a,$01b0+x
053a: eb 5d     mov   y,$5d
053c: cf        mul   ya
053d: 60        clrc
053e: 95 b1 01  adc   a,$01b1+x
0541: d5 b1 01  mov   $01b1+x,a
0544: 90 1d     bcc   $0563
0546: 9b 60     dec   $60+x
0548: f0 0d     beq   $0557
054a: f4 61     mov   a,$61+x
054c: f0 0f     beq   $055d
054e: 9b 61     dec   $61+x
0550: d0 0b     bne   $055d
0552: 3f 3f 08  call  $083f
0555: 2f 06     bra   $055d
0557: 3f 48 07  call  $0748
055a: 3f af 07  call  $07af
055d: 3f 97 08  call  $0897
0560: 3f de 09  call  $09de
0563: 3d        inc   x
0564: 3d        inc   x
0565: e4 37     mov   a,$37
0567: 1c        asl   a
0568: d0 c3     bne   $052d
056a: 6f        ret

056b: cd 00     mov   x,#$00
056d: 3f 24 0d  call  $0d24
0570: 64 04     cmp   a,$04
0572: f0 16     beq   $058a
0574: c4 04     mov   $04,a
0576: 68 80     cmp   a,#$80
0578: 90 11     bcc   $058b
057a: 68 f0     cmp   a,#$f0
057c: 90 07     bcc   $0585
057e: 28 0f     and   a,#$0f
0580: 1c        asl   a
0581: 5d        mov   x,a
0582: 1f e7 05  jmp   ($05e7+x)

0585: c4 00     mov   $00,a
0587: 5f d7 0e  jmp   $0ed7

058a: 6f        ret

058b: 2d        push  a
058c: 3d        inc   x
058d: 3f 24 0d  call  $0d24
0590: ae        pop   a
0591: 3f ab 05  call  $05ab
0594: e4 05     mov   a,$05
0596: f0 12     beq   $05aa
0598: f8 01     mov   x,$01
059a: f0 0e     beq   $05aa
059c: 3f 37 06  call  $0637
059f: da 1c     movw  $1c,ya
05a1: e8 00     mov   a,#$00
05a3: c4 1a     mov   $1a,a
05a5: c4 1b     mov   $1b,a
05a7: c5 c0 00  mov   $00c0,a
05aa: 6f        ret

05ab: c4 05     mov   $05,a
05ad: c4 f4     mov   $f4,a
05af: 1c        asl   a
05b0: f0 1e     beq   $05d0
05b2: 5d        mov   x,a
05b3: f5 ff 17  mov   a,$17ff+x
05b6: fd        mov   y,a
05b7: f5 fe 17  mov   a,$17fe+x
05ba: da 30     movw  $30,ya
05bc: e8 01     mov   a,#$01
05be: 3f ac 0e  call  $0eac
05c1: 3f 87 06  call  $0687
05c4: 3f e5 06  call  $06e5
05c7: e8 ff     mov   a,#$ff
05c9: c4 36     mov   $36,a
05cb: bc        inc   a
05cc: c5 c0 00  mov   $00c0,a
05cf: 6f        ret

05d0: e4 12     mov   a,$12
05d2: 0e 36 00  tset1 $0036
05d5: e8 00     mov   a,#$00
05d7: c4 12     mov   $12,a
05d9: c4 3a     mov   $3a,a
05db: fd        mov   y,a
05dc: da 50     movw  $50,ya
05de: da 52     movw  $52,ya
05e0: e8 60     mov   a,#$60
05e2: 04 38     or    a,$38
05e4: c4 38     mov   $38,a
05e6: 6f        ret

05e7: dw $0607  ; f0
05eb: dw $060e  ; f1
05ed: dw $0612  ; f2
05ef: dw $061b  ; f3
05f1: dw $0645  ; f4
05f3: dw $0649  ; f5
05f5: dw $060d  ; f6
05f7: dw $060d  ; f7
05f9: dw $060d  ; f8
05fb: dw $060d  ; f9
05fd: dw $060d  ; fa
05ff: dw $0668  ; fb
0601: dw $060d  ; fc
0603: dw $060d  ; fd
0605: dw $064d  ; fe
0607: dw $065e  ; ff

0607: 18 3f 36  or    $36,#$3f
060a: 18 80 13  or    $13,#$80
060d: 6f        ret

060e: 38 7f 13  and   $13,#$7f
0611: 6f        ret

0612: 3f 30 06  call  $0630
0615: b0 f6     bcs   $060d
0617: cd 00     mov   x,#$00
0619: 2f 0e     bra   $0629
061b: 3f 30 06  call  $0630
061e: b0 ed     bcs   $060d
0620: da 0c     movw  $0c,ya
0622: 8d 00     mov   y,#$00
0624: dd        mov   a,y
0625: 9a 0c     subw  ya,$0c
0627: cd ff     mov   x,#$ff
0629: da 1c     movw  $1c,ya
062b: d8 1a     mov   $1a,x
062d: d8 1b     mov   $1b,x
062f: 6f        ret

0630: 80        setc
0631: e4 1e     mov   a,$1e
0633: d0 0f     bne   $0644
0635: f8 f5     mov   x,$f5
0637: d8 1e     mov   $1e,x
0639: 8d 01     mov   y,#$01
063b: e8 00     mov   a,#$00
063d: 9e        div   ya,x
063e: 2d        push  a
063f: e8 00     mov   a,#$00
0641: 9e        div   ya,x
0642: ee        pop   y
0643: 60        clrc
0644: 6f        ret

0645: 8f 01 5b  mov   $5b,#$01
0648: 6f        ret

0649: 8f 00 5b  mov   $5b,#$00
064c: 6f        ret

064d: e4 6c     mov   a,$6c
064f: c4 f2     mov   $f2,a
0651: e8 ff     mov   a,#$ff
0653: c4 f3     mov   $f3,a
0655: e8 80     mov   a,#$80
0657: c4 f1     mov   $f1,a
0659: cd 00     mov   x,#$00
065b: 1f fe ff  jmp   ($fffe+x)

065e: 3f 5e 0e  call  $0e5e
0661: c4 04     mov   $04,a
0663: c4 f5     mov   $f5,a
0665: c4 f6     mov   $f6,a
0667: 6f        ret

0668: 8f 1f f4  mov   $f4,#$1f
066b: 8d f7     mov   y,#$f7
066d: cd 08     mov   x,#$08
066f: e8 00     mov   a,#$00
0671: da 00     movw  $00,ya
0673: fd        mov   y,a
0674: dc        dec   y
0675: d7 00     mov   ($00)+y,a
0677: d0 fb     bne   $0674
0679: ab 01     inc   $01
067b: 1d        dec   x
067c: d0 f6     bne   $0674
067e: e8 64     mov   a,#$64
0680: 8d 10     mov   y,#$10
0682: da 30     movw  $30,ya
0684: 5f bc 05  jmp   $05bc

0687: cd 0e     mov   x,#$0e
0689: 8f 80 37  mov   $37,#$80
068c: 3f b9 06  call  $06b9
068f: 1d        dec   x
0690: 1d        dec   x
0691: 4b 37     lsr   $37
0693: d0 f7     bne   $068c
0695: c4 4a     mov   $4a,a
0697: c4 58     mov   $58,a
0699: c4 44     mov   $44,a
069b: c4 40     mov   $40,a
069d: c4 32     mov   $32,a
069f: c4 4f     mov   $4f,a
06a1: c4 14     mov   $14,a
06a3: c4 13     mov   $13,a
06a5: c4 10     mov   $10,a
06a7: c4 11     mov   $11,a
06a9: c4 1e     mov   $1e,a
06ab: c4 3a     mov   $3a,a
06ad: fd        mov   y,a
06ae: da 50     movw  $50,ya
06b0: da 52     movw  $52,ya
06b2: 8f c0 49  mov   $49,#$c0
06b5: 8f 20 43  mov   $43,#$20
06b8: 6f        ret

06b9: e8 ff     mov   a,#$ff
06bb: d5 91 02  mov   $0291+x,a
06be: d5 01 02  mov   $0201+x,a
06c1: e8 fc     mov   a,#$fc
06c3: d5 10 02  mov   $0210+x,a
06c6: e8 0a     mov   a,#$0a
06c8: 3f b6 0b  call  $0bb6
06cb: d5 90 02  mov   $0290+x,a
06ce: d5 b0 00  mov   $00b0+x,a
06d1: d5 a1 01  mov   $01a1+x,a
06d4: d5 11 02  mov   $0211+x,a
06d7: d5 20 02  mov   $0220+x,a
06da: d5 b1 02  mov   $02b1+x,a
06dd: d4 91     mov   $91+x,a
06df: d4 a1     mov   $a1+x,a
06e1: d5 70 00  mov   $0070+x,a
06e4: 6f        ret

06e5: 3f cc 0a  call  $0acc
06e8: d0 17     bne   $0701
06ea: fd        mov   y,a
06eb: d0 03     bne   $06f0
06ed: 5f ab 05  jmp   $05ab

06f0: 8b 32     dec   $32
06f2: 10 02     bpl   $06f6
06f4: c4 32     mov   $32,a
06f6: 3f cc 0a  call  $0acc
06f9: f8 32     mov   x,$32
06fb: f0 e8     beq   $06e5
06fd: da 30     movw  $30,ya
06ff: 2f e4     bra   $06e5
0701: da 0e     movw  $0e,ya
0703: 8d 00     mov   y,#$00
0705: cb 12     mov   $12,y
0707: e8 01     mov   a,#$01
0709: c4 37     mov   $37,a
070b: f7 0e     mov   a,($0e)+y
070d: d6 20 00  mov   $0020+y,a
0710: fc        inc   y
0711: f7 0e     mov   a,($0e)+y
0713: d6 20 00  mov   $0020+y,a
0716: dc        dec   y
0717: 5d        mov   x,a
0718: f0 15     beq   $072f
071a: 09 37 12  or    ($12),($37)
071d: 09 37 36  or    ($36),($37)
0720: f6 b0 00  mov   a,$00b0+y
0723: 5d        mov   x,a
0724: d0 09     bne   $072f
0726: 6d        push  y
0727: dd        mov   a,y
0728: 5d        mov   x,a
0729: e8 00     mov   a,#$00
072b: 3f 5b 0b  call  $0b5b
072e: ee        pop   y
072f: cd 00     mov   x,#$00
0731: d9 b1     mov   $b1+y,x
0733: d9 70     mov   $70+y,x
0735: d9 71     mov   $71+y,x
0737: 3d        inc   x
0738: d9 60     mov   $60+y,x
073a: fc        inc   y
073b: fc        inc   y
073c: e4 37     mov   a,$37
073e: 1c        asl   a
073f: 68 40     cmp   a,#$40
0741: d0 c6     bne   $0709
0743: 6f        ret

0744: 09 37 19  or    ($19),($37)
0747: 6f        ret

0748: 3f f0 0a  call  $0af0
074b: d0 17     bne   $0764
074d: f4 b1     mov   a,$b1+x
074f: f0 f3     beq   $0744
0751: 3f aa 0c  call  $0caa
0754: 9b b1     dec   $b1+x
0756: d0 f0     bne   $0748
0758: f5 10 01  mov   a,$0110+x
075b: d4 20     mov   $20+x,a
075d: f5 11 01  mov   a,$0111+x
0760: d4 21     mov   $21+x,a
0762: 2f e4     bra   $0748
0764: 30 20     bmi   $0786
0766: d5 00 02  mov   $0200+x,a
0769: 3f f0 0a  call  $0af0
076c: 30 18     bmi   $0786
076e: 2d        push  a
076f: 9f        xcn   a
0770: 28 07     and   a,#$07
0772: fd        mov   y,a
0773: f6 4c 10  mov   a,$104c+y
0776: d5 01 02  mov   $0201+x,a
0779: ae        pop   a
077a: 28 0f     and   a,#$0f
077c: fd        mov   y,a
077d: f6 54 10  mov   a,$1054+y
0780: d5 10 02  mov   $0210+x,a
0783: 3f f0 0a  call  $0af0
0786: 68 e0     cmp   a,#$e0
0788: 90 0c     bcc   $0796
078a: 68 fb     cmp   a,#$fb
078c: f0 05     beq   $0793
078e: 3f da 0a  call  $0ada
0791: 2f b5     bra   $0748
0793: 5f 5e 0f  jmp   $0f5e

0796: f5 b1 02  mov   a,$02b1+x
0799: 04 1f     or    a,$1f
079b: d0 04     bne   $07a1
079d: dd        mov   a,y
079e: 3f 33 0d  call  $0d33
07a1: f5 00 02  mov   a,$0200+x
07a4: d4 60     mov   $60+x,a
07a6: fd        mov   y,a
07a7: f5 01 02  mov   a,$0201+x
07aa: cf        mul   ya
07ab: dd        mov   a,y
07ac: d4 61     mov   $61+x,a
07ae: 6f        ret

07af: f4 80     mov   a,$80+x
07b1: d0 33     bne   $07e6
07b3: e7 20     mov   a,($20+x)
07b5: 68 f9     cmp   a,#$f9
07b7: d0 2d     bne   $07e6
07b9: 3f f2 0a  call  $0af2
07bc: 3f f0 0a  call  $0af0
; vcmd f9
07bf: d4 81     mov   $81+x,a
07c1: 3f f0 0a  call  $0af0
07c4: d4 80     mov   $80+x,a
07c6: 3f f0 0a  call  $0af0
07c9: 60        clrc
07ca: 84 40     adc   a,$40
07cc: 95 11 02  adc   a,$0211+x
07cf: 28 7f     and   a,#$7f
07d1: d5 a0 01  mov   $01a0+x,a
07d4: 80        setc
07d5: b5 81 01  sbc   a,$0181+x
07d8: fb 80     mov   y,$80+x
07da: 6d        push  y
07db: ce        pop   x
07dc: 3f e7 07  call  $07e7
07df: d5 90 01  mov   $0190+x,a
07e2: dd        mov   a,y
07e3: d5 91 01  mov   $0191+x,a
07e6: 6f        ret

07e7: ed        notc
07e8: 6b 0a     ror   $0a
07ea: 10 03     bpl   $07ef
07ec: 48 ff     eor   a,#$ff
07ee: bc        inc   a
07ef: 8d 00     mov   y,#$00
07f1: 9e        div   ya,x
07f2: 2d        push  a
07f3: e8 00     mov   a,#$00
07f5: 9e        div   ya,x
07f6: ee        pop   y
07f7: f8 34     mov   x,$34
07f9: f3 0a 07  bbc7  $0a,$0803
07fc: da 0c     movw  $0c,ya
07fe: e8 00     mov   a,#$00
0800: fd        mov   y,a
0801: 9a 0c     subw  ya,$0c
0803: 6f        ret

0804: e4 44     mov   a,$44
0806: f0 0b     beq   $0813
0808: ba 46     movw  ya,$46
080a: 7a 42     addw  ya,$42
080c: 6e 44 02  dbnz  $44,$0811
080f: ba 44     movw  ya,$44
0811: da 42     movw  $42,ya
0813: e4 58     mov   a,$58
0815: f0 15     beq   $082c
0817: ba 54     movw  ya,$54
0819: 7a 50     addw  ya,$50
081b: da 50     movw  $50,ya
081d: ba 56     movw  ya,$56
081f: 7a 52     addw  ya,$52
0821: 6e 58 06  dbnz  $58,$082a
0824: ba 58     movw  ya,$58
0826: da 50     movw  $50,ya
0828: eb 5a     mov   y,$5a
082a: da 52     movw  $52,ya
082c: e4 4a     mov   a,$4a
082e: f0 0e     beq   $083e
0830: ba 4c     movw  ya,$4c
0832: 7a 48     addw  ya,$48
0834: 6e 4a 02  dbnz  $4a,$0839
0837: ba 4a     movw  ya,$4a
0839: da 48     movw  $48,ya
083b: 8f ff 4e  mov   $4e,#$ff
083e: 6f        ret

083f: f4 20     mov   a,$20+x
0841: fb 21     mov   y,$21+x
0843: da 0c     movw  $0c,ya
0845: 8d 00     mov   y,#$00
0847: f7 0c     mov   a,($0c)+y
0849: f0 24     beq   $086f
084b: 30 05     bmi   $0852
084d: fc        inc   y
084e: f7 0c     mov   a,($0c)+y
0850: 10 fb     bpl   $084d
0852: 68 c8     cmp   a,#$c8
0854: f0 40     beq   $0896
0856: 68 ef     cmp   a,#$ef
0858: f0 2e     beq   $0888
085a: 68 e0     cmp   a,#$e0
085c: 90 35     bcc   $0893
085e: 6d        push  y
085f: a8 e0     sbc   a,#$e0
0861: c4 0e     mov   $0e,a
0863: 1c        asl   a
0864: 84 0e     adc   a,$0e
0866: fd        mov   y,a
0867: ae        pop   a
0868: 80        setc
0869: 96 fc 0a  adc   a,$0afc+y
086c: fd        mov   y,a
086d: 2f d8     bra   $0847
086f: f4 b1     mov   a,$b1+x
0871: f0 20     beq   $0893
0873: 9c        dec   a
0874: d0 09     bne   $087f
0876: f5 11 01  mov   a,$0111+x
0879: fd        mov   y,a
087a: f5 10 01  mov   a,$0110+x
087d: 2f c4     bra   $0843
087f: f5 21 01  mov   a,$0121+x
0882: fd        mov   y,a
0883: f5 20 01  mov   a,$0120+x
0886: 2f bb     bra   $0843
0888: fc        inc   y
0889: f7 0c     mov   a,($0c)+y
088b: 2d        push  a
088c: fc        inc   y
088d: f7 0c     mov   a,($0c)+y
088f: fd        mov   y,a
0890: ae        pop   a
0891: 2f b0     bra   $0843
0893: 09 37 36  or    ($36),($37)
0896: 6f        ret

0897: f4 80     mov   a,$80+x
0899: f0 2c     beq   $08c7
089b: f4 81     mov   a,$81+x
089d: f0 04     beq   $08a3
089f: 9b 81     dec   $81+x
08a1: 2f 24     bra   $08c7
08a3: 09 37 16  or    ($16),($37)
08a6: 9b 80     dec   $80+x
08a8: d0 0a     bne   $08b4
08aa: e8 00     mov   a,#$00
08ac: d5 80 01  mov   $0180+x,a
08af: f5 a0 01  mov   a,$01a0+x
08b2: 2f 10     bra   $08c4
08b4: 60        clrc
08b5: f5 80 01  mov   a,$0180+x
08b8: 95 90 01  adc   a,$0190+x
08bb: d5 80 01  mov   $0180+x,a
08be: f5 81 01  mov   a,$0181+x
08c1: 95 91 01  adc   a,$0191+x
08c4: d5 81 01  mov   $0181+x,a
08c7: f4 91     mov   a,$91+x
08c9: f0 32     beq   $08fd
08cb: f5 50 02  mov   a,$0250+x
08ce: de 90 2a  cbne  $90+x,$08fb
08d1: f5 30 01  mov   a,$0130+x
08d4: 75 51 02  cmp   a,$0251+x
08d7: d0 05     bne   $08de
08d9: f5 61 02  mov   a,$0261+x
08dc: 2f 0d     bra   $08eb
08de: bc        inc   a
08df: d5 30 01  mov   $0130+x,a
08e2: 9c        dec   a
08e3: f0 02     beq   $08e7
08e5: f4 91     mov   a,$91+x
08e7: 60        clrc
08e8: 95 60 02  adc   a,$0260+x
08eb: d4 91     mov   $91+x,a
08ed: f5 40 02  mov   a,$0240+x
08f0: 60        clrc
08f1: 95 41 02  adc   a,$0241+x
08f4: d5 40 02  mov   $0240+x,a
08f7: 09 37 16  or    ($16),($37)
08fa: 6f        ret

08fb: bb 90     inc   $90+x
08fd: 6f        ret

08fe: f4 a1     mov   a,$a1+x
0900: f0 09     beq   $090b
0902: f5 80 02  mov   a,$0280+x
0905: de a0 03  cbne  $a0+x,$090b
0908: 3f 84 09  call  $0984
090b: f5 c1 02  mov   a,$02c1+x
090e: fd        mov   y,a
090f: f5 c0 02  mov   a,$02c0+x
0912: da 08     movw  $08,ya
0914: f4 71     mov   a,$71+x
0916: f0 0a     beq   $0922
0918: f5 d1 02  mov   a,$02d1+x
091b: fd        mov   y,a
091c: f5 d0 02  mov   a,$02d0+x
091f: 3f b4 09  call  $09b4
0922: e4 37     mov   a,$37
0924: 24 4e     and   a,$4e
0926: f0 03     beq   $092b
0928: 3f 58 0a  call  $0a58
092b: f5 81 01  mov   a,$0181+x
092e: c4 09     mov   $09,a
0930: f5 80 01  mov   a,$0180+x
0933: c4 08     mov   $08,a
0935: f4 80     mov   a,$80+x
0937: f0 11     beq   $094a
0939: f4 81     mov   a,$81+x
093b: d0 0d     bne   $094a
093d: f5 91 01  mov   a,$0191+x
0940: fd        mov   y,a
0941: f5 90 01  mov   a,$0190+x
0944: 3f b4 09  call  $09b4
0947: 09 37 16  or    ($16),($37)
094a: f4 91     mov   a,$91+x
094c: f0 2f     beq   $097d
094e: f5 50 02  mov   a,$0250+x
0951: de 90 29  cbne  $90+x,$097d
0954: eb 41     mov   y,$41
0956: f5 41 02  mov   a,$0241+x
0959: cf        mul   ya
095a: dd        mov   a,y
095b: 60        clrc
095c: 95 40 02  adc   a,$0240+x
095f: c4 0a     mov   $0a,a
0961: 1c        asl   a
0962: 1c        asl   a
0963: 90 02     bcc   $0967
0965: 48 ff     eor   a,#$ff
0967: fd        mov   y,a
0968: f4 91     mov   a,$91+x
096a: 68 f1     cmp   a,#$f1
096c: 90 05     bcc   $0973
096e: 28 0f     and   a,#$0f
0970: cf        mul   ya
0971: 2f 04     bra   $0977
0973: cf        mul   ya
0974: dd        mov   a,y
0975: 8d 00     mov   y,#$00
0977: 3f cf 09  call  $09cf
097a: 5f a4 0d  jmp   $0da4

097d: e4 37     mov   a,$37
097f: 24 16     and   a,$16
0981: d0 f7     bne   $097a
0983: 6f        ret

0984: eb 41     mov   y,$41
0986: f5 71 02  mov   a,$0271+x
0989: cf        mul   ya
098a: dd        mov   a,y
098b: 60        clrc
098c: 95 70 02  adc   a,$0270+x
098f: 1c        asl   a
0990: 90 02     bcc   $0994
0992: 48 ff     eor   a,#$ff
0994: fb a1     mov   y,$a1+x
0996: cf        mul   ya
0997: dd        mov   a,y
0998: 48 ff     eor   a,#$ff
099a: 09 37 4e  or    ($4e),($37)
099d: fd        mov   y,a
099e: e4 5c     mov   a,$5c
09a0: d0 03     bne   $09a5
09a2: e4 49     mov   a,$49
09a4: cf        mul   ya
09a5: f5 10 02  mov   a,$0210+x
09a8: cf        mul   ya
09a9: f5 91 02  mov   a,$0291+x
09ac: cf        mul   ya
09ad: dd        mov   a,y
09ae: cf        mul   ya
09af: dd        mov   a,y
09b0: d5 81 02  mov   $0281+x,a
09b3: 6f        ret

09b4: cb 0a     mov   $0a,y
09b6: f3 0a 07  bbc7  $0a,$09c0
09b9: da 0c     movw  $0c,ya
09bb: e8 00     mov   a,#$00
09bd: fd        mov   y,a
09be: 9a 0c     subw  ya,$0c
09c0: 6d        push  y
09c1: eb 41     mov   y,$41
09c3: cf        mul   ya
09c4: cb 0c     mov   $0c,y
09c6: 8f 00 0d  mov   $0d,#$00
09c9: eb 41     mov   y,$41
09cb: ae        pop   a
09cc: cf        mul   ya
09cd: 7a 0c     addw  ya,$0c
09cf: f3 0a 07  bbc7  $0a,$09d9
09d2: da 0c     movw  $0c,ya
09d4: e8 00     mov   a,#$00
09d6: fd        mov   y,a
09d7: 9a 0c     subw  ya,$0c
09d9: 7a 08     addw  ya,$08
09db: da 08     movw  $08,ya
09dd: 6f        ret

09de: f4 70     mov   a,$70+x
09e0: f0 21     beq   $0a03
09e2: 9b 70     dec   $70+x
09e4: d0 0a     bne   $09f0
09e6: e8 00     mov   a,#$00
09e8: d5 90 02  mov   $0290+x,a
09eb: f5 b0 02  mov   a,$02b0+x
09ee: 2f 10     bra   $0a00
09f0: 60        clrc
09f1: f5 90 02  mov   a,$0290+x
09f4: 95 a0 02  adc   a,$02a0+x
09f7: d5 90 02  mov   $0290+x,a
09fa: f5 91 02  mov   a,$0291+x
09fd: 95 a1 02  adc   a,$02a1+x
0a00: d5 91 02  mov   $0291+x,a
0a03: fb a1     mov   y,$a1+x
0a05: f0 20     beq   $0a27
0a07: f5 80 02  mov   a,$0280+x
0a0a: de a0 18  cbne  $a0+x,$0a25
0a0d: f5 70 02  mov   a,$0270+x
0a10: 10 07     bpl   $0a19
0a12: fc        inc   y
0a13: d0 04     bne   $0a19
0a15: e8 80     mov   a,#$80
0a17: 2f 04     bra   $0a1d
0a19: 60        clrc
0a1a: 95 71 02  adc   a,$0271+x
0a1d: d5 70 02  mov   $0270+x,a
0a20: 3f 8f 09  call  $098f
0a23: 2f 07     bra   $0a2c
0a25: bb a0     inc   $a0+x
0a27: e8 ff     mov   a,#$ff
0a29: 3f 9a 09  call  $099a
0a2c: f4 71     mov   a,$71+x
0a2e: f0 27     beq   $0a57
0a30: 09 37 4e  or    ($4e),($37)
0a33: 9b 71     dec   $71+x
0a35: d0 0d     bne   $0a44
0a37: e8 00     mov   a,#$00
0a39: d5 c0 02  mov   $02c0+x,a
0a3c: f5 e0 02  mov   a,$02e0+x
0a3f: d5 c1 02  mov   $02c1+x,a
0a42: 2f 10     bra   $0a54
0a44: 60        clrc
0a45: f5 d0 02  mov   a,$02d0+x
0a48: 95 c0 02  adc   a,$02c0+x
0a4b: d5 c0 02  mov   $02c0+x,a
0a4e: f5 d1 02  mov   a,$02d1+x
0a51: 95 c1 02  adc   a,$02c1+x
0a54: d5 c1 02  mov   $02c1+x,a
0a57: 6f        ret

0a58: 7d        mov   a,x
0a59: 9f        xcn   a
0a5a: 5c        lsr   a
0a5b: c4 0a     mov   $0a,a
0a5d: 3f 6a 0a  call  $0a6a
0a60: 8d 14     mov   y,#$14
0a62: e8 00     mov   a,#$00
0a64: 9a 08     subw  ya,$08
0a66: da 08     movw  $08,ya
0a68: ab 0a     inc   $0a
0a6a: e4 5b     mov   a,$5b
0a6c: d0 13     bne   $0a81
0a6e: f5 81 02  mov   a,$0281+x
0a71: fd        mov   y,a
0a72: e4 5c     mov   a,$5c
0a74: d0 07     bne   $0a7d
0a76: e4 1e     mov   a,$1e
0a78: f0 03     beq   $0a7d
0a7a: e4 1b     mov   a,$1b
0a7c: cf        mul   ya
0a7d: dd        mov   a,y
0a7e: 5c        lsr   a
0a7f: 2f 31     bra   $0ab2
0a81: eb 09     mov   y,$09
0a83: f6 b8 0a  mov   a,$0ab8+y
0a86: 80        setc
0a87: b6 b7 0a  sbc   a,$0ab7+y
0a8a: eb 08     mov   y,$08
0a8c: cf        mul   ya
0a8d: dd        mov   a,y
0a8e: eb 09     mov   y,$09
0a90: 60        clrc
0a91: 96 b7 0a  adc   a,$0ab7+y
0a94: fd        mov   y,a
0a95: f5 81 02  mov   a,$0281+x
0a98: cf        mul   ya
0a99: e4 5c     mov   a,$5c
0a9b: d0 07     bne   $0aa4
0a9d: e4 1e     mov   a,$1e
0a9f: f0 03     beq   $0aa4
0aa1: e4 1b     mov   a,$1b
0aa3: cf        mul   ya
0aa4: f5 e1 02  mov   a,$02e1+x
0aa7: 1c        asl   a
0aa8: 13 0a 01  bbc0  $0a,$0aac
0aab: 1c        asl   a
0aac: dd        mov   a,y
0aad: 90 03     bcc   $0ab2
0aaf: 48 ff     eor   a,#$ff
0ab1: bc        inc   a
0ab2: eb 0a     mov   y,$0a
0ab4: 5f 0f 0e  jmp   $0e0f

0ab7: db $00,$01,$03,$07,$0d,$15,$1e,$29
0abf: db $34,$42,$51,$5e,$67,$6e,$73,$77
0ac7: db $7a,$7c,$7d,$7e,$7f

; increment section pointer
0acc: 8d 00     mov   y,#$00
0ace: f7 30     mov   a,($30)+y
0ad0: 3a 30     incw  $30
0ad2: 2d        push  a
0ad3: f7 30     mov   a,($30)+y
0ad5: 3a 30     incw  $30
0ad7: fd        mov   y,a
0ad8: ae        pop   a
0ad9: 6f        ret

; dispatch vcmd
0ada: 80        setc
0adb: a8 e0     sbc   a,#$e0
0add: c4 0c     mov   $0c,a
0adf: 1c        asl   a
0ae0: 84 0c     adc   a,$0c
0ae2: fd        mov   y,a
0ae3: f6 fb 0a  mov   a,$0afb+y
0ae6: 2d        push  a
0ae7: f6 fa 0a  mov   a,$0afa+y
0aea: 2d        push  a
0aeb: f6 fc 0a  mov   a,$0afc+y
0aee: f0 08     beq   $0af8
0af0: e7 20     mov   a,($20+x)
0af2: bb 20     inc   $20+x
0af4: d0 02     bne   $0af8
0af6: bb 21     inc   $21+x
0af8: fd        mov   y,a
0af9: 6f        ret

; vcmd dispatch table
0afa: db $5b,$0b,$01                    ; $0b5b> e0
0afd: db $b6,$0b,$01                    ; $0bb6> e1
0b00: db $c4,$0b,$02                    ; $0bc4> e2
0b03: db $dd,$0b,$03                    ; $0bdd> e3
0b06: db $e9,$0b,$00                    ; $0be9> e4
0b09: db $04,$0c,$01                    ; $0c04> e5
0b0c: db $09,$0c,$02                    ; $0c09> e6
0b0f: db $1b,$0c,$01                    ; $0c1b> e7
0b12: db $26,$0c,$02                    ; $0c26> e8
0b15: db $38,$0c,$01                    ; $0c38> e9
0b18: db $3b,$0c,$01                    ; $0c3b> ea
0b1b: db $3f,$0c,$03                    ; $0c3f> eb
0b1e: db $4b,$0c,$00                    ; $0c4b> ec
0b21: db $6c,$0c,$01                    ; $0c6c> ed
0b24: db $75,$0c,$02                    ; $0c75> ee
0b27: db $92,$0c,$03                    ; $0c92> ef
0b2a: db $f4,$0b,$01                    ; $0bf4> f0
0b2d: db $4e,$0c,$03                    ; $0c4e> f1
0b30: db $52,$0c,$03                    ; $0c52> f2
0b33: db $68,$0c,$00                    ; $0c68> f3
0b36: db $8e,$0c,$01                    ; $0c8e> f4
0b39: db $b5,$0c,$03                    ; $0cb5> f5
0b3c: db $e9,$0c,$00                    ; $0ce9> f6
0b3f: db $f0,$0c,$03                    ; $0cf0> f7
0b42: db $c8,$0c,$03                    ; $0cc8> f8
0b45: db $bf,$07,$03                    ; $07bf> f9
0b48: db $12,$0d,$01                    ; $0d12> fa
0b4b: db $5e,$0f,$00                    ; $0f5e> fb
0b4e: db $19,$0d,$00                    ; $0d19> fc
0b51: db $1e,$0d,$00                    ; $0d1e> fd
0b54: db $1f,$0d,$00                    ; $0d1f> fe
0b57: db $20,$0f,$01                    ; $0f20> ff
0b5a: db $00

; vcmd e0
0b5b: fd        mov   y,a
0b5c: 10 06     bpl   $0b64
0b5e: 80        setc
0b5f: a8 ca     sbc   a,#$ca
0b61: 60        clrc
0b62: 84 4f     adc   a,$4f
0b64: eb 5c     mov   y,$5c
0b66: d0 00     bne   $0b68
0b68: d5 b0 00  mov   $00b0+x,a
0b6b: 8d 06     mov   y,#$06
0b6d: cf        mul   ya
0b6e: da 0c     movw  $0c,ya
0b70: 60        clrc
0b71: 98 00 0c  adc   $0c,#$00
0b74: 98 17 0d  adc   $0d,#$17
0b77: e4 17     mov   a,$17
0b79: 24 37     and   a,$37
0b7b: f0 38     beq   $0bb5
0b7d: 4d        push  x
0b7e: 7d        mov   a,x
0b7f: 9f        xcn   a
0b80: 5c        lsr   a
0b81: 08 04     or    a,#$04
0b83: 5d        mov   x,a
0b84: 8d 00     mov   y,#$00
0b86: f7 0c     mov   a,($0c)+y
0b88: 10 0e     bpl   $0b98
0b8a: 28 1f     and   a,#$1f
0b8c: 38 20 38  and   $38,#$20
0b8f: 0e 38 00  tset1 $0038
0b92: 09 37 39  or    ($39),($37)
0b95: dd        mov   a,y
0b96: 2f 07     bra   $0b9f
0b98: e4 37     mov   a,$37
0b9a: 4e 39 00  tclr1 $0039
0b9d: f7 0c     mov   a,($0c)+y
0b9f: d8 f2     mov   $f2,x
0ba1: c4 f3     mov   $f3,a
0ba3: 3d        inc   x
0ba4: fc        inc   y
0ba5: ad 04     cmp   y,#$04
0ba7: d0 f4     bne   $0b9d
0ba9: ce        pop   x
0baa: f7 0c     mov   a,($0c)+y
0bac: d5 01 01  mov   $0101+x,a
0baf: fc        inc   y
0bb0: f7 0c     mov   a,($0c)+y
0bb2: d5 00 01  mov   $0100+x,a
0bb5: 6f        ret

; vcmd e1
0bb6: d5 e1 02  mov   $02e1+x,a
0bb9: 28 1f     and   a,#$1f
0bbb: d5 c1 02  mov   $02c1+x,a
0bbe: e8 00     mov   a,#$00
0bc0: d5 c0 02  mov   $02c0+x,a
0bc3: 6f        ret

; vcmd e2
0bc4: d4 71     mov   $71+x,a
0bc6: 2d        push  a
0bc7: 3f f0 0a  call  $0af0
0bca: d5 e0 02  mov   $02e0+x,a
0bcd: 80        setc
0bce: b5 c1 02  sbc   a,$02c1+x
0bd1: ce        pop   x
0bd2: 3f e7 07  call  $07e7
0bd5: d5 d0 02  mov   $02d0+x,a
0bd8: dd        mov   a,y
0bd9: d5 d1 02  mov   $02d1+x,a
0bdc: 6f        ret

; vcmd e3
0bdd: d5 50 02  mov   $0250+x,a
0be0: 3f f0 0a  call  $0af0
0be3: d5 41 02  mov   $0241+x,a
0be6: 3f f0 0a  call  $0af0
; vcmd e4
0be9: d4 91     mov   $91+x,a
0beb: d5 61 02  mov   $0261+x,a
0bee: e8 00     mov   a,#$00
0bf0: d5 51 02  mov   $0251+x,a
0bf3: 6f        ret

; vcmd f0
0bf4: d5 51 02  mov   $0251+x,a
0bf7: 2d        push  a
0bf8: 8d 00     mov   y,#$00
0bfa: f4 91     mov   a,$91+x
0bfc: ce        pop   x
0bfd: 9e        div   ya,x
0bfe: f8 34     mov   x,$34
0c00: d5 60 02  mov   $0260+x,a
0c03: 6f        ret

; vcmd e5
0c04: e8 00     mov   a,#$00
0c06: da 48     movw  $48,ya
0c08: 6f        ret

; vcmd e6
0c09: c4 4a     mov   $4a,a
0c0b: 3f f0 0a  call  $0af0
0c0e: c4 4b     mov   $4b,a
0c10: 80        setc
0c11: a4 49     sbc   a,$49
0c13: f8 4a     mov   x,$4a
0c15: 3f e7 07  call  $07e7
0c18: da 4c     movw  $4c,ya
0c1a: 6f        ret

; vcmd e7
0c1b: e5 c0 00  mov   a,$00c0
0c1e: f0 01     beq   $0c21
0c20: fd        mov   y,a
0c21: e8 00     mov   a,#$00
0c23: da 42     movw  $42,ya
0c25: 6f        ret

; vcmd e8
0c26: c4 44     mov   $44,a
0c28: 3f f0 0a  call  $0af0
0c2b: c4 45     mov   $45,a
0c2d: 80        setc
0c2e: a4 43     sbc   a,$43
0c30: f8 44     mov   x,$44
0c32: 3f e7 07  call  $07e7
0c35: da 46     movw  $46,ya
0c37: 6f        ret

; vcmd e9
0c38: c4 40     mov   $40,a
0c3a: 6f        ret

; vcmd ea
0c3b: d5 11 02  mov   $0211+x,a
0c3e: 6f        ret

; vcmd eb
0c3f: d5 80 02  mov   $0280+x,a
0c42: 3f f0 0a  call  $0af0
0c45: d5 71 02  mov   $0271+x,a
0c48: 3f f0 0a  call  $0af0
; vcmd ec
0c4b: d4 a1     mov   $a1+x,a
0c4d: 6f        ret

; vcmd f1
0c4e: e8 01     mov   a,#$01
0c50: 2f 02     bra   $0c54
; vcmd f2
0c52: e8 00     mov   a,#$00
0c54: d5 30 02  mov   $0230+x,a
0c57: dd        mov   a,y
0c58: d5 21 02  mov   $0221+x,a
0c5b: 3f f0 0a  call  $0af0
0c5e: d5 20 02  mov   $0220+x,a
0c61: 3f f0 0a  call  $0af0
0c64: d5 31 02  mov   $0231+x,a
0c67: 6f        ret

; vcmd f3
0c68: d5 20 02  mov   $0220+x,a
0c6b: 6f        ret

; vcmd ed
0c6c: d5 91 02  mov   $0291+x,a
0c6f: e8 00     mov   a,#$00
0c71: d5 90 02  mov   $0290+x,a
0c74: 6f        ret

; vcmd ee
0c75: d4 70     mov   $70+x,a
0c77: 2d        push  a
0c78: 3f f0 0a  call  $0af0
0c7b: d5 b0 02  mov   $02b0+x,a
0c7e: 80        setc
0c7f: b5 91 02  sbc   a,$0291+x
0c82: ce        pop   x
0c83: 3f e7 07  call  $07e7
0c86: d5 a0 02  mov   $02a0+x,a
0c89: dd        mov   a,y
0c8a: d5 a1 02  mov   $02a1+x,a
0c8d: 6f        ret

; vcmd f4
0c8e: d5 a1 01  mov   $01a1+x,a
0c91: 6f        ret

; vcmd ef
0c92: d5 20 01  mov   $0120+x,a
0c95: 3f f0 0a  call  $0af0
0c98: d5 21 01  mov   $0121+x,a
0c9b: 3f f0 0a  call  $0af0
0c9e: d4 b1     mov   $b1+x,a
0ca0: f4 20     mov   a,$20+x
0ca2: d5 10 01  mov   $0110+x,a
0ca5: f4 21     mov   a,$21+x
0ca7: d5 11 01  mov   $0111+x,a
0caa: f5 20 01  mov   a,$0120+x
0cad: d4 20     mov   $20+x,a
0caf: f5 21 01  mov   a,$0121+x
0cb2: d4 21     mov   $21+x,a
0cb4: 6f        ret

; vcmd f5
0cb5: c4 3a     mov   $3a,a
0cb7: 3f f0 0a  call  $0af0
0cba: e8 00     mov   a,#$00
0cbc: da 50     movw  $50,ya
0cbe: 3f f0 0a  call  $0af0
0cc1: e8 00     mov   a,#$00
0cc3: da 52     movw  $52,ya
0cc5: b2 38     clr5  $38
0cc7: 6f        ret

; vcmd f8
0cc8: c4 58     mov   $58,a
0cca: 3f f0 0a  call  $0af0
0ccd: c4 59     mov   $59,a
0ccf: 80        setc
0cd0: a4 51     sbc   a,$51
0cd2: f8 58     mov   x,$58
0cd4: 3f e7 07  call  $07e7
0cd7: da 54     movw  $54,ya
0cd9: 3f f0 0a  call  $0af0
0cdc: c4 5a     mov   $5a,a
0cde: 80        setc
0cdf: a4 52     sbc   a,$52
0ce1: f8 58     mov   x,$58
0ce3: 3f e7 07  call  $07e7
0ce6: da 56     movw  $56,ya
0ce8: 6f        ret

; vcmd f6
0ce9: da 50     movw  $50,ya
0ceb: da 52     movw  $52,ya
0ced: a2 38     set5  $38
0cef: 6f        ret

; vcmd f7
0cf0: 3f 1c 0e  call  $0e1c
0cf3: 3f f0 0a  call  $0af0
0cf6: c4 3e     mov   $3e,a
0cf8: 3f f0 0a  call  $0af0
0cfb: 8d 08     mov   y,#$08
0cfd: cf        mul   ya
0cfe: 5d        mov   x,a
0cff: 8d 0f     mov   y,#$0f
0d01: f5 2c 10  mov   a,$102c+x
0d04: 3f 17 0e  call  $0e17
0d07: 3d        inc   x
0d08: dd        mov   a,y
0d09: 60        clrc
0d0a: 88 10     adc   a,#$10
0d0c: fd        mov   y,a
0d0d: 10 f2     bpl   $0d01
0d0f: f8 34     mov   x,$34
0d11: 6f        ret

; vcmd fa
0d12: c4 4f     mov   $4f,a
0d14: 6f        ret

0d15: 3f f2 0a  call  $0af2
0d18: 6f        ret

; vcmd fc
0d19: bc        inc   a
0d1a: d5 b1 02  mov   $02b1+x,a
0d1d: 6f        ret

; vcmd fd
0d1e: bc        inc   a
; vcmd fe
0d1f: c4 1f     mov   $1f,a
0d21: 5f d0 05  jmp   $05d0

0d24: f4 f4     mov   a,$f4+x
0d26: 74 f4     cmp   a,$f4+x
0d28: d0 fa     bne   $0d24
0d2a: d4 00     mov   $00+x,a
0d2c: 6f        ret

0d2d: f0 03     beq   $0d32
0d2f: 09 37 36  or    ($36),($37)
0d32: 6f        ret

0d33: ad ca     cmp   y,#$ca
0d35: 90 05     bcc   $0d3c
0d37: 3f 5b 0b  call  $0b5b
0d3a: 8d a4     mov   y,#$a4
0d3c: ad c8     cmp   y,#$c8
0d3e: b0 ed     bcs   $0d2d
0d40: e4 17     mov   a,$17
0d42: 24 37     and   a,$37
0d44: f0 e6     beq   $0d2c
0d46: dd        mov   a,y
0d47: 28 7f     and   a,#$7f
0d49: 60        clrc
0d4a: 84 40     adc   a,$40
0d4c: 60        clrc
0d4d: 95 11 02  adc   a,$0211+x
0d50: d5 81 01  mov   $0181+x,a
0d53: f5 a1 01  mov   a,$01a1+x
0d56: d5 80 01  mov   $0180+x,a
0d59: f5 51 02  mov   a,$0251+x
0d5c: 5c        lsr   a
0d5d: e8 00     mov   a,#$00
0d5f: 7c        ror   a
0d60: d5 40 02  mov   $0240+x,a
0d63: e8 00     mov   a,#$00
0d65: d4 90     mov   $90+x,a
0d67: d5 30 01  mov   $0130+x,a
0d6a: d5 70 02  mov   $0270+x,a
0d6d: d4 a0     mov   $a0+x,a
0d6f: 09 37 4e  or    ($4e),($37)
0d72: 09 37 35  or    ($35),($37)
0d75: f5 20 02  mov   a,$0220+x
0d78: d4 80     mov   $80+x,a
0d7a: f0 1e     beq   $0d9a
0d7c: f5 21 02  mov   a,$0221+x
0d7f: d4 81     mov   $81+x,a
0d81: f5 30 02  mov   a,$0230+x
0d84: d0 0a     bne   $0d90
0d86: f5 81 01  mov   a,$0181+x
0d89: 80        setc
0d8a: b5 31 02  sbc   a,$0231+x
0d8d: d5 81 01  mov   $0181+x,a
0d90: f5 31 02  mov   a,$0231+x
0d93: 60        clrc
0d94: 95 81 01  adc   a,$0181+x
0d97: 3f cf 07  call  $07cf
0d9a: f5 81 01  mov   a,$0181+x
0d9d: c4 09     mov   $09,a
0d9f: f5 80 01  mov   a,$0180+x
0da2: c4 08     mov   $08,a
0da4: 8d 00     mov   y,#$00
0da6: e4 09     mov   a,$09
0da8: 80        setc
0da9: a8 34     sbc   a,#$34
0dab: b0 09     bcs   $0db6
0dad: e4 09     mov   a,$09
0daf: 80        setc
0db0: a8 13     sbc   a,#$13
0db2: b0 06     bcs   $0dba
0db4: dc        dec   y
0db5: 1c        asl   a
0db6: 7a 08     addw  ya,$08
0db8: da 08     movw  $08,ya
0dba: e4 09     mov   a,$09
0dbc: 1c        asl   a
0dbd: fd        mov   y,a
0dbe: f6 83 0f  mov   a,$0f83+y
0dc1: c4 0d     mov   $0d,a
0dc3: f6 82 0f  mov   a,$0f82+y
0dc6: c4 0c     mov   $0c,a
0dc8: f6 85 0f  mov   a,$0f85+y
0dcb: 2d        push  a
0dcc: f6 84 0f  mov   a,$0f84+y
0dcf: ee        pop   y
0dd0: 9a 0c     subw  ya,$0c
0dd2: eb 08     mov   y,$08
0dd4: cf        mul   ya
0dd5: dd        mov   a,y
0dd6: 8d 00     mov   y,#$00
0dd8: 7a 0c     addw  ya,$0c
0dda: da 0c     movw  $0c,ya
0ddc: f5 00 01  mov   a,$0100+x
0ddf: eb 0d     mov   y,$0d
0de1: cf        mul   ya
0de2: da 0e     movw  $0e,ya
0de4: f5 00 01  mov   a,$0100+x
0de7: eb 0c     mov   y,$0c
0de9: cf        mul   ya
0dea: 6d        push  y
0deb: f5 01 01  mov   a,$0101+x
0dee: eb 0c     mov   y,$0c
0df0: cf        mul   ya
0df1: 7a 0e     addw  ya,$0e
0df3: da 0e     movw  $0e,ya
0df5: f5 01 01  mov   a,$0101+x
0df8: eb 0d     mov   y,$0d
0dfa: cf        mul   ya
0dfb: fd        mov   y,a
0dfc: ae        pop   a
0dfd: 7a 0e     addw  ya,$0e
0dff: da 0e     movw  $0e,ya
0e01: 7d        mov   a,x
0e02: 9f        xcn   a
0e03: 5c        lsr   a
0e04: 08 02     or    a,#$02
0e06: fd        mov   y,a
0e07: e4 0e     mov   a,$0e
0e09: 3f 0f 0e  call  $0e0f
0e0c: fc        inc   y
0e0d: e4 0f     mov   a,$0f
0e0f: 2d        push  a
0e10: e4 37     mov   a,$37
0e12: 24 17     and   a,$17
0e14: ae        pop   a
0e15: f0 04     beq   $0e1b
0e17: cb f2     mov   $f2,y
0e19: c4 f3     mov   $f3,a
0e1b: 6f        ret

0e1c: c4 3d     mov   $3d,a
0e1e: 8d 7d     mov   y,#$7d
0e20: cb f2     mov   $f2,y
0e22: e4 f3     mov   a,$f3
0e24: 64 3d     cmp   a,$3d
0e26: f0 29     beq   $0e51
0e28: 28 0f     and   a,#$0f
0e2a: 48 ff     eor   a,#$ff
0e2c: f3 3c 03  bbc7  $3c,$0e32
0e2f: 60        clrc
0e30: 84 3c     adc   a,$3c
0e32: c4 3c     mov   $3c,a
0e34: 8d 04     mov   y,#$04
0e36: f6 01 04  mov   a,$0401+y
0e39: c4 f2     mov   $f2,a
0e3b: e8 00     mov   a,#$00
0e3d: c4 f3     mov   $f3,a
0e3f: fe f5     dbnz  y,$0e36
0e41: e4 38     mov   a,$38
0e43: 08 20     or    a,#$20
0e45: 8d 6c     mov   y,#$6c
0e47: 3f 17 0e  call  $0e17
0e4a: e4 3d     mov   a,$3d
0e4c: 8d 7d     mov   y,#$7d
0e4e: 3f 17 0e  call  $0e17
0e51: 1c        asl   a
0e52: 1c        asl   a
0e53: 1c        asl   a
0e54: 48 ff     eor   a,#$ff
0e56: 80        setc
0e57: 88 ff     adc   a,#$ff
0e59: 8d 6d     mov   y,#$6d
0e5b: 5f 17 0e  jmp   $0e17

0e5e: e8 aa     mov   a,#$aa
0e60: c4 f4     mov   $f4,a
0e62: e8 bb     mov   a,#$bb
0e64: c4 f5     mov   $f5,a
0e66: e4 f4     mov   a,$f4
0e68: 68 cc     cmp   a,#$cc
0e6a: d0 fa     bne   $0e66
0e6c: 2f 1b     bra   $0e89
0e6e: eb f4     mov   y,$f4
0e70: d0 fc     bne   $0e6e
0e72: 7e f4     cmp   y,$f4
0e74: d0 0d     bne   $0e83
0e76: e4 f5     mov   a,$f5
0e78: cb f4     mov   $f4,y
0e7a: d7 0c     mov   ($0c)+y,a
0e7c: fc        inc   y
0e7d: d0 f3     bne   $0e72
0e7f: ab 0d     inc   $0d
0e81: 2f ef     bra   $0e72
0e83: 10 ed     bpl   $0e72
0e85: 7e f4     cmp   y,$f4
0e87: 10 e9     bpl   $0e72
0e89: e4 f6     mov   a,$f6
0e8b: eb f7     mov   y,$f7
0e8d: da 0c     movw  $0c,ya
0e8f: eb f4     mov   y,$f4
0e91: e4 f5     mov   a,$f5
0e93: cb f4     mov   $f4,y
0e95: d0 d7     bne   $0e6e
0e97: cd 31     mov   x,#$31
0e99: d8 f1     mov   $f1,x
0e9b: 6f        ret

0e9c: e8 f0     mov   a,#$f0
0e9e: c4 f1     mov   $f1,a
0ea0: e8 00     mov   a,#$00
0ea2: 5d        mov   x,a
0ea3: af        mov   (x)+,a
0ea4: c8 e8     cmp   x,#$e8
0ea6: d0 fb     bne   $0ea3
0ea8: e8 01     mov   a,#$01
0eaa: c4 5b     mov   $5b,a
0eac: 3f 1c 0e  call  $0e1c
0eaf: a2 38     set5  $38
0eb1: e8 60     mov   a,#$60
0eb3: 8d 0c     mov   y,#$0c
0eb5: 3f 17 0e  call  $0e17
0eb8: 8d 1c     mov   y,#$1c
0eba: 3f 17 0e  call  $0e17
0ebd: e8 16     mov   a,#$16
0ebf: 8d 5d     mov   y,#$5d
0ec1: 3f 17 0e  call  $0e17
0ec4: e8 10     mov   a,#$10
0ec6: c5 fa 00  mov   $00fa,a
0ec9: c4 43     mov   $43,a
0ecb: e8 01     mov   a,#$01
0ecd: c4 f1     mov   $f1,a
0ecf: 9c        dec   a
0ed0: c4 f5     mov   $f5,a
0ed2: c4 f6     mov   $f6,a
0ed4: c4 f7     mov   $f7,a
0ed6: 6f        ret

0ed7: 28 01     and   a,#$01
0ed9: 2d        push  a
0eda: cd 01     mov   x,#$01
0edc: 3f 24 0d  call  $0d24
0edf: ce        pop   x
0ee0: e4 01     mov   a,$01
0ee2: f0 04     beq   $0ee8
0ee4: 74 10     cmp   a,$10+x
0ee6: f0 1d     beq   $0f05
0ee8: d4 10     mov   $10+x,a
0eea: 28 fe     and   a,#$fe
0eec: f0 18     beq   $0f06
0eee: 68 3c     cmp   a,#$3c
0ef0: d0 0d     bne   $0eff
0ef2: 3f 29 0f  call  $0f29
0ef5: e4 00     mov   a,$00
0ef7: 48 01     eor   a,#$01
0ef9: c4 00     mov   $00,a
0efb: e8 3e     mov   a,#$3e
0efd: c4 11     mov   $11,a
0eff: 3f 29 0f  call  $0f29
0f02: 5f b9 06  jmp   $06b9

0f05: 6f        ret

0f06: e4 00     mov   a,$00
0f08: 28 01     and   a,#$01
0f0a: 5d        mov   x,a
0f0b: 60        clrc
0f0c: bc        inc   a
0f0d: 7c        ror   a
0f0e: 7c        ror   a
0f0f: 7c        ror   a
0f10: c4 37     mov   $37,a
0f12: 48 ff     eor   a,#$ff
0f14: 24 14     and   a,$14
0f16: c4 14     mov   $14,a
0f18: 7d        mov   a,x
0f19: 60        clrc
0f1a: 88 06     adc   a,#$06
0f1c: 1c        asl   a
0f1d: 5d        mov   x,a
0f1e: 2f 3e     bra   $0f5e
; vcmd ff
0f20: d5 b0 01  mov   $01b0+x,a
0f23: e8 00     mov   a,#$00
0f25: d5 b1 01  mov   $01b1+x,a
0f28: 6f        ret

0f29: 5d        mov   x,a
0f2a: f5 8c 10  mov   a,$108c+x
0f2d: fd        mov   y,a
0f2e: f5 8d 10  mov   a,$108d+x
0f31: 2d        push  a
0f32: e4 00     mov   a,$00
0f34: 28 01     and   a,#$01
0f36: 5d        mov   x,a
0f37: 60        clrc
0f38: bc        inc   a
0f39: 7c        ror   a
0f3a: 7c        ror   a
0f3b: 7c        ror   a
0f3c: 04 14     or    a,$14
0f3e: c4 14     mov   $14,a
0f40: f4 10     mov   a,$10+x
0f42: d4 f5     mov   $f5+x,a
0f44: 7d        mov   a,x
0f45: 60        clrc
0f46: 88 06     adc   a,#$06
0f48: 1c        asl   a
0f49: 5d        mov   x,a
0f4a: ae        pop   a
0f4b: d4 21     mov   $21+x,a
0f4d: dd        mov   a,y
0f4e: d4 20     mov   $20+x,a
0f50: e8 01     mov   a,#$01
0f52: d5 60 00  mov   $0060+x,a
0f55: e8 ff     mov   a,#$ff
0f57: d5 b0 01  mov   $01b0+x,a
0f5a: d5 b1 01  mov   $01b1+x,a
0f5d: 6f        ret

; vcmd fb
0f5e: e5 8c 10  mov   a,$108c
0f61: d4 20     mov   $20+x,a
0f63: e5 8d 10  mov   a,$108d
0f66: d4 21     mov   $21+x,a
0f68: 4d        push  x
0f69: 7d        mov   a,x
0f6a: 5c        lsr   a
0f6b: 80        setc
0f6c: a8 06     sbc   a,#$06
0f6e: 5d        mov   x,a
0f6f: e8 00     mov   a,#$00
0f71: d4 f5     mov   $f5+x,a
0f73: ce        pop   x
0f74: e4 37     mov   a,$37
0f76: 48 ff     eor   a,#$ff
0f78: 24 14     and   a,$14
0f7a: c4 14     mov   $14,a
0f7c: 09 37 36  or    ($36),($37)
0f7f: 5f b9 06  jmp   $06b9

0f82: 42 00     
0f84: 46        
0f85: 00        
0f86: 4b 00     
0f88: 4f 00     
0f8a: 54 00     
0f8c: 59        
0f8d: 00        
0f8e: 5e 00 64  
0f91: 00        
0f92: 6a 00 70  
0f95: 00        
0f96: 77 00     
0f98: 7e 00     
0f9a: 85 00 8d  
0f9d: 00        
0f9e: 96 00 9f  
0fa1: 00        
0fa2: a8 00     
0fa4: b2 00     
0fa6: bd        
0fa7: 00        
0fa8: c8 00     
0faa: d4 00     
0fac: e1        
0fad: 00        
0fae: ee        
0faf: 00        
0fb0: fc        
0fb1: 00        
0fb2: 0b 01     
0fb4: 1b 01     
0fb6: 2c 01 3e  
0fb9: 01        
0fba: 51        
0fbb: 01        
0fbc: 65 01 7a  
0fbf: 01        
0fc0: 91        
0fc1: 01        
0fc2: a9 01 c2  
0fc5: 01        
0fc6: dd        
0fc7: 01        
0fc8: f9 01     
0fca: 17 02     
0fcc: 37 02     
0fce: 59        
0fcf: 02 7d     
0fd1: 02 a3     
0fd3: 02 cb     
0fd5: 02 f5     
0fd7: 02 22     
0fd9: 03 52 03  
0fdc: 85 03 ba  
0fdf: 03 f3 03  
0fe2: 2f 04     
0fe4: 6f        
0fe5: 04 b2     
0fe7: 04 fa     
0fe9: 04 46     
0feb: 05 96 05  
0fee: eb 05     
0ff0: 45 06 a5  
0ff3: 06        
0ff4: 0a 07 75  
0ff7: 07 e6     
0ff9: 07 5f     
0ffb: 08 de     
0ffd: 08 65     
0fff: 09 f4 09  
1002: 8c 0a 2c  
1005: 0b d6     
1007: 0b 8b     
1009: 0c 4a 0d  
100c: 14 0e     
100e: ea 0e cd  
1011: 0f        
1012: be        
1013: 10 bd     
1015: 11        
1016: cb 12     
1018: e9 13 18  
101b: 15 59 16  
101e: ad 17     
1020: 16 19 94  
1023: 1a 28     
1025: 1c        
1026: d5 1d 9b  
1029: 1f 7c 21  
102c: 7f        
102d: 00        
102e: 00        
102f: 00        
1030: 00        
1031: 00        
1032: 00        
1033: 00        
1034: 58 bf db  
1037: f0 fe     
1039: 07 0c     
103b: 0c 0c 21  
103e: 2b 2b     
1040: 13 fe f3  
1043: f9 34     
1045: 33 00 d9  
1048: e5 01 fc  
104b: eb 32     
104d: 65 7f 98  
1050: b2 cb     
1052: e5 fc 19  
1055: 32 4c     
1057: 65 72 7f  
105a: 8c 98 a5  
105d: b2 bf     
105f: cb d8     
1061: e5 f2 fc  
1064: 68 10     
1066: 00        
1067: 00        
1068: 78 10 78  
106b: 10 78     
106d: 10 78     
106f: 10 78     
1071: 10 78     
1073: 10 00     
1075: 00        
1076: 00        
1077: 00        
1078: e0        
1079: 1f e5 04  
107c: ed        
107d: 04 f5     
107f: 3f 00 00  
1082: f7 02     
1084: 00        
1085: 00        
1086: f6 f3 e6  
1089: 04 00     
108b: 00        
108c: 25 11 1c  
108f: 11        
1090: 26        
1091: 11        
1092: 30 11     
1094: 3a 11     
1096: 44 11     
1098: 51        
1099: 11        
109a: 63 11 6d  
109d: 11        
109e: 77 11     
10a0: 89 11 96  
10a3: 11        
10a4: a2 11     
10a6: b3 11 bd  
10a9: 11        
10aa: cc 11 d9  
10ad: 11        
10ae: e7 11     
10b0: f1        
10b1: 11        
10b2: 0d        
10b3: 12 26     
10b5: 12 31     
10b7: 12 44     
10b9: 12 54     
10bb: 12 61     
10bd: 12 6f     
10bf: 12 85     
10c1: 12 94     
10c3: 12 9e     
10c5: 12 a8     
10c7: 12 b5     
10c9: 12 bf     
10cb: 12 c9     
10cd: 12 d3     
10cf: 12 e2     
10d1: 12 ef     
10d3: 12 04     
10d5: 13 12 13  
10d8: 1e 13 43  
10db: 13 5f 13  
10de: 6b 13     
10e0: 77 13     
10e2: 8a 13 94  
10e5: 13 9e 13  
10e8: a8 13     
10ea: d9 13     
10ec: e3 13 ed  
10ef: 13 41 14  
10f2: 4b 14     
10f4: 55 14 5f  
10f7: 14 69     
10f9: 14 85     
10fb: 14 8f     
10fd: 14 99     
10ff: 14 a5     
1101: 14 b1     
1103: 14 c0     
1105: 14 d1     
1107: 14 db     
1109: 14 e7     
110b: 14 f5     
110d: 14 ff     
110f: 14 25     
1111: 11        
1112: 25 11 25  
1115: 11        
1116: 2b 15     
1118: 45 15 5a  
111b: 15 e0 01  
111e: ff        
111f: 19        
1120: ed        
1121: ff        
1122: 05 7f b7  
1125: fb e0     
1127: 18 ff 19  
112a: ed        
112b: ff        
112c: 0c 7f a4  
112f: fb e0     
1131: 01        
1132: ff        
1133: 19        
1134: ed        
1135: ff        
1136: 04 7f     
1138: a4 fb     
113a: e0        
113b: 19        
113c: ff        
113d: 19        
113e: ed        
113f: ff        
1140: 24 7f     
1142: b9        
1143: fb e0     
1145: 1a ff     
1147: 19        
1148: ed        
1149: ff        
114a: ea 0c 01  
114d: 7f        
114e: bc        
114f: c7 fb     
1151: e0        
1152: 16 ff 19  
1155: ed        
1156: ff        
1157: ee        
1158: 30 ff     
115a: f1        
115b: 00        
115c: 0c 14 2c  
115f: 7f        
1160: 8e        
1161: f3 fb e0  
1164: 19        
1165: ff        
1166: 19        
1167: ed        
1168: ff        
1169: 12 7f     
116b: 90 fb     
116d: e0        
116e: 1c        
116f: ff        
1170: 19        
1171: ed        
1172: ff        
1173: 0c 7f a4  
1176: fb e0     
1178: 16 ff 19  
117b: ed        
117c: ff        
117d: ee        
117e: 4a ff f1  
1181: 00        
1182: 4a 24 4a  
1185: 7f        
1186: 8c f3 fb  
1189: e0        
118a: 17 ff     
118c: 19        
118d: ed        
118e: ff        
118f: ee        
1190: 3c        
1191: ff        
1192: 78 7f 93  
1195: fb e0     
1197: 19        
1198: ff        
1199: 19        
119a: ed        
119b: ff        
119c: 04 7f     
119e: 95 18 95  
11a1: fb e0     
11a3: 01        
11a4: ff        
11a5: 19        
11a6: ed        
11a7: ff        
11a8: ea 1e 03  
11ab: 7f        
11ac: ab ad     
11ae: ab ad     
11b0: 18 b0 fb  
11b3: e0        
11b4: 12 ff     
11b6: 19        
11b7: ed        
11b8: ff        
11b9: 02 7f     
11bb: b2 fb     
11bd: e0        
11be: 14 ff     
11c0: 19        
11c1: ed        
11c2: ff        
11c3: f1        
11c4: 00        
11c5: 02 06     
11c7: 02 7f     
11c9: ad c5     
11cb: fb e0     
11cd: 13 ff 19  
11d0: ed        
11d1: ff        
11d2: 07 7f     
11d4: 8b 01     
11d6: 73 8b fb  
11d9: e0        
11da: 04 ff     
11dc: 19        
11dd: ed        
11de: ff        
11df: f1        
11e0: 00        
11e1: 30 ec     
11e3: 30 7f     
11e5: c3 fb e0  
11e8: 05 ff 19  
11eb: ed        
11ec: ff        
11ed: 0e 7f a1  
11f0: fb e0     
11f2: 11        
11f3: ff        
11f4: 19        
11f5: ed        
11f6: ff        
11f7: 04 7f     
11f9: 8c 02 95  
11fc: 04 8c     
11fe: 02 95     
1200: 04 8c     
1202: 02 95     
1204: 04 8c     
1206: 02 95     
1208: 04 8c     
120a: 02 95     
120c: fb e0     
120e: 02 ff     
1210: 19        
1211: ed        
1212: ff        
1213: ea fe f1  
1216: 00        
1217: 07 04     
1219: 07 7f     
121b: b0 e0     
121d: 05 f1 00  
1220: 05 fd 05  
1223: 72 b7     
1225: fb e0     
1227: 14 ff     
1229: 19        
122a: ed        
122b: ff        
122c: 03 7f c7  
122f: c7 fb     
1231: e0        
1232: 01        
1233: ff        
1234: 19        
1235: ed        
1236: ff        
1237: ea 06 02  
123a: 7f        
123b: b0 b4     
123d: b7 bc     
123f: c0        
1240: c3 24 c7  
1243: fb e0     
1245: 00        
1246: ff        
1247: 19        
1248: ed        
1249: ff        
124a: f1        
124b: 00        
124c: 02 0c     
124e: 03 7f ab  
1251: c3 f3 fb  
1254: e0        
1255: 18 ff 19  
1258: ed        
1259: ff        
125a: 0c 7f af  
125d: e0        
125e: 1a a4     
1260: fb e0     
1262: 04 ff     
1264: 19        
1265: ed        
1266: ff        
1267: f1        
1268: 04 0c     
126a: 18 10 7b  
126d: bc        
126e: fb e0     
1270: 19        
1271: ff        
1272: 19        
1273: ed        
1274: ff        
1275: ee        
1276: 30 ff     
1278: eb 00     
127a: b4 64     
127c: e3 00 03  
127f: 64 78     
1281: 7f        
1282: 98 c8 fb  
1285: e0        
1286: 01        
1287: ff        
1288: 19        
1289: ed        
128a: ff        
128b: ea 0c 02  
128e: 7f        
128f: c5 c6 24  
1292: c7 fb     
1294: e0        
1295: 17 ff     
1297: 19        
1298: ed        
1299: ff        
129a: 05 7f 9c  
129d: fb e0     
129f: 17 ff     
12a1: 19        
12a2: ed        
12a3: ff        
12a4: 05 7f 8c  
12a7: fb e0     
12a9: 14 ff     
12ab: 19        
12ac: ed        
12ad: ff        
12ae: ee        
12af: 05 ff 0a  
12b2: 7f        
12b3: a1        
12b4: fb e0     
12b6: 00        
12b7: ff        
12b8: 19        
12b9: ed        
12ba: c8 03     
12bc: 4f b2     
12be: fb e0     
12c0: 00        
12c1: ff        
12c2: 19        
12c3: ed        
12c4: c8 03     
12c6: 4f a9     
12c8: fb e0     
12ca: 00        
12cb: ff        
12cc: 19        
12cd: ed        
12ce: c8 03     
12d0: 4f a4     
12d2: fb e0     
12d4: 17 ff     
12d6: 19        
12d7: ed        
12d8: ff        
12d9: ee        
12da: 0a 8c 02  
12dd: 7f        
12de: a1        
12df: 07 af     
12e1: fb e0     
12e3: 05 ff 19  
12e6: ed        
12e7: ff        
12e8: 05 7f 84  
12eb: 0c 1f 87  
12ee: fb e0     
12f0: 17 ff     
12f2: 19        
12f3: ed        
12f4: ff        
12f5: e3 00 64  
12f8: 64 ee     
12fa: 36 ff f1  
12fd: 00        
12fe: 36 24 36  
1301: 7f        
1302: 98 fb e0  
1305: 04 ff     
1307: 19        
1308: ed        
1309: ff        
130a: f1        
130b: 03 09 14  
130e: 0c 79 bc  
1311: fb e0     
1313: 05 ff 19  
1316: ed        
1317: ff        
1318: 04 2f     
131a: 8c 02 8b  
131d: fb e0     
131f: 17 ff     
1321: 19        
1322: ed        
1323: ff        
1324: ea 18 f1  
1327: 00        
1328: 01        
1329: 0c 01 7f  
132c: b0 a4     
132e: b0 a4     
1330: b0 a4     
1332: b0 a4     
1334: b0 a4     
1336: b0 a4     
1338: b0 a4     
133a: b0 a4     
133c: b0 a4     
133e: b0 a4     
1340: b0 a4     
1342: fb e0     
1344: 03 ff 19  
1347: ed        
1348: ff        
1349: e3 00 3c  
134c: 64 ea     
134e: 0c 12 7f  
1351: a8 06     
1353: a9 12 a8  
1356: 06        
1357: a6        
1358: f1        
1359: 24 18     
135b: dc        
135c: 3c        
135d: a8 fb     
135f: e0        
1360: 14 ff     
1362: 19        
1363: ed        
1364: ff        
1365: 04 7f     
1367: b2 03     
1369: a1        
136a: fb e0     
136c: 19        
136d: ff        
136e: 19        
136f: ed        
1370: ff        
1371: 04 7f     
1373: 95 10 95  
1376: fb e0     
1378: 1b ff     
137a: 19        
137b: ed        
137c: ff        
137d: 03 79 c3  
1380: 05 7a b9  
1383: 02 7d     
1385: be        
1386: 05 7c c0  
1389: fb e0     
138b: 15 ff 19  
138e: ed        
138f: ff        
1390: 24 7f     
1392: a3 fb e0  
1395: 15 ff 19  
1398: ed        
1399: ff        
139a: 24 7f     
139c: 9e        
139d: fb e0     
139f: 15 ff 19  
13a2: ed        
13a3: ff        
13a4: 24 7f     
13a6: 97 fb     
13a8: e0        
13a9: 17 ff     
13ab: 19        
13ac: ed        
13ad: ff        
13ae: ee        
13af: 30 a0     
13b1: f1        
13b2: 00        
13b3: 30 fe     
13b5: 30 7f     
13b7: ab ed     
13b9: 64 ee     
13bb: 30 a0     
13bd: f1        
13be: 00        
13bf: 30 fe     
13c1: ab ed     
13c3: 64 ee     
13c5: 30 a0     
13c7: f1        
13c8: 00        
13c9: 30 fe     
13cb: ab ed     
13cd: 64 ee     
13cf: 30 a0     
13d1: f1        
13d2: 00        
13d3: 30 fe     
13d5: ab ed     
13d7: 64 fb     
13d9: e0        
13da: 1a ff     
13dc: 19        
13dd: ed        
13de: ff        
13df: 03 7f b7  
13e2: fb e0     
13e4: 1a ff     
13e6: 19        
13e7: ed        
13e8: ff        
13e9: 24 79     
13eb: bb fb     
13ed: e0        
13ee: 00        
13ef: ff        
13f0: 19        
13f1: ed        
13f2: ff        
13f3: 06        
13f4: 7f        
13f5: 84 f9     
13f7: 00        
13f8: 0c fe 85  
13fb: f9 00     
13fd: 0c fe 87  
1400: f9 00     
1402: 0c fe 89  
1405: f9 00     
1407: 0c fe 8b  
140a: f9 00     
140c: 0c fe 8c  
140f: f9 00     
1411: 0c fe 90  
1414: f9 00     
1416: 0c fe 93  
1419: f9 00     
141b: 0c fe 98  
141e: f9 00     
1420: 0c fe 9c  
1423: f9 00     
1425: 0c fe 9f  
1428: f9 00     
142a: 0c fe a4  
142d: f9 00     
142f: 0c fe a8  
1432: f9 00     
1434: 0c fe ab  
1437: f9 00     
1439: 0c fe ad  
143c: f9 00     
143e: 0c fe fb  
1441: e0        
1442: 1b ff     
1444: 19        
1445: ed        
1446: ff        
1447: 30 7f     
1449: a8 fb     
144b: e0        
144c: 1b ff     
144e: 19        
144f: ed        
1450: ff        
1451: 30 7f     
1453: a3 fb e0  
1456: 1b ff     
1458: 19        
1459: ed        
145a: ff        
145b: 30 7f     
145d: a0        
145e: fb e0     
1460: 1b ff     
1462: 19        
1463: ed        
1464: ff        
1465: 30 7f     
1467: 9c        
1468: fb e0     
146a: 17 ff     
146c: 19        
146d: ed        
146e: ff        
146f: ee        
1470: 3c        
1471: f0 30     
1473: 7f        
1474: 9c        
1475: ee        
1476: 3c        
1477: 3c        
1478: 64 98     
147a: ee        
147b: 3c        
147c: f0 30     
147e: 9f        
147f: ee        
1480: 3c        
1481: 3c        
1482: 78 9c fb  
1485: e0        
1486: 0b ff     
1488: 19        
1489: ed        
148a: ff        
148b: 09 7f a1  
148e: fb e0     
1490: 10 ff     
1492: 19        
1493: ed        
1494: ff        
1495: 60        
1496: 7f        
1497: a5 fb e0  
149a: 15 ff 19  
149d: ed        
149e: ff        
149f: ea fe 30  
14a2: 7f        
14a3: a4 fb     
14a5: e0        
14a6: 1b ff     
14a8: 19        
14a9: ed        
14aa: ff        
14ab: 08 7f     
14ad: aa 18 a9  
14b0: fb e0     
14b2: 11        
14b3: ff        
14b4: 19        
14b5: ed        
14b6: ff        
14b7: 0d        
14b8: 7f        
14b9: 98 ee 18  
14bc: 28 18     
14be: 98 fb e0  
14c1: 12 ff     
14c3: 19        
14c4: ed        
14c5: ff        
14c6: f1        
14c7: 00        
14c8: 03 18 02  
14cb: 7f        
14cc: b7 03     
14ce: c3 f3 fb  
14d1: e0        
14d2: 13 ff 19  
14d5: ed        
14d6: ff        
14d7: 18 7f 97  
14da: fb e0     
14dc: 1a ff     
14de: 19        
14df: ed        
14e0: ff        
14e1: 06        
14e2: 7f        
14e3: 8e        
14e4: 78 a6 fb  
14e7: e0        
14e8: 0b ff     
14ea: 19        
14eb: ed        
14ec: ff        
14ed: e3 00 28  
14f0: 28 0c     
14f2: 7f        
14f3: ab fb     
14f5: e0        
14f6: 1b ff     
14f8: 19        
14f9: ed        
14fa: ff        
14fb: 30 7f     
14fd: ad fb     
14ff: e0        
1500: 0e ff 19  
1503: ed        
1504: ff        
1505: 0b 7f     
1507: a4 e0     
1509: 0f        
150a: 18 a4 fb  
150d: e0        
150e: 11        
150f: ff        
1510: 19        
1511: ed        
1512: ff        
1513: 18 7f ab  
1516: fb e0     
1518: 13 ff 19  
151b: ed        
151c: ff        
151d: 18 7f a7  
1520: fb e0     
1522: 15 ff 19  
1525: ed        
1526: ff        
1527: 0c 7f a6  
152a: fb e0     
152c: 1d        
152d: ff        
152e: 19        
152f: ed        
1530: ff        
1531: ee        
1532: 30 64     
1534: ea f8 05  
1537: 7f        
1538: a4 b0     
153a: b0 b0     
153c: b0 b0     
153e: b0 b0     
1540: b0 b0     
1542: b0 b0     
1544: fb e0     
1546: 17 ff     
1548: 19        
1549: ed        
154a: ff        
154b: 03 7f b0  
154e: b4 b0     
1550: ee        
1551: 78 00 f1  
1554: 00        
1555: 60        
1556: dc        
1557: 78 bc fb  
155a: e0        
155b: 1d        
155c: ff        
155d: 19        
155e: ed        
155f: ff        
1560: f1        
1561: 00        
1562: 06        
1563: e6        
1564: 05 7f b4  
1567: fb
