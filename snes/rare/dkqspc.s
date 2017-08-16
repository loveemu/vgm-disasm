04d8: 20        clrp
04d9: cd ff     mov   x,#$ff
04db: bd        mov   sp,x
04dc: 3d        inc   x
04dd: d8 f4     mov   $f4,x
04df: 3d        inc   x
04e0: d8 e9     mov   $e9,x
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
04f8: d8 f3     mov   $f3,x             ; FLG
04fa: 8f 7d f2  mov   $f2,#$7d
04fd: 8f 00 f3  mov   $f3,#$00          ; EDL
0500: 8f 6d f2  mov   $f2,#$6d
0503: d8 f3     mov   $f3,x             ; ESA
0505: c9 b7 04  mov   $04b7,x
0508: f8 e9     mov   x,$e9
050a: 3e f4     cmp   x,$f4
050c: d0 fc     bne   $050a
050e: ba f5     movw  ya,$f5
0510: d8 f4     mov   $f4,x
0512: 3d        inc   x
0513: c5 39 05  mov   $0539,a
0516: c5 42 05  mov   $0542,a
0519: cc 3a 05  mov   $053a,y
051c: cc 43 05  mov   $0543,y
051f: 3e f4     cmp   x,$f4
0521: d0 fc     bne   $051f
0523: ba f5     movw  ya,$f5
0525: d8 f4     mov   $f4,x
0527: 3d        inc   x
0528: c4 ea     mov   $ea,a
052a: cb eb     mov   $eb,y
052c: 1a ea     decw  $ea
052e: 30 26     bmi   $0556
0530: 8d 00     mov   y,#$00
0532: 3e f4     cmp   x,$f4
0534: d0 fc     bne   $0532
0536: e4 f5     mov   a,$f5
0538: d6 72 06  mov   $0672+y,a
053b: e4 f6     mov   a,$f6
053d: d8 f4     mov   $f4,x
053f: 3d        inc   x
0540: fc        inc   y
0541: d6 72 06  mov   $0672+y,a
0544: fc        inc   y
0545: f0 07     beq   $054e
0547: 1a ea     decw  $ea
0549: 10 e7     bpl   $0532
054b: 5f 0a 05  jmp   $050a

054e: ac 3a 05  inc   $053a
0551: ac 43 05  inc   $0543
0554: 2f f1     bra   $0547
0556: d8 e9     mov   $e9,x
0558: cd 00     mov   x,#$00
055a: 1f 39 05  jmp   ($0539+x)

; 055d: ?
; 0560: SRCN table

0660: e5 5d 05  mov   a,$055d
0663: 1c        asl   a
0664: fd        mov   y,a
0665: f6 12 13  mov   a,$1312+y
0668: c4 e5     mov   $e5,a
066a: f6 13 13  mov   a,$1313+y
066d: c4 e6     mov   $e6,a
066f: 5f 78 06  jmp   $0678

0672: 8f 13 e6  mov   $e6,#$13
0675: 8f 00 e5  mov   $e5,#$00
0678: 3f 0b 10  call  $100b
067b: e8 00     mov   a,#$00
067d: c4 1c     mov   $1c,a
067f: c4 1d     mov   $1d,a
0681: c4 f1     mov   $f1,a
0683: e4 e9     mov   a,$e9
0685: 64 f4     cmp   a,$f4
0687: f0 03     beq   $068c
0689: 5f 81 07  jmp   $0781

068c: f8 f6     mov   x,$f6
068e: c9 5d 05  mov   $055d,x
0691: f8 f5     mov   x,$f5
0693: c4 f4     mov   $f4,a
0695: bc        inc   a
0696: c4 e9     mov   $e9,a
0698: 7d        mov   a,x
0699: 68 80     cmp   a,#$80
069b: 10 03     bpl   $06a0
069d: 5f 73 07  jmp   $0773

06a0: 28 07     and   a,#$07
06a2: 1c        asl   a
06a3: 5d        mov   x,a
06a4: 1f a7 06  jmp   ($06a7+x)

06a7: dw $070a  ; 00
06a9: dw $0702  ; 01
06ab: dw $06fa  ; 02
06ad: dw $06b7  ; 03
06af: dw $0739  ; 04
06b1: dw $0712  ; 05
06b3: dw $077b  ; 06
06b5: dw $07db  ; 07

06b7: cd 7f     mov   x,#$7f
06b9: e8 71     mov   a,#$71
06bb: fd        mov   y,a
06bc: cb f2     mov   $f2,y
06be: 3f eb 06  call  $06eb             ; VOL(L)
06c1: dc        dec   y
06c2: cb f2     mov   $f2,y
06c4: 3f eb 06  call  $06eb             ; VOL(R)
06c7: dd        mov   a,y
06c8: 80        setc
06c9: a8 0f     sbc   a,#$0f
06cb: 10 ee     bpl   $06bb
06cd: 8f 0c f2  mov   $f2,#$0c
06d0: 3f eb 06  call  $06eb             ; MVOL(L)
06d3: 8f 1c f2  mov   $f2,#$1c
06d6: 3f eb 06  call  $06eb             ; MVOL(R)
06d9: 8f 2c f2  mov   $f2,#$2c
06dc: 3f eb 06  call  $06eb             ; EVOL(L)
06df: 8f 3c f2  mov   $f2,#$3c
06e2: 3f eb 06  call  $06eb             ; EVOL(R)
06e5: 1d        dec   x
06e6: d0 d1     bne   $06b9
06e8: 5f 60 06  jmp   $0660

; decrease DSP (volume) reg
06eb: e4 f3     mov   a,$f3
06ed: f0 08     beq   $06f7
06ef: 30 04     bmi   $06f5
06f1: 9c        dec   a
06f2: 9c        dec   a
06f3: 2f 02     bra   $06f7
06f5: bc        inc   a
06f6: bc        inc   a
06f7: c4 f3     mov   $f3,a
06f9: 6f        ret

06fa: e5 5d 05  mov   a,$055d
06fd: c4 1d     mov   $1d,a
06ff: 5f 81 07  jmp   $0781

0702: e5 5d 05  mov   a,$055d
0705: c4 e7     mov   $e7,a
0707: 5f 81 07  jmp   $0781

070a: e5 5d 05  mov   a,$055d
070d: c4 e8     mov   $e8,a
070f: 5f 81 07  jmp   $0781

0712: e5 b6 04  mov   a,$04b6
0715: 2d        push  a
0716: 4d        push  x
0717: cd 05     mov   x,#$05
0719: e5 5d 05  mov   a,$055d
071c: c5 b6 04  mov   $04b6,a
071f: 8f 50 f2  mov   $f2,#$50
0722: e4 f3     mov   a,$f3
0724: 3f 59 0c  call  $0c59
0727: c4 f3     mov   $f3,a
0729: ab f2     inc   $f2
072b: e4 f3     mov   a,$f3
072d: 3f 59 0c  call  $0c59
0730: c4 f3     mov   $f3,a
0732: ce        pop   x
0733: ae        pop   a
0734: c5 b6 04  mov   $04b6,a
0737: 2f 48     bra   $0781
0739: e5 5d 05  mov   a,$055d
073c: 30 0c     bmi   $074a
073e: 60        clrc
073f: e5 5d 05  mov   a,$055d
0742: c4 ec     mov   $ec,a
0744: e8 00     mov   a,#$00
0746: c4 ed     mov   $ed,a
0748: 2f 0c     bra   $0756
074a: c5 5d 05  mov   $055d,a
074d: e5 5d 05  mov   a,$055d
0750: c4 ec     mov   $ec,a
0752: e8 ff     mov   a,#$ff
0754: c4 ed     mov   $ed,a
0756: ba ec     movw  ya,$ec
0758: 7a ec     addw  ya,$ec
075a: 7a ec     addw  ya,$ec
075c: 7a ec     addw  ya,$ec
075e: 7a ec     addw  ya,$ec
0760: 7a ec     addw  ya,$ec
0762: 7a ec     addw  ya,$ec
0764: 7a ec     addw  ya,$ec
0766: da ec     movw  $ec,ya
0768: 8f 4d f2  mov   $f2,#$4d
076b: e4 f3     mov   a,$f3             ; EON
076d: 28 df     and   a,#$df
076f: c4 f3     mov   $f3,a
0771: 2f 0e     bra   $0781
0773: e9 5d 05  mov   x,$055d
0776: 3f f7 10  call  $10f7
0779: 2f 13     bra   $078e
077b: 8f 01 1c  mov   $1c,#$01
077e: 8f 00 f1  mov   $f1,#$00
0781: e4 1c     mov   a,$1c
0783: d0 03     bne   $0788
0785: 5f 83 06  jmp   $0683

0788: fa e4 fa  mov   ($fa),($e4)
078b: 8f 01 f1  mov   $f1,#$01
078e: e4 fd     mov   a,$fd
0790: f0 fc     beq   $078e
0792: 8f 01 f1  mov   $f1,#$01
0795: 8f 00 20  mov   $20,#$00
0798: 60        clrc
0799: 89 1f 1e  adc   ($1e),($1f)
079c: 6b 20     ror   $20
079e: 8f 00 23  mov   $23,#$00
07a1: 60        clrc
07a2: 89 22 21  adc   ($21),($22)
07a5: 6b 23     ror   $23
07a7: cd 00     mov   x,#$00
07a9: e4 20     mov   a,$20
07ab: d0 05     bne   $07b2
07ad: 3f bc 09  call  $09bc
07b0: 2f 05     bra   $07b7
07b2: 3f 13 08  call  $0813
07b5: d0 fb     bne   $07b2
07b7: f5 e0 01  mov   a,$01e0+x
07ba: f0 14     beq   $07d0
07bc: 4d        push  x
07bd: 7d        mov   a,x
07be: 08 08     or    a,#$08
07c0: 5d        mov   x,a
07c1: e4 23     mov   a,$23
07c3: d0 05     bne   $07ca
07c5: 3f bc 09  call  $09bc
07c8: 2f 05     bra   $07cf
07ca: 3f 13 08  call  $0813
07cd: d0 fb     bne   $07ca
07cf: ce        pop   x
07d0: 3d        inc   x
07d1: c8 08     cmp   x,#$08
07d3: f0 03     beq   $07d8
07d5: 5f a9 07  jmp   $07a9

07d8: 5f 83 06  jmp   $0683

07db: e5 5d 05  mov   a,$055d
07de: f0 03     beq   $07e3
07e0: 5f f3 04  jmp   $04f3

07e3: 8f 5c f2  mov   $f2,#$5c
07e6: 8f ff f3  mov   $f3,#$ff          ; KOF
07e9: 8f 00 f1  mov   $f1,#$00
07ec: 8f c8 fb  mov   $fb,#$c8
07ef: 8f 02 f1  mov   $f1,#$02
07f2: e4 fe     mov   a,$fe
07f4: f0 fc     beq   $07f2
07f6: 8f 6c f2  mov   $f2,#$6c
07f9: 8f a0 f3  mov   $f3,#$a0          ; FLG
07fc: cd 00     mov   x,#$00
07fe: 8f 4d f2  mov   $f2,#$4d
0801: d8 f3     mov   $f3,x             ; EON
0803: 8f 2c f2  mov   $f2,#$2c
0806: d8 f3     mov   $f3,x             ; EVOL(L)
0808: 8f 3c f2  mov   $f2,#$3c
080b: d8 f3     mov   $f3,x             ; EVOL(R)
080d: 3f 0b 10  call  $100b
0810: 5f f3 04  jmp   $04f3

0813: f5 10 01  mov   a,$0110+x
0816: d0 03     bne   $081b
0818: e8 00     mov   a,#$00
081a: 6f        ret

081b: 9b 34     dec   $34+x
081d: f4 34     mov   a,$34+x
081f: 68 01     cmp   a,#$01
0821: f0 16     beq   $0839
0823: 68 ff     cmp   a,#$ff
0825: d0 08     bne   $082f
0827: f4 24     mov   a,$24+x
0829: f0 25     beq   $0850
082b: 9b 24     dec   $24+x
082d: 2f 1b     bra   $084a
082f: 68 00     cmp   a,#$00
0831: d0 17     bne   $084a
0833: f4 24     mov   a,$24+x
0835: f0 19     beq   $0850
0837: 2f 11     bra   $084a
0839: f4 24     mov   a,$24+x
083b: d0 0d     bne   $084a
083d: f5 e0 01  mov   a,$01e0+x
0840: d0 08     bne   $084a
0842: f5 95 0f  mov   a,$0f95+x
0845: 8f 5c f2  mov   $f2,#$5c
0848: c4 f3     mov   $f3,a             ; KOF
084a: 3f bc 09  call  $09bc
084d: e8 00     mov   a,#$00
084f: 6f        ret

0850: f4 44     mov   a,$44+x
0852: fb 54     mov   y,$54+x
0854: da 00     movw  $00,ya
0856: 8d 00     mov   y,#$00
0858: f7 00     mov   a,($00)+y
085a: 30 06     bmi   $0862
; dispatch vcmd (00-7f)
085c: 4d        push  x
085d: 1c        asl   a
085e: 5d        mov   x,a
085f: 1f a5 0f  jmp   ($0fa5+x)
; dispatch note (80-ff) and continue
0862: 3f 67 08  call  $0867
0865: 2f e3     bra   $084a
0867: 68 80     cmp   a,#$80
0869: d0 20     bne   $088b
; vcmd 80 - rest
086b: f5 e0 01  mov   a,$01e0+x
086e: d0 18     bne   $0888
0870: f5 95 0f  mov   a,$0f95+x
0873: 8f 5c f2  mov   $f2,#$5c
0876: c4 f3     mov   $f3,a             ; KOF
0878: 7d        mov   a,x
0879: 28 07     and   a,#$07
087b: 9f        xcn   a
087c: 08 02     or    a,#$02
087e: c4 f2     mov   $f2,a
0880: e8 00     mov   a,#$00
0882: c4 f3     mov   $f3,a             ; P(L)
0884: ab f2     inc   $f2
0886: c4 f3     mov   $f3,a             ; P(H)
0888: 5f 83 09  jmp   $0983

; vcmd 81-ff - note
088b: 68 e0     cmp   a,#$e0
088d: 30 0a     bmi   $0899             ; 81-df - normal note
088f: 68 e1     cmp   a,#$e1
0891: f0 04     beq   $0897
0893: f4 0c     mov   a,$0c+x           ; e0,e2-ff - note by vcmd 1c
0895: 2f 02     bra   $0899
0897: f4 14     mov   a,$14+x           ; e1 - note by vcmd 1d
0899: 60        clrc
089a: 88 24     adc   a,#$24
089c: 95 40 01  adc   a,$0140+x
089f: 1c        asl   a
08a0: 4d        push  x
08a1: fb 64     mov   y,$64+x
08a3: f0 3a     beq   $08df
08a5: 5d        mov   x,a
08a6: cb 04     mov   $04,y
08a8: dd        mov   a,y
08a9: 10 03     bpl   $08ae
08ab: 48 ff     eor   a,#$ff
08ad: bc        inc   a
08ae: fd        mov   y,a
08af: 6d        push  y
08b0: f5 99 11  mov   a,$1199+x
08b3: cf        mul   ya
08b4: cb 02     mov   $02,y
08b6: 8f 00 03  mov   $03,#$00
08b9: ee        pop   y
08ba: f5 9a 11  mov   a,$119a+x
08bd: cf        mul   ya
08be: 7a 02     addw  ya,$02
08c0: cb 03     mov   $03,y
08c2: 4b 03     lsr   $03
08c4: 7c        ror   a
08c5: 4b 03     lsr   $03
08c7: 7c        ror   a
08c8: c4 02     mov   $02,a
08ca: f5 9a 11  mov   a,$119a+x
08cd: fd        mov   y,a
08ce: f5 99 11  mov   a,$1199+x
08d1: f8 04     mov   x,$04
08d3: 30 04     bmi   $08d9
08d5: 7a 02     addw  ya,$02
08d7: 2f 02     bra   $08db
08d9: 9a 02     subw  ya,$02
08db: da 02     movw  $02,ya
08dd: 2f 0b     bra   $08ea
08df: 5d        mov   x,a
08e0: f5 99 11  mov   a,$1199+x
08e3: c4 02     mov   $02,a
08e5: f5 9a 11  mov   a,$119a+x
08e8: c4 03     mov   $03,a
08ea: ae        pop   a
08eb: 5d        mov   x,a
08ec: 28 07     and   a,#$07
08ee: 9f        xcn   a
08ef: c4 f2     mov   $f2,a
08f1: f5 e0 01  mov   a,$01e0+x
08f4: f0 03     beq   $08f9
08f6: 5f 83 09  jmp   $0983

08f9: f5 54 02  mov   a,$0254+x
08fc: 3f 59 0c  call  $0c59
08ff: c4 f3     mov   $f3,a             ; VOL(L)
0901: ab f2     inc   $f2
0903: f5 64 02  mov   a,$0264+x
0906: 3f 59 0c  call  $0c59
0909: c4 f3     mov   $f3,a             ; VOL(R)
090b: ab f2     inc   $f2
090d: f5 50 01  mov   a,$0150+x
0910: 28 01     and   a,#$01
0912: f0 17     beq   $092b
0914: f5 60 01  mov   a,$0160+x
0917: d5 a0 01  mov   $01a0+x,a
091a: f5 70 01  mov   a,$0170+x
091d: d5 00 01  mov   $0100+x,a
0920: f5 80 01  mov   a,$0180+x
0923: d4 94     mov   $94+x,a
0925: f5 90 01  mov   a,$0190+x
0928: d5 c0 01  mov   $01c0+x,a
092b: f5 50 01  mov   a,$0150+x
092e: 28 02     and   a,#$02
0930: f0 1b     beq   $094d
0932: f5 34 02  mov   a,$0234+x
0935: 10 06     bpl   $093d
0937: 48 ff     eor   a,#$ff
0939: bc        inc   a
093a: d5 34 02  mov   $0234+x,a
093d: f5 00 02  mov   a,$0200+x
0940: 5c        lsr   a
0941: d4 a4     mov   $a4+x,a
0943: f5 10 02  mov   a,$0210+x
0946: d4 b4     mov   $b4+x,a
0948: f5 20 02  mov   a,$0220+x
094b: d4 c4     mov   $c4+x,a
094d: e4 02     mov   a,$02
094f: d4 84     mov   $84+x,a
0951: c4 f3     mov   $f3,a             ; P(L)
0953: ab f2     inc   $f2
0955: e4 03     mov   a,$03
0957: d4 74     mov   $74+x,a
0959: c4 f3     mov   $f3,a             ; P(H)
095b: ab f2     inc   $f2
095d: f5 44 02  mov   a,$0244+x
0960: c4 f3     mov   $f3,a             ; SRCN
0962: ab f2     inc   $f2
0964: f5 74 02  mov   a,$0274+x
0967: c4 f3     mov   $f3,a             ; ADSR(1)
0969: ab f2     inc   $f2
096b: f5 84 02  mov   a,$0284+x
096e: c4 f3     mov   $f3,a             ; ADSR(2)
0970: ab f2     inc   $f2
0972: 8f 7f f3  mov   $f3,#$7f          ; GAIN
0975: 8f 5c f2  mov   $f2,#$5c
0978: 8f 00 f3  mov   $f3,#$00          ; KOF
097b: 8f 4c f2  mov   $f2,#$4c
097e: f5 95 0f  mov   a,$0f95+x
0981: c4 f3     mov   $f3,a             ; KOL
0983: f5 20 01  mov   a,$0120+x
0986: f0 0f     beq   $0997
0988: 8f 01 00  mov   $00,#$01
098b: f5 20 01  mov   a,$0120+x
098e: d4 34     mov   $34+x,a
0990: f5 30 01  mov   a,$0130+x
0993: d4 24     mov   $24+x,a
0995: 2f 17     bra   $09ae
0997: 8d 01     mov   y,#$01
0999: f7 00     mov   a,($00)+y
099b: d4 34     mov   $34+x,a
099d: f5 d0 01  mov   a,$01d0+x
09a0: f0 09     beq   $09ab
09a2: f4 34     mov   a,$34+x
09a4: d4 24     mov   $24+x,a
09a6: fc        inc   y
09a7: f7 00     mov   a,($00)+y
09a9: d4 34     mov   $34+x,a
09ab: fc        inc   y
09ac: cb 00     mov   $00,y
09ae: 8f 00 01  mov   $01,#$00
09b1: f4 44     mov   a,$44+x
09b3: fb 54     mov   y,$54+x
09b5: 7a 00     addw  ya,$00            ; advance voice ptr
09b7: db 54     mov   $54+x,y
09b9: d4 44     mov   $44+x,a
09bb: 6f        ret

09bc: f5 50 01  mov   a,$0150+x
09bf: 28 01     and   a,#$01
09c1: d0 03     bne   $09c6
09c3: 5f 39 0a  jmp   $0a39

09c6: f5 a0 01  mov   a,$01a0+x
09c9: f0 0f     beq   $09da
09cb: 68 ff     cmp   a,#$ff
09cd: f0 6a     beq   $0a39
09cf: 9c        dec   a
09d0: d5 a0 01  mov   $01a0+x,a
09d3: d0 64     bne   $0a39
09d5: e8 01     mov   a,#$01
09d7: d5 00 01  mov   $0100+x,a
09da: f5 00 01  mov   a,$0100+x
09dd: 9c        dec   a
09de: d5 00 01  mov   $0100+x,a
09e1: d0 56     bne   $0a39
09e3: f5 70 01  mov   a,$0170+x
09e6: d5 00 01  mov   $0100+x,a
09e9: f5 c0 01  mov   a,$01c0+x
09ec: f0 22     beq   $0a10
09ee: 9c        dec   a
09ef: d5 c0 01  mov   $01c0+x,a
09f2: f5 b0 01  mov   a,$01b0+x
09f5: 48 ff     eor   a,#$ff
09f7: bc        inc   a
09f8: c4 00     mov   $00,a
09fa: 10 04     bpl   $0a00
09fc: e8 ff     mov   a,#$ff
09fe: 2f 02     bra   $0a02
0a00: e8 00     mov   a,#$00
0a02: c4 01     mov   $01,a
0a04: f4 84     mov   a,$84+x
0a06: fb 74     mov   y,$74+x
0a08: 7a 00     addw  ya,$00
0a0a: db 74     mov   $74+x,y
0a0c: d4 84     mov   $84+x,a
0a0e: 2f 0b     bra   $0a1b
0a10: f5 b0 01  mov   a,$01b0+x
0a13: c4 00     mov   $00,a
0a15: 10 e9     bpl   $0a00
0a17: e8 ff     mov   a,#$ff
0a19: 2f e7     bra   $0a02
0a1b: f5 e0 01  mov   a,$01e0+x
0a1e: d0 10     bne   $0a30
0a20: 7d        mov   a,x
0a21: 28 07     and   a,#$07
0a23: 9f        xcn   a
0a24: 08 02     or    a,#$02
0a26: c4 f2     mov   $f2,a
0a28: f4 84     mov   a,$84+x
0a2a: c4 f3     mov   $f3,a             ; P(L)
0a2c: ab f2     inc   $f2
0a2e: cb f3     mov   $f3,y             ; P(H)
0a30: 9b 94     dec   $94+x
0a32: d0 05     bne   $0a39
0a34: e8 ff     mov   a,#$ff
0a36: d5 a0 01  mov   $01a0+x,a
0a39: f5 50 01  mov   a,$0150+x
0a3c: 28 02     and   a,#$02
0a3e: f0 74     beq   $0ab4
0a40: f4 c4     mov   a,$c4+x
0a42: f0 04     beq   $0a48
0a44: 9b c4     dec   $c4+x
0a46: 2f 6c     bra   $0ab4
0a48: 9b b4     dec   $b4+x
0a4a: d0 68     bne   $0ab4
0a4c: f5 10 02  mov   a,$0210+x
0a4f: d4 b4     mov   $b4+x,a
0a51: f5 34 02  mov   a,$0234+x
0a54: c4 00     mov   $00,a
0a56: 10 04     bpl   $0a5c
0a58: e8 ff     mov   a,#$ff
0a5a: 2f 02     bra   $0a5e
0a5c: e8 00     mov   a,#$00
0a5e: c4 01     mov   $01,a
0a60: f4 84     mov   a,$84+x
0a62: fb 74     mov   y,$74+x
0a64: c8 0d     cmp   x,#$0d
0a66: d0 1f     bne   $0a87
0a68: 2d        push  a
0a69: e4 ec     mov   a,$ec
0a6b: 64 ee     cmp   a,$ee
0a6d: d0 09     bne   $0a78
0a6f: e4 ed     mov   a,$ed
0a71: 64 ef     cmp   a,$ef
0a73: d0 03     bne   $0a78
0a75: ae        pop   a
0a76: 2f 0f     bra   $0a87
0a78: ae        pop   a
0a79: 9a ee     subw  ya,$ee
0a7b: 7a ec     addw  ya,$ec
0a7d: 2d        push  a
0a7e: e4 ec     mov   a,$ec
0a80: c4 ee     mov   $ee,a
0a82: e4 ed     mov   a,$ed
0a84: c4 ef     mov   $ef,a
0a86: ae        pop   a
0a87: 7a 00     addw  ya,$00
0a89: db 74     mov   $74+x,y
0a8b: d4 84     mov   $84+x,a
0a8d: f5 e0 01  mov   a,$01e0+x
0a90: d0 10     bne   $0aa2
0a92: 7d        mov   a,x
0a93: 28 07     and   a,#$07
0a95: 9f        xcn   a
0a96: 08 02     or    a,#$02
0a98: c4 f2     mov   $f2,a
0a9a: f4 84     mov   a,$84+x
0a9c: c4 f3     mov   $f3,a             ; P(L)
0a9e: ab f2     inc   $f2
0aa0: cb f3     mov   $f3,y             ; P(H)
0aa2: 9b a4     dec   $a4+x
0aa4: d0 0e     bne   $0ab4
0aa6: f5 00 02  mov   a,$0200+x
0aa9: d4 a4     mov   $a4+x,a
0aab: f5 34 02  mov   a,$0234+x
0aae: 48 ff     eor   a,#$ff
0ab0: bc        inc   a
0ab1: d5 34 02  mov   $0234+x,a
0ab4: f5 50 01  mov   a,$0150+x
0ab7: 28 0c     and   a,#$0c
0ab9: d0 03     bne   $0abe
0abb: 5f 17 0b  jmp   $0b17

0abe: f5 a4 02  mov   a,$02a4+x
0ac1: f0 0a     beq   $0acd
0ac3: f5 a4 02  mov   a,$02a4+x
0ac6: 9c        dec   a
0ac7: d5 a4 02  mov   $02a4+x,a
0aca: 5f 17 0b  jmp   $0b17

0acd: f5 b4 02  mov   a,$02b4+x
0ad0: 9c        dec   a
0ad1: d5 b4 02  mov   $02b4+x,a
0ad4: f0 03     beq   $0ad9
0ad6: 5f 17 0b  jmp   $0b17

0ad9: f5 c4 02  mov   a,$02c4+x
0adc: d5 b4 02  mov   $02b4+x,a
0adf: f5 e0 01  mov   a,$01e0+x
0ae2: d0 14     bne   $0af8
0ae4: 7d        mov   a,x
0ae5: 28 07     and   a,#$07
0ae7: 9f        xcn   a
0ae8: 08 00     or    a,#$00
0aea: c4 f2     mov   $f2,a
0aec: f5 54 02  mov   a,$0254+x
0aef: c4 f3     mov   $f3,a             ; VOL(L)
0af1: f5 64 02  mov   a,$0264+x
0af4: ab f2     inc   $f2
0af6: c4 f3     mov   $f3,a             ; VOL(R)
0af8: f5 e4 02  mov   a,$02e4+x
0afb: 9c        dec   a
0afc: d5 e4 02  mov   $02e4+x,a
0aff: d0 16     bne   $0b17
0b01: f5 50 01  mov   a,$0150+x
0b04: 28 08     and   a,#$08
0b06: d0 0f     bne   $0b17
0b08: f5 f4 02  mov   a,$02f4+x
0b0b: d5 e4 02  mov   $02e4+x,a
0b0e: f5 d4 02  mov   a,$02d4+x
0b11: 48 ff     eor   a,#$ff
0b13: bc        inc   a
0b14: d5 d4 02  mov   $02d4+x,a
0b17: 6f        ret

; vcmd 00 - end of track
0b18: ce        pop   x
0b19: e8 00     mov   a,#$00
0b1b: d5 10 01  mov   $0110+x,a
0b1e: f5 e0 01  mov   a,$01e0+x
0b21: d0 08     bne   $0b2b
0b23: 8f 5c f2  mov   $f2,#$5c
0b26: f5 95 0f  mov   a,$0f95+x
0b29: c4 f3     mov   $f3,a             ; KOF
0b2b: 7d        mov   a,x
0b2c: 68 08     cmp   a,#$08
0b2e: 90 31     bcc   $0b61
0b30: 4d        push  x
0b31: 80        setc
0b32: a8 08     sbc   a,#$08
0b34: 5d        mov   x,a
0b35: e8 00     mov   a,#$00
0b37: d5 e0 01  mov   $01e0+x,a
0b3a: 8f 3d f2  mov   $f2,#$3d
0b3d: f5 95 0f  mov   a,$0f95+x
0b40: 48 ff     eor   a,#$ff
0b42: 24 f3     and   a,$f3
0b44: c4 f3     mov   $f3,a             ; NON
0b46: 8f 4d f2  mov   $f2,#$4d
0b49: f5 94 02  mov   a,$0294+x
0b4c: f0 09     beq   $0b57
0b4e: f5 95 0f  mov   a,$0f95+x
0b51: 04 f3     or    a,$f3
0b53: c4 f3     mov   $f3,a             ; EON
0b55: 2f 09     bra   $0b60
0b57: f5 95 0f  mov   a,$0f95+x
0b5a: 48 ff     eor   a,#$ff
0b5c: 24 f3     and   a,$f3
0b5e: c4 f3     mov   $f3,a             ; EON
0b60: ce        pop   x
0b61: e8 00     mov   a,#$00
0b63: 6f        ret

0b64: ee        pop   y
0b65: ae        pop   a
0b66: ce        pop   x
0b67: 2d        push  a
0b68: 6d        push  y
0b69: 8d 01     mov   y,#$01
0b6b: db 34     mov   $34+x,y
0b6d: e8 00     mov   a,#$00
0b6f: d4 24     mov   $24+x,a
0b71: 6f        ret

; vcmd 01 - set instrument
0b72: 3f 64 0b  call  $0b64
0b75: 3f 8b 0b  call  $0b8b
0b78: 8f 02 00  mov   $00,#$02
0b7b: 8f 00 01  mov   $01,#$00
; add $00/1 to reading ptr
0b7e: f4 44     mov   a,$44+x
0b80: fb 54     mov   y,$54+x
0b82: 7a 00     addw  ya,$00
0b84: db 54     mov   $54+x,y
0b86: d4 44     mov   $44+x,a
0b88: e8 01     mov   a,#$01
0b8a: 6f        ret

0b8b: 4d        push  x
0b8c: f7 00     mov   a,($00)+y         ; arg1
0b8e: 5d        mov   x,a
0b8f: f5 60 05  mov   a,$0560+x         ; read SRCN table
0b92: ce        pop   x
0b93: d5 44 02  mov   $0244+x,a         ; SRCN
0b96: 6f        ret

; vcmd 22 - set voice params
0b97: 3f 64 0b  call  $0b64
0b9a: 3f 8b 0b  call  $0b8b             ; instrument
0b9d: fc        inc   y
0b9e: f7 00     mov   a,($00)+y
0ba0: d5 40 01  mov   $0140+x,a         ; transpose
0ba3: fc        inc   y
0ba4: f7 00     mov   a,($00)+y
0ba6: d4 64     mov   $64+x,a           ; detune
0ba8: fc        inc   y
0ba9: 3f c2 0b  call  $0bc2             ; set L/R volume
0bac: fc        inc   y
0bad: 3f 4e 0e  call  $0e4e             ; ADSR envelope
0bb0: 8f 08 00  mov   $00,#$08
0bb3: 5f 7b 0b  jmp   $0b7b

; vcmd 02 - set L/R volume
0bb6: 3f 64 0b  call  $0b64
0bb9: 3f c2 0b  call  $0bc2
0bbc: 8f 03 00  mov   $00,#$03
0bbf: 5f 7b 0b  jmp   $0b7b
; set volume - stereo or mono?
0bc2: e4 1d     mov   a,$1d
0bc4: d0 0c     bne   $0bd2
; stereo
0bc6: f7 00     mov   a,($00)+y
0bc8: d5 54 02  mov   $0254+x,a         ; set left volume
0bcb: fc        inc   y
0bcc: f7 00     mov   a,($00)+y
0bce: d5 64 02  mov   $0264+x,a         ; set right volume
0bd1: 6f        ret
; mono (L+R)/2
0bd2: f7 00     mov   a,($00)+y
0bd4: 10 03     bpl   $0bd9
0bd6: 48 ff     eor   a,#$ff
0bd8: bc        inc   a
0bd9: 5c        lsr   a
0bda: c4 03     mov   $03,a
0bdc: fc        inc   y
0bdd: 60        clrc
0bde: f7 00     mov   a,($00)+y
0be0: 10 03     bpl   $0be5
0be2: 48 ff     eor   a,#$ff
0be4: bc        inc   a
0be5: 5c        lsr   a
0be6: 60        clrc
0be7: 84 03     adc   a,$03
0be9: d5 54 02  mov   $0254+x,a
0bec: d5 64 02  mov   $0264+x,a
0bef: 6f        ret

; vcmd 23 - set L/R volume (center)
0bf0: 3f 64 0b  call  $0b64
0bf3: d5 54 02  mov   $0254+x,a
0bf6: 3f cc 0b  call  $0bcc
0bf9: f5 64 02  mov   a,$0264+x
0bfc: d5 54 02  mov   $0254+x,a
0bff: 5f 78 0b  jmp   $0b78

; vcmd 20 - set volume from preset 1
0c02: 3f 64 0b  call  $0b64
0c05: e5 b8 04  mov   a,$04b8
0c08: d5 54 02  mov   $0254+x,a
0c0b: e5 b9 04  mov   a,$04b9
0c0e: d5 64 02  mov   $0264+x,a
0c11: e4 1d     mov   a,$1d
0c13: d0 19     bne   $0c2e
0c15: 5f d6 0e  jmp   $0ed6

; vcmd 31 - set volume from preset 2
0c18: 3f 64 0b  call  $0b64
0c1b: e5 ba 04  mov   a,$04ba
0c1e: d5 54 02  mov   $0254+x,a
0c21: e5 bb 04  mov   a,$04bb
0c24: d5 64 02  mov   $0264+x,a
0c27: e4 1d     mov   a,$1d
0c29: d0 03     bne   $0c2e
0c2b: 5f d6 0e  jmp   $0ed6

0c2e: f5 54 02  mov   a,$0254+x
0c31: 10 03     bpl   $0c36
0c33: 48 ff     eor   a,#$ff
0c35: bc        inc   a
0c36: 5c        lsr   a
0c37: c4 00     mov   $00,a
0c39: f5 64 02  mov   a,$0264+x
0c3c: 10 03     bpl   $0c41
0c3e: 48 ff     eor   a,#$ff
0c40: bc        inc   a
0c41: 5c        lsr   a
0c42: 60        clrc
0c43: 84 00     adc   a,$00
0c45: d5 54 02  mov   $0254+x,a
0c48: d5 64 02  mov   $0264+x,a
0c4b: 5f d6 0e  jmp   $0ed6

; vcmd 24 - master volume
0c4e: 3f 64 0b  call  $0b64
0c51: f7 00     mov   a,($00)+y
0c53: c5 b6 04  mov   $04b6,a
0c56: 5f 78 0b  jmp   $0b78

0c59: 4d        push  x
0c5a: ec b6 04  mov   y,$04b6
0c5d: c8 08     cmp   x,#$08
0c5f: b0 0e     bcs   $0c6f
0c61: 68 00     cmp   a,#$00
0c63: 30 0c     bmi   $0c71
0c65: cf        mul   ya
0c66: cd 64     mov   x,#$64
0c68: 9e        div   ya,x
0c69: 68 7f     cmp   a,#$7f
0c6b: 30 02     bmi   $0c6f
0c6d: e8 7f     mov   a,#$7f
0c6f: ce        pop   x
0c70: 6f        ret

0c71: 48 ff     eor   a,#$ff
0c73: bc        inc   a
0c74: cf        mul   ya
0c75: cd 64     mov   x,#$64
0c77: 9e        div   ya,x
0c78: 68 7f     cmp   a,#$7f
0c7a: 30 02     bmi   $0c7e
0c7c: e8 7f     mov   a,#$7f
0c7e: 48 ff     eor   a,#$ff
0c80: bc        inc   a
0c81: ce        pop   x
0c82: 6f        ret

; vcmd 1e - set volume preset
0c83: 3f 64 0b  call  $0b64
0c86: f7 00     mov   a,($00)+y
0c88: c5 b8 04  mov   $04b8,a           ; volume preset 1 L
0c8b: fc        inc   y
0c8c: f7 00     mov   a,($00)+y
0c8e: c5 b9 04  mov   $04b9,a           ; volume preset 1 R
0c91: fc        inc   y
0c92: f7 00     mov   a,($00)+y
0c94: c5 ba 04  mov   $04ba,a           ; volume preset 2 L
0c97: fc        inc   y
0c98: f7 00     mov   a,($00)+y
0c9a: c5 bb 04  mov   $04bb,a           ; volume preset 1 R
0c9d: 5f 76 0f  jmp   $0f76

; vcmd 1f - echo delay
0ca0: 3f 64 0b  call  $0b64
0ca3: f7 00     mov   a,($00)+y
0ca5: 3f f0 10  call  $10f0
0ca8: 8f 7d f2  mov   $f2,#$7d
0cab: 60        clrc
0cac: 5c        lsr   a
0cad: c4 f3     mov   $f3,a             ; set echo delay from arg1
0caf: 8f 6d f2  mov   $f2,#$6d
0cb2: 3c        rol   a
0cb3: 3c        rol   a
0cb4: 3c        rol   a
0cb5: c4 00     mov   $00,a
0cb7: e8 ff     mov   a,#$ff
0cb9: 80        setc
0cba: a4 00     sbc   a,$00
0cbc: c4 f3     mov   $f3,a             ; ESA
0cbe: c5 b7 04  mov   $04b7,a
0cc1: fd        mov   y,a
0cc2: e8 00     mov   a,#$00
0cc4: da 00     movw  $00,ya
0cc6: fd        mov   y,a
0cc7: d7 00     mov   ($00)+y,a
0cc9: fc        inc   y
0cca: d0 fb     bne   $0cc7
0ccc: ab 01     inc   $01
0cce: eb 01     mov   y,$01
0cd0: ad 00     cmp   y,#$00
0cd2: d0 f2     bne   $0cc6
0cd4: 5f 78 0b  jmp   $0b78

; vcmd 03 - jump
0cd7: 3f 64 0b  call  $0b64
0cda: f7 00     mov   a,($00)+y
0cdc: d4 44     mov   $44+x,a
0cde: fc        inc   y
0cdf: f7 00     mov   a,($00)+y
0ce1: d4 54     mov   $54+x,a           ; set reading ptr $44/54 from arg1/2
0ce3: e8 01     mov   a,#$01
0ce5: 6f        ret

; vcmd 04 - call subroutine
0ce6: 3f 64 0b  call  $0b64
0ce9: f7 00     mov   a,($00)+y
0ceb: c4 04     mov   $04,a
0ced: fc        inc   y
0cee: 3f 1c 0d  call  $0d1c
;
0cf1: d6 34 03  mov   $0334+y,a
0cf4: bb d4     inc   $d4+x
0cf6: ba 02     movw  ya,$02
0cf8: d4 44     mov   $44+x,a
0cfa: db 54     mov   $54+x,y
0cfc: e8 01     mov   a,#$01
0cfe: 6f        ret

; vcmd 21 - call subroutine (once)
0cff: 3f 64 0b  call  $0b64
0d02: 8f 01 04  mov   $04,#$01
0d05: 3f 1c 0d  call  $0d1c
0d08: f0 04     beq   $0d0e
0d0a: 9c        dec   a
0d0b: 5f f1 0c  jmp   $0cf1

0d0e: 9c        dec   a
0d0f: d6 34 03  mov   $0334+y,a
0d12: f6 b4 03  mov   a,$03b4+y
0d15: 9c        dec   a
0d16: d6 b4 03  mov   $03b4+y,a
0d19: 5f f4 0c  jmp   $0cf4

0d1c: f7 00     mov   a,($00)+y
0d1e: c4 02     mov   $02,a
0d20: fc        inc   y
0d21: f7 00     mov   a,($00)+y
0d23: c4 03     mov   $03,a
0d25: fb d4     mov   y,$d4+x
0d27: e4 04     mov   a,$04
0d29: d6 34 04  mov   $0434+y,a
0d2c: f4 54     mov   a,$54+x
0d2e: d6 b4 03  mov   $03b4+y,a
0d31: f4 44     mov   a,$44+x
0d33: 6f        ret

; vcmd 05 - end subroutine
0d34: 3f 64 0b  call  $0b64
0d37: 9b d4     dec   $d4+x
0d39: fb d4     mov   y,$d4+x
0d3b: f6 b4 03  mov   a,$03b4+y
0d3e: d4 54     mov   $54+x,a
0d40: f6 34 03  mov   a,$0334+y
0d43: d4 44     mov   $44+x,a
0d45: f6 34 04  mov   a,$0434+y
0d48: 9c        dec   a
0d49: d6 34 04  mov   $0434+y,a
0d4c: f0 1c     beq   $0d6a
0d4e: f4 44     mov   a,$44+x
0d50: fb 54     mov   y,$54+x
0d52: da 00     movw  $00,ya
0d54: 8d 02     mov   y,#$02
0d56: f7 00     mov   a,($00)+y
0d58: c4 02     mov   $02,a
0d5a: fc        inc   y
0d5b: f7 00     mov   a,($00)+y
0d5d: c4 03     mov   $03,a
0d5f: bb d4     inc   $d4+x
0d61: ba 02     movw  ya,$02
0d63: d4 44     mov   $44+x,a
0d65: db 54     mov   $54+x,y
0d67: e8 01     mov   a,#$01
0d69: 6f        ret

0d6a: 8f 04 00  mov   $00,#$04
0d6d: 5f 7b 0b  jmp   $0b7b

; vcmd 06 - default duration on
0d70: 3f 64 0b  call  $0b64
0d73: f7 00     mov   a,($00)+y
0d75: d5 20 01  mov   $0120+x,a
0d78: f5 d0 01  mov   a,$01d0+x
0d7b: f0 0c     beq   $0d89
0d7d: f5 20 01  mov   a,$0120+x
0d80: d5 30 01  mov   $0130+x,a
0d83: fc        inc   y
0d84: f7 00     mov   a,($00)+y
0d86: d5 20 01  mov   $0120+x,a
0d89: fc        inc   y
0d8a: cb 00     mov   $00,y
0d8c: 5f 7b 0b  jmp   $0b7b

; vcmd 07 - default duration off
0d8f: ce        pop   x
0d90: e8 00     mov   a,#$00
0d92: d5 20 01  mov   $0120+x,a
0d95: d5 30 01  mov   $0130+x,a
0d98: 5f df 0d  jmp   $0ddf

; vcmd 08 - pitch slide up
0d9b: ce        pop   x
0d9c: 8d 04     mov   y,#$04
0d9e: f7 00     mov   a,($00)+y
0da0: 2f 08     bra   $0daa
; vcmd 09 - pitch slide down
0da2: ce        pop   x
0da3: 8d 04     mov   y,#$04
0da5: f7 00     mov   a,($00)+y
0da7: 48 ff     eor   a,#$ff
0da9: bc        inc   a
0daa: d5 b0 01  mov   $01b0+x,a         ; arg4 (delta, signed)
0dad: f5 50 01  mov   a,$0150+x
0db0: 08 01     or    a,#$01
0db2: d5 50 01  mov   $0150+x,a
0db5: 3f 69 0b  call  $0b69
0db8: f7 00     mov   a,($00)+y
0dba: d5 60 01  mov   $0160+x,a         ; arg1 (delay)
0dbd: fc        inc   y
0dbe: f7 00     mov   a,($00)+y
0dc0: d5 70 01  mov   $0170+x,a         ; arg2 (interval)
0dc3: fc        inc   y
0dc4: f7 00     mov   a,($00)+y
0dc6: d5 80 01  mov   $0180+x,a         ; arg3 (times)
0dc9: fc        inc   y
0dca: fc        inc   y
0dcb: f7 00     mov   a,($00)+y
0dcd: d5 90 01  mov   $0190+x,a         ; arg5 (times-reverse)
0dd0: 8f 06 00  mov   $00,#$06
0dd3: 5f 7b 0b  jmp   $0b7b

; vcmd 0a - pitch slide off
0dd6: ce        pop   x
0dd7: f5 50 01  mov   a,$0150+x
0dda: 28 fe     and   a,#$fe
0ddc: d5 50 01  mov   $0150+x,a
0ddf: e8 01     mov   a,#$01
0de1: c4 00     mov   $00,a
0de3: d4 34     mov   $34+x,a
0de5: 9c        dec   a
0de6: d4 24     mov   $24+x,a
0de8: 5f 7b 0b  jmp   $0b7b

; vcmd 0b - set tempo
0deb: ce        pop   x
0dec: 8d 01     mov   y,#$01
0dee: f7 00     mov   a,($00)+y
0df0: c4 1f     mov   $1f,a
0df2: 3f 69 0b  call  $0b69
0df5: 5f 78 0b  jmp   $0b78

; vcmd 0c - add tempo
0df8: ce        pop   x
0df9: 8d 01     mov   y,#$01
0dfb: f7 00     mov   a,($00)+y
0dfd: 60        clrc
0dfe: 84 1f     adc   a,$1f
0e00: c4 1f     mov   $1f,a
0e02: 5f f2 0d  jmp   $0df2

; vcmd 0e - vibrato off
0e05: ce        pop   x
0e06: f5 50 01  mov   a,$0150+x
0e09: 28 fd     and   a,#$fd
0e0b: d5 50 01  mov   $0150+x,a
0e0e: 5f df 0d  jmp   $0ddf

; vcmd 0d - vibrato (short)
0e11: ce        pop   x
0e12: e8 00     mov   a,#$00
0e14: 3f 25 0e  call  $0e25
0e17: 5f 6a 0d  jmp   $0d6a

; vcmd 0f - vibrato
0e1a: ce        pop   x
0e1b: 8d 04     mov   y,#$04
0e1d: f7 00     mov   a,($00)+y
0e1f: 3f 25 0e  call  $0e25
0e22: 5f 76 0f  jmp   $0f76

0e25: d5 20 02  mov   $0220+x,a         ; arg4 - vibrato delay (ticks)
0e28: f5 50 01  mov   a,$0150+x
0e2b: 08 02     or    a,#$02
0e2d: d5 50 01  mov   $0150+x,a
0e30: 3f 69 0b  call  $0b69
0e33: f7 00     mov   a,($00)+y
0e35: d5 00 02  mov   $0200+x,a         ; arg1 - vibrato rate/depth (total steps, >= 2)
0e38: fc        inc   y
0e39: f7 00     mov   a,($00)+y
0e3b: d5 10 02  mov   $0210+x,a         ; arg2 - vibrato rate (ticks per step)
0e3e: fc        inc   y
0e3f: f7 00     mov   a,($00)+y
0e41: d5 34 02  mov   $0234+x,a         ; arg3 - vibrato depth (pitch freq step)
0e44: 6f        ret

; vcmd 10 - set ADSR envelope
0e45: 3f 64 0b  call  $0b64
0e48: 3f 4e 0e  call  $0e4e
0e4b: 5f bc 0b  jmp   $0bbc

0e4e: f7 00     mov   a,($00)+y
0e50: d5 74 02  mov   $0274+x,a
0e53: fc        inc   y
0e54: f7 00     mov   a,($00)+y
0e56: d5 84 02  mov   $0284+x,a
0e59: 6f        ret

; vcmd 1c - set note for e0
0e5a: ce        pop   x
0e5b: 8d 01     mov   y,#$01
0e5d: f7 00     mov   a,($00)+y
0e5f: d4 0c     mov   $0c+x,a
0e61: 5f 6b 0e  jmp   $0e6b

; vcmd 1d - set note for e1
0e64: ce        pop   x
0e65: 8d 01     mov   y,#$01
0e67: f7 00     mov   a,($00)+y
0e69: d4 14     mov   $14+x,a
0e6b: 3f 69 0b  call  $0b69
0e6e: 5f 78 0b  jmp   $0b78

; vcmd 12 - detune
0e71: 3f 64 0b  call  $0b64
0e74: f7 00     mov   a,($00)+y
0e76: d4 64     mov   $64+x,a
0e78: 5f 78 0b  jmp   $0b78

; vcmd 13 - transpose
0e7b: 3f 64 0b  call  $0b64
0e7e: d4 24     mov   $24+x,a
0e80: f7 00     mov   a,($00)+y
0e82: d5 40 01  mov   $0140+x,a
0e85: 5f 78 0b  jmp   $0b78

; vcmd 14 - transpose (relative)
0e88: 3f 64 0b  call  $0b64
0e8b: f7 00     mov   a,($00)+y
0e8d: 60        clrc
0e8e: 95 40 01  adc   a,$0140+x
0e91: d5 40 01  mov   $0140+x,a
0e94: 5f 78 0b  jmp   $0b78

; vcmd 15 - echo param
0e97: ce        pop   x
0e98: 8f 0d f2  mov   $f2,#$0d
0e9b: 8d 01     mov   y,#$01
0e9d: f7 00     mov   a,($00)+y
0e9f: c4 f3     mov   $f3,a             ; EDL
0ea1: fc        inc   y
0ea2: 8f 2c f2  mov   $f2,#$2c
0ea5: f7 00     mov   a,($00)+y
0ea7: c5 32 02  mov   $0232,a
0eaa: c4 f3     mov   $f3,a             ; EVOL(L)
0eac: 8f 3c f2  mov   $f2,#$3c
0eaf: fc        inc   y
0eb0: f7 00     mov   a,($00)+y
0eb2: c5 33 02  mov   $0233,a
0eb5: c4 f3     mov   $f3,a
0eb7: e8 00     mov   a,#$00
0eb9: c5 b5 04  mov   $04b5,a
0ebc: 8f 6c f2  mov   $f2,#$6c
0ebf: c4 f3     mov   $f3,a             ; EVOL(R)
0ec1: 5f 6a 0d  jmp   $0d6a

; vcmd 16 - voice echo on
0ec4: 3f 64 0b  call  $0b64
0ec7: 8f 4d f2  mov   $f2,#$4d
0eca: f5 95 0f  mov   a,$0f95+x
0ecd: 04 f3     or    a,$f3
0ecf: c4 f3     mov   $f3,a             ; EON
0ed1: e8 01     mov   a,#$01
0ed3: d5 94 02  mov   $0294+x,a
0ed6: 8f 01 00  mov   $00,#$01
0ed9: 5f 7b 0b  jmp   $0b7b

; vcmd 17,30,32 - voice echo off
0edc: ce        pop   x
0edd: 8f 4d f2  mov   $f2,#$4d
0ee0: f5 95 0f  mov   a,$0f95+x
0ee3: 48 ff     eor   a,#$ff
0ee5: 24 f3     and   a,$f3
0ee7: c4 f3     mov   $f3,a
0ee9: e8 00     mov   a,#$00
0eeb: d5 94 02  mov   $0294+x,a
0eee: d4 24     mov   $24+x,a
0ef0: bc        inc   a
0ef1: d4 34     mov   $34+x,a
0ef3: 5f d6 0e  jmp   $0ed6

; vcmd 18 - set echo filter
0ef6: 3f 64 0b  call  $0b64
0ef9: 8f 0f f2  mov   $f2,#$0f
0efc: f7 00     mov   a,($00)+y
0efe: c4 f3     mov   $f3,a
0f00: fc        inc   y
0f01: 60        clrc
0f02: 98 10 f2  adc   $f2,#$10
0f05: 78 8f f2  cmp   $f2,#$8f
0f08: d0 f2     bne   $0efc
0f0a: 8f 09 00  mov   $00,#$09
0f0d: 5f 7b 0b  jmp   $0b7b

; vcmd 19 - set noise clock
0f10: 3f 64 0b  call  $0b64
0f13: f7 00     mov   a,($00)+y
0f15: c5 b4 04  mov   $04b4,a
0f18: 05 b5 04  or    a,$04b5
0f1b: 8f 6c f2  mov   $f2,#$6c
0f1e: c4 f3     mov   $f3,a
0f20: 5f 78 0b  jmp   $0b78

; vcmd 1a - noise on
0f23: ce        pop   x
0f24: 8f 3d f2  mov   $f2,#$3d
0f27: f5 95 0f  mov   a,$0f95+x
0f2a: 04 f3     or    a,$f3
0f2c: c4 f3     mov   $f3,a             ; NON
0f2e: 3f 69 0b  call  $0b69
0f31: 5f d6 0e  jmp   $0ed6

; vcmd 1b - noise off
0f34: ce        pop   x
0f35: 8f 3d f2  mov   $f2,#$3d
0f38: f5 95 0f  mov   a,$0f95+x
0f3b: 48 ff     eor   a,#$ff
0f3d: 24 f3     and   a,$f3             ; NON
0f3f: c4 f3     mov   $f3,a
0f41: 5f 2e 0f  jmp   $0f2e

; vcmd 26 - pitch slide down (simpler)
0f44: ce        pop   x
0f45: 8d 04     mov   y,#$04
0f47: f7 00     mov   a,($00)+y
0f49: 48 ff     eor   a,#$ff
0f4b: bc        inc   a
0f4c: 2f 05     bra   $0f53
; vcmd 27 - pitch slide up (simpler)
0f4e: ce        pop   x
0f4f: 8d 04     mov   y,#$04
0f51: f7 00     mov   a,($00)+y         ; arg4 (pitch slide delta, signed)
0f53: d5 b0 01  mov   $01b0+x,a
0f56: f5 50 01  mov   a,$0150+x
0f59: 08 01     or    a,#$01
0f5b: d5 50 01  mov   $0150+x,a
0f5e: 3f 69 0b  call  $0b69
0f61: f7 00     mov   a,($00)+y
0f63: d5 60 01  mov   $0160+x,a         ; arg1 (pitch slide delay)
0f66: fc        inc   y
0f67: f7 00     mov   a,($00)+y
0f69: d5 70 01  mov   $0170+x,a         ; arg2 (pitch slide interval)
0f6c: fc        inc   y
0f6d: f7 00     mov   a,($00)+y
0f6f: d5 90 01  mov   $0190+x,a         ; arg3 (pitch slide times-inverse)
0f72: 1c        asl   a
0f73: d5 80 01  mov   $0180+x,a         ; arg3 * 2 (pitch slide times)
0f76: 8f 05 00  mov   $00,#$05
0f79: 5f 7b 0b  jmp   $0b7b

; vcmd 2b - long duration on
0f7c: 3f 64 0b  call  $0b64
0f7f: bc        inc   a
0f80: d5 d0 01  mov   $01d0+x,a
0f83: 5f d6 0e  jmp   $0ed6

; vcmd 2c - long duration off
0f86: 3f 64 0b  call  $0b64
0f89: d5 d0 01  mov   $01d0+x,a
0f8c: 5f d6 0e  jmp   $0ed6

0f8f: 8f 07 00  mov   $00,#$07
0f92: 5f 7b 0b  jmp   $0b7b

0f95: db $01,$02,$04,$08,$10,$20,$40,$80
0f9d: db $01,$02,$04,$08,$10,$20,$40,$80

0fa5: dw $0b18  ; 00 - end of track
0fa7: dw $0b72  ; 01 - set instrument
0fa9: dw $0bb6  ; 02 - set L/R volume
0fab: dw $0cd7  ; 03 - goto
0fad: dw $0ce6  ; 04 - call subroutine
0faf: dw $0d34  ; 05 - end subroutine
0fb1: dw $0d70  ; 06 - default duration on
0fb3: dw $0d8f  ; 07 - default duration off
0fb5: dw $0d9b  ; 08 - pitch slide up
0fb7: dw $0da2  ; 09 - pitch slide down
0fb9: dw $0dd6  ; 0a - pitch slide off
0fbb: dw $0deb  ; 0b - set tempo
0fbd: dw $0df8  ; 0c - add tempo
0fbf: dw $0e11  ; 0d - vibrato (short)
0fc1: dw $0e05  ; 0e - vibrato off
0fc3: dw $0e1a  ; 0f - vibrato
0fc5: dw $0e45  ; 10 - set ADSR envelope
0fc7: dw $0000  ; 11
0fc9: dw $0e71  ; 12 - detune
0fcb: dw $0e7b  ; 13 - transpose
0fcd: dw $0e88  ; 14 - transpose (relative)
0fcf: dw $0e97  ; 15 - echo param
0fd1: dw $0ec4  ; 16 - voice echo on
0fd3: dw $0edc  ; 17 - voice echo off
0fd4: dw $0ef6  ; 18 - set echo filter
0fd7: dw $0f10  ; 19 - set noise clock
0fd9: dw $0f23  ; 1a - noise on
0fdb: dw $0f34  ; 1b - noise off
0fdd: dw $0e5a  ; 1c - set note for e0
0fdf: dw $0e64  ; 1d - set note for e1
0fe1: dw $0c83  ; 1e - set volume preset
0fe3: dw $0ca0  ; 1f - echo delay
0fe5: dw $0c02  ; 20 - set volume from preset 1
0fe7: dw $0cff  ; 21 - call subroutine (once)
0fe9: dw $0b97  ; 22 - set voice params
0feb: dw $0bf0  ; 23 - set L/R volume (center)
0fed: dw $0c4e  ; 24 - master volume
0fef: dw $0000  ; 25
0ff1: dw $0f44  ; 26 - pitch slide down (simpler)
0ff3: dw $0f4e  ; 27 - pitch slide up (simpler)
0ff5: dw $0000  ; 28
0ff7: dw $0000  ; 29
0ff9: dw $0000  ; 2a
0ffb: dw $0f7c  ; 2b - long duration on
0ffd: dw $0f86  ; 2c - long duration off
0fff: dw $0000  ; 2d
1001: dw $0000  ; 2e
1003: dw $0000  ; 2f
1005: dw $0edc  ; 30 - voice echo off (alias, probably not used?)
1007: dw $0c18  ; 31 - set volume from preset 2
1009: dw $0edc  ; 32 - voice echo off (alias, probably not used?)

100b: e8 00     mov   a,#$00
100d: c4 ec     mov   $ec,a
100f: c4 ed     mov   $ed,a
1011: c4 ee     mov   $ee,a
1013: c4 ef     mov   $ef,a
1015: 8f 6c f2  mov   $f2,#$6c
1018: 8f e0 f3  mov   $f3,#$e0          ; FLG reset
101b: 8f 2c f2  mov   $f2,#$2c
101e: c5 32 02  mov   $0232,a
1021: c4 f3     mov   $f3,a             ; EVOL(L)
1023: 8f 3c f2  mov   $f2,#$3c
1026: c5 33 02  mov   $0233,a
1029: c4 f3     mov   $f3,a             ; EVOL(R)
102b: 8f 0d f2  mov   $f2,#$0d
102e: c4 f3     mov   $f3,a             ; EFB
1030: 8f 4c f2  mov   $f2,#$4c
1033: c4 f3     mov   $f3,a             ; KOL
1035: 8f 5c f2  mov   $f2,#$5c
1038: 8f ff f3  mov   $f3,#$ff          ; KOF
103b: 8f 2d f2  mov   $f2,#$2d
103e: c4 f3     mov   $f3,a             ; PMON
1040: 8f 3d f2  mov   $f2,#$3d
1043: c4 f3     mov   $f3,a             ; NON
1045: 8f 4d f2  mov   $f2,#$4d
1048: c4 f3     mov   $f3,a             ; EON
104a: e8 3c     mov   a,#$3c
104c: c5 30 02  mov   $0230,a
104f: c5 31 02  mov   $0231,a
1052: 8f 0c f2  mov   $f2,#$0c
1055: c4 f3     mov   $f3,a             ; MVOL(L)
1057: 8f 1c f2  mov   $f2,#$1c
105a: c4 f3     mov   $f3,a             ; MVOL(R)
105c: e8 64     mov   a,#$64
105e: c5 b6 04  mov   $04b6,a
1061: 8f 5d f2  mov   $f2,#$5d
1064: 8f 31 f3  mov   $f3,#$31          ; DIR
1067: 8d 08     mov   y,#$08
1069: 8f 00 f2  mov   $f2,#$00
106c: e8 7f     mov   a,#$7f
106e: c4 f3     mov   $f3,a             ; VOL(L)
1070: ab f2     inc   $f2
1072: c4 f3     mov   $f3,a             ; VOL(R)
1074: 60        clrc
1075: 98 04 f2  adc   $f2,#$04
1078: e8 00     mov   a,#$00
107a: c4 f3     mov   $f3,a             ; ADSR(1)
107c: ab f2     inc   $f2
107e: c4 f3     mov   $f3,a             ; ADSR(2)
1080: ab f2     inc   $f2
1082: 8f ff f3  mov   $f3,#$ff          ; GAIN
1085: 60        clrc
1086: 98 09 f2  adc   $f2,#$09
1089: dc        dec   y
108a: d0 e0     bne   $106c
108c: 8f ff e7  mov   $e7,#$ff
108f: 8f ff e8  mov   $e8,#$ff
1092: e8 64     mov   a,#$64
1094: c4 e4     mov   $e4,a
1096: e8 20     mov   a,#$20
1098: c5 b5 04  mov   $04b5,a
109b: 8f 08 00  mov   $00,#$08
109e: cd 00     mov   x,#$00
10a0: 8d 00     mov   y,#$00
10a2: cb 0a     mov   $0a,y
10a4: cc b4 04  mov   $04b4,y
10a7: cb 01     mov   $01,y
10a9: e8 01     mov   a,#$01
10ab: d4 34     mov   $34+x,a
10ad: d5 10 01  mov   $0110+x,a
10b0: f7 e5     mov   a,($e5)+y
10b2: d4 44     mov   $44+x,a
10b4: fc        inc   y
10b5: f7 e5     mov   a,($e5)+y
10b7: d4 54     mov   $54+x,a           ; set pointer for each track
10b9: e4 01     mov   a,$01
10bb: d4 d4     mov   $d4+x,a
10bd: e8 00     mov   a,#$00
10bf: d5 d0 01  mov   $01d0+x,a
10c2: d4 24     mov   $24+x,a
10c4: d5 20 01  mov   $0120+x,a
10c7: d5 30 01  mov   $0130+x,a
10ca: d5 50 01  mov   $0150+x,a
10cd: d5 40 01  mov   $0140+x,a
10d0: d4 64     mov   $64+x,a
10d2: d5 e0 01  mov   $01e0+x,a
10d5: d5 94 02  mov   $0294+x,a
10d8: 3d        inc   x
10d9: fc        inc   y
10da: 60        clrc
10db: 98 08 01  adc   $01,#$08
10de: 6e 00 c8  dbnz  $00,$10a9
10e1: f7 e5     mov   a,($e5)+y
10e3: c4 1f     mov   $1f,a
10e5: fc        inc   y
10e6: f7 e5     mov   a,($e5)+y
10e8: c4 22     mov   $22,a
10ea: e8 00     mov   a,#$00
10ec: c4 1e     mov   $1e,a
10ee: c4 21     mov   $21,a
10f0: 8f 6c f2  mov   $f2,#$6c
10f3: 8f 20 f3  mov   $f3,#$20          ; FLG
10f6: 6f        ret

10f7: 2d        push  a
10f8: 68 60     cmp   a,#$60
10fa: 10 08     bpl   $1104
10fc: 80        setc
10fd: a5 10 24  sbc   a,$2410
1100: 10 0b     bpl   $110d
1102: 2f 0d     bra   $1111
1104: 80        setc
1105: a8 60     sbc   a,#$60
1107: 80        setc
1108: a5 94 2e  sbc   a,$2e94
110b: 30 04     bmi   $1111
110d: ae        pop   a
110e: e8 00     mov   a,#$00
1110: 2d        push  a
1111: ae        pop   a
1112: 1c        asl   a
1113: 2d        push  a
1114: e8 01     mov   a,#$01
1116: d5 e0 01  mov   $01e0+x,a
1119: 8f 3d f2  mov   $f2,#$3d
111c: f5 95 0f  mov   a,$0f95+x
111f: 48 ff     eor   a,#$ff
1121: 24 f3     and   a,$f3
1123: c4 f3     mov   $f3,a             ; NON
1125: 7d        mov   a,x
1126: 60        clrc
1127: 88 08     adc   a,#$08
1129: 5d        mov   x,a
112a: 1c        asl   a
112b: 1c        asl   a
112c: 1c        asl   a
112d: d4 d4     mov   $d4+x,a
112f: e8 01     mov   a,#$01
1131: d5 10 01  mov   $0110+x,a
1134: 9c        dec   a
1135: d5 20 01  mov   $0120+x,a
1138: d5 30 01  mov   $0130+x,a
113b: d4 24     mov   $24+x,a
113d: d5 d0 01  mov   $01d0+x,a
1140: d5 e0 01  mov   $01e0+x,a
1143: d5 50 01  mov   $0150+x,a
1146: d5 40 01  mov   $0140+x,a
1149: d5 94 02  mov   $0294+x,a
114c: d4 64     mov   $64+x,a
114e: e8 7f     mov   a,#$7f
1150: d5 54 02  mov   $0254+x,a
1153: d5 64 02  mov   $0264+x,a
1156: d5 14 03  mov   $0314+x,a
1159: d5 24 03  mov   $0324+x,a
115c: e8 8e     mov   a,#$8e
115e: d5 74 02  mov   $0274+x,a
1161: e8 e0     mov   a,#$e0
1163: d5 84 02  mov   $0284+x,a
1166: ae        pop   a
1167: 68 c0     cmp   a,#$c0
1169: b0 0e     bcs   $1179
116b: fd        mov   y,a
116c: f6 12 24  mov   a,$2412+y
116f: d4 44     mov   $44+x,a
1171: fc        inc   y
1172: f6 12 24  mov   a,$2412+y
1175: d4 54     mov   $54+x,a
1177: 2f 0f     bra   $1188
1179: 80        setc
117a: a8 c0     sbc   a,#$c0
117c: fd        mov   y,a
117d: f6 96 2e  mov   a,$2e96+y
1180: d4 44     mov   $44+x,a
1182: fc        inc   y
1183: f6 96 2e  mov   a,$2e96+y
1186: d4 54     mov   $54+x,a
1188: e8 02     mov   a,#$02
118a: d4 34     mov   $34+x,a
118c: 8f 4d f2  mov   $f2,#$4d
118f: f5 95 0f  mov   a,$0f95+x
1192: 48 ff     eor   a,#$ff
1194: 24 f3     and   a,$f3             ; EON
1196: c4 f3     mov   $f3,a
1198: 6f        ret

1199: dw $0000
119b: dw $0040
119d: dw $0044
119f: dw $0048
11a1: dw $004c
11a3: dw $0051
11a5: dw $0055
11a7: dw $005b
11a9: dw $0060
11ab: dw $0066
11ad: dw $006c
11af: dw $0072
11b1: dw $0079
11b3: dw $0080
11b5: dw $0088
11b7: dw $0090
11b9: dw $0098
11bb: dw $00a1
11bd: dw $00ab
11bf: dw $00b5
11c1: dw $00c0
11c3: dw $00cb
11c5: dw $00d7
11c7: dw $00e4
11c9: dw $00f2
11cb: dw $0100
11cd: dw $010f
11cf: dw $011f
11d1: dw $0130
11d3: dw $0143
11d5: dw $0156
11d7: dw $016a
11d9: dw $0180
11db: dw $0196
11dd: dw $01af
11df: dw $01c8
11e1: dw $01e3
11e3: dw $0200
11e5: dw $021e
11e7: dw $023f
11e9: dw $0261
11eb: dw $0285
11ed: dw $02ab
11ef: dw $02d4
11f1: dw $02ff
11f3: dw $032d
11f5: dw $035d
11f7: dw $0390
11f9: dw $03c7
11fb: dw $0400
11fd: dw $043d
11ff: dw $047d
1201: dw $04c2
1203: dw $050a
1205: dw $0557
1207: dw $05a8
1209: dw $05fe
120b: dw $065a
120d: dw $06ba
120f: dw $0721
1211: dw $078d
1213: dw $0800
1215: dw $087a
1217: dw $08fb
1219: dw $0984
121b: dw $0a14
121d: dw $0aae
121f: dw $0b50
1221: dw $0bfd
1223: dw $0cb3
1225: dw $0d74
1227: dw $0e41
1229: dw $0f1a
122b: dw $1000
122d: dw $10f4
122f: dw $11f6
1231: dw $1307
1233: dw $1429
1235: dw $155c
1237: dw $16a1
1239: dw $17f9
123b: dw $1966
123d: dw $1ae9
123f: dw $1c82
1241: dw $1e34
1243: dw $2000
1245: dw $21e7
1247: dw $23eb
1249: dw $260e
124b: dw $2851
124d: dw $2ab7
124f: dw $2d41
1251: dw $2ff2
1253: dw $32cc
1255: dw $35d1
1257: dw $3904
1259: dw $3c68
125b: dw $3fff
