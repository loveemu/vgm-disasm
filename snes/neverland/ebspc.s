0300: 20        clrp
0301: cd ff     mov   x,#$ff
0303: bd        mov   sp,x
0304: e8 00     mov   a,#$00
0306: cd ef     mov   x,#$ef
0308: c6        mov   (x),a
0309: 1d        dec   x
030a: d0 fc     bne   $0308
030c: cd 0f     mov   x,#$0f
030e: e8 00     mov   a,#$00
0310: d4 3d     mov   $3d+x,a
0312: 3f cb 28  call  $28cb
0315: 1d        dec   x
0316: 10 f6     bpl   $030e
0318: cd 07     mov   x,#$07
031a: e8 00     mov   a,#$00
031c: d5 ae 00  mov   $00ae+x,a
031f: d4 c0     mov   $c0+x,a
0321: 1d        dec   x
0322: 10 f8     bpl   $031c
0324: c5 dd 08  mov   $08dd,a
0327: 3f 10 2c  call  $2c10
032a: e8 ff     mov   a,#$ff
032c: c5 d8 08  mov   $08d8,a
032f: e8 ff     mov   a,#$ff
0331: c5 d9 08  mov   $08d9,a
0334: e8 ff     mov   a,#$ff
0336: c5 d6 08  mov   $08d6,a
0339: e8 00     mov   a,#$00
033b: c4 b9     mov   $b9,a
033d: c4 b7     mov   $b7,a
033f: c4 b6     mov   $b6,a
0341: c4 a1     mov   $a1,a
0343: c4 a2     mov   $a2,a
0345: c4 a5     mov   $a5,a
0347: c4 a6     mov   $a6,a
0349: c4 a3     mov   $a3,a
034b: c4 a4     mov   $a4,a
034d: c4 a0     mov   $a0,a
034f: c4 95     mov   $95,a
0351: c4 96     mov   $96,a
0353: c4 be     mov   $be,a
0355: c5 dc 08  mov   $08dc,a
0358: e8 ff     mov   a,#$ff
035a: c4 9a     mov   $9a,a
035c: c4 a7     mov   $a7,a
035e: e8 04     mov   a,#$04
0360: c5 d7 08  mov   $08d7,a
0363: 8f 00 c9  mov   $c9,#$00
0366: 8f 5c f2  mov   $f2,#$5c
0369: 8f ff f3  mov   $f3,#$ff
036c: 8d 40     mov   y,#$40
036e: fe fe     dbnz  y,$036e
0370: 8f 00 f3  mov   $f3,#$00
0373: 8f ab f4  mov   $f4,#$ab
0376: 8f cd f5  mov   $f5,#$cd
0379: 78 67 f6  cmp   $f6,#$67
037c: d0 fb     bne   $0379
037e: 78 89 f7  cmp   $f7,#$89
0381: d0 fb     bne   $037e
0383: 8f 80 f1  mov   $f1,#$80
0386: 8f 7d fb  mov   $fb,#$7d
0389: 8f 82 f1  mov   $f1,#$82
038c: 3f ca 05  call  $05ca
038f: e4 c9     mov   a,$c9
0391: d0 17     bne   $03aa
0393: 13 9b 14  bbc0  $9b,$03aa
0396: e4 fd     mov   a,$fd
0398: f0 10     beq   $03aa
039a: c4 1c     mov   $1c,a
039c: e9 dc 08  mov   x,$08dc
039f: f0 02     beq   $03a3
03a1: 0b 1c     asl   $1c
03a3: 3f 2a 1e  call  $1e2a
03a6: 8b 1c     dec   $1c
03a8: d0 f9     bne   $03a3
03aa: e4 fe     mov   a,$fe
03ac: f0 03     beq   $03b1
03ae: 3f 44 25  call  $2544
03b1: e4 f6     mov   a,$f6
03b3: f0 da     beq   $038f
03b5: 64 f7     cmp   a,$f7
03b7: d0 d6     bne   $038f
03b9: 68 25     cmp   a,#$25
03bb: b0 e6     bcs   $03a3
03bd: 9c        dec   a
03be: 1c        asl   a
03bf: 5d        mov   x,a
03c0: 1f c3 03  jmp   ($03c3+x)

03c3: dw $058f
03c5: dw $040b
03c7: dw $0417
03c9: dw $2649
03cb: dw $27b5
03cd: dw $042a
03cf: dw $0431
03d1: dw $043d
03d3: dw $0446
03d5: dw $041d
03d7: dw $0451
03d9: dw $0459
03db: dw $0461
03dd: dw $0498
03df: dw $049e
03e1: dw $04a4
03e3: dw $04aa
03e5: dw $0588
03e7: dw $04b1
03e9: dw $04cb
03eb: dw $04ba
03ed: dw $0000
03ef: dw $0000
03f1: dw $0473
03f3: dw $27d9
03f5: dw $047a
03f7: dw $0487
03f9: dw $0000
03fb: dw $04d4
03fd: dw $0549
03ff: dw $054f
0401: dw $055a
0403: dw $0567
0405: dw $056f
0407: dw $0577
0409: dw $0581

040b: 72 9b     clr3  $9b
040d: 52 9b     clr2  $9b
040f: e8 ff     mov   a,#$ff
0411: c5 d6 08  mov   $08d6,a
0414: 5f 8c 1d  jmp   $1d8c

0417: 3f 97 1e  call  $1e97
041a: 5f 8c 03  jmp   $038c

041d: 8d 01     mov   y,#$01
041f: e8 00     mov   a,#$00
0421: f8 f4     mov   x,$f4
0423: 9e        div   ya,x
0424: c5 d7 08  mov   $08d7,a
0427: 5f 8c 03  jmp   $038c

042a: 42 9b     set2  $9b
042c: 72 9b     clr3  $9b
042e: 5f 8c 03  jmp   $038c

0431: 62 9b     set3  $9b
0433: 52 9b     clr2  $9b
0435: e8 00     mov   a,#$00
0437: c5 d6 08  mov   $08d6,a
043a: 5f 8c 1d  jmp   $1d8c

043d: fa 8d f4  mov   ($f4),($8d)
0440: fa a0 f5  mov   ($f5),($a0)
0443: 5f 8c 03  jmp   $038c

0446: e4 f4     mov   a,$f4
0448: c5 cf 08  mov   $08cf,a
044b: 3f 5d 29  call  $295d
044e: 5f 8c 03  jmp   $038c

0451: e4 f4     mov   a,$f4
0453: c5 d8 08  mov   $08d8,a
0456: 5f 8c 03  jmp   $038c

0459: e4 f4     mov   a,$f4
045b: c5 d9 08  mov   $08d9,a
045e: 5f 8c 03  jmp   $038c

0461: e4 f4     mov   a,$f4
0463: c4 99     mov   $99,a
0465: 28 03     and   a,#$03
0467: 5d        mov   x,a
0468: f5 70 04  mov   a,$0470+x
046b: c4 bf     mov   $bf,a
046d: 5f 8c 03  jmp   $038c

0470: e5 e5 ff  mov   a,$ffe5
0473: e4 99     mov   a,$99
0475: c4 f4     mov   $f4,a
0477: 5f 8c 03  jmp   $038c

047a: e4 f4     mov   a,$f4
047c: f8 f5     mov   x,$f5
047e: d5 ff 06  mov   $06ff+x,a
0481: 3f a6 29  call  $29a6
0484: 5f 8f 03  jmp   $038f

0487: e4 f5     mov   a,$f5
0489: 60        clrc
048a: 88 08     adc   a,#$08
048c: 5d        mov   x,a
048d: e4 f4     mov   a,$f4
048f: d5 ff 06  mov   $06ff+x,a
0492: 3f a6 29  call  $29a6
0495: 5f 8c 03  jmp   $038c

0498: 3f 10 2c  call  $2c10
049b: 5f 8c 03  jmp   $038c

049e: fa 9b f4  mov   ($f4),($9b)
04a1: 5f 8c 03  jmp   $038c

04a4: fa f4 9a  mov   ($9a),($f4)
04a7: 5f 8c 03  jmp   $038c

04aa: ba f4     movw  ya,$f4
04ac: da 9c     movw  $9c,ya
04ae: 5f 8c 03  jmp   $038c

04b1: e4 f4     mov   a,$f4
04b3: 1c        asl   a
04b4: 1c        asl   a
04b5: c4 9e     mov   $9e,a
04b7: 5f 8c 03  jmp   $038c

04ba: 92 9b     clr4  $9b
04bc: e5 dc 08  mov   a,$08dc
04bf: 48 ff     eor   a,#$ff
04c1: c5 dc 08  mov   $08dc,a
04c4: f0 02     beq   $04c8
04c6: 82 9b     set4  $9b
04c8: 5f 8c 03  jmp   $038c

04cb: 3f da 04  call  $04da
04ce: 3f ca 05  call  $05ca
04d1: 5f 96 05  jmp   $0596

04d4: 3f da 04  call  $04da
04d7: 5f 8c 03  jmp   $038c

04da: 3f ca 05  call  $05ca
04dd: 8d 08     mov   y,#$08
04df: 3f 39 05  call  $0539
04e2: c4 08     mov   $08,a
04e4: 3f 39 05  call  $0539
04e7: c4 09     mov   $09,a
04e9: 3f 39 05  call  $0539
04ec: c4 04     mov   $04,a
04ee: 3f 39 05  call  $0539
04f1: c4 05     mov   $05,a
04f3: f8 9e     mov   x,$9e
04f5: 3f 39 05  call  $0539
04f8: d5 de 08  mov   $08de+x,a
04fb: 3f 39 05  call  $0539
04fe: d5 df 08  mov   $08df+x,a
0501: 3f 39 05  call  $0539
0504: d5 e0 08  mov   $08e0+x,a
0507: 3f 39 05  call  $0539
050a: d5 e1 08  mov   $08e1+x,a
050d: e4 9c     mov   a,$9c
050f: d5 00 02  mov   $0200+x,a
0512: c4 0c     mov   $0c,a
0514: 60        clrc
0515: 84 08     adc   a,$08
0517: c4 9c     mov   $9c,a
0519: e4 9d     mov   a,$9d
051b: d5 01 02  mov   $0201+x,a
051e: c4 0d     mov   $0d,a
0520: 84 09     adc   a,$09
0522: c4 9d     mov   $9d,a
0524: ba 0c     movw  ya,$0c
0526: 7a 04     addw  ya,$04
0528: d5 02 02  mov   $0202+x,a
052b: dd        mov   a,y
052c: d5 03 02  mov   $0203+x,a
052f: 60        clrc
0530: 98 04 9e  adc   $9e,#$04
0533: 78 ff f6  cmp   $f6,#$ff
0536: d0 fb     bne   $0533
0538: 6f        ret

0539: dd        mov   a,y
053a: 64 f6     cmp   a,$f6
053c: d0 fc     bne   $053a
053e: e4 f4     mov   a,$f4
0540: 2d        push  a
0541: dd        mov   a,y
0542: 08 80     or    a,#$80
0544: c4 f6     mov   $f6,a
0546: dc        dec   y
0547: ae        pop   a
0548: 6f        ret

0549: fa a0 f4  mov   ($f4),($a0)
054c: 5f 8c 03  jmp   $038c

054f: e4 f4     mov   a,$f4
0551: c5 d3 08  mov   $08d3,a
0554: 3f 6b 29  call  $296b
0557: 5f 8c 03  jmp   $038c

055a: e4 f4     mov   a,$f4
055c: c5 d4 08  mov   $08d4,a
055f: 8f 0d f2  mov   $f2,#$0d
0562: c4 f3     mov   $f3,a
0564: 5f 8c 03  jmp   $038c

0567: e4 f4     mov   a,$f4
0569: 3f e8 22  call  $22e8
056c: 5f 8c 03  jmp   $038c

056f: e5 d4 08  mov   a,$08d4
0572: c4 f4     mov   $f4,a
0574: 5f 8c 03  jmp   $038c

0577: 8f 2c f2  mov   $f2,#$2c
057a: e4 f3     mov   a,$f3
057c: c4 f4     mov   $f4,a
057e: 5f 8c 03  jmp   $038c

0581: e4 c8     mov   a,$c8
0583: c4 f4     mov   $f4,a
0585: 5f 8c 03  jmp   $038c

0588: ba 9c     movw  ya,$9c
058a: da f4     movw  $f4,ya
058c: 5f 8c 03  jmp   $038c

058f: ba f4     movw  ya,$f4
0591: da 0c     movw  $0c,ya
0593: 3f ca 05  call  $05ca
0596: e8 ff     mov   a,#$ff
0598: 64 f6     cmp   a,$f6
059a: d0 fc     bne   $0598
059c: c4 f6     mov   $f6,a
059e: 8d 00     mov   y,#$00
05a0: dd        mov   a,y
05a1: 28 7f     and   a,#$7f
05a3: 78 ff f7  cmp   $f7,#$ff
05a6: d0 03     bne   $05ab
05a8: 5f 8c 03  jmp   $038c

05ab: 64 f6     cmp   a,$f6
05ad: d0 f4     bne   $05a3
05af: dd        mov   a,y
05b0: 5d        mov   x,a
05b1: e4 f4     mov   a,$f4
05b3: d7 0c     mov   ($0c)+y,a
05b5: fc        inc   y
05b6: d0 02     bne   $05ba
05b8: ab 0d     inc   $0d
05ba: e4 f5     mov   a,$f5
05bc: d7 0c     mov   ($0c)+y,a
05be: fc        inc   y
05bf: d0 02     bne   $05c3
05c1: ab 0d     inc   $0d
05c3: 7d        mov   a,x
05c4: 08 80     or    a,#$80
05c6: c4 f6     mov   $f6,a
05c8: 2f d6     bra   $05a0
05ca: 8f cd f6  mov   $f6,#$cd
05cd: 8f ef f7  mov   $f7,#$ef
05d0: e4 f6     mov   a,$f6
05d2: d0 fc     bne   $05d0
05d4: e4 f7     mov   a,$f7
05d6: d0 fc     bne   $05d4
05d8: e8 00     mov   a,#$00
05da: c4 f6     mov   $f6,a
05dc: c4 f7     mov   $f7,a
05de: 6f        ret

1d8c: 3f ca 05  call  $05ca
1d8f: e8 00     mov   a,#$00
1d91: c5 a1 00  mov   $00a1,a
1d94: c5 a5 00  mov   $00a5,a
1d97: c5 a3 00  mov   $00a3,a
1d9a: 8f 10 18  mov   $18,#$10
1d9d: 8f 2e 19  mov   $19,#$2e
1da0: cd 00     mov   x,#$00
1da2: 8d 00     mov   y,#$00
1da4: f4 3d     mov   a,$3d+x
1da6: 28 02     and   a,#$02
1da8: d4 3d     mov   $3d+x,a
1daa: f7 18     mov   a,($18)+y
1dac: 68 ff     cmp   a,#$ff
1dae: f0 08     beq   $1db8
1db0: 28 80     and   a,#$80
1db2: 08 01     or    a,#$01
1db4: 14 3d     or    a,$3d+x
1db6: d4 3d     mov   $3d+x,a
1db8: 3d        inc   x
1db9: fc        inc   y
1dba: ad 08     cmp   y,#$08
1dbc: d0 e6     bne   $1da4
1dbe: 8d 10     mov   y,#$10
1dc0: cd 00     mov   x,#$00
1dc2: 3f cb 28  call  $28cb
1dc5: e8 01     mov   a,#$01
1dc7: d4 1d     mov   $1d+x,a
1dc9: e8 00     mov   a,#$00
1dcb: d4 8d     mov   $8d+x,a
1dcd: f7 18     mov   a,($18)+y
1dcf: d5 df 05  mov   $05df+x,a
1dd2: c4 10     mov   $10,a
1dd4: fc        inc   y
1dd5: f7 18     mov   a,($18)+y
1dd7: 60        clrc
1dd8: 88 2e     adc   a,#$2e
1dda: d5 ef 05  mov   $05ef+x,a
1ddd: c4 11     mov   $11,a
1ddf: fc        inc   y
1de0: 3f 08 24  call  $2408
1de3: 6d        push  y
1de4: e8 00     mov   a,#$00
1de6: 3f cd 2b  call  $2bcd
1de9: ee        pop   y
1dea: 3d        inc   x
1deb: c8 08     cmp   x,#$08
1ded: f0 03     beq   $1df2
1def: 5f c2 1d  jmp   $1dc2

1df2: 3f 39 29  call  $2939
1df5: 3f 51 29  call  $2951
1df8: e5 19 2e  mov   a,$2e19
1dfb: c5 d5 08  mov   $08d5,a
1dfe: e8 5a     mov   a,#$5a
1e00: c5 d4 08  mov   $08d4,a
1e03: e8 00     mov   a,#$00
1e05: c5 d3 08  mov   $08d3,a
1e08: 3f 6b 29  call  $296b
1e0b: 3f 92 2c  call  $2c92
1e0e: e8 1e     mov   a,#$1e
1e10: 3f e8 22  call  $22e8
1e13: 8f 00 f1  mov   $f1,#$00
1e16: e5 03 2e  mov   a,$2e03
1e19: c4 fa     mov   $fa,a
1e1b: 8f 7d fb  mov   $fb,#$7d
1e1e: 8f 03 f1  mov   $f1,#$03
1e21: 18 01 9b  or    $9b,#$01
1e24: 8f 01 c9  mov   $c9,#$01
1e27: 5f 8f 03  jmp   $038f

1e2a: cd 00     mov   x,#$00
1e2c: f4 3d     mov   a,$3d+x
1e2e: 28 01     and   a,#$01
1e30: f0 4f     beq   $1e81
1e32: f4 2d     mov   a,$2d+x
1e34: f0 11     beq   $1e47
1e36: 9b 2d     dec   $2d+x
1e38: d0 0d     bne   $1e47
1e3a: f4 c0     mov   a,$c0+x
1e3c: d0 09     bne   $1e47
1e3e: f4 3d     mov   a,$3d+x
1e40: 28 02     and   a,#$02
1e42: d0 03     bne   $1e47
1e44: 3f 6f 24  call  $246f
1e47: 9b 1d     dec   $1d+x
1e49: d0 36     bne   $1e81
1e4b: f4 3d     mov   a,$3d+x
1e4d: 30 2f     bmi   $1e7e
1e4f: 28 02     and   a,#$02
1e51: d0 2b     bne   $1e7e
1e53: f5 10 2d  mov   a,$2d10+x
1e56: 24 b7     and   a,$b7
1e58: f0 24     beq   $1e7e
1e5a: 48 ff     eor   a,#$ff
1e5c: 24 b7     and   a,$b7
1e5e: c4 b7     mov   $b7,a
1e60: 8f 01 be  mov   $be,#$01
1e63: f5 ef 06  mov   a,$06ef+x
1e66: 3f cd 2b  call  $2bcd
1e69: 8f 00 be  mov   $be,#$00
1e6c: 7d        mov   a,x
1e6d: 9f        xcn   a
1e6e: 08 05     or    a,#$05
1e70: c4 f2     mov   $f2,a
1e72: f5 bf 08  mov   a,$08bf+x
1e75: c4 f3     mov   $f3,a
1e77: ab f2     inc   $f2
1e79: f5 c7 08  mov   a,$08c7+x
1e7c: c4 f3     mov   $f3,a
1e7e: 3f e3 1e  call  $1ee3
1e81: f4 c0     mov   a,$c0+x
1e83: f0 03     beq   $1e88
1e85: 9c        dec   a
1e86: d4 c0     mov   $c0+x,a
1e88: 3d        inc   x
1e89: c8 08     cmp   x,#$08
1e8b: d0 9f     bne   $1e2c
1e8d: 3f c1 29  call  $29c1
1e90: 3f a1 2a  call  $2aa1
1e93: 3f a3 28  call  $28a3
1e96: 6f        ret

1e97: e4 9b     mov   a,$9b
1e99: 28 f2     and   a,#$f2
1e9b: c4 9b     mov   $9b,a
1e9d: 8f 00 a1  mov   $a1,#$00
1ea0: 8f 00 a5  mov   $a5,#$00
1ea3: 8f 00 a3  mov   $a3,#$00
1ea6: 3f 51 29  call  $2951
1ea9: 3f 39 29  call  $2939
1eac: 3f 45 29  call  $2945
1eaf: e8 00     mov   a,#$00
1eb1: 3f e8 22  call  $22e8
1eb4: 8f ff 9a  mov   $9a,#$ff
1eb7: cd 07     mov   x,#$07
1eb9: f4 3d     mov   a,$3d+x
1ebb: 28 01     and   a,#$01
1ebd: f0 09     beq   $1ec8
1ebf: f4 3d     mov   a,$3d+x
1ec1: 28 02     and   a,#$02
1ec3: d0 03     bne   $1ec8
1ec5: 3f 6f 24  call  $246f
1ec8: f4 3d     mov   a,$3d+x
1eca: 28 02     and   a,#$02
1ecc: d4 3d     mov   $3d+x,a
1ece: 1d        dec   x
1ecf: 10 e8     bpl   $1eb9
1ed1: e8 00     mov   a,#$00
1ed3: c4 95     mov   $95,a
1ed5: 3f a3 28  call  $28a3
1ed8: e5 da 08  mov   a,$08da
1edb: 08 20     or    a,#$20
1edd: 8f 6c f2  mov   $f2,#$6c
1ee0: c4 f3     mov   $f3,a
1ee2: 6f        ret

1ee3: f5 0f 06  mov   a,$060f+x
1ee6: c4 18     mov   $18,a
1ee8: f5 1f 06  mov   a,$061f+x
1eeb: c4 19     mov   $19,a
1eed: 8d 00     mov   y,#$00
1eef: f7 18     mov   a,($18)+y
1ef1: 30 26     bmi   $1f19
1ef3: 3f 39 24  call  $2439
1ef6: fc        inc   y
1ef7: 60        clrc
1ef8: 95 ff 05  adc   a,$05ff+x
1efb: d5 1f 07  mov   $071f+x,a
1efe: f7 18     mov   a,($18)+y
1f00: d5 2f 07  mov   $072f+x,a
1f03: fc        inc   y
1f04: f7 18     mov   a,($18)+y
1f06: d5 3f 07  mov   $073f+x,a
1f09: fc        inc   y
1f0a: f7 18     mov   a,($18)+y
1f0c: d5 4f 07  mov   $074f+x,a
1f0f: 3f a6 29  call  $29a6
1f12: e8 04     mov   a,#$04
1f14: 3f fa 23  call  $23fa
1f17: 2f 2e     bra   $1f47
1f19: fc        inc   y
1f1a: 68 f0     cmp   a,#$f0
1f1c: 90 03     bcc   $1f21
1f1e: 5f ae 1f  jmp   $1fae

1f21: 3f 39 24  call  $2439
1f24: 28 7f     and   a,#$7f
1f26: 60        clrc
1f27: 95 ff 05  adc   a,$05ff+x
1f2a: d5 1f 07  mov   $071f+x,a
1f2d: f5 6f 07  mov   a,$076f+x
1f30: d5 2f 07  mov   $072f+x,a
1f33: f5 7f 07  mov   a,$077f+x
1f36: d5 3f 07  mov   $073f+x,a
1f39: f5 8f 07  mov   a,$078f+x
1f3c: d5 4f 07  mov   $074f+x,a
1f3f: 3f a6 29  call  $29a6
1f42: e8 01     mov   a,#$01
1f44: 3f fa 23  call  $23fa
1f47: c8 08     cmp   x,#$08
1f49: b0 04     bcs   $1f4f
1f4b: f4 c0     mov   a,$c0+x
1f4d: d0 21     bne   $1f70
1f4f: f4 3d     mov   a,$3d+x
1f51: 28 02     and   a,#$02
1f53: d0 1b     bne   $1f70
1f55: f5 3f 07  mov   a,$073f+x
1f58: f0 16     beq   $1f70
1f5a: f4 3d     mov   a,$3d+x
1f5c: 30 1d     bmi   $1f7b
1f5e: f4 2d     mov   a,$2d+x
1f60: f0 08     beq   $1f6a
1f62: f5 5f 07  mov   a,$075f+x
1f65: 75 1f 07  cmp   a,$071f+x
1f68: f0 06     beq   $1f70
1f6a: 3f 7d 2b  call  $2b7d
1f6d: 3f 54 24  call  $2454
1f70: f5 2f 07  mov   a,$072f+x
1f73: d4 1d     mov   $1d+x,a
1f75: f5 3f 07  mov   a,$073f+x
1f78: d4 2d     mov   $2d+x,a
1f7a: 6f        ret

1f7b: 3f 54 24  call  $2454
1f7e: 8d 00     mov   y,#$00
1f80: f6 f8 24  mov   a,$24f8+y
1f83: f0 28     beq   $1fad
1f85: 75 1f 07  cmp   a,$071f+x
1f88: f0 03     beq   $1f8d
1f8a: fc        inc   y
1f8b: 2f f3     bra   $1f80
1f8d: f6 08 25  mov   a,$2508+y
1f90: d4 4d     mov   $4d+x,a
1f92: f6 17 25  mov   a,$2517+y
1f95: d4 5d     mov   $5d+x,a
1f97: f6 26 25  mov   a,$2526+y
1f9a: d5 0f 07  mov   $070f+x,a
1f9d: f6 35 25  mov   a,$2535+y
1fa0: 3f cd 2b  call  $2bcd
1fa3: f5 2f 07  mov   a,$072f+x
1fa6: d4 1d     mov   $1d+x,a
1fa8: f5 3f 07  mov   a,$073f+x
1fab: d4 2d     mov   $2d+x,a
1fad: 6f        ret

1fae: 4d        push  x
1faf: 80        setc
1fb0: a8 f0     sbc   a,#$f0
1fb2: 1c        asl   a
1fb3: 5d        mov   x,a
1fb4: 1f 88 24  jmp   ($2488+x)

1fb7: ce        pop   x
1fb8: 3f f2 23  call  $23f2
1fbb: 2d        push  a
1fbc: f5 7f 08  mov   a,$087f+x
1fbf: d0 06     bne   $1fc7
1fc1: d5 df 07  mov   $07df+x,a
1fc4: d5 2f 08  mov   $082f+x,a
1fc7: ae        pop   a
1fc8: d5 7f 08  mov   $087f+x,a
1fcb: e8 03     mov   a,#$03
1fcd: 5f e7 23  jmp   $23e7

1fd0: ce        pop   x
1fd1: 3f f2 23  call  $23f2
1fd4: d5 ff 06  mov   $06ff+x,a
1fd7: 3f a6 29  call  $29a6
1fda: e8 03     mov   a,#$03
1fdc: 5f e7 23  jmp   $23e7

1fdf: ce        pop   x
1fe0: 3f f2 23  call  $23f2
1fe3: d5 0f 07  mov   $070f+x,a
1fe6: e8 03     mov   a,#$03
1fe8: 5f e7 23  jmp   $23e7

1feb: ce        pop   x
1fec: 3f f2 23  call  $23f2
1fef: e8 02     mov   a,#$02
1ff1: 5f e7 23  jmp   $23e7

1ff4: ce        pop   x
1ff5: 3f f2 23  call  $23f2
1ff8: 8f 00 f1  mov   $f1,#$00
1ffb: c4 fa     mov   $fa,a
1ffd: 8f 7d fb  mov   $fb,#$7d
2000: 8f 03 f1  mov   $f1,#$03
2003: e8 03     mov   a,#$03
2005: 5f e7 23  jmp   $23e7

2008: ce        pop   x
2009: 3f f2 23  call  $23f2
200c: d5 9f 07  mov   $079f+x,a
200f: e8 03     mov   a,#$03
2011: 5f e7 23  jmp   $23e7

2014: ce        pop   x
2015: 3f f2 23  call  $23f2
2018: d5 ef 06  mov   $06ef+x,a
201b: f4 3d     mov   a,$3d+x
201d: 28 02     and   a,#$02
201f: f0 20     beq   $2041
2021: f5 ef 06  mov   a,$06ef+x
2024: 1c        asl   a
2025: 1c        asl   a
2026: fd        mov   y,a
2027: f6 de 08  mov   a,$08de+y
202a: d5 bf 08  mov   $08bf+x,a
202d: f6 df 08  mov   a,$08df+y
2030: d5 c7 08  mov   $08c7+x,a
2033: f6 e0 08  mov   a,$08e0+y
2036: d5 8f 08  mov   $088f+x,a
2039: f6 e1 08  mov   a,$08e1+y
203c: d5 9f 08  mov   $089f+x,a
203f: 2f 06     bra   $2047
2041: f5 ef 06  mov   a,$06ef+x
2044: 3f cd 2b  call  $2bcd
2047: e8 03     mov   a,#$03
2049: 5f e7 23  jmp   $23e7

204c: ce        pop   x
204d: 4d        push  x
204e: 7d        mov   a,x
204f: fd        mov   y,a
2050: f5 4f 06  mov   a,$064f+x
2053: f0 0a     beq   $205f
2055: f5 5f 06  mov   a,$065f+x
2058: d0 2d     bne   $2087
205a: 7d        mov   a,x
205b: 60        clrc
205c: 88 10     adc   a,#$10
205e: 5d        mov   x,a
205f: f6 df 05  mov   a,$05df+y
2062: d5 2f 06  mov   $062f+x,a
2065: f6 ef 05  mov   a,$05ef+y
2068: d5 4f 06  mov   $064f+x,a
206b: f6 0f 06  mov   a,$060f+y
206e: 60        clrc
206f: 88 01     adc   a,#$01
2071: d5 6f 06  mov   $066f+x,a
2074: f6 1f 06  mov   a,$061f+y
2077: 88 00     adc   a,#$00
2079: d5 8f 06  mov   $068f+x,a
207c: e8 fe     mov   a,#$fe
207e: d5 af 06  mov   $06af+x,a
2081: f6 ff 05  mov   a,$05ff+y
2084: d5 cf 06  mov   $06cf+x,a
2087: ce        pop   x
2088: e8 01     mov   a,#$01
208a: 5f e7 23  jmp   $23e7

208d: ce        pop   x
208e: 4d        push  x
208f: f7 18     mov   a,($18)+y
2091: 9c        dec   a
2092: f0 4b     beq   $20df
2094: c4 10     mov   $10,a
2096: 7d        mov   a,x
2097: fd        mov   y,a
2098: f5 5f 06  mov   a,$065f+x
209b: f0 05     beq   $20a2
209d: 7d        mov   a,x
209e: 60        clrc
209f: 88 10     adc   a,#$10
20a1: 5d        mov   x,a
20a2: f5 af 06  mov   a,$06af+x
20a5: 68 ff     cmp   a,#$ff
20a7: f0 14     beq   $20bd
20a9: 68 fe     cmp   a,#$fe
20ab: f0 0b     beq   $20b8
20ad: 9c        dec   a
20ae: d5 af 06  mov   $06af+x,a
20b1: d0 0a     bne   $20bd
20b3: d5 4f 06  mov   $064f+x,a
20b6: 2f 27     bra   $20df
20b8: e4 10     mov   a,$10
20ba: d5 af 06  mov   $06af+x,a
20bd: f5 2f 06  mov   a,$062f+x
20c0: d6 df 05  mov   $05df+y,a
20c3: f5 4f 06  mov   a,$064f+x
20c6: d6 ef 05  mov   $05ef+y,a
20c9: f5 6f 06  mov   a,$066f+x
20cc: d6 0f 06  mov   $060f+y,a
20cf: f5 8f 06  mov   a,$068f+x
20d2: d6 1f 06  mov   $061f+y,a
20d5: f5 cf 06  mov   a,$06cf+x
20d8: d6 ff 05  mov   $05ff+y,a
20db: ce        pop   x
20dc: 5f e3 1e  jmp   $1ee3

20df: ce        pop   x
20e0: e8 02     mov   a,#$02
20e2: 5f e7 23  jmp   $23e7

20e5: 6f        ret

20e6: ce        pop   x
20e7: e8 00     mov   a,#$00
20e9: d5 ff 05  mov   $05ff+x,a
20ec: bb 8d     inc   $8d+x
20ee: f5 df 05  mov   a,$05df+x
20f1: 60        clrc
20f2: 88 02     adc   a,#$02
20f4: c4 10     mov   $10,a
20f6: d5 df 05  mov   $05df+x,a
20f9: f5 ef 05  mov   a,$05ef+x
20fc: 88 00     adc   a,#$00
20fe: c4 11     mov   $11,a
2100: d5 ef 05  mov   $05ef+x,a
2103: 8d 00     mov   y,#$00
2105: f7 10     mov   a,($10)+y
2107: 68 ff     cmp   a,#$ff
2109: d0 26     bne   $2131
210b: f4 3d     mov   a,$3d+x
210d: 28 fe     and   a,#$fe
210f: d4 3d     mov   $3d+x,a
2111: 8d 07     mov   y,#$07
2113: e8 00     mov   a,#$00
2115: 16 3d 00  or    a,$003d+y
2118: dc        dec   y
2119: 10 fa     bpl   $2115
211b: 28 01     and   a,#$01
211d: d0 06     bne   $2125
211f: e4 9b     mov   a,$9b
2121: 28 fe     and   a,#$fe
2123: c4 9b     mov   $9b,a
2125: f4 3d     mov   a,$3d+x
2127: 28 02     and   a,#$02
2129: d4 3d     mov   $3d+x,a
212b: d0 03     bne   $2130
212d: 3f 6f 24  call  $246f
2130: 6f        ret

2131: 3f 08 24  call  $2408
2134: 5f e3 1e  jmp   $1ee3

2137: ce        pop   x
2138: e8 00     mov   a,#$00
213a: d4 3d     mov   $3d+x,a
213c: d5 7f 08  mov   $087f+x,a
213f: e8 80     mov   a,#$80
2141: d5 9f 07  mov   $079f+x,a
2144: e8 20     mov   a,#$20
2146: d5 0f 08  mov   $080f+x,a
2149: e8 10     mov   a,#$10
214b: d5 5f 08  mov   $085f+x,a
214e: 3f 6f 24  call  $246f
2151: 6f        ret

2152: f7 18     mov   a,($18)+y
2154: fc        inc   y
2155: 1c        asl   a
2156: 5d        mov   x,a
2157: 1f b0 24  jmp   ($24b0+x)

215a: ce        pop   x
215b: f7 18     mov   a,($18)+y
215d: c5 d5 08  mov   $08d5,a
2160: e8 03     mov   a,#$03
2162: 5f e7 23  jmp   $23e7

2165: ce        pop   x
2166: f7 18     mov   a,($18)+y
2168: c5 d4 08  mov   $08d4,a
216b: 8f 0d f2  mov   $f2,#$0d
216e: c4 f3     mov   $f3,a
2170: e8 03     mov   a,#$03
2172: 5f e7 23  jmp   $23e7

2175: ce        pop   x
2176: f7 18     mov   a,($18)+y
2178: c5 d3 08  mov   $08d3,a
217b: 4d        push  x
217c: 3f 6b 29  call  $296b
217f: ce        pop   x
2180: e8 03     mov   a,#$03
2182: 5f e7 23  jmp   $23e7

2185: ce        pop   x
2186: f5 10 2d  mov   a,$2d10+x
2189: c8 08     cmp   x,#$08
218b: 90 06     bcc   $2193
218d: 04 a4     or    a,$a4
218f: c4 a4     mov   $a4,a
2191: 2f 04     bra   $2197
2193: 04 a3     or    a,$a3
2195: c4 a3     mov   $a3,a
2197: 3f 45 29  call  $2945
219a: e8 03     mov   a,#$03
219c: 5f e7 23  jmp   $23e7

219f: ce        pop   x
21a0: f5 20 2d  mov   a,$2d20+x
21a3: c8 08     cmp   x,#$08
21a5: 90 06     bcc   $21ad
21a7: 24 a4     and   a,$a4
21a9: c4 a4     mov   $a4,a
21ab: 2f 04     bra   $21b1
21ad: 24 a3     and   a,$a3
21af: c4 a3     mov   $a3,a
21b1: 3f 45 29  call  $2945
21b4: e8 03     mov   a,#$03
21b6: 5f e7 23  jmp   $23e7

21b9: ce        pop   x
21ba: f7 18     mov   a,($18)+y
21bc: 2f 12     bra   $21d0
21be: ce        pop   x
21bf: f7 18     mov   a,($18)+y
21c1: 08 80     or    a,#$80
21c3: 2f 0b     bra   $21d0
21c5: ce        pop   x
21c6: e8 00     mov   a,#$00
21c8: d5 cf 07  mov   $07cf+x,a
21cb: e8 02     mov   a,#$02
21cd: 5f e7 23  jmp   $23e7

21d0: d5 cf 07  mov   $07cf+x,a
21d3: e8 03     mov   a,#$03
21d5: 5f e7 23  jmp   $23e7

21d8: ce        pop   x
21d9: 3f a0 22  call  $22a0
21dc: 38 0f 12  and   $12,#$0f
21df: c8 08     cmp   x,#$08
21e1: b0 06     bcs   $21e9
21e3: f4 3d     mov   a,$3d+x
21e5: 28 02     and   a,#$02
21e7: d0 0c     bne   $21f5
21e9: e4 f3     mov   a,$f3
21eb: 28 f0     and   a,#$f0
21ed: 04 12     or    a,$12
21ef: c4 f3     mov   $f3,a
21f1: c8 08     cmp   x,#$08
21f3: b0 0a     bcs   $21ff
21f5: f5 bf 08  mov   a,$08bf+x
21f8: 28 f0     and   a,#$f0
21fa: 04 12     or    a,$12
21fc: d5 bf 08  mov   $08bf+x,a
21ff: e8 03     mov   a,#$03
2201: 5f e7 23  jmp   $23e7

2204: ce        pop   x
2205: 3f a0 22  call  $22a0
2208: e4 12     mov   a,$12
220a: 9f        xcn   a
220b: 28 70     and   a,#$70
220d: c4 12     mov   $12,a
220f: c8 08     cmp   x,#$08
2211: b0 06     bcs   $2219
2213: f4 3d     mov   a,$3d+x
2215: 28 02     and   a,#$02
2217: d0 0e     bne   $2227
2219: e4 f3     mov   a,$f3
221b: 28 0f     and   a,#$0f
221d: 04 12     or    a,$12
221f: 08 80     or    a,#$80
2221: c4 f3     mov   $f3,a
2223: c8 08     cmp   x,#$08
2225: b0 0a     bcs   $2231
2227: f5 bf 08  mov   a,$08bf+x
222a: 28 0f     and   a,#$0f
222c: 04 12     or    a,$12
222e: d5 bf 08  mov   $08bf+x,a
2231: e8 03     mov   a,#$03
2233: 5f e7 23  jmp   $23e7

2236: ce        pop   x
2237: 3f a0 22  call  $22a0
223a: ab f2     inc   $f2
223c: e4 12     mov   a,$12
223e: 9f        xcn   a
223f: 1c        asl   a
2240: 28 e0     and   a,#$e0
2242: c4 12     mov   $12,a
2244: c8 08     cmp   x,#$08
2246: b0 06     bcs   $224e
2248: f4 3d     mov   a,$3d+x
224a: 28 02     and   a,#$02
224c: d0 0c     bne   $225a
224e: e4 f3     mov   a,$f3
2250: 28 1f     and   a,#$1f
2252: 04 12     or    a,$12
2254: c4 f3     mov   $f3,a
2256: c8 08     cmp   x,#$08
2258: b0 0a     bcs   $2264
225a: f5 c7 08  mov   a,$08c7+x
225d: 28 1f     and   a,#$1f
225f: 04 12     or    a,$12
2261: d5 c7 08  mov   $08c7+x,a
2264: e8 03     mov   a,#$03
2266: 5f e7 23  jmp   $23e7

2269: ce        pop   x
226a: 3f a0 22  call  $22a0
226d: ab f2     inc   $f2
226f: e4 12     mov   a,$12
2271: 28 1f     and   a,#$1f
2273: c4 12     mov   $12,a
2275: c8 08     cmp   x,#$08
2277: b0 06     bcs   $227f
2279: f4 3d     mov   a,$3d+x
227b: 28 02     and   a,#$02
227d: d0 0c     bne   $228b
227f: e4 f3     mov   a,$f3
2281: 28 e0     and   a,#$e0
2283: 04 12     or    a,$12
2285: c4 f3     mov   $f3,a
2287: c8 08     cmp   x,#$08
2289: b0 0a     bcs   $2295
228b: f5 c7 08  mov   a,$08c7+x
228e: 28 e0     and   a,#$e0
2290: 04 12     or    a,$12
2292: d5 c7 08  mov   $08c7+x,a
2295: e8 03     mov   a,#$03
2297: 5f e7 23  jmp   $23e7

229a: ce        pop   x
229b: e8 03     mov   a,#$03
229d: 5f e7 23  jmp   $23e7

22a0: f7 18     mov   a,($18)+y
22a2: c4 12     mov   $12,a
22a4: 7d        mov   a,x
22a5: 68 08     cmp   a,#$08
22a7: 90 03     bcc   $22ac
22a9: 80        setc
22aa: a8 08     sbc   a,#$08
22ac: 9f        xcn   a
22ad: 60        clrc
22ae: 88 05     adc   a,#$05
22b0: c4 f2     mov   $f2,a
22b2: 6f        ret

22b3: ce        pop   x
22b4: f7 18     mov   a,($18)+y
22b6: 3f e8 22  call  $22e8
22b9: c5 d2 08  mov   $08d2,a
22bc: c5 d1 08  mov   $08d1,a
22bf: e8 03     mov   a,#$03
22c1: 5f e7 23  jmp   $23e7

22c4: ce        pop   x
22c5: f7 18     mov   a,($18)+y
22c7: ec cf 08  mov   y,$08cf
22ca: cf        mul   ya
22cb: 1c        asl   a
22cc: dd        mov   a,y
22cd: 3c        rol   a
22ce: c5 d1 08  mov   $08d1,a
22d1: e8 03     mov   a,#$03
22d3: 5f e7 23  jmp   $23e7

22d6: ce        pop   x
22d7: f7 18     mov   a,($18)+y
22d9: ec cf 08  mov   y,$08cf
22dc: cf        mul   ya
22dd: 1c        asl   a
22de: dd        mov   a,y
22df: 3c        rol   a
22e0: c5 d2 08  mov   $08d2,a
22e3: e8 03     mov   a,#$03
22e5: 5f e7 23  jmp   $23e7

22e8: c4 c8     mov   $c8,a
22ea: ec cf 08  mov   y,$08cf
22ed: cf        mul   ya
22ee: 1c        asl   a
22ef: dd        mov   a,y
22f0: 3c        rol   a
22f1: c5 d1 08  mov   $08d1,a
22f4: c5 d2 08  mov   $08d2,a
22f7: 6f        ret

22f8: ce        pop   x
22f9: f7 18     mov   a,($18)+y
22fb: 28 1f     and   a,#$1f
22fd: c4 10     mov   $10,a
22ff: e5 da 08  mov   a,$08da
2302: 28 e0     and   a,#$e0
2304: 04 10     or    a,$10
2306: c5 da 08  mov   $08da,a
2309: 8f 6c f2  mov   $f2,#$6c
230c: c4 f3     mov   $f3,a
230e: e8 03     mov   a,#$03
2310: 5f e7 23  jmp   $23e7

2313: ce        pop   x
2314: f5 10 2d  mov   a,$2d10+x
2317: c8 08     cmp   x,#$08
2319: 90 06     bcc   $2321
231b: 04 a2     or    a,$a2
231d: c4 a2     mov   $a2,a
231f: 2f 04     bra   $2325
2321: 04 a1     or    a,$a1
2323: c4 a1     mov   $a1,a
2325: 3f 51 29  call  $2951
2328: e8 03     mov   a,#$03
232a: 5f e7 23  jmp   $23e7

232d: ce        pop   x
232e: f5 20 2d  mov   a,$2d20+x
2331: c8 08     cmp   x,#$08
2333: 90 06     bcc   $233b
2335: 24 a2     and   a,$a2
2337: c4 a2     mov   $a2,a
2339: 2f 04     bra   $233f
233b: 24 a1     and   a,$a1
233d: c4 a1     mov   $a1,a
233f: 3f 51 29  call  $2951
2342: e8 03     mov   a,#$03
2344: 5f e7 23  jmp   $23e7

2347: ce        pop   x
2348: f5 10 2d  mov   a,$2d10+x
234b: c8 08     cmp   x,#$08
234d: 90 06     bcc   $2355
234f: 04 a6     or    a,$a6
2351: c4 a6     mov   $a6,a
2353: 2f 04     bra   $2359
2355: 04 a5     or    a,$a5
2357: c4 a5     mov   $a5,a
2359: 3f 39 29  call  $2939
235c: e8 03     mov   a,#$03
235e: 5f e7 23  jmp   $23e7

2361: ce        pop   x
2362: f5 20 2d  mov   a,$2d20+x
2365: c8 08     cmp   x,#$08
2367: 90 06     bcc   $236f
2369: 24 a6     and   a,$a6
236b: c4 a6     mov   $a6,a
236d: 2f 04     bra   $2373
236f: 24 a5     and   a,$a5
2371: c4 a5     mov   $a5,a
2373: 3f 39 29  call  $2939
2376: e8 03     mov   a,#$03
2378: 5f e7 23  jmp   $23e7

237b: ce        pop   x
237c: f7 18     mov   a,($18)+y
237e: d5 5f 08  mov   $085f+x,a
2381: e8 03     mov   a,#$03
2383: 5f e7 23  jmp   $23e7

2386: ce        pop   x
2387: f7 18     mov   a,($18)+y
2389: d5 0f 08  mov   $080f+x,a
238c: e8 03     mov   a,#$03
238e: 5f e7 23  jmp   $23e7

2391: ce        pop   x
2392: f7 18     mov   a,($18)+y
2394: d5 3f 08  mov   $083f+x,a
2397: e8 03     mov   a,#$03
2399: 5f e7 23  jmp   $23e7

239c: ce        pop   x
239d: f7 18     mov   a,($18)+y
239f: d5 ef 07  mov   $07ef+x,a
23a2: e8 03     mov   a,#$03
23a4: 5f e7 23  jmp   $23e7

23a7: ce        pop   x
23a8: f4 3d     mov   a,$3d+x
23aa: 08 20     or    a,#$20
23ac: d4 3d     mov   $3d+x,a
23ae: e8 03     mov   a,#$03
23b0: 5f e7 23  jmp   $23e7

23b3: ce        pop   x
23b4: f4 3d     mov   a,$3d+x
23b6: 08 40     or    a,#$40
23b8: d4 3d     mov   $3d+x,a
23ba: e8 03     mov   a,#$03
23bc: 5f e7 23  jmp   $23e7

23bf: ce        pop   x
23c0: f5 3d 00  mov   a,$003d+x
23c3: 28 9f     and   a,#$9f
23c5: d5 3d 00  mov   $003d+x,a
23c8: e8 03     mov   a,#$03
23ca: 5f e7 23  jmp   $23e7

23cd: ce        pop   x
23ce: 82 98     set4  $98
23d0: e8 03     mov   a,#$03
23d2: 5f e7 23  jmp   $23e7

23d5: ce        pop   x
23d6: 62 98     set3  $98
23d8: e8 03     mov   a,#$03
23da: 5f e7 23  jmp   $23e7

23dd: ce        pop   x
23de: 72 98     clr3  $98
23e0: 92 98     clr4  $98
23e2: e8 03     mov   a,#$03
23e4: 5f e7 23  jmp   $23e7

23e7: 3f fa 23  call  $23fa
23ea: f4 1d     mov   a,$1d+x
23ec: f0 01     beq   $23ef
23ee: 6f        ret

23ef: 5f e3 1e  jmp   $1ee3

23f2: f7 18     mov   a,($18)+y
23f4: d4 1d     mov   $1d+x,a
23f6: fc        inc   y
23f7: f7 18     mov   a,($18)+y
23f9: 6f        ret

23fa: 60        clrc
23fb: 84 18     adc   a,$18
23fd: d5 0f 06  mov   $060f+x,a
2400: e4 19     mov   a,$19
2402: 88 00     adc   a,#$00
2404: d5 1f 06  mov   $061f+x,a
2407: 6f        ret

2408: 6d        push  y
2409: 8d 00     mov   y,#$00
240b: f7 10     mov   a,($10)+y
240d: 10 1c     bpl   $242b
240f: 28 7f     and   a,#$7f
2411: d5 ff 05  mov   $05ff+x,a
2414: f5 df 05  mov   a,$05df+x
2417: 60        clrc
2418: 88 01     adc   a,#$01
241a: d5 df 05  mov   $05df+x,a
241d: c4 10     mov   $10,a
241f: f5 ef 05  mov   a,$05ef+x
2422: 88 00     adc   a,#$00
2424: d5 ef 05  mov   $05ef+x,a
2427: c4 11     mov   $11,a
2429: 2f de     bra   $2409
242b: 60        clrc
242c: 88 2e     adc   a,#$2e
242e: d5 1f 06  mov   $061f+x,a
2431: fc        inc   y
2432: f7 10     mov   a,($10)+y
2434: d5 0f 06  mov   $060f+x,a
2437: ee        pop   y
2438: 6f        ret

2439: 2d        push  a
243a: f5 1f 07  mov   a,$071f+x
243d: d5 5f 07  mov   $075f+x,a
2440: f5 2f 07  mov   a,$072f+x
2443: d5 6f 07  mov   $076f+x,a
2446: f5 3f 07  mov   a,$073f+x
2449: d5 7f 07  mov   $077f+x,a
244c: f5 4f 07  mov   a,$074f+x
244f: d5 8f 07  mov   $078f+x,a
2452: ae        pop   a
2453: 6f        ret

2454: f5 10 2d  mov   a,$2d10+x
2457: 04 95     or    a,$95
2459: c8 08     cmp   x,#$08
245b: b0 02     bcs   $245f
245d: 24 9a     and   a,$9a
245f: c4 95     mov   $95,a
2461: f5 10 2d  mov   a,$2d10+x
2464: 04 a0     or    a,$a0
2466: c8 08     cmp   x,#$08
2468: b0 02     bcs   $246c
246a: 24 9a     and   a,$9a
246c: c4 a0     mov   $a0,a
246e: 6f        ret

246f: f5 10 2d  mov   a,$2d10+x
2472: 04 96     or    a,$96
2474: c4 96     mov   $96,a
2476: f5 10 2d  mov   a,$2d10+x
2479: 48 ff     eor   a,#$ff
247b: 24 a0     and   a,$a0
247d: c4 a0     mov   $a0,a
247f: e8 00     mov   a,#$00
2481: d5 af 07  mov   $07af+x,a
2484: d5 bf 07  mov   $07bf+x,a
2487: 6f        ret

; vcmd dispatch table
2488: dw $1fb7  ; f0
248a: dw $1fd0  ; f1
248c: dw $1fdf  ; f2
248e: dw $1feb  ; f3
2490: dw $1ff4  ; f4
2492: dw $24a8  ; f5
2494: dw $2008  ; f6
2496: dw $2014  ; f7
2498: dw $24a8  ; f8
249a: dw $24a8  ; f9
249c: dw $24a8  ; fa
249e: dw $204c  ; fb
24a0: dw $208d  ; fc
24a2: dw $20e6  ; fd
24a4: dw $2137  ; fe
24a6: dw $2152  ; ff

24a8: e8 01     mov   a,#$01
24aa: 3f fa 23  call  $23fa
24ad: 5f e3 1e  jmp   $1ee3

24b0: dw $215a
24b2: dw $2165
24b4: dw $2175
24b6: dw $2185
24b8: dw $219f
24ba: dw $21b9
24bc: dw $21be
24be: dw $21c5
24c0: dw $21d8
24c2: dw $2204
24c4: dw $2236
24c6: dw $2269
24c8: dw $229a
24ca: dw $22b3
24cc: dw $22c4
24ce: dw $22d6
24d0: dw $22f8
24d2: dw $2313
24d4: dw $232d
24d6: dw $2347
24d8: dw $2361
24da: dw $237b
24dc: dw $2386
24de: dw $2391
24e0: dw $239c
24e2: dw $23a7
24e4: dw $23b3
24e6: dw $23bf
24e8: dw $23cd
24ea: dw $23d5
24ec: dw $23dd
24ee: dw $24f0

24f0: e8 03     mov   a,#$03
24f2: 3f fa 23  call  $23fa
24f5: 5f e3 1e  jmp   $1ee3

24f8: 24 26     
24fa: 28 2a     
24fc: 2e 30 2d  
24ff: 2b 29     
2501: 31        
2502: 39        
2503: 33 25 4b  
2506: 27 00     
2508: d0 18     
250a: 00        
250b: 00        
250c: 60        
250d: 68 58     
250f: 10 48     
2511: 00        
2512: 00        
2513: 00        
2514: 00        
2515: 00        
2516: 00        
2517: 0b 0e     
2519: 10 10     
251b: 10 0d     
251d: 09 08 06  
2520: 10 12     
2522: 11        
2523: 10 08     
2525: 10 40     
2527: 40        
2528: 40        
2529: 50 50     
252b: 56 46 38  
252e: 2f 50     
2530: 34 30     
2532: 40        
2533: 39        
2534: 3c        
2535: 0d        
2536: 20        
2537: 0c 0f 10  
253a: 12 12     
253c: 12 12     
253e: 11        
253f: 11        
2540: 13 14 08  
2543: 1e 3f 92  
2546: 25 3f 0b  
2549: 27 3f     
254b: a6        
254c: 25 3f d8  
254f: 25 3f a1  
2552: 2a 3f 5d  
2555: 25 3f c1  
2558: 29        

2559: 3f a3 28  call  $28a3
255c: 6f        ret

255d: cd 00     mov   x,#$00
255f: f5 cf 07  mov   a,$07cf+x
2562: f0 28     beq   $258c
2564: 30 11     bmi   $2577
2566: 60        clrc
2567: 95 af 07  adc   a,$07af+x
256a: d5 af 07  mov   $07af+x,a
256d: f5 bf 07  mov   a,$07bf+x
2570: 88 00     adc   a,#$00
2572: d5 bf 07  mov   $07bf+x,a
2575: 2f 15     bra   $258c
2577: 28 7f     and   a,#$7f
2579: c4 10     mov   $10,a
257b: f5 af 07  mov   a,$07af+x
257e: 80        setc
257f: a4 10     sbc   a,$10
2581: d5 af 07  mov   $07af+x,a
2584: f5 bf 07  mov   a,$07bf+x
2587: a8 00     sbc   a,#$00
2589: d5 bf 07  mov   $07bf+x,a
258c: 3d        inc   x
258d: c8 10     cmp   x,#$10
258f: 90 ce     bcc   $255f
2591: 6f        ret

2592: e4 b9     mov   a,$b9
2594: f0 08     beq   $259e
2596: 9c        dec   a
2597: c4 b9     mov   $b9,a
2599: d0 03     bne   $259e
259b: 3f 45 29  call  $2945
259e: e4 c9     mov   a,$c9
25a0: f0 03     beq   $25a5
25a2: 9c        dec   a
25a3: c4 c9     mov   $c9,a
25a5: 6f        ret

25a6: 53 9b 18  bbc2  $9b,$25c1
25a9: e5 d6 08  mov   a,$08d6
25ac: 80        setc
25ad: a5 d7 08  sbc   a,$08d7
25b0: c5 d6 08  mov   $08d6,a
25b3: b0 22     bcs   $25d7
25b5: e8 00     mov   a,#$00
25b7: c5 d6 08  mov   $08d6,a
25ba: 52 9b     clr2  $9b
25bc: 3f 97 1e  call  $1e97
25bf: 2f 16     bra   $25d7
25c1: 73 9b 13  bbc3  $9b,$25d7
25c4: e5 d6 08  mov   a,$08d6
25c7: 60        clrc
25c8: 85 d7 08  adc   a,$08d7
25cb: c5 d6 08  mov   $08d6,a
25ce: 90 07     bcc   $25d7
25d0: e8 ff     mov   a,#$ff
25d2: c5 d6 08  mov   $08d6,a
25d5: 72 9b     clr3  $9b
25d7: 6f        ret

25d8: cd 0f     mov   x,#$0f
25da: f5 7f 08  mov   a,$087f+x
25dd: d0 03     bne   $25e2
25df: 5f 45 26  jmp   $2645

25e2: f5 ff 07  mov   a,$07ff+x
25e5: 60        clrc
25e6: 95 ef 07  adc   a,$07ef+x
25e9: fd        mov   y,a
25ea: 28 01     and   a,#$01
25ec: d5 ff 07  mov   $07ff+x,a
25ef: dd        mov   a,y
25f0: 5c        lsr   a
25f1: 60        clrc
25f2: 95 df 07  adc   a,$07df+x
25f5: d5 df 07  mov   $07df+x,a
25f8: 28 7f     and   a,#$7f
25fa: fd        mov   y,a
25fb: f6 48 2d  mov   a,$2d48+y
25fe: fd        mov   y,a
25ff: f5 0f 08  mov   a,$080f+x
2602: cf        mul   ya
2603: f5 df 07  mov   a,$07df+x
2606: 30 03     bmi   $260b
2608: dd        mov   a,y
2609: 2f 03     bra   $260e
260b: dd        mov   a,y
260c: 08 80     or    a,#$80
260e: d5 1f 08  mov   $081f+x,a
2611: f5 5f 08  mov   a,$085f+x
2614: f0 2f     beq   $2645
2616: f5 4f 08  mov   a,$084f+x
2619: 60        clrc
261a: 95 3f 08  adc   a,$083f+x
261d: fd        mov   y,a
261e: 28 01     and   a,#$01
2620: d5 4f 08  mov   $084f+x,a
2623: dd        mov   a,y
2624: 5c        lsr   a
2625: 60        clrc
2626: 95 2f 08  adc   a,$082f+x
2629: d5 2f 08  mov   $082f+x,a
262c: 28 7f     and   a,#$7f
262e: fd        mov   y,a
262f: f6 48 2d  mov   a,$2d48+y
2632: fd        mov   y,a
2633: f5 5f 08  mov   a,$085f+x
2636: cf        mul   ya
2637: f5 2f 08  mov   a,$082f+x
263a: 30 03     bmi   $263f
263c: dd        mov   a,y
263d: 2f 03     bra   $2642
263f: dd        mov   a,y
2640: 08 80     or    a,#$80
2642: d5 6f 08  mov   $086f+x,a
2645: 1d        dec   x
2646: 10 92     bpl   $25da
2648: 6f        ret

2649: e4 f4     mov   a,$f4
264b: 2d        push  a
264c: 3f ca 05  call  $05ca
264f: 8f de 10  mov   $10,#$de
2652: 8f 09 11  mov   $11,#$09
2655: ae        pop   a
2656: 1c        asl   a
2657: 90 02     bcc   $265b
2659: ab 11     inc   $11
265b: fd        mov   y,a
265c: f7 10     mov   a,($10)+y
265e: 60        clrc
265f: 88 de     adc   a,#$de
2661: c4 18     mov   $18,a
2663: fc        inc   y
2664: f7 10     mov   a,($10)+y
2666: 88 09     adc   a,#$09
2668: c4 19     mov   $19,a
266a: 8f 00 14  mov   $14,#$00
266d: cd 00     mov   x,#$00
266f: e4 14     mov   a,$14
2671: 75 ae 00  cmp   a,$00ae+x
2674: f0 07     beq   $267d
2676: 3d        inc   x
2677: c8 08     cmp   x,#$08
2679: d0 f6     bne   $2671
267b: 2f 09     bra   $2686
267d: e4 14     mov   a,$14
267f: bc        inc   a
2680: c4 14     mov   $14,a
2682: 68 10     cmp   a,#$10
2684: d0 e7     bne   $266d
2686: e4 14     mov   a,$14
2688: c5 dd 08  mov   $08dd,a
268b: 8d 00     mov   y,#$00
268d: f7 18     mov   a,($18)+y
268f: fc        inc   y
2690: c4 15     mov   $15,a
2692: bc        inc   a
2693: c4 14     mov   $14,a
2695: 6d        push  y
2696: 3f fa 27  call  $27fa
2699: ee        pop   y
269a: f7 18     mov   a,($18)+y
269c: 5d        mov   x,a
269d: e8 01     mov   a,#$01
269f: d4 45     mov   $45+x,a
26a1: e8 02     mov   a,#$02
26a3: 14 3d     or    a,$3d+x
26a5: d4 3d     mov   $3d+x,a
26a7: 28 01     and   a,#$01
26a9: f0 03     beq   $26ae
26ab: 3f 6f 24  call  $246f
26ae: e5 dd 08  mov   a,$08dd
26b1: d5 ae 00  mov   $00ae+x,a
26b4: e8 00     mov   a,#$00
26b6: d5 af 07  mov   $07af+x,a
26b9: d5 bf 07  mov   $07bf+x,a
26bc: 6d        push  y
26bd: eb 14     mov   y,$14
26bf: f7 18     mov   a,($18)+y
26c1: 60        clrc
26c2: 84 18     adc   a,$18
26c4: d5 17 06  mov   $0617+x,a
26c7: fc        inc   y
26c8: f7 18     mov   a,($18)+y
26ca: 84 19     adc   a,$19
26cc: d5 27 06  mov   $0627+x,a
26cf: fc        inc   y
26d0: cb 14     mov   $14,y
26d2: ee        pop   y
26d3: e4 a7     mov   a,$a7
26d5: 48 ff     eor   a,#$ff
26d7: 15 18 2d  or    a,$2d18+x
26da: 48 ff     eor   a,#$ff
26dc: c4 a7     mov   $a7,a
26de: f5 28 2d  mov   a,$2d28+x
26e1: 24 a4     and   a,$a4
26e3: c4 a4     mov   $a4,a
26e5: 4d        push  x
26e6: 7d        mov   a,x
26e7: 60        clrc
26e8: 88 08     adc   a,#$08
26ea: 5d        mov   x,a
26eb: 3f cb 28  call  $28cb
26ee: e8 01     mov   a,#$01
26f0: d4 1d     mov   $1d+x,a
26f2: e8 00     mov   a,#$00
26f4: d4 2d     mov   $2d+x,a
26f6: ce        pop   x
26f7: fc        inc   y
26f8: 8b 15     dec   $15
26fa: f0 03     beq   $26ff
26fc: 5f 9a 26  jmp   $269a

26ff: 3f a3 28  call  $28a3
2702: e8 02     mov   a,#$02
2704: 04 9b     or    a,$9b
2706: c4 9b     mov   $9b,a
2708: 5f 8f 03  jmp   $038f

270b: e4 9b     mov   a,$9b
270d: 28 02     and   a,#$02
270f: d0 03     bne   $2714
2711: 5f ad 27  jmp   $27ad

2714: fa a7 b8  mov   ($b8),($a7)
2717: fa a4 ba  mov   ($ba),($a4)
271a: cd 08     mov   x,#$08
271c: f4 3d     mov   a,$3d+x
271e: f0 45     beq   $2765
2720: f4 2d     mov   a,$2d+x
2722: f0 07     beq   $272b
2724: 9b 2d     dec   $2d+x
2726: d0 03     bne   $272b
2728: 3f 6f 24  call  $246f
272b: 9b 1d     dec   $1d+x
272d: d0 36     bne   $2765
272f: 3f e3 1e  call  $1ee3
2732: f4 3d     mov   a,$3d+x
2734: 28 01     and   a,#$01
2736: d0 2d     bne   $2765
2738: 3f 42 28  call  $2842
273b: f4 a6     mov   a,$a6+x
273d: c4 10     mov   $10,a
273f: 08 80     or    a,#$80
2741: d4 a6     mov   $a6+x,a
2743: 4d        push  x
2744: cd 07     mov   x,#$07
2746: f4 ae     mov   a,$ae+x
2748: 30 04     bmi   $274e
274a: 64 10     cmp   a,$10
274c: f0 16     beq   $2764
274e: 1d        dec   x
274f: 10 f5     bpl   $2746
2751: cd 07     mov   x,#$07
2753: f4 ae     mov   a,$ae+x
2755: 10 0a     bpl   $2761
2757: 28 7f     and   a,#$7f
2759: 64 10     cmp   a,$10
275b: d0 04     bne   $2761
275d: e8 00     mov   a,#$00
275f: d4 ae     mov   $ae+x,a
2761: 1d        dec   x
2762: 10 ef     bpl   $2753
2764: ce        pop   x
2765: 3d        inc   x
2766: c8 10     cmp   x,#$10
2768: d0 b2     bne   $271c
276a: 8f 4d f2  mov   $f2,#$4d
276d: e4 f3     mov   a,$f3
276f: c4 12     mov   $12,a
2771: cd 00     mov   x,#$00
2773: f5 10 2d  mov   a,$2d10+x
2776: c4 11     mov   $11,a
2778: e4 a7     mov   a,$a7
277a: 48 ff     eor   a,#$ff
277c: 24 a0     and   a,$a0
277e: 24 11     and   a,$11
2780: f0 1b     beq   $279d
2782: e4 12     mov   a,$12
2784: 24 11     and   a,$11
2786: c4 10     mov   $10,a
2788: e4 a4     mov   a,$a4
278a: 24 11     and   a,$11
278c: 64 10     cmp   a,$10
278e: f0 0d     beq   $279d
2790: e4 a3     mov   a,$a3
2792: 24 a7     and   a,$a7
2794: 04 a4     or    a,$a4
2796: 8f 4d f2  mov   $f2,#$4d
2799: c4 f3     mov   $f3,a
279b: 2f 05     bra   $27a2
279d: 3d        inc   x
279e: c8 08     cmp   x,#$08
27a0: 90 d1     bcc   $2773
27a2: 69 a7 b8  cmp   ($b8),($a7)
27a5: f0 06     beq   $27ad
27a7: 3f 51 29  call  $2951
27aa: 3f 39 29  call  $2939
27ad: 6f        ret

27ae: 3f 51 29  call  $2951
27b1: 3f 39 29  call  $2939
27b4: 6f        ret

27b5: cd 08     mov   x,#$08
27b7: f4 3d     mov   a,$3d+x
27b9: 28 01     and   a,#$01
27bb: f0 06     beq   $27c3
27bd: 3f 42 28  call  $2842
27c0: 3f 6f 24  call  $246f
27c3: 3d        inc   x
27c4: c8 10     cmp   x,#$10
27c6: d0 ef     bne   $27b7
27c8: 3f ae 27  call  $27ae
27cb: e5 9b 00  mov   a,$009b
27ce: 28 fd     and   a,#$fd
27d0: c5 9b 00  mov   $009b,a
27d3: 3f ca 05  call  $05ca
27d6: 5f 8f 03  jmp   $038f

27d9: 8f de 10  mov   $10,#$de
27dc: 8f 09 11  mov   $11,#$09
27df: e4 f4     mov   a,$f4
27e1: 1c        asl   a
27e2: fd        mov   y,a
27e3: f7 10     mov   a,($10)+y
27e5: 60        clrc
27e6: 88 de     adc   a,#$de
27e8: c4 18     mov   $18,a
27ea: fc        inc   y
27eb: f7 10     mov   a,($10)+y
27ed: 88 09     adc   a,#$09
27ef: c4 19     mov   $19,a
27f1: 3f ca 05  call  $05ca
27f4: 3f fa 27  call  $27fa
27f7: 5f 8f 03  jmp   $038f

27fa: fa a7 b8  mov   ($b8),($a7)
27fd: 8d 00     mov   y,#$00
27ff: f7 18     mov   a,($18)+y
2801: c4 17     mov   $17,a
2803: fc        inc   y
2804: f7 18     mov   a,($18)+y
2806: fc        inc   y
2807: 5d        mov   x,a
2808: f5 ae 00  mov   a,$00ae+x
280b: f0 25     beq   $2832
280d: c4 16     mov   $16,a
280f: cd 08     mov   x,#$08
2811: f4 3d     mov   a,$3d+x
2813: 28 01     and   a,#$01
2815: f0 16     beq   $282d
2817: f5 a6 00  mov   a,$00a6+x
281a: 28 7f     and   a,#$7f
281c: 64 16     cmp   a,$16
281e: d0 0d     bne   $282d
2820: e8 00     mov   a,#$00
2822: d5 a6 00  mov   $00a6+x,a
2825: 6d        push  y
2826: 3f 42 28  call  $2842
2829: 3f 6f 24  call  $246f
282c: ee        pop   y
282d: 3d        inc   x
282e: c8 10     cmp   x,#$10
2830: d0 df     bne   $2811
2832: 8b 17     dec   $17
2834: d0 ce     bne   $2804
2836: 69 a7 b8  cmp   ($b8),($a7)
2839: f0 06     beq   $2841
283b: 3f ae 27  call  $27ae
283e: 3f a3 28  call  $28a3
2841: 6f        ret

2842: f5 20 2d  mov   a,$2d20+x
2845: c4 10     mov   $10,a
2847: 25 a2 00  and   a,$00a2
284a: c5 a2 00  mov   $00a2,a
284d: e5 a4 00  mov   a,$00a4
2850: 24 10     and   a,$10
2852: c5 a4 00  mov   $00a4,a
2855: e5 a6 00  mov   a,$00a6
2858: 24 10     and   a,$10
285a: c5 a6 00  mov   $00a6,a
285d: e8 01     mov   a,#$01
285f: d4 b8     mov   $b8+x,a
2861: f5 10 2d  mov   a,$2d10+x
2864: c4 10     mov   $10,a
2866: 04 a7     or    a,$a7
2868: c4 a7     mov   $a7,a
286a: 68 ff     cmp   a,#$ff
286c: d0 08     bne   $2876
286e: e5 9b 00  mov   a,$009b
2871: 28 fd     and   a,#$fd
2873: c5 9b 00  mov   $009b,a
2876: f4 35     mov   a,$35+x
2878: 28 01     and   a,#$01
287a: f0 06     beq   $2882
287c: e4 b7     mov   a,$b7
287e: 04 10     or    a,$10
2880: c4 b7     mov   $b7,a
2882: f4 35     mov   a,$35+x
2884: 28 fd     and   a,#$fd
2886: d4 35     mov   $35+x,a
2888: e8 00     mov   a,#$00
288a: d5 af 07  mov   $07af+x,a
288d: d5 bf 07  mov   $07bf+x,a
2890: d5 cf 07  mov   $07cf+x,a
2893: d4 3d     mov   $3d+x,a
2895: 8f 04 b9  mov   $b9,#$04
2898: 4d        push  x
2899: 7d        mov   a,x
289a: 80        setc
289b: a8 08     sbc   a,#$08
289d: 5d        mov   x,a
289e: 3f 7d 2b  call  $2b7d
28a1: ce        pop   x
28a2: 6f        ret

28a3: e4 96     mov   a,$96
28a5: f0 09     beq   $28b0
28a7: 8f 5c f2  mov   $f2,#$5c
28aa: c4 f3     mov   $f3,a
28ac: 8d 40     mov   y,#$40
28ae: fe fe     dbnz  y,$28ae
28b0: e4 95     mov   a,$95
28b2: f0 10     beq   $28c4
28b4: 8f 5c f2  mov   $f2,#$5c
28b7: 8f 00 f3  mov   $f3,#$00
28ba: 8d 40     mov   y,#$40
28bc: fe fe     dbnz  y,$28bc
28be: 8f 4c f2  mov   $f2,#$4c
28c1: fa 95 f3  mov   ($f3),($95)
28c4: e8 00     mov   a,#$00
28c6: c4 95     mov   $95,a
28c8: c4 96     mov   $96,a
28ca: 6f        ret

28cb: e8 00     mov   a,#$00
28cd: d5 ff 05  mov   $05ff+x,a
28d0: d5 2f 07  mov   $072f+x,a
28d3: d5 3f 07  mov   $073f+x,a
28d6: d5 4f 07  mov   $074f+x,a
28d9: d5 6f 07  mov   $076f+x,a
28dc: d5 7f 07  mov   $077f+x,a
28df: d5 8f 07  mov   $078f+x,a
28e2: d5 4f 08  mov   $084f+x,a
28e5: d5 ff 07  mov   $07ff+x,a
28e8: d5 7f 08  mov   $087f+x,a
28eb: d5 4f 06  mov   $064f+x,a
28ee: d5 5f 06  mov   $065f+x,a
28f1: d5 af 06  mov   $06af+x,a
28f4: d5 bf 06  mov   $06bf+x,a
28f7: d4 2d     mov   $2d+x,a
28f9: e8 00     mov   a,#$00
28fb: d5 cf 07  mov   $07cf+x,a
28fe: e8 40     mov   a,#$40
2900: d5 0f 07  mov   $070f+x,a
2903: e8 7f     mov   a,#$7f
2905: d5 ff 06  mov   $06ff+x,a
2908: e8 80     mov   a,#$80
290a: d5 9f 07  mov   $079f+x,a
290d: e8 20     mov   a,#$20
290f: d5 3f 08  mov   $083f+x,a
2912: e8 20     mov   a,#$20
2914: d5 ef 07  mov   $07ef+x,a
2917: e8 00     mov   a,#$00
2919: d5 1f 08  mov   $081f+x,a
291c: d5 6f 08  mov   $086f+x,a
291f: d5 df 07  mov   $07df+x,a
2922: d5 2f 08  mov   $082f+x,a
2925: d5 af 07  mov   $07af+x,a
2928: d5 bf 07  mov   $07bf+x,a
292b: d5 cf 07  mov   $07cf+x,a
292e: e8 10     mov   a,#$10
2930: d5 5f 08  mov   $085f+x,a
2933: e8 20     mov   a,#$20
2935: d5 0f 08  mov   $080f+x,a
2938: 6f        ret

2939: e4 a5     mov   a,$a5
293b: 24 a7     and   a,$a7
293d: 04 a6     or    a,$a6
293f: 8f 2d f2  mov   $f2,#$2d
2942: c4 f3     mov   $f3,a
2944: 6f        ret

2945: e4 a3     mov   a,$a3
2947: 24 a7     and   a,$a7
2949: 04 a4     or    a,$a4
294b: 8f 4d f2  mov   $f2,#$4d
294e: c4 f3     mov   $f3,a
2950: 6f        ret

2951: e4 a1     mov   a,$a1
2953: 24 a7     and   a,$a7
2955: 04 a2     or    a,$a2
2957: 8f 3d f2  mov   $f2,#$3d
295a: c4 f3     mov   $f3,a
295c: 6f        ret

295d: e5 cf 08  mov   a,$08cf
2960: 8f 1c f2  mov   $f2,#$1c
2963: c4 f3     mov   $f3,a
2965: 8f 0c f2  mov   $f2,#$0c
2968: c4 f3     mov   $f3,a
296a: 6f        ret

296b: e5 d3 08  mov   a,$08d3
296e: 1c        asl   a
296f: 1c        asl   a
2970: 1c        asl   a
2971: 5d        mov   x,a
2972: 8d 0f     mov   y,#$0f
2974: f5 86 29  mov   a,$2986+x
2977: cb f2     mov   $f2,y
2979: c4 f3     mov   $f3,a
297b: 3d        inc   x
297c: dd        mov   a,y
297d: 60        clrc
297e: 88 10     adc   a,#$10
2980: fd        mov   y,a
2981: 68 8f     cmp   a,#$8f
2983: d0 ef     bne   $2974
2985: 6f        ret

2986: db $7f,$00,$00,$00,$00,$00,$00,$00
298e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
2996: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
299e: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

29a6: ec d9 08  mov   y,$08d9
29a9: c8 08     cmp   x,#$08
29ab: b0 03     bcs   $29b0
29ad: ec d8 08  mov   y,$08d8
29b0: f5 4f 07  mov   a,$074f+x
29b3: 1c        asl   a
29b4: bc        inc   a
29b5: cf        mul   ya
29b6: f5 ff 06  mov   a,$06ff+x
29b9: 1c        asl   a
29ba: bc        inc   a
29bb: cf        mul   ya
29bc: dd        mov   a,y
29bd: d5 af 08  mov   $08af+x,a
29c0: 6f        ret

29c1: cd 00     mov   x,#$00
29c3: f4 3d     mov   a,$3d+x
29c5: 28 01     and   a,#$01
29c7: f0 06     beq   $29cf
29c9: f4 3d     mov   a,$3d+x
29cb: 28 02     and   a,#$02
29cd: f0 03     beq   $29d2
29cf: 5f 64 2a  jmp   $2a64

29d2: c8 08     cmp   x,#$08
29d4: b0 0f     bcs   $29e5
29d6: f4 c0     mov   a,$c0+x
29d8: d0 f5     bne   $29cf
29da: f5 af 08  mov   a,$08af+x
29dd: ec d6 08  mov   y,$08d6
29e0: cf        mul   ya
29e1: cb 10     mov   $10,y
29e3: 2f 05     bra   $29ea
29e5: f5 af 08  mov   a,$08af+x
29e8: c4 10     mov   $10,a
29ea: f5 6f 08  mov   a,$086f+x
29ed: f0 25     beq   $2a14
29ef: f5 7f 08  mov   a,$087f+x
29f2: f0 20     beq   $2a14
29f4: 1c        asl   a
29f5: eb 10     mov   y,$10
29f7: cf        mul   ya
29f8: 4d        push  x
29f9: f5 6f 08  mov   a,$086f+x
29fc: 1c        asl   a
29fd: cf        mul   ya
29fe: ce        pop   x
29ff: 90 09     bcc   $2a0a
2a01: dd        mov   a,y
2a02: 48 ff     eor   a,#$ff
2a04: bc        inc   a
2a05: 60        clrc
2a06: 84 10     adc   a,$10
2a08: 2f 08     bra   $2a12
2a0a: dd        mov   a,y
2a0b: 60        clrc
2a0c: 84 10     adc   a,$10
2a0e: 10 02     bpl   $2a12
2a10: e8 7f     mov   a,#$7f
2a12: c4 10     mov   $10,a
2a14: 03 99 16  bbs0  $99,$2a2d
2a17: f5 0f 07  mov   a,$070f+x
2a1a: 68 40     cmp   a,#$40
2a1c: f0 0f     beq   $2a2d
2a1e: eb 10     mov   y,$10
2a20: 1c        asl   a
2a21: cf        mul   ya
2a22: cb 13     mov   $13,y
2a24: dd        mov   a,y
2a25: a4 10     sbc   a,$10
2a27: 48 ff     eor   a,#$ff
2a29: c4 12     mov   $12,a
2a2b: 2f 07     bra   $2a34
2a2d: e4 10     mov   a,$10
2a2f: 5c        lsr   a
2a30: c4 12     mov   $12,a
2a32: c4 13     mov   $13,a
2a34: 33 99 16  bbc1  $99,$2a4d
2a37: f4 3d     mov   a,$3d+x
2a39: 28 20     and   a,#$20
2a3b: f0 05     beq   $2a42
2a3d: 58 ff 12  eor   $12,#$ff
2a40: ab 12     inc   $12
2a42: f4 3d     mov   a,$3d+x
2a44: 28 40     and   a,#$40
2a46: f0 05     beq   $2a4d
2a48: 58 ff 13  eor   $13,#$ff
2a4b: ab 13     inc   $13
2a4d: c8 08     cmp   x,#$08
2a4f: 90 07     bcc   $2a58
2a51: 7d        mov   a,x
2a52: 80        setc
2a53: a8 08     sbc   a,#$08
2a55: 9f        xcn   a
2a56: 2f 02     bra   $2a5a
2a58: 7d        mov   a,x
2a59: 9f        xcn   a
2a5a: c4 f2     mov   $f2,a
2a5c: fa 12 f3  mov   ($f3),($12)
2a5f: ab f2     inc   $f2
2a61: fa 13 f3  mov   ($f3),($13)
2a64: 3d        inc   x
2a65: c8 10     cmp   x,#$10
2a67: f0 03     beq   $2a6c
2a69: 5f c3 29  jmp   $29c3

2a6c: e5 d1 08  mov   a,$08d1
2a6f: eb bf     mov   y,$bf
2a71: cf        mul   ya
2a72: dd        mov   a,y
2a73: ec d6 08  mov   y,$08d6
2a76: cf        mul   ya
2a77: dd        mov   a,y
2a78: 33 99 06  bbc1  $99,$2a81
2a7b: 73 98 03  bbc3  $98,$2a81
2a7e: 48 ff     eor   a,#$ff
2a80: bc        inc   a
2a81: 8f 3c f2  mov   $f2,#$3c
2a84: c4 f3     mov   $f3,a
2a86: e5 d2 08  mov   a,$08d2
2a89: eb bf     mov   y,$bf
2a8b: cf        mul   ya
2a8c: dd        mov   a,y
2a8d: ec d6 08  mov   y,$08d6
2a90: cf        mul   ya
2a91: dd        mov   a,y
2a92: 33 99 06  bbc1  $99,$2a9b
2a95: 93 98 03  bbc4  $98,$2a9b
2a98: 48 ff     eor   a,#$ff
2a9a: bc        inc   a
2a9b: 8f 2c f2  mov   $f2,#$2c
2a9e: c4 f3     mov   $f3,a
2aa0: 6f        ret

2aa1: cd 00     mov   x,#$00
2aa3: f4 3d     mov   a,$3d+x
2aa5: 28 01     and   a,#$01
2aa7: f0 0e     beq   $2ab7
2aa9: f4 3d     mov   a,$3d+x
2aab: 28 02     and   a,#$02
2aad: d0 08     bne   $2ab7
2aaf: c8 08     cmp   x,#$08
2ab1: b0 07     bcs   $2aba
2ab3: f4 c0     mov   a,$c0+x
2ab5: f0 03     beq   $2aba
2ab7: 5f 3e 2b  jmp   $2b3e

2aba: f5 9f 07  mov   a,$079f+x
2abd: 68 80     cmp   a,#$80
2abf: d0 0c     bne   $2acd
2ac1: f4 4d     mov   a,$4d+x
2ac3: 28 f0     and   a,#$f0
2ac5: d4 6d     mov   $6d+x,a
2ac7: f4 5d     mov   a,$5d+x
2ac9: d4 7d     mov   $7d+x,a
2acb: 2f 2f     bra   $2afc
2acd: 08 00     or    a,#$00
2acf: d0 0e     bne   $2adf
2ad1: f4 4d     mov   a,$4d+x
2ad3: 1c        asl   a
2ad4: 28 f0     and   a,#$f0
2ad6: d4 6d     mov   $6d+x,a
2ad8: f4 5d     mov   a,$5d+x
2ada: 3c        rol   a
2adb: d4 7d     mov   $7d+x,a
2add: 2f 1d     bra   $2afc
2adf: fb 4d     mov   y,$4d+x
2ae1: cf        mul   ya
2ae2: cb 14     mov   $14,y
2ae4: f5 9f 07  mov   a,$079f+x
2ae7: fd        mov   y,a
2ae8: f4 5d     mov   a,$5d+x
2aea: cf        mul   ya
2aeb: 60        clrc
2aec: 84 14     adc   a,$14
2aee: c4 14     mov   $14,a
2af0: 90 01     bcc   $2af3
2af2: fc        inc   y
2af3: 1c        asl   a
2af4: 28 f0     and   a,#$f0
2af6: d4 6d     mov   $6d+x,a
2af8: dd        mov   a,y
2af9: 3c        rol   a
2afa: d4 7d     mov   $7d+x,a
2afc: f5 7f 08  mov   a,$087f+x
2aff: f0 3d     beq   $2b3e
2b01: fd        mov   y,a
2b02: f5 1f 08  mov   a,$081f+x
2b05: 1c        asl   a
2b06: cf        mul   ya
2b07: cb 11     mov   $11,y
2b09: f4 6d     mov   a,$6d+x
2b0b: cf        mul   ya
2b0c: cb 12     mov   $12,y
2b0e: eb 11     mov   y,$11
2b10: f4 7d     mov   a,$7d+x
2b12: cf        mul   ya
2b13: 60        clrc
2b14: 84 12     adc   a,$12
2b16: c4 12     mov   $12,a
2b18: dd        mov   a,y
2b19: 88 00     adc   a,#$00
2b1b: c4 13     mov   $13,a
2b1d: f5 1f 08  mov   a,$081f+x
2b20: 30 0f     bmi   $2b31
2b22: e4 12     mov   a,$12
2b24: 60        clrc
2b25: 94 6d     adc   a,$6d+x
2b27: d4 6d     mov   $6d+x,a
2b29: e4 13     mov   a,$13
2b2b: 94 7d     adc   a,$7d+x
2b2d: d4 7d     mov   $7d+x,a
2b2f: 2f 0d     bra   $2b3e
2b31: f4 6d     mov   a,$6d+x
2b33: 80        setc
2b34: a4 12     sbc   a,$12
2b36: d4 6d     mov   $6d+x,a
2b38: f4 7d     mov   a,$7d+x
2b3a: a4 13     sbc   a,$13
2b3c: d4 7d     mov   $7d+x,a
2b3e: 3d        inc   x
2b3f: c8 10     cmp   x,#$10
2b41: f0 03     beq   $2b46
2b43: 5f a3 2a  jmp   $2aa3

2b46: cd 00     mov   x,#$00
2b48: 8d 02     mov   y,#$02
2b4a: 4d        push  x
2b4b: f4 3d     mov   a,$3d+x
2b4d: 28 02     and   a,#$02
2b4f: f0 07     beq   $2b58
2b51: 7d        mov   a,x
2b52: 60        clrc
2b53: 88 08     adc   a,#$08
2b55: 5d        mov   x,a
2b56: 2f 06     bra   $2b5e
2b58: f4 3d     mov   a,$3d+x
2b5a: 28 01     and   a,#$01
2b5c: f0 13     beq   $2b71
2b5e: cb f2     mov   $f2,y
2b60: f4 6d     mov   a,$6d+x
2b62: 60        clrc
2b63: 95 af 07  adc   a,$07af+x
2b66: c4 f3     mov   $f3,a
2b68: ab f2     inc   $f2
2b6a: f4 7d     mov   a,$7d+x
2b6c: 95 bf 07  adc   a,$07bf+x
2b6f: c4 f3     mov   $f3,a
2b71: dd        mov   a,y
2b72: 60        clrc
2b73: 88 10     adc   a,#$10
2b75: fd        mov   y,a
2b76: ce        pop   x
2b77: 3d        inc   x
2b78: c8 08     cmp   x,#$08
2b7a: d0 ce     bne   $2b4a
2b7c: 6f        ret

2b7d: 4d        push  x
2b7e: d8 11     mov   $11,x
2b80: f5 1f 07  mov   a,$071f+x
2b83: 8d 00     mov   y,#$00
2b85: cd 0c     mov   x,#$0c
2b87: 9e        div   ya,x
2b88: 2d        push  a
2b89: f6 30 2d  mov   a,$2d30+y
2b8c: c4 10     mov   $10,a
2b8e: f6 3c 2d  mov   a,$2d3c+y
2b91: ee        pop   y
2b92: f0 08     beq   $2b9c
2b94: 5c        lsr   a
2b95: 6b 10     ror   $10
2b97: fc        inc   y
2b98: ad 08     cmp   y,#$08
2b9a: d0 f8     bne   $2b94
2b9c: f8 11     mov   x,$11
2b9e: d4 5d     mov   $5d+x,a
2ba0: e4 10     mov   a,$10
2ba2: d4 4d     mov   $4d+x,a
2ba4: f5 9f 08  mov   a,$089f+x
2ba7: fb 5d     mov   y,$5d+x
2ba9: cf        mul   ya
2baa: da 12     movw  $12,ya
2bac: f5 9f 08  mov   a,$089f+x
2baf: fb 4d     mov   y,$4d+x
2bb1: cf        mul   ya
2bb2: 6d        push  y
2bb3: f5 8f 08  mov   a,$088f+x
2bb6: fb 4d     mov   y,$4d+x
2bb8: cf        mul   ya
2bb9: 7a 12     addw  ya,$12
2bbb: da 12     movw  $12,ya
2bbd: f5 8f 08  mov   a,$088f+x
2bc0: fb 5d     mov   y,$5d+x
2bc2: cf        mul   ya
2bc3: fd        mov   y,a
2bc4: ae        pop   a
2bc5: 7a 12     addw  ya,$12
2bc7: d4 4d     mov   $4d+x,a
2bc9: db 5d     mov   $5d+x,y
2bcb: ce        pop   x
2bcc: 6f        ret

2bcd: c4 10     mov   $10,a
2bcf: 7d        mov   a,x
2bd0: 68 08     cmp   a,#$08
2bd2: 90 03     bcc   $2bd7
2bd4: 80        setc
2bd5: a8 08     sbc   a,#$08
2bd7: 9f        xcn   a
2bd8: 60        clrc
2bd9: 88 04     adc   a,#$04
2bdb: c4 f2     mov   $f2,a
2bdd: e4 10     mov   a,$10
2bdf: c4 f3     mov   $f3,a
2be1: 1c        asl   a
2be2: 1c        asl   a
2be3: fd        mov   y,a
2be4: 03 be 1c  bbs0  $be,$2c03
2be7: f6 de 08  mov   a,$08de+y
2bea: c8 08     cmp   x,#$08
2bec: b0 03     bcs   $2bf1
2bee: d5 bf 08  mov   $08bf+x,a
2bf1: ab f2     inc   $f2
2bf3: c4 f3     mov   $f3,a
2bf5: f6 df 08  mov   a,$08df+y
2bf8: ab f2     inc   $f2
2bfa: c4 f3     mov   $f3,a
2bfc: c8 08     cmp   x,#$08
2bfe: b0 03     bcs   $2c03
2c00: d5 c7 08  mov   $08c7+x,a
2c03: f6 e0 08  mov   a,$08e0+y
2c06: d5 8f 08  mov   $088f+x,a
2c09: f6 e1 08  mov   a,$08e1+y
2c0c: d5 9f 08  mov   $089f+x,a
2c0f: 6f        ret

2c10: e8 00     mov   a,#$00
2c12: c4 f1     mov   $f1,a
2c14: 8f 6c f2  mov   $f2,#$6c
2c17: 8f e0 f3  mov   $f3,#$e0
2c1a: cd 00     mov   x,#$00
2c1c: f5 f9 2c  mov   a,$2cf9+x
2c1f: 68 ff     cmp   a,#$ff
2c21: f0 0b     beq   $2c2e
2c23: c4 f2     mov   $f2,a
2c25: 3d        inc   x
2c26: f5 f9 2c  mov   a,$2cf9+x
2c29: c4 f3     mov   $f3,a
2c2b: 3d        inc   x
2c2c: 2f ee     bra   $2c1c
2c2e: 8f 6d f2  mov   $f2,#$6d
2c31: 8f 00 f3  mov   $f3,#$00
2c34: 8f 7d f2  mov   $f2,#$7d
2c37: 8f 00 f3  mov   $f3,#$00
2c3a: cd 00     mov   x,#$00
2c3c: 8d 00     mov   y,#$00
2c3e: d8 f2     mov   $f2,x
2c40: f6 f1 2c  mov   a,$2cf1+y
2c43: c4 f3     mov   $f3,a
2c45: fc        inc   y
2c46: 3d        inc   x
2c47: ad 08     cmp   y,#$08
2c49: d0 f3     bne   $2c3e
2c4b: 7d        mov   a,x
2c4c: 28 f0     and   a,#$f0
2c4e: 60        clrc
2c4f: 88 10     adc   a,#$10
2c51: 5d        mov   x,a
2c52: 68 80     cmp   a,#$80
2c54: d0 e6     bne   $2c3c
2c56: 8f 80 fa  mov   $fa,#$80
2c59: 8f 01 f1  mov   $f1,#$01
2c5c: cd 0f     mov   x,#$0f
2c5e: e4 fd     mov   a,$fd
2c60: f0 fc     beq   $2c5e
2c62: 1d        dec   x
2c63: d0 f9     bne   $2c5e
2c65: 8f 00 f1  mov   $f1,#$00
2c68: 8f 6c f2  mov   $f2,#$6c
2c6b: e8 20     mov   a,#$20
2c6d: c4 f3     mov   $f3,a
2c6f: c5 da 08  mov   $08da,a
2c72: e8 78     mov   a,#$78
2c74: c5 cf 08  mov   $08cf,a
2c77: 3f 5d 29  call  $295d
2c7a: e8 1e     mov   a,#$1e
2c7c: 3f e8 22  call  $22e8
2c7f: e8 5a     mov   a,#$5a
2c81: c5 d4 08  mov   $08d4,a
2c84: e8 00     mov   a,#$00
2c86: c5 d3 08  mov   $08d3,a
2c89: e8 00     mov   a,#$00
2c8b: c5 d5 08  mov   $08d5,a
2c8e: 3f 6b 29  call  $296b
2c91: 6f        ret

2c92: e8 00     mov   a,#$00
2c94: 8f 4d f2  mov   $f2,#$4d
2c97: c4 f3     mov   $f3,a
2c99: 8f 3c f2  mov   $f2,#$3c
2c9c: c4 f3     mov   $f3,a
2c9e: 8f 2c f2  mov   $f2,#$2c
2ca1: c4 f3     mov   $f3,a
2ca3: e5 da 08  mov   a,$08da
2ca6: 08 20     or    a,#$20
2ca8: 8f 6c f2  mov   $f2,#$6c
2cab: c4 f3     mov   $f3,a
2cad: 8f 7d f2  mov   $f2,#$7d
2cb0: e5 d5 08  mov   a,$08d5
2cb3: c4 f3     mov   $f3,a
2cb5: 8f 6d f2  mov   $f2,#$6d
2cb8: e5 d5 08  mov   a,$08d5
2cbb: d0 04     bne   $2cc1
2cbd: 8f 00 f3  mov   $f3,#$00
2cc0: 6f        ret

2cc1: 1c        asl   a
2cc2: 1c        asl   a
2cc3: 1c        asl   a
2cc4: 48 ff     eor   a,#$ff
2cc6: bc        inc   a
2cc7: c4 f3     mov   $f3,a
2cc9: c4 19     mov   $19,a
2ccb: 8f 00 18  mov   $18,#$00
2cce: e5 d5 08  mov   a,$08d5
2cd1: 1c        asl   a
2cd2: 1c        asl   a
2cd3: 1c        asl   a
2cd4: 5d        mov   x,a
2cd5: 8d 00     mov   y,#$00
2cd7: e8 00     mov   a,#$00
2cd9: d7 18     mov   ($18)+y,a
2cdb: fc        inc   y
2cdc: d0 fb     bne   $2cd9
2cde: ab 19     inc   $19
2ce0: 1d        dec   x
2ce1: d0 f2     bne   $2cd5
2ce3: e5 da 08  mov   a,$08da
2ce6: 28 1f     and   a,#$1f
2ce8: c5 da 08  mov   $08da,a
2ceb: 8f 6c f2  mov   $f2,#$6c
2cee: c4 f3     mov   $f3,a
2cf0: 6f        ret

2cf1: 00        
2cf2: 00        
2cf3: 00        
2cf4: 10 00     
2cf6: ff        
2cf7: ff        
2cf8: 00        
2cf9: 1c        
2cfa: 00        
2cfb: 0c 00 4c  
2cfe: 00        
2cff: 5c        
2d00: 00        
2d01: 2d        
2d02: 00        
2d03: 3d        
2d04: 00        
2d05: 5d        
2d06: 02 4d     
2d08: 00        
2d09: 0d        
2d0a: 00        
2d0b: 3c        
2d0c: 00        
2d0d: 2c 00 ff  
2d10: 01        
2d11: 02 04     
2d13: 08 10     
2d15: 20        
2d16: 40        
2d17: 80        
2d18: 01        
2d19: 02 04     
2d1b: 08 10     
2d1d: 20        
2d1e: 40        
2d1f: 80        
2d20: fe fd     
2d22: fb f7     
2d24: ef        
2d25: df        
2d26: bf        
2d27: 7f        
2d28: fe fd     
2d2a: fb f7     
2d2c: ef        
2d2d: df        
2d2e: bf        
2d2f: 7f        
2d30: 7d        
2d31: 7b 97     
2d33: d3 31 b3  
2d36: 5c        
2d37: 2d        
2d38: 29 52 ab  
2d3b: 38 21 23  
2d3e: 25 27 2a  
2d41: 2c 2f 32  
2d44: 35 38 3b  
2d47: 3f 00 03  
2d4a: 06        
2d4b: 09 0d 10  
2d4e: 13 16 19  
2d51: 1c        
2d52: 1f 22 25  
2d55: 28 2b     
2d57: 2e 31 34  
2d5a: 37 3a     
2d5c: 3c        
2d5d: 3f 42 44  
2d60: 47 4a     
2d62: 4c 4f 51  
2d65: 53 56 58  
2d68: 5a 5d     
2d6a: 5f 61 63  
2d6d: 65 67 68  
2d70: 6a 6c 6d  
2d73: 6f        
2d74: 71        
2d75: 72 73     
2d77: 75 76 77  
2d7a: 78 79 7a  
2d7d: 7b 7c     
2d7f: 7c        
2d80: 7d        
2d81: 7d        
2d82: 7e 7e     
2d84: 7f        
2d85: 7f        
2d86: 7f        
2d87: 7f        
2d88: 7f        
2d89: 7f        
2d8a: 7f        
2d8b: 7f        
2d8c: 7e 7e     
2d8e: 7d        
2d8f: 7d        
2d90: 7c        
2d91: 7c        
2d92: 7b 7a     
2d94: 79        
2d95: 78 77 76  
2d98: 75 73 72  
2d9b: 71        
2d9c: 6f        
2d9d: 6d        
2d9e: 6c 6a 68  
2da1: 67 65     
2da3: 63 61 5f  
2da6: 5d        
2da7: 5a 58     
2da9: 56 53 51  
2dac: 4f 4c     
2dae: 4a 47 44  
2db1: 42 3f     
2db3: 3c        
2db4: 3a 37     
2db6: 34 31     
2db8: 2e 2b 28  
2dbb: 25 22 1f  
2dbe: 1c        
2dbf: 19        
2dc0: 16 13 10  
2dc3: 0d        
2dc4: 09 06 03  
2dc7: 00        
