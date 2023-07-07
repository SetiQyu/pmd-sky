	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"

	.text

	arm_func_start ov28_0238A140
ov28_0238A140: ; 0x0238A140
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #0x10]
	str r1, [r0, #0xc]
	str r2, [r0, #4]
	sub r2, r2, #1
	ldr r1, _0238A17C ; =0x0238ADA0
	str r2, [r0, #8]
	ldr r2, [r1]
	mov r1, #0xc
	mul r3, r2, r1
	ldr r1, _0238A180 ; =0x0238AD28
	ldr r1, [r1, r3]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0238A17C: .word 0x0238ADA0
_0238A180: .word 0x0238AD28
	arm_func_end ov28_0238A140

	arm_func_start ov28_0238A184
ov28_0238A184: ; 0x0238A184
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0238A448
_0238A1A0: ; jump table
	b _0238A1B4 ; case 0
	b _0238A2A4 ; case 1
	b _0238A338 ; case 2
	b _0238A398 ; case 3
	b _0238A41C ; case 4
_0238A1B4:
	ldr r0, _0238A454 ; =0x0238ADA0
	ldr r1, _0238A458 ; =0x0238AD80
	ldr r2, [r0]
	mov r0, #0xc
	mul r3, r2, r0
	ldr r0, _0238A45C ; =0x0238AD24
	ldr r4, [r1]
	ldr r1, [r0, r3]
	ldrh r2, [r5, #0x18]
	add r0, r4, #0x58
	add r3, r0, #0x800
	sub r1, r2, r1
	add r0, r5, #0x1a
	add r1, r3, r1, lsl #6
	bl Strcpy
	ldr r0, [r5, #4]
	mov r2, #0
	mov r3, r0, asr #0x10
	mov r1, r3, lsr #0x1f
	rsb r0, r1, r3, lsl #24
	str r3, [r5, #8]
	add r0, r1, r0, ror #24
	add r0, r0, #0xc0
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r4, r1, r0, ror #24
	mov r0, r4, asr #2
	add r0, r4, r0, lsr #29
	mov r0, r0, asr #3
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	and r0, r0, #0xff
	mov r2, #0x20
	mov r3, #2
	bl sub_02028EE8
	add r1, r5, #0x1a
	b _0238A260
_0238A250:
	ldrb r0, [r1], #1
	cmp r0, #0x20
	movne r0, #0
	bne _0238A270
_0238A260:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0238A250
	mov r0, #1
_0238A270:
	cmp r0, #0
	bne _0238A290
	ldr r0, [r5, #0xc]
	mov r2, r4
	and r0, r0, #0xff
	add r3, r5, #0x1a
	mov r1, #0x10
	bl ov28_0238ABD4
_0238A290:
	ldrh r1, [r5, #0x18]
	mov r0, #1
	add r1, r1, #1
	strh r1, [r5, #0x18]
	str r0, [r5]
_0238A2A4:
	mvn r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	add r1, sp, #8
	mov r0, r0, asr #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	and r0, r0, #0xff
	bl sub_02028F88
	ldr r2, _0238A454 ; =0x0238ADA0
	ldr r0, _0238A460 ; =0x0238AD0C
	ldr r1, [r2]
	ldr r3, [r5, #4]
	ldr r0, [r0, r1, lsl #2]
	add r4, r3, r0
	mov r3, r4, asr #0x10
	mov r1, r3, lsr #0x1f
	rsb r0, r1, r3, lsl #28
	str r4, [r5, #4]
	adds r0, r1, r0, ror #28
	bne _0238A448
	ldr r0, [r5, #8]
	cmp r0, r3
	beq _0238A448
	ldr r1, [r2]
	mov r0, #0xc
	mul r2, r1, r0
	ldr r0, _0238A464 ; =0x0238AD2C
	ldrh r1, [r5, #0x18]
	ldr r0, [r0, r2]
	cmp r1, r0
	mov r0, #0
	strgt r0, [r5, #0x14]
	movgt r0, #3
	strgt r0, [r5]
	strle r0, [r5]
	b _0238A448
_0238A338:
	ldr r0, [r5, #4]
	mov r2, #0
	mov r3, r0, asr #0x10
	mov r1, r3, lsr #0x1f
	rsb r0, r1, r3, lsl #24
	add r0, r1, r0, ror #24
	add r0, r0, #0xc0
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r1, r1, r0, ror #24
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	str r3, [r5, #8]
	mov r0, r0, asr #3
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	and r0, r0, #0xff
	mov r2, #0x20
	mov r3, #2
	bl sub_02028EE8
	mov r0, #3
	str r0, [r5]
_0238A398:
	mvn r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	add r1, sp, #8
	mov r0, r0, asr #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	and r0, r0, #0xff
	bl sub_02028F88
	ldr r0, _0238A454 ; =0x0238ADA0
	ldr r1, _0238A460 ; =0x0238AD0C
	ldr r0, [r0]
	ldr r2, [r5, #4]
	ldr r0, [r1, r0, lsl #2]
	add r3, r2, r0
	mov r2, r3, asr #0x10
	mov r1, r2, lsr #0x1f
	rsb r0, r1, r2, lsl #28
	str r3, [r5, #4]
	adds r0, r1, r0, ror #28
	bne _0238A448
	ldr r0, [r5, #8]
	cmp r0, r2
	beq _0238A448
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	cmp r0, #0xc
	movge r0, #4
	strge r0, [r5]
	movlt r0, #2
	strlt r0, [r5]
	b _0238A448
_0238A41C:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	and r0, r0, #0xff
	mov r2, #0x20
	mov r3, #0x18
	bl sub_02028EE8
	mov r0, #0
	b _0238A44C
_0238A448:
	mov r0, #1
_0238A44C:
	add sp, sp, #0x10
	ldmdb sp!, {r3, r4, r5, pc}
	.align 2, 0
_0238A454: .word 0x0238ADA0
_0238A458: .word 0x0238AD80
_0238A45C: .word 0x0238AD24
_0238A460: .word 0x0238AD0C
_0238A464: .word 0x0238AD2C
	arm_func_end ov28_0238A184

	arm_func_start ov28_0238A468
ov28_0238A468: ; 0x0238A468
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0238A488 ; =0x0238ACFC
	bl sub_020348E4
	cmp r0, #0
	ldrne r0, _0238A48C ; =0x0238ADA0
	strne r4, [r0]
	ldmdb sp!, {r4, pc}
	.align 2, 0
_0238A488: .word 0x0238ACFC
_0238A48C: .word 0x0238ADA0
	arm_func_end ov28_0238A468

	arm_func_start ov28_0238A490
ov28_0238A490: ; 0x0238A490
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0238A578 ; =0x00003618
	mov r1, #8
	bl MemAlloc
	ldr r1, _0238A57C ; =0x0238AD80
	cmp r0, #0
	str r0, [r1]
	moveq r0, #0
	ldmeqdb sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, #0x20
	mov r1, #0
	bl ov28_0238A140
	ldr r0, _0238A57C ; =0x0238AD80
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x3c
	add r0, r0, #0x400
	bl ov28_0238A140
	ldr r0, _0238A57C ; =0x0238AD80
	mov r3, #0
	mvn r2, #1
_0238A4E4:
	ldr r1, [r0]
	add r1, r1, r3
	add r3, r3, #1
	strb r2, [r1, #9]
	cmp r3, #0x14
	blt _0238A4E4
	ldr r1, _0238A580 ; =0x0238ADA0
	mov r0, #0xc
	ldr r2, [r1]
	ldr r1, _0238A584 ; =0x0238AD24
	mul r3, r2, r0
	ldr r6, [r1, r3]
	ldr r0, _0238A588 ; =0x0238AD2C
	mov r4, r6
	ldr r5, [r0, r3]
	ldr r7, _0238A57C ; =0x0238AD80
	b _0238A54C
_0238A528:
	ldr r0, [r7]
	mov r1, r4, lsl #0x10
	add r0, r0, #0x58
	add r2, r0, #0x800
	sub r0, r4, r6
	add r0, r2, r0, lsl #6
	mov r1, r1, lsr #0x10
	bl GetStringFromFileVeneer
	add r4, r4, #1
_0238A54C:
	cmp r4, r5
	ble _0238A528
	ldr r0, _0238A57C ; =0x0238AD80
	mov r3, #5
	ldr r1, [r0]
	mov r2, #0
	str r3, [r1]
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #8]
	ldmdb sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0238A578: .word 0x00003618
_0238A57C: .word 0x0238AD80
_0238A580: .word 0x0238ADA0
_0238A584: .word 0x0238AD24
_0238A588: .word 0x0238AD2C
	arm_func_end ov28_0238A490

	arm_func_start ov28_0238A58C
ov28_0238A58C: ; 0x0238A58C
	stmdb sp!, {r3, lr}
	mov r0, #0
	bl ov28_0238AB5C
	bl sub_02025C14
	bl sub_02027170
	bl sub_02027228
	ldr r0, _0238A5C8 ; =0x0238AD80
	ldr r0, [r0]
	cmp r0, #0
	ldmeqdb sp!, {r3, pc}
	bl MemFree
	ldr r0, _0238A5C8 ; =0x0238AD80
	mov r1, #0
	str r1, [r0]
	ldmdb sp!, {r3, pc}
	.align 2, 0
_0238A5C8: .word 0x0238AD80
	arm_func_end ov28_0238A58C
_0238A5CC:
	.byte 0xF0, 0x41, 0x2D, 0xE9
	.byte 0x18, 0xD0, 0x4D, 0xE2, 0x74, 0x65, 0x9F, 0xE5, 0x00, 0x10, 0x96, 0xE5, 0x00, 0x00, 0x91, 0xE5
	.byte 0x06, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x55, 0x01, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA
	.byte 0x31, 0x00, 0x00, 0xEA, 0x33, 0x00, 0x00, 0xEA, 0x28, 0x00, 0x00, 0xEA, 0x1D, 0x00, 0x00, 0xEA
	.byte 0x2E, 0x01, 0x00, 0xEA, 0x21, 0x01, 0x00, 0xEA, 0x2E, 0x72, 0xFD, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x4B, 0x01, 0x00, 0x0A, 0x38, 0x05, 0x9F, 0xE5, 0x06, 0x10, 0xA0, 0xE1, 0x00, 0x00, 0x90, 0xE5
	.byte 0x00, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0x1A, 0x00, 0x20, 0x91, 0xE5, 0x01, 0x00, 0xA0, 0xE3
	.byte 0x58, 0x20, 0x82, 0xE2, 0x02, 0x3B, 0x82, 0xE2, 0x10, 0x10, 0xA0, 0xE3, 0x68, 0x20, 0xA0, 0xE3
	.byte 0x63, 0x01, 0x00, 0xEB, 0x06, 0x00, 0x00, 0xEA, 0x00, 0x20, 0x91, 0xE5, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x58, 0x20, 0x82, 0xE2, 0x02, 0x3B, 0x82, 0xE2, 0x10, 0x10, 0xA0, 0xE3, 0x60, 0x20, 0xA0, 0xE3
	.byte 0x5B, 0x01, 0x00, 0xEB, 0xE4, 0x04, 0x9F, 0xE5, 0x04, 0x10, 0xA0, 0xE3, 0x00, 0x00, 0x90, 0xE5
	.byte 0x00, 0x10, 0x80, 0xE5, 0x32, 0x01, 0x00, 0xEA, 0x12, 0x72, 0xFD, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x2F, 0x01, 0x00, 0x0A, 0x01, 0x00, 0xA0, 0xE3, 0xFF, 0x71, 0xFD, 0xEB, 0x06, 0x00, 0xA0, 0xE1
	.byte 0x00, 0x00, 0x90, 0xE5, 0x03, 0x10, 0xA0, 0xE3, 0x00, 0x10, 0x80, 0xE5, 0x28, 0x01, 0x00, 0xEA
	.byte 0x08, 0x72, 0xFD, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x06, 0x00, 0xA0, 0x11, 0x00, 0x00, 0x90, 0x15
	.byte 0x01, 0x10, 0xA0, 0x13, 0x00, 0x10, 0x80, 0x15, 0x21, 0x01, 0x00, 0xEA, 0x02, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x81, 0xE5, 0x1E, 0x01, 0x00, 0xEA, 0x00, 0x40, 0xA0, 0xE3, 0x01, 0x70, 0xE0, 0xE3
	.byte 0x00, 0x00, 0x96, 0xE5, 0x04, 0x00, 0x80, 0xE0, 0xD9, 0x80, 0xD0, 0xE1, 0x07, 0x00, 0x58, 0xE1
	.byte 0x0C, 0x00, 0x00, 0x0A, 0x08, 0x00, 0xA0, 0xE1, 0x19, 0x77, 0xF2, 0xEB, 0x02, 0x00, 0x50, 0xE3
	.byte 0x08, 0x00, 0x00, 0x1A, 0x08, 0x00, 0xA0, 0xE1, 0x28, 0x7A, 0xF2, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x04, 0x00, 0x00, 0x1A, 0x08, 0x00, 0xA0, 0xE1, 0xC7, 0x76, 0xF2, 0xEB, 0x00, 0x00, 0x96, 0xE5
	.byte 0x04, 0x00, 0x80, 0xE0, 0x09, 0x70, 0xC0, 0xE5, 0x01, 0x40, 0x84, 0xE2, 0x14, 0x00, 0x54, 0xE3
	.byte 0xEA, 0xFF, 0xFF, 0xBA, 0x28, 0x04, 0x9F, 0xE5, 0x00, 0x20, 0x90, 0xE5, 0x00, 0x00, 0x52, 0xE3
	.byte 0x47, 0x00, 0x00, 0x1A, 0x14, 0x04, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x20, 0x00, 0x80, 0xE2
	.byte 0x8F, 0xFE, 0xFF, 0xEB, 0x04, 0x14, 0x9F, 0xE5, 0x00, 0x50, 0xA0, 0xE1, 0x00, 0x10, 0x91, 0xE5
	.byte 0x24, 0x00, 0x91, 0xE5, 0x40, 0x08, 0xA0, 0xE1, 0xC0, 0x00, 0x50, 0xE3, 0x04, 0x00, 0x00, 0xBA
	.byte 0x3C, 0x00, 0x81, 0xE2, 0x01, 0x0B, 0x80, 0xE2, 0x85, 0xFE, 0xFF, 0xEB, 0x00, 0x50, 0x85, 0xE1
	.byte 0xB4, 0x00, 0x00, 0xEA, 0x3C, 0x40, 0x81, 0xE2, 0x10, 0x04, 0x94, 0xE5, 0x00, 0x00, 0x50, 0xE3
	.byte 0x02, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x50, 0xE3, 0x21, 0x00, 0x00, 0x0A, 0xAD, 0x00, 0x00, 0xEA
	.byte 0x03, 0x00, 0xE0, 0xE3, 0x10, 0x00, 0x8D, 0xE5, 0x04, 0x04, 0x94, 0xE5, 0x10, 0x10, 0x8D, 0xE2
	.byte 0x40, 0x08, 0xA0, 0xE1, 0x14, 0x00, 0x8D, 0xE5, 0x0C, 0x04, 0x94, 0xE5, 0xFF, 0x00, 0x00, 0xE2
	.byte 0xF4, 0x79, 0xF2, 0xEB, 0x98, 0x03, 0x9F, 0xE5, 0x98, 0x13, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0x04, 0x24, 0x94, 0xE5, 0x00, 0x01, 0x91, 0xE7, 0x00, 0x00, 0x82, 0xE0, 0x04, 0x04, 0x84, 0xE5
	.byte 0x14, 0x00, 0x9D, 0xE5, 0x88, 0x00, 0x50, 0xE3, 0x9A, 0x00, 0x00, 0xDA, 0x0C, 0x04, 0x94, 0xE5
	.byte 0x20, 0x20, 0xA0, 0xE3, 0x10, 0x10, 0x8D, 0xE2, 0x02, 0x30, 0xA0, 0xE1, 0xFF, 0x00, 0x00, 0xE2
	.byte 0xBC, 0x79, 0xF2, 0xEB, 0x0C, 0x04, 0x94, 0xE5, 0x01, 0x10, 0xA0, 0xE3, 0xFF, 0x00, 0x00, 0xE2
	.byte 0x95, 0x76, 0xF2, 0xEB, 0x10, 0x04, 0x94, 0xE5, 0x01, 0x00, 0x80, 0xE2, 0x10, 0x04, 0x84, 0xE5
	.byte 0x8C, 0x00, 0x00, 0xEA, 0x0C, 0x14, 0x94, 0xE5, 0x01, 0x0B, 0x84, 0xE2, 0xFF, 0x10, 0x01, 0xE2
	.byte 0x46, 0xFE, 0xFF, 0xEB, 0x03, 0x10, 0xE0, 0xE3, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x10, 0x8D, 0xE5
	.byte 0x14, 0x00, 0x8D, 0xE5, 0x0C, 0x04, 0x94, 0xE5, 0x10, 0x10, 0x8D, 0xE2, 0xFF, 0x00, 0x00, 0xE2
	.byte 0xD0, 0x79, 0xF2, 0xEB, 0x10, 0x04, 0x94, 0xE5, 0x01, 0x00, 0x80, 0xE2, 0x10, 0x04, 0x84, 0xE5
	.byte 0x7C, 0x00, 0x00, 0xEA, 0xF4, 0x02, 0x9F, 0xE5, 0x00, 0x40, 0x90, 0xE5, 0x24, 0x00, 0x94, 0xE5
	.byte 0x40, 0x08, 0xA0, 0xE1, 0x08, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0xBA, 0x20, 0x00, 0x84, 0xE2
	.byte 0x43, 0xFE, 0xFF, 0xEB, 0x00, 0x50, 0xA0, 0xE1, 0x29, 0x00, 0x00, 0xEA, 0x30, 0x00, 0x94, 0xE5
	.byte 0x00, 0x00, 0x50, 0xE3, 0x06, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x50, 0xE3, 0xC4, 0x02, 0x9F, 0x05
	.byte 0x24, 0x10, 0x94, 0x05, 0x02, 0x01, 0x90, 0x07, 0x00, 0x00, 0x81, 0x00, 0x24, 0x00, 0x84, 0x05
	.byte 0x1F, 0x00, 0x00, 0xEA, 0x03, 0x00, 0xE0, 0xE3, 0x08, 0x00, 0x8D, 0xE5, 0x24, 0x00, 0x94, 0xE5
	.byte 0x08, 0x10, 0x8D, 0xE2, 0x40, 0x08, 0xA0, 0xE1, 0x0C, 0x00, 0x8D, 0xE5, 0x2C, 0x00, 0x94, 0xE5
	.byte 0xFF, 0x00, 0x00, 0xE2, 0xAF, 0x79, 0xF2, 0xEB, 0x84, 0x02, 0x9F, 0xE5, 0x84, 0x12, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x24, 0x20, 0x94, 0xE5, 0x00, 0x01, 0x91, 0xE7, 0x00, 0x00, 0x82, 0xE0
	.byte 0x24, 0x00, 0x84, 0xE5, 0x0C, 0x00, 0x9D, 0xE5, 0x88, 0x00, 0x50, 0xE3, 0x0C, 0x00, 0x00, 0xDA
	.byte 0x2C, 0x00, 0x94, 0xE5, 0x20, 0x20, 0xA0, 0xE3, 0x08, 0x10, 0x8D, 0xE2, 0x02, 0x30, 0xA0, 0xE1
	.byte 0xFF, 0x00, 0x00, 0xE2, 0x77, 0x79, 0xF2, 0xEB, 0x2C, 0x00, 0x94, 0xE5, 0x01, 0x10, 0xA0, 0xE3
	.byte 0xFF, 0x00, 0x00, 0xE2, 0x50, 0x76, 0xF2, 0xEB, 0x30, 0x00, 0x94, 0xE5, 0x01, 0x00, 0x80, 0xE2
	.byte 0x30, 0x00, 0x84, 0xE5, 0x24, 0x02, 0x9F, 0xE5, 0x00, 0x40, 0x90, 0xE5, 0x24, 0x00, 0x94, 0xE5
	.byte 0x40, 0x08, 0xA0, 0xE1, 0x60, 0x00, 0x50, 0xE3, 0x42, 0x00, 0x00, 0xBA, 0x40, 0x04, 0x94, 0xE5
	.byte 0x40, 0x08, 0xA0, 0xE1, 0x68, 0x00, 0x50, 0xE3, 0x04, 0x00, 0x00, 0xBA, 0x3C, 0x00, 0x84, 0xE2
	.byte 0x01, 0x0B, 0x80, 0xE2, 0x0A, 0xFE, 0xFF, 0xEB, 0x00, 0x50, 0x85, 0xE1, 0x39, 0x00, 0x00, 0xEA
	.byte 0x4C, 0x04, 0x94, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x04, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x50, 0xE3
	.byte 0x0C, 0x00, 0x00, 0x0A, 0x02, 0x00, 0x50, 0xE3, 0x2B, 0x00, 0x00, 0x0A, 0x31, 0x00, 0x00, 0xEA
	.byte 0x58, 0x00, 0x84, 0xE2, 0x10, 0x10, 0xA0, 0xE3, 0x50, 0x20, 0x41, 0xE2, 0x02, 0x3B, 0x80, 0xE2
	.byte 0x01, 0x00, 0xA0, 0xE3, 0x8E, 0x00, 0x00, 0xEB, 0x4C, 0x04, 0x94, 0xE5, 0x01, 0x00, 0x80, 0xE2
	.byte 0x4C, 0x04, 0x84, 0xE5, 0x27, 0x00, 0x00, 0xEA, 0x03, 0x00, 0xE0, 0xE3, 0x00, 0x00, 0x8D, 0xE5
	.byte 0x40, 0x04, 0x94, 0xE5, 0x00, 0x10, 0x8D, 0xE2, 0x40, 0x08, 0xA0, 0xE1, 0x04, 0x00, 0x8D, 0xE5
	.byte 0x48, 0x04, 0x94, 0xE5, 0xFF, 0x00, 0x00, 0xE2, 0x6E, 0x79, 0xF2, 0xEB, 0x80, 0x01, 0x9F, 0xE5
	.byte 0x80, 0x11, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x40, 0x24, 0x94, 0xE5, 0x00, 0x01, 0x91, 0xE7
	.byte 0x00, 0x00, 0x82, 0xE0, 0x40, 0x04, 0x84, 0xE5, 0x04, 0x00, 0x9D, 0xE5, 0xD0, 0x00, 0x50, 0xE3
	.byte 0x14, 0x00, 0x00, 0xDA, 0x48, 0x04, 0x94, 0xE5, 0x20, 0x20, 0xA0, 0xE3, 0x00, 0x10, 0x8D, 0xE2
	.byte 0x02, 0x30, 0xA0, 0xE1, 0xFF, 0x00, 0x00, 0xE2, 0x36, 0x79, 0xF2, 0xEB, 0x48, 0x04, 0x94, 0xE5
	.byte 0x01, 0x10, 0xA0, 0xE3, 0xFF, 0x00, 0x00, 0xE2, 0x0F, 0x76, 0xF2, 0xEB, 0x4C, 0x04, 0x94, 0xE5
	.byte 0x01, 0x00, 0x80, 0xE2, 0x4C, 0x04, 0x84, 0xE5, 0x06, 0x00, 0x00, 0xEA, 0x20, 0x01, 0x9F, 0xE5
	.byte 0x20, 0x11, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x40, 0x24, 0x94, 0xE5, 0x00, 0x01, 0x91, 0xE7
	.byte 0x00, 0x00, 0x82, 0xE0, 0x40, 0x04, 0x84, 0xE5, 0x00, 0x01, 0x9F, 0xE5, 0x00, 0x20, 0x90, 0xE5
	.byte 0x08, 0x00, 0xD2, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x06, 0x00, 0x00, 0x1A, 0x20, 0x00, 0x92, 0xE5
	.byte 0x03, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0xBA, 0x01, 0x10, 0xA0, 0xE3, 0x02, 0x00, 0xA0, 0xE3
	.byte 0x08, 0x10, 0xC2, 0xE5, 0x04, 0x71, 0xFD, 0xEB, 0x00, 0x00, 0x55, 0xE3, 0xCC, 0x00, 0x9F, 0x05
	.byte 0x06, 0x10, 0xA0, 0x03, 0x00, 0x00, 0x90, 0x05, 0x00, 0x10, 0x80, 0x05, 0x2C, 0x00, 0x00, 0xEA
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x01, 0x10, 0xA0, 0xE3, 0xEF, 0x75, 0xF2, 0xEB, 0x01, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x10, 0xA0, 0xE1, 0xEC, 0x75, 0xF2, 0xEB, 0x00, 0x00, 0xA0, 0xE3, 0x33, 0x6C, 0xF2, 0xEB
	.byte 0x00, 0x00, 0xA0, 0xE3, 0xF4, 0x70, 0xFD, 0xEB, 0x04, 0x00, 0xA0, 0xE3, 0x21, 0x00, 0x00, 0xEA
	.byte 0x03, 0x00, 0xE0, 0xE3, 0x24, 0x00, 0x00, 0xEB, 0x00, 0x00, 0xA0, 0xE3, 0xEE, 0x70, 0xFD, 0xEB
	.byte 0x7C, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x05, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90
	.byte 0x11, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00, 0xEA
	.byte 0x07, 0x00, 0x00, 0xEA, 0x08, 0x00, 0x00, 0xEA, 0x09, 0x00, 0x00, 0xEA, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x0A, 0x00, 0x00, 0xEA, 0x01, 0x00, 0xA0, 0xE3, 0x08, 0x00, 0x00, 0xEA, 0x02, 0x00, 0xA0, 0xE3
	.byte 0x06, 0x00, 0x00, 0xEA, 0x03, 0x00, 0xA0, 0xE3, 0x04, 0x00, 0x00, 0xEA, 0x04, 0x00, 0xA0, 0xE3
	.byte 0x02, 0x00, 0x00, 0xEA, 0x05, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x00, 0xEA, 0x00, 0x00, 0xE0, 0xE3
	.byte 0x16, 0x6C, 0xF2, 0xEB, 0x14, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE3, 0x00, 0x00, 0x90, 0xE5
	.byte 0x00, 0x10, 0x80, 0xE5, 0x01, 0x00, 0xA0, 0xE3, 0x18, 0xD0, 0x8D, 0xE2, 0xF0, 0x81, 0xBD, 0xE8
	.byte 0x80, 0xAD, 0x38, 0x02, 0xA0, 0xAD, 0x38, 0x02, 0x0C, 0xAD, 0x38, 0x02

	arm_func_start ov28_0238AB5C
ov28_0238AB5C: ; 0x0238AB5C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #0x20
	mov r4, r0
	mov r0, #0
	add r1, sp, #0
	mov r3, r2
	str r0, [sp]
	str r0, [sp, #4]
	bl sub_02028EE8
	mov r2, #0x20
	add r1, sp, #0
	mov r3, r2
	mov r0, #1
	bl sub_02028EE8
	add r1, sp, #0
	mov r0, #0
	str r4, [sp]
	bl sub_02028F88
	add r1, sp, #0
	mov r0, #1
	bl sub_02028F88
	mov r0, #0
	mov r1, #1
	bl sub_0202825C
	mov r0, #1
	mov r1, r0
	bl sub_0202825C
	add sp, sp, #8
	ldmdb sp!, {r4, pc}
	arm_func_end ov28_0238AB5C

	arm_func_start ov28_0238ABD4
ov28_0238ABD4: ; 0x0238ABD4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r1, r5, asr #2
	mov r7, #0
	mov r6, r0
	add r1, r5, r1, lsr #29
	mov r1, r1, asr #3
	mov r4, r2, asr #2
	add r4, r2, r4, lsr #29
	mov lr, r4, asr #3
	mov r8, r2, lsr #0x1f
	sub r0, r7, #5
	rsb r2, r8, r2, lsl #29
	and ip, r1, #0xff
	strb r0, [sp, #9]
	rsb ip, ip, #0x1d
	str r7, [sp]
	str r7, [sp, #0xc]
	adds r8, r8, r2, ror #29
	ldr r0, _0238ACF8 ; =0x0238AD80
	movne r7, #1
	strb r1, [sp, #4]
	add r1, r7, #2
	ldr r2, [r0]
	mov r4, r3
	strb r6, [sp, #8]
	strb lr, [sp, #5]
	strb ip, [sp, #6]
	strb r1, [sp, #7]
	mov r7, #0
	mvn r0, #1
	b _0238AC6C
_0238AC58:
	add r1, r2, r7
	ldrsb r1, [r1, #9]
	cmp r1, r0
	beq _0238AC74
	add r7, r7, #1
_0238AC6C:
	cmp r7, #0x14
	blt _0238AC58
_0238AC74:
	mov r0, r6
	bl sub_02028270
	ldrb r2, [sp, #6]
	ldrb r1, [sp, #7]
	mla r0, r2, r1, r0
	cmp r0, #0x300
	blt _0238AC9C
	mov r0, r6
	mov r1, #1
	bl sub_0202825C
_0238AC9C:
	add r0, sp, #0
	mov r1, #3
	bl sub_020276C0
	ldr r1, _0238ACF8 ; =0x0238AD80
	ldr r2, [r1]
	add r2, r2, r7
	strb r0, [r2, #9]
	ldr r0, [r1]
	add r0, r0, r7
	ldrsb r0, [r0, #9]
	bl sub_0202810C
	ldr r0, _0238ACF8 ; =0x0238AD80
	mov r6, r5, lsr #0x1f
	ldr r0, [r0]
	rsb r1, r6, r5, lsl #29
	add r0, r0, r7
	ldrsb r0, [r0, #9]
	mov r2, r8
	mov r3, r4
	add r1, r6, r1, ror #29
	bl sub_02026214
	add sp, sp, #0x10
	ldmdb sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0238ACF8: .word 0x0238AD80
	arm_func_end ov28_0238ABD4
	; 0x0238ACFC
