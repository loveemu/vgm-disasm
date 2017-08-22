04d8: 20        clrp
04d9: cd ff     mov   x,#$ff
04db: bd        mov   sp,x
04dc: 3d        inc   x
04dd: d8 f4     mov   $f4,x
04df: 3d        inc   x
04e0: d8 e8     mov   $e8,x
04e2: e8 00     mov   a,#$00
04e4: c4 00     mov   $00,a
04e6: 8f d0 01  mov   $01,#$d0
04e9: fd        mov   y,a
04ea: d7 00     mov   ($00)+y,a
04ec: fc        inc   y
04ed: d0 fb     bne   $04ea
04ef: ab 01     inc   $01
04f1: d0 f6     bne   $04e9
04f3: cd ff     mov   x,#$ff
04f5: 8f 6c f2  mov   $f2,#$6c
04f8: d8 f3     mov   $f3,x
04fa: 8f 7d f2  mov   $f2,#$7d
04fd: 8f 00 f3  mov   $f3,#$00
0500: 8f 6d f2  mov   $f2,#$6d
0503: d8 f3     mov   $f3,x
0505: d8 eb     mov   $eb,x
0507: f8 e8     mov   x,$e8
0509: 3e f4     cmp   x,$f4
050b: d0 fc     bne   $0509
050d: ba f5     movw  ya,$f5
050f: d8 f4     mov   $f4,x
0511: 3d        inc   x
0512: c5 38 05  mov   $0538,a
0515: c5 41 05  mov   $0541,a
0518: cc 39 05  mov   $0539,y
051b: cc 42 05  mov   $0542,y
051e: 3e f4     cmp   x,$f4
0520: d0 fc     bne   $051e
0522: ba f5     movw  ya,$f5
0524: d8 f4     mov   $f4,x
0526: 3d        inc   x
0527: c4 e9     mov   $e9,a
0529: cb ea     mov   $ea,y
052b: 1a e9     decw  $e9
052d: 30 26     bmi   $0555
052f: 8d 00     mov   y,#$00
0531: 3e f4     cmp   x,$f4
0533: d0 fc     bne   $0531
0535: e4 f5     mov   a,$f5
0537: d6 72 06  mov   $0672+y,a
053a: e4 f6     mov   a,$f6
053c: d8 f4     mov   $f4,x
053e: 3d        inc   x
053f: fc        inc   y
0540: d6 72 06  mov   $0672+y,a
0543: fc        inc   y
0544: f0 07     beq   $054d
0546: 1a e9     decw  $e9
0548: 10 e7     bpl   $0531
054a: 5f 09 05  jmp   $0509

054d: ac 39 05  inc   $0539
0550: ac 42 05  inc   $0542
0553: 2f f1     bra   $0546
0555: d8 e8     mov   $e8,x
0557: cd 00     mov   x,#$00
0559: 1f 38 05  jmp   ($0538+x)

; 055c: ?
; 0560: SRCN table

0660: e5 5c 05  mov   a,$055c
0663: 1c        asl   a
0664: fd        mov   y,a
0665: f6 42 10  mov   a,$1042+y
0668: c4 e6     mov   $e6,a
066a: f6 43 10  mov   a,$1043+y
066d: c4 e7     mov   $e7,a
066f: 5f 7d 06  jmp   $067d

0672: 8f 10 e7  mov   $e7,#$10
0675: 8f 30 e6  mov   $e6,#$30
0678: 3f a7 0d  call  $0da7
067b: 2f 03     bra   $0680
067d: 3f a2 0e  call  $0ea2
0680: 8f 00 f1  mov   $f1,#$00
0683: e4 0c     mov   a,$0c
0685: 68 7f     cmp   a,#$7f
0687: f0 06     beq   $068f
0689: bc        inc   a
068a: 3f 9c 0d  call  $0d9c
068d: 2f f6     bra   $0685
068f: c4 0c     mov   $0c,a
0691: e4 e8     mov   a,$e8
0693: 64 f4     cmp   a,$f4
0695: d0 42     bne   $06d9
0697: f8 f6     mov   x,$f6
0699: c9 5c 05  mov   $055c,x
069c: f8 f5     mov   x,$f5
069e: c4 f4     mov   $f4,a
06a0: bc        inc   a
06a1: c4 e8     mov   $e8,a
06a3: 7d        mov   a,x
06a4: 68 80     cmp   a,#$80
06a6: 30 17     bmi   $06bf
06a8: 28 07     and   a,#$07
06aa: 1c        asl   a
06ab: 5d        mov   x,a
06ac: 1f af 06  jmp   ($06af+x)

06af: dw $0000
06b1: dw $0000
06b3: dw $0000
06b5: dw $06c7
06b7: dw $0000
06b9: dw $0000
06bb: dw $06d3
06bd: dw $0730

06bf: e9 5c 05  mov   x,$055c
06c2: 3f ef 0e  call  $0eef
06c5: 2f 1c     bra   $06f3
06c7: e8 7f     mov   a,#$7f
06c9: c4 0c     mov   $0c,a
06cb: 3f 9c 0d  call  $0d9c
06ce: 9c        dec   a
06cf: 10 f8     bpl   $06c9
06d1: 2f 8d     bra   $0660
06d3: 8f 01 1e  mov   $1e,#$01
06d6: 8f 00 f1  mov   $f1,#$00
06d9: e4 1e     mov   a,$1e
06db: f0 a6     beq   $0683
06dd: fa e5 fa  mov   ($fa),($e5)
06e0: 8f 01 f1  mov   $f1,#$01
06e3: e4 fd     mov   a,$fd
06e5: f0 fc     beq   $06e3
06e7: 8f 01 f1  mov   $f1,#$01
06ea: 8f 00 21  mov   $21,#$00
06ed: 60        clrc
06ee: 89 20 1f  adc   ($1f),($20)
06f1: 6b 21     ror   $21
06f3: 8f 00 24  mov   $24,#$00
06f6: 60        clrc
06f7: 89 23 22  adc   ($22),($23)
06fa: 6b 24     ror   $24
06fc: cd 00     mov   x,#$00
06fe: e4 21     mov   a,$21
0700: d0 05     bne   $0707
0702: 3f 24 09  call  $0924
0705: 2f 05     bra   $070c
0707: 3f 79 07  call  $0779
070a: d0 fb     bne   $0707
070c: f5 e0 01  mov   a,$01e0+x
070f: f0 14     beq   $0725
0711: 4d        push  x
0712: 7d        mov   a,x
0713: 08 08     or    a,#$08
0715: 5d        mov   x,a
0716: e4 24     mov   a,$24
0718: d0 05     bne   $071f
071a: 3f 24 09  call  $0924
071d: 2f 05     bra   $0724
071f: 3f 79 07  call  $0779
0722: d0 fb     bne   $071f
0724: ce        pop   x
0725: 3d        inc   x
0726: c8 08     cmp   x,#$08
0728: f0 03     beq   $072d
072a: 5f fe 06  jmp   $06fe

072d: 5f 83 06  jmp   $0683

0730: e5 5c 05  mov   a,$055c
0733: f0 03     beq   $0738
0735: 5f 07 05  jmp   $0507

0738: 8f 5c f2  mov   $f2,#$5c
073b: 8f ff f3  mov   $f3,#$ff
073e: 8f 00 f1  mov   $f1,#$00
0741: 8f c8 fb  mov   $fb,#$c8
0744: 8f 02 f1  mov   $f1,#$02
0747: e4 fe     mov   a,$fe
0749: f0 fc     beq   $0747
074b: cd 00     mov   x,#$00
074d: 8f 2c f2  mov   $f2,#$2c
0750: d8 f3     mov   $f3,x
0752: 8f 3c f2  mov   $f2,#$3c
0755: d8 f3     mov   $f3,x
0757: 8f 6c f2  mov   $f2,#$6c
075a: 8f a0 f3  mov   $f3,#$a0
075d: 8f 4d f2  mov   $f2,#$4d
0760: d8 f3     mov   $f3,x
0762: 8f d7 01  mov   $01,#$d7
0765: e8 00     mov   a,#$00
0767: c4 00     mov   $00,a
0769: fd        mov   y,a
076a: d7 00     mov   ($00)+y,a
076c: fc        inc   y
076d: d0 fb     bne   $076a
076f: ab 01     inc   $01
0771: d0 f6     bne   $0769
0773: 3f a7 0d  call  $0da7
0776: 5f f3 04  jmp   $04f3

0779: f5 10 01  mov   a,$0110+x
077c: d0 01     bne   $077f
077e: 6f        ret

077f: 9b 35     dec   $35+x
0781: f4 35     mov   a,$35+x
0783: 68 01     cmp   a,#$01
0785: f0 16     beq   $079d
0787: 68 ff     cmp   a,#$ff
0789: d0 08     bne   $0793
078b: f4 25     mov   a,$25+x
078d: f0 25     beq   $07b4
078f: 9b 25     dec   $25+x
0791: 2f 1b     bra   $07ae
0793: 68 00     cmp   a,#$00
0795: d0 17     bne   $07ae
0797: f4 25     mov   a,$25+x
0799: f0 19     beq   $07b4
079b: 2f 11     bra   $07ae
079d: f4 25     mov   a,$25+x
079f: d0 0d     bne   $07ae
07a1: f5 e0 01  mov   a,$01e0+x
07a4: d0 08     bne   $07ae
07a6: f5 2a 0d  mov   a,$0d2a+x
07a9: 8f 5c f2  mov   $f2,#$5c
07ac: c4 f3     mov   $f3,a
07ae: 3f 24 09  call  $0924
07b1: e8 00     mov   a,#$00
07b3: 6f        ret

07b4: f4 45     mov   a,$45+x
07b6: fb 55     mov   y,$55+x
07b8: da 00     movw  $00,ya
07ba: 8d 00     mov   y,#$00
07bc: f7 00     mov   a,($00)+y
07be: 30 06     bmi   $07c6
; dispatch vcmd (00-7f)
07c0: 4d        push  x
07c1: 1c        asl   a
07c2: 5d        mov   x,a
07c3: 1f 3a 0d  jmp   ($0d3a+x)

07c6: 3f cf 07  call  $07cf
07c9: 3f 24 09  call  $0924
07cc: e8 00     mov   a,#$00
07ce: 6f        ret

07cf: 68 80     cmp   a,#$80
07d1: d0 20     bne   $07f3
; vcmd 80 - rest
07d3: f5 e0 01  mov   a,$01e0+x
07d6: d0 18     bne   $07f0
07d8: f5 2a 0d  mov   a,$0d2a+x
07db: 8f 5c f2  mov   $f2,#$5c
07de: c4 f3     mov   $f3,a
07e0: 7d        mov   a,x
07e1: 28 07     and   a,#$07
07e3: 9f        xcn   a
07e4: 08 02     or    a,#$02
07e6: c4 f2     mov   $f2,a
07e8: e8 00     mov   a,#$00
07ea: c4 f3     mov   $f3,a
07ec: ab f2     inc   $f2
07ee: c4 f3     mov   $f3,a
07f0: 5f eb 08  jmp   $08eb

; vcmd 81-ff - note
07f3: 68 e0     cmp   a,#$e0
07f5: 30 0a     bmi   $0801             ; 81-df - normal note
07f7: 68 e1     cmp   a,#$e1
07f9: f0 04     beq   $07ff
07fb: f4 0e     mov   a,$0e+x           ; e0,e2-ff - note by vcmd 1c (not available)
07fd: 2f 02     bra   $0801
07ff: f4 16     mov   a,$16+x           ; e1 - note by vcmd 1d (not available)
0801: 60        clrc
0802: 88 24     adc   a,#$24
0804: 95 40 01  adc   a,$0140+x
0807: 1c        asl   a
0808: 4d        push  x
0809: fb 65     mov   y,$65+x
080b: f0 3a     beq   $0847
080d: 5d        mov   x,a
080e: cb 04     mov   $04,y
0810: dd        mov   a,y
0811: 10 03     bpl   $0816
0813: 48 ff     eor   a,#$ff
0815: bc        inc   a
0816: fd        mov   y,a
0817: 6d        push  y
0818: f5 60 0f  mov   a,$0f60+x
081b: cf        mul   ya
081c: cb 02     mov   $02,y
081e: 8f 00 03  mov   $03,#$00
0821: ee        pop   y
0822: f5 61 0f  mov   a,$0f61+x
0825: cf        mul   ya
0826: 7a 02     addw  ya,$02
0828: cb 03     mov   $03,y
082a: 4b 03     lsr   $03
082c: 7c        ror   a
082d: 4b 03     lsr   $03
082f: 7c        ror   a
0830: c4 02     mov   $02,a
0832: f5 61 0f  mov   a,$0f61+x
0835: fd        mov   y,a
0836: f5 60 0f  mov   a,$0f60+x
0839: f8 04     mov   x,$04
083b: 30 04     bmi   $0841
083d: 7a 02     addw  ya,$02
083f: 2f 02     bra   $0843
0841: 9a 02     subw  ya,$02
0843: da 02     movw  $02,ya
0845: 2f 0b     bra   $0852
0847: 5d        mov   x,a
0848: f5 60 0f  mov   a,$0f60+x
084b: c4 02     mov   $02,a
084d: f5 61 0f  mov   a,$0f61+x
0850: c4 03     mov   $03,a
0852: ae        pop   a
0853: 5d        mov   x,a
0854: 28 07     and   a,#$07
0856: 9f        xcn   a
0857: c4 f2     mov   $f2,a
0859: f5 e0 01  mov   a,$01e0+x
085c: f0 03     beq   $0861
085e: 5f eb 08  jmp   $08eb

0861: f5 54 02  mov   a,$0254+x
0864: 3f fa 09  call  $09fa
0867: c4 f3     mov   $f3,a             ; VOL(L)
0869: ab f2     inc   $f2
086b: f5 64 02  mov   a,$0264+x
086e: 3f fa 09  call  $09fa
0871: c4 f3     mov   $f3,a             ; VOL(R)
0873: ab f2     inc   $f2
0875: f5 50 01  mov   a,$0150+x
0878: 28 01     and   a,#$01
087a: f0 17     beq   $0893
087c: f5 60 01  mov   a,$0160+x
087f: d5 a0 01  mov   $01a0+x,a
0882: f5 70 01  mov   a,$0170+x
0885: d5 00 01  mov   $0100+x,a
0888: f5 80 01  mov   a,$0180+x
088b: d4 95     mov   $95+x,a
088d: f5 90 01  mov   a,$0190+x
0890: d5 c0 01  mov   $01c0+x,a
0893: f5 50 01  mov   a,$0150+x
0896: 28 02     and   a,#$02
0898: f0 1b     beq   $08b5
089a: f5 34 02  mov   a,$0234+x
089d: 10 06     bpl   $08a5
089f: 48 ff     eor   a,#$ff
08a1: bc        inc   a
08a2: d5 34 02  mov   $0234+x,a
08a5: f5 00 02  mov   a,$0200+x
08a8: 5c        lsr   a
08a9: d4 a5     mov   $a5+x,a
08ab: f5 10 02  mov   a,$0210+x
08ae: d4 b5     mov   $b5+x,a
08b0: f5 20 02  mov   a,$0220+x
08b3: d4 c5     mov   $c5+x,a
08b5: e4 02     mov   a,$02
08b7: d4 85     mov   $85+x,a
08b9: c4 f3     mov   $f3,a             ; P(L)
08bb: ab f2     inc   $f2
08bd: e4 03     mov   a,$03
08bf: d4 75     mov   $75+x,a
08c1: c4 f3     mov   $f3,a             ; P(H)
08c3: ab f2     inc   $f2
08c5: f5 44 02  mov   a,$0244+x
08c8: c4 f3     mov   $f3,a             ; SRCN
08ca: ab f2     inc   $f2
08cc: f5 74 02  mov   a,$0274+x
08cf: c4 f3     mov   $f3,a             ; ADSR(1)
08d1: ab f2     inc   $f2
08d3: f5 84 02  mov   a,$0284+x
08d6: c4 f3     mov   $f3,a             ; ADSR(2)
08d8: ab f2     inc   $f2
08da: 8f 7f f3  mov   $f3,#$7f          ; GAIN
08dd: 8f 5c f2  mov   $f2,#$5c
08e0: 8f 00 f3  mov   $f3,#$00          ; KOF
08e3: 8f 4c f2  mov   $f2,#$4c
08e6: f5 2a 0d  mov   a,$0d2a+x
08e9: c4 f3     mov   $f3,a             ; KOL
08eb: f5 20 01  mov   a,$0120+x
08ee: f0 0f     beq   $08ff
08f0: 8f 01 00  mov   $00,#$01
08f3: f5 20 01  mov   a,$0120+x
08f6: d4 35     mov   $35+x,a
08f8: f5 30 01  mov   a,$0130+x
08fb: d4 25     mov   $25+x,a
08fd: 2f 17     bra   $0916
08ff: 8d 01     mov   y,#$01
0901: f7 00     mov   a,($00)+y
0903: d4 35     mov   $35+x,a
0905: f5 d0 01  mov   a,$01d0+x
0908: f0 09     beq   $0913
090a: f4 35     mov   a,$35+x
090c: d4 25     mov   $25+x,a
090e: fc        inc   y
090f: f7 00     mov   a,($00)+y
0911: d4 35     mov   $35+x,a
0913: fc        inc   y
0914: cb 00     mov   $00,y
0916: 8f 00 01  mov   $01,#$00
0919: f4 45     mov   a,$45+x
091b: fb 55     mov   y,$55+x
091d: 7a 00     addw  ya,$00            ; advance voice ptr
091f: db 55     mov   $55+x,y
0921: d4 45     mov   $45+x,a
0923: 6f        ret

0924: f5 50 01  mov   a,$0150+x
0927: 28 01     and   a,#$01
0929: d0 03     bne   $092e
092b: 5f a1 09  jmp   $09a1

092e: f5 a0 01  mov   a,$01a0+x
0931: f0 0f     beq   $0942
0933: 68 ff     cmp   a,#$ff
0935: f0 6a     beq   $09a1
0937: 9c        dec   a
0938: d5 a0 01  mov   $01a0+x,a
093b: d0 64     bne   $09a1
093d: e8 01     mov   a,#$01
093f: d5 00 01  mov   $0100+x,a
0942: f5 00 01  mov   a,$0100+x
0945: 9c        dec   a
0946: d5 00 01  mov   $0100+x,a
0949: d0 56     bne   $09a1
094b: f5 70 01  mov   a,$0170+x
094e: d5 00 01  mov   $0100+x,a
0951: f5 c0 01  mov   a,$01c0+x
0954: f0 22     beq   $0978
0956: 9c        dec   a
0957: d5 c0 01  mov   $01c0+x,a
095a: f5 b0 01  mov   a,$01b0+x
095d: 48 ff     eor   a,#$ff
095f: bc        inc   a
0960: c4 00     mov   $00,a
0962: 10 04     bpl   $0968
0964: e8 ff     mov   a,#$ff
0966: 2f 02     bra   $096a
0968: e8 00     mov   a,#$00
096a: c4 01     mov   $01,a
096c: f4 85     mov   a,$85+x
096e: fb 75     mov   y,$75+x
0970: 7a 00     addw  ya,$00
0972: db 75     mov   $75+x,y
0974: d4 85     mov   $85+x,a
0976: 2f 0b     bra   $0983
0978: f5 b0 01  mov   a,$01b0+x
097b: c4 00     mov   $00,a
097d: 10 e9     bpl   $0968
097f: e8 ff     mov   a,#$ff
0981: 2f e7     bra   $096a
0983: f5 e0 01  mov   a,$01e0+x
0986: d0 10     bne   $0998
0988: 7d        mov   a,x
0989: 28 07     and   a,#$07
098b: 9f        xcn   a
098c: 08 02     or    a,#$02
098e: c4 f2     mov   $f2,a
0990: f4 85     mov   a,$85+x
0992: c4 f3     mov   $f3,a
0994: ab f2     inc   $f2
0996: cb f3     mov   $f3,y
0998: 9b 95     dec   $95+x
099a: d0 05     bne   $09a1
099c: e8 ff     mov   a,#$ff
099e: d5 a0 01  mov   $01a0+x,a
09a1: f5 50 01  mov   a,$0150+x
09a4: 28 02     and   a,#$02
09a6: f0 51     beq   $09f9
09a8: f4 c5     mov   a,$c5+x
09aa: f0 04     beq   $09b0
09ac: 9b c5     dec   $c5+x
09ae: 2f 49     bra   $09f9
09b0: 9b b5     dec   $b5+x
09b2: d0 45     bne   $09f9
09b4: f5 10 02  mov   a,$0210+x
09b7: d4 b5     mov   $b5+x,a
09b9: f5 34 02  mov   a,$0234+x
09bc: c4 00     mov   $00,a
09be: 10 04     bpl   $09c4
09c0: e8 ff     mov   a,#$ff
09c2: 2f 02     bra   $09c6
09c4: e8 00     mov   a,#$00
09c6: c4 01     mov   $01,a
09c8: f4 85     mov   a,$85+x
09ca: fb 75     mov   y,$75+x
09cc: 7a 00     addw  ya,$00
09ce: db 75     mov   $75+x,y
09d0: d4 85     mov   $85+x,a
09d2: f5 e0 01  mov   a,$01e0+x
09d5: d0 10     bne   $09e7
09d7: 7d        mov   a,x
09d8: 28 07     and   a,#$07
09da: 9f        xcn   a
09db: 08 02     or    a,#$02
09dd: c4 f2     mov   $f2,a
09df: f4 85     mov   a,$85+x
09e1: c4 f3     mov   $f3,a
09e3: ab f2     inc   $f2
09e5: cb f3     mov   $f3,y
09e7: 9b a5     dec   $a5+x
09e9: d0 0e     bne   $09f9
09eb: f5 00 02  mov   a,$0200+x
09ee: d4 a5     mov   $a5+x,a
09f0: f5 34 02  mov   a,$0234+x
09f3: 48 ff     eor   a,#$ff
09f5: bc        inc   a
09f6: d5 34 02  mov   $0234+x,a
09f9: 6f        ret

09fa: 4d        push  x
09fb: 8d 23     mov   y,#$23
09fd: c8 08     cmp   x,#$08
09ff: 90 02     bcc   $0a03
0a01: 8d 3c     mov   y,#$3c
0a03: cf        mul   ya
0a04: cd 64     mov   x,#$64
0a06: 9e        div   ya,x
0a07: ce        pop   x
0a08: 6f        ret

; vcmd 00 - end of track
0a09: ce        pop   x
0a0a: e8 00     mov   a,#$00
0a0c: d5 10 01  mov   $0110+x,a
0a0f: f5 e0 01  mov   a,$01e0+x
0a12: d0 08     bne   $0a1c
0a14: 8f 5c f2  mov   $f2,#$5c
0a17: f5 2a 0d  mov   a,$0d2a+x
0a1a: c4 f3     mov   $f3,a
0a1c: 7d        mov   a,x
0a1d: 68 08     cmp   a,#$08
0a1f: 90 31     bcc   $0a52
0a21: 4d        push  x
0a22: 80        setc
0a23: a8 08     sbc   a,#$08
0a25: 5d        mov   x,a
0a26: e8 00     mov   a,#$00
0a28: d5 e0 01  mov   $01e0+x,a
0a2b: 8f 3d f2  mov   $f2,#$3d
0a2e: f5 2a 0d  mov   a,$0d2a+x
0a31: 48 ff     eor   a,#$ff
0a33: 24 f3     and   a,$f3
0a35: c4 f3     mov   $f3,a
0a37: 8f 4d f2  mov   $f2,#$4d
0a3a: f5 94 02  mov   a,$0294+x
0a3d: f0 09     beq   $0a48
0a3f: f5 2a 0d  mov   a,$0d2a+x
0a42: 04 f3     or    a,$f3
0a44: c4 f3     mov   $f3,a
0a46: 2f 09     bra   $0a51
0a48: f5 2a 0d  mov   a,$0d2a+x
0a4b: 48 ff     eor   a,#$ff
0a4d: 24 f3     and   a,$f3
0a4f: c4 f3     mov   $f3,a
0a51: ce        pop   x
0a52: e8 00     mov   a,#$00
0a54: 6f        ret

0a55: ee        pop   y
0a56: ae        pop   a
0a57: ce        pop   x
0a58: 2d        push  a
0a59: 6d        push  y
0a5a: 8d 01     mov   y,#$01
0a5c: db 35     mov   $35+x,y
0a5e: e8 00     mov   a,#$00
0a60: d4 25     mov   $25+x,a
0a62: 6f        ret

; vcmd 01 - set instrument
0a63: 3f 55 0a  call  $0a55
0a66: 3f 7c 0a  call  $0a7c
0a69: 8f 02 00  mov   $00,#$02
0a6c: 8f 00 01  mov   $01,#$00
; add $00/1 to reading ptr
0a6f: f4 45     mov   a,$45+x
0a71: fb 55     mov   y,$55+x
0a73: 7a 00     addw  ya,$00
0a75: db 55     mov   $55+x,y
0a77: d4 45     mov   $45+x,a
0a79: e8 01     mov   a,#$01
0a7b: 6f        ret

0a7c: 4d        push  x
0a7d: f7 00     mov   a,($00)+y
0a7f: 5d        mov   x,a
0a80: f5 60 05  mov   a,$0560+x         ; read SRCN table
0a83: ce        pop   x
0a84: d5 44 02  mov   $0244+x,a
0a87: 6f        ret

; vcmd 22 - set voice params
0a88: 3f 55 0a  call  $0a55
0a8b: 3f 7c 0a  call  $0a7c             ; instrument
0a8e: fc        inc   y
0a8f: f7 00     mov   a,($00)+y
0a91: d5 40 01  mov   $0140+x,a         ; transpose
0a94: fc        inc   y
0a95: f7 00     mov   a,($00)+y         ; detune
0a97: d4 65     mov   $65+x,a
0a99: 8f 04 00  mov   $00,#$04
0a9c: 5f 6c 0a  jmp   $0a6c

; vcmd 1e - set L/R volume (center)
0a9f: 3f 55 0a  call  $0a55
0aa2: f7 00     mov   a,($00)+y
0aa4: d5 54 02  mov   $0254+x,a
0aa7: d5 64 02  mov   $0264+x,a
0aaa: 5f 69 0a  jmp   $0a69

; vcmd 02 - set L/R volume
0aad: 3f 55 0a  call  $0a55
0ab0: f7 00     mov   a,($00)+y
0ab2: d5 54 02  mov   $0254+x,a
0ab5: fc        inc   y
0ab6: f7 00     mov   a,($00)+y
0ab8: d5 64 02  mov   $0264+x,a
0abb: 5f 60 0c  jmp   $0c60

; vcmd 23 - echo delay
0abe: 3f 55 0a  call  $0a55
0ac1: f7 00     mov   a,($00)+y
0ac3: 3f 9b 0e  call  $0e9b             ; enable echo
0ac6: 8f 7d f2  mov   $f2,#$7d
0ac9: 60        clrc
0aca: 5c        lsr   a
0acb: c4 f3     mov   $f3,a             ; EDL
0acd: 8f 6d f2  mov   $f2,#$6d
0ad0: 3c        rol   a
0ad1: 3c        rol   a
0ad2: 3c        rol   a
0ad3: c4 00     mov   $00,a
0ad5: e8 ff     mov   a,#$ff
0ad7: 80        setc
0ad8: a4 00     sbc   a,$00
0ada: c4 f3     mov   $f3,a             ; ESA
0adc: c4 eb     mov   $eb,a
0ade: fd        mov   y,a
0adf: e8 00     mov   a,#$00            ; load ESA into YA
0ae1: da 00     movw  $00,ya
0ae3: fd        mov   y,a
0ae4: d7 00     mov   ($00)+y,a
0ae6: fc        inc   y
0ae7: d0 fb     bne   $0ae4
0ae9: ab 01     inc   $01
0aeb: eb 01     mov   y,$01
0aed: ad 00     cmp   y,#$00
0aef: d0 f2     bne   $0ae3
0af1: 5f 69 0a  jmp   $0a69

; vcmd 03 - jump
0af4: 3f 55 0a  call  $0a55
0af7: f7 00     mov   a,($00)+y
0af9: d4 45     mov   $45+x,a
0afb: fc        inc   y
0afc: f7 00     mov   a,($00)+y
0afe: d4 55     mov   $55+x,a           ; set reading ptr $45/55 from arg1/2
0b00: e8 01     mov   a,#$01
0b02: 6f        ret

; vcmd 04 - call subroutine
0b03: 3f 55 0a  call  $0a55
0b06: f7 00     mov   a,($00)+y
0b08: c4 04     mov   $04,a
0b0a: fc        inc   y
0b0b: 3f 39 0b  call  $0b39
;
0b0e: d6 54 03  mov   $0354+y,a
0b11: bb d5     inc   $d5+x
0b13: ba 02     movw  ya,$02
0b15: d4 45     mov   $45+x,a
0b17: db 55     mov   $55+x,y
0b19: e8 01     mov   a,#$01
0b1b: 6f        ret

; vcmd 1f - call subroutine (once)
0b1c: 3f 55 0a  call  $0a55
0b1f: 8f 01 04  mov   $04,#$01
0b22: 3f 39 0b  call  $0b39
0b25: f0 04     beq   $0b2b
0b27: 9c        dec   a
0b28: 5f 0e 0b  jmp   $0b0e

0b2b: 9c        dec   a
0b2c: d6 54 03  mov   $0354+y,a
0b2f: f6 d4 03  mov   a,$03d4+y
0b32: 9c        dec   a
0b33: d6 d4 03  mov   $03d4+y,a
0b36: 5f 11 0b  jmp   $0b11

0b39: f7 00     mov   a,($00)+y
0b3b: c4 02     mov   $02,a
0b3d: fc        inc   y
0b3e: f7 00     mov   a,($00)+y
0b40: c4 03     mov   $03,a
0b42: fb d5     mov   y,$d5+x
0b44: e4 04     mov   a,$04
0b46: d6 54 04  mov   $0454+y,a
0b49: f4 55     mov   a,$55+x
0b4b: d6 d4 03  mov   $03d4+y,a
0b4e: f4 45     mov   a,$45+x
0b50: 6f        ret

; vcmd 05 - end subroutine
0b51: 3f 55 0a  call  $0a55
0b54: 9b d5     dec   $d5+x
0b56: fb d5     mov   y,$d5+x
0b58: f6 d4 03  mov   a,$03d4+y
0b5b: d4 55     mov   $55+x,a
0b5d: f6 54 03  mov   a,$0354+y
0b60: d4 45     mov   $45+x,a
0b62: f6 54 04  mov   a,$0454+y
0b65: 9c        dec   a
0b66: d6 54 04  mov   $0454+y,a
0b69: f0 1c     beq   $0b87
0b6b: f4 45     mov   a,$45+x
0b6d: fb 55     mov   y,$55+x
0b6f: da 00     movw  $00,ya
0b71: 8d 02     mov   y,#$02
0b73: f7 00     mov   a,($00)+y
0b75: c4 02     mov   $02,a
0b77: fc        inc   y
0b78: f7 00     mov   a,($00)+y
0b7a: c4 03     mov   $03,a
0b7c: bb d5     inc   $d5+x
0b7e: ba 02     movw  ya,$02
0b80: d4 45     mov   $45+x,a
0b82: db 55     mov   $55+x,y
0b84: e8 01     mov   a,#$01
0b86: 6f        ret

0b87: 8f 04 00  mov   $00,#$04
0b8a: 5f 6c 0a  jmp   $0a6c

; vcmd 06 - default duration on
0b8d: 3f 55 0a  call  $0a55
0b90: f7 00     mov   a,($00)+y
0b92: d5 20 01  mov   $0120+x,a
0b95: f5 d0 01  mov   a,$01d0+x
0b98: f0 0c     beq   $0ba6
0b9a: f5 20 01  mov   a,$0120+x
0b9d: d5 30 01  mov   $0130+x,a
0ba0: fc        inc   y
0ba1: f7 00     mov   a,($00)+y
0ba3: d5 20 01  mov   $0120+x,a
0ba6: fc        inc   y
0ba7: cb 00     mov   $00,y
0ba9: 5f 6c 0a  jmp   $0a6c

; vcmd 07 - default duration off
0bac: ce        pop   x
0bad: e8 00     mov   a,#$00
0baf: d5 20 01  mov   $0120+x,a
0bb2: d5 30 01  mov   $0130+x,a
0bb5: 5f fc 0b  jmp   $0bfc

; vcmd 08 - pitch slide up
0bb8: ce        pop   x
0bb9: 8d 04     mov   y,#$04
0bbb: f7 00     mov   a,($00)+y
0bbd: 2f 08     bra   $0bc7

; vcmd 09 - pitch slide down
0bbf: ce        pop   x
0bc0: 8d 04     mov   y,#$04
0bc2: f7 00     mov   a,($00)+y
0bc4: 48 ff     eor   a,#$ff
0bc6: bc        inc   a
0bc7: d5 b0 01  mov   $01b0+x,a
0bca: f5 50 01  mov   a,$0150+x
0bcd: 08 01     or    a,#$01
0bcf: d5 50 01  mov   $0150+x,a
0bd2: 3f 5a 0a  call  $0a5a
0bd5: f7 00     mov   a,($00)+y
0bd7: d5 60 01  mov   $0160+x,a
0bda: fc        inc   y
0bdb: f7 00     mov   a,($00)+y
0bdd: d5 70 01  mov   $0170+x,a
0be0: fc        inc   y
0be1: f7 00     mov   a,($00)+y
0be3: d5 80 01  mov   $0180+x,a
0be6: fc        inc   y
0be7: fc        inc   y
0be8: f7 00     mov   a,($00)+y
0bea: d5 90 01  mov   $0190+x,a
0bed: 8f 06 00  mov   $00,#$06
0bf0: 5f 6c 0a  jmp   $0a6c

; vcmd 0a - pitch slide off
0bf3: ce        pop   x
0bf4: f5 50 01  mov   a,$0150+x
0bf7: 28 fe     and   a,#$fe
0bf9: d5 50 01  mov   $0150+x,a
0bfc: e8 01     mov   a,#$01
0bfe: c4 00     mov   $00,a
0c00: d4 35     mov   $35+x,a
0c02: e8 00     mov   a,#$00
0c04: d4 25     mov   $25+x,a
0c06: 5f 6c 0a  jmp   $0a6c

; vcmd 0b - set tempo
0c09: ce        pop   x
0c0a: 8d 01     mov   y,#$01
0c0c: f7 00     mov   a,($00)+y
0c0e: c4 20     mov   $20,a
0c10: 3f 5a 0a  call  $0a5a
0c13: 5f 69 0a  jmp   $0a69

; vcmd 0e - vibrato off
0c16: ce        pop   x
0c17: f5 50 01  mov   a,$0150+x
0c1a: 28 fd     and   a,#$fd
0c1c: d5 50 01  mov   $0150+x,a
0c1f: 5f fc 0b  jmp   $0bfc

0c22: 5f 6c 0a  jmp   $0a6c

; vcmd 0f - vibrato
0c25: ce        pop   x
0c26: 8d 04     mov   y,#$04
0c28: f7 00     mov   a,($00)+y
0c2a: 3f 32 0c  call  $0c32
0c2d: 8f 05 00  mov   $00,#$05
0c30: 2f f0     bra   $0c22
0c32: d5 20 02  mov   $0220+x,a
0c35: f5 50 01  mov   a,$0150+x
0c38: 08 02     or    a,#$02
0c3a: d5 50 01  mov   $0150+x,a
0c3d: 3f 5a 0a  call  $0a5a
0c40: f7 00     mov   a,($00)+y
0c42: d5 00 02  mov   $0200+x,a
0c45: fc        inc   y
0c46: f7 00     mov   a,($00)+y
0c48: d5 10 02  mov   $0210+x,a
0c4b: fc        inc   y
0c4c: f7 00     mov   a,($00)+y
0c4e: d5 34 02  mov   $0234+x,a
0c51: 6f        ret

; vcmd 10 - set ADSR envelope
0c52: 3f 55 0a  call  $0a55
0c55: f7 00     mov   a,($00)+y
0c57: d5 74 02  mov   $0274+x,a
0c5a: fc        inc   y
0c5b: f7 00     mov   a,($00)+y
0c5d: d5 84 02  mov   $0284+x,a
0c60: 8f 03 00  mov   $00,#$03
0c63: 5f 6c 0a  jmp   $0a6c

; vcmd 20 - reset ADSR
0c66: 3f 55 0a  call  $0a55
0c69: e8 8f     mov   a,#$8f
0c6b: 5f 73 0c  jmp   $0c73

; vcmd 21 - reset ADSR (soft attack)
0c6e: 3f 55 0a  call  $0a55
0c71: e8 8e     mov   a,#$8e
0c73: d5 74 02  mov   $0274+x,a
0c76: e8 e0     mov   a,#$e0
0c78: d5 84 02  mov   $0284+x,a
0c7b: 8f 01 00  mov   $00,#$01
0c7e: 5f 6c 0a  jmp   $0a6c

; vcmd 12 - detune
0c81: 3f 55 0a  call  $0a55
0c84: f7 00     mov   a,($00)+y
0c86: d4 65     mov   $65+x,a
0c88: 5f 69 0a  jmp   $0a69

; vcmd 13 - transpose
0c8b: 3f 55 0a  call  $0a55
0c8e: f7 00     mov   a,($00)+y
0c90: d5 40 01  mov   $0140+x,a
0c93: 5f 69 0a  jmp   $0a69

; vcmd 14 - transpose (relative)
0c96: 3f 55 0a  call  $0a55
0c99: f7 00     mov   a,($00)+y
0c9b: 60        clrc
0c9c: 95 40 01  adc   a,$0140+x
0c9f: d5 40 01  mov   $0140+x,a
0ca2: 5f 69 0a  jmp   $0a69

; vcmd 16 - voice echo on
0ca5: 3f 55 0a  call  $0a55
0ca8: 8f 4d f2  mov   $f2,#$4d
0cab: f5 2a 0d  mov   a,$0d2a+x
0cae: 04 f3     or    a,$f3
0cb0: c4 f3     mov   $f3,a
0cb2: e8 01     mov   a,#$01
0cb4: d5 94 02  mov   $0294+x,a
0cb7: c4 00     mov   $00,a
0cb9: 5f 6c 0a  jmp   $0a6c

; vcmd 17 - voice echo off
0cbc: ce        pop   x
0cbd: 8f 4d f2  mov   $f2,#$4d
0cc0: f5 2a 0d  mov   a,$0d2a+x
0cc3: 48 ff     eor   a,#$ff
0cc5: 24 f3     and   a,$f3
0cc7: c4 f3     mov   $f3,a
0cc9: e8 00     mov   a,#$00
0ccb: d5 94 02  mov   $0294+x,a
0cce: d4 25     mov   $25+x,a
0cd0: e8 01     mov   a,#$01
0cd2: d4 35     mov   $35+x,a
0cd4: c4 00     mov   $00,a
0cd6: 5f 6c 0a  jmp   $0a6c

; vcmd 26 - pitch slide down (simpler)
0cd9: ce        pop   x
0cda: 8d 04     mov   y,#$04
0cdc: f7 00     mov   a,($00)+y
0cde: 48 ff     eor   a,#$ff
0ce0: bc        inc   a
0ce1: 2f 05     bra   $0ce8

; vcmd 27 - pitch slide up (simpler)
0ce3: ce        pop   x
0ce4: 8d 04     mov   y,#$04
0ce6: f7 00     mov   a,($00)+y         ; arg4 (pitch slide delta, signed)
0ce8: d5 b0 01  mov   $01b0+x,a
0ceb: f5 50 01  mov   a,$0150+x
0cee: 08 01     or    a,#$01
0cf0: d5 50 01  mov   $0150+x,a
0cf3: 3f 5a 0a  call  $0a5a
0cf6: f7 00     mov   a,($00)+y
0cf8: d5 60 01  mov   $0160+x,a         ; arg1 (pitch slide delay)
0cfb: fc        inc   y
0cfc: f7 00     mov   a,($00)+y
0cfe: d5 70 01  mov   $0170+x,a         ; arg2 (pitch slide interval)
0d01: fc        inc   y
0d02: f7 00     mov   a,($00)+y
0d04: d5 90 01  mov   $0190+x,a         ; arg3 (pitch slide times-inverse)
0d07: 1c        asl   a
0d08: d5 80 01  mov   $0180+x,a         ; arg3 * 2 (pitch slide times)
0d0b: 8f 05 00  mov   $00,#$05
0d0e: 5f 6c 0a  jmp   $0a6c

; vcmd 2b - long duration on
0d11: 3f 55 0a  call  $0a55
0d14: e8 01     mov   a,#$01
0d16: d5 d0 01  mov   $01d0+x,a
0d19: c4 00     mov   $00,a
0d1b: 5f 6c 0a  jmp   $0a6c

; vcmd 2c - long duration off
0d1e: 3f 55 0a  call  $0a55
0d21: d5 d0 01  mov   $01d0+x,a
0d24: bc        inc   a
0d25: c4 00     mov   $00,a
0d27: 5f 6c 0a  jmp   $0a6c

0d2a: db $01,$02,$04,$08,$10,$20,$40,$80
0d32: db $01,$02,$04,$08,$10,$20,$40,$80

0d3a: dw $0a09  ; 00 - end of track
0d3c: dw $0a63  ; 01 - set instrument
0d3e: dw $0aad  ; 02 - set L/R volume
0d40: dw $0af4  ; 03 - jump
0d42: dw $0b03  ; 04 - call subroutine
0d44: dw $0b51  ; 05 - end subroutine
0d46: dw $0b8d  ; 06 - default duration on
0d48: dw $0bac  ; 07 - default duration off
0d4a: dw $0bb8  ; 08 - pitch slide up
0d4c: dw $0bbf  ; 09 - pitch slide down
0d4e: dw $0bf3  ; 0a - pitch slide off
0d50: dw $0c09  ; 0b - set tempo
0d52: dw $0000  ; 0c
0d54: dw $0000  ; 0d
0d56: dw $0c16  ; 0e - vibrato off
0d58: dw $0c25  ; 0f - vibrato
0d5a: dw $0c52  ; 10 - set ADSR envelope
0d5c: dw $0000  ; 11
0d5e: dw $0c81  ; 12 - detune
0d60: dw $0c8b  ; 13 - transpose
0d62: dw $0c96  ; 14 - transpose (relative)
0d64: dw $0000  ; 15
0d66: dw $0ca5  ; 16 - voice echo on
0d68: dw $0cbc  ; 17 - voice echo off
0d6a: dw $0000  ; 18
0d6c: dw $0000  ; 19
0d6e: dw $0000  ; 1a
0d70: dw $0000  ; 1b
0d72: dw $0000  ; 1c
0d74: dw $0000  ; 1d
0d76: dw $0a9f  ; 1e - set L/R volume (center)
0d78: dw $0b1c  ; 1f - call subroutine (once)
0d7a: dw $0c66  ; 20 - reset ADSR
0d7c: dw $0c6e  ; 21 - reset ADSR (soft attack)
0d7e: dw $0a88  ; 22 - set voice params
0d80: dw $0abe  ; 23 - echo delay
0d82: dw $0000  ; 24
0d84: dw $0000  ; 25
0d86: dw $0cd9  ; 26 - pitch slide down (simpler)
0d88: dw $0ce3  ; 27 - pitch slide up (simpler)
0d8a: dw $0000  ; 28
0d8c: dw $0000  ; 29
0d8e: dw $0000  ; 2a
0d90: dw $0d11  ; 2b - long duration on
0d92: dw $0d1e  ; 2c - long duration off
0d94: dw $0000  ; 2d
0d96: dw $0000  ; 2e
0d98: dw $0000  ; 2f
0d9a: dw $0000  ; 30

0d9c: 8f 0c f2  mov   $f2,#$0c
0d9f: c4 f3     mov   $f3,a
0da1: 8f 1c f2  mov   $f2,#$1c
0da4: c4 f3     mov   $f3,a
0da6: 6f        ret

0da7: e8 00     mov   a,#$00
0da9: 8f 6c f2  mov   $f2,#$6c
0dac: 8f e0 f3  mov   $f3,#$e0
0daf: 8f 4c f2  mov   $f2,#$4c
0db2: c4 f3     mov   $f3,a
0db4: 8f 5c f2  mov   $f2,#$5c
0db7: 8f ff f3  mov   $f3,#$ff
0dba: 8f 2d f2  mov   $f2,#$2d
0dbd: c4 f3     mov   $f3,a
0dbf: 8f 3d f2  mov   $f2,#$3d
0dc2: c4 f3     mov   $f3,a
0dc4: 8f 4d f2  mov   $f2,#$4d
0dc7: c4 f3     mov   $f3,a
0dc9: e8 00     mov   a,#$00
0dcb: c5 30 02  mov   $0230,a
0dce: c5 31 02  mov   $0231,a
0dd1: 8f 0c f2  mov   $f2,#$0c
0dd4: c4 f3     mov   $f3,a
0dd6: 8f 1c f2  mov   $f2,#$1c
0dd9: c4 f3     mov   $f3,a
0ddb: 8f 5d f2  mov   $f2,#$5d
0dde: 8f 1d f3  mov   $f3,#$1d
0de1: cd 00     mov   x,#$00
0de3: 8d 08     mov   y,#$08
0de5: 8f 00 f2  mov   $f2,#$00
0de8: e8 00     mov   a,#$00
0dea: c4 f3     mov   $f3,a
0dec: ab f2     inc   $f2
0dee: c4 f3     mov   $f3,a
0df0: 60        clrc
0df1: 98 04 f2  adc   $f2,#$04
0df4: e8 00     mov   a,#$00
0df6: c4 f3     mov   $f3,a
0df8: ab f2     inc   $f2
0dfa: c4 f3     mov   $f3,a
0dfc: ab f2     inc   $f2
0dfe: 8f ff f3  mov   $f3,#$ff
0e01: 60        clrc
0e02: 98 09 f2  adc   $f2,#$09
0e05: dc        dec   y
0e06: d0 e0     bne   $0de8
0e08: 8f 0d f2  mov   $f2,#$0d
0e0b: 8f 37 f3  mov   $f3,#$37
0e0e: 8f 2c f2  mov   $f2,#$2c
0e11: 8f 20 f3  mov   $f3,#$20
0e14: 8f 3c f2  mov   $f2,#$3c
0e17: 8f 20 f3  mov   $f3,#$20
0e1a: e8 64     mov   a,#$64
0e1c: c4 e5     mov   $e5,a
0e1e: e8 00     mov   a,#$00
0e20: c4 0d     mov   $0d,a
0e22: 8f 0f f2  mov   $f2,#$0f
0e25: 8f 7f f3  mov   $f3,#$7f
0e28: 8f 1f f2  mov   $f2,#$1f
0e2b: 8f 01 f3  mov   $f3,#$01
0e2e: 8f 2f f2  mov   $f2,#$2f
0e31: c4 f3     mov   $f3,a
0e33: 8f 3f f2  mov   $f2,#$3f
0e36: c4 f3     mov   $f3,a
0e38: 8f 4f f2  mov   $f2,#$4f
0e3b: c4 f3     mov   $f3,a
0e3d: 8f 5f f2  mov   $f2,#$5f
0e40: c4 f3     mov   $f3,a
0e42: 8f 6f f2  mov   $f2,#$6f
0e45: c4 f3     mov   $f3,a
0e47: 8f 7f f2  mov   $f2,#$7f
0e4a: c4 f3     mov   $f3,a
0e4c: 8f 08 00  mov   $00,#$08
0e4f: cd 00     mov   x,#$00
0e51: 8d 00     mov   y,#$00
0e53: cb 0a     mov   $0a,y
0e55: cb 0c     mov   $0c,y
0e57: cb 01     mov   $01,y
0e59: e8 01     mov   a,#$01
0e5b: d4 35     mov   $35+x,a
0e5d: d5 10 01  mov   $0110+x,a
0e60: f7 e6     mov   a,($e6)+y
0e62: d4 45     mov   $45+x,a
0e64: fc        inc   y
0e65: f7 e6     mov   a,($e6)+y
0e67: d4 55     mov   $55+x,a
0e69: e4 01     mov   a,$01
0e6b: d4 d5     mov   $d5+x,a
0e6d: e8 00     mov   a,#$00
0e6f: d5 d0 01  mov   $01d0+x,a
0e72: d4 25     mov   $25+x,a
0e74: d5 20 01  mov   $0120+x,a
0e77: d5 30 01  mov   $0130+x,a
0e7a: d5 50 01  mov   $0150+x,a
0e7d: d5 40 01  mov   $0140+x,a
0e80: d5 e0 01  mov   $01e0+x,a
0e83: 3d        inc   x
0e84: fc        inc   y
0e85: 60        clrc
0e86: 98 08 01  adc   $01,#$08
0e89: 6e 00 cd  dbnz  $00,$0e59
0e8c: f7 e6     mov   a,($e6)+y
0e8e: c4 20     mov   $20,a
0e90: fc        inc   y
0e91: f7 e6     mov   a,($e6)+y
0e93: c4 23     mov   $23,a
0e95: e8 00     mov   a,#$00
0e97: c4 1f     mov   $1f,a
0e99: c4 22     mov   $22,a
0e9b: 8f 6c f2  mov   $f2,#$6c
0e9e: 8f 00 f3  mov   $f3,#$00
0ea1: 6f        ret

0ea2: 8f 08 00  mov   $00,#$08
0ea5: cd 00     mov   x,#$00
0ea7: 8d 00     mov   y,#$00
0ea9: cb 0a     mov   $0a,y
0eab: cb 0c     mov   $0c,y
0ead: cb 01     mov   $01,y
0eaf: e8 01     mov   a,#$01
0eb1: d4 35     mov   $35+x,a
0eb3: d5 10 01  mov   $0110+x,a
0eb6: f7 e6     mov   a,($e6)+y
0eb8: d4 45     mov   $45+x,a
0eba: fc        inc   y
0ebb: f7 e6     mov   a,($e6)+y
0ebd: d4 55     mov   $55+x,a
0ebf: e4 01     mov   a,$01
0ec1: d4 d5     mov   $d5+x,a
0ec3: e8 00     mov   a,#$00
0ec5: d5 d0 01  mov   $01d0+x,a
0ec8: d4 25     mov   $25+x,a
0eca: d5 20 01  mov   $0120+x,a
0ecd: d5 30 01  mov   $0130+x,a
0ed0: d5 50 01  mov   $0150+x,a
0ed3: d5 40 01  mov   $0140+x,a
0ed6: 3d        inc   x
0ed7: fc        inc   y
0ed8: 60        clrc
0ed9: 98 08 01  adc   $01,#$08
0edc: 6e 00 d0  dbnz  $00,$0eaf
0edf: f7 e6     mov   a,($e6)+y
0ee1: c4 20     mov   $20,a
0ee3: fc        inc   y
0ee4: f7 e6     mov   a,($e6)+y
0ee6: c4 23     mov   $23,a
0ee8: e8 00     mov   a,#$00
0eea: c4 1f     mov   $1f,a
0eec: c4 22     mov   $22,a
0eee: 6f        ret

0eef: 1c        asl   a
0ef0: 2d        push  a
0ef1: e8 01     mov   a,#$01
0ef3: d5 e0 01  mov   $01e0+x,a
0ef6: 8f 3d f2  mov   $f2,#$3d
0ef9: f5 2a 0d  mov   a,$0d2a+x
0efc: 48 ff     eor   a,#$ff
0efe: 24 f3     and   a,$f3
0f00: c4 f3     mov   $f3,a
0f02: 7d        mov   a,x
0f03: 60        clrc
0f04: 88 08     adc   a,#$08
0f06: 5d        mov   x,a
0f07: 1c        asl   a
0f08: 1c        asl   a
0f09: 1c        asl   a
0f0a: d4 d5     mov   $d5+x,a
0f0c: e8 01     mov   a,#$01
0f0e: d5 10 01  mov   $0110+x,a
0f11: 9c        dec   a
0f12: d5 20 01  mov   $0120+x,a
0f15: d5 30 01  mov   $0130+x,a
0f18: d4 25     mov   $25+x,a
0f1a: d5 d0 01  mov   $01d0+x,a
0f1d: d5 e0 01  mov   $01e0+x,a
0f20: d5 50 01  mov   $0150+x,a
0f23: d5 40 01  mov   $0140+x,a
0f26: d5 94 02  mov   $0294+x,a
0f29: d4 65     mov   $65+x,a
0f2b: e8 40     mov   a,#$40
0f2d: d5 54 02  mov   $0254+x,a
0f30: d5 64 02  mov   $0264+x,a
0f33: d5 14 03  mov   $0314+x,a
0f36: d5 24 03  mov   $0324+x,a
0f39: e8 8e     mov   a,#$8e
0f3b: d5 74 02  mov   $0274+x,a
0f3e: e8 e0     mov   a,#$e0
0f40: d5 84 02  mov   $0284+x,a
0f43: ee        pop   y
0f44: f6 50 17  mov   a,$1750+y
0f47: d4 45     mov   $45+x,a
0f49: fc        inc   y
0f4a: f6 50 17  mov   a,$1750+y
0f4d: d4 55     mov   $55+x,a
0f4f: e8 02     mov   a,#$02
0f51: d4 35     mov   $35+x,a
0f53: 8f 4d f2  mov   $f2,#$4d
0f56: f5 2a 0d  mov   a,$0d2a+x
0f59: 48 ff     eor   a,#$ff
0f5b: 24 f3     and   a,$f3
0f5d: c4 f3     mov   $f3,a
0f5f: 6f        ret

0f60: dw $0000
0f62: dw $0040
0f64: dw $0044
0f66: dw $0048
0f68: dw $004c
0f6a: dw $0051
0f6c: dw $0055
0f6e: dw $005b
0f70: dw $0060
0f72: dw $0066
0f74: dw $006c
0f76: dw $0072
0f78: dw $0079
0f7a: dw $0080
0f7c: dw $0088
0f7e: dw $0090
0f80: dw $0098
0f82: dw $00a1
0f84: dw $00ab
0f86: dw $00b5
0f88: dw $00c0
0f8a: dw $00cb
0f8c: dw $00d7
0f8e: dw $00e4
0f90: dw $00f2
0f92: dw $0100
0f94: dw $010f
0f96: dw $011f
0f98: dw $0130
0f9a: dw $0143
0f9c: dw $0156
0f9e: dw $016a
0fa0: dw $0180
0fa2: dw $0196
0fa4: dw $01af
0fa6: dw $01c8
0fa8: dw $01e3
0faa: dw $0200
0fac: dw $021e
0fae: dw $023f
0fb0: dw $0261
0fb2: dw $0285
0fb4: dw $02ab
0fb6: dw $02d4
0fb8: dw $02ff
0fba: dw $032d
0fbc: dw $035d
0fbe: dw $0390
0fc0: dw $03c7
0fc2: dw $0400
0fc4: dw $043d
0fc6: dw $047d
0fc8: dw $04c2
0fca: dw $050a
0fcc: dw $0557
0fce: dw $05a8
0fd0: dw $05fe
0fd2: dw $065a
0fd4: dw $06ba
0fd6: dw $0721
0fd8: dw $078d
0fda: dw $0800
0fdc: dw $087a
0fde: dw $08fb
0fe0: dw $0984
0fe2: dw $0a14
0fe4: dw $0aae
0fe6: dw $0b50
0fe8: dw $0bfd
0fea: dw $0cb3
0fec: dw $0d74
0fee: dw $0e41
0ff0: dw $0f1a
0ff2: dw $1000
0ff4: dw $10f4
0ff6: dw $11f6
0ff8: dw $1307
0ffa: dw $1429
0ffc: dw $155c
0ffe: dw $16a1
1000: dw $17f9
1002: dw $1966
1004: dw $1ae9
1006: dw $1c82
1008: dw $1e34
100a: dw $2000
100c: dw $21e7
100e: dw $23eb
1010: dw $260e
1012: dw $2851
1014: dw $2ab7
1016: dw $2d41
1018: dw $2ff2
101a: dw $32cc
101c: dw $35d1
101e: dw $3904
1020: dw $3c68
1022: dw $3fff
