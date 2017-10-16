0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: 3f 12 08  call  $0812
0807: 3f 19 0b  call  $0b19
080a: 3f 31 17  call  $1731
080d: 3f f3 12  call  $12f3
0810: 2f f5     bra   $0807
0812: e8 00     mov   a,#$00
0814: fd        mov   y,a
0815: da c9     movw  $c9,ya
0817: c4 c4     mov   $c4,a
0819: 8f be c3  mov   $c3,#$be
081c: 3f 1e 1a  call  $1a1e
081f: cd 26     mov   x,#$26
0821: e8 ff     mov   a,#$ff
0823: af        mov   (x)+,a
0824: c8 3e     cmp   x,#$3e
0826: d0 fb     bne   $0823
0828: 8f 00 c9  mov   $c9,#$00
082b: 8f 02 ca  mov   $ca,#$02
082e: 8f 4e c3  mov   $c3,#$4e
0831: 8f 01 c4  mov   $c4,#$01
0834: e8 00     mov   a,#$00
0836: 3f 1e 1a  call  $1a1e
0839: 8f 00 0c  mov   $0c,#$00
083c: 8f 20 0d  mov   $0d,#$20
083f: 8d 00     mov   y,#$00
0841: e8 33     mov   a,#$33
0843: 7a 0c     addw  ya,$0c
0845: da 0e     movw  $0e,ya
0847: cd 00     mov   x,#$00
0849: 8f 05 bf  mov   $bf,#$05
084c: d8 c2     mov   $c2,x
084e: 8f 32 c1  mov   $c1,#$32
0851: 7a c1     addw  ya,$c1
0853: d4 10     mov   $10+x,a
0855: 3d        inc   x
0856: db 10     mov   $10+x,y
0858: 3d        inc   x
0859: 8b bf     dec   $bf
085b: d0 f4     bne   $0851
085d: 8f 5f 1d  mov   $1d,#$5f
0860: 8f 21 1e  mov   $1e,#$21
0863: e8 00     mov   a,#$00
0865: 3f 1f 18  call  $181f
0868: cd 1e     mov   x,#$1e
086a: e8 4d     mov   a,#$4d
086c: 8d 1d     mov   y,#$1d
086e: 8f 10 bf  mov   $bf,#$10
0871: 8f 00 c0  mov   $c0,#$00
0874: d5 f2 02  mov   $02f2+x,a
0877: 2d        push  a
0878: dd        mov   a,y
0879: d5 f3 02  mov   $02f3+x,a
087c: ae        pop   a
087d: 9a bf     subw  ya,$bf
087f: 1d        dec   x
0880: 1d        dec   x
0881: 10 f1     bpl   $0874
0883: e8 8d     mov   a,#$8d
0885: 8d 1b     mov   y,#$1b
0887: da c9     movw  $c9,ya
0889: 8d 00     mov   y,#$00
088b: e8 c0     mov   a,#$c0
088d: da c3     movw  $c3,ya
088f: dd        mov   a,y
0890: 3f 1e 1a  call  $1a1e
0893: e8 60     mov   a,#$60
0895: 8d 0c     mov   y,#$0c
0897: 3f e5 0d  call  $0de5             ; set MVOL(L)
089a: 8d 1c     mov   y,#$1c
089c: 3f e5 0d  call  $0de5             ; set MVOL(R)
089f: c5 48 03  mov   $0348,a
08a2: e8 00     mov   a,#$00
08a4: c4 4a     mov   $4a,a
08a6: 9c        dec   a
08a7: c4 45     mov   $45,a
08a9: e8 07     mov   a,#$07
08ab: 8d 5d     mov   y,#$5d
08ad: 3f e5 0d  call  $0de5             ; set DIR = $0700
08b0: e8 f0     mov   a,#$f0
08b2: c5 f1 00  mov   $00f1,a
08b5: e8 10     mov   a,#$10
08b7: c5 fa 00  mov   $00fa,a
08ba: c4 40     mov   $40,a
08bc: c4 42     mov   $42,a
08be: e8 01     mov   a,#$01
08c0: c5 f1 00  mov   $00f1,a
08c3: 3f c9 08  call  $08c9
08c6: a2 21     set5  $21
08c8: 6f        ret

; initialize echo
08c9: c4 22     mov   $22,a
08cb: 8d 7d     mov   y,#$7d
08cd: cc f2 00  mov   $00f2,y
08d0: e5 f3 00  mov   a,$00f3           ; set EDL
08d3: 64 22     cmp   a,$22
08d5: f0 31     beq   $0908
08d7: 28 0f     and   a,#$0f
08d9: 48 ff     eor   a,#$ff
08db: f3 25 03  bbc7  $25,$08e1
08de: 60        clrc
08df: 84 25     adc   a,$25
08e1: 80        setc
08e2: a4 22     sbc   a,$22
08e4: 1c        asl   a
08e5: 1c        asl   a
08e6: 9c        dec   a
08e7: c4 25     mov   $25,a
08e9: e8 00     mov   a,#$00
08eb: 8d 2c     mov   y,#$2c
08ed: 3f e5 0d  call  $0de5             ; zero EVOL(L)
08f0: 8d 3c     mov   y,#$3c
08f2: 3f e5 0d  call  $0de5             ; zero EVOL(R)
08f5: 8d 0d     mov   y,#$0d
08f7: 3f e5 0d  call  $0de5             ; zero EFB
08fa: 8d 4d     mov   y,#$4d
08fc: 3f e5 0d  call  $0de5             ; zero EON
08ff: e4 21     mov   a,$21
0901: 08 20     or    a,#$20
0903: 8d 6c     mov   y,#$6c
0905: 3f e5 0d  call  $0de5             ; echo write off
0908: e4 22     mov   a,$22
090a: 1c        asl   a
090b: 1c        asl   a
090c: 1c        asl   a
090d: 48 ff     eor   a,#$ff
090f: 80        setc
0910: 88 fe     adc   a,#$fe
0912: c4 20     mov   $20,a
0914: fa 1b bf  mov   ($bf),($1b)
0917: ab bf     inc   $bf
0919: 64 bf     cmp   a,$bf
091b: 90 0e     bcc   $092b
091d: 2d        push  a
091e: e4 22     mov   a,$22
0920: 8d 7d     mov   y,#$7d
0922: 3f e5 0d  call  $0de5             ; set EDL
0925: ae        pop   a
0926: 8d 6d     mov   y,#$6d
0928: 5f e5 0d  jmp   $0de5             ; set ESA

092b: 8b 22     dec   $22
092d: 2f d9     bra   $0908
092f: e4 06     mov   a,$06
0931: f0 08     beq   $093b
0933: cd 07     mov   x,#$07
0935: 3f 51 09  call  $0951
0938: 1d        dec   x
0939: 10 fa     bpl   $0935
093b: 6f        ret

093c: e4 05     mov   a,$05
093e: f0 10     beq   $0950
0940: c4 b8     mov   $b8,a
0942: cd 08     mov   x,#$08
0944: 0b b8     asl   $b8
0946: 90 03     bcc   $094b
0948: 3f 51 09  call  $0951
094b: 3d        inc   x
094c: c8 10     cmp   x,#$10
094e: d0 f4     bne   $0944
0950: 6f        ret

0951: f5 d2 02  mov   a,$02d2+x
0954: f0 2e     beq   $0984
0956: f5 e2 02  mov   a,$02e2+x
0959: f0 29     beq   $0984
095b: 1c        asl   a
095c: b0 12     bcs   $0970
095e: 60        clrc
095f: 95 80 02  adc   a,$0280+x
0962: d5 80 02  mov   $0280+x,a
0965: 90 1d     bcc   $0984
0967: f5 70 02  mov   a,$0270+x
096a: bc        inc   a
096b: d5 70 02  mov   $0270+x,a
096e: 2f 14     bra   $0984
0970: c4 bf     mov   $bf,a
0972: f5 80 02  mov   a,$0280+x
0975: 80        setc
0976: a4 bf     sbc   a,$bf
0978: d5 80 02  mov   $0280+x,a
097b: b0 07     bcs   $0984
097d: f5 70 02  mov   a,$0270+x
0980: 9c        dec   a
0981: d5 70 02  mov   $0270+x,a
0984: 6f        ret

0985: e4 08     mov   a,$08
0987: f0 03     beq   $098c
0989: 5f 76 0e  jmp   $0e76

098c: e4 05     mov   a,$05
098e: d0 19     bne   $09a9
0990: 5f 75 0a  jmp   $0a75

0993: e5 14 03  mov   a,$0314
0996: f0 03     beq   $099b
0998: 5f 75 0a  jmp   $0a75

099b: e4 07     mov   a,$07
099d: f0 03     beq   $09a2
099f: 5f e0 0e  jmp   $0ee0

09a2: e4 06     mov   a,$06
09a4: d0 03     bne   $09a9
09a6: 5f 75 0a  jmp   $0a75

09a9: 8f 00 0b  mov   $0b,#$00
09ac: 8f 80 49  mov   $49,#$80
09af: f8 09     mov   x,$09
09b1: e4 49     mov   a,$49
09b3: 34 04     and   a,$04+x
09b5: d0 03     bne   $09ba
09b7: 5f 6c 0a  jmp   $0a6c

09ba: e4 0a     mov   a,$0a
09bc: 60        clrc
09bd: 84 0b     adc   a,$0b
09bf: 5d        mov   x,a
09c0: f4 5f     mov   a,$5f+x
09c2: f0 45     beq   $0a09             ; poll tick counter
09c4: 9b 5f     dec   $5f+x
09c6: f0 03     beq   $09cb
09c8: 5f 6c 0a  jmp   $0a6c

09cb: e4 49     mov   a,$49
09cd: eb 09     mov   y,$09
09cf: 36 4d 00  and   a,$004d+y
09d2: f0 13     beq   $09e7
;
09d4: 3f 5f 0e  call  $0e5f             ; read voice byte
09d7: 68 c8     cmp   a,#$c8
09d9: f0 68     beq   $0a43
09db: 28 7f     and   a,#$7f
09dd: d5 70 02  mov   $0270+x,a
09e0: e8 00     mov   a,#$00
09e2: d5 80 02  mov   $0280+x,a
09e5: 2f 5c     bra   $0a43
;
09e7: 3f 6e 0e  call  $0e6e             ; read voice byte (keep pointer)
09ea: 68 c8     cmp   a,#$c8
09ec: d0 12     bne   $0a00
; vcmd c8
09ee: f4 4f     mov   a,$4f+x
09f0: f0 09     beq   $09fb
09f2: d5 5f 00  mov   $005f+x,a
09f5: e8 00     mov   a,#$00
09f7: d4 4f     mov   $4f+x,a
09f9: 2f 71     bra   $0a6c
09fb: 3f 5f 0e  call  $0e5f             ; read voice byte
09fe: 2f 43     bra   $0a43
; when != 0xc8
0a00: 3f 3d 0c  call  $0c3d
0a03: f4 4f     mov   a,$4f+x
0a05: f0 0a     beq   $0a11
0a07: 2f 63     bra   $0a6c
; tick
0a09: f4 4f     mov   a,$4f+x
0a0b: f0 04     beq   $0a11
0a0d: 9b 4f     dec   $4f+x
0a0f: d0 5b     bne   $0a6c
0a11: 3f 5f 0e  call  $0e5f             ; read voice byte
0a14: f0 60     beq   $0a76
0a16: 68 e0     cmp   a,#$e0
0a18: 90 05     bcc   $0a1f
0a1a: 3f 87 0f  call  $0f87             ; dispatch vcmd
0a1d: 2f f2     bra   $0a11
; vcmd 80-c7, c9 - note
;   vcmd 00-7f; apparently not used? these values are used for note length parameter.
;   vcmd ca-df; out of range?
0a1f: 28 7f     and   a,#$7f
0a21: d5 70 02  mov   $0270+x,a         ; note number from lower 7-bit of voice byte
0a24: 68 49     cmp   a,#$49
0a26: d0 0b     bne   $0a33
; vcmd c9 (theoretically vcmd 49, too)
0a28: 3f 9e 0a  call  $0a9e             ; read note length if available
0a2b: f5 a0 02  mov   a,$02a0+x
0a2e: d4 4f     mov   $4f+x,a
0a30: 5f 6c 0a  jmp   $0a6c
; otherwise, a regular note
0a33: 3f 6a 0c  call  $0c6a
0a36: 3f 13 11  call  $1113
0a39: eb 09     mov   y,$09
0a3b: f6 43 00  mov   a,$0043+y
0a3e: 04 49     or    a,$49
0a40: d6 43 00  mov   $0043+y,a
;
0a43: 3f 9e 0a  call  $0a9e             ; read note length if available
0a46: f5 a0 02  mov   a,$02a0+x
0a49: fd        mov   y,a
0a4a: f5 b0 02  mov   a,$02b0+x
0a4d: 3f 29 1a  call  $1a29
0a50: d0 01     bne   $0a53
0a52: bc        inc   a
0a53: d5 90 02  mov   $0290+x,a
0a56: f5 a0 02  mov   a,$02a0+x
0a59: 80        setc
0a5a: b5 90 02  sbc   a,$0290+x
0a5d: d4 4f     mov   $4f+x,a
0a5f: f5 90 02  mov   a,$0290+x
0a62: d4 5f     mov   $5f+x,a
0a64: f5 d2 02  mov   a,$02d2+x
0a67: f0 03     beq   $0a6c
0a69: 3f ac 0a  call  $0aac
0a6c: ab 0b     inc   $0b
0a6e: 4b 49     lsr   $49
0a70: b0 03     bcs   $0a75
0a72: 5f af 09  jmp   $09af

0a75: 6f        ret

; vcmd 00
0a76: e4 09     mov   a,$09
0a78: d0 15     bne   $0a8f
0a7a: e4 49     mov   a,$49
0a7c: 48 ff     eor   a,#$ff
0a7e: 24 04     and   a,$04
0a80: c4 04     mov   $04,a
0a82: d0 02     bne   $0a86
0a84: c4 06     mov   $06,a
0a86: f5 dc 0b  mov   a,$0bdc+x
0a89: 24 23     and   a,$23
0a8b: c4 23     mov   $23,a
0a8d: 2f dd     bra   $0a6c
0a8f: e4 49     mov   a,$49
0a91: 48 ff     eor   a,#$ff
0a93: 24 05     and   a,$05
0a95: c4 05     mov   $05,a
0a97: 7d        mov   a,x
0a98: 80        setc
0a99: a8 08     sbc   a,#$08
0a9b: 5d        mov   x,a
0a9c: 2f e8     bra   $0a86
; take note length if the next voice byte is in (1..127)
0a9e: 3f 6e 0e  call  $0e6e             ; read voice byte (keep pointer)
0aa1: 30 08     bmi   $0aab
0aa3: f0 06     beq   $0aab
0aa5: 3f 5f 0e  call  $0e5f             ; read voice byte
0aa8: d5 a0 02  mov   $02a0+x,a
0aab: 6f        ret

0aac: 3f 6e 0e  call  $0e6e             ; read voice byte (keep pointer)
0aaf: f0 56     beq   $0b07
0ab1: 10 54     bpl   $0b07
0ab3: 68 e0     cmp   a,#$e0
0ab5: b0 50     bcs   $0b07
0ab7: 68 c9     cmp   a,#$c9
0ab9: f0 4c     beq   $0b07
0abb: 68 c8     cmp   a,#$c8
0abd: d0 04     bne   $0ac3
0abf: e8 00     mov   a,#$00
0ac1: 2f 2f     bra   $0af2
0ac3: 28 7f     and   a,#$7f
0ac5: 8f 00 bf  mov   $bf,#$00
0ac8: 80        setc
0ac9: b5 70 02  sbc   a,$0270+x
0acc: 10 05     bpl   $0ad3
0ace: ab bf     inc   $bf
0ad0: 48 ff     eor   a,#$ff
0ad2: bc        inc   a
0ad3: 1c        asl   a
0ad4: fd        mov   y,a
0ad5: f5 d2 02  mov   a,$02d2+x
0ad8: 9c        dec   a
0ad9: f0 17     beq   $0af2
0adb: cf        mul   ya
0adc: 4d        push  x
0add: c4 c0     mov   $c0,a
0adf: f5 a0 02  mov   a,$02a0+x
0ae2: 5d        mov   x,a
0ae3: e4 c0     mov   a,$c0
0ae5: 9e        div   ya,x
0ae6: 50 02     bvc   $0aea
0ae8: e8 ff     mov   a,#$ff
0aea: ce        pop   x
0aeb: 5c        lsr   a
0aec: 8b bf     dec   $bf
0aee: d0 02     bne   $0af2
0af0: 08 80     or    a,#$80
0af2: d5 e2 02  mov   $02e2+x,a
0af5: f5 a0 02  mov   a,$02a0+x
0af8: d4 5f     mov   $5f+x,a
0afa: e8 00     mov   a,#$00
0afc: d4 4f     mov   $4f+x,a
0afe: e4 49     mov   a,$49
0b00: eb 09     mov   y,$09
0b02: 16 4d 00  or    a,$004d+y
0b05: 2f 0e     bra   $0b15
0b07: e8 00     mov   a,#$00
0b09: d5 e2 02  mov   $02e2+x,a
0b0c: e4 49     mov   a,$49
0b0e: 48 ff     eor   a,#$ff
0b10: eb 09     mov   y,$09
0b12: 36 4d 00  and   a,$004d+y
0b15: d6 4d 00  mov   $004d+y,a
0b18: 6f        ret

0b19: e5 14 03  mov   a,$0314
0b1c: d0 08     bne   $0b26
0b1e: e5 d1 02  mov   a,$02d1
0b21: f0 03     beq   $0b26
0b23: 3f bd 0b  call  $0bbd
0b26: e4 06     mov   a,$06
0b28: d0 04     bne   $0b2e
0b2a: cd 08     mov   x,#$08
0b2c: 2f 0a     bra   $0b38
0b2e: cd 00     mov   x,#$00
0b30: 3f 18 0d  call  $0d18
0b33: 3d        inc   x
0b34: c8 08     cmp   x,#$08
0b36: d0 f8     bne   $0b30
0b38: e4 05     mov   a,$05
0b3a: f0 0e     beq   $0b4a
0b3c: c4 b8     mov   $b8,a
0b3e: 0b b8     asl   $b8
0b40: 90 03     bcc   $0b45
0b42: 3f 18 0d  call  $0d18
0b45: 3d        inc   x
0b46: c8 10     cmp   x,#$10
0b48: d0 f4     bne   $0b3e
0b4a: e5 48 03  mov   a,$0348
0b4d: 8d 0c     mov   y,#$0c
0b4f: 3f e5 0d  call  $0de5             ; set MVOL(L)
0b52: 8d 1c     mov   y,#$1c
0b54: 3f e5 0d  call  $0de5             ; set MVOL(R)
0b57: 69 22 25  cmp   ($25),($22)
0b5a: f0 04     beq   $0b60
0b5c: ab 25     inc   $25
0b5e: 2f 1f     bra   $0b7f
0b60: e5 49 03  mov   a,$0349
0b63: 8d 2c     mov   y,#$2c
0b65: 3f e5 0d  call  $0de5             ; set EVOL(L)
0b68: e5 4a 03  mov   a,$034a
0b6b: 8d 3c     mov   y,#$3c
0b6d: 3f e5 0d  call  $0de5             ; set EVOL(R)
0b70: e5 4b 03  mov   a,$034b
0b73: 8d 0d     mov   y,#$0d
0b75: 3f e5 0d  call  $0de5             ; set EFB
0b78: e4 24     mov   a,$24
0b7a: 8d 4d     mov   y,#$4d
0b7c: 3f e5 0d  call  $0de5             ; set EON
0b7f: e4 21     mov   a,$21
0b81: 8d 6c     mov   y,#$6c
0b83: 3f e5 0d  call  $0de5             ; set FLG
0b86: ba 43     movw  ya,$43
0b88: da c5     movw  $c5,ya
0b8a: 3f e4 0b  call  $0be4
0b8d: 04 46     or    a,$46
0b8f: 8d 4c     mov   y,#$4c
0b91: 3f e5 0d  call  $0de5             ; set KON
0b94: 00        nop
0b95: 00        nop
0b96: e8 00     mov   a,#$00
0b98: 8d 5c     mov   y,#$5c
0b9a: 3f e5 0d  call  $0de5             ; set KOF
0b9d: e5 4c 03  mov   a,$034c
0ba0: 8d 3d     mov   y,#$3d
0ba2: 3f e5 0d  call  $0de5             ; set NON
0ba5: e5 4d 03  mov   a,$034d
0ba8: 8d 2d     mov   y,#$2d
0baa: 3f e5 0d  call  $0de5             ; set PMON
0bad: e4 45     mov   a,$45
0baf: 8d 5c     mov   y,#$5c
0bb1: 3f e5 0d  call  $0de5             ; set KOF
0bb4: cd 43     mov   x,#$43
0bb6: e8 00     mov   a,#$00
0bb8: af        mov   (x)+,a
0bb9: af        mov   (x)+,a
0bba: af        mov   (x)+,a
0bbb: af        mov   (x)+,a
0bbc: 6f        ret

0bbd: 8b bd     dec   $bd
0bbf: 30 0f     bmi   $0bd0
0bc1: d0 10     bne   $0bd3
0bc3: 9c        dec   a
0bc4: c5 d1 02  mov   $02d1,a
0bc7: f0 07     beq   $0bd0
0bc9: e5 d0 02  mov   a,$02d0
0bcc: c4 bd     mov   $bd,a
0bce: 2f 03     bra   $0bd3
0bd0: 3f 94 12  call  $1294
0bd3: 6f        ret

0bd4: db $80,$40,$20,$10,$08,$04,$02,$01
0bdc: db $01,$02,$04,$08,$10,$20,$40,$80

0be4: 8f 00 c0  mov   $c0,#$00
0be7: cd 07     mov   x,#$07
0be9: 8f 01 c1  mov   $c1,#$01
0bec: f4 26     mov   a,$26+x
0bee: 30 1a     bmi   $0c0a
0bf0: fa c5 bf  mov   ($bf),($c5)
0bf3: 68 08     cmp   a,#$08
0bf5: 90 06     bcc   $0bfd
0bf7: fa c6 bf  mov   ($bf),($c6)
0bfa: 80        setc
0bfb: a8 08     sbc   a,#$08
0bfd: fd        mov   y,a
0bfe: f6 d4 0b  mov   a,$0bd4+y
0c01: 24 bf     and   a,$bf
0c03: f0 05     beq   $0c0a
0c05: e4 c1     mov   a,$c1
0c07: 0e c0 00  tset1 $00c0
0c0a: f5 c0 02  mov   a,$02c0+x
0c0d: f0 0f     beq   $0c1e
0c0f: e8 00     mov   a,#$00
0c11: d5 c0 02  mov   $02c0+x,a
0c14: f4 26     mov   a,$26+x
0c16: 10 06     bpl   $0c1e
0c18: e4 c1     mov   a,$c1
0c1a: 04 45     or    a,$45
0c1c: c4 45     mov   $45,a
0c1e: f5 c8 02  mov   a,$02c8+x
0c21: f0 12     beq   $0c35
0c23: 9c        dec   a
0c24: d5 c8 02  mov   $02c8+x,a
0c27: d0 0c     bne   $0c35
0c29: f4 26     mov   a,$26+x
0c2b: 10 08     bpl   $0c35
0c2d: e4 c1     mov   a,$c1
0c2f: 48 ff     eor   a,#$ff
0c31: 24 24     and   a,$24
0c33: c4 24     mov   $24,a
0c35: 0b c1     asl   $c1
0c37: 1d        dec   x
0c38: 10 b2     bpl   $0bec
0c3a: e4 c0     mov   a,$c0
0c3c: 6f        ret

0c3d: 4d        push  x
0c3e: e8 00     mov   a,#$00
0c40: d5 ad 1b  mov   $1bad+x,a
0c43: d5 bd 1b  mov   $1bbd+x,a
0c46: d5 ed 1b  mov   $1bed+x,a
0c49: d5 fd 1b  mov   $1bfd+x,a
0c4c: d5 2d 1c  mov   $1c2d+x,a
0c4f: d5 3d 1c  mov   $1c3d+x,a
0c52: f4 2e     mov   a,$2e+x
0c54: 8d ff     mov   y,#$ff
0c56: db 2e     mov   $2e+x,y
0c58: 5d        mov   x,a
0c59: e8 01     mov   a,#$01
0c5b: d5 c0 02  mov   $02c0+x,a
0c5e: e4 22     mov   a,$22
0c60: 1c        asl   a
0c61: d5 c8 02  mov   $02c8+x,a
0c64: e8 ff     mov   a,#$ff
0c66: d4 26     mov   $26+x,a
0c68: ce        pop   x
0c69: 6f        ret

0c6a: 4d        push  x
0c6b: 8d ff     mov   y,#$ff
0c6d: cb c3     mov   $c3,y
0c6f: d8 c4     mov   $c4,x
0c71: cd 07     mov   x,#$07
0c73: f4 26     mov   a,$26+x
0c75: 64 c4     cmp   a,$c4
0c77: d0 02     bne   $0c7b
0c79: d8 c3     mov   $c3,x
0c7b: 68 ff     cmp   a,#$ff
0c7d: f0 0e     beq   $0c8d
0c7f: 1d        dec   x
0c80: 10 f1     bpl   $0c73
0c82: dd        mov   a,y
0c83: 30 05     bmi   $0c8a
0c85: 3f db 0c  call  $0cdb
0c88: 10 03     bpl   $0c8d
0c8a: 3f f5 0c  call  $0cf5
0c8d: f5 d4 0b  mov   a,$0bd4+x
0c90: 48 ff     eor   a,#$ff
0c92: 24 24     and   a,$24
0c94: c4 24     mov   $24,a
0c96: fb 26     mov   y,$26+x
0c98: 30 05     bmi   $0c9f
0c9a: e8 ff     mov   a,#$ff
0c9c: d6 2e 00  mov   $002e+y,a
0c9f: e8 00     mov   a,#$00
0ca1: d5 c0 02  mov   $02c0+x,a
0ca4: e4 c4     mov   a,$c4
0ca6: d4 26     mov   $26+x,a
0ca8: fd        mov   y,a
0ca9: 7d        mov   a,x
0caa: d6 2e 00  mov   $002e+y,a
0cad: ad 08     cmp   y,#$08
0caf: b0 0e     bcs   $0cbf
0cb1: f6 dc 0b  mov   a,$0bdc+y
0cb4: 24 23     and   a,$23
0cb6: f0 07     beq   $0cbf
0cb8: e4 24     mov   a,$24
0cba: 15 d4 0b  or    a,$0bd4+x
0cbd: c4 24     mov   $24,a
0cbf: eb c3     mov   y,$c3
0cc1: 30 16     bmi   $0cd9
0cc3: 4d        push  x
0cc4: f9 26     mov   x,$26+y
0cc6: e8 ff     mov   a,#$ff
0cc8: d6 26 00  mov   $0026+y,a
0ccb: c8 ff     cmp   x,#$ff
0ccd: f0 02     beq   $0cd1
0ccf: d4 2e     mov   $2e+x,a
0cd1: ce        pop   x
0cd2: e4 45     mov   a,$45
0cd4: 16 dc 0b  or    a,$0bdc+y
0cd7: c4 45     mov   $45,a
0cd9: ce        pop   x
0cda: 6f        ret

0cdb: e8 ff     mov   a,#$ff
0cdd: c4 c0     mov   $c0,a
0cdf: c4 c1     mov   $c1,a
0ce1: cd 07     mov   x,#$07
0ce3: f5 c0 02  mov   a,$02c0+x
0ce6: 9c        dec   a
0ce7: 64 c0     cmp   a,$c0
0ce9: b0 04     bcs   $0cef
0ceb: d8 c1     mov   $c1,x
0ced: c4 c0     mov   $c0,a
0cef: 1d        dec   x
0cf0: 10 f1     bpl   $0ce3
0cf2: f8 c1     mov   x,$c1
0cf4: 6f        ret

0cf5: 8f ff c0  mov   $c0,#$ff
0cf8: cd 07     mov   x,#$07
0cfa: f4 26     mov   a,$26+x
0cfc: 68 08     cmp   a,#$08
0cfe: b0 12     bcs   $0d12
0d00: 7d        mov   a,x
0d01: 9f        xcn   a
0d02: 08 08     or    a,#$08
0d04: c5 f2 00  mov   $00f2,a
0d07: e5 f3 00  mov   a,$00f3           ; read ENVX
0d0a: 64 c0     cmp   a,$c0
0d0c: b0 04     bcs   $0d12
0d0e: d8 c1     mov   $c1,x
0d10: c4 c0     mov   $c0,a
0d12: 1d        dec   x
0d13: 10 e5     bpl   $0cfa
0d15: f8 c1     mov   x,$c1
0d17: 6f        ret

0d18: f4 5f     mov   a,$5f+x
0d1a: d0 01     bne   $0d1d
0d1c: 6f        ret

0d1d: f5 70 02  mov   a,$0270+x
0d20: d0 01     bne   $0d23
0d22: 6f        ret

0d23: 60        clrc
0d24: 84 4a     adc   a,$4a
0d26: 60        clrc
0d27: 95 20 02  adc   a,$0220+x
0d2a: c4 4b     mov   $4b,a
0d2c: c4 c6     mov   $c6,a
0d2e: f5 30 02  mov   a,$0230+x
0d31: 60        clrc
0d32: 95 80 02  adc   a,$0280+x
0d35: c4 4c     mov   $4c,a
0d37: c4 c5     mov   $c5,a
0d39: 3f 8a 11  call  $118a
0d3c: ba c5     movw  ya,$c5
0d3e: cb 4b     mov   $4b,y
0d40: c4 4c     mov   $4c,a
0d42: 3f ec 0d  call  $0dec
0d45: f5 00 02  mov   a,$0200+x
0d48: c4 bf     mov   $bf,a
0d4a: f5 10 02  mov   a,$0210+x
0d4d: c4 c0     mov   $c0,a
0d4f: 3f 2f 0e  call  $0e2f
0d52: e4 c4     mov   a,$c4
0d54: 8d 02     mov   y,#$02
0d56: 3f cd 0d  call  $0dcd             ; set P(L)
0d59: 8d 03     mov   y,#$03
0d5b: e4 c5     mov   a,$c5
0d5d: 3f cd 0d  call  $0dcd             ; set P(H)
0d60: f5 50 02  mov   a,$0250+x
0d63: f0 59     beq   $0dbe
0d65: c4 c5     mov   $c5,a
0d67: f5 34 03  mov   a,$0334+x
0d6a: f0 02     beq   $0d6e
0d6c: c4 c5     mov   $c5,a
0d6e: c8 08     cmp   x,#$08
0d70: b0 19     bcs   $0d8b
0d72: ec d1 02  mov   y,$02d1
0d75: f0 05     beq   $0d7c
0d77: e4 c5     mov   a,$c5
0d79: cf        mul   ya
0d7a: cb c5     mov   $c5,y
0d7c: e5 15 03  mov   a,$0315
0d7f: f0 05     beq   $0d86
0d81: eb c5     mov   y,$c5
0d83: cf        mul   ya
0d84: cb c5     mov   $c5,y
0d86: e5 14 03  mov   a,$0314
0d89: d0 34     bne   $0dbf
0d8b: 3f e8 11  call  $11e8
0d8e: f5 40 02  mov   a,$0240+x
0d91: c4 c6     mov   $c6,a
0d93: 3f 27 12  call  $1227
0d96: f5 24 03  mov   a,$0324+x
0d99: f0 03     beq   $0d9e
0d9b: 9c        dec   a
0d9c: c4 c6     mov   $c6,a
0d9e: eb c6     mov   y,$c6
0da0: f6 be 1a  mov   a,$1abe+y
0da3: eb c5     mov   y,$c5
0da5: cf        mul   ya
0da6: dd        mov   a,y
0da7: 8d 01     mov   y,#$01
0da9: 3f cd 0d  call  $0dcd             ; set VOL(R)
0dac: e8 14     mov   a,#$14
0dae: 80        setc
0daf: a4 c6     sbc   a,$c6
0db1: fd        mov   y,a
0db2: f6 be 1a  mov   a,$1abe+y
0db5: eb c5     mov   y,$c5
0db7: cf        mul   ya
0db8: dd        mov   a,y
0db9: 8d 00     mov   y,#$00
0dbb: 3f cd 0d  call  $0dcd             ; set VOL(L)
0dbe: 6f        ret

0dbf: e8 00     mov   a,#$00
0dc1: fd        mov   y,a
0dc2: 3f cd 0d  call  $0dcd             ; set VOL(L)
0dc5: e8 00     mov   a,#$00
0dc7: 8d 01     mov   y,#$01
0dc9: 3f cd 0d  call  $0dcd             ; set VOL(R)
0dcc: 6f        ret

0dcd: 2d        push  a
0dce: f4 2e     mov   a,$2e+x
0dd0: 10 02     bpl   $0dd4
0dd2: ae        pop   a
0dd3: 6f        ret

; write A to dsp register Y of track X
0dd4: 4d        push  x
0dd5: 5d        mov   x,a
0dd6: e8 07     mov   a,#$07
0dd8: d8 bf     mov   $bf,x
0dda: 80        setc
0ddb: a4 bf     sbc   a,$bf
0ddd: 9f        xcn   a
0dde: cb bf     mov   $bf,y
0de0: 04 bf     or    a,$bf
0de2: fd        mov   y,a
0de3: ce        pop   x
0de4: ae        pop   a
; write A to dsp register Y
0de5: cc f2 00  mov   $00f2,y
0de8: c5 f3 00  mov   $00f3,a
0deb: 6f        ret

0dec: 4d        push  x
0ded: e4 4c     mov   a,$4c
0def: c4 bf     mov   $bf,a
0df1: e4 4b     mov   a,$4b
0df3: c4 c0     mov   $c0,a
0df5: 8d 00     mov   y,#$00
0df7: e4 c0     mov   a,$c0
0df9: 80        setc
0dfa: a8 34     sbc   a,#$34
0dfc: b0 09     bcs   $0e07
0dfe: e4 c0     mov   a,$c0
0e00: 80        setc
0e01: a8 13     sbc   a,#$13
0e03: b0 06     bcs   $0e0b
0e05: dc        dec   y
0e06: 1c        asl   a
0e07: 7a bf     addw  ya,$bf
0e09: da bf     movw  $bf,ya
0e0b: e4 c0     mov   a,$c0
0e0d: 1c        asl   a
0e0e: fd        mov   y,a
0e0f: f6 d3 1a  mov   a,$1ad3+y
0e12: c4 c1     mov   $c1,a
0e14: f6 d4 1a  mov   a,$1ad4+y
0e17: c4 c2     mov   $c2,a
0e19: f6 d6 1a  mov   a,$1ad6+y
0e1c: 2d        push  a
0e1d: f6 d5 1a  mov   a,$1ad5+y
0e20: ee        pop   y
0e21: 9a c1     subw  ya,$c1
0e23: eb bf     mov   y,$bf
0e25: cf        mul   ya
0e26: dd        mov   a,y
0e27: 8d 00     mov   y,#$00
0e29: 7a c1     addw  ya,$c1
0e2b: da c1     movw  $c1,ya
0e2d: ce        pop   x
0e2e: 6f        ret

0e2f: e8 00     mov   a,#$00
0e31: fd        mov   y,a
0e32: da c5     movw  $c5,ya
0e34: e4 bf     mov   a,$bf
0e36: eb c1     mov   y,$c1
0e38: cf        mul   ya
0e39: da c3     movw  $c3,ya
0e3b: e4 bf     mov   a,$bf
0e3d: eb c2     mov   y,$c2
0e3f: cf        mul   ya
0e40: 7a c4     addw  ya,$c4
0e42: da c4     movw  $c4,ya
0e44: 90 02     bcc   $0e48
0e46: ab c6     inc   $c6
0e48: e4 c0     mov   a,$c0
0e4a: eb c1     mov   y,$c1
0e4c: cf        mul   ya
0e4d: 7a c4     addw  ya,$c4
0e4f: da c4     movw  $c4,ya
0e51: 90 02     bcc   $0e55
0e53: ab c6     inc   $c6
0e55: e4 c0     mov   a,$c0
0e57: eb c2     mov   y,$c2
0e59: cf        mul   ya
0e5a: 7a c5     addw  ya,$c5
0e5c: da c5     movw  $c5,ya
0e5e: 6f        ret

; read a byte from voice pointer [x], then increment the pointer
0e5f: 4d        push  x
0e60: 7d        mov   a,x
0e61: 1c        asl   a
0e62: 5d        mov   x,a
0e63: e7 75     mov   a,($75+x)
0e65: bb 75     inc   $75+x
0e67: d0 02     bne   $0e6b
0e69: bb 76     inc   $76+x
0e6b: 5d        mov   x,a
0e6c: ce        pop   x
0e6d: 6f        ret

; read a byte from voice pointer [x], w/o incrementing the pointer
0e6e: 4d        push  x
0e6f: 7d        mov   a,x
0e70: 1c        asl   a
0e71: 5d        mov   x,a
0e72: e7 75     mov   a,($75+x)
0e74: ce        pop   x
0e75: 6f        ret

0e76: 8f 80 bf  mov   $bf,#$80
0e79: 8f 08 c0  mov   $c0,#$08
0e7c: 8f 00 c1  mov   $c1,#$00
0e7f: e4 05     mov   a,$05
0e81: 24 bf     and   a,$bf
0e83: f0 08     beq   $0e8d
0e85: 4b bf     lsr   $bf
0e87: b0 4c     bcs   $0ed5
0e89: ab c0     inc   $c0
0e8b: 2f f2     bra   $0e7f
0e8d: eb c1     mov   y,$c1
0e8f: ad 10     cmp   y,#$10
0e91: f0 42     beq   $0ed5
0e93: f7 71     mov   a,($71)+y
0e95: 5d        mov   x,a
0e96: fc        inc   y
0e97: 17 71     or    a,($71)+y
0e99: d0 05     bne   $0ea0
0e9b: fc        inc   y
0e9c: cb c1     mov   $c1,y
0e9e: 2f ed     bra   $0e8d
0ea0: f7 71     mov   a,($71)+y
0ea2: fc        inc   y
0ea3: cb c1     mov   $c1,y
0ea5: fd        mov   y,a
0ea6: 7d        mov   a,x
0ea7: 7a 71     addw  ya,$71
0ea9: da c3     movw  $c3,ya
0eab: f8 c0     mov   x,$c0
0ead: 3f 3d 0f  call  $0f3d
0eb0: e5 22 03  mov   a,$0322
0eb3: d5 24 03  mov   $0324+x,a
0eb6: e5 23 03  mov   a,$0323
0eb9: d5 34 03  mov   $0334+x,a
0ebc: 7d        mov   a,x
0ebd: 1c        asl   a
0ebe: 5d        mov   x,a
0ebf: ba c3     movw  ya,$c3
0ec1: d4 75     mov   $75+x,a
0ec3: db 76     mov   $76+x,y
0ec5: e4 05     mov   a,$05
0ec7: 04 bf     or    a,$bf
0ec9: c4 05     mov   $05,a
0ecb: e4 bf     mov   a,$bf
0ecd: 48 ff     eor   a,#$ff
0ecf: 24 4e     and   a,$4e
0ed1: c4 4e     mov   $4e,a
0ed3: 2f b0     bra   $0e85
0ed5: e8 00     mov   a,#$00
0ed7: c4 08     mov   $08,a
0ed9: c5 22 03  mov   $0322,a
0edc: c5 23 03  mov   $0323,a
0edf: 6f        ret

0ee0: e4 06     mov   a,$06
0ee2: f0 03     beq   $0ee7
0ee4: 5f 94 12  jmp   $1294

0ee7: e8 ff     mov   a,#$ff
0ee9: c4 45     mov   $45,a
0eeb: cd 07     mov   x,#$07
0eed: 3f 3d 0f  call  $0f3d
0ef0: 1d        dec   x
0ef1: 10 fa     bpl   $0eed
0ef3: e8 00     mov   a,#$00
0ef5: c4 c4     mov   $c4,a
0ef7: 8f 10 c3  mov   $c3,#$10
0efa: fa 6f c7  mov   ($c7),($6f)
0efd: fa 70 c8  mov   ($c8),($70)
0f00: 8f 75 c9  mov   $c9,#$75
0f03: c4 ca     mov   $ca,a
0f05: 3f 37 1a  call  $1a37
0f08: cd 0e     mov   x,#$0e
0f0a: 8f 01 bf  mov   $bf,#$01
0f0d: 8f 00 04  mov   $04,#$00
0f10: f4 75     mov   a,$75+x
0f12: d0 04     bne   $0f18
0f14: fb 76     mov   y,$76+x
0f16: f0 0c     beq   $0f24
0f18: fb 76     mov   y,$76+x
0f1a: 7a 6f     addw  ya,$6f
0f1c: 2d        push  a
0f1d: e4 bf     mov   a,$bf
0f1f: 04 04     or    a,$04
0f21: c4 04     mov   $04,a
0f23: ae        pop   a
0f24: d4 75     mov   $75+x,a
0f26: db 76     mov   $76+x,y
0f28: 0b bf     asl   $bf
0f2a: 1d        dec   x
0f2b: 1d        dec   x
0f2c: 10 e2     bpl   $0f10
0f2e: e8 00     mov   a,#$00
0f30: c4 07     mov   $07,a
0f32: c5 12 03  mov   $0312,a
0f35: c4 46     mov   $46,a
0f37: c4 4d     mov   $4d,a
0f39: bc        inc   a
0f3a: c4 06     mov   $06,a
0f3c: 6f        ret

0f3d: e8 00     mov   a,#$00
0f3f: d5 60 02  mov   $0260+x,a
0f42: d5 30 02  mov   $0230+x,a
0f45: d5 80 02  mov   $0280+x,a
0f48: d5 20 02  mov   $0220+x,a
0f4b: d5 50 02  mov   $0250+x,a
0f4e: d4 4f     mov   $4f+x,a
0f50: d4 5f     mov   $5f+x,a
0f52: d5 90 02  mov   $0290+x,a
0f55: d5 a0 02  mov   $02a0+x,a
0f58: d5 d2 02  mov   $02d2+x,a
0f5b: d5 8d 1b  mov   $1b8d+x,a
0f5e: d5 9d 1b  mov   $1b9d+x,a
0f61: d5 cd 1b  mov   $1bcd+x,a
0f64: d5 dd 1b  mov   $1bdd+x,a
0f67: d5 0d 1c  mov   $1c0d+x,a
0f6a: d5 1d 1c  mov   $1c1d+x,a
0f6d: e8 5f     mov   a,#$5f
0f6f: d5 b0 02  mov   $02b0+x,a
0f72: e8 0a     mov   a,#$0a
0f74: d5 40 02  mov   $0240+x,a
0f77: 7d        mov   a,x
0f78: 1c        asl   a
0f79: fd        mov   y,a
0f7a: f6 f2 02  mov   a,$02f2+y
0f7d: d6 95 00  mov   $0095+y,a
0f80: f6 f3 02  mov   a,$02f3+y
0f83: d6 96 00  mov   $0096+y,a
0f86: 6f        ret

; dispatch vcmd
0f87: 4d        push  x
0f88: 80        setc
0f89: a8 e0     sbc   a,#$e0
0f8b: fd        mov   y,a
0f8c: 5d        mov   x,a
0f8d: f5 61 13  mov   a,$1361+x         ; read vcmd length
0f90: f0 10     beq   $0fa2
0f92: c4 bf     mov   $bf,a
0f94: ce        pop   x
0f95: 4d        push  x                 ; push track #
0f96: 3f 5f 0e  call  $0e5f             ; read arg1 if available
0f99: 2d        push  a                 ; push it
0f9a: 8b bf     dec   $bf
0f9c: f0 04     beq   $0fa2
0f9e: 3f 5f 0e  call  $0e5f             ; read arg2 if available
0fa1: 2d        push  a                 ; push it
0fa2: dd        mov   a,y
0fa3: 1c        asl   a
0fa4: 5d        mov   x,a
0fa5: 1f 35 13  jmp   ($1335+x)

; vcmd e0
0fa8: e4 09     mov   a,$09
0faa: 1c        asl   a
0fab: 5d        mov   x,a
0fac: ee        pop   y                 ; arg1
0fad: e8 00     mov   a,#$00
0faf: d4 3f     mov   $3f+x,a
0fb1: db 40     mov   $40+x,y
0fb3: ce        pop   x
0fb4: 6f        ret

; vcmd e1
0fb5: f8 09     mov   x,$09
0fb7: f4 47     mov   a,$47+x
0fb9: 04 49     or    a,$49
0fbb: d4 47     mov   $47+x,a
0fbd: ae        pop   a                 ; arg1
0fbe: ce        pop   x                 ; track #
0fbf: d5 60 02  mov   $0260+x,a
0fc2: 6f        ret

; vcmd e2
0fc3: ae        pop   a                 ; arg1
0fc4: 5c        lsr   a
0fc5: c5 48 03  mov   $0348,a
0fc8: ce        pop   x
0fc9: 6f        ret

; vcmd e3
0fca: ae        pop   a                 ; arg1
0fcb: 5c        lsr   a
0fcc: ce        pop   x
0fcd: d5 50 02  mov   $0250+x,a
0fd0: 6f        ret

; vcmd e4
0fd1: 3f fe 0f  call  $0ffe
0fd4: ce        pop   x
0fd5: d5 cd 1b  mov   $1bcd+x,a
0fd8: dd        mov   a,y
0fd9: d5 dd 1b  mov   $1bdd+x,a
0fdc: 3f 78 11  call  $1178
0fdf: 6f        ret

; vcmd e5
0fe0: 3f fe 0f  call  $0ffe
0fe3: ce        pop   x
0fe4: d5 8d 1b  mov   $1b8d+x,a
0fe7: dd        mov   a,y
0fe8: d5 9d 1b  mov   $1b9d+x,a
0feb: 3f 6f 11  call  $116f
0fee: 6f        ret

; vcmd e6
0fef: 3f fe 0f  call  $0ffe
0ff2: ce        pop   x
0ff3: d5 0d 1c  mov   $1c0d+x,a
0ff6: dd        mov   a,y
0ff7: d5 1d 1c  mov   $1c1d+x,a
0ffa: 3f 81 11  call  $1181
0ffd: 6f        ret

0ffe: ae        pop   a
0fff: ee        pop   y
1000: da c1     movw  $c1,ya
1002: ee        pop   y
1003: ae        pop   a
1004: da bf     movw  $bf,ya
1006: ae        pop   a
1007: 2d        push  a
1008: 1c        asl   a
1009: 5d        mov   x,a
100a: ba c1     movw  ya,$c1
100c: 6d        push  y
100d: 2d        push  a
100e: ba bf     movw  ya,$bf
1010: f0 06     beq   $1018
1012: f4 75     mov   a,$75+x
1014: fb 76     mov   y,$76+x
1016: 7a bf     addw  ya,$bf
1018: 6f        ret

; vcmd e7
1019: ae        pop   a                 ; arg1
101a: ce        pop   x
101b: d5 40 02  mov   $0240+x,a
101e: 6f        ret

; vcmd e8 - note duration
101f: ae        pop   a                 ; arg1: quantize % (0..100)
1020: ce        pop   x
1021: d5 b0 02  mov   $02b0+x,a
1024: 6f        ret

; vcmd e9
1025: ae        pop   a                 ; arg1
1026: ce        pop   x
1027: d5 30 02  mov   $0230+x,a
102a: 6f        ret

; vcmd ea
102b: ae        pop   a                 ; arg1
102c: bc        inc   a
102d: f0 06     beq   $1035
102f: 8d 80     mov   y,#$80
1031: cf        mul   ya
1032: cd 64     mov   x,#$64
1034: 9e        div   ya,x
1035: ce        pop   x
1036: d5 d2 02  mov   $02d2+x,a
1039: 8d 00     mov   y,#$00
103b: c8 08     cmp   x,#$08
103d: 90 01     bcc   $1040
103f: fc        inc   y
1040: e8 00     mov   a,#$00
1042: d6 4d 00  mov   $004d+y,a
1045: 6f        ret

; vcmd eb
1046: ae        pop   a                 ; arg1
1047: ce        pop   x
1048: d5 20 02  mov   $0220+x,a
104b: 6f        ret

; vcmd ec
104c: ae        pop   a                 ; arg1
104d: ce        pop   x
104e: c4 4a     mov   $4a,a
1050: 6f        ret

; vcmd ed
1051: ae        pop   a                 ; arg2
1052: 5c        lsr   a
1053: c5 49 03  mov   $0349,a
1056: ae        pop   a                 ; arg1
1057: c4 23     mov   $23,a
1059: ce        pop   x
105a: 3f 5f 0e  call  $0e5f             ; arg3
105d: 5c        lsr   a
105e: c5 4a 03  mov   $034a,a
1061: b2 21     clr5  $21
1063: 6f        ret

; vcmd ee - echo param
1064: ae        pop   a                 ; arg2: echo feedback (EFB)
1065: c5 4b 03  mov   $034b,a
1068: ae        pop   a                 ; arg1: echo delay (EDL)
1069: 68 00     cmp   a,#$00
106b: d0 07     bne   $1074
; disable echo write
106d: a2 21     set5  $21
106f: ce        pop   x
1070: 3f 5f 0e  call  $0e5f             ; arg3 is taken but not used
1073: 6f        ret
; enable echo write
1074: 3f c9 08  call  $08c9
1077: ce        pop   x
1078: 3f 5f 0e  call  $0e5f             ; arg3: FIR filter index
107b: 4d        push  x
107c: 8d 08     mov   y,#$08
107e: cf        mul   ya
107f: 5d        mov   x,a
1080: 8d 0f     mov   y,#$0f
1082: f5 65 1b  mov   a,$1b65+x
1085: 3d        inc   x
1086: 3f e5 0d  call  $0de5             ; set FIR F0-F7
1089: dd        mov   a,y
108a: 60        clrc
108b: 88 10     adc   a,#$10
108d: fd        mov   y,a
108e: 10 f2     bpl   $1082
1090: ce        pop   x
1091: 6f        ret

; vcmd ef
1092: ae        pop   a
1093: f8 09     mov   x,$09
1095: d0 03     bne   $109a
1097: c5 12 03  mov   $0312,a
109a: ce        pop   x
109b: 6f        ret

; vcmd f0
109c: ae        pop   a
109d: f8 09     mov   x,$09
109f: d0 0a     bne   $10ab
10a1: c5 d0 02  mov   $02d0,a
10a4: c4 bd     mov   $bd,a
10a6: e8 ff     mov   a,#$ff
10a8: c5 d1 02  mov   $02d1,a
10ab: ce        pop   x
10ac: 6f        ret

; vcmd f1
10ad: ee        pop   y
10ae: ae        pop   a
10af: da bf     movw  $bf,ya
10b1: ae        pop   a
10b2: 2d        push  a
10b3: 1c        asl   a
10b4: 5d        mov   x,a
10b5: e5 8c 1b  mov   a,$1b8c
10b8: 0d        push  psw
10b9: f4 75     mov   a,$75+x
10bb: fb 76     mov   y,$76+x
10bd: 8e        pop   psw
10be: f0 03     beq   $10c3
10c0: 3f ac 1a  call  $1aac
10c3: 7a bf     addw  ya,$bf
10c5: d4 75     mov   $75+x,a
10c7: db 76     mov   $76+x,y
10c9: e8 00     mov   a,#$00
10cb: c5 8c 1b  mov   $1b8c,a
10ce: ce        pop   x
10cf: 6f        ret

; vcmd f2
10d0: ac 8c 1b  inc   $1b8c
10d3: 2f d8     bra   $10ad
; vcmd f3
10d5: ae        pop   a
10d6: 2d        push  a
10d7: 1c        asl   a
10d8: 5d        mov   x,a
10d9: 3f b6 1a  call  $1ab6
10dc: d4 75     mov   $75+x,a
10de: db 76     mov   $76+x,y
10e0: ce        pop   x
10e1: 6f        ret

; vcmd f4
10e2: ae        pop   a
10e3: fd        mov   y,a
10e4: ae        pop   a
10e5: 2d        push  a
10e6: 1c        asl   a
10e7: 5d        mov   x,a
10e8: dd        mov   a,y
10e9: 3f 96 1a  call  $1a96
10ec: f4 75     mov   a,$75+x
10ee: fb 76     mov   y,$76+x
10f0: 3f ac 1a  call  $1aac
10f3: ce        pop   x
10f4: 6f        ret

; vcmd f5
10f5: ae        pop   a
10f6: 2d        push  a
10f7: 1c        asl   a
10f8: 5d        mov   x,a
10f9: 3f b6 1a  call  $1ab6
10fc: da bf     movw  $bf,ya
10fe: 3f a3 1a  call  $1aa3
1101: 9c        dec   a
1102: f0 0c     beq   $1110
1104: 3f 96 1a  call  $1a96
1107: ba bf     movw  ya,$bf
1109: 3f ac 1a  call  $1aac
110c: d4 75     mov   $75+x,a
110e: db 76     mov   $76+x,y
1110: ce        pop   x
1111: 6f        ret

1112: 6f        ret

1113: 4d        push  x
1114: f5 60 02  mov   a,$0260+x
1117: c4 bf     mov   $bf,a
1119: 8f 01 c0  mov   $c0,#$01
111c: e8 04     mov   a,#$04
111e: 3f 1f 18  call  $181f
1121: f7 12     mov   a,($12)+y
1123: c4 c1     mov   $c1,a
1125: f7 14     mov   a,($14)+y
1127: c4 c2     mov   $c2,a
1129: 8d 04     mov   y,#$04
112b: ce        pop   x
112c: d8 c3     mov   $c3,x
112e: cd 00     mov   x,#$00
1130: e7 c1     mov   a,($c1+x)
1132: 3a c1     incw  $c1
1134: f8 c3     mov   x,$c3
1136: 3f cd 0d  call  $0dcd
1139: 8d 05     mov   y,#$05
113b: cd 00     mov   x,#$00
113d: e7 c1     mov   a,($c1+x)
113f: 3a c1     incw  $c1
1141: f8 c3     mov   x,$c3
1143: 6d        push  y
1144: 3f cd 0d  call  $0dcd
1147: ee        pop   y
1148: fc        inc   y
1149: dd        mov   a,y
114a: 68 08     cmp   a,#$08
114c: d0 ed     bne   $113b
114e: 8d 00     mov   y,#$00
1150: f7 c1     mov   a,($c1)+y
1152: d5 10 02  mov   $0210+x,a
1155: fc        inc   y
1156: f7 c1     mov   a,($c1)+y
1158: d5 00 02  mov   $0200+x,a
115b: 8f 01 bf  mov   $bf,#$01
115e: e8 47     mov   a,#$47
1160: 60        clrc
1161: 84 09     adc   a,$09
1163: 5d        mov   x,a
1164: e4 c3     mov   a,$c3
1166: 80        setc
1167: a4 0a     sbc   a,$0a
1169: 3f 0e 1a  call  $1a0e
116c: f8 c3     mov   x,$c3
116e: 6f        ret

116f: e8 00     mov   a,#$00
1171: d5 ad 1b  mov   $1bad+x,a
1174: d5 bd 1b  mov   $1bbd+x,a
1177: 6f        ret

1178: e8 00     mov   a,#$00
117a: d5 ed 1b  mov   $1bed+x,a
117d: d5 fd 1b  mov   $1bfd+x,a
1180: 6f        ret

1181: e8 00     mov   a,#$00
1183: d5 2d 1c  mov   $1c2d+x,a
1186: d5 3d 1c  mov   $1c3d+x,a
1189: 6f        ret

118a: f5 8d 1b  mov   a,$1b8d+x
118d: 15 9d 1b  or    a,$1b9d+x
1190: d0 01     bne   $1193
1192: 6f        ret

1193: 4d        push  x
1194: 8f 00 c0  mov   $c0,#$00
1197: 3f 3c 12  call  $123c
119a: 8f 04 c0  mov   $c0,#$04
119d: 8f 00 c1  mov   $c1,#$00
11a0: e4 bf     mov   a,$bf
11a2: 10 05     bpl   $11a9
11a4: 8f 06 c0  mov   $c0,#$06
11a7: f2 bf     clr7  $bf
11a9: 28 40     and   a,#$40
11ab: f0 0b     beq   $11b8
11ad: e2 bf     set7  $bf
11af: e4 bf     mov   a,$bf
11b1: 48 ff     eor   a,#$ff
11b3: bc        inc   a
11b4: c4 bf     mov   $bf,a
11b6: ab c1     inc   $c1
11b8: e8 00     mov   a,#$00
11ba: 0b bf     asl   $bf
11bc: 3c        rol   a
11bd: 8b c0     dec   $c0
11bf: d0 f9     bne   $11ba
11c1: 8b c1     dec   $c1
11c3: d0 0b     bne   $11d0
11c5: 58 ff bf  eor   $bf,#$ff
11c8: 48 ff     eor   a,#$ff
11ca: 80        setc
11cb: 98 00 bf  adc   $bf,#$00
11ce: 88 00     adc   a,#$00
11d0: fd        mov   y,a
11d1: e4 bf     mov   a,$bf
11d3: 7a c5     addw  ya,$c5
11d5: c4 bf     mov   $bf,a
11d7: dd        mov   a,y
11d8: 68 46     cmp   a,#$46
11da: b0 04     bcs   $11e0
11dc: e4 bf     mov   a,$bf
11de: 2f 04     bra   $11e4
11e0: e8 00     mov   a,#$00
11e2: 8d c6     mov   y,#$c6
11e4: da c5     movw  $c5,ya
11e6: ce        pop   x
11e7: 6f        ret

11e8: f5 cd 1b  mov   a,$1bcd+x
11eb: 15 dd 1b  or    a,$1bdd+x
11ee: d0 01     bne   $11f1
11f0: 6f        ret

11f1: 4d        push  x
11f2: 8f 40 c0  mov   $c0,#$40
11f5: 3f 3c 12  call  $123c
11f8: ec d1 02  mov   y,$02d1
11fb: f0 08     beq   $1205
11fd: e5 15 03  mov   a,$0315
1200: f0 08     beq   $120a
1202: cf        mul   ya
1203: 2f 05     bra   $120a
1205: ec 15 03  mov   y,$0315
1208: f0 11     beq   $121b
120a: e4 bf     mov   a,$bf
120c: 10 0a     bpl   $1218
120e: 48 ff     eor   a,#$ff
1210: bc        inc   a
1211: cf        mul   ya
1212: dd        mov   a,y
1213: 48 ff     eor   a,#$ff
1215: bc        inc   a
1216: 2f 05     bra   $121d
1218: cf        mul   ya
1219: cb bf     mov   $bf,y
121b: e4 bf     mov   a,$bf
121d: 60        clrc
121e: 0b c5     asl   $c5
1220: 84 c5     adc   a,$c5
1222: 5c        lsr   a
1223: c4 c5     mov   $c5,a
1225: ce        pop   x
1226: 6f        ret

1227: f5 0d 1c  mov   a,$1c0d+x
122a: 15 1d 1c  or    a,$1c1d+x
122d: d0 01     bne   $1230
122f: 6f        ret

1230: 4d        push  x
1231: 8f 80 c0  mov   $c0,#$80
1234: 3f 3c 12  call  $123c
1237: fa bf c6  mov   ($c6),($bf)
123a: ce        pop   x
123b: 6f        ret

123c: 4d        push  x
123d: 7d        mov   a,x
123e: 60        clrc
123f: 84 c0     adc   a,$c0
1241: 5d        mov   x,a
1242: f5 8d 1b  mov   a,$1b8d+x
1245: c4 c1     mov   $c1,a
1247: f5 9d 1b  mov   a,$1b9d+x
124a: c4 c2     mov   $c2,a
124c: f5 ad 1b  mov   a,$1bad+x
124f: 1c        asl   a
1250: fd        mov   y,a
1251: f7 c1     mov   a,($c1)+y
1253: fc        inc   y
1254: c4 bf     mov   $bf,a
1256: f5 bd 1b  mov   a,$1bbd+x
1259: d0 05     bne   $1260
125b: f7 c1     mov   a,($c1)+y
125d: d5 bd 1b  mov   $1bbd+x,a
1260: 9c        dec   a
1261: f0 05     beq   $1268
1263: d5 bd 1b  mov   $1bbd+x,a
1266: 2f 2a     bra   $1292
1268: fc        inc   y
1269: f7 c1     mov   a,($c1)+y
126b: c4 c3     mov   $c3,a
126d: fc        inc   y
126e: f7 c1     mov   a,($c1)+y
1270: d0 16     bne   $1288
1272: e4 c3     mov   a,$c3
1274: f0 0b     beq   $1281
1276: 9c        dec   a
1277: d5 ad 1b  mov   $1bad+x,a
127a: 1c        asl   a
127b: fd        mov   y,a
127c: fc        inc   y
127d: f7 c1     mov   a,($c1)+y
127f: 2f 02     bra   $1283
1281: e8 ff     mov   a,#$ff
1283: d5 bd 1b  mov   $1bbd+x,a
1286: 2f 0a     bra   $1292
1288: d5 bd 1b  mov   $1bbd+x,a
128b: f5 ad 1b  mov   a,$1bad+x
128e: bc        inc   a
128f: d5 ad 1b  mov   $1bad+x,a
1292: ce        pop   x
1293: 6f        ret

1294: e8 b0     mov   a,#$b0
1296: c5 c9 12  mov   $12c9,a
1299: 3f c0 12  call  $12c0
129c: e8 00     mov   a,#$00
129e: c5 49 03  mov   $0349,a
12a1: c5 4a 03  mov   $034a,a
12a4: c4 06     mov   $06,a
12a6: c4 23     mov   $23,a
12a8: c4 bd     mov   $bd,a
12aa: c5 d1 02  mov   $02d1,a
12ad: a2 21     set5  $21
12af: 6f        ret

12b0: e8 90     mov   a,#$90
12b2: c5 c9 12  mov   $12c9,a
12b5: 3f c0 12  call  $12c0
12b8: e8 00     mov   a,#$00
12ba: c4 05     mov   $05,a
12bc: c5 44 03  mov   $0344,a
12bf: 6f        ret

12c0: 8f 01 bf  mov   $bf,#$01
12c3: cd 07     mov   x,#$07
12c5: f4 26     mov   a,$26+x
12c7: 68 08     cmp   a,#$08
12c9: b0 12     bcs   $12dd
12cb: fd        mov   y,a
12cc: e8 ff     mov   a,#$ff
12ce: ad ff     cmp   y,#$ff
12d0: d0 03     bne   $12d5
12d2: d6 2e 00  mov   $002e+y,a
12d5: d4 26     mov   $26+x,a
12d7: e4 45     mov   a,$45
12d9: 04 bf     or    a,$bf
12db: c4 45     mov   $45,a
12dd: f5 c0 02  mov   a,$02c0+x
12e0: f0 0b     beq   $12ed
12e2: e8 00     mov   a,#$00
12e4: d5 c0 02  mov   $02c0+x,a
12e7: e4 45     mov   a,$45
12e9: 04 bf     or    a,$bf
12eb: c4 45     mov   $45,a
12ed: 0b bf     asl   $bf
12ef: 1d        dec   x
12f0: 10 d3     bpl   $12c5
12f2: 6f        ret

12f3: e4 08     mov   a,$08
12f5: d0 14     bne   $130b
12f7: e5 44 03  mov   a,$0344
12fa: f0 0f     beq   $130b
12fc: 9c        dec   a
12fd: c5 44 03  mov   $0344,a
1300: d0 09     bne   $130b
1302: e4 06     mov   a,$06
1304: d0 05     bne   $130b
1306: 3f 66 15  call  $1566
1309: 2f 14     bra   $131f
130b: 3f 02 17  call  $1702
130e: f0 0f     beq   $131f
1310: 68 0b     cmp   a,#$0b
1312: b0 06     bcs   $131a
1314: 9c        dec   a
1315: 1c        asl   a
1316: 5d        mov   x,a
1317: 1f 21 13  jmp   ($1321+x)

131a: e8 80     mov   a,#$80
131c: 5f cb 15  jmp   $15cb

131f: 60        clrc
1320: 6f        ret

1321: dw $1377  ; 01
1323: dw $13dc  ; 02
1325: dw $1473  ; 03
1327: dw $148c  ; 04
1329: dw $14a3  ; 05
132b: dw $14c9  ; 06
132d: dw $14f0  ; 07
132f: dw $151f  ; 08
1331: dw $1527  ; 09
1333: dw $1535  ; 0a

; vcmd dispatch table
1335: dw $0fa8  ; e0
1337: dw $0fb5  ; e1
1339: dw $0fc3  ; e2
133b: dw $0fca  ; e3
133d: dw $0fd1  ; e4
133f: dw $0fe0  ; e5
1341: dw $0fef  ; e6
1343: dw $1019  ; e7
1345: dw $101f  ; e8 - note duration
1347: dw $1025  ; e9
1349: dw $102b  ; ea
134b: dw $1046  ; eb
134d: dw $104c  ; ec
134f: dw $1051  ; ed
1351: dw $1064  ; ee - echo param
1353: dw $1092  ; ef
1355: dw $109c  ; f0
1357: dw $10ad  ; f1
1359: dw $10d0  ; f2
135b: dw $10d5  ; f3
135d: dw $10e2  ; f4
135f: dw $10f5  ; f5

; vcmd length table
1361: db $01,$01,$01,$01,$02,$02,$02,$01
1369: db $01,$01,$01,$01,$01,$03,$03,$01
1371: db $01,$02,$02,$00,$01,$00

1377: fa 01 bf  mov   ($bf),($01)
137a: 8f 00 c0  mov   $c0,#$00
137d: e8 04     mov   a,#$04
137f: 3f 1f 18  call  $181f
1382: b0 05     bcs   $1389
1384: e8 83     mov   a,#$83
1386: 5f cb 15  jmp   $15cb

1389: e8 00     mov   a,#$00
138b: c5 f5 00  mov   $00f5,a
138e: e8 11     mov   a,#$11
1390: c5 f4 00  mov   $00f4,a
1393: 3f b0 15  call  $15b0
1396: 8f 00 c0  mov   $c0,#$00
1399: fa 01 bf  mov   ($bf),($01)
139c: 3f eb 15  call  $15eb
139f: 90 05     bcc   $13a6
13a1: e8 77     mov   a,#$77
13a3: 5f cb 15  jmp   $15cb

13a6: eb 1c     mov   y,$1c
13a8: dc        dec   y
13a9: 3f e5 17  call  $17e5
13ac: f5 4d 1d  mov   a,$1d4d+x
13af: c4 bf     mov   $bf,a
13b1: 8f 01 c0  mov   $c0,#$01
13b4: e8 04     mov   a,#$04
13b6: 4d        push  x
13b7: 3f 1f 18  call  $181f
13ba: 90 0b     bcc   $13c7
13bc: 3f 9c 15  call  $159c
13bf: ce        pop   x
13c0: 90 ea     bcc   $13ac
13c2: e8 66     mov   a,#$66
13c4: 5f cb 15  jmp   $15cb

13c7: f7 10     mov   a,($10)+y
13c9: bc        inc   a
13ca: d7 10     mov   ($10)+y,a
13cc: ce        pop   x
13cd: 1d        dec   x
13ce: d0 dc     bne   $13ac
13d0: e8 03     mov   a,#$03
13d2: 3f 1f 18  call  $181f
13d5: 3f b8 15  call  $15b8
13d8: 8f 00 b7  mov   $b7,#$00
13db: 6f        ret

13dc: fa 01 bf  mov   ($bf),($01)
13df: 8f 00 c0  mov   $c0,#$00
13e2: e8 04     mov   a,#$04
13e4: 3f 1f 18  call  $181f
13e7: b0 7d     bcs   $1466
13e9: e4 02     mov   a,$02
13eb: 1c        asl   a
13ec: 3c        rol   a
13ed: 28 01     and   a,#$01
13ef: 5d        mov   x,a
13f0: f4 07     mov   a,$07+x
13f2: d0 6e     bne   $1462
13f4: bc        inc   a
13f5: d4 07     mov   $07+x,a
13f7: f7 10     mov   a,($10)+y
13f9: bc        inc   a
13fa: d7 10     mov   ($10)+y,a
13fc: f7 12     mov   a,($12)+y
13fe: c4 c5     mov   $c5,a
1400: f7 14     mov   a,($14)+y
1402: c4 c6     mov   $c6,a
1404: 8d 00     mov   y,#$00
1406: f7 c5     mov   a,($c5)+y
1408: 3a c5     incw  $c5
140a: 7a c5     addw  ya,$c5
140c: 1d        dec   x
140d: f0 09     beq   $1418
140f: da 6f     movw  $6f,ya
1411: e4 1c     mov   a,$1c
1413: c5 13 03  mov   $0313,a
1416: 2f 47     bra   $145f
1418: da 71     movw  $71,ya
141a: e4 05     mov   a,$05
141c: bc        inc   a
141d: f0 4c     beq   $146b
141f: e4 03     mov   a,$03
1421: 28 1f     and   a,#$1f
1423: c5 22 03  mov   $0322,a
1426: e4 02     mov   a,$02
1428: 28 7f     and   a,#$7f
142a: c5 23 03  mov   $0323,a
142d: e4 03     mov   a,$03
142f: 28 e0     and   a,#$e0
1431: f0 2c     beq   $145f
1433: 1c        asl   a
1434: 3c        rol   a
1435: 3c        rol   a
1436: 3c        rol   a
1437: 9c        dec   a
1438: 5d        mov   x,a
1439: f5 85 1b  mov   a,$1b85+x
143c: c5 44 03  mov   $0344,a
143f: e4 01     mov   a,$01
1441: c5 45 03  mov   $0345,a
1444: e8 00     mov   a,#$00
1446: c5 46 03  mov   $0346,a
1449: e5 22 03  mov   a,$0322
144c: f0 09     beq   $1457
144e: e8 16     mov   a,#$16
1450: 80        setc
1451: a5 22 03  sbc   a,$0322
1454: c5 46 03  mov   $0346,a
1457: e5 23 03  mov   a,$0323
145a: 5c        lsr   a
145b: 5c        lsr   a
145c: c5 47 03  mov   $0347,a
145f: 3f b8 15  call  $15b8
1462: 8f 00 b7  mov   $b7,#$00
1465: 6f        ret

1466: e8 81     mov   a,#$81
1468: 5f cb 15  jmp   $15cb

146b: 8f 00 08  mov   $08,#$00
146e: e8 84     mov   a,#$84
1470: 5f cb 15  jmp   $15cb

1473: e4 01     mov   a,$01
1475: bc        inc   a
1476: d0 05     bne   $147d
1478: 3f b0 12  call  $12b0
147b: 2f 0b     bra   $1488
147d: 9c        dec   a
147e: c5 d0 02  mov   $02d0,a
1481: c4 bd     mov   $bd,a
1483: e8 ff     mov   a,#$ff
1485: c5 d1 02  mov   $02d1,a
1488: 3f b8 15  call  $15b8
148b: 6f        ret

148c: e4 01     mov   a,$01
148e: 10 0b     bpl   $149b
1490: bc        inc   a
1491: d0 02     bne   $1495
1493: 2f 02     bra   $1497
1495: e8 01     mov   a,#$01
1497: c5 14 03  mov   $0314,a
149a: 6f        ret

149b: 1c        asl   a
149c: c5 15 03  mov   $0315,a
149f: 3f b8 15  call  $15b8
14a2: 6f        ret

14a3: fa 01 bf  mov   ($bf),($01)
14a6: 8f 01 c0  mov   $c0,#$01
14a9: e8 04     mov   a,#$04
14ab: 3f 1f 18  call  $181f
14ae: b0 05     bcs   $14b5
14b0: e8 83     mov   a,#$83
14b2: 5f cb 15  jmp   $15cb

14b5: fa 01 bf  mov   ($bf),($01)
14b8: 3f 9c 15  call  $159c
14bb: 90 05     bcc   $14c2
14bd: e8 82     mov   a,#$82
14bf: 5f cb 15  jmp   $15cb

14c2: 3f b8 15  call  $15b8
14c5: 8f 00 b7  mov   $b7,#$00
14c8: 6f        ret

14c9: e4 01     mov   a,$01
14cb: 68 ff     cmp   a,#$ff
14cd: d0 07     bne   $14d6
14cf: e8 00     mov   a,#$00
14d1: 3f 1f 18  call  $181f
14d4: 2f 11     bra   $14e7
14d6: c4 bf     mov   $bf,a
14d8: 3f af 17  call  $17af
14db: b0 0e     bcs   $14eb
14dd: e8 05     mov   a,#$05
14df: 3f 1f 18  call  $181f
14e2: e8 03     mov   a,#$03
14e4: 3f 1f 18  call  $181f
14e7: 3f b8 15  call  $15b8
14ea: 6f        ret

14eb: e8 81     mov   a,#$81
14ed: 5f cb 15  jmp   $15cb

14f0: e8 00     mov   a,#$00
14f2: fa 05 bf  mov   ($bf),($05)
14f5: cd 08     mov   x,#$08
14f7: 0b bf     asl   $bf
14f9: 88 00     adc   a,#$00
14fb: 1d        dec   x
14fc: d0 f9     bne   $14f7
14fe: c4 bf     mov   $bf,a
1500: e4 06     mov   a,$06
1502: 60        clrc
1503: 7c        ror   a
1504: 7c        ror   a
1505: 04 bf     or    a,$bf
1507: c4 bf     mov   $bf,a
1509: e5 14 03  mov   a,$0314
150c: 60        clrc
150d: 7c        ror   a
150e: 7c        ror   a
150f: 7c        ror   a
1510: 04 bf     or    a,$bf
1512: c5 f5 00  mov   $00f5,a
1515: e5 12 03  mov   a,$0312
1518: c5 f6 00  mov   $00f6,a
151b: 3f b8 15  call  $15b8
151e: 6f        ret

151f: e8 ff     mov   a,#$ff
1521: c5 f4 00  mov   $00f4,a
1524: 5f 00 08  jmp   $0800

1527: e4 01     mov   a,$01
1529: bc        inc   a
152a: f0 02     beq   $152e
152c: e4 1c     mov   a,$1c
152e: c5 13 03  mov   $0313,a
1531: 3f b8 15  call  $15b8
1534: 6f        ret

1535: e5 f6 00  mov   a,$00f6
1538: c4 02     mov   $02,a
153a: e5 f7 00  mov   a,$00f7
153d: c4 03     mov   $03,a
153f: 8d 00     mov   y,#$00
1541: f7 02     mov   a,($02)+y
1543: c5 f6 00  mov   $00f6,a
1546: fc        inc   y
1547: f7 02     mov   a,($02)+y
1549: c5 f7 00  mov   $00f7,a
154c: 3f b8 15  call  $15b8
154f: e5 f4 00  mov   a,$00f4
1552: f0 fb     beq   $154f
1554: 68 cc     cmp   a,#$cc
1556: f0 dd     beq   $1535
1558: 68 ff     cmp   a,#$ff
155a: f0 06     beq   $1562
155c: 3a 02     incw  $02
155e: 3a 02     incw  $02
1560: 2f dd     bra   $153f
1562: 3f c0 15  call  $15c0
1565: 6f        ret

1566: e5 45 03  mov   a,$0345
1569: c4 bf     mov   $bf,a
156b: 8f 00 c0  mov   $c0,#$00
156e: e8 04     mov   a,#$04
1570: 3f 1f 18  call  $181f
1573: b0 26     bcs   $159b
1575: f7 12     mov   a,($12)+y
1577: c4 c5     mov   $c5,a
1579: f7 14     mov   a,($14)+y
157b: c4 c6     mov   $c6,a
157d: 8d 00     mov   y,#$00
157f: f7 c5     mov   a,($c5)+y
1581: 3a c5     incw  $c5
1583: 7a c5     addw  ya,$c5
1585: da 71     movw  $71,ya
1587: e4 05     mov   a,$05
1589: bc        inc   a
158a: f0 0f     beq   $159b
158c: 8f 01 08  mov   $08,#$01
158f: e5 46 03  mov   a,$0346
1592: c5 22 03  mov   $0322,a
1595: e5 47 03  mov   a,$0347
1598: c5 23 03  mov   $0323,a
159b: 6f        ret

159c: e4 bf     mov   a,$bf
159e: c5 f5 00  mov   $00f5,a
15a1: e8 12     mov   a,#$12
15a3: c5 f4 00  mov   $00f4,a
15a6: 3f b0 15  call  $15b0
15a9: 8f 01 c0  mov   $c0,#$01
15ac: 3f eb 15  call  $15eb
15af: 6f        ret

15b0: e8 ff     mov   a,#$ff
15b2: 65 f4 00  cmp   a,$00f4
15b5: d0 fb     bne   $15b2
15b7: 6f        ret

15b8: e8 ff     mov   a,#$ff
15ba: c5 f4 00  mov   $00f4,a
15bd: 8f 00 b7  mov   $b7,#$00
15c0: e8 00     mov   a,#$00
15c2: 65 f4 00  cmp   a,$00f4
15c5: d0 fb     bne   $15c2
15c7: c5 f4 00  mov   $00f4,a
15ca: 6f        ret

15cb: c5 f5 00  mov   $00f5,a
15ce: e8 fd     mov   a,#$fd
15d0: c5 f4 00  mov   $00f4,a
15d3: e8 00     mov   a,#$00
15d5: 65 f4 00  cmp   a,$00f4
15d8: f0 0a     beq   $15e4
15da: e8 ee     mov   a,#$ee
15dc: 65 f4 00  cmp   a,$00f4
15df: d0 f2     bne   $15d3
15e1: 5f 35 15  jmp   $1535

15e4: c5 f4 00  mov   $00f4,a
15e7: 8f 00 b7  mov   $b7,#$00
15ea: 6f        ret

15eb: 8f 70 bb  mov   $bb,#$70
15ee: 8f 00 bc  mov   $bc,#$00
15f1: ec f7 00  mov   y,$00f7
15f4: e5 f6 00  mov   a,$00f6
15f7: da c3     movw  $c3,ya
15f9: 1a c3     decw  $c3
15fb: 1a c3     decw  $c3
15fd: 1a c3     decw  $c3
15ff: e8 01     mov   a,#$01
1601: 3f 1f 18  call  $181f
1604: ba c1     movw  ya,$c1
1606: da c5     movw  $c5,ya
1608: 90 26     bcc   $1630
160a: ba c3     movw  ya,$c3
160c: 6d        push  y
160d: 2d        push  a
160e: ba c1     movw  ya,$c1
1610: 6d        push  y
1611: 2d        push  a
1612: ba bf     movw  ya,$bf
1614: 6d        push  y
1615: 2d        push  a
1616: 3f 65 17  call  $1765
1619: 90 07     bcc   $1622
161b: ae        pop   a
161c: ee        pop   y
161d: ae        pop   a
161e: ee        pop   y
161f: ae        pop   a
1620: ee        pop   y
1621: 6f        ret

1622: ae        pop   a
1623: ee        pop   y
1624: da bf     movw  $bf,ya
1626: ae        pop   a
1627: ee        pop   y
1628: da c1     movw  $c1,ya
162a: ae        pop   a
162b: ee        pop   y
162c: da c3     movw  $c3,ya
162e: 2f cf     bra   $15ff
1630: 8d 00     mov   y,#$00
1632: e4 05     mov   a,$05
1634: 04 06     or    a,$06
1636: f0 4f     beq   $1687
1638: cc f4 00  mov   $00f4,y
163b: dd        mov   a,y
163c: 8f d0 b9  mov   $b9,#$d0
163f: 8f 00 ba  mov   $ba,#$00
1642: 65 f4 00  cmp   a,$00f4
1645: f0 0b     beq   $1652
1647: 1a b9     decw  $b9
1649: d0 f7     bne   $1642
164b: 2d        push  a
164c: 3f a5 16  call  $16a5
164f: ae        pop   a
1650: 2f ea     bra   $163c
1652: cd 02     mov   x,#$02
1654: f5 f5 00  mov   a,$00f5+x
1657: d7 c1     mov   ($c1)+y,a
1659: 1a c3     decw  $c3
165b: f0 17     beq   $1674
165d: 1a bb     decw  $bb
165f: d0 09     bne   $166a
1661: 3f a5 16  call  $16a5
1664: 8f 70 bb  mov   $bb,#$70
1667: 8f 00 bc  mov   $bc,#$00
166a: fc        inc   y
166b: d0 02     bne   $166f
166d: ab c2     inc   $c2
166f: 1d        dec   x
1670: d0 e2     bne   $1654
1672: 2f c4     bra   $1638
1674: e8 fc     mov   a,#$fc
1676: c5 f5 00  mov   $00f5,a
1679: e8 00     mov   a,#$00
167b: c5 f4 00  mov   $00f4,a
167e: e8 fc     mov   a,#$fc
1680: 65 f5 00  cmp   a,$00f5
1683: d0 fb     bne   $1680
1685: 60        clrc
1686: 6f        ret

1687: cc f4 00  mov   $00f4,y
168a: dd        mov   a,y
168b: 65 f4 00  cmp   a,$00f4
168e: d0 fb     bne   $168b
1690: cd 02     mov   x,#$02
1692: f5 f5 00  mov   a,$00f5+x
1695: d7 c1     mov   ($c1)+y,a
1697: 1a c3     decw  $c3
1699: f0 d9     beq   $1674
169b: fc        inc   y
169c: d0 02     bne   $16a0
169e: ab c2     inc   $c2
16a0: 1d        dec   x
16a1: d0 ef     bne   $1692
16a3: 2f e2     bra   $1687
16a5: e8 fe     mov   a,#$fe
16a7: c5 f5 00  mov   $00f5,a
16aa: c9 17 03  mov   $0317,x
16ad: cc 18 03  mov   $0318,y
16b0: ba c1     movw  ya,$c1
16b2: cc 19 03  mov   $0319,y
16b5: c5 1a 03  mov   $031a,a
16b8: ba c3     movw  ya,$c3
16ba: cc 1b 03  mov   $031b,y
16bd: c5 1c 03  mov   $031c,a
16c0: ba c7     movw  ya,$c7
16c2: cc 1d 03  mov   $031d,y
16c5: c5 1e 03  mov   $031e,a
16c8: ba c9     movw  ya,$c9
16ca: cc 1f 03  mov   $031f,y
16cd: c5 20 03  mov   $0320,a
16d0: 3f 19 0b  call  $0b19
16d3: 3f 31 17  call  $1731
16d6: e5 20 03  mov   a,$0320
16d9: ec 1f 03  mov   y,$031f
16dc: da c9     movw  $c9,ya
16de: e5 1e 03  mov   a,$031e
16e1: ec 1d 03  mov   y,$031d
16e4: da c7     movw  $c7,ya
16e6: e5 1c 03  mov   a,$031c
16e9: ec 1b 03  mov   y,$031b
16ec: da c3     movw  $c3,ya
16ee: e5 1a 03  mov   a,$031a
16f1: ec 19 03  mov   y,$0319
16f4: da c1     movw  $c1,ya
16f6: ec 18 03  mov   y,$0318
16f9: e9 17 03  mov   x,$0317
16fc: e8 00     mov   a,#$00
16fe: c5 f5 00  mov   $00f5,a
1701: 6f        ret

1702: e5 f4 00  mov   a,$00f4
1705: 65 f4 00  cmp   a,$00f4
1708: d0 f8     bne   $1702
170a: 68 00     cmp   a,#$00
170c: d0 06     bne   $1714
170e: c5 f4 00  mov   $00f4,a
1711: c4 b7     mov   $b7,a
1713: 6f        ret

1714: eb b7     mov   y,$b7
1716: f0 03     beq   $171b
1718: e8 00     mov   a,#$00
171a: 6f        ret

171b: c4 00     mov   $00,a
171d: c4 b7     mov   $b7,a
171f: e5 f5 00  mov   a,$00f5
1722: c4 01     mov   $01,a
1724: e5 f6 00  mov   a,$00f6
1727: c4 02     mov   $02,a
1729: e5 f7 00  mov   a,$00f7
172c: c4 03     mov   $03,a
172e: e4 00     mov   a,$00
1730: 6f        ret

1731: ec fd 00  mov   y,$00fd
1734: f0 fb     beq   $1731
1736: 6d        push  y
1737: e4 40     mov   a,$40
1739: cf        mul   ya
173a: 60        clrc
173b: 84 b5     adc   a,$b5
173d: c4 b5     mov   $b5,a
173f: 90 0c     bcc   $174d
1741: e8 00     mov   a,#$00
1743: c4 09     mov   $09,a
1745: c4 0a     mov   $0a,a
1747: 3f 2f 09  call  $092f
174a: 3f 93 09  call  $0993
174d: ee        pop   y
174e: e4 42     mov   a,$42
1750: cf        mul   ya
1751: 60        clrc
1752: 84 b6     adc   a,$b6
1754: c4 b6     mov   $b6,a
1756: 90 0c     bcc   $1764
1758: 8f 01 09  mov   $09,#$01
175b: 8f 08 0a  mov   $0a,#$08
175e: 3f 3c 09  call  $093c
1761: 3f 85 09  call  $0985
1764: 6f        ret

1765: 8f 00 08  mov   $08,#$00
1768: e4 05     mov   a,$05
176a: f0 12     beq   $177e
176c: 3f b0 12  call  $12b0
176f: 3f a5 16  call  $16a5
1772: 3f a5 16  call  $16a5
1775: 3f a5 16  call  $16a5
1778: 3f a5 16  call  $16a5
177b: 3f a5 16  call  $16a5
177e: ec 13 03  mov   y,$0313
1781: cd 00     mov   x,#$00
1783: f7 0c     mov   a,($0c)+y
1785: bc        inc   a
1786: f0 0c     beq   $1794
1788: 9c        dec   a
1789: d0 06     bne   $1791
178b: f7 0e     mov   a,($0e)+y
178d: d5 75 1d  mov   $1d75+x,a
1790: 3d        inc   x
1791: fc        inc   y
1792: 2f ef     bra   $1783
1794: 1d        dec   x
1795: 30 0c     bmi   $17a3
1797: 4d        push  x
1798: f5 75 1d  mov   a,$1d75+x
179b: c4 bf     mov   $bf,a
179d: 3f af 17  call  $17af
17a0: ce        pop   x
17a1: 2f f1     bra   $1794
17a3: e8 05     mov   a,#$05
17a5: 3f 1f 18  call  $181f
17a8: e8 03     mov   a,#$03
17aa: 3f 1f 18  call  $181f
17ad: 60        clrc
17ae: 6f        ret

17af: 8f 00 c0  mov   $c0,#$00
17b2: e8 04     mov   a,#$04
17b4: 3f 1f 18  call  $181f
17b7: b0 2b     bcs   $17e4
17b9: 3f 02 18  call  $1802
17bc: 4d        push  x
17bd: e8 02     mov   a,#$02
17bf: 3f 1f 18  call  $181f
17c2: ce        pop   x
17c3: 4d        push  x
17c4: f5 61 1d  mov   a,$1d61+x
17c7: c4 bf     mov   $bf,a
17c9: 8f 01 c0  mov   $c0,#$01
17cc: e8 04     mov   a,#$04
17ce: 3f 1f 18  call  $181f
17d1: b0 0c     bcs   $17df
17d3: f7 10     mov   a,($10)+y
17d5: 9c        dec   a
17d6: d7 10     mov   ($10)+y,a
17d8: d0 05     bne   $17df
17da: e8 02     mov   a,#$02
17dc: 3f 1f 18  call  $181f
17df: ce        pop   x
17e0: 1d        dec   x
17e1: d0 e0     bne   $17c3
17e3: 60        clrc
17e4: 6f        ret

17e5: f7 12     mov   a,($12)+y
17e7: c4 c7     mov   $c7,a
17e9: f7 14     mov   a,($14)+y
17eb: c4 c8     mov   $c8,a
17ed: 8d 00     mov   y,#$00
17ef: cb c4     mov   $c4,y
17f1: f7 c7     mov   a,($c7)+y
17f3: 2d        push  a
17f4: bc        inc   a
17f5: c4 c3     mov   $c3,a
17f7: 8d 1d     mov   y,#$1d
17f9: e8 4d     mov   a,#$4d
17fb: da c9     movw  $c9,ya
17fd: 3f 37 1a  call  $1a37
1800: ce        pop   x
1801: 6f        ret

1802: f7 12     mov   a,($12)+y
1804: c4 c7     mov   $c7,a
1806: f7 14     mov   a,($14)+y
1808: c4 c8     mov   $c8,a
180a: 8d 00     mov   y,#$00
180c: cb c4     mov   $c4,y
180e: f7 c7     mov   a,($c7)+y
1810: 2d        push  a
1811: bc        inc   a
1812: c4 c3     mov   $c3,a
1814: 8d 1d     mov   y,#$1d
1816: e8 61     mov   a,#$61
1818: da c9     movw  $c9,ya
181a: 3f 37 1a  call  $1a37
181d: ce        pop   x
181e: 6f        ret

181f: 68 00     cmp   a,#$00
1821: f0 59     beq   $187c
1823: 9c        dec   a
1824: f0 15     beq   $183b
1826: 9c        dec   a
1827: d0 03     bne   $182c
1829: 5f ae 18  jmp   $18ae

182c: 9c        dec   a
182d: d0 03     bne   $1832
182f: 5f c1 19  jmp   $19c1

1832: 9c        dec   a
1833: d0 03     bne   $1838
1835: 5f 91 18  jmp   $1891

1838: 5f b8 18  jmp   $18b8

183b: 78 32 1c  cmp   $1c,#$32
183e: f0 3a     beq   $187a
1840: ba c3     movw  ya,$c3
1842: 7a 1a     addw  ya,$1a
1844: b0 04     bcs   $184a
1846: 5a 1f     cmpw  ya,$1f
1848: 90 04     bcc   $184e
184a: e8 01     mov   a,#$01
184c: 2f 2c     bra   $187a
184e: da c5     movw  $c5,ya
1850: eb 1c     mov   y,$1c
1852: ab 1c     inc   $1c
1854: e4 bf     mov   a,$bf
1856: d7 0e     mov   ($0e)+y,a
1858: e4 c0     mov   a,$c0
185a: d7 0c     mov   ($0c)+y,a
185c: e8 00     mov   a,#$00
185e: d7 10     mov   ($10)+y,a
1860: e4 1a     mov   a,$1a
1862: d7 12     mov   ($12)+y,a
1864: c4 c1     mov   $c1,a
1866: e4 1b     mov   a,$1b
1868: d7 14     mov   ($14)+y,a
186a: c4 c2     mov   $c2,a
186c: e4 c3     mov   a,$c3
186e: d7 16     mov   ($16)+y,a
1870: e4 c4     mov   a,$c4
1872: d7 18     mov   ($18)+y,a
1874: ba c5     movw  ya,$c5
1876: da 1a     movw  $1a,ya
1878: 60        clrc
1879: 6f        ret

187a: 80        setc
187b: 6f        ret

187c: c4 1c     mov   $1c,a
187e: c5 13 03  mov   $0313,a
1881: cd 33     mov   x,#$33
1883: 9c        dec   a
1884: 8d 00     mov   y,#$00
1886: d7 0c     mov   ($0c)+y,a
1888: fc        inc   y
1889: 1d        dec   x
188a: d0 fa     bne   $1886
188c: ba 1d     movw  ya,$1d
188e: da 1a     movw  $1a,ya
1890: 6f        ret

1891: 8d 00     mov   y,#$00
1893: f7 0c     mov   a,($0c)+y
1895: 68 ff     cmp   a,#$ff
1897: f0 11     beq   $18aa
1899: 64 c0     cmp   a,$c0
189b: d0 0a     bne   $18a7
189d: e4 bf     mov   a,$bf
189f: bc        inc   a
18a0: f0 0a     beq   $18ac
18a2: 9c        dec   a
18a3: 77 0e     cmp   a,($0e)+y
18a5: f0 05     beq   $18ac
18a7: fc        inc   y
18a8: 2f e9     bra   $1893
18aa: 80        setc
18ab: 6f        ret

18ac: 60        clrc
18ad: 6f        ret

18ae: 3f 91 18  call  $1891
18b1: b0 04     bcs   $18b7
18b3: e8 fe     mov   a,#$fe
18b5: d7 0c     mov   ($0c)+y,a
18b7: 6f        ret

18b8: 8d 00     mov   y,#$00
18ba: cb bf     mov   $bf,y
18bc: cb c0     mov   $c0,y
18be: f7 0c     mov   a,($0c)+y
18c0: bc        inc   a
18c1: d0 03     bne   $18c6
18c3: 5f 99 19  jmp   $1999

18c6: bc        inc   a
18c7: f0 07     beq   $18d0
18c9: e4 bf     mov   a,$bf
18cb: d0 19     bne   $18e6
18cd: fc        inc   y
18ce: 2f ee     bra   $18be
18d0: e4 bf     mov   a,$bf
18d2: d0 0e     bne   $18e2
18d4: ab bf     inc   $bf
18d6: f7 12     mov   a,($12)+y
18d8: c4 c9     mov   $c9,a
18da: f7 14     mov   a,($14)+y
18dc: c4 ca     mov   $ca,a
18de: cb c0     mov   $c0,y
18e0: 2f eb     bra   $18cd
18e2: ab bf     inc   $bf
18e4: 2f e7     bra   $18cd
18e6: cb c5     mov   $c5,y
18e8: f7 12     mov   a,($12)+y
18ea: c4 c7     mov   $c7,a
18ec: f7 14     mov   a,($14)+y
18ee: c4 c8     mov   $c8,a
18f0: f7 16     mov   a,($16)+y
18f2: c4 c3     mov   $c3,a
18f4: f7 18     mov   a,($18)+y
18f6: c4 c4     mov   $c4,a
18f8: e4 c9     mov   a,$c9
18fa: d7 12     mov   ($12)+y,a
18fc: e4 ca     mov   a,$ca
18fe: d7 14     mov   ($14)+y,a
1900: 8f 01 bf  mov   $bf,#$01
1903: fc        inc   y
1904: f7 0c     mov   a,($0c)+y
1906: bc        inc   a
1907: f0 17     beq   $1920
1909: bc        inc   a
190a: f0 14     beq   $1920
190c: ab bf     inc   $bf
190e: 3f b3 19  call  $19b3
1911: f7 16     mov   a,($16)+y
1913: 60        clrc
1914: 84 c3     adc   a,$c3
1916: c4 c3     mov   $c3,a
1918: f7 18     mov   a,($18)+y
191a: 84 c4     adc   a,$c4
191c: c4 c4     mov   $c4,a
191e: 2f e3     bra   $1903
1920: 3f b3 19  call  $19b3
1923: e4 06     mov   a,$06
1925: 04 05     or    a,$05
1927: d0 05     bne   $192e
1929: 3f 37 1a  call  $1a37
192c: 2f 13     bra   $1941
192e: ba bf     movw  ya,$bf
1930: 6d        push  y
1931: 2d        push  a
1932: ba c5     movw  ya,$c5
1934: 6d        push  y
1935: 2d        push  a
1936: 3f 61 1a  call  $1a61
1939: ae        pop   a
193a: ee        pop   y
193b: da c5     movw  $c5,ya
193d: ae        pop   a
193e: ee        pop   y
193f: da bf     movw  $bf,ya
1941: eb c5     mov   y,$c5
1943: f7 0c     mov   a,($0c)+y
1945: eb c0     mov   y,$c0
1947: d7 0c     mov   ($0c)+y,a
1949: cd 06     mov   x,#$06
194b: 8f 00 c6  mov   $c6,#$00
194e: e4 c0     mov   a,$c0
1950: 60        clrc
1951: 84 c6     adc   a,$c6
1953: c4 c1     mov   $c1,a
1955: e4 c5     mov   a,$c5
1957: 60        clrc
1958: 84 c6     adc   a,$c6
195a: fd        mov   y,a
195b: f7 0e     mov   a,($0e)+y
195d: eb c1     mov   y,$c1
195f: d7 0e     mov   ($0e)+y,a
1961: e8 32     mov   a,#$32
1963: 60        clrc
1964: 84 c6     adc   a,$c6
1966: c4 c6     mov   $c6,a
1968: 1d        dec   x
1969: d0 e3     bne   $194e
196b: ab c0     inc   $c0
196d: ab c5     inc   $c5
196f: 8b bf     dec   $bf
1971: d0 ce     bne   $1941
1973: e4 c5     mov   a,$c5
1975: 80        setc
1976: a4 c0     sbc   a,$c0
1978: 5d        mov   x,a
1979: eb c0     mov   y,$c0
197b: e4 c9     mov   a,$c9
197d: d7 12     mov   ($12)+y,a
197f: e4 ca     mov   a,$ca
1981: d7 14     mov   ($14)+y,a
1983: 8f 01 bf  mov   $bf,#$01
1986: e8 fe     mov   a,#$fe
1988: d7 0c     mov   ($0c)+y,a
198a: fc        inc   y
198b: 1d        dec   x
198c: d0 fa     bne   $1988
198e: eb c0     mov   y,$c0
1990: e8 00     mov   a,#$00
1992: c4 bf     mov   $bf,a
1994: c4 c0     mov   $c0,a
1996: 5f be 18  jmp   $18be

1999: e4 bf     mov   a,$bf
199b: f0 15     beq   $19b2
199d: eb c0     mov   y,$c0
199f: cb 1c     mov   $1c,y
19a1: f7 12     mov   a,($12)+y
19a3: c4 1a     mov   $1a,a
19a5: f7 14     mov   a,($14)+y
19a7: c4 1b     mov   $1b,a
19a9: e8 ff     mov   a,#$ff
19ab: d7 0c     mov   ($0c)+y,a
19ad: fc        inc   y
19ae: 8b bf     dec   $bf
19b0: d0 f9     bne   $19ab
19b2: 6f        ret

19b3: 6d        push  y
19b4: ba c9     movw  ya,$c9
19b6: 7a c3     addw  ya,$c3
19b8: 5d        mov   x,a
19b9: dd        mov   a,y
19ba: ee        pop   y
19bb: d7 14     mov   ($14)+y,a
19bd: 7d        mov   a,x
19be: d7 12     mov   ($12)+y,a
19c0: 6f        ret

19c1: 8d 00     mov   y,#$00
19c3: cd 00     mov   x,#$00
19c5: f7 0c     mov   a,($0c)+y
19c7: 68 01     cmp   a,#$01
19c9: d0 04     bne   $19cf
19cb: 3f d6 19  call  $19d6
19ce: 3d        inc   x
19cf: bc        inc   a
19d0: f0 03     beq   $19d5
19d2: fc        inc   y
19d3: 2f f0     bra   $19c5
19d5: 6f        ret

19d6: 4d        push  x
19d7: 6d        push  y
19d8: f7 12     mov   a,($12)+y
19da: c4 c1     mov   $c1,a
19dc: f7 14     mov   a,($14)+y
19de: c4 c2     mov   $c2,a
19e0: 8d 00     mov   y,#$00
19e2: 7d        mov   a,x
19e3: d7 c1     mov   ($c1)+y,a
19e5: 1c        asl   a
19e6: 1c        asl   a
19e7: 5d        mov   x,a
19e8: 8d 06     mov   y,#$06
19ea: f7 c1     mov   a,($c1)+y
19ec: c4 c3     mov   $c3,a
19ee: fc        inc   y
19ef: f7 c1     mov   a,($c1)+y
19f1: c4 c4     mov   $c4,a
19f3: e8 08     mov   a,#$08
19f5: 8d 00     mov   y,#$00
19f7: 7a c1     addw  ya,$c1
19f9: d5 00 07  mov   $0700+x,a
19fc: 2d        push  a
19fd: dd        mov   a,y
19fe: d5 01 07  mov   $0701+x,a
1a01: ae        pop   a
1a02: 7a c3     addw  ya,$c3
1a04: d5 02 07  mov   $0702+x,a
1a07: dd        mov   a,y
1a08: d5 03 07  mov   $0703+x,a
1a0b: ee        pop   y
1a0c: ce        pop   x
1a0d: 6f        ret

1a0e: 1c        asl   a
1a0f: 04 bf     or    a,$bf
1a11: 9f        xcn   a
1a12: 08 02     or    a,#$02
1a14: c5 1b 1a  mov   $1a1b,a
1a17: 7d        mov   a,x
1a18: c5 1c 1a  mov   $1a1c,a
1a1b: 92 47     clr4  $47
1a1d: 6f        ret

1a1e: 8d 00     mov   y,#$00
1a20: d7 c9     mov   ($c9)+y,a
1a22: 3a c9     incw  $c9
1a24: 1a c3     decw  $c3
1a26: d0 f8     bne   $1a20
1a28: 6f        ret

; calculate Y * A% (approx)
1a29: 68 64     cmp   a,#$64
1a2b: b0 08     bcs   $1a35             ; error: more than 100%
1a2d: c4 bf     mov   $bf,a
1a2f: 1c        asl   a
1a30: 4b bf     lsr   $bf
1a32: 84 bf     adc   a,$bf             ; a = (a * 2) + (a / 2)
1a34: cf        mul   ya
1a35: dd        mov   a,y
1a36: 6f        ret

1a37: 8d 00     mov   y,#$00
1a39: f7 c7     mov   a,($c7)+y
1a3b: d7 c9     mov   ($c9)+y,a
1a3d: 1a c3     decw  $c3
1a3f: f0 09     beq   $1a4a
1a41: fc        inc   y
1a42: d0 f5     bne   $1a39
1a44: ab c8     inc   $c8
1a46: ab ca     inc   $ca
1a48: 2f ef     bra   $1a39
1a4a: cb c3     mov   $c3,y
1a4c: 3a c3     incw  $c3
1a4e: ba c3     movw  ya,$c3
1a50: 7a c7     addw  ya,$c7
1a52: da c7     movw  $c7,ya
1a54: ba c3     movw  ya,$c3
1a56: 7a c9     addw  ya,$c9
1a58: da c9     movw  $c9,ya
1a5a: e8 00     mov   a,#$00
1a5c: c4 c3     mov   $c3,a
1a5e: c4 c4     mov   $c4,a
1a60: 6f        ret

1a61: ba c3     movw  ya,$c3
1a63: da c1     movw  $c1,ya
1a65: e8 60     mov   a,#$60
1a67: 8d 00     mov   y,#$00
1a69: da bf     movw  $bf,ya
1a6b: ba c1     movw  ya,$c1
1a6d: 5a bf     cmpw  ya,$bf
1a6f: 90 1a     bcc   $1a8b
1a71: ba bf     movw  ya,$bf
1a73: da c3     movw  $c3,ya
1a75: 3f 37 1a  call  $1a37
1a78: 3f a5 16  call  $16a5
1a7b: e8 60     mov   a,#$60
1a7d: 8d 00     mov   y,#$00
1a7f: da bf     movw  $bf,ya
1a81: ba c1     movw  ya,$c1
1a83: 9a bf     subw  ya,$bf
1a85: da c1     movw  $c1,ya
1a87: f0 0c     beq   $1a95
1a89: 2f e0     bra   $1a6b
1a8b: ba c1     movw  ya,$c1
1a8d: da c3     movw  $c3,ya
1a8f: 3f 37 1a  call  $1a37
1a92: 3f a5 16  call  $16a5
1a95: 6f        ret

1a96: 2d        push  a
1a97: f4 95     mov   a,$95+x
1a99: d0 02     bne   $1a9d
1a9b: 9b 96     dec   $96+x
1a9d: 9b 95     dec   $95+x
1a9f: ae        pop   a
1aa0: c7 95     mov   ($95+x),a
1aa2: 6f        ret

1aa3: e7 95     mov   a,($95+x)
1aa5: bb 95     inc   $95+x
1aa7: d0 02     bne   $1aab
1aa9: bb 96     inc   $96+x
1aab: 6f        ret

1aac: 2d        push  a
1aad: 3f 96 1a  call  $1a96
1ab0: dd        mov   a,y
1ab1: 3f 96 1a  call  $1a96
1ab4: ae        pop   a
1ab5: 6f        ret

1ab6: 3f a3 1a  call  $1aa3
1ab9: fd        mov   y,a
1aba: 3f a3 1a  call  $1aa3
1abd: 6f        ret

; pan table (volume balance)
1abe: db $00,$02,$06,$0e,$1a,$2a,$3c,$52
1ac6: db $68,$84,$a2,$bc,$ce,$dc,$e6,$ee
1ace: db $f4,$f8,$fa,$fc,$ff

; pitch table
1ad3: dw $0042
1ad5: dw $0046
1ad7: dw $004b
1ad9: dw $004f
1adb: dw $0054
1add: dw $0059
1adf: dw $005e
1ae1: dw $0064
1ae3: dw $006a
1ae5: dw $0070
1ae7: dw $0077
1ae9: dw $007e
1aeb: dw $0085
1aed: dw $008d
1aef: dw $0096
1af1: dw $009f
1af3: dw $00a8
1af5: dw $00b2
1af7: dw $00bd
1af9: dw $00c8
1afb: dw $00d4
1afd: dw $00e1
1aff: dw $00ee
1b01: dw $00fc
1b03: dw $010b
1b05: dw $011b
1b07: dw $012c
1b09: dw $013e
1b0b: dw $0151
1b0d: dw $0165
1b0f: dw $017a
1b11: dw $0191
1b13: dw $01a9
1b15: dw $01c2
1b17: dw $01dd
1b19: dw $01f9
1b1b: dw $0217
1b1d: dw $0237
1b1f: dw $0259
1b21: dw $027d
1b23: dw $02a3
1b25: dw $02cb
1b27: dw $02f5
1b29: dw $0322
1b2b: dw $0352
1b2d: dw $0385
1b2f: dw $03ba
1b31: dw $03f3
1b33: dw $042f
1b35: dw $046f
1b37: dw $04b2
1b39: dw $04fa
1b3b: dw $0546
1b3d: dw $0596
1b3f: dw $05eb
1b41: dw $0645
1b43: dw $06a5
1b45: dw $070a
1b47: dw $0775
1b49: dw $07e6
1b4b: dw $085f
1b4d: dw $08de
1b4f: dw $0965
1b51: dw $09f4
1b53: dw $0a8c
1b55: dw $0b2c
1b57: dw $0bd6
1b59: dw $0c8b
1b5b: dw $0d4a
1b5d: dw $0e14
1b5f: dw $0eea
1b61: dw $0fcd
1b63: dw $10be

; echo filter table
1b65: db $7f,$00,$00,$00,$00,$00,$00,$00
1b6d: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1b75: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1b7d: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

1b85: db $0f,$19,$23,$2d,$37,$b8,$16
