	.file	"SEActors.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine6actorsC2ERS0_
	.type	_ZN4slay6engine6actorsC2ERS0_, @function
_ZN4slay6engine6actorsC2ERS0_:
.LFB2197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rsi, (%rcx)
	movq	-24(%rbp), %rcx
	addq	$8, %rcx
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rsi
	movq	%rsi, %rax
	movl	$1, %edx
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEC1ESt16initializer_listIS5_E
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L2
	call	__stack_chk_fail@PLT
.L2:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine6actorsC2ERS0_, .-_ZN4slay6engine6actorsC2ERS0_
	.globl	_ZN4slay6engine6actorsC1ERS0_
	.set	_ZN4slay6engine6actorsC1ERS0_,_ZN4slay6engine6actorsC2ERS0_
	.align 2
	.globl	_ZN4slay6engine6actorsD2Ev
	.type	_ZN4slay6engine6actorsD2Ev, @function
_ZN4slay6engine6actorsD2Ev:
.LFB2200:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2200
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	$1, -24(%rbp)
	jmp	.L4
.L6:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L5
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actorD1Ev@PLT
	movl	$160, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L5:
	addq	$1, -24(%rbp)
.L4:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L6
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEED1Ev
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2200:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2200-.LLSDACSB2200
.LLSDACSB2200:
.LLSDACSE2200:
	.text
	.size	_ZN4slay6engine6actorsD2Ev, .-_ZN4slay6engine6actorsD2Ev
	.globl	_ZN4slay6engine6actorsD1Ev
	.set	_ZN4slay6engine6actorsD1Ev,_ZN4slay6engine6actorsD2Ev
	.section	.rodata
	.align 8
.LC0:
	.string	"slay::engine.actors.New(): Memory allocation failed\nParams: Type: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors3NewEy
	.type	_ZN4slay6engine6actors3NewEy, @function
_ZN4slay6engine6actors3NewEy:
.LFB2202:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2202
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	$1, -56(%rbp)
	jmp	.L8
.L12:
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB0:
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L9
	movl	$160, %edi
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %rbx
	movl	$1, %r13d
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB1:
	call	_ZN4slay6engine6actors5actorC1ERS0_y@PLT
	movl	$0, %r13d
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
.LEHE1:
	movq	%rbx, (%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L10
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB2:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L10:
	movq	-56(%rbp), %rax
	jmp	.L11
.L9:
	addq	$1, -56(%rbp)
.L8:
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -56(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L12
	movl	$160, %edi
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rbx
	movl	$1, %r14d
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB3:
	call	_ZN4slay6engine6actors5actorC1ERS0_y@PLT
	movl	$0, %r14d
	movq	%rbx, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%r12, %r8
	movq	%r13, %r9
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%r8, %rcx
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEpLESt16initializer_listIS5_E
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
.LEHE3:
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L13
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB4:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L13:
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	subq	$1, %rax
.L11:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	jmp	.L23
.L21:
	movq	%rax, %r12
	testb	%r13b, %r13b
	je	.L15
	movl	$160, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L15:
	movq	%r12, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L22:
	movq	%rax, %r12
	testb	%r14b, %r14b
	je	.L18
	movl	$160, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L18:
	movq	%r12, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE4:
.L23:
	call	__stack_chk_fail@PLT
.L20:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.section	.gcc_except_table
.LLSDA2202:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2202-.LLSDACSB2202
.LLSDACSB2202:
	.uleb128 .LEHB0-.LFB2202
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2202
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L21-.LFB2202
	.uleb128 0
	.uleb128 .LEHB2-.LFB2202
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2202
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L22-.LFB2202
	.uleb128 0
	.uleb128 .LEHB4-.LFB2202
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2202:
	.text
	.size	_ZN4slay6engine6actors3NewEy, .-_ZN4slay6engine6actors3NewEy
	.section	.rodata
	.align 8
.LC1:
	.string	"slay::engine.actors.Delete(): Illegal deletion of NULL Actor\nParams: ID: %lld\n"
	.align 8
.LC2:
	.string	"slay::engine.actors.Delete(): Actor does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors6DeleteEy
	.type	_ZN4slay6engine6actors6DeleteEy, @function
_ZN4slay6engine6actors6DeleteEy:
.LFB2203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L25
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L25:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L26
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L27
.L26:
	movl	$1, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	testb	%al, %al
	je	.L29
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L29:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L30
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actorD1Ev@PLT
	movl	$160, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L30:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L31
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	$1, %rax
	jbe	.L31
	movl	$1, %eax
	jmp	.L32
.L31:
	movl	$0, %eax
.L32:
	testb	%al, %al
	je	.L33
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	movq	%rax, -24(%rbp)
	jmp	.L34
.L37:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L39
	subq	$1, -24(%rbp)
.L34:
	cmpq	$1, -24(%rbp)
	ja	.L37
	jmp	.L36
.L39:
	nop
.L36:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy
.L33:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN4slay6engine6actors6DeleteEy, .-_ZN4slay6engine6actors6DeleteEy
	.section	.text._ZNKSt16initializer_listIyE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIyE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIyE4sizeEv
	.type	_ZNKSt16initializer_listIyE4sizeEv, @function
_ZNKSt16initializer_listIyE4sizeEv:
.LFB2205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2205:
	.size	_ZNKSt16initializer_listIyE4sizeEv, .-_ZNKSt16initializer_listIyE4sizeEv
	.section	.rodata
	.align 8
.LC3:
	.string	"slay::engine.actors.Purge(): Actor does not exists\nParams: Keep(length) %ld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5PurgeESt16initializer_listIyE
	.type	_ZN4slay6engine6actors5PurgeESt16initializer_listIyE, @function
_ZN4slay6engine6actors5PurgeESt16initializer_listIyE:
.LFB2204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L43
.L49:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L66
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rbx, %rax
	jnb	.L46
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L47
.L46:
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	testb	%al, %al
	je	.L45
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L66:
	nop
.L45:
	addq	$1, -32(%rbp)
.L43:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L49
	movq	$1, -32(%rbp)
	jmp	.L50
.L57:
	movq	$0, -24(%rbp)
	jmp	.L51
.L54:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L67
	addq	$1, -24(%rbp)
.L51:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L54
	jmp	.L53
.L67:
	nop
.L53:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	sete	%al
	testb	%al, %al
	je	.L55
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L56
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actorD1Ev@PLT
	movl	$160, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L56:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	$0, (%rax)
.L55:
	addq	$1, -32(%rbp)
.L50:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L57
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	$1, %rax
	jbe	.L58
	movl	$1, %eax
	jmp	.L59
.L58:
	movl	$0, %eax
.L59:
	testb	%al, %al
	je	.L60
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	movq	%rax, -32(%rbp)
	jmp	.L61
.L64:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L68
	subq	$1, -32(%rbp)
.L61:
	cmpq	$1, -32(%rbp)
	ja	.L64
	jmp	.L63
.L68:
	nop
.L63:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy
.L60:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN4slay6engine6actors5PurgeESt16initializer_listIyE, .-_ZN4slay6engine6actors5PurgeESt16initializer_listIyE
	.section	.rodata
	.align 8
.LC4:
	.string	"slay::engine.actors[]: Illegal access to NULL Actor"
	.align 8
.LC5:
	.string	"slay::engine.actors[]: Actor does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actorsixEy
	.type	_ZN4slay6engine6actorsixEy, @function
_ZN4slay6engine6actorsixEy:
.LFB2206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L70
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L70:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -16(%rbp)
	jnb	.L71
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L72
.L71:
	movl	$1, %eax
	jmp	.L73
.L72:
	movl	$0, %eax
.L73:
	testb	%al, %al
	je	.L74
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L74:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN4slay6engine6actorsixEy, .-_ZN4slay6engine6actorsixEy
	.section	.text._ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv
	.type	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv, @function
_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv:
.LFB2272:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2272:
	.size	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv, .-_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv
	.section	.rodata
	.align 8
.LC6:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEC2ESt16initializer_listIS5_E,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEC5ESt16initializer_listIS5_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEC2ESt16initializer_listIS5_E
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEC2ESt16initializer_listIS5_E, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEC2ESt16initializer_listIS5_E:
.LFB2273:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L79
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L82
.L79:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L81
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L81:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %r12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L82:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2273:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEC2ESt16initializer_listIS5_E, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEC2ESt16initializer_listIS5_E
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEC1ESt16initializer_listIS5_E
	.set	_ZN3neo5arrayIPN4slay6engine6actors5actorEEC1ESt16initializer_listIS5_E,_ZN3neo5arrayIPN4slay6engine6actors5actorEEC2ESt16initializer_listIS5_E
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEED2Ev,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEED2Ev
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEED2Ev, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEED2Ev:
.LFB2276:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L84
.L85:
	addq	$1, -8(%rbp)
.L84:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L85
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2276:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEED2Ev, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEED2Ev
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEED1Ev
	.set	_ZN3neo5arrayIPN4slay6engine6actors5actorEED1Ev,_ZN3neo5arrayIPN4slay6engine6actors5actorEED2Ev
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv:
.LFB2278:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2278:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.section	.rodata
	.align 8
.LC7:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy:
.LFB2279:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L89
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L89:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2279:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.section	.rodata
	.align 8
.LC8:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEpLESt16initializer_listIS5_E,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEpLESt16initializer_listIS5_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEpLESt16initializer_listIS5_E
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEpLESt16initializer_listIS5_E, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEpLESt16initializer_listIS5_E:
.LFB2280:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L92
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L93
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L93:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv
	leaq	0(,%rax,8), %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %r13
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE4sizeEv
	movq	%r13, %rdx
	subq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	addq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L92:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2280:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEpLESt16initializer_listIS5_E, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEpLESt16initializer_listIS5_E
	.section	.rodata
	.align 8
.LC9:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC10:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC11:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy:
.LFB2281:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L96
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L96:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L97
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L97:
	cmpq	$0, -40(%rbp)
	je	.L98
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L99
.L100:
	addq	$1, -16(%rbp)
.L99:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L100
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L101
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L98
.L101:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L102
.L103:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addq	$1, -8(%rbp)
.L102:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L103
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L98
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L98:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2281:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy
	.section	.text._ZNKSt16initializer_listIyE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIyE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIyE5beginEv
	.type	_ZNKSt16initializer_listIyE5beginEv, @function
_ZNKSt16initializer_listIyE5beginEv:
.LFB2282:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2282:
	.size	_ZNKSt16initializer_listIyE5beginEv, .-_ZNKSt16initializer_listIyE5beginEv
	.section	.text._ZNKSt16initializer_listIPN4slay6engine6actors5actorEE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE5beginEv
	.type	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE5beginEv, @function
_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE5beginEv:
.LFB2333:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2333:
	.size	_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE5beginEv, .-_ZNKSt16initializer_listIPN4slay6engine6actors5actorEE5beginEv
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
