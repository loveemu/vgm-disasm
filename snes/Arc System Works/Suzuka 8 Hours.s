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
0817: 3f fd 13  call  $13fd
081a: e8 fe     mov   a,#$fe
081c: 8d 6d     mov   y,#$6d            ; ESA
081e: 3f fd 13  call  $13fd
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
083e: 3f c0 0b  call  $0bc0
; main loop
0841: 3f 56 08  call  $0856
0844: cd 02     mov   x,#$02
0846: e5 fd 00  mov   a,$00fd
0849: f0 fb     beq   $0846             ; wait for timer 0 clock
084b: 4d        push  x
084c: 3f bf 09  call  $09bf
084f: ce        pop   x
0850: 1d        dec   x
0851: d0 f3     bne   $0846
0853: 5f 41 08  jmp   $0841

0856: 3f bf 09  call  $09bf
0859: e4 4e     mov   a,$4e
085b: f0 01     beq   $085e
085d: 6f        ret

085e: 3f 0b 14  call  $140b
0861: 3f 4c 14  call  $144c
0864: 3f d9 15  call  $15d9
0867: e5 f0 03  mov   a,$03f0
086a: 60        clrc
086b: 85 f2 03  adc   a,$03f2
086e: c5 f0 03  mov   $03f0,a
0871: e5 f1 03  mov   a,$03f1
0874: 85 f3 03  adc   a,$03f3
0877: c5 f1 03  mov   $03f1,a
087a: 90 26     bcc   $08a2
087c: fa 35 37  mov   ($37),($35)
087f: fa 43 41  mov   ($41),($43)
0882: fa 44 42  mov   ($42),($44)
0885: fa 48 47  mov   ($47),($48)
0888: cd 00     mov   x,#$00
088a: e8 01     mov   a,#$01
088c: c4 34     mov   $34,a
088e: 3f 5d 0c  call  $0c5d
0891: 3d        inc   x
0892: 0b 34     asl   $34
0894: d0 f8     bne   $088e
0896: fa 37 35  mov   ($35),($37)
0899: fa 41 43  mov   ($43),($41)
089c: fa 42 44  mov   ($44),($42)
089f: fa 47 48  mov   ($48),($47)
08a2: fa 36 37  mov   ($37),($36)
08a5: fa 45 41  mov   ($41),($45)
08a8: fa 46 42  mov   ($42),($46)
08ab: fa 49 47  mov   ($47),($49)
08ae: cd 08     mov   x,#$08
08b0: e8 01     mov   a,#$01
08b2: c4 34     mov   $34,a
08b4: 3f 5d 0c  call  $0c5d
08b7: 3d        inc   x
08b8: 0b 34     asl   $34
08ba: d0 f8     bne   $08b4
08bc: fa 37 36  mov   ($36),($37)
08bf: fa 41 45  mov   ($45),($41)
08c2: fa 42 46  mov   ($46),($42)
08c5: fa 47 49  mov   ($49),($47)
08c8: 3f 60 09  call  $0960
08cb: 69 2b 1f  cmp   ($1f),($2b)
08ce: f0 09     beq   $08d9
08d0: e4 1f     mov   a,$1f
08d2: c4 2b     mov   $2b,a
08d4: 8d 7d     mov   y,#$7d
08d6: 3f fd 13  call  $13fd             ; EDL
08d9: 69 26 1a  cmp   ($1a),($26)
08dc: f0 09     beq   $08e7
08de: e4 1a     mov   a,$1a
08e0: c4 26     mov   $26,a
08e2: 8d 6c     mov   y,#$6c
08e4: 3f fd 13  call  $13fd             ; FLG
08e7: 69 25 19  cmp   ($19),($25)
08ea: f0 0c     beq   $08f8
08ec: e4 19     mov   a,$19
08ee: c4 25     mov   $25,a
08f0: 8d 5c     mov   y,#$5c            ; KOF
08f2: cc f2 00  mov   $00f2,y
08f5: c5 f3 00  mov   $00f3,a
08f8: e4 18     mov   a,$18
08fa: f0 0b     beq   $0907
08fc: 8d 4c     mov   y,#$4c            ; KON
08fe: cc f2 00  mov   $00f2,y
0901: c5 f3 00  mov   $00f3,a
0904: 8f 00 18  mov   $18,#$00
0907: e4 16     mov   a,$16
0909: c4 22     mov   $22,a
090b: 8d 2c     mov   y,#$2c            ; EVOL(L)
090d: cc f2 00  mov   $00f2,y
0910: c5 f3 00  mov   $00f3,a
0913: e4 17     mov   a,$17
0915: c4 23     mov   $23,a
0917: 8d 3c     mov   y,#$3c            ; EVOL(R)
0919: cc f2 00  mov   $00f2,y
091c: c5 f3 00  mov   $00f3,a
091f: e4 1b     mov   a,$1b
0921: c4 27     mov   $27,a
0923: 8d 0d     mov   y,#$0d            ; EFB
0925: cc f2 00  mov   $00f2,y
0928: c5 f3 00  mov   $00f3,a
092b: e4 1e     mov   a,$1e
092d: c4 2a     mov   $2a,a
092f: 8d 4d     mov   y,#$4d            ; EON
0931: cc f2 00  mov   $00f2,y
0934: c5 f3 00  mov   $00f3,a
0937: e4 1d     mov   a,$1d
0939: c4 29     mov   $29,a
093b: 8d 3d     mov   y,#$3d            ; NON
093d: cc f2 00  mov   $00f2,y
0940: c5 f3 00  mov   $00f3,a
0943: 69 20 14  cmp   ($14),($20)
0946: f0 09     beq   $0951
0948: e4 14     mov   a,$14
094a: c4 20     mov   $20,a
094c: 8d 0c     mov   y,#$0c
094e: 3f fd 13  call  $13fd             ; MVOL(L)
0951: 69 21 15  cmp   ($15),($21)
0954: f0 09     beq   $095f
0956: e4 15     mov   a,$15
0958: c4 21     mov   $21,a
095a: 8d 1c     mov   y,#$1c
095c: 3f fd 13  call  $13fd             ; MVOL(R)
095f: 6f        ret

0960: 69 3e 3d  cmp   ($3d),($3e)
0963: f0 1c     beq   $0981
0965: e4 3d     mov   a,$3d
0967: c4 3e     mov   $3e,a
0969: 1c        asl   a
096a: 1c        asl   a
096b: 1c        asl   a
096c: 5d        mov   x,a
096d: 8d 0f     mov   y,#$0f
096f: f5 97 09  mov   a,$0997+x
0972: 3f fd 13  call  $13fd             ; set FIR C0-C7
0975: 3d        inc   x
0976: dd        mov   a,y
0977: 60        clrc
0978: 88 10     adc   a,#$10
097a: 68 8f     cmp   a,#$8f
097c: f0 03     beq   $0981
097e: fd        mov   y,a
097f: 2f ee     bra   $096f
0981: e4 39     mov   a,$39
0983: f0 03     beq   $0988
0985: 8b 39     dec   $39
0987: 6f        ret

0988: e4 3f     mov   a,$3f
098a: fa 3f 1e  mov   ($1e),($3f)
098d: fa 3a 16  mov   ($16),($3a)
0990: fa 3b 17  mov   ($17),($3b)
0993: fa 3c 1b  mov   ($1b),($3c)
0996: 6f        ret

0997: db $7f,$00,$00,$00,$00,$00,$00,$00
099f: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
09a7: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
09af: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
09b7: db $25,$36,$28,$0f,$f7,$ed,$fe,$10

09bf: e5 f5 00  mov   a,$00f5
09c2: 65 f5 00  cmp   a,$00f5
09c5: d0 f8     bne   $09bf
09c7: c4 01     mov   $01,a
09c9: c5 f5 00  mov   $00f5,a
09cc: 08 00     or    a,#$00
09ce: 30 05     bmi   $09d5
09d0: c5 f6 03  mov   $03f6,a
09d3: 2f 03     bra   $09d8
09d5: c5 f7 03  mov   $03f7,a
09d8: e5 f4 00  mov   a,$00f4
09db: 65 f4 00  cmp   a,$00f4
09de: d0 f8     bne   $09d8
09e0: c4 00     mov   $00,a
09e2: c5 f4 00  mov   $00f4,a
09e5: c5 f9 03  mov   $03f9,a
09e8: e5 f7 00  mov   a,$00f7
09eb: 65 f7 00  cmp   a,$00f7
09ee: d0 f8     bne   $09e8
09f0: 64 03     cmp   a,$03
09f2: f0 09     beq   $09fd
09f4: c4 03     mov   $03,a
09f6: c5 f7 00  mov   $00f7,a
09f9: 08 00     or    a,#$00
09fb: d0 19     bne   $0a16
09fd: e5 f6 00  mov   a,$00f6
0a00: 65 f6 00  cmp   a,$00f6
0a03: d0 f8     bne   $09fd
0a05: 64 02     cmp   a,$02
0a07: f0 0c     beq   $0a15
0a09: c4 02     mov   $02,a
0a0b: c5 f6 00  mov   $00f6,a
0a0e: 08 00     or    a,#$00
0a10: f0 03     beq   $0a15
0a12: 3f 7f 0a  call  $0a7f
0a15: 6f        ret

0a16: 68 f0     cmp   a,#$f0
0a18: 90 1d     bcc   $0a37
0a1a: 78 01 e0  cmp   $e0,#$01
0a1d: f0 08     beq   $0a27
0a1f: 28 0f     and   a,#$0f
0a21: 5d        mov   x,a
0a22: f5 28 0a  mov   a,$0a28+x
0a25: c4 4c     mov   $4c,a
0a27: 6f        ret

0a28: db $01,$02,$06,$08,$0a,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

0a37: 68 e0     cmp   a,#$e0
0a39: d0 04     bne   $0a3f
0a3b: 8f 01 e0  mov   $e0,#$01
0a3e: 6f        ret

0a3f: 68 e1     cmp   a,#$e1
0a41: d0 04     bne   $0a47
0a43: 8f 00 e0  mov   $e0,#$00
0a46: 6f        ret

0a47: 68 01     cmp   a,#$01
0a49: f0 05     beq   $0a50
0a4b: 38 ff e0  and   $e0,#$ff
0a4e: d0 2e     bne   $0a7e
0a50: 28 ff     and   a,#$ff
0a52: 10 0a     bpl   $0a5e
0a54: 8f 00 f4  mov   $f4,#$00
0a57: e8 ff     mov   a,#$ff
0a59: c4 f1     mov   $f1,a
0a5b: 5f c0 ff  jmp   $ffc0

0a5e: 9c        dec   a
0a5f: 1c        asl   a
0a60: 5d        mov   x,a
0a61: f5 35 18  mov   a,$1835+x
0a64: c4 04     mov   $04,a
0a66: 3d        inc   x
0a67: f5 35 18  mov   a,$1835+x         ; read song table
0a6a: c4 05     mov   $05,a             ; $04/5: song header address
0a6c: 3f be 0b  call  $0bbe
0a6f: cd ff     mov   x,#$ff
0a71: e8 01     mov   a,#$01
0a73: c4 34     mov   $34,a
0a75: 8f 00 37  mov   $37,#$00
0a78: 3f 17 0b  call  $0b17             ; load song header
0a7b: fa 37 35  mov   ($35),($37)
0a7e: 6f        ret

0a7f: 78 01 4e  cmp   $4e,#$01
0a82: d0 1d     bne   $0aa1
0a84: 68 0b     cmp   a,#$0b
0a86: d0 19     bne   $0aa1
0a88: 8f 00 4e  mov   $4e,#$00
0a8b: 2d        push  a
0a8c: e8 50     mov   a,#$50
0a8e: c4 14     mov   $14,a
0a90: c4 15     mov   $15,a
0a92: e8 34     mov   a,#$34
0a94: c5 6e 02  mov   $026e,a
0a97: c5 6f 02  mov   $026f,a
0a9a: c5 7e 02  mov   $027e,a
0a9d: c5 7f 02  mov   $027f,a
0aa0: ae        pop   a
0aa1: 9c        dec   a
0aa2: 68 40     cmp   a,#$40
0aa4: b0 20     bcs   $0ac6
0aa6: 1c        asl   a
0aa7: 1c        asl   a
0aa8: 5d        mov   x,a
0aa9: f5 63 18  mov   a,$1863+x
0aac: c4 04     mov   $04,a
0aae: 3d        inc   x
0aaf: f5 63 18  mov   a,$1863+x
0ab2: c4 05     mov   $05,a
0ab4: 3d        inc   x
0ab5: f5 63 18  mov   a,$1863+x
0ab8: f0 06     beq   $0ac0
0aba: 64 4a     cmp   a,$4a
0abc: 90 28     bcc   $0ae6
0abe: c4 4a     mov   $4a,a
0ac0: 3d        inc   x
0ac1: f5 63 18  mov   a,$1863+x
0ac4: 2f 22     bra   $0ae8
0ac6: 1c        asl   a
0ac7: 1c        asl   a
0ac8: 5d        mov   x,a
0ac9: f5 1f 19  mov   a,$191f+x
0acc: c4 04     mov   $04,a
0ace: 3d        inc   x
0acf: f5 1f 19  mov   a,$191f+x
0ad2: c4 05     mov   $05,a
0ad4: 3d        inc   x
0ad5: f5 1f 19  mov   a,$191f+x
0ad8: f0 06     beq   $0ae0
0ada: 64 4a     cmp   a,$4a
0adc: 90 08     bcc   $0ae6
0ade: c4 4a     mov   $4a,a
0ae0: 3d        inc   x
0ae1: f5 1f 19  mov   a,$191f+x
0ae4: 2f 02     bra   $0ae8
0ae6: e8 80     mov   a,#$80
0ae8: 08 00     or    a,#$00
0aea: 30 22     bmi   $0b0e
0aec: 5d        mov   x,a
0aed: f5 0f 0b  mov   a,$0b0f+x
0af0: c4 34     mov   $34,a
0af2: 7d        mov   a,x
0af3: 60        clrc
0af4: 88 07     adc   a,#$07
0af6: 5d        mov   x,a
0af7: fa 36 37  mov   ($37),($36)
0afa: 3f 17 0b  call  $0b17
0afd: fa 37 36  mov   ($36),($37)
0b00: e8 02     mov   a,#$02
0b02: d4 c0     mov   $c0+x,a
0b04: e8 00     mov   a,#$00
0b06: d4 d0     mov   $d0+x,a
0b08: d5 b0 02  mov   $02b0+x,a
0b0b: d5 c0 02  mov   $02c0+x,a
0b0e: 6f        ret

0b0f: db $01,$02,$04,$08,$10,$20,$40,$80

; load song header
0b17: 8d 00     mov   y,#$00
0b19: f7 04     mov   a,($04)+y
0b1b: c4 06     mov   $06,a             ; number of tracks
; setup for each tracks
0b1d: 3d        inc   x
0b1e: 09 34 37  or    ($37),($34)
0b21: c8 08     cmp   x,#$08
0b23: 90 12     bcc   $0b37
0b25: fa 34 11  mov   ($11),($34)
0b28: 58 ff 11  eor   $11,#$ff
0b2b: 29 11 3f  and   ($3f),($11)
0b2e: e4 0c     mov   a,$0c
0b30: 28 80     and   a,#$80
0b32: f0 03     beq   $0b37
0b34: 09 34 3f  or    ($3f),($34)
0b37: fc        inc   y
0b38: f7 04     mov   a,($04)+y
0b3a: d5 00 02  mov   $0200+x,a         ; voice address (lo)
0b3d: fc        inc   y
0b3e: f7 04     mov   a,($04)+y
0b40: d5 10 02  mov   $0210+x,a         ; voice address (hi)
0b43: fc        inc   y
0b44: f7 04     mov   a,($04)+y
0b46: d5 40 02  mov   $0240+x,a
0b49: fc        inc   y
0b4a: f7 04     mov   a,($04)+y
0b4c: d5 50 02  mov   $0250+x,a
0b4f: fc        inc   y
0b50: f7 04     mov   a,($04)+y
0b52: d5 60 02  mov   $0260+x,a
0b55: fc        inc   y
0b56: f7 04     mov   a,($04)+y
0b58: d5 70 02  mov   $0270+x,a
0b5b: e4 1d     mov   a,$1d
0b5d: 64 34     cmp   a,$34
0b5f: d0 04     bne   $0b65
0b61: e8 00     mov   a,#$00
0b63: c4 1d     mov   $1d,a
0b65: 3f 39 0c  call  $0c39             ; set instrument
0b68: e8 01     mov   a,#$01
0b6a: d4 c0     mov   $c0+x,a
0b6c: e8 00     mov   a,#$00
0b6e: d4 d0     mov   $d0+x,a
0b70: d5 00 04  mov   $0400+x,a
0b73: d5 20 04  mov   $0420+x,a
0b76: d5 30 04  mov   $0430+x,a
0b79: d5 b0 02  mov   $02b0+x,a
0b7c: d5 c0 02  mov   $02c0+x,a
0b7f: d5 f0 02  mov   $02f0+x,a
0b82: d5 e0 02  mov   $02e0+x,a
0b85: d4 90     mov   $90+x,a
0b87: d4 80     mov   $80+x,a
0b89: d5 00 03  mov   $0300+x,a
0b8c: e4 34     mov   a,$34
0b8e: 48 ff     eor   a,#$ff
0b90: 24 e3     and   a,$e3
0b92: c4 e3     mov   $e3,a
0b94: e4 34     mov   a,$34
0b96: 48 ff     eor   a,#$ff
0b98: 24 e3     and   a,$e3
0b9a: c4 e3     mov   $e3,a
0b9c: e4 34     mov   a,$34
0b9e: 48 ff     eor   a,#$ff
0ba0: 24 41     and   a,$41
0ba2: c4 41     mov   $41,a
0ba4: e4 34     mov   a,$34
0ba6: 48 ff     eor   a,#$ff
0ba8: 24 42     and   a,$42
0baa: c4 42     mov   $42,a
0bac: e4 34     mov   a,$34
0bae: 48 ff     eor   a,#$ff
0bb0: 24 47     and   a,$47
0bb2: c4 47     mov   $47,a
0bb4: 0b 34     asl   $34
0bb6: 8b 06     dec   $06
0bb8: f0 03     beq   $0bbd
0bba: 5f 1d 0b  jmp   $0b1d

0bbd: 6f        ret

; reset
0bbe: cd 06     mov   x,#$06
0bc0: e8 00     mov   a,#$00
0bc2: af        mov   (x)+,a
0bc3: c8 e8     cmp   x,#$e8
0bc5: d0 fb     bne   $0bc2
0bc7: cd 00     mov   x,#$00
0bc9: d5 00 02  mov   $0200+x,a
0bcc: 3d        inc   x
0bcd: c8 00     cmp   x,#$00
0bcf: d0 f8     bne   $0bc9
0bd1: d5 00 03  mov   $0300+x,a
0bd4: 3d        inc   x
0bd5: c8 00     cmp   x,#$00
0bd7: d0 f8     bne   $0bd1
0bd9: d5 00 04  mov   $0400+x,a
0bdc: 3d        inc   x
0bdd: c8 50     cmp   x,#$50
0bdf: d0 f8     bne   $0bd9
0be1: cd 18     mov   x,#$18
0be3: f5 20 0c  mov   a,$0c20+x
0be6: fd        mov   y,a
0be7: e8 00     mov   a,#$00
0be9: cc f2 00  mov   $00f2,y
0bec: c5 f3 00  mov   $00f3,a
0bef: 1d        dec   x
0bf0: d0 f1     bne   $0be3
0bf2: 8f 50 14  mov   $14,#$50
0bf5: 8f 50 15  mov   $15,#$50
0bf8: e8 00     mov   a,#$00
0bfa: c5 f2 03  mov   $03f2,a
0bfd: e8 f0     mov   a,#$f0
0bff: c5 f3 03  mov   $03f3,a
0c02: 8f 0f 3e  mov   $3e,#$0f
0c05: e4 1a     mov   a,$1a
0c07: 28 1f     and   a,#$1f
0c09: 08 20     or    a,#$20
0c0b: c4 1a     mov   $1a,a
0c0d: e4 1a     mov   a,$1a
0c0f: 28 1f     and   a,#$1f
0c11: 08 60     or    a,#$60
0c13: c4 26     mov   $26,a
0c15: e8 60     mov   a,#$60            ; mute, disable echo
0c17: 8d 6c     mov   y,#$6c            ; FLG
0c19: cc f2 00  mov   $00f2,y
0c1c: c5 f3 00  mov   $00f3,a
0c1f: 6f        ret

0c20: db $5c,$4c,$2c,$3c,$0d,$2d,$3d,$4d,$7d,$00,$01,$10,$11,$20,$21,$30,$31,$40,$41,$50,$51,$60,$61,$70,$71

0c39: 6d        push  y
0c3a: f5 50 02  mov   a,$0250+x
0c3d: 1c        asl   a
0c3e: 1c        asl   a
0c3f: fd        mov   y,a
0c40: f6 00 3f  mov   a,$3f00+y
0c43: d5 80 02  mov   $0280+x,a
0c46: fc        inc   y
0c47: f6 00 3f  mov   a,$3f00+y
0c4a: d5 90 02  mov   $0290+x,a
0c4d: fc        inc   y
0c4e: f6 00 3f  mov   a,$3f00+y
0c51: d5 a0 02  mov   $02a0+x,a
0c54: fc        inc   y
0c55: f6 00 3f  mov   a,$3f00+y
0c58: d5 d0 02  mov   $02d0+x,a
0c5b: ee        pop   y
0c5c: 6f        ret

0c5d: e4 37     mov   a,$37
0c5f: 24 34     and   a,$34
0c61: d0 01     bne   $0c64
0c63: 6f        ret

0c64: 9b c0     dec   $c0+x             ; decrease delta-time
0c66: d0 0b     bne   $0c73
0c68: f4 d0     mov   a,$d0+x
0c6a: f0 04     beq   $0c70
0c6c: 9b d0     dec   $d0+x
0c6e: 2f 03     bra   $0c73
0c70: 3f 83 0c  call  $0c83             ; dispatch new voice byte
0c73: 3f ad 11  call  $11ad
0c76: 3f 38 12  call  $1238
0c79: 3f 9a 12  call  $129a
0c7c: 3f cf 12  call  $12cf
0c7f: 3f 5b 13  call  $135b
0c82: 6f        ret

; dispatch voice byte
0c83: f5 00 02  mov   a,$0200+x
0c86: c4 08     mov   $08,a
0c88: f5 10 02  mov   a,$0210+x
0c8b: c4 09     mov   $09,a
0c8d: 8d 00     mov   y,#$00
0c8f: f7 08     mov   a,($08)+y         ; read vcmd
0c91: 68 df     cmp   a,#$df
0c93: f0 65     beq   $0cfa
0c95: 68 e0     cmp   a,#$e0
0c97: 90 03     bcc   $0c9c
0c99: 5f 1d 0e  jmp   $0e1d

0c9c: 68 d0     cmp   a,#$d0
0c9e: 90 20     bcc   $0cc0
; vcmd d0-de - percussion note
0ca0: 6d        push  y
0ca1: 80        setc
0ca2: a8 d0     sbc   a,#$d0
0ca4: 1c        asl   a
0ca5: 1c        asl   a
0ca6: fd        mov   y,a
0ca7: f6 f9 0d  mov   a,$0df9+y         ; instrument #
0caa: d5 50 02  mov   $0250+x,a
0cad: 3f 39 0c  call  $0c39             ; set instrument
0cb0: f6 fb 0d  mov   a,$0dfb+y
0cb3: d5 20 04  mov   $0420+x,a         ; VOL(L) delta
0cb6: f6 fc 0d  mov   a,$0dfc+y
0cb9: d5 30 04  mov   $0430+x,a         ; VOL(R) delta
0cbc: f6 fa 0d  mov   a,$0dfa+y         ; note number
0cbf: ee        pop   y
; vcmd 00-cf - note
0cc0: 80        setc
0cc1: a8 74     sbc   a,#$74            ; calculate note number
0cc3: 60        clrc
0cc4: 95 40 02  adc   a,$0240+x         ; add instrument-specific transpose
0cc7: c4 38     mov   $38,a             ; save note number
0cc9: c8 08     cmp   x,#$08
0ccb: b0 08     bcs   $0cd5
0ccd: e4 36     mov   a,$36
0ccf: 24 34     and   a,$34
0cd1: f0 02     beq   $0cd5
0cd3: 2f 11     bra   $0ce6
0cd5: e4 e3     mov   a,$e3
0cd7: 24 34     and   a,$34
0cd9: d0 0b     bne   $0ce6
0cdb: 09 34 18  or    ($18),($34)
0cde: e4 34     mov   a,$34
0ce0: 48 ff     eor   a,#$ff
0ce2: 24 19     and   a,$19
0ce4: c4 19     mov   $19,a
0ce6: f5 50 03  mov   a,$0350+x
0ce9: d5 10 03  mov   $0310+x,a
0cec: f5 30 03  mov   a,$0330+x
0cef: 08 80     or    a,#$80
0cf1: d5 30 03  mov   $0330+x,a
0cf4: f5 20 03  mov   a,$0320+x
0cf7: d5 40 03  mov   $0340+x,a
; vcmd df
0cfa: fc        inc   y
0cfb: f7 08     mov   a,($08)+y
0cfd: 68 fd     cmp   a,#$fd
0cff: d0 0c     bne   $0d0d
0d01: fc        inc   y
0d02: f7 08     mov   a,($08)+y
0d04: d4 c0     mov   $c0+x,a
0d06: fc        inc   y
0d07: f7 08     mov   a,($08)+y
0d09: d4 d0     mov   $d0+x,a
0d0b: 2f 11     bra   $0d1e
0d0d: 68 74     cmp   a,#$74
0d0f: 90 09     bcc   $0d1a
0d11: f0 07     beq   $0d1a
0d13: f4 50     mov   a,$50+x
0d15: d4 c0     mov   $c0+x,a
0d17: dc        dec   y
0d18: 2f 04     bra   $0d1e
0d1a: d4 c0     mov   $c0+x,a
0d1c: d4 50     mov   $50+x,a
0d1e: fc        inc   y
0d1f: dd        mov   a,y
0d20: 60        clrc
0d21: 84 08     adc   a,$08
0d23: d5 00 02  mov   $0200+x,a
0d26: e4 09     mov   a,$09
0d28: 88 00     adc   a,#$00
0d2a: d5 10 02  mov   $0210+x,a
0d2d: f7 08     mov   a,($08)+y
0d2f: 68 f5     cmp   a,#$f5
0d31: d0 05     bne   $0d38
0d33: 09 34 e2  or    ($e2),($34)
0d36: 2f 09     bra   $0d41
0d38: fa 34 11  mov   ($11),($34)
0d3b: 58 ff 11  eor   $11,#$ff
0d3e: 29 11 e2  and   ($e2),($11)
0d41: 6d        push  y
0d42: 7d        mov   a,x
0d43: c5 12 04  mov   $0412,a
0d46: f5 d0 02  mov   a,$02d0+x
0d49: 4d        push  x
0d4a: cd 0c     mov   x,#$0c
0d4c: 8d 00     mov   y,#$00
0d4e: 9e        div   ya,x
0d4f: c4 0d     mov   $0d,a
0d51: dd        mov   a,y
0d52: 48 ff     eor   a,#$ff
0d54: bc        inc   a
0d55: 60        clrc
0d56: 84 38     adc   a,$38
0d58: c4 38     mov   $38,a
0d5a: 8d 00     mov   y,#$00
0d5c: e4 38     mov   a,$38
0d5e: cd 0c     mov   x,#$0c
0d60: 9e        div   ya,x
0d61: c4 0a     mov   $0a,a
0d63: dd        mov   a,y
0d64: 1c        asl   a
0d65: fd        mov   y,a
0d66: f6 df 0d  mov   a,$0ddf+y
0d69: c4 0b     mov   $0b,a
0d6b: fc        inc   y
0d6c: f6 df 0d  mov   a,$0ddf+y
0d6f: c4 0c     mov   $0c,a
0d71: fc        inc   y
0d72: f6 df 0d  mov   a,$0ddf+y
0d75: c5 10 04  mov   $0410,a
0d78: fc        inc   y
0d79: f6 df 0d  mov   a,$0ddf+y
0d7c: c5 11 04  mov   $0411,a
0d7f: 6d        push  y
0d80: 4d        push  x
0d81: fd        mov   y,a
0d82: e5 10 04  mov   a,$0410
0d85: 9a 0b     subw  ya,$0b
0d87: fd        mov   y,a
0d88: e8 00     mov   a,#$00
0d8a: cd ff     mov   x,#$ff
0d8c: 9e        div   ya,x
0d8d: 2d        push  a
0d8e: e9 12 04  mov   x,$0412
0d91: f5 00 04  mov   a,$0400+x
0d94: fd        mov   y,a
0d95: ae        pop   a
0d96: cf        mul   ya
0d97: e8 00     mov   a,#$00
0d99: c5 11 04  mov   $0411,a
0d9c: cc 10 04  mov   $0410,y
0d9f: ce        pop   x
0da0: ee        pop   y
0da1: 69 0d 0a  cmp   ($0a),($0d)
0da4: f0 20     beq   $0dc6
0da6: 90 10     bcc   $0db8
0da8: 80        setc
0da9: a9 0d 0a  sbc   ($0a),($0d)
0dac: f8 0a     mov   x,$0a
0dae: 60        clrc
0daf: 0b 0b     asl   $0b
0db1: 2b 0c     rol   $0c
0db3: 1d        dec   x
0db4: d0 f8     bne   $0dae
0db6: 2f 0e     bra   $0dc6
0db8: 80        setc
0db9: a9 0a 0d  sbc   ($0d),($0a)
0dbc: f8 0d     mov   x,$0d
0dbe: 60        clrc
0dbf: 4b 0c     lsr   $0c
0dc1: 6b 0b     ror   $0b
0dc3: 1d        dec   x
0dc4: d0 f8     bne   $0dbe
0dc6: ce        pop   x
0dc7: ec 11 04  mov   y,$0411
0dca: e5 10 04  mov   a,$0410
0dcd: 7a 0b     addw  ya,$0b
0dcf: c4 0b     mov   $0b,a
0dd1: cb 0c     mov   $0c,y
0dd3: e4 0b     mov   a,$0b
0dd5: d5 b0 02  mov   $02b0+x,a
0dd8: e4 0c     mov   a,$0c
0dda: d5 c0 02  mov   $02c0+x,a
0ddd: ee        pop   y
0dde: 6f        ret

; pitch table
0ddf: dw $085f  ; c
0de1: dw $08de  ; c+
0de3: dw $0965  ; d
0de5: dw $09f4  ; d+
0de7: dw $0a8c  ; e
0de9: dw $0b2c  ; f
0deb: dw $0bd6  ; f+
0ded: dw $0c8b  ; g
0def: dw $0d4a  ; g+
0df1: dw $0e14  ; a
0df3: dw $0eea  ; a+
0df5: dw $0fcd  ; b
0df7: dw $10be  ; c

0df9: db $13,$81,$00,$00
0dfd: db $11,$89,$e0,$e0
0e01: db $12,$8b,$e0,$c0
0e05: db $15,$83,$e2,$c0
0e09: db $14,$84,$30,$e0
0e0d: db $14,$7e,$20,$20
0e11: db $14,$79,$e0,$30
0e15: db $32,$85,$e0,$28
0e19: db $33,$92,$e0,$30

; dispatch vcmd
0e1d: 80        setc
0e1e: a8 e0     sbc   a,#$e0
0e20: 1c        asl   a
0e21: 4d        push  x
0e22: 5d        mov   x,a
0e23: 1f 26 0e  jmp   ($0e26+x)

; vcmd dispatch table
0e26: dw $0f25  ; e0 - goto
0e28: dw $0f35  ; e1 - call subroutine
0e2a: dw $0f59  ; e2 - end subroutine
0e2c: dw $0f83  ; e3
0e2e: dw $0fc0  ; e4
0e30: dw $0fda  ; e5
0e32: dw $0ffa  ; e6
0e34: dw $1004  ; e7
0e36: dw $1015  ; e8 - set instrument
0e38: dw $1023  ; e9
0e3a: dw $1056  ; ea
0e3c: dw $1065  ; eb
0e3e: dw $10d3  ; ec
0e40: dw $10f3  ; ed
0e42: dw $111d  ; ee
0e44: dw $1114  ; ef
0e46: dw $1168  ; f0
0e48: dw $0eb0  ; f1
0e4a: dw $0eb5  ; f2
0e4c: dw $0e9f  ; f3
0e4e: dw $1101  ; f4
0e50: dw $0e6b  ; f5
0e52: dw $0ee6  ; f6
0e54: dw $0efc  ; f7
0e56: dw $0f14  ; f8 - set ADSR
0e58: dw $0eba  ; f9 - set noise frequency and ADSR
0e5a: dw $0ed7  ; fa - noise off
0e5c: dw $1015  ; fb - set instrument (duplicated)
0e5e: dw $0e60  ; fc

; vcmd fc
0e60: ce        pop   x
0e61: fc        inc   y
0e62: f7 08     mov   a,($08)+y
0e64: d5 00 04  mov   $0400+x,a
0e67: fc        inc   y
0e68: 5f 8f 0c  jmp   $0c8f

; vcmd f5
0e6b: ce        pop   x
0e6c: fc        inc   y
0e6d: f7 08     mov   a,($08)+y
0e6f: 68 74     cmp   a,#$74
0e71: 90 05     bcc   $0e78
0e73: f0 03     beq   $0e78
0e75: f4 50     mov   a,$50+x
0e77: dc        dec   y
0e78: d4 c0     mov   $c0+x,a
0e7a: d4 50     mov   $50+x,a
0e7c: fc        inc   y
0e7d: dd        mov   a,y
0e7e: 60        clrc
0e7f: 84 08     adc   a,$08
0e81: d5 00 02  mov   $0200+x,a
0e84: e4 09     mov   a,$09
0e86: 88 00     adc   a,#$00
0e88: d5 10 02  mov   $0210+x,a
0e8b: f7 08     mov   a,($08)+y
0e8d: 68 f5     cmp   a,#$f5
0e8f: d0 04     bne   $0e95
0e91: 09 34 e2  or    ($e2),($34)
0e94: 6f        ret

0e95: fa 34 11  mov   ($11),($34)
0e98: 58 ff 11  eor   $11,#$ff
0e9b: 29 11 e2  and   ($e2),($11)
0e9e: 6f        ret

; vcmd f3
0e9f: ce        pop   x
0ea0: fc        inc   y
0ea1: f7 08     mov   a,($08)+y
0ea3: c5 f2 03  mov   $03f2,a
0ea6: fc        inc   y
0ea7: f7 08     mov   a,($08)+y
0ea9: c5 f3 03  mov   $03f3,a
0eac: fc        inc   y
0ead: 5f 8f 0c  jmp   $0c8f

; vcmd f1
0eb0: ce        pop   x
0eb1: fc        inc   y
0eb2: 5f 8f 0c  jmp   $0c8f

; vcmd f2
0eb5: ce        pop   x
0eb6: fc        inc   y
0eb7: 5f 8f 0c  jmp   $0c8f

; vcmd f9 - set noise frequency and ADSR
0eba: ce        pop   x
0ebb: 09 34 1d  or    ($1d),($34)
0ebe: fc        inc   y
0ebf: e4 1a     mov   a,$1a
0ec1: 28 e0     and   a,#$e0
0ec3: 17 08     or    a,($08)+y
0ec5: c4 1a     mov   $1a,a             ; arg1: noise frequency
0ec7: fc        inc   y
0ec8: f7 08     mov   a,($08)+y
0eca: d5 90 02  mov   $0290+x,a         ; arg2: ADSR(1)
0ecd: fc        inc   y
0ece: f7 08     mov   a,($08)+y
0ed0: d5 a0 02  mov   $02a0+x,a         ; arg3: ADSR(2)
0ed3: fc        inc   y
0ed4: 5f 8f 0c  jmp   $0c8f

; vcmd fa - noise off
0ed7: ce        pop   x
0ed8: e4 1a     mov   a,$1a
0eda: 28 e0     and   a,#$e0
0edc: c4 1a     mov   $1a,a
0ede: e8 00     mov   a,#$00
0ee0: c4 1d     mov   $1d,a
0ee2: fc        inc   y
0ee3: 5f 8f 0c  jmp   $0c8f

; vcmd f6
0ee6: ce        pop   x
0ee7: e4 34     mov   a,$34
0ee9: 04 e3     or    a,$e3
0eeb: c4 e3     mov   $e3,a
0eed: 09 34 18  or    ($18),($34)
0ef0: e4 34     mov   a,$34
0ef2: 48 ff     eor   a,#$ff
0ef4: 24 19     and   a,$19
0ef6: c4 19     mov   $19,a
0ef8: fc        inc   y
0ef9: 5f 8f 0c  jmp   $0c8f

; vcmd f7
0efc: ce        pop   x
0efd: e4 34     mov   a,$34
0eff: 48 ff     eor   a,#$ff
0f01: 24 e3     and   a,$e3
0f03: c4 e3     mov   $e3,a
0f05: 09 34 19  or    ($19),($34)
0f08: e4 34     mov   a,$34
0f0a: 48 ff     eor   a,#$ff
0f0c: 24 18     and   a,$18
0f0e: c4 18     mov   $18,a
0f10: fc        inc   y
0f11: 5f 8f 0c  jmp   $0c8f

; vcmd f8 - set ADSR
0f14: ce        pop   x
0f15: fc        inc   y
0f16: f7 08     mov   a,($08)+y
0f18: d5 90 02  mov   $0290+x,a         ; arg1: ADSR(1)
0f1b: fc        inc   y
0f1c: f7 08     mov   a,($08)+y
0f1e: d5 a0 02  mov   $02a0+x,a         ; arg2: ADSR(2)
0f21: fc        inc   y
0f22: 5f 8f 0c  jmp   $0c8f

; vcmd e0 - goto
0f25: ce        pop   x
0f26: fc        inc   y
0f27: f7 08     mov   a,($08)+y
0f29: d5 00 02  mov   $0200+x,a         ; arg1: voice address (lo)
0f2c: fc        inc   y
0f2d: f7 08     mov   a,($08)+y
0f2f: d5 10 02  mov   $0210+x,a         ; arg2: voice address (hi)
0f32: 5f 83 0c  jmp   $0c83

; vcmd e1 - call subroutine
0f35: ce        pop   x
0f36: fc        inc   y
0f37: f7 08     mov   a,($08)+y
0f39: d5 00 02  mov   $0200+x,a         ; arg1: voice address (lo)
0f3c: fc        inc   y
0f3d: f7 08     mov   a,($08)+y
0f3f: d5 10 02  mov   $0210+x,a         ; arg2: voice address (hi)
0f42: fc        inc   y
0f43: dd        mov   a,y
0f44: 60        clrc
0f45: 84 08     adc   a,$08
0f47: c4 08     mov   $08,a
0f49: 98 00 09  adc   $09,#$00
0f4c: e4 08     mov   a,$08
0f4e: d5 20 02  mov   $0220+x,a
0f51: e4 09     mov   a,$09
0f53: d5 30 02  mov   $0230+x,a         ; save return address
0f56: 5f 83 0c  jmp   $0c83

; vcmd e2 - end subroutine
0f59: ce        pop   x
0f5a: f5 20 02  mov   a,$0220+x
0f5d: 68 00     cmp   a,#$00
0f5f: d0 0b     bne   $0f6c
0f61: f5 30 02  mov   a,$0230+x
0f64: 68 00     cmp   a,#$00
0f66: d0 04     bne   $0f6c
0f68: fc        inc   y                 ; skip through if return address is 0
0f69: 5f 8f 0c  jmp   $0c8f
; return from subroutine
0f6c: f5 20 02  mov   a,$0220+x
0f6f: d5 00 02  mov   $0200+x,a
0f72: f5 30 02  mov   a,$0230+x
0f75: d5 10 02  mov   $0210+x,a         ; pop return address
0f78: e8 00     mov   a,#$00
0f7a: d5 20 02  mov   $0220+x,a
0f7d: d5 30 02  mov   $0230+x,a         ; clear return address
0f80: 5f 83 0c  jmp   $0c83

; vcmd e3
0f83: ce        pop   x
0f84: fc        inc   y
0f85: f7 08     mov   a,($08)+y
0f87: c4 3d     mov   $3d,a
0f89: f0 0b     beq   $0f96
0f8b: 6d        push  y
0f8c: e8 d0     mov   a,#$d0
0f8e: 8d 6d     mov   y,#$6d            ; ESA
0f90: 3f fd 13  call  $13fd
0f93: ee        pop   y
0f94: 2f 09     bra   $0f9f
0f96: 6d        push  y
0f97: e8 fe     mov   a,#$fe
0f99: 8d 6d     mov   y,#$6d            ; ESA
0f9b: 3f fd 13  call  $13fd
0f9e: ee        pop   y
0f9f: fc        inc   y
0fa0: f7 08     mov   a,($08)+y
0fa2: c4 1f     mov   $1f,a
0fa4: fc        inc   y
0fa5: f7 08     mov   a,($08)+y
0fa7: c4 3a     mov   $3a,a
0fa9: fc        inc   y
0faa: f7 08     mov   a,($08)+y
0fac: c4 3b     mov   $3b,a
0fae: fc        inc   y
0faf: f7 08     mov   a,($08)+y
0fb1: c4 3c     mov   $3c,a
0fb3: e4 1a     mov   a,$1a
0fb5: 28 df     and   a,#$df
0fb7: c4 1a     mov   $1a,a
0fb9: 8f 05 39  mov   $39,#$05
0fbc: fc        inc   y
0fbd: 5f 8f 0c  jmp   $0c8f

; vcmd e4
0fc0: ce        pop   x
0fc1: c8 08     cmp   x,#$08
0fc3: b0 0e     bcs   $0fd3
0fc5: e4 34     mov   a,$34
0fc7: 24 36     and   a,$36
0fc9: f0 05     beq   $0fd0
0fcb: 09 34 4b  or    ($4b),($34)
0fce: 2f 06     bra   $0fd6
0fd0: 09 34 4b  or    ($4b),($34)
0fd3: 09 34 3f  or    ($3f),($34)
0fd6: fc        inc   y
0fd7: 5f 8f 0c  jmp   $0c8f

; vcmd e5
0fda: ce        pop   x
0fdb: fa 34 11  mov   ($11),($34)
0fde: 58 ff 11  eor   $11,#$ff
0fe1: c8 08     cmp   x,#$08
0fe3: b0 0e     bcs   $0ff3
0fe5: e4 34     mov   a,$34
0fe7: 24 36     and   a,$36
0fe9: f0 05     beq   $0ff0
0feb: 29 11 4b  and   ($4b),($11)
0fee: 2f 06     bra   $0ff6
0ff0: 29 11 4b  and   ($4b),($11)
0ff3: 29 11 3f  and   ($3f),($11)
0ff6: fc        inc   y
0ff7: 5f 8f 0c  jmp   $0c8f

; vcmd e6
0ffa: ce        pop   x
0ffb: e4 34     mov   a,$34
0ffd: 48 ff     eor   a,#$ff
0fff: 24 37     and   a,$37
1001: c4 37     mov   $37,a
1003: 6f        ret

; vcmd e7
1004: ce        pop   x
1005: fc        inc   y
1006: f7 08     mov   a,($08)+y
1008: d5 60 02  mov   $0260+x,a
100b: fc        inc   y
100c: f7 08     mov   a,($08)+y
100e: d5 70 02  mov   $0270+x,a
1011: fc        inc   y
1012: 5f 8f 0c  jmp   $0c8f

; vcmd e8, fb - set instrument
1015: ce        pop   x
1016: fc        inc   y
1017: f7 08     mov   a,($08)+y
1019: d5 50 02  mov   $0250+x,a
101c: 3f 39 0c  call  $0c39             ; set instrument
101f: fc        inc   y
1020: 5f 8f 0c  jmp   $0c8f

; vcmd e9
1023: ce        pop   x
1024: 4d        push  x
1025: fc        inc   y
1026: f7 08     mov   a,($08)+y
1028: 9f        xcn   a
1029: d8 10     mov   $10,x
102b: 60        clrc
102c: 84 10     adc   a,$10
102e: 5d        mov   x,a
102f: f4 a0     mov   a,$a0+x
1031: f0 0c     beq   $103f
1033: fc        inc   y
1034: 9b a0     dec   $a0+x
1036: d0 0e     bne   $1046
1038: fc        inc   y
1039: fc        inc   y
103a: fc        inc   y
103b: ce        pop   x
103c: 5f 8f 0c  jmp   $0c8f

103f: fc        inc   y
1040: f7 08     mov   a,($08)+y
1042: d4 a0     mov   $a0+x,a
1044: 9b a0     dec   $a0+x
1046: ce        pop   x
1047: fc        inc   y
1048: f7 08     mov   a,($08)+y
104a: d5 00 02  mov   $0200+x,a
104d: fc        inc   y
104e: f7 08     mov   a,($08)+y
1050: d5 10 02  mov   $0210+x,a
1053: 5f 83 0c  jmp   $0c83

; vcmd ea
1056: ce        pop   x
1057: fc        inc   y
1058: f7 08     mov   a,($08)+y
105a: 60        clrc
105b: 95 40 02  adc   a,$0240+x
105e: d5 40 02  mov   $0240+x,a
1061: fc        inc   y
1062: 5f 8f 0c  jmp   $0c8f

; vcmd eb
1065: ce        pop   x
1066: fc        inc   y
1067: f7 08     mov   a,($08)+y
1069: d4 60     mov   $60+x,a
106b: fc        inc   y
106c: f7 08     mov   a,($08)+y
106e: d5 f0 02  mov   $02f0+x,a
1071: fc        inc   y
1072: f7 08     mov   a,($08)+y
1074: 80        setc
1075: a8 74     sbc   a,#$74
1077: 60        clrc
1078: 95 40 02  adc   a,$0240+x
107b: c4 38     mov   $38,a
107d: c4 40     mov   $40,a
107f: 3f 41 0d  call  $0d41
1082: fa 0b 0e  mov   ($0e),($0b)
1085: fa 0c 0f  mov   ($0f),($0c)
1088: fc        inc   y
1089: 3f 8f 0c  call  $0c8f
108c: e4 38     mov   a,$38
108e: d5 00 03  mov   $0300+x,a
1091: f5 f0 02  mov   a,$02f0+x
1094: c4 11     mov   $11,a
1096: e4 40     mov   a,$40
1098: 75 00 03  cmp   a,$0300+x
109b: 90 16     bcc   $10b3
109d: e4 0e     mov   a,$0e
109f: d5 b0 02  mov   $02b0+x,a
10a2: e4 0f     mov   a,$0f
10a4: d5 c0 02  mov   $02c0+x,a
10a7: e4 34     mov   a,$34
10a9: 04 42     or    a,$42
10ab: c4 42     mov   $42,a
10ad: ba 0e     movw  ya,$0e
10af: 9a 0b     subw  ya,$0b
10b1: 2f 14     bra   $10c7
10b3: e4 0e     mov   a,$0e
10b5: d5 b0 02  mov   $02b0+x,a
10b8: e4 0f     mov   a,$0f
10ba: d5 c0 02  mov   $02c0+x,a
10bd: e4 34     mov   a,$34
10bf: 04 41     or    a,$41
10c1: c4 41     mov   $41,a
10c3: ba 0b     movw  ya,$0b
10c5: 9a 0e     subw  ya,$0e
10c7: 4d        push  x
10c8: f8 11     mov   x,$11
10ca: 9e        div   ya,x
10cb: ce        pop   x
10cc: d4 80     mov   $80+x,a
10ce: dd        mov   a,y
10cf: d5 e0 02  mov   $02e0+x,a
10d2: 6f        ret

; vcmd ec
10d3: ce        pop   x
10d4: fc        inc   y
10d5: f7 08     mov   a,($08)+y
10d7: d5 10 03  mov   $0310+x,a
10da: d5 50 03  mov   $0350+x,a
10dd: fc        inc   y
10de: f7 08     mov   a,($08)+y
10e0: d5 20 03  mov   $0320+x,a
10e3: fc        inc   y
10e4: f7 08     mov   a,($08)+y
10e6: d5 30 03  mov   $0330+x,a
10e9: fa 34 11  mov   ($11),($34)
10ec: 09 11 47  or    ($47),($11)
10ef: fc        inc   y
10f0: 5f 8f 0c  jmp   $0c8f

; vcmd ed
10f3: ce        pop   x
10f4: fa 34 11  mov   ($11),($34)
10f7: 58 ff 11  eor   $11,#$ff
10fa: 29 11 47  and   ($47),($11)
10fd: fc        inc   y
10fe: 5f 8f 0c  jmp   $0c8f

; vcmd f4
1101: ce        pop   x
1102: fc        inc   y
1103: e8 00     mov   a,#$00
1105: c5 6e 02  mov   $026e,a
1108: c5 6f 02  mov   $026f,a
110b: c5 7e 02  mov   $027e,a
110e: c5 7f 02  mov   $027f,a
1111: 5f 8f 0c  jmp   $0c8f

; vcmd ef
1114: 8f 01 4e  mov   $4e,#$01
1117: e8 00     mov   a,#$00
1119: c4 14     mov   $14,a
111b: c4 15     mov   $15,a
; vcmd ee
111d: ce        pop   x
111e: 09 34 19  or    ($19),($34)
1121: fa 34 11  mov   ($11),($34)
1124: 58 ff 11  eor   $11,#$ff
1127: 29 11 36  and   ($36),($11)
112a: 29 11 37  and   ($37),($11)
112d: fa 34 11  mov   ($11),($34)
1130: 58 ff 11  eor   $11,#$ff
1133: 29 11 47  and   ($47),($11)
1136: 8f 00 4a  mov   $4a,#$00
1139: 29 11 3f  and   ($3f),($11)
113c: e4 4b     mov   a,$4b
113e: 24 34     and   a,$34
1140: c4 39     mov   $39,a
1142: 09 39 3f  or    ($3f),($39)
1145: 8f 05 39  mov   $39,#$05
1148: 8f 00 4f  mov   $4f,#$00
114b: e4 1d     mov   a,$1d
114d: 64 34     cmp   a,$34
114f: d0 04     bne   $1155
1151: e8 00     mov   a,#$00
1153: c4 1d     mov   $1d,a
1155: 6f        ret

1156: 60        clrc
1157: 89 11 08  adc   ($08),($11)
115a: 98 00 09  adc   $09,#$00
115d: e4 08     mov   a,$08
115f: d5 00 02  mov   $0200+x,a
1162: e4 09     mov   a,$09
1164: d5 10 02  mov   $0210+x,a
1167: 6f        ret

; vcmd f0
1168: fc        inc   y
1169: f7 08     mov   a,($08)+y
116b: 1c        asl   a
116c: 5d        mov   x,a
116d: f5 21 18  mov   a,$1821+x
1170: c4 0a     mov   $0a,a
1172: f5 2b 18  mov   a,$182b+x
1175: c4 0c     mov   $0c,a
1177: 3d        inc   x
1178: f5 21 18  mov   a,$1821+x
117b: c4 0b     mov   $0b,a
117d: f5 2b 18  mov   a,$182b+x
1180: c4 0d     mov   $0d,a
1182: ce        pop   x
1183: e4 0a     mov   a,$0a
1185: d5 60 03  mov   $0360+x,a
1188: d5 a0 03  mov   $03a0+x,a
118b: e4 0b     mov   a,$0b
118d: d5 70 03  mov   $0370+x,a
1190: d5 b0 03  mov   $03b0+x,a
1193: e4 0c     mov   a,$0c
1195: d5 80 03  mov   $0380+x,a
1198: d5 c0 03  mov   $03c0+x,a
119b: e4 0d     mov   a,$0d
119d: d5 90 03  mov   $0390+x,a
11a0: d5 d0 03  mov   $03d0+x,a
11a3: fa 34 11  mov   ($11),($34)
11a6: 09 11 e1  or    ($e1),($11)
11a9: fc        inc   y
11aa: 5f 8f 0c  jmp   $0c8f

11ad: e4 41     mov   a,$41
11af: 24 34     and   a,$34
11b1: d0 07     bne   $11ba
11b3: e4 42     mov   a,$42
11b5: 24 34     and   a,$34
11b7: d0 37     bne   $11f0
11b9: 6f        ret

11ba: f4 60     mov   a,$60+x
11bc: f0 03     beq   $11c1
11be: 9b 60     dec   $60+x
11c0: 6f        ret

11c1: f5 f0 02  mov   a,$02f0+x
11c4: d0 0a     bne   $11d0
11c6: fa 41 11  mov   ($11),($41)
11c9: 3f 27 12  call  $1227
11cc: fa 11 41  mov   ($41),($11)
11cf: 6f        ret

11d0: f5 f0 02  mov   a,$02f0+x
11d3: 9c        dec   a
11d4: d5 f0 02  mov   $02f0+x,a
11d7: 60        clrc
11d8: f5 e0 02  mov   a,$02e0+x
11db: 94 90     adc   a,$90+x
11dd: d4 90     mov   $90+x,a
11df: f4 80     mov   a,$80+x
11e1: 95 b0 02  adc   a,$02b0+x
11e4: d5 b0 02  mov   $02b0+x,a
11e7: e8 00     mov   a,#$00
11e9: 95 c0 02  adc   a,$02c0+x
11ec: d5 c0 02  mov   $02c0+x,a
11ef: 6f        ret

11f0: f4 60     mov   a,$60+x
11f2: f0 03     beq   $11f7
11f4: 9b 60     dec   $60+x
11f6: 6f        ret

11f7: f5 f0 02  mov   a,$02f0+x
11fa: d0 0a     bne   $1206
11fc: fa 42 11  mov   ($11),($42)
11ff: 3f 27 12  call  $1227
1202: fa 11 42  mov   ($42),($11)
1205: 6f        ret

1206: f5 f0 02  mov   a,$02f0+x
1209: 9c        dec   a
120a: d5 f0 02  mov   $02f0+x,a
120d: 60        clrc
120e: f5 e0 02  mov   a,$02e0+x
1211: 94 90     adc   a,$90+x
1213: ed        notc
1214: d4 90     mov   $90+x,a
1216: f5 b0 02  mov   a,$02b0+x
1219: b4 80     sbc   a,$80+x
121b: d5 b0 02  mov   $02b0+x,a
121e: f5 c0 02  mov   a,$02c0+x
1221: a8 00     sbc   a,#$00
1223: d5 c0 02  mov   $02c0+x,a
1226: 6f        ret

1227: e4 34     mov   a,$34
1229: 48 ff     eor   a,#$ff
122b: 24 11     and   a,$11
122d: c4 11     mov   $11,a
122f: f5 00 03  mov   a,$0300+x
1232: c4 38     mov   $38,a
1234: 3f 41 0d  call  $0d41
1237: 6f        ret

1238: fa 34 11  mov   ($11),($34)
123b: 29 47 11  and   ($11),($47)
123e: d0 01     bne   $1241
1240: 6f        ret

1241: f5 10 03  mov   a,$0310+x
1244: f0 05     beq   $124b
1246: 9c        dec   a
1247: d5 10 03  mov   $0310+x,a
124a: 6f        ret

124b: f5 40 03  mov   a,$0340+x
124e: d0 0b     bne   $125b
1250: f5 30 03  mov   a,$0330+x
1253: 48 80     eor   a,#$80
1255: d5 30 03  mov   $0330+x,a
1258: f5 20 03  mov   a,$0320+x
125b: 9c        dec   a
125c: d5 40 03  mov   $0340+x,a
125f: fa 34 11  mov   ($11),($34)
1262: 29 41 11  and   ($11),($41)
1265: d0 32     bne   $1299
1267: fa 34 11  mov   ($11),($34)
126a: 29 42 11  and   ($11),($42)
126d: d0 2a     bne   $1299
126f: f5 30 03  mov   a,$0330+x
1272: 10 13     bpl   $1287
1274: 28 7f     and   a,#$7f
1276: 60        clrc
1277: 95 b0 02  adc   a,$02b0+x
127a: d5 b0 02  mov   $02b0+x,a
127d: e8 00     mov   a,#$00
127f: 95 c0 02  adc   a,$02c0+x
1282: d5 c0 02  mov   $02c0+x,a
1285: 2f 12     bra   $1299
1287: f5 b0 02  mov   a,$02b0+x
128a: 80        setc
128b: b5 30 03  sbc   a,$0330+x
128e: d5 b0 02  mov   $02b0+x,a
1291: f5 c0 02  mov   a,$02c0+x
1294: a8 00     sbc   a,#$00
1296: d5 c0 02  mov   $02c0+x,a
1299: 6f        ret

129a: e4 4c     mov   a,$4c
129c: f0 2e     beq   $12cc
129e: e4 4d     mov   a,$4d
12a0: d0 2a     bne   $12cc
12a2: fa 4c 4d  mov   ($4d),($4c)
12a5: e4 14     mov   a,$14
12a7: f0 02     beq   $12ab
12a9: 8b 14     dec   $14
12ab: e4 15     mov   a,$15
12ad: f0 02     beq   $12b1
12af: 8b 15     dec   $15
12b1: e4 3a     mov   a,$3a
12b3: f0 02     beq   $12b7
12b5: 8b 3a     dec   $3a
12b7: e4 3b     mov   a,$3b
12b9: f0 02     beq   $12bd
12bb: 8b 3b     dec   $3b
12bd: e4 14     mov   a,$14
12bf: 04 15     or    a,$15
12c1: d0 09     bne   $12cc
12c3: e4 3a     mov   a,$3a
12c5: 04 3b     or    a,$3b
12c7: d0 03     bne   $12cc
12c9: 8f 00 4c  mov   $4c,#$00
12cc: 8b 4d     dec   $4d
12ce: 6f        ret

12cf: fa 34 11  mov   ($11),($34)
12d2: 29 e1 11  and   ($11),($e1)
12d5: d0 01     bne   $12d8
12d7: 6f        ret

12d8: 8d 00     mov   y,#$00
12da: f5 60 03  mov   a,$0360+x
12dd: c4 0a     mov   $0a,a
12df: f5 70 03  mov   a,$0370+x
12e2: c4 0b     mov   $0b,a
12e4: f7 0a     mov   a,($0a)+y
12e6: 68 fe     cmp   a,#$fe
12e8: d0 0e     bne   $12f8
12ea: f5 a0 03  mov   a,$03a0+x
12ed: d5 60 03  mov   $0360+x,a
12f0: f5 b0 03  mov   a,$03b0+x
12f3: d5 70 03  mov   $0370+x,a
12f6: 2f e0     bra   $12d8
12f8: 68 ff     cmp   a,#$ff
12fa: d0 0a     bne   $1306
12fc: fa 34 11  mov   ($11),($34)
12ff: 58 ff 11  eor   $11,#$ff
1302: 29 11 e1  and   ($e1),($11)
1305: 6f        ret

1306: d5 60 02  mov   $0260+x,a
1309: f5 80 03  mov   a,$0380+x
130c: c4 0c     mov   $0c,a
130e: f5 90 03  mov   a,$0390+x
1311: c4 0d     mov   $0d,a
1313: f7 0c     mov   a,($0c)+y
1315: 68 fe     cmp   a,#$fe
1317: d0 0e     bne   $1327
1319: f5 c0 03  mov   a,$03c0+x
131c: d5 80 03  mov   $0380+x,a
131f: f5 d0 03  mov   a,$03d0+x
1322: d5 90 03  mov   $0390+x,a
1325: 2f e2     bra   $1309
1327: 68 ff     cmp   a,#$ff
1329: d0 0a     bne   $1335
132b: fa 34 11  mov   ($11),($34)
132e: 58 ff 11  eor   $11,#$ff
1331: 29 11 e1  and   ($e1),($11)
1334: 6f        ret

1335: d5 70 02  mov   $0270+x,a
1338: e8 01     mov   a,#$01
133a: 60        clrc
133b: 95 60 03  adc   a,$0360+x
133e: d5 60 03  mov   $0360+x,a
1341: e8 00     mov   a,#$00
1343: 95 70 03  adc   a,$0370+x
1346: d5 70 03  mov   $0370+x,a
1349: e8 01     mov   a,#$01
134b: 60        clrc
134c: 95 80 03  adc   a,$0380+x
134f: d5 80 03  mov   $0380+x,a
1352: e8 00     mov   a,#$00
1354: 95 90 03  adc   a,$0390+x
1357: d5 90 03  mov   $0390+x,a
135a: 6f        ret

135b: f4 d0     mov   a,$d0+x
135d: d0 30     bne   $138f
135f: f4 c0     mov   a,$c0+x
1361: 68 01     cmp   a,#$01
1363: d0 2a     bne   $138f
1365: e4 e2     mov   a,$e2
1367: 24 34     and   a,$34
1369: d0 24     bne   $138f
136b: e4 e3     mov   a,$e3
136d: 24 34     and   a,$34
136f: d0 1e     bne   $138f
1371: fa 34 11  mov   ($11),($34)
1374: 58 ff 11  eor   $11,#$ff
1377: 29 11 41  and   ($41),($11)
137a: 29 11 42  and   ($42),($11)
137d: c8 08     cmp   x,#$08
137f: b0 08     bcs   $1389
1381: e4 36     mov   a,$36
1383: 24 34     and   a,$34
1385: f0 02     beq   $1389
1387: 2f 63     bra   $13ec
1389: 29 11 18  and   ($18),($11)
138c: 09 34 19  or    ($19),($34)
138f: c8 08     cmp   x,#$08
1391: b0 08     bcs   $139b
1393: e4 36     mov   a,$36
1395: 24 34     and   a,$34
1397: f0 02     beq   $139b
1399: 2f 51     bra   $13ec
139b: f5 ed 13  mov   a,$13ed+x
139e: fd        mov   y,a
139f: f5 60 02  mov   a,$0260+x
13a2: 60        clrc
13a3: 95 20 04  adc   a,$0420+x
13a6: cc f2 00  mov   $00f2,y           ; VOL(L)
13a9: c5 f3 00  mov   $00f3,a
13ac: fc        inc   y
13ad: f5 70 02  mov   a,$0270+x
13b0: 60        clrc
13b1: 95 30 04  adc   a,$0430+x
13b4: cc f2 00  mov   $00f2,y           ; VOL(R)
13b7: c5 f3 00  mov   $00f3,a
13ba: fc        inc   y
13bb: f5 b0 02  mov   a,$02b0+x
13be: cc f2 00  mov   $00f2,y           ; P(L)
13c1: c5 f3 00  mov   $00f3,a
13c4: fc        inc   y
13c5: f5 c0 02  mov   a,$02c0+x
13c8: cc f2 00  mov   $00f2,y           ; P(H)
13cb: c5 f3 00  mov   $00f3,a
13ce: fc        inc   y
13cf: f5 80 02  mov   a,$0280+x
13d2: cc f2 00  mov   $00f2,y           ; SRCN
13d5: c5 f3 00  mov   $00f3,a
13d8: fc        inc   y
13d9: f5 90 02  mov   a,$0290+x
13dc: cc f2 00  mov   $00f2,y           ; ADSR(1)
13df: c5 f3 00  mov   $00f3,a
13e2: fc        inc   y
13e3: f5 a0 02  mov   a,$02a0+x
13e6: cc f2 00  mov   $00f2,y           ; ADSR(2)
13e9: c5 f3 00  mov   $00f3,a
13ec: 6f        ret

13ed: db $00,$10,$20,$30,$40,$50,$60,$70
13f5: db $00,$10,$20,$30,$40,$50,$60,$70

; set A to dsp register Y
13fd: cc f2 00  mov   $00f2,y
1400: c5 f3 00  mov   $00f3,a
1403: 6f        ret

; get dsp register Y to A
1404: cc f2 00  mov   $00f2,y
1407: e5 f3 00  mov   a,$00f3
140a: 6f        ret

140b: ac f5 03  inc   $03f5
140e: e4 36     mov   a,$36
1410: 28 80     and   a,#$80
1412: d0 01     bne   $1415
1414: 6f        ret

1415: e9 f6 03  mov   x,$03f6
1418: 30 31     bmi   $144b
141a: f5 d9 14  mov   a,$14d9+x
141d: c4 07     mov   $07,a
141f: c4 0b     mov   $0b,a
1421: f5 59 15  mov   a,$1559+x
1424: c4 08     mov   $08,a
1426: c4 0c     mov   $0c,a
1428: 2f 17     bra   $1441
142a: e5 bf 02  mov   a,$02bf
142d: c4 07     mov   $07,a
142f: e5 cf 02  mov   a,$02cf
1432: c4 08     mov   $08,a
1434: f5 d9 14  mov   a,$14d9+x
1437: c4 0b     mov   $0b,a
1439: f5 59 15  mov   a,$1559+x
143c: c4 0c     mov   $0c,a
143e: 3f 8d 14  call  $148d
1441: e4 07     mov   a,$07
1443: c5 bf 02  mov   $02bf,a
1446: e4 08     mov   a,$08
1448: c5 cf 02  mov   $02cf,a
144b: 6f        ret

144c: e4 36     mov   a,$36
144e: 28 40     and   a,#$40
1450: d0 01     bne   $1453
1452: 6f        ret

1453: e5 f7 03  mov   a,$03f7
1456: 10 f3     bpl   $144b
1458: 28 7f     and   a,#$7f
145a: 5d        mov   x,a
145b: f5 d9 14  mov   a,$14d9+x
145e: c4 07     mov   $07,a
1460: c4 0b     mov   $0b,a
1462: f5 59 15  mov   a,$1559+x
1465: c4 08     mov   $08,a
1467: c4 0c     mov   $0c,a
1469: 2f 17     bra   $1482
146b: e5 be 02  mov   a,$02be
146e: c4 07     mov   $07,a
1470: e5 ce 02  mov   a,$02ce
1473: c4 08     mov   $08,a
1475: f5 d9 14  mov   a,$14d9+x
1478: c4 0b     mov   $0b,a
147a: f5 59 15  mov   a,$1559+x
147d: c4 0c     mov   $0c,a
147f: 3f 8d 14  call  $148d
1482: e4 07     mov   a,$07
1484: c5 be 02  mov   $02be,a
1487: e4 08     mov   a,$08
1489: c5 ce 02  mov   $02ce,a
148c: 6f        ret

148d: e4 0c     mov   a,$0c
148f: 64 08     cmp   a,$08
1491: 90 14     bcc   $14a7
1493: d0 08     bne   $149d
1495: e4 0b     mov   a,$0b
1497: 64 07     cmp   a,$07
1499: 90 0c     bcc   $14a7
149b: f0 14     beq   $14b1
149d: e8 01     mov   a,#$01
149f: c4 09     mov   $09,a
14a1: e8 00     mov   a,#$00
14a3: c4 0a     mov   $0a,a
14a5: 2f 24     bra   $14cb
14a7: e8 ff     mov   a,#$ff
14a9: c4 09     mov   $09,a
14ab: e8 ff     mov   a,#$ff
14ad: c4 0a     mov   $0a,a
14af: 2f 1a     bra   $14cb
14b1: 6f        ret

14b2: e5 f5 03  mov   a,$03f5
14b5: 28 02     and   a,#$02
14b7: f0 0a     beq   $14c3
14b9: e8 04     mov   a,#$04
14bb: c4 09     mov   $09,a
14bd: e8 00     mov   a,#$00
14bf: c4 0a     mov   $0a,a
14c1: 2f 08     bra   $14cb
14c3: e8 fc     mov   a,#$fc
14c5: c4 09     mov   $09,a
14c7: e8 ff     mov   a,#$ff
14c9: c4 0a     mov   $0a,a
14cb: e4 07     mov   a,$07
14cd: 60        clrc
14ce: 84 09     adc   a,$09
14d0: c4 07     mov   $07,a
14d2: e4 08     mov   a,$08
14d4: 84 0a     adc   a,$0a
14d6: c4 08     mov   $08,a
14d8: 6f        ret

14d9: db $9c,$ba,$d8,$f6,$14,$3c,$50,$78
14d1: db $96,$b4,$d2,$f0,$0e,$2c,$40,$5e
14e9: db $72,$90,$a4,$b8,$cc,$e0,$f4,$08
14e1: db $12,$26,$3a,$4e,$62,$6c,$80,$94
14f9: db $9e,$a8,$bc,$c6,$da,$e4,$ee,$02
14f1: db $0c,$20,$2a,$3e,$48,$52,$66,$70
1509: db $84,$8e,$a2,$ac,$c0,$ca,$de,$e8
1501: db $fc,$10,$1a,$2e,$38,$4c,$56,$6a
1519: db $74,$88,$92,$a6,$b0,$c4,$ce,$e2
1511: db $f6,$00,$14,$1e,$32,$3c,$50,$5a
1529: db $6e,$78,$8c,$96,$aa,$b4,$c8,$d2
1521: db $e6,$f0,$04,$0e,$22,$2c,$40,$4a
1539: db $54,$64,$74,$84,$94,$a4,$b4,$c4
1541: db $d4,$e4,$f4,$04,$14,$24,$34,$44
1549: db $54,$64,$74,$84,$94,$a4,$b4,$c4
1551: db $d4,$e4,$f4,$04,$14,$24,$34,$44

1559: db $04,$04,$04,$04,$05,$05,$05,$05
1561: db $05,$05,$05,$05,$06,$06,$06,$06
1569: db $06,$06,$06,$06,$06,$06,$06,$07
1571: db $07,$07,$07,$07,$07,$07,$07,$07
1579: db $07,$07,$07,$07,$07,$07,$07,$08
1581: db $08,$08,$08,$08,$08,$08,$08,$08
1589: db $08,$08,$08,$08,$08,$08,$08,$08
1591: db $08,$09,$09,$09,$09,$09,$09,$09
1599: db $09,$09,$09,$09,$09,$09,$09,$09
15a1: db $09,$0a,$0a,$0a,$0a,$0a,$0a,$0a
15a9: db $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a
15b1: db $0a,$0a,$0b,$0b,$0b,$0b,$0b,$0b
15b9: db $0b,$0b,$0b,$0b,$0b,$0b,$0b,$0b
15c1: db $0b,$0b,$0b,$0c,$0c,$0c,$0c,$0c
15c9: db $0c,$0c,$0c,$0c,$0c,$0c,$0c,$0c
15d1: db $0c,$0c,$0c,$0d,$0d,$0d,$0d,$0d

15d9: e4 36     mov   a,$36
15db: 28 02     and   a,#$02
15dd: d0 01     bne   $15e0
15df: 6f        ret

15e0: e5 f9 03  mov   a,$03f9
15e3: 28 3f     and   a,#$3f
15e5: 1c        asl   a
15e6: 5d        mov   x,a
15e7: f5 25 16  mov   a,$1625+x
15ea: c5 b9 02  mov   $02b9,a
15ed: f5 26 16  mov   a,$1626+x
15f0: c5 c9 02  mov   $02c9,a
15f3: e5 f9 03  mov   a,$03f9
15f6: 28 e0     and   a,#$e0
15f8: d0 0d     bne   $1607
15fa: f5 a5 16  mov   a,$16a5+x
15fd: c5 69 02  mov   $0269,a
1600: f5 a6 16  mov   a,$16a6+x
1603: c5 79 02  mov   $0279,a
1606: 6f        ret

1607: 68 40     cmp   a,#$40
1609: d0 0d     bne   $1618
160b: f5 25 17  mov   a,$1725+x
160e: c5 69 02  mov   $0269,a
1611: f5 26 17  mov   a,$1726+x
1614: c5 79 02  mov   $0279,a
1617: 6f        ret

1618: f5 a3 17  mov   a,$17a3+x
161b: c5 69 02  mov   $0269,a
161e: f5 a4 17  mov   a,$17a4+x
1621: c5 79 02  mov   $0279,a
1624: 6f        ret
