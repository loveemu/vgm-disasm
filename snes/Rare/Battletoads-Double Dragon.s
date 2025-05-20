;Battletoads Double Dragon
;Disassembly by KungFuFurby

;Load new data
ff98: cd 00     mov   x,#$00
ff9a: e5 bf ff  mov   a,$ffbf
ff9d: 48 80     eor   a,#$80
ff9f: c5 bf ff  mov   $ffbf,a
ffa2: c4 f4     mov   $f4,a
ffa4: e4 f4     mov   a,$f4 ;Wait for CPUIO0 to flip the highest bit
ffa6: 45 bf ff  eor   a,$ffbf
ffa9: 30 f9     bmi   $ffa4
ffab: d0 03     bne   $ffb0 ;%?xxxxxxx - CPUIO0 Command ID
;CPUIO0 Command %?0000000 ($00/$80) - Jump to CPUIO2
ffad: 1f f6 00  jmp   ($00f6+x)
ffb0: 9c        dec   a
ffb1: d0 06     bne   $ffb9
;CPUIO0 Command %?1111111 ($7F/$FF) - Send Byte to Pointer
ffb3: e4 f5     mov   a,$f5     ;Read byte from CPUIO1
ffb5: c7 f6     mov   ($f6+x),a ;Sent to pointer at CPUIO2
ffb7: 2f e1     bra   $ff9a
;Not %?0000000 or %?1111111
;CPUIO0 Command $01-$7F/$81-$FE - Send Byte from Pointer to SNES
ffb9: e7 f6     mov   a,($f6+x) ;Read byte from pointer at CPUIO2
ffbb: c4 f5     mov   $f5,a     ;Send to SNES through CPUIO1
ffbd: 2f db     bra   $ff9a

;Boot program
0408: 20        clrp
0409: cd ff     mov   x,#$ff
040b: bd        mov   sp,x
040c: cd 00     mov   x,#$00
040e: 7d        mov   a,x
040f: d5 00 fd  mov   $fd00+x,a
0412: d5 00 fe  mov   $fe00+x,a
0415: 3d        inc   x
0416: d0 f7     bne   $040f
0418: 3f db 0c  call  $0cdb
041b: 8f 00 28  mov   $28,#$00
041e: 8f 30 f1  mov   $f1,#$30
0421: 8f 00 13  mov   $13,#$00
0424: e4 28     mov   a,$28
0426: d0 16     bne   $043e
0428: e4 f5     mov   a,$f5 ;Wait for CPUIO1 to be $FE
042a: f0 f8     beq   $0424
042c: 68 fe     cmp   a,#$fe
042e: d0 f4     bne   $0424
0430: 8f 01 28  mov   $28,#$01
;Acknowledge command by switching lowest bit of CPUIO3
0433: e4 13     mov   a,$13
0435: 48 01     eor   a,#$01
0437: c4 13     mov   $13,a
0439: c4 f7     mov   $f7,a
043b: 8f 30 f1  mov   $f1,#$30
043e: fa ec fa  mov   ($fa),($ec)
0441: 8f 01 f1  mov   $f1,#$01
0444: e4 fd     mov   a,$fd
0446: f0 fc     beq   $0444
0448: e4 f5     mov   a,$f5 ;Check for a sound driver command from CPUIO1
044a: f0 18     beq   $0464
044c: 68 ff     cmp   a,#$ff
044e: d0 03     bne   $0453
0450: 5f 0f 05  jmp   $050f
0453: 5d        mov   x,a   ;CPUIO1 Command $01-$07 - Play SFX
0454: e4 f6     mov   a,$f6 ;CPUIO1 - Voice ID
0456: 3f cb 0d  call  $0dcb ;CPUIO2 - SFX ID
0459: 8f 31 f1  mov   $f1,#$31
;Acknowledge command by switching lowest bit of CPUIO3
045c: e4 13     mov   a,$13
045e: 48 01     eor   a,#$01
0460: c4 13     mov   $13,a
0462: c4 f7     mov   $f7,a
0464: e8 00     mov   a,#$00
0466: c4 2b     mov   $2b,a
0468: 60        clrc
0469: 89 2a 29  adc   ($29),($2a)
046c: 6b 2b     ror   $2b
046e: e4 2b     mov   a,$2b
0470: f0 76     beq   $04e8
0472: e8 ff     mov   a,#$ff
0474: c4 08     mov   $08,a
0476: e8 00     mov   a,#$00
0478: c4 09     mov   $09,a
047a: ba 0e     movw  ya,$0e
047c: 5a 08     cmpw  ya,$08
047e: f0 68     beq   $04e8
0480: 90 0a     bcc   $048c
0482: e8 00     mov   a,#$00
0484: c4 0f     mov   $0f,a
0486: e8 ff     mov   a,#$ff
0488: c4 0e     mov   $0e,a
048a: 2f 0e     bra   $049a
048c: e4 10     mov   a,$10
048e: f0 58     beq   $04e8
0490: 8d 00     mov   y,#$00
0492: 7a 0e     addw  ya,$0e
0494: da 0e     movw  $0e,ya
0496: 5a 08     cmpw  ya,$08
0498: b0 e8     bcs   $0482
049a: c4 06     mov   $06,a
049c: e8 00     mov   a,#$00
049e: c4 07     mov   $07,a
04a0: e8 80     mov   a,#$80
04a2: c4 08     mov   $08,a
04a4: e8 ff     mov   a,#$ff
04a6: c4 09     mov   $09,a
04a8: e5 00 01  mov   a,$0100
04ab: 8d 00     mov   y,#$00
04ad: 9a 06     subw  ya,$06
04af: 10 02     bpl   $04b3
04b1: e8 00     mov   a,#$00
04b3: 8f 0c f2  mov   $f2,#$0c ;MVOLL
04b6: c4 f3     mov   $f3,a
04b8: e5 01 01  mov   a,$0101
04bb: 8d 00     mov   y,#$00
04bd: 9a 06     subw  ya,$06
04bf: 10 02     bpl   $04c3
04c1: e8 00     mov   a,#$00
04c3: 8f 1c f2  mov   $f2,#$1c ;MVOLR
04c6: c4 f3     mov   $f3,a
04c8: e5 02 01  mov   a,$0102
04cb: 8d 00     mov   y,#$00
04cd: 9a 06     subw  ya,$06
04cf: 10 02     bpl   $04d3
04d1: e8 00     mov   a,#$00
04d3: 8f 2c f2  mov   $f2,#$2c ;EVOLL
04d6: c4 f3     mov   $f3,a
04d8: e5 03 01  mov   a,$0103
04db: 8d 00     mov   y,#$00
04dd: 9a 06     subw  ya,$06
04df: 10 02     bpl   $04e3
04e1: e8 00     mov   a,#$00
04e3: 8f 3c f2  mov   $f2,#$3c ;EVOLR
04e6: c4 f3     mov   $f3,a
04e8: cd 00     mov   x,#$00
04ea: 3f 1f 05  call  $051f
04ed: 68 00     cmp   a,#$00
04ef: d0 f9     bne   $04ea
04f1: f5 a4 01  mov   a,$01a4+x
04f4: f0 0e     beq   $0504
04f6: 4d        push  x
04f7: 7d        mov   a,x
04f8: 60        clrc
04f9: 88 08     adc   a,#$08
04fb: 5d        mov   x,a
04fc: 3f 1f 05  call  $051f
04ff: 68 00     cmp   a,#$00
0501: d0 f9     bne   $04fc
0503: ce        pop   x
0504: 3d        inc   x
0505: c8 08     cmp   x,#$08
0507: f0 03     beq   $050c
0509: 5f ea 04  jmp   $04ea
050c: 5f 24 04  jmp   $0424

;CPUIO1 Command $FF - Stop Sound + Jump To Loader
050f: 8f 6c f2  mov   $f2,#$6c ;FLG
0512: 8f e0 f3  mov   $f3,#$e0
0515: cd 00     mov   x,#$00
0517: d8 f7     mov   $f7,x
0519: c9 bf ff  mov   $ffbf,x
051c: 5f 98 ff  jmp   $ff98

051f: f5 14 01  mov   a,$0114+x
0522: d0 03     bne   $0527
0524: e8 00     mov   a,#$00
0526: 6f        ret

0527: e4 2b     mov   a,$2b
0529: d0 06     bne   $0531
052b: 3f be 06  call  $06be
052e: e8 00     mov   a,#$00
0530: 6f        ret

0531: 9b 3c     dec   $3c+x
0533: f4 3c     mov   a,$3c+x
0535: 68 01     cmp   a,#$01
0537: f0 0e     beq   $0547
0539: 68 00     cmp   a,#$00
053b: d0 1b     bne   $0558
053d: f4 2c     mov   a,$2c+x
053f: f0 1d     beq   $055e
0541: 9b 2c     dec   $2c+x
0543: 9b 3c     dec   $3c+x
0545: 2f 11     bra   $0558
0547: f4 2c     mov   a,$2c+x
0549: d0 0d     bne   $0558
054b: f5 a4 01  mov   a,$01a4+x
054e: d0 08     bne   $0558
0550: f5 71 0c  mov   a,$0c71+x
0553: 8f 5c f2  mov   $f2,#$5c ;KOFF
0556: c4 f3     mov   $f3,a
0558: 3f be 06  call  $06be
055b: e8 00     mov   a,#$00
055d: 6f        ret

055e: f4 4c     mov   a,$4c+x
0560: c4 04     mov   $04,a
0562: f4 5c     mov   a,$5c+x
0564: c4 05     mov   $05,a
0566: 8d 00     mov   y,#$00
0568: f7 04     mov   a,($04)+y
056a: 68 00     cmp   a,#$00
056c: 30 06     bmi   $0574
;VCMD $00-$7F - Dispatch VCMD
056e: 4d        push  x
056f: 1c        asl   a
0570: 5d        mov   x,a
0571: 1f 81 0c  jmp   ($0c81+x)

;VCMD $80-$FF
0574: 3f 7d 05  call  $057d
0577: 3f be 06  call  $06be
057a: e8 00     mov   a,#$00
057c: 6f        ret

057d: 68 80     cmp   a,#$80
057f: d0 20     bne   $05a1
;VCMD $80 - Rest
0581: f5 a4 01  mov   a,$01a4+x
0584: d0 08     bne   $058e
0586: f5 71 0c  mov   a,$0c71+x
0589: 8f 5c f2  mov   $f2,#$5c ;KOFF
058c: c4 f3     mov   $f3,a
058e: 7d        mov   a,x
058f: 28 07     and   a,#$07
0591: 9f        xcn   a
0592: 08 02     or    a,#$02 ;VxPITCHL
0594: c4 f2     mov   $f2,a
0596: e8 00     mov   a,#$00
0598: c4 f3     mov   $f3,a
059a: ab f2     inc   $f2    ;VxPITCHH
059c: c4 f3     mov   $f3,a
059e: 5f 85 06  jmp   $0685
;VCMD $81-$FF - Note
05a1: 60        clrc
05a2: 95 44 01  adc   a,$0144+x
05a5: 1c        asl   a
05a6: 4d        push  x
05a7: fb 6c     mov   y,$6c+x
05a9: f0 3c     beq   $05e7
05ab: 5d        mov   x,a
05ac: cb 08     mov   $08,y
05ae: dd        mov   a,y
05af: 10 03     bpl   $05b4
05b1: 48 ff     eor   a,#$ff
05b3: bc        inc   a
05b4: fd        mov   y,a
05b5: 6d        push  y
05b6: f5 13 0e  mov   a,$0e13+x
05b9: cf        mul   ya
05ba: cb 06     mov   $06,y
05bc: 8f 00 07  mov   $07,#$00
05bf: ee        pop   y
05c0: f5 14 0e  mov   a,$0e14+x
05c3: cf        mul   ya
05c4: 7a 06     addw  ya,$06
05c6: cb 07     mov   $07,y
05c8: 4b 07     lsr   $07
05ca: 7c        ror   a
05cb: 4b 07     lsr   $07
05cd: 7c        ror   a
05ce: c4 06     mov   $06,a
05d0: f5 14 0e  mov   a,$0e14+x
05d3: fd        mov   y,a
05d4: f5 13 0e  mov   a,$0e13+x
05d7: f8 08     mov   x,$08
05d9: 30 04     bmi   $05df
05db: 7a 06     addw  ya,$06
05dd: 2f 02     bra   $05e1
05df: 9a 06     subw  ya,$06
05e1: c4 06     mov   $06,a
05e3: cb 07     mov   $07,y
05e5: 2f 0b     bra   $05f2
05e7: 5d        mov   x,a
05e8: f5 13 0e  mov   a,$0e13+x
05eb: c4 06     mov   $06,a
05ed: f5 14 0e  mov   a,$0e14+x
05f0: c4 07     mov   $07,a
05f2: ae        pop   a
05f3: 5d        mov   x,a
05f4: 28 07     and   a,#$07
05f6: 9f        xcn   a
05f7: c4 f2     mov   $f2,a ;VxVOLL
05f9: f5 a4 01  mov   a,$01a4+x
05fc: f0 03     beq   $0601
05fe: 5f 85 06  jmp   $0685
0601: f5 44 02  mov   a,$0244+x
0604: c4 f3     mov   $f3,a
0606: ab f2     inc   $f2   ;VxVOLR
0608: f5 54 02  mov   a,$0254+x
060b: c4 f3     mov   $f3,a
060d: ab f2     inc   $f2   ;VxPITCHL
060f: f5 54 01  mov   a,$0154+x
0612: 28 01     and   a,#$01
0614: f0 17     beq   $062d
0616: f5 b4 01  mov   a,$01b4+x
0619: d5 64 01  mov   $0164+x,a
061c: f5 c4 01  mov   a,$01c4+x
061f: d5 04 01  mov   $0104+x,a
0622: f5 d4 01  mov   a,$01d4+x
0625: d4 9c     mov   $9c+x,a
0627: f5 e4 01  mov   a,$01e4+x
062a: d5 84 01  mov   $0184+x,a
062d: f5 54 01  mov   a,$0154+x
0630: 28 02     and   a,#$02
0632: f0 1b     beq   $064f
0634: f5 24 02  mov   a,$0224+x
0637: 10 06     bpl   $063f
0639: 48 ff     eor   a,#$ff
063b: bc        inc   a
063c: d5 24 02  mov   $0224+x,a
063f: f5 f4 01  mov   a,$01f4+x
0642: 5c        lsr   a
0643: d4 ac     mov   $ac+x,a
0645: f5 04 02  mov   a,$0204+x
0648: d4 bc     mov   $bc+x,a
064a: f5 14 02  mov   a,$0214+x
064d: d4 cc     mov   $cc+x,a
064f: e4 06     mov   a,$06
0651: d4 8c     mov   $8c+x,a
0653: c4 f3     mov   $f3,a
0655: ab f2     inc   $f2   ;VxPITCHH
0657: e4 07     mov   a,$07
0659: d4 7c     mov   $7c+x,a
065b: c4 f3     mov   $f3,a
065d: ab f2     inc   $f2   ;VxSRCN
065f: f5 34 02  mov   a,$0234+x
0662: c4 f3     mov   $f3,a
0664: ab f2     inc   $f2   ;VxADSR1
0666: f5 64 02  mov   a,$0264+x
0669: c4 f3     mov   $f3,a
066b: ab f2     inc   $f2   ;VxADSR2
066d: f5 74 02  mov   a,$0274+x
0670: c4 f3     mov   $f3,a
0672: ab f2     inc   $f2   ;VxGAIN
0674: 8f 7f f3  mov   $f3,#$7f
0677: 8f 5c f2  mov   $f2,#$5c ;KOFF
067a: 8f 00 f3  mov   $f3,#$00
067d: 8f 4c f2  mov   $f2,#$4c ;KON
0680: f5 71 0c  mov   a,$0c71+x
0683: c4 f3     mov   $f3,a
0685: f5 24 01  mov   a,$0124+x
0688: f0 0f     beq   $0699
068a: 8f 01 04  mov   $04,#$01
068d: f5 24 01  mov   a,$0124+x
0690: d4 3c     mov   $3c+x,a
0692: f5 34 01  mov   a,$0134+x
0695: d4 2c     mov   $2c+x,a
0697: 2f 17     bra   $06b0
0699: 8d 01     mov   y,#$01
069b: f7 04     mov   a,($04)+y
069d: d4 3c     mov   $3c+x,a
069f: f5 94 01  mov   a,$0194+x
06a2: f0 09     beq   $06ad
06a4: f4 3c     mov   a,$3c+x
06a6: d4 2c     mov   $2c+x,a
06a8: fc        inc   y
06a9: f7 04     mov   a,($04)+y
06ab: d4 3c     mov   $3c+x,a
06ad: fc        inc   y
06ae: cb 04     mov   $04,y
06b0: 8f 00 05  mov   $05,#$00
06b3: f4 4c     mov   a,$4c+x
06b5: fb 5c     mov   y,$5c+x
06b7: 7a 04     addw  ya,$04
06b9: db 5c     mov   $5c+x,y
06bb: d4 4c     mov   $4c+x,a
06bd: 6f        ret

;Process pitch envelope and vibrato
06be: f5 54 01  mov   a,$0154+x
06c1: 28 01     and   a,#$01
06c3: d0 03     bne   $06c8
06c5: 5f 4b 07  jmp   $074b
06c8: f5 64 01  mov   a,$0164+x
06cb: f0 0f     beq   $06dc
06cd: 68 ff     cmp   a,#$ff
06cf: f0 7a     beq   $074b
06d1: 9c        dec   a
06d2: d5 64 01  mov   $0164+x,a
06d5: d0 74     bne   $074b
06d7: e8 01     mov   a,#$01
06d9: d5 04 01  mov   $0104+x,a
06dc: f5 04 01  mov   a,$0104+x
06df: 9c        dec   a
06e0: d5 04 01  mov   $0104+x,a
06e3: d0 66     bne   $074b
06e5: f5 c4 01  mov   a,$01c4+x
06e8: d5 04 01  mov   $0104+x,a
06eb: f5 84 01  mov   a,$0184+x
06ee: f0 22     beq   $0712
06f0: 9c        dec   a
06f1: d5 84 01  mov   $0184+x,a
06f4: f5 74 01  mov   a,$0174+x
06f7: 48 ff     eor   a,#$ff
06f9: bc        inc   a
06fa: c4 04     mov   $04,a
06fc: 10 04     bpl   $0702
06fe: e8 ff     mov   a,#$ff
0700: 2f 02     bra   $0704
0702: e8 00     mov   a,#$00
0704: c4 05     mov   $05,a
0706: f4 8c     mov   a,$8c+x
0708: fb 7c     mov   y,$7c+x
070a: 7a 04     addw  ya,$04
070c: db 7c     mov   $7c+x,y
070e: d4 8c     mov   $8c+x,a
0710: 2f 1b     bra   $072d
0712: f5 74 01  mov   a,$0174+x
0715: c4 04     mov   $04,a
0717: 68 00     cmp   a,#$00
0719: 10 04     bpl   $071f
071b: e8 ff     mov   a,#$ff
071d: 2f 02     bra   $0721
071f: e8 00     mov   a,#$00
0721: c4 05     mov   $05,a
0723: f4 8c     mov   a,$8c+x
0725: fb 7c     mov   y,$7c+x
0727: 7a 04     addw  ya,$04
0729: db 7c     mov   $7c+x,y
072b: d4 8c     mov   $8c+x,a
072d: f5 a4 01  mov   a,$01a4+x
0730: d0 10     bne   $0742
0732: 7d        mov   a,x
0733: 28 07     and   a,#$07
0735: 9f        xcn   a
0736: 08 02     or    a,#$02
0738: c4 f2     mov   $f2,a ;VxPITCHL
073a: f4 8c     mov   a,$8c+x
073c: c4 f3     mov   $f3,a
073e: ab f2     inc   $f2   ;VxPITCHH
0740: cb f3     mov   $f3,y
0742: 9b 9c     dec   $9c+x
0744: d0 05     bne   $074b
0746: e8 ff     mov   a,#$ff
0748: d5 64 01  mov   $0164+x,a
074b: f5 54 01  mov   a,$0154+x
074e: 28 02     and   a,#$02
0750: f0 53     beq   $07a5
0752: f4 cc     mov   a,$cc+x
0754: f0 04     beq   $075a
0756: 9b cc     dec   $cc+x
0758: 2f 4b     bra   $07a5
075a: 9b bc     dec   $bc+x
075c: d0 47     bne   $07a5
075e: f5 04 02  mov   a,$0204+x
0761: d4 bc     mov   $bc+x,a
0763: f5 24 02  mov   a,$0224+x
0766: c4 04     mov   $04,a
0768: 68 00     cmp   a,#$00
076a: 10 04     bpl   $0770
076c: e8 ff     mov   a,#$ff
076e: 2f 02     bra   $0772
0770: e8 00     mov   a,#$00
0772: c4 05     mov   $05,a
0774: f4 8c     mov   a,$8c+x
0776: fb 7c     mov   y,$7c+x
0778: 7a 04     addw  ya,$04
077a: db 7c     mov   $7c+x,y
077c: d4 8c     mov   $8c+x,a
077e: f5 a4 01  mov   a,$01a4+x
0781: d0 10     bne   $0793
0783: 7d        mov   a,x
0784: 28 07     and   a,#$07
0786: 9f        xcn   a
0787: 08 02     or    a,#$02
0789: c4 f2     mov   $f2,a ;VxPITCHL
078b: f4 8c     mov   a,$8c+x
078d: c4 f3     mov   $f3,a
078f: ab f2     inc   $f2   ;VxPITCHH
0791: cb f3     mov   $f3,y
0793: 9b ac     dec   $ac+x
0795: d0 0e     bne   $07a5
0797: f5 f4 01  mov   a,$01f4+x
079a: d4 ac     mov   $ac+x,a
079c: f5 24 02  mov   a,$0224+x
079f: 48 ff     eor   a,#$ff
07a1: bc        inc   a
07a2: d5 24 02  mov   $0224+x,a
07a5: 6f        ret

;VCMD $00 - End of Track
07a6: ce        pop   x
07a7: e8 00     mov   a,#$00
07a9: d5 14 01  mov   $0114+x,a
07ac: f5 a4 01  mov   a,$01a4+x
07af: d0 08     bne   $07b9
07b1: 8f 5c f2  mov   $f2,#$5c ;KOFF
07b4: f5 71 0c  mov   a,$0c71+x
07b7: c4 f3     mov   $f3,a
07b9: 7d        mov   a,x
07ba: 68 08     cmp   a,#$08
07bc: 90 17     bcc   $07d5
07be: 4d        push  x
07bf: 80        setc
07c0: a8 08     sbc   a,#$08
07c2: 5d        mov   x,a
07c3: e8 00     mov   a,#$00
07c5: d5 a4 01  mov   $01a4+x,a
07c8: 8f 3d f2  mov   $f2,#$3d ;NON
07cb: f5 71 0c  mov   a,$0c71+x
07ce: 48 ff     eor   a,#$ff
07d0: 24 f3     and   a,$f3
07d2: c4 f3     mov   $f3,a
07d4: ce        pop   x
07d5: e8 00     mov   a,#$00
07d7: 6f        ret

;VCMD $01 - Sample ID
07d8: ce        pop   x
07d9: e8 00     mov   a,#$00
07db: d4 6c     mov   $6c+x,a
07dd: 8d 01     mov   y,#$01
07df: db 3c     mov   $3c+x,y
07e1: e8 00     mov   a,#$00
07e3: d4 2c     mov   $2c+x,a
07e5: f7 04     mov   a,($04)+y ;Fetch VxSRCN ID
07e7: d5 34 02  mov   $0234+x,a
07ea: 8f 02 04  mov   $04,#$02
07ed: 8f 00 05  mov   $05,#$00
07f0: f4 4c     mov   a,$4c+x
07f2: fb 5c     mov   y,$5c+x
07f4: 7a 04     addw  ya,$04
07f6: db 5c     mov   $5c+x,y
07f8: d4 4c     mov   $4c+x,a
07fa: e8 01     mov   a,#$01
07fc: 6f        ret

;VCMD $02 - Left/Right Volume
;(Note: This sound driver only supports mono)
07fd: ce        pop   x
07fe: 8d 01     mov   y,#$01
0800: db 3c     mov   $3c+x,y
0802: e8 00     mov   a,#$00
0804: d4 2c     mov   $2c+x,a
0806: f7 04     mov   a,($04)+y ;Fetch VxVOLL
0808: fc        inc   y
0809: 60        clrc
080a: 97 04     adc   a,($04)+y ;Fetch VxVOLR
080c: 7c        ror   a
080d: d5 44 02  mov   $0244+x,a
0810: d5 54 02  mov   $0254+x,a
0813: 8f 03 04  mov   $04,#$03
0816: 5f ed 07  jmp   $07ed

;VCMD $03 - Jump
0819: ce        pop   x
081a: 8d 01     mov   y,#$01
081c: db 3c     mov   $3c+x,y
081e: e8 00     mov   a,#$00
0820: d4 2c     mov   $2c+x,a
0822: f7 04     mov   a,($04)+y ;Fetch low byte of pointer
0824: d4 4c     mov   $4c+x,a
0826: fc        inc   y
0827: f7 04     mov   a,($04)+y ;Fetch high byte of pointer
0829: d4 5c     mov   $5c+x,a
082b: e8 01     mov   a,#$01
082d: 6f        ret

;VCMD $04 - Call Subroutine with Repeat Counter
;Subroutines have stack support. Based off of the memory allocation, there
;is an 8-layer limit.
082e: ce        pop   x
082f: 8d 01     mov   y,#$01
0831: db 3c     mov   $3c+x,y
0833: e8 00     mov   a,#$00
0835: d4 2c     mov   $2c+x,a
0837: f7 04     mov   a,($04)+y ;Fetch loop counter
0839: c4 08     mov   $08,a
083b: fc        inc   y
083c: f7 04     mov   a,($04)+y ;Fetch low byte of pointer
083e: c4 06     mov   $06,a
0840: fc        inc   y
0841: f7 04     mov   a,($04)+y ;Fetch high byte of pointer
0843: c4 07     mov   $07,a
0845: fb dc     mov   y,$dc+x
0847: e4 08     mov   a,$08
0849: d6 84 03  mov   $0384+y,a
084c: f4 5c     mov   a,$5c+x
084e: d6 04 03  mov   $0304+y,a
0851: f4 4c     mov   a,$4c+x
0853: d6 84 02  mov   $0284+y,a
0856: bb dc     inc   $dc+x
0858: e4 06     mov   a,$06
085a: d4 4c     mov   $4c+x,a
085c: e4 07     mov   a,$07
085e: d4 5c     mov   $5c+x,a
0860: e8 01     mov   a,#$01
0862: 6f        ret

;VCMD $05 - Return from Subroutine
0863: ce        pop   x
0864: e8 01     mov   a,#$01
0866: d4 3c     mov   $3c+x,a
0868: e8 00     mov   a,#$00
086a: d4 2c     mov   $2c+x,a
086c: 9b dc     dec   $dc+x
086e: fb dc     mov   y,$dc+x
0870: f6 04 03  mov   a,$0304+y
0873: d4 5c     mov   $5c+x,a
0875: f6 84 02  mov   a,$0284+y
0878: d4 4c     mov   $4c+x,a
087a: f6 84 03  mov   a,$0384+y
087d: 9c        dec   a
087e: d6 84 03  mov   $0384+y,a
0881: f0 20     beq   $08a3
0883: f4 4c     mov   a,$4c+x
0885: c4 04     mov   $04,a
0887: f4 5c     mov   a,$5c+x
0889: c4 05     mov   $05,a
088b: 8d 02     mov   y,#$02
088d: f7 04     mov   a,($04)+y
088f: c4 06     mov   $06,a
0891: fc        inc   y
0892: f7 04     mov   a,($04)+y
0894: c4 07     mov   $07,a
0896: bb dc     inc   $dc+x
0898: e4 06     mov   a,$06
089a: d4 4c     mov   $4c+x,a
089c: e4 07     mov   a,$07
089e: d4 5c     mov   $5c+x,a
08a0: e8 01     mov   a,#$01
08a2: 6f        ret
08a3: 8f 04 04  mov   $04,#$04
08a6: 5f ed 07  jmp   $07ed

;VCMD $06 - Note Length Carry (Default Duration On)
08a9: ce        pop   x
08aa: e8 00     mov   a,#$00
08ac: d4 2c     mov   $2c+x,a
08ae: 8d 01     mov   y,#$01
08b0: db 3c     mov   $3c+x,y
08b2: f7 04     mov   a,($04)+y
08b4: d5 24 01  mov   $0124+x,a
08b7: f5 94 01  mov   a,$0194+x
08ba: f0 0c     beq   $08c8
08bc: f5 24 01  mov   a,$0124+x
08bf: d5 34 01  mov   $0134+x,a
08c2: fc        inc   y
08c3: f7 04     mov   a,($04)+y
08c5: d5 24 01  mov   $0124+x,a
08c8: fc        inc   y
08c9: cb 04     mov   $04,y
08cb: 5f ed 07  jmp   $07ed

;VCMD $07 - No Note Length Carry (Default Duration Off)
08ce: ce        pop   x
08cf: e8 00     mov   a,#$00
08d1: d5 24 01  mov   $0124+x,a
08d4: d5 34 01  mov   $0134+x,a
08d7: e8 01     mov   a,#$01
08d9: c4 04     mov   $04,a
08db: d4 3c     mov   $3c+x,a
08dd: e8 00     mov   a,#$00
08df: d4 2c     mov   $2c+x,a
08e1: 5f ed 07  jmp   $07ed

;VCMD $08 - Pitch Envelope
08e4: ce        pop   x
08e5: f5 54 01  mov   a,$0154+x
08e8: 08 01     or    a,#$01
08ea: d5 54 01  mov   $0154+x,a
08ed: 8d 01     mov   y,#$01
08ef: db 3c     mov   $3c+x,y
08f1: e8 00     mov   a,#$00
08f3: d4 2c     mov   $2c+x,a
08f5: f7 04     mov   a,($04)+y
08f7: d5 b4 01  mov   $01b4+x,a
08fa: fc        inc   y
08fb: f7 04     mov   a,($04)+y
08fd: d5 c4 01  mov   $01c4+x,a
0900: fc        inc   y
0901: f7 04     mov   a,($04)+y
0903: d5 d4 01  mov   $01d4+x,a
0906: fc        inc   y
0907: f7 04     mov   a,($04)+y
0909: d5 74 01  mov   $0174+x,a
090c: fc        inc   y
090d: f7 04     mov   a,($04)+y
090f: d5 e4 01  mov   $01e4+x,a
0912: 8f 06 04  mov   $04,#$06
0915: 5f ed 07  jmp   $07ed

;VCMD $09 - Pitch Envelope Inverted
0918: ce        pop   x
0919: f5 54 01  mov   a,$0154+x
091c: 08 01     or    a,#$01
091e: d5 54 01  mov   $0154+x,a
0921: 8d 01     mov   y,#$01
0923: db 3c     mov   $3c+x,y
0925: e8 00     mov   a,#$00
0927: d4 2c     mov   $2c+x,a
0929: f7 04     mov   a,($04)+y
092b: d5 b4 01  mov   $01b4+x,a
092e: fc        inc   y
092f: f7 04     mov   a,($04)+y
0931: d5 c4 01  mov   $01c4+x,a
0934: fc        inc   y
0935: f7 04     mov   a,($04)+y
0937: d5 d4 01  mov   $01d4+x,a
093a: fc        inc   y
093b: f7 04     mov   a,($04)+y
093d: 48 ff     eor   a,#$ff
093f: bc        inc   a
0940: d5 74 01  mov   $0174+x,a
0943: fc        inc   y
0944: f7 04     mov   a,($04)+y
0946: d5 e4 01  mov   $01e4+x,a
0949: 8f 06 04  mov   $04,#$06
094c: 5f ed 07  jmp   $07ed

;VCMD $0A - Pitch Slide Disable
094f: ce        pop   x
0950: f5 54 01  mov   a,$0154+x
0953: 28 fe     and   a,#$fe
0955: d5 54 01  mov   $0154+x,a
0958: e8 01     mov   a,#$01
095a: c4 04     mov   $04,a
095c: d4 3c     mov   $3c+x,a
095e: e8 00     mov   a,#$00
0960: d4 2c     mov   $2c+x,a
0962: 5f ed 07  jmp   $07ed

;VCMD $0B - Tempo
0965: ce        pop   x
0966: 8d 01     mov   y,#$01
0968: f7 04     mov   a,($04)+y
096a: c4 2a     mov   $2a,a
096c: e8 01     mov   a,#$01
096e: d4 3c     mov   $3c+x,a
0970: e8 00     mov   a,#$00
0972: d4 2c     mov   $2c+x,a
0974: e8 02     mov   a,#$02
0976: c4 04     mov   $04,a
0978: 5f ed 07  jmp   $07ed

;VCMD $0C - Relative Tempo
097b: ce        pop   x
097c: 8d 01     mov   y,#$01
097e: f7 04     mov   a,($04)+y
0980: 60        clrc
0981: 84 2a     adc   a,$2a
0983: c4 2a     mov   $2a,a
0985: e8 01     mov   a,#$01
0987: d4 3c     mov   $3c+x,a
0989: e8 00     mov   a,#$00
098b: d4 2c     mov   $2c+x,a
098d: e8 02     mov   a,#$02
098f: c4 04     mov   $04,a
0991: 5f ed 07  jmp   $07ed

;VCMD $0D - Vibrato (No Delay)
0994: ce        pop   x
0995: f5 54 01  mov   a,$0154+x
0998: 08 02     or    a,#$02
099a: d5 54 01  mov   $0154+x,a
099d: 8d 01     mov   y,#$01
099f: db 3c     mov   $3c+x,y
09a1: e8 00     mov   a,#$00
09a3: d4 2c     mov   $2c+x,a
09a5: f7 04     mov   a,($04)+y
09a7: d5 f4 01  mov   $01f4+x,a
09aa: fc        inc   y
09ab: f7 04     mov   a,($04)+y
09ad: d5 04 02  mov   $0204+x,a
09b0: fc        inc   y
09b1: f7 04     mov   a,($04)+y
09b3: d5 24 02  mov   $0224+x,a
09b6: e8 00     mov   a,#$00
09b8: d5 14 02  mov   $0214+x,a
09bb: 8f 04 04  mov   $04,#$04
09be: 5f ed 07  jmp   $07ed

;VCMD $0E - Vibrato Disable
09c1: ce        pop   x
09c2: f5 54 01  mov   a,$0154+x
09c5: 28 fd     and   a,#$fd
09c7: d5 54 01  mov   $0154+x,a
09ca: e8 01     mov   a,#$01
09cc: c4 04     mov   $04,a
09ce: d4 3c     mov   $3c+x,a
09d0: e8 00     mov   a,#$00
09d2: d4 2c     mov   $2c+x,a
09d4: 5f ed 07  jmp   $07ed

;VCMD $0F - Vibrato
09d7: ce        pop   x
09d8: f5 54 01  mov   a,$0154+x
09db: 08 02     or    a,#$02
09dd: d5 54 01  mov   $0154+x,a
09e0: 8d 01     mov   y,#$01
09e2: db 3c     mov   $3c+x,y
09e4: e8 00     mov   a,#$00
09e6: d4 2c     mov   $2c+x,a
09e8: f7 04     mov   a,($04)+y
09ea: d5 f4 01  mov   $01f4+x,a
09ed: fc        inc   y
09ee: f7 04     mov   a,($04)+y
09f0: d5 04 02  mov   $0204+x,a
09f3: fc        inc   y
09f4: f7 04     mov   a,($04)+y
09f6: d5 24 02  mov   $0224+x,a
09f9: fc        inc   y
09fa: f7 04     mov   a,($04)+y
09fc: d5 14 02  mov   $0214+x,a
09ff: 8f 05 04  mov   $04,#$05
0a02: 5f ed 07  jmp   $07ed

;VCMD $10 - VxADSR
0a05: ce        pop   x
0a06: 8d 01     mov   y,#$01
0a08: db 3c     mov   $3c+x,y
0a0a: e8 00     mov   a,#$00
0a0c: d4 2c     mov   $2c+x,a
0a0e: f7 04     mov   a,($04)+y
0a10: d5 64 02  mov   $0264+x,a
0a13: fc        inc   y
0a14: f7 04     mov   a,($04)+y
0a16: d5 74 02  mov   $0274+x,a
0a19: 8f 03 04  mov   $04,#$03
0a1c: 5f ed 07  jmp   $07ed

;VCMD $11 - Main Volume
;(Note: This sound driver only supports mono)
0a1f: ce        pop   x
0a20: 8f 0c f2  mov   $f2,#$0c ;MVOLL
0a23: 8d 01     mov   y,#$01
0a25: db 3c     mov   $3c+x,y
0a27: e8 00     mov   a,#$00
0a29: d4 2c     mov   $2c+x,a
0a2b: f7 04     mov   a,($04)+y
0a2d: c4 f3     mov   $f3,a
0a2f: fc        inc   y
0a30: 60        clrc
0a31: 97 04     adc   a,($04)+y
0a33: 7c        ror   a
0a34: c5 00 01  mov   $0100,a
;BUG: This meant to set the MVOLR DSP register, but did an increment to EFB
;instead. MVOLR is at ID $1C, not $0D.
0a37: ab f2     inc   $f2     ;EFB
0a39: c4 f3     mov   $f3,a
0a3b: c5 01 01  mov   $0101,a
0a3e: 8f 03 04  mov   $04,#$03
0a41: 5f ed 07  jmp   $07ed

;VCMD $12 - Fine Tune
0a44: ce        pop   x
0a45: 8d 01     mov   y,#$01
0a47: db 3c     mov   $3c+x,y
0a49: e8 00     mov   a,#$00
0a4b: d4 2c     mov   $2c+x,a
0a4d: f7 04     mov   a,($04)+y
0a4f: d4 6c     mov   $6c+x,a
0a51: 8f 02 04  mov   $04,#$02
0a54: 5f ed 07  jmp   $07ed

;VCMD $13 - Absolute Single Track Transposition
0a57: ce        pop   x
0a58: 8d 01     mov   y,#$01
0a5a: db 3c     mov   $3c+x,y
0a5c: e8 00     mov   a,#$00
0a5e: d4 2c     mov   $2c+x,a
0a60: f7 04     mov   a,($04)+y
0a62: d5 44 01  mov   $0144+x,a
0a65: 8f 02 04  mov   $04,#$02
0a68: 5f ed 07  jmp   $07ed

;VCMD $14 - Relative Single Track Transposition
0a6b: ce        pop   x
0a6c: 8d 01     mov   y,#$01
0a6e: db 3c     mov   $3c+x,y
0a70: e8 00     mov   a,#$00
0a72: d4 2c     mov   $2c+x,a
0a74: f7 04     mov   a,($04)+y
0a76: 60        clrc
0a77: 95 44 01  adc   a,$0144+x
0a7a: d5 44 01  mov   $0144+x,a
0a7d: 8f 02 04  mov   $04,#$02
0a80: 5f ed 07  jmp   $07ed

;VCMD $15 - NOP (Skip 4 Parameter Bytes)
0a83: ce        pop   x
0a84: 8f 05 04  mov   $04,#$05
0a87: 5f ed 07  jmp   $07ed

;VCMD $16 - Enable Echo For Channel
0a8a: ce        pop   x
0a8b: 8f 4d f2  mov   $f2,#$4d ;EON
0a8e: f5 71 0c  mov   a,$0c71+x
0a91: 04 f3     or    a,$f3
0a93: c4 f3     mov   $f3,a
0a95: e8 00     mov   a,#$00
0a97: d4 2c     mov   $2c+x,a
0a99: e8 01     mov   a,#$01
0a9b: d4 3c     mov   $3c+x,a
0a9d: c4 04     mov   $04,a
0a9f: 5f ed 07  jmp   $07ed

;VCMD $17 - Disable Echo For Channel
0aa2: ce        pop   x
0aa3: 8f 4d f2  mov   $f2,#$4d ;EON
0aa6: f5 71 0c  mov   a,$0c71+x
0aa9: 48 ff     eor   a,#$ff
0aab: 24 f3     and   a,$f3
0aad: c4 f3     mov   $f3,a
0aaf: e8 00     mov   a,#$00
0ab1: d4 2c     mov   $2c+x,a
0ab3: e8 01     mov   a,#$01
0ab5: d4 3c     mov   $3c+x,a
0ab7: c4 04     mov   $04,a
0ab9: 5f ed 07  jmp   $07ed

;VCMD $18 - Set FIR Coefficients
0abc: ce        pop   x
0abd: 8d 01     mov   y,#$01
0abf: db 3c     mov   $3c+x,y
0ac1: e8 00     mov   a,#$00
0ac3: d4 2c     mov   $2c+x,a
0ac5: 8f 0f f2  mov   $f2,#$0f ;FIRx
0ac8: f7 04     mov   a,($04)+y
0aca: c4 f3     mov   $f3,a
0acc: fc        inc   y
0acd: 60        clrc
0ace: 98 10 f2  adc   $f2,#$10
0ad1: 78 8f f2  cmp   $f2,#$8f
0ad4: d0 f2     bne   $0ac8
0ad6: 8f 09 04  mov   $04,#$09
0ad9: 5f ed 07  jmp   $07ed

;VCMD $19 - Noise Clock
;(although this can also set other FLG bits except for echo writes, which
;are permanently disabled for this build courtesy of $12)
0adc: ce        pop   x
0add: 8d 01     mov   y,#$01
0adf: db 3c     mov   $3c+x,y
0ae1: e8 00     mov   a,#$00
0ae3: d4 2c     mov   $2c+x,a
0ae5: f7 04     mov   a,($04)+y
0ae7: c4 11     mov   $11,a
0ae9: 04 12     or    a,$12
0aeb: 8f 6c f2  mov   $f2,#$6c ;FLG
0aee: c4 f3     mov   $f3,a
0af0: 8f 02 04  mov   $04,#$02
0af3: 5f ed 07  jmp   $07ed

;VCMD $1A - Enable Noise For Channel
0af6: ce        pop   x
0af7: 8f 3d f2  mov   $f2,#$3d ;NON
0afa: f5 71 0c  mov   a,$0c71+x
0afd: 04 f3     or    a,$f3
0aff: c4 f3     mov   $f3,a
0b01: e8 00     mov   a,#$00
0b03: d4 2c     mov   $2c+x,a
0b05: e8 01     mov   a,#$01
0b07: d4 3c     mov   $3c+x,a
0b09: c4 04     mov   $04,a
0b0b: 5f ed 07  jmp   $07ed

;VCMD $1B - Disable Noise For Channel
0b0e: ce        pop   x
0b0f: 8f 3d f2  mov   $f2,#$3d ;NON
0b12: f5 71 0c  mov   a,$0c71+x
0b15: 48 ff     eor   a,#$ff
0b17: 24 f3     and   a,$f3
0b19: c4 f3     mov   $f3,a
0b1b: e8 00     mov   a,#$00
0b1d: d4 2c     mov   $2c+x,a
0b1f: e8 01     mov   a,#$01
0b21: d4 3c     mov   $3c+x,a
0b23: c4 04     mov   $04,a
0b25: 5f ed 07  jmp   $07ed

;VCMD $1C-$20 - Save Preset
;VCMD $1C - Save Preset #1
0b28: cd 00     mov   x,#$00
0b2a: 2f 0e     bra   $0b3a
;VCMD $1D - Save Preset #2
0b2c: cd 01     mov   x,#$01
0b2e: 2f 0a     bra   $0b3a
;VCMD $1E - Save Preset #3
0b30: cd 02     mov   x,#$02
0b32: 2f 06     bra   $0b3a
;VCMD $1F - Save Preset #4
0b34: cd 03     mov   x,#$03
0b36: 2f 02     bra   $0b3a
;VCMD $20 - Save Preset #5
0b38: cd 04     mov   x,#$04
0b3a: 8d 01     mov   y,#$01
0b3c: f7 04     mov   a,($04)+y ;Fetch VxVOLL
0b3e: d4 14     mov   $14+x,a
0b40: fc        inc   y
0b41: f7 04     mov   a,($04)+y ;Fetch VxVOLR
0b43: d4 19     mov   $19+x,a
0b45: fc        inc   y
0b46: f7 04     mov   a,($04)+y ;Fetch VxADSR1
0b48: d4 1e     mov   $1e+x,a
0b4a: fc        inc   y
0b4b: f7 04     mov   a,($04)+y ;Fetch VxADSR2
0b4d: d4 23     mov   $23+x,a
0b4f: ce        pop   x
0b50: e8 01     mov   a,#$01
0b52: d4 3c     mov   $3c+x,a
0b54: e8 00     mov   a,#$00
0b56: d4 2c     mov   $2c+x,a
0b58: 8f 05 04  mov   $04,#$05
0b5b: 5f ed 07  jmp   $07ed

;VCMD $21-$25 - Load Preset
;VCMD $21 - Load Preset #1
0b5e: cd 00     mov   x,#$00
0b60: 2f 0e     bra   $0b70
;VCMD $22 - Load Preset #1
0b62: cd 01     mov   x,#$01
0b64: 2f 0a     bra   $0b70
;VCMD $23 - Load Preset #1
0b66: cd 02     mov   x,#$02
0b68: 2f 06     bra   $0b70
;VCMD $24 - Load Preset #1
0b6a: cd 03     mov   x,#$03
0b6c: 2f 02     bra   $0b70
;VCMD $25 - Load Preset #1
0b6e: cd 04     mov   x,#$04
0b70: ae        pop   a
0b71: 2d        push  a
0b72: 9f        xcn   a
0b73: c4 04     mov   $04,a
0b75: c4 f2     mov   $f2,a ;VxVOLL
0b77: f4 14     mov   a,$14+x
0b79: c4 f3     mov   $f3,a
0b7b: ab f2     inc   $f2   ;VxVOLR
0b7d: f4 19     mov   a,$19+x
0b7f: c4 f3     mov   $f3,a
0b81: e4 04     mov   a,$04
0b83: 08 05     or    a,#$05
0b85: c4 f2     mov   $f2,a ;VxADSR1
0b87: f4 1e     mov   a,$1e+x
0b89: c4 f3     mov   $f3,a
0b8b: ab f2     inc   $f2   ;VxADSR2
0b8d: f4 23     mov   a,$23+x
0b8f: c4 f3     mov   $f3,a
0b91: ce        pop   x
0b92: e8 00     mov   a,#$00
0b94: d4 2c     mov   $2c+x,a
0b96: e8 01     mov   a,#$01
0b98: d4 3c     mov   $3c+x,a
0b9a: c4 04     mov   $04,a
0b9c: 5f ed 07  jmp   $07ed

;VCMD $26 - Ping-Pong Pitch Envelope
0b9f: ce        pop   x
0ba0: f5 54 01  mov   a,$0154+x
0ba3: 08 01     or    a,#$01
0ba5: d5 54 01  mov   $0154+x,a
0ba8: 8d 01     mov   y,#$01
0baa: db 3c     mov   $3c+x,y
0bac: e8 00     mov   a,#$00
0bae: d4 2c     mov   $2c+x,a
0bb0: f7 04     mov   a,($04)+y
0bb2: d5 b4 01  mov   $01b4+x,a
0bb5: fc        inc   y
0bb6: f7 04     mov   a,($04)+y
0bb8: d5 c4 01  mov   $01c4+x,a
0bbb: fc        inc   y
0bbc: f7 04     mov   a,($04)+y
0bbe: d5 e4 01  mov   $01e4+x,a
0bc1: 1c        asl   a
0bc2: d5 d4 01  mov   $01d4+x,a
0bc5: fc        inc   y
0bc6: f7 04     mov   a,($04)+y
0bc8: 48 ff     eor   a,#$ff
0bca: bc        inc   a
0bcb: d5 74 01  mov   $0174+x,a
0bce: 8f 05 04  mov   $04,#$05
0bd1: 5f ed 07  jmp   $07ed

;VCMD $27 - Ping-Pong Pitch Envelope Inverted
0bd4: ce        pop   x
0bd5: f5 54 01  mov   a,$0154+x
0bd8: 08 01     or    a,#$01
0bda: d5 54 01  mov   $0154+x,a
0bdd: 8d 01     mov   y,#$01
0bdf: db 3c     mov   $3c+x,y
0be1: e8 00     mov   a,#$00
0be3: d4 2c     mov   $2c+x,a
0be5: f7 04     mov   a,($04)+y
0be7: d5 b4 01  mov   $01b4+x,a
0bea: fc        inc   y
0beb: f7 04     mov   a,($04)+y
0bed: d5 c4 01  mov   $01c4+x,a
0bf0: fc        inc   y
0bf1: f7 04     mov   a,($04)+y
0bf3: d5 e4 01  mov   $01e4+x,a
0bf6: 1c        asl   a
0bf7: d5 d4 01  mov   $01d4+x,a
0bfa: fc        inc   y
0bfb: f7 04     mov   a,($04)+y
0bfd: d5 74 01  mov   $0174+x,a
0c00: 8f 05 04  mov   $04,#$05
0c03: 5f ed 07  jmp   $07ed

;VCMD $28 - Sample ID + L/R Note Volume
0c06: ce        pop   x
0c07: 8d 01     mov   y,#$01
0c09: db 3c     mov   $3c+x,y
0c0b: e8 00     mov   a,#$00
0c0d: d4 6c     mov   $6c+x,a
0c0f: d4 2c     mov   $2c+x,a
0c11: f7 04     mov   a,($04)+y
0c13: d5 34 02  mov   $0234+x,a
0c16: fc        inc   y
0c17: f7 04     mov   a,($04)+y
0c19: fc        inc   y
0c1a: 60        clrc
0c1b: 97 04     adc   a,($04)+y
0c1d: 5c        lsr   a
0c1e: d5 44 02  mov   $0244+x,a
0c21: d5 54 02  mov   $0254+x,a
0c24: 8f 04 04  mov   $04,#$04
0c27: 5f ed 07  jmp   $07ed

;VCMD $29 - Fade Out
0c2a: ce        pop   x
0c2b: 8d 01     mov   y,#$01
0c2d: db 3c     mov   $3c+x,y
0c2f: e8 00     mov   a,#$00
0c31: d4 2c     mov   $2c+x,a
0c33: f7 04     mov   a,($04)+y
0c35: c4 10     mov   $10,a
0c37: 8f 02 04  mov   $04,#$02
0c3a: 5f ed 07  jmp   $07ed

;VCMD $2A - Set Timer 0
0c3d: ce        pop   x
0c3e: 8d 00     mov   y,#$00
0c40: db 2c     mov   $2c+x,y
0c42: fc        inc   y
0c43: db 3c     mov   $3c+x,y
0c45: f7 04     mov   a,($04)+y
0c47: c4 ec     mov   $ec,a
0c49: 8f 02 04  mov   $04,#$02
0c4c: 5f ed 07  jmp   $07ed

;VCMD $2B - Enable 16-Bit Note Durations
0c4f: ce        pop   x
0c50: e8 01     mov   a,#$01
0c52: db 3c     mov   $3c+x,y
0c54: 9c        dec   a
0c55: d4 2c     mov   $2c+x,a
0c57: d5 94 01  mov   $0194+x,a
0c5a: c4 04     mov   $04,a
0c5c: 5f ed 07  jmp   $07ed

;VCMD $2C - Disable 16-Bit Note Durations
0c5f: ce        pop   x
0c60: 8d 01     mov   y,#$01
0c62: db 3c     mov   $3c+x,y
0c64: e8 00     mov   a,#$00
0c66: d4 2c     mov   $2c+x,a
0c68: d5 94 01  mov   $0194+x,a
0c6b: 8f 01 04  mov   $04,#$01
0c6e: 5f ed 07  jmp   $07ed

0c71: db $01,$02,$04,$08,$10,$20,$40,$80
0c79: db $01,$02,$04,$08,$10,$20,$40,$80

;VCMD dispatch table
0c81: dw $07a6 ;$00 - End of Track
0c83: dw $07d8 ;$01 - Sample ID
0c85: dw $07fd ;$02 - Left/Right Volume
0c87: dw $0819 ;$03 - Jump
0c89: dw $082e ;$04 - Call Subroutine with Repeat Counter
0c8b: dw $0863 ;$05 - Return from Subroutine
0c8d: dw $08a9 ;$06 - Note Length Carry (Default Duration On)
0c8f: dw $08ce ;$07 - No Note Length Carry (Default Duration Off)
0c91: dw $08e4 ;$08 - Pitch Envelope
0c93: dw $0918 ;$09 - Pitch Envelope Inverted
0c95: dw $094f ;$0A - Pitch Slide Disable
0c97: dw $0965 ;$0B - Tempo
0c99: dw $097b ;$0C - Relative Tempo
0c9b: dw $0994 ;$0D - Vibrato (No Delay)
0c9d: dw $09c1 ;$0E - Vibrato Disable
0c9f: dw $09d7 ;$0F - Vibrato
0ca1: dw $0a05 ;$10 - VxADSR
0ca3: dw $0a1f ;$11 - Main Volume
0ca5: dw $0a44 ;$12 - Fine Tune
0ca7: dw $0a57 ;$13 - Absolute Single Track Transposition
0ca9: dw $0a6b ;$14 - Relative Single Track Transposition
0cab: dw $0a83 ;$15 - NOP (Skip 4 Parameter Bytes)
0cad: dw $0a8a ;$16 - Enable Echo For Channel
0caf: dw $0aa2 ;$17 - Disable Echo For Channel
0cb1: dw $0abc ;$18 - Set FIR Coefficients
0cb3: dw $0adc ;$19 - Noise Clock
0cb5: dw $0af6 ;$1A - Enable Noise For Channel
0cb7: dw $0b0e ;$1B - Disable Noise For Channel
0cb9: dw $0b28 ;$1C - Save Preset #1
0cbb: dw $0b2c ;$1D - Save Preset #2
0cbd: dw $0b30 ;$1E - Save Preset #3
0cbf: dw $0b34 ;$1F - Save Preset #4
0cc1: dw $0b38 ;$20 - Save Preset #5
0cc3: dw $0b5e ;$21 - Load Preset #1
0cc5: dw $0b62 ;$22 - Load Preset #2
0cc7: dw $0b66 ;$23 - Load Preset #3
0cc9: dw $0b6a ;$24 - Load Preset #4
0ccb: dw $0b6e ;$25 - Load Preset #5
0ccd: dw $0b9f ;$26 - Ping-Pong Pitch Envelope
0ccf: dw $0bd4 ;$27 - Ping-Pong Pitch Envelope Inverted
0cd1: dw $0c06 ;$28 - Sample ID + L/R Note Volume
0cd3: dw $0c2a ;$29 - Fade Out
0cd5: dw $0c3d ;$2A - Set Timer 0
0cd7: dw $0c4f ;$2B - Enable 16-Bit Note Durations
0cd9: dw $0c5f ;$2C - Disable 16-Bit Note Durations
               ;$2D-$7F - Invalid

;Initialize music
0cdb: e8 00     mov   a,#$00
0cdd: 8f 6c f2  mov   $f2,#$6c ;FLG
0ce0: 8f e0 f3  mov   $f3,#$e0
0ce3: 8f 7d f2  mov   $f2,#$7d ;EDL
0ce6: 8f 00 f3  mov   $f3,#$00
0ce9: 8f 0d f2  mov   $f2,#$0d ;EFB
0cec: 8f 00 f3  mov   $f3,#$00
0cef: 8f 6d f2  mov   $f2,#$6d ;FLG
0cf2: 8f fd f3  mov   $f3,#$fd
0cf5: e8 00     mov   a,#$00
0cf7: 8f 2c f2  mov   $f2,#$2c ;EVOLL
0cfa: c5 02 01  mov   $0102,a
0cfd: c4 f3     mov   $f3,a
0cff: 8f 3c f2  mov   $f2,#$3c ;EVOLR
0d02: c5 03 01  mov   $0103,a
0d05: c4 f3     mov   $f3,a
0d07: 8f 4c f2  mov   $f2,#$4c ;KON
0d0a: c4 f3     mov   $f3,a
0d0c: 8f 5c f2  mov   $f2,#$5c ;KOFF
0d0f: 8f ff f3  mov   $f3,#$ff
0d12: 8f 2d f2  mov   $f2,#$2d ;PMON
0d15: c4 f3     mov   $f3,a
0d17: 8f 3d f2  mov   $f2,#$3d ;NON
0d1a: c4 f3     mov   $f3,a
0d1c: 8f 4d f2  mov   $f2,#$4d ;EON
0d1f: c4 f3     mov   $f3,a
0d21: e8 7f     mov   a,#$7f
0d23: c5 00 01  mov   $0100,a
0d26: c5 01 01  mov   $0101,a
0d29: 8f 0c f2  mov   $f2,#$0c ;MVOLL
0d2c: c4 f3     mov   $f3,a
0d2e: 8f 1c f2  mov   $f2,#$1c ;MVOLR
0d31: c4 f3     mov   $f3,a
0d33: 8f 5d f2  mov   $f2,#$5d ;DIR
0d36: 8f 25 f3  mov   $f3,#$25
0d39: cd 00     mov   x,#$00
0d3b: 8d 08     mov   y,#$08
0d3d: 8f 00 f2  mov   $f2,#$00 ;VxVOLL
0d40: e8 7f     mov   a,#$7f
0d42: c4 f3     mov   $f3,a
0d44: ab f2     inc   $f2      ;VxVOLR
0d46: c4 f3     mov   $f3,a
0d48: 60        clrc
0d49: 98 04 f2  adc   $f2,#$04 ;VxADSR1
0d4c: e8 00     mov   a,#$00
0d4e: c4 f3     mov   $f3,a
0d50: ab f2     inc   $f2      ;VxADSR2
0d52: c4 f3     mov   $f3,a
0d54: ab f2     inc   $f2      ;VxGAIN
0d56: 8f ff f3  mov   $f3,#$ff
0d59: 60        clrc
0d5a: 98 09 f2  adc   $f2,#$09
0d5d: dc        dec   y
0d5e: d0 e0     bne   $0d40
0d60: 8f 4d f2  mov   $f2,#$4d ;EON
0d63: 8f 00 f3  mov   $f3,#$00
0d66: 8f 4c f2  mov   $f2,#$4c ;KON
0d69: 8f 00 f3  mov   $f3,#$00
0d6c: e8 3c     mov   a,#$3c
0d6e: c4 ec     mov   $ec,a
0d70: e8 20     mov   a,#$20
0d72: c4 12     mov   $12,a
0d74: 8f 08 04  mov   $04,#$08
0d77: cd 00     mov   x,#$00
0d79: 8d 00     mov   y,#$00
0d7b: cb 0e     mov   $0e,y
0d7d: cb 10     mov   $10,y
0d7f: cb 11     mov   $11,y
0d81: cb 05     mov   $05,y
0d83: e8 01     mov   a,#$01
0d85: d4 3c     mov   $3c+x,a
0d87: d5 14 01  mov   $0114+x,a
0d8a: f6 00 0f  mov   a,$0f00+y
0d8d: d4 4c     mov   $4c+x,a
0d8f: f6 01 0f  mov   a,$0f01+y
0d92: d4 5c     mov   $5c+x,a
0d94: e4 05     mov   a,$05
0d96: d4 dc     mov   $dc+x,a
0d98: e8 00     mov   a,#$00
0d9a: d5 94 01  mov   $0194+x,a
0d9d: d4 2c     mov   $2c+x,a
0d9f: d5 24 01  mov   $0124+x,a
0da2: d5 34 01  mov   $0134+x,a
0da5: d5 54 01  mov   $0154+x,a
0da8: d4 6c     mov   $6c+x,a
0daa: d5 44 01  mov   $0144+x,a
0dad: d5 a4 01  mov   $01a4+x,a
0db0: 3d        inc   x
0db1: fc        inc   y
0db2: fc        inc   y
0db3: 60        clrc
0db4: 98 08 05  adc   $05,#$08
0db7: 8b 04     dec   $04
0db9: d0 c8     bne   $0d83
0dbb: f6 00 0f  mov   a,$0f00+y
0dbe: c4 2a     mov   $2a,a
0dc0: e8 00     mov   a,#$00
0dc2: c4 29     mov   $29,a
0dc4: 8f 6c f2  mov   $f2,#$6c ;FLG
0dc7: 8f 20 f3  mov   $f3,#$20
0dca: 6f        ret

;Initialize SFX Instance
0dcb: 1c        asl   a
0dcc: 2d        push  a
0dcd: e8 01     mov   a,#$01
0dcf: d5 a4 01  mov   $01a4+x,a
0dd2: 7d        mov   a,x
0dd3: 60        clrc
0dd4: 88 08     adc   a,#$08
0dd6: 5d        mov   x,a
0dd7: 1c        asl   a
0dd8: 1c        asl   a
0dd9: 1c        asl   a
0dda: d4 dc     mov   $dc+x,a
0ddc: e8 01     mov   a,#$01
0dde: d4 3c     mov   $3c+x,a
0de0: d5 14 01  mov   $0114+x,a
0de3: e8 00     mov   a,#$00
0de5: d5 24 01  mov   $0124+x,a
0de8: d4 2c     mov   $2c+x,a
0dea: d5 94 01  mov   $0194+x,a
0ded: d5 a4 01  mov   $01a4+x,a
0df0: d5 54 01  mov   $0154+x,a
0df3: d5 44 01  mov   $0144+x,a
0df6: d4 6c     mov   $6c+x,a
0df8: d5 64 02  mov   $0264+x,a
0dfb: d5 74 02  mov   $0274+x,a
0dfe: e8 7f     mov   a,#$7f
0e00: d5 44 02  mov   $0244+x,a
0e03: d5 54 02  mov   $0254+x,a
0e06: ee        pop   y
0e07: f6 00 1d  mov   a,$1d00+y
0e0a: d4 4c     mov   $4c+x,a
0e0c: fc        inc   y
0e0d: f6 00 1d  mov   a,$1d00+y
0e10: d4 5c     mov   $5c+x,a
0e12: 6f        ret

;Pitch table
0e13: dw $0000
0e15: dw $0200
0e17: dw $021e
0e19: dw $023f
0e1b: dw $0261
0e1d: dw $0285
0e1f: dw $02ab
0e21: dw $02d4
0e23: dw $02ff
0e25: dw $032d
0e27: dw $035d
0e29: dw $0390
0e2b: dw $03c7
0e2d: dw $0400
0e2f: dw $043d
0e31: dw $047d
0e33: dw $04c2
0e35: dw $050a
0e37: dw $0557
0e39: dw $05a8
0e3b: dw $05fe
0e3d: dw $065a
0e3f: dw $06ba
0e41: dw $0721
0e43: dw $078d
0e45: dw $0800
0e47: dw $087a
0e49: dw $08fb
0e4b: dw $0984
0e4d: dw $0a14
0e4f: dw $0aae
0e51: dw $0b50
0e53: dw $0bfd
0e55: dw $0cb3
0e57: dw $0d74
0e59: dw $0e41
0e5b: dw $0f1a
0e5d: dw $1000
0e5f: dw $10f4
0e61: dw $11f6
0e63: dw $1307
0e65: dw $1429
0e67: dw $155c
0e69: dw $16a1
0e6b: dw $17f9
0e6d: dw $1966
0e6f: dw $1ae9
0e71: dw $1c82
0e73: dw $1e34
0e75: dw $2000
0e77: dw $21e7
0e79: dw $23eb
0e7b: dw $260e
0e7d: dw $2851
0e7f: dw $2ab7
0e81: dw $2d41
0e83: dw $2ff2
0e85: dw $32cc
0e87: dw $35d1
0e89: dw $3904
0e8b: dw $3c68
0e8d: dw $3fff

;Loader Copy (see $FF98)
0e8f: cd 00     mov   x,#$00
0e91: e5 bf ff  mov   a,$ffbf
0e94: 48 80     eor   a,#$80
0e96: c5 bf ff  mov   $ffbf,a
0e99: c4 f4     mov   $f4,a
0e9b: e4 f4     mov   a,$f4
0e9d: 45 bf ff  eor   a,$ffbf
0ea0: 30 f9     bmi   $0e9b
0ea2: d0 03     bne   $0ea7
0ea4: 1f f6 00  jmp   ($00f6+x)
0ea7: 9c        dec   a
0ea8: d0 06     bne   $0eb0
0eaa: e4 f5     mov   a,$f5
0eac: c7 f6     mov   ($f6+x),a
0eae: 2f e1     bra   $0e91
0eb0: e7 f6     mov   a,($f6+x)
0eb2: c4 f5     mov   $f5,a
0eb4: 2f db     bra   $0e91
