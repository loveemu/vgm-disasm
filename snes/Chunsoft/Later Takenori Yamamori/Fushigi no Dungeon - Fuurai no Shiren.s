//Fushigi no Dungeon - Fuurai no Shiren
//Uses WLA-DX syntax

;5b0
SPCStart:
	call !SPC_05dc 	
	bcs SPCStart 	
	call !SPC_0770 	
	bcs SPCStart 	
	mov a,$91 	
	beq SPC_05d2	
	mov x,#$07
SPC_05c0:  
	mov a,$45+x	
	beq SPCStart	
	dec x			
	bpl SPC_05c0	
	mov a,#$4c	
	mov y,$91		
	movw $f2,ya	
	mov $91,#$00	
	bra SPCStart	
SPC_05d2:
	call !SPC_0829	
	bcs SPCStart	
	call !SPC_08ac	
	bra SPCStart	

SPC_05dc:
	mov a,$f4		
	cbne $1a,SPC_05e3
	clrc			
	ret
SPC_05e3:      
	mov ($08),($f5)	
	mov ($09),($f6)	
	mov ($0a),($f7)	
	mov a,$f4		
	mov $f4,a		
	bpl SPC_05f8	
SPC_05f2:    
	mov a,$f4		
	bne SPC_05f2	
	mov $f4,a		
SPC_05f8:    
	mov $1a,a		
	mov a,$08		
	and a,#$f0	
	lsr a			
	lsr a			
	lsr a			
	mov x,a		
	call !SPC_0607	
SPC_0605:
	setc			
	ret

SPC_0607:
	jmp [!SPC_Jumptable_060a+x]  ;0607: 1f 0a 06

SPC_Jumptable_060a:
	.dw SPC_0b8b
	.dw SPC_0b94
	.dw SPC_0ab7
	.dw SPC_06f3
	.dw SPC_0717
	.dw SPC_0605
	.dw SPC_0605
	.dw SPC_0605
	.dw SPC_067d
	.dw SPC_062a
	.dw SPC_0605
	.dw SPC_06d4
	.dw SPC_0735
	.dw SPC_0605
	.dw SPC_0605
	.dw SPC_0605

SPC_062a:	
	mov a,$0a	
	beq SPC_067d 
	mov a,$1c	 
	and a,#$07	
	mov x,a		
	mov a,#$5c	
	mov y,$10+x	
	movw $f2,ya	
	mov a,#$00	
	mov $45+x,a	
	mov a,$08	 
	and a,#$0f	
	mov $25+x,a	
	mov y,a		
	mov a,!$0100+y 
	mov $2d+x,a	
	mov a,$09	 
	mov $35+x,a	
	mov a,$0a	 
	mov $3d+x,a	
	mov a,!$0130+y 
	mov !$0670,a	
	mov a,#$00	
	mov $4d+x,a	
	mov $55+x,a	
	mov $65+x,a	
	mov $6d+x,a	
	mov $75+x,a	
	mov $0b,x	 
	call !SPC_0932 
	mov x,#$1c	
	bra SPC_066d
SPC_066c:
	mov (x)+,a	;mov (x)+, a
SPC_066d:
	mov a,$01+x	
	;this instruction gets modified?
	cmp a,#$00	
	bcs SPC_066c
	mov a,$0b	
	or a,!$0670	
	mov (x),a	
	mov $f3,#$00
	ret ;067c: 6f

SPC_067d:
	and $08,#$0f	
	mov x,#$23	
	bra SPC_068f	
SPC_0684:
	and a,#$07	
	mov y,a		
	mov a,!$0035+y	
	cmp a,$09		
	beq SPC_0695	
SPC_068e:
	dec x			
SPC_068f:
	mov a,(x)		
	cmp a,#$40	
	bcc SPC_0684	
	ret
SPC_0695:
	mov a,$08		
	cmp a,!$0025+y	
	bne SPC_068e	
	push x			
	mov a,y		
	mov x,a		
	mov y,$08		
	mov a,!$01c0+y	
	mov y,a		
	mov a,x		
	xcn a			
	or a,#$07	
	movw $f2,ya	
	mov a,#$04	
	mov $45+x,a	
	pop x			
	push x			
	bra SPC_06c1	
SPC_06b3:
	cmp a,#$40	
	bcc SPC_06c1	
	and a,#$07	
	mov y,a		
	mov a,!$0025+y	
	cmp a,$08		
	beq SPC_06c7	
SPC_06c1:
	dec x			
	mov a,(x)		
	bpl SPC_06b3	
	bra SPC_06cd	
SPC_06c7:
	mov a,(x)		
	eor a,#$c0	
	call !SPC_0797	
SPC_06cd:
	pop x			
	mov a,(x)		
	or a,#$40	
	jmp !SPC_0797	

SPC_06d4:
	mov a,$09		
	cmp a,#$01	
	beq SPC_06ed	
	cmp a,#$07	
	beq SPC_06df	
	ret
SPC_06df:
	mov a,$08		
	and a,#$0f	
	mov x,a		
	mov a,$0a		
	mov !$0140+x,a	
	mov !$0150+x,a	
	ret
SPC_06ed:
	mov ($09),($0a)
	mov $0a,#$00	
SPC_06f3:
	mov a,$08		
	and a,#$0f	
	mov x,a		
	mov a,$09		
	mov !$0110+x,a	
	mov a,$0a		
	mov !$0120+x,a	
	mov a,x		
	mov x,#$07	
SPC_0705:
	cmp a,$25+x	
	beq SPC_070d	
SPC_0709:
	dec x			
	bpl SPC_0705	
	ret
SPC_070d:
	mov y,$45+x	
	beq SPC_0709	
	mov y,#$ff	
	mov $85+x,y	
	bra SPC_0709	

SPC_0717:
	mov a,$08		
	and a,#$0f	
	mov x,a		
	mov a,$09		
	lsr a			
	lsr a			
	eor a,#$ff	
	setc			
	adc a,$09		
	mov !$0140+x,a	
	mov a,$0a		
	lsr a			
	lsr a			
	eor a,#$ff	
	setc			
	adc a,$0a		
	mov !$0150+x,a	
	ret

SPC_0735:
	mov a,$08		
	and a,#$0f	
	mov y,a		
	mov a,$09		
	mov !$0100+y,a	
	mov x,a		
	mov a,!$0380+x	
	call !SPC_0c00	
	mov a,!$03c0+x	
	call !SPC_0c0c	
	mov a,!$0400+x	
	call !SPC_0c13	
	mov a,!$0440+x	
	call !SPC_0c17	
	mov a,!$0480+x	
	call !SPC_0c24	
	mov a,!$04c0+x	
	call !SPC_0c39	
	mov a,!$0500+x	
	call !SPC_0c3d	
	mov a,!$0540+x	
	jmp !SPC_0c42	

SPC_0770:
	mov x,#$23	
	bra SPC_0780	
SPC_0774:
	and a,#$07	
	xcn a			
	or a,#$08	
	mov $f2,a		
	mov a,$f3		
	beq SPC_0787	
SPC_077f:
	dec x			
SPC_0780:
	mov a,(x)		
	cmp a,#$c0	
	bcc SPC_0774	
	clrc			
	ret
SPC_0787:
	mov a,(x)		
	and a,#$07	
	mov y,a		
	mov a,!$0045+y	
	beq SPC_07ab	
	cmp a,#$01	
	beq SPC_077f	
	mov a,(x)		
	or a,#$f8	

SPC_0797:
	mov y,a	
	and a,#$f8
	mov !$07a4,a
	bra SPC_07a1
SPC_079f:
	mov $01+x,a
SPC_07a1:
	dec x	  
	mov a,(x)
	;this instruction gets modified?
	cmp a,#$00	;07a3: 68 00     
	bcc SPC_079f
	mov $01+x,y	
	setc		
	ret			
SPC_07ab:
	mov a,y	
	mov x,a	
	mov y,$25+x
	dec $f2	
	mov a,!$0180+y
	mov $f3,a	
	and $f2,#$f0
	mov a,!$0140+y
	mov y,$3d+x
	mul ya	
	mov $f3,y	
	inc $f2	
	mov y,$25+x
	mov a,!$01d0+y
	and a,$92	
	lsr a		
	mov a,!$0150+y
	mov y,$3d+x
	mul ya	
	bcc SPC_07d8
	mov a,y	
	eor a,#$ff
	inc a		
	mov y,a	
SPC_07d8:
	mov $f3,y	
	inc $f2	
	mov a,$7d+x
	mov $f3,a	
	inc $f2	
	mov a,$85+x
	mov $f3,a	
	inc $f2	
	mov a,$2d+x
	mov $f3,a	
	mov y,$25+x
	mov $f2,#$3d
	mov a,!$0170+y
	beq SPC_0806
	mov a,$10+x
	tset1 !$00f3
	mov $f2,#$6c
	mov a,$35+x
	and a,#$1f
	mov $f3,a	
	bra SPC_080b
SPC_0806:
	mov a,$10+x
	tclr1 !$00f3
SPC_080b:
	mov $f2,#$4d
	mov a,!$0160+y
	bne SPC_081a
	mov a,$10+x
	tclr1 !$00f3	
	bra SPC_081f
SPC_081a:
	mov a,$10+x
	tset1 !$00f3
SPC_081f:
	or a,$91	
	mov $91,a	
	mov a,#$01
	mov $45+x,a
	setc		
	ret

SPC_0829:
	mov x,$90	
	bne SPC_0835
	mov a,$fd	
	bne SPC_0833
	clrc		
	ret
SPC_0833:
	mov x,#$08
SPC_0835:
	dec x		
	mov $90,x	
	mov y,$25+x
	mov a,$6d+x
	clrc		
	adc a,!$05a0+y
	mov $02,a	
	mov a,$75+x
	adc a,#$00
	cmp a,#$10
	bcc SPC_0850
	mov a,#$10
	mov $03,a	
	bra SPC_0858
SPC_0850:
	mov $03,a	
	mov $75+x,a
	mov a,$02	
	mov $6d+x,a
SPC_0858:
	mov a,$5d+x
	clrc		
	adc a,!$0580+y
	mov $5d+x,a
	bcs SPC_0864
SPC_0862:
	setc		
	ret
SPC_0864:
	mov a,$45+x
	beq SPC_0862
	mov a,#$ff
	mov $85+x,a
	mov a,!$0590+y
	mov $04,a	
	mov a,$65+x
	inc a		
	mov $65+x,a
	mov $00,a	
	and a,#$07
	mov y,a	
	mov a,!SPC_UnknownData_08a4+y
	mov y,a	  
	mov a,$03  
	asl a	
	asl a	
	asl a	
	mul ya	
	asl a	
	mov a,y	
	rol a	
	mov y,$04
	mul ya	
	mov a,y	
	mov1 c,$0000.3
	bcc SPC_0894 
	eor a,#$ff	
	inc a		
SPC_0894:
	mov $4d+x,a	
	bmi SPC_089e 
	mov a,#$00	
	mov $55+x,a	
	setc		
	ret			
SPC_089e:
	mov a,#$ff	
	mov $55+x,a	
	setc		
	ret			

SPC_UnknownData_08a4:
	.db $00,$20,$40,$60,$80,$60,$40,$20

SPC_08ac:    
	inc $8f	
	mov a,$8f	
	and a,#$07
	mov x,a	
	xcn a		
	or a,#$08
	mov $f2,a	
	mov a,$f3	
	bne SPC_08bd
SPC_08bc:
	ret
SPC_08bd:
	mov a,$45+x
	beq SPC_08bc
	cmp a,#$01
	bne SPC_08d8
	cmp $f3,#$7f
	bne SPC_08f1
	mov y,$25+x
	mov a,!$0190+y
	dec $f2	
	mov $f3,a	
	mov a,#$02
	mov $45+x,a
	ret
SPC_08d8:
	cmp a,#$02
	bne SPC_08f1
	mov y,$25+x
	mov a,!$01a0+y
	cmp a,$f3	
	bcc SPC_08f1
	mov a,!$01b0+y
	dec $f2	
	mov $f3,a	
	mov a,#$03
	mov $45+x,a
	ret
SPC_08f1:
	mov a,$85+x
	bpl SPC_090b
	mov $0b,x	
	call !SPC_0932
	and $f2,#$f0
	or $f2,#$02
	mov a,$7d+x
	mov $f3,a	
	inc $f2	
	mov a,$85+x
	mov $f3,a	
	ret
SPC_090b:
	and $f2,#$f0
	mov y,$25+x
	mov a,!$0140+y
	mov y,$3d+x
	mul ya	
	mov $f3,y	
	inc $f2	
	mov y,$25+x
	mov a,!$01d0+y
	and a,$92	
	lsr a		
	mov a,!$0150+y
	mov y,$3d+x
	mul ya	
	bcc SPC_092f
	mov a,y	
	eor a,#$ff
	inc a		
	mov y,a	
SPC_092f:
	mov $f3,y	
	ret

SPC_0932:
	mov y,$0b	
	mov x,$25+y
	mov a,!$0035+y
	mov y,#$64
	mul ya	
	clrc		
	adc a,!$0110+x
	mov $00,a	
	mov a,y	
	adc a,!$0120+x
	mov y,a	
	mov x,$0b	
	mov a,$00	
	clrc		
	adc a,$4d+x
	mov $00,a	
	mov a,y	
	adc a,$55+x
	mov y,a	
	mov a,$2d+x
	mov x,a	
	setc		
	mov a,$00	
	sbc a,!$0300+x
	mov $00,a	
	mov a,y	
	sbc a,!$0340+x
	mov y,a	
	mov x,#$02
	mov a,$00	
	addw ya,$18
	bpl SPC_0974
SPC_096c:
	inc x		
	addw ya,$0c
	bcc SPC_096c
	bra SPC_097a
SPC_0973:
	dec x		
SPC_0974:
	subw ya,$0c
	bcs SPC_0973
	addw ya,$0c
SPC_097a:
	push x		
	mov x,#$64
	div ya,x	
	asl a		
	mov x,a	
	mov a,!SPC_UnknownData_9d8+x
	mov $01,a
	mov a,!SPC_UnknownData_9d7+x
	mov $00,a
	mov a,y
	asl a	
	mov x,a
	mov a,!SPC_UnknownData_9ef+x
	mov y,$01	
	mul ya	
	movw $02,ya
	mov a,!SPC_UnknownData_9f0+x
	mov x,a	
	mov y,$00	
	mul ya	
	addw ya,$02
	mov $02,y	
	mov a,#$00
	adc a,#$00
	mov $03,a	
	mov a,x	
	mov y,$01	
	mul ya	
	addw ya,$02
	mov $03,y	
	lsr $03	
	ror a		
	lsr $03	
	ror a		
	lsr $03	
	ror a		
	lsr $03	
	ror a		
	mov y,$03	
	addw ya,$00
	mov $01,y	
	pop x		
	lsr $01	
	ror a		
SPC_09c4:
	lsr $01	
	ror a		
	dec x		
	bne SPC_09c4
	mov x,$0b	
	adc a,#$00
	mov $7d+x,a
	mov a,$01	
	adc a,#$00
	mov $85+x,a
	ret


SPC_UnknownData_9d7:
	.db $00
SPC_UnknownData_9d8:       
	.db $80,$9c,$87,$ad,$8f,$38,$98,$45,$a1,$dc,$aa,$05,$b5,$c9,$bf,$30  
	.db $cb,$45,$d7,$12,$e4,$a2,$f1


SPC_UnknownData_9ef:
	.db $00
SPC_UnknownData_9f0:
	.db $00,$5e,$02,$bc,$04,$1b,$07,$7a,$09,$d9,$0b,$38,$0e,$98,$10,$f9     
	.db $12,$59,$15,$ba,$17,$1c,$1a,$7d,$1c,$df,$1e,$42,$21,$a5,$23,$08  
	.db $26,$6b,$28,$cf,$2a,$33,$2d,$98,$2f,$fd,$31,$62,$34,$c8,$36,$2e
	.db $39,$94,$3b,$fb,$3d,$62,$40,$c9,$42,$31,$45,$99,$47,$01,$4a,$6a
	.db $4c,$d3,$4e,$3d,$51,$a7,$53,$11,$56,$7b,$58,$e6,$5a,$52,$5d,$bd        
	.db $5f,$29,$62,$96,$64,$02,$67,$70,$69,$dd,$6b,$4b,$6e,$b9,$70,$27     
	.db $73,$96,$75,$06,$78,$75,$7a,$e5,$7c,$56,$7f,$c6,$81,$37,$84,$a9
	.db $86,$1a,$89,$8d,$8b,$ff,$8d,$72,$90,$e5,$92,$59,$95,$cd,$97,$41        
	.db $9a,$b6,$9c,$2b,$9f,$a0,$a1,$16,$a4,$8c,$a6,$03,$a9,$79,$ab,$f1     
	.db $ad,$68,$b0,$e0,$b2,$58,$b5,$d1,$b7,$4a,$ba,$c4,$bc,$3d,$bf,$b7
	.db $c1,$32,$c4,$ad,$c6,$28,$c9,$a4,$cb,$20,$ce,$9c,$d0,$19,$d3,$96
	.db $d5,$13,$d8,$91,$da,$0f,$dd,$8e,$df,$0d,$e2,$8c,$e4,$0c,$e7,$8c     
	.db $e9,$0c,$ec,$8d,$ee,$0e,$f1
	
SPC_0ab7:	
	mov x,$09
	movw ya,$8d
	setc
	sbc a,$09	
	bcs SPC_0ac1
	dec y		
;self modifying code?
;it seems to modify the address in the "mov !$0000+x" instructions
SPC_0ac1:
	mov !$0af6,a
	mov !$0af7,y
	addw ya,$0e
	mov !$0afd,a
	mov !$0afe,y
	addw ya,$0e
	mov !$0b01,a
	mov !$0b02,y
	addw ya,$0e
	mov !$0b09,a
	mov !$0b0a,y
	addw ya,$0e
	mov !$0b10,a
	mov !$0b11,y
	addw ya,$0e
	mov !$0b14,a
	mov !$0b15,y
	clrc		
SPC_0af0:
	bbc $f4.0, SPC_0af0
	mov a,$f5		
	mov !$0000+x,a			;0af5: d5 00 00  
	movw ya,$f6
	set1 $f4.0
	mov !$0000+x,a			;0afc: d5 00 00  
	mov a,y
	mov !$0000+x,a			;0b00: d5 00 00
SPC_0b03:
	bbs $f4.0, SPC_0b03
	mov a,$f5		
	mov !$0000+x,a			;0b08: d5 00 00  
	movw ya,$f6
	clr1 $f4.0
	mov !$0000+x,a			;0b0f: d5 00 00  
	mov a,y
	mov !$0000+x,a			;0b13: d5 00 00  
	mov a,x		
	adc a,#$06	
	mov x,a		
	bcc SPC_0af0
	mov a,$0a	
	bpl SPC_0b2a
	mov a,!$0af6	
	mov y,!$0af7	
	inc y		
	movw $8d,ya	
	ret			
SPC_0b2a:
	asl a		
	asl a		
	mov x,a		
	mov a,$8d	
	mov !$0200+x,a
	mov a,$8e	
	mov !$0201+x,a
	mov y,#$00	
	mov a,[$8d]+y ;mov a,($8d)+y
	clrc		
	adc a,!$0200+x
	mov !$0202+x,a
	inc y		
	mov a,[$8d]+y
	adc a,!$0201+x
	mov !$0203+x,a
	inc y		
	mov x,$0a	
	mov a,[$8d]+y
	mov !$0300+x,a
	inc y		
	mov a,[$8d]+y
	mov !$0340+x,a
	inc y		
	mov a,[$8d]+y
	mov !$0380+x,a
	inc y		
	mov a,[$8d]+y
	mov !$03c0+x,a
	inc y		
	mov a,[$8d]+y
	mov !$0400+x,a
	inc y		
	mov a,[$8d]+y
	mov !$0440+x,a
	inc y		
	mov a,[$8d]+y
	mov !$0480+x,a
	inc y		
	mov a,[$8d]+y
	mov !$04c0+x,a
	inc y		
	mov a,[$8d]+y
	mov !$0500+x,a
	inc y		
	mov a,[$8d]+y
	mov !$0540+x,a
	inc y		
	ret			

SPC_0b8b:
	mov a,#$9d	
	mov y,#$0c	
	addw ya,$09	
	movw $8d,ya	
	ret			

SPC_0b94:
	mov a,$08	
	and a,#$0f
	mov y,a	
	mov a,$09	
	asl a		
	mov x,a	
	mov a,$0a	
	jmp [!SPC_Jumptable_0ba2+x]

SPC_Jumptable_0ba2:
	.dw SPC_0bca
	.dw SPC_0beb
	.dw SPC_0bf9
	.dw SPC_0c00
	.dw SPC_0c0c
	.dw SPC_0c13
	.dw SPC_0c17
	.dw SPC_0c24
	.dw SPC_0c31
	.dw SPC_0c35
	.dw SPC_0c39
	.dw SPC_0c3d
	.dw SPC_0c42
	.dw SPC_0c4a
	.dw SPC_0c46
	.dw SPC_0c82
	.dw SPC_0bc4

SPC_0bc4:
	mov $93,a	
SPC_0bc6:   
	mov a,$92	
	bra SPC_0bce
SPC_0bca:
	eor a,#$01
	mov $92,a	
SPC_0bce:  
	mov $f2,#$2c
	beq SPC_0be0
	mov a,$93	
	mov $f3,a	
	mov $f2,#$3c
	eor a,#$ff
	inc a		
	mov $f3,a	
	ret
SPC_0be0:    
	mov a,$93	
	lsr a		
	mov $f3,a	
	mov $f2,#$3c
	mov $f3,a	
	ret

SPC_0beb:
	mov $18,a	
	mov x,#$07
SPC_0bef:   
	mov a,$85+x
	or a,#$80
	mov $85+x,a
	dec x		
	bpl SPC_0bef
	ret

SPC_0bf9:
	asl a		
	asl a		
	asl a		
	mov !$0130+y,a
	ret

SPC_0c00:
	or a,#$c0
	cmp a,#$e0
	bne SPC_0c08
	mov a,#$7f
SPC_0c08:
	mov !$0180+y,a
	ret

SPC_0c0c:
	clrc		
	adc a,#$a0
	mov !$0190+y,a
	ret

SPC_0c13:
	mov !$01a0+y,a
	ret

SPC_0c17:
	clrc		
	adc a,#$a0
	cmp a,#$c0
	bne SPC_0c20
	mov a,#$9d
SPC_0c20: 
	mov !$01b0+y,a
	ret

SPC_0c24:
	clrc		
	adc a,#$a0
	cmp a,#$c0
	bne SPC_0c2d
	mov a,#$9d
SPC_0c2d:   
	mov !$01c0+y,a
	ret

SPC_0c31:
	mov !$0160+y,a
	ret

SPC_0c35:
	mov !$0170+y,a
	ret

SPC_0c39:
	mov !$0580+y,a
	ret

SPC_0c3d:
	asl a		
	mov !$0590+y,a
	ret

SPC_0c42:
	mov !$05a0+y,a
	ret

SPC_0c46:
	mov !$01d0+y,a
	ret

SPC_0c4a:
	mov a,#$00
	mov !$0110+y,a
	mov !$0120+y,a
	mov !$01d0+y,a
	mov a,#$4b
	mov !$0140+y,a
	mov !$0150+y,a
	cmp y,#$08
	bcs SPC_0c6d
	mov a,#$10
	mov !$0130+y,a
	mov a,#$01
	mov !$0160+y,a
	bra SPC_0c77
SPC_0c6d:
	mov a,#$08
	mov !$0130+y,a
	mov a,#$00
	mov !$0160+y,a
SPC_0c77:
	mov a,#$00
	mov !$0170+y,a
	inc y		
	cmp y,$0a	
	bcc SPC_0c4a   
	ret

SPC_0c82:
	mov $08,y	
	mov x,#$07
	mov a,#$00
SPC_0c88:  
	asl a		
	mov y,$25+x
	cmp y,$08	
	bcc SPC_0c94
	cmp y,$0a	
	bcs SPC_0c94
	inc a		
SPC_0c94:  
	dec x		
	bpl SPC_0c88
	mov y,a	
	mov a,#$5c
	movw $f2,ya
	ret

;end of spc700 code
	
;dd4b80
	.db $02,$00,$00,$00,$00,$00,$00,$00
	.db $00,$BA,$01,$10,$FF
	.db $F1,$21,$EC,$E2,$54
	.db $BA,$1E,$CC,$02,$31,$FE,$F1,$21
	.db $FE,$BA,$F3,$21,$FE,$F1,$21,$ED
	.db $E1,$45,$BB,$2D,$BD,$03,$21,$EF
	.db $F2,$10,$FF,$C2,$44,$44,$44,$44
	.db $44,$44,$44,$44,$C3,$CC,$CC,$CC
	.db $CC,$CC,$CC,$CC,$CC,$C2,$77,$66
	.db $55,$44,$33,$22,$11,$00,$C3,$FF
	.db $EE,$DD,$CC,$BB,$AA,$99,$00
