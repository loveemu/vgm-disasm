0600: 20        clrp
0601: cd cf     mov   x,#$cf
0603: bd        mov   sp,x
0604: 3f 79 10  call  $1079
0607: 8d 20     mov   y,#$20
0609: 3f ce 0f  call  $0fce
060c: ec fe 00  mov   y,$00fe
060f: f0 fb     beq   $060c
0611: cb 32     mov   $32,y
0613: e4 7d     mov   a,$7d
0615: d0 41     bne   $0658
0617: 69 a3 a2  cmp   ($a2),($a3)
061a: f0 02     beq   $061e
061c: ab a2     inc   $a2
061e: e8 00     mov   a,#$00
0620: c4 e4     mov   $e4,a
0622: c4 e5     mov   $e5,a
0624: 8f 01 7e  mov   $7e,#$01
0627: 8f 00 7f  mov   $7f,#$00
062a: 5d        mov   x,a
062b: e4 7e     mov   a,$7e
062d: 24 7b     and   a,$7b
062f: f0 08     beq   $0639
0631: 3f 63 06  call  $0663
0634: 90 03     bcc   $0639
0636: 3f 82 06  call  $0682
0639: 3d        inc   x
063a: 3d        inc   x
063b: 60        clrc
063c: 98 10 7f  adc   $7f,#$10
063f: 0b 7e     asl   $7e
0641: d0 e8     bne   $062b
0643: e4 7c     mov   a,$7c
0645: f0 08     beq   $064f
0647: 3f 63 06  call  $0663
064a: 90 03     bcc   $064f
064c: 3f 6e 06  call  $066e
064f: e4 7c     mov   a,$7c
0651: 04 7b     or    a,$7b
0653: f0 03     beq   $0658
0655: 3f ae 0b  call  $0bae
0658: 3f fe 0f  call  $0ffe
065b: 3f 55 0d  call  $0d55
065e: 3f 45 0b  call  $0b45
0661: 2f a9     bra   $060c
0663: f4 34     mov   a,$34+x
0665: eb 32     mov   y,$32
0667: cf        mul   ya
0668: 60        clrc
0669: 94 69     adc   a,$69+x
066b: d4 69     mov   $69+x,a
066d: 6f        ret

066e: 8f 01 7e  mov   $7e,#$01
0671: 8f 00 7f  mov   $7f,#$00
0674: 3f 82 06  call  $0682
0677: 3d        inc   x
0678: 3d        inc   x
0679: 60        clrc
067a: 98 10 7f  adc   $7f,#$10
067d: 0b 7e     asl   $7e
067f: d0 f3     bne   $0674
0681: 6f        ret

0682: f4 83     mov   a,$83+x
0684: f0 0e     beq   $0694
0686: f4 a5     mov   a,$a5+x
0688: d0 05     bne   $068f
068a: 3f 95 06  call  $0695
068d: 2f f3     bra   $0682
068f: 9b a5     dec   $a5+x
0691: 3f 70 0a  call  $0a70
0694: 6f        ret

0695: 3f 66 0a  call  $0a66
0698: 30 23     bmi   $06bd
069a: d4 a4     mov   $a4+x,a
069c: 3f 66 0a  call  $0a66
069f: 30 1c     bmi   $06bd
06a1: e7 82     mov   a,($82+x)
06a3: 68 c8     cmp   a,#$c8
06a5: 90 08     bcc   $06af
06a7: f4 a4     mov   a,$a4+x
06a9: 9c        dec   a
06aa: d4 c4     mov   $c4+x,a
06ac: dd        mov   a,y
06ad: 2f 07     bra   $06b6
06af: db c4     mov   $c4+x,y
06b1: 3f 66 0a  call  $0a66
06b4: 30 07     bmi   $06bd
06b6: 1c        asl   a
06b7: d5 22 02  mov   $0222+x,a
06ba: 3f 66 0a  call  $0a66
06bd: 68 ff     cmp   a,#$ff
06bf: d0 39     bne   $06fa
06c1: e8 00     mov   a,#$00
06c3: d4 a5     mov   $a5+x,a
06c5: f5 05 05  mov   a,$0505+x
06c8: f0 21     beq   $06eb
06ca: f5 e4 04  mov   a,$04e4+x
06cd: f0 06     beq   $06d5
06cf: 9c        dec   a
06d0: d5 e4 04  mov   $04e4+x,a
06d3: f0 05     beq   $06da
06d5: 3f 07 0a  call  $0a07
06d8: 2f 3d     bra   $0717
06da: f5 24 05  mov   a,$0524+x
06dd: d4 82     mov   $82+x,a
06df: f5 25 05  mov   a,$0525+x
06e2: d4 83     mov   $83+x,a
06e4: e8 00     mov   a,#$00
06e6: d5 05 05  mov   $0505+x,a
06e9: 2f 2c     bra   $0717
06eb: e8 00     mov   a,#$00
06ed: d4 83     mov   $83+x,a
06ef: c8 11     cmp   x,#$11
06f1: b0 05     bcs   $06f8
06f3: 4d        push  x
06f4: 3f 67 0e  call  $0e67
06f7: ce        pop   x
06f8: 2f 1d     bra   $0717
06fa: 68 df     cmp   a,#$df
06fc: f0 15     beq   $0713
06fe: 90 05     bcc   $0705
0700: 3f 75 07  call  $0775
0703: 2f 0e     bra   $0713
0705: c8 10     cmp   x,#$10
0707: 90 07     bcc   $0710
0709: e4 7e     mov   a,$7e
070b: 24 7b     and   a,$7b
070d: d0 04     bne   $0713
070f: dd        mov   a,y
0710: 3f 18 07  call  $0718
0713: f4 a4     mov   a,$a4+x
0715: d4 a5     mov   $a5+x,a
0717: 6f        ret

0718: 68 c8     cmp   a,#$c8
071a: 90 03     bcc   $071f
071c: 5f 55 07  jmp   $0755

071f: 28 7f     and   a,#$7f
0721: d5 82 03  mov   $0382+x,a
0724: 3f 3d 0a  call  $0a3d
0727: 09 7e e5  or    ($e5),($7e)
072a: f4 c4     mov   a,$c4+x
072c: d4 c5     mov   $c5+x,a
072e: e4 7e     mov   a,$7e
0730: 24 80     and   a,$80
0732: d0 20     bne   $0754
0734: 09 7e 0c  or    ($0c),($7e)
0737: 09 7e 80  or    ($80),($7e)
073a: f5 44 04  mov   a,$0444+x
073d: d5 45 04  mov   $0445+x,a
0740: f5 42 03  mov   a,$0342+x
0743: d5 43 03  mov   $0343+x,a
0746: e8 00     mov   a,#$00
0748: d5 64 04  mov   $0464+x,a
074b: d5 62 03  mov   $0362+x,a
074e: d5 03 04  mov   $0403+x,a
0751: d5 02 04  mov   $0402+x,a
0754: 6f        ret

0755: 80        setc
0756: a8 c8     sbc   a,#$c8
0758: 60        clrc
0759: 84 81     adc   a,$81
075b: 3f cb 07  call  $07cb
075e: 8d 08     mov   y,#$08
0760: e8 00     mov   a,#$00
0762: da 00     movw  $00,ya
0764: 3f d9 0f  call  $0fd9
0767: 09 7e e5  or    ($e5),($7e)
076a: f4 c4     mov   a,$c4+x
076c: d4 c5     mov   $c5+x,a
076e: 09 7e 0c  or    ($0c),($7e)
0771: 09 7e 80  or    ($80),($7e)
0774: 6f        ret

; dispatch vcmd
0775: 1c        asl   a
0776: fd        mov   y,a
0777: f6 c1 06  mov   a,$06c1+y
077a: 2d        push  a
077b: f6 c0 06  mov   a,$06c0+y         ; refs vcmd dispatch table $0780
077e: 2d        push  a
077f: 6f        ret

; vcmd dispatch table
0780: dw $07b8  ; e0
0782: dw $080f  ; e1
0784: dw $081f  ; e2
0786: dw $081f  ; e3
0788: dw $082f  ; e4
078a: dw $0830  ; e5
078c: dw $083f  ; e6
078e: dw $085e  ; e7
0790: dw $0871  ; e8
0792: dw $0877  ; e9
0794: dw $087e  ; ea
0796: dw $0885  ; eb
0798: dw $088c  ; ec
079a: dw $08aa  ; ed
079c: dw $08c0  ; ee
079e: dw $08c6  ; ef
07a0: dw $08e7  ; f0
07a2: dw $08e7  ; f1
07a4: dw $08e7  ; f2
07a6: dw $08e8  ; f3
07a8: dw $090e  ; f4
07aa: dw $0917  ; f5
07ac: dw $09aa  ; f6
07ae: dw $09ab  ; f7
07b0: dw $09bd  ; f8
07b2: dw $09e7  ; f9
07b4: dw $0a12  ; fa
07b6: dw $0a1c  ; fb

; vcmd e0
07b8: 3f 66 0a  call  $0a66
07bb: d5 02 02  mov   $0202+x,a
07be: c8 10     cmp   x,#$10
07c0: 90 09     bcc   $07cb
07c2: fa 7e 00  mov   ($00),($7e)
07c5: 29 7b 00  and   ($00),($7b)
07c8: f0 01     beq   $07cb
07ca: 6f        ret

07cb: 8d 06     mov   y,#$06
07cd: cf        mul   ya
07ce: fd        mov   y,a
07cf: 4d        push  x
07d0: e4 7f     mov   a,$7f
07d2: 08 04     or    a,#$04
07d4: 5d        mov   x,a
07d5: 8f 04 00  mov   $00,#$04
07d8: f6 00 3e  mov   a,$3e00+y
07db: 10 0f     bpl   $07ec
07dd: 28 1f     and   a,#$1f
07df: 38 20 10  and   $10,#$20
07e2: 0e 10 00  tset1 $0010
07e5: 09 7e 0f  or    ($0f),($7e)
07e8: e8 00     mov   a,#$00
07ea: 2f 08     bra   $07f4
07ec: e4 7e     mov   a,$7e
07ee: 4e 0f 00  tclr1 $000f
07f1: f6 00 3e  mov   a,$3e00+y
07f4: c9 f2 00  mov   $00f2,x
07f7: c5 f3 00  mov   $00f3,a
07fa: 3d        inc   x
07fb: fc        inc   y
07fc: 8b 00     dec   $00
07fe: d0 f1     bne   $07f1
0800: ce        pop   x
0801: f6 00 3e  mov   a,$3e00+y
0804: d5 c5 04  mov   $04c5+x,a
0807: fc        inc   y
0808: f6 00 3e  mov   a,$3e00+y
080b: d5 c4 04  mov   $04c4+x,a
080e: 6f        ret

; vcmd e1
080f: 3f 66 0a  call  $0a66
0812: 1c        asl   a
0813: c5 45 05  mov   $0545,a
0816: e8 00     mov   a,#$00
0818: c5 44 05  mov   $0544,a
081b: 8f ff e5  mov   $e5,#$ff
081e: 6f        ret

; vcmd e2, e3
081f: 3f 66 0a  call  $0a66
0822: 1c        asl   a
0823: d5 43 02  mov   $0243+x,a
0826: e8 00     mov   a,#$00
0828: d5 42 02  mov   $0242+x,a
082b: 09 7e e5  or    ($e5),($7e)
082e: 6f        ret

; vcmd e4
082f: 6f        ret

; vcmd e5
0830: 3f 66 0a  call  $0a66
0833: d5 c3 02  mov   $02c3+x,a
0836: e8 00     mov   a,#$00
0838: d5 c2 02  mov   $02c2+x,a
083b: 09 7e e5  or    ($e5),($7e)
083e: 6f        ret

; vcmd e6
083f: 4d        push  x
0840: 3f 66 0a  call  $0a66
0843: d5 e2 02  mov   $02e2+x,a
0846: 2d        push  a
0847: 3f 66 0a  call  $0a66
084a: d5 e3 02  mov   $02e3+x,a
084d: 80        setc
084e: b5 c3 02  sbc   a,$02c3+x
0851: ce        pop   x
0852: 3f 39 0d  call  $0d39
0855: ce        pop   x
0856: d5 02 03  mov   $0302+x,a
0859: dd        mov   a,y
085a: d5 03 03  mov   $0303+x,a
085d: 6f        ret

; vcmd e7
085e: 3f 66 0a  call  $0a66
0861: d5 42 03  mov   $0342+x,a
0864: 3f 66 0a  call  $0a66
0867: d5 22 03  mov   $0322+x,a
086a: 3f 66 0a  call  $0a66
086d: d5 23 03  mov   $0323+x,a
0870: 6f        ret

; vcmd e8
0871: e8 00     mov   a,#$00
0873: d5 23 03  mov   $0323+x,a
0876: 6f        ret

; vcmd e9
0877: 3f 66 0a  call  $0a66
087a: c5 4a 05  mov   $054a,a
087d: 6f        ret

; vcmd ea
087e: 3f 66 0a  call  $0a66
0881: d5 c3 03  mov   $03c3+x,a
0884: 6f        ret

; vcmd eb
0885: 3f 66 0a  call  $0a66
0888: d5 c2 03  mov   $03c2+x,a
088b: 6f        ret

; vcmd ec
088c: 3f 66 0a  call  $0a66
088f: fd        mov   y,a
0890: 28 3f     and   a,#$3f
0892: 1c        asl   a
0893: 1c        asl   a
0894: d5 a2 03  mov   $03a2+x,a
0897: dd        mov   a,y
0898: 9f        xcn   a
0899: 5c        lsr   a
089a: 5c        lsr   a
089b: 28 03     and   a,#$03
089d: d5 a3 03  mov   $03a3+x,a
08a0: e4 7e     mov   a,$7e
08a2: 24 80     and   a,$80
08a4: f0 03     beq   $08a9
08a6: 3f 3d 0a  call  $0a3d
08a9: 6f        ret

; vcmd ed
08aa: 3f 66 0a  call  $0a66
08ad: d5 44 04  mov   $0444+x,a
08b0: 3f 66 0a  call  $0a66
08b3: 3f 66 0a  call  $0a66
08b6: d5 24 04  mov   $0424+x,a
08b9: 3f 66 0a  call  $0a66
08bc: d5 25 04  mov   $0425+x,a
08bf: 6f        ret

; vcmd ee
08c0: e8 00     mov   a,#$00
08c2: d5 25 04  mov   $0425+x,a
08c5: 6f        ret

; vcmd ef
08c6: 4d        push  x
08c7: 3f 66 0a  call  $0a66
08ca: d5 a4 04  mov   $04a4+x,a
08cd: 2d        push  a
08ce: 3f 66 0a  call  $0a66
08d1: 28 7f     and   a,#$7f
08d3: 80        setc
08d4: b5 82 03  sbc   a,$0382+x
08d7: d5 a5 04  mov   $04a5+x,a
08da: ce        pop   x
08db: 3f 39 0d  call  $0d39
08de: ce        pop   x
08df: d5 84 04  mov   $0484+x,a
08e2: dd        mov   a,y
08e3: d5 85 04  mov   $0485+x,a
08e6: 6f        ret

; vcmd f0, f1, f2
08e7: 6f        ret

; vcmd f3
08e8: 3f 66 0a  call  $0a66
08eb: c4 14     mov   $14,a
08ed: 3f 66 0a  call  $0a66
08f0: 1c        asl   a
08f1: c5 00 02  mov   $0200,a
08f4: 3f 66 0a  call  $0a66
08f7: 1c        asl   a
08f8: c5 01 02  mov   $0201,a
08fb: b2 10     clr5  $10
08fd: eb 0a     mov   y,$0a
08ff: e5 00 02  mov   a,$0200
0902: cf        mul   ya
0903: cb 11     mov   $11,y
0905: eb 0b     mov   y,$0b
0907: e5 01 02  mov   a,$0201
090a: cf        mul   ya
090b: cb 12     mov   $12,y
090d: 6f        ret

; vcmd f4
090e: e8 00     mov   a,#$00
0910: c4 11     mov   $11,a
0912: c4 12     mov   $12,a
0914: a2 10     set5  $10
0916: 6f        ret

; vcmd f5
0917: 4d        push  x
0918: 3f 66 0a  call  $0a66
091b: 3f 5c 09  call  $095c
091e: 3f 66 0a  call  $0a66
0921: c4 13     mov   $13,a
0923: 3f 66 0a  call  $0a66
0926: 1c        asl   a
0927: 1c        asl   a
0928: 1c        asl   a
0929: 5d        mov   x,a
092a: 8d 0f     mov   y,#$0f
092c: f5 3c 09  mov   a,$093c+x
092f: 3f 23 10  call  $1023
0932: 3d        inc   x
0933: dd        mov   a,y
0934: 60        clrc
0935: 88 10     adc   a,#$10
0937: fd        mov   y,a
0938: 10 f2     bpl   $092c
093a: ce        pop   x
093b: 6f        ret

093c: db $7f,$00,$00,$00,$00,$00,$00,$00
0944: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
094c: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0954: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

095c: c4 00     mov   $00,a
095e: 8d 7d     mov   y,#$7d
0960: cc f2 00  mov   $00f2,y
0963: e5 f3 00  mov   a,$00f3
0966: 64 00     cmp   a,$00
0968: f0 30     beq   $099a
096a: 28 0f     and   a,#$0f
096c: 48 ff     eor   a,#$ff
096e: 1c        asl   a
096f: 1c        asl   a
0970: 1c        asl   a
0971: f3 a2 03  bbc7  $a2,$0977
0974: 60        clrc
0975: 84 a2     adc   a,$a2
0977: c4 a2     mov   $a2,a
0979: e8 00     mov   a,#$00
097b: 8d 04     mov   y,#$04
097d: f6 f0 0f  mov   a,$0ff0+y
0980: c5 f2 00  mov   $00f2,a
0983: e8 00     mov   a,#$00
0985: c5 f3 00  mov   $00f3,a
0988: fe f3     dbnz  y,$097d
098a: e4 10     mov   a,$10
098c: 08 20     or    a,#$20
098e: 8d 6c     mov   y,#$6c
0990: 3f 23 10  call  $1023
0993: e4 00     mov   a,$00
0995: 8d 7d     mov   y,#$7d
0997: 3f 23 10  call  $1023
099a: 1c        asl   a
099b: 1c        asl   a
099c: 1c        asl   a
099d: c4 a3     mov   $a3,a
099f: 48 ff     eor   a,#$ff
09a1: 80        setc
09a2: 88 ff     adc   a,#$ff
09a4: 8d 6d     mov   y,#$6d
09a6: 3f 23 10  call  $1023
09a9: 6f        ret

; vcmd f6
09aa: 6f        ret

; vcmd f7
09ab: 4d        push  x
09ac: 3f 66 0a  call  $0a66
09af: c8 10     cmp   x,#$10
09b1: 90 02     bcc   $09b5
09b3: cd 10     mov   x,#$10
09b5: d4 34     mov   $34+x,a
09b7: e8 00     mov   a,#$00
09b9: d4 33     mov   $33+x,a
09bb: ce        pop   x
09bc: 6f        ret

; vcmd f8
09bd: 3f 66 0a  call  $0a66
09c0: c4 00     mov   $00,a
09c2: 3f 66 0a  call  $0a66
09c5: c4 01     mov   $01,a
09c7: 4d        push  x
09c8: c8 10     cmp   x,#$10
09ca: 90 02     bcc   $09ce
09cc: cd 10     mov   x,#$10
09ce: e4 00     mov   a,$00
09d0: d4 57     mov   $57+x,a
09d2: e4 01     mov   a,$01
09d4: d4 58     mov   $58+x,a
09d6: 80        setc
09d7: b4 34     sbc   a,$34+x
09d9: 4d        push  x
09da: f8 00     mov   x,$00
09dc: 3f 39 0d  call  $0d39
09df: ce        pop   x
09e0: d4 45     mov   $45+x,a
09e2: dd        mov   a,y
09e3: d4 46     mov   $46+x,a
09e5: ce        pop   x
09e6: 6f        ret

; vcmd f9
09e7: 3f 66 0a  call  $0a66
09ea: d5 04 05  mov   $0504+x,a
09ed: 3f 66 0a  call  $0a66
09f0: d5 05 05  mov   $0505+x,a
09f3: 3f 66 0a  call  $0a66
09f6: d5 e4 04  mov   $04e4+x,a
09f9: e8 00     mov   a,#$00
09fb: d4 a4     mov   $a4+x,a
09fd: f4 82     mov   a,$82+x
09ff: d5 24 05  mov   $0524+x,a
0a02: f4 83     mov   a,$83+x
0a04: d5 25 05  mov   $0525+x,a
0a07: f5 04 05  mov   a,$0504+x
0a0a: d4 82     mov   $82+x,a
0a0c: f5 05 05  mov   a,$0505+x
0a0f: d4 83     mov   $83+x,a
0a11: 6f        ret

; vcmd fa
0a12: 3f 66 0a  call  $0a66
0a15: c8 10     cmp   x,#$10
0a17: 90 02     bcc   $0a1b
0a19: c4 81     mov   $81,a
0a1b: 6f        ret

; vcmd fb
0a1c: 3f 66 0a  call  $0a66
0a1f: d5 a2 02  mov   $02a2+x,a
0a22: 6f        ret

0a23: dw $0775
0a25: dw $07e6
0a27: dw $085f
0a29: dw $08de
0a2b: dw $0965
0a2d: dw $09f4
0a3f: dw $0a8c
0a31: dw $0b2c
0a33: dw $0bd6
0a35: dw $0c8b
0a37: dw $0d4a
0a39: dw $0e14
0a3b: dw $0eea

0a3d: 8f 00 00  mov   $00,#$00
0a40: f5 c2 03  mov   a,$03c2+x
0a43: 10 02     bpl   $0a47
0a45: 8b 00     dec   $00
0a47: 60        clrc
0a48: 95 a2 03  adc   a,$03a2+x
0a4b: d5 e2 03  mov   $03e2+x,a
0a4e: f5 82 03  mov   a,$0382+x
0a51: 84 00     adc   a,$00
0a53: 60        clrc
0a54: 85 4a 05  adc   a,$054a
0a57: 60        clrc
0a58: 95 c3 03  adc   a,$03c3+x
0a5b: 60        clrc
0a5c: 95 a3 03  adc   a,$03a3+x
0a5f: d5 e3 03  mov   $03e3+x,a
0a62: 09 7e e4  or    ($e4),($7e)
0a65: 6f        ret

0a66: e7 82     mov   a,($82+x)
0a68: bb 82     inc   $82+x
0a6a: d0 02     bne   $0a6e
0a6c: bb 83     inc   $83+x
0a6e: fd        mov   y,a
0a6f: 6f        ret

0a70: f5 a2 02  mov   a,$02a2+x
0a73: f0 14     beq   $0a89
0a75: 48 ff     eor   a,#$ff
0a77: bc        inc   a
0a78: 60        clrc
0a79: 95 43 02  adc   a,$0243+x
0a7c: b0 05     bcs   $0a83
0a7e: e8 00     mov   a,#$00
0a80: d5 a2 02  mov   $02a2+x,a
0a83: d5 43 02  mov   $0243+x,a
0a86: 09 7e e5  or    ($e5),($7e)
0a89: f5 e2 02  mov   a,$02e2+x
0a8c: f0 29     beq   $0ab7
0a8e: 9c        dec   a
0a8f: d5 e2 02  mov   $02e2+x,a
0a92: d0 0d     bne   $0aa1
0a94: e8 00     mov   a,#$00
0a96: d5 c2 02  mov   $02c2+x,a
0a99: f5 e3 02  mov   a,$02e3+x
0a9c: d5 c3 02  mov   $02c3+x,a
0a9f: 2f 13     bra   $0ab4
0aa1: f5 02 03  mov   a,$0302+x
0aa4: 60        clrc
0aa5: 95 c2 02  adc   a,$02c2+x
0aa8: d5 c2 02  mov   $02c2+x,a
0aab: f5 03 03  mov   a,$0303+x
0aae: 95 c3 02  adc   a,$02c3+x
0ab1: d5 c3 02  mov   $02c3+x,a
0ab4: 09 7e e5  or    ($e5),($7e)
0ab7: c8 11     cmp   x,#$11
0ab9: b0 20     bcs   $0adb
0abb: f4 57     mov   a,$57+x
0abd: f0 1c     beq   $0adb
0abf: 9c        dec   a
0ac0: d4 57     mov   $57+x,a
0ac2: d0 0a     bne   $0ace
0ac4: e8 00     mov   a,#$00
0ac6: d4 33     mov   $33+x,a
0ac8: f4 58     mov   a,$58+x
0aca: d4 34     mov   $34+x,a
0acc: 2f 76     bra   $0b44
0ace: f4 45     mov   a,$45+x
0ad0: 60        clrc
0ad1: 94 33     adc   a,$33+x
0ad3: d4 33     mov   $33+x,a
0ad5: f4 46     mov   a,$46+x
0ad7: 94 34     adc   a,$34+x
0ad9: d4 34     mov   $34+x,a
0adb: e4 80     mov   a,$80
0add: 24 7e     and   a,$7e
0adf: d0 01     bne   $0ae2
0ae1: 6f        ret

0ae2: c8 10     cmp   x,#$10
0ae4: 90 06     bcc   $0aec
0ae6: e4 7e     mov   a,$7e
0ae8: 24 7b     and   a,$7b
0aea: d0 0e     bne   $0afa
0aec: f4 c5     mov   a,$c5+x
0aee: f0 04     beq   $0af4
0af0: 9b c5     dec   $c5+x
0af2: 2f 06     bra   $0afa
0af4: 09 7e 0d  or    ($0d),($7e)
0af7: 49 7e 80  eor   ($80),($7e)
0afa: f5 25 04  mov   a,$0425+x
0afd: f0 09     beq   $0b08
0aff: f5 45 04  mov   a,$0445+x
0b02: f0 04     beq   $0b08
0b04: 9c        dec   a
0b05: d5 45 04  mov   $0445+x,a
0b08: f5 a4 04  mov   a,$04a4+x
0b0b: f0 29     beq   $0b36
0b0d: 9c        dec   a
0b0e: d5 a4 04  mov   $04a4+x,a
0b11: d0 0d     bne   $0b20
0b13: f5 a5 04  mov   a,$04a5+x
0b16: d5 03 04  mov   $0403+x,a
0b19: e8 00     mov   a,#$00
0b1b: d5 02 04  mov   $0402+x,a
0b1e: 2f 13     bra   $0b33
0b20: f5 02 04  mov   a,$0402+x
0b23: 60        clrc
0b24: 95 84 04  adc   a,$0484+x
0b27: d5 02 04  mov   $0402+x,a
0b2a: f5 03 04  mov   a,$0403+x
0b2d: 95 85 04  adc   a,$0485+x
0b30: d5 03 04  mov   $0403+x,a
0b33: 09 7e e4  or    ($e4),($7e)
0b36: f5 23 03  mov   a,$0323+x
0b39: f0 09     beq   $0b44
0b3b: f5 43 03  mov   a,$0343+x
0b3e: f0 04     beq   $0b44
0b40: 9c        dec   a
0b41: d5 43 03  mov   $0343+x,a
0b44: 6f        ret

0b45: e5 4c 05  mov   a,$054c
0b48: 60        clrc
0b49: 88 10     adc   a,#$10
0b4b: c5 4c 05  mov   $054c,a
0b4e: 90 5d     bcc   $0bad
0b50: e5 50 05  mov   a,$0550
0b53: f0 26     beq   $0b7b
0b55: 9c        dec   a
0b56: c5 50 05  mov   $0550,a
0b59: f0 1b     beq   $0b76
0b5b: e5 4e 05  mov   a,$054e
0b5e: 80        setc
0b5f: a5 51 05  sbc   a,$0551
0b62: c5 4e 05  mov   $054e,a
0b65: e5 0a 00  mov   a,$000a
0b68: a5 52 05  sbc   a,$0552
0b6b: c5 0a 00  mov   $000a,a
0b6e: c5 0b 00  mov   $000b,a
0b71: 3f fd 08  call  $08fd
0b74: 2f 37     bra   $0bad
0b76: 3f ec 0d  call  $0dec
0b79: 2f 32     bra   $0bad
0b7b: e5 4f 05  mov   a,$054f
0b7e: f0 2d     beq   $0bad
0b80: 9c        dec   a
0b81: c5 4f 05  mov   $054f,a
0b84: f0 1b     beq   $0ba1
0b86: e5 4e 05  mov   a,$054e
0b89: 60        clrc
0b8a: 85 51 05  adc   a,$0551
0b8d: c5 4e 05  mov   $054e,a
0b90: e5 0a 00  mov   a,$000a
0b93: 85 52 05  adc   a,$0552
0b96: c5 0a 00  mov   $000a,a
0b99: c5 0b 00  mov   $000b,a
0b9c: 3f fd 08  call  $08fd
0b9f: 2f 0c     bra   $0bad
0ba1: e5 4d 05  mov   a,$054d
0ba4: c5 0a 00  mov   $000a,a
0ba7: c5 0b 00  mov   $000b,a
0baa: 3f fd 08  call  $08fd
0bad: 6f        ret

0bae: 8f 01 7e  mov   $7e,#$01
0bb1: cd 00     mov   x,#$00
0bb3: 8f 00 7f  mov   $7f,#$00
0bb6: 3f c3 0b  call  $0bc3
0bb9: 8f 01 7e  mov   $7e,#$01
0bbc: 8f 00 7f  mov   $7f,#$00
0bbf: 3f c3 0b  call  $0bc3
0bc2: 6f        ret

0bc3: f4 83     mov   a,$83+x
0bc5: f0 1b     beq   $0be2
0bc7: c8 10     cmp   x,#$10
0bc9: b0 08     bcs   $0bd3
0bcb: e4 7e     mov   a,$7e
0bcd: 24 7b     and   a,$7b
0bcf: f0 11     beq   $0be2
0bd1: 2f 06     bra   $0bd9
0bd3: e4 7e     mov   a,$7e
0bd5: 24 7b     and   a,$7b
0bd7: d0 09     bne   $0be2
0bd9: e4 7e     mov   a,$7e
0bdb: 24 80     and   a,$80
0bdd: f0 03     beq   $0be2
0bdf: 3f ed 0b  call  $0bed
0be2: 3d        inc   x
0be3: 3d        inc   x
0be4: 60        clrc
0be5: 98 10 7f  adc   $7f,#$10
0be8: 0b 7e     asl   $7e
0bea: d0 d7     bne   $0bc3
0bec: 6f        ret

0bed: e8 00     mov   a,#$00
0bef: c5 22 04  mov   $0422,a
0bf2: c5 23 04  mov   $0423,a
0bf5: c5 4b 05  mov   $054b,a
0bf8: f5 25 04  mov   a,$0425+x
0bfb: f0 38     beq   $0c35
0bfd: f5 45 04  mov   a,$0445+x
0c00: d0 33     bne   $0c35
0c02: f5 24 04  mov   a,$0424+x
0c05: 8d 10     mov   y,#$10
0c07: cf        mul   ya
0c08: 60        clrc
0c09: 95 64 04  adc   a,$0464+x
0c0c: d5 64 04  mov   $0464+x,a
0c0f: dd        mov   a,y
0c10: 95 65 04  adc   a,$0465+x
0c13: d5 65 04  mov   $0465+x,a
0c16: c4 00     mov   $00,a
0c18: 1c        asl   a
0c19: 1c        asl   a
0c1a: 90 02     bcc   $0c1e
0c1c: 48 ff     eor   a,#$ff
0c1e: fd        mov   y,a
0c1f: f5 25 04  mov   a,$0425+x
0c22: cf        mul   ya
0c23: e8 0c     mov   a,#$0c
0c25: cf        mul   ya
0c26: f3 00 03  bbc7  $00,$0c2c
0c29: 3f 32 0d  call  $0d32
0c2c: c5 22 04  mov   $0422,a
0c2f: cc 23 04  mov   $0423,y
0c32: 09 7e e4  or    ($e4),($7e)
0c35: f5 23 03  mov   a,$0323+x
0c38: f0 2a     beq   $0c64
0c3a: f5 43 03  mov   a,$0343+x
0c3d: d0 25     bne   $0c64
0c3f: f5 22 03  mov   a,$0322+x
0c42: 8d 10     mov   y,#$10
0c44: cf        mul   ya
0c45: 60        clrc
0c46: 95 62 03  adc   a,$0362+x
0c49: d5 62 03  mov   $0362+x,a
0c4c: dd        mov   a,y
0c4d: 95 63 03  adc   a,$0363+x
0c50: d5 63 03  mov   $0363+x,a
0c53: 1c        asl   a
0c54: 90 02     bcc   $0c58
0c56: 48 ff     eor   a,#$ff
0c58: fd        mov   y,a
0c59: f5 23 03  mov   a,$0323+x
0c5c: cf        mul   ya
0c5d: dd        mov   a,y
0c5e: c5 4b 05  mov   $054b,a
0c61: 09 7e e5  or    ($e5),($7e)
0c64: e4 7e     mov   a,$7e
0c66: 24 e4     and   a,$e4
0c68: f0 7d     beq   $0ce7
0c6a: f5 e3 03  mov   a,$03e3+x
0c6d: fd        mov   y,a
0c6e: f5 e2 03  mov   a,$03e2+x
0c71: da 00     movw  $00,ya
0c73: f5 03 04  mov   a,$0403+x
0c76: fd        mov   y,a
0c77: f5 02 04  mov   a,$0402+x
0c7a: 7a 00     addw  ya,$00
0c7c: da 00     movw  $00,ya
0c7e: ec 23 04  mov   y,$0423
0c81: e5 22 04  mov   a,$0422
0c84: 7a 00     addw  ya,$00
0c86: da 04     movw  $04,ya
0c88: 4d        push  x
0c89: dd        mov   a,y
0c8a: 1c        asl   a
0c8b: 8d 00     mov   y,#$00
0c8d: cd 18     mov   x,#$18
0c8f: 9e        div   ya,x
0c90: 5d        mov   x,a
0c91: f6 23 0a  mov   a,$0a23+y
0c94: c4 00     mov   $00,a
0c96: f6 24 0a  mov   a,$0a24+y
0c99: c4 01     mov   $01,a
0c9b: f6 26 0a  mov   a,$0a26+y
0c9e: 2d        push  a
0c9f: f6 25 0a  mov   a,$0a25+y
0ca2: ee        pop   y
0ca3: 9a 00     subw  ya,$00
0ca5: eb 04     mov   y,$04
0ca7: cf        mul   ya
0ca8: dd        mov   a,y
0ca9: 8d 00     mov   y,#$00
0cab: 7a 00     addw  ya,$00
0cad: da 00     movw  $00,ya
0caf: 0b 00     asl   $00
0cb1: 2b 01     rol   $01
0cb3: 2f 05     bra   $0cba
0cb5: 4b 01     lsr   $01
0cb7: 6b 00     ror   $00
0cb9: 3d        inc   x
0cba: c8 06     cmp   x,#$06
0cbc: d0 f7     bne   $0cb5
0cbe: ce        pop   x
0cbf: f5 c4 04  mov   a,$04c4+x
0cc2: eb 01     mov   y,$01
0cc4: cf        mul   ya
0cc5: da 02     movw  $02,ya
0cc7: f5 c5 04  mov   a,$04c5+x
0cca: eb 00     mov   y,$00
0ccc: cf        mul   ya
0ccd: 7a 02     addw  ya,$02
0ccf: da 02     movw  $02,ya
0cd1: f5 c4 04  mov   a,$04c4+x
0cd4: eb 00     mov   y,$00
0cd6: cf        mul   ya
0cd7: 6d        push  y
0cd8: f5 c5 04  mov   a,$04c5+x
0cdb: eb 01     mov   y,$01
0cdd: cf        mul   ya
0cde: fd        mov   y,a
0cdf: ae        pop   a
0ce0: 7a 02     addw  ya,$02
0ce2: da 00     movw  $00,ya
0ce4: 3f d9 0f  call  $0fd9
0ce7: e4 7e     mov   a,$7e
0ce9: 24 e5     and   a,$e5
0ceb: f0 44     beq   $0d31
0ced: 8d ff     mov   y,#$ff
0cef: c8 10     cmp   x,#$10
0cf1: 90 04     bcc   $0cf7
0cf3: e5 45 05  mov   a,$0545
0cf6: fd        mov   y,a
0cf7: f5 22 02  mov   a,$0222+x
0cfa: cf        mul   ya
0cfb: f5 43 02  mov   a,$0243+x
0cfe: cf        mul   ya
0cff: e5 4b 05  mov   a,$054b
0d02: 48 ff     eor   a,#$ff
0d04: cf        mul   ya
0d05: cb 00     mov   $00,y
0d07: e4 7f     mov   a,$7f
0d09: c4 02     mov   $02,a
0d0b: f5 c3 02  mov   a,$02c3+x
0d0e: 1c        asl   a
0d0f: c4 01     mov   $01,a
0d11: e4 00     mov   a,$00
0d13: eb 01     mov   y,$01
0d15: cf        mul   ya
0d16: e8 85     mov   a,#$85
0d18: cf        mul   ya
0d19: dd        mov   a,y
0d1a: 90 03     bcc   $0d1f
0d1c: 48 ff     eor   a,#$ff
0d1e: bc        inc   a
0d1f: eb 02     mov   y,$02
0d21: 3f 23 10  call  $1023
0d24: e4 01     mov   a,$01
0d26: 48 ff     eor   a,#$ff
0d28: c4 01     mov   $01,a
0d2a: 60        clrc
0d2b: ab 02     inc   $02
0d2d: 33 02 e1  bbc1  $02,$0d11
0d30: 6f        ret

0d31: 6f        ret

0d32: da 00     movw  $00,ya
0d34: ba 08     movw  ya,$08
0d36: 9a 00     subw  ya,$00
0d38: 6f        ret

0d39: c4 00     mov   $00,a
0d3b: f3 00 05  bbc7  $00,$0d43
0d3e: 10 03     bpl   $0d43
0d40: 48 ff     eor   a,#$ff
0d42: bc        inc   a
0d43: 8d 00     mov   y,#$00
0d45: 9e        div   ya,x
0d46: 2d        push  a
0d47: e8 00     mov   a,#$00
0d49: 9e        div   ya,x
0d4a: ee        pop   y
0d4b: f3 00 06  bbc7  $00,$0d54
0d4e: da 00     movw  $00,ya
0d50: ba 08     movw  ya,$08
0d52: 9a 00     subw  ya,$00
0d54: 6f        ret

0d55: e4 7c     mov   a,$7c
0d57: c5 f6 00  mov   $00f6,a
0d5a: e4 7b     mov   a,$7b
0d5c: c5 f7 00  mov   $00f7,a
0d5f: e5 f4 00  mov   a,$00f4
0d62: 65 f4 00  cmp   a,$00f4
0d65: d0 ee     bne   $0d55
0d67: 64 15     cmp   a,$15
0d69: f0 15     beq   $0d80
0d6b: c4 15     mov   $15,a
0d6d: c5 f4 00  mov   $00f4,a
0d70: 68 ff     cmp   a,#$ff
0d72: f0 1f     beq   $0d93
0d74: 9f        xcn   a
0d75: 28 0f     and   a,#$0f
0d77: 68 09     cmp   a,#$09
0d79: b0 05     bcs   $0d80
0d7b: 1c        asl   a
0d7c: 5d        mov   x,a
0d7d: 1f 81 0d  jmp   ($0d81+x)

0d80: 6f        ret

0d81: eb 0d     mov   y,$0d
0d83: ec 0d 0e  mov   y,$0e0d
0d86: 0e 13 0e  tset1 $0e13
0d89: 17 0e     or    a,($0e)+y
0d8b: 33 0e 6b  bbc1  $0e,$0df9
0d8e: 0f        brk
0d8f: 92 0f     clr4  $0f
0d91: 9b 0f     dec   $0f+x
0d93: e4 7c     mov   a,$7c
0d95: 04 7b     or    a,$7b
0d97: f0 03     beq   $0d9c
0d99: 3f ec 0d  call  $0dec
0d9c: e8 aa     mov   a,#$aa
0d9e: c5 f4 00  mov   $00f4,a
0da1: e8 bb     mov   a,#$bb
0da3: c5 f5 00  mov   $00f5,a
0da6: e5 f4 00  mov   a,$00f4
0da9: 68 cc     cmp   a,#$cc
0dab: d0 f9     bne   $0da6
0dad: 2f 20     bra   $0dcf
0daf: ec f4 00  mov   y,$00f4
0db2: d0 fb     bne   $0daf
0db4: 5e f4 00  cmp   y,$00f4
0db7: d0 0f     bne   $0dc8
0db9: e5 f5 00  mov   a,$00f5
0dbc: cc f4 00  mov   $00f4,y
0dbf: d7 00     mov   ($00)+y,a
0dc1: fc        inc   y
0dc2: d0 f0     bne   $0db4
0dc4: ab 01     inc   $01
0dc6: 2f ec     bra   $0db4
0dc8: 10 ea     bpl   $0db4
0dca: 5e f4 00  cmp   y,$00f4
0dcd: 10 e5     bpl   $0db4
0dcf: e5 f6 00  mov   a,$00f6
0dd2: ec f7 00  mov   y,$00f7
0dd5: da 00     movw  $00,ya
0dd7: ec f4 00  mov   y,$00f4
0dda: e5 f5 00  mov   a,$00f5
0ddd: cc f4 00  mov   $00f4,y
0de0: d0 cd     bne   $0daf
0de2: cd 32     mov   x,#$32
0de4: c9 f1 00  mov   $00f1,x
0de7: 3f 59 10  call  $1059
0dea: 6f        ret

0deb: 6f        ret

0dec: e8 00     mov   a,#$00
0dee: c4 7c     mov   $7c,a
0df0: c4 7b     mov   $7b,a
0df2: e8 7d     mov   a,#$7d
0df4: c5 f2 00  mov   $00f2,a
0df7: e5 f3 00  mov   a,$00f3
0dfa: 1c        asl   a
0dfb: 1c        asl   a
0dfc: 1c        asl   a
0dfd: 2d        push  a
0dfe: e8 00     mov   a,#$00
0e00: 3f 5c 09  call  $095c
0e03: ee        pop   y
0e04: 3f ce 0f  call  $0fce
0e07: 8f ff 0d  mov   $0d,#$ff
0e0a: 3f fe 0f  call  $0ffe
0e0d: 6f        ret

0e0e: 8f ff 7d  mov   $7d,#$ff
0e11: 2f f4     bra   $0e07
0e13: 8f 00 7d  mov   $7d,#$00
0e16: 6f        ret

0e17: e9 f6 00  mov   x,$00f6
0e1a: d0 01     bne   $0e1d
0e1c: 3d        inc   x
0e1d: c9 50 05  mov   $0550,x
0e20: e5 0a 00  mov   a,$000a
0e23: 3f 39 0d  call  $0d39
0e26: c5 51 05  mov   $0551,a
0e29: dd        mov   a,y
0e2a: c5 52 05  mov   $0552,a
0e2d: e8 00     mov   a,#$00
0e2f: c5 4e 05  mov   $054e,a
0e32: 6f        ret

0e33: e8 00     mov   a,#$00
0e35: c5 53 05  mov   $0553,a
0e38: e4 7c     mov   a,$7c
0e3a: f0 03     beq   $0e3f
0e3c: 3f ec 0d  call  $0dec
0e3f: e8 ff     mov   a,#$ff
0e41: c4 7c     mov   $7c,a
0e43: bc        inc   a
0e44: c4 7d     mov   $7d,a
0e46: c4 80     mov   $80,a
0e48: c4 7b     mov   $7b,a
0e4a: c5 48 05  mov   $0548,a
0e4d: c5 50 05  mov   $0550,a
0e50: e9 53 05  mov   x,$0553
0e53: d0 06     bne   $0e5b
0e55: c5 4f 05  mov   $054f,a
0e58: 3f a1 0b  call  $0ba1
0e5b: cd 10     mov   x,#$10
0e5d: e4 15     mov   a,$15
0e5f: 28 0f     and   a,#$0f
0e61: 3f 5e 0f  call  $0f5e
0e64: 3f ff 0e  call  $0eff
0e67: 3f 4a 0f  call  $0f4a
0e6a: d0 30     bne   $0e9c
0e6c: 68 ff     cmp   a,#$ff
0e6e: f0 56     beq   $0ec6
0e70: 68 00     cmp   a,#$00
0e72: f0 0d     beq   $0e81
0e74: fb 29     mov   y,$29+x
0e76: d0 02     bne   $0e7a
0e78: d4 29     mov   $29+x,a
0e7a: f4 29     mov   a,$29+x
0e7c: 9c        dec   a
0e7d: d4 29     mov   $29+x,a
0e7f: f0 0a     beq   $0e8b
0e81: 3f 4a 0f  call  $0f4a
0e84: d4 17     mov   $17+x,a
0e86: dd        mov   a,y
0e87: d4 18     mov   $18+x,a
0e89: 2f dc     bra   $0e67
0e8b: 3f 4a 0f  call  $0f4a
0e8e: 2f d7     bra   $0e67
0e90: d4 29     mov   $29+x,a
0e92: 3f 4a 0f  call  $0f4a
0e95: d4 17     mov   $17+x,a
0e97: dd        mov   a,y
0e98: d4 18     mov   $18+x,a
0e9a: 2f cb     bra   $0e67
0e9c: da 00     movw  $00,ya
0e9e: 8d 00     mov   y,#$00
0ea0: 8f 01 02  mov   $02,#$01
0ea3: c8 10     cmp   x,#$10
0ea5: d0 03     bne   $0eaa
0ea7: 8f 08 02  mov   $02,#$08
0eaa: f7 00     mov   a,($00)+y
0eac: d5 82 00  mov   $0082+x,a
0eaf: fc        inc   y
0eb0: f7 00     mov   a,($00)+y
0eb2: d5 83 00  mov   $0083+x,a
0eb5: fc        inc   y
0eb6: e8 00     mov   a,#$00
0eb8: d4 a4     mov   $a4+x,a
0eba: d4 a5     mov   $a5+x,a
0ebc: d5 05 05  mov   $0505+x,a
0ebf: 3d        inc   x
0ec0: 3d        inc   x
0ec1: 8b 02     dec   $02
0ec3: d0 e5     bne   $0eaa
0ec5: 6f        ret

0ec6: c8 10     cmp   x,#$10
0ec8: 90 11     bcc   $0edb
0eca: 4d        push  x
0ecb: 09 7c 0d  or    ($0d),($7c)
0ece: e8 00     mov   a,#$00
0ed0: c4 7c     mov   $7c,a
0ed2: cd 0f     mov   x,#$0f
0ed4: d4 92     mov   $92+x,a
0ed6: 1d        dec   x
0ed7: 10 fb     bpl   $0ed4
0ed9: ce        pop   x
0eda: 6f        ret

0edb: 09 7e 0d  or    ($0d),($7e)
0ede: e4 7e     mov   a,$7e
0ee0: 48 ff     eor   a,#$ff
0ee2: 24 7b     and   a,$7b
0ee4: c4 7b     mov   $7b,a
0ee6: e4 7e     mov   a,$7e
0ee8: 48 ff     eor   a,#$ff
0eea: 24 80     and   a,$80
0eec: c4 80     mov   $80,a
0eee: e8 00     mov   a,#$00
0ef0: d4 83     mov   $83+x,a
0ef2: 4d        push  x
0ef3: 7d        mov   a,x
0ef4: 08 10     or    a,#$10
0ef6: 5d        mov   x,a
0ef7: f5 02 02  mov   a,$0202+x
0efa: 3f cb 07  call  $07cb
0efd: ce        pop   x
0efe: 6f        ret

0eff: 4d        push  x
0f00: 8f 01 00  mov   $00,#$01
0f03: c8 10     cmp   x,#$10
0f05: d0 03     bne   $0f0a
0f07: 8f 08 00  mov   $00,#$08
0f0a: e8 02     mov   a,#$02
0f0c: d5 a3 03  mov   $03a3+x,a
0f0f: e8 40     mov   a,#$40
0f11: d5 c3 02  mov   $02c3+x,a
0f14: e8 60     mov   a,#$60
0f16: d5 43 02  mov   $0243+x,a
0f19: e8 00     mov   a,#$00
0f1b: d5 c3 03  mov   $03c3+x,a
0f1e: d5 c2 03  mov   $03c2+x,a
0f21: d5 82 02  mov   $0282+x,a
0f24: d5 a2 02  mov   $02a2+x,a
0f27: d5 e2 02  mov   $02e2+x,a
0f2a: d5 25 04  mov   $0425+x,a
0f2d: d5 a4 04  mov   $04a4+x,a
0f30: d5 23 03  mov   $0323+x,a
0f33: d5 a2 03  mov   $03a2+x,a
0f36: d5 e2 03  mov   $03e2+x,a
0f39: d5 02 04  mov   $0402+x,a
0f3c: c8 11     cmp   x,#$11
0f3e: b0 02     bcs   $0f42
0f40: d4 57     mov   $57+x,a
0f42: 3d        inc   x
0f43: 3d        inc   x
0f44: 8b 00     dec   $00
0f46: d0 c2     bne   $0f0a
0f48: ce        pop   x
0f49: 6f        ret

0f4a: e7 17     mov   a,($17+x)
0f4c: bb 17     inc   $17+x
0f4e: d0 02     bne   $0f52
0f50: bb 18     inc   $18+x
0f52: 2d        push  a
0f53: e7 17     mov   a,($17+x)
0f55: bb 17     inc   $17+x
0f57: d0 02     bne   $0f5b
0f59: bb 18     inc   $18+x
0f5b: fd        mov   y,a
0f5c: ae        pop   a
0f5d: 6f        ret

0f5e: 1c        asl   a
0f5f: fd        mov   y,a
0f60: f6 00 11  mov   a,$1100+y
0f63: d4 17     mov   $17+x,a
0f65: f6 01 11  mov   a,$1101+y
0f68: d4 18     mov   $18+x,a
0f6a: 6f        ret

0f6b: e9 f6 00  mov   x,$00f6
0f6e: d0 01     bne   $0f71
0f70: 3d        inc   x
0f71: c9 4f 05  mov   $054f,x
0f74: e5 4d 05  mov   a,$054d
0f77: 3f 39 0d  call  $0d39
0f7a: c5 51 05  mov   $0551,a
0f7d: dd        mov   a,y
0f7e: c5 52 05  mov   $0552,a
0f81: e8 00     mov   a,#$00
0f83: c5 4e 05  mov   $054e,a
0f86: c4 0a     mov   $0a,a
0f88: c4 0b     mov   $0b,a
0f8a: e8 ff     mov   a,#$ff
0f8c: c5 53 05  mov   $0553,a
0f8f: 5f 38 0e  jmp   $0e38

0f92: e5 f5 00  mov   a,$00f5
0f95: c5 4d 05  mov   $054d,a
0f98: 5f a1 0b  jmp   $0ba1

0f9b: cd 0e     mov   x,#$0e
0f9d: 8f 80 00  mov   $00,#$80
0fa0: e4 00     mov   a,$00
0fa2: 24 7b     and   a,$7b
0fa4: f0 07     beq   $0fad
0fa6: 4b 00     lsr   $00
0fa8: 1d        dec   x
0fa9: 1d        dec   x
0faa: 10 f4     bpl   $0fa0
0fac: 6f        ret

0fad: 09 00 7b  or    ($7b),($00)
0fb0: e4 15     mov   a,$15
0fb2: 28 0f     and   a,#$0f
0fb4: 4d        push  x
0fb5: e5 f5 00  mov   a,$00f5
0fb8: 60        clrc
0fb9: 88 08     adc   a,#$08
0fbb: 3f 61 0e  call  $0e61
0fbe: ce        pop   x
0fbf: e8 40     mov   a,#$40
0fc1: d4 34     mov   $34+x,a
0fc3: e8 00     mov   a,#$00
0fc5: d4 33     mov   $33+x,a
0fc7: bc        inc   a
0fc8: d4 c5     mov   $c5+x,a
0fca: bc        inc   a
0fcb: d4 a5     mov   $a5+x,a
0fcd: 6f        ret

0fce: ad 00     cmp   y,#$00
0fd0: f0 07     beq   $0fd9
0fd2: e5 fe 00  mov   a,$00fe
0fd5: f0 fb     beq   $0fd2
0fd7: fe f9     dbnz  y,$0fd2
0fd9: e4 7f     mov   a,$7f
0fdb: 08 02     or    a,#$02
0fdd: fd        mov   y,a
0fde: e4 00     mov   a,$00
0fe0: 3f 23 10  call  $1023
0fe3: fc        inc   y
0fe4: e4 01     mov   a,$01
0fe6: 3f 23 10  call  $1023
0fe9: 6f        ret

0fea: db $0c,$1c,$4c,$5c,$2d,$3d,$6c,$2c,$3c,$0d,$4d

0ff4: db $5d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

0ffe: 8d 0b     mov   y,#$0b
1000: ad 07     cmp   y,#$07
1002: f0 07     beq   $100b
1004: 90 08     bcc   $100e
1006: 69 a3 a2  cmp   ($a2),($a3)
1009: d0 0f     bne   $101a
100b: e3 a2 0c  bbs7  $a2,$101a
100e: f6 e9 0f  mov   a,$0fe9+y
1011: c5 f2 00  mov   $00f2,a
1014: f6 09 00  mov   a,$0009+y
1017: c5 f3 00  mov   $00f3,a
101a: fe e4     dbnz  y,$1000
101c: 8f 00 0c  mov   $0c,#$00
101f: 8f 00 0d  mov   $0d,#$00
1022: 6f        ret

; write A to dsp reg Y
1023: cc f2 00  mov   $00f2,y
1026: c5 f3 00  mov   $00f3,a
1029: 6f        ret

102a: db $60,$60,$00,$00,$00,$00,$20,$00,$00,$00,$00

1035: db $3c,$7f,$00,$00,$00,$00,$00,$00,$00

103e: 8d 0b     mov   y,#$0b
1040: f6 29 10  mov   a,$1029+y
1043: d6 09 00  mov   $0009+y,a
1046: fe f8     dbnz  y,$1040
1048: 8d 09     mov   y,#$09
104a: f6 f4 0f  mov   a,$0ff4+y
104d: c5 f2 00  mov   $00f2,a
1050: f6 34 10  mov   a,$1034+y
1053: c5 f3 00  mov   $00f3,a
1056: fe f2     dbnz  y,$104a
1058: 6f        ret

1059: e8 00     mov   a,#$00
105b: 3f 5c 09  call  $095c
105e: 3f 3e 10  call  $103e
1061: cd 10     mov   x,#$10
1063: 8f 00 7f  mov   $7f,#$00
1066: 8f 01 7e  mov   $7e,#$01
1069: e8 00     mov   a,#$00
106b: 3f cb 07  call  $07cb
106e: 3d        inc   x
106f: 3d        inc   x
1070: 60        clrc
1071: 98 10 7f  adc   $7f,#$10
1074: 0b 7e     asl   $7e
1076: d0 f1     bne   $1069
1078: 6f        ret

1079: e8 00     mov   a,#$00
107b: 5d        mov   x,a
107c: af        mov   (x)+,a
107d: c8 e8     cmp   x,#$e8
107f: d0 fb     bne   $107c
1081: cd 02     mov   x,#$02
1083: d8 01     mov   $01,x
1085: fd        mov   y,a
1086: d7 00     mov   ($00)+y,a
1088: fe fc     dbnz  y,$1086
108a: ab 01     inc   $01
108c: 78 06 01  cmp   $01,#$06
108f: d0 f5     bne   $1086
1091: 8d 6c     mov   y,#$6c
1093: e8 e0     mov   a,#$e0
1095: 3f 23 10  call  $1023
1098: e8 00     mov   a,#$00
109a: 3f 5c 09  call  $095c
109d: 3f 3e 10  call  $103e
10a0: cd 10     mov   x,#$10
10a2: 8f 00 7f  mov   $7f,#$00
10a5: 8f 01 7e  mov   $7e,#$01
10a8: e8 00     mov   a,#$00
10aa: 3f cb 07  call  $07cb
10ad: 3d        inc   x
10ae: 3d        inc   x
10af: 60        clrc
10b0: 98 10 7f  adc   $7f,#$10
10b3: 0b 7e     asl   $7e
10b5: d0 f1     bne   $10a8
10b7: e8 fe     mov   a,#$fe
10b9: c5 45 05  mov   $0545,a
10bc: e8 60     mov   a,#$60
10be: c5 4d 05  mov   $054d,a
10c1: e8 19     mov   a,#$19
10c3: cd 12     mov   x,#$12
10c5: d4 32     mov   $32+x,a
10c7: 1d        dec   x
10c8: 1d        dec   x
10c9: d0 fa     bne   $10c5
10cb: e8 30     mov   a,#$30
10cd: c5 f1 00  mov   $00f1,a
10d0: e8 10     mov   a,#$10
10d2: c5 fb 00  mov   $00fb,a
10d5: e8 32     mov   a,#$32
10d7: c5 f1 00  mov   $00f1,a
10da: 6f        ret
