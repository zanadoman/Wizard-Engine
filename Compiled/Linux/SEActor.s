	.file	"SEActor.cpp"
	.text
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actorC2EPS0_yddttd
	.type	_ZN4slay6engine6actors5actorC2EPS0_yddttd, @function
_ZN4slay6engine6actors5actorC2EPS0_yddttd:
.LFB2232:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2232
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	8(%rdi), %rax
	movapd	%xmm0, %xmm4
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	unpcklpd	%xmm1, %xmm4
	movq	%rdx, %r14
	movq	%rdi, %rdx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%ecx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rsi, (%rdi)
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm4, (%rsp)
.LEHB0:
	call	_ZN4slay6engine6actors5actor6colorsC1EPS0_PS2_@PLT
.LEHE0:
	leaq	40(%rbx), %rax
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
.LEHB1:
	call	_ZN4slay6engine6actors5actor8texturesC1EPS0_PS2_@PLT
.LEHE1:
	leaq	72(%rbx), %rax
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
.LEHB2:
	call	_ZN4slay6engine6actors5actor9flipbooksC1EPS0_PS2_@PLT
.LEHE2:
	leaq	104(%rbx), %r15
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
.LEHB3:
	call	_ZN4slay6engine6actors5actor5textsC1EPS0_PS2_@PLT
.LEHE3:
	movw	%bp, 168(%rbx)
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movapd	(%rsp), %xmm4
	movw	%r12w, 170(%rbx)
	movsd	16(%rsp), %xmm5
	pxor	%xmm1, %xmm1
	movw	%bp, 200(%rbx)
	movzwl	%bp, %ebp
	movq	(%rbx), %rax
	movapd	%xmm1, %xmm0
	movw	%r12w, 202(%rbx)
	movzwl	%r12w, %r12d
	cvtsi2sdl	%ebp, %xmm2
	cvtsi2sdl	%r12d, %xmm3
	movb	$0, 136(%rbx)
	leaq	552(%rax), %rdi
	movq	%r14, 144(%rbx)
	movq	$0x000000000, 176(%rbx)
	movq	$0x000000000, 192(%rbx)
	movups	%xmm4, 152(%rbx)
	movsd	%xmm5, 184(%rbx)
.LEHB4:
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	mulsd	.LC1(%rip), %xmm0
	movzwl	170(%rbx), %edx
	movzwl	168(%rbx), %eax
	leaq	552(%rcx), %rdi
	cvtsi2sdl	%edx, %xmm3
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm0, 208(%rbx)
	movapd	%xmm1, %xmm0
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movzwl	170(%rbx), %eax
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm2, %xmm2
	movzwl	168(%rbx), %edx
	movsd	%xmm0, 216(%rbx)
	pxor	%xmm0, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	leaq	552(%rcx), %rdi
	cvtsi2sdl	%edx, %xmm0
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
.LEHE4:
	movsd	%xmm0, 224(%rbx)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	movq	%rax, %rbx
	jmp	.L5
.L9:
	movq	%rax, %rbx
	jmp	.L2
.L8:
	movq	%rax, %rbx
	jmp	.L3
.L7:
	movq	%rax, %rbx
	jmp	.L4
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2232-.LLSDACSB2232
.LLSDACSB2232:
	.uleb128 .LEHB0-.LFB2232
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2232
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L6-.LFB2232
	.uleb128 0
	.uleb128 .LEHB2-.LFB2232
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L7-.LFB2232
	.uleb128 0
	.uleb128 .LEHB3-.LFB2232
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L8-.LFB2232
	.uleb128 0
	.uleb128 .LEHB4-.LFB2232
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L9-.LFB2232
	.uleb128 0
.LLSDACSE2232:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2232
	.type	_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold, @function
_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold:
.LFSB2232:
.L2:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r15, %rdi
	call	_ZN4slay6engine6actors5actor5textsD1Ev@PLT
.L3:
	movq	40(%rsp), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksD1Ev@PLT
.L4:
	movq	32(%rsp), %rdi
	call	_ZN4slay6engine6actors5actor8texturesD1Ev@PLT
.L5:
	movq	24(%rsp), %rdi
	call	_ZN4slay6engine6actors5actor6colorsD1Ev@PLT
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE2232:
	.section	.gcc_except_table
.LLSDAC2232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2232-.LLSDACSBC2232
.LLSDACSBC2232:
	.uleb128 .LEHB5-.LCOLDB2
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC2232:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actorC2EPS0_yddttd, .-_ZN4slay6engine6actors5actorC2EPS0_yddttd
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold, .-_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold
.LCOLDE2:
	.text
.LHOTE2:
	.globl	_ZN4slay6engine6actors5actorC1EPS0_yddttd
	.set	_ZN4slay6engine6actors5actorC1EPS0_yddttd,_ZN4slay6engine6actors5actorC2EPS0_yddttd
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actorD2Ev
	.type	_ZN4slay6engine6actors5actorD2Ev, @function
_ZN4slay6engine6actors5actorD2Ev:
.LFB2235:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2235
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	104(%rax), %rsi
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rsi
	jnb	.L19
	movq	%rdi, %rbx
	cmpq	%rdi, (%rcx,%rsi,8)
	je	.L20
.L15:
	movq	112(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L19
	cmpq	%rbx, (%rcx,%rsi,8)
	je	.L21
.L17:
	leaq	104(%rbx), %rdi
	call	_ZN4slay6engine6actors5actor5textsD1Ev@PLT
	leaq	72(%rbx), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksD1Ev@PLT
	leaq	40(%rbx), %rdi
	call	_ZN4slay6engine6actors5actor8texturesD1Ev@PLT
	leaq	8(%rbx), %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN4slay6engine6actors5actor6colorsD1Ev@PLT
	.p2align 4,,10
	.p2align 3
.L20:
	.cfi_restore_state
	movq	$0, 104(%rax)
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L21:
	movq	$0, 112(%rax)
	jmp	.L17
.L19:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2235:
	.section	.gcc_except_table
.LLSDA2235:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2235-.LLSDACSB2235
.LLSDACSB2235:
.LLSDACSE2235:
	.text
	.size	_ZN4slay6engine6actors5actorD2Ev, .-_ZN4slay6engine6actors5actorD2Ev
	.globl	_ZN4slay6engine6actors5actorD1Ev
	.set	_ZN4slay6engine6actors5actorD1Ev,_ZN4slay6engine6actors5actorD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor7GetTypeEv
	.type	_ZN4slay6engine6actors5actor7GetTypeEv, @function
_ZN4slay6engine6actors5actor7GetTypeEv:
.LFB2237:
	.cfi_startproc
	movq	144(%rdi), %rax
	ret
	.cfi_endproc
.LFE2237:
	.size	_ZN4slay6engine6actors5actor7GetTypeEv, .-_ZN4slay6engine6actors5actor7GetTypeEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4GetXEv
	.type	_ZN4slay6engine6actors5actor4GetXEv, @function
_ZN4slay6engine6actors5actor4GetXEv:
.LFB2238:
	.cfi_startproc
	movsd	152(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2238:
	.size	_ZN4slay6engine6actors5actor4GetXEv, .-_ZN4slay6engine6actors5actor4GetXEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4GetYEv
	.type	_ZN4slay6engine6actors5actor4GetYEv, @function
_ZN4slay6engine6actors5actor4GetYEv:
.LFB2240:
	.cfi_startproc
	movsd	160(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2240:
	.size	_ZN4slay6engine6actors5actor4GetYEv, .-_ZN4slay6engine6actors5actor4GetYEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetWidthEv
	.type	_ZN4slay6engine6actors5actor8GetWidthEv, @function
_ZN4slay6engine6actors5actor8GetWidthEv:
.LFB2242:
	.cfi_startproc
	movzwl	168(%rdi), %eax
	ret
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6actors5actor8GetWidthEv, .-_ZN4slay6engine6actors5actor8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetWidthEt
	.type	_ZN4slay6engine6actors5actor8SetWidthEt, @function
_ZN4slay6engine6actors5actor8SetWidthEt:
.LFB2243:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movzwl	%si, %eax
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	cvtsi2sdl	%eax, %xmm2
	pxor	%xmm1, %xmm1
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movapd	%xmm1, %xmm0
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	movq	%xmm2, %r14
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movzwl	170(%rdi), %eax
	movq	(%rdi), %rdx
	cvtsi2sdl	%eax, %xmm3
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	movzwl	170(%rbx), %eax
	mulsd	.LC1(%rip), %xmm0
	movq	%r14, %xmm2
	leaq	552(%rcx), %rdi
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm0, 208(%rbx)
	movapd	%xmm1, %xmm0
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rdx
	pxor	%xmm2, %xmm2
	movzwl	170(%rbx), %eax
	movsd	%xmm0, 216(%rbx)
	movapd	%xmm2, %xmm1
	movq	%r14, %xmm0
	leaq	552(%rdx), %rdi
	cvtsi2sdl	%eax, %xmm3
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movw	%bp, 168(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 224(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6actors5actor8SetWidthEt, .-_ZN4slay6engine6actors5actor8SetWidthEt
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9GetHeightEv
	.type	_ZN4slay6engine6actors5actor9GetHeightEv, @function
_ZN4slay6engine6actors5actor9GetHeightEv:
.LFB2244:
	.cfi_startproc
	movzwl	170(%rdi), %eax
	ret
	.cfi_endproc
.LFE2244:
	.size	_ZN4slay6engine6actors5actor9GetHeightEv, .-_ZN4slay6engine6actors5actor9GetHeightEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9SetHeightEt
	.type	_ZN4slay6engine6actors5actor9SetHeightEt, @function
_ZN4slay6engine6actors5actor9SetHeightEt:
.LFB2245:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movzwl	%si, %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	cvtsi2sdl	%eax, %xmm3
	pxor	%xmm1, %xmm1
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movapd	%xmm1, %xmm0
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movzwl	168(%rdi), %eax
	movq	(%rdi), %rdx
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	pxor	%xmm2, %xmm2
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	movzwl	168(%rbx), %eax
	mulsd	.LC1(%rip), %xmm0
	movsd	8(%rsp), %xmm3
	leaq	552(%rcx), %rdi
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm0, 208(%rbx)
	movapd	%xmm1, %xmm0
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movzwl	168(%rbx), %eax
	movsd	8(%rsp), %xmm3
	pxor	%xmm2, %xmm2
	movsd	%xmm0, 216(%rbx)
	pxor	%xmm0, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm0
	movq	(%rbx), %rax
	leaq	552(%rax), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movw	%bp, 170(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 224(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2245:
	.size	_ZN4slay6engine6actors5actor9SetHeightEt, .-_ZN4slay6engine6actors5actor9SetHeightEt
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetAngleEv
	.type	_ZN4slay6engine6actors5actor8GetAngleEv, @function
_ZN4slay6engine6actors5actor8GetAngleEv:
.LFB2246:
	.cfi_startproc
	movsd	176(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2246:
	.size	_ZN4slay6engine6actors5actor8GetAngleEv, .-_ZN4slay6engine6actors5actor8GetAngleEv
	.p2align 4
	.globl	_ZN4slay3minEii
	.type	_ZN4slay3minEii, @function
_ZN4slay3minEii:
.LFB2247:
	.cfi_startproc
	cmpl	%esi, %edi
	movl	%esi, %eax
	cmovle	%edi, %eax
	ret
	.cfi_endproc
.LFE2247:
	.size	_ZN4slay3minEii, .-_ZN4slay3minEii
	.p2align 4
	.globl	_ZN4slay3maxEii
	.type	_ZN4slay3maxEii, @function
_ZN4slay3maxEii:
.LFB2248:
	.cfi_startproc
	cmpl	%edi, %esi
	movl	%edi, %eax
	cmovge	%esi, %eax
	ret
	.cfi_endproc
.LFE2248:
	.size	_ZN4slay3maxEii, .-_ZN4slay3maxEii
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetLayerEv
	.type	_ZN4slay6engine6actors5actor8GetLayerEv, @function
_ZN4slay6engine6actors5actor8GetLayerEv:
.LFB2250:
	.cfi_startproc
	movsd	184(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2250:
	.size	_ZN4slay6engine6actors5actor8GetLayerEv, .-_ZN4slay6engine6actors5actor8GetLayerEv
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"slay::engine.actors[].SetLayer(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetLayerEd
	.type	_ZN4slay6engine6actors5actor8SetLayerEd, @function
_ZN4slay6engine6actors5actor8SetLayerEd:
.LFB2251:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	comisd	%xmm0, %xmm1
	ja	.L49
	ucomisd	%xmm1, %xmm0
	jp	.L40
	je	.L50
.L40:
	movsd	%xmm0, 184(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	.cfi_restore_state
	movq	$0x000000000, 192(%rdi)
	movq	(%rdi), %rax
	movq	104(%rax), %rsi
	movq	536(%rax), %rcx
	movq	544(%rax), %rdx
	cmpq	%rcx, %rsi
	jnb	.L48
	cmpq	%rdi, (%rdx,%rsi,8)
	je	.L51
.L42:
	movq	112(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L48
	cmpq	%rdi, (%rdx,%rsi,8)
	jne	.L40
	movq	$0, 112(%rax)
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L51:
	movq	$0, 104(%rax)
	jmp	.L42
.L49:
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L48:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2251:
	.size	_ZN4slay6engine6actors5actor8SetLayerEd, .-_ZN4slay6engine6actors5actor8SetLayerEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetDepthEv
	.type	_ZN4slay6engine6actors5actor8GetDepthEv, @function
_ZN4slay6engine6actors5actor8GetDepthEv:
.LFB2252:
	.cfi_startproc
	movsd	192(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2252:
	.size	_ZN4slay6engine6actors5actor8GetDepthEv, .-_ZN4slay6engine6actors5actor8GetDepthEv
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"slay::engine.actors[].SetDepth(): Illegal to set Depth when Layer is 0\nParams: Depth: %lf\n"
	.align 8
.LC6:
	.string	"slay::engine::actors[].SetDepth(): Depth must not be less than 0\nParams: Depth: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetDepthEd
	.type	_ZN4slay6engine6actors5actor8SetDepthEd, @function
_ZN4slay6engine6actors5actor8SetDepthEd:
.LFB2253:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	pxor	%xmm1, %xmm1
	ucomisd	184(%rdi), %xmm1
	jp	.L54
	je	.L62
.L54:
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L63
	movsd	%xmm0, 192(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L62:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L63:
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2253:
	.size	_ZN4slay6engine6actors5actor8SetDepthEd, .-_ZN4slay6engine6actors5actor8SetDepthEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor14GetHitboxWidthEv
	.type	_ZN4slay6engine6actors5actor14GetHitboxWidthEv, @function
_ZN4slay6engine6actors5actor14GetHitboxWidthEv:
.LFB2254:
	.cfi_startproc
	movzwl	200(%rdi), %eax
	ret
	.cfi_endproc
.LFE2254:
	.size	_ZN4slay6engine6actors5actor14GetHitboxWidthEv, .-_ZN4slay6engine6actors5actor14GetHitboxWidthEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor15GetHitboxHeightEv
	.type	_ZN4slay6engine6actors5actor15GetHitboxHeightEv, @function
_ZN4slay6engine6actors5actor15GetHitboxHeightEv:
.LFB2255:
	.cfi_startproc
	movzwl	202(%rdi), %eax
	ret
	.cfi_endproc
.LFE2255:
	.size	_ZN4slay6engine6actors5actor15GetHitboxHeightEv, .-_ZN4slay6engine6actors5actor15GetHitboxHeightEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	.type	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv, @function
_ZN4slay6engine6actors5actor21UpdateMembersPositionEv:
.LFB2256:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	24(%rdi), %rdx
	movq	%rdi, %rbx
	cmpq	$1, %rdx
	jbe	.L74
	movq	32(%rdi), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L73:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L70
	movq	(%rbx), %rsi
	movsd	56(%rax), %xmm2
	movsd	48(%rax), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	32(%rbx), %rax
	cmpq	24(%rbx), %rbp
	jnb	.L110
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 32(%rax)
	movsd	56(%rax), %xmm2
	movsd	160(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	movsd	48(%rax), %xmm1
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L110
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 40(%rax)
.L70:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L73
.L74:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L69
	movq	64(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L80:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L77
	movq	(%rbx), %rsi
	movsd	64(%rax), %xmm2
	movsd	56(%rax), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	64(%rbx), %rax
	cmpq	56(%rbx), %rbp
	jnb	.L110
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	64(%rax), %xmm2
	movsd	160(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	movsd	56(%rax), %xmm1
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L110
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L77:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L80
.L69:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L76
	movq	96(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L86:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L83
	movq	(%rbx), %rsi
	movsd	64(%rax), %xmm2
	movsd	56(%rax), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	96(%rbx), %rax
	cmpq	88(%rbx), %rbp
	jnb	.L110
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	64(%rax), %xmm2
	movsd	160(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	movsd	56(%rax), %xmm1
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L110
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L83:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L86
.L76:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L107
	movq	128(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L90:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L87
	movq	(%rbx), %rsi
	movsd	72(%rax), %xmm2
	movsd	64(%rax), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	128(%rbx), %rax
	cmpq	120(%rbx), %rbp
	jnb	.L110
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	72(%rax), %xmm2
	movsd	160(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	movsd	64(%rax), %xmm1
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L110
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L87:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L90
.L107:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L110:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2256:
	.size	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv, .-_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4SetXEd
	.type	_ZN4slay6engine6actors5actor4SetXEd, @function
_ZN4slay6engine6actors5actor4SetXEd:
.LFB2239:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movsd	%xmm0, 152(%rdi)
	call	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	movsd	152(%rbx), %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2239:
	.size	_ZN4slay6engine6actors5actor4SetXEd, .-_ZN4slay6engine6actors5actor4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4SetYEd
	.type	_ZN4slay6engine6actors5actor4SetYEd, @function
_ZN4slay6engine6actors5actor4SetYEd:
.LFB2241:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movsd	%xmm0, 160(%rdi)
	call	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	movsd	160(%rbx), %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2241:
	.size	_ZN4slay6engine6actors5actor4SetYEd, .-_ZN4slay6engine6actors5actor4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetAngleEd
	.type	_ZN4slay6engine6actors5actor8SetAngleEd, @function
_ZN4slay6engine6actors5actor8SetAngleEd:
.LFB2249:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movsd	216(%rdi), %xmm3
	movq	(%rdi), %rax
	movsd	%xmm0, 24(%rsp)
	movsd	176(%rdi), %xmm0
	movsd	224(%rdi), %xmm4
	movsd	208(%rbx), %xmm1
	leaq	552(%rax), %rdi
	addsd	%xmm0, %xmm3
	addsd	%xmm0, %xmm4
	movsd	.LC7(%rip), %xmm0
	movapd	%xmm3, %xmm5
	movapd	%xmm3, %xmm2
	movsd	%xmm4, 8(%rsp)
	addsd	%xmm0, %xmm5
	addsd	%xmm4, %xmm0
	movsd	%xmm3, 40(%rsp)
	movsd	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	movq	%xmm5, %r13
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movsd	208(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r12d
	pxor	%xmm0, %xmm0
	leaq	552(%rax), %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movq	%r13, %xmm2
	movsd	208(%rbx), %xmm1
	cvttsd2sil	%xmm0, %esi
	pxor	%xmm0, %xmm0
	leaq	552(%rax), %rdi
	movl	%esi, 36(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	16(%rsp), %xmm2
	cvttsd2sil	%xmm0, %ecx
	movsd	208(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	leaq	552(%rax), %rdi
	movl	%ecx, 32(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	40(%rsp), %xmm3
	movq	(%rbx), %rax
	movsd	208(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r15d
	pxor	%xmm0, %xmm0
	movapd	%xmm3, %xmm2
	leaq	552(%rax), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movsd	208(%rbx), %xmm1
	cvttsd2sil	%xmm0, %ebp
	pxor	%xmm0, %xmm0
	leaq	552(%rax), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movq	%r13, %xmm2
	movsd	208(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r14d
	pxor	%xmm0, %xmm0
	leaq	552(%rax), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	16(%rsp), %xmm2
	movsd	208(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
	leaq	552(%rax), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movl	36(%rsp), %esi
	movl	32(%rsp), %ecx
	cvttsd2sil	%xmm0, %edx
	movsd	24(%rsp), %xmm0
	subsd	176(%rbx), %xmm0
	cmpl	%esi, %r12d
	movl	%esi, %eax
	cmovge	%r12d, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	%r15d, %eax
	cmovl	%r15d, %eax
	cmpl	%esi, %r12d
	cmovg	%esi, %r12d
	cmpl	%ecx, %r12d
	cmovg	%ecx, %r12d
	cmpl	%r15d, %r12d
	cmovg	%r15d, %r12d
	subl	%r12d, %eax
	cmpl	%r14d, %ebp
	movw	%ax, 200(%rbx)
	movl	%r14d, %eax
	cmovge	%ebp, %eax
	cmpl	%r13d, %eax
	cmovl	%r13d, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	%r14d, %ebp
	cmovg	%r14d, %ebp
	cmpl	%r13d, %ebp
	cmovg	%r13d, %ebp
	cmpl	%edx, %ebp
	cmovg	%edx, %ebp
	movq	24(%rbx), %rdx
	subl	%ebp, %eax
	movw	%ax, 202(%rbx)
	cmpq	$1, %rdx
	jbe	.L116
	movq	32(%rbx), %rcx
	leaq	8(%rcx), %rax
	leaq	(%rcx,%rdx,8), %rcx
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L117:
	addq	$8, %rax
	cmpq	%rcx, %rax
	je	.L116
.L118:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L117
	cmpb	$0, 24(%rdx)
	je	.L117
	movsd	56(%rdx), %xmm1
	addq	$8, %rax
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rdx)
	cmpq	%rcx, %rax
	jne	.L118
.L116:
	movq	56(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L119
	movq	64(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L122:
	cmpb	$0, 35(%rax)
	jne	.L145
.L121:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	je	.L119
.L124:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L121
	cmpb	$0, 34(%rax)
	je	.L122
	movsd	24(%rax), %xmm1
	cmpb	$0, 35(%rax)
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
	je	.L121
.L145:
	movsd	64(%rax), %xmm1
	addq	$8, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rax)
	cmpq	%rcx, %rdx
	jne	.L124
.L119:
	movq	88(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L125
	movq	96(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L128:
	cmpb	$0, 35(%rax)
	jne	.L146
.L127:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L125
.L130:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L127
	cmpb	$0, 34(%rax)
	je	.L128
	movsd	24(%rax), %xmm1
	cmpb	$0, 35(%rax)
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
	je	.L127
.L146:
	movsd	64(%rax), %xmm1
	addq	$8, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rax)
	cmpq	%rdx, %rcx
	jne	.L130
.L125:
	movq	120(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L131
	movq	128(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L134:
	cmpb	$0, 35(%rax)
	jne	.L147
.L133:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L131
.L136:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L133
	cmpb	$0, 34(%rax)
	je	.L134
	movsd	24(%rax), %xmm1
	cmpb	$0, 35(%rax)
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
	je	.L133
.L147:
	movsd	72(%rax), %xmm1
	addq	$8, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rax)
	cmpq	%rdx, %rcx
	jne	.L136
.L131:
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	movsd	24(%rsp), %xmm6
	movsd	%xmm6, 176(%rbx)
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	movapd	%xmm6, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6actors5actor8SetAngleEd, .-_ZN4slay6engine6actors5actor8SetAngleEd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	0
	.long	1080459264
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
