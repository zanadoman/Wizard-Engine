	.file	"SETexture(s).cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC1:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC2:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0:
.LFB2432:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rsi
	jnb	.L26
	leaq	(%rsi,%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L27
	testq	%rbx, %rbx
	je	.L1
	movq	%rdx, %rcx
	movq	%rdi, %r12
	subq	%rbx, %rcx
	movq	%rcx, (%rdi)
	movq	8(%rdi), %rdi
	je	.L5
	cmpq	%rcx, %rsi
	jnb	.L12
	movq	%rcx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rsi
	cmpq	$2, %rsi
	jbe	.L9
	leaq	0(,%rbp,8), %rsi
	leaq	8(,%rax,8), %r9
	cmpq	%rsi, %r9
	jne	.L28
.L9:
	movq	%rbx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rdx,8), %r8
	negq	%rsi
	salq	$3, %rsi
	.p2align 4,,10
	.p2align 3
.L14:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%rsi)
	cmpq	%rax, %r8
	jne	.L14
	.p2align 4,,10
	.p2align 3
.L12:
	leaq	0(,%rcx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L29
.L1:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	leaq	(%rdi,%rsi), %rdx
	movq	%r8, %rsi
	leaq	-8(%rdi,%r9), %r9
	xorl	%eax, %eax
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L10:
	movdqu	(%r9,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L10
	movq	%r8, %rax
	andq	$-2, %rax
	addq	%rbp, %rax
	andl	$1, %r8d
	je	.L12
	leaq	(%rbx,%rax), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L5:
	call	free@PLT
	movq	$0, 8(%r12)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L27:
	leaq	.LC1(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L29:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2432:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8texturesC2EPS0_PS2_
	.type	_ZN4slay6engine6actors5actor8texturesC2EPS0_PS2_, @function
_ZN4slay6engine6actors5actor8texturesC2EPS0_PS2_:
.LFB2232:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	$1, 16(%rdi)
	movl	$8, %edi
	movq	$0, (%rsp)
	call	malloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L34
	movq	%rax, %rsi
	movq	%rsp, %rdi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L35
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L35:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L34:
	leaq	.LC3(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2232:
	.size	_ZN4slay6engine6actors5actor8texturesC2EPS0_PS2_, .-_ZN4slay6engine6actors5actor8texturesC2EPS0_PS2_
	.globl	_ZN4slay6engine6actors5actor8texturesC1EPS0_PS2_
	.set	_ZN4slay6engine6actors5actor8texturesC1EPS0_PS2_,_ZN4slay6engine6actors5actor8texturesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8texturesD2Ev
	.type	_ZN4slay6engine6actors5actor8texturesD2Ev, @function
_ZN4slay6engine6actors5actor8texturesD2Ev:
.LFB2235:
	.cfi_startproc
	movq	16(%rdi), %rdx
	movq	24(%rdi), %rax
	cmpq	$1, %rdx
	jbe	.L42
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$1, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L40:
	movq	(%rax,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L38
	movl	$72, %esi
	addq	$1, %rbx
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	cmpq	%rdx, %rbx
	jb	.L40
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L40
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L42:
	movq	%rax, %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE2235:
	.size	_ZN4slay6engine6actors5actor8texturesD2Ev, .-_ZN4slay6engine6actors5actor8texturesD2Ev
	.globl	_ZN4slay6engine6actors5actor8texturesD1Ev
	.set	_ZN4slay6engine6actors5actor8texturesD1Ev,_ZN4slay6engine6actors5actor8texturesD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"slay::engine.actors[].textures.New(): TextureID does not exist\nParams: TextureID: %lld\n"
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC6:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC7:
	.string	"slay::engine.actors[].textures.New(): Memory allocation failed\nParams: TextureID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures3NewEy
	.type	_ZN4slay6engine6actors5actor8textures3NewEy, @function
_ZN4slay6engine6actors5actor8textures3NewEy:
.LFB2237:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L50
	movq	(%rdi), %rax
	cmpq	568(%rax), %rsi
	jnb	.L49
	movq	576(%rax), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L49
.L50:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L48
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L51:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L48
.L54:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L51
	movl	$72, %edi
	call	_Znwm@PLT
	movq	8(%rbp), %rdx
	movl	$4294967295, %ecx
	movdqu	0(%rbp), %xmm2
	movq	%rcx, 20(%rax)
	pxor	%xmm0, %xmm0
	movabsq	$72339069014638592, %rcx
	movl	136(%rdx), %edx
	movq	%rcx, 28(%rax)
	movl	$384, %ecx
	movw	%cx, 36(%rax)
	movl	%edx, 16(%rax)
	movq	24(%rbp), %rdx
	movq	$0, 40(%rax)
	movq	%r12, 64(%rax)
	movups	%xmm2, (%rax)
	movups	%xmm0, 48(%rax)
	cmpq	16(%rbp), %rbx
	jnb	.L63
	movq	%rax, (%rdx,%rbx,8)
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L48:
	movl	$72, %edi
	call	_Znwm@PLT
	movq	8(%rbp), %rdx
	movdqu	0(%rbp), %xmm1
	movl	$4294967295, %ecx
	movq	%rcx, 20(%rax)
	pxor	%xmm0, %xmm0
	movq	24(%rbp), %rdi
	movabsq	$72339069014638592, %rcx
	movl	136(%rdx), %edx
	movq	%rcx, 28(%rax)
	movq	$0, 40(%rax)
	movl	%edx, 16(%rax)
	movl	$384, %edx
	movw	%dx, 36(%rax)
	movq	%r12, 64(%rax)
	movq	%rax, (%rsp)
	movups	%xmm1, (%rax)
	movups	%xmm0, 48(%rax)
	movq	16(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L64
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L65
	cmpq	$0, (%rdx,%rax,8)
	je	.L66
.L45:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L67
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L63:
	.cfi_restore_state
	movq	%rbx, %rsi
.L62:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L64:
	leaq	.LC6(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L49:
	leaq	.LC4(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L67:
	call	__stack_chk_fail@PLT
.L66:
	leaq	.LC7(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L65:
	orq	$-1, %rsi
	jmp	.L62
	.cfi_endproc
.LFE2237:
	.size	_ZN4slay6engine6actors5actor8textures3NewEy, .-_ZN4slay6engine6actors5actor8textures3NewEy
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"slay::engine.actors[].textures.Delete(): Illegal deletion of NULL Texture\nParams: ID: %lld\n"
	.align 8
.LC9:
	.string	"slay::engine.actors[].textures.Delete(): Texture does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures6DeleteEy
	.type	_ZN4slay6engine6actors5actor8textures6DeleteEy, @function
_ZN4slay6engine6actors5actor8textures6DeleteEy:
.LFB2238:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rsi, %rsi
	je	.L81
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	16(%rdi), %rsi
	jnb	.L70
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L70
	movl	$72, %esi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L82
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L83
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L83:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L77:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L80
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L84
	cmpq	$1, %rsi
	jne	.L77
.L76:
	leaq	16(%rbp), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L84:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L76
.L82:
	movq	%rbx, %rsi
.L80:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L70:
	leaq	.LC9(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L81:
	leaq	.LC8(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2238:
	.size	_ZN4slay6engine6actors5actor8textures6DeleteEy, .-_ZN4slay6engine6actors5actor8textures6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"slay::engine.actors[].textures.Purge(): Texture does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures5PurgeESt16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor8textures5PurgeESt16initializer_listIyE, @function
_ZN4slay6engine6actors5actor8textures5PurgeESt16initializer_listIyE:
.LFB2239:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	movq	16(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L86
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L89:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L87
	cmpq	%rsi, %rdx
	jnb	.L88
	movq	24(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L88
.L87:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L89
.L86:
	cmpq	$1, %rsi
	jbe	.L90
	movq	24(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L91:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L93
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L124:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L94
.L93:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L124
	cmpq	%rax, %rbx
	je	.L94
.L95:
	addq	$1, %rbp
	cmpq	%rsi, %rbp
	jb	.L91
	cmpq	$0, -8(%rdx,%rsi,8)
	leaq	-1(%rsi), %r8
	je	.L125
.L121:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L94:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %rdi
	leaq	0(,%rbp,8), %r14
	testq	%rdi, %rdi
	je	.L96
	movl	$72, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rsi
	movq	24(%r13), %rdx
.L96:
	cmpq	%rsi, %rbp
	jnb	.L126
	movq	$0, (%rdx,%r14)
	jmp	.L95
.L125:
	movq	%rsi, %rcx
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L104:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L127
	cmpq	$0, (%rdx,%rax,8)
	jne	.L128
	movq	%rax, %rcx
.L99:
	cmpq	$1, %rcx
	jne	.L104
.L103:
	leaq	16(%r13), %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L90:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L121
	orq	$-1, %rsi
.L123:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L128:
	subq	%rcx, %rsi
	movq	%rsi, %r8
	jmp	.L103
.L88:
	leaq	.LC10(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L127:
	movq	%rax, %rsi
	jmp	.L123
.L126:
	movq	%rbp, %rsi
	jmp	.L123
	.cfi_endproc
.LFE2239:
	.size	_ZN4slay6engine6actors5actor8textures5PurgeESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor8textures5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"slay::engine.actors[].textures.Purge(): Texture does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE
	.type	_ZN4slay6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE, @function
_ZN4slay6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE:
.LFB2242:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rsi), %rdx
	movq	16(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L130
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L133:
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L131
	cmpq	%rsi, %rcx
	jnb	.L132
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L132
.L131:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L133
.L130:
	cmpq	$1, %rsi
	jbe	.L134
	movq	24(%rbp), %rdi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L138
	.p2align 4,,10
	.p2align 3
.L143:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L167:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L138
.L137:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L167
	cmpq	%rax, %rdx
	je	.L138
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L142
.L169:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L143
	.p2align 4,,10
	.p2align 3
.L138:
	movq	(%rdi,%rbx,8), %rax
	leaq	0(,%rbx,8), %r13
	testq	%rax, %rax
	je	.L140
	movl	$72, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rsi
	movq	24(%rbp), %rdi
.L140:
	cmpq	%rsi, %rbx
	jnb	.L168
	addq	$1, %rbx
	movq	$0, (%rdi,%r13)
	cmpq	%rsi, %rbx
	jb	.L169
.L142:
	cmpq	$0, -8(%rdi,%rsi,8)
	leaq	-1(%rsi), %rdx
	je	.L170
.L164:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L170:
	.cfi_restore_state
	movq	%rsi, %rcx
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L149:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L171
	cmpq	$0, (%rdi,%rax,8)
	jne	.L172
	movq	%rax, %rcx
.L144:
	cmpq	$1, %rcx
	jne	.L149
.L148:
	leaq	16(%rbp), %rdi
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L134:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L164
	orq	$-1, %rsi
.L166:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L172:
	subq	%rcx, %rsi
	movq	%rsi, %rdx
	jmp	.L148
.L132:
	leaq	.LC11(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L171:
	movq	%rax, %rsi
	jmp	.L166
.L168:
	movq	%rbx, %rsi
	jmp	.L166
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"slay::engine.actors[].textures[]: Illegal access to NULL Texture\nParams: ID: %lld\n"
	.align 8
.LC13:
	.string	"slay::engine.actors[].textures[]: Texture does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8texturesixEy
	.type	_ZN4slay6engine6actors5actor8texturesixEy, @function
_ZN4slay6engine6actors5actor8texturesixEy:
.LFB2243:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L178
	cmpq	16(%rdi), %rsi
	jnb	.L175
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L175
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L175:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L178:
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6actors5actor8texturesixEy, .-_ZN4slay6engine6actors5actor8texturesixEy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures7textureC2EPS0_PS2_y
	.type	_ZN4slay6engine6actors5actor8textures7textureC2EPS0_PS2_y, @function
_ZN4slay6engine6actors5actor8textures7textureC2EPS0_PS2_y:
.LFB2245:
	.cfi_startproc
	movl	136(%rdx), %eax
	pxor	%xmm0, %xmm0
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	%eax, 16(%rdi)
	movl	$4294967295, %eax
	movq	%rax, 20(%rdi)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rdi)
	movl	$384, %eax
	movw	%ax, 36(%rdi)
	movq	$0, 40(%rdi)
	movq	%rcx, 64(%rdi)
	movups	%xmm0, 48(%rdi)
	ret
	.cfi_endproc
.LFE2245:
	.size	_ZN4slay6engine6actors5actor8textures7textureC2EPS0_PS2_y, .-_ZN4slay6engine6actors5actor8textures7textureC2EPS0_PS2_y
	.globl	_ZN4slay6engine6actors5actor8textures7textureC1EPS0_PS2_y
	.set	_ZN4slay6engine6actors5actor8textures7textureC1EPS0_PS2_y,_ZN4slay6engine6actors5actor8textures7textureC2EPS0_PS2_y
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures7texture10GetOffsetXEv
	.type	_ZN4slay6engine6actors5actor8textures7texture10GetOffsetXEv, @function
_ZN4slay6engine6actors5actor8textures7texture10GetOffsetXEv:
.LFB2247:
	.cfi_startproc
	movl	40(%rdi), %eax
	ret
	.cfi_endproc
.LFE2247:
	.size	_ZN4slay6engine6actors5actor8textures7texture10GetOffsetXEv, .-_ZN4slay6engine6actors5actor8textures7texture10GetOffsetXEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures7texture10SetOffsetXEi
	.type	_ZN4slay6engine6actors5actor8textures7texture10SetOffsetXEi, @function
_ZN4slay6engine6actors5actor8textures7texture10SetOffsetXEi:
.LFB2248:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movl	%esi, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	8(%rdi), %rax
	cvtsi2sdl	44(%rdi), %xmm0
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm4
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm4, %xmm0
	cvttsd2sil	%xmm0, %eax
	movapd	%xmm4, %xmm0
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	movq	(%rdi), %rax
	leaq	552(%rax), %rdi
	movsd	%xmm2, (%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rdx
	movsd	%xmm0, 48(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 40(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 56(%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2248:
	.size	_ZN4slay6engine6actors5actor8textures7texture10SetOffsetXEi, .-_ZN4slay6engine6actors5actor8textures7texture10SetOffsetXEi
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures7texture10GetOffsetYEv
	.type	_ZN4slay6engine6actors5actor8textures7texture10GetOffsetYEv, @function
_ZN4slay6engine6actors5actor8textures7texture10GetOffsetYEv:
.LFB2249:
	.cfi_startproc
	movl	44(%rdi), %eax
	ret
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6actors5actor8textures7texture10GetOffsetYEv, .-_ZN4slay6engine6actors5actor8textures7texture10GetOffsetYEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures7texture10SetOffsetYEi
	.type	_ZN4slay6engine6actors5actor8textures7texture10SetOffsetYEi, @function
_ZN4slay6engine6actors5actor8textures7texture10SetOffsetYEi:
.LFB2250:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	cvtsi2sdl	%esi, %xmm0
	movq	%rdi, %rbx
	movl	%esi, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	8(%rdi), %rax
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm4
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	40(%rdi), %xmm0
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm4, %xmm0
	cvttsd2sil	%xmm0, %eax
	movapd	%xmm4, %xmm0
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	movq	(%rdi), %rax
	leaq	552(%rax), %rdi
	movsd	%xmm2, (%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rdx
	movsd	%xmm0, 48(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 44(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 56(%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2250:
	.size	_ZN4slay6engine6actors5actor8textures7texture10SetOffsetYEi, .-_ZN4slay6engine6actors5actor8textures7texture10SetOffsetYEi
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures7texture12GetTextureIDEv
	.type	_ZN4slay6engine6actors5actor8textures7texture12GetTextureIDEv, @function
_ZN4slay6engine6actors5actor8textures7texture12GetTextureIDEv:
.LFB2251:
	.cfi_startproc
	movq	64(%rdi), %rax
	ret
	.cfi_endproc
.LFE2251:
	.size	_ZN4slay6engine6actors5actor8textures7texture12GetTextureIDEv, .-_ZN4slay6engine6actors5actor8textures7texture12GetTextureIDEv
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"slay::engine.actors[].textures[].SetTextureID(): Texture does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy
	.type	_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy, @function
_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy:
.LFB2252:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L188
	movq	(%rdi), %rdx
	cmpq	568(%rdx), %rsi
	jnb	.L189
	movq	576(%rdx), %rdx
	cmpq	$0, (%rdx,%rsi,8)
	je	.L189
.L188:
	movq	%rax, 64(%rdi)
	ret
.L189:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2252:
	.size	_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy, .-_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits