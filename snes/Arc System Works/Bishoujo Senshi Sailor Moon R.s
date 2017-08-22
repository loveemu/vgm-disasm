0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 f0     mov   a,#$f0
0806: c5 f1 00  mov   $00f1,a
0809: e8 40     mov   a,#$40
080b: c5 fa 00  mov   $00fa,a           ; set timer 0 frequency to 8 ms
080e: e8 01     mov   a,#$01
0810: c5 f1 00  mov   $00f1,a
0813: e8 2c     mov   a,#$2c
0815: 8d 5d     mov   y,#$5d            ; DIR
0817: 3f 6d 13  call  $136d
081a: e8 fe     mov   a,#$fe
081c: 8d 6d     mov   y,#$6d            ; ESA
081e: 3f 6d 13  call  $136d
0821: 8f 00 00  mov   $00,#$00
0824: 8f 00 01  mov   $01,#$00
0827: 8f 00 02  mov   $02,#$00
082a: 8f 00 03  mov   $03,#$00
082d: 8f 00 f4  mov   $f4,#$00
0830: 8f 00 f5  mov   $f5,#$00
0833: 8f 00 f6  mov   $f6,#$00
0836: 8f 00 f7  mov   $f7,#$00
0839: 8f 00 e0  mov   $e0,#$00
083c: cd 00     mov   x,#$00
083e: 3f c9 0b  call  $0bc9
; main loop
0841: 3f 56 08  call  $0856
0844: cd 02     mov   x,#$02
0846: e5 fd 00  mov   a,$00fd
0849: f0 fb     beq   $0846             ; wait for timer 0 clock
084b: 4d        push  x
084c: 3f b6 09  call  $09b6
084f: ce        pop   x
0850: 1d        dec   x
0851: d0 f3     bne   $0846
0853: 5f 41 08  jmp   $0841

0856: 3f b6 09  call  $09b6
0859: e4 4e     mov   a,$4e
085b: f0 01     beq   $085e
085d: 6f        ret

085e: e5 f0 03  mov   a,$03f0
0861: 60        clrc
0862: 85 f2 03  adc   a,$03f2
0865: c5 f0 03  mov   $03f0,a
0868: e5 f1 03  mov   a,$03f1
086b: 85 f3 03  adc   a,$03f3
086e: c5 f1 03  mov   $03f1,a
0871: 90 26     bcc   $0899
0873: fa 35 37  mov   ($37),($35)
0876: fa 43 41  mov   ($41),($43)
0879: fa 44 42  mov   ($42),($44)
087c: fa 48 47  mov   ($47),($48)
087f: cd 00     mov   x,#$00
0881: e8 01     mov   a,#$01
0883: c4 34     mov   $34,a
0885: 3f 7e 0c  call  $0c7e
0888: 3d        inc   x
0889: 0b 34     asl   $34
088b: d0 f8     bne   $0885
088d: fa 37 35  mov   ($35),($37)
0890: fa 41 43  mov   ($43),($41)
0893: fa 42 44  mov   ($44),($42)
0896: fa 47 48  mov   ($48),($47)
0899: fa 36 37  mov   ($37),($36)
089c: fa 45 41  mov   ($41),($45)
089f: fa 46 42  mov   ($42),($46)
08a2: fa 49 47  mov   ($47),($49)
08a5: cd 08     mov   x,#$08
08a7: e8 01     mov   a,#$01
08a9: c4 34     mov   $34,a
08ab: 3f 7e 0c  call  $0c7e
08ae: 3d        inc   x
08af: 0b 34     asl   $34
08b1: d0 f8     bne   $08ab
08b3: fa 37 36  mov   ($36),($37)
08b6: fa 41 45  mov   ($45),($41)
08b9: fa 42 46  mov   ($46),($42)
08bc: fa 47 49  mov   ($49),($47)
08bf: 3f 57 09  call  $0957
08c2: 69 2b 1f  cmp   ($1f),($2b)
08c5: f0 09     beq   $08d0
08c7: e4 1f     mov   a,$1f
08c9: c4 2b     mov   $2b,a
08cb: 8d 7d     mov   y,#$7d
08cd: 3f 6d 13  call  $136d             ; EDL
08d0: 69 26 1a  cmp   ($1a),($26)
08d3: f0 09     beq   $08de
08d5: e4 1a     mov   a,$1a
08d7: c4 26     mov   $26,a
08d9: 8d 6c     mov   y,#$6c
08db: 3f 6d 13  call  $136d             ; FLG
08de: 69 25 19  cmp   ($19),($25)
08e1: f0 0c     beq   $08ef
08e3: e4 19     mov   a,$19
08e5: c4 25     mov   $25,a
08e7: 8d 5c     mov   y,#$5c            ; KOF
08e9: cc f2 00  mov   $00f2,y
08ec: c5 f3 00  mov   $00f3,a
08ef: e4 18     mov   a,$18
08f1: f0 0b     beq   $08fe
08f3: 8d 4c     mov   y,#$4c            ; KON
08f5: cc f2 00  mov   $00f2,y
08f8: c5 f3 00  mov   $00f3,a
08fb: 8f 00 18  mov   $18,#$00
08fe: e4 16     mov   a,$16
0900: c4 22     mov   $22,a
0902: 8d 2c     mov   y,#$2c            ; EVOL(L)
0904: cc f2 00  mov   $00f2,y
0907: c5 f3 00  mov   $00f3,a
090a: e4 17     mov   a,$17
090c: c4 23     mov   $23,a
090e: 8d 3c     mov   y,#$3c            ; EVOL(R)
0910: cc f2 00  mov   $00f2,y
0913: c5 f3 00  mov   $00f3,a
0916: e4 1b     mov   a,$1b
0918: c4 27     mov   $27,a
091a: 8d 0d     mov   y,#$0d            ; EFB
091c: cc f2 00  mov   $00f2,y
091f: c5 f3 00  mov   $00f3,a
0922: e4 1e     mov   a,$1e
0924: c4 2a     mov   $2a,a
0926: 8d 4d     mov   y,#$4d            ; EON
0928: cc f2 00  mov   $00f2,y
092b: c5 f3 00  mov   $00f3,a
092e: e4 1d     mov   a,$1d
0930: c4 29     mov   $29,a
0932: 8d 3d     mov   y,#$3d            ; NON
0934: cc f2 00  mov   $00f2,y
0937: c5 f3 00  mov   $00f3,a
093a: 69 20 14  cmp   ($14),($20)
093d: f0 09     beq   $0948
093f: e4 14     mov   a,$14
0941: c4 20     mov   $20,a
0943: 8d 0c     mov   y,#$0c
0945: 3f 6d 13  call  $136d             ; MVOL(L)
0948: 69 21 15  cmp   ($15),($21)
094b: f0 09     beq   $0956
094d: e4 15     mov   a,$15
094f: c4 21     mov   $21,a
0951: 8d 1c     mov   y,#$1c
0953: 3f 6d 13  call  $136d             ; MVOL(R)
0956: 6f        ret

0957: 69 3e 3d  cmp   ($3d),($3e)
095a: f0 1c     beq   $0978
095c: e4 3d     mov   a,$3d
095e: c4 3e     mov   $3e,a
0960: 1c        asl   a
0961: 1c        asl   a
0962: 1c        asl   a
0963: 5d        mov   x,a
0964: 8d 0f     mov   y,#$0f
0966: f5 8e 09  mov   a,$098e+x
0969: 3f 6d 13  call  $136d             ; set FIR C0-C7
096c: 3d        inc   x
096d: dd        mov   a,y
096e: 60        clrc
096f: 88 10     adc   a,#$10
0971: 68 8f     cmp   a,#$8f
0973: f0 03     beq   $0978
0975: fd        mov   y,a
0976: 2f ee     bra   $0966
0978: e4 39     mov   a,$39
097a: f0 03     beq   $097f
097c: 8b 39     dec   $39
097e: 6f        ret

097f: e4 3f     mov   a,$3f
0981: fa 3f 1e  mov   ($1e),($3f)
0984: fa 3a 16  mov   ($16),($3a)
0987: fa 3b 17  mov   ($17),($3b)
098a: fa 3c 1b  mov   ($1b),($3c)
098d: 6f        ret

098e: db $7f,$00,$00,$00,$00,$00,$00,$00
0996: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
099e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
09a6: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
09ae: db $25,$36,$28,$0f,$f7,$ed,$fe,$10

09b6: e5 f7 00  mov   a,$00f7
09b9: 65 f7 00  cmp   a,$00f7
09bc: d0 5f     bne   $0a1d
09be: 64 03     cmp   a,$03
09c0: f0 09     beq   $09cb
09c2: c4 03     mov   $03,a
09c4: c5 f7 00  mov   $00f7,a
09c7: 08 00     or    a,#$00
09c9: d0 53     bne   $0a1e
09cb: e5 f6 00  mov   a,$00f6
09ce: 65 f6 00  cmp   a,$00f6
09d1: d0 f8     bne   $09cb
09d3: 64 02     cmp   a,$02
09d5: f0 0f     beq   $09e6
09d7: c4 02     mov   $02,a
09d9: c5 f6 00  mov   $00f6,a
09dc: 08 00     or    a,#$00
09de: f0 06     beq   $09e6
09e0: 3f 87 0a  call  $0a87
09e3: 3f eb 0a  call  $0aeb
09e6: e5 f5 00  mov   a,$00f5
09e9: 65 f5 00  cmp   a,$00f5
09ec: d0 f8     bne   $09e6
09ee: 64 01     cmp   a,$01
09f0: f0 10     beq   $0a02
09f2: c4 01     mov   $01,a
09f4: c5 f5 00  mov   $00f5,a
09f7: 08 00     or    a,#$00
09f9: f0 07     beq   $0a02
09fb: 3f 87 0a  call  $0a87
09fe: bc        inc   a
09ff: 3f eb 0a  call  $0aeb
0a02: e5 f4 00  mov   a,$00f4
0a05: 65 f4 00  cmp   a,$00f4
0a08: d0 f8     bne   $0a02
0a0a: 64 00     cmp   a,$00
0a0c: f0 0f     beq   $0a1d
0a0e: c4 00     mov   $00,a
0a10: c5 f4 00  mov   $00f4,a
0a13: 08 00     or    a,#$00
0a15: f0 06     beq   $0a1d
0a17: 3f 87 0a  call  $0a87
0a1a: 3f eb 0a  call  $0aeb
0a1d: 6f        ret

0a1e: 68 f0     cmp   a,#$f0
0a20: 90 1d     bcc   $0a3f
0a22: 78 01 e0  cmp   $e0,#$01
0a25: f0 08     beq   $0a2f
0a27: 28 0f     and   a,#$0f
0a29: 5d        mov   x,a
0a2a: f5 30 0a  mov   a,$0a30+x
0a2d: c4 4c     mov   $4c,a
0a2f: 6f        ret

0a30: db $01,$02,$06,$08,$0a,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

0a3f: 68 e0     cmp   a,#$e0
0a41: d0 04     bne   $0a47
0a43: 8f 01 e0  mov   $e0,#$01
0a46: 6f        ret

0a47: 68 e1     cmp   a,#$e1
0a49: d0 04     bne   $0a4f
0a4b: 8f 00 e0  mov   $e0,#$00
0a4e: 6f        ret

0a4f: 68 01     cmp   a,#$01
0a51: f0 05     beq   $0a58
0a53: 38 ff e0  and   $e0,#$ff
0a56: d0 2e     bne   $0a86
0a58: 28 ff     and   a,#$ff
0a5a: 10 0a     bpl   $0a66
0a5c: 8f 00 f4  mov   $f4,#$00
0a5f: e8 ff     mov   a,#$ff
0a61: c4 f1     mov   $f1,a
0a63: 5f c0 ff  jmp   $ffc0

0a66: 9c        dec   a
0a67: 1c        asl   a
0a68: 5d        mov   x,a
0a69: f5 8f 13  mov   a,$138f+x
0a6c: c4 04     mov   $04,a
0a6e: 3d        inc   x
0a6f: f5 8f 13  mov   a,$138f+x         ; read song table
0a72: c4 05     mov   $05,a             ; $04/5: song header address
0a74: 3f c7 0b  call  $0bc7
0a77: cd ff     mov   x,#$ff
0a79: e8 01     mov   a,#$01
0a7b: c4 34     mov   $34,a
0a7d: 8f 00 37  mov   $37,#$00
0a80: 3f 20 0b  call  $0b20             ; load song header
0a83: fa 37 35  mov   ($35),($37)
0a86: 6f        ret

0a87: 78 01 4e  cmp   $4e,#$01
0a8a: d0 0f     bne   $0a9b
0a8c: 68 27     cmp   a,#$27
0a8e: d0 0b     bne   $0a9b
0a90: 8f 00 4e  mov   $4e,#$00
0a93: 2d        push  a
0a94: e8 50     mov   a,#$50
0a96: c4 14     mov   $14,a
0a98: c4 15     mov   $15,a
0a9a: ae        pop   a
0a9b: c5 f4 03  mov   $03f4,a
0a9e: 68 80     cmp   a,#$80
0aa0: 90 03     bcc   $0aa5
0aa2: 80        setc
0aa3: a8 80     sbc   a,#$80
0aa5: 9c        dec   a
0aa6: 68 40     cmp   a,#$40
0aa8: b0 1f     bcs   $0ac9
0aaa: 1c        asl   a
0aab: 1c        asl   a
0aac: 5d        mov   x,a
0aad: f5 c7 13  mov   a,$13c7+x
0ab0: c4 04     mov   $04,a
0ab2: 3d        inc   x
0ab3: f5 c7 13  mov   a,$13c7+x
0ab6: c4 05     mov   $05,a
0ab8: 3d        inc   x
0ab9: f5 c7 13  mov   a,$13c7+x
0abc: f0 06     beq   $0ac4
0abe: 64 4a     cmp   a,$4a
0ac0: 90 26     bcc   $0ae8
0ac2: c4 4a     mov   $4a,a
0ac4: 3d        inc   x
0ac5: f5 c7 13  mov   a,$13c7+x
0ac8: 6f        ret

0ac9: 1c        asl   a
0aca: 1c        asl   a
0acb: 5d        mov   x,a
0acc: f5 c7 14  mov   a,$14c7+x
0acf: c4 04     mov   $04,a
0ad1: 3d        inc   x
0ad2: f5 c7 14  mov   a,$14c7+x
0ad5: c4 05     mov   $05,a
0ad7: 3d        inc   x
0ad8: f5 c7 14  mov   a,$14c7+x
0adb: f0 06     beq   $0ae3
0add: 64 4a     cmp   a,$4a
0adf: 90 07     bcc   $0ae8
0ae1: c4 4a     mov   $4a,a
0ae3: 3d        inc   x
0ae4: f5 c7 14  mov   a,$14c7+x
0ae7: 6f        ret

0ae8: e8 80     mov   a,#$80
0aea: 6f        ret

0aeb: 08 00     or    a,#$00
0aed: 30 28     bmi   $0b17
0aef: 5d        mov   x,a
0af0: f5 18 0b  mov   a,$0b18+x
0af3: c4 34     mov   $34,a
0af5: 7d        mov   a,x
0af6: 60        clrc
0af7: 88 07     adc   a,#$07
0af9: 5d        mov   x,a
0afa: fa 36 37  mov   ($37),($36)
0afd: 3f 20 0b  call  $0b20
0b00: fa 37 36  mov   ($36),($37)
0b03: e8 02     mov   a,#$02
0b05: d4 c0     mov   $c0+x,a
0b07: e8 00     mov   a,#$00
0b09: d4 d0     mov   $d0+x,a
0b0b: d5 b0 02  mov   $02b0+x,a
0b0e: d5 c0 02  mov   $02c0+x,a
0b11: e5 f4 03  mov   a,$03f4
0b14: d5 40 04  mov   $0440+x,a
0b17: 6f        ret

0b18: db $01,$02,$04,$08,$10,$20,$40,$80

; load song header
0b20: 8d 00     mov   y,#$00
0b22: f7 04     mov   a,($04)+y
0b24: c4 06     mov   $06,a             ; number of tracks
; setup for each tracks
0b26: 3d        inc   x
0b27: 09 34 37  or    ($37),($34)
0b2a: c8 08     cmp   x,#$08
0b2c: 90 12     bcc   $0b40
0b2e: fa 34 11  mov   ($11),($34)
0b31: 58 ff 11  eor   $11,#$ff
0b34: 29 11 3f  and   ($3f),($11)
0b37: e4 0c     mov   a,$0c
0b39: 28 80     and   a,#$80
0b3b: f0 03     beq   $0b40
0b3d: 09 34 3f  or    ($3f),($34)
0b40: fc        inc   y
0b41: f7 04     mov   a,($04)+y
0b43: d5 00 02  mov   $0200+x,a         ; voice address (lo)
0b46: fc        inc   y
0b47: f7 04     mov   a,($04)+y
0b49: d5 10 02  mov   $0210+x,a         ; voice address (hi)
0b4c: fc        inc   y
0b4d: f7 04     mov   a,($04)+y
0b4f: d5 40 02  mov   $0240+x,a         ; transpose (coarse tuning)
0b52: fc        inc   y
0b53: f7 04     mov   a,($04)+y
0b55: d5 50 02  mov   $0250+x,a
0b58: fc        inc   y
0b59: f7 04     mov   a,($04)+y
0b5b: d5 60 02  mov   $0260+x,a
0b5e: fc        inc   y
0b5f: f7 04     mov   a,($04)+y
0b61: d5 70 02  mov   $0270+x,a
0b64: e4 1d     mov   a,$1d
0b66: 64 34     cmp   a,$34
0b68: d0 04     bne   $0b6e
0b6a: e8 00     mov   a,#$00
0b6c: c4 1d     mov   $1d,a
0b6e: 3f 42 0c  call  $0c42
0b71: e8 01     mov   a,#$01
0b73: d4 c0     mov   $c0+x,a
0b75: e8 00     mov   a,#$00
0b77: d4 d0     mov   $d0+x,a
0b79: d5 00 04  mov   $0400+x,a
0b7c: d5 20 04  mov   $0420+x,a
0b7f: d5 30 04  mov   $0430+x,a
0b82: d5 b0 02  mov   $02b0+x,a
0b85: d5 c0 02  mov   $02c0+x,a
0b88: d5 f0 02  mov   $02f0+x,a
0b8b: d5 e0 02  mov   $02e0+x,a
0b8e: d4 90     mov   $90+x,a
0b90: d4 80     mov   $80+x,a
0b92: d5 00 03  mov   $0300+x,a
0b95: e4 34     mov   a,$34
0b97: 48 ff     eor   a,#$ff
0b99: 24 e3     and   a,$e3
0b9b: c4 e3     mov   $e3,a
0b9d: e4 34     mov   a,$34
0b9f: 48 ff     eor   a,#$ff
0ba1: 24 e3     and   a,$e3
0ba3: c4 e3     mov   $e3,a
0ba5: e4 34     mov   a,$34
0ba7: 48 ff     eor   a,#$ff
0ba9: 24 41     and   a,$41
0bab: c4 41     mov   $41,a
0bad: e4 34     mov   a,$34
0baf: 48 ff     eor   a,#$ff
0bb1: 24 42     and   a,$42
0bb3: c4 42     mov   $42,a
0bb5: e4 34     mov   a,$34
0bb7: 48 ff     eor   a,#$ff
0bb9: 24 47     and   a,$47
0bbb: c4 47     mov   $47,a
0bbd: 0b 34     asl   $34
0bbf: 8b 06     dec   $06
0bc1: f0 03     beq   $0bc6
0bc3: 5f 26 0b  jmp   $0b26

0bc6: 6f        ret

; reset
0bc7: cd 06     mov   x,#$06
0bc9: e8 00     mov   a,#$00
0bcb: af        mov   (x)+,a
0bcc: c8 e8     cmp   x,#$e8
0bce: d0 fb     bne   $0bcb
0bd0: cd 00     mov   x,#$00
0bd2: d5 00 02  mov   $0200+x,a
0bd5: 3d        inc   x
0bd6: c8 00     cmp   x,#$00
0bd8: d0 f8     bne   $0bd2
0bda: d5 00 03  mov   $0300+x,a
0bdd: 3d        inc   x
0bde: c8 00     cmp   x,#$00
0be0: d0 f8     bne   $0bda
0be2: d5 00 04  mov   $0400+x,a
0be5: 3d        inc   x
0be6: c8 50     cmp   x,#$50
0be8: d0 f8     bne   $0be2
0bea: cd 18     mov   x,#$18
0bec: f5 29 0c  mov   a,$0c29+x
0bef: fd        mov   y,a
0bf0: e8 00     mov   a,#$00
0bf2: cc f2 00  mov   $00f2,y
0bf5: c5 f3 00  mov   $00f3,a
0bf8: 1d        dec   x
0bf9: d0 f1     bne   $0bec
0bfb: 8f 50 14  mov   $14,#$50
0bfe: 8f 50 15  mov   $15,#$50
0c01: e8 00     mov   a,#$00
0c03: c5 f2 03  mov   $03f2,a
0c06: e8 f0     mov   a,#$f0
0c08: c5 f3 03  mov   $03f3,a
0c0b: 8f 0f 3e  mov   $3e,#$0f
0c0e: e4 1a     mov   a,$1a
0c10: 28 1f     and   a,#$1f
0c12: 08 20     or    a,#$20
0c14: c4 1a     mov   $1a,a
0c16: e4 1a     mov   a,$1a
0c18: 28 1f     and   a,#$1f
0c1a: 08 60     or    a,#$60
0c1c: c4 26     mov   $26,a
0c1e: e8 60     mov   a,#$60            ; mute, disable echo
0c20: 8d 6c     mov   y,#$6c            ; FLG
0c22: cc f2 00  mov   $00f2,y
0c25: c5 f3 00  mov   $00f3,a
0c28: 6f        ret

0c29: db $5c,$4c,$2c,$3c,$0d,$2d,$3d,$4d,$7d,$00,$01,$10,$11,$20,$21,$30,$31,$40,$41,$50,$51,$60,$61,$70,$71

0c42: 6d        push  y
0c43: f5 50 02  mov   a,$0250+x
0c46: 68 30     cmp   a,#$30
0c48: 90 14     bcc   $0c5e
; invalid instrument (patch number >= 0x30)
0c4a: d5 80 02  mov   $0280+x,a
0c4d: e8 ff     mov   a,#$ff
0c4f: d5 90 02  mov   $0290+x,a
0c52: e8 e0     mov   a,#$e0
0c54: d5 a0 02  mov   $02a0+x,a
0c57: e8 30     mov   a,#$30
0c59: d5 d0 02  mov   $02d0+x,a
0c5c: ee        pop   y
0c5d: 6f        ret

; set instrument
0c5e: 1c        asl   a
0c5f: 1c        asl   a
0c60: fd        mov   y,a
0c61: f6 00 2f  mov   a,$2f00+y
0c64: d5 80 02  mov   $0280+x,a         ; SRCN
0c67: fc        inc   y
0c68: f6 00 2f  mov   a,$2f00+y
0c6b: d5 90 02  mov   $0290+x,a         ; ADSR(1)
0c6e: fc        inc   y
0c6f: f6 00 2f  mov   a,$2f00+y
0c72: d5 a0 02  mov   $02a0+x,a         ; ADSR(2)
0c75: fc        inc   y
0c76: f6 00 2f  mov   a,$2f00+y
0c79: d5 d0 02  mov   $02d0+x,a
0c7c: ee        pop   y
0c7d: 6f        ret

0c7e: e4 37     mov   a,$37
0c80: 24 34     and   a,$34
0c82: d0 01     bne   $0c85
0c84: 6f        ret

0c85: 9b c0     dec   $c0+x             ; decrease delta-time
0c87: d0 0b     bne   $0c94
0c89: f4 d0     mov   a,$d0+x
0c8b: f0 04     beq   $0c91
0c8d: 9b d0     dec   $d0+x
0c8f: 2f 03     bra   $0c94
0c91: 3f a1 0c  call  $0ca1             ; dispatch new voice byte
0c94: 3f a8 11  call  $11a8
0c97: 3f 33 12  call  $1233
0c9a: 3f 95 12  call  $1295
0c9d: 3f cb 12  call  $12cb
0ca0: 6f        ret

; dispatch voice byte
0ca1: f5 00 02  mov   a,$0200+x
0ca4: c4 08     mov   $08,a
0ca6: f5 10 02  mov   a,$0210+x
0ca9: c4 09     mov   $09,a
0cab: 8d 00     mov   y,#$00
0cad: f7 08     mov   a,($08)+y         ; read vcmd
0caf: 68 df     cmp   a,#$df
0cb1: f0 65     beq   $0d18
0cb3: 68 e0     cmp   a,#$e0
0cb5: 90 03     bcc   $0cba
0cb7: 5f 4f 0e  jmp   $0e4f

0cba: 68 d0     cmp   a,#$d0
0cbc: 90 20     bcc   $0cde
; vcmd d0-de - percussion note
0cbe: 6d        push  y
0cbf: 80        setc
0cc0: a8 d0     sbc   a,#$d0
0cc2: 1c        asl   a
0cc3: 1c        asl   a
0cc4: fd        mov   y,a
0cc5: f6 17 0e  mov   a,$0e17+y         ; instrument #
0cc8: d5 50 02  mov   $0250+x,a
0ccb: 3f 42 0c  call  $0c42             ; set instrument
0cce: f6 19 0e  mov   a,$0e19+y
0cd1: d5 20 04  mov   $0420+x,a         ; VOL(L) delta
0cd4: f6 1a 0e  mov   a,$0e1a+y
0cd7: d5 30 04  mov   $0430+x,a         ; VOL(R) delta
0cda: f6 18 0e  mov   a,$0e18+y         ; note number
0cdd: ee        pop   y
; vcmd 00-cf - note
0cde: 80        setc
0cdf: a8 74     sbc   a,#$74            ; calculate note number
0ce1: 60        clrc
0ce2: 95 40 02  adc   a,$0240+x         ; add transpose
0ce5: c4 38     mov   $38,a             ; save note number
0ce7: c8 08     cmp   x,#$08
0ce9: b0 08     bcs   $0cf3
0ceb: e4 36     mov   a,$36
0ced: 24 34     and   a,$34
0cef: f0 02     beq   $0cf3
0cf1: 2f 11     bra   $0d04
0cf3: e4 e3     mov   a,$e3
0cf5: 24 34     and   a,$34
0cf7: d0 0b     bne   $0d04
0cf9: 09 34 18  or    ($18),($34)
0cfc: e4 34     mov   a,$34
0cfe: 48 ff     eor   a,#$ff
0d00: 24 19     and   a,$19
0d02: c4 19     mov   $19,a
0d04: f5 50 03  mov   a,$0350+x
0d07: d5 10 03  mov   $0310+x,a
0d0a: f5 30 03  mov   a,$0330+x
0d0d: 08 80     or    a,#$80
0d0f: d5 30 03  mov   $0330+x,a
0d12: f5 20 03  mov   a,$0320+x
0d15: d5 40 03  mov   $0340+x,a
; vcmd df
0d18: fc        inc   y
0d19: f7 08     mov   a,($08)+y         ; arg1
0d1b: 68 fd     cmp   a,#$fd
0d1d: d0 0c     bne   $0d2b
; when arg1 == 0xfd
0d1f: fc        inc   y
0d20: f7 08     mov   a,($08)+y
0d22: d4 c0     mov   $c0+x,a           ; arg2: delta-time
0d24: fc        inc   y
0d25: f7 08     mov   a,($08)+y
0d27: d4 d0     mov   $d0+x,a           ; arg3
0d29: 2f 11     bra   $0d3c
; when arg1 != 0xfd
0d2b: 68 74     cmp   a,#$74
0d2d: 90 09     bcc   $0d38
0d2f: f0 07     beq   $0d38
; when arg1 >= 0x75 (no delta-time)
0d31: f4 50     mov   a,$50+x
0d33: d4 c0     mov   $c0+x,a           ; reuse delta-time
0d35: dc        dec   y                 ; restore voice ptr (no arguments)
0d36: 2f 04     bra   $0d3c
; 00-74 - delta-time
0d38: d4 c0     mov   $c0+x,a
0d3a: d4 50     mov   $50+x,a           ; save last delta-time
;
0d3c: fc        inc   y
0d3d: dd        mov   a,y
0d3e: 60        clrc
0d3f: 84 08     adc   a,$08
0d41: d5 00 02  mov   $0200+x,a
0d44: e4 09     mov   a,$09
0d46: 88 00     adc   a,#$00
0d48: d5 10 02  mov   $0210+x,a         ; update voice ptr master
0d4b: f7 08     mov   a,($08)+y         ; readahead
0d4d: 68 f5     cmp   a,#$f5
0d4f: d0 05     bne   $0d56
; next vcmd is f5
0d51: 09 34 e2  or    ($e2),($34)
0d54: 2f 09     bra   $0d5f
; else
0d56: fa 34 11  mov   ($11),($34)
0d59: 58 ff 11  eor   $11,#$ff
0d5c: 29 11 e2  and   ($e2),($11)
; calculate pitch
0d5f: 6d        push  y
0d60: 7d        mov   a,x
0d61: c5 12 04  mov   $0412,a
0d64: f5 d0 02  mov   a,$02d0+x
0d67: 4d        push  x
0d68: cd 0c     mov   x,#$0c
0d6a: 8d 00     mov   y,#$00
0d6c: 9e        div   ya,x
0d6d: c4 0d     mov   $0d,a
0d6f: dd        mov   a,y
0d70: 48 ff     eor   a,#$ff
0d72: bc        inc   a
0d73: 60        clrc
0d74: 84 38     adc   a,$38
0d76: c4 38     mov   $38,a
0d78: 8d 00     mov   y,#$00
0d7a: e4 38     mov   a,$38
0d7c: cd 0c     mov   x,#$0c
0d7e: 9e        div   ya,x
0d7f: c4 0a     mov   $0a,a
0d81: dd        mov   a,y
0d82: 1c        asl   a
0d83: fd        mov   y,a
0d84: f6 fd 0d  mov   a,$0dfd+y
0d87: c4 0b     mov   $0b,a
0d89: fc        inc   y
0d8a: f6 fd 0d  mov   a,$0dfd+y
0d8d: c4 0c     mov   $0c,a
0d8f: fc        inc   y
0d90: f6 fd 0d  mov   a,$0dfd+y
0d93: c5 10 04  mov   $0410,a
0d96: fc        inc   y
0d97: f6 fd 0d  mov   a,$0dfd+y
0d9a: c5 11 04  mov   $0411,a
0d9d: 6d        push  y
0d9e: 4d        push  x
0d9f: fd        mov   y,a
0da0: e5 10 04  mov   a,$0410
0da3: 9a 0b     subw  ya,$0b
0da5: fd        mov   y,a
0da6: e8 00     mov   a,#$00
0da8: cd ff     mov   x,#$ff
0daa: 9e        div   ya,x
0dab: 2d        push  a
0dac: e9 12 04  mov   x,$0412
0daf: f5 00 04  mov   a,$0400+x
0db2: fd        mov   y,a
0db3: ae        pop   a
0db4: cf        mul   ya
0db5: e8 00     mov   a,#$00
0db7: c5 11 04  mov   $0411,a
0dba: cc 10 04  mov   $0410,y
0dbd: ce        pop   x
0dbe: ee        pop   y
0dbf: 69 0d 0a  cmp   ($0a),($0d)
0dc2: f0 20     beq   $0de4
0dc4: 90 10     bcc   $0dd6
0dc6: 80        setc
0dc7: a9 0d 0a  sbc   ($0a),($0d)
0dca: f8 0a     mov   x,$0a
0dcc: 60        clrc
0dcd: 0b 0b     asl   $0b
0dcf: 2b 0c     rol   $0c
0dd1: 1d        dec   x
0dd2: d0 f8     bne   $0dcc
0dd4: 2f 0e     bra   $0de4
0dd6: 80        setc
0dd7: a9 0a 0d  sbc   ($0d),($0a)
0dda: f8 0d     mov   x,$0d
0ddc: 60        clrc
0ddd: 4b 0c     lsr   $0c
0ddf: 6b 0b     ror   $0b
0de1: 1d        dec   x
0de2: d0 f8     bne   $0ddc
0de4: ce        pop   x
0de5: ec 11 04  mov   y,$0411
0de8: e5 10 04  mov   a,$0410
0deb: 7a 0b     addw  ya,$0b
0ded: c4 0b     mov   $0b,a
0def: cb 0c     mov   $0c,y
0df1: e4 0b     mov   a,$0b
0df3: d5 b0 02  mov   $02b0+x,a         ; P(L)
0df6: e4 0c     mov   a,$0c
0df8: d5 c0 02  mov   $02c0+x,a         ; P(H)
0dfb: ee        pop   y
0dfc: 6f        ret

; pitch table
0dfd: dw $085f  ; c
0dff: dw $08de  ; c+
0e01: dw $0965  ; d
0e03: dw $09f4  ; d+
0e05: dw $0a8c  ; e
0e07: dw $0b2c  ; f
0e09: dw $0bd6  ; f+
0e0b: dw $0c8b  ; g
0e0d: dw $0d4a  ; g+
0e0f: dw $0e14  ; a
0e11: dw $0eea  ; a+
0e13: dw $0fcd  ; b
0e15: dw $10be  ; c

0e17: db $13,$81,$00,$00   ; d0
0e1b: db $11,$89,$e0,$e0   ; d1
0e1f: db $12,$8b,$e0,$c0   ; d2
0e23: db $15,$82,$15,$e0   ; d3
0e27: db $14,$84,$30,$e0   ; d4
0e2b: db $14,$7e,$20,$20   ; d5
0e2f: db $14,$79,$e0,$30   ; d6
0e33: db $15,$85,$e0,$28   ; d7
0e37: db $12,$92,$e0,$30   ; d8
0e3b: db $1d,$b2,$20,$e0   ; d9
0e3f: db $1d,$a2,$00,$00   ; da
0e43: db $1d,$92,$e0,$20   ; db
0e47: db $12,$b2,$20,$e0   ; dc
0e4b: db $12,$82,$e0,$20   ; dd

; dispatch vcmd
0e4f: 80        setc
0e50: a8 e0     sbc   a,#$e0
0e52: 1c        asl   a
0e53: 4d        push  x
0e54: 5d        mov   x,a
0e55: 1f 58 0e  jmp   ($0e58+x)

; vcmd dispatch table
0e58: dw $0f57  ; e0 - goto
0e5a: dw $0f67  ; e1 - call subroutine
0e5c: dw $0f8b  ; e2 - end subroutine
0e5e: dw $0fb5  ; e3 - echo on
0e60: dw $0ff2  ; e4 - unknown.0
0e62: dw $100c  ; e5 - unknown.0
0e64: dw $102c  ; e6 - unknown.0
0e66: dw $1036  ; e7 - volume
0e68: dw $105d  ; e8 - set instrument
0e6a: dw $106b  ; e9 - repeat start
0e6c: dw $109e  ; ea - transpose (relative)
0e6e: dw $10ad  ; eb - unknown.3
0e70: dw $111b  ; ec - unknown.3
0e72: dw $113b  ; ed - unknown.0
0e74: dw $115d  ; ee - unknown.0
0e76: dw $1151  ; ef - unknown.0
0e78: dw $11a8  ; f0 - unknown.0
0e7a: dw $0ee2  ; f1 - nop
0e7c: dw $0ee7  ; f2 - nop
0e7e: dw $0ed1  ; f3 - unknown.2
0e80: dw $1149  ; f4 - unknown.0
0e82: dw $0e9d  ; f5 - unknown.variable
0e84: dw $0f18  ; f6 - unknown.0
0e86: dw $0f2e  ; f7 - unknown.0
0e88: dw $0f46  ; f8 - set ADSR
0e8a: dw $0eec  ; f9 - set noise frequency and ADSR
0e8c: dw $0f09  ; fa - noise off
0e8e: dw $1047  ; fb - add instrument #
0e90: dw $0e92  ; fc - tuning

; vcmd fc - tuning
0e92: ce        pop   x
0e93: fc        inc   y
0e94: f7 08     mov   a,($08)+y
0e96: d5 00 04  mov   $0400+x,a
0e99: fc        inc   y
0e9a: 5f ad 0c  jmp   $0cad

; vcmd f5
0e9d: ce        pop   x
0e9e: fc        inc   y
0e9f: f7 08     mov   a,($08)+y         ; readahead next voice byte
0ea1: 68 74     cmp   a,#$74            ; arg1 (available if value <= 0x74)
0ea3: 90 05     bcc   $0eaa
0ea5: f0 03     beq   $0eaa
;
0ea7: f4 50     mov   a,$50+x
0ea9: dc        dec   y
;
0eaa: d4 c0     mov   $c0+x,a
0eac: d4 50     mov   $50+x,a
0eae: fc        inc   y
0eaf: dd        mov   a,y
0eb0: 60        clrc
0eb1: 84 08     adc   a,$08
0eb3: d5 00 02  mov   $0200+x,a
0eb6: e4 09     mov   a,$09
0eb8: 88 00     adc   a,#$00
0eba: d5 10 02  mov   $0210+x,a
0ebd: f7 08     mov   a,($08)+y         ; arg2
0ebf: 68 f5     cmp   a,#$f5
0ec1: d0 04     bne   $0ec7
;
0ec3: 09 34 e2  or    ($e2),($34)
0ec6: 6f        ret
;
0ec7: fa 34 11  mov   ($11),($34)
0eca: 58 ff 11  eor   $11,#$ff
0ecd: 29 11 e2  and   ($e2),($11)
0ed0: 6f        ret

; vcmd f3
0ed1: ce        pop   x
0ed2: fc        inc   y
0ed3: f7 08     mov   a,($08)+y
0ed5: c5 f2 03  mov   $03f2,a           ; arg1
0ed8: fc        inc   y
0ed9: f7 08     mov   a,($08)+y
0edb: c5 f3 03  mov   $03f3,a           ; arg2
0ede: fc        inc   y
0edf: 5f ad 0c  jmp   $0cad

; vcmd f1
0ee2: ce        pop   x
0ee3: fc        inc   y
0ee4: 5f ad 0c  jmp   $0cad

; vcmd f2
0ee7: ce        pop   x
0ee8: fc        inc   y
0ee9: 5f ad 0c  jmp   $0cad

; vcmd f9 - set noise frequency and ADSR
0eec: ce        pop   x
0eed: 09 34 1d  or    ($1d),($34)
0ef0: fc        inc   y
0ef1: e4 1a     mov   a,$1a
0ef3: 28 e0     and   a,#$e0
0ef5: 17 08     or    a,($08)+y
0ef7: c4 1a     mov   $1a,a             ; arg1: noise frequency
0ef9: fc        inc   y
0efa: f7 08     mov   a,($08)+y
0efc: d5 90 02  mov   $0290+x,a         ; arg2: ADSR(1)
0eff: fc        inc   y
0f00: f7 08     mov   a,($08)+y
0f02: d5 a0 02  mov   $02a0+x,a         ; arg3: ADSR(2)
0f05: fc        inc   y
0f06: 5f ad 0c  jmp   $0cad

; vcmd fa - noise off
0f09: ce        pop   x
0f0a: e4 1a     mov   a,$1a
0f0c: 28 e0     and   a,#$e0
0f0e: c4 1a     mov   $1a,a
0f10: e8 00     mov   a,#$00
0f12: c4 1d     mov   $1d,a
0f14: fc        inc   y
0f15: 5f ad 0c  jmp   $0cad

; vcmd f6
0f18: ce        pop   x
0f19: e4 34     mov   a,$34
0f1b: 04 e3     or    a,$e3
0f1d: c4 e3     mov   $e3,a
0f1f: 09 34 18  or    ($18),($34)
0f22: e4 34     mov   a,$34
0f24: 48 ff     eor   a,#$ff
0f26: 24 19     and   a,$19
0f28: c4 19     mov   $19,a
0f2a: fc        inc   y
0f2b: 5f ad 0c  jmp   $0cad

; vcmd f7
0f2e: ce        pop   x
0f2f: e4 34     mov   a,$34
0f31: 48 ff     eor   a,#$ff
0f33: 24 e3     and   a,$e3
0f35: c4 e3     mov   $e3,a
0f37: 09 34 19  or    ($19),($34)
0f3a: e4 34     mov   a,$34
0f3c: 48 ff     eor   a,#$ff
0f3e: 24 18     and   a,$18
0f40: c4 18     mov   $18,a
0f42: fc        inc   y
0f43: 5f ad 0c  jmp   $0cad

; vcmd f8 - set ADSR
0f46: ce        pop   x
0f47: fc        inc   y
0f48: f7 08     mov   a,($08)+y
0f4a: d5 90 02  mov   $0290+x,a         ; arg1: ADSR(1)
0f4d: fc        inc   y
0f4e: f7 08     mov   a,($08)+y
0f50: d5 a0 02  mov   $02a0+x,a         ; arg2: ADSR(2)
0f53: fc        inc   y
0f54: 5f ad 0c  jmp   $0cad

; vcmd e0 - goto
0f57: ce        pop   x
0f58: fc        inc   y
0f59: f7 08     mov   a,($08)+y
0f5b: d5 00 02  mov   $0200+x,a         ; arg1: voice address (lo)
0f5e: fc        inc   y
0f5f: f7 08     mov   a,($08)+y
0f61: d5 10 02  mov   $0210+x,a         ; arg2: voice address (hi)
0f64: 5f a1 0c  jmp   $0ca1

; vcmd e1 - call subroutine
0f67: ce        pop   x
0f68: fc        inc   y
0f69: f7 08     mov   a,($08)+y
0f6b: d5 00 02  mov   $0200+x,a         ; arg1: voice address (lo)
0f6e: fc        inc   y
0f6f: f7 08     mov   a,($08)+y
0f71: d5 10 02  mov   $0210+x,a         ; arg2: voice address (hi)
0f74: fc        inc   y
0f75: dd        mov   a,y
0f76: 60        clrc
0f77: 84 08     adc   a,$08
0f79: c4 08     mov   $08,a
0f7b: 98 00 09  adc   $09,#$00
0f7e: e4 08     mov   a,$08
0f80: d5 20 02  mov   $0220+x,a
0f83: e4 09     mov   a,$09
0f85: d5 30 02  mov   $0230+x,a         ; save return address
0f88: 5f a1 0c  jmp   $0ca1

; vcmd e2 - end subroutine
0f8b: ce        pop   x
0f8c: f5 20 02  mov   a,$0220+x
0f8f: 68 00     cmp   a,#$00
0f91: d0 0b     bne   $0f9e
0f93: f5 30 02  mov   a,$0230+x
0f96: 68 00     cmp   a,#$00
0f98: d0 04     bne   $0f9e
0f9a: fc        inc   y                 ; skip through if return address is 0
0f9b: 5f ad 0c  jmp   $0cad
; return from subroutine
0f9e: f5 20 02  mov   a,$0220+x
0fa1: d5 00 02  mov   $0200+x,a
0fa4: f5 30 02  mov   a,$0230+x
0fa7: d5 10 02  mov   $0210+x,a         ; pop return address
0faa: e8 00     mov   a,#$00
0fac: d5 20 02  mov   $0220+x,a
0faf: d5 30 02  mov   $0230+x,a         ; clear return address
0fb2: 5f a1 0c  jmp   $0ca1

; vcmd e3 - echo on
0fb5: ce        pop   x
0fb6: fc        inc   y
0fb7: f7 08     mov   a,($08)+y
0fb9: c4 3d     mov   $3d,a             ; arg1: FIR filter index
0fbb: f0 0b     beq   $0fc8
;
0fbd: 6d        push  y
0fbe: e8 d0     mov   a,#$d0
0fc0: 8d 6d     mov   y,#$6d
0fc2: 3f 6d 13  call  $136d             ; ESA
0fc5: ee        pop   y
0fc6: 2f 09     bra   $0fd1
;
0fc8: 6d        push  y
0fc9: e8 fe     mov   a,#$fe
0fcb: 8d 6d     mov   y,#$6d
0fcd: 3f 6d 13  call  $136d             ; ESA
0fd0: ee        pop   y
;
0fd1: fc        inc   y
0fd2: f7 08     mov   a,($08)+y
0fd4: c4 1f     mov   $1f,a             ; arg2: EDL
0fd6: fc        inc   y
0fd7: f7 08     mov   a,($08)+y
0fd9: c4 3a     mov   $3a,a             ; arg3: EVOL(L)
0fdb: fc        inc   y
0fdc: f7 08     mov   a,($08)+y
0fde: c4 3b     mov   $3b,a             ; arg4: EVOL(R)
0fe0: fc        inc   y
0fe1: f7 08     mov   a,($08)+y
0fe3: c4 3c     mov   $3c,a             ; arg5: EFB
0fe5: e4 1a     mov   a,$1a
0fe7: 28 df     and   a,#$df
0fe9: c4 1a     mov   $1a,a             ; enable echo
0feb: 8f 05 39  mov   $39,#$05
0fee: fc        inc   y
0fef: 5f ad 0c  jmp   $0cad

; vcmd e4
0ff2: ce        pop   x
0ff3: c8 08     cmp   x,#$08
0ff5: b0 0e     bcs   $1005
0ff7: e4 34     mov   a,$34
0ff9: 24 36     and   a,$36
0ffb: f0 05     beq   $1002
0ffd: 09 34 4b  or    ($4b),($34)
1000: 2f 06     bra   $1008
1002: 09 34 4b  or    ($4b),($34)
1005: 09 34 3f  or    ($3f),($34)
1008: fc        inc   y
1009: 5f ad 0c  jmp   $0cad

; vcmd e5
100c: ce        pop   x
100d: fa 34 11  mov   ($11),($34)
1010: 58 ff 11  eor   $11,#$ff
1013: c8 08     cmp   x,#$08
1015: b0 0e     bcs   $1025
1017: e4 34     mov   a,$34
1019: 24 36     and   a,$36
101b: f0 05     beq   $1022
101d: 29 11 4b  and   ($4b),($11)
1020: 2f 06     bra   $1028
1022: 29 11 4b  and   ($4b),($11)
1025: 29 11 3f  and   ($3f),($11)
1028: fc        inc   y
1029: 5f ad 0c  jmp   $0cad

; vcmd e6
102c: ce        pop   x
102d: e4 34     mov   a,$34
102f: 48 ff     eor   a,#$ff
1031: 24 37     and   a,$37
1033: c4 37     mov   $37,a
1035: 6f        ret

; vcmd e7 - volume
1036: ce        pop   x
1037: fc        inc   y
1038: f7 08     mov   a,($08)+y
103a: d5 60 02  mov   $0260+x,a         ; VOL(L)
103d: fc        inc   y
103e: f7 08     mov   a,($08)+y
1040: d5 70 02  mov   $0270+x,a         ; VOL(R)
1043: fc        inc   y
1044: 5f ad 0c  jmp   $0cad

; vcmd fb - add instrument #
1047: ce        pop   x
1048: f5 40 04  mov   a,$0440+x
104b: 10 0c     bpl   $1059
104d: e8 04     mov   a,#$04
104f: 60        clrc
1050: 95 50 02  adc   a,$0250+x
1053: d5 50 02  mov   $0250+x,a
1056: 3f 42 0c  call  $0c42             ; set instrument
1059: fc        inc   y
105a: 5f ad 0c  jmp   $0cad

; vcmd e8 - set instrument
105d: ce        pop   x
105e: fc        inc   y
105f: f7 08     mov   a,($08)+y
1061: d5 50 02  mov   $0250+x,a
1064: 3f 42 0c  call  $0c42             ; set instrument
1067: fc        inc   y
1068: 5f ad 0c  jmp   $0cad

; vcmd e9 - repeat start
106b: ce        pop   x
106c: 4d        push  x
106d: fc        inc   y
106e: f7 08     mov   a,($08)+y         ; arg1: repeat slot index
1070: 9f        xcn   a
1071: d8 10     mov   $10,x
1073: 60        clrc
1074: 84 10     adc   a,$10             ; add channel index
1076: 5d        mov   x,a
1077: f4 a0     mov   a,$a0+x
1079: f0 0c     beq   $1087
107b: fc        inc   y
107c: 9b a0     dec   $a0+x             ; decrease repeat count
107e: d0 0e     bne   $108e             ; repeat if non-zero
1080: fc        inc   y
1081: fc        inc   y
1082: fc        inc   y
1083: ce        pop   x
1084: 5f ad 0c  jmp   $0cad
; start new repeat
1087: fc        inc   y
1088: f7 08     mov   a,($08)+y
108a: d4 a0     mov   $a0+x,a           ; arg2: repeat count
108c: 9b a0     dec   $a0+x
; continue
108e: ce        pop   x
108f: fc        inc   y
1090: f7 08     mov   a,($08)+y
1092: d5 00 02  mov   $0200+x,a         ; arg3: voice address (lo)
1095: fc        inc   y
1096: f7 08     mov   a,($08)+y
1098: d5 10 02  mov   $0210+x,a         ; arg4: voice address (hi)
109b: 5f a1 0c  jmp   $0ca1

; vcmd ea - transpose (relative)
109e: ce        pop   x
109f: fc        inc   y
10a0: f7 08     mov   a,($08)+y
10a2: 60        clrc
10a3: 95 40 02  adc   a,$0240+x
10a6: d5 40 02  mov   $0240+x,a         ; arg1: semitones
10a9: fc        inc   y
10aa: 5f ad 0c  jmp   $0cad

; vcmd eb
10ad: ce        pop   x
10ae: fc        inc   y
10af: f7 08     mov   a,($08)+y
10b1: d4 60     mov   $60+x,a           ; arg1
10b3: fc        inc   y
10b4: f7 08     mov   a,($08)+y
10b6: d5 f0 02  mov   $02f0+x,a         ; arg2
10b9: fc        inc   y
10ba: f7 08     mov   a,($08)+y         ; arg3: note number
10bc: 80        setc
10bd: a8 74     sbc   a,#$74
10bf: 60        clrc
10c0: 95 40 02  adc   a,$0240+x
10c3: c4 38     mov   $38,a
10c5: c4 40     mov   $40,a
10c7: 3f 5f 0d  call  $0d5f
10ca: fa 0b 0e  mov   ($0e),($0b)
10cd: fa 0c 0f  mov   ($0f),($0c)
10d0: fc        inc   y
10d1: 3f ad 0c  call  $0cad
10d4: e4 38     mov   a,$38
10d6: d5 00 03  mov   $0300+x,a
10d9: f5 f0 02  mov   a,$02f0+x
10dc: c4 11     mov   $11,a
10de: e4 40     mov   a,$40
10e0: 75 00 03  cmp   a,$0300+x
10e3: 90 16     bcc   $10fb
10e5: e4 0e     mov   a,$0e
10e7: d5 b0 02  mov   $02b0+x,a
10ea: e4 0f     mov   a,$0f
10ec: d5 c0 02  mov   $02c0+x,a
10ef: e4 34     mov   a,$34
10f1: 04 42     or    a,$42
10f3: c4 42     mov   $42,a
10f5: ba 0e     movw  ya,$0e
10f7: 9a 0b     subw  ya,$0b
10f9: 2f 14     bra   $110f
10fb: e4 0e     mov   a,$0e
10fd: d5 b0 02  mov   $02b0+x,a
1100: e4 0f     mov   a,$0f
1102: d5 c0 02  mov   $02c0+x,a
1105: e4 34     mov   a,$34
1107: 04 41     or    a,$41
1109: c4 41     mov   $41,a
110b: ba 0b     movw  ya,$0b
110d: 9a 0e     subw  ya,$0e
110f: 4d        push  x
1110: f8 11     mov   x,$11
1112: 9e        div   ya,x
1113: ce        pop   x
1114: d4 80     mov   $80+x,a
1116: dd        mov   a,y
1117: d5 e0 02  mov   $02e0+x,a
111a: 6f        ret

; vcmd ec
111b: ce        pop   x
111c: fc        inc   y
111d: f7 08     mov   a,($08)+y         ; arg1
111f: d5 10 03  mov   $0310+x,a
1122: d5 50 03  mov   $0350+x,a
1125: fc        inc   y
1126: f7 08     mov   a,($08)+y
1128: d5 20 03  mov   $0320+x,a         ; arg2
112b: fc        inc   y
112c: f7 08     mov   a,($08)+y
112e: d5 30 03  mov   $0330+x,a         ; arg3
1131: fa 34 11  mov   ($11),($34)
1134: 09 11 47  or    ($47),($11)
1137: fc        inc   y
1138: 5f ad 0c  jmp   $0cad

; vcmd ed
113b: ce        pop   x
113c: fa 34 11  mov   ($11),($34)
113f: 58 ff 11  eor   $11,#$ff
1142: 29 11 47  and   ($47),($11)
1145: fc        inc   y
1146: 5f ad 0c  jmp   $0cad

; vcmd f4
1149: ce        pop   x
114a: 8f 01 4f  mov   $4f,#$01
114d: fc        inc   y
114e: 5f ad 0c  jmp   $0cad

; vcmd ef
1151: 8f 01 4e  mov   $4e,#$01
1154: 8f 00 4f  mov   $4f,#$00
1157: e8 00     mov   a,#$00
1159: c4 14     mov   $14,a
115b: c4 15     mov   $15,a
; vcmd ee
115d: ce        pop   x
115e: 09 34 19  or    ($19),($34)
1161: fa 34 11  mov   ($11),($34)
1164: 58 ff 11  eor   $11,#$ff
1167: 29 11 36  and   ($36),($11)
116a: 29 11 37  and   ($37),($11)
116d: fa 34 11  mov   ($11),($34)
1170: 58 ff 11  eor   $11,#$ff
1173: 29 11 47  and   ($47),($11)
1176: 8f 00 4a  mov   $4a,#$00
1179: 29 11 3f  and   ($3f),($11)
117c: e4 4b     mov   a,$4b
117e: 24 34     and   a,$34
1180: c4 39     mov   $39,a
1182: 09 39 3f  or    ($3f),($39)
1185: 8f 05 39  mov   $39,#$05
1188: 8f 00 4f  mov   $4f,#$00
118b: e4 1d     mov   a,$1d
118d: 64 34     cmp   a,$34
118f: d0 04     bne   $1195
1191: e8 00     mov   a,#$00
1193: c4 1d     mov   $1d,a
1195: 6f        ret

; dead code?
1196: 60        clrc
1197: 89 11 08  adc   ($08),($11)
119a: 98 00 09  adc   $09,#$00
119d: e4 08     mov   a,$08
119f: d5 00 02  mov   $0200+x,a
11a2: e4 09     mov   a,$09
11a4: d5 10 02  mov   $0210+x,a
11a7: 6f        ret

; vcmd f0
11a8: e4 41     mov   a,$41
11aa: 24 34     and   a,$34
11ac: d0 07     bne   $11b5
11ae: e4 42     mov   a,$42
11b0: 24 34     and   a,$34
11b2: d0 37     bne   $11eb
11b4: 6f        ret

11b5: f4 60     mov   a,$60+x
11b7: f0 03     beq   $11bc
11b9: 9b 60     dec   $60+x
11bb: 6f        ret

11bc: f5 f0 02  mov   a,$02f0+x
11bf: d0 0a     bne   $11cb
11c1: fa 41 11  mov   ($11),($41)
11c4: 3f 22 12  call  $1222
11c7: fa 11 41  mov   ($41),($11)
11ca: 6f        ret

11cb: f5 f0 02  mov   a,$02f0+x
11ce: 9c        dec   a
11cf: d5 f0 02  mov   $02f0+x,a
11d2: 60        clrc
11d3: f5 e0 02  mov   a,$02e0+x
11d6: 94 90     adc   a,$90+x
11d8: d4 90     mov   $90+x,a
11da: f4 80     mov   a,$80+x
11dc: 95 b0 02  adc   a,$02b0+x
11df: d5 b0 02  mov   $02b0+x,a
11e2: e8 00     mov   a,#$00
11e4: 95 c0 02  adc   a,$02c0+x
11e7: d5 c0 02  mov   $02c0+x,a
11ea: 6f        ret

11eb: f4 60     mov   a,$60+x
11ed: f0 03     beq   $11f2
11ef: 9b 60     dec   $60+x
11f1: 6f        ret

11f2: f5 f0 02  mov   a,$02f0+x
11f5: d0 0a     bne   $1201
11f7: fa 42 11  mov   ($11),($42)
11fa: 3f 22 12  call  $1222
11fd: fa 11 42  mov   ($42),($11)
1200: 6f        ret

1201: f5 f0 02  mov   a,$02f0+x
1204: 9c        dec   a
1205: d5 f0 02  mov   $02f0+x,a
1208: 60        clrc
1209: f5 e0 02  mov   a,$02e0+x
120c: 94 90     adc   a,$90+x
120e: ed        notc
120f: d4 90     mov   $90+x,a
1211: f5 b0 02  mov   a,$02b0+x
1214: b4 80     sbc   a,$80+x
1216: d5 b0 02  mov   $02b0+x,a
1219: f5 c0 02  mov   a,$02c0+x
121c: a8 00     sbc   a,#$00
121e: d5 c0 02  mov   $02c0+x,a
1221: 6f        ret

1222: e4 34     mov   a,$34
1224: 48 ff     eor   a,#$ff
1226: 24 11     and   a,$11
1228: c4 11     mov   $11,a
122a: f5 00 03  mov   a,$0300+x
122d: c4 38     mov   $38,a
122f: 3f 5f 0d  call  $0d5f
1232: 6f        ret

1233: fa 34 11  mov   ($11),($34)
1236: 29 47 11  and   ($11),($47)
1239: d0 01     bne   $123c
123b: 6f        ret

123c: f5 10 03  mov   a,$0310+x
123f: f0 05     beq   $1246
1241: 9c        dec   a
1242: d5 10 03  mov   $0310+x,a
1245: 6f        ret

1246: f5 40 03  mov   a,$0340+x
1249: d0 0b     bne   $1256
124b: f5 30 03  mov   a,$0330+x
124e: 48 80     eor   a,#$80
1250: d5 30 03  mov   $0330+x,a
1253: f5 20 03  mov   a,$0320+x
1256: 9c        dec   a
1257: d5 40 03  mov   $0340+x,a
125a: fa 34 11  mov   ($11),($34)
125d: 29 41 11  and   ($11),($41)
1260: d0 32     bne   $1294
1262: fa 34 11  mov   ($11),($34)
1265: 29 42 11  and   ($11),($42)
1268: d0 2a     bne   $1294
126a: f5 30 03  mov   a,$0330+x
126d: 10 13     bpl   $1282
126f: 28 7f     and   a,#$7f
1271: 60        clrc
1272: 95 b0 02  adc   a,$02b0+x
1275: d5 b0 02  mov   $02b0+x,a
1278: e8 00     mov   a,#$00
127a: 95 c0 02  adc   a,$02c0+x
127d: d5 c0 02  mov   $02c0+x,a
1280: 2f 12     bra   $1294
1282: f5 b0 02  mov   a,$02b0+x
1285: 80        setc
1286: b5 30 03  sbc   a,$0330+x
1289: d5 b0 02  mov   $02b0+x,a
128c: f5 c0 02  mov   a,$02c0+x
128f: a8 00     sbc   a,#$00
1291: d5 c0 02  mov   $02c0+x,a
1294: 6f        ret

1295: e4 4c     mov   a,$4c
1297: f0 2e     beq   $12c7
1299: e4 4d     mov   a,$4d
129b: d0 2a     bne   $12c7
129d: fa 4c 4d  mov   ($4d),($4c)
12a0: e4 14     mov   a,$14
12a2: f0 02     beq   $12a6
12a4: 8b 14     dec   $14
12a6: e4 15     mov   a,$15
12a8: f0 02     beq   $12ac
12aa: 8b 15     dec   $15
12ac: e4 3a     mov   a,$3a
12ae: f0 02     beq   $12b2
12b0: 8b 3a     dec   $3a
12b2: e4 3b     mov   a,$3b
12b4: f0 02     beq   $12b8
12b6: 8b 3b     dec   $3b
12b8: e4 14     mov   a,$14
12ba: 04 15     or    a,$15
12bc: d0 09     bne   $12c7
12be: e4 3a     mov   a,$3a
12c0: 04 3b     or    a,$3b
12c2: d0 03     bne   $12c7
12c4: 8f 00 4c  mov   $4c,#$00
12c7: 8b 4d     dec   $4d
12c9: 6f        ret

12ca: 6f        ret

12cb: f4 d0     mov   a,$d0+x
12cd: d0 30     bne   $12ff
12cf: f4 c0     mov   a,$c0+x
12d1: 68 01     cmp   a,#$01
12d3: d0 2a     bne   $12ff
12d5: e4 e2     mov   a,$e2
12d7: 24 34     and   a,$34
12d9: d0 24     bne   $12ff
12db: e4 e3     mov   a,$e3
12dd: 24 34     and   a,$34
12df: d0 1e     bne   $12ff
12e1: fa 34 11  mov   ($11),($34)
12e4: 58 ff 11  eor   $11,#$ff
12e7: 29 11 41  and   ($41),($11)
12ea: 29 11 42  and   ($42),($11)
12ed: c8 08     cmp   x,#$08
12ef: b0 08     bcs   $12f9
12f1: e4 36     mov   a,$36
12f3: 24 34     and   a,$34
12f5: f0 02     beq   $12f9
12f7: 2f 63     bra   $135c
12f9: 29 11 18  and   ($18),($11)
12fc: 09 34 19  or    ($19),($34)
12ff: c8 08     cmp   x,#$08
1301: b0 08     bcs   $130b
1303: e4 36     mov   a,$36
1305: 24 34     and   a,$34
1307: f0 02     beq   $130b
1309: 2f 51     bra   $135c
130b: f5 5d 13  mov   a,$135d+x
130e: fd        mov   y,a
130f: f5 60 02  mov   a,$0260+x
1312: 60        clrc
1313: 95 20 04  adc   a,$0420+x
1316: cc f2 00  mov   $00f2,y           ; VOL(L)
1319: c5 f3 00  mov   $00f3,a
131c: fc        inc   y
131d: f5 70 02  mov   a,$0270+x
1320: 60        clrc
1321: 95 30 04  adc   a,$0430+x
1324: cc f2 00  mov   $00f2,y           ; VOL(R)
1327: c5 f3 00  mov   $00f3,a
132a: fc        inc   y
132b: f5 b0 02  mov   a,$02b0+x
132e: cc f2 00  mov   $00f2,y           ; P(L)
1331: c5 f3 00  mov   $00f3,a
1334: fc        inc   y
1335: f5 c0 02  mov   a,$02c0+x
1338: cc f2 00  mov   $00f2,y           ; P(H)
133b: c5 f3 00  mov   $00f3,a
133e: fc        inc   y
133f: f5 80 02  mov   a,$0280+x
1342: cc f2 00  mov   $00f2,y           ; SRCN
1345: c5 f3 00  mov   $00f3,a
1348: fc        inc   y
1349: f5 90 02  mov   a,$0290+x
134c: cc f2 00  mov   $00f2,y           ; ADSR(1)
134f: c5 f3 00  mov   $00f3,a
1352: fc        inc   y
1353: f5 a0 02  mov   a,$02a0+x
1356: cc f2 00  mov   $00f2,y           ; ADSR(2)
1359: c5 f3 00  mov   $00f3,a
135c: 6f        ret

135d: db $00,$10,$20,$30,$40,$50,$60,$70
1365: db $00,$10,$20,$30,$40,$50,$60,$70

; set A to dsp register Y
136d: cc f2 00  mov   $00f2,y
1370: c5 f3 00  mov   $00f3,a
1373: 6f        ret

; get dsp register Y to A
1374: cc f2 00  mov   $00f2,y
1377: e5 f3 00  mov   a,$00f3
137a: 6f        ret
