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
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0:
.LFB6937:
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
	.globl	_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_
_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_:
.LFB6896:
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
	call	_ZN3neo6memory6CopyToEPKvPvy
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
	.globl	_ZN3wze6engine6actors5actor10colorboxesC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor10colorboxesC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor10colorboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxesD2Ev
	.def	_ZN3wze6engine6actors5actor10colorboxesD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxesD2Ev
_ZN3wze6engine6actors5actor10colorboxesD2Ev:
.LFB6899:
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
	movl	$72, %edx
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
	.globl	_ZN3wze6engine6actors5actor10colorboxesD1Ev
	.def	_ZN3wze6engine6actors5actor10colorboxesD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor10colorboxesD1Ev,_ZN3wze6engine6actors5actor10colorboxesD2Ev
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC6:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.actors[].colorboxes.New(): Memory allocation failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes3NewEv
	.def	_ZN3wze6engine6actors5actor10colorboxes3NewEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes3NewEv
_ZN3wze6engine6actors5actor10colorboxes3NewEv:
.LFB6901:
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
	movl	$72, %ecx
	call	_Znwy
	movq	8(%rsi), %rdx
	movdqu	(%rsi), %xmm3
	movl	$-32767, %r9d
	pxor	%xmm0, %xmm0
	movl	$-1, 20(%rax)
	movl	256(%rdx), %ecx
	movupd	224(%rdx), %xmm4
	movw	%r9w, 24(%rax)
	movb	$1, 26(%rax)
	movq	24(%rsi), %rdx
	movl	%ecx, 16(%rax)
	movq	%rbx, 32(%rax)
	movups	%xmm3, (%rax)
	movups	%xmm4, 40(%rax)
	movups	%xmm0, 56(%rax)
	cmpq	16(%rsi), %rbx
	jnb	.L49
	movq	%rax, (%rdx,%rbx,8)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	movl	$72, %ecx
	call	_Znwy
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdx
	pxor	%xmm0, %xmm0
	movdqu	(%rsi), %xmm1
	movl	$-1, 20(%rax)
	movl	256(%rcx), %r8d
	movupd	224(%rcx), %xmm2
	movq	%rdx, 32(%rax)
	addq	$1, %rdx
	movq	%rdx, 16(%rsi)
	movq	24(%rsi), %rcx
	salq	$3, %rdx
	movl	%r8d, 16(%rax)
	movl	$-32767, %r8d
	movw	%r8w, 24(%rax)
	movb	$1, 26(%rax)
	movups	%xmm1, (%rax)
	movups	%xmm2, 40(%rax)
	movups	%xmm0, 56(%rax)
	movq	%rax, 40(%rsp)
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L50
	movq	16(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L51
	movq	(%rdx,%rcx,8), %rax
	testq	%rax, %rax
	je	.L52
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
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes6DeleteEy
	.def	_ZN3wze6engine6actors5actor10colorboxes6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes6DeleteEy
_ZN3wze6engine6actors5actor10colorboxes6DeleteEy:
.LFB6902:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	cmpq	16(%rcx), %rdx
	jb	.L72
.L55:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L55
	movl	$72, %edx
	call	_ZdlPvy
	movq	16(%rbx), %rax
	movq	24(%rbx), %rcx
	cmpq	%rax, %rsi
	jnb	.L73
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L55
	cmpq	$1, %rax
	je	.L55
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L61:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L74
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L75
	cmpq	$1, %rdx
	jne	.L61
.L60:
	leaq	16(%rbx), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L75:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L60
.L74:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L73:
	leaq	.LC5(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor10colorboxes5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor10colorboxes5PurgeESt16initializer_listIyE:
.LFB6903:
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
	movq	(%rdx), %rdi
	movq	8(%rdx), %rsi
	movq	16(%rcx), %rdx
	movq	%rcx, %rbp
	cmpq	$1, %rdx
	jbe	.L77
	movq	24(%rcx), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L84:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L79
.L78:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L80
	addq	$1, %rax
	cmpq	%rsi, %rax
	jne	.L78
.L79:
	movq	(%rcx,%rbx,8), %rax
	leaq	0(,%rbx,8), %r12
	testq	%rax, %rax
	je	.L82
	movl	$72, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rcx
.L82:
	cmpq	%rdx, %rbx
	jnb	.L102
	movq	$0, (%rcx,%r12)
.L80:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L84
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L103
.L101:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L103:
	movq	%rdx, %r9
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L90:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L104
	cmpq	$0, (%rcx,%rax,8)
	jne	.L105
	movq	%rax, %r9
.L85:
	cmpq	$1, %r9
	jne	.L90
.L89:
	leaq	16(%rbp), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L77:
	testq	%rdx, %rdx
	jne	.L101
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L105:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L89
.L104:
	leaq	.LC5(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L102:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "wze::engine.actors[].colorboxes.Purge(): KeepColorboxIDs must not be NULL\12Params: KeepColorboxIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor10colorboxes5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor10colorboxes5PurgeEPN3neo5arrayIyEE:
.LFB6904:
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
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L107
	movq	16(%rcx), %rcx
	cmpq	$1, %rcx
	jbe	.L136
	movq	24(%rdi), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L116:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L110
.L111:
	cmpq	(%r8,%rax,8), %rbx
	je	.L112
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L111
	.p2align 4,,10
	.p2align 3
.L110:
	movq	(%r9,%rbx,8), %rax
	leaq	0(,%rbx,8), %rbp
	testq	%rax, %rax
	je	.L114
	movq	%rax, %rcx
	movl	$72, %edx
	call	_ZdlPvy
	movq	16(%rdi), %rcx
	movq	24(%rdi), %r9
.L114:
	cmpq	%rcx, %rbx
	jnb	.L137
	movq	$0, (%r9,%rbp)
.L112:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L116
	cmpq	$0, -8(%r9,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L138
.L135:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L138:
	movq	%rcx, %rax
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L122:
	leaq	-1(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L139
	cmpq	$0, (%r9,%rdx,8)
	jne	.L140
	movq	%rdx, %rax
.L117:
	cmpq	$1, %rax
	jne	.L122
.L121:
	movq	%rax, %rdx
	leaq	16(%rdi), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L136:
	testq	%rcx, %rcx
	jne	.L135
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L140:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L121
.L139:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L107:
	leaq	.LC9(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L137:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.actors[].colorboxes[]: Illegal access to NULL Colorbox\12Params: ColorboxID: %lld\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.actors[].colorboxes[]: Colorbox does not exist\12Params: ColorboxID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxesixEy
	.def	_ZN3wze6engine6actors5actor10colorboxesixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxesixEy
_ZN3wze6engine6actors5actor10colorboxesixEy:
.LFB6905:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L145
	cmpq	16(%rcx), %rdx
	jnb	.L143
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L143
	addq	$40, %rsp
	ret
.L143:
	leaq	.LC11(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L145:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y
_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y:
.LFB6907:
	.seh_endprologue
	movupd	224(%r8), %xmm0
	movl	256(%r8), %eax
	movups	%xmm0, 40(%rcx)
	pxor	%xmm0, %xmm0
	movl	%eax, 16(%rcx)
	movl	$-32767, %eax
	movq	%rdx, (%rcx)
	movq	%r8, 8(%rcx)
	movl	$-1, 20(%rcx)
	movw	%ax, 24(%rcx)
	movb	$1, 26(%rcx)
	movq	%r9, 32(%rcx)
	movups	%xmm0, 56(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorboxC1EPS0_PS2_y
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorboxC1EPS0_PS2_y;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor10colorboxes8colorboxC1EPS0_PS2_y,_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev
_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev:
.LFB6910:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorboxD1Ev
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorboxD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor10colorboxes8colorboxD1Ev,_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox5GetIDEv
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox5GetIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorbox5GetIDEv
_ZN3wze6engine6actors5actor10colorboxes8colorbox5GetIDEv:
.LFB6912:
	.seh_endprologue
	movq	32(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetXEv
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetXEv
_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetXEv:
.LFB6913:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].colorboxes[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetXEd
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetXEd
_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetXEd:
.LFB6914:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L167
	movq	8(%rcx), %rax
	movsd	48(%rcx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm6, %xmm0
	jp	.L153
	jne	.L153
	ucomisd	%xmm3, %xmm1
	jp	.L153
	jne	.L153
	movq	$0x000000000, 56(%rcx)
.L161:
	pxor	%xmm0, %xmm0
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L153:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm3
	movapd	%xmm0, %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm2, 56(%rbx)
	ucomisd	%xmm0, %xmm6
	jp	.L157
	jne	.L157
	ucomisd	%xmm3, %xmm1
	jp	.L157
	je	.L161
.L157:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
.L160:
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L167:
	leaq	.LC13(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetYEv
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetYEv
_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetYEv:
.LFB6915:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].colorboxes[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd
_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd:
.LFB6916:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L186
	movq	8(%rcx), %rax
	movsd	40(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L172
	jne	.L172
	ucomisd	%xmm1, %xmm6
	jp	.L172
	jne	.L172
	movq	$0x000000000, 56(%rcx)
.L180:
	pxor	%xmm0, %xmm0
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L172:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm2
	movapd	%xmm0, %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm3, 56(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L176
	jne	.L176
	ucomisd	%xmm1, %xmm6
	jp	.L176
	je	.L180
.L176:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
.L179:
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 48(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L186:
	leaq	.LC14(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox15GetOffsetLengthEv
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox15GetOffsetLengthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorbox15GetOffsetLengthEv
_ZN3wze6engine6actors5actor10colorboxes8colorbox15GetOffsetLengthEv:
.LFB6917:
	.seh_endprologue
	movsd	56(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "wze::engine.actors[].colorboxes[].SetOffsetLength(): OffsetLength must not be NaN\12Params: OffsetLength: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox15SetOffsetLengthEd
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox15SetOffsetLengthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorbox15SetOffsetLengthEd
_ZN3wze6engine6actors5actor10colorboxes8colorbox15SetOffsetLengthEd:
.LFB6918:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L193
	movq	8(%rcx), %rax
	movsd	64(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	8(%rbx), %rax
	movsd	64(%rbx), %xmm2
	movapd	%xmm6, %xmm1
	movsd	%xmm0, 40(%rbx)
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	unpcklpd	%xmm6, %xmm0
	movups	%xmm0, 48(%rbx)
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L193:
	leaq	.LC15(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox14GetOffsetAngleEv
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox14GetOffsetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorbox14GetOffsetAngleEv
_ZN3wze6engine6actors5actor10colorboxes8colorbox14GetOffsetAngleEv:
.LFB6919:
	.seh_endprologue
	movsd	64(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.actors[].colorboxes[].SetOffsetAngle(): OffsetAngle must not be NaN\12Params: OffsetAngle %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox14SetOffsetAngleEd
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox14SetOffsetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor10colorboxes8colorbox14SetOffsetAngleEd
_ZN3wze6engine6actors5actor10colorboxes8colorbox14SetOffsetAngleEd:
.LFB6920:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L200
	movq	8(%rcx), %rax
	movapd	%xmm1, %xmm2
	movsd	56(%rcx), %xmm1
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	8(%rbx), %rax
	movsd	56(%rbx), %xmm1
	movapd	%xmm6, %xmm2
	movsd	%xmm0, 40(%rbx)
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	movsd	%xmm6, 64(%rbx)
	movsd	%xmm0, 48(%rbx)
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L200:
	leaq	.LC16(%rip), %rcx
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
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
