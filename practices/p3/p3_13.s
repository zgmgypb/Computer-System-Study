	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_comp
	.align	4, 0x90
_comp:                                  ## @comp
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	cmpl	-8(%rbp), %esi
	setl	%al
	andb	$1, %al // 含义是什么？
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
