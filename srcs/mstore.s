	.file	"mstore.c"
	.text
.globl multstore
	.type	multstore, @function
multstore:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mult2
	movl	16(%ebp), %edx
	movl	%eax, (%edx)
	leave
	ret
	.size	multstore, .-multstore
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-18)"
	.section	.note.GNU-stack,"",@progbits
