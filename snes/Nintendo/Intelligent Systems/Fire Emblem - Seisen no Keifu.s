; Fire Emblem: Seisen no Keifu SPC - loveemu labo
; Disassembler: spcdas v0.01
; Super Famicom Wars is mostly identical.

0660: 20        clrp
0661: cd ef     mov   x,#$ef
0663: bd        mov   sp,x              ; set SP to (01)ef
0664: e8 00     mov   a,#$00
0666: 5d        mov   x,a
0667: af        mov   (x)+,a
0668: c8 f0     cmp   x,#$f0
066a: d0 fb     bne   $0667             ; zero 00-ef
066c: 5d        mov   x,a
066d: d5 00 04  mov   $0400+x,a
0670: d5 00 03  mov   $0300+x,a
0673: d5 00 02  mov   $0200+x,a
0676: d5 00 01  mov   $0100+x,a
0679: 3d        inc   x
067a: d0 f1     bne   $066d             ; zero 0100-04ff
067c: 8f 30 f1  mov   $f1,#$30          ; reset ports, disable timers
067f: 8f 10 fa  mov   $fa,#$10          ; set timer0 latch to #$10 (500 Hz, 2ms)
0682: bc        inc   a
0683: c4 f1     mov   $f1,a             ; start timer0
0685: 3f 92 0c  call  $0c92             ; set echo delay to 1 (16ms)
0688: a2 17     set5  $17               ; disable echo write
068a: e8 77     mov   a,#$77
068c: 8d 0c     mov   y,#$0c
068e: 11        tcall 1                 ; master vol L = $77
068f: 8d 1c     mov   y,#$1c
0691: 11        tcall 1                 ; master vol R = $77
0692: 8f 5d f2  mov   $f2,#$5d
0695: 8f fd f3  mov   $f3,#$fd          ; source dir = $fd00
0698: 8f ff 1f  mov   $1f,#$ff          ; key off all voices
069b: 8f ff eb  mov   $eb,#$ff
069e: 8f 20 3b  mov   $3b,#$20          ; tempo
06a1: 3f 98 08  call  $0898
; main loop
06a4: 8d 09     mov   y,#$09            ; set DSP regs from shadow:
06a6: ad 05     cmp   y,#$05
06a8: f0 07     beq   $06b1
06aa: b0 08     bcs   $06b4
06ac: 69 1c 1b  cmp   ($1b),($1c)
06af: d0 0f     bne   $06c0
06b1: e3 1b 0c  bbs7  $1b,$06c0
06b4: f6 ef 0f  mov   a,$0fef+y
06b7: c4 f2     mov   $f2,a
06b9: f6 f8 0f  mov   a,$0ff8+y
06bc: 5d        mov   x,a
06bd: e6        mov   a,(x)
06be: c4 f3     mov   $f3,a             ; write to DSP reg
06c0: fe e4     dbnz  y,$06a6           ; loop for each reg
06c2: cb 1e     mov   $1e,y             ; KON shadow
06c4: cb 1f     mov   $1f,y             ; KOF shadow
06c6: e4 12     mov   a,$12
06c8: 44 13     eor   a,$13
06ca: 5c        lsr   a
06cb: 5c        lsr   a
06cc: ed        notc
06cd: 6b 12     ror   $12
06cf: 6b 13     ror   $13
06d1: eb fd     mov   y,$fd
06d3: f0 fc     beq   $06d1             ; wait for counter0 increment
06d5: 6d        push  y
06d6: e8 20     mov   a,#$20
06d8: cf        mul   ya
06d9: 60        clrc
06da: 84 23     adc   a,$23
06dc: c4 23     mov   $23,a
06de: 90 0a     bcc   $06ea
06e0: 3f 78 10  call  $1078
06e3: 69 1c 1b  cmp   ($1b),($1c)
06e6: f0 02     beq   $06ea
06e8: ab 1b     inc   $1b
06ea: ee        pop   y
06eb: e4 3b     mov   a,$3b
06ed: cf        mul   ya
06ee: 60        clrc
06ef: 84 39     adc   a,$39
06f1: c4 39     mov   $39,a
06f3: b0 ac     bcs   $06a1
06f5: e4 22     mov   a,$22
06f7: f0 ab     beq   $06a4
06f9: cd 00     mov   x,#$00
06fb: 8f 01 15  mov   $15,#$01          ; first voice
06fe: f4 28     mov   a,$28+x
0700: f0 03     beq   $0705             ; skip call if vptr == 0
0702: 3f 1f 0f  call  $0f1f             ; do per-voice fades/dsps
0705: 3d        inc   x
0706: 3d        inc   x
0707: 0b 15     asl   $15
0709: d0 f3     bne   $06fe             ; loop for each voice
070b: 2f 97     bra   $06a4
070d: 6f        ret

; handle a note vcmd (80-d9)
070e: ad ca     cmp   y,#$ca
0710: 90 24     bcc   $0736
; vcmds ca-d9 - percussion note
0712: f6 36 00  mov   a,$0036+y
0715: c4 0b     mov   $0b,a
0717: f6 46 00  mov   a,$0046+y
071a: 2d        push  a
071b: f6 56 00  mov   a,$0056+y
071e: 30 03     bmi   $0723
0720: 3f 63 0b  call  $0b63             ; set pan
0723: d3 0b 05  bbc6  $0b,$072b
0726: 3f c0 0a  call  $0ac0
0729: 2f 03     bra   $072e
072b: 3f ce 0a  call  $0ace
072e: e4 0b     mov   a,$0b
0730: 28 3f     and   a,#$3f
0732: 41        tcall 4                 ; set sample
0733: ee        pop   y
0734: 2f 04     bra   $073a
; vcmds 80-c7,c8,c9 - note/tie/rest
0736: ad c8     cmp   y,#$c8
0738: b0 d3     bcs   $070d
073a: e4 14     mov   a,$14
073c: 24 15     and   a,$15
073e: d0 cd     bne   $070d
0740: dd        mov   a,y
0741: 28 7f     and   a,#$7f            ; 80-c7 => 00-47
0743: 60        clrc
0744: 84 38     adc   a,$38             ; add global transpose
0746: 60        clrc
0747: 95 b1 02  adc   a,$02b1+x         ; add per-voice transpose
074a: d5 91 01  mov   $0191+x,a
074d: f5 b1 01  mov   a,$01b1+x
0750: d5 90 01  mov   $0190+x,a
0753: f5 81 02  mov   a,$0281+x
0756: 5c        lsr   a
0757: e8 00     mov   a,#$00
0759: 7c        ror   a
075a: d5 70 02  mov   $0270+x,a
075d: e8 00     mov   a,#$00
075f: d4 91     mov   $91+x,a
0761: d5 62 00  mov   $0062+x,a
0764: d5 a0 02  mov   $02a0+x,a
0767: d4 a1     mov   $a1+x,a
0769: 09 15 37  or    ($37),($15)       ; set volume changed flg
076c: 09 15 1e  or    ($1e),($15)       ; set key on shadow bit
076f: f5 50 02  mov   a,$0250+x         ; pitch envelope counter
0772: d4 81     mov   $81+x,a           ; portamento counter
0774: f0 1e     beq   $0794
0776: f5 51 02  mov   a,$0251+x
0779: d4 82     mov   $82+x,a
077b: f5 60 02  mov   a,$0260+x         ; pitch envelope mode (0:attack / 1:release)
077e: d0 0a     bne   $078a
0780: f5 91 01  mov   a,$0191+x
0783: 80        setc
0784: b5 61 02  sbc   a,$0261+x
0787: d5 91 01  mov   $0191+x,a
078a: f5 61 02  mov   a,$0261+x
078d: 60        clrc
; set DSP pitch from $0a/b
078e: 95 91 01  adc   a,$0191+x
0791: 3f e9 0c  call  $0ce9
0794: 40        setp
0795: fb 91     mov   y,$91+x
0797: f4 90     mov   a,$90+x
0799: 20        clrp
079a: da 0a     movw  $0a,ya
079c: 8d 00     mov   y,#$00
079e: e4 0b     mov   a,$0b
07a0: 80        setc
07a1: a8 34     sbc   a,#$34
07a3: b0 09     bcs   $07ae
07a5: e4 0b     mov   a,$0b
07a7: 80        setc
07a8: a8 13     sbc   a,#$13
07aa: b0 06     bcs   $07b2
07ac: dc        dec   y
07ad: 1c        asl   a
07ae: 7a 0a     addw  ya,$0a
07b0: da 0a     movw  $0a,ya
07b2: 4d        push  x
07b3: e4 0b     mov   a,$0b
; get pitch from note number in A (with octave correction)
07b5: 1c        asl   a
07b6: 8d 00     mov   y,#$00
07b8: cd 18     mov   x,#$18
07ba: 9e        div   ya,x
07bb: 5d        mov   x,a
07bc: f6 d7 0f  mov   a,$0fd7+y
07bf: c4 0f     mov   $0f,a
07c1: f6 d6 0f  mov   a,$0fd6+y
07c4: c4 0e     mov   $0e,a             ; set $0e/f from pitch table
07c6: f6 d9 0f  mov   a,$0fd9+y
07c9: 2d        push  a
07ca: f6 d8 0f  mov   a,$0fd8+y
07cd: ee        pop   y
07ce: 9a 0e     subw  ya,$0e
07d0: eb 0a     mov   y,$0a
07d2: cf        mul   ya
07d3: dd        mov   a,y
07d4: 8d 00     mov   y,#$00
07d6: 7a 0e     addw  ya,$0e
07d8: cb 0f     mov   $0f,y
07da: 1c        asl   a
07db: 2b 0f     rol   $0f
07dd: c4 0e     mov   $0e,a
07df: 2f 04     bra   $07e5
07e1: 4b 0f     lsr   $0f
07e3: 7c        ror   a
07e4: 3d        inc   x
07e5: c8 06     cmp   x,#$06
07e7: d0 f8     bne   $07e1
07e9: c4 0e     mov   $0e,a
07eb: ce        pop   x
07ec: f5 00 02  mov   a,$0200+x
07ef: eb 0f     mov   y,$0f
07f1: cf        mul   ya
07f2: da 10     movw  $10,ya
07f4: f5 00 02  mov   a,$0200+x
07f7: eb 0e     mov   y,$0e
07f9: cf        mul   ya
07fa: 6d        push  y
07fb: f5 01 02  mov   a,$0201+x
07fe: eb 0e     mov   y,$0e
0800: cf        mul   ya
0801: 7a 10     addw  ya,$10
0803: da 10     movw  $10,ya
0805: f5 01 02  mov   a,$0201+x
0808: eb 0f     mov   y,$0f
080a: cf        mul   ya
080b: fd        mov   y,a
080c: ae        pop   a
080d: 7a 10     addw  ya,$10
080f: c4 0e     mov   $0e,a
0811: 7d        mov   a,x               ; set voice X pitch DSP reg from $0e/f
0812: 9f        xcn   a                 ;  (if vbit clear in $14)
0813: 5c        lsr   a
0814: 08 02     or    a,#$02
0816: c4 f2     mov   $f2,a
0818: fa 0e f3  mov   ($f3),($0e)
081b: bc        inc   a
; write A to DSP reg Y
081c: c4 f2     mov   $f2,a
081e: cb f3     mov   $f3,y
0820: 6f        ret

; tcall 2
; write A to DSP reg Y if vbit clear in $14
0821: 2d        push  a
0822: e4 15     mov   a,$15
0824: 24 14     and   a,$14
0826: ae        pop   a
0827: d0 04     bne   $082d
; tcall 1
; write A to DSP reg Y
0829: cb f2     mov   $f2,y
082b: c4 f3     mov   $f3,a
082d: 6f        ret

; read $24/5 into YA with advancing the ptr
082e: 8d 00     mov   y,#$00
0830: f7 24     mov   a,($24)+y
0832: 3a 24     incw  $24
0834: 2d        push  a
0835: f7 24     mov   a,($24)+y
0837: 3a 24     incw  $24
0839: fd        mov   y,a
083a: ae        pop   a
083b: 6f        ret

; play song in A
083c: c4 22     mov   $22,a
083e: c4 20     mov   $20,a
0840: 1c        asl   a
0841: f0 0d     beq   $0850
0843: 5d        mov   x,a
0844: f5 7f ff  mov   a,$ff7f+x
0847: fd        mov   y,a
0848: f5 7e ff  mov   a,$ff7e+x
084b: da 24     movw  $24,ya
084d: 8f 02 21  mov   $21,#$02
0850: e4 14     mov   a,$14
0852: 48 ff     eor   a,#$ff
0854: 0e 1f 00  tset1 $001f
0857: 8f 40 3b  mov   $3b,#$40
085a: 8f 00 39  mov   $39,#$00
085d: 6f        ret

; reset song params
085e: cd 0e     mov   x,#$0e
0860: 8f 80 15  mov   $15,#$80          ; last voice
0863: e8 ff     mov   a,#$ff
0865: d5 31 01  mov   $0131+x,a         ; voice volume = $ff
0868: e8 0a     mov   a,#$0a
086a: 3f 63 0b  call  $0b63             ; pan = $0a.00
086d: d5 21 02  mov   $0221+x,a         ; zero instrument
0870: d5 b1 01  mov   $01b1+x,a         ; zero tuning
0873: d5 b1 02  mov   $02b1+x,a         ; zero per-voice transpose
0876: d5 50 02  mov   $0250+x,a
0879: d4 92     mov   $92+x,a
087b: d4 a2     mov   $a2+x,a
087d: d4 b1     mov   $b1+x,a
087f: 1d        dec   x
0880: 1d        dec   x
0881: 4b 15     lsr   $15
0883: d0 de     bne   $0863             ; loop for each voice
0885: c4 42     mov   $42,a             ; zero master vol fade counter
0887: c4 4e     mov   $4e,a             ; zero echo vol fade counter
0889: c4 3c     mov   $3c,a             ; zero tempo fade counter
088b: c4 38     mov   $38,a             ; zero global transpose
088d: c4 26     mov   $26,a             ; zero block repeat count
088f: c5 c0 02  mov   $02c0,a
0892: c4 c3     mov   $c3,a
0894: 8f c0 41  mov   $41,#$c0          ; master vol
0897: 6f        ret

0898: e4 22     mov   a,$22
089a: 64 20     cmp   a,$20
089c: d0 9e     bne   $083c
089e: e4 22     mov   a,$22
08a0: f0 f5     beq   $0897
08a2: e4 21     mov   a,$21
08a4: f0 59     beq   $08ff
;
08a6: 6e 21 b5  dbnz  $21,$085e
08a9: 3f 2e 08  call  $082e             ; read block addr from $24/5, advance ptr
08ac: d0 23     bne   $08d1             ; load start addresses, if hi-byte is non zero
08ae: fd        mov   y,a               ; refetch lo-byte
08af: f0 8b     beq   $083c             ; key off, return if also zero
08b1: 8b 26     dec   $26
08b3: 10 11     bpl   $08c6
08b5: 68 f0     cmp   a,#$f0
08b7: d0 0b     bne   $08c4
08b9: 8f 00 26  mov   $26,#$00
08bc: ec 48 04  mov   y,$0448
08bf: cc 48 04  mov   $0448,y
08c2: d0 02     bne   $08c6
08c4: c4 26     mov   $26,a
08c6: 3f 2e 08  call  $082e             ; read next word as well
08c9: f8 26     mov   x,$26
08cb: f0 dc     beq   $08a9
08cd: da 24     movw  $24,ya            ;   "goto" that address
08cf: 2f d8     bra   $08a9             ; continue
; load start addresses - hi-byte not zero
08d1: da 10     movw  $10,ya
08d3: 8d 0f     mov   y,#$0f
08d5: f7 10     mov   a,($10)+y
08d7: d6 27 00  mov   $0027+y,a         ; set reading ptr
08da: dc        dec   y
08db: 10 f8     bpl   $08d5             ; loop for each voice
;
08dd: cd 00     mov   x,#$00
08df: 8f 01 15  mov   $15,#$01          ; first voice
08e2: f4 28     mov   a,$28+x
08e4: f0 08     beq   $08ee             ; if vptr hi != 0
08e6: f5 21 02  mov   a,$0221+x
08e9: d0 03     bne   $08ee
08eb: e8 00     mov   a,#$00
08ed: 41        tcall 4                 ; set instrument #0 if not set
08ee: e8 00     mov   a,#$00
08f0: d4 61     mov   $61+x,a           ; zero subroutine repeat counter
08f2: d4 71     mov   $71+x,a           ; zero voice vol fade counter
08f4: d4 72     mov   $72+x,a           ; zero pan fade counter
08f6: bc        inc   a
08f7: d4 51     mov   $51+x,a           ; set duration counter to 1
08f9: 3d        inc   x
08fa: 3d        inc   x
08fb: 0b 15     asl   $15               ; next voice
08fd: d0 e3     bne   $08e2             ; foreach voice
;
08ff: cd 00     mov   x,#$00
0901: d8 37     mov   $37,x
0903: 8f 01 15  mov   $15,#$01          ; first voice
0906: d8 16     mov   $16,x
0908: f4 28     mov   a,$28+x
090a: f0 6e     beq   $097a             ; next if vptr hi zero
090c: 9b 51     dec   $51+x             ; dec duration counter
090e: d0 64     bne   $0974             ; if not zero, skip to voice readahead
0910: 01        tcall 0                 ; read vcmd into A and Y
0911: d0 17     bne   $092a
; vcmd 00 - end repeat/return
0913: f4 61     mov   a,$61+x
0915: f0 92     beq   $08a9             ; read next block if loop has been done
; repeat / return from subroutine
0917: 3f 31 0c  call  $0c31             ; jump to loop start addr
091a: 9b 61     dec   $61+x             ; dec repeat count
091c: d0 f2     bne   $0910             ; if the loop has been done
091e: f5 30 02  mov   a,$0230+x
0921: d4 27     mov   $27+x,a
0923: f5 31 02  mov   a,$0231+x
0926: d4 28     mov   $28+x,a           ; back to return addr instead
0928: 2f e6     bra   $0910             ; then continue
; vcmd branches
092a: 30 19     bmi   $0945             ; vcmds 01-7f - note info:
092c: d5 10 02  mov   $0210+x,a         ;   set cmd as duration
092f: 01        tcall 0                 ;   read next byte
0930: 30 13     bmi   $0945             ;   if note note then
0932: 68 40     cmp   a,#$40
0934: 28 3f     and   a,#$3f
0936: fd        mov   y,a
0937: f6 38 10  mov   a,$1038+y
093a: b0 05     bcs   $0941
093c: d5 11 02  mov   $0211+x,a         ;   00-3f - set dur%
093f: 2f ee     bra   $092f             ;   check more bytes
0941: d5 20 02  mov   $0220+x,a         ;   40-7f - set vel
0944: 01        tcall 0                 ;   read next byte
; vcmd branches 80-ff
0945: 68 da     cmp   a,#$da
0947: 90 05     bcc   $094e
0949: 3f 40 0a  call  $0a40             ; vcmds da-ff
094c: 2f c2     bra   $0910
; vcmds 80-d9 - note
094e: 3f 0e 07  call  $070e             ; handle note cmd if vbit $14 clear
0951: f5 10 02  mov   a,$0210+x
0954: d4 51     mov   $51+x,a           ; set duration counter from duration
0956: fd        mov   y,a
0957: f5 11 02  mov   a,$0211+x
095a: cf        mul   ya
095b: dd        mov   a,y
095c: d0 01     bne   $095f
095e: bc        inc   a
095f: d4 52     mov   $52+x,a           ; set actual key-off dur counter
0961: e4 15     mov   a,$15
0963: 24 14     and   a,$14
0965: d0 10     bne   $0977
0967: 7d        mov   a,x
0968: 9f        xcn   a
0969: 5c        lsr   a
096a: 08 05     or    a,#$05
096c: c4 f2     mov   $f2,a
096e: f4 b2     mov   a,$b2+x
0970: c4 f3     mov   $f3,a             ; set ADSR(1)
0972: 2f 03     bra   $0977
0974: 3f f8 0d  call  $0df8             ; do readahead
0977: 3f cf 0c  call  $0ccf
097a: 3d        inc   x
097b: 3d        inc   x
097c: 0b 15     asl   $15
097e: f0 03     beq   $0983
0980: 5f 06 09  jmp   $0906

0983: e4 3c     mov   a,$3c             ; tempo fade counter
0985: f0 0b     beq   $0992
0987: ba 3e     movw  ya,$3e
0989: 7a 3a     addw  ya,$3a            ; add tempo fade to tempo
098b: 6e 3c 02  dbnz  $3c,$0990
098e: ba 3c     movw  ya,$3c            ; last time: move tempo target to tempo
0990: da 3a     movw  $3a,ya
0992: e4 4e     mov   a,$4e             ; echo vol fade counter
0994: f0 15     beq   $09ab
0996: ba 4a     movw  ya,$4a
0998: 7a 46     addw  ya,$46            ; add echo L delta to echo L vol
099a: da 46     movw  $46,ya
099c: ba 4c     movw  ya,$4c
099e: 7a 48     addw  ya,$48            ; add echo R delta to echo R vol
09a0: 6e 4e 06  dbnz  $4e,$09a9
09a3: ba 4e     movw  ya,$4e
09a5: da 46     movw  $46,ya
09a7: eb 50     mov   y,$50
09a9: da 48     movw  $48,ya
09ab: e4 c4     mov   a,$c4
09ad: d0 0f     bne   $09be
09af: e4 42     mov   a,$42             ; master vol fade counter
09b1: f0 0e     beq   $09c1
09b3: ba 44     movw  ya,$44
09b5: 7a 40     addw  ya,$40            ; add master vol delta to value
09b7: 6e 42 02  dbnz  $42,$09bc
09ba: ba 42     movw  ya,$42
09bc: da 40     movw  $40,ya
09be: 8f ff 37  mov   $37,#$ff          ; set all vol chg flags
09c1: cd 00     mov   x,#$00
09c3: 8f 01 15  mov   $15,#$01          ; first voice
09c6: f4 28     mov   a,$28+x
09c8: f0 03     beq   $09cd
09ca: 3f 1b 0d  call  $0d1b             ; do per-voice fades
09cd: 3d        inc   x
09ce: 3d        inc   x
09cf: 0b 15     asl   $15
09d1: d0 f3     bne   $09c6             ; loop for each voice
09d3: 6f        ret

; vcmd dispatch table ($0920)
09d4: dw $0b2a  ; da - set instrument
09d6: dw $0b63  ; db - pan
09d8: dw $0b71  ; dc - pan fade
09da: dw $0b86  ; dd - vibrato on
09dc: dw $0b8e  ; de - vibrato off
09de: dw $0ba9  ; df - master volume
09e0: dw $0bae  ; e0 - master volume fade
09e2: dw $0bbc  ; e1 - tempo
09e4: dw $0bc1  ; e2 - tempo fade
09e6: dw $0bcf  ; e3 - global transpose
09e8: dw $0bd2  ; e4 - per-voice transpose
09ea: dw $0bd6  ; e5 - tremolo on
09ec: dw $0bde  ; e6 - tremolo off
09ee: dw $0bfb  ; e7 - volume
09f0: dw $0c04  ; e8 - volume fade
09f2: dw $0c1d  ; e9 - call subroutine
09f4: dw $0b99  ; ea - vibrato fade
09f6: dw $0be1  ; eb - pitch envelope (release)
09f8: dw $0be5  ; ec - pitch envelope (attack)
09fa: dw $0bf7  ; ed - pitch envelope off
09fc: dw $0c19  ; ee - tuning
09fe: dw $0c3c  ; ef - echo vbits/volume
0a00: dw $0c6f  ; f0 - disable echo
0a02: dw $0c76  ; f1 - set echo params
0a04: dw $0c56  ; f2 - echo volume fade
0a06: dw $0cdd  ; f3 - pitch slide
0a08: dw $0cce  ; f4 - set perc patch base (NYI)
0a0a: dw $0ac0  ; f5 - echo on
0a0c: dw $0ace  ; f6 - echo off
0a0e: dw $0ade  ; f7 - set GAIN
0a10: dw $0ade  ; f8 - set GAIN
0a12: dw $0ae7  ; f9 - set GAIN (for release time)
0a14: dw $0a61  ; fa - define voice params
0a16: dw $0aea  ; fb - set voice params
0a18: dw $0a78  ; fc - unknown (copy bytes to unused area?)
0a1a: dw $0aad  ; fd - sub-command (set/clear $00c3)
                ; fe-ff undefined

; vcmd lengths ($09c2)
0a1c: db         $01,$01,$02,$03,$00,$01 ; da-df
0a22: db $02,$01,$02,$01,$01,$03,$00,$01 ; e0-e7
0a2a: db $02,$03,$01,$03,$03,$00,$01,$03 ; e8-ef
0a32: db $00,$03,$03,$03,$01,$00,$00,$02 ; f0-f7
0a3a: db $01,$00,$01,$01,$01,$01         ; f8-fd

; dispatch vcmd in A (da-ff)
0a40: 1c        asl   a                 ; da-ff => b4-fe (8 bit)
0a41: fd        mov   y,a
0a42: f6 21 09  mov   a,$0921+y
0a45: 2d        push  a
0a46: f6 20 09  mov   a,$0920+y
0a49: 2d        push  a                 ; push jump address from table
0a4a: dd        mov   a,y
0a4b: 5c        lsr   a
0a4c: fd        mov   y,a
0a4d: f6 c2 09  mov   a,$09c2+y         ; vcmd length
0a50: f0 06     beq   $0a58             ; if non zero
; tcall 0
; read new argument to A and Y
0a52: e7 27     mov   a,($27+x)
; advance reading ptr
0a54: bb 27     inc   $27+x             ; inc reading ptr
0a56: f0 02     beq   $0a5a
0a58: fd        mov   y,a
0a59: 6f        ret
0a5a: bb 28     inc   $28+x
0a5c: fd        mov   y,a               ; refetch arg byte
0a5d: 6f        ret

0a5e: 5f 9b 18  jmp   $189b

; vcmd fa - define voice params
0a61: 30 fb     bmi   $0a5e             ; do something different if arg1 < 0
0a63: f4 27     mov   a,$27+x
0a65: c4 c1     mov   $c1,a
0a67: f4 28     mov   a,$28+x
0a69: c4 c2     mov   $c2,a             ; save current address into $c1/2 (predefined voice param table, see vcmd fb)
0a6b: e8 04     mov   a,#$04
0a6d: cf        mul   ya                ; skip arg1 (number of items) * 4 bytes
; add A to reading ptr
0a6e: 60        clrc
0a6f: 94 27     adc   a,$27+x
0a71: d4 27     mov   $27+x,a
0a73: 90 02     bcc   $0a77
0a75: bb 28     inc   $28+x
0a77: 6f        ret

; vcmd fc
0a78: c2 c3     set6  $c3
0a7a: fb 28     mov   y,$28+x
0a7c: cb 0f     mov   $0f,y
0a7e: fb 27     mov   y,$27+x
0a80: cb 0e     mov   $0e,y             ; save current address into $0e/f
0a82: 2d        push  a                 ; push arg1
0a83: 8d 03     mov   y,#$03
0a85: cf        mul   ya
0a86: 6d        push  y
0a87: ce        pop   x                 ; x => 0
0a88: ae        pop   a                 ; pop arg1
0a89: 28 0f     and   a,#$0f
0a8b: bc        inc   a
0a8c: c4 0b     mov   $0b,a             ; (arg1 & 15) + 1
0a8e: 8d 03     mov   y,#$03
0a90: cf        mul   ya                ; y => 0
0a91: 2d        push  a
0a92: f7 0e     mov   a,($0e)+y         ; offset +0: ?
0a94: d5 00 01  mov   $0100+x,a
0a97: fc        inc   y
0a98: f7 0e     mov   a,($0e)+y         ; offset +1: ?
0a9a: d5 10 01  mov   $0110+x,a
0a9d: fc        inc   y
0a9e: f7 0e     mov   a,($0e)+y         ; offset +2: ?
0aa0: d5 20 01  mov   $0120+x,a
0aa3: fc        inc   y
0aa4: 3d        inc   x
0aa5: 6e 0b ea  dbnz  $0b,$0a92         ; repeat for (arg1 & 15) + 1 times
0aa8: f8 16     mov   x,$16
0aaa: ae        pop   a
0aab: 2f c1     bra   $0a6e             ; skip (((arg1 & 15) + 1) * 3) bytes
; vcmd fd - sub-command (set/clear $00c3)
0aad: 68 01     cmp   a,#$01
0aaf: f0 05     beq   $0ab6             ; 1 byte arg
0ab1: 68 02     cmp   a,#$02
0ab3: f0 06     beq   $0abb             ; 1 byte arg
0ab5: 6f        ret
; when arg1 == 1:
0ab6: 01        tcall 0                 ; arg2 (bitflags)
0ab7: 0e c3 00  tset1 $00c3             ; set $c3
0aba: 6f        ret
; when arg1 == 2:
0abb: 01        tcall 0                 ; arg2 (bitflags)
0abc: 4e c3 00  tclr1 $00c3             ; clear $c3
0abf: 6f        ret

; vcmd f5 - echo on
0ac0: e4 14     mov   a,$14
0ac2: 24 15     and   a,$15             ; channel bitmask
0ac4: f0 04     beq   $0aca
; set channel bit of $02c6 (another EON shadow, not in use?)
0ac6: 0e c6 02  tset1 $02c6
0ac9: 6f        ret
; turn echo on
0aca: 09 15 19  or    ($19),($15)       ; set channel bit of EON shadow
0acd: 6f        ret

; vcmd f6 - echo off
0ace: e4 14     mov   a,$14
0ad0: 24 15     and   a,$15             ; channel bitmask
0ad2: f0 04     beq   $0ad8
; clear channel bit of $02c6 (another EON shadow, not in use?)
0ad4: 4e c6 02  tclr1 $02c6
0ad7: 6f        ret
; turn echo off
0ad8: e4 15     mov   a,$15
0ada: 4e 19 00  tclr1 $0019             ; clear channel bit of EON shadow
0add: 6f        ret

; vcmds f7,f8 - set GAIN
0ade: 2d        push  a
0adf: 7d        mov   a,x
0ae0: 9f        xcn   a
0ae1: 5c        lsr   a
0ae2: 08 07     or    a,#$07
0ae4: fd        mov   y,a
0ae5: ae        pop   a
0ae6: 21        tcall 2                 ; arg1: set GAIN
; vcmd f9 - set GAIN (for release time)
0ae7: d4 b1     mov   $b1+x,a
0ae9: 6f        ret

; vcmd fb - set voice params
0aea: c4 0b     mov   $0b,a
0aec: 1c        asl   a
0aed: 1c        asl   a
0aee: fd        mov   y,a               ; index: arg1 (voice param index) * 4
0aef: f7 c1     mov   a,($c1)+y         ; $c1/2: predefined voice param table (set by vcmd fa)
0af1: 2d        push  a                 ; offset +0, instrument #
0af2: fc        inc   y
0af3: f7 c1     mov   a,($c1)+y
0af5: d5 31 01  mov   $0131+x,a         ; offset +1, volume
0af8: fc        inc   y
0af9: f7 c1     mov   a,($c1)+y
0afb: 2d        push  a
0afc: 28 1f     and   a,#$1f
0afe: d5 81 01  mov   $0181+x,a         ; offset +2, pan
0b01: d5 61 01  mov   $0161+x,a
0b04: fc        inc   y
0b05: f7 c1     mov   a,($c1)+y         ; offset +3: transpose
0b07: d5 b1 02  mov   $02b1+x,a
0b0a: ae        pop   a                 ; pop instrument #
0b0b: 28 e0     and   a,#$e0            ; extract upper 3 bits
0b0d: 9f        xcn   a
0b0e: 5c        lsr   a
0b0f: 8d 05     mov   y,#$05
0b11: cf        mul   ya                ; (inst >> 5) * 5
0b12: d5 b1 01  mov   $01b1+x,a         ; tuning
0b15: dd        mov   a,y
0b16: d5 60 01  mov   $0160+x,a
0b19: d5 30 01  mov   $0130+x,a
0b1c: d4 b1     mov   $b1+x,a           ; zero GAIN
0b1e: f3 0b 03  bbc7  $0b,$0b24
0b21: 3f 8e 0b  call  $0b8e
0b24: d3 0b 02  bbc6  $0b,$0b29
0b27: d4 a2     mov   $a2+x,a
0b29: ae        pop   a
; tcall 4
; vcmd da - set instrument
0b2a: d5 21 02  mov   $0221+x,a
; tcall 5
0b2d: 8d 06     mov   y,#$06
; set sample A in bank at $0e/f width Y
0b2f: cf        mul   ya
0b30: da 0e     movw  $0e,ya
0b32: e4 14     mov   a,$14
0b34: 24 15     and   a,$15
0b36: d0 2a     bne   $0b62
0b38: 60        clrc
0b39: 98 fe 0f  adc   $0f,#$fe          ; instrument table $fe00
0b3c: 4d        push  x
0b3d: 7d        mov   a,x
0b3e: 9f        xcn   a
0b3f: 5c        lsr   a
0b40: 08 04     or    a,#$04            ; voice X SRCN
0b42: 5d        mov   x,a
0b43: f7 0e     mov   a,($0e)+y         ; set SRCN from table
0b45: d8 f2     mov   $f2,x
0b47: c4 f3     mov   $f3,a
0b49: 3d        inc   x
0b4a: fc        inc   y
0b4b: ad 04     cmp   y,#$04
0b4d: d0 f4     bne   $0b43             ; set SRCN, ADSR1/2, GAIN from table
0b4f: ce        pop   x
0b50: f7 0e     mov   a,($0e)+y         ; offset +4: set pitch multiplier
0b52: d5 01 02  mov   $0201+x,a
0b55: fc        inc   y
0b56: f7 0e     mov   a,($0e)+y
0b58: d5 00 02  mov   $0200+x,a         ; offset +5: set pitch multiplier
0b5b: 8d 01     mov   y,#$01
0b5d: f7 0e     mov   a,($0e)+y
0b5f: d5 b2 00  mov   $00b2+x,a         ; offset +1: ADSR(1)
0b62: 6f        ret

; vcmd db - pan
0b63: d5 81 01  mov   $0181+x,a
0b66: 28 1f     and   a,#$1f
0b68: d5 61 01  mov   $0161+x,a         ; voice pan value
0b6b: e8 00     mov   a,#$00
0b6d: d5 60 01  mov   $0160+x,a
0b70: 6f        ret

; vcmd dc - pan fade
0b71: d4 72     mov   $72+x,a
0b73: 2d        push  a
0b74: 01        tcall 0
0b75: d5 80 01  mov   $0180+x,a
0b78: 80        setc
0b79: b5 61 01  sbc   a,$0161+x         ; current pan value
0b7c: ce        pop   x
0b7d: 31        tcall 3                 ; delta = pan value / steps
0b7e: d5 70 01  mov   $0170+x,a
0b81: dd        mov   a,y
0b82: d5 71 01  mov   $0171+x,a
0b85: 6f        ret

; vcmd dd - vibrato on
0b86: d5 80 02  mov   $0280+x,a
0b89: 01        tcall 0
0b8a: d5 71 02  mov   $0271+x,a
0b8d: 01        tcall 0
; vcmd de - vibrato off
0b8e: d4 92     mov   $92+x,a
0b90: d5 91 02  mov   $0291+x,a
0b93: e8 00     mov   a,#$00
0b95: d5 81 02  mov   $0281+x,a
0b98: 6f        ret

; vcmd ea - vibrato fade
0b99: d5 81 02  mov   $0281+x,a
0b9c: 2d        push  a
0b9d: 8d 00     mov   y,#$00
0b9f: f4 92     mov   a,$92+x
0ba1: ce        pop   x
0ba2: 9e        div   ya,x
0ba3: f8 16     mov   x,$16
0ba5: d5 90 02  mov   $0290+x,a
0ba8: 6f        ret

; vcmd df - master volume
0ba9: e8 00     mov   a,#$00
0bab: da 40     movw  $40,ya
0bad: 6f        ret

; vcmd e0 - master volume fade
0bae: c4 42     mov   $42,a
0bb0: 01        tcall 0
0bb1: c4 43     mov   $43,a
0bb3: 80        setc
0bb4: a4 41     sbc   a,$41
0bb6: f8 42     mov   x,$42
0bb8: 31        tcall 3
0bb9: da 44     movw  $44,ya
0bbb: 6f        ret

; vcmd e1 - tempo
0bbc: e8 00     mov   a,#$00
0bbe: da 3a     movw  $3a,ya
0bc0: 6f        ret

; vcmd e2 - tempo fade
0bc1: c4 3c     mov   $3c,a
0bc3: 01        tcall 0
0bc4: c4 3d     mov   $3d,a
0bc6: 80        setc
0bc7: a4 3b     sbc   a,$3b
0bc9: f8 3c     mov   x,$3c
0bcb: 31        tcall 3
0bcc: da 3e     movw  $3e,ya
0bce: 6f        ret

; vcmd e3 - global transpose
0bcf: c4 38     mov   $38,a
0bd1: 6f        ret

; vcmd e4 - per-voice transpose
0bd2: d5 b1 02  mov   $02b1+x,a
0bd5: 6f        ret

; vcmd e5 - tremolo on
0bd6: d5 b0 02  mov   $02b0+x,a
0bd9: 01        tcall 0
0bda: d5 a1 02  mov   $02a1+x,a
0bdd: 01        tcall 0
; vcmd e6 - tremolo off
0bde: d4 a2     mov   $a2+x,a
0be0: 6f        ret

; vcmd eb - pitch envelope (release)
0be1: e8 01     mov   a,#$01
0be3: 2f 02     bra   $0be7
; vcmd ec - pitch envelope (attack)
0be5: e8 00     mov   a,#$00
0be7: d5 60 02  mov   $0260+x,a
0bea: dd        mov   a,y
0beb: d5 51 02  mov   $0251+x,a
0bee: 01        tcall 0
0bef: d5 50 02  mov   $0250+x,a
0bf2: 01        tcall 0
0bf3: d5 61 02  mov   $0261+x,a
0bf6: 6f        ret

; vcmd ed - pitch envelope off
0bf7: d5 50 02  mov   $0250+x,a
0bfa: 6f        ret

; vcmd e7 - volume
0bfb: d5 31 01  mov   $0131+x,a
0bfe: e8 00     mov   a,#$00
0c00: d5 30 01  mov   $0130+x,a
0c03: 6f        ret

; vcmd e8 - volume fade
0c04: d4 71     mov   $71+x,a
0c06: 2d        push  a
0c07: 01        tcall 0
0c08: d5 50 01  mov   $0150+x,a
0c0b: 80        setc
0c0c: b5 31 01  sbc   a,$0131+x
0c0f: ce        pop   x
0c10: 31        tcall 3
0c11: d5 40 01  mov   $0140+x,a
0c14: dd        mov   a,y
0c15: d5 41 01  mov   $0141+x,a
0c18: 6f        ret

; vcmd ee - tuning
0c19: d5 b1 01  mov   $01b1+x,a
0c1c: 6f        ret

; vcmd e9 - call subroutine
0c1d: d5 40 02  mov   $0240+x,a
0c20: 01        tcall 0
0c21: d5 41 02  mov   $0241+x,a         ; $0240/1+X - destination (arg1/2)
0c24: 01        tcall 0
0c25: d4 61     mov   $61+x,a           ; repeat count from arg3
0c27: f4 27     mov   a,$27+x
0c29: d5 30 02  mov   $0230+x,a
0c2c: f4 28     mov   a,$28+x
0c2e: d5 31 02  mov   $0231+x,a         ; $0230/1+X - return addr
; jump to $0240/1+X (loop destination)
0c31: f5 40 02  mov   a,$0240+x
0c34: d4 27     mov   $27+x,a
0c36: f5 41 02  mov   a,$0241+x
0c39: d4 28     mov   $28+x,a
0c3b: 6f        ret

; vcmd ef - echo vbits/volume
0c3c: c4 0a     mov   $0a,a
0c3e: c5 c6 02  mov   $02c6,a
0c41: e4 14     mov   a,$14
0c43: 48 ff     eor   a,#$ff
0c45: 24 0a     and   a,$0a
0c47: c4 19     mov   $19,a             ; echo vbit shadow from arg1
0c49: 01        tcall 0
0c4a: e8 00     mov   a,#$00
0c4c: da 46     movw  $46,ya            ; echo vol L shadow = arg2
0c4e: 01        tcall 0
0c4f: e8 00     mov   a,#$00
0c51: da 48     movw  $48,ya            ; echo vol R shadow = arg3
0c53: b2 17     clr5  $17
0c55: 6f        ret

; vcmd f2 - echo volume fade
0c56: c4 4e     mov   $4e,a
0c58: 01        tcall 0
0c59: c4 4f     mov   $4f,a
0c5b: 80        setc
0c5c: a4 47     sbc   a,$47             ; EVOL(L)
0c5e: f8 4e     mov   x,$4e
0c60: 31        tcall 3
0c61: da 4a     movw  $4a,ya
0c63: 01        tcall 0
0c64: c4 50     mov   $50,a
0c66: 80        setc
0c67: a4 49     sbc   a,$49             ; EVOL(R)
0c69: f8 4e     mov   x,$4e
0c6b: 31        tcall 3
0c6c: da 4c     movw  $4c,ya
0c6e: 6f        ret

; vcmd f0 - disable echo
0c6f: da 46     movw  $46,ya            ; zero echo vol L shadow
0c71: da 48     movw  $48,ya            ; zero echo vol R shadow
0c73: a2 17     set5  $17               ; disable echo write
0c75: 6f        ret

; vcmd f1 - set echo params
0c76: 3f 92 0c  call  $0c92             ; set echo delay from arg1
0c79: 01        tcall 0
0c7a: c4 1d     mov   $1d,a             ; set EFB shadow from arg2
0c7c: 01        tcall 0
0c7d: 1c        asl   a
0c7e: 1c        asl   a
0c7f: 1c        asl   a
0c80: 5d        mov   x,a
0c81: 8d 0f     mov   y,#$0f
0c83: f5 02 10  mov   a,$1002+x         ; filter table
0c86: 11        tcall 1
0c87: 3d        inc   x
0c88: dd        mov   a,y
0c89: 60        clrc
0c8a: 88 10     adc   a,#$10
0c8c: fd        mov   y,a
0c8d: 10 f4     bpl   $0c83             ; set echo filter from table index arg3
0c8f: f8 16     mov   x,$16
0c91: 6f        ret
; set echo delay to A
0c92: c4 1c     mov   $1c,a
0c94: 8f 7d f2  mov   $f2,#$7d
0c97: e4 f3     mov   a,$f3             ; set echo delay
0c99: 64 1c     cmp   a,$1c
0c9b: f0 24     beq   $0cc1             ; same as $1c?
0c9d: 28 0f     and   a,#$0f
0c9f: 48 ff     eor   a,#$ff
0ca1: f3 1b 03  bbc7  $1b,$0ca7
0ca4: 60        clrc
0ca5: 84 1b     adc   a,$1b
0ca7: c4 1b     mov   $1b,a
0ca9: 8d 04     mov   y,#$04
0cab: f6 ef 0f  mov   a,$0fef+y         ; shadow reg DSP reg table
0cae: c4 f2     mov   $f2,a
0cb0: 8f 00 f3  mov   $f3,#$00
0cb3: fe f6     dbnz  y,$0cab           ; zero echo vol, feedback, vbit DSP regs
0cb5: 8d 6c     mov   y,#$6c
0cb7: e4 17     mov   a,$17
0cb9: 08 20     or    a,#$20
0cbb: 11        tcall 1                 ; set FLG from shadow but disable echo
0cbc: 8d 7d     mov   y,#$7d
0cbe: e4 1c     mov   a,$1c
0cc0: 11        tcall 1                 ; set echo delay from $1c
0cc1: 1c        asl   a
0cc2: 1c        asl   a
0cc3: 1c        asl   a
0cc4: 48 ff     eor   a,#$ff
0cc6: 80        setc
0cc7: 88 fd     adc   a,#$fd
0cc9: 8d 6d     mov   y,#$6d            ; set echo region to $fd00-8*delay
0ccb: 5f 29 08  jmp   $0829

; vcmd f4 - set perc patch base (NYI)
0cce: 6f        ret

0ccf: f4 81     mov   a,$81+x
0cd1: d0 2b     bne   $0cfe
0cd3: e7 27     mov   a,($27+x)
0cd5: 68 f3     cmp   a,#$f3
0cd7: d0 25     bne   $0cfe
0cd9: 3f 54 0a  call  $0a54
0cdc: 01        tcall 0
; vcmd f3 - pitch slide
0cdd: d4 82     mov   $82+x,a
0cdf: 01        tcall 0
0ce0: d4 81     mov   $81+x,a
0ce2: 01        tcall 0
0ce3: 60        clrc
0ce4: 84 38     adc   a,$38             ; add global transpose
0ce6: 95 b1 02  adc   a,$02b1+x         ; per-voice transpose
; calculate portamento delta
0ce9: 28 7f     and   a,#$7f
0ceb: d5 b0 01  mov   $01b0+x,a         ; final portamento value
0cee: 80        setc
0cef: b5 91 01  sbc   a,$0191+x         ; note number
0cf2: fb 81     mov   y,$81+x           ; portamento steps
0cf4: 6d        push  y
0cf5: ce        pop   x
0cf6: 31        tcall 3
0cf7: d5 a0 01  mov   $01a0+x,a
0cfa: dd        mov   a,y
0cfb: d5 a1 01  mov   $01a1+x,a         ; portamento delta
0cfe: 6f        ret

; tcall 3
; signed 16 bit division
0cff: ed        notc
0d00: 6b 0c     ror   $0c
0d02: 10 03     bpl   $0d07
0d04: 48 ff     eor   a,#$ff
0d06: bc        inc   a
0d07: 8d 00     mov   y,#$00
0d09: 9e        div   ya,x
0d0a: 2d        push  a
0d0b: e8 00     mov   a,#$00
0d0d: 9e        div   ya,x
0d0e: ee        pop   y
0d0f: f8 16     mov   x,$16
0d11: f3 0c 06  bbc7  $0c,$0d1a
0d14: da 0e     movw  $0e,ya
0d16: ba 08     movw  ya,$08
0d18: 9a 0e     subw  ya,$0e
0d1a: 6f        ret

; do voice fades
0d1b: f4 71     mov   a,$71+x           ; voice volume fade counter
0d1d: f0 24     beq   $0d43
0d1f: 09 15 37  or    ($37),($15)
0d22: 9b 71     dec   $71+x             ; dec voice vol fade counter
0d24: d0 0a     bne   $0d30
0d26: e8 00     mov   a,#$00
0d28: d5 30 01  mov   $0130+x,a
0d2b: f5 50 01  mov   a,$0150+x
0d2e: 2f 10     bra   $0d40
0d30: 60        clrc
0d31: f5 30 01  mov   a,$0130+x
0d34: 95 40 01  adc   a,$0140+x
0d37: d5 30 01  mov   $0130+x,a
0d3a: f5 31 01  mov   a,$0131+x
0d3d: 95 41 01  adc   a,$0141+x
0d40: d5 31 01  mov   $0131+x,a
0d43: fb a2     mov   y,$a2+x
0d45: f0 23     beq   $0d6a
0d47: f5 b0 02  mov   a,$02b0+x
0d4a: de a1 1b  cbne  $a1+x,$0d68
0d4d: 09 15 37  or    ($37),($15)
0d50: f5 a0 02  mov   a,$02a0+x
0d53: 10 07     bpl   $0d5c
0d55: fc        inc   y
0d56: d0 04     bne   $0d5c
0d58: e8 80     mov   a,#$80
0d5a: 2f 04     bra   $0d60
0d5c: 60        clrc
0d5d: 95 a1 02  adc   a,$02a1+x
0d60: d5 a0 02  mov   $02a0+x,a
0d63: 3f a9 0f  call  $0fa9
0d66: 2f 07     bra   $0d6f
0d68: bb a1     inc   $a1+x
0d6a: eb 41     mov   y,$41
0d6c: 3f b8 0f  call  $0fb8
0d6f: f4 72     mov   a,$72+x
0d71: f0 24     beq   $0d97
0d73: 09 15 37  or    ($37),($15)
0d76: 9b 72     dec   $72+x
0d78: d0 0a     bne   $0d84
0d7a: e8 00     mov   a,#$00
0d7c: d5 60 01  mov   $0160+x,a
0d7f: f5 80 01  mov   a,$0180+x
0d82: 2f 10     bra   $0d94
0d84: 60        clrc
0d85: f5 60 01  mov   a,$0160+x
0d88: 95 70 01  adc   a,$0170+x
0d8b: d5 60 01  mov   $0160+x,a
0d8e: f5 61 01  mov   a,$0161+x
0d91: 95 71 01  adc   a,$0171+x
0d94: d5 61 01  mov   $0161+x,a
0d97: e4 15     mov   a,$15
0d99: 24 37     and   a,$37
0d9b: f0 5a     beq   $0df7
0d9d: f5 61 01  mov   a,$0161+x
0da0: fd        mov   y,a
0da1: f5 60 01  mov   a,$0160+x
0da4: da 0a     movw  $0a,ya
0da6: e4 15     mov   a,$15
0da8: 24 14     and   a,$14
0daa: d0 4b     bne   $0df7
0dac: f3 07 06  bbc7  $07,$0db5
0daf: e8 00     mov   a,#$00
0db1: 8d 0a     mov   y,#$0a
0db3: da 0a     movw  $0a,ya
0db5: 7d        mov   a,x
0db6: 9f        xcn   a
0db7: 5c        lsr   a
0db8: c4 0c     mov   $0c,a
0dba: eb 0b     mov   y,$0b
0dbc: f6 23 10  mov   a,$1023+y         ; next pan val from table
0dbf: 80        setc
0dc0: b6 22 10  sbc   a,$1022+y         ; pan val
0dc3: eb 0a     mov   y,$0a
0dc5: cf        mul   ya
0dc6: dd        mov   a,y
0dc7: eb 0b     mov   y,$0b
0dc9: 60        clrc
0dca: 96 22 10  adc   a,$1022+y         ; add integer part to pan val
0dcd: fd        mov   y,a
0dce: f5 51 01  mov   a,$0151+x         ; volume
0dd1: cf        mul   ya
0dd2: f5 81 01  mov   a,$0181+x         ; bits 7/6 will negate volume L/R
0dd5: 1c        asl   a
0dd6: 13 0c 01  bbc0  $0c,$0dda
0dd9: 1c        asl   a
0dda: dd        mov   a,y
0ddb: 90 06     bcc   $0de3
0ddd: e3 07 03  bbs7  $07,$0de3
0de0: 48 ff     eor   a,#$ff
0de2: bc        inc   a
0de3: fa 0c f2  mov   ($f2),($0c)
0de6: c4 f3     mov   $f3,a             ; set VOL(L),VOL(R)
0de8: 03 0c 0c  bbs0  $0c,$0df7
0deb: 8d 14     mov   y,#$14
0ded: e8 00     mov   a,#$00
0def: 9a 0a     subw  ya,$0a
0df1: da 0a     movw  $0a,ya
0df3: ab 0c     inc   $0c
0df5: 2f c3     bra   $0dba
0df7: 6f        ret

; do readahead
0df8: fb 51     mov   y,$51+x
0dfa: fe 51     dbnz  y,$0e4d
0dfc: f4 61     mov   a,$61+x
0dfe: c4 11     mov   $11,a
0e00: f4 27     mov   a,$27+x
0e02: fb 28     mov   y,$28+x
0e04: da 0e     movw  $0e,ya            ; set current voice ptr to $0e/f
0e06: 8d 00     mov   y,#$00
0e08: f7 0e     mov   a,($0e)+y         ; readahead
0e0a: f0 1c     beq   $0e28
0e0c: 30 05     bmi   $0e13
; vcmd readahead 01-7f - note param
0e0e: fc        inc   y
0e0f: f7 0e     mov   a,($0e)+y
0e11: 10 fb     bpl   $0e0e             ; skip while byte <= 0x7f
; 80-ff
0e13: 68 c8     cmp   a,#$c8
0e15: f0 61     beq   $0e78
0e17: 68 e9     cmp   a,#$e9
0e19: f0 27     beq   $0e42
0e1b: 68 da     cmp   a,#$da
0e1d: 90 38     bcc   $0e57
; vcmd readahead da-ff (excluding e9)
0e1f: 6d        push  y
0e20: fd        mov   y,a
0e21: ae        pop   a
0e22: 96 42 09  adc   a,$0942+y         ; vcmd lengths
0e25: fd        mov   y,a
0e26: 2f e0     bra   $0e08
; vcmd readahead 00 - end/return
0e28: e4 11     mov   a,$11
0e2a: f0 2b     beq   $0e57
0e2c: 8b 11     dec   $11
0e2e: d0 09     bne   $0e39
; read $0230/1+X into YA
0e30: f5 31 02  mov   a,$0231+x
0e33: fd        mov   y,a
0e34: f5 30 02  mov   a,$0230+x
0e37: 2f cb     bra   $0e04
; read $0240/1+X into YA
0e39: f5 41 02  mov   a,$0241+x
0e3c: fd        mov   y,a
0e3d: f5 40 02  mov   a,$0240+x
0e40: 2f c2     bra   $0e04
; vcmd readahead e5 - call subroutine
0e42: fc        inc   y
0e43: f7 0e     mov   a,($0e)+y
0e45: 2d        push  a
0e46: fc        inc   y
0e47: f7 0e     mov   a,($0e)+y
0e49: fd        mov   y,a
0e4a: ae        pop   a
0e4b: 2f b7     bra   $0e04
; vcmd readahead 80-d9 (excluding c8) - note
0e4d: f4 52     mov   a,$52+x
0e4f: f0 27     beq   $0e78
0e51: 9b 52     dec   $52+x             ; decrease duration timer
0e53: f0 a7     beq   $0dfc
0e55: 2f 21     bra   $0e78
;
0e57: e4 15     mov   a,$15
0e59: 24 14     and   a,$14
0e5b: d0 1b     bne   $0e78
0e5d: f4 51     mov   a,$51+x
0e5f: 9c        dec   a
0e60: f0 10     beq   $0e72
0e62: f4 b1     mov   a,$b1+x
0e64: f0 0c     beq   $0e72             ; KOF if GAIN is not set
0e66: 7d        mov   a,x
0e67: 9f        xcn   a
0e68: 5c        lsr   a
0e69: 08 05     or    a,#$05
0e6b: c4 f2     mov   $f2,a
0e6d: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
0e70: 2f 06     bra   $0e78
0e72: 8f 5c f2  mov   $f2,#$5c
0e75: fa 15 f3  mov   ($f3),($15)       ; set KOF
; vcmd readahead c8 - tie
0e78: f2 0d     clr7  $0d
0e7a: f4 81     mov   a,$81+x
0e7c: f0 2c     beq   $0eaa
0e7e: f4 82     mov   a,$82+x
0e80: f0 04     beq   $0e86
0e82: 9b 82     dec   $82+x
0e84: 2f 24     bra   $0eaa
;
0e86: e2 0d     set7  $0d
0e88: 9b 81     dec   $81+x
0e8a: d0 0b     bne   $0e97
0e8c: f5 b1 01  mov   a,$01b1+x
0e8f: d5 90 01  mov   $0190+x,a
0e92: f5 b0 01  mov   a,$01b0+x
0e95: 2f 10     bra   $0ea7
0e97: 60        clrc
0e98: f5 90 01  mov   a,$0190+x
0e9b: 95 a0 01  adc   a,$01a0+x
0e9e: d5 90 01  mov   $0190+x,a
0ea1: f5 91 01  mov   a,$0191+x
0ea4: 95 a1 01  adc   a,$01a1+x
0ea7: d5 91 01  mov   $0191+x,a
;
0eaa: 40        setp
0eab: fb 91     mov   y,$91+x
0ead: f4 90     mov   a,$90+x
0eaf: 20        clrp
0eb0: da 0a     movw  $0a,ya
0eb2: f4 92     mov   a,$92+x
0eb4: f0 65     beq   $0f1b
0eb6: f5 80 02  mov   a,$0280+x
0eb9: de 91 5d  cbne  $91+x,$0f19
0ebc: f5 62 00  mov   a,$0062+x
0ebf: 75 81 02  cmp   a,$0281+x
0ec2: d0 05     bne   $0ec9
0ec4: f5 91 02  mov   a,$0291+x
0ec7: 2f 0b     bra   $0ed4
0ec9: bb 62     inc   $62+x
0ecb: fd        mov   y,a
0ecc: f0 02     beq   $0ed0
0ece: f4 92     mov   a,$92+x
0ed0: 60        clrc
0ed1: 95 90 02  adc   a,$0290+x
0ed4: d4 92     mov   $92+x,a
0ed6: f5 70 02  mov   a,$0270+x
0ed9: 60        clrc
0eda: 95 71 02  adc   a,$0271+x
0edd: d5 70 02  mov   $0270+x,a
0ee0: c4 0c     mov   $0c,a
0ee2: 1c        asl   a
0ee3: 1c        asl   a
0ee4: 90 02     bcc   $0ee8
0ee6: 48 ff     eor   a,#$ff
0ee8: fd        mov   y,a
0ee9: f4 92     mov   a,$92+x
0eeb: 68 f1     cmp   a,#$f1
0eed: 90 05     bcc   $0ef4
0eef: 28 0f     and   a,#$0f
0ef1: cf        mul   ya
0ef2: 2f 04     bra   $0ef8
0ef4: cf        mul   ya
0ef5: dd        mov   a,y
0ef6: 8d 00     mov   y,#$00
0ef8: f3 0c 06  bbc7  $0c,$0f01
0efb: da 0e     movw  $0e,ya
0efd: ba 08     movw  ya,$08
0eff: 9a 0e     subw  ya,$0e
0f01: 7a 0a     addw  ya,$0a
0f03: da 0a     movw  $0a,ya
0f05: 7d        mov   a,x
0f06: 9f        xcn   a
0f07: 5c        lsr   a
0f08: 08 08     or    a,#$08
0f0a: c4 f2     mov   $f2,a
0f0c: e4 f3     mov   a,$f3             ; get ENVX
0f0e: f0 0e     beq   $0f1e
0f10: e4 15     mov   a,$15
0f12: 24 14     and   a,$14
0f14: d0 08     bne   $0f1e
0f16: 5f 9c 07  jmp   $079c

0f19: bb 91     inc   $91+x
0f1b: e3 0d e7  bbs7  $0d,$0f05
0f1e: 6f        ret

; per-voice fades/dsps
0f1f: f2 0d     clr7  $0d
0f21: f4 a2     mov   a,$a2+x
0f23: f0 09     beq   $0f2e
0f25: f5 b0 02  mov   a,$02b0+x
0f28: de a1 03  cbne  $a1+x,$0f2e
0f2b: 3f 9c 0f  call  $0f9c             ; voice vol calculations
0f2e: 40        setp
0f2f: fb 61     mov   y,$61+x
0f31: f4 60     mov   a,$60+x
0f33: 20        clrp
0f34: da 0a     movw  $0a,ya            ; $0a/b = voice pan value
0f36: f4 72     mov   a,$72+x           ; voice pan fade counter
0f38: f0 0a     beq   $0f44
0f3a: f5 71 01  mov   a,$0171+x
0f3d: fd        mov   y,a
0f3e: f5 70 01  mov   a,$0170+x         ; pan fade delta
0f41: 3f 7e 0f  call  $0f7e             ; add delta (with mutations)?
0f44: f3 0d 03  bbc7  $0d,$0f4a
0f47: 3f a6 0d  call  $0da6
0f4a: f2 0d     clr7  $0d
0f4c: 40        setp
0f4d: fb 91     mov   y,$91+x
0f4f: f4 90     mov   a,$90+x
0f51: 20        clrp
0f52: da 0a     movw  $0a,ya
0f54: f4 81     mov   a,$81+x
0f56: f0 0e     beq   $0f66
0f58: f4 82     mov   a,$82+x
0f5a: d0 0a     bne   $0f66
0f5c: f5 a1 01  mov   a,$01a1+x
0f5f: fd        mov   y,a
0f60: f5 a0 01  mov   a,$01a0+x
0f63: 3f 7e 0f  call  $0f7e
0f66: f4 92     mov   a,$92+x
0f68: f0 b1     beq   $0f1b
0f6a: f5 80 02  mov   a,$0280+x
0f6d: de 91 ab  cbne  $91+x,$0f1b
0f70: eb 39     mov   y,$39
0f72: f5 71 02  mov   a,$0271+x
0f75: cf        mul   ya
0f76: dd        mov   a,y
0f77: 60        clrc
0f78: 95 70 02  adc   a,$0270+x
0f7b: 5f e0 0e  jmp   $0ee0

0f7e: e2 0d     set7  $0d
0f80: cb 0c     mov   $0c,y
0f82: 3f 11 0d  call  $0d11
0f85: 6d        push  y
0f86: eb 39     mov   y,$39
0f88: cf        mul   ya
0f89: cb 0e     mov   $0e,y
0f8b: 8f 00 0f  mov   $0f,#$00
0f8e: eb 39     mov   y,$39
0f90: ae        pop   a
0f91: cf        mul   ya
0f92: 7a 0e     addw  ya,$0e
0f94: 3f 11 0d  call  $0d11
0f97: 7a 0a     addw  ya,$0a
0f99: da 0a     movw  $0a,ya
0f9b: 6f        ret

0f9c: e2 0d     set7  $0d
0f9e: eb 39     mov   y,$39
0fa0: f5 a1 02  mov   a,$02a1+x
0fa3: cf        mul   ya
0fa4: dd        mov   a,y
0fa5: 60        clrc
0fa6: 95 a0 02  adc   a,$02a0+x
0fa9: 1c        asl   a
0faa: 90 02     bcc   $0fae
0fac: 48 ff     eor   a,#$ff
0fae: fb a2     mov   y,$a2+x
0fb0: cf        mul   ya
0fb1: dd        mov   a,y
0fb2: 48 ff     eor   a,#$ff
0fb4: eb 41     mov   y,$41
0fb6: cf        mul   ya
0fb7: fc        inc   y
0fb8: f5 20 02  mov   a,$0220+x
0fbb: cf        mul   ya
0fbc: fc        inc   y
0fbd: f5 31 01  mov   a,$0131+x
0fc0: cf        mul   ya
0fc1: fc        inc   y
0fc2: 6d        push  y
0fc3: cf        mul   ya
0fc4: e8 02     mov   a,#$02
0fc6: cf        mul   ya
0fc7: da 0e     movw  $0e,ya
0fc9: ae        pop   a
0fca: fd        mov   y,a
0fcb: cf        mul   ya
0fcc: 7a 0e     addw  ya,$0e
0fce: e4 c6     mov   a,$c6
0fd0: cf        mul   ya
0fd1: dd        mov   a,y
0fd2: d5 51 01  mov   $0151+x,a
0fd5: 6f        ret

; pitch table
0fd6: dw $085f
0fd8: dw $08de
0fda: dw $0965
0fdc: dw $09f4
0fde: dw $0a8c
0fe0: dw $0b2c
0fe2: dw $0bd6
0fe4: dw $0c8b
0fe6: dw $0d4a
0fe8: dw $0e14
0fea: dw $0eea
0fec: dw $0fcd
0fee: dw $10be

; EVOL(L),EVOL(R),EFB,EON,FLG,KON,NON,PMON,KOF
; dsp shadow addrs ($0ff8+1) for dsp regs ($0fef+1)
0ff0: db $2c,$3c,$0d,$4d,$6c,$4c,$3d,$2d,$5c
0ff9: db $47,$49,$1d,$19,$17,$1e,$18,$1a,$1f

; echo FIR presets
1002: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
100a: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
1012: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
101a: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; pan table
1022: db $00,$01,$03,$07,$0d,$15,$1e,$29
102a: db $34,$42,$51,$5e,$67,$6e,$73,$77
1032: db $7a,$7c,$7d,$7e,$7f,$7f

; dur%/vel table
1038: db $19,$26,$33,$3f,$4c,$59,$66,$6d
1040: db $70,$72,$75,$77,$70,$7c,$7f,$82
1048: db $84,$87,$89,$8c,$8e,$91,$93,$96
1050: db $99,$9b,$9e,$a0,$a3,$a5,$a8,$aa
1058: db $ad,$af,$b2,$b5,$b7,$ba,$bc,$bf
1060: db $c1,$c4,$c6,$c9,$cc,$ce,$d1,$d3
1068: db $d6,$d8,$db,$dd,$e0,$e2,$e5,$e8
1070: db $ea,$ed,$ef,$f2,$f4,$f7,$f9,$fc

1078: ba f4     movw  ya,$f4
107a: 5a f4     cmpw  ya,$f4
107c: d0 fa     bne   $1078
107e: da 00     movw  $00,ya
1080: ba f6     movw  ya,$f6
1082: 5a f6     cmpw  ya,$f6
1084: d0 fa     bne   $1080
1086: da 02     movw  $02,ya
1088: e4 00     mov   a,$00
108a: f0 57     beq   $10e3
108c: 68 c0     cmp   a,#$c0
108e: b0 4c     bcs   $10dc
1090: eb 01     mov   y,$01
1092: 10 17     bpl   $10ab
1094: cd 0e     mov   x,#$0e
1096: 75 59 03  cmp   a,$0359+x
1099: f0 06     beq   $10a1
109b: 1d        dec   x
109c: 1d        dec   x
109d: 10 f7     bpl   $1096
109f: 2f 42     bra   $10e3
10a1: dd        mov   a,y
10a2: 48 1f     eor   a,#$1f
10a4: 28 3f     and   a,#$3f
10a6: d5 89 03  mov   $0389+x,a
10a9: 2f 38     bra   $10e3
10ab: 64 04     cmp   a,$04
10ad: f0 34     beq   $10e3
10af: c4 0a     mov   $0a,a
10b1: 9c        dec   a
10b2: 9f        xcn   a
10b3: 28 0f     and   a,#$0f
10b5: 2d        push  a
10b6: 5d        mov   x,a
10b7: f5 3c 1c  mov   a,$1c3c+x
10ba: fd        mov   y,a
10bb: 1c        asl   a
10bc: 5d        mov   x,a
10bd: f6 b5 11  mov   a,$11b5+y
10c0: c4 15     mov   $15,a
10c2: ae        pop   a
10c3: 1c        asl   a
10c4: fd        mov   y,a
10c5: f6 58 1c  mov   a,$1c58+y
10c8: c4 0e     mov   $0e,a
10ca: f6 59 1c  mov   a,$1c59+y
10cd: c4 0f     mov   $0f,a
10cf: e4 01     mov   a,$01
10d1: 28 1f     and   a,#$1f
10d3: d0 02     bne   $10d7
10d5: e8 10     mov   a,#$10
10d7: 3f c5 11  call  $11c5
10da: 2f 07     bra   $10e3
10dc: 64 04     cmp   a,$04
10de: f0 03     beq   $10e3
10e0: 3f 00 19  call  $1900
10e3: fa 00 04  mov   ($04),($00)
10e6: e4 02     mov   a,$02
10e8: f0 58     beq   $1142
10ea: eb 03     mov   y,$03
10ec: 10 17     bpl   $1105
10ee: cd 0e     mov   x,#$0e
10f0: 75 59 03  cmp   a,$0359+x
10f3: f0 06     beq   $10fb
10f5: 1d        dec   x
10f6: 1d        dec   x
10f7: 10 f7     bpl   $10f0
10f9: 2f 47     bra   $1142
10fb: dd        mov   a,y
10fc: 48 1f     eor   a,#$1f
10fe: 28 3f     and   a,#$3f
1100: d5 89 03  mov   $0389+x,a
1103: 2f 3d     bra   $1142
1105: 64 06     cmp   a,$06
1107: f0 39     beq   $1142
1109: c4 0a     mov   $0a,a
110b: 9c        dec   a
110c: 9f        xcn   a
110d: 28 0f     and   a,#$0f
110f: 2d        push  a
1110: 5d        mov   x,a
1111: f5 48 1c  mov   a,$1c48+x
1114: fd        mov   y,a
1115: 1c        asl   a
1116: 5d        mov   x,a
1117: f6 b5 11  mov   a,$11b5+y
111a: c4 15     mov   $15,a
111c: ae        pop   a
111d: 1c        asl   a
111e: fd        mov   y,a
111f: f6 70 1c  mov   a,$1c70+y
1122: c4 0e     mov   $0e,a
1124: f6 71 1c  mov   a,$1c71+y
1127: c4 0f     mov   $0f,a
1129: e4 03     mov   a,$03
112b: 28 1f     and   a,#$1f
112d: d0 02     bne   $1131
112f: e8 10     mov   a,#$10
1131: fa 03 01  mov   ($01),($03)
1134: 3f c5 11  call  $11c5
1137: b3 03 08  bbc5  $03,$1142
113a: f5 89 03  mov   a,$0389+x
113d: 08 20     or    a,#$20
113f: d5 89 03  mov   $0389+x,a
1142: fa 02 06  mov   ($06),($02)
1145: cd 00     mov   x,#$00
1147: f5 29 04  mov   a,$0429+x
114a: f0 22     beq   $116e
114c: fd        mov   y,a
114d: f5 28 04  mov   a,$0428+x
1150: da c7     movw  $c7,ya
1152: f5 39 04  mov   a,$0439+x
1155: fd        mov   y,a
1156: f5 38 04  mov   a,$0438+x
1159: da 0a     movw  $0a,ya
115b: 7d        mov   a,x
115c: 5c        lsr   a
115d: fd        mov   y,a
115e: f6 b5 11  mov   a,$11b5+y
1161: c4 15     mov   $15,a
1163: e8 00     mov   a,#$00
1165: d5 29 04  mov   $0429+x,a
1168: fa 0b 01  mov   ($01),($0b)
116b: 3f db 11  call  $11db
116e: 3d        inc   x
116f: 3d        inc   x
1170: c8 0f     cmp   x,#$0f
1172: 90 d3     bcc   $1147
1174: ba 04     movw  ya,$04
1176: da f4     movw  $f4,ya
1178: ba 06     movw  ya,$06
117a: da f6     movw  $f6,ya
117c: 3f 6c 12  call  $126c
117f: e4 c4     mov   a,$c4
1181: f0 29     beq   $11ac
1183: e5 c1 02  mov   a,$02c1
1186: ec c2 02  mov   y,$02c2
1189: 7a c5     addw  ya,$c5
118b: da c5     movw  $c5,ya
118d: 6e c4 1c  dbnz  $c4,$11ac
1190: e5 c3 02  mov   a,$02c3
1193: c4 c6     mov   $c6,a
1195: a3 07 10  bbs5  $07,$11a8
1198: d0 0e     bne   $11a8
119a: 78 01 ec  cmp   $ec,#$01
119d: b0 03     bcs   $11a2
119f: 3f c7 19  call  $19c7
11a2: 8f 00 ec  mov   $ec,#$00
11a5: 8f 00 22  mov   $22,#$00
11a8: 92 07     clr4  $07
11aa: b2 07     clr5  $07
11ac: 32 07     clr1  $07
11ae: e4 22     mov   a,$22
11b0: f0 02     beq   $11b4
11b2: 22 07     set1  $07
11b4: 6f        ret

11b5: db $01,$02,$04,$08,$10,$20,$40,$80

11bd: 8d 1d     mov   y,#$1d
11bf: e8 76     mov   a,#$76
11c1: da c7     movw  $c7,ya
11c3: 2f 16     bra   $11db
11c5: 48 1f     eor   a,#$1f
11c7: c4 0b     mov   $0b,a
11c9: e4 0a     mov   a,$0a
11cb: 9c        dec   a
11cc: 28 0f     and   a,#$0f
11ce: 1c        asl   a
11cf: fd        mov   y,a
11d0: f7 0e     mov   a,($0e)+y
11d2: c4 c7     mov   $c7,a
11d4: fc        inc   y
11d5: f7 0e     mov   a,($0e)+y
11d7: f0 e4     beq   $11bd
11d9: c4 c8     mov   $c8,a
11db: f5 59 03  mov   a,$0359+x
11de: f0 08     beq   $11e8
11e0: e4 0a     mov   a,$0a
11e2: 75 59 03  cmp   a,$0359+x
11e5: b0 1d     bcs   $1204
11e7: 6f        ret

11e8: e4 15     mov   a,$15
11ea: 0e 14 00  tset1 $0014
11ed: 4e c6 02  tclr1 $02c6
11f0: 4e c7 02  tclr1 $02c7
11f3: 4e 1a 00  tclr1 $001a
11f6: 24 19     and   a,$19
11f8: 0e c6 02  tset1 $02c6
11fb: e4 15     mov   a,$15
11fd: 24 18     and   a,$18
11ff: 0e c7 02  tset1 $02c7
1202: e4 0a     mov   a,$0a
1204: d5 59 03  mov   $0359+x,a
1207: ba 08     movw  ya,$08
1209: d4 ca     mov   $ca+x,a
120b: d5 79 03  mov   $0379+x,a
120e: d5 58 03  mov   $0358+x,a
1211: d5 39 03  mov   $0339+x,a
1214: d5 68 03  mov   $0368+x,a
1217: d5 69 03  mov   $0369+x,a
121a: d5 19 04  mov   $0419+x,a
121d: bc        inc   a
121e: bc        inc   a
121f: d4 c9     mov   $c9+x,a
1221: e4 15     mov   a,$15
1223: 8f 5c f2  mov   $f2,#$5c
1226: c4 f3     mov   $f3,a             ; set KOF
1228: f7 c7     mov   a,($c7)+y
122a: 2d        push  a
122b: 28 f0     and   a,#$f0
122d: bc        inc   a
122e: c4 e9     mov   $e9,a
1230: b3 01 02  bbc5  $01,$1235
1233: 62 e9     set3  $e9
1235: e4 15     mov   a,$15
1237: e3 e9 0b  bbs7  $e9,$1245
123a: c3 07 03  bbs6  $07,$1240
123d: d3 e9 05  bbc6  $e9,$1245
1240: 0e 19 00  tset1 $0019
1243: 2f 03     bra   $1248
1245: 4e 19 00  tclr1 $0019
1248: ae        pop   a
1249: 28 0f     and   a,#$0f
124b: fd        mov   y,a
124c: f6 e0 ff  mov   a,$ffe0+y
124f: d5 48 03  mov   $0348+x,a
1252: ba 08     movw  ya,$08
1254: 9c        dec   a
1255: 3f f2 14  call  $14f2
1258: f7 c7     mov   a,($c7)+y
125a: 3f fa 15  call  $15fa
125d: e4 e9     mov   a,$e9
125f: d5 49 03  mov   $0349+x,a
1262: ba c7     movw  ya,$c7
1264: d5 98 03  mov   $0398+x,a
1267: dd        mov   a,y
1268: d5 99 03  mov   $0399+x,a
126b: 6f        ret

126c: 8f 01 15  mov   $15,#$01
126f: cd 00     mov   x,#$00
1271: d8 1e     mov   $1e,x
1273: d8 1f     mov   $1f,x
1275: f5 59 03  mov   a,$0359+x
1278: f0 68     beq   $12e2
127a: 8f 00 0d  mov   $0d,#$00
127d: d8 16     mov   $16,x
127f: f5 49 03  mov   a,$0349+x
1282: c4 e9     mov   $e9,a
1284: f5 99 03  mov   a,$0399+x
1287: fd        mov   y,a
1288: f5 98 03  mov   a,$0398+x
128b: da c7     movw  $c7,ya
128d: 7d        mov   a,x
128e: 9f        xcn   a
128f: 5c        lsr   a
1290: c4 ea     mov   $ea,a
1292: 9b c9     dec   $c9+x
1294: d0 49     bne   $12df
1296: 13 e9 10  bbc0  $e9,$12a9
1299: e4 15     mov   a,$15
129b: 4e c4 02  tclr1 $02c4
129e: 12 e9     clr0  $e9
12a0: 8d 00     mov   y,#$00
12a2: f7 c7     mov   a,($c7)+y
12a4: 3f cb 16  call  $16cb
12a7: 02 0d     set0  $0d
12a9: 3f 2c 15  call  $152c
12ac: fd        mov   y,a
12ad: d0 30     bne   $12df
12af: d5 59 03  mov   $0359+x,a
12b2: e4 15     mov   a,$15
12b4: 4e 19 00  tclr1 $0019
12b7: 4e 18 00  tclr1 $0018
12ba: 4e c4 02  tclr1 $02c4
12bd: 4e 14 00  tclr1 $0014
12c0: 4e 1a 00  tclr1 $001a
12c3: 25 c6 02  and   a,$02c6
12c6: 0e 19 00  tset1 $0019
12c9: e4 15     mov   a,$15
12cb: 25 c7 02  and   a,$02c7
12ce: 0e 18 00  tset1 $0018
12d1: f5 21 02  mov   a,$0221+x
12d4: 51        tcall 5                 ; set sample
12d5: e4 ea     mov   a,$ea
12d7: 08 07     or    a,#$07
12d9: fd        mov   y,a
12da: f4 b1     mov   a,$b1+x
12dc: 11        tcall 1                 ; set GAIN
12dd: 2f 03     bra   $12e2
12df: 3f 0e 13  call  $130e
12e2: 3d        inc   x
12e3: 3d        inc   x
12e4: 0b 15     asl   $15
12e6: d0 8d     bne   $1275
12e8: e5 c4 02  mov   a,$02c4
12eb: c4 18     mov   $18,a
12ed: 8f 3d f2  mov   $f2,#$3d
12f0: c4 f3     mov   $f3,a             ; set NON
12f2: 8f 4c f2  mov   $f2,#$4c
12f5: fa 1e f3  mov   ($f3),($1e)       ; set KON
12f8: e4 17     mov   a,$17
12fa: 28 e0     and   a,#$e0
12fc: 05 c5 02  or    a,$02c5
12ff: c4 17     mov   $17,a
1301: 8f 5c f2  mov   $f2,#$5c
1304: fa 1f f3  mov   ($f3),($1f)       ; set KOF
1307: e8 00     mov   a,#$00
1309: c4 1e     mov   $1e,a
130b: c4 1f     mov   $1f,a
130d: 6f        ret

130e: f4 ca     mov   a,$ca+x
1310: f0 24     beq   $1336
1312: f5 18 03  mov   a,$0318+x
1315: 60        clrc
1316: 95 28 03  adc   a,$0328+x
1319: d5 18 03  mov   $0318+x,a
131c: f5 19 03  mov   a,$0319+x
131f: 95 29 03  adc   a,$0329+x
1322: d5 19 03  mov   $0319+x,a
1325: 9b ca     dec   $ca+x
1327: d0 15     bne   $133e
1329: e8 00     mov   a,#$00
132b: d5 18 03  mov   $0318+x,a
132e: f5 38 03  mov   a,$0338+x
1331: d5 19 03  mov   $0319+x,a
1334: 2f 08     bra   $133e
1336: f5 79 03  mov   a,$0379+x
1339: d0 03     bne   $133e
133b: 33 0d 6f  bbc1  $0d,$13ad
133e: f5 18 03  mov   a,$0318+x
1341: 60        clrc
1342: 95 58 03  adc   a,$0358+x
1345: c4 0a     mov   $0a,a
1347: f5 19 03  mov   a,$0319+x
134a: 95 39 03  adc   a,$0339+x
134d: 28 7f     and   a,#$7f
134f: c4 0b     mov   $0b,a
1351: e5 c4 02  mov   a,$02c4
1354: 24 15     and   a,$15
1356: f0 09     beq   $1361
1358: e4 0b     mov   a,$0b
135a: 28 1f     and   a,#$1f
135c: c5 c5 02  mov   $02c5,a
135f: 2f 4c     bra   $13ad
1361: f5 68 03  mov   a,$0368+x
1364: f0 0f     beq   $1375
1366: 0b 12     asl   $12
1368: eb 12     mov   y,$12
136a: cf        mul   ya
136b: dd        mov   a,y
136c: 60        clrc
136d: 84 0a     adc   a,$0a
136f: c4 0a     mov   $0a,a
1371: 90 02     bcc   $1375
1373: ab 0b     inc   $0b
1375: f5 79 03  mov   a,$0379+x
1378: f0 30     beq   $13aa
137a: f5 88 03  mov   a,$0388+x
137d: 60        clrc
137e: 95 78 03  adc   a,$0378+x
1381: d5 78 03  mov   $0378+x,a
1384: c4 0c     mov   $0c,a
1386: 1c        asl   a
1387: 1c        asl   a
1388: 90 02     bcc   $138c
138a: 48 ff     eor   a,#$ff
138c: fd        mov   y,a
138d: f5 79 03  mov   a,$0379+x
1390: 68 f1     cmp   a,#$f1
1392: 90 05     bcc   $1399
1394: 28 0f     and   a,#$0f
1396: cf        mul   ya
1397: 2f 04     bra   $139d
1399: cf        mul   ya
139a: dd        mov   a,y
139b: 8d 00     mov   y,#$00
139d: f3 0c 06  bbc7  $0c,$13a6
13a0: da 0e     movw  $0e,ya
13a2: ba 08     movw  ya,$08
13a4: 9a 0e     subw  ya,$0e
13a6: 7a 0a     addw  ya,$0a
13a8: da 0a     movw  $0a,ya
13aa: 3f 9c 07  call  $079c
13ad: f4 d9     mov   a,$d9+x
13af: f0 24     beq   $13d5
13b1: f5 f8 02  mov   a,$02f8+x
13b4: 60        clrc
13b5: 95 08 03  adc   a,$0308+x
13b8: d5 f8 02  mov   $02f8+x,a
13bb: f5 f9 02  mov   a,$02f9+x
13be: 95 09 03  adc   a,$0309+x
13c1: d5 f9 02  mov   $02f9+x,a
13c4: 02 0d     set0  $0d
13c6: 9b d9     dec   $d9+x
13c8: d0 0b     bne   $13d5
13ca: e8 00     mov   a,#$00
13cc: d5 f8 02  mov   $02f8+x,a
13cf: f5 e9 02  mov   a,$02e9+x
13d2: d5 f9 02  mov   $02f9+x,a
13d5: f4 da     mov   a,$da+x
13d7: f0 24     beq   $13fd
13d9: f5 c8 02  mov   a,$02c8+x
13dc: 60        clrc
13dd: 95 d8 02  adc   a,$02d8+x
13e0: d5 c8 02  mov   $02c8+x,a
13e3: f5 c9 02  mov   a,$02c9+x
13e6: 95 d9 02  adc   a,$02d9+x
13e9: d5 c9 02  mov   $02c9+x,a
13ec: 9b da     dec   $da+x
13ee: d0 10     bne   $1400
13f0: e8 00     mov   a,#$00
13f2: d5 c8 02  mov   $02c8+x,a
13f5: f5 e8 02  mov   a,$02e8+x
13f8: d5 c9 02  mov   $02c9+x,a
13fb: 2f 03     bra   $1400
13fd: 13 0d 5f  bbc0  $0d,$145f
1400: eb eb     mov   y,$eb
1402: f5 48 03  mov   a,$0348+x
1405: cf        mul   ya
1406: fc        inc   y
1407: f5 f9 02  mov   a,$02f9+x
140a: cf        mul   ya
140b: b3 e9 03  bbc5  $e9,$1411
140e: fc        inc   y
140f: dd        mov   a,y
1410: cf        mul   ya
1411: cb 0e     mov   $0e,y
1413: e4 ea     mov   a,$ea
1415: c4 0d     mov   $0d,a
1417: f5 c9 02  mov   a,$02c9+x
141a: fd        mov   y,a
141b: f5 c8 02  mov   a,$02c8+x
141e: f3 07 04  bbc7  $07,$1425
1421: 8d 0f     mov   y,#$0f
1423: e8 00     mov   a,#$00
1425: da 0a     movw  $0a,ya
1427: f6 63 14  mov   a,$1463+y
142a: 80        setc
142b: b6 62 14  sbc   a,$1462+y
142e: eb 0a     mov   y,$0a
1430: cf        mul   ya
1431: dd        mov   a,y
1432: eb 0b     mov   y,$0b
1434: 60        clrc
1435: 96 62 14  adc   a,$1462+y
1438: eb 0e     mov   y,$0e
143a: cf        mul   ya
143b: e4 e9     mov   a,$e9
143d: 1c        asl   a
143e: 13 0d 01  bbc0  $0d,$1442
1441: 1c        asl   a
1442: dd        mov   a,y
1443: 90 06     bcc   $144b
1445: e3 07 03  bbs7  $07,$144b
1448: 48 ff     eor   a,#$ff
144a: bc        inc   a
144b: fa 0d f2  mov   ($f2),($0d)
144e: c4 f3     mov   $f3,a             ;
1450: 03 0d 0c  bbs0  $0d,$145f
1453: ab 0d     inc   $0d
1455: 8d 1e     mov   y,#$1e
1457: e8 00     mov   a,#$00
1459: 9a 0a     subw  ya,$0a
145b: da 0a     movw  $0a,ya
145d: 2f c8     bra   $1427
145f: 5f 5d 12  jmp   $125d

1462: db $00,$02,$05,$09,$0f,$15,$1b,$22
146a: db $29,$2f,$35,$3c,$42,$48,$4c,$51
1472: db $55,$59,$5e,$62,$66,$6a,$6e,$71
147a: db $74,$77,$7a,$7c,$7d,$7e,$7f,$7f

1482: dw $14f2  ; 
1484: dw $16cb  ; 
1486: dw $1741  ; 
1488: dw $1522  ; 
148a: dw $1726  ; 
148c: dw $173b  ; 
148e: dw $1595  ; 
1490: dw $1603  ; 
1492: dw $1663  ; 
1494: dw $167a  ; 
1496: dw $1770  ; 
1498: dw $1827  ; 
149a: dw $1845  ; 
149c: dw $17a1  ; 
149e: dw $17a7  ; 
14a0: dw $17ae  ; 
14a2: dw $17c5  ; 
14a4: dw $17d3  ; 
14a6: dw $17e2  ; 
14a8: dw $15d0  ; 
14aa: dw $1599  ; 
14ac: dw $1761  ; 
14ae: dw $1761  ; 
14b0: dw $1761  ; 
14b2: dw $1509  ; 
14b4: dw $1509  ; 
14b6: dw $1509  ; 
14b8: dw $1853  ; 
14ba: dw $184f  ; 
14bc: dw $14ee  ; 
14be: dw $1859  ; 
14c0: dw $185f  ; 
14c2: dw $15da  ; 
14c4: dw $15d6  ; 
14c6: dw $15f4  ; 
14c8: dw $15e2  ; 
14ca: dw $17ff  ; 
14cc: dw $181d  ; 
14ce: dw $1764  ; 
14d0: dw $176d  ; 
14d2: dw $1624  ; 
14d4: dw $185f  ; 
14d6: dw $1827  ; 
14d8: dw $1813  ; 
14da: dw $1790  ; 
14dc: dw $179e  ; 
14de: dw $15a8  ; 
14e0: dw $15b3  ; 
14e2: dw $15c2  ; 
14e4: dw $172c  ; 
14e6: dw $18c2  ; 
14e8: dw $18cc  ; 
14ea: dw $15a1  ; 
14ec: dw $1752  ; 

14ee: 60        clrc
14ef: 95 f9 02  adc   a,$02f9+x
14f2: d5 f9 02  mov   $02f9+x,a
14f5: dd        mov   a,y
14f6: d5 f8 02  mov   $02f8+x,a
14f9: d4 d9     mov   $d9+x,a
14fb: 3a c7     incw  $c7
14fd: 02 0d     set0  $0d
14ff: 6f        ret

1500: fd        mov   y,a
1501: f6 e0 ff  mov   a,$ffe0+y
1504: d5 48 03  mov   $0348+x,a
1507: 2f f2     bra   $14fb
1509: fd        mov   y,a
150a: 28 0f     and   a,#$0f
150c: ad 50     cmp   y,#$50
150e: 90 f0     bcc   $1500
1510: ad 60     cmp   y,#$60
1512: 90 0c     bcc   $1520
1514: ad 70     cmp   y,#$70
1516: b0 04     bcs   $151c
1518: 08 f0     or    a,#$f0
151a: 2f 06     bra   $1522
151c: 08 90     or    a,#$90
151e: 2f 02     bra   $1522
1520: 08 d0     or    a,#$d0
1522: 3a c7     incw  $c7
1524: fd        mov   y,a
1525: e4 ea     mov   a,$ea
1527: 08 07     or    a,#$07
1529: 5f 1c 08  jmp   $081c

152c: e8 15     mov   a,#$15
152e: 2d        push  a
152f: e8 2c     mov   a,#$2c
1531: 2d        push  a
1532: 8d 00     mov   y,#$00
1534: f7 c7     mov   a,($c7)+y
1536: f0 66     beq   $159e
1538: 30 06     bmi   $1540
153a: 68 40     cmp   a,#$40
153c: b0 cb     bcs   $1509
153e: 2f 55     bra   $1595
1540: 68 c8     cmp   a,#$c8
1542: 90 19     bcc   $155d
1544: 80        setc
1545: a8 c8     sbc   a,#$c8
1547: 1c        asl   a
1548: fd        mov   y,a
1549: f6 83 14  mov   a,$1483+y
154c: 2d        push  a
154d: f6 82 14  mov   a,$1482+y
1550: 2d        push  a
1551: 8d 00     mov   y,#$00
; tcall 10
1553: 3a c7     incw  $c7
1555: f7 c7     mov   a,($c7)+y
1557: 6f        ret

; tcall 9
1558: f7 c7     mov   a,($c7)+y
155a: 3a c7     incw  $c7
155c: 6f        ret

155d: d5 19 03  mov   $0319+x,a
1560: dd        mov   a,y
1561: d5 18 03  mov   $0318+x,a
1564: d4 ca     mov   $ca+x,a
1566: 3a c7     incw  $c7
1568: f5 19 04  mov   a,$0419+x
156b: f0 10     beq   $157d
156d: 2d        push  a
156e: ba c7     movw  ya,$c7
1570: d5 08 04  mov   $0408+x,a
1573: dd        mov   a,y
1574: d5 09 04  mov   $0409+x,a
1577: ee        pop   y
1578: f5 18 04  mov   a,$0418+x
157b: da c7     movw  $c7,ya
157d: e5 c4 02  mov   a,$02c4
1580: 24 15     and   a,$15
1582: f0 0e     beq   $1592
1584: f5 19 03  mov   a,$0319+x
1587: 68 a0     cmp   a,#$a0
1589: 90 07     bcc   $1592
158b: e4 15     mov   a,$15
158d: 4e c4 02  tclr1 $02c4
1590: 2f 02     bra   $1594
1592: 22 0d     set1  $0d
1594: 6f        ret

1595: 3a c7     incw  $c7
1597: 2f 03     bra   $159c
1599: f5 69 03  mov   a,$0369+x
159c: d4 c9     mov   $c9+x,a
159e: ee        pop   y
159f: ee        pop   y
15a0: 6f        ret

15a1: 3f 3b 17  call  $173b
15a4: e8 01     mov   a,#$01
15a6: 2f f4     bra   $159c
15a8: e4 ea     mov   a,$ea
15aa: 08 08     or    a,#$08
15ac: c4 f2     mov   $f2,a
15ae: e4 f3     mov   a,$f3             ; get ENVX
15b0: d0 0a     bne   $15bc
15b2: 6f        ret

15b3: 8f 7c f2  mov   $f2,#$7c
15b6: e4 f3     mov   a,$f3             ; get ENDX
15b8: 24 15     and   a,$15
15ba: d0 11     bne   $15cd
15bc: 1a c7     decw  $c7
15be: e8 01     mov   a,#$01
15c0: 2f da     bra   $159c
15c2: 8f 7c f2  mov   $f2,#$7c
15c5: e4 f3     mov   a,$f3             ; get ENDX
15c7: 24 15     and   a,$15
15c9: f0 f1     beq   $15bc
15cb: 62 07     set3  $07
15cd: c4 f3     mov   $f3,a             ; set ENDX
15cf: 6f        ret

15d0: d5 69 03  mov   $0369+x,a
15d3: 3a c7     incw  $c7
15d5: 6f        ret

15d6: 60        clrc
15d7: 95 58 03  adc   a,$0358+x
15da: d5 58 03  mov   $0358+x,a
15dd: 3a c7     incw  $c7
15df: 22 0d     set1  $0d
15e1: 6f        ret

15e2: 7d        mov   a,x
15e3: 5c        lsr   a
15e4: fd        mov   y,a
15e5: f6 ec 15  mov   a,$15ec+y
15e8: d5 59 03  mov   $0359+x,a
15eb: 6f        ret

15ec: db $11,$01,$01,$01,$01,$01,$01,$01

15f4: d5 59 03  mov   $0359+x,a
15f7: 3a c7     incw  $c7
15f9: 6f        ret

15fa: c4 0a     mov   $0a,a
15fc: a3 0a 04  bbs5  $0a,$1603
15ff: 28 c0     and   a,#$c0
1601: 04 0b     or    a,$0b
1603: 3a c7     incw  $c7
1605: d2 e9     clr6  $e9
1607: f2 e9     clr7  $e9
1609: 2d        push  a
160a: 28 c0     and   a,#$c0
160c: 04 e9     or    a,$e9
160e: c4 e9     mov   $e9,a
1610: ae        pop   a
1611: 28 1f     and   a,#$1f
1613: d5 89 03  mov   $0389+x,a
1616: 28 1f     and   a,#$1f
1618: d5 c9 02  mov   $02c9+x,a
161b: dd        mov   a,y
161c: d5 c8 02  mov   $02c8+x,a
161f: d4 da     mov   $da+x,a
1621: 02 0d     set0  $0d
1623: 6f        ret

1624: f5 89 03  mov   a,$0389+x
1627: 2d        push  a
1628: 28 60     and   a,#$60
162a: ae        pop   a
162b: d0 08     bne   $1635
162d: 68 1f     cmp   a,#$1f
162f: 90 e5     bcc   $1616
1631: e8 0f     mov   a,#$0f
1633: 2f e1     bra   $1616
1635: 28 1f     and   a,#$1f
1637: 68 1f     cmp   a,#$1f
1639: 90 02     bcc   $163d
163b: e8 0f     mov   a,#$0f
163d: c4 0b     mov   $0b,a
163f: 3f 16 16  call  $1616
1642: 7d        mov   a,x
1643: 5c        lsr   a
1644: 5d        mov   x,a
1645: f5 5b 16  mov   a,$165b+x
1648: 5d        mov   x,a
1649: 28 f8     and   a,#$f8
164b: c4 0a     mov   $0a,a
164d: 8d 1d     mov   y,#$1d
164f: e8 7a     mov   a,#$7a
1651: da 0e     movw  $0e,ya
1653: 7d        mov   a,x
1654: 28 07     and   a,#$07
1656: 1c        asl   a
1657: 5d        mov   x,a
1658: 5f 7a 18  jmp   $187a

165b: db $13,$12,$10,$10,$10,$10,$10,$10

1663: d4 d9     mov   $d9+x,a
1665: 2d        push  a
1666: 3a c7     incw  $c7
1668: 91        tcall 9
1669: d5 e9 02  mov   $02e9+x,a
166c: 80        setc
166d: b5 f9 02  sbc   a,$02f9+x
1670: ce        pop   x
1671: 31        tcall 3
1672: d5 08 03  mov   $0308+x,a
1675: dd        mov   a,y
1676: d5 09 03  mov   $0309+x,a
1679: 6f        ret

167a: d4 da     mov   $da+x,a
167c: 2d        push  a
167d: 3a c7     incw  $c7
167f: f7 c7     mov   a,($c7)+y
1681: 10 28     bpl   $16ab
1683: 28 1f     and   a,#$1f
1685: 73 e9 07  bbc3  $e9,$168f
1688: c4 0a     mov   $0a,a
168a: e8 20     mov   a,#$20
168c: 80        setc
168d: a4 0a     sbc   a,$0a
168f: 68 10     cmp   a,#$10
1691: b0 0d     bcs   $16a0
1693: 28 0f     and   a,#$0f
1695: 95 c9 02  adc   a,$02c9+x
1698: 68 1e     cmp   a,#$1e
169a: 90 15     bcc   $16b1
169c: e8 1e     mov   a,#$1e
169e: 2f 11     bra   $16b1
16a0: 08 e0     or    a,#$e0
16a2: 60        clrc
16a3: 95 c9 02  adc   a,$02c9+x
16a6: 10 09     bpl   $16b1
16a8: dd        mov   a,y
16a9: 2f 06     bra   $16b1
16ab: 73 e9 03  bbc3  $e9,$16b1
16ae: 48 1f     eor   a,#$1f
16b0: 9c        dec   a
16b1: eb ed     mov   y,$ed
16b3: f0 03     beq   $16b8
16b5: 48 1f     eor   a,#$1f
16b7: 9c        dec   a
16b8: 3a c7     incw  $c7
16ba: d5 e8 02  mov   $02e8+x,a
16bd: 80        setc
16be: b5 c9 02  sbc   a,$02c9+x
16c1: ce        pop   x
16c2: 31        tcall 3
16c3: d5 d8 02  mov   $02d8+x,a
16c6: dd        mov   a,y
16c7: d5 d9 02  mov   $02d9+x,a
16ca: 6f        ret

16cb: c4 0a     mov   $0a,a
16cd: 10 05     bpl   $16d4
16cf: e4 15     mov   a,$15
16d1: 0e c4 02  tset1 $02c4
16d4: d3 0a 03  bbc6  $0a,$16da
16d7: 3f 26 17  call  $1726
16da: e4 0a     mov   a,$0a
16dc: 28 3f     and   a,#$3f
16de: 68 38     cmp   a,#$38
16e0: 90 06     bcc   $16e8
16e2: 73 e9 03  bbc3  $e9,$16e8
16e5: 60        clrc
16e6: 88 04     adc   a,#$04
16e8: 8d 06     mov   y,#$06
16ea: cf        mul   ya
16eb: da 0e     movw  $0e,ya
16ed: 60        clrc
16ee: 98 00 0e  adc   $0e,#$00
16f1: 98 fe 0f  adc   $0f,#$fe          ; instrument table $fe00
16f4: e4 ea     mov   a,$ea
16f6: 08 04     or    a,#$04
16f8: 5d        mov   x,a
16f9: 8d 00     mov   y,#$00
16fb: f7 0e     mov   a,($0e)+y
16fd: fc        inc   y
16fe: d8 f2     mov   $f2,x
1700: c4 f3     mov   $f3,a             ; set SRCN
1702: 3d        inc   x
1703: 93 e9 0a  bbc4  $e9,$1710
1706: f7 0e     mov   a,($0e)+y
1708: fc        inc   y
1709: d8 f2     mov   $f2,x
170b: c4 f3     mov   $f3,a             ; set ADSR(1)
170d: 3d        inc   x
170e: f7 0e     mov   a,($0e)+y
1710: d8 f2     mov   $f2,x
1712: c4 f3     mov   $f3,a             ; set ADSR(2)
1714: f8 16     mov   x,$16
1716: 8d 04     mov   y,#$04
1718: f7 0e     mov   a,($0e)+y
171a: d5 01 02  mov   $0201+x,a
171d: fc        inc   y
171e: f7 0e     mov   a,($0e)+y
1720: d5 00 02  mov   $0200+x,a
1723: 3a c7     incw  $c7
1725: 6f        ret

1726: e4 15     mov   a,$15
1728: 0e 1e 00  tset1 $001e
172b: 6f        ret

172c: e8 ff     mov   a,#$ff
172e: 8d 18     mov   y,#$18
1730: da c7     movw  $c7,ya
1732: e8 01     mov   a,#$01
1734: d5 59 03  mov   $0359+x,a
1737: d4 c9     mov   $c9+x,a
1739: ae        pop   a
173a: ae        pop   a
173b: e4 15     mov   a,$15             ; channel flag bit
173d: 0e 1f 00  tset1 $001f             ; set KOF shadow
1740: 6f        ret

1741: 2d        push  a
1742: 3a c7     incw  $c7
1744: 91        tcall 9
1745: fd        mov   y,a
1746: e4 ea     mov   a,$ea
1748: 08 06     or    a,#$06
174a: 3f 1c 08  call  $081c
174d: ee        pop   y
174e: 9c        dec   a
174f: 5f 1c 08  jmp   $081c

1752: e4 ea     mov   a,$ea
1754: 08 05     or    a,#$05
1756: fd        mov   y,a
1757: cb f2     mov   $f2,y
1759: e4 f3     mov   a,$f3             ; set ADSR(1)
175b: 60        clrc
175c: 88 80     adc   a,#$80
175e: 5f 29 08  jmp   $0829

1761: 3a c7     incw  $c7
1763: 6f        ret

1764: 92 e9     clr4  $e9
1766: e4 ea     mov   a,$ea
1768: 08 05     or    a,#$05
176a: 5f 1c 08  jmp   $081c

176d: 82 e9     set4  $e9
176f: 6f        ret

1770: d4 ca     mov   $ca+x,a
1772: 2d        push  a
1773: 3a c7     incw  $c7
1775: f7 c7     mov   a,($c7)+y
1777: 30 04     bmi   $177d
1779: 60        clrc
177a: 95 19 03  adc   a,$0319+x
177d: 3a c7     incw  $c7
177f: d5 38 03  mov   $0338+x,a
1782: 80        setc
1783: b5 19 03  sbc   a,$0319+x
1786: ce        pop   x
1787: 31        tcall 3
1788: d5 28 03  mov   $0328+x,a
178b: dd        mov   a,y
178c: d5 29 03  mov   $0329+x,a
178f: 6f        ret

1790: d5 88 03  mov   $0388+x,a
1793: 3a c7     incw  $c7
1795: 91        tcall 9
1796: d5 79 03  mov   $0379+x,a
1799: dd        mov   a,y
179a: d5 78 03  mov   $0378+x,a
179d: 6f        ret

179e: dd        mov   a,y
179f: 2f f5     bra   $1796
17a1: d5 a9 03  mov   $03a9+x,a
17a4: dd        mov   a,y
17a5: 2f 0c     bra   $17b3
17a7: d5 b8 03  mov   $03b8+x,a
17aa: e8 10     mov   a,#$10
17ac: 2f 05     bra   $17b3
17ae: d5 b9 03  mov   $03b9+x,a
17b1: e8 20     mov   a,#$20
17b3: 60        clrc
17b4: 84 16     adc   a,$16
17b6: 5d        mov   x,a
17b7: 3a c7     incw  $c7
17b9: ba c7     movw  ya,$c7
17bb: d5 c8 03  mov   $03c8+x,a
17be: dd        mov   a,y
17bf: d5 c9 03  mov   $03c9+x,a
17c2: f8 16     mov   x,$16
17c4: 6f        ret

17c5: f5 a9 03  mov   a,$03a9+x
17c8: f0 06     beq   $17d0
17ca: 9c        dec   a
17cb: d5 a9 03  mov   $03a9+x,a
17ce: f0 2e     beq   $17fe
17d0: dd        mov   a,y
17d1: 2f 1c     bra   $17ef
17d3: f5 b8 03  mov   a,$03b8+x
17d6: f0 06     beq   $17de
17d8: 9c        dec   a
17d9: d5 b8 03  mov   $03b8+x,a
17dc: f0 20     beq   $17fe
17de: e8 10     mov   a,#$10
17e0: 2f 0d     bra   $17ef
17e2: f5 b9 03  mov   a,$03b9+x
17e5: f0 06     beq   $17ed
17e7: 9c        dec   a
17e8: d5 b9 03  mov   $03b9+x,a
17eb: f0 11     beq   $17fe
17ed: e8 20     mov   a,#$20
17ef: 60        clrc
17f0: 84 16     adc   a,$16
17f2: 5d        mov   x,a
17f3: f5 c9 03  mov   a,$03c9+x
17f6: fd        mov   y,a
17f7: f5 c8 03  mov   a,$03c8+x
17fa: da c7     movw  $c7,ya
17fc: f8 16     mov   x,$16
17fe: 6f        ret

17ff: f0 0c     beq   $180d
1801: 9c        dec   a
1802: 1c        asl   a
1803: fd        mov   y,a
1804: f6 90 1c  mov   a,$1c90+y
1807: d5 18 04  mov   $0418+x,a
180a: f6 91 1c  mov   a,$1c91+y
180d: d5 19 04  mov   $0419+x,a
1810: 3a c7     incw  $c7
1812: 6f        ret

1813: f0 f8     beq   $180d
1815: 7a c7     addw  ya,$c7
1817: d5 18 04  mov   $0418+x,a
181a: dd        mov   a,y
181b: 2f f0     bra   $180d
181d: f5 09 04  mov   a,$0409+x
1820: fd        mov   y,a
1821: f5 08 04  mov   a,$0408+x
1824: da c7     movw  $c7,ya
1826: 6f        ret

1827: 3f 3a 18  call  $183a
182a: ba c7     movw  ya,$c7
182c: d5 f8 03  mov   $03f8+x,a
182f: dd        mov   a,y
1830: d5 f9 03  mov   $03f9+x,a
1833: ba 0e     movw  ya,$0e
1835: da c7     movw  $c7,ya
1837: 6f        ret

1838: f7 c7     mov   a,($c7)+y
183a: c4 0e     mov   $0e,a
183c: 3a c7     incw  $c7
183e: f7 c7     mov   a,($c7)+y
1840: c4 0f     mov   $0f,a
1842: 3a c7     incw  $c7
1844: 6f        ret

1845: f5 f9 03  mov   a,$03f9+x
1848: fd        mov   y,a
1849: f5 f8 03  mov   a,$03f8+x
184c: da c7     movw  $c7,ya
184e: 6f        ret

184f: 60        clrc
1850: 95 39 03  adc   a,$0339+x
1853: d5 39 03  mov   $0339+x,a
1856: 3a c7     incw  $c7
1858: 6f        ret

1859: d5 68 03  mov   $0368+x,a
185c: 3a c7     incw  $c7
185e: 6f        ret

185f: 3a c7     incw  $c7
1861: 2d        push  a
1862: f5 c9 02  mov   a,$02c9+x
1865: c4 0b     mov   $0b,a
1867: 73 e9 02  bbc3  $e9,$186c
186a: a2 0b     set5  $0b
186c: ae        pop   a
186d: 5d        mov   x,a
186e: 28 f8     and   a,#$f8
1870: c4 0a     mov   $0a,a
1872: 7d        mov   a,x
1873: 28 07     and   a,#$07
1875: 1c        asl   a
1876: 5d        mov   x,a
1877: 3f 38 18  call  $1838
;
187a: f5 29 04  mov   a,$0429+x
187d: f0 07     beq   $1886
187f: e4 0a     mov   a,$0a
1881: 75 38 04  cmp   a,$0438+x
1884: 90 12     bcc   $1898
1886: ba 0a     movw  ya,$0a
1888: d5 38 04  mov   $0438+x,a
188b: dd        mov   a,y
188c: d5 39 04  mov   $0439+x,a
188f: ba 0e     movw  ya,$0e
1891: d5 28 04  mov   $0428+x,a
1894: dd        mov   a,y
1895: d5 29 04  mov   $0429+x,a
1898: f8 16     mov   x,$16
189a: 6f        ret
; when vcmd fa arg1 < 0:
189b: 8d 03     mov   y,#$03
189d: 28 0f     and   a,#$0f
189f: cf        mul   ya
18a0: 5d        mov   x,a               ; x = (arg1 & 15) * 3
18a1: f5 bd 18  mov   a,$18bd+x
18a4: fd        mov   y,a
18a5: f5 bc 18  mov   a,$18bc+x
18a8: da 0e     movw  $0e,ya            ; offset +0/1: address
18aa: 8f 0f 0b  mov   $0b,#$0f
18ad: f5 be 18  mov   a,$18be+x
18b0: 5d        mov   x,a
18b1: 28 f8     and   a,#$f8            ; extract upper 5 bits
18b3: c4 0a     mov   $0a,a             ; $0a/b = $0fxx
18b5: 7d        mov   a,x
18b6: 28 07     and   a,#$07            ; extract lower 3 bits (channel #?)
18b8: 1c        asl   a
18b9: 5d        mov   x,a               ; set it to X as index
18ba: 2f be     bra   $187a
;
18bc: dw $22e6 ; 00
18be: db $11   ; ($10 + 1)
18bf: dw $2326 ; 01
18c1: db $10   ; ($10 + 0)

18c2: 3a c7     incw  $c7
18c4: 5d        mov   x,a
18c5: 91        tcall 9
18c6: 3f c1 19  call  $19c1
18c9: f8 16     mov   x,$16
18cb: 6f        ret

18cc: 3a c7     incw  $c7
18ce: 68 00     cmp   a,#$00
18d0: f0 02     beq   $18d4
18d2: e4 15     mov   a,$15
18d4: c4 1a     mov   $1a,a
18d6: 6f        ret

18d7: 8d 08     mov   y,#$08
18d9: cd 00     mov   x,#$00
18db: f5 99 03  mov   a,$0399+x
18de: f0 14     beq   $18f4
18e0: e8 00     mov   a,#$00
18e2: d5 49 03  mov   $0349+x,a
18e5: bc        inc   a
18e6: d4 c9     mov   $c9+x,a
18e8: e8 fe     mov   a,#$fe
18ea: d5 98 03  mov   $0398+x,a
18ed: e8 18     mov   a,#$18
18ef: d5 99 03  mov   $0399+x,a
18f2: e8 00     mov   a,#$00
18f4: d5 29 04  mov   $0429+x,a
18f7: 3d        inc   x
18f8: 3d        inc   x
18f9: fe e0     dbnz  y,$18db
18fb: f8 16     mov   x,$16
18fd: 6f        ret

18fe: f9 00     mov   x,$00+y
1900: 68 d0     cmp   a,#$d0
1902: b0 5f     bcs   $1963
1904: 68 c0     cmp   a,#$c0
1906: 90 5a     bcc   $1962
1908: 28 0f     and   a,#$0f
190a: 64 22     cmp   a,$22
190c: f0 54     beq   $1962
190e: 68 0e     cmp   a,#$0e
1910: b0 2d     bcs   $193f
1912: 68 06     cmp   a,#$06
1914: 90 29     bcc   $193f
1916: 68 08     cmp   a,#$08
1918: f0 25     beq   $193f
191a: 68 0b     cmp   a,#$0b
191c: f0 21     beq   $193f
191e: ec 01 c5  mov   y,$c501
1921: f0 1a     beq   $193d
1923: 68 07     cmp   a,#$07
1925: f0 0e     beq   $1935
1927: 68 0a     cmp   a,#$0a
1929: f0 0a     beq   $1935
192b: 68 0d     cmp   a,#$0d
192d: f0 06     beq   $1935
192f: ad 01     cmp   y,#$01
1931: f0 0c     beq   $193f
1933: 2f 04     bra   $1939
1935: ad 02     cmp   y,#$02
1937: f0 06     beq   $193f
1939: ad 03     cmp   y,#$03
193b: f0 02     beq   $193f
193d: e8 00     mov   a,#$00
193f: c4 22     mov   $22,a
1941: fd        mov   y,a
1942: e8 00     mov   a,#$00
1944: c4 c4     mov   $c4,a
1946: c5 48 04  mov   $0448,a
1949: ad 00     cmp   y,#$00
194b: f0 0d     beq   $195a
194d: d2 07     clr6  $07
194f: f3 01 04  bbc7  $01,$1956
1952: c2 07     set6  $07
1954: f2 01     clr7  $01
1956: eb 01     mov   y,$01
1958: d0 22     bne   $197c
195a: 9c        dec   a
195b: c4 c6     mov   $c6,a
195d: e8 30     mov   a,#$30
195f: 4e 07 00  tclr1 $0007
1962: 6f        ret

1963: 80        setc
1964: a8 d0     sbc   a,#$d0
1966: fd        mov   y,a
1967: 1c        asl   a
1968: 5d        mov   x,a
1969: 1f c5 1a  jmp   ($1ac5+x)

196c: 72 07     clr3  $07
196e: 6f        ret

196f: e2 07     set7  $07
1971: 6f        ret

1972: f2 07     clr7  $07
1974: 6f        ret

1975: c2 07     set6  $07
1977: 6f        ret

1978: d2 07     clr6  $07
197a: 6f        ret

197b: 6f        ret

197c: c4 c6     mov   $c6,a
197e: c4 20     mov   $20,a
1980: dc        dec   y
1981: fc        inc   y
1982: e8 20     mov   a,#$20
1984: cf        mul   ya
1985: 9c        dec   a
1986: 92 07     clr4  $07
1988: a2 07     set5  $07
198a: 5d        mov   x,a
198b: e8 ff     mov   a,#$ff
198d: 2f 0c     bra   $199b
198f: b2 07     clr5  $07
1991: 82 07     set4  $07
1993: fc        inc   y
1994: e8 20     mov   a,#$20
1996: cf        mul   ya
1997: 9c        dec   a
1998: 5d        mov   x,a
1999: e8 00     mov   a,#$00
199b: d8 c4     mov   $c4,x
199d: c5 c3 02  mov   $02c3,a
19a0: 8f 00 c5  mov   $c5,#$00
19a3: 80        setc
19a4: a4 c6     sbc   a,$c6
19a6: 31        tcall 3
19a7: c5 c1 02  mov   $02c1,a
19aa: dd        mov   a,y
19ab: c5 c2 02  mov   $02c2,a
19ae: 6f        ret

19af: cd 18     mov   x,#$18
19b1: e4 01     mov   a,$01
19b3: d0 02     bne   $19b7
19b5: e8 3c     mov   a,#$3c
19b7: 2f 08     bra   $19c1
19b9: cd 10     mov   x,#$10
19bb: e8 00     mov   a,#$00
19bd: 02 ec     set0  $ec
19bf: c4 05     mov   $05,a
19c1: b2 07     clr5  $07
19c3: 82 07     set4  $07
19c5: 2f d4     bra   $199b
19c7: 78 0e 22  cmp   $22,#$0e
19ca: b0 4c     bcs   $1a18
19cc: 78 0b 22  cmp   $22,#$0b
19cf: 90 47     bcc   $1a18
19d1: 61        tcall 6
19d2: 3f 07 1a  call  $1a07
19d5: 71        tcall 7
19d6: 3f 07 1a  call  $1a07
19d9: 81        tcall 8
19da: e5 00 c5  mov   a,$c500
19dd: d0 02     bne   $19e1
19df: e8 80     mov   a,#$80
19e1: c4 05     mov   $05,a
19e3: e8 01     mov   a,#$01
19e5: c4 15     mov   $15,a
19e7: 9c        dec   a
19e8: c4 22     mov   $22,a
19ea: c4 0b     mov   $0b,a
19ec: e8 09     mov   a,#$09
19ee: c4 f2     mov   $f2,a
19f0: eb f3     mov   y,$f3             ; get ENVX
19f2: f0 03     beq   $19f7
19f4: 09 15 0b  or    ($0b),($15)
19f7: 60        clrc
19f8: 88 10     adc   a,#$10
19fa: 0b 15     asl   $15
19fc: 90 f0     bcc   $19ee
19fe: e4 14     mov   a,$14
1a00: 48 ff     eor   a,#$ff
1a02: 24 0b     and   a,$0b
1a04: c5 49 04  mov   $0449,a
1a07: 8d 00     mov   y,#$00
1a09: f7 10     mov   a,($10)+y
1a0b: d7 0e     mov   ($0e)+y,a
1a0d: fc        inc   y
1a0e: 1d        dec   x
1a0f: d0 f8     bne   $1a09
1a11: dd        mov   a,y
1a12: 8d 00     mov   y,#$00
1a14: 7a 0e     addw  ya,$0e
1a16: da 0e     movw  $0e,ya
1a18: 6f        ret

1a19: e4 05     mov   a,$05
1a1b: f0 fb     beq   $1a18
1a1d: 64 01     cmp   a,$01
1a1f: d0 f7     bne   $1a18
1a21: 8d 5c     mov   y,#$5c
1a23: e4 14     mov   a,$14
1a25: 48 ff     eor   a,#$ff
1a27: 11        tcall 1                           ; set KOF
1a28: 4e 19 00  tclr1 $0019
1a2b: 4e 18 00  tclr1 $0018
1a2e: 4e c4 02  tclr1 $02c4
1a31: c4 0a     mov   $0a,a
1a33: 25 c6 02  and   a,$02c6
1a36: 0e 19 00  tset1 $0019
1a39: e4 0a     mov   a,$0a
1a3b: 25 c7 02  and   a,$02c7
1a3e: 0e 18 00  tset1 $0018
1a41: 61        tcall 6
1a42: 3f 88 1a  call  $1a88
1a45: 71        tcall 7
1a46: 3f 88 1a  call  $1a88
1a49: 81        tcall 8
1a4a: 3f 88 1a  call  $1a88
1a4d: cd 00     mov   x,#$00
1a4f: 8f 01 15  mov   $15,#$01
1a52: f5 59 03  mov   a,$0359+x
1a55: d0 17     bne   $1a6e
1a57: f5 21 02  mov   a,$0221+x
1a5a: 51        tcall 5                 ; set sample
1a5b: 7d        mov   a,x
1a5c: 9f        xcn   a
1a5d: 5c        lsr   a
1a5e: 2d        push  a
1a5f: 08 07     or    a,#$07
1a61: fd        mov   y,a
1a62: f4 b1     mov   a,$b1+x
1a64: 11        tcall 1                 ; set GAIN
1a65: 3f 94 07  call  $0794
1a68: ee        pop   y
1a69: e8 00     mov   a,#$00
1a6b: 11        tcall 1                 ; set VOL(L)
1a6c: fc        inc   y
1a6d: 11        tcall 1                 ; set VOL(R)
1a6e: 3d        inc   x
1a6f: 3d        inc   x
1a70: 0b 15     asl   $15
1a72: d0 de     bne   $1a52
1a74: e4 14     mov   a,$14
1a76: 48 ff     eor   a,#$ff
1a78: 25 49 04  and   a,$0449
1a7b: c4 1e     mov   $1e,a
1a7d: e8 00     mov   a,#$00
1a7f: c4 c6     mov   $c6,a
1a81: c4 05     mov   $05,a
1a83: 8d 01     mov   y,#$01
1a85: 5f 81 19  jmp   $1981

1a88: 8d 00     mov   y,#$00
1a8a: f7 0e     mov   a,($0e)+y
1a8c: d7 10     mov   ($10)+y,a
1a8e: fc        inc   y
1a8f: 1d        dec   x
1a90: d0 f8     bne   $1a8a
1a92: dd        mov   a,y
1a93: 8d 00     mov   y,#$00
1a95: 7a 0e     addw  ya,$0e
1a97: da 0e     movw  $0e,ya
1a99: 6f        ret

; tcall 6
1a9a: 8f 4a 0e  mov   $0e,#$4a
1a9d: 8f 04 0f  mov   $0f,#$04
1aa0: 8f 20 10  mov   $10,#$20
1aa3: 8f 00 11  mov   $11,#$00
1aa6: cd a4     mov   x,#$a4
1aa8: 6f        ret

; tcall 7
1aa9: 8f 00 10  mov   $10,#$00
1aac: 8f 01 11  mov   $11,#$01
1aaf: cd c0     mov   x,#$c0
1ab1: 6f        ret

; tcall 8
1ab2: 8f 10 10  mov   $10,#$10
1ab5: 8f 02 11  mov   $11,#$02
1ab8: cd b1     mov   x,#$b1
1aba: 6f        ret

1abb: e8 01     mov   a,#$01
1abd: c5 48 04  mov   $0448,a
1ac0: 6f        ret

1ac1: fa 01 ed  mov   ($ed),($01)
1ac4: 6f        ret

1ac5: dw $1abb  ; 
1ac7: dw $1ac1  ; 
1ac9: dw $197b  ; 
1acb: dw $197b  ; 
1acd: dw $197b  ; 
1acf: dw $197b  ; 
1ad1: dw $197b  ; 
1ad3: dw $197b  ; 
1ad5: dw $197b  ; 
1ad7: dw $197b  ; 
1ad9: dw $197b  ; 
1adb: dw $197b  ; 
1add: dw $197b  ; 
1adf: dw $197b  ; 
1ae1: dw $197b  ; 
1ae3: dw $197b  ; 
1ae5: dw $198f  ; 
1ae7: dw $198f  ; 
1ae9: dw $198f  ; 
1aeb: dw $198f  ; 
1aed: dw $198f  ; 
1aef: dw $198f  ; 
1af1: dw $198f  ; 
1af3: dw $198f  ; 
1af5: dw $1981  ; 
1af7: dw $1981  ; 
1af9: dw $1981  ; 
1afb: dw $1981  ; 
1afd: dw $1981  ; 
1aff: dw $1981  ; 
1b01: dw $1981  ; 
1b03: dw $1981  ; 
1b05: dw $19c7  ; 
1b07: dw $1a19  ; 
1b09: dw $196f  ; 
1b0b: dw $1972  ; 
1b0d: dw $1975  ; 
1b0f: dw $1978  ; 
1b11: dw $18d7  ; 
1b13: dw $19af  ; 
1b15: dw $19b9  ; 
1b17: dw $196c  ; 
1b19: dw $1b59  ; 
1b1b: dw $1b4d  ; 
1b1d: dw $1b4a  ; 
1b1f: dw $1b45  ; 
1b21: dw $1b25  ; 

1b23: 60        clrc
1b24: 06        or    a,(x)
1b25: e8 01     mov   a,#$01
1b27: 3f 35 1b  call  $1b35
1b2a: 8f 81 f1  mov   $f1,#$81
1b2d: 8d 30     mov   y,#$30
1b2f: 3f 3e 1b  call  $1b3e
1b32: 5f c0 ff  jmp   $ffc0

1b35: 8f 5c f2  mov   $f2,#$5c
1b38: 8f ff f3  mov   $f3,#$ff          ; set KOF
1b3b: 5f 92 0c  jmp   $0c92

1b3e: f8 fd     mov   x,$fd
1b40: f0 fc     beq   $1b3e
1b42: fe fa     dbnz  y,$1b3e
1b44: 6f        ret

1b45: e8 05     mov   a,#$05
1b47: 3f 35 1b  call  $1b35
1b4a: 3f d7 18  call  $18d7
1b4d: 8f 00 22  mov   $22,#$00
1b50: e4 14     mov   a,$14
1b52: 48 ff     eor   a,#$ff
1b54: 8f 5c f2  mov   $f2,#$5c
1b57: c4 f3     mov   $f3,a             ; set KOF
1b59: eb 00     mov   y,$00
1b5b: cb f5     mov   $f5,y
1b5d: cb f4     mov   $f4,y
1b5f: 7e f4     cmp   y,$f4
1b61: f0 fc     beq   $1b5f
1b63: e4 f5     mov   a,$f5
1b65: d0 12     bne   $1b79
1b67: e4 f6     mov   a,$f6
1b69: d7 0e     mov   ($0e)+y,a
1b6b: e4 f7     mov   a,$f7
1b6d: cb f4     mov   $f4,y
1b6f: fc        inc   y
1b70: d7 0e     mov   ($0e)+y,a
1b72: fc        inc   y
1b73: d0 ea     bne   $1b5f
1b75: ab 0f     inc   $0f
1b77: 2f e6     bra   $1b5f
1b79: f8 f4     mov   x,$f4
1b7b: ba f6     movw  ya,$f6
1b7d: d8 f4     mov   $f4,x
1b7f: f0 08     beq   $1b89
1b81: da 0e     movw  $0e,ya
1b83: eb f5     mov   y,$f5
1b85: d0 fc     bne   $1b83
1b87: 2f de     bra   $1b67
1b89: e9 f8 ff  mov   x,$fff8
1b8c: f0 09     beq   $1b97
1b8e: c5 f8 ff  mov   $fff8,a
1b91: c4 20     mov   $20,a
1b93: 7d        mov   a,x
1b94: 3f 3f 19  call  $193f
1b97: 8f 31 f1  mov   $f1,#$31
1b9a: e8 00     mov   a,#$00
1b9c: d2 07     clr6  $07
1b9e: c4 ed     mov   $ed,a
1ba0: c4 f5     mov   $f5,a
1ba2: c4 00     mov   $00,a
1ba4: 9c        dec   a
1ba5: c4 39     mov   $39,a
1ba7: 6f        ret

; tcall table
ffc0: dw $0000  ; 0f
ffc2: dw $0000  ; 0e
ffc4: dw $0000  ; 0d
ffc6: dw $0000  ; 0c
ffc8: dw $0000  ; 0b
ffca: dw $1553  ; 0a
ffcc: dw $1558  ; 09
ffce: dw $1ab2  ; 08
fff0: dw $1aa9  ; 07
fff2: dw $1a9a  ; 06
fff4: dw $0b2d  ; 05
fff6: dw $0b2a  ; 04
fff8: dw $0cff  ; 03
fffa: dw $0821  ; 02
fffc: dw $0829  ; 01
fffe: dw $0a52  ; 00
