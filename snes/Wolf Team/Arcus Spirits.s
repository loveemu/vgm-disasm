0700: 20        clrp
0701: 8f 20 f4  mov   $f4,#$20
0704: e8 00     mov   a,#$00
0706: c4 f5     mov   $f5,a
0708: c4 f6     mov   $f6,a
070a: c4 f7     mov   $f7,a
070c: c4 e7     mov   $e7,a
070e: 8f a0 e6  mov   $e6,#$a0
0711: 8f f0 f1  mov   $f1,#$f0
0714: cd ff     mov   x,#$ff
0716: bd        mov   sp,x
0717: c4 cb     mov   $cb,a
0719: 8d 5d     mov   y,#$5d
071b: e8 04     mov   a,#$04
071d: cb f2     mov   $f2,y
071f: c4 f3     mov   $f3,a
0721: 8d 6d     mov   y,#$6d
0723: e8 c0     mov   a,#$c0
0725: cb f2     mov   $f2,y
0727: c4 f3     mov   $f3,a
0729: 3f 75 07  call  $0775
072c: 8f a0 f4  mov   $f4,#$a0
072f: e8 01     mov   a,#$01
0731: c4 f1     mov   $f1,a
; main loop
0733: e4 fd     mov   a,$fd
0735: c4 ee     mov   $ee,a
0737: c4 ef     mov   $ef,a
0739: d0 05     bne   $0740
073b: 3f fc 12  call  $12fc
073e: 2f f3     bra   $0733
0740: e4 e0     mov   a,$e0
0742: f0 ef     beq   $0733
0744: fa ce f6  mov   ($f6),($ce)
0747: fa 05 f7  mov   ($f7),($05)
074a: 3f 96 08  call  $0896
074d: cd 00     mov   x,#$00
074f: f4 00     mov   a,$00+x
0751: 7c        ror   a
0752: 90 09     bcc   $075d
0754: f4 07     mov   a,$07+x
0756: d0 05     bne   $075d
0758: 3f 50 0f  call  $0f50
075b: 2f f7     bra   $0754
075d: 7d        mov   a,x
075e: 60        clrc
075f: 88 10     adc   a,#$10
0761: 5d        mov   x,a
0762: c8 b0     cmp   x,#$b0
0764: d0 e9     bne   $074f
0766: 3f 7b 08  call  $087b
0769: 3f 9c 09  call  $099c
076c: 3f f0 08  call  $08f0
076f: 3f 81 09  call  $0981
0772: 5f 33 07  jmp   $0733

0775: 2d        push  a
0776: 4d        push  x
0777: 6d        push  y
0778: e8 00     mov   a,#$00
077a: 8f 0c f2  mov   $f2,#$0c
077d: c4 f3     mov   $f3,a
077f: 8f 1c f2  mov   $f2,#$1c
0782: c4 f3     mov   $f3,a
0784: 8f 2c f2  mov   $f2,#$2c
0787: c4 f3     mov   $f3,a
0789: 8f 3c f2  mov   $f2,#$3c
078c: c4 f3     mov   $f3,a
078e: cd 00     mov   x,#$00
0790: 8d 00     mov   y,#$00
0792: e4 cb     mov   a,$cb
0794: 2d        push  a
0795: 40        setp
0796: 8f 00 00  mov   $00,#$00
0799: 8f 02 01  mov   $01,#$02
079c: 40        setp
079d: f7 00     mov   a,($00)+y
079f: fc        inc   y
07a0: 20        clrp
07a1: af        mov   (x)+,a
07a2: c8 e6     cmp   x,#$e6
07a4: d0 f6     bne   $079c
07a6: ae        pop   a
07a7: c4 cb     mov   $cb,a
07a9: cd 00     mov   x,#$00
07ab: 8d 00     mov   y,#$00
07ad: 8f 00 e8  mov   $e8,#$00
07b0: 8f 03 e9  mov   $e9,#$03
07b3: 20        clrp
07b4: f7 e8     mov   a,($e8)+y
07b6: fc        inc   y
07b7: 40        setp
07b8: af        mov   (x)+,a
07b9: c8 f0     cmp   x,#$f0
07bb: d0 f6     bne   $07b3
07bd: 20        clrp
07be: e8 00     mov   a,#$00
07c0: 8f 4c f2  mov   $f2,#$4c
07c3: 8f ff f3  mov   $f3,#$ff
07c6: 8f 5c f2  mov   $f2,#$5c
07c9: 8f ff f3  mov   $f3,#$ff
07cc: 8f 2d f2  mov   $f2,#$2d
07cf: c4 f3     mov   $f3,a
07d1: 8f 3d f2  mov   $f2,#$3d
07d4: c4 f3     mov   $f3,a
07d6: 3f fe 07  call  $07fe
07d9: 3f 39 08  call  $0839
07dc: cd 00     mov   x,#$00
07de: 3f b5 0b  call  $0bb5
07e1: 7d        mov   a,x
07e2: 60        clrc
07e3: 88 10     adc   a,#$10
07e5: 5d        mov   x,a
07e6: c8 b0     cmp   x,#$b0
07e8: d0 f4     bne   $07de
07ea: 8f 0c f2  mov   $f2,#$0c
07ed: 8f 7f f3  mov   $f3,#$7f
07f0: 8f 1c f2  mov   $f2,#$1c
07f3: 8f 7f f3  mov   $f3,#$7f
07f6: e8 01     mov   a,#$01
07f8: c4 f1     mov   $f1,a
07fa: ee        pop   y
07fb: ce        pop   x
07fc: ae        pop   a
07fd: 6f        ret

07fe: 2d        push  a
07ff: 4d        push  x
0800: 6d        push  y
0801: e5 22 18  mov   a,$1822
0804: eb cf     mov   y,$cf
0806: cf        mul   ya
0807: cb ea     mov   $ea,y
0809: 3c        rol   a
080a: 2b ea     rol   $ea
080c: 3c        rol   a
080d: e4 ea     mov   a,$ea
080f: 3c        rol   a
0810: eb e2     mov   y,$e2
0812: cf        mul   ya
0813: cb ea     mov   $ea,y
0815: 3c        rol   a
0816: 2b ea     rol   $ea
0818: 3c        rol   a
0819: e4 ea     mov   a,$ea
081b: 3c        rol   a
081c: bc        inc   a
081d: 5d        mov   x,a
081e: 5c        lsr   a
081f: c4 ea     mov   $ea,a
0821: 8d 27     mov   y,#$27
0823: e8 10     mov   a,#$10
0825: 9e        div   ya,x
0826: 7e ea     cmp   y,$ea
0828: 90 01     bcc   $082b
082a: bc        inc   a
082b: cd 00     mov   x,#$00
082d: d8 f1     mov   $f1,x
082f: c4 fa     mov   $fa,a
0831: cd 01     mov   x,#$01
0833: d8 f1     mov   $f1,x
0835: ee        pop   y
0836: ce        pop   x
0837: ae        pop   a
0838: 6f        ret

0839: 2d        push  a
083a: 4d        push  x
083b: 6d        push  y
083c: 8d 23     mov   y,#$23
083e: cd 00     mov   x,#$00
0840: 8f 0b ed  mov   $ed,#$0b
0843: f6 00 18  mov   a,$1800+y
0846: fc        inc   y
0847: af        mov   (x)+,a
0848: f6 00 18  mov   a,$1800+y
084b: fc        inc   y
084c: af        mov   (x)+,a
084d: f6 00 18  mov   a,$1800+y
0850: 60        clrc
0851: 88 18     adc   a,#$18
0853: fc        inc   y
0854: c6        mov   (x),a
0855: 7d        mov   a,x
0856: 60        clrc
0857: 88 0e     adc   a,#$0e
0859: 5d        mov   x,a
085a: 6e ed e6  dbnz  $ed,$0843
085d: ee        pop   y
085e: ce        pop   x
085f: ae        pop   a
0860: 6f        ret

0861: 2d        push  a
0862: 4d        push  x
0863: cd 00     mov   x,#$00
0865: e6        mov   a,(x)
0866: c4 e8     mov   $e8,a
0868: e6        mov   a,(x)
0869: 04 e8     or    a,$e8
086b: c4 e8     mov   $e8,a
086d: 7d        mov   a,x
086e: 60        clrc
086f: 88 10     adc   a,#$10
0871: 5d        mov   x,a
0872: c8 b0     cmp   x,#$b0
0874: d0 f2     bne   $0868
0876: 6b e8     ror   $e8
0878: ce        pop   x
0879: ae        pop   a
087a: 6f        ret

087b: cd 00     mov   x,#$00
087d: f4 00     mov   a,$00+x
087f: 7c        ror   a
0880: 90 0a     bcc   $088c
0882: f4 07     mov   a,$07+x
0884: 9c        dec   a
0885: d4 07     mov   $07+x,a
0887: d0 03     bne   $088c
0889: 8f 01 ef  mov   $ef,#$01
088c: 7d        mov   a,x
088d: 60        clrc
088e: 88 10     adc   a,#$10
0890: 5d        mov   x,a
0891: c8 b0     cmp   x,#$b0
0893: d0 e8     bne   $087d
0895: 6f        ret

0896: 8d 00     mov   y,#$00
0898: cd 00     mov   x,#$00
089a: 40        setp
089b: f4 00     mov   a,$00+x
089d: 7c        ror   a
089e: b0 0c     bcs   $08ac
08a0: fc        inc   y
08a1: 7d        mov   a,x
08a2: 60        clrc
08a3: 88 10     adc   a,#$10
08a5: 5d        mov   x,a
08a6: ad 08     cmp   y,#$08
08a8: d0 f1     bne   $089b
08aa: 20        clrp
08ab: 6f        ret

08ac: f4 03     mov   a,$03+x
08ae: f0 f0     beq   $08a0
08b0: f4 00     mov   a,$00+x
08b2: 28 10     and   a,#$10
08b4: f0 1c     beq   $08d2
08b6: f4 03     mov   a,$03+x
08b8: 9c        dec   a
08b9: d4 03     mov   $03+x,a
08bb: f0 1c     beq   $08d9
08bd: 74 09     cmp   a,$09+x
08bf: b0 df     bcs   $08a0
08c1: f4 04     mov   a,$04+x
08c3: 80        setc
08c4: a8 08     sbc   a,#$08
08c6: b0 02     bcs   $08ca
08c8: e8 00     mov   a,#$00
08ca: d4 04     mov   $04+x,a
08cc: d0 d2     bne   $08a0
08ce: d4 03     mov   $03+x,a
08d0: 2f 07     bra   $08d9
08d2: f4 03     mov   a,$03+x
08d4: 9c        dec   a
08d5: d4 03     mov   $03+x,a
08d7: d0 c7     bne   $08a0
08d9: 20        clrp
08da: 8f 01 ee  mov   $ee,#$01
08dd: 3f 83 0a  call  $0a83
08e0: 3f f7 0a  call  $0af7
08e3: 40        setp
08e4: fc        inc   y
08e5: 7d        mov   a,x
08e6: 60        clrc
08e7: 88 10     adc   a,#$10
08e9: 5d        mov   x,a
08ea: ad 08     cmp   y,#$08
08ec: d0 ad     bne   $089b
08ee: 20        clrp
08ef: 6f        ret

08f0: 8d ff     mov   y,#$ff
08f2: 40        setp
08f3: fc        inc   y
08f4: ad 08     cmp   y,#$08
08f6: d0 03     bne   $08fb
08f8: 5f 7f 09  jmp   $097f

08fb: dd        mov   a,y
08fc: 9f        xcn   a
08fd: 5d        mov   x,a
08fe: e6        mov   a,(x)
08ff: 28 02     and   a,#$02
0901: f0 f0     beq   $08f3
0903: f4 0a     mov   a,$0a+x
0905: f0 05     beq   $090c
0907: 9c        dec   a
0908: d4 0a     mov   $0a+x,a
090a: 2f e7     bra   $08f3
090c: 6d        push  y
090d: f4 0d     mov   a,$0d+x
090f: 60        clrc
0910: 94 0e     adc   a,$0e+x
0912: 80        setc
0913: a8 c0     sbc   a,#$c0
0915: 90 0d     bcc   $0924
0917: 60        clrc
0918: 88 a0     adc   a,#$a0
091a: d4 0e     mov   $0e+x,a
091c: f4 0b     mov   a,$0b+x
091e: 48 80     eor   a,#$80
0920: d4 0b     mov   $0b+x,a
0922: 2f 05     bra   $0929
0924: 60        clrc
0925: 88 c0     adc   a,#$c0
0927: d4 0e     mov   $0e+x,a
0929: f4 0b     mov   a,$0b+x
092b: 28 7f     and   a,#$7f
092d: 74 0c     cmp   a,$0c+x
092f: f0 15     beq   $0946
0931: c4 9c     mov   $9c,a
0933: 5c        lsr   a
0934: 5c        lsr   a
0935: 5c        lsr   a
0936: bc        inc   a
0937: c4 9b     mov   $9b,a
0939: f4 0c     mov   a,$0c+x
093b: 60        clrc
093c: 84 9b     adc   a,$9b
093e: 64 9c     cmp   a,$9c
0940: 90 02     bcc   $0944
0942: e4 9c     mov   a,$9c
0944: d4 0c     mov   $0c+x,a
0946: f4 0b     mov   a,$0b+x
0948: 28 80     and   a,#$80
094a: c4 9c     mov   $9c,a
094c: f4 0e     mov   a,$0e+x
094e: c4 9b     mov   $9b,a
0950: 4d        push  x
0951: f8 9b     mov   x,$9b
0953: e6        mov   a,(x)
0954: ce        pop   x
0955: fb 0c     mov   y,$0c+x
0957: cf        mul   ya
0958: fc        inc   y
0959: 0b 9c     asl   $9c
095b: 90 09     bcc   $0966
095d: 8f ff 9c  mov   $9c,#$ff
0960: dd        mov   a,y
0961: 48 ff     eor   a,#$ff
0963: bc        inc   a
0964: 2f 01     bra   $0967
0966: dd        mov   a,y
0967: c4 9b     mov   $9b,a
0969: f4 05     mov   a,$05+x
096b: 3d        inc   x
096c: fb 05     mov   y,$05+x
096e: 7a 9b     addw  ya,$9b
0970: 3d        inc   x
0971: 20        clrp
0972: d8 f2     mov   $f2,x
0974: c4 f3     mov   $f3,a
0976: 3d        inc   x
0977: d8 f2     mov   $f2,x
0979: cb f3     mov   $f3,y
097b: ee        pop   y
097c: 5f f2 08  jmp   $08f2

097f: 20        clrp
0980: 6f        ret

0981: 8d ff     mov   y,#$ff
0983: 40        setp
0984: fc        inc   y
0985: ad 08     cmp   y,#$08
0987: f0 11     beq   $099a
0989: dd        mov   a,y
098a: 9f        xcn   a
098b: 5d        mov   x,a
098c: e6        mov   a,(x)
098d: 7c        ror   a
098e: 90 f4     bcc   $0984
0990: f4 01     mov   a,$01+x
0992: 9f        xcn   a
0993: 5d        mov   x,a
0994: 20        clrp
0995: 3f 4c 0c  call  $0c4c
0998: 2f e9     bra   $0983
099a: 20        clrp
099b: 6f        ret

099c: e4 e1     mov   a,$e1
099e: 7c        ror   a
099f: 90 28     bcc   $09c9
09a1: 8f 0c f2  mov   $f2,#$0c
09a4: e4 f3     mov   a,$f3
09a6: f0 03     beq   $09ab
09a8: 9c        dec   a
09a9: c4 f3     mov   $f3,a
09ab: 8f 1c f2  mov   $f2,#$1c
09ae: e4 f3     mov   a,$f3
09b0: f0 05     beq   $09b7
09b2: 9c        dec   a
09b3: c4 f3     mov   $f3,a
09b5: d0 12     bne   $09c9
09b7: 8f 00 e1  mov   $e1,#$00
09ba: 3f 32 0f  call  $0f32
09bd: e4 e6     mov   a,$e6
09bf: 48 80     eor   a,#$80
09c1: 28 80     and   a,#$80
09c3: 08 20     or    a,#$20
09c5: c4 e6     mov   $e6,a
09c7: c4 f4     mov   $f4,a
09c9: e4 e1     mov   a,$e1
09cb: 3c        rol   a
09cc: 90 1f     bcc   $09ed
09ce: 8f 0c f2  mov   $f2,#$0c
09d1: e4 f3     mov   a,$f3
09d3: 68 7f     cmp   a,#$7f
09d5: f0 03     beq   $09da
09d7: bc        inc   a
09d8: c4 f3     mov   $f3,a
09da: 8f 1c f2  mov   $f2,#$1c
09dd: e4 f3     mov   a,$f3
09df: 68 7f     cmp   a,#$7f
09e1: f0 07     beq   $09ea
09e3: bc        inc   a
09e4: c4 f3     mov   $f3,a
09e6: 68 7f     cmp   a,#$7f
09e8: d0 03     bne   $09ed
09ea: 8f 00 e1  mov   $e1,#$00
09ed: 6f        ret

09ee: 2d        push  a
09ef: 4d        push  x
09f0: 6d        push  y
09f1: 7d        mov   a,x
09f2: 9f        xcn   a
09f3: 68 08     cmp   a,#$08
09f5: b0 09     bcs   $0a00
09f7: fd        mov   y,a
09f8: fc        inc   y
09f9: e4 cd     mov   a,$cd
09fb: 7c        ror   a
09fc: fe fd     dbnz  y,$09fb
09fe: 2f 09     bra   $0a09
0a00: 80        setc
0a01: a8 07     sbc   a,#$07
0a03: fd        mov   y,a
0a04: e4 cc     mov   a,$cc
0a06: 7c        ror   a
0a07: fe fd     dbnz  y,$0a06
0a09: ee        pop   y
0a0a: ce        pop   x
0a0b: ae        pop   a
0a0c: 6f        ret

0a0d: 2d        push  a
0a0e: 4d        push  x
0a0f: 6d        push  y
0a10: e8 00     mov   a,#$00
0a12: 8f 4c f2  mov   $f2,#$4c
0a15: c4 f3     mov   $f3,a
0a17: 8f 5c f2  mov   $f2,#$5c
0a1a: c4 f3     mov   $f3,a
0a1c: 40        setp
0a1d: c4 9d     mov   $9d,a
0a1f: 20        clrp
0a20: f4 00     mov   a,$00+x
0a22: 28 02     and   a,#$02
0a24: f0 38     beq   $0a5e
0a26: 4d        push  x
0a27: f4 0d     mov   a,$0d+x
0a29: 40        setp
0a2a: c4 9a     mov   $9a,a
0a2c: 20        clrp
0a2d: f4 0e     mov   a,$0e+x
0a2f: 40        setp
0a30: c4 9b     mov   $9b,a
0a32: 20        clrp
0a33: f4 0f     mov   a,$0f+x
0a35: 40        setp
0a36: 9f        xcn   a
0a37: 28 0f     and   a,#$0f
0a39: c4 9c     mov   $9c,a
0a3b: dd        mov   a,y
0a3c: 9f        xcn   a
0a3d: 5d        mov   x,a
0a3e: e8 10     mov   a,#$10
0a40: 80        setc
0a41: a4 9c     sbc   a,$9c
0a43: d4 0d     mov   $0d+x,a
0a45: e4 9a     mov   a,$9a
0a47: d4 0a     mov   $0a+x,a
0a49: e4 9b     mov   a,$9b
0a4b: d4 0b     mov   $0b+x,a
0a4d: 68 04     cmp   a,#$04
0a4f: 90 02     bcc   $0a53
0a51: e8 04     mov   a,#$04
0a53: d4 0c     mov   $0c+x,a
0a55: e8 a0     mov   a,#$a0
0a57: d4 0e     mov   $0e+x,a
0a59: 8f 02 9d  mov   $9d,#$02
0a5c: 20        clrp
0a5d: ce        pop   x
0a5e: f4 00     mov   a,$00+x
0a60: 28 c0     and   a,#$c0
0a62: 40        setp
0a63: c4 9c     mov   $9c,a
0a65: dd        mov   a,y
0a66: 9f        xcn   a
0a67: 5d        mov   x,a
0a68: f4 00     mov   a,$00+x
0a6a: 08 01     or    a,#$01
0a6c: 04 9c     or    a,$9c
0a6e: 04 9d     or    a,$9d
0a70: d4 00     mov   $00+x,a
0a72: 20        clrp
0a73: fc        inc   y
0a74: e8 00     mov   a,#$00
0a76: 80        setc
0a77: 3c        rol   a
0a78: fe fd     dbnz  y,$0a77
0a7a: 8f 4c f2  mov   $f2,#$4c
0a7d: c4 f3     mov   $f3,a
0a7f: ee        pop   y
0a80: ce        pop   x
0a81: ae        pop   a
0a82: 6f        ret

0a83: 2d        push  a
0a84: 4d        push  x
0a85: 6d        push  y
0a86: e8 00     mov   a,#$00
0a88: 8f 4c f2  mov   $f2,#$4c
0a8b: c4 f3     mov   $f3,a
0a8d: 8f 5c f2  mov   $f2,#$5c
0a90: c4 f3     mov   $f3,a
0a92: dd        mov   a,y
0a93: 9f        xcn   a
0a94: 5d        mov   x,a
0a95: e8 00     mov   a,#$00
0a97: 40        setp
0a98: 34 00     and   a,$00+x
0a9a: d4 00     mov   $00+x,a
0a9c: 20        clrp
0a9d: fc        inc   y
0a9e: e8 00     mov   a,#$00
0aa0: 80        setc
0aa1: 3c        rol   a
0aa2: fe fd     dbnz  y,$0aa1
0aa4: 8f 5c f2  mov   $f2,#$5c
0aa7: c4 f3     mov   $f3,a
0aa9: ee        pop   y
0aaa: ce        pop   x
0aab: ae        pop   a
0aac: 6f        ret

0aad: 2d        push  a
0aae: 6d        push  y
0aaf: e8 00     mov   a,#$00
0ab1: 8f 4c f2  mov   $f2,#$4c
0ab4: c4 f3     mov   $f3,a
0ab6: 8f 5c f2  mov   $f2,#$5c
0ab9: c4 f3     mov   $f3,a
0abb: fc        inc   y
0abc: e8 00     mov   a,#$00
0abe: 80        setc
0abf: 3c        rol   a
0ac0: fe fd     dbnz  y,$0abf
0ac2: 8f 5c f2  mov   $f2,#$5c
0ac5: c4 f3     mov   $f3,a
0ac7: ee        pop   y
0ac8: ae        pop   a
0ac9: 6f        ret

0aca: 2d        push  a
0acb: 4d        push  x
0acc: 6d        push  y
0acd: cb ed     mov   $ed,y
0acf: cd d7     mov   x,#$d7
0ad1: 3d        inc   x
0ad2: c8 e0     cmp   x,#$e0
0ad4: f0 1d     beq   $0af3
0ad6: e6        mov   a,(x)
0ad7: 64 ed     cmp   a,$ed
0ad9: d0 f6     bne   $0ad1
0adb: d8 ec     mov   $ec,x
0add: e8 df     mov   a,#$df
0adf: 80        setc
0ae0: a4 ec     sbc   a,$ec
0ae2: f0 0f     beq   $0af3
0ae4: c4 ec     mov   $ec,a
0ae6: 3d        inc   x
0ae7: e6        mov   a,(x)
0ae8: 1d        dec   x
0ae9: c6        mov   (x),a
0aea: 3d        inc   x
0aeb: 3d        inc   x
0aec: 6e ec f8  dbnz  $ec,$0ae7
0aef: e4 ed     mov   a,$ed
0af1: c4 df     mov   $df,a
0af3: ee        pop   y
0af4: ce        pop   x
0af5: ae        pop   a
0af6: 6f        ret

0af7: 2d        push  a
0af8: 4d        push  x
0af9: 6d        push  y
0afa: dd        mov   a,y
0afb: 2d        push  a
0afc: cd df     mov   x,#$df
0afe: 66        cmp   a,(x)
0aff: f0 03     beq   $0b04
0b01: 1d        dec   x
0b02: 2f fa     bra   $0afe
0b04: d8 ea     mov   $ea,x
0b06: 1d        dec   x
0b07: 7d        mov   a,x
0b08: 68 d7     cmp   a,#$d7
0b0a: f0 07     beq   $0b13
0b0c: e6        mov   a,(x)
0b0d: fd        mov   y,a
0b0e: 3f 2d 0b  call  $0b2d
0b11: b0 f3     bcs   $0b06
0b13: d8 eb     mov   $eb,x
0b15: f8 ea     mov   x,$ea
0b17: 80        setc
0b18: a9 eb ea  sbc   ($ea),($eb)
0b1b: 8b ea     dec   $ea
0b1d: f0 08     beq   $0b27
0b1f: 1d        dec   x
0b20: e6        mov   a,(x)
0b21: 3d        inc   x
0b22: c6        mov   (x),a
0b23: 1d        dec   x
0b24: 6e ea f8  dbnz  $ea,$0b1f
0b27: ae        pop   a
0b28: c6        mov   (x),a
0b29: ee        pop   y
0b2a: ce        pop   x
0b2b: ae        pop   a
0b2c: 6f        ret

0b2d: 2d        push  a
0b2e: 4d        push  x
0b2f: 6d        push  y
0b30: dd        mov   a,y
0b31: 9f        xcn   a
0b32: 5d        mov   x,a
0b33: 40        setp
0b34: e6        mov   a,(x)
0b35: 20        clrp
0b36: 7c        ror   a
0b37: ee        pop   y
0b38: ce        pop   x
0b39: ae        pop   a
0b3a: 6f        ret

0b3b: 2d        push  a
0b3c: 4d        push  x
0b3d: dd        mov   a,y
0b3e: 9f        xcn   a
0b3f: 5d        mov   x,a
0b40: 40        setp
0b41: e6        mov   a,(x)
0b42: 20        clrp
0b43: 7c        ror   a
0b44: 7c        ror   a
0b45: 7c        ror   a
0b46: ce        pop   x
0b47: ae        pop   a
0b48: 6f        ret

0b49: 2d        push  a
0b4a: 4d        push  x
0b4b: 4d        push  x
0b4c: f4 07     mov   a,$07+x
0b4e: 40        setp
0b4f: c4 9d     mov   $9d,a
0b51: dd        mov   a,y
0b52: 9f        xcn   a
0b53: 5d        mov   x,a
0b54: e4 9d     mov   a,$9d
0b56: 80        setc
0b57: b4 03     sbc   a,$03+x
0b59: 68 ff     cmp   a,#$ff
0b5b: d0 08     bne   $0b65
0b5d: e8 04     mov   a,#$04
0b5f: 14 00     or    a,$00+x
0b61: d4 00     mov   $00+x,a
0b63: 2f 06     bra   $0b6b
0b65: e8 fb     mov   a,#$fb
0b67: 34 00     and   a,$00+x
0b69: d4 00     mov   $00+x,a
0b6b: 20        clrp
0b6c: ce        pop   x
0b6d: f4 00     mov   a,$00+x
0b6f: 2d        push  a
0b70: f4 0f     mov   a,$0f+x
0b72: 40        setp
0b73: c4 9c     mov   $9c,a
0b75: dd        mov   a,y
0b76: 9f        xcn   a
0b77: 5d        mov   x,a
0b78: ae        pop   a
0b79: 28 10     and   a,#$10
0b7b: f0 11     beq   $0b8e
0b7d: f4 00     mov   a,$00+x
0b7f: 08 10     or    a,#$10
0b81: d4 00     mov   $00+x,a
0b83: e4 9c     mov   a,$9c
0b85: 28 0f     and   a,#$0f
0b87: 60        clrc
0b88: 94 03     adc   a,$03+x
0b8a: d4 03     mov   $03+x,a
0b8c: 2f 06     bra   $0b94
0b8e: f4 00     mov   a,$00+x
0b90: 28 ef     and   a,#$ef
0b92: d4 00     mov   $00+x,a
0b94: e4 9c     mov   a,$9c
0b96: 28 0f     and   a,#$0f
0b98: d4 09     mov   $09+x,a
0b9a: 20        clrp
0b9b: ce        pop   x
0b9c: ae        pop   a
0b9d: 6f        ret

0b9e: 2d        push  a
0b9f: 4d        push  x
0ba0: 6d        push  y
0ba1: f4 09     mov   a,$09+x
0ba3: c4 ea     mov   $ea,a
0ba5: dd        mov   a,y
0ba6: 9f        xcn   a
0ba7: 5d        mov   x,a
0ba8: 40        setp
0ba9: f4 02     mov   a,$02+x
0bab: 20        clrp
0bac: 64 ea     cmp   a,$ea
0bae: f0 01     beq   $0bb1
0bb0: 60        clrc
0bb1: ee        pop   y
0bb2: ce        pop   x
0bb3: ae        pop   a
0bb4: 6f        ret

0bb5: 2d        push  a
0bb6: 4d        push  x
0bb7: 6d        push  y
0bb8: f4 01     mov   a,$01+x
0bba: c4 e8     mov   $e8,a
0bbc: f4 02     mov   a,$02+x
0bbe: c4 e9     mov   $e9,a
0bc0: f4 05     mov   a,$05+x
0bc2: 1c        asl   a
0bc3: 98 00 e9  adc   $e9,#$00
0bc6: 60        clrc
0bc7: 84 e8     adc   a,$e8
0bc9: c4 e8     mov   $e8,a
0bcb: 98 00 e9  adc   $e9,#$00
0bce: 8d 00     mov   y,#$00
0bd0: f7 e8     mov   a,($e8)+y
0bd2: d4 03     mov   $03+x,a
0bd4: fc        inc   y
0bd5: f7 e8     mov   a,($e8)+y
0bd7: 68 ff     cmp   a,#$ff
0bd9: f0 03     beq   $0bde
0bdb: 60        clrc
0bdc: 88 18     adc   a,#$18
0bde: d4 04     mov   $04+x,a
0be0: 68 ff     cmp   a,#$ff
0be2: d0 12     bne   $0bf6
0be4: f4 03     mov   a,$03+x
0be6: 68 ff     cmp   a,#$ff
0be8: d0 0c     bne   $0bf6
0bea: e8 00     mov   a,#$00
0bec: d4 00     mov   $00+x,a
0bee: 3f 61 08  call  $0861
0bf1: b0 03     bcs   $0bf6
0bf3: 8f 00 e0  mov   $e0,#$00
0bf6: ee        pop   y
0bf7: ce        pop   x
0bf8: ae        pop   a
0bf9: 6f        ret

0bfa: 60        clrc
0bfb: 94 03     adc   a,$03+x
0bfd: d4 03     mov   $03+x,a
0bff: f4 04     mov   a,$04+x
0c01: 88 00     adc   a,#$00
0c03: d4 04     mov   $04+x,a
0c05: 6f        ret

0c06: 2d        push  a
0c07: 4d        push  x
0c08: 6d        push  y
0c09: 8f d0 ea  mov   $ea,#$d0
0c0c: 7d        mov   a,x
0c0d: 9f        xcn   a
0c0e: cd 00     mov   x,#$00
0c10: 8d ff     mov   y,#$ff
0c12: fc        inc   y
0c13: 3f 2d 0b  call  $0b2d
0c16: 90 06     bcc   $0c1e
0c18: 40        setp
0c19: 74 01     cmp   a,$01+x
0c1b: f0 0f     beq   $0c2c
0c1d: 20        clrp
0c1e: 2d        push  a
0c1f: 4d        push  x
0c20: f8 ea     mov   x,$ea
0c22: e8 00     mov   a,#$00
0c24: c6        mov   (x),a
0c25: ab ea     inc   $ea
0c27: ce        pop   x
0c28: ae        pop   a
0c29: 40        setp
0c2a: 2f 0d     bra   $0c39
0c2c: 20        clrp
0c2d: 2d        push  a
0c2e: 4d        push  x
0c2f: f8 ea     mov   x,$ea
0c31: e8 01     mov   a,#$01
0c33: c6        mov   (x),a
0c34: ab ea     inc   $ea
0c36: ce        pop   x
0c37: ae        pop   a
0c38: 40        setp
0c39: 2d        push  a
0c3a: 7d        mov   a,x
0c3b: 60        clrc
0c3c: 88 10     adc   a,#$10
0c3e: 5d        mov   x,a
0c3f: 20        clrp
0c40: e4 ea     mov   a,$ea
0c42: 68 d8     cmp   a,#$d8
0c44: ae        pop   a
0c45: d0 cb     bne   $0c12
0c47: 20        clrp
0c48: ee        pop   y
0c49: ce        pop   x
0c4a: ae        pop   a
0c4b: 6f        ret

0c4c: c8 b0     cmp   x,#$b0
0c4e: d0 01     bne   $0c51
0c50: 6f        ret

0c51: 2d        push  a
0c52: 4d        push  x
0c53: 6d        push  y
0c54: d8 ea     mov   $ea,x
0c56: 7d        mov   a,x
0c57: 9f        xcn   a
0c58: 60        clrc
0c59: 88 c0     adc   a,#$c0
0c5b: 5d        mov   x,a
0c5c: 40        setp
0c5d: e6        mov   a,(x)
0c5e: 20        clrp
0c5f: c4 e5     mov   $e5,a
0c61: dd        mov   a,y
0c62: 9f        xcn   a
0c63: 5d        mov   x,a
0c64: 40        setp
0c65: f4 04     mov   a,$04+x
0c67: 20        clrp
0c68: f8 ea     mov   x,$ea
0c6a: fb 0b     mov   y,$0b+x
0c6c: cf        mul   ya
0c6d: 3c        rol   a
0c6e: dd        mov   a,y
0c6f: 3c        rol   a
0c70: fd        mov   y,a
0c71: 7d        mov   a,x
0c72: 9f        xcn   a
0c73: 5d        mov   x,a
0c74: f4 c0     mov   a,$c0+x
0c76: f8 ea     mov   x,$ea
0c78: cf        mul   ya
0c79: 3c        rol   a
0c7a: dd        mov   a,y
0c7b: 3c        rol   a
0c7c: c4 ea     mov   $ea,a
0c7e: 8f 00 ec  mov   $ec,#$00
0c81: e4 e5     mov   a,$e5
0c83: 80        setc
0c84: a8 40     sbc   a,#$40
0c86: b0 03     bcs   $0c8b
0c88: 48 ff     eor   a,#$ff
0c8a: bc        inc   a
0c8b: c4 eb     mov   $eb,a
0c8d: e8 40     mov   a,#$40
0c8f: 80        setc
0c90: a4 eb     sbc   a,$eb
0c92: b0 06     bcs   $0c9a
0c94: 48 ff     eor   a,#$ff
0c96: bc        inc   a
0c97: 8f 01 ec  mov   $ec,#$01
0c9a: c4 eb     mov   $eb,a
0c9c: f4 0c     mov   a,$0c+x
0c9e: 80        setc
0c9f: a8 40     sbc   a,#$40
0ca1: b0 06     bcs   $0ca9
0ca3: 48 ff     eor   a,#$ff
0ca5: bc        inc   a
0ca6: 18 02 ec  or    $ec,#$02
0ca9: eb eb     mov   y,$eb
0cab: cf        mul   ya
0cac: 4d        push  x
0cad: cd 40     mov   x,#$40
0caf: 9e        div   ya,x
0cb0: ce        pop   x
0cb1: eb ec     mov   y,$ec
0cb3: f0 07     beq   $0cbc
0cb5: ad 03     cmp   y,#$03
0cb7: f0 03     beq   $0cbc
0cb9: 48 ff     eor   a,#$ff
0cbb: bc        inc   a
0cbc: 60        clrc
0cbd: 84 e5     adc   a,$e5
0cbf: eb ea     mov   y,$ea
0cc1: cf        mul   ya
0cc2: 3c        rol   a
0cc3: dd        mov   a,y
0cc4: 3c        rol   a
0cc5: c4 eb     mov   $eb,a
0cc7: 8f 00 ed  mov   $ed,#$00
0cca: e8 40     mov   a,#$40
0ccc: 80        setc
0ccd: b4 0c     sbc   a,$0c+x
0ccf: b0 06     bcs   $0cd7
0cd1: 48 ff     eor   a,#$ff
0cd3: bc        inc   a
0cd4: 8f 01 ed  mov   $ed,#$01
0cd7: fd        mov   y,a
0cd8: e8 40     mov   a,#$40
0cda: 80        setc
0cdb: a4 e5     sbc   a,$e5
0cdd: b0 03     bcs   $0ce2
0cdf: 48 ff     eor   a,#$ff
0ce1: bc        inc   a
0ce2: c4 ec     mov   $ec,a
0ce4: e8 40     mov   a,#$40
0ce6: 80        setc
0ce7: a4 ec     sbc   a,$ec
0ce9: b0 06     bcs   $0cf1
0ceb: 48 ff     eor   a,#$ff
0ced: bc        inc   a
0cee: 18 02 ed  or    $ed,#$02
0cf1: cf        mul   ya
0cf2: 4d        push  x
0cf3: cd 40     mov   x,#$40
0cf5: 9e        div   ya,x
0cf6: ce        pop   x
0cf7: eb ed     mov   y,$ed
0cf9: f0 07     beq   $0d02
0cfb: ad 03     cmp   y,#$03
0cfd: f0 03     beq   $0d02
0cff: 48 ff     eor   a,#$ff
0d01: bc        inc   a
0d02: c4 ec     mov   $ec,a
0d04: e8 80     mov   a,#$80
0d06: 80        setc
0d07: a4 e5     sbc   a,$e5
0d09: 60        clrc
0d0a: 84 ec     adc   a,$ec
0d0c: eb ea     mov   y,$ea
0d0e: cf        mul   ya
0d0f: 3c        rol   a
0d10: dd        mov   a,y
0d11: 3c        rol   a
0d12: c4 ea     mov   $ea,a
0d14: ee        pop   y
0d15: dd        mov   a,y
0d16: 9f        xcn   a
0d17: 5d        mov   x,a
0d18: e4 eb     mov   a,$eb
0d1a: 40        setp
0d1b: d4 07     mov   $07+x,a
0d1d: 20        clrp
0d1e: d8 f2     mov   $f2,x
0d20: c4 f3     mov   $f3,a
0d22: e4 ea     mov   a,$ea
0d24: 40        setp
0d25: d4 08     mov   $08+x,a
0d27: 20        clrp
0d28: 3d        inc   x
0d29: d8 f2     mov   $f2,x
0d2b: c4 f3     mov   $f3,a
0d2d: ce        pop   x
0d2e: ae        pop   a
0d2f: 6f        ret

0d30: 2d        push  a
0d31: 4d        push  x
0d32: 6d        push  y
0d33: f4 0c     mov   a,$0c+x
0d35: fd        mov   y,a
0d36: f4 0b     mov   a,$0b+x
0d38: cf        mul   ya
0d39: 3c        rol   a
0d3a: dd        mov   a,y
0d3b: 3c        rol   a
0d3c: c4 eb     mov   $eb,a
0d3e: f4 0c     mov   a,$0c+x
0d40: c4 ea     mov   $ea,a
0d42: e8 80     mov   a,#$80
0d44: 80        setc
0d45: a4 ea     sbc   a,$ea
0d47: fd        mov   y,a
0d48: f4 0b     mov   a,$0b+x
0d4a: cf        mul   ya
0d4b: 3c        rol   a
0d4c: dd        mov   a,y
0d4d: 3c        rol   a
0d4e: c4 ea     mov   $ea,a
0d50: ee        pop   y
0d51: dd        mov   a,y
0d52: 9f        xcn   a
0d53: 5d        mov   x,a
0d54: e4 eb     mov   a,$eb
0d56: 40        setp
0d57: d4 07     mov   $07+x,a
0d59: 20        clrp
0d5a: d8 f2     mov   $f2,x
0d5c: c4 f3     mov   $f3,a
0d5e: e4 ea     mov   a,$ea
0d60: 40        setp
0d61: d4 08     mov   $08+x,a
0d63: 20        clrp
0d64: 3d        inc   x
0d65: d8 f2     mov   $f2,x
0d67: c4 f3     mov   $f3,a
0d69: ce        pop   x
0d6a: ae        pop   a
0d6b: 6f        ret

0d6c: 2d        push  a
0d6d: 4d        push  x
0d6e: 40        setp
0d6f: 7d        mov   a,x
0d70: 9f        xcn   a
0d71: 2d        push  a
0d72: dd        mov   a,y
0d73: 9f        xcn   a
0d74: 5d        mov   x,a
0d75: ae        pop   a
0d76: d4 01     mov   $01+x,a
0d78: 20        clrp
0d79: ce        pop   x
0d7a: ae        pop   a
0d7b: 6f        ret

0d7c: 2d        push  a
0d7d: 4d        push  x
0d7e: 6d        push  y
0d7f: 2d        push  a
0d80: 4d        push  x
0d81: 40        setp
0d82: c4 9b     mov   $9b,a
0d84: dd        mov   a,y
0d85: 9f        xcn   a
0d86: 5d        mov   x,a
0d87: e4 9b     mov   a,$9b
0d89: d4 02     mov   $02+x,a
0d8b: ce        pop   x
0d8c: 20        clrp
0d8d: f4 0a     mov   a,$0a+x
0d8f: 40        setp
0d90: c4 9b     mov   $9b,a
0d92: c8 b0     cmp   x,#$b0
0d94: f0 11     beq   $0da7
0d96: 6d        push  y
0d97: 8d 00     mov   y,#$00
0d99: f7 98     mov   a,($98)+y
0d9b: ee        pop   y
0d9c: 20        clrp
0d9d: 60        clrc
0d9e: 84 e3     adc   a,$e3
0da0: 40        setp
0da1: c4 9c     mov   $9c,a
0da3: e4 9c     mov   a,$9c
0da5: d0 03     bne   $0daa
0da7: ae        pop   a
0da8: 2f 3c     bra   $0de6
0daa: 10 1b     bpl   $0dc7
0dac: 48 ff     eor   a,#$ff
0dae: bc        inc   a
0daf: c4 9c     mov   $9c,a
0db1: ae        pop   a
0db2: 2d        push  a
0db3: 28 0f     and   a,#$0f
0db5: 80        setc
0db6: a4 9c     sbc   a,$9c
0db8: b0 25     bcs   $0ddf
0dba: 60        clrc
0dbb: 88 0c     adc   a,#$0c
0dbd: c4 9d     mov   $9d,a
0dbf: ae        pop   a
0dc0: 28 f0     and   a,#$f0
0dc2: 80        setc
0dc3: a8 10     sbc   a,#$10
0dc5: 2f 1d     bra   $0de4
0dc7: ae        pop   a
0dc8: 2d        push  a
0dc9: 28 0f     and   a,#$0f
0dcb: 60        clrc
0dcc: 84 9c     adc   a,$9c
0dce: 68 0c     cmp   a,#$0c
0dd0: 90 0d     bcc   $0ddf
0dd2: 80        setc
0dd3: a8 0c     sbc   a,#$0c
0dd5: c4 9d     mov   $9d,a
0dd7: ae        pop   a
0dd8: 28 f0     and   a,#$f0
0dda: 60        clrc
0ddb: 88 10     adc   a,#$10
0ddd: 2f 05     bra   $0de4
0ddf: c4 9d     mov   $9d,a
0de1: ae        pop   a
0de2: 28 f0     and   a,#$f0
0de4: 04 9d     or    a,$9d
0de6: 6d        push  y
0de7: c4 9a     mov   $9a,a
0de9: 28 f0     and   a,#$f0
0deb: 9f        xcn   a
0dec: fd        mov   y,a
0ded: e4 9a     mov   a,$9a
0def: 28 0f     and   a,#$0f
0df1: 1c        asl   a
0df2: 5d        mov   x,a
0df3: f4 81     mov   a,$81+x
0df5: c4 9d     mov   $9d,a
0df7: f4 80     mov   a,$80+x
0df9: c4 9c     mov   $9c,a
0dfb: 1c        asl   a
0dfc: 2b 9d     rol   $9d
0dfe: c4 9c     mov   $9c,a
0e00: 2f 04     bra   $0e06
0e02: 4b 9d     lsr   $9d
0e04: 7c        ror   a
0e05: fc        inc   y
0e06: ad 06     cmp   y,#$06
0e08: d0 f8     bne   $0e02
0e0a: c4 9c     mov   $9c,a
0e0c: 8d 00     mov   y,#$00
0e0e: e4 9b     mov   a,$9b
0e10: 10 01     bpl   $0e13
0e12: dc        dec   y
0e13: 7a 9c     addw  ya,$9c
0e15: da 9c     movw  $9c,ya
0e17: ee        pop   y
0e18: dd        mov   a,y
0e19: 9f        xcn   a
0e1a: 5d        mov   x,a
0e1b: e4 9c     mov   a,$9c
0e1d: d4 05     mov   $05+x,a
0e1f: 3d        inc   x
0e20: e4 9d     mov   a,$9d
0e22: d4 05     mov   $05+x,a
0e24: e4 9c     mov   a,$9c
0e26: 3d        inc   x
0e27: 20        clrp
0e28: d8 f2     mov   $f2,x
0e2a: c4 f3     mov   $f3,a
0e2c: 40        setp
0e2d: e4 9d     mov   a,$9d
0e2f: 3d        inc   x
0e30: 20        clrp
0e31: d8 f2     mov   $f2,x
0e33: c4 f3     mov   $f3,a
0e35: ee        pop   y
0e36: ce        pop   x
0e37: ae        pop   a
0e38: 6f        ret

0e39: 2d        push  a
0e3a: 4d        push  x
0e3b: 6d        push  y
0e3c: dd        mov   a,y
0e3d: 9f        xcn   a
0e3e: 5d        mov   x,a
0e3f: 40        setp
0e40: 60        clrc
0e41: 88 04     adc   a,#$04
0e43: c4 9c     mov   $9c,a
0e45: f4 01     mov   a,$01+x
0e47: 20        clrp
0e48: 9f        xcn   a
0e49: 5d        mov   x,a
0e4a: f4 08     mov   a,$08+x
0e4c: 40        setp
0e4d: c4 9a     mov   $9a,a
0e4f: eb 9c     mov   y,$9c
0e51: 20        clrp
0e52: cb f2     mov   $f2,y
0e54: c4 f3     mov   $f3,a
0e56: 40        setp
0e57: fa 9a 98  mov   ($98),($9a)
0e5a: 8f 18 99  mov   $99,#$18
0e5d: 8d 00     mov   y,#$00
0e5f: f7 98     mov   a,($98)+y
0e61: 8f 00 98  mov   $98,#$00
0e64: 8f 05 99  mov   $99,#$05
0e67: 1c        asl   a
0e68: c4 9b     mov   $9b,a
0e6a: 1c        asl   a
0e6b: 60        clrc
0e6c: 84 9b     adc   a,$9b
0e6e: 0d        push  psw
0e6f: 60        clrc
0e70: 84 98     adc   a,$98
0e72: c4 98     mov   $98,a
0e74: 98 00 99  adc   $99,#$00
0e77: 8e        pop   psw
0e78: 98 00 99  adc   $99,#$00
0e7b: 8d 01     mov   y,#$01
0e7d: ab 9c     inc   $9c
0e7f: e4 9c     mov   a,$9c
0e81: 20        clrp
0e82: c4 f2     mov   $f2,a
0e84: 40        setp
0e85: f7 98     mov   a,($98)+y
0e87: 20        clrp
0e88: c4 f3     mov   $f3,a
0e8a: 40        setp
0e8b: fc        inc   y
0e8c: ab 9c     inc   $9c
0e8e: e4 9c     mov   a,$9c
0e90: 20        clrp
0e91: c4 f2     mov   $f2,a
0e93: 40        setp
0e94: f7 98     mov   a,($98)+y
0e96: 20        clrp
0e97: c4 f3     mov   $f3,a
0e99: 40        setp
0e9a: fc        inc   y
0e9b: ab 9c     inc   $9c
0e9d: e4 9c     mov   a,$9c
0e9f: 20        clrp
0ea0: c4 f2     mov   $f2,a
0ea2: 40        setp
0ea3: f7 98     mov   a,($98)+y
0ea5: 20        clrp
0ea6: c4 f3     mov   $f3,a
0ea8: ee        pop   y
0ea9: ce        pop   x
0eaa: ae        pop   a
0eab: 6f        ret

0eac: 2d        push  a
0ead: 4d        push  x
0eae: 6d        push  y
0eaf: 40        setp
0eb0: c4 9c     mov   $9c,a
0eb2: 7d        mov   a,x
0eb3: 9f        xcn   a
0eb4: c4 9d     mov   $9d,a
0eb6: cd 00     mov   x,#$00
0eb8: 40        setp
0eb9: c8 80     cmp   x,#$80
0ebb: f0 70     beq   $0f2d
0ebd: f4 00     mov   a,$00+x
0ebf: 7c        ror   a
0ec0: 90 64     bcc   $0f26
0ec2: e4 9d     mov   a,$9d
0ec4: 74 01     cmp   a,$01+x
0ec6: d0 5e     bne   $0f26
0ec8: f4 05     mov   a,$05+x
0eca: c4 98     mov   $98,a
0ecc: 3d        inc   x
0ecd: f4 05     mov   a,$05+x
0ecf: c4 99     mov   $99,a
0ed1: e4 9c     mov   a,$9c
0ed3: 30 1a     bmi   $0eef
0ed5: fa 98 9a  mov   ($9a),($98)
0ed8: fa 99 9b  mov   ($9b),($99)
0edb: eb 9a     mov   y,$9a
0edd: cf        mul   ya
0ede: cb 9a     mov   $9a,y
0ee0: e4 9c     mov   a,$9c
0ee2: eb 9b     mov   y,$9b
0ee4: cf        mul   ya
0ee5: 60        clrc
0ee6: 84 9a     adc   a,$9a
0ee8: 90 01     bcc   $0eeb
0eea: fc        inc   y
0eeb: 7a 98     addw  ya,$98
0eed: 2f 25     bra   $0f14
0eef: e4 99     mov   a,$99
0ef1: 5c        lsr   a
0ef2: c4 9b     mov   $9b,a
0ef4: e4 98     mov   a,$98
0ef6: 7c        ror   a
0ef7: c4 9a     mov   $9a,a
0ef9: e4 9c     mov   a,$9c
0efb: 48 ff     eor   a,#$ff
0efd: bc        inc   a
0efe: 2d        push  a
0eff: eb 9a     mov   y,$9a
0f01: cf        mul   ya
0f02: cb 9a     mov   $9a,y
0f04: ae        pop   a
0f05: eb 9b     mov   y,$9b
0f07: cf        mul   ya
0f08: 60        clrc
0f09: 84 9a     adc   a,$9a
0f0b: 90 01     bcc   $0f0e
0f0d: fc        inc   y
0f0e: da 9a     movw  $9a,ya
0f10: ba 98     movw  ya,$98
0f12: 9a 9a     subw  ya,$9a
0f14: 3d        inc   x
0f15: 20        clrp
0f16: d8 f2     mov   $f2,x
0f18: c4 f3     mov   $f3,a
0f1a: 3d        inc   x
0f1b: d8 f2     mov   $f2,x
0f1d: cb f3     mov   $f3,y
0f1f: 7d        mov   a,x
0f20: 60        clrc
0f21: 88 0d     adc   a,#$0d
0f23: 5d        mov   x,a
0f24: 2f 92     bra   $0eb8
0f26: 7d        mov   a,x
0f27: 60        clrc
0f28: 88 10     adc   a,#$10
0f2a: 5d        mov   x,a
0f2b: 2f 8b     bra   $0eb8
0f2d: 20        clrp
0f2e: ee        pop   y
0f2f: ce        pop   x
0f30: ae        pop   a
0f31: 6f        ret

0f32: 2d        push  a
0f33: 4d        push  x
0f34: 6d        push  y
0f35: e8 00     mov   a,#$00
0f37: 5d        mov   x,a
0f38: 8d 80     mov   y,#$80
0f3a: 40        setp
0f3b: af        mov   (x)+,a
0f3c: fe fd     dbnz  y,$0f3b
0f3e: 20        clrp
0f3f: 8d 00     mov   y,#$00
0f41: 3f 83 0a  call  $0a83
0f44: fc        inc   y
0f45: ad 08     cmp   y,#$08
0f47: d0 f8     bne   $0f41
0f49: 3f 75 07  call  $0775
0f4c: ee        pop   y
0f4d: ce        pop   x
0f4e: ae        pop   a
0f4f: 6f        ret

0f50: 2d        push  a
0f51: 4d        push  x
0f52: 6d        push  y
0f53: f4 03     mov   a,$03+x
0f55: c4 e8     mov   $e8,a
0f57: f4 04     mov   a,$04+x
0f59: c4 e9     mov   $e9,a             ; score pointer $e8/9
0f5b: 8d 00     mov   y,#$00
0f5d: f7 e8     mov   a,($e8)+y         ; read first byte
0f5f: 68 80     cmp   a,#$80
0f61: 90 03     bcc   $0f66
0f63: 5f 58 10  jmp   $1058

; vcmd 00-7f
0f66: d4 09     mov   $09+x,a
0f68: 3f 06 0c  call  $0c06
0f6b: 8f 00 ed  mov   $ed,#$00
0f6e: 6d        push  y
0f6f: 4d        push  x
0f70: eb ed     mov   y,$ed
0f72: ad 08     cmp   y,#$08
0f74: f0 4e     beq   $0fc4
0f76: ab ed     inc   $ed
0f78: f9 d0     mov   x,$d0+y
0f7a: f0 f4     beq   $0f70
0f7c: ce        pop   x
0f7d: 3f 3b 0b  call  $0b3b
0f80: 90 ed     bcc   $0f6f
0f82: 3f 9e 0b  call  $0b9e
0f85: 90 e8     bcc   $0f6f
0f87: 4d        push  x
0f88: 6d        push  y
0f89: 8d 01     mov   y,#$01
0f8b: f7 e8     mov   a,($e8)+y
0f8d: d4 07     mov   $07+x,a
0f8f: fc        inc   y
0f90: f7 e8     mov   a,($e8)+y
0f92: ee        pop   y
0f93: 3f ee 09  call  $09ee
0f96: b0 0b     bcs   $0fa3
0f98: ce        pop   x
0f99: e8 04     mov   a,#$04
0f9b: 3f fa 0b  call  $0bfa
0f9e: ee        pop   y
0f9f: ee        pop   y
0fa0: ce        pop   x
0fa1: ae        pop   a
0fa2: 6f        ret

0fa3: 2d        push  a
0fa4: dd        mov   a,y
0fa5: 9f        xcn   a
0fa6: 5d        mov   x,a
0fa7: ae        pop   a
0fa8: 40        setp
0fa9: d4 03     mov   $03+x,a
0fab: 20        clrp
0fac: 6d        push  y
0fad: 8d 03     mov   y,#$03
0faf: f7 e8     mov   a,($e8)+y
0fb1: ee        pop   y
0fb2: 40        setp
0fb3: d4 04     mov   $04+x,a
0fb5: 20        clrp
0fb6: ce        pop   x
0fb7: 3f 49 0b  call  $0b49
0fba: e8 04     mov   a,#$04
0fbc: 3f fa 0b  call  $0bfa
0fbf: ee        pop   y
0fc0: ee        pop   y
0fc1: ce        pop   x
0fc2: ae        pop   a
0fc3: 6f        ret

0fc4: ce        pop   x
0fc5: ee        pop   y
0fc6: 2d        push  a
0fc7: 4d        push  x
0fc8: eb d8     mov   y,$d8
0fca: 4d        push  x
0fcb: dd        mov   a,y
0fcc: 9f        xcn   a
0fcd: 5d        mov   x,a
0fce: 40        setp
0fcf: f4 00     mov   a,$00+x
0fd1: 20        clrp
0fd2: ce        pop   x
0fd3: 7c        ror   a
0fd4: 90 29     bcc   $0fff
0fd6: 4d        push  x
0fd7: cd e0     mov   x,#$e0
0fd9: 8f 00 ed  mov   $ed,#$00
0fdc: 1d        dec   x
0fdd: c8 d7     cmp   x,#$d7
0fdf: f0 13     beq   $0ff4
0fe1: e6        mov   a,(x)
0fe2: 9f        xcn   a
0fe3: 4d        push  x
0fe4: 5d        mov   x,a
0fe5: 40        setp
0fe6: f4 00     mov   a,$00+x
0fe8: 20        clrp
0fe9: ce        pop   x
0fea: 3c        rol   a
0feb: 3c        rol   a
0fec: 90 ee     bcc   $0fdc
0fee: e6        mov   a,(x)
0fef: fd        mov   y,a
0ff0: ab ed     inc   $ed
0ff2: 2f e8     bra   $0fdc
0ff4: 78 02 ed  cmp   $ed,#$02
0ff7: 90 03     bcc   $0ffc
0ff9: ce        pop   x
0ffa: 2f 03     bra   $0fff
0ffc: ce        pop   x
0ffd: eb d8     mov   y,$d8
0fff: 6d        push  y
1000: dd        mov   a,y
1001: 9f        xcn   a
1002: c4 ed     mov   $ed,a
1004: 8d 01     mov   y,#$01
1006: f7 e8     mov   a,($e8)+y
1008: d4 07     mov   $07+x,a
100a: 3f ee 09  call  $09ee
100d: b0 0c     bcs   $101b
100f: ee        pop   y
1010: ce        pop   x
1011: ae        pop   a
1012: e8 04     mov   a,#$04
1014: 3f fa 0b  call  $0bfa
1017: ee        pop   y
1018: ce        pop   x
1019: ae        pop   a
101a: 6f        ret

101b: fc        inc   y
101c: f7 e8     mov   a,($e8)+y
101e: f8 ed     mov   x,$ed
1020: 40        setp
1021: d4 03     mov   $03+x,a
1023: 20        clrp
1024: fc        inc   y
1025: f7 e8     mov   a,($e8)+y
1027: 40        setp
1028: d4 04     mov   $04+x,a
102a: 20        clrp
102b: ee        pop   y
102c: dd        mov   a,y
102d: 9f        xcn   a
102e: 5d        mov   x,a
102f: e8 00     mov   a,#$00
1031: 40        setp
1032: d4 00     mov   $00+x,a
1034: 20        clrp
1035: ce        pop   x
1036: ae        pop   a
1037: 3f ad 0a  call  $0aad
103a: 3f 6c 0d  call  $0d6c
103d: 3f 4c 0c  call  $0c4c
1040: 3f 39 0e  call  $0e39
1043: 3f 7c 0d  call  $0d7c
1046: 3f 49 0b  call  $0b49
1049: 3f 0d 0a  call  $0a0d
104c: 3f ca 0a  call  $0aca
104f: e8 04     mov   a,#$04
1051: 3f fa 0b  call  $0bfa
1054: ee        pop   y
1055: ce        pop   x
1056: ae        pop   a
1057: 6f        ret

1058: 68 e0     cmp   a,#$e0
105a: d0 28     bne   $1084

; vcmd e0
105c: 8d 01     mov   y,#$01
105e: f7 e8     mov   a,($e8)+y
1060: d4 07     mov   $07+x,a
1062: 3f 06 0c  call  $0c06
1065: 8d ff     mov   y,#$ff
1067: 4d        push  x
1068: cd d0     mov   x,#$d0
106a: ad 07     cmp   y,#$07
106c: f0 0c     beq   $107a
106e: fc        inc   y
106f: bf        mov   a,(x)+
1070: f0 f8     beq   $106a
1072: 3f 83 0a  call  $0a83
1075: 3f f7 0a  call  $0af7
1078: 2f f0     bra   $106a
107a: ce        pop   x
107b: e8 02     mov   a,#$02
107d: 3f fa 0b  call  $0bfa
1080: ee        pop   y
1081: ce        pop   x
1082: ae        pop   a
1083: 6f        ret

1084: 68 fd     cmp   a,#$fd
1086: d0 08     bne   $1090

; vcmd fd
1088: f4 05     mov   a,$05+x
108a: bc        inc   a
108b: d4 05     mov   $05+x,a
108d: 5f b8 0b  jmp   $0bb8

1090: 68 e1     cmp   a,#$e1
1092: d0 14     bne   $10a8

; vcmd e1
1094: 8d 01     mov   y,#$01
1096: f7 e8     mov   a,($e8)+y
1098: d4 07     mov   $07+x,a
109a: fc        inc   y
109b: f7 e8     mov   a,($e8)+y
109d: d4 0b     mov   $0b+x,a
109f: e8 03     mov   a,#$03
10a1: 3f fa 0b  call  $0bfa
10a4: ee        pop   y
10a5: ce        pop   x
10a6: ae        pop   a
10a7: 6f        ret

10a8: 68 e2     cmp   a,#$e2
10aa: d0 1b     bne   $10c7

; vcmd e2
10ac: 8d 01     mov   y,#$01
10ae: f7 e8     mov   a,($e8)+y
10b0: d4 07     mov   $07+x,a
10b2: fc        inc   y
10b3: f7 e8     mov   a,($e8)+y
10b5: 78 00 cb  cmp   $cb,#$00
10b8: f0 02     beq   $10bc
10ba: e8 40     mov   a,#$40
10bc: d4 0c     mov   $0c+x,a
10be: e8 03     mov   a,#$03
10c0: 3f fa 0b  call  $0bfa
10c3: ee        pop   y
10c4: ce        pop   x
10c5: ae        pop   a
10c6: 6f        ret

10c7: 68 e7     cmp   a,#$e7
10c9: d0 13     bne   $10de

; vcmd e7
10cb: 8d 01     mov   y,#$01
10cd: f7 e8     mov   a,($e8)+y
10cf: d4 07     mov   $07+x,a
10d1: fc        inc   y
10d2: f7 e8     mov   a,($e8)+y
10d4: c4 cf     mov   $cf,a
10d6: e8 03     mov   a,#$03
10d8: 3f fa 0b  call  $0bfa
10db: 5f 01 08  jmp   $0801

10de: 68 ec     cmp   a,#$ec
10e0: d0 0f     bne   $10f1

; vcmd ec
10e2: 8d 01     mov   y,#$01
10e4: f7 e8     mov   a,($e8)+y
10e6: d4 08     mov   $08+x,a
10e8: e8 02     mov   a,#$02
10ea: 3f fa 0b  call  $0bfa
10ed: ee        pop   y
10ee: ce        pop   x
10ef: ae        pop   a
10f0: 6f        ret

10f1: 68 ee     cmp   a,#$ee
10f3: d0 19     bne   $110e

; vcmd ee
10f5: 8d 01     mov   y,#$01
10f7: f7 e8     mov   a,($e8)+y
10f9: d4 07     mov   $07+x,a
10fb: fc        inc   y
10fc: f7 e8     mov   a,($e8)+y
10fe: 80        setc
10ff: a8 40     sbc   a,#$40
1101: 1c        asl   a
1102: 3f ac 0e  call  $0eac
1105: e8 03     mov   a,#$03
1107: 3f fa 0b  call  $0bfa
110a: ee        pop   y
110b: ce        pop   x
110c: ae        pop   a
110d: 6f        ret

110e: 68 e4     cmp   a,#$e4
1110: d0 1b     bne   $112d

; vcmd e4
1112: 8d 01     mov   y,#$01
1114: f7 e8     mov   a,($e8)+y
1116: f0 06     beq   $111e
1118: f4 00     mov   a,$00+x
111a: 08 02     or    a,#$02
111c: 2f 04     bra   $1122
111e: f4 00     mov   a,$00+x
1120: 28 fd     and   a,#$fd
1122: d4 00     mov   $00+x,a
1124: e8 02     mov   a,#$02
1126: 3f fa 0b  call  $0bfa
1129: ee        pop   y
112a: ce        pop   x
112b: ae        pop   a
112c: 6f        ret

112d: 68 e5     cmp   a,#$e5
112f: d0 1f     bne   $1150

; vcmd e5
1131: 8d 01     mov   y,#$01
1133: f7 e8     mov   a,($e8)+y
1135: d4 0d     mov   $0d+x,a
1137: fc        inc   y
1138: f7 e8     mov   a,($e8)+y
113a: d4 0e     mov   $0e+x,a
113c: fc        inc   y
113d: f4 0f     mov   a,$0f+x
113f: 28 0f     and   a,#$0f
1141: 9f        xcn   a
1142: 17 e8     or    a,($e8)+y
1144: 9f        xcn   a
1145: d4 0f     mov   $0f+x,a
1147: e8 04     mov   a,#$04
1149: 3f fa 0b  call  $0bfa
114c: ee        pop   y
114d: ce        pop   x
114e: ae        pop   a
114f: 6f        ret

1150: 68 f4     cmp   a,#$f4
1152: d0 12     bne   $1166

; vcmd f4
1154: 8d 01     mov   y,#$01
1156: f7 e8     mov   a,($e8)+y
1158: 80        setc
1159: a8 40     sbc   a,#$40
115b: d4 0a     mov   $0a+x,a
115d: e8 02     mov   a,#$02
115f: 3f fa 0b  call  $0bfa
1162: ee        pop   y
1163: ce        pop   x
1164: ae        pop   a
1165: 6f        ret

1166: 68 f8     cmp   a,#$f8
1168: d0 13     bne   $117d

; vcmd f8
116a: f4 06     mov   a,$06+x
116c: f0 0c     beq   $117a
116e: d4 05     mov   $05+x,a
1170: e8 01     mov   a,#$01
1172: 3f fa 0b  call  $0bfa
1175: ab ce     inc   $ce
1177: 5f b8 0b  jmp   $0bb8

117a: 5f 35 0f  jmp   $0f35

117d: 68 f9     cmp   a,#$f9
117f: d0 0d     bne   $118e

; vcmd f9
1181: f4 05     mov   a,$05+x
1183: d4 06     mov   $06+x,a
1185: e8 01     mov   a,#$01
1187: 3f fa 0b  call  $0bfa
118a: ee        pop   y
118b: ce        pop   x
118c: ae        pop   a
118d: 6f        ret

118e: 68 f0     cmp   a,#$f0
1190: d0 1b     bne   $11ad

; vcmd f0
1192: 8d 01     mov   y,#$01
1194: f7 e8     mov   a,($e8)+y
1196: f0 06     beq   $119e
1198: f4 00     mov   a,$00+x
119a: 08 08     or    a,#$08
119c: 2f 04     bra   $11a2
119e: f4 00     mov   a,$00+x
11a0: 28 f7     and   a,#$f7
11a2: d4 00     mov   $00+x,a
11a4: e8 02     mov   a,#$02
11a6: 3f fa 0b  call  $0bfa
11a9: ee        pop   y
11aa: ce        pop   x
11ab: ae        pop   a
11ac: 6f        ret

11ad: 68 ef     cmp   a,#$ef
11af: d0 12     bne   $11c3

; vcmd ef
11b1: 8d 01     mov   y,#$01
11b3: f7 e8     mov   a,($e8)+y
11b5: 8f 0d f2  mov   $f2,#$0d
11b8: c4 f3     mov   $f3,a
11ba: e8 02     mov   a,#$02
11bc: 3f fa 0b  call  $0bfa
11bf: ee        pop   y
11c0: ce        pop   x
11c1: ae        pop   a
11c2: 6f        ret

11c3: 68 e3     cmp   a,#$e3
11c5: d0 27     bne   $11ee

; vcmd e3
11c7: f4 0f     mov   a,$0f+x
11c9: 28 f0     and   a,#$f0
11cb: d4 0f     mov   $0f+x,a
11cd: 8d 01     mov   y,#$01
11cf: f7 e8     mov   a,($e8)+y
11d1: f0 0c     beq   $11df
11d3: 28 0f     and   a,#$0f
11d5: 14 0f     or    a,$0f+x
11d7: d4 0f     mov   $0f+x,a
11d9: f4 00     mov   a,$00+x
11db: 08 10     or    a,#$10
11dd: 2f 04     bra   $11e3
11df: f4 00     mov   a,$00+x
11e1: 28 ef     and   a,#$ef
11e3: d4 00     mov   $00+x,a
11e5: e8 02     mov   a,#$02
11e7: 3f fa 0b  call  $0bfa
11ea: ee        pop   y
11eb: ce        pop   x
11ec: ae        pop   a
11ed: 6f        ret

11ee: 68 f7     cmp   a,#$f7
11f0: d0 1b     bne   $120d

; vcmd f7
11f2: 8d 01     mov   y,#$01
11f4: f7 e8     mov   a,($e8)+y
11f6: f0 06     beq   $11fe
11f8: f4 00     mov   a,$00+x
11fa: 08 80     or    a,#$80
11fc: 2f 04     bra   $1202
11fe: f4 00     mov   a,$00+x
1200: 28 7f     and   a,#$7f
1202: d4 00     mov   $00+x,a
1204: e8 02     mov   a,#$02
1206: 3f fa 0b  call  $0bfa
1209: ee        pop   y
120a: ce        pop   x
120b: ae        pop   a
120c: 6f        ret

; vcmd e8 e9 ea eb ed f1 f2 f3 f5 f6 fa fc fe ff - nop
120d: e8 01     mov   a,#$01
120f: 3f fa 0b  call  $0bfa
1212: ee        pop   y
1213: ce        pop   x
1214: ae        pop   a
1215: 6f        ret

1216: 2d        push  a
1217: 4d        push  x
1218: 6d        push  y
1219: 20        clrp
121a: c4 ec     mov   $ec,a
121c: cd b0     mov   x,#$b0
121e: e8 40     mov   a,#$40
1220: d4 0c     mov   $0c+x,a
1222: f4 00     mov   a,$00+x
1224: 08 40     or    a,#$40
1226: d4 00     mov   $00+x,a
1228: fa d1 ea  mov   ($ea),($d1)
122b: 8f 00 e8  mov   $e8,#$00
122e: 8f 18 e9  mov   $e9,#$18
1231: 8d 00     mov   y,#$00
1233: f7 e8     mov   a,($e8)+y
1235: 68 ff     cmp   a,#$ff
1237: f0 09     beq   $1242
1239: 64 ea     cmp   a,$ea
123b: f0 15     beq   $1252
123d: fc        inc   y
123e: ad 20     cmp   y,#$20
1240: d0 f1     bne   $1233
1242: e4 e6     mov   a,$e6
1244: 48 80     eor   a,#$80
1246: 28 80     and   a,#$80
1248: 08 20     or    a,#$20
124a: c4 e6     mov   $e6,a
124c: c4 f4     mov   $f4,a
124e: ee        pop   y
124f: ce        pop   x
1250: ae        pop   a
1251: 6f        ret

1252: db 08     mov   $08+x,y
1254: 8f 00 e8  mov   $e8,#$00
1257: 8f 05 e9  mov   $e9,#$05
125a: 1c        asl   a
125b: c4 eb     mov   $eb,a
125d: 1c        asl   a
125e: 60        clrc
125f: 84 eb     adc   a,$eb
1261: 0d        push  psw
1262: 60        clrc
1263: 84 e8     adc   a,$e8
1265: c4 e8     mov   $e8,a
1267: 98 00 e9  adc   $e9,#$00
126a: 8e        pop   psw
126b: 98 00 e9  adc   $e9,#$00
126e: e4 d3     mov   a,$d3
1270: 78 0d ec  cmp   $ec,#$0d
1273: f0 04     beq   $1279
1275: 8d 05     mov   y,#$05
1277: f7 e8     mov   a,($e8)+y
1279: c4 ea     mov   $ea,a
127b: d4 07     mov   $07+x,a
127d: e4 d2     mov   a,$d2
127f: 78 0d ec  cmp   $ec,#$0d
1282: f0 04     beq   $1288
1284: 8d 04     mov   y,#$04
1286: f7 e8     mov   a,($e8)+y
1288: c4 eb     mov   $eb,a
128a: d4 09     mov   $09+x,a
128c: eb d8     mov   y,$d8
128e: 40        setp
128f: dd        mov   a,y
1290: 9f        xcn   a
1291: 5d        mov   x,a
1292: f4 00     mov   a,$00+x
1294: 7c        ror   a
1295: 90 31     bcc   $12c8
1297: cd 80     mov   x,#$80
1299: 7d        mov   a,x
129a: 80        setc
129b: a8 10     sbc   a,#$10
129d: 5d        mov   x,a
129e: 90 0d     bcc   $12ad
12a0: f4 00     mov   a,$00+x
12a2: 3c        rol   a
12a3: 90 f4     bcc   $1299
12a5: 3c        rol   a
12a6: b0 f1     bcs   $1299
12a8: 7d        mov   a,x
12a9: 9f        xcn   a
12aa: fd        mov   y,a
12ab: 2f 1b     bra   $12c8
12ad: cd 80     mov   x,#$80
12af: 7d        mov   a,x
12b0: 80        setc
12b1: a8 10     sbc   a,#$10
12b3: 5d        mov   x,a
12b4: 90 0b     bcc   $12c1
12b6: f4 00     mov   a,$00+x
12b8: 3c        rol   a
12b9: 3c        rol   a
12ba: 90 f3     bcc   $12af
12bc: 7d        mov   a,x
12bd: 9f        xcn   a
12be: fd        mov   y,a
12bf: 2f 07     bra   $12c8
12c1: 20        clrp
12c2: eb d8     mov   y,$d8
12c4: dd        mov   a,y
12c5: 9f        xcn   a
12c6: 5d        mov   x,a
12c7: 40        setp
12c8: e8 40     mov   a,#$40
12ca: d4 00     mov   $00+x,a
12cc: 20        clrp
12cd: e4 ea     mov   a,$ea
12cf: 40        setp
12d0: d4 03     mov   $03+x,a
12d2: 20        clrp
12d3: e4 eb     mov   a,$eb
12d5: cd b0     mov   x,#$b0
12d7: 3f ad 0a  call  $0aad
12da: 3f 6c 0d  call  $0d6c
12dd: 3f 30 0d  call  $0d30
12e0: 3f 39 0e  call  $0e39
12e3: 3f 7c 0d  call  $0d7c
12e6: 3f 0d 0a  call  $0a0d
12e9: 3f ca 0a  call  $0aca
12ec: e4 e6     mov   a,$e6
12ee: 48 80     eor   a,#$80
12f0: 28 80     and   a,#$80
12f2: 08 20     or    a,#$20
12f4: c4 e6     mov   $e6,a
12f6: c4 f4     mov   $f4,a
12f8: ee        pop   y
12f9: ce        pop   x
12fa: ae        pop   a
12fb: 6f        ret

12fc: 2d        push  a
12fd: 4d        push  x
12fe: 6d        push  y
12ff: e4 f4     mov   a,$f4
1301: 64 f4     cmp   a,$f4
1303: d0 fa     bne   $12ff
1305: 64 f4     cmp   a,$f4
1307: d0 f6     bne   $12ff
1309: c4 d0     mov   $d0,a
130b: 5d        mov   x,a
130c: 44 e7     eor   a,$e7
130e: 69 f4 d0  cmp   ($d0),($f4)
1311: d0 ec     bne   $12ff
1313: 1c        asl   a
1314: b0 04     bcs   $131a
1316: ee        pop   y
1317: ce        pop   x
1318: ae        pop   a
1319: 6f        ret

131a: e4 f5     mov   a,$f5
131c: 64 f5     cmp   a,$f5
131e: d0 fa     bne   $131a
1320: c4 d1     mov   $d1,a
1322: e4 f6     mov   a,$f6
1324: 64 f6     cmp   a,$f6
1326: d0 fa     bne   $1322
1328: c4 d2     mov   $d2,a
132a: 69 f5 d1  cmp   ($d1),($f5)
132d: d0 eb     bne   $131a
132f: e4 f7     mov   a,$f7
1331: 64 f7     cmp   a,$f7
1333: d0 fa     bne   $132f
1335: c4 d3     mov   $d3,a
1337: 69 f6 d2  cmp   ($d2),($f6)
133a: d0 e6     bne   $1322
133c: 69 f7 d3  cmp   ($d3),($f7)
133f: d0 ee     bne   $132f
1341: e4 d0     mov   a,$d0
1343: c4 e7     mov   $e7,a
1345: 28 7f     and   a,#$7f
1347: 68 0c     cmp   a,#$0c
1349: f0 04     beq   $134f
134b: 68 0d     cmp   a,#$0d
134d: d0 07     bne   $1356
134f: 3f 16 12  call  $1216
1352: ee        pop   y
1353: ce        pop   x
1354: ae        pop   a
1355: 6f        ret

1356: 68 0e     cmp   a,#$0e
1358: d0 0c     bne   $1366
135a: 8f 5c f2  mov   $f2,#$5c
135d: 8f ff f3  mov   $f3,#$ff
1360: 8f 00 e0  mov   $e0,#$00
1363: 5f e4 13  jmp   $13e4

1366: 68 13     cmp   a,#$13
1368: d0 06     bne   $1370
136a: 8f 01 e0  mov   $e0,#$01
136d: 5f e4 13  jmp   $13e4

1370: 68 04     cmp   a,#$04
1372: d0 0f     bne   $1383
1374: 3f 32 0f  call  $0f32
1377: 8f 01 e0  mov   $e0,#$01
137a: 8f 6c f2  mov   $f2,#$6c
137d: 8f 20 f3  mov   $f3,#$20
1380: 5f e4 13  jmp   $13e4

1383: 68 05     cmp   a,#$05
1385: d0 08     bne   $138f
1387: 8f 00 e1  mov   $e1,#$00
138a: 3f 32 0f  call  $0f32
138d: 2f 55     bra   $13e4
138f: 68 0f     cmp   a,#$0f
1391: d0 08     bne   $139b
1393: fa d1 cc  mov   ($cc),($d1)
1396: fa d2 cd  mov   ($cd),($d2)
1399: 2f 49     bra   $13e4
139b: 68 06     cmp   a,#$06
139d: d0 07     bne   $13a6
139f: 8f 01 e1  mov   $e1,#$01
13a2: ee        pop   y
13a3: ce        pop   x
13a4: ae        pop   a
13a5: 6f        ret

13a6: 68 07     cmp   a,#$07
13a8: d0 14     bne   $13be
13aa: 8f 80 e1  mov   $e1,#$80
13ad: 8f 0c f2  mov   $f2,#$0c
13b0: 8f 00 f3  mov   $f3,#$00
13b3: 8f 1c f2  mov   $f2,#$1c
13b6: 8f 00 f3  mov   $f3,#$00
13b9: 8f 01 e0  mov   $e0,#$01
13bc: 2f 26     bra   $13e4
13be: 68 08     cmp   a,#$08
13c0: f0 15     beq   $13d7
13c2: 68 10     cmp   a,#$10
13c4: d0 2e     bne   $13f4
13c6: e4 d2     mov   a,$d2
13c8: 68 0b     cmp   a,#$0b
13ca: b0 0b     bcs   $13d7
13cc: 4d        push  x
13cd: 60        clrc
13ce: 88 c0     adc   a,#$c0
13d0: 5d        mov   x,a
13d1: e4 d1     mov   a,$d1
13d3: c6        mov   (x),a
13d4: ce        pop   x
13d5: 2f 0d     bra   $13e4
13d7: e4 d1     mov   a,$d1
13d9: 8f 0b ea  mov   $ea,#$0b
13dc: 4d        push  x
13dd: cd c0     mov   x,#$c0
13df: af        mov   (x)+,a
13e0: 6e ea fc  dbnz  $ea,$13df
13e3: ce        pop   x
13e4: e4 e6     mov   a,$e6
13e6: 48 80     eor   a,#$80
13e8: 28 80     and   a,#$80
13ea: 08 20     or    a,#$20
13ec: c4 e6     mov   $e6,a
13ee: c4 f4     mov   $f4,a
13f0: ee        pop   y
13f1: ce        pop   x
13f2: ae        pop   a
13f3: 6f        ret

13f4: 68 09     cmp   a,#$09
13f6: f0 1e     beq   $1416
13f8: 68 11     cmp   a,#$11
13fa: d0 32     bne   $142e
13fc: e4 d2     mov   a,$d2
13fe: 68 0b     cmp   a,#$0b
1400: b0 14     bcs   $1416
1402: 4d        push  x
1403: 60        clrc
1404: 88 c0     adc   a,#$c0
1406: 5d        mov   x,a
1407: e4 d1     mov   a,$d1
1409: 78 00 cb  cmp   $cb,#$00
140c: f0 02     beq   $1410
140e: e8 40     mov   a,#$40
1410: 40        setp
1411: c6        mov   (x),a
1412: 20        clrp
1413: ce        pop   x
1414: 2f ce     bra   $13e4
1416: e4 d1     mov   a,$d1
1418: 78 00 cb  cmp   $cb,#$00
141b: f0 02     beq   $141f
141d: e8 40     mov   a,#$40
141f: 4d        push  x
1420: cd c0     mov   x,#$c0
1422: 40        setp
1423: 8f 0b 9a  mov   $9a,#$0b
1426: af        mov   (x)+,a
1427: 6e 9a fc  dbnz  $9a,$1426
142a: 20        clrp
142b: ce        pop   x
142c: 2f b6     bra   $13e4
142e: 68 0a     cmp   a,#$0a
1430: d0 22     bne   $1454
1432: e4 d1     mov   a,$d1
1434: c4 e3     mov   $e3,a
1436: 8d ff     mov   y,#$ff
1438: 40        setp
1439: fc        inc   y
143a: ad 08     cmp   y,#$08
143c: f0 13     beq   $1451
143e: dd        mov   a,y
143f: 9f        xcn   a
1440: 5d        mov   x,a
1441: e6        mov   a,(x)
1442: 7c        ror   a
1443: 90 f4     bcc   $1439
1445: f4 01     mov   a,$01+x
1447: 9f        xcn   a
1448: 5d        mov   x,a
1449: f4 02     mov   a,$02+x
144b: 20        clrp
144c: 3f 7c 0d  call  $0d7c
144f: 2f e7     bra   $1438
1451: 20        clrp
1452: 2f 90     bra   $13e4
1454: 68 0b     cmp   a,#$0b
1456: d0 0a     bne   $1462
1458: e4 d1     mov   a,$d1
145a: c4 e2     mov   $e2,a
145c: 3f fe 07  call  $07fe
145f: 5f e4 13  jmp   $13e4

1462: 68 01     cmp   a,#$01
1464: d0 0f     bne   $1475
1466: 8f 00 e1  mov   $e1,#$00
1469: 3f 32 0f  call  $0f32
146c: 3f 9c 14  call  $149c
146f: 3f 75 07  call  $0775
1472: 5f e4 13  jmp   $13e4

1475: 68 12     cmp   a,#$12
1477: d0 06     bne   $147f
1479: fa d1 cb  mov   ($cb),($d1)
147c: 5f e4 13  jmp   $13e4

147f: 68 15     cmp   a,#$15
1481: d0 09     bne   $148c
1483: cd fe     mov   x,#$fe
1485: bd        mov   sp,x
1486: 3f 32 0f  call  $0f32
1489: 5f 14 16  jmp   $1614

148c: e4 e6     mov   a,$e6
148e: 48 80     eor   a,#$80
1490: 28 80     and   a,#$80
1492: 08 20     or    a,#$20
1494: c4 e6     mov   $e6,a
1496: c4 f4     mov   $f4,a
1498: ee        pop   y
1499: ce        pop   x
149a: ae        pop   a
149b: 6f        ret

149c: 8f 00 e8  mov   $e8,#$00
149f: 8f 18 e9  mov   $e9,#$18
14a2: 3f 07 16  call  $1607
14a5: e4 e7     mov   a,$e7
14a7: 28 80     and   a,#$80
14a9: c4 ea     mov   $ea,a
14ab: e4 f4     mov   a,$f4
14ad: 64 f4     cmp   a,$f4
14af: d0 fa     bne   $14ab
14b1: fd        mov   y,a
14b2: 28 80     and   a,#$80
14b4: 64 ea     cmp   a,$ea
14b6: f0 f3     beq   $14ab
14b8: cb e7     mov   $e7,y
14ba: dd        mov   a,y
14bb: 28 7f     and   a,#$7f
14bd: 68 02     cmp   a,#$02
14bf: d0 28     bne   $14e9
14c1: 8d 00     mov   y,#$00
14c3: e4 f5     mov   a,$f5
14c5: 64 f5     cmp   a,$f5
14c7: d0 fa     bne   $14c3
14c9: d7 e8     mov   ($e8)+y,a
14cb: fc        inc   y
14cc: e4 f6     mov   a,$f6
14ce: 64 f6     cmp   a,$f6
14d0: d0 fa     bne   $14cc
14d2: d7 e8     mov   ($e8)+y,a
14d4: fc        inc   y
14d5: e4 f7     mov   a,$f7
14d7: 64 f7     cmp   a,$f7
14d9: d0 fa     bne   $14d5
14db: d7 e8     mov   ($e8)+y,a
14dd: e8 03     mov   a,#$03
14df: 60        clrc
14e0: 84 e8     adc   a,$e8
14e2: c4 e8     mov   $e8,a
14e4: 98 00 e9  adc   $e9,#$00
14e7: 2f b9     bra   $14a2
14e9: 68 14     cmp   a,#$14
14eb: d0 be     bne   $14ab
14ed: 8f 00 e8  mov   $e8,#$00
14f0: 8f 38 e9  mov   $e9,#$38
14f3: 8f 00 ea  mov   $ea,#$00
14f6: 8f 18 eb  mov   $eb,#$18
14f9: 8f 00 ec  mov   $ec,#$00
14fc: eb ec     mov   y,$ec
14fe: f7 ea     mov   a,($ea)+y
1500: 68 ff     cmp   a,#$ff
1502: d0 03     bne   $1507
1504: 5f 05 16  jmp   $1605

1507: ab ec     inc   $ec
1509: 78 20 ec  cmp   $ec,#$20
150c: d0 03     bne   $1511
150e: 5f 05 16  jmp   $1605

1511: c4 f5     mov   $f5,a
1513: e4 e6     mov   a,$e6
1515: 48 80     eor   a,#$80
1517: 28 80     and   a,#$80
1519: 08 22     or    a,#$22
151b: c4 e6     mov   $e6,a
151d: c4 f4     mov   $f4,a
151f: e4 e7     mov   a,$e7
1521: 28 80     and   a,#$80
1523: c4 ed     mov   $ed,a
1525: e4 f4     mov   a,$f4
1527: 64 f4     cmp   a,$f4
1529: d0 fa     bne   $1525
152b: 5d        mov   x,a
152c: 28 80     and   a,#$80
152e: 64 ed     cmp   a,$ed
1530: f0 f3     beq   $1525
1532: d8 e7     mov   $e7,x
1534: 7d        mov   a,x
1535: 28 7f     and   a,#$7f
1537: 68 02     cmp   a,#$02
1539: f0 03     beq   $153e
153b: 5f 06 16  jmp   $1606

153e: f8 ec     mov   x,$ec
1540: 7d        mov   a,x
1541: 9c        dec   a
1542: 1c        asl   a
1543: 1c        asl   a
1544: c4 ec     mov   $ec,a
1546: 8f 04 ed  mov   $ed,#$04
1549: 8d 00     mov   y,#$00
154b: e4 f7     mov   a,$f7
154d: 64 f7     cmp   a,$f7
154f: d0 fa     bne   $154b
1551: 60        clrc
1552: 84 e8     adc   a,$e8
1554: 0d        push  psw
1555: d7 ec     mov   ($ec)+y,a
1557: 3f 07 16  call  $1607
155a: d8 ec     mov   $ec,x
155c: e4 e7     mov   a,$e7
155e: 28 80     and   a,#$80
1560: c4 ed     mov   $ed,a
1562: e4 f4     mov   a,$f4
1564: 64 f4     cmp   a,$f4
1566: d0 fa     bne   $1562
1568: 5d        mov   x,a
1569: 28 80     and   a,#$80
156b: 64 ed     cmp   a,$ed
156d: f0 f3     beq   $1562
156f: d8 e7     mov   $e7,x
1571: 7d        mov   a,x
1572: 28 7f     and   a,#$7f
1574: 68 02     cmp   a,#$02
1576: f0 03     beq   $157b
1578: 5f 06 16  jmp   $1606

157b: f8 ec     mov   x,$ec
157d: 7d        mov   a,x
157e: 9c        dec   a
157f: 1c        asl   a
1580: 1c        asl   a
1581: c4 ec     mov   $ec,a
1583: 8f 04 ed  mov   $ed,#$04
1586: 8d 01     mov   y,#$01
1588: e4 f5     mov   a,$f5
158a: 64 f5     cmp   a,$f5
158c: d0 fa     bne   $1588
158e: 8e        pop   psw
158f: 88 00     adc   a,#$00
1591: 60        clrc
1592: 84 e9     adc   a,$e9
1594: d7 ec     mov   ($ec)+y,a
1596: fc        inc   y
1597: e4 f6     mov   a,$f6
1599: 64 f6     cmp   a,$f6
159b: d0 fa     bne   $1597
159d: 60        clrc
159e: 84 e8     adc   a,$e8
15a0: 0d        push  psw
15a1: d7 ec     mov   ($ec)+y,a
15a3: fc        inc   y
15a4: e4 f7     mov   a,$f7
15a6: 64 f7     cmp   a,$f7
15a8: d0 fa     bne   $15a4
15aa: 8e        pop   psw
15ab: 88 00     adc   a,#$00
15ad: 60        clrc
15ae: 84 e9     adc   a,$e9
15b0: d7 ec     mov   ($ec)+y,a
15b2: 3f 07 16  call  $1607
15b5: d8 ec     mov   $ec,x
15b7: e4 e7     mov   a,$e7
15b9: 28 80     and   a,#$80
15bb: c4 ed     mov   $ed,a
15bd: e4 f4     mov   a,$f4
15bf: 64 f4     cmp   a,$f4
15c1: d0 fa     bne   $15bd
15c3: 5d        mov   x,a
15c4: 28 80     and   a,#$80
15c6: 64 ed     cmp   a,$ed
15c8: f0 f3     beq   $15bd
15ca: d8 e7     mov   $e7,x
15cc: 7d        mov   a,x
15cd: 28 7f     and   a,#$7f
15cf: 68 03     cmp   a,#$03
15d1: d0 03     bne   $15d6
15d3: 5f fc 14  jmp   $14fc

15d6: 68 02     cmp   a,#$02
15d8: d0 2c     bne   $1606
15da: 8d 00     mov   y,#$00
15dc: e4 f5     mov   a,$f5
15de: 64 f5     cmp   a,$f5
15e0: d0 fa     bne   $15dc
15e2: d7 e8     mov   ($e8)+y,a
15e4: fc        inc   y
15e5: e4 f6     mov   a,$f6
15e7: 64 f6     cmp   a,$f6
15e9: d0 fa     bne   $15e5
15eb: d7 e8     mov   ($e8)+y,a
15ed: fc        inc   y
15ee: e4 f7     mov   a,$f7
15f0: 64 f7     cmp   a,$f7
15f2: d0 fa     bne   $15ee
15f4: d7 e8     mov   ($e8)+y,a
15f6: e8 03     mov   a,#$03
15f8: 60        clrc
15f9: 84 e8     adc   a,$e8
15fb: c4 e8     mov   $e8,a
15fd: 98 00 e9  adc   $e9,#$00
1600: 3f 07 16  call  $1607
1603: 2f b2     bra   $15b7
1605: 6f        ret

1606: 6f        ret

1607: e4 e6     mov   a,$e6
1609: 48 80     eor   a,#$80
160b: 28 80     and   a,#$80
160d: 08 21     or    a,#$21
160f: c4 e6     mov   $e6,a
1611: c4 f4     mov   $f4,a
1613: 6f        ret

1614: cd ef     mov   x,#$ef
1616: bd        mov   sp,x
1617: e8 00     mov   a,#$00
1619: c6        mov   (x),a
161a: 1d        dec   x
161b: d0 fc     bne   $1619
161d: 8f aa f4  mov   $f4,#$aa
1620: 8f bb f5  mov   $f5,#$bb
1623: 78 cc f4  cmp   $f4,#$cc
1626: d0 fb     bne   $1623
1628: 2f 19     bra   $1643
162a: eb f4     mov   y,$f4
162c: d0 fc     bne   $162a
162e: 7e f4     cmp   y,$f4
1630: d0 0b     bne   $163d
1632: e4 f5     mov   a,$f5
1634: cb f4     mov   $f4,y
1636: d7 00     mov   ($00)+y,a
1638: fc        inc   y
1639: d0 f3     bne   $162e
163b: ab 01     inc   $01
163d: 10 ef     bpl   $162e
163f: 7e f4     cmp   y,$f4
1641: 10 eb     bpl   $162e
1643: ba f6     movw  ya,$f6
1645: da 00     movw  $00,ya
1647: ba f4     movw  ya,$f4
1649: c4 f4     mov   $f4,a
164b: dd        mov   a,y
164c: 5d        mov   x,a
164d: d0 db     bne   $162a
164f: 1f 00 00  jmp   ($0000+x)

1652: c0        di
