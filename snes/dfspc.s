0580: 20        clrp
0581: cd ff     mov   x,#$ff
0583: bd        mov   sp,x
0584: c4 f4     mov   $f4,a
0586: c4 f6     mov   $f6,a
0588: e8 00     mov   a,#$00
058a: 5d        mov   x,a
058b: c6        mov   (x),a
058c: 3d        inc   x
058d: c8 f0     cmp   x,#$f0
058f: d0 fa     bne   $058b
0591: 8f 01 09  mov   $09,#$01
0594: fd        mov   y,a
0595: d7 08     mov   ($08)+y,a
0597: fc        inc   y
0598: d0 fb     bne   $0595
059a: ab 09     inc   $09
059c: f8 09     mov   x,$09
059e: c8 05     cmp   x,#$05
05a0: d0 f2     bne   $0594
05a2: d7 08     mov   ($08)+y,a
05a4: fc        inc   y
05a5: ad 80     cmp   y,#$80
05a7: d0 f9     bne   $05a2
05a9: 8f 5d f2  mov   $f2,#$5d
05ac: 8f 30 f3  mov   $f3,#$30          ; set DIR
05af: e8 10     mov   a,#$10
05b1: 8d 27     mov   y,#$27            ; 0x2710 in decimal = 10000
05b3: da 2c     movw  $2c,ya            ; timer frequency dividend
05b5: e8 01     mov   a,#$01
05b7: c4 20     mov   $20,a
05b9: c4 2a     mov   $2a,a
05bb: c4 2b     mov   $2b,a
05bd: c4 1b     mov   $1b,a
05bf: c4 1c     mov   $1c,a
05c1: 8f 80 86  mov   $86,#$80
05c4: 8f 68 87  mov   $87,#$68
05c7: 8f ff 1f  mov   $1f,#$ff
05ca: 3f 75 0d  call  $0d75
05cd: 3f 67 0c  call  $0c67
05d0: e4 fe     mov   a,$fe             ; timer 1 counter
05d2: f0 0a     beq   $05de
05d4: 2d        push  a
05d5: 3f 32 06  call  $0632
05d8: ae        pop   a
05d9: 9c        dec   a
05da: f0 f4     beq   $05d0
05dc: 2f f6     bra   $05d4
05de: e4 ff     mov   a,$ff
05e0: f0 18     beq   $05fa
05e2: 2d        push  a
05e3: 3f ac 10  call  $10ac
05e6: ae        pop   a
05e7: 8d 40     mov   y,#$40
05e9: cf        mul   ya
05ea: 60        clrc
05eb: 84 36     adc   a,$36
05ed: c4 36     mov   $36,a
05ef: 90 df     bcc   $05d0
05f1: 3f 67 06  call  $0667
05f4: 3f 21 0c  call  $0c21
05f7: 3f a9 0d  call  $0da9
05fa: e4 fd     mov   a,$fd
05fc: f0 d2     beq   $05d0
05fe: 3f 03 06  call  $0603
0601: 2f cd     bra   $05d0
0603: e8 00     mov   a,#$00
0605: c4 21     mov   $21,a
0607: c4 23     mov   $23,a
0609: c4 24     mov   $24,a
060b: 5d        mov   x,a
060c: e8 01     mov   a,#$01
060e: c4 22     mov   $22,a
0610: d8 26     mov   $26,x
0612: 24 3b     and   a,$3b
0614: 24 25     and   a,$25
0616: f0 14     beq   $062c
0618: 3f ac 06  call  $06ac
061b: 3f 9c 17  call  $179c
061e: f8 26     mov   x,$26
0620: f5 80 03  mov   a,$0380+x
0623: 28 86     and   a,#$86
0625: 68 86     cmp   a,#$86
0627: d0 03     bne   $062c
0629: 3f be 15  call  $15be
062c: 3f 98 06  call  $0698
062f: 90 df     bcc   $0610
0631: 6f        ret

0632: e4 20     mov   a,$20
0634: 9f        xcn   a
0635: c4 21     mov   $21,a
0637: 1c        asl   a
0638: 1c        asl   a
0639: 5d        mov   x,a
063a: e8 00     mov   a,#$00
063c: c4 23     mov   $23,a
063e: c4 24     mov   $24,a
0640: e8 01     mov   a,#$01
0642: c4 22     mov   $22,a
0644: d8 26     mov   $26,x
0646: eb 21     mov   y,$21
0648: 36 3b 00  and   a,$003b+y
064b: f0 14     beq   $0661
064d: 3f ac 06  call  $06ac
0650: 3f 9c 17  call  $179c
0653: f8 26     mov   x,$26
0655: f5 80 03  mov   a,$0380+x
0658: 28 86     and   a,#$86
065a: 68 86     cmp   a,#$86
065c: d0 03     bne   $0661
065e: 3f be 15  call  $15be
0661: 3f 98 06  call  $0698
0664: 90 de     bcc   $0644
0666: 6f        ret

0667: e8 00     mov   a,#$00
0669: c4 21     mov   $21,a
066b: c4 23     mov   $23,a
066d: c4 24     mov   $24,a
066f: 5d        mov   x,a
0670: e8 01     mov   a,#$01
0672: c4 22     mov   $22,a
0674: d8 26     mov   $26,x
0676: 24 3b     and   a,$3b
0678: f0 18     beq   $0692
067a: 24 25     and   a,$25
067c: d0 14     bne   $0692
067e: 3f ac 06  call  $06ac
0681: 3f 9c 17  call  $179c
0684: f8 26     mov   x,$26
0686: f5 80 03  mov   a,$0380+x
0689: 28 86     and   a,#$86
068b: 68 86     cmp   a,#$86
068d: d0 03     bne   $0692
068f: 3f be 15  call  $15be
0692: 3f 98 06  call  $0698
0695: 90 dd     bcc   $0674
0697: 6f        ret

0698: e4 23     mov   a,$23
069a: 60        clrc
069b: 88 10     adc   a,#$10
069d: c4 23     mov   $23,a
069f: e4 26     mov   a,$26
06a1: 60        clrc
06a2: 88 08     adc   a,#$08
06a4: 5d        mov   x,a
06a5: ab 24     inc   $24
06a7: 0b 22     asl   $22
06a9: e4 22     mov   a,$22
06ab: 6f        ret

06ac: f4 70     mov   a,$70+x
06ae: d0 2c     bne   $06dc             ; skip if wait counter != 0
06b0: f4 72     mov   a,$72+x
06b2: c4 0c     mov   $0c,a
06b4: f4 73     mov   a,$73+x
06b6: c4 0d     mov   $0d,a             ; set voice ptr into $0c/d
06b8: 8d 00     mov   y,#$00
06ba: f7 0c     mov   a,($0c)+y         ; get vcmd
06bc: c4 02     mov   $02,a             ; save it into $02
06be: 3a 0c     incw  $0c
06c0: 68 d0     cmp   a,#$d0
06c2: b0 05     bcs   $06c9
06c4: 9f        xcn   a
06c5: 28 0f     and   a,#$0f
06c7: 2f 03     bra   $06cc
; dispatch vcmd
06c9: 80        setc
06ca: a8 c3     sbc   a,#$c3
06cc: 1c        asl   a
06cd: 5d        mov   x,a
06ce: 1f f3 06  jmp   ($06f3+x)

06d1: f8 26     mov   x,$26
06d3: ba 0c     movw  ya,$0c
06d5: d4 72     mov   $72+x,a
06d7: dd        mov   a,y
06d8: d4 73     mov   $73+x,a           ; update voice ptr by $0c/d
06da: f4 70     mov   a,$70+x
06dc: 9c        dec   a
06dd: d4 70     mov   $70+x,a           ; decrease wait counter
06df: f4 71     mov   a,$71+x
06e1: f0 0f     beq   $06f2
06e3: 9c        dec   a
06e4: d4 71     mov   $71+x,a
06e6: d0 0a     bne   $06f2
06e8: f5 00 03  mov   a,$0300+x
06eb: 28 f0     and   a,#$f0
06ed: 08 01     or    a,#$01
06ef: d5 00 03  mov   $0300+x,a
06f2: 6f        ret

; vcmd dispatch table
06f3: dw $0765  ; 00-0f
06f5: dw $0765  ; 10-1f
06f7: dw $0765  ; 20-2f
06f9: dw $0765  ; 30-3f
06fb: dw $0765  ; 40-4f
06fd: dw $079c  ; 50-5f
06ff: dw $079c  ; 60-6f
0701: dw $07a6  ; 70-7f
0703: dw $07b6  ; 80-8f
0705: dw $07bc  ; 90-9f
0707: dw $07c2  ; a0-af
0709: dw $07c9  ; b0-bf
070b: dw $07cf  ; c0-cf
070d: dw $0806  ; d0
070f: dw $0833  ; d1
0711: dw $083e  ; d2
0713: dw $0850  ; d3
0715: dw $0862  ; d4
0717: dw $0874  ; d5
0719: dw $0896  ; d6
071b: dw $08b8  ; d7
071d: dw $08da  ; d8
071f: dw $08fd  ; d9
0721: dw $090b  ; da
0723: dw $0920  ; db
0725: dw $0935  ; dc
0727: dw $0941  ; dd
0729: dw $0947  ; de
072b: dw $0957  ; df
072d: dw $0961  ; e0
072f: dw $097f  ; e1
0731: dw $0990  ; e2
0733: dw $09c9  ; e3
0735: dw $09d2  ; e4
0737: dw $09d8  ; e5
0739: dw $09e1  ; e6
073b: dw $09e9  ; e7
073d: dw $09f8  ; e8
073f: dw $0a04  ; e9
0741: dw $0a10  ; ea
0743: dw $0a20  ; eb
0745: dw $0a5c  ; ec
0747: dw $0ab1  ; ed
0749: dw $0aef  ; ee
074b: dw $0b03  ; ef
074d: dw $0b0f  ; f0
074f: dw $0b31  ; f1
0751: dw $0b37  ; f2
0753: dw $0b62  ; f3
0755: dw $0b75  ; f4
0757: dw $0b82  ; f5
0759: dw $0b93  ; f6
075b: dw $0bb3  ; f7
075d: dw $0bb8  ; f8
075f: dw $0bd7  ; f9
0761: dw $0bf8  ; fa
0763: dw $0c09  ; fb

; vcmd 00-4f
0765: f8 26     mov   x,$26
0767: f5 01 04  mov   a,$0401+x
076a: c4 03     mov   $03,a
076c: e4 02     mov   a,$02
076e: d5 01 04  mov   $0401+x,a
0771: f5 82 04  mov   a,$0482+x
0774: f0 23     beq   $0799
0776: e4 03     mov   a,$03
0778: 80        setc
0779: a4 02     sbc   a,$02
077b: 8d 10     mov   y,#$10
077d: cf        mul   ya
077e: da 02     movw  $02,ya
0780: ad 05     cmp   y,#$05
0782: 90 05     bcc   $0789
0784: dd        mov   a,y
0785: 08 f0     or    a,#$f0
0787: c4 03     mov   $03,a
0789: f5 07 04  mov   a,$0407+x
078c: fd        mov   y,a
078d: f5 06 04  mov   a,$0406+x
0790: 7a 02     addw  ya,$02
0792: d5 06 04  mov   $0406+x,a
0795: dd        mov   a,y
0796: d5 07 04  mov   $0407+x,a
0799: 5f b8 06  jmp   $06b8

; vcmd 50-6f
079c: f8 26     mov   x,$26
079e: e4 02     mov   a,$02
07a0: d5 01 04  mov   $0401+x,a
07a3: 5f b8 06  jmp   $06b8

; vcmd 70-7f
07a6: e4 02     mov   a,$02
07a8: 28 0f     and   a,#$0f
07aa: fd        mov   y,a
07ab: f6 83 19  mov   a,$1983+y
07ae: f8 26     mov   x,$26
07b0: d5 07 03  mov   $0307+x,a
07b3: 5f b8 06  jmp   $06b8

; vcmd 80-8f
07b6: 3f f5 07  call  $07f5
07b9: 5f d1 06  jmp   $06d1

; vcmd 90-9f
07bc: 3f f5 07  call  $07f5
07bf: 5c        lsr   a
07c0: 2f 11     bra   $07d3

; vcmd a0-af
07c2: 3f f5 07  call  $07f5
07c5: 9c        dec   a
07c6: 9c        dec   a
07c7: 2f 0a     bra   $07d3

; vcmd b0-bf
07c9: 3f f5 07  call  $07f5
07cc: 9c        dec   a
07cd: 2f 04     bra   $07d3

; vcmd c0-cf
07cf: 3f f5 07  call  $07f5
07d2: bc        inc   a
07d3: d4 71     mov   $71+x,a
07d5: e4 03     mov   a,$03
07d7: d0 19     bne   $07f2
07d9: f5 01 04  mov   a,$0401+x
07dc: 68 50     cmp   a,#$50
07de: 90 0a     bcc   $07ea
07e0: 68 70     cmp   a,#$70
07e2: b0 06     bcs   $07ea
07e4: 3f 19 10  call  $1019
07e7: 5f d1 06  jmp   $06d1

07ea: f5 00 03  mov   a,$0300+x
07ed: 08 03     or    a,#$03
07ef: d5 00 03  mov   $0300+x,a
07f2: 5f d1 06  jmp   $06d1

07f5: f8 26     mov   x,$26
07f7: f4 71     mov   a,$71+x
07f9: c4 03     mov   $03,a
07fb: e4 02     mov   a,$02
07fd: 28 0f     and   a,#$0f
07ff: fd        mov   y,a
0800: f6 93 19  mov   a,$1993+y
0803: d4 70     mov   $70+x,a
0805: 6f        ret

; vcmd d0
0806: 3f eb 0e  call  $0eeb
0809: e8 ff     mov   a,#$ff
080b: 80        setc
080c: a4 22     sbc   a,$22
080e: f8 21     mov   x,$21
0810: 34 3b     and   a,$3b+x
0812: d4 3b     mov   $3b+x,a
0814: c8 00     cmp   x,#$00
0816: d0 1a     bne   $0832
0818: e4 20     mov   a,$20
081a: 9f        xcn   a
081b: 1c        asl   a
081c: 1c        asl   a
081d: 60        clrc
081e: 84 26     adc   a,$26
0820: 5d        mov   x,a
0821: f5 06 05  mov   a,$0506+x
0824: 28 1f     and   a,#$1f
0826: 68 06     cmp   a,#$06
0828: b0 08     bcs   $0832
082a: f5 00 03  mov   a,$0300+x
082d: 08 01     or    a,#$01
082f: d5 00 03  mov   $0300+x,a
0832: 6f        ret

; vcmd d1
0833: f8 26     mov   x,$26
0835: f7 0c     mov   a,($0c)+y
0837: 3a 0c     incw  $0c
0839: d4 70     mov   $70+x,a
083b: 5f d1 06  jmp   $06d1

; vcmd d2
083e: f8 26     mov   x,$26
0840: ba 0c     movw  ya,$0c
0842: d5 00 01  mov   $0100+x,a
0845: dd        mov   a,y
0846: d5 01 01  mov   $0101+x,a
0849: e8 00     mov   a,#$00
084b: d4 74     mov   $74+x,a
084d: 5f b8 06  jmp   $06b8

; vcmd d3
0850: f8 26     mov   x,$26
0852: ba 0c     movw  ya,$0c
0854: d5 02 01  mov   $0102+x,a
0857: dd        mov   a,y
0858: d5 03 01  mov   $0103+x,a
085b: e8 00     mov   a,#$00
085d: d4 75     mov   $75+x,a
085f: 5f b8 06  jmp   $06b8

; vcmd d4
0862: f8 26     mov   x,$26
0864: ba 0c     movw  ya,$0c
0866: d5 04 01  mov   $0104+x,a
0869: dd        mov   a,y
086a: d5 05 01  mov   $0105+x,a
086d: e8 00     mov   a,#$00
086f: d4 76     mov   $76+x,a
0871: 5f b8 06  jmp   $06b8

; vcmd d5
0874: f8 26     mov   x,$26
0876: f7 0c     mov   a,($0c)+y
0878: f0 10     beq   $088a
087a: c4 02     mov   $02,a
087c: f4 74     mov   a,$74+x
087e: bc        inc   a
087f: d4 74     mov   $74+x,a
0881: 64 02     cmp   a,$02
0883: d0 05     bne   $088a
0885: 3a 0c     incw  $0c
0887: 5f b8 06  jmp   $06b8

088a: f5 01 01  mov   a,$0101+x
088d: fd        mov   y,a
088e: f5 00 01  mov   a,$0100+x
0891: da 0c     movw  $0c,ya
0893: 5f b8 06  jmp   $06b8

; vcmd d6
0896: f8 26     mov   x,$26
0898: f7 0c     mov   a,($0c)+y
089a: f0 10     beq   $08ac
089c: c4 02     mov   $02,a
089e: f4 75     mov   a,$75+x
08a0: bc        inc   a
08a1: d4 75     mov   $75+x,a
08a3: 64 02     cmp   a,$02
08a5: d0 05     bne   $08ac
08a7: 3a 0c     incw  $0c
08a9: 5f b8 06  jmp   $06b8

08ac: f5 03 01  mov   a,$0103+x
08af: fd        mov   y,a
08b0: f5 02 01  mov   a,$0102+x
08b3: da 0c     movw  $0c,ya
08b5: 5f b8 06  jmp   $06b8

; vcmd d7
08b8: f8 26     mov   x,$26
08ba: f7 0c     mov   a,($0c)+y
08bc: f0 10     beq   $08ce
08be: c4 02     mov   $02,a
08c0: f4 76     mov   a,$76+x
08c2: bc        inc   a
08c3: d4 76     mov   $76+x,a
08c5: 64 02     cmp   a,$02
08c7: d0 05     bne   $08ce
08c9: 3a 0c     incw  $0c
08cb: 5f b8 06  jmp   $06b8

08ce: f5 05 01  mov   a,$0105+x
08d1: fd        mov   y,a
08d2: f5 04 01  mov   a,$0104+x
08d5: da 0c     movw  $0c,ya
08d7: 5f b8 06  jmp   $06b8

; vcmd d8
08da: f8 26     mov   x,$26
08dc: ba 0c     movw  ya,$0c
08de: da 08     movw  $08,ya
08e0: 3a 0c     incw  $0c
08e2: 3a 0c     incw  $0c
08e4: ba 0c     movw  ya,$0c
08e6: d5 06 01  mov   $0106+x,a
08e9: dd        mov   a,y
08ea: d5 07 01  mov   $0107+x,a
08ed: 8d 01     mov   y,#$01
08ef: f7 08     mov   a,($08)+y
08f1: 2d        push  a
08f2: dc        dec   y
08f3: f7 08     mov   a,($08)+y
08f5: ee        pop   y
08f6: 7a 08     addw  ya,$08
08f8: da 0c     movw  $0c,ya
08fa: 5f b8 06  jmp   $06b8

; vcmd d9
08fd: f8 26     mov   x,$26
08ff: f5 07 01  mov   a,$0107+x
0902: fd        mov   y,a
0903: f5 06 01  mov   a,$0106+x
0906: da 0c     movw  $0c,ya
0908: 5f b8 06  jmp   $06b8

; vcmd da
090b: f8 21     mov   x,$21
090d: f7 0c     mov   a,($0c)+y
090f: d4 47     mov   $47+x,a
0911: 3a 0c     incw  $0c
0913: f7 0c     mov   a,($0c)+y
0915: d4 48     mov   $48+x,a
0917: 3a 0c     incw  $0c
0919: e8 80     mov   a,#$80
091b: d4 46     mov   $46+x,a
091d: 5f b8 06  jmp   $06b8

; vcmd db
0920: f8 21     mov   x,$21
0922: f7 0c     mov   a,($0c)+y
0924: d4 3f     mov   $3f+x,a
0926: 3a 0c     incw  $0c
0928: f7 0c     mov   a,($0c)+y
092a: d4 40     mov   $40+x,a
092c: 3a 0c     incw  $0c
092e: e8 80     mov   a,#$80
0930: d4 3e     mov   $3e+x,a
0932: 5f b8 06  jmp   $06b8

; vcmd dc
0935: f8 26     mov   x,$26
0937: f7 0c     mov   a,($0c)+y
0939: 3a 0c     incw  $0c
093b: d5 06 03  mov   $0306+x,a
093e: 5f b8 06  jmp   $06b8

; vcmd dd
0941: f8 26     mov   x,$26
0943: f7 0c     mov   a,($0c)+y
0945: 2f 08     bra   $094f

; vcmd de
0947: f8 26     mov   x,$26
0949: f7 0c     mov   a,($0c)+y
094b: 60        clrc
094c: 95 07 03  adc   a,$0307+x
094f: d5 07 03  mov   $0307+x,a
0952: 3a 0c     incw  $0c
0954: 5f b8 06  jmp   $06b8

; vcmd df
0957: f8 26     mov   x,$26
0959: f7 0c     mov   a,($0c)+y
095b: d5 06 02  mov   $0206+x,a
095e: dd        mov   a,y
095f: 2f 16     bra   $0977

; vcmd e0
0961: f8 26     mov   x,$26
0963: dd        mov   a,y
0964: d5 82 03  mov   $0382+x,a
0967: d5 83 03  mov   $0383+x,a
096a: f7 0c     mov   a,($0c)+y
096c: c4 02     mov   $02,a
096e: 3a 0c     incw  $0c
0970: f7 0c     mov   a,($0c)+y
0972: d5 81 03  mov   $0381+x,a
0975: e4 02     mov   a,$02
0977: d5 80 03  mov   $0380+x,a
097a: 3a 0c     incw  $0c
097c: 5f b8 06  jmp   $06b8

; vcmd e1
097f: f8 26     mov   x,$26
0981: f5 00 03  mov   a,$0300+x
0984: 28 cf     and   a,#$cf
0986: 17 0c     or    a,($0c)+y
0988: d5 00 03  mov   $0300+x,a
098b: 3a 0c     incw  $0c
098d: 5f b8 06  jmp   $06b8

; vcmd e2
0990: f8 26     mov   x,$26
0992: f7 0c     mov   a,($0c)+y
0994: c4 02     mov   $02,a
0996: 3a 0c     incw  $0c
0998: dd        mov   a,y
0999: 80        setc
099a: a4 02     sbc   a,$02
099c: d5 03 03  mov   $0303+x,a
099f: f7 0c     mov   a,($0c)+y
09a1: 3a 0c     incw  $0c
09a3: 5d        mov   x,a
09a4: e4 02     mov   a,$02
09a6: 9e        div   ya,x
09a7: c4 02     mov   $02,a
09a9: e8 00     mov   a,#$00
09ab: 9e        div   ya,x
09ac: f8 26     mov   x,$26
09ae: d5 05 03  mov   $0305+x,a
09b1: e4 02     mov   a,$02
09b3: d5 04 03  mov   $0304+x,a
09b6: f5 00 03  mov   a,$0300+x
09b9: 08 c0     or    a,#$c0
09bb: d5 00 03  mov   $0300+x,a
09be: e8 ff     mov   a,#$ff
09c0: d5 01 03  mov   $0301+x,a
09c3: d5 02 03  mov   $0302+x,a
09c6: 5f b8 06  jmp   $06b8

; vcmd e3
09c9: f8 26     mov   x,$26
09cb: f5 00 03  mov   a,$0300+x
09ce: 28 3f     and   a,#$3f
09d0: 2f e9     bra   $09bb

; vcmd e4
09d2: f7 0c     mov   a,($0c)+y
09d4: 3a 0c     incw  $0c
09d6: 2f 01     bra   $09d9

; vcmd e5
09d8: dd        mov   a,y
09d9: f8 26     mov   x,$26
09db: d5 02 04  mov   $0402+x,a
09de: 5f b8 06  jmp   $06b8

; vcmd e6
09e1: f8 26     mov   x,$26
09e3: f7 0c     mov   a,($0c)+y
09e5: 3a 0c     incw  $0c
09e7: 2f 09     bra   $09f2

; vcmd e7
09e9: f8 26     mov   x,$26
09eb: dd        mov   a,y
09ec: d5 06 04  mov   $0406+x,a
09ef: d5 07 04  mov   $0407+x,a
09f2: d5 82 04  mov   $0482+x,a
09f5: 5f b8 06  jmp   $06b8

; vcmd e8
09f8: f8 26     mov   x,$26
09fa: f7 0c     mov   a,($0c)+y
09fc: d5 00 04  mov   $0400+x,a
09ff: 3a 0c     incw  $0c
0a01: 5f b8 06  jmp   $06b8

; vcmd e9
0a04: f8 26     mov   x,$26
0a06: f7 0c     mov   a,($0c)+y
0a08: d5 83 02  mov   $0283+x,a
0a0b: 3a 0c     incw  $0c
0a0d: 5f b8 06  jmp   $06b8

; vcmd ea
0a10: f8 26     mov   x,$26
0a12: f7 0c     mov   a,($0c)+y
0a14: d4 70     mov   $70+x,a
0a16: 2d        push  a
0a17: 3a 0c     incw  $0c
0a19: f7 0c     mov   a,($0c)+y
0a1b: d5 05 04  mov   $0405+x,a
0a1e: 2f 2f     bra   $0a4f

; vcmd eb
0a20: f8 26     mov   x,$26
0a22: f4 71     mov   a,$71+x
0a24: c4 03     mov   $03,a
0a26: f7 0c     mov   a,($0c)+y
0a28: d4 70     mov   $70+x,a
0a2a: 2d        push  a
0a2b: 3a 0c     incw  $0c
0a2d: f7 0c     mov   a,($0c)+y
0a2f: d4 71     mov   $71+x,a
0a31: e4 03     mov   a,$03
0a33: d0 1a     bne   $0a4f
0a35: f5 01 04  mov   a,$0401+x
0a38: 68 50     cmp   a,#$50
0a3a: 90 0b     bcc   $0a47
0a3c: 68 70     cmp   a,#$70
0a3e: b0 07     bcs   $0a47
0a40: 3f 19 10  call  $1019
0a43: f8 26     mov   x,$26
0a45: 2f 08     bra   $0a4f
0a47: f5 00 03  mov   a,$0300+x
0a4a: 08 03     or    a,#$03
0a4c: d5 00 03  mov   $0300+x,a
0a4f: 3a 0c     incw  $0c
0a51: ae        pop   a
0a52: 68 00     cmp   a,#$00
0a54: f0 03     beq   $0a59
0a56: 5f d1 06  jmp   $06d1

0a59: 5f b8 06  jmp   $06b8

; vcmd ec
0a5c: f8 26     mov   x,$26
0a5e: f7 0c     mov   a,($0c)+y
0a60: 3a 0c     incw  $0c
0a62: fd        mov   y,a
0a63: f6 ff 1a  mov   a,$1aff+y
0a66: 1c        asl   a
0a67: 1c        asl   a
0a68: fd        mov   y,a
0a69: c4 02     mov   $02,a
0a6b: f6 7f 1b  mov   a,$1b7f+y
0a6e: 3f bd 0a  call  $0abd
0a71: eb 02     mov   y,$02
0a73: f6 80 1b  mov   a,$1b80+y
0a76: f0 19     beq   $0a91
0a78: 9c        dec   a
0a79: 8d 03     mov   y,#$03
0a7b: cf        mul   ya
0a7c: fd        mov   y,a
0a7d: f6 1b 1c  mov   a,$1c1b+y
0a80: d5 05 05  mov   $0505+x,a
0a83: f6 1c 1c  mov   a,$1c1c+y
0a86: d5 06 05  mov   $0506+x,a
0a89: f6 1d 1c  mov   a,$1c1d+y
0a8c: d5 07 05  mov   $0507+x,a
0a8f: eb 02     mov   y,$02
0a91: f6 81 1b  mov   a,$1b81+y
0a94: 3f c4 0b  call  $0bc4
0a97: eb 02     mov   y,$02
0a99: f6 82 1b  mov   a,$1b82+y
0a9c: 1c        asl   a
0a9d: 1c        asl   a
0a9e: fd        mov   y,a
0a9f: 8f 04 02  mov   $02,#$04
0aa2: f6 30 1c  mov   a,$1c30+y
0aa5: d5 80 02  mov   $0280+x,a
0aa8: fc        inc   y
0aa9: 3d        inc   x
0aaa: 8b 02     dec   $02
0aac: d0 f4     bne   $0aa2
0aae: 5f b8 06  jmp   $06b8

; vcmd ed
0ab1: f8 26     mov   x,$26
0ab3: f7 0c     mov   a,($0c)+y
0ab5: 3a 0c     incw  $0c
0ab7: 3f bd 0a  call  $0abd
0aba: 5f b8 06  jmp   $06b8

0abd: 8d 06     mov   y,#$06
0abf: cf        mul   ya
0ac0: da 08     movw  $08,ya
0ac2: 60        clrc
0ac3: 98 5d 08  adc   $08,#$5d
0ac6: 98 1a 09  adc   $09,#$1a
0ac9: 8d 00     mov   y,#$00
0acb: f7 08     mov   a,($08)+y
0acd: d5 04 05  mov   $0504+x,a
0ad0: fc        inc   y
0ad1: f7 08     mov   a,($08)+y
0ad3: d5 05 05  mov   $0505+x,a
0ad6: fc        inc   y
0ad7: f7 08     mov   a,($08)+y
0ad9: d5 06 05  mov   $0506+x,a
0adc: fc        inc   y
0add: f7 08     mov   a,($08)+y
0adf: d5 07 05  mov   $0507+x,a
0ae2: fc        inc   y
0ae3: f7 08     mov   a,($08)+y
0ae5: d5 81 04  mov   $0481+x,a
0ae8: fc        inc   y
0ae9: f7 08     mov   a,($08)+y
0aeb: d5 80 04  mov   $0480+x,a
0aee: 6f        ret

; vcmd ee
0aef: f8 26     mov   x,$26
0af1: e8 90     mov   a,#$90
0af3: d5 01 04  mov   $0401+x,a
0af6: f7 0c     mov   a,($0c)+y
0af8: c4 02     mov   $02,a
0afa: 3a 0c     incw  $0c
0afc: f7 0c     mov   a,($0c)+y
0afe: fd        mov   y,a
0aff: e4 02     mov   a,$02
0b01: 2f 22     bra   $0b25

; vcmd ef
0b03: f7 0c     mov   a,($0c)+y
0b05: c4 08     mov   $08,a
0b07: 3a 0c     incw  $0c
0b09: f7 0c     mov   a,($0c)+y
0b0b: c4 09     mov   $09,a
0b0d: 2f 0b     bra   $0b1a

; vcmd f0
0b0f: cb 09     mov   $09,y
0b11: f7 0c     mov   a,($0c)+y
0b13: c4 08     mov   $08,a
0b15: 10 03     bpl   $0b1a
0b17: 8f ff 09  mov   $09,#$ff
0b1a: f8 26     mov   x,$26
0b1c: f5 07 04  mov   a,$0407+x
0b1f: fd        mov   y,a
0b20: f5 06 04  mov   a,$0406+x
0b23: 7a 08     addw  ya,$08
0b25: d5 06 04  mov   $0406+x,a
0b28: dd        mov   a,y
0b29: d5 07 04  mov   $0407+x,a
0b2c: 3a 0c     incw  $0c
0b2e: 5f b8 06  jmp   $06b8

; vcmd f1
0b31: f8 26     mov   x,$26
0b33: f7 0c     mov   a,($0c)+y
0b35: 2f 0f     bra   $0b46

; vcmd f2
0b37: f8 26     mov   x,$26
0b39: f5 01 04  mov   a,$0401+x
0b3c: 80        setc
0b3d: a8 70     sbc   a,#$70
0b3f: c4 02     mov   $02,a
0b41: f7 0c     mov   a,($0c)+y
0b43: 60        clrc
0b44: 84 02     adc   a,$02
0b46: 28 1f     and   a,#$1f
0b48: 60        clrc
0b49: 88 70     adc   a,#$70
0b4b: d5 01 04  mov   $0401+x,a
0b4e: 3a 0c     incw  $0c
0b50: e8 ff     mov   a,#$ff
0b52: d5 05 05  mov   $0505+x,a
0b55: e8 e0     mov   a,#$e0
0b57: d5 06 05  mov   $0506+x,a
0b5a: e8 9f     mov   a,#$9f
0b5c: d5 07 05  mov   $0507+x,a
0b5f: 5f b8 06  jmp   $06b8

; vcmd f3
0b62: f8 26     mov   x,$26
0b64: f7 0c     mov   a,($0c)+y
0b66: d5 03 02  mov   $0203+x,a
0b69: 3a 0c     incw  $0c
0b6b: f7 0c     mov   a,($0c)+y
0b6d: d5 02 02  mov   $0202+x,a
0b70: 3a 0c     incw  $0c
0b72: 5f b8 06  jmp   $06b8

; vcmd f4
0b75: e8 04     mov   a,#$04
0b77: f8 26     mov   x,$26
0b79: 15 00 03  or    a,$0300+x
0b7c: d5 00 03  mov   $0300+x,a
0b7f: 5f b8 06  jmp   $06b8

; vcmd f5
0b82: e8 08     mov   a,#$08
0b84: f8 26     mov   x,$26
0b86: 15 00 03  or    a,$0300+x
0b89: d5 00 03  mov   $0300+x,a
0b8c: e8 01     mov   a,#$01
0b8e: d4 70     mov   $70+x,a
0b90: 5f d1 06  jmp   $06d1

; vcmd f6
0b93: f7 0c     mov   a,($0c)+y
0b95: c4 02     mov   $02,a
0b97: 28 0f     and   a,#$0f
0b99: c4 17     mov   $17,a
0b9b: e4 02     mov   a,$02
0b9d: 9f        xcn   a
0b9e: 28 0f     and   a,#$0f
0ba0: c4 1a     mov   $1a,a
0ba2: 3a 0c     incw  $0c
0ba4: f7 0c     mov   a,($0c)+y
0ba6: c4 18     mov   $18,a
0ba8: 3a 0c     incw  $0c
0baa: f7 0c     mov   a,($0c)+y
0bac: c4 19     mov   $19,a
0bae: 3a 0c     incw  $0c
0bb0: 5f b8 06  jmp   $06b8

; vcmd f7
0bb3: cd 40     mov   x,#$40
0bb5: 5f 22 09  jmp   $0922

; vcmd f8
0bb8: f8 26     mov   x,$26
0bba: f7 0c     mov   a,($0c)+y
0bbc: 3a 0c     incw  $0c
0bbe: 3f c4 0b  call  $0bc4
0bc1: 5f b8 06  jmp   $06b8

0bc4: fd        mov   y,a
0bc5: f6 76 19  mov   a,$1976+y
0bc8: d5 83 04  mov   $0483+x,a
0bcb: e8 00     mov   a,#$00
0bcd: d5 84 04  mov   $0484+x,a
0bd0: d5 85 04  mov   $0485+x,a
0bd3: d5 04 04  mov   $0404+x,a
0bd6: 6f        ret

; vcmd f9
0bd7: f8 26     mov   x,$26
0bd9: f7 0c     mov   a,($0c)+y
0bdb: d5 80 02  mov   $0280+x,a
0bde: 3a 0c     incw  $0c
0be0: f7 0c     mov   a,($0c)+y
0be2: d5 81 02  mov   $0281+x,a
0be5: 3a 0c     incw  $0c
0be7: f7 0c     mov   a,($0c)+y
0be9: d5 82 02  mov   $0282+x,a
0bec: 3a 0c     incw  $0c
0bee: f7 0c     mov   a,($0c)+y
0bf0: d5 83 02  mov   $0283+x,a
0bf3: 3a 0c     incw  $0c
0bf5: 5f b8 06  jmp   $06b8

; vcmd fa
0bf8: f8 26     mov   x,$26
0bfa: f7 0c     mov   a,($0c)+y
0bfc: c4 02     mov   $02,a
0bfe: fc        inc   y
0bff: f7 0c     mov   a,($0c)+y
0c01: fd        mov   y,a
0c02: e4 02     mov   a,$02
0c04: da 0c     movw  $0c,ya
0c06: 5f b8 06  jmp   $06b8

; vcmd fb
0c09: f8 26     mov   x,$26
0c0b: f7 0c     mov   a,($0c)+y
0c0d: 3a 0c     incw  $0c
0c0f: 8d 06     mov   y,#$06
0c11: cf        mul   ya
0c12: da 08     movw  $08,ya
0c14: 60        clrc
0c15: 98 44 08  adc   $08,#$44
0c18: 98 1c 09  adc   $09,#$1c
0c1b: 3f c9 0a  call  $0ac9
0c1e: 5f b8 06  jmp   $06b8

0c21: 8f 02 23  mov   $23,#$02
0c24: cd 00     mov   x,#$00
0c26: 8f 00 21  mov   $21,#$00
0c29: 8f 01 22  mov   $22,#$01
0c2c: d8 26     mov   $26,x
0c2e: eb 21     mov   y,$21
0c30: f6 3b 00  mov   a,$003b+y
0c33: 24 22     and   a,$22
0c35: f0 17     beq   $0c4e
0c37: 3f 37 13  call  $1337
0c3a: 3f 18 15  call  $1518
0c3d: 3f 74 15  call  $1574
0c40: f8 26     mov   x,$26
0c42: f5 80 03  mov   a,$0380+x
0c45: 28 86     and   a,#$86
0c47: 68 86     cmp   a,#$86
0c49: f0 03     beq   $0c4e
0c4b: 3f be 15  call  $15be
0c4e: e4 26     mov   a,$26
0c50: 60        clrc
0c51: 88 08     adc   a,#$08
0c53: 5d        mov   x,a
0c54: 0b 22     asl   $22
0c56: 90 d4     bcc   $0c2c
0c58: e4 20     mov   a,$20
0c5a: 9f        xcn   a
0c5b: c4 21     mov   $21,a
0c5d: 1c        asl   a
0c5e: 1c        asl   a
0c5f: 5d        mov   x,a
0c60: 8b 23     dec   $23
0c62: d0 c5     bne   $0c29
0c64: 3f d5 0c  call  $0cd5
0c67: e4 17     mov   a,$17
0c69: 64 1c     cmp   a,$1c
0c6b: f0 4a     beq   $0cb7
0c6d: c4 1c     mov   $1c,a
0c6f: 8f 7d f2  mov   $f2,#$7d
0c72: e4 f3     mov   a,$f3             ; set EDL
0c74: 64 1c     cmp   a,$1c
0c76: f0 32     beq   $0caa
0c78: 28 0f     and   a,#$0f
0c7a: 48 ff     eor   a,#$ff
0c7c: f3 1d 03  bbc7  $1d,$0c82
0c7f: 60        clrc
0c80: 84 1d     adc   a,$1d
0c82: c4 1d     mov   $1d,a
0c84: e8 00     mov   a,#$00
0c86: 8f 2c f2  mov   $f2,#$2c
0c89: c4 f3     mov   $f3,a             ; set EVOL(L)
0c8b: 8f 3c f2  mov   $f2,#$3c
0c8e: c4 f3     mov   $f3,a             ; set EVOL(R)
0c90: 8f 0d f2  mov   $f2,#$0d
0c93: c4 f3     mov   $f3,a             ; set EFB
0c95: 8f 4d f2  mov   $f2,#$4d
0c98: c4 f3     mov   $f3,a             ; set EON
0c9a: e4 16     mov   a,$16
0c9c: 08 20     or    a,#$20
0c9e: 8f 6c f2  mov   $f2,#$6c
0ca1: c4 f3     mov   $f3,a             ; set FLG
0ca3: 8f 7d f2  mov   $f2,#$7d
0ca6: e4 1c     mov   a,$1c
0ca8: c4 f3     mov   $f3,a             ; set EDL
0caa: 1c        asl   a
0cab: 1c        asl   a
0cac: 1c        asl   a
0cad: 48 ff     eor   a,#$ff
0caf: 80        setc
0cb0: 88 ff     adc   a,#$ff
0cb2: 8f 6d f2  mov   $f2,#$6d
0cb5: c4 f3     mov   $f3,a             ; set ESA
0cb7: e4 1a     mov   a,$1a
0cb9: 64 1b     cmp   a,$1b
0cbb: f0 17     beq   $0cd4
0cbd: c4 1b     mov   $1b,a
0cbf: 1c        asl   a
0cc0: 1c        asl   a
0cc1: 1c        asl   a
0cc2: fd        mov   y,a
0cc3: cd 0f     mov   x,#$0f
0cc5: d8 f2     mov   $f2,x
0cc7: f6 56 19  mov   a,$1956+y
0cca: c4 f3     mov   $f3,a             ; set FIR C0-C7
0ccc: fc        inc   y
0ccd: 7d        mov   a,x
0cce: 60        clrc
0ccf: 88 10     adc   a,#$10
0cd1: 5d        mov   x,a
0cd2: 10 f1     bpl   $0cc5
0cd4: 6f        ret

0cd5: e4 37     mov   a,$37
0cd7: bc        inc   a
0cd8: 28 0f     and   a,#$0f
0cda: c4 37     mov   $37,a
0cdc: cd 00     mov   x,#$00
0cde: 3f fc 0c  call  $0cfc
0ce1: cd 08     mov   x,#$08
0ce3: 3f fc 0c  call  $0cfc
0ce6: e4 20     mov   a,$20
0ce8: 9f        xcn   a
0ce9: 5d        mov   x,a
0cea: 3f fc 0c  call  $0cfc
0ced: 7d        mov   a,x
0cee: 60        clrc
0cef: 88 08     adc   a,#$08
0cf1: 5d        mov   x,a
0cf2: 3f fc 0c  call  $0cfc
0cf5: cd 40     mov   x,#$40
0cf7: 3f fc 0c  call  $0cfc
0cfa: cd 48     mov   x,#$48
0cfc: d8 04     mov   $04,x
0cfe: f4 3e     mov   a,$3e+x
0d00: f0 37     beq   $0d39
0d02: 10 36     bpl   $0d3a
0d04: f4 40     mov   a,$40+x
0d06: f0 62     beq   $0d6a
0d08: c4 02     mov   $02,a
0d0a: f4 3f     mov   a,$3f+x
0d0c: 80        setc
0d0d: b4 3d     sbc   a,$3d+x
0d0f: f0 59     beq   $0d6a
0d11: c4 03     mov   $03,a
0d13: 8d 01     mov   y,#$01
0d15: b0 08     bcs   $0d1f
0d17: fc        inc   y
0d18: e8 00     mov   a,#$00
0d1a: 80        setc
0d1b: a4 03     sbc   a,$03
0d1d: c4 03     mov   $03,a
0d1f: dd        mov   a,y
0d20: d4 3e     mov   $3e+x,a
0d22: e4 02     mov   a,$02
0d24: 1c        asl   a
0d25: 1c        asl   a
0d26: 5d        mov   x,a
0d27: 8d 00     mov   y,#$00
0d29: e4 03     mov   a,$03
0d2b: 9e        div   ya,x
0d2c: c4 03     mov   $03,a
0d2e: e8 00     mov   a,#$00
0d30: 9e        div   ya,x
0d31: f8 04     mov   x,$04
0d33: d4 40     mov   $40+x,a
0d35: e4 03     mov   a,$03
0d37: d4 41     mov   $41+x,a
0d39: 6f        ret

0d3a: e4 37     mov   a,$37
0d3c: d0 36     bne   $0d74
0d3e: f4 3e     mov   a,$3e+x
0d40: 68 01     cmp   a,#$01
0d42: d0 13     bne   $0d57
0d44: f4 3c     mov   a,$3c+x
0d46: 60        clrc
0d47: 94 40     adc   a,$40+x
0d49: d4 3c     mov   $3c+x,a
0d4b: f4 3d     mov   a,$3d+x
0d4d: 94 41     adc   a,$41+x
0d4f: d4 3d     mov   $3d+x,a
0d51: 74 3f     cmp   a,$3f+x
0d53: b0 15     bcs   $0d6a
0d55: 2f 1d     bra   $0d74
0d57: f4 3c     mov   a,$3c+x
0d59: 80        setc
0d5a: b4 40     sbc   a,$40+x
0d5c: d4 3c     mov   $3c+x,a
0d5e: f4 3d     mov   a,$3d+x
0d60: b4 41     sbc   a,$41+x
0d62: d4 3d     mov   $3d+x,a
0d64: 74 3f     cmp   a,$3f+x
0d66: f0 02     beq   $0d6a
0d68: b0 0a     bcs   $0d74
0d6a: f4 3f     mov   a,$3f+x
0d6c: d4 3d     mov   $3d+x,a
0d6e: e8 00     mov   a,#$00
0d70: d4 3c     mov   $3c+x,a
0d72: d4 3e     mov   $3e+x,a
0d74: 6f        ret

0d75: 8f 03 f1  mov   $f1,#$03
0d78: 8f 00 fc  mov   $fc,#$00
0d7b: 8f 07 f1  mov   $f1,#$07
0d7e: f8 45     mov   x,$45
0d80: 3e 2a     cmp   x,$2a
0d82: f0 0d     beq   $0d91
0d84: d8 2a     mov   $2a,x
0d86: 8f 06 f1  mov   $f1,#$06
0d89: ba 2c     movw  ya,$2c
0d8b: 9e        div   ya,x
0d8c: c4 fa     mov   $fa,a
0d8e: 8f 07 f1  mov   $f1,#$07
0d91: e4 20     mov   a,$20
0d93: 9f        xcn   a
0d94: fd        mov   y,a
0d95: f9 45     mov   x,$45+y
0d97: 3e 2b     cmp   x,$2b
0d99: f0 0d     beq   $0da8
0d9b: d8 2b     mov   $2b,x
0d9d: 8f 05 f1  mov   $f1,#$05
0da0: ba 2c     movw  ya,$2c
0da2: 9e        div   ya,x
0da3: c4 fb     mov   $fb,a             ; set timer 1 freq
0da5: 8f 07 f1  mov   $f1,#$07
0da8: 6f        ret

0da9: e4 20     mov   a,$20
0dab: 9f        xcn   a
0dac: c4 21     mov   $21,a
0dae: cd 00     mov   x,#$00
0db0: d8 23     mov   $23,x
0db2: d8 24     mov   $24,x
0db4: e8 01     mov   a,#$01
0db6: c4 22     mov   $22,a
0db8: d8 26     mov   $26,x
0dba: 24 1f     and   a,$1f
0dbc: f0 32     beq   $0df0
0dbe: 24 3b     and   a,$3b
0dc0: f0 14     beq   $0dd6
0dc2: 24 25     and   a,$25
0dc4: f0 04     beq   $0dca
0dc6: e4 3d     mov   a,$3d
0dc8: 2f 05     bra   $0dcf
0dca: eb 24     mov   y,$24
0dcc: f6 2e 00  mov   a,$002e+y
0dcf: c4 27     mov   $27,a
0dd1: 3f 5d 0e  call  $0e5d
0dd4: 2f 1d     bra   $0df3
0dd6: eb 21     mov   y,$21
0dd8: f6 3b 00  mov   a,$003b+y
0ddb: 24 22     and   a,$22
0ddd: f0 11     beq   $0df0
0ddf: f6 3d 00  mov   a,$003d+y
0de2: c4 27     mov   $27,a
0de4: dd        mov   a,y
0de5: 1c        asl   a
0de6: 1c        asl   a
0de7: 60        clrc
0de8: 84 26     adc   a,$26
0dea: 5d        mov   x,a
0deb: 3f 5d 0e  call  $0e5d
0dee: 2f 03     bra   $0df3
0df0: 3f eb 0e  call  $0eeb
0df3: e4 26     mov   a,$26
0df5: 60        clrc
0df6: 88 08     adc   a,#$08
0df8: 5d        mov   x,a
0df9: e4 23     mov   a,$23
0dfb: 60        clrc
0dfc: 88 10     adc   a,#$10
0dfe: c4 23     mov   $23,a
0e00: ab 24     inc   $24
0e02: 0b 22     asl   $22
0e04: e4 22     mov   a,$22
0e06: 90 b0     bcc   $0db8
0e08: e4 16     mov   a,$16
0e0a: eb 7d     mov   y,$7d
0e0c: f0 04     beq   $0e12
0e0e: 28 df     and   a,#$df
0e10: 2f 02     bra   $0e14
0e12: 08 20     or    a,#$20
0e14: c4 16     mov   $16,a
0e16: 8d 0c     mov   y,#$0c
0e18: 8f 00 02  mov   $02,#$00
0e1b: ad 05     cmp   y,#$05
0e1d: f0 07     beq   $0e26
0e1f: b0 08     bcs   $0e29
0e21: 69 1c 1d  cmp   ($1d),($1c)
0e24: d0 0f     bne   $0e35
0e26: e3 1d 0c  bbs7  $1d,$0e35
0e29: f6 44 0e  mov   a,$0e44+y
0e2c: c4 f2     mov   $f2,a
0e2e: f6 50 0e  mov   a,$0e50+y
0e31: 5d        mov   x,a
0e32: e6        mov   a,(x)
0e33: c4 f3     mov   $f3,a             ; set dsp regs from shadow
0e35: fe e4     dbnz  y,$0e1b
0e37: cb 14     mov   $14,y
0e39: cb 13     mov   $13,y
0e3b: 69 1c 1d  cmp   ($1d),($1c)
0e3e: f0 02     beq   $0e42
0e40: ab 1d     inc   $1d
0e42: 5f 7e 0d  jmp   $0d7e

0e45: db $2c,$3c,$0d,$4d,$6c,$4c,$3d,$5c,$0c,$1c,$2d,$5c
0e51: db $7d,$7d,$18,$19,$16,$14,$15,$02,$85,$85,$12,$13

0e5d: f5 01 04  mov   a,$0401+x
0e60: 68 50     cmp   a,#$50
0e62: 90 0e     bcc   $0e72
0e64: 68 70     cmp   a,#$70
0e66: 90 09     bcc   $0e71
0e68: 68 90     cmp   a,#$90
0e6a: 90 12     bcc   $0e7e
0e6c: 3f fd 0e  call  $0efd
0e6f: 2f 04     bra   $0e75
0e71: 6f        ret

0e72: 3f 03 0f  call  $0f03
0e75: e8 ff     mov   a,#$ff
0e77: 80        setc
0e78: a4 22     sbc   a,$22
0e7a: 24 15     and   a,$15
0e7c: 2f 07     bra   $0e85
0e7e: 3f a0 0f  call  $0fa0
0e81: e4 22     mov   a,$22
0e83: 04 15     or    a,$15
0e85: c4 15     mov   $15,a
0e87: f5 00 03  mov   a,$0300+x
0e8a: c4 02     mov   $02,a
0e8c: 28 0c     and   a,#$0c
0e8e: d0 08     bne   $0e98
0e90: e4 02     mov   a,$02
0e92: 28 03     and   a,#$03
0e94: 68 03     cmp   a,#$03
0e96: d0 06     bne   $0e9e
0e98: 8f 5c f2  mov   $f2,#$5c
0e9b: fa 22 f3  mov   ($f3),($22)       ; set KOF
0e9e: e4 02     mov   a,$02
0ea0: 28 03     and   a,#$03
0ea2: 68 03     cmp   a,#$03
0ea4: f0 06     beq   $0eac
0ea6: e4 02     mov   a,$02
0ea8: 28 04     and   a,#$04
0eaa: f0 0d     beq   $0eb9
0eac: e4 22     mov   a,$22
0eae: 04 14     or    a,$14
0eb0: c4 14     mov   $14,a
0eb2: f5 05 05  mov   a,$0505+x
0eb5: 08 80     or    a,#$80
0eb7: 2f 0d     bra   $0ec6
0eb9: e4 02     mov   a,$02
0ebb: 28 03     and   a,#$03
0ebd: 68 01     cmp   a,#$01
0ebf: d0 08     bne   $0ec9
0ec1: f5 05 05  mov   a,$0505+x
0ec4: 28 7f     and   a,#$7f
0ec6: d5 05 05  mov   $0505+x,a
0ec9: e4 02     mov   a,$02
0ecb: 28 f2     and   a,#$f2
0ecd: d5 00 03  mov   $0300+x,a
0ed0: 3f cb 0f  call  $0fcb
0ed3: d5 00 05  mov   $0500+x,a
0ed6: dd        mov   a,y
0ed7: d5 01 05  mov   $0501+x,a
0eda: eb 23     mov   y,$23
0edc: cb f2     mov   $f2,y
0ede: f5 00 05  mov   a,$0500+x
0ee1: c4 f3     mov   $f3,a             ; set channel dsp regs
0ee3: 3d        inc   x
0ee4: fc        inc   y
0ee5: dd        mov   a,y
0ee6: 28 08     and   a,#$08
0ee8: f0 f2     beq   $0edc
0eea: 6f        ret

0eeb: e4 23     mov   a,$23
0eed: 60        clrc
0eee: 88 07     adc   a,#$07
0ef0: c4 f2     mov   $f2,a
0ef2: 8f 9f f3  mov   $f3,#$9f          ; set GAIN
0ef5: 9c        dec   a
0ef6: 9c        dec   a
0ef7: c4 f2     mov   $f2,a
0ef9: 8f 7f f3  mov   $f3,#$7f          ; set ADSR(1)
0efc: 6f        ret

0efd: e8 00     mov   a,#$00
0eff: 8d 00     mov   y,#$00
0f01: 2f 0a     bra   $0f0d
0f03: f5 00 04  mov   a,$0400+x
0f06: 60        clrc
0f07: 95 01 04  adc   a,$0401+x
0f0a: 8d 10     mov   y,#$10
0f0c: cf        mul   ya
0f0d: da 08     movw  $08,ya
0f0f: 8d 00     mov   y,#$00
0f11: f5 02 04  mov   a,$0402+x
0f14: 10 02     bpl   $0f18
0f16: 8d ff     mov   y,#$ff
0f18: 7a 08     addw  ya,$08
0f1a: da 08     movw  $08,ya
0f1c: 8d 00     mov   y,#$00
0f1e: f5 03 04  mov   a,$0403+x
0f21: 10 02     bpl   $0f25
0f23: 8d ff     mov   y,#$ff
0f25: 7a 08     addw  ya,$08
0f27: da 08     movw  $08,ya
0f29: 8d 00     mov   y,#$00
0f2b: f5 04 04  mov   a,$0404+x
0f2e: 10 02     bpl   $0f32
0f30: 8d ff     mov   y,#$ff
0f32: 7a 08     addw  ya,$08
0f34: da 08     movw  $08,ya
0f36: 8d 00     mov   y,#$00
0f38: f5 05 04  mov   a,$0405+x
0f3b: 10 02     bpl   $0f3f
0f3d: 8d ff     mov   y,#$ff
0f3f: 7a 08     addw  ya,$08
0f41: da 08     movw  $08,ya
0f43: f5 07 04  mov   a,$0407+x
0f46: fd        mov   y,a
0f47: f5 06 04  mov   a,$0406+x
0f4a: 7a 08     addw  ya,$08
0f4c: 4d        push  x
0f4d: cd c0     mov   x,#$c0
0f4f: 9e        div   ya,x
0f50: 5d        mov   x,a
0f51: e8 02     mov   a,#$02
0f53: cf        mul   ya
0f54: da 08     movw  $08,ya
0f56: 60        clrc
0f57: 98 d6 08  adc   $08,#$d6
0f5a: 98 17 09  adc   $09,#$17          ; $17d6
0f5d: 8d 01     mov   y,#$01
0f5f: f7 08     mov   a,($08)+y
0f61: c4 0b     mov   $0b,a
0f63: dc        dec   y
0f64: f7 08     mov   a,($08)+y
0f66: 2f 04     bra   $0f6c
0f68: 4b 0b     lsr   $0b
0f6a: 7c        ror   a
0f6b: 3d        inc   x
0f6c: c8 06     cmp   x,#$06
0f6e: d0 f8     bne   $0f68
0f70: c4 0a     mov   $0a,a
0f72: ce        pop   x
0f73: f5 80 04  mov   a,$0480+x
0f76: eb 0b     mov   y,$0b
0f78: cf        mul   ya
0f79: da 08     movw  $08,ya
0f7b: f5 80 04  mov   a,$0480+x
0f7e: eb 0a     mov   y,$0a
0f80: cf        mul   ya
0f81: cb 02     mov   $02,y
0f83: f5 81 04  mov   a,$0481+x
0f86: eb 0a     mov   y,$0a
0f88: cf        mul   ya
0f89: 7a 08     addw  ya,$08
0f8b: da 08     movw  $08,ya
0f8d: f5 81 04  mov   a,$0481+x
0f90: eb 0b     mov   y,$0b
0f92: cf        mul   ya
0f93: fd        mov   y,a
0f94: e4 02     mov   a,$02
0f96: 7a 08     addw  ya,$08
0f98: d5 02 05  mov   $0502+x,a
0f9b: dd        mov   a,y
0f9c: d5 03 05  mov   $0503+x,a
0f9f: 6f        ret

0fa0: f5 01 04  mov   a,$0401+x
0fa3: 80        setc
0fa4: a8 70     sbc   a,#$70
0fa6: 60        clrc
0fa7: 95 02 04  adc   a,$0402+x
0faa: 60        clrc
0fab: 95 03 04  adc   a,$0403+x
0fae: 28 1f     and   a,#$1f
0fb0: c4 02     mov   $02,a
0fb2: e4 16     mov   a,$16
0fb4: 28 e0     and   a,#$e0
0fb6: 04 02     or    a,$02
0fb8: c4 16     mov   $16,a
0fba: e8 25     mov   a,#$25
0fbc: d5 04 05  mov   $0504+x,a
0fbf: 6f        ret

0fc0: eb 27     mov   y,$27
0fc2: f5 06 03  mov   a,$0306+x
0fc5: cf        mul   ya
0fc6: f5 07 03  mov   a,$0307+x
0fc9: 2f 12     bra   $0fdd
0fcb: f5 06 02  mov   a,$0206+x
0fce: c4 04     mov   $04,a
0fd0: eb 27     mov   y,$27
0fd2: f5 06 03  mov   a,$0306+x
0fd5: cf        mul   ya
0fd6: f5 07 03  mov   a,$0307+x
0fd9: cf        mul   ya
0fda: f5 01 03  mov   a,$0301+x
0fdd: cf        mul   ya
0fde: cb 02     mov   $02,y
0fe0: e4 1e     mov   a,$1e
0fe2: 28 80     and   a,#$80
0fe4: d0 02     bne   $0fe8
0fe6: e4 04     mov   a,$04
0fe8: cf        mul   ya
0fe9: cb 03     mov   $03,y
0feb: e4 02     mov   a,$02
0fed: 80        setc
0fee: a4 03     sbc   a,$03
0ff0: c4 02     mov   $02,a
0ff2: e4 1e     mov   a,$1e
0ff4: 28 80     and   a,#$80
0ff6: d0 1c     bne   $1014
0ff8: f5 00 03  mov   a,$0300+x
0ffb: 28 20     and   a,#$20
0ffd: f0 07     beq   $1006
0fff: e8 ff     mov   a,#$ff
1001: 80        setc
1002: a4 02     sbc   a,$02
1004: c4 02     mov   $02,a
1006: f5 00 03  mov   a,$0300+x
1009: 28 10     and   a,#$10
100b: f0 07     beq   $1014
100d: e8 ff     mov   a,#$ff
100f: 80        setc
1010: a4 03     sbc   a,$03
1012: c4 03     mov   $03,a
1014: e4 02     mov   a,$02
1016: eb 03     mov   y,$03
1018: 6f        ret

1019: e4 22     mov   a,$22
101b: 24 1f     and   a,$1f
101d: f0 f9     beq   $1018
101f: e4 21     mov   a,$21
1021: f0 0d     beq   $1030
1023: e4 22     mov   a,$22
1025: 24 3b     and   a,$3b
1027: d0 ef     bne   $1018
1029: eb 21     mov   y,$21
102b: f6 3d 00  mov   a,$003d+y
102e: 2f 0b     bra   $103b
1030: e4 22     mov   a,$22
1032: 24 25     and   a,$25
1034: d0 f3     bne   $1029
1036: eb 24     mov   y,$24
1038: f6 2e 00  mov   a,$002e+y
103b: c4 27     mov   $27,a
103d: 3f eb 0e  call  $0eeb
1040: 8f 5c f2  mov   $f2,#$5c
1043: fa 22 f3  mov   ($f3),($22)       ; set KOF
1046: f5 01 04  mov   a,$0401+x
1049: 80        setc
104a: a8 50     sbc   a,#$50
104c: 8d 06     mov   y,#$06
104e: cf        mul   ya
104f: fd        mov   y,a
1050: f6 a6 19  mov   a,$19a6+y
1053: c4 04     mov   $04,a
1055: cb 05     mov   $05,y
1057: 3f c0 0f  call  $0fc0
105a: 8f 5c f2  mov   $f2,#$5c
105d: 8f 00 f3  mov   $f3,#$00          ; set KOF
1060: f8 23     mov   x,$23
1062: d8 f2     mov   $f2,x
1064: c4 f3     mov   $f3,a             ; set VOL(L)
1066: 3d        inc   x
1067: d8 f2     mov   $f2,x
1069: cb f3     mov   $f3,y             ; set VOL(R)
106b: 3d        inc   x
106c: eb 05     mov   y,$05
106e: f6 a7 19  mov   a,$19a7+y
1071: d8 f2     mov   $f2,x
1073: c4 f3     mov   $f3,a             ; set P(L)
1075: 3d        inc   x
1076: f6 a8 19  mov   a,$19a8+y
1079: d8 f2     mov   $f2,x
107b: c4 f3     mov   $f3,a             ; set P(H)
107d: 3d        inc   x
107e: f6 a3 19  mov   a,$19a3+y
1081: d8 f2     mov   $f2,x
1083: c4 f3     mov   $f3,a             ; set SRCN
1085: 3d        inc   x
1086: f6 a4 19  mov   a,$19a4+y
1089: 08 80     or    a,#$80            ; ADSR mode
108b: d8 f2     mov   $f2,x
108d: c4 f3     mov   $f3,a             ; set ADSR(1)
108f: 3d        inc   x
1090: f6 a5 19  mov   a,$19a5+y
1093: d8 f2     mov   $f2,x
1095: c4 f3     mov   $f3,a             ; set ADSR(2)
1097: e8 ff     mov   a,#$ff
1099: 80        setc
109a: a4 22     sbc   a,$22
109c: 24 15     and   a,$15
109e: c4 15     mov   $15,a
10a0: 8f 3d f2  mov   $f2,#$3d
10a3: c4 f3     mov   $f3,a             ; set NON
10a5: 8f 4c f2  mov   $f2,#$4c
10a8: fa 22 f3  mov   ($f3),($22)       ; set KON
10ab: 6f        ret

10ac: e4 f4     mov   a,$f4
10ae: 64 f4     cmp   a,$f4
10b0: d0 fa     bne   $10ac
10b2: 64 0e     cmp   a,$0e
10b4: f0 0f     beq   $10c5
10b6: c4 f4     mov   $f4,a
10b8: c4 0e     mov   $0e,a
10ba: e4 f5     mov   a,$f5
10bc: 64 f5     cmp   a,$f5
10be: d0 fa     bne   $10ba
10c0: c4 0f     mov   $0f,a
10c2: 3f df 10  call  $10df
10c5: e4 f6     mov   a,$f6
10c7: 64 f6     cmp   a,$f6
10c9: d0 fa     bne   $10c5
10cb: 64 10     cmp   a,$10
10cd: f0 0f     beq   $10de
10cf: c4 f6     mov   $f6,a
10d1: c4 10     mov   $10,a
10d3: e4 f7     mov   a,$f7
10d5: 64 f7     cmp   a,$f7
10d7: d0 fa     bne   $10d3
10d9: c4 11     mov   $11,a
10db: 3f 10 11  call  $1110
10de: 6f        ret

10df: e4 0e     mov   a,$0e
10e1: 28 78     and   a,#$78
10e3: 68 08     cmp   a,#$08
10e5: d0 0f     bne   $10f6
10e7: 8f 5c f2  mov   $f2,#$5c
10ea: 8f ff f3  mov   $f3,#$ff          ; set KOF
10ed: 3f eb 12  call  $12eb
10f0: 8f 5c f2  mov   $f2,#$5c
10f3: 8f 00 f3  mov   $f3,#$00          ; set KOF
10f6: e4 0e     mov   a,$0e
10f8: 9f        xcn   a
10f9: 28 07     and   a,#$07
10fb: 1c        asl   a
10fc: 5d        mov   x,a
10fd: 1f 00 11  jmp   ($1100+x)

1100: d8 11     mov   $11,x
1102: 96 12 b1  adc   a,$b112+y
1105: 12 ad     clr0  $ad
1107: 12 9a     clr0  $9a
1109: 12 c4     clr0  $c4
110b: 12 ce     clr0  $ce
110d: 12 d8     clr0  $d8
110f: 12 e4     clr0  $e4
1111: 10 28     bpl   $113b
1113: 7f        reti
1114: c4 07     mov   $07,a
1116: 1c        asl   a
1117: fd        mov   y,a
1118: f6 d4 1c  mov   a,$1cd4+y
111b: c4 08     mov   $08,a
111d: f6 d5 1c  mov   a,$1cd5+y
1120: c4 09     mov   $09,a
1122: cd 00     mov   x,#$00
1124: 8d 00     mov   y,#$00
1126: f7 08     mov   a,($08)+y
1128: c4 02     mov   $02,a
112a: fc        inc   y
112b: f7 08     mov   a,($08)+y
112d: c4 03     mov   $03,a
112f: fc        inc   y
1130: f7 08     mov   a,($08)+y
1132: c4 04     mov   $04,a
1134: fc        inc   y
1135: f7 08     mov   a,($08)+y
1137: c4 06     mov   $06,a
1139: 8d 00     mov   y,#$00
113b: 8f 00 0a  mov   $0a,#$00
113e: 8f 01 05  mov   $05,#$01
1141: e4 02     mov   a,$02
1143: 24 05     and   a,$05
1145: f0 28     beq   $116f
1147: f6 80 01  mov   a,$0180+y
114a: 64 07     cmp   a,$07
114c: f0 11     beq   $115f
114e: e4 06     mov   a,$06
1150: 28 7f     and   a,#$7f
1152: c4 0b     mov   $0b,a
1154: f6 88 01  mov   a,$0188+y
1157: 28 7f     and   a,#$7f
1159: 64 0b     cmp   a,$0b
115b: 90 06     bcc   $1163
115d: b0 0a     bcs   $1169
115f: e4 06     mov   a,$06
1161: 10 06     bpl   $1169
1163: e4 3b     mov   a,$3b
1165: 24 05     and   a,$05
1167: d0 06     bne   $116f
1169: e4 0a     mov   a,$0a
116b: 04 05     or    a,$05
116d: c4 0a     mov   $0a,a
116f: fc        inc   y
1170: 0b 05     asl   $05
1172: 90 cd     bcc   $1141
1174: e4 0a     mov   a,$0a
1176: 64 02     cmp   a,$02
1178: f0 01     beq   $117b
117a: 6f        ret

117b: 8f 01 05  mov   $05,#$01
117e: 8d 00     mov   y,#$00
1180: e4 02     mov   a,$02
1182: 24 05     and   a,$05
1184: f0 0a     beq   $1190
1186: e4 06     mov   a,$06
1188: d6 88 01  mov   $0188+y,a
118b: e4 07     mov   a,$07
118d: d6 80 01  mov   $0180+y,a
1190: fc        inc   y
1191: 0b 05     asl   $05
1193: 90 eb     bcc   $1180
1195: 8f 5c f2  mov   $f2,#$5c
1198: fa 02 f3  mov   ($f3),($02)       ; set KOF
119b: e4 3b     mov   a,$3b
119d: 04 02     or    a,$02
119f: c4 3b     mov   $3b,a
11a1: e4 03     mov   a,$03
11a3: f0 0e     beq   $11b3
11a5: 3f 80 12  call  $1280
11a8: e4 04     mov   a,$04
11aa: 3f 8b 12  call  $128b
11ad: e4 25     mov   a,$25
11af: 04 02     or    a,$02
11b1: 2f 1c     bra   $11cf
11b3: 8f 01 05  mov   $05,#$01
11b6: 8d 00     mov   y,#$00
11b8: e4 02     mov   a,$02
11ba: 24 05     and   a,$05
11bc: f0 05     beq   $11c3
11be: e4 04     mov   a,$04
11c0: d6 2e 00  mov   $002e+y,a
11c3: fc        inc   y
11c4: 0b 05     asl   $05
11c6: 90 f0     bcc   $11b8
11c8: e8 ff     mov   a,#$ff
11ca: 80        setc
11cb: a4 02     sbc   a,$02
11cd: 24 25     and   a,$25
11cf: c4 25     mov   $25,a
11d1: fa 11 04  mov   ($04),($11)
11d4: 8d 04     mov   y,#$04
11d6: 2f 5e     bra   $1236
11d8: 53 0e 12  bbc2  $0e,$11ed
11db: e4 0e     mov   a,$0e
11dd: 28 03     and   a,#$03
11df: 68 03     cmp   a,#$03
11e1: d0 0f     bne   $11f2
11e3: e8 00     mov   a,#$00
11e5: c4 4b     mov   $4b,a
11e7: c4 5b     mov   $5b,a
11e9: c4 6b     mov   $6b,a
11eb: 2f 04     bra   $11f1
11ed: e4 0f     mov   a,$0f
11ef: f0 05     beq   $11f6
11f1: 6f        ret

11f2: 68 02     cmp   a,#$02
11f4: d0 09     bne   $11ff
11f6: e4 20     mov   a,$20
11f8: 9f        xcn   a
11f9: 5d        mov   x,a
11fa: e8 00     mov   a,#$00
11fc: d4 3b     mov   $3b+x,a
11fe: 6f        ret

11ff: e8 01     mov   a,#$01
1201: c4 20     mov   $20,a
1203: 9f        xcn   a
1204: 5d        mov   x,a
1205: 1c        asl   a
1206: 1c        asl   a
1207: c4 26     mov   $26,a
1209: e5 00 28  mov   a,$2800
120c: 24 0f     and   a,$0f
120e: c4 02     mov   $02,a
1210: d4 3b     mov   $3b+x,a
1212: e5 01 28  mov   a,$2801
1215: 3f 80 12  call  $1280
1218: e5 02 28  mov   a,$2802
121b: 3f 8b 12  call  $128b
121e: e4 20     mov   a,$20
1220: 68 01     cmp   a,#$01
1222: f0 03     beq   $1227
1224: 03 0e 58  bbs0  $0e,$127f
1227: 8f 00 08  mov   $08,#$00
122a: 8f 28 09  mov   $09,#$28          ; song header at $2800
122d: f8 26     mov   x,$26
122f: 8f 80 04  mov   $04,#$80
1232: e4 fe     mov   a,$fe
1234: 8d 03     mov   y,#$03
1236: 8f 01 05  mov   $05,#$01          ; channel bitmask
; initialize channels
1239: e4 02     mov   a,$02
123b: 24 05     and   a,$05
123d: f0 37     beq   $1276
123f: f7 08     mov   a,($08)+y
1241: d4 72     mov   $72+x,a
1243: fc        inc   y
1244: f7 08     mov   a,($08)+y
1246: d4 73     mov   $73+x,a           ; read voice ptr from song header
1248: fc        inc   y
1249: e8 00     mov   a,#$00
124b: d5 83 04  mov   $0483+x,a
124e: d5 82 04  mov   $0482+x,a
1251: d5 06 04  mov   $0406+x,a
1254: d5 07 04  mov   $0407+x,a
1257: d5 83 02  mov   $0283+x,a
125a: d5 80 03  mov   $0380+x,a
125d: d4 71     mov   $71+x,a
125f: d5 00 04  mov   $0400+x,a
1262: d5 02 04  mov   $0402+x,a
1265: d5 05 04  mov   $0405+x,a
1268: e8 01     mov   a,#$01
126a: d4 70     mov   $70+x,a
126c: e8 08     mov   a,#$08
126e: d5 00 03  mov   $0300+x,a
1271: e4 04     mov   a,$04
1273: d5 06 02  mov   $0206+x,a
1276: 7d        mov   a,x
1277: 60        clrc
1278: 88 08     adc   a,#$08
127a: 5d        mov   x,a
127b: 0b 05     asl   $05
127d: 90 ba     bcc   $1239             ; repeat for all 8 channels
127f: 6f        ret

1280: d4 45     mov   $45+x,a
1282: d4 47     mov   $47+x,a
1284: e8 00     mov   a,#$00
1286: d4 48     mov   $48+x,a
1288: d4 46     mov   $46+x,a
128a: 6f        ret

128b: d4 3d     mov   $3d+x,a
128d: d4 3f     mov   $3f+x,a
128f: e8 00     mov   a,#$00
1291: d4 40     mov   $40+x,a
1293: d4 3e     mov   $3e+x,a
1295: 6f        ret

1296: cd 40     mov   x,#$40
1298: 2f 04     bra   $129e
129a: e4 20     mov   a,$20
129c: 9f        xcn   a
129d: 5d        mov   x,a
129e: e8 80     mov   a,#$80
12a0: d4 46     mov   $46+x,a
12a2: e4 0f     mov   a,$0f
12a4: d4 47     mov   $47+x,a
12a6: e4 0e     mov   a,$0e
12a8: 28 0f     and   a,#$0f
12aa: d4 48     mov   $48+x,a
12ac: 6f        ret

12ad: cd 40     mov   x,#$40
12af: 2f 04     bra   $12b5
12b1: e4 20     mov   a,$20
12b3: 9f        xcn   a
12b4: 5d        mov   x,a
12b5: e8 80     mov   a,#$80
12b7: d4 3e     mov   $3e+x,a
12b9: e4 0f     mov   a,$0f
12bb: d4 3f     mov   $3f+x,a
12bd: e4 0e     mov   a,$0e
12bf: 28 0f     and   a,#$0f
12c1: d4 40     mov   $40+x,a
12c3: 6f        ret

12c4: e4 0e     mov   a,$0e
12c6: 28 0f     and   a,#$0f
12c8: c4 17     mov   $17,a
12ca: fa 0f 18  mov   ($18),($0f)
12cd: 6f        ret

12ce: e4 0e     mov   a,$0e
12d0: 28 0f     and   a,#$0f
12d2: c4 1a     mov   $1a,a
12d4: fa 0f 19  mov   ($19),($0f)
12d7: 6f        ret

12d8: e4 0e     mov   a,$0e
12da: 28 0f     and   a,#$0f
12dc: 9f        xcn   a
12dd: c4 1e     mov   $1e,a
12df: fa 0f 1f  mov   ($1f),($0f)
12e2: 28 70     and   a,#$70
12e4: 68 20     cmp   a,#$20
12e6: d0 ef     bne   $12d7
12e8: 5f 80 05  jmp   $0580

12eb: e8 aa     mov   a,#$aa
12ed: c4 f4     mov   $f4,a
12ef: e8 bb     mov   a,#$bb
12f1: c4 f5     mov   $f5,a
12f3: f8 f4     mov   x,$f4
12f5: c8 cc     cmp   x,#$cc
12f7: d0 fa     bne   $12f3
12f9: d8 f4     mov   $f4,x
12fb: 3e f4     cmp   x,$f4
12fd: f0 fc     beq   $12fb
12ff: e4 f4     mov   a,$f4
1301: 64 f4     cmp   a,$f4
1303: d0 fa     bne   $12ff
1305: 5d        mov   x,a
1306: f0 11     beq   $1319
1308: c8 03     cmp   x,#$03
130a: f0 0d     beq   $1319
130c: e4 f5     mov   a,$f5
130e: d8 f4     mov   $f4,x
1310: d7 00     mov   ($00)+y,a
1312: fc        inc   y
1313: d0 e6     bne   $12fb
1315: ab 01     inc   $01
1317: 2f e2     bra   $12fb
1319: e4 f6     mov   a,$f6
131b: eb f7     mov   y,$f7
131d: da 00     movw  $00,ya
131f: d8 f4     mov   $f4,x
1321: 7d        mov   a,x
1322: fd        mov   y,a
1323: 68 03     cmp   a,#$03
1325: d0 d4     bne   $12fb
1327: e4 0e     mov   a,$0e
1329: 64 f4     cmp   a,$f4
132b: d0 fc     bne   $1329
132d: 64 f4     cmp   a,$f4
132f: d0 f8     bne   $1329
1331: c4 f4     mov   $f4,a
1333: fa 10 f6  mov   ($f6),($10)
1336: 6f        ret

1337: f5 83 02  mov   a,$0283+x
133a: f0 31     beq   $136d
133c: f5 81 02  mov   a,$0281+x
133f: f0 78     beq   $13b9
1341: f5 00 03  mov   a,$0300+x
1344: 28 03     and   a,#$03
1346: 68 03     cmp   a,#$03
1348: d0 18     bne   $1362
134a: f5 80 02  mov   a,$0280+x
134d: 28 e6     and   a,#$e6
134f: d5 80 02  mov   $0280+x,a
1352: 28 80     and   a,#$80
1354: d5 85 02  mov   $0285+x,a
1357: e8 00     mov   a,#$00
1359: d5 84 02  mov   $0284+x,a
135c: d5 86 02  mov   $0286+x,a
135f: d5 03 04  mov   $0403+x,a
1362: f5 80 02  mov   a,$0280+x
1365: 9f        xcn   a
1366: 28 07     and   a,#$07
1368: 1c        asl   a
1369: 5d        mov   x,a
136a: 1f e7 13  jmp   ($13e7+x)

136d: d5 03 04  mov   $0403+x,a
1370: 6f        ret

1371: f8 26     mov   x,$26
1373: f5 81 02  mov   a,$0281+x
1376: 60        clrc
1377: 95 86 02  adc   a,$0286+x
137a: d5 86 02  mov   $0286+x,a
137d: 90 0d     bcc   $138c
137f: e8 00     mov   a,#$00
1381: d5 86 02  mov   $0286+x,a
1384: f5 80 02  mov   a,$0280+x
1387: 08 10     or    a,#$10
1389: d5 80 02  mov   $0280+x,a
138c: 6f        ret

138d: f8 26     mov   x,$26
138f: f5 86 02  mov   a,$0286+x
1392: 68 ff     cmp   a,#$ff
1394: f0 23     beq   $13b9
1396: f5 80 02  mov   a,$0280+x
1399: 08 08     or    a,#$08
139b: d5 80 02  mov   $0280+x,a
139e: f5 81 02  mov   a,$0281+x
13a1: 60        clrc
13a2: 95 86 02  adc   a,$0286+x
13a5: d5 86 02  mov   $0286+x,a
13a8: 90 0f     bcc   $13b9
13aa: e8 ff     mov   a,#$ff
13ac: d5 86 02  mov   $0286+x,a
13af: f5 80 02  mov   a,$0280+x
13b2: 28 f7     and   a,#$f7
13b4: 08 10     or    a,#$10
13b6: d5 80 02  mov   $0280+x,a
13b9: f8 26     mov   x,$26
13bb: 3f f3 13  call  $13f3
13be: ba 08     movw  ya,$08
13c0: d5 84 02  mov   $0284+x,a
13c3: dd        mov   a,y
13c4: 04 02     or    a,$02
13c6: d5 85 02  mov   $0285+x,a
13c9: f5 80 02  mov   a,$0280+x
13cc: 28 08     and   a,#$08
13ce: f0 06     beq   $13d6
13d0: f5 86 02  mov   a,$0286+x
13d3: cf        mul   ya
13d4: cb 09     mov   $09,y
13d6: e4 02     mov   a,$02
13d8: 10 07     bpl   $13e1
13da: e8 00     mov   a,#$00
13dc: 80        setc
13dd: a4 09     sbc   a,$09
13df: c4 09     mov   $09,a
13e1: e4 09     mov   a,$09
13e3: d5 03 04  mov   $0403+x,a
13e6: 6f        ret

13e7: dw $1371
13e9: dw $13b9
13eb: dw $1371
13ed: dw $138d
13ef: dw $138d
13f1: dw $13b9
13f3: dw $80f5
13f5: dw $2802
13f7: dw $1c07
13f9: dw $1f5d
13fb: dw $13fd
13fd: dw $140d
13ff: dw $1421
1401: dw $1446
1403: dw $145a
1405: dw $147f
1407: dw $147f
1409: dw $14a5
140b: dw $14a5

140d: 3f d9 14  call  $14d9
1410: 3f f5 14  call  $14f5
1413: 7a 08     addw  ya,$08
1415: da 08     movw  $08,ya
1417: f5 83 02  mov   a,$0283+x
141a: 64 09     cmp   a,$09
141c: f0 1a     beq   $1438
141e: 90 18     bcc   $1438
1420: 6f        ret

1421: 3f d9 14  call  $14d9
1424: 3f f5 14  call  $14f5
1427: 9a 08     subw  ya,$08
1429: da 08     movw  $08,ya
142b: dd        mov   a,y
142c: f0 02     beq   $1430
142e: 10 15     bpl   $1445
1430: e4 02     mov   a,$02
1432: 48 80     eor   a,#$80
1434: c4 02     mov   $02,a
1436: e8 00     mov   a,#$00
1438: c4 09     mov   $09,a
143a: 8f 00 08  mov   $08,#$00
143d: f5 80 02  mov   a,$0280+x
1440: 48 01     eor   a,#$01
1442: d5 80 02  mov   $0280+x,a
1445: 6f        ret

1446: 3f d9 14  call  $14d9
1449: 3f f8 14  call  $14f8
144c: 7a 08     addw  ya,$08
144e: da 08     movw  $08,ya
1450: f5 83 02  mov   a,$0283+x
1453: 64 09     cmp   a,$09
1455: f0 14     beq   $146b
1457: 90 12     bcc   $146b
1459: 6f        ret

145a: 3f d9 14  call  $14d9
145d: 3f f8 14  call  $14f8
1460: 9a 08     subw  ya,$08
1462: da 08     movw  $08,ya
1464: dd        mov   a,y
1465: f0 02     beq   $1469
1467: 10 15     bpl   $147e
1469: e8 00     mov   a,#$00
146b: c4 09     mov   $09,a
146d: 8f 00 08  mov   $08,#$00
1470: e4 02     mov   a,$02
1472: 48 80     eor   a,#$80
1474: c4 02     mov   $02,a
1476: f5 80 02  mov   a,$0280+x
1479: 48 01     eor   a,#$01
147b: d5 80 02  mov   $0280+x,a
147e: 6f        ret

147f: f8 26     mov   x,$26
1481: f5 85 02  mov   a,$0285+x
1484: 28 80     and   a,#$80
1486: c4 02     mov   $02,a
1488: f5 84 02  mov   a,$0284+x
148b: bc        inc   a
148c: c4 08     mov   $08,a
148e: f5 82 02  mov   a,$0282+x
1491: 5c        lsr   a
1492: 64 08     cmp   a,$08
1494: d0 09     bne   $149f
1496: e4 02     mov   a,$02
1498: 48 80     eor   a,#$80
149a: c4 02     mov   $02,a
149c: 8f 00 08  mov   $08,#$00
149f: f5 83 02  mov   a,$0283+x
14a2: c4 09     mov   $09,a
14a4: 6f        ret

14a5: f8 26     mov   x,$26
14a7: f5 85 02  mov   a,$0285+x
14aa: fd        mov   y,a
14ab: 28 80     and   a,#$80
14ad: c4 02     mov   $02,a
14af: dd        mov   a,y
14b0: 28 7f     and   a,#$7f
14b2: fd        mov   y,a
14b3: f5 84 02  mov   a,$0284+x
14b6: da 08     movw  $08,ya
14b8: ab 08     inc   $08
14ba: f5 82 02  mov   a,$0282+x
14bd: 5c        lsr   a
14be: 64 08     cmp   a,$08
14c0: d0 16     bne   $14d8
14c2: 3f 0a 15  call  $150a
14c5: c4 09     mov   $09,a
14c7: 28 80     and   a,#$80
14c9: c4 02     mov   $02,a
14cb: 8d 00     mov   y,#$00
14cd: f5 83 02  mov   a,$0283+x
14d0: 5d        mov   x,a
14d1: e4 09     mov   a,$09
14d3: 9e        div   ya,x
14d4: f8 26     mov   x,$26
14d6: cb 09     mov   $09,y
14d8: 6f        ret

14d9: f8 26     mov   x,$26
14db: f5 82 02  mov   a,$0282+x
14de: c4 08     mov   $08,a
14e0: f5 83 02  mov   a,$0283+x
14e3: f8 08     mov   x,$08
14e5: 8d 00     mov   y,#$00
14e7: 9e        div   ya,x
14e8: c4 09     mov   $09,a
14ea: e8 00     mov   a,#$00
14ec: 9e        div   ya,x
14ed: c4 08     mov   $08,a
14ef: f8 26     mov   x,$26
14f1: 1c        asl   a
14f2: 2b 09     rol   $09
14f4: 6f        ret

14f5: 1c        asl   a
14f6: 2b 09     rol   $09
14f8: c4 08     mov   $08,a
14fa: f5 85 02  mov   a,$0285+x
14fd: fd        mov   y,a
14fe: 28 80     and   a,#$80
1500: c4 02     mov   $02,a
1502: dd        mov   a,y
1503: 28 7f     and   a,#$7f
1505: fd        mov   y,a
1506: f5 84 02  mov   a,$0284+x
1509: 6f        ret

150a: e4 28     mov   a,$28
150c: 44 29     eor   a,$29
150e: 5c        lsr   a
150f: 5c        lsr   a
1510: ed        notc
1511: 6b 28     ror   $28
1513: 6b 29     ror   $29
1515: e4 28     mov   a,$28
1517: 6f        ret

1518: f5 83 04  mov   a,$0483+x
151b: f0 53     beq   $1570
151d: f5 00 03  mov   a,$0300+x
1520: 28 03     and   a,#$03
1522: 68 03     cmp   a,#$03
1524: d0 0e     bne   $1534
1526: f5 83 04  mov   a,$0483+x
1529: d5 84 04  mov   $0484+x,a
152c: e8 00     mov   a,#$00
152e: d5 85 04  mov   $0485+x,a
1531: d5 04 04  mov   $0404+x,a
1534: f5 84 04  mov   a,$0484+x
1537: f0 36     beq   $156f
1539: fd        mov   y,a
153a: f6 76 19  mov   a,$1976+y
153d: f0 2d     beq   $156c
153f: 68 ff     cmp   a,#$ff
1541: f0 26     beq   $1569
1543: c4 02     mov   $02,a
1545: f6 77 19  mov   a,$1977+y
1548: 60        clrc
1549: 95 04 04  adc   a,$0404+x
154c: d5 04 04  mov   $0404+x,a
154f: f5 85 04  mov   a,$0485+x
1552: bc        inc   a
1553: d5 85 04  mov   $0485+x,a
1556: 64 02     cmp   a,$02
1558: d0 15     bne   $156f
155a: f5 84 04  mov   a,$0484+x
155d: bc        inc   a
155e: bc        inc   a
155f: d5 84 04  mov   $0484+x,a
1562: e8 00     mov   a,#$00
1564: d5 85 04  mov   $0485+x,a
1567: 2f 06     bra   $156f
1569: f5 83 04  mov   a,$0483+x
156c: d5 84 04  mov   $0484+x,a
156f: 6f        ret

1570: d5 04 04  mov   $0404+x,a
1573: 6f        ret

1574: f5 00 03  mov   a,$0300+x
1577: 1c        asl   a
1578: 90 3e     bcc   $15b8
157a: 10 1c     bpl   $1598
157c: f5 02 03  mov   a,$0302+x
157f: 80        setc
1580: b5 05 03  sbc   a,$0305+x
1583: d5 02 03  mov   $0302+x,a
1586: f5 01 03  mov   a,$0301+x
1589: b5 04 03  sbc   a,$0304+x
158c: d5 01 03  mov   $0301+x,a
158f: 75 03 03  cmp   a,$0303+x
1592: f0 1b     beq   $15af
1594: 90 19     bcc   $15af
1596: 2f 1f     bra   $15b7
1598: f5 02 03  mov   a,$0302+x
159b: 60        clrc
159c: 95 05 03  adc   a,$0305+x
159f: d5 02 03  mov   $0302+x,a
15a2: f5 01 03  mov   a,$0301+x
15a5: 95 04 03  adc   a,$0304+x
15a8: d5 01 03  mov   $0301+x,a
15ab: 68 ff     cmp   a,#$ff
15ad: d0 08     bne   $15b7
15af: f5 00 03  mov   a,$0300+x
15b2: 48 40     eor   a,#$40
15b4: d5 00 03  mov   $0300+x,a
15b7: 6f        ret

15b8: e8 ff     mov   a,#$ff
15ba: d5 01 03  mov   $0301+x,a
15bd: 6f        ret

15be: f5 80 03  mov   a,$0380+x
15c1: 10 3e     bpl   $1601
15c3: c4 02     mov   $02,a
15c5: 28 07     and   a,#$07
15c7: c4 03     mov   $03,a
15c9: 68 02     cmp   a,#$02
15cb: b0 35     bcs   $1602
15cd: f5 81 03  mov   a,$0381+x
15d0: f0 13     beq   $15e5
15d2: f5 83 03  mov   a,$0383+x
15d5: bc        inc   a
15d6: d5 83 03  mov   $0383+x,a
15d9: 75 81 03  cmp   a,$0381+x
15dc: d0 23     bne   $1601
15de: e8 00     mov   a,#$00
15e0: d5 83 03  mov   $0383+x,a
15e3: 2f 09     bra   $15ee
15e5: f5 00 03  mov   a,$0300+x
15e8: 28 03     and   a,#$03
15ea: 68 03     cmp   a,#$03
15ec: d0 13     bne   $1601
15ee: e4 02     mov   a,$02
15f0: 5c        lsr   a
15f1: 90 05     bcc   $15f8
15f3: 3f 0a 15  call  $150a
15f6: 2f 06     bra   $15fe
15f8: e8 ff     mov   a,#$ff
15fa: 80        setc
15fb: b5 06 02  sbc   a,$0206+x
15fe: d5 06 02  mov   $0206+x,a
1601: 6f        ret

1602: f5 83 03  mov   a,$0383+x
1605: d0 1c     bne   $1623
1607: 3f 1e 17  call  $171e
160a: e4 03     mov   a,$03
160c: 68 06     cmp   a,#$06
160e: b0 03     bcs   $1613
1610: 3f 58 17  call  $1758
1613: e4 03     mov   a,$03
1615: 68 04     cmp   a,#$04
1617: b0 05     bcs   $161e
1619: e8 01     mov   a,#$01
161b: d5 82 03  mov   $0382+x,a
161e: e8 01     mov   a,#$01
1620: d5 83 03  mov   $0383+x,a
1623: e4 03     mov   a,$03
1625: 68 04     cmp   a,#$04
1627: 90 34     bcc   $165d
1629: f5 00 03  mov   a,$0300+x
162c: 28 03     and   a,#$03
162e: 68 03     cmp   a,#$03
1630: d0 2b     bne   $165d
1632: e4 02     mov   a,$02
1634: 28 40     and   a,#$40
1636: f0 17     beq   $164f
1638: f5 83 03  mov   a,$0383+x
163b: 68 01     cmp   a,#$01
163d: f0 10     beq   $164f
163f: bc        inc   a
1640: d5 83 03  mov   $0383+x,a
1643: e4 02     mov   a,$02
1645: 48 08     eor   a,#$08
1647: c4 02     mov   $02,a
1649: d5 80 03  mov   $0380+x,a
164c: 3f 1e 17  call  $171e
164f: e4 03     mov   a,$03
1651: 68 06     cmp   a,#$06
1653: b0 03     bcs   $1658
1655: 3f 35 17  call  $1735
1658: e8 01     mov   a,#$01
165a: d5 82 03  mov   $0382+x,a
165d: f5 82 03  mov   a,$0382+x
1660: f0 05     beq   $1667
1662: 1c        asl   a
1663: 5d        mov   x,a
1664: 1f 66 16  jmp   ($1666+x)

1667: 6f        ret

1668: 72 16     clr3  $16
166a: 92 16     clr4  $16
166c: a7 16     sbc   a,($16+x)
166e: be        das   a
166f: 16 f9 16  or    a,$16f9+y
1672: f8 26     mov   x,$26
1674: f5 86 03  mov   a,$0386+x
1677: d0 14     bne   $168d
1679: e4 02     mov   a,$02
167b: 28 08     and   a,#$08
167d: d0 07     bne   $1686
167f: e8 02     mov   a,#$02
1681: d5 82 03  mov   $0382+x,a
1684: 2f 0c     bra   $1692
1686: e8 04     mov   a,#$04
1688: d5 82 03  mov   $0382+x,a
168b: 2f 31     bra   $16be
168d: 9c        dec   a
168e: d5 86 03  mov   $0386+x,a
1691: 6f        ret

1692: f8 26     mov   x,$26
1694: f5 06 02  mov   a,$0206+x
1697: 60        clrc
1698: 95 87 03  adc   a,$0387+x
169b: d5 06 02  mov   $0206+x,a
169e: b0 33     bcs   $16d3
16a0: 75 85 03  cmp   a,$0385+x
16a3: 90 ec     bcc   $1691
16a5: 2f 2c     bra   $16d3
16a7: f8 26     mov   x,$26
16a9: f5 06 02  mov   a,$0206+x
16ac: 80        setc
16ad: b5 87 03  sbc   a,$0387+x
16b0: d5 06 02  mov   $0206+x,a
16b3: 90 57     bcc   $170c
16b5: 75 84 03  cmp   a,$0384+x
16b8: f0 52     beq   $170c
16ba: b0 d5     bcs   $1691
16bc: 2f 4e     bra   $170c
16be: f8 26     mov   x,$26
16c0: f5 06 02  mov   a,$0206+x
16c3: 80        setc
16c4: b5 87 03  sbc   a,$0387+x
16c7: d5 06 02  mov   $0206+x,a
16ca: 90 07     bcc   $16d3
16cc: 75 85 03  cmp   a,$0385+x
16cf: f0 02     beq   $16d3
16d1: b0 25     bcs   $16f8
16d3: f5 85 03  mov   a,$0385+x
16d6: d5 06 02  mov   $0206+x,a
16d9: e4 03     mov   a,$03
16db: 28 01     and   a,#$01
16dd: d0 0e     bne   $16ed
16df: e4 03     mov   a,$03
16e1: 28 04     and   a,#$04
16e3: d0 0e     bne   $16f3
16e5: f5 84 03  mov   a,$0384+x
16e8: d5 06 02  mov   $0206+x,a
16eb: 2f 0b     bra   $16f8
16ed: f5 82 03  mov   a,$0382+x
16f0: bc        inc   a
16f1: 2f 02     bra   $16f5
16f3: e8 00     mov   a,#$00
16f5: d5 82 03  mov   $0382+x,a
16f8: 6f        ret

16f9: f8 26     mov   x,$26
16fb: f5 06 02  mov   a,$0206+x
16fe: 60        clrc
16ff: 95 87 03  adc   a,$0387+x
1702: d5 06 02  mov   $0206+x,a
1705: b0 05     bcs   $170c
1707: 75 84 03  cmp   a,$0384+x
170a: 90 ec     bcc   $16f8
170c: f5 84 03  mov   a,$0384+x
170f: d5 06 02  mov   $0206+x,a
1712: e4 03     mov   a,$03
1714: 28 04     and   a,#$04
1716: d0 db     bne   $16f3
1718: f5 82 03  mov   a,$0382+x
171b: 9c        dec   a
171c: 2f d7     bra   $16f5
171e: e4 02     mov   a,$02
1720: 28 38     and   a,#$38
1722: 5c        lsr   a
1723: 5c        lsr   a
1724: fd        mov   y,a
1725: f6 8a 17  mov   a,$178a+y
1728: d5 06 02  mov   $0206+x,a
172b: d5 84 03  mov   $0384+x,a
172e: f6 8b 17  mov   a,$178b+y
1731: d5 85 03  mov   $0385+x,a
1734: 6f        ret

1735: f4 70     mov   a,$70+x
1737: bc        inc   a
1738: c4 04     mov   $04,a
173a: f5 81 03  mov   a,$0381+x
173d: 30 0d     bmi   $174c
173f: bc        inc   a
1740: eb 04     mov   y,$04
1742: cf        mul   ya
1743: cb 05     mov   $05,y
1745: e4 04     mov   a,$04
1747: 80        setc
1748: a4 05     sbc   a,$05
174a: 2f 15     bra   $1761
174c: 28 7f     and   a,#$7f
174e: bc        inc   a
174f: eb 04     mov   y,$04
1751: cf        mul   ya
1752: 8f 00 05  mov   $05,#$00
1755: dd        mov   a,y
1756: 2f 09     bra   $1761
1758: 8f 00 05  mov   $05,#$00
175b: f5 81 03  mov   a,$0381+x
175e: d0 01     bne   $1761
1760: bc        inc   a
1761: 5d        mov   x,a
1762: e4 02     mov   a,$02
1764: 28 38     and   a,#$38
1766: 5c        lsr   a
1767: 5c        lsr   a
1768: 5c        lsr   a
1769: fd        mov   y,a
176a: f6 96 17  mov   a,$1796+y
176d: 8d 00     mov   y,#$00
176f: 9e        div   ya,x
1770: c4 04     mov   $04,a
1772: e4 02     mov   a,$02
1774: 28 01     and   a,#$01
1776: f0 02     beq   $177a
1778: 4b 04     lsr   $04
177a: e4 04     mov   a,$04
177c: d0 01     bne   $177f
177e: bc        inc   a
177f: f8 26     mov   x,$26
1781: d5 87 03  mov   $0387+x,a
1784: e4 05     mov   a,$05
1786: d5 86 03  mov   $0386+x,a
1789: 6f        ret

178a: db $80,$ff,$80,$00,$00,$80,$ff,$80,$00,$ff,$ff,$00,$80,$80,$80,$80,$ff,$ff

179c: f5 82 04  mov   a,$0482+x
179f: f0 34     beq   $17d5
17a1: c4 02     mov   $02,a
17a3: f5 07 04  mov   a,$0407+x
17a6: fd        mov   y,a
17a7: 10 13     bpl   $17bc
17a9: f5 06 04  mov   a,$0406+x
17ac: 60        clrc
17ad: 84 02     adc   a,$02
17af: d5 06 04  mov   $0406+x,a
17b2: dd        mov   a,y
17b3: 88 00     adc   a,#$00
17b5: d5 07 04  mov   $0407+x,a
17b8: 10 13     bpl   $17cd
17ba: 2f 19     bra   $17d5
17bc: f5 06 04  mov   a,$0406+x
17bf: 80        setc
17c0: a4 02     sbc   a,$02
17c2: d5 06 04  mov   $0406+x,a
17c5: dd        mov   a,y
17c6: a8 00     sbc   a,#$00
17c8: d5 07 04  mov   $0407+x,a
17cb: 10 08     bpl   $17d5
17cd: e8 00     mov   a,#$00
17cf: d5 06 04  mov   $0406+x,a
17d2: d5 07 04  mov   $0407+x,a
17d5: 6f        ret

17d6: dw $1000
17d8: dw $100f
17da: dw $101e
17dc: dw $102d
17de: dw $103c
17e0: dw $104b
17e2: dw $105a
17e4: dw $1069
17e6: dw $1078
17e8: dw $1087
17ea: dw $1097
17ec: dw $10a6
17ee: dw $10b5
17f0: dw $10c5
17f2: dw $10d4
17f4: dw $10e4
17f6: dw $10f4
17f8: dw $1103
17fa: dw $1113
17fc: dw $1123
17fe: dw $1133
1800: dw $1143
1802: dw $1153
1804: dw $1163
1806: dw $1173
1808: dw $1183
180a: dw $1193
180c: dw $11a3
180e: dw $11b4
1810: dw $11c4
1812: dw $11d5
1814: dw $11e5
1816: dw $11f6
1818: dw $1206
181a: dw $1217
181c: dw $1228
181e: dw $1238
1820: dw $1249
1822: dw $125a
1824: dw $126b
1826: dw $127c
1828: dw $128d
182a: dw $129f
182c: dw $12b0
182e: dw $12c1
1830: dw $12d3
1832: dw $12e4
1834: dw $12f5
1836: dw $1307
1838: dw $1319
183a: dw $132a
183c: dw $133c
183e: dw $134e
1840: dw $1360
1842: dw $1372
1844: dw $1384
1846: dw $1396
1848: dw $13a8
184a: dw $13ba
184c: dw $13cc
184e: dw $13df
1850: dw $13f1
1852: dw $1404
1854: dw $1416
1856: dw $1429
1858: dw $143b
185a: dw $144e
185c: dw $1461
185e: dw $1474
1860: dw $1487
1862: dw $149a
1864: dw $14ad
1866: dw $14c0
1868: dw $14d3
186a: dw $14e6
186c: dw $14fa
186e: dw $150d
1870: dw $1521
1872: dw $1534
1874: dw $1548
1876: dw $155c
1878: dw $156f
187a: dw $1583
187c: dw $1597
187e: dw $15ab
1880: dw $15bf
1882: dw $15d3
1884: dw $15e7
1886: dw $15fc
1888: dw $1610
188a: dw $1624
188c: dw $1639
188e: dw $164e
1890: dw $1662
1892: dw $1677
1894: dw $168c
1896: dw $16a1
1898: dw $16b6
189a: dw $16cb
189c: dw $16e0
189e: dw $16f5
18a0: dw $170a
18a2: dw $171f
18a4: dw $1735
18a6: dw $174a
18a8: dw $1760
18aa: dw $1776
18ac: dw $178b
18ae: dw $17a1
18b0: dw $17b7
18b2: dw $17cd
18b4: dw $17e3
18b6: dw $17f9
18b8: dw $180f
18ba: dw $1826
18bc: dw $183c
18be: dw $1852
18c0: dw $1869
18c2: dw $187f
18c4: dw $1896
18c6: dw $18ad
18c8: dw $18c4
18ca: dw $18db
18cc: dw $18f2
18ce: dw $1909
18d0: dw $1920
18d2: dw $1937
18d4: dw $194f
18d6: dw $1966
18d8: dw $197e
18da: dw $1995
18dc: dw $19ad
18de: dw $19c5
18e0: dw $19dc
18e2: dw $19f4
18e4: dw $1a0c
18e6: dw $1a25
18e8: dw $1a3d
18ea: dw $1a55
18ec: dw $1a6d
18ee: dw $1a86
18f0: dw $1a9e
18f2: dw $1ab7
18f4: dw $1ad0
18f6: dw $1ae9
18f8: dw $1b02
18fa: dw $1b1b
18fc: dw $1b34
18fe: dw $1b4d
1900: dw $1b66
1902: dw $1b7f
1904: dw $1b99
1906: dw $1bb2
1908: dw $1bcc
190a: dw $1be6
190c: dw $1c00
190e: dw $1c1a
1910: dw $1c34
1912: dw $1c4e
1914: dw $1c68
1916: dw $1c82
1918: dw $1c9d
191a: dw $1cb7
191c: dw $1cd2
191e: dw $1cec
1920: dw $1d07
1922: dw $1d22
1924: dw $1d3d
1926: dw $1d58
1928: dw $1d73
192a: dw $1d8f
192c: dw $1daa
192e: dw $1dc5
1930: dw $1de1
1932: dw $1dfd
1934: dw $1e18
1936: dw $1e34
1938: dw $1e50
193a: dw $1e6c
193c: dw $1e88
193e: dw $1ea5
1940: dw $1ec1
1942: dw $1ede
1944: dw $1efa
1946: dw $1f17
1948: dw $1f34
194a: dw $1f50
194c: dw $1f6d
194e: dw $1f8b
1950: dw $1fa8
1952: dw $1fc5
1954: dw $1fe2

; echo filter table
1956: db $7f,$00,$00,$00,$00,$00,$00,$00
195e: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1966: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
196e: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

1976: db $00,$03
1978: db $08,$01
197a: db $f6,$02
197c: db $05,$00
197e: db $01,$ec
1980: db $05,$04
1982: db $00

1983: db $00,$0a,$15,$21,$2e,$3c,$4b,$5b
198b: db $6c,$7e,$91,$a5,$ba,$d0,$e7,$ff

1993: db $60,$48,$40,$30,$24,$20,$18,$12
199b: db $10,$0c,$09,$08,$06,$0a,$04,$03

19a3: db $00,$ff,$e0,$80,$80,$05
19a9: db $01,$ff,$e0,$80,$00,$08
19af: db $01,$ff,$e0,$80,$80,$0a
19b5: db $02,$ff,$e7,$20,$a0,$01
19bb: db $02,$ff,$e7,$40,$00,$02
19c1: db $08,$ff,$3c,$e0,$00,$0c
19c7: db $02,$ff,$e7,$70,$80,$02
19cd: db $08,$ff,$50,$e0,$00,$0a
19d3: db $02,$ff,$e7,$90,$00,$03
19d9: db $02,$ff,$e7,$d0,$c0,$03
19df: db $08,$ff,$e0,$a0,$00,$0a
19e5: db $02,$ff,$e7,$f0,$a0,$04
19eb: db $03,$ff,$e0,$50,$40,$07
19f1: db $08,$ff,$e0,$50,$80,$0b
19f7: db $04,$ff,$e0,$30,$00,$10
19fd: db $05,$ff,$e0,$40,$90,$09
1a03: db $05,$ff,$5a,$40,$90,$09
1a09: db $00,$ff,$e0,$80,$80,$05
1a0f: db $06,$ff,$e0,$80,$00,$08
1a15: db $07,$ff,$e0,$80,$c0,$06
1a1b: db $07,$ff,$f6,$80,$c0,$06
1a21: db $14,$ff,$e0,$60,$26,$01
1a27: db $14,$ff,$e0,$60,$37,$01
1a2d: db $14,$ff,$e0,$60,$6e,$01
1a33: db $14,$ff,$e0,$60,$a0,$01
1a39: db $08,$ff,$e0,$50,$40,$07
1a3f: db $08,$ff,$e0,$50,$00,$08
1a45: db $09,$ff,$e0,$80,$80,$01
1a4b: db $14,$ff,$e0,$60,$80,$01
1a51: db $14,$ff,$f2,$60,$37,$01
1a57: db $14,$ff,$f0,$60,$a0,$01
1a5d: db $0a,$ff,$e8,$be,$01,$0c
1a63: db $0b,$ff,$ee,$bc,$01,$0c
1a69: db $0c,$fd,$e0,$bf,$02,$16
1a6f: db $0d,$ff,$e4,$9d,$02,$16
1a75: db $0e,$ee,$ae,$be,$01,$0c
1a7b: db $0f,$ff,$ea,$9c,$03,$20
1a81: db $10,$ff,$e8,$9f,$03,$1c
1a87: db $11,$cf,$b1,$b1,$03,$21
1a8d: db $12,$da,$c5,$bc,$02,$13
1a93: db $13,$ed,$ca,$ba,$01,$0c
1a99: db $14,$ff,$e0,$bc,$01,$a0
1a9f: db $15,$fe,$e0,$bc,$00,$cc
1aa5: db $16,$f9,$e0,$be,$00,$9a
1aab: db $17,$ff,$e0,$b8,$02,$00
1ab1: db $18,$af,$a0,$96,$01,$0c
1ab7: db $19,$cd,$c0,$bd,$01,$e2
1abd: db $1a,$ec,$c0,$bf,$01,$0c
1ac3: db $1b,$fe,$e0,$be,$03,$1d
1ac9: db $1c,$de,$c1,$ba,$03,$24
1acf: db $1d,$de,$c1,$be,$01,$0c
1ad5: db $1e,$ee,$c1,$ba,$01,$99
1adb: db $1f,$ef,$cf,$bc,$00,$66
1ae1: db $20,$dc,$aa,$b0,$00,$99
1ae7: db $21,$fd,$f0,$b0,$02,$64
1aed: db $22,$fb,$e0,$9e,$00,$e2
1af3: db $23,$ff,$ee,$ae,$00,$ce
1af9: db $24,$fd,$ee,$be,$00,$cc

1aff: db $00,$00,$00,$00,$00,$00,$00,$00
1b07: db $00,$00,$01,$00,$00,$00,$00,$00
1b0f: db $00,$00,$00,$02,$00,$00,$00,$00
1b17: db $03,$00,$00,$00,$00,$04,$05,$06
1b1f: db $00,$07,$08,$09,$00,$0a,$0b,$00
1b27: db $0c,$00,$00,$00,$00,$00,$0d,$0e
1b2f: db $0f,$10,$00,$00,$11,$00,$12,$13
1b37: db $14,$00,$00,$00,$00,$15,$16,$00
1b3f: db $00,$00,$00,$00,$00,$00,$00,$00
1b47: db $17,$18,$00,$00,$00,$00,$19,$00
1b4f: db $1a,$1b,$1c,$00,$00,$1d,$00,$00
1b57: db $1e,$1f,$00,$20,$00,$00,$21,$22
1b5f: db $00,$00,$00,$00,$23,$00,$24,$00
1b67: db $00,$00,$00,$00,$00,$00,$00,$00
1b6f: db $00,$00,$00,$00,$00,$00,$00,$25
1b77: db $26,$00,$00,$00,$00,$00,$00,$00

1b7f: db $00,$00,$00,$00
1b83: db $02,$00,$00,$00
1b87: db $02,$00,$00,$00
1b8b: db $09,$04,$00,$00
1b8f: db $03,$00,$00,$01
1b93: db $03,$00,$00,$01
1b97: db $04,$00,$00,$00
1b9b: db $05,$00,$00,$00
1b9f: db $06,$00,$00,$00
1ba3: db $05,$03,$00,$00
1ba7: db $06,$00,$00,$00
1bab: db $07,$00,$00,$00
1baf: db $08,$00,$00,$02
1bb3: db $09,$00,$00,$00
1bb7: db $0a,$00,$00,$00
1bbb: db $0b,$00,$00,$00
1bbf: db $0b,$06,$00,$00
1bc3: db $0c,$00,$00,$00
1bc7: db $13,$00,$00,$02
1bcb: db $0d,$00,$00,$00
1bcf: db $0e,$00,$00,$02
1bd3: db $0f,$05,$00,$00
1bd7: db $0f,$00,$00,$00
1bdb: db $10,$00,$00,$02
1bdf: db $10,$00,$00,$03
1be3: db $10,$00,$02,$03
1be7: db $11,$00,$00,$00
1beb: db $12,$00,$01,$00
1bef: db $13,$00,$00,$00
1bf3: db $14,$00,$00,$00
1bf7: db $15,$00,$00,$00
1bfb: db $10,$07,$00,$04
1bff: db $16,$00,$00,$00
1c03: db $17,$00,$00,$00
1c07: db $18,$00,$00,$00
1c0b: db $19,$00,$00,$00
1c0f: db $1a,$00,$00,$00
1c13: db $1b,$01,$00,$00
1c17: db $0f,$02,$00,$00

1c1b: db $f0,$ff,$9f
1c1e: db $ff,$e0,$bc
1c21: db $fa,$e9,$bc
1c24: db $ef,$d0,$b8
1c27: db $dd,$c0,$ba
1c2a: db $f6,$e0,$bf
1c2d: db $c2,$a0,$b0

1c30: db $00,$00,$0c,$00
1c34: db $00,$07,$0c,$01
1c38: db $00,$07,$0c,$02
1c3c: db $00,$07,$0c,$03
1c40: db $00,$00,$14,$03

1c44: db $25,$ff,$e0,$9f,$03,$20
1c4a: db $25,$ff,$e0,$9f,$03,$20
1c50: db $26,$ff,$e0,$9f,$03,$20
1c56: db $27,$ff,$e0,$9f,$03,$20
1c5c: db $28,$ff,$e0,$9f,$03,$20
1c62: db $29,$ff,$e0,$9f,$03,$20
1c68: db $2a,$ff,$e0,$9f,$03,$20
1c6e: db $2b,$ff,$e0,$9f,$13,$00
1c74: db $2c,$ff,$e0,$9f,$03,$20
1c7a: db $2d,$ff,$e0,$9f,$03,$20
1c80: db $2e,$ff,$e0,$9f,$03,$20
1c86: db $2f,$ff,$e0,$9f,$03,$20
1c8c: db $30,$ff,$e0,$9f,$03,$20
1c92: db $31,$ff,$e0,$9f,$03,$20
1c98: db $32,$ff,$e0,$9f,$03,$20
1c9e: db $33,$ff,$e0,$9f,$03,$d0
1ca4: db $34,$ff,$e0,$9f,$01,$60
1caa: db $35,$ff,$e0,$9f,$01,$70
1cb0: db $36,$ff,$e0,$9f,$00,$b0
1cb6: db $37,$ff,$e0,$9f,$01,$e0
1cbc: db $38,$ff,$e0,$9f,$03,$d0
1cc2: db $39,$ff,$e0,$b8,$06,$20
1cc8: db $3a,$ff,$e0,$9f,$03,$d0
1cce: db $3b,$ff,$e0,$9f,$03,$10

1cd4: dw $1dc0
1cd6: dw $1dca
1cd8: dw $1dd0
1cda: dw $1dd6
1cdc: dw $1ddc
1cde: dw $1de8
1ce0: dw $1dee
1ce2: dw $1df4
1ce4: dw $1dfe
1ce6: dw $1e04
1ce8: dw $1e0a
1cea: dw $1e12
1cec: dw $1e18
1cee: dw $1e1e
1cf0: dw $1e24
1cf2: dw $1e2a
1cf4: dw $2029
1cf6: dw $202f
1cf8: dw $2035
1cfa: dw $203b
1cfc: dw $2041
1cfe: dw $2047
1d00: dw $204d
1d02: dw $2053
1d04: dw $2059
1d06: dw $205f
1d08: dw $206b
1d0a: dw $2071
1d0c: dw $2077
1d0e: dw $207d
1d10: dw $2083
1d12: dw $2089
1d14: dw $208f
1d16: dw $2095
1d18: dw $209b
1d1a: dw $20a1
1d1c: dw $20a7
1d1e: dw $20ad
1d20: dw $20b3
1d22: dw $20b9
1d24: dw $20c1
1d26: dw $20c7
1d28: dw $20cf
1d2a: dw $20d5
1d2c: dw $20db
1d2e: dw $20e1
1d30: dw $20e7
1d32: dw $20ed
1d34: dw $20f3
1d36: dw $20f9
1d38: dw $20ff
1d3a: dw $2105
1d3c: dw $210b
1d3e: dw $2111
1d40: dw $2117
1d42: dw $211d
1d44: dw $2123
1d46: dw $2129
1d48: dw $212f
1d4a: dw $2135
1d4c: dw $213b
1d4e: dw $2141
1d50: dw $2147
1d52: dw $2065
1d54: dw $2c50
1d56: dw $2c56
1d58: dw $2c5c
1d5a: dw $2c62
1d5c: dw $2c68
1d5e: dw $2c6e
1d60: dw $2c74
1d62: dw $2c7a
1d64: dw $2c80
1d66: dw $2c86
1d68: dw $2c8c
1d6a: dw $2c92
1d6c: dw $2c98
1d6e: dw $2c9e
1d70: dw $2ca4
1d72: dw $2caa
1d74: dw $2cb0
1d76: dw $2cb6
1d78: dw $2cbc
1d7a: dw $2cc2
1d7c: dw $2cc8
1d7e: dw $2cce
1d80: dw $2cd4
1d82: dw $2cda
1d84: dw $2ce0
1d86: dw $2ce6
1d88: dw $25a9
1d8a: dw $25af
1d8c: dw $25b5
1d8e: dw $25bb
1d90: dw $25c1
1d92: dw $25c7
1d94: dw $25cd
1d96: dw $25d3
1d98: dw $25d9
1d9a: dw $25df
1d9c: dw $25e5
1d9e: dw $25eb
1da0: dw $25f1
1da2: dw $25f7
1da4: dw $25fd
1da6: dw $2603
1da8: dw $2609
1daa: dw $260f
1dac: dw $2615
1dae: dw $261b
1db0: dw $2621
1db2: dw $2627
