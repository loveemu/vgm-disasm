0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 f0     mov   a,#$f0
0806: c5 f1 00  mov   $00f1,a
0809: e8 40     mov   a,#$40
080b: c5 fa 00  mov   $00fa,a           ; set timer 0 frequency to 8 ms
080e: e8 01     mov   a,#$01
0810: c5 f1 00  mov   $00f1,a
0813: e8 3c     mov   a,#$3c
0815: 8d 5d     mov   y,#$5d            ; DIR
0817: 3f d1 13  call  $13d1
081a: e8 fe     mov   a,#$fe
081c: 8d 6d     mov   y,#$6d            ; ESA
081e: 3f d1 13  call  $13d1
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
083e: 3f c3 0b  call  $0bc3
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
0885: 3f 70 0c  call  $0c70
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
08ab: 3f 70 0c  call  $0c70
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
08cd: 3f d1 13  call  $13d1             ; EDL
08d0: 69 26 1a  cmp   ($1a),($26)
08d3: f0 09     beq   $08de
08d5: e4 1a     mov   a,$1a
08d7: c4 26     mov   $26,a
08d9: 8d 6c     mov   y,#$6c
08db: 3f d1 13  call  $13d1             ; FLG
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
0945: 3f d1 13  call  $13d1             ; MVOL(L)
0948: 69 21 15  cmp   ($15),($21)
094b: f0 09     beq   $0956
094d: e4 15     mov   a,$15
094f: c4 21     mov   $21,a
0951: 8d 1c     mov   y,#$1c
0953: 3f d1 13  call  $13d1             ; MVOL(R)
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
0969: 3f d1 13  call  $13d1             ; set FIR C0-C7
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
09ec: d0 c8     bne   $09b6
09ee: 64 03     cmp   a,$03
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

0a30: db $02,$04,$06,$08,$0a,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

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
0a69: f5 f3 13  mov   a,$13f3+x
0a6c: c4 04     mov   $04,a
0a6e: 3d        inc   x
0a6f: f5 f3 13  mov   a,$13f3+x         ; read song table
0a72: c4 05     mov   $05,a             ; $04/5: song header address
0a74: 3f c1 0b  call  $0bc1
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
0aad: f5 21 14  mov   a,$1421+x
0ab0: c4 04     mov   $04,a
0ab2: 3d        inc   x
0ab3: f5 21 14  mov   a,$1421+x
0ab6: c4 05     mov   $05,a
0ab8: 3d        inc   x
0ab9: f5 21 14  mov   a,$1421+x
0abc: f0 06     beq   $0ac4
0abe: 64 4a     cmp   a,$4a
0ac0: 90 26     bcc   $0ae8
0ac2: c4 4a     mov   $4a,a
0ac4: 3d        inc   x
0ac5: f5 21 14  mov   a,$1421+x
0ac8: 6f        ret

0ac9: 1c        asl   a
0aca: 1c        asl   a
0acb: 5d        mov   x,a
0acc: f5 21 15  mov   a,$1521+x
0acf: c4 04     mov   $04,a
0ad1: 3d        inc   x
0ad2: f5 21 15  mov   a,$1521+x
0ad5: c4 05     mov   $05,a
0ad7: 3d        inc   x
0ad8: f5 21 15  mov   a,$1521+x
0adb: f0 06     beq   $0ae3
0add: 64 4a     cmp   a,$4a
0adf: 90 07     bcc   $0ae8
0ae1: c4 4a     mov   $4a,a
0ae3: 3d        inc   x
0ae4: f5 21 15  mov   a,$1521+x
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
0b14: d5 20 04  mov   $0420+x,a
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
0b4f: d5 40 02  mov   $0240+x,a
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
0b6e: 3f 34 0c  call  $0c34
0b71: e8 01     mov   a,#$01
0b73: d4 c0     mov   $c0+x,a
0b75: e8 00     mov   a,#$00
0b77: d4 d0     mov   $d0+x,a
0b79: d5 00 04  mov   $0400+x,a
0b7c: d5 b0 02  mov   $02b0+x,a
0b7f: d5 c0 02  mov   $02c0+x,a
0b82: d5 f0 02  mov   $02f0+x,a
0b85: d5 e0 02  mov   $02e0+x,a
0b88: d4 90     mov   $90+x,a
0b8a: d4 80     mov   $80+x,a
0b8c: d5 00 03  mov   $0300+x,a
0b8f: e4 34     mov   a,$34
0b91: 48 ff     eor   a,#$ff
0b93: 24 e3     and   a,$e3
0b95: c4 e3     mov   $e3,a
0b97: e4 34     mov   a,$34
0b99: 48 ff     eor   a,#$ff
0b9b: 24 e3     and   a,$e3
0b9d: c4 e3     mov   $e3,a
0b9f: e4 34     mov   a,$34
0ba1: 48 ff     eor   a,#$ff
0ba3: 24 41     and   a,$41
0ba5: c4 41     mov   $41,a
0ba7: e4 34     mov   a,$34
0ba9: 48 ff     eor   a,#$ff
0bab: 24 42     and   a,$42
0bad: c4 42     mov   $42,a
0baf: e4 34     mov   a,$34
0bb1: 48 ff     eor   a,#$ff
0bb3: 24 47     and   a,$47
0bb5: c4 47     mov   $47,a
0bb7: 0b 34     asl   $34
0bb9: 8b 06     dec   $06
0bbb: f0 03     beq   $0bc0
0bbd: 5f 26 0b  jmp   $0b26

0bc0: 6f        ret

; reset
0bc1: cd 06     mov   x,#$06
0bc3: e8 00     mov   a,#$00
0bc5: af        mov   (x)+,a
0bc6: c8 e8     cmp   x,#$e8
0bc8: d0 fb     bne   $0bc5
0bca: cd 00     mov   x,#$00
0bcc: d5 00 02  mov   $0200+x,a
0bcf: 3d        inc   x
0bd0: c8 00     cmp   x,#$00
0bd2: d0 f8     bne   $0bcc
0bd4: d5 00 03  mov   $0300+x,a
0bd7: 3d        inc   x
0bd8: c8 f0     cmp   x,#$f0
0bda: d0 f8     bne   $0bd4
0bdc: cd 18     mov   x,#$18
0bde: f5 1b 0c  mov   a,$0c1b+x
0be1: fd        mov   y,a
0be2: e8 00     mov   a,#$00
0be4: cc f2 00  mov   $00f2,y
0be7: c5 f3 00  mov   $00f3,a
0bea: 1d        dec   x
0beb: d0 f1     bne   $0bde
0bed: 8f 50 14  mov   $14,#$50
0bf0: 8f 50 15  mov   $15,#$50
0bf3: e8 00     mov   a,#$00
0bf5: c5 f2 03  mov   $03f2,a
0bf8: e8 f0     mov   a,#$f0
0bfa: c5 f3 03  mov   $03f3,a
0bfd: 8f 0f 3e  mov   $3e,#$0f
0c00: e4 1a     mov   a,$1a
0c02: 28 1f     and   a,#$1f
0c04: 08 20     or    a,#$20
0c06: c4 1a     mov   $1a,a
0c08: e4 1a     mov   a,$1a
0c0a: 28 1f     and   a,#$1f
0c0c: 08 60     or    a,#$60
0c0e: c4 26     mov   $26,a
0c10: e8 60     mov   a,#$60            ; mute, disable echo
0c12: 8d 6c     mov   y,#$6c            ; FLG
0c14: cc f2 00  mov   $00f2,y
0c17: c5 f3 00  mov   $00f3,a
0c1a: 6f        ret

0c1b: db $5c,$4c,$2c,$3c,$0d,$2d,$3d,$4d,$7d,$00,$01,$10,$11,$20,$21,$30,$31,$40,$41,$50,$51,$60,$61,$70,$71

0c34: 6d        push  y
0c35: f5 50 02  mov   a,$0250+x
0c38: 68 30     cmp   a,#$30
0c3a: 90 14     bcc   $0c50
; invalid instrument (patch number >= 0x30)
0c3c: d5 80 02  mov   $0280+x,a
0c3f: e8 ff     mov   a,#$ff
0c41: d5 90 02  mov   $0290+x,a
0c44: e8 e0     mov   a,#$e0
0c46: d5 a0 02  mov   $02a0+x,a
0c49: e8 30     mov   a,#$30
0c4b: d5 d0 02  mov   $02d0+x,a
0c4e: ee        pop   y
0c4f: 6f        ret

; set instrument
0c50: 1c        asl   a
0c51: 1c        asl   a
0c52: fd        mov   y,a
0c53: f6 00 3f  mov   a,$3f00+y
0c56: d5 80 02  mov   $0280+x,a         ; SRCN
0c59: fc        inc   y
0c5a: f6 00 3f  mov   a,$3f00+y
0c5d: d5 90 02  mov   $0290+x,a         ; ADSR(1)
0c60: fc        inc   y
0c61: f6 00 3f  mov   a,$3f00+y
0c64: d5 a0 02  mov   $02a0+x,a         ; ADSR(2)
0c67: fc        inc   y
0c68: f6 00 3f  mov   a,$3f00+y
0c6b: d5 d0 02  mov   $02d0+x,a
0c6e: ee        pop   y
0c6f: 6f        ret

0c70: e4 37     mov   a,$37
0c72: 24 34     and   a,$34
0c74: d0 01     bne   $0c77
0c76: 6f        ret

0c77: 9b c0     dec   $c0+x             ; decrease delta-time
0c79: d0 0b     bne   $0c86
0c7b: f4 d0     mov   a,$d0+x
0c7d: f0 04     beq   $0c83
0c7f: 9b d0     dec   $d0+x
0c81: 2f 03     bra   $0c86
0c83: 3f 96 0c  call  $0c96             ; dispatch new voice byte
0c86: 3f 89 11  call  $1189
0c89: 3f 14 12  call  $1214
0c8c: 3f 76 12  call  $1276
0c8f: 3f ab 12  call  $12ab
0c92: 3f 37 13  call  $1337
0c95: 6f        ret

; dispatch voice byte
0c96: f5 00 02  mov   a,$0200+x
0c99: c4 08     mov   $08,a
0c9b: f5 10 02  mov   a,$0210+x
0c9e: c4 09     mov   $09,a
0ca0: 8d 00     mov   y,#$00
0ca2: f7 08     mov   a,($08)+y         ; read vcmd
0ca4: 68 df     cmp   a,#$df
0ca6: f0 58     beq   $0d00
0ca8: 68 e0     cmp   a,#$e0
0caa: 90 03     bcc   $0caf
0cac: 5f 17 0e  jmp   $0e17

0caf: 68 d0     cmp   a,#$d0
0cb1: 90 13     bcc   $0cc6
; vcmd d0-de - percussion note
0cb3: 6d        push  y
0cb4: 80        setc
0cb5: a8 d0     sbc   a,#$d0
0cb7: 1c        asl   a
0cb8: fd        mov   y,a
0cb9: f6 ff 0d  mov   a,$0dff+y         ; instrument #
0cbc: d5 50 02  mov   $0250+x,a
0cbf: 3f 34 0c  call  $0c34             ; set instrument
0cc2: f6 00 0e  mov   a,$0e00+y         ; note number
0cc5: ee        pop   y
; vcmd 00-cf - note
0cc6: 80        setc
0cc7: a8 74     sbc   a,#$74            ; calculate note number
0cc9: 60        clrc
0cca: 95 40 02  adc   a,$0240+x         ; add instrument-specific transpose
0ccd: c4 38     mov   $38,a             ; save note number
0ccf: c8 08     cmp   x,#$08
0cd1: b0 08     bcs   $0cdb
0cd3: e4 36     mov   a,$36
0cd5: 24 34     and   a,$34
0cd7: f0 02     beq   $0cdb
0cd9: 2f 11     bra   $0cec
0cdb: e4 e3     mov   a,$e3
0cdd: 24 34     and   a,$34
0cdf: d0 0b     bne   $0cec
0ce1: 09 34 18  or    ($18),($34)
0ce4: e4 34     mov   a,$34
0ce6: 48 ff     eor   a,#$ff
0ce8: 24 19     and   a,$19
0cea: c4 19     mov   $19,a
0cec: f5 50 03  mov   a,$0350+x
0cef: d5 10 03  mov   $0310+x,a
0cf2: f5 30 03  mov   a,$0330+x
0cf5: 08 80     or    a,#$80
0cf7: d5 30 03  mov   $0330+x,a
0cfa: f5 20 03  mov   a,$0320+x
0cfd: d5 40 03  mov   $0340+x,a
; vcmd df
0d00: fc        inc   y
0d01: f7 08     mov   a,($08)+y
0d03: 68 74     cmp   a,#$74
0d05: 90 09     bcc   $0d10
0d07: f0 07     beq   $0d10
0d09: f4 50     mov   a,$50+x
0d0b: d4 c0     mov   $c0+x,a
0d0d: dc        dec   y
0d0e: 2f 14     bra   $0d24
0d10: 68 fd     cmp   a,#$fd
0d12: d0 0c     bne   $0d20
0d14: fc        inc   y
0d15: f7 08     mov   a,($08)+y
0d17: d4 c0     mov   $c0+x,a
0d19: fc        inc   y
0d1a: f7 08     mov   a,($08)+y
0d1c: d4 d0     mov   $d0+x,a
0d1e: 2f 04     bra   $0d24
0d20: d4 c0     mov   $c0+x,a
0d22: d4 50     mov   $50+x,a
0d24: fc        inc   y
0d25: dd        mov   a,y
0d26: 60        clrc
0d27: 84 08     adc   a,$08
0d29: d5 00 02  mov   $0200+x,a
0d2c: e4 09     mov   a,$09
0d2e: 88 00     adc   a,#$00
0d30: d5 10 02  mov   $0210+x,a
0d33: f7 08     mov   a,($08)+y
0d35: 68 f5     cmp   a,#$f5
0d37: d0 05     bne   $0d3e
0d39: 09 34 e2  or    ($e2),($34)
0d3c: 2f 09     bra   $0d47
0d3e: fa 34 11  mov   ($11),($34)
0d41: 58 ff 11  eor   $11,#$ff
0d44: 29 11 e2  and   ($e2),($11)
0d47: 6d        push  y
0d48: 7d        mov   a,x
0d49: c5 12 04  mov   $0412,a
0d4c: f5 d0 02  mov   a,$02d0+x
0d4f: 4d        push  x
0d50: cd 0c     mov   x,#$0c
0d52: 8d 00     mov   y,#$00
0d54: 9e        div   ya,x
0d55: c4 0d     mov   $0d,a
0d57: dd        mov   a,y
0d58: 48 ff     eor   a,#$ff
0d5a: bc        inc   a
0d5b: 60        clrc
0d5c: 84 38     adc   a,$38
0d5e: c4 38     mov   $38,a
0d60: 8d 00     mov   y,#$00
0d62: e4 38     mov   a,$38
0d64: cd 0c     mov   x,#$0c
0d66: 9e        div   ya,x
0d67: c4 0a     mov   $0a,a
0d69: dd        mov   a,y
0d6a: 1c        asl   a
0d6b: fd        mov   y,a
0d6c: f6 e5 0d  mov   a,$0de5+y
0d6f: c4 0b     mov   $0b,a
0d71: fc        inc   y
0d72: f6 e5 0d  mov   a,$0de5+y
0d75: c4 0c     mov   $0c,a
0d77: fc        inc   y
0d78: f6 e5 0d  mov   a,$0de5+y
0d7b: c5 10 04  mov   $0410,a
0d7e: fc        inc   y
0d7f: f6 e5 0d  mov   a,$0de5+y
0d82: c5 11 04  mov   $0411,a
0d85: 6d        push  y
0d86: 4d        push  x
0d87: fd        mov   y,a
0d88: e5 10 04  mov   a,$0410
0d8b: 9a 0b     subw  ya,$0b
0d8d: fd        mov   y,a
0d8e: e8 00     mov   a,#$00
0d90: cd ff     mov   x,#$ff
0d92: 9e        div   ya,x
0d93: 2d        push  a
0d94: e9 12 04  mov   x,$0412
0d97: f5 00 04  mov   a,$0400+x
0d9a: fd        mov   y,a
0d9b: ae        pop   a
0d9c: cf        mul   ya
0d9d: e8 00     mov   a,#$00
0d9f: c5 11 04  mov   $0411,a
0da2: cc 10 04  mov   $0410,y
0da5: ce        pop   x
0da6: ee        pop   y
0da7: 69 0d 0a  cmp   ($0a),($0d)
0daa: f0 20     beq   $0dcc
0dac: 90 10     bcc   $0dbe
0dae: 80        setc
0daf: a9 0d 0a  sbc   ($0a),($0d)
0db2: f8 0a     mov   x,$0a
0db4: 60        clrc
0db5: 0b 0b     asl   $0b
0db7: 2b 0c     rol   $0c
0db9: 1d        dec   x
0dba: d0 f8     bne   $0db4
0dbc: 2f 0e     bra   $0dcc
0dbe: 80        setc
0dbf: a9 0a 0d  sbc   ($0d),($0a)
0dc2: f8 0d     mov   x,$0d
0dc4: 60        clrc
0dc5: 4b 0c     lsr   $0c
0dc7: 6b 0b     ror   $0b
0dc9: 1d        dec   x
0dca: d0 f8     bne   $0dc4
0dcc: ce        pop   x
0dcd: ec 11 04  mov   y,$0411
0dd0: e5 10 04  mov   a,$0410
0dd3: 7a 0b     addw  ya,$0b
0dd5: c4 0b     mov   $0b,a
0dd7: cb 0c     mov   $0c,y
0dd9: e4 0b     mov   a,$0b
0ddb: d5 b0 02  mov   $02b0+x,a
0dde: e4 0c     mov   a,$0c
0de0: d5 c0 02  mov   $02c0+x,a
0de3: ee        pop   y
0de4: 6f        ret

; pitch table
0de5: dw $085f  ; c
0de7: dw $08de  ; c+
0de9: dw $0965  ; d
0deb: dw $09f4  ; d+
0ded: dw $0a8c  ; e
0def: dw $0b2c  ; f
0df1: dw $0bd6  ; f+
0df3: dw $0c8b  ; g
0df5: dw $0d4a  ; g+
0df7: dw $0e14  ; a
0df9: dw $0eea  ; a+
0dfb: dw $0fcd  ; b
0dfd: dw $10be  ; c

0dff: db $13,$81    ; d0
0e01: db $11,$88    ; d1
0e03: db $12,$88    ; d2
0e05: db $15,$88    ; d3
0e07: db $14,$82    ; d4
0e09: db $14,$7f    ; d5
0e0b: db $14,$7b    ; d6
0e0d: db $15,$7f    ; d7
0e0f: db $12,$7f    ; d8
0e11: db $1e,$98    ; d9
0e13: db $12,$98    ; da
0e15: db $21,$98    ; db

; dispatch vcmd
0e17: 80        setc
0e18: a8 e0     sbc   a,#$e0
0e1a: 1c        asl   a
0e1b: 4d        push  x
0e1c: 5d        mov   x,a
0e1d: 1f 20 0e  jmp   ($0e20+x)

; vcmd dispatch table
0e20: dw $0f16  ; e0 - goto
0e22: dw $0f26  ; e1 - call subroutine
0e24: dw $0f4a  ; e2
0e26: dw $0f5a  ; e3
0e28: dw $0f97  ; e4
0e2a: dw $0fb1  ; e5
0e2c: dw $0fd1  ; e6
0e2e: dw $0fdb  ; e7
0e30: dw $1002  ; e8 - set instrument
0e32: dw $1010  ; e9
0e34: dw $1043  ; ea
0e36: dw $1052  ; eb
0e38: dw $10c0  ; ec
0e3a: dw $10e0  ; ed
0e3c: dw $1102  ; ee
0e3e: dw $10f6  ; ef
0e40: dw $1144  ; f0
0e42: dw $0ea1  ; f1
0e44: dw $0ea6  ; f2
0e46: dw $0e90  ; f3
0e48: dw $10ee  ; f4
0e4a: dw $0e65  ; f5
0e4c: dw $0ed7  ; f6
0e4e: dw $0eed  ; f7
0e50: dw $0f05  ; f8 - set ADSR
0e52: dw $0eab  ; f9 - set noise frequency and ADSR
0e54: dw $0ec8  ; fa - noise off
0e56: dw $0fec  ; fb
0e58: dw $0e5a  ; fc

; vcmd fc
0e5a: ce        pop   x
0e5b: fc        inc   y
0e5c: f7 08     mov   a,($08)+y
0e5e: d5 00 04  mov   $0400+x,a
0e61: fc        inc   y
0e62: 5f a2 0c  jmp   $0ca2

; vcmd f5
0e65: ce        pop   x
0e66: fc        inc   y
0e67: f7 08     mov   a,($08)+y
0e69: d4 c0     mov   $c0+x,a
0e6b: d4 50     mov   $50+x,a
0e6d: fc        inc   y
0e6e: dd        mov   a,y
0e6f: 60        clrc
0e70: 84 08     adc   a,$08
0e72: d5 00 02  mov   $0200+x,a
0e75: e4 09     mov   a,$09
0e77: 88 00     adc   a,#$00
0e79: d5 10 02  mov   $0210+x,a
0e7c: f7 08     mov   a,($08)+y
0e7e: 68 f5     cmp   a,#$f5
0e80: d0 04     bne   $0e86
0e82: 09 34 e2  or    ($e2),($34)
0e85: 6f        ret

0e86: fa 34 11  mov   ($11),($34)
0e89: 58 ff 11  eor   $11,#$ff
0e8c: 29 11 e2  and   ($e2),($11)
0e8f: 6f        ret

; vcmd f3
0e90: ce        pop   x
0e91: fc        inc   y
0e92: f7 08     mov   a,($08)+y
0e94: c5 f2 03  mov   $03f2,a
0e97: fc        inc   y
0e98: f7 08     mov   a,($08)+y
0e9a: c5 f3 03  mov   $03f3,a
0e9d: fc        inc   y
0e9e: 5f a2 0c  jmp   $0ca2

; vcmd f1
0ea1: ce        pop   x
0ea2: fc        inc   y
0ea3: 5f a2 0c  jmp   $0ca2

; vcmd f2
0ea6: ce        pop   x
0ea7: fc        inc   y
0ea8: 5f a2 0c  jmp   $0ca2

; vcmd f9 - set noise frequency and ADSR
0eab: ce        pop   x
0eac: 09 34 1d  or    ($1d),($34)
0eaf: fc        inc   y
0eb0: e4 1a     mov   a,$1a
0eb2: 28 e0     and   a,#$e0
0eb4: 17 08     or    a,($08)+y
0eb6: c4 1a     mov   $1a,a             ; arg1: noise frequency
0eb8: fc        inc   y
0eb9: f7 08     mov   a,($08)+y
0ebb: d5 90 02  mov   $0290+x,a         ; arg2: ADSR(1)
0ebe: fc        inc   y
0ebf: f7 08     mov   a,($08)+y
0ec1: d5 a0 02  mov   $02a0+x,a         ; arg3: ADSR(2)
0ec4: fc        inc   y
0ec5: 5f a2 0c  jmp   $0ca2

; vcmd fa - noise off
0ec8: ce        pop   x
0ec9: e4 1a     mov   a,$1a
0ecb: 28 e0     and   a,#$e0
0ecd: c4 1a     mov   $1a,a
0ecf: e8 00     mov   a,#$00
0ed1: c4 1d     mov   $1d,a
0ed3: fc        inc   y
0ed4: 5f a2 0c  jmp   $0ca2

; vcmd f6
0ed7: ce        pop   x
0ed8: e4 34     mov   a,$34
0eda: 04 e3     or    a,$e3
0edc: c4 e3     mov   $e3,a
0ede: 09 34 18  or    ($18),($34)
0ee1: e4 34     mov   a,$34
0ee3: 48 ff     eor   a,#$ff
0ee5: 24 19     and   a,$19
0ee7: c4 19     mov   $19,a
0ee9: fc        inc   y
0eea: 5f a2 0c  jmp   $0ca2

; vcmd f7
0eed: ce        pop   x
0eee: e4 34     mov   a,$34
0ef0: 48 ff     eor   a,#$ff
0ef2: 24 e3     and   a,$e3
0ef4: c4 e3     mov   $e3,a
0ef6: 09 34 19  or    ($19),($34)
0ef9: e4 34     mov   a,$34
0efb: 48 ff     eor   a,#$ff
0efd: 24 18     and   a,$18
0eff: c4 18     mov   $18,a
0f01: fc        inc   y
0f02: 5f a2 0c  jmp   $0ca2

; vcmd f8 - set ADSR
0f05: ce        pop   x
0f06: fc        inc   y
0f07: f7 08     mov   a,($08)+y
0f09: d5 90 02  mov   $0290+x,a         ; arg1: ADSR(1)
0f0c: fc        inc   y
0f0d: f7 08     mov   a,($08)+y
0f0f: d5 a0 02  mov   $02a0+x,a         ; arg2: ADSR(2)
0f12: fc        inc   y
0f13: 5f a2 0c  jmp   $0ca2

; vcmd e0 - goto
0f16: ce        pop   x
0f17: fc        inc   y
0f18: f7 08     mov   a,($08)+y
0f1a: d5 00 02  mov   $0200+x,a         ; arg1: voice address (lo)
0f1d: fc        inc   y
0f1e: f7 08     mov   a,($08)+y
0f20: d5 10 02  mov   $0210+x,a         ; arg2: voice address (hi)
0f23: 5f 96 0c  jmp   $0c96

; vcmd e1 - call subroutine
0f26: ce        pop   x
0f27: fc        inc   y
0f28: f7 08     mov   a,($08)+y
0f2a: d5 00 02  mov   $0200+x,a         ; arg1: voice address (lo)
0f2d: fc        inc   y
0f2e: f7 08     mov   a,($08)+y
0f30: d5 10 02  mov   $0210+x,a         ; arg2: voice address (hi)
0f33: fc        inc   y
0f34: dd        mov   a,y
0f35: 60        clrc
0f36: 84 08     adc   a,$08
0f38: c4 08     mov   $08,a
0f3a: 98 00 09  adc   $09,#$00
0f3d: e4 08     mov   a,$08
0f3f: d5 20 02  mov   $0220+x,a
0f42: e4 09     mov   a,$09
0f44: d5 30 02  mov   $0230+x,a         ; save return address
0f47: 5f 96 0c  jmp   $0c96

; vcmd e2
0f4a: ce        pop   x
0f4b: f5 20 02  mov   a,$0220+x
0f4e: d5 00 02  mov   $0200+x,a
0f51: f5 30 02  mov   a,$0230+x
0f54: d5 10 02  mov   $0210+x,a
0f57: 5f 96 0c  jmp   $0c96

; vcmd e3
0f5a: ce        pop   x
0f5b: fc        inc   y
0f5c: f7 08     mov   a,($08)+y
0f5e: c4 3d     mov   $3d,a
0f60: f0 0b     beq   $0f6d
0f62: 6d        push  y
0f63: e8 fe     mov   a,#$fe
0f65: 8d 6d     mov   y,#$6d
0f67: 3f d1 13  call  $13d1             ; ESA
0f6a: ee        pop   y
0f6b: 2f 09     bra   $0f76
0f6d: 6d        push  y
0f6e: e8 fe     mov   a,#$fe
0f70: 8d 6d     mov   y,#$6d
0f72: 3f d1 13  call  $13d1             ; ESA
0f75: ee        pop   y
0f76: fc        inc   y
0f77: f7 08     mov   a,($08)+y
0f79: c4 1f     mov   $1f,a
0f7b: fc        inc   y
0f7c: f7 08     mov   a,($08)+y
0f7e: c4 3a     mov   $3a,a
0f80: fc        inc   y
0f81: f7 08     mov   a,($08)+y
0f83: c4 3b     mov   $3b,a
0f85: fc        inc   y
0f86: f7 08     mov   a,($08)+y
0f88: c4 3c     mov   $3c,a
0f8a: e4 1a     mov   a,$1a
0f8c: 28 df     and   a,#$df
0f8e: c4 1a     mov   $1a,a
0f90: 8f 05 39  mov   $39,#$05
0f93: fc        inc   y
0f94: 5f a2 0c  jmp   $0ca2

; vcmd e4
0f97: ce        pop   x
0f98: c8 08     cmp   x,#$08
0f9a: b0 0e     bcs   $0faa
0f9c: e4 34     mov   a,$34
0f9e: 24 36     and   a,$36
0fa0: f0 05     beq   $0fa7
0fa2: 09 34 4b  or    ($4b),($34)
0fa5: 2f 06     bra   $0fad
0fa7: 09 34 4b  or    ($4b),($34)
0faa: 09 34 3f  or    ($3f),($34)
0fad: fc        inc   y
0fae: 5f a2 0c  jmp   $0ca2

; vcmd e5
0fb1: ce        pop   x
0fb2: fa 34 11  mov   ($11),($34)
0fb5: 58 ff 11  eor   $11,#$ff
0fb8: c8 08     cmp   x,#$08
0fba: b0 0e     bcs   $0fca
0fbc: e4 34     mov   a,$34
0fbe: 24 36     and   a,$36
0fc0: f0 05     beq   $0fc7
0fc2: 29 11 4b  and   ($4b),($11)
0fc5: 2f 06     bra   $0fcd
0fc7: 29 11 4b  and   ($4b),($11)
0fca: 29 11 3f  and   ($3f),($11)
0fcd: fc        inc   y
0fce: 5f a2 0c  jmp   $0ca2

; vcmd e6
0fd1: ce        pop   x
0fd2: e4 34     mov   a,$34
0fd4: 48 ff     eor   a,#$ff
0fd6: 24 37     and   a,$37
0fd8: c4 37     mov   $37,a
0fda: 6f        ret

; vcmd e7
0fdb: ce        pop   x
0fdc: fc        inc   y
0fdd: f7 08     mov   a,($08)+y
0fdf: d5 60 02  mov   $0260+x,a
0fe2: fc        inc   y
0fe3: f7 08     mov   a,($08)+y
0fe5: d5 70 02  mov   $0270+x,a
0fe8: fc        inc   y
0fe9: 5f a2 0c  jmp   $0ca2

; vcmd fb
0fec: ce        pop   x
0fed: f5 20 04  mov   a,$0420+x
0ff0: 10 0c     bpl   $0ffe
0ff2: e8 04     mov   a,#$04
0ff4: 60        clrc
0ff5: 95 50 02  adc   a,$0250+x
0ff8: d5 50 02  mov   $0250+x,a
0ffb: 3f 34 0c  call  $0c34             ; set instrument
0ffe: fc        inc   y
0fff: 5f a2 0c  jmp   $0ca2

; vcmd e8 - set instrument
1002: ce        pop   x
1003: fc        inc   y
1004: f7 08     mov   a,($08)+y
1006: d5 50 02  mov   $0250+x,a
1009: 3f 34 0c  call  $0c34             ; set instrument
100c: fc        inc   y
100d: 5f a2 0c  jmp   $0ca2

; vcmd e9
1010: ce        pop   x
1011: 4d        push  x
1012: fc        inc   y
1013: f7 08     mov   a,($08)+y
1015: 9f        xcn   a
1016: d8 10     mov   $10,x
1018: 60        clrc
1019: 84 10     adc   a,$10
101b: 5d        mov   x,a
101c: f4 a0     mov   a,$a0+x
101e: f0 0c     beq   $102c
1020: fc        inc   y
1021: 9b a0     dec   $a0+x
1023: d0 0e     bne   $1033
1025: fc        inc   y
1026: fc        inc   y
1027: fc        inc   y
1028: ce        pop   x
1029: 5f a2 0c  jmp   $0ca2

102c: fc        inc   y
102d: f7 08     mov   a,($08)+y
102f: d4 a0     mov   $a0+x,a
1031: 9b a0     dec   $a0+x
1033: ce        pop   x
1034: fc        inc   y
1035: f7 08     mov   a,($08)+y
1037: d5 00 02  mov   $0200+x,a
103a: fc        inc   y
103b: f7 08     mov   a,($08)+y
103d: d5 10 02  mov   $0210+x,a
1040: 5f 96 0c  jmp   $0c96

; vcmd ea
1043: ce        pop   x
1044: fc        inc   y
1045: f7 08     mov   a,($08)+y
1047: 60        clrc
1048: 95 40 02  adc   a,$0240+x
104b: d5 40 02  mov   $0240+x,a
104e: fc        inc   y
104f: 5f a2 0c  jmp   $0ca2

; vcmd eb
1052: ce        pop   x
1053: fc        inc   y
1054: f7 08     mov   a,($08)+y
1056: d4 60     mov   $60+x,a
1058: fc        inc   y
1059: f7 08     mov   a,($08)+y
105b: d5 f0 02  mov   $02f0+x,a
105e: fc        inc   y
105f: f7 08     mov   a,($08)+y
1061: 80        setc
1062: a8 74     sbc   a,#$74
1064: 60        clrc
1065: 95 40 02  adc   a,$0240+x
1068: c4 38     mov   $38,a
106a: c4 40     mov   $40,a
106c: 3f 47 0d  call  $0d47
106f: fa 0b 0e  mov   ($0e),($0b)
1072: fa 0c 0f  mov   ($0f),($0c)
1075: fc        inc   y
1076: 3f a2 0c  call  $0ca2
1079: e4 38     mov   a,$38
107b: d5 00 03  mov   $0300+x,a
107e: f5 f0 02  mov   a,$02f0+x
1081: c4 11     mov   $11,a
1083: e4 40     mov   a,$40
1085: 75 00 03  cmp   a,$0300+x
1088: 90 16     bcc   $10a0
108a: e4 0e     mov   a,$0e
108c: d5 b0 02  mov   $02b0+x,a
108f: e4 0f     mov   a,$0f
1091: d5 c0 02  mov   $02c0+x,a
1094: e4 34     mov   a,$34
1096: 04 42     or    a,$42
1098: c4 42     mov   $42,a
109a: ba 0e     movw  ya,$0e
109c: 9a 0b     subw  ya,$0b
109e: 2f 14     bra   $10b4
10a0: e4 0e     mov   a,$0e
10a2: d5 b0 02  mov   $02b0+x,a
10a5: e4 0f     mov   a,$0f
10a7: d5 c0 02  mov   $02c0+x,a
10aa: e4 34     mov   a,$34
10ac: 04 41     or    a,$41
10ae: c4 41     mov   $41,a
10b0: ba 0b     movw  ya,$0b
10b2: 9a 0e     subw  ya,$0e
10b4: 4d        push  x
10b5: f8 11     mov   x,$11
10b7: 9e        div   ya,x
10b8: ce        pop   x
10b9: d4 80     mov   $80+x,a
10bb: dd        mov   a,y
10bc: d5 e0 02  mov   $02e0+x,a
10bf: 6f        ret

; vcmd ec
10c0: ce        pop   x
10c1: fc        inc   y
10c2: f7 08     mov   a,($08)+y
10c4: d5 10 03  mov   $0310+x,a
10c7: d5 50 03  mov   $0350+x,a
10ca: fc        inc   y
10cb: f7 08     mov   a,($08)+y
10cd: d5 20 03  mov   $0320+x,a
10d0: fc        inc   y
10d1: f7 08     mov   a,($08)+y
10d3: d5 30 03  mov   $0330+x,a
10d6: fa 34 11  mov   ($11),($34)
10d9: 09 11 47  or    ($47),($11)
10dc: fc        inc   y
10dd: 5f a2 0c  jmp   $0ca2

; vcmd ed
10e0: ce        pop   x
10e1: fa 34 11  mov   ($11),($34)
10e4: 58 ff 11  eor   $11,#$ff
10e7: 29 11 47  and   ($47),($11)
10ea: fc        inc   y
10eb: 5f a2 0c  jmp   $0ca2

; vcmd f4
10ee: ce        pop   x
10ef: 8f 01 4f  mov   $4f,#$01
10f2: fc        inc   y
10f3: 5f a2 0c  jmp   $0ca2

; vcmd ef
10f6: 8f 01 4e  mov   $4e,#$01
10f9: 8f 00 4f  mov   $4f,#$00
10fc: e8 00     mov   a,#$00
10fe: c4 14     mov   $14,a
1100: c4 15     mov   $15,a
; vcmd ee
1102: ce        pop   x
1103: 09 34 19  or    ($19),($34)
1106: fa 34 11  mov   ($11),($34)
1109: 58 ff 11  eor   $11,#$ff
110c: 29 11 36  and   ($36),($11)
110f: 29 11 37  and   ($37),($11)
1112: 8f 00 4a  mov   $4a,#$00
1115: 29 11 3f  and   ($3f),($11)
1118: e4 4b     mov   a,$4b
111a: 24 34     and   a,$34
111c: c4 39     mov   $39,a
111e: 09 39 3f  or    ($3f),($39)
1121: 8f 05 39  mov   $39,#$05
1124: 8f 00 4f  mov   $4f,#$00
1127: e4 1d     mov   a,$1d
1129: 64 34     cmp   a,$34
112b: d0 04     bne   $1131
112d: e8 00     mov   a,#$00
112f: c4 1d     mov   $1d,a
1131: 6f        ret

1132: 60        clrc
1133: 89 11 08  adc   ($08),($11)
1136: 98 00 09  adc   $09,#$00
1139: e4 08     mov   a,$08
113b: d5 00 02  mov   $0200+x,a
113e: e4 09     mov   a,$09
1140: d5 10 02  mov   $0210+x,a
1143: 6f        ret

; vcmd f0
1144: fc        inc   y
1145: f7 08     mov   a,($08)+y
1147: 1c        asl   a
1148: 5d        mov   x,a
1149: f5 df 13  mov   a,$13df+x
114c: c4 0a     mov   $0a,a
114e: f5 e9 13  mov   a,$13e9+x
1151: c4 0c     mov   $0c,a
1153: 3d        inc   x
1154: f5 df 13  mov   a,$13df+x
1157: c4 0b     mov   $0b,a
1159: f5 e9 13  mov   a,$13e9+x
115c: c4 0d     mov   $0d,a
115e: ce        pop   x
115f: e4 0a     mov   a,$0a
1161: d5 60 03  mov   $0360+x,a
1164: d5 a0 03  mov   $03a0+x,a
1167: e4 0b     mov   a,$0b
1169: d5 70 03  mov   $0370+x,a
116c: d5 b0 03  mov   $03b0+x,a
116f: e4 0c     mov   a,$0c
1171: d5 80 03  mov   $0380+x,a
1174: d5 c0 03  mov   $03c0+x,a
1177: e4 0d     mov   a,$0d
1179: d5 90 03  mov   $0390+x,a
117c: d5 d0 03  mov   $03d0+x,a
117f: fa 34 11  mov   ($11),($34)
1182: 09 11 e1  or    ($e1),($11)
1185: fc        inc   y
1186: 5f a2 0c  jmp   $0ca2

1189: e4 41     mov   a,$41
118b: 24 34     and   a,$34
118d: d0 07     bne   $1196
118f: e4 42     mov   a,$42
1191: 24 34     and   a,$34
1193: d0 37     bne   $11cc
1195: 6f        ret

1196: f4 60     mov   a,$60+x
1198: f0 03     beq   $119d
119a: 9b 60     dec   $60+x
119c: 6f        ret

119d: f5 f0 02  mov   a,$02f0+x
11a0: d0 0a     bne   $11ac
11a2: fa 41 11  mov   ($11),($41)
11a5: 3f 03 12  call  $1203
11a8: fa 11 41  mov   ($41),($11)
11ab: 6f        ret

11ac: f5 f0 02  mov   a,$02f0+x
11af: 9c        dec   a
11b0: d5 f0 02  mov   $02f0+x,a
11b3: 60        clrc
11b4: f5 e0 02  mov   a,$02e0+x
11b7: 94 90     adc   a,$90+x
11b9: d4 90     mov   $90+x,a
11bb: f4 80     mov   a,$80+x
11bd: 95 b0 02  adc   a,$02b0+x
11c0: d5 b0 02  mov   $02b0+x,a
11c3: e8 00     mov   a,#$00
11c5: 95 c0 02  adc   a,$02c0+x
11c8: d5 c0 02  mov   $02c0+x,a
11cb: 6f        ret

11cc: f4 60     mov   a,$60+x
11ce: f0 03     beq   $11d3
11d0: 9b 60     dec   $60+x
11d2: 6f        ret

11d3: f5 f0 02  mov   a,$02f0+x
11d6: d0 0a     bne   $11e2
11d8: fa 42 11  mov   ($11),($42)
11db: 3f 03 12  call  $1203
11de: fa 11 42  mov   ($42),($11)
11e1: 6f        ret

11e2: f5 f0 02  mov   a,$02f0+x
11e5: 9c        dec   a
11e6: d5 f0 02  mov   $02f0+x,a
11e9: 60        clrc
11ea: f5 e0 02  mov   a,$02e0+x
11ed: 94 90     adc   a,$90+x
11ef: ed        notc
11f0: d4 90     mov   $90+x,a
11f2: f5 b0 02  mov   a,$02b0+x
11f5: b4 80     sbc   a,$80+x
11f7: d5 b0 02  mov   $02b0+x,a
11fa: f5 c0 02  mov   a,$02c0+x
11fd: a8 00     sbc   a,#$00
11ff: d5 c0 02  mov   $02c0+x,a
1202: 6f        ret

1203: e4 34     mov   a,$34
1205: 48 ff     eor   a,#$ff
1207: 24 11     and   a,$11
1209: c4 11     mov   $11,a
120b: f5 00 03  mov   a,$0300+x
120e: c4 38     mov   $38,a
1210: 3f 47 0d  call  $0d47
1213: 6f        ret

1214: fa 34 11  mov   ($11),($34)
1217: 29 47 11  and   ($11),($47)
121a: d0 01     bne   $121d
121c: 6f        ret

121d: f5 10 03  mov   a,$0310+x
1220: f0 05     beq   $1227
1222: 9c        dec   a
1223: d5 10 03  mov   $0310+x,a
1226: 6f        ret

1227: f5 40 03  mov   a,$0340+x
122a: d0 0b     bne   $1237
122c: f5 30 03  mov   a,$0330+x
122f: 48 80     eor   a,#$80
1231: d5 30 03  mov   $0330+x,a
1234: f5 20 03  mov   a,$0320+x
1237: 9c        dec   a
1238: d5 40 03  mov   $0340+x,a
123b: fa 34 11  mov   ($11),($34)
123e: 29 41 11  and   ($11),($41)
1241: d0 32     bne   $1275
1243: fa 34 11  mov   ($11),($34)
1246: 29 42 11  and   ($11),($42)
1249: d0 2a     bne   $1275
124b: f5 30 03  mov   a,$0330+x
124e: 10 13     bpl   $1263
1250: 28 7f     and   a,#$7f
1252: 60        clrc
1253: 95 b0 02  adc   a,$02b0+x
1256: d5 b0 02  mov   $02b0+x,a
1259: e8 00     mov   a,#$00
125b: 95 c0 02  adc   a,$02c0+x
125e: d5 c0 02  mov   $02c0+x,a
1261: 2f 12     bra   $1275
1263: f5 b0 02  mov   a,$02b0+x
1266: 80        setc
1267: b5 30 03  sbc   a,$0330+x
126a: d5 b0 02  mov   $02b0+x,a
126d: f5 c0 02  mov   a,$02c0+x
1270: a8 00     sbc   a,#$00
1272: d5 c0 02  mov   $02c0+x,a
1275: 6f        ret

1276: e4 4c     mov   a,$4c
1278: f0 2e     beq   $12a8
127a: e4 4d     mov   a,$4d
127c: d0 2a     bne   $12a8
127e: fa 4c 4d  mov   ($4d),($4c)
1281: e4 14     mov   a,$14
1283: f0 02     beq   $1287
1285: 8b 14     dec   $14
1287: e4 15     mov   a,$15
1289: f0 02     beq   $128d
128b: 8b 15     dec   $15
128d: e4 3a     mov   a,$3a
128f: f0 02     beq   $1293
1291: 8b 3a     dec   $3a
1293: e4 3b     mov   a,$3b
1295: f0 02     beq   $1299
1297: 8b 3b     dec   $3b
1299: e4 14     mov   a,$14
129b: 04 15     or    a,$15
129d: d0 09     bne   $12a8
129f: e4 3a     mov   a,$3a
12a1: 04 3b     or    a,$3b
12a3: d0 03     bne   $12a8
12a5: 8f 00 4c  mov   $4c,#$00
12a8: 8b 4d     dec   $4d
12aa: 6f        ret

12ab: fa 34 11  mov   ($11),($34)
12ae: 29 e1 11  and   ($11),($e1)
12b1: d0 01     bne   $12b4
12b3: 6f        ret

12b4: 8d 00     mov   y,#$00
12b6: f5 60 03  mov   a,$0360+x
12b9: c4 0a     mov   $0a,a
12bb: f5 70 03  mov   a,$0370+x
12be: c4 0b     mov   $0b,a
12c0: f7 0a     mov   a,($0a)+y
12c2: 68 fe     cmp   a,#$fe
12c4: d0 0e     bne   $12d4
12c6: f5 a0 03  mov   a,$03a0+x
12c9: d5 60 03  mov   $0360+x,a
12cc: f5 b0 03  mov   a,$03b0+x
12cf: d5 70 03  mov   $0370+x,a
12d2: 2f e0     bra   $12b4
12d4: 68 ff     cmp   a,#$ff
12d6: d0 0a     bne   $12e2
12d8: fa 34 11  mov   ($11),($34)
12db: 58 ff 11  eor   $11,#$ff
12de: 29 11 e1  and   ($e1),($11)
12e1: 6f        ret

12e2: d5 60 02  mov   $0260+x,a
12e5: f5 80 03  mov   a,$0380+x
12e8: c4 0c     mov   $0c,a
12ea: f5 90 03  mov   a,$0390+x
12ed: c4 0d     mov   $0d,a
12ef: f7 0c     mov   a,($0c)+y
12f1: 68 fe     cmp   a,#$fe
12f3: d0 0e     bne   $1303
12f5: f5 c0 03  mov   a,$03c0+x
12f8: d5 80 03  mov   $0380+x,a
12fb: f5 d0 03  mov   a,$03d0+x
12fe: d5 90 03  mov   $0390+x,a
1301: 2f e2     bra   $12e5
1303: 68 ff     cmp   a,#$ff
1305: d0 0a     bne   $1311
1307: fa 34 11  mov   ($11),($34)
130a: 58 ff 11  eor   $11,#$ff
130d: 29 11 e1  and   ($e1),($11)
1310: 6f        ret

1311: d5 70 02  mov   $0270+x,a
1314: e8 01     mov   a,#$01
1316: 60        clrc
1317: 95 60 03  adc   a,$0360+x
131a: d5 60 03  mov   $0360+x,a
131d: e8 00     mov   a,#$00
131f: 95 70 03  adc   a,$0370+x
1322: d5 70 03  mov   $0370+x,a
1325: e8 01     mov   a,#$01
1327: 60        clrc
1328: 95 80 03  adc   a,$0380+x
132b: d5 80 03  mov   $0380+x,a
132e: e8 00     mov   a,#$00
1330: 95 90 03  adc   a,$0390+x
1333: d5 90 03  mov   $0390+x,a
1336: 6f        ret

1337: f4 d0     mov   a,$d0+x
1339: d0 30     bne   $136b
133b: f4 c0     mov   a,$c0+x
133d: 68 01     cmp   a,#$01
133f: d0 2a     bne   $136b
1341: e4 e2     mov   a,$e2
1343: 24 34     and   a,$34
1345: d0 24     bne   $136b
1347: e4 e3     mov   a,$e3
1349: 24 34     and   a,$34
134b: d0 1e     bne   $136b
134d: fa 34 11  mov   ($11),($34)
1350: 58 ff 11  eor   $11,#$ff
1353: 29 11 41  and   ($41),($11)
1356: 29 11 42  and   ($42),($11)
1359: c8 08     cmp   x,#$08
135b: b0 08     bcs   $1365
135d: e4 36     mov   a,$36
135f: 24 34     and   a,$34
1361: f0 02     beq   $1365
1363: 2f 5b     bra   $13c0
1365: 29 11 18  and   ($18),($11)
1368: 09 34 19  or    ($19),($34)
136b: c8 08     cmp   x,#$08
136d: b0 08     bcs   $1377
136f: e4 36     mov   a,$36
1371: 24 34     and   a,$34
1373: f0 02     beq   $1377
1375: 2f 49     bra   $13c0
1377: f5 c1 13  mov   a,$13c1+x
137a: fd        mov   y,a
137b: f5 60 02  mov   a,$0260+x
137e: cc f2 00  mov   $00f2,y           ; VOL(L)
1381: c5 f3 00  mov   $00f3,a
1384: fc        inc   y
1385: f5 70 02  mov   a,$0270+x
1388: cc f2 00  mov   $00f2,y           ; VOL(R)
138b: c5 f3 00  mov   $00f3,a
138e: fc        inc   y
138f: f5 b0 02  mov   a,$02b0+x
1392: cc f2 00  mov   $00f2,y           ; P(L)
1395: c5 f3 00  mov   $00f3,a
1398: fc        inc   y
1399: f5 c0 02  mov   a,$02c0+x
139c: cc f2 00  mov   $00f2,y           ; P(H)
139f: c5 f3 00  mov   $00f3,a
13a2: fc        inc   y
13a3: f5 80 02  mov   a,$0280+x
13a6: cc f2 00  mov   $00f2,y           ; SRCN
13a9: c5 f3 00  mov   $00f3,a
13ac: fc        inc   y
13ad: f5 90 02  mov   a,$0290+x
13b0: cc f2 00  mov   $00f2,y           ; ADSR(1)
13b3: c5 f3 00  mov   $00f3,a
13b6: fc        inc   y
13b7: f5 a0 02  mov   a,$02a0+x
13ba: cc f2 00  mov   $00f2,y           ; ADSR(2)
13bd: c5 f3 00  mov   $00f3,a
13c0: 6f        ret

13c1: db $00,$10,$20,$30,$40,$50,$60,$70
13c9: db $00,$10,$20,$30,$40,$50,$60,$70

; set A to dsp register Y
13d1: cc f2 00  mov   $00f2,y
13d4: c5 f3 00  mov   $00f3,a
13d7: 6f        ret

; get dsp register Y to A
13d8: cc f2 00  mov   $00f2,y
13db: e5 f3 00  mov   a,$00f3
13de: 6f        ret
