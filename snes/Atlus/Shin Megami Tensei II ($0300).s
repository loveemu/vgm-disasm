; Shin Megami Tensei II (Japan) (Rev 2)
0300: 20        clrp
0301: cd ff     mov   x,#$ff
0303: bd        mov   sp,x
0304: e8 ff     mov   a,#$ff
0306: c5 f4 00  mov   $00f4,a
0309: c5 f5 00  mov   $00f5,a
030c: c5 f6 00  mov   $00f6,a
030f: c5 f7 00  mov   $00f7,a
0312: 3f 17 04  call  $0417
0315: e8 00     mov   a,#$00
0317: c5 f4 00  mov   $00f4,a
031a: c5 f5 00  mov   $00f5,a
031d: 8f 00 08  mov   $08,#$00
0320: f8 08     mov   x,$08
0322: f5 f4 00  mov   a,$00f4+x
0325: 68 fe     cmp   a,#$fe
0327: f0 07     beq   $0330
0329: ab 08     inc   $08
032b: 38 03 08  and   $08,#$03
032e: 2f f0     bra   $0320
0330: e8 30     mov   a,#$30
0332: c5 f1 00  mov   $00f1,a
0335: e8 00     mov   a,#$00
0337: c5 f4 00  mov   $00f4,a
033a: e8 ee     mov   a,#$ee
033c: c5 f5 00  mov   $00f5,a
033f: e9 f4 00  mov   x,$00f4
0342: f0 fb     beq   $033f
0344: e8 00     mov   a,#$00
0346: c5 f5 00  mov   $00f5,a
0349: e5 f6 00  mov   a,$00f6
034c: c4 08     mov   $08,a
034e: e4 08     mov   a,$08
0350: c5 f6 00  mov   $00f6,a
0353: e5 f7 00  mov   a,$00f7
0356: c4 09     mov   $09,a
0358: e4 09     mov   a,$09
035a: c5 f7 00  mov   $00f7,a
035d: e8 30     mov   a,#$30
035f: c5 f1 00  mov   $00f1,a
0362: c9 f4 00  mov   $00f4,x
0365: e9 f4 00  mov   x,$00f4
0368: f0 fb     beq   $0365
036a: e5 f5 00  mov   a,$00f5
036d: d0 da     bne   $0349
036f: e5 f6 00  mov   a,$00f6
0372: c4 00     mov   $00,a
0374: e4 00     mov   a,$00
0376: c5 f6 00  mov   $00f6,a
0379: e5 f7 00  mov   a,$00f7
037c: c4 01     mov   $01,a
037e: e4 01     mov   a,$01
0380: c5 f7 00  mov   $00f7,a
0383: e8 30     mov   a,#$30
0385: c5 f1 00  mov   $00f1,a
0388: c9 f4 00  mov   $00f4,x
038b: e9 f4 00  mov   x,$00f4
038e: f0 fb     beq   $038b
0390: e5 f5 00  mov   a,$00f5
0393: d0 da     bne   $036f
0395: 7d        mov   a,x
0396: fd        mov   y,a
0397: cd 00     mov   x,#$00
0399: e5 f6 00  mov   a,$00f6
039c: c7 00     mov   ($00+x),a
039e: e7 00     mov   a,($00+x)
03a0: 65 f6 00  cmp   a,$00f6
03a3: d0 f4     bne   $0399
03a5: c5 f6 00  mov   $00f6,a
03a8: 3a 00     incw  $00
03aa: 1a 08     decw  $08
03ac: d0 02     bne   $03b0
03ae: ab 08     inc   $08
03b0: e5 f7 00  mov   a,$00f7
03b3: c7 00     mov   ($00+x),a
03b5: e7 00     mov   a,($00+x)
03b7: 65 f7 00  cmp   a,$00f7
03ba: d0 f4     bne   $03b0
03bc: c5 f7 00  mov   $00f7,a
03bf: 3a 00     incw  $00
03c1: e8 30     mov   a,#$30
03c3: c5 f1 00  mov   $00f1,a
03c6: cc f4 00  mov   $00f4,y
03c9: ec f4 00  mov   y,$00f4
03cc: f0 fb     beq   $03c9
03ce: e5 f5 00  mov   a,$00f5
03d1: d0 06     bne   $03d9
03d3: 1a 08     decw  $08
03d5: f0 0a     beq   $03e1
03d7: 2f c0     bra   $0399
03d9: 1a 00     decw  $00
03db: 1a 00     decw  $00
03dd: 3a 08     incw  $08
03df: 2f b8     bra   $0399
;
03e1: e9 f4 00  mov   x,$00f4
03e4: e8 78     mov   a,#$78
03e6: c5 f6 00  mov   $00f6,a
03e9: e8 9a     mov   a,#$9a
03eb: c5 f7 00  mov   $00f7,a
03ee: ec f6 00  mov   y,$00f6
03f1: e5 f7 00  mov   a,$00f7
03f4: da 0a     movw  $0a,ya
03f6: 68 fe     cmp   a,#$fe
03f8: d0 07     bne   $0401
03fa: ad fe     cmp   y,#$fe
03fc: d0 e3     bne   $03e1
03fe: 5f 30 03  jmp   $0330

0401: ba 0a     movw  ya,$0a
0403: d0 dc     bne   $03e1
0405: e8 30     mov   a,#$30
0407: c5 f1 00  mov   $00f1,a
040a: e8 ff     mov   a,#$ff
040c: c4 bd     mov   $bd,a
040e: c9 f4 00  mov   $00f4,x
0411: c5 f5 00  mov   $00f5,a
0414: 5f 00 05  jmp   $0500

0417: 8d 6c     mov   y,#$6c
0419: cc f2 00  mov   $00f2,y
041c: e8 a0     mov   a,#$a0
041e: c5 f3 00  mov   $00f3,a
0421: e8 00     mov   a,#$00
0423: c4 02     mov   $02,a
0425: c4 03     mov   $03,a
0427: c5 f1 00  mov   $00f1,a
042a: c5 f7 00  mov   $00f7,a
042d: 8d 2c     mov   y,#$2c
042f: cc f2 00  mov   $00f2,y
0432: c5 f3 00  mov   $00f3,a
0435: 8d 3c     mov   y,#$3c
0437: cc f2 00  mov   $00f2,y
043a: c5 f3 00  mov   $00f3,a
043d: 8d 0d     mov   y,#$0d
043f: cc f2 00  mov   $00f2,y
0442: c5 f3 00  mov   $00f3,a
0445: 8d 2d     mov   y,#$2d
0447: cc f2 00  mov   $00f2,y
044a: c5 f3 00  mov   $00f3,a
044d: 8d 3d     mov   y,#$3d
044f: cc f2 00  mov   $00f2,y
0452: c5 f3 00  mov   $00f3,a
0455: 8d 4d     mov   y,#$4d
0457: cc f2 00  mov   $00f2,y
045a: c5 f3 00  mov   $00f3,a
045d: 8d 7d     mov   y,#$7d
045f: cc f2 00  mov   $00f2,y
0462: e8 00     mov   a,#$00
0464: c5 f3 00  mov   $00f3,a
0467: 8d 6d     mov   y,#$6d
0469: cc f2 00  mov   $00f2,y
046c: e8 80     mov   a,#$80
046e: c5 f3 00  mov   $00f3,a
0471: 8d 0c     mov   y,#$0c
0473: cc f2 00  mov   $00f2,y
0476: e8 60     mov   a,#$60
0478: c5 f3 00  mov   $00f3,a
047b: 8d 1c     mov   y,#$1c
047d: cc f2 00  mov   $00f2,y
0480: c5 f3 00  mov   $00f3,a
0483: 8d 5d     mov   y,#$5d
0485: cc f2 00  mov   $00f2,y
0488: e8 20     mov   a,#$20
048a: c5 f3 00  mov   $00f3,a
048d: 8d 6c     mov   y,#$6c
048f: cc f2 00  mov   $00f2,y
0492: e8 14     mov   a,#$14
0494: c5 f3 00  mov   $00f3,a
0497: e8 30     mov   a,#$30
0499: c5 f1 00  mov   $00f1,a
049c: 6f        ret
