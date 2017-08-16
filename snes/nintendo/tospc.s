0600: 20        clrp
0601: cd ff     mov   x,#$ff
0603: bd        mov   sp,x
0604: e8 00     mov   a,#$00
0606: fd        mov   y,a
0607: da f4     movw  $f4,ya
0609: da f6     movw  $f6,ya
060b: 3f d3 18  call  $18d3
060e: e8 01     mov   a,#$01
0610: c4 44     mov   $44,a
0612: c4 f7     mov   $f7,a
0614: 5f 37 06  jmp   $0637

0617: 20        clrp
0618: cd ff     mov   x,#$ff
061a: bd        mov   sp,x
061b: e8 00     mov   a,#$00
061d: fd        mov   y,a
061e: da f4     movw  $f4,ya
0620: da f6     movw  $f6,ya
0622: 3f 85 19  call  $1985
0625: e8 55     mov   a,#$55
0627: 8f 0c f2  mov   $f2,#$0c
062a: c4 f3     mov   $f3,a
062c: 8f 1c f2  mov   $f2,#$1c
062f: c4 f3     mov   $f3,a
0631: e8 02     mov   a,#$02
0633: c4 44     mov   $44,a
0635: c4 f7     mov   $f7,a
0637: 3f 8e 06  call  $068e
063a: f8 42     mov   x,$42
063c: 30 f9     bmi   $0637
063e: 8b 42     dec   $42
0640: e8 06     mov   a,#$06
0642: 2d        push  a
0643: e8 3a     mov   a,#$3a
0645: 2d        push  a
0646: f5 e1 1f  mov   a,$1fe1+x
0649: c4 43     mov   $43,a
064b: 1c        asl   a
064c: 5d        mov   x,a
064d: 1f 4e 06  jmp   ($064e+x)

0650: dw $06f1  ; 
0652: dw $074e  ; 
0654: dw $06f0  ; 
0656: dw $06f0  ; 
0658: dw $06f0  ; 
065a: dw $06f0  ; 
065c: dw $06f0  ; 
065e: dw $0f9e  ; 
0660: dw $0fb7  ; 
0662: dw $0f51  ; 
0664: dw $0f51  ; 
0666: dw $06f0  ; 
0668: dw $06f0  ; 
066a: dw $06f0  ; 
066c: dw $0f9e  ; 
066e: dw $0f51  ; 
0670: dw $0f5b  ; 
0672: dw $0f7c  ; 
0674: dw $0f82  ; 
0676: dw $0fb7  ; 
0678: dw $0fce  ; 
067a: dw $0fce  ; 
067c: dw $0fd3  ; 
067e: dw $0fed  ; 
0680: dw $0ffe  ; 
0682: dw $100f  ; 
0684: dw $1d7a  ; 
0686: dw $1d69  ; 
0688: dw $1020  ; 
068a: dw $1055  ; 
068c: dw $1055  ; 

068e: 8d ff     mov   y,#$ff
0690: cb 42     mov   $42,y
0692: e4 fd     mov   a,$fd
0694: f0 0a     beq   $06a0
0696: c4 db     mov   $db,a
0698: fc        inc   y
0699: e8 01     mov   a,#$01
069b: d6 e1 1f  mov   $1fe1+y,a
069e: 2f 4e     bra   $06ee
06a0: e4 fe     mov   a,$fe
06a2: f0 08     beq   $06ac
06a4: fc        inc   y
06a5: e8 02     mov   a,#$02
06a7: d6 e1 1f  mov   $1fe1+y,a
06aa: 2f 42     bra   $06ee
06ac: f8 db     mov   x,$db
06ae: f0 3e     beq   $06ee
06b0: c4 db     mov   $db,a
06b2: 3f 02 1e  call  $1e02
06b5: f8 c1     mov   x,$c1
06b7: f0 07     beq   $06c0
06b9: f4 c1     mov   a,$c1+x
06bb: d4 df     mov   $df+x,a
06bd: 8f 00 c1  mov   $c1,#$00
06c0: e4 e0     mov   a,$e0
06c2: f0 1d     beq   $06e1
06c4: 8f 00 e0  mov   $e0,#$00
06c7: 68 10     cmp   a,#$10
06c9: 90 14     bcc   $06df
06cb: 68 e8     cmp   a,#$e8
06cd: 90 09     bcc   $06d8
06cf: 80        setc
06d0: a8 e0     sbc   a,#$e0
06d2: fc        inc   y
06d3: d6 e1 1f  mov   $1fe1+y,a
06d6: 2f 09     bra   $06e1
06d8: 80        setc
06d9: a8 0f     sbc   a,#$0f
06db: c4 bd     mov   $bd,a
06dd: 2f 02     bra   $06e1
06df: c4 b9     mov   $b9,a
06e1: e4 e1     mov   a,$e1
06e3: f0 05     beq   $06ea
06e5: 8f 00 e1  mov   $e1,#$00
06e8: c4 be     mov   $be,a
06ea: e4 e2     mov   a,$e2
06ec: f0 00     beq   $06ee
06ee: cb 42     mov   $42,y
06f0: 6f        ret

06f1: ab dc     inc   $dc
06f3: 8f 01 57  mov   $57,#$01
06f6: 8f 08 58  mov   $58,#$08
06f9: 8f 10 59  mov   $59,#$10
06fc: 8f 08 5a  mov   $5a,#$08
06ff: 8f 40 5b  mov   $5b,#$40
0702: 8f 04 5c  mov   $5c,#$04
0705: e4 5e     mov   a,$5e
0707: 68 c0     cmp   a,#$c0
0709: d0 05     bne   $0710
070b: 3f fc 09  call  $09fc
070e: 2f 1f     bra   $072f
0710: 5d        mov   x,a
0711: f0 1c     beq   $072f
0713: e4 5d     mov   a,$5d
0715: d0 05     bne   $071c
0717: e8 f0     mov   a,#$f0
0719: 3f ff 19  call  $19ff
071c: 3f 1b 08  call  $081b
071f: e4 03     mov   a,$03
0721: f0 03     beq   $0726
0723: 3f 60 0a  call  $0a60
0726: 8f 08 5a  mov   $5a,#$08
0729: 8f 40 5b  mov   $5b,#$40
072c: 3f ec 1a  call  $1aec
072f: 3f e7 07  call  $07e7
0732: e4 b9     mov   a,$b9
0734: f0 03     beq   $0739
0736: 3f a0 07  call  $07a0
0739: 3f af 1c  call  $1caf
073c: e4 62     mov   a,$62
073e: f0 02     beq   $0742
0740: e8 40     mov   a,#$40
0742: 04 5d     or    a,$5d
0744: 28 c0     and   a,#$c0
0746: 9f        xcn   a
0747: 08 a0     or    a,#$a0
0749: 04 de     or    a,$de
074b: c4 f5     mov   $f5,a
074d: 6f        ret

074e: e8 00     mov   a,#$00
0750: fd        mov   y,a
0751: da 57     movw  $57,ya
0753: da 59     movw  $59,ya
0755: da 5b     movw  $5b,ya
0757: 8f 08 5c  mov   $5c,#$08
075a: e4 5d     mov   a,$5d
075c: f0 3f     beq   $079d
075e: 68 c0     cmp   a,#$c0
0760: f0 3b     beq   $079d
0762: 5c        lsr   a
0763: 90 05     bcc   $076a
0765: 8f 80 5d  mov   $5d,#$80
0768: 2f 26     bra   $0790
076a: e8 30     mov   a,#$30
076c: 3f ff 19  call  $19ff
076f: e5 ef 1f  mov   a,$1fef
0772: f0 0d     beq   $0781
0774: e5 ec 1f  mov   a,$1fec
0777: c4 fb     mov   $fb,a
0779: fa 4a f1  mov   ($f1),($4a)
077c: e8 00     mov   a,#$00
077e: c5 ef 1f  mov   $1fef,a
0781: e5 f9 1f  mov   a,$1ff9
0784: f0 03     beq   $0789
0786: 3f d2 1a  call  $1ad2
0789: 3f 1b 08  call  $081b
078c: e4 03     mov   a,$03
078e: f0 03     beq   $0793
0790: 3f 31 0a  call  $0a31
0793: e8 00     mov   a,#$00
0795: c4 5b     mov   $5b,a
0797: c4 5a     mov   $5a,a
0799: 3f ec 1a  call  $1aec
079c: 6f        ret

079d: 5f c5 09  jmp   $09c5

07a0: c4 f4     mov   $f4,a
07a2: c4 bc     mov   $bc,a
07a4: e8 00     mov   a,#$00
07a6: c4 b9     mov   $b9,a
07a8: c4 57     mov   $57,a
07aa: c4 58     mov   $58,a
07ac: c4 59     mov   $59,a
07ae: c4 5b     mov   $5b,a
07b0: 3f 02 17  call  $1702
07b3: 3f 16 17  call  $1716
07b6: e4 bc     mov   a,$bc
07b8: 9c        dec   a
07b9: 1c        asl   a
07ba: fd        mov   y,a
07bb: 8f 81 5d  mov   $5d,#$81
07be: e5 fa 05  mov   a,$05fa
07c1: e9 fb 05  mov   x,$05fb
07c4: c4 0c     mov   $0c,a
07c6: d8 0d     mov   $0d,x
07c8: f7 0c     mov   a,($0c)+y
07ca: c4 40     mov   $40,a
07cc: fc        inc   y
07cd: f7 0c     mov   a,($0c)+y
07cf: c4 41     mov   $41,a
07d1: 3f 86 16  call  $1686
07d4: b0 10     bcs   $07e6
07d6: 3f d2 16  call  $16d2
07d9: e8 80     mov   a,#$80
07db: c5 ec 1f  mov   $1fec,a
07de: c4 fb     mov   $fb,a
07e0: e8 03     mov   a,#$03
07e2: c4 4a     mov   $4a,a
07e4: c4 f1     mov   $f1,a
07e6: 6f        ret

07e7: 8f 00 00  mov   $00,#$00
07ea: 8f d0 03  mov   $03,#$d0
07ed: f8 00     mov   x,$00
07ef: f4 bd     mov   a,$bd+x
07f1: f0 1a     beq   $080d
07f3: d4 ba     mov   $ba+x,a
07f5: c4 01     mov   $01,a
07f7: e8 00     mov   a,#$00
07f9: d4 bd     mov   $bd+x,a
07fb: 78 ff 01  cmp   $01,#$ff
07fe: f0 18     beq   $0818
0800: e4 00     mov   a,$00
0802: f0 03     beq   $0807
0804: 3f a5 17  call  $17a5
0807: 8f 80 5e  mov   $5e,#$80
080a: 3f 29 18  call  $1829
080d: 8f f0 03  mov   $03,#$f0
0810: ab 00     inc   $00
0812: 78 02 00  cmp   $00,#$02
0815: d0 d6     bne   $07ed
0817: 6f        ret

0818: 5f f8 17  jmp   $17f8

081b: fa 5c 04  mov   ($04),($5c)
081e: 8f 00 03  mov   $03,#$00
0821: f8 5a     mov   x,$5a
0823: f4 34     mov   a,$34+x
0825: f0 62     beq   $0889
0827: f4 cf     mov   a,$cf+x
0829: f0 43     beq   $086e
082b: f4 28     mov   a,$28+x
082d: 10 12     bpl   $0841
082f: fb c7     mov   y,$c7+x
0831: 30 3b     bmi   $086e
0833: f0 12     beq   $0847
0835: f5 e7 21  mov   a,$21e7+x
0838: 9a 10     subw  ya,$10
083a: d5 e7 21  mov   $21e7+x,a
083d: db c7     mov   $c7+x,y
083f: 2f 2d     bra   $086e
0841: e8 80     mov   a,#$80
0843: d4 c7     mov   $c7+x,a
0845: 2f 27     bra   $086e
0847: f5 e7 21  mov   a,$21e7+x
084a: 9c        dec   a
084b: f0 1a     beq   $0867
084d: d5 e7 21  mov   $21e7+x,a
0850: 9c        dec   a
0851: d0 1b     bne   $086e
0853: f5 ab 21  mov   a,$21ab+x
0856: f0 16     beq   $086e
0858: f4 28     mov   a,$28+x
085a: 28 07     and   a,#$07
085c: fd        mov   y,a
085d: f6 a3 1e  mov   a,$1ea3+y
0860: 8f 5c f2  mov   $f2,#$5c
0863: c4 f3     mov   $f3,a
0865: 2f 07     bra   $086e
0867: e8 80     mov   a,#$80
0869: d4 c7     mov   $c7+x,a
086b: 3f e2 08  call  $08e2
086e: fb 87     mov   y,$87+x
0870: 30 22     bmi   $0894
0872: f4 7b     mov   a,$7b+x
0874: 5a 11     cmpw  ya,$11
0876: d0 16     bne   $088e
0878: e8 80     mov   a,#$80
087a: d4 87     mov   $87+x,a
087c: f4 28     mov   a,$28+x
087e: 10 14     bpl   $0894
0880: 3f c6 08  call  $08c6
0883: 2f 0f     bra   $0894
0885: db 6f     mov   $6f+x,y
0887: d4 63     mov   $63+x,a
0889: 3d        inc   x
088a: 6e 04 96  dbnz  $04,$0823
088d: 6f        ret

088e: 9a 10     subw  ya,$10
0890: db 87     mov   $87+x,y
0892: d4 7b     mov   $7b+x,a
0894: f4 63     mov   a,$63+x
0896: fb 6f     mov   y,$6f+x
0898: 9a 10     subw  ya,$10
089a: d0 e9     bne   $0885
089c: f4 cf     mov   a,$cf+x
089e: f0 07     beq   $08a7
08a0: f4 28     mov   a,$28+x
08a2: 10 03     bpl   $08a7
08a4: 3f b1 08  call  $08b1
08a7: f4 34     mov   a,$34+x
08a9: 08 80     or    a,#$80
08ab: d4 34     mov   $34+x,a
08ad: ab 03     inc   $03
08af: 2f d8     bra   $0889
08b1: fd        mov   y,a
08b2: 28 70     and   a,#$70
08b4: d4 28     mov   $28+x,a
08b6: 28 40     and   a,#$40
08b8: f0 13     beq   $08cd
08ba: 4d        push  x
08bb: dd        mov   a,y
08bc: 28 07     and   a,#$07
08be: 5d        mov   x,a
08bf: e8 7f     mov   a,#$7f
08c1: d4 18     mov   $18+x,a
08c3: ce        pop   x
08c4: 6f        ret

08c5: ce        pop   x
08c6: f4 28     mov   a,$28+x
08c8: fd        mov   y,a
08c9: 28 70     and   a,#$70
08cb: d4 28     mov   $28+x,a
08cd: 4d        push  x
08ce: dd        mov   a,y
08cf: 28 07     and   a,#$07
08d1: 5d        mov   x,a
08d2: e8 00     mov   a,#$00
08d4: d4 18     mov   $18+x,a
08d6: d4 20     mov   $20+x,a
08d8: f5 a3 1e  mov   a,$1ea3+x
08db: 8f 5c f2  mov   $f2,#$5c
08de: c4 f3     mov   $f3,a
08e0: ce        pop   x
08e1: 6f        ret

08e2: f4 28     mov   a,$28+x
08e4: fd        mov   y,a
08e5: 08 01     or    a,#$01
08e7: dd        mov   a,y
08e8: 28 07     and   a,#$07
08ea: fd        mov   y,a
08eb: f5 03 01  mov   a,$0103+x
08ee: f0 12     beq   $0902
08f0: 6d        push  y
08f1: f5 49 1f  mov   a,$1f49+x
08f4: fd        mov   y,a
08f5: f5 7b 01  mov   a,$017b+x
08f8: d6 02 ff  mov   $ff02+y,a
08fb: f5 87 01  mov   a,$0187+x
08fe: d6 03 ff  mov   $ff03+y,a
0901: ee        pop   y
0902: f6 a3 1e  mov   a,$1ea3+y
0905: c4 05     mov   $05,a
0907: dd        mov   a,y
0908: 9f        xcn   a
0909: c4 06     mov   $06,a
090b: 08 05     or    a,#$05
090d: fd        mov   y,a
090e: f5 ab 21  mov   a,$21ab+x
0911: f0 4c     beq   $095f
0913: cb f2     mov   $f2,y
0915: c4 f3     mov   $f3,a
0917: fc        inc   y
0918: f5 b3 21  mov   a,$21b3+x
091b: cb f2     mov   $f2,y
091d: c4 f3     mov   $f3,a
091f: f5 bb 21  mov   a,$21bb+x
0922: f0 34     beq   $0958
0924: eb 45     mov   y,$45
0926: d0 48     bne   $0970
0928: eb 49     mov   y,$49
092a: d0 5b     bne   $0987
092c: eb 06     mov   y,$06
092e: cb f2     mov   $f2,y
0930: e4 f3     mov   a,$f3
0932: 10 02     bpl   $0936
0934: 48 ff     eor   a,#$ff
0936: fd        mov   y,a
0937: f5 bb 21  mov   a,$21bb+x
093a: cf        mul   ya
093b: dd        mov   a,y
093c: 55 48 21  eor   a,$2148+x
093f: eb 06     mov   y,$06
0941: cb f2     mov   $f2,y
0943: c4 f3     mov   $f3,a
0945: fc        inc   y
0946: 6d        push  y
0947: cb f2     mov   $f2,y
0949: eb f3     mov   y,$f3
094b: f5 bb 21  mov   a,$21bb+x
094e: cf        mul   ya
094f: dd        mov   a,y
0950: 55 54 21  eor   a,$2154+x
0953: ee        pop   y
0954: cb f2     mov   $f2,y
0956: c4 f3     mov   $f3,a
0958: 8f 4c f2  mov   $f2,#$4c
095b: fa 05 f3  mov   ($f3),($05)
095e: 6f        ret

095f: 6d        push  y
0960: fc        inc   y
0961: fc        inc   y
0962: f5 b3 21  mov   a,$21b3+x
0965: cb f2     mov   $f2,y
0967: c4 f3     mov   $f3,a
0969: ee        pop   y
096a: cb f2     mov   $f2,y
096c: 8f 00 f3  mov   $f3,#$00
096f: 6f        ret

0970: eb 06     mov   y,$06
0972: cb f2     mov   $f2,y
0974: eb f3     mov   y,$f3
0976: f5 bb 21  mov   a,$21bb+x
0979: cf        mul   ya
097a: dd        mov   a,y
097b: eb 06     mov   y,$06
097d: cb f2     mov   $f2,y
097f: c4 f3     mov   $f3,a
0981: fc        inc   y
0982: cb f2     mov   $f2,y
0984: c4 f3     mov   $f3,a
0986: 6f        ret

0987: eb 06     mov   y,$06
0989: cb f2     mov   $f2,y
098b: e4 f3     mov   a,$f3
098d: 10 02     bpl   $0991
098f: 48 ff     eor   a,#$ff
0991: fd        mov   y,a
0992: f5 bb 21  mov   a,$21bb+x
0995: cf        mul   ya
0996: dd        mov   a,y
0997: eb 06     mov   y,$06
0999: cb f2     mov   $f2,y
099b: c4 f3     mov   $f3,a
099d: fc        inc   y
099e: 6d        push  y
099f: cb f2     mov   $f2,y
09a1: eb f3     mov   y,$f3
09a3: f5 bb 21  mov   a,$21bb+x
09a6: cf        mul   ya
09a7: dd        mov   a,y
09a8: ee        pop   y
09a9: cb f2     mov   $f2,y
09ab: c4 f3     mov   $f3,a
09ad: 8f 4c f2  mov   $f2,#$4c
09b0: fa 05 f3  mov   ($f3),($05)
09b3: 6f        ret

09b4: 6d        push  y
09b5: fc        inc   y
09b6: fc        inc   y
09b7: f5 b3 21  mov   a,$21b3+x
09ba: cb f2     mov   $f2,y
09bc: c4 f3     mov   $f3,a
09be: ee        pop   y
09bf: cb f2     mov   $f2,y
09c1: 8f 00 f3  mov   $f3,#$00
09c4: 6f        ret

09c5: 8d 00     mov   y,#$00
09c7: cb 5d     mov   $5d,y
09c9: cd 07     mov   x,#$07
09cb: f4 18     mov   a,$18+x
09cd: 28 0f     and   a,#$0f
09cf: 9f        xcn   a
09d0: 30 17     bmi   $09e9
09d2: db 18     mov   $18+x,y
09d4: db 20     mov   $20+x,y
09d6: f5 a3 1e  mov   a,$1ea3+x
09d9: 8f 5c f2  mov   $f2,#$5c
09dc: c4 f3     mov   $f3,a
09de: f5 59 1f  mov   a,$1f59+x
09e1: c4 f2     mov   $f2,a
09e3: cb f3     mov   $f3,y
09e5: ab f2     inc   $f2
09e7: cb f3     mov   $f3,y
09e9: db 34     mov   $34+x,y
09eb: db 28     mov   $28+x,y
09ed: 1d        dec   x
09ee: 10 db     bpl   $09cb
09f0: 32 4a     clr1  $4a
09f2: fa 4a f1  mov   ($f1),($4a)
09f5: 8f ff f4  mov   $f4,#$ff
09f8: 3f fb 15  call  $15fb
09fb: 6f        ret

09fc: 8f 00 5e  mov   $5e,#$00
09ff: cd 08     mov   x,#$08
0a01: f4 28     mov   a,$28+x
0a03: 10 20     bpl   $0a25
0a05: 28 07     and   a,#$07
0a07: fd        mov   y,a
0a08: f6 a3 1e  mov   a,$1ea3+y
0a0b: 8f 5c f2  mov   $f2,#$5c
0a0e: c4 f3     mov   $f3,a
0a10: e8 00     mov   a,#$00
0a12: d6 18 00  mov   $0018+y,a
0a15: d6 20 00  mov   $0020+y,a
0a18: f6 59 1f  mov   a,$1f59+y
0a1b: c4 f2     mov   $f2,a
0a1d: 8f 00 f3  mov   $f3,#$00
0a20: ab f2     inc   $f2
0a22: 8f 00 f3  mov   $f3,#$00
0a25: e8 00     mov   a,#$00
0a27: d4 34     mov   $34+x,a
0a29: d4 28     mov   $28+x,a
0a2b: 3d        inc   x
0a2c: c8 0c     cmp   x,#$0c
0a2e: d0 d1     bne   $0a01
0a30: 6f        ret

0a31: e5 79 21  mov   a,$2179
0a34: 68 ff     cmp   a,#$ff
0a36: d0 05     bne   $0a3d
0a38: e5 f4 1f  mov   a,$1ff4
0a3b: f0 1f     beq   $0a5c
0a3d: e8 00     mov   a,#$00
0a3f: c4 5b     mov   $5b,a
0a41: c4 5a     mov   $5a,a
0a43: fa 5f 00  mov   ($00),($5f)
0a46: 8f 08 01  mov   $01,#$08
0a49: 3f 91 0a  call  $0a91
0a4c: e4 00     mov   a,$00
0a4e: c4 5f     mov   $5f,a
0a50: d0 0d     bne   $0a5f
0a52: 3f 86 16  call  $1686
0a55: b0 05     bcs   $0a5c
0a57: 3f d2 16  call  $16d2
0a5a: 2f e1     bra   $0a3d
0a5c: 8f c0 5d  mov   $5d,#$c0
0a5f: 6f        ret

0a60: fa 60 00  mov   ($00),($60)
0a63: 8f 04 01  mov   $01,#$04
0a66: 3f 91 0a  call  $0a91
0a69: e4 00     mov   a,$00
0a6b: 9f        xcn   a
0a6c: c4 00     mov   $00,a
0a6e: 64 60     cmp   a,$60
0a70: f0 1e     beq   $0a90
0a72: c4 60     mov   $60,a
0a74: 29 00 61  and   ($61),($00)
0a77: 29 00 62  and   ($62),($00)
0a7a: 8d 00     mov   y,#$00
0a7c: cd 08     mov   x,#$08
0a7e: 5c        lsr   a
0a7f: b0 04     bcs   $0a85
0a81: db 28     mov   $28+x,y
0a83: db 34     mov   $34+x,y
0a85: 3d        inc   x
0a86: c8 0c     cmp   x,#$0c
0a88: d0 f4     bne   $0a7e
0a8a: e4 00     mov   a,$00
0a8c: d0 02     bne   $0a90
0a8e: c4 5e     mov   $5e,a
0a90: 6f        ret

0a91: f8 5a     mov   x,$5a
0a93: f4 34     mov   a,$34+x
0a95: 10 26     bpl   $0abd
0a97: 28 7f     and   a,#$7f
0a99: d4 34     mov   $34+x,a
0a9b: f5 ff 1f  mov   a,$1fff+x
0a9e: c4 0a     mov   $0a,a
0aa0: f5 0b 20  mov   a,$200b+x
0aa3: c4 0b     mov   $0b,a
0aa5: 3f 0b 0b  call  $0b0b
0aa8: 90 04     bcc   $0aae
0aaa: 12 00     clr0  $00
0aac: 2f 0f     bra   $0abd
0aae: f8 5a     mov   x,$5a
0ab0: e4 03     mov   a,$03
0ab2: 8d 00     mov   y,#$00
0ab4: 7a 0a     addw  ya,$0a
0ab6: d5 ff 1f  mov   $1fff+x,a
0ab9: dd        mov   a,y
0aba: d5 0b 20  mov   $200b+x,a
0abd: 60        clrc
0abe: 6b 00     ror   $00
0ac0: 90 02     bcc   $0ac4
0ac2: e2 00     set7  $00
0ac4: e4 00     mov   a,$00
0ac6: f0 09     beq   $0ad1
0ac8: 60        clrc
0ac9: 98 08 5b  adc   $5b,#$08
0acc: ab 5a     inc   $5a
0ace: 6e 01 c0  dbnz  $01,$0a91
0ad1: 6f        ret

0ad2: 3f f5 0b  call  $0bf5
0ad5: 0d        push  psw
0ad6: b0 03     bcs   $0adb
0ad8: 3f 95 0c  call  $0c95
0adb: 3f 31 0d  call  $0d31
0ade: 8e        pop   psw
0adf: 3f 92 0d  call  $0d92
0ae2: 3f e5 0d  call  $0de5
0ae5: ab 03     inc   $03
0ae7: 60        clrc
0ae8: 6f        ret

0ae9: 3f f5 0b  call  $0bf5
0aec: 0d        push  psw
0aed: b0 03     bcs   $0af2
0aef: 3f bf 0c  call  $0cbf
0af2: 3f 31 0d  call  $0d31
0af5: 8e        pop   psw
0af6: 3f 92 0d  call  $0d92
0af9: 3f e5 0d  call  $0de5
0afc: ab 03     inc   $03
0afe: 60        clrc
0aff: 6f        ret

0b00: 3f 31 0d  call  $0d31
0b03: e8 80     mov   a,#$80
0b05: d4 87     mov   $87+x,a
0b07: ab 03     inc   $03
0b09: 60        clrc
0b0a: 6f        ret

0b0b: 8f ff 03  mov   $03,#$ff
0b0e: ab 03     inc   $03
0b10: eb 03     mov   y,$03
0b12: f7 0a     mov   a,($0a)+y
0b14: f0 23     beq   $0b39
0b16: 10 1c     bpl   $0b34
0b18: 68 c8     cmp   a,#$c8
0b1a: 90 b6     bcc   $0ad2
0b1c: 68 d8     cmp   a,#$d8
0b1e: b0 06     bcs   $0b26
0b20: 68 ca     cmp   a,#$ca
0b22: b0 c5     bcs   $0ae9
0b24: 2f da     bra   $0b00
; dispatch vcmd in A (d8-ff)
0b26: 1c        asl   a
0b27: 80        setc
0b28: a8 b0     sbc   a,#$b0
0b2a: 5d        mov   x,a               ; d8-ff => 00-4e
0b2b: e8 0b     mov   a,#$0b
0b2d: 2d        push  a
0b2e: e8 0e     mov   a,#$0e
0b30: 2d        push  a                 ; set return address $0e0b
0b31: 1f 88 0b  jmp   ($0b88+x)         ; jump to vcmd
; vcmd 01-7f
0b34: 3f 14 0f  call  $0f14
0b37: 2f d5     bra   $0b0e
; vcmd 00 - end repeat/return
0b39: f8 5a     mov   x,$5a
0b3b: f5 17 20  mov   a,$2017+x
0b3e: f0 46     beq   $0b86
0b40: 80        setc
0b41: a8 0c     sbc   a,#$0c
0b43: c4 04     mov   $04,a
0b45: 60        clrc
0b46: 84 5a     adc   a,$5a
0b48: 5d        mov   x,a
0b49: f5 23 20  mov   a,$2023+x
0b4c: 30 06     bmi   $0b54
0b4e: f0 1f     beq   $0b6f
0b50: 9c        dec   a
0b51: d5 23 20  mov   $2023+x,a
0b54: f5 53 20  mov   a,$2053+x
0b57: c4 0c     mov   $0c,a
0b59: f5 83 20  mov   a,$2083+x
0b5c: c4 0d     mov   $0d,a
0b5e: 8d 01     mov   y,#$01
0b60: f7 0c     mov   a,($0c)+y
0b62: c4 0a     mov   $0a,a
0b64: fc        inc   y
0b65: f7 0c     mov   a,($0c)+y
0b67: c4 0b     mov   $0b,a
0b69: 8f ff 03  mov   $03,#$ff
0b6c: 5f 0e 0b  jmp   $0b0e

0b6f: f5 53 20  mov   a,$2053+x
0b72: c4 0a     mov   $0a,a
0b74: f5 83 20  mov   a,$2083+x
0b77: c4 0b     mov   $0b,a
0b79: 8f 03 03  mov   $03,#$03
0b7c: f8 5a     mov   x,$5a
0b7e: e4 04     mov   a,$04
0b80: d5 17 20  mov   $2017+x,a
0b83: 5f 0e 0b  jmp   $0b0e

0b86: 80        setc
0b87: 6f        ret

; vcmd dispatch table
0b88: dw $1174  ; d8
0b8a: dw $10ec  ; d9
0b8c: dw $10d4  ; da
0b8e: dw $11a8  ; db
0b90: dw $11c9  ; dc
0b92: dw $11e7  ; dd
0b94: dw $11f8  ; de
0b96: dw $1208  ; df
0b98: dw $124f  ; e0
0b9a: dw $128e  ; e1
0b9c: dw $12b5  ; e2
0b9e: dw $13b6  ; e3
0ba0: dw $13eb  ; e4
0ba2: dw $1308  ; e5
0ba4: dw $133c  ; e6
0ba6: dw $12c1  ; e7
0ba8: dw $12e1  ; e8
0baa: dw $12b5  ; e9
0bac: dw $12bb  ; ea
0bae: dw $1106  ; eb
0bb0: dw $1125  ; ec
0bb2: dw $134a  ; ed
0bb4: dw $135b  ; ee
0bb6: dw $14b1  ; ef
0bb8: dw $13e0  ; f0
0bba: dw $13fe  ; f1
0bbc: dw $13fe  ; f2
0bbe: dw $13f3  ; f3
0bc0: dw $1387  ; f4
0bc2: dw $1571  ; f5
0bc4: dw $1150  ; f6
0bc6: dw $1593  ; f7
0bc8: dw $1628  ; f8
0bca: dw $1422  ; f9
0bcc: dw $138d  ; fa
0bce: dw $137f  ; fb
0bd0: dw $1628  ; fc
0bd2: dw $1502  ; fd

0bd4: d8 0b     mov   $0b,x
0bd6: 3e 11     cmp   x,$11
0bd8: fc        inc   y
0bd9: f7 0a     mov   a,($0a)+y
0bdb: 68 04     cmp   a,#$04
0bdd: b0 0c     bcs   $0beb
0bdf: 5d        mov   x,a
0be0: bc        inc   a
0be1: c4 c1     mov   $c1,a
0be3: fc        inc   y
0be4: cb 03     mov   $03,y
0be6: f7 0a     mov   a,($0a)+y
0be8: d4 c2     mov   $c2+x,a
0bea: 6f        ret

0beb: 5d        mov   x,a
0bec: bc        inc   a
0bed: fc        inc   y
0bee: cb 03     mov   $03,y
0bf0: f7 0a     mov   a,($0a)+y
0bf2: d4 00     mov   $00+x,a
0bf4: 6f        ret

0bf5: 2d        push  a
0bf6: f8 5a     mov   x,$5a
0bf8: f4 28     mov   a,$28+x
0bfa: 28 30     and   a,#$30
0bfc: 1c        asl   a
0bfd: 08 80     or    a,#$80
0bff: c4 09     mov   $09,a
0c01: d8 08     mov   $08,x
0c03: f4 34     mov   a,$34+x
0c05: 28 10     and   a,#$10
0c07: f0 14     beq   $0c1d
0c09: 82 08     set4  $08
0c0b: cd 07     mov   x,#$07
0c0d: 8f 7f 07  mov   $07,#$7f
0c10: f4 18     mov   a,$18+x
0c12: 10 06     bpl   $0c1a
0c14: 28 1f     and   a,#$1f
0c16: 64 08     cmp   a,$08
0c18: f0 60     beq   $0c7a
0c1a: 1d        dec   x
0c1b: 10 f3     bpl   $0c10
0c1d: 8f ff 07  mov   $07,#$ff
0c20: 8f ff 04  mov   $04,#$ff
0c23: cd 07     mov   x,#$07
0c25: f4 18     mov   a,$18+x
0c27: f0 51     beq   $0c7a
0c29: 30 0b     bmi   $0c36
0c2b: 64 04     cmp   a,$04
0c2d: b0 04     bcs   $0c33
0c2f: c4 04     mov   $04,a
0c31: d8 05     mov   $05,x
0c33: 9c        dec   a
0c34: d4 18     mov   $18+x,a
0c36: 1d        dec   x
0c37: 10 ec     bpl   $0c25
0c39: e4 04     mov   a,$04
0c3b: 10 28     bpl   $0c65
0c3d: cd 07     mov   x,#$07
0c3f: d8 04     mov   $04,x
0c41: f4 18     mov   a,$18+x
0c43: fd        mov   y,a
0c44: 28 18     and   a,#$18
0c46: d0 0d     bne   $0c55
0c48: dd        mov   a,y
0c49: 28 07     and   a,#$07
0c4b: 64 04     cmp   a,$04
0c4d: f0 02     beq   $0c51
0c4f: b0 04     bcs   $0c55
0c51: c4 04     mov   $04,a
0c53: d8 05     mov   $05,x
0c55: 1d        dec   x
0c56: 10 e9     bpl   $0c41
0c58: 69 04 08  cmp   ($08),($04)
0c5b: 90 36     bcc   $0c93
0c5d: f8 04     mov   x,$04
0c5f: f4 28     mov   a,$28+x
0c61: 28 70     and   a,#$70
0c63: d4 28     mov   $28+x,a
0c65: f8 05     mov   x,$05
0c67: f5 a3 1e  mov   a,$1ea3+x
0c6a: 8f 5c f2  mov   $f2,#$5c
0c6d: c4 f3     mov   $f3,a
0c6f: 48 ff     eor   a,#$ff
0c71: 24 4c     and   a,$4c
0c73: c4 4c     mov   $4c,a
0c75: 8f 4d f2  mov   $f2,#$4d
0c78: c4 f3     mov   $f3,a
0c7a: d8 05     mov   $05,x
0c7c: e4 07     mov   a,$07
0c7e: d4 20     mov   $20+x,a
0c80: e4 08     mov   a,$08
0c82: 04 09     or    a,$09
0c84: d4 18     mov   $18+x,a
0c86: f8 5a     mov   x,$5a
0c88: f4 28     mov   a,$28+x
0c8a: 28 f8     and   a,#$f8
0c8c: 04 05     or    a,$05
0c8e: 08 80     or    a,#$80
0c90: d4 28     mov   $28+x,a
0c92: 60        clrc
0c93: ae        pop   a
0c94: 6f        ret

0c95: 28 7f     and   a,#$7f
0c97: f8 57     mov   x,$57
0c99: d0 09     bne   $0ca4
0c9b: 60        clrc
0c9c: 85 1f 21  adc   a,$211f
0c9f: f8 5a     mov   x,$5a
0ca1: 95 21 21  adc   a,$2121+x
0ca4: c4 04     mov   $04,a
0ca6: 3f 8d 0e  call  $0e8d
0ca9: eb 5b     mov   y,$5b
0cab: e4 0d     mov   a,$0d
0cad: d5 bf 20  mov   $20bf+x,a
0cb0: d6 03 ff  mov   $ff03+y,a
0cb3: e4 0c     mov   a,$0c
0cb5: d5 b3 20  mov   $20b3+x,a
0cb8: d6 02 ff  mov   $ff02+y,a
0cbb: 3f 0d 0e  call  $0e0d
0cbe: 6f        ret

0cbf: f8 5a     mov   x,$5a
0cc1: 75 30 21  cmp   a,$2130+x
0cc4: f0 2c     beq   $0cf2
0cc6: d5 30 21  mov   $2130+x,a
0cc9: 80        setc
0cca: a8 ca     sbc   a,#$ca
0ccc: 60        clrc
0ccd: 85 2f 21  adc   a,$212f
0cd0: 3f f6 0c  call  $0cf6
0cd3: e8 24     mov   a,#$24
0cd5: f8 5a     mov   x,$5a
0cd7: 60        clrc
0cd8: 95 21 21  adc   a,$2121+x
0cdb: c4 04     mov   $04,a
0cdd: 3f 8d 0e  call  $0e8d
0ce0: eb 5b     mov   y,$5b
0ce2: e4 0d     mov   a,$0d
0ce4: d5 bf 20  mov   $20bf+x,a
0ce7: d6 03 ff  mov   $ff03+y,a
0cea: e4 0c     mov   a,$0c
0cec: d5 b3 20  mov   $20b3+x,a
0cef: d6 02 ff  mov   $ff02+y,a
0cf2: 3f 0d 0e  call  $0e0d
0cf5: 6f        ret

0cf6: 08 80     or    a,#$80
0cf8: 8d 06     mov   y,#$06
0cfa: cf        mul   ya
0cfb: da 0c     movw  $0c,ya
0cfd: 8d 00     mov   y,#$00
0cff: f4 28     mov   a,$28+x
0d01: 28 d7     and   a,#$d7
0d03: c4 05     mov   $05,a
0d05: f7 0c     mov   a,($0c)+y
0d07: f8 5b     mov   x,$5b
0d09: d5 04 ff  mov   $ff04+x,a
0d0c: fc        inc   y
0d0d: f7 0c     mov   a,($0c)+y
0d0f: d5 05 ff  mov   $ff05+x,a
0d12: fc        inc   y
0d13: f7 0c     mov   a,($0c)+y
0d15: d5 06 ff  mov   $ff06+x,a
0d18: fc        inc   y
0d19: f7 0c     mov   a,($0c)+y
0d1b: d5 07 ff  mov   $ff07+x,a
0d1e: f8 5a     mov   x,$5a
0d20: fc        inc   y
0d21: f7 0c     mov   a,($0c)+y
0d23: d5 d7 20  mov   $20d7+x,a
0d26: fc        inc   y
0d27: f7 0c     mov   a,($0c)+y
0d29: d5 cb 20  mov   $20cb+x,a
0d2c: e4 05     mov   a,$05
0d2e: d4 28     mov   $28+x,a
0d30: 6f        ret

0d31: f8 5a     mov   x,$5a
0d33: f5 e3 20  mov   a,$20e3+x
0d36: d4 63     mov   $63+x,a
0d38: f5 ef 20  mov   a,$20ef+x
0d3b: d4 6f     mov   $6f+x,a
0d3d: eb 03     mov   y,$03
0d3f: 8f 80 04  mov   $04,#$80
0d42: fc        inc   y
0d43: f7 0a     mov   a,($0a)+y
0d45: f0 06     beq   $0d4d
0d47: 10 05     bpl   $0d4e
0d49: 68 c8     cmp   a,#$c8
0d4b: f0 28     beq   $0d75
0d4d: 6f        ret

0d4e: 68 7e     cmp   a,#$7e
0d50: 90 0a     bcc   $0d5c
0d52: 68 7e     cmp   a,#$7e
0d54: f0 04     beq   $0d5a
0d56: e8 c0     mov   a,#$c0
0d58: 2f 02     bra   $0d5c
0d5a: e8 90     mov   a,#$90
0d5c: d5 e3 20  mov   $20e3+x,a
0d5f: e8 00     mov   a,#$00
0d61: d5 ef 20  mov   $20ef+x,a
0d64: fc        inc   y
0d65: f7 0a     mov   a,($0a)+y
0d67: f0 e4     beq   $0d4d
0d69: 30 05     bmi   $0d70
0d6b: c4 04     mov   $04,a
0d6d: fc        inc   y
0d6e: f7 0a     mov   a,($0a)+y
0d70: 68 c8     cmp   a,#$c8
0d72: f0 01     beq   $0d75
0d74: 6f        ret

0d75: cb 03     mov   $03,y
0d77: f4 63     mov   a,$63+x
0d79: 60        clrc
0d7a: 95 e3 20  adc   a,$20e3+x
0d7d: d4 63     mov   $63+x,a
0d7f: f4 6f     mov   a,$6f+x
0d81: 95 ef 20  adc   a,$20ef+x
0d84: d4 6f     mov   $6f+x,a
0d86: e4 04     mov   a,$04
0d88: 30 b3     bmi   $0d3d
0d8a: 9f        xcn   a
0d8b: 28 07     and   a,#$07
0d8d: d5 fb 20  mov   $20fb+x,a
0d90: 2f ab     bra   $0d3d
0d92: b0 4a     bcs   $0dde
0d94: f8 5a     mov   x,$5a
0d96: f4 34     mov   a,$34+x
0d98: 28 10     and   a,#$10
0d9a: d0 3d     bne   $0dd9
0d9c: f5 fb 20  mov   a,$20fb+x
0d9f: 68 07     cmp   a,#$07
0da1: f0 2b     beq   $0dce
0da3: 60        clrc
0da4: 84 58     adc   a,$58
0da6: fd        mov   y,a
0da7: f6 7b 21  mov   a,$217b+y
0daa: fb 6f     mov   y,$6f+x
0dac: f0 18     beq   $0dc6
0dae: c4 05     mov   $05,a
0db0: dd        mov   a,y
0db1: bc        inc   a
0db2: c4 04     mov   $04,a
0db4: f4 63     mov   a,$63+x
0db6: f8 04     mov   x,$04
0db8: 9e        div   ya,x
0db9: eb 05     mov   y,$05
0dbb: cf        mul   ya
0dbc: e4 04     mov   a,$04
0dbe: cf        mul   ya
0dbf: f8 5a     mov   x,$5a
0dc1: db 87     mov   $87+x,y
0dc3: d4 7b     mov   $7b+x,a
0dc5: 6f        ret

0dc6: db 87     mov   $87+x,y
0dc8: fb 63     mov   y,$63+x
0dca: cf        mul   ya
0dcb: db 7b     mov   $7b+x,y
0dcd: 6f        ret

0dce: fb 6f     mov   y,$6f+x
0dd0: f4 63     mov   a,$63+x
0dd2: 9a 10     subw  ya,$10
0dd4: db 87     mov   $87+x,y
0dd6: d4 7b     mov   $7b+x,a
0dd8: 6f        ret

0dd9: e8 7f     mov   a,#$7f
0ddb: d4 87     mov   $87+x,a
0ddd: 6f        ret

0dde: f8 5a     mov   x,$5a
0de0: e8 80     mov   a,#$80
0de2: d4 87     mov   $87+x,a
0de4: 6f        ret

0de5: f4 28     mov   a,$28+x
0de7: 10 23     bpl   $0e0c
0de9: f4 cf     mov   a,$cf+x
0deb: f0 1f     beq   $0e0c
0ded: 68 ff     cmp   a,#$ff
0def: d0 0c     bne   $0dfd
0df1: fb 87     mov   y,$87+x
0df3: d4 87     mov   $87+x,a
0df5: db c7     mov   $c7+x,y
0df7: f4 7b     mov   a,$7b+x
0df9: d5 e7 21  mov   $21e7+x,a
0dfc: 6f        ret

0dfd: d5 e7 21  mov   $21e7+x,a
0e00: e8 00     mov   a,#$00
0e02: d4 c7     mov   $c7+x,a
0e04: f4 28     mov   a,$28+x
0e06: 28 40     and   a,#$40
0e08: f0 02     beq   $0e0c
0e0a: d4 87     mov   $87+x,a
0e0c: 6f        ret

0e0d: eb 03     mov   y,$03
0e0f: fc        inc   y
0e10: f7 0a     mov   a,($0a)+y
0e12: 68 f9     cmp   a,#$f9
0e14: d0 05     bne   $0e1b
0e16: 3f 22 14  call  $1422
0e19: 2f 12     bra   $0e2d
0e1b: f8 5a     mov   x,$5a
0e1d: f4 28     mov   a,$28+x
0e1f: 10 65     bpl   $0e86
0e21: f5 0f 01  mov   a,$010f+x
0e24: 68 f1     cmp   a,#$f1
0e26: d0 05     bne   $0e2d
0e28: 3f 93 14  call  $1493
0e2b: 2f 59     bra   $0e86
0e2d: f5 03 01  mov   a,$0103+x
0e30: f0 54     beq   $0e86
0e32: c4 05     mov   $05,a
0e34: e4 0d     mov   a,$0d
0e36: d5 87 01  mov   $0187+x,a
0e39: e4 0c     mov   a,$0c
0e3b: d5 7b 01  mov   $017b+x,a
0e3e: e4 0d     mov   a,$0d
0e40: eb 05     mov   y,$05
0e42: cf        mul   ya
0e43: da 0e     movw  $0e,ya
0e45: e4 0c     mov   a,$0c
0e47: eb 05     mov   y,$05
0e49: cf        mul   ya
0e4a: dd        mov   a,y
0e4b: 8d 00     mov   y,#$00
0e4d: 7a 0e     addw  ya,$0e
0e4f: d5 63 01  mov   $0163+x,a
0e52: dd        mov   a,y
0e53: d5 6f 01  mov   $016f+x,a
0e56: f5 93 01  mov   a,$0193+x
0e59: f0 1a     beq   $0e75
0e5b: eb 0d     mov   y,$0d
0e5d: f5 9f 01  mov   a,$019f+x
0e60: cf        mul   ya
0e61: da 0e     movw  $0e,ya
0e63: eb 0c     mov   y,$0c
0e65: f5 9f 01  mov   a,$019f+x
0e68: cf        mul   ya
0e69: dd        mov   a,y
0e6a: 8d 00     mov   y,#$00
0e6c: 7a 0e     addw  ya,$0e
0e6e: d5 c3 01  mov   $01c3+x,a
0e71: dd        mov   a,y
0e72: d5 cb 01  mov   $01cb+x,a
0e75: 40        setp
0e76: f4 1b     mov   a,$1b+x
0e78: d5 60 21  mov   $2160+x,a
0e7b: e8 00     mov   a,#$00
0e7d: d4 27     mov   $27+x,a
0e7f: d4 33     mov   $33+x,a
0e81: f4 93     mov   a,$93+x
0e83: d4 ab     mov   $ab+x,a
0e85: 20        clrp
0e86: eb 5b     mov   y,$5b
0e88: f8 5a     mov   x,$5a
0e8a: 5f 7e 1c  jmp   $1c7e

0e8d: 8d 00     mov   y,#$00
0e8f: cd 0c     mov   x,#$0c
0e91: 9e        div   ya,x
0e92: c4 05     mov   $05,a
0e94: dd        mov   a,y
0e95: 5d        mov   x,a
0e96: f5 ee 0e  mov   a,$0eee+x
0e99: c4 0c     mov   $0c,a
0e9b: f5 fb 0e  mov   a,$0efb+x
0e9e: c4 0d     mov   $0d,a
0ea0: f5 08 0f  mov   a,$0f08+x
0ea3: fd        mov   y,a
0ea4: f8 5a     mov   x,$5a
0ea6: f5 13 21  mov   a,$2113+x
0ea9: f0 08     beq   $0eb3
0eab: cf        mul   ya
0eac: dd        mov   a,y
0ead: 8d 00     mov   y,#$00
0eaf: 7a 0c     addw  ya,$0c
0eb1: da 0c     movw  $0c,ya
0eb3: f5 cb 20  mov   a,$20cb+x
0eb6: eb 0d     mov   y,$0d
0eb8: cf        mul   ya
0eb9: da 0e     movw  $0e,ya
0ebb: f5 cb 20  mov   a,$20cb+x
0ebe: eb 0c     mov   y,$0c
0ec0: cf        mul   ya
0ec1: 6d        push  y
0ec2: f5 d7 20  mov   a,$20d7+x
0ec5: eb 0c     mov   y,$0c
0ec7: cf        mul   ya
0ec8: 7a 0e     addw  ya,$0e
0eca: da 0e     movw  $0e,ya
0ecc: f5 d7 20  mov   a,$20d7+x
0ecf: eb 0d     mov   y,$0d
0ed1: cf        mul   ya
0ed2: cb 06     mov   $06,y
0ed4: fd        mov   y,a
0ed5: ae        pop   a
0ed6: 7a 0e     addw  ya,$0e
0ed8: 28 f0     and   a,#$f0
0eda: da 0c     movw  $0c,ya
0edc: e8 05     mov   a,#$05
0ede: 80        setc
0edf: a4 05     sbc   a,$05
0ee1: f0 0a     beq   $0eed
0ee3: fd        mov   y,a
0ee4: e4 06     mov   a,$06
0ee6: 5c        lsr   a
0ee7: 6b 0d     ror   $0d
0ee9: 6b 0c     ror   $0c
0eeb: fe f9     dbnz  y,$0ee6
0eed: 6f        ret

0eee: db $5f,$de,$65,$f4,$8c,$2c,$d6,$8b
0ef6: db $4a,$14,$ea,$cd,$be
0efb: db $08,$08,$09,$09,$0a,$0b,$0b,$0c
0f03: db $0d,$0e,$0e,$0f,$10
0f08: db $7f,$87,$8f,$98,$a0,$aa,$b5,$bf
0f10: db $ca,$d6,$e3,$f1

0f14: f8 5a     mov   x,$5a
0f16: 68 7e     cmp   a,#$7e
0f18: 90 0a     bcc   $0f24
0f1a: 68 7e     cmp   a,#$7e
0f1c: f0 04     beq   $0f22
0f1e: e8 c0     mov   a,#$c0
0f20: 2f 02     bra   $0f24
0f22: e8 90     mov   a,#$90
0f24: d5 e3 20  mov   $20e3+x,a
0f27: e8 00     mov   a,#$00
0f29: d5 ef 20  mov   $20ef+x,a
0f2c: fc        inc   y
0f2d: f7 0a     mov   a,($0a)+y
0f2f: f0 1f     beq   $0f50
0f31: 30 1d     bmi   $0f50
0f33: cb 03     mov   $03,y
0f35: 2d        push  a
0f36: 28 0f     and   a,#$0f
0f38: 04 59     or    a,$59
0f3a: fd        mov   y,a
0f3b: 80        setc
0f3c: b6 8b 21  sbc   a,$218b+y
0f3f: 48 ff     eor   a,#$ff
0f41: fd        mov   y,a
0f42: cf        mul   ya
0f43: dd        mov   a,y
0f44: d5 84 ff  mov   $ff84+x,a
0f47: d4 ab     mov   $ab+x,a
0f49: ae        pop   a
0f4a: 9f        xcn   a
0f4b: 28 07     and   a,#$07
0f4d: d5 fb 20  mov   $20fb+x,a
0f50: 6f        ret

0f51: e5 ec 1f  mov   a,$1fec
0f54: 5c        lsr   a
0f55: 5c        lsr   a
0f56: 08 01     or    a,#$01
0f58: c4 fb     mov   $fb,a
0f5a: 6f        ret

0f5b: e5 ec 1f  mov   a,$1fec
0f5e: bc        inc   a
0f5f: c5 ec 1f  mov   $1fec,a
0f62: c4 fb     mov   $fb,a
0f64: e5 f4 1f  mov   a,$1ff4
0f67: f0 12     beq   $0f7b
0f69: 9c        dec   a
0f6a: f0 01     beq   $0f6d
0f6c: 9c        dec   a
0f6d: c5 f4 1f  mov   $1ff4,a
0f70: e8 01     mov   a,#$01
0f72: fd        mov   y,a
0f73: da ab     movw  $ab,ya
0f75: da ad     movw  $ad,ya
0f77: da af     movw  $af,ya
0f79: da b1     movw  $b1,ya
0f7b: 6f        ret

0f7c: e5 ec 1f  mov   a,$1fec
0f7f: c4 fb     mov   $fb,a
0f81: 6f        ret

0f82: e4 5d     mov   a,$5d
0f84: f0 17     beq   $0f9d
0f86: e5 79 21  mov   a,$2179
0f89: d0 12     bne   $0f9d
0f8b: e5 f0 1f  mov   a,$1ff0
0f8e: f0 0d     beq   $0f9d
0f90: c5 79 21  mov   $2179,a
0f93: 8d 00     mov   y,#$00
0f95: cd 05     mov   x,#$05
0f97: 9e        div   ya,x
0f98: cd 02     mov   x,#$02
0f9a: 3f 96 10  call  $1096
0f9d: 6f        ret

0f9e: e4 5d     mov   a,$5d
0fa0: f0 14     beq   $0fb6
0fa2: e5 79 21  mov   a,$2179
0fa5: d0 0f     bne   $0fb6
0fa7: e5 f0 1f  mov   a,$1ff0
0faa: f0 0a     beq   $0fb6
0fac: c5 79 21  mov   $2179,a
0faf: e8 00     mov   a,#$00
0fb1: cd 02     mov   x,#$02
0fb3: 3f 96 10  call  $1096
0fb6: 6f        ret

0fb7: e4 5d     mov   a,$5d
0fb9: f0 12     beq   $0fcd
0fbb: e5 79 21  mov   a,$2179
0fbe: f0 0d     beq   $0fcd
0fc0: e5 f0 1f  mov   a,$1ff0
0fc3: cd 19     mov   x,#$19
0fc5: 3f 96 10  call  $1096
0fc8: e8 00     mov   a,#$00
0fca: c5 79 21  mov   $2179,a
0fcd: 6f        ret

0fce: cd 78     mov   x,#$78
0fd0: 5f d5 0f  jmp   $0fd5

0fd3: cd 3c     mov   x,#$3c
0fd5: e4 5d     mov   a,$5d
0fd7: f0 13     beq   $0fec
0fd9: e5 79 21  mov   a,$2179
0fdc: d0 0e     bne   $0fec
0fde: e5 f4 1f  mov   a,$1ff4
0fe1: f0 09     beq   $0fec
0fe3: e8 ff     mov   a,#$ff
0fe5: c5 79 21  mov   $2179,a
0fe8: bc        inc   a
0fe9: 3f 96 10  call  $1096
0fec: 6f        ret

0fed: e8 00     mov   a,#$00
0fef: c4 45     mov   $45,a
0ff1: c4 49     mov   $49,a
0ff3: 8d 2b     mov   y,#$2b
0ff5: f6 1e 1f  mov   a,$1f1e+y
0ff8: d6 ca 1e  mov   $1eca+y,a
0ffb: fe f8     dbnz  y,$0ff5
0ffd: 6f        ret

0ffe: 8f 01 45  mov   $45,#$01
1001: 8f 00 49  mov   $49,#$00
1004: 8d 2b     mov   y,#$2b
1006: f6 f4 1e  mov   a,$1ef4+y
1009: d6 ca 1e  mov   $1eca+y,a
100c: fe f8     dbnz  y,$1006
100e: 6f        ret

100f: 8f 00 45  mov   $45,#$00
1012: 8f ff 49  mov   $49,#$ff
1015: 8d 2b     mov   y,#$2b
1017: f6 f4 1e  mov   a,$1ef4+y
101a: d6 ca 1e  mov   $1eca+y,a
101d: fe f8     dbnz  y,$1017
101f: 6f        ret

1020: e4 5d     mov   a,$5d
1022: f0 30     beq   $1054
1024: e8 00     mov   a,#$00
1026: 8f 4d f2  mov   $f2,#$4d
1029: c4 f3     mov   $f3,a
102b: 8f 2c f2  mov   $f2,#$2c
102e: c4 f3     mov   $f3,a
1030: 8f 3c f2  mov   $f2,#$3c
1033: c4 f3     mov   $f3,a
1035: 8f 7d f2  mov   $f2,#$7d
1038: c4 f3     mov   $f3,a
103a: c4 b7     mov   $b7,a
103c: c4 5d     mov   $5d,a
103e: c4 5f     mov   $5f,a
1040: c4 4b     mov   $4b,a
1042: c5 78 21  mov   $2178,a
1045: 3f 7f 17  call  $177f
1048: e4 4a     mov   a,$4a
104a: 28 fd     and   a,#$fd
104c: c4 4a     mov   $4a,a
104e: c4 f1     mov   $f1,a
1050: e8 ff     mov   a,#$ff
1052: c4 f4     mov   $f4,a
1054: 6f        ret

1055: 8f 5c f2  mov   $f2,#$5c
1058: 8f ff f3  mov   $f3,#$ff
105b: e8 01     mov   a,#$01
105d: c4 4a     mov   $4a,a
105f: c4 f1     mov   $f1,a
1061: 9c        dec   a
1062: 8f 4d f2  mov   $f2,#$4d
1065: c4 f3     mov   $f3,a
1067: c4 b7     mov   $b7,a
1069: fd        mov   y,a
106a: da 5d     movw  $5d,ya
106c: cd 07     mov   x,#$07
106e: d4 18     mov   $18+x,a
1070: d4 20     mov   $20+x,a
1072: d4 28     mov   $28+x,a
1074: d4 34     mov   $34+x,a
1076: 1d        dec   x
1077: 10 f5     bpl   $106e
1079: da 3c     movw  $3c,ya
107b: da 3e     movw  $3e,ya
107d: da 30     movw  $30,ya
107f: da 32     movw  $32,ya
1081: 3f fb 15  call  $15fb
1084: e8 00     mov   a,#$00
1086: c4 de     mov   $de,a
1088: 8f 4c f2  mov   $f2,#$4c
108b: c4 f3     mov   $f3,a
108d: 8f 5c f2  mov   $f2,#$5c
1090: c4 f3     mov   $f3,a
1092: 9c        dec   a
1093: c4 f4     mov   $f4,a
1095: 6f        ret

1096: 8d 00     mov   y,#$00
1098: cc f2 1f  mov   $1ff2,y
109b: c5 f1 1f  mov   $1ff1,a
109e: c9 f6 1f  mov   $1ff6,x
10a1: 80        setc
10a2: a5 f4 1f  sbc   a,$1ff4
10a5: 3f 3a 1e  call  $1e3a
10a8: c5 f7 1f  mov   $1ff7,a
10ab: cc f8 1f  mov   $1ff8,y
10ae: 6f        ret

10af: cd 00     mov   x,#$00
10b1: d8 00     mov   $00,x
10b3: 4b 00     lsr   $00
10b5: f4 18     mov   a,$18+x
10b7: 10 0e     bpl   $10c7
10b9: 1c        asl   a
10ba: 30 0b     bmi   $10c7
10bc: 7c        ror   a
10bd: 28 0f     and   a,#$0f
10bf: fd        mov   y,a
10c0: f6 6c 21  mov   a,$216c+y
10c3: 30 02     bmi   $10c7
10c5: e2 00     set7  $00
10c7: e8 00     mov   a,#$00
10c9: d4 20     mov   $20+x,a
10cb: 3d        inc   x
10cc: c8 08     cmp   x,#$08
10ce: d0 e3     bne   $10b3
10d0: fa 00 4b  mov   ($4b),($00)
10d3: 6f        ret

; vcmd da
10d4: e4 df     mov   a,$df
10d6: d0 0f     bne   $10e7
10d8: fc        inc   y
10d9: f7 0a     mov   a,($0a)+y
10db: 5d        mov   x,a
10dc: fc        inc   y
10dd: f7 0a     mov   a,($0a)+y
10df: c4 0b     mov   $0b,a
10e1: d8 0a     mov   $0a,x
10e3: 8f ff 03  mov   $03,#$ff
10e6: 6f        ret

10e7: fc        inc   y
10e8: fc        inc   y
10e9: cb 03     mov   $03,y
10eb: 6f        ret

; vcmd d9
10ec: 4f f8     pcall $f8
10ee: 4d        push  x
10ef: c4 5a     mov   $5a,a
10f1: fc        inc   y
10f2: f7 0a     mov   a,($0a)+y
10f4: 1c        asl   a
10f5: 80        setc
10f6: a8 b0     sbc   a,#$b0
10f8: 5d        mov   x,a
10f9: e8 11     mov   a,#$11
10fb: 2d        push  a
10fc: e8 02     mov   a,#$02
10fe: 2d        push  a
10ff: 1f 88 0b  jmp   ($0b88+x)

1102: ce        pop   x
1103: d8 5a     mov   $5a,x
1105: 6f        ret

; vcmd eb
1106: 4f f0     pcall $f0
1108: 10 06     bpl   $1110
110a: 68 ff     cmp   a,#$ff
110c: f0 02     beq   $1110
110e: e8 00     mov   a,#$00
1110: 9c        dec   a
1111: d5 db 21  mov   $21db+x,a
1114: e4 03     mov   a,$03
1116: bc        inc   a
1117: 60        clrc
1118: 84 0a     adc   a,$0a
111a: d5 c3 21  mov   $21c3+x,a
111d: e4 0b     mov   a,$0b
111f: 88 00     adc   a,#$00
1121: d5 cf 21  mov   $21cf+x,a
1124: 6f        ret

; vcmd ec
1125: f8 5a     mov   x,$5a
1127: f5 db 21  mov   a,$21db+x
112a: f0 11     beq   $113d
112c: 9c        dec   a
112d: d5 db 21  mov   $21db+x,a
1130: f5 c3 21  mov   a,$21c3+x
1133: c4 0a     mov   $0a,a
1135: f5 cf 21  mov   a,$21cf+x
1138: c4 0b     mov   $0b,a
113a: 8f ff 03  mov   $03,#$ff
113d: 6f        ret

113e: 4f f0     pcall $f0
1140: d0 07     bne   $1149
1142: f4 28     mov   a,$28+x
1144: 08 40     or    a,#$40
1146: d4 28     mov   $28+x,a
1148: 6f        ret

1149: f4 28     mov   a,$28+x
114b: 28 bf     and   a,#$bf
114d: d4 28     mov   $28+x,a
114f: 6f        ret

; vcmd f6
1150: 4f f8     pcall $f8
1152: f0 1b     beq   $116f
1154: d4 cf     mov   $cf+x,a
1156: fc        inc   y
1157: f7 0a     mov   a,($0a)+y
1159: 0d        push  psw
115a: d5 ab 21  mov   $21ab+x,a
115d: fc        inc   y
115e: f7 0a     mov   a,($0a)+y
1160: d5 b3 21  mov   $21b3+x,a
1163: 8e        pop   psw
1164: f0 06     beq   $116c
1166: fc        inc   y
1167: f7 0a     mov   a,($0a)+y
1169: d5 bb 21  mov   $21bb+x,a
116c: cb 03     mov   $03,y
116e: 6f        ret

116f: d4 cf     mov   $cf+x,a
1171: cb 03     mov   $03,y
1173: 6f        ret

; vcmd d8
1174: 4f f0     pcall $f0
1176: d0 14     bne   $118c
1178: f4 34     mov   a,$34+x
117a: 08 10     or    a,#$10
117c: d4 34     mov   $34+x,a
117e: f4 28     mov   a,$28+x
1180: 10 09     bpl   $118b
1182: 28 07     and   a,#$07
1184: 5d        mov   x,a
1185: f4 18     mov   a,$18+x
1187: 08 10     or    a,#$10
1189: d4 18     mov   $18+x,a
118b: 6f        ret

118c: f4 34     mov   a,$34+x
118e: 28 ef     and   a,#$ef
1190: d4 34     mov   $34+x,a
1192: f4 28     mov   a,$28+x
1194: 10 11     bpl   $11a7
1196: 28 07     and   a,#$07
1198: 5d        mov   x,a
1199: e8 00     mov   a,#$00
119b: d4 18     mov   $18+x,a
119d: d4 20     mov   $20+x,a
119f: f5 a3 1e  mov   a,$1ea3+x
11a2: 8f 5c f2  mov   $f2,#$5c
11a5: c4 f3     mov   $f3,a
11a7: 6f        ret

; vcmd db
11a8: f8 5b     mov   x,$5b
11aa: fc        inc   y
11ab: cb 03     mov   $03,y
11ad: f7 0a     mov   a,($0a)+y
11af: d5 07 ff  mov   $ff07+x,a
11b2: fd        mov   y,a
11b3: e8 00     mov   a,#$00
11b5: d5 05 ff  mov   $ff05+x,a
11b8: 3f 31 0d  call  $0d31
11bb: 3f 94 0d  call  $0d94
11be: ab 03     inc   $03
11c0: 8d 01     mov   y,#$01
11c2: 3f ec 11  call  $11ec
11c5: 60        clrc
11c6: ae        pop   a
11c7: ae        pop   a
11c8: 6f        ret

; vcmd dc
11c9: f8 5b     mov   x,$5b
11cb: fc        inc   y
11cc: f7 0a     mov   a,($0a)+y
11ce: d5 02 ff  mov   $ff02+x,a
11d1: 4f f2     pcall $f2
11d3: d5 03 ff  mov   $ff03+x,a
11d6: 3f 31 0d  call  $0d31
11d9: 3f 94 0d  call  $0d94
11dc: ab 03     inc   $03
11de: 8d 7f     mov   y,#$7f
11e0: 3f ec 11  call  $11ec
11e3: 60        clrc
11e4: ae        pop   a
11e5: ae        pop   a
11e6: 6f        ret

; vcmd dd
11e7: 4f f0     pcall $f0
11e9: 5f b8 11  jmp   $11b8

11ec: f8 5a     mov   x,$5a
11ee: f4 28     mov   a,$28+x
11f0: 10 05     bpl   $11f7
11f2: 28 07     and   a,#$07
11f4: 5d        mov   x,a
11f5: db 20     mov   $20+x,y
11f7: 6f        ret

; vcmd de
11f8: 4f f8     pcall $f8
11fa: d5 e3 20  mov   $20e3+x,a
11fd: fc        inc   y
11fe: f7 0a     mov   a,($0a)+y
1200: d5 ef 20  mov   $20ef+x,a
1203: cb 03     mov   $03,y
1205: 5f 2c 0f  jmp   $0f2c

; vcmd df
1208: f8 5a     mov   x,$5a
120a: e8 00     mov   a,#$00
120c: d5 23 20  mov   $2023+x,a
120f: e8 0c     mov   a,#$0c
1211: d5 17 20  mov   $2017+x,a
1214: fc        inc   y
1215: fc        inc   y
1216: cb 07     mov   $07,y
1218: fa 0a 0c  mov   ($0c),($0a)
121b: fa 0b 0d  mov   ($0d),($0b)
121e: dc        dec   y
121f: f7 0a     mov   a,($0a)+y
1221: 2d        push  a
1222: 28 7f     and   a,#$7f
1224: 9c        dec   a
1225: 1c        asl   a
1226: 9c        dec   a
1227: cb 06     mov   $06,y
1229: 60        clrc
122a: 84 06     adc   a,$06
122c: 8d 00     mov   y,#$00
122e: 7a 0a     addw  ya,$0a
1230: f8 5a     mov   x,$5a
1232: d5 53 20  mov   $2053+x,a
1235: dd        mov   a,y
1236: d5 83 20  mov   $2083+x,a
1239: ae        pop   a
123a: 3f 79 1e  call  $1e79
123d: 1c        asl   a
123e: 60        clrc
123f: 84 07     adc   a,$07
1241: fd        mov   y,a
1242: f7 0c     mov   a,($0c)+y
1244: c4 0a     mov   $0a,a
1246: fc        inc   y
1247: f7 0c     mov   a,($0c)+y
1249: c4 0b     mov   $0b,a
124b: 8f ff 03  mov   $03,#$ff
124e: 6f        ret

; vcmd e0
124f: f8 5a     mov   x,$5a
1251: e8 ff     mov   a,#$ff
1253: d5 30 21  mov   $2130+x,a
1256: fc        inc   y
1257: f7 0a     mov   a,($0a)+y
1259: 68 ff     cmp   a,#$ff
125b: f0 0b     beq   $1268
125d: d5 6c 21  mov   $216c+x,a
1260: 28 7f     and   a,#$7f
1262: cb 03     mov   $03,y
1264: 3f f6 0c  call  $0cf6
1267: 6f        ret

1268: f4 28     mov   a,$28+x
126a: 08 20     or    a,#$20
126c: d4 28     mov   $28+x,a
126e: 38 e0 4e  and   $4e,#$e0
1271: 4f f2     pcall $f2
1273: 04 4e     or    a,$4e
1275: c4 4e     mov   $4e,a
1277: 8f 6c f2  mov   $f2,#$6c
127a: c4 f3     mov   $f3,a
127c: f8 5b     mov   x,$5b
127e: e8 20     mov   a,#$20
1280: d5 04 ff  mov   $ff04+x,a
1283: e8 8f     mov   a,#$8f
1285: d5 05 ff  mov   $ff05+x,a
1288: e8 e0     mov   a,#$e0
128a: d5 06 ff  mov   $ff06+x,a
128d: 6f        ret

; vcmd e1
128e: f8 5a     mov   x,$5a
1290: e8 00     mov   a,#$00
1292: d5 48 21  mov   $2148+x,a
1295: d5 54 21  mov   $2154+x,a
1298: bc        inc   a
1299: d4 ab     mov   $ab+x,a
129b: 4f f2     pcall $f2
129d: c4 04     mov   $04,a
129f: 28 3f     and   a,#$3f
12a1: d5 60 ff  mov   $ff60+x,a
12a4: e8 ff     mov   a,#$ff
12a6: 0b 04     asl   $04
12a8: 90 03     bcc   $12ad
12aa: d5 48 21  mov   $2148+x,a
12ad: 0b 04     asl   $04
12af: 90 03     bcc   $12b4
12b1: d5 54 21  mov   $2154+x,a
12b4: 6f        ret

; vcmd e2,e9
12b5: 4f f2     pcall $f2
12b7: c5 1f 21  mov   $211f,a
12ba: 6f        ret

; vcmd ea
12bb: 4f f0     pcall $f0
12bd: d5 21 21  mov   $2121+x,a
12c0: 6f        ret

; vcmd e7
12c1: 4f f2     pcall $f2
12c3: 5d        mov   x,a
12c4: e8 36     mov   a,#$36
12c6: 8d 10     mov   y,#$10
12c8: 9e        div   ya,x
12c9: 50 02     bvc   $12cd
12cb: e8 ff     mov   a,#$ff
12cd: c5 ec 1f  mov   $1fec,a
12d0: c5 ea 1f  mov   $1fea,a
12d3: c4 fb     mov   $fb,a
12d5: e8 00     mov   a,#$00
12d7: c5 ef 1f  mov   $1fef,a
12da: c5 e9 1f  mov   $1fe9,a
12dd: fa 4a f1  mov   ($f1),($4a)
12e0: 6f        ret

; vcmd e8
12e1: e8 00     mov   a,#$00
12e3: c5 eb 1f  mov   $1feb,a
12e6: fc        inc   y
12e7: f7 0a     mov   a,($0a)+y
12e9: c5 e9 1f  mov   $1fe9,a
12ec: 4f f2     pcall $f2
12ee: 5d        mov   x,a
12ef: e8 36     mov   a,#$36
12f1: 8d 10     mov   y,#$10
12f3: 9e        div   ya,x
12f4: c5 ea 1f  mov   $1fea,a
12f7: e9 e9 1f  mov   x,$1fe9
12fa: 80        setc
12fb: a5 ec 1f  sbc   a,$1fec
12fe: 3f 3a 1e  call  $1e3a
1301: c5 ed 1f  mov   $1fed,a
1304: cc ee 1f  mov   $1fee,y
1307: 6f        ret

; vcmd e5
1308: e5 79 21  mov   a,$2179
130b: d0 2b     bne   $1338
130d: 4f f2     pcall $f2
130f: c5 f1 1f  mov   $1ff1,a
1312: c5 f4 1f  mov   $1ff4,a
1315: c5 f0 1f  mov   $1ff0,a
1318: e8 00     mov   a,#$00
131a: c5 f6 1f  mov   $1ff6,a
131d: bc        inc   a
131e: fd        mov   y,a
131f: da ab     movw  $ab,ya
1321: da ad     movw  $ad,ya
1323: da af     movw  $af,ya
1325: da b1     movw  $b1,ya
1327: 6f        ret

1328: e8 00     mov   a,#$00
132a: c5 f4 1f  mov   $1ff4,a
132d: bc        inc   a
132e: c5 79 21  mov   $2179,a
1331: 4f f2     pcall $f2
1333: cd 3c     mov   x,#$3c
1335: 5f 96 10  jmp   $1096

1338: fc        inc   y
1339: cb 03     mov   $03,y
133b: 6f        ret

; vcmd e6
133c: e5 79 21  mov   a,$2179
133f: d0 f7     bne   $1338
1341: fc        inc   y
1342: f7 0a     mov   a,($0a)+y
1344: 5d        mov   x,a
1345: 4f f2     pcall $f2
1347: 5f 96 10  jmp   $1096

; vcmd ed
134a: 4f f0     pcall $f0
134c: d5 9c ff  mov   $ff9c+x,a
134f: d5 78 ff  mov   $ff78+x,a
1352: e8 00     mov   a,#$00
1354: d5 6c ff  mov   $ff6c+x,a
1357: bc        inc   a
1358: d4 ab     mov   $ab+x,a
135a: 6f        ret

; vcmd ee
135b: 4f f8     pcall $f8
135d: d5 6c ff  mov   $ff6c+x,a
1360: 2d        push  a
1361: 4f f2     pcall $f2
1363: d5 78 ff  mov   $ff78+x,a
1366: eb 5a     mov   y,$5a
1368: ce        pop   x
1369: 80        setc
136a: b6 9c ff  sbc   a,$ff9c+y
136d: 3f 3a 1e  call  $1e3a
1370: f8 5a     mov   x,$5a
1372: d5 a8 ff  mov   $ffa8+x,a
1375: dd        mov   a,y
1376: d5 b4 ff  mov   $ffb4+x,a
1379: e8 00     mov   a,#$00
137b: d5 90 ff  mov   $ff90+x,a
137e: 6f        ret

; vcmd fb
137f: f8 5a     mov   x,$5a
1381: e8 ff     mov   a,#$ff
1383: d5 3c 21  mov   $213c+x,a
1386: 6f        ret

; vcmd f4
1387: 4f f0     pcall $f0
1389: d5 13 21  mov   $2113+x,a
138c: 6f        ret

; vcmd fa
138d: 4f f2     pcall $f2
138f: 30 04     bmi   $1395
1391: c5 2f 21  mov   $212f,a
1394: 6f        ret

1395: fc        inc   y
1396: f7 0a     mov   a,($0a)+y
1398: c5 b3 13  mov   $13b3,a
139b: fc        inc   y
139c: f7 0a     mov   a,($0a)+y
139e: c5 b4 13  mov   $13b4,a
13a1: fc        inc   y
13a2: f7 0a     mov   a,($0a)+y
13a4: c4 04     mov   $04,a
13a6: 4f f2     pcall $f2
13a8: 80        setc
13a9: a4 04     sbc   a,$04
13ab: 5d        mov   x,a
13ac: 3f 7e 1e  call  $1e7e
13af: 60        clrc
13b0: 84 04     adc   a,$04
13b2: c5 00 00  mov   $0000,a
13b5: 6f        ret

; vcmd e3
13b6: 4f f8     pcall $f8
13b8: d5 1b 01  mov   $011b+x,a
13bb: fc        inc   y
13bc: f7 0a     mov   a,($0a)+y
13be: cb 04     mov   $04,y
13c0: 8d 40     mov   y,#$40
13c2: cf        mul   ya
13c3: d5 3f 01  mov   $013f+x,a
13c6: dd        mov   a,y
13c7: d5 4b 01  mov   $014b+x,a
13ca: eb 04     mov   y,$04
13cc: 4f f2     pcall $f2
13ce: d5 03 01  mov   $0103+x,a
13d1: e8 00     mov   a,#$00
13d3: d5 93 01  mov   $0193+x,a
13d6: d5 ab 01  mov   $01ab+x,a
13d9: d5 57 01  mov   $0157+x,a
13dc: d5 0f 01  mov   $010f+x,a
13df: 6f        ret

; vcmd f0
13e0: 4f f8     pcall $f8
13e2: d5 93 01  mov   $0193+x,a
13e5: 4f f2     pcall $f2
13e7: d5 9f 01  mov   $019f+x,a
13ea: 6f        ret

; vcmd e4
13eb: f8 5a     mov   x,$5a
13ed: e8 00     mov   a,#$00
13ef: d5 03 01  mov   $0103+x,a
13f2: 6f        ret

; vcmd f3
13f3: f8 5a     mov   x,$5a
13f5: e8 00     mov   a,#$00
13f7: d5 b7 01  mov   $01b7+x,a
13fa: d5 0f 01  mov   $010f+x,a
13fd: 6f        ret

; vcmd f1,f2
13fe: f8 5a     mov   x,$5a
1400: e8 f1     mov   a,#$f1
1402: d5 0f 01  mov   $010f+x,a
1405: fc        inc   y
1406: f7 0a     mov   a,($0a)+y
1408: d5 1b 01  mov   $011b+x,a
140b: fc        inc   y
140c: f7 0a     mov   a,($0a)+y
140e: d5 9f 01  mov   $019f+x,a
1411: fc        inc   y
1412: f7 0a     mov   a,($0a)+y
1414: d5 7b 01  mov   $017b+x,a
1417: 4f f2     pcall $f2
1419: d5 87 01  mov   $0187+x,a
141c: e8 00     mov   a,#$00
141e: d5 03 01  mov   $0103+x,a
1421: 6f        ret

; vcmd f9
1422: f8 5a     mov   x,$5a
1424: f4 28     mov   a,$28+x
1426: 10 4f     bpl   $1477
1428: e8 f9     mov   a,#$f9
142a: d5 0f 01  mov   $010f+x,a
142d: fc        inc   y
142e: f7 0a     mov   a,($0a)+y
1430: d5 1b 01  mov   $011b+x,a
1433: d5 60 21  mov   $2160+x,a
1436: fc        inc   y
1437: f7 0a     mov   a,($0a)+y
1439: d5 9f 01  mov   $019f+x,a
143c: d5 b7 01  mov   $01b7+x,a
143f: c4 07     mov   $07,a
1441: 4f f2     pcall $f2
1443: 28 7f     and   a,#$7f
1445: 60        clrc
1446: 95 21 21  adc   a,$2121+x
1449: 3f 8d 0e  call  $0e8d
144c: f5 bf 20  mov   a,$20bf+x
144f: c4 0f     mov   $0f,a
1451: f5 b3 20  mov   a,$20b3+x
1454: c4 0e     mov   $0e,a
1456: e4 0d     mov   a,$0d
1458: d5 27 01  mov   $0127+x,a
145b: fd        mov   y,a
145c: e4 0c     mov   a,$0c
145e: d5 33 01  mov   $0133+x,a
1461: f8 07     mov   x,$07
1463: 9a 0e     subw  ya,$0e
1465: 3f 52 1e  call  $1e52
1468: f8 5a     mov   x,$5a
146a: d5 3f 01  mov   $013f+x,a
146d: dd        mov   a,y
146e: d5 4b 01  mov   $014b+x,a
1471: e8 00     mov   a,#$00
1473: d5 03 01  mov   $0103+x,a
1476: 6f        ret

1477: fc        inc   y
1478: fc        inc   y
1479: 4f f2     pcall $f2
147b: 95 21 21  adc   a,$2121+x
147e: 3f 8d 0e  call  $0e8d
1481: f8 5a     mov   x,$5a
1483: e4 0c     mov   a,$0c
1485: f5 b3 20  mov   a,$20b3+x
1488: e4 0d     mov   a,$0d
148a: f5 bf 20  mov   a,$20bf+x
148d: e8 00     mov   a,#$00
148f: d5 03 01  mov   $0103+x,a
1492: 6f        ret

1493: f5 1b 01  mov   a,$011b+x
1496: d5 60 21  mov   $2160+x,a
1499: f5 9f 01  mov   a,$019f+x
149c: d5 b7 01  mov   $01b7+x,a
149f: f5 7b 01  mov   a,$017b+x
14a2: d5 3f 01  mov   $013f+x,a
14a5: f5 87 01  mov   a,$0187+x
14a8: d5 4b 01  mov   $014b+x,a
14ab: e8 00     mov   a,#$00
14ad: d5 03 01  mov   $0103+x,a
14b0: 6f        ret

; vcmd ef
14b1: cb 06     mov   $06,y
14b3: fc        inc   y
14b4: f7 0a     mov   a,($0a)+y
14b6: c4 0c     mov   $0c,a
14b8: fc        inc   y
14b9: f7 0a     mov   a,($0a)+y
14bb: c4 0d     mov   $0d,a
14bd: fc        inc   y
14be: f7 0a     mov   a,($0a)+y
14c0: 10 06     bpl   $14c8
14c2: 68 ff     cmp   a,#$ff
14c4: f0 2b     beq   $14f1
14c6: e8 00     mov   a,#$00
14c8: 2d        push  a
14c9: f8 5a     mov   x,$5a
14cb: f5 17 20  mov   a,$2017+x
14ce: 68 30     cmp   a,#$30
14d0: f0 29     beq   $14fb
14d2: fd        mov   y,a
14d3: 60        clrc
14d4: 88 0c     adc   a,#$0c
14d6: d5 17 20  mov   $2017+x,a
14d9: dd        mov   a,y
14da: 84 5a     adc   a,$5a
14dc: 5d        mov   x,a
14dd: e4 06     mov   a,$06
14df: 60        clrc
14e0: 84 0a     adc   a,$0a
14e2: d5 53 20  mov   $2053+x,a
14e5: e8 00     mov   a,#$00
14e7: 84 0b     adc   a,$0b
14e9: d5 83 20  mov   $2083+x,a
14ec: ae        pop   a
14ed: 9c        dec   a
14ee: d5 23 20  mov   $2023+x,a
14f1: 8f ff 03  mov   $03,#$ff
14f4: fa 0d 0b  mov   ($0b),($0d)
14f7: fa 0c 0a  mov   ($0a),($0c)
14fa: 6f        ret

14fb: e8 00     mov   a,#$00
14fd: c4 f7     mov   $f7,a
14ff: bc        inc   a
1500: 2f fb     bra   $14fd
; vcmd fd
1502: f8 5b     mov   x,$5b
1504: fc        inc   y
1505: f7 0a     mov   a,($0a)+y
1507: 68 ff     cmp   a,#$ff
1509: f0 29     beq   $1534
150b: 68 fe     cmp   a,#$fe
150d: f0 34     beq   $1543
150f: 68 fd     cmp   a,#$fd
1511: f0 36     beq   $1549
1513: 68 fc     cmp   a,#$fc
1515: f0 47     beq   $155e
1517: 6d        push  y
1518: 08 80     or    a,#$80
151a: 8d 06     mov   y,#$06
151c: cf        mul   ya
151d: c5 2a 15  mov   $152a,a
1520: cc 2b 15  mov   $152b,y
1523: cd 00     mov   x,#$00
1525: ee        pop   y
1526: fc        inc   y
1527: f7 0a     mov   a,($0a)+y
1529: d5 42 03  mov   $0342+x,a
152c: 3d        inc   x
152d: c8 06     cmp   x,#$06
152f: d0 f5     bne   $1526
1531: cb 03     mov   $03,y
1533: 6f        ret

1534: fc        inc   y
1535: f8 5a     mov   x,$5a
1537: fa 0a 0c  mov   ($0c),($0a)
153a: fa 0b 0d  mov   ($0d),($0b)
153d: 3f ff 0c  call  $0cff
1540: cb 03     mov   $03,y
1542: 6f        ret

1543: fc        inc   y
1544: f7 0a     mov   a,($0a)+y
1546: d5 04 ff  mov   $ff04+x,a
1549: fc        inc   y
154a: f7 0a     mov   a,($0a)+y
154c: d5 05 ff  mov   $ff05+x,a
154f: fc        inc   y
1550: f7 0a     mov   a,($0a)+y
1552: d5 06 ff  mov   $ff06+x,a
1555: fc        inc   y
1556: f7 0a     mov   a,($0a)+y
1558: d5 07 ff  mov   $ff07+x,a
155b: cb 03     mov   $03,y
155d: 6f        ret

155e: 4f f8     pcall $f8
1560: 60        clrc
1561: 95 cb 20  adc   a,$20cb+x
1564: d5 cb 20  mov   $20cb+x,a
1567: 4f f2     pcall $f2
1569: 95 d7 20  adc   a,$20d7+x
156c: d5 d7 20  mov   $20d7+x,a
156f: 6f        ret

1570: 6f        ret

; vcmd f5
1571: fc        inc   y
1572: f7 0a     mov   a,($0a)+y
1574: 2d        push  a
1575: fc        inc   y
1576: f7 0a     mov   a,($0a)+y
1578: c4 46     mov   $46,a
157a: fc        inc   y
157b: f7 0a     mov   a,($0a)+y
157d: c4 47     mov   $47,a
157f: cb 03     mov   $03,y
1581: ae        pop   a
1582: 65 fa 1f  cmp   a,$1ffa
1585: f0 0b     beq   $1592
1587: c5 fa 1f  mov   $1ffa,a
158a: e4 b7     mov   a,$b7
158c: d0 04     bne   $1592
158e: bc        inc   a
158f: c5 f9 1f  mov   $1ff9,a
1592: 6f        ret

; vcmd f7
1593: fc        inc   y
1594: f7 0a     mov   a,($0a)+y
1596: 30 58     bmi   $15f0
1598: c5 fc 1f  mov   $1ffc,a
159b: fc        inc   y
159c: f7 0a     mov   a,($0a)+y
159e: c5 fd 1f  mov   $1ffd,a
15a1: fc        inc   y
15a2: f7 0a     mov   a,($0a)+y
15a4: c5 fe 1f  mov   $1ffe,a
15a7: 68 04     cmp   a,#$04
15a9: d0 0d     bne   $15b8
15ab: cd 00     mov   x,#$00
15ad: fc        inc   y
15ae: f7 0a     mov   a,($0a)+y
15b0: d5 7e 16  mov   $167e+x,a
15b3: 3d        inc   x
15b4: c8 08     cmp   x,#$08
15b6: d0 f5     bne   $15ad
15b8: cb 03     mov   $03,y
15ba: 3f fb 15  call  $15fb
15bd: e5 fc 1f  mov   a,$1ffc
15c0: 68 09     cmp   a,#$09
15c2: 90 02     bcc   $15c6
15c4: e8 08     mov   a,#$08
15c6: 3f 3f 16  call  $163f
15c9: e5 fd 1f  mov   a,$1ffd
15cc: c4 4f     mov   $4f,a
15ce: e5 fe 1f  mov   a,$1ffe
15d1: 9f        xcn   a
15d2: 5c        lsr   a
15d3: 5d        mov   x,a
15d4: 8f 0f 04  mov   $04,#$0f
15d7: f5 5e 16  mov   a,$165e+x
15da: fa 04 f2  mov   ($f2),($04)
15dd: c4 f3     mov   $f3,a
15df: 3d        inc   x
15e0: 60        clrc
15e1: 98 10 04  adc   $04,#$10
15e4: 10 f1     bpl   $15d7
15e6: 38 df 4e  and   $4e,#$df
15e9: 8f 6c f2  mov   $f2,#$6c
15ec: fa 4e f3  mov   ($f3),($4e)
15ef: 6f        ret

15f0: fc        inc   y
15f1: cb 03     mov   $03,y
15f3: f7 0a     mov   a,($0a)+y
15f5: 8f 0d f2  mov   $f2,#$0d
15f8: c4 f3     mov   $f3,a
15fa: 6f        ret

15fb: e8 00     mov   a,#$00
15fd: 8f 4d f2  mov   $f2,#$4d
1600: c4 f3     mov   $f3,a
1602: 8f 2c f2  mov   $f2,#$2c
1605: c4 f3     mov   $f3,a
1607: 8f 3c f2  mov   $f2,#$3c
160a: c4 f3     mov   $f3,a
160c: 8f 7d f2  mov   $f2,#$7d
160f: c4 f3     mov   $f3,a
1611: 8f 0d f2  mov   $f2,#$0d
1614: c4 f3     mov   $f3,a
1616: c4 53     mov   $53,a
1618: 18 20 4e  or    $4e,#$20
161b: 8f 6c f2  mov   $f2,#$6c
161e: fa 4e f3  mov   ($f3),($4e)
1621: 8f 6d f2  mov   $f2,#$6d
1624: 8f fe f3  mov   $f3,#$fe
1627: 6f        ret

; vcmd f8,fc
1628: f8 5a     mov   x,$5a
162a: fc        inc   y
162b: cb 03     mov   $03,y
162d: f7 0a     mov   a,($0a)+y
162f: d0 07     bne   $1638
1631: f4 28     mov   a,$28+x
1633: 08 10     or    a,#$10
1635: d4 28     mov   $28+x,a
1637: 6f        ret

1638: f4 28     mov   a,$28+x
163a: 28 ef     and   a,#$ef
163c: d4 28     mov   $28+x,a
163e: 6f        ret

163f: 5d        mov   x,a
1640: 60        clrc
1641: 88 03     adc   a,#$03
1643: 1c        asl   a
1644: c4 b7     mov   $b7,a
1646: 7d        mov   a,x
1647: c4 50     mov   $50,a
1649: 8f 7d f2  mov   $f2,#$7d
164c: c4 f3     mov   $f3,a
164e: 1c        asl   a
164f: 1c        asl   a
1650: 1c        asl   a
1651: 48 ff     eor   a,#$ff
1653: 80        setc
1654: 88 ff     adc   a,#$ff
1656: c4 51     mov   $51,a
1658: 8f 6d f2  mov   $f2,#$6d
165b: c4 f3     mov   $f3,a
165d: 6f        ret

165e: db $7f,$00,$00,$00,$00,$00,$00,$00
1666: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
166e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1676: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

167e: dw $0c44
1680: dw $0c46
1682: dw $0c75
1684: dw $0cc4

1686: 8d 01     mov   y,#$01
1688: f7 40     mov   a,($40)+y
168a: f0 15     beq   $16a1
168c: c4 0b     mov   $0b,a
168e: dc        dec   y
168f: f7 40     mov   a,($40)+y
1691: c4 0a     mov   $0a,a
1693: dd        mov   a,y
1694: 60        clrc
1695: 88 02     adc   a,#$02
1697: 84 40     adc   a,$40
1699: c4 40     mov   $40,a
169b: 90 02     bcc   $169f
169d: ab 41     inc   $41
169f: 60        clrc
16a0: 6f        ret

16a1: dc        dec   y
16a2: f7 40     mov   a,($40)+y
16a4: f0 28     beq   $16ce
16a6: e9 2e 21  mov   x,$212e
16a9: d0 05     bne   $16b0
16ab: c5 2e 21  mov   $212e,a
16ae: 2f 0c     bra   $16bc
16b0: e5 2e 21  mov   a,$212e
16b3: 68 ff     cmp   a,#$ff
16b5: f0 05     beq   $16bc
16b7: 8c 2e 21  dec   $212e
16ba: f0 0e     beq   $16ca
16bc: 8d 02     mov   y,#$02
16be: f7 40     mov   a,($40)+y
16c0: 5d        mov   x,a
16c1: fc        inc   y
16c2: f7 40     mov   a,($40)+y
16c4: c4 41     mov   $41,a
16c6: d8 40     mov   $40,x
16c8: 2f bc     bra   $1686
16ca: 8d 05     mov   y,#$05
16cc: 2f ba     bra   $1688
16ce: c4 41     mov   $41,a
16d0: 80        setc
16d1: 6f        ret

16d2: 8d 00     mov   y,#$00
16d4: cd 00     mov   x,#$00
16d6: d8 5f     mov   $5f,x
16d8: 4b 5f     lsr   $5f
16da: f4 28     mov   a,$28+x
16dc: 28 70     and   a,#$70
16de: d4 28     mov   $28+x,a
16e0: e8 00     mov   a,#$00
16e2: d5 30 21  mov   $2130+x,a
16e5: d4 34     mov   $34+x,a
16e7: f7 0a     mov   a,($0a)+y
16e9: d5 ff 1f  mov   $1fff+x,a
16ec: fc        inc   y
16ed: f7 0a     mov   a,($0a)+y
16ef: d5 0b 20  mov   $200b+x,a
16f2: f0 07     beq   $16fb
16f4: 7d        mov   a,x
16f5: 08 c0     or    a,#$c0
16f7: d4 34     mov   $34+x,a
16f9: e2 5f     set7  $5f
16fb: fc        inc   y
16fc: 3d        inc   x
16fd: c8 08     cmp   x,#$08
16ff: d0 d7     bne   $16d8
1701: 6f        ret

1702: 3f fb 15  call  $15fb
1705: e4 5d     mov   a,$5d
1707: 10 0c     bpl   $1715
1709: 1c        asl   a
170a: 30 09     bmi   $1715
170c: 8f c0 5d  mov   $5d,#$c0
170f: 8f 00 5f  mov   $5f,#$00
1712: 3f 7f 17  call  $177f
1715: 6f        ret

1716: 8d 00     mov   y,#$00
1718: cd 07     mov   x,#$07
171a: dd        mov   a,y
171b: d4 28     mov   $28+x,a
171d: d4 34     mov   $34+x,a
171f: 3f b8 19  call  $19b8
1722: d5 13 21  mov   $2113+x,a
1725: d5 3c 21  mov   $213c+x,a
1728: d5 db 21  mov   $21db+x,a
172b: d4 6f     mov   $6f+x,a
172d: bc        inc   a
172e: d4 63     mov   $63+x,a
1730: e8 80     mov   a,#$80
1732: d4 87     mov   $87+x,a
1734: e8 00     mov   a,#$00
1736: d5 9c ff  mov   $ff9c+x,a
1739: e8 0a     mov   a,#$0a
173b: d5 60 ff  mov   $ff60+x,a
173e: 1d        dec   x
173f: 10 d9     bpl   $171a
1741: e8 00     mov   a,#$00
1743: 5d        mov   x,a
1744: d5 f9 1f  mov   $1ff9+x,a
1747: 3d        inc   x
1748: fe fa     dbnz  y,$1744
174a: 8d 40     mov   y,#$40
174c: d6 ff fe  mov   $feff+y,a
174f: fe fb     dbnz  y,$174c
1751: c4 52     mov   $52,a
1753: da 46     movw  $46,ya
1755: c5 2e 21  mov   $212e,a
1758: c5 79 21  mov   $2179,a
175b: c5 e9 1f  mov   $1fe9,a
175e: c5 ef 1f  mov   $1fef,a
1761: c5 78 21  mov   $2178,a
1764: c5 1f 21  mov   $211f,a
1767: c4 b8     mov   $b8,a
1769: c4 c6     mov   $c6,a
176b: c4 55     mov   $55,a
176d: c4 53     mov   $53,a
176f: 9c        dec   a
1770: c5 fb 1f  mov   $1ffb,a
1773: e8 00     mov   a,#$00
1775: c5 f4 1f  mov   $1ff4,a
1778: c5 f0 1f  mov   $1ff0,a
177b: c5 f1 1f  mov   $1ff1,a
177e: 6f        ret

177f: cd 07     mov   x,#$07
1781: 8d 00     mov   y,#$00
1783: cb 00     mov   $00,y
1785: 0b 00     asl   $00
1787: f4 18     mov   a,$18+x
1789: 9f        xcn   a
178a: 30 0a     bmi   $1796
178c: 02 00     set0  $00
178e: e4 5f     mov   a,$5f
1790: d0 04     bne   $1796
1792: db 18     mov   $18+x,y
1794: db 20     mov   $20+x,y
1796: db 28     mov   $28+x,y
1798: db 34     mov   $34+x,y
179a: 1d        dec   x
179b: 10 e8     bpl   $1785
179d: e4 00     mov   a,$00
179f: 8f 5c f2  mov   $f2,#$5c
17a2: c4 f3     mov   $f3,a
17a4: 6f        ret

17a5: f8 00     mov   x,$00
17a7: f4 61     mov   a,$61+x
17a9: f0 44     beq   $17ef
17ab: e8 00     mov   a,#$00
17ad: d4 61     mov   $61+x,a
17af: c4 07     mov   $07,a
17b1: e4 61     mov   a,$61
17b3: 04 62     or    a,$62
17b5: c4 60     mov   $60,a
17b7: 8f 04 08  mov   $08,#$04
17ba: cd 08     mov   x,#$08
17bc: e4 03     mov   a,$03
17be: c5 c7 17  mov   $17c7,a
17c1: f4 34     mov   a,$34+x
17c3: f0 20     beq   $17e5
17c5: 28 04     and   a,#$04
17c7: f0 1c     beq   $17e5
17c9: f4 28     mov   a,$28+x
17cb: 10 12     bpl   $17df
17cd: 28 07     and   a,#$07
17cf: fd        mov   y,a
17d0: e8 00     mov   a,#$00
17d2: d6 18 00  mov   $0018+y,a
17d5: d6 20 00  mov   $0020+y,a
17d8: f6 a3 1e  mov   a,$1ea3+y
17db: 04 07     or    a,$07
17dd: c4 07     mov   $07,a
17df: e8 00     mov   a,#$00
17e1: d4 34     mov   $34+x,a
17e3: d4 28     mov   $28+x,a
17e5: 3d        inc   x
17e6: 6e 08 d8  dbnz  $08,$17c1
17e9: 8f 5c f2  mov   $f2,#$5c
17ec: fa 07 f3  mov   ($f3),($07)
17ef: e4 61     mov   a,$61
17f1: 04 61     or    a,$61
17f3: d0 02     bne   $17f7
17f5: c4 5e     mov   $5e,a
17f7: 6f        ret

17f8: cd 07     mov   x,#$07
17fa: 8d 00     mov   y,#$00
17fc: cb 07     mov   $07,y
17fe: 0b 07     asl   $07
1800: f4 18     mov   a,$18+x
1802: 9f        xcn   a
1803: 10 06     bpl   $180b
1805: 02 07     set0  $07
1807: db 18     mov   $18+x,y
1809: db 20     mov   $20+x,y
180b: 1d        dec   x
180c: 10 f0     bpl   $17fe
180e: e8 00     mov   a,#$00
1810: fd        mov   y,a
1811: da 3c     movw  $3c,ya
1813: da 3e     movw  $3e,ya
1815: da 30     movw  $30,ya
1817: da 32     movw  $32,ya
1819: da 61     movw  $61,ya
181b: c4 60     mov   $60,a
181d: c4 5e     mov   $5e,a
181f: c4 de     mov   $de,a
1821: e4 07     mov   a,$07
1823: 8f 5c f2  mov   $f2,#$5c
1826: c4 f3     mov   $f3,a
1828: 6f        ret

1829: e8 00     mov   a,#$00
182b: c4 56     mov   $56,a
182d: c4 54     mov   $54,a
182f: c4 06     mov   $06,a
1831: e4 00     mov   a,$00
1833: 5d        mov   x,a
1834: 1c        asl   a
1835: 1c        asl   a
1836: 08 c8     or    a,#$c8
1838: c4 04     mov   $04,a
183a: e4 01     mov   a,$01
183c: 10 2a     bpl   $1868
183e: 80        setc
183f: a8 90     sbc   a,#$90
1841: 8d 00     mov   y,#$00
1843: f8 00     mov   x,$00
1845: f0 0c     beq   $1853
1847: c4 0a     mov   $0a,a
1849: 80        setc
184a: a8 40     sbc   a,#$40
184c: 10 13     bpl   $1861
184e: 8f 23 0b  mov   $0b,#$23
1851: 2f 2d     bra   $1880
1853: 68 30     cmp   a,#$30
1855: 90 0a     bcc   $1861
1857: 80        setc
1858: a8 30     sbc   a,#$30
185a: c4 0a     mov   $0a,a
185c: 8f 23 0b  mov   $0b,#$23
185f: 2f 1f     bra   $1880
1861: c4 0a     mov   $0a,a
1863: 8f 22 0b  mov   $0b,#$22
1866: 2f 18     bra   $1880
1868: 9c        dec   a
1869: 1c        asl   a
186a: fd        mov   y,a
186b: e5 fc 05  mov   a,$05fc
186e: e9 fd 05  mov   x,$05fd
1871: c4 0c     mov   $0c,a
1873: d8 0d     mov   $0d,x
1875: f7 0c     mov   a,($0c)+y
1877: c5 0a 00  mov   $000a,a
187a: fc        inc   y
187b: f7 0c     mov   a,($0c)+y
187d: c5 0b 00  mov   $000b,a
1880: 8f 04 05  mov   $05,#$04
1883: cd 08     mov   x,#$08
1885: 8d 00     mov   y,#$00
1887: f4 34     mov   a,$34+x
1889: d0 37     bne   $18c2
188b: 3f b8 19  call  $19b8
188e: d5 13 21  mov   $2113+x,a
1891: d4 6f     mov   $6f+x,a
1893: bc        inc   a
1894: d4 63     mov   $63+x,a
1896: e4 00     mov   a,$00
1898: d5 3c 21  mov   $213c+x,a
189b: e8 80     mov   a,#$80
189d: d4 87     mov   $87+x,a
189f: e8 ff     mov   a,#$ff
18a1: d5 9c ff  mov   $ff9c+x,a
18a4: e8 0a     mov   a,#$0a
18a6: d5 60 ff  mov   $ff60+x,a
18a9: f7 0a     mov   a,($0a)+y
18ab: d5 ff 1f  mov   $1fff+x,a
18ae: fc        inc   y
18af: f7 0a     mov   a,($0a)+y
18b1: f0 15     beq   $18c8
18b3: fc        inc   y
18b4: d5 0b 20  mov   $200b+x,a
18b7: f5 9b 1e  mov   a,$1e9b+x
18ba: 04 06     or    a,$06
18bc: c4 06     mov   $06,a
18be: e4 04     mov   a,$04
18c0: d4 34     mov   $34+x,a
18c2: ab 04     inc   $04
18c4: 3d        inc   x
18c5: 6e 05 bf  dbnz  $05,$1887
18c8: e4 06     mov   a,$06
18ca: f8 00     mov   x,$00
18cc: d4 61     mov   $61+x,a
18ce: 04 60     or    a,$60
18d0: c4 60     mov   $60,a
18d2: 6f        ret

18d3: 8f 6c f2  mov   $f2,#$6c
18d6: 8f e0 f3  mov   $f3,#$e0
18d9: 8f 30 f1  mov   $f1,#$30
18dc: e8 00     mov   a,#$00
18de: c5 00 ff  mov   $ff00,a
18e1: cd e7     mov   x,#$e7
18e3: c6        mov   (x),a
18e4: d5 00 ff  mov   $ff00+x,a
18e7: 1d        dec   x
18e8: d0 f9     bne   $18e3
18ea: cd 08     mov   x,#$08
18ec: 8d 08     mov   y,#$08
18ee: c4 f2     mov   $f2,a
18f0: 8f 00 f3  mov   $f3,#$00
18f3: ab f2     inc   $f2
18f5: fe f9     dbnz  y,$18f0
18f7: 60        clrc
18f8: 88 10     adc   a,#$10
18fa: 1d        dec   x
18fb: d0 ef     bne   $18ec
18fd: f5 d8 19  mov   a,$19d8+x
1900: 30 0b     bmi   $190d
1902: c4 f2     mov   $f2,a
1904: f5 d9 19  mov   a,$19d9+x
1907: c4 f3     mov   $f3,a
1909: 3d        inc   x
190a: 3d        inc   x
190b: 2f f0     bra   $18fd
190d: 8d 90     mov   y,#$90
190f: cd 00     mov   x,#$00
1911: 40        setp
1912: d9 ff     mov   $ff+y,x
1914: fe fc     dbnz  y,$1912
1916: 20        clrp
1917: dd        mov   a,y
1918: 8f e1 0a  mov   $0a,#$e1
191b: 8f 1f 0b  mov   $0b,#$1f
191e: 8f 0e 0c  mov   $0c,#$0e
1921: 8f 02 0d  mov   $0d,#$02
1924: d7 0a     mov   ($0a)+y,a
1926: 3a 0a     incw  $0a
1928: 1a 0c     decw  $0c
192a: d0 f8     bne   $1924
192c: e8 00     mov   a,#$00
192e: 8d ff     mov   y,#$ff
1930: c4 4c     mov   $4c,a
1932: c4 4d     mov   $4d,a
1934: d6 01 ee  mov   $ee01+y,a
1937: fe fb     dbnz  y,$1934
1939: 8d 0e     mov   y,#$0e
193b: f6 f0 19  mov   a,$19f0+y
193e: d6 ef ff  mov   $ffef+y,a
1941: fe f8     dbnz  y,$193b
1943: e8 ff     mov   a,#$ff
1945: c4 49     mov   $49,a
1947: e8 ff     mov   a,#$ff
1949: c5 f5 1f  mov   $1ff5,a
194c: 8f 0d bf  mov   $bf,#$0d
194f: 8f fb c0  mov   $c0,#$fb
1952: e8 20     mov   a,#$20
1954: c4 4e     mov   $4e,a
1956: 8f 6c f2  mov   $f2,#$6c
1959: c4 f3     mov   $f3,a
195b: e8 01     mov   a,#$01
195d: 8f 50 fa  mov   $fa,#$50
1960: c4 4a     mov   $4a,a
1962: c4 f1     mov   $f1,a
1964: c4 10     mov   $10,a
1966: e8 00     mov   a,#$00
1968: 8d 24     mov   y,#$24
196a: c5 f8 05  mov   $05f8,a
196d: cc f9 05  mov   $05f9,y
1970: e8 18     mov   a,#$18
1972: 8d 24     mov   y,#$24
1974: c5 fa 05  mov   $05fa,a
1977: cc fb 05  mov   $05fb,y
197a: e8 00     mov   a,#$00
197c: 8d 24     mov   y,#$24
197e: c5 fc 05  mov   $05fc,a
1981: cc fd 05  mov   $05fd,y
1984: 6f        ret

1985: 8f 08 00  mov   $00,#$08
1988: e5 f8 05  mov   a,$05f8
198b: c4 0a     mov   $0a,a
198d: e5 f9 05  mov   a,$05f9
1990: c4 0b     mov   $0b,a
1992: 8f b3 0c  mov   $0c,#$b3
1995: 8f 1e 0d  mov   $0d,#$1e
1998: f7 0a     mov   a,($0a)+y
199a: d6 7b 21  mov   $217b+y,a
199d: f7 0c     mov   a,($0c)+y
199f: d6 83 21  mov   $2183+y,a
19a2: fc        inc   y
19a3: 6e 00 f2  dbnz  $00,$1998
19a6: 8f 10 00  mov   $00,#$10
19a9: f7 0a     mov   a,($0a)+y
19ab: d6 83 21  mov   $2183+y,a
19ae: f7 0c     mov   a,($0c)+y
19b0: d6 93 21  mov   $2193+y,a
19b3: fc        inc   y
19b4: 6e 00 f2  dbnz  $00,$19a9
19b7: 6f        ret

19b8: d4 ab     mov   $ab+x,a
19ba: d4 cf     mov   $cf+x,a
19bc: d5 48 21  mov   $2148+x,a
19bf: d5 54 21  mov   $2154+x,a
19c2: d5 6c ff  mov   $ff6c+x,a
19c5: d5 21 21  mov   $2121+x,a
19c8: d5 03 01  mov   $0103+x,a
19cb: d5 23 20  mov   $2023+x,a
19ce: d5 17 20  mov   $2017+x,a
19d1: d5 b7 01  mov   $01b7+x,a
19d4: d5 0f 01  mov   $010f+x,a
19d7: 6f        ret

19d8: db $0c,$55
19da: db $1c,$55
19dc: db $5d,$02
19de: db $2d,$00
19e0: db $3d,$00
19e2: db $4c,$00
19e4: db $5c,$00
19e6: db $2c,$00
19e8: db $3c,$00
19ea: db $0d,$00
19ec: db $7d,$00
19ee: db $4d,$00

19f0: db $ff

19f1: f8 5a     mov   x,$5a
19f3: fc        inc   y
19f4: cb 03     mov   $03,y
19f6: f7 0a     mov   a,($0a)+y
19f8: 6f        ret

19f9: f8 5a     mov   x,$5a
19fb: fc        inc   y
19fc: f7 0a     mov   a,($0a)+y
19fe: 6f        ret

19ff: c5 21 1a  mov   $1a21,a
1a02: e8 00     mov   a,#$00
1a04: 8f 5c f2  mov   $f2,#$5c
1a07: c4 f3     mov   $f3,a
1a09: c4 03     mov   $03,a
1a0b: c4 06     mov   $06,a
1a0d: c4 07     mov   $07,a
1a0f: c4 08     mov   $08,a
1a11: 8f 08 04  mov   $04,#$08
1a14: f8 03     mov   x,$03
1a16: f4 20     mov   a,$20+x
1a18: f0 4e     beq   $1a68
1a1a: c4 05     mov   $05,a
1a1c: f4 18     mov   a,$18+x
1a1e: fd        mov   y,a
1a1f: 28 08     and   a,#$08
1a21: 30 45     bmi   $1a68
1a23: e8 00     mov   a,#$00
1a25: d4 20     mov   $20+x,a
1a27: dd        mov   a,y
1a28: 28 0f     and   a,#$0f
1a2a: c4 09     mov   $09,a
1a2c: 8d 08     mov   y,#$08
1a2e: e4 05     mov   a,$05
1a30: 10 0b     bpl   $1a3d
1a32: f8 03     mov   x,$03
1a34: f5 a3 1e  mov   a,$1ea3+x
1a37: 04 06     or    a,$06
1a39: c4 06     mov   $06,a
1a3b: 2f 0c     bra   $1a49
1a3d: 68 01     cmp   a,#$01
1a3f: f0 0d     beq   $1a4e
1a41: f8 09     mov   x,$09
1a43: f4 cf     mov   a,$cf+x
1a45: f0 02     beq   $1a49
1a47: 8d 04     mov   y,#$04
1a49: 3f b0 1a  call  $1ab0
1a4c: 2f 1a     bra   $1a68
1a4e: e4 09     mov   a,$09
1a50: 9f        xcn   a
1a51: 5c        lsr   a
1a52: 5d        mov   x,a
1a53: e4 03     mov   a,$03
1a55: 9f        xcn   a
1a56: 60        clrc
1a57: 88 07     adc   a,#$07
1a59: fd        mov   y,a
1a5a: f5 07 ff  mov   a,$ff07+x
1a5d: cb f2     mov   $f2,y
1a5f: c4 f3     mov   $f3,a
1a61: dc        dec   y
1a62: dc        dec   y
1a63: cb f2     mov   $f2,y
1a65: 8f 00 f3  mov   $f3,#$00
1a68: ab 03     inc   $03
1a6a: 6e 04 a7  dbnz  $04,$1a14
1a6d: e4 06     mov   a,$06
1a6f: f0 22     beq   $1a93
1a71: e8 a0     mov   a,#$a0
1a73: 3f 94 1a  call  $1a94
1a76: fa 07 4c  mov   ($4c),($07)
1a79: 8f 4d f2  mov   $f2,#$4d
1a7c: fa 07 f3  mov   ($f3),($07)
1a7f: e8 c0     mov   a,#$c0
1a81: 3f 94 1a  call  $1a94
1a84: fa 07 4d  mov   ($4d),($07)
1a87: 8f 3d f2  mov   $f2,#$3d
1a8a: fa 07 f3  mov   ($f3),($07)
1a8d: 8f 4c f2  mov   $f2,#$4c
1a90: fa 06 f3  mov   ($f3),($06)
1a93: 6f        ret

1a94: c5 a1 1a  mov   $1aa1,a
1a97: c5 a5 1a  mov   $1aa5,a
1a9a: cd 00     mov   x,#$00
1a9c: d8 07     mov   $07,x
1a9e: 4b 07     lsr   $07
1aa0: e8 c0     mov   a,#$c0
1aa2: 34 18     and   a,$18+x
1aa4: 68 c0     cmp   a,#$c0
1aa6: d0 02     bne   $1aaa
1aa8: e2 07     set7  $07
1aaa: 3d        inc   x
1aab: c8 08     cmp   x,#$08
1aad: d0 ef     bne   $1a9e
1aaf: 6f        ret

1ab0: 6d        push  y
1ab1: e4 09     mov   a,$09
1ab3: 9f        xcn   a
1ab4: 5c        lsr   a
1ab5: 5d        mov   x,a
1ab6: e4 03     mov   a,$03
1ab8: 9f        xcn   a
1ab9: fd        mov   y,a
1aba: cb f2     mov   $f2,y
1abc: ee        pop   y
1abd: f5 00 ff  mov   a,$ff00+x
1ac0: c4 f3     mov   $f3,a
1ac2: 3d        inc   x
1ac3: ab f2     inc   $f2
1ac5: fe f6     dbnz  y,$1abd
1ac7: 6f        ret

1ac8: f8 03     mov   x,$03
1aca: f5 a3 1e  mov   a,$1ea3+x
1acd: 04 06     or    a,$06
1acf: c4 06     mov   $06,a
1ad1: 6f        ret

1ad2: e8 00     mov   a,#$00
1ad4: c5 f9 1f  mov   $1ff9,a
1ad7: e5 fa 1f  mov   a,$1ffa
1ada: 44 46     eor   a,$46
1adc: 8f 2c f2  mov   $f2,#$2c
1adf: c4 f3     mov   $f3,a
1ae1: e5 fa 1f  mov   a,$1ffa
1ae4: 44 47     eor   a,$47
1ae6: 8f 3c f2  mov   $f2,#$3c
1ae9: c4 f3     mov   $f3,a
1aeb: 6f        ret

1aec: f8 57     mov   x,$57
1aee: f4 5d     mov   a,$5d+x
1af0: f0 1c     beq   $1b0e
1af2: 7d        mov   a,x
1af3: d0 13     bne   $1b08
1af5: e5 f6 1f  mov   a,$1ff6
1af8: f0 03     beq   $1afd
1afa: 3f 0f 1b  call  $1b0f
1afd: e5 e9 1f  mov   a,$1fe9
1b00: f0 03     beq   $1b05
1b02: 3f 39 1b  call  $1b39
1b05: 3f 5d 1b  call  $1b5d
1b08: 3f 8f 1b  call  $1b8f
1b0b: 3f 09 1c  call  $1c09
1b0e: 6f        ret

1b0f: fd        mov   y,a
1b10: da ab     movw  $ab,ya
1b12: da ad     movw  $ad,ya
1b14: da af     movw  $af,ya
1b16: da b1     movw  $b1,ya
1b18: 9c        dec   a
1b19: c5 f6 1f  mov   $1ff6,a
1b1c: f0 14     beq   $1b32
1b1e: e5 f7 1f  mov   a,$1ff7
1b21: 60        clrc
1b22: 85 f2 1f  adc   a,$1ff2
1b25: c5 f2 1f  mov   $1ff2,a
1b28: e5 f8 1f  mov   a,$1ff8
1b2b: 85 f4 1f  adc   a,$1ff4
1b2e: c5 f4 1f  mov   $1ff4,a
1b31: 6f        ret

1b32: e5 f1 1f  mov   a,$1ff1
1b35: c5 f4 1f  mov   $1ff4,a
1b38: 6f        ret

1b39: c5 ef 1f  mov   $1fef,a
1b3c: 9c        dec   a
1b3d: c5 e9 1f  mov   $1fe9,a
1b40: f0 14     beq   $1b56
1b42: e5 ed 1f  mov   a,$1fed
1b45: 60        clrc
1b46: 85 eb 1f  adc   a,$1feb
1b49: c5 eb 1f  mov   $1feb,a
1b4c: e5 ee 1f  mov   a,$1fee
1b4f: 85 ec 1f  adc   a,$1fec
1b52: c5 ec 1f  mov   $1fec,a
1b55: 6f        ret

1b56: e5 ea 1f  mov   a,$1fea
1b59: c5 ec 1f  mov   $1fec,a
1b5c: 6f        ret

1b5d: fa 5c 03  mov   ($03),($5c)
1b60: f8 58     mov   x,$58
1b62: f5 6c ff  mov   a,$ff6c+x
1b65: f0 23     beq   $1b8a
1b67: d4 ab     mov   $ab+x,a
1b69: 9c        dec   a
1b6a: d5 6c ff  mov   $ff6c+x,a
1b6d: f0 15     beq   $1b84
1b6f: f5 a8 ff  mov   a,$ffa8+x
1b72: 60        clrc
1b73: 95 90 ff  adc   a,$ff90+x
1b76: d5 90 ff  mov   $ff90+x,a
1b79: f5 b4 ff  mov   a,$ffb4+x
1b7c: 95 9c ff  adc   a,$ff9c+x
1b7f: d5 9c ff  mov   $ff9c+x,a
1b82: 2f 06     bra   $1b8a
1b84: f5 78 ff  mov   a,$ff78+x
1b87: d5 9c ff  mov   $ff9c+x,a
1b8a: 3d        inc   x
1b8b: 6e 03 d4  dbnz  $03,$1b62
1b8e: 6f        ret

1b8f: fa 5c 03  mov   ($03),($5c)
1b92: fa 5b 04  mov   ($04),($5b)
1b95: f8 58     mov   x,$58
1b97: f4 28     mov   a,$28+x
1b99: 10 65     bpl   $1c00
1b9b: f5 b7 01  mov   a,$01b7+x
1b9e: f0 60     beq   $1c00
1ba0: f5 60 21  mov   a,$2160+x
1ba3: f0 06     beq   $1bab
1ba5: 9c        dec   a
1ba6: d5 60 21  mov   $2160+x,a
1ba9: 2f 55     bra   $1c00
1bab: eb 04     mov   y,$04
1bad: f5 b7 01  mov   a,$01b7+x
1bb0: 68 ff     cmp   a,#$ff
1bb2: f0 06     beq   $1bba
1bb4: 9c        dec   a
1bb5: d5 b7 01  mov   $01b7+x,a
1bb8: f0 1b     beq   $1bd5
1bba: f5 3f 01  mov   a,$013f+x
1bbd: 60        clrc
1bbe: 95 b3 20  adc   a,$20b3+x
1bc1: d5 b3 20  mov   $20b3+x,a
1bc4: d6 02 ff  mov   $ff02+y,a
1bc7: f5 4b 01  mov   a,$014b+x
1bca: 95 bf 20  adc   a,$20bf+x
1bcd: d5 bf 20  mov   $20bf+x,a
1bd0: d6 03 ff  mov   $ff03+y,a
1bd3: 2f 1e     bra   $1bf3
1bd5: f5 0f 01  mov   a,$010f+x
1bd8: 68 f1     cmp   a,#$f1
1bda: f0 17     beq   $1bf3
1bdc: f5 33 01  mov   a,$0133+x
1bdf: d5 b3 20  mov   $20b3+x,a
1be2: d6 02 ff  mov   $ff02+y,a
1be5: f5 27 01  mov   a,$0127+x
1be8: d5 bf 20  mov   $20bf+x,a
1beb: d6 03 ff  mov   $ff03+y,a
1bee: e8 00     mov   a,#$00
1bf0: d5 0f 01  mov   $010f+x,a
1bf3: f4 28     mov   a,$28+x
1bf5: 28 07     and   a,#$07
1bf7: fd        mov   y,a
1bf8: f6 20 00  mov   a,$0020+y
1bfb: 08 7f     or    a,#$7f
1bfd: d6 20 00  mov   $0020+y,a
1c00: 60        clrc
1c01: 98 08 04  adc   $04,#$08
1c04: 3d        inc   x
1c05: 6e 03 8f  dbnz  $03,$1b97
1c08: 6f        ret

1c09: fa 5b 08  mov   ($08),($5b)
1c0c: fa 5c 07  mov   ($07),($5c)
1c0f: f8 57     mov   x,$57
1c11: f5 f4 1f  mov   a,$1ff4+x
1c14: c4 06     mov   $06,a
1c16: f8 58     mov   x,$58
1c18: f4 34     mov   a,$34+x
1c1a: f0 59     beq   $1c75
1c1c: f4 ab     mov   a,$ab+x
1c1e: f0 55     beq   $1c75
1c20: e8 00     mov   a,#$00
1c22: d4 ab     mov   $ab+x,a
1c24: f5 84 ff  mov   a,$ff84+x
1c27: fd        mov   y,a
1c28: f5 9c ff  mov   a,$ff9c+x
1c2b: cf        mul   ya
1c2c: e4 06     mov   a,$06
1c2e: cf        mul   ya
1c2f: cb 04     mov   $04,y
1c31: f5 3c 21  mov   a,$213c+x
1c34: f0 14     beq   $1c4a
1c36: e4 48     mov   a,$48
1c38: 60        clrc
1c39: 95 60 ff  adc   a,$ff60+x
1c3c: 30 08     bmi   $1c46
1c3e: 68 15     cmp   a,#$15
1c40: 90 0b     bcc   $1c4d
1c42: e8 14     mov   a,#$14
1c44: 2f 07     bra   $1c4d
1c46: e8 00     mov   a,#$00
1c48: 2f 03     bra   $1c4d
1c4a: f5 60 ff  mov   a,$ff60+x
1c4d: fd        mov   y,a
1c4e: f6 e0 1e  mov   a,$1ee0+y
1c51: c4 05     mov   $05,a
1c53: f6 cb 1e  mov   a,$1ecb+y
1c56: eb 04     mov   y,$04
1c58: cf        mul   ya
1c59: db 93     mov   $93+x,y
1c5b: ba 04     movw  ya,$04
1c5d: cf        mul   ya
1c5e: db 9f     mov   $9f+x,y
1c60: dd        mov   a,y
1c61: eb 08     mov   y,$08
1c63: 3f 7e 1c  call  $1c7e
1c66: f4 28     mov   a,$28+x
1c68: 10 0b     bpl   $1c75
1c6a: 28 07     and   a,#$07
1c6c: fd        mov   y,a
1c6d: f6 20 00  mov   a,$0020+y
1c70: 08 7f     or    a,#$7f
1c72: d6 20 00  mov   $0020+y,a
1c75: 60        clrc
1c76: 98 08 08  adc   $08,#$08
1c79: 3d        inc   x
1c7a: 6e 07 9b  dbnz  $07,$1c18
1c7d: 6f        ret

1c7e: e4 45     mov   a,$45
1c80: d0 20     bne   $1ca2
1c82: e4 49     mov   a,$49
1c84: d0 0b     bne   $1c91
1c86: f4 93     mov   a,$93+x
1c88: d6 00 ff  mov   $ff00+y,a
1c8b: f4 9f     mov   a,$9f+x
1c8d: d6 01 ff  mov   $ff01+y,a
1c90: 6f        ret

1c91: f4 93     mov   a,$93+x
1c93: 55 48 21  eor   a,$2148+x
1c96: d6 00 ff  mov   $ff00+y,a
1c99: f4 9f     mov   a,$9f+x
1c9b: 55 54 21  eor   a,$2154+x
1c9e: d6 01 ff  mov   $ff01+y,a
1ca1: 6f        ret

1ca2: f4 93     mov   a,$93+x
1ca4: 60        clrc
1ca5: 94 9f     adc   a,$9f+x
1ca7: 5c        lsr   a
1ca8: d6 00 ff  mov   $ff00+y,a
1cab: d6 01 ff  mov   $ff01+y,a
1cae: 6f        ret

1caf: e4 b7     mov   a,$b7
1cb1: f0 0e     beq   $1cc1
1cb3: 9c        dec   a
1cb4: c4 b7     mov   $b7,a
1cb6: d0 09     bne   $1cc1
1cb8: 8f 0d f2  mov   $f2,#$0d
1cbb: fa 4f f3  mov   ($f3),($4f)
1cbe: 3f d7 1a  call  $1ad7
1cc1: e4 4a     mov   a,$4a
1cc3: 68 03     cmp   a,#$03
1cc5: f0 04     beq   $1ccb
1cc7: cd 08     mov   x,#$08
1cc9: 2f 02     bra   $1ccd
1ccb: cd 00     mov   x,#$00
1ccd: f4 28     mov   a,$28+x
1ccf: 10 0a     bpl   $1cdb
1cd1: f5 03 01  mov   a,$0103+x
1cd4: f0 05     beq   $1cdb
1cd6: 4d        push  x
1cd7: 3f e7 1c  call  $1ce7
1cda: ce        pop   x
1cdb: 3d        inc   x
1cdc: c8 0c     cmp   x,#$0c
1cde: d0 ed     bne   $1ccd
1ce0: 6f        ret

1ce1: 20        clrp
1ce2: 9c        dec   a
1ce3: d5 60 21  mov   $2160+x,a
1ce6: 6f        ret

1ce7: f5 60 21  mov   a,$2160+x
1cea: d0 f5     bne   $1ce1
1cec: 40        setp
1ced: f4 27     mov   a,$27+x
1cef: 28 7f     and   a,#$7f
1cf1: fd        mov   y,a
1cf2: f6 61 1f  mov   a,$1f61+y
1cf5: c4 00     mov   $00,a
1cf7: fb 63     mov   y,$63+x
1cf9: cf        mul   ya
1cfa: cb 01     mov   $01,y
1cfc: eb 00     mov   y,$00
1cfe: f4 6f     mov   a,$6f+x
1d00: cf        mul   ya
1d01: 60        clrc
1d02: 84 01     adc   a,$01
1d04: c4 01     mov   $01,a
1d06: 90 01     bcc   $1d09
1d08: fc        inc   y
1d09: cb 02     mov   $02,y
1d0b: f5 49 1f  mov   a,$1f49+x
1d0e: fd        mov   y,a
1d0f: f4 27     mov   a,$27+x
1d11: 30 11     bmi   $1d24
1d13: e4 01     mov   a,$01
1d15: 60        clrc
1d16: 94 7b     adc   a,$7b+x
1d18: d6 02 ff  mov   $ff02+y,a
1d1b: e4 02     mov   a,$02
1d1d: 94 87     adc   a,$87+x
1d1f: d6 03 ff  mov   $ff03+y,a
1d22: 2f 0f     bra   $1d33
1d24: f4 7b     mov   a,$7b+x
1d26: 80        setc
1d27: a4 01     sbc   a,$01
1d29: d6 02 ff  mov   $ff02+y,a
1d2c: f4 87     mov   a,$87+x
1d2e: a4 02     sbc   a,$02
1d30: d6 03 ff  mov   $ff03+y,a
1d33: f4 33     mov   a,$33+x
1d35: 60        clrc
1d36: 94 3f     adc   a,$3f+x
1d38: d4 33     mov   $33+x,a
1d3a: f4 27     mov   a,$27+x
1d3c: 94 4b     adc   a,$4b+x
1d3e: d4 27     mov   $27+x,a
1d40: f4 ab     mov   a,$ab+x
1d42: f0 16     beq   $1d5a
1d44: 9c        dec   a
1d45: d4 ab     mov   $ab+x,a
1d47: f5 c3 01  mov   a,$01c3+x
1d4a: 60        clrc
1d4b: 94 57     adc   a,$57+x
1d4d: d4 57     mov   $57+x,a
1d4f: f5 cb 01  mov   a,$01cb+x
1d52: 94 63     adc   a,$63+x
1d54: d4 63     mov   $63+x,a
1d56: 90 02     bcc   $1d5a
1d58: bb 6f     inc   $6f+x
1d5a: 20        clrp
1d5b: f4 28     mov   a,$28+x
1d5d: 28 07     and   a,#$07
1d5f: 5d        mov   x,a
1d60: f4 20     mov   a,$20+x
1d62: 08 7f     or    a,#$7f
1d64: d4 20     mov   $20+x,a
1d66: 6f        ret

1d67: 20        clrp
1d68: 6f        ret

1d69: e8 00     mov   a,#$00
1d6b: c4 f6     mov   $f6,a
1d6d: c4 f7     mov   $f7,a
1d6f: c4 44     mov   $44,a
1d71: 3f 55 10  call  $1055
1d74: 3f 95 1d  call  $1d95
1d77: 5f 17 06  jmp   $0617

1d7a: e8 00     mov   a,#$00
1d7c: c4 f6     mov   $f6,a
1d7e: c4 f7     mov   $f7,a
1d80: c4 44     mov   $44,a
1d82: 8f 01 00  mov   $00,#$01
1d85: 8f f0 03  mov   $03,#$f0
1d88: 3f a5 17  call  $17a5
1d8b: 3f 95 1d  call  $1d95
1d8e: e8 00     mov   a,#$00
1d90: c4 bd     mov   $bd,a
1d92: c4 be     mov   $be,a
1d94: 6f        ret

1d95: 8f cc f4  mov   $f4,#$cc
1d98: 8f 33 f5  mov   $f5,#$33
1d9b: 78 aa f4  cmp   $f4,#$aa
1d9e: d0 f5     bne   $1d95
1da0: f8 f6     mov   x,$f6
1da2: e4 f7     mov   a,$f7
1da4: c5 bc 1d  mov   $1dbc,a
1da7: c5 c8 1d  mov   $1dc8,a
1daa: 04 f6     or    a,$f6
1dac: d0 02     bne   $1db0
1dae: 2f 34     bra   $1de4
1db0: 8d 01     mov   y,#$01
1db2: cb f4     mov   $f4,y
1db4: 7e f4     cmp   y,$f4
1db6: d0 1d     bne   $1dd5
1db8: e4 f6     mov   a,$f6
1dba: d5 00 00  mov   $0000+x,a
1dbd: e4 f7     mov   a,$f7
1dbf: fc        inc   y
1dc0: 10 02     bpl   $1dc4
1dc2: 8d 01     mov   y,#$01
1dc4: cb f4     mov   $f4,y
1dc6: d5 01 00  mov   $0001+x,a
1dc9: 3d        inc   x
1dca: 3d        inc   x
1dcb: d0 e7     bne   $1db4
1dcd: ac bc 1d  inc   $1dbc
1dd0: ac c8 1d  inc   $1dc8
1dd3: 2f df     bra   $1db4
1dd5: b0 dd     bcs   $1db4
1dd7: e4 f4     mov   a,$f4
1dd9: 68 99     cmp   a,#$99
1ddb: d0 d7     bne   $1db4
1ddd: 78 66 f5  cmp   $f5,#$66
1de0: d0 d2     bne   $1db4
1de2: 2f b1     bra   $1d95
1de4: 8d 01     mov   y,#$01
1de6: cb f4     mov   $f4,y
1de8: cb f7     mov   $f7,y
1dea: e4 f4     mov   a,$f4
1dec: 04 f5     or    a,$f5
1dee: 04 f6     or    a,$f6
1df0: d0 f2     bne   $1de4
1df2: c4 f5     mov   $f5,a
1df4: c4 f6     mov   $f6,a
1df6: 78 02 f7  cmp   $f7,#$02
1df9: d0 e9     bne   $1de4
1dfb: e8 02     mov   a,#$02
1dfd: c4 44     mov   $44,a
1dff: c4 f7     mov   $f7,a
1e01: 6f        ret

1e02: e4 f7     mov   a,$f7
1e04: f0 19     beq   $1e1f
1e06: 64 f7     cmp   a,$f7
1e08: d0 f8     bne   $1e02
1e0a: 64 44     cmp   a,$44
1e0c: d0 11     bne   $1e1f
1e0e: cd 02     mov   x,#$02
1e10: 3f 24 1e  call  $1e24
1e13: 1d        dec   x
1e14: 10 fa     bpl   $1e10
1e16: e4 44     mov   a,$44
1e18: bc        inc   a
1e19: 28 7f     and   a,#$7f
1e1b: f0 fb     beq   $1e18
1e1d: c4 44     mov   $44,a
1e1f: e4 44     mov   a,$44
1e21: c4 f7     mov   $f7,a
1e23: 6f        ret

1e24: f4 f4     mov   a,$f4+x
1e26: 74 f4     cmp   a,$f4+x
1e28: d0 fa     bne   $1e24
1e2a: 68 00     cmp   a,#$00
1e2c: f0 09     beq   $1e37
1e2e: 74 e0     cmp   a,$e0+x
1e30: d0 05     bne   $1e37
1e32: e8 00     mov   a,#$00
1e34: d4 e0     mov   $e0+x,a
1e36: 6f        ret

1e37: d4 e0     mov   $e0+x,a
1e39: 6f        ret

1e3a: 0d        push  psw
1e3b: b0 03     bcs   $1e40
1e3d: 48 ff     eor   a,#$ff
1e3f: bc        inc   a
1e40: 8d 00     mov   y,#$00
1e42: 9e        div   ya,x
1e43: 2d        push  a
1e44: e8 00     mov   a,#$00
1e46: 9e        div   ya,x
1e47: ee        pop   y
1e48: 8e        pop   psw
1e49: b0 06     bcs   $1e51
1e4b: da 16     movw  $16,ya
1e4d: ba 11     movw  ya,$11
1e4f: 9a 16     subw  ya,$16
1e51: 6f        ret

1e52: 0d        push  psw
1e53: b0 06     bcs   $1e5b
1e55: da 16     movw  $16,ya
1e57: ba 11     movw  ya,$11
1e59: 9a 16     subw  ya,$16
1e5b: 8f 01 09  mov   $09,#$01
1e5e: da 16     movw  $16,ya
1e60: 9e        div   ya,x
1e61: 50 09     bvc   $1e6c
1e63: 7d        mov   a,x
1e64: 1c        asl   a
1e65: 5d        mov   x,a
1e66: 0b 09     asl   $09
1e68: ba 16     movw  ya,$16
1e6a: 2f f4     bra   $1e60
1e6c: eb 09     mov   y,$09
1e6e: cf        mul   ya
1e6f: 8e        pop   psw
1e70: b0 06     bcs   $1e78
1e72: da 16     movw  $16,ya
1e74: ba 11     movw  ya,$11
1e76: 9a 16     subw  ya,$16
1e78: 6f        ret

1e79: 5d        mov   x,a
1e7a: f0 1c     beq   $1e98
1e7c: 30 0f     bmi   $1e8d
1e7e: 2d        push  a
1e7f: 3f 99 1e  call  $1e99
1e82: 68 ff     cmp   a,#$ff
1e84: d0 01     bne   $1e87
1e86: 9c        dec   a
1e87: ee        pop   y
1e88: cf        mul   ya
1e89: cd ff     mov   x,#$ff
1e8b: 9e        div   ya,x
1e8c: 6f        ret

1e8d: 28 7f     and   a,#$7f
1e8f: 64 c6     cmp   a,$c6
1e91: 90 03     bcc   $1e96
1e93: e8 00     mov   a,#$00
1e95: 6f        ret

1e96: e4 c6     mov   a,$c6
1e98: 6f        ret

1e99: ba bf     movw  ya,$bf
1e9b: cf        mul   ya
1e9c: 60        clrc
1e9d: 89 bf c0  adc   ($c0),($bf)
1ea0: ab bf     inc   $bf
1ea2: 6f        ret

; pcall $f0 - get next vbyte for voice $5a?
fff0: f8 5a     mov   x,$5a
; pcall $f2 - get next vbyte into A?
fff2: fc        inc   y
fff3: cb 03     mov   $03,y
fff5: f7 0a     mov   a,($0a)+y
fff7: 6f        ret

; pcall $f8 - get next vbyte into A?
fff8: f8 5a     mov   x,$5a
fffa: fc        inc   y
fffb: f7 0a     mov   a,($0a)+y
fffd: 6f        ret
