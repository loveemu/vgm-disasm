0800: 20        clrp
0801: cd 7f     mov   x,#$7f
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: cd ef     mov   x,#$ef
0808: d4 00     mov   $00+x,a
080a: 1d        dec   x
080b: c8 ff     cmp   x,#$ff
080d: d0 f9     bne   $0808
080f: e8 00     mov   a,#$00
0811: cd 00     mov   x,#$00
0813: d5 00 01  mov   $0100+x,a
0816: d5 00 02  mov   $0200+x,a
0819: d5 00 03  mov   $0300+x,a
081c: d5 00 04  mov   $0400+x,a
081f: d5 00 05  mov   $0500+x,a
0822: d5 00 06  mov   $0600+x,a
0825: d5 00 07  mov   $0700+x,a
0828: 1d        dec   x
0829: d0 e8     bne   $0813
082b: e8 4f     mov   a,#$4f
082d: c4 42     mov   $42,a
082f: e8 00     mov   a,#$00
0831: c5 f4 00  mov   $00f4,a
0834: c5 f5 00  mov   $00f5,a
0837: c5 f6 00  mov   $00f6,a
083a: c5 f7 00  mov   $00f7,a
083d: e8 30     mov   a,#$30
083f: c5 f1 00  mov   $00f1,a
0842: e8 10     mov   a,#$10
0844: c5 fa 00  mov   $00fa,a
0847: e8 01     mov   a,#$01
0849: c5 f1 00  mov   $00f1,a
084c: c4 18     mov   $18,a
084e: 8d 6c     mov   y,#$6c
0850: e8 a0     mov   a,#$a0
0852: 3f 4f 0f  call  $0f4f
0855: e8 20     mov   a,#$20
0857: 3f 4f 0f  call  $0f4f
085a: 3f b3 0f  call  $0fb3
085d: 8d 5c     mov   y,#$5c
085f: e8 ff     mov   a,#$ff
0861: 3f 4f 0f  call  $0f4f
0864: 8d 3d     mov   y,#$3d
0866: e8 00     mov   a,#$00
0868: 3f 4f 0f  call  $0f4f
086b: e8 00     mov   a,#$00
086d: 8d 2d     mov   y,#$2d
086f: 3f 4f 0f  call  $0f4f
0872: 8d 5d     mov   y,#$5d
0874: e8 1b     mov   a,#$1b
0876: c4 20     mov   $20,a
0878: 3f 4f 0f  call  $0f4f
087b: 8f 00 21  mov   $21,#$00
087e: 8f 1c 22  mov   $22,#$1c
0881: 8f 00 23  mov   $23,#$00
0884: 8f 1e 24  mov   $24,#$1e
0887: 8f 00 25  mov   $25,#$00
088a: 8f 1f 26  mov   $26,#$1f
088d: 3f fb 13  call  $13fb
0890: 8f ff 5d  mov   $5d,#$ff
0893: e5 fd 00  mov   a,$00fd
0896: d0 05     bne   $089d
0898: 3f 91 16  call  $1691
089b: 2f f6     bra   $0893
089d: c4 1a     mov   $1a,a
089f: e4 54     mov   a,$54
08a1: f0 34     beq   $08d7
08a3: 80        setc
08a4: a4 1a     sbc   a,$1a
08a6: c4 54     mov   $54,a
08a8: f0 05     beq   $08af
08aa: b0 2b     bcs   $08d7
08ac: 8f 00 54  mov   $54,#$00
08af: 8d 6c     mov   y,#$6c
08b1: 3f 56 0f  call  $0f56
08b4: 28 df     and   a,#$df
08b6: 3f 4f 0f  call  $0f4f
08b9: 8d 0d     mov   y,#$0d
08bb: e4 5a     mov   a,$5a
08bd: 3f 4f 0f  call  $0f4f
08c0: 8d 4d     mov   y,#$4d
08c2: e4 3b     mov   a,$3b
08c4: 48 ff     eor   a,#$ff
08c6: 24 5c     and   a,$5c
08c8: 3f 4f 0f  call  $0f4f
08cb: 8d 7d     mov   y,#$7d
08cd: 3f 56 0f  call  $0f56
08d0: 1c        asl   a
08d1: 1c        asl   a
08d2: 1c        asl   a
08d3: 1c        asl   a
08d4: bc        inc   a
08d5: c4 55     mov   $55,a
08d7: e4 55     mov   a,$55
08d9: f0 1a     beq   $08f5
08db: 80        setc
08dc: a4 1a     sbc   a,$1a
08de: c4 55     mov   $55,a
08e0: f0 05     beq   $08e7
08e2: b0 11     bcs   $08f5
08e4: 8f 00 55  mov   $55,#$00
08e7: 8d 2c     mov   y,#$2c
08e9: e4 57     mov   a,$57
08eb: 3f 4f 0f  call  $0f4f
08ee: 8d 3c     mov   y,#$3c
08f0: e4 57     mov   a,$57
08f2: 3f 4f 0f  call  $0f4f
08f5: e8 00     mov   a,#$00
08f7: c4 27     mov   $27,a
08f9: c4 28     mov   $28,a
08fb: c4 2c     mov   $2c,a
08fd: c4 2d     mov   $2d,a
08ff: c4 34     mov   $34,a
0901: c4 35     mov   $35,a
0903: c4 36     mov   $36,a
0905: c4 37     mov   $37,a
0907: c4 38     mov   $38,a
0909: c4 39     mov   $39,a
090b: c4 4b     mov   $4b,a
090d: c4 4a     mov   $4a,a
090f: e4 46     mov   a,$46
0911: c4 47     mov   $47,a
0913: e5 80 01  mov   a,$0180
0916: f0 06     beq   $091e
0918: 8c 80 01  dec   $0180
091b: 3f fc 14  call  $14fc
091e: cd 00     mov   x,#$00
0920: 0b 34     asl   $34
0922: 2b 35     rol   $35
0924: 0b 36     asl   $36
0926: 2b 37     rol   $37
0928: 0b 38     asl   $38
092a: 2b 39     rol   $39
092c: 8f 00 2e  mov   $2e,#$00
092f: 8f 00 2f  mov   $2f,#$00
0932: 8f 00 30  mov   $30,#$00
0935: 8f 00 31  mov   $31,#$00
0938: c8 08     cmp   x,#$08
093a: b0 0c     bcs   $0948
093c: e4 47     mov   a,$47
093e: d5 00 03  mov   $0300+x,a
0941: f5 08 02  mov   a,$0208+x
0944: f0 02     beq   $0948
0946: d4 62     mov   $62+x,a
0948: f5 00 02  mov   a,$0200+x
094b: f0 44     beq   $0991
094d: 68 03     cmp   a,#$03
094f: d0 09     bne   $095a
0951: e8 01     mov   a,#$01
0953: c4 31     mov   $31,a
0955: d5 00 02  mov   $0200+x,a
0958: 2f 37     bra   $0991
095a: f5 00 02  mov   a,$0200+x
095d: 68 02     cmp   a,#$02
095f: d0 1a     bne   $097b
0961: 8f 01 31  mov   $31,#$01
0964: e8 00     mov   a,#$00
0966: d5 00 02  mov   $0200+x,a
0969: c8 08     cmp   x,#$08
096b: 90 24     bcc   $0991
096d: f5 d5 0e  mov   a,$0ed5+x
0970: 48 ff     eor   a,#$ff
0972: 24 3b     and   a,$3b
0974: c4 3b     mov   $3b,a
0976: 3f 06 11  call  $1106
0979: 2f 16     bra   $0991
097b: c8 08     cmp   x,#$08
097d: b0 04     bcs   $0983
097f: e4 49     mov   a,$49
0981: d0 0e     bne   $0991
0983: c8 08     cmp   x,#$08
0985: 90 04     bcc   $098b
0987: e4 3a     mov   a,$3a
0989: d0 06     bne   $0991
098b: 3f b3 09  call  $09b3
098e: 3f 9b 0d  call  $0d9b
0991: 3f 7a 0e  call  $0e7a
0994: ab 27     inc   $27
0996: e4 28     mov   a,$28
0998: 60        clrc
0999: 88 10     adc   a,#$10
099b: 28 7f     and   a,#$7f
099d: c4 28     mov   $28,a
099f: 3d        inc   x
09a0: c8 10     cmp   x,#$10
09a2: b0 03     bcs   $09a7
09a4: 5f 20 09  jmp   $0920

09a7: 8f 00 3a  mov   $3a,#$00
09aa: 3f ae 0d  call  $0dae
09ad: 3f 0f 0d  call  $0d0f
09b0: 5f 98 08  jmp   $0898

09b3: f5 00 03  mov   a,$0300+x
09b6: eb 1a     mov   y,$1a
09b8: cf        mul   ya
09b9: da 1b     movw  $1b,ya
09bb: f4 72     mov   a,$72+x
09bd: 60        clrc
09be: 84 1b     adc   a,$1b
09c0: d4 72     mov   $72+x,a
09c2: e8 00     mov   a,#$00
09c4: 84 1c     adc   a,$1c
09c6: f0 13     beq   $09db
09c8: c4 1f     mov   $1f,a
09ca: 3f df 09  call  $09df
09cd: 3f bb 0b  call  $0bbb
09d0: f4 92     mov   a,$92+x
09d2: f0 0a     beq   $09de
09d4: e4 1f     mov   a,$1f
09d6: f0 03     beq   $09db
09d8: 3f 4a 0c  call  $0c4a
09db: 3f eb 0c  call  $0ceb
09de: 6f        ret

09df: f4 82     mov   a,$82+x
09e1: f0 2b     beq   $0a0e
09e3: 80        setc
09e4: a4 1f     sbc   a,$1f
09e6: d4 82     mov   $82+x,a
09e8: f0 24     beq   $0a0e
09ea: 90 22     bcc   $0a0e
09ec: f5 e0 02  mov   a,$02e0+x
09ef: d0 1c     bne   $0a0d
09f1: f5 f0 02  mov   a,$02f0+x
09f4: d0 17     bne   $0a0d
09f6: f4 92     mov   a,$92+x
09f8: f0 11     beq   $0a0b
09fa: 80        setc
09fb: a4 1f     sbc   a,$1f
09fd: f0 02     beq   $0a01
09ff: b0 0a     bcs   $0a0b
0a01: e8 c9     mov   a,#$c9
0a03: d5 60 03  mov   $0360+x,a
0a06: 8f 01 31  mov   $31,#$01
0a09: e8 00     mov   a,#$00
0a0b: d4 92     mov   $92+x,a
0a0d: 6f        ret

0a0e: 8f 00 1f  mov   $1f,#$00
0a11: c8 08     cmp   x,#$08
0a13: b0 09     bcs   $0a1e
0a15: f5 08 02  mov   a,$0208+x
0a18: d0 04     bne   $0a1e
0a1a: e8 00     mov   a,#$00
0a1c: d4 62     mov   $62+x,a
0a1e: f5 20 02  mov   a,$0220+x
0a21: c4 29     mov   $29,a
0a23: f5 30 02  mov   a,$0230+x
0a26: c4 2a     mov   $2a,a

0a28: 3f 5d 0f  call  $0f5d
0a2b: c4 19     mov   $19,a
0a2d: 68 00     cmp   a,#$00
0a2f: f0 0d     beq   $0a3e             ; end repeat/return
0a31: 68 80     cmp   a,#$80
0a33: 90 37     bcc   $0a6c             ; note params
0a35: 68 e0     cmp   a,#$e0
0a37: 90 58     bcc   $0a91             ; note
0a39: 3f 16 11  call  $1116             ; dispatch vcmd
0a3c: 2f ea     bra   $0a28

; vcmd 00 - end repeat/return
0a3e: f5 c0 02  mov   a,$02c0+x
0a41: d0 13     bne   $0a56
0a43: c8 08     cmp   x,#$08
0a45: b0 06     bcs   $0a4d
0a47: 8f 01 3a  mov   $3a,#$01
0a4a: 5f 6b 15  jmp   $156b

0a4d: e8 02     mov   a,#$02
0a4f: d5 00 02  mov   $0200+x,a
0a52: 8f 01 31  mov   $31,#$01
0a55: 6f        ret

0a56: bc        inc   a
0a57: f0 09     beq   $0a62
0a59: f5 c0 02  mov   a,$02c0+x
0a5c: 9c        dec   a
0a5d: d5 c0 02  mov   $02c0+x,a
0a60: f0 05     beq   $0a67
0a62: 3f 51 13  call  $1351
0a65: 2f c1     bra   $0a28
0a67: 3f 28 13  call  $1328
0a6a: 2f bc     bra   $0a28

; vcmds 01-7f - note params
0a6c: d5 20 03  mov   $0320+x,a
0a6f: 3f 5d 0f  call  $0f5d
0a72: c4 19     mov   $19,a
0a74: 68 80     cmp   a,#$80
0a76: b0 bd     bcs   $0a35
0a78: 2d        push  a
0a79: 28 0f     and   a,#$0f
0a7b: fd        mov   y,a
0a7c: f6 37 0f  mov   a,$0f37+y
0a7f: d5 40 03  mov   $0340+x,a         ; set per-note vol from low nybble
0a82: ae        pop   a
0a83: 5c        lsr   a
0a84: 5c        lsr   a
0a85: 5c        lsr   a
0a86: 5c        lsr   a
0a87: fd        mov   y,a
0a88: f6 47 0f  mov   a,$0f47+y
0a8b: d5 30 03  mov   $0330+x,a         ; set dur% from high nybble
0a8e: 5f 28 0a  jmp   $0a28

0a91: 68 ca     cmp   a,#$ca
0a93: 90 0f     bcc   $0aa4
; vcmds ca-df - percussion note
0a95: d5 60 03  mov   $0360+x,a
0a98: a8 ca     sbc   a,#$ca
0a9a: 60        clrc
0a9b: 85 40 00  adc   a,$0040
0a9e: 3f 75 11  call  $1175
0aa1: 5f 51 0b  jmp   $0b51

0aa4: 2d        push  a
0aa5: f5 c0 03  mov   a,$03c0+x
0aa8: 3f 75 11  call  $1175
0aab: ae        pop   a
0aac: 68 c8     cmp   a,#$c8
0aae: d0 03     bne   $0ab3             ; not a tie
; vcmd c8 - tie
0ab0: 5f 44 0b  jmp   $0b44

0ab3: 68 c9     cmp   a,#$c9
0ab5: d0 1c     bne   $0ad3
; vcmd c9 - rest
0ab7: f5 e0 02  mov   a,$02e0+x
0aba: f0 07     beq   $0ac3
0abc: e8 c8     mov   a,#$c8
0abe: c4 19     mov   $19,a
0ac0: 5f 44 0b  jmp   $0b44


0ac3: e8 c9     mov   a,#$c9
0ac5: d5 60 03  mov   $0360+x,a
0ac8: 8f 01 31  mov   $31,#$01
0acb: e8 00     mov   a,#$00
0acd: d5 f0 02  mov   $02f0+x,a
0ad0: 5f 81 0b  jmp   $0b81

; vcmds 80-c7 - note (opcode in A)
0ad3: d5 60 03  mov   $0360+x,a
0ad6: d5 80 03  mov   $0380+x,a
0ad9: e8 00     mov   a,#$00
0adb: d5 50 03  mov   $0350+x,a
0ade: d5 70 03  mov   $0370+x,a
0ae1: f5 f0 04  mov   a,$04f0+x
0ae4: f0 32     beq   $0b18
0ae6: f5 00 05  mov   a,$0500+x
0ae9: d4 a2     mov   $a2+x,a
0aeb: f5 10 05  mov   a,$0510+x
0aee: d4 b2     mov   $b2+x,a
0af0: c4 00     mov   $00,a
0af2: f5 f0 04  mov   a,$04f0+x
0af5: 9c        dec   a
0af6: d0 0c     bne   $0b04
0af8: f5 60 03  mov   a,$0360+x
0afb: 60        clrc
0afc: 95 20 05  adc   a,$0520+x
0aff: 3f 93 14  call  $1493
0b02: 2f 18     bra   $0b1c
0b04: f5 60 03  mov   a,$0360+x
0b07: 2d        push  a
0b08: 60        clrc
0b09: 95 20 05  adc   a,$0520+x
0b0c: d5 60 03  mov   $0360+x,a
0b0f: d5 80 03  mov   $0380+x,a
0b12: ae        pop   a
0b13: 3f 93 14  call  $1493
0b16: 2f 04     bra   $0b1c
0b18: d4 a2     mov   $a2+x,a
0b1a: d4 b2     mov   $b2+x,a
0b1c: f5 a0 05  mov   a,$05a0+x
0b1f: f0 0d     beq   $0b2e
0b21: e8 00     mov   a,#$00
0b23: d5 b0 05  mov   $05b0+x,a
0b26: d5 80 05  mov   $0580+x,a
0b29: d5 70 05  mov   $0570+x,a
0b2c: 2f 0b     bra   $0b39
0b2e: d5 70 05  mov   $0570+x,a
0b31: f5 90 05  mov   a,$0590+x
0b34: d5 80 05  mov   $0580+x,a
0b37: e8 00     mov   a,#$00
0b39: d4 d2     mov   $d2+x,a
0b3b: d5 50 05  mov   $0550+x,a
0b3e: d5 e0 05  mov   $05e0+x,a
0b41: d5 f0 05  mov   $05f0+x,a
0b44: 8d 00     mov   y,#$00
0b46: f7 29     mov   a,($29)+y
0b48: 68 f9     cmp   a,#$f9
0b4a: d0 05     bne   $0b51
0b4c: 3a 29     incw  $29
0b4e: 3f 84 14  call  $1484
0b51: e8 00     mov   a,#$00
0b53: d5 e0 02  mov   $02e0+x,a
0b56: 8d 00     mov   y,#$00
0b58: f7 29     mov   a,($29)+y
0b5a: f0 25     beq   $0b81
0b5c: 10 1a     bpl   $0b78
0b5e: 68 c8     cmp   a,#$c8
0b60: 90 1f     bcc   $0b81
0b62: f0 18     beq   $0b7c
0b64: 68 e0     cmp   a,#$e0
0b66: 90 19     bcc   $0b81
0b68: 80        setc
0b69: a8 e0     sbc   a,#$e0
0b6b: cb 00     mov   $00,y
0b6d: fd        mov   y,a
0b6e: f6 17 0f  mov   a,$0f17+y
0b71: 60        clrc
0b72: 84 00     adc   a,$00
0b74: fd        mov   y,a
0b75: 5f 58 0b  jmp   $0b58

0b78: fc        inc   y
0b79: 5f 58 0b  jmp   $0b58

0b7c: e8 01     mov   a,#$01
0b7e: d5 e0 02  mov   $02e0+x,a
0b81: f5 20 03  mov   a,$0320+x
0b84: d4 82     mov   $82+x,a
0b86: fd        mov   y,a
0b87: f5 30 03  mov   a,$0330+x
0b8a: cf        mul   ya
0b8b: dd        mov   a,y
0b8c: d0 01     bne   $0b8f
0b8e: bc        inc   a
0b8f: d4 92     mov   $92+x,a
0b91: e4 19     mov   a,$19
0b93: 68 c9     cmp   a,#$c9
0b95: f0 19     beq   $0bb0
0b97: 68 c8     cmp   a,#$c8
0b99: f0 15     beq   $0bb0
0b9b: f5 f0 02  mov   a,$02f0+x
0b9e: f0 07     beq   $0ba7
0ba0: 30 08     bmi   $0baa
0ba2: e8 ff     mov   a,#$ff
0ba4: d5 f0 02  mov   $02f0+x,a
0ba7: 8f 01 30  mov   $30,#$01
0baa: 8f 01 2e  mov   $2e,#$01
0bad: 8f 01 2f  mov   $2f,#$01
0bb0: e4 29     mov   a,$29
0bb2: d5 20 02  mov   $0220+x,a
0bb5: e4 2a     mov   a,$2a
0bb7: d5 30 02  mov   $0230+x,a
0bba: 6f        ret

0bbb: f4 c2     mov   a,$c2+x
0bbd: f0 27     beq   $0be6
0bbf: 8f 01 2e  mov   $2e,#$01
0bc2: 9b c2     dec   $c2+x
0bc4: d0 0d     bne   $0bd3
0bc6: e8 00     mov   a,#$00
0bc8: d5 30 04  mov   $0430+x,a
0bcb: f5 c0 04  mov   a,$04c0+x
0bce: d5 40 04  mov   $0440+x,a
0bd1: 2f 13     bra   $0be6
0bd3: f5 d0 04  mov   a,$04d0+x
0bd6: 60        clrc
0bd7: 95 30 04  adc   a,$0430+x
0bda: d5 30 04  mov   $0430+x,a
0bdd: f5 e0 04  mov   a,$04e0+x
0be0: 95 40 04  adc   a,$0440+x
0be3: d5 40 04  mov   $0440+x,a
0be6: f5 00 06  mov   a,$0600+x
0be9: f0 27     beq   $0c12
0beb: 8f 01 2e  mov   $2e,#$01
0bee: 9c        dec   a
0bef: d5 00 06  mov   $0600+x,a
0bf2: d0 0b     bne   $0bff
0bf4: d5 70 04  mov   $0470+x,a
0bf7: f5 10 06  mov   a,$0610+x
0bfa: d5 80 04  mov   $0480+x,a
0bfd: 2f 13     bra   $0c12
0bff: f5 20 06  mov   a,$0620+x
0c02: 60        clrc
0c03: 95 70 04  adc   a,$0470+x
0c06: d5 70 04  mov   $0470+x,a
0c09: f5 30 06  mov   a,$0630+x
0c0c: 95 80 04  adc   a,$0480+x
0c0f: d5 80 04  mov   $0480+x,a
0c12: f5 40 06  mov   a,$0640+x
0c15: f0 32     beq   $0c49
0c17: 9c        dec   a
0c18: d5 40 06  mov   $0640+x,a
0c1b: d0 12     bne   $0c2f
0c1d: d5 10 03  mov   $0310+x,a
0c20: f5 50 06  mov   a,$0650+x
0c23: d5 00 03  mov   $0300+x,a
0c26: c8 08     cmp   x,#$08
0c28: b0 1f     bcs   $0c49
0c2a: c5 46 00  mov   $0046,a
0c2d: 2f 1a     bra   $0c49
0c2f: f5 60 06  mov   a,$0660+x
0c32: 60        clrc
0c33: 95 10 03  adc   a,$0310+x
0c36: d5 10 03  mov   $0310+x,a
0c39: f5 70 06  mov   a,$0670+x
0c3c: 95 00 03  adc   a,$0300+x
0c3f: d5 00 03  mov   $0300+x,a
0c42: c8 08     cmp   x,#$08
0c44: b0 03     bcs   $0c49
0c46: c5 46 00  mov   $0046,a
0c49: 6f        ret

0c4a: f4 a2     mov   a,$a2+x
0c4c: f0 04     beq   $0c52
0c4e: 9b a2     dec   $a2+x
0c50: 2f 2b     bra   $0c7d
0c52: f4 b2     mov   a,$b2+x
0c54: f0 27     beq   $0c7d
0c56: 8f 01 2f  mov   $2f,#$01
0c59: 9b b2     dec   $b2+x
0c5b: d0 0d     bne   $0c6a
0c5d: f5 90 04  mov   a,$0490+x
0c60: d5 60 03  mov   $0360+x,a
0c63: e8 00     mov   a,#$00
0c65: d5 50 03  mov   $0350+x,a
0c68: 2f 13     bra   $0c7d
0c6a: f5 a0 04  mov   a,$04a0+x
0c6d: 60        clrc
0c6e: 95 70 03  adc   a,$0370+x
0c71: d5 70 03  mov   $0370+x,a
0c74: f5 b0 04  mov   a,$04b0+x
0c77: 95 80 03  adc   a,$0380+x
0c7a: d5 80 03  mov   $0380+x,a
0c7d: f5 30 05  mov   a,$0530+x
0c80: f0 68     beq   $0cea
0c82: f5 50 05  mov   a,$0550+x
0c85: 75 40 05  cmp   a,$0540+x
0c88: b0 06     bcs   $0c90
0c8a: bc        inc   a
0c8b: d5 50 05  mov   $0550+x,a
0c8e: 2f 5a     bra   $0cea
0c90: f5 b0 05  mov   a,$05b0+x
0c93: 75 a0 05  cmp   a,$05a0+x
0c96: b0 17     bcs   $0caf
0c98: bc        inc   a
0c99: d5 b0 05  mov   $05b0+x,a
0c9c: f5 c0 05  mov   a,$05c0+x
0c9f: 60        clrc
0ca0: 95 70 05  adc   a,$0570+x
0ca3: d5 70 05  mov   $0570+x,a
0ca6: f5 d0 05  mov   a,$05d0+x
0ca9: 95 80 05  adc   a,$0580+x
0cac: d5 80 05  mov   $0580+x,a
0caf: f4 d2     mov   a,$d2+x
0cb1: 60        clrc
0cb2: 95 60 05  adc   a,$0560+x
0cb5: d4 d2     mov   $d2+x,a
0cb7: f5 30 05  mov   a,$0530+x
0cba: 68 01     cmp   a,#$01
0cbc: d0 16     bne   $0cd4
0cbe: f4 d2     mov   a,$d2+x
0cc0: 1c        asl   a
0cc1: 1c        asl   a
0cc2: 90 02     bcc   $0cc6
0cc4: 48 ff     eor   a,#$ff
0cc6: fd        mov   y,a
0cc7: f5 80 05  mov   a,$0580+x
0cca: cf        mul   ya
0ccb: dd        mov   a,y
0ccc: d5 e0 05  mov   $05e0+x,a
0ccf: 8f 01 2f  mov   $2f,#$01
0cd2: 2f 16     bra   $0cea
0cd4: f4 d2     mov   a,$d2+x
0cd6: 1c        asl   a
0cd7: 90 02     bcc   $0cdb
0cd9: 48 ff     eor   a,#$ff
0cdb: fd        mov   y,a
0cdc: f5 80 05  mov   a,$0580+x
0cdf: cf        mul   ya
0ce0: dd        mov   a,y
0ce1: 48 ff     eor   a,#$ff
0ce3: bc        inc   a
0ce4: d5 f0 05  mov   $05f0+x,a
0ce7: 8f 01 2e  mov   $2e,#$01
0cea: 6f        ret

0ceb: f4 a2     mov   a,$a2+x
0ced: d0 1f     bne   $0d0e
0cef: f4 b2     mov   a,$b2+x
0cf1: f0 1b     beq   $0d0e
0cf3: 8f 01 2f  mov   $2f,#$01
0cf6: f5 b0 04  mov   a,$04b0+x
0cf9: fd        mov   y,a
0cfa: f5 a0 04  mov   a,$04a0+x
0cfd: 3f 8b 0f  call  $0f8b
0d00: 60        clrc
0d01: 95 70 03  adc   a,$0370+x
0d04: d5 50 03  mov   $0350+x,a
0d07: dd        mov   a,y
0d08: 95 80 03  adc   a,$0380+x
0d0b: d5 60 03  mov   $0360+x,a
0d0e: 6f        ret

0d0f: e8 20     mov   a,#$20
0d11: eb 1a     mov   y,$1a
0d13: cf        mul   ya
0d14: da 00     movw  $00,ya
0d16: e4 1d     mov   a,$1d
0d18: 60        clrc
0d19: 84 00     adc   a,$00
0d1b: c4 1d     mov   $1d,a
0d1d: e8 00     mov   a,#$00
0d1f: 84 01     adc   a,$01
0d21: f0 0a     beq   $0d2d
0d23: e4 49     mov   a,$49
0d25: d0 06     bne   $0d2d
0d27: 3f 2e 0d  call  $0d2e
0d2a: 3f 64 0d  call  $0d64
0d2d: 6f        ret

0d2e: e4 5e     mov   a,$5e
0d30: f0 18     beq   $0d4a
0d32: e4 54     mov   a,$54
0d34: 04 55     or    a,$55
0d36: d0 02     bne   $0d3a
0d38: ab 55     inc   $55
0d3a: 8b 5e     dec   $5e
0d3c: d0 06     bne   $0d44
0d3e: eb 5f     mov   y,$5f
0d40: da 56     movw  $56,ya
0d42: 2f 06     bra   $0d4a
0d44: ba 60     movw  ya,$60
0d46: 7a 56     addw  ya,$56
0d48: da 56     movw  $56,ya
0d4a: e4 4c     mov   a,$4c
0d4c: f0 15     beq   $0d63
0d4e: 8f ff 33  mov   $33,#$ff
0d51: 8b 4c     dec   $4c
0d53: d0 08     bne   $0d5d
0d55: e8 00     mov   a,#$00
0d57: eb 4d     mov   y,$4d
0d59: da 41     movw  $41,ya
0d5b: 2f 06     bra   $0d63
0d5d: ba 4e     movw  ya,$4e
0d5f: 7a 41     addw  ya,$41
0d61: da 41     movw  $41,ya
0d63: 6f        ret

0d64: eb 51     mov   y,$51
0d66: f0 15     beq   $0d7d
0d68: 8f ff 33  mov   $33,#$ff
0d6b: dc        dec   y
0d6c: d0 10     bne   $0d7e
0d6e: e4 50     mov   a,$50
0d70: 60        clrc
0d71: 88 01     adc   a,#$01
0d73: c4 50     mov   $50,a
0d75: 90 06     bcc   $0d7d
0d77: 8f 00 50  mov   $50,#$00
0d7a: 8f 00 51  mov   $51,#$00
0d7d: 6f        ret

0d7e: e4 50     mov   a,$50
0d80: 80        setc
0d81: a8 01     sbc   a,#$01
0d83: c4 50     mov   $50,a
0d85: f0 02     beq   $0d89
0d87: b0 11     bcs   $0d9a
0d89: 8f 01 50  mov   $50,#$01
0d8c: 8f 00 51  mov   $51,#$00
0d8f: e8 80     mov   a,#$80
0d91: c5 10 02  mov   $0210,a
0d94: dc        dec   y
0d95: d0 03     bne   $0d9a
0d97: 3f 01 18  call  $1801
0d9a: 6f        ret

0d9b: f5 c0 06  mov   a,$06c0+x
0d9e: f0 0d     beq   $0dad
0da0: fb 62     mov   y,$62+x
0da2: d0 09     bne   $0dad
0da4: 28 1f     and   a,#$1f
0da6: c4 4b     mov   $4b,a
0da8: f5 d5 0e  mov   a,$0ed5+x
0dab: c4 4a     mov   $4a,a
0dad: 6f        ret

0dae: e4 2d     mov   a,$2d
0db0: 8d 5c     mov   y,#$5c
0db2: 3f 4f 0f  call  $0f4f
0db5: e4 4a     mov   a,$4a
0db7: 8d 3d     mov   y,#$3d
0db9: 3f 4f 0f  call  $0f4f
0dbc: e4 4b     mov   a,$4b
0dbe: f0 0c     beq   $0dcc
0dc0: 8d 6c     mov   y,#$6c
0dc2: 3f 56 0f  call  $0f56
0dc5: 28 e0     and   a,#$e0
0dc7: 04 4b     or    a,$4b
0dc9: 3f 4f 0f  call  $0f4f
0dcc: cd 00     mov   x,#$00
0dce: d8 28     mov   $28,x
0dd0: 0b 36     asl   $36
0dd2: 2b 37     rol   $37
0dd4: 90 5a     bcc   $0e30
0dd6: f5 60 03  mov   a,$0360+x
0dd9: 68 ca     cmp   a,#$ca
0ddb: 90 07     bcc   $0de4
0ddd: 8f 00 0c  mov   $0c,#$00
0de0: e8 a4     mov   a,#$a4
0de2: 2f 36     bra   $0e1a
0de4: f5 50 03  mov   a,$0350+x
0de7: c4 0c     mov   $0c,a
0de9: f5 60 03  mov   a,$0360+x
0dec: c4 0d     mov   $0d,a
0dee: 8d 00     mov   y,#$00
0df0: f5 90 03  mov   a,$0390+x
0df3: 7a 0c     addw  ya,$0c
0df5: da 0c     movw  $0c,ya
0df7: 8d 00     mov   y,#$00
0df9: f4 d2     mov   a,$d2+x
0dfb: 30 07     bmi   $0e04
0dfd: f5 e0 05  mov   a,$05e0+x
0e00: 7a 0c     addw  ya,$0c
0e02: 2f 09     bra   $0e0d
0e04: f5 e0 05  mov   a,$05e0+x
0e07: da 00     movw  $00,ya
0e09: ba 0c     movw  ya,$0c
0e0b: 9a 00     subw  ya,$00
0e0d: c4 0c     mov   $0c,a
0e0f: dd        mov   a,y
0e10: c8 08     cmp   x,#$08
0e12: b0 02     bcs   $0e16
0e14: 84 43     adc   a,$43
0e16: 60        clrc
0e17: 95 50 04  adc   a,$0450+x
0e1a: c4 0d     mov   $0d,a
0e1c: 3f bf 0f  call  $0fbf
0e1f: eb 28     mov   y,$28
0e21: fc        inc   y
0e22: fc        inc   y
0e23: f5 a0 03  mov   a,$03a0+x
0e26: 3f 4f 0f  call  $0f4f
0e29: fc        inc   y
0e2a: f5 b0 03  mov   a,$03b0+x
0e2d: 3f 4f 0f  call  $0f4f
0e30: 0b 34     asl   $34
0e32: 2b 35     rol   $35
0e34: 90 03     bcc   $0e39
0e36: 3f 37 10  call  $1037
0e39: 0b 38     asl   $38
0e3b: 2b 39     rol   $39
0e3d: 90 22     bcc   $0e61
0e3f: e4 28     mov   a,$28
0e41: fd        mov   y,a
0e42: fc        inc   y
0e43: fc        inc   y
0e44: fc        inc   y
0e45: fc        inc   y
0e46: f5 d0 03  mov   a,$03d0+x
0e49: 3f 4f 0f  call  $0f4f
0e4c: fc        inc   y
0e4d: f5 e0 03  mov   a,$03e0+x
0e50: 3f 4f 0f  call  $0f4f
0e53: fc        inc   y
0e54: f5 f0 03  mov   a,$03f0+x
0e57: 3f 4f 0f  call  $0f4f
0e5a: fc        inc   y
0e5b: f5 00 04  mov   a,$0400+x
0e5e: 3f 4f 0f  call  $0f4f
0e61: e4 28     mov   a,$28
0e63: 60        clrc
0e64: 88 10     adc   a,#$10
0e66: 28 7f     and   a,#$7f
0e68: c4 28     mov   $28,a
0e6a: 3d        inc   x
0e6b: c8 10     cmp   x,#$10
0e6d: b0 03     bcs   $0e72
0e6f: 5f d0 0d  jmp   $0dd0

0e72: e4 2c     mov   a,$2c
0e74: 8d 4c     mov   y,#$4c
0e76: 3f 4f 0f  call  $0f4f
0e79: 6f        ret

0e7a: c8 08     cmp   x,#$08
0e7c: b0 0f     bcs   $0e8d
0e7e: f5 d5 0e  mov   a,$0ed5+x
0e81: 24 32     and   a,$32
0e83: f0 08     beq   $0e8d
0e85: 48 ff     eor   a,#$ff
0e87: 24 32     and   a,$32
0e89: c4 32     mov   $32,a
0e8b: 2f 04     bra   $0e91
0e8d: e4 31     mov   a,$31
0e8f: f0 0b     beq   $0e9c
0e91: f4 62     mov   a,$62+x
0e93: d0 07     bne   $0e9c
0e95: f5 d5 0e  mov   a,$0ed5+x
0e98: 04 2d     or    a,$2d
0e9a: c4 2d     mov   $2d,a
0e9c: c8 08     cmp   x,#$08
0e9e: b0 0f     bcs   $0eaf
0ea0: f5 d5 0e  mov   a,$0ed5+x
0ea3: 24 33     and   a,$33
0ea5: f0 08     beq   $0eaf
0ea7: 48 ff     eor   a,#$ff
0ea9: 24 33     and   a,$33
0eab: c4 33     mov   $33,a
0ead: 2f 04     bra   $0eb3
0eaf: e4 2e     mov   a,$2e
0eb1: f0 06     beq   $0eb9
0eb3: f4 62     mov   a,$62+x
0eb5: d0 02     bne   $0eb9
0eb7: 02 34     set0  $34
0eb9: e4 2f     mov   a,$2f
0ebb: f0 06     beq   $0ec3
0ebd: f4 62     mov   a,$62+x
0ebf: d0 02     bne   $0ec3
0ec1: 02 36     set0  $36
0ec3: e4 30     mov   a,$30
0ec5: f0 0d     beq   $0ed4
0ec7: f4 62     mov   a,$62+x
0ec9: d0 09     bne   $0ed4
0ecb: 02 38     set0  $38
0ecd: f5 d5 0e  mov   a,$0ed5+x
0ed0: 04 2c     or    a,$2c
0ed2: c4 2c     mov   $2c,a
0ed4: 6f        ret

0ed5: db $01,$02,$04,$08,$10,$20,$40,$80
0edd: db $01,$02,$04,$08,$10,$20,$40,$80

; pitch table
0ee5: dw $085f
0ee7: dw $08de
0ee9: dw $0965
0eeb: dw $09f4
0eed: dw $0a8c
0eef: dw $0b2c
0ef1: dw $0bd6
0ef3: dw $0c8b
0ef5: dw $0d4a
0ef7: dw $0e14
0ef9: dw $0eea
0efb: dw $0fcd
0efd: dw $10be

0eff: db $7f,$00,$87,$00,$8f,$00,$98,$00,$a0,$00,$aa,$00,$b5,$00,$bf,$00,$ca,$00,$d6,$00,$e3,$00,$f1,$00

; vcmd length table (includes opcode itself, unlike normal N-SPC)
0f17: db $02,$02,$03,$04,$01,$02,$03,$02 ; e0-e7
0f1f: db $03,$02,$02,$04,$01,$02,$03,$04 ; e8-ef
0f27: db $02,$04,$04,$01,$02,$04,$01,$04 ; f0-f7
0f2f: db $04,$04,$02,$01,$02,$03,$04,$01 ; f8-ff

; per-note velocity values
0f37: db $10,$20,$30,$40,$50,$60,$70,$80
0f3f: db $90,$a0,$b0,$c0,$d0,$e0,$f0,$ff

0f47: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc

0f4f: cc f2 00  mov   $00f2,y
0f52: c5 f3 00  mov   $00f3,a
0f55: 6f        ret

0f56: cc f2 00  mov   $00f2,y
0f59: e5 f3 00  mov   a,$00f3
0f5c: 6f        ret

0f5d: 8d 00     mov   y,#$00
0f5f: f7 29     mov   a,($29)+y
0f61: 3a 29     incw  $29
0f63: 6f        ret

0f64: c4 01     mov   $01,a
0f66: 7e 01     cmp   y,$01
0f68: 90 11     bcc   $0f7b
0f6a: f8 00     mov   x,$00
0f6c: dd        mov   a,y
0f6d: 80        setc
0f6e: a4 01     sbc   a,$01
0f70: 8d 00     mov   y,#$00
0f72: 9e        div   ya,x
0f73: 2d        push  a
0f74: e8 00     mov   a,#$00
0f76: 9e        div   ya,x
0f77: ee        pop   y
0f78: f8 27     mov   x,$27
0f7a: 6f        ret

0f7b: dd        mov   a,y
0f7c: eb 01     mov   y,$01
0f7e: c4 01     mov   $01,a
0f80: 3f 6a 0f  call  $0f6a
0f83: da 00     movw  $00,ya
0f85: e8 00     mov   a,#$00
0f87: fd        mov   y,a
0f88: 9a 00     subw  ya,$00
0f8a: 6f        ret

0f8b: ad 80     cmp   y,#$80
0f8d: b0 12     bcs   $0fa1
0f8f: cb 01     mov   $01,y
0f91: fb 72     mov   y,$72+x
0f93: cf        mul   ya
0f94: cb 00     mov   $00,y
0f96: e4 01     mov   a,$01
0f98: 8f 00 01  mov   $01,#$00
0f9b: fb 72     mov   y,$72+x
0f9d: cf        mul   ya
0f9e: 7a 00     addw  ya,$00
0fa0: 6f        ret

0fa1: da 00     movw  $00,ya
0fa3: e8 00     mov   a,#$00
0fa5: fd        mov   y,a
0fa6: 9a 00     subw  ya,$00
0fa8: 3f 8f 0f  call  $0f8f
0fab: da 00     movw  $00,ya
0fad: e8 00     mov   a,#$00
0faf: fd        mov   y,a
0fb0: 9a 00     subw  ya,$00
0fb2: 6f        ret

0fb3: e8 5f     mov   a,#$5f
0fb5: 8d 0c     mov   y,#$0c
0fb7: 3f 4f 0f  call  $0f4f
0fba: 8d 1c     mov   y,#$1c
0fbc: 5f 4f 0f  jmp   $0f4f

0fbf: f5 60 04  mov   a,$0460+x
0fc2: f0 06     beq   $0fca
0fc4: ba 0c     movw  ya,$0c
0fc6: 7a 44     addw  ya,$44
0fc8: da 0c     movw  $0c,ya
0fca: 4d        push  x
0fcb: e4 0d     mov   a,$0d
0fcd: 28 7f     and   a,#$7f
0fcf: 1c        asl   a
0fd0: 8d 00     mov   y,#$00
0fd2: cd 18     mov   x,#$18
0fd4: 9e        div   ya,x
0fd5: 5d        mov   x,a
0fd6: f6 e5 0e  mov   a,$0ee5+y
0fd9: c4 00     mov   $00,a
0fdb: f6 e6 0e  mov   a,$0ee6+y
0fde: c4 01     mov   $01,a
0fe0: f6 00 0f  mov   a,$0f00+y
0fe3: c4 05     mov   $05,a
0fe5: f6 ff 0e  mov   a,$0eff+y
0fe8: c4 04     mov   $04,a
0fea: eb 0c     mov   y,$0c
0fec: cf        mul   ya
0fed: da 06     movw  $06,ya
0fef: e4 05     mov   a,$05
0ff1: eb 0c     mov   y,$0c
0ff3: cf        mul   ya
0ff4: da 04     movw  $04,ya
0ff6: e4 07     mov   a,$07
0ff8: 8d 00     mov   y,#$00
0ffa: 7a 04     addw  ya,$04
0ffc: 7a 00     addw  ya,$00
0ffe: da 00     movw  $00,ya
1000: c8 05     cmp   x,#$05
1002: b0 07     bcs   $100b
1004: 4b 01     lsr   $01
1006: 6b 00     ror   $00
1008: 3d        inc   x
1009: 2f f5     bra   $1000
100b: ce        pop   x
100c: f5 10 04  mov   a,$0410+x
100f: eb 01     mov   y,$01
1011: cf        mul   ya
1012: da 02     movw  $02,ya
1014: f5 20 04  mov   a,$0420+x
1017: eb 00     mov   y,$00
1019: cf        mul   ya
101a: 7a 02     addw  ya,$02
101c: da 02     movw  $02,ya
101e: f5 10 04  mov   a,$0410+x
1021: eb 00     mov   y,$00
1023: cf        mul   ya
1024: 6d        push  y
1025: f5 20 04  mov   a,$0420+x
1028: eb 01     mov   y,$01
102a: cf        mul   ya
102b: fd        mov   y,a
102c: ae        pop   a
102d: 7a 02     addw  ya,$02
102f: d5 a0 03  mov   $03a0+x,a
1032: dd        mov   a,y
1033: d5 b0 03  mov   $03b0+x,a
1036: 6f        ret

1037: f5 40 04  mov   a,$0440+x
103a: fd        mov   y,a
103b: f5 80 06  mov   a,$0680+x
103e: f0 01     beq   $1041
1040: cf        mul   ya
1041: c8 08     cmp   x,#$08
1043: b0 0d     bcs   $1052
1045: e8 4f     mov   a,#$4f
1047: cf        mul   ya
1048: e4 42     mov   a,$42
104a: cf        mul   ya
104b: e4 50     mov   a,$50
104d: f0 06     beq   $1055
104f: cf        mul   ya
1050: 2f 03     bra   $1055
1052: e8 ff     mov   a,#$ff
1054: cf        mul   ya
1055: f5 40 03  mov   a,$0340+x
1058: bc        inc   a
1059: f0 01     beq   $105c
105b: cf        mul   ya
105c: f5 f0 05  mov   a,$05f0+x
105f: f0 01     beq   $1062
1061: cf        mul   ya
1062: dd        mov   a,y
1063: 5c        lsr   a
1064: fd        mov   y,a
1065: cb 00     mov   $00,y
1067: cb 02     mov   $02,y
1069: cb 03     mov   $03,y
106b: f5 80 04  mov   a,$0480+x
106e: c4 04     mov   $04,a
1070: e4 48     mov   a,$48
1072: d0 1e     bne   $1092
1074: eb 04     mov   y,$04
1076: ad 0a     cmp   y,#$0a
1078: b0 08     bcs   $1082
107a: f6 9f 10  mov   a,$109f+y
107d: eb 00     mov   y,$00
107f: cf        mul   ya
1080: cb 02     mov   $02,y
1082: e4 04     mov   a,$04
1084: 80        setc
1085: a8 0b     sbc   a,#$0b
1087: 90 09     bcc   $1092
1089: fd        mov   y,a
108a: f6 a9 10  mov   a,$10a9+y
108d: eb 00     mov   y,$00
108f: cf        mul   ya
1090: cb 03     mov   $03,y
1092: eb 28     mov   y,$28
1094: e4 02     mov   a,$02
1096: 3f 4f 0f  call  $0f4f
1099: fc        inc   y
109a: e4 03     mov   a,$03
109c: 5f 4f 0f  jmp   $0f4f

109f: 00        nop
10a0: 19        or    (x),(y)
10a1: 32 4b     clr1  $4b
10a3: 64 7d     cmp   a,$7d
10a5: 96 af c8  adc   a,$c8af+y
10a8: e1        tcall 14
10a9: e1        tcall 14
10aa: c8 af     cmp   x,#$af
10ac: 96 7d 64  adc   a,$647d+y
10af: 4b 32     lsr   $32
10b1: 19        or    (x),(y)
10b2: 00        nop
10b3: c4 00     mov   $00,a
10b5: 8d 7d     mov   y,#$7d
10b7: cc f2 00  mov   $00f2,y
10ba: e5 f3 00  mov   a,$00f3
10bd: 28 0f     and   a,#$0f
10bf: 64 00     cmp   a,$00
10c1: f0 05     beq   $10c8
10c3: 1c        asl   a
10c4: 1c        asl   a
10c5: 1c        asl   a
10c6: c4 54     mov   $54,a
10c8: e8 00     mov   a,#$00
10ca: c4 55     mov   $55,a
10cc: ab 54     inc   $54
10ce: 8d 04     mov   y,#$04
10d0: cd 00     mov   x,#$00
10d2: f6 01 11  mov   a,$1101+y
10d5: c5 f2 00  mov   $00f2,a
10d8: c9 f3 00  mov   $00f3,x
10db: fe f5     dbnz  y,$10d2
10dd: 8d 6c     mov   y,#$6c
10df: 3f 56 0f  call  $0f56
10e2: 08 20     or    a,#$20
10e4: 3f 4f 0f  call  $0f4f
10e7: 8d 7d     mov   y,#$7d
10e9: e4 00     mov   a,$00
10eb: 3f 4f 0f  call  $0f4f
10ee: 1c        asl   a
10ef: 1c        asl   a
10f0: 1c        asl   a
10f1: 48 ff     eor   a,#$ff
10f3: 80        setc
10f4: 88 ff     adc   a,#$ff
10f6: 8d 6d     mov   y,#$6d
10f8: 3f 4f 0f  call  $0f4f
10fb: 64 5d     cmp   a,$5d
10fd: b0 02     bcs   $1101
10ff: c4 5d     mov   $5d,a
1101: 6f        ret

1102: 2c 3c 0d  rol   $0d3c
1105: 4d        push  x
1106: e4 54     mov   a,$54
1108: d0 0b     bne   $1115
110a: 8d 4d     mov   y,#$4d
110c: e4 3b     mov   a,$3b
110e: 48 ff     eor   a,#$ff
1110: 24 5c     and   a,$5c
1112: 3f 4f 0f  call  $0f4f
1115: 6f        ret

1116: 28 1f     and   a,#$1f
1118: 1c        asl   a
1119: fd        mov   y,a
111a: f6 24 11  mov   a,$1124+y
111b: 24 11     and   a,$11
111d: 2d        push  a
111e: f6 23 11  mov   a,$1123+y
1121: 2d        push  a
1122: 6f        ret

; vcmd dispatch table
1124: dw $1163	; e0 - set instrument
1126: dw $11cf	; e1 - pan
1128: dw $11de	; e2 - pan fade
112a: dw $11fb	; e3 - vibrato on
112c: dw $1218	; e4 - vibrato off
112e: dw $121e	; e5 - master volume
1130: dw $122d	; e6 - master volume fade
1132: dw $1242	; e7 - tempo
1134: dw $1258	; e8 - tempo fade
1136: dw $1275	; e9 - global transpose
1138: dw $127b	; ea - per-voice transpose
113a: dw $1282	; eb - tremolo on
113c: dw $129f	; ec - tremolo off
113e: dw $12a5	; ed - volume
1140: dw $12b3	; ee - volume fade
1142: dw $12cf	; ef - call subroutine
1144: dw $137d	; f0 - vibrato fade
1146: dw $1396	; f1 - pitch envelope (release)
1148: dw $13ae	; f2 - pitch envelope (attack)
114a: dw $13c6	; f3 - pitch envelope off
114c: dw $13d0	; f4 - tuning
114e: dw $13d7	; f5 - echo vbits/volume
1150: dw $13fb	; f6 - disable echo
1152: dw $1413	; f7 - set echo params
1154: dw $146c	; f8 - echo volume fade
1156: dw $1486	; f9 - pitch slide
1158: dw $14a5	; fa - set perc base
115a: dw $14ac	; fb
115c: dw $14b2	; fc - set noise
115e: dw $14b9	; fd
1160: dw $14c6	; fe - set multiple channel parameters
1162: dw $14de	; ff - nop

; vcmd e0 - set instrument
1163: 3f 5d 0f  call  $0f5d
1166: d5 c0 03  mov   $03c0+x,a
1169: e8 00     mov   a,#$00
116b: d5 c0 06  mov   $06c0+x,a
116e: d5 d0 06  mov   $06d0+x,a
1171: d5 f0 06  mov   $06f0+x,a
1174: 6f        ret

1175: d5 90 06  mov   $0690+x,a
1178: 8d 06     mov   y,#$06
117a: cf        mul   ya
117b: 7a 21     addw  ya,$21
117d: da 00     movw  $00,ya
117f: 8d 00     mov   y,#$00
1181: f5 f0 06  mov   a,$06f0+x
1184: d0 05     bne   $118b
1186: f7 00     mov   a,($00)+y
1188: d5 d0 03  mov   $03d0+x,a
118b: fc        inc   y
118c: f5 d0 06  mov   a,$06d0+x
118f: f0 0d     beq   $119e
1191: d5 e0 03  mov   $03e0+x,a
1194: fc        inc   y
1195: f5 e0 06  mov   a,$06e0+x
1198: d5 f0 03  mov   $03f0+x,a
119b: fc        inc   y
119c: 2f 0c     bra   $11aa
119e: f7 00     mov   a,($00)+y
11a0: d5 e0 03  mov   $03e0+x,a
11a3: fc        inc   y
11a4: f7 00     mov   a,($00)+y
11a6: d5 f0 03  mov   $03f0+x,a
11a9: fc        inc   y
11aa: f7 00     mov   a,($00)+y
11ac: d5 00 04  mov   $0400+x,a
11af: fc        inc   y
11b0: f5 c0 06  mov   a,$06c0+x
11b3: f0 09     beq   $11be
11b5: e8 00     mov   a,#$00
11b7: d5 20 04  mov   $0420+x,a
11ba: d5 10 04  mov   $0410+x,a
11bd: 6f        ret

11be: f5 f0 06  mov   a,$06f0+x
11c1: d0 0b     bne   $11ce
11c3: f7 00     mov   a,($00)+y
11c5: d5 20 04  mov   $0420+x,a
11c8: fc        inc   y
11c9: f7 00     mov   a,($00)+y
11cb: d5 10 04  mov   $0410+x,a
11ce: 6f        ret

; vcmd e1 - pan
11cf: 3f 5d 0f  call  $0f5d
11d2: d5 80 04  mov   $0480+x,a
11d5: e8 00     mov   a,#$00
11d7: d5 70 04  mov   $0470+x,a
11da: d5 00 06  mov   $0600+x,a
11dd: 6f        ret

; vcmd e2 - pan fade
11de: 3f 5d 0f  call  $0f5d
11e1: d5 00 06  mov   $0600+x,a
11e4: c4 00     mov   $00,a
11e6: 3f 5d 0f  call  $0f5d
11e9: d5 10 06  mov   $0610+x,a
11ec: fd        mov   y,a
11ed: f5 80 04  mov   a,$0480+x
11f0: 3f 64 0f  call  $0f64
11f3: d5 20 06  mov   $0620+x,a
11f6: dd        mov   a,y
11f7: d5 30 06  mov   $0630+x,a
11fa: 6f        ret

; vcmd e3 - vibrato on
11fb: 3f 5d 0f  call  $0f5d
11fe: d5 40 05  mov   $0540+x,a
1201: 3f 5d 0f  call  $0f5d
1204: d5 60 05  mov   $0560+x,a
1207: 3f 5d 0f  call  $0f5d
120a: d5 90 05  mov   $0590+x,a
120d: e8 01     mov   a,#$01
120f: d5 30 05  mov   $0530+x,a
1212: e8 00     mov   a,#$00
1214: d5 a0 05  mov   $05a0+x,a
1217: 6f        ret

; vcmd e4 - vibrato off
1218: e8 00     mov   a,#$00
121a: d5 30 05  mov   $0530+x,a
121d: 6f        ret

; vcmd e5 - master volume
121e: 3f 5d 0f  call  $0f5d
1221: c4 42     mov   $42,a
1223: 8f 00 41  mov   $41,#$00
1226: 8f 00 4c  mov   $4c,#$00
1229: 8f ff 33  mov   $33,#$ff
122c: 6f        ret

; vcmd e6 - master volume fade
122d: 3f 5d 0f  call  $0f5d
1230: c4 4c     mov   $4c,a
1232: c4 00     mov   $00,a
1234: 3f 5d 0f  call  $0f5d
1237: c4 4d     mov   $4d,a
1239: fd        mov   y,a
123a: e4 42     mov   a,$42
123c: 3f 64 0f  call  $0f64
123f: da 4e     movw  $4e,ya
1241: 6f        ret

; vcmd e7 - tempo
1242: e8 00     mov   a,#$00
1244: d5 10 03  mov   $0310+x,a
1247: d5 40 06  mov   $0640+x,a
124a: 3f 5d 0f  call  $0f5d
124d: d5 00 03  mov   $0300+x,a
1250: c8 08     cmp   x,#$08
1252: b0 03     bcs   $1257
1254: c5 46 00  mov   $0046,a
1257: 6f        ret

; vcmd e8 - tempo fade
1258: 3f 5d 0f  call  $0f5d
125b: d5 40 06  mov   $0640+x,a
125e: c4 00     mov   $00,a
1260: 3f 5d 0f  call  $0f5d
1263: d5 50 06  mov   $0650+x,a
1266: fd        mov   y,a
1267: f5 00 03  mov   a,$0300+x
126a: 3f 64 0f  call  $0f64
126d: d5 60 06  mov   $0660+x,a
1270: dd        mov   a,y
1271: d5 70 06  mov   $0670+x,a
1274: 6f        ret

; vcmd e9 - global transpose
1275: 3f 5d 0f  call  $0f5d
1278: c4 43     mov   $43,a
127a: 6f        ret

; vcmd ea - per-voice transpose
127b: 3f 5d 0f  call  $0f5d
127e: d5 50 04  mov   $0450+x,a
1281: 6f        ret

; vcmd eb - tremolo on
1282: 3f 5d 0f  call  $0f5d
1285: d5 40 05  mov   $0540+x,a
1288: 3f 5d 0f  call  $0f5d
128b: d5 60 05  mov   $0560+x,a
128e: 3f 5d 0f  call  $0f5d
1291: d5 90 05  mov   $0590+x,a
1294: e8 02     mov   a,#$02
1296: d5 30 05  mov   $0530+x,a
1299: e8 00     mov   a,#$00
129b: d5 a0 05  mov   $05a0+x,a
129e: 6f        ret

; vcmd ec - tremolo off
129f: e8 00     mov   a,#$00
12a1: d5 30 05  mov   $0530+x,a
12a4: 6f        ret

; vcmd ed - volume
12a5: 3f 5d 0f  call  $0f5d
12a8: d5 40 04  mov   $0440+x,a
12ab: e8 00     mov   a,#$00
12ad: d4 c2     mov   $c2+x,a
12af: d5 30 04  mov   $0430+x,a
12b2: 6f        ret

; vcmd ee - volume fade
12b3: 3f 5d 0f  call  $0f5d
12b6: d4 c2     mov   $c2+x,a
12b8: c4 00     mov   $00,a
12ba: 3f 5d 0f  call  $0f5d
12bd: d5 c0 04  mov   $04c0+x,a
12c0: fd        mov   y,a
12c1: f5 40 04  mov   a,$0440+x
12c4: 3f 64 0f  call  $0f64
12c7: d5 d0 04  mov   $04d0+x,a
12ca: dd        mov   a,y
12cb: d5 e0 04  mov   $04e0+x,a
12ce: 6f        ret

; vcmd ef - call subroutine
12cf: 3f 5d 0f  call  $0f5d
12d2: c4 00     mov   $00,a
12d4: 3f 5d 0f  call  $0f5d
12d7: c4 01     mov   $01,a
12d9: 3f 5d 0f  call  $0f5d
12dc: c4 02     mov   $02,a
12de: f5 c0 02  mov   a,$02c0+x
12e1: d0 21     bne   $1304
12e3: e4 02     mov   a,$02
12e5: d5 c0 02  mov   $02c0+x,a
12e8: e4 00     mov   a,$00
12ea: d5 60 02  mov   $0260+x,a
12ed: d5 20 02  mov   $0220+x,a
12f0: e4 01     mov   a,$01
12f2: d5 70 02  mov   $0270+x,a
12f5: d5 30 02  mov   $0230+x,a
12f8: e4 29     mov   a,$29
12fa: d5 40 02  mov   $0240+x,a
12fd: e4 2a     mov   a,$2a
12ff: d5 50 02  mov   $0250+x,a
1302: 2f 6e     bra   $1372
1304: d5 d0 02  mov   $02d0+x,a
1307: e4 02     mov   a,$02
1309: d5 c0 02  mov   $02c0+x,a
130c: e4 00     mov   a,$00
130e: d5 80 02  mov   $0280+x,a
1311: d5 20 02  mov   $0220+x,a
1314: e4 01     mov   a,$01
1316: d5 90 02  mov   $0290+x,a
1319: d5 30 02  mov   $0230+x,a
131c: e4 29     mov   a,$29
131e: d5 a0 02  mov   $02a0+x,a
1321: e4 2a     mov   a,$2a
1323: d5 b0 02  mov   $02b0+x,a
1326: 2f 4a     bra   $1372
1328: f5 d0 02  mov   a,$02d0+x
132b: d0 0e     bne   $133b
132d: f5 40 02  mov   a,$0240+x
1330: d5 20 02  mov   $0220+x,a
1333: f5 50 02  mov   a,$0250+x
1336: d5 30 02  mov   $0230+x,a
1339: 2f 37     bra   $1372
133b: d5 c0 02  mov   $02c0+x,a
133e: e8 00     mov   a,#$00
1340: d5 d0 02  mov   $02d0+x,a
1343: f5 a0 02  mov   a,$02a0+x
1346: d5 20 02  mov   $0220+x,a
1349: f5 b0 02  mov   a,$02b0+x
134c: d5 30 02  mov   $0230+x,a
134f: 2f 21     bra   $1372
1351: f5 d0 02  mov   a,$02d0+x
1354: d0 0e     bne   $1364
1356: f5 60 02  mov   a,$0260+x
1359: d5 20 02  mov   $0220+x,a
135c: f5 70 02  mov   a,$0270+x
135f: d5 30 02  mov   $0230+x,a
1362: 2f 0e     bra   $1372
1364: f5 80 02  mov   a,$0280+x
1367: d5 20 02  mov   $0220+x,a
136a: f5 90 02  mov   a,$0290+x
136d: d5 30 02  mov   $0230+x,a
1370: 2f 00     bra   $1372
1372: f5 20 02  mov   a,$0220+x
1375: c4 29     mov   $29,a
1377: f5 30 02  mov   a,$0230+x
137a: c4 2a     mov   $2a,a
137c: 6f        ret

137d: 3f 5d 0f  call  $0f5d
1380: d5 a0 05  mov   $05a0+x,a
1383: c4 00     mov   $00,a
1385: f5 90 05  mov   a,$0590+x
1388: fd        mov   y,a
1389: e8 00     mov   a,#$00
138b: 3f 64 0f  call  $0f64
138e: d5 c0 05  mov   $05c0+x,a
1391: dd        mov   a,y
1392: d5 d0 05  mov   $05d0+x,a
1395: 6f        ret

; vcmd f1 - pitch envelope (release)
1396: e8 01     mov   a,#$01
1398: d5 f0 04  mov   $04f0+x,a
139b: 3f 5d 0f  call  $0f5d
139e: d5 00 05  mov   $0500+x,a
13a1: 3f 5d 0f  call  $0f5d
13a4: d5 10 05  mov   $0510+x,a
13a7: 3f 5d 0f  call  $0f5d
13aa: d5 20 05  mov   $0520+x,a
13ad: 6f        ret

; vcmd f2 - pitch envelope (attack)
13ae: e8 02     mov   a,#$02
13b0: d5 f0 04  mov   $04f0+x,a
13b3: 3f 5d 0f  call  $0f5d
13b6: d5 00 05  mov   $0500+x,a
13b9: 3f 5d 0f  call  $0f5d
13bc: d5 10 05  mov   $0510+x,a
13bf: 3f 5d 0f  call  $0f5d
13c2: d5 20 05  mov   $0520+x,a
13c5: 6f        ret

; vcmd f3 - pitch envelope off
13c6: e8 00     mov   a,#$00
13c8: d5 f0 04  mov   $04f0+x,a
13cb: d4 a2     mov   $a2+x,a
13cd: d4 b2     mov   $b2+x,a
13cf: 6f        ret

; vcmd f4 - tuning
13d0: 3f 5d 0f  call  $0f5d
13d3: d5 90 03  mov   $0390+x,a
13d6: 6f        ret

; vcmd f5 - echo vbits/volume
13d7: 3f 5d 0f  call  $0f5d
13da: c4 5c     mov   $5c,a
13dc: 3f 5d 0f  call  $0f5d
13df: c4 57     mov   $57,a
13e1: 8f 00 56  mov   $56,#$00
13e4: 8f 00 5e  mov   $5e,#$00
13e7: 3f 5d 0f  call  $0f5d
13ea: c4 58     mov   $58,a
13ec: 3f 06 11  call  $1106
13ef: 78 ff 5d  cmp   $5d,#$ff
13f2: f0 06     beq   $13fa
13f4: e4 55     mov   a,$55
13f6: d0 02     bne   $13fa
13f8: ab 55     inc   $55
13fa: 6f        ret

; vcmd f6 - disable echo
13fb: e8 00     mov   a,#$00
13fd: c4 5c     mov   $5c,a
13ff: c4 57     mov   $57,a
1401: c4 58     mov   $58,a
1403: c4 5e     mov   $5e,a
1405: c4 59     mov   $59,a
1407: 3f b3 10  call  $10b3
140a: e8 00     mov   a,#$00
140c: c4 54     mov   $54,a
140e: c4 55     mov   $55,a
1410: f8 27     mov   x,$27
1412: 6f        ret

; vcmd f7 - set echo params
1413: 3f 5d 0f  call  $0f5d
1416: c4 59     mov   $59,a
1418: 3f b3 10  call  $10b3
141b: f8 27     mov   x,$27
141d: 3f 5d 0f  call  $0f5d
1420: c4 5a     mov   $5a,a
1422: 3f 5d 0f  call  $0f5d
1425: c4 5b     mov   $5b,a
1427: 68 05     cmp   a,#$05
1429: 90 02     bcc   $142d
142b: e8 00     mov   a,#$00
142d: 8d 08     mov   y,#$08
142f: cf        mul   ya
1430: 5d        mov   x,a
1431: 8d 0f     mov   y,#$0f
1433: f5 44 14  mov   a,$1444+x
1436: 3f 4f 0f  call  $0f4f
1439: 3d        inc   x
143a: dd        mov   a,y
143b: 60        clrc
143c: 88 10     adc   a,#$10
143e: fd        mov   y,a
143f: 10 f2     bpl   $1433
1441: f8 27     mov   x,$27
1443: 6f        ret

1444: db $7f,$00,$00,$00,$00,$00,$00,$00
144c: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1454: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
145c: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
1464: db $02,$00,$ee,$4b,$ee,$00,$02,$00

; vcmd f8 - echo volume fade
146c: 3f 5d 0f  call  $0f5d
146f: c4 5e     mov   $5e,a
1471: c4 00     mov   $00,a
1473: 3f 5d 0f  call  $0f5d
1476: c4 5f     mov   $5f,a
1478: fd        mov   y,a
1479: e4 57     mov   a,$57
147b: 3f 64 0f  call  $0f64
147e: da 60     movw  $60,ya
1480: 3f 5d 0f  call  $0f5d
1483: 6f        ret

; vcmd f9 - pitch slide
1484: 3f 5d 0f  call  $0f5d
1487: d4 a2     mov   $a2+x,a
1489: 3f 5d 0f  call  $0f5d
148c: d4 b2     mov   $b2+x,a
148e: c4 00     mov   $00,a
1490: 3f 5d 0f  call  $0f5d
1493: d5 90 04  mov   $0490+x,a
1496: fd        mov   y,a
1497: f5 60 03  mov   a,$0360+x
149a: 3f 64 0f  call  $0f64
149d: d5 a0 04  mov   $04a0+x,a
14a0: dd        mov   a,y
14a1: d5 b0 04  mov   $04b0+x,a
14a4: 6f        ret

; vcmd fa - set perc base
14a5: 3f 5d 0f  call  $0f5d
14a8: c5 40 00  mov   $0040,a
14ab: 6f        ret

; vcmd fb
14ac: e8 01     mov   a,#$01
14ae: d5 f0 02  mov   $02f0+x,a
14b1: 6f        ret

; vcmd fc - set noise
14b2: 3f 5d 0f  call  $0f5d
14b5: d5 c0 06  mov   $06c0+x,a
14b8: 6f        ret

; vcmd fd
14b9: 3f 5d 0f  call  $0f5d
14bc: d5 d0 06  mov   $06d0+x,a
14bf: 3f 5d 0f  call  $0f5d
14c2: d5 e0 06  mov   $06e0+x,a
14c5: 6f        ret

; vcmd fe - set multiple channel parameters
14c6: e8 01     mov   a,#$01
14c8: d5 f0 06  mov   $06f0+x,a
14cb: 3f 5d 0f  call  $0f5d
14ce: d5 d0 03  mov   $03d0+x,a
14d1: 3f 5d 0f  call  $0f5d
14d4: d5 20 04  mov   $0420+x,a
14d7: 3f 5d 0f  call  $0f5d
14da: d5 10 04  mov   $0410+x,a
14dd: 6f        ret

; vcmd ff - nop
14de: 60        clrc
14df: 6f        ret

; play song in A
14e0: 9c        dec   a
14e1: 1c        asl   a
14e2: fd        mov   y,a
14e3: f7 23     mov   a,($23)+y
14e5: c4 3c     mov   $3c,a
14e7: fc        inc   y
14e8: f7 23     mov   a,($23)+y
14ea: c4 3d     mov   $3d,a
14ec: 8f 00 3e  mov   $3e,#$00
14ef: 8f 00 3f  mov   $3f,#$00
14f2: cd 00     mov   x,#$00
14f4: 3f f7 15  call  $15f7
14f7: 3d        inc   x
14f8: c8 08     cmp   x,#$08
14fa: 90 f8     bcc   $14f4
; process next section list word
14fc: 8d 00     mov   y,#$00
14fe: f7 3c     mov   a,($3c)+y
1500: c4 00     mov   $00,a
1502: 3a 3c     incw  $3c
1504: f7 3c     mov   a,($3c)+y
1506: c4 01     mov   $01,a
1508: 3a 3c     incw  $3c		; read a word from section list ptr
150a: 68 00     cmp   a,#$00
150c: d0 28     bne   $1536             ; >= $0100, load that section ($00/1)
150e: e4 00     mov   a,$00
1510: f0 47     beq   $1559             ; == $0000, song end
1512: 68 ff     cmp   a,#$ff
1514: f0 10     beq   $1526             ; infinite loop ($00ff xxxx)
1516: eb 3e     mov   y,$3e		; == $00xx, repeat section (slightly different from usual N-SPC)
1518: f0 0a     beq   $1524		; start new repeat if repeat count has not been set
151a: 8b 3e     dec   $3e
151c: d0 08     bne   $1526
151e: 3a 3c     incw  $3c
1520: 3a 3c     incw  $3c
1522: 2f d8     bra   $14fc
1524: c4 3e     mov   $3e,a             ; set section repeat count
1526: 8d 00     mov   y,#$00
1528: f7 3c     mov   a,($3c)+y
152a: 2d        push  a
152b: 3a 3c     incw  $3c
152d: f7 3c     mov   a,($3c)+y
152f: c4 3d     mov   $3d,a
1531: ae        pop   a
1532: c4 3c     mov   $3c,a             ; repeat from $3c/d (used for backjump)
1534: 2f c6     bra   $14fc
; load section $00/1, set vcmd ptr for each channels
1536: cd 00     mov   x,#$00
1538: 8d 00     mov   y,#$00
153a: e8 02     mov   a,#$02
153c: d5 00 02  mov   $0200+x,a         ; inactivate channel
153f: f7 00     mov   a,($00)+y
1541: c4 02     mov   $02,a
1543: fc        inc   y
1544: f7 00     mov   a,($00)+y
1546: c4 03     mov   $03,a             ; read vcmd ptr to $02/3
1548: fc        inc   y
1549: 04 02     or    a,$02
154b: f0 03     beq   $1550
154d: 3f d8 15  call  $15d8             ; start channel unless it is zero
1550: 3d        inc   x
1551: c8 08     cmp   x,#$08
1553: 90 e5     bcc   $153a
1555: 8f 01 3f  mov   $3f,#$01
1558: 6f        ret

; song end
1559: cd 00     mov   x,#$00
155b: e8 02     mov   a,#$02
155d: d5 00 02  mov   $0200+x,a
1560: e8 00     mov   a,#$00
1562: d5 10 02  mov   $0210+x,a
1565: 3d        inc   x
1566: c8 08     cmp   x,#$08
1568: d0 f1     bne   $155b
156a: 6f        ret

156b: 3f fc 14  call  $14fc
156e: e5 10 02  mov   a,$0210
1571: f0 05     beq   $1578
1573: cd 00     mov   x,#$00
1575: 5f 1e 0a  jmp   $0a1e

1578: 6f        ret

1579: 28 7f     and   a,#$7f
157b: 9c        dec   a
157c: 1c        asl   a
157d: fd        mov   y,a
157e: f7 25     mov   a,($25)+y
1580: c4 00     mov   $00,a
1582: fc        inc   y
1583: f7 25     mov   a,($25)+y
1585: c4 01     mov   $01,a
1587: cd 0f     mov   x,#$0f
1589: 8d 00     mov   y,#$00
158b: f7 00     mov   a,($00)+y
158d: c4 02     mov   $02,a
158f: fc        inc   y
1590: f7 00     mov   a,($00)+y
1592: c4 03     mov   $03,a
1594: d0 08     bne   $159e
1596: e4 02     mov   a,$02
1598: f0 1d     beq   $15b7
159a: 68 ff     cmp   a,#$ff
159c: f0 1f     beq   $15bd
159e: e4 11     mov   a,$11
15a0: 28 3f     and   a,#$3f
15a2: d5 10 02  mov   $0210+x,a
15a5: 3f d8 15  call  $15d8
15a8: e8 03     mov   a,#$03
15aa: d5 00 02  mov   $0200+x,a
15ad: e4 3b     mov   a,$3b
15af: 15 d5 0e  or    a,$0ed5+x
15b2: c4 3b     mov   $3b,a
15b4: 3f c1 15  call  $15c1
15b7: fc        inc   y
15b8: 1d        dec   x
15b9: c8 08     cmp   x,#$08
15bb: b0 ce     bcs   $158b
15bd: 3f 06 11  call  $1106
15c0: 6f        ret

15c1: e4 11     mov   a,$11
15c3: 68 c0     cmp   a,#$c0
15c5: b0 05     bcs   $15cc
15c7: 68 40     cmp   a,#$40
15c9: b0 07     bcs   $15d2
15cb: 6f        ret

15cc: e4 13     mov   a,$13
15ce: d5 80 04  mov   $0480+x,a
15d1: 6f        ret

15d2: e8 01     mov   a,#$01
15d4: d5 60 04  mov   $0460+x,a
15d7: 6f        ret

15d8: e8 01     mov   a,#$01
15da: d5 00 02  mov   $0200+x,a
15dd: e4 02     mov   a,$02
15df: d5 20 02  mov   $0220+x,a
15e2: e4 03     mov   a,$03
15e4: d5 30 02  mov   $0230+x,a
15e7: c8 08     cmp   x,#$08
15e9: b0 2c     bcs   $1617
15eb: e4 3f     mov   a,$3f
15ed: f0 03     beq   $15f2
15ef: 5f 84 16  jmp   $1684

15f2: e8 03     mov   a,#$03
15f4: d5 00 02  mov   $0200+x,a
15f7: 8f 00 49  mov   $49,#$00
15fa: 8f 00 43  mov   $43,#$00
15fd: 8f 00 51  mov   $51,#$00
1600: 8f ff 42  mov   $42,#$ff
1603: 8f 00 50  mov   $50,#$00
1606: e4 10     mov   a,$10
1608: d5 10 02  mov   $0210+x,a
160b: e8 20     mov   a,#$20
160d: c4 46     mov   $46,a
160f: 8f 00 5e  mov   $5e,#$00
1612: e8 00     mov   a,#$00
1614: c5 80 01  mov   $0180,a
1617: e8 20     mov   a,#$20
1619: d5 00 03  mov   $0300+x,a
161c: e8 06     mov   a,#$06
161e: d5 20 03  mov   $0320+x,a
1621: e5 4e 0f  mov   a,$0f4e
1624: d5 30 03  mov   $0330+x,a
1627: e5 46 0f  mov   a,$0f46
162a: d5 40 03  mov   $0340+x,a
162d: d5 40 04  mov   $0440+x,a
1630: e8 00     mov   a,#$00
1632: d5 10 03  mov   $0310+x,a
1635: d5 50 03  mov   $0350+x,a
1638: d5 60 03  mov   $0360+x,a
163b: d5 90 03  mov   $0390+x,a
163e: d5 c0 03  mov   $03c0+x,a
1641: d5 d0 03  mov   $03d0+x,a
1644: d5 30 04  mov   $0430+x,a
1647: d5 50 04  mov   $0450+x,a
164a: d5 60 04  mov   $0460+x,a
164d: d5 70 04  mov   $0470+x,a
1650: d5 e0 02  mov   $02e0+x,a
1653: d5 f0 02  mov   $02f0+x,a
1656: d5 f0 04  mov   $04f0+x,a
1659: d5 30 05  mov   $0530+x,a
165c: d5 a0 05  mov   $05a0+x,a
165f: d5 c2 00  mov   $00c2+x,a
1662: d5 00 06  mov   $0600+x,a
1665: d5 40 06  mov   $0640+x,a
1668: d5 a0 06  mov   $06a0+x,a
166b: d5 b0 06  mov   $06b0+x,a
166e: d5 c0 06  mov   $06c0+x,a
1671: d5 d0 06  mov   $06d0+x,a
1674: d5 f0 06  mov   $06f0+x,a
1677: d4 a2     mov   $a2+x,a
1679: d4 b2     mov   $b2+x,a
167b: d4 92     mov   $92+x,a
167d: d4 62     mov   $62+x,a
167f: e8 0a     mov   a,#$0a
1681: d5 80 04  mov   $0480+x,a
1684: e8 00     mov   a,#$00
1686: d4 72     mov   $72+x,a
1688: d4 82     mov   $82+x,a
168a: d5 c0 02  mov   $02c0+x,a
168d: d5 d0 02  mov   $02d0+x,a
1690: 6f        ret

1691: e5 f4 00  mov   a,$00f4
1694: 05 f5 00  or    a,$00f5
1697: f0 5b     beq   $16f4
1699: e8 01     mov   a,#$01
169b: c5 f7 00  mov   $00f7,a
169e: 00        nop
169f: 00        nop
16a0: e4 18     mov   a,$18
16a2: 08 10     or    a,#$10
16a4: e9 f6 00  mov   x,$00f6
16a7: ec f7 00  mov   y,$00f7
16aa: d8 12     mov   $12,x
16ac: cb 13     mov   $13,y
16ae: e9 f4 00  mov   x,$00f4
16b1: 1e f4 00  cmp   x,$00f4
16b4: d0 f8     bne   $16ae
16b6: ec f5 00  mov   y,$00f5
16b9: 5e f5 00  cmp   y,$00f5
16bc: d0 f8     bne   $16b6
16be: d8 10     mov   $10,x
16c0: cb 11     mov   $11,y
16c2: c5 f1 00  mov   $00f1,a
16c5: e8 00     mov   a,#$00
16c7: c5 f7 00  mov   $00f7,a
16ca: e4 14     mov   a,$14
16cc: c4 00     mov   $00,a
16ce: e4 10     mov   a,$10
16d0: f0 11     beq   $16e3
16d2: c4 14     mov   $14,a
16d4: 68 80     cmp   a,#$80
16d6: b0 2d     bcs   $1705
16d8: 68 40     cmp   a,#$40
16da: b0 55     bcs   $1731
16dc: 68 20     cmp   a,#$20
16de: b0 56     bcs   $1736
16e0: 3f e0 14  call  $14e0
16e3: e4 11     mov   a,$11
16e5: f0 09     beq   $16f0
16e7: c4 15     mov   $15,a
16e9: 68 ff     cmp   a,#$ff
16eb: f0 03     beq   $16f0
16ed: 3f 5f 17  call  $175f
16f0: 3f f4 16  call  $16f4
16f3: 6f        ret

16f4: e5 10 02  mov   a,$0210
16f7: c5 f4 00  mov   $00f4,a
16fa: e4 15     mov   a,$15
16fc: c5 f5 00  mov   $00f5,a
16ff: e4 14     mov   a,$14
1701: c5 f6 00  mov   $00f6,a
1704: 6f        ret

1705: 68 fd     cmp   a,#$fd
1707: f0 3d     beq   $1746
1709: 68 fe     cmp   a,#$fe
170b: f0 2e     beq   $173b
170d: 68 ff     cmp   a,#$ff
170f: d0 1b     bne   $172c
1711: c5 f6 00  mov   $00f6,a
1714: 3f 6c 18  call  $186c
1717: e8 01     mov   a,#$01
1719: c5 f7 00  mov   $00f7,a
171c: 00        nop
171d: 00        nop
171e: e4 18     mov   a,$18
1720: 08 10     or    a,#$10
1722: c5 f1 00  mov   $00f1,a
1725: e8 00     mov   a,#$00
1727: c5 f7 00  mov   $00f7,a
172a: 2f c7     bra   $16f3
172c: 3f c0 17  call  $17c0
172f: 2f b2     bra   $16e3
1731: 3f ba 17  call  $17ba
1734: 2f ad     bra   $16e3
1736: 3f b2 17  call  $17b2
1739: 2f a8     bra   $16e3
173b: c5 f6 00  mov   $00f6,a
173e: e8 80     mov   a,#$80
1740: c5 f1 00  mov   $00f1,a
1743: 5f c0 ff  jmp   $ffc0

1746: c5 f6 00  mov   $00f6,a
1749: e4 13     mov   a,$13
174b: c4 01     mov   $01,a
174d: 8d 00     mov   y,#$00
174f: cb 00     mov   $00,y
1751: dd        mov   a,y
1752: d7 00     mov   ($00)+y,a
1754: fc        inc   y
1755: d0 fb     bne   $1752
1757: ab 01     inc   $01
1759: 78 ff 01  cmp   $01,#$ff
175c: 90 f4     bcc   $1752
175e: 6f        ret

175f: 68 c0     cmp   a,#$c0
1761: b0 18     bcs   $177b
1763: 68 80     cmp   a,#$80
1765: f0 08     beq   $176f
1767: b0 0c     bcs   $1775
1769: 3f 79 15  call  $1579
176c: 5f f0 16  jmp   $16f0

176f: 3f 81 17  call  $1781
1772: 5f f0 16  jmp   $16f0

1775: 3f 93 17  call  $1793
1778: 5f f0 16  jmp   $16f0

177b: 3f 79 15  call  $1579
177e: 5f f0 16  jmp   $16f0

1781: cd 08     mov   x,#$08
1783: f5 00 02  mov   a,$0200+x
1786: f0 05     beq   $178d
1788: e8 02     mov   a,#$02
178a: d5 00 02  mov   $0200+x,a
178d: 3d        inc   x
178e: c8 10     cmp   x,#$10
1790: 90 f1     bcc   $1783
1792: 6f        ret

1793: e4 11     mov   a,$11
1795: 28 7f     and   a,#$7f
1797: c4 00     mov   $00,a
1799: cd 08     mov   x,#$08
179b: f5 00 02  mov   a,$0200+x
179e: f0 0c     beq   $17ac
17a0: f5 10 02  mov   a,$0210+x
17a3: 64 00     cmp   a,$00
17a5: d0 05     bne   $17ac
17a7: e8 02     mov   a,#$02
17a9: d5 00 02  mov   $0200+x,a
17ac: 3d        inc   x
17ad: c8 10     cmp   x,#$10
17af: 90 ea     bcc   $179b
17b1: 6f        ret

17b2: 28 1f     and   a,#$1f
17b4: 3f e0 14  call  $14e0
17b7: 5f 20 18  jmp   $1820

17ba: 80        setc
17bb: a8 40     sbc   a,#$40
17bd: c4 46     mov   $46,a
17bf: 6f        ret

17c0: 28 7f     and   a,#$7f
17c2: 1c        asl   a
17c3: fd        mov   y,a
17c4: f6 ce 17  mov   a,$17ce+y
17c7: 2d        push  a
17c8: f6 cd 17  mov   a,$17cd+y
17cb: 2d        push  a
17cc: 6f        ret

17cd: dw $fd,$17,$01,$18,$08,$18,$12,$18,$19,$18,$20,$18,$30,$18,$34,$18,$38,$18,$3d,$18,$3e,$18,$49,$18,$54,$18,$5f,$18,$6a,$18,$6b,$18,$6b,$18,$af,$18,$b5,$18,$d3,$18,$de,$18,$f0,$18,$f7,$18,$fa,$18

17fd: 3f 59 15  call  $1559
1800: 6f        ret

1801: 8f 01 49  mov   $49,#$01
1804: 8f ff 32  mov   $32,#$ff
1807: 6f        ret

1808: 8f 00 49  mov   $49,#$00
180b: 8f 00 51  mov   $51,#$00
180e: 8f 00 50  mov   $50,#$00
1811: 6f        ret

1812: 8f 02 51  mov   $51,#$02
1815: 8f ff 50  mov   $50,#$ff
1818: 6f        ret

1819: 8f 03 51  mov   $51,#$03
181c: 8f ff 50  mov   $50,#$ff
181f: 6f        ret

1820: e5 11 02  mov   a,$0211
1823: c5 10 02  mov   $0210,a
1826: 8f 01 51  mov   $51,#$01
1829: 8f 00 49  mov   $49,#$00
182c: 8f 01 50  mov   $50,#$01
182f: 6f        ret

1830: 8f 00 48  mov   $48,#$00
1833: 6f        ret

1834: 8f 01 48  mov   $48,#$01
1837: 6f        ret

1838: ba 12     movw  ya,$12
183a: da 44     movw  $44,ya
183c: 6f        ret

183d: 6f        ret

183e: e5 13 00  mov   a,$0013
1841: c4 20     mov   $20,a
1843: 8d 5d     mov   y,#$5d
1845: 3f 4f 0f  call  $0f4f
1848: 6f        ret

1849: e5 12 00  mov   a,$0012
184c: c4 21     mov   $21,a
184e: e5 13 00  mov   a,$0013
1851: c4 22     mov   $22,a
1853: 6f        ret

1854: e5 12 00  mov   a,$0012
1857: c4 23     mov   $23,a
1859: e5 13 00  mov   a,$0013
185c: c4 24     mov   $24,a
185e: 6f        ret

185f: e5 12 00  mov   a,$0012
1862: c4 25     mov   $25,a
1864: e5 13 00  mov   a,$0013
1867: c4 26     mov   $26,a
1869: 6f        ret

186a: 6f        ret

186b: 6f        ret

186c: 3f fb 13  call  $13fb
186f: 8f aa f4  mov   $f4,#$aa
1872: 8f bb f5  mov   $f5,#$bb
1875: e8 cc     mov   a,#$cc
1877: 64 f4     cmp   a,$f4
1879: d0 fc     bne   $1877
187b: 2f 1b     bra   $1898
187d: eb f4     mov   y,$f4
187f: d0 fc     bne   $187d
1881: 7e f4     cmp   y,$f4
1883: d0 0d     bne   $1892
1885: e4 f5     mov   a,$f5
1887: cb f4     mov   $f4,y
1889: d7 00     mov   ($00)+y,a
188b: fc        inc   y
188c: d0 f3     bne   $1881
188e: ab 01     inc   $01
1890: 2f ef     bra   $1881
1892: 10 ed     bpl   $1881
1894: 7e f4     cmp   y,$f4
1896: 10 e9     bpl   $1881
1898: 8d 00     mov   y,#$00
189a: dc        dec   y
189b: d0 fd     bne   $189a
189d: e4 f6     mov   a,$f6
189f: c4 00     mov   $00,a
18a1: e4 f7     mov   a,$f7
18a3: c4 01     mov   $01,a
18a5: eb f4     mov   y,$f4
18a7: e4 f5     mov   a,$f5
18a9: cb f4     mov   $f4,y
18ab: d0 d0     bne   $187d
18ad: 6f        ret

18ae: 6f        ret

18af: e8 01     mov   a,#$01
18b1: c5 80 01  mov   $0180,a
18b4: 6f        ret

18b5: e4 12     mov   a,$12
18b7: 68 10     cmp   a,#$10
18b9: 90 0c     bcc   $18c7
18bb: e8 00     mov   a,#$00
18bd: 5d        mov   x,a
18be: d5 80 06  mov   $0680+x,a
18c1: 3d        inc   x
18c2: c8 10     cmp   x,#$10
18c4: 90 f8     bcc   $18be
18c6: 6f        ret

18c7: 28 0f     and   a,#$0f
18c9: 5d        mov   x,a
18ca: f5 80 06  mov   a,$0680+x
18cd: 48 01     eor   a,#$01
18cf: d5 80 06  mov   $0680+x,a
18d2: 6f        ret

18d3: e4 12     mov   a,$12
18d5: c4 5c     mov   $5c,a
18d7: e4 13     mov   a,$13
18d9: c4 57     mov   $57,a
18db: 5f e1 13  jmp   $13e1

18de: e4 12     mov   a,$12
18e0: 28 0f     and   a,#$0f
18e2: c4 59     mov   $59,a
18e4: 3f b3 10  call  $10b3
18e7: e4 13     mov   a,$13
18e9: c4 5a     mov   $5a,a
18eb: e4 5b     mov   a,$5b
18ed: 5f 27 14  jmp   $1427

18f0: e4 12     mov   a,$12
18f2: c4 5b     mov   $5b,a
18f4: 5f 27 14  jmp   $1427

18f7: 5f fb 13  jmp   $13fb

18fa: e4 12     mov   a,$12
18fc: c5 50 04  mov   $0450,a
18ff: e4 13     mov   a,$13
1901: c5 90 03  mov   $0390,a
1904: 6f        ret
