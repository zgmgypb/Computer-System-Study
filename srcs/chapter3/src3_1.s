// int comp(data_t a, data_t b)
// a in %rdi, b in %rsi
comp:
	cmpq	%rsi, %rdi // compare a:b
	setl	%all // set low-order byte of %eax to 0 or 1
	movzbl	%al, %eax // clear rest of %eax (and rest of %rax)
	ret
