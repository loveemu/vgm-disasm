0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: d5 00 02  mov   $0200+x,a
040a: 3d        inc   x
040b: d0 fa     bne   $0407
040d: d5 00 03  mov   $0300+x,a
0410: 3d        inc   x
0411: d0 fa     bne   $040d
0413: af        mov   (x)+,a
0414: c8 e0     cmp   x,#$e0
0416: d0 fb     bne   $0413
0418: e8 02     mov   a,#$02
041a: 3f be 0b  call  $0bbe
041d: a2 48     set5  $48
041f: e8 7f     mov   a,#$7f
0421: 8d 0c     mov   y,#$0c
0423: 3f 0f 06  call  $060f
0426: 8d 1c     mov   y,#$1c
0428: 3f 0f 06  call  $060f
042b: e8 13     mov   a,#$13
042d: 8d 5d     mov   y,#$5d
042f: 3f 0f 06  call  $060f
0432: e8 f0     mov   a,#$f0
0434: c5 f1 00  mov   $00f1,a
0437: e8 10     mov   a,#$10
0439: c5 fa 00  mov   $00fa,a
043c: c4 53     mov   $53,a
043e: e8 01     mov   a,#$01
0440: c5 f1 00  mov   $00f1,a
0443: 8d 0a     mov   y,#$0a
0445: ad 05     cmp   y,#$05
0447: f0 07     beq   $0450
0449: b0 08     bcs   $0453
044b: 69 4d 4c  cmp   ($4c),($4d)
044e: d0 11     bne   $0461
0450: e3 4c 0e  bbs7  $4c,$0461
0453: f6 6a 0f  mov   a,$0f6a+y
0456: c5 f2 00  mov   $00f2,a
0459: f6 74 0f  mov   a,$0f74+y
045c: 5d        mov   x,a
045d: e6        mov   a,(x)
045e: c5 f3 00  mov   $00f3,a
0461: fe e2     dbnz  y,$0445
0463: cb 45     mov   $45,y
0465: cb 46     mov   $46,y
0467: ec fd 00  mov   y,$00fd
046a: f0 fb     beq   $0467
046c: 6d        push  y
046d: e8 20     mov   a,#$20
046f: cf        mul   ya
0470: 60        clrc
0471: 84 43     adc   a,$43
0473: c4 43     mov   $43,a
0475: 90 4b     bcc   $04c2
0477: cd 01     mov   x,#$01
0479: 3f 0a 05  call  $050a
047c: c4 05     mov   $05,a
047e: cd 03     mov   x,#$03
0480: 3f 0a 05  call  $050a
0483: c4 07     mov   $07,a
0485: e4 51     mov   a,$51
0487: c4 21     mov   $21,a
0489: ba 52     movw  ya,$52
048b: da 22     movw  $22,ya
048d: 8d 00     mov   y,#$00
048f: e8 20     mov   a,#$20
0491: da 52     movw  $52,ya
0493: e4 54     mov   a,$54
0495: c4 24     mov   $24,a
0497: e4 55     mov   a,$55
0499: c4 25     mov   $25,a
049b: ba 56     movw  ya,$56
049d: da 26     movw  $26,ya
049f: 3f 0f 07  call  $070f
04a2: ba 26     movw  ya,$26
04a4: da 56     movw  $56,ya
04a6: e4 25     mov   a,$25
04a8: c4 55     mov   $55,a
04aa: e4 24     mov   a,$24
04ac: c4 54     mov   $54,a
04ae: ba 22     movw  ya,$22
04b0: da 52     movw  $52,ya
04b2: e4 21     mov   a,$21
04b4: c4 51     mov   $51,a
04b6: cd 02     mov   x,#$02
04b8: 3f 0a 05  call  $050a
04bb: 69 4d 4c  cmp   ($4c),($4d)
04be: f0 02     beq   $04c2
04c0: ab 4c     inc   $4c
04c2: e4 53     mov   a,$53
04c4: ee        pop   y
04c5: cf        mul   ya
04c6: 60        clrc
04c7: 84 51     adc   a,$51
04c9: c4 51     mov   $51,a
04cb: 90 0a     bcc   $04d7
04cd: 3f 37 08  call  $0837
04d0: cd 00     mov   x,#$00
04d2: 3f 0a 05  call  $050a
04d5: 2f 18     bra   $04ef
04d7: e4 04     mov   a,$04
04d9: 04 06     or    a,$06
04db: f0 12     beq   $04ef
04dd: cd 00     mov   x,#$00
04df: 8f 01 47  mov   $47,#$01
04e2: f4 33     mov   a,$33+x
04e4: f0 03     beq   $04e9
04e6: 3f 93 0e  call  $0e93
04e9: 3d        inc   x
04ea: 3d        inc   x
04eb: 0b 47     asl   $47
04ed: d0 f3     bne   $04e2
04ef: 5f 43 04  jmp   $0443

04f2: e8 60     mov   a,#$60
04f4: 8d 6c     mov   y,#$6c
04f6: 3f 0f 06  call  $060f
04f9: e8 ff     mov   a,#$ff
04fb: 8d 5c     mov   y,#$5c
04fd: 3f 0f 06  call  $060f
0500: e8 00     mov   a,#$00
0502: fd        mov   y,a
0503: 3f 2e 0b  call  $0b2e
0506: 3f a4 0f  call  $0fa4
0509: 6f        ret

050a: f4 04     mov   a,$04+x
050c: d5 f4 00  mov   $00f4+x,a
050f: f5 f4 00  mov   a,$00f4+x
0512: 75 f4 00  cmp   a,$00f4+x
0515: d0 f8     bne   $050f
0517: d4 00     mov   $00+x,a
0519: 6f        ret

051a: ad ca     cmp   y,#$ca
051c: 90 05     bcc   $0523
051e: 3f c9 09  call  $09c9
0521: 8d a4     mov   y,#$a4
0523: ad c8     cmp   y,#$c8
0525: b0 f2     bcs   $0519
0527: e4 16     mov   a,$16
0529: 24 47     and   a,$47
052b: d0 ec     bne   $0519
052d: dd        mov   a,y
052e: 28 7f     and   a,#$7f
0530: 60        clrc
0531: 84 50     adc   a,$50
0533: 60        clrc
0534: 95 f0 02  adc   a,$02f0+x
0537: d5 61 03  mov   $0361+x,a
053a: f5 81 03  mov   a,$0381+x
053d: d5 60 03  mov   $0360+x,a
0540: f5 b1 02  mov   a,$02b1+x
0543: 5c        lsr   a
0544: e8 00     mov   a,#$00
0546: 7c        ror   a
0547: d5 a0 02  mov   $02a0+x,a
054a: e8 00     mov   a,#$00
054c: d4 b0     mov   $b0+x,a
054e: d5 00 01  mov   $0100+x,a
0551: d5 d0 02  mov   $02d0+x,a
0554: d4 c0     mov   $c0+x,a
0556: 09 47 5e  or    ($5e),($47)
0559: 09 47 45  or    ($45),($47)
055c: f5 80 02  mov   a,$0280+x
055f: d4 a0     mov   $a0+x,a
0561: f0 1e     beq   $0581
0563: f5 81 02  mov   a,$0281+x
0566: d4 a1     mov   $a1+x,a
0568: f5 90 02  mov   a,$0290+x
056b: d0 0a     bne   $0577
056d: f5 61 03  mov   a,$0361+x
0570: 80        setc
0571: b5 91 02  sbc   a,$0291+x
0574: d5 61 03  mov   $0361+x,a
0577: f5 91 02  mov   a,$0291+x
057a: 60        clrc
057b: 95 61 03  adc   a,$0361+x
057e: 3f 98 0b  call  $0b98
0581: 3f b0 0b  call  $0bb0
0584: 8d 00     mov   y,#$00
0586: e4 0f     mov   a,$0f
0588: 80        setc
0589: a8 34     sbc   a,#$34
058b: b0 09     bcs   $0596
058d: e4 0f     mov   a,$0f
058f: 80        setc
0590: a8 13     sbc   a,#$13
0592: b0 06     bcs   $059a
0594: dc        dec   y
0595: 1c        asl   a
0596: 7a 0e     addw  ya,$0e
0598: da 0e     movw  $0e,ya
059a: 4d        push  x
059b: e4 0f     mov   a,$0f
059d: 1c        asl   a
059e: 8d 00     mov   y,#$00
05a0: cd 18     mov   x,#$18
05a2: 9e        div   ya,x
05a3: 5d        mov   x,a
05a4: f6 80 0f  mov   a,$0f80+y
05a7: c4 13     mov   $13,a
05a9: f6 7f 0f  mov   a,$0f7f+y
05ac: c4 12     mov   $12,a
05ae: f6 82 0f  mov   a,$0f82+y
05b1: 2d        push  a
05b2: f6 81 0f  mov   a,$0f81+y
05b5: ee        pop   y
05b6: 9a 12     subw  ya,$12
05b8: eb 0e     mov   y,$0e
05ba: cf        mul   ya
05bb: dd        mov   a,y
05bc: 8d 00     mov   y,#$00
05be: 7a 12     addw  ya,$12
05c0: cb 13     mov   $13,y
05c2: 1c        asl   a
05c3: 2b 13     rol   $13
05c5: c4 12     mov   $12,a
05c7: 2f 04     bra   $05cd
05c9: 4b 13     lsr   $13
05cb: 7c        ror   a
05cc: 3d        inc   x
05cd: c8 06     cmp   x,#$06
05cf: d0 f8     bne   $05c9
05d1: c4 12     mov   $12,a
05d3: ce        pop   x
05d4: f5 20 02  mov   a,$0220+x
05d7: eb 13     mov   y,$13
05d9: cf        mul   ya
05da: da 14     movw  $14,ya
05dc: f5 20 02  mov   a,$0220+x
05df: eb 12     mov   y,$12
05e1: cf        mul   ya
05e2: 6d        push  y
05e3: f5 21 02  mov   a,$0221+x
05e6: eb 12     mov   y,$12
05e8: cf        mul   ya
05e9: 7a 14     addw  ya,$14
05eb: da 14     movw  $14,ya
05ed: f5 21 02  mov   a,$0221+x
05f0: eb 13     mov   y,$13
05f2: cf        mul   ya
05f3: fd        mov   y,a
05f4: ae        pop   a
05f5: 7a 14     addw  ya,$14
05f7: da 14     movw  $14,ya
05f9: 7d        mov   a,x
05fa: 9f        xcn   a
05fb: 5c        lsr   a
05fc: 08 02     or    a,#$02
05fe: fd        mov   y,a
05ff: e4 14     mov   a,$14
0601: 3f 07 06  call  $0607
0604: fc        inc   y
0605: e4 15     mov   a,$15
0607: 2d        push  a
0608: e4 47     mov   a,$47
060a: 24 16     and   a,$16
060c: ae        pop   a
060d: d0 06     bne   $0615
060f: cc f2 00  mov   $00f2,y
0612: c5 f3 00  mov   $00f3,a
0615: 6f        ret

0616: 8d 00     mov   y,#$00
0618: f7 1d     mov   a,($1d)+y
061a: 3a 1d     incw  $1d
061c: 2d        push  a
061d: f7 1d     mov   a,($1d)+y
061f: 3a 1d     incw  $1d
0621: 2f 0b     bra   $062e
0623: 8d 00     mov   y,#$00
0625: f7 1b     mov   a,($1b)+y
0627: 3a 1b     incw  $1b
0629: 2d        push  a
062a: f7 1b     mov   a,($1b)+y
062c: 3a 1b     incw  $1b
062e: fd        mov   y,a
062f: ae        pop   a
0630: 6f        ret

; play song
0631: c4 04     mov   $04,a
0633: 1c        asl   a
0634: 5d        mov   x,a
0635: f5 19 a0  mov   a,$a019+x
0638: fd        mov   y,a
0639: f5 18 a0  mov   a,$a018+x
063c: da 1d     movw  $1d,ya
063e: da 18     movw  $18,ya
0640: 8f 02 0a  mov   $0a,#$02
0643: e8 00     mov   a,#$00
0645: fd        mov   y,a
0646: 3f 2e 0b  call  $0b2e
0649: 3f 60 09  call  $0960
064c: e8 3f     mov   a,#$3f
064e: 2f 2a     bra   $067a
0650: c4 06     mov   $06,a
0652: 1c        asl   a
0653: 5d        mov   x,a
0654: f5 ff fd  mov   a,$fdff+x
0657: fd        mov   y,a
0658: f5 fe fd  mov   a,$fdfe+x
065b: da 1b     movw  $1b,ya
065d: e4 07     mov   a,$07
065f: d0 02     bne   $0663
0661: e8 13     mov   a,#$13
0663: 8d 60     mov   y,#$60
0665: 3f 0f 06  call  $060f
0668: fc        inc   y
0669: 3f 0f 06  call  $060f
066c: 8d 70     mov   y,#$70
066e: 3f 0f 06  call  $060f
0671: fc        inc   y
0672: 3f 0f 06  call  $060f
0675: 8f 02 0b  mov   $0b,#$02
0678: e8 c0     mov   a,#$c0
067a: 8d 5c     mov   y,#$5c
067c: 3f 0f 06  call  $060f
067f: 04 16     or    a,$16
0681: c4 16     mov   $16,a
0683: 6f        ret

0684: cd 00     mov   x,#$00
0686: 8f 40 47  mov   $47,#$40
0689: 8f 06 17  mov   $17,#$06
068c: 6d        push  y
068d: eb 00     mov   y,$00
068f: e8 ff     mov   a,#$ff
0691: d5 01 03  mov   $0301+x,a
0694: e8 0a     mov   a,#$0a
0696: 3f 22 0a  call  $0a22
0699: d5 11 02  mov   $0211+x,a
069c: d5 81 03  mov   $0381+x,a
069f: d5 f0 02  mov   $02f0+x,a
06a2: d5 80 02  mov   $0280+x,a
06a5: d4 b1     mov   $b1+x,a
06a7: d4 c1     mov   $c1+x,a
06a9: 3d        inc   x
06aa: 3d        inc   x
06ab: 0b 47     asl   $47
06ad: 6e 17 df  dbnz  $17,$068f
06b0: ee        pop   y
06b1: e8 00     mov   a,#$00
06b3: c4 5a     mov   $5a,a
06b5: c4 68     mov   $68,a
06b7: c4 54     mov   $54,a
06b9: c4 50     mov   $50,a
06bb: c4 42     mov   $42,a
06bd: c4 5f     mov   $5f,a
06bf: 8f ff 59  mov   $59,#$ff
06c2: 8f 20 53  mov   $53,#$20
06c5: fd        mov   y,a
06c6: da 56     movw  $56,ya
06c8: 6f        ret

06c9: cd 0c     mov   x,#$0c
06cb: 8f 40 47  mov   $47,#$40
06ce: 8f 02 17  mov   $17,#$02
06d1: e8 ff     mov   a,#$ff
06d3: d5 01 03  mov   $0301+x,a
06d6: e8 0a     mov   a,#$0a
06d8: 3f 22 0a  call  $0a22
06db: d5 11 02  mov   $0211+x,a
06de: d5 81 03  mov   $0381+x,a
06e1: d5 f0 02  mov   $02f0+x,a
06e4: d5 80 02  mov   $0280+x,a
06e7: d4 b1     mov   $b1+x,a
06e9: d4 c1     mov   $c1+x,a
06eb: 3d        inc   x
06ec: 3d        inc   x
06ed: 0b 47     asl   $47
06ef: 6e 17 df  dbnz  $17,$06d1
06f2: e4 04     mov   a,$04
06f4: d0 15     bne   $070b
06f6: e8 00     mov   a,#$00
06f8: c4 5a     mov   $5a,a
06fa: c4 68     mov   $68,a
06fc: c4 50     mov   $50,a
06fe: c4 5f     mov   $5f,a
0700: 8f ff 59  mov   $59,#$ff
0703: 8f 20 53  mov   $53,#$20
0706: c4 54     mov   $54,a
0708: fd        mov   y,a
0709: da 56     movw  $56,ya
070b: 8f 00 1a  mov   $1a,#$00
070e: 6f        ret

070f: eb 09     mov   y,$09
0711: e4 02     mov   a,$02
0713: c4 09     mov   $09,a
0715: 7e 02     cmp   y,$02
0717: f0 07     beq   $0720
0719: ad fe     cmp   y,#$fe
071b: f0 1a     beq   $0737
071d: 5f 50 06  jmp   $0650

0720: e4 06     mov   a,$06
0722: f0 13     beq   $0737
0724: 68 fe     cmp   a,#$fe
0726: f0 0f     beq   $0737
0728: e4 0b     mov   a,$0b
072a: d0 03     bne   $072f
072c: 5f b2 07  jmp   $07b2

072f: 6e 0b 02  dbnz  $0b,$0734
0732: 2f 04     bra   $0738
0734: 5f c9 06  jmp   $06c9

0737: 6f        ret

0738: 3f 23 06  call  $0623
073b: d0 1f     bne   $075c
073d: fd        mov   y,a
073e: d0 04     bne   $0744
0740: 8f fe 06  mov   $06,#$fe
0743: 6f        ret

0744: 8b 1a     dec   $1a
0746: 10 02     bpl   $074a
0748: c4 1a     mov   $1a,a
074a: 3f 23 06  call  $0623
074d: f8 1a     mov   x,$1a
074f: f0 02     beq   $0753
0751: da 1b     movw  $1b,ya
0753: e4 1f     mov   a,$1f
0755: 8d 5c     mov   y,#$5c
0757: 3f 0f 06  call  $060f
075a: 2f dc     bra   $0738
075c: da 14     movw  $14,ya
075e: 8f 40 47  mov   $47,#$40
0761: 8f 00 1f  mov   $1f,#$00
0764: cd 0c     mov   x,#$0c
0766: 8d 00     mov   y,#$00
0768: f7 14     mov   a,($14)+y
076a: d5 32 00  mov   $0032+x,a
076d: d0 06     bne   $0775
076f: e4 47     mov   a,$47
0771: 04 1f     or    a,$1f
0773: c4 1f     mov   $1f,a
0775: fc        inc   y
0776: 3d        inc   x
0777: f7 14     mov   a,($14)+y
0779: d5 32 00  mov   $0032+x,a
077c: fc        inc   y
077d: 3d        inc   x
077e: 0b 47     asl   $47
0780: d0 e6     bne   $0768
0782: e4 16     mov   a,$16
0784: 28 3f     and   a,#$3f
0786: 04 1f     or    a,$1f
0788: c4 16     mov   $16,a
078a: cd 0c     mov   x,#$0c
078c: 8f 40 47  mov   $47,#$40
078f: 8f 02 17  mov   $17,#$02
0792: f4 33     mov   a,$33+x
0794: f0 0a     beq   $07a0
0796: f5 11 02  mov   a,$0211+x
0799: d0 05     bne   $07a0
079b: e8 00     mov   a,#$00
079d: 3f c9 09  call  $09c9
07a0: e8 00     mov   a,#$00
07a2: d4 80     mov   $80+x,a
07a4: d4 90     mov   $90+x,a
07a6: d4 91     mov   $91+x,a
07a8: bc        inc   a
07a9: d4 70     mov   $70+x,a
07ab: 3d        inc   x
07ac: 3d        inc   x
07ad: 0b 47     asl   $47
07af: 6e 17 e0  dbnz  $17,$0792
07b2: cd 0c     mov   x,#$0c
07b4: 8f 00 5e  mov   $5e,#$00
07b7: 8f 40 47  mov   $47,#$40
07ba: 8f 02 17  mov   $17,#$02
07bd: d8 44     mov   $44,x
07bf: f4 33     mov   a,$33+x
07c1: f0 69     beq   $082c
07c3: 9b 70     dec   $70+x
07c5: d0 5f     bne   $0826
07c7: 3f bf 09  call  $09bf
07ca: d0 1a     bne   $07e6
07cc: f4 80     mov   a,$80+x
07ce: d0 03     bne   $07d3
07d0: 5f 38 07  jmp   $0738

07d3: 3f de 0a  call  $0ade
07d6: 9b 80     dec   $80+x
07d8: d0 ed     bne   $07c7
07da: f5 30 02  mov   a,$0230+x
07dd: d4 32     mov   $32+x,a
07df: f5 31 02  mov   a,$0231+x
07e2: d4 33     mov   $33+x,a
07e4: 2f e1     bra   $07c7
07e6: 30 20     bmi   $0808
07e8: d5 00 02  mov   $0200+x,a
07eb: 3f bf 09  call  $09bf
07ee: 30 18     bmi   $0808
07f0: 2d        push  a
07f1: 9f        xcn   a
07f2: 28 07     and   a,#$07
07f4: fd        mov   y,a
07f5: f6 02 a0  mov   a,$a002+y
07f8: d5 01 02  mov   $0201+x,a
07fb: ae        pop   a
07fc: 28 0f     and   a,#$0f
07fe: fd        mov   y,a
07ff: f6 0a a0  mov   a,$a00a+y
0802: d5 10 02  mov   $0210+x,a
0805: 3f bf 09  call  $09bf
; vcmd branches 80-ff
0808: 68 e0     cmp   a,#$e0
080a: 90 05     bcc   $0811
080c: 3f ad 09  call  $09ad
080f: 2f b6     bra   $07c7
; vcmds 80-df - note
0811: 3f 1a 05  call  $051a
0814: f5 00 02  mov   a,$0200+x
0817: d4 70     mov   $70+x,a
0819: fd        mov   y,a
081a: f5 01 02  mov   a,$0201+x
081d: cf        mul   ya
081e: dd        mov   a,y
081f: d0 01     bne   $0822
0821: bc        inc   a
0822: d4 71     mov   $71+x,a
0824: 2f 03     bra   $0829
0826: 3f a1 0d  call  $0da1
0829: 3f 78 0b  call  $0b78
082c: 3d        inc   x
082d: 3d        inc   x
082e: 0b 47     asl   $47
0830: 6e 17 8a  dbnz  $17,$07bd
0833: 3f 6f 09  call  $096f
0836: 6f        ret

0837: eb 08     mov   y,$08
0839: e4 00     mov   a,$00
083b: c4 08     mov   $08,a
083d: 7e 00     cmp   y,$00
083f: f0 0e     beq   $084f
0841: 68 ff     cmp   a,#$ff
0843: d0 03     bne   $0848
0845: 5f f2 04  jmp   $04f2

0848: 68 fe     cmp   a,#$fe
084a: f0 1a     beq   $0866
084c: 5f 31 06  jmp   $0631

084f: e4 04     mov   a,$04
0851: f0 13     beq   $0866
0853: 68 fe     cmp   a,#$fe
0855: f0 0f     beq   $0866
0857: e4 0a     mov   a,$0a
0859: d0 03     bne   $085e
085b: 5f e0 08  jmp   $08e0

085e: 6e 0a 02  dbnz  $0a,$0863
0861: 2f 04     bra   $0867
0863: 5f 84 06  jmp   $0684

0866: 6f        ret

0867: 3f 16 06  call  $0616
086a: d0 22     bne   $088e
086c: fd        mov   y,a
086d: d0 0e     bne   $087d
086f: e4 05     mov   a,$05
0871: f0 06     beq   $0879
0873: ba 18     movw  ya,$18
0875: da 1d     movw  $1d,ya
0877: 2f ee     bra   $0867
0879: 8f fe 04  mov   $04,#$fe
087c: 6f        ret

087d: 8b 42     dec   $42
087f: 10 02     bpl   $0883
0881: c4 42     mov   $42,a
0883: 3f 16 06  call  $0616
0886: f8 42     mov   x,$42
0888: f0 02     beq   $088c
088a: da 1d     movw  $1d,ya
088c: 2f d9     bra   $0867
088e: da 14     movw  $14,ya
0890: 8d 0b     mov   y,#$0b
0892: 8f 20 47  mov   $47,#$20
0895: 8f 00 20  mov   $20,#$00
0898: f7 14     mov   a,($14)+y
089a: d6 32 00  mov   $0032+y,a
089d: d0 06     bne   $08a5
089f: e4 47     mov   a,$47
08a1: 04 20     or    a,$20
08a3: c4 20     mov   $20,a
08a5: dc        dec   y
08a6: f7 14     mov   a,($14)+y
08a8: d6 32 00  mov   $0032+y,a
08ab: dc        dec   y
08ac: 4b 47     lsr   $47
08ae: d0 e8     bne   $0898
08b0: e4 16     mov   a,$16
08b2: 28 c0     and   a,#$c0
08b4: 04 20     or    a,$20
08b6: c4 16     mov   $16,a
08b8: cd 00     mov   x,#$00
08ba: 8f 01 47  mov   $47,#$01
08bd: 8f 06 17  mov   $17,#$06
08c0: f4 33     mov   a,$33+x
08c2: f0 0a     beq   $08ce
08c4: f5 11 02  mov   a,$0211+x
08c7: d0 05     bne   $08ce
08c9: e8 00     mov   a,#$00
08cb: 3f c9 09  call  $09c9
08ce: e8 00     mov   a,#$00
08d0: d4 80     mov   $80+x,a
08d2: d4 90     mov   $90+x,a
08d4: d4 91     mov   $91+x,a
08d6: bc        inc   a
08d7: d4 70     mov   $70+x,a
08d9: 3d        inc   x
08da: 3d        inc   x
08db: 0b 47     asl   $47
08dd: 6e 17 e0  dbnz  $17,$08c0
08e0: cd 00     mov   x,#$00
08e2: d8 5e     mov   $5e,x
08e4: 8f 01 47  mov   $47,#$01
08e7: 8f 06 17  mov   $17,#$06
08ea: d8 44     mov   $44,x
08ec: f4 33     mov   a,$33+x
08ee: f0 69     beq   $0959
08f0: 9b 70     dec   $70+x
08f2: d0 5f     bne   $0953
08f4: 3f bf 09  call  $09bf
08f7: d0 1a     bne   $0913
08f9: f4 80     mov   a,$80+x
08fb: d0 03     bne   $0900
08fd: 5f 67 08  jmp   $0867

0900: 3f de 0a  call  $0ade
0903: 9b 80     dec   $80+x
0905: d0 ed     bne   $08f4
0907: f5 30 02  mov   a,$0230+x
090a: d4 32     mov   $32+x,a
090c: f5 31 02  mov   a,$0231+x
090f: d4 33     mov   $33+x,a
0911: 2f e1     bra   $08f4
0913: 30 20     bmi   $0935
0915: d5 00 02  mov   $0200+x,a
0918: 3f bf 09  call  $09bf
091b: 30 18     bmi   $0935
091d: 2d        push  a
091e: 9f        xcn   a
091f: 28 07     and   a,#$07
0921: fd        mov   y,a
0922: f6 02 a0  mov   a,$a002+y
0925: d5 01 02  mov   $0201+x,a
0928: ae        pop   a
0929: 28 0f     and   a,#$0f
092b: fd        mov   y,a
092c: f6 0a a0  mov   a,$a00a+y
092f: d5 10 02  mov   $0210+x,a
0932: 3f bf 09  call  $09bf
0935: 68 e0     cmp   a,#$e0
0937: 90 05     bcc   $093e
0939: 3f ad 09  call  $09ad
093c: 2f b6     bra   $08f4
093e: 3f 1a 05  call  $051a
0941: f5 00 02  mov   a,$0200+x
0944: d4 70     mov   $70+x,a
0946: fd        mov   y,a
0947: f5 01 02  mov   a,$0201+x
094a: cf        mul   ya
094b: dd        mov   a,y
094c: d0 01     bne   $094f
094e: bc        inc   a
094f: d4 71     mov   $71+x,a
0951: 2f 03     bra   $0956
0953: 3f a1 0d  call  $0da1
0956: 3f 78 0b  call  $0b78
0959: 3d        inc   x
095a: 3d        inc   x
095b: 0b 47     asl   $47
095d: 6e 17 8a  dbnz  $17,$08ea
0960: e4 54     mov   a,$54
0962: f0 0b     beq   $096f
0964: ba 56     movw  ya,$56
0966: 7a 52     addw  ya,$52
0968: 6e 54 02  dbnz  $54,$096d
096b: ba 54     movw  ya,$54
096d: da 52     movw  $52,ya
096f: e4 68     mov   a,$68
0971: f0 15     beq   $0988
0973: ba 64     movw  ya,$64
0975: 7a 60     addw  ya,$60
0977: da 60     movw  $60,ya
0979: ba 66     movw  ya,$66
097b: 7a 62     addw  ya,$62
097d: 6e 68 06  dbnz  $68,$0986
0980: ba 68     movw  ya,$68
0982: da 60     movw  $60,ya
0984: eb 6a     mov   y,$6a
0986: da 62     movw  $62,ya
0988: e4 5a     mov   a,$5a
098a: f0 0e     beq   $099a
098c: ba 5c     movw  ya,$5c
098e: 7a 58     addw  ya,$58
0990: 6e 5a 02  dbnz  $5a,$0995
0993: ba 5a     movw  ya,$5a
0995: da 58     movw  $58,ya
0997: 8f ff 5e  mov   $5e,#$ff
099a: cd 00     mov   x,#$00
099c: 8f 01 47  mov   $47,#$01
099f: f4 33     mov   a,$33+x
09a1: f0 03     beq   $09a6
09a3: 3f d8 0c  call  $0cd8
09a6: 3d        inc   x
09a7: 3d        inc   x
09a8: 0b 47     asl   $47
09aa: d0 f3     bne   $099f
09ac: 6f        ret

; dispatch vcmd in A (e0-ff)
09ad: 1c        asl   a
09ae: fd        mov   y,a
09af: f6 bf 0b  mov   a,$0bbf+y
09b2: 2d        push  a
09b3: f6 be 0b  mov   a,$0bbe+y
09b6: 2d        push  a
09b7: dd        mov   a,y
09b8: 5c        lsr   a
09b9: fd        mov   y,a
09ba: f6 5a 0c  mov   a,$0c5a+y
09bd: f0 08     beq   $09c7
09bf: e7 32     mov   a,($32+x)
09c1: bb 32     inc   $32+x
09c3: d0 02     bne   $09c7
09c5: bb 33     inc   $33+x
09c7: fd        mov   y,a
09c8: 6f        ret

; vcmd e0 - set instrument
09c9: d5 11 02  mov   $0211+x,a
09cc: fd        mov   y,a
09cd: 10 06     bpl   $09d5
09cf: 80        setc
09d0: a8 ca     sbc   a,#$ca
09d2: 60        clrc
09d3: 84 5f     adc   a,$5f
09d5: 8d 06     mov   y,#$06
09d7: cf        mul   ya
09d8: da 12     movw  $12,ya
09da: 60        clrc
09db: 98 00 12  adc   $12,#$00
09de: 98 10 13  adc   $13,#$10
09e1: e4 16     mov   a,$16
09e3: 24 47     and   a,$47
09e5: d0 3a     bne   $0a21
09e7: 4d        push  x
09e8: 7d        mov   a,x
09e9: 9f        xcn   a
09ea: 5c        lsr   a
09eb: 08 04     or    a,#$04
09ed: 5d        mov   x,a
09ee: 8d 00     mov   y,#$00
09f0: f7 12     mov   a,($12)+y
09f2: 10 0e     bpl   $0a02
09f4: 28 1f     and   a,#$1f
09f6: 38 20 48  and   $48,#$20
09f9: 0e 48 00  tset1 $0048
09fc: 09 47 49  or    ($49),($47)
09ff: dd        mov   a,y
0a00: 2f 07     bra   $0a09
0a02: e4 47     mov   a,$47
0a04: 4e 49 00  tclr1 $0049
0a07: f7 12     mov   a,($12)+y
0a09: c9 f2 00  mov   $00f2,x
0a0c: c5 f3 00  mov   $00f3,a
0a0f: 3d        inc   x
0a10: fc        inc   y
0a11: ad 04     cmp   y,#$04
0a13: d0 f2     bne   $0a07
0a15: ce        pop   x
0a16: f7 12     mov   a,($12)+y
0a18: d5 21 02  mov   $0221+x,a
0a1b: fc        inc   y
0a1c: f7 12     mov   a,($12)+y
0a1e: d5 20 02  mov   $0220+x,a
0a21: 6f        ret

; vcmd e1 - pan
0a22: d5 51 03  mov   $0351+x,a
0a25: 28 1f     and   a,#$1f
0a27: d5 31 03  mov   $0331+x,a
0a2a: e8 00     mov   a,#$00
0a2c: d5 30 03  mov   $0330+x,a
0a2f: 6f        ret

; vcmd e2 - pan fade
0a30: d4 91     mov   $91+x,a
0a32: 2d        push  a
0a33: 3f bf 09  call  $09bf
0a36: d5 50 03  mov   $0350+x,a
0a39: 80        setc
0a3a: b5 31 03  sbc   a,$0331+x
0a3d: ce        pop   x
0a3e: 3f 04 0c  call  $0c04
0a41: d5 40 03  mov   $0340+x,a
0a44: dd        mov   a,y
0a45: d5 41 03  mov   $0341+x,a
0a48: 6f        ret

; vcmd e3 - vibrato on
0a49: d5 b0 02  mov   $02b0+x,a
0a4c: 3f bf 09  call  $09bf
0a4f: d5 a1 02  mov   $02a1+x,a
0a52: 3f bf 09  call  $09bf
; vcmd e4 - vibrato off
0a55: d4 b1     mov   $b1+x,a
0a57: d5 c1 02  mov   $02c1+x,a
0a5a: e8 00     mov   a,#$00
0a5c: d5 b1 02  mov   $02b1+x,a
0a5f: 6f        ret

; vcmd e5 - master volume
0a60: e8 00     mov   a,#$00
0a62: da 58     movw  $58,ya
0a64: 6f        ret

; vcmd e6 - master volume fade
0a65: c4 5a     mov   $5a,a
0a67: 3f bf 09  call  $09bf
0a6a: c4 5b     mov   $5b,a
0a6c: 80        setc
0a6d: a4 59     sbc   a,$59
0a6f: f8 5a     mov   x,$5a
0a71: 3f 04 0c  call  $0c04
0a74: da 5c     movw  $5c,ya
0a76: 6f        ret

; vcmd e7 - tempo
0a77: e8 00     mov   a,#$00
0a79: da 52     movw  $52,ya
0a7b: 6f        ret

; vcmd e8 - tempo fade
0a7c: c4 54     mov   $54,a
0a7e: 3f bf 09  call  $09bf
0a81: c4 55     mov   $55,a
0a83: 80        setc
0a84: a4 53     sbc   a,$53
0a86: f8 54     mov   x,$54
0a88: 3f 04 0c  call  $0c04
0a8b: da 56     movw  $56,ya
0a8d: 6f        ret

; vcmd e9 - global transpose
0a8e: c4 50     mov   $50,a
0a90: 6f        ret

; vcmd ea - per-voice transpose
0a91: d5 f0 02  mov   $02f0+x,a
0a94: 6f        ret

; vcmd eb - tremolo on
0a95: d5 e0 02  mov   $02e0+x,a
0a98: 3f bf 09  call  $09bf
0a9b: d5 d1 02  mov   $02d1+x,a
0a9e: 3f bf 09  call  $09bf
; vcmd ec - tremolo off
0aa1: d4 c1     mov   $c1+x,a
0aa3: 6f        ret

; vcmd ed - volume
0aa4: d5 01 03  mov   $0301+x,a
0aa7: e8 00     mov   a,#$00
0aa9: d5 00 03  mov   $0300+x,a
0aac: 6f        ret

; vcmd ee - volume fade
0aad: d4 90     mov   $90+x,a
0aaf: 2d        push  a
0ab0: 3f bf 09  call  $09bf
0ab3: d5 20 03  mov   $0320+x,a
0ab6: 80        setc
0ab7: b5 01 03  sbc   a,$0301+x
0aba: ce        pop   x
0abb: 3f 04 0c  call  $0c04
0abe: d5 10 03  mov   $0310+x,a
0ac1: dd        mov   a,y
0ac2: d5 11 03  mov   $0311+x,a
0ac5: 6f        ret

; vcmd ef - call subroutine
0ac6: d5 40 02  mov   $0240+x,a
0ac9: 3f bf 09  call  $09bf
0acc: d5 41 02  mov   $0241+x,a
0acf: 3f bf 09  call  $09bf
0ad2: d4 80     mov   $80+x,a
0ad4: f4 32     mov   a,$32+x
0ad6: d5 30 02  mov   $0230+x,a
0ad9: f4 33     mov   a,$33+x
0adb: d5 31 02  mov   $0231+x,a
0ade: f5 40 02  mov   a,$0240+x
0ae1: d4 32     mov   $32+x,a
0ae3: f5 41 02  mov   a,$0241+x
0ae6: d4 33     mov   $33+x,a
0ae8: 6f        ret

; vcmd f0 - vibrato fade
0ae9: d5 b1 02  mov   $02b1+x,a
0aec: 2d        push  a
0aed: 8d 00     mov   y,#$00
0aef: f4 b1     mov   a,$b1+x
0af1: ce        pop   x
0af2: 9e        div   ya,x
0af3: f8 44     mov   x,$44
0af5: d5 c0 02  mov   $02c0+x,a
0af8: 6f        ret

; vcmd f1 - pitch envelope (release)
0af9: e8 01     mov   a,#$01
0afb: 2f 02     bra   $0aff
; vcmd f2 - pitch envelope (attack)
0afd: e8 00     mov   a,#$00
0aff: d5 90 02  mov   $0290+x,a
0b02: dd        mov   a,y
0b03: d5 81 02  mov   $0281+x,a
0b06: 3f bf 09  call  $09bf
0b09: d5 80 02  mov   $0280+x,a
0b0c: 3f bf 09  call  $09bf
0b0f: d5 91 02  mov   $0291+x,a
0b12: 6f        ret

; vcmd f3 - pitch envelope off
0b13: d5 80 02  mov   $0280+x,a
0b16: 6f        ret

; vcmd f4 - tuning
0b17: d5 81 03  mov   $0381+x,a
0b1a: 6f        ret

; vcmd f5 - echo vbits/volume
0b1b: c4 4a     mov   $4a,a
0b1d: 3f bf 09  call  $09bf
0b20: e8 00     mov   a,#$00
0b22: da 60     movw  $60,ya
0b24: 3f bf 09  call  $09bf
0b27: e8 00     mov   a,#$00
0b29: da 62     movw  $62,ya
0b2b: b2 48     clr5  $48
0b2d: 6f        ret

; vcmd f6 - disable echo
0b2e: da 60     movw  $60,ya
0b30: da 62     movw  $62,ya
0b32: a2 48     set5  $48
0b34: 6f        ret

; vcmd f7 - set echo params
0b35: 3f be 0b  call  $0bbe
0b38: 3f bf 09  call  $09bf
0b3b: c4 4e     mov   $4e,a
0b3d: 3f bf 09  call  $09bf
0b40: 8d 08     mov   y,#$08
0b42: cf        mul   ya
0b43: 5d        mov   x,a
0b44: 8d 0f     mov   y,#$0f
0b46: f5 4b 0f  mov   a,$0f4b+x
0b49: 3f 0f 06  call  $060f
0b4c: 3d        inc   x
0b4d: dd        mov   a,y
0b4e: 60        clrc
0b4f: 88 10     adc   a,#$10
0b51: fd        mov   y,a
0b52: 10 f2     bpl   $0b46
0b54: f8 44     mov   x,$44
0b56: 6f        ret

; vcmd f8 - echo volume fade
0b57: c4 68     mov   $68,a
0b59: 3f bf 09  call  $09bf
0b5c: c4 69     mov   $69,a
0b5e: 80        setc
0b5f: a4 61     sbc   a,$61
0b61: f8 68     mov   x,$68
0b63: 3f 04 0c  call  $0c04
0b66: da 64     movw  $64,ya
0b68: 3f bf 09  call  $09bf
0b6b: c4 6a     mov   $6a,a
0b6d: 80        setc
0b6e: a4 63     sbc   a,$63
0b70: f8 68     mov   x,$68
0b72: 3f 04 0c  call  $0c04
0b75: da 66     movw  $66,ya
0b77: 6f        ret

0b78: f4 a0     mov   a,$a0+x
0b7a: d0 33     bne   $0baf
0b7c: e7 32     mov   a,($32+x)
0b7e: 68 f9     cmp   a,#$f9
0b80: d0 2d     bne   $0baf
0b82: 3f c1 09  call  $09c1
0b85: 3f bf 09  call  $09bf
; vcmd f9 - pitch slide
0b88: d4 a1     mov   $a1+x,a
0b8a: 3f bf 09  call  $09bf
0b8d: d4 a0     mov   $a0+x,a
0b8f: 3f bf 09  call  $09bf
0b92: 60        clrc
0b93: 84 50     adc   a,$50
0b95: 95 f0 02  adc   a,$02f0+x
0b98: 28 7f     and   a,#$7f
0b9a: d5 80 03  mov   $0380+x,a
0b9d: 80        setc
0b9e: b5 61 03  sbc   a,$0361+x
0ba1: fb a0     mov   y,$a0+x
0ba3: 6d        push  y
0ba4: ce        pop   x
0ba5: 3f 04 0c  call  $0c04
0ba8: d5 70 03  mov   $0370+x,a
0bab: dd        mov   a,y
0bac: d5 71 03  mov   $0371+x,a
0baf: 6f        ret

0bb0: f5 61 03  mov   a,$0361+x
0bb3: c4 0f     mov   $0f,a
0bb5: f5 60 03  mov   a,$0360+x
0bb8: c4 0e     mov   $0e,a
0bba: 6f        ret

; vcmd fa - set perc patch base
0bbb: c4 5f     mov   $5f,a
0bbd: 6f        ret

0bbe: c4 4d     mov   $4d,a
0bc0: 8d 7d     mov   y,#$7d
0bc2: cc f2 00  mov   $00f2,y
0bc5: e5 f3 00  mov   a,$00f3
0bc8: 64 4d     cmp   a,$4d
0bca: f0 2b     beq   $0bf7
0bcc: 28 0f     and   a,#$0f
0bce: 48 ff     eor   a,#$ff
0bd0: f3 4c 03  bbc7  $4c,$0bd6
0bd3: 60        clrc
0bd4: 84 4c     adc   a,$4c
0bd6: c4 4c     mov   $4c,a
0bd8: 8d 04     mov   y,#$04
0bda: f6 6a 0f  mov   a,$0f6a+y
0bdd: c5 f2 00  mov   $00f2,a
0be0: e8 00     mov   a,#$00
0be2: c5 f3 00  mov   $00f3,a
0be5: fe f3     dbnz  y,$0bda
0be7: e4 48     mov   a,$48
0be9: 08 20     or    a,#$20
0beb: 8d 6c     mov   y,#$6c
0bed: 3f 0f 06  call  $060f
0bf0: e4 4d     mov   a,$4d
0bf2: 8d 7d     mov   y,#$7d
0bf4: 3f 0f 06  call  $060f
0bf7: 1c        asl   a
0bf8: 1c        asl   a
0bf9: 1c        asl   a
0bfa: 48 ff     eor   a,#$ff
0bfc: 80        setc
0bfd: 88 a0     adc   a,#$a0
0bff: 8d 6d     mov   y,#$6d
0c01: 5f 0f 06  jmp   $060f

0c04: ed        notc
0c05: 6b 10     ror   $10
0c07: 10 03     bpl   $0c0c
0c09: 48 ff     eor   a,#$ff
0c0b: bc        inc   a
0c0c: 8d 00     mov   y,#$00
0c0e: 9e        div   ya,x
0c0f: 2d        push  a
0c10: e8 00     mov   a,#$00
0c12: 9e        div   ya,x
0c13: ee        pop   y
0c14: f8 44     mov   x,$44
0c16: f3 10 06  bbc7  $10,$0c1f
0c19: da 12     movw  $12,ya
0c1b: ba 0c     movw  ya,$0c
0c1d: 9a 12     subw  ya,$12
0c1f: 6f        ret

; vcmd fb - repeat start
0c20: 4d        push  x
0c21: 7d        mov   a,x
0c22: 5c        lsr   a
0c23: 5d        mov   x,a
0c24: e8 ff     mov   a,#$ff
0c26: d5 c0 03  mov   $03c0+x,a
0c29: ce        pop   x
0c2a: f4 32     mov   a,$32+x
0c2c: d5 a0 03  mov   $03a0+x,a
0c2f: f4 33     mov   a,$33+x
0c31: d5 a1 03  mov   $03a1+x,a
0c34: 6f        ret

; vcmd fc - repeat end
0c35: 4d        push  x
0c36: 7d        mov   a,x
0c37: 5c        lsr   a
0c38: 5d        mov   x,a
0c39: f5 c0 03  mov   a,$03c0+x
0c3c: 68 ff     cmp   a,#$ff
0c3e: d0 03     bne   $0c43
0c40: dd        mov   a,y
0c41: 8d ff     mov   y,#$ff
0c43: 9c        dec   a
0c44: d5 c0 03  mov   $03c0+x,a
0c47: ce        pop   x
0c48: f0 18     beq   $0c62
0c4a: ad ff     cmp   y,#$ff
0c4c: d0 0a     bne   $0c58
0c4e: f4 32     mov   a,$32+x
0c50: d5 b0 03  mov   $03b0+x,a
0c53: f4 33     mov   a,$33+x
0c55: d5 b1 03  mov   $03b1+x,a
0c58: f5 a0 03  mov   a,$03a0+x
0c5b: d4 32     mov   $32+x,a
0c5d: f5 a1 03  mov   a,$03a1+x
0c60: d4 33     mov   $33+x,a
0c62: 6f        ret

; vcmd fd - jump to end on final repeat
0c63: 4d        push  x
0c64: 7d        mov   a,x
0c65: 5c        lsr   a
0c66: 5d        mov   x,a
0c67: f5 c0 03  mov   a,$03c0+x
0c6a: ce        pop   x
0c6b: 68 ff     cmp   a,#$ff
0c6d: f0 0e     beq   $0c7d
0c6f: 68 01     cmp   a,#$01
0c71: d0 0a     bne   $0c7d
0c73: f5 b0 03  mov   a,$03b0+x
0c76: d4 32     mov   $32+x,a
0c78: f5 b1 03  mov   a,$03b1+x
0c7b: d4 33     mov   $33+x,a
0c7d: 6f        ret

; vcmd dispatch table
0c7f: dw $09c9 ; e0 - set instrument
0c81: dw $0a22 ; e1 - pan
0c83: dw $0a30 ; e2 - pan fade
0c85: dw $0a49 ; e3 - vibrato on
0c87: dw $0a55 ; e4 - vibrato off
0c89: dw $0a60 ; e5 - master volume
0c8b: dw $0a65 ; e6 - master volume fade
0c8d: dw $0a77 ; e7 - tempo
0c8f: dw $0a7c ; e8 - tempo fade
0c91: dw $0a8e ; e9 - global transpose
0c93: dw $0a91 ; ea - per-voice transpose
0c95: dw $0a95 ; eb - tremolo on
0c97: dw $0aa1 ; ec - tremolo off
0c99: dw $0aa4 ; ed - volume
0c9b: dw $0aad ; ee - volume fade
0c9d: dw $0ac6 ; ef - call subroutine
0c9f: dw $0ae9 ; f0 - vibrato fade
0ca1: dw $0af9 ; f1 - pitch envelope (release)
0ca3: dw $0afd ; f2 - pitch envelope (attack)
0ca5: dw $0b13 ; f3 - pitch envelope off
0ca7: dw $0b17 ; f4 - tuning
0ca9: dw $0b1b ; f5 - echo vbits/volume
0cab: dw $0b2e ; f6 - disable echo
0cad: dw $0b35 ; f7 - set echo params
0caf: dw $0b57 ; f8 - echo volume fade
0cb1: dw $0b88 ; f9 - pitch slide
0cb3: dw $0bbb ; fa - set perc patch base
0cb5: dw $0c20 ; fb - repeat start
0cb7: dw $0c35 ; fc - repeat end
0cb9: dw $0c63 ; fd - jump to end on final repeat

; vcmd lengths
0cba: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0cc2: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0cca: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0cb2: db $03,$03,$01,$00,$01,$00	 ; f8-fd

0cd8: f4 90     mov   a,$90+x
0cda: f0 24     beq   $0d00
0cdc: 09 47 5e  or    ($5e),($47)
0cdf: 9b 90     dec   $90+x
0ce1: d0 0a     bne   $0ced
0ce3: e8 00     mov   a,#$00
0ce5: d5 00 03  mov   $0300+x,a
0ce8: f5 20 03  mov   a,$0320+x
0ceb: 2f 10     bra   $0cfd
0ced: 60        clrc
0cee: f5 00 03  mov   a,$0300+x
0cf1: 95 10 03  adc   a,$0310+x
0cf4: d5 00 03  mov   $0300+x,a
0cf7: f5 01 03  mov   a,$0301+x
0cfa: 95 11 03  adc   a,$0311+x
0cfd: d5 01 03  mov   $0301+x,a
0d00: fb c1     mov   y,$c1+x
0d02: f0 23     beq   $0d27
0d04: f5 e0 02  mov   a,$02e0+x
0d07: de c0 1b  cbne  $c0+x,$0d25
0d0a: 09 47 5e  or    ($5e),($47)
0d0d: f5 d0 02  mov   a,$02d0+x
0d10: 10 07     bpl   $0d19
0d12: fc        inc   y
0d13: d0 04     bne   $0d19
0d15: e8 80     mov   a,#$80
0d17: 2f 04     bra   $0d1d
0d19: 60        clrc
0d1a: 95 d1 02  adc   a,$02d1+x
0d1d: d5 d0 02  mov   $02d0+x,a
0d20: 3f 19 0f  call  $0f19
0d23: 2f 07     bra   $0d2c
0d25: bb c0     inc   $c0+x
0d27: e8 ff     mov   a,#$ff
0d29: 3f 24 0f  call  $0f24
0d2c: f4 91     mov   a,$91+x
0d2e: f0 24     beq   $0d54
0d30: 09 47 5e  or    ($5e),($47)
0d33: 9b 91     dec   $91+x
0d35: d0 0a     bne   $0d41
0d37: e8 00     mov   a,#$00
0d39: d5 30 03  mov   $0330+x,a
0d3c: f5 50 03  mov   a,$0350+x
0d3f: 2f 10     bra   $0d51
0d41: 60        clrc
0d42: f5 30 03  mov   a,$0330+x
0d45: 95 40 03  adc   a,$0340+x
0d48: d5 30 03  mov   $0330+x,a
0d4b: f5 31 03  mov   a,$0331+x
0d4e: 95 41 03  adc   a,$0341+x
0d51: d5 31 03  mov   $0331+x,a
0d54: e4 47     mov   a,$47
0d56: 24 5e     and   a,$5e
0d58: f0 46     beq   $0da0
0d5a: f5 31 03  mov   a,$0331+x
0d5d: fd        mov   y,a
0d5e: f5 30 03  mov   a,$0330+x
0d61: da 0e     movw  $0e,ya
0d63: 7d        mov   a,x
0d64: 9f        xcn   a
0d65: 5c        lsr   a
0d66: c4 10     mov   $10,a
0d68: eb 0f     mov   y,$0f
0d6a: f6 37 0f  mov   a,$0f37+y
0d6d: 80        setc
0d6e: b6 36 0f  sbc   a,$0f36+y
0d71: eb 0e     mov   y,$0e
0d73: cf        mul   ya
0d74: dd        mov   a,y
0d75: eb 0f     mov   y,$0f
0d77: 60        clrc
0d78: 96 36 0f  adc   a,$0f36+y
0d7b: fd        mov   y,a
0d7c: f5 21 03  mov   a,$0321+x
0d7f: cf        mul   ya
0d80: f5 51 03  mov   a,$0351+x
0d83: 1c        asl   a
0d84: 13 10 01  bbc0  $10,$0d88
0d87: 1c        asl   a
0d88: dd        mov   a,y
0d89: 90 03     bcc   $0d8e
0d8b: 48 ff     eor   a,#$ff
0d8d: bc        inc   a
0d8e: eb 10     mov   y,$10
0d90: 3f 07 06  call  $0607
0d93: 8d 14     mov   y,#$14
0d95: e8 00     mov   a,#$00
0d97: 9a 0e     subw  ya,$0e
0d99: da 0e     movw  $0e,ya
0d9b: ab 10     inc   $10
0d9d: 33 10 c8  bbc1  $10,$0d68
0da0: 6f        ret

0da1: f4 71     mov   a,$71+x
0da3: f0 65     beq   $0e0a
0da5: 9b 71     dec   $71+x
0da7: f0 05     beq   $0dae
0da9: e8 02     mov   a,#$02
0dab: de 70 5c  cbne  $70+x,$0e0a
0dae: f4 80     mov   a,$80+x
0db0: c4 15     mov   $15,a
0db2: f4 32     mov   a,$32+x
0db4: fb 33     mov   y,$33+x
0db6: da 12     movw  $12,ya
0db8: 8d 00     mov   y,#$00
0dba: f7 12     mov   a,($12)+y
0dbc: f0 1e     beq   $0ddc
0dbe: 30 07     bmi   $0dc7
0dc0: fc        inc   y
0dc1: 30 40     bmi   $0e03
0dc3: f7 12     mov   a,($12)+y
0dc5: 10 f9     bpl   $0dc0
0dc7: 68 c8     cmp   a,#$c8
0dc9: f0 3f     beq   $0e0a
0dcb: 68 ef     cmp   a,#$ef
0dcd: f0 29     beq   $0df8
0dcf: 68 e0     cmp   a,#$e0
0dd1: 90 30     bcc   $0e03
0dd3: 6d        push  y
0dd4: fd        mov   y,a
0dd5: ae        pop   a
0dd6: 96 da 0b  adc   a,$0bda+y
0dd9: fd        mov   y,a
0dda: 2f de     bra   $0dba
0ddc: e4 15     mov   a,$15
0dde: f0 23     beq   $0e03
0de0: 8b 15     dec   $15
0de2: d0 0a     bne   $0dee
0de4: f5 31 02  mov   a,$0231+x
0de7: 2d        push  a
0de8: f5 30 02  mov   a,$0230+x
0deb: ee        pop   y
0dec: 2f c8     bra   $0db6
0dee: f5 41 02  mov   a,$0241+x
0df1: 2d        push  a
0df2: f5 40 02  mov   a,$0240+x
0df5: ee        pop   y
0df6: 2f be     bra   $0db6
0df8: fc        inc   y
0df9: f7 12     mov   a,($12)+y
0dfb: 2d        push  a
0dfc: fc        inc   y
0dfd: f7 12     mov   a,($12)+y
0dff: fd        mov   y,a
0e00: ae        pop   a
0e01: 2f b3     bra   $0db6
0e03: e4 47     mov   a,$47
0e05: 8d 5c     mov   y,#$5c
0e07: 3f 07 06  call  $0607
0e0a: f2 11     clr7  $11
0e0c: f4 a0     mov   a,$a0+x
0e0e: f0 2c     beq   $0e3c
0e10: f4 a1     mov   a,$a1+x
0e12: f0 04     beq   $0e18
0e14: 9b a1     dec   $a1+x
0e16: 2f 24     bra   $0e3c
0e18: e2 11     set7  $11
0e1a: 9b a0     dec   $a0+x
0e1c: d0 0b     bne   $0e29
0e1e: f5 81 03  mov   a,$0381+x
0e21: d5 60 03  mov   $0360+x,a
0e24: f5 80 03  mov   a,$0380+x
0e27: 2f 10     bra   $0e39
0e29: 60        clrc
0e2a: f5 60 03  mov   a,$0360+x
0e2d: 95 70 03  adc   a,$0370+x
0e30: d5 60 03  mov   $0360+x,a
0e33: f5 61 03  mov   a,$0361+x
0e36: 95 71 03  adc   a,$0371+x
0e39: d5 61 03  mov   $0361+x,a
0e3c: 3f b0 0b  call  $0bb0
0e3f: f4 b1     mov   a,$b1+x
0e41: f0 4c     beq   $0e8f
0e43: f5 b0 02  mov   a,$02b0+x
0e46: de b0 44  cbne  $b0+x,$0e8d
0e49: f5 00 01  mov   a,$0100+x
0e4c: 75 b1 02  cmp   a,$02b1+x
0e4f: d0 05     bne   $0e56
0e51: f5 c1 02  mov   a,$02c1+x
0e54: 2f 0d     bra   $0e63
0e56: 40        setp
0e57: bb 00     inc   $00+x
0e59: 20        clrp
0e5a: fd        mov   y,a
0e5b: f0 02     beq   $0e5f
0e5d: f4 b1     mov   a,$b1+x
0e5f: 60        clrc
0e60: 95 c0 02  adc   a,$02c0+x
0e63: d4 b1     mov   $b1+x,a
0e65: f5 a0 02  mov   a,$02a0+x
0e68: 60        clrc
0e69: 95 a1 02  adc   a,$02a1+x
0e6c: d5 a0 02  mov   $02a0+x,a
0e6f: c4 10     mov   $10,a
0e71: 1c        asl   a
0e72: 1c        asl   a
0e73: 90 02     bcc   $0e77
0e75: 48 ff     eor   a,#$ff
0e77: fd        mov   y,a
0e78: f4 b1     mov   a,$b1+x
0e7a: 68 f1     cmp   a,#$f1
0e7c: 90 05     bcc   $0e83
0e7e: 28 0f     and   a,#$0f
0e80: cf        mul   ya
0e81: 2f 04     bra   $0e87
0e83: cf        mul   ya
0e84: dd        mov   a,y
0e85: 8d 00     mov   y,#$00
0e87: 3f 04 0f  call  $0f04
0e8a: 5f 84 05  jmp   $0584

0e8d: bb b0     inc   $b0+x
0e8f: e3 11 f8  bbs7  $11,$0e8a
0e92: 6f        ret

0e93: f2 11     clr7  $11
0e95: f4 c1     mov   a,$c1+x
0e97: f0 09     beq   $0ea2
0e99: f5 e0 02  mov   a,$02e0+x
0e9c: de c0 03  cbne  $c0+x,$0ea2
0e9f: 3f 0c 0f  call  $0f0c
0ea2: f5 31 03  mov   a,$0331+x
0ea5: fd        mov   y,a
0ea6: f5 30 03  mov   a,$0330+x
0ea9: da 0e     movw  $0e,ya
0eab: f4 91     mov   a,$91+x
0ead: f0 0a     beq   $0eb9
0eaf: f5 41 03  mov   a,$0341+x
0eb2: fd        mov   y,a
0eb3: f5 40 03  mov   a,$0340+x
0eb6: 3f ee 0e  call  $0eee
0eb9: f3 11 03  bbc7  $11,$0ebf
0ebc: 3f 63 0d  call  $0d63
0ebf: f2 11     clr7  $11
0ec1: 3f b0 0b  call  $0bb0
0ec4: f4 a0     mov   a,$a0+x
0ec6: f0 0e     beq   $0ed6
0ec8: f4 a1     mov   a,$a1+x
0eca: d0 0a     bne   $0ed6
0ecc: f5 71 03  mov   a,$0371+x
0ecf: fd        mov   y,a
0ed0: f5 70 03  mov   a,$0370+x
0ed3: 3f ee 0e  call  $0eee
0ed6: f4 b1     mov   a,$b1+x
0ed8: f0 b5     beq   $0e8f
0eda: f5 b0 02  mov   a,$02b0+x
0edd: de b0 af  cbne  $b0+x,$0e8f
0ee0: eb 51     mov   y,$51
0ee2: f5 a1 02  mov   a,$02a1+x
0ee5: cf        mul   ya
0ee6: dd        mov   a,y
0ee7: 60        clrc
0ee8: 95 a0 02  adc   a,$02a0+x
0eeb: 5f 6f 0e  jmp   $0e6f

0eee: e2 11     set7  $11
0ef0: cb 10     mov   $10,y
0ef2: 3f 16 0c  call  $0c16
0ef5: 6d        push  y
0ef6: eb 51     mov   y,$51
0ef8: cf        mul   ya
0ef9: cb 12     mov   $12,y
0efb: 8f 00 13  mov   $13,#$00
0efe: eb 51     mov   y,$51
0f00: ae        pop   a
0f01: cf        mul   ya
0f02: 7a 12     addw  ya,$12
0f04: 3f 16 0c  call  $0c16
0f07: 7a 0e     addw  ya,$0e
0f09: da 0e     movw  $0e,ya
0f0b: 6f        ret

0f0c: e2 11     set7  $11
0f0e: eb 51     mov   y,$51
0f10: f5 d1 02  mov   a,$02d1+x
0f13: cf        mul   ya
0f14: dd        mov   a,y
0f15: 60        clrc
0f16: 95 d0 02  adc   a,$02d0+x
0f19: 1c        asl   a
0f1a: 90 02     bcc   $0f1e
0f1c: 48 ff     eor   a,#$ff
0f1e: fb c1     mov   y,$c1+x
0f20: cf        mul   ya
0f21: dd        mov   a,y
0f22: 48 ff     eor   a,#$ff
0f24: eb 59     mov   y,$59
0f26: cf        mul   ya
0f27: f5 10 02  mov   a,$0210+x
0f2a: cf        mul   ya
0f2b: f5 01 03  mov   a,$0301+x
0f2e: cf        mul   ya
0f2f: dd        mov   a,y
0f30: cf        mul   ya
0f31: dd        mov   a,y
0f32: d5 21 03  mov   $0321+x,a
0f35: 6f        ret

; pan table
0f36: db $00,$01,$03,$07,$0d,$15,$1e,$29
0f3e: db $34,$42,$51,$5e,$67,$6e,$73,$77
0f46: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
0f4b: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
0f53: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
0f5b: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
0f63: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs for dsp regs
0f6b: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0f75: db $61,$63,$4e,$4a,$48,$45,$0c,$49,$4b,$46,$5f

; pitch table
0f7f: dw $085f
0f81: dw $08de
0f83: dw $0965
0f85: dw $09f4
0f87: dw $0a8c
0f89: dw $0b2c
0f8b: dw $0bd6
0f8d: dw $0c8b
0f8f: dw $0d4a
0f91: dw $0e14

; version text string

0f99: db "*Ver S1.20*"
