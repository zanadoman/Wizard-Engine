	.file	"SEKeys.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine4keysC2ERS0_
	.type	_ZN4slay6engine4keysC2ERS0_, @function
_ZN4slay6engine4keysC2ERS0_:
.LFB2232:
	.cfi_startproc
	movq	%rsi, (%rdi)
	movq	$0, 8(%rdi)
	ret
	.cfi_endproc
.LFE2232:
	.size	_ZN4slay6engine4keysC2ERS0_, .-_ZN4slay6engine4keysC2ERS0_
	.globl	_ZN4slay6engine4keysC1ERS0_
	.set	_ZN4slay6engine4keysC1ERS0_,_ZN4slay6engine4keysC2ERS0_
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"slay::engine.keys[]: Key does not exist\nParams: Key: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine4keysixENS_3keyE
	.type	_ZN4slay6engine4keysixENS_3keyE, @function
_ZN4slay6engine4keysixENS_3keyE:
.LFB2234:
	.cfi_startproc
	cmpl	$295, %esi
	jg	.L8
	movslq	%esi, %rsi
	cmpb	$0, 16(%rdi,%rsi)
	setne	%al
	ret
.L8:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2234:
	.size	_ZN4slay6engine4keysixENS_3keyE, .-_ZN4slay6engine4keysixENS_3keyE
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine4keys6UpdateEv
	.type	_ZN4slay6engine4keys6UpdateEv, @function
_ZN4slay6engine4keys6UpdateEv:
.LFB2235:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	16(%rdi), %rsi
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movl	$296, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	SDL_GetMouseState@PLT
	movq	(%rbx), %rsi
	movl	%eax, %edx
	andl	$1, %edx
	movb	%dl, 307(%rbx)
	movl	%eax, %edx
	shrl	$2, %eax
	shrl	%edx
	andl	$1, %eax
	andl	$1, %edx
	movb	%al, 309(%rbx)
	movb	%dl, 308(%rbx)
	movq	672(%rsi), %rdi
	testq	%rdi, %rdi
	je	.L18
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L11:
	addq	$1, %rdx
	addq	$56, %rax
	cmpq	%rdi, %rdx
	jnb	.L18
.L10:
	movq	680(%rsi), %rcx
	addq	%rax, %rcx
	cmpl	$1027, (%rcx)
	jne	.L11
	movl	20(%rcx), %r8d
	testl	%r8d, %r8d
	jns	.L12
	movzwl	.LC1(%rip), %edi
	addq	$1, %rdx
	addq	$56, %rax
	movw	%di, 310(%rbx)
	movq	672(%rsi), %rdi
	cmpq	%rdi, %rdx
	jb	.L10
.L18:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	je	.L13
	movl	$256, %edi
	movw	%di, 310(%rbx)
	movq	672(%rsi), %rdi
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L13:
	xorl	%ecx, %ecx
	movw	%cx, 310(%rbx)
	movq	672(%rsi), %rdi
	jmp	.L11
	.cfi_endproc
.LFE2235:
	.size	_ZN4slay6engine4keys6UpdateEv, .-_ZN4slay6engine4keys6UpdateEv
	.section	.rodata.cst2,"aM",@progbits,2
	.align 2
.LC1:
	.byte	1
	.byte	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
