0800: cd cf     mov   x,#$cf
0802: bd        mov   sp,x
0803: 20        clrp
0804: 8f 00 f6  mov   $f6,#$00
0807: 3f 8c 15  call  $158c
080a: cd 00     mov   x,#$00
080c: e8 00     mov   a,#$00
080e: d4 00     mov   $00+x,a
0810: 3d        inc   x
0811: c8 d0     cmp   x,#$d0
0813: d0 f9     bne   $080e
0815: 3f 3a 09  call  $093a
0818: 8f 00 f1  mov   $f1,#$00
081b: 8f 30 f1  mov   $f1,#$30
081e: 8f 00 f4  mov   $f4,#$00
0821: 8f 20 47  mov   $47,#$20
0824: e8 0c     mov   a,#$0c
0826: c4 f2     mov   $f2,a
0828: e8 30     mov   a,#$30
082a: c4 f3     mov   $f3,a
082c: e8 1c     mov   a,#$1c
082e: c4 f2     mov   $f2,a
0830: e8 30     mov   a,#$30
0832: c4 f3     mov   $f3,a
0834: 8f ff 30  mov   $30,#$ff
0837: 8f 82 fa  mov   $fa,#$82
083a: 8f a0 fb  mov   $fb,#$a0
083d: 8f 03 f1  mov   $f1,#$03
0840: 8f 04 4b  mov   $4b,#$04
0843: e8 00     mov   a,#$00
0845: c4 4c     mov   $4c,a
0847: c4 4d     mov   $4d,a
0849: c4 4f     mov   $4f,a
084b: 3f ed 13  call  $13ed
084e: e8 4d     mov   a,#$4d
0850: c4 f2     mov   $f2,a
0852: e8 00     mov   a,#$00
0854: c4 f3     mov   $f3,a
0856: cd 64     mov   x,#$64
0858: e4 fd     mov   a,$fd
085a: f0 fc     beq   $0858
085c: 1d        dec   x
085d: d0 f9     bne   $0858
085f: 38 df 47  and   $47,#$df
0862: 8f 6c f2  mov   $f2,#$6c
0865: fa 47 f3  mov   ($f3),($47)
0868: 8f ff 12  mov   $12,#$ff
086b: 3f dd 15  call  $15dd
086e: e4 08     mov   a,$08
0870: f0 06     beq   $0878
0872: 3f 0e 0a  call  $0a0e
0875: 8f 00 08  mov   $08,#$00
0878: e4 09     mov   a,$09
087a: f0 06     beq   $0882
087c: 3f 0e 0a  call  $0a0e
087f: 8f 00 09  mov   $09,#$00
0882: fa 30 13  mov   ($13),($30)
0885: fa 12 f6  mov   ($f6),($12)
0888: fa 13 f7  mov   ($f7),($13)
088b: e4 fd     mov   a,$fd
088d: f0 dc     beq   $086b
088f: 3f ff 0a  call  $0aff
0892: e4 4a     mov   a,$4a
0894: f0 07     beq   $089d
0896: 8b 4a     dec   $4a
0898: d0 03     bne   $089d
089a: 3f 17 14  call  $1417
089d: e4 51     mov   a,$51
089f: f0 28     beq   $08c9
08a1: 8b 53     dec   $53
08a3: d0 24     bne   $08c9
08a5: eb 52     mov   y,$52
08a7: f7 50     mov   a,($50)+y
08a9: fc        inc   y
08aa: 68 ff     cmp   a,#$ff
08ac: d0 05     bne   $08b3
08ae: f7 50     mov   a,($50)+y
08b0: fd        mov   y,a
08b1: 2f f4     bra   $08a7
08b3: c4 4c     mov   $4c,a
08b5: f7 50     mov   a,($50)+y
08b7: fc        inc   y
08b8: c4 4d     mov   $4d,a
08ba: f7 50     mov   a,($50)+y
08bc: fc        inc   y
08bd: c4 4e     mov   $4e,a
08bf: f7 50     mov   a,($50)+y
08c1: fc        inc   y
08c2: c4 53     mov   $53,a
08c4: cb 52     mov   $52,y
08c6: 3f 17 14  call  $1417
08c9: e4 3c     mov   a,$3c
08cb: d0 41     bne   $090e
08cd: e4 32     mov   a,$32
08cf: f0 3d     beq   $090e
08d1: 60        clrc
08d2: 84 33     adc   a,$33
08d4: c4 33     mov   $33,a
08d6: 38 0f 33  and   $33,#$0f
08d9: 9f        xcn   a
08da: 28 0f     and   a,#$0f
08dc: f8 34     mov   x,$34
08de: f0 13     beq   $08f3
08e0: 60        clrc
08e1: 84 30     adc   a,$30
08e3: 90 08     bcc   $08ed
08e5: 8f ff 30  mov   $30,#$ff
08e8: 8f 00 32  mov   $32,#$00
08eb: 2f 21     bra   $090e
08ed: 64 31     cmp   a,$31
08ef: 90 1b     bcc   $090c
08f1: 2f 14     bra   $0907
08f3: 80        setc
08f4: c4 00     mov   $00,a
08f6: e4 30     mov   a,$30
08f8: a4 00     sbc   a,$00
08fa: b0 07     bcs   $0903
08fc: e8 00     mov   a,#$00
08fe: 8f 00 32  mov   $32,#$00
0901: 2f 09     bra   $090c
0903: 64 31     cmp   a,$31
0905: b0 05     bcs   $090c
0907: e4 31     mov   a,$31
0909: 8f 00 32  mov   $32,#$00
090c: c4 30     mov   $30,a
090e: e4 30     mov   a,$30
0910: 80        setc
0911: a4 36     sbc   a,$36
0913: b0 02     bcs   $0917
0915: e8 00     mov   a,#$00
0917: c4 35     mov   $35,a
0919: e4 0b     mov   a,$0b
091b: f0 06     beq   $0923
091d: 3f 0e 0a  call  $0a0e
0920: 8f 00 0b  mov   $0b,#$00
0923: e4 0c     mov   a,$0c
0925: f0 06     beq   $092d
0927: 3f 0e 0a  call  $0a0e
092a: 8f 00 0c  mov   $0c,#$00
092d: e4 0d     mov   a,$0d
092f: f0 06     beq   $0937
0931: 3f 0e 0a  call  $0a0e
0934: 8f 00 0d  mov   $0d,#$00
0937: 5f 6b 08  jmp   $086b

093a: e8 3d     mov   a,#$3d
093c: c4 f2     mov   $f2,a
093e: e8 00     mov   a,#$00
0940: c4 f3     mov   $f3,a
0942: e8 4d     mov   a,#$4d
0944: c4 f2     mov   $f2,a
0946: e8 00     mov   a,#$00
0948: c4 f3     mov   $f3,a
094a: e8 2c     mov   a,#$2c
094c: c4 f2     mov   $f2,a
094e: e8 00     mov   a,#$00
0950: c4 f3     mov   $f3,a
0952: e8 3c     mov   a,#$3c
0954: c4 f2     mov   $f2,a
0956: e8 00     mov   a,#$00
0958: c4 f3     mov   $f3,a
095a: e8 0d     mov   a,#$0d
095c: c4 f2     mov   $f2,a
095e: e8 00     mov   a,#$00
0960: c4 f3     mov   $f3,a
0962: e8 00     mov   a,#$00
0964: c4 4c     mov   $4c,a
0966: c4 4d     mov   $4d,a
0968: c4 4e     mov   $4e,a
096a: 3f 17 14  call  $1417
096d: 8f 82 fa  mov   $fa,#$82
0970: cd 00     mov   x,#$00
0972: 7d        mov   a,x
0973: 9f        xcn   a
0974: 08 07     or    a,#$07
0976: c4 f2     mov   $f2,a
0978: 8f 9c f3  mov   $f3,#$9c
097b: 7d        mov   a,x
097c: 9f        xcn   a
097d: 08 05     or    a,#$05
097f: c4 f2     mov   $f2,a
0981: 8f 00 f3  mov   $f3,#$00
0984: e8 7f     mov   a,#$7f
0986: d4 1c     mov   $1c+x,a
0988: 3d        inc   x
0989: c8 08     cmp   x,#$08
098b: d0 e5     bne   $0972
098d: cd 17     mov   x,#$17
098f: e8 00     mov   a,#$00
0991: d5 00 02  mov   $0200+x,a
0994: 1d        dec   x
0995: 10 f8     bpl   $098f
0997: e8 00     mov   a,#$00
0999: c4 3c     mov   $3c,a
099b: c4 32     mov   $32,a
099d: c4 36     mov   $36,a
099f: 8f ff 30  mov   $30,#$ff
09a2: 8f 00 59  mov   $59,#$00
09a5: 6f        ret

09a6: e8 4d     mov   a,#$4d
09a8: c4 f2     mov   $f2,a
09aa: e8 00     mov   a,#$00
09ac: c4 f3     mov   $f3,a
09ae: e8 00     mov   a,#$00
09b0: c4 4c     mov   $4c,a
09b2: c4 4d     mov   $4d,a
09b4: c4 4e     mov   $4e,a
09b6: 3f 17 14  call  $1417
09b9: e8 00     mov   a,#$00
09bb: c4 09     mov   $09,a
09bd: c4 0a     mov   $0a,a
09bf: 8f ff 3c  mov   $3c,#$ff
09c2: cd 17     mov   x,#$17
09c4: f5 00 02  mov   a,$0200+x
09c7: 10 05     bpl   $09ce
09c9: 48 c0     eor   a,#$c0
09cb: d5 00 02  mov   $0200+x,a
09ce: 1d        dec   x
09cf: 10 f3     bpl   $09c4
09d1: cd 00     mov   x,#$00
09d3: e8 7f     mov   a,#$7f
09d5: d4 1c     mov   $1c+x,a
09d7: 7d        mov   a,x
09d8: 9f        xcn   a
09d9: 08 07     or    a,#$07
09db: fd        mov   y,a
09dc: cb f2     mov   $f2,y
09de: 8f 9c f3  mov   $f3,#$9c
09e1: dc        dec   y
09e2: dc        dec   y
09e3: cb f2     mov   $f2,y
09e5: 8f 00 f3  mov   $f3,#$00
09e8: 3d        inc   x
09e9: c8 08     cmp   x,#$08
09eb: d0 e6     bne   $09d3
09ed: 6f        ret

09ee: e4 3c     mov   a,$3c
09f0: f0 19     beq   $0a0b
09f2: 8f 00 3c  mov   $3c,#$00
09f5: cd 17     mov   x,#$17
09f7: f5 00 02  mov   a,$0200+x
09fa: 28 c0     and   a,#$c0
09fc: 68 40     cmp   a,#$40
09fe: d0 08     bne   $0a08
0a00: f5 00 02  mov   a,$0200+x
0a03: 48 c0     eor   a,#$c0
0a05: d5 00 02  mov   $0200+x,a
0a08: 1d        dec   x
0a09: 10 ec     bpl   $09f7
0a0b: 6f        ret

0a0c: 6f        ret

0a0d: 6f        ret

0a0e: 68 ef     cmp   a,#$ef
0a10: f0 94     beq   $09a6
0a12: 68 ee     cmp   a,#$ee
0a14: f0 d8     beq   $09ee
0a16: 9c        dec   a
0a17: 1c        asl   a
0a18: fd        mov   y,a
0a19: 90 0d     bcc   $0a28
0a1b: f6 00 24  mov   a,$2400+y
0a1e: c4 06     mov   $06,a
0a20: fc        inc   y
0a21: f6 00 24  mov   a,$2400+y
0a24: c4 07     mov   $07,a
0a26: 2f 0b     bra   $0a33
0a28: f6 00 23  mov   a,$2300+y
0a2b: c4 06     mov   $06,a
0a2d: fc        inc   y
0a2e: f6 00 23  mov   a,$2300+y
0a31: c4 07     mov   $07,a
0a33: 8d 00     mov   y,#$00
0a35: f7 06     mov   a,($06)+y
0a37: 30 d4     bmi   $0a0d
0a39: c4 00     mov   $00,a
0a3b: fc        inc   y
0a3c: f7 06     mov   a,($06)+y
0a3e: c4 01     mov   $01,a
0a40: fc        inc   y
0a41: f7 06     mov   a,($06)+y
0a43: c4 02     mov   $02,a
0a45: fc        inc   y
0a46: f7 06     mov   a,($06)+y
0a48: c4 03     mov   $03,a
0a4a: fc        inc   y
0a4b: 8f 00 04  mov   $04,#$00
0a4e: 3f 53 0a  call  $0a53
0a51: 2f e2     bra   $0a35
0a53: f8 00     mov   x,$00
0a55: f5 00 02  mov   a,$0200+x
0a58: 10 25     bpl   $0a7f
0a5a: 28 1f     and   a,#$1f
0a5c: 64 01     cmp   a,$01
0a5e: f0 1f     beq   $0a7f
0a60: 28 07     and   a,#$07
0a62: 5d        mov   x,a
0a63: f4 1c     mov   a,$1c+x
0a65: 10 18     bpl   $0a7f
0a67: 28 7f     and   a,#$7f
0a69: 64 00     cmp   a,$00
0a6b: d0 12     bne   $0a7f
0a6d: d4 1c     mov   $1c+x,a
0a6f: 7d        mov   a,x
0a70: 9f        xcn   a
0a71: 08 07     or    a,#$07
0a73: c4 f2     mov   $f2,a
0a75: 8f 9c f3  mov   $f3,#$9c
0a78: 9c        dec   a
0a79: 9c        dec   a
0a7a: c4 f2     mov   $f2,a
0a7c: 8f 00 f3  mov   $f3,#$00
0a7f: e4 01     mov   a,$01
0a81: 28 07     and   a,#$07
0a83: 5d        mov   x,a
0a84: f4 1c     mov   a,$1c+x
0a86: 28 7f     and   a,#$7f
0a88: d4 1c     mov   $1c+x,a
0a8a: f8 00     mov   x,$00
0a8c: e4 01     mov   a,$01
0a8e: 08 80     or    a,#$80
0a90: d5 00 02  mov   $0200+x,a
0a93: e4 02     mov   a,$02
0a95: d5 30 02  mov   $0230+x,a
0a98: e4 03     mov   a,$03
0a9a: d5 48 02  mov   $0248+x,a
0a9d: e8 02     mov   a,#$02
0a9f: d5 18 02  mov   $0218+x,a
0aa2: e8 00     mov   a,#$00
0aa4: d5 60 02  mov   $0260+x,a
0aa7: d5 78 02  mov   $0278+x,a
0aaa: d5 50 03  mov   $0350+x,a
0aad: d5 58 04  mov   $0458+x,a
0ab0: d5 88 04  mov   $0488+x,a
0ab3: d5 e8 04  mov   $04e8+x,a
0ab6: d5 b8 04  mov   $04b8+x,a
0ab9: d5 b0 03  mov   $03b0+x,a
0abc: d5 00 05  mov   $0500+x,a
0abf: d5 d8 02  mov   $02d8+x,a
0ac2: d5 98 06  mov   $0698+x,a
0ac5: d5 b0 06  mov   $06b0+x,a
0ac8: d5 c8 06  mov   $06c8+x,a
0acb: d5 38 06  mov   $0638+x,a
0ace: d4 a2     mov   $a2+x,a
0ad0: d5 90 05  mov   $0590+x,a
0ad3: d5 a8 02  mov   $02a8+x,a
0ad6: e8 01     mov   a,#$01
0ad8: d4 5a     mov   $5a+x,a
0ada: d5 80 03  mov   $0380+x,a
0add: e8 9c     mov   a,#$9c
0adf: d5 98 03  mov   $0398+x,a
0ae2: d5 c0 02  mov   $02c0+x,a
0ae5: e8 9f     mov   a,#$9f
0ae7: d5 e0 03  mov   $03e0+x,a
0aea: e4 04     mov   a,$04
0aec: d5 60 05  mov   $0560+x,a
0aef: e8 0a     mov   a,#$0a
0af1: d5 d8 05  mov   $05d8+x,a
0af4: e8 6b     mov   a,#$6b
0af6: d5 f0 05  mov   $05f0+x,a
0af9: e8 14     mov   a,#$14
0afb: d5 08 06  mov   $0608+x,a
0afe: 6f        ret

0aff: 8f 17 24  mov   $24,#$17
0b02: f8 24     mov   x,$24
0b04: f5 00 02  mov   a,$0200+x
0b07: 10 03     bpl   $0b0c
0b09: 3f 11 0b  call  $0b11
0b0c: 8b 24     dec   $24
0b0e: 10 f2     bpl   $0b02
0b10: 6f        ret

0b11: e8 00     mov   a,#$00
0b13: c4 39     mov   $39,a
0b15: f5 00 02  mov   a,$0200+x
0b18: 28 07     and   a,#$07
0b1a: c4 25     mov   $25,a
0b1c: 9f        xcn   a
0b1d: c4 3d     mov   $3d,a
0b1f: f5 18 02  mov   a,$0218+x
0b22: c4 28     mov   $28,a
0b24: 28 01     and   a,#$01
0b26: f0 03     beq   $0b2b
0b28: 18 20 28  or    $28,#$20
0b2b: 9b 5a     dec   $5a+x
0b2d: f0 03     beq   $0b32
0b2f: 5f 09 0c  jmp   $0c09

0b32: f5 30 02  mov   a,$0230+x
0b35: c4 26     mov   $26,a
0b37: f5 48 02  mov   a,$0248+x
0b3a: c4 27     mov   $27,a
0b3c: 8d 00     mov   y,#$00
0b3e: f7 26     mov   a,($26)+y
0b40: 10 1f     bpl   $0b61
0b42: 3a 26     incw  $26
0b44: 68 a0     cmp   a,#$a0
0b46: 90 08     bcc   $0b50
0b48: 80        setc
0b49: a8 c0     sbc   a,#$c0
0b4b: 1c        asl   a
0b4c: 5d        mov   x,a
0b4d: 1f c4 0e  jmp   ($0ec4+x)

0b50: f8 24     mov   x,$24
0b52: d5 a8 02  mov   $02a8+x,a
0b55: e8 00     mov   a,#$00
0b57: d5 90 02  mov   $0290+x,a
0b5a: e8 ff     mov   a,#$ff
0b5c: d5 c0 02  mov   $02c0+x,a
0b5f: 2f 59     bra   $0bba
0b61: f8 24     mov   x,$24
0b63: c4 00     mov   $00,a
0b65: e4 28     mov   a,$28
0b67: 28 08     and   a,#$08
0b69: f0 39     beq   $0ba4
0b6b: e4 00     mov   a,$00
0b6d: 1c        asl   a
0b6e: fd        mov   y,a
0b6f: f5 18 05  mov   a,$0518+x
0b72: c4 00     mov   $00,a
0b74: f5 30 05  mov   a,$0530+x
0b77: c4 01     mov   $01,a
0b79: f7 00     mov   a,($00)+y
0b7b: c4 02     mov   $02,a
0b7d: fc        inc   y
0b7e: f7 00     mov   a,($00)+y
0b80: c4 03     mov   $03,a
0b82: f5 48 05  mov   a,$0548+x
0b85: c4 00     mov   $00,a
0b87: f5 00 02  mov   a,$0200+x
0b8a: 28 1f     and   a,#$1f
0b8c: c4 01     mov   $01,a
0b8e: f5 60 05  mov   a,$0560+x
0b91: c4 04     mov   $04,a
0b93: f5 d8 05  mov   a,$05d8+x
0b96: c4 05     mov   $05,a
0b98: 3f 8a 0a  call  $0a8a
0b9b: 8d 00     mov   y,#$00
0b9d: f8 24     mov   x,$24
0b9f: 18 20 28  or    $28,#$20
0ba2: 2f 14     bra   $0bb8
0ba4: e4 00     mov   a,$00
0ba6: 60        clrc
0ba7: 95 60 02  adc   a,$0260+x
0baa: d5 a8 02  mov   $02a8+x,a
0bad: f5 78 02  mov   a,$0278+x
0bb0: d5 90 02  mov   $0290+x,a
0bb3: e8 ff     mov   a,#$ff
0bb5: d5 c0 02  mov   $02c0+x,a
0bb8: 3a 26     incw  $26
0bba: f8 24     mov   x,$24
0bbc: 8d 00     mov   y,#$00
0bbe: 3f 9c 13  call  $139c
0bc1: 3f ae 13  call  $13ae
0bc4: 3f cc 13  call  $13cc
0bc7: f8 24     mov   x,$24
0bc9: e4 26     mov   a,$26
0bcb: d5 30 02  mov   $0230+x,a
0bce: e4 27     mov   a,$27
0bd0: d5 48 02  mov   $0248+x,a
0bd3: e4 28     mov   a,$28
0bd5: 28 20     and   a,#$20
0bd7: d0 30     bne   $0c09
0bd9: 18 02 28  or    $28,#$02
0bdc: f5 b0 03  mov   a,$03b0+x
0bdf: 08 80     or    a,#$80
0be1: d5 b0 03  mov   $03b0+x,a
0be4: e4 28     mov   a,$28
0be6: 28 80     and   a,#$80
0be8: f0 09     beq   $0bf3
0bea: f5 40 04  mov   a,$0440+x
0bed: d5 f8 03  mov   $03f8+x,a
0bf0: f5 58 04  mov   a,$0458+x
0bf3: d5 10 04  mov   $0410+x,a
0bf6: e8 00     mov   a,#$00
0bf8: d5 28 04  mov   $0428+x,a
0bfb: e8 01     mov   a,#$01
0bfd: d4 72     mov   $72+x,a
0bff: e8 00     mov   a,#$00
0c01: d5 20 03  mov   $0320+x,a
0c04: f5 38 03  mov   a,$0338+x
0c07: d4 8a     mov   $8a+x,a
0c09: e4 28     mov   a,$28
0c0b: 28 02     and   a,#$02
0c0d: c4 38     mov   $38,a
0c0f: f8 24     mov   x,$24
0c11: f5 d8 05  mov   a,$05d8+x
0c14: c4 2c     mov   $2c,a
0c16: f5 f0 05  mov   a,$05f0+x
0c19: c4 2d     mov   $2d,a
0c1b: f5 08 06  mov   a,$0608+x
0c1e: c4 2e     mov   $2e,a
0c20: f5 38 06  mov   a,$0638+x
0c23: f0 23     beq   $0c48
0c25: 9b a2     dec   $a2+x
0c27: d0 1f     bne   $0c48
0c29: fd        mov   y,a
0c2a: f5 20 06  mov   a,$0620+x
0c2d: da 26     movw  $26,ya
0c2f: f5 50 06  mov   a,$0650+x
0c32: fd        mov   y,a
0c33: f7 26     mov   a,($26)+y
0c35: 10 05     bpl   $0c3c
0c37: fc        inc   y
0c38: f7 26     mov   a,($26)+y
0c3a: 2f f6     bra   $0c32
0c3c: c4 2c     mov   $2c,a
0c3e: fc        inc   y
0c3f: dd        mov   a,y
0c40: d5 50 06  mov   $0650+x,a
0c43: f5 68 06  mov   a,$0668+x
0c46: d4 a2     mov   $a2+x,a
0c48: f5 60 05  mov   a,$0560+x
0c4b: c4 2b     mov   $2b,a
0c4d: f5 90 05  mov   a,$0590+x
0c50: f0 6e     beq   $0cc0
0c52: 9b ba     dec   $ba+x
0c54: d0 45     bne   $0c9b
0c56: fd        mov   y,a
0c57: f5 78 05  mov   a,$0578+x
0c5a: da 26     movw  $26,ya
0c5c: 8d 00     mov   y,#$00
0c5e: f7 26     mov   a,($26)+y
0c60: d5 60 05  mov   $0560+x,a
0c63: c4 2b     mov   $2b,a
0c65: 3a 26     incw  $26
0c67: f7 26     mov   a,($26)+y
0c69: 04 2b     or    a,$2b
0c6b: d0 0d     bne   $0c7a
0c6d: fc        inc   y
0c6e: f7 26     mov   a,($26)+y
0c70: c4 00     mov   $00,a
0c72: fc        inc   y
0c73: f7 26     mov   a,($26)+y
0c75: fd        mov   y,a
0c76: e4 00     mov   a,$00
0c78: 2f e0     bra   $0c5a
0c7a: f7 26     mov   a,($26)+y
0c7c: d5 a8 05  mov   $05a8+x,a
0c7f: 3a 26     incw  $26
0c81: f7 26     mov   a,($26)+y
0c83: d4 d2     mov   $d2+x,a
0c85: d5 c0 05  mov   $05c0+x,a
0c88: 3a 26     incw  $26
0c8a: f7 26     mov   a,($26)+y
0c8c: d4 ba     mov   $ba+x,a
0c8e: 3a 26     incw  $26
0c90: ba 26     movw  ya,$26
0c92: d5 78 05  mov   $0578+x,a
0c95: dd        mov   a,y
0c96: d5 90 05  mov   $0590+x,a
0c99: 2f 25     bra   $0cc0
0c9b: 9b d2     dec   $d2+x
0c9d: d0 21     bne   $0cc0
0c9f: f5 c0 05  mov   a,$05c0+x
0ca2: d4 d2     mov   $d2+x,a
0ca4: f5 a8 05  mov   a,$05a8+x
0ca7: 30 09     bmi   $0cb2
0ca9: 60        clrc
0caa: 84 2b     adc   a,$2b
0cac: 90 0d     bcc   $0cbb
0cae: e8 ff     mov   a,#$ff
0cb0: 2f 09     bra   $0cbb
0cb2: 60        clrc
0cb3: 84 2b     adc   a,$2b
0cb5: 64 2b     cmp   a,$2b
0cb7: 90 02     bcc   $0cbb
0cb9: e8 00     mov   a,#$00
0cbb: c4 2b     mov   $2b,a
0cbd: d5 60 05  mov   $0560+x,a
0cc0: f8 25     mov   x,$25
0cc2: e4 24     mov   a,$24
0cc4: 74 1c     cmp   a,$1c+x
0cc6: f0 12     beq   $0cda
0cc8: 08 80     or    a,#$80
0cca: 74 1c     cmp   a,$1c+x
0ccc: b0 03     bcs   $0cd1
0cce: 5f b6 0e  jmp   $0eb6

0cd1: f0 0b     beq   $0cde
0cd3: eb 38     mov   y,$38
0cd5: f0 f7     beq   $0cce
0cd7: 8f ff 39  mov   $39,#$ff
0cda: 08 80     or    a,#$80
0cdc: d4 1c     mov   $1c+x,a
0cde: eb 25     mov   y,$25
0ce0: e4 28     mov   a,$28
0ce2: 28 40     and   a,#$40
0ce4: f0 07     beq   $0ced
0ce6: f6 84 15  mov   a,$1584+y
0ce9: 04 48     or    a,$48
0ceb: 2f 07     bra   $0cf4
0ced: f6 84 15  mov   a,$1584+y
0cf0: 48 ff     eor   a,#$ff
0cf2: 24 48     and   a,$48
0cf4: 8f 4d f2  mov   $f2,#$4d
0cf7: c4 f3     mov   $f3,a
0cf9: c4 48     mov   $48,a
0cfb: f8 24     mov   x,$24
0cfd: f5 00 02  mov   a,$0200+x
0d00: 28 10     and   a,#$10
0d02: f0 07     beq   $0d0b
0d04: eb 2b     mov   y,$2b
0d06: e4 35     mov   a,$35
0d08: cf        mul   ya
0d09: cb 2b     mov   $2b,y
0d0b: e4 2c     mov   a,$2c
0d0d: d5 d8 05  mov   $05d8+x,a
0d10: 3f 3f 14  call  $143f
0d13: eb 3d     mov   y,$3d
0d15: cb f2     mov   $f2,y
0d17: fa 3e f3  mov   ($f3),($3e)
0d1a: fc        inc   y
0d1b: cb f2     mov   $f2,y
0d1d: fa 3f f3  mov   ($f3),($3f)
0d20: f8 24     mov   x,$24
0d22: f5 90 02  mov   a,$0290+x
0d25: c4 29     mov   $29,a
0d27: f5 a8 02  mov   a,$02a8+x
0d2a: c4 2a     mov   $2a,a
0d2c: f5 50 03  mov   a,$0350+x
0d2f: c4 42     mov   $42,a
0d31: f5 c0 02  mov   a,$02c0+x
0d34: 30 3a     bmi   $0d70
0d36: c4 01     mov   $01,a
0d38: f5 78 02  mov   a,$0278+x
0d3b: c4 00     mov   $00,a
0d3d: f4 5a     mov   a,$5a+x
0d3f: 5d        mov   x,a
0d40: ba 00     movw  ya,$00
0d42: 9a 29     subw  ya,$29
0d44: f0 2a     beq   $0d70
0d46: 10 17     bpl   $0d5f
0d48: ba 29     movw  ya,$29
0d4a: 9a 00     subw  ya,$00
0d4c: c4 00     mov   $00,a
0d4e: dd        mov   a,y
0d4f: 8d 00     mov   y,#$00
0d51: 9e        div   ya,x
0d52: c4 01     mov   $01,a
0d54: e4 00     mov   a,$00
0d56: 9e        div   ya,x
0d57: c4 00     mov   $00,a
0d59: ba 29     movw  ya,$29
0d5b: 9a 00     subw  ya,$00
0d5d: 2f 0f     bra   $0d6e
0d5f: c4 00     mov   $00,a
0d61: dd        mov   a,y
0d62: 8d 00     mov   y,#$00
0d64: 9e        div   ya,x
0d65: c4 01     mov   $01,a
0d67: e4 00     mov   a,$00
0d69: 9e        div   ya,x
0d6a: eb 01     mov   y,$01
0d6c: 7a 29     addw  ya,$29
0d6e: da 29     movw  $29,ya
0d70: f8 24     mov   x,$24
0d72: 8d 00     mov   y,#$00
0d74: f5 d8 02  mov   a,$02d8+x
0d77: 10 02     bpl   $0d7b
0d79: 8d ff     mov   y,#$ff
0d7b: da 00     movw  $00,ya
0d7d: ba 29     movw  ya,$29
0d7f: 7a 00     addw  ya,$00
0d81: 7a 00     addw  ya,$00
0d83: da 29     movw  $29,ya
0d85: e4 29     mov   a,$29
0d87: d5 90 02  mov   $0290+x,a
0d8a: e4 2a     mov   a,$2a
0d8c: d5 a8 02  mov   $02a8+x,a
0d8f: e4 28     mov   a,$28
0d91: 28 04     and   a,#$04
0d93: f0 33     beq   $0dc8
0d95: 9b 8a     dec   $8a+x
0d97: d0 2f     bne   $0dc8
0d99: f5 08 03  mov   a,$0308+x
0d9c: c4 27     mov   $27,a
0d9e: f5 f0 02  mov   a,$02f0+x
0da1: c4 26     mov   $26,a
0da3: f5 20 03  mov   a,$0320+x
0da6: fd        mov   y,a
0da7: f7 26     mov   a,($26)+y
0da9: fc        inc   y
0daa: 68 80     cmp   a,#$80
0dac: d0 04     bne   $0db2
0dae: f7 26     mov   a,($26)+y
0db0: 2f f4     bra   $0da6
0db2: c4 00     mov   $00,a
0db4: dd        mov   a,y
0db5: d5 20 03  mov   $0320+x,a
0db8: e8 01     mov   a,#$01
0dba: d4 8a     mov   $8a+x,a
0dbc: 8d 00     mov   y,#$00
0dbe: e4 00     mov   a,$00
0dc0: 10 02     bpl   $0dc4
0dc2: 8d ff     mov   y,#$ff
0dc4: 7a 29     addw  ya,$29
0dc6: da 29     movw  $29,ya
0dc8: e4 2a     mov   a,$2a
0dca: 10 17     bpl   $0de3
0dcc: 28 1f     and   a,#$1f
0dce: 38 e0 47  and   $47,#$e0
0dd1: 04 47     or    a,$47
0dd3: c4 47     mov   $47,a
0dd5: 8f 6c f2  mov   $f2,#$6c
0dd8: c4 f3     mov   $f3,a
0dda: eb 25     mov   y,$25
0ddc: f6 84 15  mov   a,$1584+y
0ddf: 04 49     or    a,$49
0de1: 2f 1b     bra   $0dfe
0de3: 3f 95 14  call  $1495
0de6: e4 3d     mov   a,$3d
0de8: 08 02     or    a,#$02
0dea: c4 f2     mov   $f2,a
0dec: fa 40 f3  mov   ($f3),($40)
0def: bc        inc   a
0df0: c4 f2     mov   $f2,a
0df2: fa 41 f3  mov   ($f3),($41)
0df5: eb 25     mov   y,$25
0df7: f6 84 15  mov   a,$1584+y
0dfa: 48 ff     eor   a,#$ff
0dfc: 24 49     and   a,$49
0dfe: c4 49     mov   $49,a
0e00: 8f 3d f2  mov   $f2,#$3d
0e03: c4 f3     mov   $f3,a
0e05: f8 24     mov   x,$24
0e07: e4 39     mov   a,$39
0e09: f0 09     beq   $0e14
0e0b: e4 3d     mov   a,$3d
0e0d: 08 04     or    a,#$04
0e0f: c4 f2     mov   $f2,a
0e11: fa 42 f3  mov   ($f3),($42)
0e14: f5 b0 03  mov   a,$03b0+x
0e17: c4 43     mov   $43,a
0e19: f5 c8 03  mov   a,$03c8+x
0e1c: c4 44     mov   $44,a
0e1e: f5 e0 03  mov   a,$03e0+x
0e21: c4 45     mov   $45,a
0e23: f5 68 03  mov   a,$0368+x
0e26: 74 5a     cmp   a,$5a+x
0e28: d0 0f     bne   $0e39
0e2a: f5 98 03  mov   a,$0398+x
0e2d: c4 45     mov   $45,a
0e2f: 38 7f 43  and   $43,#$7f
0e32: e8 00     mov   a,#$00
0e34: d5 10 04  mov   $0410+x,a
0e37: 2f 4b     bra   $0e84
0e39: f5 a0 04  mov   a,$04a0+x
0e3c: 74 5a     cmp   a,$5a+x
0e3e: d0 15     bne   $0e55
0e40: f5 70 04  mov   a,$0470+x
0e43: d5 f8 03  mov   $03f8+x,a
0e46: f5 88 04  mov   a,$0488+x
0e49: d5 10 04  mov   $0410+x,a
0e4c: e8 00     mov   a,#$00
0e4e: d5 28 04  mov   $0428+x,a
0e51: e8 01     mov   a,#$01
0e53: d4 72     mov   $72+x,a
0e55: f5 10 04  mov   a,$0410+x
0e58: f0 2a     beq   $0e84
0e5a: 9b 72     dec   $72+x
0e5c: d0 26     bne   $0e84
0e5e: c4 27     mov   $27,a
0e60: f5 f8 03  mov   a,$03f8+x
0e63: c4 26     mov   $26,a
0e65: f5 28 04  mov   a,$0428+x
0e68: fd        mov   y,a
0e69: f7 26     mov   a,($26)+y
0e6b: 68 ff     cmp   a,#$ff
0e6d: d0 06     bne   $0e75
0e6f: fc        inc   y
0e70: f7 26     mov   a,($26)+y
0e72: fd        mov   y,a
0e73: 2f f4     bra   $0e69
0e75: c4 45     mov   $45,a
0e77: fc        inc   y
0e78: f7 26     mov   a,($26)+y
0e7a: d4 72     mov   $72+x,a
0e7c: fc        inc   y
0e7d: dd        mov   a,y
0e7e: d5 28 04  mov   $0428+x,a
0e81: 38 7f 43  and   $43,#$7f
0e84: e4 43     mov   a,$43
0e86: d5 b0 03  mov   $03b0+x,a
0e89: e4 44     mov   a,$44
0e8b: d5 c8 03  mov   $03c8+x,a
0e8e: e4 45     mov   a,$45
0e90: d5 e0 03  mov   $03e0+x,a
0e93: e4 3d     mov   a,$3d
0e95: 08 07     or    a,#$07
0e97: c4 f2     mov   $f2,a
0e99: fa 45 f3  mov   ($f3),($45)
0e9c: 9c        dec   a
0e9d: c4 f2     mov   $f2,a
0e9f: fa 44 f3  mov   ($f3),($44)
0ea2: 9c        dec   a
0ea3: c4 f2     mov   $f2,a
0ea5: fa 43 f3  mov   ($f3),($43)
0ea8: e4 38     mov   a,$38
0eaa: f0 0a     beq   $0eb6
0eac: eb 25     mov   y,$25
0eae: f6 84 15  mov   a,$1584+y
0eb1: 8f 4c f2  mov   $f2,#$4c
0eb4: c4 f3     mov   $f3,a
0eb6: f8 24     mov   x,$24
0eb8: e4 28     mov   a,$28
0eba: 28 df     and   a,#$df
0ebc: 28 fd     and   a,#$fd
0ebe: d5 18 02  mov   $0218+x,a
0ec1: 5f 0c 0b  jmp   $0b0c

; vcmd dispatch table
0ec4: dw $0f44  ; c0
0ec6: dw $0f44  ; c1
0ec8: dw $0f44  ; c2
0eca: dw $0f44  ; c3
0ecc: dw $0f44  ; c4
0ece: dw $0f4d  ; c5
0ed0: dw $0f5b  ; c6
0ed2: dw $0f61  ; c7
0ed4: dw $0f6d  ; c8
0ed6: dw $0f82  ; c9
0ed8: dw $0f97  ; ca
0eda: dw $0fb6  ; cb
0edc: dw $0fcb  ; cc
0ede: dw $0fd4  ; cd
0ee0: dw $0fda  ; ce
0ee2: dw $0fe3  ; cf
0ee4: dw $0ffa  ; d0
0ee6: dw $1009  ; d1
0ee8: dw $1018  ; d2
0eea: dw $101e  ; d3
0eec: dw $1023  ; d4
0eee: dw $1028  ; d5
0ef0: dw $1031  ; d6
0ef2: dw $103a  ; d7
0ef4: dw $1043  ; d8
0ef6: dw $1053  ; d9
0ef8: dw $1076  ; da
0efa: dw $1089  ; db
0efc: dw $1090  ; dc
0efe: dw $109a  ; dd
0f00: dw $10a6  ; de
0f02: dw $10cf  ; df
0f04: dw $10f8  ; e0
0f06: dw $110e  ; e1
0f08: dw $112f  ; e2
0f0a: dw $113c  ; e3
0f0c: dw $1148  ; e4
0f0e: dw $1154  ; e5
0f10: dw $1163  ; e6
0f12: dw $1169  ; e7
0f14: dw $1186  ; e8
0f16: dw $1197  ; e9
0f18: dw $11c1  ; ea
0f1a: dw $11ed  ; eb
0f1c: dw $11fe  ; ec
0f1e: dw $120f  ; ed
0f20: dw $1234  ; ee
0f22: dw $1257  ; ef
0f24: dw $126a  ; f0
0f26: dw $127f  ; f1
0f28: dw $1285  ; f2
0f2a: dw $128b  ; f3
0f2c: dw $129a  ; f4
0f2e: dw $12a0  ; f5
0f30: dw $12a6  ; f6
0f32: dw $12b9  ; f7
0f34: dw $12ce  ; f8
0f36: dw $12e9  ; f9
0f38: dw $12ef  ; fa
0f3a: dw $12f5  ; fb
0f3c: dw $1322  ; fc
0f3e: dw $1352  ; fd
0f40: dw $1368  ; fe
0f42: dw $1387  ; ff

; vcmd c0-c4
0f44: f7 26     mov   a,($26)+y
0f46: c4 fa     mov   $fa,a
0f48: 3a 26     incw  $26
0f4a: 5f 3c 0b  jmp   $0b3c

; vcmd c5
0f4d: e4 59     mov   a,$59
0f4f: f0 03     beq   $0f54
0f51: 5f 2f 11  jmp   $112f

0f54: 3a 26     incw  $26
0f56: 3a 26     incw  $26
0f58: 5f 3c 0b  jmp   $0b3c

; vcmd c6
0f5b: 8f ff 59  mov   $59,#$ff
0f5e: 5f 3c 0b  jmp   $0b3c

; vcmd c7
0f61: f7 26     mov   a,($26)+y
0f63: c4 30     mov   $30,a
0f65: 3a 26     incw  $26
0f67: 8f 00 32  mov   $32,#$00
0f6a: 5f 3c 0b  jmp   $0b3c

; vcmd c8
0f6d: f7 26     mov   a,($26)+y
0f6f: c4 31     mov   $31,a
0f71: 3a 26     incw  $26
0f73: f7 26     mov   a,($26)+y
0f75: c4 32     mov   $32,a
0f77: 3a 26     incw  $26
0f79: 8f 00 34  mov   $34,#$00
0f7c: 8f 00 33  mov   $33,#$00
0f7f: 5f 3c 0b  jmp   $0b3c

; vcmd c9
0f82: f7 26     mov   a,($26)+y
0f84: c4 31     mov   $31,a
0f86: 3a 26     incw  $26
0f88: f7 26     mov   a,($26)+y
0f8a: c4 32     mov   $32,a
0f8c: 3a 26     incw  $26
0f8e: 8f 01 34  mov   $34,#$01
0f91: 8f 00 33  mov   $33,#$00
0f94: 5f 3c 0b  jmp   $0b3c

; vcmd ca
0f97: e4 54     mov   a,$54
0f99: f0 18     beq   $0fb3
0f9b: fa 55 4c  mov   ($4c),($55)
0f9e: fa 56 4d  mov   ($4d),($56)
0fa1: fa 57 4e  mov   ($4e),($57)
0fa4: fa 58 4f  mov   ($4f),($58)
0fa7: 8f 0d f2  mov   $f2,#$0d
0faa: fa 4f f3  mov   ($f3),($4f)
0fad: 3f 17 14  call  $1417
0fb0: 8f 00 54  mov   $54,#$00
0fb3: 5f 3c 0b  jmp   $0b3c

; vcmd cb
0fb6: e4 54     mov   a,$54
0fb8: d0 0e     bne   $0fc8
0fba: fa 4c 55  mov   ($55),($4c)
0fbd: fa 4d 56  mov   ($56),($4d)
0fc0: fa 4e 57  mov   ($57),($4e)
0fc3: fa 4f 58  mov   ($58),($4f)
0fc6: 8b 54     dec   $54
0fc8: 5f 3c 0b  jmp   $0b3c

; vcmd cc
0fcb: f7 26     mov   a,($26)+y
0fcd: c4 36     mov   $36,a
0fcf: 3a 26     incw  $26
0fd1: 5f 3c 0b  jmp   $0b3c

; vcmd cd
0fd4: 38 fe 28  and   $28,#$fe
0fd7: 5f 3c 0b  jmp   $0b3c

; vcmd ce
0fda: 18 01 28  or    $28,#$01
0fdd: 18 20 28  or    $28,#$20
0fe0: 5f 3c 0b  jmp   $0b3c

; vcmd cf
0fe3: f8 24     mov   x,$24
0fe5: f7 26     mov   a,($26)+y
0fe7: d5 78 05  mov   $0578+x,a
0fea: 3a 26     incw  $26
0fec: f7 26     mov   a,($26)+y
0fee: d5 90 05  mov   $0590+x,a
0ff1: 3a 26     incw  $26
0ff3: e8 01     mov   a,#$01
0ff5: d4 ba     mov   $ba+x,a
0ff7: 5f 3c 0b  jmp   $0b3c

; vcmd d0
0ffa: f8 24     mov   x,$24
0ffc: e8 80     mov   a,#$80
0ffe: d5 f0 05  mov   $05f0+x,a
1001: e8 14     mov   a,#$14
1003: d5 08 06  mov   $0608+x,a
1006: 5f 3c 0b  jmp   $0b3c

; vcmd d1
1009: f8 24     mov   x,$24
100b: e8 6b     mov   a,#$6b
100d: d5 f0 05  mov   $05f0+x,a
1010: e8 14     mov   a,#$14
1012: d5 08 06  mov   $0608+x,a
1015: 5f 3c 0b  jmp   $0b3c

; vcmd d2
1018: 38 f7 28  and   $28,#$f7
101b: 5f 3c 0b  jmp   $0b3c

; vcmd d3
101e: ab 13     inc   $13
1020: 5f 3c 0b  jmp   $0b3c

; vcmd d4
1023: ab 12     inc   $12
1025: 5f 3c 0b  jmp   $0b3c

; vcmd d5
1028: f7 26     mov   a,($26)+y
102a: c4 0d     mov   $0d,a
102c: 3a 26     incw  $26
102e: 5f 3c 0b  jmp   $0b3c

; vcmd d6
1031: f7 26     mov   a,($26)+y
1033: c4 0c     mov   $0c,a
1035: 3a 26     incw  $26
1037: 5f 3c 0b  jmp   $0b3c

; vcmd d7
103a: f7 26     mov   a,($26)+y
103c: c4 0b     mov   $0b,a
103e: 3a 26     incw  $26
1040: 5f 3c 0b  jmp   $0b3c

; vcmd d8
1043: f8 24     mov   x,$24
1045: f7 26     mov   a,($26)+y
1047: 60        clrc
1048: 95 60 02  adc   a,$0260+x
104b: d5 60 02  mov   $0260+x,a
104e: 3a 26     incw  $26
1050: 5f 3c 0b  jmp   $0b3c

; vcmd d9
1053: f8 24     mov   x,$24
1055: f7 26     mov   a,($26)+y
1057: d5 20 06  mov   $0620+x,a
105a: 3a 26     incw  $26
105c: f7 26     mov   a,($26)+y
105e: d5 38 06  mov   $0638+x,a
1061: 3a 26     incw  $26
1063: f7 26     mov   a,($26)+y
1065: d5 68 06  mov   $0668+x,a
1068: e8 01     mov   a,#$01
106a: d4 a2     mov   $a2+x,a
106c: e8 00     mov   a,#$00
106e: d5 50 06  mov   $0650+x,a
1071: 3a 26     incw  $26
1073: 5f 3c 0b  jmp   $0b3c

; vcmd da
1076: f8 24     mov   x,$24
1078: f7 26     mov   a,($26)+y
107a: d5 f0 05  mov   $05f0+x,a
107d: 3a 26     incw  $26
107f: f7 26     mov   a,($26)+y
1081: d5 08 06  mov   $0608+x,a
1084: 3a 26     incw  $26
1086: 5f 3c 0b  jmp   $0b3c

; vcmd db
1089: 3a 26     incw  $26
108b: 3a 26     incw  $26
108d: 5f 3c 0b  jmp   $0b3c

; vcmd dc
1090: f8 24     mov   x,$24
1092: e8 00     mov   a,#$00
1094: d5 00 05  mov   $0500+x,a
1097: 5f 3c 0b  jmp   $0b3c

; vcmd dd
109a: f8 24     mov   x,$24
109c: f7 26     mov   a,($26)+y
109e: d5 00 05  mov   $0500+x,a
10a1: 3a 26     incw  $26
10a3: 5f 3c 0b  jmp   $0b3c

; vcmd de
10a6: f8 24     mov   x,$24
10a8: f5 c8 06  mov   a,$06c8+x
10ab: f0 0f     beq   $10bc
10ad: 9c        dec   a
10ae: d0 0e     bne   $10be
10b0: d5 c8 06  mov   $06c8+x,a
10b3: 3a 26     incw  $26
10b5: 3a 26     incw  $26
10b7: 3a 26     incw  $26
10b9: 5f 3c 0b  jmp   $0b3c

10bc: f7 26     mov   a,($26)+y
10be: d5 c8 06  mov   $06c8+x,a
10c1: fc        inc   y
10c2: f7 26     mov   a,($26)+y
10c4: 5d        mov   x,a
10c5: fc        inc   y
10c6: f7 26     mov   a,($26)+y
10c8: c4 27     mov   $27,a
10ca: d8 26     mov   $26,x
10cc: 5f 3c 0b  jmp   $0b3c

; vcmd df
10cf: f8 24     mov   x,$24
10d1: f5 b0 06  mov   a,$06b0+x
10d4: f0 0f     beq   $10e5
10d6: 9c        dec   a
10d7: d0 0e     bne   $10e7
10d9: d5 b0 06  mov   $06b0+x,a
10dc: 3a 26     incw  $26
10de: 3a 26     incw  $26
10e0: 3a 26     incw  $26
10e2: 5f 3c 0b  jmp   $0b3c

10e5: f7 26     mov   a,($26)+y
10e7: d5 b0 06  mov   $06b0+x,a
10ea: fc        inc   y
10eb: f7 26     mov   a,($26)+y
10ed: 5d        mov   x,a
10ee: fc        inc   y
10ef: f7 26     mov   a,($26)+y
10f1: c4 27     mov   $27,a
10f3: d8 26     mov   $26,x
10f5: 5f 3c 0b  jmp   $0b3c

; vcmd e0
10f8: f8 24     mov   x,$24
10fa: f5 98 06  mov   a,$0698+x
10fd: f0 0c     beq   $110b
10ff: c4 27     mov   $27,a
1101: f5 80 06  mov   a,$0680+x
1104: c4 26     mov   $26,a
1106: e8 00     mov   a,#$00
1108: d5 98 06  mov   $0698+x,a
110b: 5f 3c 0b  jmp   $0b3c

; vcmd e1
110e: f8 24     mov   x,$24
1110: f7 26     mov   a,($26)+y
1112: c4 00     mov   $00,a
1114: 3a 26     incw  $26
1116: f7 26     mov   a,($26)+y
1118: c4 01     mov   $01,a
111a: 3a 26     incw  $26
111c: e4 26     mov   a,$26
111e: d5 80 06  mov   $0680+x,a
1121: e4 27     mov   a,$27
1123: d5 98 06  mov   $0698+x,a
1126: fa 00 26  mov   ($26),($00)
1129: fa 01 27  mov   ($27),($01)
112c: 5f 3c 0b  jmp   $0b3c

; vcmd e2
112f: f7 26     mov   a,($26)+y
1131: 5d        mov   x,a
1132: fc        inc   y
1133: f7 26     mov   a,($26)+y
1135: c4 27     mov   $27,a
1137: d8 26     mov   $26,x
1139: 5f 3c 0b  jmp   $0b3c

; vcmd e3
113c: f8 24     mov   x,$24
113e: f7 26     mov   a,($26)+y
1140: d5 60 02  mov   $0260+x,a
1143: 3a 26     incw  $26
1145: 5f 3c 0b  jmp   $0b3c

; vcmd e4
1148: f8 24     mov   x,$24
114a: f7 26     mov   a,($26)+y
114c: d5 78 02  mov   $0278+x,a
114f: 3a 26     incw  $26
1151: 5f 3c 0b  jmp   $0b3c

; vcmd e5
1154: f8 24     mov   x,$24
1156: f7 26     mov   a,($26)+y
1158: d5 38 03  mov   $0338+x,a
115b: 3a 26     incw  $26
115d: 18 04 28  or    $28,#$04
1160: 5f 3c 0b  jmp   $0b3c

; vcmd e6
1163: 38 fb 28  and   $28,#$fb
1166: 5f 3c 0b  jmp   $0b3c

; vcmd e7
1169: f8 24     mov   x,$24
116b: f7 26     mov   a,($26)+y
116d: d5 38 03  mov   $0338+x,a
1170: 3a 26     incw  $26
1172: f7 26     mov   a,($26)+y
1174: d5 f0 02  mov   $02f0+x,a
1177: 3a 26     incw  $26
1179: f7 26     mov   a,($26)+y
117b: d5 08 03  mov   $0308+x,a
117e: 3a 26     incw  $26
1180: 18 04 28  or    $28,#$04
1183: 5f 3c 0b  jmp   $0b3c

; vcmd e8
1186: f8 24     mov   x,$24
1188: f7 26     mov   a,($26)+y
118a: 3a 26     incw  $26
118c: d5 d8 02  mov   $02d8+x,a
118f: e8 ff     mov   a,#$ff
1191: d5 c0 02  mov   $02c0+x,a
1194: 5f 3c 0b  jmp   $0b3c

; vcmd e9
1197: f8 24     mov   x,$24
1199: f7 26     mov   a,($26)+y
119b: 30 04     bmi   $11a1
119d: 60        clrc
119e: 95 60 02  adc   a,$0260+x
11a1: d5 a8 02  mov   $02a8+x,a
11a4: 3a 26     incw  $26
11a6: f7 26     mov   a,($26)+y
11a8: 30 04     bmi   $11ae
11aa: 60        clrc
11ab: 95 60 02  adc   a,$0260+x
11ae: d5 c0 02  mov   $02c0+x,a
11b1: f5 78 02  mov   a,$0278+x
11b4: d5 90 02  mov   $0290+x,a
11b7: 3a 26     incw  $26
11b9: e8 00     mov   a,#$00
11bb: d5 d8 02  mov   $02d8+x,a
11be: 5f ba 0b  jmp   $0bba

; vcmd ea
11c1: f8 24     mov   x,$24
11c3: f7 26     mov   a,($26)+y
11c5: 10 11     bpl   $11d8
11c7: 48 ff     eor   a,#$ff
11c9: bc        inc   a
11ca: c4 00     mov   $00,a
11cc: f5 60 05  mov   a,$0560+x
11cf: 80        setc
11d0: a4 00     sbc   a,$00
11d2: b0 0c     bcs   $11e0
11d4: e8 00     mov   a,#$00
11d6: 2f 08     bra   $11e0
11d8: 60        clrc
11d9: 95 60 05  adc   a,$0560+x
11dc: 90 02     bcc   $11e0
11de: e8 ff     mov   a,#$ff
11e0: d5 60 05  mov   $0560+x,a
11e3: 3a 26     incw  $26
11e5: e8 00     mov   a,#$00
11e7: d5 90 05  mov   $0590+x,a
11ea: 5f 3c 0b  jmp   $0b3c

; vcmd eb
11ed: f8 24     mov   x,$24
11ef: f7 26     mov   a,($26)+y
11f1: d5 d8 05  mov   $05d8+x,a
11f4: 3a 26     incw  $26
11f6: e8 00     mov   a,#$00
11f8: d5 38 06  mov   $0638+x,a
11fb: 5f 3c 0b  jmp   $0b3c

; vcmd ec
11fe: f8 24     mov   x,$24
1200: f7 26     mov   a,($26)+y
1202: d5 60 05  mov   $0560+x,a
1205: 3a 26     incw  $26
1207: e8 00     mov   a,#$00
1209: d5 90 05  mov   $0590+x,a
120c: 5f 3c 0b  jmp   $0b3c

; vcmd ed
120f: f8 24     mov   x,$24
1211: f7 26     mov   a,($26)+y
1213: d5 48 05  mov   $0548+x,a
1216: 3a 26     incw  $26
1218: f7 26     mov   a,($26)+y
121a: d5 18 05  mov   $0518+x,a
121d: 3a 26     incw  $26
121f: f7 26     mov   a,($26)+y
1221: d5 30 05  mov   $0530+x,a
1224: 3a 26     incw  $26
1226: 38 ef 28  and   $28,#$ef
1229: e8 00     mov   a,#$00
122b: d5 b8 04  mov   $04b8+x,a
122e: 18 08 28  or    $28,#$08
1231: 5f 3c 0b  jmp   $0b3c

; vcmd ee
1234: f8 24     mov   x,$24
1236: 3f 9c 13  call  $139c
1239: 3f cc 13  call  $13cc
123c: f5 d0 04  mov   a,$04d0+x
123f: d5 f8 03  mov   $03f8+x,a
1242: f5 e8 04  mov   a,$04e8+x
1245: d5 10 04  mov   $0410+x,a
1248: e8 00     mov   a,#$00
124a: d5 28 04  mov   $0428+x,a
124d: e8 01     mov   a,#$01
124f: d4 72     mov   $72+x,a
1251: 18 20 28  or    $28,#$20
1254: 5f c7 0b  jmp   $0bc7

; vcmd ef
1257: f8 24     mov   x,$24
1259: f7 26     mov   a,($26)+y
125b: d5 d0 04  mov   $04d0+x,a
125e: 3a 26     incw  $26
1260: f7 26     mov   a,($26)+y
1262: d5 e8 04  mov   $04e8+x,a
1265: 3a 26     incw  $26
1267: 5f 3c 0b  jmp   $0b3c

; vcmd f0
126a: f8 24     mov   x,$24
126c: f7 26     mov   a,($26)+y
126e: d5 80 03  mov   $0380+x,a
1271: 3a 26     incw  $26
1273: f7 26     mov   a,($26)+y
1275: 08 80     or    a,#$80
1277: d5 98 03  mov   $0398+x,a
127a: 3a 26     incw  $26
127c: 5f 3c 0b  jmp   $0b3c

; vcmd f1
127f: 38 ef 28  and   $28,#$ef
1282: 5f 3c 0b  jmp   $0b3c

; vcmd f2
1285: 18 10 28  or    $28,#$10
1288: 5f 3c 0b  jmp   $0b3c

; vcmd f3
128b: f8 24     mov   x,$24
128d: f7 26     mov   a,($26)+y
128f: d5 b8 04  mov   $04b8+x,a
1292: 3a 26     incw  $26
1294: 38 ef 28  and   $28,#$ef
1297: 5f 3c 0b  jmp   $0b3c

; vcmd f4
129a: 18 20 28  or    $28,#$20
129d: 5f ba 0b  jmp   $0bba

; vcmd f5
12a0: 18 20 28  or    $28,#$20
12a3: 5f 3c 0b  jmp   $0b3c

; vcmd f6
12a6: f8 24     mov   x,$24
12a8: f7 26     mov   a,($26)+y
12aa: d5 70 04  mov   $0470+x,a
12ad: 3a 26     incw  $26
12af: f7 26     mov   a,($26)+y
12b1: d5 88 04  mov   $0488+x,a
12b4: 3a 26     incw  $26
12b6: 5f 3c 0b  jmp   $0b3c

; vcmd f7
12b9: f7 26     mov   a,($26)+y
12bb: c4 50     mov   $50,a
12bd: 3a 26     incw  $26
12bf: f7 26     mov   a,($26)+y
12c1: c4 51     mov   $51,a
12c3: 3a 26     incw  $26
12c5: 8f 01 53  mov   $53,#$01
12c8: 8f 00 52  mov   $52,#$00
12cb: 5f 3c 0b  jmp   $0b3c

; vcmd f8
12ce: f7 26     mov   a,($26)+y
12d0: c4 4c     mov   $4c,a
12d2: 3a 26     incw  $26
12d4: f7 26     mov   a,($26)+y
12d6: c4 4d     mov   $4d,a
12d8: 3a 26     incw  $26
12da: f7 26     mov   a,($26)+y
12dc: c4 4e     mov   $4e,a
12de: 3a 26     incw  $26
12e0: 3f 17 14  call  $1417
12e3: 8f 00 51  mov   $51,#$00
12e6: 5f 3c 0b  jmp   $0b3c

; vcmd f9
12e9: 38 bf 28  and   $28,#$bf
12ec: 5f 3c 0b  jmp   $0b3c

; vcmd fa
12ef: 18 40 28  or    $28,#$40
12f2: 5f 3c 0b  jmp   $0b3c

; vcmd fb
12f5: 8f 04 4b  mov   $4b,#$04
12f8: f7 26     mov   a,($26)+y
12fa: c4 4f     mov   $4f,a
12fc: 3a 26     incw  $26
12fe: f7 26     mov   a,($26)+y
1300: c4 4c     mov   $4c,a
1302: 3a 26     incw  $26
1304: f7 26     mov   a,($26)+y
1306: c4 4d     mov   $4d,a
1308: 3a 26     incw  $26
130a: f7 26     mov   a,($26)+y
130c: c4 4e     mov   $4e,a
130e: 3a 26     incw  $26
1310: 3f ed 13  call  $13ed
1313: 8f 0d f2  mov   $f2,#$0d
1316: fa 4f f3  mov   ($f3),($4f)
1319: 3f 17 14  call  $1417
131c: 8f 00 51  mov   $51,#$00
131f: 5f 3c 0b  jmp   $0b3c

; vcmd fc
1322: f8 24     mov   x,$24
1324: f7 26     mov   a,($26)+y
1326: 10 12     bpl   $133a
1328: d5 b0 03  mov   $03b0+x,a
132b: 3a 26     incw  $26
132d: f7 26     mov   a,($26)+y
132f: d5 c8 03  mov   $03c8+x,a
1332: 3a 26     incw  $26
1334: 38 7f 28  and   $28,#$7f
1337: 5f 3c 0b  jmp   $0b3c

133a: 3a 26     incw  $26
133c: f5 50 03  mov   a,$0350+x
133f: fd        mov   y,a
1340: f6 00 1f  mov   a,$1f00+y
1343: d5 b0 03  mov   $03b0+x,a
1346: f6 00 20  mov   a,$2000+y
1349: d5 c8 03  mov   $03c8+x,a
134c: 38 7f 28  and   $28,#$7f
134f: 5f 3c 0b  jmp   $0b3c

; vcmd fd
1352: f8 24     mov   x,$24
1354: f7 26     mov   a,($26)+y
1356: d5 40 04  mov   $0440+x,a
1359: 3a 26     incw  $26
135b: f7 26     mov   a,($26)+y
135d: d5 58 04  mov   $0458+x,a
1360: 3a 26     incw  $26
1362: 18 80 28  or    $28,#$80
1365: 5f 3c 0b  jmp   $0b3c

; vcmd fe
1368: f8 24     mov   x,$24
136a: f7 26     mov   a,($26)+y
136c: 3a 26     incw  $26
136e: d5 50 03  mov   $0350+x,a
1371: fd        mov   y,a
1372: f6 00 1f  mov   a,$1f00+y
1375: d5 b0 03  mov   $03b0+x,a
1378: f6 00 20  mov   a,$2000+y
137b: d5 c8 03  mov   $03c8+x,a
137e: 38 7f 28  and   $28,#$7f
1381: 8f ff 39  mov   $39,#$ff
1384: 5f 3c 0b  jmp   $0b3c

; vcmd ff
1387: e8 00     mov   a,#$00
1389: f8 24     mov   x,$24
138b: d5 00 02  mov   $0200+x,a
138e: 7d        mov   a,x
138f: 08 80     or    a,#$80
1391: f8 25     mov   x,$25
1393: 74 1c     cmp   a,$1c+x
1395: d0 04     bne   $139b
1397: e8 7f     mov   a,#$7f
1399: d4 1c     mov   $1c+x,a
139b: 6f        ret

139c: f5 00 05  mov   a,$0500+x
139f: d0 04     bne   $13a5
13a1: f7 26     mov   a,($26)+y
13a3: 3a 26     incw  $26
13a5: d4 5a     mov   $5a+x,a
13a7: f5 80 03  mov   a,$0380+x
13aa: d5 68 03  mov   $0368+x,a
13ad: 6f        ret

13ae: e4 28     mov   a,$28
13b0: 28 10     and   a,#$10
13b2: f0 08     beq   $13bc
13b4: f7 26     mov   a,($26)+y
13b6: d5 a0 04  mov   $04a0+x,a
13b9: 3a 26     incw  $26
13bb: 6f        ret

13bc: f5 5a 00  mov   a,$005a+x
13bf: 5c        lsr   a
13c0: 75 b8 04  cmp   a,$04b8+x
13c3: 90 03     bcc   $13c8
13c5: f5 b8 04  mov   a,$04b8+x
13c8: d5 a0 04  mov   $04a0+x,a
13cb: 6f        ret

13cc: e4 28     mov   a,$28
13ce: 28 01     and   a,#$01
13d0: d0 12     bne   $13e4
13d2: f7 26     mov   a,($26)+y
13d4: 68 ee     cmp   a,#$ee
13d6: f0 0c     beq   $13e4
13d8: 68 f4     cmp   a,#$f4
13da: f0 08     beq   $13e4
13dc: 68 ce     cmp   a,#$ce
13de: f0 04     beq   $13e4
13e0: 68 f5     cmp   a,#$f5
13e2: d0 08     bne   $13ec
13e4: e8 00     mov   a,#$00
13e6: d5 a0 04  mov   $04a0+x,a
13e9: d5 68 03  mov   $0368+x,a
13ec: 6f        ret

13ed: e8 00     mov   a,#$00
13ef: 8f 2c f2  mov   $f2,#$2c
13f2: c4 f3     mov   $f3,a
13f4: 8f 3c f2  mov   $f2,#$3c
13f7: c4 f3     mov   $f3,a
13f9: eb 4b     mov   y,$4b
13fb: dd        mov   a,y
13fc: bc        inc   a
13fd: bc        inc   a
13fe: c4 4a     mov   $4a,a
1400: 8f 0d f2  mov   $f2,#$0d
1403: 8f 01 f3  mov   $f3,#$01
1406: 6f        ret

1407: db $ff,$f8,$f0,$e8,$e0,$d8,$d0,$c8
140f: db $c0,$b8,$b0,$a8,$a0,$98,$90,$88

1417: e4 4a     mov   a,$4a
1419: d0 23     bne   $143e
141b: 8f 0d f2  mov   $f2,#$0d
141e: fa 4f f3  mov   ($f3),($4f)
1421: e4 1b     mov   a,$1b
1423: d0 0d     bne   $1432
1425: 8f 2c f2  mov   $f2,#$2c
1428: fa 4c f3  mov   ($f3),($4c)
142b: 8f 3c f2  mov   $f2,#$3c
142e: fa 4d f3  mov   ($f3),($4d)
1431: 6f        ret

1432: e4 4e     mov   a,$4e
1434: 8f 2c f2  mov   $f2,#$2c
1437: c4 f3     mov   $f3,a
1439: 8f 3c f2  mov   $f2,#$3c
143c: c4 f3     mov   $f3,a
143e: 6f        ret

143f: e4 1b     mov   a,$1b
1441: f0 03     beq   $1446
1443: 8f 0a 2c  mov   $2c,#$0a
1446: e8 14     mov   a,#$14
1448: 80        setc
1449: a4 2c     sbc   a,$2c
144b: fd        mov   y,a
144c: f7 2d     mov   a,($2d)+y
144e: c4 00     mov   $00,a
1450: eb 2c     mov   y,$2c
1452: f7 2d     mov   a,($2d)+y
1454: c4 01     mov   $01,a
1456: eb 2b     mov   y,$2b
1458: e4 00     mov   a,$00
145a: cf        mul   ya
145b: f0 01     beq   $145e
145d: fc        inc   y
145e: cb 3e     mov   $3e,y
1460: eb 2b     mov   y,$2b
1462: e4 01     mov   a,$01
1464: cf        mul   ya
1465: f0 01     beq   $1468
1467: fc        inc   y
1468: cb 3f     mov   $3f,y
146a: 6f        ret

146b: db $00,$01,$03,$07,$0d,$15,$1e,$29
1473: db $34,$42,$51,$5e,$67,$6e,$73,$77
147b: db $7a,$7c,$7d,$7e,$7f

1480: db $1e,$28,$32,$3c,$46,$50,$5a,$64
1488: db $6e,$78,$7f,$7f,$7f,$7f,$7f,$7f
1490: db $7f,$7f,$7f,$7f,$7f

1495: f8 42     mov   x,$42
1497: f5 00 21  mov   a,$2100+x
149a: 60        clrc
149b: 84 2a     adc   a,$2a
149d: c4 2a     mov   $2a,a
149f: f5 00 22  mov   a,$2200+x
14a2: 60        clrc
14a3: 84 29     adc   a,$29
14a5: c4 29     mov   $29,a
14a7: 90 02     bcc   $14ab
14a9: ab 2a     inc   $2a
14ab: f8 2a     mov   x,$2a
14ad: f5 f2 14  mov   a,$14f2+x
14b0: c4 00     mov   $00,a
14b2: 9f        xcn   a
14b3: 28 0f     and   a,#$0f
14b5: 5d        mov   x,a
14b6: f5 6a 15  mov   a,$156a+x
14b9: c4 41     mov   $41,a
14bb: f5 77 15  mov   a,$1577+x
14be: c4 40     mov   $40,a
14c0: f5 6b 15  mov   a,$156b+x
14c3: fd        mov   y,a
14c4: f5 78 15  mov   a,$1578+x
14c7: 9a 40     subw  ya,$40
14c9: cb 01     mov   $01,y
14cb: eb 29     mov   y,$29
14cd: cf        mul   ya
14ce: e4 01     mov   a,$01
14d0: cb 01     mov   $01,y
14d2: eb 29     mov   y,$29
14d4: cf        mul   ya
14d5: 8f 00 02  mov   $02,#$00
14d8: 7a 01     addw  ya,$01
14da: 7a 40     addw  ya,$40
14dc: cb 41     mov   $41,y
14de: c4 40     mov   $40,a
14e0: e4 00     mov   a,$00
14e2: 28 0f     and   a,#$0f
14e4: f0 09     beq   $14ef
14e6: 5d        mov   x,a
14e7: e4 40     mov   a,$40
14e9: 4b 41     lsr   $41
14eb: 7c        ror   a
14ec: 1d        dec   x
14ed: d0 fa     bne   $14e9
14ef: c4 40     mov   $40,a
14f1: 6f        ret

14f2: db             $39,$49,$59,$69,$79,$89,$99,$a9,$b9
14fb: db $08,$18,$28,$38,$48,$58,$68,$78,$88,$98,$a8,$b8
1507: db $07,$17,$27,$37,$47,$57,$67,$77,$87,$97,$a7,$b7
1513: db $06,$16,$26,$36,$46,$56,$66,$76,$86,$96,$a6,$b6
151f: db $05,$15,$25,$35,$45,$55,$65,$75,$85,$95,$a5,$b5
152b: db $04,$14,$24,$34,$44,$54,$64,$74,$84,$94,$a4,$b4
1537: db $03,$13,$23,$33,$43,$53,$63,$73,$83,$93,$a3,$b3
1543: db $02,$12,$22,$32,$42,$52,$62,$72,$82,$92,$a2,$b2
154f: db $01,$11,$21,$31,$41,$51,$61,$71,$81,$91,$a1,$b1
155b: db $00,$10,$20,$30,$40,$50,$60,$70,$80,$90,$a0,$b0
1567: db $00,$10,$20

156a: db $20,$21,$23,$26,$28,$2a,$2d,$2f,$32,$35,$39,$3c,$40
1577: db $00,$e8,$ec,$0e,$52,$b8,$42,$f2,$c4,$d2,$04,$68,$00

1583: db $01,$02,$04,$08,$10,$20,$40,$80

158c: 8f 6c f2  mov   $f2,#$6c
158f: 8f ff f3  mov   $f3,#$ff
1592: 8d 15     mov   y,#$15
1594: e8 c9     mov   a,#$c9
1596: da 00     movw  $00,ya
1598: 8d 03     mov   y,#$03
159a: cd 3c     mov   x,#$3c
159c: 3f ba 15  call  $15ba
159f: 8d 15     mov   y,#$15
15a1: e8 cd     mov   a,#$cd
15a3: da 00     movw  $00,ya
15a5: 8d 07     mov   y,#$07
15a7: cd 7d     mov   x,#$7d
15a9: 3f ba 15  call  $15ba
15ac: 8d 15     mov   y,#$15
15ae: e8 d5     mov   a,#$d5
15b0: da 00     movw  $00,ya
15b2: 8d 07     mov   y,#$07
15b4: cd 7f     mov   x,#$7f
15b6: 3f ba 15  call  $15ba
15b9: 6f        ret

15ba: d8 f2     mov   $f2,x
15bc: f7 00     mov   a,($00)+y
15be: c4 f3     mov   $f3,a
15c0: 7d        mov   a,x
15c1: 80        setc
15c2: a8 10     sbc   a,#$10
15c4: 5d        mov   x,a
15c5: dc        dec   y
15c6: 10 f2     bpl   $15ba
15c8: 6f        ret

15c9: 00
15ca: 01
15cb: 00
15cc: 00
15cd: 00
15ce: 00
15cf: 00
15d0: 00
15d1: 00
15d2: 1b e0
15d4: 04 ff
15d6: 08 17
15d8: 24 24
15da: 17 08
15dc: ff

15dd: 3f e4 15  call  $15e4
15e0: 3f fa 15  call  $15fa
15e3: 6f        ret

15e4: e4 f4     mov   a,$f4
15e6: 64 f4     cmp   a,$f4
15e8: d0 fa     bne   $15e4
15ea: 64 0e     cmp   a,$0e
15ec: f0 0b     beq   $15f9
15ee: c4 0e     mov   $0e,a
15f0: fa f6 10  mov   ($10),($f6)
15f3: fa 0e f4  mov   ($f4),($0e)
15f6: 3f 15 16  call  $1615
15f9: 6f        ret

15fa: e4 f5     mov   a,$f5
15fc: 64 f5     cmp   a,$f5
15fe: d0 fa     bne   $15fa
1600: 64 0f     cmp   a,$0f
1602: f0 10     beq   $1614
1604: c4 0f     mov   $0f,a
1606: e4 f7     mov   a,$f7
1608: 64 f7     cmp   a,$f7
160a: d0 ee     bne   $15fa
160c: c4 11     mov   $11,a
160e: fa 0f f5  mov   ($f5),($0f)
1611: fa 11 09  mov   ($09),($11)
1614: 6f        ret

1615: e4 10     mov   a,$10
1617: 80        setc
1618: a8 f0     sbc   a,#$f0
161a: b0 04     bcs   $1620
161c: fa 10 08  mov   ($08),($10)
161f: 6f        ret

1620: 1c        asl   a
1621: 5d        mov   x,a
1622: 1f 25 16  jmp   ($1625+x)

1625: ee        pop   y
1626: 16 01 17  or    a,$1701+y
1629: 14 17     or    a,$17+x
162b: 45 16 45  eor   a,$4516
162e: 16 1b 17  or    a,$171b+y
1631: 22 17     set1  $17
1633: 45 16 45  eor   a,$4516
1636: 16 45 16  or    a,$1645+y
1639: 45 16 45  eor   a,$4516
163c: 16 45 16  or    a,$1645+y
163f: 3a 09     incw  $09
1641: 46        eor   a,(x)
1642: 16 45 16  or    a,$1645+y
1645: 6f        ret

1646: 3f 3a 09  call  $093a
1649: 8f 01 14  mov   $14,#$01
164c: e4 f4     mov   a,$f4
164e: 64 f4     cmp   a,$f4
1650: d0 fa     bne   $164c
1652: 64 0e     cmp   a,$0e
1654: f0 0e     beq   $1664
1656: c4 0e     mov   $0e,a
1658: fa f5 0f  mov   ($0f),($f5)
165b: fa f6 10  mov   ($10),($f6)
165e: fa f7 11  mov   ($11),($f7)
1661: 3f 69 16  call  $1669
1664: e4 14     mov   a,$14
1666: d0 e4     bne   $164c
1668: 6f        ret

1669: e4 0f     mov   a,$0f
166b: 1c        asl   a
166c: 5d        mov   x,a
166d: 1f 70 16  jmp   ($1670+x)

1670: 89 16 a8  adc   ($a8),($16)
1673: 16 b4 16  or    a,$16b4+y
1676: cd 16     mov   x,#$16
1678: 7c        ror   a
1679: 16 dd 16  or    a,$16dd+y
167c: fa 11 f7  mov   ($f7),($11)
167f: fa 10 f6  mov   ($f6),($10)
1682: fa 0f f5  mov   ($f5),($0f)
1685: fa 0e f4  mov   ($f4),($0e)
1688: 6f        ret

1689: 8f 00 14  mov   $14,#$00
168c: 8f 00 f1  mov   $f1,#$00
168f: 8f 01 f1  mov   $f1,#$01
1692: 8f 00 0f  mov   $0f,#$00
1695: fa 12 10  mov   ($10),($12)
1698: fa 13 11  mov   ($11),($13)
169b: fa 11 f7  mov   ($f7),($11)
169e: fa 10 f6  mov   ($f6),($10)
16a1: fa 0f f5  mov   ($f5),($0f)
16a4: fa 0e f4  mov   ($f4),($0e)
16a7: 6f        ret

16a8: fa 0e f4  mov   ($f4),($0e)
16ab: e4 10     mov   a,$10
16ad: eb 11     mov   y,$11
16af: da 15     movw  $15,ya
16b1: da 17     movw  $17,ya
16b3: 6f        ret

16b4: fa 0e f4  mov   ($f4),($0e)
16b7: 8d 00     mov   y,#$00
16b9: e4 10     mov   a,$10
16bb: d7 15     mov   ($15)+y,a
16bd: 3a 15     incw  $15
16bf: e4 11     mov   a,$11
16c1: d7 15     mov   ($15)+y,a
16c3: 3a 15     incw  $15
16c5: fd        mov   y,a
16c6: e4 10     mov   a,$10
16c8: 7a 17     addw  ya,$17
16ca: da 17     movw  $17,ya
16cc: 6f        ret

16cd: fa 0e f4  mov   ($f4),($0e)
16d0: e4 10     mov   a,$10
16d2: 8d 00     mov   y,#$00
16d4: d7 15     mov   ($15)+y,a
16d6: 3a 15     incw  $15
16d8: 7a 17     addw  ya,$17
16da: da 17     movw  $17,ya
16dc: 6f        ret

16dd: ba 17     movw  ya,$17
16df: da 10     movw  $10,ya
16e1: fa 11 f7  mov   ($f7),($11)
16e4: fa 10 f6  mov   ($f6),($10)
16e7: fa 0f f5  mov   ($f5),($0f)
16ea: fa 0e f4  mov   ($f4),($0e)
16ed: 6f        ret

16ee: 3f 29 17  call  $1729
16f1: fa 10 31  mov   ($31),($10)
16f4: 3f 29 17  call  $1729
16f7: fa 10 32  mov   ($32),($10)
16fa: 8f 00 34  mov   $34,#$00
16fd: 8f 00 33  mov   $33,#$00
1700: 6f        ret

1701: 3f 29 17  call  $1729
1704: fa 10 31  mov   ($31),($10)
1707: 3f 29 17  call  $1729
170a: fa 10 32  mov   ($32),($10)
170d: 8f 01 34  mov   $34,#$01
1710: 8f 00 33  mov   $33,#$00
1713: 6f        ret

1714: 3f 29 17  call  $1729
1717: fa 10 30  mov   ($30),($10)
171a: 6f        ret

171b: 8f 00 1b  mov   $1b,#$00
171e: 3f 17 14  call  $1417
1721: 6f        ret

1722: 8f ff 1b  mov   $1b,#$ff
1725: 3f 17 14  call  $1417
1728: 6f        ret

1729: e4 f4     mov   a,$f4
172b: 64 f4     cmp   a,$f4
172d: d0 fa     bne   $1729
172f: 64 0e     cmp   a,$0e
1731: f0 f6     beq   $1729
1733: c4 0e     mov   $0e,a
1735: fa f6 10  mov   ($10),($f6)
1738: fa 0e f4  mov   ($f4),($0e)
173b: 6f        ret
