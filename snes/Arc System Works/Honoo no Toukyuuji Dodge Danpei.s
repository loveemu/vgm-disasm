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
0817: 3f ea 11  call  $11ea
081a: e8 fa     mov   a,#$fa
081c: 8d 6d     mov   y,#$6d            ; ESA
081e: 3f ea 11  call  $11ea
0821: 8f 00 00  mov   $00,#$00
0824: 8f 00 01  mov   $01,#$00
0827: 8f 00 02  mov   $02,#$00
082a: 8f 00 03  mov   $03,#$00
082d: 8f 00 e0  mov   $e0,#$00
0830: cd 00     mov   x,#$00
0832: 3f 08 0b  call  $0b08
; main loop
0835: 3f 4a 08  call  $084a
0838: cd 02     mov   x,#$02
083a: e5 fd 00  mov   a,$00fd
083d: f0 fb     beq   $083a             ; wait for timer 0 clock
083f: 4d        push  x
0840: 3f a2 09  call  $09a2
0843: ce        pop   x
0844: 1d        dec   x
0845: d0 f3     bne   $083a
0847: 5f 35 08  jmp   $0835

084a: 3f a2 09  call  $09a2
084d: e4 4e     mov   a,$4e
084f: f0 01     beq   $0852
0851: 6f        ret

0852: e4 4f     mov   a,$4f
0854: d0 00     bne   $0856
0856: e5 f0 03  mov   a,$03f0
0859: 60        clrc
085a: 85 f2 03  adc   a,$03f2
085d: c5 f0 03  mov   $03f0,a
0860: e5 f1 03  mov   a,$03f1
0863: 85 f3 03  adc   a,$03f3
0866: c5 f1 03  mov   $03f1,a
0869: 90 26     bcc   $0891
086b: fa 35 37  mov   ($37),($35)
086e: fa 43 41  mov   ($41),($43)
0871: fa 44 42  mov   ($42),($44)
0874: fa 48 47  mov   ($47),($48)
0877: cd 00     mov   x,#$00
0879: e8 01     mov   a,#$01
087b: c4 34     mov   $34,a
087d: 3f 93 0b  call  $0b93
0880: 3d        inc   x
0881: 0b 34     asl   $34
0883: d0 f8     bne   $087d
0885: fa 37 35  mov   ($35),($37)
0888: fa 41 43  mov   ($43),($41)
088b: fa 42 44  mov   ($44),($42)
088e: fa 47 48  mov   ($48),($47)
0891: fa 36 37  mov   ($37),($36)
0894: fa 45 41  mov   ($41),($45)
0897: fa 46 42  mov   ($42),($46)
089a: fa 49 47  mov   ($47),($49)
089d: cd 08     mov   x,#$08
089f: e8 01     mov   a,#$01
08a1: c4 34     mov   $34,a
08a3: 3f 93 0b  call  $0b93
08a6: 3d        inc   x
08a7: 0b 34     asl   $34
08a9: d0 f8     bne   $08a3
08ab: fa 37 36  mov   ($36),($37)
08ae: fa 41 45  mov   ($45),($41)
08b1: fa 42 46  mov   ($46),($42)
08b4: fa 47 49  mov   ($49),($47)
08b7: 3f 43 09  call  $0943
08ba: 69 2b 1f  cmp   ($1f),($2b)
08bd: f0 09     beq   $08c8
08bf: e4 1f     mov   a,$1f
08c1: c4 2b     mov   $2b,a
08c3: 8d 7d     mov   y,#$7d
08c5: 3f ea 11  call  $11ea             ; EDL
08c8: 69 26 1a  cmp   ($1a),($26)
08cb: f0 09     beq   $08d6
08cd: e4 1a     mov   a,$1a
08cf: c4 26     mov   $26,a
08d1: 8d 6c     mov   y,#$6c
08d3: 3f ea 11  call  $11ea             ; FLG
08d6: 69 25 19  cmp   ($19),($25)
08d9: f0 0c     beq   $08e7
08db: e4 19     mov   a,$19
08dd: c4 25     mov   $25,a
08df: 8d 5c     mov   y,#$5c            ; KOF
08e1: cc f2 00  mov   $00f2,y
08e4: c5 f3 00  mov   $00f3,a
08e7: e4 18     mov   a,$18
08e9: f0 0b     beq   $08f6
08eb: 8d 4c     mov   y,#$4c            ; KON
08ed: cc f2 00  mov   $00f2,y
08f0: c5 f3 00  mov   $00f3,a
08f3: 8f 00 18  mov   $18,#$00
08f6: e4 16     mov   a,$16
08f8: c4 22     mov   $22,a
08fa: 8d 2c     mov   y,#$2c            ; EVOL(L)
08fc: cc f2 00  mov   $00f2,y
08ff: c5 f3 00  mov   $00f3,a
0902: e4 17     mov   a,$17
0904: c4 23     mov   $23,a
0906: 8d 3c     mov   y,#$3c            ; EVOL(R)
0908: cc f2 00  mov   $00f2,y
090b: c5 f3 00  mov   $00f3,a
090e: e4 1b     mov   a,$1b
0910: c4 27     mov   $27,a
0912: 8d 0d     mov   y,#$0d            ; EFB
0914: cc f2 00  mov   $00f2,y
0917: c5 f3 00  mov   $00f3,a
091a: e4 1e     mov   a,$1e
091c: c4 2a     mov   $2a,a
091e: 8d 4d     mov   y,#$4d            ; EON
0920: cc f2 00  mov   $00f2,y
0923: c5 f3 00  mov   $00f3,a
0926: 69 20 14  cmp   ($14),($20)
0929: f0 09     beq   $0934
092b: e4 14     mov   a,$14
092d: c4 20     mov   $20,a
092f: 8d 0c     mov   y,#$0c
0931: 3f ea 11  call  $11ea             ; MVOL(L)
0934: 69 21 15  cmp   ($15),($21)
0937: f0 09     beq   $0942
0939: e4 15     mov   a,$15
093b: c4 21     mov   $21,a
093d: 8d 1c     mov   y,#$1c
093f: 3f ea 11  call  $11ea             ; MVOL(R)
0942: 6f        ret

0943: 69 3e 3d  cmp   ($3d),($3e)
0946: f0 1c     beq   $0964
0948: e4 3d     mov   a,$3d
094a: c4 3e     mov   $3e,a
094c: 1c        asl   a
094d: 1c        asl   a
094e: 1c        asl   a
094f: 5d        mov   x,a
0950: 8d 0f     mov   y,#$0f
0952: f5 7a 09  mov   a,$097a+x
0955: 3f ea 11  call  $11ea             ; set FIR C0-C7
0958: 3d        inc   x
0959: dd        mov   a,y
095a: 60        clrc
095b: 88 10     adc   a,#$10
095d: 68 8f     cmp   a,#$8f
095f: f0 03     beq   $0964
0961: fd        mov   y,a
0962: 2f ee     bra   $0952
0964: e4 39     mov   a,$39
0966: f0 03     beq   $096b
0968: 8b 39     dec   $39
096a: 6f        ret

096b: e4 3f     mov   a,$3f
096d: fa 3f 1e  mov   ($1e),($3f)
0970: fa 3a 16  mov   ($16),($3a)
0973: fa 3b 17  mov   ($17),($3b)
0976: fa 3c 1b  mov   ($1b),($3c)
0979: 6f        ret

097a: db $7f,$00,$00,$00,$00,$00,$00,$00
0982: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
098a: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0992: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
099a: db $25,$36,$28,$0f,$f7,$ed,$fe,$10

09a2: e5 f5 00  mov   a,$00f5
09a5: 65 f5 00  cmp   a,$00f5
09a8: d0 f8     bne   $09a2
09aa: c4 01     mov   $01,a
09ac: c5 f5 00  mov   $00f5,a
09af: e5 f4 00  mov   a,$00f4
09b2: 65 f4 00  cmp   a,$00f4
09b5: d0 f8     bne   $09af
09b7: c4 00     mov   $00,a
09b9: c5 f4 00  mov   $00f4,a
09bc: e5 f7 00  mov   a,$00f7
09bf: 65 f7 00  cmp   a,$00f7
09c2: d0 f8     bne   $09bc
09c4: 64 03     cmp   a,$03
09c6: f0 09     beq   $09d1
09c8: c4 03     mov   $03,a
09ca: c5 f7 00  mov   $00f7,a
09cd: 08 00     or    a,#$00
09cf: d0 19     bne   $09ea
09d1: e5 f6 00  mov   a,$00f6
09d4: 65 f6 00  cmp   a,$00f6
09d7: d0 f8     bne   $09d1
09d9: 64 02     cmp   a,$02
09db: f0 0c     beq   $09e9
09dd: c4 02     mov   $02,a
09df: c5 f6 00  mov   $00f6,a
09e2: 08 00     or    a,#$00
09e4: f0 03     beq   $09e9
09e6: 3f 56 0a  call  $0a56
09e9: 6f        ret

09ea: 68 f0     cmp   a,#$f0
09ec: 90 1d     bcc   $0a0b
09ee: 78 01 e0  cmp   $e0,#$01
09f1: f0 08     beq   $09fb
09f3: 28 0f     and   a,#$0f
09f5: 5d        mov   x,a
09f6: f5 fc 09  mov   a,$09fc+x
09f9: c4 4c     mov   $4c,a
09fb: 6f        ret

09fc: db $02,$04,$06,$08,$0a,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

0a0b: 68 e0     cmp   a,#$e0
0a0d: d0 04     bne   $0a13
0a0f: 8f 01 e0  mov   $e0,#$01
0a12: 6f        ret

0a13: 68 e1     cmp   a,#$e1
0a15: d0 04     bne   $0a1b
0a17: 8f 00 e0  mov   $e0,#$00
0a1a: 6f        ret

0a1b: 68 01     cmp   a,#$01
0a1d: f0 05     beq   $0a24
0a1f: 38 ff e0  and   $e0,#$ff
0a22: d0 31     bne   $0a55
0a24: 28 ff     and   a,#$ff
0a26: 10 0a     bpl   $0a32
0a28: 8f 00 f4  mov   $f4,#$00
0a2b: e8 b0     mov   a,#$b0
0a2d: c4 f1     mov   $f1,a
0a2f: 5f c0 ff  jmp   $ffc0

0a32: 9c        dec   a
0a33: 1c        asl   a
0a34: 5d        mov   x,a
0a35: f5 d4 12  mov   a,$12d4+x
0a38: c4 04     mov   $04,a
0a3a: 3d        inc   x
0a3b: f5 d4 12  mov   a,$12d4+x         ; read song table
0a3e: c4 05     mov   $05,a             ; $04/5: song header address
0a40: 3f 06 0b  call  $0b06
0a43: cd ff     mov   x,#$ff
0a45: e8 01     mov   a,#$01
0a47: c4 34     mov   $34,a
0a49: 8f 00 37  mov   $37,#$00
0a4c: 3f ae 0a  call  $0aae             ; load song header
0a4f: fa 37 35  mov   ($35),($37)
0a52: 8f ff 19  mov   $19,#$ff
0a55: 6f        ret

0a56: 78 01 4e  cmp   $4e,#$01
0a59: d0 0b     bne   $0a66
0a5b: 8f 00 4e  mov   $4e,#$00
0a5e: 2d        push  a
0a5f: e8 40     mov   a,#$40
0a61: c4 14     mov   $14,a
0a63: c4 15     mov   $15,a
0a65: ae        pop   a
0a66: 9c        dec   a
0a67: 1c        asl   a
0a68: 1c        asl   a
0a69: 5d        mov   x,a
0a6a: f5 1c 13  mov   a,$131c+x
0a6d: c4 04     mov   $04,a
0a6f: 3d        inc   x
0a70: f5 1c 13  mov   a,$131c+x
0a73: c4 05     mov   $05,a
0a75: 3d        inc   x
0a76: f5 1c 13  mov   a,$131c+x
0a79: 64 4a     cmp   a,$4a
0a7b: 90 28     bcc   $0aa5
0a7d: c4 4a     mov   $4a,a
0a7f: 3d        inc   x
0a80: f5 1c 13  mov   a,$131c+x
0a83: 5d        mov   x,a
0a84: f5 a6 0a  mov   a,$0aa6+x
0a87: c4 34     mov   $34,a
0a89: 7d        mov   a,x
0a8a: 60        clrc
0a8b: 88 07     adc   a,#$07
0a8d: 5d        mov   x,a
0a8e: fa 36 37  mov   ($37),($36)
0a91: 3f ae 0a  call  $0aae
0a94: fa 37 36  mov   ($36),($37)
0a97: e8 02     mov   a,#$02
0a99: d4 c0     mov   $c0+x,a
0a9b: e8 00     mov   a,#$00
0a9d: d4 d0     mov   $d0+x,a
0a9f: d5 b0 02  mov   $02b0+x,a
0aa2: d5 c0 02  mov   $02c0+x,a
0aa5: 6f        ret

0aa6: db $01,$02,$04,$08,$10,$20,$40,$80

; load song header
0aae: 8d 00     mov   y,#$00
0ab0: f7 04     mov   a,($04)+y
0ab2: c4 06     mov   $06,a             ; number of tracks
; setup for each tracks
0ab4: 3d        inc   x
0ab5: 09 34 37  or    ($37),($34)
0ab8: c8 08     cmp   x,#$08
0aba: 90 0e     bcc   $0aca
0abc: fa 34 11  mov   ($11),($34)
0abf: 58 ff 11  eor   $11,#$ff
0ac2: 29 11 19  and   ($19),($11)
0ac5: 29 11 3f  and   ($3f),($11)
0ac8: e4 3f     mov   a,$3f
0aca: fc        inc   y
0acb: f7 04     mov   a,($04)+y
0acd: d5 00 02  mov   $0200+x,a         ; voice address (lo)
0ad0: fc        inc   y
0ad1: f7 04     mov   a,($04)+y
0ad3: d5 10 02  mov   $0210+x,a         ; voice address (hi)
0ad6: fc        inc   y
0ad7: f7 04     mov   a,($04)+y
0ad9: d5 40 02  mov   $0240+x,a
0adc: fc        inc   y
0add: f7 04     mov   a,($04)+y
0adf: d5 50 02  mov   $0250+x,a
0ae2: fc        inc   y
0ae3: f7 04     mov   a,($04)+y
0ae5: d5 60 02  mov   $0260+x,a
0ae8: fc        inc   y
0ae9: f7 04     mov   a,($04)+y
0aeb: d5 70 02  mov   $0270+x,a
0aee: 3f 6f 0b  call  $0b6f             ; set instrument
0af1: e8 01     mov   a,#$01
0af3: d4 c0     mov   $c0+x,a
0af5: e8 00     mov   a,#$00
0af7: d4 d0     mov   $d0+x,a
0af9: d5 b0 02  mov   $02b0+x,a
0afc: d5 c0 02  mov   $02c0+x,a
0aff: 0b 34     asl   $34
0b01: 8b 06     dec   $06
0b03: d0 af     bne   $0ab4
0b05: 6f        ret

; reset
0b06: cd 06     mov   x,#$06
0b08: e8 00     mov   a,#$00
0b0a: af        mov   (x)+,a
0b0b: c8 e3     cmp   x,#$e3
0b0d: d0 fb     bne   $0b0a
0b0f: cd 00     mov   x,#$00
0b11: d5 00 02  mov   $0200+x,a
0b14: 3d        inc   x
0b15: c8 00     cmp   x,#$00
0b17: d0 f8     bne   $0b11
0b19: d5 00 03  mov   $0300+x,a
0b1c: 3d        inc   x
0b1d: c8 f0     cmp   x,#$f0
0b1f: d0 f8     bne   $0b19
0b21: cd 18     mov   x,#$18
0b23: f5 56 0b  mov   a,$0b56+x
0b26: fd        mov   y,a
0b27: e8 00     mov   a,#$00
0b29: cc f2 00  mov   $00f2,y
0b2c: c5 f3 00  mov   $00f3,a
0b2f: 1d        dec   x
0b30: d0 f1     bne   $0b23
0b32: 8f 40 14  mov   $14,#$40
0b35: 8f 40 15  mov   $15,#$40
0b38: e8 00     mov   a,#$00
0b3a: c5 f2 03  mov   $03f2,a
0b3d: e8 f0     mov   a,#$f0
0b3f: c5 f3 03  mov   $03f3,a
0b42: 8f 0f 3e  mov   $3e,#$0f
0b45: 8f 20 1a  mov   $1a,#$20
0b48: 8f 60 26  mov   $26,#$60
0b4b: e8 60     mov   a,#$60            ; mute, disable echo
0b4d: 8d 6c     mov   y,#$6c            ; FLG
0b4f: cc f2 00  mov   $00f2,y
0b52: c5 f3 00  mov   $00f3,a
0b55: 6f        ret

0b56: db $5c,$4c,$2c,$3c,$0d,$2d,$3d,$4d,$7d,$00,$01,$10,$11,$20,$21,$30,$31,$40,$41,$50,$51,$60,$61,$70,$71

0b6f: 6d        push  y
0b70: f5 50 02  mov   a,$0250+x
0b73: 1c        asl   a
0b74: 1c        asl   a
0b75: fd        mov   y,a
0b76: f6 00 3d  mov   a,$3d00+y
0b79: d5 80 02  mov   $0280+x,a
0b7c: fc        inc   y
0b7d: f6 00 3d  mov   a,$3d00+y
0b80: d5 90 02  mov   $0290+x,a
0b83: fc        inc   y
0b84: f6 00 3d  mov   a,$3d00+y
0b87: d5 a0 02  mov   $02a0+x,a
0b8a: fc        inc   y
0b8b: f6 00 3d  mov   a,$3d00+y
0b8e: d5 d0 02  mov   $02d0+x,a
0b91: ee        pop   y
0b92: 6f        ret

0b93: e4 37     mov   a,$37
0b95: 24 34     and   a,$34
0b97: d0 01     bne   $0b9a
0b99: 6f        ret

0b9a: 9b c0     dec   $c0+x             ; decrease delta-time
0b9c: d0 0b     bne   $0ba9
0b9e: f4 d0     mov   a,$d0+x
0ba0: f0 04     beq   $0ba6
0ba2: 9b d0     dec   $d0+x
0ba4: 2f 03     bra   $0ba9
0ba6: 3f b9 0b  call  $0bb9             ; dispatch new voice byte
0ba9: 3f a8 0f  call  $0fa8
0bac: 3f 33 10  call  $1033
0baf: 3f 95 10  call  $1095
0bb2: 3f ca 10  call  $10ca
0bb5: 3f 56 11  call  $1156
0bb8: 6f        ret

; dispatch voice byte
0bb9: f5 00 02  mov   a,$0200+x
0bbc: c4 08     mov   $08,a
0bbe: f5 10 02  mov   a,$0210+x
0bc1: c4 09     mov   $09,a
0bc3: 8d 00     mov   y,#$00
0bc5: f7 08     mov   a,($08)+y         ; read vcmd
0bc7: 68 d9     cmp   a,#$d9
0bc9: f0 52     beq   $0c1d
0bcb: 68 e0     cmp   a,#$e0
0bcd: 90 03     bcc   $0bd2
0bcf: 5f e6 0c  jmp   $0ce6

0bd2: 68 d0     cmp   a,#$d0
0bd4: 90 13     bcc   $0be9
; vcmd d0-d8 (and da-df) - percussion note
0bd6: 6d        push  y
0bd7: 80        setc
0bd8: a8 d0     sbc   a,#$d0
0bda: 1c        asl   a
0bdb: fd        mov   y,a
0bdc: f6 d4 0c  mov   a,$0cd4+y         ; instrument #
0bdf: d5 50 02  mov   $0250+x,a
0be2: 3f 6f 0b  call  $0b6f             ; set instrument
0be5: f6 d5 0c  mov   a,$0cd5+y         ; note number
0be8: ee        pop   y
; vcmd 00-cf - note
0be9: 80        setc
0bea: a8 80     sbc   a,#$80            ; calculate note number
0bec: 60        clrc
0bed: 95 40 02  adc   a,$0240+x         ; add instrument-specific transpose
0bf0: c4 38     mov   $38,a             ; save note number
0bf2: c8 08     cmp   x,#$08
0bf4: b0 08     bcs   $0bfe
0bf6: e4 36     mov   a,$36
0bf8: 24 34     and   a,$34
0bfa: f0 02     beq   $0bfe
0bfc: 2f 0b     bra   $0c09
0bfe: 09 34 18  or    ($18),($34)
0c01: e4 34     mov   a,$34
0c03: 48 ff     eor   a,#$ff
0c05: 24 19     and   a,$19
0c07: c4 19     mov   $19,a
0c09: f5 50 03  mov   a,$0350+x
0c0c: d5 10 03  mov   $0310+x,a
0c0f: f5 30 03  mov   a,$0330+x
0c12: 08 80     or    a,#$80
0c14: d5 30 03  mov   $0330+x,a
0c17: f5 20 03  mov   a,$0320+x
0c1a: d5 40 03  mov   $0340+x,a
; vcmd d9
0c1d: fc        inc   y
0c1e: f7 08     mov   a,($08)+y
0c20: 68 80     cmp   a,#$80
0c22: 90 09     bcc   $0c2d
0c24: f0 07     beq   $0c2d
0c26: f4 50     mov   a,$50+x
0c28: d4 c0     mov   $c0+x,a
0c2a: dc        dec   y
0c2b: 2f 14     bra   $0c41
0c2d: 68 f6     cmp   a,#$f6
0c2f: d0 0c     bne   $0c3d
0c31: fc        inc   y
0c32: f7 08     mov   a,($08)+y
0c34: d4 c0     mov   $c0+x,a
0c36: fc        inc   y
0c37: f7 08     mov   a,($08)+y
0c39: d4 d0     mov   $d0+x,a
0c3b: 2f 04     bra   $0c41
0c3d: d4 c0     mov   $c0+x,a
0c3f: d4 50     mov   $50+x,a
0c41: fc        inc   y
0c42: dd        mov   a,y
0c43: 60        clrc
0c44: 84 08     adc   a,$08
0c46: d5 00 02  mov   $0200+x,a
0c49: e4 09     mov   a,$09
0c4b: 88 00     adc   a,#$00
0c4d: d5 10 02  mov   $0210+x,a
0c50: f7 08     mov   a,($08)+y
0c52: 68 f5     cmp   a,#$f5
0c54: d0 05     bne   $0c5b
0c56: 09 34 e2  or    ($e2),($34)
0c59: 2f 09     bra   $0c64
0c5b: fa 34 11  mov   ($11),($34)
0c5e: 58 ff 11  eor   $11,#$ff
0c61: 29 11 e2  and   ($e2),($11)
0c64: 6d        push  y
0c65: f5 d0 02  mov   a,$02d0+x
0c68: 4d        push  x
0c69: cd 0c     mov   x,#$0c
0c6b: 8d 00     mov   y,#$00
0c6d: 9e        div   ya,x
0c6e: c4 0d     mov   $0d,a
0c70: 8d 00     mov   y,#$00
0c72: e4 38     mov   a,$38
0c74: cd 0c     mov   x,#$0c
0c76: 9e        div   ya,x
0c77: bc        inc   a
0c78: c4 0a     mov   $0a,a
0c7a: dd        mov   a,y
0c7b: 1c        asl   a
0c7c: fd        mov   y,a
0c7d: f6 ba 0c  mov   a,$0cba+y
0c80: c4 0b     mov   $0b,a
0c82: fc        inc   y
0c83: f6 ba 0c  mov   a,$0cba+y
0c86: c4 0c     mov   $0c,a
0c88: 69 0d 0a  cmp   ($0a),($0d)
0c8b: f0 20     beq   $0cad
0c8d: 90 10     bcc   $0c9f
0c8f: 80        setc
0c90: a9 0d 0a  sbc   ($0a),($0d)
0c93: f8 0a     mov   x,$0a
0c95: 60        clrc
0c96: 0b 0b     asl   $0b
0c98: 2b 0c     rol   $0c
0c9a: 1d        dec   x
0c9b: d0 f8     bne   $0c95
0c9d: 2f 0e     bra   $0cad
0c9f: 80        setc
0ca0: a9 0a 0d  sbc   ($0d),($0a)
0ca3: f8 0d     mov   x,$0d
0ca5: 60        clrc
0ca6: 4b 0c     lsr   $0c
0ca8: 6b 0b     ror   $0b
0caa: 1d        dec   x
0cab: d0 f8     bne   $0ca5
0cad: ce        pop   x
0cae: e4 0b     mov   a,$0b
0cb0: d5 b0 02  mov   $02b0+x,a
0cb3: e4 0c     mov   a,$0c
0cb5: d5 c0 02  mov   $02c0+x,a
0cb8: ee        pop   y
0cb9: 6f        ret

; pitch table
0cba: dw $085f  ; c
0cbc: dw $08de  ; c+
0cbe: dw $0965  ; d
0cc0: dw $09f4  ; d+
0cc2: dw $0a8c  ; e
0cc4: dw $0b2c  ; f
0cc6: dw $0bd6  ; f+
0cc8: dw $0c8b  ; g
0cca: dw $0d4a  ; g+
0ccc: dw $0e14  ; a
0cce: dw $0eea  ; a+
0cd0: dw $0fcd  ; b
0cd2: dw $10be  ; c

0cd4: db $13,$8d
0cd6: db $11,$94
0cd8: db $12,$94
0cda: db $12,$94
0cdc: db $14,$8e
0cde: db $14,$8b
0ce0: db $14,$87
0ce2: db $13,$8b
0ce4: db $12,$8b

; dispatch vcmd
0ce6: 80        setc
0ce7: a8 e0     sbc   a,#$e0
0ce9: 1c        asl   a
0cea: 4d        push  x
0ceb: 5d        mov   x,a
0cec: 1f ef 0c  jmp   ($0cef+x)

; vcmd dispatch table
0cef: dw $0d61  ; e0 - goto
0cf1: dw $0d71  ; e1 - call subroutine
0cf3: dw $0d95  ; e2
0cf5: dw $0da5  ; e3
0cf7: dw $0de2  ; e4
0cf9: dw $0dfc  ; e5
0cfb: dw $0e1c  ; e6
0cfd: dw $0e26  ; e7
0cff: dw $0e37  ; e8 - set instrument
0d01: dw $0e45  ; e9
0d03: dw $0e78  ; ea
0d05: dw $0e87  ; eb
0d07: dw $0ef5  ; ec
0d09: dw $0f15  ; ed
0d0b: dw $0f37  ; ee
0d0d: dw $0f2b  ; ef
0d0f: dw $0f63  ; f0
0d11: dw $0d57  ; f1
0d13: dw $0d5c  ; f2
0d15: dw $0d46  ; f3
0d17: dw $0f23  ; f4
0d19: dw $0d1b  ; f5

; vcmd f5
0d1b: ce        pop   x
0d1c: fc        inc   y
0d1d: f7 08     mov   a,($08)+y
0d1f: d4 c0     mov   $c0+x,a
0d21: d4 50     mov   $50+x,a
0d23: fc        inc   y
0d24: dd        mov   a,y
0d25: 60        clrc
0d26: 84 08     adc   a,$08
0d28: d5 00 02  mov   $0200+x,a
0d2b: e4 09     mov   a,$09
0d2d: 88 00     adc   a,#$00
0d2f: d5 10 02  mov   $0210+x,a
0d32: f7 08     mov   a,($08)+y
0d34: 68 f5     cmp   a,#$f5
0d36: d0 04     bne   $0d3c
0d38: 09 34 e2  or    ($e2),($34)
0d3b: 6f        ret

0d3c: fa 34 11  mov   ($11),($34)
0d3f: 58 ff 11  eor   $11,#$ff
0d42: 29 11 e2  and   ($e2),($11)
0d45: 6f        ret

; vcmd f3
0d46: ce        pop   x
0d47: fc        inc   y
0d48: f7 08     mov   a,($08)+y
0d4a: c5 f2 03  mov   $03f2,a
0d4d: fc        inc   y
0d4e: f7 08     mov   a,($08)+y
0d50: c5 f3 03  mov   $03f3,a
0d53: fc        inc   y
0d54: 5f c5 0b  jmp   $0bc5

; vcmd f1
0d57: ce        pop   x
0d58: fc        inc   y
0d59: 5f c5 0b  jmp   $0bc5

; vcmd f2
0d5c: ce        pop   x
0d5d: fc        inc   y
0d5e: 5f c5 0b  jmp   $0bc5

; vcmd e0 - goto
0d61: ce        pop   x
0d62: fc        inc   y
0d63: f7 08     mov   a,($08)+y
0d65: d5 00 02  mov   $0200+x,a         ; arg1: voice address (lo)
0d68: fc        inc   y
0d69: f7 08     mov   a,($08)+y
0d6b: d5 10 02  mov   $0210+x,a         ; arg2: voice address (hi)
0d6e: 5f b9 0b  jmp   $0bb9

; vcmd e1 - call subroutine
0d71: ce        pop   x
0d72: fc        inc   y
0d73: f7 08     mov   a,($08)+y
0d75: d5 00 02  mov   $0200+x,a         ; arg1: voice address (lo)
0d78: fc        inc   y
0d79: f7 08     mov   a,($08)+y
0d7b: d5 10 02  mov   $0210+x,a         ; arg2: voice address (hi)
0d7e: fc        inc   y
0d7f: dd        mov   a,y
0d80: 60        clrc
0d81: 84 08     adc   a,$08
0d83: c4 08     mov   $08,a
0d85: 98 00 09  adc   $09,#$00
0d88: e4 08     mov   a,$08
0d8a: d5 20 02  mov   $0220+x,a
0d8d: e4 09     mov   a,$09
0d8f: d5 30 02  mov   $0230+x,a         ; save return address
0d92: 5f b9 0b  jmp   $0bb9

; vcmd e2
0d95: ce        pop   x
0d96: f5 20 02  mov   a,$0220+x
0d99: d5 00 02  mov   $0200+x,a
0d9c: f5 30 02  mov   a,$0230+x
0d9f: d5 10 02  mov   $0210+x,a
0da2: 5f b9 0b  jmp   $0bb9

; vcmd e3
0da5: ce        pop   x
0da6: fc        inc   y
0da7: f7 08     mov   a,($08)+y
0da9: c4 3d     mov   $3d,a
0dab: f0 0b     beq   $0db8
0dad: 6d        push  y
0dae: e8 fa     mov   a,#$fa
0db0: 8d 6d     mov   y,#$6d            ; ESA
0db2: 3f ea 11  call  $11ea
0db5: ee        pop   y
0db6: 2f 09     bra   $0dc1
0db8: 6d        push  y
0db9: e8 fa     mov   a,#$fa
0dbb: 8d 6d     mov   y,#$6d            ; ESA
0dbd: 3f ea 11  call  $11ea
0dc0: ee        pop   y
0dc1: fc        inc   y
0dc2: f7 08     mov   a,($08)+y
0dc4: c4 1f     mov   $1f,a
0dc6: fc        inc   y
0dc7: f7 08     mov   a,($08)+y
0dc9: c4 3a     mov   $3a,a
0dcb: fc        inc   y
0dcc: f7 08     mov   a,($08)+y
0dce: c4 3b     mov   $3b,a
0dd0: fc        inc   y
0dd1: f7 08     mov   a,($08)+y
0dd3: c4 3c     mov   $3c,a
0dd5: e4 1a     mov   a,$1a
0dd7: 28 df     and   a,#$df
0dd9: c4 1a     mov   $1a,a
0ddb: 8f 05 39  mov   $39,#$05
0dde: fc        inc   y
0ddf: 5f c5 0b  jmp   $0bc5

; vcmd e4
0de2: ce        pop   x
0de3: c8 08     cmp   x,#$08
0de5: b0 0e     bcs   $0df5
0de7: e4 34     mov   a,$34
0de9: 24 36     and   a,$36
0deb: f0 05     beq   $0df2
0ded: 09 34 4b  or    ($4b),($34)
0df0: 2f 06     bra   $0df8
0df2: 09 34 4b  or    ($4b),($34)
0df5: 09 34 3f  or    ($3f),($34)
0df8: fc        inc   y
0df9: 5f c5 0b  jmp   $0bc5

; vcmd e5
0dfc: ce        pop   x
0dfd: fa 34 11  mov   ($11),($34)
0e00: 58 ff 11  eor   $11,#$ff
0e03: c8 08     cmp   x,#$08
0e05: b0 0e     bcs   $0e15
0e07: e4 34     mov   a,$34
0e09: 24 36     and   a,$36
0e0b: f0 05     beq   $0e12
0e0d: 29 11 4b  and   ($4b),($11)
0e10: 2f 06     bra   $0e18
0e12: 29 11 4b  and   ($4b),($11)
0e15: 29 11 3f  and   ($3f),($11)
0e18: fc        inc   y
0e19: 5f c5 0b  jmp   $0bc5

; vcmd e6
0e1c: ce        pop   x
0e1d: e4 34     mov   a,$34
0e1f: 48 ff     eor   a,#$ff
0e21: 24 37     and   a,$37
0e23: c4 37     mov   $37,a
0e25: 6f        ret

; vcmd e7
0e26: ce        pop   x
0e27: fc        inc   y
0e28: f7 08     mov   a,($08)+y
0e2a: d5 60 02  mov   $0260+x,a
0e2d: fc        inc   y
0e2e: f7 08     mov   a,($08)+y
0e30: d5 70 02  mov   $0270+x,a
0e33: fc        inc   y
0e34: 5f c5 0b  jmp   $0bc5

; vcmd e8 - set instrument
0e37: ce        pop   x
0e38: fc        inc   y
0e39: f7 08     mov   a,($08)+y
0e3b: d5 50 02  mov   $0250+x,a
0e3e: 3f 6f 0b  call  $0b6f             ; set instrument
0e41: fc        inc   y
0e42: 5f c5 0b  jmp   $0bc5

; vcmd e9
0e45: ce        pop   x
0e46: 4d        push  x
0e47: fc        inc   y
0e48: f7 08     mov   a,($08)+y
0e4a: 9f        xcn   a
0e4b: d8 10     mov   $10,x
0e4d: 60        clrc
0e4e: 84 10     adc   a,$10
0e50: 5d        mov   x,a
0e51: f4 a0     mov   a,$a0+x
0e53: f0 0c     beq   $0e61
0e55: fc        inc   y
0e56: 9b a0     dec   $a0+x
0e58: d0 0e     bne   $0e68
0e5a: fc        inc   y
0e5b: fc        inc   y
0e5c: fc        inc   y
0e5d: ce        pop   x
0e5e: 5f c5 0b  jmp   $0bc5

0e61: fc        inc   y
0e62: f7 08     mov   a,($08)+y
0e64: d4 a0     mov   $a0+x,a
0e66: 9b a0     dec   $a0+x
0e68: ce        pop   x
0e69: fc        inc   y
0e6a: f7 08     mov   a,($08)+y
0e6c: d5 00 02  mov   $0200+x,a
0e6f: fc        inc   y
0e70: f7 08     mov   a,($08)+y
0e72: d5 10 02  mov   $0210+x,a
0e75: 5f b9 0b  jmp   $0bb9

; vcmd ea
0e78: ce        pop   x
0e79: fc        inc   y
0e7a: f7 08     mov   a,($08)+y
0e7c: 60        clrc
0e7d: 95 40 02  adc   a,$0240+x
0e80: d5 40 02  mov   $0240+x,a
0e83: fc        inc   y
0e84: 5f c5 0b  jmp   $0bc5

; vcmd eb
0e87: ce        pop   x
0e88: fc        inc   y
0e89: f7 08     mov   a,($08)+y
0e8b: d4 60     mov   $60+x,a
0e8d: fc        inc   y
0e8e: f7 08     mov   a,($08)+y
0e90: d5 f0 02  mov   $02f0+x,a
0e93: fc        inc   y
0e94: f7 08     mov   a,($08)+y
0e96: 80        setc
0e97: a8 80     sbc   a,#$80
0e99: 60        clrc
0e9a: 95 40 02  adc   a,$0240+x
0e9d: c4 38     mov   $38,a
0e9f: c4 40     mov   $40,a
0ea1: 3f 64 0c  call  $0c64
0ea4: fa 0b 0e  mov   ($0e),($0b)
0ea7: fa 0c 0f  mov   ($0f),($0c)
0eaa: fc        inc   y
0eab: 3f c5 0b  call  $0bc5
0eae: e4 38     mov   a,$38
0eb0: d5 00 03  mov   $0300+x,a
0eb3: f5 f0 02  mov   a,$02f0+x
0eb6: c4 11     mov   $11,a
0eb8: e4 40     mov   a,$40
0eba: 75 00 03  cmp   a,$0300+x
0ebd: 90 16     bcc   $0ed5
0ebf: e4 0e     mov   a,$0e
0ec1: d5 b0 02  mov   $02b0+x,a
0ec4: e4 0f     mov   a,$0f
0ec6: d5 c0 02  mov   $02c0+x,a
0ec9: e4 34     mov   a,$34
0ecb: 04 42     or    a,$42
0ecd: c4 42     mov   $42,a
0ecf: ba 0e     movw  ya,$0e
0ed1: 9a 0b     subw  ya,$0b
0ed3: 2f 14     bra   $0ee9
0ed5: e4 0e     mov   a,$0e
0ed7: d5 b0 02  mov   $02b0+x,a
0eda: e4 0f     mov   a,$0f
0edc: d5 c0 02  mov   $02c0+x,a
0edf: e4 34     mov   a,$34
0ee1: 04 41     or    a,$41
0ee3: c4 41     mov   $41,a
0ee5: ba 0b     movw  ya,$0b
0ee7: 9a 0e     subw  ya,$0e
0ee9: 4d        push  x
0eea: f8 11     mov   x,$11
0eec: 9e        div   ya,x
0eed: ce        pop   x
0eee: d4 80     mov   $80+x,a
0ef0: dd        mov   a,y
0ef1: d5 e0 02  mov   $02e0+x,a
0ef4: 6f        ret

; vcmd ec
0ef5: ce        pop   x
0ef6: fc        inc   y
0ef7: f7 08     mov   a,($08)+y
0ef9: d5 10 03  mov   $0310+x,a
0efc: d5 50 03  mov   $0350+x,a
0eff: fc        inc   y
0f00: f7 08     mov   a,($08)+y
0f02: d5 20 03  mov   $0320+x,a
0f05: fc        inc   y
0f06: f7 08     mov   a,($08)+y
0f08: d5 30 03  mov   $0330+x,a
0f0b: fa 34 11  mov   ($11),($34)
0f0e: 09 11 47  or    ($47),($11)
0f11: fc        inc   y
0f12: 5f c5 0b  jmp   $0bc5

; vcmd ed
0f15: ce        pop   x
0f16: fa 34 11  mov   ($11),($34)
0f19: 58 ff 11  eor   $11,#$ff
0f1c: 29 11 47  and   ($47),($11)
0f1f: fc        inc   y
0f20: 5f c5 0b  jmp   $0bc5

; vcmd f4
0f23: ce        pop   x
0f24: 8f 01 4f  mov   $4f,#$01
0f27: fc        inc   y
0f28: 5f c5 0b  jmp   $0bc5

; vcmd ef
0f2b: 8f 01 4e  mov   $4e,#$01
0f2e: 8f 00 4f  mov   $4f,#$00
0f31: e8 00     mov   a,#$00
0f33: c4 14     mov   $14,a
0f35: c4 15     mov   $15,a
; vcmd ee
0f37: ce        pop   x
0f38: fa 34 11  mov   ($11),($34)
0f3b: 58 ff 11  eor   $11,#$ff
0f3e: 29 11 36  and   ($36),($11)
0f41: 29 11 37  and   ($37),($11)
0f44: 8f 00 4a  mov   $4a,#$00
0f47: fa 4b 3f  mov   ($3f),($4b)
0f4a: 8f 05 39  mov   $39,#$05
0f4d: 8f 00 4f  mov   $4f,#$00
0f50: 6f        ret

0f51: 60        clrc
0f52: 89 11 08  adc   ($08),($11)
0f55: 98 00 09  adc   $09,#$00
0f58: e4 08     mov   a,$08
0f5a: d5 00 02  mov   $0200+x,a
0f5d: e4 09     mov   a,$09
0f5f: d5 10 02  mov   $0210+x,a
0f62: 6f        ret

; vcmd f0
0f63: fc        inc   y
0f64: f7 08     mov   a,($08)+y
0f66: 1c        asl   a
0f67: 5d        mov   x,a
0f68: f5 f8 11  mov   a,$11f8+x
0f6b: c4 0a     mov   $0a,a
0f6d: f5 02 12  mov   a,$1202+x
0f70: c4 0c     mov   $0c,a
0f72: 3d        inc   x
0f73: f5 f8 11  mov   a,$11f8+x
0f76: c4 0b     mov   $0b,a
0f78: f5 02 12  mov   a,$1202+x
0f7b: c4 0d     mov   $0d,a
0f7d: ce        pop   x
0f7e: e4 0a     mov   a,$0a
0f80: d5 60 03  mov   $0360+x,a
0f83: d5 a0 03  mov   $03a0+x,a
0f86: e4 0b     mov   a,$0b
0f88: d5 70 03  mov   $0370+x,a
0f8b: d5 b0 03  mov   $03b0+x,a
0f8e: e4 0c     mov   a,$0c
0f90: d5 80 03  mov   $0380+x,a
0f93: d5 c0 03  mov   $03c0+x,a
0f96: e4 0d     mov   a,$0d
0f98: d5 90 03  mov   $0390+x,a
0f9b: d5 d0 03  mov   $03d0+x,a
0f9e: fa 34 11  mov   ($11),($34)
0fa1: 09 11 e1  or    ($e1),($11)
0fa4: fc        inc   y
0fa5: 5f c5 0b  jmp   $0bc5

0fa8: e4 41     mov   a,$41
0faa: 24 34     and   a,$34
0fac: d0 07     bne   $0fb5
0fae: e4 42     mov   a,$42
0fb0: 24 34     and   a,$34
0fb2: d0 37     bne   $0feb
0fb4: 6f        ret

0fb5: f4 60     mov   a,$60+x
0fb7: f0 03     beq   $0fbc
0fb9: 9b 60     dec   $60+x
0fbb: 6f        ret

0fbc: f5 f0 02  mov   a,$02f0+x
0fbf: d0 0a     bne   $0fcb
0fc1: fa 41 11  mov   ($11),($41)
0fc4: 3f 22 10  call  $1022
0fc7: fa 11 41  mov   ($41),($11)
0fca: 6f        ret

0fcb: f5 f0 02  mov   a,$02f0+x
0fce: 9c        dec   a
0fcf: d5 f0 02  mov   $02f0+x,a
0fd2: 60        clrc
0fd3: f5 e0 02  mov   a,$02e0+x
0fd6: 94 90     adc   a,$90+x
0fd8: d4 90     mov   $90+x,a
0fda: f4 80     mov   a,$80+x
0fdc: 95 b0 02  adc   a,$02b0+x
0fdf: d5 b0 02  mov   $02b0+x,a
0fe2: e8 00     mov   a,#$00
0fe4: 95 c0 02  adc   a,$02c0+x
0fe7: d5 c0 02  mov   $02c0+x,a
0fea: 6f        ret

0feb: f4 60     mov   a,$60+x
0fed: f0 03     beq   $0ff2
0fef: 9b 60     dec   $60+x
0ff1: 6f        ret

0ff2: f5 f0 02  mov   a,$02f0+x
0ff5: d0 0a     bne   $1001
0ff7: fa 42 11  mov   ($11),($42)
0ffa: 3f 22 10  call  $1022
0ffd: fa 11 42  mov   ($42),($11)
1000: 6f        ret

1001: f5 f0 02  mov   a,$02f0+x
1004: 9c        dec   a
1005: d5 f0 02  mov   $02f0+x,a
1008: 60        clrc
1009: f5 e0 02  mov   a,$02e0+x
100c: 94 90     adc   a,$90+x
100e: ed        notc
100f: d4 90     mov   $90+x,a
1011: f5 b0 02  mov   a,$02b0+x
1014: b4 80     sbc   a,$80+x
1016: d5 b0 02  mov   $02b0+x,a
1019: f5 c0 02  mov   a,$02c0+x
101c: a8 00     sbc   a,#$00
101e: d5 c0 02  mov   $02c0+x,a
1021: 6f        ret

1022: e4 34     mov   a,$34
1024: 48 ff     eor   a,#$ff
1026: 24 11     and   a,$11
1028: c4 11     mov   $11,a
102a: f5 00 03  mov   a,$0300+x
102d: c4 38     mov   $38,a
102f: 3f 64 0c  call  $0c64
1032: 6f        ret

1033: fa 34 11  mov   ($11),($34)
1036: 29 47 11  and   ($11),($47)
1039: d0 01     bne   $103c
103b: 6f        ret

103c: f5 10 03  mov   a,$0310+x
103f: f0 05     beq   $1046
1041: 9c        dec   a
1042: d5 10 03  mov   $0310+x,a
1045: 6f        ret

1046: f5 40 03  mov   a,$0340+x
1049: d0 0b     bne   $1056
104b: f5 30 03  mov   a,$0330+x
104e: 48 80     eor   a,#$80
1050: d5 30 03  mov   $0330+x,a
1053: f5 20 03  mov   a,$0320+x
1056: 9c        dec   a
1057: d5 40 03  mov   $0340+x,a
105a: fa 34 11  mov   ($11),($34)
105d: 29 41 11  and   ($11),($41)
1060: d0 32     bne   $1094
1062: fa 34 11  mov   ($11),($34)
1065: 29 42 11  and   ($11),($42)
1068: d0 2a     bne   $1094
106a: f5 30 03  mov   a,$0330+x
106d: 10 13     bpl   $1082
106f: 28 7f     and   a,#$7f
1071: 60        clrc
1072: 95 b0 02  adc   a,$02b0+x
1075: d5 b0 02  mov   $02b0+x,a
1078: e8 00     mov   a,#$00
107a: 95 c0 02  adc   a,$02c0+x
107d: d5 c0 02  mov   $02c0+x,a
1080: 2f 12     bra   $1094
1082: f5 b0 02  mov   a,$02b0+x
1085: 80        setc
1086: b5 30 03  sbc   a,$0330+x
1089: d5 b0 02  mov   $02b0+x,a
108c: f5 c0 02  mov   a,$02c0+x
108f: a8 00     sbc   a,#$00
1091: d5 c0 02  mov   $02c0+x,a
1094: 6f        ret

1095: e4 4c     mov   a,$4c
1097: f0 2e     beq   $10c7
1099: e4 4d     mov   a,$4d
109b: d0 2a     bne   $10c7
109d: fa 4c 4d  mov   ($4d),($4c)
10a0: e4 14     mov   a,$14
10a2: f0 02     beq   $10a6
10a4: 8b 14     dec   $14
10a6: e4 15     mov   a,$15
10a8: f0 02     beq   $10ac
10aa: 8b 15     dec   $15
10ac: e4 3a     mov   a,$3a
10ae: f0 02     beq   $10b2
10b0: 8b 3a     dec   $3a
10b2: e4 3b     mov   a,$3b
10b4: f0 02     beq   $10b8
10b6: 8b 3b     dec   $3b
10b8: e4 14     mov   a,$14
10ba: 04 15     or    a,$15
10bc: d0 09     bne   $10c7
10be: e4 3a     mov   a,$3a
10c0: 04 3b     or    a,$3b
10c2: d0 03     bne   $10c7
10c4: 8f 00 4c  mov   $4c,#$00
10c7: 8b 4d     dec   $4d
10c9: 6f        ret

10ca: fa 34 11  mov   ($11),($34)
10cd: 29 e1 11  and   ($11),($e1)
10d0: d0 01     bne   $10d3
10d2: 6f        ret

10d3: 8d 00     mov   y,#$00
10d5: f5 60 03  mov   a,$0360+x
10d8: c4 0a     mov   $0a,a
10da: f5 70 03  mov   a,$0370+x
10dd: c4 0b     mov   $0b,a
10df: f7 0a     mov   a,($0a)+y
10e1: 68 f7     cmp   a,#$f7
10e3: d0 0e     bne   $10f3
10e5: f5 a0 03  mov   a,$03a0+x
10e8: d5 60 03  mov   $0360+x,a
10eb: f5 b0 03  mov   a,$03b0+x
10ee: d5 70 03  mov   $0370+x,a
10f1: 2f e0     bra   $10d3
10f3: 68 f8     cmp   a,#$f8
10f5: d0 0a     bne   $1101
10f7: fa 34 11  mov   ($11),($34)
10fa: 58 ff 11  eor   $11,#$ff
10fd: 29 11 e1  and   ($e1),($11)
1100: 6f        ret

1101: d5 60 02  mov   $0260+x,a
1104: f5 80 03  mov   a,$0380+x
1107: c4 0c     mov   $0c,a
1109: f5 90 03  mov   a,$0390+x
110c: c4 0d     mov   $0d,a
110e: f7 0c     mov   a,($0c)+y
1110: 68 f7     cmp   a,#$f7
1112: d0 0e     bne   $1122
1114: f5 c0 03  mov   a,$03c0+x
1117: d5 80 03  mov   $0380+x,a
111a: f5 d0 03  mov   a,$03d0+x
111d: d5 90 03  mov   $0390+x,a
1120: 2f e2     bra   $1104
1122: 68 f8     cmp   a,#$f8
1124: d0 0a     bne   $1130
1126: fa 34 11  mov   ($11),($34)
1129: 58 ff 11  eor   $11,#$ff
112c: 29 11 e1  and   ($e1),($11)
112f: 6f        ret

1130: d5 70 02  mov   $0270+x,a
1133: e8 01     mov   a,#$01
1135: 60        clrc
1136: 95 60 03  adc   a,$0360+x
1139: d5 60 03  mov   $0360+x,a
113c: e8 00     mov   a,#$00
113e: 95 70 03  adc   a,$0370+x
1141: d5 70 03  mov   $0370+x,a
1144: e8 01     mov   a,#$01
1146: 60        clrc
1147: 95 80 03  adc   a,$0380+x
114a: d5 80 03  mov   $0380+x,a
114d: e8 00     mov   a,#$00
114f: 95 90 03  adc   a,$0390+x
1152: d5 90 03  mov   $0390+x,a
1155: 6f        ret

1156: f4 d0     mov   a,$d0+x
1158: d0 2a     bne   $1184
115a: f4 c0     mov   a,$c0+x
115c: 68 01     cmp   a,#$01
115e: d0 24     bne   $1184
1160: e4 e2     mov   a,$e2
1162: 24 34     and   a,$34
1164: d0 1e     bne   $1184
1166: fa 34 11  mov   ($11),($34)
1169: 58 ff 11  eor   $11,#$ff
116c: 29 11 41  and   ($41),($11)
116f: 29 11 42  and   ($42),($11)
1172: c8 08     cmp   x,#$08
1174: b0 08     bcs   $117e
1176: e4 36     mov   a,$36
1178: 24 34     and   a,$34
117a: f0 02     beq   $117e
117c: 2f 5b     bra   $11d9
117e: 29 11 18  and   ($18),($11)
1181: 09 34 19  or    ($19),($34)
1184: c8 08     cmp   x,#$08
1186: b0 08     bcs   $1190
1188: e4 36     mov   a,$36
118a: 24 34     and   a,$34
118c: f0 02     beq   $1190
118e: 2f 49     bra   $11d9
1190: f5 da 11  mov   a,$11da+x
1193: fd        mov   y,a
1194: f5 60 02  mov   a,$0260+x
1197: cc f2 00  mov   $00f2,y           ; VOL(L)
119a: c5 f3 00  mov   $00f3,a
119d: fc        inc   y
119e: f5 70 02  mov   a,$0270+x
11a1: cc f2 00  mov   $00f2,y           ; VOL(R)
11a4: c5 f3 00  mov   $00f3,a
11a7: fc        inc   y
11a8: f5 b0 02  mov   a,$02b0+x
11ab: cc f2 00  mov   $00f2,y           ; P(L)
11ae: c5 f3 00  mov   $00f3,a
11b1: fc        inc   y
11b2: f5 c0 02  mov   a,$02c0+x
11b5: cc f2 00  mov   $00f2,y           ; P(H)
11b8: c5 f3 00  mov   $00f3,a
11bb: fc        inc   y
11bc: f5 80 02  mov   a,$0280+x
11bf: cc f2 00  mov   $00f2,y           ; SRCN
11c2: c5 f3 00  mov   $00f3,a
11c5: fc        inc   y
11c6: f5 90 02  mov   a,$0290+x
11c9: cc f2 00  mov   $00f2,y           ; ADSR(1)
11cc: c5 f3 00  mov   $00f3,a
11cf: fc        inc   y
11d0: f5 a0 02  mov   a,$02a0+x
11d3: cc f2 00  mov   $00f2,y           ; ADSR(2)
11d6: c5 f3 00  mov   $00f3,a
11d9: 6f        ret

11da: db $00,$10,$20,$30,$40,$50,$60,$70
11e2: db $00,$10,$20,$30,$40,$50,$60,$70

; set A to dsp register Y
11ea: cc f2 00  mov   $00f2,y
11ed: c5 f3 00  mov   $00f3,a
11f0: 6f        ret

; get dsp register Y to A
11f1: cc f2 00  mov   $00f2,y
11f4: e5 f3 00  mov   a,$00f3
11f7: 6f        ret
