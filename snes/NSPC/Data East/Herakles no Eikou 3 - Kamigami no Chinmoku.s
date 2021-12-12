0600: 20        clrp
0601: cd cf     mov   x,#$cf
0603: bd        mov   sp,x              ; set SP to (01)cf
0604: e8 00     mov   a,#$00
0606: 5d        mov   x,a
0607: af        mov   (x)+,a
0608: c8 e0     cmp   x,#$e0
060a: d0 fb     bne   $0607             ; zero 00-e0
060c: e8 00     mov   a,#$00
060e: c5 f4 00  mov   $00f4,a
0611: bc        inc   a
0612: c5 f5 00  mov   $00f5,a
0615: bc        inc   a
0616: c5 f6 00  mov   $00f6,a
0619: bc        inc   a
061a: c5 f7 00  mov   $00f7,a
061d: 3f 52 12  call  $1252
0620: e8 00     mov   a,#$00
0622: bc        inc   a
0623: 3f 54 0e  call  $0e54
0626: a2 58     set5  $58
0628: e8 7f     mov   a,#$7f
062a: 3f 65 14  call  $1465
062d: e8 26     mov   a,#$26
062f: 8d 5d     mov   y,#$5d
0631: 3f 66 08  call  $0866             ; source dir = $2600
0634: e8 f0     mov   a,#$f0
0636: c5 f1 00  mov   $00f1,a
0639: e8 10     mov   a,#$10
063b: c5 fa 00  mov   $00fa,a           ; set timer 0 latch to #$10 (500 Hz, 2ms)
063e: c5 fb 00  mov   $00fb,a           ; set timer 1 latch to #$10 (500 Hz, 2ms)
0641: c4 24     mov   $24,a
0643: c5 72 05  mov   $0572,a
0646: c5 76 05  mov   $0576,a
0649: c5 7a 05  mov   $057a,a
064c: e8 03     mov   a,#$03
064e: c5 f1 00  mov   $00f1,a
0651: 8f ff 2a  mov   $2a,#$ff
0654: 8d 0a     mov   y,#$0a
0656: ad 05     cmp   y,#$05
0658: f0 07     beq   $0661
065a: b0 08     bcs   $0664
065c: 69 5d 5b  cmp   ($5b),($5d)
065f: d0 11     bne   $0672
0661: e3 5b 0e  bbs7  $5b,$0672
0664: f6 d0 11  mov   a,$11d0+y
0667: c5 f2 00  mov   $00f2,a
066a: f6 da 11  mov   a,$11da+y
066d: 5d        mov   x,a
066e: e6        mov   a,(x)
066f: c5 f3 00  mov   $00f3,a
0672: fe e2     dbnz  y,$0656
0674: cb 55     mov   $55,y
0676: cb 56     mov   $56,y
0678: e4 44     mov   a,$44
067a: 44 45     eor   a,$45
067c: 5c        lsr   a
067d: 5c        lsr   a
067e: ed        notc
067f: 6b 44     ror   $44
0681: 6b 45     ror   $45
0683: ec fd 00  mov   y,$00fd
0686: f0 fb     beq   $0683
0688: 6d        push  y
0689: e8 20     mov   a,#$20
068b: cf        mul   ya
068c: 60        clrc
068d: 84 53     adc   a,$53
068f: c4 53     mov   $53,a
0691: 90 07     bcc   $069a
0693: 69 5d 5b  cmp   ($5b),($5d)
0696: f0 02     beq   $069a
0698: ab 5b     inc   $5b
069a: 3f 7a 13  call  $137a
069d: cd 00     mov   x,#$00
069f: 3f 79 12  call  $1279
06a2: 3f ec 12  call  $12ec
06a5: 8f 00 3e  mov   $3e,#$00
06a8: e8 02     mov   a,#$02
06aa: c5 7c 05  mov   $057c,a
06ad: e9 7c 05  mov   x,$057c
06b0: f5 f9 04  mov   a,$04f9+x
06b3: f0 31     beq   $06e6
06b5: ee        pop   y
06b6: 6d        push  y
06b7: c9 7d 05  mov   $057d,x
06ba: ac 7d 05  inc   $057d
06bd: f5 32 07  mov   a,$0732+x
06c0: c4 57     mov   $57,a
06c2: f5 35 07  mov   a,$0735+x
06c5: c5 f5 04  mov   $04f5,a
06c8: f5 38 07  mov   a,$0738+x
06cb: 2d        push  a
06cc: 7d        mov   a,x
06cd: 1c        asl   a
06ce: 1c        asl   a
06cf: 5d        mov   x,a
06d0: f5 72 05  mov   a,$0572+x
06d3: cf        mul   ya
06d4: 60        clrc
06d5: 95 70 05  adc   a,$0570+x
06d8: d5 70 05  mov   $0570+x,a
06db: ce        pop   x
06dc: 90 05     bcc   $06e3
06de: 3f 1e 0b  call  $0b1e
06e1: 2f 03     bra   $06e6
06e3: 3f 0f 07  call  $070f
06e6: 8c 7c 05  dec   $057c
06e9: 10 c2     bpl   $06ad
06eb: e5 07 05  mov   a,$0507
06ee: c4 3e     mov   $3e,a
06f0: cd 00     mov   x,#$00
06f2: 8f 01 57  mov   $57,#$01
06f5: c9 7d 05  mov   $057d,x
06f8: e4 24     mov   a,$24
06fa: ee        pop   y
06fb: cf        mul   ya
06fc: 60        clrc
06fd: 84 22     adc   a,$22
06ff: c4 22     mov   $22,a
0701: b0 06     bcs   $0709
0703: 3f 0f 07  call  $070f
0706: 5f 54 06  jmp   $0654

0709: 3f 49 0a  call  $0a49
070c: 5f 54 06  jmp   $0654

070f: 3f 79 12  call  $1279
0712: e4 4e     mov   a,$4e
0714: f0 1b     beq   $0731
0716: f4 01     mov   a,$01+x
0718: f0 03     beq   $071d
071a: 3f f8 10  call  $10f8
071d: 3d        inc   x
071e: 3d        inc   x
071f: 0b 57     asl   $57
0721: f0 0e     beq   $0731
0723: ec 7d 05  mov   y,$057d
0726: f6 f8 04  mov   a,$04f8+y
0729: fd        mov   y,a
072a: f6 00 19  mov   a,$1900+y
072d: 24 57     and   a,$57
072f: d0 e5     bne   $0716
0731: 6f        ret

0732: 40 80 40        setp
0735: 01 01 02
0738: 1c 1e 1c

073b: e4 3e     mov   a,$3e
073d: 24 57     and   a,$57
073f: d0 1f     bne   $0760
0741: ad c8     cmp   y,#$c8
0743: f0 1b     beq   $0760
0745: c8 0c     cmp   x,#$0c
0747: 90 0a     bcc   $0753
0749: e5 fb 04  mov   a,$04fb
074c: f0 05     beq   $0753
074e: e5 7d 05  mov   a,$057d
0751: f0 0d     beq   $0760
0753: 4d        push  x
0754: 7d        mov   a,x
0755: 5c        lsr   a
0756: 5d        mov   x,a
0757: f5 61 07  mov   a,$0761+x
075a: 8d 5c     mov   y,#$5c
075c: 3f 66 08  call  $0866             ; set KOF
075f: ce        pop   x
0760: 6f        ret

0761: $01,$02,$04,$08,$10,$20,$40,$80
0769: $01,$02,$04,$08,$10,$20,$40,$80

0771: ad ca     cmp   y,#$ca
0773: 90 05     bcc   $077a
0775: 3f 62 0c  call  $0c62
0778: 8d a4     mov   y,#$a4
077a: ad c8     cmp   y,#$c8
077c: b0 bd     bcs   $073b
077e: e4 3e     mov   a,$3e
0780: 24 57     and   a,$57
0782: d0 dc     bne   $0760
0784: dd        mov   a,y
0785: 28 7f     and   a,#$7f
0787: 60        clrc
0788: 84 5f     adc   a,$5f
078a: 60        clrc
078b: 95 80 03  adc   a,$0380+x
078e: d5 61 04  mov   $0461+x,a
0791: f5 a1 04  mov   a,$04a1+x
0794: d5 60 04  mov   $0460+x,a
0797: f5 01 03  mov   a,$0301+x
079a: 5c        lsr   a
079b: e8 00     mov   a,#$00
079d: 7c        ror   a
079e: d5 e0 02  mov   $02e0+x,a
07a1: e8 00     mov   a,#$00
07a3: d4 a0     mov   $a0+x,a
07a5: d5 00 01  mov   $0100+x,a
07a8: d5 40 03  mov   $0340+x,a
07ab: d4 c0     mov   $c0+x,a
07ad: 09 57 2f  or    ($2f),($57)
07b0: 09 57 55  or    ($55),($57)
07b3: f5 a0 02  mov   a,$02a0+x
07b6: d4 80     mov   $80+x,a
07b8: f0 1e     beq   $07d8
07ba: f5 a1 02  mov   a,$02a1+x
07bd: d4 81     mov   $81+x,a
07bf: f5 c0 02  mov   a,$02c0+x
07c2: d0 0a     bne   $07ce
07c4: f5 61 04  mov   a,$0461+x
07c7: 80        setc
07c8: b5 c1 02  sbc   a,$02c1+x
07cb: d5 61 04  mov   $0461+x,a
07ce: f5 c1 02  mov   a,$02c1+x
07d1: 60        clrc
07d2: 95 61 04  adc   a,$0461+x
07d5: 3f bd 0e  call  $0ebd
07d8: 3f d5 0e  call  $0ed5
07db: 8d 00     mov   y,#$00
07dd: e4 49     mov   a,$49
07df: 80        setc
07e0: a8 34     sbc   a,#$34
07e2: b0 09     bcs   $07ed
07e4: e4 49     mov   a,$49
07e6: 80        setc
07e7: a8 13     sbc   a,#$13
07e9: b0 06     bcs   $07f1
07eb: dc        dec   y
07ec: 1c        asl   a
07ed: 7a 48     addw  ya,$48
07ef: da 48     movw  $48,ya
07f1: 4d        push  x
07f2: e4 49     mov   a,$49
07f4: 1c        asl   a
07f5: 8d 00     mov   y,#$00
07f7: cd 18     mov   x,#$18
07f9: 9e        div   ya,x
07fa: 5d        mov   x,a
07fb: f6 e6 11  mov   a,$11e6+y
07fe: c4 41     mov   $41,a
0800: f6 e5 11  mov   a,$11e5+y
0803: c4 40     mov   $40,a
0805: f6 e8 11  mov   a,$11e8+y
0808: 2d        push  a
0809: f6 e7 11  mov   a,$11e7+y
080c: ee        pop   y
080d: 9a 40     subw  ya,$40
080f: eb 48     mov   y,$48
0811: cf        mul   ya
0812: dd        mov   a,y
0813: 8d 00     mov   y,#$00
0815: 7a 40     addw  ya,$40
0817: cb 41     mov   $41,y
0819: 1c        asl   a
081a: 2b 41     rol   $41
081c: c4 40     mov   $40,a
081e: 2f 04     bra   $0824
0820: 4b 41     lsr   $41
0822: 7c        ror   a
0823: 3d        inc   x
0824: c8 06     cmp   x,#$06
0826: d0 f8     bne   $0820
0828: c4 40     mov   $40,a
082a: ce        pop   x
082b: f5 40 02  mov   a,$0240+x
082e: eb 41     mov   y,$41
0830: cf        mul   ya
0831: da 42     movw  $42,ya
0833: f5 40 02  mov   a,$0240+x
0836: eb 40     mov   y,$40
0838: cf        mul   ya
0839: 6d        push  y
083a: f5 41 02  mov   a,$0241+x
083d: eb 40     mov   y,$40
083f: cf        mul   ya
0840: 7a 42     addw  ya,$42
0842: da 42     movw  $42,ya
0844: f5 41 02  mov   a,$0241+x
0847: eb 41     mov   y,$41
0849: cf        mul   ya
084a: fd        mov   y,a
084b: ae        pop   a
084c: 7a 42     addw  ya,$42
084e: da 42     movw  $42,ya
0850: 7d        mov   a,x
0851: 9f        xcn   a
0852: 5c        lsr   a
0853: 08 02     or    a,#$02
0855: fd        mov   y,a
0856: e4 42     mov   a,$42             ; P(L)
0858: 3f 5e 08  call  $085e
085b: fc        inc   y
085c: e4 43     mov   a,$43             ; P(H)
; write A to DSP reg Y if vbit clear in $3e
085e: 2d        push  a
085f: e4 57     mov   a,$57
0861: 24 3e     and   a,$3e
0863: ae        pop   a
0864: d0 06     bne   $086c
; write A to DSP reg Y
0866: cc f2 00  mov   $00f2,y
0869: c5 f3 00  mov   $00f3,a
086c: 6f        ret

; read $50/1 into YA and increment the vcmd pointer
086d: 8d 00     mov   y,#$00
086f: f7 50     mov   a,($50)+y
0871: 3a 50     incw  $50
0873: 2d        push  a
0874: f7 50     mov   a,($50)+y
0876: 3a 50     incw  $50
0878: fd        mov   y,a
0879: ae        pop   a
087a: 6f        ret

087b: e8 ff     mov   a,#$ff
087d: 8d 5c     mov   y,#$5c
087f: 3f 66 08  call  $0866             ; set KOF
0882: e8 00     mov   a,#$00
0884: fd        mov   y,a
0885: 3f 2b 0e  call  $0e2b
0888: e8 01     mov   a,#$01
088a: 3f 54 0e  call  $0e54
088d: 3f ff 11  call  $11ff
0890: e8 ff     mov   a,#$ff
0892: c4 2a     mov   $2a,a
0894: e8 00     mov   a,#$00
0896: 5d        mov   x,a
0897: c5 01 05  mov   $0501,a
089a: c5 02 05  mov   $0502,a
089d: c5 06 05  mov   $0506,a
08a0: c5 f7 04  mov   $04f7,a
08a3: c5 f8 04  mov   $04f8,a
08a6: c5 f9 04  mov   $04f9,a
08a9: c5 fa 04  mov   $04fa,a
08ac: c5 fb 04  mov   $04fb,a
08af: c5 f0 04  mov   $04f0,a
08b2: c5 f1 04  mov   $04f1,a
08b5: c5 f2 04  mov   $04f2,a
08b8: c5 f3 04  mov   $04f3,a
08bb: c5 f4 00  mov   $00f4,a
08be: c5 f5 00  mov   $00f5,a
08c1: c5 f6 00  mov   $00f6,a
08c4: c5 f7 00  mov   $00f7,a
08c7: c5 7d 05  mov   $057d,a
08ca: d4 01     mov   $01+x,a
08cc: d4 11     mov   $11+x,a
08ce: 3d        inc   x
08cf: 3d        inc   x
08d0: c8 10     cmp   x,#$10
08d2: d0 f6     bne   $08ca
08d4: c5 07 05  mov   $0507,a
08d7: c4 3e     mov   $3e,a
08d9: 9c        dec   a
08da: c5 f7 00  mov   $00f7,a
08dd: e8 7f     mov   a,#$7f
08df: 3f 65 14  call  $1465
08e2: 6f        ret

08e3: c4 4e     mov   $4e,a
08e5: 6d        push  y
08e6: c4 20     mov   $20,a
08e8: 8f 16 21  mov   $21,#$16          ; #$1600
08eb: 60        clrc
08ec: 84 20     adc   a,$20
08ee: c4 20     mov   $20,a
08f0: e8 00     mov   a,#$00
08f2: 84 21     adc   a,$21
08f4: c4 21     mov   $21,a
08f6: 8d 00     mov   y,#$00
08f8: f7 20     mov   a,($20)+y
08fa: fc        inc   y
08fb: c5 12 05  mov   $0512,a
08fe: f7 20     mov   a,($20)+y
0900: c5 13 05  mov   $0513,a
0903: ee        pop   y
0904: d0 01     bne   $0907
0906: 6f        ret

0907: ad 00     cmp   y,#$00
0909: d0 15     bne   $0920
090b: e5 12 05  mov   a,$0512
090e: c4 50     mov   $50,a
0910: e5 13 05  mov   a,$0513
0913: c4 51     mov   $51,a
0915: 8f 01 4f  mov   $4f,#$01
0918: e4 3e     mov   a,$3e
091a: 48 ff     eor   a,#$ff
091c: 0e 56 00  tset1 $0056
091f: 6f        ret

0920: e5 12 05  mov   a,$0512
0923: c4 3b     mov   $3b,a
0925: e5 13 05  mov   a,$0513
0928: c4 3c     mov   $3c,a
092a: 3f 7b 0a  call  $0a7b
092d: 3f 34 09  call  $0934
0930: 8f 00 4f  mov   $4f,#$00
0933: 6f        ret

0934: f8 4d     mov   x,$4d
0936: f5 00 19  mov   a,$1900+x
0939: c4 20     mov   $20,a
093b: 05 07 05  or    a,$0507
093e: c5 07 05  mov   $0507,a
0941: 6f        ret

0942: 4d        push  x
0943: e4 57     mov   a,$57
0945: 2d        push  a
0946: e9 7d 05  mov   x,$057d
0949: f5 9a 09  mov   a,$099a+x
094c: 8d 5c     mov   y,#$5c
094e: 3f 66 08  call  $0866             ; set KOF
0951: 25 08 05  and   a,$0508
0954: 04 5a     or    a,$5a
0956: c4 5a     mov   $5a,a
0958: f5 9e 09  mov   a,$099e+x
095b: 25 07 05  and   a,$0507
095e: c5 07 05  mov   $0507,a
0961: cd 0c     mov   x,#$0c
0963: e5 7d 05  mov   a,$057d
0966: c4 20     mov   $20,a
0968: 8f 40 57  mov   $57,#$40
096b: e4 3e     mov   a,$3e
096d: 2d        push  a
096e: 8f 00 3e  mov   $3e,#$00
0971: 4b 20     lsr   $20
0973: 90 0a     bcc   $097f
0975: f5 21 02  mov   a,$0221+x
0978: 3f 65 0c  call  $0c65
097b: e8 00     mov   a,#$00
097d: d4 11     mov   $11+x,a
097f: 0b 57     asl   $57
0981: 3d        inc   x
0982: 3d        inc   x
0983: c8 10     cmp   x,#$10
0985: d0 ea     bne   $0971
0987: ae        pop   a
0988: c4 3e     mov   $3e,a
098a: ec 7d 05  mov   y,$057d
098d: d6 f8 04  mov   $04f8+y,a
0990: ae        pop   a
0991: c4 57     mov   $57,a
0993: ce        pop   x
0994: e8 00     mov   a,#$00
0996: c5 f7 00  mov   $00f7,a
0999: 6f        ret

099a: db $00,$40,$80,$c0
099e: db $00,$80,$40,$00

09a2: e9 f8 04  mov   x,$04f8
09a5: f5 00 19  mov   a,$1900+x
09a8: c4 20     mov   $20,a
09aa: e8 00     mov   a,#$00
09ac: c5 f8 04  mov   $04f8,a
09af: c5 f6 00  mov   $00f6,a
09b2: 5d        mov   x,a
09b3: 4b 20     lsr   $20
09b5: 90 02     bcc   $09b9
09b7: d4 01     mov   $01+x,a
09b9: 3d        inc   x
09ba: 3d        inc   x
09bb: c8 10     cmp   x,#$10
09bd: d0 f4     bne   $09b3
09bf: 6f        ret

09c0: 80        setc
09c1: a8 f0     sbc   a,#$f0
09c3: 1c        asl   a
09c4: fd        mov   y,a
09c5: f6 cf 09  mov   a,$09cf+y
09c8: 2d        push  a
09c9: f6 ce 09  mov   a,$09ce+y
09cc: 2d        push  a
09cd: 6f        ret

09ce: dw $087b
09d0: dw $1379
09d2: dw $1379
09d4: dw $13d8
09d6: dw $13fb
09d8: dw $1416
09da: dw $141d
09dc: dw $1445

09dd: f8 4d     mov   x,$4d
09e0: f5 00 19  mov   a,$1900+x
09e3: c4 20     mov   $20,a
09e5: f5 00 18  mov   a,$1800+x
09e8: c4 21     mov   $21,a
09ea: 28 80     and   a,#$80
09ec: 9f        xcn   a
09ed: 1c        asl   a
09ee: 08 0e     or    a,#$0e
09f0: 5d        mov   x,a
09f1: 8f 80 57  mov   $57,#$80
09f4: 0b 20     asl   $20
09f6: 90 1d     bcc   $0a15
09f8: e8 ff     mov   a,#$ff
09fa: d5 a1 03  mov   $03a1+x,a
09fd: e8 0a     mov   a,#$0a
09ff: 3f bb 0c  call  $0cbb
0a02: d5 21 02  mov   $0221+x,a
0a05: d5 a1 04  mov   $04a1+x,a
0a08: d5 80 03  mov   $0380+x,a
0a0b: d5 a0 02  mov   $02a0+x,a
0a0e: d4 a1     mov   $a1+x,a
0a10: d5 20 03  mov   $0320+x,a
0a13: d4 c1     mov   $c1+x,a
0a15: 1d        dec   x
0a16: 1d        dec   x
0a17: 4b 57     lsr   $57
0a19: d0 d9     bne   $09f4
0a1b: e4 21     mov   a,$21
0a1d: 28 80     and   a,#$80
0a1f: f0 11     beq   $0a32
0a21: f8 4d     mov   x,$4d
0a23: f5 00 19  mov   a,$1900+x
0a26: 48 ff     eor   a,#$ff
0a28: 24 5a     and   a,$5a
0a2a: c4 5a     mov   $5a,a
0a2c: e8 01     mov   a,#$01
0a2e: c5 f7 00  mov   $00f7,a
0a31: 6f        ret

0a32: c4 2b     mov   $2b,a
0a34: c4 25     mov   $25,a
0a36: c4 5f     mov   $5f,a
0a38: c4 52     mov   $52,a
0a3a: c4 3f     mov   $3f,a
0a3c: c4 38     mov   $38,a
0a3e: c5 08 05  mov   $0508,a
0a41: bc        inc   a
0a42: c5 f6 00  mov   $00f6,a
0a45: 8f 20 24  mov   $24,#$20
0a48: 6f        ret

0a49: e5 f7 04  mov   a,$04f7
0a4c: d0 fa     bne   $0a48
0a4e: e5 f8 04  mov   a,$04f8
0a51: f0 f5     beq   $0a48
0a53: e4 4f     mov   a,$4f
0a55: d0 03     bne   $0a5a
0a57: 5f 17 0b  jmp   $0b17

0a5a: e8 00     mov   a,#$00
0a5c: c4 4f     mov   $4f,a
0a5e: 3f 6d 08  call  $086d             ; read block addr from $50/1, increment ptr
0a61: d0 5d     bne   $0ac0             ; load start addresses, if hi-byte is non zero
0a63: fd        mov   y,a               ; refetch lo-byte
0a64: d0 04     bne   $0a6a             ; set/dec repeat count
0a66: 5d        mov   x,a
0a67: 5f a2 09  jmp   $09a2             ; key off, return if also zero
; set/dec repeat count
0a6a: 8b 52     dec   $52
0a6c: 10 02     bpl   $0a70
0a6e: c4 52     mov   $52,a
0a70: 3f 6d 08  call  $086d             ; read next word as well
0a73: f8 52     mov   x,$52
0a75: f0 e3     beq   $0a5a
0a77: da 50     movw  $50,ya            ;   "goto" that address
0a79: 2f df     bra   $0a5a             ; continue

0a7b: 8d 01     mov   y,#$01
0a7d: f7 3b     mov   a,($3b)+y
0a7f: 2d        push  a
0a80: dc        dec   y
0a81: f7 3b     mov   a,($3b)+y
0a83: ee        pop   y
0a84: da 42     movw  $42,ya
0a86: f8 4d     mov   x,$4d
0a88: f5 00 19  mov   a,$1900+x
0a8b: c4 20     mov   $20,a
0a8d: cd 1e     mov   x,#$1e
0a8f: 8d 0f     mov   y,#$0f
0a91: 0b 20     asl   $20
0a93: 90 22     bcc   $0ab7
0a95: f7 42     mov   a,($42)+y
0a97: d6 10 00  mov   $0010+y,a
0a9a: dc        dec   y
0a9b: f7 42     mov   a,($42)+y
0a9d: d6 10 00  mov   $0010+y,a
0aa0: dc        dec   y
0aa1: e8 00     mov   a,#$00
0aa3: d5 50 05  mov   $0550+x,a
0aa6: d5 30 05  mov   $0530+x,a
0aa9: d5 31 05  mov   $0531+x,a
0aac: e8 01     mov   a,#$01
0aae: d5 60 00  mov   $0060+x,a
0ab1: 1d        dec   x
0ab2: 1d        dec   x
0ab3: fc        inc   y
0ab4: fc        inc   y
0ab5: 3d        inc   x
0ab6: 3d        inc   x
0ab7: dc        dec   y
0ab8: dc        dec   y
0ab9: 1d        dec   x
0aba: 1d        dec   x
0abb: c8 0f     cmp   x,#$0f
0abd: b0 d2     bcs   $0a91
0abf: 6f        ret

; load start addresses - hi-byte not zero
0ac0: da 42     movw  $42,ya
0ac2: 8d 0f     mov   y,#$0f
0ac4: e9 f8 04  mov   x,$04f8
0ac7: f5 00 19  mov   a,$1900+x
0aca: c4 20     mov   $20,a
0acc: 0b 20     asl   $20
0ace: 90 10     bcc   $0ae0
0ad0: f7 42     mov   a,($42)+y
0ad2: d6 00 00  mov   $0000+y,a
0ad5: dc        dec   y
0ad6: f7 42     mov   a,($42)+y
0ad8: d6 00 00  mov   $0000+y,a
0adb: dc        dec   y
0adc: 10 ee     bpl   $0acc
0ade: fc        inc   y
0adf: fc        inc   y
0ae0: dc        dec   y
0ae1: dc        dec   y
0ae2: 10 e8     bpl   $0acc
0ae4: e9 f8 04  mov   x,$04f8
0ae7: f5 00 19  mov   a,$1900+x
0aea: c4 20     mov   $20,a
0aec: cd 00     mov   x,#$00
0aee: 8f 01 57  mov   $57,#$01
0af1: 4b 20     lsr   $20
0af3: 90 1c     bcc   $0b11
0af5: f4 01     mov   a,$01+x
0af7: f0 0a     beq   $0b03
0af9: f5 21 02  mov   a,$0221+x
0afc: d0 05     bne   $0b03
0afe: e8 00     mov   a,#$00
0b00: 3f 62 0c  call  $0c62
0b03: e8 00     mov   a,#$00
0b05: d5 50 05  mov   $0550+x,a
0b08: d5 30 05  mov   $0530+x,a
0b0b: d5 31 05  mov   $0531+x,a
0b0e: bc        inc   a
0b0f: d4 60     mov   $60+x,a
0b11: 3d        inc   x
0b12: 3d        inc   x
0b13: 0b 57     asl   $57
0b15: d0 da     bne   $0af1
0b17: cd 00     mov   x,#$00
0b19: d8 2f     mov   $2f,x
0b1b: 8f 01 57  mov   $57,#$01
0b1e: 3f 79 12  call  $1279
0b21: d8 54     mov   $54,x
0b23: f4 01     mov   a,$01+x
0b25: d0 03     bne   $0b2a
0b27: 5f aa 0b  jmp   $0baa

0b2a: 9b 60     dec   $60+x             ; dec duration counter
0b2c: f0 03     beq   $0b31             ; if zero, handle the next vcmd
0b2e: 5f a4 0b  jmp   $0ba4

0b31: 3f 58 0c  call  $0c58             ; read vcmd into A and Y
0b34: d0 2e     bne   $0b64
; vcmd 00 - end repeat/return
0b36: f5 50 05  mov   a,$0550+x
0b39: d0 0f     bne   $0b4a             ; repeat the section if required
0b3b: c8 10     cmp   x,#$10
0b3d: b0 03     bcs   $0b42
0b3f: 5f 5a 0a  jmp   $0a5a             ; read the next section

0b42: 4d        push  x
0b43: 3f 42 09  call  $0942
0b46: ce        pop   x
0b47: 5f aa 0b  jmp   $0baa
; repeat / return from subroutine
0b4a: 3f dd 0d  call  $0ddd             ; jump to loop start addr
0b4d: f5 50 05  mov   a,$0550+x
0b50: 80        setc
0b51: a8 01     sbc   a,#$01
0b53: d5 50 05  mov   $0550+x,a         ; dec repeat count
0b56: d0 d9     bne   $0b31             ; if the loop has been done
0b58: f5 60 02  mov   a,$0260+x
0b5b: d4 00     mov   $00+x,a
0b5d: f5 61 02  mov   a,$0261+x
0b60: d4 01     mov   $01+x,a           ; back to return addr instead
0b62: 2f cd     bra   $0b31             ; then continue
; vcmd branches
0b64: 30 20     bmi   $0b86             ; vcmds 01-7f - note info:
0b66: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
0b69: 3f 58 0c  call  $0c58             ;   read next byte
0b6c: 30 18     bmi   $0b86             ;   if note note then
0b6e: 2d        push  a
0b6f: 9f        xcn   a
0b70: 28 07     and   a,#$07
0b72: fd        mov   y,a
0b73: f6 00 28  mov   a,$2800+y
0b76: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
0b79: ae        pop   a
0b7a: 28 0f     and   a,#$0f
0b7c: fd        mov   y,a
0b7d: f6 08 28  mov   a,$2808+y
0b80: d5 20 02  mov   $0220+x,a         ;   set per-note vol from low nybble
0b83: 3f 58 0c  call  $0c58             ;   read vcmd into A and Y
; vcmd branches 80-ff
0b86: 68 e0     cmp   a,#$e0
0b88: 90 05     bcc   $0b8f
0b8a: 3f 46 0c  call  $0c46             ; vcmds e0-ff
0b8d: 2f a2     bra   $0b31
; vcmds 80-df - note
0b8f: 3f 71 07  call  $0771
0b92: f5 00 02  mov   a,$0200+x
0b95: d4 60     mov   $60+x,a
0b97: fd        mov   y,a
0b98: f5 01 02  mov   a,$0201+x
0b9b: cf        mul   ya
0b9c: dd        mov   a,y
0b9d: d0 01     bne   $0ba0
0b9f: bc        inc   a
0ba0: d4 61     mov   $61+x,a
0ba2: 2f 03     bra   $0ba7
0ba4: 3f 20 10  call  $1020
0ba7: 3f 9d 0e  call  $0e9d
0baa: 3d        inc   x
0bab: 3d        inc   x
0bac: e5 7d 05  mov   a,$057d
0baf: d0 13     bne   $0bc4
0bb1: 0b 57     asl   $57
0bb3: f0 2b     beq   $0be0
0bb5: 4d        push  x
0bb6: e9 f8 04  mov   x,$04f8
0bb9: f5 00 19  mov   a,$1900+x
0bbc: ce        pop   x
0bbd: 24 57     and   a,$57
0bbf: f0 1f     beq   $0be0
0bc1: 5f 1e 0b  jmp   $0b1e

0bc4: 0b 57     asl   $57
0bc6: 8c f5 04  dec   $04f5
0bc9: d0 f6     bne   $0bc1
0bcb: e9 7d 05  mov   x,$057d
0bce: 1d        dec   x
0bcf: f5 32 07  mov   a,$0732+x
0bd2: c4 57     mov   $57,a
0bd4: f5 35 07  mov   a,$0735+x
0bd7: c5 f5 04  mov   $04f5,a
0bda: f5 38 07  mov   a,$0738+x
0bdd: 5d        mov   x,a
0bde: 2f 3f     bra   $0c1f
0be0: e4 25     mov   a,$25
0be2: f0 0b     beq   $0bef
0be4: ba 27     movw  ya,$27
0be6: 7a 23     addw  ya,$23
0be8: 6e 25 02  dbnz  $25,$0bed
0beb: ba 25     movw  ya,$25
0bed: da 23     movw  $23,ya
0bef: e4 38     mov   a,$38
0bf1: f0 15     beq   $0c08
0bf3: ba 34     movw  ya,$34
0bf5: 7a 30     addw  ya,$30
0bf7: da 30     movw  $30,ya
0bf9: ba 36     movw  ya,$36
0bfb: 7a 32     addw  ya,$32
0bfd: 6e 38 06  dbnz  $38,$0c06
0c00: ba 38     movw  ya,$38
0c02: da 30     movw  $30,ya
0c04: eb 3a     mov   y,$3a
0c06: da 32     movw  $32,ya
0c08: e4 2b     mov   a,$2b
0c0a: f0 0e     beq   $0c1a
0c0c: ba 2d     movw  ya,$2d
0c0e: 7a 29     addw  ya,$29
0c10: 6e 2b 02  dbnz  $2b,$0c15
0c13: ba 2b     movw  ya,$2b
0c15: da 29     movw  $29,ya
0c17: 8f ff 2f  mov   $2f,#$ff
0c1a: cd 00     mov   x,#$00
0c1c: 8f 01 57  mov   $57,#$01
0c1f: f4 01     mov   a,$01+x
0c21: f0 03     beq   $0c26
0c23: 3f 5c 0f  call  $0f5c
0c26: 3d        inc   x
0c27: 3d        inc   x
0c28: e5 7d 05  mov   a,$057d
0c2b: d0 11     bne   $0c3e
0c2d: 0b 57     asl   $57
0c2f: f0 14     beq   $0c45
0c31: 4d        push  x
0c32: e9 f8 04  mov   x,$04f8
0c35: f5 00 19  mov   a,$1900+x
0c38: ce        pop   x
0c39: 24 57     and   a,$57
0c3b: d0 e2     bne   $0c1f
0c3d: 6f        ret

0c3e: 0b 57     asl   $57
0c40: 8c f5 04  dec   $04f5
0c43: d0 da     bne   $0c1f
0c45: 6f        ret

; dispatch vcmd in A (e0-ff)
0c46: 1c        asl   a                 ; e0-ff => c0-fe (8 bit)
0c47: fd        mov   y,a
0c48: f6 3d 0e  mov   a,$0e3d+y
0c4b: 2d        push  a
0c4c: f6 3c 0e  mov   a,$0e3c+y
0c4f: 2d        push  a                 ; push jump address from table
0c50: dd        mov   a,y
0c51: 5c        lsr   a
0c52: fd        mov   y,a
0c53: f6 dc 0e  mov   a,$0edc+y         ; vcmd length
0c56: f0 08     beq   $0c60             ; if non zero
; read new argument to A and Y
0c58: e7 00     mov   a,($00+x)
; increment voice pointer
0c5a: bb 00     inc   $00+x
0c5c: d0 02     bne   $0c60
0c5e: bb 01     inc   $01+x             ; inc reading ptr
0c60: fd        mov   y,a  
0c61: 6f        ret                     ; jump to vcmd

; vcmd e0 - set instrument
0c62: d5 21 02  mov   $0221+x,a
0c65: fd        mov   y,a
0c66: 10 06     bpl   $0c6e             ; if percussion note:
0c68: 80        setc
0c69: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
0c6b: 60        clrc
0c6c: 84 3f     adc   a,$3f             ; add perc patch base
0c6e: 8d 06     mov   y,#$06
; set sample A in bank at $40/1 width Y
0c70: cf        mul   ya
0c71: da 40     movw  $40,ya
0c73: 60        clrc
0c74: 98 00 40  adc   $40,#$00
0c77: 98 27 41  adc   $41,#$27          ; instrument table $2700
0c7a: e4 3e     mov   a,$3e
0c7c: 24 57     and   a,$57
0c7e: d0 3a     bne   $0cba
0c80: 4d        push  x
0c81: 7d        mov   a,x
0c82: 9f        xcn   a
0c83: 5c        lsr   a
0c84: 08 04     or    a,#$04            ; voice X SRCN
0c86: 5d        mov   x,a
0c87: 8d 00     mov   y,#$00
0c89: f7 40     mov   a,($40)+y
0c8b: 10 0e     bpl   $0c9b
0c8d: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0c8f: 38 20 58  and   $58,#$20          ;  keep echo bit from FLG
0c92: 0e 58 00  tset1 $0058             ;  OR in noise freq
0c95: 09 57 59  or    ($59),($57)       ;  set vbit in noise enable
0c98: dd        mov   a,y               ;  set SRCN to 0
0c99: 2f 07     bra   $0ca2             ; else
0c9b: e4 57     mov   a,$57
0c9d: 4e 59 00  tclr1 $0059             ;  clear noise vbit
0ca0: f7 40     mov   a,($40)+y         ;  set SRCN from table
0ca2: c9 f2 00  mov   $00f2,x
0ca5: c5 f3 00  mov   $00f3,a
0ca8: 3d        inc   x
0ca9: fc        inc   y
0caa: ad 04     cmp   y,#$04
0cac: d0 f2     bne   $0ca0             ; set SRCN, ADSR1/2, GAIN from table
0cae: ce        pop   x
0caf: f7 40     mov   a,($40)+y
0cb1: d5 41 02  mov   $0241+x,a         ; set pitch multiplier
0cb4: fc        inc   y
0cb5: f7 40     mov   a,($40)+y
0cb7: d5 40 02  mov   $0240+x,a
0cba: 6f        ret

; vcmd e1 - pan
0cbb: d5 e0 04  mov   $04e0+x,a
0cbe: ec f6 04  mov   y,$04f6
0cc1: f0 02     beq   $0cc5
0cc3: e8 0a     mov   a,#$0a
0cc5: d5 41 04  mov   $0441+x,a
0cc8: 28 1f     and   a,#$1f
0cca: d5 01 04  mov   $0401+x,a         ; voice pan value
0ccd: e8 00     mov   a,#$00
0ccf: d5 00 04  mov   $0400+x,a
0cd2: 6f        ret

; vcmd e2 - pan fade
0cd3: ec f6 04  mov   y,$04f6
0cd6: f0 04     beq   $0cdc
0cd8: 3f 58 0c  call  $0c58
0cdb: 6f        ret
;
0cdc: d5 31 05  mov   $0531+x,a
0cdf: 2d        push  a
0ce0: 3f 58 0c  call  $0c58
0ce3: d5 40 04  mov   $0440+x,a
0ce6: 80        setc
0ce7: b5 01 04  sbc   a,$0401+x         ; current pan value
0cea: ce        pop   x
0ceb: 3f e0 0e  call  $0ee0             ; delta = pan value / steps
0cee: d5 20 04  mov   $0420+x,a
0cf1: dd        mov   a,y
0cf2: d5 21 04  mov   $0421+x,a
0cf5: 6f        ret

; vcmd e3 - vibrato on
0cf6: d5 00 03  mov   $0300+x,a
0cf9: 3f 58 0c  call  $0c58
0cfc: d5 e1 02  mov   $02e1+x,a
0cff: 3f 58 0c  call  $0c58
; vcmd e4 - vibrato off
0d02: d4 a1     mov   $a1+x,a
0d04: d5 21 03  mov   $0321+x,a
0d07: e8 00     mov   a,#$00
0d09: d5 01 03  mov   $0301+x,a
0d0c: 6f        ret

; vcmd f0 - vibrato fade
0d0d: d5 01 03  mov   $0301+x,a
0d10: 2d        push  a
0d11: 8d 00     mov   y,#$00
0d13: f4 a1     mov   a,$a1+x
0d15: ce        pop   x
0d16: 9e        div   ya,x
0d17: f8 54     mov   x,$54
0d19: d5 20 03  mov   $0320+x,a
0d1c: 6f        ret

; vcmd e5 - master volume
0d1d: e5 7d 05  mov   a,$057d
0d20: d0 04     bne   $0d26
0d22: e8 00     mov   a,#$00
0d24: da 29     movw  $29,ya
0d26: 6f        ret

; vcmd e6 - master volume fade
0d27: c4 2b     mov   $2b,a
0d29: 3f 58 0c  call  $0c58
0d2c: c4 2c     mov   $2c,a
0d2e: 80        setc
0d2f: a4 2a     sbc   a,$2a
0d31: f8 2b     mov   x,$2b
0d33: 3f e0 0e  call  $0ee0
0d36: da 2d     movw  $2d,ya
0d38: 6f        ret

; vcmd e7 - tempo
0d39: c8 0c     cmp   x,#$0c
0d3b: 90 15     bcc   $0d52
0d3d: e5 7d 05  mov   a,$057d
0d40: f0 10     beq   $0d52
0d42: 9c        dec   a
0d43: 1c        asl   a
0d44: 1c        asl   a
0d45: 4d        push  x
0d46: 5d        mov   x,a
0d47: e8 00     mov   a,#$00
0d49: d5 71 05  mov   $0571+x,a
0d4c: dd        mov   a,y
0d4d: d5 72 05  mov   $0572+x,a
0d50: ce        pop   x
0d51: 6f        ret
;
0d52: e8 00     mov   a,#$00
0d54: da 23     movw  $23,ya
0d56: 6f        ret

; vcmd e8 - tempo fade
0d57: c4 25     mov   $25,a
0d59: 3f 58 0c  call  $0c58
0d5c: c4 26     mov   $26,a
0d5e: 80        setc
0d5f: a4 24     sbc   a,$24
0d61: f8 25     mov   x,$25
0d63: 3f e0 0e  call  $0ee0
0d66: da 27     movw  $27,ya
0d68: 6f        ret

; vcmd e9 - global transpose
0d69: c4 5f     mov   $5f,a
0d6b: 6f        ret

; vcmd ea - per-voice transpose
0d6c: d5 80 03  mov   $0380+x,a
0d6f: 6f        ret

; vcmd eb - tremolo on
0d70: d5 60 03  mov   $0360+x,a
0d73: 3f 58 0c  call  $0c58
0d76: d5 41 03  mov   $0341+x,a
0d79: 3f 58 0c  call  $0c58
; vcmd ec - tremolo off
0d7c: d4 c1     mov   $c1+x,a
0d7e: 6f        ret

; vcmd f1 - pitch envelope (release)
0d7f: e8 01     mov   a,#$01
0d81: 2f 02     bra   $0d85
; vcmd f2 - pitch envelope (attack)
0d83: e8 00     mov   a,#$00
0d85: d5 c0 02  mov   $02c0+x,a
0d88: dd        mov   a,y
0d89: d5 a1 02  mov   $02a1+x,a
0d8c: 3f 58 0c  call  $0c58
0d8f: d5 a0 02  mov   $02a0+x,a
0d92: 3f 58 0c  call  $0c58
0d95: d5 c1 02  mov   $02c1+x,a
0d98: 6f        ret

; vcmd f3 - pitch envelope off
0d99: d5 a0 02  mov   $02a0+x,a
0d9c: 6f        ret

; vcmd ed - volume
0d9d: d5 a1 03  mov   $03a1+x,a
0da0: e8 00     mov   a,#$00
0da2: d5 a0 03  mov   $03a0+x,a
0da5: 6f        ret

; vcmd ee - volume fade
0da6: d5 30 05  mov   $0530+x,a
0da9: 2d        push  a
0daa: 3f 58 0c  call  $0c58
0dad: d5 e0 03  mov   $03e0+x,a
0db0: 80        setc
0db1: b5 a1 03  sbc   a,$03a1+x
0db4: ce        pop   x
0db5: 3f e0 0e  call  $0ee0
0db8: d5 c0 03  mov   $03c0+x,a
0dbb: dd        mov   a,y
0dbc: d5 c1 03  mov   $03c1+x,a
0dbf: 6f        ret

; vcmd f4 - tuning
0dc0: d5 a1 04  mov   $04a1+x,a
0dc3: 6f        ret

; vcmd ef - call subroutine
0dc4: d5 80 02  mov   $0280+x,a
0dc7: 3f 58 0c  call  $0c58
0dca: d5 81 02  mov   $0281+x,a         ; $0280/1+X - destination (arg1/2)
0dcd: 3f 58 0c  call  $0c58
0dd0: d5 50 05  mov   $0550+x,a         ; repeat count from arg3
0dd3: f4 00     mov   a,$00+x
0dd5: d5 60 02  mov   $0260+x,a
0dd8: f4 01     mov   a,$01+x
0dda: d5 61 02  mov   $0261+x,a         ; $0260/1+X - return addr
; jump to $0280/1+X (loop destination)
0ddd: f5 80 02  mov   a,$0280+x
0de0: d4 00     mov   $00+x,a
0de2: f5 81 02  mov   a,$0281+x
0de5: d4 01     mov   $01+x,a
0de7: 6f        ret

; vcmd f5 - echo vbits/volume
0de8: c4 5a     mov   $5a,a
0dea: c5 08 05  mov   $0508,a
0ded: 3f 58 0c  call  $0c58
0df0: e8 00     mov   a,#$00
0df2: da 30     movw  $30,ya
0df4: c5 0e 05  mov   $050e,a
0df7: cc 0f 05  mov   $050f,y
0dfa: 3f 58 0c  call  $0c58
0dfd: e8 00     mov   a,#$00
0dff: da 32     movw  $32,ya
0e01: c5 10 05  mov   $0510,a
0e04: cc 11 05  mov   $0511,y
0e07: b2 58     clr5  $58
0e09: 6f        ret

; vcmd f8 - echo volume fade
0e0a: c4 38     mov   $38,a
0e0c: 3f 58 0c  call  $0c58
0e0f: c4 39     mov   $39,a
0e11: 80        setc
0e12: a4 31     sbc   a,$31
0e14: f8 38     mov   x,$38
0e16: 3f e0 0e  call  $0ee0
0e19: da 34     movw  $34,ya
0e1b: 3f 58 0c  call  $0c58
0e1e: c4 3a     mov   $3a,a
0e20: 80        setc
0e21: a4 33     sbc   a,$33
0e23: f8 38     mov   x,$38
0e25: 3f e0 0e  call  $0ee0
0e28: da 36     movw  $36,ya
0e2a: 6f        ret

; vcmd f6 - disable echo
0e2b: da 30     movw  $30,ya
0e2d: da 32     movw  $32,ya
0e2f: a2 58     set5  $58
0e31: 6f        ret

; vcmd f7 - set echo params
0e32: 3f 54 0e  call  $0e54
0e35: 3f 58 0c  call  $0c58
0e38: c4 5e     mov   $5e,a
0e3a: 3f 58 0c  call  $0c58
0e3d: 8d 08     mov   y,#$08
0e3f: cf        mul   ya
0e40: 5d        mov   x,a
0e41: 8d 0f     mov   y,#$0f
0e43: f5 b1 11  mov   a,$11b1+x
0e46: 3f 66 08  call  $0866             ; set FIR C0-C7
0e49: 3d        inc   x
0e4a: dd        mov   a,y
0e4b: 60        clrc
0e4c: 88 10     adc   a,#$10
0e4e: fd        mov   y,a
0e4f: 10 f2     bpl   $0e43
0e51: f8 54     mov   x,$54
0e53: 6f        ret

0e54: c4 5d     mov   $5d,a
0e56: 8d 7d     mov   y,#$7d
0e58: cc f2 00  mov   $00f2,y
0e5b: e5 f3 00  mov   a,$00f3           ; get EDL
0e5e: 64 5d     cmp   a,$5d
0e60: f0 2b     beq   $0e8d
0e62: 28 0f     and   a,#$0f
0e64: 48 ff     eor   a,#$ff
0e66: f3 5b 03  bbc7  $5b,$0e6c
0e69: 60        clrc
0e6a: 84 5b     adc   a,$5b
0e6c: c4 5b     mov   $5b,a
0e6e: 8d 04     mov   y,#$04
0e70: f6 d0 11  mov   a,$11d0+y
0e73: c5 f2 00  mov   $00f2,a
0e76: e8 00     mov   a,#$00
0e78: c5 f3 00  mov   $00f3,a           ; set 
0e7b: fe f3     dbnz  y,$0e70
0e7d: e4 58     mov   a,$58
0e7f: 08 20     or    a,#$20
0e81: 8d 6c     mov   y,#$6c
0e83: 3f 66 08  call  $0866             ; disable echo
0e86: e4 5d     mov   a,$5d
0e88: 8d 7d     mov   y,#$7d
0e8a: 3f 66 08  call  $0866             ; set EDL
0e8d: 1c        asl   a
0e8e: 1c        asl   a
0e8f: 1c        asl   a
0e90: 48 ff     eor   a,#$ff
0e92: 80        setc
0e93: 88 ff     adc   a,#$ff
0e95: 8d 6d     mov   y,#$6d
0e97: 5f 66 08  jmp   $0866             ; set ESA

; vcmd fa - set perc patch base
0e9a: c4 3f     mov   $3f,a
0e9c: 6f        ret

0e9d: f4 80     mov   a,$80+x
0e9f: d0 33     bne   $0ed4
0ea1: e7 00     mov   a,($00+x)
0ea3: 68 f9     cmp   a,#$f9
0ea5: d0 2d     bne   $0ed4
0ea7: 3f 5a 0c  call  $0c5a
0eaa: 3f 58 0c  call  $0c58
; vcmd f9 - pitch slide
0ead: d4 81     mov   $81+x,a
0eaf: 3f 58 0c  call  $0c58
0eb2: d4 80     mov   $80+x,a
0eb4: 3f 58 0c  call  $0c58
0eb7: 60        clrc
0eb8: 84 5f     adc   a,$5f             ; add global transpose
0eba: 95 80 03  adc   a,$0380+x         ; per-voice transpose
0ebd: 28 7f     and   a,#$7f
0ebf: d5 a0 04  mov   $04a0+x,a
0ec2: 80        setc                    ; final portamento value
0ec3: b5 61 04  sbc   a,$0461+x
0ec6: fb 80     mov   y,$80+x           ; note number
0ec8: 6d        push  y                 ; portamento steps
0ec9: ce        pop   x
0eca: 3f e0 0e  call  $0ee0
0ecd: d5 80 04  mov   $0480+x,a
0ed0: dd        mov   a,y
0ed1: d5 81 04  mov   $0481+x,a         ; portamento delta
0ed4: 6f        ret

0ed5: f5 61 04  mov   a,$0461+x
0ed8: c4 49     mov   $49,a
0eda: f5 60 04  mov   a,$0460+x
0edd: c4 48     mov   $48,a
0edf: 6f        ret

; signed 16 bit division
0ee0: ed        notc
0ee1: 6b 4a     ror   $4a
0ee3: 10 03     bpl   $0ee8
0ee5: 48 ff     eor   a,#$ff
0ee7: bc        inc   a
0ee8: 8d 00     mov   y,#$00
0eea: 9e        div   ya,x
0eeb: 2d        push  a
0eec: e8 00     mov   a,#$00
0eee: 9e        div   ya,x
0eef: ee        pop   y
0ef0: f8 54     mov   x,$54
0ef2: f3 4a 06  bbc7  $4a,$0efb
0ef5: da 40     movw  $40,ya
0ef7: ba 46     movw  ya,$46
0ef9: 9a 40     subw  ya,$40
0efb: 6f        ret

; vcmd dispatch table ($0e3c)
0efc: dw $0c62  ; e0 - set instrument
0efe: dw $0cbb  ; e1 - pan
0f00: dw $0cd3  ; e2 - pan fade
0f02: dw $0cf6  ; e3 - vibrato on
0f04: dw $0d02  ; e4 - vibrato off
0f06: dw $0d1d  ; e5 - master volume
0f08: dw $0d27  ; e6 - master volume fade
0f0a: dw $0d39  ; e7 - tempo
0f0c: dw $0d57  ; e8 - tempo fade
0f0e: dw $0d69  ; e9 - global transpose
0f10: dw $0d6c  ; ea - per-voice transpose
0f12: dw $0d70  ; eb - tremolo on
0f14: dw $0d7c  ; ec - tremolo off
0f16: dw $0d9d  ; ed - volume
0f18: dw $0da6  ; ee - volume fade
0f1a: dw $0dc4  ; ef - call subroutine
0f1c: dw $0d0d  ; f0 - vibrato fade
0f1e: dw $0d7f  ; f1 - pitch envelope (release)
0f20: dw $0d83  ; f2 - pitch envelope (attack)
0f22: dw $0d99  ; f3 - pitch envelope off
0f24: dw $0dc0  ; f4 - tuning
0f26: dw $0de8  ; f5 - echo vbits/volume
0f28: dw $0e2b  ; f6 - disable echo
0f2a: dw $0e32  ; f7 - set echo params
0f2c: dw $0e0a  ; f8 - echo volume fade
0f2e: dw $0ead  ; f9 - pitch slide
0f30: dw $0e9a  ; fa - set perc patch base
0f32: dw $0000  ; fb
0f34: dw $0000  ; fc
0f36: dw $0000  ; fd
0f38: dw $0000  ; fe
0f3a: dw $144d  ; ff - sub-vcmd

; vcmd lengths ($0edc)
0f3c: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0f44: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0f4c: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0f54: db $03,$03,$01,$02,$00,$00,$00,$03 ; f8-fa

0f5c: f5 30 05  mov   a,$0530+x
0f5f: f0 0d     beq   $0f6e
0f61: 80        setc
0f62: a8 01     sbc   a,#$01
0f64: d5 30 05  mov   $0530+x,a
0f67: e8 a0     mov   a,#$a0
0f69: 8d 03     mov   y,#$03
0f6b: 3f fc 0f  call  $0ffc
0f6e: fb c1     mov   y,$c1+x
0f70: f0 23     beq   $0f95
0f72: f5 60 03  mov   a,$0360+x
0f75: de c0 1b  cbne  $c0+x,$0f93
0f78: 09 57 2f  or    ($2f),($57)
0f7b: f5 40 03  mov   a,$0340+x
0f7e: 10 07     bpl   $0f87
0f80: fc        inc   y
0f81: d0 04     bne   $0f87
0f83: e8 80     mov   a,#$80
0f85: 2f 04     bra   $0f8b
0f87: 60        clrc
0f88: 95 41 03  adc   a,$0341+x
0f8b: d5 40 03  mov   $0340+x,a
0f8e: 3f 7f 11  call  $117f
0f91: 2f 07     bra   $0f9a
0f93: bb c0     inc   $c0+x
0f95: e8 ff     mov   a,#$ff
0f97: 3f 8a 11  call  $118a
0f9a: f5 31 05  mov   a,$0531+x
0f9d: f0 10     beq   $0faf
0f9f: f5 31 05  mov   a,$0531+x
0fa2: 80        setc
0fa3: a8 01     sbc   a,#$01
0fa5: d5 31 05  mov   $0531+x,a
0fa8: e8 00     mov   a,#$00
0faa: 8d 04     mov   y,#$04
0fac: 3f fc 0f  call  $0ffc
0faf: e4 57     mov   a,$57
0fb1: 24 2f     and   a,$2f
0fb3: f0 46     beq   $0ffb
0fb5: f5 01 04  mov   a,$0401+x
0fb8: fd        mov   y,a
0fb9: f5 00 04  mov   a,$0400+x
0fbc: da 48     movw  $48,ya
0fbe: 7d        mov   a,x
0fbf: 9f        xcn   a
0fc0: 5c        lsr   a
0fc1: c4 4a     mov   $4a,a
0fc3: eb 49     mov   y,$49
0fc5: f6 9d 11  mov   a,$119d+y
0fc8: 80        setc
0fc9: b6 9c 11  sbc   a,$119c+y
0fcc: eb 48     mov   y,$48
0fce: cf        mul   ya
0fcf: dd        mov   a,y
0fd0: eb 49     mov   y,$49
0fd2: 60        clrc
0fd3: 96 9c 11  adc   a,$119c+y
0fd6: fd        mov   y,a
0fd7: f5 e1 03  mov   a,$03e1+x
0fda: cf        mul   ya
0fdb: f5 41 04  mov   a,$0441+x
0fde: 1c        asl   a
0fdf: 13 4a 01  bbc0  $4a,$0fe3
0fe2: 1c        asl   a
0fe3: dd        mov   a,y
0fe4: 90 03     bcc   $0fe9
0fe6: 48 ff     eor   a,#$ff
0fe8: bc        inc   a
0fe9: eb 4a     mov   y,$4a
0feb: 3f 5e 08  call  $085e
0fee: 8d 14     mov   y,#$14
0ff0: e8 00     mov   a,#$00
0ff2: 9a 48     subw  ya,$48
0ff4: da 48     movw  $48,ya
0ff6: ab 4a     inc   $4a
0ff8: 33 4a c8  bbc1  $4a,$0fc3
0ffb: 6f        ret

0ffc: 09 57 2f  or    ($2f),($57)
0fff: da 40     movw  $40,ya
1001: da 42     movw  $42,ya
1003: 4d        push  x
1004: ee        pop   y
1005: 60        clrc
1006: d0 0a     bne   $1012
1008: 98 3f 42  adc   $42,#$3f
100b: e8 00     mov   a,#$00
100d: d7 40     mov   ($40)+y,a
100f: fc        inc   y
1010: 2f 09     bra   $101b
1012: 98 20 42  adc   $42,#$20
1015: 3f 19 10  call  $1019
1018: fc        inc   y
1019: f7 40     mov   a,($40)+y
101b: 97 42     adc   a,($42)+y
101d: d7 40     mov   ($40)+y,a
101f: 6f        ret

1020: f4 61     mov   a,$61+x
1022: f0 64     beq   $1088
1024: 9b 61     dec   $61+x
1026: f0 05     beq   $102d
1028: e8 02     mov   a,#$02
102a: de 60 5b  cbne  $60+x,$1088
102d: f5 50 05  mov   a,$0550+x
1030: c4 43     mov   $43,a
1032: f4 00     mov   a,$00+x
1034: fb 01     mov   y,$01+x
1036: da 40     movw  $40,ya
1038: 8d 00     mov   y,#$00
103a: f7 40     mov   a,($40)+y
103c: f0 1c     beq   $105a
103e: 30 05     bmi   $1045
1040: fc        inc   y
1041: f7 40     mov   a,($40)+y
1043: 10 fb     bpl   $1040
1045: 68 c8     cmp   a,#$c8
1047: f0 3f     beq   $1088
1049: 68 ef     cmp   a,#$ef
104b: f0 29     beq   $1076
104d: 68 e0     cmp   a,#$e0
104f: 90 30     bcc   $1081
1051: 6d        push  y
1052: fd        mov   y,a
1053: ae        pop   a
1054: 96 5c 0e  adc   a,$0e5c+y
1057: fd        mov   y,a
1058: 2f e0     bra   $103a
105a: e4 43     mov   a,$43
105c: f0 23     beq   $1081
105e: 8b 43     dec   $43
1060: d0 0a     bne   $106c
1062: f5 61 02  mov   a,$0261+x
1065: 2d        push  a
1066: f5 60 02  mov   a,$0260+x
1069: ee        pop   y
106a: 2f ca     bra   $1036
106c: f5 81 02  mov   a,$0281+x
106f: 2d        push  a
1070: f5 80 02  mov   a,$0280+x
1073: ee        pop   y
1074: 2f c0     bra   $1036
1076: fc        inc   y
1077: f7 40     mov   a,($40)+y
1079: 2d        push  a
107a: fc        inc   y
107b: f7 40     mov   a,($40)+y
107d: fd        mov   y,a
107e: ae        pop   a
107f: 2f b5     bra   $1036
1081: e4 57     mov   a,$57
1083: 8d 5c     mov   y,#$5c
1085: 3f 5e 08  call  $085e             ; set KOF if required
1088: f2 4b     clr7  $4b
108a: f4 80     mov   a,$80+x
108c: f0 13     beq   $10a1
108e: f4 81     mov   a,$81+x
1090: f0 04     beq   $1096
1092: 9b 81     dec   $81+x
1094: 2f 0b     bra   $10a1
1096: e2 4b     set7  $4b
1098: e8 60     mov   a,#$60
109a: 8d 04     mov   y,#$04
109c: 9b 80     dec   $80+x
109e: 3f ff 0f  call  $0fff
10a1: 3f d5 0e  call  $0ed5
10a4: f4 a1     mov   a,$a1+x
10a6: f0 4c     beq   $10f4
10a8: f5 00 03  mov   a,$0300+x
10ab: de a0 44  cbne  $a0+x,$10f2
10ae: f5 00 01  mov   a,$0100+x
10b1: 75 01 03  cmp   a,$0301+x
10b4: d0 05     bne   $10bb
10b6: f5 21 03  mov   a,$0321+x
10b9: 2f 0d     bra   $10c8
10bb: 40        setp
10bc: bb 00     inc   $00+x
10be: 20        clrp
10bf: fd        mov   y,a
10c0: f0 02     beq   $10c4
10c2: f4 a1     mov   a,$a1+x
10c4: 60        clrc
10c5: 95 20 03  adc   a,$0320+x
10c8: d4 a1     mov   $a1+x,a
10ca: f5 e0 02  mov   a,$02e0+x
10cd: 60        clrc
10ce: 95 e1 02  adc   a,$02e1+x
10d1: d5 e0 02  mov   $02e0+x,a
10d4: c4 4a     mov   $4a,a
10d6: 1c        asl   a
10d7: 1c        asl   a
10d8: 90 02     bcc   $10dc
10da: 48 ff     eor   a,#$ff
10dc: fd        mov   y,a
10dd: f4 a1     mov   a,$a1+x
10df: 68 f1     cmp   a,#$f1
10e1: 90 05     bcc   $10e8
10e3: 28 0f     and   a,#$0f
10e5: cf        mul   ya
10e6: 2f 04     bra   $10ec
10e8: cf        mul   ya
10e9: dd        mov   a,y
10ea: 8d 00     mov   y,#$00
10ec: 3f 6a 11  call  $116a
10ef: 5f db 07  jmp   $07db

10f2: bb a0     inc   $a0+x
10f4: e3 4b f8  bbs7  $4b,$10ef
10f7: 6f        ret

10f8: f2 4b     clr7  $4b
10fa: f4 c1     mov   a,$c1+x
10fc: f0 09     beq   $1107
10fe: f5 60 03  mov   a,$0360+x
1101: de c0 03  cbne  $c0+x,$1107
1104: 3f 72 11  call  $1172
1107: f5 01 04  mov   a,$0401+x
110a: fd        mov   y,a
110b: f5 00 04  mov   a,$0400+x
110e: da 48     movw  $48,ya
1110: f5 31 05  mov   a,$0531+x
1113: f0 0a     beq   $111f
1115: f5 21 04  mov   a,$0421+x
1118: fd        mov   y,a
1119: f5 20 04  mov   a,$0420+x
111c: 3f 54 11  call  $1154
111f: f3 4b 03  bbc7  $4b,$1125
1122: 3f be 0f  call  $0fbe
1125: f2 4b     clr7  $4b
1127: 3f d5 0e  call  $0ed5
112a: f4 80     mov   a,$80+x
112c: f0 0e     beq   $113c
112e: f4 81     mov   a,$81+x
1130: d0 0a     bne   $113c
1132: f5 81 04  mov   a,$0481+x
1135: fd        mov   y,a
1136: f5 80 04  mov   a,$0480+x
1139: 3f 54 11  call  $1154
113c: f4 a1     mov   a,$a1+x
113e: f0 b4     beq   $10f4
1140: f5 00 03  mov   a,$0300+x
1143: de a0 ae  cbne  $a0+x,$10f4
1146: eb 22     mov   y,$22
1148: f5 e1 02  mov   a,$02e1+x
114b: cf        mul   ya
114c: dd        mov   a,y
114d: 60        clrc
114e: 95 e0 02  adc   a,$02e0+x
1151: 5f d4 10  jmp   $10d4

1154: e2 4b     set7  $4b
1156: cb 4a     mov   $4a,y
1158: 3f f2 0e  call  $0ef2
115b: 6d        push  y
115c: eb 22     mov   y,$22
115e: cf        mul   ya
115f: cb 40     mov   $40,y
1161: 8f 00 41  mov   $41,#$00
1164: eb 22     mov   y,$22
1166: ae        pop   a
1167: cf        mul   ya
1168: 7a 40     addw  ya,$40
116a: 3f f2 0e  call  $0ef2
116d: 7a 48     addw  ya,$48
116f: da 48     movw  $48,ya
1171: 6f        ret

1172: e2 4b     set7  $4b
1174: eb 22     mov   y,$22
1176: f5 41 03  mov   a,$0341+x
1179: cf        mul   ya
117a: dd        mov   a,y
117b: 60        clrc
117c: 95 40 03  adc   a,$0340+x
117f: 1c        asl   a
1180: 90 02     bcc   $1184
1182: 48 ff     eor   a,#$ff
1184: fb c1     mov   y,$c1+x
1186: cf        mul   ya
1187: dd        mov   a,y
1188: 48 ff     eor   a,#$ff
118a: eb 2a     mov   y,$2a
118c: cf        mul   ya
118d: f5 20 02  mov   a,$0220+x
1190: cf        mul   ya
1191: f5 a1 03  mov   a,$03a1+x
1194: cf        mul   ya
1195: dd        mov   a,y
1196: cf        mul   ya
1197: dd        mov   a,y
1198: d5 e1 03  mov   $03e1+x,a
119b: 6f        ret

; pan table
119c: db $00,$01,$03,$07,$0d,$15,$1e,$29
11a4: db $34,$42,$51,$5e,$67,$6e,$73,$77
11ac: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
11b1: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
11b9: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
11c1: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
11c9: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($11da+1) for dsp regs ($11d0+1)
11d1: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
11db: db $31,$33,$5e,$5a,$58,$55,$46,$59,$3d,$56

; pitch table
11e5: dw $085f
11e7: dw $08de
11e9: dw $0965
11eb: dw $09f4
11ed: dw $0a8c
11ef: dw $0b2c
11f1: dw $0bd6
11f3: dw $0c8b
11f5: dw $0d4a
11f7: dw $0e14
11f9: dw $0eea
11fb: dw $0fcd
11fd: dw $10be

11ff: e8 ff     mov   a,#$ff
1201: 8d 5c     mov   y,#$5c
1203: 3f 66 08  call  $0866             ; set KOF
1206: e8 aa     mov   a,#$aa
1208: c5 f4 00  mov   $00f4,a
120b: e8 bb     mov   a,#$bb
120d: c5 f5 00  mov   $00f5,a
1210: e5 f4 00  mov   a,$00f4
1213: 68 cc     cmp   a,#$cc
1215: d0 f9     bne   $1210
1217: 2f 20     bra   $1239
1219: ec f4 00  mov   y,$00f4
121c: d0 fb     bne   $1219
121e: 5e f4 00  cmp   y,$00f4
1221: d0 0f     bne   $1232
1223: e5 f5 00  mov   a,$00f5
1226: cc f4 00  mov   $00f4,y
1229: d7 40     mov   ($40)+y,a
122b: fc        inc   y
122c: d0 f0     bne   $121e
122e: ab 41     inc   $41
1230: 2f ec     bra   $121e
1232: 10 ea     bpl   $121e
1234: 5e f4 00  cmp   y,$00f4
1237: 10 e5     bpl   $121e
1239: e5 f6 00  mov   a,$00f6
123c: ec f7 00  mov   y,$00f7
123f: da 40     movw  $40,ya
1241: ec f4 00  mov   y,$00f4
1244: e5 f5 00  mov   a,$00f5
1247: cc f4 00  mov   $00f4,y
124a: d0 cd     bne   $1219
124c: cd 33     mov   x,#$33
124e: c9 f1 00  mov   $00f1,x
1251: 6f        ret

1252: e8 00     mov   a,#$00
1254: fd        mov   y,a
1255: c4 20     mov   $20,a
1257: 8f 02 21  mov   $21,#$02
125a: d7 20     mov   ($20)+y,a
125c: fc        inc   y
125d: d0 fb     bne   $125a
125f: ab 21     inc   $21
1261: 78 06 21  cmp   $21,#$06
1264: d0 f4     bne   $125a
1266: 6f        ret

1267: e8 00     mov   a,#$00
1269: fd        mov   y,a
126a: c4 20     mov   $20,a
126c: 8f d8 21  mov   $21,#$d8
126f: d7 20     mov   ($20)+y,a
1271: fc        inc   y
1272: d0 fb     bne   $126f
1274: ab 21     inc   $21
1276: d0 f7     bne   $126f
1278: 6f        ret

1279: 4d        push  x
127a: 6d        push  y
127b: e5 f4 00  mov   a,$00f4
127e: c5 04 05  mov   $0504,a
1281: e5 f5 00  mov   a,$00f5
1284: c5 05 05  mov   $0505,a
1287: 8d 01     mov   y,#$01
1289: cd 00     mov   x,#$00
128b: f6 04 05  mov   a,$0504+y
128e: f0 4b     beq   $12db
1290: 76 01 05  cmp   a,$0501+y
1293: f0 46     beq   $12db
1295: 68 f0     cmp   a,#$f0
1297: 90 17     bcc   $12b0
1299: 2d        push  a
129a: 6d        push  y
129b: 3f c0 09  call  $09c0
129e: ee        pop   y
129f: ae        pop   a
12a0: 68 f0     cmp   a,#$f0
12a2: d0 37     bne   $12db
12a4: e8 dd     mov   a,#$dd
12a6: c5 f6 00  mov   $00f6,a
12a9: e8 ee     mov   a,#$ee
12ab: c5 f7 00  mov   $00f7,a
12ae: 2f 39     bra   $12e9
12b0: 5d        mov   x,a
12b1: f5 00 18  mov   a,$1800+x
12b4: c4 20     mov   $20,a
12b6: 28 80     and   a,#$80
12b8: d0 04     bne   $12be
12ba: e8 00     mov   a,#$00
12bc: 2f 06     bra   $12c4
12be: f5 00 19  mov   a,$1900+x
12c1: 5c        lsr   a
12c2: 5c        lsr   a
12c3: 9f        xcn   a
12c4: 5d        mov   x,a
12c5: f5 f0 04  mov   a,$04f0+x
12c8: 4d        push  x
12c9: 5d        mov   x,a
12ca: f5 00 18  mov   a,$1800+x
12cd: c4 21     mov   $21,a
12cf: ce        pop   x
12d0: 69 21 20  cmp   ($20),($21)
12d3: 90 06     bcc   $12db
12d5: f6 04 05  mov   a,$0504+y
12d8: d5 f0 04  mov   $04f0+x,a
12db: f6 04 05  mov   a,$0504+y
12de: d6 01 05  mov   $0501+y,a
12e1: f0 03     beq   $12e6
12e3: d6 f4 00  mov   $00f4+y,a
12e6: dc        dec   y
12e7: 10 a2     bpl   $128b
12e9: ee        pop   y
12ea: ce        pop   x
12eb: 6f        ret

12ec: 4d        push  x
12ed: 6d        push  y
12ee: 8d 03     mov   y,#$03
12f0: f6 f8 04  mov   a,$04f8+y
12f3: 5d        mov   x,a
12f4: f5 00 18  mov   a,$1800+x
12f7: d6 fc 04  mov   $04fc+y,a
12fa: dc        dec   y
12fb: 10 f3     bpl   $12f0
12fd: 8d 03     mov   y,#$03
12ff: f6 f0 04  mov   a,$04f0+y
1302: f0 61     beq   $1365
1304: 5d        mov   x,a
1305: f5 00 18  mov   a,$1800+x
1308: c4 20     mov   $20,a
130a: f6 fc 04  mov   a,$04fc+y
130d: c4 21     mov   $21,a
130f: 69 21 20  cmp   ($20),($21)
1312: 90 51     bcc   $1365
1314: ad 00     cmp   y,#$00
1316: f0 2c     beq   $1344
1318: ad 03     cmp   y,#$03
131a: f0 28     beq   $1344
131c: e5 fb 04  mov   a,$04fb
131f: f0 23     beq   $1344
1321: e5 ff 04  mov   a,$04ff
1324: c4 21     mov   $21,a
1326: 69 21 20  cmp   ($20),($21)
1329: 90 3a     bcc   $1365
132b: e8 00     mov   a,#$00
132d: c5 fb 04  mov   $04fb,a
1330: ad 02     cmp   y,#$02
1332: d0 02     bne   $1336
1334: e8 01     mov   a,#$01
1336: ad 01     cmp   y,#$01
1338: d0 02     bne   $133c
133a: e8 02     mov   a,#$02
133c: 6d        push  y
133d: c5 7d 05  mov   $057d,a
1340: 3f 42 09  call  $0942
1343: ee        pop   y
1344: f6 f0 04  mov   a,$04f0+y
1347: d6 f8 04  mov   $04f8+y,a
134a: c4 4d     mov   $4d,a
134c: 6d        push  y
134d: 3f e3 08  call  $08e3
1350: e5 13 05  mov   a,$0513
1353: f0 03     beq   $1358
1355: 3f de 09  call  $09de
1358: ee        pop   y
1359: ad 03     cmp   y,#$03
135b: d0 08     bne   $1365
135d: 8d 00     mov   y,#$00
135f: cc f9 04  mov   $04f9,y
1362: cc fa 04  mov   $04fa,y
1365: dc        dec   y
1366: 10 97     bpl   $12ff
1368: e8 00     mov   a,#$00
136a: c5 f0 04  mov   $04f0,a
136d: c5 f1 04  mov   $04f1,a
1370: c5 f2 04  mov   $04f2,a
1373: c5 f3 04  mov   $04f3,a
1376: ee        pop   y
1377: ce        pop   x
1378: 6f        ret

1379: 6f        ret

137a: e5 fe 00  mov   a,$00fe
137d: e9 06 05  mov   x,$0506
1380: f0 3e     beq   $13c0
1382: 85 0a 05  adc   a,$050a
1385: 68 32     cmp   a,#$32
1387: 90 37     bcc   $13c0
1389: c8 02     cmp   x,#$02
138b: f0 37     beq   $13c4
138d: e5 09 05  mov   a,$0509
1390: 80        setc
1391: a5 0b 05  sbc   a,$050b
1394: 68 80     cmp   a,#$80
1396: 90 23     bcc   $13bb
1398: e4 31     mov   a,$31
139a: 80        setc
139b: a5 0d 05  sbc   a,$050d
139e: 68 80     cmp   a,#$80
13a0: 90 13     bcc   $13b5
13a2: e8 ff     mov   a,#$ff
13a4: 3f 98 14  call  $1498
13a7: e8 00     mov   a,#$00
13a9: c5 f6 00  mov   $00f6,a
13ac: c5 06 05  mov   $0506,a
13af: 3f a2 09  call  $09a2
13b2: 3f 67 12  call  $1267
13b5: c4 31     mov   $31,a
13b7: c4 33     mov   $33,a
13b9: e8 00     mov   a,#$00
13bb: 3f 65 14  call  $1465
13be: e8 00     mov   a,#$00
13c0: c5 0a 05  mov   $050a,a
13c3: 6f        ret

13c4: e5 09 05  mov   a,$0509
13c7: 60        clrc
13c8: 85 0b 05  adc   a,$050b
13cb: 68 80     cmp   a,#$80
13cd: 90 ec     bcc   $13bb
13cf: e8 00     mov   a,#$00
13d1: c5 06 05  mov   $0506,a
13d4: e8 7f     mov   a,#$7f
13d6: 2f e3     bra   $13bb
13d8: ac 06 05  inc   $0506
13db: e9 f7 00  mov   x,$00f7
13de: 8d 00     mov   y,#$00
13e0: cc 0a 05  mov   $050a,y
13e3: e8 7f     mov   a,#$7f
13e5: 9e        div   ya,x
13e6: d0 01     bne   $13e9
13e8: bc        inc   a
13e9: c5 0b 05  mov   $050b,a
13ec: e4 31     mov   a,$31
13ee: 8d 00     mov   y,#$00
13f0: e9 f7 00  mov   x,$00f7
13f3: 9e        div   ya,x
13f4: d0 01     bne   $13f7
13f6: bc        inc   a
13f7: c5 0d 05  mov   $050d,a
13fa: 6f        ret

13fb: e8 00     mov   a,#$00
13fd: c5 06 05  mov   $0506,a
1400: e8 7f     mov   a,#$7f
1402: 3f 65 14  call  $1465
1405: e5 0e 05  mov   a,$050e
1408: ec 0f 05  mov   y,$050f
140b: da 30     movw  $30,ya
140d: e5 10 05  mov   a,$0510
1410: ec 11 05  mov   y,$0511
1413: da 32     movw  $32,ya
1415: 6f        ret

1416: e8 00     mov   a,#$00
1418: c5 f6 04  mov   $04f6,a
141b: 2f 05     bra   $1422
141d: e8 01     mov   a,#$01
141f: c5 f6 04  mov   $04f6,a
1422: cd 0e     mov   x,#$0e
1424: 8f 80 57  mov   $57,#$80
1427: f5 e0 04  mov   a,$04e0+x
142a: ec f6 04  mov   y,$04f6
142d: f0 02     beq   $1431
142f: e8 0a     mov   a,#$0a
1431: d5 41 04  mov   $0441+x,a
1434: 28 1f     and   a,#$1f
1436: d5 01 04  mov   $0401+x,a
1439: e8 00     mov   a,#$00
143b: d5 00 04  mov   $0400+x,a
143e: 1d        dec   x
143f: 1d        dec   x
1440: 4b 57     lsr   $57
1442: d0 e3     bne   $1427
1444: 6f        ret

1445: ec f7 00  mov   y,$00f7
1448: e8 00     mov   a,#$00
144a: da 23     movw  $23,ya
144c: 6f        ret

; vcmd ff - sub-vcmd
144d: 1c        asl   a
144e: fd        mov   y,a
144f: f6 5c 14  mov   a,$145c+y
1452: 2d        push  a
1453: f6 5b 14  mov   a,$145b+y
1456: 2d        push  a
1457: 3f 58 0c  call  $0c58
145a: 6f        ret

; sub-vcmd dispatch table
145b: dw $1490  ; 00
145d: dw $149d  ; 01 - channel echo on
145f: dw $14a8  ; 02 - channel echo off
1461: dw $1473  ; 03
1463: dw $1465  ; 04 - hardware master volume

; sub-vcmd 04 - hardware master volume
1465: c5 09 05  mov   $0509,a
1468: 8d 0c     mov   y,#$0c
146a: 3f 66 08  call  $0866             ; set MVOL(L)
146d: 8d 1c     mov   y,#$1c
146f: 3f 66 08  call  $0866             ; set MVOL(R)
1472: 6f        ret

; sub-vcmd 03
1473: 4d        push  x
1474: 2d        push  a
1475: e8 02     mov   a,#$02
1477: c5 06 05  mov   $0506,a
147a: ce        pop   x
147b: 8d 00     mov   y,#$00
147d: cc 0a 05  mov   $050a,y
1480: e8 7f     mov   a,#$7f
1482: 9e        div   ya,x
1483: d0 01     bne   $1486
1485: bc        inc   a
1486: c5 0b 05  mov   $050b,a
1489: e8 00     mov   a,#$00
148b: 3f 65 14  call  $1465
148e: ce        pop   x
148f: 6f        ret

; sub-vcmd 00
1490: c5 f7 04  mov   $04f7,a
1493: d0 01     bne   $1496
1495: 6f        ret

1496: e8 ff     mov   a,#$ff
1498: 8d 5c     mov   y,#$5c
149a: 5f 5e 08  jmp   $085e             ; set KOF if required

; sub-vcmd 01 - channel echo on
149d: 7d        mov   a,x
149e: 5c        lsr   a
149f: fd        mov   y,a
14a0: f6 61 07  mov   a,$0761+y
14a3: 04 5a     or    a,$5a
14a5: c4 5a     mov   $5a,a
14a7: 6f        ret

; sub-vcmd 02 - channel echo off
14a8: 7d        mov   a,x
14a9: 5c        lsr   a
14aa: fd        mov   y,a
14ab: f6 61 07  mov   a,$0761+y
14ae: 48 ff     eor   a,#$ff
14b0: 24 5a     and   a,$5a
14b2: c4 5a     mov   $5a,a
14b4: 6f        ret
