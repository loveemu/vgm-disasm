05b0: db $5f,$bd,$0b
05b3: .ascii "VER 2.73 93.9.10"

05c3: e8 aa     mov   a,#$aa
05c5: 8d bb     mov   y,#$bb
05c7: da f4     movw  $f4,ya
05c9: e8 cc     mov   a,#$cc
05cb: 64 f4     cmp   a,$f4
05cd: d0 fc     bne   $05cb
05cf: c4 f5     mov   $f5,a
05d1: ba f6     movw  ya,$f6
05d3: da 0e     movw  $0e,ya
05d5: eb f4     mov   y,$f4
05d7: e4 f5     mov   a,$f5
05d9: cb f4     mov   $f4,y
05db: f0 1f     beq   $05fc
05dd: eb f4     mov   y,$f4
05df: d0 fc     bne   $05dd
05e1: 7e f4     cmp   y,$f4
05e3: d0 0f     bne   $05f4
05e5: e4 f5     mov   a,$f5
05e7: cb f4     mov   $f4,y
05e9: d7 0e     mov   ($0e)+y,a
05eb: fc        inc   y
05ec: d0 02     bne   $05f0
05ee: ab 0f     inc   $0f
05f0: 7e f4     cmp   y,$f4
05f2: f0 f1     beq   $05e5
05f4: 10 fa     bpl   $05f0
05f6: 7e f4     cmp   y,$f4
05f8: 10 f6     bpl   $05f0
05fa: 2f d5     bra   $05d1
05fc: 8f 31 f1  mov   $f1,#$31
05ff: 6f        ret

0600: e8 aa     mov   a,#$aa
0602: 8d bb     mov   y,#$bb
0604: da f4     movw  $f4,ya
0606: e8 cc     mov   a,#$cc
0608: 64 f4     cmp   a,$f4
060a: d0 fc     bne   $0608
060c: c4 f5     mov   $f5,a
060e: 2f 46     bra   $0656
0610: f8 f4     mov   x,$f4
0612: d0 fc     bne   $0610
0614: 3e f4     cmp   x,$f4
0616: d0 20     bne   $0638
0618: e4 f5     mov   a,$f5
061a: d7 15     mov   ($15)+y,a
061c: e4 f6     mov   a,$f6
061e: d7 17     mov   ($17)+y,a
0620: e4 f7     mov   a,$f7
0622: d8 f4     mov   $f4,x
0624: 3d        inc   x
0625: d7 19     mov   ($19)+y,a
0627: 60        clrc
0628: dd        mov   a,y
0629: 88 03     adc   a,#$03
062b: fd        mov   y,a
062c: 90 06     bcc   $0634
062e: ab 16     inc   $16
0630: ab 18     inc   $18
0632: ab 1a     inc   $1a
0634: 3e f4     cmp   x,$f4
0636: f0 e0     beq   $0618
0638: 10 fa     bpl   $0634
063a: 3e f4     cmp   x,$f4
063c: 10 f6     bpl   $0634
063e: 5d        mov   x,a
063f: dd        mov   a,y
0640: 8d 00     mov   y,#$00
0642: 7a 15     addw  ya,$15
0644: da 15     movw  $15,ya
0646: da f6     movw  $f6,ya
0648: 7d        mov   a,x
0649: 8d 00     mov   y,#$00
064b: 7a 17     addw  ya,$17
064d: da 17     movw  $17,ya
064f: 7d        mov   a,x
0650: 8d 00     mov   y,#$00
0652: 7a 19     addw  ya,$19
0654: da 19     movw  $19,ya
0656: ba f6     movw  ya,$f6
0658: da 04     movw  $04,ya
065a: e4 f4     mov   a,$f4
065c: eb f5     mov   y,$f5
065e: c4 f4     mov   $f4,a
0660: f0 36     beq   $0698
0662: 64 f4     cmp   a,$f4
0664: f0 fc     beq   $0662
0666: fa f4 f4  mov   ($f4),($f4)
0669: ba f6     movw  ya,$f6
066b: da 06     movw  $06,ya
066d: e4 14     mov   a,$14
066f: 1c        asl   a
0670: 5d        mov   x,a
0671: e4 06     mov   a,$06
0673: d5 00 47  mov   $4700+x,a
0676: e4 07     mov   a,$07
0678: d5 01 47  mov   $4701+x,a
067b: 7d        mov   a,x
067c: 1c        asl   a
067d: 5d        mov   x,a
067e: e4 15     mov   a,$15
0680: d5 00 46  mov   $4600+x,a
0683: e4 16     mov   a,$16
0685: d5 01 46  mov   $4601+x,a
0688: ba 15     movw  ya,$15
068a: 7a 04     addw  ya,$04
068c: d5 02 46  mov   $4602+x,a
068f: dd        mov   a,y
0690: d5 03 46  mov   $4603+x,a
0693: 8d 00     mov   y,#$00
0695: 5f 10 06  jmp   $0610

0698: 8f 31 f1  mov   $f1,#$31
069b: 6f        ret

069c: cd 00     mov   x,#$00
069e: f5 b2 06  mov   a,$06b2+x
06a1: 68 ff     cmp   a,#$ff
06a3: f0 0c     beq   $06b1
06a5: fd        mov   y,a
06a6: 3d        inc   x
06a7: f5 b2 06  mov   a,$06b2+x
06aa: 3d        inc   x
06ab: cb f2     mov   $f2,y
06ad: c4 f3     mov   $f3,a
06af: 2f ed     bra   $069e
06b1: 6f        ret

06b2: db $0c,$60
06b4: db $1c,$60
06b6: db $2c,$00
06b8: db $3c,$00
06ba: db $4c,$00
06bc: db $5c,$00
06be: db $0d,$00
06c0: db $4d,$00
06c2: db $6c,$20
06c4: db $7d,$01
06c6: db $6d,$00
06c8: db $5d,$46
06ca: db $2d,$00
06cc: db $3d,$00
06ce: db $0f,$0c
06d0: db $1f,$21
06d2: db $2f,$2b
06d4: db $3f,$2b
06d6: db $4f,$13
06d8: db $5f,$fe
06da: db $6f,$f3
06dc: db $7f,$f9
06de: db $ff

06df: eb 13     mov   y,$13
06e1: 7d        mov   a,x
06e2: d6 70 01  mov   $0170+y,a
06e5: ab 13     inc   $13
06e7: 38 1f 13  and   $13,#$1f
06ea: e8 00     mov   a,#$00
06ec: d4 48     mov   $48+x,a
06ee: 6f        ret

06ef: eb 12     mov   y,$12
06f1: 7e 13     cmp   y,$13
06f3: f0 09     beq   $06fe
06f5: f6 70 01  mov   a,$0170+y
06f8: 5d        mov   x,a
06f9: ab 12     inc   $12
06fb: 38 1f 12  and   $12,#$1f
06fe: 6f        ret

06ff: 3f 24 07  call  $0724
0702: e8 00     mov   a,#$00
0704: c4 27     mov   $27,a
0706: c4 29     mov   $29,a
0708: c4 2c     mov   $2c,a
070a: c4 2d     mov   $2d,a
070c: 8f ff 2a  mov   $2a,#$ff
070f: c4 2b     mov   $2b,a
0711: 8f 71 2e  mov   $2e,#$71
0714: 8f 02 2f  mov   $2f,#$02
0717: c4 32     mov   $32,a
0719: c4 22     mov   $22,a
071b: c4 33     mov   $33,a
071d: 8f 40 21  mov   $21,#$40
0720: 8f 20 20  mov   $20,#$20
0723: 6f        ret

0724: e8 00     mov   a,#$00
0726: fd        mov   y,a
0727: da 12     movw  $12,ya
0729: da 10     movw  $10,ya
072b: cd 0f     mov   x,#$0f
072d: 3f df 06  call  $06df
0730: 1d        dec   x
0731: 10 fa     bpl   $072d
0733: cd 1f     mov   x,#$1f
0735: e8 ff     mov   a,#$ff
0737: d5 80 05  mov   $0580+x,a
073a: 1d        dec   x
073b: 10 fa     bpl   $0737
073d: 6f        ret

073e: f8 10     mov   x,$10
0740: 3e 11     cmp   x,$11
0742: f0 0c     beq   $0750
0744: f5 a0 05  mov   a,$05a0+x
0747: f0 07     beq   $0750
0749: 8b 10     dec   $10
074b: 38 0f 10  and   $10,#$0f
074e: cd ff     mov   x,#$ff
0750: 6f        ret

0751: f8 11     mov   x,$11
0753: d5 a0 05  mov   $05a0+x,a
0756: 1d        dec   x
0757: 10 02     bpl   $075b
0759: cd 0f     mov   x,#$0f
075b: 3e 10     cmp   x,$10
075d: f0 02     beq   $0761
075f: d8 11     mov   $11,x
0761: 6f        ret

0762: d8 40     mov   $40,x
0764: c4 28     mov   $28,a
0766: e4 29     mov   a,$29
0768: 10 03     bpl   $076d
076a: 48 ff     eor   a,#$ff
076c: bc        inc   a
076d: eb 28     mov   y,$28
076f: cf        mul   ya
0770: cd 0a     mov   x,#$0a
0772: 9e        div   ya,x
0773: f8 29     mov   x,$29
0775: 10 03     bpl   $077a
0777: 48 ff     eor   a,#$ff
0779: bc        inc   a
077a: 60        clrc
077b: 84 28     adc   a,$28
077d: 10 0a     bpl   $0789
077f: f8 29     mov   x,$29
0781: 10 04     bpl   $0787
0783: e8 00     mov   a,#$00
0785: 2f 02     bra   $0789
0787: e8 7f     mov   a,#$7f
0789: f8 40     mov   x,$40
078b: 6f        ret

078c: f4 a8     mov   a,$a8+x
078e: c4 04     mov   $04,a
0790: f5 00 02  mov   a,$0200+x
0793: fd        mov   y,a
0794: f5 50 01  mov   a,$0150+x
0797: c3 04 07  bbs6  $04,$07a1
079a: 80        setc
079b: a4 27     sbc   a,$27
079d: 10 02     bpl   $07a1
079f: e8 00     mov   a,#$00
07a1: cb f2     mov   $f2,y
07a3: c4 f3     mov   $f3,a
07a5: f5 60 01  mov   a,$0160+x
07a8: c3 04 07  bbs6  $04,$07b2
07ab: 80        setc
07ac: a4 27     sbc   a,$27
07ae: 10 02     bpl   $07b2
07b0: e8 00     mov   a,#$00
07b2: ab f2     inc   $f2
07b4: c4 f3     mov   $f3,a
07b6: f4 c8     mov   a,$c8+x
07b8: ab f2     inc   $f2
07ba: c4 f3     mov   $f3,a
07bc: f4 d8     mov   a,$d8+x
07be: ab f2     inc   $f2
07c0: c4 f3     mov   $f3,a
07c2: f5 40 02  mov   a,$0240+x
07c5: ab f2     inc   $f2
07c7: c4 f3     mov   $f3,a
07c9: f5 40 03  mov   a,$0340+x
07cc: ab f2     inc   $f2
07ce: c4 f3     mov   $f3,a
07d0: f5 50 03  mov   a,$0350+x
07d3: ab f2     inc   $f2
07d5: c4 f3     mov   $f3,a
07d7: f5 10 02  mov   a,$0210+x
07da: c4 04     mov   $04,a
07dc: f4 b8     mov   a,$b8+x
07de: 30 03     bmi   $07e3
07e0: 09 04 25  or    ($25),($04)
07e3: f4 a8     mov   a,$a8+x
07e5: c4 08     mov   $08,a
07e7: e4 04     mov   a,$04
07e9: 48 ff     eor   a,#$ff
07eb: c4 06     mov   $06,a
07ed: 93 08 05  bbc4  $08,$07f5
07f0: 09 04 22  or    ($22),($04)
07f3: 2f 03     bra   $07f8
07f5: 29 06 22  and   ($22),($06)
07f8: b3 08 10  bbc5  $08,$080b
07fb: 09 04 33  or    ($33),($04)
07fe: f4 58     mov   a,$58+x
0800: 28 1f     and   a,#$1f
0802: 38 e0 20  and   $20,#$e0
0805: 04 20     or    a,$20
0807: c4 20     mov   $20,a
0809: 2f 03     bra   $080e
080b: 29 06 33  and   ($33),($06)
080e: 6f        ret

080f: f4 a8     mov   a,$a8+x
0811: c4 04     mov   $04,a
0813: f5 00 02  mov   a,$0200+x
0816: fd        mov   y,a
0817: f5 50 01  mov   a,$0150+x
081a: 30 0e     bmi   $082a
081c: c3 04 07  bbs6  $04,$0826
081f: 80        setc
0820: a4 27     sbc   a,$27
0822: 10 02     bpl   $0826
0824: e8 00     mov   a,#$00
0826: cb f2     mov   $f2,y
0828: c4 f3     mov   $f3,a
082a: fc        inc   y
082b: f5 60 01  mov   a,$0160+x
082e: 30 0e     bmi   $083e
0830: c3 04 07  bbs6  $04,$083a
0833: 80        setc
0834: a4 27     sbc   a,$27
0836: 10 02     bpl   $083a
0838: e8 00     mov   a,#$00
083a: cb f2     mov   $f2,y
083c: c4 f3     mov   $f3,a
083e: fc        inc   y
083f: f4 c8     mov   a,$c8+x
0841: cb f2     mov   $f2,y
0843: c4 f3     mov   $f3,a
0845: f4 d8     mov   a,$d8+x
0847: ab f2     inc   $f2
0849: c4 f3     mov   $f3,a
084b: 6f        ret

084c: fb a8     mov   y,$a8+x
084e: cb 04     mov   $04,y
0850: c3 04 03  bbs6  $04,$0856
0853: 3f 62 07  call  $0762
0856: c4 04     mov   $04,a
0858: c4 05     mov   $05,a
085a: e4 35     mov   a,$35
085c: d0 21     bne   $087f
085e: f5 30 02  mov   a,$0230+x
0861: 10 03     bpl   $0866
0863: 48 ff     eor   a,#$ff
0865: bc        inc   a
0866: c4 06     mov   $06,a
0868: 80        setc
0869: a9 06 04  sbc   ($04),($06)
086c: 10 03     bpl   $0871
086e: 8f 00 04  mov   $04,#$00
0871: f5 30 02  mov   a,$0230+x
0874: 28 80     and   a,#$80
0876: d0 07     bne   $087f
0878: e4 04     mov   a,$04
087a: fa 05 04  mov   ($04),($05)
087d: c4 05     mov   $05,a
087f: e4 04     mov   a,$04
0881: d5 60 01  mov   $0160+x,a
0884: e4 05     mov   a,$05
0886: d5 50 01  mov   $0150+x,a
0889: 6f        ret

088a: e4 32     mov   a,$32
088c: d0 13     bne   $08a1
088e: 8f 80 30  mov   $30,#$80
0891: ba 2c     movw  ya,$2c
0893: 7a 2a     addw  ya,$2a
0895: 5a 2e     cmpw  ya,$2e
0897: 90 05     bcc   $089e
0899: 9a 2e     subw  ya,$2e
089b: 38 7f 30  and   $30,#$7f
089e: da 2c     movw  $2c,ya
08a0: 6f        ret

08a1: 8f 80 30  mov   $30,#$80
08a4: 6f        ret

08a5: f5 20 02  mov   a,$0220+x
08a8: 28 1c     and   a,#$1c
08aa: fd        mov   y,a
08ab: e8 ff     mov   a,#$ff
08ad: 76 80 05  cmp   a,$0580+y
08b0: d0 19     bne   $08cb
08b2: fc        inc   y
08b3: 76 80 05  cmp   a,$0580+y
08b6: d0 13     bne   $08cb
08b8: fc        inc   y
08b9: 76 80 05  cmp   a,$0580+y
08bc: d0 0d     bne   $08cb
08be: fc        inc   y
08bf: 76 80 05  cmp   a,$0580+y
08c2: d0 07     bne   $08cb
08c4: e8 ee     mov   a,#$ee
08c6: c4 f4     mov   $f4,a
08c8: 5f c8 08  jmp   $08c8

08cb: 7d        mov   a,x
08cc: 76 80 05  cmp   a,$0580+y
08cf: 6f        ret

08d0: e4 32     mov   a,$32
08d2: f0 0c     beq   $08e0
08d4: 3f a5 08  call  $08a5
08d7: d0 07     bne   $08e0
08d9: f5 10 02  mov   a,$0210+x
08dc: 04 26     or    a,$26
08de: c4 26     mov   $26,a
08e0: 6f        ret

08e1: f4 a8     mov   a,$a8+x
08e3: c4 04     mov   $04,a
08e5: 63 04 01  bbs3  $04,$08e9
08e8: 6f        ret

08e9: 28 fb     and   a,#$fb
08eb: d4 a8     mov   $a8+x,a
08ed: f4 c8     mov   a,$c8+x
08ef: fb d8     mov   y,$d8+x
08f1: da 06     movw  $06,ya
08f3: f4 58     mov   a,$58+x
08f5: bc        inc   a
08f6: bc        inc   a
08f7: 3f 26 0b  call  $0b26
08fa: eb 37     mov   y,$37
08fc: 9a 06     subw  ya,$06
08fe: cb 06     mov   $06,y
0900: fd        mov   y,a
0901: f5 d0 02  mov   a,$02d0+x
0904: cf        mul   ya
0905: c4 05     mov   $05,a
0907: e4 06     mov   a,$06
0909: cb 06     mov   $06,y
090b: fd        mov   y,a
090c: f5 d0 02  mov   a,$02d0+x
090f: cf        mul   ya
0910: 60        clrc
0911: 84 06     adc   a,$06
0913: c4 06     mov   $06,a
0915: 90 01     bcc   $0918
0917: fc        inc   y
0918: cb 07     mov   $07,y
091a: 8f 00 04  mov   $04,#$00
091d: f5 e0 02  mov   a,$02e0+x
0920: d5 00 01  mov   $0100+x,a
0923: 3f 45 09  call  $0945
0926: d5 70 02  mov   $0270+x,a
0929: e4 07     mov   a,$07
092b: d5 a0 02  mov   $02a0+x,a
092e: e4 06     mov   a,$06
0930: d5 90 02  mov   $0290+x,a
0933: e4 05     mov   a,$05
0935: d5 80 02  mov   $0280+x,a
0938: e8 00     mov   a,#$00
093a: d4 98     mov   $98+x,a
093c: d4 88     mov   $88+x,a
093e: f5 b0 02  mov   a,$02b0+x
0941: d5 c0 02  mov   $02c0+x,a
0944: 6f        ret

0945: d8 40     mov   $40,x
0947: 5d        mov   x,a
0948: 8d 00     mov   y,#$00
094a: e4 07     mov   a,$07
094c: 9e        div   ya,x
094d: c4 07     mov   $07,a
094f: e4 06     mov   a,$06
0951: 9e        div   ya,x
0952: c4 06     mov   $06,a
0954: e4 05     mov   a,$05
0956: 9e        div   ya,x
0957: c4 05     mov   $05,a
0959: e4 04     mov   a,$04
095b: 9e        div   ya,x
095c: f8 40     mov   x,$40
095e: 6f        ret

095f: f4 a8     mov   a,$a8+x
0961: c4 04     mov   $04,a
0963: 63 04 01  bbs3  $04,$0967
0966: 6f        ret

0967: f5 c0 02  mov   a,$02c0+x
096a: f0 05     beq   $0971
096c: 9c        dec   a
096d: d5 c0 02  mov   $02c0+x,a
0970: 6f        ret

0971: 43 04 1f  bbs2  $04,$0993
0974: 60        clrc
0975: f5 70 02  mov   a,$0270+x
0978: 94 88     adc   a,$88+x
097a: d4 88     mov   $88+x,a
097c: f5 80 02  mov   a,$0280+x
097f: 94 98     adc   a,$98+x
0981: d4 98     mov   $98+x,a
0983: f5 90 02  mov   a,$0290+x
0986: 94 c8     adc   a,$c8+x
0988: d4 c8     mov   $c8+x,a
098a: f5 a0 02  mov   a,$02a0+x
098d: 94 d8     adc   a,$d8+x
098f: d4 d8     mov   $d8+x,a
0991: 2f 1d     bra   $09b0
0993: 80        setc
0994: f4 88     mov   a,$88+x
0996: b5 70 02  sbc   a,$0270+x
0999: d4 88     mov   $88+x,a
099b: f4 98     mov   a,$98+x
099d: b5 80 02  sbc   a,$0280+x
09a0: d4 98     mov   $98+x,a
09a2: f4 c8     mov   a,$c8+x
09a4: b5 90 02  sbc   a,$0290+x
09a7: d4 c8     mov   $c8+x,a
09a9: f4 d8     mov   a,$d8+x
09ab: b5 a0 02  sbc   a,$02a0+x
09ae: d4 d8     mov   $d8+x,a
09b0: 40        setp
09b1: 9b 00     dec   $00+x
09b3: 20        clrp
09b4: f0 01     beq   $09b7
09b6: 6f        ret

09b7: e4 04     mov   a,$04
09b9: 48 04     eor   a,#$04
09bb: d4 a8     mov   $a8+x,a
09bd: f5 e0 02  mov   a,$02e0+x
09c0: 1c        asl   a
09c1: d5 00 01  mov   $0100+x,a
09c4: 6f        ret

09c5: f4 a8     mov   a,$a8+x
09c7: c4 04     mov   $04,a
09c9: 23 04 01  bbs1  $04,$09cd
09cc: 6f        ret

09cd: 28 fe     and   a,#$fe
09cf: d4 a8     mov   $a8+x,a
09d1: f5 10 03  mov   a,$0310+x
09d4: d5 20 01  mov   $0120+x,a
09d7: f5 f0 02  mov   a,$02f0+x
09da: d5 00 03  mov   $0300+x,a
09dd: e8 00     mov   a,#$00
09df: d5 30 01  mov   $0130+x,a
09e2: d5 40 01  mov   $0140+x,a
09e5: 6f        ret

09e6: f4 a8     mov   a,$a8+x
09e8: c4 04     mov   $04,a
09ea: 23 04 01  bbs1  $04,$09ee
09ed: 6f        ret

09ee: f5 00 03  mov   a,$0300+x
09f1: f0 05     beq   $09f8
09f3: 9c        dec   a
09f4: d5 00 03  mov   $0300+x,a
09f7: 6f        ret

09f8: 40        setp
09f9: 03 04 20  bbs0  $04,$0a1c
09fc: 80        setc
09fd: f4 30     mov   a,$30+x
09ff: b5 20 03  sbc   a,$0320+x
0a02: d4 30     mov   $30+x,a
0a04: f4 50     mov   a,$50+x
0a06: b5 30 03  sbc   a,$0330+x
0a09: d4 50     mov   $50+x,a
0a0b: 80        setc
0a0c: f4 40     mov   a,$40+x
0a0e: b5 20 03  sbc   a,$0320+x
0a11: d4 40     mov   $40+x,a
0a13: f4 60     mov   a,$60+x
0a15: b5 30 03  sbc   a,$0330+x
0a18: d4 60     mov   $60+x,a
0a1a: 2f 1e     bra   $0a3a
0a1c: 60        clrc
0a1d: f4 30     mov   a,$30+x
0a1f: 95 20 03  adc   a,$0320+x
0a22: d4 30     mov   $30+x,a
0a24: f4 50     mov   a,$50+x
0a26: 95 30 03  adc   a,$0330+x
0a29: d4 50     mov   $50+x,a
0a2b: 60        clrc
0a2c: f4 40     mov   a,$40+x
0a2e: 95 20 03  adc   a,$0320+x
0a31: d4 40     mov   $40+x,a
0a33: f4 60     mov   a,$60+x
0a35: 95 30 03  adc   a,$0330+x
0a38: d4 60     mov   $60+x,a
0a3a: 9b 20     dec   $20+x
0a3c: 20        clrp
0a3d: f0 01     beq   $0a40
0a3f: 6f        ret

0a40: f5 10 03  mov   a,$0310+x
0a43: d5 20 01  mov   $0120+x,a
0a46: e4 04     mov   a,$04
0a48: 48 01     eor   a,#$01
0a4a: d4 a8     mov   $a8+x,a
0a4c: 6f        ret

0a4d: e8 40     mov   a,#$40
0a4f: 14 b8     or    a,$b8+x
0a51: d4 b8     mov   $b8+x,a
0a53: f5 d0 03  mov   a,$03d0+x
0a56: 60        clrc
0a57: 94 58     adc   a,$58+x
0a59: 3f 26 0b  call  $0b26
0a5c: eb 37     mov   y,$37
0a5e: d4 c8     mov   $c8+x,a
0a60: db d8     mov   $d8+x,y
0a62: f4 58     mov   a,$58+x
0a64: 2f 0e     bra   $0a74
0a66: f4 b8     mov   a,$b8+x
0a68: c4 04     mov   $04,a
0a6a: 83 04 e0  bbs4  $04,$0a4d
0a6d: c3 04 01  bbs6  $04,$0a71
0a70: 6f        ret

0a71: f5 d0 03  mov   a,$03d0+x
0a74: 3f 26 0b  call  $0b26
0a77: c4 36     mov   $36,a
0a79: fb d8     mov   y,$d8+x
0a7b: f4 c8     mov   a,$c8+x
0a7d: 9a 36     subw  ya,$36
0a7f: da 06     movw  $06,ya
0a81: 10 0f     bpl   $0a92
0a83: 48 ff     eor   a,#$ff
0a85: c4 06     mov   $06,a
0a87: 58 ff 07  eor   $07,#$ff
0a8a: 3a 06     incw  $06
0a8c: e8 df     mov   a,#$df
0a8e: 34 b8     and   a,$b8+x
0a90: 2f 04     bra   $0a96
0a92: e8 20     mov   a,#$20
0a94: 14 b8     or    a,$b8+x
0a96: d4 b8     mov   $b8+x,a
0a98: e8 00     mov   a,#$00
0a9a: c4 04     mov   $04,a
0a9c: c4 05     mov   $05,a
0a9e: d4 98     mov   $98+x,a
0aa0: d4 88     mov   $88+x,a
0aa2: f5 70 03  mov   a,$0370+x
0aa5: 3f 45 09  call  $0945
0aa8: d5 90 03  mov   $0390+x,a
0aab: e4 07     mov   a,$07
0aad: d5 c0 03  mov   $03c0+x,a
0ab0: e4 06     mov   a,$06
0ab2: d5 b0 03  mov   $03b0+x,a
0ab5: e4 05     mov   a,$05
0ab7: d5 a0 03  mov   $03a0+x,a
0aba: f5 70 03  mov   a,$0370+x
0abd: d5 10 01  mov   $0110+x,a
0ac0: f5 80 03  mov   a,$0380+x
0ac3: d5 60 03  mov   $0360+x,a
0ac6: 6f        ret

0ac7: f4 b8     mov   a,$b8+x
0ac9: c4 04     mov   $04,a
0acb: c3 04 01  bbs6  $04,$0acf
0ace: 6f        ret

0acf: f5 60 03  mov   a,$0360+x
0ad2: f0 05     beq   $0ad9
0ad4: 9c        dec   a
0ad5: d5 60 03  mov   $0360+x,a
0ad8: 6f        ret

0ad9: a3 04 1f  bbs5  $04,$0afb
0adc: 60        clrc
0add: f4 88     mov   a,$88+x
0adf: 95 90 03  adc   a,$0390+x
0ae2: d4 88     mov   $88+x,a
0ae4: f4 98     mov   a,$98+x
0ae6: 95 a0 03  adc   a,$03a0+x
0ae9: d4 98     mov   $98+x,a
0aeb: f4 c8     mov   a,$c8+x
0aed: 95 b0 03  adc   a,$03b0+x
0af0: d4 c8     mov   $c8+x,a
0af2: f4 d8     mov   a,$d8+x
0af4: 95 c0 03  adc   a,$03c0+x
0af7: d4 d8     mov   $d8+x,a
0af9: 2f 1d     bra   $0b18
0afb: 80        setc
0afc: f4 88     mov   a,$88+x
0afe: b5 90 03  sbc   a,$0390+x
0b01: d4 88     mov   $88+x,a
0b03: f4 98     mov   a,$98+x
0b05: b5 a0 03  sbc   a,$03a0+x
0b08: d4 98     mov   $98+x,a
0b0a: f4 c8     mov   a,$c8+x
0b0c: b5 b0 03  sbc   a,$03b0+x
0b0f: d4 c8     mov   $c8+x,a
0b11: f4 d8     mov   a,$d8+x
0b13: b5 c0 03  sbc   a,$03c0+x
0b16: d4 d8     mov   $d8+x,a
0b18: 40        setp
0b19: 9b 10     dec   $10+x
0b1b: 20        clrp
0b1c: f0 01     beq   $0b1f
0b1e: 6f        ret

0b1f: e8 9f     mov   a,#$9f
0b21: 24 04     and   a,$04
0b23: d4 b8     mov   $b8+x,a
0b25: 6f        ret

0b26: c4 3f     mov   $3f,a
0b28: f5 40 02  mov   a,$0240+x
0b2b: 1c        asl   a
0b2c: fd        mov   y,a
0b2d: f6 00 47  mov   a,$4700+y
0b30: c4 0a     mov   $0a,a
0b32: f6 01 47  mov   a,$4701+y
0b35: c4 0b     mov   $0b,a
0b37: e4 3f     mov   a,$3f
0b39: 8d 08     mov   y,#$08
0b3b: cf        mul   ya
0b3c: 7a 0a     addw  ya,$0a
0b3e: 8f a9 0a  mov   $0a,#$a9
0b41: 8f 12 0b  mov   $0b,#$12
0b44: 7a 0a     addw  ya,$0a
0b46: da 0a     movw  $0a,ya
0b48: 8d 01     mov   y,#$01
0b4a: f7 0a     mov   a,($0a)+y
0b4c: c4 37     mov   $37,a
0b4e: dc        dec   y
0b4f: f7 0a     mov   a,($0a)+y
0b51: 6f        ret

0b52: 8f 00 22  mov   $22,#$00
0b55: 8f 00 24  mov   $24,#$00
0b58: 18 20 20  or    $20,#$20
0b5b: 8f 00 21  mov   $21,#$00
0b5e: 6f        ret

0b5f: e3 31 1d  bbs7  $31,$0b7f
0b62: 8b 39     dec   $39
0b64: d0 28     bne   $0b8e
0b66: 78 50 27  cmp   $27,#$50
0b69: b0 05     bcs   $0b70
0b6b: 8f 1a 39  mov   $39,#$1a
0b6e: 2f 03     bra   $0b73
0b70: 8f 06 39  mov   $39,#$06
0b73: 78 70 27  cmp   $27,#$70
0b76: f0 07     beq   $0b7f
0b78: ab 27     inc   $27
0b7a: e4 27     mov   a,$27
0b7c: c4 45     mov   $45,a
0b7e: 6f        ret

0b7f: e8 80     mov   a,#$80
0b81: c4 27     mov   $27,a
0b83: c4 45     mov   $45,a
0b85: 8f 00 38  mov   $38,#$00
0b88: 38 f0 3a  and   $3a,#$f0
0b8b: fa 3a f7  mov   ($f7),($3a)
0b8e: 6f        ret

0b8f: e3 31 2a  bbs7  $31,$0bbc
0b92: e4 42     mov   a,$42
0b94: 10 10     bpl   $0ba6
0b96: 8b 44     dec   $44
0b98: d0 22     bne   $0bbc
0b9a: 8f 01 44  mov   $44,#$01
0b9d: e4 27     mov   a,$27
0b9f: 64 46     cmp   a,$46
0ba1: b0 13     bcs   $0bb6
0ba3: ab 27     inc   $27
0ba5: 6f        ret

0ba6: 8b 43     dec   $43
0ba8: d0 12     bne   $0bbc
0baa: 8f 02 43  mov   $43,#$02
0bad: e4 45     mov   a,$45
0baf: 64 27     cmp   a,$27
0bb1: b0 06     bcs   $0bb9
0bb3: 8b 27     dec   $27
0bb5: 6f        ret

0bb6: 8f ff 32  mov   $32,#$ff
0bb9: 8f 00 42  mov   $42,#$00
0bbc: 6f        ret

0bbd: 20        clrp
0bbe: cd ff     mov   x,#$ff
0bc0: bd        mov   sp,x
0bc1: cd 00     mov   x,#$00
0bc3: 7d        mov   a,x
0bc4: af        mov   (x)+,a
0bc5: c8 e0     cmp   x,#$e0
0bc7: d0 fb     bne   $0bc4
0bc9: 8f 00 0c  mov   $0c,#$00
0bcc: 8f 02 0d  mov   $0d,#$02
0bcf: fd        mov   y,a
0bd0: d7 0c     mov   ($0c)+y,a
0bd2: 3a 0c     incw  $0c
0bd4: 78 05 0d  cmp   $0d,#$05
0bd7: d0 f7     bne   $0bd0
0bd9: 78 b0 0c  cmp   $0c,#$b0
0bdc: d0 f2     bne   $0bd0
0bde: e8 00     mov   a,#$00
0be0: c4 f4     mov   $f4,a
0be2: c4 f5     mov   $f5,a
0be4: c4 f6     mov   $f6,a
0be6: c4 f7     mov   $f7,a
0be8: c4 f1     mov   $f1,a
0bea: e8 20     mov   a,#$20
0bec: c4 fa     mov   $fa,a
0bee: e4 fd     mov   a,$fd
0bf0: 3f 9c 06  call  $069c
0bf3: 3f ff 06  call  $06ff
0bf6: 18 31 1b  or    $1b,#$31
0bf9: e4 1b     mov   a,$1b
0bfb: c4 f1     mov   $f1,a
0bfd: e4 fd     mov   a,$fd
0bff: f0 fc     beq   $0bfd
0c01: e4 f6     mov   a,$f6
0c03: 64 f6     cmp   a,$f6
0c05: d0 fa     bne   $0c01
0c07: e4 f6     mov   a,$f6
0c09: f0 08     beq   $0c13
0c0b: c4 f6     mov   $f6,a
0c0d: 8f 21 f1  mov   $f1,#$21
0c10: 3f 51 07  call  $0751
0c13: e8 00     mov   a,#$00
0c15: c4 25     mov   $25,a
0c17: c4 26     mov   $26,a
0c19: 3f 8a 08  call  $088a
0c1c: 8f 0f 1c  mov   $1c,#$0f
0c1f: f8 1c     mov   x,$1c
0c21: f4 48     mov   a,$48+x
0c23: f0 03     beq   $0c28
0c25: 3f fe 0d  call  $0dfe
0c28: 8b 1c     dec   $1c
0c2a: 10 f3     bpl   $0c1f
0c2c: e4 38     mov   a,$38
0c2e: f0 03     beq   $0c33
0c30: 3f 5f 0b  call  $0b5f
0c33: 8f 00 31  mov   $31,#$00
0c36: e4 42     mov   a,$42
0c38: f0 03     beq   $0c3d
0c3a: 3f 8f 0b  call  $0b8f
0c3d: e4 21     mov   a,$21
0c3f: f0 02     beq   $0c43
0c41: 8b 21     dec   $21
0c43: 8d 08     mov   y,#$08
0c45: ad 05     cmp   y,#$05
0c47: f0 06     beq   $0c4f
0c49: b0 07     bcs   $0c52
0c4b: e4 21     mov   a,$21
0c4d: d0 0f     bne   $0c5e
0c4f: a3 21 0c  bbs5  $21,$0c5e
0c52: f6 ed 0d  mov   a,$0ded+y
0c55: c4 f2     mov   $f2,a
0c57: f6 f5 0d  mov   a,$0df5+y
0c5a: 5d        mov   x,a
0c5b: e6        mov   a,(x)
0c5c: c4 f3     mov   $f3,a
0c5e: fe e5     dbnz  y,$0c45
0c60: 3f 3e 07  call  $073e
0c63: f0 98     beq   $0bfd
0c65: c4 1d     mov   $1d,a
0c67: 68 90     cmp   a,#$90
0c69: b0 6d     bcs   $0cd8
0c6b: e3 1d 2a  bbs7  $1d,$0c98
0c6e: 18 f0 3a  or    $3a,#$f0
0c71: fa 3a f7  mov   ($f7),($3a)
0c74: c3 1d 2d  bbs6  $1d,$0ca4
0c77: 1c        asl   a
0c78: 5d        mov   x,a
0c79: f5 fe 15  mov   a,$15fe+x
0c7c: c4 0c     mov   $0c,a
0c7e: f5 ff 15  mov   a,$15ff+x
0c81: c4 0d     mov   $0d,a
; load voice address into $0e/f
0c83: 8d 00     mov   y,#$00
0c85: f7 0c     mov   a,($0c)+y
0c87: c4 0e     mov   $0e,a
0c89: 3a 0c     incw  $0c
0c8b: f7 0c     mov   a,($0c)+y
0c8d: c4 0f     mov   $0f,a
0c8f: 3a 0c     incw  $0c
0c91: 04 0e     or    a,$0e
0c93: d0 1f     bne   $0cb4
0c95: 5f fd 0b  jmp   $0bfd

0c98: 18 0f 3a  or    $3a,#$0f
0c9b: fa 3a f7  mov   ($f7),($3a)
0c9e: 28 7f     and   a,#$7f
0ca0: 08 40     or    a,#$40
0ca2: 2f 02     bra   $0ca6
0ca4: 28 3f     and   a,#$3f
0ca6: 1c        asl   a
0ca7: 5d        mov   x,a
0ca8: f5 00 28  mov   a,$2800+x
0cab: c4 0c     mov   $0c,a
0cad: f5 01 28  mov   a,$2801+x
0cb0: c4 0d     mov   $0d,a             ; load song header address from $2800 (regular song is $40 and starts from $3800)
0cb2: 2f cf     bra   $0c83             ; load voice ptr
0cb4: 3f ef 06  call  $06ef
0cb7: e4 0e     mov   a,$0e
0cb9: d5 50 02  mov   $0250+x,a
0cbc: e4 0f     mov   a,$0f
0cbe: d5 60 02  mov   $0260+x,a         ; load voice ptr into $0250+x/$0260+x
0cc1: e8 01     mov   a,#$01
0cc3: d4 48     mov   $48+x,a
0cc5: e8 00     mov   a,#$00
0cc7: d5 30 02  mov   $0230+x,a
0cca: d4 a8     mov   $a8+x,a
0ccc: d4 b8     mov   $b8+x,a
0cce: d5 60 05  mov   $0560+x,a
0cd1: e8 80     mov   a,#$80
0cd3: d5 20 02  mov   $0220+x,a
0cd6: 2f ab     bra   $0c83
0cd8: 68 f0     cmp   a,#$f0
0cda: b0 07     bcs   $0ce3
0cdc: 28 0f     and   a,#$0f
0cde: 1c        asl   a
0cdf: 5d        mov   x,a
0ce0: 1f ea 0c  jmp   ($0cea+x)

0ce3: 28 0f     and   a,#$0f
0ce5: 1c        asl   a
0ce6: 5d        mov   x,a
0ce7: 1f f0 0c  jmp   ($0cf0+x)

0cea: dw $0d10
0cec: dw $0dcf
0cee: dw $0d74
0cf0: dw $0d13
0cf2: dw $0d44
0cf4: dw $0d3f
0cf6: dw $0d67
0cf8: dw $0d9e
0cfa: dw $0d93
0cfc: dw $0d56
0cfe: dw $0d51
0d00: dw $0d5b
0d02: dw $0d60
0d04: dw $0d49
0d06: dw $0da9
0d08: dw $0db7
0d0a: dw $0d37
0d0c: dw $0d2f
0d0e: dw $0d23

0d10: 5f fd 0b  jmp   $0bfd

0d13: 8f 80 f1  mov   $f1,#$80
0d16: e5 fe ff  mov   a,$fffe
0d19: ec ff ff  mov   y,$ffff
0d1c: da 04     movw  $04,ya
0d1e: cd 00     mov   x,#$00
0d20: 1f 04 00  jmp   ($0004+x)

0d23: 3f 52 0b  call  $0b52
0d26: 8f c0 31  mov   $31,#$c0
0d29: e8 00     mov   a,#$00
0d2b: c4 f7     mov   $f7,a
0d2d: 2f 15     bra   $0d44
0d2f: 3f 52 0b  call  $0b52
0d32: 8f 80 31  mov   $31,#$80
0d35: 2f 0d     bra   $0d44
0d37: 3f 52 0b  call  $0b52
0d3a: 8f 40 31  mov   $31,#$40
0d3d: 2f d1     bra   $0d10
0d3f: 8f ff 32  mov   $32,#$ff
0d42: 2f cc     bra   $0d10
0d44: 8f 00 32  mov   $32,#$00
0d47: 2f c7     bra   $0d10
0d49: 8f ff 38  mov   $38,#$ff
0d4c: 8f 1a 39  mov   $39,#$1a
0d4f: 2f bf     bra   $0d10
0d51: 8f 00 35  mov   $35,#$00
0d54: 2f ba     bra   $0d10
0d56: 8f ff 35  mov   $35,#$ff
0d59: 2f b5     bra   $0d10
0d5b: 3f c3 05  call  $05c3
0d5e: 2f b0     bra   $0d10
0d60: 3f 00 06  call  $0600
0d63: ab 14     inc   $14
0d65: 2f a9     bra   $0d10
0d67: 8f 55 f7  mov   $f7,#$55
0d6a: 78 55 f7  cmp   $f7,#$55
0d6d: d0 fb     bne   $0d6a
0d6f: fa f4 14  mov   ($14),($f4)
0d72: 2f 9c     bra   $0d10
0d74: 8f aa f7  mov   $f7,#$aa
0d77: 78 aa f7  cmp   $f7,#$aa
0d7a: d0 fb     bne   $0d77
0d7c: ba f4     movw  ya,$f4
0d7e: da 15     movw  $15,ya
0d80: da f4     movw  $f4,ya
0d82: 8f 11 f1  mov   $f1,#$11
0d85: bc        inc   a
0d86: d0 01     bne   $0d89
0d88: fc        inc   y
0d89: da 17     movw  $17,ya
0d8b: bc        inc   a
0d8c: d0 01     bne   $0d8f
0d8e: fc        inc   y
0d8f: da 19     movw  $19,ya
0d91: 2f 39     bra   $0dcc
0d93: 60        clrc
0d94: 98 08 2a  adc   $2a,#$08
0d97: 90 33     bcc   $0dcc
0d99: b8 08 2a  sbc   $2a,#$08
0d9c: 2f 2e     bra   $0dcc
0d9e: 80        setc
0d9f: b8 08 2a  sbc   $2a,#$08
0da2: b0 28     bcs   $0dcc
0da4: 98 08 2a  adc   $2a,#$08
0da7: 2f 23     bra   $0dcc
0da9: e3 31 20  bbs7  $31,$0dcc
0dac: 8f 01 42  mov   $42,#$01
0daf: 8f 02 43  mov   $43,#$02
0db2: 8f 00 32  mov   $32,#$00
0db5: 2f 15     bra   $0dcc
0db7: e3 31 12  bbs7  $31,$0dcc
0dba: e4 38     mov   a,$38
0dbc: d0 0e     bne   $0dcc
0dbe: 78 80 27  cmp   $27,#$80
0dc1: f0 09     beq   $0dcc
0dc3: 8f ff 42  mov   $42,#$ff
0dc6: 8f 01 44  mov   $44,#$01
0dc9: 8f 62 46  mov   $46,#$62
0dcc: 5f 10 0d  jmp   $0d10

0dcf: e8 ff     mov   a,#$ff
0dd1: 8f 5c f2  mov   $f2,#$5c
0dd4: c4 f3     mov   $f3,a
0dd6: e8 99     mov   a,#$99
0dd8: 8d 01     mov   y,#$01
0dda: da 06     movw  $06,ya
0ddc: 1a 06     decw  $06
0dde: d0 fc     bne   $0ddc
0de0: e8 00     mov   a,#$00
0de2: cd 0f     mov   x,#$0f
0de4: d4 48     mov   $48+x,a
0de6: 1d        dec   x
0de7: 10 fb     bpl   $0de4
0de9: 3f 24 07  call  $0724
0dec: 2f de     bra   $0dcc

; $0ded+y
0dee: db $2c,$3c,$0d,$4d,$6c,$3d,$5c,$4c
; $0df5+y
0df6: db $24,$24,$23,$22,$20,$33,$26,$25

0dfe: 1c        asl   a
0dff: 5d        mov   x,a
0e00: 1f 03 0e  jmp   ($0e03+x)

0e03: dw $0e0d
0e05: dw $0e0e
0e07: dw $123b
0e09: dw $1284
0e0b: dw $12a4

0e0d: 6f        ret

0e0e: f8 1c     mov   x,$1c
0e10: f4 a8     mov   a,$a8+x
0e12: 24 31     and   a,$31
0e14: f0 03     beq   $0e19
0e16: 5f fe 11  jmp   $11fe

0e19: f4 a8     mov   a,$a8+x
0e1b: 24 30     and   a,$30
0e1d: f0 0c     beq   $0e2b
0e1f: 5f d0 08  jmp   $08d0

0e22: 9c        dec   a
0e23: d5 60 05  mov   $0560+x,a
0e26: f5 70 05  mov   a,$0570+x
0e29: 2f 17     bra   $0e42
0e2b: f5 50 02  mov   a,$0250+x
0e2e: c4 0c     mov   $0c,a
0e30: f5 60 02  mov   a,$0260+x
0e33: c4 0d     mov   $0d,a             ; set voice ptr into $0c/d
0e35: f8 1c     mov   x,$1c
0e37: 8d 00     mov   y,#$00
0e39: f5 60 05  mov   a,$0560+x
0e3c: d0 e4     bne   $0e22
0e3e: f7 0c     mov   a,($0c)+y         ; read vcmd
0e40: 3a 0c     incw  $0c
0e42: c4 1e     mov   $1e,a
0e44: e3 1e 4f  bbs7  $1e,$0e96
; vcmd 00-7f
0e47: d4 58     mov   $58+x,a
0e49: 3f 26 0b  call  $0b26
0e4c: eb 37     mov   y,$37
0e4e: d4 c8     mov   $c8+x,a
0e50: db d8     mov   $d8+x,y
0e52: 8d 00     mov   y,#$00
0e54: f7 0c     mov   a,($0c)+y
0e56: d4 78     mov   $78+x,a
0e58: d5 30 05  mov   $0530+x,a
0e5b: 3a 0c     incw  $0c
0e5d: f7 0c     mov   a,($0c)+y
0e5f: d4 68     mov   $68+x,a
0e61: d5 40 05  mov   $0540+x,a
0e64: 3a 0c     incw  $0c
0e66: f7 0c     mov   a,($0c)+y
0e68: d5 50 05  mov   $0550+x,a
0e6b: 3f 4c 08  call  $084c
0e6e: 3f e1 08  call  $08e1
0e71: 3f c5 09  call  $09c5
0e74: 3f 66 0a  call  $0a66
0e77: 3f a5 08  call  $08a5
0e7a: d0 03     bne   $0e7f
0e7c: 3f 8c 07  call  $078c
0e7f: f4 b8     mov   a,$b8+x
0e81: 28 7f     and   a,#$7f
0e83: d4 b8     mov   $b8+x,a
0e85: 3a 0c     incw  $0c
0e87: e4 0c     mov   a,$0c
0e89: d5 50 02  mov   $0250+x,a
0e8c: e4 0d     mov   a,$0d
0e8e: d5 60 02  mov   $0260+x,a
0e91: e8 02     mov   a,#$02
0e93: d4 48     mov   $48+x,a
0e95: 6f        ret

0e96: 5c        lsr   a
0e97: 5c        lsr   a
0e98: 5c        lsr   a
0e99: 28 0e     and   a,#$0e
0e9b: 5d        mov   x,a
0e9c: 1f 9f 0e  jmp   ($0e9f+x)

0e9f: dw $0f13  ; 80-8f
0ea1: dw $0eaf  ; 90-9f - nop.1
0ea3: dw $0f3d  ; a0-af
0ea5: dw $0ec4  ; b0-bf
0ea7: dw $0f98  ; c0-cf
0ea9: dw $1037  ; d0-df
0eab: dw $11f0  ; e0-ef
0ead: dw $11fe  ; f0-ff

; vcmd 90-9f,c4-ce,d4-d9 - nop.1
0eaf: 3a 0c     incw  $0c
0eb1: 5f 35 0e  jmp   $0e35

0eb4: f7 0c     mov   a,($0c)+y
0eb6: d5 70 05  mov   $0570+x,a
0eb9: c4 1e     mov   $1e,a
0ebb: 3a 0c     incw  $0c
0ebd: f7 0c     mov   a,($0c)+y
0ebf: d5 60 05  mov   $0560+x,a
0ec2: 2f 0b     bra   $0ecf

; vcmd b0-bf
0ec4: f8 1c     mov   x,$1c
0ec6: 8d 00     mov   y,#$00
0ec8: 78 b0 1e  cmp   $1e,#$b0
0ecb: f0 e7     beq   $0eb4
0ecd: 1a 0c     decw  $0c
0ecf: f4 58     mov   a,$58+x
0ed1: 63 1e 06  bbs3  $1e,$0eda
0ed4: 3a 0c     incw  $0c
0ed6: f7 0c     mov   a,($0c)+y
0ed8: d4 58     mov   $58+x,a
0eda: 3f 26 0b  call  $0b26
0edd: eb 37     mov   y,$37
0edf: d4 c8     mov   $c8+x,a
0ee1: db d8     mov   $d8+x,y
0ee3: 8d 00     mov   y,#$00
0ee5: f5 30 05  mov   a,$0530+x
0ee8: 43 1e 07  bbs2  $1e,$0ef2
0eeb: 3a 0c     incw  $0c
0eed: f7 0c     mov   a,($0c)+y
0eef: d5 30 05  mov   $0530+x,a
0ef2: d4 78     mov   $78+x,a
0ef4: f5 40 05  mov   a,$0540+x
0ef7: 23 1e 07  bbs1  $1e,$0f01
0efa: 3a 0c     incw  $0c
0efc: f7 0c     mov   a,($0c)+y
0efe: d5 40 05  mov   $0540+x,a
0f01: d4 68     mov   $68+x,a
0f03: f5 50 05  mov   a,$0550+x
0f06: 03 1e 07  bbs0  $1e,$0f10
0f09: 3a 0c     incw  $0c
0f0b: f7 0c     mov   a,($0c)+y
0f0d: d5 50 05  mov   $0550+x,a
0f10: 5f 6b 0e  jmp   $0e6b

; vcmd 80-8f
0f13: e4 1c     mov   a,$1c
0f15: 1c        asl   a
0f16: 1c        asl   a
0f17: c4 04     mov   $04,a
0f19: 8d 00     mov   y,#$00
0f1b: f7 0c     mov   a,($0c)+y
0f1d: 28 03     and   a,#$03
0f1f: 60        clrc
0f20: 84 04     adc   a,$04
0f22: fd        mov   y,a
0f23: f6 60 04  mov   a,$0460+y
0f26: 9c        dec   a
0f27: f0 05     beq   $0f2e
0f29: 3a 0c     incw  $0c
0f2b: 5f 35 0e  jmp   $0e35

0f2e: dd        mov   a,y
0f2f: 1c        asl   a
0f30: fd        mov   y,a
0f31: f6 a0 04  mov   a,$04a0+y
0f34: c4 0c     mov   $0c,a
0f36: f6 a1 04  mov   a,$04a1+y
0f39: c4 0d     mov   $0d,a
0f3b: 2f ee     bra   $0f2b

; vcmd a0-af
0f3d: e4 1c     mov   a,$1c
0f3f: 1c        asl   a
0f40: 1c        asl   a
0f41: c4 04     mov   $04,a
0f43: e4 1e     mov   a,$1e
0f45: 28 03     and   a,#$03
0f47: 60        clrc
0f48: 84 04     adc   a,$04
0f4a: fd        mov   y,a
0f4b: 63 1e 19  bbs3  $1e,$0f67
0f4e: cd 00     mov   x,#$00
0f50: e7 0c     mov   a,($0c+x)
0f52: d6 60 04  mov   $0460+y,a
0f55: 3a 0c     incw  $0c
0f57: dd        mov   a,y
0f58: 1c        asl   a
0f59: fd        mov   y,a
0f5a: e4 0c     mov   a,$0c
0f5c: d6 e0 03  mov   $03e0+y,a
0f5f: e4 0d     mov   a,$0d
0f61: d6 e1 03  mov   $03e1+y,a
0f64: 5f 35 0e  jmp   $0e35

0f67: f6 60 04  mov   a,$0460+y
0f6a: d0 10     bne   $0f7c
0f6c: dd        mov   a,y
0f6d: 1c        asl   a
0f6e: fd        mov   y,a
0f6f: f6 e0 03  mov   a,$03e0+y
0f72: c4 0c     mov   $0c,a
0f74: f6 e1 03  mov   a,$03e1+y
0f77: c4 0d     mov   $0d,a
0f79: 5f 35 0e  jmp   $0e35

0f7c: 9c        dec   a
0f7d: f0 14     beq   $0f93
0f7f: d6 60 04  mov   $0460+y,a
0f82: dd        mov   a,y
0f83: 1c        asl   a
0f84: fd        mov   y,a
0f85: 3a 0c     incw  $0c
0f87: e4 0c     mov   a,$0c
0f89: d6 a0 04  mov   $04a0+y,a
0f8c: e4 0d     mov   a,$0d
0f8e: d6 a1 04  mov   $04a1+y,a
0f91: 2f dc     bra   $0f6f
0f93: 3a 0c     incw  $0c
0f95: 5f 35 0e  jmp   $0e35

; c0-cf
0f98: cd 00     mov   x,#$00
0f9a: e7 0c     mov   a,($0c+x)
0f9c: c4 04     mov   $04,a
0f9e: 3a 0c     incw  $0c
0fa0: e4 1e     mov   a,$1e
0fa2: 28 0f     and   a,#$0f
0fa4: 1c        asl   a
0fa5: 5d        mov   x,a
0fa6: 1f a9 0f  jmp   ($0fa9+x)

0fa9: dw $0fc9  ; c0
0fab: dw $0fe8  ; c1
0fad: dw $1008  ; c2
0faf: dw $1022  ; c3
0fb1: dw $0eaf  ; c4
0fb3: dw $0eaf  ; c5
0fb5: dw $0eaf  ; c6
0fb7: dw $0eaf  ; c7
0fb9: dw $0eaf  ; c8
0fbb: dw $0eaf  ; c9
0fbd: dw $0eaf  ; ca
0fbf: dw $0eaf  ; cb
0fc1: dw $0eaf  ; cc
0fc3: dw $0eaf  ; cd
0fc5: dw $0eaf  ; ce
0fc7: dw $0fd3  ; cf

; vcmd c0
0fc9: f8 1c     mov   x,$1c
0fcb: e4 04     mov   a,$04
0fcd: d5 40 02  mov   $0240+x,a
0fd0: 5f 35 0e  jmp   $0e35

; vcmd cf
0fd3: f8 1c     mov   x,$1c
0fd5: e4 04     mov   a,$04
0fd7: 1c        asl   a
0fd8: fd        mov   y,a
0fd9: f6 b1 15  mov   a,$15b1+y
0fdc: d5 40 03  mov   $0340+x,a
0fdf: f6 b2 15  mov   a,$15b2+y
0fe2: d5 50 03  mov   $0350+x,a
0fe5: 5f 35 0e  jmp   $0e35

; vcmd c1
0fe8: f8 1c     mov   x,$1c
0fea: e4 04     mov   a,$04
0fec: d5 80 03  mov   $0380+x,a
0fef: 8d 00     mov   y,#$00
0ff1: f7 0c     mov   a,($0c)+y
0ff3: 3a 0c     incw  $0c
0ff5: d5 70 03  mov   $0370+x,a
0ff8: f7 0c     mov   a,($0c)+y
0ffa: 3a 0c     incw  $0c
0ffc: d5 d0 03  mov   $03d0+x,a
0fff: e8 40     mov   a,#$40
1001: 14 b8     or    a,$b8+x
1003: d4 b8     mov   $b8+x,a
1005: 5f 35 0e  jmp   $0e35

; vcmd c2
1008: f8 1c     mov   x,$1c
100a: e4 04     mov   a,$04
100c: d5 80 03  mov   $0380+x,a
100f: 8d 00     mov   y,#$00
1011: f7 0c     mov   a,($0c)+y
1013: 3a 0c     incw  $0c
1015: d5 70 03  mov   $0370+x,a
1018: f7 0c     mov   a,($0c)+y
101a: 3a 0c     incw  $0c
101c: d5 d0 03  mov   $03d0+x,a
101f: 5f 35 0e  jmp   $0e35

; vcmd c3
1022: f8 1c     mov   x,$1c
1024: e4 04     mov   a,$04
1026: f0 09     beq   $1031
1028: e8 10     mov   a,#$10
102a: 14 b8     or    a,$b8+x
102c: d4 b8     mov   $b8+x,a
102e: 5f 35 0e  jmp   $0e35

1031: e8 8f     mov   a,#$8f
1033: 34 b8     and   a,$b8+x
1035: 2f f5     bra   $102c

; d0-df
1037: cd 00     mov   x,#$00
1039: e7 0c     mov   a,($0c+x)
103b: c4 04     mov   $04,a
103d: 3a 0c     incw  $0c
103f: e4 1e     mov   a,$1e
1041: 28 0f     and   a,#$0f
1043: 1c        asl   a
1044: 5d        mov   x,a
1045: 1f 48 10  jmp   ($1048+x)

1048: dw $1068  ; d0
104a: dw $10f5  ; d1
104c: dw $10fb  ; d2
104e: dw $1106  ; d3
1050: dw $0eaf  ; d4
1052: dw $0eaf  ; d5
1054: dw $0eaf  ; d6
1056: dw $0eaf  ; d7
1058: dw $0eaf  ; d8
105a: dw $0eaf  ; d9
105c: dw $1119  ; da
105e: dw $1165  ; db
1060: dw $1178  ; dc
1062: dw $1197  ; dd
1064: dw $11ac  ; de
1066: dw $11db  ; df

; vcmd d0
1068: e8 80     mov   a,#$80
106a: f3 04 04  bbc7  $04,$1071
106d: e8 40     mov   a,#$40
106f: 2f 03     bra   $1074
1071: 8f 00 29  mov   $29,#$00
1074: f8 1c     mov   x,$1c
1076: d4 a8     mov   $a8+x,a
1078: e4 04     mov   a,$04
107a: 28 1c     and   a,#$1c
107c: 5c        lsr   a
107d: 5c        lsr   a
107e: fd        mov   y,a
107f: 9f        xcn   a
1080: d5 00 02  mov   $0200+x,a
1083: f6 ba 10  mov   a,$10ba+y
1086: d5 10 02  mov   $0210+x,a
1089: e4 04     mov   a,$04
108b: 28 1f     and   a,#$1f
108d: d5 20 02  mov   $0220+x,a
1090: fd        mov   y,a
1091: f6 80 05  mov   a,$0580+y
1094: 68 ff     cmp   a,#$ff
1096: f0 0e     beq   $10a6
1098: d8 06     mov   $06,x
109a: 64 06     cmp   a,$06
109c: f0 08     beq   $10a6
109e: cb 41     mov   $41,y
10a0: 5d        mov   x,a
10a1: 3f df 06  call  $06df
10a4: eb 41     mov   y,$41
10a6: e4 1c     mov   a,$1c
10a8: d6 80 05  mov   $0580+y,a
10ab: f3 04 09  bbc7  $04,$10b7
10ae: 5d        mov   x,a
10af: 3f a5 08  call  $08a5
10b2: d0 03     bne   $10b7
10b4: 3f c2 10  call  $10c2
10b7: 5f 35 0e  jmp   $0e35

10ba: db $01,$02,$04,$08,$10,$20,$40,$80

10c2: f5 10 02  mov   a,$0210+x
10c5: 8f 5c f2  mov   $f2,#$5c
10c8: c4 f3     mov   $f3,a
10ca: f5 00 02  mov   a,$0200+x
10cd: fd        mov   y,a
10ce: cb f2     mov   $f2,y
10d0: e4 f3     mov   a,$f3
10d2: f0 02     beq   $10d6
10d4: 8b f3     dec   $f3
10d6: c4 08     mov   $08,a
10d8: ab f2     inc   $f2
10da: e4 f3     mov   a,$f3
10dc: f0 02     beq   $10e0
10de: 8b f3     dec   $f3
10e0: 04 08     or    a,$08
10e2: d0 ea     bne   $10ce
10e4: d5 50 01  mov   $0150+x,a
10e7: d5 60 01  mov   $0160+x,a
10ea: f5 10 02  mov   a,$0210+x
10ed: 04 25     or    a,$25
10ef: 8f 4c f2  mov   $f2,#$4c
10f2: c4 f3     mov   $f3,a
10f4: 6f        ret

; vcmd d1
10f5: fa 04 2a  mov   ($2a),($04)
10f8: 5f 35 0e  jmp   $0e35

; vcmd d2
10fb: e4 04     mov   a,$04
10fd: 48 7f     eor   a,#$7f
10ff: c4 27     mov   $27,a
1101: c4 45     mov   $45,a
1103: 5f 35 0e  jmp   $0e35

; vcmd d3
1106: f8 1c     mov   x,$1c
1108: f4 a8     mov   a,$a8+x
110a: eb 04     mov   y,$04
110c: f0 07     beq   $1115
110e: 08 20     or    a,#$20
1110: d4 a8     mov   $a8+x,a
1112: 5f 35 0e  jmp   $0e35

1115: 28 df     and   a,#$df
1117: 2f f7     bra   $1110

; vcmd da
1119: fa 04 23  mov   ($23),($04)
111c: 8d 00     mov   y,#$00
111e: f7 0c     mov   a,($0c)+y
1120: 3a 0c     incw  $0c
1122: 80        setc
1123: a4 27     sbc   a,$27
1125: 10 02     bpl   $1129
1127: e8 00     mov   a,#$00
1129: c4 24     mov   $24,a
112b: f7 0c     mov   a,($0c)+y
112d: c4 04     mov   $04,a
112f: 3a 0c     incw  $0c
1131: 8d 04     mov   y,#$04
1133: f6 ed 0d  mov   a,$0ded+y
1136: c4 f2     mov   $f2,a
1138: 8f 00 f3  mov   $f3,#$00
113b: fe f6     dbnz  y,$1133
113d: 38 df 20  and   $20,#$df
1140: e4 20     mov   a,$20
1142: 08 20     or    a,#$20
1144: 8f 6c f2  mov   $f2,#$6c
1147: c4 f3     mov   $f3,a
1149: 8f 7d f2  mov   $f2,#$7d
114c: e4 04     mov   a,$04
114e: 28 07     and   a,#$07
1150: c4 f3     mov   $f3,a
1152: f0 06     beq   $115a
1154: 1c        asl   a
1155: 1c        asl   a
1156: 1c        asl   a
1157: 48 ff     eor   a,#$ff
1159: bc        inc   a
115a: 8f 6d f2  mov   $f2,#$6d
115d: c4 f3     mov   $f3,a
115f: 8f 40 21  mov   $21,#$40
1162: 5f 35 0e  jmp   $0e35

; vcmd db
1165: f8 1c     mov   x,$1c
1167: f4 a8     mov   a,$a8+x
1169: eb 04     mov   y,$04
116b: f0 07     beq   $1174
116d: 08 10     or    a,#$10
116f: d4 a8     mov   $a8+x,a
1171: 5f 35 0e  jmp   $0e35

1174: 28 ef     and   a,#$ef
1176: 2f f7     bra   $116f

; vcmd dc
1178: f8 1c     mov   x,$1c
117a: e4 04     mov   a,$04
117c: d5 b0 02  mov   $02b0+x,a
117f: cd 00     mov   x,#$00
1181: f7 0c     mov   a,($0c)+y
1183: 08 80     or    a,#$80
1185: 48 ff     eor   a,#$ff
1187: bc        inc   a
1188: d5 e0 02  mov   $02e0+x,a
118b: 3a 0c     incw  $0c
118d: f7 0c     mov   a,($0c)+y
118f: d5 d0 02  mov   $02d0+x,a
1192: 3a 0c     incw  $0c
1194: 5f 35 0e  jmp   $0e35

; vcmd dd
1197: f8 1c     mov   x,$1c
1199: f4 a8     mov   a,$a8+x
119b: eb 04     mov   y,$04
119d: f0 04     beq   $11a3
119f: 08 08     or    a,#$08
11a1: 2f 02     bra   $11a5
11a3: 28 f7     and   a,#$f7
11a5: 28 fb     and   a,#$fb
11a7: d4 a8     mov   $a8+x,a
11a9: 5f 35 0e  jmp   $0e35

; vcmd de
11ac: f8 1c     mov   x,$1c
11ae: e4 04     mov   a,$04
11b0: d5 f0 02  mov   $02f0+x,a
11b3: 8d 00     mov   y,#$00
11b5: f7 0c     mov   a,($0c)+y
11b7: 08 80     or    a,#$80
11b9: 48 ff     eor   a,#$ff
11bb: bc        inc   a
11bc: d5 10 03  mov   $0310+x,a
11bf: 5d        mov   x,a
11c0: 3a 0c     incw  $0c
11c2: f7 0c     mov   a,($0c)+y
11c4: 3a 0c     incw  $0c
11c6: 8d 00     mov   y,#$00
11c8: 9e        div   ya,x
11c9: c4 04     mov   $04,a
11cb: e8 00     mov   a,#$00
11cd: 9e        div   ya,x
11ce: f8 1c     mov   x,$1c
11d0: d5 20 03  mov   $0320+x,a
11d3: e4 04     mov   a,$04
11d5: d5 30 03  mov   $0330+x,a
11d8: 5f 35 0e  jmp   $0e35

; vcmd df
11db: f8 1c     mov   x,$1c
11dd: f4 a8     mov   a,$a8+x
11df: eb 04     mov   y,$04
11e1: f0 04     beq   $11e7
11e3: 08 02     or    a,#$02
11e5: 2f 02     bra   $11e9
11e7: 28 fd     and   a,#$fd
11e9: 28 fe     and   a,#$fe
11eb: d4 a8     mov   $a8+x,a
11ed: 5f 35 0e  jmp   $0e35

; vcmd e0-ef
11f0: f8 1c     mov   x,$1c
11f2: 8d 00     mov   y,#$00
11f4: f7 0c     mov   a,($0c)+y
11f6: d5 30 02  mov   $0230+x,a
11f9: 3a 0c     incw  $0c
11fb: 5f 35 0e  jmp   $0e35

; vcmd f0-ff
11fe: f8 1c     mov   x,$1c
1200: f4 a8     mov   a,$a8+x
1202: 28 c0     and   a,#$c0
1204: f0 18     beq   $121e
1206: 68 c0     cmp   a,#$c0
1208: d0 05     bne   $120f
120a: 38 00 3a  and   $3a,#$00
120d: 2f 0c     bra   $121b
120f: 68 80     cmp   a,#$80
1211: d0 05     bne   $1218
1213: 38 f0 3a  and   $3a,#$f0
1216: 2f 03     bra   $121b
1218: 38 0f 3a  and   $3a,#$0f
121b: fa 3a f7  mov   ($f7),($3a)
121e: f5 20 02  mov   a,$0220+x
1221: 30 15     bmi   $1238
1223: 3f a5 08  call  $08a5
1226: d0 07     bne   $122f
1228: f5 10 02  mov   a,$0210+x
122b: 04 26     or    a,$26
122d: c4 26     mov   $26,a
122f: f5 20 02  mov   a,$0220+x
1232: fd        mov   y,a
1233: e8 ff     mov   a,#$ff
1235: d6 80 05  mov   $0580+y,a
1238: 5f df 06  jmp   $06df

123b: f8 1c     mov   x,$1c
123d: 3f 5f 09  call  $095f
1240: 3f e6 09  call  $09e6
1243: 3f c7 0a  call  $0ac7
1246: 3f a5 08  call  $08a5
1249: d0 03     bne   $124e
124b: 3f 0f 08  call  $080f
124e: f4 a8     mov   a,$a8+x
1250: 24 31     and   a,$31
1252: d0 aa     bne   $11fe
1254: f4 a8     mov   a,$a8+x
1256: 24 30     and   a,$30
1258: f0 03     beq   $125d
125a: 5f d0 08  jmp   $08d0

125d: 9b 78     dec   $78+x
125f: f0 16     beq   $1277
1261: 9b 68     dec   $68+x
1263: f0 01     beq   $1266
1265: 6f        ret

1266: 3f a5 08  call  $08a5
1269: d0 07     bne   $1272
126b: f5 10 02  mov   a,$0210+x
126e: 04 26     or    a,$26
1270: c4 26     mov   $26,a
1272: e8 03     mov   a,#$03
1274: d4 48     mov   $48+x,a
1276: 6f        ret

1277: f4 b8     mov   a,$b8+x
1279: 08 80     or    a,#$80
127b: d4 b8     mov   $b8+x,a
127d: e8 01     mov   a,#$01
127f: d4 48     mov   $48+x,a
1281: 5f 0e 0e  jmp   $0e0e

1284: f8 1c     mov   x,$1c
1286: f4 a8     mov   a,$a8+x
1288: 24 31     and   a,$31
128a: f0 03     beq   $128f
128c: 5f fe 11  jmp   $11fe

128f: f4 a8     mov   a,$a8+x
1291: 24 30     and   a,$30
1293: f0 03     beq   $1298
1295: 5f d0 08  jmp   $08d0

1298: 9b 78     dec   $78+x
129a: f0 01     beq   $129d
129c: 6f        ret

129d: e8 01     mov   a,#$01
129f: d4 48     mov   $48+x,a
12a1: 5f 0e 0e  jmp   $0e0e

12a4: f8 1c     mov   x,$1c
12a6: 5f fe 11  jmp   $11fe

12a9: dw $0040
12ab: dw $0041
12ad: dw $0042
12af: dw $0043
12b1: dw $0044
12b3: dw $0045
12b5: dw $0046
12b7: dw $0047
12b9: dw $0048
12bb: dw $0049
12bd: dw $004a
12bf: dw $004b
12c1: dw $004c
12c3: dw $004d
12c5: dw $004e
12c7: dw $004f
12c9: dw $0051
12cb: dw $0052
12cd: dw $0053
12cf: dw $0054
12d1: dw $0055
12d3: dw $0057
12d5: dw $0058
12d7: dw $0059
12d9: dw $005b
12db: dw $005c
12dd: dw $005d
12df: dw $005f
12e1: dw $0060
12e3: dw $0061
12e5: dw $0063
12e7: dw $0064
12e9: dw $0066
12eb: dw $0067
12ed: dw $0069
12ef: dw $006a
12f1: dw $006c
12f3: dw $006d
12f5: dw $006f
12f7: dw $0070
12f9: dw $0072
12fb: dw $0074
12fd: dw $0075
12ff: dw $0077
1301: dw $0079
1303: dw $007b
1305: dw $007c
1307: dw $007e
1309: dw $0080
130b: dw $0082
130d: dw $0084
130f: dw $0086
1311: dw $0088
1313: dw $008a
1315: dw $008c
1317: dw $008e
1319: dw $0090
131b: dw $0092
131d: dw $0094
131f: dw $0096
1321: dw $0098
1323: dw $009a
1325: dw $009d
1327: dw $009f
1329: dw $00a0
132b: dw $00a4
132d: dw $00a6
132f: dw $00a8
1331: dw $00ac
1333: dw $00ad
1335: dw $00b0
1337: dw $00b2
1339: dw $00b6
133b: dw $00b8
133d: dw $00ba
133f: dw $00bd
1341: dw $00c0
1343: dw $00c3
1345: dw $00c5
1347: dw $00c8
1349: dw $00cc
134b: dw $00ce
134d: dw $00d1
134f: dw $00d4
1351: dw $00d8
1353: dw $00da
1355: dw $00de
1357: dw $00e1
1359: dw $00e4
135b: dw $00e7
135d: dw $00eb
135f: dw $00ee
1361: dw $00f2
1363: dw $00f5
1365: dw $00f9
1367: dw $00fc
1369: dw $0100
136b: dw $0104
136d: dw $0108
136f: dw $010b
1371: dw $0110
1373: dw $0113
1375: dw $0117
1377: dw $011b
1379: dw $0120
137b: dw $0124
137d: dw $0128
137f: dw $012c
1381: dw $0130
1383: dw $0135
1385: dw $0139
1387: dw $013e
1389: dw $0144
138b: dw $0147
138d: dw $014c
138f: dw $0151
1391: dw $0158
1393: dw $015b
1395: dw $0160
1397: dw $0165
1399: dw $016c
139b: dw $016f
139d: dw $0175
139f: dw $017a
13a1: dw $0180
13a3: dw $0185
13a5: dw $018b
13a7: dw $0191
13a9: dw $0198
13ab: dw $019c
13ad: dw $01a2
13af: dw $01a8
13b1: dw $01b0
13b3: dw $01b5
13b5: dw $01bb
13b7: dw $01c2
13b9: dw $01c8
13bb: dw $01cf
13bd: dw $01d6
13bf: dw $01dc
13c1: dw $01e4
13c3: dw $01ea
13c5: dw $01f1
13c7: dw $01f9
13c9: dw $0200
13cb: dw $0207
13cd: dw $020f
13cf: dw $0217
13d1: dw $0220
13d3: dw $0226
13d5: dw $022e
13d7: dw $0236
13d9: dw $0240
13db: dw $0247
13dd: dw $0250
13df: dw $0258
13e1: dw $0260
13e3: dw $026a
13e5: dw $0273
13e7: dw $027c
13e9: dw $0288
13eb: dw $028e
13ed: dw $0298
13ef: dw $02a2
13f1: dw $02b0
13f3: dw $02b5
13f5: dw $02bf
13f7: dw $02ca
13f9: dw $02d8
13fb: dw $02df
13fd: dw $02e9
13ff: dw $02f4
1401: dw $0300
1403: dw $030a
1405: dw $0316
1407: dw $0321
1409: dw $0330
140b: dw $0339
140d: dw $0345
140f: dw $0351
1411: dw $0360
1413: dw $036a
1415: dw $0376
1417: dw $0383
1419: dw $0390
141b: dw $039e
141d: dw $03ab
141f: dw $03b9
1421: dw $03c8
1423: dw $03d5
1425: dw $03e3
1427: dw $03f1
1429: dw $0400
142b: dw $040f
142d: dw $041e
142f: dw $042d
1431: dw $0440
1433: dw $044d
1435: dw $045d
1437: dw $046d
1439: dw $0480
143b: dw $048e
143d: dw $049f
143f: dw $04b0
1441: dw $04c0
1443: dw $04d3
1445: dw $04e5
1447: dw $04f8
1449: dw $0508
144b: dw $051d
144d: dw $0530
144f: dw $0543
1451: dw $0558
1453: dw $056b
1455: dw $057f
1457: dw $0593
1459: dw $05a8
145b: dw $05bd
145d: dw $05d3
145f: dw $05e8
1461: dw $0600
1463: dw $0615
1465: dw $062b
1467: dw $0642
1469: dw $0658
146b: dw $0671
146d: dw $0689
146f: dw $06a1
1471: dw $06b8
1473: dw $06d3
1475: dw $06ed
1477: dw $0706
1479: dw $0720
147b: dw $073b
147d: dw $0756
147f: dw $0771
1481: dw $0790
1483: dw $07a9
1485: dw $07c6
1487: dw $07e3
1489: dw $0800
148b: dw $081e
148d: dw $083c
148f: dw $085b
1491: dw $0878
1493: dw $0899
1495: dw $08b9
1497: dw $08da
1499: dw $08f8
149b: dw $091c
149d: dw $093e
149f: dw $0961
14a1: dw $0980
14a3: dw $09a7
14a5: dw $09cb
14a7: dw $09ef
14a9: dw $0a18
14ab: dw $0a3a
14ad: dw $0a60
14af: dw $0a87
14b1: dw $0ab0
14b3: dw $0ad6
14b5: dw $0afe
14b7: dw $0b27
14b9: dw $0b50
14bb: dw $0b7a
14bd: dw $0ba5
14bf: dw $0bd1
14c1: dw $0c00
14c3: dw $0c29
14c5: dw $0c56
14c7: dw $0c84
14c9: dw $0cb0
14cb: dw $0ce2
14cd: dw $0d12
14cf: dw $0d43
14d1: dw $0d78
14d3: dw $0da6
14d5: dw $0dd9
14d7: dw $0e0d
14d9: dw $0e40
14db: dw $0e76
14dd: dw $0eac
14df: dw $0ee3
14e1: dw $0f18
14e3: dw $0f52
14e5: dw $0f8b
14e7: dw $0fc5
14e9: dw $1000
14eb: dw $103c
14ed: dw $1078
14ef: dw $10b5
14f1: dw $1100
14f3: dw $1133
14f5: dw $1173
14f7: dw $11b4
14f9: dw $11f8
14fb: dw $1238
14fd: dw $127c
14ff: dw $12c1
1501: dw $1308
1503: dw $134e
1505: dw $1396
1507: dw $13df
1509: dw $1428
150b: dw $1474
150d: dw $14c0
150f: dw $150d
1511: dw $1560
1513: dw $15ab
1515: dw $15fc
1517: dw $164e
1519: dw $16a0
151b: dw $16f5
151d: dw $174a
151f: dw $17a1
1521: dw $17f8
1523: dw $1852
1525: dw $18ad
1527: dw $1909
1529: dw $1968
152b: dw $19c5
152d: dw $1a25
152f: dw $1a86
1531: dw $1ae8
1533: dw $1b4d
1535: dw $1bb2
1537: dw $1c1a
1539: dw $1c80
153b: dw $1cec
153d: dw $1d58
153f: dw $1dc5
1541: dw $1e38
1543: dw $1ea5
1545: dw $1f17
1547: dw $1f8b
1549: dw $2000
154b: dw $2077
154d: dw $20f0
154f: dw $216b
1551: dw $21e8
1553: dw $2265
1555: dw $22e5
1557: dw $2367
1559: dw $23e8
155b: dw $2471
155d: dw $24f9
155f: dw $2582
1561: dw $2610
1563: dw $269c
1565: dw $272b
1567: dw $27bd
1569: dw $2850
156b: dw $28e7
156d: dw $2980
156f: dw $2a1a
1571: dw $2ab8
1573: dw $2b56
1575: dw $2bf7
1577: dw $2c9b
1579: dw $2d40
157b: dw $2dea
157d: dw $2e95
157f: dw $2f42
1581: dw $2ff0
1583: dw $30a5
1585: dw $315a
1587: dw $3212
1589: dw $32d0
158b: dw $3389
158d: dw $3449
158f: dw $350c
1591: dw $35d0
1593: dw $369a
1595: dw $3765
1597: dw $3833
1599: dw $3908
159b: dw $39d9
159d: dw $3ab0
159f: dw $3b8b
15a1: dw $3c68
15a3: dw $3d49
15a5: dw $3e2e
15a7: dw $3f15
15a9: dw $3fff
15ab: dw $3fff
15ad: dw $3fff
15af: dw $3fff

15b1: ce 36
15b3: be 51
15b5: be 0b
15b7: cd 6d
15b9: bd 69
15bb: 8b e3
15bd: 99 c0
15bf: 83 e1
15c1: bc f5
15c3: fb e0
15c5: ff e0
15c7: ce 1c
15c9: f9 e0
15cb: 97 17
15cd: 87 4e
15cf: 88 8a
15d1: a9 71
15d3: bc 54
15d5: ad 8d
15d7: ee 36
15d9: cd 53
15db: ba 33
15dd: cb 38
15df: 8b 2e
15e1: 8e 0f
15e3: 8e 2c
15e5: bd 35
15e7: ac 35
15e9: 80 c1
15eb: ce 38
15ed: ae 19
15ef: fc e0
15f1: af f6
