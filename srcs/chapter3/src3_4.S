	.file	"src3_4.c"
	.text
	.globl	call_proc
	.type	call_proc, @function
call_proc:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$1, -8(%rbp)
	movl	$2, -12(%rbp)
	movw	$3, -14(%rbp)
	movb	$4, -15(%rbp)
	movzbl	-15(%rbp), %eax
	movsbl	%al, %edi
	movzwl	-14(%rbp), %eax
	movswl	%ax, %r10d
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	-14(%rbp), %r9
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rsi
	leaq	-15(%rbp), %r8
	movq	%r8, 8(%rsp)
	movl	%edi, (%rsp)
	movl	%r10d, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	proc
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movzwl	-14(%rbp), %eax
	movswl	%ax, %edx
	movzbl	-15(%rbp), %eax
	movsbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	imulq	%rcx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	call_proc, .-call_proc
	.ident	"GCC: (GNU) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
