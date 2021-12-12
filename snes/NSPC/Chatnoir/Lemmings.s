; Lemmings SPC

0800: 20        clrp                    ; direct page = 00
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x              ; stack ptr = $01CF
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 f0     cmp   x,#$f0
080a: d0 fb     bne   $0807             ; zero $00-$EF
080c: bc        inc   a
080d: 3f 3c 0d  call  $0d3c
0810: a2 48     set5  $48
0812: e8 60     mov   a,#$60
0814: 8d 0c     mov   y,#$0c
0816: 3f d6 09  call  $09d6             ; set master vol L to 96
0819: 8d 1c     mov   y,#$1c
081b: 3f d6 09  call  $09d6             ; set master vol R to 96
081e: e8 3c     mov   a,#$3c
0820: 8d 5d     mov   y,#$5d
0822: 3f d6 09  call  $09d6             ; set source dir to $3C00
0825: e8 f0     mov   a,#$f0
0827: c5 f1 00  mov   $00f1,a           ; reset ports, timers off
082a: e8 10     mov   a,#$10
082c: c5 fa 00  mov   $00fa,a           ; set timer0 latch to $10 (500Hz, 2ms)
082f: c4 53     mov   $53,a             ; and keep a copy in $53
0831: e2 1a     set7  $1a
0833: e8 01     mov   a,#$01
0835: c5 f7 00  mov   $00f7,a           ; send #$01 to APU3
0838: c4 d3     mov   $d3,a             ; and keep a copy in $D3
083a: e8 01     mov   a,#$01
083c: c5 f1 00  mov   $00f1,a           ; start timer 0
; begin main loop
083f: e4 1b     mov   a,$1b
0841: d0 51     bne   $0894
0843: 8d 0a     mov   y,#$0a
0845: ad 05     cmp   y,#$05
0847: f0 07     beq   $0850
0849: b0 08     bcs   $0853
084b: 69 4d 4c  cmp   ($4c),($4d)
084e: d0 11     bne   $0861
0850: e3 4c 0e  bbs7  $4c,$0861
0853: f6 bd 10  mov   a,$10bd+y
0856: c5 f2 00  mov   $00f2,a
0859: f6 c7 10  mov   a,$10c7+y
085c: 5d        mov   x,a
085d: e6        mov   a,(x)
085e: c5 f3 00  mov   $00f3,a           ; write shadow regs
0861: fe e2     dbnz  y,$0845
0863: cb 45     mov   $45,y
0865: cb 46     mov   $46,y             ; zero key on/off shadows
0867: e4 18     mov   a,$18
0869: 44 19     eor   a,$19
086b: 5c        lsr   a
086c: 5c        lsr   a
086d: ed        notc
086e: 6b 18     ror   $18
0870: 6b 19     ror   $19
0872: ec fd 00  mov   y,$00fd
0875: f0 fb     beq   $0872             ; wait for counter0 to go nonzero
0877: 6d        push  y
0878: e8 20     mov   a,#$20
087a: cf        mul   ya                ; YA = counter0 * #$20
087b: 60        clrc
087c: 84 43     adc   a,$43
087e: c4 43     mov   $43,a
0880: 90 07     bcc   $0889
0882: 69 4d 4c  cmp   ($4c),($4d)
0885: f0 02     beq   $0889
0887: ab 4c     inc   $4c
0889: e4 53     mov   a,$53
088b: ee        pop   y
088c: cf        mul   ya                ; YA = counter0 * $53
088d: 60        clrc
088e: 84 51     adc   a,$51
0890: c4 51     mov   $51,a
0892: 90 0a     bcc   $089e
0894: 3f 3f 11  call  $113f             ; dispatch CPU cmd
0897: cd 00     mov   x,#$00
0899: 3f b7 08  call  $08b7             ; read CPU ports
089c: 2f a1     bra   $083f             ; restart main loop
089e: e4 04     mov   a,$04             ; if $04 == 0 then
08a0: f0 12     beq   $08b4             ;   restart main loop
08a2: cd 00     mov   x,#$00
08a4: 8f 01 47  mov   $47,#$01          ; loop voice index X, bit $47
08a7: f4 31     mov   a,$31+x
08a9: f0 03     beq   $08ae
08ab: 3f e6 0f  call  $0fe6
08ae: 3d        inc   x
08af: 3d        inc   x
08b0: 0b 47     asl   $47
08b2: d0 f3     bne   $08a7             ; do all 8 voices
08b4: 5f 3f 08  jmp   $083f             ; restart main loop

; read CPU ports
08b7: e5 f4 00  mov   a,$00f4           ; get APU0
08ba: c5 90 03  mov   $0390,a           ; save in $0390
08bd: c4 00     mov   $00,a             ; and $00
08bf: f0 1e     beq   $08df             ; return if zero, otherwise...
08c1: e5 f5 00  mov   a,$00f5
08c4: c5 91 03  mov   $0391,a           ; save APU1 in 0391
08c7: e5 f6 00  mov   a,$00f6
08ca: c5 92 03  mov   $0392,a           ; save APU2 in 0392
08cd: e5 f7 00  mov   a,$00f7
08d0: c5 93 03  mov   $0393,a           ; save APU3 in 0393
08d3: e8 31     mov   a,#$31
08d5: c5 f1 00  mov   $00f1,a           ; clear ports
08d8: ab d3     inc   $d3
08da: e4 d3     mov   a,$d3             ; inc
08dc: c5 f7 00  mov   $00f7,a           ; write back to APU3
08df: 6f        ret

08e0: 6f        ret

08e1: ad ca     cmp   y,#$ca
08e3: 90 05     bcc   $08ea
08e5: 3f 8f 0b  call  $0b8f
08e8: 8d a4     mov   y,#$a4
08ea: ad c8     cmp   y,#$c8
08ec: b0 f2     bcs   $08e0
08ee: e4 1a     mov   a,$1a
08f0: 24 47     and   a,$47
08f2: d0 ec     bne   $08e0
08f4: dd        mov   a,y
08f5: 28 7f     and   a,#$7f
08f7: 60        clrc
08f8: 84 50     adc   a,$50
08fa: 60        clrc
08fb: 95 f0 02  adc   a,$02f0+x
08fe: d5 61 03  mov   $0361+x,a
0901: f5 81 03  mov   a,$0381+x
0904: d5 60 03  mov   $0360+x,a
0907: f5 b1 02  mov   a,$02b1+x
090a: 5c        lsr   a
090b: e8 00     mov   a,#$00
090d: 7c        ror   a
090e: d5 a0 02  mov   $02a0+x,a
0911: e8 00     mov   a,#$00
0913: d4 b0     mov   $b0+x,a
0915: d5 00 01  mov   $0100+x,a
0918: d5 d0 02  mov   $02d0+x,a
091b: d4 c0     mov   $c0+x,a
091d: 09 47 5e  or    ($5e),($47)
0920: 09 47 45  or    ($45),($47)       ; key on shadow
0923: f5 80 02  mov   a,$0280+x
0926: d4 a0     mov   $a0+x,a
0928: f0 1e     beq   $0948
092a: f5 81 02  mov   a,$0281+x
092d: d4 a1     mov   $a1+x,a
092f: f5 90 02  mov   a,$0290+x
0932: d0 0a     bne   $093e
0934: f5 61 03  mov   a,$0361+x
0937: 80        setc
0938: b5 91 02  sbc   a,$0291+x
093b: d5 61 03  mov   $0361+x,a
093e: f5 91 02  mov   a,$0291+x
0941: 60        clrc
0942: 95 61 03  adc   a,$0361+x
0945: 3f b4 0d  call  $0db4
0948: 3f cc 0d  call  $0dcc             ; $10/11 = $0360/1+X
094b: 8d 00     mov   y,#$00
094d: e4 11     mov   a,$11
094f: 80        setc
0950: a8 34     sbc   a,#$34
0952: b0 09     bcs   $095d
0954: e4 11     mov   a,$11
0956: 80        setc
0957: a8 13     sbc   a,#$13
0959: b0 06     bcs   $0961
095b: dc        dec   y
095c: 1c        asl   a
095d: 7a 10     addw  ya,$10
095f: da 10     movw  $10,ya
0961: 4d        push  x
0962: e4 11     mov   a,$11
0964: 1c        asl   a
0965: 8d 00     mov   y,#$00
0967: cd 18     mov   x,#$18
0969: 9e        div   ya,x
096a: 5d        mov   x,a
096b: f6 d3 10  mov   a,$10d3+y
096e: c4 15     mov   $15,a
0970: f6 d2 10  mov   a,$10d2+y
0973: c4 14     mov   $14,a
0975: f6 d5 10  mov   a,$10d5+y
0978: 2d        push  a
0979: f6 d4 10  mov   a,$10d4+y
097c: ee        pop   y
097d: 9a 14     subw  ya,$14
097f: eb 10     mov   y,$10
0981: cf        mul   ya
0982: dd        mov   a,y
0983: 8d 00     mov   y,#$00
0985: 7a 14     addw  ya,$14
0987: cb 15     mov   $15,y
0989: 1c        asl   a
098a: 2b 15     rol   $15
098c: c4 14     mov   $14,a
098e: 2f 04     bra   $0994
0990: 4b 15     lsr   $15
0992: 7c        ror   a
0993: 3d        inc   x
0994: c8 06     cmp   x,#$06
0996: d0 f8     bne   $0990
0998: c4 14     mov   $14,a
099a: ce        pop   x
099b: f5 20 02  mov   a,$0220+x
099e: eb 15     mov   y,$15
09a0: cf        mul   ya
09a1: da 16     movw  $16,ya
09a3: f5 20 02  mov   a,$0220+x
09a6: eb 14     mov   y,$14
09a8: cf        mul   ya
09a9: 6d        push  y
09aa: f5 21 02  mov   a,$0221+x
09ad: eb 14     mov   y,$14
09af: cf        mul   ya
09b0: 7a 16     addw  ya,$16
09b2: da 16     movw  $16,ya
09b4: f5 21 02  mov   a,$0221+x
09b7: eb 15     mov   y,$15
09b9: cf        mul   ya
09ba: fd        mov   y,a
09bb: ae        pop   a
09bc: 7a 16     addw  ya,$16
09be: da 16     movw  $16,ya
09c0: 7d        mov   a,x
09c1: 9f        xcn   a
09c2: 5c        lsr   a
09c3: 08 02     or    a,#$02
09c5: fd        mov   y,a               ; Y = pitch lo reg for voice X
09c6: e4 16     mov   a,$16
09c8: 3f ce 09  call  $09ce
09cb: fc        inc   y                 ; Y = pitch hi reg for voice X
09cc: e4 17     mov   a,$17
09ce: 2d        push  a
09cf: e4 47     mov   a,$47
09d1: 24 1a     and   a,$1a
09d3: ae        pop   a
09d4: d0 06     bne   $09dc
; write A to DSP register Y
09d6: cc f2 00  mov   $00f2,y
09d9: c5 f3 00  mov   $00f3,a
09dc: 6f        ret

; load word at $40; INCW $40 twice
09dd: 8d 00     mov   y,#$00
09df: f7 40     mov   a,($40)+y
09e1: 3a 40     incw  $40
09e3: 2d        push  a
09e4: f7 40     mov   a,($40)+y
09e6: 3a 40     incw  $40
09e8: fd        mov   y,a
09e9: ae        pop   a
09ea: 6f        ret

; CPU cmd FF
09eb: 3f ec 10  call  $10ec             ; emulate standard CPU xfer protocol
09ee: c4 08     mov   $08,a
; CPU cmd < 40
09f0: c4 04     mov   $04,a
09f2: c5 f5 00  mov   $00f5,a
09f5: 1c        asl   a
09f6: 5d        mov   x,a
09f7: f5 ff 17  mov   a,$17ff+x
09fa: fd        mov   y,a
09fb: f5 fe 17  mov   a,$17fe+x
09fe: da 40     movw  $40,ya
; CPU cmd F0
0a00: 8f 02 0c  mov   $0c,#$02
0a03: e4 1a     mov   a,$1a
0a05: 48 ff     eor   a,#$ff
0a07: 0e 46 00  tset1 $0046             ; key off shadow
0a0a: 6f        ret

; reset voice and global state
0a0b: cd 0e     mov   x,#$0e
0a0d: 8f 80 47  mov   $47,#$80
0a10: e8 ff     mov   a,#$ff            ; loop over voices
0a12: d5 01 03  mov   $0301+x,a
0a15: e8 0a     mov   a,#$0a
0a17: 3f e8 0b  call  $0be8             ; set 0351+x,0331+X,0330+X from A
0a1a: d5 11 02  mov   $0211+x,a         ; zero stuff
0a1d: d5 81 03  mov   $0381+x,a
0a20: d5 f0 02  mov   $02f0+x,a
0a23: d5 80 02  mov   $0280+x,a
0a26: d5 00 04  mov   $0400+x,a
0a29: d4 b1     mov   $b1+x,a
0a2b: d4 c1     mov   $c1+x,a
0a2d: 1d        dec   x
0a2e: 1d        dec   x
0a2f: 4b 47     lsr   $47
0a31: d0 dd     bne   $0a10
0a33: c4 68     mov   $68,a
0a35: c4 54     mov   $54,a
0a37: c4 50     mov   $50,a
0a39: c4 42     mov   $42,a
0a3b: c4 5f     mov   $5f,a
0a3d: 8f 20 53  mov   $53,#$20
0a40: 6f        ret

; CPU cmd F1
0a41: e4 04     mov   a,$04
0a43: f0 fb     beq   $0a40             ; return if $04 == 0
0a45: e4 0c     mov   a,$0c
0a47: f0 5a     beq   $0aa3
0a49: 6e 0c bf  dbnz  $0c,$0a0b
0a4c: 3f dd 09  call  $09dd             ; load word at $40; INCW twice
0a4f: d0 22     bne   $0a73
0a51: fd        mov   y,a
0a52: f0 9c     beq   $09f0
0a54: 68 80     cmp   a,#$80
0a56: f0 06     beq   $0a5e
0a58: 68 81     cmp   a,#$81
0a5a: d0 06     bne   $0a62
0a5c: e8 00     mov   a,#$00
0a5e: c4 1b     mov   $1b,a
0a60: 2f ea     bra   $0a4c             ; do next word
0a62: 8b 42     dec   $42
0a64: 10 02     bpl   $0a68
0a66: c4 42     mov   $42,a
0a68: 3f dd 09  call  $09dd             ; load word at $40++
0a6b: f8 42     mov   x,$42
0a6d: f0 dd     beq   $0a4c             ; do next word
0a6f: da 40     movw  $40,ya
0a71: 2f d9     bra   $0a4c             ; do next word
0a73: da 16     movw  $16,ya
0a75: 8d 0f     mov   y,#$0f
0a77: f7 16     mov   a,($16)+y
0a79: d6 30 00  mov   $0030+y,a
0a7c: dc        dec   y
0a7d: 10 f8     bpl   $0a77
0a7f: cd 00     mov   x,#$00
0a81: 8f 01 47  mov   $47,#$01
0a84: f4 31     mov   a,$31+x
0a86: f0 0a     beq   $0a92
0a88: f5 11 02  mov   a,$0211+x
0a8b: d0 05     bne   $0a92
0a8d: e8 00     mov   a,#$00
0a8f: 3f 8f 0b  call  $0b8f
0a92: e8 00     mov   a,#$00
0a94: d4 80     mov   $80+x,a
0a96: d4 90     mov   $90+x,a
0a98: d4 91     mov   $91+x,a
0a9a: bc        inc   a
0a9b: d4 70     mov   $70+x,a
0a9d: 3d        inc   x
0a9e: 3d        inc   x
0a9f: 0b 47     asl   $47
0aa1: d0 e1     bne   $0a84
0aa3: cd 00     mov   x,#$00
0aa5: d8 5e     mov   $5e,x
0aa7: 8f 01 47  mov   $47,#$01
0aaa: d8 44     mov   $44,x
0aac: f4 31     mov   a,$31+x
0aae: f0 70     beq   $0b20
0ab0: 9b 70     dec   $70+x
0ab2: d0 62     bne   $0b16
0ab4: 3f 85 0b  call  $0b85
0ab7: d0 17     bne   $0ad0
0ab9: f4 80     mov   a,$80+x
0abb: f0 8f     beq   $0a4c
0abd: 3f d2 0c  call  $0cd2
0ac0: 9b 80     dec   $80+x
0ac2: d0 f0     bne   $0ab4
0ac4: f5 30 02  mov   a,$0230+x
0ac7: d4 30     mov   $30+x,a
0ac9: f5 31 02  mov   a,$0231+x
0acc: d4 31     mov   $31+x,a
0ace: 2f e4     bra   $0ab4
; vcmd branches
0ad0: 30 1e     bmi   $0af0             ; vcmds 01-7f - note info:
0ad2: d5 00 02  mov   $0200+x,a         ; set duration by opcode
0ad5: 3f 85 0b  call  $0b85             ; read next byte
0ad8: 30 16     bmi   $0af0             ; process it, if < $80
0ada: c4 11     mov   $11,a
0adc: 4b 11     lsr   $11
0ade: 1c        asl   a                 ; a  = (a << 1) | (a & 1)
0adf: 84 11     adc   a,$11             ; a += (a >> 1)
0ae1: d5 01 02  mov   $0201+x,a         ; set duration rate
0ae4: 3f 85 0b  call  $0b85             ; read next byte
0ae7: 30 07     bmi   $0af0             ; process it, if < $80
0ae9: 1c        asl   a                 ; a *= 2
0aea: d5 10 02  mov   $0210+x,a         ; set per-note volume (velocity)
0aed: 3f 85 0b  call  $0b85             ; read next byte (must be >= $80)
; vcmd branches 80-ff
0af0: 68 e0     cmp   a,#$e0
0af2: 90 05     bcc   $0af9
0af4: 3f 73 0b  call  $0b73             ; dispatch vcmd
0af7: 2f bb     bra   $0ab4
0af9: f5 00 04  mov   a,$0400+x
0afc: 04 1b     or    a,$1b
0afe: d0 04     bne   $0b04
0b00: dd        mov   a,y
0b01: 3f e1 08  call  $08e1
0b04: f5 00 02  mov   a,$0200+x
0b07: d4 70     mov   $70+x,a
0b09: fd        mov   y,a
0b0a: f5 01 02  mov   a,$0201+x
0b0d: cf        mul   ya
0b0e: dd        mov   a,y
0b0f: d0 01     bne   $0b12
0b11: bc        inc   a
0b12: d4 71     mov   $71+x,a
0b14: 2f 07     bra   $0b1d
0b16: e4 1b     mov   a,$1b
0b18: d0 06     bne   $0b20
0b1a: 3f 0f 0f  call  $0f0f
0b1d: 3f 94 0d  call  $0d94
0b20: 3d        inc   x
0b21: 3d        inc   x
0b22: 0b 47     asl   $47
0b24: d0 84     bne   $0aaa
0b26: e4 54     mov   a,$54
0b28: f0 0b     beq   $0b35
0b2a: ba 56     movw  ya,$56
0b2c: 7a 52     addw  ya,$52
0b2e: 6e 54 02  dbnz  $54,$0b33
0b31: ba 54     movw  ya,$54
0b33: da 52     movw  $52,ya
0b35: e4 68     mov   a,$68
0b37: f0 15     beq   $0b4e
0b39: ba 64     movw  ya,$64
0b3b: 7a 60     addw  ya,$60
0b3d: da 60     movw  $60,ya
0b3f: ba 66     movw  ya,$66
0b41: 7a 62     addw  ya,$62
0b43: 6e 68 06  dbnz  $68,$0b4c
0b46: ba 68     movw  ya,$68
0b48: da 60     movw  $60,ya
0b4a: eb 6a     mov   y,$6a
0b4c: da 62     movw  $62,ya
0b4e: e4 5a     mov   a,$5a
0b50: f0 0e     beq   $0b60
0b52: ba 5c     movw  ya,$5c
0b54: 7a 58     addw  ya,$58
0b56: 6e 5a 02  dbnz  $5a,$0b5b
0b59: ba 5a     movw  ya,$5a
0b5b: da 58     movw  $58,ya
0b5d: 8f ff 5e  mov   $5e,#$ff
0b60: cd 00     mov   x,#$00
0b62: 8f 01 47  mov   $47,#$01
0b65: f4 31     mov   a,$31+x
0b67: f0 03     beq   $0b6c
0b69: 3f 50 0e  call  $0e50
0b6c: 3d        inc   x
0b6d: 3d        inc   x
0b6e: 0b 47     asl   $47
0b70: d0 f3     bne   $0b65
0b72: 6f        ret

; dispatch vcmd
0b73: 1c        asl   a
0b74: fd        mov   y,a
0b75: f6 34 0d  mov   a,$0d34+y
0b78: 2d        push  a
0b79: f6 33 0d  mov   a,$0d33+y
0b7c: 2d        push  a
0b7d: dd        mov   a,y
0b7e: 5c        lsr   a
0b7f: fd        mov   y,a
0b80: f6 d1 0d  mov   a,$0dd1+y
0b83: f0 08     beq   $0b8d
; get next vcmd stream byte
0b85: e7 30     mov   a,($30+x)
0b87: bb 30     inc   $30+x
0b89: d0 02     bne   $0b8d
0b8b: bb 31     inc   $31+x
0b8d: fd        mov   y,a
0b8e: 6f        ret

; vcmd e0 - set instrument
0b8f: d5 11 02  mov   $0211+x,a
0b92: fd        mov   y,a
0b93: 10 06     bpl   $0b9b
0b95: 80        setc
0b96: a8 ca     sbc   a,#$ca
0b98: 60        clrc
0b99: 84 5f     adc   a,$5f
0b9b: 8d 06     mov   y,#$06
0b9d: cf        mul   ya
0b9e: da 14     movw  $14,ya
0ba0: 60        clrc
0ba1: 98 00 14  adc   $14,#$00
0ba4: 98 3e 15  adc   $15,#$3e
0ba7: e4 1a     mov   a,$1a
0ba9: 24 47     and   a,$47
0bab: d0 3a     bne   $0be7
0bad: 4d        push  x
0bae: 7d        mov   a,x
0baf: 9f        xcn   a
0bb0: 5c        lsr   a
0bb1: 08 04     or    a,#$04
0bb3: 5d        mov   x,a               ; X = SRCN reg for voice X
0bb4: 8d 00     mov   y,#$00
0bb6: f7 14     mov   a,($14)+y
0bb8: 10 0e     bpl   $0bc8
0bba: 28 1f     and   a,#$1f
0bbc: 38 20 48  and   $48,#$20
0bbf: 0e 48 00  tset1 $0048
0bc2: 09 47 49  or    ($49),($47)
0bc5: dd        mov   a,y
0bc6: 2f 07     bra   $0bcf
0bc8: e4 47     mov   a,$47
0bca: 4e 49 00  tclr1 $0049
0bcd: f7 14     mov   a,($14)+y
0bcf: c9 f2 00  mov   $00f2,x
0bd2: c5 f3 00  mov   $00f3,a
0bd5: 3d        inc   x
0bd6: fc        inc   y
0bd7: ad 04     cmp   y,#$04            ; set SRCN, ADSR1/2, GAIN from [$14]
0bd9: d0 f2     bne   $0bcd
0bdb: ce        pop   x
0bdc: f7 14     mov   a,($14)+y
0bde: d5 21 02  mov   $0221+x,a
0be1: fc        inc   y
0be2: f7 14     mov   a,($14)+y
0be4: d5 20 02  mov   $0220+x,a
0be7: 6f        ret

; vcmd e1 - pan
0be8: d5 51 03  mov   $0351+x,a
0beb: 28 1f     and   a,#$1f
0bed: d5 31 03  mov   $0331+x,a         ; voice pan value
0bf0: e8 00     mov   a,#$00
0bf2: d5 30 03  mov   $0330+x,a
0bf5: 6f        ret

; vcmd e2 - pan fade
0bf6: d4 91     mov   $91+x,a
0bf8: 2d        push  a
0bf9: 3f 85 0b  call  $0b85
0bfc: d5 50 03  mov   $0350+x,a
0bff: 80        setc
0c00: b5 31 03  sbc   a,$0331+x
0c03: ce        pop   x
0c04: 3f d7 0d  call  $0dd7
0c07: d5 40 03  mov   $0340+x,a
0c0a: dd        mov   a,y
0c0b: d5 41 03  mov   $0341+x,a
0c0e: 6f        ret

; vcmd e3 - vibrato on
0c0f: d5 b0 02  mov   $02b0+x,a
0c12: 3f 85 0b  call  $0b85
0c15: d5 a1 02  mov   $02a1+x,a
0c18: 3f 85 0b  call  $0b85
; vcmd e4 - vibrato off
0c1b: d4 b1     mov   $b1+x,a
0c1d: d5 c1 02  mov   $02c1+x,a
0c20: e8 00     mov   a,#$00
0c22: d5 b1 02  mov   $02b1+x,a
0c25: 6f        ret

; vcmd f0 - vibrato fade
0c26: d5 b1 02  mov   $02b1+x,a
0c29: 2d        push  a
0c2a: 8d 00     mov   y,#$00
0c2c: f4 b1     mov   a,$b1+x
0c2e: ce        pop   x
0c2f: 9e        div   ya,x
0c30: f8 44     mov   x,$44
0c32: d5 c0 02  mov   $02c0+x,a
0c35: 6f        ret

; vcmd e5
0c36: 6f        ret

; vcmd e6
0c37: c4 5a     mov   $5a,a
0c39: 3f 85 0b  call  $0b85
0c3c: c4 5b     mov   $5b,a
0c3e: 80        setc
0c3f: a4 59     sbc   a,$59
0c41: f8 5a     mov   x,$5a
0c43: 3f d7 0d  call  $0dd7
0c46: da 5c     movw  $5c,ya
0c48: 6f        ret

; vcmd e7 - tempo
0c49: e8 00     mov   a,#$00
0c4b: da 52     movw  $52,ya
0c4d: 6f        ret

; vcmd e8 - tempo fade
0c4e: c4 54     mov   $54,a
0c50: 3f 85 0b  call  $0b85
0c53: c4 55     mov   $55,a
0c55: 80        setc
0c56: a4 53     sbc   a,$53
0c58: f8 54     mov   x,$54
0c5a: 3f d7 0d  call  $0dd7
0c5d: da 56     movw  $56,ya
0c5f: 6f        ret

; vcmd e9 - global transpose
0c60: c4 50     mov   $50,a
0c62: 6f        ret

; vcmd ea - per-voice transpose
0c63: d5 f0 02  mov   $02f0+x,a
0c66: 6f        ret

; vcmd eb - tremolo on
0c67: d5 e0 02  mov   $02e0+x,a
0c6a: 3f 85 0b  call  $0b85
0c6d: d5 d1 02  mov   $02d1+x,a
0c70: 3f 85 0b  call  $0b85
; vcmd ec - tremolo off
0c73: d4 c1     mov   $c1+x,a
0c75: 6f        ret

; vcmd f1 - pitch envelope (release)
0c76: e8 01     mov   a,#$01
0c78: 2f 02     bra   $0c7c
; vcmd f2 - pitch envelope (attack)
0c7a: e8 00     mov   a,#$00
0c7c: d5 90 02  mov   $0290+x,a
0c7f: dd        mov   a,y
0c80: d5 81 02  mov   $0281+x,a
0c83: 3f 85 0b  call  $0b85
0c86: d5 80 02  mov   $0280+x,a
0c89: 3f 85 0b  call  $0b85
0c8c: d5 91 02  mov   $0291+x,a
0c8f: 6f        ret

; vcmd f2 - pitch envelope (attack)
0c90: d5 80 02  mov   $0280+x,a
0c93: 6f        ret

; vcmd ed - volume
0c94: d5 01 03  mov   $0301+x,a
0c97: e8 00     mov   a,#$00
0c99: d5 00 03  mov   $0300+x,a
0c9c: 6f        ret

; vcmd ee - volume fade
0c9d: d4 90     mov   $90+x,a
0c9f: 2d        push  a
0ca0: 3f 85 0b  call  $0b85
0ca3: d5 20 03  mov   $0320+x,a
0ca6: 80        setc
0ca7: b5 01 03  sbc   a,$0301+x
0caa: ce        pop   x
0cab: 3f d7 0d  call  $0dd7
0cae: d5 10 03  mov   $0310+x,a
0cb1: dd        mov   a,y
0cb2: d5 11 03  mov   $0311+x,a
0cb5: 6f        ret

; vcmd f4 - tuning
0cb6: d5 81 03  mov   $0381+x,a
0cb9: 6f        ret

; vcmd ef - call subroutine
0cba: d5 40 02  mov   $0240+x,a
0cbd: 3f 85 0b  call  $0b85
0cc0: d5 41 02  mov   $0241+x,a
0cc3: 3f 85 0b  call  $0b85
0cc6: d4 80     mov   $80+x,a
0cc8: f4 30     mov   a,$30+x
0cca: d5 30 02  mov   $0230+x,a
0ccd: f4 31     mov   a,$31+x
0ccf: d5 31 02  mov   $0231+x,a
; copy 0240/1+X to 30/1+X
0cd2: f5 40 02  mov   a,$0240+x
0cd5: d4 30     mov   $30+x,a
0cd7: f5 41 02  mov   a,$0241+x
0cda: d4 31     mov   $31+x,a
0cdc: 6f        ret

; vcmd f5 - echo vbits/volume
0cdd: 28 7f     and   a,#$7f
0cdf: c4 4a     mov   $4a,a
0ce1: 3f 85 0b  call  $0b85
0ce4: e8 00     mov   a,#$00
0ce6: da 60     movw  $60,ya
0ce8: 3f 85 0b  call  $0b85
0ceb: e8 00     mov   a,#$00
0ced: da 62     movw  $62,ya
0cef: b2 48     clr5  $48
0cf1: 6f        ret

; vcmd f8 - echo volume fade
0cf2: c4 68     mov   $68,a
0cf4: 3f 85 0b  call  $0b85
0cf7: c4 69     mov   $69,a
0cf9: 80        setc
0cfa: a4 61     sbc   a,$61
0cfc: f8 68     mov   x,$68
0cfe: 3f d7 0d  call  $0dd7
0d01: da 64     movw  $64,ya
0d03: 3f 85 0b  call  $0b85
0d06: c4 6a     mov   $6a,a
0d08: 80        setc
0d09: a4 63     sbc   a,$63
0d0b: f8 68     mov   x,$68
0d0d: 3f d7 0d  call  $0dd7
0d10: da 66     movw  $66,ya
0d12: 6f        ret

; vcmd f6 - disable echo
0d13: da 60     movw  $60,ya
0d15: da 62     movw  $62,ya
0d17: a2 48     set5  $48
0d19: 6f        ret

; vcmd f7 - set echo params
0d1a: 3f 3c 0d  call  $0d3c
0d1d: 3f 85 0b  call  $0b85
0d20: c4 4e     mov   $4e,a
0d22: 3f 85 0b  call  $0b85
0d25: 8d 08     mov   y,#$08
0d27: cf        mul   ya
0d28: 5d        mov   x,a
0d29: 8d 0f     mov   y,#$0f
0d2b: f5 9e 10  mov   a,$109e+x
0d2e: 3f d6 09  call  $09d6             ; set echo filter coeffs
0d31: 3d        inc   x
0d32: dd        mov   a,y
0d33: 60        clrc
0d34: 88 10     adc   a,#$10
0d36: fd        mov   y,a
0d37: 10 f2     bpl   $0d2b
0d39: f8 44     mov   x,$44
0d3b: 6f        ret

0d3c: c4 4d     mov   $4d,a
0d3e: 8d 7d     mov   y,#$7d
0d40: cc f2 00  mov   $00f2,y
0d43: e5 f3 00  mov   a,$00f3           ; read DSP echo delay
0d46: 64 4d     cmp   a,$4d
0d48: f0 2b     beq   $0d75
0d4a: 28 0f     and   a,#$0f
0d4c: 48 ff     eor   a,#$ff
0d4e: f3 4c 03  bbc7  $4c,$0d54
0d51: 60        clrc
0d52: 84 4c     adc   a,$4c
0d54: c4 4c     mov   $4c,a
0d56: 8d 04     mov   y,#$04
0d58: f6 bd 10  mov   a,$10bd+y
0d5b: c5 f2 00  mov   $00f2,a
0d5e: e8 00     mov   a,#$00
0d60: c5 f3 00  mov   $00f3,a
0d63: fe f3     dbnz  y,$0d58
0d65: e4 48     mov   a,$48
0d67: 08 20     or    a,#$20
0d69: 8d 6c     mov   y,#$6c
0d6b: 3f d6 09  call  $09d6             ; set echo FLG bit
0d6e: e4 4d     mov   a,$4d
0d70: 8d 7d     mov   y,#$7d
0d72: 3f d6 09  call  $09d6             ; set echo delay from $4D
0d75: 1c        asl   a
0d76: 1c        asl   a
0d77: 1c        asl   a
0d78: 48 ff     eor   a,#$ff
0d7a: 80        setc
0d7b: 88 fc     adc   a,#$fc
0d7d: 8d 6d     mov   y,#$6d
0d7f: 5f d6 09  jmp   $09d6             ; set echo region to $FC00-delay*8

; vcmd fa - set perc base
0d82: c4 5f     mov   $5f,a
0d84: 6f        ret

; vcmd fb
0d85: 3f 87 0b  call  $0b87
0d88: 6f        ret

; vcmd fc
0d89: bc        inc   a
0d8a: d5 00 04  mov   $0400+x,a
0d8d: 6f        ret

; vcmd fd
0d8e: bc        inc   a
; vcmd fe
0d8f: c4 1b     mov   $1b,a
0d91: 5f 03 0a  jmp   $0a03

0d94: f4 a0     mov   a,$a0+x
0d96: d0 33     bne   $0dcb             ; return if $A0+X != 0
0d98: e7 30     mov   a,($30+x)
0d9a: 68 f9     cmp   a,#$f9
0d9c: d0 2d     bne   $0dcb             ; return if [$30+X] != #$F9
0d9e: 3f 87 0b  call  $0b87
0da1: 3f 85 0b  call  $0b85
; vcmd f9 - pitch slide
0da4: d4 a1     mov   $a1+x,a
0da6: 3f 85 0b  call  $0b85
0da9: d4 a0     mov   $a0+x,a
0dab: 3f 85 0b  call  $0b85
0dae: 60        clrc
0daf: 84 50     adc   a,$50
0db1: 95 f0 02  adc   a,$02f0+x
0db4: 28 7f     and   a,#$7f
0db6: d5 80 03  mov   $0380+x,a
0db9: 80        setc
0dba: b5 61 03  sbc   a,$0361+x
0dbd: fb a0     mov   y,$a0+x
0dbf: 6d        push  y
0dc0: ce        pop   x
0dc1: 3f d7 0d  call  $0dd7
0dc4: d5 70 03  mov   $0370+x,a
0dc7: dd        mov   a,y
0dc8: d5 71 03  mov   $0371+x,a
0dcb: 6f        ret

; $10/11 = $0360/1+X
0dcc: f5 61 03  mov   a,$0361+x
0dcf: c4 11     mov   $11,a
0dd1: f5 60 03  mov   a,$0360+x
0dd4: c4 10     mov   $10,a
0dd6: 6f        ret

0dd7: ed        notc
0dd8: 6b 12     ror   $12
0dda: 10 03     bpl   $0ddf
0ddc: 48 ff     eor   a,#$ff
0dde: bc        inc   a
0ddf: 8d 00     mov   y,#$00
0de1: 9e        div   ya,x
0de2: 2d        push  a
0de3: e8 00     mov   a,#$00
0de5: 9e        div   ya,x
0de6: ee        pop   y
0de7: f8 44     mov   x,$44
0de9: f3 12 06  bbc7  $12,$0df2
0dec: da 14     movw  $14,ya
0dee: ba 0e     movw  ya,$0e
0df0: 9a 14     subw  ya,$14
0df2: 6f        ret

; vcmd dispatch table ($0d33)
0df3: dw $0b8f  ; e0 - set instrument
0df5: dw $0be8  ; e1 - pan
0df7: dw $0bf6  ; e2 - pan fade
0df9: dw $0c0f  ; e3 - vibrato on
0dfb: dw $0c1b  ; e4 - vibrato off
0dfd: dw $0c36  ; e5 - ?
0dff: dw $0c37  ; e6 - ?
0e01: dw $0c49  ; e7 - tempo
0e03: dw $0c4e  ; e8 - tempo fade
0e05: dw $0c60  ; e9 - global transpose
0e07: dw $0c63  ; ea - per-voice transpose
0e09: dw $0c67  ; eb - tremolo on
0e0b: dw $0c73  ; ec - tremolo off
0e0d: dw $0c94  ; ed - volume
0e0f: dw $0c9d  ; ee - volume fade
0e11: dw $0cba  ; ef - call subroutine
0e13: dw $0c26  ; f0 - vibrato fade
0e15: dw $0c76  ; f1 - pitch envelope (release)
0e17: dw $0c7a  ; f2 - pitch envelope (attack)
0e19: dw $0c90  ; f3 - pitch envelope off
0e1b: dw $0cb6  ; f4 - tuning
0e1d: dw $0cdd  ; f5 - echo vbits/volume
0e1f: dw $0d13  ; f6 - disable echo
0e21: dw $0d1a  ; f7 - set echo params
0e23: dw $0cf2  ; f8 - echo volume fade
0e25: dw $0da4  ; f9 - pitch slide
0e27: dw $0d82  ; fa - set perc base
0e29: dw $0d85  ; fb
0e2b: dw $0d89  ; fc
0e2d: dw $0d8e  ; fd
0e2f: dw $0d8f  ; fe

; vcmd length table ($0dd1)
0e31: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0e39: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0e41: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0e49: db $03,$03,$01,$02,$00,$00,$00     ; f8-fe

0e50: f4 90     mov   a,$90+x
0e52: f0 09     beq   $0e5d
0e54: e8 00     mov   a,#$00
0e56: 8d 03     mov   y,#$03
0e58: 9b 90     dec   $90+x
0e5a: 3f eb 0e  call  $0eeb
0e5d: fb c1     mov   y,$c1+x
0e5f: f0 23     beq   $0e84
0e61: f5 e0 02  mov   a,$02e0+x
0e64: de c0 1b  cbne  $c0+x,$0e82
0e67: 09 47 5e  or    ($5e),($47)
0e6a: f5 d0 02  mov   a,$02d0+x
0e6d: 10 07     bpl   $0e76
0e6f: fc        inc   y
0e70: d0 04     bne   $0e76
0e72: e8 80     mov   a,#$80
0e74: 2f 04     bra   $0e7a
0e76: 60        clrc
0e77: 95 d1 02  adc   a,$02d1+x
0e7a: d5 d0 02  mov   $02d0+x,a
0e7d: 3f 6c 10  call  $106c
0e80: 2f 07     bra   $0e89
0e82: bb c0     inc   $c0+x
0e84: e8 ff     mov   a,#$ff
0e86: 3f 77 10  call  $1077
0e89: f4 91     mov   a,$91+x
0e8b: f0 09     beq   $0e96
0e8d: e8 30     mov   a,#$30
0e8f: 8d 03     mov   y,#$03
0e91: 9b 91     dec   $91+x
0e93: 3f eb 0e  call  $0eeb
0e96: e4 47     mov   a,$47
0e98: 24 5e     and   a,$5e
0e9a: f0 4e     beq   $0eea             ; return
0e9c: f5 31 03  mov   a,$0331+x
0e9f: fd        mov   y,a
0ea0: f5 30 03  mov   a,$0330+x
0ea3: da 10     movw  $10,ya
0ea5: 7d        mov   a,x
0ea6: 9f        xcn   a
0ea7: 5c        lsr   a
0ea8: c4 12     mov   $12,a
0eaa: e4 d4     mov   a,$d4
0eac: f0 04     beq   $0eb2
0eae: e8 0a     mov   a,#$0a
0eb0: c4 11     mov   $11,a
0eb2: eb 11     mov   y,$11
0eb4: f6 8a 10  mov   a,$108a+y
0eb7: 80        setc
0eb8: b6 89 10  sbc   a,$1089+y
0ebb: eb 10     mov   y,$10
0ebd: cf        mul   ya
0ebe: dd        mov   a,y
0ebf: eb 11     mov   y,$11
0ec1: 60        clrc
0ec2: 96 89 10  adc   a,$1089+y
0ec5: fd        mov   y,a
0ec6: f5 21 03  mov   a,$0321+x
0ec9: cf        mul   ya
0eca: f5 51 03  mov   a,$0351+x
0ecd: 1c        asl   a
0ece: 13 12 01  bbc0  $12,$0ed2
0ed1: 1c        asl   a
0ed2: dd        mov   a,y
0ed3: 90 03     bcc   $0ed8
0ed5: 48 ff     eor   a,#$ff
0ed7: bc        inc   a
0ed8: eb 12     mov   y,$12
0eda: 3f ce 09  call  $09ce
0edd: 8d 14     mov   y,#$14
0edf: e8 00     mov   a,#$00
0ee1: 9a 10     subw  ya,$10
0ee3: da 10     movw  $10,ya
0ee5: ab 12     inc   $12
0ee7: 33 12 c0  bbc1  $12,$0eaa
0eea: 6f        ret

0eeb: 09 47 5e  or    ($5e),($47)
0eee: da 14     movw  $14,ya
0ef0: da 16     movw  $16,ya
0ef2: 4d        push  x
0ef3: ee        pop   y
0ef4: 60        clrc
0ef5: d0 0a     bne   $0f01
0ef7: 98 1f 16  adc   $16,#$1f
0efa: e8 00     mov   a,#$00
0efc: d7 14     mov   ($14)+y,a
0efe: fc        inc   y
0eff: 2f 09     bra   $0f0a
0f01: 98 10 16  adc   $16,#$10
0f04: 3f 08 0f  call  $0f08
0f07: fc        inc   y
0f08: f7 14     mov   a,($14)+y
0f0a: 97 16     adc   a,($16)+y
0f0c: d7 14     mov   ($14)+y,a
0f0e: 6f        ret

; do voice readahead?
0f0f: f4 71     mov   a,$71+x
0f11: f0 63     beq   $0f76
0f13: 9b 71     dec   $71+x
0f15: f0 05     beq   $0f1c
0f17: e8 02     mov   a,#$02
0f19: de 70 5a  cbne  $70+x,$0f76
0f1c: f4 80     mov   a,$80+x
0f1e: c4 17     mov   $17,a
0f20: f4 30     mov   a,$30+x
0f22: fb 31     mov   y,$31+x
0f24: da 14     movw  $14,ya
0f26: 8d 00     mov   y,#$00
0f28: f7 14     mov   a,($14)+y
0f2a: f0 1c     beq   $0f48
0f2c: 30 05     bmi   $0f33
0f2e: fc        inc   y
0f2f: f7 14     mov   a,($14)+y
0f31: 10 fb     bpl   $0f2e
0f33: 68 c8     cmp   a,#$c8
0f35: f0 3f     beq   $0f76
0f37: 68 ef     cmp   a,#$ef
0f39: f0 29     beq   $0f64
0f3b: 68 e0     cmp   a,#$e0
0f3d: 90 30     bcc   $0f6f
0f3f: 6d        push  y
0f40: fd        mov   y,a
0f41: ae        pop   a
0f42: 96 51 0d  adc   a,$0d51+y
0f45: fd        mov   y,a
0f46: 2f e0     bra   $0f28
0f48: e4 17     mov   a,$17
0f4a: f0 23     beq   $0f6f
0f4c: 8b 17     dec   $17
0f4e: d0 0a     bne   $0f5a
0f50: f5 31 02  mov   a,$0231+x
0f53: 2d        push  a
0f54: f5 30 02  mov   a,$0230+x
0f57: ee        pop   y
0f58: 2f ca     bra   $0f24
0f5a: f5 41 02  mov   a,$0241+x
0f5d: 2d        push  a
0f5e: f5 40 02  mov   a,$0240+x
0f61: ee        pop   y
0f62: 2f c0     bra   $0f24
0f64: fc        inc   y
0f65: f7 14     mov   a,($14)+y
0f67: 2d        push  a
0f68: fc        inc   y
0f69: f7 14     mov   a,($14)+y
0f6b: fd        mov   y,a
0f6c: ae        pop   a
0f6d: 2f b5     bra   $0f24
0f6f: e4 47     mov   a,$47
0f71: 8d 5c     mov   y,#$5c
0f73: 3f ce 09  call  $09ce
0f76: f2 13     clr7  $13
0f78: f4 a0     mov   a,$a0+x
0f7a: f0 13     beq   $0f8f
0f7c: f4 a1     mov   a,$a1+x
0f7e: f0 04     beq   $0f84
0f80: 9b a1     dec   $a1+x
0f82: 2f 0b     bra   $0f8f
0f84: e2 13     set7  $13
0f86: e8 60     mov   a,#$60
0f88: 8d 03     mov   y,#$03
0f8a: 9b a0     dec   $a0+x
0f8c: 3f ee 0e  call  $0eee
0f8f: 3f cc 0d  call  $0dcc             ; $10/11 = $0360/1+X
0f92: f4 b1     mov   a,$b1+x
0f94: f0 4c     beq   $0fe2
0f96: f5 b0 02  mov   a,$02b0+x
0f99: de b0 44  cbne  $b0+x,$0fe0
0f9c: f5 00 01  mov   a,$0100+x
0f9f: 75 b1 02  cmp   a,$02b1+x
0fa2: d0 05     bne   $0fa9
0fa4: f5 c1 02  mov   a,$02c1+x
0fa7: 2f 0d     bra   $0fb6
0fa9: 40        setp
0faa: bb 00     inc   $00+x
0fac: 20        clrp
0fad: fd        mov   y,a
0fae: f0 02     beq   $0fb2
0fb0: f4 b1     mov   a,$b1+x
0fb2: 60        clrc
0fb3: 95 c0 02  adc   a,$02c0+x
0fb6: d4 b1     mov   $b1+x,a
0fb8: f5 a0 02  mov   a,$02a0+x
0fbb: 60        clrc
0fbc: 95 a1 02  adc   a,$02a1+x
0fbf: d5 a0 02  mov   $02a0+x,a
0fc2: c4 12     mov   $12,a
0fc4: 1c        asl   a
0fc5: 1c        asl   a
0fc6: 90 02     bcc   $0fca
0fc8: 48 ff     eor   a,#$ff
0fca: fd        mov   y,a
0fcb: f4 b1     mov   a,$b1+x
0fcd: 68 f1     cmp   a,#$f1
0fcf: 90 05     bcc   $0fd6
0fd1: 28 0f     and   a,#$0f
0fd3: cf        mul   ya
0fd4: 2f 04     bra   $0fda
0fd6: cf        mul   ya
0fd7: dd        mov   a,y
0fd8: 8d 00     mov   y,#$00
0fda: 3f 57 10  call  $1057
0fdd: 5f 4b 09  jmp   $094b

0fe0: bb b0     inc   $b0+x
0fe2: e3 13 f8  bbs7  $13,$0fdd
0fe5: 6f        ret

0fe6: f2 13     clr7  $13
0fe8: f4 c1     mov   a,$c1+x
0fea: f0 09     beq   $0ff5
0fec: f5 e0 02  mov   a,$02e0+x
0fef: de c0 03  cbne  $c0+x,$0ff5
0ff2: 3f 5f 10  call  $105f
0ff5: f5 31 03  mov   a,$0331+x
0ff8: fd        mov   y,a
0ff9: f5 30 03  mov   a,$0330+x
0ffc: da 10     movw  $10,ya
0ffe: f4 91     mov   a,$91+x
1000: f0 0a     beq   $100c
1002: f5 41 03  mov   a,$0341+x
1005: fd        mov   y,a
1006: f5 40 03  mov   a,$0340+x
1009: 3f 41 10  call  $1041
100c: f3 13 03  bbc7  $13,$1012
100f: 3f a5 0e  call  $0ea5
1012: f2 13     clr7  $13
1014: 3f cc 0d  call  $0dcc             ; $10/11 = $0360/1+X
1017: f4 a0     mov   a,$a0+x
1019: f0 0e     beq   $1029
101b: f4 a1     mov   a,$a1+x
101d: d0 0a     bne   $1029
101f: f5 71 03  mov   a,$0371+x
1022: fd        mov   y,a
1023: f5 70 03  mov   a,$0370+x
1026: 3f 41 10  call  $1041
1029: f4 b1     mov   a,$b1+x
102b: f0 b5     beq   $0fe2
102d: f5 b0 02  mov   a,$02b0+x
1030: de b0 af  cbne  $b0+x,$0fe2
1033: eb 51     mov   y,$51
1035: f5 a1 02  mov   a,$02a1+x
1038: cf        mul   ya
1039: dd        mov   a,y
103a: 60        clrc
103b: 95 a0 02  adc   a,$02a0+x
103e: 5f c2 0f  jmp   $0fc2

1041: e2 13     set7  $13
1043: cb 12     mov   $12,y
1045: 3f e9 0d  call  $0de9
1048: 6d        push  y
1049: eb 51     mov   y,$51
104b: cf        mul   ya
104c: cb 14     mov   $14,y
104e: 8f 00 15  mov   $15,#$00
1051: eb 51     mov   y,$51
1053: ae        pop   a
1054: cf        mul   ya
1055: 7a 14     addw  ya,$14
1057: 3f e9 0d  call  $0de9
105a: 7a 10     addw  ya,$10
105c: da 10     movw  $10,ya
105e: 6f        ret

105f: e2 13     set7  $13
1061: eb 51     mov   y,$51
1063: f5 d1 02  mov   a,$02d1+x
1066: cf        mul   ya
1067: dd        mov   a,y
1068: 60        clrc
1069: 95 d0 02  adc   a,$02d0+x
106c: 1c        asl   a
106d: 90 02     bcc   $1071
106f: 48 ff     eor   a,#$ff
1071: fb c1     mov   y,$c1+x
1073: cf        mul   ya
1074: dd        mov   a,y
1075: 48 ff     eor   a,#$ff
1077: eb 59     mov   y,$59
1079: cf        mul   ya
107a: f5 10 02  mov   a,$0210+x
107d: cf        mul   ya
107e: f5 01 03  mov   a,$0301+x
1081: cf        mul   ya
1082: dd        mov   a,y
1083: cf        mul   ya
1084: dd        mov   a,y
1085: d5 21 03  mov   $0321+x,a
1088: 6f        ret

1089: db $00,$01,$03,$07,$0d,$15,$1e,$29
1091: db $34,$42,$51,$5e,$67,$6e,$73,$77
1099: db $7a,$7c,$7d,$7e,$7f

; table of filter coeffs (ref by $0d2b)
109e: db $7f,$00,$00,$00,$00,$00,$00,$00
10a6: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
10ae: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
10b6: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
; DSP regs - shadow regs map
10be: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
10c8: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table?
10d2: dw $085f
10d4: dw $08de
10d6: dw $0965
10d8: dw $09f4
10da: dw $0a8c
10dc: dw $0b2c
10de: dw $0bd6
10e0: dw $0c8b
10e2: dw $0d4a
10e4: dw $0e14
10e6: dw $0eea
10e8: dw $0fcd
10ea: dw $10be

; emulate standard SPC CPU transfer protocol
10ec: e8 aa     mov   a,#$aa
10ee: c5 f4 00  mov   $00f4,a
10f1: e8 bb     mov   a,#$bb
10f3: c5 f5 00  mov   $00f5,a
10f6: e5 f4 00  mov   a,$00f4
10f9: 68 cc     cmp   a,#$cc
10fb: d0 f9     bne   $10f6
10fd: 2f 20     bra   $111f
10ff: ec f4 00  mov   y,$00f4
1102: d0 fb     bne   $10ff
1104: 5e f4 00  cmp   y,$00f4
1107: d0 0f     bne   $1118
1109: e5 f5 00  mov   a,$00f5
110c: cc f4 00  mov   $00f4,y
110f: d7 14     mov   ($14)+y,a
1111: fc        inc   y
1112: d0 f0     bne   $1104
1114: ab 15     inc   $15
1116: 2f ec     bra   $1104
1118: 10 ea     bpl   $1104
111a: 5e f4 00  cmp   y,$00f4
111d: 10 e5     bpl   $1104
111f: e5 f6 00  mov   a,$00f6
1122: ec f7 00  mov   y,$00f7
1125: da 14     movw  $14,ya
1127: ec f4 00  mov   y,$00f4
112a: e5 f5 00  mov   a,$00f5
112d: cc f4 00  mov   $00f4,y
1130: d0 cd     bne   $10ff
1132: cd 31     mov   x,#$31
1134: c9 f1 00  mov   $00f1,x
1137: ab d3     inc   $d3
1139: f8 d3     mov   x,$d3
113b: c9 f7 00  mov   $00f7,x
113e: 6f        ret

; dispatch CPU cmd
113f: 8d 7c     mov   y,#$7c
1141: cc f2 00  mov   $00f2,y
1144: e5 f3 00  mov   a,$00f3           ; read DSP source end block flags
1147: 10 08     bpl   $1151             ; voice 7 flag 0?
1149: e8 00     mov   a,#$00
114b: c5 f3 00  mov   $00f3,a           ;   no, clear all ENDX flags
114e: c5 f6 00  mov   $00f6,a           ;   and APU2
1151: eb 08     mov   y,$08             ; get previous CPU cmd in Y
1153: e4 00     mov   a,$00             ; and current CPU cmd in A
1155: c4 08     mov   $08,a             ; save current CPU cmd as previous
1157: f0 53     beq   $11ac             ; JMP A41 (cmd F1) if no current cmd
1159: 68 40     cmp   a,#$40
115b: 90 52     bcc   $11af             ; JMP 9F0 if cmd < #$40
115d: 68 b0     cmp   a,#$b0
115f: 90 51     bcc   $11b2             ; JMP 11B2 if cmd < #$B0
1161: 68 c0     cmp   a,#$c0
1163: 90 5c     bcc   $11c1             ; JMP 11C1 if cmd < #$C0
1165: 68 f0     cmp   a,#$f0
1167: 90 67     bcc   $11d0             ; JMP 11D0 if cmd < #$F0
1169: 28 0f     and   a,#$0f            ; if cmd >= $F0 then
116b: 1c        asl   a
116c: fd        mov   y,a               ; Y = table index for cmd & #$0f
116d: f6 67 12  mov   a,$1267+y
1170: 2d        push  a
1171: f6 66 12  mov   a,$1266+y
1174: 2d        push  a
1175: 6f        ret                     ; get address from table and exec

; CPU cmd F2
1176: e8 00     mov   a,#$00
1178: c4 58     mov   $58,a
117a: c4 59     mov   $59,a
117c: e8 ff     mov   a,#$ff
117e: 2f 02     bra   $1182
; CPU cmd F3
1180: e8 00     mov   a,#$00
1182: c4 5b     mov   $5b,a
1184: 80        setc
1185: a4 59     sbc   a,$59
1187: cd f0     mov   x,#$f0
1189: d8 5a     mov   $5a,x
118b: 3f d7 0d  call  $0dd7
118e: da 5c     movw  $5c,ya
1190: 2f 1a     bra   $11ac             ; JMP A41 (CPU F1)
; CPU cmd F4
1192: e8 ff     mov   a,#$ff
1194: c4 58     mov   $58,a
1196: c4 59     mov   $59,a
1198: e8 00     mov   a,#$00
119a: c4 5a     mov   $5a,a
119c: 2f 0e     bra   $11ac             ; JMP A41 (CPU F1)
; CPU cmd F5
119e: e8 00     mov   a,#$00
11a0: 2f 0d     bra   $11af
; CPU cmd F6
11a2: e4 1a     mov   a,$1a
11a4: 48 ff     eor   a,#$ff
11a6: 0e 46 00  tset1 $0046
11a9: 8f 00 1a  mov   $1a,#$00
11ac: 5f 41 0a  jmp   $0a41

11af: 5f f0 09  jmp   $09f0

; CPU cmds 40-AF
11b2: a8 3f     sbc   a,#$3f
11b4: 8d 30     mov   y,#$30
11b6: cf        mul   ya
11b7: da d0     movw  $d0,ya
11b9: 60        clrc
11ba: 98 a4 d1  adc   $d1,#$a4
11bd: e8 be     mov   a,#$be
11bf: 2f 15     bra   $11d6
; CPU cmds B0-BF
11c1: a8 af     sbc   a,#$af
11c3: fd        mov   y,a
11c4: f6 b8 12  mov   a,$12b8+y
11c7: 8f 00 d0  mov   $d0,#$00
11ca: c4 d1     mov   $d1,a
11cc: e8 bf     mov   a,#$bf
11ce: 2f 06     bra   $11d6
; CPU cmds C0-EF
11d0: 8f 00 d0  mov   $d0,#$00
11d3: 8f a4 d1  mov   $d1,#$a4
11d6: c5 f6 00  mov   $00f6,a
11d9: 80        setc
11da: a8 a0     sbc   a,#$a0
11dc: f2 1a     clr7  $1a
11de: 8f 80 47  mov   $47,#$80
11e1: cd 0e     mov   x,#$0e
11e3: 2d        push  a
11e4: 3f 92 0b  call  $0b92
11e7: ee        pop   y
11e8: f6 68 12  mov   a,$1268+y         ; (1288)
11eb: eb 59     mov   y,$59
11ed: cf        mul   ya
11ee: dd        mov   a,y
11ef: c5 2f 03  mov   $032f,a
11f2: e8 00     mov   a,#$00
11f4: c5 5f 03  mov   $035f,a
11f7: e5 91 03  mov   a,$0391
11fa: 28 1f     and   a,#$1f
11fc: c5 11 00  mov   $0011,a
11ff: e8 00     mov   a,#$00
1201: c5 10 00  mov   $0010,a
1204: 3f a5 0e  call  $0ea5
1207: ba d0     movw  ya,$d0
1209: da 10     movw  $10,ya
120b: 3f 61 09  call  $0961
120e: e2 45     set7  $45
1210: e2 1a     set7  $1a
1212: 2f 98     bra   $11ac             ; JMP A41 (CPU F1)
; CPU cmd F7
1214: ec 91 03  mov   y,$0391
1217: e8 00     mov   a,#$00
1219: da 58     movw  $58,ya
121b: 2f 8f     bra   $11ac             ; JMP A41 (CPU F1)
; CPU cmd FA
121d: e8 22     mov   a,#$22
121f: d2 1a     clr6  $1a
1221: 8f 40 47  mov   $47,#$40
1224: cd 0c     mov   x,#$0c
1226: 2d        push  a
1227: 3f 92 0b  call  $0b92
122a: ee        pop   y
122b: f6 86 12  mov   a,$1286+y
122e: eb 59     mov   y,$59
1230: cf        mul   ya
1231: dd        mov   a,y
1232: c5 2d 03  mov   $032d,a
1235: e8 00     mov   a,#$00
1237: c5 5d 03  mov   $035d,a
123a: e5 91 03  mov   a,$0391
123d: 28 1f     and   a,#$1f
123f: c5 11 00  mov   $0011,a
1242: e8 00     mov   a,#$00
1244: c5 10 00  mov   $0010,a
1247: 3f a5 0e  call  $0ea5
124a: ba d0     movw  ya,$d0
124c: da 10     movw  $10,ya
124e: 3f 61 09  call  $0961
1251: c2 45     set6  $45
1253: c2 1a     set6  $1a
1255: 5f ac 11  jmp   $11ac             ; JMP A41 (CPU F1)

; CPU cmd F8
1258: e8 01     mov   a,#$01
125a: c4 d4     mov   $d4,a
125c: 5f ac 11  jmp   $11ac             ; JMP A41 (CPU F1)

; CPU cmd F9
125f: e8 00     mov   a,#$00
1261: c4 d4     mov   $d4,a
1263: 5f ac 11  jmp   $11ac             ; JMP A41 (CPU F1)

; table of routines for CPU cmds F0-FF
1266: dw $0a03  ; f0
1268: dw $0a41  ; f1
126a: dw $1176  ; f2
126c: dw $1180  ; f3
126e: dw $1192  ; f4
1270: dw $119e  ; f5
1272: dw $11a2  ; f6
1274: dw $1214  ; f7
1276: dw $1258  ; f8
1278: dw $125f  ; f9
127a: dw $121d  ; fa
127c: dw $11ac  ; fb
127e: dw $11ac  ; fc
1280: dw $11ac  ; fd
1282: dw $11ac  ; fe
1284: dw $09eb  ; ff

1286: ff        stop
1287: ff        stop
1288: ff        stop
1289: ff        stop
128a: ff        stop
128b: ff        stop
128c: ff        stop
128d: ff        stop
128e: ff        stop
128f: ff        stop
1290: ff        stop
1291: ff        stop
1292: ff        stop
1293: ff        stop
1294: ff        stop
1295: ff        stop
1296: ff        stop
1297: ff        stop
1298: ff        stop
1299: ff        stop
129a: ff        stop
129b: ff        stop
129c: ff        stop
129d: ff        stop
129e: ff        stop
129f: ff        stop
12a0: ff        stop
12a1: ff        stop
12a2: ff        stop
12a3: ff        stop
12a4: ff        stop
12a5: ff        stop
12a6: ff        stop
12a7: ff        stop
12a8: ff        stop
12a9: ff        stop
12aa: ff        stop
12ab: ff        stop
12ac: ff        stop
12ad: ff        stop
12ae: ff        stop
12af: ff        stop
12b0: ff        stop
12b1: ff        stop
12b2: ff        stop
12b3: ff        stop
12b4: ff        stop
12b5: ff        stop
12b6: ff        stop
12b7: ff        stop

; table for CPU cmds B0-BF ($11c1)
12b8: db $a4,$a6,$a8,$a9,$ab,$ad,$af,$b0
