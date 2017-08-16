0800: 20        clrp
0801: c0        di
0802: cd ff     mov   x,#$ff
0804: bd        mov   sp,x
0805: e8 00     mov   a,#$00
0807: 5d        mov   x,a
0808: af        mov   (x)+,a
0809: c8 f0     cmp   x,#$f0
080b: d0 fb     bne   $0808
080d: 1a 02     decw  $02
080f: e8 00     mov   a,#$00
0811: 8d 0c     mov   y,#$0c
0813: 3f ed 0c  call  $0ced
0816: 8d 1c     mov   y,#$1c
0818: 3f ed 0c  call  $0ced
081b: 8d 2c     mov   y,#$2c
081d: 3f ed 0c  call  $0ced
0820: 8d 3c     mov   y,#$3c
0822: 3f ed 0c  call  $0ced
0825: 8d 2d     mov   y,#$2d
0827: 3f ed 0c  call  $0ced
082a: 8d 3d     mov   y,#$3d
082c: 3f ed 0c  call  $0ced
082f: 8d 4d     mov   y,#$4d
0831: 3f ed 0c  call  $0ced
0834: 8d 5d     mov   y,#$5d
0836: e8 1f     mov   a,#$1f
0838: 3f ed 0c  call  $0ced
083b: 8d 6c     mov   y,#$6c
083d: e8 20     mov   a,#$20
083f: 3f ed 0c  call  $0ced
0842: 8d 07     mov   y,#$07
0844: cd a0     mov   x,#$a0
0846: cb f2     mov   $f2,y
0848: d8 f3     mov   $f3,x
084a: dd        mov   a,y
084b: 60        clrc
084c: 88 10     adc   a,#$10
084e: fd        mov   y,a
084f: 10 f5     bpl   $0846
0851: 8f f0 f1  mov   $f1,#$f0
0854: 8f 24 fa  mov   $fa,#$24
0857: 8f 80 fb  mov   $fb,#$80
085a: 8f 03 f1  mov   $f1,#$03
085d: e8 c0     mov   a,#$c0
085f: 8d 6d     mov   y,#$6d
0861: 3f ed 0c  call  $0ced
0864: e8 05     mov   a,#$05
0866: 8d 7d     mov   y,#$7d
0868: 3f ed 0c  call  $0ced
086b: e8 00     mov   a,#$00
086d: eb fe     mov   y,$fe
086f: f0 fc     beq   $086d
0871: bc        inc   a
0872: 68 10     cmp   a,#$10
0874: d0 f7     bne   $086d
0876: e8 40     mov   a,#$40
0878: 8d 0c     mov   y,#$0c
087a: 3f ed 0c  call  $0ced
087d: 8d 1c     mov   y,#$1c
087f: 3f ed 0c  call  $0ced
0882: 8f 03 a4  mov   $a4,#$03
0885: 8f 00 a3  mov   $a3,#$00
0888: e8 00     mov   a,#$00
088a: c4 47     mov   $47,a
088c: e8 c0     mov   a,#$c0
088e: c4 48     mov   $48,a
0890: e8 00     mov   a,#$00
0892: fd        mov   y,a
0893: d7 47     mov   ($47)+y,a
0895: fc        inc   y
0896: d0 fb     bne   $0893
0898: ab 48     inc   $48
089a: 78 e8 48  cmp   $48,#$e8
089d: d0 f4     bne   $0893
089f: 8f ff 91  mov   $91,#$ff
08a2: e4 8a     mov   a,$8a
08a4: 8d 2c     mov   y,#$2c
08a6: 3f ed 0c  call  $0ced
08a9: 8d 3c     mov   y,#$3c
08ab: 3f ed 0c  call  $0ced
08ae: e4 8f     mov   a,$8f
08b0: 48 ff     eor   a,#$ff
08b2: c4 4f     mov   $4f,a
08b4: 24 cb     and   a,$cb
08b6: 04 cc     or    a,$cc
08b8: 8d 4d     mov   y,#$4d
08ba: 3f ed 0c  call  $0ced
08bd: e4 4f     mov   a,$4f
08bf: 24 cd     and   a,$cd
08c1: aa ce 00  mov1  c,$0019,6
08c4: 12 ce     clr0  $ce
08c6: 04 ce     or    a,$ce
08c8: ca ce 00  mov1  $0019,6,c
08cb: 8d 3d     mov   y,#$3d
08cd: 3f ed 0c  call  $0ced
08d0: e4 4f     mov   a,$4f
08d2: 24 cf     and   a,$cf
08d4: 04 d0     or    a,$d0
08d6: 8d 2d     mov   y,#$2d
08d8: 3f ed 0c  call  $0ced
08db: e4 91     mov   a,$91
08dd: 8d 5c     mov   y,#$5c
08df: 3f ed 0c  call  $0ced
08e2: e4 90     mov   a,$90
08e4: 8d 4c     mov   y,#$4c
08e6: 3f ed 0c  call  $0ced
08e9: e8 00     mov   a,#$00
08eb: c4 91     mov   $91,a
08ed: c4 90     mov   $90,a
08ef: 3f ce 13  call  $13ce
08f2: eb fd     mov   y,$fd
08f4: f0 f9     beq   $08ef
08f6: ba dc     movw  ya,$dc
08f8: d0 f5     bne   $08ef
08fa: 8b a4     dec   $a4
08fc: d0 4b     bne   $0949
08fe: 8f 03 a4  mov   $a4,#$03
0901: e4 82     mov   a,$82
0903: f0 20     beq   $0925
0905: 8b 82     dec   $82
0907: ba 7e     movw  ya,$7e
0909: 60        clrc
090a: 7a 84     addw  ya,$84
090c: e3 85 06  bbs7  $85,$0915
090f: 90 0b     bcc   $091c
0911: 8d ff     mov   y,#$ff
0913: 2f 04     bra   $0919
0915: b0 05     bcs   $091c
0917: 8d 00     mov   y,#$00
0919: 8f 00 82  mov   $82,#$00
091c: 7e 7f     cmp   y,$7f
091e: f0 03     beq   $0923
0920: 09 8e da  or    ($da),($8e)
0923: da 7e     movw  $7e,ya
0925: e4 83     mov   a,$83
0927: f0 20     beq   $0949
0929: 8b 83     dec   $83
092b: ba 80     movw  ya,$80
092d: 60        clrc
092e: 7a 86     addw  ya,$86
0930: e3 87 06  bbs7  $87,$0939
0933: 90 0b     bcc   $0940
0935: 8d ff     mov   y,#$ff
0937: 2f 04     bra   $093d
0939: b0 05     bcs   $0940
093b: 8d 00     mov   y,#$00
093d: 8f 00 83  mov   $83,#$00
0940: 7e 81     cmp   y,$81
0942: f0 03     beq   $0947
0944: 09 8f da  or    ($da),($8f)
0947: da 80     movw  $80,ya
0949: 3f 82 09  call  $0982
094c: cd 00     mov   x,#$00
094e: 8f 01 93  mov   $93,#$01
0951: fa 8e 04  mov   ($04),($8e)
0954: 4b 04     lsr   $04
0956: 90 05     bcc   $095d
0958: d8 06     mov   $06,x
095a: 3f df 11  call  $11df
095d: 3d        inc   x
095e: 3d        inc   x
095f: 0b 93     asl   $93
0961: d0 f1     bne   $0954
0963: cd 1e     mov   x,#$1e
0965: 8f 80 93  mov   $93,#$80
0968: fa 8f 04  mov   ($04),($8f)
096b: 0b 04     asl   $04
096d: 90 05     bcc   $0974
096f: d8 06     mov   $06,x
0971: 3f df 11  call  $11df
0974: 1d        dec   x
0975: 1d        dec   x
0976: 4b 93     lsr   $93
0978: 73 93 f0  bbc3  $93,$096b
097b: ba 00     movw  ya,$00
097d: da da     movw  $da,ya
097f: 5f a2 08  jmp   $08a2

0982: e4 78     mov   a,$78
0984: 60        clrc
0985: 84 79     adc   a,$79
0987: c4 79     mov   $79,a
0989: 90 69     bcc   $09f4
098b: cd 00     mov   x,#$00
098d: 8f 01 93  mov   $93,#$01
0990: fa 8e 04  mov   ($04),($8e)
0993: 4b 04     lsr   $04
0995: 90 3f     bcc   $09d6
0997: d8 06     mov   $06,x
0999: 9b 57     dec   $57+x
099b: d0 05     bne   $09a2
099d: 3f 4a 0a  call  $0a4a
09a0: 2f 34     bra   $09d6
09a2: e4 8f     mov   a,$8f
09a4: 24 93     and   a,$93
09a6: d0 10     bne   $09b8
09a8: e8 02     mov   a,#$02
09aa: de 57 0b  cbne  $57+x,$09b8
09ad: e4 d1     mov   a,$d1
09af: 04 d5     or    a,$d5
09b1: 24 93     and   a,$93
09b3: d0 03     bne   $09b8
09b5: 09 93 91  or    ($91),($93)
09b8: f5 21 03  mov   a,$0321+x
09bb: f0 04     beq   $09c1
09bd: 9c        dec   a
09be: d5 21 03  mov   $0321+x,a
09c1: f5 40 03  mov   a,$0340+x
09c4: f0 04     beq   $09ca
09c6: 9c        dec   a
09c7: d5 40 03  mov   $0340+x,a
09ca: f5 41 03  mov   a,$0341+x
09cd: f0 04     beq   $09d3
09cf: 9c        dec   a
09d0: d5 41 03  mov   $0341+x,a
09d3: 3f e6 10  call  $10e6
09d6: 3d        inc   x
09d7: 3d        inc   x
09d8: 0b 93     asl   $93
09da: d0 b7     bne   $0993
09dc: e4 7b     mov   a,$7b
09de: f0 08     beq   $09e8
09e0: 8b 7b     dec   $7b
09e2: ba 7c     movw  ya,$7c
09e4: 7a 77     addw  ya,$77
09e6: da 77     movw  $77,ya
09e8: e4 8d     mov   a,$8d
09ea: f0 08     beq   $09f4
09ec: 8b 8d     dec   $8d
09ee: ba 8b     movw  ya,$8b
09f0: 7a 89     addw  ya,$89
09f2: da 89     movw  $89,ya
09f4: e8 78     mov   a,#$78
09f6: 60        clrc
09f7: 84 7a     adc   a,$7a
09f9: c4 7a     mov   $7a,a
09fb: 90 4c     bcc   $0a49
09fd: cd 1e     mov   x,#$1e
09ff: 8f 80 93  mov   $93,#$80
0a02: fa 8f 04  mov   ($04),($8f)
0a05: 0b 04     asl   $04
0a07: 90 39     bcc   $0a42
0a09: d8 06     mov   $06,x
0a0b: 9b 57     dec   $57+x
0a0d: d0 05     bne   $0a14
0a0f: 3f 4a 0a  call  $0a4a
0a12: 2f 2e     bra   $0a42
0a14: e8 02     mov   a,#$02
0a16: de 57 0b  cbne  $57+x,$0a24
0a19: e4 d2     mov   a,$d2
0a1b: 04 d6     or    a,$d6
0a1d: 24 93     and   a,$93
0a1f: d0 03     bne   $0a24
0a21: 09 93 91  or    ($91),($93)
0a24: f5 21 03  mov   a,$0321+x
0a27: f0 04     beq   $0a2d
0a29: 9c        dec   a
0a2a: d5 21 03  mov   $0321+x,a
0a2d: f5 40 03  mov   a,$0340+x
0a30: f0 04     beq   $0a36
0a32: 9c        dec   a
0a33: d5 40 03  mov   $0340+x,a
0a36: f5 41 03  mov   a,$0341+x
0a39: f0 04     beq   $0a3f
0a3b: 9c        dec   a
0a3c: d5 41 03  mov   $0341+x,a
0a3f: 3f e6 10  call  $10e6
0a42: 1d        dec   x
0a43: 1d        dec   x
0a44: 4b 93     lsr   $93
0a46: 73 93 bc  bbc3  $93,$0a05
0a49: 6f        ret

0a4a: 3f 1f 0c  call  $0c1f
0a4d: 68 d2     cmp   a,#$d2
0a4f: 90 05     bcc   $0a56
0a51: 3f 0b 0c  call  $0c0b
0a54: 2f f4     bra   $0a4a
0a56: 8d 00     mov   y,#$00
0a58: cd 0f     mov   x,#$0f
0a5a: 9e        div   ya,x
0a5b: f8 06     mov   x,$06
0a5d: f6 f4 19  mov   a,$19f4+y
0a60: d4 57     mov   $57+x,a
0a62: 3f 2a 0c  call  $0c2a
0a65: 78 b4 05  cmp   $05,#$b4
0a68: 90 01     bcc   $0a6b
0a6a: 6f        ret

0a6b: c8 10     cmp   x,#$10
0a6d: b0 06     bcs   $0a75
0a6f: e4 93     mov   a,$93
0a71: 24 8f     and   a,$8f
0a73: d0 f5     bne   $0a6a
0a75: e4 05     mov   a,$05
0a77: 8d 00     mov   y,#$00
0a79: cd 0f     mov   x,#$0f
0a7b: 9e        div   ya,x
0a7c: c4 05     mov   $05,a
0a7e: f8 06     mov   x,$06
0a80: f5 c1 03  mov   a,$03c1+x
0a83: 8d 0c     mov   y,#$0c
0a85: cf        mul   ya
0a86: 60        clrc
0a87: 84 05     adc   a,$05
0a89: 60        clrc
0a8a: 94 a5     adc   a,$a5+x
0a8c: 80        setc
0a8d: a8 0a     sbc   a,#$0a
0a8f: d5 e0 03  mov   $03e0+x,a
0a92: cd 0c     mov   x,#$0c
0a94: 9e        div   ya,x
0a95: f8 06     mov   x,$06
0a97: c4 53     mov   $53,a
0a99: dd        mov   a,y
0a9a: 1c        asl   a
0a9b: fd        mov   y,a
0a9c: f6 ba 19  mov   a,$19ba+y
0a9f: c4 51     mov   $51,a
0aa1: f6 bb 19  mov   a,$19bb+y
0aa4: c4 52     mov   $52,a
0aa6: fd        mov   y,a
0aa7: f5 a0 03  mov   a,$03a0+x
0aaa: 60        clrc
0aab: 95 a1 03  adc   a,$03a1+x
0aae: 0d        push  psw
0aaf: 2d        push  a
0ab0: cf        mul   ya
0ab1: da 4f     movw  $4f,ya
0ab3: eb 51     mov   y,$51
0ab5: ae        pop   a
0ab6: cf        mul   ya
0ab7: dd        mov   a,y
0ab8: 8d 00     mov   y,#$00
0aba: 7a 4f     addw  ya,$4f
0abc: 8e        pop   psw
0abd: 30 02     bmi   $0ac1
0abf: 7a 51     addw  ya,$51
0ac1: da 4f     movw  $4f,ya
0ac3: e8 04     mov   a,#$04
0ac5: 64 53     cmp   a,$53
0ac7: b0 0f     bcs   $0ad8
0ac9: 0b 4f     asl   $4f
0acb: 2b 50     rol   $50
0acd: bc        inc   a
0ace: 2e 53 f8  cbne  $53,$0ac9
0ad1: 2f 08     bra   $0adb
0ad3: 4b 50     lsr   $50
0ad5: 6b 4f     ror   $4f
0ad7: 9c        dec   a
0ad8: 2e 53 f8  cbne  $53,$0ad3
0adb: e4 4f     mov   a,$4f
0add: d5 c0 05  mov   $05c0+x,a
0ae0: e4 50     mov   a,$50
0ae2: d5 c1 05  mov   $05c1+x,a
0ae5: fd        mov   y,a
0ae6: f5 c1 02  mov   a,$02c1+x
0ae9: f0 33     beq   $0b1e
0aeb: d5 00 03  mov   $0300+x,a
0aee: e8 0f     mov   a,#$0f
0af0: cf        mul   ya
0af1: da 51     movw  $51,ya
0af3: eb 4f     mov   y,$4f
0af5: e8 0f     mov   a,#$0f
0af7: cf        mul   ya
0af8: dd        mov   a,y
0af9: 8d 00     mov   y,#$00
0afb: 7a 51     addw  ya,$51
0afd: d5 60 05  mov   $0560+x,a
0b00: dd        mov   a,y
0b01: d5 61 05  mov   $0561+x,a
0b04: f5 61 03  mov   a,$0361+x
0b07: d5 40 03  mov   $0340+x,a
0b0a: e8 00     mov   a,#$00
0b0c: d5 e0 04  mov   $04e0+x,a
0b0f: d5 e1 04  mov   $04e1+x,a
0b12: f5 80 04  mov   a,$0480+x
0b15: d5 20 04  mov   $0420+x,a
0b18: f5 81 04  mov   a,$0481+x
0b1b: d5 21 04  mov   $0421+x,a
0b1e: f5 e0 02  mov   a,$02e0+x
0b21: f0 17     beq   $0b3a
0b23: d5 01 03  mov   $0301+x,a
0b26: f5 80 03  mov   a,$0380+x
0b29: d5 41 03  mov   $0341+x,a
0b2c: f5 a0 04  mov   a,$04a0+x
0b2f: d5 40 04  mov   $0440+x,a
0b32: f5 a1 04  mov   a,$04a1+x
0b35: d5 41 04  mov   $0441+x,a
0b38: e8 00     mov   a,#$00
0b3a: d5 80 05  mov   $0580+x,a
0b3d: d5 81 05  mov   $0581+x,a
0b40: d5 a0 05  mov   $05a0+x,a
0b43: d5 a1 05  mov   $05a1+x,a
0b46: d5 00 05  mov   $0500+x,a
0b49: d5 01 05  mov   $0501+x,a
0b4c: f5 a0 06  mov   a,$06a0+x
0b4f: d4 27     mov   $27+x,a
0b51: f5 a1 06  mov   a,$06a1+x
0b54: d4 28     mov   $28+x,a
0b56: c8 10     cmp   x,#$10
0b58: b0 06     bcs   $0b60
0b5a: e4 93     mov   a,$93
0b5c: 24 8f     and   a,$8f
0b5e: d0 23     bne   $0b83
0b60: 09 93 da  or    ($da),($93)
0b63: 09 93 db  or    ($db),($93)
0b66: e4 93     mov   a,$93
0b68: c8 10     cmp   x,#$10
0b6a: b0 0b     bcs   $0b77
0b6c: 24 d1     and   a,$d1
0b6e: 24 d3     and   a,$d3
0b70: d0 11     bne   $0b83
0b72: 09 93 d3  or    ($d3),($93)
0b75: 2f 09     bra   $0b80
0b77: 24 d2     and   a,$d2
0b79: 24 d4     and   a,$d4
0b7b: d0 06     bne   $0b83
0b7d: 09 93 d4  or    ($d4),($93)
0b80: 09 93 90  or    ($90),($93)
0b83: f5 a0 02  mov   a,$02a0+x
0b86: d0 03     bne   $0b8b
0b88: 5f 0a 0c  jmp   $0c0a

0b8b: 60        clrc
0b8c: 95 e0 03  adc   a,$03e0+x
0b8f: d5 e0 03  mov   $03e0+x,a
0b92: 8d 00     mov   y,#$00
0b94: cd 0c     mov   x,#$0c
0b96: 9e        div   ya,x
0b97: f8 06     mov   x,$06
0b99: c4 51     mov   $51,a
0b9b: dd        mov   a,y
0b9c: 1c        asl   a
0b9d: fd        mov   y,a
0b9e: f6 ba 19  mov   a,$19ba+y
0ba1: 2d        push  a
0ba2: f6 bb 19  mov   a,$19bb+y
0ba5: fd        mov   y,a
0ba6: f5 a0 03  mov   a,$03a0+x
0ba9: 60        clrc
0baa: 95 a1 03  adc   a,$03a1+x
0bad: c4 52     mov   $52,a
0baf: cf        mul   ya
0bb0: da 4f     movw  $4f,ya
0bb2: ee        pop   y
0bb3: e4 52     mov   a,$52
0bb5: cf        mul   ya
0bb6: dd        mov   a,y
0bb7: 8d 00     mov   y,#$00
0bb9: 7a 4f     addw  ya,$4f
0bbb: da 4f     movw  $4f,ya
0bbd: e8 04     mov   a,#$04
0bbf: 64 51     cmp   a,$51
0bc1: b0 17     bcs   $0bda
0bc3: 0b 4f     asl   $4f
0bc5: 2b 50     rol   $50
0bc7: bc        inc   a
0bc8: 2e 51 f8  cbne  $51,$0bc3
0bcb: 2f 10     bra   $0bdd
0bcd: 4b 50     lsr   $50
0bcf: 6b 4f     ror   $4f
0bd1: 90 06     bcc   $0bd9
0bd3: ba 02     movw  ya,$02
0bd5: da 4f     movw  $4f,ya
0bd7: 2f 04     bra   $0bdd
0bd9: 9c        dec   a
0bda: 2e 51 f0  cbne  $51,$0bcd
0bdd: f5 c1 05  mov   a,$05c1+x
0be0: fd        mov   y,a
0be1: f5 c0 05  mov   a,$05c0+x
0be4: 9a 4f     subw  ya,$4f
0be6: da 4f     movw  $4f,ya
0be8: 10 08     bpl   $0bf2
0bea: 58 ff 4f  eor   $4f,#$ff
0bed: 58 ff 50  eor   $50,#$ff
0bf0: 3a 4f     incw  $4f
0bf2: e4 4f     mov   a,$4f
0bf4: d5 40 05  mov   $0540+x,a
0bf7: e4 50     mov   a,$50
0bf9: d5 41 05  mov   $0541+x,a
0bfc: e8 00     mov   a,#$00
0bfe: d5 c0 04  mov   $04c0+x,a
0c01: d5 c1 04  mov   $04c1+x,a
0c04: f5 60 03  mov   a,$0360+x
0c07: d5 21 03  mov   $0321+x,a
0c0a: 6f        ret

0c0b: a8 d2     sbc   a,#$d2
0c0d: 1c        asl   a
0c0e: fd        mov   y,a
0c0f: f6 31 19  mov   a,$1931+y
0c12: 2d        push  a
0c13: f6 30 19  mov   a,$1930+y
0c16: 2d        push  a
0c17: dd        mov   a,y
0c18: 5c        lsr   a
0c19: fd        mov   y,a
0c1a: f6 8c 19  mov   a,$198c+y
0c1d: f0 0a     beq   $0c29
0c1f: e7 07     mov   a,($07+x)
0c21: c4 05     mov   $05,a
0c23: bb 07     inc   $07+x
0c25: d0 02     bne   $0c29
0c27: bb 08     inc   $08+x
0c29: 6f        ret

0c2a: f4 07     mov   a,$07+x
0c2c: fb 08     mov   y,$08+x
0c2e: da 47     movw  $47,ya
0c30: 8d 00     mov   y,#$00
0c32: f7 47     mov   a,($47)+y
0c34: 3a 47     incw  $47
0c36: 68 f8     cmp   a,#$f8
0c38: b0 6d     bcs   $0ca7
0c3a: 68 f1     cmp   a,#$f1
0c3c: f0 1f     beq   $0c5d
0c3e: 68 f0     cmp   a,#$f0
0c40: f0 28     beq   $0c6a
0c42: 68 ef     cmp   a,#$ef
0c44: f0 3a     beq   $0c80
0c46: 68 f6     cmp   a,#$f6
0c48: f0 51     beq   $0c9b
0c4a: 68 d2     cmp   a,#$d2
0c4c: 90 6f     bcc   $0cbd
0c4e: a8 d2     sbc   a,#$d2
0c50: fd        mov   y,a
0c51: f6 8c 19  mov   a,$198c+y
0c54: fd        mov   y,a
0c55: f0 db     beq   $0c32
0c57: 3a 47     incw  $47
0c59: fe fc     dbnz  y,$0c57
0c5b: 2f d5     bra   $0c32
0c5d: f7 47     mov   a,($47)+y
0c5f: 2d        push  a
0c60: fc        inc   y
0c61: f7 47     mov   a,($47)+y
0c63: c4 48     mov   $48,a
0c65: ae        pop   a
0c66: c4 47     mov   $47,a
0c68: 2f c6     bra   $0c30
0c6a: f5 e1 03  mov   a,$03e1+x
0c6d: bc        inc   a
0c6e: 77 47     cmp   a,($47)+y
0c70: d0 d8     bne   $0c4a
0c72: fc        inc   y
0c73: f7 47     mov   a,($47)+y
0c75: 2d        push  a
0c76: fc        inc   y
0c77: f7 47     mov   a,($47)+y
0c79: c4 48     mov   $48,a
0c7b: ae        pop   a
0c7c: c4 47     mov   $47,a
0c7e: 2f b0     bra   $0c30
0c80: f5 58 00  mov   a,$0058+x
0c83: fd        mov   y,a
0c84: f6 e0 05  mov   a,$05e0+y
0c87: f0 03     beq   $0c8c
0c89: 9c        dec   a
0c8a: f0 a4     beq   $0c30
0c8c: dd        mov   a,y
0c8d: 1c        asl   a
0c8e: fd        mov   y,a
0c8f: f6 20 06  mov   a,$0620+y
0c92: c4 47     mov   $47,a
0c94: f6 21 06  mov   a,$0621+y
0c97: c4 48     mov   $48,a
0c99: 2f 95     bra   $0c30
0c9b: e4 d8     mov   a,$d8
0c9d: 24 d9     and   a,$d9
0c9f: d0 bc     bne   $0c5d
0ca1: 3a 47     incw  $47
0ca3: 3a 47     incw  $47
0ca5: 2f 89     bra   $0c30
0ca7: e4 93     mov   a,$93
0ca9: c8 10     cmp   x,#$10
0cab: b0 08     bcs   $0cb5
0cad: 4e d5 00  tclr1 $00d5
0cb0: 4e d1 00  tclr1 $00d1
0cb3: 2f 37     bra   $0cec
0cb5: 4e d6 00  tclr1 $00d6
0cb8: 4e d2 00  tclr1 $00d2
0cbb: 2f 2f     bra   $0cec
0cbd: fd        mov   y,a
0cbe: e4 93     mov   a,$93
0cc0: c8 10     cmp   x,#$10
0cc2: b0 15     bcs   $0cd9
0cc4: ad c3     cmp   y,#$c3
0cc6: b0 0c     bcs   $0cd4
0cc8: 4e d5 00  tclr1 $00d5
0ccb: ad b4     cmp   y,#$b4
0ccd: 90 1d     bcc   $0cec
0ccf: 4e d1 00  tclr1 $00d1
0cd2: 2f 18     bra   $0cec
0cd4: 09 93 d5  or    ($d5),($93)
0cd7: 2f 13     bra   $0cec
0cd9: ad c3     cmp   y,#$c3
0cdb: b0 0c     bcs   $0ce9
0cdd: 4e d6 00  tclr1 $00d6
0ce0: ad b4     cmp   y,#$b4
0ce2: 90 08     bcc   $0cec
0ce4: 4e d2 00  tclr1 $00d2
0ce7: 2f 03     bra   $0cec
0ce9: 09 93 d6  or    ($d6),($93)
0cec: 6f        ret

0ced: cb f2     mov   $f2,y
0cef: c4 f3     mov   $f3,a
0cf1: 6f        ret

; vcmd d2 - tempo
0cf2: c8 10     cmp   x,#$10
0cf4: b0 08     bcs   $0cfe
0cf6: c4 78     mov   $78,a
0cf8: e8 00     mov   a,#$00
0cfa: c4 77     mov   $77,a
0cfc: c4 7b     mov   $7b,a
0cfe: 6f        ret

; vcmd d3 - tempo fade
0cff: c4 7b     mov   $7b,a
0d01: 3f 1f 0c  call  $0c1f
0d04: c8 10     cmp   x,#$10
0d06: b0 31     bcs   $0d39
0d08: eb 7b     mov   y,$7b
0d0a: f0 e6     beq   $0cf2
0d0c: 80        setc
0d0d: a4 78     sbc   a,$78
0d0f: f0 eb     beq   $0cfc
0d11: 0d        push  psw
0d12: b0 03     bcs   $0d17
0d14: 48 ff     eor   a,#$ff
0d16: bc        inc   a
0d17: f8 7b     mov   x,$7b
0d19: 8d 00     mov   y,#$00
0d1b: 9e        div   ya,x
0d1c: c4 50     mov   $50,a
0d1e: e8 00     mov   a,#$00
0d20: 9e        div   ya,x
0d21: c4 4f     mov   $4f,a
0d23: f8 06     mov   x,$06
0d25: 8e        pop   psw
0d26: b0 08     bcs   $0d30
0d28: 58 ff 4f  eor   $4f,#$ff
0d2b: 58 ff 50  eor   $50,#$ff
0d2e: 3a 4f     incw  $4f
0d30: ba 4f     movw  ya,$4f
0d32: c4 7c     mov   $7c,a
0d34: cb 7d     mov   $7d,y
0d36: 8f 00 77  mov   $77,#$00
0d39: 6f        ret

; vcmd d4 - volume
0d3a: d5 01 02  mov   $0201+x,a
0d3d: e8 00     mov   a,#$00
0d3f: d5 00 02  mov   $0200+x,a
0d42: d5 80 02  mov   $0280+x,a
0d45: 6f        ret

; vcmd d5 - volume fade
0d46: c4 4f     mov   $4f,a
0d48: d5 80 02  mov   $0280+x,a
0d4b: 3f 1f 0c  call  $0c1f
0d4e: eb 4f     mov   y,$4f
0d50: f0 e8     beq   $0d3a
0d52: 80        setc
0d53: b5 01 02  sbc   a,$0201+x
0d56: f0 ea     beq   $0d42
0d58: 0d        push  psw
0d59: b0 03     bcs   $0d5e
0d5b: 48 ff     eor   a,#$ff
0d5d: bc        inc   a
0d5e: f8 4f     mov   x,$4f
0d60: 8d 00     mov   y,#$00
0d62: 9e        div   ya,x
0d63: c4 50     mov   $50,a
0d65: e8 00     mov   a,#$00
0d67: 9e        div   ya,x
0d68: c4 4f     mov   $4f,a
0d6a: f8 06     mov   x,$06
0d6c: 8e        pop   psw
0d6d: b0 08     bcs   $0d77
0d6f: 58 ff 4f  eor   $4f,#$ff
0d72: 58 ff 50  eor   $50,#$ff
0d75: 3a 4f     incw  $4f
0d77: e4 4f     mov   a,$4f
0d79: d5 20 02  mov   $0220+x,a
0d7c: e4 50     mov   a,$50
0d7e: d5 21 02  mov   $0221+x,a
0d81: e8 00     mov   a,#$00
0d83: d5 00 02  mov   $0200+x,a
0d86: 6f        ret

; vcmd d8 - echo volume
0d87: c8 10     cmp   x,#$10
0d89: b0 08     bcs   $0d93
0d8b: 5c        lsr   a
0d8c: c4 8a     mov   $8a,a
0d8e: 8f 00 89  mov   $89,#$00
0d91: c4 8d     mov   $8d,a
0d93: 6f        ret

; vcmd d9 - echo volume fade
0d94: c4 8d     mov   $8d,a
0d96: 3f 1f 0c  call  $0c1f
0d99: c8 10     cmp   x,#$10
0d9b: b0 31     bcs   $0dce
0d9d: eb 8d     mov   y,$8d
0d9f: f0 e6     beq   $0d87
0da1: 80        setc
0da2: a4 8a     sbc   a,$8a
0da4: f0 eb     beq   $0d91
0da6: 0d        push  psw
0da7: b0 03     bcs   $0dac
0da9: 48 ff     eor   a,#$ff
0dab: bc        inc   a
0dac: f8 8d     mov   x,$8d
0dae: 8d 00     mov   y,#$00
0db0: 9e        div   ya,x
0db1: c4 50     mov   $50,a
0db3: e8 00     mov   a,#$00
0db5: 9e        div   ya,x
0db6: c4 4f     mov   $4f,a
0db8: f8 06     mov   x,$06
0dba: 8e        pop   psw
0dbb: b0 08     bcs   $0dc5
0dbd: 58 ff 4f  eor   $4f,#$ff
0dc0: 58 ff 50  eor   $50,#$ff
0dc3: 3a 4f     incw  $4f
0dc5: ba 4f     movw  ya,$4f
0dc7: c4 8b     mov   $8b,a
0dc9: cb 8c     mov   $8c,y
0dcb: 8f 00 89  mov   $89,#$00
0dce: 6f        ret

; vcmd d6 - panpot
0dcf: d5 41 02  mov   $0241+x,a
0dd2: e8 00     mov   a,#$00
0dd4: d5 40 02  mov   $0240+x,a
0dd7: d5 81 02  mov   $0281+x,a
0dda: 6f        ret

; vcmd d7 - panpot fade
0ddb: c4 4f     mov   $4f,a
0ddd: d5 81 02  mov   $0281+x,a
0de0: 3f 1f 0c  call  $0c1f
0de3: eb 4f     mov   y,$4f
0de5: f0 e8     beq   $0dcf
0de7: 80        setc
0de8: b5 41 02  sbc   a,$0241+x
0deb: f0 ea     beq   $0dd7
0ded: 0d        push  psw
0dee: b0 03     bcs   $0df3
0df0: 48 ff     eor   a,#$ff
0df2: bc        inc   a
0df3: f8 4f     mov   x,$4f
0df5: 8d 00     mov   y,#$00
0df7: 9e        div   ya,x
0df8: c4 50     mov   $50,a
0dfa: e8 00     mov   a,#$00
0dfc: 9e        div   ya,x
0dfd: c4 4f     mov   $4f,a
0dff: f8 06     mov   x,$06
0e01: 8e        pop   psw
0e02: b0 08     bcs   $0e0c
0e04: 58 ff 4f  eor   $4f,#$ff
0e07: 58 ff 50  eor   $50,#$ff
0e0a: 3a 4f     incw  $4f
0e0c: e4 4f     mov   a,$4f
0e0e: d5 60 02  mov   $0260+x,a
0e11: e4 50     mov   a,$50
0e13: d5 61 02  mov   $0261+x,a
0e16: e8 00     mov   a,#$00
0e18: d5 40 02  mov   $0240+x,a
0e1b: 6f        ret

; vcmd db - pitch envelope on
0e1c: fd        mov   y,a
0e1d: 3f 1f 0c  call  $0c1f             ; arg2 - delay
0e20: d5 60 03  mov   $0360+x,a
0e23: 3f 1f 0c  call  $0c1f             ; arg3 - length
0e26: 5d        mov   x,a
0e27: f0 14     beq   $0e3d
0e29: 6d        push  y                 ; arg1 - depth (semitones, signed)
0e2a: 8d 00     mov   y,#$00
0e2c: e8 ff     mov   a,#$ff
0e2e: 9e        div   ya,x
0e2f: 2d        push  a
0e30: e8 00     mov   a,#$00
0e32: 9e        div   ya,x
0e33: f8 06     mov   x,$06
0e35: d5 00 04  mov   $0400+x,a
0e38: ae        pop   a
0e39: d5 01 04  mov   $0401+x,a
0e3c: ae        pop   a
; vcmd dc - pitch envelope off
0e3d: d5 a0 02  mov   $02a0+x,a
0e40: 6f        ret

; vcmd da - transpose (absolute)
0e41: d4 a5     mov   $a5+x,a
0e43: 6f        ret

; vcmd e6 - echo feedback, FIR
0e44: c4 4f     mov   $4f,a
0e46: 3f 1f 0c  call  $0c1f
0e49: c8 10     cmp   x,#$10
0e4b: b0 1e     bcs   $0e6b
0e4d: 1c        asl   a
0e4e: 1c        asl   a
0e4f: 1c        asl   a
0e50: fd        mov   y,a
0e51: cd 0f     mov   x,#$0f
0e53: f6 d4 19  mov   a,$19d4+y
0e56: d8 f2     mov   $f2,x
0e58: c4 f3     mov   $f3,a
0e5a: fc        inc   y
0e5b: 7d        mov   a,x
0e5c: 60        clrc
0e5d: 88 10     adc   a,#$10
0e5f: 5d        mov   x,a
0e60: 10 f1     bpl   $0e53
0e62: f8 06     mov   x,$06
0e64: 8d 0d     mov   y,#$0d
0e66: e4 4f     mov   a,$4f
0e68: 5f ed 0c  jmp   $0ced

0e6b: 6f        ret

; vcmd dd - vibrato on
0e6c: d5 a1 02  mov   $02a1+x,a
0e6f: fd        mov   y,a
0e70: 3f 1f 0c  call  $0c1f
0e73: d5 61 03  mov   $0361+x,a
0e76: 3f 1f 0c  call  $0c1f
0e79: 28 7f     and   a,#$7f
0e7b: 5d        mov   x,a
0e7c: f0 2b     beq   $0ea9
0e7e: 2d        push  a
0e7f: ad 40     cmp   y,#$40
0e81: 0d        push  psw
0e82: dd        mov   a,y
0e83: 28 3f     and   a,#$3f
0e85: bc        inc   a
0e86: 1c        asl   a
0e87: 8d 00     mov   y,#$00
0e89: 9e        div   ya,x
0e8a: c4 50     mov   $50,a
0e8c: e8 00     mov   a,#$00
0e8e: 9e        div   ya,x
0e8f: c4 4f     mov   $4f,a
0e91: 8e        pop   psw
0e92: b0 08     bcs   $0e9c
0e94: 58 ff 4f  eor   $4f,#$ff
0e97: 58 ff 50  eor   $50,#$ff
0e9a: 3a 4f     incw  $4f
0e9c: f8 06     mov   x,$06
0e9e: e4 4f     mov   a,$4f
0ea0: d5 80 04  mov   $0480+x,a
0ea3: e4 50     mov   a,$50
0ea5: d5 81 04  mov   $0481+x,a
0ea8: ae        pop   a
; vcmd de - vibrato off
0ea9: d5 c1 02  mov   $02c1+x,a
0eac: 6f        ret

; vcmd df - tremolo on
0ead: d5 c0 02  mov   $02c0+x,a
0eb0: fd        mov   y,a
0eb1: 3f 1f 0c  call  $0c1f
0eb4: d5 80 03  mov   $0380+x,a
0eb7: 3f 1f 0c  call  $0c1f
0eba: 28 7f     and   a,#$7f
0ebc: 5d        mov   x,a
0ebd: f0 2b     beq   $0eea
0ebf: 2d        push  a
0ec0: ad 40     cmp   y,#$40
0ec2: 0d        push  psw
0ec3: dd        mov   a,y
0ec4: 28 3f     and   a,#$3f
0ec6: bc        inc   a
0ec7: 1c        asl   a
0ec8: 8d 00     mov   y,#$00
0eca: 9e        div   ya,x
0ecb: c4 50     mov   $50,a
0ecd: e8 00     mov   a,#$00
0ecf: 9e        div   ya,x
0ed0: c4 4f     mov   $4f,a
0ed2: 8e        pop   psw
0ed3: b0 08     bcs   $0edd
0ed5: 58 ff 4f  eor   $4f,#$ff
0ed8: 58 ff 50  eor   $50,#$ff
0edb: 3a 4f     incw  $4f
0edd: f8 06     mov   x,$06
0edf: e4 4f     mov   a,$4f
0ee1: d5 a0 04  mov   $04a0+x,a
0ee4: e4 50     mov   a,$50
0ee6: d5 a1 04  mov   $04a1+x,a
0ee9: ae        pop   a
; vcmd e0 - tremolo off
0eea: d5 e0 02  mov   $02e0+x,a
0eed: 6f        ret

; vcmd e9 - panpot LFO on
0eee: fd        mov   y,a
0eef: 3f 1f 0c  call  $0c1f
0ef2: 5d        mov   x,a
0ef3: f0 29     beq   $0f1e
0ef5: 2d        push  a
0ef6: dd        mov   a,y
0ef7: 0d        push  psw
0ef8: 8d 00     mov   y,#$00
0efa: 9e        div   ya,x
0efb: c4 50     mov   $50,a
0efd: e8 00     mov   a,#$00
0eff: 9e        div   ya,x
0f00: c4 4f     mov   $4f,a
0f02: 8e        pop   psw
0f03: 10 08     bpl   $0f0d
0f05: 58 ff 4f  eor   $4f,#$ff
0f08: 58 ff 50  eor   $50,#$ff
0f0b: 3a 4f     incw  $4f
0f0d: f8 06     mov   x,$06
0f0f: e4 4f     mov   a,$4f
0f11: d5 60 04  mov   $0460+x,a
0f14: e4 50     mov   a,$50
0f16: d5 61 04  mov   $0461+x,a
0f19: ae        pop   a
0f1a: d5 20 03  mov   $0320+x,a
0f1d: 1c        asl   a
; vcmd ea - panpot LFO off
0f1e: d5 e1 02  mov   $02e1+x,a
0f21: e8 00     mov   a,#$00
0f23: d5 21 05  mov   $0521+x,a
0f26: 6f        ret

; vcmd ec - increase octave
0f27: f5 c1 03  mov   a,$03c1+x
0f2a: bc        inc   a
0f2b: 2f 04     bra   $0f31
; vcmd ed - decrease octave
0f2d: f5 c1 03  mov   a,$03c1+x
0f30: 9c        dec   a
; vcmd eb - set octave
0f31: d5 c1 03  mov   $03c1+x,a
0f34: 6f        ret

; vcmd e7 - echo on
0f35: c8 10     cmp   x,#$10
0f37: b0 04     bcs   $0f3d
0f39: 09 93 cb  or    ($cb),($93)
0f3c: 6f        ret

0f3d: 09 93 cc  or    ($cc),($93)
0f40: ba cb     movw  ya,$cb
0f42: d0 04     bne   $0f48
0f44: da 89     movw  $89,ya
0f46: c4 8d     mov   $8d,a
0f48: 6f        ret

; vcmd e8 - echo off
0f49: e4 93     mov   a,$93
0f4b: c8 10     cmp   x,#$10
0f4d: b0 04     bcs   $0f53
0f4f: 4e cb 00  tclr1 $00cb
0f52: 6f        ret

0f53: 4e cc 00  tclr1 $00cc
0f56: 6f        ret

; vcmd e2 - noise on
0f57: c8 10     cmp   x,#$10
0f59: b0 04     bcs   $0f5f
0f5b: 09 93 cd  or    ($cd),($93)
0f5e: 6f        ret

0f5f: 09 93 ce  or    ($ce),($93)
0f62: 6f        ret

; vcmd e3 - noise off
0f63: e4 93     mov   a,$93
0f65: c8 10     cmp   x,#$10
0f67: b0 04     bcs   $0f6d
0f69: 4e cd 00  tclr1 $00cd
0f6c: 6f        ret

0f6d: 4e ce 00  tclr1 $00ce
0f70: 6f        ret

; vcmd e1 - noise frequency
0f71: 28 1f     and   a,#$1f
0f73: c4 05     mov   $05,a
0f75: c8 10     cmp   x,#$10
0f77: b0 07     bcs   $0f80
0f79: c4 d7     mov   $d7,a
0f7b: 13 ce 04  bbc0  $ce,$0f82
0f7e: 2f 0e     bra   $0f8e
0f80: 02 ce     set0  $ce
0f82: 8d 6c     mov   y,#$6c
0f84: cb f2     mov   $f2,y
0f86: e4 f3     mov   a,$f3
0f88: 28 e0     and   a,#$e0
0f8a: 04 05     or    a,$05
0f8c: c4 f3     mov   $f3,a
0f8e: 6f        ret

; vcmd e4 - pitch modulation on
0f8f: c8 10     cmp   x,#$10
0f91: b0 04     bcs   $0f97
0f93: 09 93 cf  or    ($cf),($93)
0f96: 6f        ret

0f97: 09 93 d0  or    ($d0),($93)
0f9a: 6f        ret

; vcmd e5 - pitch modulation off
0f9b: e4 93     mov   a,$93
0f9d: c8 10     cmp   x,#$10
0f9f: b0 04     bcs   $0fa5
0fa1: 4e cf 00  tclr1 $00cf
0fa4: 6f        ret

0fa5: 4e d0 00  tclr1 $00d0
0fa8: 6f        ret

; vcmd f3 - set instrument
0fa9: d4 a6     mov   $a6+x,a
0fab: fd        mov   y,a
0fac: f6 40 1e  mov   a,$1e40+y
0faf: d5 a0 03  mov   $03a0+x,a
0fb2: c8 10     cmp   x,#$10
0fb4: b0 06     bcs   $0fbc
0fb6: e4 93     mov   a,$93
0fb8: 24 8f     and   a,$8f
0fba: d0 1f     bne   $0fdb
0fbc: 7d        mov   a,x
0fbd: 9f        xcn   a
0fbe: 5c        lsr   a
0fbf: 08 04     or    a,#$04
0fc1: 5d        mov   x,a
0fc2: d8 f2     mov   $f2,x
0fc4: cb f3     mov   $f3,y
0fc6: 3d        inc   x
0fc7: dd        mov   a,y
0fc8: 1c        asl   a
0fc9: fd        mov   y,a
0fca: f6 80 1e  mov   a,$1e80+y
0fcd: d8 f2     mov   $f2,x
0fcf: c4 f3     mov   $f3,a
0fd1: 3d        inc   x
0fd2: f6 81 1e  mov   a,$1e81+y
0fd5: d8 f2     mov   $f2,x
0fd7: c4 f3     mov   $f3,a
0fd9: f8 06     mov   x,$06
0fdb: 6f        ret

; vcmd f4 - set envelope
0fdc: 1c        asl   a
0fdd: fd        mov   y,a
0fde: f6 00 1e  mov   a,$1e00+y
0fe1: d5 a0 06  mov   $06a0+x,a
0fe4: f6 01 1e  mov   a,$1e01+y
0fe7: d5 a1 06  mov   $06a1+x,a
0fea: 6f        ret

; vcmd f2 - slur on
0feb: e4 93     mov   a,$93
0fed: c8 10     cmp   x,#$10
0fef: b0 08     bcs   $0ff9
0ff1: 09 93 d1  or    ($d1),($93)
0ff4: 4e d3 00  tclr1 $00d3
0ff7: 2f 06     bra   $0fff
0ff9: 09 93 d2  or    ($d2),($93)
0ffc: 4e d4 00  tclr1 $00d4
0fff: 6f        ret

; vcmd f5 - slur off
1000: e4 93     mov   a,$93
1002: c8 10     cmp   x,#$10
1004: b0 05     bcs   $100b
1006: 4e d1 00  tclr1 $00d1
1009: 2f 03     bra   $100e
100b: 4e d2 00  tclr1 $00d2
100e: 6f        ret

; vcmd f1 - goto
100f: fd        mov   y,a
1010: 3f 1f 0c  call  $0c1f
1013: c8 10     cmp   x,#$10
1015: b0 04     bcs   $101b
1017: db 07     mov   $07+x,y
1019: d4 08     mov   $08+x,a
101b: 6f        ret

; vcmd f0 - conditional jump in repeat
101c: fd        mov   y,a
101d: 3f 1f 0c  call  $0c1f
1020: c4 4f     mov   $4f,a
1022: 3f 1f 0c  call  $0c1f
1025: c4 50     mov   $50,a
1027: c8 10     cmp   x,#$10
1029: b0 16     bcs   $1041
102b: f5 e1 03  mov   a,$03e1+x
102e: bc        inc   a
102f: d5 e1 03  mov   $03e1+x,a
1032: dd        mov   a,y
1033: 75 e1 03  cmp   a,$03e1+x
1036: d0 09     bne   $1041
1038: 3f 6b 10  call  $106b
103b: ba 4f     movw  ya,$4f
103d: d4 07     mov   $07+x,a
103f: db 08     mov   $08+x,y
1041: 6f        ret

; vcmd ee - repeat start
1042: bb 58     inc   $58+x
1044: 7d        mov   a,x
1045: 1c        asl   a
1046: 60        clrc
1047: 88 04     adc   a,#$04
1049: de 58 02  cbne  $58+x,$104e
104c: 9b 58     dec   $58+x
104e: fb 58     mov   y,$58+x
1050: e4 05     mov   a,$05
1052: f0 01     beq   $1055
1054: bc        inc   a
1055: d6 e0 05  mov   $05e0+y,a
1058: dd        mov   a,y
1059: 1c        asl   a
105a: fd        mov   y,a
105b: f4 07     mov   a,$07+x
105d: d6 20 06  mov   $0620+y,a
1060: f4 08     mov   a,$08+x
1062: d6 21 06  mov   $0621+y,a
1065: e8 00     mov   a,#$00
1067: d5 e1 03  mov   $03e1+x,a
106a: 6f        ret

; vcmd ef - repeat end
106b: 7d        mov   a,x
106c: 1c        asl   a
106d: 9c        dec   a
106e: 74 58     cmp   a,$58+x
1070: f0 1e     beq   $1090
1072: fb 58     mov   y,$58+x
1074: f6 e0 05  mov   a,$05e0+y
1077: f0 07     beq   $1080
1079: 9c        dec   a
107a: d0 04     bne   $1080
107c: 9b 58     dec   $58+x
107e: 2f 10     bra   $1090
1080: d6 e0 05  mov   $05e0+y,a
1083: dd        mov   a,y
1084: 1c        asl   a
1085: fd        mov   y,a
1086: f6 20 06  mov   a,$0620+y
1089: d4 07     mov   $07+x,a
108b: f6 21 06  mov   a,$0621+y
108e: d4 08     mov   $08+x,a
1090: 6f        ret

; vcmd f6
1091: fd        mov   y,a
1092: 3f 1f 0c  call  $0c1f
1095: c8 10     cmp   x,#$10
1097: b0 13     bcs   $10ac
1099: e4 d8     mov   a,$d8
109b: 24 d9     and   a,$d9
109d: f0 0d     beq   $10ac
109f: 0b d9     asl   $d9
10a1: d0 03     bne   $10a6
10a3: 8f 01 d9  mov   $d9,#$01
10a6: e4 05     mov   a,$05
10a8: db 07     mov   $07+x,y
10aa: d4 08     mov   $08+x,a
10ac: 6f        ret

; vcmd f7 - tuning
10ad: d5 a1 03  mov   $03a1+x,a
10b0: 6f        ret

; vcmd f8,f9-ff - end of track
10b1: e4 93     mov   a,$93
10b3: c8 10     cmp   x,#$10
10b5: b0 05     bcs   $10bc
10b7: 4e 8e 00  tclr1 $008e
10ba: 2f 1e     bra   $10da
10bc: 4e 8f 00  tclr1 $008f
10bf: d0 0e     bne   $10cf
10c1: 12 ce     clr0  $ce
10c3: 8d 6c     mov   y,#$6c
10c5: cb f2     mov   $f2,y
10c7: e4 f3     mov   a,$f3
10c9: 28 e0     and   a,#$e0
10cb: 04 d7     or    a,$d7
10cd: c4 f3     mov   $f3,a
10cf: 7d        mov   a,x
10d0: 28 0f     and   a,#$0f
10d2: 5d        mov   x,a
10d3: fb a6     mov   y,$a6+x
10d5: f8 06     mov   x,$06
10d7: 3f bc 0f  call  $0fbc
10da: 3f 63 0f  call  $0f63
10dd: 3f 9b 0f  call  $0f9b
10e0: 3f 49 0f  call  $0f49
10e3: ae        pop   a
10e4: ae        pop   a
10e5: 6f        ret

10e6: f5 80 02  mov   a,$0280+x
10e9: f0 26     beq   $1111
10eb: 9c        dec   a
10ec: d5 80 02  mov   $0280+x,a
10ef: f5 00 02  mov   a,$0200+x
10f2: c4 4f     mov   $4f,a
10f4: f5 01 02  mov   a,$0201+x
10f7: c4 50     mov   $50,a
10f9: f5 21 02  mov   a,$0221+x
10fc: fd        mov   y,a
10fd: f5 20 02  mov   a,$0220+x
1100: 7a 4f     addw  ya,$4f
1102: d5 00 02  mov   $0200+x,a
1105: dd        mov   a,y
1106: 75 01 02  cmp   a,$0201+x
1109: d5 01 02  mov   $0201+x,a
110c: f0 03     beq   $1111
110e: 09 93 da  or    ($da),($93)
1111: f5 81 02  mov   a,$0281+x
1114: f0 26     beq   $113c
1116: 9c        dec   a
1117: d5 81 02  mov   $0281+x,a
111a: f5 40 02  mov   a,$0240+x
111d: c4 4f     mov   $4f,a
111f: f5 41 02  mov   a,$0241+x
1122: c4 50     mov   $50,a
1124: f5 61 02  mov   a,$0261+x
1127: fd        mov   y,a
1128: f5 60 02  mov   a,$0260+x
112b: 7a 4f     addw  ya,$4f
112d: d5 40 02  mov   $0240+x,a
1130: dd        mov   a,y
1131: 75 41 02  cmp   a,$0241+x
1134: d5 41 02  mov   $0241+x,a
1137: f0 03     beq   $113c
1139: 09 93 da  or    ($da),($93)
113c: f5 a0 02  mov   a,$02a0+x
113f: f0 58     beq   $1199
1141: f5 21 03  mov   a,$0321+x
1144: d0 53     bne   $1199
1146: f5 00 04  mov   a,$0400+x
1149: c4 4f     mov   $4f,a
114b: f5 01 04  mov   a,$0401+x
114e: c4 50     mov   $50,a
1150: f5 c1 04  mov   a,$04c1+x
1153: fd        mov   y,a
1154: f5 c0 04  mov   a,$04c0+x
1157: 60        clrc
1158: 7a 4f     addw  ya,$4f
115a: 90 09     bcc   $1165
115c: f5 41 05  mov   a,$0541+x
115f: fd        mov   y,a
1160: f5 40 05  mov   a,$0540+x
1163: 2f 18     bra   $117d
1165: d5 c0 04  mov   $04c0+x,a
1168: dd        mov   a,y
1169: d5 c1 04  mov   $04c1+x,a
116c: 2d        push  a
116d: f5 41 05  mov   a,$0541+x
1170: cf        mul   ya
1171: da 4f     movw  $4f,ya
1173: ee        pop   y
1174: f5 40 05  mov   a,$0540+x
1177: cf        mul   ya
1178: dd        mov   a,y
1179: 8d 00     mov   y,#$00
117b: 7a 4f     addw  ya,$4f
117d: da 4f     movw  $4f,ya
117f: f5 a0 02  mov   a,$02a0+x
1182: 10 08     bpl   $118c
1184: 58 ff 4f  eor   $4f,#$ff
1187: 58 ff 50  eor   $50,#$ff
118a: 3a 4f     incw  $4f
118c: e4 4f     mov   a,$4f
118e: d5 80 05  mov   $0580+x,a
1191: e4 50     mov   a,$50
1193: d5 81 05  mov   $0581+x,a
1196: 09 93 db  or    ($db),($93)
1199: f5 e1 02  mov   a,$02e1+x
119c: f0 40     beq   $11de
119e: f5 60 04  mov   a,$0460+x
11a1: c4 4f     mov   $4f,a
11a3: f5 61 04  mov   a,$0461+x
11a6: c4 50     mov   $50,a
11a8: f5 21 05  mov   a,$0521+x
11ab: fd        mov   y,a
11ac: f5 20 05  mov   a,$0520+x
11af: 7a 4f     addw  ya,$4f
11b1: d5 20 05  mov   $0520+x,a
11b4: dd        mov   a,y
11b5: 75 21 05  cmp   a,$0521+x
11b8: d5 21 05  mov   $0521+x,a
11bb: f0 03     beq   $11c0
11bd: 09 93 da  or    ($da),($93)
11c0: f5 20 03  mov   a,$0320+x
11c3: 9c        dec   a
11c4: d0 15     bne   $11db
11c6: 58 ff 4f  eor   $4f,#$ff
11c9: 58 ff 50  eor   $50,#$ff
11cc: 3a 4f     incw  $4f
11ce: e4 4f     mov   a,$4f
11d0: d5 60 04  mov   $0460+x,a
11d3: e4 50     mov   a,$50
11d5: d5 61 04  mov   $0461+x,a
11d8: f5 e1 02  mov   a,$02e1+x
11db: d5 20 03  mov   $0320+x,a
11de: 6f        ret

11df: c8 10     cmp   x,#$10
11e1: b0 07     bcs   $11ea
11e3: e4 93     mov   a,$93
11e5: 24 8f     and   a,$8f
11e7: f0 01     beq   $11ea
11e9: 6f        ret

11ea: e7 27     mov   a,($27+x)
11ec: f0 11     beq   $11ff
11ee: bb 27     inc   $27+x
11f0: d0 02     bne   $11f4
11f2: bb 28     inc   $28+x
11f4: 75 81 03  cmp   a,$0381+x
11f7: f0 06     beq   $11ff
11f9: 09 93 da  or    ($da),($93)
11fc: d5 81 03  mov   $0381+x,a
11ff: f5 c1 02  mov   a,$02c1+x
1202: f0 05     beq   $1209
1204: f5 40 03  mov   a,$0340+x
1207: f0 03     beq   $120c
1209: 5f 88 12  jmp   $1288

120c: f5 20 04  mov   a,$0420+x
120f: c4 4f     mov   $4f,a
1211: f5 21 04  mov   a,$0421+x
1214: c4 50     mov   $50,a
1216: f5 e1 04  mov   a,$04e1+x
1219: fd        mov   y,a
121a: f5 e0 04  mov   a,$04e0+x
121d: 7a 4f     addw  ya,$4f
121f: d5 e0 04  mov   $04e0+x,a
1222: dd        mov   a,y
1223: 75 e1 04  cmp   a,$04e1+x
1226: d5 e1 04  mov   $04e1+x,a
1229: f0 37     beq   $1262
122b: 09 93 db  or    ($db),($93)
122e: dd        mov   a,y
122f: 0d        push  psw
1230: 10 03     bpl   $1235
1232: 48 ff     eor   a,#$ff
1234: bc        inc   a
1235: 1c        asl   a
1236: 2d        push  a
1237: fd        mov   y,a
1238: f5 61 05  mov   a,$0561+x
123b: cf        mul   ya
123c: da 51     movw  $51,ya
123e: ee        pop   y
123f: f5 60 05  mov   a,$0560+x
1242: cf        mul   ya
1243: dd        mov   a,y
1244: 8d 00     mov   y,#$00
1246: 7a 51     addw  ya,$51
1248: da 51     movw  $51,ya
124a: 8e        pop   psw
124b: 10 0e     bpl   $125b
124d: 4b 52     lsr   $52
124f: 6b 51     ror   $51
1251: 58 ff 51  eor   $51,#$ff
1254: 58 ff 52  eor   $52,#$ff
1257: 3a 51     incw  $51
1259: ba 51     movw  ya,$51
125b: d5 a0 05  mov   $05a0+x,a
125e: dd        mov   a,y
125f: d5 a1 05  mov   $05a1+x,a
1262: f5 00 03  mov   a,$0300+x
1265: 9c        dec   a
1266: d0 1d     bne   $1285
1268: 58 ff 4f  eor   $4f,#$ff
126b: 58 ff 50  eor   $50,#$ff
126e: 3a 4f     incw  $4f
1270: e4 4f     mov   a,$4f
1272: d5 20 04  mov   $0420+x,a
1275: e4 50     mov   a,$50
1277: d5 21 04  mov   $0421+x,a
127a: f5 c1 02  mov   a,$02c1+x
127d: 2d        push  a
127e: f5 a1 02  mov   a,$02a1+x
1281: ae        pop   a
1282: 10 01     bpl   $1285
1284: 1c        asl   a
1285: d5 00 03  mov   $0300+x,a
1288: f5 e0 02  mov   a,$02e0+x
128b: f0 4d     beq   $12da
128d: f5 41 03  mov   a,$0341+x
1290: d0 48     bne   $12da
1292: f5 40 04  mov   a,$0440+x
1295: c4 4f     mov   $4f,a
1297: f5 41 04  mov   a,$0441+x
129a: c4 50     mov   $50,a
129c: f5 01 05  mov   a,$0501+x
129f: fd        mov   y,a
12a0: f5 00 05  mov   a,$0500+x
12a3: 7a 4f     addw  ya,$4f
12a5: d5 00 05  mov   $0500+x,a
12a8: dd        mov   a,y
12a9: 75 01 05  cmp   a,$0501+x
12ac: d5 01 05  mov   $0501+x,a
12af: f0 03     beq   $12b4
12b1: 09 93 da  or    ($da),($93)
12b4: f5 01 03  mov   a,$0301+x
12b7: 9c        dec   a
12b8: d0 1d     bne   $12d7
12ba: 58 ff 4f  eor   $4f,#$ff
12bd: 58 ff 50  eor   $50,#$ff
12c0: 3a 4f     incw  $4f
12c2: e4 4f     mov   a,$4f
12c4: d5 40 04  mov   $0440+x,a
12c7: e4 50     mov   a,$50
12c9: d5 41 04  mov   $0441+x,a
12cc: f5 e0 02  mov   a,$02e0+x
12cf: 2d        push  a
12d0: f5 c0 02  mov   a,$02c0+x
12d3: ae        pop   a
12d4: 10 01     bpl   $12d7
12d6: 1c        asl   a
12d7: d5 01 03  mov   $0301+x,a
12da: 7d        mov   a,x
12db: 28 0f     and   a,#$0f
12dd: c4 95     mov   $95,a
12df: fd        mov   y,a
12e0: 9f        xcn   a
12e1: 5c        lsr   a
12e2: 08 09     or    a,#$09
12e4: c4 f2     mov   $f2,a
12e6: e4 f3     mov   a,$f3
12e8: d6 c0 06  mov   $06c0+y,a
12eb: ba da     movw  ya,$da
12ed: d0 03     bne   $12f2
12ef: 5f a0 13  jmp   $13a0

12f2: 7d        mov   a,x
12f3: 9f        xcn   a
12f4: 5c        lsr   a
12f5: c4 4f     mov   $4f,a
12f7: e4 93     mov   a,$93
12f9: 24 da     and   a,$da
12fb: f0 70     beq   $136d
12fd: f5 00 02  mov   a,$0200+x
1300: c4 c5     mov   $c5,a
1302: f5 01 02  mov   a,$0201+x
1305: c4 c6     mov   $c6,a
1307: fd        mov   y,a
1308: f5 01 05  mov   a,$0501+x
130b: f0 0d     beq   $131a
130d: 30 0a     bmi   $1319
130f: cf        mul   ya
1310: 60        clrc
1311: 7a c5     addw  ya,$c5
1313: 90 05     bcc   $131a
1315: 8d ff     mov   y,#$ff
1317: 2f 01     bra   $131a
1319: cf        mul   ya
131a: f5 81 03  mov   a,$0381+x
131d: cf        mul   ya
131e: c8 10     cmp   x,#$10
1320: b0 04     bcs   $1326
1322: e4 7f     mov   a,$7f
1324: 2f 02     bra   $1328
1326: e4 81     mov   a,$81
1328: cf        mul   ya
1329: cb c5     mov   $c5,y
132b: f5 41 02  mov   a,$0241+x
132e: 60        clrc
132f: 95 21 05  adc   a,$0521+x
1332: fd        mov   y,a
1333: 48 7f     eor   a,#$7f
1335: c4 c9     mov   $c9,a
1337: f8 4f     mov   x,$4f
1339: 13 92 06  bbc0  $92,$1342
133c: dd        mov   a,y
133d: 28 80     and   a,#$80
133f: 08 40     or    a,#$40
1341: fd        mov   y,a
1342: f6 03 1a  mov   a,$1a03+y
1345: eb c5     mov   y,$c5
1347: cf        mul   ya
1348: dd        mov   a,y
1349: f3 c9 02  bbc7  $c9,$134e
134c: 48 ff     eor   a,#$ff
134e: 2d        push  a
134f: e4 93     mov   a,$93
1351: 24 94     and   a,$94
1353: ae        pop   a
1354: f0 02     beq   $1358
1356: e8 00     mov   a,#$00
1358: d8 f2     mov   $f2,x
135a: c4 f3     mov   $f3,a
135c: dd        mov   a,y
135d: eb 95     mov   y,$95
135f: d6 d0 06  mov   $06d0+y,a
1362: ab 95     inc   $95
1364: eb c9     mov   y,$c9
1366: ab 4f     inc   $4f
1368: 33 4f cc  bbc1  $4f,$1337
136b: f8 06     mov   x,$06
136d: 22 4f     set1  $4f
136f: e4 93     mov   a,$93
1371: 24 db     and   a,$db
1373: f0 2b     beq   $13a0
1375: f5 c0 05  mov   a,$05c0+x
1378: c4 c7     mov   $c7,a
137a: f5 c1 05  mov   a,$05c1+x
137d: c4 c8     mov   $c8,a
137f: f5 81 05  mov   a,$0581+x
1382: fd        mov   y,a
1383: f5 80 05  mov   a,$0580+x
1386: 7a c7     addw  ya,$c7
1388: da c7     movw  $c7,ya
138a: f5 a1 05  mov   a,$05a1+x
138d: fd        mov   y,a
138e: f5 a0 05  mov   a,$05a0+x
1391: 7a c7     addw  ya,$c7
1393: f8 4f     mov   x,$4f
1395: d8 f2     mov   $f2,x
1397: c4 f3     mov   $f3,a
1399: 3d        inc   x
139a: d8 f2     mov   $f2,x
139c: cb f3     mov   $f3,y
139e: f8 06     mov   x,$06
13a0: 7d        mov   a,x
13a1: 28 0f     and   a,#$0f
13a3: 5d        mov   x,a
13a4: f5 c0 06  mov   a,$06c0+x
13a7: fd        mov   y,a
13a8: f5 d0 06  mov   a,$06d0+x
13ab: cf        mul   ya
13ac: dd        mov   a,y
13ad: 28 70     and   a,#$70
13af: 9f        xcn   a
13b0: c4 4f     mov   $4f,a
13b2: f5 c0 06  mov   a,$06c0+x
13b5: fd        mov   y,a
13b6: f5 d1 06  mov   a,$06d1+x
13b9: cf        mul   ya
13ba: dd        mov   a,y
13bb: 28 70     and   a,#$70
13bd: 04 4f     or    a,$4f
13bf: c8 08     cmp   x,#$08
13c1: 90 02     bcc   $13c5
13c3: 08 80     or    a,#$80
13c5: fd        mov   y,a
13c6: 7d        mov   a,x
13c7: 5c        lsr   a
13c8: 5d        mov   x,a
13c9: db 97     mov   $97+x,y
13cb: f8 06     mov   x,$06
13cd: 6f        ret

13ce: f8 f4     mov   x,$f4
13d0: f0 28     beq   $13fa
13d2: ba f6     movw  ya,$f6
13d4: da a1     movw  $a1,ya
13d6: ba f4     movw  ya,$f4
13d8: da 9f     movw  $9f,ya
13da: 5d        mov   x,a
13db: d8 f4     mov   $f4,x
13dd: 10 0a     bpl   $13e9
13df: 3e f4     cmp   x,$f4
13e1: f0 fc     beq   $13df
13e3: 8f 00 f4  mov   $f4,#$00
13e6: 5f a6 16  jmp   $16a6

13e9: 3e f4     cmp   x,$f4
13eb: f0 fc     beq   $13e9
13ed: c8 01     cmp   x,#$01
13ef: d0 09     bne   $13fa
13f1: dd        mov   a,y
13f2: 10 07     bpl   $13fb
13f4: 8f 00 f4  mov   $f4,#$00
13f7: 5f 26 15  jmp   $1526

13fa: 6f        ret

13fb: e4 8f     mov   a,$8f
13fd: 48 ff     eor   a,#$ff
13ff: c4 91     mov   $91,a
1401: 8d 5c     mov   y,#$5c
1403: 3f ed 0c  call  $0ced
1406: 4e 90 00  tclr1 $0090
1409: ba dc     movw  ya,$dc
140b: d0 07     bne   $1414
140d: e4 8f     mov   a,$8f
140f: f0 03     beq   $1414
1411: 3f 25 16  call  $1625
1414: e4 fd     mov   a,$fd
1416: e4 a1     mov   a,$a1
1418: 28 0f     and   a,#$0f
141a: 8d 11     mov   y,#$11
141c: cf        mul   ya
141d: c4 7f     mov   $7f,a
141f: e4 a1     mov   a,$a1
1421: 28 f0     and   a,#$f0
1423: c4 82     mov   $82,a
1425: e4 a2     mov   a,$a2
1427: 28 0f     and   a,#$0f
1429: c4 c5     mov   $c5,a
142b: 78 2b a0  cmp   $a0,#$2b
142e: d0 04     bne   $1434
1430: e8 7f     mov   a,#$7f
1432: 2f 02     bra   $1436
1434: e8 40     mov   a,#$40
1436: 8d 0c     mov   y,#$0c
1438: 3f ed 0c  call  $0ced
143b: 8d 1c     mov   y,#$1c
143d: 3f ed 0c  call  $0ced
1440: f8 f4     mov   x,$f4
1442: 3f 63 18  call  $1863
1445: e4 f5     mov   a,$f5
1447: c4 a0     mov   $a0,a
1449: d8 f4     mov   $f4,x
144b: ba 00     movw  ya,$00
144d: da 8e     movw  $8e,ya
144f: da cb     movw  $cb,ya
1451: da cd     movw  $cd,ya
1453: da cf     movw  $cf,ya
1455: da 90     movw  $90,ya
1457: da 89     movw  $89,ya
1459: c4 8d     mov   $8d,a
145b: 8f 01 d9  mov   $d9,#$01
145e: c4 d8     mov   $d8,a
1460: c4 7e     mov   $7e,a
1462: da d1     movw  $d1,ya
1464: c4 da     mov   $da,a
1466: c4 94     mov   $94,a
1468: da 4f     movw  $4f,ya
146a: da dc     movw  $dc,ya
146c: 8f 01 78  mov   $78,#$01
146f: 8f ff 79  mov   $79,#$ff
1472: da 97     movw  $97,ya
1474: da 99     movw  $99,ya
1476: e8 80     mov   a,#$80
1478: fd        mov   y,a
1479: da 9b     movw  $9b,ya
147b: da 9d     movw  $9d,ya
147d: e8 00     mov   a,#$00
147f: 8d 2c     mov   y,#$2c
1481: 3f ed 0c  call  $0ced
1484: 8d 3c     mov   y,#$3c
1486: 3f ed 0c  call  $0ced
1489: 8d 2d     mov   y,#$2d
148b: 3f ed 0c  call  $0ced
148e: 8d 3d     mov   y,#$3d
1490: 3f ed 0c  call  $0ced
1493: 8d 4d     mov   y,#$4d
1495: 3f ed 0c  call  $0ced
1498: 8d 6c     mov   y,#$6c
149a: cb f2     mov   $f2,y
149c: e4 f3     mov   a,$f3
149e: 28 c0     and   a,#$c0
14a0: c4 f3     mov   $f3,a
14a2: 63 a0 67  bbs3  $a0,$150c
14a5: cd 00     mov   x,#$00
14a7: 8d 00     mov   y,#$00
14a9: 8f 01 93  mov   $93,#$01
14ac: f5 01 20  mov   a,$2001+x
14af: f0 27     beq   $14d8
14b1: 09 93 8e  or    ($8e),($93)
14b4: d4 08     mov   $08+x,a
14b6: f5 00 20  mov   a,$2000+x
14b9: d4 07     mov   $07+x,a
14bb: 7d        mov   a,x
14bc: 1c        asl   a
14bd: 9c        dec   a
14be: d4 58     mov   $58+x,a
14c0: dd        mov   a,y
14c1: d5 a0 02  mov   $02a0+x,a
14c4: d5 c1 02  mov   $02c1+x,a
14c7: d5 e0 02  mov   $02e0+x,a
14ca: d5 21 05  mov   $0521+x,a
14cd: d5 e1 02  mov   $02e1+x,a
14d0: d5 a1 03  mov   $03a1+x,a
14d3: d4 a5     mov   $a5+x,a
14d5: bc        inc   a
14d6: d4 57     mov   $57+x,a
14d8: 3d        inc   x
14d9: 3d        inc   x
14da: 0b 93     asl   $93
14dc: d0 ce     bne   $14ac
14de: e4 82     mov   a,$82
14e0: f0 2a     beq   $150c
14e2: e4 c5     mov   a,$c5
14e4: 8d 11     mov   y,#$11
14e6: cf        mul   ya
14e7: 80        setc
14e8: a4 7f     sbc   a,$7f
14ea: 0d        push  psw
14eb: b0 03     bcs   $14f0
14ed: 48 ff     eor   a,#$ff
14ef: bc        inc   a
14f0: 8d 00     mov   y,#$00
14f2: f8 82     mov   x,$82
14f4: 9e        div   ya,x
14f5: c4 85     mov   $85,a
14f7: e8 00     mov   a,#$00
14f9: 9e        div   ya,x
14fa: c4 84     mov   $84,a
14fc: dd        mov   a,y
14fd: 10 02     bpl   $1501
14ff: 3a 84     incw  $84
1501: 8e        pop   psw
1502: b0 08     bcs   $150c
1504: 58 ff 84  eor   $84,#$ff
1507: 58 ff 85  eor   $85,#$ff
150a: 3a 84     incw  $84
150c: e4 fd     mov   a,$fd
150e: 68 02     cmp   a,#$02
1510: b0 07     bcs   $1519
1512: eb fd     mov   y,$fd
1514: f0 fc     beq   $1512
1516: bc        inc   a
1517: 2f f5     bra   $150e
1519: e8 00     mov   a,#$00
151b: 8d 4c     mov   y,#$4c
151d: 3f ed 0c  call  $0ced
1520: 8d 5c     mov   y,#$5c
1522: 3f ed 0c  call  $0ced
1525: 6f        ret

1526: 28 7f     and   a,#$7f
1528: c4 a0     mov   $a0,a
152a: e4 a1     mov   a,$a1
152c: 28 0f     and   a,#$0f
152e: 8d 11     mov   y,#$11
1530: cf        mul   ya
1531: c4 81     mov   $81,a
1533: e4 a1     mov   a,$a1
1535: 28 f0     and   a,#$f0
1537: c4 83     mov   $83,a
1539: e4 a2     mov   a,$a2
153b: 28 f0     and   a,#$f0
153d: c4 c9     mov   $c9,a
153f: e4 a2     mov   a,$a2
1541: 28 0f     and   a,#$0f
1543: c4 c5     mov   $c5,a
1545: e8 80     mov   a,#$80
1547: cd 07     mov   x,#$07
1549: fa 8f 04  mov   ($04),($8f)
154c: 0b 04     asl   $04
154e: 90 02     bcc   $1552
1550: d4 97     mov   $97+x,a
1552: 1d        dec   x
1553: c8 04     cmp   x,#$04
1555: 10 f5     bpl   $154c
1557: e4 8f     mov   a,$8f
1559: 4e 90 00  tclr1 $0090
155c: 0e 91 00  tset1 $0091
155f: fa 8f 04  mov   ($04),($8f)
1562: cd 1e     mov   x,#$1e
1564: 8f 80 93  mov   $93,#$80
1567: 0b 04     asl   $04
1569: 90 16     bcc   $1581
156b: d8 06     mov   $06,x
156d: 7d        mov   a,x
156e: 28 0f     and   a,#$0f
1570: 5d        mov   x,a
1571: fb a6     mov   y,$a6+x
1573: f8 06     mov   x,$06
1575: 3f bc 0f  call  $0fbc
1578: 3f 63 0f  call  $0f63
157b: 3f 9b 0f  call  $0f9b
157e: 3f 49 0f  call  $0f49
1581: 1d        dec   x
1582: 1d        dec   x
1583: 4b 93     lsr   $93
1585: 73 93 df  bbc3  $93,$1567
1588: 12 ce     clr0  $ce
158a: 8d 6c     mov   y,#$6c
158c: cb f2     mov   $f2,y
158e: e4 f3     mov   a,$f3
1590: 28 e0     and   a,#$e0
1592: 04 d7     or    a,$d7
1594: c4 f3     mov   $f3,a
1596: e8 00     mov   a,#$00
1598: c4 80     mov   $80,a
159a: c4 d2     mov   $d2,a
159c: 8f ff 7a  mov   $7a,#$ff
159f: e8 e9     mov   a,#$e9
15a1: c4 48     mov   $48,a
15a3: e8 00     mov   a,#$00
15a5: c4 47     mov   $47,a
15a7: e4 a0     mov   a,$a0
15a9: 8d 08     mov   y,#$08
15ab: cf        mul   ya
15ac: 7a 47     addw  ya,$47
15ae: da 47     movw  $47,ya
15b0: cd 1f     mov   x,#$1f
15b2: 8d 07     mov   y,#$07
15b4: 8f 80 93  mov   $93,#$80
15b7: 8f 00 8f  mov   $8f,#$00
15ba: f7 47     mov   a,($47)+y
15bc: f0 34     beq   $15f2
15be: d4 07     mov   $07+x,a
15c0: 1d        dec   x
15c1: dc        dec   y
15c2: f7 47     mov   a,($47)+y
15c4: d4 07     mov   $07+x,a
15c6: 09 93 8f  or    ($8f),($93)
15c9: 7d        mov   a,x
15ca: 1c        asl   a
15cb: 9c        dec   a
15cc: d4 58     mov   $58+x,a
15ce: e8 02     mov   a,#$02
15d0: d4 57     mov   $57+x,a
15d2: e4 c9     mov   a,$c9
15d4: d5 41 02  mov   $0241+x,a
15d7: e8 00     mov   a,#$00
15d9: d5 a0 02  mov   $02a0+x,a
15dc: d5 c1 02  mov   $02c1+x,a
15df: d5 e0 02  mov   $02e0+x,a
15e2: d5 21 05  mov   $0521+x,a
15e5: d5 e1 02  mov   $02e1+x,a
15e8: d5 a1 03  mov   $03a1+x,a
15eb: d4 a5     mov   $a5+x,a
15ed: 1d        dec   x
15ee: 4b 93     lsr   $93
15f0: 2f 01     bra   $15f3
15f2: dc        dec   y
15f3: dc        dec   y
15f4: 10 c4     bpl   $15ba
15f6: e4 83     mov   a,$83
15f8: f0 2a     beq   $1624
15fa: e4 c5     mov   a,$c5
15fc: 8d 11     mov   y,#$11
15fe: cf        mul   ya
15ff: 80        setc
1600: a4 81     sbc   a,$81
1602: 0d        push  psw
1603: b0 03     bcs   $1608
1605: 48 ff     eor   a,#$ff
1607: bc        inc   a
1608: 8d 00     mov   y,#$00
160a: f8 83     mov   x,$83
160c: 9e        div   ya,x
160d: c4 87     mov   $87,a
160f: e8 00     mov   a,#$00
1611: 9e        div   ya,x
1612: c4 86     mov   $86,a
1614: dd        mov   a,y
1615: 10 02     bpl   $1619
1617: 3a 86     incw  $86
1619: 8e        pop   psw
161a: b0 08     bcs   $1624
161c: 58 ff 86  eor   $86,#$ff
161f: 58 ff 87  eor   $87,#$ff
1622: 3a 86     incw  $86
1624: 6f        ret

1625: e4 cc     mov   a,$cc
1627: 8d 4d     mov   y,#$4d
1629: 3f ed 0c  call  $0ced
162c: e4 ce     mov   a,$ce
162e: 28 f0     and   a,#$f0
1630: 8d 3d     mov   y,#$3d
1632: 3f ed 0c  call  $0ced
1635: e4 d0     mov   a,$d0
1637: 8d 2d     mov   y,#$2d
1639: 3f ed 0c  call  $0ced
163c: e4 91     mov   a,$91
163e: 8d 5c     mov   y,#$5c
1640: 3f ed 0c  call  $0ced
1643: e4 90     mov   a,$90
1645: 8d 4c     mov   y,#$4c
1647: 3f ed 0c  call  $0ced
164a: e8 00     mov   a,#$00
164c: c4 91     mov   $91,a
164e: c4 90     mov   $90,a
1650: eb fd     mov   y,$fd
1652: f0 fc     beq   $1650
1654: 8b a4     dec   $a4
1656: d0 27     bne   $167f
1658: 8f 03 a4  mov   $a4,#$03
165b: e4 83     mov   a,$83
165d: f0 20     beq   $167f
165f: 8b 83     dec   $83
1661: ba 80     movw  ya,$80
1663: 60        clrc
1664: 7a 86     addw  ya,$86
1666: e3 87 06  bbs7  $87,$166f
1669: 90 0b     bcc   $1676
166b: 8d ff     mov   y,#$ff
166d: 2f 04     bra   $1673
166f: b0 05     bcs   $1676
1671: 8d 00     mov   y,#$00
1673: 8f 00 83  mov   $83,#$00
1676: 7e 81     cmp   y,$81
1678: f0 03     beq   $167d
167a: 09 8f da  or    ($da),($8f)
167d: da 80     movw  $80,ya
167f: 3f f4 09  call  $09f4
1682: e4 8f     mov   a,$8f
1684: d0 01     bne   $1687
1686: 6f        ret

1687: cd 1e     mov   x,#$1e
1689: 8f 80 93  mov   $93,#$80
168c: fa 8f 04  mov   ($04),($8f)
168f: 0b 04     asl   $04
1691: 90 05     bcc   $1698
1693: d8 06     mov   $06,x
1695: 3f df 11  call  $11df
1698: 1d        dec   x
1699: 1d        dec   x
169a: 4b 93     lsr   $93
169c: 73 93 f0  bbc3  $93,$168f
169f: ba 00     movw  ya,$00
16a1: da da     movw  $da,ya
16a3: 5f 25 16  jmp   $1625

16a6: c8 83     cmp   x,#$83
16a8: b0 05     bcs   $16af
16aa: d8 05     mov   $05,x
16ac: 5f f1 16  jmp   $16f1

16af: d0 03     bne   $16b4
16b1: 5f 64 17  jmp   $1764

16b4: c8 86     cmp   x,#$86
16b6: b0 03     bcs   $16bb
16b8: 5f c9 17  jmp   $17c9

16bb: c8 f0     cmp   x,#$f0
16bd: 90 31     bcc   $16f0
16bf: c8 f3     cmp   x,#$f3
16c1: b0 03     bcs   $16c6
16c3: 5f d6 17  jmp   $17d6

16c6: d0 03     bne   $16cb
16c8: 5f 52 18  jmp   $1852

16cb: c8 f6     cmp   x,#$f6
16cd: b0 03     bcs   $16d2
16cf: 5f 62 18  jmp   $1862

16d2: d0 03     bne   $16d7
16d4: 5f 59 18  jmp   $1859

16d7: c8 fc     cmp   x,#$fc
16d9: 90 15     bcc   $16f0
16db: c8 fe     cmp   x,#$fe
16dd: b0 03     bcs   $16e2
16df: 5f 1e 19  jmp   $191e

16e2: d0 05     bne   $16e9
16e4: f8 f4     mov   x,$f4
16e6: 5f 63 18  jmp   $1863

16e9: c8 ff     cmp   x,#$ff
16eb: d0 03     bne   $16f0
16ed: 5f 1f 19  jmp   $191f

16f0: 6f        ret

16f1: 23 9f 3a  bbs1  $9f,$172e
16f4: e4 a0     mov   a,$a0
16f6: 28 0f     and   a,#$0f
16f8: 8d 11     mov   y,#$11
16fa: cf        mul   ya
16fb: fd        mov   y,a
16fc: e4 a0     mov   a,$a0
16fe: 28 f0     and   a,#$f0
1700: 5d        mov   x,a
1701: d0 07     bne   $170a
1703: cb 7f     mov   $7f,y
1705: 09 8e da  or    ($da),($8e)
1708: 2f 1f     bra   $1729
170a: dd        mov   a,y
170b: 80        setc
170c: a4 7f     sbc   a,$7f
170e: 0d        push  psw
170f: b0 03     bcs   $1714
1711: 48 ff     eor   a,#$ff
1713: bc        inc   a
1714: 8d 00     mov   y,#$00
1716: 9e        div   ya,x
1717: c4 85     mov   $85,a
1719: e8 00     mov   a,#$00
171b: 9e        div   ya,x
171c: c4 84     mov   $84,a
171e: 8e        pop   psw
171f: b0 08     bcs   $1729
1721: 58 ff 84  eor   $84,#$ff
1724: 58 ff 85  eor   $85,#$ff
1727: 3a 84     incw  $84
1729: d8 82     mov   $82,x
172b: 03 9f 35  bbs0  $9f,$1763
172e: e4 a0     mov   a,$a0
1730: 28 0f     and   a,#$0f
1732: 8d 11     mov   y,#$11
1734: cf        mul   ya
1735: 38 f0 a0  and   $a0,#$f0
1738: f8 a0     mov   x,$a0
173a: d0 07     bne   $1743
173c: c4 81     mov   $81,a
173e: 09 8f da  or    ($da),($8f)
1741: 2f 1e     bra   $1761
1743: 80        setc
1744: a4 81     sbc   a,$81
1746: 0d        push  psw
1747: b0 03     bcs   $174c
1749: 48 ff     eor   a,#$ff
174b: bc        inc   a
174c: 8d 00     mov   y,#$00
174e: 9e        div   ya,x
174f: c4 87     mov   $87,a
1751: e8 00     mov   a,#$00
1753: 9e        div   ya,x
1754: c4 86     mov   $86,a
1756: 8e        pop   psw
1757: b0 08     bcs   $1761
1759: 58 ff 86  eor   $86,#$ff
175c: 58 ff 87  eor   $87,#$ff
175f: 3a 86     incw  $86
1761: d8 83     mov   $83,x
1763: 6f        ret

1764: e4 a0     mov   a,$a0
1766: 28 0f     and   a,#$0f
1768: 9f        xcn   a
1769: 1c        asl   a
176a: 90 02     bcc   $176e
176c: e8 00     mov   a,#$00
176e: 38 f0 a0  and   $a0,#$f0
1771: f8 a0     mov   x,$a0
1773: d0 0e     bne   $1783
1775: c5 5f 02  mov   $025f,a
1778: c5 5d 02  mov   $025d,a
177b: c5 5b 02  mov   $025b,a
177e: c5 59 02  mov   $0259,a
1781: 2f 39     bra   $17bc
1783: 80        setc
1784: a5 5f 02  sbc   a,$025f
1787: 0d        push  psw
1788: b0 03     bcs   $178d
178a: 48 ff     eor   a,#$ff
178c: bc        inc   a
178d: 8d 00     mov   y,#$00
178f: 9e        div   ya,x
1790: c4 50     mov   $50,a
1792: e8 00     mov   a,#$00
1794: 9e        div   ya,x
1795: c4 4f     mov   $4f,a
1797: 8e        pop   psw
1798: b0 08     bcs   $17a2
179a: 58 ff 4f  eor   $4f,#$ff
179d: 58 ff 50  eor   $50,#$ff
17a0: 3a 4f     incw  $4f
17a2: ba 4f     movw  ya,$4f
17a4: c5 78 02  mov   $0278,a
17a7: c5 7a 02  mov   $027a,a
17aa: c5 7c 02  mov   $027c,a
17ad: c5 7e 02  mov   $027e,a
17b0: cc 79 02  mov   $0279,y
17b3: cc 7b 02  mov   $027b,y
17b6: cc 7d 02  mov   $027d,y
17b9: cc 7f 02  mov   $027f,y
17bc: c9 99 02  mov   $0299,x
17bf: c9 9b 02  mov   $029b,x
17c2: c9 9d 02  mov   $029d,x
17c5: c9 9f 02  mov   $029f,x
17c8: 6f        ret

17c9: 03 9f 04  bbs0  $9f,$17d0
17cc: 12 92     clr0  $92
17ce: 2f 02     bra   $17d2
17d0: 02 92     set0  $92
17d2: 8f ff da  mov   $da,#$ff
17d5: 6f        ret

17d6: 8f 00 04  mov   $04,#$00
17d9: 23 9f 16  bbs1  $9f,$17f2
17dc: e4 8f     mov   a,$8f
17de: 4e 8e 00  tclr1 $008e
17e1: e4 8e     mov   a,$8e
17e3: 09 8e 91  or    ($91),($8e)
17e6: 09 8e 04  or    ($04),($8e)
17e9: 4e 90 00  tclr1 $0090
17ec: 8f 00 8e  mov   $8e,#$00
17ef: 03 9f 44  bbs0  $9f,$1836
17f2: 09 8f 91  or    ($91),($8f)
17f5: e4 8f     mov   a,$8f
17f7: 4e 90 00  tclr1 $0090
17fa: c4 95     mov   $95,a
17fc: cd 1e     mov   x,#$1e
17fe: 8f 80 93  mov   $93,#$80
1801: 0b 95     asl   $95
1803: 90 16     bcc   $181b
1805: d8 06     mov   $06,x
1807: 7d        mov   a,x
1808: 28 0f     and   a,#$0f
180a: 5d        mov   x,a
180b: fb a6     mov   y,$a6+x
180d: f8 06     mov   x,$06
180f: 3f bc 0f  call  $0fbc
1812: 3f 63 0f  call  $0f63
1815: 3f 9b 0f  call  $0f9b
1818: 3f 49 0f  call  $0f49
181b: 1d        dec   x
181c: 1d        dec   x
181d: 4b 93     lsr   $93
181f: 73 93 df  bbc3  $93,$1801
1822: 12 ce     clr0  $ce
1824: 8d 6c     mov   y,#$6c
1826: cb f2     mov   $f2,y
1828: e4 f3     mov   a,$f3
182a: 28 e0     and   a,#$e0
182c: 04 d7     or    a,$d7
182e: c4 f3     mov   $f3,a
1830: 09 8f 04  or    ($04),($8f)
1833: 8f 00 8f  mov   $8f,#$00
1836: e8 00     mov   a,#$00
1838: 5d        mov   x,a
1839: 4b 04     lsr   $04
183b: 90 02     bcc   $183f
183d: d4 97     mov   $97+x,a
183f: 3d        inc   x
1840: c8 04     cmp   x,#$04
1842: d0 f5     bne   $1839
1844: e8 80     mov   a,#$80
1846: 4b 04     lsr   $04
1848: 90 02     bcc   $184c
184a: d4 97     mov   $97+x,a
184c: 3d        inc   x
184d: c8 08     cmp   x,#$08
184f: d0 f5     bne   $1846
1851: 6f        ret

1852: fa a0 94  mov   ($94),($a0)
1855: 8f ff da  mov   $da,#$ff
1858: 6f        ret

1859: 80        setc
185a: 0b d8     asl   $d8
185c: 90 03     bcc   $1861
185e: 8f 01 d8  mov   $d8,#$01
1861: 6f        ret

1862: 6f        ret

1863: e4 f5     mov   a,$f5
1865: 28 07     and   a,#$07
1867: f0 19     beq   $1882
1869: 1c        asl   a
186a: 2d        push  a
186b: ba f6     movw  ya,$f6
186d: da 47     movw  $47,ya
186f: ee        pop   y
1870: f6 21 19  mov   a,$1921+y
1873: 2d        push  a
1874: f6 20 19  mov   a,$1920+y
1877: 2d        push  a
1878: 8d 00     mov   y,#$00
187a: d8 f4     mov   $f4,x
187c: 3e f4     cmp   x,$f4
187e: f0 fc     beq   $187c
1880: f8 f4     mov   x,$f4
1882: 6f        ret

1883: e4 f5     mov   a,$f5
1885: d7 47     mov   ($47)+y,a
1887: 3a 47     incw  $47
1889: e4 f6     mov   a,$f6
188b: d7 47     mov   ($47)+y,a
188d: 3a 47     incw  $47
188f: e4 f7     mov   a,$f7
1891: d7 47     mov   ($47)+y,a
1893: 3a 47     incw  $47
1895: d8 f4     mov   $f4,x
1897: 3e f4     cmp   x,$f4
1899: f0 fc     beq   $1897
189b: f8 f4     mov   x,$f4
189d: d0 e4     bne   $1883
189f: 2f c2     bra   $1863
18a1: e4 f6     mov   a,$f6
18a3: d7 47     mov   ($47)+y,a
18a5: 3a 47     incw  $47
18a7: e4 f7     mov   a,$f7
18a9: d7 47     mov   ($47)+y,a
18ab: 3a 47     incw  $47
18ad: d8 f4     mov   $f4,x
18af: 3e f4     cmp   x,$f4
18b1: f0 fc     beq   $18af
18b3: f8 f4     mov   x,$f4
18b5: d0 ea     bne   $18a1
18b7: 2f aa     bra   $1863
18b9: e4 f7     mov   a,$f7
18bb: d7 47     mov   ($47)+y,a
18bd: 3a 47     incw  $47
18bf: d8 f4     mov   $f4,x
18c1: 3e f4     cmp   x,$f4
18c3: f0 fc     beq   $18c1
18c5: f8 f4     mov   x,$f4
18c7: d0 f0     bne   $18b9
18c9: 2f 98     bra   $1863
18cb: d8 f4     mov   $f4,x
18cd: 3e f4     cmp   x,$f4
18cf: f0 fc     beq   $18cd
18d1: f8 f4     mov   x,$f4
18d3: d0 f6     bne   $18cb
18d5: 5f 63 18  jmp   $1863

18d8: ba f6     movw  ya,$f6
18da: da 49     movw  $49,ya
18dc: d8 f4     mov   $f4,x
18de: 3e f4     cmp   x,$f4
18e0: f0 fc     beq   $18de
18e2: f8 f4     mov   x,$f4
18e4: ba f6     movw  ya,$f6
18e6: da 4f     movw  $4f,ya
18e8: d8 f4     mov   $f4,x
18ea: dd        mov   a,y
18eb: f0 10     beq   $18fd
18ed: 8d 00     mov   y,#$00
18ef: f7 47     mov   a,($47)+y
18f1: d7 49     mov   ($49)+y,a
18f3: 3a 47     incw  $47
18f5: 3a 49     incw  $49
18f7: 1a 4f     decw  $4f
18f9: d0 f4     bne   $18ef
18fb: 2f 08     bra   $1905
18fd: f7 47     mov   a,($47)+y
18ff: d7 49     mov   ($49)+y,a
1901: fc        inc   y
1902: 6e 4f f8  dbnz  $4f,$18fd
1905: 3e f4     cmp   x,$f4
1907: f0 fc     beq   $1905
1909: f8 f4     mov   x,$f4
190b: f0 0e     beq   $191b
190d: ba f6     movw  ya,$f6
190f: da 47     movw  $47,ya
1911: d8 f4     mov   $f4,x
1913: 3e f4     cmp   x,$f4
1915: f0 fc     beq   $1913
1917: f8 f4     mov   x,$f4
1919: 2f bd     bra   $18d8
191b: 5f 63 18  jmp   $1863

191e: 6f        ret

191f: 6f        ret

1920: dw $18cb  ; 
1922: dw $18b9  ; 
1924: dw $18a1  ; 
1926: dw $1883  ; 
1928: dw $18cb  ; 
192a: dw $18cb  ; 
192c: dw $18cb  ; 
192e: dw $18d8  ; 

; vcmd dispatch table
1930: dw $0cf2  ; d2 - tempo
1932: dw $0cff  ; d3 - tempo fade
1934: dw $0d3a  ; d4 - volume
1936: dw $0d46  ; d5 - volume fade
1938: dw $0dcf  ; d6 - panpot
193a: dw $0ddb  ; d7 - panpot fade
193c: dw $0d87  ; d8 - echo volume
193e: dw $0d94  ; d9 - echo volume fade
1940: dw $0e41  ; da - transpose (absolute)
1942: dw $0e1c  ; db - pitch envelope on
1944: dw $0e3d  ; dc - pitch envelope off
1946: dw $0e6c  ; dd - vibrato on
1948: dw $0ea9  ; de - vibrato off
194a: dw $0ead  ; df - tremolo on
194c: dw $0eea  ; e0 - tremolo off
194e: dw $0f71  ; e1 - noise frequency
1950: dw $0f57  ; e2 - noise on
1952: dw $0f63  ; e3 - noise off
1954: dw $0f8f  ; e4 - pitch modulation on
1956: dw $0f9b  ; e5 - pitch modulation off
1958: dw $0e44  ; e6 - echo feedback, FIR
195a: dw $0f35  ; e7 - echo on
195c: dw $0f49  ; e8 - echo off
195e: dw $0eee  ; e9 - panpot LFO on
1960: dw $0f1e  ; ea - panpot LFO off
1962: dw $0f31  ; eb - set octave
1964: dw $0f27  ; ec - increase octave
1966: dw $0f2d  ; ed - decrease octave
1968: dw $1042  ; ee - repeat start
196a: dw $106b  ; ef - repeat end
196c: dw $101c  ; f0 - conditional jump in repeat
196e: dw $100f  ; f1 - goto
1970: dw $0feb  ; f2 - slur on
1972: dw $0fa9  ; f3 - set instrument
1974: dw $0fdc  ; f4 - set envelope
1976: dw $1000  ; f5 - slur off
1978: dw $1091  ; f6
197a: dw $10ad  ; f7 - tuning
197c: dw $10b1  ; f8 - end of track
197e: dw $10b1  ; f9 - end of track (duplicated)
1980: dw $10b1  ; fa - end of track (duplicated)
1982: dw $10b1  ; fb - end of track (duplicated)
1984: dw $10b1  ; fc - end of track (duplicated)
1986: dw $10b1  ; fd - end of track (duplicated)
1988: dw $10b1  ; fe - end of track (duplicated)
198a: dw $10b1  ; ff - end of track (duplicated)

; vcmd length table
198c: db         $01,$02,$01,$02,$01,$02,$01,$02,$01,$03,$00,$03,$00,$03
199a: db $00,$01,$00,$00,$00,$00,$02,$00,$00,$02,$00,$01,$00,$00,$01,$00
19aa: db $03,$02,$00,$01,$01,$00,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00

; pitch table
19ba: dw $0879  ; c
19bc: dw $08fa  ; c#
19be: dw $0983  ; d
19c0: dw $0a14  ; d#
19c2: dw $0aad  ; e
19c4: dw $0b50  ; f
19c6: dw $0bfc  ; f#
19c8: dw $0cb2  ; g
19ca: dw $0d74  ; g#
19cc: dw $0e41  ; a
19ce: dw $0f1a  ; a#
19d0: dw $1000  ; b
19d2: dw $10f3  ; c'

; echo FIR filter coeff tables
19d4: db $7f,$00,$00,$00,$00,$00,$00,$00
19dc: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
19e4: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
19ec: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; duration table
19f4: db $c0,$90,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03

1a03: db $7f,$7f,$7f,$7f,$7f,$7f,$7f,$7f,$7f,$7f,$7e,$7e,$7e,$7e,$7d,$7d
1a13: db $7d,$7c,$7c,$7c,$7b,$7b,$7b,$7a,$7a,$79,$79,$78,$78,$77,$77,$76
1a23: db $76,$75,$74,$74,$73,$73,$72,$71,$71,$70,$6f,$6f,$6e,$6d,$6c,$6c
1a33: db $6b,$6a,$6a,$69,$68,$67,$67,$66,$65,$64,$63,$63,$62,$61,$60,$60
1a43: db $5f,$5f,$5f,$5f,$5f,$5e,$5e,$5e,$5d,$5d,$5c,$5b,$5b,$5a,$59,$58
1a53: db $57,$56,$55,$54,$53,$52,$51,$4f,$57,$4d,$4b,$4a,$48,$47,$45,$43
1a63: db $42,$40,$3e,$3c,$3b,$39,$37,$35,$33,$31,$2f,$2d,$2b,$29,$26,$24
1a73: db $22,$20,$1e,$1b,$19,$17,$15,$12,$10,$0e,$0b,$09,$07,$04,$02,$00
1a83: db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$02,$02
1a93: db $02,$03,$03,$03,$04,$04,$04,$05,$05,$06,$06,$07,$07,$08,$08,$09
1aa3: db $09,$0a,$0b,$0b,$0c,$0c,$0d,$0e,$0e,$0f,$10,$10,$11,$12,$13,$13
1ab3: db $14,$15,$15,$16,$17,$18,$18,$19,$1a,$1b,$1c,$1c,$1d,$1e,$1f,$20
1ac3: db $20,$20,$20,$20,$20,$21,$21,$21,$22,$22,$23,$24,$24,$25,$26,$27
1ad3: db $28,$29,$2a,$2b,$2c,$2d,$2e,$30,$31,$32,$34,$35,$37,$38,$3a,$3b
1ae3: db $3d,$3f,$40,$42,$44,$46,$48,$4a,$4c,$4e,$50,$52,$54,$56,$58,$5a
1af3: db $5c,$5e,$61,$63,$65,$67,$6a,$6c,$6e,$71,$73,$75,$78,$7a,$7c,$7f
