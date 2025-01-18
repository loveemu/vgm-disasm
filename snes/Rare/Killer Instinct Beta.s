04d8: 20        clrp
04d9: cd ff     mov   x,#$ff
04db: bd        mov   sp,x
04dc: e8 00     mov   a,#$00
04de: c4 f4     mov   $f4,a
04e0: bc        inc   a
04e1: c4 ea     mov   $ea,a
04e3: f8 ea     mov   x,$ea
04e5: 8d 00     mov   y,#$00
04e7: e4 f4     mov   a,$f4
04e9: 64 f4     cmp   a,$f4
04eb: d0 fa     bne   $04e7
04ed: 3e f4     cmp   x,$f4
04ef: d0 f6     bne   $04e7
04f1: fa f5 eb  mov   ($eb),($f5)
04f4: fa f6 ec  mov   ($ec),($f6)
04f7: d8 f4     mov   $f4,x
04f9: 3d        inc   x
04fa: e4 f4     mov   a,$f4
04fc: 64 f4     cmp   a,$f4
04fe: d0 fa     bne   $04fa
0500: 3e f4     cmp   x,$f4
0502: d0 f6     bne   $04fa
0504: fa f5 ed  mov   ($ed),($f5)
0507: fa f6 ee  mov   ($ee),($f6)
050a: d8 f4     mov   $f4,x
050c: 3d        inc   x
050d: 1a ed     decw  $ed
050f: 30 23     bmi   $0534
0511: e4 f4     mov   a,$f4
0513: 64 f4     cmp   a,$f4
0515: d0 fa     bne   $0511
0517: 3e f4     cmp   x,$f4
0519: d0 f6     bne   $0511
051b: e4 f5     mov   a,$f5
051d: d7 eb     mov   ($eb)+y,a
051f: e4 f6     mov   a,$f6
0521: d8 f4     mov   $f4,x
0523: 3d        inc   x
0524: fc        inc   y
0525: d7 eb     mov   ($eb)+y,a
0527: fc        inc   y
0528: f0 06     beq   $0530
052a: 1a ed     decw  $ed
052c: 10 e3     bpl   $0511
052e: 2f b5     bra   $04e5
0530: ab ec     inc   $ec
0532: 2f f6     bra   $052a
0534: d8 ea     mov   $ea,x
0536: cd 00     mov   x,#$00
0538: 1f eb 00  jmp   ($00eb+x)

0640: 20        clrp
0641: cd ff     mov   x,#$ff
0643: bd        mov   sp,x
0644: e5 3c 05  mov   a,$053c
0647: 1c        asl   a
0648: fd        mov   y,a
0649: f6 b2 12  mov   a,$12b2+y
064c: c4 e8     mov   $e8,a
064e: f6 b3 12  mov   a,$12b3+y
0651: c4 e9     mov   $e9,a
0653: 5f 5c 06  jmp   $065c

0656: 8f 12 e9  mov   $e9,#$12
0659: 8f a0 e8  mov   $e8,#$a0
065c: 3f 58 10  call  $1058
065f: 8f 00 1f  mov   $1f,#$00
0662: e8 00     mov   a,#$00
0664: c5 00 02  mov   $0200,a
0667: e8 00     mov   a,#$00
0669: c4 20     mov   $20,a
066b: 8f 00 f1  mov   $f1,#$00
066e: e4 ea     mov   a,$ea
0670: 64 f4     cmp   a,$f4
0672: d0 5b     bne   $06cf
0674: f8 f6     mov   x,$f6
0676: c9 3c 05  mov   $053c,x
0679: f8 f5     mov   x,$f5
067b: c4 f4     mov   $f4,a
067d: bc        inc   a
067e: c4 ea     mov   $ea,a
0680: 7d        mov   a,x
0681: 68 80     cmp   a,#$80
0683: 30 17     bmi   $069c
0685: 28 07     and   a,#$07
0687: 1c        asl   a
0688: 5d        mov   x,a
0689: 1f 8c 06  jmp   ($068c+x)

068c: dw $06c1
068e: dw $06b9
0690: dw $06b3
0692: dw $0640
0694: dw $06ac
0696: dw $06a4
0698: dw $06c9
069a: dw $079e

069c: e9 3c 05  mov   x,$053c
069f: 3f 4f 11  call  $114f
06a2: 2f 35     bra   $06d9

06a4: e5 3c 05  mov   a,$053c
06a7: c5 00 02  mov   $0200,a
06aa: 2f 31     bra   $06dd

06ac: e5 3c 05  mov   a,$053c
06af: c4 20     mov   $20,a
06b1: 2f 2a     bra   $06dd

06b3: e5 3c 05  mov   a,$053c
06b6: 3f d6 07  call  $07d6
06b9: e5 3c 05  mov   a,$053c
06bc: 3f e1 07  call  $07e1
06bf: 2f 0e     bra   $06cf

06c1: e5 3c 05  mov   a,$053c
06c4: 3f d6 07  call  $07d6
06c7: 2f 06     bra   $06cf

06c9: 8f 01 1f  mov   $1f,#$01
06cc: 8f 00 f1  mov   $f1,#$00
06cf: e4 1f     mov   a,$1f
06d1: f0 9b     beq   $066e
06d3: fa e7 fa  mov   ($fa),($e7)
06d6: 8f 01 f1  mov   $f1,#$01
06d9: e4 fd     mov   a,$fd
06db: f0 fc     beq   $06d9
06dd: 8f 01 f1  mov   $f1,#$01
06e0: 8f 00 23  mov   $23,#$00
06e3: 60        clrc
06e4: 89 22 21  adc   ($21),($22)
06e7: 6b 23     ror   $23
06e9: 8f 00 26  mov   $26,#$00
06ec: 60        clrc
06ed: 89 25 24  adc   ($24),($25)
06f0: 6b 26     ror   $26
06f2: e4 23     mov   a,$23
06f4: f0 6f     beq   $0765
06f6: e8 ff     mov   a,#$ff
06f8: 8d 00     mov   y,#$00
06fa: da 04     movw  $04,ya
06fc: ba 0a     movw  ya,$0a
06fe: 5a 04     cmpw  ya,$04
0700: f0 63     beq   $0765
0702: 90 09     bcc   $070d
0704: 8f 00 0b  mov   $0b,#$00
0707: e8 ff     mov   a,#$ff
0709: c4 0a     mov   $0a,a
070b: 2f 0e     bra   $071b
070d: e4 0c     mov   a,$0c
070f: f0 54     beq   $0765
0711: 8d 00     mov   y,#$00
0713: 7a 0a     addw  ya,$0a
0715: da 0a     movw  $0a,ya
0717: 5a 04     cmpw  ya,$04
0719: b0 e9     bcs   $0704
071b: 8d 00     mov   y,#$00
071d: da 02     movw  $02,ya
071f: e8 80     mov   a,#$80
0721: 8d ff     mov   y,#$ff
0723: da 04     movw  $04,ya
0725: e5 31 02  mov   a,$0231
0728: 8d 00     mov   y,#$00
072a: 9a 02     subw  ya,$02
072c: 10 02     bpl   $0730
072e: e8 00     mov   a,#$00
0730: 8f 0c f2  mov   $f2,#$0c
0733: c4 f3     mov   $f3,a
0735: e5 32 02  mov   a,$0232
0738: 8d 00     mov   y,#$00
073a: 9a 02     subw  ya,$02
073c: 10 02     bpl   $0740
073e: e8 00     mov   a,#$00
0740: 8f 1c f2  mov   $f2,#$1c
0743: c4 f3     mov   $f3,a
0745: e5 33 02  mov   a,$0233
0748: 8d 00     mov   y,#$00
074a: 9a 02     subw  ya,$02
074c: 10 02     bpl   $0750
074e: e8 00     mov   a,#$00
0750: 8f 2c f2  mov   $f2,#$2c
0753: c4 f3     mov   $f3,a
0755: e5 34 02  mov   a,$0234
0758: 8d 00     mov   y,#$00
075a: 9a 02     subw  ya,$02
075c: 10 02     bpl   $0760
075e: e8 00     mov   a,#$00
0760: 8f 3c f2  mov   $f2,#$3c
0763: c4 f3     mov   $f3,a
0765: cd 00     mov   x,#$00
0767: e4 23     mov   a,$23
0769: d0 05     bne   $0770
076b: 3f c5 09  call  $09c5
076e: 2f 07     bra   $0777
0770: 3f ec 07  call  $07ec
0773: 68 00     cmp   a,#$00
0775: d0 f9     bne   $0770
0777: f5 e0 01  mov   a,$01e0+x
077a: f0 17     beq   $0793
077c: 4d        push  x
077d: 7d        mov   a,x
077e: 60        clrc
077f: 88 08     adc   a,#$08
0781: 5d        mov   x,a
0782: e4 26     mov   a,$26
0784: d0 05     bne   $078b
0786: 3f c5 09  call  $09c5
0789: 2f 07     bra   $0792
078b: 3f ec 07  call  $07ec
078e: 68 00     cmp   a,#$00
0790: d0 f9     bne   $078b
0792: ce        pop   x
0793: 3d        inc   x
0794: c8 08     cmp   x,#$08
0796: f0 03     beq   $079b
0798: 5f 67 07  jmp   $0767
079b: 5f 6e 06  jmp   $066e

079e: e5 3c 05  mov   a,$053c
07a1: f0 03     beq   $07a6
07a3: 5f e3 04  jmp   $04e3
07a6: 8f 5c f2  mov   $f2,#$5c
07a9: 8f ff f3  mov   $f3,#$ff
07ac: 8f 00 f1  mov   $f1,#$00
07af: 8f c8 fb  mov   $fb,#$c8
07b2: 8f 02 f1  mov   $f1,#$02
07b5: e4 fe     mov   a,$fe
07b7: f0 fc     beq   $07b5
07b9: 8f 6c f2  mov   $f2,#$6c
07bc: 8f a0 f3  mov   $f3,#$a0
07bf: cd 00     mov   x,#$00
07c1: 8f 4d f2  mov   $f2,#$4d
07c4: d8 f3     mov   $f3,x
07c6: 8f 2c f2  mov   $f2,#$2c
07c9: d8 f3     mov   $f3,x
07cb: 8f 3c f2  mov   $f2,#$3c
07ce: d8 f3     mov   $f3,x
07d0: 3f 58 10  call  $1058
07d3: 5f e3 04  jmp   $04e3

07d6: 8f 0c f2  mov   $f2,#$0c
07d9: c4 f3     mov   $f3,a
07db: 8f 2c f2  mov   $f2,#$2c
07de: c4 f3     mov   $f3,a
07e0: 6f        ret

07e1: 8f 1c f2  mov   $f2,#$1c
07e4: c4 f3     mov   $f3,a
07e6: 8f 3c f2  mov   $f2,#$3c
07e9: c4 f3     mov   $f3,a
07eb: 6f        ret

07ec: f5 10 01  mov   a,$0110+x
07ef: d0 03     bne   $07f4
07f1: e8 00     mov   a,#$00
07f3: 6f        ret

07f4: 9b 37     dec   $37+x
07f6: f4 37     mov   a,$37+x
07f8: 68 01     cmp   a,#$01
07fa: f0 16     beq   $0812
07fc: 68 ff     cmp   a,#$ff
07fe: d0 08     bne   $0808
0800: f4 27     mov   a,$27+x
0802: f0 25     beq   $0829
0804: 9b 27     dec   $27+x
0806: 2f 1b     bra   $0823
0808: 68 00     cmp   a,#$00
080a: d0 17     bne   $0823
080c: f4 27     mov   a,$27+x
080e: f0 19     beq   $0829
0810: 2f 11     bra   $0823
0812: f4 27     mov   a,$27+x
0814: d0 0d     bne   $0823
0816: f5 e0 01  mov   a,$01e0+x
0819: d0 08     bne   $0823
081b: f5 e6 0f  mov   a,$0fe6+x
081e: 8f 5c f2  mov   $f2,#$5c
0821: c4 f3     mov   $f3,a
0823: 3f c5 09  call  $09c5
0826: e8 00     mov   a,#$00
0828: 6f        ret

0829: f4 47     mov   a,$47+x
082b: fb 57     mov   y,$57+x
082d: da 00     movw  $00,ya
082f: 8d 00     mov   y,#$00
0831: f7 00     mov   a,($00)+y
0833: 30 06     bmi   $083b
0835: 4d        push  x
0836: 1c        asl   a
0837: 5d        mov   x,a
0838: 1f f6 0f  jmp   ($0ff6+x)
083b: 3f 44 08  call  $0844
083e: 3f c5 09  call  $09c5
0841: e8 00     mov   a,#$00
0843: 6f        ret

0844: 68 80     cmp   a,#$80
0846: d0 20     bne   $0868
0848: f5 e0 01  mov   a,$01e0+x
084b: d0 18     bne   $0865
084d: f5 e6 0f  mov   a,$0fe6+x
0850: 8f 5c f2  mov   $f2,#$5c
0853: c4 f3     mov   $f3,a
0855: 7d        mov   a,x
0856: 28 07     and   a,#$07
0858: 9f        xcn   a
0859: 08 02     or    a,#$02
085b: c4 f2     mov   $f2,a
085d: e8 00     mov   a,#$00
085f: c4 f3     mov   $f3,a
0861: ab f2     inc   $f2
0863: c4 f3     mov   $f3,a
0865: 5f 8c 09  jmp   $098c
0868: 68 e0     cmp   a,#$e0
086a: 30 0a     bmi   $0876
086c: 68 e1     cmp   a,#$e1
086e: f0 04     beq   $0874
0870: f4 0f     mov   a,$0f+x
0872: 2f 02     bra   $0876
0874: f4 17     mov   a,$17+x
0876: 60        clrc
0877: 88 24     adc   a,#$24
0879: 60        clrc
087a: 95 40 01  adc   a,$0140+x
087d: 1c        asl   a
087e: 4d        push  x
087f: fb 67     mov   y,$67+x
0881: f0 3a     beq   $08bd
0883: 5d        mov   x,a
0884: cb 04     mov   $04,y
0886: dd        mov   a,y
0887: 10 03     bpl   $088c
0889: 48 ff     eor   a,#$ff
088b: bc        inc   a
088c: fd        mov   y,a
088d: 6d        push  y
088e: f5 bb 11  mov   a,$11bb+x
0891: cf        mul   ya
0892: cb 02     mov   $02,y
0894: 8f 00 03  mov   $03,#$00
0897: ee        pop   y
0898: f5 bc 11  mov   a,$11bc+x
089b: cf        mul   ya
089c: 7a 02     addw  ya,$02
089e: cb 03     mov   $03,y
08a0: 4b 03     lsr   $03
08a2: 7c        ror   a
08a3: 4b 03     lsr   $03
08a5: 7c        ror   a
08a6: c4 02     mov   $02,a
08a8: f5 bc 11  mov   a,$11bc+x
08ab: fd        mov   y,a
08ac: f5 bb 11  mov   a,$11bb+x
08af: f8 04     mov   x,$04
08b1: 30 04     bmi   $08b7
08b3: 7a 02     addw  ya,$02
08b5: 2f 02     bra   $08b9
08b7: 9a 02     subw  ya,$02
08b9: da 02     movw  $02,ya
08bb: 2f 0b     bra   $08c8
08bd: 5d        mov   x,a
08be: f5 bb 11  mov   a,$11bb+x
08c1: c4 02     mov   $02,a
08c3: f5 bc 11  mov   a,$11bc+x
08c6: c4 03     mov   $03,a
08c8: ae        pop   a
08c9: 5d        mov   x,a
08ca: 28 07     and   a,#$07
08cc: 9f        xcn   a
08cd: c4 f2     mov   $f2,a
08cf: f5 e0 01  mov   a,$01e0+x
08d2: f0 03     beq   $08d7
08d4: 5f 8c 09  jmp   $098c
08d7: f5 55 02  mov   a,$0255+x
08da: c4 f3     mov   $f3,a
08dc: ab f2     inc   $f2
08de: f5 65 02  mov   a,$0265+x
08e1: c4 f3     mov   $f3,a
08e3: ab f2     inc   $f2
08e5: f5 50 01  mov   a,$0150+x
08e8: 28 01     and   a,#$01
08ea: f0 17     beq   $0903
08ec: f5 60 01  mov   a,$0160+x
08ef: d5 a0 01  mov   $01a0+x,a
08f2: f5 70 01  mov   a,$0170+x
08f5: d5 00 01  mov   $0100+x,a
08f8: f5 80 01  mov   a,$0180+x
08fb: d4 97     mov   $97+x,a
08fd: f5 90 01  mov   a,$0190+x
0900: d5 c0 01  mov   $01c0+x,a
0903: f5 50 01  mov   a,$0150+x
0906: 28 02     and   a,#$02
0908: f0 1b     beq   $0925
090a: f5 35 02  mov   a,$0235+x
090d: 10 06     bpl   $0915
090f: 48 ff     eor   a,#$ff
0911: bc        inc   a
0912: d5 35 02  mov   $0235+x,a
0915: f5 01 02  mov   a,$0201+x
0918: 5c        lsr   a
0919: d4 a7     mov   $a7+x,a
091b: f5 11 02  mov   a,$0211+x
091e: d4 b7     mov   $b7+x,a
0920: f5 21 02  mov   a,$0221+x
0923: d4 c7     mov   $c7+x,a
0925: f5 50 01  mov   a,$0150+x
0928: 28 0c     and   a,#$0c
092a: f0 2a     beq   $0956
092c: f5 d5 02  mov   a,$02d5+x
092f: 10 06     bpl   $0937
0931: 48 ff     eor   a,#$ff
0933: bc        inc   a
0934: d5 d5 02  mov   $02d5+x,a
0937: f5 f5 02  mov   a,$02f5+x
093a: 5c        lsr   a
093b: d5 e5 02  mov   $02e5+x,a
093e: f5 c5 02  mov   a,$02c5+x
0941: d5 b5 02  mov   $02b5+x,a
0944: f5 05 03  mov   a,$0305+x
0947: d5 a5 02  mov   $02a5+x,a
094a: f5 15 03  mov   a,$0315+x
094d: d5 55 02  mov   $0255+x,a
0950: f5 25 03  mov   a,$0325+x
0953: d5 65 02  mov   $0265+x,a
0956: e4 02     mov   a,$02
0958: d4 87     mov   $87+x,a
095a: c4 f3     mov   $f3,a
095c: ab f2     inc   $f2
095e: e4 03     mov   a,$03
0960: d4 77     mov   $77+x,a
0962: c4 f3     mov   $f3,a
0964: ab f2     inc   $f2
0966: f5 45 02  mov   a,$0245+x
0969: c4 f3     mov   $f3,a
096b: ab f2     inc   $f2
096d: f5 75 02  mov   a,$0275+x
0970: c4 f3     mov   $f3,a
0972: ab f2     inc   $f2
0974: f5 85 02  mov   a,$0285+x
0977: c4 f3     mov   $f3,a
0979: ab f2     inc   $f2
097b: 8f 7f f3  mov   $f3,#$7f
097e: 8f 5c f2  mov   $f2,#$5c
0981: 8f 00 f3  mov   $f3,#$00
0984: 8f 4c f2  mov   $f2,#$4c
0987: f5 e6 0f  mov   a,$0fe6+x
098a: c4 f3     mov   $f3,a
098c: f5 20 01  mov   a,$0120+x
098f: f0 0f     beq   $09a0
0991: 8f 01 00  mov   $00,#$01
0994: f5 20 01  mov   a,$0120+x
0997: d4 37     mov   $37+x,a
0999: f5 30 01  mov   a,$0130+x
099c: d4 27     mov   $27+x,a
099e: 2f 17     bra   $09b7
09a0: 8d 01     mov   y,#$01
09a2: f7 00     mov   a,($00)+y
09a4: d4 37     mov   $37+x,a
09a6: f5 d0 01  mov   a,$01d0+x
09a9: f0 09     beq   $09b4
09ab: f4 37     mov   a,$37+x
09ad: d4 27     mov   $27+x,a
09af: fc        inc   y
09b0: f7 00     mov   a,($00)+y
09b2: d4 37     mov   $37+x,a
09b4: fc        inc   y
09b5: cb 00     mov   $00,y
09b7: 8f 00 01  mov   $01,#$00
09ba: f4 47     mov   a,$47+x
09bc: fb 57     mov   y,$57+x
09be: 7a 00     addw  ya,$00
09c0: db 57     mov   $57+x,y
09c2: d4 47     mov   $47+x,a
09c4: 6f        ret

09c5: f5 50 01  mov   a,$0150+x
09c8: 28 01     and   a,#$01
09ca: d0 03     bne   $09cf
09cc: 5f 42 0a  jmp   $0a42
09cf: f5 a0 01  mov   a,$01a0+x
09d2: f0 0f     beq   $09e3
09d4: 68 ff     cmp   a,#$ff
09d6: f0 6a     beq   $0a42
09d8: 9c        dec   a
09d9: d5 a0 01  mov   $01a0+x,a
09dc: d0 64     bne   $0a42
09de: e8 01     mov   a,#$01
09e0: d5 00 01  mov   $0100+x,a
09e3: f5 00 01  mov   a,$0100+x
09e6: 9c        dec   a
09e7: d5 00 01  mov   $0100+x,a
09ea: d0 56     bne   $0a42
09ec: f5 70 01  mov   a,$0170+x
09ef: d5 00 01  mov   $0100+x,a
09f2: f5 c0 01  mov   a,$01c0+x
09f5: f0 22     beq   $0a19
09f7: 9c        dec   a
09f8: d5 c0 01  mov   $01c0+x,a
09fb: f5 b0 01  mov   a,$01b0+x
09fe: 48 ff     eor   a,#$ff
0a00: bc        inc   a
0a01: c4 00     mov   $00,a
0a03: 10 04     bpl   $0a09
0a05: e8 ff     mov   a,#$ff
0a07: 2f 02     bra   $0a0b
0a09: e8 00     mov   a,#$00
0a0b: c4 01     mov   $01,a
0a0d: f4 87     mov   a,$87+x
0a0f: fb 77     mov   y,$77+x
0a11: 7a 00     addw  ya,$00
0a13: db 77     mov   $77+x,y
0a15: d4 87     mov   $87+x,a
0a17: 2f 0b     bra   $0a24
0a19: f5 b0 01  mov   a,$01b0+x
0a1c: c4 00     mov   $00,a
0a1e: 10 e9     bpl   $0a09
0a20: e8 ff     mov   a,#$ff
0a22: 2f e7     bra   $0a0b
0a24: f5 e0 01  mov   a,$01e0+x
0a27: d0 10     bne   $0a39
0a29: 7d        mov   a,x
0a2a: 28 07     and   a,#$07
0a2c: 9f        xcn   a
0a2d: 08 02     or    a,#$02
0a2f: c4 f2     mov   $f2,a
0a31: f4 87     mov   a,$87+x
0a33: c4 f3     mov   $f3,a
0a35: ab f2     inc   $f2
0a37: cb f3     mov   $f3,y
0a39: 9b 97     dec   $97+x
0a3b: d0 05     bne   $0a42
0a3d: e8 ff     mov   a,#$ff
0a3f: d5 a0 01  mov   $01a0+x,a
0a42: f5 50 01  mov   a,$0150+x
0a45: 28 02     and   a,#$02
0a47: f0 51     beq   $0a9a
0a49: f4 c7     mov   a,$c7+x
0a4b: f0 04     beq   $0a51
0a4d: 9b c7     dec   $c7+x
0a4f: 2f 49     bra   $0a9a
0a51: 9b b7     dec   $b7+x
0a53: d0 45     bne   $0a9a
0a55: f5 11 02  mov   a,$0211+x
0a58: d4 b7     mov   $b7+x,a
0a5a: f5 35 02  mov   a,$0235+x
0a5d: c4 00     mov   $00,a
0a5f: 10 04     bpl   $0a65
0a61: e8 ff     mov   a,#$ff
0a63: 2f 02     bra   $0a67
0a65: e8 00     mov   a,#$00
0a67: c4 01     mov   $01,a
0a69: f4 87     mov   a,$87+x
0a6b: fb 77     mov   y,$77+x
0a6d: 7a 00     addw  ya,$00
0a6f: db 77     mov   $77+x,y
0a71: d4 87     mov   $87+x,a
0a73: f5 e0 01  mov   a,$01e0+x
0a76: d0 10     bne   $0a88
0a78: 7d        mov   a,x
0a79: 28 07     and   a,#$07
0a7b: 9f        xcn   a
0a7c: 08 02     or    a,#$02
0a7e: c4 f2     mov   $f2,a
0a80: f4 87     mov   a,$87+x
0a82: c4 f3     mov   $f3,a
0a84: ab f2     inc   $f2
0a86: cb f3     mov   $f3,y
0a88: 9b a7     dec   $a7+x
0a8a: d0 0e     bne   $0a9a
0a8c: f5 01 02  mov   a,$0201+x
0a8f: d4 a7     mov   $a7+x,a
0a91: f5 35 02  mov   a,$0235+x
0a94: 48 ff     eor   a,#$ff
0a96: bc        inc   a
0a97: d5 35 02  mov   $0235+x,a
0a9a: f5 50 01  mov   a,$0150+x
0a9d: 28 0c     and   a,#$0c
0a9f: d0 03     bne   $0aa4
0aa1: 5f 7d 0b  jmp   $0b7d
0aa4: f5 a5 02  mov   a,$02a5+x
0aa7: f0 0a     beq   $0ab3
0aa9: f5 a5 02  mov   a,$02a5+x
0aac: 9c        dec   a
0aad: d5 a5 02  mov   $02a5+x,a
0ab0: 5f 7d 0b  jmp   $0b7d
0ab3: f5 b5 02  mov   a,$02b5+x
0ab6: 9c        dec   a
0ab7: d5 b5 02  mov   $02b5+x,a
0aba: f0 03     beq   $0abf
0abc: 5f 7d 0b  jmp   $0b7d
0abf: f5 c5 02  mov   a,$02c5+x
0ac2: d5 b5 02  mov   $02b5+x,a
0ac5: f5 50 01  mov   a,$0150+x
0ac8: 28 08     and   a,#$08
0aca: f0 64     beq   $0b30
0acc: f5 f5 02  mov   a,$02f5+x
0acf: 28 01     and   a,#$01
0ad1: d0 18     bne   $0aeb
0ad3: f5 f5 02  mov   a,$02f5+x
0ad6: 28 02     and   a,#$02
0ad8: f0 23     beq   $0afd
0ada: f5 55 02  mov   a,$0255+x
0add: 80        setc
0ade: b5 d5 02  sbc   a,$02d5+x
0ae1: 75 35 03  cmp   a,$0335+x
0ae4: 10 14     bpl   $0afa
0ae6: f5 35 03  mov   a,$0335+x
0ae9: 2f 0f     bra   $0afa
0aeb: f5 d5 02  mov   a,$02d5+x
0aee: 60        clrc
0aef: 95 55 02  adc   a,$0255+x
0af2: 75 45 03  cmp   a,$0345+x
0af5: 30 03     bmi   $0afa
0af7: f5 45 03  mov   a,$0345+x
0afa: d5 55 02  mov   $0255+x,a
0afd: f5 f5 02  mov   a,$02f5+x
0b00: 28 10     and   a,#$10
0b02: d0 18     bne   $0b1c
0b04: f5 f5 02  mov   a,$02f5+x
0b07: 28 20     and   a,#$20
0b09: f0 23     beq   $0b2e
0b0b: f5 65 02  mov   a,$0265+x
0b0e: 80        setc
0b0f: b5 d5 02  sbc   a,$02d5+x
0b12: 75 35 03  cmp   a,$0335+x
0b15: 10 14     bpl   $0b2b
0b17: f5 35 03  mov   a,$0335+x
0b1a: 2f 0f     bra   $0b2b
0b1c: f5 d5 02  mov   a,$02d5+x
0b1f: 60        clrc
0b20: 95 65 02  adc   a,$0265+x
0b23: 75 45 03  cmp   a,$0345+x
0b26: 30 03     bmi   $0b2b
0b28: f5 45 03  mov   a,$0345+x
0b2b: d5 65 02  mov   $0265+x,a
0b2e: 2f 15     bra   $0b45
0b30: f5 d5 02  mov   a,$02d5+x
0b33: c4 00     mov   $00,a
0b35: 60        clrc
0b36: 95 55 02  adc   a,$0255+x
0b39: d5 55 02  mov   $0255+x,a
0b3c: e4 00     mov   a,$00
0b3e: 60        clrc
0b3f: 95 65 02  adc   a,$0265+x
0b42: d5 65 02  mov   $0265+x,a
0b45: f5 e0 01  mov   a,$01e0+x
0b48: d0 14     bne   $0b5e
0b4a: 7d        mov   a,x
0b4b: 28 07     and   a,#$07
0b4d: 9f        xcn   a
0b4e: 08 00     or    a,#$00
0b50: c4 f2     mov   $f2,a
0b52: f5 55 02  mov   a,$0255+x
0b55: c4 f3     mov   $f3,a
0b57: ab f2     inc   $f2
0b59: f5 65 02  mov   a,$0265+x
0b5c: c4 f3     mov   $f3,a
0b5e: f5 e5 02  mov   a,$02e5+x
0b61: 9c        dec   a
0b62: d5 e5 02  mov   $02e5+x,a
0b65: d0 16     bne   $0b7d
0b67: f5 50 01  mov   a,$0150+x
0b6a: 28 08     and   a,#$08
0b6c: d0 0f     bne   $0b7d
0b6e: f5 f5 02  mov   a,$02f5+x
0b71: d5 e5 02  mov   $02e5+x,a
0b74: f5 d5 02  mov   a,$02d5+x
0b77: 48 ff     eor   a,#$ff
0b79: bc        inc   a
0b7a: d5 d5 02  mov   $02d5+x,a
0b7d: 6f        ret

0b7e: ce        pop   x
0b7f: e8 00     mov   a,#$00
0b81: d5 10 01  mov   $0110+x,a
0b84: f5 e0 01  mov   a,$01e0+x
0b87: d0 08     bne   $0b91
0b89: 8f 5c f2  mov   $f2,#$5c
0b8c: f5 e6 0f  mov   a,$0fe6+x
0b8f: c4 f3     mov   $f3,a
0b91: 7d        mov   a,x
0b92: 68 08     cmp   a,#$08
0b94: 90 31     bcc   $0bc7
0b96: 4d        push  x
0b97: 80        setc
0b98: a8 08     sbc   a,#$08
0b9a: 5d        mov   x,a
0b9b: e8 00     mov   a,#$00
0b9d: d5 e0 01  mov   $01e0+x,a
0ba0: 8f 3d f2  mov   $f2,#$3d
0ba3: f5 e6 0f  mov   a,$0fe6+x
0ba6: 48 ff     eor   a,#$ff
0ba8: 24 f3     and   a,$f3
0baa: c4 f3     mov   $f3,a
0bac: 8f 4d f2  mov   $f2,#$4d
0baf: f5 95 02  mov   a,$0295+x
0bb2: f0 09     beq   $0bbd
0bb4: f5 e6 0f  mov   a,$0fe6+x
0bb7: 04 f3     or    a,$f3
0bb9: c4 f3     mov   $f3,a
0bbb: 2f 09     bra   $0bc6
0bbd: f5 e6 0f  mov   a,$0fe6+x
0bc0: 48 ff     eor   a,#$ff
0bc2: 24 f3     and   a,$f3
0bc4: c4 f3     mov   $f3,a
0bc6: ce        pop   x
0bc7: e8 00     mov   a,#$00
0bc9: 6f        ret

0bca: ee        pop   y
0bcb: ae        pop   a
0bcc: ce        pop   x
0bcd: 2d        push  a
0bce: 6d        push  y
0bcf: 8d 01     mov   y,#$01
0bd1: db 37     mov   $37+x,y
0bd3: e8 00     mov   a,#$00
0bd5: d4 27     mov   $27+x,a
0bd7: 6f        ret

0bd8: 3f ca 0b  call  $0bca
0bdb: 4d        push  x
0bdc: f7 00     mov   a,($00)+y
0bde: 5d        mov   x,a
0bdf: f5 40 05  mov   a,$0540+x
0be2: ce        pop   x
0be3: d5 45 02  mov   $0245+x,a
0be6: 8f 02 00  mov   $00,#$02
0be9: 8f 00 01  mov   $01,#$00
0bec: f4 47     mov   a,$47+x
0bee: fb 57     mov   y,$57+x
0bf0: 7a 00     addw  ya,$00
0bf2: db 57     mov   $57+x,y
0bf4: d4 47     mov   $47+x,a
0bf6: e8 01     mov   a,#$01
0bf8: 6f        ret

0bf9: 3f ca 0b  call  $0bca
0bfc: e4 20     mov   a,$20
0bfe: f0 13     beq   $0c13
0c00: f7 00     mov   a,($00)+y
0c02: fc        inc   y
0c03: 60        clrc
0c04: 97 00     adc   a,($00)+y
0c06: 7c        ror   a
0c07: d5 55 02  mov   $0255+x,a
0c0a: d5 65 02  mov   $0265+x,a
0c0d: 8f 03 00  mov   $00,#$03
0c10: 5f e9 0b  jmp   $0be9
0c13: f7 00     mov   a,($00)+y
0c15: d5 55 02  mov   $0255+x,a
0c18: fc        inc   y
0c19: f7 00     mov   a,($00)+y
0c1b: d5 65 02  mov   $0265+x,a
0c1e: 8f 03 00  mov   $00,#$03
0c21: 5f e9 0b  jmp   $0be9

0c24: 3f ca 0b  call  $0bca
0c27: f7 00     mov   a,($00)+y
0c29: d4 47     mov   $47+x,a
0c2b: fc        inc   y
0c2c: f7 00     mov   a,($00)+y
0c2e: d4 57     mov   $57+x,a
0c30: e8 01     mov   a,#$01
0c32: 6f        ret

0c33: 3f ca 0b  call  $0bca
0c36: f7 00     mov   a,($00)+y
0c38: c4 04     mov   $04,a
0c3a: fc        inc   y
0c3b: f7 00     mov   a,($00)+y
0c3d: c4 02     mov   $02,a
0c3f: fc        inc   y
0c40: f7 00     mov   a,($00)+y
0c42: c4 03     mov   $03,a
0c44: fb d7     mov   y,$d7+x
0c46: e4 04     mov   a,$04
0c48: d6 55 04  mov   $0455+y,a
0c4b: f4 57     mov   a,$57+x
0c4d: d6 d5 03  mov   $03d5+y,a
0c50: f4 47     mov   a,$47+x
0c52: d6 55 03  mov   $0355+y,a
0c55: bb d7     inc   $d7+x
0c57: ba 02     movw  ya,$02
0c59: d4 47     mov   $47+x,a
0c5b: db 57     mov   $57+x,y
0c5d: e8 01     mov   a,#$01
0c5f: 6f        ret

0c60: 3f ca 0b  call  $0bca
0c63: 9b d7     dec   $d7+x
0c65: fb d7     mov   y,$d7+x
0c67: f6 d5 03  mov   a,$03d5+y
0c6a: d4 57     mov   $57+x,a
0c6c: f6 55 03  mov   a,$0355+y
0c6f: d4 47     mov   $47+x,a
0c71: f6 55 04  mov   a,$0455+y
0c74: 9c        dec   a
0c75: d6 55 04  mov   $0455+y,a
0c78: f0 1c     beq   $0c96
0c7a: f4 47     mov   a,$47+x
0c7c: fb 57     mov   y,$57+x
0c7e: da 00     movw  $00,ya
0c80: 8d 02     mov   y,#$02
0c82: f7 00     mov   a,($00)+y
0c84: c4 02     mov   $02,a
0c86: fc        inc   y
0c87: f7 00     mov   a,($00)+y
0c89: c4 03     mov   $03,a
0c8b: bb d7     inc   $d7+x
0c8d: ba 02     movw  ya,$02
0c8f: d4 47     mov   $47+x,a
0c91: db 57     mov   $57+x,y
0c93: e8 01     mov   a,#$01
0c95: 6f        ret

0c96: 8f 04 00  mov   $00,#$04
0c99: 5f e9 0b  jmp   $0be9

0c9c: 3f ca 0b  call  $0bca
0c9f: f7 00     mov   a,($00)+y
0ca1: d5 20 01  mov   $0120+x,a
0ca4: f5 d0 01  mov   a,$01d0+x
0ca7: f0 0c     beq   $0cb5
0ca9: f5 20 01  mov   a,$0120+x
0cac: d5 30 01  mov   $0130+x,a
0caf: fc        inc   y
0cb0: f7 00     mov   a,($00)+y
0cb2: d5 20 01  mov   $0120+x,a
0cb5: fc        inc   y
0cb6: cb 00     mov   $00,y
0cb8: 5f e9 0b  jmp   $0be9

0cbb: ce        pop   x
0cbc: e8 00     mov   a,#$00
0cbe: d5 20 01  mov   $0120+x,a
0cc1: d5 30 01  mov   $0130+x,a
0cc4: 5f 0b 0d  jmp   $0d0b

0cc7: ce        pop   x
0cc8: 8d 04     mov   y,#$04
0cca: f7 00     mov   a,($00)+y
0ccc: 2f 08     bra   $0cd6

0cce: ce        pop   x
0ccf: 8d 04     mov   y,#$04
0cd1: f7 00     mov   a,($00)+y
0cd3: 48 ff     eor   a,#$ff
0cd5: bc        inc   a
0cd6: d5 b0 01  mov   $01b0+x,a
0cd9: f5 50 01  mov   a,$0150+x
0cdc: 08 01     or    a,#$01
0cde: d5 50 01  mov   $0150+x,a
0ce1: 3f cf 0b  call  $0bcf
0ce4: f7 00     mov   a,($00)+y
0ce6: d5 60 01  mov   $0160+x,a
0ce9: fc        inc   y
0cea: f7 00     mov   a,($00)+y
0cec: d5 70 01  mov   $0170+x,a
0cef: fc        inc   y
0cf0: f7 00     mov   a,($00)+y
0cf2: d5 80 01  mov   $0180+x,a
0cf5: fc        inc   y
0cf6: fc        inc   y
0cf7: f7 00     mov   a,($00)+y
0cf9: d5 90 01  mov   $0190+x,a
0cfc: 8f 06 00  mov   $00,#$06
0cff: 5f e9 0b  jmp   $0be9

0d02: ce        pop   x
0d03: f5 50 01  mov   a,$0150+x
0d06: 28 fe     and   a,#$fe
0d08: d5 50 01  mov   $0150+x,a
0d0b: e8 01     mov   a,#$01
0d0d: c4 00     mov   $00,a
0d0f: d4 37     mov   $37+x,a
0d11: e8 00     mov   a,#$00
0d13: d4 27     mov   $27+x,a
0d15: 5f e9 0b  jmp   $0be9

0d18: ce        pop   x
0d19: 8d 01     mov   y,#$01
0d1b: f7 00     mov   a,($00)+y
0d1d: c4 22     mov   $22,a
0d1f: 3f cf 0b  call  $0bcf
0d22: 8f 02 00  mov   $00,#$02
0d25: 5f e9 0b  jmp   $0be9

0d28: ce        pop   x
0d29: 8d 01     mov   y,#$01
0d2b: f7 00     mov   a,($00)+y
0d2d: 60        clrc
0d2e: 84 22     adc   a,$22
0d30: c4 22     mov   $22,a
0d32: 5f 1f 0d  jmp   $0d1f

0d35: ce        pop   x
0d36: f5 50 01  mov   a,$0150+x
0d39: 28 fd     and   a,#$fd
0d3b: d5 50 01  mov   $0150+x,a
0d3e: 5f 0b 0d  jmp   $0d0b

0d41: ce        pop   x
0d42: e8 00     mov   a,#$00
0d44: 3f 5a 0d  call  $0d5a
0d47: 8f 04 00  mov   $00,#$04
0d4a: 5f e9 0b  jmp   $0be9

0d4d: ce        pop   x
0d4e: 8d 04     mov   y,#$04
0d50: f7 00     mov   a,($00)+y
0d52: 3f 5a 0d  call  $0d5a
0d55: 8f 05 00  mov   $00,#$05
0d58: 2f f0     bra   $0d4a

0d5a: d5 21 02  mov   $0221+x,a
0d5d: f5 50 01  mov   a,$0150+x
0d60: 08 02     or    a,#$02
0d62: d5 50 01  mov   $0150+x,a
0d65: 3f cf 0b  call  $0bcf
0d68: f7 00     mov   a,($00)+y
0d6a: d5 01 02  mov   $0201+x,a
0d6d: fc        inc   y
0d6e: f7 00     mov   a,($00)+y
0d70: d5 11 02  mov   $0211+x,a
0d73: fc        inc   y
0d74: f7 00     mov   a,($00)+y
0d76: d5 35 02  mov   $0235+x,a
0d79: 6f        ret

0d7a: 3f ca 0b  call  $0bca
0d7d: f7 00     mov   a,($00)+y
0d7f: d5 75 02  mov   $0275+x,a
0d82: fc        inc   y
0d83: f7 00     mov   a,($00)+y
0d85: d5 85 02  mov   $0285+x,a
0d88: 8f 03 00  mov   $00,#$03
0d8b: 5f e9 0b  jmp   $0be9

0d8e: 3f ca 0b  call  $0bca
0d91: 8f 0c f2  mov   $f2,#$0c
0d94: e4 20     mov   a,$20
0d96: f0 11     beq   $0da9
0d98: f7 00     mov   a,($00)+y
0d9a: c4 f3     mov   $f3,a
0d9c: fc        inc   y
0d9d: 60        clrc
0d9e: 97 00     adc   a,($00)+y
0da0: 7c        ror   a
0da1: c5 31 02  mov   $0231,a
0da4: 8f 1c f2  mov   $f2,#$1c
0da7: 2f 0d     bra   $0db6
0da9: f7 00     mov   a,($00)+y
0dab: c4 f3     mov   $f3,a
0dad: c5 31 02  mov   $0231,a
0db0: fc        inc   y
0db1: 8f 1c f2  mov   $f2,#$1c
0db4: f7 00     mov   a,($00)+y
0db6: c4 f3     mov   $f3,a
0db8: c5 32 02  mov   $0232,a
0dbb: 8f 03 00  mov   $00,#$03
0dbe: 5f e9 0b  jmp   $0be9

0dc1: ce        pop   x
0dc2: 8d 01     mov   y,#$01
0dc4: f7 00     mov   a,($00)+y
0dc6: d4 0f     mov   $0f+x,a
0dc8: 5f d2 0d  jmp   $0dd2

0dcb: ce        pop   x
0dcc: 8d 01     mov   y,#$01
0dce: f7 00     mov   a,($00)+y
0dd0: d4 17     mov   $17+x,a
0dd2: 3f cf 0b  call  $0bcf
0dd5: 5f 89 0e  jmp   $0e89

0dd8: 3f ca 0b  call  $0bca
0ddb: f7 00     mov   a,($00)+y
0ddd: d4 67     mov   $67+x,a
0ddf: 5f 89 0e  jmp   $0e89

0de2: 3f ca 0b  call  $0bca
0de5: d4 27     mov   $27+x,a
0de7: f7 00     mov   a,($00)+y
0de9: d5 40 01  mov   $0140+x,a
0dec: 5f 89 0e  jmp   $0e89

0def: 3f ca 0b  call  $0bca
0df2: f7 00     mov   a,($00)+y
0df4: 60        clrc
0df5: 95 40 01  adc   a,$0140+x
0df8: d5 40 01  mov   $0140+x,a
0dfb: 5f 89 0e  jmp   $0e89

0dfe: ce        pop   x
0dff: 8f 0d f2  mov   $f2,#$0d
0e02: 8d 01     mov   y,#$01
0e04: f7 00     mov   a,($00)+y
0e06: c4 f3     mov   $f3,a
0e08: fc        inc   y
0e09: 8f 2c f2  mov   $f2,#$2c
0e0c: f7 00     mov   a,($00)+y
0e0e: c5 33 02  mov   $0233,a
0e11: c4 f3     mov   $f3,a
0e13: 8f 3c f2  mov   $f2,#$3c
0e16: fc        inc   y
0e17: f7 00     mov   a,($00)+y
0e19: c5 34 02  mov   $0234,a
0e1c: c4 f3     mov   $f3,a
0e1e: e8 00     mov   a,#$00
0e20: c4 0e     mov   $0e,a
0e22: 8f 6c f2  mov   $f2,#$6c
0e25: c4 f3     mov   $f3,a
0e27: 8f 04 00  mov   $00,#$04
0e2a: 5f e9 0b  jmp   $0be9

0e2d: 3f ca 0b  call  $0bca
0e30: 8f 4d f2  mov   $f2,#$4d
0e33: f5 e6 0f  mov   a,$0fe6+x
0e36: 04 f3     or    a,$f3
0e38: c4 f3     mov   $f3,a
0e3a: e8 01     mov   a,#$01
0e3c: d5 95 02  mov   $0295+x,a
0e3f: c4 00     mov   $00,a
0e41: 5f e9 0b  jmp   $0be9

0e44: ce        pop   x
0e45: 8f 4d f2  mov   $f2,#$4d
0e48: f5 e6 0f  mov   a,$0fe6+x
0e4b: 48 ff     eor   a,#$ff
0e4d: 24 f3     and   a,$f3
0e4f: c4 f3     mov   $f3,a
0e51: e8 00     mov   a,#$00
0e53: d5 95 02  mov   $0295+x,a
0e56: d4 27     mov   $27+x,a
0e58: e8 01     mov   a,#$01
0e5a: d4 37     mov   $37+x,a
0e5c: c4 00     mov   $00,a
0e5e: 5f e9 0b  jmp   $0be9

0e61: 3f ca 0b  call  $0bca
0e64: 8f 0f f2  mov   $f2,#$0f
0e67: f7 00     mov   a,($00)+y
0e69: c4 f3     mov   $f3,a
0e6b: fc        inc   y
0e6c: 60        clrc
0e6d: 98 10 f2  adc   $f2,#$10
0e70: 78 8f f2  cmp   $f2,#$8f
0e73: d0 f2     bne   $0e67
0e75: 8f 09 00  mov   $00,#$09
0e78: 5f e9 0b  jmp   $0be9

0e7b: 3f ca 0b  call  $0bca
0e7e: f7 00     mov   a,($00)+y
0e80: c4 0d     mov   $0d,a
0e82: 04 0e     or    a,$0e
0e84: 8f 6c f2  mov   $f2,#$6c
0e87: c4 f3     mov   $f3,a
0e89: 8f 02 00  mov   $00,#$02
0e8c: 5f e9 0b  jmp   $0be9

0e8f: ce        pop   x
0e90: 8f 3d f2  mov   $f2,#$3d
0e93: f5 e6 0f  mov   a,$0fe6+x
0e96: 04 f3     or    a,$f3
0e98: c4 f3     mov   $f3,a
0e9a: 3f cf 0b  call  $0bcf
0e9d: 8f 01 00  mov   $00,#$01
0ea0: 5f e9 0b  jmp   $0be9

0ea3: ce        pop   x
0ea4: 8f 3d f2  mov   $f2,#$3d
0ea7: f5 e6 0f  mov   a,$0fe6+x
0eaa: 48 ff     eor   a,#$ff
0eac: 24 f3     and   a,$f3
0eae: c4 f3     mov   $f3,a
0eb0: 5f 9a 0e  jmp   $0e9a

0eb3: ce        pop   x
0eb4: 8d 04     mov   y,#$04
0eb6: f7 00     mov   a,($00)+y
0eb8: 48 ff     eor   a,#$ff
0eba: bc        inc   a
0ebb: 2f 05     bra   $0ec2

0ebd: ce        pop   x
0ebe: 8d 04     mov   y,#$04
0ec0: f7 00     mov   a,($00)+y
0ec2: d5 b0 01  mov   $01b0+x,a
0ec5: f5 50 01  mov   a,$0150+x
0ec8: 08 01     or    a,#$01
0eca: d5 50 01  mov   $0150+x,a
0ecd: 3f cf 0b  call  $0bcf
0ed0: f7 00     mov   a,($00)+y
0ed2: d5 60 01  mov   $0160+x,a
0ed5: fc        inc   y
0ed6: f7 00     mov   a,($00)+y
0ed8: d5 70 01  mov   $0170+x,a
0edb: fc        inc   y
0edc: f7 00     mov   a,($00)+y
0ede: d5 90 01  mov   $0190+x,a
0ee1: 1c        asl   a
0ee2: d5 80 01  mov   $0180+x,a
0ee5: 8f 05 00  mov   $00,#$05
0ee8: 5f e9 0b  jmp   $0be9

0eeb: 3f ca 0b  call  $0bca
0eee: 4d        push  x
0eef: f7 00     mov   a,($00)+y
0ef1: 5d        mov   x,a
0ef2: f5 40 05  mov   a,$0540+x
0ef5: ce        pop   x
0ef6: d5 45 02  mov   $0245+x,a
0ef9: fc        inc   y
0efa: e4 20     mov   a,$20
0efc: f0 13     beq   $0f11
0efe: f7 00     mov   a,($00)+y
0f00: fc        inc   y
0f01: 60        clrc
0f02: 97 00     adc   a,($00)+y
0f04: 7c        ror   a
0f05: d5 55 02  mov   $0255+x,a
0f08: d5 65 02  mov   $0265+x,a
0f0b: 8f 04 00  mov   $00,#$04
0f0e: 5f e9 0b  jmp   $0be9
0f11: f7 00     mov   a,($00)+y
0f13: d5 55 02  mov   $0255+x,a
0f16: fc        inc   y
0f17: f7 00     mov   a,($00)+y
0f19: d5 65 02  mov   $0265+x,a
0f1c: 8f 04 00  mov   $00,#$04
0f1f: 5f e9 0b  jmp   $0be9

0f22: 3f ca 0b  call  $0bca
0f25: f7 00     mov   a,($00)+y
0f27: c4 0c     mov   $0c,a
0f29: 5f 89 0e  jmp   $0e89

0f2c: 3f ca 0b  call  $0bca
0f2f: f7 00     mov   a,($00)+y
0f31: c4 e7     mov   $e7,a
0f33: 5f 89 0e  jmp   $0e89

0f36: 3f ca 0b  call  $0bca
0f39: e8 01     mov   a,#$01
0f3b: d5 d0 01  mov   $01d0+x,a
0f3e: c4 00     mov   $00,a
0f40: 5f e9 0b  jmp   $0be9

0f43: 3f ca 0b  call  $0bca
0f46: d5 d0 01  mov   $01d0+x,a
0f49: bc        inc   a
0f4a: c4 00     mov   $00,a
0f4c: 5f e9 0b  jmp   $0be9

0f4f: 3f ca 0b  call  $0bca
0f52: e5 00 02  mov   a,$0200
0f55: 1c        asl   a
0f56: bc        inc   a
0f57: fd        mov   y,a
0f58: f7 00     mov   a,($00)+y
0f5a: d4 47     mov   $47+x,a
0f5c: fc        inc   y
0f5d: f7 00     mov   a,($00)+y
0f5f: d4 57     mov   $57+x,a
0f61: e8 01     mov   a,#$01
0f63: 6f        ret

0f64: 3f ca 0b  call  $0bca
0f67: f7 00     mov   a,($00)+y
0f69: c5 00 02  mov   $0200,a
0f6c: 5f 89 0e  jmp   $0e89

0f6f: ce        pop   x
0f70: f5 50 01  mov   a,$0150+x
0f73: 08 08     or    a,#$08
0f75: 28 fb     and   a,#$fb
0f77: d5 50 01  mov   $0150+x,a
0f7a: 8d 05     mov   y,#$05
0f7c: f7 00     mov   a,($00)+y
0f7e: d5 35 03  mov   $0335+x,a
0f81: fc        inc   y
0f82: f7 00     mov   a,($00)+y
0f84: d5 45 03  mov   $0345+x,a
0f87: 5f a7 0f  jmp   $0fa7

0f8a: 8f 07 00  mov   $00,#$07
0f8d: 5f e9 0b  jmp   $0be9

0f90: ce        pop   x
0f91: f5 50 01  mov   a,$0150+x
0f94: 28 f7     and   a,#$f7
0f96: d5 50 01  mov   $0150+x,a
0f99: 5f 0b 0d  jmp   $0d0b

0f9c: ce        pop   x
0f9d: f5 50 01  mov   a,$0150+x
0fa0: 08 04     or    a,#$04
0fa2: 28 f7     and   a,#$f7
0fa4: d5 50 01  mov   $0150+x,a
0fa7: 3f cf 0b  call  $0bcf
0faa: f7 00     mov   a,($00)+y
0fac: d5 f5 02  mov   $02f5+x,a
0faf: fc        inc   y
0fb0: f7 00     mov   a,($00)+y
0fb2: d5 c5 02  mov   $02c5+x,a
0fb5: fc        inc   y
0fb6: f7 00     mov   a,($00)+y
0fb8: d5 d5 02  mov   $02d5+x,a
0fbb: fc        inc   y
0fbc: f7 00     mov   a,($00)+y
0fbe: d5 05 03  mov   $0305+x,a
0fc1: f5 55 02  mov   a,$0255+x
0fc4: d5 15 03  mov   $0315+x,a
0fc7: f5 65 02  mov   a,$0265+x
0fca: d5 25 03  mov   $0325+x,a
0fcd: f5 50 01  mov   a,$0150+x
0fd0: 28 08     and   a,#$08
0fd2: d0 b6     bne   $0f8a
0fd4: 8f 05 00  mov   $00,#$05
0fd7: 5f e9 0b  jmp   $0be9

0fda: ce        pop   x
0fdb: f5 50 01  mov   a,$0150+x
0fde: 28 fb     and   a,#$fb
0fe0: d5 50 01  mov   $0150+x,a
0fe3: 5f 0b 0d  jmp   $0d0b

0fe6: db $01, $02, $04, $08, $10, $20, $40, $80
0fee: db $01, $02, $04, $08, $10, $20, $40, $80

0ff6: dw $0b7e
0ff8: dw $0bd8
0ffa: dw $0bf9
0ffc: dw $0c24
0ffe: dw $0c33
1000: dw $0c60
1002: dw $0c9c
1004: dw $0cbb
1006: dw $0cc7
1008: dw $0cce
100a: dw $0d02
100c: dw $0d18
100e: dw $0d28
1010: dw $0d41
1012: dw $0d35
1014: dw $0d4d
1016: dw $0d7a
1018: dw $0d8e
101a: dw $0dd8
101c: dw $0de2
101e: dw $0def
1020: dw $0dfe
1022: dw $0e2d
1024: dw $0e44
1026: dw $0e61
1028: dw $0e7b
102a: dw $0e8f
102c: dw $0ea3
102e: dw $0dc1
1030: dw $0dcb
1032: dw $0000
1034: dw $0000
1036: dw $0000
1038: dw $0000
103a: dw $0000
103c: dw $0000
103e: dw $0f90
1040: dw $0f6f
1042: dw $0eb3
1044: dw $0ebd
1046: dw $0eeb
1048: dw $0f22
104a: dw $0f2c
104c: dw $0f36
104e: dw $0f43
1050: dw $0f4f
1052: dw $0f64
1054: dw $0f9c
1056: dw $0fda

1058: e8 00     mov   a,#$00
105a: 8f 6c f2  mov   $f2,#$6c
105d: 8f e0 f3  mov   $f3,#$e0
1060: e8 00     mov   a,#$00
1062: 8f 2c f2  mov   $f2,#$2c
1065: c5 33 02  mov   $0233,a
1068: c4 f3     mov   $f3,a
106a: 8f 3c f2  mov   $f2,#$3c
106d: c5 34 02  mov   $0234,a
1070: c4 f3     mov   $f3,a
1072: 8f 4c f2  mov   $f2,#$4c
1075: c4 f3     mov   $f3,a
1077: 8f 5c f2  mov   $f2,#$5c
107a: 8f ff f3  mov   $f3,#$ff
107d: 8f 2d f2  mov   $f2,#$2d
1080: c4 f3     mov   $f3,a
1082: 8f 3d f2  mov   $f2,#$3d
1085: c4 f3     mov   $f3,a
1087: 8f 4d f2  mov   $f2,#$4d
108a: c4 f3     mov   $f3,a
108c: 8f 7d f2  mov   $f2,#$7d
108f: 8f 04 f3  mov   $f3,#$04
1092: 8f 6d f2  mov   $f2,#$6d
1095: 8f df f3  mov   $f3,#$df
1098: 8f 0d f2  mov   $f2,#$0d
109b: c4 f3     mov   $f3,a
109d: 8d df     mov   y,#$df
109f: da 00     movw  $00,ya
10a1: e8 00     mov   a,#$00
10a3: d7 00     mov   ($00)+y,a
10a5: fc        inc   y
10a6: d0 fb     bne   $10a3
10a8: ab 01     inc   $01
10aa: e4 01     mov   a,$01
10ac: 68 ff     cmp   a,#$ff
10ae: d0 f1     bne   $10a1
10b0: e8 7f     mov   a,#$7f
10b2: c5 31 02  mov   $0231,a
10b5: c5 32 02  mov   $0232,a
10b8: 8f 0c f2  mov   $f2,#$0c
10bb: c4 f3     mov   $f3,a
10bd: 8f 1c f2  mov   $f2,#$1c
10c0: c4 f3     mov   $f3,a
10c2: 8f 5d f2  mov   $f2,#$5d
10c5: 8f 2a f3  mov   $f3,#$2a
10c8: cd 00     mov   x,#$00
10ca: 8d 08     mov   y,#$08
10cc: 8f 00 f2  mov   $f2,#$00
10cf: e8 7f     mov   a,#$7f
10d1: c4 f3     mov   $f3,a
10d3: ab f2     inc   $f2
10d5: c4 f3     mov   $f3,a
10d7: 60        clrc
10d8: 98 04 f2  adc   $f2,#$04
10db: e8 00     mov   a,#$00
10dd: c4 f3     mov   $f3,a
10df: ab f2     inc   $f2
10e1: c4 f3     mov   $f3,a
10e3: ab f2     inc   $f2
10e5: 8f ff f3  mov   $f3,#$ff
10e8: 60        clrc
10e9: 98 09 f2  adc   $f2,#$09
10ec: dc        dec   y
10ed: d0 e0     bne   $10cf
10ef: e8 3c     mov   a,#$3c
10f1: c4 e7     mov   $e7,a
10f3: e8 20     mov   a,#$20
10f5: c4 0e     mov   $0e,a
10f7: 8f 08 00  mov   $00,#$08
10fa: cd 00     mov   x,#$00
10fc: 8d 00     mov   y,#$00
10fe: cb 0a     mov   $0a,y
1100: cb 0c     mov   $0c,y
1102: cb 0d     mov   $0d,y
1104: cb 01     mov   $01,y
1106: e8 01     mov   a,#$01
1108: d4 37     mov   $37+x,a
110a: d5 10 01  mov   $0110+x,a
110d: f7 e8     mov   a,($e8)+y
110f: d4 47     mov   $47+x,a
1111: fc        inc   y
1112: f7 e8     mov   a,($e8)+y
1114: d4 57     mov   $57+x,a
1116: e4 01     mov   a,$01
1118: d4 d7     mov   $d7+x,a
111a: e8 00     mov   a,#$00
111c: d5 d0 01  mov   $01d0+x,a
111f: d4 27     mov   $27+x,a
1121: d5 20 01  mov   $0120+x,a
1124: d5 30 01  mov   $0130+x,a
1127: d5 50 01  mov   $0150+x,a
112a: d5 40 01  mov   $0140+x,a
112d: d5 e0 01  mov   $01e0+x,a
1130: 3d        inc   x
1131: fc        inc   y
1132: 60        clrc
1133: 98 08 01  adc   $01,#$08
1136: 6e 00 cd  dbnz  $00,$1106
1139: f7 e8     mov   a,($e8)+y
113b: c4 22     mov   $22,a
113d: fc        inc   y
113e: f7 e8     mov   a,($e8)+y
1140: c4 25     mov   $25,a
1142: e8 00     mov   a,#$00
1144: c4 21     mov   $21,a
1146: c4 24     mov   $24,a
1148: 8f 6c f2  mov   $f2,#$6c
114b: 8f 20 f3  mov   $f3,#$20
114e: 6f        ret

114f: 1c        asl   a
1150: 2d        push  a
1151: e8 01     mov   a,#$01
1153: d5 e0 01  mov   $01e0+x,a
1156: 8f 3d f2  mov   $f2,#$3d
1159: f5 e6 0f  mov   a,$0fe6+x
115c: 48 ff     eor   a,#$ff
115e: 24 f3     and   a,$f3
1160: c4 f3     mov   $f3,a
1162: 7d        mov   a,x
1163: 60        clrc
1164: 88 08     adc   a,#$08
1166: 5d        mov   x,a
1167: 1c        asl   a
1168: 1c        asl   a
1169: 1c        asl   a
116a: d4 d7     mov   $d7+x,a
116c: e8 01     mov   a,#$01
116e: d5 10 01  mov   $0110+x,a
1171: e8 00     mov   a,#$00
1173: d5 20 01  mov   $0120+x,a
1176: d5 30 01  mov   $0130+x,a
1179: d4 27     mov   $27+x,a
117b: d5 d0 01  mov   $01d0+x,a
117e: d5 e0 01  mov   $01e0+x,a
1181: d5 50 01  mov   $0150+x,a
1184: d5 40 01  mov   $0140+x,a
1187: d5 75 02  mov   $0275+x,a
118a: d5 85 02  mov   $0285+x,a
118d: d5 95 02  mov   $0295+x,a
1190: e8 7f     mov   a,#$7f
1192: d5 55 02  mov   $0255+x,a
1195: d5 65 02  mov   $0265+x,a
1198: d5 15 03  mov   $0315+x,a
119b: d5 25 03  mov   $0325+x,a
119e: ee        pop   y
119f: f6 a0 1c  mov   a,$1ca0+y
11a2: d4 47     mov   $47+x,a
11a4: fc        inc   y
11a5: f6 a0 1c  mov   a,$1ca0+y
11a8: d4 57     mov   $57+x,a
11aa: e8 02     mov   a,#$02
11ac: d4 37     mov   $37+x,a
11ae: 8f 4d f2  mov   $f2,#$4d
11b1: f5 e6 0f  mov   a,$0fe6+x
11b4: 48 ff     eor   a,#$ff
11b6: 24 f3     and   a,$f3
11b8: c4 f3     mov   $f3,a
11ba: 6f        ret

11bb: dw $0000
11bd: dw $0040
11bf: dw $0044
11c1: dw $0048
11c3: dw $004c
11c5: dw $0051
11c7: dw $0055
11c9: dw $005b
11cb: dw $0060
11cd: dw $0066
11cf: dw $006c
11d1: dw $0072
11d3: dw $0079
11d5: dw $0080
11d7: dw $0088
11d9: dw $0090
11db: dw $0098
11dd: dw $00a1
11df: dw $00ab
11e1: dw $00b5
11e3: dw $00c0
11e5: dw $00cb
11e7: dw $00d7
11e9: dw $00e4
11eb: dw $00f2
11ed: dw $0100
11ef: dw $010f
11f1: dw $011f
11f3: dw $0130
11f5: dw $0143
11f7: dw $0156
11f9: dw $016a
11fb: dw $0180
11fd: dw $0196
11ff: dw $01af
1201: dw $01c8
1203: dw $01e3
1205: dw $0200
1207: dw $021e
1209: dw $023f
120b: dw $0261
120d: dw $0285
120f: dw $02ab
1211: dw $02d4
1213: dw $02ff
1215: dw $032d
1217: dw $035d
1219: dw $0390
121b: dw $03c7
121d: dw $0400
121f: dw $043d
1221: dw $047d
1223: dw $04c2
1225: dw $050a
1227: dw $0557
1229: dw $05a8
122b: dw $05fe
122d: dw $065a
122f: dw $06ba
1231: dw $0721
1233: dw $078d
1235: dw $0800
1237: dw $087a
1239: dw $08fb
123b: dw $0984
123d: dw $0a14
123f: dw $0aae
1241: dw $0b50
1243: dw $0bfd
1245: dw $0cb3
1247: dw $0d74
1249: dw $0e41
124b: dw $0f1a
124d: dw $1000
124f: dw $10f4
1251: dw $11f6
1253: dw $1307
1255: dw $1429
1257: dw $155c
1259: dw $16a1
125b: dw $17f9
125d: dw $1966
125f: dw $1ae9
1261: dw $1c82
1263: dw $1e34
1265: dw $2000
1267: dw $21e7
1269: dw $23eb
126b: dw $260e
126d: dw $2851
126f: dw $2ab7
1271: dw $2d41
1273: dw $2ff2
1275: dw $32cc
1277: dw $35d1
1279: dw $3904
127b: dw $3c68
127d: dw $3fff
