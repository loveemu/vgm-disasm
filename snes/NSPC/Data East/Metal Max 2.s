0580: 20        clrp
0581: cd cf     mov   x,#$cf
0583: bd        mov   sp,x              ; set SP to (01)cf
0584: e8 00     mov   a,#$00
0586: 5d        mov   x,a
0587: af        mov   (x)+,a
0588: c8 e0     cmp   x,#$e0
058a: d0 fb     bne   $0587             ; zero 00-e0
058c: e8 00     mov   a,#$00
058e: c5 f4 00  mov   $00f4,a
0591: bc        inc   a
0592: c5 f5 00  mov   $00f5,a
0595: bc        inc   a
0596: c5 f6 00  mov   $00f6,a
0599: bc        inc   a
059a: c5 f7 00  mov   $00f7,a
059d: 3f 28 14  call  $1428
05a0: e8 00     mov   a,#$00
05a2: bc        inc   a
05a3: 3f 3c 0e  call  $0e3c
05a6: a2 58     set5  $58
05a8: e8 7f     mov   a,#$7f
05aa: 3f a2 16  call  $16a2
05ad: e8 22     mov   a,#$22
05af: 8d 5d     mov   y,#$5d
05b1: 3f eb 07  call  $07eb             ; source dir = $2200
05b4: e8 f0     mov   a,#$f0
05b6: c5 f1 00  mov   $00f1,a
05b9: e8 10     mov   a,#$10
05bb: c5 fa 00  mov   $00fa,a           ; set timer 0 latch to #$10 (500 Hz, 2ms)
05be: c5 fb 00  mov   $00fb,a           ; set timer 1 latch to #$10 (500 Hz, 2ms)
05c1: c4 24     mov   $24,a
05c3: c5 72 05  mov   $0572,a
05c6: c5 76 05  mov   $0576,a
05c9: c5 7a 05  mov   $057a,a
05cc: e8 03     mov   a,#$03
05ce: c5 f1 00  mov   $00f1,a
05d1: 8f ff 2a  mov   $2a,#$ff
05d4: 8d 0a     mov   y,#$0a
05d6: ad 05     cmp   y,#$05
05d8: f0 07     beq   $05e1
05da: b0 08     bcs   $05e4
05dc: 69 5d 5b  cmp   ($5b),($5d)
05df: d0 11     bne   $05f2
05e1: e3 5b 0e  bbs7  $5b,$05f2
05e4: f6 fd 11  mov   a,$11fd+y
05e7: c5 f2 00  mov   $00f2,a
05ea: f6 07 12  mov   a,$1207+y
05ed: 5d        mov   x,a
05ee: e6        mov   a,(x)
05ef: c5 f3 00  mov   $00f3,a
05f2: fe e2     dbnz  y,$05d6
05f4: cb 55     mov   $55,y
05f6: cb 56     mov   $56,y
05f8: e4 44     mov   a,$44
05fa: 44 45     eor   a,$45
05fc: 5c        lsr   a
05fd: 5c        lsr   a
05fe: ed        notc
05ff: 6b 44     ror   $44
0601: 6b 45     ror   $45
0603: ec fd 00  mov   y,$00fd
0606: f0 fb     beq   $0603
0608: 6d        push  y
0609: e8 20     mov   a,#$20
060b: cf        mul   ya
060c: 60        clrc
060d: 84 53     adc   a,$53
060f: c4 53     mov   $53,a
0611: 90 07     bcc   $061a
0613: 69 5d 5b  cmp   ($5b),($5d)
0616: f0 02     beq   $061a
0618: ab 5b     inc   $5b
061a: 3f a6 15  call  $15a6
061d: cd 00     mov   x,#$00
061f: 3f 65 14  call  $1465
0622: 3f 01 15  call  $1501
0625: 8f 00 3e  mov   $3e,#$00
0628: e8 02     mov   a,#$02
062a: c5 7c 05  mov   $057c,a
062d: e9 7c 05  mov   x,$057c
0630: f5 f9 04  mov   a,$04f9+x
0633: f0 31     beq   $0666
0635: ee        pop   y
0636: 6d        push  y
0637: c9 7d 05  mov   $057d,x
063a: ac 7d 05  inc   $057d
063d: f5 b2 06  mov   a,$06b2+x
0640: c4 57     mov   $57,a
0642: f5 b5 06  mov   a,$06b5+x
0645: c5 f5 04  mov   $04f5,a
0648: f5 b8 06  mov   a,$06b8+x
064b: 2d        push  a
064c: 7d        mov   a,x
064d: 1c        asl   a
064e: 1c        asl   a
064f: 5d        mov   x,a
0650: f5 72 05  mov   a,$0572+x
0653: cf        mul   ya
0654: 60        clrc
0655: 95 70 05  adc   a,$0570+x
0658: d5 70 05  mov   $0570+x,a
065b: ce        pop   x
065c: 90 05     bcc   $0663
065e: 3f f0 0a  call  $0af0
0661: 2f 03     bra   $0666
0663: 3f 8f 06  call  $068f
0666: 8c 7c 05  dec   $057c
0669: 10 c2     bpl   $062d
066b: e5 07 05  mov   a,$0507
066e: c4 3e     mov   $3e,a
0670: cd 00     mov   x,#$00
0672: 8f 01 57  mov   $57,#$01
0675: c9 7d 05  mov   $057d,x
0678: e4 24     mov   a,$24
067a: ee        pop   y
067b: cf        mul   ya
067c: 60        clrc
067d: 84 22     adc   a,$22
067f: c4 22     mov   $22,a
0681: b0 06     bcs   $0689
0683: 3f 8f 06  call  $068f
0686: 5f d4 05  jmp   $05d4

0689: 3f 13 0a  call  $0a13
068c: 5f d4 05  jmp   $05d4

068f: 3f 65 14  call  $1465
0692: e4 4e     mov   a,$4e
0694: f0 1b     beq   $06b1
0696: f4 01     mov   a,$01+x
0698: f0 03     beq   $069d
069a: 3f 25 11  call  $1125
069d: 3d        inc   x
069e: 3d        inc   x
069f: 0b 57     asl   $57
06a1: f0 0e     beq   $06b1
06a3: ec 7d 05  mov   y,$057d
06a6: f6 f8 04  mov   a,$04f8+y
06a9: fd        mov   y,a
06aa: f6 80 19  mov   a,$1980+y
06ad: 24 57     and   a,$57
06af: d0 e5     bne   $0696
06b1: 6f        ret

06b2: db $40,$80,$40
06b5: db $01,$01,$02
06b8: db $1c,$1e,$1c

06bb: e4 3e     mov   a,$3e
06bd: 24 57     and   a,$57
06bf: d0 21     bne   $06e2
06c1: ad c8     cmp   y,#$c8
06c3: f0 1d     beq   $06e2
06c5: c8 0c     cmp   x,#$0c
06c7: 90 0a     bcc   $06d3
06c9: e5 fb 04  mov   a,$04fb
06cc: f0 05     beq   $06d3
06ce: e5 7d 05  mov   a,$057d
06d1: f0 0f     beq   $06e2
06d3: 4d        push  x
06d4: 7d        mov   a,x
06d5: 28 0f     and   a,#$0f
06d7: 5c        lsr   a
06d8: 5d        mov   x,a
06d9: f5 e3 06  mov   a,$06e3+x
06dc: 8d 5c     mov   y,#$5c
06de: 3f eb 07  call  $07eb             ; set KOF
06e1: ce        pop   x
06e2: 6f        ret

06e3: $01,$02,$04,$08,$10,$20,$40,$80
06eb: $01,$02,$04,$08,$10,$20,$40,$80

06f3: ad ca     cmp   y,#$ca
06f5: 90 05     bcc   $06fc
06f7: 3f 38 0c  call  $0c38
06fa: 8d a4     mov   y,#$a4
06fc: ad c8     cmp   y,#$c8
06fe: b0 bb     bcs   $06bb
0700: e4 3e     mov   a,$3e
0702: 24 57     and   a,$57
0704: d0 dc     bne   $06e2
0706: dd        mov   a,y
0707: 28 7f     and   a,#$7f
0709: c8 10     cmp   x,#$10
070b: b0 02     bcs   $070f
070d: 84 5f     adc   a,$5f
070f: 60        clrc
0710: 95 80 03  adc   a,$0380+x
0713: d5 61 04  mov   $0461+x,a
0716: f5 a1 04  mov   a,$04a1+x
0719: d5 60 04  mov   $0460+x,a
071c: f5 01 03  mov   a,$0301+x
071f: 5c        lsr   a
0720: e8 00     mov   a,#$00
0722: 7c        ror   a
0723: d5 e0 02  mov   $02e0+x,a
0726: e8 00     mov   a,#$00
0728: d4 a0     mov   $a0+x,a
072a: d5 00 01  mov   $0100+x,a
072d: d5 40 03  mov   $0340+x,a
0730: d4 c0     mov   $c0+x,a
0732: 09 57 2f  or    ($2f),($57)
0735: 09 57 55  or    ($55),($57)
0738: f5 a0 02  mov   a,$02a0+x
073b: d4 80     mov   $80+x,a
073d: f0 1e     beq   $075d
073f: f5 a1 02  mov   a,$02a1+x
0742: d4 81     mov   $81+x,a
0744: f5 c0 02  mov   a,$02c0+x
0747: d0 0a     bne   $0753
0749: f5 61 04  mov   a,$0461+x
074c: 80        setc
074d: b5 c1 02  sbc   a,$02c1+x
0750: d5 61 04  mov   $0461+x,a
0753: f5 c1 02  mov   a,$02c1+x
0756: 60        clrc
0757: 95 61 04  adc   a,$0461+x
075a: 3f ab 0e  call  $0eab
075d: 3f c3 0e  call  $0ec3
0760: 8d 00     mov   y,#$00
0762: e4 49     mov   a,$49
0764: 80        setc
0765: a8 34     sbc   a,#$34
0767: b0 09     bcs   $0772
0769: e4 49     mov   a,$49
076b: 80        setc
076c: a8 13     sbc   a,#$13
076e: b0 06     bcs   $0776
0770: dc        dec   y
0771: 1c        asl   a
0772: 7a 48     addw  ya,$48
0774: da 48     movw  $48,ya
0776: 4d        push  x
0777: e4 49     mov   a,$49
0779: 1c        asl   a
077a: 8d 00     mov   y,#$00
077c: cd 18     mov   x,#$18
077e: 9e        div   ya,x
077f: 5d        mov   x,a
0780: f6 13 12  mov   a,$1213+y
0783: c4 41     mov   $41,a
0785: f6 12 12  mov   a,$1212+y
0788: c4 40     mov   $40,a
078a: f6 15 12  mov   a,$1215+y
078d: 2d        push  a
078e: f6 14 12  mov   a,$1214+y
0791: ee        pop   y
0792: 9a 40     subw  ya,$40
0794: eb 48     mov   y,$48
0796: cf        mul   ya
0797: dd        mov   a,y
0798: 8d 00     mov   y,#$00
079a: 7a 40     addw  ya,$40
079c: cb 41     mov   $41,y
079e: 1c        asl   a
079f: 2b 41     rol   $41
07a1: c4 40     mov   $40,a
07a3: 2f 04     bra   $07a9
07a5: 4b 41     lsr   $41
07a7: 7c        ror   a
07a8: 3d        inc   x
07a9: c8 06     cmp   x,#$06
07ab: d0 f8     bne   $07a5
07ad: c4 40     mov   $40,a
07af: ce        pop   x
07b0: f5 40 02  mov   a,$0240+x
07b3: eb 41     mov   y,$41
07b5: cf        mul   ya
07b6: da 42     movw  $42,ya
07b8: f5 40 02  mov   a,$0240+x
07bb: eb 40     mov   y,$40
07bd: cf        mul   ya
07be: 6d        push  y
07bf: f5 41 02  mov   a,$0241+x
07c2: eb 40     mov   y,$40
07c4: cf        mul   ya
07c5: 7a 42     addw  ya,$42
07c7: da 42     movw  $42,ya
07c9: f5 41 02  mov   a,$0241+x
07cc: eb 41     mov   y,$41
07ce: cf        mul   ya
07cf: fd        mov   y,a
07d0: ae        pop   a
07d1: 7a 42     addw  ya,$42
07d3: da 42     movw  $42,ya
07d5: 7d        mov   a,x
07d6: 9f        xcn   a
07d7: 5c        lsr   a
07d8: 08 02     or    a,#$02
07da: fd        mov   y,a
07db: e4 42     mov   a,$42             ; P(L)
07dd: 3f e3 07  call  $07e3
07e0: fc        inc   y
07e1: e4 43     mov   a,$43             ; P(H)
; write A to DSP reg Y if vbit clear in $3e
07e3: 2d        push  a
07e4: e4 57     mov   a,$57
07e6: 24 3e     and   a,$3e
07e8: ae        pop   a
07e9: d0 06     bne   $07f1
; write A to DSP reg Y
07eb: cc f2 00  mov   $00f2,y
07ee: c5 f3 00  mov   $00f3,a
07f1: 6f        ret

; read $50/1 into YA and increment the vcmd pointer
07f2: 8d 00     mov   y,#$00
07f4: f7 50     mov   a,($50)+y
07f6: 3a 50     incw  $50
07f8: 2d        push  a
07f9: f7 50     mov   a,($50)+y
07fb: 3a 50     incw  $50
07fd: fd        mov   y,a
07fe: ae        pop   a
07ff: 6f        ret

0800: e8 ff     mov   a,#$ff
0802: 8d 5c     mov   y,#$5c
0804: 3f eb 07  call  $07eb             ; set KOF
0807: e8 00     mov   a,#$00
0809: c5 77 05  mov   $0577,a
080c: c5 7b 05  mov   $057b,a
080f: fd        mov   y,a
0810: 3f 13 0e  call  $0e13
0813: e8 01     mov   a,#$01
0815: 3f 3c 0e  call  $0e3c
0818: e5 f6 00  mov   a,$00f6
081b: c5 73 05  mov   $0573,a
081e: e5 f7 00  mov   a,$00f7
0821: c5 7e 05  mov   $057e,a
0824: e8 f0     mov   a,#$f0
0826: 65 f4 00  cmp   a,$00f4
0829: d0 f9     bne   $0824
082b: 3f 2c 12  call  $122c
082e: 8c 73 05  dec   $0573
0831: d0 f1     bne   $0824
0833: e8 ff     mov   a,#$ff
0835: 65 f4 00  cmp   a,$00f4
0838: d0 f9     bne   $0833
083a: c5 f4 00  mov   $00f4,a
083d: c4 2a     mov   $2a,a
083f: 3f 4b 14  call  $144b
0842: e8 00     mov   a,#$00
0844: c5 01 05  mov   $0501,a
0847: c5 02 05  mov   $0502,a
084a: c5 06 05  mov   $0506,a
084d: c5 f7 04  mov   $04f7,a
0850: c5 7d 05  mov   $057d,a
0853: c5 0e 05  mov   $050e,a
0856: cd 04     mov   x,#$04
0858: d5 f7 04  mov   $04f7+x,a
085b: d5 ef 04  mov   $04ef+x,a
085e: d5 f3 00  mov   $00f3+x,a
0861: 1d        dec   x
0862: d0 f4     bne   $0858
0864: d4 01     mov   $01+x,a
0866: d4 11     mov   $11+x,a
0868: d5 a1 03  mov   $03a1+x,a
086b: d5 60 00  mov   $0060+x,a
086e: fd        mov   y,a
086f: 7d        mov   a,x
0870: 5c        lsr   a
0871: 9f        xcn   a
0872: c5 f2 00  mov   $00f2,a
0875: cc f3 00  mov   $00f3,y
0878: bc        inc   a
0879: c5 f2 00  mov   $00f2,a
087c: cc f3 00  mov   $00f3,y
087f: dd        mov   a,y
0880: 3d        inc   x
0881: 3d        inc   x
0882: c8 10     cmp   x,#$10
0884: d0 de     bne   $0864
0886: c5 07 05  mov   $0507,a
0889: c4 3e     mov   $3e,a
088b: e8 ff     mov   a,#$ff
088d: 8d 5c     mov   y,#$5c
088f: 3f eb 07  call  $07eb             ; set KOF
0892: e8 7f     mov   a,#$7f
0894: 3f a2 16  call  $16a2
0897: e8 00     mov   a,#$00
0899: c5 f4 00  mov   $00f4,a
089c: 6f        ret

089d: c4 4e     mov   $4e,a
089f: 6d        push  y
08a0: c4 20     mov   $20,a
08a2: 8f 18 21  mov   $21,#$18          ; #$1800
08a5: 60        clrc
08a6: 84 20     adc   a,$20
08a8: c4 20     mov   $20,a
08aa: e8 00     mov   a,#$00
08ac: 84 21     adc   a,$21
08ae: c4 21     mov   $21,a
08b0: 8d 00     mov   y,#$00
08b2: f7 20     mov   a,($20)+y
08b4: fc        inc   y
08b5: c5 0f 05  mov   $050f,a
08b8: f7 20     mov   a,($20)+y
08ba: c5 10 05  mov   $0510,a
08bd: ee        pop   y
08be: d0 01     bne   $08c1
08c0: 6f        ret

08c1: ad 00     cmp   y,#$00
08c3: d0 15     bne   $08da
08c5: e5 0f 05  mov   a,$050f
08c8: c4 50     mov   $50,a
08ca: e5 10 05  mov   a,$0510
08cd: c4 51     mov   $51,a
08cf: 8f 01 4f  mov   $4f,#$01
08d2: e4 3e     mov   a,$3e
08d4: 48 ff     eor   a,#$ff
08d6: 0e 56 00  tset1 $0056
08d9: 6f        ret

08da: e5 0f 05  mov   a,$050f
08dd: c4 3b     mov   $3b,a
08df: e5 10 05  mov   a,$0510
08e2: c4 3c     mov   $3c,a
08e4: 3f 4d 0a  call  $0a4d
08e7: 3f eb 08  call  $08eb
08ea: 6f        ret

08eb: f8 4d     mov   x,$4d
08ed: f5 80 19  mov   a,$1980+x
08f0: c4 20     mov   $20,a
08f2: 05 07 05  or    a,$0507
08f5: c5 07 05  mov   $0507,a
08f8: 6f        ret

08f9: 4d        push  x
08fa: e4 57     mov   a,$57
08fc: 2d        push  a
08fd: e9 7d 05  mov   x,$057d
0900: f5 51 09  mov   a,$0951+x
0903: 8d 5c     mov   y,#$5c
0905: 3f eb 07  call  $07eb             ; set KOF
0908: 25 08 05  and   a,$0508
090b: 04 5a     or    a,$5a
090d: c4 5a     mov   $5a,a
090f: f5 55 09  mov   a,$0955+x
0912: 25 07 05  and   a,$0507
0915: c5 07 05  mov   $0507,a
0918: cd 0c     mov   x,#$0c
091a: e5 7d 05  mov   a,$057d
091d: c4 20     mov   $20,a
091f: 8f 40 57  mov   $57,#$40
0922: e4 3e     mov   a,$3e
0924: 2d        push  a
0925: 8f 00 3e  mov   $3e,#$00
0928: 4b 20     lsr   $20
092a: 90 0a     bcc   $0936
092c: f5 21 02  mov   a,$0221+x
092f: 3f 3b 0c  call  $0c3b
0932: e8 00     mov   a,#$00
0934: d4 11     mov   $11+x,a
0936: 0b 57     asl   $57
0938: 3d        inc   x
0939: 3d        inc   x
093a: c8 10     cmp   x,#$10
093c: d0 ea     bne   $0928
093e: ae        pop   a
093f: c4 3e     mov   $3e,a
0941: ec 7d 05  mov   y,$057d
0944: d6 f8 04  mov   $04f8+y,a
0947: ae        pop   a
0948: c4 57     mov   $57,a
094a: ce        pop   x
094b: e8 00     mov   a,#$00
094d: c5 f7 00  mov   $00f7,a
0950: 6f        ret

0951: db $00,$40,$80,$c0,$00,$80,$40,$00

0959: e9 f8 04  mov   x,$04f8
095c: f5 80 19  mov   a,$1980+x
095f: c4 20     mov   $20,a
0961: e8 00     mov   a,#$00
0963: c5 f8 04  mov   $04f8,a
0966: c5 f6 00  mov   $00f6,a
0969: 5d        mov   x,a
096a: 4b 20     lsr   $20
096c: 90 02     bcc   $0970
096e: d4 01     mov   $01+x,a
0970: 3d        inc   x
0971: 3d        inc   x
0972: c8 10     cmp   x,#$10
0974: d0 f4     bne   $096a
0976: 6f        ret

0977: 80        setc
0978: a8 f0     sbc   a,#$f0
097a: 1c        asl   a
097b: fd        mov   y,a
097c: f6 86 09  mov   a,$0986+y
097f: 2d        push  a
0980: f6 85 09  mov   a,$0985+y
0983: 2d        push  a
0984: 6f        ret

0985: dw $0800
0987: dw $15a5
0989: dw $15a5
098b: dw $1604
098d: dw $1627
098f: dw $163f
0991: dw $1646
0993: dw $1674
0995: dw $13ab
0997: dw $15a5
0999: dw $15a5
099b: dw $15a5
099d: dw $15a5
099f: dw $15a5
09a1: dw $15a5
09a3: dw $15a5

09a5: f8 4d     mov   x,$4d
09a7: f5 80 19  mov   a,$1980+x
09aa: c4 20     mov   $20,a
09ac: f5 00 19  mov   a,$1900+x
09af: c4 21     mov   $21,a
09b1: 28 80     and   a,#$80
09b3: 9f        xcn   a
09b4: 1c        asl   a
09b5: 08 0e     or    a,#$0e
09b7: 5d        mov   x,a
09b8: 8f 80 57  mov   $57,#$80
09bb: 0b 20     asl   $20
09bd: 90 20     bcc   $09df
09bf: e8 ff     mov   a,#$ff
09c1: d5 a1 03  mov   $03a1+x,a
09c4: e8 0a     mov   a,#$0a
09c6: 3f 91 0c  call  $0c91
09c9: d5 21 02  mov   $0221+x,a
09cc: d5 a1 04  mov   $04a1+x,a
09cf: d5 80 03  mov   $0380+x,a
09d2: d5 a0 02  mov   $02a0+x,a
09d5: d4 a1     mov   $a1+x,a
09d7: d5 20 03  mov   $0320+x,a
09da: d4 c1     mov   $c1+x,a
09dc: c5 7f 05  mov   $057f,a
09df: 1d        dec   x
09e0: 1d        dec   x
09e1: 4b 57     lsr   $57
09e3: d0 d6     bne   $09bb
09e5: e4 21     mov   a,$21
09e7: 28 80     and   a,#$80
09e9: f0 11     beq   $09fc
09eb: f8 4d     mov   x,$4d
09ed: f5 80 19  mov   a,$1980+x
09f0: 48 ff     eor   a,#$ff
09f2: 24 5a     and   a,$5a
09f4: c4 5a     mov   $5a,a
09f6: e8 01     mov   a,#$01
09f8: c5 f7 00  mov   $00f7,a
09fb: 6f        ret

09fc: c4 2b     mov   $2b,a
09fe: c4 25     mov   $25,a
0a00: c4 5f     mov   $5f,a
0a02: c4 52     mov   $52,a
0a04: c4 3f     mov   $3f,a
0a06: c4 38     mov   $38,a
0a08: c5 08 05  mov   $0508,a
0a0b: bc        inc   a
0a0c: c5 f6 00  mov   $00f6,a
0a0f: 8f 20 24  mov   $24,#$20
0a12: 6f        ret

0a13: e5 f7 04  mov   a,$04f7
0a16: d0 fa     bne   $0a12
0a18: e5 f8 04  mov   a,$04f8
0a1b: f0 f5     beq   $0a12
0a1d: e4 4f     mov   a,$4f
0a1f: d0 03     bne   $0a24
0a21: 5f e9 0a  jmp   $0ae9

0a24: e8 00     mov   a,#$00
0a26: c4 4f     mov   $4f,a
0a28: c5 00 05  mov   $0500,a
0a2b: 3f f2 07  call  $07f2             ; read block addr from $50/1, increment ptr
0a2e: d0 62     bne   $0a92             ; load start addresses, if hi-byte is non zero
0a30: fd        mov   y,a               ; refetch lo-byte
0a31: d0 04     bne   $0a37             ; set/dec repeat count
0a33: 5d        mov   x,a
0a34: 5f 59 09  jmp   $0959             ; key off, return if also zero
; set/dec repeat count
0a37: 78 10 52  cmp   $52,#$10
0a3a: b0 06     bcs   $0a42
0a3c: 8b 52     dec   $52
0a3e: 10 02     bpl   $0a42
0a40: c4 52     mov   $52,a
0a42: 3f f2 07  call  $07f2             ; read next word as well
0a45: f8 52     mov   x,$52
0a47: f0 db     beq   $0a24
0a49: da 50     movw  $50,ya            ;   "goto" that address
0a4b: 2f d7     bra   $0a24             ; continue

0a4d: 8d 01     mov   y,#$01
0a4f: f7 3b     mov   a,($3b)+y
0a51: 2d        push  a
0a52: dc        dec   y
0a53: f7 3b     mov   a,($3b)+y
0a55: ee        pop   y
0a56: da 42     movw  $42,ya
0a58: f8 4d     mov   x,$4d
0a5a: f5 80 19  mov   a,$1980+x
0a5d: c4 20     mov   $20,a
0a5f: cd 1e     mov   x,#$1e
0a61: 8d 0f     mov   y,#$0f
0a63: 0b 20     asl   $20
0a65: 90 22     bcc   $0a89
0a67: f7 42     mov   a,($42)+y
0a69: d6 10 00  mov   $0010+y,a
0a6c: dc        dec   y
0a6d: f7 42     mov   a,($42)+y
0a6f: d6 10 00  mov   $0010+y,a
0a72: dc        dec   y
0a73: e8 00     mov   a,#$00
0a75: d5 50 05  mov   $0550+x,a
0a78: d5 30 05  mov   $0530+x,a
0a7b: d5 31 05  mov   $0531+x,a
0a7e: e8 01     mov   a,#$01
0a80: d5 60 00  mov   $0060+x,a
0a83: 1d        dec   x
0a84: 1d        dec   x
0a85: fc        inc   y
0a86: fc        inc   y
0a87: 3d        inc   x
0a88: 3d        inc   x
0a89: dc        dec   y
0a8a: dc        dec   y
0a8b: 1d        dec   x
0a8c: 1d        dec   x
0a8d: c8 0f     cmp   x,#$0f
0a8f: b0 d2     bcs   $0a63
0a91: 6f        ret

; load start addresses - hi-byte not zero
0a92: da 42     movw  $42,ya
0a94: 8d 0f     mov   y,#$0f
0a96: e9 f8 04  mov   x,$04f8
0a99: f5 80 19  mov   a,$1980+x
0a9c: c4 20     mov   $20,a
0a9e: 0b 20     asl   $20
0aa0: 90 10     bcc   $0ab2
0aa2: f7 42     mov   a,($42)+y
0aa4: d6 00 00  mov   $0000+y,a
0aa7: dc        dec   y
0aa8: f7 42     mov   a,($42)+y
0aaa: d6 00 00  mov   $0000+y,a
0aad: dc        dec   y
0aae: 10 ee     bpl   $0a9e
0ab0: fc        inc   y
0ab1: fc        inc   y
0ab2: dc        dec   y
0ab3: dc        dec   y
0ab4: 10 e8     bpl   $0a9e
0ab6: e9 f8 04  mov   x,$04f8
0ab9: f5 80 19  mov   a,$1980+x
0abc: c4 20     mov   $20,a
0abe: cd 00     mov   x,#$00
0ac0: 8f 01 57  mov   $57,#$01
0ac3: 4b 20     lsr   $20
0ac5: 90 1c     bcc   $0ae3
0ac7: f4 01     mov   a,$01+x
0ac9: f0 0a     beq   $0ad5
0acb: f5 21 02  mov   a,$0221+x
0ace: d0 05     bne   $0ad5
0ad0: e8 00     mov   a,#$00
0ad2: 3f 38 0c  call  $0c38
0ad5: e8 00     mov   a,#$00
0ad7: d5 50 05  mov   $0550+x,a
0ada: d5 30 05  mov   $0530+x,a
0add: d5 31 05  mov   $0531+x,a
0ae0: bc        inc   a
0ae1: d4 60     mov   $60+x,a
0ae3: 3d        inc   x
0ae4: 3d        inc   x
0ae5: 0b 57     asl   $57
0ae7: d0 da     bne   $0ac3
0ae9: cd 00     mov   x,#$00
0aeb: d8 2f     mov   $2f,x
0aed: 8f 01 57  mov   $57,#$01
0af0: 3f 65 14  call  $1465
0af3: d8 54     mov   $54,x
0af5: f4 01     mov   a,$01+x
0af7: d0 03     bne   $0afc
0af9: 5f 80 0b  jmp   $0b80

0afc: 9b 60     dec   $60+x             ; dec duration counter
0afe: f0 03     beq   $0b03             ; if zero, handle the next vcmd
0b00: 5f 7a 0b  jmp   $0b7a

0b03: 3f 2e 0c  call  $0c2e             ; read vcmd into A and Y
0b06: d0 32     bne   $0b3a
; vcmd 00 - end repeat/return
0b08: f5 50 05  mov   a,$0550+x
0b0b: d0 0f     bne   $0b1c             ; repeat the section if required
0b0d: c8 10     cmp   x,#$10
0b0f: b0 03     bcs   $0b14
0b11: 5f 24 0a  jmp   $0a24             ; read the next section

0b14: 4d        push  x
0b15: 3f f9 08  call  $08f9
0b18: ce        pop   x
0b19: 5f 80 0b  jmp   $0b80
; repeat / return from subroutine
0b1c: 3f b7 0d  call  $0db7             ; jump to loop start addr
0b1f: f5 50 05  mov   a,$0550+x
0b22: 68 ff     cmp   a,#$ff
0b24: f0 dd     beq   $0b03
0b26: 80        setc
0b27: a8 01     sbc   a,#$01
0b29: d5 50 05  mov   $0550+x,a         ; dec repeat count
0b2c: d0 d5     bne   $0b03             ; if the loop has been done
0b2e: f5 60 02  mov   a,$0260+x
0b31: d4 00     mov   $00+x,a
0b33: f5 61 02  mov   a,$0261+x
0b36: d4 01     mov   $01+x,a           ; back to return addr instead
0b38: 2f c9     bra   $0b03             ; then continue
; vcmd branches
0b3a: 30 20     bmi   $0b5c             ; vcmds 01-7f - note info:
0b3c: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
0b3f: 3f 2e 0c  call  $0c2e             ;   read next byte
0b42: 30 18     bmi   $0b5c             ;   if note note then
0b44: 2d        push  a
0b45: 9f        xcn   a
0b46: 28 07     and   a,#$07
0b48: fd        mov   y,a
0b49: f6 00 24  mov   a,$2400+y
0b4c: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
0b4f: ae        pop   a
0b50: 28 0f     and   a,#$0f
0b52: fd        mov   y,a
0b53: f6 08 24  mov   a,$2408+y
0b56: d5 20 02  mov   $0220+x,a         ;   set per-note vol from low nybble
0b59: 3f 2e 0c  call  $0c2e             ;   read vcmd into A and Y
; vcmd branches 80-ff
0b5c: 68 e0     cmp   a,#$e0
0b5e: 90 05     bcc   $0b65
0b60: 3f 1c 0c  call  $0c1c             ; vcmds e0-ff
0b63: 2f 9e     bra   $0b03
; vcmds 80-df - note
0b65: 3f f3 06  call  $06f3
0b68: f5 00 02  mov   a,$0200+x
0b6b: d4 60     mov   $60+x,a
0b6d: fd        mov   y,a
0b6e: f5 01 02  mov   a,$0201+x
0b71: cf        mul   ya
0b72: dd        mov   a,y
0b73: d0 01     bne   $0b76
0b75: bc        inc   a
0b76: d4 61     mov   $61+x,a
0b78: 2f 03     bra   $0b7d
0b7a: 3f 0e 10  call  $100e
0b7d: 3f 85 0e  call  $0e85
0b80: 3d        inc   x
0b81: 3d        inc   x
0b82: e5 7d 05  mov   a,$057d
0b85: d0 13     bne   $0b9a
0b87: 0b 57     asl   $57
0b89: f0 2b     beq   $0bb6
0b8b: 4d        push  x
0b8c: e9 f8 04  mov   x,$04f8
0b8f: f5 80 19  mov   a,$1980+x
0b92: ce        pop   x
0b93: 24 57     and   a,$57
0b95: f0 1f     beq   $0bb6
0b97: 5f f0 0a  jmp   $0af0

0b9a: 0b 57     asl   $57
0b9c: 8c f5 04  dec   $04f5
0b9f: d0 f6     bne   $0b97
0ba1: e9 7d 05  mov   x,$057d
0ba4: 1d        dec   x
0ba5: f5 b2 06  mov   a,$06b2+x
0ba8: c4 57     mov   $57,a
0baa: f5 b5 06  mov   a,$06b5+x
0bad: c5 f5 04  mov   $04f5,a
0bb0: f5 b8 06  mov   a,$06b8+x
0bb3: 5d        mov   x,a
0bb4: 2f 3f     bra   $0bf5
0bb6: e4 25     mov   a,$25
0bb8: f0 0b     beq   $0bc5
0bba: ba 27     movw  ya,$27
0bbc: 7a 23     addw  ya,$23
0bbe: 6e 25 02  dbnz  $25,$0bc3
0bc1: ba 25     movw  ya,$25
0bc3: da 23     movw  $23,ya
0bc5: e4 38     mov   a,$38
0bc7: f0 15     beq   $0bde
0bc9: ba 34     movw  ya,$34
0bcb: 7a 30     addw  ya,$30
0bcd: da 30     movw  $30,ya
0bcf: ba 36     movw  ya,$36
0bd1: 7a 32     addw  ya,$32
0bd3: 6e 38 06  dbnz  $38,$0bdc
0bd6: ba 38     movw  ya,$38
0bd8: da 30     movw  $30,ya
0bda: eb 3a     mov   y,$3a
0bdc: da 32     movw  $32,ya
0bde: e4 2b     mov   a,$2b
0be0: f0 0e     beq   $0bf0
0be2: ba 2d     movw  ya,$2d
0be4: 7a 29     addw  ya,$29
0be6: 6e 2b 02  dbnz  $2b,$0beb
0be9: ba 2b     movw  ya,$2b
0beb: da 29     movw  $29,ya
0bed: 8f ff 2f  mov   $2f,#$ff
0bf0: cd 00     mov   x,#$00
0bf2: 8f 01 57  mov   $57,#$01
0bf5: f4 01     mov   a,$01+x
0bf7: f0 03     beq   $0bfc
0bf9: 3f 4a 0f  call  $0f4a
0bfc: 3d        inc   x
0bfd: 3d        inc   x
0bfe: e5 7d 05  mov   a,$057d
0c01: d0 11     bne   $0c14
0c03: 0b 57     asl   $57
0c05: f0 14     beq   $0c1b
0c07: 4d        push  x
0c08: e9 f8 04  mov   x,$04f8
0c0b: f5 80 19  mov   a,$1980+x
0c0e: ce        pop   x
0c0f: 24 57     and   a,$57
0c11: d0 e2     bne   $0bf5
0c13: 6f        ret

0c14: 0b 57     asl   $57
0c16: 8c f5 04  dec   $04f5
0c19: d0 da     bne   $0bf5
0c1b: 6f        ret

; dispatch vcmd in A (e0-ff)
0c1c: 1c        asl   a                 ; e0-ff => c0-fe (8 bit)
0c1d: fd        mov   y,a
0c1e: f6 2b 0e  mov   a,$0e2b+y
0c21: 2d        push  a
0c22: f6 2a 0e  mov   a,$0e2a+y
0c25: 2d        push  a                 ; push jump address from table
0c26: dd        mov   a,y
0c27: 5c        lsr   a
0c28: fd        mov   y,a
0c29: f6 ca 0e  mov   a,$0eca+y         ; vcmd length
0c2c: f0 08     beq   $0c36             ; if non zero
; read new argument to A and Y
0c2e: e7 00     mov   a,($00+x)
; increment voice pointer
0c30: bb 00     inc   $00+x
0c32: d0 02     bne   $0c36
0c34: bb 01     inc   $01+x             ; inc reading ptr
0c36: fd        mov   y,a  
0c37: 6f        ret                     ; jump to vcmd

; vcmd e0 - set instrument
0c38: d5 21 02  mov   $0221+x,a
0c3b: fd        mov   y,a
0c3c: 10 06     bpl   $0c44             ; if percussion note:
0c3e: 80        setc
0c3f: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
0c41: 60        clrc
0c42: 84 3f     adc   a,$3f             ; add perc patch base
0c44: 8d 06     mov   y,#$06
; set sample A in bank at $40/1 width Y
0c46: cf        mul   ya
0c47: da 40     movw  $40,ya
0c49: 60        clrc
0c4a: 98 00 40  adc   $40,#$00
0c4d: 98 23 41  adc   $41,#$23          ; instrument table $2300
0c50: e4 3e     mov   a,$3e
0c52: 24 57     and   a,$57
0c54: d0 3a     bne   $0c90
0c56: 4d        push  x
0c57: 7d        mov   a,x
0c58: 9f        xcn   a
0c59: 5c        lsr   a
0c5a: 08 04     or    a,#$04            ; voice X SRCN
0c5c: 5d        mov   x,a
0c5d: 8d 00     mov   y,#$00
0c5f: f7 40     mov   a,($40)+y
0c61: 10 0e     bpl   $0c71
0c63: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0c65: 38 20 58  and   $58,#$20          ;  keep echo bit from FLG
0c68: 0e 58 00  tset1 $0058             ;  OR in noise freq
0c6b: 09 57 59  or    ($59),($57)       ;  set vbit in noise enable
0c6e: dd        mov   a,y               ;  set SRCN to 0
0c6f: 2f 07     bra   $0c78             ; else
0c71: e4 57     mov   a,$57
0c73: 4e 59 00  tclr1 $0059             ;  clear noise vbit
0c76: f7 40     mov   a,($40)+y         ;  set SRCN from table
0c78: c9 f2 00  mov   $00f2,x
0c7b: c5 f3 00  mov   $00f3,a
0c7e: 3d        inc   x
0c7f: fc        inc   y
0c80: ad 04     cmp   y,#$04
0c82: d0 f2     bne   $0c76             ; set SRCN, ADSR1/2, GAIN from table
0c84: ce        pop   x
0c85: f7 40     mov   a,($40)+y
0c87: d5 41 02  mov   $0241+x,a         ; set pitch multiplier
0c8a: fc        inc   y
0c8b: f7 40     mov   a,($40)+y
0c8d: d5 40 02  mov   $0240+x,a
0c90: 6f        ret

; vcmd e1 - pan
0c91: c8 10     cmp   x,#$10
0c93: b0 03     bcs   $0c98
0c95: d5 e0 04  mov   $04e0+x,a
0c98: ec f6 04  mov   y,$04f6
0c9b: f0 02     beq   $0c9f
0c9d: e8 0a     mov   a,#$0a
0c9f: d5 41 04  mov   $0441+x,a
0ca2: 28 1f     and   a,#$1f
0ca4: d5 01 04  mov   $0401+x,a         ; voice pan value
0ca7: e8 00     mov   a,#$00
0ca9: d5 00 04  mov   $0400+x,a
0cac: 6f        ret

; vcmd e2 - pan fade
0cad: ec f6 04  mov   y,$04f6
0cb0: f0 04     beq   $0cb6
0cb2: 3f 2e 0c  call  $0c2e
0cb5: 6f        ret
;
0cb6: d5 31 05  mov   $0531+x,a
0cb9: 2d        push  a
0cba: 3f 2e 0c  call  $0c2e
0cbd: d5 40 04  mov   $0440+x,a
0cc0: 80        setc
0cc1: b5 01 04  sbc   a,$0401+x         ; current pan value
0cc4: ce        pop   x
0cc5: 3f ce 0e  call  $0ece             ; delta = pan value / steps
0cc8: d5 20 04  mov   $0420+x,a
0ccb: dd        mov   a,y
0ccc: d5 21 04  mov   $0421+x,a
0ccf: 6f        ret

; vcmd e3 - vibrato on
0cd0: d5 00 03  mov   $0300+x,a
0cd3: 3f 2e 0c  call  $0c2e
0cd6: d5 e1 02  mov   $02e1+x,a
0cd9: 3f 2e 0c  call  $0c2e
; vcmd e4 - vibrato off
0cdc: d4 a1     mov   $a1+x,a
0cde: d5 21 03  mov   $0321+x,a
0ce1: e8 00     mov   a,#$00
0ce3: d5 01 03  mov   $0301+x,a
0ce6: 6f        ret

; vcmd f0 - vibrato fade
0ce7: d5 01 03  mov   $0301+x,a
0cea: 2d        push  a
0ceb: 8d 00     mov   y,#$00
0ced: f4 a1     mov   a,$a1+x
0cef: ce        pop   x
0cf0: 9e        div   ya,x
0cf1: f8 54     mov   x,$54
0cf3: d5 20 03  mov   $0320+x,a
0cf6: 6f        ret

; vcmd e5 - master volume
0cf7: e5 7d 05  mov   a,$057d
0cfa: d0 04     bne   $0d00
0cfc: e8 00     mov   a,#$00
0cfe: da 29     movw  $29,ya
0d00: 6f        ret

; vcmd e6 - master volume fade
0d01: c4 2b     mov   $2b,a
0d03: 3f 2e 0c  call  $0c2e
0d06: c4 2c     mov   $2c,a
0d08: 80        setc
0d09: a4 2a     sbc   a,$2a
0d0b: f8 2b     mov   x,$2b
0d0d: 3f ce 0e  call  $0ece
0d10: da 2d     movw  $2d,ya
0d12: 6f        ret

; vcmd e7 - tempo
0d13: c8 0c     cmp   x,#$0c
0d15: 90 15     bcc   $0d2c
0d17: e5 7d 05  mov   a,$057d
0d1a: f0 10     beq   $0d2c
0d1c: 9c        dec   a
0d1d: 1c        asl   a
0d1e: 1c        asl   a
0d1f: 4d        push  x
0d20: 5d        mov   x,a
0d21: e8 00     mov   a,#$00
0d23: d5 71 05  mov   $0571+x,a
0d26: dd        mov   a,y
0d27: d5 72 05  mov   $0572+x,a
0d2a: ce        pop   x
0d2b: 6f        ret
;
0d2c: e8 00     mov   a,#$00
0d2e: da 23     movw  $23,ya
0d30: 6f        ret

; vcmd e8 - tempo fade
0d31: c4 25     mov   $25,a
0d33: 3f 2e 0c  call  $0c2e
0d36: c4 26     mov   $26,a
0d38: 80        setc
0d39: a4 24     sbc   a,$24
0d3b: f8 25     mov   x,$25
0d3d: 3f ce 0e  call  $0ece
0d40: da 27     movw  $27,ya
0d42: 6f        ret

; vcmd e9 - global transpose
0d43: c4 5f     mov   $5f,a
0d45: 6f        ret

; vcmd ea - per-voice transpose
0d46: d5 80 03  mov   $0380+x,a
0d49: 6f        ret

; vcmd eb - tremolo on
0d4a: d5 60 03  mov   $0360+x,a
0d4d: 3f 2e 0c  call  $0c2e
0d50: d5 41 03  mov   $0341+x,a
0d53: 3f 2e 0c  call  $0c2e
; vcmd ec - tremolo off
0d56: d4 c1     mov   $c1+x,a
0d58: 6f        ret

; vcmd f1 - pitch envelope (release)
0d59: e8 01     mov   a,#$01
0d5b: 2f 02     bra   $0d5f
; vcmd f2 - pitch envelope (attack)
0d5d: e8 00     mov   a,#$00
0d5f: d5 c0 02  mov   $02c0+x,a
0d62: dd        mov   a,y
0d63: d5 a1 02  mov   $02a1+x,a
0d66: 3f 2e 0c  call  $0c2e
0d69: d5 a0 02  mov   $02a0+x,a
0d6c: 3f 2e 0c  call  $0c2e
0d6f: d5 c1 02  mov   $02c1+x,a
0d72: 6f        ret

; vcmd f3 - pitch envelope off
0d73: d5 a0 02  mov   $02a0+x,a
0d76: 6f        ret

; vcmd ed - volume
0d77: d5 a1 03  mov   $03a1+x,a
0d7a: e8 00     mov   a,#$00
0d7c: d5 a0 03  mov   $03a0+x,a
0d7f: 6f        ret

; vcmd ee - volume fade
0d80: d5 30 05  mov   $0530+x,a
0d83: 2d        push  a
0d84: 3f 2e 0c  call  $0c2e
0d87: d5 e0 03  mov   $03e0+x,a
0d8a: 80        setc
0d8b: b5 a1 03  sbc   a,$03a1+x
0d8e: ce        pop   x
0d8f: 3f ce 0e  call  $0ece
0d92: d5 c0 03  mov   $03c0+x,a
0d95: dd        mov   a,y
0d96: d5 c1 03  mov   $03c1+x,a
0d99: 6f        ret

; vcmd f4 - tuning
0d9a: d5 a1 04  mov   $04a1+x,a
0d9d: 6f        ret

; vcmd ef - call subroutine
0d9e: d5 80 02  mov   $0280+x,a
0da1: 3f 2e 0c  call  $0c2e
0da4: d5 81 02  mov   $0281+x,a         ; $0280/1+X - destination (arg1/2)
0da7: 3f 2e 0c  call  $0c2e
0daa: d5 50 05  mov   $0550+x,a         ; repeat count from arg3
0dad: f4 00     mov   a,$00+  
0daf: d5 60 02  mov   $0260+x,a
0db2: f4 01     mov   a,$01+x
0db4: d5 61 02  mov   $0261+x,a         ; $0260/1+X - return addr
; jump to $0280/1+X (loop destination)
0db7: f5 80 02  mov   a,$0280+x
0dba: d4 00     mov   $00+x,a
0dbc: f5 81 02  mov   a,$0281+x
0dbf: d4 01     mov   $01+x,a
0dc1: 6f        ret

; vcmd f5 - echo vbits/volume
0dc2: c5 08 05  mov   $0508,a
0dc5: 4d        push  x
0dc6: cd 04     mov   x,#$04
0dc8: e8 00     mov   a,#$00
0dca: 1d        dec   x
0dcb: f0 0c     beq   $0dd9
0dcd: 2d        push  a
0dce: f5 f8 04  mov   a,$04f8+x
0dd1: ae        pop   a
0dd2: f0 f6     beq   $0dca
0dd4: 15 51 09  or    a,$0951+x
0dd7: 2f f1     bra   $0dca
0dd9: 48 ff     eor   a,#$ff
0ddb: 25 08 05  and   a,$0508
0dde: c4 5a     mov   $5a,a
0de0: ce        pop   x
0de1: 3f 2e 0c  call  $0c2e
0de4: e8 00     mov   a,#$00
0de6: da 30     movw  $30,ya
0de8: 3f 2e 0c  call  $0c2e
0deb: e8 00     mov   a,#$00
0ded: da 32     movw  $32,ya
0def: b2 58     clr5  $58
0df1: 6f        ret

; vcmd f8 - echo volume fade
0df2: c4 38     mov   $38,a
0df4: 3f 2e 0c  call  $0c2e
0df7: c4 39     mov   $39,a
0df9: 80        setc
0dfa: a4 31     sbc   a,$31
0dfc: f8 38     mov   x,$38
0dfe: 3f ce 0e  call  $0ece
0e01: da 34     movw  $34,ya
0e03: 3f 2e 0c  call  $0c2e
0e06: c4 3a     mov   $3a,a
0e08: 80        setc
0e09: a4 33     sbc   a,$33
0e0b: f8 38     mov   x,$38
0e0d: 3f ce 0e  call  $0ece
0e10: da 36     movw  $36,ya
0e12: 6f        ret

; vcmd f6 - disable echo
0e13: da 30     movw  $30,ya
0e15: da 32     movw  $32,ya
0e17: a2 58     set5  $58
0e19: 6f        ret

; vcmd f7 - set echo params
0e1a: 3f 3c 0e  call  $0e3c
0e1d: 3f 2e 0c  call  $0c2e
0e20: c4 5e     mov   $5e,a
0e22: 3f 2e 0c  call  $0c2e
0e25: 8d 08     mov   y,#$08
0e27: cf        mul   ya
0e28: 5d        mov   x,a
0e29: 8d 0f     mov   y,#$0f
0e2b: f5 de 11  mov   a,$11de+x
0e2e: 3f eb 07  call  $07eb             ; set FIR C0-C7
0e31: 3d        inc   x
0e32: dd        mov   a,y
0e33: 60        clrc
0e34: 88 10     adc   a,#$10
0e36: fd        mov   y,a
0e37: 10 f2     bpl   $0e2b
0e39: f8 54     mov   x,$54
0e3b: 6f        ret

0e3c: c4 5d     mov   $5d,a
0e3e: 8d 7d     mov   y,#$7d
0e40: cc f2 00  mov   $00f2,y
0e43: e5 f3 00  mov   a,$00f3           ; get EDL
0e46: 64 5d     cmp   a,$5d
0e48: f0 2b     beq   $0e75
0e4a: 28 0f     and   a,#$0f
0e4c: 48 ff     eor   a,#$ff
0e4e: f3 5b 03  bbc7  $5b,$0e54
0e51: 60        clrc
0e52: 84 5b     adc   a,$5b
0e54: c4 5b     mov   $5b,a
0e56: 8d 04     mov   y,#$04
0e58: f6 fd 11  mov   a,$11fd+y
0e5b: c5 f2 00  mov   $00f2,a
0e5e: e8 00     mov   a,#$00
0e60: c5 f3 00  mov   $00f3,a
0e63: fe f3     dbnz  y,$0e58
0e65: e4 58     mov   a,$58
0e67: 08 20     or    a,#$20
0e69: 8d 6c     mov   y,#$6c
0e6b: 3f eb 07  call  $07eb             ; disable echo
0e6e: e4 5d     mov   a,$5d
0e70: 8d 7d     mov   y,#$7d
0e72: 3f eb 07  call  $07eb             ; set EDL
0e75: 1c        asl   a
0e76: 1c        asl   a
0e77: 1c        asl   a
0e78: 48 ff     eor   a,#$ff
0e7a: 80        setc
0e7b: 88 ff     adc   a,#$ff
0e7d: 8d 6d     mov   y,#$6d
0e7f: 5f eb 07  jmp   $07eb             ; set ESA

; vcmd fa - set perc patch base
0e82: c4 3f     mov   $3f,a
0e84: 6f        ret

0e85: f4 80     mov   a,$80+x
0e87: d0 39     bne   $0ec2
0e89: e7 00     mov   a,($00+x)
0e8b: 68 f9     cmp   a,#$f9
0e8d: d0 33     bne   $0ec2
0e8f: 3f 30 0c  call  $0c30
0e92: 3f 2e 0c  call  $0c2e
; vcmd f9 - pitch slide
0e95: d4 81     mov   $81+x,a
0e97: 3f 2e 0c  call  $0c2e
0e9a: d4 80     mov   $80+x,a
0e9c: 3f 2e 0c  call  $0c2e
0e9f: c8 10     cmp   x,#$10
0ea1: 90 03     bcc   $0ea6
0ea3: 60        clrc
0ea4: 2f 02     bra   $0ea8
0ea6: 84 5f     adc   a,$5f             ; add global transpose
0ea8: 95 80 03  adc   a,$0380+x         ; per-voice transpose
; calculate portamento delta
0eab: 28 7f     and   a,#$7f
0ead: d5 a0 04  mov   $04a0+x,a         ; final portamento value
0eb0: 80        setc
0eb1: b5 61 04  sbc   a,$0461+x         ; note number
0eb4: fb 80     mov   y,$80+x           ; portamento steps
0eb6: 6d        push  y
0eb7: ce        pop   x
0eb8: 3f ce 0e  call  $0ece
0ebb: d5 80 04  mov   $0480+x,a
0ebe: dd        mov   a,y
0ebf: d5 81 04  mov   $0481+x,a         ; portamento delta
0ec2: 6f        ret

0ec3: f5 61 04  mov   a,$0461+x
0ec6: c4 49     mov   $49,a
0ec8: f5 60 04  mov   a,$0460+x
0ecb: c4 48     mov   $48,a
0ecd: 6f        ret

; signed 16 bit division
0ece: ed        notc
0ecf: 6b 4a     ror   $4a
0ed1: 10 03     bpl   $0ed6
0ed3: 48 ff     eor   a,#$ff
0ed5: bc        inc   a
0ed6: 8d 00     mov   y,#$00
0ed8: 9e        div   ya,x
0ed9: 2d        push  a
0eda: e8 00     mov   a,#$00
0edc: 9e        div   ya,x
0edd: ee        pop   y
0ede: f8 54     mov   x,$54
0ee0: f3 4a 06  bbc7  $4a,$0ee9
0ee3: da 40     movw  $40,ya
0ee5: ba 46     movw  ya,$46
0ee7: 9a 40     subw  ya,$40
0ee9: 6f        ret

; vcmd dispatch table ($0e2a)
0eea: dw $0c38  ; e0 - set instrument
0eec: dw $0c91  ; e1 - pan
0eee: dw $0cad  ; e2 - pan fade
0ef0: dw $0cd0  ; e3 - vibrato on
0ef2: dw $0cdc  ; e4 - vibrato off
0ef4: dw $0cf7  ; e5 - master volume
0ef6: dw $0d01  ; e6 - master volume fade
0ef8: dw $0d13  ; e7 - tempo
0efa: dw $0d31  ; e8 - tempo fade
0efc: dw $0d43  ; e9 - global transpose
0efe: dw $0d46  ; ea - per-voice transpose
0f00: dw $0d4a  ; eb - tremolo on
0f02: dw $0d56  ; ec - tremolo off
0f04: dw $0d77  ; ed - volume
0f06: dw $0d80  ; ee - volume fade
0f08: dw $0d9e  ; ef - call subroutine
0f0a: dw $0ce7  ; f0 - vibrato fade
0f0c: dw $0d59  ; f1 - pitch envelope (release)
0f0e: dw $0d5d  ; f2 - pitch envelope (attack)
0f10: dw $0d73  ; f3 - pitch envelope off
0f12: dw $0d9a  ; f4 - tuning
0f14: dw $0dc2  ; f5 - echo vbits/volume
0f16: dw $0e13  ; f6 - disable echo
0f18: dw $0e1a  ; f7 - set echo params
0f1a: dw $0df2  ; f8 - echo volume fade
0f1c: dw $0e95  ; f9 - pitch slide
0f1e: dw $0e82  ; fa - set perc patch base
0f20: dw $0000  ; fb
0f22: dw $0000  ; fc
0f24: dw $0000  ; fd
0f26: dw $0000  ; fe
0f28: dw $167c  ; ff - sub-vcmd

; vcmd lengths ($0eca)
0f2a: $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0f32: $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0f3a: $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0f42: $03,$03,$01,$02,$00,$00,$00,$03 ; f8-fa

0f4a: f5 30 05  mov   a,$0530+x
0f4d: f0 0d     beq   $0f5c
0f4f: 80        setc
0f50: a8 01     sbc   a,#$01
0f52: d5 30 05  mov   $0530+x,a
0f55: e8 a0     mov   a,#$a0
0f57: 8d 03     mov   y,#$03
0f59: 3f ea 0f  call  $0fea
0f5c: fb c1     mov   y,$c1+x
0f5e: f0 23     beq   $0f83
0f60: f5 60 03  mov   a,$0360+x
0f63: de c0 1b  cbne  $c0+x,$0f81
0f66: 09 57 2f  or    ($2f),($57)
0f69: f5 40 03  mov   a,$0340+x
0f6c: 10 07     bpl   $0f75
0f6e: fc        inc   y
0f6f: d0 04     bne   $0f75
0f71: e8 80     mov   a,#$80
0f73: 2f 04     bra   $0f79
0f75: 60        clrc
0f76: 95 41 03  adc   a,$0341+x
0f79: d5 40 03  mov   $0340+x,a
0f7c: 3f ac 11  call  $11ac
0f7f: 2f 07     bra   $0f88
0f81: bb c0     inc   $c0+x
0f83: e8 ff     mov   a,#$ff
0f85: 3f b7 11  call  $11b7
0f88: f5 31 05  mov   a,$0531+x
0f8b: f0 10     beq   $0f9d
0f8d: f5 31 05  mov   a,$0531+x
0f90: 80        setc
0f91: a8 01     sbc   a,#$01
0f93: d5 31 05  mov   $0531+x,a
0f96: e8 00     mov   a,#$00
0f98: 8d 04     mov   y,#$04
0f9a: 3f ea 0f  call  $0fea
0f9d: e4 57     mov   a,$57
0f9f: 24 2f     and   a,$2f
0fa1: f0 46     beq   $0fe9
0fa3: f5 01 04  mov   a,$0401+x
0fa6: fd        mov   y,a
0fa7: f5 00 04  mov   a,$0400+x
0faa: da 48     movw  $48,ya
0fac: 7d        mov   a,x
0fad: 9f        xcn   a
0fae: 5c        lsr   a
0faf: c4 4a     mov   $4a,a
0fb1: eb 49     mov   y,$49
0fb3: f6 ca 11  mov   a,$11ca+y
0fb6: 80        setc
0fb7: b6 c9 11  sbc   a,$11c9+y
0fba: eb 48     mov   y,$48
0fbc: cf        mul   ya
0fbd: dd        mov   a,y
0fbe: eb 49     mov   y,$49
0fc0: 60        clrc
0fc1: 96 c9 11  adc   a,$11c9+y
0fc4: fd        mov   y,a
0fc5: f5 e1 03  mov   a,$03e1+x
0fc8: cf        mul   ya
0fc9: f5 41 04  mov   a,$0441+x
0fcc: 1c        asl   a
0fcd: 13 4a 01  bbc0  $4a,$0fd1
0fd0: 1c        asl   a
0fd1: dd        mov   a,y
0fd2: 90 03     bcc   $0fd7
0fd4: 48 ff     eor   a,#$ff
0fd6: bc        inc   a
0fd7: eb 4a     mov   y,$4a
0fd9: 3f e3 07  call  $07e3
0fdc: 8d 14     mov   y,#$14
0fde: e8 00     mov   a,#$00
0fe0: 9a 48     subw  ya,$48
0fe2: da 48     movw  $48,ya
0fe4: ab 4a     inc   $4a
0fe6: 33 4a c8  bbc1  $4a,$0fb1
0fe9: 6f        ret

0fea: 09 57 2f  or    ($2f),($57)
0fed: da 40     movw  $40,ya
0fef: da 42     movw  $42,ya
0ff1: 4d        push  x
0ff2: ee        pop   y
0ff3: 60        clrc
0ff4: d0 0a     bne   $1000
0ff6: 98 3f 42  adc   $42,#$3f
0ff9: e8 00     mov   a,#$00
0ffb: d7 40     mov   ($40)+y,a
0ffd: fc        inc   y
0ffe: 2f 09     bra   $1009
1000: 98 20 42  adc   $42,#$20
1003: 3f 07 10  call  $1007
1006: fc        inc   y
1007: f7 40     mov   a,($40)+y
1009: 97 42     adc   a,($42)+y
100b: d7 40     mov   ($40)+y,a
100d: 6f        ret

100e: f4 61     mov   a,$61+x
1010: d0 03     bne   $1015
1012: 5f 9c 10  jmp   $109c

1015: 9b 61     dec   $61+x
1017: f0 05     beq   $101e
1019: e8 02     mov   a,#$02
101b: de 60 7e  cbne  $60+x,$109c
101e: f5 50 05  mov   a,$0550+x
1021: c4 43     mov   $43,a
1023: e5 00 05  mov   a,$0500
1026: f0 0f     beq   $1037
1028: c8 10     cmp   x,#$10
102a: b0 0b     bcs   $1037
102c: 3f e4 13  call  $13e4
102f: ad 00     cmp   y,#$00
1031: f0 62     beq   $1095
1033: ba 1a     movw  ya,$1a
1035: 2f 04     bra   $103b
1037: f4 00     mov   a,$00+x
1039: fb 01     mov   y,$01+x
103b: da 40     movw  $40,ya
103d: 8d 00     mov   y,#$00
103f: f7 40     mov   a,($40)+y
1041: f0 1e     beq   $1061
1043: 30 07     bmi   $104c
1045: fc        inc   y
1046: 30 4d     bmi   $1095
1048: f7 40     mov   a,($40)+y
104a: 10 f9     bpl   $1045
104c: 68 c8     cmp   a,#$c8
104e: f0 4c     beq   $109c
1050: 68 ef     cmp   a,#$ef
1052: f0 36     beq   $108a
1054: 68 e0     cmp   a,#$e0
1056: 90 3d     bcc   $1095
1058: 6d        push  y
1059: fd        mov   y,a
105a: ae        pop   a
105b: 96 4a 0e  adc   a,$0e4a+y
105e: fd        mov   y,a
105f: 2f de     bra   $103f
1061: e4 43     mov   a,$43
1063: d0 0d     bne   $1072
1065: c8 10     cmp   x,#$10
1067: b0 2c     bcs   $1095
1069: 3f e4 13  call  $13e4
106c: 68 c8     cmp   a,#$c8
106e: f0 2c     beq   $109c
1070: 2f 23     bra   $1095
1072: 8b 43     dec   $43
1074: d0 0a     bne   $1080
1076: f5 61 02  mov   a,$0261+x
1079: 2d        push  a
107a: f5 60 02  mov   a,$0260+x
107d: ee        pop   y
107e: 2f bb     bra   $103b
1080: f5 81 02  mov   a,$0281+x
1083: 2d        push  a
1084: f5 80 02  mov   a,$0280+x
1087: ee        pop   y
1088: 2f b1     bra   $103b
108a: fc        inc   y
108b: f7 40     mov   a,($40)+y
108d: 2d        push  a
108e: fc        inc   y
108f: f7 40     mov   a,($40)+y
1091: fd        mov   y,a
1092: ae        pop   a
1093: 2f a6     bra   $103b
1095: e4 57     mov   a,$57
1097: 8d 5c     mov   y,#$5c
1099: 3f e3 07  call  $07e3             ; set KOF if required
109c: f2 4b     clr7  $4b
109e: f4 80     mov   a,$80+x
10a0: f0 2c     beq   $10ce
10a2: f4 81     mov   a,$81+x
10a4: f0 04     beq   $10aa
10a6: 9b 81     dec   $81+x
10a8: 2f 24     bra   $10ce
10aa: e2 4b     set7  $4b
10ac: 9b 80     dec   $80+x
10ae: d0 0b     bne   $10bb
10b0: f5 a1 04  mov   a,$04a1+x
10b3: d5 60 04  mov   $0460+x,a
10b6: f5 a0 04  mov   a,$04a0+x
10b9: 2f 10     bra   $10cb
10bb: 60        clrc
10bc: f5 60 04  mov   a,$0460+x
10bf: 95 80 04  adc   a,$0480+x
10c2: d5 60 04  mov   $0460+x,a
10c5: f5 61 04  mov   a,$0461+x
10c8: 95 81 04  adc   a,$0481+x
10cb: d5 61 04  mov   $0461+x,a
10ce: 3f c3 0e  call  $0ec3
10d1: f4 a1     mov   a,$a1+x
10d3: f0 4c     beq   $1121
10d5: f5 00 03  mov   a,$0300+x
10d8: de a0 44  cbne  $a0+x,$111f
10db: f5 00 01  mov   a,$0100+x
10de: 75 01 03  cmp   a,$0301+x
10e1: d0 05     bne   $10e8
10e3: f5 21 03  mov   a,$0321+x
10e6: 2f 0d     bra   $10f5
10e8: 40        setp
10e9: bb 00     inc   $00+x
10eb: 20        clrp
10ec: fd        mov   y,a
10ed: f0 02     beq   $10f1
10ef: f4 a1     mov   a,$a1+x
10f1: 60        clrc
10f2: 95 20 03  adc   a,$0320+x
10f5: d4 a1     mov   $a1+x,a
10f7: f5 e0 02  mov   a,$02e0+x
10fa: 60        clrc
10fb: 95 e1 02  adc   a,$02e1+x
10fe: d5 e0 02  mov   $02e0+x,a
1101: c4 4a     mov   $4a,a
1103: 1c        asl   a
1104: 1c        asl   a
1105: 90 02     bcc   $1109
1107: 48 ff     eor   a,#$ff
1109: fd        mov   y,a
110a: f4 a1     mov   a,$a1+x
110c: 68 f1     cmp   a,#$f1
110e: 90 05     bcc   $1115
1110: 28 0f     and   a,#$0f
1112: cf        mul   ya
1113: 2f 04     bra   $1119
1115: cf        mul   ya
1116: dd        mov   a,y
1117: 8d 00     mov   y,#$00
1119: 3f 97 11  call  $1197
111c: 5f 60 07  jmp   $0760

111f: bb a0     inc   $a0+x
1121: e3 4b f8  bbs7  $4b,$111c
1124: 6f        ret

1125: f2 4b     clr7  $4b
1127: f4 c1     mov   a,$c1+x
1129: f0 09     beq   $1134
112b: f5 60 03  mov   a,$0360+x
112e: de c0 03  cbne  $c0+x,$1134
1131: 3f 9f 11  call  $119f
1134: f5 01 04  mov   a,$0401+x
1137: fd        mov   y,a
1138: f5 00 04  mov   a,$0400+x
113b: da 48     movw  $48,ya
113d: f5 31 05  mov   a,$0531+x
1140: f0 0a     beq   $114c
1142: f5 21 04  mov   a,$0421+x
1145: fd        mov   y,a
1146: f5 20 04  mov   a,$0420+x
1149: 3f 81 11  call  $1181
114c: f3 4b 03  bbc7  $4b,$1152
114f: 3f ac 0f  call  $0fac
1152: f2 4b     clr7  $4b
1154: 3f c3 0e  call  $0ec3
1157: f4 80     mov   a,$80+x
1159: f0 0e     beq   $1169
115b: f4 81     mov   a,$81+x
115d: d0 0a     bne   $1169
115f: f5 81 04  mov   a,$0481+x
1162: fd        mov   y,a
1163: f5 80 04  mov   a,$0480+x
1166: 3f 81 11  call  $1181
1169: f4 a1     mov   a,$a1+x
116b: f0 b4     beq   $1121
116d: f5 00 03  mov   a,$0300+x
1170: de a0 ae  cbne  $a0+x,$1121
1173: eb 22     mov   y,$22
1175: f5 e1 02  mov   a,$02e1+x
1178: cf        mul   ya
1179: dd        mov   a,y
117a: 60        clrc
117b: 95 e0 02  adc   a,$02e0+x
117e: 5f 01 11  jmp   $1101

1181: e2 4b     set7  $4b
1183: cb 4a     mov   $4a,y
1185: 3f e0 0e  call  $0ee0
1188: 6d        push  y
1189: eb 22     mov   y,$22
118b: cf        mul   ya
118c: cb 40     mov   $40,y
118e: 8f 00 41  mov   $41,#$00
1191: eb 22     mov   y,$22
1193: ae        pop   a
1194: cf        mul   ya
1195: 7a 40     addw  ya,$40
1197: 3f e0 0e  call  $0ee0
119a: 7a 48     addw  ya,$48
119c: da 48     movw  $48,ya
119e: 6f        ret

119f: e2 4b     set7  $4b
11a1: eb 22     mov   y,$22
11a3: f5 41 03  mov   a,$0341+x
11a6: cf        mul   ya
11a7: dd        mov   a,y
11a8: 60        clrc
11a9: 95 40 03  adc   a,$0340+x
11ac: 1c        asl   a
11ad: 90 02     bcc   $11b1
11af: 48 ff     eor   a,#$ff
11b1: fb c1     mov   y,$c1+x
11b3: cf        mul   ya
11b4: dd        mov   a,y
11b5: 48 ff     eor   a,#$ff
11b7: eb 2a     mov   y,$2a
11b9: cf        mul   ya
11ba: f5 20 02  mov   a,$0220+x
11bd: cf        mul   ya
11be: f5 a1 03  mov   a,$03a1+x
11c1: cf        mul   ya
11c2: dd        mov   a,y
11c3: cf        mul   ya
11c4: dd        mov   a,y
11c5: d5 e1 03  mov   $03e1+x,a
11c8: 6f        ret

; pan table
11c9: db $00,$01,$03,$07,$0d,$15,$1e,$29
11d1: db $34,$42,$51,$5e,$67,$6e,$73,$77
11d9: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
11de: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
11e6: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
11ee: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
11f6: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03


; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($11fd+1) for dsp regs ($1207+1)
11fe: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1208: db $31,$33,$5e,$5a,$58,$55,$46,$59,$3d,$56

; pitch table
1212: dw $085f
1214: dw $08de
1216: dw $0965
1218: dw $09f4
121a: dw $0a8c
121c: dw $0b2c
121e: dw $0bd6
1220: dw $0c8b
1222: dw $0d4a
1224: dw $0e14
1226: dw $0eea
1228: dw $0fcd
122a: dw $10be

122c: e8 00     mov   a,#$00
122e: c5 f7 00  mov   $00f7,a
1231: e8 aa     mov   a,#$aa
1233: c5 f4 00  mov   $00f4,a
1236: e8 bb     mov   a,#$bb
1238: c5 f5 00  mov   $00f5,a
123b: 2f 08     bra   $1245
123d: e8 ff     mov   a,#$ff
123f: c5 f7 00  mov   $00f7,a
1242: 3f 65 13  call  $1365
1245: cd cc     mov   x,#$cc
1247: 1e f4 00  cmp   x,$00f4
124a: d0 fb     bne   $1247
124c: e5 f6 00  mov   a,$00f6
124f: ec f7 00  mov   y,$00f7
1252: da 40     movw  $40,ya
1254: c9 f4 00  mov   $00f4,x
1257: cd dd     mov   x,#$dd
1259: 1e f4 00  cmp   x,$00f4
125c: d0 fb     bne   $1259
125e: e5 f6 00  mov   a,$00f6
1261: ec f7 00  mov   y,$00f7
1264: da 20     movw  $20,ya
1266: c9 f4 00  mov   $00f4,x
1269: ba 20     movw  ya,$20
126b: f0 0d     beq   $127a
126d: ba 40     movw  ya,$40
126f: f0 14     beq   $1285
1271: e8 ff     mov   a,#$ff
1273: fd        mov   y,a
1274: 5a 40     cmpw  ya,$40
1276: f0 0d     beq   $1285
1278: 2f c3     bra   $123d
127a: e8 fb     mov   a,#$fb
127c: c5 f7 00  mov   $00f7,a
127f: cd 33     mov   x,#$33
1281: c9 f1 00  mov   $00f1,x
1284: 6f        ret

1285: e8 fa     mov   a,#$fa
1287: c5 f7 00  mov   $00f7,a
128a: e5 77 05  mov   a,$0577
128d: d0 19     bne   $12a8
128f: e5 7e 05  mov   a,$057e
1292: c5 77 05  mov   $0577,a
1295: 5d        mov   x,a
1296: f5 72 17  mov   a,$1772+x
1299: c4 10     mov   $10,a
129b: e8 22     mov   a,#$22
129d: c4 11     mov   $11,a
129f: e8 00     mov   a,#$00
12a1: c4 12     mov   $12,a
12a3: f5 b2 17  mov   a,$17b2+x
12a6: c4 13     mov   $13,a
12a8: ba 12     movw  ya,$12
12aa: da 14     movw  $14,ya
12ac: e8 ff     mov   a,#$ff
12ae: fd        mov   y,a
12af: 5a 40     cmpw  ya,$40
12b1: d0 03     bne   $12b6
12b3: 5f 48 13  jmp   $1348

12b6: 9c        dec   a
12b7: 5a 40     cmpw  ya,$40
12b9: f0 36     beq   $12f1
12bb: ba 20     movw  ya,$20
12bd: d0 01     bne   $12c0
12bf: 6f        ret

12c0: ba 12     movw  ya,$12
12c2: da 40     movw  $40,ya
12c4: 3f 65 13  call  $1365
12c7: ba 40     movw  ya,$40
12c9: da 12     movw  $12,ya
12cb: cd cc     mov   x,#$cc
12cd: 1e f4 00  cmp   x,$00f4
12d0: d0 fb     bne   $12cd
12d2: e5 f6 00  mov   a,$00f6
12d5: ec f7 00  mov   y,$00f7
12d8: da 40     movw  $40,ya
12da: c9 f4 00  mov   $00f4,x
12dd: cd dd     mov   x,#$dd
12df: 1e f4 00  cmp   x,$00f4
12e2: d0 fb     bne   $12df
12e4: e5 f6 00  mov   a,$00f6
12e7: ec f7 00  mov   y,$00f7
12ea: da 20     movw  $20,ya
12ec: c9 f4 00  mov   $00f4,x
12ef: 2f bb     bra   $12ac
12f1: e9 f4 00  mov   x,$00f4
12f4: d0 fb     bne   $12f1
12f6: c9 f4 00  mov   $00f4,x
12f9: 3d        inc   x
12fa: 1e f4 00  cmp   x,$00f4
12fd: d0 fb     bne   $12fa
12ff: e5 f5 00  mov   a,$00f5
1302: ec f6 00  mov   y,$00f6
1305: 7a 14     addw  ya,$14
1307: da 16     movw  $16,ya
1309: c9 f4 00  mov   $00f4,x
130c: e5 7b 05  mov   a,$057b
130f: d0 04     bne   $1315
1311: ba 10     movw  ya,$10
1313: da 18     movw  $18,ya
1315: 3a 10     incw  $10
1317: 3a 10     incw  $10
1319: 3a 10     incw  $10
131b: 3a 10     incw  $10
131d: 8d 00     mov   y,#$00
131f: e4 14     mov   a,$14
1321: d7 18     mov   ($18)+y,a
1323: 3a 18     incw  $18
1325: e4 15     mov   a,$15
1327: d7 18     mov   ($18)+y,a
1329: 3a 18     incw  $18
132b: e4 16     mov   a,$16
132d: d7 18     mov   ($18)+y,a
132f: 3a 18     incw  $18
1331: e4 17     mov   a,$17
1333: d7 18     mov   ($18)+y,a
1335: 3a 18     incw  $18
1337: ba 18     movw  ya,$18
1339: 5a 10     cmpw  ya,$10
133b: 90 e0     bcc   $131d
133d: e8 00     mov   a,#$00
133f: c5 7b 05  mov   $057b,a
1342: ba 12     movw  ya,$12
1344: da 14     movw  $14,ya
1346: 2f 83     bra   $12cb
1348: e5 7b 05  mov   a,$057b
134b: d0 09     bne   $1356
134d: ba 10     movw  ya,$10
134f: da 18     movw  $18,ya
1351: e8 01     mov   a,#$01
1353: c5 7b 05  mov   $057b,a
1356: 3f 65 13  call  $1365
1359: 8d 00     mov   y,#$00
135b: e8 04     mov   a,#$04
135d: 7a 10     addw  ya,$10
135f: da 10     movw  $10,ya
1361: 5f cb 12  jmp   $12cb

1364: 6f        ret

1365: e8 fe     mov   a,#$fe
1367: c5 f7 00  mov   $00f7,a
136a: e5 f4 00  mov   a,$00f4
136d: d0 f6     bne   $1365
136f: c5 f4 00  mov   $00f4,a
1372: 5d        mov   x,a
1373: fd        mov   y,a
1374: 3d        inc   x
1375: 1e f4 00  cmp   x,$00f4
1378: d0 fb     bne   $1375
137a: e8 fd     mov   a,#$fd
137c: c5 f7 00  mov   $00f7,a
137f: e5 f5 00  mov   a,$00f5
1382: d7 40     mov   ($40)+y,a
1384: 3a 40     incw  $40
1386: 1a 20     decw  $20
1388: f0 16     beq   $13a0
138a: e5 f6 00  mov   a,$00f6
138d: d7 40     mov   ($40)+y,a
138f: 3a 40     incw  $40
1391: 1a 20     decw  $20
1393: f0 0b     beq   $13a0
1395: e5 f7 00  mov   a,$00f7
1398: d7 40     mov   ($40)+y,a
139a: 3a 40     incw  $40
139c: 1a 20     decw  $20
139e: f0 00     beq   $13a0
13a0: c9 f4 00  mov   $00f4,x
13a3: d0 cf     bne   $1374
13a5: e8 fc     mov   a,#$fc
13a7: c5 f7 00  mov   $00f7,a
13aa: 6f        ret

13ab: e8 00     mov   a,#$00
13ad: c5 f4 00  mov   $00f4,a
13b0: c5 f5 00  mov   $00f5,a
13b3: c5 f6 00  mov   $00f6,a
13b6: c5 f7 00  mov   $00f7,a
13b9: 5d        mov   x,a
13ba: c4 40     mov   $40,a
13bc: e5 f7 00  mov   a,$00f7
13bf: c4 41     mov   $41,a
13c1: 8f e0 20  mov   $20,#$e0
13c4: 3d        inc   x
13c5: 8d 00     mov   y,#$00
13c7: f7 40     mov   a,($40)+y
13c9: c5 f6 00  mov   $00f6,a
13cc: 3a 40     incw  $40
13ce: f7 40     mov   a,($40)+y
13d0: c5 f7 00  mov   $00f7,a
13d3: 3a 40     incw  $40
13d5: c9 f4 00  mov   $00f4,x
13d8: 1e f4 00  cmp   x,$00f4
13db: d0 fb     bne   $13d8
13dd: 8b 20     dec   $20
13df: 8b 20     dec   $20
13e1: d0 e1     bne   $13c4
13e3: 6f        ret

13e4: 8d 01     mov   y,#$01
13e6: cc 00 05  mov   $0500,y
13e9: ba 50     movw  ya,$50
13eb: da 20     movw  $20,ya
13ed: 8d 00     mov   y,#$00
13ef: f7 20     mov   a,($20)+y
13f1: c4 14     mov   $14,a
13f3: 3a 20     incw  $20
13f5: f7 20     mov   a,($20)+y
13f7: c4 15     mov   $15,a
13f9: 3a 20     incw  $20
13fb: e4 15     mov   a,$15
13fd: d0 0f     bne   $140e
13ff: e4 14     mov   a,$14
1401: f0 24     beq   $1427
1403: f7 20     mov   a,($20)+y
1405: 2d        push  a
1406: 3a 20     incw  $20
1408: f7 20     mov   a,($20)+y
140a: fd        mov   y,a
140b: ae        pop   a
140c: 2f dd     bra   $13eb
140e: 7d        mov   a,x
140f: fd        mov   y,a
1410: f7 14     mov   a,($14)+y
1412: c4 1a     mov   $1a,a
1414: 3a 14     incw  $14
1416: f7 14     mov   a,($14)+y
1418: c4 1b     mov   $1b,a
141a: 8d ff     mov   y,#$ff
141c: fc        inc   y
141d: 30 08     bmi   $1427
141f: f7 1a     mov   a,($1a)+y
1421: 10 f9     bpl   $141c
1423: 68 ca     cmp   a,#$ca
1425: b0 f5     bcs   $141c
1427: 6f        ret

1428: e8 00     mov   a,#$00
142a: fd        mov   y,a
142b: 8f 80 20  mov   $20,#$80
142e: 8f 05 21  mov   $21,#$05
1431: 8b 20     dec   $20
1433: d7 20     mov   ($20)+y,a
1435: d0 fa     bne   $1431
1437: 8b 21     dec   $21
1439: 78 01 21  cmp   $21,#$01
143c: d0 f3     bne   $1431
143e: c5 00 18  mov   $1800,a
1441: c5 01 18  mov   $1801,a
1444: c5 00 19  mov   $1900,a
1447: c5 80 19  mov   $1980,a
144a: 6f        ret

144b: ec 7e 05  mov   y,$057e
144e: f6 f2 16  mov   a,$16f2+y
1451: c4 21     mov   $21,a
1453: e8 00     mov   a,#$00
1455: fd        mov   y,a
1456: c4 20     mov   $20,a
1458: d7 20     mov   ($20)+y,a
145a: fc        inc   y
145b: d0 fb     bne   $1458
145d: ab 21     inc   $21
145f: 78 ff 21  cmp   $21,#$ff
1462: d0 f4     bne   $1458
1464: 6f        ret

1465: 4d        push  x
1466: 6d        push  y
1467: e5 f4 00  mov   a,$00f4
146a: c5 04 05  mov   $0504,a
146d: e5 f5 00  mov   a,$00f5
1470: c5 05 05  mov   $0505,a
1473: 8d 01     mov   y,#$01
1475: cd 00     mov   x,#$00
1477: c9 7f 05  mov   $057f,x
147a: f6 04 05  mov   a,$0504+y
147d: f0 4e     beq   $14cd
147f: 76 01 05  cmp   a,$0501+y
1482: f0 49     beq   $14cd
1484: cd 00     mov   x,#$00
1486: 68 f0     cmp   a,#$f0
1488: 90 0c     bcc   $1496
148a: d0 05     bne   $1491
148c: 3f 00 08  call  $0800
148f: 2f 4a     bra   $14db
1491: c5 15 05  mov   $0515,a
1494: 2f 37     bra   $14cd
1496: 2d        push  a
1497: 6d        push  y
1498: 3f de 14  call  $14de
149b: e5 7f 05  mov   a,$057f
149e: ee        pop   y
149f: ae        pop   a
14a0: d0 2b     bne   $14cd
14a2: 5d        mov   x,a
14a3: f5 00 19  mov   a,$1900+x
14a6: c4 20     mov   $20,a
14a8: 28 80     and   a,#$80
14aa: d0 04     bne   $14b0
14ac: e8 00     mov   a,#$00
14ae: 2f 06     bra   $14b6
14b0: f5 80 19  mov   a,$1980+x
14b3: 5c        lsr   a
14b4: 5c        lsr   a
14b5: 9f        xcn   a
14b6: 5d        mov   x,a
14b7: f5 f0 04  mov   a,$04f0+x
14ba: 4d        push  x
14bb: 5d        mov   x,a
14bc: f5 00 19  mov   a,$1900+x
14bf: c4 21     mov   $21,a
14c1: ce        pop   x
14c2: 69 21 20  cmp   ($20),($21)
14c5: 90 06     bcc   $14cd
14c7: f6 04 05  mov   a,$0504+y
14ca: d5 f0 04  mov   $04f0+x,a
14cd: f6 04 05  mov   a,$0504+y
14d0: d6 01 05  mov   $0501+y,a
14d3: f0 03     beq   $14d8
14d5: d6 f4 00  mov   $00f4+y,a
14d8: dc        dec   y
14d9: 10 9f     bpl   $147a
14db: ee        pop   y
14dc: ce        pop   x
14dd: 6f        ret

14de: c4 20     mov   $20,a
14e0: e9 7e 05  mov   x,$057e
14e3: f5 32 17  mov   a,$1732+x
14e6: 64 20     cmp   a,$20
14e8: b0 16     bcs   $1500
14ea: e8 03     mov   a,#$03
14ec: fd        mov   y,a
14ed: c5 7d 05  mov   $057d,a
14f0: c5 fb 04  mov   $04fb,a
14f3: c4 4d     mov   $4d,a
14f5: 3f 9d 08  call  $089d
14f8: 3f a5 09  call  $09a5
14fb: e8 01     mov   a,#$01
14fd: c5 7f 05  mov   $057f,a
1500: 6f        ret

1501: 4d        push  x
1502: 6d        push  y
1503: 8d 03     mov   y,#$03
1505: f6 f8 04  mov   a,$04f8+y
1508: 5d        mov   x,a
1509: f5 00 19  mov   a,$1900+x
150c: d6 fc 04  mov   $04fc+y,a
150f: dc        dec   y
1510: 10 f3     bpl   $1505
1512: 8d 03     mov   y,#$03
1514: f6 f0 04  mov   a,$04f0+y
1517: f0 6d     beq   $1586
1519: 5d        mov   x,a
151a: f5 00 19  mov   a,$1900+x
151d: c4 20     mov   $20,a
151f: f6 fc 04  mov   a,$04fc+y
1522: c4 21     mov   $21,a
1524: 69 21 20  cmp   ($20),($21)
1527: 90 5d     bcc   $1586
1529: ad 00     cmp   y,#$00
152b: f0 2c     beq   $1559
152d: ad 03     cmp   y,#$03
152f: f0 28     beq   $1559
1531: e5 fb 04  mov   a,$04fb
1534: f0 23     beq   $1559
1536: e5 ff 04  mov   a,$04ff
1539: c4 21     mov   $21,a
153b: 69 21 20  cmp   ($20),($21)
153e: 90 46     bcc   $1586
1540: e8 00     mov   a,#$00
1542: c5 fb 04  mov   $04fb,a
1545: ad 02     cmp   y,#$02
1547: d0 02     bne   $154b
1549: e8 01     mov   a,#$01
154b: ad 01     cmp   y,#$01
154d: d0 02     bne   $1551
154f: e8 02     mov   a,#$02
1551: 6d        push  y
1552: c5 7d 05  mov   $057d,a
1555: 3f f9 08  call  $08f9
1558: ee        pop   y
1559: f6 f0 04  mov   a,$04f0+y
155c: d6 f8 04  mov   $04f8+y,a
155f: c4 4d     mov   $4d,a
1561: 6d        push  y
1562: 3f 9d 08  call  $089d
1565: e5 10 05  mov   a,$0510
1568: f0 0f     beq   $1579
156a: 3f a5 09  call  $09a5
156d: e4 4d     mov   a,$4d
156f: 5d        mov   x,a
1570: f5 80 19  mov   a,$1980+x
1573: 8d 5c     mov   y,#$5c
1575: 3f eb 07  call  $07eb             ; set KOF
1578: 7d        mov   a,x
1579: ee        pop   y
157a: ad 03     cmp   y,#$03
157c: d0 08     bne   $1586
157e: e8 00     mov   a,#$00
1580: c5 f9 04  mov   $04f9,a
1583: c5 fa 04  mov   $04fa,a
1586: dc        dec   y
1587: 10 8b     bpl   $1514
1589: e5 15 05  mov   a,$0515
158c: f0 03     beq   $1591
158e: 3f 77 09  call  $0977
1591: e8 00     mov   a,#$00
1593: c5 15 05  mov   $0515,a
1596: c5 f0 04  mov   $04f0,a
1599: c5 f1 04  mov   $04f1,a
159c: c5 f2 04  mov   $04f2,a
159f: c5 f3 04  mov   $04f3,a
15a2: ee        pop   y
15a3: ce        pop   x
15a4: 6f        ret

15a5: 6f        ret

15a6: e5 fe 00  mov   a,$00fe
15a9: e9 06 05  mov   x,$0506
15ac: f0 3e     beq   $15ec
15ae: 85 0a 05  adc   a,$050a
15b1: 68 32     cmp   a,#$32
15b3: 90 37     bcc   $15ec
15b5: c8 02     cmp   x,#$02
15b7: f0 37     beq   $15f0
15b9: e5 09 05  mov   a,$0509
15bc: 80        setc
15bd: a5 0b 05  sbc   a,$050b
15c0: 68 80     cmp   a,#$80
15c2: 90 23     bcc   $15e7
15c4: e4 31     mov   a,$31
15c6: 80        setc
15c7: a5 0d 05  sbc   a,$050d
15ca: 68 80     cmp   a,#$80
15cc: 90 13     bcc   $15e1
15ce: e8 ff     mov   a,#$ff
15d0: 3f d5 16  call  $16d5
15d3: e8 00     mov   a,#$00
15d5: c5 f6 00  mov   $00f6,a
15d8: c5 06 05  mov   $0506,a
15db: 3f 59 09  call  $0959
15de: 3f 4b 14  call  $144b
15e1: c4 31     mov   $31,a
15e3: c4 33     mov   $33,a
15e5: e8 00     mov   a,#$00
15e7: 3f a2 16  call  $16a2
15ea: e8 00     mov   a,#$00
15ec: c5 0a 05  mov   $050a,a
15ef: 6f        ret

15f0: e5 09 05  mov   a,$0509
15f3: 60        clrc
15f4: 85 0b 05  adc   a,$050b
15f7: 68 80     cmp   a,#$80
15f9: 90 ec     bcc   $15e7
15fb: e8 00     mov   a,#$00
15fd: c5 06 05  mov   $0506,a
1600: e8 7f     mov   a,#$7f
1602: 2f e3     bra   $15e7
1604: ac 06 05  inc   $0506
1607: e9 f7 00  mov   x,$00f7
160a: 8d 00     mov   y,#$00
160c: cc 0a 05  mov   $050a,y
160f: e8 7f     mov   a,#$7f
1611: 9e        div   ya,x
1612: d0 01     bne   $1615
1614: bc        inc   a
1615: c5 0b 05  mov   $050b,a
1618: e4 31     mov   a,$31
161a: 8d 00     mov   y,#$00
161c: e9 f7 00  mov   x,$00f7
161f: 9e        div   ya,x
1620: d0 01     bne   $1623
1622: bc        inc   a
1623: c5 0d 05  mov   $050d,a
1626: 6f        ret

1627: e8 00     mov   a,#$00
1629: c5 06 05  mov   $0506,a
162c: c4 5a     mov   $5a,a
162e: eb 4d     mov   y,$4d
1630: 3f e3 07  call  $07e3
1633: e8 7f     mov   a,#$7f
1635: 3f a2 16  call  $16a2
1638: e8 00     mov   a,#$00
163a: fd        mov   y,a
163b: 3f 13 0e  call  $0e13
163e: 6f        ret

163f: e8 00     mov   a,#$00
1641: c5 f6 04  mov   $04f6,a
1644: 2f 05     bra   $164b
1646: e8 01     mov   a,#$01
1648: c5 f6 04  mov   $04f6,a
164b: e5 15 05  mov   a,$0515
164e: c5 f7 00  mov   $00f7,a
1651: cd 0e     mov   x,#$0e
1653: 8f 80 57  mov   $57,#$80
1656: f5 e0 04  mov   a,$04e0+x
1659: ec f6 04  mov   y,$04f6
165c: f0 02     beq   $1660
165e: e8 0a     mov   a,#$0a
1660: d5 41 04  mov   $0441+x,a
1663: 28 1f     and   a,#$1f
1665: d5 01 04  mov   $0401+x,a
1668: e8 00     mov   a,#$00
166a: d5 00 04  mov   $0400+x,a
166d: 1d        dec   x
166e: 1d        dec   x
166f: 4b 57     lsr   $57
1671: d0 e3     bne   $1656
1673: 6f        ret

1674: ec f7 00  mov   y,$00f7
1677: e8 00     mov   a,#$00
1679: da 23     movw  $23,ya
167b: 6f        ret

; vcmd ff - sub-vcmd
167c: 1c        asl   a
167d: fd        mov   y,a
167e: f6 8b 16  mov   a,$168b+y
1681: 2d        push  a
1682: f6 8a 16  mov   a,$168a+y
1685: 2d        push  a
1686: 3f 2e 0c  call  $0c2e
1689: 6f        ret

; sub-vcmd dispatch table
168a: dw $16cd  ; 00
168c: dw $16da  ; 01 - channel echo on
168e: dw $16e5  ; 02 - channel echo off
1690: dw $16b0  ; 03
1692: dw $16a2  ; 04 - hardware master volume
1694: dw $1696  ; 05

; sub-vcmd 05
1696: ac 0e 05  inc   $050e
1699: f0 fb     beq   $1696
169b: e5 0e 05  mov   a,$050e
169e: c5 f6 00  mov   $00f6,a
169f: 6f        ret

; sub-vcmd 04 - hardware master volume
16a2: c5 09 05  mov   $0509,a
16a5: 8d 0c     mov   y,#$0c
16a7: 3f eb 07  call  $07eb             ; set MVOL(L)
16aa: 8d 1c     mov   y,#$1c
16ac: 3f eb 07  call  $07eb             ; set MVOL(R)
16af: 6f        ret

; sub-vcmd 03
16b0: 4d        push  x
16b1: 2d        push  a
16b2: e8 02     mov   a,#$02
16b4: c5 06 05  mov   $0506,a
16b7: ce        pop   x
16b8: 8d 00     mov   y,#$00
16ba: cc 0a 05  mov   $050a,y
16bd: e8 7f     mov   a,#$7f
16bf: 9e        div   ya,x
16c0: d0 01     bne   $16c3
16c2: bc        inc   a
16c3: c5 0b 05  mov   $050b,a
16c6: e8 00     mov   a,#$00
16c8: 3f a2 16  call  $16a2
16cb: ce        pop   x
16cc: 6f        ret

; sub-vcmd 00
16cd: c5 f7 04  mov   $04f7,a
16d0: d0 01     bne   $16d3
16d2: 6f        ret

16d3: e8 ff     mov   a,#$ff
16d5: 8d 5c     mov   y,#$5c
16d7: 5f e3 07  jmp   $07e3             ; set KOF if required

; sub-vcmd 01 - channel echo on
16da: 7d        mov   a,x
16db: 5c        lsr   a
16dc: fd        mov   y,a
16dd: f6 e3 06  mov   a,$06e3+y
16e0: 04 5a     or    a,$5a
16e2: c4 5a     mov   $5a,a
16e4: 6f        ret

; sub-vcmd 02 - channel echo off
16e5: 7d        mov   a,x
16e6: 5c        lsr   a
16e7: fd        mov   y,a
16e8: f6 e3 06  mov   a,$06e3+y
16eb: 48 ff     eor   a,#$ff
16ed: 24 5a     and   a,$5a
16ef: c4 5a     mov   $5a,a
16f1: 6f        ret
