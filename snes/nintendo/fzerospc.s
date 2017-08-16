; F-Zero SPC - loveemu labo
; Disassembler: spcdas v0.01
; Heavily based on C.Bongo's assembly, thanks.

; note dur%'s
0500: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
; per-note velocity values
0508: db $19,$32,$4c,$65,$72,$7f,$8c,$98
0510: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x              ; set SP to (01)CF
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 e8     cmp   x,#$e8
080a: d0 fb     bne   $0807             ; zero 00-E7
080c: bc        inc   a
080d: 3f 3d 0e  call  $0e3d             ; set echo delay to 1 (16ms)
0810: a2 48     set5  $48
0812: 3f 76 17  call  $1776             ; init sample $28 ($f800-$ffff)
0815: e8 3c     mov   a,#$3c
0817: 8d 5d     mov   y,#$5d
0819: 3f 39 0a  call  $0a39             ; source dir = $3c00
081c: e8 f0     mov   a,#$f0
081e: c5 f1 00  mov   $00f1,a           ; reset ports, stop timers
0821: e8 10     mov   a,#$10
0823: c5 fa 00  mov   $00fa,a           ; set timer0 latech to 2 ms
0826: c4 53     mov   $53,a
0828: e8 01     mov   a,#$01
082a: c5 f1 00  mov   $00f1,a           ; start timer0
; begin main loop
082d: 3f 28 17  call  $1728             ; mess with sample $28
0830: ec fd 00  mov   y,$00fd
0833: f0 f8     beq   $082d             ; wait for counter0 tick
0835: 6d        push  y
0836: e8 40     mov   a,#$40
0838: cf        mul   ya
0839: ad 00     cmp   y,#$00
083b: f0 02     beq   $083f
083d: 02 09     set0  $09
083f: 60        clrc
0840: 84 43     adc   a,$43
0842: c4 43     mov   $43,a
0844: 90 5d     bcc   $08a3
0846: 3f 84 1a  call  $1a84
0849: e3 06 14  bbs7  $06,$0860
084c: 3f ea 1e  call  $1eea
084f: 3f 03 16  call  $1603
0852: 3f eb 12  call  $12eb
0855: 3f 40 0a  call  $0a40
0858: e3 d4 08  bbs7  $d4,$0863
085b: 8f 54 d8  mov   $d8,#$54
085e: 2f 21     bra   $0881
0860: f3 d4 1e  bbc7  $d4,$0881
0863: 8d 02     mov   y,#$02
0865: e4 63     mov   a,$63
0867: f0 02     beq   $086b
0869: 8b 63     dec   $63
086b: e4 61     mov   a,$61
086d: f0 02     beq   $0871
086f: 8b 61     dec   $61
0871: fe f2     dbnz  y,$0865
0873: e4 d8     mov   a,$d8
0875: f0 0a     beq   $0881
0877: 8b d8     dec   $d8
0879: d0 06     bne   $0881
087b: 8f 00 04  mov   $04,#$00
087e: 8f ff 46  mov   $46,#$ff
0881: e4 d8     mov   a,$d8
0883: 8d 0c     mov   y,#$0c
0885: 3f 39 0a  call  $0a39
0888: 8d 1c     mov   y,#$1c
088a: 3f 39 0a  call  $0a39
088d: cd 02     mov   x,#$02
088f: 3f 2f 09  call  $092f
0892: 3f fa 08  call  $08fa
0895: 13 09 04  bbc0  $09,$089c
0898: 12 09     clr0  $09
089a: 2f aa     bra   $0846
089c: 69 4d 4c  cmp   ($4c),($4d)
089f: f0 02     beq   $08a3
08a1: ab 4c     inc   $4c
08a3: ee        pop   y
08a4: e4 53     mov   a,$53
08a6: cf        mul   ya
08a7: ad 00     cmp   y,#$00
08a9: f0 02     beq   $08ad
08ab: 22 09     set1  $09
08ad: 60        clrc
08ae: 84 51     adc   a,$51
08b0: c4 51     mov   $51,a
08b2: 90 2d     bcc   $08e1
08b4: 3f 3b 0b  call  $0b3b
08b7: cd 00     mov   x,#$00
08b9: 3f 2f 09  call  $092f
08bc: 3f fa 08  call  $08fa
08bf: e4 00     mov   a,$00
08c1: 68 ff     cmp   a,#$ff
08c3: d0 08     bne   $08cd
08c5: 3f e1 0a  call  $0ae1
08c8: 8f 00 00  mov   $00,#$00
08cb: 2f 2a     bra   $08f7
08cd: 28 20     and   a,#$20
08cf: 9f        xcn   a
08d0: c4 d0     mov   $d0,a
08d2: e4 00     mov   a,$00
08d4: c4 d4     mov   $d4,a
08d6: 28 07     and   a,#$07
08d8: c4 00     mov   $00,a
08da: 33 09 1a  bbc1  $09,$08f7
08dd: 32 09     clr1  $09
08df: 2f d3     bra   $08b4
08e1: e4 04     mov   a,$04
08e3: f0 12     beq   $08f7
08e5: cd 00     mov   x,#$00
08e7: 8f 01 47  mov   $47,#$01
08ea: f4 31     mov   a,$31+x
08ec: f0 03     beq   $08f1
08ee: 3f c8 10  call  $10c8
08f1: 3d        inc   x
08f2: 3d        inc   x
08f3: 0b 47     asl   $47
08f5: d0 f3     bne   $08ea
08f7: 5f 2d 08  jmp   $082d
;
08fa: e4 45     mov   a,$45             ; key on shadow
08fc: 48 ff     eor   a,#$ff
08fe: 24 4a     and   a,$4a
0900: c4 4a     mov   $4a,a             ; echo vbits shadow
0902: e4 45     mov   a,$45             ; key on shadow
0904: 24 4f     and   a,$4f
0906: 04 4a     or    a,$4a
0908: c4 4a     mov   $4a,a             ; echo vbits shadow
090a: 8d 0a     mov   y,#$0a
090c: ad 05     cmp   y,#$05
090e: f0 07     beq   $0917
0910: b0 08     bcs   $091a
0912: 69 4d 4c  cmp   ($4c),($4d)
0915: d0 11     bne   $0928
0917: e3 4c 0e  bbs7  $4c,$0928
091a: f6 a2 11  mov   a,$11a2+y
091d: c5 f2 00  mov   $00f2,a
0920: f6 ac 11  mov   a,$11ac+y
0923: 5d        mov   x,a
0924: e6        mov   a,(x)
0925: c5 f3 00  mov   $00f3,a
0928: fe e2     dbnz  y,$090c           ; set DSP regs from shadows
092a: cb 45     mov   $45,y
092c: cb 46     mov   $46,y
092e: 6f        ret
;
092f: f4 04     mov   a,$04+x
0931: d5 f4 00  mov   $00f4+x,a
0934: f5 f4 00  mov   a,$00f4+x
0937: 75 f4 00  cmp   a,$00f4+x
093a: d0 f8     bne   $0934
093c: d4 00     mov   $00+x,a
093e: 6f        ret
; handle a note vcmd (80-df)
093f: ad ca     cmp   y,#$ca
0941: 90 0a     bcc   $094d
; vcmds ca-df - percussion note
0943: 75 11 02  cmp   a,$0211+x
0946: f0 03     beq   $094b
0948: 3f 79 0c  call  $0c79
094b: 8d a4     mov   y,#$a4            ; dispatch as note $a4
; vcmds 80-c7,c8,c9 - note/tie/rest
094d: ad c8     cmp   y,#$c8
094f: b0 ed     bcs   $093e             ; skip if tie/rest
0951: e4 1c     mov   a,$1c
0953: 24 47     and   a,$47
0955: d0 e7     bne   $093e
0957: dd        mov   a,y
0958: 28 7f     and   a,#$7f
095a: 60        clrc
095b: 84 50     adc   a,$50
095d: 60        clrc
095e: 95 f0 02  adc   a,$02f0+x
0961: d5 61 03  mov   $0361+x,a
0964: f5 81 03  mov   a,$0381+x
0967: d5 60 03  mov   $0360+x,a
096a: f5 b1 02  mov   a,$02b1+x
096d: 5c        lsr   a
096e: e8 00     mov   a,#$00
0970: 7c        ror   a
0971: d5 a0 02  mov   $02a0+x,a
0974: e8 00     mov   a,#$00
0976: d4 b0     mov   $b0+x,a
0978: d5 00 01  mov   $0100+x,a
097b: d5 d0 02  mov   $02d0+x,a
097e: d4 c0     mov   $c0+x,a
0980: 09 47 5e  or    ($5e),($47)       ; set vol chg flag
0983: 09 47 45  or    ($45),($47)       ; key on shadow
0986: f5 80 02  mov   a,$0280+x
0989: d4 a0     mov   $a0+x,a           ; portamento counter?
098b: f0 1e     beq   $09ab
098d: f5 81 02  mov   a,$0281+x
0990: d4 a1     mov   $a1+x,a
0992: f5 90 02  mov   a,$0290+x
0995: d0 0a     bne   $09a1
0997: f5 61 03  mov   a,$0361+x
099a: 80        setc
099b: b5 91 02  sbc   a,$0291+x
099e: d5 61 03  mov   $0361+x,a
09a1: f5 91 02  mov   a,$0291+x
09a4: 60        clrc
09a5: 95 61 03  adc   a,$0361+x
09a8: 3f aa 0e  call  $0eaa
09ab: 3f c2 0e  call  $0ec2
09ae: 8d 00     mov   y,#$00
09b0: e4 11     mov   a,$11
09b2: 80        setc
09b3: a8 34     sbc   a,#$34
09b5: b0 09     bcs   $09c0
09b7: e4 11     mov   a,$11
09b9: 80        setc
09ba: a8 13     sbc   a,#$13
09bc: b0 06     bcs   $09c4
09be: dc        dec   y
09bf: 1c        asl   a
09c0: 7a 10     addw  ya,$10
09c2: da 10     movw  $10,ya
09c4: 4d        push  x
09c5: e4 11     mov   a,$11
09c7: 1c        asl   a
09c8: 8d 00     mov   y,#$00
09ca: cd 18     mov   x,#$18
09cc: 9e        div   ya,x
09cd: 5d        mov   x,a
09ce: f6 b8 11  mov   a,$11b8+y
09d1: c4 15     mov   $15,a
09d3: f6 b7 11  mov   a,$11b7+y
09d6: c4 14     mov   $14,a             ; set $14/5 from pitch table
09d8: f6 ba 11  mov   a,$11ba+y
09db: 2d        push  a
09dc: f6 b9 11  mov   a,$11b9+y
09df: ee        pop   y
09e0: 9a 14     subw  ya,$14
09e2: eb 10     mov   y,$10
09e4: cf        mul   ya
09e5: dd        mov   a,y
09e6: 8d 00     mov   y,#$00
09e8: 7a 14     addw  ya,$14
09ea: cb 15     mov   $15,y
09ec: 1c        asl   a
09ed: 2b 15     rol   $15
09ef: c4 14     mov   $14,a
09f1: 2f 04     bra   $09f7
09f3: 4b 15     lsr   $15
09f5: 7c        ror   a
09f6: 3d        inc   x
09f7: c8 06     cmp   x,#$06
09f9: d0 f8     bne   $09f3
09fb: c4 14     mov   $14,a
09fd: ce        pop   x
09fe: f5 20 02  mov   a,$0220+x
0a01: eb 15     mov   y,$15
0a03: cf        mul   ya
0a04: da 16     movw  $16,ya
0a06: f5 20 02  mov   a,$0220+x
0a09: eb 14     mov   y,$14
0a0b: cf        mul   ya
0a0c: 6d        push  y
0a0d: f5 21 02  mov   a,$0221+x
0a10: eb 14     mov   y,$14
0a12: cf        mul   ya
0a13: 7a 16     addw  ya,$16
0a15: da 16     movw  $16,ya
0a17: f5 21 02  mov   a,$0221+x
0a1a: eb 15     mov   y,$15
0a1c: cf        mul   ya
0a1d: fd        mov   y,a
0a1e: ae        pop   a
0a1f: 7a 16     addw  ya,$16
0a21: da 16     movw  $16,ya
0a23: 7d        mov   a,x
0a24: 9f        xcn   a
0a25: 5c        lsr   a
0a26: 08 02     or    a,#$02
0a28: fd        mov   y,a
0a29: e4 16     mov   a,$16
0a2b: 3f 31 0a  call  $0a31
0a2e: fc        inc   y
0a2f: e4 17     mov   a,$17
0a31: 2d        push  a
0a32: e4 47     mov   a,$47
0a34: 24 1c     and   a,$1c
0a36: ae        pop   a
0a37: d0 06     bne   $0a3f
; set DSP reg Y to A
0a39: cc f2 00  mov   $00f2,y
0a3c: c5 f3 00  mov   $00f3,a
0a3f: 6f        ret
;
0a40: 78 11 04  cmp   $04,#$11
0a43: f0 10     beq   $0a55
0a45: e4 1d     mov   a,$1d
0a47: f0 0b     beq   $0a54
0a49: 8f 00 1d  mov   $1d,#$00
0a4c: 92 1c     clr4  $1c
0a4e: 82 46     set4  $46
0a50: 72 1c     clr3  $1c
0a52: 62 46     set3  $46
0a54: 6f        ret
0a55: e4 1d     mov   a,$1d
0a57: d0 32     bne   $0a8b
0a59: 62 1c     set3  $1c
0a5b: cd 0c     mov   x,#$0c
0a5d: 8d 34     mov   y,#$34
0a5f: 3f d2 17  call  $17d2
0a62: 8d 87     mov   y,#$87
0a64: e8 00     mov   a,#$00
0a66: da 10     movw  $10,ya
0a68: e8 2a     mov   a,#$2a
0a6a: 8d 30     mov   y,#$30
0a6c: 3f 39 0a  call  $0a39
0a6f: fc        inc   y
0a70: 3f 39 0a  call  $0a39
0a73: 72 47     clr3  $47
0a75: cd 06     mov   x,#$06
0a77: 3f c4 09  call  $09c4
0a7a: 62 45     set3  $45
0a7c: 8f ff 1d  mov   $1d,#$ff
0a7f: 82 1c     set4  $1c
0a81: cd 28     mov   x,#$28
0a83: 8d 44     mov   y,#$44
0a85: 3f d2 17  call  $17d2
0a88: 82 46     set4  $46
0a8a: 6f        ret
0a8b: 78 fe 1d  cmp   $1d,#$fe
0a8e: d0 1a     bne   $0aaa
0a90: 8d 8c     mov   y,#$8c
0a92: e8 00     mov   a,#$00
0a94: da 10     movw  $10,ya
0a96: e8 30     mov   a,#$30
0a98: 8d 40     mov   y,#$40
0a9a: 3f 39 0a  call  $0a39
0a9d: fc        inc   y
0a9e: 3f 39 0a  call  $0a39
0aa1: 92 47     clr4  $47
0aa3: cd 08     mov   x,#$08
0aa5: 3f c4 09  call  $09c4
0aa8: 82 45     set4  $45
0aaa: 78 7d 1d  cmp   $1d,#$7d
0aad: d0 18     bne   $0ac7
0aaf: 8d 8c     mov   y,#$8c
0ab1: e8 00     mov   a,#$00
0ab3: da 10     movw  $10,ya
0ab5: e8 3a     mov   a,#$3a
0ab7: 8d 40     mov   y,#$40
0ab9: 3f 39 0a  call  $0a39
0abc: fc        inc   y
0abd: 3f 39 0a  call  $0a39
0ac0: 92 47     clr4  $47
0ac2: cd 08     mov   x,#$08
0ac4: 3f c4 09  call  $09c4
0ac7: 78 7e 1d  cmp   $1d,#$7e
0aca: d0 02     bne   $0ace
0acc: 82 46     set4  $46
0ace: 8b 1d     dec   $1d
0ad0: f0 aa     beq   $0a7c
0ad2: 6f        ret
; read next word at $40
0ad3: 8d 00     mov   y,#$00
0ad5: f7 40     mov   a,($40)+y
0ad7: 3a 40     incw  $40
0ad9: 2d        push  a
0ada: f7 40     mov   a,($40)+y
0adc: 3a 40     incw  $40
0ade: fd        mov   y,a
0adf: ae        pop   a
0ae0: 6f        ret
;
0ae1: 3f d1 11  call  $11d1
0ae4: c4 08     mov   $08,a
0ae6: 68 06     cmp   a,#$06
0ae8: d0 03     bne   $0aed
0aea: e5 fe 07  mov   a,$07fe
0aed: c4 04     mov   $04,a
0aef: 1c        asl   a
0af0: 5d        mov   x,a
0af1: f5 d7 1f  mov   a,$1fd7+x
0af4: fd        mov   y,a
0af5: f5 d6 1f  mov   a,$1fd6+x
0af8: da 40     movw  $40,ya
0afa: 8f 02 0c  mov   $0c,#$02
0afd: e4 1c     mov   a,$1c
0aff: 48 ff     eor   a,#$ff
0b01: 0e 46 00  tset1 $0046
0b04: 6f        ret
;
0b05: cd 0e     mov   x,#$0e            ; foreach voice
0b07: 8f 80 47  mov   $47,#$80
0b0a: e8 ff     mov   a,#$ff
0b0c: d5 01 03  mov   $0301+x,a         ; voice volume = FF
0b0f: e8 0a     mov   a,#$0a
0b11: 3f d2 0c  call  $0cd2             ; pan = 0A.00
0b14: d5 81 03  mov   $0381+x,a
0b17: d5 f0 02  mov   $02f0+x,a         ; zero per-voice transpose
0b1a: d5 80 02  mov   $0280+x,a
0b1d: d5 11 02  mov   $0211+x,a         ; zero instrument
0b20: d4 b1     mov   $b1+x,a
0b22: d4 c1     mov   $c1+x,a
0b24: 1d        dec   x
0b25: 1d        dec   x
0b26: 4b 47     lsr   $47
0b28: d0 e0     bne   $0b0a             ; next voice
0b2a: c4 5a     mov   $5a,a             ; zero master vol fade counter
0b2c: c4 68     mov   $68,a             ; zero echo vol fade counter
0b2e: c4 54     mov   $54,a             ; zero tempo fade counter
0b30: c4 50     mov   $50,a             ; zero global transpose
0b32: c4 5f     mov   $5f,a             ; zero perc pitch base
0b34: 8f c0 59  mov   $59,#$c0          ; master vol = $C0
0b37: 8f 20 53  mov   $53,#$20          ; tempo = $20
0b3a: 6f        ret
;
0b3b: eb 08     mov   y,$08
0b3d: e4 00     mov   a,$00
0b3f: c4 08     mov   $08,a
0b41: 7e 00     cmp   y,$00
0b43: d0 a1     bne   $0ae6
0b45: e4 04     mov   a,$04
0b47: f0 f1     beq   $0b3a
0b49: e4 0c     mov   a,$0c
0b4b: f0 4a     beq   $0b97
0b4d: 6e 0c b5  dbnz  $0c,$0b05
0b50: 3f d3 0a  call  $0ad3             ; read next word at $40
0b53: d0 14     bne   $0b69
0b55: fd        mov   y,a
0b56: f0 8e     beq   $0ae6
0b58: 8b 42     dec   $42
0b5a: 10 02     bpl   $0b5e
0b5c: c4 42     mov   $42,a
0b5e: 3f d3 0a  call  $0ad3             ; read next word at $40
0b61: f8 42     mov   x,$42
0b63: f0 eb     beq   $0b50
0b65: da 40     movw  $40,ya
0b67: 2f e7     bra   $0b50
0b69: da 16     movw  $16,ya            ; high byte not zero: save in $16/7
0b6b: 8d 0f     mov   y,#$0f
0b6d: f7 16     mov   a,($16)+y
0b6f: d6 30 00  mov   $0030+y,a
0b72: dc        dec   y
0b73: 10 f8     bpl   $0b6d             ; set vptrs from [$16]
0b75: cd 00     mov   x,#$00            ; foreach voice
0b77: 8f 01 47  mov   $47,#$01
0b7a: f4 31     mov   a,$31+x
0b7c: f0 08     beq   $0b86             ;  next if vptr hi = 0
0b7e: f5 11 02  mov   a,$0211+x         ;  instrument
0b81: d0 03     bne   $0b86
0b83: 3f 79 0c  call  $0c79             ;  set patch to zero if not set
0b86: e8 00     mov   a,#$00
0b88: d4 80     mov   $80+x,a           ;  zero subroutine rpt counter
0b8a: d4 90     mov   $90+x,a           ;  zero voice vol fade counter
0b8c: d4 91     mov   $91+x,a           ;  zero pan fade counter
0b8e: bc        inc   a
0b8f: d4 70     mov   $70+x,a           ;  set dur ctr to 1
0b91: 3d        inc   x
0b92: 3d        inc   x
0b93: 0b 47     asl   $47
0b95: d0 e3     bne   $0b7a             ; next voice
0b97: cd 00     mov   x,#$00            ; foreach voice
0b99: d8 5e     mov   $5e,x
0b9b: 8f 01 47  mov   $47,#$01
0b9e: d8 44     mov   $44,x
0ba0: f4 31     mov   a,$31+x
0ba2: f0 66     beq   $0c0a             ; next if vptr hi zero
0ba4: 9b 70     dec   $70+x             ; dec duration ctr
0ba6: d0 5c     bne   $0c04             ; skip to readahead if not zero
0ba8: 3f 6f 0c  call  $0c6f             ; get next vbyte
0bab: d0 17     bne   $0bc4
0bad: f4 80     mov   a,$80+x           ; vcmd 00:  end repeat/return
0baf: f0 9f     beq   $0b50
0bb1: 3f c0 0d  call  $0dc0
0bb4: 9b 80     dec   $80+x
0bb6: d0 f0     bne   $0ba8
0bb8: f5 30 02  mov   a,$0230+x
0bbb: d4 30     mov   $30+x,a
0bbd: f5 31 02  mov   a,$0231+x
0bc0: d4 31     mov   $31+x,a
0bc2: 2f e4     bra   $0ba8
0bc4: 30 20     bmi   $0be6             ; vcmds 01-7F:
0bc6: d5 00 02  mov   $0200+x,a         ;  set cmd as duration
0bc9: 3f 6f 0c  call  $0c6f             ;  get next vbyte
0bcc: 30 18     bmi   $0be6             ;  if not note then
0bce: 2d        push  a
0bcf: 9f        xcn   a
0bd0: 28 07     and   a,#$07
0bd2: fd        mov   y,a
0bd3: f6 00 05  mov   a,$0500+y
0bd6: d5 01 02  mov   $0201+x,a         ;   set dur% from hi nybble
0bd9: ae        pop   a
0bda: 28 0f     and   a,#$0f
0bdc: fd        mov   y,a
0bdd: f6 08 05  mov   a,$0508+y         ;   set per-note vol from lo nybble
0be0: d5 10 02  mov   $0210+x,a
0be3: 3f 6f 0c  call  $0c6f             ; get next vbyte
0be6: 68 e0     cmp   a,#$e0
0be8: 90 05     bcc   $0bef             ; vcmd E0-FF:
0bea: 3f 5d 0c  call  $0c5d             ;  dispatch vcmd
0bed: 2f b9     bra   $0ba8             ;  do next vcmd
0bef: 3f 3f 09  call  $093f             ; vcmd 80-DF: (note)
0bf2: f5 00 02  mov   a,$0200+x
0bf5: d4 70     mov   $70+x,a           ; duration counter
0bf7: fd        mov   y,a
0bf8: f5 01 02  mov   a,$0201+x
0bfb: cf        mul   ya                ;  * dur%
0bfc: dd        mov   a,y
0bfd: d0 01     bne   $0c00
0bff: bc        inc   a
0c00: d4 71     mov   $71+x,a           ; set actual key-off dur counter
0c02: 2f 03     bra   $0c07
0c04: 3f f1 0f  call  $0ff1             ; do readahead
0c07: 3f 8a 0e  call  $0e8a
0c0a: 3d        inc   x
0c0b: 3d        inc   x
0c0c: 0b 47     asl   $47
0c0e: d0 8e     bne   $0b9e             ; next voice
0c10: e4 54     mov   a,$54             ; tempo fade counter
0c12: f0 0b     beq   $0c1f
0c14: ba 56     movw  ya,$56
0c16: 7a 52     addw  ya,$52            ; add tempo fade to tempo
0c18: 6e 54 02  dbnz  $54,$0c1d
0c1b: ba 54     movw  ya,$54            ; last time: move tempo target to tempo
0c1d: da 52     movw  $52,ya
0c1f: e4 68     mov   a,$68             ; echo vol fade counter
0c21: f0 15     beq   $0c38
0c23: ba 64     movw  ya,$64
0c25: 7a 60     addw  ya,$60
0c27: da 60     movw  $60,ya            ; add echo L delta to echo L vol
0c29: ba 66     movw  ya,$66
0c2b: 7a 62     addw  ya,$62            ; add echo R delta to echo R vol
0c2d: 6e 68 06  dbnz  $68,$0c36
0c30: ba 68     movw  ya,$68
0c32: da 60     movw  $60,ya
0c34: eb 6a     mov   y,$6a
0c36: da 62     movw  $62,ya
0c38: e4 5a     mov   a,$5a             ; master vol fade counter
0c3a: f0 0e     beq   $0c4a
0c3c: ba 5c     movw  ya,$5c
0c3e: 7a 58     addw  ya,$58            ; add master vol delta to value
0c40: 6e 5a 02  dbnz  $5a,$0c45
0c43: ba 5a     movw  ya,$5a
0c45: da 58     movw  $58,ya
0c47: 8f ff 5e  mov   $5e,#$ff          ; all voices vol chgd
0c4a: cd 00     mov   x,#$00            ; foreach voice
0c4c: 8f 01 47  mov   $47,#$01
0c4f: f4 31     mov   a,$31+x
0c51: f0 03     beq   $0c56
0c53: 3f 3a 0f  call  $0f3a             ; do per-voice fades
0c56: 3d        inc   x
0c57: 3d        inc   x
0c58: 0b 47     asl   $47
0c5a: d0 f3     bne   $0c4f             ; next voice
0c5c: 6f        ret
; dispatch vcmd
0c5d: 1c        asl   a
0c5e: fd        mov   y,a
0c5f: f6 2a 0e  mov   a,$0e2a+y         ; vcmd dispatch table
0c62: 2d        push  a
0c63: f6 29 0e  mov   a,$0e29+y
0c66: 2d        push  a
0c67: dd        mov   a,y
0c68: 5c        lsr   a
0c69: fd        mov   y,a
0c6a: f6 bf 0e  mov   a,$0ebf+y         ; oplen table
0c6d: f0 08     beq   $0c77             ; get first operand if oplen > 0
; get next byte into A, Y
0c6f: e7 30     mov   a,($30+x)
0c71: bb 30     inc   $30+x
0c73: d0 02     bne   $0c77
0c75: bb 31     inc   $31+x
0c77: fd        mov   y,a
0c78: 6f        ret
; vcmd E0 - set patch
0c79: d5 11 02  mov   $0211+x,a
0c7c: fd        mov   y,a
0c7d: 10 06     bpl   $0c85
0c7f: 80        setc
0c80: a8 ca     sbc   a,#$ca
0c82: 60        clrc
0c83: 84 5f     adc   a,$5f
0c85: 8d 06     mov   y,#$06
0c87: cf        mul   ya
0c88: da 14     movw  $14,ya
0c8a: 60        clrc
0c8b: 98 18 14  adc   $14,#$18
0c8e: 98 05 15  adc   $15,#$05
0c91: e4 1c     mov   a,$1c
0c93: 24 47     and   a,$47
0c95: d0 3a     bne   $0cd1
0c97: 4d        push  x
0c98: 7d        mov   a,x
0c99: 9f        xcn   a
0c9a: 5c        lsr   a
0c9b: 08 04     or    a,#$04
0c9d: 5d        mov   x,a
0c9e: 8d 00     mov   y,#$00
0ca0: f7 14     mov   a,($14)+y
0ca2: 10 0e     bpl   $0cb2
0ca4: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0ca6: 38 20 48  and   $48,#$20          ;  keep echo bit from FLG
0ca9: 0e 48 00  tset1 $0048             ;  OR in noise freq
0cac: 09 47 49  or    ($49),($47)       ;  set vbit in noise enable
0caf: dd        mov   a,y               ;  set SRCN to 0
0cb0: 2f 07     bra   $0cb9             ; else
0cb2: e4 47     mov   a,$47
0cb4: 4e 49 00  tclr1 $0049             ;  clear noise vbit
0cb7: f7 14     mov   a,($14)+y         ;  set SRCN from table
0cb9: c9 f2 00  mov   $00f2,x
0cbc: c5 f3 00  mov   $00f3,a
0cbf: 3d        inc   x
0cc0: fc        inc   y
0cc1: ad 04     cmp   y,#$04
0cc3: d0 f2     bne   $0cb7             ; set SRCN, ADSR1/2, GAIN from table
0cc5: ce        pop   x
0cc6: f7 14     mov   a,($14)+y
0cc8: d5 21 02  mov   $0221+x,a
0ccb: fc        inc   y
0ccc: f7 14     mov   a,($14)+y
0cce: d5 20 02  mov   $0220+x,a
0cd1: 6f        ret
; vcmd E1 - pan?
0cd2: d5 51 03  mov   $0351+x,a
0cd5: 28 1f     and   a,#$1f
0cd7: d5 31 03  mov   $0331+x,a
0cda: e8 00     mov   a,#$00
0cdc: d5 30 03  mov   $0330+x,a
0cdf: 6f        ret
; vcmd E2 - pan fade?
0ce0: d4 91     mov   $91+x,a
0ce2: 2d        push  a
0ce3: 3f 6f 0c  call  $0c6f
0ce6: d5 50 03  mov   $0350+x,a
0ce9: 80        setc
0cea: b5 31 03  sbc   a,$0331+x
0ced: ce        pop   x
0cee: 3f cd 0e  call  $0ecd
0cf1: d5 40 03  mov   $0340+x,a
0cf4: dd        mov   a,y
0cf5: d5 41 03  mov   $0341+x,a
0cf8: 6f        ret
; vcmd E3 - vibrato on
0cf9: d5 b0 02  mov   $02b0+x,a
0cfc: 3f 6f 0c  call  $0c6f
0cff: d5 a1 02  mov   $02a1+x,a
0d02: 3f 6f 0c  call  $0c6f
; vcmd E4 - vibrato off
0d05: d4 b1     mov   $b1+x,a
0d07: d5 c1 02  mov   $02c1+x,a
0d0a: e8 00     mov   a,#$00
0d0c: d5 b1 02  mov   $02b1+x,a
0d0f: 6f        ret
; vcmd F0 - vibrato fade
0d10: d5 b1 02  mov   $02b1+x,a
0d13: 2d        push  a
0d14: 8d 00     mov   y,#$00
0d16: f4 b1     mov   a,$b1+x
0d18: ce        pop   x
0d19: 9e        div   ya,x
0d1a: f8 44     mov   x,$44
0d1c: d5 c0 02  mov   $02c0+x,a
0d1f: 6f        ret
; vcmd E5 - master vol
0d20: e8 00     mov   a,#$00
0d22: da 58     movw  $58,ya
0d24: 6f        ret
; vcmd E6 - master vol fade
0d25: c4 5a     mov   $5a,a
0d27: 3f 6f 0c  call  $0c6f
0d2a: c4 5b     mov   $5b,a
0d2c: 80        setc
0d2d: a4 59     sbc   a,$59
0d2f: f8 5a     mov   x,$5a
0d31: 3f cd 0e  call  $0ecd
0d34: da 5c     movw  $5c,ya
0d36: 6f        ret
; vcmd E7 - tempo
0d37: e8 00     mov   a,#$00
0d39: da 52     movw  $52,ya
0d3b: 6f        ret
; vcmd E8 - tempo fade
0d3c: c4 54     mov   $54,a
0d3e: 3f 6f 0c  call  $0c6f
0d41: c4 55     mov   $55,a
0d43: 80        setc
0d44: a4 53     sbc   a,$53
0d46: f8 54     mov   x,$54
0d48: 3f cd 0e  call  $0ecd
0d4b: da 56     movw  $56,ya
0d4d: 6f        ret
; vcmd E9 - global transpose
0d4e: c4 50     mov   $50,a
0d50: 6f        ret
; vcmd EA - per-voice transpose
0d51: d5 f0 02  mov   $02f0+x,a
0d54: 6f        ret
; vcmd EB - tremolo on
0d55: d5 e0 02  mov   $02e0+x,a
0d58: 3f 6f 0c  call  $0c6f
0d5b: d5 d1 02  mov   $02d1+x,a
0d5e: 3f 6f 0c  call  $0c6f
; vcmd EC - tremolo off
0d61: d4 c1     mov   $c1+x,a
0d63: 6f        ret
; vcmd F1 - pitch envelope (release)
0d64: e8 01     mov   a,#$01
0d66: 2f 02     bra   $0d6a
; vcmd F2 - pitch envelope (attack)
0d68: e8 00     mov   a,#$00
0d6a: d5 90 02  mov   $0290+x,a
0d6d: dd        mov   a,y
0d6e: d5 81 02  mov   $0281+x,a
0d71: 3f 6f 0c  call  $0c6f
0d74: d5 80 02  mov   $0280+x,a
0d77: 3f 6f 0c  call  $0c6f
0d7a: d5 91 02  mov   $0291+x,a
0d7d: 6f        ret
; vcmd F3 - pitch envelope off
0d7e: d5 80 02  mov   $0280+x,a
0d81: 6f        ret
; vcmd ED - voice volume
0d82: d5 01 03  mov   $0301+x,a
0d85: e8 00     mov   a,#$00
0d87: d5 00 03  mov   $0300+x,a
0d8a: 6f        ret
; vcmd EE - fade voice volume
0d8b: d4 90     mov   $90+x,a
0d8d: 2d        push  a
0d8e: 3f 6f 0c  call  $0c6f
0d91: d5 20 03  mov   $0320+x,a
0d94: 80        setc
0d95: b5 01 03  sbc   a,$0301+x
0d98: ce        pop   x
0d99: 3f cd 0e  call  $0ecd
0d9c: d5 10 03  mov   $0310+x,a
0d9f: dd        mov   a,y
0da0: d5 11 03  mov   $0311+x,a
0da3: 6f        ret
; vcmd F4 - tuning
0da4: d5 81 03  mov   $0381+x,a
0da7: 6f        ret
; vcmd EF - call subroutine
0da8: d5 40 02  mov   $0240+x,a
0dab: 3f 6f 0c  call  $0c6f
0dae: d5 41 02  mov   $0241+x,a
0db1: 3f 6f 0c  call  $0c6f
0db4: d4 80     mov   $80+x,a
0db6: f4 30     mov   a,$30+x
0db8: d5 30 02  mov   $0230+x,a
0dbb: f4 31     mov   a,$31+x
0dbd: d5 31 02  mov   $0231+x,a
0dc0: f5 40 02  mov   a,$0240+x
0dc3: d4 30     mov   $30+x,a
0dc5: f5 41 02  mov   a,$0241+x
0dc8: d4 31     mov   $31+x,a
0dca: 6f        ret
; vcmd F5 - set echo vbits, vol
0dcb: e3 d4 05  bbs7  $d4,$0dd3
0dce: c4 4f     mov   $4f,a             ; set new echo vbits
0dd0: c5 a2 03  mov   $03a2,a
0dd3: 3f 6f 0c  call  $0c6f
0dd6: e3 d4 07  bbs7  $d4,$0de0
0dd9: e8 00     mov   a,#$00
0ddb: da 60     movw  $60,ya            ; echo vol L shadow
0ddd: cc a1 03  mov   $03a1,y
0de0: 3f 6f 0c  call  $0c6f
0de3: e3 d4 04  bbs7  $d4,$0dea
0de6: e8 00     mov   a,#$00
0de8: da 62     movw  $62,ya            ; echo vol R shadow
0dea: b2 48     clr5  $48               ; enable echo write in FLG
0dec: 6f        ret
; vcmd F8 - echo volume fade
0ded: c4 68     mov   $68,a
0def: 3f 6f 0c  call  $0c6f
0df2: c4 69     mov   $69,a
0df4: 80        setc
0df5: a4 61     sbc   a,$61
0df7: f8 68     mov   x,$68
0df9: 3f cd 0e  call  $0ecd
0dfc: da 64     movw  $64,ya
0dfe: 3f 6f 0c  call  $0c6f
0e01: c4 6a     mov   $6a,a
0e03: 80        setc
0e04: a4 63     sbc   a,$63
0e06: f8 68     mov   x,$68
0e08: 3f cd 0e  call  $0ecd
0e0b: da 66     movw  $66,ya
0e0d: 6f        ret
; vcmd F6 - disable echo
0e0e: da 60     movw  $60,ya            ; zero echo vol L
0e10: da 62     movw  $62,ya            ; zero echo vol R
0e12: cc a1 03  mov   $03a1,y
0e15: a2 48     set5  $48               ; disable echo write in FLG
0e17: 6f        ret
; vcmd F7 - set echo delay, feedback, filter
0e18: 3f 3d 0e  call  $0e3d             ; set echo delay from op1
0e1b: 3f 6f 0c  call  $0c6f
0e1e: c4 4e     mov   $4e,a             ; set echo feedback from op2
0e20: c5 a0 03  mov   $03a0,a           ; (and 3A0)
0e23: 3f 6f 0c  call  $0c6f
0e26: 8d 08     mov   y,#$08
0e28: cf        mul   ya
0e29: 5d        mov   x,a
0e2a: 8d 0f     mov   y,#$0f
0e2c: f5 83 11  mov   a,$1183+x         ; filter table
0e2f: 3f 39 0a  call  $0a39
0e32: 3d        inc   x
0e33: dd        mov   a,y
0e34: 60        clrc
0e35: 88 10     adc   a,#$10
0e37: fd        mov   y,a
0e38: 10 f2     bpl   $0e2c             ; set filter from op3
0e3a: f8 44     mov   x,$44
0e3c: 6f        ret
; set echo delay to A
0e3d: c4 4d     mov   $4d,a
0e3f: 8d 7d     mov   y,#$7d
0e41: cc f2 00  mov   $00f2,y
0e44: e5 f3 00  mov   a,$00f3           ; read echo delay
0e47: 64 4d     cmp   a,$4d
0e49: f0 2f     beq   $0e7a             ; same as $4D?
0e4b: 28 0f     and   a,#$0f
0e4d: 48 ff     eor   a,#$ff
0e4f: f3 4c 03  bbc7  $4c,$0e55
0e52: 60        clrc
0e53: 84 4c     adc   a,$4c
0e55: c4 4c     mov   $4c,a
0e57: 8d 04     mov   y,#$04
0e59: f6 a2 11  mov   a,$11a2+y         ; shadow reg DSP reg table
0e5c: c5 f2 00  mov   $00f2,a
0e5f: e8 00     mov   a,#$00
0e61: c5 f3 00  mov   $00f3,a
0e64: fe f3     dbnz  y,$0e59           ; zero echo vol, feedback, vbit DSP regs
0e66: e4 48     mov   a,$48
0e68: 08 20     or    a,#$20
0e6a: 8d 6c     mov   y,#$6c
0e6c: 3f 39 0a  call  $0a39             ; set FLG from shadow but disable echo
0e6f: e4 4d     mov   a,$4d
0e71: ab 4d     inc   $4d
0e73: ab 4d     inc   $4d
0e75: 8d 7d     mov   y,#$7d
0e77: 3f 39 0a  call  $0a39             ; set echo delay from $4D
0e7a: 1c        asl   a
0e7b: 1c        asl   a
0e7c: 1c        asl   a
0e7d: 48 ff     eor   a,#$ff
0e7f: 80        setc
0e80: 88 f8     adc   a,#$f8
0e82: 8d 6d     mov   y,#$6d
0e84: 5f 39 0a  jmp   $0a39             ; set echo region to $f800-8*delay
; vcmd FA - set perc patch base
0e87: c4 5f     mov   $5f,a
0e89: 6f        ret
;
0e8a: f4 a0     mov   a,$a0+x
0e8c: d0 33     bne   $0ec1
0e8e: e7 30     mov   a,($30+x)
0e90: 68 f9     cmp   a,#$f9
0e92: d0 2d     bne   $0ec1
0e94: 3f 71 0c  call  $0c71
0e97: 3f 6f 0c  call  $0c6f
; vcmd F9 - portamento?
0e9a: d4 a1     mov   $a1+x,a
0e9c: 3f 6f 0c  call  $0c6f
0e9f: d4 a0     mov   $a0+x,a
0ea1: 3f 6f 0c  call  $0c6f
0ea4: 60        clrc
0ea5: 84 50     adc   a,$50             ; add global transpose
0ea7: 95 f0 02  adc   a,$02f0+x         ; per-voice transpose
0eaa: 28 7f     and   a,#$7f
0eac: d5 80 03  mov   $0380+x,a
0eaf: 80        setc
0eb0: b5 61 03  sbc   a,$0361+x         ; current notenum
0eb3: fb a0     mov   y,$a0+x
0eb5: 6d        push  y
0eb6: ce        pop   x
0eb7: 3f cd 0e  call  $0ecd
0eba: d5 70 03  mov   $0370+x,a
0ebd: dd        mov   a,y
0ebe: d5 71 03  mov   $0371+x,a
0ec1: 6f        ret
;
0ec2: f5 61 03  mov   a,$0361+x
0ec5: c4 11     mov   $11,a
0ec7: f5 60 03  mov   a,$0360+x
0eca: c4 10     mov   $10,a
0ecc: 6f        ret
;
0ecd: ed        notc
0ece: 6b 12     ror   $12
0ed0: 10 03     bpl   $0ed5
0ed2: 48 ff     eor   a,#$ff
0ed4: bc        inc   a
0ed5: 8d 00     mov   y,#$00
0ed7: 9e        div   ya,x
0ed8: 2d        push  a
0ed9: e8 00     mov   a,#$00
0edb: 9e        div   ya,x
0edc: ee        pop   y
0edd: f8 44     mov   x,$44
0edf: f3 12 06  bbc7  $12,$0ee8
0ee2: da 14     movw  $14,ya
0ee4: ba 0e     movw  ya,$0e
0ee6: 9a 14     subw  ya,$14
0ee8: 6f        ret
; vcmd dispatch table (0C5D)
0ee9: dw $0c79  ; e0 - set patch
0eeb: dw $0cd2  ; e1 - pan
0eed: dw $0ce0  ; e2 - pan fade
0eef: dw $0cf9  ; e3 - vibrato on
0ef1: dw $0d05  ; e4 - vibrato off
0ef3: dw $0d20  ; e5 - master vol
0ef5: dw $0d25  ; e6 - master vol fade
0ef7: dw $0d37  ; e7 - tempo
0ef9: dw $0d3c  ; e8 - tempo fade
0efb: dw $0d4e  ; e9 - global transpose
0efd: dw $0d51  ; ea - per-voice transpose
0eff: dw $0d55  ; eb - tremolo on
0f01: dw $0d61  ; ec - tremolo off
0f03: dw $0d82  ; ed - voice volume
0f05: dw $0d8b  ; ee - voice volume fade
0f07: dw $0da8  ; ef - call subroutine
0f09: dw $0d10  ; f0 - vibrato fade
0f0b: dw $0d64  ; f1 - pitch envelope (release)
0f0d: dw $0d68  ; f2 - pitch envelope (attack)
0f0f: dw $0d7e  ; f3 - pitch envelope off
0f11: dw $0da4  ; f4 - tuning
0f13: dw $0dcb  ; f5 - set echo vbits, volume
0f15: dw $0e0e  ; f6 - disable echo
0f17: dw $0e18  ; f7 - set echo delay, feedback, filter
0f19: dw $0ded  ; f8 - echo volume fade
0f1b: dw $0e9a  ; f9 - portamento?
0f1d: dw $0e87  ; fa - set perc patch base
; oplens
0f1f: db $01,$01,$02,$03,$00,$01,$02,$01,$02,$01,$01,$03,$00,$01,$02,$03
0f2f: db $01,$03,$03,$00,$01,$03,$00,$03,$03,$03,$01
;
0f3a: f4 90     mov   a,$90+x           ; voice volume fade counter
0f3c: f0 09     beq   $0f47
0f3e: e8 00     mov   a,#$00
0f40: 8d 03     mov   y,#$03
0f42: 9b 90     dec   $90+x             ; voice vol fade counter
0f44: 3f cd 0f  call  $0fcd
0f47: fb c1     mov   y,$c1+x
0f49: f0 23     beq   $0f6e
0f4b: f5 e0 02  mov   a,$02e0+x
0f4e: de c0 1b  cbne  $c0+x,$0f6c
0f51: 09 47 5e  or    ($5e),($47)
0f54: f5 d0 02  mov   a,$02d0+x
0f57: 10 07     bpl   $0f60
0f59: fc        inc   y
0f5a: d0 04     bne   $0f60
0f5c: e8 80     mov   a,#$80
0f5e: 2f 04     bra   $0f64
0f60: 60        clrc
0f61: 95 d1 02  adc   a,$02d1+x
0f64: d5 d0 02  mov   $02d0+x,a
0f67: 3f 4e 11  call  $114e             ; calculate volume
0f6a: 2f 07     bra   $0f73
0f6c: bb c0     inc   $c0+x
0f6e: e8 ff     mov   a,#$ff
0f70: 3f 59 11  call  $1159             ; calculate volume
0f73: f4 91     mov   a,$91+x           ; pan fade counter
0f75: f0 09     beq   $0f80
0f77: e8 30     mov   a,#$30
0f79: 8d 03     mov   y,#$03
0f7b: 9b 91     dec   $91+x
0f7d: 3f cd 0f  call  $0fcd
0f80: e4 47     mov   a,$47
0f82: 24 5e     and   a,$5e
0f84: f0 46     beq   $0fcc
0f86: f5 31 03  mov   a,$0331+x
0f89: fd        mov   y,a
0f8a: f5 30 03  mov   a,$0330+x
0f8d: da 10     movw  $10,ya            ; set 10/11 from pan
;
0f8f: 7d        mov   a,x
0f90: 9f        xcn   a
0f91: 5c        lsr   a
0f92: c4 12     mov   $12,a             ; $12 = voice vol L DSP reg
0f94: eb 11     mov   y,$11
0f96: f6 6f 11  mov   a,$116f+y         ; pan table?
0f99: 80        setc
0f9a: b6 6e 11  sbc   a,$116e+y
0f9d: eb 10     mov   y,$10
0f9f: cf        mul   ya
0fa0: dd        mov   a,y
0fa1: eb 11     mov   y,$11
0fa3: 60        clrc
0fa4: 96 6e 11  adc   a,$116e+y
0fa7: fd        mov   y,a
0fa8: f5 21 03  mov   a,$0321+x
0fab: cf        mul   ya
0fac: f5 51 03  mov   a,$0351+x
0faf: 1c        asl   a
0fb0: 13 12 01  bbc0  $12,$0fb4
0fb3: 1c        asl   a
0fb4: dd        mov   a,y
0fb5: 90 03     bcc   $0fba
0fb7: 48 ff     eor   a,#$ff
0fb9: bc        inc   a
0fba: eb 12     mov   y,$12
0fbc: 3f 31 0a  call  $0a31
0fbf: 8d 14     mov   y,#$14
0fc1: e8 00     mov   a,#$00
0fc3: 9a 10     subw  ya,$10
0fc5: da 10     movw  $10,ya
0fc7: ab 12     inc   $12
0fc9: 33 12 c8  bbc1  $12,$0f94
0fcc: 6f        ret
; add voice vol or pan delta
0fcd: 09 47 5e  or    ($5e),($47)       ; set vol chg flag
0fd0: da 14     movw  $14,ya
0fd2: da 16     movw  $16,ya
0fd4: 4d        push  x
0fd5: ee        pop   y
0fd6: 60        clrc
0fd7: d0 0a     bne   $0fe3
0fd9: 98 1f 16  adc   $16,#$1f
0fdc: e8 00     mov   a,#$00
0fde: d7 14     mov   ($14)+y,a
0fe0: fc        inc   y
0fe1: 2f 09     bra   $0fec
0fe3: 98 10 16  adc   $16,#$10
0fe6: 3f ea 0f  call  $0fea
0fe9: fc        inc   y
0fea: f7 14     mov   a,($14)+y
0fec: 97 16     adc   a,($16)+y
0fee: d7 14     mov   ($14)+y,a
0ff0: 6f        ret
; do readahead
0ff1: f4 71     mov   a,$71+x
0ff3: f0 63     beq   $1058
0ff5: 9b 71     dec   $71+x
0ff7: f0 05     beq   $0ffe
0ff9: e8 02     mov   a,#$02
0ffb: de 70 5a  cbne  $70+x,$1058
0ffe: f4 80     mov   a,$80+x
1000: c4 17     mov   $17,a
1002: f4 30     mov   a,$30+x
1004: fb 31     mov   y,$31+x
1006: da 14     movw  $14,ya
1008: 8d 00     mov   y,#$00
100a: f7 14     mov   a,($14)+y
100c: f0 1c     beq   $102a
100e: 30 05     bmi   $1015
1010: fc        inc   y
1011: f7 14     mov   a,($14)+y
1013: 10 fb     bpl   $1010
1015: 68 c8     cmp   a,#$c8
1017: f0 3f     beq   $1058
1019: 68 ef     cmp   a,#$ef
101b: f0 29     beq   $1046
101d: 68 e0     cmp   a,#$e0
101f: 90 30     bcc   $1051
1021: 6d        push  y
1022: fd        mov   y,a
1023: ae        pop   a
1024: 96 3f 0e  adc   a,$0e3f+y
1027: fd        mov   y,a
1028: 2f e0     bra   $100a
102a: e4 17     mov   a,$17
102c: f0 23     beq   $1051
102e: 8b 17     dec   $17
1030: d0 0a     bne   $103c
1032: f5 31 02  mov   a,$0231+x
1035: 2d        push  a
1036: f5 30 02  mov   a,$0230+x
1039: ee        pop   y
103a: 2f ca     bra   $1006
103c: f5 41 02  mov   a,$0241+x
103f: 2d        push  a
1040: f5 40 02  mov   a,$0240+x
1043: ee        pop   y
1044: 2f c0     bra   $1006
1046: fc        inc   y
1047: f7 14     mov   a,($14)+y
1049: 2d        push  a
104a: fc        inc   y
104b: f7 14     mov   a,($14)+y
104d: fd        mov   y,a
104e: ae        pop   a
104f: 2f b5     bra   $1006
1051: e4 47     mov   a,$47
1053: 8d 5c     mov   y,#$5c
1055: 3f 31 0a  call  $0a31
1058: f2 13     clr7  $13
105a: f4 a0     mov   a,$a0+x
105c: f0 13     beq   $1071
105e: f4 a1     mov   a,$a1+x
1060: f0 04     beq   $1066
1062: 9b a1     dec   $a1+x
1064: 2f 0b     bra   $1071
1066: e2 13     set7  $13
1068: e8 60     mov   a,#$60
106a: 8d 03     mov   y,#$03
106c: 9b a0     dec   $a0+x
106e: 3f d0 0f  call  $0fd0
1071: 3f c2 0e  call  $0ec2
1074: f4 b1     mov   a,$b1+x
1076: f0 4c     beq   $10c4
1078: f5 b0 02  mov   a,$02b0+x
107b: de b0 44  cbne  $b0+x,$10c2
107e: f5 00 01  mov   a,$0100+x
1081: 75 b1 02  cmp   a,$02b1+x
1084: d0 05     bne   $108b
1086: f5 c1 02  mov   a,$02c1+x
1089: 2f 0d     bra   $1098
108b: 40        setp
108c: bb 00     inc   $00+x
108e: 20        clrp
108f: fd        mov   y,a
1090: f0 02     beq   $1094
1092: f4 b1     mov   a,$b1+x
1094: 60        clrc
1095: 95 c0 02  adc   a,$02c0+x
1098: d4 b1     mov   $b1+x,a
109a: f5 a0 02  mov   a,$02a0+x
109d: 60        clrc
109e: 95 a1 02  adc   a,$02a1+x
10a1: d5 a0 02  mov   $02a0+x,a
10a4: c4 12     mov   $12,a
10a6: 1c        asl   a
10a7: 1c        asl   a
10a8: 90 02     bcc   $10ac
10aa: 48 ff     eor   a,#$ff
10ac: fd        mov   y,a
10ad: f4 b1     mov   a,$b1+x
10af: 68 f1     cmp   a,#$f1
10b1: 90 05     bcc   $10b8
10b3: 28 0f     and   a,#$0f
10b5: cf        mul   ya
10b6: 2f 04     bra   $10bc
10b8: cf        mul   ya
10b9: dd        mov   a,y
10ba: 8d 00     mov   y,#$00
10bc: 3f 39 11  call  $1139
10bf: 5f ae 09  jmp   $09ae
10c2: bb b0     inc   $b0+x
10c4: e3 13 f8  bbs7  $13,$10bf
10c7: 6f        ret
10c8: f2 13     clr7  $13
10ca: f4 c1     mov   a,$c1+x
10cc: f0 09     beq   $10d7
10ce: f5 e0 02  mov   a,$02e0+x
10d1: de c0 03  cbne  $c0+x,$10d7
10d4: 3f 41 11  call  $1141
10d7: f5 31 03  mov   a,$0331+x
10da: fd        mov   y,a
10db: f5 30 03  mov   a,$0330+x
10de: da 10     movw  $10,ya
10e0: f4 91     mov   a,$91+x
10e2: f0 0a     beq   $10ee
10e4: f5 41 03  mov   a,$0341+x
10e7: fd        mov   y,a
10e8: f5 40 03  mov   a,$0340+x
10eb: 3f 23 11  call  $1123
10ee: f3 13 03  bbc7  $13,$10f4
10f1: 3f 8f 0f  call  $0f8f
10f4: f2 13     clr7  $13
10f6: 3f c2 0e  call  $0ec2
10f9: f4 a0     mov   a,$a0+x
10fb: f0 0e     beq   $110b
10fd: f4 a1     mov   a,$a1+x
10ff: d0 0a     bne   $110b
1101: f5 71 03  mov   a,$0371+x
1104: fd        mov   y,a
1105: f5 70 03  mov   a,$0370+x
1108: 3f 23 11  call  $1123
110b: f4 b1     mov   a,$b1+x
110d: f0 b5     beq   $10c4
110f: f5 b0 02  mov   a,$02b0+x
1112: de b0 af  cbne  $b0+x,$10c4
1115: eb 51     mov   y,$51
1117: f5 a1 02  mov   a,$02a1+x
111a: cf        mul   ya
111b: dd        mov   a,y
111c: 60        clrc
111d: 95 a0 02  adc   a,$02a0+x
1120: 5f a4 10  jmp   $10a4
;
1123: e2 13     set7  $13
1125: cb 12     mov   $12,y
1127: 3f df 0e  call  $0edf
112a: 6d        push  y
112b: eb 51     mov   y,$51
112d: cf        mul   ya
112e: cb 14     mov   $14,y
1130: 8f 00 15  mov   $15,#$00
1133: eb 51     mov   y,$51
1135: ae        pop   a
1136: cf        mul   ya
1137: 7a 14     addw  ya,$14
;
1139: 3f df 0e  call  $0edf
113c: 7a 10     addw  ya,$10
113e: da 10     movw  $10,ya
1140: 6f        ret
;
1141: e2 13     set7  $13
1143: eb 51     mov   y,$51
1145: f5 d1 02  mov   a,$02d1+x
1148: cf        mul   ya
1149: dd        mov   a,y
114a: 60        clrc
114b: 95 d0 02  adc   a,$02d0+x
;
114e: 1c        asl   a
114f: 90 02     bcc   $1153
1151: 48 ff     eor   a,#$ff
1153: fb c1     mov   y,$c1+x
1155: cf        mul   ya
1156: dd        mov   a,y
1157: 48 ff     eor   a,#$ff
;
1159: eb 59     mov   y,$59             ; master volume
115b: cf        mul   ya
115c: e8 ae     mov   a,#$ae
115e: cf        mul   ya
115f: f5 10 02  mov   a,$0210+x
1162: cf        mul   ya
1163: f5 01 03  mov   a,$0301+x
1166: cf        mul   ya
1167: dd        mov   a,y
1168: cf        mul   ya
1169: dd        mov   a,y
116a: d5 21 03  mov   $0321+x,a
116d: 6f        ret
; pan table?
116e: db $00,$01,$03,$07,$0d,$15,$1e,$29,$34,$42,$51,$5e,$67,$6e,$73,$77
117e: db $7a,$7c,$7d,$7e,$7f
; filter table?
1183: db $7f,$00,$00,$00,$00,$00,$00,$00
118b: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1193: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
119b: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
; shadow regs
11a3: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
11ad: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46
; pitch table
11b7: dw $085f
11b9: dw $08de
11bb: dw $0965
11bd: dw $09f4
11bf: dw $0a8c
11c1: dw $0b2c
11c3: dw $0bd6
11c5: dw $0c8b
11c7: dw $0d4a
11c9: dw $0e14
11cb: dw $0eea
11cd: dw $0fcd
11cf: dw $10be
; do standardish SPC transfer
11d1: e8 aa     mov   a,#$aa
11d3: c5 f4 00  mov   $00f4,a
11d6: e8 bb     mov   a,#$bb
11d8: c5 f5 00  mov   $00f5,a
11db: e5 f4 00  mov   a,$00f4
11de: 68 cc     cmp   a,#$cc
11e0: d0 f9     bne   $11db
11e2: 2f 20     bra   $1204
11e4: ec f4 00  mov   y,$00f4
11e7: d0 fb     bne   $11e4
11e9: 5e f4 00  cmp   y,$00f4
11ec: d0 0f     bne   $11fd
11ee: e5 f5 00  mov   a,$00f5
11f1: cc f4 00  mov   $00f4,y
11f4: d7 14     mov   ($14)+y,a
11f6: fc        inc   y
11f7: d0 f0     bne   $11e9
11f9: ab 15     inc   $15
11fb: 2f ec     bra   $11e9
11fd: 10 ea     bpl   $11e9
11ff: 5e f4 00  cmp   y,$00f4
1202: 10 e5     bpl   $11e9
1204: e5 f6 00  mov   a,$00f6
1207: ec f7 00  mov   y,$00f7
120a: da 14     movw  $14,ya
120c: ec f4 00  mov   y,$00f4
120f: e5 f5 00  mov   a,$00f5
1212: cc f4 00  mov   $00f4,y
1215: d0 cd     bne   $11e4
1217: cd 31     mov   x,#$31
1219: c9 f1 00  mov   $00f1,x           ; reset ports, timer0 on
121c: 6f        ret
;
121d: e8 04     mov   a,#$04
121f: c5 ac 03  mov   $03ac,a
1222: 18 78 46  or    $46,#$78          ; key off all but voice 7
1225: 6f        ret
;
1226: e5 ac 03  mov   a,$03ac
1229: f0 77     beq   $12a2
122b: 8c ac 03  dec   $03ac
122e: d0 f5     bne   $1225
1230: b2 48     clr5  $48
1232: 8f 79 4f  mov   $4f,#$79
1235: 18 78 45  or    $45,#$78
1238: 8f 00 47  mov   $47,#$00
123b: cd 06     mov   x,#$06
123d: 8d 34     mov   y,#$34
123f: 3f d2 17  call  $17d2
1242: cd 06     mov   x,#$06
1244: 8d 44     mov   y,#$44
1246: 3f d2 17  call  $17d2
1249: cd 06     mov   x,#$06
124b: 8d 54     mov   y,#$54
124d: 3f d2 17  call  $17d2
1250: cd 06     mov   x,#$06
1252: 8d 64     mov   y,#$64
1254: 3f d2 17  call  $17d2
1257: cd 06     mov   x,#$06
1259: e8 00     mov   a,#$00
125b: d5 51 03  mov   $0351+x,a
125e: e8 63     mov   a,#$63
1260: d5 21 03  mov   $0321+x,a
1263: 3d        inc   x
1264: 3d        inc   x
1265: c8 0e     cmp   x,#$0e
1267: d0 f0     bne   $1259
1269: cd 06     mov   x,#$06
126b: 8f 04 11  mov   $11,#$04
126e: 3f c4 09  call  $09c4
1271: 8f 10 11  mov   $11,#$10
1274: 3f 8f 0f  call  $0f8f
1277: cd 08     mov   x,#$08
1279: 8f 0a 11  mov   $11,#$0a
127c: 3f c4 09  call  $09c4
127f: 8f 0d 11  mov   $11,#$0d
1282: 3f 8f 0f  call  $0f8f
1285: cd 0a     mov   x,#$0a
1287: 8f 0e 11  mov   $11,#$0e
128a: 3f c4 09  call  $09c4
128d: 8f 07 11  mov   $11,#$07
1290: 3f 8f 0f  call  $0f8f
1293: cd 0c     mov   x,#$0c
1295: 8f 14 11  mov   $11,#$14
1298: 3f c4 09  call  $09c4
129b: 8f 04 11  mov   $11,#$04
129e: 3f 8f 0f  call  $0f8f
12a1: 6f        ret
12a2: 60        clrc
12a3: 98 07 d9  adc   $d9,#$07
12a6: cd 06     mov   x,#$06
12a8: e8 00     mov   a,#$00
12aa: d5 51 03  mov   $0351+x,a
12ad: e4 d9     mov   a,$d9
12af: 10 02     bpl   $12b3
12b1: 48 ff     eor   a,#$ff
12b3: 5c        lsr   a
12b4: 5c        lsr   a
12b5: 60        clrc
12b6: 88 4e     adc   a,#$4e
12b8: d5 21 03  mov   $0321+x,a
12bb: 8f 10 11  mov   $11,#$10
12be: 8f 00 10  mov   $10,#$00
12c1: 72 47     clr3  $47
12c3: 3f 8f 0f  call  $0f8f
12c6: 60        clrc
12c7: 98 0c e0  adc   $e0,#$0c
12ca: cd 0c     mov   x,#$0c
12cc: e8 00     mov   a,#$00
12ce: d5 51 03  mov   $0351+x,a
12d1: e4 e0     mov   a,$e0
12d3: 10 02     bpl   $12d7
12d5: 48 ff     eor   a,#$ff
12d7: 5c        lsr   a
12d8: 5c        lsr   a
12d9: 60        clrc
12da: 88 4e     adc   a,#$4e
12dc: d5 21 03  mov   $0321+x,a
12df: 8f 04 11  mov   $11,#$04
12e2: 8f 00 10  mov   $10,#$00
12e5: d2 47     clr6  $47
12e7: 3f 8f 0f  call  $0f8f
12ea: 6f        ret
;
12eb: e3 06 fc  bbs7  $06,$12ea
12ee: 8f 00 47  mov   $47,#$00
12f1: e5 f7 00  mov   a,$00f7
12f4: 65 f7 00  cmp   a,$00f7
12f7: d0 f8     bne   $12f1
12f9: c5 f7 00  mov   $00f7,a
12fc: f8 07     mov   x,$07
12fe: 2d        push  a
12ff: 9f        xcn   a
1300: 28 0f     and   a,#$0f
1302: c4 07     mov   $07,a
1304: eb 03     mov   y,$03
1306: ae        pop   a
1307: c8 0f     cmp   x,#$0f
1309: d0 08     bne   $1313
130b: 78 0f 07  cmp   $07,#$0f
130e: d0 0e     bne   $131e
1310: 5f 26 12  jmp   $1226
1313: 78 0f 07  cmp   $07,#$0f
1316: d0 0c     bne   $1324
1318: 18 78 1c  or    $1c,#$78
131b: 5f 1d 12  jmp   $121d
131e: 38 87 1c  and   $1c,#$87
1321: 18 78 46  or    $46,#$78
1324: 28 0f     and   a,#$0f
1326: c4 03     mov   $03,a
1328: d0 45     bne   $136f
132a: e4 e1     mov   a,$e1
132c: f0 33     beq   $1361
132e: 8b e1     dec   $e1
1330: d0 27     bne   $1359
1332: cd 0c     mov   x,#$0c
1334: e5 a6 03  mov   a,$03a6
1337: c5 2d 03  mov   $032d,a
133a: e5 a7 03  mov   a,$03a7
133d: c5 5d 03  mov   $035d,a
1340: ec 31 03  mov   y,$0331
1343: e5 30 03  mov   a,$0330
1346: da 10     movw  $10,ya
1348: 3f 8f 0f  call  $0f8f
134b: e5 1d 02  mov   a,$021d
134e: 3f 7c 0c  call  $0c7c
1351: d2 1c     clr6  $1c
1353: 73 d4 03  bbc3  $d4,$1359
1356: 38 e0 1c  and   $1c,#$e0
1359: c2 46     set6  $46
135b: 73 d4 10  bbc3  $d4,$136e
135e: 18 1f 46  or    $46,#$1f
1361: e5 a9 03  mov   a,$03a9
1364: f0 08     beq   $136e
1366: e8 00     mov   a,#$00
1368: c5 a9 03  mov   $03a9,a
136b: 38 e0 1c  and   $1c,#$e0
136e: 6f        ret
136f: dd        mov   a,y
1370: d0 1f     bne   $1391
1372: cd 00     mov   x,#$00
1374: d8 d9     mov   $d9,x
1376: d8 e0     mov   $e0,x
1378: e5 2d 03  mov   a,$032d
137b: c5 a6 03  mov   $03a6,a
137e: e5 5d 03  mov   a,$035d
1381: c5 a7 03  mov   $03a7,a
1384: cd 3a     mov   x,#$3a
1386: 8d 64     mov   y,#$64
1388: 3f d2 17  call  $17d2
138b: c2 1c     set6  $1c
138d: c2 45     set6  $45
138f: 2f 12     bra   $13a3
1391: 7e 03     cmp   y,$03
1393: f0 0e     beq   $13a3
1395: cd 60     mov   x,#$60
1397: d8 d9     mov   $d9,x
1399: e4 03     mov   a,$03
139b: 80        setc
139c: a4 db     sbc   a,$db
139e: 3f cd 0e  call  $0ecd
13a1: da dc     movw  $dc,ya
13a3: eb 03     mov   y,$03
13a5: ad 06     cmp   y,#$06
13a7: f0 06     beq   $13af
13a9: 90 08     bcc   $13b3
13ab: 8d a8     mov   y,#$a8
13ad: 2f 06     bra   $13b5
13af: 8d 9f     mov   y,#$9f
13b1: 2f 02     bra   $13b5
13b3: 8d 9a     mov   y,#$9a
13b5: e8 00     mov   a,#$00
13b7: da 10     movw  $10,ya
13b9: f8 d9     mov   x,$d9
13bb: f0 28     beq   $13e5
13bd: 8b d9     dec   $d9
13bf: ba 0e     movw  ya,$0e
13c1: 9a dc     subw  ya,$dc
13c3: cb 14     mov   $14,y
13c5: 1c        asl   a
13c6: 2b 14     rol   $14
13c8: 1c        asl   a
13c9: 2b 14     rol   $14
13cb: f8 03     mov   x,$03
13cd: c8 06     cmp   x,#$06
13cf: b0 08     bcs   $13d9
13d1: 1c        asl   a
13d2: 2b 14     rol   $14
13d4: 48 ff     eor   a,#$ff
13d6: 58 ff 14  eor   $14,#$ff
13d9: eb 14     mov   y,$14
13db: 7a 10     addw  ya,$10
13dd: da 10     movw  $10,ya
13df: ba da     movw  ya,$da
13e1: 7a dc     addw  ya,$dc
13e3: 2f 04     bra   $13e9
13e5: eb 03     mov   y,$03
13e7: e8 00     mov   a,#$00
13e9: da da     movw  $da,ya
13eb: e4 e0     mov   a,$e0
13ed: d0 06     bne   $13f5
13ef: ba 10     movw  ya,$10
13f1: da de     movw  $de,ya
13f3: 2f 22     bra   $1417
13f5: 68 06     cmp   a,#$06
13f7: d0 1a     bne   $1413
13f9: 8f 00 e0  mov   $e0,#$00
13fc: ba 10     movw  ya,$10
13fe: 9a de     subw  ya,$de
1400: da 14     movw  $14,ya
1402: 8d 04     mov   y,#$04
1404: e4 15     mov   a,$15
1406: 1c        asl   a
1407: 6b 15     ror   $15
1409: 6b 14     ror   $14
140b: fe f7     dbnz  y,$1404
140d: ba de     movw  ya,$de
140f: 7a 14     addw  ya,$14
1411: da de     movw  $de,ya
1413: ba de     movw  ya,$de
1415: da 10     movw  $10,ya
1417: cd 0c     mov   x,#$0c
1419: 3f c4 09  call  $09c4
141c: ab e0     inc   $e0
141e: cd 0c     mov   x,#$0c
1420: e8 00     mov   a,#$00
1422: d5 51 03  mov   $0351+x,a
1425: eb 03     mov   y,$03
1427: f6 c0 14  mov   a,$14c0+y
142a: 8d a2     mov   y,#$a2
142c: cf        mul   ya
142d: dd        mov   a,y
142e: d5 21 03  mov   $0321+x,a
1431: 8f 04 e1  mov   $e1,#$04
1434: eb 07     mov   y,$07
1436: f6 b1 14  mov   a,$14b1+y
1439: c4 e2     mov   $e2,a
143b: c4 11     mov   $11,a
143d: 8f 00 10  mov   $10,#$00
1440: 3f 8f 0f  call  $0f8f
1443: 73 d4 48  bbc3  $d4,$148e
1446: cd 40     mov   x,#$40
1448: 8d 44     mov   y,#$44
144a: 3f d2 17  call  $17d2
144d: cd 40     mov   x,#$40
144f: 8d 34     mov   y,#$34
1451: 3f d2 17  call  $17d2
1454: cd 40     mov   x,#$40
1456: 8d 24     mov   y,#$24
1458: 3f d2 17  call  $17d2
145b: cd 40     mov   x,#$40
145d: 8d 14     mov   y,#$14
145f: 3f d2 17  call  $17d2
1462: cd 40     mov   x,#$40
1464: 8d 04     mov   y,#$04
1466: 3f d2 17  call  $17d2
1469: cd 08     mov   x,#$08
146b: fa e2 11  mov   ($11),($e2)
146e: 8f 00 10  mov   $10,#$00
1471: e5 2d 03  mov   a,$032d
1474: 8d d3     mov   y,#$d3
1476: cf        mul   ya
1477: dd        mov   a,y
1478: d5 21 03  mov   $0321+x,a
147b: 3f 8f 0f  call  $0f8f
147e: 7d        mov   a,x
147f: 5c        lsr   a
1480: fd        mov   y,a
1481: dc        dec   y
1482: dc        dec   y
1483: 7a de     addw  ya,$de
1485: da 10     movw  $10,ya
1487: 3f c4 09  call  $09c4
148a: 1d        dec   x
148b: 1d        dec   x
148c: 10 dd     bpl   $146b
148e: 73 d4 0f  bbc3  $d4,$14a0
1491: e5 a9 03  mov   a,$03a9
1494: d0 1a     bne   $14b0
1496: ac a9 03  inc   $03a9
1499: 18 1f 1c  or    $1c,#$1f
149c: 18 1f 45  or    $45,#$1f
149f: 6f        ret
14a0: e5 a9 03  mov   a,$03a9
14a3: f0 0b     beq   $14b0
14a5: e8 00     mov   a,#$00
14a7: c5 a9 03  mov   $03a9,a
14aa: 38 e0 1c  and   $1c,#$e0
14ad: 18 1f 46  or    $46,#$1f
14b0: 6f        ret
;
14b1: db $03,$04,$05,$06,$07,$08,$09,$0a
14b9: db $0b,$0c,$0d,$0e,$0f,$10,$11
;
14c0: db $00,$63,$88,$93,$ba,$e8,$ff,$e8
14c8: db $ba,$93,$88,$7f,$77,$69,$62,$56
;
14d0: e4 1e     mov   a,$1e
14d2: d0 37     bne   $150b
14d4: 18 a0 46  or    $46,#$a0
14d7: 8f 2c 1e  mov   $1e,#$2c
14da: e8 33     mov   a,#$33
14dc: c5 2b 03  mov   $032b,a
14df: c5 2f 03  mov   $032f,a
14e2: e8 02     mov   a,#$02
14e4: c5 3b 03  mov   $033b,a
14e7: e8 0c     mov   a,#$0c
14e9: c5 3f 03  mov   $033f,a
14ec: e8 00     mov   a,#$00
14ee: c5 5b 03  mov   $035b,a
14f1: c5 5f 03  mov   $035f,a
14f4: c5 3a 03  mov   $033a,a
14f7: c5 3e 03  mov   $033e,a
14fa: c5 6a 03  mov   $036a,a
14fd: c5 6e 03  mov   $036e,a
1500: e8 bc     mov   a,#$bc
1502: c5 6b 03  mov   $036b,a
1505: e8 b6     mov   a,#$b6
1507: c5 6f 03  mov   $036f,a
150a: 6f        ret
;
150b: 8b 1e     dec   $1e
150d: f0 c5     beq   $14d4
150f: 78 28 1e  cmp   $1e,#$28
1512: d0 17     bne   $152b
1514: 8f 00 47  mov   $47,#$00
1517: 38 5f 49  and   $49,#$5f
151a: cd 0a     mov   x,#$0a
151c: e8 06     mov   a,#$06
151e: 3f 7c 0c  call  $0c7c
1521: cd 0e     mov   x,#$0e
1523: e8 06     mov   a,#$06
1525: 3f 7c 0c  call  $0c7c
1528: 18 a0 45  or    $45,#$a0
152b: 78 1e 1e  cmp   $1e,#$1e
152e: b0 22     bcs   $1552
1530: e5 6a 03  mov   a,$036a
1533: ec 6b 03  mov   y,$036b
1536: 3f 9c 15  call  $159c
1539: 9a 10     subw  ya,$10
153b: c5 6a 03  mov   $036a,a
153e: cc 6b 03  mov   $036b,y
1541: e5 6e 03  mov   a,$036e
1544: ec 6f 03  mov   y,$036f
1547: 3f 9c 15  call  $159c
154a: 9a 10     subw  ya,$10
154c: c5 6e 03  mov   $036e,a
154f: cc 6f 03  mov   $036f,y
1552: e5 6a 03  mov   a,$036a
1555: ec 6b 03  mov   y,$036b
1558: da 10     movw  $10,ya
155a: cd 0a     mov   x,#$0a
155c: 3f c4 09  call  $09c4
155f: e5 6e 03  mov   a,$036e
1562: ec 6f 03  mov   y,$036f
1565: da 10     movw  $10,ya
1567: cd 0e     mov   x,#$0e
1569: 3f c4 09  call  $09c4
156c: e5 3a 03  mov   a,$033a
156f: ec 3b 03  mov   y,$033b
1572: 3f 9c 15  call  $159c
1575: 7a 10     addw  ya,$10
1577: c5 3a 03  mov   $033a,a
157a: cc 3b 03  mov   $033b,y
157d: da 10     movw  $10,ya
157f: cd 0a     mov   x,#$0a
1581: 3f 8f 0f  call  $0f8f
1584: e5 3e 03  mov   a,$033e
1587: ec 3f 03  mov   y,$033f
158a: 3f 9c 15  call  $159c
158d: 7a 10     addw  ya,$10
158f: c5 3e 03  mov   $033e,a
1592: cc 3f 03  mov   $033f,y
1595: da 10     movw  $10,ya
1597: cd 0e     mov   x,#$0e
1599: 5f 8f 0f  jmp   $0f8f
159c: 8f 2a 10  mov   $10,#$2a
159f: 8f 00 11  mov   $11,#$00
15a2: 6f        ret
15a3: e5 2b 03  mov   a,$032b
15a6: c5 a3 03  mov   $03a3,a
15a9: e5 5b 03  mov   a,$035b
15ac: c5 a4 03  mov   $03a4,a
15af: c2 0d     set6  $0d
15b1: 8f 0e 26  mov   $26,#$0e
15b4: a2 1c     set5  $1c
15b6: a2 46     set5  $46
15b8: 6f        ret
;
15b9: 8b 26     dec   $26
15bb: f0 1b     beq   $15d8
15bd: 78 02 26  cmp   $26,#$02
15c0: f0 f4     beq   $15b6
15c2: 78 0a 26  cmp   $26,#$0a
15c5: d0 f1     bne   $15b8
15c7: e8 2e     mov   a,#$2e
15c9: c5 2b 03  mov   $032b,a
15cc: e8 06     mov   a,#$06
15ce: 3f 39 1c  call  $1c39
15d1: 8d b9     mov   y,#$b9
15d3: e8 00     mov   a,#$00
15d5: 5f 22 1c  jmp   $1c22
15d8: c3 01 d6  bbs6  $01,$15b1
15db: d2 0d     clr6  $0d
15dd: a2 46     set5  $46
15df: b2 1c     clr5  $1c
15e1: cd 0a     mov   x,#$0a
15e3: e5 a3 03  mov   a,$03a3
15e6: c5 2b 03  mov   $032b,a
15e9: e5 a4 03  mov   a,$03a4
15ec: c5 5b 03  mov   $035b,a
15ef: ec 31 03  mov   y,$0331
15f2: e5 30 03  mov   a,$0330
15f5: da 10     movw  $10,ya
15f7: 3f 8f 0f  call  $0f8f
15fa: e5 1b 02  mov   a,$021b
15fd: 5f 7c 0c  jmp   $0c7c
1600: 5f a3 15  jmp   $15a3
;
1603: e5 f5 00  mov   a,$00f5
1606: 65 f5 00  cmp   a,$00f5
1609: d0 f8     bne   $1603
160b: fa 01 13  mov   ($13),($01)
160e: c5 f5 00  mov   $00f5,a
1611: c4 01     mov   $01,a
1613: e4 04     mov   a,$04
1615: f0 0a     beq   $1621
1617: 68 04     cmp   a,#$04
1619: f0 06     beq   $1621
161b: 68 05     cmp   a,#$05
161d: f0 02     beq   $1621
161f: 2f 13     bra   $1634
1621: d3 0d 05  bbc6  $0d,$1629
1624: 3f b9 15  call  $15b9
1627: 2f 20     bra   $1649
1629: d3 01 1d  bbc6  $01,$1649
162c: 3f a3 15  call  $15a3
162f: 2f 18     bra   $1649
1631: 5f d0 14  jmp   $14d0
1634: c3 01 fa  bbs6  $01,$1631
1637: e4 1e     mov   a,$1e
1639: f0 0e     beq   $1649
163b: 8f 00 1e  mov   $1e,#$00
163e: 18 a0 46  or    $46,#$a0
1641: e4 01     mov   a,$01
1643: 28 3f     and   a,#$3f
1645: f0 02     beq   $1649
1647: e2 45     set7  $45
1649: eb 05     mov   y,$05
164b: e4 01     mov   a,$01
164d: 28 3f     and   a,#$3f
164f: c4 05     mov   $05,a
1651: d0 17     bne   $166a
1653: dd        mov   a,y
1654: f0 13     beq   $1669
1656: f2 1c     clr7  $1c
1658: cd 0e     mov   x,#$0e
165a: f5 11 02  mov   a,$0211+x
165d: 3f 7c 0c  call  $0c7c
1660: 8f 00 05  mov   $05,#$00
1663: 8f 00 25  mov   $25,#$00
1666: 18 80 46  or    $46,#$80
1669: 6f        ret
166a: e4 13     mov   a,$13
166c: f0 f2     beq   $1660
166e: 44 01     eor   a,$01
1670: 10 06     bpl   $1678
1672: f3 01 03  bbc7  $01,$1678
1675: 8f 1e 25  mov   $25,#$1e
1678: dd        mov   a,y
1679: d0 09     bne   $1684
167b: 8f 00 20  mov   $20,#$00
167e: e2 45     set7  $45
1680: e2 1c     set7  $1c
1682: 2f 20     bra   $16a4
1684: 7e 05     cmp   y,$05
1686: f0 0e     beq   $1696
1688: cd 40     mov   x,#$40
168a: d8 20     mov   $20,x
168c: e4 05     mov   a,$05
168e: 80        setc
168f: a4 22     sbc   a,$22
1691: 3f cd 0e  call  $0ecd
1694: da 23     movw  $23,ya
1696: f8 20     mov   x,$20
1698: f0 0a     beq   $16a4
169a: 8b 20     dec   $20
169c: f0 06     beq   $16a4
169e: ba 21     movw  ya,$21
16a0: 7a 23     addw  ya,$23
16a2: 2f 04     bra   $16a8
16a4: eb 05     mov   y,$05
16a6: e8 00     mov   a,#$00
16a8: da 21     movw  $21,ya
16aa: da 10     movw  $10,ya
16ac: 8f 0c 15  mov   $15,#$0c
16af: 8f 00 14  mov   $14,#$00
16b2: 9a 14     subw  ya,$14
16b4: 90 21     bcc   $16d7
16b6: da 10     movw  $10,ya
16b8: 4b 11     lsr   $11
16ba: 6b 10     ror   $10
16bc: ba 14     movw  ya,$14
16be: 7a 10     addw  ya,$10
16c0: da 10     movw  $10,ya
16c2: 8f 1c 15  mov   $15,#$1c
16c5: ba 10     movw  ya,$10
16c7: 9a 14     subw  ya,$14
16c9: 90 0c     bcc   $16d7
16cb: da 10     movw  $10,ya
16cd: 4b 11     lsr   $11
16cf: 6b 10     ror   $10
16d1: ba 14     movw  ya,$14
16d3: 7a 10     addw  ya,$10
16d5: da 10     movw  $10,ya
16d7: 60        clrc
16d8: 98 0c 11  adc   $11,#$0c
16db: f8 25     mov   x,$25
16dd: f0 06     beq   $16e5
16df: 8f 03 11  mov   $11,#$03
16e2: 8f 00 10  mov   $10,#$00
16e5: cd 0e     mov   x,#$0e
16e7: f2 47     clr7  $47
16e9: 3f c4 09  call  $09c4
16ec: eb 25     mov   y,$25
16ee: f0 0b     beq   $16fb
16f0: 8b 25     dec   $25
16f2: f6 47 18  mov   a,$1847+y
16f5: 8d b4     mov   y,#$b4
16f7: cf        mul   ya
16f8: dd        mov   a,y
16f9: 2f 07     bra   $1702
16fb: e8 19     mov   a,#$19
16fd: f3 01 02  bbc7  $01,$1702
1700: e8 1b     mov   a,#$1b
1702: 8d 70     mov   y,#$70
1704: 3f 39 0a  call  $0a39
1707: fc        inc   y
1708: 3f 39 0a  call  $0a39
170b: cd 00     mov   x,#$00
170d: f3 01 06  bbc7  $01,$1716
1710: eb 25     mov   y,$25
1712: d0 02     bne   $1716
1714: cd 06     mov   x,#$06
1716: 8d 74     mov   y,#$74
1718: 3f d2 17  call  $17d2
171b: 8d 78     mov   y,#$78
171d: cc f2 00  mov   $00f2,y
1720: e5 f3 00  mov   a,$00f3
1723: d0 02     bne   $1727
1725: e2 45     set7  $45
1727: 6f        ret
; mess with sample $28
1728: ab 1b     inc   $1b
172a: 78 1c 1b  cmp   $1b,#$1c
172d: 90 0d     bcc   $173c
172f: 8f 00 1b  mov   $1b,#$00
1732: ab 1a     inc   $1a
1734: 78 08 1a  cmp   $1a,#$08
1737: 90 03     bcc   $173c
1739: 8f 00 1a  mov   $1a,#$00
173c: e4 1b     mov   a,$1b
173e: 8d 09     mov   y,#$09
1740: cf        mul   ya
1741: fd        mov   y,a
1742: e4 1a     mov   a,$1a
1744: 08 f8     or    a,#$f8
1746: c4 15     mov   $15,a
1748: 8f 00 14  mov   $14,#$00
174b: e4 18     mov   a,$18
174d: 28 07     and   a,#$07
174f: 08 f8     or    a,#$f8
1751: c5 a1 3c  mov   $3ca1,a
1754: c5 a3 3c  mov   $3ca3,a
1757: fc        inc   y
1758: cd 04     mov   x,#$04
175a: aa 19 c0  mov1  c,$1803,1
175d: 8a 19 a0  eor1  c,$1403,1
1760: 2b 18     rol   $18
1762: 2b 19     rol   $19
1764: e4 19     mov   a,$19
1766: 08 11     or    a,#$11
1768: d7 14     mov   ($14)+y,a
176a: fc        inc   y
176b: e4 18     mov   a,$18
176d: 08 11     or    a,#$11
176f: d7 14     mov   ($14)+y,a
1771: fc        inc   y
1772: 1d        dec   x
1773: d0 e5     bne   $175a
1775: 6f        ret
;
1776: 8d 00     mov   y,#$00
1778: cd 1b     mov   x,#$1b
177a: e8 b2     mov   a,#$b2
177c: d6 00 f8  mov   $f800+y,a
177f: d6 00 f9  mov   $f900+y,a
1782: d6 00 fa  mov   $fa00+y,a
1785: d6 00 fb  mov   $fb00+y,a
1788: d6 00 fc  mov   $fc00+y,a
178b: d6 00 fd  mov   $fd00+y,a
178e: d6 00 fe  mov   $fe00+y,a
1791: d6 00 ff  mov   $ff00+y,a
1794: fc        inc   y
1795: fc        inc   y
1796: fc        inc   y
1797: fc        inc   y
1798: fc        inc   y
1799: fc        inc   y
179a: fc        inc   y
179b: fc        inc   y
179c: fc        inc   y                 ; Y += 9
179d: 1d        dec   x
179e: d0 dc     bne   $177c
17a0: bc        inc   a
17a1: d6 00 f8  mov   $f800+y,a
17a4: d6 00 f9  mov   $f900+y,a
17a7: d6 00 fa  mov   $fa00+y,a
17aa: d6 00 fb  mov   $fb00+y,a
17ad: d6 00 fc  mov   $fc00+y,a
17b0: d6 00 fd  mov   $fd00+y,a
17b3: d6 00 fe  mov   $fe00+y,a
17b6: d6 00 ff  mov   $ff00+y,a
17b9: 8d f8     mov   y,#$f8
17bb: e8 00     mov   a,#$00
17bd: c5 a0 3c  mov   $3ca0,a
17c0: cc a1 3c  mov   $3ca1,y
17c3: c5 a2 3c  mov   $3ca2,a
17c6: cc a3 3c  mov   $3ca3,y
17c9: e4 18     mov   a,$18
17cb: 04 19     or    a,$19
17cd: d0 02     bne   $17d1
17cf: ab 18     inc   $18
17d1: 6f        ret
;
17d2: 8f 04 12  mov   $12,#$04
17d5: dd        mov   a,y
17d6: 28 70     and   a,#$70
17d8: 1c        asl   a
17d9: 08 12     or    a,#$12
17db: c5 de 17  mov   $17de,a           ; next opcode is CLR1 $49.#n
17de: 12 49     clr0  $49               ; noise vbits shadow
17e0: f5 fe 17  mov   a,$17fe+x
17e3: 3f 39 0a  call  $0a39
17e6: 3d        inc   x
17e7: fc        inc   y
17e8: 6e 12 f5  dbnz  $12,$17e0
17eb: dd        mov   a,y
17ec: 9f        xcn   a
17ed: 28 07     and   a,#$07
17ef: 1c        asl   a
17f0: fd        mov   y,a
17f1: f5 fe 17  mov   a,$17fe+x
17f4: d6 21 02  mov   $0221+y,a
17f7: f5 ff 17  mov   a,$17ff+x
17fa: d6 20 02  mov   $0220+y,a
17fd: 6f        ret
