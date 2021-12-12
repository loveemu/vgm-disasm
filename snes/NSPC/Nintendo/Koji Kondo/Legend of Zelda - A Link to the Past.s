; Legend of Zelda: A Link to the Past SPC - loveemu labo
; Disassembler: spcdas v0.01
; 
; The game was also released as:
; * Zelda no Densetsu: Kamigami no Triforce (J)

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
081b: 3f 22 0e  call  $0e22             ; set echo delay to 1 (16ms)
081e: a2 48     set5  $48
0820: e8 60     mov   a,#$60
0822: 8d 0c     mov   y,#$0c
0824: 3f f7 09  call  $09f7             ; master vol L = $60
0827: 8d 1c     mov   y,#$1c
0829: 3f f7 09  call  $09f7             ; master vol R = $60
082c: e8 3c     mov   a,#$3c
082e: 8d 5d     mov   y,#$5d
0830: 3f f7 09  call  $09f7             ; source dir = $3c00
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
0854: f6 ac 11  mov   a,$11ac+y
0857: c5 f2 00  mov   $00f2,a
085a: f6 b6 11  mov   a,$11b6+y
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
0881: 90 31     bcc   $08b4
0883: 3f 45 14  call  $1445
0886: 3f 6d 13  call  $136d
0889: cd 01     mov   x,#$01
088b: 3f e3 08  call  $08e3
088e: 3f ad 14  call  $14ad
0891: 3f b7 13  call  $13b7
0894: cd 02     mov   x,#$02
0896: 3f e3 08  call  $08e3
0899: 3f 0b 15  call  $150b
089c: 3f bc 13  call  $13bc
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
08bf: 3f f9 0a  call  $0af9
08c2: cd 00     mov   x,#$00
08c4: 3f e3 08  call  $08e3
08c7: 5f 44 08  jmp   $0844

08ca: e4 04     mov   a,$04
08cc: f0 12     beq   $08e0
08ce: cd 00     mov   x,#$00
08d0: 8f 01 47  mov   $47,#$01
08d3: f4 31     mov   a,$31+x
08d5: f0 03     beq   $08da
08d7: 3f d5 10  call  $10d5
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
08f1: d0 00     bne   $08f3
08f3: f4 08     mov   a,$08+x
08f5: db 08     mov   $08+x,y
08f7: de 08 05  cbne  $08+x,$08ff
08fa: 8d 00     mov   y,#$00
08fc: db 00     mov   $00+x,y
08fe: 6f        ret

08ff: db 00     mov   $00+x,y
0901: 6f        ret

; handle a note vcmd (80-df)
0902: ad ca     cmp   y,#$ca
0904: 90 05     bcc   $090b
; vcmds ca-df - percussion note
0906: 3f 66 0c  call  $0c66             ; set sample
0909: 8d a4     mov   y,#$a4            ; dispatch as note $a4
; vcmds 80-c7,c8,c9 - note/tie/rest
090b: ad c8     cmp   y,#$c8
090d: b0 f2     bcs   $0901             ; skip if tie/rest
090f: e4 1a     mov   a,$1a
0911: 24 47     and   a,$47
0913: d0 ec     bne   $0901
; vcmds 80-c7 - note (note number in Y)
0915: dd        mov   a,y
0916: 28 7f     and   a,#$7f
0918: 60        clrc
0919: 84 50     adc   a,$50             ; add global transpose
091b: 60        clrc
091c: 95 f0 02  adc   a,$02f0+x         ; add per-voice transpose
091f: d5 61 03  mov   $0361+x,a
0922: f5 81 03  mov   a,$0381+x
0925: d5 60 03  mov   $0360+x,a
0928: f5 b1 02  mov   a,$02b1+x
092b: 5c        lsr   a
092c: e8 00     mov   a,#$00
092e: 7c        ror   a
092f: d5 a0 02  mov   $02a0+x,a
0932: e8 00     mov   a,#$00
0934: d4 b0     mov   $b0+x,a
0936: d5 00 01  mov   $0100+x,a
0939: d5 d0 02  mov   $02d0+x,a
093c: d4 c0     mov   $c0+x,a
093e: 09 47 5e  or    ($5e),($47)       ; set volume changed flg
0941: 09 47 45  or    ($45),($47)       ; set key on shadow bit
0944: f5 80 02  mov   a,$0280+x         ; pitch envelope counter
0947: d4 a0     mov   $a0+x,a           ; portamento counter
0949: f0 1e     beq   $0969
094b: f5 81 02  mov   a,$0281+x
094e: d4 a1     mov   $a1+x,a
0950: f5 90 02  mov   a,$0290+x         ; pitch envelope mode (0:attack / 1:release)
0953: d0 0a     bne   $095f
0955: f5 61 03  mov   a,$0361+x
0958: 80        setc
0959: b5 91 02  sbc   a,$0291+x
095c: d5 61 03  mov   $0361+x,a
095f: f5 91 02  mov   a,$0291+x
0962: 60        clrc
; set DSP pitch from $10/1
0963: 95 61 03  adc   a,$0361+x
0966: 3f ab 0e  call  $0eab
0969: 3f c3 0e  call  $0ec3
096c: 8d 00     mov   y,#$00
096e: e4 11     mov   a,$11
0970: 80        setc
0971: a8 34     sbc   a,#$34
0973: b0 09     bcs   $097e
0975: e4 11     mov   a,$11
0977: 80        setc
0978: a8 13     sbc   a,#$13
097a: b0 06     bcs   $0982
097c: dc        dec   y
097d: 1c        asl   a
097e: 7a 10     addw  ya,$10
0980: da 10     movw  $10,ya
0982: 4d        push  x
0983: e4 11     mov   a,$11
; get pitch from note number in A (with octave correction)
0985: 1c        asl   a
0986: 8d 00     mov   y,#$00
0988: cd 18     mov   x,#$18
098a: 9e        div   ya,x
098b: 5d        mov   x,a
098c: f6 c2 11  mov   a,$11c2+y
098f: c4 15     mov   $15,a
0991: f6 c1 11  mov   a,$11c1+y
0994: c4 14     mov   $14,a             ; set $14/5 from pitch table
0996: f6 c4 11  mov   a,$11c4+y
0999: 2d        push  a
099a: f6 c3 11  mov   a,$11c3+y
099d: ee        pop   y
099e: 9a 14     subw  ya,$14
09a0: eb 10     mov   y,$10
09a2: cf        mul   ya
09a3: dd        mov   a,y
09a4: 8d 00     mov   y,#$00
09a6: 7a 14     addw  ya,$14
09a8: cb 15     mov   $15,y
09aa: 1c        asl   a
09ab: 2b 15     rol   $15
09ad: c4 14     mov   $14,a
09af: 2f 04     bra   $09b5
09b1: 4b 15     lsr   $15
09b3: 7c        ror   a
09b4: 3d        inc   x
09b5: c8 06     cmp   x,#$06
09b7: d0 f8     bne   $09b1
09b9: c4 14     mov   $14,a
09bb: ce        pop   x
09bc: f5 20 02  mov   a,$0220+x
09bf: eb 15     mov   y,$15
09c1: cf        mul   ya
09c2: da 16     movw  $16,ya
09c4: f5 20 02  mov   a,$0220+x
09c7: eb 14     mov   y,$14
09c9: cf        mul   ya
09ca: 6d        push  y
09cb: f5 21 02  mov   a,$0221+x
09ce: eb 14     mov   y,$14
09d0: cf        mul   ya
09d1: 7a 16     addw  ya,$16
09d3: da 16     movw  $16,ya
09d5: f5 21 02  mov   a,$0221+x
09d8: eb 15     mov   y,$15
09da: cf        mul   ya
09db: fd        mov   y,a
09dc: ae        pop   a
09dd: 7a 16     addw  ya,$16
09df: da 16     movw  $16,ya
09e1: 7d        mov   a,x               ; set voice X pitch DSP reg from $16/7
09e2: 9f        xcn   a                 ;  (if vbit clear in $1a)
09e3: 5c        lsr   a
09e4: 08 02     or    a,#$02
09e6: fd        mov   y,a               ; Y = voice X pitch DSP reg
09e7: e4 16     mov   a,$16
09e9: 3f ef 09  call  $09ef
09ec: fc        inc   y
09ed: e4 17     mov   a,$17
; write A to DSP reg Y if vbit clear in $1a
09ef: 2d        push  a
09f0: e4 47     mov   a,$47
09f2: 24 1a     and   a,$1a
09f4: ae        pop   a
09f5: d0 06     bne   $09fd
; write A to DSP reg Y
09f7: cc f2 00  mov   $00f2,y
09fa: c5 f3 00  mov   $00f3,a
09fd: 6f        ret

09fe: e8 00     mov   a,#$00
0a00: 8d 2c     mov   y,#$2c
0a02: 3f f7 09  call  $09f7
0a05: e8 00     mov   a,#$00
0a07: 8d 3c     mov   y,#$3c
0a09: 3f f7 09  call  $09f7
0a0c: e8 ff     mov   a,#$ff
0a0e: 8d 5c     mov   y,#$5c
0a10: 3f f7 09  call  $09f7
0a13: 3f e6 11  call  $11e6
0a16: e8 00     mov   a,#$00
0a18: c5 ca 03  mov   $03ca,a
0a1b: c4 04     mov   $04,a
0a1d: c5 cf 03  mov   $03cf,a
0a20: c5 cb 03  mov   $03cb,a
0a23: c5 cd 03  mov   $03cd,a
0a26: c4 1a     mov   $1a,a
0a28: 6f        ret

0a29: cd 80     mov   x,#$80
0a2b: d8 5a     mov   $5a,x
0a2d: c9 ca 03  mov   $03ca,x
0a30: e8 00     mov   a,#$00
0a32: c4 5b     mov   $5b,a
0a34: 80        setc
0a35: a4 59     sbc   a,$59
0a37: 3f ce 0e  call  $0ece
0a3a: da 5c     movw  $5c,ya
0a3c: 5f 00 0b  jmp   $0b00

0a3f: e5 e1 03  mov   a,$03e1
0a42: d0 1e     bne   $0a62
0a44: e4 59     mov   a,$59
0a46: c5 e1 03  mov   $03e1,a
0a49: e8 70     mov   a,#$70
0a4b: c4 59     mov   $59,a
0a4d: 5f 00 0b  jmp   $0b00

0a50: e5 e1 03  mov   a,$03e1
0a53: f0 0d     beq   $0a62
0a55: e5 e1 03  mov   a,$03e1
0a58: c4 59     mov   $59,a
0a5a: e8 00     mov   a,#$00
0a5c: c5 e1 03  mov   $03e1,a
0a5f: 5f 00 0b  jmp   $0b00

0a62: 6f        ret

0a63: 68 ff     cmp   a,#$ff
0a65: f0 97     beq   $09fe
0a67: 68 f1     cmp   a,#$f1
0a69: f0 be     beq   $0a29
0a6b: 68 f2     cmp   a,#$f2
0a6d: f0 d0     beq   $0a3f
0a6f: 68 f3     cmp   a,#$f3
0a71: f0 dd     beq   $0a50
0a73: 68 f0     cmp   a,#$f0
0a75: f0 0a     beq   $0a81
0a77: 2f 24     bra   $0a9d
0a79: 8c ca 03  dec   $03ca
0a7c: f0 03     beq   $0a81
0a7e: 5f 0c 0b  jmp   $0b0c

0a81: e4 1a     mov   a,$1a
0a83: 48 ff     eor   a,#$ff
0a85: 0e 46 00  tset1 $0046
0a88: 8f 00 04  mov   $04,#$00
0a8b: 8f 00 47  mov   $47,#$00
0a8e: 6f        ret

; read $40/1 into YA with advancing the ptr
0a8f: 8d 00     mov   y,#$00
0a91: f7 40     mov   a,($40)+y
0a93: 3a 40     incw  $40
0a95: 2d        push  a
0a96: f7 40     mov   a,($40)+y
0a98: 3a 40     incw  $40
0a9a: fd        mov   y,a
0a9b: ae        pop   a
0a9c: 6f        ret

; play song in A
0a9d: 60        clrc
0a9e: cd 00     mov   x,#$00
0aa0: c9 ca 03  mov   $03ca,x
0aa3: c9 e1 03  mov   $03e1,x
0aa6: c4 04     mov   $04,a
0aa8: 1c        asl   a
0aa9: 5d        mov   x,a
0aaa: f5 ff cf  mov   a,$cfff+x
0aad: fd        mov   y,a
0aae: f5 fe cf  mov   a,$cffe+x
0ab1: da 40     movw  $40,ya
0ab3: 8f 02 0c  mov   $0c,#$02
0ab6: e4 1a     mov   a,$1a
0ab8: 48 ff     eor   a,#$ff
0aba: 0e 46 00  tset1 $0046
0abd: 6f        ret

; reset song params
0abe: cd 0e     mov   x,#$0e
0ac0: 8f 80 47  mov   $47,#$80          ; last voice
0ac3: e8 ff     mov   a,#$ff
0ac5: d5 01 03  mov   $0301+x,a         ; voice volume = $ff
0ac8: e8 0a     mov   a,#$0a
0aca: 3f bf 0c  call  $0cbf             ; pan = $0a.00
0acd: d5 11 02  mov   $0211+x,a         ; zero instrument
0ad0: d5 81 03  mov   $0381+x,a
0ad3: d5 f0 02  mov   $02f0+x,a
0ad6: d5 80 02  mov   $0280+x,a
0ad9: d5 ff 03  mov   $03ff+x,a
0adc: d4 b1     mov   $b1+x,a
0ade: d4 c1     mov   $c1+x,a
0ae0: 1d        dec   x
0ae1: 1d        dec   x
0ae2: 4b 47     lsr   $47
0ae4: d0 dd     bne   $0ac3             ; loop for each voice
0ae6: c4 5a     mov   $5a,a             ; zero master vol fade counter
0ae8: c4 68     mov   $68,a             ; zero echo vol fade counter
0aea: c4 54     mov   $54,a             ; zero tempo fade counter
0aec: c4 50     mov   $50,a             ; zero global transpose
0aee: c4 42     mov   $42,a             ; zero block repeat count
0af0: c4 5f     mov   $5f,a             ; 
0af2: 8f c0 59  mov   $59,#$c0          ; master vol
0af5: 8f 20 53  mov   $53,#$20          ; tempo
0af8: 6f        ret

0af9: e4 00     mov   a,$00
0afb: f0 03     beq   $0b00
0afd: 5f 63 0a  jmp   $0a63

0b00: e4 04     mov   a,$04
0b02: f0 f4     beq   $0af8
0b04: e5 ca 03  mov   a,$03ca
0b07: f0 03     beq   $0b0c
0b09: 5f 79 0a  jmp   $0a79

0b0c: e4 0c     mov   a,$0c
0b0e: f0 5d     beq   $0b6d
;
0b10: 6e 0c ab  dbnz  $0c,$0abe
0b13: 3f 8f 0a  call  $0a8f             ; read block addr from $40/1, advance ptr
0b16: d0 25     bne   $0b3d             ; load start addresses, if hi-byte is non zero
0b18: fd        mov   y,a               ; refetch lo-byte
0b19: d0 03     bne   $0b1e             ; set/dec repeat count
0b1b: 5f 81 0a  jmp   $0a81             ; key off, return if also zero
; set/dec repeat count
0b1e: 68 80     cmp   a,#$80
0b20: f0 06     beq   $0b28             ; $80 : $1b = a, continue
0b22: 68 81     cmp   a,#$81
0b24: d0 06     bne   $0b2c             ; $81 : $1b = 0, continue
0b26: e8 00     mov   a,#$00
0b28: c4 1b     mov   $1b,a
0b2a: 2f e7     bra   $0b13
0b2c: 8b 42     dec   $42
0b2e: 10 02     bpl   $0b32
0b30: c4 42     mov   $42,a
0b32: 3f 8f 0a  call  $0a8f             ; read next word as well
0b35: f8 42     mov   x,$42
0b37: f0 da     beq   $0b13
0b39: da 40     movw  $40,ya            ;   "goto" that address
0b3b: 2f d6     bra   $0b13             ; continue
; load start addresses - hi-byte not zero
0b3d: da 16     movw  $16,ya
0b3f: 8d 0f     mov   y,#$0f
0b41: f7 16     mov   a,($16)+y
0b43: d6 30 00  mov   $0030+y,a
0b46: dc        dec   y
0b47: 10 f8     bpl   $0b41             ; set all reading ptrs
0b49: cd 00     mov   x,#$00
0b4b: 8f 01 47  mov   $47,#$01          ; first voice
0b4e: f4 31     mov   a,$31+x
0b50: f0 0a     beq   $0b5c             ; if vptr hi != 0
0b52: f5 11 02  mov   a,$0211+x
0b55: d0 05     bne   $0b5c
0b57: e8 00     mov   a,#$00
0b59: 3f 66 0c  call  $0c66             ; set instrument #0 if not set
0b5c: e8 00     mov   a,#$00
0b5e: d4 80     mov   $80+x,a           ; zero subroutine repeat counter
0b60: d4 90     mov   $90+x,a           ; zero voice vol fade counter
0b62: d4 91     mov   $91+x,a           ; zero pan fade counter
0b64: bc        inc   a
0b65: d4 70     mov   $70+x,a           ; set duration counter to 1
0b67: 3d        inc   x
0b68: 3d        inc   x
0b69: 0b 47     asl   $47               ; next voice
0b6b: d0 e1     bne   $0b4e             ; foreach voice
;
0b6d: cd 00     mov   x,#$00
0b6f: d8 5e     mov   $5e,x
0b71: 8f 01 47  mov   $47,#$01          ; first voice
0b74: d8 44     mov   $44,x
0b76: f4 31     mov   a,$31+x
0b78: f0 7a     beq   $0bf4             ; next if vptr hi zero
0b7a: 9b 70     dec   $70+x             ; dec duration counter
0b7c: d0 6c     bne   $0bea             ; if not zero, skip to voice readahead
0b7e: 3f 5c 0c  call  $0c5c             ; read vcmd into A and Y
0b81: d0 17     bne   $0b9a
; vcmd 00 - end repeat/return
0b83: f4 80     mov   a,$80+x
0b85: f0 8c     beq   $0b13             ; read next block if loop has been done
; repeat / return from subroutine
0b87: 3f b7 0d  call  $0db7             ; jump to loop start addr
0b8a: 9b 80     dec   $80+x             ; dec repeat count
0b8c: d0 f0     bne   $0b7e             ; if the loop has been done
0b8e: f5 30 02  mov   a,$0230+x
0b91: d4 30     mov   $30+x,a
0b93: f5 31 02  mov   a,$0231+x
0b96: d4 31     mov   $31+x,a           ; back to return addr instead
0b98: 2f e4     bra   $0b7e             ; then continue
; vcmd branches
0b9a: 30 20     bmi   $0bbc             ; vcmds 01-7f - note info:
0b9c: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
0b9f: 3f 5c 0c  call  $0c5c             ;   read next byte
0ba2: 30 18     bmi   $0bbc             ;   if note note then
0ba4: 2d        push  a
0ba5: 9f        xcn   a
0ba6: 28 07     and   a,#$07
0ba8: fd        mov   y,a
0ba9: f6 96 3d  mov   a,$3d96+y
0bac: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
0baf: ae        pop   a
0bb0: 28 0f     and   a,#$0f
0bb2: fd        mov   y,a
0bb3: f6 9e 3d  mov   a,$3d9e+y
0bb6: d5 10 02  mov   $0210+x,a         ;   set per-note vol from low nybble
0bb9: 3f 5c 0c  call  $0c5c             ;   read vcmd into A and Y
; vcmd branches 80-ff
0bbc: 68 e0     cmp   a,#$e0
0bbe: 90 05     bcc   $0bc5
0bc0: 3f 4a 0c  call  $0c4a             ; vcmds e0-ff
0bc3: 2f b9     bra   $0b7e
; vcmds 80-df - note
0bc5: f5 ff 03  mov   a,$03ff+x
0bc8: 04 1b     or    a,$1b
0bca: d0 0c     bne   $0bd8
0bcc: dd        mov   a,y
0bcd: 2d        push  a
0bce: e4 47     mov   a,$47
0bd0: 24 1a     and   a,$1a
0bd2: ae        pop   a
0bd3: d0 03     bne   $0bd8
0bd5: 3f 02 09  call  $0902             ; handle note cmd if vbit $1a clear
0bd8: f5 00 02  mov   a,$0200+x
0bdb: d4 70     mov   $70+x,a           ; set duration counter from duration
0bdd: fd        mov   y,a
0bde: f5 01 02  mov   a,$0201+x
0be1: cf        mul   ya
0be2: dd        mov   a,y
0be3: d0 01     bne   $0be6
0be5: bc        inc   a
0be6: d4 71     mov   $71+x,a           ; set actual key-off dur counter
0be8: 2f 07     bra   $0bf1
0bea: e4 1b     mov   a,$1b
0bec: d0 06     bne   $0bf4
0bee: 3f f6 0f  call  $0ff6             ; do readahead
0bf1: 3f 7a 0e  call  $0e7a
0bf4: 3d        inc   x
0bf5: 3d        inc   x
0bf6: 0b 47     asl   $47
0bf8: f0 03     beq   $0bfd
0bfa: 5f 74 0b  jmp   $0b74

0bfd: e4 54     mov   a,$54             ; tempo fade counter
0bff: f0 0b     beq   $0c0c
0c01: ba 56     movw  ya,$56
0c03: 7a 52     addw  ya,$52            ; add tempo fade to tempo
0c05: 6e 54 02  dbnz  $54,$0c0a
0c08: ba 54     movw  ya,$54            ; last time: move tempo target to tempo
0c0a: da 52     movw  $52,ya
0c0c: e4 68     mov   a,$68             ; echo vol fade counter
0c0e: f0 15     beq   $0c25
0c10: ba 64     movw  ya,$64
0c12: 7a 60     addw  ya,$60            ; add echo L delta to echo L vol
0c14: da 60     movw  $60,ya
0c16: ba 66     movw  ya,$66
0c18: 7a 62     addw  ya,$62            ; add echo R delta to echo R vol
0c1a: 6e 68 06  dbnz  $68,$0c23
0c1d: ba 68     movw  ya,$68
0c1f: da 60     movw  $60,ya
0c21: eb 6a     mov   y,$6a
0c23: da 62     movw  $62,ya
0c25: e4 5a     mov   a,$5a             ; master vol fade counter
0c27: f0 0e     beq   $0c37
0c29: ba 5c     movw  ya,$5c
0c2b: 7a 58     addw  ya,$58            ; add master vol delta to value
0c2d: 6e 5a 02  dbnz  $5a,$0c32
0c30: ba 5a     movw  ya,$5a
0c32: da 58     movw  $58,ya
0c34: 8f ff 5e  mov   $5e,#$ff          ; set all vol chg flags
0c37: cd 00     mov   x,#$00
0c39: 8f 01 47  mov   $47,#$01          ; first voice
0c3c: f4 31     mov   a,$31+x
0c3e: f0 03     beq   $0c43
0c40: 3f 3f 0f  call  $0f3f             ; do per-voice fades
0c43: 3d        inc   x
0c44: 3d        inc   x
0c45: 0b 47     asl   $47
0c47: d0 f3     bne   $0c3c
0c49: 6f        ret

; dispatch vcmd in A (e0-ff)
0c4a: 1c        asl   a                 ; e0-ff => c0-fe (8 bit)
0c4b: fd        mov   y,a
0c4c: f6 2b 0e  mov   a,$0e2b+y
0c4f: 2d        push  a
0c50: f6 2a 0e  mov   a,$0e2a+y
0c53: 2d        push  a                 ; push jump address from table
0c54: dd        mov   a,y
0c55: 5c        lsr   a
0c56: fd        mov   y,a
0c57: f6 c0 0e  mov   a,$0ec0+y         ; vcmd length
0c5a: f0 08     beq   $0c64             ; if non zero
; read new argument to A and Y
0c5c: e7 30     mov   a,($30+x)
; advance reading ptr
0c5e: bb 30     inc   $30+x
0c60: d0 02     bne   $0c64
0c62: bb 31     inc   $31+x             ; inc reading ptr
0c64: fd        mov   y,a
0c65: 6f        ret                     ; jump to vcmd

; vcmd e0 - set instrument
0c66: d5 11 02  mov   $0211+x,a
0c69: fd        mov   y,a
0c6a: 10 06     bpl   $0c72             ; if percussion note:
0c6c: 80        setc
0c6d: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
0c6f: 60        clrc
0c70: 84 5f     adc   a,$5f             ; add perc patch base
0c72: 8d 06     mov   y,#$06
; set sample A in bank at $14/5 width Y
0c74: cf        mul   ya
0c75: da 14     movw  $14,ya
0c77: 60        clrc
0c78: 98 00 14  adc   $14,#$00
0c7b: 98 3d 15  adc   $15,#$3d
0c7e: e4 1a     mov   a,$1a
0c80: 24 47     and   a,$47
0c82: d0 3a     bne   $0cbe
0c84: 4d        push  x
0c85: 7d        mov   a,x
0c86: 9f        xcn   a
0c87: 5c        lsr   a
0c88: 08 04     or    a,#$04            ; voice X SRCN
0c8a: 5d        mov   x,a
0c8b: 8d 00     mov   y,#$00
0c8d: f7 14     mov   a,($14)+y
0c8f: 10 0e     bpl   $0c9f
0c91: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0c93: 38 20 48  and   $48,#$20          ;  keep echo bit from FLG
0c96: 0e 48 00  tset1 $0048             ;  OR in noise freq
0c99: 09 47 49  or    ($49),($47)       ;  set vbit in noise enable
0c9c: dd        mov   a,y               ;  set SRCN to 0
0c9d: 2f 07     bra   $0ca6             ; else
0c9f: e4 47     mov   a,$47
0ca1: 4e 49 00  tclr1 $0049             ;  clear noise vbit
0ca4: f7 14     mov   a,($14)+y         ;  set SRCN from table
0ca6: c9 f2 00  mov   $00f2,x
0ca9: c5 f3 00  mov   $00f3,a
0cac: 3d        inc   x
0cad: fc        inc   y
0cae: ad 04     cmp   y,#$04
0cb0: d0 f2     bne   $0ca4             ; set SRCN, ADSR1/2, GAIN from table
0cb2: ce        pop   x
0cb3: f7 14     mov   a,($14)+y
0cb5: d5 21 02  mov   $0221+x,a         ; set pitch multiplier
0cb8: fc        inc   y
0cb9: f7 14     mov   a,($14)+y
0cbb: d5 20 02  mov   $0220+x,a
0cbe: 6f        ret

; vcmd e1 - pan
0cbf: d5 51 03  mov   $0351+x,a
0cc2: 28 1f     and   a,#$1f
0cc4: d5 31 03  mov   $0331+x,a         ; voice pan value
0cc7: e8 00     mov   a,#$00
0cc9: d5 30 03  mov   $0330+x,a
0ccc: 6f        ret

; vcmd e2 - pan fade
0ccd: d4 91     mov   $91+x,a
0ccf: 2d        push  a
0cd0: 3f 5c 0c  call  $0c5c
0cd3: d5 50 03  mov   $0350+x,a
0cd6: 80        setc
0cd7: b5 31 03  sbc   a,$0331+x         ; current pan value
0cda: ce        pop   x
0cdb: 3f ce 0e  call  $0ece             ; delta = pan value / steps
0cde: d5 40 03  mov   $0340+x,a
0ce1: dd        mov   a,y
0ce2: d5 41 03  mov   $0341+x,a
0ce5: 6f        ret

; vcmd e3 - vibrato on
0ce6: d5 b0 02  mov   $02b0+x,a
0ce9: 3f 5c 0c  call  $0c5c
0cec: d5 a1 02  mov   $02a1+x,a
0cef: 3f 5c 0c  call  $0c5c
; vcmd e4 - vibrato off
0cf2: d4 b1     mov   $b1+x,a
0cf4: d5 c1 02  mov   $02c1+x,a
0cf7: e8 00     mov   a,#$00
0cf9: d5 b1 02  mov   $02b1+x,a
0cfc: 6f        ret

; vcmd f0 - vibrato fade
0cfd: d5 b1 02  mov   $02b1+x,a
0d00: 2d        push  a
0d01: 8d 00     mov   y,#$00
0d03: f4 b1     mov   a,$b1+x
0d05: ce        pop   x
0d06: 9e        div   ya,x
0d07: f8 44     mov   x,$44
0d09: d5 c0 02  mov   $02c0+x,a
0d0c: 6f        ret

; vcmd e5 - master volume
0d0d: e5 ca 03  mov   a,$03ca
0d10: d0 09     bne   $0d1b
0d12: e5 e1 03  mov   a,$03e1
0d15: d0 04     bne   $0d1b
0d17: e8 00     mov   a,#$00
0d19: da 58     movw  $58,ya
0d1b: 6f        ret

; vcmd e6 - master volume fade
0d1c: c4 5a     mov   $5a,a
0d1e: 3f 5c 0c  call  $0c5c
0d21: c4 5b     mov   $5b,a
0d23: 80        setc
0d24: a4 59     sbc   a,$59
0d26: f8 5a     mov   x,$5a
0d28: 3f ce 0e  call  $0ece
0d2b: da 5c     movw  $5c,ya
0d2d: 6f        ret

; vcmd e7 - tempo
0d2e: e8 00     mov   a,#$00
0d30: da 52     movw  $52,ya
0d32: 6f        ret

; vcmd e8 - tempo fade
0d33: c4 54     mov   $54,a
0d35: 3f 5c 0c  call  $0c5c
0d38: c4 55     mov   $55,a
0d3a: 80        setc
0d3b: a4 53     sbc   a,$53
0d3d: f8 54     mov   x,$54
0d3f: 3f ce 0e  call  $0ece
0d42: da 56     movw  $56,ya
0d44: 6f        ret

; vcmd e9 - global transpose
0d45: c4 50     mov   $50,a
0d47: 6f        ret

; vcmd ea - per-voice transpose
0d48: d5 f0 02  mov   $02f0+x,a
0d4b: 6f        ret

; vcmd eb - tremolo on
0d4c: d5 e0 02  mov   $02e0+x,a
0d4f: 3f 5c 0c  call  $0c5c
0d52: d5 d1 02  mov   $02d1+x,a
0d55: 3f 5c 0c  call  $0c5c
; vcmd ec - tremolo off
0d58: d4 c1     mov   $c1+x,a
0d5a: 6f        ret

; vcmd f1 - pitch envelope (release)
0d5b: e8 01     mov   a,#$01
0d5d: 2f 02     bra   $0d61
; vcmd f2 - pitch envelope (attack)
0d5f: e8 00     mov   a,#$00
0d61: d5 90 02  mov   $0290+x,a
0d64: dd        mov   a,y
0d65: d5 81 02  mov   $0281+x,a
0d68: 3f 5c 0c  call  $0c5c
0d6b: d5 80 02  mov   $0280+x,a
0d6e: 3f 5c 0c  call  $0c5c
0d71: d5 91 02  mov   $0291+x,a
0d74: 6f        ret

; vcmd f3 - pitch envelope off
0d75: d5 80 02  mov   $0280+x,a
0d78: 6f        ret

; vcmd ed - volume
0d79: d5 01 03  mov   $0301+x,a
0d7c: e8 00     mov   a,#$00
0d7e: d5 00 03  mov   $0300+x,a
0d81: 6f        ret

; vcmd ee - volume fade
0d82: d4 90     mov   $90+x,a
0d84: 2d        push  a
0d85: 3f 5c 0c  call  $0c5c
0d88: d5 20 03  mov   $0320+x,a
0d8b: 80        setc
0d8c: b5 01 03  sbc   a,$0301+x
0d8f: ce        pop   x
0d90: 3f ce 0e  call  $0ece
0d93: d5 10 03  mov   $0310+x,a
0d96: dd        mov   a,y
0d97: d5 11 03  mov   $0311+x,a
0d9a: 6f        ret

; vcmd f4 - tuning
0d9b: d5 81 03  mov   $0381+x,a
0d9e: 6f        ret

; vcmd ef - call subroutine
0d9f: d5 40 02  mov   $0240+x,a
0da2: 3f 5c 0c  call  $0c5c
0da5: d5 41 02  mov   $0241+x,a         ; $0240/1+X - destination (arg1/2)
0da8: 3f 5c 0c  call  $0c5c
0dab: d4 80     mov   $80+x,a           ; repeat count from arg3
0dad: f4 30     mov   a,$30+x
0daf: d5 30 02  mov   $0230+x,a
0db2: f4 31     mov   a,$31+x
0db4: d5 31 02  mov   $0231+x,a         ; $0230/1+X - return addr
; jump to $0240/1+X (loop destination)
0db7: f5 40 02  mov   a,$0240+x
0dba: d4 30     mov   $30+x,a
0dbc: f5 41 02  mov   a,$0241+x
0dbf: d4 31     mov   $31+x,a
0dc1: 6f        ret

; vcmd f5 - echo vbits/volume
0dc2: c5 c3 03  mov   $03c3,a
0dc5: c4 4a     mov   $4a,a             ; echo vbit shadow = arg1
0dc7: 3f 5c 0c  call  $0c5c
0dca: e8 00     mov   a,#$00
0dcc: da 60     movw  $60,ya            ; echo vol L shadow = arg2
0dce: 3f 5c 0c  call  $0c5c
0dd1: e8 00     mov   a,#$00
0dd3: da 62     movw  $62,ya            ; echo vol R shadow = arg3
0dd5: b2 48     clr5  $48
0dd7: 6f        ret

; vcmd f8 - echo volume fade
0dd8: c4 68     mov   $68,a
0dda: 3f 5c 0c  call  $0c5c
0ddd: c4 69     mov   $69,a
0ddf: 80        setc
0de0: a4 61     sbc   a,$61
0de2: f8 68     mov   x,$68
0de4: 3f ce 0e  call  $0ece
0de7: da 64     movw  $64,ya
0de9: 3f 5c 0c  call  $0c5c
0dec: c4 6a     mov   $6a,a
0dee: 80        setc
0def: a4 63     sbc   a,$63
0df1: f8 68     mov   x,$68
0df3: 3f ce 0e  call  $0ece
0df6: da 66     movw  $66,ya
0df8: 6f        ret

; vcmd f6 - disable echo
0df9: da 60     movw  $60,ya            ; zero echo vol L shadow
0dfb: da 62     movw  $62,ya            ; zero echo vol R shadow
0dfd: a2 48     set5  $48               ; disable echo write
0dff: 6f        ret

; vcmd f7 - set echo params
0e00: 3f 22 0e  call  $0e22             ; set echo delay from arg1
0e03: 3f 5c 0c  call  $0c5c
0e06: c4 4e     mov   $4e,a             ; set echo feedback shadow from arg2
0e08: 3f 5c 0c  call  $0c5c
0e0b: 8d 08     mov   y,#$08
0e0d: cf        mul   ya
0e0e: 5d        mov   x,a
0e0f: 8d 0f     mov   y,#$0f
0e11: f5 8d 11  mov   a,$118d+x         ; filter table
0e14: 3f f7 09  call  $09f7
0e17: 3d        inc   x
0e18: dd        mov   a,y
0e19: 60        clrc
0e1a: 88 10     adc   a,#$10
0e1c: fd        mov   y,a
0e1d: 10 f2     bpl   $0e11             ; set echo filter from table index arg3
0e1f: f8 44     mov   x,$44
0e21: 6f        ret
; set echo delay to A
0e22: c4 4d     mov   $4d,a
0e24: 8d 7d     mov   y,#$7d
0e26: cc f2 00  mov   $00f2,y
0e29: e5 f3 00  mov   a,$00f3           ; set echo delay
0e2c: 64 4d     cmp   a,$4d
0e2e: f0 2b     beq   $0e5b             ; same as $4d?
0e30: 28 0f     and   a,#$0f
0e32: 48 ff     eor   a,#$ff
0e34: f3 4c 03  bbc7  $4c,$0e3a
0e37: 60        clrc
0e38: 84 4c     adc   a,$4c
0e3a: c4 4c     mov   $4c,a
0e3c: 8d 04     mov   y,#$04
0e3e: f6 ac 11  mov   a,$11ac+y         ; shadow reg DSP reg table
0e41: c5 f2 00  mov   $00f2,a
0e44: e8 00     mov   a,#$00
0e46: c5 f3 00  mov   $00f3,a
0e49: fe f3     dbnz  y,$0e3e           ; zero echo vol, feedback, vbit DSP regs
0e4b: e4 48     mov   a,$48
0e4d: 08 20     or    a,#$20
0e4f: 8d 6c     mov   y,#$6c
0e51: 3f f7 09  call  $09f7             ; set FLG from shadow but disable echo
0e54: e4 4d     mov   a,$4d
0e56: 8d 7d     mov   y,#$7d
0e58: 3f f7 09  call  $09f7             ; set echo delay from $4d
0e5b: 1c        asl   a
0e5c: 1c        asl   a
0e5d: 1c        asl   a
0e5e: 48 ff     eor   a,#$ff
0e60: 80        setc
0e61: 88 d0     adc   a,#$d0
0e63: 8d 6d     mov   y,#$6d
0e65: 5f f7 09  jmp   $09f7             ; set echo region to $d000-8*delay

; vcmd fa - set perc patch base
0e68: c4 5f     mov   $5f,a
0e6a: 6f        ret

; (unused?) vcmd fb - skip 2 bytes
0e6b: 3f 5e 0c  call  $0c5e
0e6e: 6f        ret

; (unused?) vcmd fc
0e6f: bc        inc   a
0e70: d5 ff 03  mov   $03ff+x,a
0e73: 6f        ret

; (unused?) vcmd fd
0e74: bc        inc   a
; (unused?) vcmd fe
0e75: c4 1b     mov   $1b,a
0e77: 5f b6 0a  jmp   $0ab6

0e7a: f4 a0     mov   a,$a0+x
0e7c: d0 44     bne   $0ec2
0e7e: e7 30     mov   a,($30+x)
0e80: 68 f9     cmp   a,#$f9
0e82: d0 3e     bne   $0ec2
0e84: e4 47     mov   a,$47
0e86: 24 1a     and   a,$1a
0e88: f0 0b     beq   $0e95
0e8a: 8f 04 10  mov   $10,#$04
0e8d: 3f 5e 0c  call  $0c5e
0e90: 6e 10 fa  dbnz  $10,$0e8d
0e93: 2f 2d     bra   $0ec2
0e95: 3f 5e 0c  call  $0c5e
0e98: 3f 5c 0c  call  $0c5c
; vcmd f9 - pitch slide
0e9b: d4 a1     mov   $a1+x,a
0e9d: 3f 5c 0c  call  $0c5c
0ea0: d4 a0     mov   $a0+x,a
0ea2: 3f 5c 0c  call  $0c5c
0ea5: 60        clrc
0ea6: 84 50     adc   a,$50             ; add global transpose
0ea8: 95 f0 02  adc   a,$02f0+x         ; per-voice transpose
; calculate portamento delta
0eab: 28 7f     and   a,#$7f
0ead: d5 80 03  mov   $0380+x,a         ; final portamento value
0eb0: 80        setc
0eb1: b5 61 03  sbc   a,$0361+x         ; note number
0eb4: fb a0     mov   y,$a0+x           ; portamento steps
0eb6: 6d        push  y
0eb7: ce        pop   x
0eb8: 3f ce 0e  call  $0ece
0ebb: d5 70 03  mov   $0370+x,a
0ebe: dd        mov   a,y
0ebf: d5 71 03  mov   $0371+x,a         ; portamento delta
0ec2: 6f        ret

0ec3: f5 61 03  mov   a,$0361+x
0ec6: c4 11     mov   $11,a
0ec8: f5 60 03  mov   a,$0360+x
0ecb: c4 10     mov   $10,a
0ecd: 6f        ret

; signed 16 bit division
0ece: ed        notc
0ecf: 6b 12     ror   $12
0ed1: 10 03     bpl   $0ed6
0ed3: 48 ff     eor   a,#$ff
0ed5: bc        inc   a
0ed6: 8d 00     mov   y,#$00
0ed8: 9e        div   ya,x
0ed9: 2d        push  a
0eda: e8 00     mov   a,#$00
0edc: 9e        div   ya,x
0edd: ee        pop   y
0ede: f8 44     mov   x,$44
0ee0: f3 12 06  bbc7  $12,$0ee9
0ee3: da 14     movw  $14,ya
0ee5: ba 0e     movw  ya,$0e
0ee7: 9a 14     subw  ya,$14
0ee9: 6f        ret

; vcmd dispatch table ($0e2a)
0eea: dw $0c66  ; e0 - set instrument
0eec: dw $0cbf  ; e1 - pan
0eee: dw $0ccd  ; e2 - pan fade
0ef0: dw $0ce6  ; e3 - vibrato on
0ef2: dw $0cf2  ; e4 - vibrato off
0ef4: dw $0d0d  ; e5 - master volume
0ef6: dw $0d1c  ; e6 - master volume fade
0ef8: dw $0d2e  ; e7 - tempo
0efa: dw $0d33  ; e8 - tempo fade
0efc: dw $0d45  ; e9 - global transpose
0efe: dw $0d48  ; ea - per-voice transpose
0f00: dw $0d4c  ; eb - tremolo on
0f02: dw $0d58  ; ec - tremolo off
0f04: dw $0d79  ; ed - volume
0f06: dw $0d82  ; ee - volume fade
0f08: dw $0d9f  ; ef - call subroutine
0f0a: dw $0cfd  ; f0 - vibrato fade
0f0c: dw $0d5b  ; f1 - pitch envelope (release)
0f0e: dw $0d5f  ; f2 - pitch envelope (attack)
0f10: dw $0d75  ; f3 - pitch envelope off
0f12: dw $0d9b  ; f4 - tuning
0f14: dw $0dc2  ; f5 - echo vbits/volume
0f16: dw $0df9  ; f6 - disable echo
0f18: dw $0e00  ; f7 - set echo params
0f1a: dw $0dd8  ; f8 - echo volume fade
0f1c: dw $0e9b  ; f9 - pitch slide
0f1e: dw $0e68  ; fa - set perc patch base
                ; fb-fe undefined?
                ; ff undefined

; vcmd lengths ($0ec0)
0f20: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0f28: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0f30: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0f38: db $03,$03,$01,$02,$00,$00,$00     ; f8-fe

; do voice fades
0f3f: f4 90     mov   a,$90+x           ; voice volume fade counter
0f41: f0 09     beq   $0f4c
0f43: e8 00     mov   a,#$00
0f45: 8d 03     mov   y,#$03
0f47: 9b 90     dec   $90+x             ; dec voice vol fade counter
0f49: 3f d2 0f  call  $0fd2
0f4c: fb c1     mov   y,$c1+x
0f4e: f0 23     beq   $0f73
0f50: f5 e0 02  mov   a,$02e0+x
0f53: de c0 1b  cbne  $c0+x,$0f71
0f56: 09 47 5e  or    ($5e),($47)
0f59: f5 d0 02  mov   a,$02d0+x
0f5c: 10 07     bpl   $0f65
0f5e: fc        inc   y
0f5f: d0 04     bne   $0f65
0f61: e8 80     mov   a,#$80
0f63: 2f 04     bra   $0f69
0f65: 60        clrc
0f66: 95 d1 02  adc   a,$02d1+x
0f69: d5 d0 02  mov   $02d0+x,a
0f6c: 3f 5b 11  call  $115b
0f6f: 2f 07     bra   $0f78
0f71: bb c0     inc   $c0+x
0f73: e8 ff     mov   a,#$ff
0f75: 3f 66 11  call  $1166
0f78: f4 91     mov   a,$91+x
0f7a: f0 09     beq   $0f85
0f7c: e8 30     mov   a,#$30
0f7e: 8d 03     mov   y,#$03
0f80: 9b 91     dec   $91+x
0f82: 3f d2 0f  call  $0fd2
0f85: e4 47     mov   a,$47
0f87: 24 5e     and   a,$5e
0f89: f0 46     beq   $0fd1
0f8b: f5 31 03  mov   a,$0331+x
0f8e: fd        mov   y,a
0f8f: f5 30 03  mov   a,$0330+x
0f92: da 10     movw  $10,ya
0f94: 7d        mov   a,x
0f95: 9f        xcn   a
0f96: 5c        lsr   a
0f97: c4 12     mov   $12,a
0f99: eb 11     mov   y,$11
0f9b: f6 79 11  mov   a,$1179+y         ; next pan val from table
0f9e: 80        setc
0f9f: b6 78 11  sbc   a,$1178+y         ; pan val
0fa2: eb 10     mov   y,$10
0fa4: cf        mul   ya
0fa5: dd        mov   a,y
0fa6: eb 11     mov   y,$11
0fa8: 60        clrc
0fa9: 96 78 11  adc   a,$1178+y         ; add integer part to pan val
0fac: fd        mov   y,a
0fad: f5 21 03  mov   a,$0321+x         ; volume
0fb0: cf        mul   ya
0fb1: f5 51 03  mov   a,$0351+x         ; bits 7/6 will negate volume L/R
0fb4: 1c        asl   a
0fb5: 13 12 01  bbc0  $12,$0fb9
0fb8: 1c        asl   a
0fb9: dd        mov   a,y
0fba: 90 03     bcc   $0fbf
0fbc: 48 ff     eor   a,#$ff
0fbe: bc        inc   a
0fbf: eb 12     mov   y,$12
0fc1: 3f ef 09  call  $09ef
0fc4: 8d 14     mov   y,#$14
0fc6: e8 00     mov   a,#$00
0fc8: 9a 10     subw  ya,$10
0fca: da 10     movw  $10,ya
0fcc: ab 12     inc   $12
0fce: 33 12 c8  bbc1  $12,$0f99
0fd1: 6f        ret

0fd2: 09 47 5e  or    ($5e),($47)
0fd5: da 14     movw  $14,ya
0fd7: da 16     movw  $16,ya
0fd9: 4d        push  x
0fda: ee        pop   y
0fdb: 60        clrc
0fdc: d0 0a     bne   $0fe8
0fde: 98 1f 16  adc   $16,#$1f
0fe1: e8 00     mov   a,#$00
0fe3: d7 14     mov   ($14)+y,a
0fe5: fc        inc   y
0fe6: 2f 09     bra   $0ff1
0fe8: 98 10 16  adc   $16,#$10
0feb: 3f ef 0f  call  $0fef
0fee: fc        inc   y
0fef: f7 14     mov   a,($14)+y
0ff1: 97 16     adc   a,($16)+y
0ff3: d7 14     mov   ($14)+y,a
0ff5: 6f        ret

; do readahead
0ff6: f4 71     mov   a,$71+x
0ff8: f0 65     beq   $105f
0ffa: 9b 71     dec   $71+x
0ffc: f0 05     beq   $1003
0ffe: e8 02     mov   a,#$02
1000: de 70 5c  cbne  $70+x,$105f
1003: f4 80     mov   a,$80+x
1005: c4 17     mov   $17,a
1007: f4 30     mov   a,$30+x
1009: fb 31     mov   y,$31+x
100b: da 14     movw  $14,ya
100d: 8d 00     mov   y,#$00
100f: f7 14     mov   a,($14)+y
1011: f0 1e     beq   $1031
1013: 30 07     bmi   $101c
1015: fc        inc   y
1016: 30 40     bmi   $1058
1018: f7 14     mov   a,($14)+y
101a: 10 f9     bpl   $1015
101c: 68 c8     cmp   a,#$c8
101e: f0 3f     beq   $105f
1020: 68 ef     cmp   a,#$ef
1022: f0 29     beq   $104d
1024: 68 e0     cmp   a,#$e0
1026: 90 30     bcc   $1058
1028: 6d        push  y
1029: fd        mov   y,a
102a: ae        pop   a
102b: 96 40 0e  adc   a,$0e40+y         ; vcmd lengths
102e: fd        mov   y,a
102f: 2f de     bra   $100f
1031: e4 17     mov   a,$17
1033: f0 23     beq   $1058
1035: 8b 17     dec   $17
1037: d0 0a     bne   $1043
; read $0230/1+X into YA
1039: f5 31 02  mov   a,$0231+x
103c: 2d        push  a
103d: f5 30 02  mov   a,$0230+x
1040: ee        pop   y
1041: 2f c8     bra   $100b
; read $0240/1+X into YA
1043: f5 41 02  mov   a,$0241+x
1046: 2d        push  a
1047: f5 40 02  mov   a,$0240+x
104a: ee        pop   y
104b: 2f be     bra   $100b
;
104d: fc        inc   y
104e: f7 14     mov   a,($14)+y
1050: 2d        push  a
1051: fc        inc   y
1052: f7 14     mov   a,($14)+y
1054: fd        mov   y,a
1055: ae        pop   a
1056: 2f b3     bra   $100b
1058: e4 47     mov   a,$47
105a: 8d 5c     mov   y,#$5c
105c: 3f ef 09  call  $09ef
105f: f2 13     clr7  $13
1061: f4 a0     mov   a,$a0+x
1063: f0 19     beq   $107e
1065: f4 a1     mov   a,$a1+x
1067: f0 04     beq   $106d
1069: 9b a1     dec   $a1+x
106b: 2f 11     bra   $107e
106d: e4 1a     mov   a,$1a
106f: 24 47     and   a,$47
1071: d0 0b     bne   $107e
1073: e2 13     set7  $13
1075: e8 60     mov   a,#$60
1077: 8d 03     mov   y,#$03
1079: 9b a0     dec   $a0+x
107b: 3f d5 0f  call  $0fd5
107e: 3f c3 0e  call  $0ec3
1081: f4 b1     mov   a,$b1+x
1083: f0 4c     beq   $10d1
1085: f5 b0 02  mov   a,$02b0+x
1088: de b0 44  cbne  $b0+x,$10cf
108b: f5 00 01  mov   a,$0100+x
108e: 75 b1 02  cmp   a,$02b1+x
1091: d0 05     bne   $1098
1093: f5 c1 02  mov   a,$02c1+x
1096: 2f 0d     bra   $10a5
1098: 40        setp
1099: bb 00     inc   $00+x
109b: 20        clrp
109c: fd        mov   y,a
109d: f0 02     beq   $10a1
109f: f4 b1     mov   a,$b1+x
10a1: 60        clrc
10a2: 95 c0 02  adc   a,$02c0+x
10a5: d4 b1     mov   $b1+x,a
10a7: f5 a0 02  mov   a,$02a0+x
10aa: 60        clrc
10ab: 95 a1 02  adc   a,$02a1+x
10ae: d5 a0 02  mov   $02a0+x,a
10b1: c4 12     mov   $12,a
10b3: 1c        asl   a
10b4: 1c        asl   a
10b5: 90 02     bcc   $10b9
10b7: 48 ff     eor   a,#$ff
10b9: fd        mov   y,a
10ba: f4 b1     mov   a,$b1+x
10bc: 68 f1     cmp   a,#$f1
10be: 90 05     bcc   $10c5
10c0: 28 0f     and   a,#$0f
10c2: cf        mul   ya
10c3: 2f 04     bra   $10c9
10c5: cf        mul   ya
10c6: dd        mov   a,y
10c7: 8d 00     mov   y,#$00
10c9: 3f 46 11  call  $1146
10cc: 5f 6c 09  jmp   $096c

10cf: bb b0     inc   $b0+x
10d1: e3 13 f8  bbs7  $13,$10cc
10d4: 6f        ret

; per-voice fades/dsps
10d5: f2 13     clr7  $13
10d7: f4 c1     mov   a,$c1+x
10d9: f0 09     beq   $10e4
10db: f5 e0 02  mov   a,$02e0+x
10de: de c0 03  cbne  $c0+x,$10e4
10e1: 3f 4e 11  call  $114e             ; voice vol calculations
10e4: f5 31 03  mov   a,$0331+x
10e7: fd        mov   y,a
10e8: f5 30 03  mov   a,$0330+x
10eb: da 10     movw  $10,ya            ; $10/1 = voice pan value
10ed: f4 91     mov   a,$91+x           ; voice pan fade counter
10ef: f0 0a     beq   $10fb
10f1: f5 41 03  mov   a,$0341+x
10f4: fd        mov   y,a
10f5: f5 40 03  mov   a,$0340+x         ; pan fade delta
10f8: 3f 30 11  call  $1130             ; add delta (with mutations)?
10fb: f3 13 03  bbc7  $13,$1101
10fe: 3f 94 0f  call  $0f94
1101: f2 13     clr7  $13
1103: 3f c3 0e  call  $0ec3
1106: f4 a0     mov   a,$a0+x
1108: f0 0e     beq   $1118
110a: f4 a1     mov   a,$a1+x
110c: d0 0a     bne   $1118
110e: f5 71 03  mov   a,$0371+x
1111: fd        mov   y,a
1112: f5 70 03  mov   a,$0370+x
1115: 3f 30 11  call  $1130
1118: f4 b1     mov   a,$b1+x
111a: f0 b5     beq   $10d1
111c: f5 b0 02  mov   a,$02b0+x
111f: de b0 af  cbne  $b0+x,$10d1
1122: eb 51     mov   y,$51
1124: f5 a1 02  mov   a,$02a1+x
1127: cf        mul   ya
1128: dd        mov   a,y
1129: 60        clrc
112a: 95 a0 02  adc   a,$02a0+x
112d: 5f b1 10  jmp   $10b1

1130: e2 13     set7  $13
1132: cb 12     mov   $12,y
1134: 3f e0 0e  call  $0ee0
1137: 6d        push  y
1138: eb 51     mov   y,$51
113a: cf        mul   ya
113b: cb 14     mov   $14,y
113d: 8f 00 15  mov   $15,#$00
1140: eb 51     mov   y,$51
1142: ae        pop   a
1143: cf        mul   ya
1144: 7a 14     addw  ya,$14
1146: 3f e0 0e  call  $0ee0
1149: 7a 10     addw  ya,$10
114b: da 10     movw  $10,ya
114d: 6f        ret

114e: e2 13     set7  $13
1150: eb 51     mov   y,$51
1152: f5 d1 02  mov   a,$02d1+x
1155: cf        mul   ya
1156: dd        mov   a,y
1157: 60        clrc
1158: 95 d0 02  adc   a,$02d0+x
115b: 1c        asl   a
115c: 90 02     bcc   $1160
115e: 48 ff     eor   a,#$ff
1160: fb c1     mov   y,$c1+x
1162: cf        mul   ya
1163: dd        mov   a,y
1164: 48 ff     eor   a,#$ff
1166: eb 59     mov   y,$59
1168: cf        mul   ya
1169: f5 10 02  mov   a,$0210+x
116c: cf        mul   ya
116d: f5 01 03  mov   a,$0301+x
1170: cf        mul   ya
1171: dd        mov   a,y
1172: cf        mul   ya
1173: dd        mov   a,y
1174: d5 21 03  mov   $0321+x,a
1177: 6f        ret

; pan table
1178: db $00,$01,$03,$07,$0d,$15,$1e,$29
1180: db $34,$42,$51,$5e,$67,$6e,$73,$77
1188: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
118d: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
1195: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
119d: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
11a5: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($11b6+1) for dsp regs ($11ac+1)
11ad: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
11b7: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
11c1: dw $085f
11c3: dw $08de
11c5: dw $0965
11c7: dw $09f4
11c9: dw $0a8c
11cb: dw $0b2c
11cd: dw $0bd6
11cf: dw $0c8b
11d1: dw $0d4a
11d3: dw $0e14
11d5: dw $0eea
11d7: dw $0fcd
11d9: dw $10be

11db: db $2a,$56,$65,$72,$20,$53,$31,$2e,$32,$30,$2a

11c6: e8 aa     mov   a,#$aa
11e8: c5 f4 00  mov   $00f4,a
11eb: e8 bb     mov   a,#$bb
11ed: c5 f5 00  mov   $00f5,a
11f0: e5 f4 00  mov   a,$00f4
11f3: 68 cc     cmp   a,#$cc
11f5: d0 f9     bne   $11f0
11f7: 2f 20     bra   $1219
11f9: ec f4 00  mov   y,$00f4
11fc: d0 fb     bne   $11f9
11fe: 5e f4 00  cmp   y,$00f4
1201: d0 0f     bne   $1212
1203: e5 f5 00  mov   a,$00f5
1206: cc f4 00  mov   $00f4,y
1209: d7 14     mov   ($14)+y,a
120b: fc        inc   y
120c: d0 f0     bne   $11fe
120e: ab 15     inc   $15
1210: 2f ec     bra   $11fe
1212: 10 ea     bpl   $11fe
1214: 5e f4 00  cmp   y,$00f4
1217: 10 e5     bpl   $11fe
1219: e5 f6 00  mov   a,$00f6
121c: ec f7 00  mov   y,$00f7
121f: da 14     movw  $14,ya
1221: ec f4 00  mov   y,$00f4
1224: e5 f5 00  mov   a,$00f5
1227: cc f4 00  mov   $00f4,y
122a: d0 cd     bne   $11f9
122c: cd 31     mov   x,#$31
122e: c9 f1 00  mov   $00f1,x
1231: 6f        ret

1232: e4 02     mov   a,$02
1234: 28 3f     and   a,#$3f
1236: 5d        mov   x,a
1237: f5 dc 18  mov   a,$18dc+x
123a: c5 e2 03  mov   $03e2,a
123d: 8d 0e     mov   y,#$0e
123f: cd 80     mov   x,#$80
1241: c9 c1 03  mov   $03c1,x
1244: e5 cb 03  mov   a,$03cb
1247: 25 c1 03  and   a,$03c1
124a: f0 0b     beq   $1257
124c: 60        clrc
124d: f6 a0 03  mov   a,$03a0+y
1250: 96 d0 03  adc   a,$03d0+y
1253: 64 02     cmp   a,$02
1255: f0 37     beq   $128e
1257: dc        dec   y
1258: dc        dec   y
1259: 4c c1 03  lsr   $03c1
125c: d0 e6     bne   $1244
125e: 2f 33     bra   $1293
1260: e4 03     mov   a,$03
1262: 28 3f     and   a,#$3f
1264: 5d        mov   x,a
1265: f5 d8 19  mov   a,$19d8+x
1268: c5 e2 03  mov   $03e2,a
126b: 8d 0e     mov   y,#$0e
126d: cd 80     mov   x,#$80
126f: c9 c1 03  mov   $03c1,x
1272: e5 cd 03  mov   a,$03cd
1275: 25 c1 03  and   a,$03c1
1278: f0 0b     beq   $1285
127a: 60        clrc
127b: f6 a0 03  mov   a,$03a0+y
127e: 96 d0 03  adc   a,$03d0+y
1281: 64 03     cmp   a,$03
1283: f0 09     beq   $128e
1285: dc        dec   y
1286: dc        dec   y
1287: 4c c1 03  lsr   $03c1
128a: d0 e6     bne   $1272
128c: 2f 05     bra   $1293
128e: cc c0 03  mov   $03c0,y
1291: 2f 15     bra   $12a8
1293: 60        clrc
1294: cd 1a     mov   x,#$1a
1296: e8 80     mov   a,#$80
1298: c5 c1 03  mov   $03c1,a
129b: 8d 0e     mov   y,#$0e
129d: 26        and   a,(x)
129e: f0 08     beq   $12a8
12a0: dc        dec   y
12a1: dc        dec   y
12a2: 4c c1 03  lsr   $03c1
12a5: 5c        lsr   a
12a6: 90 f5     bcc   $129d
12a8: cc c0 03  mov   $03c0,y
12ab: cc c8 03  mov   $03c8,y
12ae: e5 c1 03  mov   a,$03c1
12b1: c5 c9 03  mov   $03c9,a
12b4: 04 1a     or    a,$1a
12b6: c4 1a     mov   $1a,a
12b8: e9 e2 03  mov   x,$03e2
12bb: f0 06     beq   $12c3
12bd: 05 e3 03  or    a,$03e3
12c0: c5 e3 03  mov   $03e3,a
12c3: e5 04 00  mov   a,$0004
12c6: 28 10     and   a,#$10
12c8: f0 08     beq   $12d2
12ca: e5 c1 03  mov   a,$03c1
12cd: 25 e3 03  and   a,$03e3
12d0: f0 14     beq   $12e6
12d2: e5 c1 03  mov   a,$03c1
12d5: 24 4a     and   a,$4a
12d7: f0 0d     beq   $12e6
12d9: e4 4a     mov   a,$4a
12db: 80        setc
12dc: a5 c1 03  sbc   a,$03c1
12df: c4 4a     mov   $4a,a
12e1: 8d 4d     mov   y,#$4d
12e3: 3f f7 09  call  $09f7
12e6: 6f        ret

12e7: e9 c4 03  mov   x,$03c4
12ea: c9 c0 03  mov   $03c0,x
12ed: ec c5 03  mov   y,$03c5
12f0: cc c1 03  mov   $03c1,y
12f3: e5 c1 03  mov   a,$03c1
12f6: 8d 5c     mov   y,#$5c
12f8: 3f f7 09  call  $09f7
12fb: 3f 69 15  call  $1569
12fe: 6f        ret

12ff: c4 05     mov   $05,a
1301: 68 05     cmp   a,#$05
1303: d0 06     bne   $130b
1305: e9 cf 03  mov   x,$03cf
1308: d0 01     bne   $130b
130a: 6f        ret

130b: cd 00     mov   x,#$00
130d: c9 e4 03  mov   $03e4,x
1310: cd 0e     mov   x,#$0e
1312: e4 01     mov   a,$01
1314: d5 a0 03  mov   $03a0+x,a
1317: e8 03     mov   a,#$03
1319: d5 a1 03  mov   $03a1+x,a
131c: e8 00     mov   a,#$00
131e: d5 80 02  mov   $0280+x,a
1321: e8 80     mov   a,#$80
1323: c5 cf 03  mov   $03cf,a
1326: 8d 5c     mov   y,#$5c
1328: 3f f7 09  call  $09f7
132b: e2 1a     set7  $1a
132d: f8 01     mov   x,$01
132f: f5 ff 17  mov   a,$17ff+x
1332: c4 01     mov   $01,a
1334: d0 01     bne   $1337
1336: 6f        ret

1337: cd 0c     mov   x,#$0c
1339: e4 01     mov   a,$01
133b: d5 a0 03  mov   $03a0+x,a
133e: e8 03     mov   a,#$03
1340: d5 a1 03  mov   $03a1+x,a
1343: e8 00     mov   a,#$00
1345: d5 80 02  mov   $0280+x,a
1348: c2 1a     set6  $1a
134a: e8 40     mov   a,#$40
134c: 8d 5c     mov   y,#$5c
134e: 3f f7 09  call  $09f7
1351: e8 c0     mov   a,#$c0
1353: c5 cf 03  mov   $03cf,a
1356: 05 e3 03  or    a,$03e3
1359: c5 e3 03  mov   $03e3,a
135c: e8 3f     mov   a,#$3f
135e: 25 cb 03  and   a,$03cb
1361: c5 cb 03  mov   $03cb,a
1364: e8 3f     mov   a,#$3f
1366: 25 cd 03  and   a,$03cd
1369: c5 cd 03  mov   $03cd,a
136c: 6f        ret

136d: e4 01     mov   a,$01
136f: 30 03     bmi   $1374
1371: d0 8c     bne   $12ff
1373: 6f        ret

1374: c4 05     mov   $05,a
1376: e5 cf 03  mov   a,$03cf
1379: f0 05     beq   $1380
137b: e8 78     mov   a,#$78
137d: c5 e4 03  mov   $03e4,a
1380: 6f        ret

1381: 8c e4 03  dec   $03e4
1384: e5 e4 03  mov   a,$03e4
1387: d0 0c     bne   $1395
1389: e8 05     mov   a,#$05
138b: c4 01     mov   $01,a
138d: 3f 0b 13  call  $130b
1390: e8 00     mov   a,#$00
1392: c4 01     mov   $01,a
1394: 6f        ret

1395: 5c        lsr   a
1396: c5 e5 03  mov   $03e5,a
1399: 8d 70     mov   y,#$70
139b: 3f f7 09  call  $09f7
139e: fc        inc   y
139f: e5 e5 03  mov   a,$03e5
13a2: 3f f7 09  call  $09f7
13a5: 8d 60     mov   y,#$60
13a7: e5 e5 03  mov   a,$03e5
13aa: 3f f7 09  call  $09f7
13ad: fc        inc   y
13ae: e5 e5 03  mov   a,$03e5
13b1: 3f f7 09  call  $09f7
13b4: 5f 4d 14  jmp   $144d

13b7: e4 02     mov   a,$02
13b9: d0 48     bne   $1403
13bb: 6f        ret

13bc: e4 03     mov   a,$03
13be: d0 01     bne   $13c1
13c0: 6f        ret

13c1: e8 ff     mov   a,#$ff
13c3: 2e 1a 02  cbne  $1a,$13c8
13c6: 2f 3a     bra   $1402
13c8: 3f 60 12  call  $1260
13cb: e9 c0 03  mov   x,$03c0
13ce: e4 03     mov   a,$03
13d0: 28 c0     and   a,#$c0
13d2: d5 d0 03  mov   $03d0+x,a
13d5: e4 03     mov   a,$03
13d7: 28 3f     and   a,#$3f
13d9: d5 a0 03  mov   $03a0+x,a
13dc: e8 03     mov   a,#$03
13de: d5 a1 03  mov   $03a1+x,a
13e1: e8 00     mov   a,#$00
13e3: d5 80 02  mov   $0280+x,a
13e6: e5 c1 03  mov   a,$03c1
13e9: 05 cd 03  or    a,$03cd
13ec: c5 cd 03  mov   $03cd,a
13ef: e5 c1 03  mov   a,$03c1
13f2: 8d 5c     mov   y,#$5c
13f4: 3f f7 09  call  $09f7
13f7: f5 a0 03  mov   a,$03a0+x
13fa: 5d        mov   x,a
13fb: f5 99 19  mov   a,$1999+x
13fe: c4 03     mov   $03,a
1400: d0 bf     bne   $13c1
1402: 6f        ret

1403: e8 ff     mov   a,#$ff
1405: 2e 1a 02  cbne  $1a,$140a
1408: 2f 3a     bra   $1444
140a: 3f 32 12  call  $1232
140d: e9 c0 03  mov   x,$03c0
1410: e4 02     mov   a,$02
1412: 28 3f     and   a,#$3f
1414: d5 a0 03  mov   $03a0+x,a
1417: e4 02     mov   a,$02
1419: 28 c0     and   a,#$c0
141b: d5 d0 03  mov   $03d0+x,a
141e: e8 03     mov   a,#$03
1420: d5 a1 03  mov   $03a1+x,a
1423: e8 00     mov   a,#$00
1425: d5 80 02  mov   $0280+x,a
1428: e5 c1 03  mov   a,$03c1
142b: 05 cb 03  or    a,$03cb
142e: c5 cb 03  mov   $03cb,a
1431: e5 c1 03  mov   a,$03c1
1434: 8d 5c     mov   y,#$5c
1436: 3f f7 09  call  $09f7
1439: f5 a0 03  mov   a,$03a0+x
143c: 5d        mov   x,a
143d: f5 9d 18  mov   a,$189d+x
1440: c4 02     mov   $02,a
1442: d0 bf     bne   $1403
1444: 6f        ret

1445: e5 e4 03  mov   a,$03e4
1448: f0 03     beq   $144d
144a: 5f 81 13  jmp   $1381

144d: e5 cf 03  mov   a,$03cf
1450: c5 e0 03  mov   $03e0,a
1453: f0 30     beq   $1485
1455: cd 0e     mov   x,#$0e
1457: e8 80     mov   a,#$80
1459: c5 c1 03  mov   $03c1,a
145c: 0c e0 03  asl   $03e0
145f: 90 1b     bcc   $147c
1461: c9 c0 03  mov   $03c0,x
1464: 7d        mov   a,x
1465: 9f        xcn   a
1466: 5c        lsr   a
1467: c5 c2 03  mov   $03c2,a
146a: f5 d0 03  mov   a,$03d0+x
146d: c4 20     mov   $20,a
146f: f5 a1 03  mov   a,$03a1+x
1472: d0 12     bne   $1486
1474: f5 a0 03  mov   a,$03a0+x
1477: f0 03     beq   $147c
1479: 5f fc 15  jmp   $15fc

147c: 4c c1 03  lsr   $03c1
147f: 1d        dec   x
1480: 1d        dec   x
1481: c8 0a     cmp   x,#$0a
1483: 10 d7     bpl   $145c
1485: 6f        ret

1486: c9 c0 03  mov   $03c0,x
1489: f5 a1 03  mov   a,$03a1+x
148c: 9c        dec   a
148d: d5 a1 03  mov   $03a1+x,a
1490: f0 03     beq   $1495
1492: 5f 7c 14  jmp   $147c

1495: f5 a0 03  mov   a,$03a0+x
1498: 1c        asl   a
1499: fd        mov   y,a
149a: f6 bf 17  mov   a,$17bf+y
149d: d5 91 03  mov   $0391+x,a
14a0: c4 2d     mov   $2d,a
14a2: f6 be 17  mov   a,$17be+y
14a5: d5 90 03  mov   $0390+x,a
14a8: c4 2c     mov   $2c,a
14aa: 5f 19 16  jmp   $1619

14ad: e5 cb 03  mov   a,$03cb
14b0: c5 cc 03  mov   $03cc,a
14b3: f0 2e     beq   $14e3
14b5: cd 0e     mov   x,#$0e
14b7: e8 80     mov   a,#$80
14b9: c5 c1 03  mov   $03c1,a
14bc: 0c cc 03  asl   $03cc
14bf: 90 1b     bcc   $14dc
14c1: c9 c0 03  mov   $03c0,x
14c4: 7d        mov   a,x
14c5: 9f        xcn   a
14c6: 5c        lsr   a
14c7: c5 c2 03  mov   $03c2,a
14ca: f5 d0 03  mov   a,$03d0+x
14cd: c4 20     mov   $20,a
14cf: f5 a1 03  mov   a,$03a1+x
14d2: d0 10     bne   $14e4
14d4: f5 a0 03  mov   a,$03a0+x
14d7: f0 03     beq   $14dc
14d9: 5f fc 15  jmp   $15fc

14dc: 4c c1 03  lsr   $03c1
14df: 1d        dec   x
14e0: 1d        dec   x
14e1: 10 d9     bpl   $14bc
14e3: 6f        ret

14e4: c9 c0 03  mov   $03c0,x
14e7: f5 a1 03  mov   a,$03a1+x
14ea: 9c        dec   a
14eb: d5 a1 03  mov   $03a1+x,a
14ee: f0 03     beq   $14f3
14f0: 5f dc 14  jmp   $14dc

14f3: f5 a0 03  mov   a,$03a0+x
14f6: 1c        asl   a
14f7: fd        mov   y,a
14f8: f6 1f 18  mov   a,$181f+y
14fb: d5 91 03  mov   $0391+x,a
14fe: c4 2d     mov   $2d,a
1500: f6 1e 18  mov   a,$181e+y
1503: d5 90 03  mov   $0390+x,a
1506: c4 2c     mov   $2c,a
1508: 5f 19 16  jmp   $1619

150b: e5 cd 03  mov   a,$03cd
150e: c5 ce 03  mov   $03ce,a
1511: f0 2e     beq   $1541
1513: cd 0e     mov   x,#$0e
1515: e8 80     mov   a,#$80
1517: c5 c1 03  mov   $03c1,a
151a: 0c ce 03  asl   $03ce
151d: 90 1b     bcc   $153a
151f: c9 c0 03  mov   $03c0,x
1522: 7d        mov   a,x
1523: 9f        xcn   a
1524: 5c        lsr   a
1525: c5 c2 03  mov   $03c2,a
1528: f5 d0 03  mov   a,$03d0+x
152b: c4 20     mov   $20,a
152d: f5 a1 03  mov   a,$03a1+x
1530: d0 10     bne   $1542
1532: f5 a0 03  mov   a,$03a0+x
1535: f0 03     beq   $153a
1537: 5f fc 15  jmp   $15fc

153a: 4c c1 03  lsr   $03c1
153d: 1d        dec   x
153e: 1d        dec   x
153f: 10 d9     bpl   $151a
1541: 6f        ret

1542: c9 c0 03  mov   $03c0,x
1545: f5 a1 03  mov   a,$03a1+x
1548: 9c        dec   a
1549: d5 a1 03  mov   $03a1+x,a
154c: f0 03     beq   $1551
154e: 5f 3a 15  jmp   $153a

1551: f5 a0 03  mov   a,$03a0+x
1554: 1c        asl   a
1555: fd        mov   y,a
1556: f6 1b 19  mov   a,$191b+y
1559: d5 91 03  mov   $0391+x,a
155c: c4 2d     mov   $2d,a
155e: f6 1a 19  mov   a,$191a+y
1561: d5 90 03  mov   $0390+x,a
1564: c4 2c     mov   $2c,a
1566: 5f 19 16  jmp   $1619

1569: e8 00     mov   a,#$00
156b: e9 c0 03  mov   x,$03c0
156e: d5 a0 03  mov   $03a0+x,a
1571: e4 1a     mov   a,$1a
1573: 80        setc
1574: a5 c1 03  sbc   a,$03c1
1577: c4 1a     mov   $1a,a
1579: e5 c1 03  mov   a,$03c1
157c: 25 cb 03  and   a,$03cb
157f: f0 0c     beq   $158d
1581: e5 cb 03  mov   a,$03cb
1584: 80        setc
1585: a5 c1 03  sbc   a,$03c1
1588: c5 cb 03  mov   $03cb,a
158b: 2f 1e     bra   $15ab
158d: e5 c1 03  mov   a,$03c1
1590: 25 cd 03  and   a,$03cd
1593: f0 0c     beq   $15a1
1595: e5 cd 03  mov   a,$03cd
1598: 80        setc
1599: a5 c1 03  sbc   a,$03c1
159c: c5 cd 03  mov   $03cd,a
159f: 2f 0a     bra   $15ab
15a1: e5 cf 03  mov   a,$03cf
15a4: 80        setc
15a5: a5 c1 03  sbc   a,$03c1
15a8: c5 cf 03  mov   $03cf,a
15ab: d8 44     mov   $44,x
15ad: f5 11 02  mov   a,$0211+x
15b0: 3f 66 0c  call  $0c66
15b3: e5 c1 03  mov   a,$03c1
15b6: 25 c3 03  and   a,$03c3
15b9: f0 1b     beq   $15d6
15bb: 24 4a     and   a,$4a
15bd: d0 17     bne   $15d6
15bf: e4 4a     mov   a,$4a
15c1: 60        clrc
15c2: 85 c1 03  adc   a,$03c1
15c5: c4 4a     mov   $4a,a
15c7: 8d 4d     mov   y,#$4d
15c9: 3f f7 09  call  $09f7
15cc: e5 e3 03  mov   a,$03e3
15cf: 80        setc
15d0: a5 c1 03  sbc   a,$03c1
15d3: c5 e3 03  mov   $03e3,a
15d6: e9 c0 03  mov   x,$03c0
15d9: 6f        ret

15da: e5 c1 03  mov   a,$03c1
15dd: 25 cf 03  and   a,$03cf
15e0: d0 0e     bne   $15f0
15e2: e5 c1 03  mov   a,$03c1
15e5: 25 cb 03  and   a,$03cb
15e8: d0 0c     bne   $15f6
15ea: 3f 69 15  call  $1569
15ed: 5f 3a 15  jmp   $153a

15f0: 3f 69 15  call  $1569
15f3: 5f 7c 14  jmp   $147c

15f6: 3f 69 15  call  $1569
15f9: 5f dc 14  jmp   $14dc

15fc: 3f c3 12  call  $12c3
15ff: c9 c0 03  mov   $03c0,x
1602: f5 91 03  mov   a,$0391+x
1605: fd        mov   y,a
1606: f5 90 03  mov   a,$0390+x
1609: da 2c     movw  $2c,ya
160b: f5 b0 03  mov   a,$03b0+x
160e: 9c        dec   a
160f: d5 b0 03  mov   $03b0+x,a
1612: f0 03     beq   $1617
1614: 5f c9 16  jmp   $16c9

1617: 3a 2c     incw  $2c
1619: e5 c0 03  mov   a,$03c0
161c: 9f        xcn   a
161d: 5c        lsr   a
161e: c5 c2 03  mov   $03c2,a
1621: cd 00     mov   x,#$00
1623: e7 2c     mov   a,($2c+x)
1625: f0 b3     beq   $15da
1627: 30 71     bmi   $169a
1629: ec c0 03  mov   y,$03c0
162c: d6 b1 03  mov   $03b1+y,a
162f: 3a 2c     incw  $2c
1631: e7 2c     mov   a,($2c+x)
1633: c4 10     mov   $10,a
1635: 30 63     bmi   $169a
1637: 5d        mov   x,a
1638: e5 c1 03  mov   a,$03c1
163b: 25 cf 03  and   a,$03cf
163e: f0 2e     beq   $166e
1640: 7d        mov   a,x
1641: f0 05     beq   $1648
1643: e9 e5 03  mov   x,$03e5
1646: d0 4e     bne   $1696
1648: c4 10     mov   $10,a
164a: ec c2 03  mov   y,$03c2
164d: 3f f7 09  call  $09f7
1650: cd 00     mov   x,#$00
1652: 3a 2c     incw  $2c
1654: e7 2c     mov   a,($2c+x)
1656: 10 0d     bpl   $1665
1658: 5d        mov   x,a
1659: e4 10     mov   a,$10
165b: ec c2 03  mov   y,$03c2
165e: fc        inc   y
165f: 3f f7 09  call  $09f7
1662: 7d        mov   a,x
1663: 2f 35     bra   $169a
1665: ec c2 03  mov   y,$03c2
1668: fc        inc   y
1669: 3f f7 09  call  $09f7
166c: 2f 28     bra   $1696
166e: 7d        mov   a,x
166f: e9 c0 03  mov   x,$03c0
1672: 1c        asl   a
1673: d5 21 03  mov   $0321+x,a
1676: e8 0a     mov   a,#$0a
1678: d5 51 03  mov   $0351+x,a
167b: e3 20 08  bbs7  $20,$1686
167e: c3 20 0a  bbs6  $20,$168b
1681: 8f 0a 11  mov   $11,#$0a
1684: d0 08     bne   $168e
1686: 8f 10 11  mov   $11,#$10
1689: d0 03     bne   $168e
168b: 8f 04 11  mov   $11,#$04
168e: 8f 00 10  mov   $10,#$00
1691: 3f 94 0f  call  $0f94
1694: cd 00     mov   x,#$00
1696: 3a 2c     incw  $2c
1698: e7 2c     mov   a,($2c+x)
169a: 68 e0     cmp   a,#$e0
169c: d0 03     bne   $16a1
169e: 5f 4a 17  jmp   $174a

16a1: 68 f9     cmp   a,#$f9
16a3: f0 67     beq   $170c
16a5: 68 f1     cmp   a,#$f1
16a7: f0 78     beq   $1721
16a9: 68 ff     cmp   a,#$ff
16ab: d0 06     bne   $16b3
16ad: e9 c0 03  mov   x,$03c0
16b0: 5f 95 14  jmp   $1495

16b3: e9 c0 03  mov   x,$03c0
16b6: fd        mov   y,a
16b7: 3f 02 09  call  $0902
16ba: e5 c1 03  mov   a,$03c1
16bd: 3f 90 17  call  $1790
16c0: e9 c0 03  mov   x,$03c0
16c3: f5 b1 03  mov   a,$03b1+x
16c6: d5 b0 03  mov   $03b0+x,a
16c9: f2 13     clr7  $13
16cb: e9 c0 03  mov   x,$03c0
16ce: f4 a0     mov   a,$a0+x
16d0: f0 05     beq   $16d7
16d2: 3f 76 17  call  $1776
16d5: 2f 0f     bra   $16e6
16d7: e8 02     mov   a,#$02
16d9: 75 b0 03  cmp   a,$03b0+x
16dc: d0 08     bne   $16e6
16de: e5 c1 03  mov   a,$03c1
16e1: 8d 5c     mov   y,#$5c
16e3: 3f f7 09  call  $09f7
16e6: e9 c0 03  mov   x,$03c0
16e9: e4 2d     mov   a,$2d
16eb: d5 91 03  mov   $0391+x,a
16ee: e4 2c     mov   a,$2c
16f0: d5 90 03  mov   $0390+x,a
16f3: e5 c1 03  mov   a,$03c1
16f6: 25 cf 03  and   a,$03cf
16f9: d0 0b     bne   $1706
16fb: e5 c1 03  mov   a,$03c1
16fe: 25 cb 03  and   a,$03cb
1701: d0 06     bne   $1709
1703: 5f 3a 15  jmp   $153a

1706: 5f 7c 14  jmp   $147c

1709: 5f dc 14  jmp   $14dc

170c: cd 00     mov   x,#$00
170e: 3a 2c     incw  $2c
1710: e7 2c     mov   a,($2c+x)
1712: e9 c0 03  mov   x,$03c0
1715: d8 44     mov   $44,x
1717: fd        mov   y,a
1718: 3f 02 09  call  $0902
171b: e5 c1 03  mov   a,$03c1
171e: 3f 90 17  call  $1790
1721: cd 00     mov   x,#$00
1723: 3a 2c     incw  $2c
1725: e7 2c     mov   a,($2c+x)
1727: e9 c0 03  mov   x,$03c0
172a: d4 a1     mov   $a1+x,a
172c: cd 00     mov   x,#$00
172e: 3a 2c     incw  $2c
1730: e7 2c     mov   a,($2c+x)
1732: e9 c0 03  mov   x,$03c0
1735: d4 a0     mov   $a0+x,a
1737: 2d        push  a
1738: cd 00     mov   x,#$00
173a: 3a 2c     incw  $2c
173c: e7 2c     mov   a,($2c+x)
173e: ee        pop   y
173f: e9 c0 03  mov   x,$03c0
1742: d8 44     mov   $44,x
1744: 3f ab 0e  call  $0eab
1747: 5f c0 16  jmp   $16c0

174a: cd 00     mov   x,#$00
174c: 3a 2c     incw  $2c
174e: e7 2c     mov   a,($2c+x)
1750: 8d 09     mov   y,#$09
1752: cf        mul   ya
1753: 5d        mov   x,a
1754: ec c2 03  mov   y,$03c2
1757: 8f 08 12  mov   $12,#$08
175a: f5 00 3e  mov   a,$3e00+x
175d: 3f f7 09  call  $09f7
1760: 3d        inc   x
1761: fc        inc   y
1762: 6e 12 f5  dbnz  $12,$175a
1765: f5 00 3e  mov   a,$3e00+x
1768: ec c0 03  mov   y,$03c0
176b: d6 21 02  mov   $0221+y,a
176e: e8 00     mov   a,#$00
1770: d6 20 02  mov   $0220+y,a
1773: 5f 17 16  jmp   $1617

1776: e2 13     set7  $13
1778: e8 60     mov   a,#$60
177a: 8d 03     mov   y,#$03
177c: 9b a0     dec   $a0+x
177e: 3f d5 0f  call  $0fd5
1781: f5 61 03  mov   a,$0361+x
1784: fd        mov   y,a
1785: f5 60 03  mov   a,$0360+x
1788: da 10     movw  $10,ya
178a: 8f 00 47  mov   $47,#$00
178d: 5f 6c 09  jmp   $096c

1790: 2d        push  a
1791: 8d 5c     mov   y,#$5c
1793: e8 00     mov   a,#$00
1795: 3f f7 09  call  $09f7
1798: ae        pop   a
1799: 8d 4c     mov   y,#$4c
179b: 5f f7 09  jmp   $09f7
