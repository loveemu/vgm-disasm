; Sim City SPC - loveemu labo
; Disassembler: spcdas v0.01

0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x              ; set SP to (01)cf
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 e0     cmp   x,#$e0
080a: d0 fb     bne   $0807             ; zero 00-e0
080c: cd 00     mov   x,#$00
080e: d5 00 02  mov   $0200+x,a
0811: 3d        inc   x
0812: d0 fa     bne   $080e             ; zero 0200-02ff
0814: d5 00 03  mov   $0300+x,a
0817: 3d        inc   x
0818: d0 fa     bne   $0814             ; zero 0300-03ff
081a: bc        inc   a
081b: 3f 5d 17  call  $175d             ; set echo delay to 1 (16ms)
081e: a2 48     set5  $48
0820: e8 60     mov   a,#$60
0822: 8d 0c     mov   y,#$0c
0824: 3f fb 09  call  $09fb             ; master vol L = $60
0827: 8d 1c     mov   y,#$1c
0829: 3f fb 09  call  $09fb             ; master vol R = $60
082c: e8 35     mov   a,#$35
082e: 8d 5d     mov   y,#$5d
0830: 3f fb 09  call  $09fb             ; source dir = $3500
0833: e8 f0     mov   a,#$f0
0835: c5 f1 00  mov   $00f1,a           ; reset ports, disable timers
0838: e8 10     mov   a,#$10
083a: c5 fa 00  mov   $00fa,a           ; set timer0 latch to #$10 (500 Hz, 2ms)
083d: c4 53     mov   $53,a
083f: e8 01     mov   a,#$01
0841: c5 f1 00  mov   $00f1,a           ; start timer0
; main loop
0844: 8d 0a     mov   y,#$0a            ; set DSP regs from shadow:
0846: ad 05     cmp   y,#$05
0848: f0 07     beq   $0851
084a: b0 08     bcs   $0854
084c: 69 4d 4c  cmp   ($4c),($4d)
084f: d0 11     bne   $0862
0851: e3 4c 0e  bbs7  $4c,$0862
0854: f6 d4 1a  mov   a,$1ad4+y
0857: c5 f2 00  mov   $00f2,a
085a: f6 de 1a  mov   a,$1ade+y
085d: 5d        mov   x,a
085e: e6        mov   a,(x)
085f: c5 f3 00  mov   $00f3,a           ; write to DSP reg
0862: fe e2     dbnz  y,$0846           ; loop for each reg
0864: cb 45     mov   $45,y
0866: cb 46     mov   $46,y
0868: e4 18     mov   a,$18
086a: 44 19     eor   a,$19
086c: 5c        lsr   a
086d: 5c        lsr   a
086e: ed        notc
086f: 6b 18     ror   $18
0871: 6b 19     ror   $19
0873: ec fd 00  mov   y,$00fd           ; wait for counter0 increment
0876: f0 fb     beq   $0873
0878: 6d        push  y
0879: e8 38     mov   a,#$38
087b: cf        mul   ya
087c: 60        clrc
087d: 84 43     adc   a,$43
087f: c4 43     mov   $43,a
0881: 90 2b     bcc   $08ae
0883: 3f 78 13  call  $1378
0886: cd 01     mov   x,#$01
0888: 3f e5 08  call  $08e5
088b: 3f b2 0a  call  $0ab2
088e: 3f a6 0a  call  $0aa6
0891: cd 02     mov   x,#$02
0893: 3f e5 08  call  $08e5
0896: 3f ab 0a  call  $0aab
0899: cd 03     mov   x,#$03
089b: 3f e5 08  call  $08e5
089e: 69 4d 4c  cmp   ($4c),($4d)
08a1: f0 0b     beq   $08ae
08a3: ac c7 03  inc   $03c7
08a6: e5 c7 03  mov   a,$03c7
08a9: 5c        lsr   a
08aa: b0 02     bcs   $08ae
08ac: ab 4c     inc   $4c
08ae: e4 53     mov   a,$53
08b0: ee        pop   y
08b1: cf        mul   ya
08b2: 60        clrc
08b3: 84 51     adc   a,$51
08b5: c4 51     mov   $51,a
08b7: 90 13     bcc   $08cc
08b9: 3f 78 13  call  $1378
08bc: 3f 22 14  call  $1422
08bf: cd 00     mov   x,#$00
08c1: 3f e5 08  call  $08e5
08c4: cd 01     mov   x,#$01
08c6: 3f e5 08  call  $08e5
08c9: 5f 44 08  jmp   $0844

08cc: e4 0d     mov   a,$0d
08ce: f0 12     beq   $08e2
08d0: cd 00     mov   x,#$00
08d2: 8f 01 47  mov   $47,#$01
08d5: f4 31     mov   a,$31+x
08d7: f0 03     beq   $08dc
08d9: 3f fd 19  call  $19fd
08dc: 3d        inc   x
08dd: 3d        inc   x
08de: 0b 47     asl   $47
08e0: d0 f3     bne   $08d5
08e2: 5f 44 08  jmp   $0844

08e5: f4 04     mov   a,$04+x
08e7: d5 f4 00  mov   $00f4+x,a
08ea: f5 f4 00  mov   a,$00f4+x
08ed: 75 f4 00  cmp   a,$00f4+x
08f0: d0 f8     bne   $08ea
08f2: fd        mov   y,a
08f3: d0 02     bne   $08f7
08f5: db 04     mov   $04+x,y
08f7: f4 08     mov   a,$08+x
08f9: db 08     mov   $08+x,y
08fb: de 08 05  cbne  $08+x,$0903
08fe: 8d 00     mov   y,#$00
0900: db 00     mov   $00+x,y
0902: 6f        ret

0903: db 00     mov   $00+x,y
0905: 6f        ret

; handle a note vcmd (80-df)
0906: ad ca     cmp   y,#$ca
0908: 90 05     bcc   $090f
; vcmds ca-df - percussion note
090a: 3f a6 15  call  $15a6             ; set sample
090d: 8d a4     mov   y,#$a4            ; dispatch as note $a4
; vcmds 80-c7,c8,c9 - note/tie/rest
090f: ad c8     cmp   y,#$c8
0911: b0 f2     bcs   $0905             ; skip if tie/rest
0913: e4 1a     mov   a,$1a
0915: 24 47     and   a,$47
0917: d0 ec     bne   $0905
; vcmds 80-c7 - note (note number in Y)
0919: dd        mov   a,y
091a: 28 7f     and   a,#$7f
091c: 60        clrc
091d: 84 50     adc   a,$50             ; add global transpose
091f: 60        clrc
0920: 95 f0 02  adc   a,$02f0+x         ; add per-voice transpose
0923: d5 61 03  mov   $0361+x,a
0926: f5 81 03  mov   a,$0381+x
0929: d5 60 03  mov   $0360+x,a
092c: f5 b1 02  mov   a,$02b1+x
092f: 5c        lsr   a
0930: e8 00     mov   a,#$00
0932: 7c        ror   a
0933: d5 a0 02  mov   $02a0+x,a
0936: e8 00     mov   a,#$00
0938: d4 b0     mov   $b0+x,a
093a: d5 00 01  mov   $0100+x,a
093d: d5 d0 02  mov   $02d0+x,a
0940: d4 c0     mov   $c0+x,a
0942: 09 47 5e  or    ($5e),($47)       ; set volume changed flg
0945: 09 47 45  or    ($45),($47)       ; set key on shadow bit
0948: f5 80 02  mov   a,$0280+x         ; pitch envelope counter
094b: d4 a0     mov   $a0+x,a           ; portamento counter
094d: f0 1e     beq   $096d
094f: f5 81 02  mov   a,$0281+x
0952: d4 a1     mov   $a1+x,a
0954: f5 90 02  mov   a,$0290+x         ; pitch envelope mode (0:attack / 1:release)
0957: d0 0a     bne   $0963
0959: f5 61 03  mov   a,$0361+x
095c: 80        setc
095d: b5 91 02  sbc   a,$0291+x
0960: d5 61 03  mov   $0361+x,a
0963: f5 91 02  mov   a,$0291+x
0966: 60        clrc
; set DSP pitch from $10/1
0967: 95 61 03  adc   a,$0361+x
096a: 3f d5 17  call  $17d5
096d: 3f ed 17  call  $17ed
0970: 8d 00     mov   y,#$00
0972: e4 11     mov   a,$11
0974: 80        setc
0975: a8 34     sbc   a,#$34
0977: b0 09     bcs   $0982
0979: e4 11     mov   a,$11
097b: 80        setc
097c: a8 13     sbc   a,#$13
097e: b0 06     bcs   $0986
0980: dc        dec   y
0981: 1c        asl   a
0982: 7a 10     addw  ya,$10
0984: da 10     movw  $10,ya
0986: 4d        push  x
0987: e4 11     mov   a,$11
; get pitch from note number in A (with octave correction)
0989: 1c        asl   a
098a: 8d 00     mov   y,#$00
098c: cd 18     mov   x,#$18
098e: 9e        div   ya,x
098f: 5d        mov   x,a
0990: f6 ea 1a  mov   a,$1aea+y
0993: c4 15     mov   $15,a
0995: f6 e9 1a  mov   a,$1ae9+y
0998: c4 14     mov   $14,a             ; set $14/5 from pitch table
099a: f6 ec 1a  mov   a,$1aec+y
099d: 2d        push  a
099e: f6 eb 1a  mov   a,$1aeb+y
09a1: ee        pop   y
09a2: 9a 14     subw  ya,$14
09a4: eb 10     mov   y,$10
09a6: cf        mul   ya
09a7: dd        mov   a,y
09a8: 8d 00     mov   y,#$00
09aa: 7a 14     addw  ya,$14
09ac: cb 15     mov   $15,y
09ae: 1c        asl   a
09af: 2b 15     rol   $15
09b1: c4 14     mov   $14,a
09b3: 2f 04     bra   $09b9
09b5: 4b 15     lsr   $15
09b7: 7c        ror   a
09b8: 3d        inc   x
09b9: c8 06     cmp   x,#$06
09bb: d0 f8     bne   $09b5
09bd: c4 14     mov   $14,a
09bf: ce        pop   x
09c0: f5 20 02  mov   a,$0220+x
09c3: eb 15     mov   y,$15
09c5: cf        mul   ya
09c6: da 16     movw  $16,ya
09c8: f5 20 02  mov   a,$0220+x
09cb: eb 14     mov   y,$14
09cd: cf        mul   ya
09ce: 6d        push  y
09cf: f5 21 02  mov   a,$0221+x
09d2: eb 14     mov   y,$14
09d4: cf        mul   ya
09d5: 7a 16     addw  ya,$16
09d7: da 16     movw  $16,ya
09d9: f5 21 02  mov   a,$0221+x
09dc: eb 15     mov   y,$15
09de: cf        mul   ya
09df: fd        mov   y,a
09e0: ae        pop   a
09e1: 7a 16     addw  ya,$16
09e3: da 16     movw  $16,ya
09e5: 7d        mov   a,x               ; set voice X pitch DSP reg from $16/7
09e6: 9f        xcn   a                 ;  (if vbit clear in $1a)
09e7: 5c        lsr   a
09e8: 08 02     or    a,#$02
09ea: fd        mov   y,a               ; Y = voice X pitch DSP reg
09eb: e4 16     mov   a,$16
09ed: 3f f3 09  call  $09f3
09f0: fc        inc   y
09f1: e4 17     mov   a,$17
; write A to DSP reg Y if vbit clear in $1a
09f3: 2d        push  a
09f4: e4 47     mov   a,$47
09f6: 24 1a     and   a,$1a
09f8: ae        pop   a
09f9: d0 06     bne   $0a01
; write A to DSP reg Y
09fb: cc f2 00  mov   $00f2,y
09fe: c5 f3 00  mov   $00f3,a
0a01: 6f        ret

0a02: 8d 0e     mov   y,#$0e
0a04: cd 80     mov   x,#$80
0a06: c9 c1 03  mov   $03c1,x
0a09: f6 a0 03  mov   a,$03a0+y
0a0c: 80        setc
0a0d: a8 10     sbc   a,#$10
0a0f: 64 03     cmp   a,$03
0a11: f0 09     beq   $0a1c
0a13: dc        dec   y
0a14: dc        dec   y
0a15: 4c c1 03  lsr   $03c1
0a18: d0 ef     bne   $0a09
0a1a: 2f 31     bra   $0a4d
0a1c: cc c0 03  mov   $03c0,y
0a1f: 2f 48     bra   $0a69
0a21: 80        setc
0a22: e5 c8 03  mov   a,$03c8
0a25: a8 02     sbc   a,#$02
0a27: 28 0f     and   a,#$0f
0a29: c5 c0 03  mov   $03c0,a
0a2c: 60        clrc
0a2d: e5 c9 03  mov   a,$03c9
0a30: 5c        lsr   a
0a31: c5 c1 03  mov   $03c1,a
0a34: d0 05     bne   $0a3b
0a36: e8 80     mov   a,#$80
0a38: c5 c1 03  mov   $03c1,a
0a3b: e5 c0 03  mov   a,$03c0
0a3e: c5 c8 03  mov   $03c8,a
0a41: e5 c1 03  mov   a,$03c1
0a44: c5 c9 03  mov   $03c9,a
0a47: 04 1a     or    a,$1a
0a49: c4 1a     mov   $1a,a
0a4b: 2f 2c     bra   $0a79
0a4d: e8 ff     mov   a,#$ff
0a4f: 2e 1a 02  cbne  $1a,$0a54
0a52: 2f cd     bra   $0a21
0a54: 60        clrc
0a55: cd 1a     mov   x,#$1a
0a57: e8 80     mov   a,#$80
0a59: c5 c1 03  mov   $03c1,a
0a5c: 8d 0e     mov   y,#$0e
0a5e: 26        and   a,(x)
0a5f: f0 08     beq   $0a69
0a61: dc        dec   y
0a62: dc        dec   y
0a63: 4c c1 03  lsr   $03c1
0a66: 5c        lsr   a
0a67: 90 f5     bcc   $0a5e
0a69: cc c0 03  mov   $03c0,y
0a6c: cc c8 03  mov   $03c8,y
0a6f: e5 c1 03  mov   a,$03c1
0a72: c5 c9 03  mov   $03c9,a
0a75: 04 1a     or    a,$1a
0a77: c4 1a     mov   $1a,a
0a79: e5 c1 03  mov   a,$03c1
0a7c: 24 4a     and   a,$4a
0a7e: f0 0d     beq   $0a8d
0a80: e4 4a     mov   a,$4a
0a82: 80        setc
0a83: a5 c1 03  sbc   a,$03c1
0a86: c4 4a     mov   $4a,a
0a88: 8d 4d     mov   y,#$4d
0a8a: 3f fb 09  call  $09fb
0a8d: 6f        ret

0a8e: e9 c4 03  mov   x,$03c4
0a91: c9 c0 03  mov   $03c0,x
0a94: ec c5 03  mov   y,$03c5
0a97: cc c1 03  mov   $03c1,y
0a9a: e5 c1 03  mov   a,$03c1
0a9d: 8d 5c     mov   y,#$5c
0a9f: 3f fb 09  call  $09fb
0aa2: 3f 5e 0b  call  $0b5e
0aa5: 6f        ret

0aa6: e4 02     mov   a,$02
0aa8: d0 64     bne   $0b0e
0aaa: 6f        ret

0aab: e4 03     mov   a,$03
0aad: 30 df     bmi   $0a8e
0aaf: d0 26     bne   $0ad7
0ab1: 6f        ret

0ab2: cd 0e     mov   x,#$0e
0ab4: e8 80     mov   a,#$80
0ab6: c5 c1 03  mov   $03c1,a
0ab9: c9 c0 03  mov   $03c0,x
0abc: 7d        mov   a,x
0abd: 9f        xcn   a
0abe: 5c        lsr   a
0abf: c5 c2 03  mov   $03c2,a
0ac2: f5 a1 03  mov   a,$03a1+x
0ac5: d0 6e     bne   $0b35
0ac7: f5 a0 03  mov   a,$03a0+x
0aca: f0 03     beq   $0acf
0acc: 5f 8f 0b  jmp   $0b8f

0acf: 4c c1 03  lsr   $03c1
0ad2: 1d        dec   x
0ad3: 1d        dec   x
0ad4: 10 e3     bpl   $0ab9
0ad6: 6f        ret

0ad7: 3f 02 0a  call  $0a02
0ada: e9 c0 03  mov   x,$03c0
0add: e4 03     mov   a,$03
0adf: 68 09     cmp   a,#$09
0ae1: d0 09     bne   $0aec
0ae3: c9 c4 03  mov   $03c4,x
0ae6: ec c1 03  mov   y,$03c1
0ae9: cc c5 03  mov   $03c5,y
0aec: 60        clrc
0aed: 88 10     adc   a,#$10
0aef: d5 a0 03  mov   $03a0+x,a
0af2: e8 03     mov   a,#$03
0af4: d5 a1 03  mov   $03a1+x,a
0af7: e8 00     mov   a,#$00
0af9: d5 80 02  mov   $0280+x,a
0afc: e5 c1 03  mov   a,$03c1
0aff: 8d 5c     mov   y,#$5c
0b01: 3f fb 09  call  $09fb
0b04: f8 03     mov   x,$03
0b06: f5 12 0e  mov   a,$0e12+x
0b09: c4 03     mov   $03,a
0b0b: d0 ca     bne   $0ad7
0b0d: 6f        ret

0b0e: 3f 4d 0a  call  $0a4d
0b11: e9 c0 03  mov   x,$03c0
0b14: e4 02     mov   a,$02
0b16: d5 a0 03  mov   $03a0+x,a
0b19: e8 03     mov   a,#$03
0b1b: d5 a1 03  mov   $03a1+x,a
0b1e: e8 00     mov   a,#$00
0b20: d5 80 02  mov   $0280+x,a
0b23: e5 c1 03  mov   a,$03c1
0b26: 8d 5c     mov   y,#$5c
0b28: 3f fb 09  call  $09fb
0b2b: f8 02     mov   x,$02
0b2d: f5 95 0d  mov   a,$0d95+x
0b30: c4 02     mov   $02,a
0b32: d0 da     bne   $0b0e
0b34: 6f        ret

0b35: c9 c0 03  mov   $03c0,x
0b38: f5 a1 03  mov   a,$03a1+x
0b3b: 9c        dec   a
0b3c: d5 a1 03  mov   $03a1+x,a
0b3f: d0 8e     bne   $0acf
0b41: f5 a0 03  mov   a,$03a0+x
0b44: 1c        asl   a
0b45: fd        mov   y,a
0b46: f6 a5 0d  mov   a,$0da5+y
0b49: d5 91 03  mov   $0391+x,a
0b4c: c4 2d     mov   $2d,a
0b4e: f6 a4 0d  mov   a,$0da4+y
0b51: d5 90 03  mov   $0390+x,a
0b54: c4 2c     mov   $2c,a
0b56: 2f 51     bra   $0ba9
0b58: 3f 5e 0b  call  $0b5e
0b5b: 5f cf 0a  jmp   $0acf

0b5e: e8 00     mov   a,#$00
0b60: e9 c0 03  mov   x,$03c0
0b63: d5 a0 03  mov   $03a0+x,a
0b66: e4 1a     mov   a,$1a
0b68: 80        setc
0b69: a5 c1 03  sbc   a,$03c1
0b6c: c4 1a     mov   $1a,a
0b6e: d8 44     mov   $44,x
0b70: f5 11 02  mov   a,$0211+x
0b73: 3f a6 15  call  $15a6
0b76: e5 c1 03  mov   a,$03c1
0b79: 25 c3 03  and   a,$03c3
0b7c: f0 0d     beq   $0b8b
0b7e: e4 4a     mov   a,$4a
0b80: 60        clrc
0b81: 85 c1 03  adc   a,$03c1
0b84: c4 4a     mov   $4a,a
0b86: 8d 4d     mov   y,#$4d
0b88: 3f fb 09  call  $09fb
0b8b: e9 c0 03  mov   x,$03c0
0b8e: 6f        ret

0b8f: 3f 79 0a  call  $0a79
0b92: c9 c0 03  mov   $03c0,x
0b95: f5 91 03  mov   a,$0391+x
0b98: fd        mov   y,a
0b99: f5 90 03  mov   a,$0390+x
0b9c: da 2c     movw  $2c,ya
0b9e: f5 b0 03  mov   a,$03b0+x
0ba1: 9c        dec   a
0ba2: d5 b0 03  mov   $03b0+x,a
0ba5: d0 73     bne   $0c1a
0ba7: 3a 2c     incw  $2c
0ba9: e5 c0 03  mov   a,$03c0
0bac: 9f        xcn   a
0bad: 5c        lsr   a
0bae: c5 c2 03  mov   $03c2,a
0bb1: cd 00     mov   x,#$00
0bb3: e7 2c     mov   a,($2c+x)
0bb5: f0 a1     beq   $0b58
0bb7: 30 32     bmi   $0beb
0bb9: ec c0 03  mov   y,$03c0
0bbc: d6 b1 03  mov   $03b1+y,a
0bbf: 3a 2c     incw  $2c
0bc1: e7 2c     mov   a,($2c+x)
0bc3: c4 10     mov   $10,a
0bc5: 30 24     bmi   $0beb
0bc7: ec c2 03  mov   y,$03c2
0bca: 3f fb 09  call  $09fb
0bcd: 3a 2c     incw  $2c
0bcf: e7 2c     mov   a,($2c+x)
0bd1: 10 0d     bpl   $0be0
0bd3: 5d        mov   x,a
0bd4: e4 10     mov   a,$10
0bd6: ec c2 03  mov   y,$03c2
0bd9: fc        inc   y
0bda: 3f fb 09  call  $09fb
0bdd: 7d        mov   a,x
0bde: 2f 0b     bra   $0beb
0be0: ec c2 03  mov   y,$03c2
0be3: fc        inc   y
0be4: 3f fb 09  call  $09fb
0be7: 3a 2c     incw  $2c
0be9: e7 2c     mov   a,($2c+x)
0beb: 68 e0     cmp   a,#$e0
0bed: d0 03     bne   $0bf2
0bef: 5f 84 0c  jmp   $0c84

0bf2: 68 f9     cmp   a,#$f9
0bf4: f0 51     beq   $0c47
0bf6: 68 f1     cmp   a,#$f1
0bf8: f0 62     beq   $0c5c
0bfa: 68 ff     cmp   a,#$ff
0bfc: d0 06     bne   $0c04
0bfe: e9 c0 03  mov   x,$03c0
0c01: 5f 41 0b  jmp   $0b41

0c04: e9 c0 03  mov   x,$03c0
0c07: fd        mov   y,a
0c08: 3f 06 09  call  $0906
0c0b: e5 c1 03  mov   a,$03c1
0c0e: 3f ca 0c  call  $0cca
0c11: e9 c0 03  mov   x,$03c0
0c14: f5 b1 03  mov   a,$03b1+x
0c17: d5 b0 03  mov   $03b0+x,a
0c1a: f2 13     clr7  $13
0c1c: e9 c0 03  mov   x,$03c0
0c1f: f4 a0     mov   a,$a0+x
0c21: f0 05     beq   $0c28
0c23: 3f b0 0c  call  $0cb0
0c26: 2f 0f     bra   $0c37
0c28: e8 02     mov   a,#$02
0c2a: 75 b0 03  cmp   a,$03b0+x
0c2d: d0 08     bne   $0c37
0c2f: e5 c1 03  mov   a,$03c1
0c32: 8d 5c     mov   y,#$5c
0c34: 3f fb 09  call  $09fb
0c37: e9 c0 03  mov   x,$03c0
0c3a: e4 2d     mov   a,$2d
0c3c: d5 91 03  mov   $0391+x,a
0c3f: e4 2c     mov   a,$2c
0c41: d5 90 03  mov   $0390+x,a
0c44: 5f cf 0a  jmp   $0acf

0c47: cd 00     mov   x,#$00
0c49: 3a 2c     incw  $2c
0c4b: e7 2c     mov   a,($2c+x)
0c4d: e9 c0 03  mov   x,$03c0
0c50: d8 44     mov   $44,x
0c52: fd        mov   y,a
0c53: 3f 06 09  call  $0906
0c56: e5 c1 03  mov   a,$03c1
0c59: 3f ca 0c  call  $0cca
0c5c: cd 00     mov   x,#$00
0c5e: 3a 2c     incw  $2c
0c60: e7 2c     mov   a,($2c+x)
0c62: e9 c0 03  mov   x,$03c0
0c65: d4 a1     mov   $a1+x,a
0c67: cd 00     mov   x,#$00
0c69: 3a 2c     incw  $2c
0c6b: e7 2c     mov   a,($2c+x)
0c6d: e9 c0 03  mov   x,$03c0
0c70: d4 a0     mov   $a0+x,a
0c72: 2d        push  a
0c73: cd 00     mov   x,#$00
0c75: 3a 2c     incw  $2c
0c77: e7 2c     mov   a,($2c+x)
0c79: ee        pop   y
0c7a: e9 c0 03  mov   x,$03c0
0c7d: d8 44     mov   $44,x
0c7f: 3f d5 17  call  $17d5
0c82: 2f 8d     bra   $0c11
0c84: cd 00     mov   x,#$00
0c86: 3a 2c     incw  $2c
0c88: e7 2c     mov   a,($2c+x)
0c8a: 8d 09     mov   y,#$09
0c8c: cf        mul   ya
0c8d: 5d        mov   x,a
0c8e: ec c2 03  mov   y,$03c2
0c91: 8f 08 12  mov   $12,#$08
0c94: f5 d8 0c  mov   a,$0cd8+x
0c97: 3f fb 09  call  $09fb
0c9a: 3d        inc   x
0c9b: fc        inc   y
0c9c: 6e 12 f5  dbnz  $12,$0c94
0c9f: f5 d8 0c  mov   a,$0cd8+x
0ca2: ec c0 03  mov   y,$03c0
0ca5: d6 21 02  mov   $0221+y,a
0ca8: e8 00     mov   a,#$00
0caa: d6 20 02  mov   $0220+y,a
0cad: 5f a7 0b  jmp   $0ba7

0cb0: e2 13     set7  $13
0cb2: e8 60     mov   a,#$60
0cb4: 8d 03     mov   y,#$03
0cb6: 9b a0     dec   $a0+x
0cb8: 3f ff 18  call  $18ff
0cbb: f5 61 03  mov   a,$0361+x
0cbe: fd        mov   y,a
0cbf: f5 60 03  mov   a,$0360+x
0cc2: da 10     movw  $10,ya
0cc4: 8f 00 47  mov   $47,#$00
0cc7: 5f 70 09  jmp   $0970

0cca: 2d        push  a
0ccb: 8d 5c     mov   y,#$5c
0ccd: e8 00     mov   a,#$00
0ccf: 3f fb 09  call  $09fb
0cd2: ae        pop   a
0cd3: 8d 4c     mov   y,#$4c
0cd5: 5f fb 09  jmp   $09fb

1378: 03 01 0b  bbs0  $01,$1386
137b: 23 01 01  bbs1  $01,$137f
137e: 6f        ret

137f: e8 00     mov   a,#$00
1381: c5 ca 03  mov   $03ca,a
1384: f0 05     beq   $138b
1386: 3f ad 13  call  $13ad
1389: e8 01     mov   a,#$01
138b: c5 c6 03  mov   $03c6,a
138e: 6f        ret

138f: cd a0     mov   x,#$a0
1391: d8 5a     mov   $5a,x
1393: c9 ca 03  mov   $03ca,x
1396: e8 00     mov   a,#$00
1398: c4 5b     mov   $5b,a
139a: 80        setc
139b: a4 59     sbc   a,$59
139d: 3f f8 17  call  $17f8
13a0: da 5c     movw  $5c,ya
13a2: 5f 40 14  jmp   $1440

13a5: 8c ca 03  dec   $03ca
13a8: f0 03     beq   $13ad
13aa: 5f 4c 14  jmp   $144c

13ad: e4 1a     mov   a,$1a
13af: 48 ff     eor   a,#$ff
13b1: 0e 46 00  tset1 $0046
13b4: 8f 00 0d  mov   $0d,#$00
13b7: 8f 00 47  mov   $47,#$00
13ba: 6f        ret

; read $40/1 into YA with advancing the ptr
13bb: 8d 00     mov   y,#$00
13bd: f7 40     mov   a,($40)+y
13bf: 3a 40     incw  $40
13c1: 2d        push  a
13c2: f7 40     mov   a,($40)+y
13c4: 3a 40     incw  $40
13c6: fd        mov   y,a
13c7: ae        pop   a
13c8: 6f        ret

; play song in A
13c9: 60        clrc
13ca: cd 00     mov   x,#$00
13cc: c9 ca 03  mov   $03ca,x
13cf: c4 0d     mov   $0d,a
13d1: 1c        asl   a
13d2: 5d        mov   x,a
13d3: f5 0f 1b  mov   a,$1b0f+x
13d6: fd        mov   y,a
13d7: f5 0e 1b  mov   a,$1b0e+x
13da: da 40     movw  $40,ya
13dc: 8f 02 0c  mov   $0c,#$02
13df: e4 1a     mov   a,$1a
13e1: 48 ff     eor   a,#$ff
13e3: 0e 46 00  tset1 $0046
13e6: 6f        ret

; reset song params
13e7: cd 0e     mov   x,#$0e
13e9: 8f 80 47  mov   $47,#$80          ; last voice
13ec: e8 ff     mov   a,#$ff
13ee: d5 01 03  mov   $0301+x,a         ; voice volume = $ff
13f1: e8 0a     mov   a,#$0a
13f3: 3f ff 15  call  $15ff             ; pan = $0a.00
13f6: d5 11 02  mov   $0211+x,a         ; zero instrument
13f9: d5 81 03  mov   $0381+x,a
13fc: d5 f0 02  mov   $02f0+x,a
13ff: d5 80 02  mov   $0280+x,a
1402: d5 ff 03  mov   $03ff+x,a
1405: d4 b1     mov   $b1+x,a
1407: d4 c1     mov   $c1+x,a
1409: 1d        dec   x
140a: 1d        dec   x
140b: 4b 47     lsr   $47
140d: d0 dd     bne   $13ec             ; loop for each voice
140f: c4 5a     mov   $5a,a             ; zero master vol fade counter
1411: c4 68     mov   $68,a             ; zero echo vol fade counter
1413: c4 54     mov   $54,a             ; zero tempo fade counter
1415: c4 50     mov   $50,a             ; zero global transpose
1417: c4 42     mov   $42,a             ; zero block repeat count
1419: c4 5f     mov   $5f,a             ; 
141b: 8f c0 59  mov   $59,#$c0          ; master vol
141e: 8f 20 53  mov   $53,#$20          ; tempo
1421: 6f        ret

1422: e4 00     mov   a,$00
1424: f0 1a     beq   $1440
1426: c4 04     mov   $04,a
1428: 68 f0     cmp   a,#$f0
142a: f0 81     beq   $13ad
142c: 68 f1     cmp   a,#$f1
142e: d0 03     bne   $1433
1430: 5f 8f 13  jmp   $138f

1433: 80        setc
1434: 68 07     cmp   a,#$07
1436: b0 91     bcs   $13c9
1438: ec c6 03  mov   y,$03c6
143b: f0 8c     beq   $13c9
143d: 5f 8f 13  jmp   $138f

1440: e4 0d     mov   a,$0d
1442: f0 dd     beq   $1421
1444: e5 ca 03  mov   a,$03ca
1447: f0 03     beq   $144c
1449: 5f a5 13  jmp   $13a5

144c: e4 0c     mov   a,$0c
144e: f0 5d     beq   $14ad
;
1450: 6e 0c 94  dbnz  $0c,$13e7
1453: 3f bb 13  call  $13bb             ; read block addr from $40/1, advance ptr
1456: d0 25     bne   $147d             ; load start addresses, if hi-byte is non zero
1458: fd        mov   y,a               ; refetch lo-byte
1459: d0 03     bne   $145e             ; set/dec repeat count
145b: 5f ad 13  jmp   $13ad             ; key off, return if also zero
; set/dec repeat count
145e: 68 80     cmp   a,#$80
1460: f0 06     beq   $1468             ; $80 : $1b = a, continue
1462: 68 81     cmp   a,#$81
1464: d0 06     bne   $146c             ; $81 : $1b = 0, continue
1466: e8 00     mov   a,#$00
1468: c4 1b     mov   $1b,a
146a: 2f e7     bra   $1453
146c: 8b 42     dec   $42
146e: 10 02     bpl   $1472
1470: c4 42     mov   $42,a
1472: 3f bb 13  call  $13bb             ; read next word as well
1475: f8 42     mov   x,$42
1477: f0 da     beq   $1453
1479: da 40     movw  $40,ya            ;   "goto" that address
147b: 2f d6     bra   $1453             ; continue
; load start addresses - hi-byte not zero
147d: da 16     movw  $16,ya
147f: 8d 0f     mov   y,#$0f
1481: f7 16     mov   a,($16)+y
1483: d6 30 00  mov   $0030+y,a
1486: dc        dec   y
1487: 10 f8     bpl   $1481             ; set all reading ptrs
1489: cd 00     mov   x,#$00
148b: 8f 01 47  mov   $47,#$01          ; first voice
148e: f4 31     mov   a,$31+x
1490: f0 0a     beq   $149c             ; if vptr hi != 0
1492: f5 11 02  mov   a,$0211+x
1495: d0 05     bne   $149c
1497: e8 00     mov   a,#$00
1499: 3f a6 15  call  $15a6             ; set instrument #0 if not set
149c: e8 00     mov   a,#$00
149e: d4 80     mov   $80+x,a           ; zero subroutine repeat counter
14a0: d4 90     mov   $90+x,a           ; zero voice vol fade counter
14a2: d4 91     mov   $91+x,a           ; zero pan fade counter
14a4: bc        inc   a
14a5: d4 70     mov   $70+x,a           ; set duration counter to 1
14a7: 3d        inc   x
14a8: 3d        inc   x
14a9: 0b 47     asl   $47               ; next voice
14ab: d0 e1     bne   $148e             ; foreach voice
;
14ad: cd 00     mov   x,#$00
14af: d8 5e     mov   $5e,x
14b1: 8f 01 47  mov   $47,#$01          ; first voice
14b4: d8 44     mov   $44,x
14b6: f4 31     mov   a,$31+x
14b8: f0 7a     beq   $1534             ; next if vptr hi zero
14ba: 9b 70     dec   $70+x             ; dec duration counter
14bc: d0 6c     bne   $152a             ; if not zero, skip to voice readahead
14be: 3f 9c 15  call  $159c             ; read vcmd into A and Y
14c1: d0 17     bne   $14da
; vcmd 00 - end repeat/return
14c3: f4 80     mov   a,$80+x
14c5: f0 8c     beq   $1453             ; read next block if loop has been done
; repeat / return from subroutine
14c7: 3f f2 16  call  $16f2             ; jump to loop start addr
14ca: 9b 80     dec   $80+x             ; dec repeat count
14cc: d0 f0     bne   $14be             ; if the loop has been done
14ce: f5 30 02  mov   a,$0230+x
14d1: d4 30     mov   $30+x,a
14d3: f5 31 02  mov   a,$0231+x
14d6: d4 31     mov   $31+x,a           ; back to return addr instead
14d8: 2f e4     bra   $14be             ; then continue
; vcmd branches
14da: 30 20     bmi   $14fc             ; vcmds 01-7f - note info:
14dc: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
14df: 3f 9c 15  call  $159c             ;   read next byte
14e2: 30 18     bmi   $14fc             ;   if note note then
14e4: 2d        push  a
14e5: 9f        xcn   a
14e6: 28 07     and   a,#$07
14e8: fd        mov   y,a
14e9: f6 96 34  mov   a,$3496+y
14ec: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
14ef: ae        pop   a
14f0: 28 0f     and   a,#$0f
14f2: fd        mov   y,a
14f3: f6 9e 34  mov   a,$349e+y
14f6: d5 10 02  mov   $0210+x,a         ;   set per-note vol from low nybble
14f9: 3f 9c 15  call  $159c             ;   read vcmd into A and Y
; vcmd branches 80-ff
14fc: 68 e0     cmp   a,#$e0
14fe: 90 05     bcc   $1505
1500: 3f 8a 15  call  $158a             ; vcmds e0-ff
1503: 2f b9     bra   $14be
; vcmds 80-df - note
1505: f5 ff 03  mov   a,$03ff+x
1508: 04 1b     or    a,$1b
150a: d0 0c     bne   $1518
150c: dd        mov   a,y
150d: 2d        push  a
150e: e4 47     mov   a,$47
1510: 24 1a     and   a,$1a
1512: ae        pop   a
1513: d0 03     bne   $1518
1515: 3f 06 09  call  $0906             ; handle note cmd if vbit $1a clear
1518: f5 00 02  mov   a,$0200+x
151b: d4 70     mov   $70+x,a
151d: fd        mov   y,a
151e: f5 01 02  mov   a,$0201+x
1521: cf        mul   ya
1522: dd        mov   a,y
1523: d0 01     bne   $1526
1525: bc        inc   a
1526: d4 71     mov   $71+x,a           ; set actual key-off dur counter
1528: 2f 07     bra   $1531
152a: e4 1b     mov   a,$1b
152c: d0 06     bne   $1534
152e: 3f 20 19  call  $1920             ; do readahead
1531: 3f b5 17  call  $17b5
1534: 3d        inc   x
1535: 3d        inc   x
1536: 0b 47     asl   $47
1538: f0 03     beq   $153d
153a: 5f b4 14  jmp   $14b4

153d: e4 54     mov   a,$54             ; tempo fade counter
153f: f0 0b     beq   $154c
1541: ba 56     movw  ya,$56
1543: 7a 52     addw  ya,$52            ; add tempo fade to tempo
1545: 6e 54 02  dbnz  $54,$154a
1548: ba 54     movw  ya,$54            ; last time: move tempo target to tempo
154a: da 52     movw  $52,ya
154c: e4 68     mov   a,$68             ; echo vol fade counter
154e: f0 15     beq   $1565
1550: ba 64     movw  ya,$64
1552: 7a 60     addw  ya,$60            ; add echo L delta to echo L vol
1554: da 60     movw  $60,ya
1556: ba 66     movw  ya,$66
1558: 7a 62     addw  ya,$62            ; add echo R delta to echo L vol
155a: 6e 68 06  dbnz  $68,$1563
155d: ba 68     movw  ya,$68
155f: da 60     movw  $60,ya
1561: eb 6a     mov   y,$6a
1563: da 62     movw  $62,ya
1565: e4 5a     mov   a,$5a             ; master vol fade counter
1567: f0 0e     beq   $1577
1569: ba 5c     movw  ya,$5c
156b: 7a 58     addw  ya,$58            ; add master vol delta to value
156d: 6e 5a 02  dbnz  $5a,$1572
1570: ba 5a     movw  ya,$5a
1572: da 58     movw  $58,ya
1574: 8f ff 5e  mov   $5e,#$ff          ; set all vol chg flags
1577: cd 00     mov   x,#$00
1579: 8f 01 47  mov   $47,#$01          ; first voice
157c: f4 31     mov   a,$31+x
157e: f0 03     beq   $1583
1580: 3f 69 18  call  $1869             ; do per-voice fades
1583: 3d        inc   x
1584: 3d        inc   x
1585: 0b 47     asl   $47
1587: d0 f3     bne   $157c
1589: 6f        ret

; dispatch vcmd in A (e0-ff)
158a: 1c        asl   a                 ; e0-ff => c0-fe (8 bit)
158b: fd        mov   y,a
158c: f6 55 17  mov   a,$1755+y
158f: 2d        push  a
1590: f6 54 17  mov   a,$1754+y
1593: 2d        push  a                 ; push jump address from table
1594: dd        mov   a,y
1595: 5c        lsr   a
1596: fd        mov   y,a
1597: f6 ea 17  mov   a,$17ea+y         ; vcmd length
159a: f0 08     beq   $15a4             ; if non zero
; read new argument to A and Y
159c: e7 30     mov   a,($30+x)
; advance reading ptr
159e: bb 30     inc   $30+x
15a0: d0 02     bne   $15a4
15a2: bb 31     inc   $31+x             ; inc reading ptr
15a4: fd        mov   y,a
15a5: 6f        ret                     ; jump to vcmd

; vcmd e0 - set instrument
15a6: d5 11 02  mov   $0211+x,a
15a9: fd        mov   y,a
15aa: 10 06     bpl   $15b2             ; if percussion note:
15ac: 80        setc
15ad: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
15af: 60        clrc
15b0: 84 5f     adc   a,$5f             ; add perc patch base
15b2: 8d 06     mov   y,#$06
; set sample A in bank at $14/5 width Y
15b4: cf        mul   ya
15b5: da 14     movw  $14,ya
15b7: 60        clrc
15b8: 98 00 14  adc   $14,#$00
15bb: 98 34 15  adc   $15,#$34
15be: e4 1a     mov   a,$1a
15c0: 24 47     and   a,$47
15c2: d0 3a     bne   $15fe
15c4: 4d        push  x
15c5: 7d        mov   a,x
15c6: 9f        xcn   a
15c7: 5c        lsr   a
15c8: 08 04     or    a,#$04            ; voice X SRCN
15ca: 5d        mov   x,a
15cb: 8d 00     mov   y,#$00
15cd: f7 14     mov   a,($14)+y
15cf: 10 0e     bpl   $15df
15d1: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
15d3: 38 20 48  and   $48,#$20          ;  keep echo bit from FLG
15d6: 0e 48 00  tset1 $0048             ;  OR in noise freq
15d9: 09 47 49  or    ($49),($47)       ;  set vbit in noise enable
15dc: dd        mov   a,y               ;  set SRCN to 0
15dd: 2f 07     bra   $15e6             ; else
15df: e4 47     mov   a,$47
15e1: 4e 49 00  tclr1 $0049             ;  clear noise vbit
15e4: f7 14     mov   a,($14)+y         ;  set SRCN from table
15e6: c9 f2 00  mov   $00f2,x
15e9: c5 f3 00  mov   $00f3,a
15ec: 3d        inc   x
15ed: fc        inc   y
15ee: ad 04     cmp   y,#$04
15f0: d0 f2     bne   $15e4             ; set SRCN, ADSR1/2, GAIN from table
15f2: ce        pop   x
15f3: f7 14     mov   a,($14)+y
15f5: d5 21 02  mov   $0221+x,a         ; set pitch multiplier
15f8: fc        inc   y
15f9: f7 14     mov   a,($14)+y
15fb: d5 20 02  mov   $0220+x,a
15fe: 6f        ret

; vcmd e1 - pan
15ff: d5 51 03  mov   $0351+x,a
1602: 28 1f     and   a,#$1f
1604: d5 31 03  mov   $0331+x,a         ; voice pan value
1607: e8 00     mov   a,#$00
1609: d5 30 03  mov   $0330+x,a
160c: 6f        ret

; vcmd e2 - pan fade
160d: d4 91     mov   $91+x,a
160f: 2d        push  a
1610: 3f 9c 15  call  $159c
1613: d5 50 03  mov   $0350+x,a
1616: 80        setc
1617: b5 31 03  sbc   a,$0331+x         ; current pan value
161a: ce        pop   x
161b: 3f f8 17  call  $17f8             ; delta = pan value / steps
161e: d5 40 03  mov   $0340+x,a
1621: dd        mov   a,y
1622: d5 41 03  mov   $0341+x,a
1625: 6f        ret

; vcmd e3 - vibrato on
1626: d5 b0 02  mov   $02b0+x,a
1629: 3f 9c 15  call  $159c
162c: d5 a1 02  mov   $02a1+x,a
162f: 3f 9c 15  call  $159c
; vcmd e4 - vibrato off
1632: d4 b1     mov   $b1+x,a
1634: d5 c1 02  mov   $02c1+x,a
1637: e8 00     mov   a,#$00
1639: d5 b1 02  mov   $02b1+x,a
163c: 6f        ret

; vcmd f0 - vibrato fade
163d: d5 b1 02  mov   $02b1+x,a
1640: 2d        push  a
1641: 8d 00     mov   y,#$00
1643: f4 b1     mov   a,$b1+x
1645: ce        pop   x
1646: 9e        div   ya,x
1647: f8 44     mov   x,$44
1649: d5 c0 02  mov   $02c0+x,a
164c: 6f        ret

; vcmd e5 - master volume
164d: e5 ca 03  mov   a,$03ca
1650: d0 04     bne   $1656
1652: e8 00     mov   a,#$00
1654: da 58     movw  $58,ya
1656: 6f        ret

; vcmd e6 - master volume fade
1657: c4 5a     mov   $5a,a
1659: 3f 9c 15  call  $159c
165c: c4 5b     mov   $5b,a
165e: 80        setc
165f: a4 59     sbc   a,$59
1661: f8 5a     mov   x,$5a
1663: 3f f8 17  call  $17f8
1666: da 5c     movw  $5c,ya
1668: 6f        ret

; vcmd e7 - tempo
1669: e8 00     mov   a,#$00
166b: da 52     movw  $52,ya
166d: 6f        ret

; vcmd e8 - tempo fade
166e: c4 54     mov   $54,a
1670: 3f 9c 15  call  $159c
1673: c4 55     mov   $55,a
1675: 80        setc
1676: a4 53     sbc   a,$53
1678: f8 54     mov   x,$54
167a: 3f f8 17  call  $17f8
167d: da 56     movw  $56,ya
167f: 6f        ret

; vcmd e9 - global transpose
1680: c4 50     mov   $50,a
1682: 6f        ret

; vcmd ea - per-voice transpose
1683: d5 f0 02  mov   $02f0+x,a
1686: 6f        ret

; vcmd eb - tremolo on
1687: d5 e0 02  mov   $02e0+x,a
168a: 3f 9c 15  call  $159c
168d: d5 d1 02  mov   $02d1+x,a
1690: 3f 9c 15  call  $159c
; vcmd ec - tremolo off
1693: d4 c1     mov   $c1+x,a
1695: 6f        ret

; vcmd f1 - pitch envelope (release)
1696: e8 01     mov   a,#$01
1698: 2f 02     bra   $169c
; vcmd f2 - pitch envelope (attack)
169a: e8 00     mov   a,#$00
169c: d5 90 02  mov   $0290+x,a
169f: dd        mov   a,y
16a0: d5 81 02  mov   $0281+x,a
16a3: 3f 9c 15  call  $159c
16a6: d5 80 02  mov   $0280+x,a
16a9: 3f 9c 15  call  $159c
16ac: d5 91 02  mov   $0291+x,a
16af: 6f        ret

; vcmd f3 - pitch envelope off
16b0: d5 80 02  mov   $0280+x,a
16b3: 6f        ret

; vcmd ed - volume
16b4: d5 01 03  mov   $0301+x,a
16b7: e8 00     mov   a,#$00
16b9: d5 00 03  mov   $0300+x,a
16bc: 6f        ret

; vcmd ee - volume fade
16bd: d4 90     mov   $90+x,a
16bf: 2d        push  a
16c0: 3f 9c 15  call  $159c
16c3: d5 20 03  mov   $0320+x,a
16c6: 80        setc
16c7: b5 01 03  sbc   a,$0301+x
16ca: ce        pop   x
16cb: 3f f8 17  call  $17f8
16ce: d5 10 03  mov   $0310+x,a
16d1: dd        mov   a,y
16d2: d5 11 03  mov   $0311+x,a
16d5: 6f        ret

; vcmd f4 - tuning
16d6: d5 81 03  mov   $0381+x,a
16d9: 6f        ret

; vcmd ef - call subroutine
16da: d5 40 02  mov   $0240+x,a
16dd: 3f 9c 15  call  $159c
16e0: d5 41 02  mov   $0241+x,a         ; $0240/1+X - destination (arg1/2)
16e3: 3f 9c 15  call  $159c
16e6: d4 80     mov   $80+x,a           ; repeat count from arg3
16e8: f4 30     mov   a,$30+x
16ea: d5 30 02  mov   $0230+x,a
16ed: f4 31     mov   a,$31+x
16ef: d5 31 02  mov   $0231+x,a         ; $0230/1+X - return addr
; jump to $0240/1+X (loop destination)
16f2: f5 40 02  mov   a,$0240+x
16f5: d4 30     mov   $30+x,a
16f7: f5 41 02  mov   a,$0241+x
16fa: d4 31     mov   $31+x,a
16fc: 6f        ret

; vcmd f5 - echo vbits/volume
16fd: c5 c3 03  mov   $03c3,a
1700: c4 4a     mov   $4a,a             ; echo vbit shadow = arg1
1702: 3f 9c 15  call  $159c
1705: e8 00     mov   a,#$00
1707: da 60     movw  $60,ya            ; echo vol L shadow = arg2
1709: 3f 9c 15  call  $159c
170c: e8 00     mov   a,#$00
170e: da 62     movw  $62,ya            ; echo vol R shadow = arg3
1710: b2 48     clr5  $48
1712: 6f        ret

; vcmd f8 - echo volume fade
1713: c4 68     mov   $68,a
1715: 3f 9c 15  call  $159c
1718: c4 69     mov   $69,a
171a: 80        setc
171b: a4 61     sbc   a,$61
171d: f8 68     mov   x,$68
171f: 3f f8 17  call  $17f8
1722: da 64     movw  $64,ya
1724: 3f 9c 15  call  $159c
1727: c4 6a     mov   $6a,a
1729: 80        setc
172a: a4 63     sbc   a,$63
172c: f8 68     mov   x,$68
172e: 3f f8 17  call  $17f8
1731: da 66     movw  $66,ya
1733: 6f        ret

; vcmd f6 - disable echo
1734: da 60     movw  $60,ya            ; zero echo vol L shadow
1736: da 62     movw  $62,ya            ; zero echo vol R shadow
1738: a2 48     set5  $48               ; disable echo write
173a: 6f        ret

; vcmd f7 - set echo params
173b: 3f 5d 17  call  $175d             ; set echo delay from arg1
173e: 3f 9c 15  call  $159c
1741: c4 4e     mov   $4e,a             ; set echo feedback shadow from arg2
1743: 3f 9c 15  call  $159c
1746: 8d 08     mov   y,#$08
1748: cf        mul   ya
1749: 5d        mov   x,a
174a: 8d 0f     mov   y,#$0f
174c: f5 b5 1a  mov   a,$1ab5+x         ; filter table
174f: 3f fb 09  call  $09fb
1752: 3d        inc   x
1753: dd        mov   a,y
1754: 60        clrc
1755: 88 10     adc   a,#$10
1757: fd        mov   y,a
1758: 10 f2     bpl   $174c             ; set echo filter from table index arg3
175a: f8 44     mov   x,$44
175c: 6f        ret
; set echo delay to A
175d: c4 4d     mov   $4d,a
175f: 8d 7d     mov   y,#$7d
1761: cc f2 00  mov   $00f2,y
1764: e5 f3 00  mov   a,$00f3           ; set echo delay
1767: 64 4d     cmp   a,$4d
1769: f0 2b     beq   $1796             ; same as $4d?
176b: 28 0f     and   a,#$0f
176d: 48 ff     eor   a,#$ff
176f: f3 4c 03  bbc7  $4c,$1775
1772: 60        clrc
1773: 84 4c     adc   a,$4c
1775: c4 4c     mov   $4c,a
1777: 8d 04     mov   y,#$04
1779: f6 d4 1a  mov   a,$1ad4+y         ; shadow reg DSP reg table
177c: c5 f2 00  mov   $00f2,a
177f: e8 00     mov   a,#$00
1781: c5 f3 00  mov   $00f3,a
1784: fe f3     dbnz  y,$1779           ; zero echo vol, feedback, vbit DSP regs
1786: e4 48     mov   a,$48
1788: 08 20     or    a,#$20
178a: 8d 6c     mov   y,#$6c
178c: 3f fb 09  call  $09fb             ; set FLG from shadow but disable echo
178f: e4 4d     mov   a,$4d
1791: 8d 7d     mov   y,#$7d
1793: 3f fb 09  call  $09fb             ; set echo delay from $4d
1796: 1c        asl   a
1797: 1c        asl   a
1798: 1c        asl   a
1799: 48 ff     eor   a,#$ff
179b: 80        setc
179c: 88 d0     adc   a,#$d0
179e: 8d 6d     mov   y,#$6d
17a0: 5f fb 09  jmp   $09fb             ; set echo region to $d000-8*delay

; vcmd fa - set perc patch base
17a3: c4 5f     mov   $5f,a
17a5: 6f        ret

; (unused?) vcmd fb - skip 2 bytes
17a6: 3f 9e 15  call  $159e
17a9: 6f        ret

; (unused?) vcmd fc
17aa: bc        inc   a
17ab: d5 ff 03  mov   $03ff+x,a
17ae: 6f        ret

; (unused?) vcmd fd
17af: bc        inc   a
; (unused?) vcmd fe
17b0: c4 1b     mov   $1b,a
17b2: 5f df 13  jmp   $13df

17b5: f4 a0     mov   a,$a0+x
17b7: d0 33     bne   $17ec
17b9: e7 30     mov   a,($30+x)
17bb: 68 f9     cmp   a,#$f9
17bd: d0 2d     bne   $17ec
17bf: 3f 9e 15  call  $159e
17c2: 3f 9c 15  call  $159c
; vcmd f9 - pitch slide
17c5: d4 a1     mov   $a1+x,a
17c7: 3f 9c 15  call  $159c
17ca: d4 a0     mov   $a0+x,a
17cc: 3f 9c 15  call  $159c
17cf: 60        clrc
17d0: 84 50     adc   a,$50             ; add global transpose
17d2: 95 f0 02  adc   a,$02f0+x         ; per-voice transpose
; calculate portamento delta
17d5: 28 7f     and   a,#$7f
17d7: d5 80 03  mov   $0380+x,a         ; final portamento value
17da: 80        setc
17db: b5 61 03  sbc   a,$0361+x         ; note number
17de: fb a0     mov   y,$a0+x           ; portamento steps
17e0: 6d        push  y
17e1: ce        pop   x
17e2: 3f f8 17  call  $17f8
17e5: d5 70 03  mov   $0370+x,a
17e8: dd        mov   a,y
17e9: d5 71 03  mov   $0371+x,a         ; portamento delta
17ec: 6f        ret

17ed: f5 61 03  mov   a,$0361+x
17f0: c4 11     mov   $11,a
17f2: f5 60 03  mov   a,$0360+x
17f5: c4 10     mov   $10,a
17f7: 6f        ret

; signed 16 bit division
17f8: ed        notc
17f9: 6b 12     ror   $12
17fb: 10 03     bpl   $1800
17fd: 48 ff     eor   a,#$ff
17ff: bc        inc   a
1800: 8d 00     mov   y,#$00
1802: 9e        div   ya,x
1803: 2d        push  a
1804: e8 00     mov   a,#$00
1806: 9e        div   ya,x
1807: ee        pop   y
1808: f8 44     mov   x,$44
180a: f3 12 06  bbc7  $12,$1813
180d: da 14     movw  $14,ya
180f: ba 0e     movw  ya,$0e
1811: 9a 14     subw  ya,$14
1813: 6f        ret

; vcmd dispatch table ($1754)
1814: dw $15a6  ; e0 - set instrument
1816: dw $15ff  ; e1 - pan
1818: dw $160d  ; e2 - pan fade
181a: dw $1626  ; e3 - vibrato on
181c: dw $1632  ; e4 - vibrato off
181e: dw $164d  ; e5 - master volume
1820: dw $1657  ; e6 - master volume fade
1822: dw $1669  ; e7 - tempo
1824: dw $166e  ; e8 - tempo fade
1826: dw $1680  ; e9 - global transpose
1828: dw $1683  ; ea - per-voice transpose
182a: dw $1687  ; eb - tremolo on
182c: dw $1693  ; ec - tremolo off
182e: dw $16b4  ; ed - volume
1830: dw $16bd  ; ee - volume fade
1832: dw $16da  ; ef - call subroutine
1834: dw $163d  ; f0 - vibrato fade
1836: dw $1696  ; f1 - pitch envelope (release)
1838: dw $169a  ; f2 - pitch envelope (attack)
183a: dw $16b0  ; f3 - pitch envelope off
183c: dw $16d6  ; f4 - tuning
183e: dw $16fd  ; f5 - echo vbits/volume
1840: dw $1734  ; f6 - disable echo
1842: dw $173b  ; f7 - set echo params
1844: dw $1713  ; f8 - echo volume fade
1846: dw $17c5  ; f9 - pitch slide
1848: dw $17a3  ; fa - set perc patch base
                ; fb-fe undefined?
                ; ff undefined

; vcmd lengths ($17ea)
1849: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
1852: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
185a: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
1862: db $03,$03,$01,$02,$00,$00,$00     ; f8-fe?

; do voice fades
1869: f4 90     mov   a,$90+x           ; voice volume fade counter
186b: f0 09     beq   $1876
186d: e8 00     mov   a,#$00
186f: 8d 03     mov   y,#$03
1871: 9b 90     dec   $90+x             ; dec voice vol fade counter
1873: 3f fc 18  call  $18fc
1876: fb c1     mov   y,$c1+x
1878: f0 23     beq   $189d
187a: f5 e0 02  mov   a,$02e0+x
187d: de c0 1b  cbne  $c0+x,$189b
1880: 09 47 5e  or    ($5e),($47)
1883: f5 d0 02  mov   a,$02d0+x
1886: 10 07     bpl   $188f
1888: fc        inc   y
1889: d0 04     bne   $188f
188b: e8 80     mov   a,#$80
188d: 2f 04     bra   $1893
188f: 60        clrc
1890: 95 d1 02  adc   a,$02d1+x
1893: d5 d0 02  mov   $02d0+x,a
1896: 3f 83 1a  call  $1a83
1899: 2f 07     bra   $18a2
189b: bb c0     inc   $c0+x
189d: e8 ff     mov   a,#$ff
189f: 3f 8e 1a  call  $1a8e
18a2: f4 91     mov   a,$91+x
18a4: f0 09     beq   $18af
18a6: e8 30     mov   a,#$30
18a8: 8d 03     mov   y,#$03
18aa: 9b 91     dec   $91+x
18ac: 3f fc 18  call  $18fc
18af: e4 47     mov   a,$47
18b1: 24 5e     and   a,$5e
18b3: f0 46     beq   $18fb
18b5: f5 31 03  mov   a,$0331+x
18b8: fd        mov   y,a
18b9: f5 30 03  mov   a,$0330+x
18bc: da 10     movw  $10,ya
18be: 7d        mov   a,x
18bf: 9f        xcn   a
18c0: 5c        lsr   a
18c1: c4 12     mov   $12,a
18c3: eb 11     mov   y,$11
18c5: f6 a1 1a  mov   a,$1aa1+y         ; next pan val from table
18c8: 80        setc
18c9: b6 a0 1a  sbc   a,$1aa0+y         ; pan val
18cc: eb 10     mov   y,$10
18ce: cf        mul   ya
18cf: dd        mov   a,y
18d0: eb 11     mov   y,$11
18d2: 60        clrc
18d3: 96 a0 1a  adc   a,$1aa0+y         ; add integer part to pan val
18d6: fd        mov   y,a
18d7: f5 21 03  mov   a,$0321+x         ; volume
18da: cf        mul   ya
18db: f5 51 03  mov   a,$0351+x         ; bits 7/6 will negate volume L/R
18de: 1c        asl   a
18df: 13 12 01  bbc0  $12,$18e3
18e2: 1c        asl   a
18e3: dd        mov   a,y
18e4: 90 03     bcc   $18e9
18e6: 48 ff     eor   a,#$ff
18e8: bc        inc   a
18e9: eb 12     mov   y,$12
18eb: 3f f3 09  call  $09f3
18ee: 8d 14     mov   y,#$14
18f0: e8 00     mov   a,#$00
18f2: 9a 10     subw  ya,$10
18f4: da 10     movw  $10,ya
18f6: ab 12     inc   $12
18f8: 33 12 c8  bbc1  $12,$18c3
18fb: 6f        ret

18fc: 09 47 5e  or    ($5e),($47)
18ff: da 14     movw  $14,ya
1901: da 16     movw  $16,ya
1903: 4d        push  x
1904: ee        pop   y
1905: 60        clrc
1906: d0 0a     bne   $1912
1908: 98 1f 16  adc   $16,#$1f
190b: e8 00     mov   a,#$00
190d: d7 14     mov   ($14)+y,a
190f: fc        inc   y
1910: 2f 09     bra   $191b
1912: 98 10 16  adc   $16,#$10
1915: 3f 19 19  call  $1919
1918: fc        inc   y
1919: f7 14     mov   a,($14)+y
191b: 97 16     adc   a,($16)+y
191d: d7 14     mov   ($14)+y,a
191f: 6f        ret

; do readahead
1920: f4 71     mov   a,$71+x
1922: f0 63     beq   $1987
1924: 9b 71     dec   $71+x
1926: f0 05     beq   $192d
1928: e8 02     mov   a,#$02
192a: de 70 5a  cbne  $70+x,$1987
192d: f4 80     mov   a,$80+x
192f: c4 17     mov   $17,a
1931: f4 30     mov   a,$30+x
1933: fb 31     mov   y,$31+x
1935: da 14     movw  $14,ya
1937: 8d 00     mov   y,#$00
1939: f7 14     mov   a,($14)+y
193b: f0 1c     beq   $1959
193d: 30 05     bmi   $1944
193f: fc        inc   y
1940: f7 14     mov   a,($14)+y
1942: 10 fb     bpl   $193f
1944: 68 c8     cmp   a,#$c8
1946: f0 3f     beq   $1987
1948: 68 ef     cmp   a,#$ef
194a: f0 29     beq   $1975
194c: 68 e0     cmp   a,#$e0
194e: 90 30     bcc   $1980
1950: 6d        push  y
1951: fd        mov   y,a
1952: ae        pop   a
1953: 96 6a 17  adc   a,$176a+y         ; vcmd lengths
1956: fd        mov   y,a
1957: 2f e0     bra   $1939
1959: e4 17     mov   a,$17
195b: f0 23     beq   $1980
195d: 8b 17     dec   $17
195f: d0 0a     bne   $196b
; read $0230/1+X into YA
1961: f5 31 02  mov   a,$0231+x
1964: 2d        push  a
1965: f5 30 02  mov   a,$0230+x
1968: ee        pop   y
1969: 2f ca     bra   $1935
; read $0240/1+X into YA
196b: f5 41 02  mov   a,$0241+x
196e: 2d        push  a
196f: f5 40 02  mov   a,$0240+x
1972: ee        pop   y
1973: 2f c0     bra   $1935
;
1975: fc        inc   y
1976: f7 14     mov   a,($14)+y
1978: 2d        push  a
1979: fc        inc   y
197a: f7 14     mov   a,($14)+y
197c: fd        mov   y,a
197d: ae        pop   a
197e: 2f b5     bra   $1935
1980: e4 47     mov   a,$47
1982: 8d 5c     mov   y,#$5c
1984: 3f f3 09  call  $09f3
1987: f2 13     clr7  $13
1989: f4 a0     mov   a,$a0+x
198b: f0 19     beq   $19a6
198d: f4 a1     mov   a,$a1+x
198f: f0 04     beq   $1995
1991: 9b a1     dec   $a1+x
1993: 2f 11     bra   $19a6
1995: e4 1a     mov   a,$1a
1997: 24 47     and   a,$47
1999: d0 0b     bne   $19a6
199b: e2 13     set7  $13
199d: e8 60     mov   a,#$60
199f: 8d 03     mov   y,#$03
19a1: 9b a0     dec   $a0+x
19a3: 3f ff 18  call  $18ff
19a6: 3f ed 17  call  $17ed
19a9: f4 b1     mov   a,$b1+x
19ab: f0 4c     beq   $19f9
19ad: f5 b0 02  mov   a,$02b0+x
19b0: de b0 44  cbne  $b0+x,$19f7
19b3: f5 00 01  mov   a,$0100+x
19b6: 75 b1 02  cmp   a,$02b1+x
19b9: d0 05     bne   $19c0
19bb: f5 c1 02  mov   a,$02c1+x
19be: 2f 0d     bra   $19cd
19c0: 40        setp
19c1: bb 00     inc   $00+x
19c3: 20        clrp
19c4: fd        mov   y,a
19c5: f0 02     beq   $19c9
19c7: f4 b1     mov   a,$b1+x
19c9: 60        clrc
19ca: 95 c0 02  adc   a,$02c0+x
19cd: d4 b1     mov   $b1+x,a
19cf: f5 a0 02  mov   a,$02a0+x
19d2: 60        clrc
19d3: 95 a1 02  adc   a,$02a1+x
19d6: d5 a0 02  mov   $02a0+x,a
19d9: c4 12     mov   $12,a
19db: 1c        asl   a
19dc: 1c        asl   a
19dd: 90 02     bcc   $19e1
19df: 48 ff     eor   a,#$ff
19e1: fd        mov   y,a
19e2: f4 b1     mov   a,$b1+x
19e4: 68 f1     cmp   a,#$f1
19e6: 90 05     bcc   $19ed
19e8: 28 0f     and   a,#$0f
19ea: cf        mul   ya
19eb: 2f 04     bra   $19f1
19ed: cf        mul   ya
19ee: dd        mov   a,y
19ef: 8d 00     mov   y,#$00
19f1: 3f 6e 1a  call  $1a6e
19f4: 5f 70 09  jmp   $0970

19f7: bb b0     inc   $b0+x
19f9: e3 13 f8  bbs7  $13,$19f4
19fc: 6f        ret

; per-voice fades/dsps
19fd: f2 13     clr7  $13
19ff: f4 c1     mov   a,$c1+x
1a01: f0 09     beq   $1a0c
1a03: f5 e0 02  mov   a,$02e0+x
1a06: de c0 03  cbne  $c0+x,$1a0c
1a09: 3f 76 1a  call  $1a76
1a0c: f5 31 03  mov   a,$0331+x
1a0f: fd        mov   y,a
1a10: f5 30 03  mov   a,$0330+x
1a13: da 10     movw  $10,ya            ; $10/1 = voice pan value
1a15: f4 91     mov   a,$91+x           ; voice pan fade counter
1a17: f0 0a     beq   $1a23
1a19: f5 41 03  mov   a,$0341+x
1a1c: fd        mov   y,a
1a1d: f5 40 03  mov   a,$0340+x         ; pan fade delta
1a20: 3f 58 1a  call  $1a58             ; add delta (with mutations)?
1a23: f3 13 03  bbc7  $13,$1a29
1a26: 3f be 18  call  $18be
1a29: f2 13     clr7  $13
1a2b: 3f ed 17  call  $17ed
1a2e: f4 a0     mov   a,$a0+x
1a30: f0 0e     beq   $1a40
1a32: f4 a1     mov   a,$a1+x
1a34: d0 0a     bne   $1a40
1a36: f5 71 03  mov   a,$0371+x
1a39: fd        mov   y,a
1a3a: f5 70 03  mov   a,$0370+x
1a3d: 3f 58 1a  call  $1a58
1a40: f4 b1     mov   a,$b1+x
1a42: f0 b5     beq   $19f9
1a44: f5 b0 02  mov   a,$02b0+x
1a47: de b0 af  cbne  $b0+x,$19f9
1a4a: eb 51     mov   y,$51
1a4c: f5 a1 02  mov   a,$02a1+x
1a4f: cf        mul   ya
1a50: dd        mov   a,y
1a51: 60        clrc
1a52: 95 a0 02  adc   a,$02a0+x
1a55: 5f d9 19  jmp   $19d9

1a58: e2 13     set7  $13
1a5a: cb 12     mov   $12,y
1a5c: 3f 0a 18  call  $180a
1a5f: 6d        push  y
1a60: eb 51     mov   y,$51
1a62: cf        mul   ya
1a63: cb 14     mov   $14,y
1a65: 8f 00 15  mov   $15,#$00
1a68: eb 51     mov   y,$51
1a6a: ae        pop   a
1a6b: cf        mul   ya
1a6c: 7a 14     addw  ya,$14
1a6e: 3f 0a 18  call  $180a
1a71: 7a 10     addw  ya,$10
1a73: da 10     movw  $10,ya
1a75: 6f        ret

1a76: e2 13     set7  $13
1a78: eb 51     mov   y,$51
1a7a: f5 d1 02  mov   a,$02d1+x
1a7d: cf        mul   ya
1a7e: dd        mov   a,y
1a7f: 60        clrc
1a80: 95 d0 02  adc   a,$02d0+x
1a83: 1c        asl   a
1a84: 90 02     bcc   $1a88
1a86: 48 ff     eor   a,#$ff
1a88: fb c1     mov   y,$c1+x
1a8a: cf        mul   ya
1a8b: dd        mov   a,y
1a8c: 48 ff     eor   a,#$ff
1a8e: eb 59     mov   y,$59
1a90: cf        mul   ya
1a91: f5 10 02  mov   a,$0210+x
1a94: cf        mul   ya
1a95: f5 01 03  mov   a,$0301+x
1a98: cf        mul   ya
1a99: dd        mov   a,y
1a9a: cf        mul   ya
1a9b: dd        mov   a,y
1a9c: d5 21 03  mov   $0321+x,a
1a9f: 6f        ret

; pan table
1aa0: db $00,$01,$03,$07,$0d,$15,$1e,$29
1aa8: db $34,$42,$51,$5e,$67,$6e,$73,$77
1ab0: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
1ab5: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
1abd: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
1ac5: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
1acd: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($1ad9+1) for dsp regs ($1ad4+1)
1ad5: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1adf: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
1ae9: dw $085f
1aeb: dw $08de
1aed: dw $0965
1aef: dw $09f4
1af1: dw $0a8c
1af3: dw $0b2c
1af5: dw $0bd6
1af7: dw $0c8b
1af9: dw $0d4a
1afb: dw $0e14
1afd: dw $0eea
1aff: dw $0fcd
1b01: dw $10be
