0600: 20        clrp
0601: cd cf     mov   x,#$cf
0603: bd        mov   sp,x              ; set SP to (01)cf
0604: e8 00     mov   a,#$00
0606: 5d        mov   x,a
0607: af        mov   (x)+,a
0608: c8 e0     cmp   x,#$e0
060a: d0 fb     bne   $0607             ; zero 00-e0
060c: bc        inc   a
060d: 3f a2 0f  call  $0fa2
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
0630: 3f 60 15  call  $1560
0633: e8 10     mov   a,#$10
0635: c4 24     mov   $24,a
0637: c5 02 05  mov   $0502,a
063a: c5 06 05  mov   $0506,a
063d: c5 0a 05  mov   $050a,a
0640: c5 0e 05  mov   $050e,a
0643: c5 12 05  mov   $0512,a
0646: c5 16 05  mov   $0516,a
0649: c5 1a 05  mov   $051a,a
064c: e8 60     mov   a,#$60
064e: 3f a1 18  call  $18a1
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
0675: f6 8d 13  mov   a,$138d+y
0678: c5 f2 00  mov   $00f2,a
067b: f6 97 13  mov   a,$1397+y
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
06a0: 3f 34 17  call  $1734
06a3: 3f 9e 15  call  $159e
06a6: 3f 64 16  call  $1664
06a9: 8f 00 3e  mov   $3e,#$00
06ac: 8f 01 4d  mov   $4d,#$01
06af: f8 4d     mov   x,$4d
06b1: f5 c8 04  mov   a,$04c8+x
06b4: f0 29     beq   $06df
06b6: ee        pop   y
06b7: 6d        push  y
06b8: c9 23 05  mov   $0523,x
06bb: f5 47 19  mov   a,$1947+x
06be: c4 57     mov   $57,a
06c0: f5 57 19  mov   a,$1957+x
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
06d7: 3f 70 0c  call  $0c70
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

0704: 3f 9b 0b  call  $0b9b
0707: 5f 65 06  jmp   $0665

070a: 3f 9e 15  call  $159e
070d: e5 17 05  mov   a,$0517
0710: f0 1b     beq   $072d
0712: f4 01     mov   a,$01+x
0714: f0 03     beq   $0719
0716: 3f b3 12  call  $12b3
0719: 3d        inc   x
071a: 3d        inc   x
071b: 0b 57     asl   $57
071d: f0 0e     beq   $072d
071f: ec 23 05  mov   y,$0523
0722: f6 c8 04  mov   a,$04c8+y
0725: fd        mov   y,a
0726: f6 00 23  mov   a,$2300+y
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
0755: f5 47 19  mov   a,$1947+x
0758: 8d 5c     mov   y,#$5c
075a: 3f 56 08  call  $0856             ; set KOF
075d: ce        pop   x
075e: 6f        ret

075f: ad ca     cmp   y,#$ca
0761: 90 05     bcc   $0768
0763: 3f a3 0d  call  $0da3
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
07c5: 3f 13 10  call  $1013
07c8: 3f 2e 10  call  $102e
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
07eb: f6 a3 13  mov   a,$13a3+y
07ee: c4 41     mov   $41,a
07f0: f6 a2 13  mov   a,$13a2+y
07f3: c4 40     mov   $40,a
07f5: f6 a5 13  mov   a,$13a5+y
07f8: 2d        push  a
07f9: f6 a4 13  mov   a,$13a4+y
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
0872: e5 92 05  mov   a,$0592
0875: 68 01     cmp   a,#$01
0877: d0 03     bne   $087c
0879: 3f 2a 09  call  $092a
087c: e8 00     mov   a,#$00
087e: c5 d9 04  mov   $04d9,a
0881: c5 da 04  mov   $04da,a
0884: fd        mov   y,a
0885: 3f 6e 0f  call  $0f6e
0888: e8 01     mov   a,#$01
088a: 3f a2 0f  call  $0fa2
088d: e5 f6 00  mov   a,$00f6
0890: c5 d8 04  mov   $04d8,a
0893: e5 f7 00  mov   a,$00f7
0896: c5 db 04  mov   $04db,a
0899: 3f bc 13  call  $13bc
089c: 8c d8 04  dec   $04d8
089f: f0 0a     beq   $08ab
08a1: e5 d8 04  mov   a,$04d8
08a4: 65 f7 00  cmp   a,$00f7
08a7: d0 fb     bne   $08a4
08a9: 2f ee     bra   $0899
08ab: e8 00     mov   a,#$00
08ad: c5 f6 00  mov   $00f6,a
08b0: c5 f7 00  mov   $00f7,a
08b3: e8 ff     mov   a,#$ff
08b5: 65 f4 00  cmp   a,$00f4
08b8: d0 f9     bne   $08b3
08ba: c5 f4 00  mov   $00f4,a
08bd: 8f ff 2a  mov   $2a,#$ff
08c0: 3f 82 15  call  $1582
08c3: e8 00     mov   a,#$00
08c5: c5 21 05  mov   $0521,a
08c8: c5 22 05  mov   $0522,a
08cb: c5 13 05  mov   $0513,a
08ce: c5 0b 05  mov   $050b,a
08d1: c5 90 05  mov   $0590,a
08d4: c5 91 05  mov   $0591,a
08d7: cd 08     mov   x,#$08
08d9: d5 c7 04  mov   $04c7+x,a
08dc: d5 bf 04  mov   $04bf+x,a
08df: d5 cf 04  mov   $04cf+x,a
08e2: 1d        dec   x
08e3: d0 f4     bne   $08d9
08e5: d4 01     mov   $01+x,a
08e7: d4 11     mov   $11+x,a
08e9: d5 a1 03  mov   $03a1+x,a
08ec: d5 60 00  mov   $0060+x,a
08ef: fd        mov   y,a
08f0: 7d        mov   a,x
08f1: 5c        lsr   a
08f2: 9f        xcn   a
08f3: c5 f2 00  mov   $00f2,a
08f6: cc f3 00  mov   $00f3,y
08f9: bc        inc   a
08fa: c5 f2 00  mov   $00f2,a
08fd: cc f3 00  mov   $00f3,y
0900: dd        mov   a,y
0901: 3d        inc   x
0902: 3d        inc   x
0903: c8 10     cmp   x,#$10
0905: d0 de     bne   $08e5
0907: c5 20 05  mov   $0520,a
090a: c4 3e     mov   $3e,a
090c: e8 ff     mov   a,#$ff
090e: 8d 5c     mov   y,#$5c
0910: 3f 56 08  call  $0856             ; set KOF
0913: e5 92 05  mov   a,$0592
0916: 68 02     cmp   a,#$02
0918: d0 0a     bne   $0924
091a: 3f 6b 09  call  $096b
091d: e8 00     mov   a,#$00
091f: 3f a1 18  call  $18a1
0922: 2f 05     bra   $0929
0924: e8 60     mov   a,#$60
0926: 3f a1 18  call  $18a1
0929: 6f        ret

092a: 8d 01     mov   y,#$01
092c: f6 d0 04  mov   a,$04d0+y
092f: f0 06     beq   $0937
0931: cc 23 05  mov   $0523,y
0934: 3f 02 0a  call  $0a02
0937: fc        inc   y
0938: ad 08     cmp   y,#$08
093a: 90 f0     bcc   $092c
093c: cd 00     mov   x,#$00
093e: 8d 00     mov   y,#$00
0940: bf        mov   a,(x)+
0941: d6 00 f9  mov   $f900+y,a
0944: fc        inc   y
0945: c8 e0     cmp   x,#$e0
0947: d0 f7     bne   $0940
0949: 8d 00     mov   y,#$00
094b: 8f 00 8c  mov   $8c,#$00
094e: 8f 02 8d  mov   $8d,#$02
0951: 8f 00 8e  mov   $8e,#$00
0954: 8f fa 8f  mov   $8f,#$fa
0957: f7 8c     mov   a,($8c)+y
0959: d7 8e     mov   ($8e)+y,a
095b: ab 8c     inc   $8c
095d: ab 8e     inc   $8e
095f: d0 f6     bne   $0957
0961: ab 8d     inc   $8d
0963: ab 8f     inc   $8f
0965: 78 06 8d  cmp   $8d,#$06
0968: d0 ed     bne   $0957
096a: 6f        ret

096b: cd 00     mov   x,#$00
096d: 8d 00     mov   y,#$00
096f: f6 00 f9  mov   a,$f900+y
0972: af        mov   (x)+,a
0973: fc        inc   y
0974: c8 e0     cmp   x,#$e0
0976: d0 f7     bne   $096f
0978: 8d 00     mov   y,#$00
097a: 8f 00 8c  mov   $8c,#$00
097d: 8f 02 8d  mov   $8d,#$02
0980: 8f 00 8e  mov   $8e,#$00
0983: 8f fa 8f  mov   $8f,#$fa
0986: f7 8e     mov   a,($8e)+y
0988: d7 8c     mov   ($8c)+y,a
098a: ab 8c     inc   $8c
098c: ab 8e     inc   $8e
098e: d0 f6     bne   $0986
0990: ab 8d     inc   $8d
0992: ab 8f     inc   $8f
0994: 78 06 8d  cmp   $8d,#$06
0997: d0 ed     bne   $0986
0999: cd 0e     mov   x,#$0e
099b: f5 21 02  mov   a,$0221+x
099e: 4d        push  x
099f: 3f a6 0d  call  $0da6
09a2: ce        pop   x
09a3: 1d        dec   x
09a4: 1d        dec   x
09a5: 10 f4     bpl   $099b
09a7: e5 95 05  mov   a,$0595
09aa: 3f a2 0f  call  $0fa2
09ad: e5 96 05  mov   a,$0596
09b0: 3f 8b 0f  call  $0f8b
09b3: 6f        ret

09b4: 6d        push  y
09b5: c4 8c     mov   $8c,a
09b7: 8f 20 8d  mov   $8d,#$20          ; #$2000
09ba: 60        clrc
09bb: 84 8c     adc   a,$8c
09bd: c4 8c     mov   $8c,a
09bf: e8 00     mov   a,#$00
09c1: 84 8d     adc   a,$8d
09c3: c4 8d     mov   $8d,a
09c5: 8d 00     mov   y,#$00
09c7: f7 8c     mov   a,($8c)+y
09c9: fc        inc   y
09ca: c5 2b 05  mov   $052b,a
09cd: f7 8c     mov   a,($8c)+y
09cf: c5 2c 05  mov   $052c,a
09d2: ee        pop   y
09d3: d0 01     bne   $09d6
09d5: 6f        ret

09d6: ad 00     cmp   y,#$00
09d8: d0 0e     bne   $09e8
09da: e5 2b 05  mov   a,$052b
09dd: c4 50     mov   $50,a
09df: e5 2c 05  mov   a,$052c
09e2: c4 51     mov   $51,a
09e4: 8f 01 4f  mov   $4f,#$01
09e7: 6f        ret

09e8: e5 2b 05  mov   a,$052b
09eb: c4 3b     mov   $3b,a
09ed: e5 2c 05  mov   a,$052c
09f0: c4 3c     mov   $3c,a
09f2: 3f d0 0b  call  $0bd0
09f5: e9 17 05  mov   x,$0517
09f8: f5 00 23  mov   a,$2300+x
09fb: 05 20 05  or    a,$0520
09fe: c5 20 05  mov   $0520,a
0a01: 6f        ret

0a02: 4d        push  x
0a03: 6d        push  y
0a04: c5 2e 05  mov   $052e,a
0a07: e4 57     mov   a,$57
0a09: 2d        push  a
0a0a: e9 2e 05  mov   x,$052e
0a0d: f5 00 23  mov   a,$2300+x
0a10: 8d 5c     mov   y,#$5c
0a12: 2d        push  a
0a13: 3f 56 08  call  $0856             ; set KOF
0a16: 3f 2e 07  call  $072e
0a19: ae        pop   a
0a1a: 2d        push  a
0a1b: 48 ff     eor   a,#$ff
0a1d: 24 5a     and   a,$5a
0a1f: c5 1c 05  mov   $051c,a
0a22: ae        pop   a
0a23: 2d        push  a
0a24: 25 1b 05  and   a,$051b
0a27: 05 1c 05  or    a,$051c
0a2a: c4 5a     mov   $5a,a
0a2c: ae        pop   a
0a2d: 2d        push  a
0a2e: 48 ff     eor   a,#$ff
0a30: 25 2d 05  and   a,$052d
0a33: c5 2d 05  mov   $052d,a
0a36: ae        pop   a
0a37: 2d        push  a
0a38: 48 ff     eor   a,#$ff
0a3a: 25 20 05  and   a,$0520
0a3d: c5 20 05  mov   $0520,a
0a40: ae        pop   a
0a41: c4 8c     mov   $8c,a
0a43: cd 00     mov   x,#$00
0a45: 8d 00     mov   y,#$00
0a47: 8f 01 57  mov   $57,#$01
0a4a: e4 3e     mov   a,$3e
0a4c: 2d        push  a
0a4d: 8f 00 3e  mov   $3e,#$00
0a50: 4b 8c     lsr   $8c
0a52: 90 11     bcc   $0a65
0a54: f5 21 02  mov   a,$0221+x
0a57: 4d        push  x
0a58: 6d        push  y
0a59: 3f a6 0d  call  $0da6
0a5c: ee        pop   y
0a5d: ce        pop   x
0a5e: e8 00     mov   a,#$00
0a60: d4 11     mov   $11+x,a
0a62: d6 d0 04  mov   $04d0+y,a
0a65: 0b 57     asl   $57
0a67: 3d        inc   x
0a68: 3d        inc   x
0a69: fc        inc   y
0a6a: e4 8c     mov   a,$8c
0a6c: d0 e2     bne   $0a50
0a6e: e9 2e 05  mov   x,$052e
0a71: f5 00 23  mov   a,$2300+x
0a74: c4 8c     mov   $8c,a
0a76: e8 00     mov   a,#$00
0a78: fd        mov   y,a
0a79: 4b 8c     lsr   $8c
0a7b: 90 05     bcc   $0a82
0a7d: d6 c8 04  mov   $04c8+y,a
0a80: 2f 05     bra   $0a87
0a82: fc        inc   y
0a83: f8 8c     mov   x,$8c
0a85: d0 f2     bne   $0a79
0a87: ec 23 05  mov   y,$0523
0a8a: dd        mov   a,y
0a8b: 9c        dec   a
0a8c: 1c        asl   a
0a8d: 1c        asl   a
0a8e: fd        mov   y,a
0a8f: e8 00     mov   a,#$00
0a91: d6 02 05  mov   $0502+y,a
0a94: ae        pop   a
0a95: c4 3e     mov   $3e,a
0a97: ae        pop   a
0a98: c4 57     mov   $57,a
0a9a: ee        pop   y
0a9b: ce        pop   x
0a9c: 6f        ret

0a9d: 4d        push  x
0a9e: 6d        push  y
0a9f: c5 2e 05  mov   $052e,a
0aa2: 5d        mov   x,a
0aa3: f5 00 23  mov   a,$2300+x
0aa6: c4 8c     mov   $8c,a
0aa8: cd 00     mov   x,#$00
0aaa: 8d 00     mov   y,#$00
0aac: 4b 8c     lsr   $8c
0aae: 90 07     bcc   $0ab7
0ab0: e8 00     mov   a,#$00
0ab2: d4 11     mov   $11+x,a
0ab4: d6 d0 04  mov   $04d0+y,a
0ab7: 3d        inc   x
0ab8: 3d        inc   x
0ab9: fc        inc   y
0aba: e4 8c     mov   a,$8c
0abc: d0 ee     bne   $0aac
0abe: e9 2e 05  mov   x,$052e
0ac1: f5 00 23  mov   a,$2300+x
0ac4: c4 8c     mov   $8c,a
0ac6: e8 00     mov   a,#$00
0ac8: fd        mov   y,a
0ac9: 4b 8c     lsr   $8c
0acb: 90 05     bcc   $0ad2
0acd: d6 c8 04  mov   $04c8+y,a
0ad0: 2f 05     bra   $0ad7
0ad2: fc        inc   y
0ad3: f8 8c     mov   x,$8c
0ad5: d0 f2     bne   $0ac9
0ad7: ec 23 05  mov   y,$0523
0ada: dd        mov   a,y
0adb: 9c        dec   a
0adc: 1c        asl   a
0add: 1c        asl   a
0ade: fd        mov   y,a
0adf: e8 00     mov   a,#$00
0ae1: d6 02 05  mov   $0502+y,a
0ae4: ee        pop   y
0ae5: ce        pop   x
0ae6: 6f        ret

0ae7: 5d        mov   x,a
0ae8: f5 00 23  mov   a,$2300+x
0aeb: 8d 5c     mov   y,#$5c
0aed: 2d        push  a
0aee: 3f 56 08  call  $0856             ; set KOF
0af1: 3f 2e 07  call  $072e
0af4: ae        pop   a
0af5: 6f        ret

0af6: e9 c8 04  mov   x,$04c8
0af9: f5 00 23  mov   a,$2300+x
0afc: c4 8c     mov   $8c,a
0afe: e8 00     mov   a,#$00
0b00: c5 c8 04  mov   $04c8,a
0b03: c5 f6 00  mov   $00f6,a
0b06: 5d        mov   x,a
0b07: 4b 8c     lsr   $8c
0b09: 90 02     bcc   $0b0d
0b0b: d4 01     mov   $01+x,a
0b0d: 3d        inc   x
0b0e: 3d        inc   x
0b0f: c8 10     cmp   x,#$10
0b11: d0 f4     bne   $0b07
0b13: 6f        ret

0b14: e9 17 05  mov   x,$0517
0b17: f5 00 23  mov   a,$2300+x
0b1a: c4 8c     mov   $8c,a
0b1c: f5 00 22  mov   a,$2200+x
0b1f: c4 8d     mov   $8d,a
0b21: 28 80     and   a,#$80
0b23: 9f        xcn   a
0b24: 1c        asl   a
0b25: 08 0e     or    a,#$0e
0b27: 5d        mov   x,a
0b28: 8f 80 57  mov   $57,#$80
0b2b: 0b 8c     asl   $8c
0b2d: 90 20     bcc   $0b4f
0b2f: e8 ff     mov   a,#$ff
0b31: d5 a1 03  mov   $03a1+x,a
0b34: e8 0a     mov   a,#$0a
0b36: 3f fc 0d  call  $0dfc
0b39: d5 21 02  mov   $0221+x,a
0b3c: d5 a1 04  mov   $04a1+x,a
0b3f: d5 80 03  mov   $0380+x,a
0b42: d5 a0 02  mov   $02a0+x,a
0b45: d4 a1     mov   $a1+x,a
0b47: d5 20 03  mov   $0320+x,a
0b4a: d4 c1     mov   $c1+x,a
0b4c: c5 dc 04  mov   $04dc,a
0b4f: 1d        dec   x
0b50: 1d        dec   x
0b51: 4b 57     lsr   $57
0b53: d0 d6     bne   $0b2b
0b55: e4 8d     mov   a,$8d
0b57: 28 80     and   a,#$80
0b59: f0 22     beq   $0b7d
0b5b: e9 17 05  mov   x,$0517
0b5e: f5 00 23  mov   a,$2300+x
0b61: 48 ff     eor   a,#$ff
0b63: 24 5a     and   a,$5a
0b65: c4 5a     mov   $5a,a
0b67: f5 00 23  mov   a,$2300+x
0b6a: 05 2d 05  or    a,$052d
0b6d: c5 2d 05  mov   $052d,a
0b70: e5 23 05  mov   a,$0523
0b73: 9c        dec   a
0b74: 1c        asl   a
0b75: 1c        asl   a
0b76: 5d        mov   x,a
0b77: e8 10     mov   a,#$10
0b79: d5 02 05  mov   $0502+x,a
0b7c: 6f        ret

0b7d: c4 2b     mov   $2b,a
0b7f: c4 25     mov   $25,a
0b81: c4 5f     mov   $5f,a
0b83: c4 52     mov   $52,a
0b85: c4 38     mov   $38,a
0b87: c5 1b 05  mov   $051b,a
0b8a: c5 2d 05  mov   $052d,a
0b8d: c5 f7 00  mov   $00f7,a
0b90: c5 94 05  mov   $0594,a
0b93: bc        inc   a
0b94: c5 f6 00  mov   $00f6,a
0b97: 8f 10 24  mov   $24,#$10
0b9a: 6f        ret

0b9b: e5 0b 05  mov   a,$050b
0b9e: d0 fa     bne   $0b9a
0ba0: e5 c8 04  mov   a,$04c8
0ba3: f0 f5     beq   $0b9a
0ba5: e4 4f     mov   a,$4f
0ba7: d0 03     bne   $0bac
0ba9: 5f 69 0c  jmp   $0c69

0bac: e8 00     mov   a,#$00
0bae: c4 4f     mov   $4f,a
0bb0: c5 0f 05  mov   $050f,a
0bb3: 3f 5d 08  call  $085d             ; read block addr from $50/1, increment ptr
0bb6: d0 5a     bne   $0c12             ; load start addresses, if hi-byte is non zero
0bb8: fd        mov   y,a               ; refetch lo-byte
0bb9: d0 04     bne   $0bbf             ; set/dec repeat count
0bbb: 5d        mov   x,a
0bbc: 5f f6 0a  jmp   $0af6             ; key off, return if also zero
; set/dec repeat count
0bbf: 8b 52     dec   $52
0bc1: 10 02     bpl   $0bc5
0bc3: c4 52     mov   $52,a
0bc5: 3f 5d 08  call  $085d             ; read next word as well
0bc8: f8 52     mov   x,$52
0bca: f0 e0     beq   $0bac
0bcc: da 50     movw  $50,ya            ;   "goto" that address
0bce: 2f dc     bra   $0bac             ; continue

0bd0: 8d 01     mov   y,#$01
0bd2: f7 3b     mov   a,($3b)+y
0bd4: 2d        push  a
0bd5: dc        dec   y
0bd6: f7 3b     mov   a,($3b)+y
0bd8: ee        pop   y
0bd9: da 42     movw  $42,ya
0bdb: e9 17 05  mov   x,$0517
0bde: f5 00 23  mov   a,$2300+x
0be1: c4 8c     mov   $8c,a
0be3: cd 1f     mov   x,#$1f
0be5: 4d        push  x
0be6: 0b 8c     asl   $8c
0be8: 90 20     bcc   $0c0a
0bea: 7d        mov   a,x
0beb: 28 0f     and   a,#$0f
0bed: fd        mov   y,a
0bee: f7 42     mov   a,($42)+y
0bf0: d5 00 00  mov   $0000+x,a
0bf3: 1d        dec   x
0bf4: dc        dec   y
0bf5: f7 42     mov   a,($42)+y
0bf7: d5 00 00  mov   $0000+x,a
0bfa: e8 00     mov   a,#$00
0bfc: d5 50 05  mov   $0550+x,a
0bff: d5 30 05  mov   $0530+x,a
0c02: d5 31 05  mov   $0531+x,a
0c05: e8 01     mov   a,#$01
0c07: d5 60 00  mov   $0060+x,a
0c0a: ce        pop   x
0c0b: 1d        dec   x
0c0c: 1d        dec   x
0c0d: c8 0f     cmp   x,#$0f
0c0f: b0 d4     bcs   $0be5
0c11: 6f        ret

; load start addresses - hi-byte not zero
0c12: da 42     movw  $42,ya
0c14: 8d 0f     mov   y,#$0f
0c16: e9 c8 04  mov   x,$04c8
0c19: f5 00 23  mov   a,$2300+x
0c1c: c4 8c     mov   $8c,a
0c1e: 0b 8c     asl   $8c
0c20: 90 10     bcc   $0c32
0c22: f7 42     mov   a,($42)+y
0c24: d6 00 00  mov   $0000+y,a
0c27: dc        dec   y
0c28: f7 42     mov   a,($42)+y
0c2a: d6 00 00  mov   $0000+y,a
0c2d: dc        dec   y
0c2e: 10 ee     bpl   $0c1e
0c30: fc        inc   y
0c31: fc        inc   y
0c32: dc        dec   y
0c33: dc        dec   y
0c34: 10 e8     bpl   $0c1e
0c36: e9 c8 04  mov   x,$04c8
0c39: f5 00 23  mov   a,$2300+x
0c3c: c4 8c     mov   $8c,a
0c3e: cd 00     mov   x,#$00
0c40: 8f 01 57  mov   $57,#$01
0c43: 4b 8c     lsr   $8c
0c45: 90 1c     bcc   $0c63
0c47: f4 01     mov   a,$01+x
0c49: f0 0a     beq   $0c55
0c4b: f5 21 02  mov   a,$0221+x
0c4e: d0 05     bne   $0c55
0c50: e8 00     mov   a,#$00
0c52: 3f a3 0d  call  $0da3
0c55: e8 00     mov   a,#$00
0c57: d5 50 05  mov   $0550+x,a
0c5a: d5 30 05  mov   $0530+x,a
0c5d: d5 31 05  mov   $0531+x,a
0c60: bc        inc   a
0c61: d4 60     mov   $60+x,a
0c63: 3d        inc   x
0c64: 3d        inc   x
0c65: 0b 57     asl   $57
0c67: d0 da     bne   $0c43
0c69: cd 00     mov   x,#$00
0c6b: d8 2f     mov   $2f,x
0c6d: 8f 01 57  mov   $57,#$01
0c70: 3f 9e 15  call  $159e
0c73: d8 54     mov   $54,x
0c75: f4 01     mov   a,$01+x
0c77: d0 03     bne   $0c7c
0c79: 5f fc 0c  jmp   $0cfc

0c7c: 9b 60     dec   $60+x             ; dec duration counter
0c7e: f0 03     beq   $0c83             ; if zero, handle the next vcmd
0c80: 5f f6 0c  jmp   $0cf6

0c83: 3f 99 0d  call  $0d99             ; read vcmd into A and Y
0c86: d0 2e     bne   $0cb6
; vcmd 00 - end repeat/return
0c88: f5 50 05  mov   a,$0550+x
0c8b: d0 11     bne   $0c9e             ; repeat the section if required
0c8d: ec 23 05  mov   y,$0523
0c90: d0 03     bne   $0c95
0c92: 5f ac 0b  jmp   $0bac             ; read the next section

0c95: f6 d0 04  mov   a,$04d0+y
0c98: 3f 02 0a  call  $0a02
0c9b: 5f fc 0c  jmp   $0cfc
; repeat / return from subroutine
0c9e: 3f 1f 0f  call  $0f1f             ; jump to loop start addr
0ca1: f5 50 05  mov   a,$0550+x
0ca4: 9c        dec   a
0ca5: d5 50 05  mov   $0550+x,a         ; dec repeat count
0ca8: d0 d9     bne   $0c83             ; if the loop has been done
0caa: f5 60 02  mov   a,$0260+x
0cad: d4 00     mov   $00+x,a
0caf: f5 61 02  mov   a,$0261+x
0cb2: d4 01     mov   $01+x,a           ; back to return addr instead
0cb4: 2f cd     bra   $0c83             ; then continue
; vcmd branches
0cb6: 30 20     bmi   $0cd8             ; vcmds 01-7f - note info:
0cb8: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
0cbb: 3f 99 0d  call  $0d99             ;   read next byte
0cbe: 30 18     bmi   $0cd8             ;   if note note then
0cc0: 2d        push  a
0cc1: 9f        xcn   a
0cc2: 28 07     and   a,#$07
0cc4: fd        mov   y,a
0cc5: f6 80 26  mov   a,$2680+y
0cc8: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
0ccb: ae        pop   a
0ccc: 28 0f     and   a,#$0f
0cce: fd        mov   y,a
0ccf: f6 88 26  mov   a,$2688+y
0cd2: d5 20 02  mov   $0220+x,a         ;   set per-note vol from low nybble
0cd5: 3f 99 0d  call  $0d99             ;   read vcmd into A and Y
; vcmd branches 80-ff
0cd8: 68 e0     cmp   a,#$e0
0cda: 90 05     bcc   $0ce1
0cdc: 3f 87 0d  call  $0d87             ; vcmds e0-ff
0cdf: 2f a2     bra   $0c83
; vcmds 80-df - note
0ce1: 3f 5f 07  call  $075f
0ce4: f5 00 02  mov   a,$0200+x
0ce7: d4 60     mov   $60+x,a
0ce9: fd        mov   y,a
0cea: f5 01 02  mov   a,$0201+x
0ced: cf        mul   ya
0cee: dd        mov   a,y
0cef: d0 01     bne   $0cf2
0cf1: bc        inc   a
0cf2: d4 61     mov   $61+x,a
0cf4: 2f 03     bra   $0cf9
0cf6: 3f 75 11  call  $1175
0cf9: 3f f0 0f  call  $0ff0
0cfc: 3d        inc   x
0cfd: 3d        inc   x
0cfe: 0b 57     asl   $57
0d00: f0 13     beq   $0d15
0d02: 4d        push  x
0d03: e9 23 05  mov   x,$0523
0d06: f5 c8 04  mov   a,$04c8+x
0d09: fd        mov   y,a
0d0a: f6 00 23  mov   a,$2300+y
0d0d: ce        pop   x
0d0e: 24 57     and   a,$57
0d10: f0 03     beq   $0d15
0d12: 5f 70 0c  jmp   $0c70

0d15: e9 23 05  mov   x,$0523
0d18: f0 0b     beq   $0d25
0d1a: f5 47 19  mov   a,$1947+x
0d1d: c4 57     mov   $57,a
0d1f: f5 57 19  mov   a,$1957+x
0d22: 5d        mov   x,a
0d23: 2f 44     bra   $0d69
0d25: e4 25     mov   a,$25
0d27: f0 0b     beq   $0d34
0d29: ba 27     movw  ya,$27
0d2b: 7a 23     addw  ya,$23
0d2d: 6e 25 02  dbnz  $25,$0d32
0d30: ba 25     movw  ya,$25
0d32: da 23     movw  $23,ya
0d34: e5 13 05  mov   a,$0513
0d37: d0 19     bne   $0d52
0d39: e4 38     mov   a,$38
0d3b: f0 15     beq   $0d52
0d3d: ba 34     movw  ya,$34
0d3f: 7a 30     addw  ya,$30
0d41: da 30     movw  $30,ya
0d43: ba 36     movw  ya,$36
0d45: 7a 32     addw  ya,$32
0d47: 6e 38 06  dbnz  $38,$0d50
0d4a: ba 38     movw  ya,$38
0d4c: da 30     movw  $30,ya
0d4e: eb 3a     mov   y,$3a
0d50: da 32     movw  $32,ya
0d52: e4 2b     mov   a,$2b
0d54: f0 0e     beq   $0d64
0d56: ba 2d     movw  ya,$2d
0d58: 7a 29     addw  ya,$29
0d5a: 6e 2b 02  dbnz  $2b,$0d5f
0d5d: ba 2b     movw  ya,$2b
0d5f: da 29     movw  $29,ya
0d61: 8f ff 2f  mov   $2f,#$ff
0d64: cd 00     mov   x,#$00
0d66: 8f 01 57  mov   $57,#$01
0d69: f4 01     mov   a,$01+x
0d6b: f0 03     beq   $0d70
0d6d: 3f b5 10  call  $10b5
0d70: 3d        inc   x
0d71: 3d        inc   x
0d72: 0b 57     asl   $57
0d74: f0 10     beq   $0d86
0d76: 4d        push  x
0d77: e9 23 05  mov   x,$0523
0d7a: f5 c8 04  mov   a,$04c8+x
0d7d: fd        mov   y,a
0d7e: f6 00 23  mov   a,$2300+y
0d81: ce        pop   x
0d82: 24 57     and   a,$57
0d84: d0 e3     bne   $0d69
0d86: 6f        ret

; dispatch vcmd in A (e0-ff)
0d87: 1c        asl   a                 ; e0-ff => c0-fe (8 bit)
0d88: fd        mov   y,a
0d89: f6 96 0f  mov   a,$0f96+y
0d8c: 2d        push  a
0d8d: f6 95 0f  mov   a,$0f95+y
0d90: 2d        push  a                 ; push jump address from table
0d91: dd        mov   a,y
0d92: 5c        lsr   a
0d93: fd        mov   y,a
0d94: f6 35 10  mov   a,$1035+y         ; vcmd length
0d97: f0 08     beq   $0da1             ; if non zero
; read new argument to A and Y
0d99: e7 00     mov   a,($00+x)
; increment voice pointer
0d9b: bb 00     inc   $00+x
0d9d: d0 02     bne   $0da1
0d9f: bb 01     inc   $01+x             ; inc reading ptr
0da1: fd        mov   y,a  
0da2: 6f        ret                     ; jump to vcmd

; vcmd e0 - set instrument
0da3: d5 21 02  mov   $0221+x,a
0da6: fd        mov   y,a
0da7: 10 06     bpl   $0daf             ; if percussion note:
0da9: 80        setc
0daa: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
0dac: 60        clrc
0dad: 84 3f     adc   a,$3f             ; add perc patch base
0daf: 8d 06     mov   y,#$06
; set sample A in bank at $40/1 width Y
0db1: cf        mul   ya
0db2: da 40     movw  $40,ya
0db4: 60        clrc
0db5: 98 00 40  adc   $40,#$00
0db8: 98 25 41  adc   $41,#$25          ; instrument table $2500
0dbb: e4 3e     mov   a,$3e
0dbd: 24 57     and   a,$57
0dbf: d0 3a     bne   $0dfb
0dc1: 4d        push  x
0dc2: 7d        mov   a,x
0dc3: 9f        xcn   a
0dc4: 5c        lsr   a
0dc5: 08 04     or    a,#$04            ; voice X SRCN
0dc7: 5d        mov   x,a
0dc8: 8d 00     mov   y,#$00
0dca: f7 40     mov   a,($40)+y
0dcc: 10 0e     bpl   $0ddc
0dce: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0dd0: 38 20 58  and   $58,#$20          ;  keep echo bit from FLG
0dd3: 0e 58 00  tset1 $0058             ;  OR in noise freq
0dd6: 09 57 59  or    ($59),($57)       ;  set vbit in noise enable
0dd9: dd        mov   a,y               ;  set SRCN to 0
0dda: 2f 07     bra   $0de3             ; else
0ddc: e4 57     mov   a,$57
0dde: 4e 59 00  tclr1 $0059             ;  clear noise vbit
0de1: f7 40     mov   a,($40)+y         ;  set SRCN from table
0de3: c9 f2 00  mov   $00f2,x
0de6: c5 f3 00  mov   $00f3,a
0de9: 3d        inc   x
0dea: fc        inc   y
0deb: ad 04     cmp   y,#$04
0ded: d0 f2     bne   $0de1             ; set SRCN, ADSR1/2, GAIN from table
0def: ce        pop   x
0df0: f7 40     mov   a,($40)+y
0df2: d5 41 02  mov   $0241+x,a         ; set pitch multiplier
0df5: fc        inc   y
0df6: f7 40     mov   a,($40)+y
0df8: d5 40 02  mov   $0240+x,a
0dfb: 6f        ret

; vcmd e1 - pan
0dfc: d5 e0 04  mov   $04e0+x,a
0dff: ec 07 05  mov   y,$0507
0e02: f0 02     beq   $0e06
0e04: e8 0a     mov   a,#$0a
0e06: d5 41 04  mov   $0441+x,a
0e09: 28 1f     and   a,#$1f
0e0b: d5 01 04  mov   $0401+x,a         ; voice pan value
0e0e: e8 00     mov   a,#$00
0e10: d5 00 04  mov   $0400+x,a
0e13: 6f        ret

; vcmd e2 - pan fade
0e14: ec 07 05  mov   y,$0507
0e17: f0 04     beq   $0e1d
0e19: 3f 99 0d  call  $0d99
0e1c: 6f        ret
;
0e1d: d5 31 05  mov   $0531+x,a
0e20: 2d        push  a
0e21: 3f 99 0d  call  $0d99
0e24: d5 40 04  mov   $0440+x,a
0e27: 80        setc
0e28: b5 01 04  sbc   a,$0401+x         ; current pan value
0e2b: ce        pop   x
0e2c: 3f 39 10  call  $1039             ; delta = pan value / steps
0e2f: d5 20 04  mov   $0420+x,a
0e32: dd        mov   a,y
0e33: d5 21 04  mov   $0421+x,a
0e36: 6f        ret

; vcmd e3 - vibrato on
0e37: d5 00 03  mov   $0300+x,a
0e3a: 3f 99 0d  call  $0d99
0e3d: d5 e1 02  mov   $02e1+x,a
0e40: 3f 99 0d  call  $0d99
; vcmd e4 - vibrato off
0e43: d4 a1     mov   $a1+x,a
0e45: d5 21 03  mov   $0321+x,a
0e48: e8 00     mov   a,#$00
0e4a: d5 01 03  mov   $0301+x,a
0e4d: 6f        ret

; vcmd f0 - vibrato fade
0e4e: d5 01 03  mov   $0301+x,a
0e51: 2d        push  a
0e52: 8d 00     mov   y,#$00
0e54: f4 a1     mov   a,$a1+x
0e56: ce        pop   x
0e57: 9e        div   ya,x
0e58: f8 54     mov   x,$54
0e5a: d5 20 03  mov   $0320+x,a
0e5d: 6f        ret

; vcmd e5 - master volume
0e5e: e5 23 05  mov   a,$0523
0e61: d0 04     bne   $0e67
0e63: e8 00     mov   a,#$00
0e65: da 29     movw  $29,ya
0e67: 6f        ret

; vcmd e6 - master volume fade
0e68: c4 2b     mov   $2b,a
0e6a: 3f 99 0d  call  $0d99
0e6d: c4 2c     mov   $2c,a
0e6f: 80        setc
0e70: a4 2a     sbc   a,$2a
0e72: f8 2b     mov   x,$2b
0e74: 3f 39 10  call  $1039
0e77: da 2d     movw  $2d,ya
0e79: 6f        ret

; vcmd e7 - tempo
0e7a: e5 23 05  mov   a,$0523
0e7d: f0 10     beq   $0e8f
0e7f: 9c        dec   a
0e80: 1c        asl   a
0e81: 1c        asl   a
0e82: 4d        push  x
0e83: 5d        mov   x,a
0e84: e8 00     mov   a,#$00
0e86: d5 01 05  mov   $0501+x,a
0e89: dd        mov   a,y
0e8a: d5 02 05  mov   $0502+x,a
0e8d: ce        pop   x
0e8e: 6f        ret
;
0e8f: e5 90 05  mov   a,$0590
0e92: d0 04     bne   $0e98
0e94: e8 00     mov   a,#$00
0e96: da 23     movw  $23,ya
0e98: 6f        ret

; vcmd e8 - tempo fade
0e99: c4 25     mov   $25,a
0e9b: 3f 99 0d  call  $0d99
0e9e: c4 26     mov   $26,a
0ea0: 80        setc
0ea1: a4 24     sbc   a,$24
0ea3: f8 25     mov   x,$25
0ea5: 3f 39 10  call  $1039
0ea8: da 27     movw  $27,ya
0eaa: 6f        ret

; vcmd e9 - global transpose
0eab: c4 5f     mov   $5f,a
0ead: 6f        ret

; vcmd ea - per-voice transpose
0eae: d5 80 03  mov   $0380+x,a
0eb1: 6f        ret

; vcmd eb - tremolo on
0eb2: d5 60 03  mov   $0360+x,a
0eb5: 3f 99 0d  call  $0d99
0eb8: d5 41 03  mov   $0341+x,a
0ebb: 3f 99 0d  call  $0d99
; vcmd ec - tremolo off
0ebe: d4 c1     mov   $c1+x,a
0ec0: 6f        ret

; vcmd f1 - pitch envelope (release)
0ec1: e8 01     mov   a,#$01
0ec3: 2f 02     bra   $0ec7
; vcmd f2 - pitch envelope (attack)
0ec5: e8 00     mov   a,#$00
0ec7: d5 c0 02  mov   $02c0+x,a
0eca: dd        mov   a,y
0ecb: d5 a1 02  mov   $02a1+x,a
0ece: 3f 99 0d  call  $0d99
0ed1: d5 a0 02  mov   $02a0+x,a
0ed4: 3f 99 0d  call  $0d99
0ed7: d5 c1 02  mov   $02c1+x,a
0eda: 6f        ret

; vcmd f3 - pitch envelope off
0edb: d5 a0 02  mov   $02a0+x,a
0ede: 6f        ret

; vcmd ed - volume
0edf: d5 a1 03  mov   $03a1+x,a
0ee2: e8 00     mov   a,#$00
0ee4: d5 a0 03  mov   $03a0+x,a
0ee7: 6f        ret

; vcmd ee - volume fade
0ee8: d5 30 05  mov   $0530+x,a
0eeb: 2d        push  a
0eec: 3f 99 0d  call  $0d99
0eef: d5 e0 03  mov   $03e0+x,a
0ef2: 80        setc
0ef3: b5 a1 03  sbc   a,$03a1+x
0ef6: ce        pop   x
0ef7: 3f 39 10  call  $1039
0efa: d5 c0 03  mov   $03c0+x,a
0efd: dd        mov   a,y
0efe: d5 c1 03  mov   $03c1+x,a
0f01: 6f        ret

; vcmd f4 - tuning
0f02: d5 a1 04  mov   $04a1+x,a
0f05: 6f        ret

; vcmd ef - call subroutine
0f06: d5 80 02  mov   $0280+x,a
0f09: 3f 99 0d  call  $0d99
0f0c: d5 81 02  mov   $0281+x,a         ; $0280/1+X - destination (arg1/2)
0f0f: 3f 99 0d  call  $0d99
0f12: d5 50 05  mov   $0550+x,a         ; repeat count from arg3
0f15: f4 00     mov   a,$00+x
0f17: d5 60 02  mov   $0260+x,a
0f1a: f4 01     mov   a,$01+x
0f1c: d5 61 02  mov   $0261+x,a         ; $0260/1+X - return addr
; jump to $0280/1+X (loop destination)
0f1f: f5 80 02  mov   a,$0280+x
0f22: d4 00     mov   $00+x,a
0f24: f5 81 02  mov   a,$0281+x
0f27: d4 01     mov   $01+x,a
0f29: 6f        ret

; vcmd f5 - echo vbits/volume
0f2a: c5 1b 05  mov   $051b,a
0f2d: e5 13 05  mov   a,$0513
0f30: d0 1a     bne   $0f4c
0f32: e5 2d 05  mov   a,$052d
0f35: 48 ff     eor   a,#$ff
0f37: 25 1b 05  and   a,$051b
0f3a: c4 5a     mov   $5a,a
0f3c: 3f 99 0d  call  $0d99
0f3f: e8 00     mov   a,#$00
0f41: da 30     movw  $30,ya
0f43: 3f 99 0d  call  $0d99
0f46: e8 00     mov   a,#$00
0f48: da 32     movw  $32,ya
0f4a: b2 58     clr5  $58
0f4c: 6f        ret

; vcmd f8 - echo volume fade
0f4d: c4 38     mov   $38,a
0f4f: 3f 99 0d  call  $0d99
0f52: c4 39     mov   $39,a
0f54: 80        setc
0f55: a4 31     sbc   a,$31
0f57: f8 38     mov   x,$38
0f59: 3f 39 10  call  $1039
0f5c: da 34     movw  $34,ya
0f5e: 3f 99 0d  call  $0d99
0f61: c4 3a     mov   $3a,a
0f63: 80        setc
0f64: a4 33     sbc   a,$33
0f66: f8 38     mov   x,$38
0f68: 3f 39 10  call  $1039
0f6b: da 36     movw  $36,ya
0f6d: 6f        ret

; vcmd f6 - disable echo
0f6e: e5 13 05  mov   a,$0513
0f71: d0 04     bne   $0f77
0f73: da 30     movw  $30,ya
0f75: da 32     movw  $32,ya
0f77: a2 58     set5  $58
0f79: 6f        ret

; vcmd f7 - set echo params
0f7a: c5 95 05  mov   $0595,a
0f7d: 3f a2 0f  call  $0fa2
0f80: 3f 99 0d  call  $0d99
0f83: c4 5e     mov   $5e,a
0f85: 3f 99 0d  call  $0d99
0f88: c5 96 05  mov   $0596,a
0f8b: 8d 08     mov   y,#$08
0f8d: cf        mul   ya
0f8e: 5d        mov   x,a
0f8f: 8d 0f     mov   y,#$0f
0f91: f5 6e 13  mov   a,$136e+x
0f94: 3f 56 08  call  $0856             ; set FIR C0-C7
0f97: 3d        inc   x
0f98: dd        mov   a,y
0f99: 60        clrc
0f9a: 88 10     adc   a,#$10
0f9c: fd        mov   y,a
0f9d: 10 f2     bpl   $0f91
0f9f: f8 54     mov   x,$54
0fa1: 6f        ret

0fa2: c4 5d     mov   $5d,a
0fa4: 8d 7d     mov   y,#$7d
0fa6: cc f2 00  mov   $00f2,y
0fa9: e5 f3 00  mov   a,$00f3           ; get EDL
0fac: 64 5d     cmp   a,$5d
0fae: f0 2b     beq   $0fdb
0fb0: 28 0f     and   a,#$0f
0fb2: 48 ff     eor   a,#$ff
0fb4: f3 5b 03  bbc7  $5b,$0fba
0fb7: 60        clrc
0fb8: 84 5b     adc   a,$5b
0fba: c4 5b     mov   $5b,a
0fbc: 8d 04     mov   y,#$04
0fbe: f6 8d 13  mov   a,$138d+y
0fc1: c5 f2 00  mov   $00f2,a
0fc4: e8 00     mov   a,#$00
0fc6: c5 f3 00  mov   $00f3,a
0fc9: fe f3     dbnz  y,$0fbe
0fcb: e4 58     mov   a,$58
0fcd: 08 20     or    a,#$20
0fcf: 8d 6c     mov   y,#$6c
0fd1: 3f 56 08  call  $0856             ; disable echo
0fd4: e4 5d     mov   a,$5d
0fd6: 8d 7d     mov   y,#$7d
0fd8: 3f 56 08  call  $0856             ; set EDL
0fdb: 1c        asl   a
0fdc: 1c        asl   a
0fdd: 1c        asl   a
0fde: 48 ff     eor   a,#$ff
0fe0: 80        setc
0fe1: 88 f9     adc   a,#$f9
0fe3: 8d 6d     mov   y,#$6d
0fe5: 5f 56 08  jmp   $0856             ; set ESA

; vcmd fa - set perc patch base
0fe8: ec 23 05  mov   y,$0523
0feb: d0 02     bne   $0fef
0fed: c4 3f     mov   $3f,a
0fef: 6f        ret

0ff0: f5 70 05  mov   a,$0570+x
0ff3: d0 38     bne   $102d
0ff5: e7 00     mov   a,($00+x)
0ff7: 68 f9     cmp   a,#$f9
0ff9: d0 32     bne   $102d
0ffb: 3f 9b 0d  call  $0d9b
0ffe: 3f 99 0d  call  $0d99
; vcmd f9 - pitch slide
1001: d5 71 05  mov   $0571+x,a
1004: 3f 99 0d  call  $0d99
1007: d5 70 05  mov   $0570+x,a
100a: 3f 99 0d  call  $0d99
100d: 60        clrc
100e: 84 5f     adc   a,$5f             ; add global transpose
1010: 95 80 03  adc   a,$0380+x         ; per-voice transpose
1013: 28 7f     and   a,#$7f
1015: d5 a0 04  mov   $04a0+x,a
1018: 80        setc                    ; final portamento value
1019: b5 61 04  sbc   a,$0461+x
101c: 2d        push  a                 ; note number
101d: f5 70 05  mov   a,$0570+x         ; portamento steps
1020: fd        mov   y,a
1021: 5d        mov   x,a
1022: ae        pop   a
1023: 3f 39 10  call  $1039
1026: d5 80 04  mov   $0480+x,a
1029: dd        mov   a,y
102a: d5 81 04  mov   $0481+x,a         ; portamento delta
102d: 6f        ret

102e: f5 61 04  mov   a,$0461+x
1031: c4 49     mov   $49,a
1033: f5 60 04  mov   a,$0460+x
1036: c4 48     mov   $48,a
1038: 6f        ret

; signed 16 bit division
1039: ed        notc
103a: 6b 4a     ror   $4a
103c: 10 03     bpl   $1041
103e: 48 ff     eor   a,#$ff
1040: bc        inc   a
1041: 8d 00     mov   y,#$00
1043: 9e        div   ya,x
1044: 2d        push  a
1045: e8 00     mov   a,#$00
1047: 9e        div   ya,x
1048: ee        pop   y
1049: f8 54     mov   x,$54
104b: f3 4a 06  bbc7  $4a,$1054
104e: da 40     movw  $40,ya
1050: ba 46     movw  ya,$46
1052: 9a 40     subw  ya,$40
1054: 6f        ret

; vcmd dispatch table ($0f95)
1055: dw $0da3  ; e0 - set instrument
1057: dw $0dfc  ; e1 - pan
1059: dw $0e14  ; e2 - pan fade
105b: dw $0e37  ; e3 - vibrato on
105d: dw $0e43  ; e4 - vibrato off
105f: dw $0e5e  ; e5 - master volume
1061: dw $0e68  ; e6 - master volume fade
1063: dw $0e7a  ; e7 - tempo
1065: dw $0e99  ; e8 - tempo fade
1067: dw $0eab  ; e9 - global transpose
1069: dw $0eae  ; ea - per-voice transpose
106b: dw $0eb2  ; eb - tremolo on
106d: dw $0ebe  ; ec - tremolo off
106f: dw $0edf  ; ed - volume
1071: dw $0ee8  ; ee - volume fade
1073: dw $0f06  ; ef - call subroutine
1075: dw $0e4e  ; f0 - vibrato fade
1077: dw $0ec1  ; f1 - pitch envelope (release)
1079: dw $0ec5  ; f2 - pitch envelope (attack)
107b: dw $0edb  ; f3 - pitch envelope off
107d: dw $0f02  ; f4 - tuning
107f: dw $0f2a  ; f5 - echo vbits/volume
1081: dw $0f6e  ; f6 - disable echo
1083: dw $0f7a  ; f7 - set echo params
1085: dw $0f4d  ; f8 - echo volume fade
1087: dw $1001  ; f9 - pitch slide
1089: dw $0fe8  ; fa - set perc patch base
108b: dw $0000  ; fb
108d: dw $0000  ; fc
108f: dw $0000  ; fd
1091: dw $0000  ; fe
1093: dw $1853  ; ff - sub-vcmd

; vcmd lengths ($1035)
1095: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
109d: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
10a5: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
10ad: db $03,$03,$01,$02,$00,$00,$00,$03 ; f8-fa

10b5: f5 30 05  mov   a,$0530+x
10b8: f0 0b     beq   $10c5
10ba: 9c        dec   a
10bb: d5 30 05  mov   $0530+x,a
10be: e8 a0     mov   a,#$a0
10c0: 8d 03     mov   y,#$03
10c2: 3f 51 11  call  $1151
10c5: fb c1     mov   y,$c1+x
10c7: f0 23     beq   $10ec
10c9: f5 60 03  mov   a,$0360+x
10cc: de c0 1b  cbne  $c0+x,$10ea
10cf: 09 57 2f  or    ($2f),($57)
10d2: f5 40 03  mov   a,$0340+x
10d5: 10 07     bpl   $10de
10d7: fc        inc   y
10d8: d0 04     bne   $10de
10da: e8 80     mov   a,#$80
10dc: 2f 04     bra   $10e2
10de: 60        clrc
10df: 95 41 03  adc   a,$0341+x
10e2: d5 40 03  mov   $0340+x,a
10e5: 3f 3c 13  call  $133c
10e8: 2f 07     bra   $10f1
10ea: bb c0     inc   $c0+x
10ec: e8 ff     mov   a,#$ff
10ee: 3f 47 13  call  $1347
10f1: f5 31 05  mov   a,$0531+x
10f4: f0 0e     beq   $1104
10f6: f5 31 05  mov   a,$0531+x
10f9: 9c        dec   a
10fa: d5 31 05  mov   $0531+x,a
10fd: e8 00     mov   a,#$00
10ff: 8d 04     mov   y,#$04
1101: 3f 51 11  call  $1151
1104: e4 57     mov   a,$57
1106: 24 2f     and   a,$2f
1108: f0 46     beq   $1150
110a: f5 01 04  mov   a,$0401+x
110d: fd        mov   y,a
110e: f5 00 04  mov   a,$0400+x
1111: da 48     movw  $48,ya
1113: 7d        mov   a,x
1114: 9f        xcn   a
1115: 5c        lsr   a
1116: c4 4a     mov   $4a,a
1118: eb 49     mov   y,$49
111a: f6 5a 13  mov   a,$135a+y
111d: 80        setc
111e: b6 59 13  sbc   a,$1359+y
1121: eb 48     mov   y,$48
1123: cf        mul   ya
1124: dd        mov   a,y
1125: eb 49     mov   y,$49
1127: 60        clrc
1128: 96 59 13  adc   a,$1359+y
112b: fd        mov   y,a
112c: f5 e1 03  mov   a,$03e1+x
112f: cf        mul   ya
1130: f5 41 04  mov   a,$0441+x
1133: 1c        asl   a
1134: 13 4a 01  bbc0  $4a,$1138
1137: 1c        asl   a
1138: dd        mov   a,y
1139: 90 03     bcc   $113e
113b: 48 ff     eor   a,#$ff
113d: bc        inc   a
113e: eb 4a     mov   y,$4a
1140: 3f 4e 08  call  $084e
1143: 8d 14     mov   y,#$14
1145: e8 00     mov   a,#$00
1147: 9a 48     subw  ya,$48
1149: da 48     movw  $48,ya
114b: ab 4a     inc   $4a
114d: 33 4a c8  bbc1  $4a,$1118
1150: 6f        ret

1151: 09 57 2f  or    ($2f),($57)
1154: da 40     movw  $40,ya
1156: da 42     movw  $42,ya
1158: 4d        push  x
1159: ee        pop   y
115a: 60        clrc
115b: d0 0a     bne   $1167
115d: 98 3f 42  adc   $42,#$3f
1160: e8 00     mov   a,#$00
1162: d7 40     mov   ($40)+y,a
1164: fc        inc   y
1165: 2f 09     bra   $1170
1167: 98 20 42  adc   $42,#$20
116a: 3f 6e 11  call  $116e
116d: fc        inc   y
116e: f7 40     mov   a,($40)+y
1170: 97 42     adc   a,($42)+y
1172: d7 40     mov   ($40)+y,a
1174: 6f        ret

1175: f4 61     mov   a,$61+x
1177: d0 03     bne   $117c
1179: 5f 1e 12  jmp   $121e

117c: 9b 61     dec   $61+x
117e: f0 09     beq   $1189
1180: e8 02     mov   a,#$02
1182: 74 60     cmp   a,$60+x
1184: f0 03     beq   $1189
1186: 5f 1e 12  jmp   $121e

1189: f5 50 05  mov   a,$0550+x
118c: c4 43     mov   $43,a
118e: 7d        mov   a,x
118f: 68 10     cmp   a,#$10
1191: 90 0b     bcc   $119e
1193: 28 0f     and   a,#$0f
1195: fd        mov   y,a
1196: f6 e1 04  mov   a,$04e1+y
1199: f0 03     beq   $119e
119b: 5f 1e 12  jmp   $121e

119e: e5 0f 05  mov   a,$050f
11a1: f0 0f     beq   $11b2
11a3: c8 10     cmp   x,#$10
11a5: b0 0b     bcs   $11b2
11a7: 3f 1c 15  call  $151c
11aa: ad 00     cmp   y,#$00
11ac: f0 62     beq   $1210
11ae: ba 8a     movw  ya,$8a
11b0: 2f 04     bra   $11b6
11b2: f4 00     mov   a,$00+x
11b4: fb 01     mov   y,$01+x
11b6: da 40     movw  $40,ya
11b8: 8d 00     mov   y,#$00
11ba: f7 40     mov   a,($40)+y
11bc: f0 1e     beq   $11dc
11be: 30 07     bmi   $11c7
11c0: fc        inc   y
11c1: 30 4d     bmi   $1210
11c3: f7 40     mov   a,($40)+y
11c5: 10 f9     bpl   $11c0
11c7: 68 c8     cmp   a,#$c8
11c9: f0 53     beq   $121e
11cb: 68 ef     cmp   a,#$ef
11cd: f0 36     beq   $1205
11cf: 68 e0     cmp   a,#$e0
11d1: 90 3d     bcc   $1210
11d3: 6d        push  y
11d4: fd        mov   y,a
11d5: ae        pop   a
11d6: 96 b5 0f  adc   a,$0fb5+y
11d9: fd        mov   y,a
11da: 2f de     bra   $11ba
11dc: e4 43     mov   a,$43
11de: d0 0d     bne   $11ed
11e0: c8 10     cmp   x,#$10
11e2: b0 2c     bcs   $1210
11e4: 3f 1c 15  call  $151c
11e7: 68 c8     cmp   a,#$c8
11e9: f0 33     beq   $121e
11eb: 2f 23     bra   $1210
11ed: 8b 43     dec   $43
11ef: d0 0a     bne   $11fb
11f1: f5 61 02  mov   a,$0261+x
11f4: 2d        push  a
11f5: f5 60 02  mov   a,$0260+x
11f8: ee        pop   y
11f9: 2f bb     bra   $11b6
11fb: f5 81 02  mov   a,$0281+x
11fe: 2d        push  a
11ff: f5 80 02  mov   a,$0280+x
1202: ee        pop   y
1203: 2f b1     bra   $11b6
1205: fc        inc   y
1206: f7 40     mov   a,($40)+y
1208: 2d        push  a
1209: fc        inc   y
120a: f7 40     mov   a,($40)+y
120c: fd        mov   y,a
120d: ae        pop   a
120e: 2f a6     bra   $11b6
1210: e4 57     mov   a,$57
1212: 25 dd 04  and   a,$04dd
1215: d0 07     bne   $121e
1217: e4 57     mov   a,$57
1219: 8d 5c     mov   y,#$5c
121b: 3f 4e 08  call  $084e             ; set KOF if required
121e: f2 4b     clr7  $4b
1220: f5 70 05  mov   a,$0570+x
1223: f0 37     beq   $125c
1225: f5 71 05  mov   a,$0571+x
1228: f0 09     beq   $1233
122a: f5 71 05  mov   a,$0571+x
122d: 9c        dec   a
122e: d5 71 05  mov   $0571+x,a
1231: 2f 29     bra   $125c
1233: e2 4b     set7  $4b
1235: f5 70 05  mov   a,$0570+x
1238: 9c        dec   a
1239: d5 70 05  mov   $0570+x,a
123c: d0 0b     bne   $1249
123e: f5 a1 04  mov   a,$04a1+x
1241: d5 60 04  mov   $0460+x,a
1244: f5 a0 04  mov   a,$04a0+x
1247: 2f 10     bra   $1259
1249: 60        clrc
124a: f5 60 04  mov   a,$0460+x
124d: 95 80 04  adc   a,$0480+x
1250: d5 60 04  mov   $0460+x,a
1253: f5 61 04  mov   a,$0461+x
1256: 95 81 04  adc   a,$0481+x
1259: d5 61 04  mov   $0461+x,a
125c: 3f 2e 10  call  $102e
125f: f4 a1     mov   a,$a1+x
1261: f0 4c     beq   $12af
1263: f5 00 03  mov   a,$0300+x
1266: de a0 44  cbne  $a0+x,$12ad
1269: f5 00 01  mov   a,$0100+x
126c: 75 01 03  cmp   a,$0301+x
126f: d0 05     bne   $1276
1271: f5 21 03  mov   a,$0321+x
1274: 2f 0d     bra   $1283
1276: 40        setp
1277: bb 00     inc   $00+x
1279: 20        clrp
127a: fd        mov   y,a
127b: f0 02     beq   $127f
127d: f4 a1     mov   a,$a1+x
127f: 60        clrc
1280: 95 20 03  adc   a,$0320+x
1283: d4 a1     mov   $a1+x,a
1285: f5 e0 02  mov   a,$02e0+x
1288: 60        clrc
1289: 95 e1 02  adc   a,$02e1+x
128c: d5 e0 02  mov   $02e0+x,a
128f: c4 4a     mov   $4a,a
1291: 1c        asl   a
1292: 1c        asl   a
1293: 90 02     bcc   $1297
1295: 48 ff     eor   a,#$ff
1297: fd        mov   y,a
1298: f4 a1     mov   a,$a1+x
129a: 68 f1     cmp   a,#$f1
129c: 90 05     bcc   $12a3
129e: 28 0f     and   a,#$0f
12a0: cf        mul   ya
12a1: 2f 04     bra   $12a7
12a3: cf        mul   ya
12a4: dd        mov   a,y
12a5: 8d 00     mov   y,#$00
12a7: 3f 27 13  call  $1327
12aa: 5f cb 07  jmp   $07cb

12ad: bb a0     inc   $a0+x
12af: e3 4b f8  bbs7  $4b,$12aa
12b2: 6f        ret

12b3: f2 4b     clr7  $4b
12b5: f4 c1     mov   a,$c1+x
12b7: f0 09     beq   $12c2
12b9: f5 60 03  mov   a,$0360+x
12bc: de c0 03  cbne  $c0+x,$12c2
12bf: 3f 2f 13  call  $132f
12c2: f5 01 04  mov   a,$0401+x
12c5: fd        mov   y,a
12c6: f5 00 04  mov   a,$0400+x
12c9: da 48     movw  $48,ya
12cb: f5 31 05  mov   a,$0531+x
12ce: f0 0a     beq   $12da
12d0: f5 21 04  mov   a,$0421+x
12d3: fd        mov   y,a
12d4: f5 20 04  mov   a,$0420+x
12d7: 3f 11 13  call  $1311
12da: f3 4b 03  bbc7  $4b,$12e0
12dd: 3f 13 11  call  $1113
12e0: f2 4b     clr7  $4b
12e2: 3f 2e 10  call  $102e
12e5: f5 70 05  mov   a,$0570+x
12e8: f0 0f     beq   $12f9
12ea: f5 71 05  mov   a,$0571+x
12ed: d0 0a     bne   $12f9
12ef: f5 81 04  mov   a,$0481+x
12f2: fd        mov   y,a
12f3: f5 80 04  mov   a,$0480+x
12f6: 3f 11 13  call  $1311
12f9: f4 a1     mov   a,$a1+x
12fb: f0 b2     beq   $12af
12fd: f5 00 03  mov   a,$0300+x
1300: de a0 ac  cbne  $a0+x,$12af
1303: eb 22     mov   y,$22
1305: f5 e1 02  mov   a,$02e1+x
1308: cf        mul   ya
1309: dd        mov   a,y
130a: 60        clrc
130b: 95 e0 02  adc   a,$02e0+x
130e: 5f 8f 12  jmp   $128f

1311: e2 4b     set7  $4b
1313: cb 4a     mov   $4a,y
1315: 3f 4b 10  call  $104b
1318: 6d        push  y
1319: eb 22     mov   y,$22
131b: cf        mul   ya
131c: cb 40     mov   $40,y
131e: 8f 00 41  mov   $41,#$00
1321: eb 22     mov   y,$22
1323: ae        pop   a
1324: cf        mul   ya
1325: 7a 40     addw  ya,$40
1327: 3f 4b 10  call  $104b
132a: 7a 48     addw  ya,$48
132c: da 48     movw  $48,ya
132e: 6f        ret

132f: e2 4b     set7  $4b
1331: eb 22     mov   y,$22
1333: f5 41 03  mov   a,$0341+x
1336: cf        mul   ya
1337: dd        mov   a,y
1338: 60        clrc
1339: 95 40 03  adc   a,$0340+x
133c: 1c        asl   a
133d: 90 02     bcc   $1341
133f: 48 ff     eor   a,#$ff
1341: fb c1     mov   y,$c1+x
1343: cf        mul   ya
1344: dd        mov   a,y
1345: 48 ff     eor   a,#$ff
1347: eb 2a     mov   y,$2a
1349: cf        mul   ya
134a: f5 20 02  mov   a,$0220+x
134d: cf        mul   ya
134e: f5 a1 03  mov   a,$03a1+x
1351: cf        mul   ya
1352: dd        mov   a,y
1353: cf        mul   ya
1354: dd        mov   a,y
1355: d5 e1 03  mov   $03e1+x,a
1358: 6f        ret

; pan table
1359: db $00,$01,$03,$07,$0d,$15,$1e,$29
1361: db $34,$42,$51,$5e,$67,$6e,$73,$77
1369: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
136e: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
1376: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
137e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
1386: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($138d+1) for dsp regs ($1397+1)
138e: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1398: db $31,$33,$5e,$5a,$58,$55,$46,$59,$3d,$56

; pitch table
13a2: dw $085f
13a4: dw $08de
13a6: dw $0965
13a8: dw $09f4
13aa: dw $0a8c
13ac: dw $0b2c
13ae: dw $0bd6
13b0: dw $0c8b
13b2: dw $0d4a
13b4: dw $0e14
13b6: dw $0eea
13b8: dw $0fcd
13ba: dw $10be

13bc: e8 aa     mov   a,#$aa
13be: c5 f4 00  mov   $00f4,a
13c1: e8 bb     mov   a,#$bb
13c3: c5 f5 00  mov   $00f5,a
13c6: 2f 03     bra   $13cb
13c8: 3f e1 14  call  $14e1
13cb: cd cc     mov   x,#$cc
13cd: 1e f4 00  cmp   x,$00f4
13d0: d0 fb     bne   $13cd
13d2: e5 f6 00  mov   a,$00f6
13d5: ec f7 00  mov   y,$00f7
13d8: da 40     movw  $40,ya
13da: c9 f4 00  mov   $00f4,x
13dd: cd dd     mov   x,#$dd
13df: 1e f4 00  cmp   x,$00f4
13e2: d0 fb     bne   $13df
13e4: e5 f6 00  mov   a,$00f6
13e7: ec f7 00  mov   y,$00f7
13ea: da 8c     movw  $8c,ya
13ec: c9 f4 00  mov   $00f4,x
13ef: ba 8c     movw  ya,$8c
13f1: f0 0d     beq   $1400
13f3: ba 40     movw  ya,$40
13f5: f0 0f     beq   $1406
13f7: e8 ff     mov   a,#$ff
13f9: fd        mov   y,a
13fa: 5a 40     cmpw  ya,$40
13fc: f0 08     beq   $1406
13fe: 2f c8     bra   $13c8
1400: cd 17     mov   x,#$17
1402: c9 f1 00  mov   $00f1,x
1405: 6f        ret

1406: e5 d9 04  mov   a,$04d9
1409: d0 19     bne   $1424
140b: e5 db 04  mov   a,$04db
140e: c5 d9 04  mov   $04d9,a
1411: 5d        mov   x,a
1412: f5 23 1a  mov   a,$1a23+x
1415: c4 80     mov   $80,a
1417: e8 24     mov   a,#$24
1419: c4 81     mov   $81,a
141b: e8 00     mov   a,#$00
141d: c4 82     mov   $82,a
141f: f5 7b 1a  mov   a,$1a7b+x
1422: c4 83     mov   $83,a
1424: ba 82     movw  ya,$82
1426: da 84     movw  $84,ya
1428: e8 ff     mov   a,#$ff
142a: fd        mov   y,a
142b: 5a 40     cmpw  ya,$40
142d: d0 03     bne   $1432
142f: 5f c4 14  jmp   $14c4

1432: 9c        dec   a
1433: 5a 40     cmpw  ya,$40
1435: f0 36     beq   $146d
1437: ba 8c     movw  ya,$8c
1439: d0 01     bne   $143c
143b: 6f        ret

143c: ba 82     movw  ya,$82
143e: da 40     movw  $40,ya
1440: 3f e1 14  call  $14e1
1443: ba 40     movw  ya,$40
1445: da 82     movw  $82,ya
1447: cd cc     mov   x,#$cc
1449: 1e f4 00  cmp   x,$00f4
144c: d0 fb     bne   $1449
144e: e5 f6 00  mov   a,$00f6
1451: ec f7 00  mov   y,$00f7
1454: da 40     movw  $40,ya
1456: c9 f4 00  mov   $00f4,x
1459: cd dd     mov   x,#$dd
145b: 1e f4 00  cmp   x,$00f4
145e: d0 fb     bne   $145b
1460: e5 f6 00  mov   a,$00f6
1463: ec f7 00  mov   y,$00f7
1466: da 8c     movw  $8c,ya
1468: c9 f4 00  mov   $00f4,x
146b: 2f bb     bra   $1428
146d: e9 f4 00  mov   x,$00f4
1470: d0 fb     bne   $146d
1472: c9 f4 00  mov   $00f4,x
1475: 3d        inc   x
1476: 1e f4 00  cmp   x,$00f4
1479: d0 fb     bne   $1476
147b: e5 f5 00  mov   a,$00f5
147e: ec f6 00  mov   y,$00f6
1481: 7a 84     addw  ya,$84
1483: da 86     movw  $86,ya
1485: c9 f4 00  mov   $00f4,x
1488: e5 da 04  mov   a,$04da
148b: d0 04     bne   $1491
148d: ba 80     movw  ya,$80
148f: da 88     movw  $88,ya
1491: 3a 80     incw  $80
1493: 3a 80     incw  $80
1495: 3a 80     incw  $80
1497: 3a 80     incw  $80
1499: 8d 00     mov   y,#$00
149b: e4 84     mov   a,$84
149d: d7 88     mov   ($88)+y,a
149f: 3a 88     incw  $88
14a1: e4 85     mov   a,$85
14a3: d7 88     mov   ($88)+y,a
14a5: 3a 88     incw  $88
14a7: e4 86     mov   a,$86
14a9: d7 88     mov   ($88)+y,a
14ab: 3a 88     incw  $88
14ad: e4 87     mov   a,$87
14af: d7 88     mov   ($88)+y,a
14b1: 3a 88     incw  $88
14b3: ba 88     movw  ya,$88
14b5: 5a 80     cmpw  ya,$80
14b7: 90 e0     bcc   $1499
14b9: e8 00     mov   a,#$00
14bb: c5 da 04  mov   $04da,a
14be: ba 82     movw  ya,$82
14c0: da 84     movw  $84,ya
14c2: 2f 83     bra   $1447
14c4: e5 da 04  mov   a,$04da
14c7: d0 09     bne   $14d2
14c9: ba 80     movw  ya,$80
14cb: da 88     movw  $88,ya
14cd: e8 01     mov   a,#$01
14cf: c5 da 04  mov   $04da,a
14d2: 3f e1 14  call  $14e1
14d5: 8d 00     mov   y,#$00
14d7: e8 04     mov   a,#$04
14d9: 7a 80     addw  ya,$80
14db: da 80     movw  $80,ya
14dd: 5f 47 14  jmp   $1447

14e0: 6f        ret

14e1: e5 f4 00  mov   a,$00f4
14e4: d0 fb     bne   $14e1
14e6: c5 f4 00  mov   $00f4,a
14e9: 5d        mov   x,a
14ea: fd        mov   y,a
14eb: 3d        inc   x
14ec: c8 cc     cmp   x,#$cc
14ee: f0 fb     beq   $14eb
14f0: 1e f4 00  cmp   x,$00f4
14f3: d0 fb     bne   $14f0
14f5: e5 f5 00  mov   a,$00f5
14f8: d7 40     mov   ($40)+y,a
14fa: 3a 40     incw  $40
14fc: 1a 8c     decw  $8c
14fe: f0 16     beq   $1516
1500: e5 f6 00  mov   a,$00f6
1503: d7 40     mov   ($40)+y,a
1505: 3a 40     incw  $40
1507: 1a 8c     decw  $8c
1509: f0 0b     beq   $1516
150b: e5 f7 00  mov   a,$00f7
150e: d7 40     mov   ($40)+y,a
1510: 3a 40     incw  $40
1512: 1a 8c     decw  $8c
1514: f0 00     beq   $1516
1516: c9 f4 00  mov   $00f4,x
1519: d0 d0     bne   $14eb
151b: 6f        ret

151c: 8d 01     mov   y,#$01
151e: cc 0f 05  mov   $050f,y
1521: ba 50     movw  ya,$50
1523: da 8c     movw  $8c,ya
1525: 8d 00     mov   y,#$00
1527: f7 8c     mov   a,($8c)+y
1529: c4 84     mov   $84,a
152b: 3a 8c     incw  $8c
152d: f7 8c     mov   a,($8c)+y
152f: c4 85     mov   $85,a
1531: 3a 8c     incw  $8c
1533: e4 85     mov   a,$85
1535: d0 0f     bne   $1546
1537: e4 84     mov   a,$84
1539: f0 24     beq   $155f
153b: f7 8c     mov   a,($8c)+y
153d: 2d        push  a
153e: 3a 8c     incw  $8c
1540: f7 8c     mov   a,($8c)+y
1542: fd        mov   y,a
1543: ae        pop   a
1544: 2f dd     bra   $1523
1546: 7d        mov   a,x
1547: fd        mov   y,a
1548: f7 84     mov   a,($84)+y
154a: c4 8a     mov   $8a,a
154c: 3a 84     incw  $84
154e: f7 84     mov   a,($84)+y
1550: c4 8b     mov   $8b,a
1552: 8d ff     mov   y,#$ff
1554: fc        inc   y
1555: 30 08     bmi   $155f
1557: f7 8a     mov   a,($8a)+y
1559: 10 f9     bpl   $1554
155b: 68 ca     cmp   a,#$ca
155d: b0 f5     bcs   $1554
155f: 6f        ret

1560: e8 00     mov   a,#$00
1562: fd        mov   y,a
1563: c4 8c     mov   $8c,a
1565: 8f 02 8d  mov   $8d,#$02
1568: d7 8c     mov   ($8c)+y,a
156a: ab 8c     inc   $8c
156c: d0 fa     bne   $1568
156e: ab 8d     inc   $8d
1570: 78 06 8d  cmp   $8d,#$06
1573: d0 f3     bne   $1568
1575: c5 00 20  mov   $2000,a
1578: c5 01 20  mov   $2001,a
157b: c5 00 22  mov   $2200,a
157e: c5 00 23  mov   $2300,a
1581: 6f        ret

1582: ec db 04  mov   y,$04db
1585: f6 6b 19  mov   a,$196b+y
1588: f0 13     beq   $159d
158a: c4 8d     mov   $8d,a
158c: e8 00     mov   a,#$00
158e: fd        mov   y,a
158f: c4 8c     mov   $8c,a
1591: d7 8c     mov   ($8c)+y,a
1593: fc        inc   y
1594: d0 fb     bne   $1591
1596: ab 8d     inc   $8d
1598: 78 f9 8d  cmp   $8d,#$f9
159b: d0 f4     bne   $1591
159d: 6f        ret

159e: 4d        push  x
159f: 6d        push  y
15a0: 3f f0 15  call  $15f0
15a3: 3f 07 19  call  $1907
15a6: 8d 01     mov   y,#$01
15a8: f6 24 05  mov   a,$0524+y
15ab: f0 3a     beq   $15e7
15ad: 76 21 05  cmp   a,$0521+y
15b0: f0 2f     beq   $15e1
15b2: 68 f0     cmp   a,#$f0
15b4: b0 61     bcs   $1617
15b6: 5d        mov   x,a
15b7: f5 00 22  mov   a,$2200+x
15ba: c4 8c     mov   $8c,a
15bc: f5 00 23  mov   a,$2300+x
15bf: f0 20     beq   $15e1
15c1: cd 00     mov   x,#$00
15c3: 5c        lsr   a
15c4: b0 05     bcs   $15cb
15c6: 3d        inc   x
15c7: 68 00     cmp   a,#$00
15c9: d0 f8     bne   $15c3
15cb: 4d        push  x
15cc: f5 c0 04  mov   a,$04c0+x
15cf: 5d        mov   x,a
15d0: f5 00 22  mov   a,$2200+x
15d3: c4 8d     mov   $8d,a
15d5: ce        pop   x
15d6: f6 24 05  mov   a,$0524+y
15d9: 69 8d 8c  cmp   ($8c),($8d)
15dc: 90 03     bcc   $15e1
15de: d5 c0 04  mov   $04c0+x,a
15e1: f6 24 05  mov   a,$0524+y
15e4: d6 f4 00  mov   $00f4+y,a
15e7: d6 21 05  mov   $0521+y,a
15ea: dc        dec   y
15eb: 10 bb     bpl   $15a8
15ed: ee        pop   y
15ee: ce        pop   x
15ef: 6f        ret

15f0: e5 f4 00  mov   a,$00f4
15f3: c5 24 05  mov   $0524,a
15f6: e5 f4 00  mov   a,$00f4
15f9: 65 f4 00  cmp   a,$00f4
15fc: d0 f2     bne   $15f0
15fe: 65 24 05  cmp   a,$0524
1601: d0 ed     bne   $15f0
1603: e5 f5 00  mov   a,$00f5
1606: c5 25 05  mov   $0525,a
1609: e5 f5 00  mov   a,$00f5
160c: 65 f5 00  cmp   a,$00f5
160f: d0 f2     bne   $1603
1611: 65 25 05  cmp   a,$0525
1614: d0 ed     bne   $1603
1616: 6f        ret

1617: 2d        push  a
1618: 6d        push  y
1619: 3f 33 16  call  $1633
161c: ee        pop   y
161d: ae        pop   a
161e: 68 f3     cmp   a,#$f3
1620: b0 bf     bcs   $15e1
1622: e8 dd     mov   a,#$dd
1624: c5 f6 00  mov   $00f6,a
1627: e8 ee     mov   a,#$ee
1629: c5 f7 00  mov   $00f7,a
162c: e8 00     mov   a,#$00
162e: c5 f4 00  mov   $00f4,a
1631: 2f ba     bra   $15ed
1633: 80        setc
1634: a8 f0     sbc   a,#$f0
1636: c5 92 05  mov   $0592,a
1639: 1c        asl   a
163a: fd        mov   y,a
163b: f6 45 16  mov   a,$1645+y
163e: 2d        push  a
163f: f6 44 16  mov   a,$1644+y
1642: 2d        push  a
1643: 6f        ret

1644: dw $086b  ; f0
1646: dw $086b  ; f1
1648: dw $086b  ; f2
164a: dw $17a1  ; f3
164c: dw $17d1  ; f4
164e: dw $17e9  ; f5
1650: dw $17f0  ; f6
1652: dw $1818  ; f7
1654: dw $1733  ; f8
1656: dw $1825  ; f9
1658: dw $1826  ; fa
165a: dw $182c  ; fb
165c: dw $17a8  ; fc
165e: dw $184a  ; fd
1660: dw $1733  ; fe
1662: dw $1733  ; ff

1664: e5 91 05  mov   a,$0591
1667: f0 01     beq   $166a
1669: 6f        ret

166a: 4d        push  x
166b: 6d        push  y
166c: 8f 00 8f  mov   $8f,#$00
166f: eb 8f     mov   y,$8f
1671: f6 c0 04  mov   a,$04c0+y
1674: f0 6e     beq   $16e4
1676: 6d        push  y
1677: 8f c0 8a  mov   $8a,#$c0
167a: 8f 04 8b  mov   $8b,#$04
167d: 3f f8 16  call  $16f8
1680: cb 8f     mov   $8f,y
1682: ee        pop   y
1683: e4 8e     mov   a,$8e
1685: f0 5d     beq   $16e4
1687: 6d        push  y
1688: 8f d0 8a  mov   $8a,#$d0
168b: 8f 04 8b  mov   $8b,#$04
168e: 3f f8 16  call  $16f8
1691: ee        pop   y
1692: e4 8e     mov   a,$8e
1694: f0 4e     beq   $16e4
1696: f6 c0 04  mov   a,$04c0+y
1699: c5 17 05  mov   $0517,a
169c: dd        mov   a,y
169d: f0 31     beq   $16d0
169f: 6d        push  y
16a0: e5 17 05  mov   a,$0517
16a3: 3f e7 0a  call  $0ae7
16a6: e9 17 05  mov   x,$0517
16a9: f5 00 23  mov   a,$2300+x
16ac: c4 8d     mov   $8d,a
16ae: cd 00     mov   x,#$00
16b0: 8d 00     mov   y,#$00
16b2: 4b 8d     lsr   $8d
16b4: 90 11     bcc   $16c7
16b6: f6 d0 04  mov   a,$04d0+y
16b9: f0 06     beq   $16c1
16bb: cc 23 05  mov   $0523,y
16be: 3f 02 0a  call  $0a02
16c1: e5 17 05  mov   a,$0517
16c4: d6 d0 04  mov   $04d0+y,a
16c7: 3d        inc   x
16c8: 3d        inc   x
16c9: fc        inc   y
16ca: 78 00 8d  cmp   $8d,#$00
16cd: d0 e3     bne   $16b2
16cf: ee        pop   y
16d0: e5 17 05  mov   a,$0517
16d3: d6 c8 04  mov   $04c8+y,a
16d6: cc 23 05  mov   $0523,y
16d9: 3f b4 09  call  $09b4
16dc: e5 2c 05  mov   a,$052c
16df: f0 03     beq   $16e4
16e1: 3f 14 0b  call  $0b14
16e4: ab 8f     inc   $8f
16e6: 78 08 8f  cmp   $8f,#$08
16e9: 90 84     bcc   $166f
16eb: e8 00     mov   a,#$00
16ed: 8d 08     mov   y,#$08
16ef: dc        dec   y
16f0: d6 c0 04  mov   $04c0+y,a
16f3: d0 fa     bne   $16ef
16f5: ee        pop   y
16f6: ce        pop   x
16f7: 6f        ret

16f8: f6 c0 04  mov   a,$04c0+y
16fb: 5d        mov   x,a
16fc: f5 00 23  mov   a,$2300+x
16ff: c4 8c     mov   $8c,a
1701: f5 00 22  mov   a,$2200+x
1704: c5 1d 05  mov   $051d,a
1707: 8d 00     mov   y,#$00
1709: 8f 01 8e  mov   $8e,#$01
170c: e4 8f     mov   a,$8f
170e: d0 03     bne   $1713
1710: 8f 01 8c  mov   $8c,#$01
1713: 4b 8c     lsr   $8c
1715: 90 14     bcc   $172b
1717: f7 8a     mov   a,($8a)+y
1719: 5d        mov   x,a
171a: f5 00 22  mov   a,$2200+x
171d: c4 8d     mov   $8d,a
171f: e5 1d 05  mov   a,$051d
1722: 64 8d     cmp   a,$8d
1724: b0 05     bcs   $172b
1726: 8f 00 8e  mov   $8e,#$00
1729: 2f 06     bra   $1731
172b: fc        inc   y
172c: 78 00 8c  cmp   $8c,#$00
172f: d0 e2     bne   $1713
1731: dc        dec   y
1732: 6f        ret

1733: 6f        ret

1734: e5 fe 00  mov   a,$00fe
1737: e9 13 05  mov   x,$0513
173a: f0 3a     beq   $1776
173c: 85 27 05  adc   a,$0527
173f: 68 32     cmp   a,#$32
1741: 90 33     bcc   $1776
1743: c8 02     cmp   x,#$02
1745: f0 33     beq   $177a
1747: e5 26 05  mov   a,$0526
174a: f0 08     beq   $1754
174c: 80        setc
174d: a5 28 05  sbc   a,$0528
1750: 68 80     cmp   a,#$80
1752: 90 1d     bcc   $1771
1754: e4 31     mov   a,$31
1756: 80        setc
1757: a5 2a 05  sbc   a,$052a
175a: 68 80     cmp   a,#$80
175c: 90 0d     bcc   $176b
175e: e8 ff     mov   a,#$ff
1760: 3f ea 18  call  $18ea
1763: e8 00     mov   a,#$00
1765: c5 f6 00  mov   $00f6,a
1768: c5 13 05  mov   $0513,a
176b: c4 31     mov   $31,a
176d: c4 33     mov   $33,a
176f: e8 00     mov   a,#$00
1771: 3f a1 18  call  $18a1
1774: e8 00     mov   a,#$00
1776: c5 27 05  mov   $0527,a
1779: 6f        ret

177a: e4 31     mov   a,$31
177c: 60        clrc
177d: 85 2a 05  adc   a,$052a
1780: 65 93 05  cmp   a,$0593
1783: 90 14     bcc   $1799
1785: e5 26 05  mov   a,$0526
1788: 60        clrc
1789: 85 28 05  adc   a,$0528
178c: 68 80     cmp   a,#$80
178e: 90 0f     bcc   $179f
1790: e8 00     mov   a,#$00
1792: c5 13 05  mov   $0513,a
1795: e8 60     mov   a,#$60
1797: 2f 06     bra   $179f
1799: c4 31     mov   $31,a
179b: c4 33     mov   $33,a
179d: e8 00     mov   a,#$00
179f: 2f d0     bra   $1771
17a1: e8 01     mov   a,#$01
17a3: c5 13 05  mov   $0513,a
17a6: 2f 05     bra   $17ad
17a8: e8 02     mov   a,#$02
17aa: c5 13 05  mov   $0513,a
17ad: e5 f7 00  mov   a,$00f7
17b0: 5d        mov   x,a
17b1: 8d 00     mov   y,#$00
17b3: cc 27 05  mov   $0527,y
17b6: e8 60     mov   a,#$60
17b8: 9e        div   ya,x
17b9: d0 01     bne   $17bc
17bb: bc        inc   a
17bc: c5 28 05  mov   $0528,a
17bf: e4 31     mov   a,$31
17c1: c5 93 05  mov   $0593,a
17c4: 8d 00     mov   y,#$00
17c6: e9 f7 00  mov   x,$00f7
17c9: 9e        div   ya,x
17ca: d0 01     bne   $17cd
17cc: bc        inc   a
17cd: c5 2a 05  mov   $052a,a
17d0: 6f        ret

17d1: e8 00     mov   a,#$00
17d3: c5 13 05  mov   $0513,a
17d6: c4 5a     mov   $5a,a
17d8: eb 4d     mov   y,$4d
17da: 3f 4e 08  call  $084e             ; set KOF if required
17dd: e8 60     mov   a,#$60
17df: 3f a1 18  call  $18a1
17e2: e8 00     mov   a,#$00
17e4: fd        mov   y,a
17e5: 3f 6e 0f  call  $0f6e
17e8: 6f        ret

17e9: e8 00     mov   a,#$00
17eb: c5 07 05  mov   $0507,a
17ee: 2f 05     bra   $17f5
17f0: e8 01     mov   a,#$01
17f2: c5 07 05  mov   $0507,a
17f5: cd 0e     mov   x,#$0e
17f7: 8f 80 57  mov   $57,#$80
17fa: f5 e0 04  mov   a,$04e0+x
17fd: ec 07 05  mov   y,$0507
1800: f0 02     beq   $1804
1802: e8 0a     mov   a,#$0a
1804: d5 41 04  mov   $0441+x,a
1807: 28 1f     and   a,#$1f
1809: d5 01 04  mov   $0401+x,a
180c: e8 00     mov   a,#$00
180e: d5 00 04  mov   $0400+x,a
1811: 1d        dec   x
1812: 1d        dec   x
1813: 4b 57     lsr   $57
1815: d0 e3     bne   $17fa
1817: 6f        ret

1818: ec f7 00  mov   y,$00f7
181b: e8 00     mov   a,#$00
181d: da 23     movw  $23,ya
181f: e8 01     mov   a,#$01
1821: c5 90 05  mov   $0590,a
1824: 6f        ret

1825: 6f        ret

1826: e8 01     mov   a,#$01
1828: c5 91 05  mov   $0591,a
182b: 6f        ret

182c: e8 00     mov   a,#$00
182e: c5 91 05  mov   $0591,a
1831: c5 c0 04  mov   $04c0,a
1834: c5 c1 04  mov   $04c1,a
1837: c5 c2 04  mov   $04c2,a
183a: c5 c3 04  mov   $04c3,a
183d: c5 c4 04  mov   $04c4,a
1840: c5 c5 04  mov   $04c5,a
1843: c5 c6 04  mov   $04c6,a
1846: c5 c7 04  mov   $04c7,a
1849: 6f        ret

184a: e5 f7 00  mov   a,$00f7
184d: 28 7f     and   a,#$7f
184f: 3f a1 18  call  $18a1
1852: 6f        ret

; vcmd ff - sub-vcmd
1853: 1c        asl   a
1854: fd        mov   y,a
1855: f6 62 18  mov   a,$1862+y
1858: 2d        push  a
1859: f6 61 18  mov   a,$1861+y
185c: 2d        push  a
185d: 3f 99 0d  call  $0d99
1860: 6f        ret

; sub-vcmd dispatch table
1861: dw $18cc  ; 00
1863: dw $18ef  ; 01 - channel echo on
1865: dw $18fa  ; 02 - channel echo off
1867: dw $18af  ; 03
1869: dw $18a1  ; 04 - hardware master volume
186b: dw $1896  ; 05
186d: dw $1895  ; 06
186f: dw $1884  ; 07
1871: dw $1873  ; 08

; sub-vcmd 08
1873: e5 94 05  mov   a,$0594
1876: ad 00     cmp   y,#$00
1878: f0 04     beq   $187e
187a: 08 80     or    a,#$80
187c: 2f 02     bra   $1880
187e: 28 7f     and   a,#$7f
1880: c5 f7 00  mov   $00f7,a
1883: 6f        ret

; sub-vcmd 07
1884: ac 94 05  inc   $0594
1887: d0 05     bne   $188e
1889: e8 80     mov   a,#$80
188b: c5 94 05  mov   $0594,a
188e: e5 94 05  mov   a,$0594
1891: c5 f7 00  mov   $00f7,a
1894: 6f        ret

; sub-vcmd 06
1895: 6f        ret

; sub-vcmd 05
1896: d8 8c     mov   $8c,x
1898: 38 0f 8c  and   $8c,#$0f
189b: eb 8c     mov   y,$8c
189d: d6 e1 04  mov   $04e1+y,a
18a0: 6f        ret

; sub-vcmd 04
18a1: c5 26 05  mov   $0526,a
18a4: 8d 0c     mov   y,#$0c
18a6: 3f 56 08  call  $0856             ; set MVOL(L)
18a9: 8d 1c     mov   y,#$1c
18ab: 3f 56 08  call  $0856             ; set MVOL(R)
18ae: 6f        ret

; sub-vcmd 03
18af: 4d        push  x
18b0: 2d        push  a
18b1: e8 02     mov   a,#$02
18b3: c5 13 05  mov   $0513,a
18b6: ce        pop   x
18b7: 8d 00     mov   y,#$00
18b9: cc 27 05  mov   $0527,y
18bc: e8 60     mov   a,#$60
18be: 9e        div   ya,x
18bf: d0 01     bne   $18c2
18c1: bc        inc   a
18c2: c5 28 05  mov   $0528,a
18c5: e8 00     mov   a,#$00
18c7: 3f a1 18  call  $18a1
18ca: ce        pop   x
18cb: 6f        ret

; sub-vcmd 00
18cc: c5 0b 05  mov   $050b,a
18cf: d0 01     bne   $18d2
18d1: 6f        ret

18d2: e8 00     mov   a,#$00
18d4: c5 cb 04  mov   $04cb,a
18d7: c5 cc 04  mov   $04cc,a
18da: c5 cd 04  mov   $04cd,a
18dd: c5 ce 04  mov   $04ce,a
18e0: c5 cf 04  mov   $04cf,a
18e3: e8 ff     mov   a,#$ff
18e5: 8d 5c     mov   y,#$5c
18e7: 5f 56 08  jmp   $0856             ; set KOF

18ea: 8d 5c     mov   y,#$5c
18ec: 5f 4e 08  jmp   $084e             ; set KOF if required

; sub-vcmd 01 - channel echo on
18ef: 7d        mov   a,x
18f0: 5c        lsr   a
18f1: fd        mov   y,a
18f2: f6 47 19  mov   a,$1947+y
18f5: 04 5a     or    a,$5a
18f7: c4 5a     mov   $5a,a
18f9: 6f        ret

; sub-vcmd 02 - channel echo off
18fa: 7d        mov   a,x
18fb: 5c        lsr   a
18fc: fd        mov   y,a
18fd: f6 47 19  mov   a,$1947+y
1900: 48 ff     eor   a,#$ff
1902: 24 5a     and   a,$5a
1904: c4 5a     mov   $5a,a
1906: 6f        ret

1907: 4d        push  x
1908: 6d        push  y
1909: e8 00     mov   a,#$00
190b: c5 dc 04  mov   $04dc,a
190e: e9 db 04  mov   x,$04db
1911: f5 cb 19  mov   a,$19cb+x
1914: c4 8c     mov   $8c,a
1916: 8d 02     mov   y,#$02
1918: f6 23 05  mov   a,$0523+y
191b: 64 8c     cmp   a,$8c
191d: 90 07     bcc   $1926
191f: 68 f0     cmp   a,#$f0
1921: b0 03     bcs   $1926
1923: ac dc 04  inc   $04dc
1926: dc        dec   y
1927: d0 ef     bne   $1918
1929: e5 dc 04  mov   a,$04dc
192c: f0 16     beq   $1944
192e: e5 f4 00  mov   a,$00f4
1931: c5 f4 00  mov   $00f4,a
1934: e5 f5 00  mov   a,$00f5
1937: c5 f5 00  mov   $00f5,a
193a: e8 05     mov   a,#$05
193c: c5 24 05  mov   $0524,a
193f: e8 00     mov   a,#$00
1941: c5 25 05  mov   $0525,a
1944: ee        pop   y
1945: ce        pop   x
1946: 6f        ret

1947: db $01,$02,$04,$08,$10,$20,$40,$80,
194f: db $01,$02,$04,$08,$10,$20,$40,$80,

1957: db $10,$12,$14,$16,$18,$1a,$1c,$1e
195f: db $00,$0a,$0b,$0c,$0d,$0e,$00,$02

1967: db $06,$0e,$1e,$3e
