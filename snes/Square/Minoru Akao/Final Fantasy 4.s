0800: 20        clrp                    ; clear direct page flag
0801: c0        di                      ; disable interrupts
0802: cd cf     mov   x,#$cf
0804: bd        mov   sp,x              ; set stack pointer to $CF
0805: e8 00     mov   a,#$00
0807: 5d        mov   x,a
0808: af        mov   (x)+,a
0809: c8 e0     cmp   x,#$e0            ; zero $00-$DF
080b: d0 fb     bne   $0808
080d: a2 8a     set5  $8a
080f: 8f 01 7a  mov   $7a,#$01          ; set $7A to #$01
0812: 3f 82 10  call  $1082
0815: e8 00     mov   a,#$00
0817: 8d 0c     mov   y,#$0c
0819: 3f e9 10  call  $10e9             ; set master volume L = 0
081c: 8d 1c     mov   y,#$1c
081e: 3f e9 10  call  $10e9             ; set master volume R = 0
0821: 8d 2d     mov   y,#$2d
0823: 3f e9 10  call  $10e9             ; clear pitch mod bits
0826: 8d 3d     mov   y,#$3d
0828: 3f e9 10  call  $10e9             ; clear noise bits
082b: e8 1e     mov   a,#$1e
082d: 8d 5d     mov   y,#$5d
082f: 3f e9 10  call  $10e9             ; set sample directory to $1E00
0832: e8 f0     mov   a,#$f0
0834: c4 f1     mov   $f1,a             ; clear ports, stop timers
0836: e8 24     mov   a,#$24
0838: c4 fa     mov   $fa,a             ; set timer 0 latch to #$24 (222.2 Hz)
083a: e8 80     mov   a,#$80
083c: c4 fb     mov   $fb,a             ; set timer 1 latch to #$80 (62.5 Hz)
083e: e8 03     mov   a,#$03
0840: c4 f1     mov   $f1,a             ; start timers 0 and 1
0842: e8 40     mov   a,#$40
0844: 8d 0c     mov   y,#$0c
0846: 3f e9 10  call  $10e9             ; set master volume L = 50%
0849: 8d 1c     mov   y,#$1c
084b: 3f e9 10  call  $10e9             ; set master volume R = 50%
084e: e8 00     mov   a,#$00
0850: c5 01 02  mov   $0201,a
0853: e8 00     mov   a,#$00
0855: c4 02     mov   $02,a
0857: e8 19     mov   a,#$19
0859: c4 03     mov   $03,a
085b: e8 ff     mov   a,#$ff
085d: c4 37     mov   $37,a
085f: c4 38     mov   $38,a
; begin main idle loop
0861: e3 7b 07  bbs7  $7b,$086b
0864: e4 8a     mov   a,$8a
0866: 8d 6c     mov   y,#$6c
0868: 3f e9 10  call  $10e9             ; set voice control from $8A
086b: 69 7a 7b  cmp   ($7b),($7a)
086e: f0 08     beq   $0878
0870: eb fe     mov   y,$fe
0872: f0 fc     beq   $0870
0874: ab 7b     inc   $7b
0876: 2f e9     bra   $0861
0878: e4 40     mov   a,$40
087a: 5c        lsr   a
087b: 8d 2c     mov   y,#$2c
087d: 3f e9 10  call  $10e9             ; set echo volume L from $40 / 2
0880: 8d 3c     mov   y,#$3c
0882: 3f e9 10  call  $10e9             ; set echo volume R from $40 / 2
0885: e4 79     mov   a,$79
0887: 8d 0d     mov   y,#$0d
0889: 3f e9 10  call  $10e9             ; set echo feedback bits from $79
088c: e4 7e     mov   a,$7e
088e: 8d 4d     mov   y,#$4d
0890: 3f e9 10  call  $10e9             ; set echo enable bits from $7E
0893: e4 fd     mov   a,$fd             ; get counter 0 value
0895: 0d        push  psw
0896: 3f c2 13  call  $13c2             ; process commands from main CPU
0899: 8e        pop   psw
089a: f0 f7     beq   $0893             ; call it till we get a nonzero timer
089c: e4 89     mov   a,$89
089e: 8d 5c     mov   y,#$5c
08a0: 3f e9 10  call  $10e9             ; set key-off bits from $89
08a3: e4 88     mov   a,$88
08a5: 8d 4c     mov   y,#$4c
08a7: 3f e9 10  call  $10e9             ; set key-on  bits from $88
08aa: 8f 00 88  mov   $88,#$00
08ad: 8f 00 89  mov   $89,#$00
08b0: fa 43 28  mov   ($28),($43)
08b3: 60        clrc
08b4: ba 46     movw  ya,$46
08b6: f0 31     beq   $08e9
08b8: 30 0c     bmi   $08c6
08ba: 7a 42     addw  ya,$42
08bc: 90 22     bcc   $08e0
08be: ba 00     movw  ya,$00
08c0: da 46     movw  $46,ya
08c2: 9c        dec   a
08c3: dc        dec   y
08c4: 2f 1a     bra   $08e0
08c6: 68 a0     cmp   a,#$a0
08c8: b0 0a     bcs   $08d4
08ca: 7a 42     addw  ya,$42
08cc: b0 12     bcs   $08e0
08ce: ba 00     movw  ya,$00
08d0: da 46     movw  $46,ya
08d2: 2f 0c     bra   $08e0
08d4: 7a 42     addw  ya,$42
08d6: ad 80     cmp   y,#$80
08d8: b0 06     bcs   $08e0
08da: ba 00     movw  ya,$00
08dc: da 46     movw  $46,ya
08de: 8d 80     mov   y,#$80
08e0: da 42     movw  $42,ya
08e2: 7e 28     cmp   y,$28
08e4: f0 03     beq   $08e9
08e6: 8f ff 8b  mov   $8b,#$ff
08e9: 3f ef 08  call  $08ef
08ec: 5f 61 08  jmp   $0861

08ef: e4 37     mov   a,$37
08f1: 60        clrc
08f2: 84 38     adc   a,$38
08f4: c4 38     mov   $38,a
08f6: 90 6f     bcc   $0967
08f8: cd 00     mov   x,#$00
08fa: 8f 01 8d  mov   $8d,#$01
08fd: f4 03     mov   a,$03+x
08ff: f0 52     beq   $0953
0901: d8 27     mov   $27,x
0903: 9b 48     dec   $48+x
0905: d0 03     bne   $090a
0907: 3f cd 09  call  $09cd
090a: e4 8d     mov   a,$8d
090c: 24 78     and   a,$78
090e: d0 40     bne   $0950
0910: f5 01 03  mov   a,$0301+x
0913: f0 22     beq   $0937
0915: f4 68     mov   a,$68+x
0917: fb 69     mov   y,$69+x
0919: da 28     movw  $28,ya
091b: 1a 28     decw  $28
091d: ba 28     movw  ya,$28
091f: d4 68     mov   $68+x,a
0921: db 69     mov   $69+x,y
0923: d0 12     bne   $0937
0925: 7d        mov   a,x
0926: 9f        xcn   a
0927: 5c        lsr   a
0928: 08 07     or    a,#$07
092a: fd        mov   y,a
092b: e8 b1     mov   a,#$b1
092d: 3f e9 10  call  $10e9
0930: dc        dec   y
0931: dc        dec   y
0932: e8 00     mov   a,#$00
0934: 3f e9 10  call  $10e9
0937: e8 01     mov   a,#$01
0939: de 48 14  cbne  $48+x,$0950
093c: f4 02     mov   a,$02+x
093e: fb 03     mov   y,$03+x
0940: da 22     movw  $22,ya
0942: 3f 90 0c  call  $0c90
0945: 68 c3     cmp   a,#$c3
0947: 90 04     bcc   $094d
0949: 68 d2     cmp   a,#$d2
094b: 90 03     bcc   $0950
094d: 09 8d 89  or    ($89),($8d)
0950: 3f ee 10  call  $10ee
0953: 3d        inc   x
0954: 3d        inc   x
0955: 0b 8d     asl   $8d
0957: d0 a4     bne   $08fd
0959: ba 3a     movw  ya,$3a
095b: f0 1e     beq   $097b
095d: 1a 3a     decw  $3a
095f: ba 36     movw  ya,$36
0961: 7a 3c     addw  ya,$3c
0963: da 36     movw  $36,ya
0965: 2f 14     bra   $097b
0967: cd 00     mov   x,#$00
0969: 8f 01 8d  mov   $8d,#$01
096c: f4 03     mov   a,$03+x
096e: f0 05     beq   $0975
0970: d8 27     mov   $27,x
0972: 3f d0 11  call  $11d0
0975: 3d        inc   x
0976: 3d        inc   x
0977: 0b 8d     asl   $8d
0979: d0 f1     bne   $096c
097b: e8 78     mov   a,#$78
097d: 60        clrc
097e: 84 39     adc   a,$39
0980: c4 39     mov   $39,a
0982: 90 34     bcc   $09b8
0984: cd 1a     mov   x,#$1a
0986: 8f 20 8d  mov   $8d,#$20
0989: f4 03     mov   a,$03+x
098b: f0 25     beq   $09b2
098d: d8 27     mov   $27,x
098f: 9b 48     dec   $48+x
0991: d0 03     bne   $0996
0993: 3f cd 09  call  $09cd
0996: e8 01     mov   a,#$01
0998: de 48 14  cbne  $48+x,$09af
099b: f4 02     mov   a,$02+x
099d: fb 03     mov   y,$03+x
099f: da 22     movw  $22,ya
09a1: 3f 90 0c  call  $0c90
09a4: 68 c3     cmp   a,#$c3
09a6: 90 04     bcc   $09ac
09a8: 68 d2     cmp   a,#$d2
09aa: 90 03     bcc   $09af
09ac: 09 8d 89  or    ($89),($8d)
09af: 3f 22 11  call  $1122
09b2: 3d        inc   x
09b3: 3d        inc   x
09b4: 0b 8d     asl   $8d
09b6: d0 d1     bne   $0989
09b8: cd 1a     mov   x,#$1a
09ba: 8f 20 8d  mov   $8d,#$20
09bd: f4 03     mov   a,$03+x
09bf: f0 05     beq   $09c6
09c1: d8 27     mov   $27,x
09c3: 3f d0 11  call  $11d0
09c6: 3d        inc   x
09c7: 3d        inc   x
09c8: 0b 8d     asl   $8d
09ca: d0 f1     bne   $09bd
09cc: 6f        ret

09cd: 3f 85 0c  call  $0c85
09d0: 68 d2     cmp   a,#$d2
09d2: 90 05     bcc   $09d9
09d4: 3f 70 0c  call  $0c70
09d7: 2f f4     bra   $09cd
09d9: 8d 00     mov   y,#$00
09db: cd 0f     mov   x,#$0f
09dd: 9e        div   ya,x
09de: f8 27     mov   x,$27
09e0: c4 26     mov   $26,a
09e2: f6 b1 18  mov   a,$18b1+y
09e5: d4 48     mov   $48+x,a
09e7: c4 28     mov   $28,a
09e9: 8f 00 29  mov   $29,#$00
09ec: 78 0c 26  cmp   $26,#$0c
09ef: b0 0a     bcs   $09fb
09f1: c8 10     cmp   x,#$10
09f3: b0 46     bcs   $0a3b
09f5: e4 8d     mov   a,$8d
09f7: 24 78     and   a,$78
09f9: f0 01     beq   $09fc
09fb: 6f        ret

09fc: f4 02     mov   a,$02+x
09fe: fb 03     mov   y,$03+x
0a00: da 22     movw  $22,ya
0a02: 3f 90 0c  call  $0c90
0a05: 68 c3     cmp   a,#$c3
0a07: 90 16     bcc   $0a1f
0a09: 68 d2     cmp   a,#$d2
0a0b: b0 12     bcs   $0a1f
0a0d: cd 0f     mov   x,#$0f
0a0f: 8d 00     mov   y,#$00
0a11: 9e        div   ya,x
0a12: f8 27     mov   x,$27
0a14: f6 b1 18  mov   a,$18b1+y
0a17: 8d 00     mov   y,#$00
0a19: 7a 28     addw  ya,$28
0a1b: da 28     movw  $28,ya
0a1d: 2f e3     bra   $0a02
0a1f: f5 01 03  mov   a,$0301+x
0a22: d0 04     bne   $0a28
0a24: ba 28     movw  ya,$28
0a26: 2f 0f     bra   $0a37
0a28: 2d        push  a
0a29: eb 29     mov   y,$29
0a2b: cf        mul   ya
0a2c: da 2a     movw  $2a,ya
0a2e: ae        pop   a
0a2f: eb 28     mov   y,$28
0a31: cf        mul   ya
0a32: dd        mov   a,y
0a33: 8d 00     mov   y,#$00
0a35: 7a 2a     addw  ya,$2a
0a37: d4 68     mov   $68+x,a
0a39: db 69     mov   $69+x,y
0a3b: 8f 00 2c  mov   $2c,#$00
0a3e: f5 c0 02  mov   a,$02c0+x
0a41: 8d 0c     mov   y,#$0c
0a43: cf        mul   ya
0a44: 60        clrc
0a45: 84 26     adc   a,$26
0a47: c4 8e     mov   $8e,a
0a49: 80        setc
0a4a: a8 0a     sbc   a,#$0a
0a4c: 10 05     bpl   $0a53
0a4e: 60        clrc
0a4f: ab 2c     inc   $2c
0a51: 88 0c     adc   a,#$0c
0a53: cd 0c     mov   x,#$0c
0a55: 9e        div   ya,x
0a56: f8 27     mov   x,$27
0a58: c4 2d     mov   $2d,a
0a5a: dd        mov   a,y
0a5b: 1c        asl   a
0a5c: fd        mov   y,a
0a5d: f6 77 18  mov   a,$1877+y
0a60: c4 28     mov   $28,a
0a62: f6 78 18  mov   a,$1878+y
0a65: c4 29     mov   $29,a
0a67: e4 2c     mov   a,$2c
0a69: f0 04     beq   $0a6f
0a6b: 4b 29     lsr   $29
0a6d: 6b 28     ror   $28
0a6f: e8 04     mov   a,#$04
0a71: 64 2d     cmp   a,$2d
0a73: b0 0f     bcs   $0a84
0a75: bc        inc   a
0a76: 0b 28     asl   $28
0a78: 2b 29     rol   $29
0a7a: 2e 2d f8  cbne  $2d,$0a75
0a7d: 2f 08     bra   $0a87
0a7f: 9c        dec   a
0a80: 4b 29     lsr   $29
0a82: 6b 28     ror   $28
0a84: 2e 2d f8  cbne  $2d,$0a7f
0a87: f5 00 03  mov   a,$0300+x
0a8a: 0d        push  psw
0a8b: 2d        push  a
0a8c: eb 29     mov   y,$29
0a8e: cf        mul   ya
0a8f: da 2a     movw  $2a,ya
0a91: ae        pop   a
0a92: eb 28     mov   y,$28
0a94: cf        mul   ya
0a95: dd        mov   a,y
0a96: 8d 00     mov   y,#$00
0a98: 7a 2a     addw  ya,$2a
0a9a: da 2a     movw  $2a,ya
0a9c: 8e        pop   psw
0a9d: 30 04     bmi   $0aa3
0a9f: 7a 28     addw  ya,$28
0aa1: da 2a     movw  $2a,ya
0aa3: e4 2a     mov   a,$2a
0aa5: d5 a0 02  mov   $02a0+x,a
0aa8: e4 2b     mov   a,$2b
0aaa: d5 a1 02  mov   $02a1+x,a
0aad: 8f 0c 30  mov   $30,#$0c
0ab0: 8f 00 31  mov   $31,#$00
0ab3: f5 61 04  mov   a,$0461+x
0ab6: d0 03     bne   $0abb
0ab8: 5f b0 0b  jmp   $0bb0

0abb: 0d        push  psw
0abc: c8 10     cmp   x,#$10
0abe: 90 5a     bcc   $0b1a
0ac0: 8e        pop   psw
0ac1: 10 12     bpl   $0ad5
0ac3: 4b 2b     lsr   $2b
0ac5: 6b 2a     ror   $2a
0ac7: 60        clrc
0ac8: 88 0c     adc   a,#$0c
0aca: 90 f7     bcc   $0ac3
0acc: 2f 0b     bra   $0ad9
0ace: 0b 2a     asl   $2a
0ad0: 2b 2b     rol   $2b
0ad2: 80        setc
0ad3: a8 0c     sbc   a,#$0c
0ad5: 68 0c     cmp   a,#$0c
0ad7: b0 f5     bcs   $0ace
0ad9: c4 2c     mov   $2c,a
0adb: fa 2a 32  mov   ($32),($2a)
0ade: fa 2b 33  mov   ($33),($2b)
0ae1: 3f c7 10  call  $10c7
0ae4: e4 32     mov   a,$32
0ae6: eb 2c     mov   y,$2c
0ae8: cf        mul   ya
0ae9: da 28     movw  $28,ya
0aeb: e4 33     mov   a,$33
0aed: eb 2c     mov   y,$2c
0aef: cf        mul   ya
0af0: 8d 00     mov   y,#$00
0af2: 7a 28     addw  ya,$28
0af4: 7a 2a     addw  ya,$2a
0af6: da 28     movw  $28,ya
0af8: f5 a1 02  mov   a,$02a1+x
0afb: fd        mov   y,a
0afc: f5 a0 02  mov   a,$02a0+x
0aff: 9a 28     subw  ya,$28
0b01: da 28     movw  $28,ya
0b03: 10 08     bpl   $0b0d
0b05: 58 ff 28  eor   $28,#$ff
0b08: 58 ff 29  eor   $29,#$ff
0b0b: 3a 28     incw  $28
0b0d: e4 28     mov   a,$28
0b0f: d5 40 06  mov   $0640+x,a
0b12: e4 29     mov   a,$29
0b14: d5 41 06  mov   $0641+x,a
0b17: 5f 9c 0b  jmp   $0b9c

0b1a: 8e        pop   psw
0b1b: 8f 00 2c  mov   $2c,#$00
0b1e: 60        clrc
0b1f: 84 8e     adc   a,$8e
0b21: 80        setc
0b22: a8 0a     sbc   a,#$0a
0b24: 10 05     bpl   $0b2b
0b26: 60        clrc
0b27: ab 2c     inc   $2c
0b29: 88 0c     adc   a,#$0c
0b2b: cd 0c     mov   x,#$0c
0b2d: 8d 00     mov   y,#$00
0b2f: 9e        div   ya,x
0b30: f8 27     mov   x,$27
0b32: c4 2d     mov   $2d,a
0b34: dd        mov   a,y
0b35: 1c        asl   a
0b36: fd        mov   y,a
0b37: f6 77 18  mov   a,$1877+y
0b3a: c4 28     mov   $28,a
0b3c: f6 78 18  mov   a,$1878+y
0b3f: c4 29     mov   $29,a
0b41: e4 2c     mov   a,$2c
0b43: f0 04     beq   $0b49
0b45: 4b 29     lsr   $29
0b47: 6b 28     ror   $28
0b49: e8 04     mov   a,#$04
0b4b: 64 2d     cmp   a,$2d
0b4d: b0 0f     bcs   $0b5e
0b4f: bc        inc   a
0b50: 0b 28     asl   $28
0b52: 2b 29     rol   $29
0b54: 2e 2d f8  cbne  $2d,$0b4f
0b57: 2f 08     bra   $0b61
0b59: 9c        dec   a
0b5a: 4b 29     lsr   $29
0b5c: 6b 28     ror   $28
0b5e: 2e 2d f8  cbne  $2d,$0b59
0b61: f5 00 03  mov   a,$0300+x
0b64: 0d        push  psw
0b65: 2d        push  a
0b66: eb 29     mov   y,$29
0b68: cf        mul   ya
0b69: da 2a     movw  $2a,ya
0b6b: ae        pop   a
0b6c: eb 28     mov   y,$28
0b6e: cf        mul   ya
0b6f: dd        mov   a,y
0b70: 8d 00     mov   y,#$00
0b72: 7a 2a     addw  ya,$2a
0b74: da 2a     movw  $2a,ya
0b76: 8e        pop   psw
0b77: 30 04     bmi   $0b7d
0b79: 7a 28     addw  ya,$28
0b7b: da 2a     movw  $2a,ya
0b7d: f5 a1 02  mov   a,$02a1+x
0b80: fd        mov   y,a
0b81: f5 a0 02  mov   a,$02a0+x
0b84: 9a 2a     subw  ya,$2a
0b86: da 2a     movw  $2a,ya
0b88: 10 08     bpl   $0b92
0b8a: 58 ff 2a  eor   $2a,#$ff
0b8d: 58 ff 2b  eor   $2b,#$ff
0b90: 3a 2a     incw  $2a
0b92: e4 2a     mov   a,$2a
0b94: d5 40 06  mov   $0640+x,a
0b97: e4 2b     mov   a,$2b
0b99: d5 41 06  mov   $0641+x,a
0b9c: f5 21 04  mov   a,$0421+x
0b9f: d5 40 04  mov   $0440+x,a
0ba2: f5 41 04  mov   a,$0441+x
0ba5: d5 60 04  mov   $0460+x,a
0ba8: e8 00     mov   a,#$00
0baa: d5 20 06  mov   $0620+x,a
0bad: d5 21 06  mov   $0621+x,a
0bb0: f5 01 04  mov   a,$0401+x
0bb3: f0 32     beq   $0be7
0bb5: f5 a1 02  mov   a,$02a1+x
0bb8: fd        mov   y,a
0bb9: f5 a0 02  mov   a,$02a0+x
0bbc: da 32     movw  $32,ya
0bbe: 3f c7 10  call  $10c7
0bc1: ba 32     movw  ya,$32
0bc3: d5 c0 05  mov   $05c0+x,a
0bc6: dd        mov   a,y
0bc7: d5 c1 05  mov   $05c1+x,a
0bca: f5 e1 03  mov   a,$03e1+x
0bcd: d5 00 04  mov   $0400+x,a
0bd0: f5 60 05  mov   a,$0560+x
0bd3: d5 a0 05  mov   $05a0+x,a
0bd6: f5 61 05  mov   a,$0561+x
0bd9: d5 a1 05  mov   $05a1+x,a
0bdc: f5 01 04  mov   a,$0401+x
0bdf: d5 20 04  mov   $0420+x,a
0be2: e8 01     mov   a,#$01
0be4: d5 80 04  mov   $0480+x,a
0be7: e8 00     mov   a,#$00
0be9: d5 40 05  mov   $0540+x,a
0bec: d5 41 05  mov   $0541+x,a
0bef: d5 e0 04  mov   $04e0+x,a
0bf2: d5 e1 04  mov   $04e1+x,a
0bf5: d5 60 06  mov   $0660+x,a
0bf8: d5 61 06  mov   $0661+x,a
0bfb: d5 e0 05  mov   $05e0+x,a
0bfe: d5 e1 05  mov   $05e1+x,a
0c01: d5 60 03  mov   $0360+x,a
0c04: bc        inc   a
0c05: d4 49     mov   $49+x,a
0c07: f5 c1 03  mov   a,$03c1+x
0c0a: f0 15     beq   $0c21
0c0c: d5 e0 03  mov   $03e0+x,a
0c0f: f5 a1 03  mov   a,$03a1+x
0c12: d5 c0 03  mov   $03c0+x,a
0c15: f5 00 05  mov   a,$0500+x
0c18: d5 20 05  mov   $0520+x,a
0c1b: f5 01 05  mov   a,$0501+x
0c1e: d5 21 05  mov   $0521+x,a
0c21: f5 81 03  mov   a,$0381+x
0c24: f0 16     beq   $0c3c
0c26: 5c        lsr   a
0c27: d5 a0 03  mov   $03a0+x,a
0c2a: f5 61 03  mov   a,$0361+x
0c2d: d5 80 03  mov   $0380+x,a
0c30: f5 a0 04  mov   a,$04a0+x
0c33: d5 c0 04  mov   $04c0+x,a
0c36: f5 a1 04  mov   a,$04a1+x
0c39: d5 c1 04  mov   $04c1+x,a
0c3c: f5 20 03  mov   a,$0320+x
0c3f: d5 40 03  mov   $0340+x,a
0c42: f5 21 03  mov   a,$0321+x
0c45: d5 41 03  mov   $0341+x,a
0c48: 09 8d 88  or    ($88),($8d)
0c4b: 09 8d 8b  or    ($8b),($8d)
0c4e: 09 8d 8c  or    ($8c),($8d)
0c51: 7d        mov   a,x
0c52: 9f        xcn   a
0c53: 5c        lsr   a
0c54: 08 04     or    a,#$04
0c56: fd        mov   y,a
0c57: f5 c1 02  mov   a,$02c1+x
0c5a: 3f e9 10  call  $10e9
0c5d: fc        inc   y
0c5e: e8 ff     mov   a,#$ff
0c60: 3f e9 10  call  $10e9
0c63: fc        inc   y
0c64: e8 e0     mov   a,#$e0
0c66: 3f e9 10  call  $10e9
0c69: fc        inc   y
0c6a: f5 e1 02  mov   a,$02e1+x
0c6d: 5f e9 10  jmp   $10e9

0c70: 80        setc
0c71: a8 d2     sbc   a,#$d2
0c73: 1c        asl   a
0c74: fd        mov   y,a
0c75: f6 ee 17  mov   a,$17ee+y
0c78: 2d        push  a
0c79: f6 ed 17  mov   a,$17ed+y
0c7c: 2d        push  a
0c7d: dd        mov   a,y
0c7e: 5c        lsr   a
0c7f: fd        mov   y,a
0c80: f6 49 18  mov   a,$1849+y
0c83: f0 0a     beq   $0c8f
0c85: e7 02     mov   a,($02+x)
0c87: c4 26     mov   $26,a
0c89: bb 02     inc   $02+x
0c8b: d0 02     bne   $0c8f
0c8d: bb 03     inc   $03+x
0c8f: 6f        ret

0c90: 8d 00     mov   y,#$00
0c92: f7 22     mov   a,($22)+y
0c94: 3a 22     incw  $22
0c96: 68 d2     cmp   a,#$d2
0c98: 90 43     bcc   $0cdd
0c9a: 68 f1     cmp   a,#$f1
0c9c: f0 3f     beq   $0cdd
0c9e: 68 f4     cmp   a,#$f4
0ca0: f0 14     beq   $0cb6
0ca2: 68 f0     cmp   a,#$f0
0ca4: f0 1d     beq   $0cc3
0ca6: 80        setc
0ca7: a8 d2     sbc   a,#$d2
0ca9: fd        mov   y,a
0caa: f6 49 18  mov   a,$1849+y
0cad: fd        mov   y,a
0cae: f0 e2     beq   $0c92
0cb0: 3a 22     incw  $22
0cb2: fe fc     dbnz  y,$0cb0
0cb4: 2f dc     bra   $0c92
0cb6: f7 22     mov   a,($22)+y
0cb8: 2d        push  a
0cb9: fc        inc   y
0cba: f7 22     mov   a,($22)+y
0cbc: c4 23     mov   $23,a
0cbe: ae        pop   a
0cbf: c4 22     mov   $22,a
0cc1: 2f cd     bra   $0c90
0cc3: f5 81 06  mov   a,$0681+x
0cc6: fd        mov   y,a
0cc7: e8 01     mov   a,#$01
0cc9: 76 a0 06  cmp   a,$06a0+y
0ccc: f0 c2     beq   $0c90
0cce: dd        mov   a,y
0ccf: 1c        asl   a
0cd0: fd        mov   y,a
0cd1: f6 e0 06  mov   a,$06e0+y
0cd4: c4 22     mov   $22,a
0cd6: f6 e1 06  mov   a,$06e1+y
0cd9: c4 23     mov   $23,a
0cdb: 2f b3     bra   $0c90
0cdd: 6f        ret

; vcmd da - set octave
; vcmd e1 - increment octave
; vcmd e2 - decrement octave
0cde: f5 c0 02  mov   a,$02c0+x
0ce1: 78 e1 26  cmp   $26,#$e1
0ce4: 90 08     bcc   $0cee
0ce6: f0 03     beq   $0ceb
0ce8: 9c        dec   a
0ce9: 2f 05     bra   $0cf0
0ceb: bc        inc   a
0cec: 2f 02     bra   $0cf0
0cee: e4 26     mov   a,$26
0cf0: d5 c0 02  mov   $02c0+x,a
0cf3: 6f        ret

; vcmd d2 - set/fade tempo
0cf4: c4 30     mov   $30,a
0cf6: 3f 85 0c  call  $0c85
0cf9: c4 31     mov   $31,a
0cfb: 3f 85 0c  call  $0c85
0cfe: c8 10     cmp   x,#$10
0d00: b0 f1     bcs   $0cf3
0d02: ba 30     movw  ya,$30
0d04: d0 08     bne   $0d0e
0d06: da 32     movw  $32,ya
0d08: e4 26     mov   a,$26
0d0a: c4 37     mov   $37,a
0d0c: 2f 28     bra   $0d36
0d0e: e4 37     mov   a,$37
0d10: 64 26     cmp   a,$26
0d12: d0 06     bne   $0d1a
0d14: ba 00     movw  ya,$00
0d16: da 30     movw  $30,ya
0d18: 2f ec     bra   $0d06
0d1a: 0d        push  psw
0d1b: 80        setc
0d1c: a4 26     sbc   a,$26
0d1e: b0 03     bcs   $0d23
0d20: 48 ff     eor   a,#$ff
0d22: bc        inc   a
0d23: 8f 00 32  mov   $32,#$00
0d26: c4 33     mov   $33,a
0d28: 3f c7 10  call  $10c7
0d2b: 8e        pop   psw
0d2c: 90 08     bcc   $0d36
0d2e: 58 ff 32  eor   $32,#$ff
0d31: 58 ff 33  eor   $33,#$ff
0d34: 3a 32     incw  $32
0d36: ba 30     movw  ya,$30
0d38: c4 3a     mov   $3a,a
0d3a: cb 3b     mov   $3b,y
0d3c: ba 32     movw  ya,$32
0d3e: c4 3c     mov   $3c,a
0d40: cb 3d     mov   $3d,y
0d42: e8 00     mov   a,#$00
0d44: c4 36     mov   $36,a
0d46: 6f        ret

; vcmd d3 - nop (2 bytes)
0d47: 3f 85 0c  call  $0c85
0d4a: 3f 85 0c  call  $0c85
0d4d: 6f        ret

; vcmd d4 - echo volume
0d4e: c8 10     cmp   x,#$10
0d50: b0 fb     bcs   $0d4d
0d52: c4 41     mov   $41,a
0d54: c4 40     mov   $40,a
0d56: 6f        ret

; vcmd f2 - volume
0d57: c4 30     mov   $30,a
0d59: 3f 85 0c  call  $0c85
0d5c: c4 31     mov   $31,a
0d5e: 3f 85 0c  call  $0c85
0d61: ba 30     movw  ya,$30
0d63: d0 09     bne   $0d6e
0d65: da 32     movw  $32,ya
0d67: e4 26     mov   a,$26
0d69: d5 01 02  mov   $0201+x,a
0d6c: 2f 29     bra   $0d97
0d6e: f5 01 02  mov   a,$0201+x
0d71: 64 26     cmp   a,$26
0d73: d0 06     bne   $0d7b
0d75: ba 00     movw  ya,$00
0d77: da 30     movw  $30,ya
0d79: 2f ea     bra   $0d65
0d7b: 0d        push  psw
0d7c: 80        setc
0d7d: a4 26     sbc   a,$26
0d7f: b0 03     bcs   $0d84
0d81: 48 ff     eor   a,#$ff
0d83: bc        inc   a
0d84: 8f 00 32  mov   $32,#$00
0d87: c4 33     mov   $33,a
0d89: 3f c7 10  call  $10c7
0d8c: 8e        pop   psw
0d8d: 90 08     bcc   $0d97
0d8f: 58 ff 32  eor   $32,#$ff
0d92: 58 ff 33  eor   $33,#$ff
0d95: 3a 32     incw  $32
0d97: e4 30     mov   a,$30
0d99: d5 40 02  mov   $0240+x,a
0d9c: e4 31     mov   a,$31
0d9e: d5 41 02  mov   $0241+x,a
0da1: e4 32     mov   a,$32
0da3: d5 60 02  mov   $0260+x,a
0da6: e4 33     mov   a,$33
0da8: d5 61 02  mov   $0261+x,a
0dab: e8 00     mov   a,#$00
0dad: d5 00 02  mov   $0200+x,a
0db0: 6f        ret

; vcmd f3 - panpot
0db1: c4 30     mov   $30,a
0db3: 3f 85 0c  call  $0c85
0db6: c4 31     mov   $31,a
0db8: 3f 85 0c  call  $0c85
0dbb: ba 30     movw  ya,$30
0dbd: d0 09     bne   $0dc8
0dbf: da 32     movw  $32,ya
0dc1: e4 26     mov   a,$26
0dc3: d5 21 02  mov   $0221+x,a
0dc6: 2f 29     bra   $0df1
0dc8: f5 21 02  mov   a,$0221+x
0dcb: 64 26     cmp   a,$26
0dcd: d0 06     bne   $0dd5
0dcf: ba 00     movw  ya,$00
0dd1: da 30     movw  $30,ya
0dd3: 2f ea     bra   $0dbf
0dd5: 0d        push  psw
0dd6: 80        setc
0dd7: a4 26     sbc   a,$26
0dd9: b0 03     bcs   $0dde
0ddb: 48 ff     eor   a,#$ff
0ddd: bc        inc   a
0dde: 8f 00 32  mov   $32,#$00
0de1: c4 33     mov   $33,a
0de3: 3f c7 10  call  $10c7
0de6: 8e        pop   psw
0de7: 90 08     bcc   $0df1
0de9: 58 ff 32  eor   $32,#$ff
0dec: 58 ff 33  eor   $33,#$ff
0def: 3a 32     incw  $32
0df1: e4 30     mov   a,$30
0df3: d5 80 02  mov   $0280+x,a
0df6: e4 31     mov   a,$31
0df8: d5 81 02  mov   $0281+x,a
0dfb: e4 32     mov   a,$32
0dfd: d5 90 02  mov   $0290+x,a
0e00: e4 33     mov   a,$33
0e02: d5 91 02  mov   $0291+x,a
0e05: e8 00     mov   a,#$00
0e07: d5 20 02  mov   $0220+x,a
0e0a: 6f        ret

; vcmd d5 - echo feedback, FIR
0e0b: c4 79     mov   $79,a
0e0d: 3f 82 10  call  $1082
0e10: 3f 85 0c  call  $0c85
0e13: 1c        asl   a
0e14: 1c        asl   a
0e15: 1c        asl   a
0e16: fd        mov   y,a
0e17: cd 0f     mov   x,#$0f
0e19: f6 91 18  mov   a,$1891+y
0e1c: d8 f2     mov   $f2,x
0e1e: c4 f3     mov   $f3,a
0e20: fc        inc   y
0e21: 7d        mov   a,x
0e22: 60        clrc
0e23: 88 10     adc   a,#$10
0e25: 5d        mov   x,a
0e26: 10 f1     bpl   $0e19
0e28: f8 27     mov   x,$27
0e2a: 6f        ret

; vcmd ea - echo on
0e2b: c8 10     cmp   x,#$10
0e2d: 90 05     bcc   $0e34
0e2f: 09 8d 82  or    ($82),($8d)
0e32: 2f 03     bra   $0e37
0e34: 09 8d 81  or    ($81),($8d)
0e37: b2 8a     clr5  $8a
0e39: fa 41 40  mov   ($40),($41)
0e3c: e4 78     mov   a,$78
0e3e: 48 ff     eor   a,#$ff
0e40: 24 81     and   a,$81
0e42: 04 82     or    a,$82
0e44: c4 7e     mov   $7e,a
0e46: 6f        ret

; vcmd eb - echo off
0e47: e4 8d     mov   a,$8d
0e49: c8 10     cmp   x,#$10
0e4b: 90 05     bcc   $0e52
0e4d: 4e 82 00  tclr1 $0082
0e50: 2f 03     bra   $0e55
0e52: 4e 81 00  tclr1 $0081
0e55: ba 81     movw  ya,$81
0e57: d0 04     bne   $0e5d
0e59: c4 40     mov   $40,a
0e5b: a2 8a     set5  $8a
0e5d: 2f dd     bra   $0e3c

; vcmd d6 - pitch envelope on
0e5f: bc        inc   a
0e60: d5 21 04  mov   $0421+x,a
0e63: 3f 85 0c  call  $0c85
0e66: d5 41 04  mov   $0441+x,a
0e69: c4 30     mov   $30,a
0e6b: 3f 85 0c  call  $0c85
0e6e: d5 61 04  mov   $0461+x,a
0e71: f0 16     beq   $0e89
0e73: 8f 00 31  mov   $31,#$00
0e76: 8f ff 32  mov   $32,#$ff
0e79: 8f ff 33  mov   $33,#$ff
0e7c: 3f c7 10  call  $10c7
0e7f: e4 32     mov   a,$32
0e81: d5 00 06  mov   $0600+x,a
0e84: e4 33     mov   a,$33
0e86: d5 01 06  mov   $0601+x,a
0e89: 6f        ret

; vcmd e6 - pitch envelope off
0e8a: d5 61 04  mov   $0461+x,a
0e8d: 6f        ret

; vcmd d7 - tremolo
0e8e: bc        inc   a
0e8f: d5 a1 03  mov   $03a1+x,a
0e92: 3f 85 0c  call  $0c85
0e95: 5c        lsr   a
0e96: d5 c1 03  mov   $03c1+x,a
0e99: c4 30     mov   $30,a
0e9b: 3f 85 0c  call  $0c85
0e9e: 8f 00 31  mov   $31,#$00
0ea1: 8f 00 32  mov   $32,#$00
0ea4: c4 33     mov   $33,a
0ea6: 3f c7 10  call  $10c7
0ea9: 58 ff 32  eor   $32,#$ff
0eac: 58 ff 33  eor   $33,#$ff
0eaf: 3a 32     incw  $32
0eb1: e4 32     mov   a,$32
0eb3: d5 00 05  mov   $0500+x,a
0eb6: e4 33     mov   a,$33
0eb8: d5 01 05  mov   $0501+x,a
0ebb: 6f        ret

; vcmd e7 - tremolo off
0ebc: d5 c1 03  mov   $03c1+x,a
0ebf: 6f        ret

; vcmd d8 - vibrato
0ec0: bc        inc   a
0ec1: d5 e1 03  mov   $03e1+x,a
0ec4: 3f 85 0c  call  $0c85
0ec7: 5c        lsr   a
0ec8: d5 01 04  mov   $0401+x,a
0ecb: c4 30     mov   $30,a
0ecd: 3f 85 0c  call  $0c85
0ed0: 8f 00 31  mov   $31,#$00
0ed3: 8f 00 32  mov   $32,#$00
0ed6: c4 33     mov   $33,a
0ed8: 3f c7 10  call  $10c7
0edb: ba 32     movw  ya,$32
0edd: d5 60 05  mov   $0560+x,a
0ee0: dd        mov   a,y
0ee1: d5 61 05  mov   $0561+x,a
0ee4: 6f        ret

; vcmd e8 - vibrato off
0ee5: d5 01 04  mov   $0401+x,a
0ee8: 6f        ret

; vcmd d9 - panpot LFO
0ee9: bc        inc   a
0eea: d5 61 03  mov   $0361+x,a
0eed: 3f 85 0c  call  $0c85
0ef0: d5 81 03  mov   $0381+x,a
0ef3: 5c        lsr   a
0ef4: c4 30     mov   $30,a
0ef6: 3f 85 0c  call  $0c85
0ef9: 8f 00 31  mov   $31,#$00
0efc: 8f 00 32  mov   $32,#$00
0eff: c4 33     mov   $33,a
0f01: 3f c7 10  call  $10c7
0f04: e4 32     mov   a,$32
0f06: d5 a0 04  mov   $04a0+x,a
0f09: e4 33     mov   a,$33
0f0b: d5 a1 04  mov   $04a1+x,a
0f0e: 6f        ret

; vcmd e9 - panpot LFO off
0f0f: d5 81 03  mov   $0381+x,a
0f12: 6f        ret

; vcmd db - set instrument
0f13: d5 c1 02  mov   $02c1+x,a
0f16: fd        mov   y,a
0f17: f6 00 ff  mov   a,$ff00+y
0f1a: d5 00 03  mov   $0300+x,a
0f1d: 6f        ret

; vcmd dc
0f1e: 1c        asl   a
0f1f: fd        mov   y,a
0f20: f6 00 1d  mov   a,$1d00+y
0f23: d5 20 03  mov   $0320+x,a
0f26: f6 01 1d  mov   a,$1d01+y
0f29: d5 21 03  mov   $0321+x,a
0f2c: 6f        ret

; vcmd dd - set release rate
0f2d: 28 1f     and   a,#$1f            ; arg1 - GAIN
0f2f: fd        mov   y,a
0f30: f6 c0 18  mov   a,$18c0+y
0f33: d5 e1 02  mov   $02e1+x,a
0f36: 6f        ret

; vcmd de - set sustain rate (duration rate)
0f37: 68 64     cmp   a,#$64            ; arg1 - dur % (0-100)
0f39: f0 0e     beq   $0f49
0f3b: 90 04     bcc   $0f41
0f3d: e8 00     mov   a,#$00
0f3f: 2f 08     bra   $0f49
0f41: fd        mov   y,a
0f42: e8 00     mov   a,#$00
0f44: cd 64     mov   x,#$64
0f46: 9e        div   ya,x
0f47: f8 27     mov   x,$27
0f49: d5 01 03  mov   $0301+x,a
0f4c: 6f        ret

; vcmd df - set noise frequency
0f4d: 28 1f     and   a,#$1f
0f4f: c8 10     cmp   x,#$10
0f51: 90 06     bcc   $0f59
0f53: 02 87     set0  $87
0f55: c4 7d     mov   $7d,a
0f57: 2f 02     bra   $0f5b
0f59: c4 7c     mov   $7c,a
0f5b: e8 6c     mov   a,#$6c
0f5d: c4 f2     mov   $f2,a
0f5f: e4 f3     mov   a,$f3             ; read voice ctl register
0f61: 28 e0     and   a,#$e0            ; look at voice ctl bits
0f63: 13 87 04  bbc0  $87,$0f6a
0f66: 04 7d     or    a,$7d
0f68: 2f 02     bra   $0f6c
0f6a: 04 7c     or    a,$7c
0f6c: c4 f3     mov   $f3,a             ; set bits from 7C or 7D
0f6e: 38 e0 8a  and   $8a,#$e0
0f71: 28 1f     and   a,#$1f
0f73: 04 8a     or    a,$8a
0f75: c4 8a     mov   $8a,a
0f77: 6f        ret

; vcmd e0 - repeat start
0f78: f5 81 06  mov   a,$0681+x
0f7b: bc        inc   a
0f7c: d5 81 06  mov   $0681+x,a
0f7f: fd        mov   y,a
0f80: e4 26     mov   a,$26
0f82: f0 01     beq   $0f85
0f84: bc        inc   a
0f85: d6 a0 06  mov   $06a0+y,a
0f88: e8 00     mov   a,#$00
0f8a: d6 80 07  mov   $0780+y,a
0f8d: dd        mov   a,y
0f8e: 1c        asl   a
0f8f: fd        mov   y,a
0f90: f4 02     mov   a,$02+x
0f92: d6 e0 06  mov   $06e0+y,a
0f95: f4 03     mov   a,$03+x
0f97: d6 e1 06  mov   $06e1+y,a
0f9a: 6f        ret

; vcmd f0 - repeat end
0f9b: f5 81 06  mov   a,$0681+x
0f9e: fd        mov   y,a
0f9f: f6 a0 06  mov   a,$06a0+y
0fa2: f0 0d     beq   $0fb1
0fa4: 9c        dec   a
0fa5: d6 a0 06  mov   $06a0+y,a
0fa8: d0 07     bne   $0fb1
0faa: dc        dec   y
0fab: dd        mov   a,y
0fac: d5 81 06  mov   $0681+x,a
0faf: 2f 0d     bra   $0fbe
0fb1: dd        mov   a,y
0fb2: 1c        asl   a
0fb3: fd        mov   y,a
0fb4: f6 e0 06  mov   a,$06e0+y
0fb7: d4 02     mov   $02+x,a
0fb9: f6 e1 06  mov   a,$06e1+y
0fbc: d4 03     mov   $03+x,a
0fbe: 6f        ret

; vcmd f5 - conditional jump in repeat
0fbf: f5 81 06  mov   a,$0681+x
0fc2: fd        mov   y,a
0fc3: f6 80 07  mov   a,$0780+y
0fc6: bc        inc   a
0fc7: d6 80 07  mov   $0780+y,a
0fca: 64 26     cmp   a,$26
0fcc: f0 06     beq   $0fd4
0fce: 3f 89 0c  call  $0c89
0fd1: 5f 89 0c  jmp   $0c89

0fd4: f6 a0 06  mov   a,$06a0+y
0fd7: f0 0b     beq   $0fe4
0fd9: 9c        dec   a
0fda: d6 a0 06  mov   $06a0+y,a
0fdd: d0 05     bne   $0fe4
0fdf: dd        mov   a,y
0fe0: 9c        dec   a
0fe1: d5 81 06  mov   $0681+x,a
0fe4: 3f 85 0c  call  $0c85
0fe7: fd        mov   y,a
0fe8: 3f 85 0c  call  $0c85
0feb: db 02     mov   $02+x,y
0fed: d4 03     mov   $03+x,a
0fef: 6f        ret

; vcmd f6
0ff0: f5 60 07  mov   a,$0760+x
0ff3: d4 02     mov   $02+x,a
0ff5: f5 61 07  mov   a,$0761+x
0ff8: d4 03     mov   $03+x,a
0ffa: 6f        ret

; vcmd f4 - goto
0ffb: fd        mov   y,a
0ffc: 3f 85 0c  call  $0c85
0fff: db 02     mov   $02+x,y
1001: d4 03     mov   $03+x,a
1003: 6f        ret

; vcmd e4 - nop
1004: 6f        ret

; vcmd e5 - nop
1005: 6f        ret

; vcmd ec - noise on
1006: c8 10     cmp   x,#$10
1008: 90 05     bcc   $100f
100a: 09 8d 84  or    ($84),($8d)
100d: 2f 03     bra   $1012
100f: 09 8d 83  or    ($83),($8d)
1012: e4 78     mov   a,$78
1014: 48 ff     eor   a,#$ff
1016: 24 83     and   a,$83
1018: 04 84     or    a,$84
101a: 8d 3d     mov   y,#$3d            ; set noise enable bits from ($78 ^ #$FF)&$83|$84
101c: 5f e9 10  jmp   $10e9

; vcmd ed - noise off
101f: e4 8d     mov   a,$8d
1021: c8 10     cmp   x,#$10
1023: 90 09     bcc   $102e
1025: 4e 84 00  tclr1 $0084
1028: d0 e8     bne   $1012
102a: 12 87     clr0  $87
102c: 2f e4     bra   $1012
102e: 4e 83 00  tclr1 $0083
1031: 2f df     bra   $1012

; vcmd ee - pitch modulation on
1033: c8 10     cmp   x,#$10
1035: 90 05     bcc   $103c
1037: 09 8d 86  or    ($86),($8d)
103a: 2f 03     bra   $103f
103c: 09 8d 85  or    ($85),($8d)
103f: e4 78     mov   a,$78
1041: 48 ff     eor   a,#$ff
1043: 24 85     and   a,$85
1045: 04 86     or    a,$86
1047: 8d 2d     mov   y,#$2d            ; set pitch mod from $78^#$FF & $85 | $86
1049: 5f e9 10  jmp   $10e9

; vcmd ef - pitch modulation off
104c: e4 8d     mov   a,$8d
104e: c8 10     cmp   x,#$10
1050: 90 05     bcc   $1057
1052: 4e 86 00  tclr1 $0086
1055: 2f e8     bra   $103f
1057: 4e 85 00  tclr1 $0085
105a: 2f e3     bra   $103f
; vcmd e3 - nop
105c: 6f        ret

; vcmd f1,f7-ff - end of track
105d: ae        pop   a
105e: ae        pop   a
105f: e8 00     mov   a,#$00
1061: d4 02     mov   $02+x,a
1063: d4 03     mov   $03+x,a
1065: c8 10     cmp   x,#$10
1067: 90 18     bcc   $1081
1069: e4 8d     mov   a,$8d
106b: 4e 91 00  tclr1 $0091
106e: 4e 78 00  tclr1 $0078
1071: d0 02     bne   $1075
1073: 12 7c     clr0  $7c
1075: 3f 47 0e  call  $0e47
1078: 3f 1f 10  call  $101f
107b: 3f 5b 0f  call  $0f5b
107e: 5f 4c 10  jmp   $104c

1081: 6f        ret

1082: e8 7d     mov   a,#$7d
1084: c4 f2     mov   $f2,a
1086: e4 f3     mov   a,$f3             ; read DSP reg $7D (echo delay enable bits)
1088: 64 7a     cmp   a,$7a             ; same as $7A?
108a: f0 29     beq   $10b5             ; yes, skip register init
108c: 8f f0 7b  mov   $7b,#$f0
108f: e4 8a     mov   a,$8a
1091: 08 20     or    a,#$20
1093: 8d 6c     mov   y,#$6c
1095: 3f e9 10  call  $10e9             ; set echo off
1098: e8 00     mov   a,#$00
109a: 8d 4d     mov   y,#$4d
109c: 3f e9 10  call  $10e9             ; clear all echo enable bits
109f: 8d 0d     mov   y,#$0d
10a1: 3f e9 10  call  $10e9             ; and feedback bits
10a4: 8d 2c     mov   y,#$2c
10a6: 3f e9 10  call  $10e9             ; echo volume L = 0
10a9: 8d 3c     mov   y,#$3c
10ab: 3f e9 10  call  $10e9             ; echo volume R = 0
10ae: e4 7a     mov   a,$7a
10b0: 8d 7d     mov   y,#$7d
10b2: 3f e9 10  call  $10e9             ; set echo delay enable from $7A
10b5: e4 7a     mov   a,$7a
10b7: 1c        asl   a
10b8: 1c        asl   a
10b9: 1c        asl   a
10ba: 48 ff     eor   a,#$ff
10bc: 80        setc
10bd: 88 f8     adc   a,#$f8
10bf: 8d 6d     mov   y,#$6d
10c1: 3f e9 10  call  $10e9             ; set echo sample directory from $7A
10c4: e4 fe     mov   a,$fe             ; return value of counter 1
10c6: 6f        ret

10c7: cd 00     mov   x,#$00
10c9: d8 34     mov   $34,x
10cb: d8 35     mov   $35,x
10cd: 0b 32     asl   $32
10cf: 2b 33     rol   $33
10d1: 2b 34     rol   $34
10d3: 2b 35     rol   $35
10d5: ba 34     movw  ya,$34
10d7: 5a 30     cmpw  ya,$30
10d9: 90 06     bcc   $10e1
10db: 02 32     set0  $32
10dd: 9a 30     subw  ya,$30
10df: da 34     movw  $34,ya
10e1: 3d        inc   x
10e2: c8 10     cmp   x,#$10
10e4: d0 e7     bne   $10cd
10e6: f8 27     mov   x,$27
10e8: 6f        ret

; write A to DSP register Y
10e9: cb f2     mov   $f2,y
10eb: c4 f3     mov   $f3,a
10ed: 6f        ret

10ee: f5 81 02  mov   a,$0281+x
10f1: fd        mov   y,a
10f2: f5 80 02  mov   a,$0280+x
10f5: da 28     movw  $28,ya
10f7: ba 28     movw  ya,$28
10f9: f0 27     beq   $1122
10fb: 1a 28     decw  $28
10fd: ba 28     movw  ya,$28
10ff: d5 80 02  mov   $0280+x,a
1102: dd        mov   a,y
1103: d5 81 02  mov   $0281+x,a
1106: f5 91 02  mov   a,$0291+x
1109: fd        mov   y,a
110a: f5 90 02  mov   a,$0290+x
110d: da 28     movw  $28,ya
110f: f5 21 02  mov   a,$0221+x
1112: fd        mov   y,a
1113: f5 20 02  mov   a,$0220+x
1116: 7a 28     addw  ya,$28
1118: d5 20 02  mov   $0220+x,a
111b: dd        mov   a,y
111c: d5 21 02  mov   $0221+x,a
111f: 09 8d 8b  or    ($8b),($8d)
1122: f5 41 02  mov   a,$0241+x
1125: fd        mov   y,a
1126: f5 40 02  mov   a,$0240+x
1129: da 28     movw  $28,ya
112b: ba 28     movw  ya,$28
112d: f0 27     beq   $1156
112f: 1a 28     decw  $28
1131: ba 28     movw  ya,$28
1133: d5 40 02  mov   $0240+x,a
1136: dd        mov   a,y
1137: d5 41 02  mov   $0241+x,a
113a: f5 61 02  mov   a,$0261+x
113d: fd        mov   y,a
113e: f5 60 02  mov   a,$0260+x
1141: da 28     movw  $28,ya
1143: f5 01 02  mov   a,$0201+x
1146: fd        mov   y,a
1147: f5 00 02  mov   a,$0200+x
114a: 7a 28     addw  ya,$28
114c: d5 00 02  mov   $0200+x,a
114f: dd        mov   a,y
1150: d5 01 02  mov   $0201+x,a
1153: 09 8d 8b  or    ($8b),($8d)
1156: f5 61 04  mov   a,$0461+x
1159: f0 5a     beq   $11b5
115b: f5 40 04  mov   a,$0440+x
115e: f0 06     beq   $1166
1160: 9c        dec   a
1161: d5 40 04  mov   $0440+x,a
1164: 2f 4f     bra   $11b5
1166: f5 60 04  mov   a,$0460+x
1169: f0 4a     beq   $11b5
116b: 9c        dec   a
116c: d5 60 04  mov   $0460+x,a
116f: f5 01 06  mov   a,$0601+x
1172: fd        mov   y,a
1173: f5 00 06  mov   a,$0600+x
1176: da 28     movw  $28,ya
1178: f5 21 06  mov   a,$0621+x
117b: fd        mov   y,a
117c: f5 20 06  mov   a,$0620+x
117f: 7a 28     addw  ya,$28
1181: d5 20 06  mov   $0620+x,a
1184: dd        mov   a,y
1185: d5 21 06  mov   $0621+x,a
1188: 6d        push  y
1189: f5 41 06  mov   a,$0641+x
118c: cf        mul   ya
118d: da 28     movw  $28,ya
118f: ee        pop   y
1190: f5 40 06  mov   a,$0640+x
1193: cf        mul   ya
1194: dd        mov   a,y
1195: 8d 00     mov   y,#$00
1197: 7a 28     addw  ya,$28
1199: da 28     movw  $28,ya
119b: f5 61 04  mov   a,$0461+x
119e: 10 08     bpl   $11a8
11a0: 58 ff 28  eor   $28,#$ff
11a3: 58 ff 29  eor   $29,#$ff
11a6: 3a 28     incw  $28
11a8: e4 28     mov   a,$28
11aa: d5 60 06  mov   $0660+x,a
11ad: e4 29     mov   a,$29
11af: d5 61 06  mov   $0661+x,a
11b2: 09 8d 8c  or    ($8c),($8d)
11b5: f5 c0 03  mov   a,$03c0+x
11b8: f0 04     beq   $11be
11ba: 9c        dec   a
11bb: d5 c0 03  mov   $03c0+x,a
11be: f5 80 03  mov   a,$0380+x
11c1: f0 04     beq   $11c7
11c3: 9c        dec   a
11c4: d5 80 03  mov   $0380+x,a
11c7: f5 00 04  mov   a,$0400+x
11ca: f0 04     beq   $11d0
11cc: 9c        dec   a
11cd: d5 00 04  mov   $0400+x,a
11d0: 9b 49     dec   $49+x
11d2: d0 42     bne   $1216
11d4: e8 02     mov   a,#$02
11d6: d4 49     mov   $49+x,a
11d8: f5 40 03  mov   a,$0340+x
11db: c4 22     mov   $22,a
11dd: f5 41 03  mov   a,$0341+x
11e0: f0 34     beq   $1216
11e2: c4 23     mov   $23,a
11e4: 8d 00     mov   y,#$00
11e6: f7 22     mov   a,($22)+y
11e8: d0 1a     bne   $1204
11ea: d5 41 03  mov   $0341+x,a
11ed: c8 10     cmp   x,#$10
11ef: b0 06     bcs   $11f7
11f1: e4 8d     mov   a,$8d
11f3: 24 78     and   a,$78
11f5: d0 1f     bne   $1216
11f7: 7d        mov   a,x
11f8: 9f        xcn   a
11f9: 5c        lsr   a
11fa: 08 05     or    a,#$05
11fc: c4 f2     mov   $f2,a
11fe: e8 00     mov   a,#$00
1200: c4 f3     mov   $f3,a
1202: 2f 12     bra   $1216
1204: d5 60 03  mov   $0360+x,a
1207: 3a 22     incw  $22
1209: e4 22     mov   a,$22
120b: d5 40 03  mov   $0340+x,a
120e: e4 23     mov   a,$23
1210: d5 41 03  mov   $0341+x,a
1213: 09 8d 8b  or    ($8b),($8d)
1216: f5 c1 03  mov   a,$03c1+x
1219: f0 47     beq   $1262
121b: f5 c0 03  mov   a,$03c0+x
121e: d0 42     bne   $1262
1220: f5 20 05  mov   a,$0520+x
1223: c4 28     mov   $28,a
1225: f5 21 05  mov   a,$0521+x
1228: c4 29     mov   $29,a
122a: f5 e0 03  mov   a,$03e0+x
122d: d0 1c     bne   $124b
122f: ba 28     movw  ya,$28
1231: 48 ff     eor   a,#$ff
1233: c4 2a     mov   $2a,a
1235: dd        mov   a,y
1236: 48 ff     eor   a,#$ff
1238: c4 2b     mov   $2b,a
123a: 3a 2a     incw  $2a
123c: e4 2a     mov   a,$2a
123e: d5 20 05  mov   $0520+x,a
1241: e4 2b     mov   a,$2b
1243: d5 21 05  mov   $0521+x,a
1246: f5 c1 03  mov   a,$03c1+x
1249: 2f 01     bra   $124c
124b: 9c        dec   a
124c: d5 e0 03  mov   $03e0+x,a
124f: f5 41 05  mov   a,$0541+x
1252: fd        mov   y,a
1253: f5 40 05  mov   a,$0540+x
1256: 7a 28     addw  ya,$28
1258: d5 40 05  mov   $0540+x,a
125b: dd        mov   a,y
125c: d5 41 05  mov   $0541+x,a
125f: 09 8d 8b  or    ($8b),($8d)
1262: f5 81 03  mov   a,$0381+x
1265: f0 47     beq   $12ae
1267: f5 80 03  mov   a,$0380+x
126a: d0 42     bne   $12ae
126c: f5 c0 04  mov   a,$04c0+x
126f: c4 28     mov   $28,a
1271: f5 c1 04  mov   a,$04c1+x
1274: c4 29     mov   $29,a
1276: f5 a0 03  mov   a,$03a0+x
1279: d0 1c     bne   $1297
127b: ba 28     movw  ya,$28
127d: 48 ff     eor   a,#$ff
127f: c4 2a     mov   $2a,a
1281: dd        mov   a,y
1282: 48 ff     eor   a,#$ff
1284: c4 2b     mov   $2b,a
1286: 3a 2a     incw  $2a
1288: e4 2a     mov   a,$2a
128a: d5 c0 04  mov   $04c0+x,a
128d: e4 2b     mov   a,$2b
128f: d5 c1 04  mov   $04c1+x,a
1292: f5 81 03  mov   a,$0381+x
1295: 2f 01     bra   $1298
1297: 9c        dec   a
1298: d5 a0 03  mov   $03a0+x,a
129b: f5 e1 04  mov   a,$04e1+x
129e: fd        mov   y,a
129f: f5 e0 04  mov   a,$04e0+x
12a2: 7a 28     addw  ya,$28
12a4: d5 e0 04  mov   $04e0+x,a
12a7: dd        mov   a,y
12a8: d5 e1 04  mov   $04e1+x,a
12ab: 09 8d 8b  or    ($8b),($8d)
12ae: f5 01 04  mov   a,$0401+x
12b1: f0 76     beq   $1329
12b3: f5 00 04  mov   a,$0400+x
12b6: d0 71     bne   $1329
12b8: f5 a0 05  mov   a,$05a0+x
12bb: c4 28     mov   $28,a
12bd: f5 a1 05  mov   a,$05a1+x
12c0: c4 29     mov   $29,a
12c2: f5 20 04  mov   a,$0420+x
12c5: d0 41     bne   $1308
12c7: ba 28     movw  ya,$28
12c9: f0 0a     beq   $12d5
12cb: e8 00     mov   a,#$00
12cd: d5 a0 05  mov   $05a0+x,a
12d0: d5 a1 05  mov   $05a1+x,a
12d3: 2f 2e     bra   $1303
12d5: f5 80 04  mov   a,$0480+x
12d8: 68 08     cmp   a,#$08
12da: f0 04     beq   $12e0
12dc: bc        inc   a
12dd: d5 80 04  mov   $0480+x,a
12e0: fd        mov   y,a
12e1: f5 01 04  mov   a,$0401+x
12e4: cf        mul   ya
12e5: cd 08     mov   x,#$08
12e7: 9e        div   ya,x
12e8: f8 27     mov   x,$27
12ea: fd        mov   y,a
12eb: 2d        push  a
12ec: f5 60 05  mov   a,$0560+x
12ef: cf        mul   ya
12f0: da 2a     movw  $2a,ya
12f2: ee        pop   y
12f3: f5 61 05  mov   a,$0561+x
12f6: cf        mul   ya
12f7: fd        mov   y,a
12f8: e8 00     mov   a,#$00
12fa: 7a 2a     addw  ya,$2a
12fc: d5 a0 05  mov   $05a0+x,a
12ff: dd        mov   a,y
1300: d5 a1 05  mov   $05a1+x,a
1303: f5 01 04  mov   a,$0401+x
1306: 2f 01     bra   $1309
1308: 9c        dec   a
1309: d5 20 04  mov   $0420+x,a
130c: eb 29     mov   y,$29
130e: f5 c1 05  mov   a,$05c1+x
1311: cf        mul   ya
1312: da 2a     movw  $2a,ya
1314: eb 29     mov   y,$29
1316: f5 c0 05  mov   a,$05c0+x
1319: cf        mul   ya
131a: dd        mov   a,y
131b: 8d 00     mov   y,#$00
131d: 7a 2a     addw  ya,$2a
131f: d5 e0 05  mov   $05e0+x,a
1322: dd        mov   a,y
1323: d5 e1 05  mov   $05e1+x,a
1326: 09 8d 8c  or    ($8c),($8d)
1329: c8 10     cmp   x,#$10
132b: b0 0f     bcs   $133c
132d: e4 8d     mov   a,$8d
132f: 24 78     and   a,$78
1331: f0 09     beq   $133c
1333: e4 8d     mov   a,$8d
1335: 4e 8b 00  tclr1 $008b
1338: 4e 8c 00  tclr1 $008c
133b: 6f        ret

133c: e4 8d     mov   a,$8d
133e: 24 8b     and   a,$8b
1340: f0 44     beq   $1386
1342: 4e 8b 00  tclr1 $008b
1345: 7d        mov   a,x
1346: 9f        xcn   a
1347: 5c        lsr   a
1348: c4 28     mov   $28,a
134a: f5 01 02  mov   a,$0201+x
134d: fd        mov   y,a
134e: f5 60 03  mov   a,$0360+x
1351: cf        mul   ya
1352: f5 41 05  mov   a,$0541+x
1355: f0 01     beq   $1358
1357: cf        mul   ya
1358: c8 10     cmp   x,#$10
135a: b0 03     bcs   $135f
135c: e4 43     mov   a,$43
135e: cf        mul   ya
135f: e8 48     mov   a,#$48
1361: cf        mul   ya
1362: cb 29     mov   $29,y
1364: f5 21 02  mov   a,$0221+x
1367: 60        clrc
1368: 95 e1 04  adc   a,$04e1+x
136b: 13 90 02  bbc0  $90,$1370
136e: e8 80     mov   a,#$80
1370: c4 2a     mov   $2a,a
1372: 48 ff     eor   a,#$ff
1374: cf        mul   ya
1375: e4 28     mov   a,$28
1377: c4 f2     mov   $f2,a
1379: cb f3     mov   $f3,y
137b: ab 28     inc   $28
137d: 23 28 06  bbs1  $28,$1386
1380: eb 2a     mov   y,$2a
1382: e4 29     mov   a,$29
1384: 2f ee     bra   $1374
1386: e4 8d     mov   a,$8d
1388: 24 8c     and   a,$8c
138a: f0 35     beq   $13c1
138c: 4e 8c 00  tclr1 $008c
138f: 7d        mov   a,x
1390: 9f        xcn   a
1391: 5c        lsr   a
1392: bc        inc   a
1393: bc        inc   a
1394: c4 2a     mov   $2a,a
1396: f5 a0 02  mov   a,$02a0+x
1399: c4 28     mov   $28,a
139b: f5 a1 02  mov   a,$02a1+x
139e: c4 29     mov   $29,a
13a0: f5 61 06  mov   a,$0661+x
13a3: fd        mov   y,a
13a4: f5 60 06  mov   a,$0660+x
13a7: 7a 28     addw  ya,$28
13a9: da 28     movw  $28,ya
13ab: f5 e1 05  mov   a,$05e1+x
13ae: fd        mov   y,a
13af: f5 e0 05  mov   a,$05e0+x
13b2: 7a 28     addw  ya,$28
13b4: f8 2a     mov   x,$2a
13b6: d8 f2     mov   $f2,x
13b8: c4 f3     mov   $f3,a
13ba: 3d        inc   x
13bb: d8 f2     mov   $f2,x
13bd: cb f3     mov   $f3,y
13bf: f8 27     mov   x,$27
13c1: 6f        ret

; receive a command from the main CPU
13c2: f8 f4     mov   x,$f4
13c4: d8 8f     mov   $8f,x             ; stash a copy in $8F
13c6: f0 67     beq   $142f
13c8: c8 01     cmp   x,#$01
13ca: d0 03     bne   $13cf
13cc: 5f 32 14  jmp   $1432             ; case 1,3,4 -> $1432
13cf: c8 02     cmp   x,#$02
13d1: d0 03     bne   $13d6
13d3: 5f ad 15  jmp   $15ad             ; case 2 -> $15AD
13d6: c8 03     cmp   x,#$03
13d8: f0 f2     beq   $13cc
13da: c8 04     cmp   x,#$04
13dc: f0 ee     beq   $13cc
13de: c8 10     cmp   x,#$10
13e0: 90 07     bcc   $13e9
13e2: c8 20     cmp   x,#$20
13e4: b0 03     bcs   $13e9
13e6: 5f 53 16  jmp   $1653             ; case $10-$20 -> $1653
13e9: c8 80     cmp   x,#$80
13eb: d0 03     bne   $13f0
13ed: 5f d7 16  jmp   $16d7             ; case $80 -> 16D7
13f0: c8 85     cmp   x,#$85
13f2: d0 03     bne   $13f7
13f4: 5f e9 16  jmp   $16e9             ; case $85 -> 16E9
13f7: c8 86     cmp   x,#$86
13f9: d0 03     bne   $13fe
13fb: 5f f9 16  jmp   $16f9             ; case $86 -> 16F9
13fe: c8 87     cmp   x,#$87
1400: d0 03     bne   $1405
1402: 5f 09 17  jmp   $1709             ; case $87 -> 1709
1405: c8 88     cmp   x,#$88
1407: d0 03     bne   $140c
1409: 5f 29 17  jmp   $1729             ; case $88 -> 1729
140c: c8 89     cmp   x,#$89
140e: d0 03     bne   $1413
1410: 5f 5b 17  jmp   $175b             ; case $89 -> 175B
1413: c8 8a     cmp   x,#$8a
1415: d0 03     bne   $141a
1417: 5f 42 17  jmp   $1742             ; case $8A -> 1742
141a: c8 8b     cmp   x,#$8b
141c: d0 03     bne   $1421
141e: 5f 19 17  jmp   $1719             ; case $8B -> 1719
1421: c8 90     cmp   x,#$90
1423: d0 03     bne   $1428
1425: 5f 6b 17  jmp   $176b             ; case $90 -> 176B
1428: c8 ff     cmp   x,#$ff
142a: d0 03     bne   $142f
142c: 5f 82 17  jmp   $1782             ; case $FF -> 1782
142f: d8 f4     mov   $f4,x             ; write same value back again
1431: 6f        ret

; process commands 1,3,4 (play song)
1432: e8 00     mov   a,#$00
1434: c4 88     mov   $88,a
1436: c4 78     mov   $78,a
1438: c4 91     mov   $91,a
143a: fd        mov   y,a
143b: da 81     movw  $81,ya
143d: da 83     movw  $83,ya
143f: c4 87     mov   $87,a
1441: da 85     movw  $85,ya
1443: c4 7e     mov   $7e,a
1445: c4 7f     mov   $7f,a
1447: c4 80     mov   $80,a
1449: c4 79     mov   $79,a
144b: c4 40     mov   $40,a
144d: c4 41     mov   $41,a             ; zero lots of direct page locations
144f: 9c        dec   a
1450: c4 89     mov   $89,a             ; set $89 to #$FF
1452: e8 ff     mov   a,#$ff
1454: 8d 5c     mov   y,#$5c
1456: 3f e9 10  call  $10e9             ; set DSP key-off to #$FF
1459: 8f 00 f5  mov   $f5,#$00          ; set APU1 to 0
145c: 8f 00 22  mov   $22,#$00
145f: 8f 20 23  mov   $23,#$20          ; set $22/23 to $2000
1462: 8d 00     mov   y,#$00
1464: e4 f6     mov   a,$f6             ; read APU2
1466: d7 22     mov   ($22)+y,a         ; store in ($22)
1468: 3a 22     incw  $22
146a: d8 f4     mov   $f4,x             ; send command back as ACK to APU0
146c: 3e f4     cmp   x,$f4
146e: f0 fc     beq   $146c             ; wait for ACK ACK
1470: f8 f4     mov   x,$f4
1472: d0 f0     bne   $1464             ; keep reading till APU0 is 0
1474: e4 f5     mov   a,$f5             ; read APU1
1476: f0 1a     beq   $1492
1478: 10 0a     bpl   $1484
147a: d8 f4     mov   $f4,x
147c: 3e f4     cmp   x,$f4
147e: f0 fc     beq   $147c
1480: f8 f4     mov   x,$f4
1482: 2f 78     bra   $14fc
1484: 68 22     cmp   a,#$22
1486: f0 42     beq   $14ca
1488: d8 f4     mov   $f4,x             ; write what we got from APU0 back
148a: 3e f4     cmp   x,$f4
148c: f0 fc     beq   $148a             ; wait till APU0 changes again
148e: f8 f4     mov   x,$f4             ; remember it
1490: 2f 46     bra   $14d8
1492: e4 f5     mov   a,$f5
1494: d0 34     bne   $14ca
1496: ba f6     movw  ya,$f6
1498: da 24     movw  $24,ya
149a: d8 f4     mov   $f4,x
149c: 3e f4     cmp   x,$f4
149e: f0 fc     beq   $149c
14a0: ba f6     movw  ya,$f6
14a2: da 22     movw  $22,ya
14a4: f8 f4     mov   x,$f4
14a6: d8 f4     mov   $f4,x
14a8: 3e f4     cmp   x,$f4
14aa: f0 fc     beq   $14a8
14ac: ba f6     movw  ya,$f6
14ae: da 28     movw  $28,ya
14b0: f8 f4     mov   x,$f4
14b2: d8 f4     mov   $f4,x
14b4: 3e f4     cmp   x,$f4
14b6: f0 fc     beq   $14b4
14b8: f8 f4     mov   x,$f4
14ba: 8d 00     mov   y,#$00
14bc: f7 24     mov   a,($24)+y
14be: d7 22     mov   ($22)+y,a
14c0: 3a 24     incw  $24
14c2: 3a 22     incw  $22
14c4: 1a 28     decw  $28
14c6: d0 f4     bne   $14bc
14c8: 2f c8     bra   $1492
14ca: ba f6     movw  ya,$f6
14cc: da 22     movw  $22,ya
14ce: d8 f4     mov   $f4,x
14d0: 3e f4     cmp   x,$f4
14d2: f0 fc     beq   $14d0
14d4: f8 f4     mov   x,$f4
14d6: 2f 06     bra   $14de
14d8: 8f 00 22  mov   $22,#$00
14db: 8f 30 23  mov   $23,#$30          ; set $22/23 to $3000 (sample data)
14de: 8d 00     mov   y,#$00
14e0: e4 f5     mov   a,$f5
14e2: d7 22     mov   ($22)+y,a         ; write ($22) from APU1
14e4: 3a 22     incw  $22
14e6: e4 f6     mov   a,$f6
14e8: d7 22     mov   ($22)+y,a         ; write ($22) from APU2
14ea: 3a 22     incw  $22
14ec: e4 f7     mov   a,$f7
14ee: d7 22     mov   ($22)+y,a         ; write ($22) from APU3
14f0: 3a 22     incw  $22
14f2: d8 f4     mov   $f4,x             ; write what we got back to APU0 to ACK
14f4: 3e f4     cmp   x,$f4
14f6: f0 fc     beq   $14f4             ; wait for change in APU0
14f8: f8 f4     mov   x,$f4
14fa: d0 e4     bne   $14e0             ; loop until APU0 is zero
14fc: 8f 00 22  mov   $22,#$00
14ff: 8f 1f 23  mov   $23,#$1f          ; set $22/23 to $1F00 (source dir tbl)
1502: e4 f6     mov   a,$f6
1504: d7 22     mov   ($22)+y,a         ; write ($22) from APU2
1506: 3a 22     incw  $22
1508: e4 f7     mov   a,$f7
150a: d7 22     mov   ($22)+y,a         ; write ($22) from APU3
150c: 3a 22     incw  $22
150e: d8 f4     mov   $f4,x             ; write ACK back to APU0
1510: 3e f4     cmp   x,$f4
1512: f0 fc     beq   $1510             ; wait for change in APU0
1514: f8 f4     mov   x,$f4
1516: d0 ea     bne   $1502             ; loop until APU0 is zero
1518: 8f 40 22  mov   $22,#$40
151b: 8f ff 23  mov   $23,#$ff          ; set $22/23 to $FF40
151e: e4 f6     mov   a,$f6
1520: d7 22     mov   ($22)+y,a         ; write ($22) from APU2
1522: 3a 22     incw  $22
1524: d8 f4     mov   $f4,x             ; write ACK to APU0
1526: 3e f4     cmp   x,$f4
1528: f0 fc     beq   $1526             ; wait for change in APU0
152a: f8 f4     mov   x,$f4
152c: d0 f0     bne   $151e             ; loop until APU0 is 0
152e: d8 f4     mov   $f4,x             ; write final ACK to APU0
1530: 8d 01     mov   y,#$01
1532: cb 8d     mov   $8d,y             ; set $8D to 1
1534: cd 00     mov   x,#$00
1536: f5 00 20  mov   a,$2000+x
1539: d4 02     mov   $02+x,a
153b: f5 01 20  mov   a,$2001+x
153e: d4 03     mov   $03+x,a
1540: f0 0a     beq   $154c
1542: db 48     mov   $48+x,y
1544: 7d        mov   a,x
1545: 1c        asl   a
1546: 9c        dec   a
1547: d5 81 06  mov   $0681+x,a
154a: e8 00     mov   a,#$00
154c: d5 61 04  mov   $0461+x,a
154f: d5 01 04  mov   $0401+x,a
1552: d5 c1 03  mov   $03c1+x,a
1555: d5 81 03  mov   $0381+x,a
1558: d5 40 02  mov   $0240+x,a
155b: d5 41 02  mov   $0241+x,a
155e: d5 80 02  mov   $0280+x,a
1561: d5 81 02  mov   $0281+x,a
1564: 3d        inc   x
1565: 3d        inc   x
1566: 0b 8d     asl   $8d
1568: d0 cc     bne   $1536
156a: e8 00     mov   a,#$00
156c: d4 03     mov   $03+x,a
156e: 3d        inc   x
156f: 3d        inc   x
1570: c8 20     cmp   x,#$20
1572: d0 f8     bne   $156c
1574: 78 04 8f  cmp   $8f,#$04
1577: f0 0e     beq   $1587
1579: 8f ff 42  mov   $42,#$ff
157c: 8f ff 43  mov   $43,#$ff
157f: 8f 00 46  mov   $46,#$00
1582: 8f 00 47  mov   $47,#$00
1585: 2f 0c     bra   $1593
1587: 8f 00 42  mov   $42,#$00
158a: 8f 00 43  mov   $43,#$00
158d: 8f 70 46  mov   $46,#$70
1590: 8f 00 47  mov   $47,#$00
1593: 8f 01 37  mov   $37,#$01
1596: 8f ff 38  mov   $38,#$ff
1599: e8 ff     mov   a,#$ff
159b: 8d 5c     mov   y,#$5c
159d: 3f e9 10  call  $10e9             ; set key-off all voices
15a0: 8f 05 7a  mov   $7a,#$05
15a3: 3f 12 10  call  $1012
15a6: 3f 5b 0f  call  $0f5b
15a9: 3f 3f 10  call  $103f
15ac: 6f        ret

; process command 2 (play sfx)
15ad: d8 f4     mov   $f4,x
15af: 3e f4     cmp   x,$f4
15b1: f0 fc     beq   $15af
15b3: 8f 00 f4  mov   $f4,#$00
15b6: e4 f6     mov   a,$f6
15b8: c5 3d 02  mov   $023d,a
15bb: c5 3f 02  mov   $023f,a
15be: 8f 00 22  mov   $22,#$00
15c1: 8f fd 23  mov   $23,#$fd
15c4: e4 f5     mov   a,$f5
15c6: 8d 04     mov   y,#$04
15c8: cf        mul   ya
15c9: 7a 22     addw  ya,$22
15cb: da 22     movw  $22,ya
15cd: e8 c0     mov   a,#$c0
15cf: 8d 5c     mov   y,#$5c
15d1: 3f e9 10  call  $10e9
15d4: 4e 91 00  tclr1 $0091
15d7: cd 1c     mov   x,#$1c
15d9: 8f 40 8d  mov   $8d,#$40
15dc: 8d 00     mov   y,#$00
15de: cb 78     mov   $78,y
15e0: f7 22     mov   a,($22)+y
15e2: c4 28     mov   $28,a
15e4: fc        inc   y
15e5: f7 22     mov   a,($22)+y
15e7: c4 29     mov   $29,a
15e9: fc        inc   y
15ea: 6d        push  y
15eb: f7 22     mov   a,($22)+y
15ed: 2d        push  a
15ee: fc        inc   y
15ef: f7 22     mov   a,($22)+y
15f1: fd        mov   y,a
15f2: ae        pop   a
15f3: 5a 28     cmpw  ya,$28
15f5: ee        pop   y
15f6: f0 04     beq   $15fc
15f8: e4 29     mov   a,$29
15fa: d0 08     bne   $1604
15fc: e8 00     mov   a,#$00
15fe: d4 02     mov   $02+x,a
1600: d4 03     mov   $03+x,a
1602: 2f 23     bra   $1627
1604: e4 28     mov   a,$28
1606: d4 02     mov   $02+x,a
1608: e4 29     mov   a,$29
160a: d4 03     mov   $03+x,a
160c: 09 8d 78  or    ($78),($8d)
160f: e8 01     mov   a,#$01
1611: d4 48     mov   $48+x,a
1613: 7d        mov   a,x
1614: 1c        asl   a
1615: 9c        dec   a
1616: d5 81 06  mov   $0681+x,a
1619: e8 00     mov   a,#$00
161b: d5 61 04  mov   $0461+x,a
161e: d5 01 04  mov   $0401+x,a
1621: d5 c1 03  mov   $03c1+x,a
1624: d5 81 03  mov   $0381+x,a
1627: 3d        inc   x
1628: 3d        inc   x
1629: 0b 8d     asl   $8d
162b: d0 b3     bne   $15e0
162d: e4 78     mov   a,$78
162f: 09 91 78  or    ($78),($91)
1632: 4e 88 00  tclr1 $0088
1635: e8 c0     mov   a,#$c0
1637: 4e 82 00  tclr1 $0082
163a: 4e 84 00  tclr1 $0084
163d: 4e 86 00  tclr1 $0086
1640: 8f 00 87  mov   $87,#$00
1643: 3f 3c 0e  call  $0e3c
1646: 3f 12 10  call  $1012
1649: 3f 3f 10  call  $103f
164c: 3f 5b 0f  call  $0f5b
164f: 8f 88 39  mov   $39,#$88
1652: 6f        ret

; process commands $10-$20
1653: d8 f4     mov   $f4,x
1655: 3e f4     cmp   x,$f4
1657: f0 fc     beq   $1655
1659: 8f 00 f4  mov   $f4,#$00
165c: 7d        mov   a,x
165d: 28 0f     and   a,#$0f
165f: 1c        asl   a
1660: fd        mov   y,a
1661: e3 91 09  bbs7  $91,$166d
1664: c3 91 10  bbs6  $91,$1677
1667: a3 91 14  bbs5  $91,$167e
166a: e3 78 07  bbs7  $78,$1674
166d: cd 1e     mov   x,#$1e
166f: 8f 80 8d  mov   $8d,#$80
1672: 2f 0f     bra   $1683
1674: c3 78 07  bbs6  $78,$167e
1677: cd 1c     mov   x,#$1c
1679: 8f 40 8d  mov   $8d,#$40
167c: 2f 05     bra   $1683
167e: cd 1a     mov   x,#$1a
1680: 8f 20 8d  mov   $8d,#$20
1683: f6 e0 18  mov   a,$18e0+y
1686: d4 02     mov   $02+x,a
1688: f6 e1 18  mov   a,$18e1+y
168b: d4 03     mov   $03+x,a
168d: f0 47     beq   $16d6
168f: e4 8d     mov   a,$8d
1691: 8d 5c     mov   y,#$5c
1693: 3f e9 10  call  $10e9
1696: 4e 88 00  tclr1 $0088
1699: e8 80     mov   a,#$80
169b: d5 21 02  mov   $0221+x,a
169e: e8 01     mov   a,#$01
16a0: d4 48     mov   $48+x,a
16a2: 7d        mov   a,x
16a3: 1c        asl   a
16a4: 9c        dec   a
16a5: d5 81 06  mov   $0681+x,a
16a8: e8 00     mov   a,#$00
16aa: d5 61 04  mov   $0461+x,a
16ad: d5 01 04  mov   $0401+x,a
16b0: d5 c1 03  mov   $03c1+x,a
16b3: d5 81 03  mov   $0381+x,a
16b6: d5 00 02  mov   $0200+x,a
16b9: d5 20 02  mov   $0220+x,a
16bc: 09 8d 78  or    ($78),($8d)
16bf: 09 8d 91  or    ($91),($8d)
16c2: e4 8d     mov   a,$8d
16c4: 4e 82 00  tclr1 $0082
16c7: 4e 84 00  tclr1 $0084
16ca: 4e 86 00  tclr1 $0086
16cd: 3f 3c 0e  call  $0e3c
16d0: 3f 12 10  call  $1012
16d3: 3f 3f 10  call  $103f
16d6: 6f        ret

; process command $80
16d7: e4 f5     mov   a,$f5
16d9: c5 3d 02  mov   $023d,a
16dc: c5 3f 02  mov   $023f,a
16df: d8 f4     mov   $f4,x
16e1: 3e f4     cmp   x,$f4
16e3: f0 fc     beq   $16e1
16e5: 8f 00 f4  mov   $f4,#$00
16e8: 6f        ret

; process command $85
16e9: d8 f4     mov   $f4,x
16eb: 3e f4     cmp   x,$f4
16ed: f0 fc     beq   $16eb
16ef: 8f 00 f4  mov   $f4,#$00
16f2: 8f 90 46  mov   $46,#$90
16f5: 8f ff 47  mov   $47,#$ff
16f8: 6f        ret

; process command $86
16f9: d8 f4     mov   $f4,x
16fb: 3e f4     cmp   x,$f4
16fd: f0 fc     beq   $16fb
16ff: 8f 00 f4  mov   $f4,#$00
1702: 8f 00 46  mov   $46,#$00
1705: 8f fe 47  mov   $47,#$fe
1708: 6f        ret

; process command $87
1709: d8 f4     mov   $f4,x
170b: 3e f4     cmp   x,$f4
170d: f0 fc     beq   $170b
170f: 8f 00 f4  mov   $f4,#$00
1712: 8f c8 46  mov   $46,#$c8
1715: 8f ff 47  mov   $47,#$ff
1718: 6f        ret

; process command $8B
1719: d8 f4     mov   $f4,x
171b: 3e f4     cmp   x,$f4
171d: f0 fc     beq   $171b
171f: 8f 00 f4  mov   $f4,#$00
1722: 8f 46 46  mov   $46,#$46
1725: 8f ff 47  mov   $47,#$ff
1728: 6f        ret

; process command $88
1729: d8 f4     mov   $f4,x
172b: 3e f4     cmp   x,$f4
172d: f0 fc     beq   $172b
172f: 8f 00 f4  mov   $f4,#$00
1732: 8f 00 46  mov   $46,#$00
1735: 8f 00 47  mov   $47,#$00
1738: 8f ff 42  mov   $42,#$ff
173b: 8f ff 43  mov   $43,#$ff
173e: 8f ff 8b  mov   $8b,#$ff
1741: 6f        ret

; process command $8A
1742: d8 f4     mov   $f4,x
1744: 3e f4     cmp   x,$f4
1746: f0 fc     beq   $1744
1748: 8f 00 f4  mov   $f4,#$00
174b: 8f 00 46  mov   $46,#$00
174e: 8f 00 47  mov   $47,#$00
1751: 8f 00 42  mov   $42,#$00
1754: 8f 40 43  mov   $43,#$40
1757: 8f ff 8b  mov   $8b,#$ff
175a: 6f        ret

; process command $89
175b: d8 f4     mov   $f4,x
175d: 3e f4     cmp   x,$f4
175f: f0 fc     beq   $175d
1761: 8f 00 f4  mov   $f4,#$00
1764: 8f 38 46  mov   $46,#$38
1767: 8f 00 47  mov   $47,#$00
176a: 6f        ret

; process command $90
176b: e4 f5     mov   a,$f5
176d: d0 04     bne   $1773
176f: 12 90     clr0  $90
1771: 2f 02     bra   $1775
1773: 02 90     set0  $90
1775: d8 f4     mov   $f4,x
1777: 3e f4     cmp   x,$f4
1779: f0 fc     beq   $1777
177b: 8f 00 f4  mov   $f4,#$00
177e: 8f ff 8b  mov   $8b,#$ff
1781: 6f        ret

; process command $FF
1782: e8 ff     mov   a,#$ff
1784: 8d 5c     mov   y,#$5c
1786: 3f e9 10  call  $10e9
1789: 8f aa f4  mov   $f4,#$aa
178c: 8f bb f5  mov   $f5,#$bb
178f: 3e f4     cmp   x,$f4
1791: f0 fc     beq   $178f
1793: f8 f4     mov   x,$f4
1795: c8 cc     cmp   x,#$cc
1797: d0 fa     bne   $1793
1799: d8 f4     mov   $f4,x
179b: f8 f4     mov   x,$f4
179d: d0 fc     bne   $179b
179f: d8 28     mov   $28,x
17a1: ab 28     inc   $28
17a3: d8 f4     mov   $f4,x
17a5: 3e f4     cmp   x,$f4
17a7: f0 fc     beq   $17a5
17a9: f8 f4     mov   x,$f4
17ab: 3e 28     cmp   x,$28
17ad: f0 f2     beq   $17a1
17af: e4 f5     mov   a,$f5
17b1: d8 f4     mov   $f4,x
17b3: d0 e6     bne   $179b
17b5: 3e f4     cmp   x,$f4
17b7: f0 fc     beq   $17b5
17b9: c4 f4     mov   $f4,a
17bb: c4 f5     mov   $f5,a
17bd: e8 00     mov   a,#$00
17bf: c4 88     mov   $88,a
17c1: c4 78     mov   $78,a
17c3: fd        mov   y,a
17c4: da 81     movw  $81,ya
17c6: da 83     movw  $83,ya
17c8: da 85     movw  $85,ya
17ca: c4 7e     mov   $7e,a
17cc: c4 7f     mov   $7f,a
17ce: c4 80     mov   $80,a
17d0: c4 79     mov   $79,a
17d2: c4 40     mov   $40,a
17d4: c4 41     mov   $41,a
17d6: 5d        mov   x,a
17d7: d4 02     mov   $02+x,a
17d9: 3d        inc   x
17da: c8 20     cmp   x,#$20
17dc: d0 f9     bne   $17d7
17de: 9c        dec   a
17df: c4 89     mov   $89,a
17e1: 8f 01 7a  mov   $7a,#$01
17e4: 3f 12 10  call  $1012
17e7: 3f 3f 10  call  $103f
17ea: 5f 82 10  jmp   $1082

; vcmd dispatch table
17ed: dw $0cf4  ; d2 - set/fade tempo
17ef: dw $0d47  ; d3 - nop (2 bytes)
17f1: dw $0d4e  ; d4 - echo volume
17f3: dw $0e0b  ; d5 - echo feedback, FIR
17f5: dw $0e5f  ; d6 - pitch envelope on
17f7: dw $0e8e  ; d7 - tremolo
17f9: dw $0ec0  ; d8 - vibrato
17fb: dw $0ee9  ; d9 - panpot LFO
17fd: dw $0cde  ; da - set octave
17ff: dw $0f13  ; db - set instrument
1801: dw $0f1e  ; dc - set volume envelove (software)
1803: dw $0f2d  ; dd - set release rate
1805: dw $0f37  ; de - set sustain rate (duration rate)
1807: dw $0f4d  ; df - set noise frequency
1809: dw $0f78  ; e0 - repeat start
180b: dw $0cde  ; e1 - increment octave
180d: dw $0cde  ; e2 - decrement octave
180f: dw $105c  ; e3 - nop
1811: dw $1004  ; e4 - nop
1813: dw $1005  ; e5 - nop
1815: dw $0e8a  ; e6 - pitch envelope off
1817: dw $0ebc  ; e7 - tremolo off
1819: dw $0ee5  ; e8 - vibrato off
181b: dw $0f0f  ; e9 - panpot LFO off
181d: dw $0e2b  ; ea - echo on
181f: dw $0e47  ; eb - echo off
1821: dw $1006  ; ec - noise on
1823: dw $101f  ; ed - noise off
1825: dw $1033  ; ee - pitch modulation on
1827: dw $104c  ; ef - pitch modulation off
1829: dw $0f9b  ; f0 - repeat end
182b: dw $105d  ; f1 - end of track
182d: dw $0d57  ; f2 - volume
182f: dw $0db1  ; f3 - panpot
1831: dw $0ffb  ; f4 - goto
1833: dw $0fbf  ; f5 - conditional jump in repeat
1835: dw $0ff0  ; f6
1837: dw $105d  ; f7 - end of track (duplicated)
1839: dw $105d  ; f8 - end of track (duplicated)
183b: dw $105d  ; f9 - end of track (duplicated)
183d: dw $105d  ; fa - end of track (duplicated)
183f: dw $105d  ; fb - end of track (duplicated)
1841: dw $105d  ; fc - end of track (duplicated)
1843: dw $105d  ; fd - end of track (duplicated)
1845: dw $105d  ; fe - end of track (duplicated)
1847: dw $105d  ; ff - end of track (duplicated)

; vcmd length table
1849: db         $03,$03,$01,$02,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01
1857: db $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
1867: db $00,$00,$03,$03,$02,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; pitch table
1877: dw $0879  ; c
1879: dw $08fa  ; c#
187b: dw $0983  ; d
187d: dw $0a14  ; d#
187f: dw $0aad  ; e
1881: dw $0b50  ; f
1883: dw $0bfc  ; f#
1885: dw $0cb2  ; g
1887: dw $0d74  ; g#
1889: dw $0e41  ; a
188b: dw $0f1a  ; a#
188d: dw $1000  ; b
188f: dw $10f3  ; c'

; echo FIR filter coeff tables
1891: db $7f,$00,$00,$00,$00,$00,$00,$00
1899: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
18a1: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
18a9: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; duration table
18b1: db $c0,$90,$60,$48,$40,$30,$24,$20,$18,$10,$0c,$08,$06,$04,$03

18c0: db $a0,$a1,$a2,$a3,$a4,$a5,$a6,$a7
18c8: db $a8,$a9,$aa,$ab,$ac,$ad,$ae,$af
18d0: db $b0,$b1,$b2,$b3,$b4,$b5,$b6,$b7
18d8: db $b8,$b9,$ba,$bb,$bc,$bd,$be,$bf

18e0: 00 19
18e2: 12 19
18e4: 24 19
18e6: 38 19
18e8: 4a 19
18ea: 00 00
18ec: 00 00
18ee: 00 00
18f0: 5c 19
18f2: 83 19
18f4: 00 00
18f6: 00 00
18f8: 00 00
18fa: 00 00
18fc: 00 00
18fe: 00 00
1900: f2 00
1902: 00 78
1904: dc 0d
1906: db 05
1908: dd 00
190a: d6 00
190c: 06 0c
190e: da 06
1910: 74 f1
1912: f2 00
1914: 00 78
1916: dc 0d
1918: db 05
191a: dd 00
191c: d6 00
191e: 06 0c
1920: da 06
1922: a1 f1
1924: f2 00
1926: 00 ff
1928: dc 0d
192a: dd 00
192c: da 04
192e: e0 03
1930: db 04
1932: 3b db
1934: 03 3b
1936: f0 f1
1938: f2 00
193a: 00 c8
193c: dc 0d
193e: db 05
1940: dd 00
1942: d6 00
1944: 06 0c
1946: da 06
1948: 74 f1
194a: f2 00
194c: 00 c8
194e: dc 0d
1950: db 05
1952: dd 00
1954: d6 00
1956: 06 0c
1958: da 06
195a: a1 f1
195c: f2 00
195e: 00 e6
1960: d8 00
1962: 0c ff
1964: dc 09
1966: db 03
1968: dd 08
196a: da 05
196c: 92 e1
196e: f2 00
1970: 00 be
1972: 47 f2
1974: 00 00
1976: a0 47
1978: f2 00
197a: 00 82
197c: 47 f2
197e: 00 00
1980: 64 47
1982: f1 f2
1984: 00 00
1986: e6 d8
1988: 00 0c
198a: ff dc
198c: 09 db
198e: 03 dd
1990: 08 da
1992: 05 47
1994: f2 00
1996: 00 be
1998: b0 f2
199a: 00 00
199c: a0 b0
199e: f2 00
19a0: 00 82
19a2: b0 f2
19a4: 00 00
19a6: 64 b0
19a8: f1
