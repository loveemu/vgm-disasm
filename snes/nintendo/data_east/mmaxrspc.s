0600: 20        clrp
0601: cd cf     mov   x,#$cf
0603: bd        mov   sp,x              ; set SP to (01)cf
0604: e8 00     mov   a,#$00
0606: 5d        mov   x,a
0607: af        mov   (x)+,a
0608: c8 e0     cmp   x,#$e0
060a: d0 fb     bne   $0607             ; zero 00-e0
060c: bc        inc   a
060d: 3f 81 0f  call  $0f81
0610: a2 58     set5  $58
0612: e8 24     mov   a,#$24
0614: 8d 5d     mov   y,#$5d
0616: 3f 56 08  call  $0856             ; source dir = $2400
0619: e8 f0     mov   a,#$f0
061b: c5 f1 00  mov   $00f1,a           ; reset ports, disable timers
061e: e8 10     mov   a,#$10
0620: c5 fa 00  mov   $00fa,a           ; set timer 0 latch to #$10 (500 Hz, 2ms)
0623: c5 fb 00  mov   $00fb,a           ; set timer 1 latch to #$10 (500 Hz, 2ms)
0626: e8 40     mov   a,#$40
0628: c5 fc 00  mov   $00fc,a
062b: e8 07     mov   a,#$07
062d: c5 f1 00  mov   $00f1,a
0630: 3f 3f 15  call  $153f
0633: e8 10     mov   a,#$10
0635: c4 24     mov   $24,a
0637: c5 02 05  mov   $0502,a
063a: c5 06 05  mov   $0506,a
063d: c5 0a 05  mov   $050a,a
0640: c5 0e 05  mov   $050e,a
0643: c5 12 05  mov   $0512,a
0646: c5 16 05  mov   $0516,a
0649: c5 1a 05  mov   $051a,a
064c: e8 4c     mov   a,#$4c
064e: 3f 85 18  call  $1885
0651: 8f ff 2a  mov   $2a,#$ff
0654: e8 00     mov   a,#$00
0656: c5 f4 00  mov   $00f4,a
0659: bc        inc   a
065a: c5 f5 00  mov   $00f5,a
065d: bc        inc   a
065e: c5 f6 00  mov   $00f6,a
0661: bc        inc   a
0662: c5 f7 00  mov   $00f7,a
0665: 8d 0a     mov   y,#$0a
0667: ad 05     cmp   y,#$05
0669: f0 07     beq   $0672
066b: b0 08     bcs   $0675
066d: 69 5d 5b  cmp   ($5b),($5d)
0670: d0 11     bne   $0683
0672: e3 5b 0e  bbs7  $5b,$0683
0675: f6 6c 13  mov   a,$136c+y
0678: c5 f2 00  mov   $00f2,a
067b: f6 76 13  mov   a,$1376+y
067e: 5d        mov   x,a
067f: e6        mov   a,(x)
0680: c5 f3 00  mov   $00f3,a
0683: fe e2     dbnz  y,$0667
0685: cb 55     mov   $55,y
0687: cb 56     mov   $56,y
0689: ec fd 00  mov   y,$00fd
068c: f0 fb     beq   $0689
068e: 6d        push  y
068f: e8 20     mov   a,#$20
0691: cf        mul   ya
0692: 60        clrc
0693: 84 53     adc   a,$53
0695: c4 53     mov   $53,a
0697: 90 07     bcc   $06a0
0699: 69 5d 5b  cmp   ($5b),($5d)
069c: f0 02     beq   $06a0
069e: ab 5b     inc   $5b
06a0: 3f 18 17  call  $1718
06a3: 3f 7d 15  call  $157d
06a6: 3f 48 16  call  $1648
06a9: 8f 00 3e  mov   $3e,#$00
06ac: 8f 01 4d  mov   $4d,#$01
06af: f8 4d     mov   x,$4d
06b1: f5 c8 04  mov   a,$04c8+x
06b4: f0 29     beq   $06df
06b6: ee        pop   y
06b7: 6d        push  y
06b8: c9 23 05  mov   $0523,x
06bb: f5 1a 19  mov   a,$191a+x
06be: c4 57     mov   $57,a
06c0: f5 2a 19  mov   a,$192a+x
06c3: 2d        push  a
06c4: 7d        mov   a,x
06c5: 9c        dec   a
06c6: 1c        asl   a
06c7: 1c        asl   a
06c8: 5d        mov   x,a
06c9: f5 02 05  mov   a,$0502+x
06cc: cf        mul   ya
06cd: 60        clrc
06ce: 95 00 05  adc   a,$0500+x
06d1: d5 00 05  mov   $0500+x,a
06d4: ce        pop   x
06d5: 90 05     bcc   $06dc
06d7: 3f 55 0c  call  $0c55
06da: 2f 03     bra   $06df
06dc: 3f 0a 07  call  $070a
06df: ab 4d     inc   $4d
06e1: 78 08 4d  cmp   $4d,#$08
06e4: 90 c9     bcc   $06af
06e6: e5 20 05  mov   a,$0520
06e9: c4 3e     mov   $3e,a
06eb: cd 00     mov   x,#$00
06ed: 8f 01 57  mov   $57,#$01
06f0: c9 23 05  mov   $0523,x
06f3: e4 24     mov   a,$24
06f5: ee        pop   y
06f6: cf        mul   ya
06f7: 60        clrc
06f8: 84 22     adc   a,$22
06fa: c4 22     mov   $22,a
06fc: b0 06     bcs   $0704
06fe: 3f 0a 07  call  $070a
0701: 5f 65 06  jmp   $0665

0704: 3f 80 0b  call  $0b80
0707: 5f 65 06  jmp   $0665

070a: 3f 7d 15  call  $157d
070d: e5 17 05  mov   a,$0517
0710: f0 1b     beq   $072d
0712: f4 01     mov   a,$01+x
0714: f0 03     beq   $0719
0716: 3f 92 12  call  $1292
0719: 3d        inc   x
071a: 3d        inc   x
071b: 0b 57     asl   $57
071d: f0 0e     beq   $072d
071f: ec 23 05  mov   y,$0523
0722: f6 c8 04  mov   a,$04c8+y
0725: fd        mov   y,a
0726: f6 00 21  mov   a,$2100+y
0729: 24 57     and   a,$57
072b: d0 e5     bne   $0712
072d: 6f        ret

072e: e5 ff 00  mov   a,$00ff
0731: e5 ff 00  mov   a,$00ff
0734: 60        clrc
0735: 85 2f 05  adc   a,$052f
0738: c5 2f 05  mov   $052f,a
073b: 68 02     cmp   a,#$02
073d: 90 f2     bcc   $0731
073f: e8 00     mov   a,#$00
0741: c5 2f 05  mov   $052f,a
0744: 6f        ret

0745: e4 3e     mov   a,$3e
0747: 24 57     and   a,$57
0749: d0 13     bne   $075e
074b: ad c8     cmp   y,#$c8
074d: f0 0f     beq   $075e
074f: 4d        push  x
0750: 7d        mov   a,x
0751: 28 0f     and   a,#$0f
0753: 5c        lsr   a
0754: 5d        mov   x,a
0755: f5 1a 19  mov   a,$191a+x
0758: 8d 5c     mov   y,#$5c
075a: 3f 56 08  call  $0856             ; set KOF
075d: ce        pop   x
075e: 6f        ret

075f: ad ca     cmp   y,#$ca
0761: 90 05     bcc   $0768
0763: 3f 88 0d  call  $0d88
0766: 8d a4     mov   y,#$a4
0768: ad c8     cmp   y,#$c8
076a: b0 d9     bcs   $0745
076c: e4 3e     mov   a,$3e
076e: 24 57     and   a,$57
0770: d0 ec     bne   $075e
0772: dd        mov   a,y
0773: 28 7f     and   a,#$7f
0775: 60        clrc
0776: 84 5f     adc   a,$5f
0778: 60        clrc
0779: 95 80 03  adc   a,$0380+x
077c: d5 61 04  mov   $0461+x,a
077f: f5 a1 04  mov   a,$04a1+x
0782: d5 60 04  mov   $0460+x,a
0785: f5 01 03  mov   a,$0301+x
0788: 5c        lsr   a
0789: e8 00     mov   a,#$00
078b: 7c        ror   a
078c: d5 e0 02  mov   $02e0+x,a
078f: e8 00     mov   a,#$00
0791: d4 a0     mov   $a0+x,a
0793: d5 00 01  mov   $0100+x,a
0796: d5 40 03  mov   $0340+x,a
0799: d4 c0     mov   $c0+x,a
079b: 09 57 2f  or    ($2f),($57)
079e: 09 57 55  or    ($55),($57)
07a1: f5 a0 02  mov   a,$02a0+x
07a4: d5 70 05  mov   $0570+x,a
07a7: f0 1f     beq   $07c8
07a9: f5 a1 02  mov   a,$02a1+x
07ac: d5 71 05  mov   $0571+x,a
07af: f5 c0 02  mov   a,$02c0+x
07b2: d0 0a     bne   $07be
07b4: f5 61 04  mov   a,$0461+x
07b7: 80        setc
07b8: b5 c1 02  sbc   a,$02c1+x
07bb: d5 61 04  mov   $0461+x,a
07be: f5 c1 02  mov   a,$02c1+x
07c1: 60        clrc
07c2: 95 61 04  adc   a,$0461+x
07c5: 3f f2 0f  call  $0ff2
07c8: 3f 0d 10  call  $100d
07cb: 8d 00     mov   y,#$00
07cd: e4 49     mov   a,$49
07cf: 80        setc
07d0: a8 34     sbc   a,#$34
07d2: b0 09     bcs   $07dd
07d4: e4 49     mov   a,$49
07d6: 80        setc
07d7: a8 13     sbc   a,#$13
07d9: b0 06     bcs   $07e1
07db: dc        dec   y
07dc: 1c        asl   a
07dd: 7a 48     addw  ya,$48
07df: da 48     movw  $48,ya
07e1: 4d        push  x
07e2: e4 49     mov   a,$49
07e4: 1c        asl   a
07e5: 8d 00     mov   y,#$00
07e7: cd 18     mov   x,#$18
07e9: 9e        div   ya,x
07ea: 5d        mov   x,a
07eb: f6 82 13  mov   a,$1382+y
07ee: c4 41     mov   $41,a
07f0: f6 81 13  mov   a,$1381+y
07f3: c4 40     mov   $40,a
07f5: f6 84 13  mov   a,$1384+y
07f8: 2d        push  a
07f9: f6 83 13  mov   a,$1383+y
07fc: ee        pop   y
07fd: 9a 40     subw  ya,$40
07ff: eb 48     mov   y,$48
0801: cf        mul   ya
0802: dd        mov   a,y
0803: 8d 00     mov   y,#$00
0805: 7a 40     addw  ya,$40
0807: cb 41     mov   $41,y
0809: 1c        asl   a
080a: 2b 41     rol   $41
080c: c4 40     mov   $40,a
080e: 2f 04     bra   $0814
0810: 4b 41     lsr   $41
0812: 7c        ror   a
0813: 3d        inc   x
0814: c8 06     cmp   x,#$06
0816: d0 f8     bne   $0810
0818: c4 40     mov   $40,a
081a: ce        pop   x
081b: f5 40 02  mov   a,$0240+x
081e: eb 41     mov   y,$41
0820: cf        mul   ya
0821: da 42     movw  $42,ya
0823: f5 40 02  mov   a,$0240+x
0826: eb 40     mov   y,$40
0828: cf        mul   ya
0829: 6d        push  y
082a: f5 41 02  mov   a,$0241+x
082d: eb 40     mov   y,$40
082f: cf        mul   ya
0830: 7a 42     addw  ya,$42
0832: da 42     movw  $42,ya
0834: f5 41 02  mov   a,$0241+x
0837: eb 41     mov   y,$41
0839: cf        mul   ya
083a: fd        mov   y,a
083b: ae        pop   a
083c: 7a 42     addw  ya,$42
083e: da 42     movw  $42,ya
0840: 7d        mov   a,x
0841: 9f        xcn   a
0842: 5c        lsr   a
0843: 08 02     or    a,#$02
0845: fd        mov   y,a
0846: e4 42     mov   a,$42             ; P(L)
0848: 3f 4e 08  call  $084e
084b: fc        inc   y
084c: e4 43     mov   a,$43             ; P(H)
; write A to DSP reg Y if vbit clear in $3e
084e: 2d        push  a
084f: e4 57     mov   a,$57
0851: 24 3e     and   a,$3e
0853: ae        pop   a
0854: d0 06     bne   $085c
; write A to DSP reg Y
0856: cc f2 00  mov   $00f2,y
0859: c5 f3 00  mov   $00f3,a
085c: 6f        ret

; read $50/1 into YA and increment the vcmd pointer
085d: 8d 00     mov   y,#$00
085f: f7 50     mov   a,($50)+y
0861: 3a 50     incw  $50
0863: 2d        push  a
0864: f7 50     mov   a,($50)+y
0866: 3a 50     incw  $50
0868: fd        mov   y,a
0869: ae        pop   a
086a: 6f        ret

086b: e8 ff     mov   a,#$ff
086d: 8d 5c     mov   y,#$5c
086f: 3f 56 08  call  $0856             ; set KOF
0872: e8 00     mov   a,#$00
0874: c5 d9 04  mov   $04d9,a
0877: c5 da 04  mov   $04da,a
087a: fd        mov   y,a
087b: 3f 53 0f  call  $0f53
087e: e8 01     mov   a,#$01
0880: 3f 81 0f  call  $0f81
0883: e5 f6 00  mov   a,$00f6
0886: c5 d8 04  mov   $04d8,a
0889: e5 f7 00  mov   a,$00f7
088c: c5 db 04  mov   $04db,a
088f: 3f 9b 13  call  $139b
0892: 8c d8 04  dec   $04d8
0895: f0 0a     beq   $08a1
0897: e5 d8 04  mov   a,$04d8
089a: 65 f7 00  cmp   a,$00f7
089d: d0 fb     bne   $089a
089f: 2f ee     bra   $088f
08a1: e8 00     mov   a,#$00
08a3: c5 f6 00  mov   $00f6,a
08a6: c5 f7 00  mov   $00f7,a
08a9: e8 ff     mov   a,#$ff
08ab: 65 f4 00  cmp   a,$00f4
08ae: d0 f9     bne   $08a9
08b0: c5 f4 00  mov   $00f4,a
08b3: 8f ff 2a  mov   $2a,#$ff
08b6: 3f 61 15  call  $1561
08b9: e8 00     mov   a,#$00
08bb: c5 21 05  mov   $0521,a
08be: c5 22 05  mov   $0522,a
08c1: c5 13 05  mov   $0513,a
08c4: c5 0b 05  mov   $050b,a
08c7: c5 90 05  mov   $0590,a
08ca: c5 91 05  mov   $0591,a
08cd: cd 08     mov   x,#$08
08cf: d5 c7 04  mov   $04c7+x,a
08d2: d5 bf 04  mov   $04bf+x,a
08d5: d5 cf 04  mov   $04cf+x,a
08d8: 1d        dec   x
08d9: d0 f4     bne   $08cf
08db: d4 01     mov   $01+x,a
08dd: d4 11     mov   $11+x,a
08df: d5 a1 03  mov   $03a1+x,a
08e2: d5 60 00  mov   $0060+x,a
08e5: fd        mov   y,a
08e6: 7d        mov   a,x
08e7: 5c        lsr   a
08e8: 9f        xcn   a
08e9: c5 f2 00  mov   $00f2,a
08ec: cc f3 00  mov   $00f3,y
08ef: bc        inc   a
08f0: c5 f2 00  mov   $00f2,a
08f3: cc f3 00  mov   $00f3,y
08f6: dd        mov   a,y
08f7: 3d        inc   x
08f8: 3d        inc   x
08f9: c8 10     cmp   x,#$10
08fb: d0 de     bne   $08db
08fd: c5 20 05  mov   $0520,a
0900: c4 3e     mov   $3e,a
0902: e8 ff     mov   a,#$ff
0904: 8d 5c     mov   y,#$5c
0906: 3f 56 08  call  $0856             ; set KOF
0909: e8 4c     mov   a,#$4c
090b: 3f 85 18  call  $1885
090e: 6f        ret

090f: 8d 01     mov   y,#$01
0911: f6 d0 04  mov   a,$04d0+y
0914: f0 06     beq   $091c
0916: cc 23 05  mov   $0523,y
0919: 3f e7 09  call  $09e7
091c: fc        inc   y
091d: ad 08     cmp   y,#$08
091f: 90 f0     bcc   $0911
0921: cd 00     mov   x,#$00
0923: 8d 00     mov   y,#$00
0925: bf        mov   a,(x)+
0926: d6 00 f9  mov   $f900+y,a
0929: fc        inc   y
092a: c8 e0     cmp   x,#$e0
092c: d0 f7     bne   $0925
092e: 8d 00     mov   y,#$00
0930: 8f 00 8c  mov   $8c,#$00
0933: 8f 02 8d  mov   $8d,#$02
0936: 8f 00 8e  mov   $8e,#$00
0939: 8f fa 8f  mov   $8f,#$fa
093c: f7 8c     mov   a,($8c)+y
093e: d7 8e     mov   ($8e)+y,a
0940: ab 8c     inc   $8c
0942: ab 8e     inc   $8e
0944: d0 f6     bne   $093c
0946: ab 8d     inc   $8d
0948: ab 8f     inc   $8f
094a: 78 06 8d  cmp   $8d,#$06
094d: d0 ed     bne   $093c
094f: 6f        ret

0950: cd 00     mov   x,#$00
0952: 8d 00     mov   y,#$00
0954: f6 00 f9  mov   a,$f900+y
0957: af        mov   (x)+,a
0958: fc        inc   y
0959: c8 e0     cmp   x,#$e0
095b: d0 f7     bne   $0954
095d: 8d 00     mov   y,#$00
095f: 8f 00 8c  mov   $8c,#$00
0962: 8f 02 8d  mov   $8d,#$02
0965: 8f 00 8e  mov   $8e,#$00
0968: 8f fa 8f  mov   $8f,#$fa
096b: f7 8e     mov   a,($8e)+y
096d: d7 8c     mov   ($8c)+y,a
096f: ab 8c     inc   $8c
0971: ab 8e     inc   $8e
0973: d0 f6     bne   $096b
0975: ab 8d     inc   $8d
0977: ab 8f     inc   $8f
0979: 78 06 8d  cmp   $8d,#$06
097c: d0 ed     bne   $096b
097e: cd 0e     mov   x,#$0e
0980: f5 21 02  mov   a,$0221+x
0983: 4d        push  x
0984: 3f 8b 0d  call  $0d8b
0987: ce        pop   x
0988: 1d        dec   x
0989: 1d        dec   x
098a: 10 f4     bpl   $0980
098c: e5 95 05  mov   a,$0595
098f: 3f 81 0f  call  $0f81
0992: e5 96 05  mov   a,$0596
0995: 3f 6a 0f  call  $0f6a
0998: 6f        ret

0999: 6d        push  y
099a: c4 8c     mov   $8c,a
099c: 8f 1e 8d  mov   $8d,#$1e          ; #$1e00
099f: 60        clrc
09a0: 84 8c     adc   a,$8c
09a2: c4 8c     mov   $8c,a
09a4: e8 00     mov   a,#$00
09a6: 84 8d     adc   a,$8d
09a8: c4 8d     mov   $8d,a
09aa: 8d 00     mov   y,#$00
09ac: f7 8c     mov   a,($8c)+y
09ae: fc        inc   y
09af: c5 2b 05  mov   $052b,a
09b2: f7 8c     mov   a,($8c)+y
09b4: c5 2c 05  mov   $052c,a
09b7: ee        pop   y
09b8: d0 01     bne   $09bb
09ba: 6f        ret

09bb: ad 00     cmp   y,#$00
09bd: d0 0e     bne   $09cd
09bf: e5 2b 05  mov   a,$052b
09c2: c4 50     mov   $50,a
09c4: e5 2c 05  mov   a,$052c
09c7: c4 51     mov   $51,a
09c9: 8f 01 4f  mov   $4f,#$01
09cc: 6f        ret

09cd: e5 2b 05  mov   a,$052b
09d0: c4 3b     mov   $3b,a
09d2: e5 2c 05  mov   a,$052c
09d5: c4 3c     mov   $3c,a
09d7: 3f b5 0b  call  $0bb5
09da: e9 17 05  mov   x,$0517
09dd: f5 00 21  mov   a,$2100+x
09e0: 05 20 05  or    a,$0520
09e3: c5 20 05  mov   $0520,a
09e6: 6f        ret

09e7: 4d        push  x
09e8: 6d        push  y
09e9: c5 2e 05  mov   $052e,a
09ec: e4 57     mov   a,$57
09ee: 2d        push  a
09ef: e9 2e 05  mov   x,$052e
09f2: f5 00 21  mov   a,$2100+x
09f5: 8d 5c     mov   y,#$5c
09f7: 2d        push  a
09f8: 3f 56 08  call  $0856             ; set KOF
09fb: 3f 2e 07  call  $072e
09fe: ae        pop   a
09ff: 2d        push  a
0a00: 48 ff     eor   a,#$ff
0a02: 24 5a     and   a,$5a
0a04: c5 1c 05  mov   $051c,a
0a07: ae        pop   a
0a08: 2d        push  a
0a09: 25 1b 05  and   a,$051b
0a0c: 05 1c 05  or    a,$051c
0a0f: c4 5a     mov   $5a,a
0a11: ae        pop   a
0a12: 2d        push  a
0a13: 48 ff     eor   a,#$ff
0a15: 25 2d 05  and   a,$052d
0a18: c5 2d 05  mov   $052d,a
0a1b: ae        pop   a
0a1c: 2d        push  a
0a1d: 48 ff     eor   a,#$ff
0a1f: 25 20 05  and   a,$0520
0a22: c5 20 05  mov   $0520,a
0a25: ae        pop   a
0a26: c4 8c     mov   $8c,a
0a28: cd 00     mov   x,#$00
0a2a: 8d 00     mov   y,#$00
0a2c: 8f 01 57  mov   $57,#$01
0a2f: e4 3e     mov   a,$3e
0a31: 2d        push  a
0a32: 8f 00 3e  mov   $3e,#$00
0a35: 4b 8c     lsr   $8c
0a37: 90 11     bcc   $0a4a
0a39: f5 21 02  mov   a,$0221+x
0a3c: 4d        push  x
0a3d: 6d        push  y
0a3e: 3f 8b 0d  call  $0d8b
0a41: ee        pop   y
0a42: ce        pop   x
0a43: e8 00     mov   a,#$00
0a45: d4 11     mov   $11+x,a
0a47: d6 d0 04  mov   $04d0+y,a
0a4a: 0b 57     asl   $57
0a4c: 3d        inc   x
0a4d: 3d        inc   x
0a4e: fc        inc   y
0a4f: e4 8c     mov   a,$8c
0a51: d0 e2     bne   $0a35
0a53: e9 2e 05  mov   x,$052e
0a56: f5 00 21  mov   a,$2100+x
0a59: c4 8c     mov   $8c,a
0a5b: e8 00     mov   a,#$00
0a5d: fd        mov   y,a
0a5e: 4b 8c     lsr   $8c
0a60: 90 05     bcc   $0a67
0a62: d6 c8 04  mov   $04c8+y,a
0a65: 2f 05     bra   $0a6c
0a67: fc        inc   y
0a68: f8 8c     mov   x,$8c
0a6a: d0 f2     bne   $0a5e
0a6c: ec 23 05  mov   y,$0523
0a6f: dd        mov   a,y
0a70: 9c        dec   a
0a71: 1c        asl   a
0a72: 1c        asl   a
0a73: fd        mov   y,a
0a74: e8 00     mov   a,#$00
0a76: d6 02 05  mov   $0502+y,a
0a79: c5 f7 00  mov   $00f7,a
0a7c: ae        pop   a
0a7d: c4 3e     mov   $3e,a
0a7f: ae        pop   a
0a80: c4 57     mov   $57,a
0a82: ee        pop   y
0a83: ce        pop   x
0a84: 6f        ret

0a85: 4d        push  x
0a86: 6d        push  y
0a87: c5 2e 05  mov   $052e,a
0a8a: 5d        mov   x,a
0a8b: f5 00 21  mov   a,$2100+x
0a8e: c4 8c     mov   $8c,a
0a90: cd 00     mov   x,#$00
0a92: 8d 00     mov   y,#$00
0a94: 4b 8c     lsr   $8c
0a96: 90 07     bcc   $0a9f
0a98: e8 00     mov   a,#$00
0a9a: d4 11     mov   $11+x,a
0a9c: d6 d0 04  mov   $04d0+y,a
0a9f: 3d        inc   x
0aa0: 3d        inc   x
0aa1: fc        inc   y
0aa2: e4 8c     mov   a,$8c
0aa4: d0 ee     bne   $0a94
0aa6: e9 2e 05  mov   x,$052e
0aa9: f5 00 21  mov   a,$2100+x
0aac: c4 8c     mov   $8c,a
0aae: e8 00     mov   a,#$00
0ab0: fd        mov   y,a
0ab1: 4b 8c     lsr   $8c
0ab3: 90 05     bcc   $0aba
0ab5: d6 c8 04  mov   $04c8+y,a
0ab8: 2f 05     bra   $0abf
0aba: fc        inc   y
0abb: f8 8c     mov   x,$8c
0abd: d0 f2     bne   $0ab1
0abf: ec 23 05  mov   y,$0523
0ac2: dd        mov   a,y
0ac3: 9c        dec   a
0ac4: 1c        asl   a
0ac5: 1c        asl   a
0ac6: fd        mov   y,a
0ac7: e8 00     mov   a,#$00
0ac9: d6 02 05  mov   $0502+y,a
0acc: c5 f7 00  mov   $00f7,a
0acf: ee        pop   y
0ad0: ce        pop   x
0ad1: 6f        ret

0ad2: 5d        mov   x,a
0ad3: f5 00 21  mov   a,$2100+x
0ad6: 8d 5c     mov   y,#$5c
0ad8: 2d        push  a
0ad9: 3f 56 08  call  $0856             ; set KOF
0adc: 3f 2e 07  call  $072e
0adf: ae        pop   a
0ae0: 6f        ret

0ae1: e9 c8 04  mov   x,$04c8
0ae4: f5 00 21  mov   a,$2100+x
0ae7: c4 8c     mov   $8c,a
0ae9: e8 00     mov   a,#$00
0aeb: c5 c8 04  mov   $04c8,a
0aee: c5 f6 00  mov   $00f6,a
0af1: 5d        mov   x,a
0af2: 4b 8c     lsr   $8c
0af4: 90 02     bcc   $0af8
0af6: d4 01     mov   $01+x,a
0af8: 3d        inc   x
0af9: 3d        inc   x
0afa: c8 10     cmp   x,#$10
0afc: d0 f4     bne   $0af2
0afe: 6f        ret

0aff: e9 17 05  mov   x,$0517
0b02: f5 00 21  mov   a,$2100+x
0b05: c4 8c     mov   $8c,a
0b07: f5 00 20  mov   a,$2000+x
0b0a: c4 8d     mov   $8d,a
0b0c: 28 80     and   a,#$80
0b0e: 9f        xcn   a
0b0f: 1c        asl   a
0b10: 08 0e     or    a,#$0e
0b12: 5d        mov   x,a
0b13: 8f 80 57  mov   $57,#$80
0b16: 0b 8c     asl   $8c
0b18: 90 20     bcc   $0b3a
0b1a: e8 ff     mov   a,#$ff
0b1c: d5 a1 03  mov   $03a1+x,a
0b1f: e8 0a     mov   a,#$0a
0b21: 3f e1 0d  call  $0de1
0b24: d5 21 02  mov   $0221+x,a
0b27: d5 a1 04  mov   $04a1+x,a
0b2a: d5 80 03  mov   $0380+x,a
0b2d: d5 a0 02  mov   $02a0+x,a
0b30: d4 a1     mov   $a1+x,a
0b32: d5 20 03  mov   $0320+x,a
0b35: d4 c1     mov   $c1+x,a
0b37: c5 dc 04  mov   $04dc,a
0b3a: 1d        dec   x
0b3b: 1d        dec   x
0b3c: 4b 57     lsr   $57
0b3e: d0 d6     bne   $0b16
0b40: e4 8d     mov   a,$8d
0b42: 28 80     and   a,#$80
0b44: f0 22     beq   $0b68
0b46: e9 17 05  mov   x,$0517
0b49: f5 00 21  mov   a,$2100+x
0b4c: 48 ff     eor   a,#$ff
0b4e: 24 5a     and   a,$5a
0b50: c4 5a     mov   $5a,a
0b52: f5 00 21  mov   a,$2100+x
0b55: 05 2d 05  or    a,$052d
0b58: c5 2d 05  mov   $052d,a
0b5b: e5 23 05  mov   a,$0523
0b5e: 9c        dec   a
0b5f: 1c        asl   a
0b60: 1c        asl   a
0b61: 5d        mov   x,a
0b62: e8 10     mov   a,#$10
0b64: d5 02 05  mov   $0502+x,a
0b67: 6f        ret

0b68: c4 2b     mov   $2b,a
0b6a: c4 25     mov   $25,a
0b6c: c4 5f     mov   $5f,a
0b6e: c4 52     mov   $52,a
0b70: c4 38     mov   $38,a
0b72: c5 1b 05  mov   $051b,a
0b75: c5 2d 05  mov   $052d,a
0b78: bc        inc   a
0b79: c5 f6 00  mov   $00f6,a
0b7c: 8f 10 24  mov   $24,#$10
0b7f: 6f        ret

0b80: e5 0b 05  mov   a,$050b
0b83: d0 fa     bne   $0b7f
0b85: e5 c8 04  mov   a,$04c8
0b88: f0 f5     beq   $0b7f
0b8a: e4 4f     mov   a,$4f
0b8c: d0 03     bne   $0b91
0b8e: 5f 4e 0c  jmp   $0c4e

0b91: e8 00     mov   a,#$00
0b93: c4 4f     mov   $4f,a
0b95: c5 0f 05  mov   $050f,a
0b98: 3f 5d 08  call  $085d             ; read block addr from $50/1, increment ptr
0b9b: d0 5a     bne   $0bf7             ; load start addresses, if hi-byte is non zero
0b9d: fd        mov   y,a               ; refetch lo-byte
0b9e: d0 04     bne   $0ba4             ; set/dec repeat count
0ba0: 5d        mov   x,a
0ba1: 5f e1 0a  jmp   $0ae1             ; key off, return if also zero
; set/dec repeat count
0ba4: 8b 52     dec   $52
0ba6: 10 02     bpl   $0baa
0ba8: c4 52     mov   $52,a
0baa: 3f 5d 08  call  $085d             ; read next word as well
0bad: f8 52     mov   x,$52
0baf: f0 e0     beq   $0b91
0bb1: da 50     movw  $50,ya            ;   "goto" that address
0bb3: 2f dc     bra   $0b91             ; continue

0bb5: 8d 01     mov   y,#$01
0bb7: f7 3b     mov   a,($3b)+y
0bb9: 2d        push  a
0bba: dc        dec   y
0bbb: f7 3b     mov   a,($3b)+y
0bbd: ee        pop   y
0bbe: da 42     movw  $42,ya
0bc0: e9 17 05  mov   x,$0517
0bc3: f5 00 21  mov   a,$2100+x
0bc6: c4 8c     mov   $8c,a
0bc8: cd 1f     mov   x,#$1f
0bca: 4d        push  x
0bcb: 0b 8c     asl   $8c
0bcd: 90 20     bcc   $0bef
0bcf: 7d        mov   a,x
0bd0: 28 0f     and   a,#$0f
0bd2: fd        mov   y,a
0bd3: f7 42     mov   a,($42)+y
0bd5: d5 00 00  mov   $0000+x,a
0bd8: 1d        dec   x
0bd9: dc        dec   y
0bda: f7 42     mov   a,($42)+y
0bdc: d5 00 00  mov   $0000+x,a
0bdf: e8 00     mov   a,#$00
0be1: d5 50 05  mov   $0550+x,a
0be4: d5 30 05  mov   $0530+x,a
0be7: d5 31 05  mov   $0531+x,a
0bea: e8 01     mov   a,#$01
0bec: d5 60 00  mov   $0060+x,a
0bef: ce        pop   x
0bf0: 1d        dec   x
0bf1: 1d        dec   x
0bf2: c8 0f     cmp   x,#$0f
0bf4: b0 d4     bcs   $0bca
0bf6: 6f        ret

; load start addresses - hi-byte not zero
0bf7: da 42     movw  $42,ya
0bf9: 8d 0f     mov   y,#$0f
0bfb: e9 c8 04  mov   x,$04c8
0bfe: f5 00 21  mov   a,$2100+x
0c01: c4 8c     mov   $8c,a
0c03: 0b 8c     asl   $8c
0c05: 90 10     bcc   $0c17
0c07: f7 42     mov   a,($42)+y
0c09: d6 00 00  mov   $0000+y,a
0c0c: dc        dec   y
0c0d: f7 42     mov   a,($42)+y
0c0f: d6 00 00  mov   $0000+y,a
0c12: dc        dec   y
0c13: 10 ee     bpl   $0c03
0c15: fc        inc   y
0c16: fc        inc   y
0c17: dc        dec   y
0c18: dc        dec   y
0c19: 10 e8     bpl   $0c03
0c1b: e9 c8 04  mov   x,$04c8
0c1e: f5 00 21  mov   a,$2100+x
0c21: c4 8c     mov   $8c,a
0c23: cd 00     mov   x,#$00
0c25: 8f 01 57  mov   $57,#$01
0c28: 4b 8c     lsr   $8c
0c2a: 90 1c     bcc   $0c48
0c2c: f4 01     mov   a,$01+x
0c2e: f0 0a     beq   $0c3a
0c30: f5 21 02  mov   a,$0221+x
0c33: d0 05     bne   $0c3a
0c35: e8 00     mov   a,#$00
0c37: 3f 88 0d  call  $0d88
0c3a: e8 00     mov   a,#$00
0c3c: d5 50 05  mov   $0550+x,a
0c3f: d5 30 05  mov   $0530+x,a
0c42: d5 31 05  mov   $0531+x,a
0c45: bc        inc   a
0c46: d4 60     mov   $60+x,a
0c48: 3d        inc   x
0c49: 3d        inc   x
0c4a: 0b 57     asl   $57
0c4c: d0 da     bne   $0c28
0c4e: cd 00     mov   x,#$00
0c50: d8 2f     mov   $2f,x
0c52: 8f 01 57  mov   $57,#$01
0c55: 3f 7d 15  call  $157d
0c58: d8 54     mov   $54,x
0c5a: f4 01     mov   a,$01+x
0c5c: d0 03     bne   $0c61
0c5e: 5f e1 0c  jmp   $0ce1

0c61: 9b 60     dec   $60+x             ; dec duration counter
0c63: f0 03     beq   $0c68             ; if zero, handle the next vcmd
0c65: 5f db 0c  jmp   $0cdb

0c68: 3f 7e 0d  call  $0d7e             ; read vcmd into A and Y
0c6b: d0 2e     bne   $0c9b
; vcmd 00 - end repeat/return
0c6d: f5 50 05  mov   a,$0550+x
0c70: d0 11     bne   $0c83             ; repeat the section if required
0c72: ec 23 05  mov   y,$0523
0c75: d0 03     bne   $0c7a
0c77: 5f 91 0b  jmp   $0b91             ; read the next section

0c7a: f6 d0 04  mov   a,$04d0+y
0c7d: 3f e7 09  call  $09e7
0c80: 5f e1 0c  jmp   $0ce1
; repeat / return from subroutine
0c83: 3f 04 0f  call  $0f04             ; jump to loop start addr
0c86: f5 50 05  mov   a,$0550+x
0c89: 9c        dec   a
0c8a: d5 50 05  mov   $0550+x,a         ; dec repeat count
0c8d: d0 d9     bne   $0c68             ; if the loop has been done
0c8f: f5 60 02  mov   a,$0260+x
0c92: d4 00     mov   $00+x,a
0c94: f5 61 02  mov   a,$0261+x
0c97: d4 01     mov   $01+x,a           ; back to return addr instead
0c99: 2f cd     bra   $0c68             ; then continue
; vcmd branches
0c9b: 30 20     bmi   $0cbd             ; vcmds 01-7f - note info:
0c9d: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
0ca0: 3f 7e 0d  call  $0d7e             ;   read next byte
0ca3: 30 18     bmi   $0cbd             ;   if note note then
0ca5: 2d        push  a
0ca6: 9f        xcn   a
0ca7: 28 07     and   a,#$07
0ca9: fd        mov   y,a
0caa: f6 00 23  mov   a,$2300+y
0cad: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
0cb0: ae        pop   a
0cb1: 28 0f     and   a,#$0f
0cb3: fd        mov   y,a
0cb4: f6 08 23  mov   a,$2308+y
0cb7: d5 20 02  mov   $0220+x,a         ;   set per-note vol from low nybble
0cba: 3f 7e 0d  call  $0d7e             ;   read vcmd into A and Y
; vcmd branches 80-ff
0cbd: 68 e0     cmp   a,#$e0
0cbf: 90 05     bcc   $0cc6
0cc1: 3f 6c 0d  call  $0d6c             ; vcmds e0-ff
0cc4: 2f a2     bra   $0c68
; vcmds 80-df - note
0cc6: 3f 5f 07  call  $075f
0cc9: f5 00 02  mov   a,$0200+x
0ccc: d4 60     mov   $60+x,a
0cce: fd        mov   y,a
0ccf: f5 01 02  mov   a,$0201+x
0cd2: cf        mul   ya
0cd3: dd        mov   a,y
0cd4: d0 01     bne   $0cd7
0cd6: bc        inc   a
0cd7: d4 61     mov   $61+x,a
0cd9: 2f 03     bra   $0cde
0cdb: 3f 54 11  call  $1154
0cde: 3f cf 0f  call  $0fcf
0ce1: 3d        inc   x
0ce2: 3d        inc   x
0ce3: 0b 57     asl   $57
0ce5: f0 13     beq   $0cfa
0ce7: 4d        push  x
0ce8: e9 23 05  mov   x,$0523
0ceb: f5 c8 04  mov   a,$04c8+x
0cee: fd        mov   y,a
0cef: f6 00 21  mov   a,$2100+y
0cf2: ce        pop   x
0cf3: 24 57     and   a,$57
0cf5: f0 03     beq   $0cfa
0cf7: 5f 55 0c  jmp   $0c55

0cfa: e9 23 05  mov   x,$0523
0cfd: f0 0b     beq   $0d0a
0cff: f5 1a 19  mov   a,$191a+x
0d02: c4 57     mov   $57,a
0d04: f5 2a 19  mov   a,$192a+x
0d07: 5d        mov   x,a
0d08: 2f 44     bra   $0d4e
0d0a: e4 25     mov   a,$25
0d0c: f0 0b     beq   $0d19
0d0e: ba 27     movw  ya,$27
0d10: 7a 23     addw  ya,$23
0d12: 6e 25 02  dbnz  $25,$0d17
0d15: ba 25     movw  ya,$25
0d17: da 23     movw  $23,ya
0d19: e5 13 05  mov   a,$0513
0d1c: d0 19     bne   $0d37
0d1e: e4 38     mov   a,$38
0d20: f0 15     beq   $0d37
0d22: ba 34     movw  ya,$34
0d24: 7a 30     addw  ya,$30
0d26: da 30     movw  $30,ya
0d28: ba 36     movw  ya,$36
0d2a: 7a 32     addw  ya,$32
0d2c: 6e 38 06  dbnz  $38,$0d35
0d2f: ba 38     movw  ya,$38
0d31: da 30     movw  $30,ya
0d33: eb 3a     mov   y,$3a
0d35: da 32     movw  $32,ya
0d37: e4 2b     mov   a,$2b
0d39: f0 0e     beq   $0d49
0d3b: ba 2d     movw  ya,$2d
0d3d: 7a 29     addw  ya,$29
0d3f: 6e 2b 02  dbnz  $2b,$0d44
0d42: ba 2b     movw  ya,$2b
0d44: da 29     movw  $29,ya
0d46: 8f ff 2f  mov   $2f,#$ff
0d49: cd 00     mov   x,#$00
0d4b: 8f 01 57  mov   $57,#$01
0d4e: f4 01     mov   a,$01+x
0d50: f0 03     beq   $0d55
0d52: 3f 94 10  call  $1094
0d55: 3d        inc   x
0d56: 3d        inc   x
0d57: 0b 57     asl   $57
0d59: f0 10     beq   $0d6b
0d5b: 4d        push  x
0d5c: e9 23 05  mov   x,$0523
0d5f: f5 c8 04  mov   a,$04c8+x
0d62: fd        mov   y,a
0d63: f6 00 21  mov   a,$2100+y
0d66: ce        pop   x
0d67: 24 57     and   a,$57
0d69: d0 e3     bne   $0d4e
0d6b: 6f        ret

; dispatch vcmd in A (e0-ff)
0d6c: 1c        asl   a                 ; e0-ff => c0-fe (8 bit)
0d6d: fd        mov   y,a
0d6e: f6 75 0f  mov   a,$0f75+y
0d71: 2d        push  a
0d72: f6 74 0f  mov   a,$0f74+y
0d75: 2d        push  a                 ; push jump address from table
0d76: dd        mov   a,y
0d77: 5c        lsr   a
0d78: fd        mov   y,a
0d79: f6 14 10  mov   a,$1014+y         ; vcmd length
0d7c: f0 08     beq   $0d86             ; if non zero
; read new argument to A and Y
0d7e: e7 00     mov   a,($00+x)
; increment voice pointer
0d80: bb 00     inc   $00+x
0d82: d0 02     bne   $0d86
0d84: bb 01     inc   $01+x             ; inc reading ptr
0d86: fd        mov   y,a  
0d87: 6f        ret                     ; jump to vcmd

; vcmd e0 - set instrument
0d88: d5 21 02  mov   $0221+x,a
0d8b: fd        mov   y,a
0d8c: 10 06     bpl   $0d94             ; if percussion note:
0d8e: 80        setc
0d8f: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
0d91: 60        clrc
0d92: 84 3f     adc   a,$3f             ; add perc patch base
0d94: 8d 06     mov   y,#$06
; set sample A in bank at $40/1 width Y
0d96: cf        mul   ya
0d97: da 40     movw  $40,ya
0d99: 60        clrc
0d9a: 98 00 40  adc   $40,#$00
0d9d: 98 22 41  adc   $41,#$22          ; instrument table $2200
0da0: e4 3e     mov   a,$3e
0da2: 24 57     and   a,$57
0da4: d0 3a     bne   $0de0
0da6: 4d        push  x
0da7: 7d        mov   a,x
0da8: 9f        xcn   a
0da9: 5c        lsr   a
0daa: 08 04     or    a,#$04            ; voice X SRCN
0dac: 5d        mov   x,a
0dad: 8d 00     mov   y,#$00
0daf: f7 40     mov   a,($40)+y
0db1: 10 0e     bpl   $0dc1
0db3: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0db5: 38 20 58  and   $58,#$20          ;  keep echo bit from FLG
0db8: 0e 58 00  tset1 $0058             ;  OR in noise freq
0dbb: 09 57 59  or    ($59),($57)       ;  set vbit in noise enable
0dbe: dd        mov   a,y               ;  set SRCN to 0
0dbf: 2f 07     bra   $0dc8             ; else
0dc1: e4 57     mov   a,$57
0dc3: 4e 59 00  tclr1 $0059             ;  clear noise vbit
0dc6: f7 40     mov   a,($40)+y         ;  set SRCN from table
0dc8: c9 f2 00  mov   $00f2,x
0dcb: c5 f3 00  mov   $00f3,a
0dce: 3d        inc   x
0dcf: fc        inc   y
0dd0: ad 04     cmp   y,#$04
0dd2: d0 f2     bne   $0dc6             ; set SRCN, ADSR1/2, GAIN from table
0dd4: ce        pop   x
0dd5: f7 40     mov   a,($40)+y
0dd7: d5 41 02  mov   $0241+x,a         ; set pitch multiplier
0dda: fc        inc   y
0ddb: f7 40     mov   a,($40)+y
0ddd: d5 40 02  mov   $0240+x,a
0de0: 6f        ret

; vcmd e1 - pan
0de1: d5 e0 04  mov   $04e0+x,a
0de4: ec 07 05  mov   y,$0507
0de7: f0 02     beq   $0deb
0de9: e8 0a     mov   a,#$0a
0deb: d5 41 04  mov   $0441+x,a
0dee: 28 1f     and   a,#$1f
0df0: d5 01 04  mov   $0401+x,a         ; voice pan value
0df3: e8 00     mov   a,#$00
0df5: d5 00 04  mov   $0400+x,a
0df8: 6f        ret

; vcmd e2 - pan fade
0df9: ec 07 05  mov   y,$0507
0dfc: f0 04     beq   $0e02
0dfe: 3f 7e 0d  call  $0d7e
0e01: 6f        ret
;
0e02: d5 31 05  mov   $0531+x,a
0e05: 2d        push  a
0e06: 3f 7e 0d  call  $0d7e
0e09: d5 40 04  mov   $0440+x,a
0e0c: 80        setc
0e0d: b5 01 04  sbc   a,$0401+x         ; current pan value
0e10: ce        pop   x
0e11: 3f 18 10  call  $1018             ; delta = pan value / steps
0e14: d5 20 04  mov   $0420+x,a
0e17: dd        mov   a,y
0e18: d5 21 04  mov   $0421+x,a
0e1b: 6f        ret

; vcmd e3 - vibrato on
0e1c: d5 00 03  mov   $0300+x,a
0e1f: 3f 7e 0d  call  $0d7e
0e22: d5 e1 02  mov   $02e1+x,a
0e25: 3f 7e 0d  call  $0d7e
; vcmd e4 - vibrato off
0e28: d4 a1     mov   $a1+x,a
0e2a: d5 21 03  mov   $0321+x,a
0e2d: e8 00     mov   a,#$00
0e2f: d5 01 03  mov   $0301+x,a
0e32: 6f        ret

; vcmd f0 - vibrato fade
0e33: d5 01 03  mov   $0301+x,a
0e36: 2d        push  a
0e37: 8d 00     mov   y,#$00
0e39: f4 a1     mov   a,$a1+x
0e3b: ce        pop   x
0e3c: 9e        div   ya,x
0e3d: f8 54     mov   x,$54
0e3f: d5 20 03  mov   $0320+x,a
0e42: 6f        ret

; vcmd e5 - master volume
0e43: e5 23 05  mov   a,$0523
0e46: d0 04     bne   $0e4c
0e48: e8 00     mov   a,#$00
0e4a: da 29     movw  $29,ya
0e4c: 6f        ret

; vcmd e6 - master volume fade
0e4d: c4 2b     mov   $2b,a
0e4f: 3f 7e 0d  call  $0d7e
0e52: c4 2c     mov   $2c,a
0e54: 80        setc
0e55: a4 2a     sbc   a,$2a
0e57: f8 2b     mov   x,$2b
0e59: 3f 18 10  call  $1018
0e5c: da 2d     movw  $2d,ya
0e5e: 6f        ret

; vcmd e7 - tempo
0e5f: e5 23 05  mov   a,$0523
0e62: f0 10     beq   $0e74
0e64: 9c        dec   a
0e65: 1c        asl   a
0e66: 1c        asl   a
0e67: 4d        push  x
0e68: 5d        mov   x,a
0e69: e8 00     mov   a,#$00
0e6b: d5 01 05  mov   $0501+x,a
0e6e: dd        mov   a,y
0e6f: d5 02 05  mov   $0502+x,a
0e72: ce        pop   x
0e73: 6f        ret
;
0e74: e5 90 05  mov   a,$0590
0e77: d0 04     bne   $0e7d
0e79: e8 00     mov   a,#$00
0e7b: da 23     movw  $23,ya
0e7d: 6f        ret

; vcmd e8 - tempo fade
0e7e: c4 25     mov   $25,a
0e80: 3f 7e 0d  call  $0d7e
0e83: c4 26     mov   $26,a
0e85: 80        setc
0e86: a4 24     sbc   a,$24
0e88: f8 25     mov   x,$25
0e8a: 3f 18 10  call  $1018
0e8d: da 27     movw  $27,ya
0e8f: 6f        ret

; vcmd e9 - global transpose
0e90: c4 5f     mov   $5f,a
0e92: 6f        ret

; vcmd ea - per-voice transpose
0e93: d5 80 03  mov   $0380+x,a
0e96: 6f        ret

; vcmd eb - tremolo on
0e97: d5 60 03  mov   $0360+x,a
0e9a: 3f 7e 0d  call  $0d7e
0e9d: d5 41 03  mov   $0341+x,a
0ea0: 3f 7e 0d  call  $0d7e
; vcmd ec - tremolo off
0ea3: d4 c1     mov   $c1+x,a
0ea5: 6f        ret

; vcmd f1 - pitch envelope (release)
0ea6: e8 01     mov   a,#$01
0ea8: 2f 02     bra   $0eac
; vcmd f2 - pitch envelope (attack)
0eaa: e8 00     mov   a,#$00
0eac: d5 c0 02  mov   $02c0+x,a
0eaf: dd        mov   a,y
0eb0: d5 a1 02  mov   $02a1+x,a
0eb3: 3f 7e 0d  call  $0d7e
0eb6: d5 a0 02  mov   $02a0+x,a
0eb9: 3f 7e 0d  call  $0d7e
0ebc: d5 c1 02  mov   $02c1+x,a
0ebf: 6f        ret

; vcmd f3 - pitch envelope off
0ec0: d5 a0 02  mov   $02a0+x,a
0ec3: 6f        ret

; vcmd ed - volume
0ec4: d5 a1 03  mov   $03a1+x,a
0ec7: e8 00     mov   a,#$00
0ec9: d5 a0 03  mov   $03a0+x,a
0ecc: 6f        ret

; vcmd ee - volume fade
0ecd: d5 30 05  mov   $0530+x,a
0ed0: 2d        push  a
0ed1: 3f 7e 0d  call  $0d7e
0ed4: d5 e0 03  mov   $03e0+x,a
0ed7: 80        setc
0ed8: b5 a1 03  sbc   a,$03a1+x
0edb: ce        pop   x
0edc: 3f 18 10  call  $1018
0edf: d5 c0 03  mov   $03c0+x,a
0ee2: dd        mov   a,y
0ee3: d5 c1 03  mov   $03c1+x,a
0ee6: 6f        ret

; vcmd f4 - tuning
0ee7: d5 a1 04  mov   $04a1+x,a
0eea: 6f        ret

; vcmd ef - call subroutine
0eeb: d5 80 02  mov   $0280+x,a
0eee: 3f 7e 0d  call  $0d7e
0ef1: d5 81 02  mov   $0281+x,a         ; $0280/1+X - destination (arg1/2)
0ef4: 3f 7e 0d  call  $0d7e
0ef7: d5 50 05  mov   $0550+x,a         ; repeat count from arg3
0efa: f4 00     mov   a,$00+x
0efc: d5 60 02  mov   $0260+x,a
0eff: f4 01     mov   a,$01+x
0f01: d5 61 02  mov   $0261+x,a         ; $0260/1+X - return addr
; jump to $0280/1+X (loop destination)
0f04: f5 80 02  mov   a,$0280+x
0f07: d4 00     mov   $00+x,a
0f09: f5 81 02  mov   a,$0281+x
0f0c: d4 01     mov   $01+x,a
0f0e: 6f        ret

; vcmd f5 - echo vbits/volume
0f0f: c5 1b 05  mov   $051b,a
0f12: e5 13 05  mov   a,$0513
0f15: d0 1a     bne   $0f31
0f17: e5 2d 05  mov   a,$052d
0f1a: 48 ff     eor   a,#$ff
0f1c: 25 1b 05  and   a,$051b
0f1f: c4 5a     mov   $5a,a
0f21: 3f 7e 0d  call  $0d7e
0f24: e8 00     mov   a,#$00
0f26: da 30     movw  $30,ya
0f28: 3f 7e 0d  call  $0d7e
0f2b: e8 00     mov   a,#$00
0f2d: da 32     movw  $32,ya
0f2f: b2 58     clr5  $58
0f31: 6f        ret

; vcmd f8 - echo volume fade
0f32: c4 38     mov   $38,a
0f34: 3f 7e 0d  call  $0d7e
0f37: c4 39     mov   $39,a
0f39: 80        setc
0f3a: a4 31     sbc   a,$31
0f3c: f8 38     mov   x,$38
0f3e: 3f 18 10  call  $1018
0f41: da 34     movw  $34,ya
0f43: 3f 7e 0d  call  $0d7e
0f46: c4 3a     mov   $3a,a
0f48: 80        setc
0f49: a4 33     sbc   a,$33
0f4b: f8 38     mov   x,$38
0f4d: 3f 18 10  call  $1018
0f50: da 36     movw  $36,ya
0f52: 6f        ret

; vcmd f6 - disable echo
0f53: e5 13 05  mov   a,$0513
0f56: d0 04     bne   $0f5c
0f58: da 30     movw  $30,ya
0f5a: da 32     movw  $32,ya
0f5c: a2 58     set5  $58
0f5e: 6f        ret

; vcmd f7 - set echo params
0f5f: 3f 81 0f  call  $0f81
0f62: 3f 7e 0d  call  $0d7e
0f65: c4 5e     mov   $5e,a
0f67: 3f 7e 0d  call  $0d7e
0f6a: 8d 08     mov   y,#$08
0f6c: cf        mul   ya
0f6d: 5d        mov   x,a
0f6e: 8d 0f     mov   y,#$0f
0f70: f5 4d 13  mov   a,$134d+x
0f73: 3f 56 08  call  $0856             ; set FIR C0-C7
0f76: 3d        inc   x
0f77: dd        mov   a,y
0f78: 60        clrc
0f79: 88 10     adc   a,#$10
0f7b: fd        mov   y,a
0f7c: 10 f2     bpl   $0f70
0f7e: f8 54     mov   x,$54
0f80: 6f        ret

0f81: c4 5d     mov   $5d,a
0f83: 8d 7d     mov   y,#$7d
0f85: cc f2 00  mov   $00f2,y
0f88: e5 f3 00  mov   a,$00f3
0f8b: 64 5d     cmp   a,$5d
0f8d: f0 2b     beq   $0fba
0f8f: 28 0f     and   a,#$0f
0f91: 48 ff     eor   a,#$ff
0f93: f3 5b 03  bbc7  $5b,$0f99
0f96: 60        clrc
0f97: 84 5b     adc   a,$5b
0f99: c4 5b     mov   $5b,a
0f9b: 8d 04     mov   y,#$04
0f9d: f6 6c 13  mov   a,$136c+y
0fa0: c5 f2 00  mov   $00f2,a
0fa3: e8 00     mov   a,#$00
0fa5: c5 f3 00  mov   $00f3,a
0fa8: fe f3     dbnz  y,$0f9d
0faa: e4 58     mov   a,$58
0fac: 08 20     or    a,#$20
0fae: 8d 6c     mov   y,#$6c
0fb0: 3f 56 08  call  $0856             ; disable echo
0fb3: e4 5d     mov   a,$5d
0fb5: 8d 7d     mov   y,#$7d
0fb7: 3f 56 08  call  $0856             ; set EDL
0fba: 1c        asl   a
0fbb: 1c        asl   a
0fbc: 1c        asl   a
0fbd: 48 ff     eor   a,#$ff
0fbf: 80        setc
0fc0: 88 ff     adc   a,#$ff
0fc2: 8d 6d     mov   y,#$6d
0fc4: 5f 56 08  jmp   $0856             ; set ESA

; vcmd fa - set perc patch base
0fc7: ec 23 05  mov   y,$0523
0fca: d0 02     bne   $0fce
0fcc: c4 3f     mov   $3f,a
0fce: 6f        ret

0fcf: f5 70 05  mov   a,$0570+x
0fd2: d0 38     bne   $100c
0fd4: e7 00     mov   a,($00+x)
0fd6: 68 f9     cmp   a,#$f9
0fd8: d0 32     bne   $100c
0fda: 3f 80 0d  call  $0d80
0fdd: 3f 7e 0d  call  $0d7e
; vcmd f9 - pitch slide
0fe0: d5 71 05  mov   $0571+x,a
0fe3: 3f 7e 0d  call  $0d7e
0fe6: d5 70 05  mov   $0570+x,a
0fe9: 3f 7e 0d  call  $0d7e
0fec: 60        clrc
0fed: 84 5f     adc   a,$5f             ; add global transpose
0fef: 95 80 03  adc   a,$0380+x         ; per-voice transpose
0ff2: 28 7f     and   a,#$7f
0ff4: d5 a0 04  mov   $04a0+x,a
0ff7: 80        setc                    ; final portamento value
0ff8: b5 61 04  sbc   a,$0461+x
0ffb: 2d        push  a                 ; note number
0ffc: f5 70 05  mov   a,$0570+x         ; portamento steps
0fff: fd        mov   y,a
1000: 5d        mov   x,a
1001: ae        pop   a
1002: 3f 18 10  call  $1018
1005: d5 80 04  mov   $0480+x,a
1008: dd        mov   a,y
1009: d5 81 04  mov   $0481+x,a         ; portamento delta
100c: 6f        ret

100d: f5 61 04  mov   a,$0461+x
1010: c4 49     mov   $49,a
1012: f5 60 04  mov   a,$0460+x
1015: c4 48     mov   $48,a
1017: 6f        ret

; signed 16 bit division
1018: ed        notc
1019: 6b 4a     ror   $4a
101b: 10 03     bpl   $1020
101d: 48 ff     eor   a,#$ff
101f: bc        inc   a
1020: 8d 00     mov   y,#$00
1022: 9e        div   ya,x
1023: 2d        push  a
1024: e8 00     mov   a,#$00
1026: 9e        div   ya,x
1027: ee        pop   y
1028: f8 54     mov   x,$54
102a: f3 4a 06  bbc7  $4a,$1033
102d: da 40     movw  $40,ya
102f: ba 46     movw  ya,$46
1031: 9a 40     subw  ya,$40
1033: 6f        ret

; vcmd dispatch table ($0f74)
1034: dw $0d88  ; e0 - set instrument
1036: dw $0de1  ; e1 - pan
1038: dw $0df9  ; e2 - pan fade
103a: dw $0e1c  ; e3 - vibrato on
103c: dw $0e28  ; e4 - vibrato off
103e: dw $0e43  ; e5 - master volume
1040: dw $0e4d  ; e6 - master volume fade
1042: dw $0e5f  ; e7 - tempo
1044: dw $0e7e  ; e8 - tempo fade
1046: dw $0e90  ; e9 - global transpose
1048: dw $0e93  ; ea - per-voice transpose
104a: dw $0e97  ; eb - tremolo on
104c: dw $0ea3  ; ec - tremolo off
104e: dw $0ec4  ; ed - volume
1050: dw $0ecd  ; ee - volume fade
1052: dw $0eeb  ; ef - call subroutine
1054: dw $0e33  ; f0 - vibrato fade
1056: dw $0ea6  ; f1 - pitch envelope (release)
1058: dw $0eaa  ; f2 - pitch envelope (attack)
105a: dw $0ec0  ; f3 - pitch envelope off
105c: dw $0ee7  ; f4 - tuning
105e: dw $0f0f  ; f5 - echo vbits/volume
1060: dw $0f53  ; f6 - disable echo
1062: dw $0f5f  ; f7 - set echo params
1064: dw $0f32  ; f8 - echo volume fade
1066: dw $0fe0  ; f9 - pitch slide
1068: dw $0fc7  ; fa - set perc patch base
106a: dw $0000  ; fb
106c: dw $0000  ; fc
106e: dw $0000  ; fd
1070: dw $0000  ; fe
1072: dw $1837  ; ff - sub-vcmd

; vcmd lengths ($1014)
1074: $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
107c: $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
1084: $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
108c: $03,$03,$01,$02,$00,$00,$00,$03 ; f8-fa

1094: f5 30 05  mov   $0530+x,a
1097: f0 0b     beq   $10a4
1099: 9c        dec   a
109a: d5 30 05  mov   $0530+x,a
109d: e8 a0     mov   a,#$a0
109f: 8d 03     mov   y,#$03
10a1: 3f 30 11  call  $1130
10a4: fb c1     mov   y,$c1+x
10a6: f0 23     beq   $10cb
10a8: f5 60 03  mov   a,$0360+x
10ab: de c0 1b  cbne  $c0+x,$10c9
10ae: 09 57 2f  or    ($2f),($57)
10b1: f5 40 03  mov   a,$0340+x
10b4: 10 07     bpl   $10bd
10b6: fc        inc   y
10b7: d0 04     bne   $10bd
10b9: e8 80     mov   a,#$80
10bb: 2f 04     bra   $10c1
10bd: 60        clrc
10be: 95 41 03  adc   a,$0341+x
10c1: d5 40 03  mov   $0340+x,a
10c4: 3f 1b 13  call  $131b
10c7: 2f 07     bra   $10d0
10c9: bb c0     inc   $c0+x
10cb: e8 ff     mov   a,#$ff
10cd: 3f 26 13  call  $1326
10d0: f5 31 05  mov   a,$0531+x
10d3: f0 0e     beq   $10e3
10d5: f5 31 05  mov   a,$0531+x
10d8: 9c        dec   a
10d9: d5 31 05  mov   $0531+x,a
10dc: e8 00     mov   a,#$00
10de: 8d 04     mov   y,#$04
10e0: 3f 30 11  call  $1130
10e3: e4 57     mov   a,$57
10e5: 24 2f     and   a,$2f
10e7: f0 46     beq   $112f
10e9: f5 01 04  mov   a,$0401+x
10ec: fd        mov   y,a
10ed: f5 00 04  mov   a,$0400+x
10f0: da 48     movw  $48,ya
10f2: 7d        mov   a,x
10f3: 9f        xcn   a
10f4: 5c        lsr   a
10f5: c4 4a     mov   $4a,a
10f7: eb 49     mov   y,$49
10f9: f6 39 13  mov   a,$1339+y
10fc: 80        setc
10fd: b6 38 13  sbc   a,$1338+y
1100: eb 48     mov   y,$48
1102: cf        mul   ya
1103: dd        mov   a,y
1104: eb 49     mov   y,$49
1106: 60        clrc
1107: 96 38 13  adc   a,$1338+y
110a: fd        mov   y,a
110b: f5 e1 03  mov   a,$03e1+x
110e: cf        mul   ya
110f: f5 41 04  mov   a,$0441+x
1112: 1c        asl   a
1113: 13 4a 01  bbc0  $4a,$1117
1116: 1c        asl   a
1117: dd        mov   a,y
1118: 90 03     bcc   $111d
111a: 48 ff     eor   a,#$ff
111c: bc        inc   a
111d: eb 4a     mov   y,$4a
111f: 3f 4e 08  call  $084e
1122: 8d 14     mov   y,#$14
1124: e8 00     mov   a,#$00
1126: 9a 48     subw  ya,$48
1128: da 48     movw  $48,ya
112a: ab 4a     inc   $4a
112c: 33 4a c8  bbc1  $4a,$10f7
112f: 6f        ret

1130: 09 57 2f  or    ($2f),($57)
1133: da 40     movw  $40,ya
1135: da 42     movw  $42,ya
1137: 4d        push  x
1138: ee        pop   y
1139: 60        clrc
113a: d0 0a     bne   $1146
113c: 98 3f 42  adc   $42,#$3f
113f: e8 00     mov   a,#$00
1141: d7 40     mov   ($40)+y,a
1143: fc        inc   y
1144: 2f 09     bra   $114f
1146: 98 20 42  adc   $42,#$20
1149: 3f 4d 11  call  $114d
114c: fc        inc   y
114d: f7 40     mov   a,($40)+y
114f: 97 42     adc   a,($42)+y
1151: d7 40     mov   ($40)+y,a
1153: 6f        ret

1154: f4 61     mov   a,$61+x
1156: d0 03     bne   $115b
1158: 5f fd 11  jmp   $11fd

115b: 9b 61     dec   $61+x
115d: f0 09     beq   $1168
115f: e8 02     mov   a,#$02
1161: 74 60     cmp   a,$60+x
1163: f0 03     beq   $1168
1165: 5f fd 11  jmp   $11fd

1168: f5 50 05  mov   a,$0550+x
116b: c4 43     mov   $43,a
116d: 7d        mov   a,x
116e: 68 10     cmp   a,#$10
1170: 90 0b     bcc   $117d
1172: 28 0f     and   a,#$0f
1174: fd        mov   y,a
1175: f6 e1 04  mov   a,$04e1+y
1178: f0 03     beq   $117d
117a: 5f fd 11  jmp   $11fd

117d: e5 0f 05  mov   a,$050f
1180: f0 0f     beq   $1191
1182: c8 10     cmp   x,#$10
1184: b0 0b     bcs   $1191
1186: 3f fb 14  call  $14fb
1189: ad 00     cmp   y,#$00
118b: f0 62     beq   $11ef
118d: ba 8a     movw  ya,$8a
118f: 2f 04     bra   $1195
1191: f4 00     mov   a,$00+x
1193: fb 01     mov   y,$01+x
1195: da 40     movw  $40,ya
1197: 8d 00     mov   y,#$00
1199: f7 40     mov   a,($40)+y
119b: f0 1e     beq   $11bb
119d: 30 07     bmi   $11a6
119f: fc        inc   y
11a0: 30 4d     bmi   $11ef
11a2: f7 40     mov   a,($40)+y
11a4: 10 f9     bpl   $119f
11a6: 68 c8     cmp   a,#$c8
11a8: f0 53     beq   $11fd
11aa: 68 ef     cmp   a,#$ef
11ac: f0 36     beq   $11e4
11ae: 68 e0     cmp   a,#$e0
11b0: 90 3d     bcc   $11ef
11b2: 6d        push  y
11b3: fd        mov   y,a
11b4: ae        pop   a
11b5: 96 94 0f  adc   a,$0f94+y
11b8: fd        mov   y,a
11b9: 2f de     bra   $1199
11bb: e4 43     mov   a,$43
11bd: d0 0d     bne   $11cc
11bf: c8 10     cmp   x,#$10
11c1: b0 2c     bcs   $11ef
11c3: 3f fb 14  call  $14fb
11c6: 68 c8     cmp   a,#$c8
11c8: f0 33     beq   $11fd
11ca: 2f 23     bra   $11ef
11cc: 8b 43     dec   $43
11ce: d0 0a     bne   $11da
11d0: f5 61 02  mov   a,$0261+x
11d3: 2d        push  a
11d4: f5 60 02  mov   a,$0260+x
11d7: ee        pop   y
11d8: 2f bb     bra   $1195
11da: f5 81 02  mov   a,$0281+x
11dd: 2d        push  a
11de: f5 80 02  mov   a,$0280+x
11e1: ee        pop   y
11e2: 2f b1     bra   $1195
11e4: fc        inc   y
11e5: f7 40     mov   a,($40)+y
11e7: 2d        push  a
11e8: fc        inc   y
11e9: f7 40     mov   a,($40)+y
11eb: fd        mov   y,a
11ec: ae        pop   a
11ed: 2f a6     bra   $1195
11ef: e4 57     mov   a,$57
11f1: 25 dd 04  and   a,$04dd
11f4: d0 07     bne   $11fd
11f6: e4 57     mov   a,$57
11f8: 8d 5c     mov   y,#$5c
11fa: 3f 4e 08  call  $084e             ; set KOF if required
11fd: f2 4b     clr7  $4b
11ff: f5 70 05  mov   a,$0570+x
1202: f0 37     beq   $123b
1204: f5 71 05  mov   a,$0571+x
1207: f0 09     beq   $1212
1209: f5 71 05  mov   a,$0571+x
120c: 9c        dec   a
120d: d5 71 05  mov   $0571+x,a
1210: 2f 29     bra   $123b
1212: e2 4b     set7  $4b
1214: f5 70 05  mov   a,$0570+x
1217: 9c        dec   a
1218: d5 70 05  mov   $0570+x,a
121b: d0 0b     bne   $1228
121d: f5 a1 04  mov   a,$04a1+x
1220: d5 60 04  mov   $0460+x,a
1223: f5 a0 04  mov   a,$04a0+x
1226: 2f 10     bra   $1238
1228: 60        clrc
1229: f5 60 04  mov   a,$0460+x
122c: 95 80 04  adc   a,$0480+x
122f: d5 60 04  mov   $0460+x,a
1232: f5 61 04  mov   a,$0461+x
1235: 95 81 04  adc   a,$0481+x
1238: d5 61 04  mov   $0461+x,a
123b: 3f 0d 10  call  $100d
123e: f4 a1     mov   a,$a1+x
1240: f0 4c     beq   $128e
1242: f5 00 03  mov   a,$0300+x
1245: de a0 44  cbne  $a0+x,$128c
1248: f5 00 01  mov   a,$0100+x
124b: 75 01 03  cmp   a,$0301+x
124e: d0 05     bne   $1255
1250: f5 21 03  mov   a,$0321+x
1253: 2f 0d     bra   $1262
1255: 40        setp
1256: bb 00     inc   $00+x
1258: 20        clrp
1259: fd        mov   y,a
125a: f0 02     beq   $125e
125c: f4 a1     mov   a,$a1+x
125e: 60        clrc
125f: 95 20 03  adc   a,$0320+x
1262: d4 a1     mov   $a1+x,a
1264: f5 e0 02  mov   a,$02e0+x
1267: 60        clrc
1268: 95 e1 02  adc   a,$02e1+x
126b: d5 e0 02  mov   $02e0+x,a
126e: c4 4a     mov   $4a,a
1270: 1c        asl   a
1271: 1c        asl   a
1272: 90 02     bcc   $1276
1274: 48 ff     eor   a,#$ff
1276: fd        mov   y,a
1277: f4 a1     mov   a,$a1+x
1279: 68 f1     cmp   a,#$f1
127b: 90 05     bcc   $1282
127d: 28 0f     and   a,#$0f
127f: cf        mul   ya
1280: 2f 04     bra   $1286
1282: cf        mul   ya
1283: dd        mov   a,y
1284: 8d 00     mov   y,#$00
1286: 3f 06 13  call  $1306
1289: 5f cb 07  jmp   $07cb

128c: bb a0     inc   $a0+x
128e: e3 4b f8  bbs7  $4b,$1289
1291: 6f        ret

1292: f2 4b     clr7  $4b
1294: f4 c1     mov   a,$c1+x
1296: f0 09     beq   $12a1
1298: f5 60 03  mov   a,$0360+x
129b: de c0 03  cbne  $c0+x,$12a1
129e: 3f 0e 13  call  $130e
12a1: f5 01 04  mov   a,$0401+x
12a4: fd        mov   y,a
12a5: f5 00 04  mov   a,$0400+x
12a8: da 48     movw  $48,ya
12aa: f5 31 05  mov   a,$0531+x
12ad: f0 0a     beq   $12b9
12af: f5 21 04  mov   a,$0421+x
12b2: fd        mov   y,a
12b3: f5 20 04  mov   a,$0420+x
12b6: 3f f0 12  call  $12f0
12b9: f3 4b 03  bbc7  $4b,$12bf
12bc: 3f f2 10  call  $10f2
12bf: f2 4b     clr7  $4b
12c1: 3f 0d 10  call  $100d
12c4: f5 70 05  mov   a,$0570+x
12c7: f0 0f     beq   $12d8
12c9: f5 71 05  mov   a,$0571+x
12cc: d0 0a     bne   $12d8
12ce: f5 81 04  mov   a,$0481+x
12d1: fd        mov   y,a
12d2: f5 80 04  mov   a,$0480+x
12d5: 3f f0 12  call  $12f0
12d8: f4 a1     mov   a,$a1+x
12da: f0 b2     beq   $128e
12dc: f5 00 03  mov   a,$0300+x
12df: de a0 ac  cbne  $a0+x,$128e
12e2: eb 22     mov   y,$22
12e4: f5 e1 02  mov   a,$02e1+x
12e7: cf        mul   ya
12e8: dd        mov   a,y
12e9: 60        clrc
12ea: 95 e0 02  adc   a,$02e0+x
12ed: 5f 6e 12  jmp   $126e

12f0: e2 4b     set7  $4b
12f2: cb 4a     mov   $4a,y
12f4: 3f 2a 10  call  $102a
12f7: 6d        push  y
12f8: eb 22     mov   y,$22
12fa: cf        mul   ya
12fb: cb 40     mov   $40,y
12fd: 8f 00 41  mov   $41,#$00
1300: eb 22     mov   y,$22
1302: ae        pop   a
1303: cf        mul   ya
1304: 7a 40     addw  ya,$40
1306: 3f 2a 10  call  $102a
1309: 7a 48     addw  ya,$48
130b: da 48     movw  $48,ya
130d: 6f        ret

130e: e2 4b     set7  $4b
1310: eb 22     mov   y,$22
1312: f5 41 03  mov   a,$0341+x
1315: cf        mul   ya
1316: dd        mov   a,y
1317: 60        clrc
1318: 95 40 03  adc   a,$0340+x
131b: 1c        asl   a
131c: 90 02     bcc   $1320
131e: 48 ff     eor   a,#$ff
1320: fb c1     mov   y,$c1+x
1322: cf        mul   ya
1323: dd        mov   a,y
1324: 48 ff     eor   a,#$ff
1326: eb 2a     mov   y,$2a
1328: cf        mul   ya
1329: f5 20 02  mov   a,$0220+x
132c: cf        mul   ya
132d: f5 a1 03  mov   a,$03a1+x
1330: cf        mul   ya
1331: dd        mov   a,y
1332: cf        mul   ya
1333: dd        mov   a,y
1334: d5 e1 03  mov   $03e1+x,a
1337: 6f        ret

; pan table
1338: db $00,$01,$03,$07,$0d,$15,$1e,$29
1340: db $34,$42,$51,$5e,$67,$6e,$73,$77
1348: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
134d: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
1355: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
135d: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
1365: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($1376+1) for dsp regs ($136c+1)
136d: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1377: db $31,$33,$5e,$5a,$58,$55,$46,$59,$3d,$56

; pitch table
1381: dw $085f
1383: dw $08de
1385: dw $0965
1387: dw $09f4
1389: dw $0a8c
138b: dw $0b2c
138d: dw $0bd6
138f: dw $0c8b
1391: dw $0d4a
1393: dw $0e14
1395: dw $0eea
1397: dw $0fcd
1399: dw $10be

139b: e8 aa     mov   a,#$aa
139d: c5 f4 00  mov   $00f4,a
13a0: e8 bb     mov   a,#$bb
13a2: c5 f5 00  mov   $00f5,a
13a5: 2f 03     bra   $13aa
13a7: 3f c0 14  call  $14c0
13aa: cd cc     mov   x,#$cc
13ac: 1e f4 00  cmp   x,$00f4
13af: d0 fb     bne   $13ac
13b1: e5 f6 00  mov   a,$00f6
13b4: ec f7 00  mov   y,$00f7
13b7: da 40     movw  $40,ya
13b9: c9 f4 00  mov   $00f4,x
13bc: cd dd     mov   x,#$dd
13be: 1e f4 00  cmp   x,$00f4
13c1: d0 fb     bne   $13be
13c3: e5 f6 00  mov   a,$00f6
13c6: ec f7 00  mov   y,$00f7
13c9: da 8c     movw  $8c,ya
13cb: c9 f4 00  mov   $00f4,x
13ce: ba 8c     movw  ya,$8c
13d0: f0 0d     beq   $13df
13d2: ba 40     movw  ya,$40
13d4: f0 0f     beq   $13e5
13d6: e8 ff     mov   a,#$ff
13d8: fd        mov   y,a
13d9: 5a 40     cmpw  ya,$40
13db: f0 08     beq   $13e5
13dd: 2f c8     bra   $13a7
13df: cd 17     mov   x,#$17
13e1: c9 f1 00  mov   $00f1,x
13e4: 6f        ret

13e5: e5 d9 04  mov   a,$04d9
13e8: d0 19     bne   $1403
13ea: e5 db 04  mov   a,$04db
13ed: c5 d9 04  mov   $04d9,a
13f0: 5d        mov   x,a
13f1: f5 9e 19  mov   a,$199e+x
13f4: c4 80     mov   $80,a
13f6: e8 24     mov   a,#$24
13f8: c4 81     mov   $81,a
13fa: e8 00     mov   a,#$00
13fc: c4 82     mov   $82,a
13fe: f5 ce 19  mov   a,$19ce+x
1401: c4 83     mov   $83,a
1403: ba 82     movw  ya,$82
1405: da 84     movw  $84,ya
1407: e8 ff     mov   a,#$ff
1409: fd        mov   y,a
140a: 5a 40     cmpw  ya,$40
140c: d0 03     bne   $1411
140e: 5f a3 14  jmp   $14a3

1411: 9c        dec   a
1412: 5a 40     cmpw  ya,$40
1414: f0 36     beq   $144c
1416: ba 8c     movw  ya,$8c
1418: d0 01     bne   $141b
141a: 6f        ret

141b: ba 82     movw  ya,$82
141d: da 40     movw  $40,ya
141f: 3f c0 14  call  $14c0
1422: ba 40     movw  ya,$40
1424: da 82     movw  $82,ya
1426: cd cc     mov   x,#$cc
1428: 1e f4 00  cmp   x,$00f4
142b: d0 fb     bne   $1428
142d: e5 f6 00  mov   a,$00f6
1430: ec f7 00  mov   y,$00f7
1433: da 40     movw  $40,ya
1435: c9 f4 00  mov   $00f4,x
1438: cd dd     mov   x,#$dd
143a: 1e f4 00  cmp   x,$00f4
143d: d0 fb     bne   $143a
143f: e5 f6 00  mov   a,$00f6
1442: ec f7 00  mov   y,$00f7
1445: da 8c     movw  $8c,ya
1447: c9 f4 00  mov   $00f4,x
144a: 2f bb     bra   $1407
144c: e9 f4 00  mov   x,$00f4
144f: d0 fb     bne   $144c
1451: c9 f4 00  mov   $00f4,x
1454: 3d        inc   x
1455: 1e f4 00  cmp   x,$00f4
1458: d0 fb     bne   $1455
145a: e5 f5 00  mov   a,$00f5
145d: ec f6 00  mov   y,$00f6
1460: 7a 84     addw  ya,$84
1462: da 86     movw  $86,ya
1464: c9 f4 00  mov   $00f4,x
1467: e5 da 04  mov   a,$04da
146a: d0 04     bne   $1470
146c: ba 80     movw  ya,$80
146e: da 88     movw  $88,ya
1470: 3a 80     incw  $80
1472: 3a 80     incw  $80
1474: 3a 80     incw  $80
1476: 3a 80     incw  $80
1478: 8d 00     mov   y,#$00
147a: e4 84     mov   a,$84
147c: d7 88     mov   ($88)+y,a
147e: 3a 88     incw  $88
1480: e4 85     mov   a,$85
1482: d7 88     mov   ($88)+y,a
1484: 3a 88     incw  $88
1486: e4 86     mov   a,$86
1488: d7 88     mov   ($88)+y,a
148a: 3a 88     incw  $88
148c: e4 87     mov   a,$87
148e: d7 88     mov   ($88)+y,a
1490: 3a 88     incw  $88
1492: ba 88     movw  ya,$88
1494: 5a 80     cmpw  ya,$80
1496: 90 e0     bcc   $1478
1498: e8 00     mov   a,#$00
149a: c5 da 04  mov   $04da,a
149d: ba 82     movw  ya,$82
149f: da 84     movw  $84,ya
14a1: 2f 83     bra   $1426
14a3: e5 da 04  mov   a,$04da
14a6: d0 09     bne   $14b1
14a8: ba 80     movw  ya,$80
14aa: da 88     movw  $88,ya
14ac: e8 01     mov   a,#$01
14ae: c5 da 04  mov   $04da,a
14b1: 3f c0 14  call  $14c0
14b4: 8d 00     mov   y,#$00
14b6: e8 04     mov   a,#$04
14b8: 7a 80     addw  ya,$80
14ba: da 80     movw  $80,ya
14bc: 5f 26 14  jmp   $1426

14bf: 6f        ret

14c0: e5 f4 00  mov   a,$00f4
14c3: d0 fb     bne   $14c0
14c5: c5 f4 00  mov   $00f4,a
14c8: 5d        mov   x,a
14c9: fd        mov   y,a
14ca: 3d        inc   x
14cb: c8 cc     cmp   x,#$cc
14cd: f0 fb     beq   $14ca
14cf: 1e f4 00  cmp   x,$00f4
14d2: d0 fb     bne   $14cf
14d4: e5 f5 00  mov   a,$00f5
14d7: d7 40     mov   ($40)+y,a
14d9: 3a 40     incw  $40
14db: 1a 8c     decw  $8c
14dd: f0 16     beq   $14f5
14df: e5 f6 00  mov   a,$00f6
14e2: d7 40     mov   ($40)+y,a
14e4: 3a 40     incw  $40
14e6: 1a 8c     decw  $8c
14e8: f0 0b     beq   $14f5
14ea: e5 f7 00  mov   a,$00f7
14ed: d7 40     mov   ($40)+y,a
14ef: 3a 40     incw  $40
14f1: 1a 8c     decw  $8c
14f3: f0 00     beq   $14f5
14f5: c9 f4 00  mov   $00f4,x
14f8: d0 d0     bne   $14ca
14fa: 6f        ret

14fb: 8d 01     mov   y,#$01
14fd: cc 0f 05  mov   $050f,y
1500: ba 50     movw  ya,$50
1502: da 8c     movw  $8c,ya
1504: 8d 00     mov   y,#$00
1506: f7 8c     mov   a,($8c)+y
1508: c4 84     mov   $84,a
150a: 3a 8c     incw  $8c
150c: f7 8c     mov   a,($8c)+y
150e: c4 85     mov   $85,a
1510: 3a 8c     incw  $8c
1512: e4 85     mov   a,$85
1514: d0 0f     bne   $1525
1516: e4 84     mov   a,$84
1518: f0 24     beq   $153e
151a: f7 8c     mov   a,($8c)+y
151c: 2d        push  a
151d: 3a 8c     incw  $8c
151f: f7 8c     mov   a,($8c)+y
1521: fd        mov   y,a
1522: ae        pop   a
1523: 2f dd     bra   $1502
1525: 7d        mov   a,x
1526: fd        mov   y,a
1527: f7 84     mov   a,($84)+y
1529: c4 8a     mov   $8a,a
152b: 3a 84     incw  $84
152d: f7 84     mov   a,($84)+y
152f: c4 8b     mov   $8b,a
1531: 8d ff     mov   y,#$ff
1533: fc        inc   y
1534: 30 08     bmi   $153e
1536: f7 8a     mov   a,($8a)+y
1538: 10 f9     bpl   $1533
153a: 68 ca     cmp   a,#$ca
153c: b0 f5     bcs   $1533
153e: 6f        ret

153f: e8 00     mov   a,#$00
1541: fd        mov   y,a
1542: c4 8c     mov   $8c,a
1544: 8f 02 8d  mov   $8d,#$02
1547: d7 8c     mov   ($8c)+y,a
1549: ab 8c     inc   $8c
154b: d0 fa     bne   $1547
154d: ab 8d     inc   $8d
154f: 78 06 8d  cmp   $8d,#$06
1552: d0 f3     bne   $1547
1554: c5 00 1e  mov   $1e00,a
1557: c5 01 1e  mov   $1e01,a
155a: c5 00 20  mov   $2000,a
155d: c5 00 21  mov   $2100,a
1560: 6f        ret

1561: ec db 04  mov   y,$04db
1564: f6 3e 19  mov   a,$193e+y
1567: f0 13     beq   $157c
1569: c4 8d     mov   $8d,a
156b: e8 00     mov   a,#$00
156d: fd        mov   y,a
156e: c4 8c     mov   $8c,a
1570: d7 8c     mov   ($8c)+y,a
1572: fc        inc   y
1573: d0 fb     bne   $1570
1575: ab 8d     inc   $8d
1577: 78 ff 8d  cmp   $8d,#$ff
157a: d0 f4     bne   $1570
157c: 6f        ret

157d: 4d        push  x
157e: 6d        push  y
157f: 3f d4 15  call  $15d4
1582: 3f da 18  call  $18da
1585: 8d 01     mov   y,#$01
1587: f6 24 05  mov   a,$0524+y
158a: d0 05     bne   $1591
158c: d6 f4 00  mov   $00f4+y,a
158f: 2f 3a     bra   $15cb
1591: 76 21 05  cmp   a,$0521+y
1594: f0 2f     beq   $15c5
1596: 68 f0     cmp   a,#$f0
1598: b0 61     bcs   $15fb
159a: 5d        mov   x,a
159b: f5 00 20  mov   a,$2000+x
159e: c4 8c     mov   $8c,a
15a0: f5 00 21  mov   a,$2100+x
15a3: f0 20     beq   $15c5
15a5: cd 00     mov   x,#$00
15a7: 5c        lsr   a
15a8: b0 05     bcs   $15af
15aa: 3d        inc   x
15ab: 68 00     cmp   a,#$00
15ad: d0 f8     bne   $15a7
15af: 4d        push  x
15b0: f5 c0 04  mov   a,$04c0+x
15b3: 5d        mov   x,a
15b4: f5 00 20  mov   a,$2000+x
15b7: c4 8d     mov   $8d,a
15b9: ce        pop   x
15ba: f6 24 05  mov   a,$0524+y
15bd: 69 8d 8c  cmp   ($8c),($8d)
15c0: 90 03     bcc   $15c5
15c2: d5 c0 04  mov   $04c0+x,a
15c5: f6 24 05  mov   a,$0524+y
15c8: d6 f4 00  mov   $00f4+y,a
15cb: d6 21 05  mov   $0521+y,a
15ce: dc        dec   y
15cf: 10 b6     bpl   $1587
15d1: ee        pop   y
15d2: ce        pop   x
15d3: 6f        ret

15d4: e5 f4 00  mov   a,$00f4
15d7: c5 24 05  mov   $0524,a
15da: e5 f4 00  mov   a,$00f4
15dd: 65 f4 00  cmp   a,$00f4
15e0: d0 f2     bne   $15d4
15e2: 65 24 05  cmp   a,$0524
15e5: d0 ed     bne   $15d4
15e7: e5 f5 00  mov   a,$00f5
15ea: c5 25 05  mov   $0525,a
15ed: e5 f5 00  mov   a,$00f5
15f0: 65 f5 00  cmp   a,$00f5
15f3: d0 f2     bne   $15e7
15f5: 65 25 05  cmp   a,$0525
15f8: d0 ed     bne   $15e7
15fa: 6f        ret

15fb: 2d        push  a
15fc: 6d        push  y
15fd: 3f 17 16  call  $1617
1600: ee        pop   y
1601: ae        pop   a
1602: 68 f3     cmp   a,#$f3
1604: b0 bf     bcs   $15c5
1606: e8 dd     mov   a,#$dd
1608: c5 f6 00  mov   $00f6,a
160b: e8 ee     mov   a,#$ee
160d: c5 f7 00  mov   $00f7,a
1610: e8 00     mov   a,#$00
1612: c5 f4 00  mov   $00f4,a
1615: 2f ba     bra   $15d1
1617: 80        setc
1618: a8 f0     sbc   a,#$f0
161a: c5 92 05  mov   $0592,a
161d: 1c        asl   a
161e: fd        mov   y,a
161f: f6 29 16  mov   a,$1629+y
1622: 2d        push  a
1623: f6 28 16  mov   a,$1628+y
1626: 2d        push  a
1627: 6f        ret

1628: 6b 08     ror   $08
162a: 6b 08     ror   $08
162c: 6b 08     ror   $08
162e: 85 17 b5  adc   a,$b517
1631: 17 cd     or    a,($cd)+y
1633: 17 d4     or    a,($d4)+y
1635: 17 fc     or    a,($fc)+y
1637: 17 17     or    a,($17)+y
1639: 17 09     or    a,($09)+y
163b: 18 0a 18  or    $18,#$0a
163e: 10 18     bpl   $1658
1640: 8c 17 2e  dec   $2e17
1643: 18 17 17  or    $17,#$17
1646: 17 17     or    a,($17)+y
1648: e5 91 05  mov   a,$0591
164b: f0 01     beq   $164e
164d: 6f        ret

164e: 4d        push  x
164f: 6d        push  y
1650: 8f 00 8f  mov   $8f,#$00
1653: eb 8f     mov   y,$8f
1655: f6 c0 04  mov   a,$04c0+y
1658: f0 6e     beq   $16c8
165a: 6d        push  y
165b: 8f c0 8a  mov   $8a,#$c0
165e: 8f 04 8b  mov   $8b,#$04
1661: 3f dc 16  call  $16dc
1664: cb 8f     mov   $8f,y
1666: ee        pop   y
1667: e4 8e     mov   a,$8e
1669: f0 5d     beq   $16c8
166b: 6d        push  y
166c: 8f d0 8a  mov   $8a,#$d0
166f: 8f 04 8b  mov   $8b,#$04
1672: 3f dc 16  call  $16dc
1675: ee        pop   y
1676: e4 8e     mov   a,$8e
1678: f0 4e     beq   $16c8
167a: f6 c0 04  mov   a,$04c0+y
167d: c5 17 05  mov   $0517,a
1680: dd        mov   a,y
1681: f0 31     beq   $16b4
1683: 6d        push  y
1684: e5 17 05  mov   a,$0517
1687: 3f d2 0a  call  $0ad2
168a: e9 17 05  mov   x,$0517
168d: f5 00 21  mov   a,$2100+x
1690: c4 8d     mov   $8d,a
1692: cd 00     mov   x,#$00
1694: 8d 00     mov   y,#$00
1696: 4b 8d     lsr   $8d
1698: 90 11     bcc   $16ab
169a: f6 d0 04  mov   a,$04d0+y
169d: f0 06     beq   $16a5
169f: cc 23 05  mov   $0523,y
16a2: 3f e7 09  call  $09e7
16a5: e5 17 05  mov   a,$0517
16a8: d6 d0 04  mov   $04d0+y,a
16ab: 3d        inc   x
16ac: 3d        inc   x
16ad: fc        inc   y
16ae: 78 00 8d  cmp   $8d,#$00
16b1: d0 e3     bne   $1696
16b3: ee        pop   y
16b4: e5 17 05  mov   a,$0517
16b7: d6 c8 04  mov   $04c8+y,a
16ba: cc 23 05  mov   $0523,y
16bd: 3f 99 09  call  $0999
16c0: e5 2c 05  mov   a,$052c
16c3: f0 03     beq   $16c8
16c5: 3f ff 0a  call  $0aff
16c8: ab 8f     inc   $8f
16ca: 78 08 8f  cmp   $8f,#$08
16cd: 90 84     bcc   $1653
16cf: e8 00     mov   a,#$00
16d1: 8d 08     mov   y,#$08
16d3: dc        dec   y
16d4: d6 c0 04  mov   $04c0+y,a
16d7: d0 fa     bne   $16d3
16d9: ee        pop   y
16da: ce        pop   x
16db: 6f        ret

16dc: f6 c0 04  mov   a,$04c0+y
16df: 5d        mov   x,a
16e0: f5 00 21  mov   a,$2100+x
16e3: c4 8c     mov   $8c,a
16e5: f5 00 20  mov   a,$2000+x
16e8: c5 1d 05  mov   $051d,a
16eb: 8d 00     mov   y,#$00
16ed: 8f 01 8e  mov   $8e,#$01
16f0: e4 8f     mov   a,$8f
16f2: d0 03     bne   $16f7
16f4: 8f 01 8c  mov   $8c,#$01
16f7: 4b 8c     lsr   $8c
16f9: 90 14     bcc   $170f
16fb: f7 8a     mov   a,($8a)+y
16fd: 5d        mov   x,a
16fe: f5 00 20  mov   a,$2000+x
1701: c4 8d     mov   $8d,a
1703: e5 1d 05  mov   a,$051d
1706: 64 8d     cmp   a,$8d
1708: b0 05     bcs   $170f
170a: 8f 00 8e  mov   $8e,#$00
170d: 2f 06     bra   $1715
170f: fc        inc   y
1710: 78 00 8c  cmp   $8c,#$00
1713: d0 e2     bne   $16f7
1715: dc        dec   y
1716: 6f        ret

1717: 6f        ret

1718: e5 fe 00  mov   a,$00fe
171b: e9 13 05  mov   x,$0513
171e: f0 3a     beq   $175a
1720: 85 27 05  adc   a,$0527
1723: 68 32     cmp   a,#$32
1725: 90 33     bcc   $175a
1727: c8 02     cmp   x,#$02
1729: f0 33     beq   $175e
172b: e5 26 05  mov   a,$0526
172e: f0 08     beq   $1738
1730: 80        setc
1731: a5 28 05  sbc   a,$0528
1734: 68 80     cmp   a,#$80
1736: 90 1d     bcc   $1755
1738: e4 31     mov   a,$31
173a: 80        setc
173b: a5 2a 05  sbc   a,$052a
173e: 68 80     cmp   a,#$80
1740: 90 0d     bcc   $174f
1742: e8 ff     mov   a,#$ff
1744: 3f bd 18  call  $18bd
1747: e8 00     mov   a,#$00
1749: c5 f6 00  mov   $00f6,a
174c: c5 13 05  mov   $0513,a
174f: c4 31     mov   $31,a
1751: c4 33     mov   $33,a
1753: e8 00     mov   a,#$00
1755: 3f 85 18  call  $1885
1758: e8 00     mov   a,#$00
175a: c5 27 05  mov   $0527,a
175d: 6f        ret

175e: e4 31     mov   a,$31
1760: 60        clrc
1761: 85 2a 05  adc   a,$052a
1764: 65 93 05  cmp   a,$0593
1767: 90 14     bcc   $177d
1769: e5 26 05  mov   a,$0526
176c: 60        clrc
176d: 85 28 05  adc   a,$0528
1770: 68 80     cmp   a,#$80
1772: 90 0f     bcc   $1783
1774: e8 00     mov   a,#$00
1776: c5 13 05  mov   $0513,a
1779: e8 4c     mov   a,#$4c
177b: 2f 06     bra   $1783
177d: c4 31     mov   $31,a
177f: c4 33     mov   $33,a
1781: e8 00     mov   a,#$00
1783: 2f d0     bra   $1755
1785: e8 01     mov   a,#$01
1787: c5 13 05  mov   $0513,a
178a: 2f 05     bra   $1791
178c: e8 02     mov   a,#$02
178e: c5 13 05  mov   $0513,a
1791: e5 f7 00  mov   a,$00f7
1794: 5d        mov   x,a
1795: 8d 00     mov   y,#$00
1797: cc 27 05  mov   $0527,y
179a: e8 4c     mov   a,#$4c
179c: 9e        div   ya,x
179d: d0 01     bne   $17a0
179f: bc        inc   a
17a0: c5 28 05  mov   $0528,a
17a3: e4 31     mov   a,$31
17a5: c5 93 05  mov   $0593,a
17a8: 8d 00     mov   y,#$00
17aa: e9 f7 00  mov   x,$00f7
17ad: 9e        div   ya,x
17ae: d0 01     bne   $17b1
17b0: bc        inc   a
17b1: c5 2a 05  mov   $052a,a
17b4: 6f        ret

17b5: e8 00     mov   a,#$00
17b7: c5 13 05  mov   $0513,a
17ba: c4 5a     mov   $5a,a
17bc: eb 4d     mov   y,$4d
17be: 3f 4e 08  call  $084e
17c1: e8 4c     mov   a,#$4c
17c3: 3f 85 18  call  $1885
17c6: e8 00     mov   a,#$00
17c8: fd        mov   y,a
17c9: 3f 53 0f  call  $0f53
17cc: 6f        ret

17cd: e8 00     mov   a,#$00
17cf: c5 07 05  mov   $0507,a
17d2: 2f 05     bra   $17d9
17d4: e8 01     mov   a,#$01
17d6: c5 07 05  mov   $0507,a
17d9: cd 0e     mov   x,#$0e
17db: 8f 80 57  mov   $57,#$80
17de: f5 e0 04  mov   a,$04e0+x
17e1: ec 07 05  mov   y,$0507
17e4: f0 02     beq   $17e8
17e6: e8 0a     mov   a,#$0a
17e8: d5 41 04  mov   $0441+x,a
17eb: 28 1f     and   a,#$1f
17ed: d5 01 04  mov   $0401+x,a
17f0: e8 00     mov   a,#$00
17f2: d5 00 04  mov   $0400+x,a
17f5: 1d        dec   x
17f6: 1d        dec   x
17f7: 4b 57     lsr   $57
17f9: d0 e3     bne   $17de
17fb: 6f        ret

17fc: ec f7 00  mov   y,$00f7
17ff: e8 00     mov   a,#$00
1801: da 23     movw  $23,ya
1803: e8 01     mov   a,#$01
1805: c5 90 05  mov   $0590,a
1808: 6f        ret

1809: 6f        ret

180a: e8 01     mov   a,#$01
180c: c5 91 05  mov   $0591,a
180f: 6f        ret

1810: e8 00     mov   a,#$00
1812: c5 91 05  mov   $0591,a
1815: c5 c0 04  mov   $04c0,a
1818: c5 c1 04  mov   $04c1,a
181b: c5 c2 04  mov   $04c2,a
181e: c5 c3 04  mov   $04c3,a
1821: c5 c4 04  mov   $04c4,a
1824: c5 c5 04  mov   $04c5,a
1827: c5 c6 04  mov   $04c6,a
182a: c5 c7 04  mov   $04c7,a
182d: 6f        ret

182e: e5 f7 00  mov   a,$00f7
1831: 28 7f     and   a,#$7f
1833: 3f 85 18  call  $1885
1836: 6f        ret

; vcmd ff - sub-vcmd
1837: 1c        asl   a
1838: fd        mov   y,a
1839: f6 46 18  mov   a,$1846+y
183c: 2d        push  a
183d: f6 45 18  mov   a,$1845+y
1840: 2d        push  a
1841: 3f 7e 0d  call  $0d7e
1844: 6f        ret

; sub-vcmd dispatch table
1845: dw $18b0  ; 00
1847: dw $18c2  ; 01 - channel echo on
1849: dw $18cd  ; 02 - channel echo off
184b: dw $1893  ; 03
184d: dw $1885  ; 04 - hardware master volume
184f: dw $187a  ; 05
1851: dw $1879  ; 06
1853: dw $1868  ; 07
1855: dw $1857  ; 08

; sub-vcmd 08
1857: e5 94 05  mov   a,$0594
185a: ad 00     cmp   y,#$00
185c: f0 04     beq   $1862
185e: 08 80     or    a,#$80
1860: 2f 02     bra   $1864
1862: 28 7f     and   a,#$7f
1864: c5 f7 00  mov   $00f7,a
1867: 6f        ret

; sub-vcmd 07
1868: ac 94 05  inc   $0594
186b: d0 05     bne   $1872
186d: e8 80     mov   a,#$80
186f: c5 94 05  mov   $0594,a
1872: e5 94 05  mov   a,$0594
1875: c5 f7 00  mov   $00f7,a
1878: 6f        ret

; sub-vcmd 06
1879: 6f        ret

; sub-vcmd 05
187a: d8 8c     mov   $8c,x
187c: 38 0f 8c  and   $8c,#$0f
187f: eb 8c     mov   y,$8c
1881: d6 e1 04  mov   $04e1+y,a
1884: 6f        ret

; sub-vcmd 04 - hardware master volume
1885: c5 26 05  mov   $0526,a
1888: 8d 0c     mov   y,#$0c
188a: 3f 56 08  call  $0856             ; set MVOL(L)
188d: 8d 1c     mov   y,#$1c
188f: 3f 56 08  call  $0856             ; set MVOL(R)
1892: 6f        ret

; sub-vcmd 03
1893: 4d        push  x
1894: 2d        push  a
1895: e8 02     mov   a,#$02
1897: c5 13 05  mov   $0513,a
189a: ce        pop   x
189b: 8d 00     mov   y,#$00
189d: cc 27 05  mov   $0527,y
18a0: e8 4c     mov   a,#$4c
18a2: 9e        div   ya,x
18a3: d0 01     bne   $18a6
18a5: bc        inc   a
18a6: c5 28 05  mov   $0528,a
18a9: e8 00     mov   a,#$00
18ab: 3f 85 18  call  $1885
18ae: ce        pop   x
18af: 6f        ret

; sub-vcmd 00
18b0: c5 0b 05  mov   $050b,a
18b3: d0 01     bne   $18b6
18b5: 6f        ret

18b6: e8 ff     mov   a,#$ff
18b8: 8d 5c     mov   y,#$5c
18ba: 5f 56 08  jmp   $0856             ; set KOF

18bd: 8d 5c     mov   y,#$5c
18bf: 5f 4e 08  jmp   $084e             ; set KOF if required

; sub-vcmd 01 - channel echo on
18c2: 7d        mov   a,x
18c3: 5c        lsr   a
18c4: fd        mov   y,a
18c5: f6 1a 19  mov   a,$191a+y
18c8: 04 5a     or    a,$5a
18ca: c4 5a     mov   $5a,a
18cc: 6f        ret

; sub-vcmd 02 - channel echo off
18cd: 7d        mov   a,x
18ce: 5c        lsr   a
18cf: fd        mov   y,a
18d0: f6 1a 19  mov   a,$191a+y
18d3: 48 ff     eor   a,#$ff
18d5: 24 5a     and   a,$5a
18d7: c4 5a     mov   $5a,a
18d9: 6f        ret

18da: 4d        push  x
18db: 6d        push  y
18dc: e8 00     mov   a,#$00
18de: c5 dc 04  mov   $04dc,a
18e1: e9 db 04  mov   x,$04db
18e4: f5 6e 19  mov   a,$196e+x
18e7: c4 8c     mov   $8c,a
18e9: 8d 02     mov   y,#$02
18eb: f6 23 05  mov   a,$0523+y
18ee: 64 8c     cmp   a,$8c
18f0: 90 07     bcc   $18f9
18f2: 68 f0     cmp   a,#$f0
18f4: b0 03     bcs   $18f9
18f6: ac dc 04  inc   $04dc
18f9: dc        dec   y
18fa: d0 ef     bne   $18eb
18fc: e5 dc 04  mov   a,$04dc
18ff: f0 16     beq   $1917
1901: e5 f4 00  mov   a,$00f4
1904: c5 f4 00  mov   $00f4,a
1907: e5 f5 00  mov   a,$00f5
190a: c5 f5 00  mov   $00f5,a
190d: e8 05     mov   a,#$05
190f: c5 24 05  mov   $0524,a
1912: e8 00     mov   a,#$00
1914: c5 25 05  mov   $0525,a
1917: ee        pop   y
1918: ce        pop   x
1919: 6f        ret

191a: db $01,$02,$04,$08,$10,$20,$40,$80
1922: db $01,$02,$04,$08,$10,$20,$40,$80
192a: db $10,$12,$14,$16,$18,$1a,$1c,$1e
1932: db $00,$0a,$0b,$0c,$0d,$0e,$00,$02

193a: db $06,$0e,$1e,$3e
