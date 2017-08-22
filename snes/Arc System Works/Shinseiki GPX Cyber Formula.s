0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 f0     mov   a,#$f0
0806: c5 f1 00  mov   $00f1,a
0809: e8 10     mov   a,#$10
080b: c5 fa 00  mov   $00fa,a           ; set timer 0 frequency to 2 ms
080e: e8 01     mov   a,#$01
0810: c5 f1 00  mov   $00f1,a
0813: e8 3c     mov   a,#$3c
0815: 8d 5d     mov   y,#$5d            ; DIR
0817: 3f 2a 12  call  $122a
081a: e8 b0     mov   a,#$b0
081c: 8d 6d     mov   y,#$6d            ; ESA
081e: 3f 2a 12  call  $122a
0821: 8f 00 00  mov   $00,#$00
0824: 8f 00 01  mov   $01,#$00
0827: 8f 00 02  mov   $02,#$00
082a: 8f 00 03  mov   $03,#$00
082d: 8f 00 e0  mov   $e0,#$00
0830: cd 00     mov   x,#$00
0832: 3f f5 0b  call  $0bf5
; main loop
0835: cd 08     mov   x,#$08
0837: e5 fd 00  mov   a,$00fd
083a: f0 fb     beq   $0837             ; wait for timer 0 clock
083c: 1d        dec   x
083d: d0 f8     bne   $0837
083f: 3f 45 08  call  $0845
0842: 5f 35 08  jmp   $0835

0845: 3f 84 09  call  $0984
0848: e4 4e     mov   a,$4e
084a: f0 01     beq   $084d
084c: 6f        ret

084d: fa 35 37  mov   ($37),($35)
0850: fa 43 41  mov   ($41),($43)
0853: fa 44 42  mov   ($42),($44)
0856: fa 48 47  mov   ($47),($48)
0859: cd 00     mov   x,#$00
085b: e8 01     mov   a,#$01
085d: c4 34     mov   $34,a
085f: 3f 76 0c  call  $0c76
0862: 3d        inc   x
0863: 0b 34     asl   $34
0865: d0 f8     bne   $085f
0867: fa 37 35  mov   ($35),($37)
086a: fa 41 43  mov   ($43),($41)
086d: fa 42 44  mov   ($44),($42)
0870: fa 47 48  mov   ($48),($47)
0873: fa 36 37  mov   ($37),($36)
0876: fa 45 41  mov   ($41),($45)
0879: fa 46 42  mov   ($42),($46)
087c: fa 49 47  mov   ($47),($49)
087f: cd 08     mov   x,#$08
0881: e8 01     mov   a,#$01
0883: c4 34     mov   $34,a
0885: 3f 76 0c  call  $0c76
0888: 3d        inc   x
0889: 0b 34     asl   $34
088b: d0 f8     bne   $0885
088d: fa 37 36  mov   ($36),($37)
0890: fa 41 45  mov   ($45),($41)
0893: fa 42 46  mov   ($46),($42)
0896: fa 47 49  mov   ($49),($47)
0899: 3f 25 09  call  $0925
089c: 69 2b 1f  cmp   ($1f),($2b)
089f: f0 09     beq   $08aa
08a1: e4 1f     mov   a,$1f
08a3: c4 2b     mov   $2b,a
08a5: 8d 7d     mov   y,#$7d
08a7: 3f 2a 12  call  $122a             ; EDL
08aa: 69 26 1a  cmp   ($1a),($26)
08ad: f0 09     beq   $08b8
08af: e4 1a     mov   a,$1a
08b1: c4 26     mov   $26,a
08b3: 8d 6c     mov   y,#$6c
08b5: 3f 2a 12  call  $122a             ; FLG
08b8: 69 25 19  cmp   ($19),($25)
08bb: f0 0c     beq   $08c9
08bd: e4 19     mov   a,$19
08bf: c4 25     mov   $25,a
08c1: 8d 5c     mov   y,#$5c            ; KOF
08c3: cc f2 00  mov   $00f2,y
08c6: c5 f3 00  mov   $00f3,a
08c9: e4 18     mov   a,$18
08cb: f0 0b     beq   $08d8
08cd: 8d 4c     mov   y,#$4c            ; KON
08cf: cc f2 00  mov   $00f2,y
08d2: c5 f3 00  mov   $00f3,a
08d5: 8f 00 18  mov   $18,#$00
08d8: e4 16     mov   a,$16
08da: c4 22     mov   $22,a
08dc: 8d 2c     mov   y,#$2c            ; EVOL(L)
08de: cc f2 00  mov   $00f2,y
08e1: c5 f3 00  mov   $00f3,a
08e4: e4 17     mov   a,$17
08e6: c4 23     mov   $23,a
08e8: 8d 3c     mov   y,#$3c            ; EVOL(R)
08ea: cc f2 00  mov   $00f2,y
08ed: c5 f3 00  mov   $00f3,a
08f0: e4 1b     mov   a,$1b
08f2: c4 27     mov   $27,a
08f4: 8d 0d     mov   y,#$0d            ; EFB
08f6: cc f2 00  mov   $00f2,y
08f9: c5 f3 00  mov   $00f3,a
08fc: e4 1e     mov   a,$1e
08fe: c4 2a     mov   $2a,a
0900: 8d 4d     mov   y,#$4d            ; EON
0902: cc f2 00  mov   $00f2,y
0905: c5 f3 00  mov   $00f3,a
0908: 69 20 14  cmp   ($14),($20)
090b: f0 09     beq   $0916
090d: e4 14     mov   a,$14
090f: c4 20     mov   $20,a
0911: 8d 0c     mov   y,#$0c
0913: 3f 2a 12  call  $122a             ; MVOL(L)
0916: 69 21 15  cmp   ($15),($21)
0919: f0 09     beq   $0924
091b: e4 15     mov   a,$15
091d: c4 21     mov   $21,a
091f: 8d 1c     mov   y,#$1c
0921: 3f 2a 12  call  $122a             ; MVOL(R)
0924: 6f        ret

0925: 69 3e 3d  cmp   ($3d),($3e)
0928: f0 1c     beq   $0946
092a: e4 3d     mov   a,$3d
092c: c4 3e     mov   $3e,a
092e: 1c        asl   a
092f: 1c        asl   a
0930: 1c        asl   a
0931: 5d        mov   x,a
0932: 8d 0f     mov   y,#$0f
0934: f5 5c 09  mov   a,$095c+x
0937: 3f 2a 12  call  $122a             ; set FIR C0-C7
093a: 3d        inc   x
093b: dd        mov   a,y
093c: 60        clrc
093d: 88 10     adc   a,#$10
093f: 68 8f     cmp   a,#$8f
0941: f0 03     beq   $0946
0943: fd        mov   y,a
0944: 2f ee     bra   $0934
0946: e4 39     mov   a,$39
0948: f0 03     beq   $094d
094a: 8b 39     dec   $39
094c: 6f        ret

094d: e4 3f     mov   a,$3f
094f: fa 3f 1e  mov   ($1e),($3f)
0952: fa 3a 16  mov   ($16),($3a)
0955: fa 3b 17  mov   ($17),($3b)
0958: fa 3c 1b  mov   ($1b),($3c)
095b: 6f        ret

095c: db $7f,$00,$00,$00,$00,$00,$00,$00
0964: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
096c: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0974: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
097c: db $25,$36,$28,$0f,$f7,$ed,$fe,$10

0984: e5 f5 00  mov   a,$00f5
0987: 08 00     or    a,#$00
0989: 30 14     bmi   $099f
098b: 60        clrc
098c: 85 bf 02  adc   a,$02bf
098f: c5 bf 02  mov   $02bf,a
0992: e5 cf 02  mov   a,$02cf
0995: e8 00     mov   a,#$00
0997: 85 cf 02  adc   a,$02cf
099a: c5 cf 02  mov   $02cf,a
099d: 2f 18     bra   $09b7
099f: 28 7f     and   a,#$7f
09a1: 80        setc
09a2: 5d        mov   x,a
09a3: e5 bf 02  mov   a,$02bf
09a6: c9 bf 02  mov   $02bf,x
09a9: a5 bf 02  sbc   a,$02bf
09ac: c5 bf 02  mov   $02bf,a
09af: e5 cf 02  mov   a,$02cf
09b2: a8 00     sbc   a,#$00
09b4: c5 cf 02  mov   $02cf,a
09b7: e5 f4 00  mov   a,$00f4
09ba: 65 f4 00  cmp   a,$00f4
09bd: d0 f8     bne   $09b7
09bf: 08 00     or    a,#$00
09c1: f0 0f     beq   $09d2
09c3: 2d        push  a
09c4: e8 01     mov   a,#$01
09c6: c5 f1 00  mov   $00f1,a
09c9: e8 11     mov   a,#$11
09cb: c5 f1 00  mov   $00f1,a
09ce: ae        pop   a
09cf: 5f 09 0a  jmp   $0a09

09d2: e5 f6 00  mov   a,$00f6
09d5: 65 f6 00  cmp   a,$00f6
09d8: d0 f8     bne   $09d2
09da: 08 00     or    a,#$00
09dc: f0 0f     beq   $09ed
09de: 2d        push  a
09df: e8 01     mov   a,#$01
09e1: c5 f1 00  mov   $00f1,a
09e4: e8 21     mov   a,#$21
09e6: c5 f1 00  mov   $00f1,a
09e9: ae        pop   a
09ea: 5f 75 0a  jmp   $0a75

09ed: e5 f7 00  mov   a,$00f7
09f0: 65 f7 00  cmp   a,$00f7
09f3: d0 f8     bne   $09ed
09f5: 08 00     or    a,#$00
09f7: f0 0f     beq   $0a08
09f9: 2d        push  a
09fa: e8 01     mov   a,#$01
09fc: c5 f1 00  mov   $00f1,a
09ff: e8 21     mov   a,#$21
0a01: c5 f1 00  mov   $00f1,a
0a04: ae        pop   a
0a05: 5f 75 0a  jmp   $0a75

0a08: 6f        ret

0a09: 68 f0     cmp   a,#$f0
0a0b: 90 1d     bcc   $0a2a
0a0d: 78 01 e0  cmp   $e0,#$01
0a10: f0 08     beq   $0a1a
0a12: 28 0f     and   a,#$0f
0a14: 5d        mov   x,a
0a15: f5 1b 0a  mov   a,$0a1b+x
0a18: c4 4c     mov   $4c,a
0a1a: 6f        ret

0a1b: db $02,$04,$06,$08,$0a,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

0a2a: 68 e0     cmp   a,#$e0
0a2c: d0 04     bne   $0a32
0a2e: 8f 01 e0  mov   $e0,#$01
0a31: 6f        ret

0a32: 68 e1     cmp   a,#$e1
0a34: d0 04     bne   $0a3a
0a36: 8f 00 e0  mov   $e0,#$00
0a39: 6f        ret

0a3a: 68 01     cmp   a,#$01
0a3c: f0 05     beq   $0a43
0a3e: 38 ff e0  and   $e0,#$ff
0a41: d0 31     bne   $0a74
0a43: 28 ff     and   a,#$ff
0a45: 10 0a     bpl   $0a51
0a47: 8f 00 f4  mov   $f4,#$00
0a4a: e8 b0     mov   a,#$b0
0a4c: c4 f1     mov   $f1,a
0a4e: 5f c0 ff  jmp   $ffc0

0a51: 9c        dec   a
0a52: 1c        asl   a
0a53: 5d        mov   x,a
0a54: f5 84 12  mov   a,$1284+x
0a57: c4 04     mov   $04,a
0a59: 3d        inc   x
0a5a: f5 84 12  mov   a,$1284+x         ; read song table
0a5d: c4 05     mov   $05,a             ; $04/5: song header address
0a5f: 3f f3 0b  call  $0bf3
0a62: cd ff     mov   x,#$ff
0a64: e8 01     mov   a,#$01
0a66: c4 34     mov   $34,a
0a68: 8f 00 37  mov   $37,#$00
0a6b: 3f 92 0b  call  $0b92             ; load song header
0a6e: fa 37 35  mov   ($35),($37)
0a71: 8f ff 19  mov   $19,#$ff
0a74: 6f        ret

0a75: 78 01 4e  cmp   $4e,#$01
0a78: d0 0b     bne   $0a85
0a7a: 8f 00 4e  mov   $4e,#$00
0a7d: 2d        push  a
0a7e: e8 40     mov   a,#$40
0a80: c4 14     mov   $14,a
0a82: c4 15     mov   $15,a
0a84: ae        pop   a
0a85: 68 1d     cmp   a,#$1d
0a87: d0 0c     bne   $0a95
0a89: 78 00 e3  cmp   $e3,#$00
0a8c: f0 01     beq   $0a8f
0a8e: 6f        ret

0a8f: 2d        push  a
0a90: e8 01     mov   a,#$01
0a92: c4 e3     mov   $e3,a
0a94: ae        pop   a
0a95: 68 1f     cmp   a,#$1f
0a97: d0 06     bne   $0a9f
0a99: 2d        push  a
0a9a: e8 00     mov   a,#$00
0a9c: c4 e3     mov   $e3,a
0a9e: ae        pop   a
0a9f: 9c        dec   a
0aa0: 1c        asl   a
0aa1: 1c        asl   a
0aa2: 5d        mov   x,a
0aa3: f5 cc 12  mov   a,$12cc+x
0aa6: c4 04     mov   $04,a
0aa8: 3d        inc   x
0aa9: f5 cc 12  mov   a,$12cc+x
0aac: c4 05     mov   $05,a
0aae: 3d        inc   x
0aaf: f5 cc 12  mov   a,$12cc+x
0ab2: 64 4a     cmp   a,$4a
0ab4: 90 28     bcc   $0ade
0ab6: c4 4a     mov   $4a,a
0ab8: 3d        inc   x
0ab9: f5 cc 12  mov   a,$12cc+x
0abc: 5d        mov   x,a
0abd: f5 df 0a  mov   a,$0adf+x
0ac0: c4 34     mov   $34,a
0ac2: 7d        mov   a,x
0ac3: 60        clrc
0ac4: 88 07     adc   a,#$07
0ac6: 5d        mov   x,a
0ac7: fa 36 37  mov   ($37),($36)
0aca: 3f 92 0b  call  $0b92
0acd: fa 37 36  mov   ($36),($37)
0ad0: e8 02     mov   a,#$02
0ad2: d4 c0     mov   $c0+x,a
0ad4: e8 00     mov   a,#$00
0ad6: d4 d0     mov   $d0+x,a
0ad8: d5 b0 02  mov   $02b0+x,a
0adb: d5 c0 02  mov   $02c0+x,a
0ade: 6f        ret

0adf: db $01,$02,$04,$08,$10,$20,$40,$80

0ae7: 28 7f     and   a,#$7f
0ae9: 1c        asl   a
0aea: 5d        mov   x,a
0aeb: f5 9b 30  mov   a,$309b+x
0aee: c4 0a     mov   $0a,a
0af0: 3d        inc   x
0af1: f5 9b 30  mov   a,$309b+x
0af4: c4 0b     mov   $0b,a
0af6: 8d 00     mov   y,#$00
0af8: f7 0a     mov   a,($0a)+y
0afa: c5 f6 00  mov   $00f6,a
0afd: fc        inc   y
0afe: f7 0a     mov   a,($0a)+y
0b00: c5 f7 00  mov   $00f7,a
0b03: e8 01     mov   a,#$01
0b05: c5 f1 00  mov   $00f1,a
0b08: e8 11     mov   a,#$11
0b0a: c5 f1 00  mov   $00f1,a
0b0d: e8 ab     mov   a,#$ab
0b0f: c5 f4 00  mov   $00f4,a
0b12: e5 f4 00  mov   a,$00f4
0b15: f0 fb     beq   $0b12
0b17: fc        inc   y
0b18: f7 0a     mov   a,($0a)+y
0b1a: c5 f6 00  mov   $00f6,a
0b1d: fc        inc   y
0b1e: f7 0a     mov   a,($0a)+y
0b20: c5 f7 00  mov   $00f7,a
0b23: e8 01     mov   a,#$01
0b25: c5 f1 00  mov   $00f1,a
0b28: e8 11     mov   a,#$11
0b2a: c5 f1 00  mov   $00f1,a
0b2d: e8 cd     mov   a,#$cd
0b2f: c5 f4 00  mov   $00f4,a
0b32: fc        inc   y
0b33: f7 0a     mov   a,($0a)+y
0b35: c4 0c     mov   $0c,a
0b37: fc        inc   y
0b38: f7 0a     mov   a,($0a)+y
0b3a: c4 0d     mov   $0d,a
0b3c: e5 f4 00  mov   a,$00f4
0b3f: f0 fb     beq   $0b3c
0b41: 8f ef f4  mov   $f4,#$ef
0b44: e8 01     mov   a,#$01
0b46: c5 f1 00  mov   $00f1,a
0b49: e8 11     mov   a,#$11
0b4b: c5 f1 00  mov   $00f1,a
0b4e: 8d 00     mov   y,#$00
0b50: e5 f4 00  mov   a,$00f4
0b53: f0 fb     beq   $0b50
0b55: 68 ff     cmp   a,#$ff
0b57: d0 17     bne   $0b70
0b59: e8 01     mov   a,#$01
0b5b: c5 f1 00  mov   $00f1,a
0b5e: e8 31     mov   a,#$31
0b60: c5 f1 00  mov   $00f1,a
0b63: e8 00     mov   a,#$00
0b65: c5 f4 00  mov   $00f4,a
0b68: c5 f5 00  mov   $00f5,a
0b6b: c4 f6     mov   $f6,a
0b6d: c4 f7     mov   $f7,a
0b6f: 6f        ret

0b70: e5 f6 00  mov   a,$00f6
0b73: d7 0c     mov   ($0c)+y,a
0b75: fc        inc   y
0b76: d0 02     bne   $0b7a
0b78: ab 0d     inc   $0d
0b7a: e5 f7 00  mov   a,$00f7
0b7d: d7 0c     mov   ($0c)+y,a
0b7f: fc        inc   y
0b80: d0 02     bne   $0b84
0b82: ab 0d     inc   $0d
0b84: e8 01     mov   a,#$01
0b86: c5 f1 00  mov   $00f1,a
0b89: e8 11     mov   a,#$11
0b8b: c5 f1 00  mov   $00f1,a
0b8e: cb f4     mov   $f4,y
0b90: 2f be     bra   $0b50
;
; load song header
0b92: 8d 00     mov   y,#$00
0b94: f7 04     mov   a,($04)+y
0b96: c4 06     mov   $06,a             ; number of tracks
; setup for each tracks
0b98: 3d        inc   x
0b99: 09 34 37  or    ($37),($34)
0b9c: c8 08     cmp   x,#$08
0b9e: 90 17     bcc   $0bb7
0ba0: fa 34 11  mov   ($11),($34)
0ba3: 58 ff 11  eor   $11,#$ff
0ba6: 29 11 19  and   ($19),($11)
0ba9: 29 11 3f  and   ($3f),($11)
0bac: e4 3f     mov   a,$3f
0bae: fa 34 11  mov   ($11),($34)
0bb1: 58 ff 11  eor   $11,#$ff
0bb4: 29 11 e2  and   ($e2),($11)
0bb7: fc        inc   y
0bb8: f7 04     mov   a,($04)+y
0bba: d5 00 02  mov   $0200+x,a         ; voice address (lo)
0bbd: fc        inc   y
0bbe: f7 04     mov   a,($04)+y
0bc0: d5 10 02  mov   $0210+x,a         ; voice address (hi)
0bc3: fc        inc   y
0bc4: f7 04     mov   a,($04)+y
0bc6: d5 40 02  mov   $0240+x,a
0bc9: fc        inc   y
0bca: f7 04     mov   a,($04)+y
0bcc: d5 50 02  mov   $0250+x,a
0bcf: fc        inc   y
0bd0: f7 04     mov   a,($04)+y
0bd2: d5 60 02  mov   $0260+x,a
0bd5: fc        inc   y
0bd6: f7 04     mov   a,($04)+y
0bd8: d5 70 02  mov   $0270+x,a
0bdb: 3f 52 0c  call  $0c52
0bde: e8 01     mov   a,#$01
0be0: d4 c0     mov   $c0+x,a
0be2: e8 00     mov   a,#$00
0be4: d4 d0     mov   $d0+x,a
0be6: d5 b0 02  mov   $02b0+x,a
0be9: d5 c0 02  mov   $02c0+x,a
0bec: 0b 34     asl   $34
0bee: 8b 06     dec   $06
0bf0: d0 a6     bne   $0b98
0bf2: 6f        ret

; reset
0bf3: cd 06     mov   x,#$06
0bf5: e8 00     mov   a,#$00
0bf7: af        mov   (x)+,a
0bf8: c8 e4     cmp   x,#$e4
0bfa: d0 fb     bne   $0bf7
0bfc: cd 00     mov   x,#$00
0bfe: d5 00 02  mov   $0200+x,a
0c01: 3d        inc   x
0c02: c8 00     cmp   x,#$00
0c04: d0 f8     bne   $0bfe
0c06: d5 00 03  mov   $0300+x,a
0c09: 3d        inc   x
0c0a: c8 e0     cmp   x,#$e0
0c0c: d0 f8     bne   $0c06
0c0e: cd 18     mov   x,#$18
0c10: f5 39 0c  mov   a,$0c39+x
0c13: fd        mov   y,a
0c14: e8 00     mov   a,#$00
0c16: cc f2 00  mov   $00f2,y
0c19: c5 f3 00  mov   $00f3,a
0c1c: 1d        dec   x
0c1d: 10 f1     bpl   $0c10
0c1f: 8f 40 14  mov   $14,#$40
0c22: 8f 40 15  mov   $15,#$40
0c25: 8f 0f 3e  mov   $3e,#$0f
0c28: 8f 20 1a  mov   $1a,#$20
0c2b: 8f 60 26  mov   $26,#$60
0c2e: e8 60     mov   a,#$60            ; mute, disable echo
0c30: 8d 6c     mov   y,#$6c            ; FLG
0c32: cc f2 00  mov   $00f2,y
0c35: c5 f3 00  mov   $00f3,a
0c38: 6f        ret

0c39: db $5c,$4c,$2c,$3c,$0d,$2d,$3d,$4d,$7d,$00,$01,$10,$11,$20,$21,$30,$31,$40,$41,$50,$51,$60,$61,$70,$71

0c52: 6d        push  y
0c53: f5 50 02  mov   a,$0250+x
0c56: 1c        asl   a
0c57: 1c        asl   a
0c58: fd        mov   y,a
0c59: f6 0f 30  mov   a,$300f+y
0c5c: d5 80 02  mov   $0280+x,a
0c5f: fc        inc   y
0c60: f6 0f 30  mov   a,$300f+y
0c63: d5 90 02  mov   $0290+x,a
0c66: fc        inc   y
0c67: f6 0f 30  mov   a,$300f+y
0c6a: d5 a0 02  mov   $02a0+x,a
0c6d: fc        inc   y
0c6e: f6 0f 30  mov   a,$300f+y
0c71: d5 d0 02  mov   $02d0+x,a
0c74: ee        pop   y
0c75: 6f        ret

0c76: e4 37     mov   a,$37
0c78: 24 34     and   a,$34
0c7a: d0 01     bne   $0c7d
0c7c: 6f        ret

0c7d: c8 08     cmp   x,#$08
0c7f: 30 06     bmi   $0c87
0c81: e4 e2     mov   a,$e2
0c83: 24 34     and   a,$34
0c85: d0 0f     bne   $0c96
0c87: 9b c0     dec   $c0+x             ; decrease delta-time
0c89: d0 0b     bne   $0c96
0c8b: f4 d0     mov   a,$d0+x
0c8d: f0 04     beq   $0c93
0c8f: 9b d0     dec   $d0+x
0c91: 2f 03     bra   $0c96
0c93: 3f a6 0c  call  $0ca6             ; dispatch new voice byte
0c96: 3f ee 0f  call  $0fee
0c99: 3f 79 10  call  $1079
0c9c: 3f db 10  call  $10db
0c9f: 3f 10 11  call  $1110
0ca2: 3f 9c 11  call  $119c
0ca5: 6f        ret

; dispatch voice byte
0ca6: f5 00 02  mov   a,$0200+x
0ca9: c4 08     mov   $08,a
0cab: f5 10 02  mov   a,$0210+x
0cae: c4 09     mov   $09,a
0cb0: 8d 00     mov   y,#$00
0cb2: f7 08     mov   a,($08)+y         ; read vcmd
0cb4: 10 05     bpl   $0cbb
0cb6: 8f 80 12  mov   $12,#$80          ; set if vcmd 80-ff
0cb9: 28 7f     and   a,#$7f
0cbb: 68 65     cmp   a,#$65
0cbd: f0 38     beq   $0cf7
0cbf: 68 66     cmp   a,#$66
0cc1: 90 03     bcc   $0cc6
0cc3: 5f 9a 0d  jmp   $0d9a

0cc6: 60        clrc
0cc7: 95 40 02  adc   a,$0240+x
0cca: c4 38     mov   $38,a
0ccc: c8 08     cmp   x,#$08
0cce: b0 08     bcs   $0cd8
0cd0: e4 36     mov   a,$36
0cd2: 24 34     and   a,$34
0cd4: f0 02     beq   $0cd8
0cd6: 2f 0b     bra   $0ce3
0cd8: 09 34 18  or    ($18),($34)
0cdb: e4 34     mov   a,$34
0cdd: 48 ff     eor   a,#$ff
0cdf: 24 19     and   a,$19
0ce1: c4 19     mov   $19,a
0ce3: f5 50 03  mov   a,$0350+x
0ce6: d5 10 03  mov   $0310+x,a
0ce9: f5 30 03  mov   a,$0330+x
0cec: 08 80     or    a,#$80
0cee: d5 30 03  mov   $0330+x,a
0cf1: f5 20 03  mov   a,$0320+x
0cf4: d5 40 03  mov   $0340+x,a
0cf7: 78 80 12  cmp   $12,#$80
0cfa: d0 09     bne   $0d05
0cfc: f4 50     mov   a,$50+x
0cfe: d4 c0     mov   $c0+x,a
0d00: 8f 00 12  mov   $12,#$00
0d03: 2f 17     bra   $0d1c
0d05: fc        inc   y
0d06: f7 08     mov   a,($08)+y
0d08: 68 79     cmp   a,#$79
0d0a: d0 0c     bne   $0d18
0d0c: fc        inc   y
0d0d: f7 08     mov   a,($08)+y
0d0f: d4 c0     mov   $c0+x,a
0d11: fc        inc   y
0d12: f7 08     mov   a,($08)+y
0d14: d4 d0     mov   $d0+x,a
0d16: 2f 04     bra   $0d1c
0d18: d4 c0     mov   $c0+x,a
0d1a: d4 50     mov   $50+x,a
0d1c: fc        inc   y
0d1d: dd        mov   a,y
0d1e: 60        clrc
0d1f: 84 08     adc   a,$08
0d21: d5 00 02  mov   $0200+x,a
0d24: e4 09     mov   a,$09
0d26: 88 00     adc   a,#$00
0d28: d5 10 02  mov   $0210+x,a
0d2b: 6d        push  y
0d2c: f5 d0 02  mov   a,$02d0+x
0d2f: 4d        push  x
0d30: cd 0c     mov   x,#$0c
0d32: 8d 00     mov   y,#$00
0d34: 9e        div   ya,x
0d35: c4 0d     mov   $0d,a
0d37: 8d 00     mov   y,#$00
0d39: e4 38     mov   a,$38
0d3b: cd 0c     mov   x,#$0c
0d3d: 9e        div   ya,x
0d3e: c4 0a     mov   $0a,a
0d40: dd        mov   a,y
0d41: 1c        asl   a
0d42: fd        mov   y,a
0d43: f6 80 0d  mov   a,$0d80+y
0d46: c4 0b     mov   $0b,a
0d48: fc        inc   y
0d49: f6 80 0d  mov   a,$0d80+y
0d4c: c4 0c     mov   $0c,a
0d4e: 69 0d 0a  cmp   ($0a),($0d)
0d51: f0 20     beq   $0d73
0d53: 90 10     bcc   $0d65
0d55: 80        setc
0d56: a9 0d 0a  sbc   ($0a),($0d)
0d59: f8 0a     mov   x,$0a
0d5b: 60        clrc
0d5c: 0b 0b     asl   $0b
0d5e: 2b 0c     rol   $0c
0d60: 1d        dec   x
0d61: d0 f8     bne   $0d5b
0d63: 2f 0e     bra   $0d73
0d65: 80        setc
0d66: a9 0a 0d  sbc   ($0d),($0a)
0d69: f8 0d     mov   x,$0d
0d6b: 60        clrc
0d6c: 4b 0c     lsr   $0c
0d6e: 6b 0b     ror   $0b
0d70: 1d        dec   x
0d71: d0 f8     bne   $0d6b
0d73: ce        pop   x
0d74: e4 0b     mov   a,$0b
0d76: d5 b0 02  mov   $02b0+x,a
0d79: e4 0c     mov   a,$0c
0d7b: d5 c0 02  mov   $02c0+x,a
0d7e: ee        pop   y
0d7f: 6f        ret

; pitch table
0d80: dw $085f  ; c
0d82: dw $08de  ; c+
0d84: dw $0965  ; d
0d86: dw $09f4  ; d+
0d88: dw $0a8c  ; e
0d8a: dw $0b2c  ; f
0d8c: dw $0bd6  ; f+
0d8e: dw $0c8b  ; g
0d90: dw $0d4a  ; g+
0d92: dw $0e14  ; a
0d94: dw $0eea  ; a+
0d96: dw $0fcd  ; b
0d98: dw $10be  ; c

; dispatch vcmd
0d9a: 80        setc
0d9b: a8 66     sbc   a,#$66
0d9d: 1c        asl   a
0d9e: 4d        push  x
0d9f: 5d        mov   x,a
0da0: 1f a3 0d  jmp   ($0da3+x)

; vcmd dispatch table
0da3: dw $0dc7  ; 66
0da5: dw $0dd7  ; 67
0da7: dw $0dfb  ; 68
0da9: dw $0e0b  ; 69
0dab: dw $0e32  ; 6a
0dad: dw $0e4c  ; 6b
0daf: dw $0e6c  ; 6c
0db1: dw $0e76  ; 6d
0db3: dw $0e87  ; 6e
0db5: dw $0e95  ; 6f
0db7: dw $0ec8  ; 70
0db9: dw $0ed3  ; 71
0dbb: dw $0f3e  ; 72
0dbd: dw $0f5e  ; 73
0dbf: dw $0f75  ; 74
0dc1: dw $0f6c  ; 75
0dc3: dw $0f9e  ; 76
0dc5: dw $0fe3  ; 77

; vcmd 66
0dc7: ce        pop   x
0dc8: fc        inc   y
0dc9: f7 08     mov   a,($08)+y
0dcb: d5 00 02  mov   $0200+x,a
0dce: fc        inc   y
0dcf: f7 08     mov   a,($08)+y
0dd1: d5 10 02  mov   $0210+x,a
0dd4: 5f a6 0c  jmp   $0ca6

; vcmd 67
0dd7: ce        pop   x
0dd8: fc        inc   y
0dd9: f7 08     mov   a,($08)+y
0ddb: d5 00 02  mov   $0200+x,a
0dde: fc        inc   y
0ddf: f7 08     mov   a,($08)+y
0de1: d5 10 02  mov   $0210+x,a
0de4: fc        inc   y
0de5: dd        mov   a,y
0de6: 60        clrc
0de7: 84 08     adc   a,$08
0de9: c4 08     mov   $08,a
0deb: 98 00 09  adc   $09,#$00
0dee: e4 08     mov   a,$08
0df0: d5 20 02  mov   $0220+x,a
0df3: e4 09     mov   a,$09
0df5: d5 30 02  mov   $0230+x,a
0df8: 5f a6 0c  jmp   $0ca6

; vcmd 68
0dfb: ce        pop   x
0dfc: f5 20 02  mov   a,$0220+x
0dff: d5 00 02  mov   $0200+x,a
0e02: f5 30 02  mov   a,$0230+x
0e05: d5 10 02  mov   $0210+x,a
0e08: 5f a6 0c  jmp   $0ca6

; vcmd 69
0e0b: ce        pop   x
0e0c: fc        inc   y
0e0d: f7 08     mov   a,($08)+y
0e0f: c4 3d     mov   $3d,a
0e11: fc        inc   y
0e12: f7 08     mov   a,($08)+y
0e14: c4 1f     mov   $1f,a
0e16: fc        inc   y
0e17: f7 08     mov   a,($08)+y
0e19: c4 3a     mov   $3a,a
0e1b: fc        inc   y
0e1c: f7 08     mov   a,($08)+y
0e1e: c4 3b     mov   $3b,a
0e20: fc        inc   y
0e21: f7 08     mov   a,($08)+y
0e23: c4 3c     mov   $3c,a
0e25: e4 1a     mov   a,$1a
0e27: 28 df     and   a,#$df
0e29: c4 1a     mov   $1a,a
0e2b: 8f 08 39  mov   $39,#$08
0e2e: fc        inc   y
0e2f: 5f b2 0c  jmp   $0cb2

; vcmd 6a
0e32: ce        pop   x
0e33: c8 08     cmp   x,#$08
0e35: b0 0e     bcs   $0e45
0e37: e4 34     mov   a,$34
0e39: 24 36     and   a,$36
0e3b: f0 05     beq   $0e42
0e3d: 09 34 4b  or    ($4b),($34)
0e40: 2f 06     bra   $0e48
0e42: 09 34 4b  or    ($4b),($34)
0e45: 09 34 3f  or    ($3f),($34)
0e48: fc        inc   y
0e49: 5f b2 0c  jmp   $0cb2

; vcmd 6b
0e4c: ce        pop   x
0e4d: fa 34 11  mov   ($11),($34)
0e50: 58 ff 11  eor   $11,#$ff
0e53: c8 08     cmp   x,#$08
0e55: b0 0e     bcs   $0e65
0e57: e4 34     mov   a,$34
0e59: 24 36     and   a,$36
0e5b: f0 05     beq   $0e62
0e5d: 29 11 4b  and   ($4b),($11)
0e60: 2f 06     bra   $0e68
0e62: 29 11 4b  and   ($4b),($11)
0e65: 29 11 3f  and   ($3f),($11)
0e68: fc        inc   y
0e69: 5f b2 0c  jmp   $0cb2

; vcmd 6c
0e6c: ce        pop   x
0e6d: e4 34     mov   a,$34
0e6f: 48 ff     eor   a,#$ff
0e71: 24 37     and   a,$37
0e73: c4 37     mov   $37,a
0e75: 6f        ret

; vcmd 6d
0e76: ce        pop   x
0e77: fc        inc   y
0e78: f7 08     mov   a,($08)+y
0e7a: d5 60 02  mov   $0260+x,a
0e7d: fc        inc   y
0e7e: f7 08     mov   a,($08)+y
0e80: d5 70 02  mov   $0270+x,a
0e83: fc        inc   y
0e84: 5f b2 0c  jmp   $0cb2

; vcmd 6e
0e87: ce        pop   x
0e88: fc        inc   y
0e89: f7 08     mov   a,($08)+y
0e8b: d5 50 02  mov   $0250+x,a
0e8e: 3f 52 0c  call  $0c52
0e91: fc        inc   y
0e92: 5f b2 0c  jmp   $0cb2

; vcmd 6f
0e95: ce        pop   x
0e96: 4d        push  x
0e97: fc        inc   y
0e98: f7 08     mov   a,($08)+y
0e9a: 9f        xcn   a
0e9b: d8 10     mov   $10,x
0e9d: 60        clrc
0e9e: 84 10     adc   a,$10
0ea0: 5d        mov   x,a
0ea1: f4 a0     mov   a,$a0+x
0ea3: f0 0c     beq   $0eb1
0ea5: fc        inc   y
0ea6: 9b a0     dec   $a0+x
0ea8: d0 0e     bne   $0eb8
0eaa: fc        inc   y
0eab: fc        inc   y
0eac: fc        inc   y
0ead: ce        pop   x
0eae: 5f b2 0c  jmp   $0cb2

0eb1: fc        inc   y
0eb2: f7 08     mov   a,($08)+y
0eb4: d4 a0     mov   $a0+x,a
0eb6: 9b a0     dec   $a0+x
0eb8: ce        pop   x
0eb9: fc        inc   y
0eba: f7 08     mov   a,($08)+y
0ebc: d5 00 02  mov   $0200+x,a
0ebf: fc        inc   y
0ec0: f7 08     mov   a,($08)+y
0ec2: d5 10 02  mov   $0210+x,a
0ec5: 5f a6 0c  jmp   $0ca6

; vcmd 70
0ec8: ce        pop   x
0ec9: fc        inc   y
0eca: f7 08     mov   a,($08)+y
0ecc: d5 40 02  mov   $0240+x,a
0ecf: fc        inc   y
0ed0: 5f b2 0c  jmp   $0cb2

; vcmd 71
0ed3: ce        pop   x
0ed4: fc        inc   y
0ed5: f7 08     mov   a,($08)+y
0ed7: d4 60     mov   $60+x,a
0ed9: fc        inc   y
0eda: f7 08     mov   a,($08)+y
0edc: d5 f0 02  mov   $02f0+x,a
0edf: fc        inc   y
0ee0: f7 08     mov   a,($08)+y
0ee2: 60        clrc
0ee3: 95 40 02  adc   a,$0240+x
0ee6: c4 38     mov   $38,a
0ee8: c4 40     mov   $40,a
0eea: 3f 2b 0d  call  $0d2b
0eed: fa 0b 0e  mov   ($0e),($0b)
0ef0: fa 0c 0f  mov   ($0f),($0c)
0ef3: fc        inc   y
0ef4: 3f b2 0c  call  $0cb2
0ef7: e4 38     mov   a,$38
0ef9: d5 00 03  mov   $0300+x,a
0efc: f5 f0 02  mov   a,$02f0+x
0eff: c4 11     mov   $11,a
0f01: e4 40     mov   a,$40
0f03: 75 00 03  cmp   a,$0300+x
0f06: 90 16     bcc   $0f1e
0f08: e4 0e     mov   a,$0e
0f0a: d5 b0 02  mov   $02b0+x,a
0f0d: e4 0f     mov   a,$0f
0f0f: d5 c0 02  mov   $02c0+x,a
0f12: e4 34     mov   a,$34
0f14: 04 42     or    a,$42
0f16: c4 42     mov   $42,a
0f18: ba 0e     movw  ya,$0e
0f1a: 9a 0b     subw  ya,$0b
0f1c: 2f 14     bra   $0f32
0f1e: e4 0e     mov   a,$0e
0f20: d5 b0 02  mov   $02b0+x,a
0f23: e4 0f     mov   a,$0f
0f25: d5 c0 02  mov   $02c0+x,a
0f28: e4 34     mov   a,$34
0f2a: 04 41     or    a,$41
0f2c: c4 41     mov   $41,a
0f2e: ba 0b     movw  ya,$0b
0f30: 9a 0e     subw  ya,$0e
0f32: 4d        push  x
0f33: f8 11     mov   x,$11
0f35: 9e        div   ya,x
0f36: ce        pop   x
0f37: d4 80     mov   $80+x,a
0f39: dd        mov   a,y
0f3a: d5 e0 02  mov   $02e0+x,a
0f3d: 6f        ret

; vcmd 72
0f3e: ce        pop   x
0f3f: fc        inc   y
0f40: f7 08     mov   a,($08)+y
0f42: d5 10 03  mov   $0310+x,a
0f45: d5 50 03  mov   $0350+x,a
0f48: fc        inc   y
0f49: f7 08     mov   a,($08)+y
0f4b: d5 20 03  mov   $0320+x,a
0f4e: fc        inc   y
0f4f: f7 08     mov   a,($08)+y
0f51: d5 30 03  mov   $0330+x,a
0f54: fa 34 11  mov   ($11),($34)
0f57: 09 11 47  or    ($47),($11)
0f5a: fc        inc   y
0f5b: 5f b2 0c  jmp   $0cb2

; vcmd 73
0f5e: ce        pop   x
0f5f: fa 34 11  mov   ($11),($34)
0f62: 58 ff 11  eor   $11,#$ff
0f65: 29 11 47  and   ($47),($11)
0f68: fc        inc   y
0f69: 5f b2 0c  jmp   $0cb2

; vcmd 75
0f6c: 8f 01 4e  mov   $4e,#$01
0f6f: e8 00     mov   a,#$00
0f71: c4 14     mov   $14,a
0f73: c4 15     mov   $15,a
; vcmd 74
0f75: ce        pop   x
0f76: fa 34 11  mov   ($11),($34)
0f79: 58 ff 11  eor   $11,#$ff
0f7c: 29 11 36  and   ($36),($11)
0f7f: 29 11 37  and   ($37),($11)
0f82: 8f 00 4a  mov   $4a,#$00
0f85: fa 4b 3f  mov   ($3f),($4b)
0f88: 8f 08 39  mov   $39,#$08
0f8b: 6f        ret

0f8c: 60        clrc
0f8d: 89 11 08  adc   ($08),($11)
0f90: 98 00 09  adc   $09,#$00
0f93: e4 08     mov   a,$08
0f95: d5 00 02  mov   $0200+x,a
0f98: e4 09     mov   a,$09
0f9a: d5 10 02  mov   $0210+x,a
0f9d: 6f        ret

; vcmd 76
0f9e: fc        inc   y
0f9f: f7 08     mov   a,($08)+y
0fa1: 1c        asl   a
0fa2: 5d        mov   x,a
0fa3: f5 8c 13  mov   a,$138c+x
0fa6: c4 0a     mov   $0a,a
0fa8: f5 a0 13  mov   a,$13a0+x
0fab: c4 0c     mov   $0c,a
0fad: 3d        inc   x
0fae: f5 8c 13  mov   a,$138c+x
0fb1: c4 0b     mov   $0b,a
0fb3: f5 a0 13  mov   a,$13a0+x
0fb6: c4 0d     mov   $0d,a
0fb8: ce        pop   x
0fb9: e4 0a     mov   a,$0a
0fbb: d5 60 03  mov   $0360+x,a
0fbe: d5 a0 03  mov   $03a0+x,a
0fc1: e4 0b     mov   a,$0b
0fc3: d5 70 03  mov   $0370+x,a
0fc6: d5 b0 03  mov   $03b0+x,a
0fc9: e4 0c     mov   a,$0c
0fcb: d5 80 03  mov   $0380+x,a
0fce: d5 c0 03  mov   $03c0+x,a
0fd1: e4 0d     mov   a,$0d
0fd3: d5 90 03  mov   $0390+x,a
0fd6: d5 d0 03  mov   $03d0+x,a
0fd9: fa 34 11  mov   ($11),($34)
0fdc: 09 11 e1  or    ($e1),($11)
0fdf: fc        inc   y
0fe0: 5f b2 0c  jmp   $0cb2

; vcmd 77
0fe3: ce        pop   x
0fe4: e4 34     mov   a,$34
0fe6: 04 e2     or    a,$e2
0fe8: c4 e2     mov   $e2,a
0fea: fc        inc   y
0feb: 5f b2 0c  jmp   $0cb2

0fee: e4 41     mov   a,$41
0ff0: 24 34     and   a,$34
0ff2: d0 07     bne   $0ffb
0ff4: e4 42     mov   a,$42
0ff6: 24 34     and   a,$34
0ff8: d0 37     bne   $1031
0ffa: 6f        ret

0ffb: f4 60     mov   a,$60+x
0ffd: f0 03     beq   $1002
0fff: 9b 60     dec   $60+x
1001: 6f        ret

1002: f5 f0 02  mov   a,$02f0+x
1005: d0 0a     bne   $1011
1007: fa 41 11  mov   ($11),($41)
100a: 3f 68 10  call  $1068
100d: fa 11 41  mov   ($41),($11)
1010: 6f        ret

1011: f5 f0 02  mov   a,$02f0+x
1014: 9c        dec   a
1015: d5 f0 02  mov   $02f0+x,a
1018: 60        clrc
1019: f5 e0 02  mov   a,$02e0+x
101c: 94 90     adc   a,$90+x
101e: d4 90     mov   $90+x,a
1020: f4 80     mov   a,$80+x
1022: 95 b0 02  adc   a,$02b0+x
1025: d5 b0 02  mov   $02b0+x,a
1028: e8 00     mov   a,#$00
102a: 95 c0 02  adc   a,$02c0+x
102d: d5 c0 02  mov   $02c0+x,a
1030: 6f        ret

1031: f4 60     mov   a,$60+x
1033: f0 03     beq   $1038
1035: 9b 60     dec   $60+x
1037: 6f        ret

1038: f5 f0 02  mov   a,$02f0+x
103b: d0 0a     bne   $1047
103d: fa 42 11  mov   ($11),($42)
1040: 3f 68 10  call  $1068
1043: fa 11 42  mov   ($42),($11)
1046: 6f        ret

1047: f5 f0 02  mov   a,$02f0+x
104a: 9c        dec   a
104b: d5 f0 02  mov   $02f0+x,a
104e: 60        clrc
104f: f5 e0 02  mov   a,$02e0+x
1052: 94 90     adc   a,$90+x
1054: ed        notc
1055: d4 90     mov   $90+x,a
1057: f5 b0 02  mov   a,$02b0+x
105a: b4 80     sbc   a,$80+x
105c: d5 b0 02  mov   $02b0+x,a
105f: f5 c0 02  mov   a,$02c0+x
1062: a8 00     sbc   a,#$00
1064: d5 c0 02  mov   $02c0+x,a
1067: 6f        ret

1068: e4 34     mov   a,$34
106a: 48 ff     eor   a,#$ff
106c: 24 11     and   a,$11
106e: c4 11     mov   $11,a
1070: f5 00 03  mov   a,$0300+x
1073: c4 38     mov   $38,a
1075: 3f 2b 0d  call  $0d2b
1078: 6f        ret

1079: fa 34 11  mov   ($11),($34)
107c: 29 47 11  and   ($11),($47)
107f: d0 01     bne   $1082
1081: 6f        ret

1082: f5 10 03  mov   a,$0310+x
1085: f0 05     beq   $108c
1087: 9c        dec   a
1088: d5 10 03  mov   $0310+x,a
108b: 6f        ret

108c: f5 40 03  mov   a,$0340+x
108f: d0 0b     bne   $109c
1091: f5 30 03  mov   a,$0330+x
1094: 48 80     eor   a,#$80
1096: d5 30 03  mov   $0330+x,a
1099: f5 20 03  mov   a,$0320+x
109c: 9c        dec   a
109d: d5 40 03  mov   $0340+x,a
10a0: fa 34 11  mov   ($11),($34)
10a3: 29 41 11  and   ($11),($41)
10a6: d0 32     bne   $10da
10a8: fa 34 11  mov   ($11),($34)
10ab: 29 42 11  and   ($11),($42)
10ae: d0 2a     bne   $10da
10b0: f5 30 03  mov   a,$0330+x
10b3: 10 13     bpl   $10c8
10b5: 28 7f     and   a,#$7f
10b7: 60        clrc
10b8: 95 b0 02  adc   a,$02b0+x
10bb: d5 b0 02  mov   $02b0+x,a
10be: e8 00     mov   a,#$00
10c0: 95 c0 02  adc   a,$02c0+x
10c3: d5 c0 02  mov   $02c0+x,a
10c6: 2f 12     bra   $10da
10c8: f5 b0 02  mov   a,$02b0+x
10cb: 80        setc
10cc: b5 30 03  sbc   a,$0330+x
10cf: d5 b0 02  mov   $02b0+x,a
10d2: f5 c0 02  mov   a,$02c0+x
10d5: a8 00     sbc   a,#$00
10d7: d5 c0 02  mov   $02c0+x,a
10da: 6f        ret

10db: e4 4c     mov   a,$4c
10dd: f0 2e     beq   $110d
10df: e4 4d     mov   a,$4d
10e1: d0 2a     bne   $110d
10e3: fa 4c 4d  mov   ($4d),($4c)
10e6: e4 14     mov   a,$14
10e8: f0 02     beq   $10ec
10ea: 8b 14     dec   $14
10ec: e4 15     mov   a,$15
10ee: f0 02     beq   $10f2
10f0: 8b 15     dec   $15
10f2: e4 3a     mov   a,$3a
10f4: f0 02     beq   $10f8
10f6: 8b 3a     dec   $3a
10f8: e4 3b     mov   a,$3b
10fa: f0 02     beq   $10fe
10fc: 8b 3b     dec   $3b
10fe: e4 14     mov   a,$14
1100: 04 15     or    a,$15
1102: d0 09     bne   $110d
1104: e4 3a     mov   a,$3a
1106: 04 3b     or    a,$3b
1108: d0 03     bne   $110d
110a: 8f 00 4c  mov   $4c,#$00
110d: 8b 4d     dec   $4d
110f: 6f        ret

1110: fa 34 11  mov   ($11),($34)
1113: 29 e1 11  and   ($11),($e1)
1116: d0 01     bne   $1119
1118: 6f        ret

1119: 8d 00     mov   y,#$00
111b: f5 60 03  mov   a,$0360+x
111e: c4 0a     mov   $0a,a
1120: f5 70 03  mov   a,$0370+x
1123: c4 0b     mov   $0b,a
1125: f7 0a     mov   a,($0a)+y
1127: 68 80     cmp   a,#$80
1129: d0 0e     bne   $1139
112b: f5 a0 03  mov   a,$03a0+x
112e: d5 60 03  mov   $0360+x,a
1131: f5 b0 03  mov   a,$03b0+x
1134: d5 70 03  mov   $0370+x,a
1137: 2f e0     bra   $1119
1139: 68 81     cmp   a,#$81
113b: d0 0a     bne   $1147
113d: fa 34 11  mov   ($11),($34)
1140: 58 ff 11  eor   $11,#$ff
1143: 29 11 e1  and   ($e1),($11)
1146: 6f        ret

1147: d5 60 02  mov   $0260+x,a
114a: f5 80 03  mov   a,$0380+x
114d: c4 0c     mov   $0c,a
114f: f5 90 03  mov   a,$0390+x
1152: c4 0d     mov   $0d,a
1154: f7 0c     mov   a,($0c)+y
1156: 68 80     cmp   a,#$80
1158: d0 0e     bne   $1168
115a: f5 c0 03  mov   a,$03c0+x
115d: d5 80 03  mov   $0380+x,a
1160: f5 d0 03  mov   a,$03d0+x
1163: d5 90 03  mov   $0390+x,a
1166: 2f e2     bra   $114a
1168: 68 81     cmp   a,#$81
116a: d0 0a     bne   $1176
116c: fa 34 11  mov   ($11),($34)
116f: 58 ff 11  eor   $11,#$ff
1172: 29 11 e1  and   ($e1),($11)
1175: 6f        ret

1176: d5 70 02  mov   $0270+x,a
1179: e8 01     mov   a,#$01
117b: 60        clrc
117c: 95 60 03  adc   a,$0360+x
117f: d5 60 03  mov   $0360+x,a
1182: e8 00     mov   a,#$00
1184: 95 70 03  adc   a,$0370+x
1187: d5 70 03  mov   $0370+x,a
118a: e8 01     mov   a,#$01
118c: 60        clrc
118d: 95 80 03  adc   a,$0380+x
1190: d5 80 03  mov   $0380+x,a
1193: e8 00     mov   a,#$00
1195: 95 90 03  adc   a,$0390+x
1198: d5 90 03  mov   $0390+x,a
119b: 6f        ret

119c: f4 d0     mov   a,$d0+x
119e: d0 24     bne   $11c4
11a0: f4 c0     mov   a,$c0+x
11a2: 68 01     cmp   a,#$01
11a4: d0 1e     bne   $11c4
11a6: fa 34 11  mov   ($11),($34)
11a9: 58 ff 11  eor   $11,#$ff
11ac: 29 11 41  and   ($41),($11)
11af: 29 11 42  and   ($42),($11)
11b2: c8 08     cmp   x,#$08
11b4: b0 08     bcs   $11be
11b6: e4 36     mov   a,$36
11b8: 24 34     and   a,$34
11ba: f0 02     beq   $11be
11bc: 2f 5b     bra   $1219
11be: 29 11 18  and   ($18),($11)
11c1: 09 34 19  or    ($19),($34)
11c4: c8 08     cmp   x,#$08
11c6: b0 08     bcs   $11d0
11c8: e4 36     mov   a,$36
11ca: 24 34     and   a,$34
11cc: f0 02     beq   $11d0
11ce: 2f 49     bra   $1219
11d0: f5 1a 12  mov   a,$121a+x
11d3: fd        mov   y,a
11d4: f5 60 02  mov   a,$0260+x
11d7: cc f2 00  mov   $00f2,y           ; VOL(L)
11da: c5 f3 00  mov   $00f3,a
11dd: fc        inc   y
11de: f5 70 02  mov   a,$0270+x
11e1: cc f2 00  mov   $00f2,y           ; VOL(R)
11e4: c5 f3 00  mov   $00f3,a
11e7: fc        inc   y
11e8: f5 b0 02  mov   a,$02b0+x
11eb: cc f2 00  mov   $00f2,y           ; P(L)
11ee: c5 f3 00  mov   $00f3,a
11f1: fc        inc   y
11f2: f5 c0 02  mov   a,$02c0+x
11f5: cc f2 00  mov   $00f2,y           ; P(H)
11f8: c5 f3 00  mov   $00f3,a
11fb: fc        inc   y
11fc: f5 80 02  mov   a,$0280+x
11ff: cc f2 00  mov   $00f2,y           ; SRCN
1202: c5 f3 00  mov   $00f3,a
1205: fc        inc   y
1206: f5 90 02  mov   a,$0290+x
1209: cc f2 00  mov   $00f2,y           ; ADSR(1)
120c: c5 f3 00  mov   $00f3,a
120f: fc        inc   y
1210: f5 a0 02  mov   a,$02a0+x
1213: cc f2 00  mov   $00f2,y           ; ADSR(2)
1216: c5 f3 00  mov   $00f3,a
1219: 6f        ret

121a: db $00,$10,$20,$30,$40,$50,$60,$70
1222: db $00,$10,$20,$30,$40,$50,$60,$70

; set A to dsp register Y
122a: cc f2 00  mov   $00f2,y
122d: c5 f3 00  mov   $00f3,a
1230: 6f        ret

; get dsp register Y to A
1231: cc f2 00  mov   $00f2,y
1234: e5 f3 00  mov   a,$00f3
1237: 6f        ret

1238: e8 aa     mov   a,#$aa
123a: c5 f4 00  mov   $00f4,a
123d: e8 bb     mov   a,#$bb
123f: c5 f5 00  mov   $00f5,a
1242: e5 f4 00  mov   a,$00f4
1245: 68 cc     cmp   a,#$cc
1247: d0 f9     bne   $1242
1249: 2f 20     bra   $126b
124b: ec f4 00  mov   y,$00f4
124e: d0 fb     bne   $124b
1250: 5e f4 00  cmp   y,$00f4
1253: d0 0f     bne   $1264
1255: e5 f5 00  mov   a,$00f5
1258: cc f4 00  mov   $00f4,y
125b: d7 0a     mov   ($0a)+y,a
125d: fc        inc   y
125e: d0 f0     bne   $1250
1260: ab 0b     inc   $0b
1262: 2f ec     bra   $1250
1264: 10 ea     bpl   $1250
1266: 5e f4 00  cmp   y,$00f4
1269: 10 e5     bpl   $1250
126b: e5 f6 00  mov   a,$00f6
126e: ec f7 00  mov   y,$00f7
1271: da 0a     movw  $0a,ya
1273: ec f4 00  mov   y,$00f4
1276: e5 f5 00  mov   a,$00f5
1279: cc f4 00  mov   $00f4,y
127c: d0 cd     bne   $124b
127e: cd 31     mov   x,#$31
1280: c9 f1 00  mov   $00f1,x
1283: 6f        ret
