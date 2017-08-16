; Pilotwings SPC - loveemu labo
; Disassembler: spcdas v0.01
; Super Mario World variant

0500: 20        clrp
0501: cd cf     mov   x,#$cf
0503: bd        mov   sp,x
0504: e8 00     mov   a,#$00
0506: c5 8c 03  mov   $038c,a
0509: 5d        mov   x,a
050a: af        mov   (x)+,a
050b: c8 e8     cmp   x,#$e8
050d: d0 fb     bne   $050a
050f: e8 00     mov   a,#$00
0511: 5d        mov   x,a
0512: d5 00 02  mov   $0200+x,a
0515: 3d        inc   x
0516: d0 fa     bne   $0512
0518: d5 00 03  mov   $0300+x,a
051b: 3d        inc   x
051c: d0 fa     bne   $0518
051e: 3f db 06  call  $06db
0521: cd 0b     mov   x,#$0b
0523: f5 2a 16  mov   a,$162a+x
0526: fd        mov   y,a
0527: f5 1e 16  mov   a,$161e+x
052a: 3f a3 06  call  $06a3
052d: 1d        dec   x
052e: 10 f3     bpl   $0523
0530: e8 00     mov   a,#$00
0532: 3f cd 12  call  $12cd
0535: e8 f0     mov   a,#$f0
0537: c5 f1 00  mov   $00f1,a
053a: e8 10     mov   a,#$10
053c: c5 fa 00  mov   $00fa,a
053f: e8 28     mov   a,#$28
0541: c4 51     mov   $51,a
0543: e8 01     mov   a,#$01
0545: c5 f1 00  mov   $00f1,a
; main loop
0548: ec fd 00  mov   y,$00fd
054b: f0 fb     beq   $0548
054d: 6d        push  y
054e: e8 38     mov   a,#$38
0550: cf        mul   ya
0551: 60        clrc
0552: 84 44     adc   a,$44
0554: c4 44     mov   $44,a
0556: 90 20     bcc   $0578
0558: ab 45     inc   $45
055a: 3f 4c 08  call  $084c
055d: cd 03     mov   x,#$03
055f: 3f b0 05  call  $05b0
0562: 3f c7 0a  call  $0ac7
0565: 3f ba 09  call  $09ba
0568: cd 02     mov   x,#$02
056a: 3f b0 05  call  $05b0
056d: 3f 2d 0c  call  $0c2d
0570: 3f a0 0d  call  $0da0
0573: cd 01     mov   x,#$01
0575: 3f b0 05  call  $05b0
0578: e4 51     mov   a,$51
057a: ee        pop   y
057b: cf        mul   ya
057c: 60        clrc
057d: 84 49     adc   a,$49
057f: c4 49     mov   $49,a
0581: 90 12     bcc   $0595
0583: e5 8c 03  mov   a,$038c
0586: d0 06     bne   $058e
0588: 3f 55 0f  call  $0f55
058b: 3f 25 07  call  $0725
058e: cd 00     mov   x,#$00
0590: 3f b0 05  call  $05b0
0593: 2f b3     bra   $0548
0595: e4 04     mov   a,$04
0597: f0 12     beq   $05ab
0599: cd 0e     mov   x,#$0e
059b: 8f 80 48  mov   $48,#$80
059e: f4 31     mov   a,$31+x
05a0: f0 03     beq   $05a5
05a2: 3f 21 15  call  $1521
05a5: 4b 48     lsr   $48
05a7: 1d        dec   x
05a8: 1d        dec   x
05a9: 10 f3     bpl   $059e
05ab: 3f aa 06  call  $06aa
05ae: 2f 98     bra   $0548
05b0: 7d        mov   a,x
05b1: fd        mov   y,a
05b2: f4 04     mov   a,$04+x
05b4: d5 f4 00  mov   $00f4+x,a
05b7: f5 f4 00  mov   a,$00f4+x
05ba: 75 f4 00  cmp   a,$00f4+x
05bd: d0 f8     bne   $05b7
05bf: fd        mov   y,a
05c0: f4 08     mov   a,$08+x
05c2: db 08     mov   $08+x,y
05c4: de 08 05  cbne  $08+x,$05cc
05c7: 8d 00     mov   y,#$00
05c9: db 00     mov   $00+x,y
05cb: 6f        ret

05cc: db 00     mov   $00+x,y
05ce: dd        mov   a,y
05cf: 6f        ret

05d0: 68 d0     cmp   a,#$d0
05d2: b0 05     bcs   $05d9
05d4: 68 c6     cmp   a,#$c6
05d6: 90 17     bcc   $05ef
05d8: 6f        ret

05d9: d5 11 02  mov   $0211+x,a
05dc: 80        setc
05dd: a8 d0     sbc   a,#$d0
05df: 8d 06     mov   y,#$06
05e1: 8f e6 14  mov   $14,#$e6
05e4: 8f 16 15  mov   $15,#$16
05e7: 3f cf 10  call  $10cf
05ea: d0 ec     bne   $05d8
05ec: fc        inc   y
05ed: f7 14     mov   a,($14)+y
05ef: 28 7f     and   a,#$7f
05f1: 60        clrc
05f2: 84 43     adc   a,$43
05f4: d5 b1 02  mov   $02b1+x,a
05f7: f5 d1 02  mov   a,$02d1+x
05fa: d5 b0 02  mov   $02b0+x,a
05fd: e8 00     mov   a,#$00
05ff: d5 30 03  mov   $0330+x,a
0602: d5 60 03  mov   $0360+x,a
0605: d4 b0     mov   $b0+x,a
0607: d5 10 01  mov   $0110+x,a
060a: d4 c0     mov   $c0+x,a
060c: 09 48 5c  or    ($5c),($48)
060f: 09 48 47  or    ($47),($48)
0612: f5 00 03  mov   a,$0300+x
0615: d4 a0     mov   $a0+x,a
0617: f0 1e     beq   $0637
0619: f5 01 03  mov   a,$0301+x
061c: d4 a1     mov   $a1+x,a
061e: f5 20 03  mov   a,$0320+x
0621: d0 0a     bne   $062d
0623: f5 b1 02  mov   a,$02b1+x
0626: 80        setc
0627: b5 21 03  sbc   a,$0321+x
062a: d5 b1 02  mov   $02b1+x,a
062d: f5 21 03  mov   a,$0321+x
0630: 60        clrc
0631: 95 b1 02  adc   a,$02b1+x
0634: 3f e4 12  call  $12e4
0637: f5 b1 02  mov   a,$02b1+x
063a: fd        mov   y,a
063b: f5 b0 02  mov   a,$02b0+x
063e: da 10     movw  $10,ya
0640: 8d 00     mov   y,#$00
0642: e4 11     mov   a,$11
0644: 80        setc
0645: a8 34     sbc   a,#$34
0647: b0 09     bcs   $0652
0649: e4 11     mov   a,$11
064b: 80        setc
064c: a8 13     sbc   a,#$13
064e: b0 06     bcs   $0656
0650: dc        dec   y
0651: 1c        asl   a
0652: 7a 10     addw  ya,$10
0654: da 10     movw  $10,ya
0656: 4d        push  x
0657: e4 11     mov   a,$11
0659: 3f 46 16  call  $1646
065c: da 14     movw  $14,ya
065e: e4 11     mov   a,$11
0660: bc        inc   a
0661: 3f 46 16  call  $1646
0664: ce        pop   x
0665: 9a 14     subw  ya,$14
0667: 2d        push  a
0668: e4 10     mov   a,$10
066a: cf        mul   ya
066b: 7a 14     addw  ya,$14
066d: da 14     movw  $14,ya
066f: e4 10     mov   a,$10
0671: ee        pop   y
0672: cf        mul   ya
0673: dd        mov   a,y
0674: 8d 00     mov   y,#$00
0676: 7a 14     addw  ya,$14
0678: da 14     movw  $14,ya
067a: f5 20 02  mov   a,$0220+x
067d: eb 14     mov   y,$14
067f: cf        mul   ya
0680: da 16     movw  $16,ya
0682: f5 20 02  mov   a,$0220+x
0685: eb 15     mov   y,$15
0687: cf        mul   ya
0688: 60        clrc
0689: 84 17     adc   a,$17
068b: c4 17     mov   $17,a
068d: 7d        mov   a,x
068e: 9f        xcn   a
068f: 5c        lsr   a
0690: 08 02     or    a,#$02
0692: fd        mov   y,a
0693: e4 16     mov   a,$16
0695: 3f 9b 06  call  $069b
0698: fc        inc   y
0699: e4 17     mov   a,$17
069b: 2d        push  a
069c: e4 48     mov   a,$48
069e: 24 1c     and   a,$1c
06a0: ae        pop   a
06a1: d0 06     bne   $06a9
06a3: cc f2 00  mov   $00f2,y
06a6: c5 f3 00  mov   $00f3,a
06a9: 6f        ret

06aa: 8b d5     dec   $d5
06ac: e4 d5     mov   a,$d5
06ae: 28 03     and   a,#$03
06b0: 8d 3f     mov   y,#$3f
06b2: cf        mul   ya
06b3: fd        mov   y,a
06b4: 8f 07 12  mov   $12,#$07
06b7: fc        inc   y
06b8: cd 04     mov   x,#$04
06ba: aa 1e c0  mov1  c,$1803,6
06bd: 8a 1e a0  eor1  c,$1403,6
06c0: 2b 1d     rol   $1d
06c2: 2b 1e     rol   $1e
06c4: e4 1e     mov   a,$1e
06c6: 08 11     or    a,#$11
06c8: d6 00 fe  mov   $fe00+y,a
06cb: fc        inc   y
06cc: e4 1d     mov   a,$1d
06ce: 08 11     or    a,#$11
06d0: d6 00 fe  mov   $fe00+y,a
06d3: fc        inc   y
06d4: 1d        dec   x
06d5: d0 e3     bne   $06ba
06d7: 6e 12 dd  dbnz  $12,$06b7
06da: 6f        ret

06db: 8d 00     mov   y,#$00
06dd: cd 1b     mov   x,#$1b
06df: e8 96     mov   a,#$96
06e1: d6 00 fe  mov   $fe00+y,a
06e4: fc        inc   y
06e5: fc        inc   y
06e6: fc        inc   y
06e7: fc        inc   y
06e8: fc        inc   y
06e9: fc        inc   y
06ea: fc        inc   y
06eb: fc        inc   y
06ec: fc        inc   y
06ed: 1d        dec   x
06ee: d0 f1     bne   $06e1
06f0: bc        inc   a
06f1: d6 00 fe  mov   $fe00+y,a
06f4: 8d fe     mov   y,#$fe
06f6: e8 00     mov   a,#$00
06f8: c5 4c 80  mov   $804c,a
06fb: cc 4d 80  mov   $804d,y
06fe: c5 4e 80  mov   $804e,a
0701: cc 4f 80  mov   $804f,y
0704: e4 1d     mov   a,$1d
0706: 04 1e     or    a,$1e
0708: d0 02     bne   $070c
070a: ab 1d     inc   $1d
070c: 6f        ret

070d: e8 00     mov   a,#$00
070f: c5 83 03  mov   $0383,a
0712: c4 ae     mov   $ae,a
0714: f2 1c     clr7  $1c
0716: cd 0e     mov   x,#$0e
0718: e5 1f 02  mov   a,$021f
071b: 3f c3 10  call  $10c3
071e: e8 80     mov   a,#$80
0720: 8d 5c     mov   y,#$5c
0722: 5f a3 06  jmp   $06a3

0725: e4 00     mov   a,$00
0727: 30 e4     bmi   $070d
0729: 68 02     cmp   a,#$02
072b: f0 e0     beq   $070d
072d: 68 0d     cmp   a,#$0d
072f: f0 dc     beq   $070d
0731: 68 11     cmp   a,#$11
0733: f0 d8     beq   $070d
0735: 28 e0     and   a,#$e0
0737: d0 0d     bne   $0746
0739: e5 89 03  mov   a,$0389
073c: d0 1f     bne   $075d
073e: e5 83 03  mov   a,$0383
0741: 28 e0     and   a,#$e0
0743: d0 41     bne   $0786
0745: 6f        ret

0746: c5 83 03  mov   $0383,a
0749: e8 04     mov   a,#$04
074b: c5 89 03  mov   $0389,a
074e: e8 80     mov   a,#$80
0750: 8d 5c     mov   y,#$5c
0752: 3f a3 06  call  $06a3
0755: e2 1c     set7  $1c
0757: e8 00     mov   a,#$00
0759: c5 0e 03  mov   $030e,a
075c: 6f        ret

075d: 8c 89 03  dec   $0389
0760: d0 e3     bne   $0745
0762: e4 1d     mov   a,$1d
0764: 28 3f     and   a,#$3f
0766: c5 82 03  mov   $0382,a
0769: e5 83 03  mov   a,$0383
076c: 9f        xcn   a
076d: 5c        lsr   a
076e: 3f ce 07  call  $07ce
0771: e4 1d     mov   a,$1d
0773: 28 9f     and   a,#$9f
0775: 08 90     or    a,#$90
0777: 8f 0e 46  mov   $46,#$0e
077a: cd 0e     mov   x,#$0e
077c: 3f d0 05  call  $05d0
077f: e8 80     mov   a,#$80
0781: 3f aa 10  call  $10aa
0784: 2f 24     bra   $07aa
0786: 8c 82 03  dec   $0382
0789: d0 37     bne   $07c2
078b: 8f 0e 46  mov   $46,#$0e
078e: cd 0e     mov   x,#$0e
0790: 8d 10     mov   y,#$10
0792: cb af     mov   $af,y
0794: e4 1d     mov   a,$1d
0796: 08 40     or    a,#$40
0798: c4 ae     mov   $ae,a
079a: e4 1d     mov   a,$1d
079c: 28 9f     and   a,#$9f
079e: 08 90     or    a,#$90
07a0: 3f e4 12  call  $12e4
07a3: e4 1d     mov   a,$1d
07a5: 28 3f     and   a,#$3f
07a7: c5 82 03  mov   $0382,a
07aa: e4 1e     mov   a,$1e
07ac: 28 7f     and   a,#$7f
07ae: 08 60     or    a,#$60
07b0: 8d 70     mov   y,#$70
07b2: 3f a3 06  call  $06a3
07b5: e4 1e     mov   a,$1e
07b7: 28 7f     and   a,#$7f
07b9: 48 1f     eor   a,#$1f
07bb: 08 60     or    a,#$60
07bd: 8d 71     mov   y,#$71
07bf: 3f a3 06  call  $06a3
07c2: f2 13     clr7  $13
07c4: cd 0e     mov   x,#$0e
07c6: e4 ae     mov   a,$ae
07c8: f0 03     beq   $07cd
07ca: 3f 88 0d  call  $0d88
07cd: 6f        ret

07ce: 5c        lsr   a
07cf: 8d 09     mov   y,#$09
07d1: cf        mul   ya
07d2: 5d        mov   x,a
07d3: 8d 70     mov   y,#$70
07d5: 8f 08 12  mov   $12,#$08
07d8: f5 ea 07  mov   a,$07ea+x
07db: 3f a3 06  call  $06a3
07de: 3d        inc   x
07df: fc        inc   y
07e0: 6e 12 f5  dbnz  $12,$07d8
07e3: f5 ea 07  mov   a,$07ea+x
07e6: c5 2e 02  mov   $022e,a
07e9: 6f        ret

; voice 7 params?
; VOL(L),VOL(R),P(L),P(H),SRCN,ADSR(1),ADSR(2),GAIN,ENVX?
07ea: db $20,$20,$00,$10,$13,$08,$e0,$34,$02
07f3: db $20,$20,$00,$10,$13,$08,$e0,$2c,$04

07fc: d8 07     mov   $07,x
07fe: e8 02     mov   a,#$02
0800: c4 d1     mov   $d1,a
0802: e8 08     mov   a,#$08
0804: 8d 5c     mov   y,#$5c
0806: 3f a3 06  call  $06a3
0809: 62 1c     set3  $1c
080b: e8 00     mov   a,#$00
080d: c5 06 03  mov   $0306,a
0810: 6f        ret

0811: e8 18     mov   a,#$18
0813: c5 92 03  mov   $0392,a
0816: e8 01     mov   a,#$01
0818: 3f 01 09  call  $0901
081b: e8 1e     mov   a,#$1e
081d: 8d 30     mov   y,#$30
081f: 3f a3 06  call  $06a3
0822: e8 1e     mov   a,#$1e
0824: 8d 31     mov   y,#$31
0826: 3f a3 06  call  $06a3
0829: e8 b6     mov   a,#$b6
082b: 8f 06 46  mov   $46,#$06
082e: cd 06     mov   x,#$06
0830: 3f d0 05  call  $05d0
0833: e8 08     mov   a,#$08
0835: 3f aa 10  call  $10aa
0838: 8c 92 03  dec   $0392
083b: f0 5d     beq   $089a
083d: e8 02     mov   a,#$02
083f: 65 92 03  cmp   a,$0392
0842: d0 07     bne   $084b
0844: e8 08     mov   a,#$08
0846: 8d 5c     mov   y,#$5c
0848: 3f a3 06  call  $06a3
084b: 6f        ret

084c: e4 d1     mov   a,$d1
084e: d0 37     bne   $0887
0850: e4 07     mov   a,$07
0852: 68 01     cmp   a,#$01
0854: f0 51     beq   $08a7
0856: 68 02     cmp   a,#$02
0858: f0 de     beq   $0838
085a: f8 03     mov   x,$03
085c: c8 01     cmp   x,#$01
085e: f0 05     beq   $0865
0860: c8 02     cmp   x,#$02
0862: f0 98     beq   $07fc
0864: 6f        ret

0865: e4 06     mov   a,$06
0867: f0 fb     beq   $0864
0869: 68 01     cmp   a,#$01
086b: f0 f7     beq   $0864
086d: 80        setc
086e: 68 12     cmp   a,#$12
0870: b0 f2     bcs   $0864
0872: d8 07     mov   $07,x
0874: e8 02     mov   a,#$02
0876: c4 d1     mov   $d1,a
0878: e8 08     mov   a,#$08
087a: 8d 5c     mov   y,#$5c
087c: 3f a3 06  call  $06a3
087f: 62 1c     set3  $1c
0881: e8 00     mov   a,#$00
0883: c5 06 03  mov   $0306,a
0886: 6f        ret

0887: 8b d1     dec   $d1
0889: d0 d9     bne   $0864
088b: e8 01     mov   a,#$01
088d: 2e 07 81  cbne  $07,$0811
0890: e8 00     mov   a,#$00
0892: c5 92 03  mov   $0392,a
0895: 3f 01 09  call  $0901
0898: 2f 15     bra   $08af
089a: 8f 00 07  mov   $07,#$00
089d: 72 1c     clr3  $1c
089f: cd 06     mov   x,#$06
08a1: e5 17 02  mov   a,$0217
08a4: 5f c3 10  jmp   $10c3

08a7: 8c 8b 03  dec   $038b
08aa: d0 46     bne   $08f2
08ac: ac 92 03  inc   $0392
08af: e8 1b     mov   a,#$1b
08b1: 80        setc
08b2: a4 06     sbc   a,$06
08b4: 5c        lsr   a
08b5: c5 93 03  mov   $0393,a
08b8: e9 92 03  mov   x,$0392
08bb: c8 05     cmp   x,#$05
08bd: d0 06     bne   $08c5
08bf: 8c 93 03  dec   $0393
08c2: 8c 93 03  dec   $0393
08c5: 1c        asl   a
08c6: 60        clrc
08c7: 88 0a     adc   a,#$0a
08c9: c4 10     mov   $10,a
08cb: 8d 30     mov   y,#$30
08cd: 3f a3 06  call  $06a3
08d0: e4 10     mov   a,$10
08d2: 8d 31     mov   y,#$31
08d4: 3f a3 06  call  $06a3
08d7: e9 92 03  mov   x,$0392
08da: f5 1e 09  mov   a,$091e+x
08dd: f0 bb     beq   $089a
08df: 8f 06 46  mov   $46,#$06
08e2: cd 06     mov   x,#$06
08e4: 3f d0 05  call  $05d0
08e7: e8 08     mov   a,#$08
08e9: 3f aa 10  call  $10aa
08ec: e5 93 03  mov   a,$0393
08ef: c5 8b 03  mov   $038b,a
08f2: e8 02     mov   a,#$02
08f4: 65 8b 03  cmp   a,$038b
08f7: d0 07     bne   $0900
08f9: e8 08     mov   a,#$08
08fb: 8d 5c     mov   y,#$5c
08fd: 3f a3 06  call  $06a3
0900: 6f        ret

0901: cd 00     mov   x,#$00
0903: 8d 09     mov   y,#$09
0905: cf        mul   ya
0906: 5d        mov   x,a
0907: 8d 30     mov   y,#$30
0909: 8f 08 12  mov   $12,#$08
090c: f5 25 09  mov   a,$0925+x
090f: 3f a3 06  call  $06a3
0912: 3d        inc   x
0913: fc        inc   y
0914: 6e 12 f5  dbnz  $12,$090c
0917: f5 25 09  mov   a,$0925+x
091a: c5 26 02  mov   $0226,a
091d: 6f        ret

091e: db $a4,$a8,$a7,$a6,$a5,$a7,$00

; voice 3 params?
; VOL(L),VOL(R),P(L),P(H),SRCN,ADSR(1),ADSR(2),GAIN,ENVX?
0925: db $7f,$7f,$00,$10,$00,$cc,$3f,$b8,$01
092e: db $70,$70,$00,$10,$03,$8e,$e5,$b8,$03

0937: e8 00     mov   a,#$00
0939: 8d 09     mov   y,#$09
093b: cf        mul   ya
093c: 5d        mov   x,a
093d: 8d 50     mov   y,#$50
093f: 8f 08 12  mov   $12,#$08
0942: f5 54 09  mov   a,$0954+x
0945: 3f a3 06  call  $06a3
0948: 3d        inc   x
0949: fc        inc   y
094a: 6e 12 f5  dbnz  $12,$0942
094d: f5 54 09  mov   a,$0954+x
0950: c5 2a 02  mov   $022a,a
0953: 6f        ret

; voice 5 params?
; VOL(L),VOL(R),P(L),P(H),SRCN,ADSR(1),ADSR(2),GAIN,ENVX?
0954: 7f 7f 00 10 13 8e e0 b8 01

095d: c5 86 03  mov   $0386,a
0960: e8 02     mov   a,#$02
0962: c5 8a 03  mov   $038a,a
0965: 8f 00 06  mov   $06,#$00
0968: e8 20     mov   a,#$20
096a: 8d 5c     mov   y,#$5c
096c: 3f a3 06  call  $06a3
096f: a2 1c     set5  $1c
0971: 6f        ret

0972: 8c 8a 03  dec   $038a
0975: d0 fa     bne   $0971
0977: 3f 37 09  call  $0937
097a: e8 0a     mov   a,#$0a
097c: c4 df     mov   $df,a
097e: e4 1d     mov   a,$1d
0980: 28 9f     and   a,#$9f
0982: 08 88     or    a,#$88
0984: 8f 0a 46  mov   $46,#$0a
0987: cd 0a     mov   x,#$0a
0989: 3f d0 05  call  $05d0
098c: e8 20     mov   a,#$20
098e: 3f aa 10  call  $10aa
0991: e4 1e     mov   a,$1e
0993: 28 7f     and   a,#$7f
0995: 08 7c     or    a,#$7c
0997: c4 10     mov   $10,a
0999: 8d 50     mov   y,#$50
099b: 3f a3 06  call  $06a3
099e: e4 10     mov   a,$10
09a0: 8d 51     mov   y,#$51
09a2: 3f a3 06  call  $06a3
09a5: 8b df     dec   $df
09a7: f0 d1     beq   $097a
09a9: e8 02     mov   a,#$02
09ab: 64 df     cmp   a,$df
09ad: d0 07     bne   $09b6
09af: e8 20     mov   a,#$20
09b1: 8d 5c     mov   y,#$5c
09b3: 3f a3 06  call  $06a3
09b6: 6f        ret

09b7: 5f 81 0a  jmp   $0a81

09ba: 78 ff 02  cmp   $02,#$ff
09bd: f0 f8     beq   $09b7
09bf: e4 02     mov   a,$02
09c1: 10 05     bpl   $09c8
09c3: c3 02 97  bbs6  $02,$095d
09c6: d0 2f     bne   $09f7
09c8: e5 84 03  mov   a,$0384
09cb: d0 44     bne   $0a11
09cd: e5 8a 03  mov   a,$038a
09d0: d0 a0     bne   $0972
09d2: e5 85 03  mov   a,$0385
09d5: f0 03     beq   $09da
09d7: 5f 5e 0a  jmp   $0a5e

09da: e5 86 03  mov   a,$0386
09dd: d0 c6     bne   $09a5
09df: 6f        ret

09e0: e8 20     mov   a,#$20
09e2: 8d 5c     mov   y,#$5c
09e4: 3f a3 06  call  $06a3
09e7: e8 00     mov   a,#$00
09e9: c5 85 03  mov   $0385,a
09ec: b2 1c     clr5  $1c
09ee: cd 0a     mov   x,#$0a
09f0: e5 1b 02  mov   a,$021b
09f3: 5f c3 10  jmp   $10c3

09f6: 6f        ret

09f7: 65 85 03  cmp   a,$0385
09fa: f0 5e     beq   $0a5a
09fc: c5 85 03  mov   $0385,a
09ff: e8 02     mov   a,#$02
0a01: c5 84 03  mov   $0384,a
0a04: 8f 00 06  mov   $06,#$00
0a07: e8 20     mov   a,#$20
0a09: 8d 5c     mov   y,#$5c
0a0b: 3f a3 06  call  $06a3
0a0e: a2 1c     set5  $1c
0a10: 6f        ret

0a11: 8c 84 03  dec   $0384
0a14: d0 fa     bne   $0a10
0a16: cd 10     mov   x,#$10
0a18: d8 df     mov   $df,x
0a1a: cd 00     mov   x,#$00
0a1c: 8d 50     mov   y,#$50
0a1e: 8f 08 12  mov   $12,#$08
0a21: f5 78 0a  mov   a,$0a78+x
0a24: 3f a3 06  call  $06a3
0a27: 3d        inc   x
0a28: fc        inc   y
0a29: 6e 12 f5  dbnz  $12,$0a21
0a2c: f5 78 0a  mov   a,$0a78+x
0a2f: c5 2a 02  mov   $022a,a
0a32: e8 81     mov   a,#$81
0a34: 65 85 03  cmp   a,$0385
0a37: d0 04     bne   $0a3d
0a39: e8 9a     mov   a,#$9a
0a3b: 2f 02     bra   $0a3f
0a3d: e8 97     mov   a,#$97
0a3f: 8f 0a 46  mov   $46,#$0a
0a42: cd 0a     mov   x,#$0a
0a44: 3f d0 05  call  $05d0
0a47: e8 3c     mov   a,#$3c
0a49: 8d 50     mov   y,#$50
0a4b: 3f a3 06  call  $06a3
0a4e: e8 3c     mov   a,#$3c
0a50: 8d 51     mov   y,#$51
0a52: 3f a3 06  call  $06a3
0a55: e8 20     mov   a,#$20
0a57: 5f aa 10  jmp   $10aa

0a5a: cd 10     mov   x,#$10
0a5c: d8 df     mov   $df,x
0a5e: e8 3c     mov   a,#$3c
0a60: c4 10     mov   $10,a
0a62: 8d 50     mov   y,#$50
0a64: 3f a3 06  call  $06a3
0a67: e8 3c     mov   a,#$3c
0a69: c4 10     mov   $10,a
0a6b: 8d 51     mov   y,#$51
0a6d: 3f a3 06  call  $06a3
0a70: 8b df     dec   $df
0a72: d0 03     bne   $0a77
0a74: 5f e0 09  jmp   $09e0

0a77: 6f        ret

; voice 5 params?
; VOL(L),VOL(R),P(L),P(H),SRCN,ADSR(1),ADSR(2),GAIN,ENVX?
0a78: db $50,$50,$00,$10,$02,$c9,$e0,$b8,$02

0a81: e8 30     mov   a,#$30
0a83: 8d 5c     mov   y,#$5c
0a85: 3f a3 06  call  $06a3
0a88: 8f 00 06  mov   $06,#$00
0a8b: b2 1c     clr5  $1c
0a8d: 92 1c     clr4  $1c
0a8f: cd 0a     mov   x,#$0a
0a91: e5 1b 02  mov   a,$021b
0a94: 3f c3 10  call  $10c3
0a97: cd 08     mov   x,#$08
0a99: e5 19 02  mov   a,$0219
0a9c: 3f c3 10  call  $10c3
0a9f: e8 00     mov   a,#$00
0aa1: c5 85 03  mov   $0385,a
0aa4: c5 84 03  mov   $0384,a
0aa7: c5 86 03  mov   $0386,a
0aaa: c5 8a 03  mov   $038a,a
0aad: c4 a8     mov   $a8,a
0aaf: c4 aa     mov   $aa,a
0ab1: 6f        ret

0ab2: e8 10     mov   a,#$10
0ab4: 8d 5c     mov   y,#$5c
0ab6: 3f a3 06  call  $06a3
0ab9: 8f 00 06  mov   $06,#$00
0abc: 92 1c     clr4  $1c
0abe: cd 08     mov   x,#$08
0ac0: e5 19 02  mov   a,$0219
0ac3: 3f c3 10  call  $10c3
0ac6: 6f        ret

0ac7: e4 02     mov   a,$02
0ac9: 30 e7     bmi   $0ab2
0acb: d0 0c     bne   $0ad9
0acd: e4 d0     mov   a,$d0
0acf: d0 21     bne   $0af2
0ad1: e4 06     mov   a,$06
0ad3: 6f        ret

0ad4: c4 06     mov   $06,a
0ad6: 5f 3e 0b  jmp   $0b3e

0ad9: 68 ff     cmp   a,#$ff
0adb: f0 a4     beq   $0a81
0add: f8 06     mov   x,$06
0adf: d0 f3     bne   $0ad4
0ae1: c4 06     mov   $06,a
0ae3: 8f 02 d0  mov   $d0,#$02
0ae6: e8 30     mov   a,#$30
0ae8: 8d 5c     mov   y,#$5c
0aea: 3f a3 06  call  $06a3
0aed: a2 1c     set5  $1c
0aef: 82 1c     set4  $1c
0af1: 6f        ret

0af2: 6e d0 fc  dbnz  $d0,$0af1
0af5: e4 06     mov   a,$06
0af7: 28 40     and   a,#$40
0af9: 60        clrc
0afa: 3c        rol   a
0afb: 3c        rol   a
0afc: 3c        rol   a
0afd: 8d 09     mov   y,#$09
0aff: cf        mul   ya
0b00: 5d        mov   x,a
0b01: 8d 50     mov   y,#$50
0b03: 8f 08 12  mov   $12,#$08
0b06: f5 8d 0b  mov   a,$0b8d+x
0b09: 3f a3 06  call  $06a3
0b0c: 3d        inc   x
0b0d: fc        inc   y
0b0e: 6e 12 f5  dbnz  $12,$0b06
0b11: f5 8d 0b  mov   a,$0b8d+x
0b14: c5 2a 02  mov   $022a,a
0b17: e4 06     mov   a,$06
0b19: 28 40     and   a,#$40
0b1b: 60        clrc
0b1c: 3c        rol   a
0b1d: 3c        rol   a
0b1e: 3c        rol   a
0b1f: 8d 09     mov   y,#$09
0b21: cf        mul   ya
0b22: 5d        mov   x,a
0b23: 8d 40     mov   y,#$40
0b25: 8f 08 12  mov   $12,#$08
0b28: f5 8d 0b  mov   a,$0b8d+x
0b2b: 3f a3 06  call  $06a3
0b2e: 3d        inc   x
0b2f: fc        inc   y
0b30: 6e 12 f5  dbnz  $12,$0b28
0b33: f5 8d 0b  mov   a,$0b8d+x
0b36: c5 28 02  mov   $0228,a
0b39: e8 30     mov   a,#$30
0b3b: 3f aa 10  call  $10aa
0b3e: e4 06     mov   a,$06
0b40: 28 3f     and   a,#$3f
0b42: 8d 37     mov   y,#$37
0b44: cf        mul   ya
0b45: da e0     movw  $e0,ya
0b47: 8d 06     mov   y,#$06
0b49: e8 10     mov   a,#$10
0b4b: 7a e0     addw  ya,$e0
0b4d: da e0     movw  $e0,ya
0b4f: e4 e0     mov   a,$e0
0b51: 8d 52     mov   y,#$52
0b53: 3f a3 06  call  $06a3
0b56: e4 e1     mov   a,$e1
0b58: 8d 53     mov   y,#$53
0b5a: 3f a3 06  call  $06a3
0b5d: 8d 00     mov   y,#$00
0b5f: e8 20     mov   a,#$20
0b61: 7a e0     addw  ya,$e0
0b63: da e0     movw  $e0,ya
0b65: 8d 42     mov   y,#$42
0b67: 3f a3 06  call  $06a3
0b6a: e4 e1     mov   a,$e1
0b6c: 8d 43     mov   y,#$43
0b6e: 3f a3 06  call  $06a3
0b71: e8 48     mov   a,#$48
0b73: 8d 50     mov   y,#$50
0b75: 3f a3 06  call  $06a3
0b78: e8 38     mov   a,#$38
0b7a: 8d 51     mov   y,#$51
0b7c: 3f a3 06  call  $06a3
0b7f: e8 0c     mov   a,#$0c
0b81: 8d 40     mov   y,#$40
0b83: 3f a3 06  call  $06a3
0b86: e8 1c     mov   a,#$1c
0b88: 8d 41     mov   y,#$41
0b8a: 5f a3 06  jmp   $06a3

; voice 4 params?
; VOL(L),VOL(R),P(L),P(H),SRCN,ADSR(1),ADSR(2),GAIN,ENVX?
0b8d: db $50,$50,$00,$10,$0c,$0f,$e0,$50,$04
0b96: db $50,$50,$00,$10,$0d,$0f,$e0,$50,$04

0b9f: e8 aa     mov   a,#$aa
0ba1: c5 f4 00  mov   $00f4,a
0ba4: e8 bb     mov   a,#$bb
0ba6: c5 f5 00  mov   $00f5,a
0ba9: e5 f4 00  mov   a,$00f4
0bac: 68 cc     cmp   a,#$cc
0bae: d0 f9     bne   $0ba9
0bb0: 2f 20     bra   $0bd2
0bb2: ec f4 00  mov   y,$00f4
0bb5: d0 fb     bne   $0bb2
0bb7: 5e f4 00  cmp   y,$00f4
0bba: d0 0f     bne   $0bcb
0bbc: e5 f5 00  mov   a,$00f5
0bbf: cc f4 00  mov   $00f4,y
0bc2: d7 14     mov   ($14)+y,a
0bc4: fc        inc   y
0bc5: d0 f0     bne   $0bb7
0bc7: ab 15     inc   $15
0bc9: 2f ec     bra   $0bb7
0bcb: 10 ea     bpl   $0bb7
0bcd: 5e f4 00  cmp   y,$00f4
0bd0: 10 e5     bpl   $0bb7
0bd2: e5 f6 00  mov   a,$00f6
0bd5: ec f7 00  mov   y,$00f7
0bd8: da 14     movw  $14,ya
0bda: ec f4 00  mov   y,$00f4
0bdd: e5 f5 00  mov   a,$00f5
0be0: cc f4 00  mov   $00f4,y
0be3: d0 cd     bne   $0bb2
0be5: cd 31     mov   x,#$31
0be7: c9 f1 00  mov   $00f1,x
0bea: 6f        ret

0beb: e8 ff     mov   a,#$ff
0bed: 8d 5c     mov   y,#$5c
0bef: 3f a3 06  call  $06a3
0bf2: e8 60     mov   a,#$60
0bf4: 8d 6c     mov   y,#$6c
0bf6: 3f a3 06  call  $06a3
0bf9: e8 00     mov   a,#$00
0bfb: 8d 2c     mov   y,#$2c
0bfd: 3f a3 06  call  $06a3
0c00: e8 00     mov   a,#$00
0c02: 8d 3c     mov   y,#$3c
0c04: 3f a3 06  call  $06a3
0c07: 3f 9f 0b  call  $0b9f
0c0a: e8 00     mov   a,#$00
0c0c: c4 04     mov   $04,a
0c0e: c4 05     mov   $05,a
0c10: c4 06     mov   $06,a
0c12: c4 07     mov   $07,a
0c14: c5 83 03  mov   $0383,a
0c17: c5 85 03  mov   $0385,a
0c1a: c5 86 03  mov   $0386,a
0c1d: c5 8e 03  mov   $038e,a
0c20: c4 1c     mov   $1c,a
0c22: c5 8c 03  mov   $038c,a
0c25: e8 20     mov   a,#$20
0c27: 8d 6c     mov   y,#$6c
0c29: 3f a3 06  call  $06a3
0c2c: 6f        ret

0c2d: e4 01     mov   a,$01
0c2f: 68 ff     cmp   a,#$ff
0c31: f0 b8     beq   $0beb
0c33: 28 f0     and   a,#$f0
0c35: 9f        xcn   a
0c36: c5 8d 03  mov   $038d,a
0c39: e4 01     mov   a,$01
0c3b: 28 0f     and   a,#$0f
0c3d: c4 01     mov   $01,a
0c3f: 78 0f 01  cmp   $01,#$0f
0c42: f0 14     beq   $0c58
0c44: 78 0e 01  cmp   $01,#$0e
0c47: f0 0f     beq   $0c58
0c49: 78 0e 05  cmp   $05,#$0e
0c4c: f0 0e     beq   $0c5c
0c4e: 78 01 01  cmp   $01,#$01
0c51: f0 05     beq   $0c58
0c53: 78 01 05  cmp   $05,#$01
0c56: f0 04     beq   $0c5c
0c58: e4 01     mov   a,$01
0c5a: d0 09     bne   $0c65
0c5c: e4 0d     mov   a,$0d
0c5e: d0 2a     bne   $0c8a
0c60: e4 05     mov   a,$05
0c62: d0 55     bne   $0cb9
0c64: 6f        ret

0c65: c4 05     mov   $05,a
0c67: 8f 02 0d  mov   $0d,#$02
0c6a: e5 8c 03  mov   a,$038c
0c6d: f0 0c     beq   $0c7b
0c6f: e8 00     mov   a,#$00
0c71: 8d 6c     mov   y,#$6c
0c73: 3f a3 06  call  $06a3
0c76: e8 00     mov   a,#$00
0c78: c5 8c 03  mov   $038c,a
0c7b: e8 40     mov   a,#$40
0c7d: 8d 5c     mov   y,#$5c
0c7f: 3f a3 06  call  $06a3
0c82: c2 1c     set6  $1c
0c84: e8 00     mov   a,#$00
0c86: c5 0c 03  mov   $030c,a
0c89: 6f        ret

0c8a: 6e 0d d7  dbnz  $0d,$0c64
0c8d: e4 05     mov   a,$05
0c8f: 1c        asl   a
0c90: fd        mov   y,a
0c91: f6 8e fb  mov   a,$fb8e+y
0c94: c4 d3     mov   $d3,a
0c96: f6 8f fb  mov   a,$fb8f+y
0c99: c4 d4     mov   $d4,a
0c9b: 2f 23     bra   $0cc0
0c9d: 78 0e 05  cmp   $05,#$0e
0ca0: d0 0a     bne   $0cac
0ca2: e8 60     mov   a,#$60
0ca4: c5 8c 03  mov   $038c,a
0ca7: 8d 6c     mov   y,#$6c
0ca9: 3f a3 06  call  $06a3
0cac: 8f 00 05  mov   $05,#$00
0caf: d2 1c     clr6  $1c
0cb1: cd 0c     mov   x,#$0c
0cb3: e5 1d 02  mov   a,$021d
0cb6: 5f c3 10  jmp   $10c3

0cb9: 8c 80 03  dec   $0380
0cbc: d0 5a     bne   $0d18
0cbe: 3a d3     incw  $d3
0cc0: cd 00     mov   x,#$00
0cc2: e7 d3     mov   a,($d3+x)
0cc4: f0 d7     beq   $0c9d
0cc6: 30 2a     bmi   $0cf2
0cc8: c5 81 03  mov   $0381,a
0ccb: 3a d3     incw  $d3
0ccd: e7 d3     mov   a,($d3+x)
0ccf: c4 10     mov   $10,a
0cd1: 30 1f     bmi   $0cf2
0cd3: 8d 60     mov   y,#$60
0cd5: 3f a3 06  call  $06a3
0cd8: 3a d3     incw  $d3
0cda: e7 d3     mov   a,($d3+x)
0cdc: 10 0b     bpl   $0ce9
0cde: 5d        mov   x,a
0cdf: e4 10     mov   a,$10
0ce1: 8d 61     mov   y,#$61
0ce3: 3f a3 06  call  $06a3
0ce6: 7d        mov   a,x
0ce7: 2f 09     bra   $0cf2
0ce9: 8d 61     mov   y,#$61
0ceb: 3f a3 06  call  $06a3
0cee: 3a d3     incw  $d3
0cf0: e7 d3     mov   a,($d3+x)
0cf2: 68 da     cmp   a,#$da
0cf4: f0 6f     beq   $0d65
0cf6: 68 dd     cmp   a,#$dd
0cf8: f0 3a     beq   $0d34
0cfa: 68 eb     cmp   a,#$eb
0cfc: f0 49     beq   $0d47
0cfe: 68 ff     cmp   a,#$ff
0d00: d0 06     bne   $0d08
0d02: 3a d3     incw  $d3
0d04: e7 d3     mov   a,($d3+x)
0d06: 2f 87     bra   $0c8f
0d08: cd 0c     mov   x,#$0c
0d0a: 3f d0 05  call  $05d0
0d0d: e8 40     mov   a,#$40
0d0f: 3f aa 10  call  $10aa
0d12: e5 81 03  mov   a,$0381
0d15: c5 80 03  mov   $0380,a
0d18: f2 13     clr7  $13
0d1a: cd 0c     mov   x,#$0c
0d1c: f4 a0     mov   a,$a0+x
0d1e: f0 05     beq   $0d25
0d20: 3f 88 0d  call  $0d88
0d23: 2f 0e     bra   $0d33
0d25: e8 02     mov   a,#$02
0d27: 65 80 03  cmp   a,$0380
0d2a: d0 07     bne   $0d33
0d2c: e8 40     mov   a,#$40
0d2e: 8d 5c     mov   y,#$5c
0d30: 3f a3 06  call  $06a3
0d33: 6f        ret

0d34: cd 00     mov   x,#$00
0d36: 3a d3     incw  $d3
0d38: e7 d3     mov   a,($d3+x)
0d3a: 8f 0c 46  mov   $46,#$0c
0d3d: cd 0c     mov   x,#$0c
0d3f: 3f d0 05  call  $05d0
0d42: e8 40     mov   a,#$40
0d44: 3f aa 10  call  $10aa
0d47: cd 00     mov   x,#$00
0d49: 3a d3     incw  $d3
0d4b: e7 d3     mov   a,($d3+x)
0d4d: c4 ad     mov   $ad,a
0d4f: 3a d3     incw  $d3
0d51: e7 d3     mov   a,($d3+x)
0d53: c4 ac     mov   $ac,a
0d55: 2d        push  a
0d56: 3a d3     incw  $d3
0d58: e7 d3     mov   a,($d3+x)
0d5a: ee        pop   y
0d5b: 8f 0c 46  mov   $46,#$0c
0d5e: cd 0c     mov   x,#$0c
0d60: 3f e4 12  call  $12e4
0d63: 2f ad     bra   $0d12
0d65: cd 00     mov   x,#$00
0d67: 3a d3     incw  $d3
0d69: e7 d3     mov   a,($d3+x)
0d6b: 8d 09     mov   y,#$09
0d6d: cf        mul   ya
0d6e: 5d        mov   x,a
0d6f: 8d 60     mov   y,#$60
0d71: 8f 08 12  mov   $12,#$08
0d74: f5 00 fb  mov   a,$fb00+x
0d77: 3f a3 06  call  $06a3
0d7a: 3d        inc   x
0d7b: fc        inc   y
0d7c: 6e 12 f5  dbnz  $12,$0d74
0d7f: f5 00 fb  mov   a,$fb00+x
0d82: c5 2c 02  mov   $022c,a
0d85: 5f be 0c  jmp   $0cbe

0d88: e8 b0     mov   a,#$b0
0d8a: 8d 02     mov   y,#$02
0d8c: 9b a0     dec   $a0+x
0d8e: 3f fc 13  call  $13fc
0d91: f5 b1 02  mov   a,$02b1+x
0d94: fd        mov   y,a
0d95: f5 b0 02  mov   a,$02b0+x
0d98: da 10     movw  $10,ya
0d9a: 8f 00 48  mov   $48,#$00
0d9d: 5f 40 06  jmp   $0640

0da0: e5 8e 03  mov   a,$038e
0da3: 05 8d 03  or    a,$038d
0da6: f0 3a     beq   $0de2
0da8: e5 8e 03  mov   a,$038e
0dab: 68 0a     cmp   a,#$0a
0dad: f0 29     beq   $0dd8
0daf: e5 8d 03  mov   a,$038d
0db2: 68 0a     cmp   a,#$0a
0db4: f0 1d     beq   $0dd3
0db6: 68 05     cmp   a,#$05
0db8: f0 19     beq   $0dd3
0dba: 68 07     cmp   a,#$07
0dbc: f0 15     beq   $0dd3
0dbe: e5 8e 03  mov   a,$038e
0dc1: 68 07     cmp   a,#$07
0dc3: f0 13     beq   $0dd8
0dc5: e5 8d 03  mov   a,$038d
0dc8: 68 09     cmp   a,#$09
0dca: f0 07     beq   $0dd3
0dcc: e5 8e 03  mov   a,$038e
0dcf: 68 09     cmp   a,#$09
0dd1: f0 05     beq   $0dd8
0dd3: e5 8d 03  mov   a,$038d
0dd6: d0 0b     bne   $0de3
0dd8: e5 8f 03  mov   a,$038f
0ddb: d0 1d     bne   $0dfa
0ddd: e5 8e 03  mov   a,$038e
0de0: d0 3d     bne   $0e1f
0de2: 6f        ret

0de3: c5 8e 03  mov   $038e,a
0de6: e8 02     mov   a,#$02
0de8: c5 8f 03  mov   $038f,a
0deb: e8 04     mov   a,#$04
0ded: 8d 5c     mov   y,#$5c
0def: 3f a3 06  call  $06a3
0df2: 42 1c     set2  $1c
0df4: e8 00     mov   a,#$00
0df6: c5 04 03  mov   $0304,a
0df9: 6f        ret

0dfa: 8c 8f 03  dec   $038f
0dfd: d0 e3     bne   $0de2
0dff: e5 8e 03  mov   a,$038e
0e02: 1c        asl   a
0e03: fd        mov   y,a
0e04: f6 ac fb  mov   a,$fbac+y
0e07: c4 dd     mov   $dd,a
0e09: f6 ad fb  mov   a,$fbad+y
0e0c: c4 de     mov   $de,a
0e0e: 2f 16     bra   $0e26
0e10: e8 00     mov   a,#$00
0e12: c5 8e 03  mov   $038e,a
0e15: 52 1c     clr2  $1c
0e17: cd 04     mov   x,#$04
0e19: e5 15 02  mov   a,$0215
0e1c: 5f c3 10  jmp   $10c3

0e1f: 8c 90 03  dec   $0390
0e22: d0 5a     bne   $0e7e
0e24: 3a dd     incw  $dd
0e26: cd 00     mov   x,#$00
0e28: e7 dd     mov   a,($dd+x)
0e2a: f0 e4     beq   $0e10
0e2c: 30 2a     bmi   $0e58
0e2e: c5 91 03  mov   $0391,a
0e31: 3a dd     incw  $dd
0e33: e7 dd     mov   a,($dd+x)
0e35: c4 10     mov   $10,a
0e37: 30 1f     bmi   $0e58
0e39: 8d 20     mov   y,#$20
0e3b: 3f a3 06  call  $06a3
0e3e: 3a dd     incw  $dd
0e40: e7 dd     mov   a,($dd+x)
0e42: 10 0b     bpl   $0e4f
0e44: 5d        mov   x,a
0e45: e4 10     mov   a,$10
0e47: 8d 21     mov   y,#$21
0e49: 3f a3 06  call  $06a3
0e4c: 7d        mov   a,x
0e4d: 2f 09     bra   $0e58
0e4f: 8d 21     mov   y,#$21
0e51: 3f a3 06  call  $06a3
0e54: 3a dd     incw  $dd
0e56: e7 dd     mov   a,($dd+x)
0e58: 68 da     cmp   a,#$da
0e5a: f0 6f     beq   $0ecb
0e5c: 68 dd     cmp   a,#$dd
0e5e: f0 3a     beq   $0e9a
0e60: 68 eb     cmp   a,#$eb
0e62: f0 49     beq   $0ead
0e64: 68 ff     cmp   a,#$ff
0e66: d0 06     bne   $0e6e
0e68: 3a dd     incw  $dd
0e6a: e7 dd     mov   a,($dd+x)
0e6c: 2f 94     bra   $0e02
0e6e: cd 04     mov   x,#$04
0e70: 3f d0 05  call  $05d0
0e73: e8 04     mov   a,#$04
0e75: 3f aa 10  call  $10aa
0e78: e5 91 03  mov   a,$0391
0e7b: c5 90 03  mov   $0390,a
0e7e: f2 13     clr7  $13
0e80: cd 04     mov   x,#$04
0e82: f4 a0     mov   a,$a0+x
0e84: f0 05     beq   $0e8b
0e86: 3f 88 0d  call  $0d88
0e89: 2f 0e     bra   $0e99
0e8b: e8 02     mov   a,#$02
0e8d: 65 90 03  cmp   a,$0390
0e90: d0 07     bne   $0e99
0e92: e8 04     mov   a,#$04
0e94: 8d 5c     mov   y,#$5c
0e96: 3f a3 06  call  $06a3
0e99: 6f        ret

0e9a: cd 00     mov   x,#$00
0e9c: 3a dd     incw  $dd
0e9e: e7 dd     mov   a,($dd+x)
0ea0: 8f 04 46  mov   $46,#$04
0ea3: cd 04     mov   x,#$04
0ea5: 3f d0 05  call  $05d0
0ea8: e8 04     mov   a,#$04
0eaa: 3f aa 10  call  $10aa
0ead: cd 00     mov   x,#$00
0eaf: 3a dd     incw  $dd
0eb1: e7 dd     mov   a,($dd+x)
0eb3: c4 a5     mov   $a5,a
0eb5: 3a dd     incw  $dd
0eb7: e7 dd     mov   a,($dd+x)
0eb9: c4 a4     mov   $a4,a
0ebb: 2d        push  a
0ebc: 3a dd     incw  $dd
0ebe: e7 dd     mov   a,($dd+x)
0ec0: ee        pop   y
0ec1: 8f 04 46  mov   $46,#$04
0ec4: cd 04     mov   x,#$04
0ec6: 3f e4 12  call  $12e4
0ec9: 2f ad     bra   $0e78
0ecb: cd 00     mov   x,#$00
0ecd: 3a dd     incw  $dd
0ecf: e7 dd     mov   a,($dd+x)
0ed1: 8d 09     mov   y,#$09
0ed3: cf        mul   ya
0ed4: 5d        mov   x,a
0ed5: 8d 20     mov   y,#$20
0ed7: 8f 08 12  mov   $12,#$08
0eda: f5 00 fb  mov   a,$fb00+x
0edd: 3f a3 06  call  $06a3
0ee0: 3d        inc   x
0ee1: fc        inc   y
0ee2: 6e 12 f5  dbnz  $12,$0eda
0ee5: f5 00 fb  mov   a,$fb00+x
0ee8: c5 24 02  mov   $0224,a
0eeb: 5f 24 0e  jmp   $0e24

0eee: c4 04     mov   $04,a
0ef0: 8f 02 0c  mov   $0c,#$02
0ef3: 1c        asl   a
0ef4: fd        mov   y,a
0ef5: f6 7e 16  mov   a,$167e+y
0ef8: c4 40     mov   $40,a
0efa: f6 7f 16  mov   a,$167f+y
0efd: c4 41     mov   $41,a
0eff: cd 0e     mov   x,#$0e
0f01: e8 0a     mov   a,#$0a
0f03: d5 81 02  mov   $0281+x,a
0f06: e8 ff     mov   a,#$ff
0f08: d5 41 02  mov   $0241+x,a
0f0b: e8 00     mov   a,#$00
0f0d: d5 d1 02  mov   $02d1+x,a
0f10: d4 91     mov   $91+x,a
0f12: d4 90     mov   $90+x,a
0f14: d4 b1     mov   $b1+x,a
0f16: d4 c1     mov   $c1+x,a
0f18: d4 80     mov   $80+x,a
0f1a: d5 11 02  mov   $0211+x,a
0f1d: 1d        dec   x
0f1e: 1d        dec   x
0f1f: 10 e0     bpl   $0f01
0f21: c4 58     mov   $58,a
0f23: c4 60     mov   $60,a
0f25: c4 52     mov   $52,a
0f27: c4 43     mov   $43,a
0f29: 8f a0 57  mov   $57,#$a0
0f2c: 8f 20 51  mov   $51,#$20
0f2f: 8d 20     mov   y,#$20
0f31: d6 ff 02  mov   $02ff+y,a
0f34: fe fb     dbnz  y,$0f31
0f36: 2f 02     bra   $0f3a
0f38: c4 04     mov   $04,a
0f3a: e4 1c     mov   a,$1c
0f3c: 48 ff     eor   a,#$ff
0f3e: 8d 5c     mov   y,#$5c
0f40: 5f a3 06  jmp   $06a3

0f43: cd c0     mov   x,#$c0
0f45: d8 58     mov   $58,x
0f47: e8 00     mov   a,#$00
0f49: c4 59     mov   $59,a
0f4b: 80        setc
0f4c: a4 57     sbc   a,$57
0f4e: 3f fd 12  call  $12fd
0f51: da 5a     movw  $5a,ya
0f53: 2f 0a     bra   $0f5f
0f55: e4 00     mov   a,$00
0f57: 68 ff     cmp   a,#$ff
0f59: f0 e8     beq   $0f43
0f5b: 28 1f     and   a,#$1f
0f5d: d0 8f     bne   $0eee
0f5f: e4 0c     mov   a,$0c
0f61: d0 13     bne   $0f76
0f63: e4 04     mov   a,$04
0f65: d0 58     bne   $0fbf
0f67: 6f        ret

; read next word at $40 into YA
0f68: 8d 00     mov   y,#$00
0f6a: f7 40     mov   a,($40)+y
0f6c: 3a 40     incw  $40
0f6e: 2d        push  a
0f6f: f7 40     mov   a,($40)+y
0f71: 3a 40     incw  $40
0f73: fd        mov   y,a
0f74: ae        pop   a
0f75: 6f        ret

0f76: 6e 0c ee  dbnz  $0c,$0f67
0f79: 3f 68 0f  call  $0f68
0f7c: da 16     movw  $16,ya
0f7e: dd        mov   a,y
0f7f: d0 19     bne   $0f9a
0f81: e4 16     mov   a,$16
0f83: f0 b3     beq   $0f38
0f85: 8b 42     dec   $42
0f87: f0 0b     beq   $0f94
0f89: 10 02     bpl   $0f8d
0f8b: c4 42     mov   $42,a
0f8d: 3f 68 0f  call  $0f68
0f90: da 40     movw  $40,ya
0f92: 2f e5     bra   $0f79
0f94: 3a 40     incw  $40
0f96: 3a 40     incw  $40
0f98: 2f df     bra   $0f79
0f9a: 8d 0f     mov   y,#$0f
0f9c: f7 16     mov   a,($16)+y
0f9e: d6 30 00  mov   $0030+y,a
0fa1: dc        dec   y
0fa2: 10 f8     bpl   $0f9c
0fa4: cd 0e     mov   x,#$0e
0fa6: 8f 80 48  mov   $48,#$80
0fa9: f4 31     mov   a,$31+x
0fab: f0 0c     beq   $0fb9
0fad: e8 01     mov   a,#$01
0faf: d4 70     mov   $70+x,a
0fb1: f5 11 02  mov   a,$0211+x
0fb4: d0 03     bne   $0fb9
0fb6: 3f c2 10  call  $10c2
0fb9: 4b 48     lsr   $48
0fbb: 1d        dec   x
0fbc: 1d        dec   x
0fbd: 10 ea     bpl   $0fa9
0fbf: cd 00     mov   x,#$00
0fc1: d8 47     mov   $47,x
0fc3: 8f 01 48  mov   $48,#$01
0fc6: d8 46     mov   $46,x
0fc8: f4 31     mov   a,$31+x
0fca: f0 75     beq   $1041
0fcc: 9b 70     dec   $70+x
0fce: d0 6e     bne   $103e
0fd0: 3f e7 15  call  $15e7
0fd3: d0 1e     bne   $0ff3
0fd5: f4 80     mov   a,$80+x
0fd7: f0 a0     beq   $0f79
0fd9: 9b 80     dec   $80+x
0fdb: d0 0a     bne   $0fe7
0fdd: f5 e0 03  mov   a,$03e0+x
0fe0: d4 30     mov   $30+x,a
0fe2: f5 e1 03  mov   a,$03e1+x
0fe5: 2f 08     bra   $0fef
0fe7: f5 f0 03  mov   a,$03f0+x
0fea: d4 30     mov   $30+x,a
0fec: f5 f1 03  mov   a,$03f1+x
0fef: d4 31     mov   $31+x,a
0ff1: 2f dd     bra   $0fd0
0ff3: 30 23     bmi   $1018
0ff5: d5 00 02  mov   $0200+x,a
0ff8: 3f e7 15  call  $15e7
0ffb: 30 1b     bmi   $1018
0ffd: 2d        push  a
0ffe: 9f        xcn   a
0fff: 28 07     and   a,#$07
1001: fd        mov   y,a
1002: f6 f1 15  mov   a,$15f1+y
1005: d5 01 02  mov   $0201+x,a
1008: ae        pop   a
1009: 28 0f     and   a,#$0f
100b: fd        mov   y,a
100c: f6 f9 15  mov   a,$15f9+y
100f: d5 10 02  mov   $0210+x,a
1012: 09 48 5c  or    ($5c),($48)
1015: 3f e7 15  call  $15e7
1018: 68 da     cmp   a,#$da
101a: 90 05     bcc   $1021
101c: 3f b8 10  call  $10b8
101f: 2f af     bra   $0fd0
1021: 2d        push  a
1022: e4 48     mov   a,$48
1024: 24 1c     and   a,$1c
1026: ae        pop   a
1027: d0 03     bne   $102c
1029: 3f d0 05  call  $05d0
102c: f5 00 02  mov   a,$0200+x
102f: d4 70     mov   $70+x,a
1031: fd        mov   y,a
1032: f5 01 02  mov   a,$0201+x
1035: cf        mul   ya
1036: dd        mov   a,y
1037: d0 01     bne   $103a
1039: bc        inc   a
103a: d4 71     mov   $71+x,a
103c: 2f 03     bra   $1041
103e: 3f 28 14  call  $1428
1041: 3d        inc   x
1042: 3d        inc   x
1043: 0b 48     asl   $48
1045: b0 03     bcs   $104a
1047: 5f c6 0f  jmp   $0fc6

104a: e4 52     mov   a,$52
104c: f0 0d     beq   $105b
104e: 6e 52 04  dbnz  $52,$1055
1051: ba 52     movw  ya,$52
1053: 2f 04     bra   $1059
1055: ba 54     movw  ya,$54
1057: 7a 50     addw  ya,$50
1059: da 50     movw  $50,ya
105b: e4 60     mov   a,$60
105d: f0 1c     beq   $107b
105f: 6e 60 0a  dbnz  $60,$106c
1062: e8 00     mov   a,#$00
1064: eb 62     mov   y,$62
1066: da 61     movw  $61,ya
1068: eb 64     mov   y,$64
106a: 2f 0a     bra   $1076
106c: ba 65     movw  ya,$65
106e: 7a 61     addw  ya,$61
1070: da 61     movw  $61,ya
1072: ba 67     movw  ya,$67
1074: 7a 63     addw  ya,$63
1076: da 63     movw  $63,ya
1078: 3f 75 12  call  $1275
107b: e4 58     mov   a,$58
107d: f0 10     beq   $108f
107f: 6e 58 04  dbnz  $58,$1086
1082: ba 58     movw  ya,$58
1084: 2f 04     bra   $108a
1086: ba 5a     movw  ya,$5a
1088: 7a 56     addw  ya,$56
108a: da 56     movw  $56,ya
108c: 8f ff 5c  mov   $5c,#$ff
108f: cd 0e     mov   x,#$0e
1091: 8f 80 48  mov   $48,#$80
1094: f4 31     mov   a,$31+x
1096: f0 03     beq   $109b
1098: 3f 62 13  call  $1362
109b: 4b 48     lsr   $48
109d: 1d        dec   x
109e: 1d        dec   x
109f: 10 f3     bpl   $1094
10a1: 8f 00 5c  mov   $5c,#$00
10a4: e4 1c     mov   a,$1c
10a6: 48 ff     eor   a,#$ff
10a8: 24 47     and   a,$47
10aa: 2d        push  a
10ab: 8d 5c     mov   y,#$5c
10ad: e8 00     mov   a,#$00
10af: 3f a3 06  call  $06a3
10b2: ae        pop   a
10b3: 8d 4c     mov   y,#$4c
10b5: 5f a3 06  jmp   $06a3

10b8: 1c        asl   a
10b9: 5d        mov   x,a
10ba: e8 00     mov   a,#$00
10bc: 1f 63 12  jmp   ($1263+x)

; vcmd da - set instrument
10bf: 3f e5 15  call  $15e5
10c2: bc        inc   a
10c3: d5 11 02  mov   $0211+x,a
10c6: 9c        dec   a
10c7: 8d 05     mov   y,#$05
10c9: 8f aa 14  mov   $14,#$aa
10cc: 8f 16 15  mov   $15,#$16
10cf: cf        mul   ya
10d0: 7a 14     addw  ya,$14
10d2: da 14     movw  $14,ya
10d4: e4 48     mov   a,$48
10d6: 24 1c     and   a,$1c
10d8: d0 46     bne   $1120
10da: 4d        push  x
10db: 7d        mov   a,x
10dc: 9f        xcn   a
10dd: 5c        lsr   a
10de: 08 04     or    a,#$04
10e0: 5d        mov   x,a
10e1: 8d 00     mov   y,#$00
10e3: f7 14     mov   a,($14)+y
10e5: 10 14     bpl   $10fb
10e7: 28 1f     and   a,#$1f
10e9: c4 2e     mov   $2e,a
10eb: 05 8c 03  or    a,$038c
10ee: 8d 6c     mov   y,#$6c
10f0: 3f a3 06  call  $06a3
10f3: e4 48     mov   a,$48
10f5: 04 2f     or    a,$2f
10f7: c4 2f     mov   $2f,a
10f9: 2f 08     bra   $1103
10fb: e4 48     mov   a,$48
10fd: 48 ff     eor   a,#$ff
10ff: 24 2f     and   a,$2f
1101: c4 2f     mov   $2f,a
1103: 8d 3d     mov   y,#$3d
1105: 3f a3 06  call  $06a3
1108: 8d 00     mov   y,#$00
110a: f7 14     mov   a,($14)+y
110c: c9 f2 00  mov   $00f2,x
110f: c5 f3 00  mov   $00f3,a
1112: 3d        inc   x
1113: fc        inc   y
1114: ad 04     cmp   y,#$04
1116: d0 f2     bne   $110a
1118: f7 14     mov   a,($14)+y
111a: ce        pop   x
111b: d5 20 02  mov   $0220+x,a
111e: e8 00     mov   a,#$00
1120: 6f        ret

; vcmd db - set pan
1121: 3f e5 15  call  $15e5
1124: 28 1f     and   a,#$1f
1126: d5 81 02  mov   $0281+x,a
1129: dd        mov   a,y
112a: 28 c0     and   a,#$c0
112c: d5 a1 02  mov   $02a1+x,a
112f: e8 00     mov   a,#$00
1131: d5 80 02  mov   $0280+x,a
1134: 09 48 5c  or    ($5c),($48)
1137: 6f        ret

; vcmd dc - pan fade
1138: 3f e5 15  call  $15e5
113b: d4 91     mov   $91+x,a
113d: 2d        push  a
113e: 3f e7 15  call  $15e7
1141: d5 a0 02  mov   $02a0+x,a
1144: 80        setc
1145: b5 81 02  sbc   a,$0281+x
1148: ce        pop   x
1149: 3f fd 12  call  $12fd
114c: d5 90 02  mov   $0290+x,a
114f: dd        mov   a,y
1150: d5 91 02  mov   $0291+x,a
1153: 6f        ret

; vcmd de - vibrato on
1154: 3f e5 15  call  $15e5
1157: d5 40 03  mov   $0340+x,a
115a: e8 00     mov   a,#$00
115c: d5 41 03  mov   $0341+x,a
115f: 3f e7 15  call  $15e7
1162: d5 31 03  mov   $0331+x,a
1165: 3f e7 15  call  $15e7
; vcmd df - vibrato off
1168: f8 46     mov   x,$46
116a: d4 b1     mov   $b1+x,a
116c: 6f        ret

; vcmd ea - vibrato fade
116d: 3f e5 15  call  $15e5
1170: d5 41 03  mov   $0341+x,a
1173: 2d        push  a
1174: f4 b1     mov   a,$b1+x
1176: d5 51 03  mov   $0351+x,a
1179: ce        pop   x
117a: 8d 00     mov   y,#$00
117c: 9e        div   ya,x
117d: f8 46     mov   x,$46
117f: d5 50 03  mov   $0350+x,a
1182: 6f        ret

; vcmd e0 - master volume
1183: 3f e5 15  call  $15e5
1186: c4 57     mov   $57,a
1188: 8f 00 56  mov   $56,#$00
118b: 8f ff 5c  mov   $5c,#$ff
118e: 6f        ret

; vcmd e1 - master volume fade
118f: 3f e5 15  call  $15e5
1192: c4 58     mov   $58,a
1194: 3f e7 15  call  $15e7
1197: c4 59     mov   $59,a
1199: f8 58     mov   x,$58
119b: 80        setc
119c: a4 57     sbc   a,$57
119e: 3f fd 12  call  $12fd
11a1: da 5a     movw  $5a,ya
11a3: 6f        ret

; vcmd e2 - tempo
11a4: 3f e5 15  call  $15e5
11a7: c4 51     mov   $51,a
11a9: 8f 00 50  mov   $50,#$00
11ac: 6f        ret

; vcmd e3 - tempo fade
11ad: 3f e5 15  call  $15e5
11b0: c4 52     mov   $52,a
11b2: 3f e7 15  call  $15e7
11b5: c4 53     mov   $53,a
11b7: f8 52     mov   x,$52
11b9: 80        setc
11ba: a4 51     sbc   a,$51
11bc: 3f fd 12  call  $12fd
11bf: da 54     movw  $54,ya
11c1: 6f        ret

; vcmd e4 - global transpose
11c2: 3f e5 15  call  $15e5
11c5: c4 43     mov   $43,a
11c7: 6f        ret

; vcmd e5 - tremolo on
11c8: 3f e5 15  call  $15e5
11cb: d5 70 03  mov   $0370+x,a
11ce: 3f e7 15  call  $15e7
11d1: d5 62 03  mov   $0362+x,a
11d4: 3f e7 15  call  $15e7
; vcmd e6 - tremolo off
11d7: f8 46     mov   x,$46
11d9: d4 c1     mov   $c1+x,a
11db: 6f        ret

; vcmd eb - pitch envelope (release)
11dc: e8 01     mov   a,#$01
11de: 2f 02     bra   $11e2
; vcmd ec - pitch envelope (attack)
11e0: e8 00     mov   a,#$00
11e2: f8 46     mov   x,$46
11e4: d5 20 03  mov   $0320+x,a
11e7: 3f e5 15  call  $15e5
11ea: d5 01 03  mov   $0301+x,a
11ed: 3f e7 15  call  $15e7
11f0: d5 00 03  mov   $0300+x,a
11f3: 3f e7 15  call  $15e7
11f6: d5 21 03  mov   $0321+x,a
11f9: 6f        ret

11fa: f8 46     mov   x,$46
11fc: d5 00 03  mov   $0300+x,a
11ff: 6f        ret

; vcmd e7 - volume
1200: 3f e5 15  call  $15e5
1203: d5 41 02  mov   $0241+x,a
1206: e8 00     mov   a,#$00
1208: d5 40 02  mov   $0240+x,a
120b: 09 48 5c  or    ($5c),($48)
120e: 6f        ret

; vcmd e8 - volume fade
120f: 3f e5 15  call  $15e5
1212: d4 90     mov   $90+x,a
1214: 2d        push  a
1215: 3f e7 15  call  $15e7
1218: d5 60 02  mov   $0260+x,a
121b: 80        setc
121c: b5 41 02  sbc   a,$0241+x
121f: ce        pop   x
1220: 3f fd 12  call  $12fd
1223: d5 50 02  mov   $0250+x,a
1226: dd        mov   a,y
1227: d5 51 02  mov   $0251+x,a
122a: 6f        ret

; vcmd ee - tuning
122b: 3f e5 15  call  $15e5
122e: d5 d1 02  mov   $02d1+x,a
1231: 6f        ret

; vcmd e9 - call subroutine
1232: 3f e5 15  call  $15e5
1235: 2d        push  a
1236: 3f e7 15  call  $15e7
1239: 2d        push  a
123a: 3f e7 15  call  $15e7
123d: d4 80     mov   $80+x,a
123f: f4 30     mov   a,$30+x
1241: d5 e0 03  mov   $03e0+x,a
1244: f4 31     mov   a,$31+x
1246: d5 e1 03  mov   $03e1+x,a
1249: ae        pop   a
124a: d4 31     mov   $31+x,a
124c: d5 f1 03  mov   $03f1+x,a
124f: ae        pop   a
1250: d4 30     mov   $30+x,a
1252: d5 f0 03  mov   $03f0+x,a
1255: 6f        ret

; vcmd ef - set echo vbits/volume
1256: 3f e5 15  call  $15e5
1259: 8d 4d     mov   y,#$4d
125b: 3f a3 06  call  $06a3
125e: 3f e7 15  call  $15e7
1261: e8 00     mov   a,#$00
1263: da 61     movw  $61,ya
1265: 3f e7 15  call  $15e7
1268: e8 00     mov   a,#$00
126a: da 63     movw  $63,ya
126c: c4 2e     mov   $2e,a
126e: 28 1f     and   a,#$1f
1270: 8d 6c     mov   y,#$6c
1272: 3f a3 06  call  $06a3
1275: e4 62     mov   a,$62
1277: 8d 2c     mov   y,#$2c
1279: 3f a3 06  call  $06a3
127c: e4 64     mov   a,$64
127e: 8d 3c     mov   y,#$3c
1280: 5f a3 06  jmp   $06a3

; vcmd f2 - echo volume fade
1283: 3f e5 15  call  $15e5
1286: c4 60     mov   $60,a
1288: 3f e7 15  call  $15e7
128b: c4 69     mov   $69,a
128d: f8 60     mov   x,$60
128f: 80        setc
1290: a4 62     sbc   a,$62
1292: 3f fd 12  call  $12fd
1295: da 65     movw  $65,ya
1297: 3f e7 15  call  $15e7
129a: c4 6a     mov   $6a,a
129c: f8 60     mov   x,$60
129e: 80        setc
129f: a4 64     sbc   a,$64
12a1: 3f fd 12  call  $12fd
12a4: da 67     movw  $67,ya
12a6: 6f        ret

; vcmd f0 - disable echo
12a7: f8 46     mov   x,$46
12a9: fd        mov   y,a
12aa: da 61     movw  $61,ya
12ac: da 63     movw  $63,ya
12ae: 3f 75 12  call  $1275
12b1: c4 2e     mov   $2e,a
12b3: 08 20     or    a,#$20
12b5: 8d 6c     mov   y,#$6c
12b7: 5f a3 06  jmp   $06a3

; vcmd f1 - set echo delay, feedback, filter
12ba: 3f e5 15  call  $15e5
12bd: 8d 7d     mov   y,#$7d
12bf: 3f a3 06  call  $06a3
12c2: 3f e7 15  call  $15e7
12c5: 8d 0d     mov   y,#$0d
12c7: 3f a3 06  call  $06a3
12ca: 3f e7 15  call  $15e7
12cd: 8d 08     mov   y,#$08
12cf: cf        mul   ya
12d0: 5d        mov   x,a
12d1: 8d 0f     mov   y,#$0f
12d3: f5 36 16  mov   a,$1636+x
12d6: 3f a3 06  call  $06a3
12d9: 3d        inc   x
12da: dd        mov   a,y
12db: 60        clrc
12dc: 88 10     adc   a,#$10
12de: fd        mov   y,a
12df: 10 f2     bpl   $12d3
12e1: f8 46     mov   x,$46
12e3: 6f        ret

12e4: 28 7f     and   a,#$7f
12e6: d5 d0 02  mov   $02d0+x,a
12e9: 80        setc
12ea: b5 b1 02  sbc   a,$02b1+x
12ed: 2d        push  a
12ee: f4 a0     mov   a,$a0+x
12f0: 5d        mov   x,a
12f1: ae        pop   a
12f2: 3f fd 12  call  $12fd
12f5: d5 c0 02  mov   $02c0+x,a
12f8: dd        mov   a,y
12f9: d5 c1 02  mov   $02c1+x,a
12fc: 6f        ret

; signed 16 bit division
12fd: b0 0d     bcs   $130c
12ff: 48 ff     eor   a,#$ff
1301: bc        inc   a
1302: 3f 0c 13  call  $130c
1305: da 14     movw  $14,ya
1307: ba 0e     movw  ya,$0e
1309: 9a 14     subw  ya,$14
130b: 6f        ret
130c: 8d 00     mov   y,#$00
130e: 9e        div   ya,x
130f: 2d        push  a
1310: e8 00     mov   a,#$00
1312: 9e        div   ya,x
1313: ee        pop   y
1314: f8 46     mov   x,$46
1316: 6f        ret

; vcmd dispatch table ($1263)
1317: dw $10bf  ; da - set instrument
1319: dw $1121  ; db - set pan
131b: dw $1138  ; dc - pan fade
131d: dw $0000  ; dd - undef, but slur
131f: dw $1154  ; de - vibrato on
1321: dw $1168  ; df - vibrato off
1323: dw $1183  ; e0 - master volume
1325: dw $118f  ; e1 - master volume fade
1327: dw $11a4  ; e2 - tempo
1329: dw $11ad  ; e3 - tempo fade
132b: dw $11c2  ; e4 - global transpose
132d: dw $11c8  ; e5 - tremolo on
132f: dw $11d7  ; e6 - tremolo off
1331: dw $1200  ; e7 - volume
1333: dw $120f  ; e8 - volume fade
1335: dw $1232  ; e9 - call subroutine
1337: dw $116d  ; ea - vibrato fade
1339: dw $11dc  ; eb - pitch envelope (release)
133b: dw $11e0  ; ec - pitch envelope (attack)
133d: dw $0000  ; ed - (undef)
133f: dw $122b  ; ee - tuning
1341: dw $1256  ; ef - set echo vbits/volume
1343: dw $12a7  ; f0 - disable echo
1345: dw $12ba  ; f1 - set echo delay, feedback, filter
1347: dw $1283  ; f2 - echo volume fade
                ; f3-ff undefined

; vcmd lengths ($126f)
1349: db         $02,$02,$03,$04,$04,$01 ; da-df
134f: db $02,$03,$02,$03,$02,$04,$01,$02 ; e0-e7
1357: db $03,$04,$02,$04,$04,$01,$02,$04 ; e8-ef
135f: db $01,$04,$04                     ; f0-f2

1362: f4 90     mov   a,$90+x
1364: f0 0c     beq   $1372
1366: 09 48 5c  or    ($5c),($48)
1369: e8 40     mov   a,#$40
136b: 8d 02     mov   y,#$02
136d: 9b 90     dec   $90+x
136f: 3f fc 13  call  $13fc
1372: f4 c1     mov   a,$c1+x
1374: fd        mov   y,a
1375: f0 23     beq   $139a
1377: f5 70 03  mov   a,$0370+x
137a: de c0 1b  cbne  $c0+x,$1398
137d: 09 48 5c  or    ($5c),($48)
1380: f5 60 03  mov   a,$0360+x
1383: 10 07     bpl   $138c
1385: fc        inc   y
1386: d0 04     bne   $138c
1388: e8 80     mov   a,#$80
138a: 2f 04     bra   $1390
138c: 60        clrc
138d: 95 62 03  adc   a,$0362+x
1390: d5 60 03  mov   $0360+x,a
1393: 3f c3 15  call  $15c3
1396: 2f 08     bra   $13a0
1398: bb c0     inc   $c0+x
139a: f5 10 02  mov   a,$0210+x
139d: 3f d6 15  call  $15d6
13a0: f4 91     mov   a,$91+x
13a2: d0 07     bne   $13ab
13a4: e4 48     mov   a,$48
13a6: 24 5c     and   a,$5c
13a8: d0 0a     bne   $13b4
13aa: 6f        ret

13ab: e8 80     mov   a,#$80
13ad: 8d 02     mov   y,#$02
13af: 9b 91     dec   $91+x
13b1: 3f fc 13  call  $13fc
13b4: f5 81 02  mov   a,$0281+x
13b7: fd        mov   y,a
13b8: f5 80 02  mov   a,$0280+x
13bb: da 10     movw  $10,ya
13bd: 7d        mov   a,x
13be: 9f        xcn   a
13bf: 5c        lsr   a
13c0: c4 12     mov   $12,a
13c2: eb 11     mov   y,$11
13c4: f6 0a 16  mov   a,$160a+y
13c7: 80        setc
13c8: b6 09 16  sbc   a,$1609+y
13cb: eb 10     mov   y,$10
13cd: cf        mul   ya
13ce: dd        mov   a,y
13cf: eb 11     mov   y,$11
13d1: 60        clrc
13d2: 96 09 16  adc   a,$1609+y
13d5: fd        mov   y,a
13d6: f5 71 03  mov   a,$0371+x
13d9: cf        mul   ya
13da: f5 a1 02  mov   a,$02a1+x
13dd: 13 12 01  bbc0  $12,$13e1
13e0: 1c        asl   a
13e1: 10 05     bpl   $13e8
13e3: dd        mov   a,y
13e4: 48 ff     eor   a,#$ff
13e6: bc        inc   a
13e7: fd        mov   y,a
13e8: dd        mov   a,y
13e9: eb 12     mov   y,$12
13eb: 3f 9b 06  call  $069b
13ee: e8 00     mov   a,#$00
13f0: 8d 14     mov   y,#$14
13f2: 9a 10     subw  ya,$10
13f4: da 10     movw  $10,ya
13f6: ab 12     inc   $12
13f8: 33 12 c7  bbc1  $12,$13c2
13fb: 6f        ret

13fc: da 14     movw  $14,ya
13fe: d0 0f     bne   $140f
1400: 60        clrc
1401: 88 20     adc   a,#$20
1403: da 16     movw  $16,ya
1405: 7d        mov   a,x
1406: fd        mov   y,a
1407: e8 00     mov   a,#$00
1409: 2d        push  a
140a: f7 16     mov   a,($16)+y
140c: fc        inc   y
140d: 2f 12     bra   $1421
140f: 60        clrc
1410: 88 10     adc   a,#$10
1412: da 16     movw  $16,ya
1414: 7d        mov   a,x
1415: fd        mov   y,a
1416: f7 14     mov   a,($14)+y
1418: 60        clrc
1419: 97 16     adc   a,($16)+y
141b: 2d        push  a
141c: fc        inc   y
141d: f7 14     mov   a,($14)+y
141f: 97 16     adc   a,($16)+y
1421: d7 14     mov   ($14)+y,a
1423: dc        dec   y
1424: ae        pop   a
1425: d7 14     mov   ($14)+y,a
1427: 6f        ret

1428: f4 71     mov   a,$71+x
142a: f0 35     beq   $1461
142c: 9b 71     dec   $71+x
142e: f0 05     beq   $1435
1430: e8 02     mov   a,#$02
1432: de 70 2c  cbne  $70+x,$1461
1435: f4 30     mov   a,$30+x
1437: fb 31     mov   y,$31+x
1439: da 14     movw  $14,ya
143b: 8d 00     mov   y,#$00
143d: f7 14     mov   a,($14)+y
143f: f0 19     beq   $145a
1441: 30 05     bmi   $1448
1443: fc        inc   y
1444: f7 14     mov   a,($14)+y
1446: 10 fb     bpl   $1443
1448: 68 c6     cmp   a,#$c6
144a: f0 15     beq   $1461
144c: 68 da     cmp   a,#$da
144e: 90 0a     bcc   $145a
1450: 6d        push  y
1451: fd        mov   y,a
1452: ae        pop   a
1453: 60        clrc
1454: 96 6f 12  adc   a,$126f+y
1457: fd        mov   y,a
1458: 2f e3     bra   $143d
145a: e4 48     mov   a,$48
145c: 8d 5c     mov   y,#$5c
145e: 3f 9b 06  call  $069b
1461: f2 13     clr7  $13
1463: f4 a0     mov   a,$a0+x
1465: f0 06     beq   $146d
1467: e4 48     mov   a,$48
1469: 24 1c     and   a,$1c
146b: f0 2d     beq   $149a
146d: e7 30     mov   a,($30+x)
146f: 68 dd     cmp   a,#$dd
1471: d0 40     bne   $14b3
1473: e4 48     mov   a,$48
1475: 24 1c     and   a,$1c
1477: f0 0b     beq   $1484
1479: 8f 04 10  mov   $10,#$04
147c: 3f e9 15  call  $15e9
147f: 6e 10 fa  dbnz  $10,$147c
1482: 2f 16     bra   $149a
1484: 3f e9 15  call  $15e9
1487: 3f e7 15  call  $15e7
148a: d4 a1     mov   $a1+x,a
148c: 3f e7 15  call  $15e7
148f: d4 a0     mov   $a0+x,a
1491: 3f e7 15  call  $15e7
1494: 60        clrc
1495: 84 43     adc   a,$43
1497: 3f e4 12  call  $12e4
149a: f4 a1     mov   a,$a1+x
149c: f0 04     beq   $14a2
149e: 9b a1     dec   $a1+x
14a0: 2f 11     bra   $14b3
14a2: e4 1c     mov   a,$1c
14a4: 24 48     and   a,$48
14a6: d0 0b     bne   $14b3
14a8: e2 13     set7  $13
14aa: e8 b0     mov   a,#$b0
14ac: 8d 02     mov   y,#$02
14ae: 9b a0     dec   $a0+x
14b0: 3f fc 13  call  $13fc
14b3: f5 b1 02  mov   a,$02b1+x
14b6: fd        mov   y,a
14b7: f5 b0 02  mov   a,$02b0+x
14ba: da 10     movw  $10,ya
14bc: f4 b1     mov   a,$b1+x
14be: f0 09     beq   $14c9
14c0: f5 40 03  mov   a,$0340+x
14c3: 74 b0     cmp   a,$b0+x
14c5: f0 06     beq   $14cd
14c7: bb b0     inc   $b0+x
14c9: e3 13 52  bbs7  $13,$151e
14cc: 6f        ret

14cd: f5 41 03  mov   a,$0341+x
14d0: f0 1d     beq   $14ef
14d2: 75 10 01  cmp   a,$0110+x
14d5: d0 07     bne   $14de
14d7: f5 51 03  mov   a,$0351+x
14da: d4 b1     mov   $b1+x,a
14dc: 2f 11     bra   $14ef
14de: f5 10 01  mov   a,$0110+x
14e1: f0 02     beq   $14e5
14e3: f4 b1     mov   a,$b1+x
14e5: 60        clrc
14e6: 95 50 03  adc   a,$0350+x
14e9: d4 b1     mov   $b1+x,a
14eb: 40        setp
14ec: bb 10     inc   $10+x
14ee: 20        clrp
14ef: f5 30 03  mov   a,$0330+x
14f2: 60        clrc
14f3: 95 31 03  adc   a,$0331+x
14f6: d5 30 03  mov   $0330+x,a
14f9: c4 12     mov   $12,a
14fb: 1c        asl   a
14fc: 1c        asl   a
14fd: 90 02     bcc   $1501
14ff: 48 ff     eor   a,#$ff
1501: fd        mov   y,a
1502: f4 b1     mov   a,$b1+x
1504: 68 f1     cmp   a,#$f1
1506: b0 06     bcs   $150e
1508: cf        mul   ya
1509: dd        mov   a,y
150a: 8d 00     mov   y,#$00
150c: 2f 03     bra   $1511
150e: 28 0f     and   a,#$0f
1510: cf        mul   ya
1511: f3 12 06  bbc7  $12,$151a
1514: da 12     movw  $12,ya
1516: ba 0e     movw  ya,$0e
1518: 9a 12     subw  ya,$12
151a: 7a 10     addw  ya,$10
151c: da 10     movw  $10,ya
151e: 5f 40 06  jmp   $0640

1521: f2 13     clr7  $13
1523: f4 c1     mov   a,$c1+x
1525: f0 09     beq   $1530
1527: f5 70 03  mov   a,$0370+x
152a: de c0 03  cbne  $c0+x,$1530
152d: 3f b6 15  call  $15b6
1530: f5 81 02  mov   a,$0281+x
1533: fd        mov   y,a
1534: f5 80 02  mov   a,$0280+x
1537: da 10     movw  $10,ya
1539: f4 91     mov   a,$91+x
153b: d0 05     bne   $1542
153d: e3 13 0c  bbs7  $13,$154c
1540: 2f 0d     bra   $154f
1542: f5 91 02  mov   a,$0291+x
1545: fd        mov   y,a
1546: f5 90 02  mov   a,$0290+x
1549: 3f 8a 15  call  $158a
154c: 3f bd 13  call  $13bd
154f: f2 13     clr7  $13
1551: f5 b1 02  mov   a,$02b1+x
1554: fd        mov   y,a
1555: f5 b0 02  mov   a,$02b0+x
1558: da 10     movw  $10,ya
155a: f4 a0     mov   a,$a0+x
155c: f0 0e     beq   $156c
155e: f4 a1     mov   a,$a1+x
1560: d0 0a     bne   $156c
1562: f5 c1 02  mov   a,$02c1+x
1565: fd        mov   y,a
1566: f5 c0 02  mov   a,$02c0+x
1569: 3f 88 15  call  $1588
156c: f4 b1     mov   a,$b1+x
156e: d0 04     bne   $1574
1570: e3 13 ab  bbs7  $13,$151e
1573: 6f        ret

1574: f5 40 03  mov   a,$0340+x
1577: de b0 f6  cbne  $b0+x,$1570
157a: eb 49     mov   y,$49
157c: f5 31 03  mov   a,$0331+x
157f: cf        mul   ya
1580: dd        mov   a,y
1581: 60        clrc
1582: 95 30 03  adc   a,$0330+x
1585: 5f f9 14  jmp   $14f9

1588: e2 13     set7  $13
158a: da 16     movw  $16,ya
158c: cb 12     mov   $12,y
158e: f3 12 06  bbc7  $12,$1597
1591: ba 0e     movw  ya,$0e
1593: 9a 16     subw  ya,$16
1595: da 16     movw  $16,ya
1597: eb 49     mov   y,$49
1599: e4 16     mov   a,$16
159b: cf        mul   ya
159c: cb 14     mov   $14,y
159e: 8f 00 15  mov   $15,#$00
15a1: eb 49     mov   y,$49
15a3: e4 17     mov   a,$17
15a5: cf        mul   ya
15a6: 7a 14     addw  ya,$14
15a8: f3 12 06  bbc7  $12,$15b1
15ab: da 14     movw  $14,ya
15ad: ba 0e     movw  ya,$0e
15af: 9a 14     subw  ya,$14
15b1: 7a 10     addw  ya,$10
15b3: da 10     movw  $10,ya
15b5: 6f        ret

15b6: e2 13     set7  $13
15b8: eb 49     mov   y,$49
15ba: f5 62 03  mov   a,$0362+x
15bd: cf        mul   ya
15be: dd        mov   a,y
15bf: 60        clrc
15c0: 95 60 03  adc   a,$0360+x
15c3: 1c        asl   a
15c4: 90 02     bcc   $15c8
15c6: 48 ff     eor   a,#$ff
15c8: fb c1     mov   y,$c1+x
15ca: cf        mul   ya
15cb: f5 10 02  mov   a,$0210+x
15ce: cf        mul   ya
15cf: dd        mov   a,y
15d0: 48 ff     eor   a,#$ff
15d2: 80        setc
15d3: 95 10 02  adc   a,$0210+x
15d6: fd        mov   y,a
15d7: f5 41 02  mov   a,$0241+x
15da: cf        mul   ya
15db: e4 57     mov   a,$57
15dd: cf        mul   ya
15de: dd        mov   a,y
15df: cf        mul   ya
15e0: dd        mov   a,y
15e1: d5 71 03  mov   $0371+x,a
15e4: 6f        ret

; get next vcmd stream byte for voice $46
15e5: f8 46     mov   x,$46
; get next vcmd stream byte into A/Y
15e7: e7 30     mov   a,($30+x)
15e9: bb 30     inc   $30+x
15eb: d0 02     bne   $15ef
15ed: bb 31     inc   $31+x
15ef: fd        mov   y,a
15f0: 6f        ret

; note dur%'s
15f1: db $33,$66,$80,$99,$b3,$cc,$e6,$ff
; per-note velocity values
15f9: db $08,$12,$1b,$24,$2c,$35,$3e,$47
1601: db $51,$5a,$62,$6b,$7d,$8f,$a1,$b3

; pan table
1609: db $00,$01,$03,$07,$0d,$15,$1e,$29
1611: db $34,$42,$51,$5e,$67,$6e,$73,$77
1619: db $7a,$7c,$7d,$7e,$7f

; default values ($161e) for DSP regs ($162a)
; MVOL(L),MVOL(R),EVOL(L),EVOL(R),FLG,EFB,PMON,NON,EON,DIR,ESA,EDL
161e: db $7f,$7f,$00,$00,$2f $60,$00,$00,$00,$80,$60,$02
162a: db $0c,$1c,$2c,$3c,$6c,$0d,$2d,$3d,$4d,$5d,$6d,$7d

; echo FIR preset
1636: db $ff,$08,$17,$24,$24,$17,$08,$ff ; 00
163e: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 01

; get pitch from note number in A (with octave correction) to YA
1646: 8d 00     mov   y,#$00
1648: 1c        asl   a
1649: cd 18     mov   x,#$18
164b: 9e        div   ya,x
164c: 5d        mov   x,a
164d: f6 63 16  mov   a,$1663+y
1650: c4 16     mov   $16,a
1652: f6 62 16  mov   a,$1662+y
1655: 2f 04     bra   $165b
1657: 4b 16     lsr   $16
1659: 7c        ror   a
165a: 3d        inc   x
165b: c8 06     cmp   x,#$06
165d: d0 f8     bne   $1657
165f: eb 16     mov   y,$16
1661: 6f        ret

; pitch table
1662: dw $10be
1664: dw $11bd
1666: dw $12cb
1668: dw $13e9
166a: dw $1518
166c: dw $1659
166e: dw $17ad
1670: dw $1916
1672: dw $1a94
1674: dw $1c28
1676: dw $1dd5
1678: dw $1f9b
167a: db $00
