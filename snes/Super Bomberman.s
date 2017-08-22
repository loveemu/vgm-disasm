0812: c0        di
0813: 20        clrp
0814: cd ff     mov   x,#$ff
0816: bd        mov   sp,x
0817: e8 00     mov   a,#$00
0819: 5d        mov   x,a
081a: af        mov   (x)+,a
081b: c8 e0     cmp   x,#$e0
081d: d0 fb     bne   $081a
081f: e8 00     mov   a,#$00
0821: 5d        mov   x,a
0822: d5 00 01  mov   $0100+x,a
0825: d5 00 02  mov   $0200+x,a
0828: d5 00 03  mov   $0300+x,a
082b: d5 00 04  mov   $0400+x,a
082e: d5 00 05  mov   $0500+x,a
0831: d5 00 06  mov   $0600+x,a
0834: d5 00 07  mov   $0700+x,a
0837: 3d        inc   x
0838: d0 e8     bne   $0822
083a: 3f 2b 1e  call  $1e2b
083d: 3f 00 09  call  $0900
0840: 8f 68 f6  mov   $f6,#$68
0843: 8f 09 f7  mov   $f7,#$09
0846: 3f 55 08  call  $0855
0849: 3f 78 08  call  $0878
084c: 3f 5d 0e  call  $0e5d
084f: 3f fe 09  call  $09fe
0852: 5f 46 08  jmp   $0846

0855: e4 f4     mov   a,$f4
0857: 44 19     eor   a,$19
0859: 10 0b     bpl   $0866
085b: e4 f4     mov   a,$f4
085d: c4 19     mov   $19,a
085f: c4 f4     mov   $f4,a
0861: 08 80     or    a,#$80
0863: c5 00 02  mov   $0200,a
0866: e4 f5     mov   a,$f5
0868: 44 1a     eor   a,$1a
086a: 10 0b     bpl   $0877
086c: e4 f5     mov   a,$f5
086e: c4 1a     mov   $1a,a
0870: c4 f5     mov   $f5,a
0872: 08 80     or    a,#$80
0874: c5 02 02  mov   $0202,a
0877: 6f        ret

0878: e5 00 02  mov   a,$0200
087b: 30 01     bmi   $087e
087d: 6f        ret

087e: 28 7f     and   a,#$7f
0880: c5 00 02  mov   $0200,a
0883: 28 3f     and   a,#$3f
0885: 68 37     cmp   a,#$37
0887: 90 19     bcc   $08a2
0889: a8 37     sbc   a,#$37
088b: 1c        asl   a
088c: 5d        mov   x,a
088d: 1f 90 08  jmp   ($0890+x)

0890: dw $08ca  ;
0892: dw $08eb  ;
0894: dw $08e7  ;
0896: dw $08e3  ;
0898: dw $08df  ;
089a: dw $08f3  ;
089c: dw $08ef  ;
089e: dw $08f7  ;
08a0: dw $0900  ;

08a2: 3f c5 08  call  $08c5
08a5: 68 ff     cmp   a,#$ff
08a7: d0 01     bne   $08aa
08a9: 6f        ret

08aa: 8f 00 17  mov   $17,#$00
08ad: 2d        push  a
08ae: c5 01 02  mov   $0201,a
08b1: e5 00 02  mov   a,$0200
08b4: 28 40     and   a,#$40
08b6: ae        pop   a
08b7: f0 03     beq   $08bc
08b9: 8f ff 17  mov   $17,#$ff
08bc: 65 51 d3  cmp   a,$d351
08bf: b0 03     bcs   $08c4
08c1: 5f 60 09  jmp   $0960

08c4: 6f        ret

08c5: fd        mov   y,a
08c6: f6 e8 da  mov   a,$dae8+y
08c9: 6f        ret

08ca: 3f 00 09  call  $0900
08cd: 8f f0 f1  mov   $f1,#$f0
08d0: 8f 00 f4  mov   $f4,#$00
08d3: 8f 00 f5  mov   $f5,#$00
08d6: 8f 00 f6  mov   $f6,#$00
08d9: 8f 00 f7  mov   $f7,#$00
08dc: 5f c0 ff  jmp   $ffc0

08df: 8f fe 66  mov   $66,#$fe
08e2: 6f        ret

08e3: 8f 02 66  mov   $66,#$02
08e6: 6f        ret

08e7: 8f f0 68  mov   $68,#$f0
08ea: 6f        ret

08eb: 8f 03 68  mov   $68,#$03
08ee: 6f        ret

08ef: 8f 00 65  mov   $65,#$00
08f2: 6f        ret

08f3: 8f ff 65  mov   $65,#$ff
08f6: 6f        ret

08f7: 3f 00 09  call  $0900
08fa: 3f ef 1f  call  $1fef
08fd: 5f 12 08  jmp   $0812

0900: e8 00     mov   a,#$00
0902: c5 01 02  mov   $0201,a
0905: c5 00 02  mov   $0200,a
0908: c4 17     mov   $17,a
090a: e8 80     mov   a,#$80
090c: c5 03 02  mov   $0203,a
090f: e8 ff     mov   a,#$ff
0911: c4 67     mov   $67,a
0913: c4 69     mov   $69,a
0915: c4 3f     mov   $3f,a
0917: c5 04 02  mov   $0204,a
091a: e5 10 08  mov   a,$0810
091d: 05 11 08  or    a,$0811
0920: c4 65     mov   $65,a
0922: e8 00     mov   a,#$00
0924: c4 66     mov   $66,a
0926: c4 68     mov   $68,a
0928: c4 34     mov   $34,a
092a: c4 30     mov   $30,a
092c: c4 20     mov   $20,a
092e: c4 21     mov   $21,a
0930: c4 22     mov   $22,a
0932: c4 23     mov   $23,a
0934: c4 24     mov   $24,a
0936: c4 25     mov   $25,a
0938: c4 26     mov   $26,a
093a: c4 27     mov   $27,a
093c: c4 3c     mov   $3c,a
093e: c4 3d     mov   $3d,a
0940: cd 0f     mov   x,#$0f
0942: d5 15 02  mov   $0215+x,a
0945: 1d        dec   x
0946: 10 fa     bpl   $0942
0948: cd 07     mov   x,#$07
094a: 7d        mov   a,x
094b: 9f        xcn   a
094c: 2d        push  a
094d: 08 07     or    a,#$07
094f: c4 f2     mov   $f2,a
0951: 8f 9e f3  mov   $f3,#$9e          ; set GAIN
0954: ae        pop   a
0955: 08 05     or    a,#$05
0957: c4 f2     mov   $f2,a
0959: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
095c: 1d        dec   x
095d: 10 eb     bpl   $094a
095f: 6f        ret

; play song in A
0960: 2d        push  a
0961: 3f 0a 09  call  $090a
0964: 3f 4d 1e  call  $1e4d
0967: 3f 57 1f  call  $1f57
096a: e8 00     mov   a,#$00
096c: c5 a5 02  mov   $02a5,a
096f: c5 a6 02  mov   $02a6,a
0972: c5 a7 02  mov   $02a7,a
0975: c5 a8 02  mov   $02a8,a
0978: c5 a9 02  mov   $02a9,a
097b: c5 ab 02  mov   $02ab,a
097e: c5 aa 02  mov   $02aa,a
0981: 9c        dec   a
0982: c4 3f     mov   $3f,a
0984: bc        inc   a
0985: c4 3c     mov   $3c,a
0987: c4 3d     mov   $3d,a
0989: ae        pop   a
098a: 1c        asl   a
098b: 5d        mov   x,a
098c: f5 52 d3  mov   a,$d352+x
098f: c4 02     mov   $02,a
0991: f5 53 d3  mov   a,$d353+x         ; read song table
0994: c4 03     mov   $03,a             ; get header address into $02/3
0996: 8d 00     mov   y,#$00
0998: cd 00     mov   x,#$00
; initialize for each tracks
099a: 8d 00     mov   y,#$00
099c: f7 02     mov   a,($02)+y         ; offset +0: track address (lo)
099e: c4 04     mov   $04,a
09a0: 3a 02     incw  $02
09a2: f7 02     mov   a,($02)+y         ; offset +1: track address (hi)
09a4: 68 ff     cmp   a,#$ff
09a6: f0 3c     beq   $09e4             ; branch if $ffxx, end of header
09a8: c4 05     mov   $05,a
09aa: 3a 02     incw  $02
09ac: e4 03     mov   a,$03
09ae: fd        mov   y,a
09af: d5 15 02  mov   $0215+x,a
09b2: e4 02     mov   a,$02             ; load header address into YA
09b4: d5 05 02  mov   $0205+x,a
09b7: 7a 04     addw  ya,$04            ; convert track offset to address
09b9: da 02     movw  $02,ya
09bb: 40        setp
09bc: e8 00     mov   a,#$00
09be: d4 06     mov   $06+x,a
09c0: d4 16     mov   $16+x,a
09c2: d4 26     mov   $26+x,a
09c4: d4 36     mov   $36+x,a
09c6: 20        clrp
09c7: d5 45 02  mov   $0245+x,a
09ca: d5 35 02  mov   $0235+x,a
09cd: d5 55 02  mov   $0255+x,a
09d0: d5 25 02  mov   $0225+x,a
09d3: d5 75 02  mov   $0275+x,a
09d6: d5 85 02  mov   $0285+x,a
09d9: d5 95 02  mov   $0295+x,a
09dc: 3d        inc   x
09dd: c8 10     cmp   x,#$10
09df: d0 b9     bne   $099a             ; repeat for 16 tracks
09e1: 5f f1 09  jmp   $09f1

09e4: e8 00     mov   a,#$00
09e6: d5 15 02  mov   $0215+x,a
09e9: d5 05 02  mov   $0205+x,a
09ec: 3d        inc   x
09ed: c8 10     cmp   x,#$10
09ef: d0 f3     bne   $09e4
09f1: e8 00     mov   a,#$00
09f3: c5 ac 02  mov   $02ac,a
09f6: 9c        dec   a
09f7: c5 04 02  mov   $0204,a
09fa: c5 03 02  mov   $0203,a
09fd: 6f        ret

09fe: fa fe 6b  mov   ($6b),($fe)
0a01: e4 fd     mov   a,$fd             ; timer 0 counter
0a03: f0 67     beq   $0a6c
0a05: ab 63     inc   $63
0a07: 60        clrc
0a08: e4 66     mov   a,$66
0a0a: 30 08     bmi   $0a14
0a0c: 84 67     adc   a,$67
0a0e: 90 0a     bcc   $0a1a
0a10: e8 ff     mov   a,#$ff
0a12: 2f 06     bra   $0a1a
0a14: 84 67     adc   a,$67
0a16: b0 02     bcs   $0a1a
0a18: e8 00     mov   a,#$00
0a1a: c4 67     mov   $67,a
0a1c: 68 00     cmp   a,#$00
0a1e: f0 4c     beq   $0a6c
0a20: e5 03 02  mov   a,$0203
0a23: 60        clrc
0a24: 85 04 02  adc   a,$0204
0a27: c5 04 02  mov   $0204,a
0a2a: 90 40     bcc   $0a6c
0a2c: e8 00     mov   a,#$00
0a2e: c4 16     mov   $16,a
0a30: c4 6d     mov   $6d,a
0a32: cd 0f     mov   x,#$0f
0a34: f5 15 02  mov   a,$0215+x
0a37: f0 0b     beq   $0a44
0a39: 3f 70 0a  call  $0a70
0a3c: f5 15 02  mov   a,$0215+x
0a3f: f0 03     beq   $0a44
0a41: 8f ff 16  mov   $16,#$ff
0a44: 1d        dec   x
0a45: 10 ed     bpl   $0a34
0a47: 3f af 1c  call  $1caf
0a4a: e4 18     mov   a,$18
0a4c: 10 07     bpl   $0a55
0a4e: 28 7f     and   a,#$7f
0a50: c4 18     mov   $18,a
0a52: 5f 62 0a  jmp   $0a62

0a55: e4 16     mov   a,$16
0a57: d0 0d     bne   $0a66
0a59: e4 17     mov   a,$17
0a5b: f0 09     beq   $0a66
0a5d: e5 01 02  mov   a,$0201
0a60: 28 3f     and   a,#$3f
0a62: 3f 8a 09  call  $098a
0a65: 6f        ret

0a66: 3f fc 0e  call  $0efc
0a69: 3f 7f 1e  call  $1e7f
0a6c: 3f 9b 0a  call  $0a9b
0a6f: 6f        ret

0a70: f5 25 02  mov   a,$0225+x
0a73: f0 06     beq   $0a7b
0a75: 9c        dec   a
0a76: d5 25 02  mov   $0225+x,a
0a79: d0 0f     bne   $0a8a
0a7b: 4d        push  x
0a7c: 3f a5 18  call  $18a5
0a7f: ce        pop   x
0a80: f5 15 02  mov   a,$0215+x
0a83: f0 05     beq   $0a8a
0a85: f5 25 02  mov   a,$0225+x
0a88: f0 f1     beq   $0a7b
0a8a: 6f        ret

0a8b: e4 00     mov   a,$00
0a8d: 68 a0     cmp   a,#$a0
0a8f: 90 01     bcc   $0a92
0a91: 6f        ret

0a92: 28 0f     and   a,#$0f
0a94: 5d        mov   x,a
0a95: e4 02     mov   a,$02
0a97: 3f 14 0e  call  $0e14
0a9a: 6f        ret

0a9b: 3f 9d 0d  call  $0d9d
0a9e: e4 3f     mov   a,$3f
0aa0: 48 ff     eor   a,#$ff
0aa2: 24 3d     and   a,$3d
0aa4: c4 12     mov   $12,a
0aa6: e4 30     mov   a,$30
0aa8: 04 40     or    a,$40
0aaa: c4 13     mov   $13,a
0aac: cd 07     mov   x,#$07
0aae: e4 3c     mov   a,$3c
0ab0: d8 15     mov   $15,x
0ab2: 0b 13     asl   $13
0ab4: 90 05     bcc   $0abb
0ab6: 1c        asl   a
0ab7: 2d        push  a
0ab8: 5f d6 0a  jmp   $0ad6

0abb: 1c        asl   a
0abc: 2d        push  a
0abd: b0 0c     bcs   $0acb
0abf: 7d        mov   a,x
0ac0: 9f        xcn   a
0ac1: 08 08     or    a,#$08
0ac3: c4 f2     mov   $f2,a
0ac5: e4 f3     mov   a,$f3             ; get ENVX
0ac7: 68 02     cmp   a,#$02
0ac9: 90 0b     bcc   $0ad6
0acb: 3f fb 0a  call  $0afb
0ace: 3f 48 0c  call  $0c48
0ad1: 3f 2d 0b  call  $0b2d
0ad4: f8 15     mov   x,$15
0ad6: f4 41     mov   a,$41+x
0ad8: 28 0f     and   a,#$0f
0ada: fd        mov   y,a
0adb: f6 2f 03  mov   a,$032f+y
0ade: 68 01     cmp   a,#$01
0ae0: 2b 33     rol   $33
0ae2: ae        pop   a
0ae3: 0b 14     asl   $14
0ae5: 0b 12     asl   $12
0ae7: 1d        dec   x
0ae8: 10 c6     bpl   $0ab0
0aea: 29 30 34  and   ($34),($30)
0aed: e4 30     mov   a,$30
0aef: 48 ff     eor   a,#$ff
0af1: 24 33     and   a,$33
0af3: 04 34     or    a,$34
0af5: c4 33     mov   $33,a
0af7: 3f c4 0d  call  $0dc4
0afa: 6f        ret

0afb: f4 51     mov   a,$51+x
0afd: c4 61     mov   $61,a
0aff: f4 59     mov   a,$59+x
0b01: c4 62     mov   $62,a
0b03: 8d 0d     mov   y,#$0d
0b05: f7 61     mov   a,($61)+y
0b07: c4 0e     mov   $0e,a
0b09: 8d 0e     mov   y,#$0e
0b0b: f7 61     mov   a,($61)+y
0b0d: c4 0f     mov   $0f,a
0b0f: e4 12     mov   a,$12
0b11: 10 01     bpl   $0b14
0b13: 6f        ret

0b14: 8d 01     mov   y,#$01
0b16: f7 61     mov   a,($61)+y
0b18: c4 0c     mov   $0c,a
0b1a: 8d 00     mov   y,#$00
0b1c: f7 61     mov   a,($61)+y
0b1e: c4 0d     mov   $0d,a
0b20: 8d 08     mov   y,#$08
0b22: f7 61     mov   a,($61)+y
0b24: c4 10     mov   $10,a
0b26: 8d 07     mov   y,#$07
0b28: f7 61     mov   a,($61)+y
0b2a: c4 11     mov   $11,a
0b2c: 6f        ret

0b2d: 3f ca 0b  call  $0bca
0b30: f5 32 21  mov   a,$2132+x         ; get channel bitmask
0b33: 2d        push  a
0b34: f4 41     mov   a,$41+x
0b36: 5d        mov   x,a
0b37: 28 30     and   a,#$30
0b39: 9f        xcn   a
0b3a: fd        mov   y,a
0b3b: f6 c6 0b  mov   a,$0bc6+y
0b3e: fd        mov   y,a
0b3f: e4 67     mov   a,$67
0b41: cf        mul   ya
0b42: 7d        mov   a,x
0b43: 28 0f     and   a,#$0f
0b45: 5d        mov   x,a
0b46: 60        clrc
0b47: f5 ef 02  mov   a,$02ef+x
0b4a: 95 ff 03  adc   a,$03ff+x
0b4d: cf        mul   ya
0b4e: cb 0c     mov   $0c,y
0b50: d8 0d     mov   $0d,x
0b52: f5 1f 03  mov   a,$031f+x
0b55: 2d        push  a
0b56: 48 ff     eor   a,#$ff
0b58: 28 7f     and   a,#$7f
0b5a: 68 40     cmp   a,#$40
0b5c: 90 02     bcc   $0b60
0b5e: e8 3f     mov   a,#$3f
0b60: 1c        asl   a
0b61: c4 04     mov   $04,a
0b63: ae        pop   a
0b64: 68 40     cmp   a,#$40
0b66: 90 02     bcc   $0b6a
0b68: e8 3f     mov   a,#$3f
0b6a: 1c        asl   a
0b6b: c4 05     mov   $05,a
0b6d: e4 65     mov   a,$65
0b6f: f0 0a     beq   $0b7b
0b71: 60        clrc
0b72: e4 04     mov   a,$04
0b74: 84 05     adc   a,$05
0b76: 5c        lsr   a
0b77: c4 04     mov   $04,a
0b79: c4 05     mov   $05,a
0b7b: e4 04     mov   a,$04
0b7d: cf        mul   ya
0b7e: e8 00     mov   a,#$00
0b80: 04 02     or    a,$02
0b82: da f2     movw  $f2,ya
0b84: e4 05     mov   a,$05
0b86: eb 0c     mov   y,$0c
0b88: cf        mul   ya
0b89: ab f2     inc   $f2
0b8b: cb f3     mov   $f3,y             ; 
0b8d: f8 0d     mov   x,$0d
0b8f: ab f2     inc   $f2
0b91: fa 00 f3  mov   ($f3),($00)       ; 
0b94: ab f2     inc   $f2
0b96: fa 01 f3  mov   ($f3),($01)       ; 
0b99: ae        pop   a
0b9a: 24 3c     and   a,$3c
0b9c: d0 01     bne   $0b9f
0b9e: 6f        ret

0b9f: ab f2     inc   $f2
0ba1: 8d 0c     mov   y,#$0c
0ba3: f7 61     mov   a,($61)+y
0ba5: 5d        mov   x,a
0ba6: f5 68 dc  mov   a,$dc68+x
0ba9: c4 f3     mov   $f3,a             ; 
0bab: f8 0d     mov   x,$0d
0bad: ab f2     inc   $f2
0baf: 8d 05     mov   y,#$05
0bb1: f7 61     mov   a,($61)+y
0bb3: c4 f3     mov   $f3,a             ; 
0bb5: ab f2     inc   $f2
0bb7: 8d 04     mov   y,#$04
0bb9: f7 61     mov   a,($61)+y
0bbb: c4 f3     mov   $f3,a             ; 
0bbd: ab f2     inc   $f2
0bbf: 8d 06     mov   y,#$06
0bc1: f7 61     mov   a,($61)+y
0bc3: c4 f3     mov   $f3,a             ; 
0bc5: 6f        ret

0bc6: db $00,$60,$b0,$ff

0bca: 4d        push  x
0bcb: f4 49     mov   a,$49+x
0bcd: c4 00     mov   $00,a
0bcf: 7d        mov   a,x
0bd0: fd        mov   y,a
0bd1: 9f        xcn   a
0bd2: c4 02     mov   $02,a
0bd4: f4 41     mov   a,$41+x
0bd6: 28 0f     and   a,#$0f
0bd8: 5d        mov   x,a
0bd9: 60        clrc
0bda: e4 0e     mov   a,$0e
0bdc: 96 df 03  adc   a,$03df+y
0bdf: c4 0e     mov   $0e,a
0be1: e4 0f     mov   a,$0f
0be3: 96 ef 03  adc   a,$03ef+y
0be6: c4 0f     mov   $0f,a
0be8: 80        setc
0be9: f5 cf 02  mov   a,$02cf+x
0bec: a8 40     sbc   a,#$40
0bee: c4 04     mov   $04,a
0bf0: 68 80     cmp   a,#$80
0bf2: a4 04     sbc   a,$04
0bf4: 48 ff     eor   a,#$ff
0bf6: c4 05     mov   $05,a
0bf8: f5 cf 03  mov   a,$03cf+x
0bfb: fd        mov   y,a
0bfc: f5 bf 03  mov   a,$03bf+x
0bff: 7a 0e     addw  ya,$0e
0c01: 7a 04     addw  ya,$04
0c03: c4 04     mov   $04,a
0c05: dd        mov   a,y
0c06: 60        clrc
0c07: 84 00     adc   a,$00
0c09: 8d 00     mov   y,#$00
0c0b: cd 0c     mov   x,#$0c
0c0d: 9e        div   ya,x
0c0e: 2d        push  a
0c0f: dd        mov   a,y
0c10: 5d        mov   x,a
0c11: f5 46 21  mov   a,$2146+x
0c14: eb 04     mov   y,$04
0c16: cf        mul   ya
0c17: cb 0c     mov   $0c,y
0c19: 8f 00 0d  mov   $0d,#$00
0c1c: f5 3a 21  mov   a,$213a+x
0c1f: eb 04     mov   y,$04
0c21: cf        mul   ya
0c22: 7a 0c     addw  ya,$0c
0c24: 60        clrc
0c25: 95 5e 21  adc   a,$215e+x
0c28: c4 00     mov   $00,a
0c2a: dd        mov   a,y
0c2b: 95 52 21  adc   a,$2152+x
0c2e: c4 01     mov   $01,a
0c30: ae        pop   a
0c31: 48 ff     eor   a,#$ff
0c33: 80        setc
0c34: 88 06     adc   a,#$06
0c36: f0 0e     beq   $0c46
0c38: 68 06     cmp   a,#$06
0c3a: b0 0a     bcs   $0c46
0c3c: fd        mov   y,a
0c3d: e4 01     mov   a,$01
0c3f: 5c        lsr   a
0c40: 6b 00     ror   $00
0c42: fe fb     dbnz  y,$0c3f
0c44: c4 01     mov   $01,a
0c46: ce        pop   x
0c47: 6f        ret

0c48: e4 12     mov   a,$12
0c4a: 10 01     bpl   $0c4d
0c4c: 6f        ret

0c4d: 7d        mov   a,x
0c4e: fd        mov   y,a
0c4f: f4 41     mov   a,$41+x
0c51: 28 0f     and   a,#$0f
0c53: 5d        mov   x,a
0c54: 6d        push  y
0c55: 3f 26 0d  call  $0d26
0c58: ee        pop   y
0c59: 3f 8f 0c  call  $0c8f
0c5c: 3f 62 0c  call  $0c62
0c5f: f8 15     mov   x,$15
0c61: 6f        ret

0c62: f5 bf 02  mov   a,$02bf+x
0c65: bc        inc   a
0c66: 1c        asl   a
0c67: fd        mov   y,a
0c68: f5 6f 03  mov   a,$036f+x
0c6b: 10 21     bpl   $0c8e
0c6d: 28 7f     and   a,#$7f
0c6f: d5 6f 03  mov   $036f+x,a
0c72: 80        setc
0c73: a8 40     sbc   a,#$40
0c75: 1c        asl   a
0c76: 10 0e     bpl   $0c86
0c78: 48 ff     eor   a,#$ff
0c7a: bc        inc   a
0c7b: cf        mul   ya
0c7c: da 04     movw  $04,ya
0c7e: e8 00     mov   a,#$00
0c80: fd        mov   y,a
0c81: 9a 04     subw  ya,$04
0c83: 5f 87 0c  jmp   $0c87

0c86: cf        mul   ya
0c87: d5 bf 03  mov   $03bf+x,a
0c8a: dd        mov   a,y
0c8b: d5 cf 03  mov   $03cf+x,a
0c8e: 6f        ret

0c8f: e4 0c     mov   a,$0c
0c91: d0 03     bne   $0c96
0c93: 5f 19 0d  jmp   $0d19

0c96: e4 6b     mov   a,$6b
0c98: d0 03     bne   $0c9d
0c9a: 5f 18 0d  jmp   $0d18

0c9d: e4 63     mov   a,$63
0c9f: 28 01     and   a,#$01
0ca1: d0 03     bne   $0ca6
0ca3: 5f 18 0d  jmp   $0d18

0ca6: f5 af 02  mov   a,$02af+x
0ca9: d0 2d     bne   $0cd8
0cab: f6 17 04  mov   a,$0417+y
0cae: f0 07     beq   $0cb7
0cb0: 9c        dec   a
0cb1: d6 17 04  mov   $0417+y,a
0cb4: 5f 19 0d  jmp   $0d19

0cb7: f6 1f 04  mov   a,$041f+y
0cba: f0 1c     beq   $0cd8
0cbc: 60        clrc
0cbd: f6 47 04  mov   a,$0447+y
0cc0: 96 2f 04  adc   a,$042f+y
0cc3: d6 47 04  mov   $0447+y,a
0cc6: f6 3f 04  mov   a,$043f+y
0cc9: 96 27 04  adc   a,$0427+y
0ccc: d6 3f 04  mov   $043f+y,a
0ccf: f6 1f 04  mov   a,$041f+y
0cd2: 9c        dec   a
0cd3: d6 1f 04  mov   $041f+y,a
0cd6: d0 05     bne   $0cdd
0cd8: e4 0c     mov   a,$0c
0cda: d6 3f 04  mov   $043f+y,a
0cdd: 60        clrc
0cde: f6 0f 04  mov   a,$040f+y
0ce1: 84 0d     adc   a,$0d
0ce3: d6 0f 04  mov   $040f+y,a
0ce6: c4 06     mov   $06,a
0ce8: 1c        asl   a
0ce9: 1c        asl   a
0cea: 90 02     bcc   $0cee
0cec: 48 ff     eor   a,#$ff
0cee: 2d        push  a
0cef: f6 3f 04  mov   a,$043f+y
0cf2: ee        pop   y
0cf3: 68 f1     cmp   a,#$f1
0cf5: 90 06     bcc   $0cfd
0cf7: 28 0f     and   a,#$0f
0cf9: cf        mul   ya
0cfa: 5f 01 0d  jmp   $0d01

0cfd: cf        mul   ya
0cfe: dd        mov   a,y
0cff: 8d 00     mov   y,#$00
0d01: aa 06 e0  mov1  c,$1c00,6
0d04: 90 07     bcc   $0d0d
0d06: da 06     movw  $06,ya
0d08: 8d 00     mov   y,#$00
0d0a: dd        mov   a,y
0d0b: 9a 06     subw  ya,$06
0d0d: 4d        push  x
0d0e: f8 15     mov   x,$15
0d10: d5 df 03  mov   $03df+x,a
0d13: dd        mov   a,y
0d14: d5 ef 03  mov   $03ef+x,a
0d17: ce        pop   x
0d18: 6f        ret

0d19: 4d        push  x
0d1a: f8 15     mov   x,$15
0d1c: e8 00     mov   a,#$00
0d1e: d5 df 03  mov   $03df+x,a
0d21: d5 ef 03  mov   $03ef+x,a
0d24: ce        pop   x
0d25: 6f        ret

0d26: e4 10     mov   a,$10
0d28: f0 69     beq   $0d93
0d2a: e4 6b     mov   a,$6b
0d2c: f0 65     beq   $0d93
0d2e: e4 63     mov   a,$63
0d30: 28 01     and   a,#$01
0d32: d0 5f     bne   $0d93
0d34: f5 af 02  mov   a,$02af+x
0d37: d0 2d     bne   $0d66
0d39: f6 57 04  mov   a,$0457+y
0d3c: f0 07     beq   $0d45
0d3e: 9c        dec   a
0d3f: d6 57 04  mov   $0457+y,a
0d42: 5f 93 0d  jmp   $0d93

0d45: f6 5f 04  mov   a,$045f+y
0d48: f0 1c     beq   $0d66
0d4a: 60        clrc
0d4b: f6 87 04  mov   a,$0487+y
0d4e: 96 6f 04  adc   a,$046f+y
0d51: d6 87 04  mov   $0487+y,a
0d54: f6 7f 04  mov   a,$047f+y
0d57: 96 67 04  adc   a,$0467+y
0d5a: d6 7f 04  mov   $047f+y,a
0d5d: f6 5f 04  mov   a,$045f+y
0d60: 9c        dec   a
0d61: d6 5f 04  mov   $045f+y,a
0d64: d0 05     bne   $0d6b
0d66: e4 10     mov   a,$10
0d68: d6 7f 04  mov   $047f+y,a
0d6b: 60        clrc
0d6c: f6 4f 04  mov   a,$044f+y
0d6f: 84 11     adc   a,$11
0d71: d6 4f 04  mov   $044f+y,a
0d74: c4 06     mov   $06,a
0d76: 1c        asl   a
0d77: 1c        asl   a
0d78: 90 02     bcc   $0d7c
0d7a: 48 ff     eor   a,#$ff
0d7c: 2d        push  a
0d7d: f6 7f 04  mov   a,$047f+y
0d80: ee        pop   y
0d81: cf        mul   ya
0d82: dd        mov   a,y
0d83: aa 06 e0  mov1  c,$1c00,6
0d86: 90 03     bcc   $0d8b
0d88: 48 ff     eor   a,#$ff
0d8a: bc        inc   a
0d8b: 4d        push  x
0d8c: f8 15     mov   x,$15
0d8e: d5 ff 03  mov   $03ff+x,a
0d91: ce        pop   x
0d92: 6f        ret

0d93: 4d        push  x
0d94: f8 15     mov   x,$15
0d96: e8 00     mov   a,#$00
0d98: d5 ff 03  mov   $03ff+x,a
0d9b: ce        pop   x
0d9c: 6f        ret

0d9d: e4 30     mov   a,$30
0d9f: 48 ff     eor   a,#$ff
0da1: 2d        push  a
0da2: 24 3d     and   a,$3d
0da4: 04 31     or    a,$31
0da6: c4 3e     mov   $3e,a
0da8: ae        pop   a
0da9: 24 3f     and   a,$3f
0dab: 04 32     or    a,$32
0dad: c4 40     mov   $40,a
0daf: c4 12     mov   $12,a
0db1: cd 07     mov   x,#$07
0db3: 0b 12     asl   $12
0db5: 90 09     bcc   $0dc0
0db7: 7d        mov   a,x
0db8: 9f        xcn   a
0db9: 08 07     or    a,#$07
0dbb: c4 f2     mov   $f2,a
0dbd: 8f 9e f3  mov   $f3,#$9e          ; set GAIN
0dc0: 1d        dec   x
0dc1: 10 f0     bpl   $0db3
0dc3: 6f        ret

0dc4: 8f 4d f2  mov   $f2,#$4d
0dc7: fa 33 f3  mov   ($f3),($33)       ; set EON
0dca: e4 40     mov   a,$40
0dcc: 48 ff     eor   a,#$ff
0dce: 24 3e     and   a,$3e
0dd0: 8d 4c     mov   y,#$4c
0dd2: 3f e5 1f  call  $1fe5             ; set KON
0dd5: e4 3f     mov   a,$3f
0dd7: 48 ff     eor   a,#$ff
0dd9: 24 3d     and   a,$3d
0ddb: 4e 3d 00  tclr1 $003d
0dde: e4 32     mov   a,$32
0de0: 48 ff     eor   a,#$ff
0de2: 24 31     and   a,$31
0de4: 4e 31 00  tclr1 $0031
0de7: 8f 00 3f  mov   $3f,#$00
0dea: 8f 00 32  mov   $32,#$00
0ded: 6f        ret

0dee: 28 7f     and   a,#$7f
0df0: 3f fe 0d  call  $0dfe
0df3: e4 12     mov   a,$12
0df5: d5 9f 03  mov   $039f+x,a
0df8: e4 13     mov   a,$13
0dfa: d5 af 03  mov   $03af+x,a
0dfd: 6f        ret

0dfe: fd        mov   y,a
0dff: f6 e8 db  mov   a,$dbe8+y
0e02: 68 ff     cmp   a,#$ff
0e04: d0 01     bne   $0e07
0e06: bc        inc   a
0e07: 1c        asl   a
0e08: fd        mov   y,a
0e09: f6 00 22  mov   a,$2200+y
0e0c: c4 12     mov   $12,a
0e0e: f6 01 22  mov   a,$2201+y
0e11: c4 13     mov   $13,a
0e13: 6f        ret

0e14: 2d        push  a
0e15: f5 9f 03  mov   a,$039f+x
0e18: c4 0e     mov   $0e,a
0e1a: f5 af 03  mov   a,$03af+x
0e1d: c4 0f     mov   $0f,a
0e1f: ae        pop   a
0e20: 8d 0f     mov   y,#$0f
0e22: 77 0e     cmp   a,($0e)+y
0e24: 90 26     bcc   $0e4c
0e26: 8d 1f     mov   y,#$1f
0e28: 77 0e     cmp   a,($0e)+y
0e2a: 90 20     bcc   $0e4c
0e2c: 8d 2f     mov   y,#$2f
0e2e: 77 0e     cmp   a,($0e)+y
0e30: 90 1a     bcc   $0e4c
0e32: 8d 3f     mov   y,#$3f
0e34: 77 0e     cmp   a,($0e)+y
0e36: 90 14     bcc   $0e4c
0e38: 8d 4f     mov   y,#$4f
0e3a: 77 0e     cmp   a,($0e)+y
0e3c: 90 0e     bcc   $0e4c
0e3e: 8d 5f     mov   y,#$5f
0e40: 77 0e     cmp   a,($0e)+y
0e42: 90 08     bcc   $0e4c
0e44: 8d 6f     mov   y,#$6f
0e46: 77 0e     cmp   a,($0e)+y
0e48: 90 02     bcc   $0e4c
0e4a: 8d 7f     mov   y,#$7f
0e4c: dd        mov   a,y
0e4d: 28 f0     and   a,#$f0
0e4f: 60        clrc
0e50: 84 0e     adc   a,$0e
0e52: d5 7f 03  mov   $037f+x,a
0e55: e8 00     mov   a,#$00
0e57: 84 0f     adc   a,$0f
0e59: d5 8f 03  mov   $038f+x,a
0e5c: 6f        ret

0e5d: e8 ff     mov   a,#$ff
0e5f: c4 06     mov   $06,a
0e61: e5 02 02  mov   a,$0202
0e64: 30 01     bmi   $0e67
0e66: 6f        ret

0e67: 28 7f     and   a,#$7f
0e69: c5 02 02  mov   $0202,a
0e6c: fd        mov   y,a
0e6d: f6 68 db  mov   a,$db68+y
0e70: 68 ff     cmp   a,#$ff
0e72: d0 01     bne   $0e75
0e74: 6f        ret

0e75: 65 fd cf  cmp   a,$cffd
0e78: 90 01     bcc   $0e7b
0e7a: 6f        ret

0e7b: 1c        asl   a
0e7c: fd        mov   y,a
0e7d: f6 fe cf  mov   a,$cffe+y
0e80: c4 04     mov   $04,a
0e82: f6 ff cf  mov   a,$cfff+y
0e85: c4 05     mov   $05,a
0e87: 8d 00     mov   y,#$00
0e89: f7 04     mov   a,($04)+y
0e8b: c4 07     mov   $07,a
0e8d: fc        inc   y
0e8e: f7 04     mov   a,($04)+y
0e90: 68 08     cmp   a,#$08
0e92: 90 02     bcc   $0e96
0e94: e8 07     mov   a,#$07
0e96: c5 ac 0e  mov   $0eac,a
0e99: e5 02 02  mov   a,$0202
0e9c: 08 80     or    a,#$80
0e9e: cd 00     mov   x,#$00
0ea0: 74 28     cmp   a,$28+x
0ea2: f0 23     beq   $0ec7
0ea4: 3d        inc   x
0ea5: c8 08     cmp   x,#$08
0ea7: d0 f7     bne   $0ea0
0ea9: 8d 00     mov   y,#$00
0eab: cd 05     mov   x,#$05
0ead: e8 ff     mov   a,#$ff
0eaf: 3e 06     cmp   x,$06
0eb1: f0 08     beq   $0ebb
0eb3: 74 20     cmp   a,$20+x
0eb5: 90 04     bcc   $0ebb
0eb7: 7d        mov   a,x
0eb8: fd        mov   y,a
0eb9: f4 20     mov   a,$20+x
0ebb: 1d        dec   x
0ebc: 10 f1     bpl   $0eaf
0ebe: 64 07     cmp   a,$07
0ec0: f0 03     beq   $0ec5
0ec2: 90 01     bcc   $0ec5
0ec4: 6f        ret

0ec5: dd        mov   a,y
0ec6: 5d        mov   x,a
0ec7: e4 07     mov   a,$07
0ec9: d4 20     mov   $20+x,a
0ecb: e5 02 02  mov   a,$0202
0ece: 08 80     or    a,#$80
0ed0: d4 28     mov   $28+x,a
0ed2: 60        clrc
0ed3: e4 04     mov   a,$04
0ed5: 88 02     adc   a,#$02
0ed7: d5 8f 04  mov   $048f+x,a
0eda: e4 05     mov   a,$05
0edc: 88 00     adc   a,#$00
0ede: d5 97 04  mov   $0497+x,a
0ee1: f5 32 21  mov   a,$2132+x         ; get channel bitmask
0ee4: 2d        push  a
0ee5: 04 30     or    a,$30
0ee7: c4 30     mov   $30,a
0ee9: ae        pop   a
0eea: 48 ff     eor   a,#$ff
0eec: 24 34     and   a,$34
0eee: c4 34     mov   $34,a
0ef0: e8 00     mov   a,#$00
0ef2: d5 67 05  mov   $0567+x,a
0ef5: d5 5f 05  mov   $055f+x,a
0ef8: 3f 3c 18  call  $183c
0efb: 6f        ret

0efc: 60        clrc
0efd: e4 68     mov   a,$68
0eff: 30 08     bmi   $0f09
0f01: 84 69     adc   a,$69
0f03: 90 0a     bcc   $0f0f
0f05: e8 ff     mov   a,#$ff
0f07: 2f 06     bra   $0f0f
0f09: 84 69     adc   a,$69
0f0b: b0 02     bcs   $0f0f
0f0d: e8 00     mov   a,#$00
0f0f: c4 69     mov   $69,a
0f11: 3f 52 18  call  $1852
0f14: e4 30     mov   a,$30
0f16: cd 07     mov   x,#$07
0f18: 1c        asl   a
0f19: 90 03     bcc   $0f1e
0f1b: 3f 22 0f  call  $0f22
0f1e: 1d        dec   x
0f1f: 10 f7     bpl   $0f18
0f21: 6f        ret

0f22: 2d        push  a
0f23: 4d        push  x
0f24: 8f 09 f2  mov   $f2,#$09
0f27: e4 6c     mov   a,$6c
0f29: 84 f3     adc   a,$f3             ; OUTX
0f2b: c4 6c     mov   $6c,a
0f2d: 7d        mov   a,x
0f2e: 9f        xcn   a
0f2f: c4 00     mov   $00,a
0f31: 7d        mov   a,x
0f32: c4 12     mov   $12,a
0f34: 1c        asl   a
0f35: 1c        asl   a
0f36: 1c        asl   a
0f37: 84 12     adc   a,$12
0f39: c4 12     mov   $12,a
0f3b: f5 8f 04  mov   a,$048f+x
0f3e: c4 02     mov   $02,a
0f40: f5 97 04  mov   a,$0497+x
0f43: c4 03     mov   $03,a
0f45: 8d 00     mov   y,#$00
0f47: dd        mov   a,y
0f48: 8d 00     mov   y,#$00
0f4a: 7a 02     addw  ya,$02
0f4c: da 02     movw  $02,ya
0f4e: 8d 00     mov   y,#$00
0f50: 4d        push  x
0f51: f7 02     mov   a,($02)+y
0f53: fc        inc   y
0f54: 28 7f     and   a,#$7f
0f56: 1c        asl   a
0f57: 5d        mov   x,a
0f58: 1f 5b 0f  jmp   ($0f5b+x)

0f5b: dw $128b  ;
0f5d: dw $12ad  ;
0f5f: dw $12d8  ;
0f61: dw $12fd  ;
0f63: dw $132d  ;
0f65: dw $136f  ;
0f67: dw $1391  ;
0f69: dw $13ae  ;
0f6b: dw $13d3  ;
0f6d: dw $13f4  ;
0f6f: dw $140a  ;
0f71: dw $1419  ;
0f73: dw $143b  ;
0f75: dw $1449  ;
0f77: dw $145a  ;
0f79: dw $146e  ;
0f7b: dw $147c  ;
0f7d: dw $148d  ;
0f7f: dw $1812  ;
0f81: dw $14b2  ;
0f83: dw $14d0  ;
0f85: dw $14eb  ;
0f87: dw $1510  ;
0f89: dw $1535  ;
0f8b: dw $1553  ;
0f8d: dw $1588  ;
0f8f: dw $159d  ;
0f91: dw $15b3  ;
0f93: dw $15c9  ;
0f95: dw $15df  ;
0f97: dw $15f3  ;
0f99: dw $1607  ;
0f9b: dw $161d  ;
0f9d: dw $164d  ;
0f9f: dw $167d  ;
0fa1: dw $16a6  ;
0fa3: dw $16e4  ;
0fa5: dw $1709  ;
0fa7: dw $172e  ;
0fa9: dw $1753  ;
0fab: dw $1766  ;
0fad: dw $1782  ;
0faf: dw $1792  ;
0fb1: dw $17a2  ;
0fb3: dw $17b2  ;
0fb5: dw $17c2  ;
0fb7: dw $17d2  ;
0fb9: dw $17e2  ;
0fbb: dw $17f5  ;
0fbd: dw $127b  ;
0fbf: dw $125e  ;
0fc1: dw $111e  ;
0fc3: dw $114b  ;
0fc5: dw $1181  ;
0fc7: dw $11b1  ;
0fc9: dw $11d9  ;
0fcb: dw $1209  ;
0fcd: dw $1233  ;
0fcf: dw $10e0  ;
0fd1: dw $10f4  ;
0fd3: dw $10ce  ;
0fd5: dw $10b5  ;
0fd7: dw $109b  ;
0fd9: dw $1081  ;
0fdb: dw $14c0  ;
0fdd: dw $1108  ;
0fdf: dw $1060  ;
0fe1: dw $1045  ;
0fe3: dw $102a  ;
0fe5: dw $1003  ;
0fe7: dw $0feb  ;
0fe9: dw $0ff6  ;

0feb: ce        pop   x
0fec: f5 32 21  mov   a,$2132+x         ; get channel bitmask
0fef: 04 34     or    a,$34
0ff1: c4 34     mov   $34,a
0ff3: 5f 47 0f  jmp   $0f47

0ff6: ce        pop   x
0ff7: f5 32 21  mov   a,$2132+x         ; get channel bitmask
0ffa: 48 ff     eor   a,#$ff
0ffc: 24 34     and   a,$34
0ffe: c4 34     mov   $34,a
1000: 5f 47 0f  jmp   $0f47

1003: f7 02     mov   a,($02)+y
1005: fc        inc   y
1006: 60        clrc
1007: 84 12     adc   a,$12
1009: 5d        mov   x,a
100a: e4 6c     mov   a,$6c
100c: 1c        asl   a
100d: 1c        asl   a
100e: 80        setc
100f: 84 6c     adc   a,$6c
1011: c4 6c     mov   $6c,a
1013: 0d        push  psw
1014: d5 77 05  mov   $0577+x,a
1017: ae        pop   a
1018: ce        pop   x
1019: 28 83     and   a,#$83
101b: c4 04     mov   $04,a
101d: f5 6f 05  mov   a,$056f+x
1020: 28 7c     and   a,#$7c
1022: 04 04     or    a,$04
1024: d5 6f 05  mov   $056f+x,a
1027: 5f 47 0f  jmp   $0f47

102a: ce        pop   x
102b: 4d        push  x
102c: f5 6f 05  mov   a,$056f+x
102f: 2d        push  a
1030: f7 02     mov   a,($02)+y
1032: fc        inc   y
1033: 60        clrc
1034: 84 12     adc   a,$12
1036: 5d        mov   x,a
1037: f5 77 05  mov   a,$0577+x
103a: 8e        pop   psw
103b: 3c        rol   a
103c: 0d        push  psw
103d: d5 77 05  mov   $0577+x,a
1040: ae        pop   a
1041: ce        pop   x
1042: 5f 19 10  jmp   $1019

1045: ce        pop   x
1046: 4d        push  x
1047: f5 6f 05  mov   a,$056f+x
104a: 2d        push  a
104b: f7 02     mov   a,($02)+y
104d: fc        inc   y
104e: 60        clrc
104f: 84 12     adc   a,$12
1051: 5d        mov   x,a
1052: f5 77 05  mov   a,$0577+x
1055: 8e        pop   psw
1056: 7c        ror   a
1057: 0d        push  psw
1058: d5 77 05  mov   $0577+x,a
105b: ae        pop   a
105c: ce        pop   x
105d: 5f 19 10  jmp   $1019

1060: f7 02     mov   a,($02)+y
1062: fc        inc   y
1063: 60        clrc
1064: 84 12     adc   a,$12
1066: 5d        mov   x,a
1067: f5 77 05  mov   a,$0577+x
106a: 37 02     and   a,($02)+y
106c: 0d        push  psw
106d: fc        inc   y
106e: ae        pop   a
106f: ce        pop   x
1070: 28 82     and   a,#$82
1072: c4 04     mov   $04,a
1074: f5 6f 05  mov   a,$056f+x
1077: 28 7d     and   a,#$7d
1079: 04 04     or    a,$04
107b: d5 6f 05  mov   $056f+x,a
107e: 5f 47 0f  jmp   $0f47

1081: f7 02     mov   a,($02)+y
1083: fc        inc   y
1084: c4 04     mov   $04,a
1086: f7 02     mov   a,($02)+y
1088: fc        inc   y
1089: 60        clrc
108a: 84 12     adc   a,$12
108c: 5d        mov   x,a
108d: f5 77 05  mov   a,$0577+x
1090: 0d        push  psw
1091: f8 04     mov   x,$04
1093: d5 bf 05  mov   $05bf+x,a
1096: ae        pop   a
1097: ce        pop   x
1098: 5f 70 10  jmp   $1070

109b: f7 02     mov   a,($02)+y
109d: fc        inc   y
109e: 60        clrc
109f: 84 12     adc   a,$12
10a1: c4 04     mov   $04,a
10a3: f7 02     mov   a,($02)+y
10a5: fc        inc   y
10a6: 5d        mov   x,a
10a7: f5 bf 05  mov   a,$05bf+x
10aa: 0d        push  psw
10ab: f8 04     mov   x,$04
10ad: d5 77 05  mov   $0577+x,a
10b0: ae        pop   a
10b1: ce        pop   x
10b2: 5f 70 10  jmp   $1070

10b5: f7 02     mov   a,($02)+y
10b7: fc        inc   y
10b8: 60        clrc
10b9: 5d        mov   x,a
10ba: e4 1d     mov   a,$1d
10bc: 0d        push  psw
10bd: d5 bf 05  mov   $05bf+x,a
10c0: e4 1e     mov   a,$1e
10c2: d5 c0 05  mov   $05c0+x,a
10c5: 28 7f     and   a,#$7f
10c7: c4 1e     mov   $1e,a
10c9: ae        pop   a
10ca: ce        pop   x
10cb: 5f 70 10  jmp   $1070

10ce: ce        pop   x
10cf: d8 06     mov   $06,x
10d1: f7 02     mov   a,($02)+y
10d3: fc        inc   y
10d4: 28 7f     and   a,#$7f
10d6: 4d        push  x
10d7: 6d        push  y
10d8: 3f 69 0e  call  $0e69
10db: ee        pop   y
10dc: ce        pop   x
10dd: 5f 47 0f  jmp   $0f47

10e0: f7 02     mov   a,($02)+y
10e2: fc        inc   y
10e3: 60        clrc
10e4: 84 12     adc   a,$12
10e6: 5d        mov   x,a
10e7: f5 77 05  mov   a,$0577+x
10ea: 1c        asl   a
10eb: 0d        push  psw
10ec: d5 77 05  mov   $0577+x,a
10ef: ae        pop   a
10f0: ce        pop   x
10f1: 5f 19 10  jmp   $1019

10f4: f7 02     mov   a,($02)+y
10f6: fc        inc   y
10f7: 60        clrc
10f8: 84 12     adc   a,$12
10fa: 5d        mov   x,a
10fb: f5 77 05  mov   a,$0577+x
10fe: 5c        lsr   a
10ff: 0d        push  psw
1100: d5 77 05  mov   $0577+x,a
1103: ae        pop   a
1104: ce        pop   x
1105: 5f 19 10  jmp   $1019

1108: f7 02     mov   a,($02)+y
110a: fc        inc   y
110b: 60        clrc
110c: 84 12     adc   a,$12
110e: 5d        mov   x,a
110f: f5 77 05  mov   a,$0577+x
1112: 68 80     cmp   a,#$80
1114: 7c        ror   a
1115: 0d        push  psw
1116: d5 77 05  mov   $0577+x,a
1119: ae        pop   a
111a: ce        pop   x
111b: 5f 19 10  jmp   $1019

111e: e8 02     mov   a,#$02
1120: 04 00     or    a,$00
1122: c4 f2     mov   $f2,a
1124: f7 02     mov   a,($02)+y
1126: fc        inc   y
1127: 60        clrc
1128: 84 12     adc   a,$12
112a: 5d        mov   x,a
112b: f5 78 05  mov   a,$0578+x
112e: c4 04     mov   $04,a
1130: f5 77 05  mov   a,$0577+x
1133: ce        pop   x
1134: d5 9f 04  mov   $049f+x,a
1137: d5 af 04  mov   $04af+x,a
113a: c4 f3     mov   $f3,a             ; set P(L)
113c: ab f2     inc   $f2
113e: e4 04     mov   a,$04
1140: d5 a7 04  mov   $04a7+x,a
1143: d5 b7 04  mov   $04b7+x,a
1146: c4 f3     mov   $f3,a             ; set P(H)
1148: 5f 47 0f  jmp   $0f47

114b: e8 03     mov   a,#$03
114d: 04 00     or    a,$00
114f: c4 f2     mov   $f2,a
1151: f7 02     mov   a,($02)+y
1153: fc        inc   y
1154: 60        clrc
1155: 84 12     adc   a,$12
1157: 5d        mov   x,a
1158: f5 78 05  mov   a,$0578+x
115b: c4 04     mov   $04,a
115d: f5 77 05  mov   a,$0577+x
1160: ce        pop   x
1161: 60        clrc
1162: 95 9f 04  adc   a,$049f+x
1165: d5 9f 04  mov   $049f+x,a
1168: d5 af 04  mov   $04af+x,a
116b: 2d        push  a
116c: e4 04     mov   a,$04
116e: 95 a7 04  adc   a,$04a7+x
1171: d5 a7 04  mov   $04a7+x,a
1174: d5 b7 04  mov   $04b7+x,a
1177: c4 f3     mov   $f3,a             ; set P(H)
1179: 8b f2     dec   $f2
117b: ae        pop   a
117c: c4 f3     mov   $f3,a             ; set P(L)
117e: 5f 47 0f  jmp   $0f47

1181: e8 03     mov   a,#$03
1183: 04 00     or    a,$00
1185: c4 f2     mov   $f2,a
1187: f7 02     mov   a,($02)+y
1189: fc        inc   y
118a: 60        clrc
118b: 84 12     adc   a,$12
118d: 5d        mov   x,a
118e: f5 78 05  mov   a,$0578+x
1191: c4 04     mov   $04,a
1193: f5 77 05  mov   a,$0577+x
1196: ce        pop   x
1197: 60        clrc
1198: 95 af 04  adc   a,$04af+x
119b: d5 af 04  mov   $04af+x,a
119e: 2d        push  a
119f: e4 04     mov   a,$04
11a1: 95 b7 04  adc   a,$04b7+x
11a4: d5 b7 04  mov   $04b7+x,a
11a7: c4 f3     mov   $f3,a             ; set P(H)
11a9: ae        pop   a
11aa: 8b f2     dec   $f2
11ac: c4 f3     mov   $f3,a             ; set P(L)
11ae: 5f 47 0f  jmp   $0f47

11b1: f7 02     mov   a,($02)+y
11b3: fc        inc   y
11b4: 60        clrc
11b5: 84 12     adc   a,$12
11b7: 5d        mov   x,a
11b8: f5 78 05  mov   a,$0578+x
11bb: c4 04     mov   $04,a
11bd: f5 77 05  mov   a,$0577+x
11c0: ce        pop   x
11c1: d5 bf 04  mov   $04bf+x,a
11c4: d5 cf 04  mov   $04cf+x,a
11c7: c4 06     mov   $06,a
11c9: e4 04     mov   a,$04
11cb: d5 c7 04  mov   $04c7+x,a
11ce: d5 d7 04  mov   $04d7+x,a
11d1: c4 07     mov   $07,a
11d3: 3f 68 18  call  $1868
11d6: 5f 47 0f  jmp   $0f47

11d9: f7 02     mov   a,($02)+y
11db: fc        inc   y
11dc: 60        clrc
11dd: 84 12     adc   a,$12
11df: 5d        mov   x,a
11e0: f5 78 05  mov   a,$0578+x
11e3: c4 04     mov   $04,a
11e5: f5 77 05  mov   a,$0577+x
11e8: ce        pop   x
11e9: 60        clrc
11ea: 95 bf 04  adc   a,$04bf+x
11ed: d5 bf 04  mov   $04bf+x,a
11f0: d5 cf 04  mov   $04cf+x,a
11f3: c4 06     mov   $06,a
11f5: e4 04     mov   a,$04
11f7: 60        clrc
11f8: 95 c7 04  adc   a,$04c7+x
11fb: d5 c7 04  mov   $04c7+x,a
11fe: d5 d7 04  mov   $04d7+x,a
1201: c4 07     mov   $07,a
1203: 3f 68 18  call  $1868
1206: 5f 47 0f  jmp   $0f47

1209: f7 02     mov   a,($02)+y
120b: fc        inc   y
120c: 60        clrc
120d: 84 12     adc   a,$12
120f: 5d        mov   x,a
1210: f5 78 05  mov   a,$0578+x
1213: c4 04     mov   $04,a
1215: f5 77 05  mov   a,$0577+x
1218: ce        pop   x
1219: 60        clrc
121a: 95 cf 04  adc   a,$04cf+x
121d: d5 cf 04  mov   $04cf+x,a
1220: c4 06     mov   $06,a
1222: e4 04     mov   a,$04
1224: 60        clrc
1225: 95 d7 04  adc   a,$04d7+x
1228: d5 d7 04  mov   $04d7+x,a
122b: c4 07     mov   $07,a
122d: 3f 68 18  call  $1868
1230: 5f 47 0f  jmp   $0f47

1233: ce        pop   x
1234: f5 67 05  mov   a,$0567+x
1237: d0 16     bne   $124f
1239: 4d        push  x
123a: f7 02     mov   a,($02)+y
123c: 60        clrc
123d: 84 12     adc   a,$12
123f: 5d        mov   x,a
1240: f5 77 05  mov   a,$0577+x
1243: d0 02     bne   $1247
1245: e8 01     mov   a,#$01
1247: ce        pop   x
1248: d5 67 05  mov   $0567+x,a
124b: dc        dec   y
124c: 5f 2b 18  jmp   $182b

124f: dc        dec   y
1250: 9c        dec   a
1251: d5 67 05  mov   $0567+x,a
1254: f0 03     beq   $1259
1256: 5f 2b 18  jmp   $182b

1259: fc        inc   y
125a: fc        inc   y
125b: 5f 47 0f  jmp   $0f47

125e: f7 02     mov   a,($02)+y
1260: fc        inc   y
1261: 60        clrc
1262: 84 12     adc   a,$12
1264: 5d        mov   x,a
1265: 8f 6c f2  mov   $f2,#$6c
1268: e4 f3     mov   a,$f3             ; get FLG
126a: 28 e0     and   a,#$e0
126c: c4 04     mov   $04,a
126e: f5 77 05  mov   a,$0577+x
1271: 28 1f     and   a,#$1f
1273: 04 04     or    a,$04
1275: c4 f3     mov   $f3,a             ; set FLG
1277: ce        pop   x
1278: 5f 47 0f  jmp   $0f47

127b: ce        pop   x
127c: 8f 6c f2  mov   $f2,#$6c
127f: e4 f3     mov   a,$f3             ; get FLG
1281: 28 e0     and   a,#$e0
1283: 17 02     or    a,($02)+y
1285: fc        inc   y
1286: c4 f3     mov   $f3,a             ; set FLG
1288: 5f 47 0f  jmp   $0f47

128b: ce        pop   x
128c: e8 02     mov   a,#$02
128e: 04 00     or    a,$00
1290: c4 f2     mov   $f2,a
1292: f7 02     mov   a,($02)+y
1294: fc        inc   y
1295: d5 9f 04  mov   $049f+x,a
1298: d5 af 04  mov   $04af+x,a
129b: c4 f3     mov   $f3,a             ; set P(L)
129d: ab f2     inc   $f2
129f: f7 02     mov   a,($02)+y
12a1: fc        inc   y
12a2: d5 a7 04  mov   $04a7+x,a
12a5: d5 b7 04  mov   $04b7+x,a
12a8: c4 f3     mov   $f3,a             ; set P(H)
12aa: 5f 47 0f  jmp   $0f47

12ad: ce        pop   x
12ae: e8 03     mov   a,#$03
12b0: 04 00     or    a,$00
12b2: c4 f2     mov   $f2,a
12b4: f7 02     mov   a,($02)+y
12b6: fc        inc   y
12b7: 60        clrc
12b8: 95 9f 04  adc   a,$049f+x
12bb: d5 9f 04  mov   $049f+x,a
12be: d5 af 04  mov   $04af+x,a
12c1: 2d        push  a
12c2: f7 02     mov   a,($02)+y
12c4: 95 a7 04  adc   a,$04a7+x
12c7: d5 a7 04  mov   $04a7+x,a
12ca: d5 b7 04  mov   $04b7+x,a
12cd: fc        inc   y
12ce: c4 f3     mov   $f3,a             ; set P(H)
12d0: 8b f2     dec   $f2
12d2: ae        pop   a
12d3: c4 f3     mov   $f3,a             ; set P(L)
12d5: 5f 47 0f  jmp   $0f47

12d8: ce        pop   x
12d9: e8 03     mov   a,#$03
12db: 04 00     or    a,$00
12dd: c4 f2     mov   $f2,a
12df: f7 02     mov   a,($02)+y
12e1: fc        inc   y
12e2: 60        clrc
12e3: 95 af 04  adc   a,$04af+x
12e6: d5 af 04  mov   $04af+x,a
12e9: 2d        push  a
12ea: f7 02     mov   a,($02)+y
12ec: 95 b7 04  adc   a,$04b7+x
12ef: d5 b7 04  mov   $04b7+x,a
12f2: c4 f3     mov   $f3,a             ; set P(H)
12f4: fc        inc   y
12f5: ae        pop   a
12f6: 8b f2     dec   $f2
12f8: c4 f3     mov   $f3,a             ; set P(L)
12fa: 5f 47 0f  jmp   $0f47

12fd: ce        pop   x
12fe: f5 5f 05  mov   a,$055f+x
1301: bc        inc   a
1302: d5 5f 05  mov   $055f+x,a
1305: 4d        push  x
1306: d8 01     mov   $01,x
1308: 9c        dec   a
1309: 1c        asl   a
130a: 1c        asl   a
130b: 1c        asl   a
130c: 04 01     or    a,$01
130e: 5d        mov   x,a
130f: f7 02     mov   a,($02)+y
1311: fc        inc   y
1312: d5 1f 05  mov   $051f+x,a
1315: f7 02     mov   a,($02)+y
1317: fc        inc   y
1318: d5 3f 05  mov   $053f+x,a
131b: dd        mov   a,y
131c: 60        clrc
131d: 84 02     adc   a,$02
131f: d5 df 04  mov   $04df+x,a
1322: e8 00     mov   a,#$00
1324: 84 03     adc   a,$03
1326: d5 ff 04  mov   $04ff+x,a
1329: ce        pop   x
132a: 5f 47 0f  jmp   $0f47

132d: ce        pop   x
132e: 4d        push  x
132f: f5 5f 05  mov   a,$055f+x
1332: 9c        dec   a
1333: d8 01     mov   $01,x
1335: 1c        asl   a
1336: 1c        asl   a
1337: 1c        asl   a
1338: 04 01     or    a,$01
133a: 5d        mov   x,a
133b: f5 1f 05  mov   a,$051f+x
133e: 15 3f 05  or    a,$053f+x
1341: f0 21     beq   $1364
1343: 80        setc
1344: f5 1f 05  mov   a,$051f+x
1347: a8 01     sbc   a,#$01
1349: d5 1f 05  mov   $051f+x,a
134c: f5 3f 05  mov   a,$053f+x
134f: a8 00     sbc   a,#$00
1351: d5 3f 05  mov   $053f+x,a
1354: f5 df 04  mov   a,$04df+x
1357: c4 02     mov   $02,a
1359: f5 ff 04  mov   a,$04ff+x
135c: c4 03     mov   $03,a
135e: 8d 00     mov   y,#$00
1360: ce        pop   x
1361: 5f 2b 18  jmp   $182b

1364: ce        pop   x
1365: f5 5f 05  mov   a,$055f+x
1368: 9c        dec   a
1369: d5 5f 05  mov   $055f+x,a
136c: 5f 2b 18  jmp   $182b

136f: ce        pop   x
1370: f7 02     mov   a,($02)+y
1372: fc        inc   y
1373: c4 04     mov   $04,a
1375: f7 02     mov   a,($02)+y
1377: c4 05     mov   $05,a
1379: 6d        push  y
137a: ba 02     movw  ya,$02
137c: 7a 04     addw  ya,$04
137e: da 04     movw  $04,ya
1380: ae        pop   a
1381: 80        setc
1382: 84 04     adc   a,$04
1384: c4 02     mov   $02,a
1386: e8 00     mov   a,#$00
1388: 84 05     adc   a,$05
138a: c4 03     mov   $03,a
138c: 8d 00     mov   y,#$00
138e: 5f 47 0f  jmp   $0f47

1391: ce        pop   x
1392: f7 02     mov   a,($02)+y
1394: fc        inc   y
1395: d5 bf 04  mov   $04bf+x,a
1398: d5 cf 04  mov   $04cf+x,a
139b: c4 06     mov   $06,a
139d: f7 02     mov   a,($02)+y
139f: fc        inc   y
13a0: d5 c7 04  mov   $04c7+x,a
13a3: d5 d7 04  mov   $04d7+x,a
13a6: c4 07     mov   $07,a
13a8: 3f 68 18  call  $1868
13ab: 5f 47 0f  jmp   $0f47

13ae: ce        pop   x
13af: f7 02     mov   a,($02)+y
13b1: fc        inc   y
13b2: 60        clrc
13b3: 95 bf 04  adc   a,$04bf+x
13b6: d5 bf 04  mov   $04bf+x,a
13b9: d5 cf 04  mov   $04cf+x,a
13bc: c4 06     mov   $06,a
13be: f7 02     mov   a,($02)+y
13c0: fc        inc   y
13c1: 60        clrc
13c2: 95 c7 04  adc   a,$04c7+x
13c5: d5 c7 04  mov   $04c7+x,a
13c8: d5 d7 04  mov   $04d7+x,a
13cb: c4 07     mov   $07,a
13cd: 3f 68 18  call  $1868
13d0: 5f 47 0f  jmp   $0f47

13d3: ce        pop   x
13d4: f7 02     mov   a,($02)+y
13d6: fc        inc   y
13d7: 60        clrc
13d8: 95 cf 04  adc   a,$04cf+x
13db: d5 cf 04  mov   $04cf+x,a
13de: c4 06     mov   $06,a
13e0: ab f2     inc   $f2
13e2: f7 02     mov   a,($02)+y
13e4: fc        inc   y
13e5: 60        clrc
13e6: 95 d7 04  adc   a,$04d7+x
13e9: d5 d7 04  mov   $04d7+x,a
13ec: c4 07     mov   $07,a
13ee: 3f 68 18  call  $1868
13f1: 5f 47 0f  jmp   $0f47

13f4: ce        pop   x
13f5: e8 06     mov   a,#$06
13f7: 04 00     or    a,$00
13f9: c4 f2     mov   $f2,a
13fb: f7 02     mov   a,($02)+y
13fd: fc        inc   y
13fe: c4 f3     mov   $f3,a             ; set ADSR(2)
1400: 8b f2     dec   $f2
1402: f7 02     mov   a,($02)+y
1404: fc        inc   y
1405: c4 f3     mov   $f3,a             ; set ADSR(1)
1407: 5f 47 0f  jmp   $0f47

140a: ce        pop   x
140b: e8 07     mov   a,#$07
140d: 04 00     or    a,$00
140f: c4 f2     mov   $f2,a
1411: f7 02     mov   a,($02)+y
1413: fc        inc   y
1414: c4 f3     mov   $f3,a             ; set GAIN
1416: 5f 47 0f  jmp   $0f47

1419: ce        pop   x
141a: e8 04     mov   a,#$04
141c: 04 00     or    a,$00
141e: c4 f2     mov   $f2,a
1420: e4 12     mov   a,$12
1422: 2d        push  a
1423: f7 02     mov   a,($02)+y
1425: fc        inc   y
1426: 6d        push  y
1427: 3f fe 0d  call  $0dfe
142a: 8d 0c     mov   y,#$0c
142c: f7 12     mov   a,($12)+y
142e: fd        mov   y,a
142f: f6 68 dc  mov   a,$dc68+y
1432: c4 f3     mov   $f3,a             ; set SRCN
1434: ee        pop   y
1435: ae        pop   a
1436: c4 12     mov   $12,a
1438: 5f 47 0f  jmp   $0f47

143b: ce        pop   x
143c: 8f 2d f2  mov   $f2,#$2d
143f: f5 32 21  mov   a,$2132+x         ; get channel bitmask
1442: 04 f3     or    a,$f3
1444: c4 f3     mov   $f3,a             ; set PMON
1446: 5f 47 0f  jmp   $0f47

1449: ce        pop   x
144a: f5 32 21  mov   a,$2132+x         ; get channel bitmask
144d: 2d        push  a
144e: 04 31     or    a,$31
1450: c4 31     mov   $31,a
1452: ae        pop   a
1453: 04 32     or    a,$32
1455: c4 32     mov   $32,a
1457: 5f 47 0f  jmp   $0f47

145a: ce        pop   x
145b: f5 32 21  mov   a,$2132+x         ; get channel bitmask
145e: 04 32     or    a,$32
1460: c4 32     mov   $32,a
1462: 7d        mov   a,x
1463: 9f        xcn   a
1464: 08 05     or    a,#$05
1466: c4 f2     mov   $f2,a
1468: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
146b: 5f 47 0f  jmp   $0f47

146e: ce        pop   x
146f: f7 02     mov   a,($02)+y
1471: fc        inc   y
1472: c4 f2     mov   $f2,a
1474: f7 02     mov   a,($02)+y
1476: fc        inc   y
1477: c4 f3     mov   $f3,a             ; 
1479: 5f 47 0f  jmp   $0f47

147c: ce        pop   x
147d: f7 02     mov   a,($02)+y
147f: fc        inc   y
1480: c4 f2     mov   $f2,a
1482: f7 02     mov   a,($02)+y
1484: fc        inc   y
1485: 60        clrc
1486: 84 f3     adc   a,$f3
1488: c4 f3     mov   $f3,a             ; 
148a: 5f 47 0f  jmp   $0f47

148d: ce        pop   x
148e: f5 67 05  mov   a,$0567+x
1491: f0 03     beq   $1496
1493: 5f a3 14  jmp   $14a3

1496: f7 02     mov   a,($02)+y
1498: d0 02     bne   $149c
149a: e8 01     mov   a,#$01
149c: d5 67 05  mov   $0567+x,a
149f: dc        dec   y
14a0: 5f 2b 18  jmp   $182b

14a3: dc        dec   y
14a4: 9c        dec   a
14a5: d5 67 05  mov   $0567+x,a
14a8: f0 03     beq   $14ad
14aa: 5f 2b 18  jmp   $182b

14ad: fc        inc   y
14ae: fc        inc   y
14af: 5f 47 0f  jmp   $0f47

14b2: ce        pop   x
14b3: 8f 3d f2  mov   $f2,#$3d
14b6: f5 32 21  mov   a,$2132+x         ; get channel bitmask
14b9: 04 f3     or    a,$f3
14bb: c4 f3     mov   $f3,a             ; set NON
14bd: 5f 47 0f  jmp   $0f47

14c0: ce        pop   x
14c1: 8f 3d f2  mov   $f2,#$3d
14c4: f5 32 21  mov   a,$2132+x         ; get channel bitmask
14c7: 48 ff     eor   a,#$ff
14c9: 24 f3     and   a,$f3
14cb: c4 f3     mov   $f3,a             ; set NON
14cd: 5f 47 0f  jmp   $0f47

14d0: f7 02     mov   a,($02)+y
14d2: fc        inc   y
14d3: 60        clrc
14d4: 84 12     adc   a,$12
14d6: 5d        mov   x,a
14d7: e4 1d     mov   a,$1d
14d9: 0d        push  psw
14da: d5 77 05  mov   $0577+x,a
14dd: e4 1e     mov   a,$1e
14df: d5 78 05  mov   $0578+x,a
14e2: 28 7f     and   a,#$7f
14e4: c4 1e     mov   $1e,a
14e6: ae        pop   a
14e7: ce        pop   x
14e8: 5f 70 10  jmp   $1070

14eb: f7 02     mov   a,($02)+y
14ed: fc        inc   y
14ee: 60        clrc
14ef: 84 12     adc   a,$12
14f1: 5d        mov   x,a
14f2: f7 02     mov   a,($02)+y
14f4: fc        inc   y
14f5: 60        clrc
14f6: 95 77 05  adc   a,$0577+x
14f9: 0d        push  psw
14fa: d5 77 05  mov   $0577+x,a
14fd: ae        pop   a
14fe: ce        pop   x
14ff: 28 cb     and   a,#$cb
1501: c4 04     mov   $04,a
1503: f5 6f 05  mov   a,$056f+x
1506: 28 34     and   a,#$34
1508: 04 04     or    a,$04
150a: d5 6f 05  mov   $056f+x,a
150d: 5f 47 0f  jmp   $0f47

1510: f7 02     mov   a,($02)+y
1512: fc        inc   y
1513: 60        clrc
1514: 84 12     adc   a,$12
1516: 5d        mov   x,a
1517: 80        setc
1518: f5 77 05  mov   a,$0577+x
151b: b7 02     sbc   a,($02)+y
151d: 0d        push  psw
151e: fc        inc   y
151f: d5 77 05  mov   $0577+x,a
1522: ae        pop   a
1523: ce        pop   x
1524: 28 cb     and   a,#$cb
1526: c4 04     mov   $04,a
1528: f5 6f 05  mov   a,$056f+x
152b: 28 34     and   a,#$34
152d: 04 04     or    a,$04
152f: d5 6f 05  mov   $056f+x,a
1532: 5f 47 0f  jmp   $0f47

1535: f7 02     mov   a,($02)+y
1537: fc        inc   y
1538: 60        clrc
1539: 84 12     adc   a,$12
153b: 5d        mov   x,a
153c: f7 02     mov   a,($02)+y
153e: fc        inc   y
153f: 6d        push  y
1540: fd        mov   y,a
1541: f5 77 05  mov   a,$0577+x
1544: cf        mul   ya
1545: 0d        push  psw
1546: d5 77 05  mov   $0577+x,a
1549: dd        mov   a,y
154a: d5 78 05  mov   $0578+x,a
154d: ae        pop   a
154e: ee        pop   y
154f: ce        pop   x
1550: 5f 70 10  jmp   $1070

1553: f7 02     mov   a,($02)+y
1555: fc        inc   y
1556: 60        clrc
1557: 84 12     adc   a,$12
1559: 5d        mov   x,a
155a: f7 02     mov   a,($02)+y
155c: fc        inc   y
155d: 6d        push  y
155e: 2d        push  a
155f: f5 78 05  mov   a,$0578+x
1562: fd        mov   y,a
1563: f5 77 05  mov   a,$0577+x
1566: d8 04     mov   $04,x
1568: ce        pop   x
1569: 9e        div   ya,x
156a: 0d        push  psw
156b: f8 04     mov   x,$04
156d: d5 77 05  mov   $0577+x,a
1570: dd        mov   a,y
1571: d5 78 05  mov   $0578+x,a
1574: ae        pop   a
1575: ee        pop   y
1576: ce        pop   x
1577: 28 ca     and   a,#$ca
1579: c4 04     mov   $04,a
157b: f5 6f 05  mov   a,$056f+x
157e: 28 35     and   a,#$35
1580: 04 04     or    a,$04
1582: d5 6f 05  mov   $056f+x,a
1585: 5f 47 0f  jmp   $0f47

1588: f7 02     mov   a,($02)+y
158a: fc        inc   y
158b: 60        clrc
158c: 84 12     adc   a,$12
158e: 5d        mov   x,a
158f: f5 77 05  mov   a,$0577+x
1592: 48 ff     eor   a,#$ff
1594: 0d        push  psw
1595: d5 77 05  mov   $0577+x,a
1598: ae        pop   a
1599: ce        pop   x
159a: 5f 70 10  jmp   $1070

159d: f7 02     mov   a,($02)+y
159f: fc        inc   y
15a0: 60        clrc
15a1: 84 12     adc   a,$12
15a3: 5d        mov   x,a
15a4: f5 77 05  mov   a,$0577+x
15a7: 37 02     and   a,($02)+y
15a9: 0d        push  psw
15aa: fc        inc   y
15ab: d5 77 05  mov   $0577+x,a
15ae: ae        pop   a
15af: ce        pop   x
15b0: 5f 70 10  jmp   $1070

15b3: f7 02     mov   a,($02)+y
15b5: fc        inc   y
15b6: 60        clrc
15b7: 84 12     adc   a,$12
15b9: 5d        mov   x,a
15ba: f5 77 05  mov   a,$0577+x
15bd: 17 02     or    a,($02)+y
15bf: 0d        push  psw
15c0: fc        inc   y
15c1: d5 77 05  mov   $0577+x,a
15c4: ae        pop   a
15c5: ce        pop   x
15c6: 5f 70 10  jmp   $1070

15c9: f7 02     mov   a,($02)+y
15cb: fc        inc   y
15cc: 60        clrc
15cd: 84 12     adc   a,$12
15cf: 5d        mov   x,a
15d0: f5 77 05  mov   a,$0577+x
15d3: 57 02     eor   a,($02)+y
15d5: 0d        push  psw
15d6: fc        inc   y
15d7: d5 77 05  mov   $0577+x,a
15da: ae        pop   a
15db: ce        pop   x
15dc: 5f 70 10  jmp   $1070

15df: f7 02     mov   a,($02)+y
15e1: fc        inc   y
15e2: 60        clrc
15e3: 84 12     adc   a,$12
15e5: 5d        mov   x,a
15e6: f5 77 05  mov   a,$0577+x
15e9: bc        inc   a
15ea: 0d        push  psw
15eb: d5 77 05  mov   $0577+x,a
15ee: ae        pop   a
15ef: ce        pop   x
15f0: 5f 70 10  jmp   $1070

15f3: f7 02     mov   a,($02)+y
15f5: fc        inc   y
15f6: 60        clrc
15f7: 84 12     adc   a,$12
15f9: 5d        mov   x,a
15fa: f5 77 05  mov   a,$0577+x
15fd: 9c        dec   a
15fe: 0d        push  psw
15ff: d5 77 05  mov   $0577+x,a
1602: ae        pop   a
1603: ce        pop   x
1604: 5f 70 10  jmp   $1070

1607: f7 02     mov   a,($02)+y
1609: fc        inc   y
160a: 60        clrc
160b: 84 12     adc   a,$12
160d: 5d        mov   x,a
160e: f5 77 05  mov   a,$0577+x
1611: 48 ff     eor   a,#$ff
1613: bc        inc   a
1614: 0d        push  psw
1615: d5 77 05  mov   $0577+x,a
1618: ae        pop   a
1619: ce        pop   x
161a: 5f 70 10  jmp   $1070

161d: f7 02     mov   a,($02)+y
161f: fc        inc   y
1620: 60        clrc
1621: 84 12     adc   a,$12
1623: 5d        mov   x,a
1624: f5 77 05  mov   a,$0577+x
1627: c4 04     mov   $04,a
1629: f7 02     mov   a,($02)+y
162b: fc        inc   y
162c: 60        clrc
162d: 84 12     adc   a,$12
162f: 5d        mov   x,a
1630: 60        clrc
1631: f5 77 05  mov   a,$0577+x
1634: 84 04     adc   a,$04
1636: 0d        push  psw
1637: d5 77 05  mov   $0577+x,a
163a: ae        pop   a
163b: ce        pop   x
163c: 28 cb     and   a,#$cb
163e: c4 04     mov   $04,a
1640: f5 6f 05  mov   a,$056f+x
1643: 28 34     and   a,#$34
1645: 04 04     or    a,$04
1647: d5 6f 05  mov   $056f+x,a
164a: 5f 47 0f  jmp   $0f47

164d: f7 02     mov   a,($02)+y
164f: fc        inc   y
1650: 60        clrc
1651: 84 12     adc   a,$12
1653: 5d        mov   x,a
1654: f5 77 05  mov   a,$0577+x
1657: c4 04     mov   $04,a
1659: f7 02     mov   a,($02)+y
165b: fc        inc   y
165c: 60        clrc
165d: 84 12     adc   a,$12
165f: 5d        mov   x,a
1660: 80        setc
1661: f5 77 05  mov   a,$0577+x
1664: a4 04     sbc   a,$04
1666: 0d        push  psw
1667: d5 77 05  mov   $0577+x,a
166a: ae        pop   a
166b: ce        pop   x
166c: 28 cb     and   a,#$cb
166e: c4 04     mov   $04,a
1670: f5 6f 05  mov   a,$056f+x
1673: 28 34     and   a,#$34
1675: 04 04     or    a,$04
1677: d5 6f 05  mov   $056f+x,a
167a: 5f 47 0f  jmp   $0f47

167d: f7 02     mov   a,($02)+y
167f: fc        inc   y
1680: 60        clrc
1681: 84 12     adc   a,$12
1683: 5d        mov   x,a
1684: f5 77 05  mov   a,$0577+x
1687: c4 04     mov   $04,a
1689: f7 02     mov   a,($02)+y
168b: fc        inc   y
168c: 60        clrc
168d: 84 12     adc   a,$12
168f: 5d        mov   x,a
1690: f5 77 05  mov   a,$0577+x
1693: 6d        push  y
1694: fd        mov   y,a
1695: e4 04     mov   a,$04
1697: cf        mul   ya
1698: 0d        push  psw
1699: d5 77 05  mov   $0577+x,a
169c: dd        mov   a,y
169d: d5 78 05  mov   $0578+x,a
16a0: ae        pop   a
16a1: ee        pop   y
16a2: ce        pop   x
16a3: 5f 70 10  jmp   $1070

16a6: f7 02     mov   a,($02)+y
16a8: fc        inc   y
16a9: 60        clrc
16aa: 84 12     adc   a,$12
16ac: 5d        mov   x,a
16ad: f7 02     mov   a,($02)+y
16af: fc        inc   y
16b0: 6d        push  y
16b1: 60        clrc
16b2: 84 12     adc   a,$12
16b4: 2d        push  a
16b5: f5 78 05  mov   a,$0578+x
16b8: fd        mov   y,a
16b9: f5 77 05  mov   a,$0577+x
16bc: d8 04     mov   $04,x
16be: ce        pop   x
16bf: 2d        push  a
16c0: f5 77 05  mov   a,$0577+x
16c3: 5d        mov   x,a
16c4: ae        pop   a
16c5: 9e        div   ya,x
16c6: 0d        push  psw
16c7: f8 04     mov   x,$04
16c9: d5 77 05  mov   $0577+x,a
16cc: dd        mov   a,y
16cd: d5 78 05  mov   $0578+x,a
16d0: ae        pop   a
16d1: ee        pop   y
16d2: ce        pop   x
16d3: 28 ca     and   a,#$ca
16d5: c4 04     mov   $04,a
16d7: f5 6f 05  mov   a,$056f+x
16da: 28 35     and   a,#$35
16dc: 04 04     or    a,$04
16de: d5 6f 05  mov   $056f+x,a
16e1: 5f 47 0f  jmp   $0f47

16e4: f7 02     mov   a,($02)+y
16e6: fc        inc   y
16e7: 60        clrc
16e8: 84 12     adc   a,$12
16ea: 5d        mov   x,a
16eb: f5 77 05  mov   a,$0577+x
16ee: d8 05     mov   $05,x
16f0: c4 04     mov   $04,a
16f2: f7 02     mov   a,($02)+y
16f4: fc        inc   y
16f5: 60        clrc
16f6: 84 12     adc   a,$12
16f8: 5d        mov   x,a
16f9: f5 77 05  mov   a,$0577+x
16fc: 24 04     and   a,$04
16fe: 0d        push  psw
16ff: f8 05     mov   x,$05
1701: d5 77 05  mov   $0577+x,a
1704: ae        pop   a
1705: ce        pop   x
1706: 5f 70 10  jmp   $1070

1709: f7 02     mov   a,($02)+y
170b: fc        inc   y
170c: 60        clrc
170d: 84 12     adc   a,$12
170f: 5d        mov   x,a
1710: f5 77 05  mov   a,$0577+x
1713: d8 05     mov   $05,x
1715: c4 04     mov   $04,a
1717: f7 02     mov   a,($02)+y
1719: fc        inc   y
171a: 60        clrc
171b: 84 12     adc   a,$12
171d: 5d        mov   x,a
171e: f5 77 05  mov   a,$0577+x
1721: 04 04     or    a,$04
1723: 0d        push  psw
1724: f8 05     mov   x,$05
1726: d5 77 05  mov   $0577+x,a
1729: ae        pop   a
172a: ce        pop   x
172b: 5f 70 10  jmp   $1070

172e: f7 02     mov   a,($02)+y
1730: fc        inc   y
1731: 60        clrc
1732: 84 12     adc   a,$12
1734: 5d        mov   x,a
1735: f5 77 05  mov   a,$0577+x
1738: d8 05     mov   $05,x
173a: c4 04     mov   $04,a
173c: f7 02     mov   a,($02)+y
173e: fc        inc   y
173f: 60        clrc
1740: 84 12     adc   a,$12
1742: 5d        mov   x,a
1743: f5 77 05  mov   a,$0577+x
1746: 44 04     eor   a,$04
1748: 0d        push  psw
1749: f8 05     mov   x,$05
174b: d5 77 05  mov   $0577+x,a
174e: ae        pop   a
174f: ce        pop   x
1750: 5f 70 10  jmp   $1070

1753: f7 02     mov   a,($02)+y
1755: fc        inc   y
1756: 60        clrc
1757: 84 12     adc   a,$12
1759: 5d        mov   x,a
175a: f5 77 05  mov   a,$0577+x
175d: 77 02     cmp   a,($02)+y
175f: 0d        push  psw
1760: fc        inc   y
1761: ae        pop   a
1762: ce        pop   x
1763: 5f 19 10  jmp   $1019

1766: f7 02     mov   a,($02)+y
1768: fc        inc   y
1769: 60        clrc
176a: 84 12     adc   a,$12
176c: 5d        mov   x,a
176d: f5 77 05  mov   a,$0577+x
1770: 2d        push  a
1771: f7 02     mov   a,($02)+y
1773: fc        inc   y
1774: 60        clrc
1775: 84 12     adc   a,$12
1777: 5d        mov   x,a
1778: ae        pop   a
1779: 75 77 05  cmp   a,$0577+x
177c: 0d        push  psw
177d: ae        pop   a
177e: ce        pop   x
177f: 5f 19 10  jmp   $1019

1782: ce        pop   x
1783: f5 6f 05  mov   a,$056f+x
1786: 2d        push  a
1787: 8e        pop   psw
1788: d0 03     bne   $178d
178a: 5f 70 13  jmp   $1370

178d: fc        inc   y
178e: fc        inc   y
178f: 5f 47 0f  jmp   $0f47

1792: ce        pop   x
1793: f5 6f 05  mov   a,$056f+x
1796: 2d        push  a
1797: 8e        pop   psw
1798: f0 03     beq   $179d
179a: 5f 70 13  jmp   $1370

179d: fc        inc   y
179e: fc        inc   y
179f: 5f 47 0f  jmp   $0f47

17a2: ce        pop   x
17a3: f5 6f 05  mov   a,$056f+x
17a6: 2d        push  a
17a7: 8e        pop   psw
17a8: 30 03     bmi   $17ad
17aa: 5f 70 13  jmp   $1370

17ad: fc        inc   y
17ae: fc        inc   y
17af: 5f 47 0f  jmp   $0f47

17b2: ce        pop   x
17b3: f5 6f 05  mov   a,$056f+x
17b6: 2d        push  a
17b7: 8e        pop   psw
17b8: 10 03     bpl   $17bd
17ba: 5f 70 13  jmp   $1370

17bd: fc        inc   y
17be: fc        inc   y
17bf: 5f 47 0f  jmp   $0f47

17c2: ce        pop   x
17c3: f5 6f 05  mov   a,$056f+x
17c6: 2d        push  a
17c7: 8e        pop   psw
17c8: b0 03     bcs   $17cd
17ca: 5f 70 13  jmp   $1370

17cd: fc        inc   y
17ce: fc        inc   y
17cf: 5f 47 0f  jmp   $0f47

17d2: ce        pop   x
17d3: f5 6f 05  mov   a,$056f+x
17d6: 2d        push  a
17d7: 8e        pop   psw
17d8: 90 03     bcc   $17dd
17da: 5f 70 13  jmp   $1370

17dd: fc        inc   y
17de: fc        inc   y
17df: 5f 47 0f  jmp   $0f47

17e2: f7 02     mov   a,($02)+y
17e4: fc        inc   y
17e5: 60        clrc
17e6: 84 12     adc   a,$12
17e8: 5d        mov   x,a
17e9: f7 02     mov   a,($02)+y
17eb: 0d        push  psw
17ec: d5 77 05  mov   $0577+x,a
17ef: fc        inc   y
17f0: ae        pop   a
17f1: ce        pop   x
17f2: 5f 70 10  jmp   $1070

17f5: f7 02     mov   a,($02)+y
17f7: fc        inc   y
17f8: 60        clrc
17f9: 84 12     adc   a,$12
17fb: c4 04     mov   $04,a
17fd: f7 02     mov   a,($02)+y
17ff: fc        inc   y
1800: 60        clrc
1801: 84 12     adc   a,$12
1803: 5d        mov   x,a
1804: f5 77 05  mov   a,$0577+x
1807: 0d        push  psw
1808: f8 04     mov   x,$04
180a: d5 77 05  mov   $0577+x,a
180d: ae        pop   a
180e: ce        pop   x
180f: 5f 70 10  jmp   $1070

1812: ce        pop   x
1813: 3f 3c 18  call  $183c
1816: f5 32 21  mov   a,$2132+x         ; get channel bitmask
1819: 48 ff     eor   a,#$ff
181b: 2d        push  a
181c: 24 30     and   a,$30
181e: c4 30     mov   $30,a
1820: ae        pop   a
1821: 24 34     and   a,$34
1823: c4 34     mov   $34,a
1825: e8 00     mov   a,#$00
1827: d4 20     mov   $20+x,a
1829: d4 28     mov   $28+x,a
182b: dd        mov   a,y
182c: 8d 00     mov   y,#$00
182e: 7a 02     addw  ya,$02
1830: da 02     movw  $02,ya
1832: d5 8f 04  mov   $048f+x,a
1835: dd        mov   a,y
1836: d5 97 04  mov   $0497+x,a
1839: ce        pop   x
183a: ae        pop   a
183b: 6f        ret

183c: 8f 2d f2  mov   $f2,#$2d
183f: f5 32 21  mov   a,$2132+x         ; get channel bitmask
1842: 48 ff     eor   a,#$ff
1844: 2d        push  a
1845: 24 f3     and   a,$f3
1847: c4 f3     mov   $f3,a             ; set PMON
1849: ae        pop   a
184a: 8f 3d f2  mov   $f2,#$3d
184d: 24 f3     and   a,$f3
184f: c4 f3     mov   $f3,a             ; set PMON
1851: 6f        ret

1852: ba f6     movw  ya,$f6
1854: da 00     movw  $00,ya
1856: dd        mov   a,y
1857: 44 1c     eor   a,$1c
1859: 10 0c     bpl   $1867
185b: ba 00     movw  ya,$00
185d: da 1b     movw  $1b,ya
185f: da f6     movw  $f6,ya
1861: da 1d     movw  $1d,ya
1863: 18 80 1e  or    $1e,#$80
1866: 6f        ret

1867: 6f        ret

1868: 6d        push  y
1869: e4 65     mov   a,$65
186b: f0 1a     beq   $1887
186d: e4 06     mov   a,$06
186f: 10 03     bpl   $1874
1871: 48 ff     eor   a,#$ff
1873: bc        inc   a
1874: c4 06     mov   $06,a
1876: e4 07     mov   a,$07
1878: 10 03     bpl   $187d
187a: 48 ff     eor   a,#$ff
187c: bc        inc   a
187d: c4 07     mov   $07,a
187f: 60        clrc
1880: 84 06     adc   a,$06
1882: 5c        lsr   a
1883: c4 06     mov   $06,a
1885: c4 07     mov   $07,a
1887: eb 69     mov   y,$69
1889: e4 06     mov   a,$06
188b: cf        mul   ya
188c: cb 06     mov   $06,y
188e: eb 69     mov   y,$69
1890: e4 07     mov   a,$07
1892: cf        mul   ya
1893: cb 07     mov   $07,y
1895: e8 00     mov   a,#$00
1897: 04 00     or    a,$00
1899: c4 f2     mov   $f2,a
189b: fa 06 f3  mov   ($f3),($06)       ; set VOL(L)
189e: ab f2     inc   $f2
18a0: fa 07 f3  mov   ($f3),($07)       ; set VOL(R)
18a3: ee        pop   y
18a4: 6f        ret

18a5: f5 55 02  mov   a,$0255+x
18a8: f0 0c     beq   $18b6
18aa: c4 00     mov   $00,a
18ac: e8 00     mov   a,#$00
18ae: d5 55 02  mov   $0255+x,a
18b1: e4 00     mov   a,$00
18b3: 5f bb 18  jmp   $18bb

18b6: 3f 8b 1b  call  $1b8b
18b9: c4 00     mov   $00,a
18bb: 5c        lsr   a
18bc: 9f        xcn   a
18bd: 28 07     and   a,#$07
18bf: 1c        asl   a
18c0: 4d        push  x
18c1: 5d        mov   x,a
18c2: 1f c5 18  jmp   ($18c5+x)

18c5: dw $18d5  ; 00-0f
18c7: dw $18fc  ; 10-1f
18c9: dw $1919  ; 20-2f
18cb: dw $1926  ; 30-3f
18cd: dw $1935  ; 40-4f
18cf: dw $1957  ; 50-5f
18d1: dw $1977  ; 60-6f
18d3: dw $1946  ; 70-7f

18d5: ce        pop   x
18d6: e4 00     mov   a,$00
18d8: 28 1f     and   a,#$1f
18da: 68 10     cmp   a,#$10
18dc: 90 02     bcc   $18e0
18de: 08 e0     or    a,#$e0
18e0: 60        clrc
18e1: 95 85 02  adc   a,$0285+x
18e4: d5 85 02  mov   $0285+x,a
18e7: c4 02     mov   $02,a
18e9: f5 35 02  mov   a,$0235+x
18ec: c4 00     mov   $00,a
18ee: 4d        push  x
18ef: 3f 92 0a  call  $0a92
18f2: ce        pop   x
18f3: f5 65 02  mov   a,$0265+x
18f6: c4 04     mov   $04,a
18f8: 3f 99 1c  call  $1c99
18fb: 6f        ret

18fc: ce        pop   x
18fd: e4 00     mov   a,$00
18ff: 28 1f     and   a,#$1f
1901: 68 10     cmp   a,#$10
1903: 90 02     bcc   $1907
1905: 08 e0     or    a,#$e0
1907: 60        clrc
1908: 95 85 02  adc   a,$0285+x
190b: d5 85 02  mov   $0285+x,a
190e: c4 02     mov   $02,a
1910: f5 35 02  mov   a,$0235+x
1913: c4 00     mov   $00,a
1915: 3f a2 1d  call  $1da2
1918: 6f        ret

1919: ce        pop   x
191a: e4 00     mov   a,$00
191c: 28 1f     and   a,#$1f
191e: bc        inc   a
191f: d5 25 02  mov   $0225+x,a
1922: d5 75 02  mov   $0275+x,a
1925: 6f        ret

1926: ce        pop   x
1927: e4 00     mov   a,$00
1929: 28 1f     and   a,#$1f
192b: bc        inc   a
192c: d5 25 02  mov   $0225+x,a
192f: e8 20     mov   a,#$20
1931: d5 55 02  mov   $0255+x,a
1934: 6f        ret

1935: ce        pop   x
1936: f5 75 02  mov   a,$0275+x
1939: d5 25 02  mov   $0225+x,a
193c: e4 00     mov   a,$00
193e: 28 1f     and   a,#$1f
1940: 08 20     or    a,#$20
1942: d5 55 02  mov   $0255+x,a
1945: 6f        ret

1946: ce        pop   x
1947: f5 75 02  mov   a,$0275+x
194a: d5 25 02  mov   $0225+x,a
194d: e4 00     mov   a,$00
194f: 28 1f     and   a,#$1f
1951: 08 a0     or    a,#$a0
1953: d5 55 02  mov   $0255+x,a
1956: 6f        ret

1957: ce        pop   x
1958: e4 00     mov   a,$00
195a: 28 1f     and   a,#$1f
195c: 68 10     cmp   a,#$10
195e: 90 02     bcc   $1962
1960: 08 e0     or    a,#$e0
1962: 60        clrc
1963: 95 95 02  adc   a,$0295+x
1966: d5 95 02  mov   $0295+x,a
1969: 08 80     or    a,#$80
196b: c4 04     mov   $04,a
196d: f5 35 02  mov   a,$0235+x
1970: 5d        mov   x,a
1971: e4 04     mov   a,$04
1973: d5 6f 03  mov   $036f+x,a
1976: 6f        ret

1977: e4 00     mov   a,$00
1979: 28 1f     and   a,#$1f
197b: 68 18     cmp   a,#$18
197d: 90 03     bcc   $1982
197f: 5f 84 1b  jmp   $1b84

1982: 1c        asl   a
1983: 5d        mov   x,a
1984: 1f 87 19  jmp   ($1987+x)

1987: dw $19b9  ; 60
1989: dw $19c9  ; 61
198b: dw $1a19  ; 62
198d: dw $1a29  ; 63
198f: dw $1a39  ; 64
1991: dw $1a49  ; 65
1993: dw $1a6f  ; 66
1995: dw $1a6f  ; 67
1997: dw $1a7f  ; 68
1999: dw $1a9f  ; 69
199b: dw $1ae8  ; 6a
199d: dw $1af8  ; 6b
199f: dw $1b00  ; 6c
19a1: dw $1b02  ; 6d
19a3: dw $1b02  ; 6e
19a5: dw $1b0c  ; 6f
19a7: dw $1b14  ; 70 (cannot be used?)
19a9: dw $1b30  ; 71 (cannot be used?)
19ab: dw $19b7  ; 72 (cannot be used?)
19ad: dw $1b42  ; 73 (cannot be used?)
19af: dw $1b55  ; 74 (cannot be used?)
19b1: dw $1b68  ; 75 (cannot be used?)
19b2: dw $1b6a  ; 76 (cannot be used?)
19b4: dw $1b7d  ; 77 (cannot be used?)

19b6: ce        pop   x
19b8: 6f        ret

19b9: ce        pop   x
19ba: 3f 8b 1b  call  $1b8b
19bd: c4 04     mov   $04,a
19bf: f5 35 02  mov   a,$0235+x
19c2: 5d        mov   x,a
19c3: e4 04     mov   a,$04
19c5: d5 af 02  mov   $02af+x,a
19c8: 6f        ret

19c9: ce        pop   x
19ca: 3f 8b 1b  call  $1b8b
19cd: c4 04     mov   $04,a
19cf: f5 35 02  mov   a,$0235+x
19d2: 5d        mov   x,a
19d3: f5 df 02  mov   a,$02df+x
19d6: f0 35     beq   $1a0d
19d8: 68 07     cmp   a,#$07
19da: f0 37     beq   $1a13
19dc: 9c        dec   a
19dd: 28 07     and   a,#$07
19df: fd        mov   y,a
19e0: e4 04     mov   a,$04
19e2: ad 03     cmp   y,#$03
19e4: d0 0d     bne   $19f3
19e6: 2d        push  a
19e7: 80        setc
19e8: a5 aa 02  sbc   a,$02aa
19eb: 28 7f     and   a,#$7f
19ed: ae        pop   a
19ee: d0 01     bne   $19f1
19f0: 6f        ret

19f1: 08 80     or    a,#$80
19f3: d6 a7 02  mov   $02a7+y,a
19f6: ad 05     cmp   y,#$05
19f8: f0 01     beq   $19fb
19fa: 6f        ret

19fb: e5 ac 02  mov   a,$02ac
19fe: 28 7f     and   a,#$7f
1a00: 3f c5 08  call  $08c5
1a03: 68 ff     cmp   a,#$ff
1a05: d0 01     bne   $1a08
1a07: 6f        ret

1a08: 08 80     or    a,#$80
1a0a: c4 18     mov   $18,a
1a0c: 6f        ret

1a0d: e4 04     mov   a,$04
1a0f: d5 bf 02  mov   $02bf+x,a
1a12: 6f        ret

1a13: e4 04     mov   a,$04
1a15: d5 cf 02  mov   $02cf+x,a
1a18: 6f        ret

1a19: ce        pop   x
1a1a: 3f 8b 1b  call  $1b8b
1a1d: c4 04     mov   $04,a
1a1f: f5 35 02  mov   a,$0235+x
1a22: 5d        mov   x,a
1a23: e4 04     mov   a,$04
1a25: d5 ef 02  mov   $02ef+x,a
1a28: 6f        ret

1a29: ce        pop   x
1a2a: 3f 8b 1b  call  $1b8b
1a2d: c4 04     mov   $04,a
1a2f: f5 35 02  mov   a,$0235+x
1a32: 5d        mov   x,a
1a33: e4 04     mov   a,$04
1a35: d5 1f 03  mov   $031f+x,a
1a38: 6f        ret

1a39: ce        pop   x
1a3a: 3f 8b 1b  call  $1b8b
1a3d: c4 04     mov   $04,a
1a3f: f5 35 02  mov   a,$0235+x
1a42: 5d        mov   x,a
1a43: e4 04     mov   a,$04
1a45: d5 2f 03  mov   $032f+x,a
1a48: 6f        ret

1a49: ce        pop   x
1a4a: 3f 8b 1b  call  $1b8b
1a4d: c4 04     mov   $04,a
1a4f: f5 35 02  mov   a,$0235+x
1a52: 5d        mov   x,a
1a53: e4 04     mov   a,$04
1a55: d5 3f 03  mov   $033f+x,a
1a58: 28 40     and   a,#$40
1a5a: f0 01     beq   $1a5d
1a5c: 6f        ret

1a5d: f5 4f 03  mov   a,$034f+x
1a60: 3f 08 1e  call  $1e08
1a63: 4e 3c 00  tclr1 $003c
1a66: 4e 3d 00  tclr1 $003d
1a69: e8 00     mov   a,#$00
1a6b: d5 4f 03  mov   $034f+x,a
1a6e: 6f        ret

1a6f: ce        pop   x
1a70: 3f 8b 1b  call  $1b8b
1a73: c4 04     mov   $04,a
1a75: f5 35 02  mov   a,$0235+x
1a78: 5d        mov   x,a
1a79: e4 04     mov   a,$04
1a7b: d5 df 02  mov   $02df+x,a
1a7e: 6f        ret

1a7f: ce        pop   x
1a80: f5 35 02  mov   a,$0235+x
1a83: 5d        mov   x,a
1a84: e8 00     mov   a,#$00
1a86: d5 3f 03  mov   $033f+x,a
1a89: e8 00     mov   a,#$00
1a8b: d5 2f 03  mov   $032f+x,a
1a8e: d5 ef 02  mov   $02ef+x,a
1a91: d5 af 02  mov   $02af+x,a
1a94: e8 c0     mov   a,#$c0
1a96: d5 6f 03  mov   $036f+x,a
1a99: e8 40     mov   a,#$40
1a9b: d5 cf 02  mov   $02cf+x,a
1a9e: 6f        ret

1a9f: ce        pop   x
1aa0: e4 3c     mov   a,$3c
1aa2: c4 08     mov   $08,a
1aa4: f5 35 02  mov   a,$0235+x
1aa7: c4 00     mov   $00,a
1aa9: cd 07     mov   x,#$07
1aab: 8d 00     mov   y,#$00
1aad: 0b 08     asl   $08
1aaf: 90 0e     bcc   $1abf
1ab1: f4 41     mov   a,$41+x
1ab3: 28 0f     and   a,#$0f
1ab5: 64 00     cmp   a,$00
1ab7: d0 06     bne   $1abf
1ab9: 80        setc
1aba: 2b 06     rol   $06
1abc: 5f c2 1a  jmp   $1ac2

1abf: 60        clrc
1ac0: 2b 06     rol   $06
1ac2: 1d        dec   x
1ac3: 10 e8     bpl   $1aad
1ac5: f8 00     mov   x,$00
1ac7: f5 3f 03  mov   a,$033f+x
1aca: 28 40     and   a,#$40
1acc: d0 14     bne   $1ae2
1ace: e4 06     mov   a,$06
1ad0: 15 4f 03  or    a,$034f+x
1ad3: 3f 08 1e  call  $1e08
1ad6: 4e 3d 00  tclr1 $003d
1ad9: 4e 3c 00  tclr1 $003c
1adc: e8 00     mov   a,#$00
1ade: d5 4f 03  mov   $034f+x,a
1ae1: 6f        ret

1ae2: e4 06     mov   a,$06
1ae4: d5 4f 03  mov   $034f+x,a
1ae7: 6f        ret

1ae8: ce        pop   x
1ae9: 3f 8b 1b  call  $1b8b
1aec: c4 02     mov   $02,a
1aee: f5 35 02  mov   a,$0235+x
1af1: 5d        mov   x,a
1af2: e4 02     mov   a,$02
1af4: 3f ee 0d  call  $0dee
1af7: 6f        ret

1af8: ce        pop   x
1af9: 3f 8b 1b  call  $1b8b
1afc: c5 03 02  mov   $0203,a
1aff: 6f        ret

1b00: ce        pop   x
1b01: 6f        ret

1b02: ce        pop   x
1b03: e8 00     mov   a,#$00
1b05: d5 15 02  mov   $0215+x,a
1b08: d5 05 02  mov   $0205+x,a
1b0b: 6f        ret

1b0c: ce        pop   x
1b0d: 3f 8b 1b  call  $1b8b
1b10: d5 35 02  mov   $0235+x,a
1b13: 6f        ret

1b14: ce        pop   x
1b15: 3f 8b 1b  call  $1b8b
1b18: d5 85 02  mov   $0285+x,a
1b1b: c4 02     mov   $02,a
1b1d: f5 35 02  mov   a,$0235+x
1b20: c4 00     mov   $00,a
1b22: 4d        push  x
1b23: 3f 92 0a  call  $0a92
1b26: ce        pop   x
1b27: f5 65 02  mov   a,$0265+x
1b2a: c4 04     mov   $04,a
1b2c: 3f 99 1c  call  $1c99
1b2f: 6f        ret

1b30: ce        pop   x
1b31: 3f 8b 1b  call  $1b8b
1b34: d5 85 02  mov   $0285+x,a
1b37: c4 02     mov   $02,a
1b39: f5 35 02  mov   a,$0235+x
1b3c: c4 00     mov   $00,a
1b3e: 3f a2 1d  call  $1da2
1b41: 6f        ret

1b42: ce        pop   x
1b43: 3f 8b 1b  call  $1b8b
1b46: d5 85 02  mov   $0285+x,a
1b49: f5 75 02  mov   a,$0275+x
1b4c: d5 25 02  mov   $0225+x,a
1b4f: e8 20     mov   a,#$20
1b51: d5 55 02  mov   $0255+x,a
1b54: 6f        ret

1b55: ce        pop   x
1b56: 3f 8b 1b  call  $1b8b
1b59: d5 95 02  mov   $0295+x,a
1b5c: f5 75 02  mov   a,$0275+x
1b5f: d5 25 02  mov   $0225+x,a
1b62: e8 a0     mov   a,#$a0
1b64: d5 55 02  mov   $0255+x,a
1b67: 6f        ret

1b68: ce        pop   x
1b69: 6f        ret

1b6a: ce        pop   x
1b6b: 3f 8b 1b  call  $1b8b
1b6e: d5 95 02  mov   $0295+x,a
1b71: 08 80     or    a,#$80
1b73: 2d        push  a
1b74: f5 35 02  mov   a,$0235+x
1b77: 5d        mov   x,a
1b78: ae        pop   a
1b79: d5 6f 03  mov   $036f+x,a
1b7c: 6f        ret

1b7d: ce        pop   x
1b7e: e8 ff     mov   a,#$ff
1b80: d5 25 02  mov   $0225+x,a
1b83: 6f        ret

1b84: ce        pop   x
1b85: 28 03     and   a,#$03
1b87: d5 65 02  mov   $0265+x,a
1b8a: 6f        ret

1b8b: 40        setp
1b8c: f4 06     mov   a,$06+x           ; automaton state?
1b8e: 4d        push  x
1b8f: 1c        asl   a
1b90: 5d        mov   x,a
1b91: 1f 94 1b  jmp   ($1b94+x)

1b94: dw $1b9e  ; 00
1b96: dw $1ba5  ; 01
1b98: dw $1bac  ; 02
1b9a: dw $1bb3  ; 03
1b9b: dw $1bba  ; 04

1b9e: ce        pop   x
1b9f: 3f c0 1b  call  $1bc0
1ba2: 5f 8b 1b  jmp   $1b8b

1ba5: ce        pop   x
1ba6: 3f df 1b  call  $1bdf
1ba9: 5f be 1b  jmp   $1bbe

1bac: ce        pop   x
1bad: 3f eb 1b  call  $1beb
1bb0: 5f 8b 1b  jmp   $1b8b

1bb3: ce        pop   x
1bb4: 3f 0f 1c  call  $1c0f
1bb7: 5f be 1b  jmp   $1bbe

1bba: ce        pop   x
1bbb: 3f 5a 1c  call  $1c5a
1bbe: 20        clrp
1bbf: 6f        ret

1bc0: 3f 7d 1c  call  $1c7d             ; get section pointer of track X into $00/1
1bc3: f7 00     mov   a,($00)+y
1bc5: fc        inc   y
1bc6: 17 00     or    a,($00)+y
1bc8: f0 0c     beq   $1bd6
1bca: fc        inc   y
1bcb: e8 02     mov   a,#$02
1bcd: d4 06     mov   $06+x,a           ; set state #2
1bcf: e8 00     mov   a,#$00
1bd1: d4 56     mov   $56+x,a
1bd3: 5f db 1b  jmp   $1bdb

1bd6: fc        inc   y
1bd7: e8 01     mov   a,#$01
1bd9: d4 06     mov   $06+x,a
1bdb: 3f 8a 1c  call  $1c8a
1bde: 6f        ret

1bdf: 3f 7d 1c  call  $1c7d             ; get section pointer of track X into $00/1
1be2: f7 00     mov   a,($00)+y
1be4: fc        inc   y
1be5: 2d        push  a
1be6: 3f 8a 1c  call  $1c8a             ; section pointer += 1
1be9: ae        pop   a
1bea: 6f        ret

1beb: 3f 7d 1c  call  $1c7d             ; get section pointer of track X into $00/1
1bee: f4 16     mov   a,$16+x
1bf0: d0 0e     bne   $1c00
1bf2: f7 00     mov   a,($00)+y
1bf4: fc        inc   y
1bf5: 48 ff     eor   a,#$ff
1bf7: d4 36     mov   $36+x,a
1bf9: e8 08     mov   a,#$08
1bfb: d4 16     mov   $16+x,a
1bfd: 3f 8a 1c  call  $1c8a             ; section pointer += 1
1c00: 1b 36     asl   $36+x
1c02: e8 00     mov   a,#$00
1c04: 88 03     adc   a,#$03
1c06: d4 06     mov   $06+x,a           ; set state #3
1c08: e8 ff     mov   a,#$ff
1c0a: d4 26     mov   $26+x,a
1c0c: 9b 16     dec   $16+x
1c0e: 6f        ret

1c0f: 3f 7d 1c  call  $1c7d             ; get section pointer of track X into $00/1
1c12: f4 26     mov   a,$26+x
1c14: 10 18     bpl   $1c2e
1c16: f7 00     mov   a,($00)+y
1c18: fc        inc   y
1c19: c4 02     mov   $02,a
1c1b: 9f        xcn   a
1c1c: 5c        lsr   a
1c1d: 28 07     and   a,#$07
1c1f: 60        clrc
1c20: 88 02     adc   a,#$02
1c22: d4 26     mov   $26+x,a
1c24: 38 1f 02  and   $02,#$1f
1c27: f4 56     mov   a,$56+x
1c29: 60        clrc
1c2a: a4 02     sbc   a,$02
1c2c: d4 46     mov   $46+x,a
1c2e: 3f 8a 1c  call  $1c8a             ; section pointer += 1
1c31: f4 66     mov   a,$66+x
1c33: c4 02     mov   $02,a
1c35: f4 76     mov   a,$76+x
1c37: c4 03     mov   $03,a
1c39: f4 46     mov   a,$46+x
1c3b: bb 46     inc   $46+x
1c3d: 28 1f     and   a,#$1f
1c3f: fd        mov   y,a
1c40: f7 02     mov   a,($02)+y
1c42: c4 04     mov   $04,a
1c44: f4 56     mov   a,$56+x
1c46: bb 56     inc   $56+x
1c48: 28 1f     and   a,#$1f
1c4a: fd        mov   y,a
1c4b: e4 04     mov   a,$04
1c4d: d7 02     mov   ($02)+y,a
1c4f: 9b 26     dec   $26+x
1c51: 10 04     bpl   $1c57
1c53: e8 02     mov   a,#$02
1c55: d4 06     mov   $06+x,a
1c57: e4 04     mov   a,$04
1c59: 6f        ret

1c5a: 3f 7d 1c  call  $1c7d             ; get section pointer of track X into $00/1
1c5d: e8 02     mov   a,#$02
1c5f: d4 06     mov   $06+x,a
1c61: f4 66     mov   a,$66+x
1c63: c4 02     mov   $02,a
1c65: f4 76     mov   a,$76+x
1c67: c4 03     mov   $03,a
1c69: f7 00     mov   a,($00)+y
1c6b: fc        inc   y
1c6c: c4 04     mov   $04,a
1c6e: 3f 8a 1c  call  $1c8a             ; section pointer += 1
1c71: f4 56     mov   a,$56+x
1c73: bb 56     inc   $56+x
1c75: 28 1f     and   a,#$1f
1c77: fd        mov   y,a
1c78: e4 04     mov   a,$04
1c7a: d7 02     mov   ($02)+y,a
1c7c: 6f        ret

; get section pointer of track X into $00/1
1c7d: f5 05 02  mov   a,$0205+x
1c80: c4 00     mov   $00,a
1c82: f5 15 02  mov   a,$0215+x
1c85: c4 01     mov   $01,a
1c87: 8d 00     mov   y,#$00
1c89: 6f        ret

; add Y to $00/1 and $0205+x/$0215+x
1c8a: 60        clrc
1c8b: dd        mov   a,y
1c8c: 84 00     adc   a,$00
1c8e: d5 05 02  mov   $0205+x,a
1c91: e8 00     mov   a,#$00
1c93: 84 01     adc   a,$01
1c95: d5 15 02  mov   $0215+x,a
1c98: 6f        ret

1c99: f8 6d     mov   x,$6d
1c9b: e4 00     mov   a,$00
1c9d: 28 0f     and   a,#$0f
1c9f: d4 6e     mov   $6e+x,a
1ca1: e4 02     mov   a,$02
1ca3: d4 6f     mov   $6f+x,a
1ca5: e4 04     mov   a,$04
1ca7: d4 70     mov   $70+x,a
1ca9: 3d        inc   x
1caa: 3d        inc   x
1cab: 3d        inc   x
1cac: d8 6d     mov   $6d,x
1cae: 6f        ret

1caf: f8 6d     mov   x,$6d
1cb1: f0 1e     beq   $1cd1
1cb3: cd 00     mov   x,#$00
1cb5: f4 6e     mov   a,$6e+x
1cb7: c4 00     mov   $00,a
1cb9: f4 6f     mov   a,$6f+x
1cbb: c4 02     mov   $02,a
1cbd: f4 70     mov   a,$70+x
1cbf: c4 04     mov   $04,a
1cc1: 68 ff     cmp   a,#$ff
1cc3: f0 05     beq   $1cca
1cc5: 4d        push  x
1cc6: 3f d2 1c  call  $1cd2
1cc9: ce        pop   x
1cca: 3d        inc   x
1ccb: 3d        inc   x
1ccc: 3d        inc   x
1ccd: 3e 6d     cmp   x,$6d
1ccf: d0 e4     bne   $1cb5
1cd1: 6f        ret

1cd2: 38 0f 00  and   $00,#$0f
1cd5: cd 07     mov   x,#$07
1cd7: fa 3c 06  mov   ($06),($3c)
1cda: 0b 06     asl   $06
1cdc: 90 0e     bcc   $1cec
1cde: f4 41     mov   a,$41+x
1ce0: 28 0f     and   a,#$0f
1ce2: 64 00     cmp   a,$00
1ce4: d0 06     bne   $1cec
1ce6: f4 49     mov   a,$49+x
1ce8: 64 02     cmp   a,$02
1cea: f0 0e     beq   $1cfa
1cec: 1d        dec   x
1ced: 10 eb     bpl   $1cda
1cef: cd 07     mov   x,#$07
1cf1: e4 3c     mov   a,$3c
1cf3: 1c        asl   a
1cf4: 90 04     bcc   $1cfa
1cf6: 1d        dec   x
1cf7: 10 fa     bpl   $1cf3
1cf9: 6f        ret

1cfa: f5 32 21  mov   a,$2132+x         ; get channel bitmask
1cfd: 0e 3d 00  tset1 $003d
1d00: 0e 3c 00  tset1 $003c
1d03: 0e 3f 00  tset1 $003f
1d06: e4 04     mov   a,$04
1d08: 9f        xcn   a
1d09: 04 00     or    a,$00
1d0b: d4 41     mov   $41+x,a
1d0d: e4 02     mov   a,$02
1d0f: d4 49     mov   $49+x,a
1d11: eb 00     mov   y,$00
1d13: f6 7f 03  mov   a,$037f+y
1d16: d4 51     mov   $51+x,a
1d18: c4 61     mov   $61,a
1d1a: f6 8f 03  mov   a,$038f+y
1d1d: d4 59     mov   $59+x,a
1d1f: c4 62     mov   $62,a
1d21: e8 00     mov   a,#$00
1d23: d5 0f 04  mov   $040f+x,a
1d26: 8d 01     mov   y,#$01
1d28: f7 61     mov   a,($61)+y
1d2a: f0 35     beq   $1d61
1d2c: c4 0e     mov   $0e,a
1d2e: 8d 02     mov   y,#$02
1d30: f7 61     mov   a,($61)+y
1d32: d5 17 04  mov   $0417+x,a
1d35: 8d 03     mov   y,#$03
1d37: f7 61     mov   a,($61)+y
1d39: d5 1f 04  mov   $041f+x,a
1d3c: f0 23     beq   $1d61
1d3e: d8 00     mov   $00,x
1d40: 5d        mov   x,a
1d41: e4 0e     mov   a,$0e
1d43: 8d 00     mov   y,#$00
1d45: 9e        div   ya,x
1d46: c4 01     mov   $01,a
1d48: dd        mov   a,y
1d49: 5d        mov   x,a
1d4a: 8d 01     mov   y,#$01
1d4c: e8 00     mov   a,#$00
1d4e: 9e        div   ya,x
1d4f: f8 00     mov   x,$00
1d51: d5 2f 04  mov   $042f+x,a
1d54: e4 01     mov   a,$01
1d56: d5 27 04  mov   $0427+x,a
1d59: e8 00     mov   a,#$00
1d5b: d5 47 04  mov   $0447+x,a
1d5e: d5 3f 04  mov   $043f+x,a
1d61: e8 00     mov   a,#$00
1d63: d5 4f 04  mov   $044f+x,a
1d66: 8d 08     mov   y,#$08
1d68: f7 61     mov   a,($61)+y
1d6a: f0 35     beq   $1da1
1d6c: c4 0e     mov   $0e,a
1d6e: 8d 09     mov   y,#$09
1d70: f7 61     mov   a,($61)+y
1d72: d5 57 04  mov   $0457+x,a
1d75: 8d 0a     mov   y,#$0a
1d77: f7 61     mov   a,($61)+y
1d79: d5 5f 04  mov   $045f+x,a
1d7c: f0 23     beq   $1da1
1d7e: d8 00     mov   $00,x
1d80: 5d        mov   x,a
1d81: e4 0e     mov   a,$0e
1d83: 8d 00     mov   y,#$00
1d85: 9e        div   ya,x
1d86: c4 01     mov   $01,a
1d88: dd        mov   a,y
1d89: 5d        mov   x,a
1d8a: 8d 01     mov   y,#$01
1d8c: e8 00     mov   a,#$00
1d8e: 9e        div   ya,x
1d8f: f8 00     mov   x,$00
1d91: d5 6f 04  mov   $046f+x,a
1d94: e4 01     mov   a,$01
1d96: d5 67 04  mov   $0467+x,a
1d99: e8 00     mov   a,#$00
1d9b: d5 87 04  mov   $0487+x,a
1d9e: d5 7f 04  mov   $047f+x,a
1da1: 6f        ret

1da2: 38 0f 00  and   $00,#$0f
1da5: f8 6d     mov   x,$6d
1da7: f0 18     beq   $1dc1
1da9: e4 00     mov   a,$00
1dab: 74 6e     cmp   a,$6e+x
1dad: d0 0d     bne   $1dbc
1daf: e4 02     mov   a,$02
1db1: 74 6f     cmp   a,$6f+x
1db3: d0 07     bne   $1dbc
1db5: e8 ff     mov   a,#$ff
1db7: d4 70     mov   $70+x,a
1db9: 5f c1 1d  jmp   $1dc1

1dbc: 1d        dec   x
1dbd: 1d        dec   x
1dbe: 1d        dec   x
1dbf: 10 e8     bpl   $1da9
1dc1: fa 3c 06  mov   ($06),($3c)
1dc4: 8f 80 08  mov   $08,#$80
1dc7: eb 02     mov   y,$02
1dc9: cd 07     mov   x,#$07
1dcb: 0b 06     asl   $06
1dcd: 90 0d     bcc   $1ddc
1dcf: f4 41     mov   a,$41+x
1dd1: 28 0f     and   a,#$0f
1dd3: 64 00     cmp   a,$00
1dd5: d0 05     bne   $1ddc
1dd7: dd        mov   a,y
1dd8: 74 49     cmp   a,$49+x
1dda: f0 06     beq   $1de2
1ddc: 4b 08     lsr   $08
1dde: 1d        dec   x
1ddf: 10 ea     bpl   $1dcb
1de1: 6f        ret

1de2: f4 41     mov   a,$41+x
1de4: 28 0f     and   a,#$0f
1de6: fd        mov   y,a
1de7: f6 3f 03  mov   a,$033f+y
1dea: 28 40     and   a,#$40
1dec: d0 11     bne   $1dff
1dee: e4 08     mov   a,$08
1df0: 3f 08 1e  call  $1e08
1df3: 4e 3c 00  tclr1 $003c
1df6: 4e 3d 00  tclr1 $003d
1df9: e8 00     mov   a,#$00
1dfb: d6 4f 03  mov   $034f+y,a
1dfe: 6f        ret

1dff: e4 08     mov   a,$08
1e01: 16 4f 03  or    a,$034f+y
1e04: d6 4f 03  mov   $034f+y,a
1e07: 6f        ret

1e08: 2d        push  a
1e09: c4 08     mov   $08,a
1e0b: fa 30 09  mov   ($09),($30)
1e0e: cd 07     mov   x,#$07
1e10: 0b 09     asl   $09
1e12: 90 05     bcc   $1e19
1e14: 0b 08     asl   $08
1e16: 5f 26 1e  jmp   $1e26

1e19: 0b 08     asl   $08
1e1b: 90 09     bcc   $1e26
1e1d: 7d        mov   a,x
1e1e: 9f        xcn   a
1e1f: 08 05     or    a,#$05
1e21: c4 f2     mov   $f2,a
1e23: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
1e26: 1d        dec   x
1e27: 10 e7     bpl   $1e10
1e29: ae        pop   a
1e2a: 6f        ret

1e2b: 3f 9d 1f  call  $1f9d
1e2e: 3f 84 1f  call  $1f84
1e31: 3f 4d 1e  call  $1e4d
1e34: 3f 38 1e  call  $1e38
1e37: 6f        ret

1e38: 40        setp
1e39: cd 0f     mov   x,#$0f
1e3b: 7d        mov   a,x
1e3c: 9f        xcn   a
1e3d: 1c        asl   a
1e3e: d4 66     mov   $66+x,a
1e40: 3c        rol   a
1e41: 28 01     and   a,#$01
1e43: 60        clrc
1e44: 88 06     adc   a,#$06
1e46: d4 76     mov   $76+x,a
1e48: 1d        dec   x
1e49: 10 f0     bpl   $1e3b
1e4b: 20        clrp
1e4c: 6f        ret

1e4d: 8f 00 33  mov   $33,#$00
1e50: cd 0f     mov   x,#$0f
1e52: e8 40     mov   a,#$40
1e54: d5 1f 03  mov   $031f+x,a
1e57: e8 7f     mov   a,#$7f
1e59: d5 ef 02  mov   $02ef+x,a
1e5c: e8 c0     mov   a,#$c0
1e5e: d5 6f 03  mov   $036f+x,a
1e61: e8 40     mov   a,#$40
1e63: d5 cf 02  mov   $02cf+x,a
1e66: e8 00     mov   a,#$00
1e68: d5 2f 03  mov   $032f+x,a
1e6b: d5 af 02  mov   $02af+x,a
1e6e: d5 3f 03  mov   $033f+x,a
1e71: e8 0b     mov   a,#$0b
1e73: d5 bf 02  mov   $02bf+x,a
1e76: e8 00     mov   a,#$00
1e78: 3f ee 0d  call  $0dee
1e7b: 1d        dec   x
1e7c: 10 d4     bpl   $1e52
1e7e: 6f        ret

1e7f: e5 aa 02  mov   a,$02aa
1e82: 30 03     bmi   $1e87
1e84: 5f 13 1f  jmp   $1f13

1e87: e5 a5 02  mov   a,$02a5
1e8a: d0 47     bne   $1ed3
1e8c: ac a5 02  inc   $02a5
1e8f: 8f 7d f2  mov   $f2,#$7d
1e92: e4 f3     mov   a,$f3             ; set EDL
1e94: 5c        lsr   a
1e95: 60        clrc
1e96: 84 f3     adc   a,$f3
1e98: 28 1f     and   a,#$1f
1e9a: 48 ff     eor   a,#$ff
1e9c: c5 a6 02  mov   $02a6,a
1e9f: e8 00     mov   a,#$00
1ea1: 8f 2c f2  mov   $f2,#$2c
1ea4: c4 f3     mov   $f3,a             ; set EVOL(L)
1ea6: 8f 3c f2  mov   $f2,#$3c
1ea9: c4 f3     mov   $f3,a             ; set EVOL(R)
1eab: 8f 4d f2  mov   $f2,#$4d
1eae: c4 f3     mov   $f3,a             ; set EON
1eb0: 8f 0d f2  mov   $f2,#$0d
1eb3: c4 f3     mov   $f3,a             ; set EFB
1eb5: 8f 6c f2  mov   $f2,#$6c
1eb8: 8f 20 f3  mov   $f3,#$20          ; set FLG
1ebb: 8f 7d f2  mov   $f2,#$7d
1ebe: e5 aa 02  mov   a,$02aa
1ec1: 28 0f     and   a,#$0f
1ec3: c4 f3     mov   $f3,a             ; set EDL
1ec5: 1c        asl   a
1ec6: 1c        asl   a
1ec7: 1c        asl   a
1ec8: 48 ff     eor   a,#$ff
1eca: 80        setc
1ecb: 88 f8     adc   a,#$f8
1ecd: 8f 6d f2  mov   $f2,#$6d
1ed0: c4 f3     mov   $f3,a             ; set ESA
1ed2: 6f        ret

1ed3: 68 01     cmp   a,#$01
1ed5: d0 21     bne   $1ef8
1ed7: ac a6 02  inc   $02a6
1eda: 30 36     bmi   $1f12
1edc: ac a5 02  inc   $02a5
1edf: 3f 3c 1f  call  $1f3c
1ee2: 8f 6c f2  mov   $f2,#$6c
1ee5: 8f 00 f3  mov   $f3,#$00          ; set FLG
1ee8: e5 aa 02  mov   a,$02aa
1eeb: 5c        lsr   a
1eec: 60        clrc
1eed: 85 aa 02  adc   a,$02aa
1ef0: 28 1f     and   a,#$1f
1ef2: 48 ff     eor   a,#$ff
1ef4: c5 a6 02  mov   $02a6,a
1ef7: 6f        ret

1ef8: ac a6 02  inc   $02a6
1efb: 30 15     bmi   $1f12
1efd: e5 aa 02  mov   a,$02aa
1f00: 28 7f     and   a,#$7f
1f02: c5 aa 02  mov   $02aa,a
1f05: e5 a7 02  mov   a,$02a7
1f08: 08 80     or    a,#$80
1f0a: c5 a7 02  mov   $02a7,a
1f0d: e8 00     mov   a,#$00
1f0f: c5 a5 02  mov   $02a5,a
1f12: 6f        ret

1f13: e5 a7 02  mov   a,$02a7
1f16: 10 23     bpl   $1f3b
1f18: 28 7f     and   a,#$7f
1f1a: c5 a7 02  mov   $02a7,a
1f1d: 8f 2c f2  mov   $f2,#$2c
1f20: c5 a7 02  mov   $02a7,a
1f23: c4 f3     mov   $f3,a             ; set EVOL(L)
1f25: 8f 3c f2  mov   $f2,#$3c
1f28: e5 a8 02  mov   a,$02a8
1f2b: 28 7f     and   a,#$7f
1f2d: c5 a8 02  mov   $02a8,a
1f30: c4 f3     mov   $f3,a             ; set EVOL(R)
1f32: 8f 0d f2  mov   $f2,#$0d
1f35: e5 a9 02  mov   a,$02a9
1f38: 1c        asl   a
1f39: c4 f3     mov   $f3,a             ; set EFB
1f3b: 6f        ret

1f3c: e5 ab 02  mov   a,$02ab
1f3f: 1c        asl   a
1f40: 1c        asl   a
1f41: 1c        asl   a
1f42: 08 07     or    a,#$07
1f44: fd        mov   y,a
1f45: cd 07     mov   x,#$07
1f47: 7d        mov   a,x
1f48: 9f        xcn   a
1f49: 08 0f     or    a,#$0f
1f4b: c4 f2     mov   $f2,a
1f4d: f6 12 21  mov   a,$2112+y
1f50: c4 f3     mov   $f3,a             ; set FIR C0-C7
1f52: dc        dec   y
1f53: 1d        dec   x
1f54: 10 f1     bpl   $1f47
1f56: 6f        ret

1f57: e8 00     mov   a,#$00
1f59: 8f 2c f2  mov   $f2,#$2c
1f5c: c4 f3     mov   $f3,a             ; set EVOL(L)
1f5e: 8f 3c f2  mov   $f2,#$3c
1f61: c4 f3     mov   $f3,a             ; set EVOL(R)
1f63: 8f 6c f2  mov   $f2,#$6c
1f66: 8f 20 f3  mov   $f3,#$20          ; set FLG
1f69: 8f 7d f2  mov   $f2,#$7d
1f6c: c4 f3     mov   $f3,a             ; set EDL
1f6e: 8f 6d f2  mov   $f2,#$6d
1f71: 8f f8 f3  mov   $f3,#$f8          ; set ESA
1f74: 8f 4d f2  mov   $f2,#$4d
1f77: c4 f3     mov   $f3,a             ; set EON
1f79: 8f 2d f2  mov   $f2,#$2d
1f7c: c4 f3     mov   $f3,a             ; set PMON
1f7e: 8f 3d f2  mov   $f2,#$3d
1f81: c4 f3     mov   $f3,a             ; set NON
1f83: 6f        ret

1f84: 8f 00 f1  mov   $f1,#$00
1f87: 8f 60 fa  mov   $fa,#$60
1f8a: 8f 60 fb  mov   $fb,#$60
1f8d: 8f 33 f1  mov   $f1,#$33
1f90: 8f 00 f4  mov   $f4,#$00
1f93: 8f 00 f5  mov   $f5,#$00
1f96: 8f 00 f6  mov   $f6,#$00
1f99: 8f 00 f7  mov   $f7,#$00
1f9c: 6f        ret

1f9d: 8f 6c f2  mov   $f2,#$6c
1fa0: 8f 60 f3  mov   $f3,#$60          ; set FLG
1fa3: 8f 5d f2  mov   $f2,#$5d
1fa6: e8 24     mov   a,#$24
1fa8: c4 f3     mov   $f3,a             ; set DIR
1faa: cd 28     mov   x,#$28
1fac: f5 bb 1f  mov   a,$1fbb+x
1faf: fd        mov   y,a
1fb0: f5 bc 1f  mov   a,$1fbc+x
1fb3: 3f e5 1f  call  $1fe5             ; reset dsp regs
1fb6: 1d        dec   x
1fb7: 1d        dec   x
1fb8: 10 f2     bpl   $1fac
1fba: 6f        ret

; dsp reg initialization table
1fbb: db $6c,$20
1fbd: db $2d,$00
1fbf: db $3d,$00
1fc1: db $0c,$60
1fc3: db $1c,$60
1fc5: db $7d,$00
1fc7: db $0d,$00
1fc9: db $4d,$00
1fcb: db $2c,$00
1fcd: db $3c,$00
1fcf: db $6d,$f8
1fd1: db $5c,$00
1fd3: db $4c,$00
1fd5: db $0f,$7f
1fd7: db $1f,$00
1fd9: db $2f,$00
1fdb: db $3f,$00
1fdd: db $4f,$00
1fdf: db $5f,$00
1fe1: db $6f,$00
1fe3: db $7f,$00

; write A to dsp reg Y
1fe5: cb f2     mov   $f2,y
1fe7: c4 f3     mov   $f3,a
1fe9: 6f        ret

; read dsp reg Y into A
1fea: cb f2     mov   $f2,y
1fec: e4 f3     mov   a,$f3
1fee: 6f        ret

1fef: e8 00     mov   a,#$00
1ff1: c4 f4     mov   $f4,a
1ff3: c4 02     mov   $02,a
1ff5: c4 00     mov   $00,a
1ff7: 8f 65 f6  mov   $f6,#$65
1ffa: 8f 02 f7  mov   $f7,#$02
1ffd: 78 65 f6  cmp   $f6,#$65
2000: d0 fb     bne   $1ffd
2002: 78 02 f7  cmp   $f7,#$02
2005: d0 f6     bne   $1ffd
2007: e4 02     mov   a,$02
2009: 64 f4     cmp   a,$f4
200b: f0 fc     beq   $2009
200d: e4 f4     mov   a,$f4
200f: c4 02     mov   $02,a
2011: 28 41     and   a,#$41
2013: d0 13     bne   $2028
2015: e4 f6     mov   a,$f6
2017: d7 00     mov   ($00)+y,a
2019: fc        inc   y
201a: e4 f7     mov   a,$f7
201c: d7 00     mov   ($00)+y,a
201e: fa 02 f4  mov   ($f4),($02)
2021: fc        inc   y
2022: d0 e3     bne   $2007
2024: ab 01     inc   $01
2026: 2f df     bra   $2007
2028: 28 01     and   a,#$01
202a: d0 0b     bne   $2037
202c: e4 f7     mov   a,$f7
202e: c4 01     mov   $01,a
2030: eb f6     mov   y,$f6
2032: fa 02 f4  mov   ($f4),($02)
2035: 2f d0     bra   $2007
2037: 8f 33 f1  mov   $f1,#$33
203a: 8f 00 19  mov   $19,#$00
203d: 8f 00 1a  mov   $1a,#$00
2040: 8f 00 1b  mov   $1b,#$00
2043: 8f 00 1c  mov   $1c,#$00
2046: 8f 00 f4  mov   $f4,#$00
2049: 8f 00 f5  mov   $f5,#$00
204c: 8f 00 f6  mov   $f6,#$00
204f: 8f 00 f7  mov   $f7,#$00
2052: 60        clrc
2053: e5 04 08  mov   a,$0804
2056: 88 01     adc   a,#$01
2058: c5 76 0e  mov   $0e76,a
205b: e5 05 08  mov   a,$0805
205e: 88 00     adc   a,#$00
2060: c5 77 0e  mov   $0e77,a
2063: 60        clrc
2064: e5 04 08  mov   a,$0804
2067: 88 02     adc   a,#$02
2069: c5 7e 0e  mov   $0e7e,a
206c: e5 05 08  mov   a,$0805
206f: 88 00     adc   a,#$00
2071: c5 7f 0e  mov   $0e7f,a
2074: 60        clrc
2075: e5 04 08  mov   a,$0804
2078: 88 03     adc   a,#$03
207a: c5 83 0e  mov   $0e83,a
207d: e5 05 08  mov   a,$0805
2080: 88 00     adc   a,#$00
2082: c5 84 0e  mov   $0e84,a
2085: 60        clrc
2086: e5 06 08  mov   a,$0806
2089: 88 01     adc   a,#$01
208b: c5 bd 08  mov   $08bd,a
208e: e5 07 08  mov   a,$0807
2091: 88 00     adc   a,#$00
2093: c5 be 08  mov   $08be,a
2096: 60        clrc
2097: e5 06 08  mov   a,$0806
209a: 88 02     adc   a,#$02
209c: c5 8d 09  mov   $098d,a
209f: e5 07 08  mov   a,$0807
20a2: 88 00     adc   a,#$00
20a4: c5 8e 09  mov   $098e,a
20a7: 60        clrc
20a8: e5 06 08  mov   a,$0806
20ab: 88 03     adc   a,#$03
20ad: c5 92 09  mov   $0992,a
20b0: e5 07 08  mov   a,$0807
20b3: 88 00     adc   a,#$00
20b5: c5 93 09  mov   $0993,a
20b8: e5 00 08  mov   a,$0800
20bb: c5 0a 0e  mov   $0e0a,a
20be: e5 01 08  mov   a,$0801
20c1: c5 0b 0e  mov   $0e0b,a
20c4: 60        clrc
20c5: e5 00 08  mov   a,$0800
20c8: 88 01     adc   a,#$01
20ca: c5 0f 0e  mov   $0e0f,a
20cd: e5 01 08  mov   a,$0801
20d0: 88 00     adc   a,#$00
20d2: c5 10 0e  mov   $0e10,a
20d5: e5 03 08  mov   a,$0803
20d8: c5 a7 1f  mov   $1fa7,a
20db: e5 08 08  mov   a,$0808
20de: c5 c7 08  mov   $08c7,a
20e1: e5 09 08  mov   a,$0809
20e4: c5 c8 08  mov   $08c8,a
20e7: e5 0a 08  mov   a,$080a
20ea: c5 6e 0e  mov   $0e6e,a
20ed: e5 0b 08  mov   a,$080b
20f0: c5 6f 0e  mov   $0e6f,a
20f3: e5 0c 08  mov   a,$080c
20f6: c5 00 0e  mov   $0e00,a
20f9: e5 0d 08  mov   a,$080d
20fc: c5 01 0e  mov   $0e01,a
20ff: e5 0e 08  mov   a,$080e
2102: c5 30 14  mov   $1430,a
2105: c5 a7 0b  mov   $0ba7,a
2108: e5 0f 08  mov   a,$080f
210b: c5 31 14  mov   $1431,a
210e: c5 a8 0b  mov   $0ba8,a
2111: 6f        ret

2112: db $7f,$00,$00,$00,$00,$00,$00,$00
211a: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
2122: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
212a: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

2132: db $01,$02,$04,$08,$10,$20,$40,$80

213a: db $01,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03
2146: db $e9,$06,$25,$45,$68,$8d,$b4,$dd,$08,$36,$67,$9c

; pitch table
2152: db $20,$21,$23,$26,$28,$2a,$2d,$2f,$32,$35,$39,$3c
215e: db $00,$e7,$eb,$0e,$51,$b7,$41,$f2,$cc,$d1,$04,$68
