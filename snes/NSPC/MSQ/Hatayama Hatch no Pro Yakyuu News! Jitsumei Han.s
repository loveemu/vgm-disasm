; version string
07a0: db "MSQ-v1.0"

07a8: db $09,$05,$09,$02,$09,$04,$01,$05
07b0: db $00,$09,$00,$00,$00,$00,$00,$00
07b8: db $00,$00,$00,$00,$00,$00,$00,$00
07c0: db $00,$00,$00,$00,$00,$00,$00,$00
07c8: db $05,$09,$09,$02,$09,$09,$09,$09
07d0: db $00,$00,$00,$00,$00,$00,$00,$00
07d8: db $00,$00,$00,$00,$00,$00,$00,$00
07e0: db $00,$00,$00,$00,$00,$00,$00,$00

; note dur%'s
07e8: db $32,$65,$7f,$98,$b2,$cb,$e5,$ff
; per-note velocity values
07f0: db $19,$32,$4c,$65,$72,$7f,$8c,$98
07f8: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$ff

0800: 20        clrp
0801: cd ff     mov   x,#$ff
0803: bd        mov   sp,x
0804: 3f 50 0a  call  $0a50
0807: 3f 12 0a  call  $0a12
080a: e8 80     mov   a,#$80
080c: 3f 9f 0a  call  $0a9f
080f: e8 80     mov   a,#$80
0811: 3f 6a 0b  call  $0b6a
0814: 8d 0a     mov   y,#$0a
0816: ad 05     cmp   y,#$05
0818: b0 08     bcs   $0822
081a: 69 2c 2a  cmp   ($2a),($2c)
081d: d0 11     bne   $0830
081f: e3 2a 0e  bbs7  $2a,$0830
0822: f6 8b 14  mov   a,$148b+y
0825: c5 f2 00  mov   $00f2,a
0828: f6 95 14  mov   a,$1495+y
082b: 5d        mov   x,a
082c: e6        mov   a,(x)
082d: c5 f3 00  mov   $00f3,a
0830: fe e4     dbnz  y,$0816
0832: cb 23     mov   $23,y
0834: cb 24     mov   $24,y
0836: e5 fd 00  mov   a,$00fd
0839: f0 fb     beq   $0836
083b: 5d        mov   x,a
083c: 8d 20     mov   y,#$20
083e: cf        mul   ya
083f: 60        clrc
0840: 84 3f     adc   a,$3f
0842: c4 3f     mov   $3f,a
0844: 90 07     bcc   $084d
0846: 69 2c 2a  cmp   ($2a),($2c)
0849: f0 02     beq   $084d
084b: ab 2a     inc   $2a
084d: 7d        mov   a,x
084e: 8d 00     mov   y,#$00
0850: 7a 3a     addw  ya,$3a
0852: da 3a     movw  $3a,ya
0854: 5a 30     cmpw  ya,$30
0856: 90 08     bcc   $0860
0858: 3f 3c 13  call  $133c
085b: e8 00     mov   a,#$00
085d: 3f ec 0a  call  $0aec
0860: ab 3c     inc   $3c
0862: e4 3c     mov   a,$3c
0864: 28 07     and   a,#$07
0866: d0 05     bne   $086d
0868: e8 01     mov   a,#$01
086a: 3f ec 0a  call  $0aec
086d: e8 00     mov   a,#$00
086f: 3f 4b 09  call  $094b
0872: e8 01     mov   a,#$01
0874: 3f 4b 09  call  $094b
0877: 3f ae 11  call  $11ae
087a: e4 59     mov   a,$59
087c: cd 00     mov   x,#$00
087e: 3f 40 09  call  $0940
0881: 68 00     cmp   a,#$00
0883: f0 1f     beq   $08a4
0885: c4 40     mov   $40,a
0887: 2d        push  a
0888: e8 63     mov   a,#$63
088a: c4 f4     mov   $f4,a
088c: ae        pop   a
088d: 68 fe     cmp   a,#$fe
088f: f0 09     beq   $089a
0891: 68 ff     cmp   a,#$ff
0893: f0 05     beq   $089a
0895: 3f 9f 0a  call  $0a9f
0898: 2f 21     bra   $08bb
089a: 3f c2 08  call  $08c2
089d: e8 80     mov   a,#$80
089f: c4 f1     mov   $f1,a
08a1: 5f c0 ff  jmp   $ffc0

08a4: e8 ef     mov   a,#$ef
08a6: cd 01     mov   x,#$01
08a8: 3f 40 09  call  $0940
08ab: 68 00     cmp   a,#$00
08ad: f0 0c     beq   $08bb
08af: 68 40     cmp   a,#$40
08b1: 90 05     bcc   $08b8
08b3: 3f 08 09  call  $0908
08b6: 2f 03     bra   $08bb
08b8: 3f 6a 0b  call  $0b6a
08bb: e8 31     mov   a,#$31
08bd: c4 f1     mov   $f1,a
08bf: 5f 14 08  jmp   $0814

08c2: 3f e3 08  call  $08e3
08c5: cd 0a     mov   x,#$0a
08c7: e8 00     mov   a,#$00
08c9: 9c        dec   a
08ca: d0 fd     bne   $08c9
08cc: 1d        dec   x
08cd: d0 fa     bne   $08c9
08cf: e8 e0     mov   a,#$e0
08d1: 8d 6c     mov   y,#$6c
08d3: 3f 7d 0d  call  $0d7d
08d6: 6f        ret

08d7: e8 00     mov   a,#$00
08d9: 8d 0c     mov   y,#$0c
08db: 3f 7d 0d  call  $0d7d
08de: 8d 1c     mov   y,#$1c
08e0: 3f 7d 0d  call  $0d7d
08e3: e8 00     mov   a,#$00
08e5: 8d 2c     mov   y,#$2c
08e7: 3f 7d 0d  call  $0d7d
08ea: 8d 3c     mov   y,#$3c
08ec: 3f 7d 0d  call  $0d7d
08ef: e8 00     mov   a,#$00
08f1: 8d 4d     mov   y,#$4d
08f3: 3f 7d 0d  call  $0d7d
08f6: 8d 3d     mov   y,#$3d
08f8: 3f 7d 0d  call  $0d7d
08fb: 8d 2d     mov   y,#$2d
08fd: 3f 7a 0d  call  $0d7a
0900: e8 ff     mov   a,#$ff
0902: 8d 5c     mov   y,#$5c
0904: 3f 7d 0d  call  $0d7d
0907: 6f        ret

0908: 68 40     cmp   a,#$40
090a: f0 04     beq   $0910
090c: 68 41     cmp   a,#$41
090e: d0 06     bne   $0916
0910: 80        setc
0911: a8 40     sbc   a,#$40
0913: c4 4c     mov   $4c,a
0915: 6f        ret

0916: 68 42     cmp   a,#$42
0918: d0 09     bne   $0923
091a: 8f 00 00  mov   $00,#$00
091d: e4 19     mov   a,$19
091f: c4 4d     mov   $4d,a
0921: 2f 08     bra   $092b
0923: 68 43     cmp   a,#$43
0925: d0 09     bne   $0930
0927: e4 4d     mov   a,$4d
0929: c4 00     mov   $00,a
092b: e4 f6     mov   a,$f6
092d: 5f 7d 11  jmp   $117d

0930: 68 44     cmp   a,#$44
0932: d0 0b     bne   $093f
0934: e4 10     mov   a,$10
0936: c4 4e     mov   $4e,a
0938: e4 f6     mov   a,$f6
093a: e4 f7     mov   a,$f7
093c: 5f db 12  jmp   $12db

093f: 6f        ret

0940: d4 f4     mov   $f4+x,a
0942: f4 f4     mov   a,$f4+x
0944: 74 f4     cmp   a,$f4+x
0946: d0 fa     bne   $0942
0948: d4 48     mov   $48+x,a
094a: 6f        ret

094b: c4 2d     mov   $2d,a
094d: 3f 8b 0d  call  $0d8b
0950: f4 e0     mov   a,$e0+x
0952: c4 18     mov   $18,a
0954: e3 18 10  bbs7  $18,$0967
0957: a3 18 23  bbs5  $18,$097d
095a: f4 c0     mov   a,$c0+x
095c: c4 17     mov   $17,a
095e: 3f 25 10  call  $1025
0961: 3f a9 0f  call  $0fa9
0964: 3f f4 11  call  $11f4
0967: e4 18     mov   a,$18
0969: 5c        lsr   a
096a: 90 08     bcc   $0974
096c: 2d        push  a
096d: 3f 76 0e  call  $0e76
0970: 3f 69 0e  call  $0e69
0973: ae        pop   a
0974: 5c        lsr   a
0975: 90 06     bcc   $097d
0977: 3f b4 10  call  $10b4
097a: 3f ea 10  call  $10ea
097d: e4 18     mov   a,$18
097f: 28 fc     and   a,#$fc
0981: d4 e0     mov   $e0+x,a
0983: 0b 13     asl   $13
0985: 3d        inc   x
0986: 3e 11     cmp   x,$11
0988: d0 c6     bne   $0950
098a: 6f        ret

098b: f4 c0     mov   a,$c0+x
098d: c4 17     mov   $17,a
098f: f4 e0     mov   a,$e0+x
0991: c4 18     mov   $18,a
0993: 28 80     and   a,#$80
0995: f0 05     beq   $099c
0997: 3f 51 0d  call  $0d51
099a: 2f 75     bra   $0a11
099c: f5 00 02  mov   a,$0200+x
099f: c4 2e     mov   $2e,a
09a1: f5 10 02  mov   a,$0210+x
09a4: c4 2f     mov   $2f,a
09a6: 9b 80     dec   $80+x
09a8: f0 10     beq   $09ba
09aa: 3f 48 0e  call  $0e48
09ad: f4 90     mov   a,$90+x
09af: f0 52     beq   $0a03
09b1: 9b 90     dec   $90+x
09b3: d0 4e     bne   $0a03
09b5: 3f 51 0d  call  $0d51
09b8: 2f 49     bra   $0a03
09ba: f5 30 02  mov   a,$0230+x
09bd: fd        mov   y,a
09be: f6 e8 07  mov   a,$07e8+y		; set dur% from high nybble
09c1: fd        mov   y,a
09c2: f5 20 02  mov   a,$0220+x
09c5: d4 80     mov   $80+x,a
09c7: 3f 94 10  call  $1094
09ca: bc        inc   a
09cb: d4 90     mov   $90+x,a
09cd: 8d 00     mov   y,#$00
09cf: f7 2e     mov   a,($2e)+y
09d1: 3a 2e     incw  $2e
09d3: 68 00     cmp   a,#$00
09d5: 30 10     bmi   $09e7
09d7: d0 09     bne   $09e2
09d9: 3f 72 0c  call  $0c72
09dc: 68 00     cmp   a,#$00
09de: d0 ed     bne   $09cd
09e0: 2f 2f     bra   $0a11
09e2: 3f 1a 0c  call  $0c1a
09e5: 2f d3     bra   $09ba
; vcmd branches 80-ff
09e7: 68 e0     cmp   a,#$e0
09e9: b0 09     bcs   $09f4
09eb: 68 c8     cmp   a,#$c8
09ed: f0 de     beq   $09cd
09ef: 3f a9 0d  call  $0da9
09f2: 2f 05     bra   $09f9
09f4: 3f 31 0c  call  $0c31
09f7: 2f d4     bra   $09cd
09f9: e4 2e     mov   a,$2e
09fb: d5 00 02  mov   $0200+x,a
09fe: e4 2f     mov   a,$2f
0a00: d5 10 02  mov   $0210+x,a
0a03: e4 18     mov   a,$18
0a05: d4 e0     mov   $e0+x,a
0a07: e4 17     mov   a,$17
0a09: d4 c0     mov   $c0+x,a
0a0b: e4 14     mov   a,$14
0a0d: 04 13     or    a,$13
0a0f: c4 14     mov   $14,a
0a11: 6f        ret

0a12: e8 00     mov   a,#$00
0a14: 5d        mov   x,a
0a15: af        mov   (x)+,a
0a16: c8 f0     cmp   x,#$f0
0a18: d0 fb     bne   $0a15
0a1a: e8 60     mov   a,#$60
0a1c: c4 00     mov   $00,a
0a1e: e8 05     mov   a,#$05
0a20: c4 01     mov   $01,a
0a22: e8 00     mov   a,#$00
0a24: c4 04     mov   $04,a
0a26: e8 02     mov   a,#$02
0a28: c4 05     mov   $05,a
0a2a: cd 00     mov   x,#$00
0a2c: 7d        mov   a,x
0a2d: c7 04     mov   ($04+x),a
0a2f: 3a 04     incw  $04
0a31: ba 04     movw  ya,$04
0a33: 5a 00     cmpw  ya,$00
0a35: d0 f5     bne   $0a2c
0a37: e8 a0     mov   a,#$a0
0a39: c4 0a     mov   $0a,a
0a3b: e8 14     mov   a,#$14
0a3d: c4 0b     mov   $0b,a
0a3f: e8 2c     mov   a,#$2c
0a41: c4 0c     mov   $0c,a
0a43: e8 14     mov   a,#$14
0a45: c4 0d     mov   $0d,a
0a47: e8 00     mov   a,#$00
0a49: c4 0e     mov   $0e,a
0a4b: e8 20     mov   a,#$20
0a4d: c4 0f     mov   $0f,a
0a4f: 6f        ret

0a50: e8 30     mov   a,#$30
0a52: c5 f1 00  mov   $00f1,a
0a55: e8 32     mov   a,#$32
0a57: 8d 5d     mov   y,#$5d
0a59: 3f 7a 0d  call  $0d7a
0a5c: 3f d7 08  call  $08d7
0a5f: e8 01     mov   a,#$01
0a61: 3f a5 13  call  $13a5
0a64: 3f 51 13  call  $1351
0a67: e8 10     mov   a,#$10
0a69: c5 fa 00  mov   $00fa,a
0a6c: e8 31     mov   a,#$31
0a6e: c5 f1 00  mov   $00f1,a
0a71: 6f        ret

0a72: e8 00     mov   a,#$00
0a74: c4 15     mov   $15,a
0a76: c4 1d     mov   $1d,a
0a78: c4 3e     mov   $3e,a
0a7a: c4 21     mov   $21,a
0a7c: c4 22     mov   $22,a
0a7e: c4 25     mov   $25,a
0a80: c4 29     mov   $29,a
0a82: c4 18     mov   $18,a
0a84: c4 2a     mov   $2a,a
0a86: c4 2b     mov   $2b,a
0a88: e8 ff     mov   a,#$ff
0a8a: c4 19     mov   $19,a
0a8c: e8 64     mov   a,#$64
0a8e: c4 20     mov   $20,a
0a90: e8 64     mov   a,#$64
0a92: 8d 0c     mov   y,#$0c
0a94: 3f 7a 0d  call  $0d7a
0a97: 8d 1c     mov   y,#$1c
0a99: 3f 7a 0d  call  $0d7a
0a9c: 5f 51 13  jmp   $1351

; load song
0a9f: 8f 00 18  mov   $18,#$00
0aa2: 68 80     cmp   a,#$80
0aa4: 90 0a     bcc   $0ab0
0aa6: e8 ca     mov   a,#$ca
0aa8: c4 04     mov   $04,a
0aaa: e8 16     mov   a,#$16
0aac: c4 05     mov   $05,a
0aae: 2f 0e     bra   $0abe
0ab0: e8 00     mov   a,#$00
0ab2: 8d 02     mov   y,#$02
0ab4: cf        mul   ya
0ab5: da 04     movw  $04,ya
0ab7: 60        clrc
0ab8: 98 00 04  adc   $04,#$00
0abb: 98 24 05  adc   $05,#$24
0abe: 8d 00     mov   y,#$00
0ac0: f7 04     mov   a,($04)+y
0ac2: c4 52     mov   $52,a
0ac4: c4 50     mov   $50,a
0ac6: fc        inc   y
0ac7: f7 04     mov   a,($04)+y
0ac9: c4 53     mov   $53,a
0acb: c4 51     mov   $51,a
0acd: e8 78     mov   a,#$78
0acf: 3f 17 13  call  $1317
0ad2: 3f 72 0a  call  $0a72
0ad5: e8 00     mov   a,#$00
0ad7: c4 2d     mov   $2d,a
0ad9: cd 00     mov   x,#$00
0adb: 3f df 0b  call  $0bdf
0ade: f4 e0     mov   a,$e0+x
0ae0: 28 20     and   a,#$20
0ae2: d4 e0     mov   $e0+x,a
0ae4: 3d        inc   x
0ae5: c8 08     cmp   x,#$08
0ae7: d0 f2     bne   $0adb
0ae9: 5f 05 0b  jmp   $0b05

0aec: c4 2d     mov   $2d,a
0aee: 3f 8b 0d  call  $0d8b
0af1: 3f 8b 09  call  $098b
0af4: 0b 13     asl   $13
0af6: 3d        inc   x
0af7: 3e 11     cmp   x,$11
0af9: d0 f6     bne   $0af1
0afb: e4 14     mov   a,$14
0afd: d0 05     bne   $0b04
0aff: 78 00 2d  cmp   $2d,#$00
0b02: f0 01     beq   $0b05
0b04: 6f        ret

0b05: 8d 00     mov   y,#$00
0b07: f7 52     mov   a,($52)+y
0b09: c4 04     mov   $04,a
0b0b: fc        inc   y
0b0c: f7 52     mov   a,($52)+y
0b0e: c4 05     mov   $05,a
0b10: ba 04     movw  ya,$04
0b12: 5a 08     cmpw  ya,$08
0b14: f0 53     beq   $0b69
0b16: 3a 52     incw  $52
0b18: 3a 52     incw  $52
0b1a: ad 00     cmp   y,#$00
0b1c: d0 1b     bne   $0b39
0b1e: 68 80     cmp   a,#$80
0b20: b0 06     bcs   $0b28
0b22: ab 3e     inc   $3e
0b24: 64 3e     cmp   a,$3e
0b26: f0 41     beq   $0b69
0b28: 8d 00     mov   y,#$00
0b2a: f7 52     mov   a,($52)+y
0b2c: c4 04     mov   $04,a
0b2e: fc        inc   y
0b2f: f7 52     mov   a,($52)+y
0b31: c4 05     mov   $05,a
0b33: ba 04     movw  ya,$04
0b35: da 52     movw  $52,ya
0b37: 2f cc     bra   $0b05
0b39: 3f 8b 0d  call  $0d8b
0b3c: f4 e0     mov   a,$e0+x
0b3e: 28 7f     and   a,#$7f
0b40: c4 18     mov   $18,a
0b42: 8d 00     mov   y,#$00
0b44: f7 04     mov   a,($04)+y
0b46: d5 00 02  mov   $0200+x,a
0b49: c4 00     mov   $00,a
0b4b: fc        inc   y
0b4c: f7 04     mov   a,($04)+y
0b4e: d5 10 02  mov   $0210+x,a
0b51: 04 00     or    a,$00
0b53: d0 03     bne   $0b58
0b55: 18 80 18  or    $18,#$80
0b58: e8 01     mov   a,#$01
0b5a: d4 80     mov   $80+x,a
0b5c: e4 18     mov   a,$18
0b5e: d4 e0     mov   $e0+x,a
0b60: 3a 04     incw  $04
0b62: 3a 04     incw  $04
0b64: 3d        inc   x
0b65: 3e 11     cmp   x,$11
0b67: d0 d3     bne   $0b3c
0b69: 6f        ret

0b6a: 2d        push  a
0b6b: e8 01     mov   a,#$01
0b6d: c4 2d     mov   $2d,a
0b6f: 3f 8b 0d  call  $0d8b
0b72: f4 e0     mov   a,$e0+x
0b74: 28 80     and   a,#$80
0b76: d0 06     bne   $0b7e
0b78: 8f 00 18  mov   $18,#$00
0b7b: 3f 72 0c  call  $0c72
0b7e: 0b 13     asl   $13
0b80: 3d        inc   x
0b81: 3e 11     cmp   x,$11
0b83: d0 ed     bne   $0b72
0b85: ae        pop   a
0b86: 68 80     cmp   a,#$80
0b88: f0 54     beq   $0bde
0b8a: 8d 02     mov   y,#$02
0b8c: cf        mul   ya
0b8d: da 04     movw  $04,ya
0b8f: 60        clrc
0b90: 98 00 04  adc   $04,#$00
0b93: 98 18 05  adc   $05,#$18
0b96: 8d 00     mov   y,#$00
0b98: f7 04     mov   a,($04)+y
0b9a: c4 06     mov   $06,a
0b9c: fc        inc   y
0b9d: f7 04     mov   a,($04)+y
0b9f: c4 07     mov   $07,a
0ba1: 8f 00 18  mov   $18,#$00
0ba4: 8f 07 00  mov   $00,#$07
0ba7: 8d 00     mov   y,#$00
0ba9: f7 06     mov   a,($06)+y
0bab: c4 02     mov   $02,a
0bad: fc        inc   y
0bae: f7 06     mov   a,($06)+y
0bb0: c4 03     mov   $03,a
0bb2: 04 02     or    a,$02
0bb4: f0 28     beq   $0bde
0bb6: f8 00     mov   x,$00
0bb8: 7d        mov   a,x
0bb9: 60        clrc
0bba: 88 08     adc   a,#$08
0bbc: 5d        mov   x,a
0bbd: e4 02     mov   a,$02
0bbf: d5 00 02  mov   $0200+x,a
0bc2: e4 03     mov   a,$03
0bc4: d5 10 02  mov   $0210+x,a
0bc7: 3f df 0b  call  $0bdf
0bca: e8 00     mov   a,#$00
0bcc: d4 e0     mov   $e0+x,a
0bce: f8 00     mov   x,$00
0bd0: f4 e0     mov   a,$e0+x
0bd2: 08 20     or    a,#$20
0bd4: d4 e0     mov   $e0+x,a
0bd6: 3a 06     incw  $06
0bd8: 3a 06     incw  $06
0bda: 8b 00     dec   $00
0bdc: 10 c9     bpl   $0ba7
0bde: 6f        ret

0bdf: e8 00     mov   a,#$00
0be1: d4 c0     mov   $c0+x,a
0be3: d5 40 02  mov   $0240+x,a
0be6: d5 c0 02  mov   $02c0+x,a
0be9: e8 18     mov   a,#$18
0beb: d5 20 02  mov   $0220+x,a
0bee: e8 07     mov   a,#$07
0bf0: d5 30 02  mov   $0230+x,a
0bf3: e8 01     mov   a,#$01
0bf5: d4 80     mov   $80+x,a
0bf7: e8 b0     mov   a,#$b0
0bf9: d5 50 02  mov   $0250+x,a
0bfc: e8 0f     mov   a,#$0f
0bfe: d5 90 02  mov   $0290+x,a
0c01: e8 0f     mov   a,#$0f
0c03: d5 70 02  mov   $0270+x,a
0c06: e8 ff     mov   a,#$ff
0c08: d5 d0 04  mov   $04d0+x,a
0c0b: 8d 00     mov   y,#$00
0c0d: e8 64     mov   a,#$64
0c0f: d5 60 02  mov   $0260+x,a
0c12: 3f 63 0d  call  $0d63
0c15: e8 00     mov   a,#$00
0c17: 5f f4 0c  jmp   $0cf4

0c1a: d5 20 02  mov   $0220+x,a
0c1d: f7 2e     mov   a,($2e)+y
0c1f: 30 0f     bmi   $0c30
0c21: 3a 2e     incw  $2e
0c23: 2d        push  a
0c24: 28 0f     and   a,#$0f
0c26: d5 90 02  mov   $0290+x,a
0c29: ae        pop   a
0c2a: 9f        xcn   a
0c2b: 28 07     and   a,#$07
0c2d: d5 30 02  mov   $0230+x,a
0c30: 6f        ret

0c31: 80        setc
0c32: a8 e0     sbc   a,#$e0
0c34: 1c        asl   a
0c35: 8d 00     mov   y,#$00
0c37: 7a 0c     addw  ya,$0c
0c39: da 04     movw  $04,ya
0c3b: 8d 01     mov   y,#$01
0c3d: f7 04     mov   a,($04)+y
0c3f: 2d        push  a
0c40: dc        dec   y
0c41: f7 04     mov   a,($04)+y
0c43: 2d        push  a
0c44: 6f        ret

; vcmd ef - call subroutine
0c45: f7 2e     mov   a,($2e)+y
0c47: 3a 2e     incw  $2e
0c49: d5 30 05  mov   $0530+x,a
0c4c: f7 2e     mov   a,($2e)+y
0c4e: 3a 2e     incw  $2e
0c50: d5 40 05  mov   $0540+x,a
0c53: f7 2e     mov   a,($2e)+y
0c55: 3a 2e     incw  $2e
0c57: d5 50 05  mov   $0550+x,a
0c5a: e4 2e     mov   a,$2e
0c5c: d5 10 05  mov   $0510+x,a
0c5f: e4 2f     mov   a,$2f
0c61: d5 20 05  mov   $0520+x,a
0c64: 18 10 18  or    $18,#$10
0c67: f5 30 05  mov   a,$0530+x
0c6a: c4 2e     mov   $2e,a
0c6c: f5 40 05  mov   a,$0540+x
0c6f: c4 2f     mov   $2f,a
0c71: 6f        ret

0c72: 83 18 27  bbs4  $18,$0c9c
0c75: 18 80 18  or    $18,#$80
0c78: 78 00 2d  cmp   $2d,#$00
0c7b: f0 1b     beq   $0c98
0c7d: 4d        push  x
0c7e: e4 18     mov   a,$18
0c80: 2d        push  a
0c81: 7d        mov   a,x
0c82: 80        setc
0c83: a8 08     sbc   a,#$08
0c85: 5d        mov   x,a
0c86: f4 e0     mov   a,$e0+x
0c88: 28 df     and   a,#$df
0c8a: d4 e0     mov   $e0+x,a
0c8c: c4 18     mov   $18,a
0c8e: f5 80 02  mov   a,$0280+x
0c91: 3f f4 0c  call  $0cf4
0c94: ae        pop   a
0c95: c4 18     mov   $18,a
0c97: ce        pop   x
0c98: e8 00     mov   a,#$00
0c9a: 2f 29     bra   $0cc5
0c9c: f5 50 05  mov   a,$0550+x
0c9f: 9c        dec   a
0ca0: d5 50 05  mov   $0550+x,a
0ca3: d0 0c     bne   $0cb1
0ca5: 38 ef 18  and   $18,#$ef
0ca8: f5 10 05  mov   a,$0510+x
0cab: fd        mov   y,a
0cac: f5 20 05  mov   a,$0520+x
0caf: 2f 07     bra   $0cb8
0cb1: f5 30 05  mov   a,$0530+x
0cb4: fd        mov   y,a
0cb5: f5 40 05  mov   a,$0540+x
0cb8: d5 10 02  mov   $0210+x,a
0cbb: c4 2f     mov   $2f,a
0cbd: dd        mov   a,y
0cbe: d5 00 02  mov   $0200+x,a
0cc1: c4 2e     mov   $2e,a
0cc3: e8 01     mov   a,#$01
0cc5: 2d        push  a
0cc6: e4 18     mov   a,$18
0cc8: d4 e0     mov   $e0+x,a
0cca: ae        pop   a
0ccb: 6f        ret

; vcmd fa
0ccc: 38 f7 18  and   $18,#$f7
0ccf: f7 2e     mov   a,($2e)+y
0cd1: f0 03     beq   $0cd6
0cd3: 18 08 18  or    $18,#$08
0cd6: 3a 2e     incw  $2e
0cd8: 6f        ret

; vcmd f9
0cd9: f7 2e     mov   a,($2e)+y
0cdb: 3a 2e     incw  $2e
0cdd: 2d        push  a
0cde: f5 80 02  mov   a,$0280+x
0ce1: fd        mov   y,a
0ce2: ae        pop   a
0ce3: d6 a8 07  mov   $07a8+y,a
0ce6: 6f        ret

; vcmd fb-ff - nop
0ce7: 6f        ret

; vcmd e0 - set instrument
0ce8: f7 2e     mov   a,($2e)+y
0cea: 3a 2e     incw  $2e
0cec: 75 80 02  cmp   a,$0280+x
0cef: f0 da     beq   $0ccb
0cf1: 38 fb 18  and   $18,#$fb
0cf4: a3 18 0b  bbs5  $18,$0d02
0cf7: 2d        push  a
0cf8: 3f 23 14  call  $1423
0cfb: d3 18 03  bbc6  $18,$0d01
0cfe: 3f fc 13  call  $13fc
0d01: ae        pop   a
0d02: 28 3f     and   a,#$3f
0d04: d5 80 02  mov   $0280+x,a
0d07: 8d 06     mov   y,#$06
0d09: cf        mul   ya
0d0a: da 04     movw  $04,ya
0d0c: e8 00     mov   a,#$00
0d0e: 8d 30     mov   y,#$30
0d10: 7a 04     addw  ya,$04
0d12: da 04     movw  $04,ya
0d14: 3f 99 10  call  $1099
0d17: 4d        push  x
0d18: fd        mov   y,a
0d19: 7d        mov   a,x
0d1a: 28 07     and   a,#$07
0d1c: 9f        xcn   a
0d1d: 60        clrc
0d1e: 88 04     adc   a,#$04
0d20: 5d        mov   x,a
0d21: a3 18 08  bbs5  $18,$0d2c
0d24: f7 04     mov   a,($04)+y
0d26: c9 f2 00  mov   $00f2,x
0d29: c5 f3 00  mov   $00f3,a
0d2c: 3d        inc   x
0d2d: fc        inc   y
0d2e: ad 04     cmp   y,#$04
0d30: d0 ef     bne   $0d21
0d32: ce        pop   x
0d33: f7 04     mov   a,($04)+y
0d35: d5 a0 02  mov   $02a0+x,a
0d38: fc        inc   y
0d39: f7 04     mov   a,($04)+y
0d3b: d5 b0 02  mov   $02b0+x,a
0d3e: 6f        ret

0d3f: a3 18 0e  bbs5  $18,$0d50
0d42: 78 00 2d  cmp   $2d,#$00
0d45: f0 03     beq   $0d4a
0d47: e3 18 06  bbs7  $18,$0d50
0d4a: e4 23     mov   a,$23
0d4c: 04 13     or    a,$13
0d4e: c4 23     mov   $23,a
0d50: 6f        ret

0d51: a3 18 0e  bbs5  $18,$0d62
0d54: 78 00 2d  cmp   $2d,#$00
0d57: f0 03     beq   $0d5c
0d59: e3 18 06  bbs7  $18,$0d62
0d5c: e4 24     mov   a,$24
0d5e: 04 13     or    a,$13
0d60: c4 24     mov   $24,a
0d62: 6f        ret

0d63: a3 18 13  bbs5  $18,$0d79
0d66: 6d        push  y
0d67: cb 12     mov   $12,y
0d69: fd        mov   y,a
0d6a: 7d        mov   a,x
0d6b: 28 07     and   a,#$07
0d6d: 9f        xcn   a
0d6e: 60        clrc
0d6f: 84 12     adc   a,$12
0d71: c5 f2 00  mov   $00f2,a
0d74: cc f3 00  mov   $00f3,y
0d77: dd        mov   a,y
0d78: ee        pop   y
0d79: 6f        ret

0d7a: a3 18 06  bbs5  $18,$0d83
0d7d: cc f2 00  mov   $00f2,y
0d80: c5 f3 00  mov   $00f3,a
0d83: 6f        ret

0d84: cc f2 00  mov   $00f2,y
0d87: e5 f3 00  mov   a,$00f3
0d8a: 6f        ret

0d8b: 2d        push  a
0d8c: 78 00 2d  cmp   $2d,#$00
0d8f: f0 09     beq   $0d9a
0d91: 8f 10 13  mov   $13,#$10
0d94: cd 0c     mov   x,#$0c
0d96: e8 10     mov   a,#$10
0d98: 2f 07     bra   $0da1
0d9a: 8f 01 13  mov   $13,#$01
0d9d: cd 00     mov   x,#$00
0d9f: e8 08     mov   a,#$08
0da1: c4 11     mov   $11,a
0da3: e8 00     mov   a,#$00
0da5: c4 14     mov   $14,a
0da7: ae        pop   a
0da8: 6f        ret

0da9: d5 50 02  mov   $0250+x,a
0dac: 68 c9     cmp   a,#$c9
0dae: d0 03     bne   $0db3
0db0: 5f 51 0d  jmp   $0d51

0db3: 3f 6a 12  call  $126a
0db6: 18 03 18  or    $18,#$03
0db9: e8 00     mov   a,#$00
0dbb: d5 80 04  mov   $0480+x,a
0dbe: d5 90 04  mov   $0490+x,a
0dc1: d5 60 04  mov   $0460+x,a
0dc4: d5 70 04  mov   $0470+x,a
0dc7: 43 18 1b  bbs2  $18,$0de5
0dca: d5 d0 02  mov   $02d0+x,a
0dcd: d5 e0 02  mov   $02e0+x,a
0dd0: d5 60 03  mov   $0360+x,a
0dd3: d5 70 03  mov   $0370+x,a
0dd6: d5 f0 03  mov   $03f0+x,a
0dd9: d5 00 04  mov   $0400+x,a
0ddc: 3f 3f 0d  call  $0d3f
0ddf: 3f 7f 10  call  $107f
0de2: 3f 70 10  call  $1070
0de5: 38 fb 18  and   $18,#$fb
0de8: ba 2e     movw  ya,$2e
0dea: da 06     movw  $06,ya
0dec: 8d 00     mov   y,#$00
0dee: f7 06     mov   a,($06)+y
0df0: 3a 06     incw  $06
0df2: 68 00     cmp   a,#$00
0df4: f0 51     beq   $0e47
0df6: 10 f4     bpl   $0dec
0df8: 68 c8     cmp   a,#$c8
0dfa: f0 12     beq   $0e0e
0dfc: 68 e0     cmp   a,#$e0
0dfe: 90 13     bcc   $0e13
0e00: 80        setc
0e01: a8 e0     sbc   a,#$e0
0e03: fd        mov   y,a
0e04: f6 6c 14  mov   a,$146c+y
0e07: f0 e3     beq   $0dec
0e09: 3a 06     incw  $06
0e0b: 9c        dec   a
0e0c: 2f f9     bra   $0e07
0e0e: 18 04 18  or    $18,#$04
0e11: 2f d9     bra   $0dec
0e13: c4 16     mov   $16,a
0e15: 53 18 2f  bbc2  $18,$0e47
0e18: 73 17 2c  bbc3  $17,$0e47
0e1b: f5 50 02  mov   a,$0250+x
0e1e: 80        setc
0e1f: a4 16     sbc   a,$16
0e21: c4 00     mov   $00,a
0e23: 10 03     bpl   $0e28
0e25: 48 ff     eor   a,#$ff
0e27: bc        inc   a
0e28: 8d 10     mov   y,#$10
0e2a: cf        mul   ya
0e2b: da 02     movw  $02,ya
0e2d: 4d        push  x
0e2e: f5 20 02  mov   a,$0220+x
0e31: 5d        mov   x,a
0e32: ba 02     movw  ya,$02
0e34: 9e        div   ya,x
0e35: 8d 00     mov   y,#$00
0e37: ce        pop   x
0e38: 0b 00     asl   $00
0e3a: b0 04     bcs   $0e40
0e3c: 48 ff     eor   a,#$ff
0e3e: bc        inc   a
0e3f: dc        dec   y
0e40: d5 80 04  mov   $0480+x,a
0e43: dd        mov   a,y
0e44: d5 90 04  mov   $0490+x,a
0e47: 6f        ret

0e48: 73 17 1d  bbc3  $17,$0e68
0e4b: f5 60 04  mov   a,$0460+x
0e4e: c4 00     mov   $00,a
0e50: f5 70 04  mov   a,$0470+x
0e53: c4 01     mov   $01,a
0e55: f5 90 04  mov   a,$0490+x
0e58: fd        mov   y,a
0e59: f5 80 04  mov   a,$0480+x
0e5c: 7a 00     addw  ya,$00
0e5e: d5 60 04  mov   $0460+x,a
0e61: dd        mov   a,y
0e62: d5 70 04  mov   $0470+x,a
0e65: 18 01 18  or    $18,#$01
0e68: 6f        ret

0e69: 8d 02     mov   y,#$02
0e6b: f4 a0     mov   a,$a0+x
0e6d: 3f 63 0d  call  $0d63
0e70: fc        inc   y
0e71: f4 b0     mov   a,$b0+x
0e73: 5f 63 0d  jmp   $0d63

0e76: 73 18 19  bbc3  $18,$0e92
0e79: f5 50 02  mov   a,$0250+x
0e7c: a8 8c     sbc   a,#$8c
0e7e: 1c        asl   a
0e7f: fd        mov   y,a
0e80: f6 22 16  mov   a,$1622+y
0e83: 75 80 02  cmp   a,$0280+x
0e86: f0 05     beq   $0e8d
0e88: 6d        push  y
0e89: 3f f4 0c  call  $0cf4
0e8c: ee        pop   y
0e8d: f6 23 16  mov   a,$1623+y
0e90: 2f 03     bra   $0e95
0e92: f5 50 02  mov   a,$0250+x
0e95: 80        setc
0e96: a8 80     sbc   a,#$80
0e98: 60        clrc
0e99: 95 40 02  adc   a,$0240+x
0e9c: 60        clrc
0e9d: 84 15     adc   a,$15
0e9f: 8d 10     mov   y,#$10
0ea1: cf        mul   ya
0ea2: c4 00     mov   $00,a
0ea4: cb 01     mov   $01,y
0ea6: f5 80 02  mov   a,$0280+x
0ea9: fd        mov   y,a
0eaa: f6 a8 07  mov   a,$07a8+y
0ead: c4 02     mov   $02,a
0eaf: 8d 00     mov   y,#$00
0eb1: f5 c0 02  mov   a,$02c0+x
0eb4: 60        clrc
0eb5: 84 02     adc   a,$02
0eb7: 10 01     bpl   $0eba
0eb9: dc        dec   y
0eba: 7a 00     addw  ya,$00
0ebc: da 00     movw  $00,ya
0ebe: f5 e0 02  mov   a,$02e0+x
0ec1: fd        mov   y,a
0ec2: f5 d0 02  mov   a,$02d0+x
0ec5: 7a 00     addw  ya,$00
0ec7: da 00     movw  $00,ya
0ec9: f5 70 04  mov   a,$0470+x
0ecc: fd        mov   y,a
0ecd: f5 60 04  mov   a,$0460+x
0ed0: 7a 00     addw  ya,$00
0ed2: da 00     movw  $00,ya
0ed4: f5 00 04  mov   a,$0400+x
0ed7: fd        mov   y,a
0ed8: f5 f0 03  mov   a,$03f0+x
0edb: 7a 00     addw  ya,$00
0edd: 10 04     bpl   $0ee3
0edf: ba 08     movw  ya,$08
0ee1: 2f 06     bra   $0ee9
0ee3: 5a 0e     cmpw  ya,$0e
0ee5: 90 02     bcc   $0ee9
0ee7: ba 0e     movw  ya,$0e
0ee9: da 00     movw  $00,ya
0eeb: 4d        push  x
0eec: cd 10     mov   x,#$10
0eee: 9e        div   ya,x
0eef: cb 03     mov   $03,y
0ef1: 8d 00     mov   y,#$00
0ef3: cd 0c     mov   x,#$0c
0ef5: 9e        div   ya,x
0ef6: ce        pop   x
0ef7: c4 02     mov   $02,a
0ef9: dd        mov   a,y
0efa: 9f        xcn   a
0efb: 60        clrc
0efc: 84 03     adc   a,$03
0efe: 8d 02     mov   y,#$02
0f00: cf        mul   ya
0f01: 7a 0a     addw  ya,$0a
0f03: da 04     movw  $04,ya
0f05: 8d 00     mov   y,#$00
0f07: f7 04     mov   a,($04)+y
0f09: c4 00     mov   $00,a
0f0b: fc        inc   y
0f0c: f7 04     mov   a,($04)+y
0f0e: c4 01     mov   $01,a
0f10: 78 05 02  cmp   $02,#$05
0f13: f0 08     beq   $0f1d
0f15: 4b 01     lsr   $01
0f17: 6b 00     ror   $00
0f19: ab 02     inc   $02
0f1b: 2f f3     bra   $0f10
0f1d: f5 b0 02  mov   a,$02b0+x
0f20: eb 01     mov   y,$01
0f22: cf        mul   ya
0f23: da 02     movw  $02,ya
0f25: f5 b0 02  mov   a,$02b0+x
0f28: eb 00     mov   y,$00
0f2a: cf        mul   ya
0f2b: 6d        push  y
0f2c: f5 a0 02  mov   a,$02a0+x
0f2f: eb 00     mov   y,$00
0f31: cf        mul   ya
0f32: 7a 02     addw  ya,$02
0f34: da 02     movw  $02,ya
0f36: f5 a0 02  mov   a,$02a0+x
0f39: eb 01     mov   y,$01
0f3b: cf        mul   ya
0f3c: fd        mov   y,a
0f3d: ae        pop   a
0f3e: 7a 02     addw  ya,$02
0f40: da 02     movw  $02,ya
0f42: e4 02     mov   a,$02
0f44: d4 a0     mov   $a0+x,a
0f46: e4 03     mov   a,$03
0f48: d4 b0     mov   $b0+x,a
0f4a: 6f        ret

; vcmd e9 - global transpose
0f4b: f7 2e     mov   a,($2e)+y
0f4d: 3a 2e     incw  $2e
0f4f: c4 15     mov   $15,a
0f51: 6f        ret

; vcmd ea - per-voice transpose
0f52: f7 2e     mov   a,($2e)+y
0f54: d5 40 02  mov   $0240+x,a
0f57: 3a 2e     incw  $2e
0f59: 6f        ret

; vcmd f4 - tuning
0f5a: f7 2e     mov   a,($2e)+y
0f5c: 3a 2e     incw  $2e
0f5e: d5 c0 02  mov   $02c0+x,a
0f61: 6f        ret

; vcmd e3 - vibrato on
0f62: 18 01 17  or    $17,#$01
0f65: f7 2e     mov   a,($2e)+y
0f67: 3a 2e     incw  $2e
0f69: d5 f0 02  mov   $02f0+x,a
0f6c: f7 2e     mov   a,($2e)+y
0f6e: 3a 2e     incw  $2e
0f70: d5 00 03  mov   $0300+x,a
0f73: f7 2e     mov   a,($2e)+y
0f75: 3a 2e     incw  $2e
0f77: d5 10 03  mov   $0310+x,a
0f7a: 6f        ret

; vcmd e4 - vibrato off
0f7b: 38 fe 17  and   $17,#$fe
0f7e: 6f        ret

; vcmd f1 - pitch envelope
0f7f: f7 2e     mov   a,($2e)+y
0f81: 3a 2e     incw  $2e
0f83: d5 10 04  mov   $0410+x,a
0f86: f7 2e     mov   a,($2e)+y
0f88: 3a 2e     incw  $2e
0f8a: d5 20 04  mov   $0420+x,a
0f8d: f7 2e     mov   a,($2e)+y
0f8f: 3a 2e     incw  $2e
0f91: d5 30 04  mov   $0430+x,a
0f94: 18 04 17  or    $17,#$04
0f97: 6f        ret

; vcmd f3 - pitch envelope off
0f98: 38 fb 17  and   $17,#$fb
0f9b: 6f        ret

; vcmd f2
0f9c: 38 f7 17  and   $17,#$f7
0f9f: f7 2e     mov   a,($2e)+y
0fa1: f0 03     beq   $0fa6
0fa3: 18 08 17  or    $17,#$08
0fa6: 3a 2e     incw  $2e
0fa8: 6f        ret

0fa9: e8 01     mov   a,#$01
0fab: 3f b5 0f  call  $0fb5
0fae: 9c        dec   a
0faf: d0 03     bne   $0fb4
0fb1: 18 01 18  or    $18,#$01
0fb4: 6f        ret

0fb5: 24 17     and   a,$17
0fb7: f0 69     beq   $1022
0fb9: f5 20 03  mov   a,$0320+x
0fbc: f0 06     beq   $0fc4
0fbe: 9c        dec   a
0fbf: d5 20 03  mov   $0320+x,a
0fc2: 2f 5e     bra   $1022
0fc4: f5 30 03  mov   a,$0330+x
0fc7: 75 00 03  cmp   a,$0300+x
0fca: f0 06     beq   $0fd2
0fcc: bc        inc   a
0fcd: d5 30 03  mov   $0330+x,a
0fd0: 2f 50     bra   $1022
0fd2: e8 00     mov   a,#$00
0fd4: d5 30 03  mov   $0330+x,a
0fd7: f5 40 03  mov   a,$0340+x
0fda: 75 10 03  cmp   a,$0310+x
0fdd: f0 06     beq   $0fe5
0fdf: bc        inc   a
0fe0: d5 40 03  mov   $0340+x,a
0fe3: 2f 0d     bra   $0ff2
0fe5: e8 00     mov   a,#$00
0fe7: d5 40 03  mov   $0340+x,a
0fea: f5 50 03  mov   a,$0350+x
0fed: 48 01     eor   a,#$01
0fef: d5 50 03  mov   $0350+x,a
0ff2: f5 d0 02  mov   a,$02d0+x
0ff5: c4 00     mov   $00,a
0ff7: f5 e0 02  mov   a,$02e0+x
0ffa: c4 01     mov   $01,a
0ffc: f5 50 03  mov   a,$0350+x
0fff: c4 02     mov   $02,a
1001: 8d 00     mov   y,#$00
1003: e8 01     mov   a,#$01
1005: 8b 02     dec   $02
1007: d0 02     bne   $100b
1009: dc        dec   y
100a: dd        mov   a,y
100b: 7a 00     addw  ya,$00
100d: d5 d0 02  mov   $02d0+x,a
1010: dd        mov   a,y
1011: d5 e0 02  mov   $02e0+x,a
1014: d3 18 08  bbc6  $18,$101f
1017: f5 d0 02  mov   a,$02d0+x
101a: 3f 03 14  call  $1403
101d: 2f 03     bra   $1022
101f: e8 01     mov   a,#$01
1021: 6f        ret

1022: e8 00     mov   a,#$00
1024: 6f        ret

1025: 53 17 47  bbc2  $17,$106f
1028: f5 40 04  mov   a,$0440+x
102b: f0 06     beq   $1033
102d: 9c        dec   a
102e: d5 40 04  mov   $0440+x,a
1031: 2f 3c     bra   $106f
1033: f5 50 04  mov   a,$0450+x
1036: 75 20 04  cmp   a,$0420+x
1039: f0 06     beq   $1041
103b: bc        inc   a
103c: d5 50 04  mov   $0450+x,a
103f: 2f 2e     bra   $106f
1041: e8 00     mov   a,#$00
1043: d5 50 04  mov   $0450+x,a
1046: f5 f0 03  mov   a,$03f0+x
1049: c4 00     mov   $00,a
104b: f5 00 04  mov   a,$0400+x
104e: c4 01     mov   $01,a
1050: 8d 00     mov   y,#$00
1052: f5 30 04  mov   a,$0430+x
1055: 10 01     bpl   $1058
1057: dc        dec   y
1058: 7a 00     addw  ya,$00
105a: d5 f0 03  mov   $03f0+x,a
105d: dd        mov   a,y
105e: d5 00 04  mov   $0400+x,a
1061: d3 18 08  bbc6  $18,$106c
1064: f5 f0 03  mov   a,$03f0+x
1067: 3f 03 14  call  $1403
106a: 2f 03     bra   $106f
106c: 18 01 18  or    $18,#$01
106f: 6f        ret

1070: 53 17 0b  bbc2  $17,$107e
1073: e8 00     mov   a,#$00
1075: d5 50 04  mov   $0450+x,a
1078: f5 10 04  mov   a,$0410+x
107b: d5 40 04  mov   $0440+x,a
107e: 6f        ret

107f: 13 17 11  bbc0  $17,$1093
1082: e8 00     mov   a,#$00
1084: d5 30 03  mov   $0330+x,a
1087: d5 40 03  mov   $0340+x,a
108a: d5 50 03  mov   $0350+x,a
108d: f5 f0 02  mov   a,$02f0+x
1090: d5 20 03  mov   $0320+x,a
1093: 6f        ret

1094: 6d        push  y
1095: cf        mul   ya
1096: dd        mov   a,y
1097: ee        pop   y
1098: 6f        ret

1099: e4 13     mov   a,$13
109b: 8d 5c     mov   y,#$5c
109d: 3f 7a 0d  call  $0d7a
10a0: 00        nop
10a1: 00        nop
10a2: 00        nop
10a3: 00        nop
10a4: 00        nop
10a5: 00        nop
10a6: 00        nop
10a7: 00        nop
10a8: e8 00     mov   a,#$00
10aa: 8d 00     mov   y,#$00
10ac: 3f 63 0d  call  $0d63
10af: fc        inc   y
10b0: 3f 63 0d  call  $0d63
10b3: 6f        ret

10b4: f5 60 02  mov   a,$0260+x
10b7: c4 00     mov   $00,a
10b9: 8f 00 01  mov   $01,#$00
10bc: f5 70 03  mov   a,$0370+x
10bf: fd        mov   y,a
10c0: f5 60 03  mov   a,$0360+x
10c3: 7a 00     addw  ya,$00
10c5: 10 04     bpl   $10cb
10c7: e8 00     mov   a,#$00
10c9: 2f 13     bra   $10de
10cb: 68 80     cmp   a,#$80
10cd: 90 02     bcc   $10d1
10cf: e8 7f     mov   a,#$7f
10d1: 2d        push  a
10d2: f5 90 02  mov   a,$0290+x
10d5: fd        mov   y,a
10d6: f6 f0 07  mov   a,$07f0+y
10d9: fd        mov   y,a
10da: ae        pop   a
10db: 3f 94 10  call  $1094
10de: 2d        push  a
10df: f5 d0 04  mov   a,$04d0+x
10e2: fd        mov   y,a
10e3: ae        pop   a
10e4: 3f 94 10  call  $1094
10e7: d4 d0     mov   $d0+x,a
10e9: 6f        ret

10ea: e8 0f     mov   a,#$0f
10ec: 78 00 4c  cmp   $4c,#$00
10ef: d0 03     bne   $10f4
10f1: f5 70 02  mov   a,$0270+x
10f4: 2d        push  a
10f5: fd        mov   y,a
10f6: f6 aa 16  mov   a,$16aa+y
10f9: fd        mov   y,a
10fa: f4 d0     mov   a,$d0+x
10fc: 3f 94 10  call  $1094
10ff: 8d 00     mov   y,#$00
1101: 3f 63 0d  call  $0d63
1104: ae        pop   a
1105: 48 ff     eor   a,#$ff
1107: 28 1f     and   a,#$1f
1109: fd        mov   y,a
110a: f6 aa 16  mov   a,$16aa+y
110d: fd        mov   y,a
110e: f4 d0     mov   a,$d0+x
1110: 3f 94 10  call  $1094
1113: 8d 01     mov   y,#$01
1115: 5f 63 0d  jmp   $0d63

; vcmd e1 - pan
1118: f7 2e     mov   a,($2e)+y
111a: 3a 2e     incw  $2e
111c: d5 70 02  mov   $0270+x,a
111f: 6f        ret

; vcmd e2 - pan fade
1120: f7 2e     mov   a,($2e)+y
1122: 3a 2e     incw  $2e
1124: d5 b0 04  mov   $04b0+x,a
1127: e8 00     mov   a,#$00
1129: d5 c0 04  mov   $04c0+x,a
112c: f7 2e     mov   a,($2e)+y
112e: 3a 2e     incw  $2e
1130: 28 1f     and   a,#$1f
1132: 08 40     or    a,#$40
1134: d5 a0 04  mov   $04a0+x,a
1137: 6f        ret

; vcmd f0 - vibrato fade
1138: f7 2e     mov   a,($2e)+y
113a: f0 03     beq   $113f
113c: 9c        dec   a
113d: 08 80     or    a,#$80
113f: d5 a0 04  mov   $04a0+x,a
1142: 3a 2e     incw  $2e
1144: 6f        ret

; vcmd eb
1145: 4d        push  x
1146: 7d        mov   a,x
1147: 60        clrc
1148: 88 90     adc   a,#$90
114a: 5d        mov   x,a
114b: 3f 65 0f  call  $0f65
114e: ce        pop   x
114f: 18 02 17  or    $17,#$02
1152: 6f        ret

; vcmd ec
1153: 38 fd 17  and   $17,#$fd
1156: 6f        ret

; vcmd e5 - master volume
1157: f7 2e     mov   a,($2e)+y
1159: 3a 2e     incw  $2e
115b: 78 00 2d  cmp   $2d,#$00
115e: d0 f6     bne   $1156
1160: c4 20     mov   $20,a
1162: eb 19     mov   y,$19
1164: e4 20     mov   a,$20
1166: 3f 94 10  call  $1094
1169: 8d 0c     mov   y,#$0c
116b: 3f 7a 0d  call  $0d7a
116e: 8d 1c     mov   y,#$1c
1170: 5f 7a 0d  jmp   $0d7a

; vcmd e6 - master volume fade
1173: f7 2e     mov   a,($2e)+y
1175: 3a 2e     incw  $2e
1177: c4 00     mov   $00,a
1179: f7 2e     mov   a,($2e)+y
117b: 3a 2e     incw  $2e
117d: c4 1a     mov   $1a,a
117f: e4 00     mov   a,$00
1181: c4 1c     mov   $1c,a
1183: 8f 00 1b  mov   $1b,#$00
1186: 18 01 1d  or    $1d,#$01
1189: 6f        ret

; vcmd ed - volume
118a: f7 2e     mov   a,($2e)+y
118c: 3a 2e     incw  $2e
118e: d5 60 02  mov   $0260+x,a
1191: e8 ff     mov   a,#$ff
1193: d5 d0 04  mov   $04d0+x,a
1196: 6f        ret

; vcmd ee - volume fade
1197: f7 2e     mov   a,($2e)+y
1199: 3a 2e     incw  $2e
119b: d5 e0 04  mov   $04e0+x,a
119e: e8 00     mov   a,#$00
11a0: d5 f0 04  mov   $04f0+x,a
11a3: f7 2e     mov   a,($2e)+y
11a5: 3a 2e     incw  $2e
11a7: d5 00 05  mov   $0500+x,a
11aa: 18 10 17  or    $17,#$10
11ad: 6f        ret

11ae: 13 1d 1b  bbc0  $1d,$11cc
11b1: e4 1b     mov   a,$1b
11b3: 64 1a     cmp   a,$1a
11b5: f0 04     beq   $11bb
11b7: ab 1b     inc   $1b
11b9: 2f 11     bra   $11cc
11bb: 8f 00 1b  mov   $1b,#$00
11be: eb 19     mov   y,$19
11c0: e4 20     mov   a,$20
11c2: 3f 94 10  call  $1094
11c5: 64 1c     cmp   a,$1c
11c7: d0 04     bne   $11cd
11c9: 38 fe 1d  and   $1d,#$fe
11cc: 6f        ret

11cd: 8d 01     mov   y,#$01
11cf: 8f 00 01  mov   $01,#$00
11d2: 80        setc
11d3: a4 1c     sbc   a,$1c
11d5: 30 04     bmi   $11db
11d7: 8d ff     mov   y,#$ff
11d9: 8b 01     dec   $01
11db: cb 00     mov   $00,y
11dd: e4 19     mov   a,$19
11df: 8d 00     mov   y,#$00
11e1: 7a 00     addw  ya,$00
11e3: 10 04     bpl   $11e9
11e5: e8 00     mov   a,#$00
11e7: 2f 06     bra   $11ef
11e9: ad 00     cmp   y,#$00
11eb: f0 02     beq   $11ef
11ed: e8 ff     mov   a,#$ff
11ef: c4 19     mov   $19,a
11f1: 5f 62 11  jmp   $1162

11f4: 93 17 51  bbc4  $17,$1248
11f7: f5 f0 04  mov   a,$04f0+x
11fa: 75 e0 04  cmp   a,$04e0+x
11fd: f0 06     beq   $1205
11ff: bc        inc   a
1200: d5 f0 04  mov   $04f0+x,a
1203: 2f 43     bra   $1248
1205: e8 00     mov   a,#$00
1207: d5 f0 04  mov   $04f0+x,a
120a: f5 d0 04  mov   a,$04d0+x
120d: fd        mov   y,a
120e: f5 60 02  mov   a,$0260+x
1211: 3f 94 10  call  $1094
1214: 75 00 05  cmp   a,$0500+x
1217: d0 05     bne   $121e
1219: 38 ef 17  and   $17,#$ef
121c: 2f 2a     bra   $1248
121e: 8d 01     mov   y,#$01
1220: 8f 00 01  mov   $01,#$00
1223: 80        setc
1224: b5 00 05  sbc   a,$0500+x
1227: 30 04     bmi   $122d
1229: 8d ff     mov   y,#$ff
122b: 8b 01     dec   $01
122d: cb 00     mov   $00,y
122f: f5 d0 04  mov   a,$04d0+x
1232: 8d 00     mov   y,#$00
1234: 7a 00     addw  ya,$00
1236: 10 04     bpl   $123c
1238: e8 00     mov   a,#$00
123a: 2f 06     bra   $1242
123c: ad 00     cmp   y,#$00
123e: f0 02     beq   $1242
1240: e8 ff     mov   a,#$ff
1242: d5 d0 04  mov   $04d0+x,a
1245: 18 02 18  or    $18,#$02
1248: 6f        ret

1249: 4d        push  x
124a: 7d        mov   a,x
124b: 60        clrc
124c: 88 90     adc   a,#$90
124e: 5d        mov   x,a
124f: e8 02     mov   a,#$02
1251: 3f b5 0f  call  $0fb5
1254: 9c        dec   a
1255: d0 03     bne   $125a
1257: 18 02 18  or    $18,#$02
125a: ce        pop   x
125b: 6f        ret

125c: 33 17 0a  bbc1  $17,$1269
125f: 4d        push  x
1260: 7d        mov   a,x
1261: 60        clrc
1262: 88 90     adc   a,#$90
1264: 5d        mov   x,a
1265: 3f 82 10  call  $1082
1268: ce        pop   x
1269: 6f        ret

126a: f5 70 02  mov   a,$0270+x
126d: fd        mov   y,a
126e: f5 a0 04  mov   a,$04a0+x
1271: f0 4e     beq   $12c1
1273: c4 00     mov   $00,a
1275: 28 40     and   a,#$40
1277: f0 23     beq   $129c
1279: f5 c0 04  mov   a,$04c0+x
127c: 75 b0 04  cmp   a,$04b0+x
127f: f0 06     beq   $1287
1281: bc        inc   a
1282: d5 c0 04  mov   $04c0+x,a
1285: 2f 3a     bra   $12c1
1287: e8 00     mov   a,#$00
1289: d5 c0 04  mov   $04c0+x,a
128c: dd        mov   a,y
128d: 80        setc
128e: b5 a0 04  sbc   a,$04a0+x
1291: 30 15     bmi   $12a8
1293: d0 0c     bne   $12a1
1295: e8 00     mov   a,#$00
1297: d5 a0 04  mov   $04a0+x,a
129a: 2f 25     bra   $12c1
129c: e4 00     mov   a,$00
129e: 5c        lsr   a
129f: 90 07     bcc   $12a8
12a1: ad 00     cmp   y,#$00
12a3: f0 0e     beq   $12b3
12a5: dc        dec   y
12a6: 2f 05     bra   $12ad
12a8: ad 1f     cmp   y,#$1f
12aa: f0 07     beq   $12b3
12ac: fc        inc   y
12ad: dd        mov   a,y
12ae: d5 70 02  mov   $0270+x,a
12b1: 2f 0e     bra   $12c1
12b3: e4 00     mov   a,$00
12b5: 28 40     and   a,#$40
12b7: d0 dc     bne   $1295
12b9: 58 01 00  eor   $00,#$01
12bc: e4 00     mov   a,$00
12be: d5 a0 04  mov   $04a0+x,a
12c1: 6f        ret

; vcmd e7 - tempo
12c2: f7 2e     mov   a,($2e)+y
12c4: 3a 2e     incw  $2e
12c6: 78 00 2d  cmp   $2d,#$00
12c9: f0 01     beq   $12cc
12cb: 6f        ret

12cc: 5f 17 13  jmp   $1317

; vcmd e8 - tempo fade
12cf: f7 2e     mov   a,($2e)+y
12d1: 3a 2e     incw  $2e
12d3: 2d        push  a
12d4: f7 2e     mov   a,($2e)+y
12d6: c4 00     mov   $00,a
12d8: 3a 2e     incw  $2e
12da: ae        pop   a
12db: c4 1e     mov   $1e,a
12dd: e4 00     mov   a,$00
12df: c4 1f     mov   $1f,a
12e1: 18 02 1d  or    $1d,#$02
12e4: 6f        ret

12e5: 33 1d fc  bbc1  $1d,$12e4
12e8: 8f 00 01  mov   $01,#$00
12eb: e4 1e     mov   a,$1e
12ed: c4 00     mov   $00,a
12ef: e4 10     mov   a,$10
12f1: 64 1f     cmp   a,$1f
12f3: 90 0b     bcc   $1300
12f5: f0 1b     beq   $1312
12f7: d0 00     bne   $12f9
12f9: 8b 01     dec   $01
12fb: 58 ff 00  eor   $00,#$ff
12fe: ab 00     inc   $00
1300: e4 10     mov   a,$10
1302: 8d 00     mov   y,#$00
1304: 7a 00     addw  ya,$00
1306: 10 04     bpl   $130c
1308: e8 00     mov   a,#$00
130a: 2f 06     bra   $1312
130c: ad 00     cmp   y,#$00
130e: f0 05     beq   $1315
1310: e8 ff     mov   a,#$ff
1312: 38 fd 1d  and   $1d,#$fd
1315: c4 10     mov   $10,a
1317: 4d        push  x
1318: c4 10     mov   $10,a
131a: 5d        mov   x,a
131b: 8d 17     mov   y,#$17
131d: e8 70     mov   a,#$70
131f: 9e        div   ya,x
1320: 8d 0a     mov   y,#$0a
1322: cf        mul   ya
1323: cd 30     mov   x,#$30
1325: 9e        div   ya,x
1326: c4 34     mov   $34,a
1328: cb 36     mov   $36,y
132a: e8 00     mov   a,#$00
132c: fd        mov   y,a
132d: c4 35     mov   $35,a
132f: c4 37     mov   $37,a
1331: da 30     movw  $30,ya
1333: da 32     movw  $32,ya
1335: da 3a     movw  $3a,ya
1337: e8 30     mov   a,#$30
1339: da 38     movw  $38,ya
133b: ce        pop   x
133c: ba 30     movw  ya,$30
133e: 7a 34     addw  ya,$34
1340: da 30     movw  $30,ya
1342: ba 32     movw  ya,$32
1344: 7a 36     addw  ya,$36
1346: 5a 38     cmpw  ya,$38
1348: 90 04     bcc   $134e
134a: 9a 38     subw  ya,$38
134c: 3a 30     incw  $30
134e: da 32     movw  $32,ya
1350: 6f        ret

; vcmd f6 - disable echo
1351: e8 00     mov   a,#$00
1353: c4 29     mov   $29,a
1355: c4 21     mov   $21,a
1357: c4 22     mov   $22,a
1359: 18 20 25  or    $25,#$20
135c: 6f        ret

; vcmd f5 - echo vbits/volume
135d: f7 2e     mov   a,($2e)+y
135f: 3a 2e     incw  $2e
1361: c4 29     mov   $29,a
1363: f7 2e     mov   a,($2e)+y
1365: 3a 2e     incw  $2e
1367: c4 21     mov   $21,a
1369: f7 2e     mov   a,($2e)+y
136b: 3a 2e     incw  $2e
136d: c4 22     mov   $22,a
136f: 38 df 25  and   $25,#$df
1372: 6f        ret

; vcmd f7 - set echo params
1373: f7 2e     mov   a,($2e)+y
1375: 3a 2e     incw  $2e
1377: 68 08     cmp   a,#$08
1379: 90 02     bcc   $137d
137b: e8 07     mov   a,#$07
137d: 3f a5 13  call  $13a5
1380: 8d 00     mov   y,#$00
1382: f7 2e     mov   a,($2e)+y
1384: 3a 2e     incw  $2e
1386: c4 26     mov   $26,a
1388: f7 2e     mov   a,($2e)+y
138a: 4d        push  x
138b: 28 07     and   a,#$07
138d: 3a 2e     incw  $2e
138f: 8d 08     mov   y,#$08
1391: cf        mul   ya
1392: 5d        mov   x,a
1393: 8d 0f     mov   y,#$0f
1395: f5 6a 16  mov   a,$166a+x
1398: 3f 7a 0d  call  $0d7a
139b: 3d        inc   x
139c: dd        mov   a,y
139d: 60        clrc
139e: 88 10     adc   a,#$10
13a0: fd        mov   y,a
13a1: 10 f2     bpl   $1395
13a3: ce        pop   x
13a4: 6f        ret

13a5: c4 2c     mov   $2c,a
13a7: 8d 7d     mov   y,#$7d
13a9: 3f 84 0d  call  $0d84
13ac: 64 2c     cmp   a,$2c
13ae: f0 2b     beq   $13db
13b0: 28 07     and   a,#$07
13b2: 48 ff     eor   a,#$ff
13b4: f3 2a 03  bbc7  $2a,$13ba
13b7: 60        clrc
13b8: 84 2a     adc   a,$2a
13ba: c4 2a     mov   $2a,a
13bc: 8d 04     mov   y,#$04
13be: f6 8b 14  mov   a,$148b+y
13c1: c5 f2 00  mov   $00f2,a
13c4: e8 00     mov   a,#$00
13c6: c5 f3 00  mov   $00f3,a
13c9: fe f3     dbnz  y,$13be
13cb: e4 25     mov   a,$25
13cd: 08 20     or    a,#$20
13cf: 8d 6c     mov   y,#$6c
13d1: 3f 7a 0d  call  $0d7a
13d4: e4 2c     mov   a,$2c
13d6: 8d 7d     mov   y,#$7d
13d8: 3f 7a 0d  call  $0d7a
13db: 1c        asl   a
13dc: 1c        asl   a
13dd: 1c        asl   a
13de: 48 ff     eor   a,#$ff
13e0: 80        setc
13e1: 88 ff     adc   a,#$ff
13e3: 8d 6d     mov   y,#$6d
13e5: 5f 7a 0d  jmp   $0d7a

; vcmd f8
13e8: 3f 23 14  call  $1423
13eb: 38 bf 18  and   $18,#$bf
13ee: f7 2e     mov   a,($2e)+y
13f0: 3a 2e     incw  $2e
13f2: 28 1f     and   a,#$1f
13f4: f0 0c     beq   $1402
13f6: 3f 18 14  call  $1418
13f9: 18 40 18  or    $18,#$40
13fc: e4 28     mov   a,$28
13fe: 04 13     or    a,$13
1400: c4 28     mov   $28,a
1402: 6f        ret

1403: c4 00     mov   $00,a
1405: e4 25     mov   a,$25
1407: 28 1f     and   a,#$1f
1409: 60        clrc
140a: 84 00     adc   a,$00
140c: 68 01     cmp   a,#$01
140e: b0 02     bcs   $1412
1410: e8 01     mov   a,#$01
1412: 68 20     cmp   a,#$20
1414: 90 02     bcc   $1418
1416: e8 1f     mov   a,#$1f
1418: c4 00     mov   $00,a
141a: e4 25     mov   a,$25
141c: 28 e0     and   a,#$e0
141e: 04 00     or    a,$00
1420: c4 25     mov   $25,a
1422: 6f        ret

1423: e4 13     mov   a,$13
1425: 48 ff     eor   a,#$ff
1427: 24 28     and   a,$28
1429: c4 28     mov   $28,a
142b: 6f        ret

; vcmd dispatch table
142c: dw $0ce8 ; e0 - set instrument
142e: dw $1118 ; e1 - pan
1230: dw $1120 ; e2 - pan fade
1232: dw $0f62 ; e3 - vibrato on
1234: dw $0f7b ; e4 - vibrato off
1236: dw $1157 ; e5 - master volume
1238: dw $1173 ; e6 - master volume fade
123a: dw $12c2 ; e7 - tempo
123c: dw $12cf ; e8 - tempo fade
123e: dw $0f4b ; e9 - global transpose
1440: dw $0f52 ; ea - per-voice transpose
1442: dw $1145 ; eb
1444: dw $1153 ; ec
1446: dw $118a ; ed - volume
1448: dw $1197 ; ee - volume fade
144a: dw $0c45 ; ef - call subroutine
144c: dw $1138 ; f0 - vibrato fade
144e: dw $0f7f ; f1 - pitch envelope
1450: dw $0f9c ; f2
1452: dw $0f98 ; f3 - pitch envelope off
1454: dw $0f5a ; f4 - tuning
1456: dw $135d ; f5 - echo vbits/volume
1458: dw $1351 ; f6 - disable echo
145a: dw $1373 ; f7 - set echo params
145c: dw $13e8 ; f8
145e: dw $0cd9 ; f9
1460: dw $0ccc ; fa
1462: dw $0ce7 ; fb - nop
1464: dw $0ce7 ; fc - nop
1466: dw $0ce7 ; fd - nop
1468: dw $0ce7 ; fe - nop
146a: dw $0ce7 ; ff - nop

; vcmd lengths
146c: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
1474: db $02,$01,$01,$01,$00,$01,$02,$03 ; e8-ef
147c: db $01,$03,$01,$00,$01,$03,$00,$03 ; f0-f7
1484: db $02,$01,$01,$00,$00,$00,$00,$00 ; f8-ff

148c: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d
1494: db $2d,$5c,$21,$22,$26,$29,$25,$23
149c: db $08,$28,$27,$24

; pitch table
14a0: dw $085f
14a2: dw $0867
14a4: dw $086e
14a6: dw $0876
14a8: dw $087e
14aa: dw $0886
14ac: dw $088e
14ae: dw $0896
14b0: dw $089e
14b2: dw $08a6
14b4: dw $08ae
14b6: dw $08b6
14b8: dw $08be
14ba: dw $08c6
14bc: dw $08ce
14be: dw $08d6
14c0: dw $08de
14c2: dw $08e7
14c4: dw $08ef
14c6: dw $08f7
14c8: dw $08ff
14ca: dw $0908
14cc: dw $0910
14ce: dw $0918
14d0: dw $0921
14d2: dw $0929
14d4: dw $0932
14d6: dw $093a
14d8: dw $0943
14da: dw $094b
14dc: dw $0954
14de: dw $095d
14e0: dw $0965
14e2: dw $096e
14e4: dw $0977
14e6: dw $0980
14e8: dw $0988
14ea: dw $0991
14ec: dw $099a
14ee: dw $09a3
14f0: dw $09ac
14f2: dw $09b5
14f4: dw $09be
14f6: dw $09c7
14f8: dw $09d0
14fa: dw $09d9
14fc: dw $09e2
14fe: dw $09eb
1500: dw $09f4
1502: dw $09fe
1504: dw $0a07
1506: dw $0a10
1508: dw $0a19
150a: dw $0a23
150c: dw $0a2c
150e: dw $0a36
1510: dw $0a3f
1512: dw $0a49
1514: dw $0a52
1516: dw $0a5c
1518: dw $0a65
151a: dw $0a6f
151c: dw $0a79
151e: dw $0a82
1520: dw $0a8c
1522: dw $0a96
1524: dw $0aa0
1526: dw $0aa9
1528: dw $0ab3
152a: dw $0abd
152c: dw $0ac7
152e: dw $0ad1
1530: dw $0adb
1532: dw $0ae5
1534: dw $0aef
1536: dw $0af9
1538: dw $0b03
153a: dw $0b0e
153c: dw $0b18
153e: dw $0b22
1540: dw $0b2c
1542: dw $0b37
1544: dw $0b41
1546: dw $0b4c
1548: dw $0b56
154a: dw $0b61
154c: dw $0b6b
154e: dw $0b76
1550: dw $0b80
1552: dw $0b8b
1554: dw $0b96
1556: dw $0ba0
1558: dw $0bab
155a: dw $0bb6
155c: dw $0bc1
155e: dw $0bcc
1560: dw $0bd7
1562: dw $0be2
1564: dw $0bed
1566: dw $0bf8
1568: dw $0c03
156a: dw $0c0e
156c: dw $0c19
156e: dw $0c24
1570: dw $0c2f
1572: dw $0c3b
1574: dw $0c46
1576: dw $0c51
1578: dw $0c5d
157a: dw $0c68
157c: dw $0c74
157e: dw $0c7f
1580: dw $0c8b
1582: dw $0c96
1584: dw $0ca2
1586: dw $0cae
1588: dw $0cba
158a: dw $0cc5
158c: dw $0cd1
158e: dw $0cdd
1590: dw $0ce9
1592: dw $0cf5
1594: dw $0d01
1596: dw $0d0d
1598: dw $0d19
159a: dw $0d25
159c: dw $0d31
159e: dw $0d3d
15a0: dw $0d4a
15a2: dw $0d56
15a4: dw $0d62
15a6: dw $0d6f
15a8: dw $0d7b
15aa: dw $0d88
15ac: dw $0d94
15ae: dw $0da1
15b0: dw $0dad
15b2: dw $0dba
15b4: dw $0dc7
15b6: dw $0dd4
15b8: dw $0de0
15ba: dw $0ded
15bc: dw $0dfa
15be: dw $0e07
15c0: dw $0e14
15c2: dw $0e21
15c4: dw $0e2e
15c6: dw $0e3b
15c8: dw $0e48
15ca: dw $0e56
15cc: dw $0e63
15ce: dw $0e70
15d0: dw $0e7e
15d2: dw $0e8b
15d4: dw $0e98
15d6: dw $0ea6
15d8: dw $0eb4
15da: dw $0ec1
15dc: dw $0ecf
15de: dw $0edd
15e0: dw $0eea
15e2: dw $0ef8
15e4: dw $0f06
15e6: dw $0f14
15e8: dw $0f22
15ea: dw $0f30
15ec: dw $0f3e
15ee: dw $0f4c
15f0: dw $0f5a
15f2: dw $0f68
15f4: dw $0f77
15f6: dw $0f85
15f8: dw $0f93
15fa: dw $0fa2
15fc: dw $0fb0
15fe: dw $0fbf
1600: dw $0fcd
1602: dw $0fdc
1604: dw $0feb
1606: dw $0ff9
1608: dw $1008
160a: dw $1017
160c: dw $1026
160e: dw $1035
1610: dw $1044
1612: dw $1053
1614: dw $1062
1616: dw $1071
1618: dw $1080
161a: dw $1090
161c: dw $109f
161e: dw $10ae
1620: dw $10be

1622: db $0c,$a4,$0c,$a1,$0b,$90,$0a,$a4
162a: db $0b,$90,$0a,$a1,$0e,$b0,$2e,$b9
1632: db $0e,$b0,$2f,$b9,$0f,$a4,$30,$b9
163a: db $31,$b9,$0d,$ad,$0d,$a4,$32,$b9
1642: db $33,$b9,$11,$98,$11,$ad,$11,$b0
164a: db $20,$b9,$21,$b9,$22,$b9,$23,$b9
1652: db $24,$b9,$25,$b9,$26,$b9,$27,$b9
165a: db $10,$a4,$10,$ad,$28,$b9,$29,$b9
1662: db $2a,$b9,$2b,$b9,$2c,$b9,$2d,$b9

166a: db $7f,$00,$00,$00,$00,$00,$00,$00
1672: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
167a: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1682: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
168a: db $ff,$08,$17,$24,$24,$17,$08,$ff
1692: db $7f,$00,$00,$00,$00,$00,$00,$00
169a: db $7f,$00,$00,$00,$00,$00,$00,$00
16a2: db $7f,$00,$00,$00,$00,$00,$00,$00

16aa: db $ff,$f7,$ef,$e7,$e0,$d7,$cf,$c7
16b2: db $bf,$b6,$ad,$a4,$9b,$92,$89,$80
16ba: db $80,$77,$6e,$65,$5c,$53,$4a,$41
16c2: db $38,$30,$28,$20,$18,$10,$08,$00
16ca: db $cc,$16,$d0,$16,$00,$00,$e0,$16
16d2: db $e0,$16,$e0,$16,$e0,$16,$e0,$16
16da: db $e0,$16,$e0,$16,$e0,$16,$e5,$64

16e2: db $ed,$00,$e1,$0f,$60,$c9
