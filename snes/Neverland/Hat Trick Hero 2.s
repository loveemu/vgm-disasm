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
0312: 3f cb 19  call  $19cb
0315: 1d        dec   x
0316: 10 f6     bpl   $030e
0318: cd 07     mov   x,#$07
031a: e8 00     mov   a,#$00
031c: d5 ae 00  mov   $00ae+x,a
031f: 1d        dec   x
0320: 10 fa     bpl   $031c
0322: c5 a7 08  mov   $08a7,a
0325: 3f 98 1c  call  $1c98
0328: e8 ff     mov   a,#$ff
032a: c5 a2 08  mov   $08a2,a
032d: e8 ff     mov   a,#$ff
032f: c5 a3 08  mov   $08a3,a
0332: e8 ff     mov   a,#$ff
0334: c5 a0 08  mov   $08a0,a
0337: e8 00     mov   a,#$00
0339: c4 b9     mov   $b9,a
033b: c4 b7     mov   $b7,a
033d: c4 b6     mov   $b6,a
033f: c4 a1     mov   $a1,a
0341: c4 a2     mov   $a2,a
0343: c4 a5     mov   $a5,a
0345: c4 a6     mov   $a6,a
0347: c4 a3     mov   $a3,a
0349: c4 a4     mov   $a4,a
034b: c4 a0     mov   $a0,a
034d: c4 95     mov   $95,a
034f: c4 96     mov   $96,a
0351: c5 a6 08  mov   $08a6,a
0354: e8 ff     mov   a,#$ff
0356: c4 9a     mov   $9a,a
0358: c4 a7     mov   $a7,a
035a: e8 04     mov   a,#$04
035c: c5 a1 08  mov   $08a1,a
035f: 8f 5c f2  mov   $f2,#$5c
0362: 8f ff f3  mov   $f3,#$ff
0365: 8d 40     mov   y,#$40
0367: fe fe     dbnz  y,$0367
0369: 8f 00 f3  mov   $f3,#$00
036c: 8f ab f4  mov   $f4,#$ab
036f: 8f cd f5  mov   $f5,#$cd
0372: 78 67 f6  cmp   $f6,#$67
0375: d0 fb     bne   $0372
0377: 78 89 f7  cmp   $f7,#$89
037a: d0 fb     bne   $0377
037c: 8f 80 f1  mov   $f1,#$80
037f: 8f 7d fb  mov   $fb,#$7d
0382: 8f 82 f1  mov   $f1,#$82
0385: 3f c4 05  call  $05c4
0388: 13 9b 14  bbc0  $9b,$039f
038b: e4 fd     mov   a,$fd
038d: f0 10     beq   $039f
038f: c4 1c     mov   $1c,a
0391: e9 a6 08  mov   x,$08a6
0394: f0 02     beq   $0398
0396: 0b 1c     asl   $1c
0398: 3f 3e 0f  call  $0f3e
039b: 8b 1c     dec   $1c
039d: d0 f9     bne   $0398
039f: e4 fe     mov   a,$fe
03a1: f0 03     beq   $03a6
03a3: 3f d6 15  call  $15d6
03a6: e4 f6     mov   a,$f6
03a8: f0 de     beq   $0388
03aa: 64 f7     cmp   a,$f7
03ac: d0 da     bne   $0388
03ae: 9c        dec   a
03af: 1c        asl   a
03b0: 5d        mov   x,a
03b1: 1f b4 03  jmp   ($03b4+x)

03b4: dw $0589
03b6: dw $03f0
03b8: dw $03fc
03ba: dw $17c0
03bc: dw $18d1
03be: dw $040f
03c0: dw $0416
03c2: dw $0422
03c4: dw $042b
03c6: dw $0402
03c8: dw $0436
03ca: dw $043e
03cc: dw $0446
03ce: dw $0472
03d0: dw $0478
03d2: dw $047e
03d4: dw $0484
03d6: dw $0523
03d8: dw $048b
03da: dw $049f
03dc: dw $0494
03de: dw $052a
03e0: dw $0534
03e2: dw $044d
03e4: dw $18f2
03e6: dw $0454
03e8: dw $0461
03ea: dw $056b
03ec: dw $04a8
03ee: dw $051d

03f0: 72 9b     clr3  $9b
03f2: 52 9b     clr2  $9b
03f4: e8 ff     mov   a,#$ff
03f6: c5 a0 08  mov   $08a0,a
03f9: 5f d5 0e  jmp   $0ed5

03fc: 3f 88 0f  call  $0f88
03ff: 5f 85 03  jmp   $0385

0402: 8d 01     mov   y,#$01
0404: e8 00     mov   a,#$00
0406: f8 f4     mov   x,$f4
0408: 9e        div   ya,x
0409: c5 a1 08  mov   $08a1,a
040c: 5f 85 03  jmp   $0385

040f: 42 9b     set2  $9b
0411: 72 9b     clr3  $9b
0413: 5f 85 03  jmp   $0385

0416: 62 9b     set3  $9b
0418: 52 9b     clr2  $9b
041a: e8 00     mov   a,#$00
041c: c5 a0 08  mov   $08a0,a
041f: 5f d5 0e  jmp   $0ed5

0422: fa 8d f4  mov   ($f4),($8d)
0425: fa a0 f5  mov   ($f5),($a0)
0428: 5f 85 03  jmp   $0385

042b: e4 f4     mov   a,$f4
042d: c5 99 08  mov   $0899,a
0430: 3f 41 1a  call  $1a41
0433: 5f 85 03  jmp   $0385

0436: e4 f4     mov   a,$f4
0438: c5 a2 08  mov   $08a2,a
043b: 5f 85 03  jmp   $0385

043e: e4 f4     mov   a,$f4
0440: c5 a3 08  mov   $08a3,a
0443: 5f 85 03  jmp   $0385

0446: e4 f4     mov   a,$f4
0448: c4 99     mov   $99,a
044a: 5f 85 03  jmp   $0385

044d: e4 99     mov   a,$99
044f: c4 f4     mov   $f4,a
0451: 5f 85 03  jmp   $0385

0454: e4 f4     mov   a,$f4
0456: f8 f5     mov   x,$f5
0458: d5 f9 06  mov   $06f9+x,a
045b: 3f 8a 1a  call  $1a8a
045e: 5f 88 03  jmp   $0388

0461: e4 f5     mov   a,$f5
0463: 60        clrc
0464: 88 08     adc   a,#$08
0466: 5d        mov   x,a
0467: e4 f4     mov   a,$f4
0469: d5 f9 06  mov   $06f9+x,a
046c: 3f 8a 1a  call  $1a8a
046f: 5f 85 03  jmp   $0385

0472: 3f 98 1c  call  $1c98
0475: 5f 85 03  jmp   $0385

0478: fa 9b f4  mov   ($f4),($9b)
047b: 5f 85 03  jmp   $0385

047e: fa f4 9a  mov   ($9a),($f4)
0481: 5f 85 03  jmp   $0385

0484: ba f4     movw  ya,$f4
0486: da 9c     movw  $9c,ya
0488: 5f 85 03  jmp   $0385

048b: e4 f4     mov   a,$f4
048d: 1c        asl   a
048e: 1c        asl   a
048f: c4 9e     mov   $9e,a
0491: 5f 85 03  jmp   $0385

0494: e5 a6 08  mov   a,$08a6
0497: 48 ff     eor   a,#$ff
0499: c5 a6 08  mov   $08a6,a
049c: 5f 85 03  jmp   $0385

049f: 3f ae 04  call  $04ae
04a2: 3f c4 05  call  $05c4
04a5: 5f 90 05  jmp   $0590

04a8: 3f ae 04  call  $04ae
04ab: 5f 85 03  jmp   $0385

04ae: 3f c4 05  call  $05c4
04b1: 8d 08     mov   y,#$08
04b3: 3f 0d 05  call  $050d
04b6: c4 08     mov   $08,a
04b8: 3f 0d 05  call  $050d
04bb: c4 09     mov   $09,a
04bd: 3f 0d 05  call  $050d
04c0: c4 04     mov   $04,a
04c2: 3f 0d 05  call  $050d
04c5: c4 05     mov   $05,a
04c7: f8 9e     mov   x,$9e
04c9: 3f 0d 05  call  $050d
04cc: d5 a8 08  mov   $08a8+x,a
04cf: 3f 0d 05  call  $050d
04d2: d5 a9 08  mov   $08a9+x,a
04d5: 3f 0d 05  call  $050d
04d8: d5 aa 08  mov   $08aa+x,a
04db: 3f 0d 05  call  $050d
04de: d5 ab 08  mov   $08ab+x,a
04e1: e4 9c     mov   a,$9c
04e3: d5 00 02  mov   $0200+x,a
04e6: c4 0c     mov   $0c,a
04e8: 60        clrc
04e9: 84 08     adc   a,$08
04eb: c4 9c     mov   $9c,a
04ed: e4 9d     mov   a,$9d
04ef: d5 01 02  mov   $0201+x,a
04f2: c4 0d     mov   $0d,a
04f4: 84 09     adc   a,$09
04f6: c4 9d     mov   $9d,a
04f8: ba 0c     movw  ya,$0c
04fa: 7a 04     addw  ya,$04
04fc: d5 02 02  mov   $0202+x,a
04ff: dd        mov   a,y
0500: d5 03 02  mov   $0203+x,a
0503: 60        clrc
0504: 98 04 9e  adc   $9e,#$04
0507: 78 ff f6  cmp   $f6,#$ff
050a: d0 fb     bne   $0507
050c: 6f        ret

050d: dd        mov   a,y
050e: 64 f6     cmp   a,$f6
0510: d0 fc     bne   $050e
0512: e4 f4     mov   a,$f4
0514: 2d        push  a
0515: dd        mov   a,y
0516: 08 80     or    a,#$80
0518: c4 f6     mov   $f6,a
051a: dc        dec   y
051b: ae        pop   a
051c: 6f        ret

051d: fa a0 f4  mov   ($f4),($a0)
0520: 5f 85 03  jmp   $0385

0523: ba 9c     movw  ya,$9c
0525: da f4     movw  $f4,ya
0527: 5f 85 03  jmp   $0385

052a: ba f4     movw  ya,$f4
052c: da a8     movw  $a8,ya
052e: 8f ff ad  mov   $ad,#$ff
0531: 5f 85 03  jmp   $0385

0534: 3f c4 05  call  $05c4
0537: e8 ff     mov   a,#$ff
0539: 64 f6     cmp   a,$f6
053b: d0 fc     bne   $0539
053d: c4 f6     mov   $f6,a
053f: 8d 00     mov   y,#$00
0541: dd        mov   a,y
0542: 28 7f     and   a,#$7f
0544: 78 ff f7  cmp   $f7,#$ff
0547: d0 03     bne   $054c
0549: 5f 85 03  jmp   $0385

054c: 64 f6     cmp   a,$f6
054e: d0 f1     bne   $0541
0550: dd        mov   a,y
0551: 5d        mov   x,a
0552: e4 f4     mov   a,$f4
0554: d7 a8     mov   ($a8)+y,a
0556: fc        inc   y
0557: d0 02     bne   $055b
0559: ab a9     inc   $a9
055b: e4 f5     mov   a,$f5
055d: d7 a8     mov   ($a8)+y,a
055f: fc        inc   y
0560: d0 02     bne   $0564
0562: ab a9     inc   $a9
0564: 7d        mov   a,x
0565: 08 80     or    a,#$80
0567: c4 f6     mov   $f6,a
0569: 2f d6     bra   $0541
056b: 8d 00     mov   y,#$00
056d: e4 f4     mov   a,$f4
056f: d7 a8     mov   ($a8)+y,a
0571: fc        inc   y
0572: e4 f5     mov   a,$f5
0574: d7 a8     mov   ($a8)+y,a
0576: 3f c4 05  call  $05c4
0579: e4 a8     mov   a,$a8
057b: 60        clrc
057c: 88 02     adc   a,#$02
057e: c4 a8     mov   $a8,a
0580: e4 a9     mov   a,$a9
0582: 88 00     adc   a,#$00
0584: c4 a9     mov   $a9,a
0586: 5f 88 03  jmp   $0388

0589: ba f4     movw  ya,$f4
058b: da 0c     movw  $0c,ya
058d: 3f c4 05  call  $05c4
0590: e8 ff     mov   a,#$ff
0592: 64 f6     cmp   a,$f6
0594: d0 fc     bne   $0592
0596: c4 f6     mov   $f6,a
0598: 8d 00     mov   y,#$00
059a: dd        mov   a,y
059b: 28 7f     and   a,#$7f
059d: 78 ff f7  cmp   $f7,#$ff
05a0: d0 03     bne   $05a5
05a2: 5f 85 03  jmp   $0385

05a5: 64 f6     cmp   a,$f6
05a7: d0 f4     bne   $059d
05a9: dd        mov   a,y
05aa: 5d        mov   x,a
05ab: e4 f4     mov   a,$f4
05ad: d7 0c     mov   ($0c)+y,a
05af: fc        inc   y
05b0: d0 02     bne   $05b4
05b2: ab 0d     inc   $0d
05b4: e4 f5     mov   a,$f5
05b6: d7 0c     mov   ($0c)+y,a
05b8: fc        inc   y
05b9: d0 02     bne   $05bd
05bb: ab 0d     inc   $0d
05bd: 7d        mov   a,x
05be: 08 80     or    a,#$80
05c0: c4 f6     mov   $f6,a
05c2: 2f d6     bra   $059a
05c4: 8f cd f6  mov   $f6,#$cd
05c7: 8f ef f7  mov   $f7,#$ef
05ca: e8 00     mov   a,#$00
05cc: 64 f6     cmp   a,$f6
05ce: d0 fc     bne   $05cc
05d0: 64 f7     cmp   a,$f7
05d2: d0 fc     bne   $05d0
05d4: c4 f6     mov   $f6,a
05d6: c4 f7     mov   $f7,a
05d8: 6f        ret

0ed5: e8 00     mov   a,#$00
0ed7: c5 a1 00  mov   $00a1,a
0eda: c5 a5 00  mov   $00a5,a
0edd: c5 a3 00  mov   $00a3,a
0ee0: 8f 10 18  mov   $18,#$10
0ee3: 8f 28 19  mov   $19,#$28
0ee6: cd 00     mov   x,#$00
0ee8: 8d 00     mov   y,#$00
0eea: f4 3d     mov   a,$3d+x
0eec: 28 02     and   a,#$02
0eee: d4 3d     mov   $3d+x,a
0ef0: f7 18     mov   a,($18)+y
0ef2: 68 ff     cmp   a,#$ff
0ef4: f0 08     beq   $0efe
0ef6: 28 80     and   a,#$80
0ef8: 08 01     or    a,#$01
0efa: 14 3d     or    a,$3d+x
0efc: d4 3d     mov   $3d+x,a
0efe: 3d        inc   x
0eff: fc        inc   y
0f00: ad 08     cmp   y,#$08
0f02: d0 e6     bne   $0eea
0f04: 8d 10     mov   y,#$10
0f06: cd 00     mov   x,#$00
0f08: 3f cb 19  call  $19cb
0f0b: e8 01     mov   a,#$01
0f0d: d4 1d     mov   $1d+x,a
0f0f: e8 00     mov   a,#$00
0f11: d4 8d     mov   $8d+x,a
0f13: f7 18     mov   a,($18)+y
0f15: d5 d9 05  mov   $05d9+x,a
0f18: c4 10     mov   $10,a
0f1a: fc        inc   y
0f1b: f7 18     mov   a,($18)+y
0f1d: 60        clrc
0f1e: 88 28     adc   a,#$28
0f20: d5 e9 05  mov   $05e9+x,a
0f23: c4 11     mov   $11,a
0f25: fc        inc   y
0f26: 3f 7a 14  call  $147a
0f29: 6d        push  y
0f2a: e8 00     mov   a,#$00
0f2c: 3f 65 1c  call  $1c65
0f2f: ee        pop   y
0f30: 3d        inc   x
0f31: c8 08     cmp   x,#$08
0f33: f0 03     beq   $0f38
0f35: 5f 08 0f  jmp   $0f08

0f38: 8f 0f b6  mov   $b6,#$0f
0f3b: 5f 85 03  jmp   $0385

0f3e: cd 00     mov   x,#$00
0f40: f4 3d     mov   a,$3d+x
0f42: 28 01     and   a,#$01
0f44: f0 33     beq   $0f79
0f46: f4 2d     mov   a,$2d+x
0f48: f0 0d     beq   $0f57
0f4a: 9b 2d     dec   $2d+x
0f4c: d0 09     bne   $0f57
0f4e: f4 3d     mov   a,$3d+x
0f50: 28 02     and   a,#$02
0f52: d0 03     bne   $0f57
0f54: 3f e1 14  call  $14e1
0f57: 9b 1d     dec   $1d+x
0f59: d0 1e     bne   $0f79
0f5b: 3f d9 0f  call  $0fd9
0f5e: f4 3d     mov   a,$3d+x
0f60: 30 17     bmi   $0f79
0f62: 28 02     and   a,#$02
0f64: d0 13     bne   $0f79
0f66: f5 3c 1d  mov   a,$1d3c+x
0f69: 24 b7     and   a,$b7
0f6b: f0 0c     beq   $0f79
0f6d: 48 ff     eor   a,#$ff
0f6f: 24 b7     and   a,$b7
0f71: c4 b7     mov   $b7,a
0f73: f5 e9 06  mov   a,$06e9+x
0f76: 3f 65 1c  call  $1c65
0f79: 3d        inc   x
0f7a: c8 08     cmp   x,#$08
0f7c: d0 c2     bne   $0f40
0f7e: 3f a9 1a  call  $1aa9
0f81: 3f 45 1b  call  $1b45
0f84: 3f a3 19  call  $19a3
0f87: 6f        ret

0f88: e4 9b     mov   a,$9b
0f8a: 28 f2     and   a,#$f2
0f8c: c4 9b     mov   $9b,a
0f8e: 8f 00 a1  mov   $a1,#$00
0f91: 8f 00 a5  mov   $a5,#$00
0f94: 3f 35 1a  call  $1a35
0f97: 3f 1d 1a  call  $1a1d
0f9a: 8f ff 9a  mov   $9a,#$ff
0f9d: cd 07     mov   x,#$07
0f9f: f4 3d     mov   a,$3d+x
0fa1: 28 01     and   a,#$01
0fa3: f0 09     beq   $0fae
0fa5: f4 3d     mov   a,$3d+x
0fa7: 28 02     and   a,#$02
0fa9: d0 03     bne   $0fae
0fab: 3f e1 14  call  $14e1
0fae: f4 3d     mov   a,$3d+x
0fb0: 28 02     and   a,#$02
0fb2: d4 3d     mov   $3d+x,a
0fb4: 1d        dec   x
0fb5: 10 e8     bpl   $0f9f
0fb7: e8 00     mov   a,#$00
0fb9: c4 95     mov   $95,a
0fbb: 3f a3 19  call  $19a3
0fbe: e8 00     mov   a,#$00
0fc0: c5 9b 08  mov   $089b,a
0fc3: c5 9c 08  mov   $089c,a
0fc6: e8 00     mov   a,#$00
0fc8: c5 9f 08  mov   $089f,a
0fcb: e8 30     mov   a,#$30
0fcd: c5 9e 08  mov   $089e,a
0fd0: e8 00     mov   a,#$00
0fd2: c5 9d 08  mov   $089d,a
0fd5: 8f 01 98  mov   $98,#$01
0fd8: 6f        ret

0fd9: f5 09 06  mov   a,$0609+x
0fdc: c4 18     mov   $18,a
0fde: f5 19 06  mov   a,$0619+x
0fe1: c4 19     mov   $19,a
0fe3: 8d 00     mov   y,#$00
0fe5: f7 18     mov   a,($18)+y
0fe7: 30 26     bmi   $100f
0fe9: 3f ab 14  call  $14ab
0fec: fc        inc   y
0fed: 60        clrc
0fee: 95 f9 05  adc   a,$05f9+x
0ff1: d5 19 07  mov   $0719+x,a
0ff4: f7 18     mov   a,($18)+y
0ff6: d5 29 07  mov   $0729+x,a
0ff9: fc        inc   y
0ffa: f7 18     mov   a,($18)+y
0ffc: d5 39 07  mov   $0739+x,a
0fff: fc        inc   y
1000: f7 18     mov   a,($18)+y
1002: d5 49 07  mov   $0749+x,a
1005: 3f 8a 1a  call  $1a8a
1008: e8 04     mov   a,#$04
100a: 3f 6c 14  call  $146c
100d: 2f 2e     bra   $103d
100f: fc        inc   y
1010: 68 f0     cmp   a,#$f0
1012: 90 03     bcc   $1017
1014: 5f 9c 10  jmp   $109c

1017: 3f ab 14  call  $14ab
101a: 28 7f     and   a,#$7f
101c: 60        clrc
101d: 95 f9 05  adc   a,$05f9+x
1020: d5 19 07  mov   $0719+x,a
1023: f5 69 07  mov   a,$0769+x
1026: d5 29 07  mov   $0729+x,a
1029: f5 79 07  mov   a,$0779+x
102c: d5 39 07  mov   $0739+x,a
102f: f5 89 07  mov   a,$0789+x
1032: d5 49 07  mov   $0749+x,a
1035: 3f 8a 1a  call  $1a8a
1038: e8 01     mov   a,#$01
103a: 3f 6c 14  call  $146c
103d: f4 3d     mov   a,$3d+x
103f: 28 02     and   a,#$02
1041: d0 1b     bne   $105e
1043: f5 39 07  mov   a,$0739+x
1046: f0 16     beq   $105e
1048: f4 3d     mov   a,$3d+x
104a: 30 1d     bmi   $1069
104c: f4 2d     mov   a,$2d+x
104e: f0 08     beq   $1058
1050: f5 59 07  mov   a,$0759+x
1053: 75 19 07  cmp   a,$0719+x
1056: f0 06     beq   $105e
1058: 3f 15 1c  call  $1c15
105b: 3f c6 14  call  $14c6
105e: f5 29 07  mov   a,$0729+x
1061: d4 1d     mov   $1d+x,a
1063: f5 39 07  mov   a,$0739+x
1066: d4 2d     mov   $2d+x,a
1068: 6f        ret

1069: 3f c6 14  call  $14c6
106c: 8d 00     mov   y,#$00
106e: f6 62 15  mov   a,$1562+y
1071: f0 28     beq   $109b
1073: 75 19 07  cmp   a,$0719+x
1076: f0 03     beq   $107b
1078: fc        inc   y
1079: 2f f3     bra   $106e
107b: f6 7a 15  mov   a,$157a+y
107e: d4 4d     mov   $4d+x,a
1080: f6 91 15  mov   a,$1591+y
1083: d4 5d     mov   $5d+x,a
1085: f6 a8 15  mov   a,$15a8+y
1088: d5 09 07  mov   $0709+x,a
108b: f6 bf 15  mov   a,$15bf+y
108e: 3f 65 1c  call  $1c65
1091: f5 29 07  mov   a,$0729+x
1094: d4 1d     mov   $1d+x,a
1096: f5 39 07  mov   a,$0739+x
1099: d4 2d     mov   $2d+x,a
109b: 6f        ret

109c: 4d        push  x
109d: 80        setc
109e: a8 f0     sbc   a,#$f0
10a0: 1c        asl   a
10a1: 5d        mov   x,a
10a2: 1f f2 14  jmp   ($14f2+x)

10a5: ce        pop   x
10a6: 3f 64 14  call  $1464
10a9: 2d        push  a
10aa: f5 59 08  mov   a,$0859+x
10ad: d0 06     bne   $10b5
10af: d5 b9 07  mov   $07b9+x,a
10b2: d5 09 08  mov   $0809+x,a
10b5: ae        pop   a
10b6: d5 59 08  mov   $0859+x,a
10b9: e8 03     mov   a,#$03
10bb: 5f 59 14  jmp   $1459

10be: ce        pop   x
10bf: 3f 64 14  call  $1464
10c2: d5 f9 06  mov   $06f9+x,a
10c5: 3f 8a 1a  call  $1a8a
10c8: e8 03     mov   a,#$03
10ca: 5f 59 14  jmp   $1459

10cd: ce        pop   x
10ce: 3f 64 14  call  $1464
10d1: d5 09 07  mov   $0709+x,a
10d4: e8 03     mov   a,#$03
10d6: 5f 59 14  jmp   $1459

10d9: ce        pop   x
10da: 3f 64 14  call  $1464
10dd: e8 02     mov   a,#$02
10df: 5f 59 14  jmp   $1459

10e2: ce        pop   x
10e3: 3f 64 14  call  $1464
10e6: d5 99 07  mov   $0799+x,a
10e9: e8 03     mov   a,#$03
10eb: 5f 59 14  jmp   $1459

10ee: ce        pop   x
10ef: 3f 64 14  call  $1464
10f2: d5 e9 06  mov   $06e9+x,a
10f5: f4 3d     mov   a,$3d+x
10f7: 28 02     and   a,#$02
10f9: d0 06     bne   $1101
10fb: f5 e9 06  mov   a,$06e9+x
10fe: 3f 65 1c  call  $1c65
1101: e8 03     mov   a,#$03
1103: 5f 59 14  jmp   $1459

1106: ce        pop   x
1107: 4d        push  x
1108: 7d        mov   a,x
1109: fd        mov   y,a
110a: f5 49 06  mov   a,$0649+x
110d: f0 0a     beq   $1119
110f: f5 59 06  mov   a,$0659+x
1112: d0 2d     bne   $1141
1114: 7d        mov   a,x
1115: 60        clrc
1116: 88 10     adc   a,#$10
1118: 5d        mov   x,a
1119: f6 d9 05  mov   a,$05d9+y
111c: d5 29 06  mov   $0629+x,a
111f: f6 e9 05  mov   a,$05e9+y
1122: d5 49 06  mov   $0649+x,a
1125: f6 09 06  mov   a,$0609+y
1128: 60        clrc
1129: 88 01     adc   a,#$01
112b: d5 69 06  mov   $0669+x,a
112e: f6 19 06  mov   a,$0619+y
1131: 88 00     adc   a,#$00
1133: d5 89 06  mov   $0689+x,a
1136: e8 fe     mov   a,#$fe
1138: d5 a9 06  mov   $06a9+x,a
113b: f6 f9 05  mov   a,$05f9+y
113e: d5 c9 06  mov   $06c9+x,a
1141: ce        pop   x
1142: e8 01     mov   a,#$01
1144: 5f 59 14  jmp   $1459

1147: ce        pop   x
1148: 4d        push  x
1149: f7 18     mov   a,($18)+y
114b: 9c        dec   a
114c: f0 4b     beq   $1199
114e: c4 10     mov   $10,a
1150: 7d        mov   a,x
1151: fd        mov   y,a
1152: f5 59 06  mov   a,$0659+x
1155: f0 05     beq   $115c
1157: 7d        mov   a,x
1158: 60        clrc
1159: 88 10     adc   a,#$10
115b: 5d        mov   x,a
115c: f5 a9 06  mov   a,$06a9+x
115f: 68 ff     cmp   a,#$ff
1161: f0 14     beq   $1177
1163: 68 fe     cmp   a,#$fe
1165: f0 0b     beq   $1172
1167: 9c        dec   a
1168: d5 a9 06  mov   $06a9+x,a
116b: d0 0a     bne   $1177
116d: d5 49 06  mov   $0649+x,a
1170: 2f 27     bra   $1199
1172: e4 10     mov   a,$10
1174: d5 a9 06  mov   $06a9+x,a
1177: f5 29 06  mov   a,$0629+x
117a: d6 d9 05  mov   $05d9+y,a
117d: f5 49 06  mov   a,$0649+x
1180: d6 e9 05  mov   $05e9+y,a
1183: f5 69 06  mov   a,$0669+x
1186: d6 09 06  mov   $0609+y,a
1189: f5 89 06  mov   a,$0689+x
118c: d6 19 06  mov   $0619+y,a
118f: f5 c9 06  mov   a,$06c9+x
1192: d6 f9 05  mov   $05f9+y,a
1195: ce        pop   x
1196: 5f d9 0f  jmp   $0fd9

1199: ce        pop   x
119a: e8 02     mov   a,#$02
119c: 5f 59 14  jmp   $1459

119f: 6f        ret

11a0: ce        pop   x
11a1: e8 00     mov   a,#$00
11a3: d5 f9 05  mov   $05f9+x,a
11a6: bb 8d     inc   $8d+x
11a8: f5 d9 05  mov   a,$05d9+x
11ab: 60        clrc
11ac: 88 02     adc   a,#$02
11ae: c4 10     mov   $10,a
11b0: d5 d9 05  mov   $05d9+x,a
11b3: f5 e9 05  mov   a,$05e9+x
11b6: 88 00     adc   a,#$00
11b8: c4 11     mov   $11,a
11ba: d5 e9 05  mov   $05e9+x,a
11bd: 8d 00     mov   y,#$00
11bf: f7 10     mov   a,($10)+y
11c1: 68 ff     cmp   a,#$ff
11c3: d0 26     bne   $11eb
11c5: f4 3d     mov   a,$3d+x
11c7: 28 fe     and   a,#$fe
11c9: d4 3d     mov   $3d+x,a
11cb: 8d 07     mov   y,#$07
11cd: e8 00     mov   a,#$00
11cf: 16 3d 00  or    a,$003d+y
11d2: dc        dec   y
11d3: 10 fa     bpl   $11cf
11d5: 28 01     and   a,#$01
11d7: d0 06     bne   $11df
11d9: e4 9b     mov   a,$9b
11db: 28 fe     and   a,#$fe
11dd: c4 9b     mov   $9b,a
11df: f4 3d     mov   a,$3d+x
11e1: 28 02     and   a,#$02
11e3: d4 3d     mov   $3d+x,a
11e5: d0 03     bne   $11ea
11e7: 3f e1 14  call  $14e1
11ea: 6f        ret

11eb: 3f 7a 14  call  $147a
11ee: 5f d9 0f  jmp   $0fd9

11f1: ce        pop   x
11f2: e8 00     mov   a,#$00
11f4: d4 3d     mov   $3d+x,a
11f6: 3f e1 14  call  $14e1
11f9: 6f        ret

11fa: f7 18     mov   a,($18)+y
11fc: fc        inc   y
11fd: 1c        asl   a
11fe: 5d        mov   x,a
11ff: 1f 1a 15  jmp   ($151a+x)

1202: ce        pop   x
1203: f7 18     mov   a,($18)+y
1205: c5 9f 08  mov   $089f,a
1208: 8f 01 98  mov   $98,#$01
120b: e8 03     mov   a,#$03
120d: 5f 59 14  jmp   $1459

1210: ce        pop   x
1211: f7 18     mov   a,($18)+y
1213: c5 9e 08  mov   $089e,a
1216: 8f 0d f2  mov   $f2,#$0d
1219: c4 f3     mov   $f3,a
121b: e8 03     mov   a,#$03
121d: 5f 59 14  jmp   $1459

1220: ce        pop   x
1221: f7 18     mov   a,($18)+y
1223: c5 9d 08  mov   $089d,a
1226: 4d        push  x
1227: 3f 4f 1a  call  $1a4f
122a: ce        pop   x
122b: e8 03     mov   a,#$03
122d: 5f 59 14  jmp   $1459

1230: ce        pop   x
1231: f5 3c 1d  mov   a,$1d3c+x
1234: c8 08     cmp   x,#$08
1236: 90 06     bcc   $123e
1238: 04 a4     or    a,$a4
123a: c4 a4     mov   $a4,a
123c: 2f 04     bra   $1242
123e: 04 a3     or    a,$a3
1240: c4 a3     mov   $a3,a
1242: 3f 29 1a  call  $1a29
1245: e8 03     mov   a,#$03
1247: 5f 59 14  jmp   $1459

124a: ce        pop   x
124b: f5 4c 1d  mov   a,$1d4c+x
124e: c8 08     cmp   x,#$08
1250: 90 06     bcc   $1258
1252: 24 a4     and   a,$a4
1254: c4 a4     mov   $a4,a
1256: 2f 04     bra   $125c
1258: 24 a3     and   a,$a3
125a: c4 a3     mov   $a3,a
125c: 3f 29 1a  call  $1a29
125f: e8 03     mov   a,#$03
1261: 5f 59 14  jmp   $1459

1264: ce        pop   x
1265: e8 03     mov   a,#$03
1267: 5f 59 14  jmp   $1459

126a: ce        pop   x
126b: e8 03     mov   a,#$03
126d: 5f 59 14  jmp   $1459

1270: ce        pop   x
1271: e8 03     mov   a,#$03
1273: 5f 59 14  jmp   $1459

1276: ce        pop   x
1277: 3f e7 12  call  $12e7
127a: 38 0f 12  and   $12,#$0f
127d: e4 f3     mov   a,$f3
127f: 28 f0     and   a,#$f0
1281: 04 12     or    a,$12
1283: c4 f3     mov   $f3,a
1285: e8 03     mov   a,#$03
1287: 5f 59 14  jmp   $1459

128a: ce        pop   x
128b: 3f e7 12  call  $12e7
128e: e4 12     mov   a,$12
1290: 9f        xcn   a
1291: 28 70     and   a,#$70
1293: c4 12     mov   $12,a
1295: e4 f3     mov   a,$f3
1297: 28 0f     and   a,#$0f
1299: 04 12     or    a,$12
129b: 08 80     or    a,#$80
129d: c4 f3     mov   $f3,a
129f: e8 03     mov   a,#$03
12a1: 5f 59 14  jmp   $1459

12a4: ce        pop   x
12a5: 3f e7 12  call  $12e7
12a8: ab f2     inc   $f2
12aa: e4 12     mov   a,$12
12ac: 9f        xcn   a
12ad: 1c        asl   a
12ae: 28 e0     and   a,#$e0
12b0: c4 12     mov   $12,a
12b2: e4 f3     mov   a,$f3
12b4: 28 1f     and   a,#$1f
12b6: 04 12     or    a,$12
12b8: c4 f3     mov   $f3,a
12ba: e8 03     mov   a,#$03
12bc: 5f 59 14  jmp   $1459

12bf: ce        pop   x
12c0: 3f e7 12  call  $12e7
12c3: ab f2     inc   $f2
12c5: e4 12     mov   a,$12
12c7: 28 1f     and   a,#$1f
12c9: c4 12     mov   $12,a
12cb: e4 f3     mov   a,$f3
12cd: 28 e0     and   a,#$e0
12cf: 04 12     or    a,$12
12d1: c4 f3     mov   $f3,a
12d3: e8 03     mov   a,#$03
12d5: 5f 59 14  jmp   $1459

12d8: ce        pop   x
12d9: f7 18     mov   a,($18)+y
12db: 28 1f     and   a,#$1f
12dd: 08 80     or    a,#$80
12df: d5 a9 07  mov   $07a9+x,a
12e2: e8 03     mov   a,#$03
12e4: 5f 59 14  jmp   $1459

12e7: f7 18     mov   a,($18)+y
12e9: c4 12     mov   $12,a
12eb: 7d        mov   a,x
12ec: 9f        xcn   a
12ed: 60        clrc
12ee: 88 05     adc   a,#$05
12f0: c4 f2     mov   $f2,a
12f2: 6f        ret

12f3: ce        pop   x
12f4: f7 18     mov   a,($18)+y
12f6: 3f 42 13  call  $1342
12f9: c5 9c 08  mov   $089c,a
12fc: c5 9b 08  mov   $089b,a
12ff: e4 98     mov   a,$98
1301: 28 07     and   a,#$07
1303: d0 04     bne   $1309
1305: 62 98     set3  $98
1307: 82 98     set4  $98
1309: e8 03     mov   a,#$03
130b: 5f 59 14  jmp   $1459

130e: ce        pop   x
130f: f7 18     mov   a,($18)+y
1311: ec 99 08  mov   y,$0899
1314: cf        mul   ya
1315: 1c        asl   a
1316: dd        mov   a,y
1317: 3c        rol   a
1318: c5 9b 08  mov   $089b,a
131b: e4 98     mov   a,$98
131d: 28 07     and   a,#$07
131f: d0 02     bne   $1323
1321: 62 98     set3  $98
1323: e8 03     mov   a,#$03
1325: 5f 59 14  jmp   $1459

1328: ce        pop   x
1329: f7 18     mov   a,($18)+y
132b: ec 99 08  mov   y,$0899
132e: cf        mul   ya
132f: 1c        asl   a
1330: dd        mov   a,y
1331: 3c        rol   a
1332: c5 9c 08  mov   $089c,a
1335: e4 98     mov   a,$98
1337: 28 07     and   a,#$07
1339: d0 02     bne   $133d
133b: 82 98     set4  $98
133d: e8 03     mov   a,#$03
133f: 5f 59 14  jmp   $1459

1342: ec 99 08  mov   y,$0899
1345: cf        mul   ya
1346: 1c        asl   a
1347: dd        mov   a,y
1348: 3c        rol   a
1349: c5 9b 08  mov   $089b,a
134c: c5 9c 08  mov   $089c,a
134f: 6f        ret

1350: ce        pop   x
1351: f7 18     mov   a,($18)+y
1353: 28 1f     and   a,#$1f
1355: c4 10     mov   $10,a
1357: e5 a4 08  mov   a,$08a4
135a: 28 e0     and   a,#$e0
135c: 04 10     or    a,$10
135e: c5 a4 08  mov   $08a4,a
1361: 8f 6c f2  mov   $f2,#$6c
1364: c4 f3     mov   $f3,a
1366: e8 03     mov   a,#$03
1368: 5f 59 14  jmp   $1459

136b: ce        pop   x
136c: f5 3c 1d  mov   a,$1d3c+x
136f: c8 08     cmp   x,#$08
1371: 90 06     bcc   $1379
1373: 04 a2     or    a,$a2
1375: c4 a2     mov   $a2,a
1377: 2f 04     bra   $137d
1379: 04 a1     or    a,$a1
137b: c4 a1     mov   $a1,a
137d: 3f 35 1a  call  $1a35
1380: e8 03     mov   a,#$03
1382: 5f 59 14  jmp   $1459

1385: ce        pop   x
1386: f5 4c 1d  mov   a,$1d4c+x
1389: c8 08     cmp   x,#$08
138b: 90 06     bcc   $1393
138d: 24 a2     and   a,$a2
138f: c4 a2     mov   $a2,a
1391: 2f 04     bra   $1397
1393: 24 a1     and   a,$a1
1395: c4 a1     mov   $a1,a
1397: 3f 35 1a  call  $1a35
139a: e8 03     mov   a,#$03
139c: 5f 59 14  jmp   $1459

139f: ce        pop   x
13a0: f5 3c 1d  mov   a,$1d3c+x
13a3: c8 08     cmp   x,#$08
13a5: 90 06     bcc   $13ad
13a7: 04 a6     or    a,$a6
13a9: c4 a6     mov   $a6,a
13ab: 2f 04     bra   $13b1
13ad: 04 a5     or    a,$a5
13af: c4 a5     mov   $a5,a
13b1: 3f 1d 1a  call  $1a1d
13b4: e8 03     mov   a,#$03
13b6: 5f 59 14  jmp   $1459

13b9: ce        pop   x
13ba: f5 4c 1d  mov   a,$1d4c+x
13bd: c8 08     cmp   x,#$08
13bf: 90 06     bcc   $13c7
13c1: 24 a6     and   a,$a6
13c3: c4 a6     mov   $a6,a
13c5: 2f 04     bra   $13cb
13c7: 24 a5     and   a,$a5
13c9: c4 a5     mov   $a5,a
13cb: 3f 1d 1a  call  $1a1d
13ce: e8 03     mov   a,#$03
13d0: 5f 59 14  jmp   $1459

13d3: ce        pop   x
13d4: f7 18     mov   a,($18)+y
13d6: d5 39 08  mov   $0839+x,a
13d9: e8 03     mov   a,#$03
13db: 5f 59 14  jmp   $1459

13de: ce        pop   x
13df: f7 18     mov   a,($18)+y
13e1: d5 e9 07  mov   $07e9+x,a
13e4: e8 03     mov   a,#$03
13e6: 5f 59 14  jmp   $1459

13e9: ce        pop   x
13ea: f7 18     mov   a,($18)+y
13ec: d5 19 08  mov   $0819+x,a
13ef: e8 03     mov   a,#$03
13f1: 5f 59 14  jmp   $1459

13f4: ce        pop   x
13f5: f7 18     mov   a,($18)+y
13f7: d5 c9 07  mov   $07c9+x,a
13fa: e8 03     mov   a,#$03
13fc: 5f 59 14  jmp   $1459

13ff: ce        pop   x
1400: f4 3d     mov   a,$3d+x
1402: 08 20     or    a,#$20
1404: d4 3d     mov   $3d+x,a
1406: e8 03     mov   a,#$03
1408: 5f 59 14  jmp   $1459

140b: ce        pop   x
140c: f4 3d     mov   a,$3d+x
140e: 08 40     or    a,#$40
1410: d4 3d     mov   $3d+x,a
1412: e8 03     mov   a,#$03
1414: 5f 59 14  jmp   $1459

1417: ce        pop   x
1418: f5 3d 00  mov   a,$003d+x
141b: 28 9f     and   a,#$9f
141d: d5 3d 00  mov   $003d+x,a
1420: e8 03     mov   a,#$03
1422: 5f 59 14  jmp   $1459

1425: ce        pop   x
1426: e4 98     mov   a,$98
1428: 28 07     and   a,#$07
142a: d0 02     bne   $142e
142c: 82 98     set4  $98
142e: c2 98     set6  $98
1430: e8 03     mov   a,#$03
1432: 5f 59 14  jmp   $1459

1435: ce        pop   x
1436: e4 98     mov   a,$98
1438: 28 07     and   a,#$07
143a: d0 02     bne   $143e
143c: 62 98     set3  $98
143e: a2 98     set5  $98
1440: e8 03     mov   a,#$03
1442: 5f 59 14  jmp   $1459

1445: ce        pop   x
1446: e4 98     mov   a,$98
1448: 28 07     and   a,#$07
144a: d0 04     bne   $1450
144c: 62 98     set3  $98
144e: 82 98     set4  $98
1450: b2 98     clr5  $98
1452: d2 98     clr6  $98
1454: e8 03     mov   a,#$03
1456: 5f 59 14  jmp   $1459

1459: 3f 6c 14  call  $146c
145c: f4 1d     mov   a,$1d+x
145e: f0 01     beq   $1461
1460: 6f        ret

1461: 5f d9 0f  jmp   $0fd9

1464: f7 18     mov   a,($18)+y
1466: d4 1d     mov   $1d+x,a
1468: fc        inc   y
1469: f7 18     mov   a,($18)+y
146b: 6f        ret

146c: 60        clrc
146d: 84 18     adc   a,$18
146f: d5 09 06  mov   $0609+x,a
1472: e4 19     mov   a,$19
1474: 88 00     adc   a,#$00
1476: d5 19 06  mov   $0619+x,a
1479: 6f        ret

147a: 6d        push  y
147b: 8d 00     mov   y,#$00
147d: f7 10     mov   a,($10)+y
147f: 10 1c     bpl   $149d
1481: 28 7f     and   a,#$7f
1483: d5 f9 05  mov   $05f9+x,a
1486: f5 d9 05  mov   a,$05d9+x
1489: 60        clrc
148a: 88 01     adc   a,#$01
148c: d5 d9 05  mov   $05d9+x,a
148f: c4 10     mov   $10,a
1491: f5 e9 05  mov   a,$05e9+x
1494: 88 00     adc   a,#$00
1496: d5 e9 05  mov   $05e9+x,a
1499: c4 11     mov   $11,a
149b: 2f de     bra   $147b
149d: 60        clrc
149e: 88 28     adc   a,#$28
14a0: d5 19 06  mov   $0619+x,a
14a3: fc        inc   y
14a4: f7 10     mov   a,($10)+y
14a6: d5 09 06  mov   $0609+x,a
14a9: ee        pop   y
14aa: 6f        ret

14ab: 2d        push  a
14ac: f5 19 07  mov   a,$0719+x
14af: d5 59 07  mov   $0759+x,a
14b2: f5 29 07  mov   a,$0729+x
14b5: d5 69 07  mov   $0769+x,a
14b8: f5 39 07  mov   a,$0739+x
14bb: d5 79 07  mov   $0779+x,a
14be: f5 49 07  mov   a,$0749+x
14c1: d5 89 07  mov   $0789+x,a
14c4: ae        pop   a
14c5: 6f        ret

14c6: f5 3c 1d  mov   a,$1d3c+x
14c9: 04 95     or    a,$95
14cb: c8 08     cmp   x,#$08
14cd: b0 02     bcs   $14d1
14cf: 24 9a     and   a,$9a
14d1: c4 95     mov   $95,a
14d3: f5 3c 1d  mov   a,$1d3c+x
14d6: 04 a0     or    a,$a0
14d8: c8 08     cmp   x,#$08
14da: b0 02     bcs   $14de
14dc: 24 9a     and   a,$9a
14de: c4 a0     mov   $a0,a
14e0: 6f        ret

14e1: f5 3c 1d  mov   a,$1d3c+x
14e4: 04 96     or    a,$96
14e6: c4 96     mov   $96,a
14e8: f5 3c 1d  mov   a,$1d3c+x
14eb: 48 ff     eor   a,#$ff
14ed: 24 a0     and   a,$a0
14ef: c4 a0     mov   $a0,a
14f1: 6f        ret

; vcmd dispatch table
14f2: dw $10a5  ; f0
14f4: dw $10be  ; f1
14f6: dw $10cd  ; f2
14f8: dw $10d9  ; f3
14fa: dw $1512  ; f4
14fc: dw $1512  ; f5
14fe: dw $10e2  ; f6
1500: dw $10ee  ; f7
1502: dw $1512  ; f8
1504: dw $1512  ; f9
1506: dw $1512  ; fa
1508: dw $1106  ; fb
150a: dw $1147  ; fc
150c: dw $11a0  ; fd
150e: dw $11f1  ; fe
1510: dw $11fa  ; ff

1512: e8 01     mov   a,#$01
1514: 3f 6c 14  call  $146c
1517: 5f d9 0f  jmp   $0fd9

151a: dw $1202
151c: dw $1210
151e: dw $1220
1520: dw $1230
1522: dw $124a
1524: dw $1264
1526: dw $126a
1528: dw $1270
152a: dw $1276
152c: dw $128a
152e: dw $12a4
1530: dw $12bf
1532: dw $12d8
1534: dw $12f3
1536: dw $130e
1538: dw $1328
153a: dw $1350
153c: dw $136b
153e: dw $1385
1540: dw $139f
1542: dw $13b9
1544: dw $13d3
1546: dw $13de
1548: dw $13e9
154a: dw $13f4
154c: dw $13ff
154e: dw $140b
1550: dw $1417
1552: dw $1425
1554: dw $1435
1556: dw $1445
1558: dw $155a

155a: e8 03     mov   a,#$03
155c: 3f 6c 14  call  $146c
155f: 5f d9 0f  jmp   $0fd9

1562: 24 26     
1564: 2a 2e 28  
1567: 34 30     
1569: 2d        
156a: 29 31 39  
156d: 02 03     
156f: 04 05     
1571: 06        
1572: 07 33     
1574: 27 38     
1576: 1b 37     
1578: 25 00 00  
157b: 00        
157c: 00        
157d: 90 00     
157f: fc        
1580: 14 00     
1582: fe 00     
1584: 00        
1585: 00        
1586: 00        
1587: 00        
1588: 00        
1589: 00        
158a: 00        
158b: 00        
158c: 00        
158d: 00        
158e: 00        
158f: 00        
1590: 00        
1591: 11        
1592: 0e 10 10  
1595: 05 0f 0c  
1598: 09 06 10  
159b: 0c 0b 10  
159e: 10 10     
15a0: 0e 07 11  
15a3: 10 10     
15a5: 10 10     
15a7: 10 40     
15a9: 40        
15aa: 30 30     
15ac: 40        
15ad: 30 36     
15af: 44 50     
15b1: 4b 34     
15b3: 40        
15b4: 40        
15b5: 36 44 40  
15b8: 46        
15b9: 5a 40     
15bb: 40        
15bc: 49 42 54  
15bf: 0a 0b 0d  
15c2: 0e 0c 0f  
15c5: 0f        
15c6: 0f        
15c7: 0f        
15c8: 10 10     
15ca: 3b 3c     
15cc: 2e 2d 2f  
15cf: 2c 3e 3f  
15d2: 3d        
15d3: 09 1b 1c  

15d6: 3f ef 15  call  $15ef
15d9: 3f 62 18  call  $1862
15dc: 3f 37 16  call  $1637
15df: 3f 69 16  call  $1669
15e2: 3f 4f 17  call  $174f
15e5: 3f 45 1b  call  $1b45
15e8: 3f a9 1a  call  $1aa9
15eb: 3f a3 19  call  $19a3
15ee: 6f        ret

15ef: e4 b9     mov   a,$b9
15f1: f0 08     beq   $15fb
15f3: 9c        dec   a
15f4: c4 b9     mov   $b9,a
15f6: d0 03     bne   $15fb
15f8: 3f 29 1a  call  $1a29
15fb: e4 b6     mov   a,$b6
15fd: f0 37     beq   $1636
15ff: 9c        dec   a
1600: c4 b6     mov   $b6,a
1602: d0 32     bne   $1636
1604: 18 01 9b  or    $9b,#$01
1607: 3f 1d 1a  call  $1a1d
160a: 3f 35 1a  call  $1a35
160d: e8 30     mov   a,#$30
160f: 3f 42 13  call  $1342
1612: e5 19 28  mov   a,$2819
1615: c5 9f 08  mov   $089f,a
1618: e8 30     mov   a,#$30
161a: c5 9e 08  mov   $089e,a
161d: e8 00     mov   a,#$00
161f: c5 9d 08  mov   $089d,a
1622: 8f 01 98  mov   $98,#$01
1625: 3f 4f 1a  call  $1a4f
1628: 8f 00 f1  mov   $f1,#$00
162b: e5 03 28  mov   a,$2803
162e: c4 fa     mov   $fa,a
1630: 8f 7d fb  mov   $fb,#$7d
1633: 8f 03 f1  mov   $f1,#$03
1636: 6f        ret

1637: 53 9b 18  bbc2  $9b,$1652
163a: e5 a0 08  mov   a,$08a0
163d: 80        setc
163e: a5 a1 08  sbc   a,$08a1
1641: c5 a0 08  mov   $08a0,a
1644: b0 22     bcs   $1668
1646: e8 00     mov   a,#$00
1648: c5 a0 08  mov   $08a0,a
164b: 52 9b     clr2  $9b
164d: 3f 88 0f  call  $0f88
1650: 2f 16     bra   $1668
1652: 73 9b 13  bbc3  $9b,$1668
1655: e5 a0 08  mov   a,$08a0
1658: 60        clrc
1659: 85 a1 08  adc   a,$08a1
165c: c5 a0 08  mov   $08a0,a
165f: 90 07     bcc   $1668
1661: e8 ff     mov   a,#$ff
1663: c5 a0 08  mov   $08a0,a
1666: 72 9b     clr3  $9b
1668: 6f        ret

1669: 73 98 27  bbc3  $98,$1693
166c: 8f 3c f2  mov   $f2,#$3c
166f: e4 f3     mov   a,$f3
1671: 10 03     bpl   $1676
1673: 48 ff     eor   a,#$ff
1675: bc        inc   a
1676: 65 9b 08  cmp   a,$089b
1679: f0 08     beq   $1683
167b: 90 03     bcc   $1680
167d: 9c        dec   a
167e: 2f 08     bra   $1688
1680: bc        inc   a
1681: 2f 05     bra   $1688
1683: 72 98     clr3  $98
1685: e5 9b 08  mov   a,$089b
1688: 03 99 06  bbs0  $99,$1691
168b: b3 98 03  bbc5  $98,$1691
168e: 48 ff     eor   a,#$ff
1690: bc        inc   a
1691: c4 f3     mov   $f3,a
1693: 93 98 27  bbc4  $98,$16bd
1696: 8f 2c f2  mov   $f2,#$2c
1699: e4 f3     mov   a,$f3
169b: 10 03     bpl   $16a0
169d: 48 ff     eor   a,#$ff
169f: bc        inc   a
16a0: 65 9c 08  cmp   a,$089c
16a3: f0 08     beq   $16ad
16a5: 90 03     bcc   $16aa
16a7: 9c        dec   a
16a8: 2f 08     bra   $16b2
16aa: bc        inc   a
16ab: 2f 05     bra   $16b2
16ad: 92 98     clr4  $98
16af: e5 9c 08  mov   a,$089c
16b2: 03 99 06  bbs0  $99,$16bb
16b5: d3 98 03  bbc6  $98,$16bb
16b8: 48 ff     eor   a,#$ff
16ba: bc        inc   a
16bb: c4 f3     mov   $f3,a
16bd: 13 98 45  bbc0  $98,$1705
16c0: 12 98     clr0  $98
16c2: e8 00     mov   a,#$00
16c4: 8f 4d f2  mov   $f2,#$4d
16c7: c4 f3     mov   $f3,a
16c9: 8f 3c f2  mov   $f2,#$3c
16cc: c4 f3     mov   $f3,a
16ce: 8f 2c f2  mov   $f2,#$2c
16d1: c4 f3     mov   $f3,a
16d3: e5 a4 08  mov   a,$08a4
16d6: 08 20     or    a,#$20
16d8: c5 a4 08  mov   $08a4,a
16db: 8f 6c f2  mov   $f2,#$6c
16de: c4 f3     mov   $f3,a
16e0: e5 9f 08  mov   a,$089f
16e3: d0 04     bne   $16e9
16e5: e8 00     mov   a,#$00
16e7: 2f 06     bra   $16ef
16e9: 1c        asl   a
16ea: 1c        asl   a
16eb: 1c        asl   a
16ec: 48 ff     eor   a,#$ff
16ee: bc        inc   a
16ef: 8f 6d f2  mov   $f2,#$6d
16f2: c4 f3     mov   $f3,a
16f4: 8f 7d f2  mov   $f2,#$7d
16f7: e4 f3     mov   a,$f3
16f9: 1c        asl   a
16fa: bc        inc   a
16fb: c4 97     mov   $97,a
16fd: e5 9f 08  mov   a,$089f
1700: c4 f3     mov   $f3,a
1702: 22 98     set1  $98
1704: 6f        ret

1705: 33 98 fc  bbc1  $98,$1704
1708: 8b 97     dec   $97
170a: d0 f8     bne   $1704
170c: 43 98 21  bbs2  $98,$1730
170f: e5 9e 08  mov   a,$089e
1712: 8f 0d f2  mov   $f2,#$0d
1715: c4 f3     mov   $f3,a
1717: e5 a4 08  mov   a,$08a4
171a: 28 1f     and   a,#$1f
171c: 8f 6c f2  mov   $f2,#$6c
171f: c4 f3     mov   $f3,a
1721: c5 a4 08  mov   $08a4,a
1724: 8f 7d f2  mov   $f2,#$7d
1727: e4 f3     mov   a,$f3
1729: 1c        asl   a
172a: bc        inc   a
172b: c4 97     mov   $97,a
172d: 42 98     set2  $98
172f: 6f        ret

1730: 32 98     clr1  $98
1732: 52 98     clr2  $98
1734: e4 a3     mov   a,$a3
1736: 04 a4     or    a,$a4
1738: d0 0d     bne   $1747
173a: e8 00     mov   a,#$00
173c: 8f 3c f2  mov   $f2,#$3c
173f: c4 f3     mov   $f3,a
1741: 8f 2c f2  mov   $f2,#$2c
1744: c4 f3     mov   $f3,a
1746: 6f        ret

1747: 3f 29 1a  call  $1a29
174a: 62 98     set3  $98
174c: 82 98     set4  $98
174e: 6f        ret

174f: cd 0f     mov   x,#$0f
1751: f5 59 08  mov   a,$0859+x
1754: d0 03     bne   $1759
1756: 5f bc 17  jmp   $17bc

1759: f5 d9 07  mov   a,$07d9+x
175c: 60        clrc
175d: 95 c9 07  adc   a,$07c9+x
1760: fd        mov   y,a
1761: 28 01     and   a,#$01
1763: d5 d9 07  mov   $07d9+x,a
1766: dd        mov   a,y
1767: 5c        lsr   a
1768: 60        clrc
1769: 95 b9 07  adc   a,$07b9+x
176c: d5 b9 07  mov   $07b9+x,a
176f: 28 7f     and   a,#$7f
1771: fd        mov   y,a
1772: f6 74 1d  mov   a,$1d74+y
1775: fd        mov   y,a
1776: f5 e9 07  mov   a,$07e9+x
1779: cf        mul   ya
177a: f5 b9 07  mov   a,$07b9+x
177d: 30 03     bmi   $1782
177f: dd        mov   a,y
1780: 2f 03     bra   $1785
1782: dd        mov   a,y
1783: 08 80     or    a,#$80
1785: d5 f9 07  mov   $07f9+x,a
1788: f5 39 08  mov   a,$0839+x
178b: f0 2f     beq   $17bc
178d: f5 29 08  mov   a,$0829+x
1790: 60        clrc
1791: 95 19 08  adc   a,$0819+x
1794: fd        mov   y,a
1795: 28 01     and   a,#$01
1797: d5 29 08  mov   $0829+x,a
179a: dd        mov   a,y
179b: 5c        lsr   a
179c: 60        clrc
179d: 95 09 08  adc   a,$0809+x
17a0: d5 09 08  mov   $0809+x,a
17a3: 28 7f     and   a,#$7f
17a5: fd        mov   y,a
17a6: f6 74 1d  mov   a,$1d74+y
17a9: fd        mov   y,a
17aa: f5 39 08  mov   a,$0839+x
17ad: cf        mul   ya
17ae: f5 09 08  mov   a,$0809+x
17b1: 30 03     bmi   $17b6
17b3: dd        mov   a,y
17b4: 2f 03     bra   $17b9
17b6: dd        mov   a,y
17b7: 08 80     or    a,#$80
17b9: d5 49 08  mov   $0849+x,a
17bc: 1d        dec   x
17bd: 10 92     bpl   $1751
17bf: 6f        ret

17c0: 8f a8 10  mov   $10,#$a8
17c3: 8f 09 11  mov   $11,#$09
17c6: e4 f4     mov   a,$f4
17c8: 1c        asl   a
17c9: fd        mov   y,a
17ca: f7 10     mov   a,($10)+y
17cc: 60        clrc
17cd: 88 a8     adc   a,#$a8
17cf: c4 18     mov   $18,a
17d1: fc        inc   y
17d2: f7 10     mov   a,($10)+y
17d4: 88 09     adc   a,#$09
17d6: c4 19     mov   $19,a
17d8: e5 a7 08  mov   a,$08a7
17db: bc        inc   a
17dc: 28 7f     and   a,#$7f
17de: d0 01     bne   $17e1
17e0: bc        inc   a
17e1: c5 a7 08  mov   $08a7,a
17e4: 3f c4 05  call  $05c4
17e7: 8d 00     mov   y,#$00
17e9: f7 18     mov   a,($18)+y
17eb: fc        inc   y
17ec: c4 15     mov   $15,a
17ee: bc        inc   a
17ef: c4 14     mov   $14,a
17f1: 6d        push  y
17f2: 3f 13 19  call  $1913
17f5: ee        pop   y
17f6: f7 18     mov   a,($18)+y
17f8: 5d        mov   x,a
17f9: e8 01     mov   a,#$01
17fb: d4 45     mov   $45+x,a
17fd: e8 02     mov   a,#$02
17ff: 14 3d     or    a,$3d+x
1801: d4 3d     mov   $3d+x,a
1803: 28 01     and   a,#$01
1805: f0 00     beq   $1807
1807: e5 a7 08  mov   a,$08a7
180a: d5 ae 00  mov   $00ae+x,a
180d: 6d        push  y
180e: eb 14     mov   y,$14
1810: f7 18     mov   a,($18)+y
1812: 60        clrc
1813: 84 18     adc   a,$18
1815: d5 11 06  mov   $0611+x,a
1818: fc        inc   y
1819: f7 18     mov   a,($18)+y
181b: 84 19     adc   a,$19
181d: d5 21 06  mov   $0621+x,a
1820: fc        inc   y
1821: cb 14     mov   $14,y
1823: ee        pop   y
1824: e4 a7     mov   a,$a7
1826: 48 ff     eor   a,#$ff
1828: 15 44 1d  or    a,$1d44+x
182b: 48 ff     eor   a,#$ff
182d: c4 a7     mov   $a7,a
182f: f5 54 1d  mov   a,$1d54+x
1832: 24 a4     and   a,$a4
1834: c4 a4     mov   $a4,a
1836: 4d        push  x
1837: 7d        mov   a,x
1838: 60        clrc
1839: 88 08     adc   a,#$08
183b: 5d        mov   x,a
183c: 3f cb 19  call  $19cb
183f: e8 01     mov   a,#$01
1841: d4 1d     mov   $1d+x,a
1843: e8 00     mov   a,#$00
1845: d4 2d     mov   $2d+x,a
1847: ce        pop   x
1848: fc        inc   y
1849: 8b 15     dec   $15
184b: f0 03     beq   $1850
184d: 5f f6 17  jmp   $17f6

1850: 3f 29 1a  call  $1a29
1853: 3f 35 1a  call  $1a35
1856: 3f 1d 1a  call  $1a1d
1859: e8 02     mov   a,#$02
185b: 04 9b     or    a,$9b
185d: c4 9b     mov   $9b,a
185f: 5f 88 03  jmp   $0388

1862: e4 9b     mov   a,$9b
1864: 28 02     and   a,#$02
1866: d0 03     bne   $186b
1868: 5f c9 18  jmp   $18c9

186b: fa a7 b8  mov   ($b8),($a7)
186e: cd 08     mov   x,#$08
1870: f4 3d     mov   a,$3d+x
1872: f0 45     beq   $18b9
1874: f4 2d     mov   a,$2d+x
1876: f0 07     beq   $187f
1878: 9b 2d     dec   $2d+x
187a: d0 03     bne   $187f
187c: 3f e1 14  call  $14e1
187f: 9b 1d     dec   $1d+x
1881: d0 36     bne   $18b9
1883: 3f d9 0f  call  $0fd9
1886: f4 3d     mov   a,$3d+x
1888: 28 01     and   a,#$01
188a: d0 2d     bne   $18b9
188c: 3f 59 19  call  $1959
188f: f4 a6     mov   a,$a6+x
1891: c4 10     mov   $10,a
1893: 08 80     or    a,#$80
1895: d4 a6     mov   $a6+x,a
1897: 4d        push  x
1898: cd 07     mov   x,#$07
189a: f4 ae     mov   a,$ae+x
189c: 30 04     bmi   $18a2
189e: 64 10     cmp   a,$10
18a0: f0 16     beq   $18b8
18a2: 1d        dec   x
18a3: 10 f5     bpl   $189a
18a5: cd 07     mov   x,#$07
18a7: f4 ae     mov   a,$ae+x
18a9: 10 0a     bpl   $18b5
18ab: 28 7f     and   a,#$7f
18ad: 64 10     cmp   a,$10
18af: d0 04     bne   $18b5
18b1: e8 00     mov   a,#$00
18b3: d4 ae     mov   $ae+x,a
18b5: 1d        dec   x
18b6: 10 ef     bpl   $18a7
18b8: ce        pop   x
18b9: 3d        inc   x
18ba: c8 10     cmp   x,#$10
18bc: d0 b2     bne   $1870
18be: 69 a7 b8  cmp   ($b8),($a7)
18c1: f0 06     beq   $18c9
18c3: 3f 35 1a  call  $1a35
18c6: 3f 1d 1a  call  $1a1d
18c9: 6f        ret

18ca: 3f 35 1a  call  $1a35
18cd: 3f 1d 1a  call  $1a1d
18d0: 6f        ret

18d1: cd 08     mov   x,#$08
18d3: f4 3d     mov   a,$3d+x
18d5: 28 01     and   a,#$01
18d7: f0 06     beq   $18df
18d9: 3f 59 19  call  $1959
18dc: 3f e1 14  call  $14e1
18df: 3d        inc   x
18e0: c8 10     cmp   x,#$10
18e2: d0 ef     bne   $18d3
18e4: 3f ca 18  call  $18ca
18e7: e5 9b 00  mov   a,$009b
18ea: 28 fd     and   a,#$fd
18ec: c5 9b 00  mov   $009b,a
18ef: 5f 88 03  jmp   $0388

18f2: 8f a8 10  mov   $10,#$a8
18f5: 8f 09 11  mov   $11,#$09
18f8: e4 f4     mov   a,$f4
18fa: 1c        asl   a
18fb: fd        mov   y,a
18fc: f7 10     mov   a,($10)+y
18fe: 60        clrc
18ff: 88 a8     adc   a,#$a8
1901: c4 18     mov   $18,a
1903: fc        inc   y
1904: f7 10     mov   a,($10)+y
1906: 88 09     adc   a,#$09
1908: c4 19     mov   $19,a
190a: 3f c4 05  call  $05c4
190d: 3f 13 19  call  $1913
1910: 5f 88 03  jmp   $0388

1913: fa a7 b8  mov   ($b8),($a7)
1916: 8d 00     mov   y,#$00
1918: f7 18     mov   a,($18)+y
191a: c4 17     mov   $17,a
191c: fc        inc   y
191d: f7 18     mov   a,($18)+y
191f: fc        inc   y
1920: 5d        mov   x,a
1921: f5 ae 00  mov   a,$00ae+x
1924: f0 23     beq   $1949
1926: c4 16     mov   $16,a
1928: cd 08     mov   x,#$08
192a: f4 3d     mov   a,$3d+x
192c: 28 01     and   a,#$01
192e: f0 14     beq   $1944
1930: f5 a6 00  mov   a,$00a6+x
1933: 28 7f     and   a,#$7f
1935: 64 16     cmp   a,$16
1937: d0 0b     bne   $1944
1939: e8 00     mov   a,#$00
193b: d5 a6 00  mov   $00a6+x,a
193e: 3f 59 19  call  $1959
1941: 3f e1 14  call  $14e1
1944: 3d        inc   x
1945: c8 10     cmp   x,#$10
1947: d0 e1     bne   $192a
1949: 8b 17     dec   $17
194b: d0 d0     bne   $191d
194d: 69 a7 b8  cmp   ($b8),($a7)
1950: f0 06     beq   $1958
1952: 3f ca 18  call  $18ca
1955: 3f a3 19  call  $19a3
1958: 6f        ret

1959: f5 4c 1d  mov   a,$1d4c+x
195c: c4 10     mov   $10,a
195e: 25 a2 00  and   a,$00a2
1961: c5 a2 00  mov   $00a2,a
1964: e5 a4 00  mov   a,$00a4
1967: 24 10     and   a,$10
1969: c5 a4 00  mov   $00a4,a
196c: e5 a6 00  mov   a,$00a6
196f: 24 10     and   a,$10
1971: c5 a6 00  mov   $00a6,a
1974: f5 3c 1d  mov   a,$1d3c+x
1977: c4 10     mov   $10,a
1979: 04 a7     or    a,$a7
197b: c4 a7     mov   $a7,a
197d: 68 ff     cmp   a,#$ff
197f: d0 08     bne   $1989
1981: e5 9b 00  mov   a,$009b
1984: 28 fd     and   a,#$fd
1986: c5 9b 00  mov   $009b,a
1989: f4 35     mov   a,$35+x
198b: 28 01     and   a,#$01
198d: f0 06     beq   $1995
198f: e4 b7     mov   a,$b7
1991: 04 10     or    a,$10
1993: c4 b7     mov   $b7,a
1995: f4 35     mov   a,$35+x
1997: 28 fd     and   a,#$fd
1999: d4 35     mov   $35+x,a
199b: e8 00     mov   a,#$00
199d: d4 3d     mov   $3d+x,a
199f: 8f 04 b9  mov   $b9,#$04
19a2: 6f        ret

19a3: e4 96     mov   a,$96
19a5: f0 09     beq   $19b0
19a7: 8f 5c f2  mov   $f2,#$5c
19aa: c4 f3     mov   $f3,a
19ac: 8d 40     mov   y,#$40
19ae: fe fe     dbnz  y,$19ae
19b0: e4 95     mov   a,$95
19b2: f0 10     beq   $19c4
19b4: 8f 5c f2  mov   $f2,#$5c
19b7: 8f 00 f3  mov   $f3,#$00
19ba: 8d 40     mov   y,#$40
19bc: fe fe     dbnz  y,$19bc
19be: 8f 4c f2  mov   $f2,#$4c
19c1: fa 95 f3  mov   ($f3),($95)
19c4: e8 00     mov   a,#$00
19c6: c4 95     mov   $95,a
19c8: c4 96     mov   $96,a
19ca: 6f        ret

19cb: e8 00     mov   a,#$00
19cd: d5 f9 05  mov   $05f9+x,a
19d0: d5 29 07  mov   $0729+x,a
19d3: d5 39 07  mov   $0739+x,a
19d6: d5 49 07  mov   $0749+x,a
19d9: d5 69 07  mov   $0769+x,a
19dc: d5 79 07  mov   $0779+x,a
19df: d5 89 07  mov   $0789+x,a
19e2: d5 29 08  mov   $0829+x,a
19e5: d5 d9 07  mov   $07d9+x,a
19e8: d5 59 08  mov   $0859+x,a
19eb: d5 49 06  mov   $0649+x,a
19ee: d5 59 06  mov   $0659+x,a
19f1: d5 a9 06  mov   $06a9+x,a
19f4: d5 b9 06  mov   $06b9+x,a
19f7: d4 2d     mov   $2d+x,a
19f9: e8 87     mov   a,#$87
19fb: d5 a9 07  mov   $07a9+x,a
19fe: e8 70     mov   a,#$70
1a00: d5 f9 06  mov   $06f9+x,a
1a03: e8 80     mov   a,#$80
1a05: d5 99 07  mov   $0799+x,a
1a08: e8 20     mov   a,#$20
1a0a: d5 19 08  mov   $0819+x,a
1a0d: e8 20     mov   a,#$20
1a0f: d5 c9 07  mov   $07c9+x,a
1a12: e8 10     mov   a,#$10
1a14: d5 39 08  mov   $0839+x,a
1a17: e8 20     mov   a,#$20
1a19: d5 e9 07  mov   $07e9+x,a
1a1c: 6f        ret

1a1d: e4 a5     mov   a,$a5
1a1f: 24 a7     and   a,$a7
1a21: 04 a6     or    a,$a6
1a23: 8f 2d f2  mov   $f2,#$2d
1a26: c4 f3     mov   $f3,a
1a28: 6f        ret

1a29: e4 a3     mov   a,$a3
1a2b: 24 a7     and   a,$a7
1a2d: 04 a4     or    a,$a4
1a2f: 8f 4d f2  mov   $f2,#$4d
1a32: c4 f3     mov   $f3,a
1a34: 6f        ret

1a35: e4 a1     mov   a,$a1
1a37: 24 a7     and   a,$a7
1a39: 04 a2     or    a,$a2
1a3b: 8f 3d f2  mov   $f2,#$3d
1a3e: c4 f3     mov   $f3,a
1a40: 6f        ret

1a41: e5 99 08  mov   a,$0899
1a44: 8f 1c f2  mov   $f2,#$1c
1a47: c4 f3     mov   $f3,a
1a49: 8f 0c f2  mov   $f2,#$0c
1a4c: c4 f3     mov   $f3,a
1a4e: 6f        ret

1a4f: e5 9d 08  mov   a,$089d
1a52: 1c        asl   a
1a53: 1c        asl   a
1a54: 1c        asl   a
1a55: 5d        mov   x,a
1a56: 8d 0f     mov   y,#$0f
1a58: f5 6a 1a  mov   a,$1a6a+x
1a5b: cb f2     mov   $f2,y
1a5d: c4 f3     mov   $f3,a
1a5f: 3d        inc   x
1a60: dd        mov   a,y
1a61: 60        clrc
1a62: 88 10     adc   a,#$10
1a64: fd        mov   y,a
1a65: 68 8f     cmp   a,#$8f
1a67: d0 ef     bne   $1a58
1a69: 6f        ret

1a6a: db $7f,$00,$00,$00,$00,$00,$00,$00
1a76: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1a7a: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1a86: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

1a8a: ec a3 08  mov   y,$08a3
1a8d: c8 08     cmp   x,#$08
1a8f: b0 07     bcs   $1a98
1a91: ec a2 08  mov   y,$08a2
1a94: e5 a0 08  mov   a,$08a0
1a97: cf        mul   ya
1a98: f5 49 07  mov   a,$0749+x
1a9b: 1c        asl   a
1a9c: bc        inc   a
1a9d: cf        mul   ya
1a9e: f5 f9 06  mov   a,$06f9+x
1aa1: 1c        asl   a
1aa2: bc        inc   a
1aa3: cf        mul   ya
1aa4: dd        mov   a,y
1aa5: d5 89 08  mov   $0889+x,a
1aa8: 6f        ret

1aa9: cd 00     mov   x,#$00
1aab: f4 3d     mov   a,$3d+x
1aad: 28 01     and   a,#$01
1aaf: d0 03     bne   $1ab4
1ab1: 5f 3c 1b  jmp   $1b3c

1ab4: f4 3d     mov   a,$3d+x
1ab6: 28 02     and   a,#$02
1ab8: f0 03     beq   $1abd
1aba: 5f 3c 1b  jmp   $1b3c

1abd: f5 89 08  mov   a,$0889+x
1ac0: c4 10     mov   $10,a
1ac2: f5 49 08  mov   a,$0849+x
1ac5: f0 25     beq   $1aec
1ac7: f5 59 08  mov   a,$0859+x
1aca: f0 20     beq   $1aec
1acc: 1c        asl   a
1acd: eb 10     mov   y,$10
1acf: cf        mul   ya
1ad0: 4d        push  x
1ad1: f5 49 08  mov   a,$0849+x
1ad4: 1c        asl   a
1ad5: cf        mul   ya
1ad6: ce        pop   x
1ad7: 90 09     bcc   $1ae2
1ad9: dd        mov   a,y
1ada: 48 ff     eor   a,#$ff
1adc: bc        inc   a
1add: 60        clrc
1ade: 84 10     adc   a,$10
1ae0: 2f 08     bra   $1aea
1ae2: dd        mov   a,y
1ae3: 60        clrc
1ae4: 84 10     adc   a,$10
1ae6: 10 02     bpl   $1aea
1ae8: e8 7f     mov   a,#$7f
1aea: c4 10     mov   $10,a
1aec: 03 99 16  bbs0  $99,$1b05
1aef: f5 09 07  mov   a,$0709+x
1af2: 68 40     cmp   a,#$40
1af4: f0 0f     beq   $1b05
1af6: eb 10     mov   y,$10
1af8: 1c        asl   a
1af9: cf        mul   ya
1afa: cb 13     mov   $13,y
1afc: dd        mov   a,y
1afd: a4 10     sbc   a,$10
1aff: 48 ff     eor   a,#$ff
1b01: c4 12     mov   $12,a
1b03: 2f 07     bra   $1b0c
1b05: e4 10     mov   a,$10
1b07: 5c        lsr   a
1b08: c4 12     mov   $12,a
1b0a: c4 13     mov   $13,a
1b0c: 03 99 16  bbs0  $99,$1b25
1b0f: f4 3d     mov   a,$3d+x
1b11: 28 20     and   a,#$20
1b13: f0 05     beq   $1b1a
1b15: 58 ff 12  eor   $12,#$ff
1b18: ab 12     inc   $12
1b1a: f4 3d     mov   a,$3d+x
1b1c: 28 40     and   a,#$40
1b1e: f0 05     beq   $1b25
1b20: 58 ff 13  eor   $13,#$ff
1b23: ab 13     inc   $13
1b25: c8 08     cmp   x,#$08
1b27: 90 07     bcc   $1b30
1b29: 7d        mov   a,x
1b2a: 80        setc
1b2b: a8 08     sbc   a,#$08
1b2d: 9f        xcn   a
1b2e: 2f 02     bra   $1b32
1b30: 7d        mov   a,x
1b31: 9f        xcn   a
1b32: c4 f2     mov   $f2,a
1b34: fa 12 f3  mov   ($f3),($12)
1b37: ab f2     inc   $f2
1b39: fa 13 f3  mov   ($f3),($13)
1b3c: 3d        inc   x
1b3d: c8 10     cmp   x,#$10
1b3f: f0 03     beq   $1b44
1b41: 5f ab 1a  jmp   $1aab

1b44: 6f        ret

1b45: cd 00     mov   x,#$00
1b47: f4 3d     mov   a,$3d+x
1b49: 28 01     and   a,#$01
1b4b: d0 03     bne   $1b50
1b4d: 5f dd 1b  jmp   $1bdd

1b50: f4 3d     mov   a,$3d+x
1b52: 28 02     and   a,#$02
1b54: f0 03     beq   $1b59
1b56: 5f dd 1b  jmp   $1bdd

1b59: f5 99 07  mov   a,$0799+x
1b5c: 68 80     cmp   a,#$80
1b5e: d0 0c     bne   $1b6c
1b60: f4 4d     mov   a,$4d+x
1b62: 28 f0     and   a,#$f0
1b64: d4 6d     mov   $6d+x,a
1b66: f4 5d     mov   a,$5d+x
1b68: d4 7d     mov   $7d+x,a
1b6a: 2f 2f     bra   $1b9b
1b6c: 08 00     or    a,#$00
1b6e: d0 0e     bne   $1b7e
1b70: f4 4d     mov   a,$4d+x
1b72: 1c        asl   a
1b73: 28 f0     and   a,#$f0
1b75: d4 6d     mov   $6d+x,a
1b77: f4 5d     mov   a,$5d+x
1b79: 3c        rol   a
1b7a: d4 7d     mov   $7d+x,a
1b7c: 2f 1d     bra   $1b9b
1b7e: fb 4d     mov   y,$4d+x
1b80: cf        mul   ya
1b81: cb 14     mov   $14,y
1b83: f5 99 07  mov   a,$0799+x
1b86: fd        mov   y,a
1b87: f4 5d     mov   a,$5d+x
1b89: cf        mul   ya
1b8a: 60        clrc
1b8b: 84 14     adc   a,$14
1b8d: c4 14     mov   $14,a
1b8f: 90 01     bcc   $1b92
1b91: fc        inc   y
1b92: 1c        asl   a
1b93: 28 f0     and   a,#$f0
1b95: d4 6d     mov   $6d+x,a
1b97: dd        mov   a,y
1b98: 3c        rol   a
1b99: d4 7d     mov   $7d+x,a
1b9b: f5 59 08  mov   a,$0859+x
1b9e: f0 3d     beq   $1bdd
1ba0: fd        mov   y,a
1ba1: f5 f9 07  mov   a,$07f9+x
1ba4: 1c        asl   a
1ba5: cf        mul   ya
1ba6: cb 11     mov   $11,y
1ba8: f4 6d     mov   a,$6d+x
1baa: cf        mul   ya
1bab: cb 12     mov   $12,y
1bad: eb 11     mov   y,$11
1baf: f4 7d     mov   a,$7d+x
1bb1: cf        mul   ya
1bb2: 60        clrc
1bb3: 84 12     adc   a,$12
1bb5: c4 12     mov   $12,a
1bb7: dd        mov   a,y
1bb8: 88 00     adc   a,#$00
1bba: c4 13     mov   $13,a
1bbc: f5 f9 07  mov   a,$07f9+x
1bbf: 30 0f     bmi   $1bd0
1bc1: e4 12     mov   a,$12
1bc3: 60        clrc
1bc4: 94 6d     adc   a,$6d+x
1bc6: d4 6d     mov   $6d+x,a
1bc8: e4 13     mov   a,$13
1bca: 94 7d     adc   a,$7d+x
1bcc: d4 7d     mov   $7d+x,a
1bce: 2f 0d     bra   $1bdd
1bd0: f4 6d     mov   a,$6d+x
1bd2: 80        setc
1bd3: a4 12     sbc   a,$12
1bd5: d4 6d     mov   $6d+x,a
1bd7: f4 7d     mov   a,$7d+x
1bd9: a4 13     sbc   a,$13
1bdb: d4 7d     mov   $7d+x,a
1bdd: 3d        inc   x
1bde: c8 10     cmp   x,#$10
1be0: f0 03     beq   $1be5
1be2: 5f 47 1b  jmp   $1b47

1be5: cd 00     mov   x,#$00
1be7: 8d 02     mov   y,#$02
1be9: 4d        push  x
1bea: f4 3d     mov   a,$3d+x
1bec: 28 02     and   a,#$02
1bee: f0 07     beq   $1bf7
1bf0: 7d        mov   a,x
1bf1: 60        clrc
1bf2: 88 08     adc   a,#$08
1bf4: 5d        mov   x,a
1bf5: 2f 06     bra   $1bfd
1bf7: f4 3d     mov   a,$3d+x
1bf9: 28 01     and   a,#$01
1bfb: f0 0c     beq   $1c09
1bfd: cb f2     mov   $f2,y
1bff: f4 6d     mov   a,$6d+x
1c01: c4 f3     mov   $f3,a
1c03: ab f2     inc   $f2
1c05: f4 7d     mov   a,$7d+x
1c07: c4 f3     mov   $f3,a
1c09: dd        mov   a,y
1c0a: 60        clrc
1c0b: 88 10     adc   a,#$10
1c0d: fd        mov   y,a
1c0e: ce        pop   x
1c0f: 3d        inc   x
1c10: c8 08     cmp   x,#$08
1c12: d0 d5     bne   $1be9
1c14: 6f        ret

1c15: 4d        push  x
1c16: d8 11     mov   $11,x
1c18: f5 19 07  mov   a,$0719+x
1c1b: 8d 00     mov   y,#$00
1c1d: cd 0c     mov   x,#$0c
1c1f: 9e        div   ya,x
1c20: 2d        push  a
1c21: f6 5c 1d  mov   a,$1d5c+y
1c24: c4 10     mov   $10,a
1c26: f6 68 1d  mov   a,$1d68+y
1c29: ee        pop   y
1c2a: f0 08     beq   $1c34
1c2c: 5c        lsr   a
1c2d: 6b 10     ror   $10
1c2f: fc        inc   y
1c30: ad 08     cmp   y,#$08
1c32: d0 f8     bne   $1c2c
1c34: f8 11     mov   x,$11
1c36: d4 5d     mov   $5d+x,a
1c38: e4 10     mov   a,$10
1c3a: d4 4d     mov   $4d+x,a
1c3c: f5 79 08  mov   a,$0879+x
1c3f: fb 5d     mov   y,$5d+x
1c41: cf        mul   ya
1c42: da 12     movw  $12,ya
1c44: f5 79 08  mov   a,$0879+x
1c47: fb 4d     mov   y,$4d+x
1c49: cf        mul   ya
1c4a: 6d        push  y
1c4b: f5 69 08  mov   a,$0869+x
1c4e: fb 4d     mov   y,$4d+x
1c50: cf        mul   ya
1c51: 7a 12     addw  ya,$12
1c53: da 12     movw  $12,ya
1c55: f5 69 08  mov   a,$0869+x
1c58: fb 5d     mov   y,$5d+x
1c5a: cf        mul   ya
1c5b: fd        mov   y,a
1c5c: ae        pop   a
1c5d: 7a 12     addw  ya,$12
1c5f: d4 4d     mov   $4d+x,a
1c61: db 5d     mov   $5d+x,y
1c63: ce        pop   x
1c64: 6f        ret

1c65: c4 10     mov   $10,a
1c67: 7d        mov   a,x
1c68: 68 08     cmp   a,#$08
1c6a: 90 03     bcc   $1c6f
1c6c: 80        setc
1c6d: a8 08     sbc   a,#$08
1c6f: 9f        xcn   a
1c70: 60        clrc
1c71: 88 04     adc   a,#$04
1c73: c4 f2     mov   $f2,a
1c75: e4 10     mov   a,$10
1c77: fa 10 f3  mov   ($f3),($10)
1c7a: 1c        asl   a
1c7b: 1c        asl   a
1c7c: fd        mov   y,a
1c7d: f6 a8 08  mov   a,$08a8+y
1c80: ab f2     inc   $f2
1c82: c4 f3     mov   $f3,a
1c84: f6 a9 08  mov   a,$08a9+y
1c87: ab f2     inc   $f2
1c89: c4 f3     mov   $f3,a
1c8b: f6 aa 08  mov   a,$08aa+y
1c8e: d5 69 08  mov   $0869+x,a
1c91: f6 ab 08  mov   a,$08ab+y
1c94: d5 79 08  mov   $0879+x,a
1c97: 6f        ret

1c98: e8 00     mov   a,#$00
1c9a: c4 f1     mov   $f1,a
1c9c: 8f 6c f2  mov   $f2,#$6c
1c9f: 8f e0 f3  mov   $f3,#$e0
1ca2: cd 00     mov   x,#$00
1ca4: f5 25 1d  mov   a,$1d25+x
1ca7: 68 ff     cmp   a,#$ff
1ca9: f0 0b     beq   $1cb6
1cab: c4 f2     mov   $f2,a
1cad: 3d        inc   x
1cae: f5 25 1d  mov   a,$1d25+x
1cb1: c4 f3     mov   $f3,a
1cb3: 3d        inc   x
1cb4: 2f ee     bra   $1ca4
1cb6: 8f 6d f2  mov   $f2,#$6d
1cb9: 8f 00 f3  mov   $f3,#$00
1cbc: 8f 7d f2  mov   $f2,#$7d
1cbf: 8f 00 f3  mov   $f3,#$00
1cc2: cd 00     mov   x,#$00
1cc4: 8d 00     mov   y,#$00
1cc6: d8 f2     mov   $f2,x
1cc8: f6 1d 1d  mov   a,$1d1d+y
1ccb: c4 f3     mov   $f3,a
1ccd: fc        inc   y
1cce: 3d        inc   x
1ccf: ad 08     cmp   y,#$08
1cd1: d0 f3     bne   $1cc6
1cd3: 7d        mov   a,x
1cd4: 28 f0     and   a,#$f0
1cd6: 60        clrc
1cd7: 88 10     adc   a,#$10
1cd9: 5d        mov   x,a
1cda: 68 80     cmp   a,#$80
1cdc: d0 e6     bne   $1cc4
1cde: 8f 80 fa  mov   $fa,#$80
1ce1: 8f 01 f1  mov   $f1,#$01
1ce4: cd 0f     mov   x,#$0f
1ce6: e4 fd     mov   a,$fd
1ce8: f0 fc     beq   $1ce6
1cea: 1d        dec   x
1ceb: d0 f9     bne   $1ce6
1ced: 8f 00 f1  mov   $f1,#$00
1cf0: 8f 6c f2  mov   $f2,#$6c
1cf3: e8 20     mov   a,#$20
1cf5: c4 f3     mov   $f3,a
1cf7: c5 a4 08  mov   $08a4,a
1cfa: e8 40     mov   a,#$40
1cfc: c5 99 08  mov   $0899,a
1cff: 3f 41 1a  call  $1a41
1d02: e8 30     mov   a,#$30
1d04: 3f 42 13  call  $1342
1d07: e8 30     mov   a,#$30
1d09: c5 9e 08  mov   $089e,a
1d0c: e8 00     mov   a,#$00
1d0e: c5 9d 08  mov   $089d,a
1d11: e8 00     mov   a,#$00
1d13: c5 9f 08  mov   $089f,a
1d16: 8f 01 98  mov   $98,#$01
1d19: 3f 4f 1a  call  $1a4f
1d1c: 6f        ret

1d1d: 00        
1d1e: 00        
1d1f: 00        
1d20: 10 00     
1d22: ff        
1d23: ff        
1d24: 00        
1d25: 1c        
1d26: 00        
1d27: 0c 00 4c  
1d2a: 00        
1d2b: 5c        
1d2c: 00        
1d2d: 2d        
1d2e: 00        
1d2f: 3d        
1d30: 00        
1d31: 5d        
1d32: 02 4d     
1d34: 00        
1d35: 0d        
1d36: 00        
1d37: 3c        
1d38: 00        
1d39: 2c 00 ff  
1d3c: 01        
1d3d: 02 04     
1d3f: 08 10     
1d41: 20        
1d42: 40        
1d43: 80        
1d44: 01        
1d45: 02 04     
1d47: 08 10     
1d49: 20        
1d4a: 40        
1d4b: 80        
1d4c: fe fd     
1d4e: fb f7     
1d50: ef        
1d51: df        
1d52: bf        
1d53: 7f        
1d54: fe fd     
1d56: fb f7     
1d58: ef        
1d59: df        
1d5a: bf        
1d5b: 7f        
1d5c: 7d        
1d5d: 7b 97     
1d5f: d3 31 b3  
1d62: 5c        
1d63: 2d        
1d64: 29 52 ab  
1d67: 38 21 23  
1d6a: 25 27 2a  
1d6d: 2c 2f 32  
1d70: 35 38 3b  
1d73: 3f 00 03  
1d76: 06        
1d77: 09 0d 10  
1d7a: 13 16 19  
1d7d: 1c        
1d7e: 1f 22 25  
1d81: 28 2b     
1d83: 2e 31 34  
1d86: 37 3a     
1d88: 3c        
1d89: 3f 42 44  
1d8c: 47 4a     
1d8e: 4c 4f 51  
1d91: 53 56 58  
1d94: 5a 5d     
1d96: 5f 61 63  

1d99: 65 67 68  
1d9c: 6a 6c 6d  
1d9f: 6f        

1da0: 71        
1da1: 72 73     
1da3: 75 76 77  
1da6: 78 79 7a  
1da9: 7b 7c     
1dab: 7c        
1dac: 7d        
1dad: 7d        
1dae: 7e 7e     
1db0: 7f        
1db1: 7f        
1db2: 7f        
1db3: 7f        
1db4: 7f        
1db5: 7f        
1db6: 7f        
1db7: 7f        
1db8: 7e 7e     
1dba: 7d        
1dbb: 7d        
1dbc: 7c        
1dbd: 7c        
1dbe: 7b 7a     
1dc0: 79        
1dc1: 78 77 76  
1dc4: 75 73 72  
1dc7: 71        
1dc8: 6f        
1dc9: 6d        
1dca: 6c 6a 68  
1dcd: 67 65     
1dcf: 63 61 5f  
1dd2: 5d        
1dd3: 5a 58     
1dd5: 56 53 51  
1dd8: 4f 4c     
1dda: 4a 47 44  
1ddd: 42 3f     
1ddf: 3c        
1de0: 3a 37     
1de2: 34 31     
1de4: 2e 2b 28  
1de7: 25 22 1f  
1dea: 1c        
1deb: 19        
1dec: 16 13 10  
1def: 0d        
1df0: 09 06 03  
1df3: 00        
