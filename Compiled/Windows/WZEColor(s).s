	.file	"WZEColor(s).cpp"
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB11:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "neo::array.Remove(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC1:
	.ascii "neo::array.Remove(): Length out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC2:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0:
.LFB8627:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rsi
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%r8, %rbx
	cmpq	%rdx, %rsi
	jnb	.L26
	leaq	(%rsi,%r8), %rax
	cmpq	%rax, %rdx
	jb	.L27
	testq	%r8, %r8
	je	.L3
	movq	%rdx, %r8
	subq	%rbx, %r8
	movq	%r8, (%rcx)
	movq	8(%rcx), %rcx
	je	.L7
	cmpq	%r8, %rsi
	jnb	.L14
	movq	%r8, %r10
	subq	%rsi, %r10
	leaq	-1(%r10), %r9
	cmpq	$2, %r9
	jbe	.L11
	leaq	0(,%rsi,8), %r9
	leaq	8(,%rax,8), %r11
	cmpq	%r9, %r11
	jne	.L28
.L11:
	movq	%rbx, %r9
	leaq	(%rcx,%rax,8), %rax
	leaq	(%rcx,%rdx,8), %r10
	negq	%r9
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L16:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%r9)
	cmpq	%rax, %r10
	jne	.L16
	.p2align 4,,10
	.p2align 3
.L14:
	leaq	0(,%r8,8), %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L29
.L3:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	leaq	(%rcx,%r9), %rdx
	movq	%r10, %r9
	leaq	-8(%rcx,%r11), %r11
	xorl	%eax, %eax
	shrq	%r9
	salq	$4, %r9
	.p2align 4,,10
	.p2align 3
.L12:
	movdqu	(%r11,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%r9, %rax
	jne	.L12
	movq	%r10, %rax
	andq	$-2, %rax
	addq	%rsi, %rax
	andl	$1, %r10d
	je	.L14
	leaq	(%rbx,%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L7:
	call	free
	movq	$0, 8(%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L26:
	leaq	.LC0(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L27:
	leaq	.LC1(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L29:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "neo::array(): Memory allocation failed\12Params: Elements(size, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_
_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_:
.LFB8433:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%r8, 8(%rcx)
	movq	$1, 16(%rcx)
	movl	$8, %ecx
	movq	$0, 40(%rsp)
	call	malloc
	movq	%rax, 24(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L32
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	call	_ZN3neo9memCopyToEPKvPvy
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
.L32:
	leaq	.LC3(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_,_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colorsD2Ev
	.def	_ZN3wze6engine6actors5actor6colorsD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colorsD2Ev
_ZN3wze6engine6actors5actor6colorsD2Ev:
.LFB8436:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	16(%rcx), %rdx
	movq	24(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$1, %rdx
	jbe	.L34
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L37:
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L35
	movl	$64, %edx
	addq	$1, %rbx
	call	_ZdlPvy
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rax
	cmpq	%rdx, %rbx
	jb	.L37
.L34:
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.p2align 4,,10
	.p2align 3
.L35:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L37
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor6colorsD1Ev
	.def	_ZN3wze6engine6actors5actor6colorsD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor6colorsD1Ev,_ZN3wze6engine6actors5actor6colorsD2Ev
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC6:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.actors[].colors.New(): Memory allocation failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors3NewEv
	.def	_ZN3wze6engine6actors5actor6colors3NewEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors3NewEv
_ZN3wze6engine6actors5actor6colors3NewEv:
.LFB8438:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$1, %rax
	jbe	.L39
	movq	24(%rcx), %rdx
	movl	$1, %ebx
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L40:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L39
.L43:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L40
	movl	$64, %ecx
	call	_Znwy
	movq	8(%rsi), %rdx
	movdqu	(%rsi), %xmm3
	movl	$-32767, %r8d
	pxor	%xmm0, %xmm0
	movl	$-1, 20(%rax)
	movl	200(%rdx), %ecx
	movupd	168(%rdx), %xmm4
	movw	%r8w, 24(%rax)
	movb	$1, 26(%rax)
	movq	24(%rsi), %rdx
	movl	%ecx, 16(%rax)
	movups	%xmm3, (%rax)
	movups	%xmm4, 32(%rax)
	movups	%xmm0, 48(%rax)
	cmpq	16(%rsi), %rbx
	jnb	.L49
	movq	%rax, (%rdx,%rbx,8)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	movl	$64, %ecx
	call	_Znwy
	movq	8(%rsi), %rdx
	movdqu	(%rsi), %xmm1
	pxor	%xmm0, %xmm0
	movl	$-1, 20(%rax)
	movl	200(%rdx), %ecx
	movupd	168(%rdx), %xmm2
	movb	$1, 26(%rax)
	movq	%rax, 40(%rsp)
	movl	%ecx, 16(%rax)
	movl	$-32767, %ecx
	movw	%cx, 24(%rax)
	movq	24(%rsi), %rcx
	movups	%xmm1, (%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	16(%rsi), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L50
	movq	16(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L51
	cmpq	$0, (%rdx,%rax,8)
	je	.L52
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L49:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L52:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L51:
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L50:
	leaq	.LC6(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "wze::engine.actors[].colors.Delete(): Illegal deletion of NULL Color\12Params: ID: %lld\12\0"
	.align 8
.LC10:
	.ascii "wze::engine.actors[].colors.Delete(): Color does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors6DeleteEy
	.def	_ZN3wze6engine6actors5actor6colors6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors6DeleteEy
_ZN3wze6engine6actors5actor6colors6DeleteEy:
.LFB8439:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L64
	cmpq	16(%rcx), %rdx
	jnb	.L55
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L55
	movl	$64, %edx
	call	_ZdlPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L65
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L66
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L62:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L67
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L68
	cmpq	$1, %rdx
	jne	.L62
.L61:
	leaq	16(%rsi), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L61
.L55:
	leaq	.LC10(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L67:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L64:
	leaq	.LC9(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L65:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "wze::engine.actors[].colors.Purge(): Color does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE:
.LFB8440:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rbx
	movq	(%rdx), %rdi
	movq	%rcx, %rbp
	movq	16(%rcx), %rcx
	testq	%rbx, %rbx
	je	.L70
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L73:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L71
	cmpq	%rcx, %rdx
	jnb	.L72
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	je	.L72
.L71:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L73
.L70:
	cmpq	$1, %rcx
	jbe	.L74
	movq	24(%rbp), %rdx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L75:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L77
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L106:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L78
.L77:
	cmpq	%rsi, (%rdi,%rax,8)
	jne	.L106
	cmpq	%rax, %rbx
	je	.L78
.L79:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.L75
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L107
.L105:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	movq	(%rdx,%rsi,8), %rax
	leaq	0(,%rsi,8), %r12
	testq	%rax, %rax
	je	.L80
	movl	$64, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %rdx
.L80:
	cmpq	%rcx, %rsi
	jnb	.L108
	movq	$0, (%rdx,%r12)
	jmp	.L79
.L107:
	movq	%rcx, %r9
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L88:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L109
	cmpq	$0, (%rdx,%rax,8)
	jne	.L110
	movq	%rax, %r9
.L83:
	cmpq	$1, %r9
	jne	.L88
.L87:
	leaq	16(%rbp), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L74:
	testq	%rcx, %rcx
	jne	.L105
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L110:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L87
.L72:
	leaq	.LC11(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L109:
	leaq	.LC5(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L108:
	leaq	.LC5(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].colors.Purge(): Color does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE:
.LFB8443:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	16(%rcx), %r9
	movq	%rdx, %rsi
	movq	(%rdx), %rdx
	movq	%rcx, %rdi
	testq	%rdx, %rdx
	je	.L112
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L113:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L112
.L115:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L113
	cmpq	%r9, %rcx
	jnb	.L114
	movq	24(%rdi), %r10
	cmpq	$0, (%r10,%rcx,8)
	jne	.L113
.L114:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L112:
	cmpq	$1, %r9
	jbe	.L116
	movq	24(%rdi), %r10
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L120
	.p2align 4,,10
	.p2align 3
.L125:
	movq	8(%rsi), %rcx
	xorl	%eax, %eax
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L147:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L120
.L119:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L147
	cmpq	%rax, %rdx
	je	.L120
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L124
.L149:
	movq	(%rsi), %rdx
	testq	%rdx, %rdx
	jne	.L125
	.p2align 4,,10
	.p2align 3
.L120:
	movq	(%r10,%rbx,8), %rcx
	leaq	0(,%rbx,8), %rbp
	testq	%rcx, %rcx
	je	.L122
	movl	$64, %edx
	call	_ZdlPvy
	movq	16(%rdi), %r9
	movq	24(%rdi), %r10
.L122:
	cmpq	%r9, %rbx
	jnb	.L148
	addq	$1, %rbx
	movq	$0, (%r10,%rbp)
	cmpq	%r9, %rbx
	jb	.L149
.L124:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L150
.L146:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L150:
	movq	%r9, %rax
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L131:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L151
	cmpq	$0, (%r10,%rdx,8)
	jne	.L152
	movq	%rdx, %rax
.L126:
	cmpq	$1, %rax
	jne	.L131
.L130:
	movq	%rax, %rdx
	leaq	16(%rdi), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L116:
	testq	%r9, %r9
	jne	.L146
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L152:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L130
.L151:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L148:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].colors[]: Illegal access to NULL Color\12Params: ID: %lld\12\0"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].colors[]: Color does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colorsixEy
	.def	_ZN3wze6engine6actors5actor6colorsixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colorsixEy
_ZN3wze6engine6actors5actor6colorsixEy:
.LFB8444:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L157
	cmpq	16(%rcx), %rdx
	jnb	.L155
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L155
	addq	$40, %rsp
	ret
.L155:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L157:
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_:
.LFB8446:
	.seh_endprologue
	movupd	168(%r8), %xmm0
	movl	200(%r8), %eax
	movups	%xmm0, 32(%rcx)
	pxor	%xmm0, %xmm0
	movl	%eax, 16(%rcx)
	movl	$-32767, %eax
	movq	%rdx, (%rcx)
	movq	%r8, 8(%rcx)
	movl	$-1, 20(%rcx)
	movw	%ax, 24(%rcx)
	movb	$1, 26(%rcx)
	movups	%xmm0, 48(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor6colors5colorC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor6colors5colorC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor6colors5colorC1EPS0_PS2_,_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4GetXEv
	.def	_ZN3wze6engine6actors5actor6colors5color4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5color4GetXEv
_ZN3wze6engine6actors5actor6colors5color4GetXEv:
.LFB8448:
	.seh_endprologue
	movsd	32(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "engine.actors[].colors[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4SetXEd
	.def	_ZN3wze6engine6actors5actor6colors5color4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5color4SetXEd
_ZN3wze6engine6actors5actor6colors5color4SetXEd:
.LFB8449:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L181
	movq	8(%rcx), %rax
	movsd	168(%rax), %xmm1
	ucomisd	%xmm6, %xmm1
	jp	.L174
	jne	.L174
	movq	$0x000000000, 48(%rcx)
.L167:
	pxor	%xmm0, %xmm0
.L171:
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 32(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L174:
	movsd	176(%rax), %xmm2
	movsd	40(%rbx), %xmm0
	ucomisd	%xmm0, %xmm2
	jp	.L175
	jne	.L175
	movq	$0x000000000, 48(%rbx)
.L172:
	movsd	176(%rax), %xmm2
	ucomisd	%xmm0, %xmm2
	jp	.L169
	je	.L167
.L169:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L175:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	168(%rax), %xmm1
	movsd	%xmm0, 48(%rbx)
	ucomisd	%xmm1, %xmm6
	jp	.L180
	je	.L167
.L180:
	movsd	40(%rbx), %xmm0
	jmp	.L172
.L181:
	leaq	.LC16(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4GetYEv
	.def	_ZN3wze6engine6actors5actor6colors5color4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5color4GetYEv
_ZN3wze6engine6actors5actor6colors5color4GetYEv:
.LFB8450:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "engine.actors[].colors[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4SetYEd
	.def	_ZN3wze6engine6actors5actor6colors5color4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5color4SetYEd
_ZN3wze6engine6actors5actor6colors5color4SetYEd:
.LFB8451:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L201
	movq	8(%rcx), %rax
	movsd	32(%rcx), %xmm3
	movsd	168(%rax), %xmm1
	ucomisd	%xmm3, %xmm1
	jp	.L197
	jne	.L197
	movq	$0x000000000, 48(%rcx)
.L190:
	pxor	%xmm0, %xmm0
.L194:
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L197:
	movsd	176(%rax), %xmm2
	ucomisd	%xmm6, %xmm2
	jp	.L198
	jne	.L198
	movq	$0x000000000, 48(%rbx)
.L195:
	movsd	176(%rax), %xmm2
	ucomisd	%xmm6, %xmm2
	jp	.L192
	je	.L190
.L192:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L198:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	32(%rbx), %xmm3
	movsd	168(%rax), %xmm1
	movsd	%xmm0, 48(%rbx)
	ucomisd	%xmm3, %xmm1
	jp	.L195
	jne	.L195
	jmp	.L190
.L201:
	leaq	.LC17(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
