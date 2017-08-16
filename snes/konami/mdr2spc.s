08ca: 20        clrp
08cb: cd cf     mov   x,#$cf
08cd: bd        mov   sp,x
08ce: e8 30     mov   a,#$30
08d0: c5 f1 00  mov   $00f1,a
08d3: e8 00     mov   a,#$00
08d5: cd 00     mov   x,#$00
08d7: af        mov   (x)+,a
08d8: c8 f0     cmp   x,#$f0
08da: d0 fb     bne   $08d7
08dc: 8d 00     mov   y,#$00
08de: 8f 00 04  mov   $04,#$00
08e1: 8f 01 05  mov   $05,#$01
08e4: d7 04     mov   ($04)+y,a
08e6: ad 8f     cmp   y,#$8f
08e8: d0 05     bne   $08ef
08ea: 78 01 05  cmp   $05,#$01
08ed: f0 07     beq   $08f6
08ef: fc        inc   y
08f0: d0 f2     bne   $08e4
08f2: ab 05     inc   $05
08f4: 2f ee     bra   $08e4
08f6: 8d 03     mov   y,#$03
08f8: 8f 00 04  mov   $04,#$00
08fb: 8f 02 05  mov   $05,#$02
08fe: d7 04     mov   ($04)+y,a
0900: ad c4     cmp   y,#$c4
0902: d0 05     bne   $0909
0904: 78 03 05  cmp   $05,#$03
0907: f0 07     beq   $0910
0909: fc        inc   y
090a: d0 f2     bne   $08fe
090c: ab 05     inc   $05
090e: 2f ee     bra   $08fe
0910: e8 00     mov   a,#$00
0912: 3f a6 11  call  $11a6             ; disable echo
0915: a2 14     set5  $14
0917: 8d 71     mov   y,#$71
0919: e8 00     mov   a,#$00
091b: cc f2 00  mov   $00f2,y
091e: c5 f3 00  mov   $00f3,a           ; set VOL(R)
0921: dc        dec   y
0922: cc f2 00  mov   $00f2,y
0925: c5 f3 00  mov   $00f3,a           ; set VOL(L)
0928: dd        mov   a,y
0929: 80        setc
092a: a8 0f     sbc   a,#$0f
092c: fd        mov   y,a
092d: 10 ea     bpl   $0919
092f: e8 ff     mov   a,#$ff
0931: c4 13     mov   $13,a
0933: 8d 5c     mov   y,#$5c
0935: cc f2 00  mov   $00f2,y
0938: c5 f3 00  mov   $00f3,a           ; set KOF
093b: e8 7f     mov   a,#$7f
093d: 8d 0c     mov   y,#$0c
093f: cc f2 00  mov   $00f2,y
0942: c5 f3 00  mov   $00f3,a           ; set MVOL(L)
0945: 8d 1c     mov   y,#$1c
0947: cc f2 00  mov   $00f2,y
094a: c5 f3 00  mov   $00f3,a           ; set MVOL(R)
094d: e8 50     mov   a,#$50
094f: 8d 5d     mov   y,#$5d
0951: cc f2 00  mov   $00f2,y
0954: c5 f3 00  mov   $00f3,a           ; set DIR
0957: e8 20     mov   a,#$20
0959: c5 fa 00  mov   $00fa,a           ; set timer 0 freq (4 ms)
095c: 1c        asl   a
095d: c5 fb 00  mov   $00fb,a           ; set timer 1 freq (8 ms)
0960: e8 03     mov   a,#$03
0962: c5 f1 00  mov   $00f1,a
; main loop
0965: e5 fd 00  mov   a,$00fd
0968: f0 fb     beq   $0965             ; wait for timer 0 tick
096a: ab 25     inc   $25
096c: 03 25 07  bbs0  $25,$0976
096f: e5 fe 00  mov   a,$00fe
0972: f0 fb     beq   $096f             ; wait for timer 1 tick
0974: c4 2b     mov   $2b,a
0976: 8d 0a     mov   y,#$0a
0978: ad 05     cmp   y,#$05
097a: f0 07     beq   $0983
097c: b0 08     bcs   $0986
097e: 69 1a 19  cmp   ($19),($1a)
0981: d0 11     bne   $0994
0983: e3 19 0e  bbs7  $19,$0994
; update dsp regs
0986: f6 6c 15  mov   a,$156c+y
0989: c5 f2 00  mov   $00f2,a
098c: f6 76 15  mov   a,$1576+y
098f: 5d        mov   x,a
0990: e6        mov   a,(x)
0991: c5 f3 00  mov   $00f3,a           ; set dsp reg from shadow
0994: fe e2     dbnz  y,$0978
;
0996: cb 12     mov   $12,y
0998: cb 13     mov   $13,y
099a: cb 1d     mov   $1d,y
099c: e4 23     mov   a,$23
099e: 60        clrc
099f: 88 40     adc   a,#$40
09a1: c4 23     mov   $23,a
09a3: 90 07     bcc   $09ac
09a5: 69 1a 19  cmp   ($19),($1a)
09a8: f0 02     beq   $09ac
09aa: ab 19     inc   $19
09ac: 13 28 0d  bbc0  $28,$09bc
;
09af: 12 28     clr0  $28
09b1: e4 27     mov   a,$27
09b3: f0 07     beq   $09bc
09b5: c4 0c     mov   $0c,a
09b7: 3f 05 1a  call  $1a05
09ba: 2f 05     bra   $09c1
;
09bc: 3f 69 19  call  $1969
09bf: f0 09     beq   $09ca
09c1: 0e 13 00  tset1 $0013
09c4: 4e 1b 00  tclr1 $001b
09c7: 0e 1d 00  tset1 $001d
09ca: e4 1e     mov   a,$1e
09cc: f0 1a     beq   $09e8
09ce: cd 3f     mov   x,#$3f
09d0: ab 1f     inc   $1f
09d2: e5 04 02  mov   a,$0204
09d5: 2e 1f 10  cbne  $1f,$09e8
09d8: 8f 00 1f  mov   $1f,#$00
09db: 8b 1e     dec   $1e
09dd: d0 09     bne   $09e8
09df: 3f e3 19  call  $19e3
09e2: 0e 13 00  tset1 $0013
09e5: 4e 1b 00  tclr1 $001b
09e8: 8f 01 1c  mov   $1c,#$01          ; channel bitmask
09eb: cd 00     mov   x,#$00
09ed: f4 d0     mov   a,$d0+x
09ef: f0 6b     beq   $0a5c
09f1: e4 1c     mov   a,$1c
09f3: 24 1d     and   a,$1d
09f5: d0 65     bne   $0a5c
09f7: f5 a5 02  mov   a,$02a5+x
09fa: 5c        lsr   a
09fb: b0 0e     bcs   $0a0b
09fd: 7d        mov   a,x
09fe: 5c        lsr   a
09ff: 28 01     and   a,#$01
0a01: c4 04     mov   $04,a
0a03: e4 25     mov   a,$25
0a05: 28 01     and   a,#$01
0a07: 44 04     eor   a,$04
0a09: d0 51     bne   $0a5c
0a0b: d8 22     mov   $22,x
0a0d: f5 33 15  mov   a,$1533+x
0a10: c4 24     mov   $24,a
0a12: f5 a5 02  mov   a,$02a5+x
0a15: c4 21     mov   $21,a
0a17: f5 b5 02  mov   a,$02b5+x
0a1a: c4 29     mov   $29,a
0a1c: f5 b6 02  mov   a,$02b6+x
0a1f: c4 2a     mov   $2a,a
0a21: 8d 01     mov   y,#$01
0a23: 03 21 02  bbs0  $21,$0a28
0a26: eb 2b     mov   y,$2b             ; timer 1 counter (+1 / 8 ms)
0a28: f4 bf     mov   a,$bf+x
0a2a: c4 04     mov   $04,a
0a2c: 8f 00 05  mov   $05,#$00
0a2f: f5 05 02  mov   a,$0205+x         ; tempo
0a32: cf        mul   ya
0a33: 7a 04     addw  ya,$04
0a35: d4 bf     mov   $bf+x,a           ; counter1.times { $bf+x += tempo }
0a37: ad 00     cmp   y,#$00
0a39: f0 0f     beq   $0a4a
0a3b: dc        dec   y
0a3c: f0 04     beq   $0a42
0a3e: 1a 29     decw  $29               ; decrease wait counter until y > 0 (too much lags)
0a40: fe fc     dbnz  y,$0a3e
0a42: 3f fb 0a  call  $0afb             ; tick
0a45: 3f 02 0c  call  $0c02
0a48: 2f 03     bra   $0a4d
0a4a: 3f 65 0a  call  $0a65
0a4d: e4 21     mov   a,$21
0a4f: d5 a5 02  mov   $02a5+x,a
0a52: e4 29     mov   a,$29
0a54: d5 b5 02  mov   $02b5+x,a
0a57: e4 2a     mov   a,$2a
0a59: d5 b6 02  mov   $02b6+x,a
0a5c: 3d        inc   x
0a5d: 3d        inc   x
0a5e: 0b 1c     asl   $1c               ; shift channel bitmask
0a60: d0 8b     bne   $09ed
0a62: 5f 65 09  jmp   $0965

0a65: 52 20     clr2  $20
0a67: f5 26 03  mov   a,$0326+x
0a6a: c4 0b     mov   $0b,a
0a6c: f5 25 03  mov   a,$0325+x
0a6f: c4 0a     mov   $0a,a
0a71: f4 7f     mov   a,$7f+x
0a73: f0 4b     beq   $0ac0
0a75: f4 80     mov   a,$80+x
0a77: d0 47     bne   $0ac0
0a79: 42 20     set2  $20
0a7b: f5 35 03  mov   a,$0335+x
0a7e: c4 04     mov   $04,a
0a80: f5 36 03  mov   a,$0336+x
0a83: c4 05     mov   $05,a
0a85: 30 18     bmi   $0a9f
0a87: f4 bf     mov   a,$bf+x
0a89: eb 04     mov   y,$04
0a8b: cf        mul   ya
0a8c: cb 06     mov   $06,y
0a8e: 8f 00 07  mov   $07,#$00
0a91: f4 bf     mov   a,$bf+x
0a93: eb 05     mov   y,$05
0a95: cf        mul   ya
0a96: 60        clrc
0a97: 7a 06     addw  ya,$06
0a99: 7a 0a     addw  ya,$0a
0a9b: da 0a     movw  $0a,ya
0a9d: 2f 21     bra   $0ac0
0a9f: 58 ff 04  eor   $04,#$ff
0aa2: 58 ff 05  eor   $05,#$ff
0aa5: 3a 04     incw  $04
0aa7: f4 bf     mov   a,$bf+x
0aa9: eb 04     mov   y,$04
0aab: cf        mul   ya
0aac: cb 06     mov   $06,y
0aae: 8f 00 07  mov   $07,#$00
0ab1: f4 bf     mov   a,$bf+x
0ab3: eb 05     mov   y,$05
0ab5: cf        mul   ya
0ab6: 7a 06     addw  ya,$06
0ab8: da 04     movw  $04,ya
0aba: ba 0a     movw  ya,$0a
0abc: 9a 04     subw  ya,$04
0abe: da 0a     movw  $0a,ya
0ac0: f5 56 03  mov   a,$0356+x
0ac3: 15 55 03  or    a,$0355+x
0ac6: f0 1e     beq   $0ae6
0ac8: f5 45 02  mov   a,$0245+x
0acb: de 9f 18  cbne  $9f+x,$0ae6
0ace: f5 36 02  mov   a,$0236+x
0ad1: 60        clrc
0ad2: 95 35 02  adc   a,$0235+x
0ad5: d5 36 02  mov   $0236+x,a
0ad8: 60        clrc
0ad9: 94 a0     adc   a,$a0+x
0adb: 3f c6 13  call  $13c6
0ade: ba 08     movw  ya,$08
0ae0: 7a 0a     addw  ya,$0a
0ae2: da 0a     movw  $0a,ya
0ae4: 42 20     set2  $20
0ae6: 3f ef 13  call  $13ef
0ae9: ba 04     movw  ya,$04
0aeb: f0 05     beq   $0af2
0aed: 7a 0a     addw  ya,$0a
0aef: 5f 3a 14  jmp   $143a

0af2: 53 20 05  bbc2  $20,$0afa
0af5: ba 0a     movw  ya,$0a
0af7: 5f 3a 14  jmp   $143a

0afa: 6f        ret

0afb: 1a 29     decw  $29               ; decrease wait counter (tick)
0afd: 30 02     bmi   $0b01
0aff: d0 03     bne   $0b04
0b01: 5f bd 0c  jmp   $0cbd

0b04: f4 50     mov   a,$50+x
0b06: f0 13     beq   $0b1b
0b08: 9b 50     dec   $50+x
0b0a: d0 46     bne   $0b52
0b0c: f5 a5 03  mov   a,$03a5+x
0b0f: 15 a6 03  or    a,$03a6+x
0b12: d0 07     bne   $0b1b
0b14: f5 66 02  mov   a,$0266+x
0b17: 68 7f     cmp   a,#$7f
0b19: 90 34     bcc   $0b4f
0b1b: f5 b6 03  mov   a,$03b6+x
0b1e: 75 16 02  cmp   a,$0216+x
0b21: b0 2c     bcs   $0b4f
0b23: f5 a5 03  mov   a,$03a5+x
0b26: 15 a6 03  or    a,$03a6+x
0b29: f0 27     beq   $0b52
0b2b: f5 66 02  mov   a,$0266+x
0b2e: 68 7f     cmp   a,#$7f
0b30: b0 08     bcs   $0b3a
0b32: 8d 00     mov   y,#$00
0b34: e8 01     mov   a,#$01
0b36: 5a 29     cmpw  ya,$29
0b38: f0 15     beq   $0b4f
0b3a: f5 b5 03  mov   a,$03b5+x
0b3d: 60        clrc
0b3e: 95 a5 03  adc   a,$03a5+x
0b41: d5 b5 03  mov   $03b5+x,a
0b44: f5 b6 03  mov   a,$03b6+x
0b47: 95 a6 03  adc   a,$03a6+x
0b4a: d5 b6 03  mov   $03b6+x,a
0b4d: 2f 03     bra   $0b52
0b4f: 09 1c 13  or    ($13),($1c)
0b52: 52 20     clr2  $20
0b54: e8 00     mov   a,#$00
0b56: fd        mov   y,a
0b57: da 08     movw  $08,ya
0b59: f4 7f     mov   a,$7f+x
0b5b: f0 2f     beq   $0b8c
0b5d: f4 80     mov   a,$80+x
0b5f: f0 04     beq   $0b65
0b61: 9b 80     dec   $80+x
0b63: 2f 27     bra   $0b8c
0b65: 9b 7f     dec   $7f+x
0b67: d0 0e     bne   $0b77
0b69: f5 46 03  mov   a,$0346+x
0b6c: d5 26 03  mov   $0326+x,a
0b6f: f5 45 03  mov   a,$0345+x
0b72: d5 25 03  mov   $0325+x,a
0b75: 2f 13     bra   $0b8a
0b77: f5 25 03  mov   a,$0325+x
0b7a: 60        clrc
0b7b: 95 35 03  adc   a,$0335+x
0b7e: d5 25 03  mov   $0325+x,a
0b81: f5 26 03  mov   a,$0326+x
0b84: 95 36 03  adc   a,$0336+x
0b87: d5 26 03  mov   $0326+x,a
0b8a: 42 20     set2  $20
0b8c: f5 55 02  mov   a,$0255+x
0b8f: f0 58     beq   $0be9
0b91: f4 9f     mov   a,$9f+x
0b93: 75 45 02  cmp   a,$0245+x
0b96: f0 04     beq   $0b9c
0b98: bb 9f     inc   $9f+x
0b9a: 2f 4d     bra   $0be9
0b9c: f4 cf     mov   a,$cf+x
0b9e: 75 46 02  cmp   a,$0246+x
0ba1: d0 0d     bne   $0bb0
0ba3: f5 55 02  mov   a,$0255+x
0ba6: d5 56 03  mov   $0356+x,a
0ba9: e8 00     mov   a,#$00
0bab: d5 55 03  mov   $0355+x,a
0bae: 2f 27     bra   $0bd7
0bb0: 68 00     cmp   a,#$00
0bb2: d0 0e     bne   $0bc2
0bb4: f5 66 03  mov   a,$0366+x
0bb7: d5 56 03  mov   $0356+x,a
0bba: f5 65 03  mov   a,$0365+x
0bbd: d5 55 03  mov   $0355+x,a
0bc0: 2f 13     bra   $0bd5
0bc2: f5 55 03  mov   a,$0355+x
0bc5: 60        clrc
0bc6: 95 65 03  adc   a,$0365+x
0bc9: d5 55 03  mov   $0355+x,a
0bcc: f5 56 03  mov   a,$0356+x
0bcf: 95 66 03  adc   a,$0366+x
0bd2: d5 56 03  mov   $0356+x,a
0bd5: bb cf     inc   $cf+x
0bd7: e8 00     mov   a,#$00
0bd9: d5 36 02  mov   $0236+x,a
0bdc: f4 a0     mov   a,$a0+x
0bde: 60        clrc
0bdf: 95 c0 00  adc   a,$00c0+x
0be2: d4 a0     mov   $a0+x,a
0be4: 3f c6 13  call  $13c6
0be7: 42 20     set2  $20
0be9: 3f ef 13  call  $13ef
0bec: ba 04     movw  ya,$04
0bee: d0 03     bne   $0bf3
0bf0: 53 20 0e  bbc2  $20,$0c01
0bf3: f5 26 03  mov   a,$0326+x
0bf6: fd        mov   y,a
0bf7: f5 25 03  mov   a,$0325+x
0bfa: 7a 04     addw  ya,$04
0bfc: 7a 08     addw  ya,$08
0bfe: 5f 3a 14  jmp   $143a

0c01: 6f        ret

0c02: b3 21 03  bbc5  $21,$0c08
0c05: b2 21     clr5  $21
0c07: 6f        ret

0c08: f4 3f     mov   a,$3f+x
0c0a: f0 1e     beq   $0c2a
0c0c: 9b 3f     dec   $3f+x
0c0e: d0 04     bne   $0c14
0c10: f4 40     mov   a,$40+x
0c12: 2f 10     bra   $0c24
0c14: f5 10 01  mov   a,$0110+x
0c17: 60        clrc
0c18: 95 00 01  adc   a,$0100+x
0c1b: d5 10 01  mov   $0110+x,a
0c1e: f5 11 01  mov   a,$0111+x
0c21: 95 01 01  adc   a,$0101+x
0c24: d5 11 01  mov   $0111+x,a
0c27: d5 05 02  mov   $0205+x,a
0c2a: f4 7f     mov   a,$7f+x
0c2c: d0 35     bne   $0c63
0c2e: e7 2f     mov   a,($2f+x)
0c30: 68 f3     cmp   a,#$f3
0c32: d0 2f     bne   $0c63
0c34: 3f 87 0e  call  $0e87
0c37: 3f 85 0e  call  $0e85
0c3a: d4 80     mov   $80+x,a
0c3c: 3f 85 0e  call  $0e85
0c3f: d4 7f     mov   $7f+x,a
0c41: 3f 85 0e  call  $0e85
0c44: 60        clrc
0c45: 95 56 02  adc   a,$0256+x
0c48: d5 46 03  mov   $0346+x,a
0c4b: e8 00     mov   a,#$00
0c4d: d5 45 03  mov   $0345+x,a
0c50: f4 7f     mov   a,$7f+x
0c52: f0 0f     beq   $0c63
0c54: 3f 87 0e  call  $0e87
0c57: 3f 85 0e  call  $0e85
0c5a: d5 35 03  mov   $0335+x,a
0c5d: 3f 85 0e  call  $0e85
0c60: d5 36 03  mov   $0336+x,a
0c63: f4 70     mov   a,$70+x
0c65: f0 24     beq   $0c8b
0c67: 9b 70     dec   $70+x
0c69: d0 0d     bne   $0c78
0c6b: f5 15 02  mov   a,$0215+x
0c6e: d5 e6 02  mov   $02e6+x,a
0c71: e8 00     mov   a,#$00
0c73: d5 e5 02  mov   $02e5+x,a
0c76: 2f 13     bra   $0c8b
0c78: f5 e5 02  mov   a,$02e5+x
0c7b: 60        clrc
0c7c: 95 f5 02  adc   a,$02f5+x
0c7f: d5 e5 02  mov   $02e5+x,a
0c82: f5 e6 02  mov   a,$02e6+x
0c85: 95 f6 02  adc   a,$02f6+x
0c88: d5 e6 02  mov   $02e6+x,a
0c8b: f5 16 02  mov   a,$0216+x
0c8e: f0 05     beq   $0c95
0c90: e8 00     mov   a,#$00
0c92: 3f a5 14  call  $14a5
0c95: f4 6f     mov   a,$6f+x
0c97: f0 23     beq   $0cbc
0c99: 9b 6f     dec   $6f+x
0c9b: f0 14     beq   $0cb1
0c9d: f5 05 03  mov   a,$0305+x
0ca0: 60        clrc
0ca1: 95 15 03  adc   a,$0315+x
0ca4: d5 05 03  mov   $0305+x,a
0ca7: f5 06 03  mov   a,$0306+x
0caa: 95 16 03  adc   a,$0316+x
0cad: d5 06 03  mov   $0306+x,a
0cb0: 6f        ret

0cb1: f5 26 02  mov   a,$0226+x
0cb4: d5 06 03  mov   $0306+x,a
0cb7: e8 00     mov   a,#$00
0cb9: d5 05 03  mov   $0305+x,a
0cbc: 6f        ret

0cbd: 3f 85 0e  call  $0e85
0cc0: c4 08     mov   $08,a             ; save vbyte
0cc2: 28 7f     and   a,#$7f
0cc4: 68 60     cmp   a,#$60
0cc6: 90 03     bcc   $0ccb             ; branch if vcmd 00..5f or 80..df
0cc8: 5f 5b 0e  jmp   $0e5b

; vcmd 00-5f - note
; vcmd 80-df - note without length
0ccb: 33 21 03  bbc1  $21,$0cd1
0cce: 09 1c 13  or    ($13),($1c)
0cd1: f3 08 05  bbc7  $08,$0cd9         ; if vcmd >= $80
0cd4: f5 65 02  mov   a,$0265+x         ;   reuse last length, skip arg1
0cd7: 2f 03     bra   $0cdc
0cd9: 3f 85 0e  call  $0e85             ; get arg1 (length in ticks)
0cdc: d5 65 02  mov   $0265+x,a         ; save note length
0cdf: 8d 00     mov   y,#$00
0ce1: 7a 29     addw  ya,$29            ; add note length to wait counter
0ce3: da 29     movw  $29,ya
0ce5: f0 02     beq   $0ce9
0ce7: 10 18     bpl   $0d01
0ce9: 3f 85 0e  call  $0e85             ; get arg2 (00-7f: note duration, 80-ff: note volume (skipped))
0cec: fd        mov   y,a
0ced: 10 03     bpl   $0cf2
0cef: f5 66 02  mov   a,$0266+x
0cf2: d5 66 02  mov   $0266+x,a
0cf5: d5 75 02  mov   $0275+x,a
0cf8: dd        mov   a,y
0cf9: 30 03     bmi   $0cfe
0cfb: 3f 87 0e  call  $0e87             ; get arg3 (note volume (skipped)) (only available if arg2 < 0x80)
0cfe: 5f bd 0c  jmp   $0cbd

0d01: f5 75 02  mov   a,$0275+x
0d04: 68 7f     cmp   a,#$7f
0d06: f0 06     beq   $0d0e
0d08: 09 1c 12  or    ($12),($1c)
0d0b: 09 1c 1b  or    ($1b),($1c)
0d0e: 3f 85 0e  call  $0e85             ; get arg2 (00-7f: note duration, 80-ff: note volume)
0d11: fd        mov   y,a
0d12: 10 03     bpl   $0d17
0d14: f5 66 02  mov   a,$0266+x
0d17: d5 66 02  mov   $0266+x,a
0d1a: d5 75 02  mov   $0275+x,a
0d1d: dd        mov   a,y
0d1e: 30 03     bmi   $0d23
0d20: 3f 85 0e  call  $0e85
0d23: 28 7f     and   a,#$7f
0d25: d5 96 02  mov   $0296+x,a         ; save note volume
0d28: d5 16 02  mov   $0216+x,a
0d2b: d0 08     bne   $0d35
0d2d: e4 1c     mov   a,$1c
0d2f: 4e 12 00  tclr1 $0012
0d32: 4e 1b 00  tclr1 $001b
0d35: 33 21 0d  bbc1  $21,$0d45         ; skip instrument loading for percussion
; percussion: load sample
0d38: e4 08     mov   a,$08
0d3a: 28 7f     and   a,#$7f
0d3c: d5 a6 02  mov   $02a6+x,a         ; update instrument #
0d3f: 3f 32 0f  call  $0f32             ; update sample (percussion)
0d42: 8f 3c 08  mov   $08,#$3c          ; note number = 60
; calc actual note length
0d45: f5 65 02  mov   a,$0265+x         ; note length
0d48: fd        mov   y,a
0d49: f5 66 02  mov   a,$0266+x         ; note duration
0d4c: 68 7f     cmp   a,#$7f
0d4e: d0 05     bne   $0d55             ; duration $7f means full length
0d50: f5 65 02  mov   a,$0265+x
0d53: 2f 07     bra   $0d5c
0d55: 1c        asl   a
0d56: cf        mul   ya                ; actual length = (length * (duration << 1)) >> 8
0d57: dd        mov   a,y
0d58: d0 02     bne   $0d5c
0d5a: e8 01     mov   a,#$01            ; actual length = 1 if it was zero
0d5c: d4 50     mov   $50+x,a           ; save actual note length
0d5e: f5 25 03  mov   a,$0325+x
0d61: c4 0c     mov   $0c,a
0d63: f5 26 03  mov   a,$0326+x
0d66: c4 0d     mov   $0d,a
0d68: f5 51 01  mov   a,$0151+x
0d6b: c4 05     mov   $05,a
0d6d: f5 50 01  mov   a,$0150+x
0d70: c4 04     mov   $04,a             ; $04/5 = repeat-triggered tuning #1
0d72: f5 61 01  mov   a,$0161+x
0d75: c4 07     mov   $07,a
0d77: f5 60 01  mov   a,$0160+x
0d7a: c4 06     mov   $06,a             ; $06/7 = repeat-triggered tuning #2
0d7c: f5 96 03  mov   a,$0396+x
0d7f: c4 0b     mov   $0b,a
0d81: f5 95 03  mov   a,$0395+x
0d84: c4 0a     mov   $0a,a             ; $0a/b = tuning
0d86: e4 08     mov   a,$08             ; note number
0d88: 60        clrc
0d89: 95 56 02  adc   a,$0256+x         ; per-voice transpose
0d8c: fd        mov   y,a
0d8d: e8 00     mov   a,#$00
0d8f: 7a 04     addw  ya,$04            ; add repeat-triggered tuning #1
0d91: 7a 06     addw  ya,$06            ; add repeat-triggered tuning #2
0d93: 7a 0a     addw  ya,$0a            ; add tuning
0d95: d5 25 03  mov   $0325+x,a         ; save intermediate note number (fraction)
0d98: dd        mov   a,y
0d99: 28 7f     and   a,#$7f            ; note number &= 0x7f
0d9b: d5 26 03  mov   $0326+x,a         ; save intermediate note number (integer)
0d9e: e8 00     mov   a,#$00
0da0: d4 a0     mov   $a0+x,a
0da2: d4 9f     mov   $9f+x,a
0da4: d4 cf     mov   $cf+x,a
0da6: d5 55 03  mov   $0355+x,a
0da9: d5 56 03  mov   $0356+x,a
0dac: d5 b6 03  mov   $03b6+x,a
0daf: d5 b5 03  mov   $03b5+x,a
0db2: f4 8f     mov   a,$8f+x
0db4: d4 7f     mov   $7f+x,a
0db6: f0 33     beq   $0deb
0db8: f4 90     mov   a,$90+x
0dba: d4 80     mov   $80+x,a
0dbc: 83 21 15  bbs4  $21,$0dd4
0dbf: f5 25 03  mov   a,$0325+x
0dc2: d5 45 03  mov   $0345+x,a
0dc5: f5 26 03  mov   a,$0326+x
0dc8: d5 46 03  mov   $0346+x,a
0dcb: 80        setc
0dcc: b5 06 02  sbc   a,$0206+x
0dcf: d5 26 03  mov   $0326+x,a
0dd2: 2f 17     bra   $0deb
0dd4: f5 26 03  mov   a,$0326+x
0dd7: c4 05     mov   $05,a
0dd9: f5 25 03  mov   a,$0325+x
0ddc: c4 04     mov   $04,a
0dde: e4 0d     mov   a,$0d
0de0: d5 26 03  mov   $0326+x,a
0de3: e4 0c     mov   a,$0c
0de5: d5 25 03  mov   $0325+x,a
0de8: 3f 69 13  call  $1369
0deb: f5 26 03  mov   a,$0326+x
0dee: fd        mov   y,a
0def: f5 25 03  mov   a,$0325+x
0df2: 5f 3a 14  jmp   $143a

; vcmd dispatch table
0df5: dw $0e8e  ; 60 - percussion on
0df7: dw $0e93  ; 61 - percussion off
0df9: dw $0eba  ; e0 - rest
0dfb: dw $0ede  ; e1 - rest with duration
0dfd: dw $0ef8  ; e2 - set instrument
0dff: dw $0f88  ; e3 - set panpot
0e01: dw $0fa8  ; e4 - vibrato
0e03: dw $0fce  ; e5 - random pitch envelope
0e05: dw $0fea  ; e6 - start loop
0e07: dw $102f  ; e7 - end loop
0e09: dw $0ff7  ; e8 - start loop #2
0e0b: dw $1014  ; e9 - end loop #2
0e0d: dw $10af  ; ea - tempo (per track)
0e0f: dw $10b9  ; eb - tempo fade
0e11: dw $10de  ; ec - per-voice transpose
0e13: dw $10e4  ; ed - nop (2 byte params)
0e15: dw $10ed  ; ee - volume
0e17: dw $10fb  ; ef - volume fade
0e19: dw $1116  ; f0 - portamento
0e1b: dw $1121  ; f1 - pitch envelope
0e1d: dw $1133  ; f2 - tuning
0e1f: dw $1155  ; f3 - nop (2 byte params)
0e21: dw $115e  ; f4 - echo on/off
0e23: dw $1180  ; f5 - echo params
0e25: dw $11fd  ; f6 - start complexed loop
0e27: dw $120f  ; f7 - end complexed loop
0e29: dw $1246  ; f8 - panpot fade
0e2b: dw $1261  ; f9 - vibrato depth fade length
0e2d: dw $127c  ; fa - set ADSR/GAIN
0e2f: dw $12e0  ; fb - set PMON
0e31: dw $12e5  ; fc - linear pitch envelope?
0e33: dw $12f1  ; fd - goto
0e35: dw $12ff  ; fe - call subroutine
0e37: dw $131b  ; ff - end of track / end subroutine

; vcmd length table
0e39: db $00,$00
0e3b: db $01,$02,$01,$01,$03,$03,$00,$03
0e43: db $00,$03,$01,$02,$01,$03,$01,$02
0e4b: db $01,$03,$01,$03,$03,$03,$00,$00
0e53: db $02,$01,$03,$01,$01,$02,$02,$00

0e5b: e4 08     mov   a,$08
0e5d: 8f de 04  mov   $04,#$de
0e60: 68 e0     cmp   a,#$e0
0e62: b0 0c     bcs   $0e70             ; branch if vcmd e0..ff
0e64: 8f 60 04  mov   $04,#$60
0e67: 68 62     cmp   a,#$62
0e69: 90 05     bcc   $0e70             ; branch if vcmd 60..61
; vcmd 62-7f
0e6b: a2 21     set5  $21
0e6d: 5f e3 19  jmp   $19e3

; dispatch vcmd (60..61, e0..ff)
0e70: 80        setc
0e71: a4 04     sbc   a,$04
0e73: 1c        asl   a
0e74: fd        mov   y,a
0e75: f6 f6 0d  mov   a,$0df6+y
0e78: 2d        push  a
0e79: f6 f5 0d  mov   a,$0df5+y         ; read vcmd dispatch table
0e7c: 2d        push  a
0e7d: dd        mov   a,y
0e7e: 5c        lsr   a
0e7f: fd        mov   y,a
0e80: f6 39 0e  mov   a,$0e39+y
0e83: f0 08     beq   $0e8d
; read byte from voice ptr
0e85: e7 2f     mov   a,($2f+x)
; increase voice ptr
0e87: bb 2f     inc   $2f+x
0e89: d0 02     bne   $0e8d
0e8b: bb 30     inc   $30+x
0e8d: 6f        ret

; vcmd 60 - percussion on
0e8e: 22 21     set1  $21
0e90: 5f bd 0c  jmp   $0cbd

; vcmd 61 - percussion off
0e93: 32 21     clr1  $21
0e95: 5f bd 0c  jmp   $0cbd

0e98: fd        mov   y,a
0e99: f5 66 02  mov   a,$0266+x
0e9c: d5 75 02  mov   $0275+x,a
0e9f: dd        mov   a,y
0ea0: d5 66 02  mov   $0266+x,a
0ea3: 5f bd 0c  jmp   $0cbd

0ea6: fd        mov   y,a
0ea7: f5 66 02  mov   a,$0266+x
0eaa: d5 75 02  mov   $0275+x,a
0ead: dd        mov   a,y
0eae: d5 66 02  mov   $0266+x,a
0eb1: 3f 85 0e  call  $0e85
0eb4: d5 96 02  mov   $0296+x,a
0eb7: 5f bd 0c  jmp   $0cbd

; vcmd e0 - rest
0eba: d5 65 02  mov   $0265+x,a
0ebd: 09 1c 13  or    ($13),($1c)
0ec0: e8 00     mov   a,#$00
0ec2: d5 66 02  mov   $0266+x,a
0ec5: d5 75 02  mov   $0275+x,a
0ec8: d4 50     mov   $50+x,a
0eca: d5 16 02  mov   $0216+x,a
0ecd: f5 65 02  mov   a,$0265+x
0ed0: 8d 00     mov   y,#$00
0ed2: 7a 29     addw  ya,$29
0ed4: da 29     movw  $29,ya
0ed6: f0 03     beq   $0edb
0ed8: 30 01     bmi   $0edb
0eda: 6f        ret

0edb: 5f bd 0c  jmp   $0cbd

; vcmd e1 - rest with duration
0ede: d5 65 02  mov   $0265+x,a         ; arg1: note length
0ee1: 2d        push  a
0ee2: 3f 85 0e  call  $0e85             ; arg2: note duration
0ee5: d5 66 02  mov   $0266+x,a
0ee8: d5 75 02  mov   $0275+x,a
0eeb: ee        pop   y
0eec: 1c        asl   a
0eed: cf        mul   ya
0eee: dd        mov   a,y
0eef: d0 02     bne   $0ef3
0ef1: e8 01     mov   a,#$01
0ef3: d4 50     mov   $50+x,a
0ef5: 5f cd 0e  jmp   $0ecd

; vcmd e2 - set instrument
0ef8: 09 1c 13  or    ($13),($1c)
0efb: d5 a6 02  mov   $02a6+x,a         ; instrument #
0efe: 68 20     cmp   a,#$20
0f00: b0 04     bcs   $0f06             ; branch if patch number >= 32
0f02: 68 19     cmp   a,#$19
0f04: b0 11     bcs   $0f17             ; branch if patch number >= 25
0f06: e8 aa     mov   a,#$aa
0f08: c4 04     mov   $04,a
0f0a: e8 06     mov   a,#$06
0f0c: c4 05     mov   $05,a             ; $04/5 = $06aa
0f0e: f5 a6 02  mov   a,$02a6+x
0f11: 3f 3d 0f  call  $0f3d
0f14: 5f bd 0c  jmp   $0cbd

; patch number (25..31)
0f17: e5 26 00  mov   a,$0026
0f1a: 1c        asl   a
0f1b: fd        mov   y,a
0f1c: f6 98 06  mov   a,$0698+y
0f1f: c4 04     mov   $04,a
0f21: f6 99 06  mov   a,$0699+y
0f24: c4 05     mov   $05,a             ; read sample rgn address from table $0698/9
0f26: f5 a6 02  mov   a,$02a6+x         ; instrument #
0f29: 80        setc
0f2a: a8 19     sbc   a,#$19            ; index (0..6)
0f2c: 3f 3d 0f  call  $0f3d
0f2f: 5f bd 0c  jmp   $0cbd

; update sample (percussion note)
0f32: e8 aa     mov   a,#$aa
0f34: c4 04     mov   $04,a
0f36: e8 07     mov   a,#$07
0f38: c4 05     mov   $05,a             ; $04/5 = $07aa
0f3a: f5 a6 02  mov   a,$02a6+x
; update sample ($04/5 = sample rgn table address, a = index (patch number))
0f3d: 8d 08     mov   y,#$08            ; 8 bytes
0f3f: cf        mul   ya
0f40: 7a 04     addw  ya,$04
0f42: da 04     movw  $04,ya
0f44: 8d 00     mov   y,#$00
0f46: e8 04     mov   a,#$04
0f48: 04 24     or    a,$24             ; voice ($00..$70)
0f4a: c4 06     mov   $06,a
0f4c: c5 f2 00  mov   $00f2,a
0f4f: f7 04     mov   a,($04)+y         ; offset +0
0f51: c5 f3 00  mov   $00f3,a           ; SRCN
0f54: fc        inc   y
0f55: f7 04     mov   a,($04)+y         ; offset +1: tuning in semitones (signed)
0f57: d5 85 02  mov   $0285+x,a
0f5a: fc        inc   y
0f5b: f7 04     mov   a,($04)+y         ; offset +2: tuning in semitones/256 (signed)
0f5d: d5 86 02  mov   $0286+x,a
0f60: 8f 03 07  mov   $07,#$03
0f63: fc        inc   y
0f64: ab 06     inc   $06
0f66: e4 06     mov   a,$06
0f68: c5 f2 00  mov   $00f2,a
0f6b: f7 04     mov   a,($04)+y         ; offset +3,+4,+5
0f6d: c5 f3 00  mov   $00f3,a           ; ADSR(1),ADSR(2),GAIN
0f70: 6e 07 f0  dbnz  $07,$0f63
0f73: fc        inc   y
0f74: 63 21 0a  bbs3  $21,$0f81
0f77: f7 04     mov   a,($04)+y         ; offset +6: panpot (0..20)
0f79: d5 06 03  mov   $0306+x,a
0f7c: e8 00     mov   a,#$00
0f7e: d5 05 03  mov   $0305+x,a
0f81: fc        inc   y
0f82: f7 04     mov   a,($04)+y         ; offset +7: volume delta (decreased)
0f84: d5 95 02  mov   $0295+x,a
0f87: 6f        ret

; vcmd e3 - set panpot
0f88: 68 15     cmp   a,#$15
0f8a: f0 12     beq   $0f9e
0f8c: 68 16     cmp   a,#$16
0f8e: f0 13     beq   $0fa3
0f90: d5 06 03  mov   $0306+x,a
0f93: e8 00     mov   a,#$00
0f95: d5 05 03  mov   $0305+x,a
0f98: d5 6f 00  mov   $006f+x,a
0f9b: 5f bd 0c  jmp   $0cbd
; ignore per-instrument pan on (pan=21)
0f9e: 62 21     set3  $21
0fa0: 5f bd 0c  jmp   $0cbd
; ignore per-instrument pan off (pan=22)
0fa3: 72 21     clr3  $21
0fa5: 5f bd 0c  jmp   $0cbd

; vcmd e4 - vibrato
0fa8: d5 45 02  mov   $0245+x,a         ; arg1 - vibrato delay
0fab: 3f 85 0e  call  $0e85             ; arg2 - vibrato rate
0fae: d5 c0 00  mov   $00c0+x,a
0fb1: fd        mov   y,a
0fb2: f5 05 02  mov   a,$0205+x
0fb5: cf        mul   ya
0fb6: dd        mov   a,y
0fb7: d5 35 02  mov   $0235+x,a
0fba: 3f 85 0e  call  $0e85             ; arg3 - vibrato depth
0fbd: d5 56 03  mov   $0356+x,a
0fc0: d5 55 02  mov   $0255+x,a
0fc3: e8 00     mov   a,#$00
0fc5: d5 55 03  mov   $0355+x,a
0fc8: d5 46 02  mov   $0246+x,a
0fcb: 5f bd 0c  jmp   $0cbd

; vcmd e5 - random pitch envelope
0fce: d5 76 02  mov   $0276+x,a         ; arg1 - envelope speed
0fd1: 3f 85 0e  call  $0e85    
0fd4: d5 86 03  mov   $0386+x,a         ; arg2 - delta pitch mask bits (low)
0fd7: 3f 85 0e  call  $0e85    
0fda: d5 85 03  mov   $0385+x,a         ; arg3 - delta pitch mask bits (high)
0fdd: e8 00     mov   a,#$00
0fdf: d4 60     mov   $60+x,a
0fe1: d5 75 03  mov   $0375+x,a
0fe4: d5 76 03  mov   $0376+x,a
0fe7: 5f bd 0c  jmp   $0cbd

; vcmd e6 - start loop
0fea: f4 2f     mov   a,$2f+x
0fec: d5 70 01  mov   $0170+x,a
0fef: f4 30     mov   a,$30+x
0ff1: d5 71 01  mov   $0171+x,a         ; save return address
0ff4: 5f bd 0c  jmp   $0cbd

; vcmd e8 - start loop #2
0ff7: f4 2f     mov   a,$2f+x
0ff9: d5 80 01  mov   $0180+x,a
0ffc: f4 30     mov   a,$30+x
0ffe: d5 81 01  mov   $0181+x,a         ; save return address
1001: e8 00     mov   a,#$00
1003: d4 5f     mov   $5f+x,a
1005: d5 40 01  mov   $0140+x,a
1008: d5 41 01  mov   $0141+x,a
100b: d5 60 01  mov   $0160+x,a
100e: d5 61 01  mov   $0161+x,a
1011: 5f bd 0c  jmp   $0cbd

; vcmd e9 - end loop #2
1014: fd        mov   y,a
1015: 7d        mov   a,x
1016: 60        clrc
1017: 88 10     adc   a,#$10
1019: 5d        mov   x,a
101a: dd        mov   a,y
101b: 68 00     cmp   a,#$00            ; arg1: repeat count
101d: f0 32     beq   $1051             ; 0 => infinite loop
101f: bb 4f     inc   $4f+x             ; increment repeat counter
1021: de 4f 2d  cbne  $4f+x,$1051
; repeat end
1024: f8 22     mov   x,$22
1026: 3f 87 0e  call  $0e87
1029: 3f 87 0e  call  $0e87
102c: 5f bd 0c  jmp   $0cbd

; vcmd e7 - end loop
102f: 68 00     cmp   a,#$00
1031: f0 1e     beq   $1051
1033: bb 4f     inc   $4f+x
1035: de 4f 19  cbne  $4f+x,$1051
; repeat end
1038: 3f 87 0e  call  $0e87
103b: 3f 87 0e  call  $0e87
103e: e8 00     mov   a,#$00
1040: d4 4f     mov   $4f+x,a
1042: d5 30 01  mov   $0130+x,a
1045: d5 31 01  mov   $0131+x,a
1048: d5 50 01  mov   $0150+x,a
104b: d5 51 01  mov   $0151+x,a
104e: 5f bd 0c  jmp   $0cbd

; repeat again
; adjust volume by repeat count
1051: f5 30 01  mov   a,$0130+x
1054: c4 04     mov   $04,a
1056: f5 31 01  mov   a,$0131+x
1059: c4 05     mov   $05,a
105b: 4d        push  x
105c: f8 22     mov   x,$22
105e: 3f 85 0e  call  $0e85             ; get arg2 (delta volume, signed)
1061: ce        pop   x
1062: 8d 00     mov   y,#$00
1064: 08 00     or    a,#$00
1066: f0 0c     beq   $1074
1068: 10 01     bpl   $106b
106a: dc        dec   y
106b: 7a 04     addw  ya,$04
106d: d5 30 01  mov   $0130+x,a
1070: dd        mov   a,y
1071: d5 31 01  mov   $0131+x,a
1074: 4d        push  x
1075: f8 22     mov   x,$22
1077: 3f 85 0e  call  $0e85             ; get arg3 (delta pitch, signed)
107a: ce        pop   x
107b: 68 00     cmp   a,#$00
107d: f0 1d     beq   $109c             ; do nothing if arg3 == 0
107f: 8d 00     mov   y,#$00
1081: 1c        asl   a
1082: 90 01     bcc   $1085
1084: dc        dec   y
1085: cb 04     mov   $04,y
1087: 1c        asl   a
1088: 2b 04     rol   $04
108a: 1c        asl   a
108b: 2b 04     rol   $04
108d: 60        clrc
108e: 95 50 01  adc   a,$0150+x
1091: d5 50 01  mov   $0150+x,a
1094: e4 04     mov   a,$04
1096: 95 51 01  adc   a,$0151+x
1099: d5 51 01  mov   $0151+x,a         ; add (arg3 * 8) to $0150/1+x
109c: eb 22     mov   y,$22
109e: f5 70 01  mov   a,$0170+x
10a1: d6 2f 00  mov   $002f+y,a
10a4: f5 71 01  mov   a,$0171+x
10a7: d6 30 00  mov   $0030+y,a         ; back to return address
10aa: f8 22     mov   x,$22
10ac: 5f bd 0c  jmp   $0cbd

; vcmd ea - tempo (per track)
10af: d5 05 02  mov   $0205+x,a
10b2: e8 00     mov   a,#$00
10b4: d4 3f     mov   $3f+x,a
10b6: 5f bd 0c  jmp   $0cbd

; vcmd eb - tempo fade
10b9: d4 3f     mov   $3f+x,a
10bb: 2d        push  a
10bc: 3f 85 0e  call  $0e85
10bf: d4 40     mov   $40+x,a
10c1: 80        setc
10c2: b5 05 02  sbc   a,$0205+x
10c5: ce        pop   x
10c6: 3f 4c 13  call  $134c
10c9: d5 00 01  mov   $0100+x,a
10cc: dd        mov   a,y
10cd: d5 01 01  mov   $0101+x,a
10d0: f5 05 02  mov   a,$0205+x
10d3: d5 11 01  mov   $0111+x,a
10d6: e8 00     mov   a,#$00
10d8: d5 10 01  mov   $0110+x,a
10db: 5f bd 0c  jmp   $0cbd

; vcmd ec - per-voice transpose
10de: d5 56 02  mov   $0256+x,a
10e1: 5f bd 0c  jmp   $0cbd

; vcmd ed - nop (2 byte params)
10e4: 3f 87 0e  call  $0e87
10e7: 3f 87 0e  call  $0e87
10ea: 5f bd 0c  jmp   $0cbd

; vcmd ee - volume
10ed: d5 e6 02  mov   $02e6+x,a
10f0: e8 00     mov   a,#$00
10f2: d5 e5 02  mov   $02e5+x,a
10f5: d5 70 00  mov   $0070+x,a
10f8: 5f bd 0c  jmp   $0cbd

; vcmd ef - volume fade
10fb: d4 70     mov   $70+x,a
10fd: 2d        push  a
10fe: 3f 85 0e  call  $0e85
1101: d5 15 02  mov   $0215+x,a
1104: 80        setc
1105: b5 e6 02  sbc   a,$02e6+x
1108: ce        pop   x
1109: 3f 4c 13  call  $134c
110c: d5 f5 02  mov   $02f5+x,a
110f: dd        mov   a,y
1110: d5 f6 02  mov   $02f6+x,a
1113: 5f bd 0c  jmp   $0cbd

; vcmd f0 - portamento
1116: d4 8f     mov   $8f+x,a           ; portamento speed
1118: 82 21     set4  $21
111a: e8 00     mov   a,#$00
111c: d4 90     mov   $90+x,a
111e: 5f bd 0c  jmp   $0cbd

; vcmd f1 - pitch envelope
1121: d4 90     mov   $90+x,a           ; arg1: envelope delay
1123: 3f 85 0e  call  $0e85
1126: d4 8f     mov   $8f+x,a           ; arg2: envelope speed
1128: 3f 85 0e  call  $0e85
112b: d5 06 02  mov   $0206+x,a         ; arg3: envelope depth
112e: 92 21     clr4  $21
1130: 5f bd 0c  jmp   $0cbd

; vcmd f2 - tuning
1133: 8f 00 04  mov   $04,#$00
1136: 08 00     or    a,#$00
1138: 30 05     bmi   $113f
113a: 8d 04     mov   y,#$04
113c: cf        mul   ya
113d: 2f 0c     bra   $114b
113f: 48 ff     eor   a,#$ff
1141: bc        inc   a
1142: 8d 04     mov   y,#$04
1144: cf        mul   ya
1145: da 04     movw  $04,ya
1147: ba 0e     movw  ya,$0e
1149: 9a 04     subw  ya,$04
114b: d5 95 03  mov   $0395+x,a
114e: dd        mov   a,y
114f: d5 96 03  mov   $0396+x,a
1152: 5f bd 0c  jmp   $0cbd

; vcmd f3 - nop (2 byte params)
1155: 3f 87 0e  call  $0e87
1158: 3f 87 0e  call  $0e87
115b: 5f bd 0c  jmp   $0cbd

; vcmd f4 - echo on/off
115e: c4 18     mov   $18,a             ; arg1 - EON
1160: f0 0f     beq   $1171
1162: 3f 85 0e  call  $0e85
1165: c4 10     mov   $10,a             ; arg2 - EVOL(L)
1167: 3f 85 0e  call  $0e85
116a: c4 11     mov   $11,a             ; arg3 - EVOL(R)
116c: b2 14     clr5  $14
116e: 5f bd 0c  jmp   $0cbd

1171: c4 10     mov   $10,a
1173: c4 11     mov   $11,a
1175: a2 14     set5  $14
1177: 3f 87 0e  call  $0e87
117a: 3f 87 0e  call  $0e87
117d: 5f bd 0c  jmp   $0cbd

; f5 - echo params
1180: 3f a6 11  call  $11a6             ; arg1: echo delay
1183: 3f 85 0e  call  $0e85             ; arg2: echo feedback
1186: c4 15     mov   $15,a
1188: 3f 85 0e  call  $0e85             ; arg3: filter index
118b: bc        inc   a
118c: 8d 08     mov   y,#$08
118e: cf        mul   ya
118f: 5d        mov   x,a
1190: 8d 08     mov   y,#$08
1192: f6 a0 16  mov   a,$16a0+y
1195: c5 f2 00  mov   $00f2,a
1198: f5 80 16  mov   a,$1680+x
119b: c5 f3 00  mov   $00f3,a           ; set echo filter
119e: 1d        dec   x
119f: fe f1     dbnz  y,$1192
11a1: f8 22     mov   x,$22
11a3: 5f bd 0c  jmp   $0cbd

; set echo delay
11a6: c4 1a     mov   $1a,a
11a8: 8d 7d     mov   y,#$7d
11aa: cc f2 00  mov   $00f2,y
11ad: e5 f3 00  mov   a,$00f3           ; get EDL
11b0: 64 1a     cmp   a,$1a
11b2: f0 31     beq   $11e5
; update echo param (a=EDL)
11b4: 28 0f     and   a,#$0f
11b6: 48 ff     eor   a,#$ff
11b8: f3 19 03  bbc7  $19,$11be
11bb: 60        clrc
11bc: 84 19     adc   a,$19
11be: c4 19     mov   $19,a
11c0: 8d 04     mov   y,#$04
11c2: f6 6c 15  mov   a,$156c+y
11c5: c5 f2 00  mov   $00f2,a
11c8: e8 00     mov   a,#$00
11ca: c5 f3 00  mov   $00f3,a           ; zero EON,EFB,EVOL(R),EVOL(L)
11cd: fe f3     dbnz  y,$11c2
11cf: e4 14     mov   a,$14             ; get FLG shadow
11d1: 08 20     or    a,#$20
11d3: 8d 6c     mov   y,#$6c
11d5: cc f2 00  mov   $00f2,y
11d8: c5 f3 00  mov   $00f3,a           ; set FLG (disable echo)
11db: e4 1a     mov   a,$1a
11dd: 8d 7d     mov   y,#$7d
11df: cc f2 00  mov   $00f2,y
11e2: c5 f3 00  mov   $00f3,a           ; set EDL
; update ESA
11e5: 68 00     cmp   a,#$00
11e7: f0 0b     beq   $11f4
11e9: 1c        asl   a
11ea: c4 1a     mov   $1a,a
11ec: 1c        asl   a
11ed: 1c        asl   a
11ee: 48 ff     eor   a,#$ff
11f0: bc        inc   a
11f1: 60        clrc
11f2: 88 00     adc   a,#$00
11f4: 8d 6d     mov   y,#$6d
11f6: cc f2 00  mov   $00f2,y
11f9: c5 f3 00  mov   $00f3,a           ; set ESA
11fc: 6f        ret

; vcmd f6 - start complexed loop
11fd: f4 2f     mov   a,$2f+x
11ff: d5 c5 02  mov   $02c5+x,a
1202: f4 30     mov   a,$30+x
1204: d5 c6 02  mov   $02c6+x,a         ; save current address to $02c5/6
1207: e8 c0     mov   a,#$c0   
1209: 4e 21 00  tclr1 $0021             ; reset "visited" flags
120c: 5f bd 0c  jmp   $0cbd

; vcmd f7 - end complexed loop
120f: c3 21 08  bbs6  $21,$121a
1212: e3 21 20  bbs7  $21,$1235
; first time, do nothing
1215: c2 21     set6  $21
1217: 5f bd 0c  jmp   $0cbd
; second time
121a: d2 21     clr6  $21
121c: e2 21     set7  $21
121e: f4 2f     mov   a,$2f+x
1220: d5 d5 02  mov   $02d5+x,a
1223: f4 30     mov   a,$30+x
1225: d5 d6 02  mov   $02d6+x,a         ; save current address to $02d5/6
1228: f5 c5 02  mov   a,$02c5+x
122b: d4 2f     mov   $2f+x,a  
122d: f5 c6 02  mov   a,$02c6+x
1230: d4 30     mov   $30+x,a           ; back to $02c5/6
1232: 5f bd 0c  jmp   $0cbd
; third time
1235: c2 21     set6  $21
1237: f2 21     clr7  $21
1239: f5 d5 02  mov   a,$02d5+x
123c: d4 2f     mov   $2f+x,a
123e: f5 d6 02  mov   a,$02d6+x
1241: d4 30     mov   $30+x,a           ; back to $02d5/6
1243: 5f bd 0c  jmp   $0cbd

; vcmd f8 - panpot fade
1246: d4 6f     mov   $6f+x,a
1248: 2d        push  a
1249: 3f 85 0e  call  $0e85
124c: d5 26 02  mov   $0226+x,a
124f: 80        setc
1250: b5 06 03  sbc   a,$0306+x
1253: ce        pop   x
1254: 3f 4c 13  call  $134c
1257: d5 15 03  mov   $0315+x,a
125a: dd        mov   a,y
125b: d5 16 03  mov   $0316+x,a
125e: 5f bd 0c  jmp   $0cbd

; vcmd f9 - vibrato depth fade length
1261: d5 46 02  mov   $0246+x,a         ; arg1 - vibrato depth fade length
1264: 2d        push  a
1265: 8d 00     mov   y,#$00
1267: f5 55 02  mov   a,$0255+x         ; vibrato depth
126a: ce        pop   x
126b: 9e        div   ya,x
126c: 2d        push  a
126d: e8 00     mov   a,#$00
126f: 9e        div   ya,x
1270: f8 22     mov   x,$22
1272: d5 65 03  mov   $0365+x,a         ; ((vibrato_depth / vibrato_depth_fade_length) << 8) / vibrato_depth_fade_length
1275: ae        pop   a        
1276: d5 66 03  mov   $0366+x,a         ; vibrato_depth / vibrato_depth_fade_length
1279: 5f bd 0c  jmp   $0cbd

; vcmd fa - set ADSR/GAIN
127c: 8d 00     mov   y,#$00
127e: 68 a0     cmp   a,#$a0
1280: b0 34     bcs   $12b6
; arg1 < 160: ADSR mode
1282: cd 0a     mov   x,#$0a
1284: 9e        div   ya,x
1285: c4 04     mov   $04,a             ; AR = arg1 / 10
1287: dd        mov   a,y
1288: 28 07     and   a,#$07            ; DR = (arg1 % 10) & 7
128a: 9f        xcn   a
128b: 04 04     or    a,$04
128d: 08 80     or    a,#$80            ; ADSR mode
128f: fd        mov   y,a
1290: e8 05     mov   a,#$05
1292: 04 24     or    a,$24
1294: 5d        mov   x,a
1295: c9 f2 00  mov   $00f2,x
1298: cc f3 00  mov   $00f3,y           ; ADSR(1)
129b: 3d        inc   x
129c: c9 f2 00  mov   $00f2,x
129f: f8 22     mov   x,$22
12a1: 3f 85 0e  call  $0e85
12a4: 8d 00     mov   y,#$00
12a6: cd 1e     mov   x,#$1e
12a8: 9e        div   ya,x
12a9: fc        inc   y
12aa: fc        inc   y
12ab: cb 04     mov   $04,y             ; SR = (arg2 % 20) + 2
12ad: 9f        xcn   a                 ; SL = (arg2 / 20) & 7
12ae: 1c        asl   a
12af: 04 04     or    a,$04
12b1: c5 f3 00  mov   $00f3,a           ; ADSR(2)
12b4: 2f 18     bra   $12ce
; arg1 > 160: GAIN mode
12b6: e8 05     mov   a,#$05
12b8: 04 24     or    a,$24
12ba: 5d        mov   x,a
12bb: c9 f2 00  mov   $00f2,x
12be: cc f3 00  mov   $00f3,y           ; ADSR(1) - GAIN mode
12c1: 3d        inc   x
12c2: 3d        inc   x
12c3: c9 f2 00  mov   $00f2,x
12c6: f8 22     mov   x,$22
12c8: 3f 85 0e  call  $0e85
12cb: c5 f3 00  mov   $00f3,a           ; arg2: GAIN
;
12ce: f8 22     mov   x,$22
12d0: 3f 85 0e  call  $0e85
12d3: 8d 10     mov   y,#$10
12d5: cf        mul   ya
12d6: d5 a5 03  mov   $03a5+x,a
12d9: dd        mov   a,y
12da: d5 a6 03  mov   $03a6+x,a
12dd: 5f bd 0c  jmp   $0cbd

; vcmd fb - set PMON
12e0: c4 16     mov   $16,a
12e2: 5f bd 0c  jmp   $0cbd

; vcmd fc - linear pitch envelope? (hattori-kun effect?)
12e5: d5 35 03  mov   $0335+x,a         ; note number delta (fraction)
12e8: 3f 85 0e  call  $0e85
12eb: d5 36 03  mov   $0336+x,a         ; note number delta (integer)
12ee: 5f bd 0c  jmp   $0cbd

; vcmd fd - goto
12f1: c4 04     mov   $04,a
12f3: 3f 85 0e  call  $0e85
12f6: d4 30     mov   $30+x,a
12f8: e4 04     mov   a,$04
12fa: d4 2f     mov   $2f+x,a
12fc: 5f bd 0c  jmp   $0cbd

; vcmd fe - call subroutine
12ff: c4 04     mov   $04,a
1301: 3f 85 0e  call  $0e85
1304: c4 05     mov   $05,a
1306: f4 2f     mov   a,$2f+x
1308: d5 20 01  mov   $0120+x,a
130b: f4 30     mov   a,$30+x
130d: d5 21 01  mov   $0121+x,a
1310: ba 04     movw  ya,$04
1312: d4 2f     mov   $2f+x,a
1314: db 30     mov   $30+x,y
1316: 42 21     set2  $21
1318: 5f bd 0c  jmp   $0cbd

; vcmd ff - end of track / end subroutine
131b: 53 21 0f  bbc2  $21,$132d
; end subroutine
131e: 52 21     clr2  $21
1320: f5 20 01  mov   a,$0120+x
1323: d4 2f     mov   $2f+x,a
1325: f5 21 01  mov   a,$0121+x
1328: d4 30     mov   $30+x,a
132a: 5f bd 0c  jmp   $0cbd
; end of track
132d: c8 00     cmp   x,#$00
132f: d0 07     bne   $1338
1331: 78 90 d0  cmp   $d0,#$90
1334: d0 02     bne   $1338
1336: 02 28     set0  $28
1338: e8 00     mov   a,#$00
133a: d4 bf     mov   $bf+x,a
133c: d4 d0     mov   $d0+x,a
133e: d5 25 02  mov   $0225+x,a
1341: e4 1c     mov   a,$1c
1343: 0e 13 00  tset1 $0013
1346: 4e 1b 00  tclr1 $001b
1349: a2 21     set5  $21
134b: 6f        ret

134c: ed        notc
134d: 6b 04     ror   $04
134f: 10 03     bpl   $1354
1351: 48 ff     eor   a,#$ff
1353: bc        inc   a
1354: 8d 00     mov   y,#$00
1356: 9e        div   ya,x
1357: 2d        push  a
1358: e8 00     mov   a,#$00
135a: 9e        div   ya,x
135b: ee        pop   y
135c: f8 22     mov   x,$22
135e: f3 04 07  bbc7  $04,$1368
1361: da 04     movw  $04,ya
1363: e8 00     mov   a,#$00
1365: fd        mov   y,a
1366: 9a 04     subw  ya,$04
1368: 6f        ret

1369: f4 7f     mov   a,$7f+x
136b: f0 58     beq   $13c5
136d: f5 26 03  mov   a,$0326+x
1370: c4 07     mov   $07,a
1372: f5 25 03  mov   a,$0325+x
1375: c4 06     mov   $06,a
1377: ba 04     movw  ya,$04
1379: ad 60     cmp   y,#$60
137b: 90 0c     bcc   $1389
137d: ad 80     cmp   y,#$80
137f: 90 04     bcc   $1385
1381: ba 0e     movw  ya,$0e
1383: 2f 04     bra   $1389
1385: 8d 5f     mov   y,#$5f
1387: e8 ff     mov   a,#$ff
1389: d5 45 03  mov   $0345+x,a
138c: 2d        push  a
138d: dd        mov   a,y
138e: d5 46 03  mov   $0346+x,a
1391: f4 7f     mov   a,$7f+x
1393: 5d        mov   x,a
1394: ae        pop   a
1395: 9a 06     subw  ya,$06
1397: da 04     movw  $04,ya
1399: ed        notc
139a: 6b 06     ror   $06
139c: 10 0a     bpl   $13a8
139e: 58 ff 04  eor   $04,#$ff
13a1: 58 ff 05  eor   $05,#$ff
13a4: 3a 04     incw  $04
13a6: ba 04     movw  ya,$04
13a8: 8d 00     mov   y,#$00
13aa: e4 05     mov   a,$05
13ac: 9e        div   ya,x
13ad: 2d        push  a
13ae: e4 04     mov   a,$04
13b0: 9e        div   ya,x
13b1: ee        pop   y
13b2: f3 06 07  bbc7  $06,$13bc
13b5: da 04     movw  $04,ya
13b7: e8 00     mov   a,#$00
13b9: fd        mov   y,a
13ba: 9a 04     subw  ya,$04
13bc: f8 22     mov   x,$22
13be: d5 35 03  mov   $0335+x,a
13c1: dd        mov   a,y
13c2: d5 36 03  mov   $0336+x,a
13c5: 6f        ret

13c6: c4 04     mov   $04,a
13c8: 5c        lsr   a
13c9: 28 3f     and   a,#$3f
13cb: fd        mov   y,a
13cc: f6 a9 16  mov   a,$16a9+y
13cf: fd        mov   y,a
13d0: f5 56 03  mov   a,$0356+x
13d3: cf        mul   ya
13d4: da 08     movw  $08,ya
13d6: f5 55 02  mov   a,$0255+x
13d9: 30 08     bmi   $13e3
13db: 4b 09     lsr   $09
13dd: 6b 08     ror   $08
13df: 4b 09     lsr   $09
13e1: 6b 08     ror   $08
13e3: f3 04 08  bbc7  $04,$13ee
13e6: 58 ff 08  eor   $08,#$ff
13e9: 58 ff 09  eor   $09,#$ff
13ec: 3a 08     incw  $08
13ee: 6f        ret

13ef: e8 00     mov   a,#$00
13f1: c4 05     mov   $05,a
13f3: c4 04     mov   $04,a
13f5: f5 76 02  mov   a,$0276+x
13f8: f0 3f     beq   $1439
13fa: 60        clrc
13fb: 94 60     adc   a,$60+x
13fd: d4 60     mov   $60+x,a
13ff: 90 38     bcc   $1439
1401: f5 76 03  mov   a,$0376+x
1404: 5c        lsr   a
1405: f5 75 03  mov   a,$0375+x
1408: 5d        mov   x,a
1409: 90 09     bcc   $1414
140b: f5 6a 18  mov   a,$186a+x
140e: fd        mov   y,a
140f: f5 69 18  mov   a,$1869+x
1412: 2f 07     bra   $141b
1414: f5 6a 17  mov   a,$176a+x
1417: fd        mov   y,a
1418: f5 69 17  mov   a,$1769+x
141b: f8 22     mov   x,$22
141d: 35 85 03  and   a,$0385+x
1420: c4 04     mov   $04,a
1422: dd        mov   a,y
1423: 35 86 03  and   a,$0386+x
1426: c4 05     mov   $05,a
1428: f5 75 03  mov   a,$0375+x
142b: 60        clrc
142c: 88 01     adc   a,#$01
142e: d5 75 03  mov   $0375+x,a
1431: f5 76 03  mov   a,$0376+x
1434: 88 00     adc   a,#$00
1436: d5 76 03  mov   $0376+x,a
1439: 6f        ret

143a: 2d        push  a
143b: 6d        push  y
143c: f5 85 02  mov   a,$0285+x         ; per-instrument tuning
143f: c4 05     mov   $05,a
1441: f5 86 02  mov   a,$0286+x
1444: c4 04     mov   $04,a
1446: 30 06     bmi   $144e
1448: ee        pop   y
1449: ae        pop   a
144a: 7a 04     addw  ya,$04            ; add per-instrument tuning
144c: 2f 0c     bra   $145a
144e: ae        pop   a
144f: 60        clrc
1450: 84 05     adc   a,$05
1452: fd        mov   y,a
1453: ae        pop   a
1454: 60        clrc
1455: 84 04     adc   a,$04
1457: b0 01     bcs   $145a
1459: dc        dec   y
145a: da 04     movw  $04,ya
145c: dd        mov   a,y
145d: 28 7f     and   a,#$7f
145f: 1c        asl   a
1460: fd        mov   y,a
1461: f6 82 15  mov   a,$1582+y
1464: c4 07     mov   $07,a
1466: f6 81 15  mov   a,$1581+y         ; pitch table
1469: c4 06     mov   $06,a
146b: f6 84 15  mov   a,$1584+y
146e: 2d        push  a
146f: f6 83 15  mov   a,$1583+y         ; pitch table (next key)
1472: ee        pop   y
1473: 9a 06     subw  ya,$06            ; delta pitch
1475: b0 04     bcs   $147b
1477: 8d 00     mov   y,#$00
1479: e8 c9     mov   a,#$c9
147b: 6d        push  y
147c: eb 04     mov   y,$04
147e: cf        mul   ya
147f: 8f 00 09  mov   $09,#$00
1482: cb 08     mov   $08,y
1484: ae        pop   a
1485: eb 04     mov   y,$04
1487: cf        mul   ya
1488: 7a 08     addw  ya,$08
148a: 7a 06     addw  ya,$06
148c: 6d        push  y
148d: 2d        push  a
148e: e8 02     mov   a,#$02
1490: 04 24     or    a,$24
1492: fd        mov   y,a
1493: ae        pop   a
1494: cc f2 00  mov   $00f2,y
1497: c5 f3 00  mov   $00f3,a           ; P(L)
149a: fc        inc   y
149b: ae        pop   a
149c: 28 3f     and   a,#$3f
149e: cc f2 00  mov   $00f2,y
14a1: c5 f3 00  mov   $00f3,a           ; P(H)
14a4: 6f        ret

14a5: 8f 00 07  mov   $07,#$00
14a8: f5 b6 03  mov   a,$03b6+x
14ab: c4 06     mov   $06,a
14ad: f5 30 01  mov   a,$0130+x
14b0: c4 08     mov   $08,a
14b2: f5 31 01  mov   a,$0131+x
14b5: c4 09     mov   $09,a
14b7: f5 40 01  mov   a,$0140+x
14ba: c4 0a     mov   $0a,a
14bc: f5 41 01  mov   a,$0141+x
14bf: c4 0b     mov   $0b,a
14c1: f5 16 02  mov   a,$0216+x
14c4: 8d 00     mov   y,#$00
14c6: 9a 06     subw  ya,$06
14c8: 7a 08     addw  ya,$08
14ca: 7a 0a     addw  ya,$0a
14cc: ad 80     cmp   y,#$80
14ce: b0 24     bcs   $14f4
14d0: ad 00     cmp   y,#$00
14d2: d0 04     bne   $14d8
14d4: 08 00     or    a,#$00
14d6: 10 02     bpl   $14da
14d8: e8 7f     mov   a,#$7f
14da: fd        mov   y,a
14db: f5 e6 02  mov   a,$02e6+x
14de: cf        mul   ya
14df: dd        mov   a,y
14e0: 78 00 1e  cmp   $1e,#$00
14e3: f0 07     beq   $14ec
14e5: 03 21 04  bbs0  $21,$14ec
14e8: eb 1e     mov   y,$1e
14ea: cf        mul   ya
14eb: dd        mov   a,y
14ec: 80        setc
14ed: b5 95 02  sbc   a,$0295+x
14f0: 90 02     bcc   $14f4
14f2: b0 02     bcs   $14f6
14f4: e8 00     mov   a,#$00
14f6: fd        mov   y,a
14f7: f6 e9 16  mov   a,$16e9+y
14fa: c4 05     mov   $05,a
14fc: e8 0a     mov   a,#$0a
14fe: 03 20 09  bbs0  $20,$150a
1501: f5 06 03  mov   a,$0306+x         ; pan index
1504: 68 15     cmp   a,#$15
1506: 90 02     bcc   $150a
1508: e8 14     mov   a,#$14            ; a = min(pan, 20)
150a: c4 04     mov   $04,a
150c: e4 24     mov   a,$24
150e: 08 00     or    a,#$00
1510: c5 f2 00  mov   $00f2,a
1513: eb 04     mov   y,$04
1515: f6 43 15  mov   a,$1543+y
1518: eb 05     mov   y,$05
151a: cf        mul   ya                ; apply pan
151b: dd        mov   a,y
151c: c5 f3 00  mov   $00f3,a           ; VOL(L)
151f: e4 24     mov   a,$24
1521: 08 01     or    a,#$01
1523: c5 f2 00  mov   $00f2,a
1526: eb 04     mov   y,$04
1528: f6 58 15  mov   a,$1558+y
152b: eb 05     mov   y,$05
152d: cf        mul   ya                ; apply pan
152e: dd        mov   a,y
152f: c5 f3 00  mov   $00f3,a           ; VOL(R)
1532: 6f        ret

1533: db $00,$00
1535: db $10,$00
1537: db $20,$00
1539: db $30,$00
153b: db $40,$00
153d: db $50,$00
153f: db $60,$00
1541: db $70,$00

; pan -> left volume table
1543: $00,$0a,$18,$28,$3c,$50,$64,$78
154b: $8c,$a0,$b2,$c4,$d2,$de,$e8,$f0
1553: $f6,$fa,$fc,$fc,$fe

; pan -> right volume table
1558: $fe,$fc,$fc,$fa,$f6,$f0,$e8,$de
1560: $d2,$c4,$b2,$a0,$8c,$78,$64,$50
1568: $3c,$28,$18,$0a,$00

; dsp reg shadows ($156c+x)
; EVOL(L),EVOL(R),EFB,EON,FLG,KON,KOF,NON,PMON,KOF
156d: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1577: db $10,$11,$15,$18,$14,$12,$0e,$17,$16,$13

; pitch table
1581: dw $0042
1583: dw $0046
1585: dw $004b
1587: dw $004f
1589: dw $0054
158b: dw $0059
158d: dw $005e
158f: dw $0064
1591: dw $006a
1593: dw $0070
1595: dw $0077
1597: dw $007e
1599: dw $0085
159b: dw $008d
159d: dw $0096
159f: dw $009f
15a1: dw $00a8
15a3: dw $00b2
15a5: dw $00bd
15a7: dw $00c8
15a9: dw $00d4
15ab: dw $00e1
15ad: dw $00ee
15af: dw $00fc
15b1: dw $010b
15b3: dw $011b
15b5: dw $012c
15b7: dw $013e
15b9: dw $0151
15bb: dw $0165
15bd: dw $017a
15bf: dw $0191
15c1: dw $01a9
15c3: dw $01c2
15c5: dw $01dd
15c7: dw $01f9
15c9: dw $0217
15cb: dw $0237
15cd: dw $0259
15cf: dw $027d
15d1: dw $02a3
15d3: dw $02cb
15d5: dw $02f5
15d7: dw $0322
15d9: dw $0352
15db: dw $0385
15dd: dw $03ba
15df: dw $03f3
15e1: dw $042f
15e3: dw $046f
15e5: dw $04b2
15e7: dw $04fa
15e9: dw $0546
15ea: dw $0596
15ed: dw $05eb
15ef: dw $0645
15f1: dw $06a5
15f3: dw $070a
15f5: dw $0775
15f7: dw $07e6
15f9: dw $085f
15fb: dw $08de
15fd: dw $0965
15ff: dw $09f4
1601: dw $0a8c
1603: dw $0b2c
1605: dw $0bd6
1607: dw $0c8b
1609: dw $0d4a
160b: dw $0e14
160d: dw $0eea
160f: dw $0fcd
1611: dw $10be
1613: dw $11bd
1615: dw $12cb
1617: dw $13e9
1619: dw $1518
161b: dw $1659
161d: dw $17ad
161f: dw $1916
1621: dw $1a94
1623: dw $1c28
1625: dw $1dd5
1627: dw $1f9b
1629: dw $217c
162b: dw $237a
162d: dw $2596
162f: dw $27d2
1631: dw $2a30
1633: dw $2cb2
1635: dw $2f5a
1637: dw $322c
1639: dw $3528
163b: dw $3850
163d: dw $3bac
163f: dw $3f36

1641: dw $000b
1643: dw $000c
1645: dw $000d
1647: dw $000e
1649: dw $000e
164b: dw $000f
164d: dw $0010
164f: dw $0010
1651: dw $0012
1653: dw $0013
1655: dw $0014
1657: dw $0015
1659: dw $0016
165b: dw $0018
165d: dw $0019
165f: dw $001b
1661: dw $001c
1663: dw $001e
1665: dw $0020
1667: dw $0021
1669: dw $0023
166b: dw $0026
166d: dw $0028
166f: dw $002a
1671: dw $002d
1673: dw $002f
1675: dw $0032
1677: dw $0035
1679: dw $0038
167b: dw $003c
167d: dw $003f
167f: dw $0042

; echo filters ($1680+x)
1681: db $7f,$00,$00,$00,$00,$00,$00,$00
1689: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1691: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1699: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; echo filter regs ($16a0+y)
16a1: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

16a9: db $00,$01,$02,$03,$04,$05,$06,$07
16b1: db $08,$09,$0a,$0b,$0c,$0d,$0e,$0f
16b9: db $10,$11,$12,$13,$14,$15,$16,$17
16c1: db $18,$19,$1a,$1b,$1c,$1d,$1e,$1f
16c9: db $20,$1f,$1e,$1d,$1c,$1b,$1a,$19
16d1: db $18,$17,$16,$15,$14,$13,$12,$11
16d9: db $10,$0f,$0e,$0d,$0c,$0b,$0a,$09
16e1: db $08,$07,$06,$05,$04,$03,$02,$01

16e9: db $00,$01,$01,$01,$01,$01,$01,$01
16f1: db $01,$01,$01,$01,$01,$01,$01,$01
16f9: db $01,$01,$01,$01,$01,$01,$01,$01
1701: db $01,$01,$01,$01,$01,$01,$02,$02
1709: db $02,$02,$02,$02,$02,$02,$02,$02
1711: db $03,$03,$03,$03,$03,$03,$04,$04
1719: db $04,$04,$04,$04,$05,$05,$05,$05
1721: db $06,$06,$07,$07,$07,$07,$08,$08
1729: db $09,$09,$0a,$0a,$0a,$0a,$0b,$0b
1731: db $0c,$0c,$0d,$0d,$0e,$0f,$10,$10
1739: db $11,$12,$13,$14,$15,$15,$16,$17
1741: db $18,$19,$1b,$1c,$1d,$1e,$20,$22
1749: db $23,$24,$26,$28,$2a,$2c,$2d,$2f
1751: db $31,$33,$35,$38,$3a,$3d,$40,$43
1759: db $46,$49,$4c,$4f,$52,$56,$5a,$5e
1761: db $62,$66,$6b,$6f,$73,$77,$7b,$7f

; random number table
1769: dw $3c9f
176b: dw $52b2
176d: dw $45af
176f: dw $89c7
1771: dw $7f10
1773: dw $9de0
1775: dw $1fdc
1777: dw $1661
1779: dw $c939
177b: dw $eb9c
177d: dw $0857
177f: dw $f866
1781: dw $245a
1783: dw $0ebf
1785: dw $153e
1787: dw $db4b
1789: dw $f5ab
178b: dw $0c31
178d: dw $0243
178f: dw $de55
1791: dw $da41
1793: dw $aebd
1795: dw $b019
1797: dw $5748
1799: dw $a3ba
179b: dw $0b36
179d: dw $dff9
179f: dw $a817
17a1: dw $0c04
17a3: dw $91e0
17a5: dw $5d18
17a7: dw $d3dd
17a9: dw $8a28
17ab: dw $11f2
17ad: dw $6f59
17af: dw $0a06
17b1: dw $2a34
17b3: dw $ac79
17b5: dw $a75e
17b7: dw $c683
17b9: dw $c139
17bb: dw $3ab4
17bd: dw $fe3f
17bf: dw $ef4f
17c1: dw $001f
17c3: dw $9930
17c5: dw $284c
17c7: dw $ed83
17c9: dw $2f8a
17cb: dw $662c
17cd: dw $d63f
17cf: dw $b76c
17d1: dw $2249
17d3: dw $65bc
17d5: dw $cffa
17d7: dw $b102
17d9: dw $f046
17db: dw $d79a
17dd: dw $0fe2
17df: dw $c511
17e1: dw $f674
17e3: dw $2c7a
17e5: dw $fb8f
17e7: dw $6a19
17e9: dw $75e5
17eb: dw $4a51
17ed: dw $b8ff
17ef: dw $627f
17f1: dw $4fdb
17f3: dw $e814
17f5: dw $d6c2
17f7: dw $b962
17f9: dw $adc2
17fb: dw $d5a6
17fd: dw $f729
17ff: dw $2e14
1801: dw $186c
1803: dw $a48e
1805: dw $a0c1
1807: dw $327e
1809: dw $bea9
180b: dw $15e6
180d: dw $7db6
180f: dw $a0f8
1811: dw $12e6
1813: dw $677a
1815: dw $d247
1817: dw $5803
1819: dw $d1fd
181b: dw $319e
181d: dw $509b
181f: dw $a554
1821: dw $72ec
1823: dw $d570
1825: dw $9bb6
1827: dw $7c82
1829: dw $c5a1
182b: dw $b972
182d: dw $33a8
182f: dw $eb8b
1831: dw $9e59
1833: dw $8729
1835: dw $368e
1837: dw $86ad
1839: dw $e4ea
183b: dw $37d4
183d: dw $ae92
183f: dw $f045
1841: dw $246e
1843: dw $f3d0
1845: dw $95cb
1847: dw $e871
1849: dw $38c6
184b: dw $71ed
184d: dw $2244
184f: dw $602b
1851: dw $26c0
1853: dw $53f9
1855: dw $c45a
1857: dw $742d
1859: dw $50c8
185b: dw $f78d
185d: dw $01ac
185f: dw $bd79
1861: dw $1052
1863: dw $675e
1865: dw $01b0
1867: dw $ffa6
1869: dw $ce5f
186b: dw $6454
186d: dw $e75c
186f: dw $32ba
1871: dw $fc96
1873: dw $e900
1875: dw $77cc
1877: dw $60dc
1879: dw $92b5
187b: dw $844d
187d: dw $681c
187f: dw $4eee
1881: dw $abaf
1883: dw $8707
1885: dw $939f
1887: dw $88bf
1889: dw $cdf1
188b: dw $d780
188d: dw $e54a
188f: dw $4e20
1891: dw $4463
1893: dw $78da
1895: dw $078f
1897: dw $40f3
1899: dw $6b98
189b: dw $a237
189d: dw $21f4
189f: dw $961e
18a1: dw $7e13
18a3: dw $ea09
18a5: dw $273d
18a7: dw $4d86
18a9: dw $8bbe
18ab: dw $d0cd
18ad: dw $a3fb
18af: dw $971b
18b1: dw $bc2a
18b3: dw $8c1a
18b5: dw $4c73
18b7: dw $6f46
18b9: dw $26de
18bb: dw $b88c
18bd: dw $aa33
18bf: dw $bb0e
18c1: dw $d821
18c3: dw $3b89
18c5: dw $1d97
18c7: dw $23bb
18c9: dw $9048
18cb: dw $fa69
18cd: dw $76c9
18cf: dw $e7ce
18d1: dw $7b1b
18d3: dw $2b1a
18d5: dw $c078
18d7: dw $0803
18d9: dw $cf6b
18db: dw $b3cc
18dd: dw $a96d
18df: dw $3ab2
18e1: dw $a116
18e3: dw $9556
18e5: dw $170b
18e7: dw $12f1
18e9: dw $1399
18eb: dw $81d8
18ed: dw $3856
18ef: dw $3ef5
18f1: dw $b1d1
18f3: dw $e1e3
18f5: dw $2eb3
18f7: dw $ef84
18f9: dw $045b
18fb: dw $5d64
18fd: dw $0ab5
18ff: dw $1d5b
1901: dw $0694
1903: dw $e4d9
1905: dw $fd0d
1907: dw $a26d
1909: dw $f64b
190b: dw $a565
190d: dw $aacb
190f: dw $e35f
1911: dw $1e70
1913: dw $93f2
1915: dw $6382
1917: dw $ee27
1919: dw $1ce2
191b: dw $2398
191d: dw $0dca
191f: dw $d9ec
1921: dw $f405
1923: dw $533b
1925: dw $739d
1927: dw $c33c
1929: dw $fed4
192b: dw $dde1
192d: dw $6961
192f: dw $2d90
1931: dw $8d2f
1933: dw $c451
1935: dw $7ca4
1937: dw $8843
1939: dw $5c34
193b: dw $b485
193d: dw $257d
193f: dw $5830
1941: dw $6885
1943: dw $c735
1945: dw $2047
1947: dw $3505
1949: dw $2509
194b: dw $5580
194d: dw $6aca
194f: dw $fc91
1951: dw $d3c8
1953: dw $a70f
1955: dw $9ac3
1957: dw $946e
1959: dw $429c
195b: dw $77df
195d: dw $4042
195f: dw $76d2
1961: dw $413d
1963: dw $7581
1965: dw $49b7
1967: dw $7be9

1969: e5 f4 00  mov   a,$00f4
196c: 65 f4 00  cmp   a,$00f4
196f: d0 f8     bne   $1969
1971: 68 00     cmp   a,#$00
1973: d0 01     bne   $1976
1975: 6f        ret

1976: c5 f4 00  mov   $00f4,a
1979: 8d 13     mov   y,#$13
197b: cc f1 00  mov   $00f1,y
197e: c4 0c     mov   $0c,a
1980: 68 ff     cmp   a,#$ff
1982: d0 06     bne   $198a
1984: 3f 57 1b  call  $1b57
1987: e8 00     mov   a,#$00
1989: 6f        ret

198a: 68 99     cmp   a,#$99
198c: b0 f9     bcs   $1987
198e: 68 91     cmp   a,#$91
1990: b0 17     bcs   $19a9
1992: 68 17     cmp   a,#$17
1994: f0 f1     beq   $1987
1996: 68 4b     cmp   a,#$4b
1998: f0 ed     beq   $1987
199a: 68 8c     cmp   a,#$8c
199c: f0 e9     beq   $1987
199e: 68 8d     cmp   a,#$8d
19a0: f0 e5     beq   $1987
19a2: 68 8f     cmp   a,#$8f
19a4: f0 e1     beq   $1987
19a6: 5f 05 1a  jmp   $1a05

19a9: 80        setc
19aa: a8 92     sbc   a,#$92
19ac: 1c        asl   a
19ad: 5d        mov   x,a
19ae: e8 00     mov   a,#$00
19b0: 1f b3 19  jmp   ($19b3+x)

; cpu cmd dispatch table
19b3: dw $19c1  ; 92
19b5: dw $19c4  ; 93
19b7: dw $19c7  ; 94
19b9: dw $19c7  ; 95
19bb: dw $19c7  ; 96
19bd: dw $19db  ; 97
19bf: dw $19e3  ; 98

19c1: 02 28     set0  $20
19c3: 6f        ret

19c4: 12 20     clr0  $20
19c6: 6f        ret

19c7: e4 0c     mov   a,$0c
19c9: 80        setc
19ca: a8 94     sbc   a,#$94
19cc: 5d        mov   x,a
19cd: f5 95 06  mov   a,$0695+x
19d0: c5 04 02  mov   $0204,a
19d3: 8f ff 1e  mov   $1e,#$ff
19d6: e8 00     mov   a,#$00
19d8: c4 1f     mov   $1f,a
19da: 6f        ret

19db: e8 00     mov   a,#$00
19dd: 8d 0c     mov   y,#$0c
19df: cd 3f     mov   x,#$3f
19e1: 2f 06     bra   $19e9
19e3: e8 00     mov   a,#$00
19e5: 8d 10     mov   y,#$10
19e7: cd ff     mov   x,#$ff
19e9: 32 20     clr1  $20
19eb: d6 ce 00  mov   $00ce+y,a
19ee: d6 23 02  mov   $0223+y,a
19f1: dc        dec   y
19f2: fe f7     dbnz  y,$19eb
19f4: c4 1e     mov   $1e,a
19f6: c4 27     mov   $27,a
19f8: c4 15     mov   $15,a
19fa: c4 18     mov   $18,a
19fc: c4 10     mov   $10,a
19fe: c4 11     mov   $11,a
1a00: 3f a6 11  call  $11a6
1a03: 7d        mov   a,x
1a04: 6f        ret

1a05: e4 0c     mov   a,$0c             ; song index (1 origin)
1a07: 8f c5 04  mov   $04,#$c5
1a0a: 8f 03 05  mov   $05,#$03          ; $04/5 = $03c5 (sequence header table)
1a0d: 9c        dec   a
1a0e: 8d 05     mov   y,#$05            ; 5 bytes
1a10: cf        mul   ya
1a11: 7a 04     addw  ya,$04
1a13: da 04     movw  $04,ya
1a15: 8d 00     mov   y,#$00
1a17: cd 00     mov   x,#$00
1a19: f7 04     mov   a,($04)+y
1a1b: c4 1c     mov   $1c,a             ; offset +0: ?
1a1d: fc        inc   y
1a1e: f7 04     mov   a,($04)+y
1a20: c4 06     mov   $06,a             ; offset +1: ?
1a22: e4 0c     mov   a,$0c
1a24: 68 4b     cmp   a,#$4b
1a26: b0 2c     bcs   $1a54             ; branch if song >= 75
1a28: cd 0c     mov   x,#$0c
1a2a: 68 17     cmp   a,#$17
1a2c: b0 1c     bcs   $1a4a             ; branch if song >= 23
;
1a2e: 74 d2     cmp   a,$d2+x
1a30: d0 06     bne   $1a38
1a32: 3d        inc   x
1a33: 3d        inc   x
1a34: 0b 1c     asl   $1c
1a36: 2f 1c     bra   $1a54
1a38: 74 d0     cmp   a,$d0+x
1a3a: f0 18     beq   $1a54
1a3c: f5 25 02  mov   a,$0225+x
1a3f: 75 27 02  cmp   a,$0227+x
1a42: f0 06     beq   $1a4a
1a44: 90 04     bcc   $1a4a
1a46: 3d        inc   x
1a47: 3d        inc   x
1a48: 0b 1c     asl   $1c
;
1a4a: e4 06     mov   a,$06
1a4c: 75 25 02  cmp   a,$0225+x
1a4f: b0 03     bcs   $1a54
1a51: e8 00     mov   a,#$00
1a53: 6f        ret

1a54: fc        inc   y
1a55: f7 04     mov   a,($04)+y         ; offset +2: number of tracks (lower 4 bits)
1a57: 28 0f     and   a,#$0f
1a59: c4 07     mov   $07,a
1a5b: f7 04     mov   a,($04)+y         ; offset +2: patch rgn offset (higher 4 bits)
1a5d: 9f        xcn   a
1a5e: 28 0f     and   a,#$0f
1a60: f0 04     beq   $1a66
1a62: 9c        dec   a
1a63: c5 26 00  mov   $0026,a
1a66: fc        inc   y
1a67: f7 04     mov   a,($04)+y         ; offset +3: track pointer table address (low)
1a69: c4 0a     mov   $0a,a
1a6b: fc        inc   y
1a6c: f7 04     mov   a,($04)+y         ; offset +4: track pointer table address (high)
1a6e: c4 0b     mov   $0b,a
1a70: 8f 00 16  mov   $16,#$00
1a73: 78 4b 0c  cmp   $0c,#$4b
1a76: 90 12     bcc   $1a8a
1a78: 8f 00 1e  mov   $1e,#$00
1a7b: e8 00     mov   a,#$00
1a7d: c4 15     mov   $15,a
1a7f: c4 18     mov   $18,a
1a81: c4 10     mov   $10,a
1a83: c4 11     mov   $11,a
1a85: a2 14     set5  $14
1a87: 3f a6 11  call  $11a6
1a8a: 8d 00     mov   y,#$00
; repeat for ($07) times
1a8c: f7 0a     mov   a,($0a)+y
1a8e: d4 2f     mov   $2f+x,a
1a90: d5 70 01  mov   $0170+x,a
1a93: d5 80 01  mov   $0180+x,a
1a96: d5 c5 02  mov   $02c5+x,a
1a99: fc        inc   y
1a9a: f7 0a     mov   a,($0a)+y
1a9c: d4 30     mov   $30+x,a           ; set vcmd ptr to $2f/30+x
1a9e: d5 71 01  mov   $0171+x,a
1aa1: d5 81 01  mov   $0181+x,a
1aa4: d5 c6 02  mov   $02c6+x,a
1aa7: e8 ff     mov   a,#$ff
1aa9: d5 05 02  mov   $0205+x,a
1aac: e8 7f     mov   a,#$7f
1aae: d5 e5 02  mov   $02e5+x,a
1ab1: d5 16 02  mov   $0216+x,a
1ab4: e8 0a     mov   a,#$0a
1ab6: d5 06 03  mov   $0306+x,a
1ab9: d5 26 02  mov   $0226+x,a
1abc: e8 00     mov   a,#$00
1abe: d5 e6 02  mov   $02e6+x,a
1ac1: d4 3f     mov   $3f+x,a
1ac3: d5 05 03  mov   $0305+x,a
1ac6: d5 a5 02  mov   $02a5+x,a
1ac9: d4 4f     mov   $4f+x,a
1acb: d4 5f     mov   $5f+x,a
1acd: d5 30 01  mov   $0130+x,a
1ad0: d5 31 01  mov   $0131+x,a
1ad3: d5 40 01  mov   $0140+x,a
1ad6: d5 41 01  mov   $0141+x,a
1ad9: d5 50 01  mov   $0150+x,a
1adc: d5 51 01  mov   $0151+x,a
1adf: d5 60 01  mov   $0160+x,a
1ae2: d5 61 01  mov   $0161+x,a
1ae5: d5 95 03  mov   $0395+x,a
1ae8: d5 96 03  mov   $0396+x,a
1aeb: d5 56 02  mov   $0256+x,a
1aee: d4 8f     mov   $8f+x,a
1af0: d4 7f     mov   $7f+x,a
1af2: d5 55 03  mov   $0355+x,a
1af5: d5 56 03  mov   $0356+x,a
1af8: d5 55 02  mov   $0255+x,a
1afb: d5 76 02  mov   $0276+x,a
1afe: d4 70     mov   $70+x,a
1b00: d4 6f     mov   $6f+x,a
1b02: d5 a5 03  mov   $03a5+x,a
1b05: d5 a6 03  mov   $03a6+x,a
1b08: d5 66 02  mov   $0266+x,a
1b0b: d5 75 02  mov   $0275+x,a
1b0e: d5 50 00  mov   $0050+x,a
1b11: d5 65 02  mov   $0265+x,a
1b14: d5 b6 02  mov   $02b6+x,a
1b17: d5 a6 02  mov   $02a6+x,a
1b1a: d5 95 02  mov   $0295+x,a
1b1d: bc        inc   a
1b1e: d5 b5 02  mov   $02b5+x,a
1b21: d4 bf     mov   $bf+x,a
1b23: e4 0c     mov   a,$0c
1b25: d4 d0     mov   $d0+x,a
1b27: 68 4b     cmp   a,#$4b
1b29: 90 0c     bcc   $1b37
1b2b: 68 8f     cmp   a,#$8f
1b2d: b0 08     bcs   $1b37
1b2f: 68 8c     cmp   a,#$8c
1b31: 90 0b     bcc   $1b3e
1b33: 68 8d     cmp   a,#$8d
1b35: b0 07     bcs   $1b3e
1b37: e8 01     mov   a,#$01
1b39: d5 a5 02  mov   $02a5+x,a
1b3c: 2f 08     bra   $1b46
1b3e: 78 90 0c  cmp   $0c,#$90
1b41: f0 03     beq   $1b46
1b43: fa 0c 27  mov   ($27),($0c)
1b46: e4 06     mov   a,$06
1b48: d5 25 02  mov   $0225+x,a
1b4b: 6e 07 03  dbnz  $07,$1b51
1b4e: e4 1c     mov   a,$1c
1b50: 6f        ret
; repeat continue
1b51: 3d        inc   x
1b52: 3d        inc   x
1b53: fc        inc   y
1b54: 5f 8c 1a  jmp   $1a8c

1b57: cd cc     mov   x,#$cc
1b59: 1e f4 00  cmp   x,$00f4
1b5c: d0 f9     bne   $1b57
1b5e: 2f 20     bra   $1b80
1b60: ec f4 00  mov   y,$00f4
1b63: d0 fb     bne   $1b60
1b65: 5e f4 00  cmp   y,$00f4
1b68: d0 0f     bne   $1b79
1b6a: e5 f5 00  mov   a,$00f5
1b6d: cc f4 00  mov   $00f4,y
1b70: d7 04     mov   ($04)+y,a
1b72: fc        inc   y
1b73: d0 f0     bne   $1b65
1b75: ab 05     inc   $05
1b77: 2f ec     bra   $1b65
1b79: 10 ea     bpl   $1b65
1b7b: 5e f4 00  cmp   y,$00f4
1b7e: 10 e5     bpl   $1b65
1b80: e5 f6 00  mov   a,$00f6
1b83: ec f7 00  mov   y,$00f7
1b86: da 04     movw  $04,ya
1b88: e5 f4 00  mov   a,$00f4
1b8b: ec f5 00  mov   y,$00f5
1b8e: c5 f4 00  mov   $00f4,a
1b91: dd        mov   a,y
1b92: 5d        mov   x,a
1b93: d0 cb     bne   $1b60
1b95: e8 33     mov   a,#$33
1b97: c5 f1 00  mov   $00f1,a
1b9a: 6f        ret
