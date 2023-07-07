	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"

	.text

	arm_func_start ov10_022BCA80
ov10_022BCA80: ; 0x022BCA80
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	sub sp, sp, #0x400
	mov r6, r0
	mov sl, r1
	ldr r7, [sp, #0x450]
	mov r0, #0x1a4
	mov r1, #8
	mov sb, r2
	mov r8, r3
	bl MemAlloc
	mov r4, r0
	cmp r6, #0
	ldreq r0, _022BCC58 ; =0x022C4394
	str r7, [r4, #0x198]
	add r5, sp, #0x1c
	ldmeqia r0, {r0, r1, r2, r3}
	stmeqia r5, {r0, r1, r2, r3}
	ldmneia r6, {r0, r1, r2, r3}
	stmneia r5, {r0, r1, r2, r3}
	ldrne r0, _022BCC5C ; =ov10_022BCE74
	orreq sl, sl, #0x300000
	strne r0, [sp, #0x1c]
	ldrb r0, [sp, #0x22]
	str r4, [sp, #0x28]
	cmp r0, #0
	bne _022BCB44
	mov r6, #0
	mov r5, r6
	add fp, sp, #0x2c
	b _022BCB24
_022BCAFC:
	mov r0, fp
	mov r1, r5
	mov r2, r7
	blx r8
	cmp r0, #0
	beq _022BCB20
	bl sub_020265A8
	cmp r0, r6
	movgt r6, r0
_022BCB20:
	add r5, r5, #1
_022BCB24:
	ldr r0, [sp, #0x454]
	cmp r5, r0
	blt _022BCAFC
	mov r0, sl
	mov r1, sb
	add r2, r6, #0x10
	bl sub_0203299C
	strb r0, [sp, #0x22]
_022BCB44:
	ldrb r0, [sp, #0x23]
	add r2, sp, #0x400
	add r3, sp, #0x400
	cmp r0, #0
	add r2, r2, #0x54
	bne _022BCB74
	add r3, r3, #0x58
	mov r0, sl
	mov r1, sb
	bl sub_020329E4
	strb r0, [sp, #0x23]
	b _022BCB84
_022BCB74:
	add r3, r3, #0x58
	mov r0, sl
	mov r1, sb
	bl sub_020329E4
_022BCB84:
	tst sl, #0x200000
	ldrneb r1, [sp, #0x20]
	ldrneb r0, [sp, #0x22]
	subne r0, r1, r0
	strneb r0, [sp, #0x20]
	tst sl, #0x100000
	ldrneb r1, [sp, #0x21]
	ldrneb r0, [sp, #0x23]
	subne r0, r1, r0
	strneb r0, [sp, #0x21]
	ldr r1, _022BCC5C ; =ov10_022BCE74
	mov r0, #0
	str r1, [r4]
	strb r0, [r4, #0x1a3]
	str sl, [r4, #0xf8]
	cmp sb, #0
	beq _022BCBE8
	add r6, r4, #0xfc
	mov r5, #9
_022BCBD0:
	ldmia sb!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _022BCBD0
	ldmia sb, {r0, r1}
	stmia r6, {r0, r1}
_022BCBE8:
	str r8, [r4, #0x194]
	mov r0, #0
	str r0, [r4, #0x19c]
	strb r0, [r4, #0x1a0]
	strb r0, [r4, #0x1a1]
	ldrb r2, [sp, #0x45c]
	add r0, sp, #0x1c
	mov r1, #3
	strb r2, [r4, #0x1a2]
	bl sub_02027648
	add r1, sp, #0xc
	mov r6, r0
	bl sub_02028284
	ldr r0, [sp, #0x454]
	ldrb r5, [sp, #0x45c]
	str r0, [sp]
	ldr r0, [sp, #0x458]
	add r3, sp, #0xc
	str r0, [sp, #4]
	mov r1, sl
	add r0, r4, #4
	add r2, r4, #0xfc
	str r5, [sp, #8]
	bl sub_02032A38
	mov r0, r6
	add sp, sp, #0x2c
	add sp, sp, #0x400
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022BCC58: .word 0x022C4394
_022BCC5C: .word ov10_022BCE74
	arm_func_end ov10_022BCA80

	arm_func_start ov10_022BCC60
ov10_022BCC60: ; 0x022BCC60
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl GetDialogBoxField0xC
	mov r1, r4
	add r0, r0, #4
	bl sub_020331AC
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022BCC60

	arm_func_start ov10_022BCC7C
ov10_022BCC7C: ; 0x022BCC7C
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	mov r1, #1
	str r1, [r0, #0x19c]
	mov r1, #0
	strb r1, [r0, #0x1a0]
	strb r1, [r0, #0x1a1]
	ldr r1, [r0, #0xf8]
	bic r1, r1, #0x800000
	str r1, [r0, #0xf8]
	add r0, r0, #4
	bl sub_020333FC
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BCC7C

	arm_func_start ov10_022BCCB0
ov10_022BCCB0: ; 0x022BCCB0
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	ldr r1, [r0, #0x19c]
	cmp r1, #3
	moveq r1, #2
	streq r1, [r0, #0x19c]
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BCCB0

	arm_func_start ov10_022BCCCC
ov10_022BCCCC: ; 0x022BCCCC
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	mov r1, #0
	str r1, [r0, #0x19c]
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BCCCC

	arm_func_start ov10_022BCCE0
ov10_022BCCE0: ; 0x022BCCE0
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	mov r1, #6
	str r1, [r0, #0x19c]
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BCCE0

	arm_func_start ov10_022BCCF4
ov10_022BCCF4: ; 0x022BCCF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl GetDialogBoxField0xC
	bl MemFree
	mov r0, r4
	bl sub_02028194
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022BCCF4

	arm_func_start ov10_022BCD10
ov10_022BCD10: ; 0x022BCD10
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl GetDialogBoxField0xC
	mov r4, r0
	ldr r0, [r4, #0x19c]
	cmp r0, #6
	moveq r0, #1
	ldmeqdb sp!, {r3, r4, r5, pc}
	cmp r0, #3
	cmpne r0, #8
	movne r0, #0
	ldmnedb sp!, {r3, r4, r5, pc}
	mov r2, #1
	strb r2, [r4, #0x1a0]
	mov r0, r5
	sub r1, r2, #6
	strb r2, [r4, #0x1a1]
	bl sub_0202830C
	mov r0, #6
	str r0, [r4, #0x19c]
	mov r0, #1
	ldmdb sp!, {r3, r4, r5, pc}
	arm_func_end ov10_022BCD10

	arm_func_start ov10_022BCD68
ov10_022BCD68: ; 0x022BCD68
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	ldr r0, [r0, #0x19c]
	cmp r0, #7
	cmpne r0, #8
	movne r0, #1
	moveq r0, #0
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BCD68

	arm_func_start ov10_022BCD88
ov10_022BCD88: ; 0x022BCD88
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	ldrb r0, [r0, #0x1a0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BCD88

	arm_func_start ov10_022BCDA8
ov10_022BCDA8: ; 0x022BCDA8
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	add r0, r0, #4
	bl sub_02033064
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BCDA8

	arm_func_start ov10_022BCDBC
ov10_022BCDBC: ; 0x022BCDBC
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	ldrb r1, [r0, #0x1a0]
	cmp r1, #0
	beq _022BCDEC
	ldrb r1, [r0, #0x1a1]
	cmp r1, #0
	mvnne r0, #0
	ldmnedb sp!, {r3, pc}
	add r0, r0, #4
	bl sub_02033064
	ldmdb sp!, {r3, pc}
_022BCDEC:
	mvn r0, #0
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BCDBC

	arm_func_start ov10_022BCDF4
ov10_022BCDF4: ; 0x022BCDF4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl GetDialogBoxField0xC
	mov r4, r0
	mov r0, #1
	mov r1, #0
	strb r0, [r4, #0x1a0]
	mov r0, r5
	strb r1, [r4, #0x1a1]
	sub r1, r1, #4
	bl sub_0202830C
	ldr r0, [r4, #0xf8]
	tst r0, #0x400000
	beq _022BCE38
	mov r0, r5
	add r1, r4, #4
	bl sub_02028980
_022BCE38:
	mov r0, #5
	str r0, [r4, #0x19c]
	ldmdb sp!, {r3, r4, r5, pc}
	arm_func_end ov10_022BCDF4

	arm_func_start ov10_022BCE44
ov10_022BCE44: ; 0x022BCE44
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	add r0, r0, #4
	bl sub_02033414
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BCE44

	arm_func_start ov10_022BCE58
ov10_022BCE58: ; 0x022BCE58
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	ldrb r2, [r0, #0x1a3]
	mov r1, #0
	strb r1, [r0, #0x1a3]
	mov r0, r2
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BCE58

	arm_func_start ov10_022BCE74
ov10_022BCE74: ; 0x022BCE74
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	mov r8, r0
	ldr r4, [r8, #0xc]
	ldr r0, [r4, #0xf8]
	tst r0, #0x2000
	movne r1, #1
	moveq r1, #0
	ldrsb r0, [r8, #0x10]
	and r5, r1, #0xff
	bl GetDialogBoxField0xC
	add r0, r0, #4
	bl sub_02033414
	cmp r0, #0
	beq _022BCEC8
	ldr r0, [r4, #0xf8]
	bic r0, r0, #0x2000
	str r0, [r4, #0xf8]
	ldr r0, [r4, #0x14]
	bic r0, r0, #0x2000
	str r0, [r4, #0x14]
_022BCEC8:
	ldr r0, [r4, #0x19c]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022BD200
_022BCED8: ; jump table
	b _022BCEF4 ; case 0
	b _022BCF0C ; case 1
	b _022BCF34 ; case 2
	b _022BCF8C ; case 3
	b _022BD170 ; case 4
	b _022BD190 ; case 5
	b _022BD1D4 ; case 6
_022BCEF4:
	ldrsb r0, [r8, #0x10]
	bl sub_0202810C
	cmp r0, #0
	beq _022BD200
	mov r0, #2
	str r0, [r4, #0x19c]
_022BCF0C:
	ldr r0, [r4, #0x19c]
	cmp r0, #1
	bne _022BCF34
	ldrb r0, [r8, #8]
	bl sub_020287C4
	ldrsb r0, [r8, #0x10]
	bl sub_02027AF0
	mov r0, #2
	str r0, [r4, #0x19c]
	b _022BD200
_022BCF34:
	mov r0, r8
	bl ov10_022BD22C
	ldr r0, [r4, #0xf8]
	tst r0, #0x800000
	beq _022BCF6C
	mov r0, #8
	str r0, [r4, #0x19c]
	mov r1, #1
	mov r0, #0
	strb r1, [r4, #0x1a0]
	strb r0, [r4, #0x1a1]
	sub r0, r0, #4
	str r0, [r8, #0xb8]
	b _022BD200
_022BCF6C:
	mov r1, #3
	mov r0, #0
	str r1, [r4, #0x19c]
	strb r0, [r4, #0x1a0]
	strb r0, [r4, #0x1a1]
	sub r0, r0, #1
	str r0, [r8, #0xb8]
	b _022BD200
_022BCF8C:
	ldrsb r0, [r8, #0x10]
	bl GetDialogBoxField0xC
	add r0, r0, #4
	bl sub_02033414
	mov r7, r0
	add r1, sp, #8
	add r2, sp, #0xc
	add r0, r4, #4
	mov r3, #1
	bl sub_02032BB8
	ldr r1, [sp, #8]
	mov r6, r0
	cmp r1, #0
	bne _022BD010
	ldr r0, [r4, #0xf8]
	tst r0, #1
	beq _022BD010
	mov r3, #0
	ldr r2, _022BD228 ; =0x00000408
	add r1, sp, #0xc
	str r3, [sp]
	mov ip, #1
	add r0, r4, #4
	str ip, [sp, #4]
	bl sub_02032E0C
	movs r1, r0
	bmi _022BD010
	add r0, r4, #4
	bl sub_020330EC
	ldr r0, [sp, #8]
	mov r6, #1
	orr r0, r0, #1
	str r0, [sp, #8]
_022BD010:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _022BD030
	add r1, sp, #8
	add r2, sp, #0xc
	add r0, r4, #4
	bl sub_02033F30
	orr r6, r6, r0
_022BD030:
	add r0, r4, #4
	bl sub_02033064
	mov r2, r0
	ldr r1, [sp, #8]
	add r0, r4, #4
	mov r3, #0
	bl sub_02032F5C
	orrs r0, r6, r0
	beq _022BD05C
	mov r0, r8
	bl ov10_022BD22C
_022BD05C:
	ldr r0, [sp, #8]
	tst r0, #1
	beq _022BD0C4
	add r0, r4, #4
	bl sub_02032FD8
	cmp r0, #0
	beq _022BD0B4
	ldr r0, [r4, #0xf8]
	tst r0, #0x80000000
	bne _022BD090
	add r0, r4, #4
	mov r1, #0
	bl sub_020333D8
_022BD090:
	mov r1, #1
	mov r0, #0
	strb r1, [r4, #0x1a0]
	strb r0, [r4, #0x1a1]
	sub r0, r0, #4
	str r0, [r8, #0xb8]
	mov r0, #5
	str r0, [r4, #0x19c]
	b _022BD138
_022BD0B4:
	add r0, r4, #4
	mov r1, #2
	bl sub_020333D8
	b _022BD138
_022BD0C4:
	tst r0, #2
	beq _022BD0F8
	add r0, r4, #4
	mov r1, #1
	bl sub_020333D8
	mov r0, #1
	strb r0, [r4, #0x1a0]
	strb r0, [r4, #0x1a1]
	sub r0, r0, #6
	str r0, [r8, #0xb8]
	mov r0, #5
	str r0, [r4, #0x19c]
	b _022BD138
_022BD0F8:
	tst r0, #0x1000
	beq _022BD138
	ldr r0, [r4, #0xf8]
	tst r0, #0x2000
	beq _022BD138
	add r0, r4, #4
	mov r1, #5
	bl sub_020333D8
	mov r1, #1
	mov r0, #0
	strb r1, [r4, #0x1a0]
	strb r0, [r4, #0x1a1]
	sub r0, r0, #4
	str r0, [r8, #0xb8]
	mov r0, #4
	str r0, [r4, #0x19c]
_022BD138:
	ldrsb r0, [r8, #0x10]
	add r1, r4, #4
	bl sub_02028980
	cmp r5, #0
	beq _022BD200
	ldrsb r0, [r8, #0x10]
	bl GetDialogBoxField0xC
	add r0, r0, #4
	bl sub_02033414
	cmp r7, r0
	beq _022BD200
	ldrsb r0, [r8, #0x10]
	bl ov10_022BCCB0
	b _022BD200
_022BD170:
	add r0, r4, #4
	bl sub_02032DB0
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4, #0x1a3]
	moveq r0, #3
	streq r0, [r4, #0x19c]
	b _022BD200
_022BD190:
	add r0, r4, #4
	bl sub_02032DB0
	cmp r0, #0
	bne _022BD200
	ldrb r0, [r4, #0x1a1]
	cmp r0, #0
	bne _022BD1CC
	ldr r0, [r4, #0xf8]
	tst r0, #0x400000
	beq _022BD1CC
	mov r0, r8
	bl ov10_022BD22C
	mov r0, #8
	str r0, [r4, #0x19c]
	b _022BD200
_022BD1CC:
	mov r0, #6
	str r0, [r4, #0x19c]
_022BD1D4:
	ldrsb r0, [r8, #0x10]
	bl sub_0202812C
	cmp r0, #0
	beq _022BD200
	ldrb r0, [r4, #0x1a1]
	cmp r0, #0
	mvnne r0, #4
	mvneq r0, #3
	str r0, [r8, #0xb8]
	mov r0, #7
	str r0, [r4, #0x19c]
_022BD200:
	cmp r5, #0
	beq _022BD220
	ldr r0, [r4, #0xf8]
	orr r0, r0, #0x2000
	str r0, [r4, #0xf8]
	ldr r0, [r4, #0x14]
	orr r0, r0, #0x2000
	str r0, [r4, #0x14]
_022BD220:
	add sp, sp, #0x30
	ldmdb sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022BD228: .word 0x00000408
	arm_func_end ov10_022BCE74

	arm_func_start ov10_022BD22C
ov10_022BD22C: ; 0x022BD22C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	sub sp, sp, #0x400
	mov sl, r0
	ldr r4, [sl, #0xc]
	add r0, r4, #4
	bl sub_02033054
	ldr r1, [r4, #0xf8]
	mov r5, r0
	tst r1, #0x200
	ldrne r0, [r4, #0x15c]
	ldr r6, [r4, #0xc4]
	addne r8, r0, r5
	ldrsb r0, [sl, #0x10]
	moveq r8, #0
	bl sub_02027B1C
	add r0, r4, #4
	bl sub_02033414
	cmp r0, #0
	beq _022BD2C4
	ldr r2, [r4, #0x198]
	ldr r3, [r4, #0x194]
	add r0, sp, #4
	mvn r1, #0
	blx r3
	movs r5, r0
	beq _022BD354
	add r0, r4, #4
	mov r1, #0
	bl sub_02033350
	mov r1, #0x44
	str r1, [sp]
	mov r2, r0
	ldrsb r0, [sl, #0x10]
	mov r3, r5
	mov r1, #0xe
	bl sub_020263C8
	b _022BD354
_022BD2C4:
	cmp r6, #0
	mov r7, #0
	ble _022BD354
	b _022BD34C
_022BD2D4:
	ldr r2, [r4, #0x198]
	ldr r3, [r4, #0x194]
	add r0, sp, #4
	mov r1, r5
	blx r3
	mov fp, r0
	mov r1, #0
	cmp r8, #0
	beq _022BD308
	ldrb r0, [r8]
	add r8, r8, #1
	tst r0, #2
	movne r1, #1
_022BD308:
	cmp fp, #0
	beq _022BD344
	cmp r1, #0
	movne sb, #0x42
	moveq sb, #0x44
	add r0, r4, #4
	mov r1, r7
	bl sub_02033350
	and r1, sb, #0xff
	str r1, [sp]
	mov r2, r0
	ldrsb r0, [sl, #0x10]
	mov r3, fp
	mov r1, #7
	bl sub_020263C8
_022BD344:
	add r7, r7, #1
	add r5, r5, #1
_022BD34C:
	cmp r7, r6
	blt _022BD2D4
_022BD354:
	ldrsb r1, [sl, #0x10]
	add r0, r4, #4
	bl sub_0202A0B0
	ldrsb r0, [sl, #0x10]
	bl sub_02027AF0
	add sp, sp, #4
	add sp, sp, #0x400
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov10_022BD22C

	arm_func_start ov10_022BD374
ov10_022BD374: ; 0x022BD374
	stmdb sp!, {r3, lr}
	bl GetDialogBoxField0xC
	ldr r0, [r0, #0x19c]
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BD374

	arm_func_start ov10_022BD394
ov10_022BD394: ; 0x022BD394
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x54
	mov r1, r1, lsl #0x10
	mov r4, r0
	mov r0, r1, asr #0x10
	mov r7, r2
	mov r6, r3
	bl GetItemAtIdx
	mov r5, r0
	ldrb r0, [r5]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022BD428
	mov ip, #1
	ldr r2, _022BD43C ; =0x022C43A4
	add r0, sp, #4
	mov r1, r5
	mov r3, r7
	str ip, [sp]
	bl sub_0200D310
	ldrb r0, [r5, #1]
	cmp r0, #0
	ldrneb r2, [r6, r0]
	cmpne r2, #0
	beq _022BD414
	ldr r1, _022BD440 ; =0x022C43F0
	add r3, sp, #4
	mov r0, r4
	bl SprintfStatic__022BD44C
	b _022BD434
_022BD414:
	ldr r1, _022BD444 ; =0x022C43F8
	add r2, sp, #4
	mov r0, r4
	bl SprintfStatic__022BD44C
	b _022BD434
_022BD428:
	ldr r1, _022BD448 ; =0x022C4404
	mov r0, r4
	bl Strcpy
_022BD434:
	add sp, sp, #0x54
	ldmdb sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_022BD43C: .word 0x022C43A4
_022BD440: .word 0x022C43F0
_022BD444: .word 0x022C43F8
_022BD448: .word 0x022C4404
	arm_func_end ov10_022BD394

	arm_func_start SprintfStatic__022BD44C
SprintfStatic__022BD44C: ; 0x022BD44C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl Vsprintf
	ldmdb sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end SprintfStatic__022BD44C

	arm_func_start ov10_022BD474
ov10_022BD474: ; 0x022BD474
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xa8
	mov ip, #0
	mov r7, #0x10
	mov r6, #0xd
	mov lr, #0x8e0
	mov r5, r0
	mov r4, r1
	str r7, [sp, #0x1c]
	str r2, [sp, #0x10]
	str r3, [sp, #0x70]
	str r6, [sp, #0x14]
	strh lr, [sp, #0x18]
	str ip, [sp, #0x84]
	str ip, [sp, #0x8c]
	bl GetCurrentBagCapacity
	cmp r0, #2
	bge _022BD508
	cmp r4, #0
	movne r5, #0
	ldr r2, [sp, #0xc4]
	moveq r5, #0x2000
	cmp r4, #0
	ldrne r0, _022BD554 ; =0x022C43C0
	ldr r1, _022BD558 ; =0x00481C33
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldrb r4, [sp, #0xc8]
	ldreq r0, _022BD55C ; =0x022C43D0
	ldr r3, [sp, #0xc0]
	add r2, sp, #0x10
	orr r1, r5, r1
	str r4, [sp, #0xc]
	bl ov10_022BCA80
	b _022BD54C
_022BD508:
	cmp r4, #0
	movne r6, #0
	ldr r2, [sp, #0xc4]
	moveq r6, #0x2000
	cmp r4, #0
	ldrne r0, _022BD560 ; =0x022C43E0
	ldr r1, _022BD564 ; =0x00489E33
	stmia sp, {r2, r5}
	mov r2, #8
	str r2, [sp, #8]
	ldrb r4, [sp, #0xc8]
	ldreq r0, _022BD568 ; =0x022C43B0
	ldr r3, [sp, #0xc0]
	add r2, sp, #0x10
	orr r1, r6, r1
	str r4, [sp, #0xc]
	bl ov10_022BCA80
_022BD54C:
	add sp, sp, #0xa8
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022BD554: .word 0x022C43C0
_022BD558: .word 0x00481C33
_022BD55C: .word 0x022C43D0
_022BD560: .word 0x022C43E0
_022BD564: .word 0x00489E33
_022BD568: .word 0x022C43B0
	arm_func_end ov10_022BD474

	arm_func_start ov10_022BD56C
ov10_022BD56C: ; 0x022BD56C
	stmdb sp!, {r3, lr}
	ldr r0, _022BD5A8 ; =0x022DC220
	ldr r0, [r0]
	cmp r0, #0
	ldmnedb sp!, {r3, pc}
	mov r0, #0xa4
	mov r1, #8
	bl MemAlloc
	ldr r1, _022BD5A8 ; =0x022DC220
	mov r2, #0
	str r0, [r1]
	str r2, [r0]
	ldr r0, [r1]
	str r2, [r0, #4]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022BD5A8: .word 0x022DC220
	arm_func_end ov10_022BD56C
_022BD5AC:
	.byte 0x08, 0x40, 0x2D, 0xE9
	.byte 0x58, 0x01, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x00, 0x00, 0x91, 0xE5, 0x04, 0x00, 0x50, 0xE3
	.byte 0x00, 0xF1, 0x8F, 0x90, 0x4F, 0x00, 0x00, 0xEA, 0x2B, 0x00, 0x00, 0xEA, 0x36, 0x00, 0x00, 0xEA
	.byte 0x3C, 0x00, 0x00, 0xEA, 0x49, 0x00, 0x00, 0xEA, 0x48, 0x00, 0x00, 0xEA, 0x30, 0x01, 0x9F, 0xE5
	.byte 0x68, 0x10, 0xA0, 0xE3, 0x00, 0x00, 0x90, 0xE5, 0x20, 0x21, 0x9F, 0xE5, 0x09, 0x0A, 0x80, 0xE2
	.byte 0x4C, 0x08, 0x90, 0xE5, 0x93, 0x01, 0x20, 0xE0, 0x4C, 0x00, 0x8C, 0xE5, 0x00, 0x00, 0x92, 0xE5
	.byte 0x4C, 0x00, 0x90, 0xE5, 0xF8, 0x00, 0xD0, 0xE1, 0x2A, 0x63, 0xF6, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x14, 0x00, 0x00, 0x0A, 0xF4, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x4C, 0x10, 0x90, 0xE5
	.byte 0x08, 0x00, 0x80, 0xE2, 0xA4, 0x57, 0xF6, 0xEB, 0xE0, 0x00, 0x9F, 0xE5, 0x00, 0x20, 0xA0, 0xE3
	.byte 0x00, 0x10, 0x90, 0xE5, 0x0E, 0x20, 0xC1, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x0F, 0x20, 0xC1, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x08, 0x00, 0x80, 0xE2, 0x9F, 0x61, 0xF6, 0xEB, 0x00, 0x10, 0xE0, 0xE3
	.byte 0x01, 0x00, 0x50, 0xE1, 0xB4, 0x00, 0x9F, 0x05, 0x01, 0x10, 0xA0, 0x03, 0x00, 0x00, 0x90, 0x05
	.byte 0x00, 0x10, 0x80, 0x05, 0x09, 0x00, 0x00, 0x0A, 0xA0, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5
	.byte 0x04, 0x00, 0x91, 0xE5, 0x01, 0x00, 0x80, 0xE2, 0x04, 0x00, 0x81, 0xE5, 0x8C, 0x00, 0x9F, 0xE5
	.byte 0x00, 0xC0, 0x90, 0xE5, 0x04, 0x30, 0x9C, 0xE5, 0x04, 0x00, 0x53, 0xE3, 0xD2, 0xFF, 0xFF, 0xBA
	.byte 0x78, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x04, 0x00, 0x91, 0xE5, 0x04, 0x00, 0x50, 0xE3
	.byte 0x03, 0x00, 0xA0, 0xA3, 0x00, 0x00, 0x81, 0xA5, 0x16, 0x00, 0x00, 0xEA, 0x08, 0x00, 0x81, 0xE2
	.byte 0xC5, 0x22, 0x01, 0xEB, 0x54, 0x00, 0x9F, 0xE5, 0x02, 0x10, 0xA0, 0xE3, 0x00, 0x00, 0x90, 0xE5
	.byte 0x00, 0x10, 0x80, 0xE5, 0x0F, 0x00, 0x00, 0xEA, 0x73, 0x25, 0x01, 0xEB, 0x03, 0x00, 0x50, 0xE3
	.byte 0x04, 0x00, 0x50, 0x13, 0x0B, 0x00, 0x00, 0x1A, 0x61, 0x25, 0x01, 0xEB, 0x2C, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x10, 0xA0, 0xE3, 0x00, 0x30, 0x90, 0xE5, 0x04, 0x20, 0x93, 0xE5, 0x01, 0x20, 0x82, 0xE2
	.byte 0x04, 0x20, 0x83, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x00, 0x10, 0x80, 0xE5, 0x01, 0x00, 0x00, 0xEA
	.byte 0x02, 0x00, 0xA0, 0xE3, 0x08, 0x80, 0xBD, 0xE8, 0x01, 0x00, 0xA0, 0xE3, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x20, 0xC2, 0x2D, 0x02, 0x48, 0x0A, 0x0B, 0x02, 0x08, 0x40, 0x2D, 0xE9, 0x1C, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x08, 0x80, 0xBD, 0x08, 0x95, 0x0E, 0xF5, 0xEB
	.byte 0x08, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE3, 0x00, 0x10, 0x80, 0xE5, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x20, 0xC2, 0x2D, 0x02

	arm_func_start ov10_022BD744
ov10_022BD744: ; 0x022BD744
	ldr r0, _022BD758 ; =0x022DC1C0
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x784]
	bx lr
	.align 2, 0
_022BD758: .word 0x022DC1C0
	arm_func_end ov10_022BD744

	arm_func_start ov10_022BD75C
ov10_022BD75C: ; 0x022BD75C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	cmp r1, #1
	bne _022BD7A0
	ldr r1, _022BD824 ; =0x020AFC68
	ldr r3, _022BD828 ; =0x020AFC4C
	ldr r4, [r1]
	mov r1, #0x38
	smlabb r0, r0, r1, r4
	ldr r0, [r0, #0x30]
	mov r2, r2, lsl #0x10
	ldr r1, [r0, #4]
	ldr r0, [r3]
	ldr r1, [r1, #4]
	mov r2, r2, lsr #0x10
	bl sub_0201B43C
	b _022BD81C
_022BD7A0:
	cmp r1, #0
	bne _022BD81C
	ldr r2, _022BD824 ; =0x020AFC68
	mov r1, #0x38
	ldr r2, [r2]
	ldr r4, _022BD828 ; =0x020AFC4C
	smlabb r0, r0, r1, r2
	ldr r0, [r0, #0x30]
	mov sl, #0
	ldr r0, [r0, #4]
	mov r8, #0x10
	ldr sb, [r0, #4]
	mov r7, #0xff
	add r6, sp, #8
	mov r5, #1
_022BD7DC:
	str r8, [sp]
	str r7, [sp, #4]
	ldr r1, [sb]
	mov r0, r6
	mov r2, r5
	mov r3, r8
	add r1, r1, sl, lsl #6
	bl sub_0201F598
	mov r2, sl, lsl #0x10
	ldr r0, [r4]
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl sub_0201B43C
	add sl, sl, #1
	cmp sl, #0xd
	blt _022BD7DC
_022BD81C:
	add sp, sp, #0x18
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022BD824: .word 0x020AFC68
_022BD828: .word 0x020AFC4C
	arm_func_end ov10_022BD75C

	arm_func_start ov10_022BD82C
ov10_022BD82C: ; 0x022BD82C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _022BDA78 ; =0x022DC1C0
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _022BD84C
	bl ov10_022BDC0C
_022BD84C:
	ldr r0, _022BDA7C ; =0x000027A4
	mov r1, #0xb
	bl MemAlloc
	ldr r2, _022BDA78 ; =0x022DC1C0
	ldr r1, _022BDA7C ; =0x000027A4
	str r0, [r2]
	bl MemZero
	bl sub_0206395C
	ldr r1, _022BDA78 ; =0x022DC1C0
	mov r2, #0
	ldr r0, [r1]
	add r0, r0, #0x2000
	str r4, [r0, #0x784]
	ldr r1, [r1]
	mvn r0, #0
_022BD888:
	add r2, r2, #1
	str r0, [r1, #0xc]
	cmp r2, #0x20
	add r1, r1, #0x13c
	blt _022BD888
	ldr r2, _022BDA78 ; =0x022DC1C0
	ldr r3, [sp, #0x10]
	ldr r0, [r2]
	ldr r1, [sp, #0x14]
	add r0, r0, #0x2000
	str r3, [r0, #0x78c]
	ldr r0, [r2]
	mov r3, #0
	add r0, r0, #0x2000
	str r1, [r0, #0x794]
	ldr r1, [r2]
	mov r0, r4
	add r1, r1, #0x2000
	strb r3, [r1, #0x79e]
	ldr r1, [r2]
	add r1, r1, #0x2000
	strb r3, [r1, #0x79f]
	ldr r1, [r2]
	add r1, r1, #0x2000
	strb r3, [r1, #0x7a0]
	bl ov10_022BFF30
	bl ov10_022C04D8
	ldr r0, _022BDA78 ; =0x022DC1C0
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x784]
	cmp r0, #0
	beq _022BD9D0
	cmp r0, #1
	bne _022BDA70
	mov r3, #0
	ldr r0, _022BDA80 ; =0x020AFC68
	str r3, [sp]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #0x124
	bl sub_0201D484
	mov r1, #0
	mov r2, r1
	mov r4, r0
	bl ov10_022BD75C
	ldr r0, _022BDA80 ; =0x020AFC68
	mov r1, r4
	ldr r0, [r0]
	bl DeleteWanTableEntryVeneer
	mov r3, #0
	ldr r0, _022BDA80 ; =0x020AFC68
	str r3, [sp]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #1
	bl sub_0201D484
	mov r4, r0
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _022BDA78 ; =0x022DC1C0
	mov r3, #1
	ldr r1, [r1]
	add r1, r1, #0x2000
	ldr r1, [r1, #0x78c]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_0201D9C8
	mov r0, r4
	mov r1, #1
	ldrsh r2, [sp, #0x18]
	bl ov10_022BD75C
	ldr r1, _022BDA78 ; =0x022DC1C0
	ldrsh r2, [sp, #0x18]
	ldr r0, [r1]
	add r0, r0, #0x2700
	strh r4, [r0, #0x88]
	ldr r0, [r1]
	add r0, r0, #0x2700
	strh r2, [r0, #0x90]
	b _022BDA70
_022BD9D0:
	mov r3, #0
	ldr r0, _022BDA80 ; =0x020AFC68
	str r3, [sp]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #0x124
	bl sub_0201D484
	ldr r1, _022BDA78 ; =0x022DC1C0
	mov r2, #0
	ldr r1, [r1]
	mov r3, r2
	add r1, r1, #0x2000
	ldr r1, [r1, #0x78c]
	mov r4, r0
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_0201DBB8
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl ov10_022BD75C
	ldr r0, _022BDA80 ; =0x020AFC68
	mov r1, r4
	ldr r0, [r0]
	bl DeleteWanTableEntryVeneer
	mov r2, #0
	str r2, [sp]
	ldr r0, _022BDA80 ; =0x020AFC68
	mov r1, #3
	ldr r0, [r0]
	mov r3, r2
	bl sub_0201D484
	ldr r2, _022BDA78 ; =0x022DC1C0
	mov r3, #0
	ldr r1, [r2]
	add r1, r1, #0x2700
	strh r0, [r1, #0x88]
	ldr r0, [r2]
	add r0, r0, #0x2700
	strh r3, [r0, #0x90]
_022BDA70:
	add sp, sp, #8
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022BDA78: .word 0x022DC1C0
_022BDA7C: .word 0x000027A4
_022BDA80: .word 0x020AFC68
	arm_func_end ov10_022BD82C

	arm_func_start ov10_022BDA84
ov10_022BDA84: ; 0x022BDA84
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	stmia sp, {r0, r1}
	mov r1, #0
	str r2, [sp, #8]
	mov r2, r1
	mov r3, r1
	mov r0, #1
	bl ov10_022BD82C
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end ov10_022BDA84

	arm_func_start ov10_022BDAB0
ov10_022BDAB0: ; 0x022BDAB0
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r0, [sp]
	mov r0, #0
	stmib sp, {r1, r2}
	mov r1, r0
	mov r2, r0
	mov r3, r0
	bl ov10_022BD82C
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end ov10_022BDAB0

	arm_func_start ov10_022BDADC
ov10_022BDADC: ; 0x022BDADC
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _022BDB50 ; =0x022DC1C0
	ldr r3, [r0]
	add r1, r3, #0x2000
	ldr r0, [r1, #0x784]
	cmp r0, #0
	beq _022BDB48
	cmp r0, #1
	bne _022BDB48
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	add r0, r3, #0x2700
	ldr r1, [r1, #0x78c]
	ldrsh r0, [r0, #0x88]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r3, #1
	bl sub_0201D9C8
	ldr r0, _022BDB50 ; =0x022DC1C0
	mov r1, #1
	ldr r0, [r0]
	add r2, r0, #0x2700
	ldrsh r0, [r2, #0x88]
	ldrsh r2, [r2, #0x90]
	bl ov10_022BD75C
_022BDB48:
	add sp, sp, #8
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022BDB50: .word 0x022DC1C0
	arm_func_end ov10_022BDADC

	arm_func_start ov10_022BDB54
ov10_022BDB54: ; 0x022BDB54
	ldr ip, _022BDB5C ; =sub_02063A0C
	bx ip
	.align 2, 0
_022BDB5C: .word sub_02063A0C
	arm_func_end ov10_022BDB54

	arm_func_start ov10_022BDB60
ov10_022BDB60: ; 0x022BDB60
	cmp r3, #0
	moveq r3, #0
	beq _022BDB74
	cmp r3, #1
	moveq r3, #1
_022BDB74:
	ldr ip, _022BDB7C ; =sub_020639B4
	bx ip
	.align 2, 0
_022BDB7C: .word sub_020639B4
	arm_func_end ov10_022BDB60

	arm_func_start ov10_022BDB80
ov10_022BDB80: ; 0x022BDB80
	ldr r3, _022BDBA0 ; =0x022DC1C0
	ldr r2, [r3]
	add r2, r2, #0x2000
	str r0, [r2, #0x798]
	ldr r0, [r3]
	add r0, r0, #0x2700
	strh r1, [r0, #0x9c]
	bx lr
	.align 2, 0
_022BDBA0: .word 0x022DC1C0
	arm_func_end ov10_022BDB80

	arm_func_start ov10_022BDBA4
ov10_022BDBA4: ; 0x022BDBA4
	ldr ip, _022BDBAC ; =sub_020639E8
	bx ip
	.align 2, 0
_022BDBAC: .word sub_020639E8
	arm_func_end ov10_022BDBA4

	arm_func_start ov10_022BDBB0
ov10_022BDBB0: ; 0x022BDBB0
	ldr r1, _022BDBC4 ; =0x022DC1C0
	ldr r1, [r1]
	add r1, r1, #0x2000
	strb r0, [r1, #0x7a0]
	bx lr
	.align 2, 0
_022BDBC4: .word 0x022DC1C0
	arm_func_end ov10_022BDBB0

	arm_func_start ov10_022BDBC8
ov10_022BDBC8: ; 0x022BDBC8
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _022BDC08 ; =0x022DC1C0
	mov r6, #0
	ldr r5, [r0]
	mvn r4, #0
_022BDBDC:
	ldr r0, [r5, #0xc]
	cmp r0, r4
	beq _022BDBF4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov10_022BDE50
_022BDBF4:
	add r6, r6, #1
	cmp r6, #0x20
	add r5, r5, #0x13c
	blt _022BDBDC
	ldmdb sp!, {r4, r5, r6, pc}
	.align 2, 0
_022BDC08: .word 0x022DC1C0
	arm_func_end ov10_022BDBC8

	arm_func_start ov10_022BDC0C
ov10_022BDC0C: ; 0x022BDC0C
	stmdb sp!, {r3, lr}
	bl ov10_022BDBC8
	ldr r0, _022BDC60 ; =0x022DC1C0
	ldr r1, _022BDC64 ; =0x020AFC68
	ldr r2, [r0]
	ldr r0, [r1]
	add r1, r2, #0x2700
	ldrsh r1, [r1, #0x88]
	bl DeleteWanTableEntryVeneer
	bl ov10_022C055C
	bl ov10_022BFF78
	ldr r0, _022BDC60 ; =0x022DC1C0
	ldr r0, [r0]
	cmp r0, #0
	beq _022BDC58
	bl MemFree
	ldr r0, _022BDC60 ; =0x022DC1C0
	mov r1, #0
	str r1, [r0]
_022BDC58:
	bl sub_02063DE4
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022BDC60: .word 0x022DC1C0
_022BDC64: .word 0x020AFC68
	arm_func_end ov10_022BDC0C

	arm_func_start ov10_022BDC68
ov10_022BDC68: ; 0x022BDC68
	stmdb sp!, {r3, lr}
	bl ov10_022BDBC8
	ldr r0, _022BDCA0 ; =0x022DC1C0
	mov r2, #0
	ldr r1, [r0]
	mvn r0, #0
_022BDC80:
	add r2, r2, #1
	str r0, [r1, #0xc]
	cmp r2, #0x20
	add r1, r1, #0x13c
	blt _022BDC80
	bl ov10_022BFFA4
	bl ov10_022C0588
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022BDCA0: .word 0x022DC1C0
	arm_func_end ov10_022BDC68

	arm_func_start ov10_022BDCA4
ov10_022BDCA4: ; 0x022BDCA4
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	moveq r0, #1
	bx lr
	arm_func_end ov10_022BDCA4

	arm_func_start ov10_022BDCBC
ov10_022BDCBC: ; 0x022BDCBC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	bl ov10_022BE9A0
	mvn r1, #0
	cmp r0, r1
	ldmeqdb sp!, {r4, r5, r6, pc}
	ldr r2, _022BDE44 ; =0x022DC1C0
	mov r1, #0x13c
	ldr r2, [r2]
	mla r4, r0, r1, r2
	ldr r0, [r4, #0x40]
	sub r0, r0, #5
	cmp r0, #1
	bhi _022BDD38
	mov r0, #0
	bl ov10_022BDCA4
	bl sub_02063E44
	ldr r2, _022BDE44 ; =0x022DC1C0
	mov r0, #0
	ldr r1, [r2]
	add r1, r1, #0x2000
	strb r0, [r1, #0x79e]
	ldr r1, [r2]
	add r1, r1, #0x2000
	ldr r1, [r1, #0x784]
	cmp r1, #0
	bne _022BDD30
	mov r1, r0
	bl ov11_022EA428
_022BDD30:
	add r0, r4, #0xe8
	bl sub_0206423C
_022BDD38:
	ldr r0, [r4, #0x40]
	cmp r0, #3
	bne _022BDD90
	ldr r1, [r4]
	mov r0, #0
	bl ov10_022C07D0
	mov r6, r0
	ldr r1, [r6, #4]
	cmp r1, #0
	bne _022BDD6C
	ldr r0, _022BDE48 ; =0x022C79D8
	bl DebugPrint0__0200C1FC
	b _022BDE34
_022BDD6C:
	sub r1, r1, #1
	ldr r0, _022BDE4C ; =0x022C7A18
	str r1, [r6, #4]
	bl DebugPrint0__0200C1FC
	ldr r0, [r6, #4]
	cmp r0, #0
	mvneq r0, #0
	streq r0, [r6]
	b _022BDE34
_022BDD90:
	cmp r0, #4
	bne _022BDDF4
	ldr r1, [r4]
	mov r0, #1
	bl ov10_022C07D0
	mov r6, r0
	ldr r1, [r6]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	bne _022BDE34
	ldr r1, [r6, #4]
	cmp r1, #0
	bne _022BDDD0
	ldr r0, _022BDE48 ; =0x022C79D8
	bl DebugPrint0__0200C1FC
	b _022BDE34
_022BDDD0:
	sub r1, r1, #1
	ldr r0, _022BDE4C ; =0x022C7A18
	str r1, [r6, #4]
	bl DebugPrint0__0200C1FC
	ldr r0, [r6, #4]
	cmp r0, #0
	mvneq r0, #0
	streq r0, [r6]
	b _022BDE34
_022BDDF4:
	cmp r0, #6
	ldr r1, [r4]
	bne _022BDE1C
	mov r0, #3
	bl ov10_022C07D0
	mov r1, #0
	str r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0]
	b _022BDE34
_022BDE1C:
	mov r0, #2
	bl ov10_022C07D0
	mov r1, #0
	str r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0]
_022BDE34:
	mov r0, r4
	mov r1, r5
	bl ov10_022BDEC4
	ldmdb sp!, {r4, r5, r6, pc}
	.align 2, 0
_022BDE44: .word 0x022DC1C0
_022BDE48: .word 0x022C79D8
_022BDE4C: .word 0x022C7A18
	arm_func_end ov10_022BDCBC

	arm_func_start ov10_022BDE50
ov10_022BDE50: ; 0x022BDE50
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov10_022BE9A0
	mvn r2, #0
	cmp r0, r2
	ldmeqdb sp!, {r4, pc}
	ldr r3, _022BDEB0 ; =0x022DC1C0
	mov r1, #0x13c
	ldr r3, [r3]
	mla r1, r0, r1, r3
	ldr r0, [r1, #0xc]
	cmp r0, r2
	ldmeqdb sp!, {r4, pc}
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	mov r0, r4
	bhi _022BDEA4
	mov r1, #0
	bl ov10_022BDCBC
	ldmdb sp!, {r4, pc}
_022BDEA4:
	mov r1, #1
	bl ov10_022BDCBC
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022BDEB0: .word 0x022DC1C0
	arm_func_end ov10_022BDE50

	arm_func_start GetEffectAnimationField0x19
GetEffectAnimationField0x19: ; 0x022BDEB4
	stmdb sp!, {r3, lr}
	bl GetEffectAnimation
	ldrsb r0, [r0, #0x19]
	ldmdb sp!, {r3, pc}
	arm_func_end GetEffectAnimationField0x19

	arm_func_start ov10_022BDEC4
ov10_022BDEC4: ; 0x022BDEC4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mvn r0, #0
	str r0, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0x60]
	ldr r0, [r4, #8]
	sub r0, r0, #5
	cmp r0, #1
	bhi _022BDF00
	cmp r1, #0
	ldmeqdb sp!, {r4, pc}
	ldrsh r0, [r4, #0xe4]
	bl ov10_022C04CC
	ldmdb sp!, {r4, pc}
_022BDF00:
	ldrsh r2, [r4, #0x64]
	cmp r2, #0
	ldmeqdb sp!, {r4, pc}
	cmp r1, #0
	beq _022BDF24
	ldr r0, _022BDF30 ; =0x020AFC68
	mov r1, r2
	ldr r0, [r0]
	bl DeleteWanTableEntryVeneer
_022BDF24:
	mov r0, #0
	strh r0, [r4, #0x64]
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022BDF30: .word 0x020AFC68
	arm_func_end ov10_022BDEC4

	arm_func_start ov10_022BDF34
ov10_022BDF34: ; 0x022BDF34
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xe8
	bl sub_020642A8
	cmp r0, #0
	bne _022BDFB4
	mov r0, r4
	mov r1, #1
	bl ov10_022BDEC4
	ldr r2, _022BDFBC ; =0x022DC1C0
	ldr r0, [r4]
	ldr r3, [r2]
	mov r1, #0
	add r0, r3, r0
	add r0, r0, #0x2000
	strb r1, [r0, #0x79e]
	ldr r0, [r2]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x784]
	cmp r0, #0
	bne _022BDF90
	mov r0, #0xd
	bl ov11_022EA428
_022BDF90:
	ldr r1, [r4]
	mov r0, #2
	bl ov10_022C07D0
	mov r2, #0
	str r2, [r0, #4]
	sub r1, r2, #1
	str r1, [r0]
	mov r0, r2
	ldmdb sp!, {r4, pc}
_022BDFB4:
	mov r0, #1
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022BDFBC: .word 0x022DC1C0
	arm_func_end ov10_022BDF34

	arm_func_start ov10_022BDFC0
ov10_022BDFC0: ; 0x022BDFC0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	ldr r0, [r7, #0x14]
	mov r6, r1
	bl GetEffectAnimation
	mov r1, #0
	mov r4, r0
	strb r1, [r7, #0x13a]
	ldr r0, [r4]
	mov r5, #1
	str r0, [r7, #0x40]
	ldr r0, [r4, #4]
	str r0, [r7, #0x44]
	ldr r0, [r4, #0x10]
	str r0, [r7, #0x58]
	ldr r1, [r7, #0x18]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r7, #0x5c]
	ldrb r0, [r4, #0x1b]
	strb r0, [r7, #0x61]
	ldrb r0, [r4, #0x1a]
	strb r0, [r7, #0x60]
	ldr r0, [r7, #0x40]
	cmp r0, #5
	cmpne r0, #6
	beq _022BE03C
	ldrsh r0, [r7, #0x64]
	bl sub_0201DA20
	str r0, [r7, #0x10]
_022BE03C:
	ldr r1, [r4, #0xc]
	mvn r0, #0
	str r1, [r7, #0x50]
	ldr r2, [r7, #0x1c]
	cmp r2, r0
	beq _022BE070
	ldr r0, [r7, #0x10]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	adds r0, r1, r0, ror #29
	ldreq r0, [r7, #0x50]
	addeq r0, r0, r2
	streq r0, [r7, #0x50]
_022BE070:
	mov r0, #0
	str r0, [r7, #0x4c]
	ldr r0, [r7, #0x40]
	cmp r0, #1
	cmpne r0, #2
	beq _022BE0A0
	ldr r1, [r7, #0x44]
	mov r2, r6
	bl ov10_022C05E0
	mvn r1, #2
	cmp r0, r1
	moveq r5, #1
_022BE0A0:
	ldr r0, [r7, #0x40]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022BE1F0
_022BE0B0: ; jump table
	b _022BE1F0 ; case 0
	b _022BE1A4 ; case 1
	b _022BE1D4 ; case 2
	b _022BE0CC ; case 3
	b _022BE0EC ; case 4
	b _022BE124 ; case 5
	arm_func_end ov10_022BDFC0

	arm_func_start caseD_6
caseD_6: ; 0x022BE0C8
	b _022BE18C
_022BE0CC:
	ldr r0, _022BE448 ; =0x022DC1C0
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x794]
	str r0, [r7, #0x54]
	ldr r0, [r4, #8]
	str r0, [r7, #0x48]
	b _022BE1F0
_022BE0EC:
	ldr r0, _022BE448 ; =0x022DC1C0
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x798]
	bl sub_0201E184
	ldr r1, _022BE448 ; =0x022DC1C0
	str r0, [r7, #0x54]
	ldr r0, [r1]
	mov r1, #0
	add r0, r0, #0x2700
	ldrsh r0, [r0, #0x9c]
	str r0, [r7, #0x4c]
	str r1, [r7, #0x48]
	b _022BE1F0
_022BE124:
	cmp r6, #0
	bne _022BE158
	mvn r0, #0
	str r0, [r7, #0x54]
	ldr r1, [r4, #8]
	ldr r0, _022BE448 ; =0x022DC1C0
	str r1, [r7, #0x48]
	ldr r0, [r0]
	ldrb r1, [r4, #0x18]
	add r0, r0, r6
	add r0, r0, #0x2000
	strb r1, [r0, #0x79e]
	b _022BE1F0
_022BE158:
	cmp r6, #1
	bne _022BE1F0
	mvn r0, #0
	str r0, [r7, #0x54]
	ldr r1, [r4, #8]
	ldr r0, _022BE448 ; =0x022DC1C0
	str r1, [r7, #0x48]
	ldr r0, [r0]
	ldrb r1, [r4, #0x18]
	add r0, r0, r6
	add r0, r0, #0x2000
	strb r1, [r0, #0x79e]
	b _022BE1F0
	arm_func_end caseD_6
_022BE18C:
	cmp r6, #0
	mvneq r0, #0
	streq r0, [r7, #0x54]
	ldreq r0, [r4, #8]
	streq r0, [r7, #0x48]
	b _022BE1F0
_022BE1A4:
	ldr r1, _022BE448 ; =0x022DC1C0
	ldr r0, [r1]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x78c]
	str r0, [r7, #0x54]
	ldr r0, [r1]
	add r0, r0, #0x2700
	ldrsh r0, [r0, #0x9c]
	str r0, [r7, #0x48]
	ldr r0, [r4, #8]
	str r0, [r7, #0x48]
	b _022BE1F0
_022BE1D4:
	ldr r0, _022BE448 ; =0x022DC1C0
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x78c]
	str r0, [r7, #0x54]
	ldr r0, [r4, #8]
	str r0, [r7, #0x48]
_022BE1F0:
	ldr r0, [r7, #0x40]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022BE440
_022BE200: ; jump table
	b _022BE440 ; case 0
	b _022BE21C ; case 1
	b _022BE280 ; case 2
	b _022BE300 ; case 3
	b _022BE36C ; case 4
	b _022BE3E4 ; case 5
	b _022BE418 ; case 6
_022BE21C:
	add r0, r7, #0x68
	bl sub_0201C0B0
	ldrsh r1, [r7, #0x64]
	add r0, r7, #0x68
	bl sub_0201C0E8
	add r0, r7, #0x68
	bl sub_0201C108
	ldr r0, [r7, #0x48]
	mov r2, #0
	and r0, r0, #0xff
	stmia sp, {r0, r2}
	ldrb r1, [r7, #0x61]
	add r0, r7, #0x68
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r3, [r7, #0x54]
	ldr r1, [r7, #0x50]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl sub_0201C2CC
	ldrh r0, [r7, #0x6a]
	orr r0, r0, #0x30
	orr r0, r0, #0x1000
	strh r0, [r7, #0x6a]
	b _022BE440
_022BE280:
	add r0, r7, #0x68
	bl sub_0201C0B0
	ldrsh r1, [r7, #0x64]
	add r0, r7, #0x68
	bl sub_0201C0E8
	add r0, r7, #0x68
	bl sub_0201C108
	ldr r0, [r7, #0x48]
	mov r2, #0
	and r0, r0, #0xff
	stmia sp, {r0, r2}
	ldrb r1, [r7, #0x61]
	add r0, r7, #0x68
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r3, [r7, #0x54]
	ldr r1, [r7, #0x50]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl sub_0201C2CC
	ldr r0, _022BE448 ; =0x022DC1C0
	ldr r0, [r0]
	add r0, r0, #0x2700
	ldrsh r0, [r0, #0x90]
	and r0, r0, #0xff
	and r0, r0, #0xf
	strb r0, [r7, #0xaa]
	ldrh r0, [r7, #0x6a]
	orr r0, r0, #0x30
	orr r0, r0, #0x1000
	strh r0, [r7, #0x6a]
	b _022BE440
_022BE300:
	add r0, r7, #0x68
	bl sub_0201C0B0
	ldrsh r1, [r7, #0x64]
	add r0, r7, #0x68
	bl sub_0201C0E8
	ldr r0, [r7, #0x48]
	mov r2, #0
	and r0, r0, #0xff
	stmia sp, {r0, r2}
	ldrb r1, [r7, #0x61]
	add r0, r7, #0x68
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r3, [r7, #0x54]
	ldr r1, [r7, #0x50]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl sub_0201C2CC
	ldrh r0, [r7, #0x6a]
	cmp r5, #0
	orr r0, r0, #0x30
	orr r0, r0, #0x1000
	strh r0, [r7, #0x6a]
	bne _022BE440
	add r0, r7, #0x68
	bl sub_0201C108
	b _022BE440
_022BE36C:
	add r0, r7, #0x68
	bl sub_0201C0B0
	ldrsh r1, [r7, #0x64]
	add r0, r7, #0x68
	bl sub_0201C0E8
	ldr r0, [r7, #0x48]
	mov r2, #0
	and r0, r0, #0xff
	stmia sp, {r0, r2}
	ldrb r1, [r7, #0x61]
	add r0, r7, #0x68
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r3, [r7, #0x54]
	ldr r1, [r7, #0x50]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl sub_0201C2CC
	ldrh r1, [r7, #0x6a]
	add r0, r7, #0x68
	orr r1, r1, #0x10
	strh r1, [r7, #0x6a]
	ldr r1, [r7, #0x4c]
	and r1, r1, #0xff
	bl sub_0201D0F8
	cmp r5, #0
	bne _022BE440
	add r0, r7, #0x68
	bl sub_0201C108
	b _022BE440
_022BE3E4:
	add r0, r7, #0xe8
	bl sub_020640BC
	ldrsh r1, [r7, #0xe4]
	add r0, r7, #0xe8
	bl sub_020640CC
	cmp r6, #1
	moveq r1, #1
	movne r1, #0
	add r0, r7, #0xe8
	bl sub_020640DC
	mov r0, #0
	strb r0, [r7, #0x104]
	b _022BE440
_022BE418:
	add r0, r7, #0xe8
	bl sub_020640BC
	ldrsh r1, [r7, #0xe4]
	add r0, r7, #0xe8
	bl sub_020640CC
	add r0, r7, #0xe8
	mov r1, #2
	bl sub_020640DC
	mov r0, #0
	strb r0, [r7, #0x104]
_022BE440:
	add sp, sp, #0x10
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022BE448: .word 0x022DC1C0

	arm_func_start ov10_022BE44C
ov10_022BE44C: ; 0x022BE44C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov sl, r0
	ldr r0, [sb]
	mov r8, r2
	bl GetEffectAnimation
	ldr r1, [sb]
	mov r7, r0
	cmp r1, #0
	mvneq r0, #0
	ldmeqdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r7]
	cmp r1, #2
	bne _022BE4A0
	ldr r0, _022BE72C ; =0x022DC1C0
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x784]
	cmp r0, #1
	mvnne r0, #0
	ldmnedb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022BE4A0:
	cmp r1, #1
	bne _022BE4C4
	ldr r0, _022BE72C ; =0x022DC1C0
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x784]
	cmp r0, #0
	mvnne r0, #0
	ldmnedb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022BE4C4:
	cmp r1, #3
	bne _022BE53C
	ldr r0, _022BE72C ; =0x022DC1C0
	mov r5, #0
	ldr r6, [r0]
	mov fp, #1
	mvn r4, #0
_022BE4E0:
	ldr r0, [r6, #0xc]
	cmp r0, r4
	beq _022BE528
	ldr r0, [r6, #8]
	cmp r0, #3
	bne _022BE528
	ldr r0, [r6, #0x14]
	ldr r1, [sb]
	cmp r0, r1
	beq _022BE528
	bl GetEffectAnimation
	ldr r1, [r0, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _022BE528
	mov r0, r6
	mov r1, fp
	bl ov10_022BDEC4
_022BE528:
	add r5, r5, #1
	cmp r5, #0x20
	add r6, r6, #0x13c
	blt _022BE4E0
	b _022BE59C
_022BE53C:
	cmp r1, #4
	bne _022BE59C
	ldr r0, _022BE72C ; =0x022DC1C0
	mov r5, #0
	ldr r4, [r0]
	mov r7, #1
	mvn r6, #0
_022BE558:
	ldr r0, [r4, #0xc]
	cmp r0, r6
	beq _022BE58C
	ldr r0, [r4, #8]
	cmp r0, #4
	bne _022BE58C
	ldr r1, [r4, #0x14]
	ldr r0, [sb]
	cmp r1, r0
	beq _022BE58C
	mov r0, r4
	mov r1, r7
	bl ov10_022BDEC4
_022BE58C:
	add r5, r5, #1
	cmp r5, #0x20
	add r4, r4, #0x13c
	blt _022BE558
_022BE59C:
	ldr r0, _022BE72C ; =0x022DC1C0
	mov r2, #0
	ldr r5, [r0]
	mvn r0, #0
	b _022BE71C
_022BE5B0:
	ldr r1, [r5, #0xc]
	cmp r1, r0
	bne _022BE714
	mov r0, r5
	mov r1, #0x13c
	bl MemZero
	mov r0, #0
	strh r0, [r5, #0x64]
	str r8, [r5]
	ldr r0, [sb]
	bl GetEffectAnimation
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #5
	bne _022BE618
	ldr r1, [r4, #4]
	bl ov10_022C0450
	strh r0, [r5, #0xe4]
	ldrsh r0, [r5, #0xe4]
	cmp r0, #0
	mvneq r0, #0
	ldmeqdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r3, r8
	ldmia r4, {r1, r2}
	bl ov10_022C01FC
	b _022BE6B8
_022BE618:
	cmp r0, #6
	bne _022BE64C
	ldr r1, [r4, #4]
	bl ov10_022C0450
	strh r0, [r5, #0xe4]
	ldrsh r0, [r5, #0xe4]
	cmp r0, #0
	mvneq r0, #0
	ldmeqdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r3, r8
	ldmia r4, {r1, r2}
	bl ov10_022C0280
	b _022BE6B8
_022BE64C:
	sub r1, r0, #1
	cmp r1, #1
	ldrls r0, _022BE72C ; =0x022DC1C0
	ldrls r0, [r0]
	addls r0, r0, #0x2700
	ldrlssh r0, [r0, #0x88]
	bls _022BE670
	ldr r1, [r4, #4]
	bl ov10_022C03F4
_022BE670:
	strh r0, [r5, #0x64]
	ldrsh r0, [r5, #0x64]
	cmp r0, #0
	mvneq r0, #0
	ldmeqdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r4]
	sub r1, r1, #3
	cmp r1, #1
	bhi _022BE6B8
	mov r1, #0
	str r1, [sp]
	ldr r2, _022BE72C ; =0x022DC1C0
	ldr r1, [r4]
	ldr r3, [r2]
	ldr r2, [r4, #4]
	add r3, r3, #0x2000
	ldr r3, [r3, #0x794]
	bl ov10_022C0114
_022BE6B8:
	ldr r1, [r4]
	ldr r0, _022BE72C ; =0x022DC1C0
	str r1, [r5, #8]
	str sl, [r5, #4]
	ldr r0, [r0]
	add r6, r5, #0x14
	add r0, r0, #0x2000
	ldr r1, [r0, #0x780]
	mov r4, #2
	mov r2, r1
	add r1, r1, #1
	str r1, [r0, #0x780]
	str r2, [r5, #0xc]
_022BE6EC:
	ldmia sb!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _022BE6EC
	ldmia sb, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldr r0, [r5, #0xc]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022BE714:
	add r2, r2, #1
	add r5, r5, #0x13c
_022BE71C:
	cmp r2, #0x20
	blt _022BE5B0
	mvn r0, #0
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022BE72C: .word 0x022DC1C0
	arm_func_end ov10_022BE44C

	arm_func_start ov10_022BE730
ov10_022BE730: ; 0x022BE730
	stmdb sp!, {r4, lr}
	bl ov10_022BE44C
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	ldmeqdb sp!, {r4, pc}
	mov r0, r4, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov10_022BE9A0
	mov r1, #0x13c
	ldr r2, _022BE77C ; =0x022DC1C0
	mul r3, r0, r1
	ldr r0, [r2]
	ldr r1, [r0, r3]
	add r0, r0, r3
	bl ov10_022BDFC0
	mov r0, r4, lsl #0x10
	mov r0, r0, asr #0x10
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022BE77C: .word 0x022DC1C0
	arm_func_end ov10_022BE730

	arm_func_start ov10_022BE780
ov10_022BE780: ; 0x022BE780
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x5c
	ldr r3, _022BE998 ; =0x022DC1C0
	mov sl, r0
	ldr r0, [r3]
	mov sb, r1
	add r0, r0, #0x2000
	ldr r0, [r0, #0x784]
	mov r8, r2
	cmp r0, #0
	bne _022BE980
	bl sub_02001808
	mov r4, r0
	ldr r0, [sb]
	bl GetEffectAnimation
	ldr r1, _022BE998 ; =0x022DC1C0
	mov r5, r0
	ldr r0, [r1]
	ldr r1, [sb]
	add r0, r0, #0x2000
	ldrb r0, [r0, #0x7a0]
	cmp r0, #0
	beq _022BE800
	cmp r1, #0xef
	cmpne r1, #0x14c
	ldrne r0, _022BE99C ; =0x00000287
	cmpne r1, r0
	subne r0, r0, #0x13c
	cmpne r1, r0
	bne _022BE830
	mvn r0, #0
	b _022BE990
_022BE800:
	cmp r1, #0xef
	cmpne r1, #0x14c
	ldrne r0, _022BE99C ; =0x00000287
	cmpne r1, r0
	subne r0, r0, #0x13c
	cmpne r1, r0
	bne _022BE830
	mov r0, #0x10c00
	bl ov10_022BFE6C
	cmp r0, #0
	mvnne r0, #0
	bne _022BE990
_022BE830:
	ldr r0, [r5]
	cmp r0, #5
	bne _022BE8A0
	ldr r1, [r5, #4]
	mov r0, #3
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	add r1, r1, #0x10c
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl GetFileLengthInPackWithPackNb
	cmp r4, r0
	bge _022BE980
	add r5, sp, #0x30
	mov r4, #2
_022BE86C:
	ldmia sb!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _022BE86C
	ldmia sb, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	mov r3, #8
	add r1, sp, #0x30
	mov r0, sl
	mov r2, r8
	str r3, [sp, #0x30]
	bl ov10_022BE730
	b _022BE990
_022BE8A0:
	cmp r0, #3
	bne _022BE980
	ldr r0, _022BE998 ; =0x022DC1C0
	mov fp, #0
	ldr r6, [r0]
	mvn r0, #0
	mov r7, fp
	str r0, [sp]
	b _022BE910
_022BE8C4:
	ldr r1, [r6, #0xc]
	ldr r0, [sp]
	cmp r1, r0
	beq _022BE908
	ldr r0, [r6, #8]
	cmp r0, #3
	bne _022BE908
	ldr r0, [r6, #0x14]
	ldr r1, [sb]
	cmp r0, r1
	beq _022BE908
	bl GetEffectAnimation
	ldr r1, [r5, #4]
	ldr r0, [r0, #4]
	cmp r1, r0
	moveq fp, #1
	beq _022BE918
_022BE908:
	add r7, r7, #1
	add r6, r6, #0x13c
_022BE910:
	cmp r7, #0x20
	blt _022BE8C4
_022BE918:
	cmp fp, #0
	bne _022BE980
	ldr r1, [r5, #4]
	mov r0, #3
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl GetFileLengthInPackWithPackNb
	cmp r4, r0
	bge _022BE980
	add r5, sp, #4
	mov r4, #2
_022BE94C:
	ldmia sb!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _022BE94C
	ldmia sb, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	mov r3, #8
	add r1, sp, #4
	mov r0, sl
	mov r2, r8
	str r3, [sp, #4]
	bl ov10_022BE730
	b _022BE990
_022BE980:
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov10_022BE730
_022BE990:
	add sp, sp, #0x5c
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022BE998: .word 0x022DC1C0
_022BE99C: .word 0x00000287
	arm_func_end ov10_022BE780

	arm_func_start ov10_022BE9A0
ov10_022BE9A0: ; 0x022BE9A0
	mvn r1, #0
	cmp r0, r1
	beq _022BE9DC
	ldr r1, _022BE9E4 ; =0x022DC1C0
	mov r2, #0
	ldr r3, [r1]
	b _022BE9D4
_022BE9BC:
	ldr r1, [r3, #0xc]
	cmp r1, r0
	moveq r0, r2
	bxeq lr
	add r2, r2, #1
	add r3, r3, #0x13c
_022BE9D4:
	cmp r2, #0x20
	blt _022BE9BC
_022BE9DC:
	mvn r0, #0
	bx lr
	.align 2, 0
_022BE9E4: .word 0x022DC1C0
	arm_func_end ov10_022BE9A0

	arm_func_start ov10_022BE9E8
ov10_022BE9E8: ; 0x022BE9E8
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	ldr lr, _022BEB20 ; =0x022C78D0
	add ip, sp, #0
	mov r6, r0
	mov r5, r1
	mov r4, #2
_022BEA04:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _022BEA04
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldrh r0, [r6]
	bl GetMoveAnimation
	ldrsh r0, [r0, #6]
	str r0, [sp]
	ldr r0, [r6, #0x10]
	str r0, [sp, #4]
	ldr r0, [r6, #0xc]
	str r0, [sp, #8]
	ldrh r0, [r6, #4]
	strh r0, [sp, #0xc]
	ldrh r0, [r6, #6]
	strh r0, [sp, #0xe]
	ldrh r0, [r6, #8]
	strh r0, [sp, #0x10]
	ldrh r0, [r6, #0xa]
	strh r0, [sp, #0x12]
	ldrsh r0, [r6, #2]
	ldrh r1, [r6]
	bl ov10_022BF088
	ldr r3, _022BEB24 ; =0x022C7884
	add r2, sp, #0x1c
	strb r0, [sp, #0x14]
	mov r1, #6
_022BEA78:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022BEA78
	add r1, sp, #0
	mov r0, #2
	mov r2, #0
	bl ov10_022BE780
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	beq _022BEB18
	mov r0, r4, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov10_022BE9A0
	mvn r1, #0
	cmp r0, r1
	moveq r0, r1
	beq _022BEB18
	ldr r2, _022BEB28 ; =0x022DC1C0
	mov r1, #0x13c
	ldr r3, [r2]
	ldrh r2, [r6, #4]
	mla r3, r0, r1, r3
	add r1, r3, #0x100
	strh r2, [r1, #0x28]
	ldrh r2, [r6, #6]
	mov r0, r4, lsl #0x10
	mov r0, r0, asr #0x10
	strh r2, [r1, #0x2a]
	ldrh r2, [r5]
	strh r2, [r1, #0x2c]
	ldrh r2, [r5, #2]
	strh r2, [r1, #0x2e]
	ldrsh r2, [r6, #2]
	strh r2, [r1, #0x30]
	ldrh r2, [r3, #0x24]
	strh r2, [r1, #0x32]
	ldrh r2, [r3, #0x26]
	strh r2, [r1, #0x34]
_022BEB18:
	add sp, sp, #0x2c
	ldmdb sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_022BEB20: .word 0x022C78D0
_022BEB24: .word 0x022C7884
_022BEB28: .word 0x022DC1C0
	arm_func_end ov10_022BE9E8

	arm_func_start ov10_022BEB2C
ov10_022BEB2C: ; 0x022BEB2C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	bl ov10_022BE9A0
	mvn r1, #0
	cmp r0, r1
	ldmeqdb sp!, {r4, r5, r6, pc}
	ldr r2, _022BEC04 ; =0x022DC1C0
	mov r1, #0x13c
	ldr r3, [r2]
	ldrh r2, [r6]
	mla r4, r0, r1, r3
	strh r2, [r4, #0x20]
	ldrh r1, [r6, #2]
	add r0, r4, #0x100
	strh r1, [r4, #0x22]
	ldrsh r1, [r0, #0x2e]
	ldrsh r0, [r0, #0x2a]
	sub r0, r1, r0
	bl Abs
	add r1, r4, #0x100
	ldrsh r2, [r1, #0x2c]
	ldrsh r1, [r1, #0x28]
	mov r6, r0
	sub r0, r2, r1
	bl Abs
	cmp r0, r6
	movle r0, r6
	mov r1, r0, asr #1
	add r0, r0, r1, lsr #30
	ldrsh r2, [r4, #0x26]
	mov r0, r0, asr #2
	sub r6, r0, #1
	add r1, r2, #9
	strh r1, [r4, #0x26]
	ldrsh r1, [r4, #0x24]
	mul r0, r1, r6
	strh r0, [r4, #0x24]
	ldrsh r0, [r4, #0x26]
	add r1, r6, #1
	mul r2, r0, r6
	strh r2, [r4, #0x26]
	ldrsh r0, [r4, #0x24]
	bl DivideInt
	strh r0, [r4, #0x24]
	ldrsh r0, [r4, #0x26]
	add r1, r6, #1
	bl DivideInt
	strh r0, [r4, #0x26]
	ldrsh r0, [r4, #0x26]
	sub r0, r0, #9
	strh r0, [r4, #0x26]
	str r5, [r4, #0x2c]
	ldmdb sp!, {r4, r5, r6, pc}
	.align 2, 0
_022BEC04: .word 0x022DC1C0
	arm_func_end ov10_022BEB2C

	arm_func_start ov10_022BEC08
ov10_022BEC08: ; 0x022BEC08
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	ldr r4, _022BEC8C ; =0x022C78FC
	add lr, sp, #0
	mov r6, r0
	mov r5, r1
	mov ip, #2
_022BEC24:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _022BEC24
	ldmia r4, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	mov r0, r6
	bl GetTrapAnimation
	str r0, [sp]
	ldrh r0, [r5]
	ldr r3, _022BEC90 ; =0x022C7884
	add r2, sp, #0x1c
	strh r0, [sp, #0xc]
	ldrh r0, [r5, #2]
	mov r1, #6
	strh r0, [sp, #0xe]
_022BEC64:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022BEC64
	add r1, sp, #0
	mov r0, #3
	mov r2, #0
	bl ov10_022BE780
	add sp, sp, #0x2c
	ldmdb sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_022BEC8C: .word 0x022C78FC
_022BEC90: .word 0x022C7884
	arm_func_end ov10_022BEC08

	arm_func_start ov10_022BEC94
ov10_022BEC94: ; 0x022BEC94
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x2c
	movs r5, r3
	mov r7, r1
	mov r6, r2
	beq _022BECB4
	bl GetItemAnimation1
	b _022BECB8
_022BECB4:
	bl GetItemAnimation2
_022BECB8:
	mov r4, r0
	mov r0, r4
	bl GetEffectAnimation
	ldrsb ip, [r0, #0x19]
	ldr sb, _022BED88 ; =0x022C7928
	add r8, sp, #0
	mov lr, #2
_022BECD4:
	ldmia sb!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	subs lr, lr, #1
	bne _022BECD4
	ldmia sb, {r0, r1, r2}
	stmia r8, {r0, r1, r2}
	str r4, [sp]
	ldrh r0, [r7]
	ldr r3, _022BED8C ; =0x022C7884
	add r2, sp, #0x1c
	strh r0, [sp, #0xc]
	ldrh r0, [r7, #2]
	mov r1, #6
	strh r0, [sp, #0xe]
_022BED0C:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022BED0C
	ldr r0, [sp, #0x48]
	cmp r5, #0
	str r0, [sp, #0x18]
	beq _022BED58
	mvn r0, #0
	cmp ip, r0
	beq _022BED70
	strb ip, [sp, #0x14]
	mov r0, ip, lsl #2
	ldrh r0, [r6, r0]
	add r1, r6, ip, lsl #2
	strh r0, [sp, #0x10]
	ldrh r0, [r1, #2]
	strh r0, [sp, #0x12]
	b _022BED70
_022BED58:
	mov r0, #3
	strb r0, [sp, #0x14]
	ldrh r0, [r6, #0xc]
	strh r0, [sp, #0x10]
	ldrh r0, [r6, #0xe]
	strh r0, [sp, #0x12]
_022BED70:
	add r1, sp, #0
	mov r0, #4
	mov r2, #0
	bl ov10_022BE780
	add sp, sp, #0x2c
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022BED88: .word 0x022C7928
_022BED8C: .word 0x022C7884
	arm_func_end ov10_022BEC94

	arm_func_start ov10_022BED90
ov10_022BED90: ; 0x022BED90
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1b8
	mov sb, r0
	ldrh r0, [sb]
	cmp r0, #0x52
	bne _022BEF1C
	ldr r3, _022BEFC4 ; =0x022C78B0
	add r2, sp, #0x38
	mov r1, #0x10
_022BEDB4:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022BEDB4
	mov r7, #0
	ldr r3, _022BEFC8 ; =0x022C7884
	add r2, sp, #0
	mov r6, r7
	mov r1, #6
_022BEDD8:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022BEDD8
_022BEDE8:
	mov r0, #0x2c
	mul r4, r6, r0
	add r5, sp, #0x58
	add r8, r5, r4
	mov r0, r8
	bl ov10_022BF274
	ldrh r0, [sb]
	bl GetMoveAnimation
	ldrsh r0, [r0, #2]
	add r1, sp, #0x38
	mov r2, r6, lsl #2
	str r0, [r5, r4]
	ldr r3, [sb, #0x10]
	add r0, r1, r6, lsl #2
	str r3, [r8, #4]
	ldr r3, [sb, #0xc]
	ldrsh r1, [r1, r2]
	str r3, [r8, #8]
	ldrh r3, [sb, #4]
	ldrsh r0, [r0, #2]
	strh r3, [r8, #0xc]
	ldrh r2, [sb, #6]
	sub r0, r0, #0x40
	strh r2, [r8, #0xe]
	ldrsh r2, [r8, #0xe]
	add r2, r2, #0x40
	strh r2, [r8, #0xe]
	ldrh r2, [sb, #8]
	strh r2, [r8, #0x10]
	ldrh r2, [sb, #0xa]
	strh r2, [r8, #0x12]
	ldrsh r2, [r8, #0x10]
	add r1, r2, r1
	strh r1, [r8, #0x10]
	ldrsh r1, [r8, #0x12]
	add r0, r1, r0
	strh r0, [r8, #0x12]
	ldrsh r0, [sb, #2]
	ldrh r1, [sb]
	bl ov10_022BF088
	ldr r1, _022BEFCC ; =0x0000FFFF
	strb r0, [r8, #0x14]
	str r1, [r8, #0x18]
	add r3, sp, #0
	add r2, r8, #0x1c
	mov r1, #6
_022BEEA0:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022BEEA0
	mov r2, #0
	mov r1, r8
	mov r0, #1
	str r2, [r8, #0x28]
	bl ov10_022BE780
	mov r4, r0
	mov r0, r4, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov10_022BE9A0
	mvn r1, #0
	cmp r0, r1
	beq _022BEEFC
	ldr r2, _022BEFD0 ; =0x022DC1C0
	mov r1, #0x13c
	ldr r2, [r2]
	mov r3, #6
	mla r1, r0, r1, r2
	add r0, r1, #0x100
	strh r3, [r0, #0x36]
_022BEEFC:
	cmp r6, #0
	add r6, r6, #1
	moveq r7, r4
	cmp r6, #8
	blt _022BEDE8
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	b _022BEFBC
_022BEF1C:
	ldr r6, _022BEFD4 ; =0x022C7954
	add r5, sp, #0xc
	mov r4, #2
_022BEF28:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _022BEF28
	ldmia r6, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldrh r0, [sb]
	bl GetMoveAnimation
	ldrsh r0, [r0, #2]
	str r0, [sp, #0xc]
	ldr r0, [sb, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [sb, #0xc]
	str r0, [sp, #0x14]
	ldrh r0, [sb, #4]
	strh r0, [sp, #0x18]
	ldrh r0, [sb, #6]
	strh r0, [sp, #0x1a]
	ldrh r0, [sb, #8]
	strh r0, [sp, #0x1c]
	ldrh r0, [sb, #0xa]
	strh r0, [sp, #0x1e]
	ldrsh r0, [sb, #2]
	ldrh r1, [sb]
	bl ov10_022BF088
	ldr r3, _022BEFC8 ; =0x022C7884
	add r2, sp, #0x28
	strb r0, [sp, #0x20]
	mov r1, #6
_022BEF9C:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022BEF9C
	add r1, sp, #0xc
	mov r0, #1
	mov r2, #0
	bl ov10_022BE780
_022BEFBC:
	add sp, sp, #0x1b8
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022BEFC4: .word 0x022C78B0
_022BEFC8: .word 0x022C7884
_022BEFCC: .word 0x0000FFFF
_022BEFD0: .word 0x022DC1C0
_022BEFD4: .word 0x022C7954
	arm_func_end ov10_022BED90

	arm_func_start ov10_022BEFD8
ov10_022BEFD8: ; 0x022BEFD8
	stmdb sp!, {r3, lr}
	bl ov10_022BE9A0
	mvn r1, #0
	cmp r0, r1
	beq _022BF000
	ldr r2, _022BF008 ; =0x022DC1C0
	mov r1, #0x13c
	ldr r2, [r2]
	mla r1, r0, r1, r2
	ldrsb r1, [r1, #0x28]
_022BF000:
	mov r0, r1
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022BF008: .word 0x022DC1C0
	arm_func_end ov10_022BEFD8

	arm_func_start ov10_022BF00C
ov10_022BF00C: ; 0x022BF00C
	stmdb sp!, {r3, lr}
	bl GetEffectAnimation
	ldrsb r0, [r0, #0x19]
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BF00C

	arm_func_start ov10_022BF01C
ov10_022BF01C: ; 0x022BF01C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, r1
	bl GetMoveAnimation
	mov r4, r0
	ldrh r0, [r4, #0x16]
	bl GetSpecialMonsterMoveAnimation
	mov r5, r0
	mov r0, r6
	mov r1, #0x258
	bl DivideInt
	mov r1, r1, lsl #0x10
	ldrsh r3, [r4, #0x14]
	mov r2, #0
	b _022BF078
_022BF058:
	ldrsh r0, [r5]
	cmp r0, r1, asr #16
	ldreqsb r0, [r5, #3]
	ldmeqdb sp!, {r4, r5, r6, pc}
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	add r5, r5, #6
_022BF078:
	cmp r2, r3
	blt _022BF058
	ldrsb r0, [r4, #0x11]
	ldmdb sp!, {r4, r5, r6, pc}
	arm_func_end ov10_022BF01C

	arm_func_start ov10_022BF088
ov10_022BF088: ; 0x022BF088
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, r1
	bl GetMoveAnimation
	mov r4, r0
	ldrh r0, [r4, #0x16]
	bl GetSpecialMonsterMoveAnimation
	mov r5, r0
	mov r0, r6
	mov r1, #0x258
	bl DivideInt
	mov r1, r1, lsl #0x10
	ldrsh r3, [r4, #0x14]
	mov r2, #0
	b _022BF0E4
_022BF0C4:
	ldrsh r0, [r5]
	cmp r0, r1, asr #16
	ldreqsb r0, [r5, #3]
	ldmeqdb sp!, {r4, r5, r6, pc}
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	add r5, r5, #6
_022BF0E4:
	cmp r2, r3
	blt _022BF0C4
	ldrsb r0, [r4, #0x11]
	ldmdb sp!, {r4, r5, r6, pc}
	arm_func_end ov10_022BF088

	arm_func_start ov10_022BF0F4
ov10_022BF0F4: ; 0x022BF0F4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, r1
	bl GetMoveAnimation
	mov r4, r0
	ldrh r0, [r4, #0x16]
	bl GetSpecialMonsterMoveAnimation
	mov r5, r0
	mov r0, r6
	mov r1, #0x258
	bl DivideInt
	mov r1, r1, lsl #0x10
	ldrsh r3, [r4, #0x14]
	mov r2, #0
	b _022BF150
_022BF130:
	ldrsh r0, [r5]
	cmp r0, r1, asr #16
	ldreqsh r0, [r5, #4]
	ldmeqdb sp!, {r4, r5, r6, pc}
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	add r5, r5, #6
_022BF150:
	cmp r2, r3
	blt _022BF130
	ldrh r0, [r4, #0x12]
	ldmdb sp!, {r4, r5, r6, pc}
	arm_func_end ov10_022BF0F4

	arm_func_start ov10_022BF160
ov10_022BF160: ; 0x022BF160
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldrh r0, [r5]
	mov r4, #0
	bl GetMoveAnimation
	ldrsh r1, [r0]
	ldrh r0, [r5]
	str r1, [sp]
	bl GetMoveAnimation
	ldrsh r1, [r0, #2]
	ldrh r0, [r5]
	str r1, [sp, #4]
	bl GetMoveAnimation
	ldrsh r1, [r0, #4]
	ldrh r0, [r5]
	str r1, [sp, #8]
	bl GetMoveAnimation
	ldrsh r0, [r0, #6]
	mov r8, r4
	add r7, sp, #0
	str r0, [sp, #0xc]
	mov r5, r4
	mov r6, #1
	b _022BF1E8
_022BF1C4:
	ldr r0, [r7, r8, lsl #2]
	bl GetEffectAnimation
	ldr r0, [r0]
	cmp r0, #5
	moveq r0, r6
	movne r0, r5
	ands r4, r0, #0xff
	bne _022BF1F0
	add r8, r8, #1
_022BF1E8:
	cmp r8, #4
	blt _022BF1C4
_022BF1F0:
	mov r0, r4
	add sp, sp, #0x10
	ldmdb sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov10_022BF160

	arm_func_start ov10_022BF1FC
ov10_022BF1FC: ; 0x022BF1FC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldrh r0, [r5]
	mov r4, r1
	bl GetMoveAnimation
	ldrsh r1, [r0]
	ldrh r0, [r5]
	str r1, [sp]
	bl GetMoveAnimation
	ldrsh r1, [r0, #2]
	ldrh r0, [r5]
	str r1, [sp, #4]
	bl GetMoveAnimation
	ldrsh r1, [r0, #4]
	ldrh r0, [r5]
	str r1, [sp, #8]
	bl GetMoveAnimation
	ldrsh r1, [r0, #6]
	add r0, sp, #0
	str r1, [sp, #0xc]
	ldr r0, [r0, r4, lsl #2]
	bl GetEffectAnimation
	ldr r0, [r0]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	add sp, sp, #0x10
	ldmdb sp!, {r3, r4, r5, pc}
	arm_func_end ov10_022BF1FC

	arm_func_start ov10_022BF274
ov10_022BF274: ; 0x022BF274
	stmdb sp!, {r4, lr}
	mov r1, #0x2c
	mov r4, r0
	bl MemZero
	mvn r0, #0
	strb r0, [r4, #0x14]
	add r0, r0, #0x10000
	str r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	strh r0, [r4, #0x20]
	mov r0, #0
	strh r0, [r4, #0x22]
	strh r0, [r4, #0x24]
	strh r0, [r4, #0x26]
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022BF274

	arm_func_start ov10_022BF2B4
ov10_022BF2B4: ; 0x022BF2B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	mov r4, r1
	bl GetEffectAnimation
	ldrsb r3, [r0, #0x19]
	mov r1, r5
	mov r2, r4
	mov r0, #7
	strb r3, [r5, #0x14]
	bl ov10_022BE780
	ldmdb sp!, {r3, r4, r5, pc}
	arm_func_end ov10_022BF2B4

	arm_func_start ov10_022BF2E4
ov10_022BF2E4: ; 0x022BF2E4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	mov r4, r1
	bl GetEffectAnimation
	ldrsb r3, [r0, #0x19]
	mov r1, r5
	mov r2, r4
	mov r0, #7
	strb r3, [r5, #0x14]
	bl ov10_022BE44C
	ldmdb sp!, {r3, r4, r5, pc}
	arm_func_end ov10_022BF2E4

	arm_func_start ov10_022BF314
ov10_022BF314: ; 0x022BF314
	stmdb sp!, {r3, lr}
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldmeqdb sp!, {r3, pc}
	bl ov10_022BE9A0
	ldr r2, _022BF358 ; =0x022DC1C0
	mov r1, #0x13c
	ldr r2, [r2]
	mla r0, r1, r0, r2
	ldr r1, [r0, #4]
	cmp r1, #0
	ldrne r2, [r0, #0xc]
	mvnne r1, #0
	cmpne r2, r1
	moveq r0, #0
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022BF358: .word 0x022DC1C0
	arm_func_end ov10_022BF314

	arm_func_start ov10_022BF35C
ov10_022BF35C: ; 0x022BF35C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov10_022BF314
	cmp r0, #0
	ldmeqdb sp!, {r4, pc}
	ldrb r1, [r0, #0x13a]
	cmp r1, #0
	beq _022BF388
	mov r0, r4
	bl ov10_022BF3EC
	ldmdb sp!, {r4, pc}
_022BF388:
	ldr r1, [r0]
	bl ov10_022BDFC0
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022BF35C

	arm_func_start ov10_022BF394
ov10_022BF394: ; 0x022BF394
	stmdb sp!, {r4, lr}
	bl ov10_022BF314
	movs r4, r0
	ldmeqdb sp!, {r4, pc}
	mov r0, #1
	strb r0, [r4, #0x13a]
	ldr r0, [r4, #0x40]
	bl ov10_022BFE54
	cmp r0, #0
	beq _022BF3CC
	add r0, r4, #0xe8
	mov r1, #1
	bl sub_020640D4
	ldmdb sp!, {r4, pc}
_022BF3CC:
	ldr r0, [r4, #0x40]
	bl ov10_022BFE3C
	cmp r0, #0
	ldmeqdb sp!, {r4, pc}
	add r0, r4, #0x68
	mov r1, #1
	bl sub_0201D198
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022BF394

	arm_func_start ov10_022BF3EC
ov10_022BF3EC: ; 0x022BF3EC
	stmdb sp!, {r4, lr}
	bl ov10_022BF314
	movs r4, r0
	ldmeqdb sp!, {r4, pc}
	mov r0, #0
	strb r0, [r4, #0x13a]
	ldr r0, [r4, #0x40]
	bl ov10_022BFE54
	cmp r0, #0
	beq _022BF424
	add r0, r4, #0xe8
	mov r1, #0
	bl sub_020640D4
	ldmdb sp!, {r4, pc}
_022BF424:
	ldr r0, [r4, #0x40]
	bl ov10_022BFE3C
	cmp r0, #0
	ldmeqdb sp!, {r4, pc}
	add r0, r4, #0x68
	mov r1, #0
	bl sub_0201D198
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022BF3EC

	arm_func_start ov10_022BF444
ov10_022BF444: ; 0x022BF444
	stmdb sp!, {r3, lr}
	bl ov10_022BF314
	cmp r0, #0
	ldrneb r0, [r0, #0x13a]
	moveq r0, #0
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BF444

	arm_func_start ov10_022BF45C
ov10_022BF45C: ; 0x022BF45C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov10_022BE9A0
	mvn r1, #0
	cmp r0, r1
	ldmeqdb sp!, {r4, r5, r6, pc}
	ldr r2, _022BF4E8 ; =0x022DC1C0
	mov r1, #0x13c
	ldr r2, [r2]
	cmp r6, #0
	mla r1, r0, r1, r2
	ldrneh r0, [r6]
	ldr r3, [sp, #0x10]
	strneh r0, [r1, #0x20]
	ldrneh r0, [r6, #2]
	strneh r0, [r1, #0x22]
	cmp r5, #0
	ldrneh r0, [r5]
	strneh r0, [r1, #0x24]
	ldrneh r0, [r5, #2]
	strneh r0, [r1, #0x26]
	ldr r0, _022BF4EC ; =0x0000FFFF
	cmp r4, r0
	strne r4, [r1, #0x2c]
	cmp r3, #0
	ldmeqdb sp!, {r4, r5, r6, pc}
	add r2, r1, #0x30
	mov r1, #6
_022BF4D4:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022BF4D4
	ldmdb sp!, {r4, r5, r6, pc}
	.align 2, 0
_022BF4E8: .word 0x022DC1C0
_022BF4EC: .word 0x0000FFFF
	arm_func_end ov10_022BF45C

	arm_func_start ov10_022BF4F0
ov10_022BF4F0: ; 0x022BF4F0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r3, [r6, #0xc]
	mvn r2, #0
	mov r4, r1
	cmp r3, r2
	beq _022BF750
	ldr r2, [r6, #0x18]
	cmp r2, #0
	bgt _022BF6D4
	ldr r2, [r6, #0x40]
	cmp r2, #5
	bne _022BF52C
	bl ov10_022BDF34
	b _022BF6D4
_022BF52C:
	cmp r2, #6
	bne _022BF53C
	bl ov10_022BDF34
	b _022BF6D4
_022BF53C:
	add r0, r6, #0x68
	bl sub_0201D1B0
	cmp r0, #0
	bne _022BF598
	ldr r0, [r6, #8]
	sub r0, r0, #3
	cmp r0, #2
	bhi _022BF580
	ldr r0, [r6, #0x3c]
	tst r0, #1
	bne _022BF6D4
	ldr r0, [r6, #0xc]
	mov r1, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov10_022BDCBC
	b _022BF6D4
_022BF580:
	ldr r0, [r6, #0xc]
	mov r1, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov10_022BDCBC
	b _022BF6D4
_022BF598:
	add r0, r6, #0x68
	bl sub_0201C458
	ldr r1, [r6, #0x10]
	mov r0, #0
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #29
	adds r1, r2, r1, ror #29
	bne _022BF5DC
	ldr r1, [r6, #0x1c]
	cmp r1, #3
	cmpne r1, #4
	cmpne r1, #5
	bne _022BF5D4
	sub r0, r0, #3
	b _022BF5E0
_022BF5D4:
	add r0, r0, #3
	b _022BF5E0
_022BF5DC:
	add r0, r0, #3
_022BF5E0:
	ldr r1, _022BF758 ; =0x022C7870
	ldrsb r2, [r6, #0x28]
	ldrh r5, [r1, #0xc]
	ldrh r3, [r1, #0xe]
	mvn r1, #0
	cmp r2, r1
	ldrnesh r2, [r6, #0x24]
	strh r5, [sp]
	ldrnesh r1, [r6, #0x26]
	strh r3, [sp, #2]
	strneh r2, [sp]
	strneh r1, [sp, #2]
	ldrsh r1, [sp]
	cmp r1, #0x63
	ldrnesh r1, [sp, #2]
	cmpne r1, #0x63
	beq _022BF6D4
	ldr r5, [r6, #0x2c]
	ldr r2, _022BF75C ; =0x0000FFFF
	cmp r5, r2
	bne _022BF648
	ldrsh r3, [r6, #0x22]
	ldrsh r2, [r4, #2]
	sub r2, r3, r2
	add r2, r2, r2, lsr #31
	add r5, r0, r2, asr #1
_022BF648:
	add r2, r6, #0x100
	ldrsh r7, [r6, #0x20]
	ldrsh r0, [r2, #0x36]
	ldrsh lr, [r4]
	ldrsh ip, [r6, #0x22]
	ldrsh r4, [r4, #2]
	add r3, r7, r0
	ldrsh r0, [sp]
	strh r3, [r6, #0x20]
	sub r7, r7, lr
	sub lr, ip, r4
	ldrsh ip, [r6, #0x22]
	ldrsh r3, [r2, #0x38]
	add r4, r0, r7
	mvn r2, #0x3f
	add r0, ip, r3
	strh r0, [r6, #0x22]
	cmp r4, r2
	add r7, r1, lr
	ble _022BF6D4
	rsb r0, r2, #0xff
	cmp r4, r0
	bge _022BF6D4
	cmp r7, r2
	ble _022BF6D4
	cmp r7, #0x100
	bge _022BF6D4
	add r0, r6, #0x68
	add r1, r6, #0x30
	bl sub_0201D110
	strh r4, [r6, #0x84]
	strh r7, [r6, #0x86]
	add r0, r6, #0x68
	strh r5, [r6, #0xa0]
	bl sub_0201CF5C
_022BF6D4:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r6, #0x18]
	ldr r1, [r6, #0x58]
	mvn r0, #0
	cmp r1, r0
	beq _022BF730
	ldr r0, [r6, #0x5c]
	cmp r0, #0
	bne _022BF730
	ldr r0, _022BF760 ; =0x022DC1C0
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x784]
	cmp r0, #0
	bne _022BF724
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	bl sub_02017C80
_022BF724:
	mvn r0, #0
	str r0, [r6, #0x58]
	str r0, [r6, #0x5c]
_022BF730:
	ldr r0, [r6, #0x5c]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r6, #0x5c]
	ldrb r0, [r6, #0x60]
	cmp r0, #0
	moveq r0, #1
	ldmeqdb sp!, {r3, r4, r5, r6, r7, pc}
_022BF750:
	mov r0, #0
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022BF758: .word 0x022C7870
_022BF75C: .word 0x0000FFFF
_022BF760: .word 0x022DC1C0
	arm_func_end ov10_022BF4F0

	arm_func_start ov10_022BF764
ov10_022BF764: ; 0x022BF764
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _022BF7CC ; =0x022DC1C0
	mov r4, r0
	ldr r6, [r1]
	cmp r6, #0
	moveq r0, #0
	beq _022BF7C4
	ldr r0, _022BF7D0 ; =0x022C7870
	add r2, sp, #0
	ldrh r1, [r0, #0x10]
	cmp r4, #0
	moveq r4, r2
	strh r1, [sp]
	ldrh r0, [r0, #0x12]
	mov r5, #0
	strh r0, [sp, #2]
_022BF7A8:
	mov r0, r6
	mov r1, r4
	bl ov10_022BF4F0
	add r5, r5, #1
	cmp r5, #0x20
	add r6, r6, #0x13c
	blt _022BF7A8
_022BF7C4:
	add sp, sp, #4
	ldmdb sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_022BF7CC: .word 0x022DC1C0
_022BF7D0: .word 0x022C7870
	arm_func_end ov10_022BF764

	arm_func_start ov10_022BF7D4
ov10_022BF7D4: ; 0x022BF7D4
	ldr ip, _022BF7DC ; =ov10_022C039C
	bx ip
	.align 2, 0
_022BF7DC: .word ov10_022C039C
	arm_func_end ov10_022BF7D4

	arm_func_start ov10_022BF7E0
ov10_022BF7E0: ; 0x022BF7E0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _022BF85C ; =0x022DC1C0
	mov r6, r0
	ldr r5, [r1]
	cmp r5, #0
	moveq r0, #0
	ldmeqdb sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _022BF860 ; =0x022C7870
	add r2, sp, #0
	ldrh r1, [r0, #8]
	cmp r6, #0
	mov r4, #0
	strh r1, [sp]
	ldrh r0, [r0, #0xa]
	moveq r6, r2
	mov r7, #0
	strh r0, [sp, #2]
_022BF824:
	ldr r0, [r5, #0x40]
	bl ov10_022BFE3C
	cmp r0, #0
	beq _022BF844
	mov r0, r5
	mov r1, r6
	bl ov10_022BF4F0
	mov r4, r0
_022BF844:
	add r7, r7, #1
	cmp r7, #0x20
	add r5, r5, #0x13c
	blt _022BF824
	mov r0, r4
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022BF85C: .word 0x022DC1C0
_022BF860: .word 0x022C7870
	arm_func_end ov10_022BF7E0

	arm_func_start ov10_022BF864
ov10_022BF864: ; 0x022BF864
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _022BF8E0 ; =0x022DC1C0
	mov r6, r0
	ldr r5, [r1]
	cmp r5, #0
	moveq r0, #0
	ldmeqdb sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _022BF8E4 ; =0x022C7870
	add r2, sp, #0
	ldrh r1, [r0]
	cmp r6, #0
	mov r4, #0
	strh r1, [sp]
	ldrh r0, [r0, #2]
	moveq r6, r2
	mov r7, #0
	strh r0, [sp, #2]
_022BF8A8:
	ldr r0, [r5, #0x40]
	bl ov10_022BFE54
	cmp r0, #0
	beq _022BF8C8
	mov r0, r5
	mov r1, r6
	bl ov10_022BF4F0
	mov r4, r0
_022BF8C8:
	add r7, r7, #1
	cmp r7, #0x20
	add r5, r5, #0x13c
	blt _022BF8A8
	mov r0, r4
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022BF8E0: .word 0x022DC1C0
_022BF8E4: .word 0x022C7870
	arm_func_end ov10_022BF864

	arm_func_start ov10_022BF8E8
ov10_022BF8E8: ; 0x022BF8E8
	ldr r1, _022BF900 ; =0x022DC1C0
	ldr r1, [r1]
	add r0, r1, r0
	add r0, r0, #0x2000
	ldrb r0, [r0, #0x79e]
	bx lr
	.align 2, 0
_022BF900: .word 0x022DC1C0
	arm_func_end ov10_022BF8E8

	arm_func_start AnimationHasMoreFrames
AnimationHasMoreFrames: ; 0x022BF904
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	bxeq lr
	ldr r1, _022BF960 ; =0x022DC1C0
	mov r2, #0
	ldr r3, [r1]
	b _022BF950
_022BF924:
	ldr r1, [r3, #0xc]
	cmp r1, r0
	bne _022BF948
	ldrb r0, [r3, #0x60]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
_022BF948:
	add r2, r2, #1
	add r3, r3, #0x13c
_022BF950:
	cmp r2, #0x20
	blt _022BF924
	mov r0, #0
	bx lr
	.align 2, 0
_022BF960: .word 0x022DC1C0
	arm_func_end AnimationHasMoreFrames

	arm_func_start ov10_022BF964
ov10_022BF964: ; 0x022BF964
	stmdb sp!, {r3, lr}
	bl ov10_022BE9A0
	mvn r1, #0
	cmp r0, r1
	beq _022BF9C0
	ldr r2, _022BF9C8 ; =0x022DC1C0
	mov r1, #0x13c
	ldr r2, [r2]
	mla r1, r0, r1, r2
	ldr r0, [r1, #0x18]
	cmp r0, #0
	movgt r0, #1
	ldmgtdb sp!, {r3, pc}
	ldr r0, [r1, #0x40]
	sub r0, r0, #5
	cmp r0, #1
	movls r0, #1
	ldmlsdb sp!, {r3, pc}
	add r0, r1, #0x68
	bl sub_0201D1B0
	cmp r0, #0
	movne r0, #1
	ldmnedb sp!, {r3, pc}
_022BF9C0:
	mov r0, #0
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022BF9C8: .word 0x022DC1C0
	arm_func_end ov10_022BF964

	arm_func_start ov10_022BF9CC
ov10_022BF9CC: ; 0x022BF9CC
	stmdb sp!, {r3, lr}
	ldr r2, _022BFA38 ; =0x022DC1C0
	mov ip, #0
	ldr lr, [r2]
	mvn r2, #0
	b _022BFA14
_022BF9E4:
	ldr r3, [lr, #0xc]
	cmp r3, r2
	beq _022BFA0C
	cmp r0, #0
	bne _022BFA04
	ldrb r3, [lr, #0x60]
	cmp r3, #0
	bne _022BFA0C
_022BFA04:
	mov r0, #1
	ldmdb sp!, {r3, pc}
_022BFA0C:
	add ip, ip, #1
	add lr, lr, #0x13c
_022BFA14:
	cmp ip, #0x20
	blt _022BF9E4
	mov r0, #2
	bl ov10_022C07E8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022BFA38: .word 0x022DC1C0
	arm_func_end ov10_022BF9CC

	arm_func_start ov10_022BFA3C
ov10_022BFA3C: ; 0x022BFA3C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, r1
	bl GetMoveAnimation
	mov r4, r0
	ldrh r0, [r4, #0x16]
	bl GetSpecialMonsterMoveAnimation
	mov r5, r0
	mov r0, r6
	mov r1, #0x258
	bl DivideInt
	mov r1, r1, lsl #0x10
	ldrsh r3, [r4, #0x14]
	mov r2, #0
	b _022BFA98
_022BFA78:
	ldrsh r0, [r5]
	cmp r0, r1, asr #16
	ldreqb r0, [r5, #2]
	ldmeqdb sp!, {r4, r5, r6, pc}
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	add r5, r5, #6
_022BFA98:
	cmp r2, r3
	blt _022BFA78
	ldrb r0, [r4, #0x10]
	ldmdb sp!, {r4, r5, r6, pc}
	arm_func_end ov10_022BFA3C

	arm_func_start ov10_022BFAA8
ov10_022BFAA8: ; 0x022BFAA8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x2c
	ldr r5, _022BFB64 ; =0x022C7980
	add lr, sp, #0
	mov r4, r0
	mov ip, #2
_022BFAC0:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _022BFAC0
	ldmia r5, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	ldrh r0, [r4]
	bl GetMoveAnimation
	ldrsh r0, [r0]
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldrh r0, [r4, #4]
	strh r0, [sp, #0xc]
	ldrh r0, [r4, #6]
	strh r0, [sp, #0xe]
	ldrh r0, [r4, #8]
	strh r0, [sp, #0x10]
	ldrh r0, [r4, #0xa]
	strh r0, [sp, #0x12]
	ldrh r0, [r4]
	bl GetMoveAnimation
	ldrsh r0, [r0]
	bl GetEffectAnimation
	ldrsb r0, [r0, #0x19]
	ldr r3, _022BFB68 ; =0x022C7884
	add r2, sp, #0x1c
	strb r0, [sp, #0x14]
	mov r1, #6
_022BFB3C:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022BFB3C
	add r1, sp, #0
	mov r0, #5
	mov r2, #0
	bl ov10_022BE780
	add sp, sp, #0x2c
	ldmdb sp!, {r4, r5, pc}
	.align 2, 0
_022BFB64: .word 0x022C7980
_022BFB68: .word 0x022C7884
	arm_func_end ov10_022BFAA8

	arm_func_start ov10_022BFB6C
ov10_022BFB6C: ; 0x022BFB6C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov10_022BE9A0
	mvn r1, #0
	cmp r0, r1
	beq _022BFC4C
	ldr r2, _022BFC54 ; =0x022DC1C0
	mov r1, #0x13c
	ldr r2, [r2]
	mla ip, r0, r1, r2
	add r0, ip, #0x100
	ldrsh r1, [r0, #0x36]
	cmp r1, #0
	ldreqsh r0, [r0, #0x38]
	cmpeq r0, #0
	ldreqh r0, [r6]
	streqh r0, [ip, #0x20]
	ldreqh r0, [r6, #2]
	streqh r0, [ip, #0x22]
	ldr r0, [ip, #4]
	cmp r0, #6
	addeq r0, r4, #1
	streq r0, [ip, #0x2c]
	beq _022BFC24
	ldr r0, [ip, #0x10]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	adds r0, r1, r0, ror #29
	addne r0, r4, #1
	strne r0, [ip, #0x2c]
	bne _022BFC24
	ldr r6, _022BFC58 ; =0x022C7890
	add r7, sp, #0
	ldmia r6!, {r0, r1, r2, r3}
	mov lr, r7
	stmia r7!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	ldr r6, [sp, #0x38]
	and r0, r6, #7
	ldr r0, [lr, r0, lsl #2]
	add r0, r4, r0
	str r0, [ip, #0x2c]
_022BFC24:
	ldrsb r1, [ip, #0x28]
	mvn r0, #0
	cmp r1, r0
	ldrneh r0, [r5]
	strneh r0, [ip, #0x24]
	ldrneh r0, [r5, #2]
	strneh r0, [ip, #0x26]
	moveq r0, #0
	streqh r0, [ip, #0x24]
	streqh r0, [ip, #0x26]
_022BFC4C:
	add sp, sp, #0x20
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022BFC54: .word 0x022DC1C0
_022BFC58: .word 0x022C7890
	arm_func_end ov10_022BFB6C

	arm_func_start ov10_022BFC5C
ov10_022BFC5C: ; 0x022BFC5C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x2c
	ldr r5, _022BFD18 ; =0x022C79AC
	add lr, sp, #0
	mov r4, r0
	mov ip, #2
_022BFC74:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _022BFC74
	ldmia r5, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	ldrh r0, [r4]
	bl GetMoveAnimation
	ldrsh r0, [r0, #4]
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldrh r0, [r4, #4]
	strh r0, [sp, #0xc]
	ldrh r0, [r4, #6]
	strh r0, [sp, #0xe]
	ldrh r0, [r4, #8]
	strh r0, [sp, #0x10]
	ldrh r0, [r4, #0xa]
	strh r0, [sp, #0x12]
	ldrh r0, [r4]
	bl GetMoveAnimation
	ldrsh r0, [r0, #4]
	bl GetEffectAnimation
	ldrsb r0, [r0, #0x19]
	ldr r3, _022BFD1C ; =0x022C7884
	add r2, sp, #0x1c
	strb r0, [sp, #0x14]
	mov r1, #6
_022BFCF0:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022BFCF0
	add r1, sp, #0
	mov r0, #6
	mov r2, #0
	bl ov10_022BE780
	add sp, sp, #0x2c
	ldmdb sp!, {r4, r5, pc}
	.align 2, 0
_022BFD18: .word 0x022C79AC
_022BFD1C: .word 0x022C7884
	arm_func_end ov10_022BFC5C

	arm_func_start ov10_022BFD20
ov10_022BFD20: ; 0x022BFD20
	stmdb sp!, {r4, lr}
	mov r0, #2
	mov r1, #0
	bl ov10_022C07E8
	mov r4, r0
	mov r0, #2
	mov r1, #1
	bl ov10_022C07E8
	orr r4, r4, r0
	mov r0, #3
	mov r1, #0
	bl ov10_022C07E8
	orr r0, r4, r0
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022BFD20

	arm_func_start ov10_022BFD58
ov10_022BFD58: ; 0x022BFD58
	stmdb sp!, {r3, lr}
	bl GetMoveAnimation
	ldrb r0, [r0, #8]
	and r0, r0, #7
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BFD58

	arm_func_start ov10_022BFD6C
ov10_022BFD6C: ; 0x022BFD6C
	stmdb sp!, {r3, lr}
	bl GetMoveAnimation
	ldrb r0, [r0, #8]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BFD6C

	arm_func_start ov10_022BFD8C
ov10_022BFD8C: ; 0x022BFD8C
	stmdb sp!, {r3, lr}
	bl GetMoveAnimation
	ldrb r0, [r0, #8]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BFD8C

	arm_func_start ov10_022BFDAC
ov10_022BFDAC: ; 0x022BFDAC
	stmdb sp!, {r3, lr}
	bl GetMoveAnimation
	ldrb r0, [r0, #8]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BFDAC

	arm_func_start ov10_022BFDCC
ov10_022BFDCC: ; 0x022BFDCC
	stmdb sp!, {r3, lr}
	bl GetMoveAnimation
	ldrb r0, [r0, #8]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022BFDCC

	arm_func_start ov10_022BFDEC
ov10_022BFDEC: ; 0x022BFDEC
	cmp r0, #0x65
	ldrne r1, _022BFE08 ; =0x0000010E
	cmpne r0, r1
	cmpne r0, #0x1bc
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022BFE08: .word 0x0000010E
	arm_func_end ov10_022BFDEC

	arm_func_start ov10_022BFE0C
ov10_022BFE0C: ; 0x022BFE0C
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end ov10_022BFE0C

	arm_func_start ov10_022BFE18
ov10_022BFE18: ; 0x022BFE18
	add r0, r0, #0x10c
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end ov10_022BFE18

	arm_func_start ov10_022BFE28
ov10_022BFE28: ; 0x022BFE28
	add r0, r0, #0x22
	add r0, r0, #0x100
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end ov10_022BFE28

	arm_func_start ov10_022BFE3C
ov10_022BFE3C: ; 0x022BFE3C
	sub r0, r0, #1
	cmp r0, #3
	movls r0, #1
	movhi r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov10_022BFE3C

	arm_func_start ov10_022BFE54
ov10_022BFE54: ; 0x022BFE54
	sub r0, r0, #5
	cmp r0, #1
	movls r0, #1
	movhi r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov10_022BFE54

	arm_func_start ov10_022BFE6C
ov10_022BFE6C: ; 0x022BFE6C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02001808
	cmp r0, r4
	movge r0, #0
	ldmgedb sp!, {r4, pc}
	ldr r1, _022BFE9C ; =0x022DC1C0
	mov r0, #1
	ldr r1, [r1]
	add r1, r1, #0x2000
	strb r0, [r1, #0x7a0]
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022BFE9C: .word 0x022DC1C0
	arm_func_end ov10_022BFE6C

	arm_func_start GetEffectAnimation
GetEffectAnimation: ; 0x022BFEA0
	ldr r2, _022BFEB0 ; =0x022CC52C
	mov r1, #0x1c
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
_022BFEB0: .word 0x022CC52C
	arm_func_end GetEffectAnimation

	arm_func_start GetMoveAnimation
GetMoveAnimation: ; 0x022BFEB4
	ldr r2, _022BFEC4 ; =0x022C9064
	mov r1, #0x18
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
_022BFEC4: .word 0x022C9064
	arm_func_end GetMoveAnimation

	arm_func_start GetSpecialMonsterMoveAnimation
GetSpecialMonsterMoveAnimation: ; 0x022BFEC8
	ldr r2, _022BFED8 ; =0x022D11BC
	mov r1, #6
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
_022BFED8: .word 0x022D11BC
	arm_func_end GetSpecialMonsterMoveAnimation

	arm_func_start GetTrapAnimation
GetTrapAnimation: ; 0x022BFEDC
	ldr r1, _022BFEEC ; =0x022C7A50
	mov r0, r0, lsl #1
	ldrsh r0, [r1, r0]
	bx lr
	.align 2, 0
_022BFEEC: .word 0x022C7A50
	arm_func_end GetTrapAnimation

	arm_func_start GetItemAnimation1
GetItemAnimation1: ; 0x022BFEF0
	ldr r1, _022BFF00 ; =0x022C7A84
	mov r0, r0, lsl #2
	ldrsh r0, [r1, r0]
	bx lr
	.align 2, 0
_022BFF00: .word 0x022C7A84
	arm_func_end GetItemAnimation1

	arm_func_start GetItemAnimation2
GetItemAnimation2: ; 0x022BFF04
	ldr r1, _022BFF14 ; =0x022C7A86
	mov r0, r0, lsl #2
	ldrsh r0, [r1, r0]
	bx lr
	.align 2, 0
_022BFF14: .word 0x022C7A86
	arm_func_end GetItemAnimation2

	arm_func_start GetMoveAnimationSpeed
GetMoveAnimationSpeed: ; 0x022BFF18
	mov r1, #0x18
	mul r1, r0, r1
	ldr r0, _022BFF2C ; =0x022C9070
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_022BFF2C: .word 0x022C9070
	arm_func_end GetMoveAnimationSpeed

	arm_func_start ov10_022BFF30
ov10_022BFF30: ; 0x022BFF30
	stmdb sp!, {r4, lr}
	ldr r1, _022BFF74 ; =0x022DC1C4
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _022BFF64
	mov r0, #0x84
	mov r1, #0xb
	bl MemAlloc
	ldr r2, _022BFF74 ; =0x022DC1C4
	mov r1, #0x84
	str r0, [r2]
	bl MemZero
_022BFF64:
	ldr r0, _022BFF74 ; =0x022DC1C4
	ldr r0, [r0]
	str r4, [r0]
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022BFF74: .word 0x022DC1C4
	arm_func_end ov10_022BFF30

	arm_func_start ov10_022BFF78
ov10_022BFF78: ; 0x022BFF78
	stmdb sp!, {r3, lr}
	ldr r0, _022BFFA0 ; =0x022DC1C4
	ldr r0, [r0]
	cmp r0, #0
	ldmeqdb sp!, {r3, pc}
	bl MemFree
	ldr r0, _022BFFA0 ; =0x022DC1C4
	mov r1, #0
	str r1, [r0]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022BFFA0: .word 0x022DC1C4
	arm_func_end ov10_022BFF78

	arm_func_start ov10_022BFFA4
ov10_022BFFA4: ; 0x022BFFA4
	stmdb sp!, {r3, lr}
	ldr r0, _022BFFFC ; =0x022DC1C4
	mov ip, #0
	ldr r1, [r0]
	mov r3, ip
	str ip, [r1]
	mov r1, ip
_022BFFC0:
	mov lr, r3
_022BFFC4:
	ldr r2, [r0]
	add r2, r2, #4
	add r2, r2, ip, lsl #6
	str r1, [r2, lr, lsl #5]
	add r2, r2, lr, lsl #5
	strh r1, [r2, #6]
	add lr, lr, #1
	str r1, [r2, #0xc]
	cmp lr, #2
	blt _022BFFC4
	add ip, ip, #1
	cmp ip, #2
	blt _022BFFC0
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022BFFFC: .word 0x022DC1C4
	arm_func_end ov10_022BFFA4

	arm_func_start ov10_022C0000
ov10_022C0000: ; 0x022C0000
	stmdb sp!, {r3, lr}
	ldr r1, _022C0064 ; =0x022DC1C4
	mov lr, r0
	ldr r3, [r1]
	mov r2, #0
	b _022C0054
_022C0018:
	ldr r0, [lr, #8]
	add r1, r3, r0, lsl #6
	add r0, r1, r2, lsl #5
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _022C0050
	add r0, r1, r2, lsl #5
	add ip, r0, #4
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	mov r0, #1
	ldmdb sp!, {r3, pc}
_022C0050:
	add r2, r2, #1
_022C0054:
	cmp r2, #2
	blt _022C0018
	mov r0, #0
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C0064: .word 0x022DC1C4
	arm_func_end ov10_022C0000

	arm_func_start ov10_022C0068
ov10_022C0068: ; 0x022C0068
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r1
	cmp r0, #2
	beq _022C0088
	cmp r0, #3
	beq _022C00C8
	b _022C0104
_022C0088:
	mov r1, #0
	sub r0, r1, #1
	mov ip, #5
	mov r3, #0xe
	str ip, [sp]
	str r2, [sp, #8]
	str r3, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x1c]
	bl ov10_022BD744
	cmp r0, #1
	moveq r0, #0
	movne r0, #2
	str r0, [sp, #0x18]
	strh r4, [sp, #4]
	b _022C0104
_022C00C8:
	mov r1, #0
	sub r0, r1, #1
	mov ip, #6
	mov r3, #0xe
	str ip, [sp]
	str r2, [sp, #8]
	str r3, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x1c]
	bl ov10_022BD744
	cmp r0, #1
	moveq r0, #0
	movne r0, #2
	str r0, [sp, #0x18]
	strh r4, [sp, #4]
_022C0104:
	add r0, sp, #0
	bl ov10_022C0000
	add sp, sp, #0x20
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022C0068

	arm_func_start ov10_022C0114
ov10_022C0114: ; 0x022C0114
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	sub r4, r1, #1
	mov r7, r0
	mov r6, r2
	mov r5, r3
	cmp r4, #1
	ldr r4, [sp, #0x38]
	bls _022C01F4
	cmp r7, #0
	beq _022C01F4
	mov r0, r1
	mov r1, r6
	mov r2, r4
	bl ov10_022C067C
	mov r8, r0
	mvn r1, #0
	cmp r8, r1
	beq _022C01F4
	sub r1, r1, #1
	cmp r8, r1
	beq _022C01E8
	mov r1, r6
	mov r2, r4
	bl ov10_022C075C
	cmp r8, #0
	beq _022C018C
	cmp r8, #1
	beq _022C01B8
	b _022C01E0
_022C018C:
	mov r1, #1
	sub r0, r1, #2
	mov r2, #3
	str r2, [sp]
	str r4, [sp, #8]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r5, [sp, #0x1c]
	str r0, [sp, #0x18]
	strh r7, [sp, #6]
	b _022C01E0
_022C01B8:
	mov r1, #0
	sub r0, r1, #1
	mov r2, #4
	str r2, [sp]
	str r4, [sp, #8]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r5, [sp, #0x1c]
	str r0, [sp, #0x18]
	strh r7, [sp, #6]
_022C01E0:
	add r0, sp, #0
	bl ov10_022C0000
_022C01E8:
	mov r0, r6
	mov r1, r4
	bl ov10_022C0780
_022C01F4:
	add sp, sp, #0x20
	ldmdb sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov10_022C0114

	arm_func_start ov10_022C01FC
ov10_022C01FC: ; 0x022C01FC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r4, r0
	mov r7, r2
	mov r6, r3
	cmp r5, #5
	ldmnedb sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_0206409C
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqdb sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r7
	mov r2, r6
	bl ov10_022C067C
	mov r5, r0
	mvn r1, #0
	cmp r5, r1
	ldmeqdb sp!, {r3, r4, r5, r6, r7, pc}
	sub r1, r1, #1
	cmp r5, r1
	beq _022C0270
	mov r1, r7
	mov r2, r6
	bl ov10_022C075C
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl ov10_022C0068
_022C0270:
	mov r0, r7
	mov r1, r6
	bl ov10_022C0780
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov10_022C01FC

	arm_func_start ov10_022C0280
ov10_022C0280: ; 0x022C0280
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r4, r0
	mov r7, r2
	mov r6, r3
	cmp r5, #6
	ldmnedb sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_0206409C
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldmeqdb sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r7
	mov r2, r6
	bl ov10_022C067C
	mov r5, r0
	mvn r1, #0
	cmp r5, r1
	ldmeqdb sp!, {r3, r4, r5, r6, r7, pc}
	sub r1, r1, #1
	cmp r5, r1
	beq _022C02F4
	mov r1, r7
	mov r2, r6
	bl ov10_022C075C
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl ov10_022C0068
_022C02F4:
	mov r0, r7
	mov r1, r6
	bl ov10_022C0780
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov10_022C0280

	arm_func_start ov10_022C0304
ov10_022C0304: ; 0x022C0304
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4]
	cmp r0, #0
	ldmeqdb sp!, {r4, pc}
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022C0390
_022C0324: ; jump table
	b _022C0390 ; case 0
	b _022C0390 ; case 1
	b _022C0390 ; case 2
	b _022C0340 ; case 3
	b _022C0390 ; case 4
	b _022C034C ; case 5
	b _022C0390 ; case 6
_022C0340:
	mov r0, #0
	strh r0, [r4, #6]
	b _022C0390
_022C034C:
	bl ov10_022BD744
	cmp r0, #0
	bne _022C0364
	mov r0, #5
	mov r1, #0
	bl ov11_022EA428
_022C0364:
	ldr r0, [r4]
	cmp r0, #0
	beq _022C0390
	ldrsh r0, [r4, #4]
	bl sub_0206409C
	ldr r0, [r4, #8]
	bl ov10_022BDCA4
	mov r2, r0
	ldrsh r0, [r4, #4]
	ldr r1, [r4, #0x14]
	bl sub_02064014
_022C0390:
	mov r0, #0
	str r0, [r4]
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022C0304

	arm_func_start ov10_022C039C
ov10_022C039C: ; 0x022C039C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _022C03F0 ; =0x022DC1C4
	ldr r0, [r4]
	cmp r0, #0
	ldmeqdb sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0
	mov r5, r6
_022C03B8:
	mov r7, r5
_022C03BC:
	ldr r2, [r4]
	add r0, r2, #4
	add r1, r0, r6, lsl #6
	ldr r0, [r2]
	add r1, r1, r7, lsl #5
	bl ov10_022C0304
	add r7, r7, #1
	cmp r7, #2
	blt _022C03BC
	add r6, r6, #1
	cmp r6, #2
	blt _022C03B8
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C03F0: .word 0x022DC1C4
	arm_func_end ov10_022C039C

	arm_func_start ov10_022C03F4
ov10_022C03F4: ; 0x022C03F4
	stmdb sp!, {r3, lr}
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _022C042C
_022C0404: ; jump table
	b _022C042C ; case 0
	b _022C042C ; case 1
	b _022C042C ; case 2
	b _022C041C ; case 3
	b _022C041C ; case 4
	b _022C042C ; case 5
_022C041C:
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov10_022BFE0C
	mov r2, r0
_022C042C:
	mov r1, #0
	ldr r0, _022C044C ; =0x020AFC68
	str r1, [sp]
	ldr r0, [r0]
	mov r1, #3
	mov r3, #0xf
	bl sub_0201D484
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C044C: .word 0x020AFC68
	arm_func_end ov10_022C03F4

	arm_func_start ov10_022C0450
ov10_022C0450: ; 0x022C0450
	stmdb sp!, {r3, lr}
	cmp r0, #6
	mov r2, #0
	addls pc, pc, r0, lsl #2
	b _022C04C4
_022C0464: ; jump table
	b _022C04C4 ; case 0
	b _022C04C4 ; case 1
	b _022C04C4 ; case 2
	b _022C04C4 ; case 3
	b _022C04C4 ; case 4
	b _022C0480 ; case 5
	b _022C04A4 ; case 6
_022C0480:
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov10_022BFE18
	mov r1, r0
	mov r0, #3
	mov r2, #0xf
	bl sub_02063FC8
	mov r2, r0
	b _022C04C4
_022C04A4:
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov10_022BFE28
	mov r1, r0
	mov r0, #3
	mov r2, #0xf
	bl sub_02063FC8
	mov r2, r0
_022C04C4:
	mov r0, r2
	ldmdb sp!, {r3, pc}
	arm_func_end ov10_022C0450

	arm_func_start ov10_022C04CC
ov10_022C04CC: ; 0x022C04CC
	ldr ip, _022C04D4 ; =sub_02063FF4
	bx ip
	.align 2, 0
_022C04D4: .word sub_02063FF4
	arm_func_end ov10_022C04CC

	arm_func_start ov10_022C04D8
ov10_022C04D8: ; 0x022C04D8
	stmdb sp!, {r4, lr}
	ldr r0, _022C0558 ; =0x022DC1C8
	ldr r0, [r0]
	cmp r0, #0
	bne _022C0508
	mov r0, #0x40
	mov r1, #0xb
	bl MemAlloc
	ldr r2, _022C0558 ; =0x022DC1C8
	mov r1, #0x40
	str r0, [r2]
	bl MemZero
_022C0508:
	mov lr, #0
	ldr r0, _022C0558 ; =0x022DC1C8
	mvn r3, #0
	mov r2, lr
	mov ip, lr
_022C051C:
	mov r4, ip
_022C0520:
	ldr r1, [r0]
	add r1, r1, lr, lsl #5
	str r3, [r1, r4, lsl #3]
	ldr r1, [r0]
	add r1, r1, lr, lsl #5
	add r1, r1, r4, lsl #3
	add r4, r4, #1
	str r2, [r1, #4]
	cmp r4, #4
	blt _022C0520
	add lr, lr, #1
	cmp lr, #2
	blt _022C051C
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022C0558: .word 0x022DC1C8
	arm_func_end ov10_022C04D8

	arm_func_start ov10_022C055C
ov10_022C055C: ; 0x022C055C
	stmdb sp!, {r3, lr}
	ldr r0, _022C0584 ; =0x022DC1C8
	ldr r0, [r0]
	cmp r0, #0
	ldmeqdb sp!, {r3, pc}
	bl MemFree
	ldr r0, _022C0584 ; =0x022DC1C8
	mov r1, #0
	str r1, [r0]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C0584: .word 0x022DC1C8
	arm_func_end ov10_022C055C

	arm_func_start ov10_022C0588
ov10_022C0588: ; 0x022C0588
	stmdb sp!, {r4, lr}
	mov lr, #0
	ldr r0, _022C05DC ; =0x022DC1C8
	mvn r3, #0
	mov r2, lr
	mov ip, lr
_022C05A0:
	mov r4, ip
_022C05A4:
	ldr r1, [r0]
	add r1, r1, lr, lsl #5
	str r3, [r1, r4, lsl #3]
	ldr r1, [r0]
	add r1, r1, lr, lsl #5
	add r1, r1, r4, lsl #3
	add r4, r4, #1
	str r2, [r1, #4]
	cmp r4, #4
	blt _022C05A4
	add lr, lr, #1
	cmp lr, #2
	blt _022C05A0
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022C05DC: .word 0x022DC1C8
	arm_func_end ov10_022C0588

	arm_func_start ov10_022C05E0
ov10_022C05E0: ; 0x022C05E0
	cmp r0, #3
	bne _022C0604
	ldr r0, _022C0678 ; =0x022DC1C8
	ldr r0, [r0]
	ldr r0, [r0, r2, lsl #5]
	cmp r1, r0
	bne _022C0670
	mov r0, #0
	bx lr
_022C0604:
	cmp r0, #4
	bne _022C062C
	ldr r0, _022C0678 ; =0x022DC1C8
	ldr r0, [r0]
	add r0, r0, r2, lsl #5
	ldr r0, [r0, #8]
	cmp r1, r0
	bne _022C0670
	mov r0, #1
	bx lr
_022C062C:
	cmp r0, #6
	bne _022C0654
	ldr r0, _022C0678 ; =0x022DC1C8
	ldr r0, [r0]
	add r0, r0, r2, lsl #5
	ldr r0, [r0, #0x18]
	cmp r1, r0
	bne _022C0670
	mov r0, #3
	bx lr
_022C0654:
	ldr r0, _022C0678 ; =0x022DC1C8
	ldr r0, [r0]
	add r0, r0, r2, lsl #5
	ldr r0, [r0, #0x10]
	cmp r1, r0
	moveq r0, #2
	bxeq lr
_022C0670:
	mvn r0, #2
	bx lr
	.align 2, 0
_022C0678: .word 0x022DC1C8
	arm_func_end ov10_022C05E0

	arm_func_start ov10_022C067C
ov10_022C067C: ; 0x022C067C
	cmp r0, #3
	bne _022C06B4
	ldr r0, _022C0758 ; =0x022DC1C8
	ldr r3, [r0]
	ldr r0, [r3, r2, lsl #5]
	cmp r1, r0
	mvneq r0, #1
	bxeq lr
	add r0, r3, r2, lsl #5
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _022C0750
	mov r0, #0
	bx lr
_022C06B4:
	cmp r0, #4
	bne _022C06EC
	ldr r0, _022C0758 ; =0x022DC1C8
	ldr r0, [r0]
	add r2, r0, r2, lsl #5
	ldr r0, [r2, #8]
	cmp r1, r0
	mvneq r0, #1
	bxeq lr
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _022C0750
	mov r0, #1
	bx lr
_022C06EC:
	cmp r0, #6
	bne _022C0724
	ldr r0, _022C0758 ; =0x022DC1C8
	ldr r0, [r0]
	add r2, r0, r2, lsl #5
	ldr r0, [r2, #0x18]
	cmp r1, r0
	mvneq r0, #1
	bxeq lr
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	bne _022C0750
	mov r0, #3
	bx lr
_022C0724:
	ldr r0, _022C0758 ; =0x022DC1C8
	ldr r0, [r0]
	add r2, r0, r2, lsl #5
	ldr r0, [r2, #0x10]
	cmp r1, r0
	mvneq r0, #1
	bxeq lr
	ldr r0, [r2, #0x14]
	cmp r0, #0
	moveq r0, #2
	bxeq lr
_022C0750:
	mvn r0, #0
	bx lr
	.align 2, 0
_022C0758: .word 0x022DC1C8
	arm_func_end ov10_022C067C

	arm_func_start ov10_022C075C
ov10_022C075C: ; 0x022C075C
	ldr r3, _022C077C ; =0x022DC1C8
	ldr r3, [r3]
	add r3, r3, r2, lsl #5
	add r2, r3, r0, lsl #3
	ldr r2, [r2, #4]
	cmp r2, #0
	streq r1, [r3, r0, lsl #3]
	bx lr
	.align 2, 0
_022C077C: .word 0x022DC1C8
	arm_func_end ov10_022C075C

	arm_func_start ov10_022C0780
ov10_022C0780: ; 0x022C0780
	stmdb sp!, {r3, lr}
	ldr r2, _022C07CC ; =0x022DC1C8
	mov ip, #0
	ldr lr, [r2]
	add r3, lr, r1, lsl #5
	b _022C07C0
_022C0798:
	ldr r2, [r3, ip, lsl #3]
	cmp r0, r2
	bne _022C07BC
	add r0, lr, #4
	add r1, r0, r1, lsl #5
	ldr r0, [r1, ip, lsl #3]
	add r0, r0, #1
	str r0, [r1, ip, lsl #3]
	ldmdb sp!, {r3, pc}
_022C07BC:
	add ip, ip, #1
_022C07C0:
	cmp ip, #3
	ble _022C0798
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C07CC: .word 0x022DC1C8
	arm_func_end ov10_022C0780

	arm_func_start ov10_022C07D0
ov10_022C07D0: ; 0x022C07D0
	ldr r2, _022C07E4 ; =0x022DC1C8
	ldr r2, [r2]
	add r1, r2, r1, lsl #5
	add r0, r1, r0, lsl #3
	bx lr
	.align 2, 0
_022C07E4: .word 0x022DC1C8
	arm_func_end ov10_022C07D0

	arm_func_start ov10_022C07E8
ov10_022C07E8: ; 0x022C07E8
	ldr r2, _022C0810 ; =0x022DC1C8
	ldr r2, [r2]
	add r1, r2, r1, lsl #5
	add r0, r1, r0, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022C0810: .word 0x022DC1C8
	arm_func_end ov10_022C07E8

	arm_func_start ov10_022C0814
ov10_022C0814: ; 0x022C0814
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r2, _022C0968 ; =0x022DC1D0
	mov r8, r0
	ldr r0, [r2]
	mov r7, r1
	cmp r0, #0
	ldmnedb sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #0x610
	mov r1, #0xf
	bl MemAlloc
	ldr r2, _022C0968 ; =0x022DC1D0
	mov r1, #0x610
	str r0, [r2]
	bl MemZero
	ldr r3, _022C0968 ; =0x022DC1D0
	mov r1, #0
	ldr r0, [r3]
	mov r2, #1
	strb r1, [r0, #0x285]
	ldr r0, [r3]
	mov r6, r1
	strb r1, [r0, #0x286]
	ldr r0, [r3]
	strb r1, [r0, #0x5f2]
	ldr r0, [r3]
	strb r2, [r0, #0x5f3]
	mvn r0, #1
_022C0880:
	ldr r4, [r3]
	add r2, r1, #1
	add r4, r4, r1
	strb r0, [r4, #0x27c]
	ldr r4, [r3]
	mov r2, r2, lsl #0x10
	add r4, r4, r1
	strb r0, [r4, #0x280]
	ldr r4, [r3]
	add r4, r4, r1
	mov r1, r2, asr #0x10
	strb r6, [r4, #0x84]
	cmp r1, #4
	blt _022C0880
	ldr r4, _022C0968 ; =0x022DC1D0
	mvn r5, #1
	ldr r1, [r4]
	mov sb, #0x7c
	strb r0, [r1, #0x284]
	ldr r0, [r4]
	strh r6, [r0, #4]
_022C08D4:
	ldr r0, [r4]
	add r0, r0, #0x88
	mla r0, r6, sb, r0
	bl sub_0201C0B0
	add r0, r6, #1
	ldr r1, [r4]
	mov r0, r0, lsl #0x10
	add r1, r1, r6
	mov r6, r0, asr #0x10
	strb r5, [r1, #0x278]
	cmp r6, #4
	blt _022C08D4
	ldr r0, _022C0968 ; =0x022DC1D0
	ldr r0, [r0]
	add r0, r0, #0x310
	bl ov10_022C1E50
	ldr r0, _022C0968 ; =0x022DC1D0
	ldr r0, [r0]
	add r0, r0, #0x480
	bl ov10_022C1E50
	ldr r0, _022C0968 ; =0x022DC1D0
	mov r6, #0
	ldr r1, [r0]
	strb r7, [r1, #0x5f0]
	ldr r1, [r0]
	strb r6, [r1, #0x5f1]
	ldr r1, [r0]
	strb r6, [r1, #0x5f4]
	ldr r5, [r0]
	ldmia r8!, {r0, r1, r2, r3}
	add r4, r5, #0x1f8
	add r4, r4, #0x400
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r8]
	str r0, [r4]
	strb r6, [r5, #0x5f5]
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022C0968: .word 0x022DC1D0
	arm_func_end ov10_022C0814

	arm_func_start ov10_022C096C
ov10_022C096C: ; 0x022C096C
	stmdb sp!, {r3, lr}
	ldr r0, _022C0994 ; =0x022DC1D0
	ldr r0, [r0]
	cmp r0, #0
	ldmeqdb sp!, {r3, pc}
	bl MemFree
	ldr r0, _022C0994 ; =0x022DC1D0
	mov r1, #0
	str r1, [r0]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C0994: .word 0x022DC1D0
	arm_func_end ov10_022C096C

	arm_func_start ov10_022C0998
ov10_022C0998: ; 0x022C0998
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _022C09E4 ; =0x022DC1D0
	mov r6, r0
	ldr r4, [r2]
	mov r5, r1
	cmp r4, #0
	ldmeqdb sp!, {r4, r5, r6, pc}
	add lr, r4, #0x310
	mov ip, #0x17
_022C09BC:
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _022C09BC
	ldrb r0, [r4, #0x5f3]
	cmp r0, #0
	movne r0, #0
	strneb r0, [r4, #0x5f2]
	streqb r5, [r4, #0x5f2]
	ldmdb sp!, {r4, r5, r6, pc}
	.align 2, 0
_022C09E4: .word 0x022DC1D0
	arm_func_end ov10_022C0998

	arm_func_start ov10_022C09E8
ov10_022C09E8: ; 0x022C09E8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x50
	ldr r3, _022C0CC0 ; =0x022DC1D0
	mov sl, r0
	ldr r0, [r3]
	mov r5, r1
	cmp r0, #0
	mov r4, r2
	moveq r0, #0
	beq _022C0CB8
	mov r1, #0
	ldr r0, _022C0CC4 ; =0x020AFC68
	str r1, [sp]
	mov r1, #4
	ldr r0, [r0]
	add r2, r1, #0x400
	mov r3, #0xf
	bl sub_0201D484
	ldr r1, _022C0CC0 ; =0x022DC1D0
	ldr r2, [r1]
	strh r0, [r2, #4]
	ldr r0, [r1]
	add r0, r0, #8
	bl sub_0201C0B0
	ldr r0, _022C0CC0 ; =0x022DC1D0
	ldr r0, [r0]
	ldrsh r1, [r0, #4]
	add r0, r0, #8
	bl sub_0201C0E8
	ldr r0, _022C0CC0 ; =0x022DC1D0
	mov r1, #0
	ldr r3, [r0]
	ldrh r2, [r3, #0xa]
	orr r2, r2, #0x20
	strh r2, [r3, #0xa]
	ldr r0, [r0]
	add r0, r0, #8
	bl sub_0201D12C
	mov r0, #0xd
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _022C0CC0 ; =0x022DC1D0
	mov r2, r1
	ldr r0, [r0]
	mov r3, #0x71
	add r0, r0, #8
	bl sub_0201C418
	mov r3, r4
	ldr r0, _022C0CC0 ; =0x022DC1D0
	mov r2, r5
	ldr r1, [r0]
	add r0, r1, #0x2d8
	add r1, r1, #0x1f8
	add r1, r1, #0x400
	bl ov10_022C1E80
	cmp r5, #0
	beq _022C0AF4
	ldr r0, _022C0CC0 ; =0x022DC1D0
	mov r3, #0
	ldr r2, [r0]
	mov r1, #1
	strb r3, [r2, #0x285]
	b _022C0B10
_022C0AF4:
	ldr r0, _022C0CC0 ; =0x022DC1D0
	mov r3, #1
	ldr r2, [r0]
	mov r1, #0
	strb r3, [r2, #0x285]
	ldr r2, [r0]
	strb r3, [r2, #0x5f4]
_022C0B10:
	ldr r0, [r0]
	ldr fp, _022C0CC0 ; =0x022DC1D0
	strb r1, [r0, #0x60c]
	ldr r0, [fp]
	mvn r1, #1
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x7c]
	cmp r0, r1
	bne _022C0C10
	ldr r0, _022C0CC8 ; =0x022DBFEC
	ldr r4, _022C0CCC ; =0x022DBFDC
	add r6, sp, #0x20
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	add r5, sp, #0x10
	stmia r5, {r0, r1, r2, r3}
	mov r7, #0
	add r4, sp, #0x40
_022C0B5C:
	add r0, r7, r7, lsr #31
	mov r1, r0, asr #1
	mov r0, #0xc
	mul sb, r1, r0
	mov ip, r7, lsr #0x1f
	ldmia r6, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	rsb r8, ip, r7, lsl #31
	add r8, ip, r8, ror #31
	mov r8, r8, lsl #4
	add r0, sb, #7
	add r8, r8, #1
	strb r0, [sp, #0x45]
	ldr r1, _022C0CD0 ; =ov10_022C1864
	mov r0, r4
	strb r8, [sp, #0x44]
	bl sub_0202F8C4
	ldr r1, [fp]
	add sb, sb, #9
	add r1, r1, r7
	strb r0, [r1, #0x27c]
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r1, _022C0CD4 ; =ov10_022C1748
	mov r0, r4
	strb r8, [sp, #0x44]
	strb sb, [sp, #0x45]
	bl sub_0202F8C4
	ldr r1, [fp]
	add r1, r1, r7
	add r7, r7, #1
	strb r0, [r1, #0x280]
	cmp r7, #4
	blt _022C0B5C
	ldr r0, _022C0CC0 ; =0x022DC1D0
	ldr r0, [r0]
	add r0, r0, #0x288
	bl InitPreprocessorArgs
	ldr r0, _022C0CC0 ; =0x022DC1D0
	mov r3, #0x10000
	ldr r2, [r0]
	mov r1, #0
	str r3, [r2, #0x2d4]
	ldr r0, [r0]
	strb r1, [r0, #0x5f3]
_022C0C10:
	bl ov10_022C1990
	ldr r8, _022C0CD8 ; =0x022DC1CC
	ldr r7, _022C0CDC ; =0x022DBFFC
	ldr r5, _022C0CC0 ; =0x022DC1D0
	mov sb, #0
	add fp, sp, #0x30
	add r6, sp, #0x34
	mvn r4, #1
_022C0C30:
	ldr r0, [r5]
	add r0, r0, sb
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x78]
	cmp r0, r4
	bne _022C0C9C
	mov r0, fp
	bl InitPortraitBox
	mov r0, fp
	mov r1, #1
	bl InitPortraitBoxWithMonsterId
	ldrb r1, [r8, sb]
	mov r0, fp
	bl SetPortraitUnknownAttr
	mov r0, #1
	ldr r1, [r7, sb, lsl #2]
	mov r2, r0
	bl CreatePortraitBox
	ldr r1, [r5]
	add r1, r1, sb
	strb r0, [r1, #0x278]
	ldr r0, [r5]
	ldmia r6, {r1, r2}
	add r0, r0, sb
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x78]
	bl sub_02028770
_022C0C9C:
	add sb, sb, #1
	cmp sb, #4
	blt _022C0C30
	mov r0, sl
	mov r1, #0
	bl ov10_022C0998
	mov r0, #1
_022C0CB8:
	add sp, sp, #0x50
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C0CC0: .word 0x022DC1D0
_022C0CC4: .word 0x020AFC68
_022C0CC8: .word 0x022DBFEC
_022C0CCC: .word 0x022DBFDC
_022C0CD0: .word ov10_022C1864
_022C0CD4: .word ov10_022C1748
_022C0CD8: .word 0x022DC1CC
_022C0CDC: .word 0x022DBFFC
	arm_func_end ov10_022C09E8

	arm_func_start ov10_022C0CE0
ov10_022C0CE0: ; 0x022C0CE0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	ldr r0, _022C0F5C ; =0x022DC1D0
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x5f3]
	ldr r1, [r0]
	ldrb r0, [r1, #0x285]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r1, #0x286]
	bl ov10_022C1A04
	movs sb, r0
	beq _022C0F54
	ldr r0, _022C0F5C ; =0x022DC1D0
	ldr r1, [r0]
	ldrb r0, [r1, #0x60c]
	cmp r0, #0
	bne _022C0D80
	ldrb r0, [r1, #0x5f2]
	cmp r0, #0
	beq _022C0D80
	ldr r1, _022C0F60 ; =0x0000FFFF
	mov r0, sb, lsl #0x10
	cmp r1, r0, lsr #16
	bne _022C0D80
	tst sb, #0x80000
	mov r0, #1
	beq _022C0D6C
	bl ov29_0234C5EC
	mov r0, #4
	mov r1, #0x1000
	mov r2, #1
	bl ov29_0234C668
	b _022C0D80
_022C0D6C:
	bl ov29_0234C584
	mov r0, #1
	mov r2, r0
	mov r1, #0x1000
	bl ov29_0234C668
_022C0D80:
	ldr fp, _022C0F5C ; =0x022DC1D0
	mov r8, #0
	ldr r1, [fp]
	ldr r0, _022C0F64 ; =0x022DBFB0
	strb r8, [r1, #0x5f2]
	ldr r6, [r0, #0x14]
	ldr r5, [r0, #0x18]
	str r6, [sp]
	str r5, [sp, #4]
	mvn r4, #1
_022C0DA8:
	tst sb, #0xf
	beq _022C0EA8
	tst sb, #1
	beq _022C0DCC
	ldr r0, [fp]
	add r0, r0, r8
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x80]
	bl ov10_022C1748
_022C0DCC:
	tst sb, #2
	beq _022C0DE8
	ldr r0, [fp]
	add r0, r0, r8
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x7c]
	bl ov10_022C1864
_022C0DE8:
	tst sb, #4
	beq _022C0EA8
	ldr r2, [fp]
	mov r0, r8, lsl #0x10
	add r1, r2, r0, asr #16
	mov sl, r0, asr #0x10
	add r2, r2, #0x310
	mov r0, #0x5c
	mla r7, sl, r0, r2
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r0, r1, #0x200
	ldrsb r0, [r0, #0x78]
	cmp r0, r4
	beq _022C0EA8
	add r0, sp, #0x10
	bl InitPortraitBox
	ldrb r0, [r7]
	cmp r0, #0
	add r0, sp, #0x10
	bne _022C0E48
	mov r1, #1
	bl InitPortraitBoxWithMonsterId
	b _022C0E50
_022C0E48:
	ldrsh r1, [r7, #0x42]
	bl InitPortraitBoxWithMonsterId
_022C0E50:
	add r0, sp, #0x10
	add r1, sp, #8
	bl SetPortraitAttrStruct
	ldr r1, _022C0F68 ; =0x022DC1CC
	add r0, sp, #0x10
	ldrb r1, [r1, sl]
	bl SetPortraitUnknownAttr
	ldrb r0, [r7]
	cmp r0, #0
	add r0, sp, #0x10
	bne _022C0E88
	mov r1, r4
	bl SetPortraitExpressionId
	b _022C0E90
_022C0E88:
	mov r1, #0
	bl SetPortraitExpressionId
_022C0E90:
	ldr r0, [fp]
	add r1, sp, #0x10
	add r0, r0, sl
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x78]
	bl ShowPortraitBox
_022C0EA8:
	add r8, r8, #1
	cmp r8, #4
	mov sb, sb, lsr #4
	blo _022C0DA8
	ldr r8, _022C0F5C ; =0x022DC1D0
	mov r6, #0
	ldr r0, [r8]
	mov r5, r6
	add r4, r0, #0x480
	mov sb, r6
	mov r7, #0x5c
_022C0ED4:
	mul r0, r5, r7
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _022C0F04
	ldr r0, [r8]
	mov r2, r6, lsl #0x10
	ldrb r3, [r0, #0x5f0]
	mov r1, sb
	add r0, r0, #0x2d8
	mov r2, r2, asr #0x10
	bl ov10_022C1F90
	add r6, r6, #1
_022C0F04:
	add r5, r5, #1
	cmp r5, #4
	blt _022C0ED4
	mov r5, #1
	ldr r4, _022C0F5C ; =0x022DC1D0
	b _022C0F3C
_022C0F1C:
	ldr r0, [r4]
	mov r2, r6, lsl #0x10
	ldrb r3, [r0, #0x5f0]
	mov r1, r5
	add r0, r0, #0x2d8
	mov r2, r2, asr #0x10
	bl ov10_022C1F90
	add r6, r6, #1
_022C0F3C:
	cmp r6, #4
	blt _022C0F1C
	ldr r0, _022C0F5C ; =0x022DC1D0
	ldr r0, [r0]
	add r0, r0, #0x2d8
	bl ov10_022C225C
_022C0F54:
	add sp, sp, #0x20
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C0F5C: .word 0x022DC1D0
_022C0F60: .word 0x0000FFFF
_022C0F64: .word 0x022DBFB0
_022C0F68: .word 0x022DC1CC
	arm_func_end ov10_022C0CE0

	arm_func_start ov10_022C0F6C
ov10_022C0F6C: ; 0x022C0F6C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	ldr r4, _022C11CC ; =0x022DC1D0
	mov r7, r0
	ldr r4, [r4]
	mov sl, r1
	cmp r4, #0
	ldrneb r0, [r4, #0x285]
	mov r6, r2
	mov fp, r3
	cmpne r0, #0
	ldrneb r0, [r4, #0x286]
	ldr sb, [sp, #0x54]
	cmpne r0, #0
	ldrnesh r5, [sp, #0x4c]
	addne r1, r4, #0x88
	movne r0, #0x7c
	mlane r4, r5, r0, r1
	cmpne r7, #0
	beq _022C11C4
	ldr r1, _022C11D0 ; =0x020AFC68
	mov r0, #0x38
	ldr r1, [r1]
	smlabb r0, r7, r0, r1
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _022C11C4
	mov r0, r4
	bl sub_0201D1B0
	cmp r0, #0
	beq _022C1010
	ldr r0, _022C11CC ; =0x022DC1D0
	ldr r0, [r0]
	add r0, r0, r5
	ldrb r0, [r0, #0x84]
	cmp r0, #0
	ldreqsh r0, [r4, #0x70]
	cmpeq r0, r7
	ldreqsh r0, [r4, #0x76]
	cmpeq r0, r6
	beq _022C1094
_022C1010:
	ldr r0, _022C11CC ; =0x022DC1D0
	ldr r0, [r0]
	add r0, r0, r5
	ldrb r0, [r0, #0x84]
	cmp r0, #0
	beq _022C1030
	mov r0, r4
	bl sub_0201CF80
_022C1030:
	mov r0, r4
	mov r1, r7
	bl sub_0201C0E8
	bl Rand16Bit
	mov r1, r6
	ldrsh r6, [sp, #0x50]
	and r7, r0, #3
	mov r2, #0
	and r3, r6, #0xff
	stmia sp, {r3, r7}
	mov r3, #0x14
	smulbb r3, r6, r3
	str r2, [sp, #8]
	mov r0, #1
	mov r3, r3, lsl #0x10
	str r0, [sp, #0xc]
	mov r0, r4
	mov r2, #7
	mov r3, r3, asr #0x10
	bl sub_0201C418
	ldr r0, _022C11CC ; =0x022DC1D0
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r5
	strb r1, [r0, #0x84]
_022C1094:
	ldrsh r8, [sp, #0x4c]
	mov r1, #0x60
	mov r0, sl
	mov r2, r8, asr #1
	smulbb r1, r2, r1
	mov r3, r8, lsl #0x1f
	mov r2, r3, lsr #0x18
	add r7, r2, #0x60
	add r6, r1, #0x28
	bl ov10_022C1CE8
	cmp r0, #0
	cmpeq sl, #0x1a0
	mvneq r1, #7
	movne r1, #0
	mov r0, sl
	add r7, r7, r1
	bl ov10_022C1CE8
	cmp r0, #0
	bne _022C1100
	cmp sl, #0x1a0
	moveq r0, #0x11
	beq _022C1104
	mov r0, sl
	bl GetBodySize
	cmp r0, #4
	moveq r0, #0xc
	beq _022C1104
_022C1100:
	mov r0, #0
_022C1104:
	ldrh r2, [r4, #2]
	ldrb r1, [sp, #0x5c]
	mov r5, #0
	orr r2, r2, #0x10
	strh r2, [r4, #2]
	strh r5, [r4, #0x38]
	ldrh r3, [r4, #2]
	cmp r1, #0
	ldr r2, _022C11D4 ; =0x0000F3FF
	orr r1, r3, #0x20
	strh r1, [r4, #2]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0x14]
	strh r5, [r4, #0x16]
	add r6, r6, r0
	ldrneh r0, [r4, #0x16]
	mov r5, #0
	orrne r0, r0, #0x400
	strneh r0, [r4, #0x16]
	ldrsh r0, [sp, #0x58]
	add r0, r7, r0
	strh r0, [r4, #0x1c]
	strh r6, [r4, #0x1e]
	b _022C1178
_022C1164:
	mov r0, r4
	bl sub_0201C458
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
_022C1178:
	cmp r5, sb
	blt _022C1164
	mov r0, r4
	bl sub_0201CF5C
	add r0, sp, #0x10
	mov r2, r4
	mov r1, #4
	bl sub_0201D034
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	beq _022C11C4
	add r4, sp, #0x10
	str r6, [sp]
	mov r0, fp
	mov r1, sl
	mov r2, r8
	mov r3, r7
	str r4, [sp, #4]
	bl ov29_022DD83C
_022C11C4:
	add sp, sp, #0x20
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C11CC: .word 0x022DC1D0
_022C11D0: .word 0x020AFC68
_022C11D4: .word 0x0000F3FF
	arm_func_end ov10_022C0F6C

	arm_func_start ov10_022C11D8
ov10_022C11D8: ; 0x022C11D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	ldr r0, _022C138C ; =0x022DC1D0
	mov r2, #0x80
	ldr r3, [r0]
	mov r1, #0x60
	strh r2, [r3, #0x24]
	add r0, r3, #8
	strh r1, [r3, #0x26]
	bl sub_0201CF5C
	ldr r0, _022C138C ; =0x022DC1D0
	ldr r1, [r0]
	ldrb r0, [r1, #0x5f4]
	cmp r0, #0
	bne _022C1384
	cmp r1, #0
	ldrneb r0, [r1, #0x285]
	cmpne r0, #0
	ldrneb r0, [r1, #0x286]
	cmpne r0, #0
	beq _022C1384
	mov r8, #0
	mov r5, r8
	mov r4, #1
	mov fp, r8
_022C123C:
	ldr r0, _022C138C ; =0x022DC1D0
	mov sb, #0
	ldr r1, [r0]
	mov r0, #0x5c
	mul r2, r8, r0
	add r3, r1, #0x480
	add r1, r1, #0x88
	mov r0, #0x7c
	mla r6, r8, r0, r1
	ldrb r0, [r3, r2]
	add r7, r3, r2
	cmp r0, #0
	ldrnesh r2, [r7, #0x52]
	cmpne r2, #0
	beq _022C1378
	ldr r0, _022C1390 ; =0x020AFC68
	ldr r1, [r0]
	mov r0, #0x38
	smlabb r0, r2, r0, r1
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _022C1378
	mov r0, r6
	bl sub_0201D1B0
	cmp r0, #0
	moveq sb, #1
	cmp sb, #0
	beq _022C12EC
	ldrsh r1, [r7, #0x52]
	mov r0, r6
	bl sub_0201C0E8
	bl Rand16Bit
	mov r3, #0x14
	and r1, r0, #3
	and r0, r8, #0xff
	stmia sp, {r0, r1, r5}
	mul r3, r8, r3
	str r4, [sp, #0xc]
	mov r3, r3, lsl #0x10
	ldrsh r1, [r7, #0x54]
	mov r0, r6
	mov r2, #7
	mov r3, r3, asr #0x10
	bl sub_0201C418
_022C12EC:
	mov r1, r8, lsr #0x1f
	rsb r0, r1, r8, lsl #31
	add r0, r1, r0, ror #31
	mov r0, r0, lsl #7
	add sl, r0, #0x60
	add r0, r8, r8, lsr #31
	mov r1, r0, asr #1
	mov r0, #0x60
	mul r0, r1, r0
	strh fp, [r6, #0x38]
	ldrh r1, [r6, #2]
	add sb, r0, #0x50
	mov r0, r6
	orr r1, r1, #0x20
	strh r1, [r6, #2]
	ldr r1, _022C1394 ; =0x0000F3FF
	strh r1, [r6, #0x14]
	strh sl, [r6, #0x1c]
	strh sb, [r6, #0x1e]
	bl sub_0201CF5C
	mov r2, r6
	add r0, sp, #0x10
	mov r1, #4
	bl sub_0201D034
	ldrb r0, [r7, #0x4f]
	cmp r0, #0
	beq _022C1378
	str sb, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	ldrsh r1, [r7, #0x42]
	ldr r0, [r7, #0x44]
	mov r3, sl
	mov r2, r8
	bl ov29_022DD83C
_022C1378:
	add r8, r8, #1
	cmp r8, #4
	blt _022C123C
_022C1384:
	add sp, sp, #0x20
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C138C: .word 0x022DC1D0
_022C1390: .word 0x020AFC68
_022C1394: .word 0x0000F3FF
	arm_func_end ov10_022C11D8

	arm_func_start ov10_022C1398
ov10_022C1398: ; 0x022C1398
	ldr r0, _022C13AC ; =0x022DC1D0
	ldr ip, _022C13B0 ; =ov10_022C231C
	ldr r0, [r0]
	add r0, r0, #0x2d8
	bx ip
	.align 2, 0
_022C13AC: .word 0x022DC1D0
_022C13B0: .word ov10_022C231C
	arm_func_end ov10_022C1398

	arm_func_start ov10_022C13B4
ov10_022C13B4: ; 0x022C13B4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _022C14C8 ; =0x022DC1D0
	ldr r0, [r0]
	add r0, r0, #0x2d8
	bl ov10_022C2278
	ldr r0, _022C14C8 ; =0x022DC1D0
	ldr r1, _022C14CC ; =0x020AFC68
	ldr r2, [r0]
	ldr r0, [r1]
	ldrsh r1, [r2, #4]
	bl DeleteWanTableEntryVeneer
	ldr r6, _022C14C8 ; =0x022DC1D0
	mov r5, #0
	mvn r4, #1
_022C13EC:
	ldr r0, [r6]
	add r0, r0, r5
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x78]
	cmp r0, r4
	beq _022C143C
	bl sub_0202836C
	ldr r0, [r6]
	add r0, r0, r5
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x78]
	bl HidePortraitBox
	ldr r0, [r6]
	add r0, r0, r5
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x78]
	bl FreePortraitBox
	ldr r0, [r6]
	add r0, r0, r5
	strb r4, [r0, #0x278]
_022C143C:
	add r5, r5, #1
	cmp r5, #4
	blt _022C13EC
	ldr r6, _022C14C8 ; =0x022DC1D0
	mov r5, #0
	mvn r4, #1
_022C1454:
	ldr r0, [r6]
	add r0, r0, r5
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x7c]
	cmp r0, r4
	beq _022C147C
	bl sub_0202F8FC
	ldr r0, [r6]
	add r0, r0, r5
	strb r4, [r0, #0x27c]
_022C147C:
	ldr r0, [r6]
	add r0, r0, r5
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x80]
	cmp r0, r4
	beq _022C14A4
	bl sub_0202F8FC
	ldr r0, [r6]
	add r0, r0, r5
	strb r4, [r0, #0x280]
_022C14A4:
	add r5, r5, #1
	cmp r5, #4
	blt _022C1454
	ldr r0, _022C14C8 ; =0x022DC1D0
	mov r2, #0
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #0x285]
	ldmdb sp!, {r4, r5, r6, pc}
	.align 2, 0
_022C14C8: .word 0x022DC1D0
_022C14CC: .word 0x020AFC68
	arm_func_end ov10_022C13B4

	arm_func_start ov10_022C14D0
ov10_022C14D0: ; 0x022C14D0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r1, _022C1594 ; =0x022DC1D0
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, #0
	beq _022C158C
	mov r2, #0
	strb r2, [r0, #0x285]
	ldr r0, [r1]
	mov r3, #1
	strb r2, [r0, #0x286]
	ldr r0, [r1]
	add r1, r0, #0x1f8
	add r0, r0, #0x2d8
	add r1, r1, #0x400
	bl ov10_022C1E80
	bl ov10_022C1990
	ldr r0, _022C1594 ; =0x022DC1D0
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x84]
	cmp r0, r1
	bne _022C157C
	ldr r0, _022C1598 ; =0x022DBFCC
	add ip, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	mov r0, ip
	mov r1, #0
	bl sub_0202F8C4
	ldr r1, _022C1594 ; =0x022DC1D0
	ldr r2, [r1]
	strb r0, [r2, #0x284]
	ldr r0, [r1]
	add r0, r0, #0x288
	bl InitPreprocessorArgs
	ldr r0, _022C1594 ; =0x022DC1D0
	mov r1, #0x10000
	ldr r0, [r0]
	str r1, [r0, #0x2d4]
_022C157C:
	mov r0, r4
	mov r1, #0
	bl ov10_022C0998
	mov r0, #1
_022C158C:
	add sp, sp, #0x10
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022C1594: .word 0x022DC1D0
_022C1598: .word 0x022DBFCC
	arm_func_end ov10_022C14D0

	arm_func_start ov10_022C159C
ov10_022C159C: ; 0x022C159C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x54
	sub sp, sp, #0x400
	ldr r0, _022C16CC ; =0x022DC1D0
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x5f2]
	ldr r0, [r0]
	strb r2, [r0, #0x286]
	bl ov10_022C1A04
	cmp r0, #0
	beq _022C16C0
	ldr r0, _022C16CC ; =0x022DC1D0
	ldr r1, [r0]
	add r0, r1, #0x200
	ldrsb sl, [r0, #0x84]
	add r4, r1, #0x480
	mov r0, sl
	bl sub_02027B1C
	mov sb, #0
	mov r5, sb
	add fp, sp, #4
_022C15F4:
	mov r0, #0x5c
	mul r1, r5, r0
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _022C169C
	add r0, r4, r1
	ldrsh r6, [r0, #0x4a]
	ldrsh r7, [r0, #0x4c]
	ldrsh r8, [r0, #0x48]
	add r1, r0, #1
	add r0, sp, #0x54
	bl Strcpy
	mov r0, sl
	mov r1, #0
	mov r2, sb
	add r3, sp, #0x54
	bl sub_02026214
	ldr r1, _022C16D0 ; =0x022DC00C
	mov r2, r8
	add r0, sp, #0x54
	bl SprintfStatic__022C183C
	mov r0, sl
	mov r1, #0x44
	mov r2, sb
	add r3, sp, #0x54
	bl sub_02026214
	mov r0, fp
	bl InitPreprocessorArgs
	ldr r2, _022C16D4 ; =0x022DC014
	str r6, [sp, #0x28]
	str r7, [sp, #0x2c]
	add r0, sp, #0x54
	mov r1, #0x400
	mov r3, #0
	str fp, [sp]
	bl PreprocessString
	mov r0, sl
	mov r1, #0x80
	mov r2, sb
	add r3, sp, #0x54
	bl sub_02026214
	add sb, sb, #0xc
_022C169C:
	add r5, r5, #1
	cmp r5, #4
	blt _022C15F4
	mov r0, sl
	bl sub_02027AF0
	ldr r0, _022C16CC ; =0x022DC1D0
	ldr r0, [r0]
	add r0, r0, #0x2d8
	bl ov10_022C21D8
_022C16C0:
	add sp, sp, #0x54
	add sp, sp, #0x400
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C16CC: .word 0x022DC1D0
_022C16D0: .word 0x022DC00C
_022C16D4: .word 0x022DC014
	arm_func_end ov10_022C159C

	arm_func_start ov10_022C16D8
ov10_022C16D8: ; 0x022C16D8
	stmdb sp!, {r3, lr}
	ldr r0, _022C1744 ; =0x022DC1D0
	ldr r0, [r0]
	add r0, r0, #0x2d8
	bl ov10_022C2278
	ldr r0, _022C1744 ; =0x022DC1D0
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x84]
	cmp r0, r1
	beq _022C171C
	bl sub_0202F918
	ldr r0, _022C1744 ; =0x022DC1D0
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x284]
_022C171C:
	ldr r1, _022C1744 ; =0x022DC1D0
	mov r3, #0
	ldr r2, [r1]
	mov r0, #1
	strb r3, [r2, #0x285]
	ldr r2, [r1]
	strb r3, [r2, #0x286]
	ldr r1, [r1]
	strb r3, [r1, #0x5f2]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C1744: .word 0x022DC1D0
	arm_func_end ov10_022C16D8

	arm_func_start ov10_022C1748
ov10_022C1748: ; 0x022C1748
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x254
	mov r4, r0
	mvn r0, #1
	cmp r4, r0
	beq _022C182C
	ldr r0, _022C1834 ; =0x022DC1D0
	mov r3, #0
	ldr r1, [r0]
	add r2, r1, #0x480
	b _022C178C
_022C1774:
	add r0, r1, r3
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x80]
	cmp r4, r0
	beq _022C1794
	add r3, r3, #1
_022C178C:
	cmp r3, #4
	blt _022C1774
_022C1794:
	cmp r3, #4
	beq _022C182C
	mov r0, #0x5c
	mul r1, r3, r0
	ldrb r0, [r2, r1]
	add r5, r2, r1
	cmp r0, #0
	mov r0, r4
	bne _022C17C8
	bl sub_02027B58
	mov r0, r4
	bl sub_02027AF0
	b _022C182C
_022C17C8:
	bl sub_02027B58
	add r0, sp, #0x104
	bl InitPreprocessorArgs
	ldrsh r2, [r5, #0x4a]
	ldr r1, _022C1838 ; =0x022DC02C
	add r0, sp, #4
	str r2, [sp, #0x128]
	ldrsh r2, [r5, #0x4c]
	str r2, [sp, #0x12c]
	ldrsh r2, [r5, #0x48]
	bl SprintfStatic__022C183C
	add r1, sp, #0x104
	str r1, [sp]
	add r0, sp, #0x154
	mov r1, #0x100
	add r2, sp, #4
	mov r3, #0
	bl PreprocessString
	mov r1, #0
	mov r0, r4
	mov r2, r1
	add r3, sp, #0x154
	bl sub_02026214
	mov r0, r4
	bl sub_02027AF0
_022C182C:
	add sp, sp, #0x254
	ldmdb sp!, {r4, r5, pc}
	.align 2, 0
_022C1834: .word 0x022DC1D0
_022C1838: .word 0x022DC02C
	arm_func_end ov10_022C1748

	arm_func_start SprintfStatic__022C183C
SprintfStatic__022C183C: ; 0x022C183C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl Vsprintf
	ldmdb sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end SprintfStatic__022C183C

	arm_func_start ov10_022C1864
ov10_022C1864: ; 0x022C1864
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x258
	ldr r1, _022C1984 ; =0x022DC1D0
	mov r5, r0
	ldr r1, [r1]
	mov r3, #0
	add r2, r1, #0x480
	b _022C189C
_022C1884:
	add r0, r1, r3
	add r0, r0, #0x200
	ldrsb r0, [r0, #0x7c]
	cmp r5, r0
	beq _022C18A4
	add r3, r3, #1
_022C189C:
	cmp r3, #4
	blt _022C1884
_022C18A4:
	cmp r3, #4
	beq _022C197C
	mov r0, #0x5c
	mul r1, r3, r0
	ldrb r0, [r2, r1]
	add r4, r2, r1
	cmp r0, #0
	bne _022C18D8
	mov r0, r5
	bl sub_02027B58
	mov r0, r5
	bl sub_02027AF0
	b _022C197C
_022C18D8:
	ldr r1, _022C1988 ; =0x022DBFB0
	mov r0, r5
	ldrb r2, [r1]
	strb r2, [sp, #4]
	ldrb r1, [r1, #1]
	strb r1, [sp, #5]
	bl sub_02027B58
	add r0, sp, #8
	bl InitPreprocessorArgs
	ldrsh r0, [r4, #0x42]
	bl GetMonsterGenderVeneer
	cmp r0, #1
	moveq r0, #0xbd
	streqb r0, [sp, #4]
	beq _022C1930
	ldrsh r0, [r4, #0x42]
	bl GetMonsterGenderVeneer
	cmp r0, #2
	moveq r0, #0xbe
	streqb r0, [sp, #4]
	movne r0, #0x2d
	strneb r0, [sp, #4]
_022C1930:
	ldr r1, _022C198C ; =0x022DC058
	add r0, sp, #0x158
	add r3, sp, #4
	add r2, r4, #1
	bl SprintfStatic__022C183C
	add r4, sp, #8
	add r0, sp, #0x58
	add r2, sp, #0x158
	mov r1, #0x100
	mov r3, #0
	str r4, [sp]
	bl PreprocessString
	mov r1, #0
	add r3, sp, #0x58
	mov r0, r5
	mov r2, r1
	bl sub_02026214
	mov r0, r5
	bl sub_02027AF0
_022C197C:
	add sp, sp, #0x258
	ldmdb sp!, {r3, r4, r5, pc}
	.align 2, 0
_022C1984: .word 0x022DC1D0
_022C1988: .word 0x022DBFB0
_022C198C: .word 0x022DC058
	arm_func_end ov10_022C1864

	arm_func_start ov10_022C1990
ov10_022C1990: ; 0x022C1990
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r8, _022C1A00 ; =0x022DC1D0
	mov r4, #0
	ldr r0, [r8]
	mov r6, #0x5c
	str r4, [r0]
	mov r7, #0x7c
_022C19AC:
	mul r5, r4, r6
	ldr r0, [r8]
	add r0, r0, #0x310
	add r0, r0, r5
	bl ov10_022C1D40
	ldr r0, [r8]
	add r0, r0, #0x480
	add r0, r0, r5
	bl ov10_022C1D40
	ldr r0, [r8]
	add r0, r0, #0x88
	mla r0, r4, r7, r0
	bl sub_0201C138
	add r4, r4, #1
	cmp r4, #4
	blt _022C19AC
	ldr r0, _022C1A00 ; =0x022DC1D0
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x286]
	ldmdb sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C1A00: .word 0x022DC1D0
	arm_func_end ov10_022C1990

	arm_func_start ov10_022C1A04
ov10_022C1A04: ; 0x022C1A04
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r0, _022C1CD0 ; =0x022DC1D0
	ldr r3, _022C1CD4 ; =0x022DBFB6
	ldr r0, [r0]
	add r2, sp, #0x10
	ldr sb, [r0]
	add fp, r0, #0x310
	add r4, r0, #0x480
	mov r1, #4
_022C1A2C:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _022C1A2C
	ldr r3, _022C1CD8 ; =0x022DBFBE
	add r2, sp, #0xc
	mov r1, #4
_022C1A48:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _022C1A48
	ldr r3, _022C1CDC ; =0x022DBFB2
	add r2, sp, #8
	mov r1, #4
_022C1A64:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _022C1A64
	ldr r3, _022C1CE0 ; =0x022DBFBA
	add r2, sp, #4
	mov r1, #4
_022C1A80:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _022C1A80
	mov sl, #0
	mov r8, sl
	str sl, [sp]
	mov r7, r8
	b _022C1C1C
_022C1AA4:
	mov r0, #0x5c
	mul r1, r7, r0
	ldrb r0, [fp, r1]
	cmp r0, #0
	beq _022C1C24
	add r5, fp, r1
	ldrsh r0, [r5, #0x54]
	add r6, r4, r1
	strh r0, [r6, #0x54]
	ldr r1, [r5, #0x44]
	ldr r0, [r6, #0x44]
	cmp r1, r0
	addne r0, sp, #0x10
	movne r1, #1
	strneb r1, [r0, r7]
	add r0, r5, #1
	add r1, r6, #1
	bl Strcmp
	cmp r0, #0
	addne r0, sp, #8
	movne r1, #1
	strneb r1, [r0, r7]
	ldrsh r1, [r5, #0x4a]
	ldrsh r0, [r6, #0x4a]
	cmp r1, r0
	addne r0, sp, #0x10
	movne r1, #1
	strneb r1, [r0, r7]
	ldrsh r1, [r5, #0x4c]
	ldrsh r0, [r6, #0x4c]
	cmp r1, r0
	addne r0, sp, #0x10
	movne r1, #1
	strneb r1, [r0, r7]
	ldrsh r1, [r5, #0x48]
	ldrsh r0, [r6, #0x48]
	cmp r1, r0
	addne r0, sp, #0x10
	movne r1, #1
	strneb r1, [r0, r7]
	ldrsh r0, [r5, #0x42]
	ldrsh r1, [r6, #0x42]
	cmp r0, r1
	beq _022C1B88
	add r3, sp, #0x10
	mov ip, #1
	add r2, sp, #0xc
	add r1, sp, #4
	strb ip, [r3, r7]
	strb ip, [r2, r7]
	strb ip, [r1, r7]
	ldrsh r1, [r6, #0x42]
	bl GendersEqual
	cmp r0, #0
	addeq r0, sp, #8
	moveq r1, #1
	streqb r1, [r0, r7]
_022C1B88:
	ldrb r1, [r5, #0x4e]
	ldrb r0, [r6, #0x4e]
	cmp r1, r0
	movne r0, #1
	addne r1, sp, #0x10
	strne r0, [sp]
	strneb r0, [r1, r7]
	add r0, sp, #0x10
	ldrb r0, [r0, r7]
	cmp r0, #0
	addeq r0, sp, #0xc
	ldreqb r0, [r0, r7]
	cmpeq r0, #0
	addeq r0, sp, #8
	ldreqb r0, [r0, r7]
	cmpeq r0, #0
	addeq r0, sp, #4
	ldreqb r0, [r0, r7]
	cmpeq r0, #0
	beq _022C1C14
	mov ip, #5
_022C1BDC:
	ldmia r5!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _022C1BDC
	ldmia r5, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	add r0, sp, #4
	ldrb r0, [r0, r7]
	cmp r0, #0
	ldrne r0, _022C1CD0 ; =0x022DC1D0
	movne r1, #1
	ldrne r0, [r0]
	addne r0, r0, r7
	strneb r1, [r0, #0x84]
_022C1C14:
	add r8, r8, #1
	add r7, r7, #1
_022C1C1C:
	cmp r7, #4
	blt _022C1AA4
_022C1C24:
	mov r5, #0x5c
	b _022C1C38
_022C1C2C:
	mla r0, r7, r5, r4
	bl ov10_022C1D40
	add r7, r7, #1
_022C1C38:
	cmp r7, #4
	blt _022C1C2C
	ldr r0, [sp]
	ldr r1, _022C1CD0 ; =0x022DC1D0
	cmp r0, #0
	ldr r0, [r1]
	cmpeq sb, r8
	str r8, [r0]
	beq _022C1C6C
	ldr r0, _022C1CE4 ; =0x0000FFFF
	cmp sb, r8
	orrlt r0, r0, #0x80000
	b _022C1CC8
_022C1C6C:
	mov r7, #0
	mov r5, #1
	mov r3, #2
	add r4, sp, #8
	mov r1, #4
	add r2, sp, #0xc
	add r6, sp, #0x10
_022C1C88:
	ldrb r0, [r6, r7]
	cmp r0, #0
	movne r0, r7, lsl #2
	orrne sl, sl, r5, lsl r0
	ldrb r0, [r4, r7]
	cmp r0, #0
	movne r0, r7, lsl #2
	orrne sl, sl, r3, lsl r0
	ldrb r0, [r2, r7]
	cmp r0, #0
	movne r0, r7, lsl #2
	add r7, r7, #1
	orrne sl, sl, r1, lsl r0
	cmp r7, #4
	blt _022C1C88
	mov r0, sl
_022C1CC8:
	add sp, sp, #0x14
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C1CD0: .word 0x022DC1D0
_022C1CD4: .word 0x022DBFB6
_022C1CD8: .word 0x022DBFBE
_022C1CDC: .word 0x022DBFB2
_022C1CE0: .word 0x022DBFBA
_022C1CE4: .word 0x0000FFFF
	arm_func_end ov10_022C1A04

	arm_func_start ov10_022C1CE8
ov10_022C1CE8: ; 0x022C1CE8
	ldr r2, _022C1D38 ; =0x0000017B
	cmp r0, r2
	cmpne r0, #0x17c
	addne r1, r2, #2
	cmpne r0, r1
	addne r1, r2, #3
	cmpne r0, r1
	beq _022C1D28
	ldr r1, _022C1D3C ; =0xFFFFFC2D
	add r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #3
	bhi _022C1D30
_022C1D28:
	mov r0, #1
	bx lr
_022C1D30:
	mov r0, #0
	bx lr
	.align 2, 0
_022C1D38: .word 0x0000017B
_022C1D3C: .word 0xFFFFFC2D
	arm_func_end ov10_022C1CE8

	arm_func_start ov10_022C1D40
ov10_022C1D40: ; 0x022C1D40
	mov r2, #0
	strb r2, [r0]
	sub r1, r2, #1
	strh r1, [r0, #0x4a]
	strh r1, [r0, #0x4c]
	str r1, [r0, #0x44]
	strb r2, [r0, #0x4f]
	strh r2, [r0, #0x52]
	str r2, [r0, #0x58]
	ldr ip, _022C1D74 ; =MemZero
	add r0, r0, #1
	mov r1, #0x40
	bx ip
	.align 2, 0
_022C1D74: .word MemZero
	arm_func_end ov10_022C1D40

	arm_func_start ov10_022C1D78
ov10_022C1D78: ; 0x022C1D78
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov ip, #1
	mov r1, r2
	add r0, r4, #1
	mov r5, r3
	strb ip, [r4]
	bl Strcpy
	strh r5, [r4, #0x42]
	ldrsh r1, [sp, #0x10]
	str r6, [r4, #0x44]
	ldrsh r0, [sp, #0x14]
	strh r1, [r4, #0x48]
	ldrsh r1, [sp, #0x18]
	strh r0, [r4, #0x4a]
	ldrsh r0, [sp, #0x1c]
	strh r1, [r4, #0x4c]
	mov r1, #0
	strb r1, [r4, #0x4f]
	strb r1, [r4, #0x56]
	strh r0, [r4, #0x52]
	str r1, [r4, #0x58]
	strb r1, [r4, #0x4e]
	strh r1, [r4, #0x54]
	ldmdb sp!, {r4, r5, r6, pc}
	arm_func_end ov10_022C1D78

	arm_func_start ov10_022C1DE0
ov10_022C1DE0: ; 0x022C1DE0
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov ip, #1
	mov r1, r2
	add r0, r4, #1
	mov r5, r3
	strb ip, [r4]
	bl Strcpy
	strh r5, [r4, #0x42]
	ldrsh r1, [sp, #0x10]
	str r6, [r4, #0x44]
	ldrsh r0, [sp, #0x14]
	strh r1, [r4, #0x48]
	ldrsh r1, [sp, #0x18]
	strh r0, [r4, #0x4a]
	ldrsh r0, [sp, #0x1c]
	strh r1, [r4, #0x4c]
	mov r1, #1
	strb r1, [r4, #0x4f]
	strb r1, [r4, #0x56]
	strh r0, [r4, #0x52]
	mov r1, #0
	strb r1, [r4, #0x4e]
	ldrsh r0, [sp, #0x20]
	str r1, [r4, #0x58]
	strh r0, [r4, #0x54]
	ldmdb sp!, {r4, r5, r6, pc}
	arm_func_end ov10_022C1DE0

	arm_func_start ov10_022C1E50
ov10_022C1E50: ; 0x022C1E50
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r4, #0x5c
_022C1E60:
	smlabb r0, r5, r4, r6
	bl ov10_022C1D40
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	cmp r5, #4
	blt _022C1E60
	ldmdb sp!, {r4, r5, r6, pc}
	arm_func_end ov10_022C1E50

	arm_func_start ov10_022C1E80
ov10_022C1E80: ; 0x022C1E80
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	movs r7, r2
	movne r4, #0xf
	mov sb, r0
	mov r8, r1
	mov r6, r3
	moveq r4, #0x300
	bl GetGameMode
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	strb r0, [sb, #0x21]
	tst r0, #0xff
	add r1, sp, #0
	beq _022C1ED0
	ldr r0, _022C1F88 ; =0x022DC06C
	mov r2, r4
	bl sub_020522F0
	b _022C1EDC
_022C1ED0:
	ldr r0, _022C1F8C ; =0x022DC080
	mov r2, r4
	bl sub_020522F0
_022C1EDC:
	add r5, sp, #0
	ldmia r5!, {r0, r1, r2, r3}
	mov r4, sb
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r5]
	mov lr, r8
	str r0, [r4]
	ldr r0, [sp, #0xc]
	add ip, sb, #0x24
	str r0, [sb, #0x14]
	ldr r0, [sp, #4]
	mov r5, #0
	str r0, [sb, #0x18]
	ldr r4, [sp, #0x10]
	str r4, [sb, #0x1c]
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r0, [lr]
	str r0, [ip]
	strb r7, [sb, #0x20]
_022C1F2C:
	mov r1, r5, lsl #0x10
	ldr r0, [r8, #0x10]
	mov r2, r4
	mov r1, r1, lsr #0x10
	bl sub_0200A590
	add r5, r5, #1
	cmp r5, #0xa0
	add r4, r4, #4
	blt _022C1F2C
	cmp r6, #0
	beq _022C1F80
	ldr r0, [r8, #0x10]
	bl sub_0200A504
	mov r1, #1
	mov r2, r1
	mov r0, #0
	bl GetBgRegionArea
	ldr r1, [sb, #0x18]
	ldr r2, [sb, #8]
	mov r3, #0
	bl sub_02051FB4
_022C1F80:
	add sp, sp, #0x14
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022C1F88: .word 0x022DC06C
_022C1F8C: .word 0x022DC080
	arm_func_end ov10_022C1E80

	arm_func_start ov10_022C1F90
ov10_022C1F90: ; 0x022C1F90
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r0
	mov sb, r2
	mov r8, r3
	cmp r1, #0
	beq _022C2040
	ldr fp, _022C21D0 ; =0x022DC1D4
	mov r8, #0
	mov r5, sb, lsl #4
	add r4, fp, sb, lsl #4
_022C1FBC:
	mov r7, #0
	mov r6, r8, lsl #5
_022C1FC4:
	ldrsh r1, [fp, r5]
	ldr r2, [sl, #0x14]
	ldrsh r0, [r4, #2]
	add r3, r7, r1
	add r2, r2, r6, lsl #1
	mov r1, r7, lsl #1
	ldrh sb, [r1, r2]
	add r0, r8, r0
	add r1, sp, #8
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sl, #0x2c]
	mov r2, #0
	bl sub_0200B3FC
	ldr r0, _022C21D4 ; =0x00000FFF
	add r1, sp, #8
	and r0, sb, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	orr r0, r0, #0x5000
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldr r0, [sl, #0x30]
	bl sub_0200B3FC
	add r7, r7, #1
	cmp r7, #0x10
	blt _022C1FC4
	add r8, r8, #1
	cmp r8, #0xc
	blt _022C1FBC
	b _022C21C8
_022C2040:
	ldrb r0, [sl, #0x21]
	cmp r0, #0
	movne r7, #1
	bne _022C2064
	cmp r8, #0
	movne r0, #8
	moveq r0, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
_022C2064:
	ldr r0, _022C21D0 ; =0x022DC1D4
	mov r5, #0
	add r0, r0, sb, lsl #4
	mov fp, sb, lsl #4
	str r0, [sp, #4]
_022C2078:
	mov r6, #0
	mov r4, r5, lsl #5
_022C2080:
	ldr r0, [sl, #0x14]
	mov r1, r6, lsl #1
	add r0, r0, r4, lsl #1
	ldrh r2, [r1, r0]
	ldr r3, _022C21D4 ; =0x00000FFF
	ldr r0, _022C21D0 ; =0x022DC1D4
	and r2, r2, r3
	ldrsh r1, [r0, fp]
	ldr r0, [sp, #4]
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	ldrsh r0, [r0, #2]
	orr r2, r2, r7, lsl #12
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	str r2, [sp]
	add r1, r6, r1
	str r1, [sp, #8]
	add r0, r5, r0
	str r0, [sp, #0xc]
	ldr r0, [sl, #0x2c]
	add r1, sp, #8
	mov r2, #0
	bl sub_0200B3FC
	ldr r2, [sp]
	ldr r0, [sl, #0x30]
	add r1, sp, #8
	bl sub_0200B3FC
	add r6, r6, #1
	cmp r6, #0x10
	blt _022C2080
	add r5, r5, #1
	cmp r5, #0xc
	blt _022C2078
	ldrb r0, [sl, #0x21]
	cmp r0, #0
	movne r4, #0
	bne _022C212C
	cmp r8, #0
	movne r0, #7
	moveq r0, #0
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_022C212C:
	ldrb r0, [sl, #0x20]
	cmp r0, #0
	bne _022C21C8
	ldr r0, _022C21D0 ; =0x022DC1D4
	ldr fp, _022C21D4 ; =0x00000FFF
	mov r7, #0
	add r5, r0, sb, lsl #4
_022C2148:
	mov r8, #0
	mov r6, r7, lsl #5
_022C2150:
	ldr r1, [sl, #0x14]
	ldrsh r0, [r5, #4]
	add r1, r1, r6, lsl #1
	add r1, r1, r8, lsl #1
	ldrh r3, [r1, #0x20]
	add r2, r8, r0
	ldrsh r1, [r5, #6]
	and r0, r3, fp
	mov r0, r0, lsl #0x10
	add r1, r7, r1
	mov r0, r0, lsr #0x10
	orr r0, r0, r4, lsl #12
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, r0, lsl #0x10
	ldr r0, [sl, #0x2c]
	add r1, sp, #8
	mov r2, #0
	mov sb, r3, lsr #0x10
	bl sub_0200B3FC
	ldr r0, [sl, #0x30]
	mov r2, sb
	add r1, sp, #8
	bl sub_0200B3FC
	add r8, r8, #1
	cmp r8, #6
	blt _022C2150
	add r7, r7, #1
	cmp r7, #6
	blt _022C2148
_022C21C8:
	add sp, sp, #0x10
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C21D0: .word 0x022DC1D4
_022C21D4: .word 0x00000FFF
	arm_func_end ov10_022C1F90

	arm_func_start ov10_022C21D8
ov10_022C21D8: ; 0x022C21D8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5, #0x14]
	mov r4, #0
	add r0, r0, #0x400
	ldrh sl, [r0, #0x80]
	add r7, sp, #0
	mov r6, r4
	mov r8, r4
_022C2200:
	mov sb, r8
_022C2204:
	str sb, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x2c]
	mov r1, r7
	mov r2, r6
	bl sub_0200B3FC
	ldr r0, [r5, #0x30]
	mov r1, r7
	mov r2, sl
	bl sub_0200B3FC
	add sb, sb, #1
	cmp sb, #0x20
	blt _022C2204
	add r4, r4, #1
	cmp r4, #0x20
	blt _022C2200
	ldr r0, [r5, #0x2c]
	bl sub_0200B330
	ldr r0, [r5, #0x30]
	bl sub_0200B330
	add sp, sp, #8
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov10_022C21D8

	arm_func_start ov10_022C225C
ov10_022C225C: ; 0x022C225C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	bl sub_0200B330
	ldr r0, [r4, #0x30]
	bl sub_0200B330
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022C225C

	arm_func_start ov10_022C2278
ov10_022C2278: ; 0x022C2278
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0
	ldmeqdb sp!, {r4, pc}
	bl sub_02052334
	mov r0, r4
	mov r1, #0x14
	bl MemZero
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022C2278

	arm_func_start ov10_022C22A0
ov10_022C22A0: ; 0x022C22A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	mov r1, r0
	mov r2, #1
	bl GetBgRegionArea
	mov r1, #1
	str r0, [r4]
	mov r2, r1
	mov r0, #0
	bl GetBgRegionArea
	str r0, [r4, #4]
	mov r0, #0
	mov r1, #1
	bl sub_02051DFC
	str r0, [r4, #8]
	mov r0, #1
	mov r1, r0
	bl sub_02051DFC
	str r0, [r4, #0xc]
	mov r0, #1
	bl sub_02051ED4
	str r0, [r4, #0x10]
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022C22A0

	arm_func_start ov10_022C2300
ov10_022C2300: ; 0x022C2300
	stmia r0, {r1, r2}
	ldr r2, [sp]
	str r3, [r0, #8]
	ldr r1, [sp, #4]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end ov10_022C2300

	arm_func_start ov10_022C231C
ov10_022C231C: ; 0x022C231C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #8]
	bl Memcpy32
	ldr r0, [r4, #0x34]
	bl sub_0200A504
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022C231C

	arm_func_start ov10_022C2340
ov10_022C2340: ; 0x022C2340
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r0, #0xc
	mov r1, #0
	bl MemAlloc
	ldr r1, _022C23AC ; =0x022DC214
	mov r5, r4, lsl #3
	str r0, [r1]
	mov r0, r5
	mov r1, #0
	bl MemAlloc
	ldr r2, _022C23AC ; =0x022DC214
	mov r1, r5
	ldr r3, [r2]
	str r0, [r3]
	ldr r0, [r2]
	ldr r0, [r0]
	bl MemZero
	ldr r0, _022C23AC ; =0x022DC214
	ldr r0, [r0]
	str r4, [r0, #4]
	bl Rand16Bit
	ldr r1, _022C23AC ; =0x022DC214
	and r2, r0, #0x400
	ldr r0, [r1]
	strh r2, [r0, #8]
	ldmdb sp!, {r3, r4, r5, pc}
	.align 2, 0
_022C23AC: .word 0x022DC214
	arm_func_end ov10_022C2340

	arm_func_start ov10_022C23B0
ov10_022C23B0: ; 0x022C23B0
	stmdb sp!, {r3, lr}
	ldr r0, _022C23E8 ; =0x022DC214
	ldr r0, [r0]
	cmp r0, #0
	ldmeqdb sp!, {r3, pc}
	ldr r0, [r0]
	bl MemFree
	ldr r0, _022C23E8 ; =0x022DC214
	ldr r0, [r0]
	bl MemFree
	ldr r0, _022C23E8 ; =0x022DC214
	mov r1, #0
	str r1, [r0]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C23E8: .word 0x022DC214
	arm_func_end ov10_022C23B0

	arm_func_start ov10_022C23EC
ov10_022C23EC: ; 0x022C23EC
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _022C244C ; =0x022DC214
	ldr r1, [r0]
	cmp r1, #0
	ldmeqdb sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	ldr r4, [r1]
	mov r0, r0, lsl #0x10
	movs r6, r0, lsr #0x10
	mov r5, #0
	ldmeqdb sp!, {r4, r5, r6, pc}
	b _022C2440
_022C241C:
	ldr r1, [r4]
	cmp r1, #0
	beq _022C2430
	mov r0, r4
	blx r1
_022C2430:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	add r4, r4, #8
_022C2440:
	cmp r5, r6
	blo _022C241C
	ldmdb sp!, {r4, r5, r6, pc}
	.align 2, 0
_022C244C: .word 0x022DC214
	arm_func_end ov10_022C23EC

	arm_func_start ov10_022C2450
ov10_022C2450: ; 0x022C2450
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _022C24D4 ; =0x022DC214
	mov r5, r0
	ldr r6, [r2]
	mov r4, r1
	ldr r0, [r6, #4]
	ldr r2, [r6]
	mov r1, r0, lsl #0x10
	mov r3, #0
	b _022C24A4
_022C2478:
	ldr r0, [r2]
	cmp r0, #0
	ldreqh r0, [r6, #8]
	orreq r0, r3, r0
	moveq r0, r0, lsl #0x10
	moveq r6, r0, lsr #0x10
	beq _022C24B0
	add r0, r3, #1
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	add r2, r2, #8
_022C24A4:
	cmp r3, r1, lsr #16
	blo _022C2478
	ldr r6, _022C24D8 ; =0x0000FFFF
_022C24B0:
	ldr r0, _022C24D8 ; =0x0000FFFF
	cmp r6, r0
	beq _022C24CC
	mov r0, r6
	bl ov10_022C24E8
	str r5, [r0]
	str r4, [r0, #4]
_022C24CC:
	mov r0, r6
	ldmdb sp!, {r4, r5, r6, pc}
	.align 2, 0
_022C24D4: .word 0x022DC214
_022C24D8: .word 0x0000FFFF
	arm_func_end ov10_022C2450

	arm_func_start ov10_022C24DC
ov10_022C24DC: ; 0x022C24DC
	ldr ip, _022C24E4 ; =ov10_022C250C
	bx ip
	.align 2, 0
_022C24E4: .word ov10_022C250C
	arm_func_end ov10_022C24DC

	arm_func_start ov10_022C24E8
ov10_022C24E8: ; 0x022C24E8
	ldr r1, _022C2508 ; =0x022DC214
	ldr r1, [r1]
	ldrh r2, [r1, #8]
	ldr r1, [r1]
	sub r0, r0, r2
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #13
	bx lr
	.align 2, 0
_022C2508: .word 0x022DC214
	arm_func_end ov10_022C24E8

	arm_func_start ov10_022C250C
ov10_022C250C: ; 0x022C250C
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #4]
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end ov10_022C250C

	arm_func_start ov10_022C2528
ov10_022C2528: ; 0x022C2528
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	sub r0, r2, r1
	mov r1, r3
	bl MultiplyByFixedPoint
	mov r4, r0
	str r0, [r5]
	bl Abs
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bgt _022C256C
	cmp r4, #0
	rsblt r0, r1, #0
	strlt r0, [r5]
	strge r1, [r5]
	mov r0, #1
	ldmdb sp!, {r3, r4, r5, pc}
_022C256C:
	mov r0, #0
	ldmdb sp!, {r3, r4, r5, pc}
	arm_func_end ov10_022C2528

	arm_func_start ov10_022C2574
ov10_022C2574: ; 0x022C2574
	cmp r0, #0xaa
	movge r0, #1
	movlt r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov10_022C2574

	arm_func_start ov10_022C2588
ov10_022C2588: ; 0x022C2588
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	cmp r1, #0xaa
	addlt r0, r1, #0xfe
	addlt r0, r0, #0x100
	addge r0, r1, #0xe2
	addge r0, r0, #0x200
	mov r0, r0, lsl #0x10
	mov r3, r2
	mov r1, r0, lsr #0x10
	add r2, sp, #4
	mov r0, #4
	bl AllocAndLoadFileInPack
	ldr r1, [sp, #4]
	add r0, sp, #0
	bl HandleSir0Translation
	ldr r2, [sp]
	mov r0, r4
	mov r1, #0
	bl DecompressAtFromMemoryPointerVeneer
	add r0, sp, #4
	bl UnloadFile
	add sp, sp, #0xc
	ldmdb sp!, {r3, r4, pc}
	arm_func_end ov10_022C2588

	arm_func_start ov10_022C25EC
ov10_022C25EC: ; 0x022C25EC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	cmp r1, #0xaa
	addlt r0, r1, #0x2a8
	addge r0, r1, #0x31c
	mov r0, r0, lsl #0x10
	mov r3, r2
	mov r1, r0, lsr #0x10
	mov r2, r4
	mov r0, #4
	bl AllocAndLoadFileInPack
	ldr r1, [r4]
	add r0, sp, #0
	bl HandleSir0Translation
	ldr r0, [sp]
	str r0, [r4, #8]
	add sp, sp, #4
	ldmdb sp!, {r3, r4, pc}
	arm_func_end ov10_022C25EC

	arm_func_start ov10_022C2638
ov10_022C2638: ; 0x022C2638
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl UnloadFile
	mov r0, r4
	mov r1, #0xc
	bl MemZero
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022C2638

	arm_func_start ov10_022C2654
ov10_022C2654: ; 0x022C2654
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	cmp r1, #0xaa
	movlt r0, r1, lsl #0x10
	addge r0, r1, #0x2a8
	movge r0, r0, lsl #0x10
	mov r3, r2
	mov r1, r0, lsr #0x10
	mov r2, r4
	mov r0, #4
	bl AllocAndLoadFileInPack
	ldr r1, [r4]
	add r0, sp, #0
	bl HandleSir0Translation
	ldr r0, [sp]
	str r0, [r4, #8]
	add sp, sp, #4
	ldmdb sp!, {r3, r4, pc}
	arm_func_end ov10_022C2654

	arm_func_start ov10_022C26A0
ov10_022C26A0: ; 0x022C26A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl UnloadFile
	mov r0, r4
	mov r1, #0xc
	bl MemZero
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022C26A0

	arm_func_start ov10_022C26BC
ov10_022C26BC: ; 0x022C26BC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	cmp r1, #0xaa
	addlt r0, r1, #0x154
	addge r0, r1, #0xc5
	addge r0, r0, #0x200
	mov r0, r0, lsl #0x10
	mov r3, r2
	mov r1, r0, lsr #0x10
	add r2, sp, #4
	mov r0, #4
	bl AllocAndLoadFileInPack
	ldr r1, [sp, #4]
	add r0, sp, #0
	bl HandleSir0Translation
	ldr r2, [sp]
	ldr r1, _022C271C ; =0x00001C20
	mov r0, r4
	bl DecompressAtNormalVeneer
	add r0, sp, #4
	bl UnloadFile
	add sp, sp, #0xc
	ldmdb sp!, {r3, r4, pc}
	.align 2, 0
_022C271C: .word 0x00001C20
	arm_func_end ov10_022C26BC

	arm_func_start ov10_022C2720
ov10_022C2720: ; 0x022C2720
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl ov10_022C2574
	cmp r0, #0
	mov r0, r5
	bne _022C2788
	bl ov10_022C27CC
	mov r1, r0
	add r2, sp, #4
	mov r3, r4
	mov r0, #4
	bl AllocAndLoadFileInPack
	ldr r1, [sp, #4]
	add r0, sp, #0
	bl HandleSir0Translation
	ldr r2, [sp]
	mov r0, r6
	mov r1, #0x930
	bl DecompressAtNormalVeneer
	add r0, sp, #4
	bl UnloadFile
	b _022C27C4
_022C2788:
	bl ov10_022C27CC
	mov r1, r0
	add r2, sp, #4
	mov r3, r4
	mov r0, #4
	bl AllocAndLoadFileInPack
	ldr r1, [sp, #4]
	add r0, sp, #0
	bl HandleSir0Translation
	ldr r2, [sp]
	mov r0, r6
	mov r1, #0x800
	bl DecompressAtNormalVeneer
	add r0, sp, #4
	bl UnloadFile
_022C27C4:
	add sp, sp, #0xc
	ldmdb sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov10_022C2720

	arm_func_start ov10_022C27CC
ov10_022C27CC: ; 0x022C27CC
	cmp r0, #0xaa
	addlt r0, r0, #0xaa
	addge r0, r0, #0xff
	addge r0, r0, #0x200
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end ov10_022C27CC

	arm_func_start ov10_022C27E8
ov10_022C27E8: ; 0x022C27E8
	stmdb sp!, {r3, lr}
	ldr lr, [r2, r3, lsl #2]
	ldr ip, _022C2834 ; =0x022DC224
	ldrh lr, [lr]
	str lr, [r0]
	ldr r0, [r2, r3, lsl #2]
	ldrh r0, [r0, #2]
	str r0, [r1]
	ldr r0, [r2, r3, lsl #2]
	add r0, r0, #6
	str r0, [ip, #4]
	ldr r0, [r1]
	cmp r0, #0x3e
	movgt r0, #0x3e
	strgt r0, [r1]
	ldr r0, _022C2834 ; =0x022DC224
	mov r1, #0
	strh r1, [r0, #2]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C2834: .word 0x022DC224
	arm_func_end ov10_022C27E8

	arm_func_start ov10_022C2838
ov10_022C2838: ; 0x022C2838
	ldr r0, _022C2884 ; =0x022DC224
	ldrh r1, [r0, #2]
	cmp r1, #0
	subne r1, r1, #1
	bne _022C2868
	ldr r3, [r0, #4]
	ldrh r2, [r3]
	add r1, r3, #2
	add r1, r1, #2
	strh r2, [r0]
	str r1, [r0, #4]
	ldrh r1, [r3, #2]
_022C2868:
	strh r1, [r0, #2]
	ldrh r1, [r0]
	ldr r0, _022C2888 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	.align 2, 0
_022C2884: .word 0x022DC224
_022C2888: .word 0x00000FFF
	arm_func_end ov10_022C2838

	arm_func_start CheckEndDungeon
CheckEndDungeon: ; 0x022C288C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x29c
	mov r4, r0
	mov r0, #0
	mov r1, #0x2c
	bl LoadScriptVariableValue
	mov sb, r0
	mov r6, #0
	bl sub_02017A68
	mov r0, #0x10
	bl sub_02017ACC
	bl sub_0204E1E4
	cmp r4, #0
	bne _022C28D0
	bl InitEventFlagScriptVars
	mov sb, r6
	b _022C2984
_022C28D0:
	cmp sb, #6
	bne _022C2978
	cmp r4, #2
	bne _022C2938
	mov r0, #7
	bl sub_0205BA70
	mov r4, r0
	mov r2, #0xa
	mov r0, r6
	mov r1, #0x2c
	bl SaveScriptVariableValue
	mov r0, r4, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205B7C8
	mov r0, #0xf
	bl LoadOverlay
	mov r0, #9
	bl ov11_022DC240
	mov r0, #0xf
	bl UnloadOverlay
	mov r2, #6
	mov r0, r6
	mov r1, #0x2c
	bl SaveScriptVariableValue
	mov sb, #7
	b _022C2984
_022C2938:
	cmp r4, #3
	bne _022C2984
	mov sb, #0xa
	mov r2, sb
	mov r0, r6
	mov r1, #0x2c
	bl SaveScriptVariableValue
	mov r0, r6
	bl sub_0205B7C8
	mov r0, #0xf
	bl LoadOverlay
	mov r0, sb
	bl ov11_022DC240
	mov r0, #0xf
	bl UnloadOverlay
	b _022C2984
_022C2978:
	cmp sb, #0
	cmpne sb, #0xa
	movne sb, #1
_022C2984:
	cmp sb, #0xf
	bne _022C29C8
	bl GetGameMode
	mov r4, r0
	bl sub_0204E760
	bl GetDungeonModeSpecial
	cmp r4, #5
	cmpne r0, #3
	beq _022C29C0
	mov r0, #0xd
	bl LoadOverlay
	mov r0, #0xf
	bl ov11_022E8774
	mov r0, #0xd
	bl UnloadOverlay
_022C29C0:
	mov sb, #0x10
	b _022C2984
_022C29C8:
	cmp sb, #7
	moveq r5, #0
	beq _022C2CF8
	cmp sb, #6
	moveq r5, #2
	beq _022C2CF8
	cmp sb, #0xa
	bne _022C2B0C
	bl sub_020587C8
	bl sub_02057CE8
	bl sub_0200F910
	mov r8, #0
	ldr r5, _022C3118 ; =0x020AF6B8
	mov fp, r8
	mov sl, #1
	mov r4, #6
_022C2A08:
	mul r1, r8, r4
	ldr r0, [r5]
	ldr r2, [r0, #0x384]
	ldrb r0, [r2, r1]
	add r7, r2, r1
	tst r0, #1
	movne r0, sl
	moveq r0, fp
	tst r0, #0xff
	beq _022C2A5C
	mov r0, r7
	bl sub_0200CC38
	cmp r0, #0
	beq _022C2A54
	ldrb r0, [r7, #1]
	bl sub_020582E0
	mov r0, r7
	bl ItemZInit
	b _022C2A5C
_022C2A54:
	mov r0, r7
	bl sub_0200FB54
_022C2A5C:
	add r8, r8, #1
	cmp r8, #0x32
	blt _022C2A08
	bl RemoveEmptyItemsInBag
	mov r8, #0
	mov r7, #1
	ldr r5, _022C311C ; =0x020B0A48
	mov sl, r8
	mov fp, r7
	mov r4, #0x68
_022C2A84:
	mul r1, r8, r4
	ldr r0, [r5]
	add r0, r0, #0x9000
	ldr r0, [r0, #0x84c]
	ldrb r2, [r0, r1]
	add r1, r0, r1
	tst r2, #1
	movne r0, r7
	moveq r0, sl
	tst r0, #0xff
	beq _022C2AE4
	tst r2, #2
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _022C2AE4
	ldrb r0, [r1, #0x3e]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022C2AE4
	add r0, r1, #0x3e
	bl ItemZInit
_022C2AE4:
	add r8, r8, #1
	cmp r8, #4
	blt _022C2A84
	mov r0, #0
	bl SetMoneyCarried
	bl sub_0204AFD0
	cmp r0, #0
	beq _022C2C64
	bl sub_0205F504
	b _022C2C64
_022C2B0C:
	cmp sb, #0xb
	bne _022C2C64
	add r0, sp, #8
	mov r7, #0
	bl sub_0204F244
	bl GetGameMode
	cmp r0, #2
	beq _022C2B38
	bl GetGameMode
	cmp r0, #3
	bne _022C2B60
_022C2B38:
	bl sub_0204F050
	mov r5, r0
	bl GetDungeonMode
	mov r4, r0
	mov r0, r5
	bl IsNoLossPenaltyDungeon
	cmp r0, #0
	cmpne r4, #2
	cmpne r4, #3
	movne r7, #1
_022C2B60:
	cmp r7, #0
	bne _022C2C54
	ldrb r0, [sp, #0x64]
	cmp r0, #0xb4
	blo _022C2B7C
	cmp r0, #0xbe
	bls _022C2C54
_022C2B7C:
	ldrsh r1, [sp, #0x62]
	ldr r0, _022C3120 ; =0x00000265
	cmp r1, r0
	beq _022C2C54
	mov r7, #0
	ldr r5, _022C3118 ; =0x020AF6B8
	mov fp, r7
	mov sl, #1
	mov r4, #6
_022C2BA0:
	mul r8, r7, r4
	ldr r0, [r5]
	ldr r1, [r0, #0x384]
	ldrb r0, [r1, r8]
	add r2, r1, r8
	tst r0, #1
	movne r0, sl
	moveq r0, fp
	tst r0, #0xff
	beq _022C2C34
	ldrsh r0, [r2, #4]
	cmp r0, #0xb7
	bne _022C2BF0
	ldrb r0, [r2, #1]
	bl sub_020582E0
	ldr r0, [r5]
	ldr r0, [r0, #0x384]
	add r0, r0, r8
	bl ItemZInit
	b _022C2C34
_022C2BF0:
	add r0, r1, r8
	bl sub_0200CC38
	cmp r0, #0
	beq _022C2C34
	mov r0, #0x64
	bl RandInt
	cmp r0, #0x32
	bge _022C2C34
	ldr r0, [r5]
	ldr r0, [r0, #0x384]
	add r0, r0, r8
	ldrb r0, [r0, #1]
	bl sub_020582E0
	ldr r0, [r5]
	ldr r0, [r0, #0x384]
	add r0, r0, r8
	bl ItemZInit
_022C2C34:
	add r7, r7, #1
	cmp r7, #0x32
	blt _022C2BA0
	bl RemoveEmptyItemsInBag
	bl GetGold
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	bl SetMoneyCarried
_022C2C54:
	bl sub_0204AFD0
	cmp r0, #0
	beq _022C2C64
	bl sub_0205F504
_022C2C64:
	mov r0, #0xd
	bl LoadOverlay
	mov r0, sb
	bl ov11_022E8774
	mov r5, r0
	mov r0, #0xd
	bl UnloadOverlay
	cmp r5, #9
	bne _022C2CB8
	mov r8, #0xd
	mov r7, #2
	mov r4, r8
_022C2C94:
	mov r0, r8
	bl LoadOverlay
	mov r0, r7
	bl ov11_022E8774
	mov r5, r0
	mov r0, r4
	bl UnloadOverlay
	cmp r5, #9
	beq _022C2C94
_022C2CB8:
	cmp r5, #0xa
	bne _022C2CD0
	mov r0, #0x10
	bl sub_02017ACC
	mov r6, #1
	b _022C310C
_022C2CD0:
	cmp r5, #0xb
	bne _022C2CEC
	mov r0, #1
	bl sub_02048C0C
	mov r0, #0x10
	bl sub_02017ACC
	b _022C310C
_022C2CEC:
	cmp r5, #4
	moveq sb, #0xf
	beq _022C2984
_022C2CF8:
	add r0, sp, #0xf0
	mov r1, #0x1ac
	bl MemZero
	mov r7, #0
	strb r7, [sp, #0x101]
	strb r7, [sp, #0xff]
	add sl, sp, #0x10c
	add fp, sp, #0xf0
	mov r4, r7
_022C2D1C:
	mov r0, #0x44
	mul r8, r7, r0
	mov r2, r0
	mov r1, #0
	add r0, sl, r8
	bl MemsetSimple
	add r0, fp, r8
	strb r4, [r0, #0x1c]
	add r7, r7, #1
	strh r4, [r0, #0x20]
	cmp r7, #2
	blt _022C2D1C
	cmp r5, #5
	bne _022C2D74
	bl sub_0204E7B8
	add r0, sp, #0xf0
	bl sub_0204E790
	ldrsb r1, [sp, #0xfd]
	ldrsh r2, [sp, #0xf2]
	ldr r0, _022C3124 ; =0x022DC094
	bl DebugPrint0__0200C1FC
	b _022C2EF0
_022C2D74:
	cmp r5, #0
	bne _022C2E48
	bl sub_02048CB8
	ldr r1, _022C3128 ; =0x000F1207
	cmp r0, r1
	bne _022C2E18
	ldr r0, _022C312C ; =0x020B0A5C
	mov r2, #1
	mov r1, #0
	ldr r0, [r0]
	strb r2, [sp, #0x101]
	strb r2, [sp, #0xf4]
	strb r1, [sp, #0xfd]
	ldrsh r0, [r0, #4]
	cmp r0, #0
	streqb r1, [sp, #0xff]
	beq _022C2DC4
	add r0, sp, #0x10c
	strb r2, [sp, #0xff]
	bl sub_0205BBFC
_022C2DC4:
	add r0, sp, #2
	bl sub_0205BC94
	ldrsh r0, [sp, #6]
	cmp r0, #0
	bne _022C2DEC
	mov r1, #0
	add r0, sp, #0x194
	strb r1, [sp, #0x100]
	bl ItemZInit
	b _022C2E20
_022C2DEC:
	ldrh r3, [sp, #2]
	add r0, sp, #0x100
	ldrh r2, [sp, #4]
	ldrh r1, [sp, #6]
	mov r4, #1
	strh r3, [r0, #0x94]
	strb r4, [sp, #0x100]
	strh r2, [r0, #0x96]
	strh r1, [r0, #0x98]
	strb r4, [sp, #0x194]
	b _022C2E20
_022C2E18:
	mov r5, #1
	mov sb, #0xa
_022C2E20:
	ldr r0, _022C312C ; =0x020B0A5C
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x44
	bl MemsetSimple
	ldr r0, _022C312C ; =0x020B0A5C
	mov r1, #0
	ldr r0, [r0]
	strh r1, [r0, #4]
	b _022C2EF0
_022C2E48:
	cmp r5, #2
	bne _022C2EF0
	bl sub_02048BFC
	cmp r0, #2
	bne _022C2E88
	mov r1, #1
	mov r0, #0
	strb r1, [sp, #0xf4]
	strb r0, [sp, #0x101]
	bl sub_02048CB8
	ldr r1, _022C3128 ; =0x000F1207
	cmp r0, r1
	moveq r5, #2
	movne r5, #1
	movne sb, #0xa
	b _022C2E8C
_022C2E88:
	mov r5, #3
_022C2E8C:
	cmp r5, #3
	bne _022C2EE4
	bl sub_0204E6FC
	and r0, r0, #0xff
	cmp r0, #1
	mov r5, #1
	mov sb, #0xa
	bhi _022C2EF0
	bl sub_0204E770
	cmp r0, #0xff
	beq _022C2EF0
	bl DoesNotSaveWhenEntering
	cmp r0, #0
	beq _022C2ED8
	bl sub_02048BFC
	cmp r0, #2
	moveq r5, #3
	moveq sb, #6
	b _022C2EF0
_022C2ED8:
	mov r5, #7
	mov sb, #9
	b _022C2EF0
_022C2EE4:
	cmp r5, #1
	moveq r5, #1
	moveq sb, #0xa
_022C2EF0:
	cmp r5, #5
	cmpne r5, #0
	beq _022C2F08
	sub r0, r5, #2
	cmp r0, #1
	bhi _022C3100
_022C2F08:
	cmp r5, #5
	mov r4, #1
	bne _022C3014
	add r0, sp, #0
	bl sub_0204F1B4
	cmp r0, #0
	beq _022C2F5C
	ldrsb r0, [sp]
	bl sub_0205B77C
	ldrsb r1, [r0, #0xac]
	cmp r1, #1
	subgt r1, r1, #1
	movle r1, #0
	strb r1, [r0, #0xac]
	mov r0, #0xf
	bl LoadOverlay
	mov r0, #8
	bl ov11_022DC240
	mov r0, #0xf
	bl UnloadOverlay
	b _022C2F84
_022C2F5C:
	bl sub_0204E770
	bl DoesNotSaveWhenEntering
	cmp r0, #0
	bne _022C2F84
	mov r0, #0xf
	bl LoadOverlay
	mov r0, #7
	bl ov11_022DC240
	mov r0, #0xf
	bl UnloadOverlay
_022C2F84:
	mov r0, #0xb
	bl GetDebugFlag1
	cmp r0, #0
	beq _022C3014
	mov r0, #0xf
	bl LoadOverlay
	mov r0, #0xd
	bl ov11_022DC240
	mov r5, r0
	mov r0, #0xf
	bl UnloadOverlay
	cmp r5, #6
	mov r4, #0
	addls pc, pc, r5, lsl #2
	b _022C2FFC
_022C2FC0: ; jump table
	b _022C2FFC ; case 0
	b _022C2FFC ; case 1
	b _022C2FFC ; case 2
	b _022C2FDC ; case 3
	b _022C2FFC ; case 4
	b _022C2FE4 ; case 5
	b _022C2FF0 ; case 6
_022C2FDC:
	mov r4, #1
	b _022C3004
_022C2FE4:
	mov r0, #2
	str r0, [sp, #0x1a0]
	b _022C3004
_022C2FF0:
	mov r0, #1
	str r0, [sp, #0x1a0]
	b _022C3004
_022C2FFC:
	mvn r0, #0
	str r0, [sp, #0x1a0]
_022C3004:
	cmp r4, #0
	bne _022C3014
	add r0, sp, #0x1b0
	bl sub_0200C4CC
_022C3014:
	cmp r4, #0
	beq _022C304C
	ldrsb r1, [sp, #0xfe]
	ldr r0, _022C3130 ; =0x022DC0B8
	bl DebugPrint0__0200C1FC
	mov r0, #0xe
	bl LoadOverlay
	add r0, sp, #0xf0
	mov r1, #1
	bl RunDungeonMode
	mov r0, #0xe
	bl UnloadOverlay
	mov r0, #0
	bl sub_0204E8EC
_022C304C:
	ldr r1, [sp, #0x1a0]
	ldr r0, _022C3134 ; =0x022DC0D4
	bl DebugPrint0__0200C1FC
	ldr r1, [sp, #0x1a0]
	cmp r1, #3
	moveq r6, #1
	beq _022C310C
	mvn r0, #1
	cmp r1, r0
	moveq r6, #1
	beq _022C310C
	add r0, r1, #1
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022C30D0
_022C3088: ; jump table
	b _022C30C0 ; case 0
	b _022C30D0 ; case 1
	b _022C30A4 ; case 2
	b _022C30B8 ; case 3
	b _022C30D0 ; case 4
	b _022C30AC ; case 5
	b _022C30C8 ; case 6
_022C30A4:
	mov sb, #8
	b _022C30D4
_022C30AC:
	mov sb, #8
	bl IncrementNbFriendRescues
	b _022C30D4
_022C30B8:
	mov sb, #9
	b _022C30D4
_022C30C0:
	mov sb, #0xb
	b _022C30D4
_022C30C8:
	mov sb, #0xa
	b _022C30D4
_022C30D0:
	mov sb, #0xa
_022C30D4:
	cmp sb, #8
	cmpne sb, #9
	cmpne sb, #0xb
	bne _022C30F4
	add r0, sp, #0x1b0
	mov r1, #1
	bl sub_0204F1F0
	b _022C3100
_022C30F4:
	mov r0, #0
	mov r1, r0
	bl sub_0204F1F0
_022C3100:
	mov r0, #0
	bl sub_0204E8EC
	b _022C2984
_022C310C:
	mov r0, r6
	add sp, sp, #0x29c
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C3118: .word 0x020AF6B8
_022C311C: .word 0x020B0A48
_022C3120: .word 0x00000265
_022C3124: .word 0x022DC094
_022C3128: .word 0x000F1207
_022C312C: .word 0x020B0A5C
_022C3130: .word 0x022DC0B8
_022C3134: .word 0x022DC0D4
	arm_func_end CheckEndDungeon

	arm_func_start ov10_022C3138
ov10_022C3138: ; 0x022C3138
	stmdb sp!, {r3, lr}
	mov r0, #0x44
	mov r1, #6
	bl MemAlloc
	ldr r2, _022C31A0 ; =0x022DC218
	mov r1, #0x44
	str r0, [r2]
	bl MemZero
	ldr r0, _022C31A0 ; =0x022DC218
	mov r2, #1
	ldr r1, [r0]
	mov r3, #0
	strb r2, [r1, #0x38]
	ldr r1, [r0]
	mov r2, #0x14000
	str r3, [r1, #0x40]
	ldr r1, [r0]
	str r3, [r1, #0x3c]
	ldr r1, [r0]
	str r2, [r1, #0x2c]
	ldr r2, [r0]
	ldr r1, [r2, #0x2c]
	str r1, [r2, #0x30]
	ldr r0, [r0]
	str r3, [r0, #0x34]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C31A0: .word 0x022DC218
	arm_func_end ov10_022C3138

	arm_func_start ov10_022C31A4
ov10_022C31A4: ; 0x022C31A4
	stmdb sp!, {r3, lr}
	ldr r0, _022C3200 ; =0x022DC218
	ldr r0, [r0]
	cmp r0, #0
	ldrneb r1, [r0, #0x38]
	cmpne r1, #0
	ldmeqdb sp!, {r3, pc}
	ldr r2, _022C3204 ; =0x00000401
	mov r1, #4
	mov r3, #0xf
	bl LoadWteFromFileDirectory
	ldr r0, _022C3200 ; =0x022DC218
	mov r1, #0
	ldr r0, [r0]
	mov r3, r1
	ldr r0, [r0, #4]
	mov r2, #0x1d
	bl ProcessWte
	ldr r0, _022C3200 ; =0x022DC218
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x38]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C3200: .word 0x022DC218
_022C3204: .word 0x00000401
	arm_func_end ov10_022C31A4

	arm_func_start ov10_022C3208
ov10_022C3208: ; 0x022C3208
	stmdb sp!, {r4, lr}
	ldr ip, _022C3288 ; =0x022DC218
	ldr lr, [sp, #8]
	ldr r4, [ip]
	mov lr, lr, lsl #8
	str lr, [r4, #8]
	ldr r4, [ip]
	mov lr, #0
	str lr, [r4, #0xc]
	ldr lr, [r1]
	ldr r4, [ip]
	ldr r1, [r1, #4]
	str lr, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x18]
	str r1, [r4, #0x1c]
	str r3, [r4, #0x28]
	ldr r0, [ip]
	str r2, [r0, #0x2c]
	ldr r1, [ip]
	ldr r0, [r1, #0x2c]
	str r0, [r1, #0x30]
	ldr r1, [ip]
	ldr r0, [r1, #0x34]
	add r0, r0, #1
	str r0, [r1, #0x34]
	ldmdb sp!, {r4, pc}
	.align 2, 0
_022C3288: .word 0x022DC218
	arm_func_end ov10_022C3208

	arm_func_start ov10_022C328C
ov10_022C328C: ; 0x022C328C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, _022C331C ; =0x022DC0F0
	ldr r3, _022C3320 ; =0x022DC218
	ldr lr, [ip, #8]
	ldr ip, [ip, #4]
	str lr, [sp, #8]
	str ip, [sp, #4]
	ldr ip, [r0]
	ldr r3, [r3]
	mov ip, ip, lsl #8
	str ip, [sp, #4]
	ldr r0, [r0, #4]
	mov lr, r1
	mov r1, r0, lsl #8
	str r1, [sp, #8]
	ldr r0, [r3, #0x34]
	cmp r0, #0
	streq ip, [r3, #0x20]
	streq r1, [r3, #0x24]
	ldr r0, _022C3320 ; =0x022DC218
	add r1, sp, #4
	ldr r0, [r0]
	mov r3, lr, lsl #8
	str r2, [sp]
	ldr r2, [r0, #0x30]
	add r0, r0, #0x20
	bl ov10_022C3208
	ldr r0, _022C3320 ; =0x022DC218
	mov r2, #1
	ldr r1, [r0]
	str r2, [r1, #0x40]
	ldr r0, [r0]
	str r2, [r0, #0x3c]
	add sp, sp, #0xc
	ldmia sp!, {pc}
	.align 2, 0
_022C331C: .word 0x022DC0F0
_022C3320: .word 0x022DC218
	arm_func_end ov10_022C328C

	arm_func_start ov10_022C3324
ov10_022C3324: ; 0x022C3324
	stmdb sp!, {r3, lr}
	ldr r1, _022C3374 ; =0x022DC218
	mov r3, #0x14000
	ldr r1, [r1]
	str r0, [sp]
	ldr r2, [r1, #0x30]
	add r0, r1, #0x20
	add r1, r1, #0x20
	bl ov10_022C3208
	ldr r0, _022C3374 ; =0x022DC218
	mov r2, #2
	ldr r1, [r0]
	mov r3, #1
	str r2, [r1, #0x40]
	ldr r2, [r0]
	mov r1, #0
	str r3, [r2, #0x3c]
	ldr r0, [r0]
	str r1, [r0, #0x34]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C3374: .word 0x022DC218
	arm_func_end ov10_022C3324

	arm_func_start ov10_022C3378
ov10_022C3378: ; 0x022C3378
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _022C34EC ; =0x022DC218
	ldr r6, [r0]
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	moveq r0, #0
	beq _022C34E4
	ldr r0, [r6, #8]
	ldr r7, [r6, #0xc]
	mov r4, #1
	cmp r0, r7
	bne _022C33EC
	ldr r0, [r6, #0x40]
	cmp r0, #2
	moveq r0, #0
	streq r0, [r6, #0x3c]
	moveq r4, #3
	beq _022C33CC
	cmp r0, #1
	moveq r4, #2
_022C33CC:
	ldr r0, _022C34EC ; =0x022DC218
	ldr r2, [r0]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r2, #0x28]
	b _022C34C4
_022C33EC:
	sub r5, r0, r7
	ldr r1, [r6, #0x18]
	mov r0, r5
	bl MultiplyByFixedPoint
	mov r8, r0
	ldr r1, [r6, #0x10]
	mov r0, r7
	bl MultiplyByFixedPoint
	ldr r1, _022C34EC ; =0x022DC218
	add r0, r8, r0
	ldr r1, [r1]
	str r0, [sp]
	ldr r1, [r1, #8]
	bl sub_02001AB0
	ldr r1, _022C34EC ; =0x022DC218
	str r0, [sp]
	ldr r1, [r1]
	mov r0, r5
	ldr r1, [r1, #0x1c]
	bl MultiplyByFixedPoint
	ldr r1, _022C34EC ; =0x022DC218
	mov r6, r0
	ldr r1, [r1]
	mov r0, r7
	ldr r1, [r1, #0x14]
	bl MultiplyByFixedPoint
	add r0, r6, r0
	str r0, [sp, #4]
	ldr r1, _022C34EC ; =0x022DC218
	ldr r1, [r1]
	ldr r1, [r1, #8]
	bl sub_02001AB0
	str r0, [sp, #4]
	mov r0, r5
	ldr r1, _022C34EC ; =0x022DC218
	ldr r1, [r1]
	ldr r1, [r1, #0x2c]
	bl MultiplyByFixedPoint
	mov r5, r0
	mov r0, r7
	ldr r1, _022C34EC ; =0x022DC218
	ldr r1, [r1]
	ldr r1, [r1, #0x28]
	bl MultiplyByFixedPoint
	add r0, r5, r0
	ldr r1, _022C34EC ; =0x022DC218
	ldr r1, [r1]
	ldr r1, [r1, #8]
	bl sub_02001AB0
	ldr r1, _022C34EC ; =0x022DC218
	ldr r2, [r1]
	ldr r1, [r2, #0xc]
	add r1, r1, #0x100
	str r1, [r2, #0xc]
_022C34C4:
	ldr r1, _022C34EC ; =0x022DC218
	ldr r2, [sp]
	ldr r3, [r1]
	ldr r1, [sp, #4]
	str r2, [r3, #0x20]
	str r1, [r3, #0x24]
	str r0, [r3, #0x30]
	mov r0, r4
_022C34E4:
	add sp, sp, #8
	ldmdb sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C34EC: .word 0x022DC218
	arm_func_end ov10_022C3378

	arm_func_start ov10_022C34F0
ov10_022C34F0: ; 0x022C34F0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x80
	ldr r0, _022C388C ; =0x022DC218
	ldr r1, [r0]
	cmp r1, #0
	beq _022C3884
	ldr r0, [r1, #0x3c]
	cmp r0, #0
	beq _022C3520
	ldr r0, [r1, #0x40]
	cmp r0, #2
	beq _022C352C
_022C3520:
	ldr r0, [r1, #0x40]
	cmp r0, #1
	bne _022C3884
_022C352C:
	ldr r0, _022C388C ; =0x022DC218
	mov r1, #0x3000
	ldr r4, [r0]
	ldr r2, [r4, #0x20]
	ldr r0, [r4, #0x24]
	mov r3, r2, asr #8
	mov r2, r0, asr #8
	ldr r0, [r4, #0x30]
	mov r4, r3, lsl #0x10
	mov r5, r2, lsl #0x10
	bl sub_02001AB0
	mov r1, r0
	mov r0, #0x3000
	bl MultiplyByFixedPoint
	mov r2, #0x140
	mov r1, r0, asr #7
	add r0, r0, r1, lsr #24
	mov r1, r0, asr #8
	rsb r0, r1, #0
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	mov r0, r1, lsl #0x10
	mov r1, r0, asr #0x10
	mov r0, r2
	rsb r0, r0, #0
	strh r0, [sp, #0x10]
	strh r0, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r0, [sp, #0x16]
	strh r0, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strh r2, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	strh r0, [sp, #0x60]
	strh r0, [sp, #0x68]
	strh r3, [sp, #0x62]
	strh r3, [sp, #0x64]
	strh r3, [sp, #0x66]
	strh r1, [sp, #0x6a]
	strh r3, [sp, #0x6c]
	strh r1, [sp, #0x6e]
	strh r1, [sp, #0x70]
	strh r3, [sp, #0x72]
	strh r2, [sp, #0x74]
	strh r2, [sp, #0x7c]
	strh r3, [sp, #0x76]
	strh r1, [sp, #0x78]
	strh r1, [sp, #0x7a]
	strh r1, [sp, #0x7e]
	mov r2, #0
	add r0, sp, #0x10
	add r6, sp, #0x18
_022C35FC:
	mov r8, r2, lsl #2
	ldrsh r7, [r0, r8]
	ldrsh r3, [r6, r8]
	add r1, r0, r2, lsl #2
	add r7, r7, r4, asr #16
	add r3, r3, r4, asr #16
	strh r7, [r0, r8]
	add r7, r6, r2, lsl #2
	strh r3, [r6, r8]
	ldrsh r8, [r1, #2]
	ldrsh r3, [r7, #2]
	add r2, r2, #1
	add r8, r8, r5, asr #16
	add r3, r3, r5, asr #16
	strh r8, [r1, #2]
	strh r3, [r7, #2]
	cmp r2, #2
	blt _022C35FC
	mov r2, #0
	add r0, sp, #0x60
	add r6, sp, #0x70
_022C3650:
	mov r8, r2, lsl #2
	ldrsh r7, [r0, r8]
	ldrsh r3, [r6, r8]
	add r1, r0, r2, lsl #2
	add r7, r7, r4, asr #16
	add r3, r3, r4, asr #16
	strh r7, [r0, r8]
	add r7, r6, r2, lsl #2
	strh r3, [r6, r8]
	ldrsh r8, [r1, #2]
	ldrsh r3, [r7, #2]
	add r2, r2, #1
	add r8, r8, r5, asr #16
	add r3, r3, r5, asr #16
	strh r8, [r1, #2]
	strh r3, [r7, #2]
	cmp r2, #4
	blt _022C3650
	add r0, sp, #0x20
	bl sub_0201E730
	mov r0, #5
	strb r0, [sp, #0x5c]
	mov r2, #0
	ldr r0, _022C388C ; =0x022DC218
	str r2, [sp]
	ldr r1, [r0]
	add r0, sp, #0x20
	ldr r1, [r1, #4]
	mov r3, #0x1d
	bl sub_0201E774
	mov r7, #0
	mov r6, #4
	ldrsh r0, [sp, #0x12]
	ldrsh r4, [sp, #0x10]
	ldrsh r3, [sp, #0x14]
	strh r0, [sp, #0x22]
	mov r0, #0xff
	ldrsh r2, [sp, #0x16]
	ldrsh r1, [sp, #0x60]
	ldrsh r5, [sp, #0x62]
	ldrsh fp, [sp, #0x74]
	strh r4, [sp, #0x20]
	ldrsh r4, [sp, #0x76]
	strb r0, [sp, #0x4f]
	mov r0, #0x30
	strh r0, [sp, #0x4a]
	mov r0, #0x22
	strb r0, [sp, #0x5e]
	add r0, sp, #0x20
	strh r3, [sp, #0x24]
	strh r7, [sp, #0x36]
	strh r7, [sp, #0x38]
	strh r6, [sp, #0x3a]
	strh r6, [sp, #0x3c]
	strh r2, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r5, [sp, #0x2a]
	strh fp, [sp, #0x2c]
	strh r4, [sp, #0x2e]
	bl ov10_022C38D4
	add r0, sp, #0x20
	bl sub_0201F2A0
	ldrsh r6, [sp, #0x68]
	ldrsh r7, [sp, #0x6a]
	ldrsh r0, [sp, #0x7c]
	str r0, [sp, #0xc]
	ldrsh r0, [sp, #0x7e]
	str r0, [sp, #8]
	strh r6, [sp, #0x20]
	strh r7, [sp, #0x22]
	ldr r0, [sp, #0xc]
	ldrsh r1, [sp, #0x1a]
	strh r0, [sp, #0x24]
	ldr r0, [sp, #8]
	ldrsh r2, [sp, #0x18]
	strh r0, [sp, #0x26]
	ldrsh r0, [sp, #0x1c]
	strh r1, [sp, #0x2a]
	ldrsh r1, [sp, #0x1e]
	strh r0, [sp, #0x2c]
	add r0, sp, #0x20
	strh r2, [sp, #0x28]
	strh r1, [sp, #0x2e]
	bl ov10_022C38D4
	add r0, sp, #0x20
	bl sub_0201F2A0
	ldrsh r0, [sp, #0x60]
	strh r5, [sp, #0x22]
	strh r6, [sp, #0x28]
	ldrsh r5, [sp, #0x64]
	ldrsh r6, [sp, #0x66]
	strh r0, [sp, #0x20]
	ldrsh r0, [sp, #0x6c]
	strh r7, [sp, #0x2a]
	strh r5, [sp, #0x24]
	strh r6, [sp, #0x26]
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	ldrsh r8, [sp, #0x6e]
	add r0, sp, #0x20
	strh r1, [sp, #0x2c]
	strh r8, [sp, #0x2e]
	bl ov10_022C38D4
	add r0, sp, #0x20
	bl sub_0201F2A0
	ldrsh r7, [sp, #0x72]
	ldrsh sb, [sp, #0x78]
	ldrsh sl, [sp, #0x7a]
	ldrsh r1, [sp, #0x70]
	strh r7, [sp, #0x22]
	strh fp, [sp, #0x24]
	strh r4, [sp, #0x26]
	strh sb, [sp, #0x28]
	strh sl, [sp, #0x2a]
	strh r1, [sp, #0x20]
	ldr r1, [sp, #0xc]
	add r0, sp, #0x20
	strh r1, [sp, #0x2c]
	ldr r1, [sp, #8]
	strh r1, [sp, #0x2e]
	bl ov10_022C38D4
	add r0, sp, #0x20
	bl sub_0201F2A0
	ldrsh r1, [sp, #0x70]
	strh r5, [sp, #0x20]
	strh r6, [sp, #0x22]
	strh r7, [sp, #0x26]
	strh r1, [sp, #0x24]
	ldr r1, [sp, #4]
	mov r3, #0
	mov r2, #0x60
	add r0, sp, #0x20
	strh r1, [sp, #0x28]
	strh r8, [sp, #0x2a]
	strh sb, [sp, #0x2c]
	strh sl, [sp, #0x2e]
	strh r3, [sp, #0x36]
	strh r3, [sp, #0x38]
	strh r2, [sp, #0x3a]
	strh r2, [sp, #0x3c]
	bl sub_0201F2A0
_022C3884:
	add sp, sp, #0x80
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C388C: .word 0x022DC218
	arm_func_end ov10_022C34F0

	arm_func_start ov10_022C3890
ov10_022C3890: ; 0x022C3890
	stmdb sp!, {r3, lr}
	ldr r0, _022C38D0 ; =0x022DC218
	ldr r0, [r0]
	cmp r0, #0
	ldmeqdb sp!, {r3, pc}
	ldr r1, [r0]
	cmp r1, #0
	beq _022C38B4
	bl UnloadWte
_022C38B4:
	ldr r0, _022C38D0 ; =0x022DC218
	ldr r0, [r0]
	bl MemFree
	ldr r0, _022C38D0 ; =0x022DC218
	mov r1, #0
	str r1, [r0]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_022C38D0: .word 0x022DC218
	arm_func_end ov10_022C3890

	arm_func_start ov10_022C38D4
ov10_022C38D4: ; 0x022C38D4
	stmdb sp!, {r4, lr}
	mov r4, #0
	mvn lr, #0xf
	mov ip, #0x110
	mov r1, #0xd0
_022C38E8:
	mov r3, r4, lsl #2
	ldrsh r2, [r0, r3]
	cmp r2, lr
	strlth lr, [r0, r3]
	mov r3, r4, lsl #2
	ldrsh r2, [r0, r3]
	cmp r2, #0x110
	strgth ip, [r0, r3]
	add r3, r0, r4, lsl #2
	ldrsh r2, [r3, #2]
	cmp r2, lr
	strlth lr, [r3, #2]
	add r3, r0, r4, lsl #2
	ldrsh r2, [r3, #2]
	add r4, r4, #1
	cmp r2, #0xd0
	strgth r1, [r3, #2]
	cmp r4, #4
	blt _022C38E8
	ldmdb sp!, {r4, pc}
	arm_func_end ov10_022C38D4

	arm_func_start ov10_022C3938
ov10_022C3938: ; 0x022C3938
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x6c
	ldr r4, _022C3E80 ; =0x022DC0FC
	str r1, [sp, #0x10]
	ldr r5, [r4, #0xc]
	ldr r6, [r4, #8]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x90]
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x60]
	ldr r1, _022C3E84 ; =0x022DC114
	add r0, sp, #0x64
	str r6, [sp, #0x64]
	mov r2, #6
	str r5, [sp, #0x68]
	str r3, [sp, #0x90]
	ldr r4, [sp, #0x94]
	ldr sl, [sp, #0x9c]
	ldr sb, [sp, #0xa0]
	ldr r8, [sp, #0xa4]
	bl LoadFileFromRom
	ldr r1, [sp, #0x64]
	add r0, sp, #0x60
	bl HandleSir0Translation
	ldrb r5, [r4]
	ldr r6, [sp, #0x60]
	cmp r5, #0xb4
	movhs r5, #0
	mov r0, r5
	bl GetDungeonGroup
	ldrb r3, [r4, #1]
	mov r4, r0
	add r0, sp, #0x5d
	add r1, sp, #0x5c
	mov r2, r5
	bl ov10_022C42F4
	ldrb r2, [sp, #0x5d]
	mov r1, r5
	ldmia r6, {r0, r3}
	ldr r5, [r0, r4, lsl #2]
	mov r0, r2, lsl #2
	ldrsh r0, [r5, r0]
	add r7, r5, r2, lsl #2
	ldrb fp, [sp, #0x5c]
	ldrb r5, [r3, r0, lsl #2]
	ldr r0, _022C3E88 ; =0x022DC130
	mov r3, r4
	str fp, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	bl DebugPrint0__0200C1FC
	ldrb r0, [sp, #0x5c]
	cmp r0, #1
	bls _022C3A64
	ldrb r0, [sp, #0x5d]
	b _022C3A48
_022C3A20:
	and r0, r0, #0xff
	sub r0, r0, #1
	strb r0, [sp, #0x5d]
	ldr r2, [r6]
	and r1, r0, #0xff
	ldr r2, [r2, r4, lsl #2]
	mov r1, r1, lsl #2
	ldrsh r1, [r2, r1]
	ldr r2, [r6, #4]
	ldrb r5, [r2, r1, lsl #2]
_022C3A48:
	and r1, r0, #0xff
	cmp r1, #1
	bls _022C3A64
	cmp r5, #0xaa
	blt _022C3A64
	cmp r5, #0xc7
	blt _022C3A20
_022C3A64:
	add r0, sp, #0x64
	bl UnloadFile
	mov r0, #0x930
	mov r1, #0x10
	bl MemAlloc
	str r0, [sp, #0x38]
	mov r1, r5, lsl #0x10
	ldr r0, [sp, #0x14]
	mov r1, r1, asr #0x10
	mov r2, #0x10
	bl ov10_022C2588
	mov r1, r5, lsl #0x10
	ldr r0, [sp, #0xc]
	mov r1, r1, asr #0x10
	mov r2, #0x10
	bl ov10_022C25EC
	mov r1, r5, lsl #0x10
	ldr r0, [sp, #0x18]
	mov r1, r1, asr #0x10
	mov r2, #0x10
	bl ov10_022C26BC
	mov r1, r5, lsl #0x10
	ldr r0, [sp, #0x38]
	mov r1, r1, asr #0x10
	mov r2, #0x10
	bl ov10_022C2720
	mov r6, #0
	b _022C3E54
_022C3AD4:
	mov r0, r5
	bl sub_0204F55C
	cmp r0, #0
	sub r0, r6, #1
	str r0, [sp, #0x20]
	mul r1, r6, sl
	ldr r0, [sp, #0x90]
	movne r7, #3
	add r0, r0, r1, lsl #1
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x38]
	mov r4, #0
	add r0, r0, r6, lsl #6
	str r0, [sp, #0x40]
	mov r0, #0xff
	bic r0, r0, #1
	str r0, [sp, #0x48]
	mov r0, #0xff
	bic r0, r0, #1
	str r0, [sp, #0x4c]
	mov r0, #0xff
	bic r0, r0, #1
	str r0, [sp, #0x50]
	mov r0, r4
	orr r0, r0, #1
	moveq r7, #0
	str r0, [sp, #0x54]
	b _022C3E48
_022C3B44:
	str r8, [sp]
	mov r0, r4
	mov r1, r6
	mov r2, sl
	mov r3, sb
	str r7, [sp, #4]
	bl ov10_022C434C
	str r0, [sp, #0x3c]
	cmp r5, #0xaa
	blt _022C3B88
	cmp r4, #0x20
	cmplt r6, #0x20
	ldrlt r0, [sp, #0x40]
	movlt r1, r4, lsl #1
	ldrlth r2, [r1, r0]
	movge r2, r7
	b _022C3E38
_022C3B88:
	str r8, [sp]
	str r7, [sp, #4]
	mov r0, r4
	add r1, r6, #1
	mov r2, sl
	mov r3, sb
	bl ov10_022C434C
	str r8, [sp]
	str r0, [sp, #0x44]
	str r7, [sp, #4]
	add r0, r4, #1
	add r1, r6, #1
	mov r2, sl
	mov r3, sb
	bl ov10_022C434C
	str r8, [sp]
	str r0, [sp, #0x34]
	add r0, r4, #1
	mov r1, r6
	mov r2, sl
	mov r3, sb
	str r7, [sp, #4]
	bl ov10_022C434C
	str r8, [sp]
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x20]
	add r0, r4, #1
	mov r2, sl
	mov r3, sb
	str r7, [sp, #4]
	bl ov10_022C434C
	str r8, [sp]
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	mov r0, r4
	mov r2, sl
	mov r3, sb
	str r7, [sp, #4]
	bl ov10_022C434C
	str r0, [sp, #0x28]
	sub r0, r4, #1
	str r8, [sp]
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x1c]
	mov r2, sl
	mov r3, sb
	str r7, [sp, #4]
	bl ov10_022C434C
	str r0, [sp, #0x24]
	str r8, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, r6
	mov r2, sl
	mov r3, sb
	str r7, [sp, #4]
	bl ov10_022C434C
	mov fp, r0
	str r8, [sp]
	ldr r0, [sp, #0x1c]
	add r1, r6, #1
	mov r2, sl
	mov r3, sb
	str r7, [sp, #4]
	bl ov10_022C434C
	ldr r1, [sp, #0x3c]
	cmp r1, #1
	bne _022C3CF8
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x34]
	cmp r1, #0
	mov r1, #0xff
	ldreq r1, [sp, #0x48]
	cmp r2, #0
	ldr r2, [sp, #0x30]
	biceq r1, r1, #2
	cmp r2, #0
	ldr r2, [sp, #0x2c]
	biceq r1, r1, #4
	cmp r2, #0
	ldr r2, [sp, #0x28]
	biceq r1, r1, #8
	cmp r2, #0
	ldr r2, [sp, #0x24]
	biceq r1, r1, #0x10
	cmp r2, #0
	biceq r1, r1, #0x20
	cmp fp, #0
	biceq r1, r1, #0x40
	cmp r0, #0
	biceq r1, r1, #0x80
	orr r1, r1, #0x200
	b _022C3E2C
_022C3CF8:
	cmp r1, #2
	bne _022C3D64
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x34]
	cmp r1, #2
	mov r1, #0xff
	ldrne r1, [sp, #0x4c]
	cmp r2, #2
	ldr r2, [sp, #0x30]
	bicne r1, r1, #2
	cmp r2, #2
	ldr r2, [sp, #0x2c]
	bicne r1, r1, #4
	cmp r2, #2
	ldr r2, [sp, #0x28]
	bicne r1, r1, #8
	cmp r2, #2
	ldr r2, [sp, #0x24]
	bicne r1, r1, #0x10
	cmp r2, #2
	bicne r1, r1, #0x20
	cmp fp, #2
	bicne r1, r1, #0x40
	cmp r0, #2
	bicne r1, r1, #0x80
	orr r1, r1, #0x100
	b _022C3E2C
_022C3D64:
	cmp r1, #3
	bne _022C3DD0
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x34]
	cmp r1, #3
	mov r1, #0xff
	ldrne r1, [sp, #0x50]
	cmp r2, #3
	ldr r2, [sp, #0x30]
	bicne r1, r1, #2
	cmp r2, #3
	ldr r2, [sp, #0x2c]
	bicne r1, r1, #4
	cmp r2, #3
	ldr r2, [sp, #0x28]
	bicne r1, r1, #8
	cmp r2, #3
	ldr r2, [sp, #0x24]
	bicne r1, r1, #0x10
	cmp r2, #3
	bicne r1, r1, #0x20
	cmp fp, #3
	bicne r1, r1, #0x40
	cmp r0, #3
	bicne r1, r1, #0x80
	orr r1, r1, #0x100
	b _022C3E2C
_022C3DD0:
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x34]
	cmp r1, #0
	mov r1, #0
	ldreq r1, [sp, #0x54]
	cmp r2, #0
	ldr r2, [sp, #0x30]
	orreq r1, r1, #2
	cmp r2, #0
	ldr r2, [sp, #0x2c]
	orreq r1, r1, #4
	cmp r2, #0
	ldr r2, [sp, #0x28]
	orreq r1, r1, #8
	cmp r2, #0
	ldr r2, [sp, #0x24]
	orreq r1, r1, #0x10
	cmp r2, #0
	orreq r1, r1, #0x20
	cmp fp, #0
	orreq r1, r1, #0x40
	cmp r0, #0
	orreq r1, r1, #0x80
_022C3E2C:
	ldr r0, [sp, #0x38]
	add r1, r1, r1, lsl #1
	ldrb r2, [r0, r1]
_022C3E38:
	ldr r0, [sp, #0x58]
	mov r1, r4, lsl #1
	strh r2, [r1, r0]
	add r4, r4, #1
_022C3E48:
	cmp r4, sl
	blt _022C3B44
	add r6, r6, #1
_022C3E54:
	cmp r6, sb
	blt _022C3AD4
	ldr r0, [sp, #0x38]
	bl MemFree
	mov r1, r5, lsl #0x10
	ldr r0, [sp, #0x10]
	mov r1, r1, asr #0x10
	mov r2, #0x10
	bl ov10_022C2654
	add sp, sp, #0x6c
	ldmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C3E80: .word 0x022DC0FC
_022C3E84: .word 0x022DC114
_022C3E88: .word 0x022DC130
	arm_func_end ov10_022C3938

	arm_func_start ov10_022C3E8C
ov10_022C3E8C: ; 0x022C3E8C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	ldr r4, _022C42E8 ; =0x022DC0FC
	mov r8, r1
	ldr r5, [r4, #4]
	ldr r6, [r4]
	mov sb, r0
	mov sl, r2
	mov r4, #0
	str r5, [sp, #0x24]
	ldr r1, _022C42EC ; =0x022DC114
	add r0, sp, #0x20
	str r6, [sp, #0x20]
	mov r2, #6
	mov fp, r3
	str r4, [sp, #0x10]
	ldr r5, [sp, #0x50]
	bl LoadFileFromRom
	ldr r1, [sp, #0x20]
	add r0, sp, #0x10
	bl HandleSir0Translation
	ldrb r0, [r5]
	ldr r6, [sp, #0x10]
	bl GetDungeonGroup
	mov r7, r0
	ldrb r2, [r5]
	ldrb r3, [r5, #1]
	add r0, sp, #0xd
	add r1, sp, #0xc
	bl ov10_022C42F4
	ldr r2, [r6]
	ldrb r1, [sp, #0xd]
	ldr r2, [r2, r7, lsl #2]
	ldr r0, [r6, #4]
	mov r1, r1, lsl #2
	ldrsh r1, [r2, r1]
	add r0, r0, r1, lsl #2
	ldrb r5, [r0, #1]
	cmp r5, #0
	beq _022C42D4
	ldr r1, _022C42E8 ; =0x022DC0FC
	add r0, sp, #0x18
	ldr r3, [r1, #0x14]
	ldr r2, [r1, #0x10]
	ldr r1, _022C42F0 ; =0x022DC190
	str r2, [sp, #0x18]
	mov r2, #0xf
	str r3, [sp, #0x1c]
	bl LoadFileFromRom
	ldr r1, [sp, #0x18]
	add r0, sp, #0x14
	bl HandleSir0Translation
	ldr r2, [sp, #0x14]
	mov r3, r5
	mov r0, sl
	mov r1, fp
	bl ov10_022C27E8
	ldr r0, [fp]
	mov r3, #0
	str r0, [sp, #4]
	add r5, r0, #0xa
	ldr r4, [sl]
	mov r0, r3
	mov r1, r3
	b _022C3FB8
_022C3F90:
	mul r6, r3, r8
	mov r2, r1
	b _022C3FAC
_022C3F9C:
	add r7, r2, r6
	mov r7, r7, lsl #1
	strh r0, [sb, r7]
	add r2, r2, #1
_022C3FAC:
	cmp r2, r8
	blt _022C3F9C
	add r3, r3, #1
_022C3FB8:
	cmp r3, r5
	blt _022C3F90
	mov r6, #5
	b _022C4238
_022C3FC8:
	mul r0, r6, r8
	str r0, [sp]
	add r0, r4, #5
	mov r7, #5
	str r0, [sp, #8]
	b _022C4228
_022C3FE0:
	bl ov10_022C2838
	ldr r1, [sp]
	cmp r7, #0
	add r1, r7, r1
	and r0, r0, #0xff
	add r1, sb, r1, lsl #1
	cmpge r6, #0
	blt _022C4224
	cmp r7, r8
	cmplt r6, r5
	bge _022C4224
	cmp r0, #0x10
	blo _022C402C
	ldrh r2, [r1]
	bic r2, r2, #3
	strh r2, [r1]
	ldrh r2, [r1]
	orr r2, r2, #1
	strh r2, [r1]
_022C402C:
	cmp r0, #0x43
	bgt _022C4084
	bge _022C4144
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _022C4224
_022C4044: ; jump table
	b _022C409C ; case 0
	b _022C40B8 ; case 1
	b _022C40D4 ; case 2
	b _022C4224 ; case 3
	b _022C409C ; case 4
	b _022C40F0 ; case 5
	b _022C410C ; case 6
	b _022C4224 ; case 7
	b _022C4144 ; case 8
	b _022C409C ; case 9
	b _022C4128 ; case 10
	b _022C4188 ; case 11
	b _022C41A8 ; case 12
	b _022C41D4 ; case 13
	b _022C420C ; case 14
	b _022C4224 ; case 15
_022C4084:
	cmp r0, #0x44
	bgt _022C4094
	beq _022C4160
	b _022C4224
_022C4094:
	cmp r0, #0x45
	b _022C4224
_022C409C:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #1
	strh r0, [r1]
	b _022C4224
_022C40B8:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	bic r0, r0, #0x100
	strh r0, [r1]
	b _022C4224
_022C40D4:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #0x10
	strh r0, [r1]
	b _022C4224
_022C40F0:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #2
	strh r0, [r1]
	b _022C4224
_022C410C:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #3
	strh r0, [r1]
	b _022C4224
_022C4128:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #0x13
	strh r0, [r1]
	b _022C4224
_022C4144:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #1
	strh r0, [r1]
	b _022C4224
_022C4160:
	ldrh r0, [r1]
	orr r0, r0, #0x800
	strh r0, [r1]
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #1
	strh r0, [r1]
	b _022C4224
_022C4188:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #1
	orr r0, r0, #0x800
	strh r0, [r1]
	b _022C4224
_022C41A8:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #1
	orr r0, r0, #0x1000
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #0x810
	strh r0, [r1]
	b _022C4224
_022C41D4:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #1
	orr r0, r0, #0x1000
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #0x810
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #0x2000
	strh r0, [r1]
	b _022C4224
_022C420C:
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #0x10
	strh r0, [r1]
_022C4224:
	add r7, r7, #1
_022C4228:
	ldr r0, [sp, #8]
	cmp r7, r0
	blt _022C3FE0
	add r6, r6, #1
_022C4238:
	ldr r0, [sp, #4]
	add r2, r0, #5
	cmp r6, r2
	blt _022C3FC8
	mov r6, #0
	add r1, r4, #5
	mov lr, #0x100
	b _022C42AC
_022C4258:
	mul r3, r6, r8
	mov r7, #0
	b _022C42A0
_022C4264:
	cmp r7, #5
	add r0, r7, r3
	blt _022C4288
	cmp r7, r1
	bge _022C4288
	cmp r6, #5
	blt _022C4288
	cmp r6, r2
	blt _022C429C
_022C4288:
	mov r0, r0, lsl #1
	strh lr, [sb, r0]
	ldrh ip, [sb, r0]
	orr ip, ip, #0x10
	strh ip, [sb, r0]
_022C429C:
	add r7, r7, #1
_022C42A0:
	cmp r7, r8
	blt _022C4264
	add r6, r6, #1
_022C42AC:
	cmp r6, r5
	blt _022C4258
	add r0, sp, #0x18
	bl UnloadFile
	add r0, r4, #0xa
	str r0, [sl]
	ldr r0, [sp, #4]
	mov r4, #1
	add r0, r0, #0xa
	str r0, [fp]
_022C42D4:
	add r0, sp, #0x20
	bl UnloadFile
	mov r0, r4
	add sp, sp, #0x28
	ldmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C42E8: .word 0x022DC0FC
_022C42EC: .word 0x022DC114
_022C42F0: .word 0x022DC190
	arm_func_end ov10_022C3E8C

	arm_func_start ov10_022C42F4
ov10_022C42F4: ; 0x022C42F4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r4, r3
	mov r0, r5
	mov r6, r1
	bl GetNbFloors
	cmp r4, r0
	movgt r4, r0
	mov r0, r5
	bl GetNbPrecedingFloors
	add r4, r4, r0
	mov r0, r5
	bl GetNbFloorsDungeonGroup
	cmp r4, #1
	movlt r4, #1
	blt _022C4340
	cmp r4, r0
	movgt r4, r0
_022C4340:
	strb r4, [r7]
	strb r0, [r6]
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov10_022C42F4

	arm_func_start ov10_022C434C
ov10_022C434C: ; 0x022C434C
	ldr ip, [sp, #4]
	cmp r0, #0
	movlt r0, ip
	bxlt lr
	cmp r1, #0
	movlt r0, ip
	bxlt lr
	cmp r0, r2
	movge r0, ip
	bxge lr
	cmp r1, r3
	mlalt r0, r1, r2, r0
	ldrlt r1, [sp]
	movlt r0, r0, lsl #1
	ldrlth r0, [r1, r0]
	andlt ip, r0, #3
	mov r0, ip
	bx lr
	arm_func_end ov10_022C434C
	; 0x022C4394
