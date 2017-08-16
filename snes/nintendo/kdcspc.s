; Kirby's Dream Course - loveemu labo
; Disassembler: spcdas v0.01
; 
; The game was also released as:
; * Kirby Bowl (J)

; note dur%'s
03e0: $66,$7f,$99,$b2,$cc,$e5,$f2,$fc
; per-note velocity values
03e8: $59,$66,$72,$7f,$87,$8e,$99,$a0
03f0: $a8,$b2,$bf,$cc,$d8,$e5,$f2,$fc

0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x              ; set SP to (01)CF
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 e8     cmp   x,#$e8
080a: d0 fb     bne   $0807             ; zero 00-E7
080c: bc        inc   a
080d: 3f 7a 0d  call  $0d7a             ; set echo delay to 1 (16ms)
0810: a2 48     set5  $48
0812: 8f 00 06  mov   $06,#$00
0815: 8f 00 07  mov   $07,#$00
0818: 8f 0c f2  mov   $f2,#$0c
081b: 8f 7f f3  mov   $f3,#$7f          ; master vol L = $7F
081e: 8f 1c f2  mov   $f2,#$1c
0821: 8f 7f f3  mov   $f3,#$7f          ; master vol R = $7F
0824: e8 04     mov   a,#$04
0826: 8d 5d     mov   y,#$5d
0828: 3f b4 09  call  $09b4             ; source dir = $0400
082b: e8 f0     mov   a,#$f0
082d: c4 f1     mov   $f1,a             ; reset ports, disable timers
082f: e8 10     mov   a,#$10
0831: c4 fa     mov   $fa,a             ; set timer0 latch to #$10 (500 Hz, 2ms)
0833: c4 53     mov   $53,a
0835: e8 01     mov   a,#$01
0837: c4 f1     mov   $f1,a             ; start timer0
; main loop
0839: 8d 0a     mov   y,#$0a            ; set DSP regs from shadow:
083b: ad 05     cmp   y,#$05
083d: f0 07     beq   $0846
083f: b0 08     bcs   $0849
0841: 69 4d 4c  cmp   ($4c),($4d)
0844: d0 0f     bne   $0855
0846: e3 4c 0c  bbs7  $4c,$0855
0849: f6 fd 10  mov   a,$10fd+y
084c: c4 f2     mov   $f2,a
084e: f6 07 11  mov   a,$1107+y
0851: 5d        mov   x,a
0852: e6        mov   a,(x)
0853: c4 f3     mov   $f3,a             ; write to DSP reg
0855: fe e4     dbnz  y,$083b           ; loop for each reg
0857: cb 45     mov   $45,y
0859: cb 46     mov   $46,y
085b: e4 18     mov   a,$18
085d: 44 19     eor   a,$19
085f: 5c        lsr   a
0860: 5c        lsr   a
0861: ed        notc
0862: 6b 18     ror   $18
0864: 6b 19     ror   $19
0866: eb fd     mov   y,$fd             ; wait for counter0 increment
0868: f0 fc     beq   $0866
086a: 6d        push  y
086b: e8 20     mov   a,#$20
086d: cf        mul   ya
086e: 60        clrc
086f: 84 43     adc   a,$43
0871: c4 43     mov   $43,a
0873: 90 0f     bcc   $0884
0875: 3f 37 11  call  $1137
0878: cd 01     mov   x,#$01
087a: 3f b2 08  call  $08b2
087d: 69 4d 4c  cmp   ($4c),($4d)
0880: f0 02     beq   $0884
0882: ab 4c     inc   $4c
0884: e4 53     mov   a,$53
0886: ee        pop   y
0887: cf        mul   ya
0888: 60        clrc
0889: 84 51     adc   a,$51
088b: c4 51     mov   $51,a
088d: 90 0a     bcc   $0899
088f: 3f 22 0a  call  $0a22
0892: cd 00     mov   x,#$00
0894: 3f b2 08  call  $08b2
0897: 2f a0     bra   $0839
0899: e4 04     mov   a,$04
089b: f0 12     beq   $08af
089d: cd 00     mov   x,#$00
089f: 8f 01 47  mov   $47,#$01          ; first voice
08a2: f4 31     mov   a,$31+x
08a4: f0 03     beq   $08a9             ; skip call if vptr == 0
08a6: 3f 26 10  call  $1026             ; do per-voice fades/dsps
08a9: 3d        inc   x
08aa: 3d        inc   x
08ab: 0b 47     asl   $47
08ad: d0 f3     bne   $08a2             ; loop for each voice
08af: 5f 39 08  jmp   $0839

08b2: f4 04     mov   a,$04+x
08b4: d4 f4     mov   $f4+x,a
08b6: f4 f4     mov   a,$f4+x
08b8: 74 f4     cmp   a,$f4+x
08ba: d0 fa     bne   $08b6
08bc: d4 00     mov   $00+x,a
08be: 6f        ret

; handle a note vcmd (80-df)
08bf: ad ca     cmp   y,#$ca
08c1: 90 05     bcc   $08c8
; vcmds ca-df - percussion note
08c3: 3f cb 0b  call  $0bcb             ; set sample
08c6: 8d a4     mov   y,#$a4            ; dispatch as note $a4
; vcmds 80-c7,c8,c9 - note/tie/rest
08c8: ad c8     cmp   y,#$c8
08ca: b0 f2     bcs   $08be             ; skip if tie/rest
08cc: e4 1a     mov   a,$1a
08ce: 24 47     and   a,$47
08d0: d0 ec     bne   $08be
; vcmds 80-c7 - note (note number in Y)
08d2: dd        mov   a,y
08d3: 28 7f     and   a,#$7f
08d5: 60        clrc
08d6: 84 50     adc   a,$50             ; add global transpose
08d8: 60        clrc
08d9: 95 f0 02  adc   a,$02f0+x         ; add per-voice transpose
08dc: d5 61 03  mov   $0361+x,a
08df: f5 81 03  mov   a,$0381+x
08e2: d5 60 03  mov   $0360+x,a
08e5: f5 b1 02  mov   a,$02b1+x
08e8: 5c        lsr   a
08e9: e8 00     mov   a,#$00
08eb: 7c        ror   a
08ec: d5 a0 02  mov   $02a0+x,a
08ef: e8 00     mov   a,#$00
08f1: d4 b0     mov   $b0+x,a
08f3: d5 00 01  mov   $0100+x,a
08f6: d5 d0 02  mov   $02d0+x,a
08f9: d4 c0     mov   $c0+x,a
08fb: 09 47 5e  or    ($5e),($47)       ; set volume changed flg
08fe: 09 47 45  or    ($45),($47)       ; set key on shadow bit
0901: f5 80 02  mov   a,$0280+x         ; pitch envelope counter
0904: d4 a0     mov   $a0+x,a           ; portamento counter
0906: f0 1e     beq   $0926
0908: f5 81 02  mov   a,$0281+x
090b: d4 a1     mov   $a1+x,a
090d: f5 90 02  mov   a,$0290+x         ; pitch envelope mode (0:attack / 1:release)
0910: d0 0a     bne   $091c
0912: f5 61 03  mov   a,$0361+x
0915: 80        setc
0916: b5 91 02  sbc   a,$0291+x
0919: d5 61 03  mov   $0361+x,a
091c: f5 91 02  mov   a,$0291+x
091f: 60        clrc
0920: 95 61 03  adc   a,$0361+x
0923: 3f df 0d  call  $0ddf
0926: 3f f7 0d  call  $0df7
; set DSP pitch from $10/11
0929: 8d 00     mov   y,#$00
092b: e4 11     mov   a,$11
092d: 80        setc
092e: a8 34     sbc   a,#$34
0930: b0 09     bcs   $093b
0932: e4 11     mov   a,$11
0934: 80        setc
0935: a8 13     sbc   a,#$13
0937: b0 06     bcs   $093f
0939: dc        dec   y
093a: 1c        asl   a
093b: 7a 10     addw  ya,$10
093d: da 10     movw  $10,ya
093f: 4d        push  x
0940: e4 11     mov   a,$11
; get pitch from note number in A (with octave correction)
0942: 1c        asl   a
0943: 8d 00     mov   y,#$00
0945: cd 18     mov   x,#$18
0947: 9e        div   ya,x
0948: 5d        mov   x,a
0949: f6 13 11  mov   a,$1113+y
094c: c4 15     mov   $15,a
094e: f6 12 11  mov   a,$1112+y
0951: c4 14     mov   $14,a             ; set $14/5 from pitch table
0953: f6 15 11  mov   a,$1115+y
0956: 2d        push  a
0957: f6 14 11  mov   a,$1114+y
095a: ee        pop   y
095b: 9a 14     subw  ya,$14
095d: eb 10     mov   y,$10
095f: cf        mul   ya
0960: dd        mov   a,y
0961: 8d 00     mov   y,#$00
0963: 7a 14     addw  ya,$14
0965: cb 15     mov   $15,y
0967: 1c        asl   a
0968: 2b 15     rol   $15
096a: c4 14     mov   $14,a
096c: 2f 04     bra   $0972
096e: 4b 15     lsr   $15
0970: 7c        ror   a
0971: 3d        inc   x
0972: c8 06     cmp   x,#$06
0974: d0 f8     bne   $096e
0976: c4 14     mov   $14,a
0978: ce        pop   x
0979: f5 20 02  mov   a,$0220+x
097c: eb 15     mov   y,$15
097e: cf        mul   ya
097f: da 16     movw  $16,ya
0981: f5 20 02  mov   a,$0220+x
0984: eb 14     mov   y,$14
0986: cf        mul   ya
0987: 6d        push  y
0988: f5 21 02  mov   a,$0221+x
098b: eb 14     mov   y,$14
098d: cf        mul   ya
098e: 7a 16     addw  ya,$16
0990: da 16     movw  $16,ya
0992: f5 21 02  mov   a,$0221+x
0995: eb 15     mov   y,$15
0997: cf        mul   ya
0998: fd        mov   y,a
0999: ae        pop   a
099a: 7a 16     addw  ya,$16
099c: da 16     movw  $16,ya
099e: 7d        mov   a,x               ; set voice X pitch DSP reg from 16/7
099f: 9f        xcn   a                 ;  (if vbit clear in 1a)
09a0: 5c        lsr   a
09a1: 08 02     or    a,#$02
09a3: fd        mov   y,a               ; Y = voice X pitch DSP reg
09a4: e4 16     mov   a,$16
09a6: 3f ac 09  call  $09ac
09a9: fc        inc   y
09aa: e4 17     mov   a,$17
; write A to DSP reg Y if vbit clear in $1a
09ac: 2d        push  a
09ad: e4 47     mov   a,$47
09af: 24 1a     and   a,$1a
09b1: ae        pop   a
09b2: d0 04     bne   $09b8
; write A to DSP reg Y
09b4: cb f2     mov   $f2,y
09b6: c4 f3     mov   $f3,a
09b8: 6f        ret

; read $40/1 into YA with advancing the ptr
09b9: 8d 00     mov   y,#$00
09bb: f7 40     mov   a,($40)+y
09bd: 3a 40     incw  $40
09bf: 2d        push  a
09c0: f7 40     mov   a,($40)+y
09c2: 3a 40     incw  $40
09c4: fd        mov   y,a
09c5: ae        pop   a
09c6: 6f        ret

; play song in A (zero for pause)
09c7: 3f be 11  call  $11be
09ca: c4 08     mov   $08,a
09cc: c4 04     mov   $04,a
09ce: 1c        asl   a
09cf: 5d        mov   x,a
09d0: f5 ff 3a  mov   a,$3aff+x
09d3: fd        mov   y,a
09d4: f5 fe 3a  mov   a,$3afe+x
09d7: da 40     movw  $40,ya
09d9: 8f 02 0c  mov   $0c,#$02
09dc: e4 1a     mov   a,$1a
09de: 48 ff     eor   a,#$ff
09e0: 0e 46 00  tset1 $0046
09e3: 6f        ret

; reset song params
09e4: cd 0e     mov   x,#$0e
09e6: 8f 80 47  mov   $47,#$80          ; last voice
09e9: e8 ff     mov   a,#$ff
09eb: d5 01 03  mov   $0301+x,a         ; voice volume = $ff
09ee: 3f 22 0c  call  $0c22             ; pan = $0a.00
09f1: d5 11 02  mov   $0211+x,a         ; zero instrument
09f4: d5 81 03  mov   $0381+x,a         ; zero tuning
09f7: d5 f0 02  mov   $02f0+x,a         ; zero per-voice transpose
09fa: d5 80 02  mov   $0280+x,a
09fd: d4 b1     mov   $b1+x,a
09ff: d4 c1     mov   $c1+x,a
0a01: 1d        dec   x
0a02: 1d        dec   x
0a03: 4b 47     lsr   $47
0a05: d0 e2     bne   $09e9             ; loop for each voice
0a07: c4 5a     mov   $5a,a             ; zero mastervol fade counter
0a09: c4 68     mov   $68,a             ; zero echo vol fade counter
0a0b: c4 54     mov   $54,a             ; zero tempo fade counter
0a0d: c4 50     mov   $50,a             ; zero global transpose
0a0f: c4 42     mov   $42,a             ; zero block repeat count
0a11: c4 5f     mov   $5f,a             ; 
0a13: c4 13     mov   $13,a             ; 
0a15: fd        mov   y,a
0a16: 3f 51 0d  call  $0d51             ; disable echo
0a19: 8f c0 59  mov   $59,#$c0          ; master vol
0a1c: 8f 20 53  mov   $53,#$20          ; tempo
0a1f: 6f        ret

0a20: 2f aa     bra   $09cc
0a22: eb 08     mov   y,$08
0a24: e4 00     mov   a,$00
0a26: c4 08     mov   $08,a
0a28: 68 f0     cmp   a,#$f0
0a2a: f0 b0     beq   $09dc
0a2c: 68 f1     cmp   a,#$f1
0a2e: f0 08     beq   $0a38
0a30: 68 ff     cmp   a,#$ff
0a32: f0 93     beq   $09c7
0a34: 7e 00     cmp   y,$00
0a36: d0 94     bne   $09cc
0a38: e4 04     mov   a,$04
0a3a: f0 e3     beq   $0a1f
0a3c: e4 0c     mov   a,$0c
0a3e: f0 66     beq   $0aa6
;
0a40: 6e 0c a1  dbnz  $0c,$09e4
0a43: 3f b9 09  call  $09b9             ; read block addr from $40/1, advance ptr
0a46: d0 14     bne   $0a5c             ; load start addresses, if hi-byte is non zero
0a48: fd        mov   y,a               ; refetch lo-byte
0a49: f0 81     beq   $09cc             ; key off, return if also zero
0a4b: 8b 42     dec   $42
0a4d: 10 02     bpl   $0a51
0a4f: c4 42     mov   $42,a
0a51: 3f b9 09  call  $09b9             ; read next word as well
0a54: f8 42     mov   x,$42
0a56: f0 eb     beq   $0a43
0a58: da 40     movw  $40,ya            ;   "goto" that address
0a5a: 2f e7     bra   $0a43             ; continue
; load start addresses - hi-byte not zero
0a5c: da 16     movw  $16,ya
0a5e: 8d 00     mov   y,#$00
0a60: 8f 01 47  mov   $47,#$01          ; first voice
0a63: e4 22     mov   a,$22
0a65: 24 47     and   a,$47
0a67: d0 0d     bne   $0a76             ; if voice is inactive
0a69: f7 16     mov   a,($16)+y         ; offset +0
0a6b: d6 30 00  mov   $0030+y,a
0a6e: fc        inc   y
0a6f: f7 16     mov   a,($16)+y         ; offset +1
0a71: d6 30 00  mov   $0030+y,a         ; set reading ptr
0a74: 2f 01     bra   $0a77
0a76: fc        inc   y
0a77: fc        inc   y
0a78: 0b 47     asl   $47
0a7a: d0 e7     bne   $0a63             ; loop for each voice
;
0a7c: cd 00     mov   x,#$00
0a7e: 8f 01 47  mov   $47,#$01          ; first voice
0a81: e4 22     mov   a,$22
0a83: 24 47     and   a,$47
0a85: d0 19     bne   $0aa0             ; next if voice is active
0a87: f4 31     mov   a,$31+x
0a89: f0 0a     beq   $0a95             ; if vptr hi != 0
0a8b: f5 11 02  mov   a,$0211+x
0a8e: d0 05     bne   $0a95
0a90: e8 00     mov   a,#$00
0a92: 3f cb 0b  call  $0bcb             ; set instrument #0 if not set
0a95: e8 00     mov   a,#$00
0a97: d4 80     mov   $80+x,a           ; zero subroutine repeat counter
0a99: d4 90     mov   $90+x,a           ; zero voice vol fade counter
0a9b: d4 91     mov   $91+x,a           ; zero pan fade counter
0a9d: bc        inc   a
0a9e: d4 70     mov   $70+x,a           ; set duration counter to 1
0aa0: 3d        inc   x
0aa1: 3d        inc   x
0aa2: 0b 47     asl   $47               ; next voice
0aa4: d0 db     bne   $0a81             ; foreach voice
;
0aa6: cd 00     mov   x,#$00
0aa8: d8 5e     mov   $5e,x
0aaa: 8f 01 47  mov   $47,#$01          ; first voice
0aad: d8 44     mov   $44,x
0aaf: f4 31     mov   a,$31+x
0ab1: f0 3c     beq   $0aef             ; next if vptr hi zero
0ab3: 9b 70     dec   $70+x             ; dec duration counter
0ab5: d0 7a     bne   $0b31             ; if not zero, skip to voice readahead
0ab7: 3f c1 0b  call  $0bc1             ; read vcmd into A and Y
0aba: d0 35     bne   $0af1
; vcmd 00 - end repeat/return
0abc: f4 80     mov   a,$80+x
0abe: d0 1a     bne   $0ada             ; do loop if repeat count is left
; end of block
0ac0: e4 22     mov   a,$22
0ac2: 24 47     and   a,$47
0ac4: f0 94     beq   $0a5a             ; do nothing if voice is inactive
0ac6: e8 00     mov   a,#$00
0ac8: d5 30 00  mov   $0030+x,a
0acb: d5 31 00  mov   $0031+x,a         ; zero reading ptr
0ace: c4 05     mov   $05,a
0ad0: e4 47     mov   a,$47
0ad2: 0e 46 00  tset1 $0046
0ad5: 4e 22 00  tclr1 $0022             ; inactivate voice
0ad8: 2f 15     bra   $0aef
; repeat / return from subroutine
0ada: 3f 12 0d  call  $0d12             ; jump to loop start addr
0add: 9b 80     dec   $80+x             ; dec repeat count
0adf: d0 d6     bne   $0ab7             ; if the loop has been done
0ae1: f5 30 02  mov   a,$0230+x
0ae4: d4 30     mov   $30+x,a
0ae6: f5 31 02  mov   a,$0231+x
0ae9: d4 31     mov   $31+x,a           ; back to return addr instead
0aeb: 2f ca     bra   $0ab7             ; then continue
;
0aed: 2f be     bra   $0aad
0aef: 2f 46     bra   $0b37
; vcmd branches
0af1: 30 20     bmi   $0b13             ; vcmds 01-7f - note info:
0af3: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
0af6: 3f c1 0b  call  $0bc1             ;   read next byte
0af9: 30 18     bmi   $0b13             ;   if note note then
0afb: 2d        push  a
0afc: 9f        xcn   a
0afd: 28 07     and   a,#$07
0aff: fd        mov   y,a
0b00: f6 e0 03  mov   a,$03e0+y
0b03: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
0b06: ae        pop   a
0b07: 28 0f     and   a,#$0f
0b09: fd        mov   y,a
0b0a: f6 e8 03  mov   a,$03e8+y
0b0d: d5 10 02  mov   $0210+x,a         ;   set per-note vol from low nybble
0b10: 3f c1 0b  call  $0bc1             ;   read vcmd into A and Y
; vcmd branches 80-ff
0b13: 68 e0     cmp   a,#$e0
0b15: 90 05     bcc   $0b1c
0b17: 3f af 0b  call  $0baf             ; vcmds e0-ff
0b1a: 2f 9b     bra   $0ab7
; vcmds 80-df - note
0b1c: 3f bf 08  call  $08bf             ; handle note cmd if vbit 1a clear
0b1f: f5 00 02  mov   a,$0200+x
0b22: d4 70     mov   $70+x,a           ; set duration counter from duration
0b24: fd        mov   y,a
0b25: f5 01 02  mov   a,$0201+x
0b28: cf        mul   ya
0b29: dd        mov   a,y
0b2a: d0 01     bne   $0b2d
0b2c: bc        inc   a
0b2d: d4 71     mov   $71+x,a           ; set actual key-off dur counter
0b2f: 2f 03     bra   $0b34
0b31: 3f 34 0f  call  $0f34             ; do readahead
0b34: 3f bf 0d  call  $0dbf
0b37: 3d        inc   x
0b38: 3d        inc   x
0b39: 0b 47     asl   $47
0b3b: d0 b0     bne   $0aed             ; next voice
0b3d: e4 54     mov   a,$54             ; tempo fade counter
0b3f: f0 0b     beq   $0b4c
0b41: ba 56     movw  ya,$56
0b43: 7a 52     addw  ya,$52            ; add tempo fade to tempo
0b45: 6e 54 02  dbnz  $54,$0b4a
0b48: ba 54     movw  ya,$54            ; last time: move tempo target to tempo
0b4a: da 52     movw  $52,ya
0b4c: e4 68     mov   a,$68             ; echo vol fade counter
0b4e: f0 15     beq   $0b65
0b50: ba 64     movw  ya,$64
0b52: 7a 60     addw  ya,$60
0b54: da 60     movw  $60,ya            ; add echo L delta to echo L vol
0b56: ba 66     movw  ya,$66
0b58: 7a 62     addw  ya,$62            ; add echo R delta to echo R vol
0b5a: 6e 68 06  dbnz  $68,$0b63
0b5d: ba 68     movw  ya,$68
0b5f: da 60     movw  $60,ya
0b61: eb 6a     mov   y,$6a
0b63: da 62     movw  $62,ya
0b65: e4 5a     mov   a,$5a             ; master vol fade counter
0b67: f0 0e     beq   $0b77
0b69: ba 5c     movw  ya,$5c
0b6b: 7a 58     addw  ya,$58            ; add master vol delta to value
0b6d: 6e 5a 02  dbnz  $5a,$0b72
0b70: ba 5a     movw  ya,$5a
0b72: da 58     movw  $58,ya
0b74: 8f ff 5e  mov   $5e,#$ff          ; set all vol chg flags
0b77: cd 02     mov   x,#$02
0b79: 3f b2 08  call  $08b2
0b7c: c4 06     mov   $06,a
0b7e: cd 00     mov   x,#$00
0b80: 8f 01 47  mov   $47,#$01          ; first voice
0b83: f4 31     mov   a,$31+x
0b85: f0 03     beq   $0b8a
0b87: 3f 6f 0e  call  $0e6f             ; do per-voice fades
0b8a: 7d        mov   a,x
0b8b: 5c        lsr   a
0b8c: 9f        xcn   a
0b8d: fb d1     mov   y,$d1+x
0b8f: 3f 9f 0b  call  $0b9f
0b92: fb d0     mov   y,$d0+x
0b94: bc        inc   a
0b95: 3f 9f 0b  call  $0b9f
0b98: 3d        inc   x
0b99: 3d        inc   x
0b9a: 0b 47     asl   $47
0b9c: d0 e5     bne   $0b83             ; loop for each voice
0b9e: 6f        ret

0b9f: 2d        push  a
0ba0: e4 22     mov   a,$22
0ba2: 24 47     and   a,$47
0ba4: d0 03     bne   $0ba9
0ba6: e4 02     mov   a,$02
0ba8: cf        mul   ya
0ba9: ae        pop   a
0baa: c4 f2     mov   $f2,a
0bac: cb f3     mov   $f3,y
0bae: 6f        ret

; dispatch vcmd in A (e0-ff)
0baf: 1c        asl   a
0bb0: fd        mov   y,a
0bb1: f6 5f 0d  mov   a,$0d5f+y
0bb4: 2d        push  a
0bb5: f6 5e 0d  mov   a,$0d5e+y
0bb8: 2d        push  a                 ; push jump address from table
0bb9: dd        mov   a,y
0bba: 5c        lsr   a
0bbb: fd        mov   y,a
0bbc: f6 f4 0d  mov   a,$0df4+y         ; vcmd length
0bbf: f0 08     beq   $0bc9             ; if non zero
; read new argument to A and Y
0bc1: e7 30     mov   a,($30+x)
; advance reading ptr
0bc3: bb 30     inc   $30+x
0bc5: d0 02     bne   $0bc9
0bc7: bb 31     inc   $31+x             ; inc reading ptr
0bc9: fd        mov   y,a
0bca: 6f        ret                     ; jump to vcmd

; vcmd e0 - set instrument
0bcb: d5 11 02  mov   $0211+x,a
0bce: fd        mov   y,a
0bcf: 10 06     bpl   $0bd7             ; if percussion note:
0bd1: 80        setc
0bd2: a8 ca     sbc   a,#$ca            ;   ca-df => 00-15
0bd4: 60        clrc
0bd5: 84 5f     adc   a,$5f             ; add perc patch base
0bd7: 8d 06     mov   y,#$06
; set sample A in bank at $14/5 width Y
0bd9: cf        mul   ya
0bda: da 14     movw  $14,ya
0bdc: 60        clrc
0bdd: 98 00 14  adc   $14,#$00
0be0: 98 06 15  adc   $15,#$06
0be3: e4 1a     mov   a,$1a
0be5: 24 47     and   a,$47
0be7: d0 38     bne   $0c21
0be9: 4d        push  x
0bea: 7d        mov   a,x
0beb: 9f        xcn   a
0bec: 5c        lsr   a
0bed: 08 04     or    a,#$04            ; voice X SRCN
0bef: 5d        mov   x,a
0bf0: 8d 00     mov   y,#$00
0bf2: f7 14     mov   a,($14)+y
0bf4: 10 0e     bpl   $0c04
0bf6: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0bf8: 38 20 48  and   $48,#$20          ;  keep echo bit from FLG
0bfb: 0e 48 00  tset1 $0048             ;  OR in noise freq
0bfe: 09 47 49  or    ($49),($47)       ;  set vbit in noise enable
0c01: dd        mov   a,y               ;  set SRCN to 0
0c02: 2f 07     bra   $0c0b             ; else
0c04: e4 47     mov   a,$47
0c06: 4e 49 00  tclr1 $0049             ;  clear noise vbit
0c09: f7 14     mov   a,($14)+y         ;  set SRCN from table
0c0b: d8 f2     mov   $f2,x
0c0d: c4 f3     mov   $f3,a
0c0f: 3d        inc   x
0c10: fc        inc   y
0c11: ad 04     cmp   y,#$04
0c13: d0 f4     bne   $0c09             ; set SRCN, ADSR1/2, GAIN from table
0c15: ce        pop   x
0c16: f7 14     mov   a,($14)+y
0c18: d5 21 02  mov   $0221+x,a
0c1b: fc        inc   y
0c1c: f7 14     mov   a,($14)+y
0c1e: d5 20 02  mov   $0220+x,a         ; set pitch multiplier
0c21: 6f        ret

; set pan = $0a.00 (center)
0c22: e8 0a     mov   a,#$0a
; vcmd e1 - pan
0c24: d5 51 03  mov   $0351+x,a
0c27: 28 1f     and   a,#$1f
0c29: d5 31 03  mov   $0331+x,a         ; voice pan value
0c2c: e8 00     mov   a,#$00
0c2e: d5 30 03  mov   $0330+x,a
0c31: 6f        ret

; vcmd e2 - pan fade
0c32: d4 91     mov   $91+x,a
0c34: 2d        push  a
0c35: 3f c1 0b  call  $0bc1
0c38: d5 50 03  mov   $0350+x,a
0c3b: 80        setc
0c3c: b5 31 03  sbc   a,$0331+x         ; current pan value
0c3f: ce        pop   x
0c40: 3f 02 0e  call  $0e02             ; delta = pan value / steps
0c43: d5 40 03  mov   $0340+x,a
0c46: dd        mov   a,y
0c47: d5 41 03  mov   $0341+x,a
0c4a: 6f        ret

; vcmd e3 - vibrato on
0c4b: d5 b0 02  mov   $02b0+x,a
0c4e: 3f c1 0b  call  $0bc1
0c51: d5 a1 02  mov   $02a1+x,a
0c54: 3f c1 0b  call  $0bc1
; vcmd e4 - vibrato off
0c57: d4 b1     mov   $b1+x,a
0c59: d5 c1 02  mov   $02c1+x,a
0c5c: e8 00     mov   a,#$00
0c5e: d5 b1 02  mov   $02b1+x,a
0c61: 6f        ret

; vcmd f0 - vibrato fade
0c62: d5 b1 02  mov   $02b1+x,a
0c65: 2d        push  a
0c66: 8d 00     mov   y,#$00
0c68: f4 b1     mov   a,$b1+x
0c6a: ce        pop   x
0c6b: 9e        div   ya,x
0c6c: f8 44     mov   x,$44
0c6e: d5 c0 02  mov   $02c0+x,a
0c71: 6f        ret

; vcmd e5 - master volume
0c72: e8 00     mov   a,#$00
0c74: da 58     movw  $58,ya
0c76: 6f        ret

; vcmd e6 - master volume fade
0c77: c4 5a     mov   $5a,a
0c79: 3f c1 0b  call  $0bc1
0c7c: c4 5b     mov   $5b,a
0c7e: 80        setc
0c7f: a4 59     sbc   a,$59
0c81: f8 5a     mov   x,$5a
0c83: 3f 02 0e  call  $0e02
0c86: da 5c     movw  $5c,ya
0c88: 6f        ret

; vcmd e7 - tempo
0c89: e8 00     mov   a,#$00
0c8b: da 52     movw  $52,ya
0c8d: 6f        ret

; vcmd e8 - tempo fade
0c8e: c4 54     mov   $54,a
0c90: 3f c1 0b  call  $0bc1
0c93: c4 55     mov   $55,a
0c95: 80        setc
0c96: a4 53     sbc   a,$53
0c98: f8 54     mov   x,$54
0c9a: 3f 02 0e  call  $0e02
0c9d: da 56     movw  $56,ya
0c9f: 6f        ret

; vcmd e9 - global transpose (absolete)
0ca0: c4 50     mov   $50,a
0ca2: 6f        ret

; vcmd ea - per-voice transpose (absolete)
0ca3: d5 f0 02  mov   $02f0+x,a
0ca6: 6f        ret

; vcmd eb - tremolo on
0ca7: d5 e0 02  mov   $02e0+x,a
0caa: 3f c1 0b  call  $0bc1
0cad: d5 d1 02  mov   $02d1+x,a
0cb0: 3f c1 0b  call  $0bc1
; vcmd ec - tremolo off
0cb3: d4 c1     mov   $c1+x,a
0cb5: 6f        ret

; vcmd f1 - pitch envelope (release)
0cb6: e8 01     mov   a,#$01
0cb8: 2f 02     bra   $0cbc
; vcmd f2 - pitch envelope (attack)
0cba: e8 00     mov   a,#$00
0cbc: d5 90 02  mov   $0290+x,a
0cbf: dd        mov   a,y
0cc0: d5 81 02  mov   $0281+x,a
0cc3: 3f c1 0b  call  $0bc1
0cc6: d5 80 02  mov   $0280+x,a
0cc9: 3f c1 0b  call  $0bc1
0ccc: d5 91 02  mov   $0291+x,a
0ccf: 6f        ret

; vcmd f3 - pitch envelope off
0cd0: d5 80 02  mov   $0280+x,a
0cd3: 6f        ret

; vcmd ed - volume
0cd4: d5 01 03  mov   $0301+x,a
0cd7: e8 00     mov   a,#$00
0cd9: d5 00 03  mov   $0300+x,a
0cdc: 6f        ret

; vcmd ee - volume fade
0cdd: d4 90     mov   $90+x,a
0cdf: 2d        push  a
0ce0: 3f c1 0b  call  $0bc1
0ce3: d5 20 03  mov   $0320+x,a
0ce6: 80        setc
0ce7: b5 01 03  sbc   a,$0301+x
0cea: ce        pop   x
0ceb: 3f 02 0e  call  $0e02
0cee: d5 10 03  mov   $0310+x,a
0cf1: dd        mov   a,y
0cf2: d5 11 03  mov   $0311+x,a
0cf5: 6f        ret

; vcmd f4 - tuning
0cf6: d5 81 03  mov   $0381+x,a
0cf9: 6f        ret

; vcmd ef - call subroutine (n times)
0cfa: d5 40 02  mov   $0240+x,a
0cfd: 3f c1 0b  call  $0bc1
0d00: d5 41 02  mov   $0241+x,a         ; $0240/1+X - destination (arg1/2)
0d03: 3f c1 0b  call  $0bc1
0d06: d4 80     mov   $80+x,a           ; repeat count from arg3
0d08: f4 30     mov   a,$30+x
0d0a: d5 30 02  mov   $0230+x,a
0d0d: f4 31     mov   a,$31+x
0d0f: d5 31 02  mov   $0231+x,a         ; $0230/1+X - return addr
; jump to $0240/1+X (loop destination)
0d12: f5 40 02  mov   a,$0240+x
0d15: d4 30     mov   $30+x,a
0d17: f5 41 02  mov   a,$0241+x
0d1a: d4 31     mov   $31+x,a
0d1c: 6f        ret

; vcmd f5 - echo vbits/volume
0d1d: c4 4a     mov   $4a,a             ; echo vbit shadow = arg1
0d1f: 3f c1 0b  call  $0bc1
0d22: e8 00     mov   a,#$00
0d24: da 60     movw  $60,ya            ; echo vol L shadow = arg2
0d26: 3f c1 0b  call  $0bc1
0d29: e8 00     mov   a,#$00
0d2b: da 62     movw  $62,ya            ; echo vol R shadow = arg3
0d2d: b2 48     clr5  $48               ; enable echo write
0d2f: 6f        ret

; vcmd f8 - echo volume fade
0d30: c4 68     mov   $68,a
0d32: 3f c1 0b  call  $0bc1
0d35: c4 69     mov   $69,a
0d37: 80        setc
0d38: a4 61     sbc   a,$61
0d3a: f8 68     mov   x,$68
0d3c: 3f 02 0e  call  $0e02
0d3f: da 64     movw  $64,ya
0d41: 3f c1 0b  call  $0bc1
0d44: c4 6a     mov   $6a,a
0d46: 80        setc
0d47: a4 63     sbc   a,$63
0d49: f8 68     mov   x,$68
0d4b: 3f 02 0e  call  $0e02
0d4e: da 66     movw  $66,ya
0d50: 6f        ret

; vcmd f6 - disable echo
0d51: da 60     movw  $60,ya            ; zero echo vol L shadow
0d53: da 62     movw  $62,ya            ; zero echo vol R shadow
0d55: a2 48     set5  $48               ; disable echo write
0d57: 6f        ret

; vcmd f7 - set echo delay, feedback, filter
0d58: 3f 7a 0d  call  $0d7a             ; set echo delay from arg1
0d5b: 3f c1 0b  call  $0bc1
0d5e: c4 4e     mov   $4e,a             ; set echo feedback shadow from arg2
0d60: 3f c1 0b  call  $0bc1
0d63: 8d 08     mov   y,#$08
0d65: cf        mul   ya
0d66: 5d        mov   x,a
0d67: 8d 0f     mov   y,#$0f
0d69: f5 de 10  mov   a,$10de+x         ; filter table
0d6c: 3f b4 09  call  $09b4
0d6f: 3d        inc   x
0d70: dd        mov   a,y
0d71: 60        clrc
0d72: 88 10     adc   a,#$10
0d74: fd        mov   y,a
0d75: 10 f2     bpl   $0d69             ; set echo filter from table index arg3
0d77: f8 44     mov   x,$44
0d79: 6f        ret
; set echo delay to A
0d7a: c4 4d     mov   $4d,a
0d7c: 8d 7d     mov   y,#$7d
0d7e: cb f2     mov   $f2,y
0d80: e4 f3     mov   a,$f3             ; set echo delay
0d82: 64 4d     cmp   a,$4d
0d84: f0 29     beq   $0daf             ; same as $4d?
0d86: 28 0f     and   a,#$0f
0d88: 48 ff     eor   a,#$ff
0d8a: f3 4c 03  bbc7  $4c,$0d90
0d8d: 60        clrc
0d8e: 84 4c     adc   a,$4c
0d90: c4 4c     mov   $4c,a
0d92: 8d 04     mov   y,#$04
0d94: f6 fd 10  mov   a,$10fd+y         ; shadow reg DSP reg table
0d97: c4 f2     mov   $f2,a
0d99: e8 00     mov   a,#$00
0d9b: c4 f3     mov   $f3,a
0d9d: fe f5     dbnz  y,$0d94           ; zero echo vol, feedback, vbit DSP regs
0d9f: e4 48     mov   a,$48
0da1: 08 20     or    a,#$20
0da3: 8d 6c     mov   y,#$6c
0da5: 3f b4 09  call  $09b4             ; set FLG from shadow but disable echo
0da8: e4 4d     mov   a,$4d
0daa: 8d 7d     mov   y,#$7d
0dac: 3f b4 09  call  $09b4             ; set echo delay from $4d
0daf: 1c        asl   a
0db0: 1c        asl   a
0db1: 1c        asl   a
0db2: 48 ff     eor   a,#$ff
0db4: 80        setc
0db5: 88 3b     adc   a,#$3b
0db7: 8d 6d     mov   y,#$6d            ; set echo region to $3b00-8*delay
0db9: 5f b4 09  jmp   $09b4

; vcmd fa - set perc patch base
0dbc: c4 5f     mov   $5f,a
0dbe: 6f        ret

; 
0dbf: f4 a0     mov   a,$a0+x
0dc1: d0 33     bne   $0df6
0dc3: e7 30     mov   a,($30+x)
0dc5: 68 f9     cmp   a,#$f9
0dc7: d0 2d     bne   $0df6
0dc9: 3f c3 0b  call  $0bc3
0dcc: 3f c1 0b  call  $0bc1
; vcmd f9 - pitch slide
0dcf: d4 a1     mov   $a1+x,a
0dd1: 3f c1 0b  call  $0bc1
0dd4: d4 a0     mov   $a0+x,a
0dd6: 3f c1 0b  call  $0bc1
0dd9: 60        clrc
0dda: 84 50     adc   a,$50             ; add global transpose
0ddc: 95 f0 02  adc   a,$02f0+x         ; per-voice transpose
; calculate portamento delta
0ddf: 28 7f     and   a,#$7f
0de1: d5 80 03  mov   $0380+x,a         ; final portamento value
0de4: 80        setc
0de5: b5 61 03  sbc   a,$0361+x         ; note number
0de8: fb a0     mov   y,$a0+x           ; portamento steps
0dea: 6d        push  y
0deb: ce        pop   x
0dec: 3f 02 0e  call  $0e02
0def: d5 70 03  mov   $0370+x,a
0df2: dd        mov   a,y
0df3: d5 71 03  mov   $0371+x,a         ; portamento delta
0df6: 6f        ret

0df7: f5 61 03  mov   a,$0361+x
0dfa: c4 11     mov   $11,a
0dfc: f5 60 03  mov   a,$0360+x
0dff: c4 10     mov   $10,a
0e01: 6f        ret

; signed 16 bit division
0e02: ed        notc
0e03: 6b 12     ror   $12
0e05: 10 03     bpl   $0e0a
0e07: 48 ff     eor   a,#$ff
0e09: bc        inc   a
0e0a: 8d 00     mov   y,#$00
0e0c: 9e        div   ya,x
0e0d: 2d        push  a
0e0e: e8 00     mov   a,#$00
0e10: 9e        div   ya,x
0e11: ee        pop   y
0e12: f8 44     mov   x,$44
0e14: f3 12 06  bbc7  $12,$0e1d
0e17: da 14     movw  $14,ya
0e19: ba 0e     movw  ya,$0e
0e1b: 9a 14     subw  ya,$14
0e1d: 6f        ret

; vcmd dispatch table ($0d5e)
0e1e: dw $0bcb  ; e0 - set instrument
0e20: dw $0c24  ; e1 - pan
0e22: dw $0c32  ; e2 - pan fade
0e24: dw $0c4b  ; e3 - vibrato on
0e26: dw $0c57  ; e4 - vibrato off
0e28: dw $0c72  ; e5 - master volume
0e2a: dw $0c77  ; e6 - master volume fade
0e2c: dw $0c89  ; e7 - tempo
0e2e: dw $0c8e  ; e8 - tempo fade
0e30: dw $0ca0  ; e9 - global transpose
0e32: dw $0ca3  ; ea - per-voice transpose
0e34: dw $0ca7  ; eb - tremolo on
0e36: dw $0cb3  ; ec - tremolo off
0e38: dw $0cd4  ; ed - volume
0e3a: dw $0cdd  ; ee - volume fade
0e3c: dw $0cfa  ; ef - call subroutine
0e3e: dw $0c62  ; f0 - vibrato fade
0e40: dw $0cb6  ; f1 - pitch envelope (release)
0e42: dw $0cba  ; f2 - pitch envelope (attack)
0e44: dw $0cd0  ; f3 - pitch envelope off
0e46: dw $0cf6  ; f4 - tuning
0e48: dw $0d1d  ; f5 - echo vbits/volume
0e4a: dw $0d51  ; f6 - disable echo
0e4c: dw $0d58  ; f7 - set echo params
0e4e: dw $0d30  ; f8 - echo volume fade
0e50: dw $0dcf  ; f9 - pitch slide
0e52: dw $0dbc  ; fa - set perc patch base
                ; fb-ff undefined

; vcmd lengths ($0df4)
0e54: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0e5c: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0e64: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0e6c: db $03,$03,$01                     ; f8-fa

; do voice fades
0e6f: f4 90     mov   a,$90+x           ; voice volume fade counter
0e71: f0 24     beq   $0e97
0e73: 09 47 5e  or    ($5e),($47)
0e76: 9b 90     dec   $90+x             ; dec voice vol fade counter
0e78: d0 0a     bne   $0e84
0e7a: e8 00     mov   a,#$00
0e7c: d5 00 03  mov   $0300+x,a
0e7f: f5 20 03  mov   a,$0320+x
0e82: 2f 10     bra   $0e94
0e84: 60        clrc
0e85: f5 00 03  mov   a,$0300+x
0e88: 95 10 03  adc   a,$0310+x
0e8b: d5 00 03  mov   $0300+x,a
0e8e: f5 01 03  mov   a,$0301+x
0e91: 95 11 03  adc   a,$0311+x
0e94: d5 01 03  mov   $0301+x,a
0e97: fb c1     mov   y,$c1+x
0e99: f0 23     beq   $0ebe
0e9b: f5 e0 02  mov   a,$02e0+x
0e9e: de c0 1b  cbne  $c0+x,$0ebc
0ea1: 09 47 5e  or    ($5e),($47)
0ea4: f5 d0 02  mov   a,$02d0+x
0ea7: 10 07     bpl   $0eb0
0ea9: fc        inc   y
0eaa: d0 04     bne   $0eb0
0eac: e8 80     mov   a,#$80
0eae: 2f 04     bra   $0eb4
0eb0: 60        clrc
0eb1: 95 d1 02  adc   a,$02d1+x
0eb4: d5 d0 02  mov   $02d0+x,a
0eb7: 3f ac 10  call  $10ac
0eba: 2f 07     bra   $0ec3
0ebc: bb c0     inc   $c0+x
0ebe: e8 ff     mov   a,#$ff
0ec0: 3f b7 10  call  $10b7
0ec3: f4 91     mov   a,$91+x
0ec5: f0 24     beq   $0eeb
0ec7: 09 47 5e  or    ($5e),($47)
0eca: 9b 91     dec   $91+x
0ecc: d0 0a     bne   $0ed8
0ece: e8 00     mov   a,#$00
0ed0: d5 30 03  mov   $0330+x,a
0ed3: f5 50 03  mov   a,$0350+x
0ed6: 2f 10     bra   $0ee8
0ed8: 60        clrc
0ed9: f5 30 03  mov   a,$0330+x
0edc: 95 40 03  adc   a,$0340+x
0edf: d5 30 03  mov   $0330+x,a
0ee2: f5 31 03  mov   a,$0331+x
0ee5: 95 41 03  adc   a,$0341+x
0ee8: d5 31 03  mov   $0331+x,a
0eeb: e4 47     mov   a,$47
0eed: 24 5e     and   a,$5e
0eef: f0 1b     beq   $0f0c
0ef1: f5 31 03  mov   a,$0331+x
0ef4: fd        mov   y,a
0ef5: f5 30 03  mov   a,$0330+x
0ef8: da 10     movw  $10,ya
0efa: 3f 0d 0f  call  $0f0d
0efd: d4 d0     mov   $d0+x,a
0eff: 8d 14     mov   y,#$14
0f01: e8 00     mov   a,#$00
0f03: 9a 10     subw  ya,$10
0f05: da 10     movw  $10,ya
0f07: 3f 0d 0f  call  $0f0d
0f0a: d4 d1     mov   $d1+x,a
0f0c: 6f        ret

0f0d: eb 11     mov   y,$11
0f0f: f6 ca 10  mov   a,$10ca+y         ; next pan val from table
0f12: 80        setc
0f13: b6 c9 10  sbc   a,$10c9+y         ; pan val
0f16: eb 10     mov   y,$10
0f18: cf        mul   ya
0f19: dd        mov   a,y
0f1a: eb 11     mov   y,$11
0f1c: 60        clrc
0f1d: 96 c9 10  adc   a,$10c9+y         ; add integer part to pan val
0f20: fd        mov   y,a
0f21: f5 21 03  mov   a,$0321+x         ; volume
0f24: cf        mul   ya
0f25: f5 51 03  mov   a,$0351+x         ; bits 7/6 will negate volume L/R
0f28: 1c        asl   a
0f29: 13 12 01  bbc0  $12,$0f2d
0f2c: 1c        asl   a
0f2d: dd        mov   a,y
0f2e: 90 03     bcc   $0f33
0f30: 48 ff     eor   a,#$ff
0f32: bc        inc   a
0f33: 6f        ret

; do readahead
0f34: f4 71     mov   a,$71+x
0f36: f0 65     beq   $0f9d
0f38: 9b 71     dec   $71+x
0f3a: f0 05     beq   $0f41
0f3c: e8 02     mov   a,#$02
0f3e: de 70 5c  cbne  $70+x,$0f9d
0f41: f4 80     mov   a,$80+x
0f43: c4 17     mov   $17,a
0f45: f4 30     mov   a,$30+x
0f47: fb 31     mov   y,$31+x
0f49: da 14     movw  $14,ya
0f4b: 8d 00     mov   y,#$00
0f4d: f7 14     mov   a,($14)+y
0f4f: f0 1e     beq   $0f6f
0f51: 30 07     bmi   $0f5a
0f53: fc        inc   y
0f54: 30 40     bmi   $0f96
0f56: f7 14     mov   a,($14)+y
0f58: 10 f9     bpl   $0f53
0f5a: 68 c8     cmp   a,#$c8
0f5c: f0 3f     beq   $0f9d             ; tie?
0f5e: 68 ef     cmp   a,#$ef
0f60: f0 29     beq   $0f8b
0f62: 68 e0     cmp   a,#$e0
0f64: 90 30     bcc   $0f96
0f66: 6d        push  y
0f67: fd        mov   y,a
0f68: ae        pop   a
0f69: 96 74 0d  adc   a,$0d74+y         ; vcmd lengths
0f6c: fd        mov   y,a
0f6d: 2f de     bra   $0f4d
0f6f: e4 17     mov   a,$17
0f71: f0 23     beq   $0f96
0f73: 8b 17     dec   $17
0f75: d0 0a     bne   $0f81
; read $0230/1+X into YA
0f77: f5 31 02  mov   a,$0231+x
0f7a: 2d        push  a
0f7b: f5 30 02  mov   a,$0230+x
0f7e: ee        pop   y
0f7f: 2f c8     bra   $0f49
; read $0240/1+X into YA
0f81: f5 41 02  mov   a,$0241+x
0f84: 2d        push  a
0f85: f5 40 02  mov   a,$0240+x
0f88: ee        pop   y
0f89: 2f be     bra   $0f49
;
0f8b: fc        inc   y
0f8c: f7 14     mov   a,($14)+y
0f8e: 2d        push  a
0f8f: fc        inc   y
0f90: f7 14     mov   a,($14)+y
0f92: fd        mov   y,a
0f93: ae        pop   a
0f94: 2f b3     bra   $0f49
0f96: e4 47     mov   a,$47
0f98: 8d 5c     mov   y,#$5c
0f9a: 3f ac 09  call  $09ac
0f9d: f2 13     clr7  $13
0f9f: f4 a0     mov   a,$a0+x
0fa1: f0 2c     beq   $0fcf
0fa3: f4 a1     mov   a,$a1+x
0fa5: f0 04     beq   $0fab
0fa7: 9b a1     dec   $a1+x
0fa9: 2f 24     bra   $0fcf
0fab: e2 13     set7  $13
0fad: 9b a0     dec   $a0+x
0faf: d0 0b     bne   $0fbc
0fb1: f5 81 03  mov   a,$0381+x
0fb4: d5 60 03  mov   $0360+x,a
0fb7: f5 80 03  mov   a,$0380+x
0fba: 2f 10     bra   $0fcc
0fbc: 60        clrc
0fbd: f5 60 03  mov   a,$0360+x
0fc0: 95 70 03  adc   a,$0370+x
0fc3: d5 60 03  mov   $0360+x,a
0fc6: f5 61 03  mov   a,$0361+x
0fc9: 95 71 03  adc   a,$0371+x
0fcc: d5 61 03  mov   $0361+x,a
0fcf: 3f f7 0d  call  $0df7
0fd2: f4 b1     mov   a,$b1+x
0fd4: f0 4c     beq   $1022
0fd6: f5 b0 02  mov   a,$02b0+x
0fd9: de b0 44  cbne  $b0+x,$1020
0fdc: f5 00 01  mov   a,$0100+x
0fdf: 75 b1 02  cmp   a,$02b1+x
0fe2: d0 05     bne   $0fe9
0fe4: f5 c1 02  mov   a,$02c1+x
0fe7: 2f 0d     bra   $0ff6
0fe9: 40        setp
0fea: bb 00     inc   $00+x
0fec: 20        clrp
0fed: fd        mov   y,a
0fee: f0 02     beq   $0ff2
0ff0: f4 b1     mov   a,$b1+x
0ff2: 60        clrc
0ff3: 95 c0 02  adc   a,$02c0+x
0ff6: d4 b1     mov   $b1+x,a
0ff8: f5 a0 02  mov   a,$02a0+x
0ffb: 60        clrc
0ffc: 95 a1 02  adc   a,$02a1+x
0fff: d5 a0 02  mov   $02a0+x,a
1002: c4 12     mov   $12,a
1004: 1c        asl   a
1005: 1c        asl   a
1006: 90 02     bcc   $100a
1008: 48 ff     eor   a,#$ff
100a: fd        mov   y,a
100b: f4 b1     mov   a,$b1+x
100d: 68 f1     cmp   a,#$f1
100f: 90 05     bcc   $1016
1011: 28 0f     and   a,#$0f
1013: cf        mul   ya
1014: 2f 04     bra   $101a
1016: cf        mul   ya
1017: dd        mov   a,y
1018: 8d 00     mov   y,#$00
101a: 3f 97 10  call  $1097
101d: 5f 29 09  jmp   $0929

1020: bb b0     inc   $b0+x
1022: e3 13 f8  bbs7  $13,$101d
1025: 6f        ret

; per-voice fades/dsps
1026: f2 13     clr7  $13
1028: f4 c1     mov   a,$c1+x
102a: f0 09     beq   $1035
102c: f5 e0 02  mov   a,$02e0+x
102f: de c0 03  cbne  $c0+x,$1035
1032: 3f 9f 10  call  $109f             ; voice vol calculations
1035: f5 31 03  mov   a,$0331+x
1038: fd        mov   y,a
1039: f5 30 03  mov   a,$0330+x
103c: da 10     movw  $10,ya            ; $10/1 = voice pan value
103e: f4 91     mov   a,$91+x           ; voice pan fade counter
1040: f0 0a     beq   $104c
1042: f5 41 03  mov   a,$0341+x
1045: fd        mov   y,a
1046: f5 40 03  mov   a,$0340+x         ; pan fade delta
1049: 3f 81 10  call  $1081             ; add delta (with mutations)?
104c: f3 13 03  bbc7  $13,$1052
104f: 3f fa 0e  call  $0efa
1052: f2 13     clr7  $13
1054: 3f f7 0d  call  $0df7
1057: f4 a0     mov   a,$a0+x
1059: f0 0e     beq   $1069
105b: f4 a1     mov   a,$a1+x
105d: d0 0a     bne   $1069
105f: f5 71 03  mov   a,$0371+x
1062: fd        mov   y,a
1063: f5 70 03  mov   a,$0370+x
1066: 3f 81 10  call  $1081
1069: f4 b1     mov   a,$b1+x
106b: f0 b5     beq   $1022
106d: f5 b0 02  mov   a,$02b0+x
1070: de b0 af  cbne  $b0+x,$1022
1073: eb 51     mov   y,$51
1075: f5 a1 02  mov   a,$02a1+x
1078: cf        mul   ya
1079: dd        mov   a,y
107a: 60        clrc
107b: 95 a0 02  adc   a,$02a0+x
107e: 5f 02 10  jmp   $1002

1081: e2 13     set7  $13
1083: cb 12     mov   $12,y
1085: 3f 14 0e  call  $0e14
1088: 6d        push  y
1089: eb 51     mov   y,$51
108b: cf        mul   ya
108c: cb 14     mov   $14,y
108e: 8f 00 15  mov   $15,#$00
1091: eb 51     mov   y,$51
1093: ae        pop   a
1094: cf        mul   ya
1095: 7a 14     addw  ya,$14
1097: 3f 14 0e  call  $0e14
109a: 7a 10     addw  ya,$10
109c: da 10     movw  $10,ya
109e: 6f        ret

109f: e2 13     set7  $13
10a1: eb 51     mov   y,$51
10a3: f5 d1 02  mov   a,$02d1+x
10a6: cf        mul   ya
10a7: dd        mov   a,y
10a8: 60        clrc
10a9: 95 d0 02  adc   a,$02d0+x
10ac: 1c        asl   a
10ad: 90 02     bcc   $10b1
10af: 48 ff     eor   a,#$ff
10b1: fb c1     mov   y,$c1+x
10b3: cf        mul   ya
10b4: dd        mov   a,y
10b5: 48 ff     eor   a,#$ff
10b7: eb 59     mov   y,$59
10b9: cf        mul   ya
10ba: f5 10 02  mov   a,$0210+x
10bd: cf        mul   ya
10be: f5 01 03  mov   a,$0301+x
10c1: cf        mul   ya
10c2: dd        mov   a,y
10c3: cf        mul   ya
10c4: dd        mov   a,y
10c5: d5 21 03  mov   $0321+x,a
10c8: 6f        ret

; pan table
10c9: db $00,$01,$03,$07,$0d,$15,$1e,$29
10d1: db $34,$42,$51,$5e,$67,$6e,$73,$77
10d9: db $7a,$7c,$7d,$7e,$7f

; echo FIR preset
10de: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
10e6: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
10ee: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
10f6: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($1107+1) for dsp regs ($10fd+1)
10fe: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1108: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
1112: dw $085f,$08de
1116: dw $0965,$09f4
111a: dw $0a8c
111c: dw $0b2c,$0bd6
1120: dw $0c8b,$0d4a
1124: dw $0e14,$0eea
1128: dw $0fcd
112a: dw $10be

112c: db $2a,$56,$65,$72,$20,$53,$31,$2e,$32,$30,$2a

1137: eb 09     mov   y,$09
1139: e4 01     mov   a,$01
113b: c4 09     mov   $09,a
113d: 7e 01     cmp   y,$01
113f: f0 26     beq   $1167
1141: c4 05     mov   $05,a
1143: 1c        asl   a
1144: d0 22     bne   $1168
1146: 8f 01 47  mov   $47,#$01
1149: cd 00     mov   x,#$00
114b: e4 22     mov   a,$22
114d: 24 47     and   a,$47
114f: f0 10     beq   $1161
1151: 0e 46 00  tset1 $0046
1154: e8 00     mov   a,#$00
1156: d5 30 00  mov   $0030+x,a
1159: d5 31 00  mov   $0031+x,a         ; zero reading ptr
115c: e4 47     mov   a,$47
115e: 4e 22 00  tclr1 $0022
1161: 3d        inc   x
1162: 3d        inc   x
1163: 0b 47     asl   $47
1165: d0 e4     bne   $114b
1167: 6f        ret

1168: 5d        mov   x,a
1169: f5 ff 3a  mov   a,$3aff+x
116c: fd        mov   y,a
116d: f5 fe 3a  mov   a,$3afe+x
1170: da 20     movw  $20,ya            ; set $20/1 to $3afe/f+X
1172: 8d 00     mov   y,#$00            ; zero offset
1174: f7 20     mov   a,($20)+y         ; offset 0
1176: 5d        mov   x,a
1177: fc        inc   y
1178: f7 20     mov   a,($20)+y         ; offset 1
117a: d8 20     mov   $20,x
117c: c4 21     mov   $21,a             ; $20/1 = ($20/1)
117e: 8f 01 47  mov   $47,#$01          ; first voice
1181: cd 00     mov   x,#$00
; set reading ptrs
1183: 7d        mov   a,x
1184: fd        mov   y,a
1185: fc        inc   y
1186: f7 20     mov   a,($20)+y         ; offset +1
1188: f0 2d     beq   $11b7             ; skip, if non zero
118a: d6 30 00  mov   $0030+y,a         ; reading ptr hi
118d: dc        dec   y
118e: f7 20     mov   a,($20)+y         ; offset +0
1190: d6 30 00  mov   $0030+y,a         ; reading ptr lo
1193: e8 ff     mov   a,#$ff
1195: d5 01 03  mov   $0301+x,a         ; voice volume = $ff
1198: 3f 22 0c  call  $0c22             ; pan = $0a.00
119b: d5 11 02  mov   $0211+x,a         ; zero instrument
119e: d5 81 03  mov   $0381+x,a         ; zero tuning
11a1: d5 f0 02  mov   $02f0+x,a         ; zero per-voice transpose
11a4: d5 80 02  mov   $0280+x,a
11a7: d4 b1     mov   $b1+x,a
11a9: d4 c1     mov   $c1+x,a
11ab: d4 80     mov   $80+x,a
11ad: d4 90     mov   $90+x,a
11af: d4 91     mov   $91+x,a
11b1: bc        inc   a
11b2: d4 70     mov   $70+x,a           ; set duration counter to 1
11b4: 09 47 22  or    ($22),($47)       ; activate voice
11b7: 3d        inc   x
11b8: 3d        inc   x
11b9: 0b 47     asl   $47
11bb: d0 c6     bne   $1183             ; loop for each voice
11bd: 6f        ret

11be: 8f dd f4  mov   $f4,#$dd
11c1: 8f ee f5  mov   $f5,#$ee
11c4: 8f dd 12  mov   $12,#$dd
11c7: cd 00     mov   x,#$00
11c9: 69 f4 12  cmp   ($12),($f4)
11cc: d0 fb     bne   $11c9
11ce: ba f6     movw  ya,$f6
11d0: d0 05     bne   $11d7
11d2: e8 31     mov   a,#$31
11d4: c4 f1     mov   $f1,a
11d6: 6f        ret

11d7: ab 12     inc   $12
11d9: fa 12 f4  mov   ($f4),($12)
11dc: da 10     movw  $10,ya
11de: 69 f4 12  cmp   ($12),($f4)
11e1: d0 fb     bne   $11de
11e3: ba f6     movw  ya,$f6
11e5: ab 12     inc   $12
11e7: fa 12 f4  mov   ($f4),($12)
11ea: da 14     movw  $14,ya
11ec: 69 f4 12  cmp   ($12),($f4)
11ef: d0 fb     bne   $11ec
11f1: ba f6     movw  ya,$f6
11f3: ab 12     inc   $12
11f5: fa 12 f4  mov   ($f4),($12)
11f8: c7 14     mov   ($14+x),a
11fa: 3a 14     incw  $14
11fc: 1a 10     decw  $10
11fe: f0 c9     beq   $11c9
1200: dd        mov   a,y
1201: c7 14     mov   ($14+x),a
1203: 3a 14     incw  $14
1205: 1a 10     decw  $10
1207: d0 e3     bne   $11ec
1209: 2f be     bra   $11c9
