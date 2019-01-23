	.file	"src3_3.c"
	.text
	.globl	swap_add
	.type	swap_add, @function
swap_add:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	swap_add, .-swap_add
	.globl	caller
	.type	caller, @function
caller:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$534, -24(%rbp)
	movq	$1057, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	swap_add
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	imulq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	caller, .-caller
	.ident	"GCC: (GNU) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
