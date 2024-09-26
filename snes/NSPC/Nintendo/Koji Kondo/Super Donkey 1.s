0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 e0     cmp   x,#$e0
080a: d0 fb     bne   $0807
080c: cd 00     mov   x,#$00
080e: d5 00 02  mov   $0200+x,a
0811: 3d        inc   x
0812: d0 fa     bne   $080e
0814: d5 00 03  mov   $0300+x,a
0817: 3d        inc   x
0818: d0 fa     bne   $0814
081a: bc        inc   a
081b: 3f c9 1d  call  $1dc9
081e: a2 48     set5  $48
0820: e8 60     mov   a,#$60
0822: 8d 0c     mov   y,#$0c
0824: 3f f9 09  call  $09f9
0827: 8d 1c     mov   y,#$1c
0829: 3f f9 09  call  $09f9
082c: e8 3c     mov   a,#$3c
082e: 8d 5d     mov   y,#$5d
0830: 3f f9 09  call  $09f9
0833: e8 f0     mov   a,#$f0
0835: c5 f1 00  mov   $00f1,a
0838: e8 10     mov   a,#$10
083a: c5 fa 00  mov   $00fa,a
083d: c4 53     mov   $53,a
083f: e8 01     mov   a,#$01
0841: c5 f1 00  mov   $00f1,a
0844: 8d 0a     mov   y,#$0a
0846: ad 05     cmp   y,#$05
0848: f0 07     beq   $0851
084a: b0 08     bcs   $0854
084c: 69 4d 4c  cmp   ($4c),($4d)
084f: d0 11     bne   $0862
0851: e3 4c 0e  bbs7  $4c,$0862
0854: f6 40 21  mov   a,$2140+y
0857: c5 f2 00  mov   $00f2,a
085a: f6 4a 21  mov   a,$214a+y
085d: 5d        mov   x,a
085e: e6        mov   a,(x)
085f: c5 f3 00  mov   $00f3,a
0862: fe e2     dbnz  y,$0846
0864: cb 45     mov   $45,y
0866: cb 46     mov   $46,y
0868: e4 18     mov   a,$18
086a: 44 19     eor   a,$19
086c: 5c        lsr   a
086d: 5c        lsr   a
086e: ed        notc
086f: 6b 18     ror   $18
0871: 6b 19     ror   $19
0873: ec fd 00  mov   y,$00fd
0876: f0 fb     beq   $0873
0878: 6d        push  y
0879: e8 38     mov   a,#$38
087b: cf        mul   ya
087c: 60        clrc
087d: 84 43     adc   a,$43
087f: c4 43     mov   $43,a
0881: 90 31     bcc   $08b4
0883: 3f 7b 0b  call  $0b7b
0886: 3f e8 0a  call  $0ae8
0889: cd 01     mov   x,#$01
088b: 3f e3 08  call  $08e3
088e: 3f db 0b  call  $0bdb
0891: 3f ed 0a  call  $0aed
0894: cd 02     mov   x,#$02
0896: 3f e3 08  call  $08e3
0899: 3f 39 0c  call  $0c39
089c: 3f f2 0a  call  $0af2
089f: cd 03     mov   x,#$03
08a1: 3f e3 08  call  $08e3
08a4: 69 4d 4c  cmp   ($4c),($4d)
08a7: f0 0b     beq   $08b4
08a9: ac c7 03  inc   $03c7
08ac: e5 c7 03  mov   a,$03c7
08af: 5c        lsr   a
08b0: b0 02     bcs   $08b4
08b2: ab 4c     inc   $4c
08b4: e4 53     mov   a,$53
08b6: ee        pop   y
08b7: cf        mul   ya
08b8: 60        clrc
08b9: 84 51     adc   a,$51
08bb: c4 51     mov   $51,a
08bd: 90 0b     bcc   $08ca
08bf: 3f 8e 1a  call  $1a8e
08c2: cd 00     mov   x,#$00
08c4: 3f e3 08  call  $08e3
08c7: 5f 44 08  jmp   $0844
08ca: e4 0d     mov   a,$0d
08cc: f0 12     beq   $08e0
08ce: cd 00     mov   x,#$00
08d0: 8f 01 47  mov   $47,#$01
08d3: f4 31     mov   a,$31+x
08d5: f0 03     beq   $08da
08d7: 3f 69 20  call  $2069
08da: 3d        inc   x
08db: 3d        inc   x
08dc: 0b 47     asl   $47
08de: d0 f3     bne   $08d3
08e0: 5f 44 08  jmp   $0844
08e3: f4 04     mov   a,$04+x
08e5: d5 f4 00  mov   $00f4+x,a
08e8: f5 f4 00  mov   a,$00f4+x
08eb: 75 f4 00  cmp   a,$00f4+x
08ee: d0 f8     bne   $08e8
08f0: fd        mov   y,a
08f1: d0 02     bne   $08f5
08f3: db 04     mov   $04+x,y
08f5: f4 08     mov   a,$08+x
08f7: db 08     mov   $08+x,y
08f9: de 08 05  cbne  $08+x,$0901
08fc: 8d 00     mov   y,#$00
08fe: db 00     mov   $00+x,y
0900: 6f        ret

0901: db 00     mov   $00+x,y
0903: 6f        ret

0904: ad ca     cmp   y,#$ca
0906: 90 05     bcc   $090d
0908: 3f 12 1c  call  $1c12
090b: 8d a4     mov   y,#$a4
090d: ad c8     cmp   y,#$c8
090f: b0 f2     bcs   $0903
0911: e4 1a     mov   a,$1a
0913: 24 47     and   a,$47
0915: d0 ec     bne   $0903
0917: dd        mov   a,y
0918: 28 7f     and   a,#$7f
091a: 60        clrc
091b: 84 50     adc   a,$50
091d: 60        clrc
091e: 95 f0 02  adc   a,$02f0+x
0921: d5 61 03  mov   $0361+x,a
0924: f5 81 03  mov   a,$0381+x
0927: d5 60 03  mov   $0360+x,a
092a: f5 b1 02  mov   a,$02b1+x
092d: 5c        lsr   a
092e: e8 00     mov   a,#$00
0930: 7c        ror   a
0931: d5 a0 02  mov   $02a0+x,a
0934: e8 00     mov   a,#$00
0936: d4 b0     mov   $b0+x,a
0938: d5 00 01  mov   $0100+x,a
093b: d5 d0 02  mov   $02d0+x,a
093e: d4 c0     mov   $c0+x,a
0940: 09 47 5e  or    ($5e),($47)
0943: 09 47 45  or    ($45),($47)
0946: f5 80 02  mov   a,$0280+x
0949: d4 a0     mov   $a0+x,a
094b: f0 1e     beq   $096b
094d: f5 81 02  mov   a,$0281+x
0950: d4 a1     mov   $a1+x,a
0952: f5 90 02  mov   a,$0290+x
0955: d0 0a     bne   $0961
0957: f5 61 03  mov   a,$0361+x
095a: 80        setc
095b: b5 91 02  sbc   a,$0291+x
095e: d5 61 03  mov   $0361+x,a
0961: f5 91 02  mov   a,$0291+x
0964: 60        clrc
0965: 95 61 03  adc   a,$0361+x
0968: 3f 41 1e  call  $1e41
096b: 3f 59 1e  call  $1e59
096e: 8d 00     mov   y,#$00
0970: e4 11     mov   a,$11
0972: 80        setc
0973: a8 34     sbc   a,#$34
0975: b0 09     bcs   $0980
0977: e4 11     mov   a,$11
0979: 80        setc
097a: a8 13     sbc   a,#$13
097c: b0 06     bcs   $0984
097e: dc        dec   y
097f: 1c        asl   a
0980: 7a 10     addw  ya,$10
0982: da 10     movw  $10,ya
0984: 4d        push  x
0985: e4 11     mov   a,$11
0987: 1c        asl   a
0988: 8d 00     mov   y,#$00
098a: cd 18     mov   x,#$18
098c: 9e        div   ya,x
098d: 5d        mov   x,a
098e: f6 56 21  mov   a,$2156+y
0991: c4 15     mov   $15,a
0993: f6 55 21  mov   a,$2155+y
0996: c4 14     mov   $14,a
0998: f6 58 21  mov   a,$2158+y
099b: 2d        push  a
099c: f6 57 21  mov   a,$2157+y
099f: ee        pop   y
09a0: 9a 14     subw  ya,$14
09a2: eb 10     mov   y,$10
09a4: cf        mul   ya
09a5: dd        mov   a,y
09a6: 8d 00     mov   y,#$00
09a8: 7a 14     addw  ya,$14
09aa: cb 15     mov   $15,y
09ac: 1c        asl   a
09ad: 2b 15     rol   $15
09af: c4 14     mov   $14,a
09b1: 2f 04     bra   $09b7
09b3: 4b 15     lsr   $15
09b5: 7c        ror   a
09b6: 3d        inc   x
09b7: c8 06     cmp   x,#$06
09b9: d0 f8     bne   $09b3
09bb: c4 14     mov   $14,a
09bd: ce        pop   x
09be: f5 20 02  mov   a,$0220+x
09c1: eb 15     mov   y,$15
09c3: cf        mul   ya
09c4: da 16     movw  $16,ya
09c6: f5 20 02  mov   a,$0220+x
09c9: eb 14     mov   y,$14
09cb: cf        mul   ya
09cc: 6d        push  y
09cd: f5 21 02  mov   a,$0221+x
09d0: eb 14     mov   y,$14
09d2: cf        mul   ya
09d3: 7a 16     addw  ya,$16
09d5: da 16     movw  $16,ya
09d7: f5 21 02  mov   a,$0221+x
09da: eb 15     mov   y,$15
09dc: cf        mul   ya
09dd: fd        mov   y,a
09de: ae        pop   a
09df: 7a 16     addw  ya,$16
09e1: da 16     movw  $16,ya
09e3: 7d        mov   a,x
09e4: 9f        xcn   a
09e5: 5c        lsr   a
09e6: 08 02     or    a,#$02
09e8: fd        mov   y,a
09e9: e4 16     mov   a,$16
09eb: 3f f1 09  call  $09f1
09ee: fc        inc   y
09ef: e4 17     mov   a,$17
09f1: 2d        push  a
09f2: e4 47     mov   a,$47
09f4: 24 1a     and   a,$1a
09f6: ae        pop   a
09f7: d0 06     bne   $09ff
09f9: cc f2 00  mov   $00f2,y
09fc: c5 f3 00  mov   $00f3,a
09ff: 6f        ret

0a00: 8d 0e     mov   y,#$0e
0a02: cd 80     mov   x,#$80
0a04: c9 c1 03  mov   $03c1,x
0a07: f6 a0 03  mov   a,$03a0+y
0a0a: 64 03     cmp   a,$03
0a0c: f0 09     beq   $0a17
0a0e: dc        dec   y
0a0f: dc        dec   y
0a10: 4c c1 03  lsr   $03c1
0a13: d0 f2     bne   $0a07
0a15: 2f 38     bra   $0a4f
0a17: cc c0 03  mov   $03c0,y
0a1a: 2f 48     bra   $0a64
0a1c: 80        setc
0a1d: e5 c8 03  mov   a,$03c8
0a20: a8 02     sbc   a,#$02
0a22: 28 0f     and   a,#$0f
0a24: 80        setc
0a25: 68 0c     cmp   a,#$0c
0a27: 90 02     bcc   $0a2b
0a29: e8 00     mov   a,#$00
0a2b: c5 c0 03  mov   $03c0,a
0a2e: 60        clrc
0a2f: e5 c9 03  mov   a,$03c9
0a32: 5c        lsr   a
0a33: c5 c1 03  mov   $03c1,a
0a36: d0 05     bne   $0a3d
0a38: e8 80     mov   a,#$80
0a3a: c5 c1 03  mov   $03c1,a
0a3d: e5 c0 03  mov   a,$03c0
0a40: c5 c8 03  mov   $03c8,a
0a43: e5 c1 03  mov   a,$03c1
0a46: c5 c9 03  mov   $03c9,a
0a49: 04 1a     or    a,$1a
0a4b: c4 1a     mov   $1a,a
0a4d: 2f 25     bra   $0a74
0a4f: 60        clrc
0a50: cd 1a     mov   x,#$1a
0a52: e8 80     mov   a,#$80
0a54: c5 c1 03  mov   $03c1,a
0a57: 8d 0e     mov   y,#$0e
0a59: 26        and   a,(x)
0a5a: f0 08     beq   $0a64
0a5c: dc        dec   y
0a5d: dc        dec   y
0a5e: 4c c1 03  lsr   $03c1
0a61: 5c        lsr   a
0a62: 90 f5     bcc   $0a59
0a64: cc c0 03  mov   $03c0,y
0a67: cc c8 03  mov   $03c8,y
0a6a: e5 c1 03  mov   a,$03c1
0a6d: c5 c9 03  mov   $03c9,a
0a70: 04 1a     or    a,$1a
0a72: c4 1a     mov   $1a,a
0a74: e5 c1 03  mov   a,$03c1
0a77: 24 4a     and   a,$4a
0a79: f0 0d     beq   $0a88
0a7b: e4 4a     mov   a,$4a
0a7d: 80        setc
0a7e: a5 c1 03  sbc   a,$03c1
0a81: c4 4a     mov   $4a,a
0a83: 8d 4d     mov   y,#$4d
0a85: 3f f9 09  call  $09f9
0a88: 6f        ret

0a89: e9 c4 03  mov   x,$03c4
0a8c: c9 c0 03  mov   $03c0,x
0a8f: ec c5 03  mov   y,$03c5
0a92: cc c1 03  mov   $03c1,y
0a95: e5 c1 03  mov   a,$03c1
0a98: 8d 5c     mov   y,#$5c
0a9a: 3f f9 09  call  $09f9
0a9d: 3f 97 0c  call  $0c97
0aa0: 6f        ret

0aa1: cd 0e     mov   x,#$0e
0aa3: e4 01     mov   a,$01
0aa5: d5 a0 03  mov   $03a0+x,a
0aa8: e8 03     mov   a,#$03
0aaa: d5 a1 03  mov   $03a1+x,a
0aad: e8 00     mov   a,#$00
0aaf: d5 80 02  mov   $0280+x,a
0ab2: e8 80     mov   a,#$80
0ab4: c5 cf 03  mov   $03cf,a
0ab7: 8d 5c     mov   y,#$5c
0ab9: 3f f9 09  call  $09f9
0abc: e2 1a     set7  $1a
0abe: f8 01     mov   x,$01
0ac0: f5 c4 0e  mov   a,$0ec4+x
0ac3: c4 01     mov   $01,a
0ac5: d0 01     bne   $0ac8
0ac7: 6f        ret

0ac8: cd 0c     mov   x,#$0c
0aca: e4 01     mov   a,$01
0acc: d5 a0 03  mov   $03a0+x,a
0acf: e8 03     mov   a,#$03
0ad1: d5 a1 03  mov   $03a1+x,a
0ad4: e8 00     mov   a,#$00
0ad6: d5 80 02  mov   $0280+x,a
0ad9: c2 1a     set6  $1a
0adb: e8 40     mov   a,#$40
0add: 8d 5c     mov   y,#$5c
0adf: 3f f9 09  call  $09f9
0ae2: e8 c0     mov   a,#$c0
0ae4: c5 cf 03  mov   $03cf,a
0ae7: 6f        ret

0ae8: e4 01     mov   a,$01
0aea: d0 b5     bne   $0aa1
0aec: 6f        ret

0aed: e4 02     mov   a,$02
0aef: d0 48     bne   $0b39
0af1: 6f        ret

0af2: e4 03     mov   a,$03
0af4: d0 01     bne   $0af7
0af6: 6f        ret

0af7: e8 ff     mov   a,#$ff
0af9: 2e 1a 02  cbne  $1a,$0afe
0afc: 2f 3a     bra   $0b38
0afe: 3f 4f 0a  call  $0a4f
0b01: e9 c0 03  mov   x,$03c0
0b04: e4 03     mov   a,$03
0b06: 28 c0     and   a,#$c0
0b08: d5 d0 03  mov   $03d0+x,a
0b0b: e4 03     mov   a,$03
0b0d: 28 3f     and   a,#$3f
0b0f: d5 a0 03  mov   $03a0+x,a
0b12: e8 03     mov   a,#$03
0b14: d5 a1 03  mov   $03a1+x,a
0b17: e8 00     mov   a,#$00
0b19: d5 80 02  mov   $0280+x,a
0b1c: e5 c1 03  mov   a,$03c1
0b1f: 05 cd 03  or    a,$03cd
0b22: c5 cd 03  mov   $03cd,a
0b25: e5 c1 03  mov   a,$03c1
0b28: 8d 5c     mov   y,#$5c
0b2a: 3f f9 09  call  $09f9
0b2d: f5 a0 03  mov   a,$03a0+x
0b30: 5d        mov   x,a
0b31: f5 bc 0f  mov   a,$0fbc+x
0b34: c4 03     mov   $03,a
0b36: d0 bf     bne   $0af7
0b38: 6f        ret

0b39: e8 ff     mov   a,#$ff
0b3b: 2e 1a 02  cbne  $1a,$0b40
0b3e: 2f 3a     bra   $0b7a
0b40: 3f 4f 0a  call  $0a4f
0b43: e9 c0 03  mov   x,$03c0
0b46: e4 02     mov   a,$02
0b48: 28 3f     and   a,#$3f
0b4a: d5 a0 03  mov   $03a0+x,a
0b4d: e4 02     mov   a,$02
0b4f: 28 c0     and   a,#$c0
0b51: d5 d0 03  mov   $03d0+x,a
0b54: e8 03     mov   a,#$03
0b56: d5 a1 03  mov   $03a1+x,a
0b59: e8 00     mov   a,#$00
0b5b: d5 80 02  mov   $0280+x,a
0b5e: e5 c1 03  mov   a,$03c1
0b61: 05 cb 03  or    a,$03cb
0b64: c5 cb 03  mov   $03cb,a
0b67: e5 c1 03  mov   a,$03c1
0b6a: 8d 5c     mov   y,#$5c
0b6c: 3f f9 09  call  $09f9
0b6f: f5 a0 03  mov   a,$03a0+x
0b72: 5d        mov   x,a
0b73: f5 2c 0f  mov   a,$0f2c+x
0b76: c4 02     mov   $02,a
0b78: d0 bf     bne   $0b39
0b7a: 6f        ret

0b7b: e5 cf 03  mov   a,$03cf
0b7e: c5 e0 03  mov   $03e0,a
0b81: f0 30     beq   $0bb3
0b83: cd 0e     mov   x,#$0e
0b85: e8 80     mov   a,#$80
0b87: c5 c1 03  mov   $03c1,a
0b8a: 0c e0 03  asl   $03e0
0b8d: 90 1b     bcc   $0baa
0b8f: c9 c0 03  mov   $03c0,x
0b92: 7d        mov   a,x
0b93: 9f        xcn   a
0b94: 5c        lsr   a
0b95: c5 c2 03  mov   $03c2,a
0b98: f5 d0 03  mov   a,$03d0+x
0b9b: c4 20     mov   $20,a
0b9d: f5 a1 03  mov   a,$03a1+x
0ba0: d0 12     bne   $0bb4
0ba2: f5 a0 03  mov   a,$03a0+x
0ba5: f0 03     beq   $0baa
0ba7: 5f 1c 0d  jmp   $0d1c
0baa: 4c c1 03  lsr   $03c1
0bad: 1d        dec   x
0bae: 1d        dec   x
0baf: c8 0a     cmp   x,#$0a
0bb1: 10 d7     bpl   $0b8a
0bb3: 6f        ret

0bb4: c9 c0 03  mov   $03c0,x
0bb7: f5 a1 03  mov   a,$03a1+x
0bba: 9c        dec   a
0bbb: d5 a1 03  mov   $03a1+x,a
0bbe: f0 03     beq   $0bc3
0bc0: 5f aa 0b  jmp   $0baa
0bc3: f5 a0 03  mov   a,$03a0+x
0bc6: 1c        asl   a
0bc7: fd        mov   y,a
0bc8: f6 b4 0e  mov   a,$0eb4+y
0bcb: d5 91 03  mov   $0391+x,a
0bce: c4 2d     mov   $2d,a
0bd0: f6 b3 0e  mov   a,$0eb3+y
0bd3: d5 90 03  mov   $0390+x,a
0bd6: c4 2c     mov   $2c,a
0bd8: 5f 39 0d  jmp   $0d39

0bdb: e5 cb 03  mov   a,$03cb
0bde: c5 cc 03  mov   $03cc,a
0be1: f0 2e     beq   $0c11
0be3: cd 0e     mov   x,#$0e
0be5: e8 80     mov   a,#$80
0be7: c5 c1 03  mov   $03c1,a
0bea: 0c cc 03  asl   $03cc
0bed: 90 1b     bcc   $0c0a
0bef: c9 c0 03  mov   $03c0,x
0bf2: 7d        mov   a,x
0bf3: 9f        xcn   a
0bf4: 5c        lsr   a
0bf5: c5 c2 03  mov   $03c2,a
0bf8: f5 d0 03  mov   a,$03d0+x
0bfb: c4 20     mov   $20,a
0bfd: f5 a1 03  mov   a,$03a1+x
0c00: d0 10     bne   $0c12
0c02: f5 a0 03  mov   a,$03a0+x
0c05: f0 03     beq   $0c0a
0c07: 5f 1c 0d  jmp   $0d1c
0c0a: 4c c1 03  lsr   $03c1
0c0d: 1d        dec   x
0c0e: 1d        dec   x
0c0f: 10 d9     bpl   $0bea
0c11: 6f        ret

0c12: c9 c0 03  mov   $03c0,x
0c15: f5 a1 03  mov   a,$03a1+x
0c18: 9c        dec   a
0c19: d5 a1 03  mov   $03a1+x,a
0c1c: f0 03     beq   $0c21
0c1e: 5f 0a 0c  jmp   $0c0a
0c21: f5 a0 03  mov   a,$03a0+x
0c24: 1c        asl   a
0c25: fd        mov   y,a
0c26: f6 cc 0e  mov   a,$0ecc+y
0c29: d5 91 03  mov   $0391+x,a
0c2c: c4 2d     mov   $2d,a
0c2e: f6 cb 0e  mov   a,$0ecb+y
0c31: d5 90 03  mov   $0390+x,a
0c34: c4 2c     mov   $2c,a
0c36: 5f 39 0d  jmp   $0d39

0c39: e5 cd 03  mov   a,$03cd
0c3c: c5 ce 03  mov   $03ce,a
0c3f: f0 2e     beq   $0c6f
0c41: cd 0e     mov   x,#$0e
0c43: e8 80     mov   a,#$80
0c45: c5 c1 03  mov   $03c1,a
0c48: 0c ce 03  asl   $03ce
0c4b: 90 1b     bcc   $0c68
0c4d: c9 c0 03  mov   $03c0,x
0c50: 7d        mov   a,x
0c51: 9f        xcn   a
0c52: 5c        lsr   a
0c53: c5 c2 03  mov   $03c2,a
0c56: f5 d0 03  mov   a,$03d0+x
0c59: c4 20     mov   $20,a
0c5b: f5 a1 03  mov   a,$03a1+x
0c5e: d0 10     bne   $0c70
0c60: f5 a0 03  mov   a,$03a0+x
0c63: f0 03     beq   $0c68
0c65: 5f 1c 0d  jmp   $0d1c
0c68: 4c c1 03  lsr   $03c1
0c6b: 1d        dec   x
0c6c: 1d        dec   x
0c6d: 10 d9     bpl   $0c48
0c6f: 6f        ret

0c70: c9 c0 03  mov   $03c0,x
0c73: f5 a1 03  mov   a,$03a1+x
0c76: 9c        dec   a
0c77: d5 a1 03  mov   $03a1+x,a
0c7a: f0 03     beq   $0c7f
0c7c: 5f 68 0c  jmp   $0c68
0c7f: f5 a0 03  mov   a,$03a0+x
0c82: 1c        asl   a
0c83: fd        mov   y,a
0c84: f6 5c 0f  mov   a,$0f5c+y
0c87: d5 91 03  mov   $0391+x,a
0c8a: c4 2d     mov   $2d,a
0c8c: f6 5b 0f  mov   a,$0f5b+y
0c8f: d5 90 03  mov   $0390+x,a
0c92: c4 2c     mov   $2c,a
0c94: 5f 39 0d  jmp   $0d39

0c97: e8 00     mov   a,#$00
0c99: e9 c0 03  mov   x,$03c0
0c9c: d5 a0 03  mov   $03a0+x,a
0c9f: e4 1a     mov   a,$1a
0ca1: 80        setc
0ca2: a5 c1 03  sbc   a,$03c1
0ca5: c4 1a     mov   $1a,a
0ca7: e5 c1 03  mov   a,$03c1
0caa: 25 cb 03  and   a,$03cb
0cad: f0 0c     beq   $0cbb
0caf: e5 cb 03  mov   a,$03cb
0cb2: 80        setc
0cb3: a5 c1 03  sbc   a,$03c1
0cb6: c5 cb 03  mov   $03cb,a
0cb9: 2f 1e     bra   $0cd9
0cbb: e5 c1 03  mov   a,$03c1
0cbe: 25 cd 03  and   a,$03cd
0cc1: f0 0c     beq   $0ccf
0cc3: e5 cd 03  mov   a,$03cd
0cc6: 80        setc
0cc7: a5 c1 03  sbc   a,$03c1
0cca: c5 cd 03  mov   $03cd,a
0ccd: 2f 0a     bra   $0cd9
0ccf: e5 cf 03  mov   a,$03cf
0cd2: 80        setc
0cd3: a5 c1 03  sbc   a,$03c1
0cd6: c5 cf 03  mov   $03cf,a
0cd9: d8 44     mov   $44,x
0cdb: f5 11 02  mov   a,$0211+x
0cde: 3f 12 1c  call  $1c12
0ce1: e5 c1 03  mov   a,$03c1
0ce4: 25 c3 03  and   a,$03c3
0ce7: f0 0d     beq   $0cf6
0ce9: e4 4a     mov   a,$4a
0ceb: 60        clrc
0cec: 85 c1 03  adc   a,$03c1
0cef: c4 4a     mov   $4a,a
0cf1: 8d 4d     mov   y,#$4d
0cf3: 3f f9 09  call  $09f9
0cf6: e9 c0 03  mov   x,$03c0
0cf9: 6f        ret

0cfa: e5 c1 03  mov   a,$03c1
0cfd: 25 cf 03  and   a,$03cf
0d00: d0 0e     bne   $0d10
0d02: e5 c1 03  mov   a,$03c1
0d05: 25 cb 03  and   a,$03cb
0d08: d0 0c     bne   $0d16
0d0a: 3f 97 0c  call  $0c97
0d0d: 5f 68 0c  jmp   $0c68
0d10: 3f 97 0c  call  $0c97
0d13: 5f aa 0b  jmp   $0baa
0d16: 3f 97 0c  call  $0c97
0d19: 5f 0a 0c  jmp   $0c0a

0d1c: 3f 74 0a  call  $0a74
0d1f: c9 c0 03  mov   $03c0,x
0d22: f5 91 03  mov   a,$0391+x
0d25: fd        mov   y,a
0d26: f5 90 03  mov   a,$0390+x
0d29: da 2c     movw  $2c,ya
0d2b: f5 b0 03  mov   a,$03b0+x
0d2e: 9c        dec   a
0d2f: d5 b0 03  mov   $03b0+x,a
0d32: f0 03     beq   $0d37
0d34: 5f e0 0d  jmp   $0de0
0d37: 3a 2c     incw  $2c
0d39: e5 c0 03  mov   a,$03c0
0d3c: 9f        xcn   a
0d3d: 5c        lsr   a
0d3e: c5 c2 03  mov   $03c2,a
0d41: cd 00     mov   x,#$00
0d43: e7 2c     mov   a,($2c+x)
0d45: f0 b3     beq   $0cfa
0d47: 30 68     bmi   $0db1
0d49: ec c0 03  mov   y,$03c0
0d4c: d6 b1 03  mov   $03b1+y,a
0d4f: 3a 2c     incw  $2c
0d51: e7 2c     mov   a,($2c+x)
0d53: c4 10     mov   $10,a
0d55: 30 5a     bmi   $0db1
0d57: 5d        mov   x,a
0d58: e5 c1 03  mov   a,$03c1
0d5b: 25 cf 03  and   a,$03cf
0d5e: f0 25     beq   $0d85
0d60: 7d        mov   a,x
0d61: ec c2 03  mov   y,$03c2
0d64: 3f f9 09  call  $09f9
0d67: cd 00     mov   x,#$00
0d69: 3a 2c     incw  $2c
0d6b: e7 2c     mov   a,($2c+x)
0d6d: 10 0d     bpl   $0d7c
0d6f: 5d        mov   x,a
0d70: e4 10     mov   a,$10
0d72: ec c2 03  mov   y,$03c2
0d75: fc        inc   y
0d76: 3f f9 09  call  $09f9
0d79: 7d        mov   a,x
0d7a: 2f 35     bra   $0db1
0d7c: ec c2 03  mov   y,$03c2
0d7f: fc        inc   y
0d80: 3f f9 09  call  $09f9
0d83: 2f 28     bra   $0dad
0d85: 7d        mov   a,x
0d86: e9 c0 03  mov   x,$03c0
0d89: 1c        asl   a
0d8a: d5 21 03  mov   $0321+x,a
0d8d: e8 0a     mov   a,#$0a
0d8f: d5 51 03  mov   $0351+x,a
0d92: e3 20 08  bbs7  $20,$0d9d
0d95: c3 20 0a  bbs6  $20,$0da2
0d98: 8f 0a 11  mov   $11,#$0a
0d9b: d0 08     bne   $0da5
0d9d: 8f 10 11  mov   $11,#$10
0da0: d0 03     bne   $0da5
0da2: 8f 04 11  mov   $11,#$04
0da5: 8f 00 10  mov   $10,#$00
0da8: 3f 2a 1f  call  $1f2a
0dab: cd 00     mov   x,#$00
0dad: 3a 2c     incw  $2c
0daf: e7 2c     mov   a,($2c+x)
0db1: 68 e0     cmp   a,#$e0
0db3: d0 03     bne   $0db8
0db5: 5f 61 0e  jmp   $0e61
0db8: 68 f9     cmp   a,#$f9
0dba: f0 67     beq   $0e23
0dbc: 68 f1     cmp   a,#$f1
0dbe: f0 78     beq   $0e38
0dc0: 68 ff     cmp   a,#$ff
0dc2: d0 06     bne   $0dca
0dc4: e9 c0 03  mov   x,$03c0
0dc7: 5f c3 0b  jmp   $0bc3
0dca: e9 c0 03  mov   x,$03c0
0dcd: fd        mov   y,a
0dce: 3f 04 09  call  $0904
0dd1: e5 c1 03  mov   a,$03c1
0dd4: 3f a7 0e  call  $0ea7
0dd7: e9 c0 03  mov   x,$03c0
0dda: f5 b1 03  mov   a,$03b1+x
0ddd: d5 b0 03  mov   $03b0+x,a
0de0: f2 13     clr7  $13
0de2: e9 c0 03  mov   x,$03c0
0de5: f4 a0     mov   a,$a0+x
0de7: f0 05     beq   $0dee
0de9: 3f 8d 0e  call  $0e8d
0dec: 2f 0f     bra   $0dfd
0dee: e8 02     mov   a,#$02
0df0: 75 b0 03  cmp   a,$03b0+x
0df3: d0 08     bne   $0dfd
0df5: e5 c1 03  mov   a,$03c1
0df8: 8d 5c     mov   y,#$5c
0dfa: 3f f9 09  call  $09f9
0dfd: e9 c0 03  mov   x,$03c0
0e00: e4 2d     mov   a,$2d
0e02: d5 91 03  mov   $0391+x,a
0e05: e4 2c     mov   a,$2c
0e07: d5 90 03  mov   $0390+x,a
0e0a: e5 c1 03  mov   a,$03c1
0e0d: 25 cf 03  and   a,$03cf
0e10: d0 0b     bne   $0e1d
0e12: e5 c1 03  mov   a,$03c1
0e15: 25 cb 03  and   a,$03cb
0e18: d0 06     bne   $0e20
0e1a: 5f 68 0c  jmp   $0c68
0e1d: 5f aa 0b  jmp   $0baa
0e20: 5f 0a 0c  jmp   $0c0a
0e23: cd 00     mov   x,#$00
0e25: 3a 2c     incw  $2c
0e27: e7 2c     mov   a,($2c+x)
0e29: e9 c0 03  mov   x,$03c0
0e2c: d8 44     mov   $44,x
0e2e: fd        mov   y,a
0e2f: 3f 04 09  call  $0904
0e32: e5 c1 03  mov   a,$03c1
0e35: 3f a7 0e  call  $0ea7
0e38: cd 00     mov   x,#$00
0e3a: 3a 2c     incw  $2c
0e3c: e7 2c     mov   a,($2c+x)
0e3e: e9 c0 03  mov   x,$03c0
0e41: d4 a1     mov   $a1+x,a
0e43: cd 00     mov   x,#$00
0e45: 3a 2c     incw  $2c
0e47: e7 2c     mov   a,($2c+x)
0e49: e9 c0 03  mov   x,$03c0
0e4c: d4 a0     mov   $a0+x,a
0e4e: 2d        push  a
0e4f: cd 00     mov   x,#$00
0e51: 3a 2c     incw  $2c
0e53: e7 2c     mov   a,($2c+x)
0e55: ee        pop   y
0e56: e9 c0 03  mov   x,$03c0
0e59: d8 44     mov   $44,x
0e5b: 3f 41 1e  call  $1e41
0e5e: 5f d7 0d  jmp   $0dd7
0e61: cd 00     mov   x,#$00
0e63: 3a 2c     incw  $2c
0e65: e7 2c     mov   a,($2c+x)
0e67: 8d 09     mov   y,#$09
0e69: cf        mul   ya
0e6a: 5d        mov   x,a
0e6b: ec c2 03  mov   y,$03c2
0e6e: 8f 08 12  mov   $12,#$08
0e71: f5 2a 19  mov   a,$192a+x
0e74: 3f f9 09  call  $09f9
0e77: 3d        inc   x
0e78: fc        inc   y
0e79: 6e 12 f5  dbnz  $12,$0e71
0e7c: f5 2a 19  mov   a,$192a+x
0e7f: ec c0 03  mov   y,$03c0
0e82: d6 21 02  mov   $0221+y,a
0e85: e8 00     mov   a,#$00
0e87: d6 20 02  mov   $0220+y,a
0e8a: 5f 37 0d  jmp   $0d37

0e8d: e2 13     set7  $13
0e8f: e8 60     mov   a,#$60
0e91: 8d 03     mov   y,#$03
0e93: 9b a0     dec   $a0+x
0e95: 3f 6b 1f  call  $1f6b
0e98: f5 61 03  mov   a,$0361+x
0e9b: fd        mov   y,a
0e9c: f5 60 03  mov   a,$0360+x
0e9f: da 10     movw  $10,ya
0ea1: 8f 00 47  mov   $47,#$00
0ea4: 5f 6e 09  jmp   $096e

0ea7: 2d        push  a
0ea8: 8d 5c     mov   y,#$5c
0eaa: e8 00     mov   a,#$00
0eac: 3f f9 09  call  $09f9
0eaf: ae        pop   a
0eb0: 8d 4c     mov   y,#$4c
0eb2: 5f f9 09  jmp   $09f9

19e7: 23 01 01  bbs1  $01,$19eb
19ea: 6f        ret

19eb: e8 00     mov   a,#$00
19ed: c5 ca 03  mov   $03ca,a
19f0: f0 05     beq   $19f7
19f2: 3f 19 1a  call  $1a19
19f5: e8 01     mov   a,#$01
19f7: c5 c6 03  mov   $03c6,a
19fa: 6f        ret

19fb: cd a0     mov   x,#$a0
19fd: d8 5a     mov   $5a,x
19ff: c9 ca 03  mov   $03ca,x
1a02: e8 00     mov   a,#$00
1a04: c4 5b     mov   $5b,a
1a06: 80        setc
1a07: a4 59     sbc   a,$59
1a09: 3f 64 1e  call  $1e64
1a0c: da 5c     movw  $5c,ya
1a0e: 5f ac 1a  jmp   $1aac

1a11: 8c ca 03  dec   $03ca
1a14: f0 03     beq   $1a19
1a16: 5f b8 1a  jmp   $1ab8
1a19: e4 1a     mov   a,$1a
1a1b: 48 ff     eor   a,#$ff
1a1d: 0e 46 00  tset1 $0046
1a20: 8f 00 0d  mov   $0d,#$00
1a23: 8f 00 47  mov   $47,#$00
1a26: 6f        ret

1a27: 8d 00     mov   y,#$00
1a29: f7 40     mov   a,($40)+y
1a2b: 3a 40     incw  $40
1a2d: 2d        push  a
1a2e: f7 40     mov   a,($40)+y
1a30: 3a 40     incw  $40
1a32: fd        mov   y,a
1a33: ae        pop   a
1a34: 6f        ret

1a35: 60        clrc
1a36: cd 00     mov   x,#$00
1a38: c9 ca 03  mov   $03ca,x
1a3b: c4 0d     mov   $0d,a
1a3d: 1c        asl   a
1a3e: 5d        mov   x,a
1a3f: f5 6e 21  mov   a,$216e+x
1a42: fd        mov   y,a
1a43: f5 6d 21  mov   a,$216d+x
1a46: da 40     movw  $40,ya
1a48: 8f 02 0c  mov   $0c,#$02
1a4b: e4 1a     mov   a,$1a
1a4d: 48 ff     eor   a,#$ff
1a4f: 0e 46 00  tset1 $0046
1a52: 6f        ret

1a53: cd 0e     mov   x,#$0e
1a55: 8f 80 47  mov   $47,#$80
1a58: e8 ff     mov   a,#$ff
1a5a: d5 01 03  mov   $0301+x,a
1a5d: e8 0a     mov   a,#$0a
1a5f: 3f 6b 1c  call  $1c6b
1a62: d5 11 02  mov   $0211+x,a
1a65: d5 81 03  mov   $0381+x,a
1a68: d5 f0 02  mov   $02f0+x,a
1a6b: d5 80 02  mov   $0280+x,a
1a6e: d5 ff 03  mov   $03ff+x,a
1a71: d4 b1     mov   $b1+x,a
1a73: d4 c1     mov   $c1+x,a
1a75: 1d        dec   x
1a76: 1d        dec   x
1a77: 4b 47     lsr   $47
1a79: d0 dd     bne   $1a58
1a7b: c4 5a     mov   $5a,a
1a7d: c4 68     mov   $68,a
1a7f: c4 54     mov   $54,a
1a81: c4 50     mov   $50,a
1a83: c4 42     mov   $42,a
1a85: c4 5f     mov   $5f,a
1a87: 8f c0 59  mov   $59,#$c0
1a8a: 8f 20 53  mov   $53,#$20
1a8d: 6f        ret

1a8e: e4 00     mov   a,$00
1a90: f0 1a     beq   $1aac
1a92: c4 04     mov   $04,a
1a94: 68 f0     cmp   a,#$f0
1a96: f0 81     beq   $1a19
1a98: 68 f1     cmp   a,#$f1
1a9a: d0 03     bne   $1a9f
1a9c: 5f fb 19  jmp   $19fb
1a9f: 80        setc
1aa0: 68 07     cmp   a,#$07
1aa2: b0 91     bcs   $1a35
1aa4: ec c6 03  mov   y,$03c6
1aa7: f0 8c     beq   $1a35
1aa9: 5f fb 19  jmp   $19fb
1aac: e4 0d     mov   a,$0d
1aae: f0 dd     beq   $1a8d
1ab0: e5 ca 03  mov   a,$03ca
1ab3: f0 03     beq   $1ab8
1ab5: 5f 11 1a  jmp   $1a11
1ab8: e4 0c     mov   a,$0c
1aba: f0 5d     beq   $1b19
1abc: 6e 0c 94  dbnz  $0c,$1a53
1abf: 3f 27 1a  call  $1a27
1ac2: d0 25     bne   $1ae9
1ac4: fd        mov   y,a
1ac5: d0 03     bne   $1aca
1ac7: 5f 19 1a  jmp   $1a19
1aca: 68 80     cmp   a,#$80
1acc: f0 06     beq   $1ad4
1ace: 68 81     cmp   a,#$81
1ad0: d0 06     bne   $1ad8
1ad2: e8 00     mov   a,#$00
1ad4: c4 1b     mov   $1b,a
1ad6: 2f e7     bra   $1abf
1ad8: 8b 42     dec   $42
1ada: 10 02     bpl   $1ade
1adc: c4 42     mov   $42,a
1ade: 3f 27 1a  call  $1a27
1ae1: f8 42     mov   x,$42
1ae3: f0 da     beq   $1abf
1ae5: da 40     movw  $40,ya
1ae7: 2f d6     bra   $1abf
1ae9: da 16     movw  $16,ya
1aeb: 8d 0f     mov   y,#$0f
1aed: f7 16     mov   a,($16)+y
1aef: d6 30 00  mov   $0030+y,a
1af2: dc        dec   y
1af3: 10 f8     bpl   $1aed
1af5: cd 00     mov   x,#$00
1af7: 8f 01 47  mov   $47,#$01
1afa: f4 31     mov   a,$31+x
1afc: f0 0a     beq   $1b08
1afe: f5 11 02  mov   a,$0211+x
1b01: d0 05     bne   $1b08
1b03: e8 00     mov   a,#$00
1b05: 3f 12 1c  call  $1c12
1b08: e8 00     mov   a,#$00
1b0a: d4 80     mov   $80+x,a
1b0c: d4 90     mov   $90+x,a
1b0e: d4 91     mov   $91+x,a
1b10: bc        inc   a
1b11: d4 70     mov   $70+x,a
1b13: 3d        inc   x
1b14: 3d        inc   x
1b15: 0b 47     asl   $47
1b17: d0 e1     bne   $1afa
1b19: cd 00     mov   x,#$00
1b1b: d8 5e     mov   $5e,x
1b1d: 8f 01 47  mov   $47,#$01
1b20: d8 44     mov   $44,x
1b22: f4 31     mov   a,$31+x
1b24: f0 7a     beq   $1ba0
1b26: 9b 70     dec   $70+x
1b28: d0 6c     bne   $1b96
1b2a: 3f 08 1c  call  $1c08
1b2d: d0 17     bne   $1b46
1b2f: f4 80     mov   a,$80+x
1b31: f0 8c     beq   $1abf
1b33: 3f 5e 1d  call  $1d5e
1b36: 9b 80     dec   $80+x
1b38: d0 f0     bne   $1b2a
1b3a: f5 30 02  mov   a,$0230+x
1b3d: d4 30     mov   $30+x,a
1b3f: f5 31 02  mov   a,$0231+x
1b42: d4 31     mov   $31+x,a
1b44: 2f e4     bra   $1b2a
1b46: 30 20     bmi   $1b68
1b48: d5 00 02  mov   $0200+x,a
1b4b: 3f 08 1c  call  $1c08
1b4e: 30 18     bmi   $1b68
1b50: 2d        push  a
1b51: 9f        xcn   a
1b52: 28 07     and   a,#$07
1b54: fd        mov   y,a
1b55: f6 24 34  mov   a,$3424+y
1b58: d5 01 02  mov   $0201+x,a
1b5b: ae        pop   a
1b5c: 28 0f     and   a,#$0f
1b5e: fd        mov   y,a
1b5f: f6 2c 34  mov   a,$342c+y
1b62: d5 10 02  mov   $0210+x,a
1b65: 3f 08 1c  call  $1c08
1b68: 68 e0     cmp   a,#$e0
1b6a: 90 05     bcc   $1b71
1b6c: 3f f6 1b  call  $1bf6
1b6f: 2f b9     bra   $1b2a
1b71: f5 ff 03  mov   a,$03ff+x
1b74: 04 1b     or    a,$1b
1b76: d0 0c     bne   $1b84
1b78: dd        mov   a,y
1b79: 2d        push  a
1b7a: e4 47     mov   a,$47
1b7c: 24 1a     and   a,$1a
1b7e: ae        pop   a
1b7f: d0 03     bne   $1b84
1b81: 3f 04 09  call  $0904
1b84: f5 00 02  mov   a,$0200+x
1b87: d4 70     mov   $70+x,a
1b89: fd        mov   y,a
1b8a: f5 01 02  mov   a,$0201+x
1b8d: cf        mul   ya
1b8e: dd        mov   a,y
1b8f: d0 01     bne   $1b92
1b91: bc        inc   a
1b92: d4 71     mov   $71+x,a
1b94: 2f 07     bra   $1b9d
1b96: e4 1b     mov   a,$1b
1b98: d0 06     bne   $1ba0
1b9a: 3f 8c 1f  call  $1f8c
1b9d: 3f 21 1e  call  $1e21
1ba0: 3d        inc   x
1ba1: 3d        inc   x
1ba2: 0b 47     asl   $47
1ba4: f0 03     beq   $1ba9
1ba6: 5f 20 1b  jmp   $1b20
1ba9: e4 54     mov   a,$54
1bab: f0 0b     beq   $1bb8
1bad: ba 56     movw  ya,$56
1baf: 7a 52     addw  ya,$52
1bb1: 6e 54 02  dbnz  $54,$1bb6
1bb4: ba 54     movw  ya,$54
1bb6: da 52     movw  $52,ya
1bb8: e4 68     mov   a,$68
1bba: f0 15     beq   $1bd1
1bbc: ba 64     movw  ya,$64
1bbe: 7a 60     addw  ya,$60
1bc0: da 60     movw  $60,ya
1bc2: ba 66     movw  ya,$66
1bc4: 7a 62     addw  ya,$62
1bc6: 6e 68 06  dbnz  $68,$1bcf
1bc9: ba 68     movw  ya,$68
1bcb: da 60     movw  $60,ya
1bcd: eb 6a     mov   y,$6a
1bcf: da 62     movw  $62,ya
1bd1: e4 5a     mov   a,$5a
1bd3: f0 0e     beq   $1be3
1bd5: ba 5c     movw  ya,$5c
1bd7: 7a 58     addw  ya,$58
1bd9: 6e 5a 02  dbnz  $5a,$1bde
1bdc: ba 5a     movw  ya,$5a
1bde: da 58     movw  $58,ya
1be0: 8f ff 5e  mov   $5e,#$ff
1be3: cd 00     mov   x,#$00
1be5: 8f 01 47  mov   $47,#$01
1be8: f4 31     mov   a,$31+x
1bea: f0 03     beq   $1bef
1bec: 3f d5 1e  call  $1ed5
1bef: 3d        inc   x
1bf0: 3d        inc   x
1bf1: 0b 47     asl   $47
1bf3: d0 f3     bne   $1be8
1bf5: 6f        ret

1bf6: 1c        asl   a
1bf7: fd        mov   y,a
1bf8: f6 c1 1d  mov   a,$1dc1+y
1bfb: 2d        push  a
1bfc: f6 c0 1d  mov   a,$1dc0+y
1bff: 2d        push  a
1c00: dd        mov   a,y
1c01: 5c        lsr   a
1c02: fd        mov   y,a
1c03: f6 56 1e  mov   a,$1e56+y
1c06: f0 08     beq   $1c10
1c08: e7 30     mov   a,($30+x)
1c0a: bb 30     inc   $30+x
1c0c: d0 02     bne   $1c10
1c0e: bb 31     inc   $31+x
1c10: fd        mov   y,a
1c11: 6f        ret

;vcmd e0
1c12: d5 11 02  mov   $0211+x,a
1c15: fd        mov   y,a
1c16: 10 06     bpl   $1c1e
1c18: 80        setc
1c19: a8 ca     sbc   a,#$ca
1c1b: 60        clrc
1c1c: 84 5f     adc   a,$5f
1c1e: 8d 06     mov   y,#$06
1c20: cf        mul   ya
1c21: da 14     movw  $14,ya
1c23: 60        clrc
1c24: 98 00 14  adc   $14,#$00
1c27: 98 34 15  adc   $15,#$34
1c2a: e4 1a     mov   a,$1a
1c2c: 24 47     and   a,$47
1c2e: d0 3a     bne   $1c6a
1c30: 4d        push  x
1c31: 7d        mov   a,x
1c32: 9f        xcn   a
1c33: 5c        lsr   a
1c34: 08 04     or    a,#$04
1c36: 5d        mov   x,a
1c37: 8d 00     mov   y,#$00
1c39: f7 14     mov   a,($14)+y
1c3b: 10 0e     bpl   $1c4b
1c3d: 28 1f     and   a,#$1f
1c3f: 38 20 48  and   $48,#$20
1c42: 0e 48 00  tset1 $0048
1c45: 09 47 49  or    ($49),($47)
1c48: dd        mov   a,y
1c49: 2f 07     bra   $1c52
1c4b: e4 47     mov   a,$47
1c4d: 4e 49 00  tclr1 $0049
1c50: f7 14     mov   a,($14)+y
1c52: c9 f2 00  mov   $00f2,x
1c55: c5 f3 00  mov   $00f3,a
1c58: 3d        inc   x
1c59: fc        inc   y
1c5a: ad 04     cmp   y,#$04
1c5c: d0 f2     bne   $1c50
1c5e: ce        pop   x
1c5f: f7 14     mov   a,($14)+y
1c61: d5 21 02  mov   $0221+x,a
1c64: fc        inc   y
1c65: f7 14     mov   a,($14)+y
1c67: d5 20 02  mov   $0220+x,a
1c6a: 6f        ret

;vcmd e1
1c6b: d5 51 03  mov   $0351+x,a
1c6e: 28 1f     and   a,#$1f
1c70: d5 31 03  mov   $0331+x,a
1c73: e8 00     mov   a,#$00
1c75: d5 30 03  mov   $0330+x,a
1c78: 6f        ret

;vcmd e2
1c79: d4 91     mov   $91+x,a
1c7b: 2d        push  a
1c7c: 3f 08 1c  call  $1c08
1c7f: d5 50 03  mov   $0350+x,a
1c82: 80        setc
1c83: b5 31 03  sbc   a,$0331+x
1c86: ce        pop   x
1c87: 3f 64 1e  call  $1e64
1c8a: d5 40 03  mov   $0340+x,a
1c8d: dd        mov   a,y
1c8e: d5 41 03  mov   $0341+x,a
1c91: 6f        ret

;vcmd e3
1c92: d5 b0 02  mov   $02b0+x,a
1c95: 3f 08 1c  call  $1c08
1c98: d5 a1 02  mov   $02a1+x,a
1c9b: 3f 08 1c  call  $1c08
;vcmd e4
1c9e: d4 b1     mov   $b1+x,a
1ca0: d5 c1 02  mov   $02c1+x,a
1ca3: e8 00     mov   a,#$00
1ca5: d5 b1 02  mov   $02b1+x,a
1ca8: 6f        ret

;vcmd f0
1ca9: d5 b1 02  mov   $02b1+x,a
1cac: 2d        push  a
1cad: 8d 00     mov   y,#$00
1caf: f4 b1     mov   a,$b1+x
1cb1: ce        pop   x
1cb2: 9e        div   ya,x
1cb3: f8 44     mov   x,$44
1cb5: d5 c0 02  mov   $02c0+x,a
1cb8: 6f        ret

;vcmd e5
1cb9: e5 ca 03  mov   a,$03ca
1cbc: d0 04     bne   $1cc2
1cbe: e8 00     mov   a,#$00
1cc0: da 58     movw  $58,ya
1cc2: 6f        ret

;vcmd e6
1cc3: c4 5a     mov   $5a,a
1cc5: 3f 08 1c  call  $1c08
1cc8: c4 5b     mov   $5b,a
1cca: 80        setc
1ccb: a4 59     sbc   a,$59
1ccd: f8 5a     mov   x,$5a
1ccf: 3f 64 1e  call  $1e64
1cd2: da 5c     movw  $5c,ya
1cd4: 6f        ret

;vcmd e7
1cd5: e8 00     mov   a,#$00
1cd7: da 52     movw  $52,ya
1cd9: 6f        ret

;vcmd e8
1cda: c4 54     mov   $54,a
1cdc: 3f 08 1c  call  $1c08
1cdf: c4 55     mov   $55,a
1ce1: 80        setc
1ce2: a4 53     sbc   a,$53
1ce4: f8 54     mov   x,$54
1ce6: 3f 64 1e  call  $1e64
1ce9: da 56     movw  $56,ya
1ceb: 6f        ret

;vcmd e9
1cec: c4 50     mov   $50,a
1cee: 6f        ret

;vcmd ea
1cef: d5 f0 02  mov   $02f0+x,a
1cf2: 6f        ret

;vcmd eb
1cf3: d5 e0 02  mov   $02e0+x,a
1cf6: 3f 08 1c  call  $1c08
1cf9: d5 d1 02  mov   $02d1+x,a
1cfc: 3f 08 1c  call  $1c08
;vcmd ec
1cff: d4 c1     mov   $c1+x,a
1d01: 6f        ret

;vcmd f1
1d02: e8 01     mov   a,#$01
1d04: 2f 02     bra   $1d08
;vcmd f2
1d06: e8 00     mov   a,#$00
1d08: d5 90 02  mov   $0290+x,a
1d0b: dd        mov   a,y
1d0c: d5 81 02  mov   $0281+x,a
1d0f: 3f 08 1c  call  $1c08
1d12: d5 80 02  mov   $0280+x,a
1d15: 3f 08 1c  call  $1c08
1d18: d5 91 02  mov   $0291+x,a
1d1b: 6f        ret

;vcmd f3
1d1c: d5 80 02  mov   $0280+x,a
1d1f: 6f        ret

;vcmd ed
1d20: d5 01 03  mov   $0301+x,a
1d23: e8 00     mov   a,#$00
1d25: d5 00 03  mov   $0300+x,a
1d28: 6f        ret

;vcmd ee
1d29: d4 90     mov   $90+x,a
1d2b: 2d        push  a
1d2c: 3f 08 1c  call  $1c08
1d2f: d5 20 03  mov   $0320+x,a
1d32: 80        setc
1d33: b5 01 03  sbc   a,$0301+x
1d36: ce        pop   x
1d37: 3f 64 1e  call  $1e64
1d3a: d5 10 03  mov   $0310+x,a
1d3d: dd        mov   a,y
1d3e: d5 11 03  mov   $0311+x,a
1d41: 6f        ret

;vcmd f4
1d42: d5 81 03  mov   $0381+x,a
1d45: 6f        ret

;vcmd ef
1d46: d5 40 02  mov   $0240+x,a
1d49: 3f 08 1c  call  $1c08
1d4c: d5 41 02  mov   $0241+x,a
1d4f: 3f 08 1c  call  $1c08
1d52: d4 80     mov   $80+x,a
1d54: f4 30     mov   a,$30+x
1d56: d5 30 02  mov   $0230+x,a
1d59: f4 31     mov   a,$31+x
1d5b: d5 31 02  mov   $0231+x,a
1d5e: f5 40 02  mov   a,$0240+x
1d61: d4 30     mov   $30+x,a
1d63: f5 41 02  mov   a,$0241+x
1d66: d4 31     mov   $31+x,a
1d68: 6f        ret

;vcmd f5
1d69: c5 c3 03  mov   $03c3,a
1d6c: c4 4a     mov   $4a,a
1d6e: 3f 08 1c  call  $1c08
1d71: e8 00     mov   a,#$00
1d73: da 60     movw  $60,ya
1d75: 3f 08 1c  call  $1c08
1d78: e8 00     mov   a,#$00
1d7a: da 62     movw  $62,ya
1d7c: b2 48     clr5  $48
1d7e: 6f        ret

;vcmd f8
1d7f: c4 68     mov   $68,a
1d81: 3f 08 1c  call  $1c08
1d84: c4 69     mov   $69,a
1d86: 80        setc
1d87: a4 61     sbc   a,$61
1d89: f8 68     mov   x,$68
1d8b: 3f 64 1e  call  $1e64
1d8e: da 64     movw  $64,ya
1d90: 3f 08 1c  call  $1c08
1d93: c4 6a     mov   $6a,a
1d95: 80        setc
1d96: a4 63     sbc   a,$63
1d98: f8 68     mov   x,$68
1d9a: 3f 64 1e  call  $1e64
1d9d: da 66     movw  $66,ya
1d9f: 6f        ret

;vcmd f6
1da0: da 60     movw  $60,ya
1da2: da 62     movw  $62,ya
1da4: a2 48     set5  $48
1da6: 6f        ret

;vcmd f7
1da7: 3f c9 1d  call  $1dc9
1daa: 3f 08 1c  call  $1c08
1dad: c4 4e     mov   $4e,a
1daf: 3f 08 1c  call  $1c08
1db2: 8d 08     mov   y,#$08
1db4: cf        mul   ya
1db5: 5d        mov   x,a
1db6: 8d 0f     mov   y,#$0f
1db8: f5 21 21  mov   a,$2121+x
1dbb: 3f f9 09  call  $09f9
1dbe: 3d        inc   x
1dbf: dd        mov   a,y
1dc0: 60        clrc
1dc1: 88 10     adc   a,#$10
1dc3: fd        mov   y,a
1dc4: 10 f2     bpl   $1db8
1dc6: f8 44     mov   x,$44
1dc8: 6f        ret


1dc9: c4 4d     mov   $4d,a
1dcb: 8d 7d     mov   y,#$7d
1dcd: cc f2 00  mov   $00f2,y
1dd0: e5 f3 00  mov   a,$00f3
1dd3: 64 4d     cmp   a,$4d
1dd5: f0 2b     beq   $1e02
1dd7: 28 0f     and   a,#$0f
1dd9: 48 ff     eor   a,#$ff
1ddb: f3 4c 03  bbc7  $4c,$1de1
1dde: 60        clrc
1ddf: 84 4c     adc   a,$4c
1de1: c4 4c     mov   $4c,a
1de3: 8d 04     mov   y,#$04
1de5: f6 40 21  mov   a,$2140+y
1de8: c5 f2 00  mov   $00f2,a
1deb: e8 00     mov   a,#$00
1ded: c5 f3 00  mov   $00f3,a
1df0: fe f3     dbnz  y,$1de5
1df2: e4 48     mov   a,$48
1df4: 08 20     or    a,#$20
1df6: 8d 6c     mov   y,#$6c
1df8: 3f f9 09  call  $09f9
1dfb: e4 4d     mov   a,$4d
1dfd: 8d 7d     mov   y,#$7d
1dff: 3f f9 09  call  $09f9
1e02: 1c        asl   a
1e03: 1c        asl   a
1e04: 1c        asl   a
1e05: 48 ff     eor   a,#$ff
1e07: 80        setc
1e08: 88 d0     adc   a,#$d0
1e0a: 8d 6d     mov   y,#$6d
1e0c: 5f f9 09  jmp   $09f9

;vcmd fa
1e0f: c4 5f     mov   $5f,a
1e11: 6f        ret

;(unused vcmd fb - removed from table)
1e12: 3f 0a 1c  call  $1c0a
1e15: 6f        ret

;(unused vcmd fc - removed from table)
1e16: bc        inc   a
1e17: d5 ff 03  mov   $03ff+x,a
1e1a: 6f        ret

;(unused vcmd fd - removed from table)
1e1b: bc        inc   a
;(unused vcmd fe - removed from table)
1e1c: c4 1b     mov   $1b,a
1e1e: 5f 4b 1a  jmp   $1a4b

1e21: f4 a0     mov   a,$a0+x
1e23: d0 33     bne   $1e58
1e25: e7 30     mov   a,($30+x)
1e27: 68 f9     cmp   a,#$f9
1e29: d0 2d     bne   $1e58
1e2b: 3f 0a 1c  call  $1c0a
1e2e: 3f 08 1c  call  $1c08
;vcmd f9
1e31: d4 a1     mov   $a1+x,a
1e33: 3f 08 1c  call  $1c08
1e36: d4 a0     mov   $a0+x,a
1e38: 3f 08 1c  call  $1c08
1e3b: 60        clrc
1e3c: 84 50     adc   a,$50
1e3e: 95 f0 02  adc   a,$02f0+x
1e41: 28 7f     and   a,#$7f
1e43: d5 80 03  mov   $0380+x,a
1e46: 80        setc
1e47: b5 61 03  sbc   a,$0361+x
1e4a: fb a0     mov   y,$a0+x
1e4c: 6d        push  y
1e4d: ce        pop   x
1e4e: 3f 64 1e  call  $1e64
1e51: d5 70 03  mov   $0370+x,a
1e54: dd        mov   a,y
1e55: d5 71 03  mov   $0371+x,a
1e58: 6f        ret


1e59: f5 61 03  mov   a,$0361+x
1e5c: c4 11     mov   $11,a
1e5e: f5 60 03  mov   a,$0360+x
1e61: c4 10     mov   $10,a
1e63: 6f        ret

1e64: ed        notc
1e65: 6b 12     ror   $12
1e67: 10 03     bpl   $1e6c
1e69: 48 ff     eor   a,#$ff
1e6b: bc        inc   a
1e6c: 8d 00     mov   y,#$00
1e6e: 9e        div   ya,x
1e6f: 2d        push  a
1e70: e8 00     mov   a,#$00
1e72: 9e        div   ya,x
1e73: ee        pop   y
1e74: f8 44     mov   x,$44
1e76: f3 12 06  bbc7  $12,$1e7f
1e79: da 14     movw  $14,ya
1e7b: ba 0e     movw  ya,$0e
1e7d: 9a 14     subw  ya,$14
1e7f: 6f        ret

1e80: dw $1c12 ;vcmd e0
1e82: dw $1c6b ;vcmd e1
1e84: dw $1c79 ;vcmd e2
1e86: dw $1c92 ;vcmd e3
1e88: dw $1c9e ;vcmd e4
1e8a: dw $1cb9 ;vcmd e5
1e8c: dw $1cc3 ;vcmd e6
1e8e: dw $1cd5 ;vcmd e7
1e90: dw $1cda ;vcmd e8
1e92: dw $1cec ;vcmd e9
1e94: dw $1cef ;vcmd ea
1e96: dw $1cf3 ;vcmd eb
1e98: dw $1cff ;vcmd ec
1e9a: dw $1d20 ;vcmd ed
1e9c: dw $1d29 ;vcmd ee
1e9e: dw $1d46 ;vcmd ef
1ea0: dw $1ca9 ;vcmd f0
1ea2: dw $1d02 ;vcmd f1
1ea4: dw $1d06 ;vcmd f2
1ea6: dw $1d1c ;vcmd f3
1ea8: dw $1d42 ;vcmd f4
1eaa: dw $1d69 ;vcmd f5
1eac: dw $1da0 ;vcmd f6
1eae: dw $1da7 ;vcmd f7
1eb0: dw $1d7f ;vcmd f8
1eb2: dw $1e31 ;vcmd f9
1eb4: dw $1e0f ;vcmd fa

1eb6: db $01,$01,$02,$03,$00,$01,$02,$01
1ebe: db $02,$01,$01,$03,$00,$01,$02,$03
1ec6: db $01,$03,$03,$00,$01,$03,$00,$03
1ece: db $03,$03,$01,$02,$00,$00,$00

1ed5: f4 90     mov   a,$90+x
1ed7: f0 09     beq   $1ee2
1ed9: e8 00     mov   a,#$00
1edb: 8d 03     mov   y,#$03
1edd: 9b 90     dec   $90+x
1edf: 3f 68 1f  call  $1f68
1ee2: fb c1     mov   y,$c1+x
1ee4: f0 23     beq   $1f09
1ee6: f5 e0 02  mov   a,$02e0+x
1ee9: de c0 1b  cbne  $c0+x,$1f07
1eec: 09 47 5e  or    ($5e),($47)
1eef: f5 d0 02  mov   a,$02d0+x
1ef2: 10 07     bpl   $1efb
1ef4: fc        inc   y
1ef5: d0 04     bne   $1efb
1ef7: e8 80     mov   a,#$80
1ef9: 2f 04     bra   $1eff
1efb: 60        clrc
1efc: 95 d1 02  adc   a,$02d1+x
1eff: d5 d0 02  mov   $02d0+x,a
1f02: 3f ef 20  call  $20ef
1f05: 2f 07     bra   $1f0e
1f07: bb c0     inc   $c0+x
1f09: e8 ff     mov   a,#$ff
1f0b: 3f fa 20  call  $20fa
1f0e: f4 91     mov   a,$91+x
1f10: f0 09     beq   $1f1b
1f12: e8 30     mov   a,#$30
1f14: 8d 03     mov   y,#$03
1f16: 9b 91     dec   $91+x
1f18: 3f 68 1f  call  $1f68
1f1b: e4 47     mov   a,$47
1f1d: 24 5e     and   a,$5e
1f1f: f0 46     beq   $1f67
1f21: f5 31 03  mov   a,$0331+x
1f24: fd        mov   y,a
1f25: f5 30 03  mov   a,$0330+x
1f28: da 10     movw  $10,ya
1f2a: 7d        mov   a,x
1f2b: 9f        xcn   a
1f2c: 5c        lsr   a
1f2d: c4 12     mov   $12,a
1f2f: eb 11     mov   y,$11
1f31: f6 0d 21  mov   a,$210d+y
1f34: 80        setc
1f35: b6 0c 21  sbc   a,$210c+y
1f38: eb 10     mov   y,$10
1f3a: cf        mul   ya
1f3b: dd        mov   a,y
1f3c: eb 11     mov   y,$11
1f3e: 60        clrc
1f3f: 96 0c 21  adc   a,$210c+y
1f42: fd        mov   y,a
1f43: f5 21 03  mov   a,$0321+x
1f46: cf        mul   ya
1f47: f5 51 03  mov   a,$0351+x
1f4a: 1c        asl   a
1f4b: 13 12 01  bbc0  $12,$1f4f
1f4e: 1c        asl   a
1f4f: dd        mov   a,y
1f50: 90 03     bcc   $1f55
1f52: 48 ff     eor   a,#$ff
1f54: bc        inc   a
1f55: eb 12     mov   y,$12
1f57: 3f f1 09  call  $09f1
1f5a: 8d 14     mov   y,#$14
1f5c: e8 00     mov   a,#$00
1f5e: 9a 10     subw  ya,$10
1f60: da 10     movw  $10,ya
1f62: ab 12     inc   $12
1f64: 33 12 c8  bbc1  $12,$1f2f
1f67: 6f        ret

1f68: 09 47 5e  or    ($5e),($47)
1f6b: da 14     movw  $14,ya
1f6d: da 16     movw  $16,ya
1f6f: 4d        push  x
1f70: ee        pop   y
1f71: 60        clrc
1f72: d0 0a     bne   $1f7e
1f74: 98 1f 16  adc   $16,#$1f
1f77: e8 00     mov   a,#$00
1f79: d7 14     mov   ($14)+y,a
1f7b: fc        inc   y
1f7c: 2f 09     bra   $1f87
1f7e: 98 10 16  adc   $16,#$10
1f81: 3f 85 1f  call  $1f85
1f84: fc        inc   y
1f85: f7 14     mov   a,($14)+y
1f87: 97 16     adc   a,($16)+y
1f89: d7 14     mov   ($14)+y,a
1f8b: 6f        ret

1f8c: f4 71     mov   a,$71+x
1f8e: f0 63     beq   $1ff3
1f90: 9b 71     dec   $71+x
1f92: f0 05     beq   $1f99
1f94: e8 02     mov   a,#$02
1f96: de 70 5a  cbne  $70+x,$1ff3
1f99: f4 80     mov   a,$80+x
1f9b: c4 17     mov   $17,a
1f9d: f4 30     mov   a,$30+x
1f9f: fb 31     mov   y,$31+x
1fa1: da 14     movw  $14,ya
1fa3: 8d 00     mov   y,#$00
1fa5: f7 14     mov   a,($14)+y
1fa7: f0 1c     beq   $1fc5
1fa9: 30 05     bmi   $1fb0
1fab: fc        inc   y
1fac: f7 14     mov   a,($14)+y
1fae: 10 fb     bpl   $1fab
1fb0: 68 c8     cmp   a,#$c8
1fb2: f0 3f     beq   $1ff3
1fb4: 68 ef     cmp   a,#$ef
1fb6: f0 29     beq   $1fe1
1fb8: 68 e0     cmp   a,#$e0
1fba: 90 30     bcc   $1fec
1fbc: 6d        push  y
1fbd: fd        mov   y,a
1fbe: ae        pop   a
1fbf: 96 d6 1d  adc   a,$1dd6+y
1fc2: fd        mov   y,a
1fc3: 2f e0     bra   $1fa5
1fc5: e4 17     mov   a,$17
1fc7: f0 23     beq   $1fec
1fc9: 8b 17     dec   $17
1fcb: d0 0a     bne   $1fd7
1fcd: f5 31 02  mov   a,$0231+x
1fd0: 2d        push  a
1fd1: f5 30 02  mov   a,$0230+x
1fd4: ee        pop   y
1fd5: 2f ca     bra   $1fa1
1fd7: f5 41 02  mov   a,$0241+x
1fda: 2d        push  a
1fdb: f5 40 02  mov   a,$0240+x
1fde: ee        pop   y
1fdf: 2f c0     bra   $1fa1
1fe1: fc        inc   y
1fe2: f7 14     mov   a,($14)+y
1fe4: 2d        push  a
1fe5: fc        inc   y
1fe6: f7 14     mov   a,($14)+y
1fe8: fd        mov   y,a
1fe9: ae        pop   a
1fea: 2f b5     bra   $1fa1
1fec: e4 47     mov   a,$47
1fee: 8d 5c     mov   y,#$5c
1ff0: 3f f1 09  call  $09f1
1ff3: f2 13     clr7  $13
1ff5: f4 a0     mov   a,$a0+x
1ff7: f0 19     beq   $2012
1ff9: f4 a1     mov   a,$a1+x
1ffb: f0 04     beq   $2001
1ffd: 9b a1     dec   $a1+x
1fff: 2f 11     bra   $2012
2001: e4 1a     mov   a,$1a
2003: 24 47     and   a,$47
2005: d0 0b     bne   $2012
2007: e2 13     set7  $13
2009: e8 60     mov   a,#$60
200b: 8d 03     mov   y,#$03
200d: 9b a0     dec   $a0+x
200f: 3f 6b 1f  call  $1f6b
2012: 3f 59 1e  call  $1e59
2015: f4 b1     mov   a,$b1+x
2017: f0 4c     beq   $2065
2019: f5 b0 02  mov   a,$02b0+x
201c: de b0 44  cbne  $b0+x,$2063
201f: f5 00 01  mov   a,$0100+x
2022: 75 b1 02  cmp   a,$02b1+x
2025: d0 05     bne   $202c
2027: f5 c1 02  mov   a,$02c1+x
202a: 2f 0d     bra   $2039
202c: 40        setp
202d: bb 00     inc   $00+x
202f: 20        clrp
2030: fd        mov   y,a
2031: f0 02     beq   $2035
2033: f4 b1     mov   a,$b1+x
2035: 60        clrc
2036: 95 c0 02  adc   a,$02c0+x
2039: d4 b1     mov   $b1+x,a
203b: f5 a0 02  mov   a,$02a0+x
203e: 60        clrc
203f: 95 a1 02  adc   a,$02a1+x
2042: d5 a0 02  mov   $02a0+x,a
2045: c4 12     mov   $12,a
2047: 1c        asl   a
2048: 1c        asl   a
2049: 90 02     bcc   $204d
204b: 48 ff     eor   a,#$ff
204d: fd        mov   y,a
204e: f4 b1     mov   a,$b1+x
2050: 68 f1     cmp   a,#$f1
2052: 90 05     bcc   $2059
2054: 28 0f     and   a,#$0f
2056: cf        mul   ya
2057: 2f 04     bra   $205d
2059: cf        mul   ya
205a: dd        mov   a,y
205b: 8d 00     mov   y,#$00
205d: 3f da 20  call  $20da
2060: 5f 6e 09  jmp   $096e
2063: bb b0     inc   $b0+x
2065: e3 13 f8  bbs7  $13,$2060
2068: 6f        ret

2069: f2 13     clr7  $13
206b: f4 c1     mov   a,$c1+x
206d: f0 09     beq   $2078
206f: f5 e0 02  mov   a,$02e0+x
2072: de c0 03  cbne  $c0+x,$2078
2075: 3f e2 20  call  $20e2
2078: f5 31 03  mov   a,$0331+x
207b: fd        mov   y,a
207c: f5 30 03  mov   a,$0330+x
207f: da 10     movw  $10,ya
2081: f4 91     mov   a,$91+x
2083: f0 0a     beq   $208f
2085: f5 41 03  mov   a,$0341+x
2088: fd        mov   y,a
2089: f5 40 03  mov   a,$0340+x
208c: 3f c4 20  call  $20c4
208f: f3 13 03  bbc7  $13,$2095
2092: 3f 2a 1f  call  $1f2a
2095: f2 13     clr7  $13
2097: 3f 59 1e  call  $1e59
209a: f4 a0     mov   a,$a0+x
209c: f0 0e     beq   $20ac
209e: f4 a1     mov   a,$a1+x
20a0: d0 0a     bne   $20ac
20a2: f5 71 03  mov   a,$0371+x
20a5: fd        mov   y,a
20a6: f5 70 03  mov   a,$0370+x
20a9: 3f c4 20  call  $20c4
20ac: f4 b1     mov   a,$b1+x
20ae: f0 b5     beq   $2065
20b0: f5 b0 02  mov   a,$02b0+x
20b3: de b0 af  cbne  $b0+x,$2065
20b6: eb 51     mov   y,$51
20b8: f5 a1 02  mov   a,$02a1+x
20bb: cf        mul   ya
20bc: dd        mov   a,y
20bd: 60        clrc
20be: 95 a0 02  adc   a,$02a0+x
20c1: 5f 45 20  jmp   $2045

20c4: e2 13     set7  $13
20c6: cb 12     mov   $12,y
20c8: 3f 76 1e  call  $1e76
20cb: 6d        push  y
20cc: eb 51     mov   y,$51
20ce: cf        mul   ya
20cf: cb 14     mov   $14,y
20d1: 8f 00 15  mov   $15,#$00
20d4: eb 51     mov   y,$51
20d6: ae        pop   a
20d7: cf        mul   ya
20d8: 7a 14     addw  ya,$14
20da: 3f 76 1e  call  $1e76
20dd: 7a 10     addw  ya,$10
20df: da 10     movw  $10,ya
20e1: 6f        ret

20e2: e2 13     set7  $13
20e4: eb 51     mov   y,$51
20e6: f5 d1 02  mov   a,$02d1+x
20e9: cf        mul   ya
20ea: dd        mov   a,y
20eb: 60        clrc
20ec: 95 d0 02  adc   a,$02d0+x
20ef: 1c        asl   a
20f0: 90 02     bcc   $20f4
20f2: 48 ff     eor   a,#$ff
20f4: fb c1     mov   y,$c1+x
20f6: cf        mul   ya
20f7: dd        mov   a,y
20f8: 48 ff     eor   a,#$ff
20fa: eb 59     mov   y,$59
20fc: cf        mul   ya
20fd: f5 10 02  mov   a,$0210+x
2100: cf        mul   ya
2101: f5 01 03  mov   a,$0301+x
2104: cf        mul   ya
2105: dd        mov   a,y
2106: cf        mul   ya
2107: dd        mov   a,y
2108: d5 21 03  mov   $0321+x,a
210b: 6f        ret

210c: db $00,$01,$03,$07,$0d,$15,$1e,$29
2114: db $34,$42,$51,$5e,$67,$6e,$73,$77
211c: db $7a,$7c,$7d,$7e,$7f

2121: db $7f,$00,$00,$00,$00,$00,$00,$00
2129: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
2131: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
2139: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

2141: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
214b: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

2155: dw $085f
2157: dw $08de
2159: dw $0965
215b: dw $09f4
215d: dw $0a8c
215f: dw $0b2c
2161: dw $0bd6
2163: dw $0c8b
2165: dw $0d4a
2167: dw $0e14
2169: dw $0eea
216b: dw $0fcd
216d: dw $10be