	.file	"pow_simple.cpp"
	.text
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "UNDEFINED cant count. return 0 \12\0"
	.text
	.globl	_Z3powdi
	.def	_Z3powdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3powdi
_Z3powdi:
.LFB2684:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movl	%edx, 24(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	cmpl	$0, 24(%rbp)
	jne	.L2
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L18
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	je	.L2
.L18:
	movsd	-8(%rbp), %xmm0
	jmp	.L4
.L2:
	cmpl	$0, 24(%rbp)
	jg	.L5
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L5
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jne	.L5
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	pxor	%xmm0, %xmm0
	jmp	.L4
.L5:
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L20
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	je	.L7
.L20:
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L9
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jne	.L9
.L7:
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L11
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	jne	.L11
	movsd	.LC0(%rip), %xmm0
	jmp	.L4
.L11:
	pxor	%xmm0, %xmm0
	jmp	.L4
.L9:
	movl	24(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	call	_ZSt4log2IiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	movsd	.LC0(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	16(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L13
.L15:
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jne	.L14
	movsd	-8(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.L14:
	sarl	-12(%rbp)
	movsd	-24(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -28(%rbp)
.L13:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L15
	cmpl	$0, 24(%rbp)
	jns	.L16
	movsd	.LC0(%rip), %xmm0
	divsd	-8(%rbp), %xmm0
	jmp	.L22
.L16:
	movsd	-8(%rbp), %xmm0
.L22:
	nop
.L4:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z10pow_simpledi
	.def	_Z10pow_simpledi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10pow_simpledi
_Z10pow_simpledi:
.LFB2685:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movl	%edx, 24(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	cmpl	$0, 24(%rbp)
	jne	.L24
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L39
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	je	.L24
.L39:
	movsd	-8(%rbp), %xmm0
	jmp	.L26
.L24:
	cmpl	$0, 24(%rbp)
	jg	.L27
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L27
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jne	.L27
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	pxor	%xmm0, %xmm0
	jmp	.L26
.L27:
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L41
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	je	.L29
.L41:
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L31
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jne	.L31
.L29:
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L33
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	jne	.L33
	movsd	.LC0(%rip), %xmm0
	jmp	.L26
.L33:
	pxor	%xmm0, %xmm0
	jmp	.L26
.L31:
	movl	24(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L35
.L36:
	movsd	-8(%rbp), %xmm0
	mulsd	16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L35:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L36
	cmpl	$0, 24(%rbp)
	jns	.L37
	movsd	.LC0(%rip), %xmm0
	divsd	-8(%rbp), %xmm0
	jmp	.L43
.L37:
	movsd	-8(%rbp), %xmm0
.L43:
	nop
.L26:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z6pow_rsdi
	.def	_Z6pow_rsdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6pow_rsdi
_Z6pow_rsdi:
.LFB2686:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movl	%edx, 24(%rbp)
	movsd	16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	cmpl	$0, 24(%rbp)
	jne	.L45
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L59
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	je	.L45
.L59:
	movsd	-8(%rbp), %xmm0
	jmp	.L47
.L45:
	cmpl	$0, 24(%rbp)
	jg	.L48
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L48
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jne	.L48
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	pxor	%xmm0, %xmm0
	jmp	.L47
.L48:
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L61
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	je	.L50
.L61:
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L52
	pxor	%xmm0, %xmm0
	ucomisd	16(%rbp), %xmm0
	jne	.L52
.L50:
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	jp	.L54
	movsd	.LC0(%rip), %xmm0
	ucomisd	16(%rbp), %xmm0
	jne	.L54
	movsd	.LC0(%rip), %xmm0
	jmp	.L47
.L54:
	pxor	%xmm0, %xmm0
	jmp	.L47
.L52:
	movl	24(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L56
	subl	$1, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	16(%rbp), %rax
	movq	%rax, %xmm0
	call	_Z6pow_rsdi
	movsd	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.L56:
	cmpl	$0, 24(%rbp)
	jns	.L57
	movsd	.LC0(%rip), %xmm0
	divsd	-8(%rbp), %xmm0
	jmp	.L63
.L57:
	movsd	-8(%rbp), %xmm0
.L63:
	nop
.L47:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "number = 10, power = 10 -> \0"
.LC5:
	.ascii "\12\0"
.LC6:
	.ascii "number = 2, power = 10 -> \0"
.LC8:
	.ascii "number = 10000, power = 0 -> \0"
.LC10:
	.ascii "number = 5, power = -2 -> \0"
.LC12:
	.ascii "number = 2, power = -7 -> \0"
.LC13:
	.ascii "number = 3, power = 5 -> \0"
.LC15:
	.ascii "number = 2.5, power = 4 -> \0"
.LC17:
	.ascii "number = 2.5, power = -4 -> \0"
.LC18:
	.ascii "number = 3.14, power = -7 -> \0"
.LC20:
	.ascii "number = 3.14, power = 6 -> \0"
	.align 8
.LC21:
	.ascii "number = 1, power = 100000 -> \0"
	.align 8
.LC22:
	.ascii "number = 0, power = 100000 -> \0"
.LC23:
	.ascii "number = 0, power = 0 -> \0"
	.align 8
.LC24:
	.ascii "number = 1.7, power = 1337 -> \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2687:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	call	__main
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC4(%rip), %rax
	movl	$10, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC7(%rip), %rax
	movl	$10, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC9(%rip), %rax
	movl	$0, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC11(%rip), %rax
	movl	$-2, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC7(%rip), %rax
	movl	$-7, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC14(%rip), %rax
	movl	$5, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC16(%rip), %rax
	movl	$4, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC16(%rip), %rax
	movl	$-4, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC19(%rip), %rax
	movl	$-7, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC19(%rip), %rax
	movl	$6, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC0(%rip), %rax
	movl	$100000, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	$100000, %edx
	movq	.LC1(%rip), %rax
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movl	$0, %edx
	movq	.LC1(%rip), %rax
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
	movq	.LC25(%rip), %rax
	movl	$1337, %edx
	movq	%rax, %xmm0
	call	_Z10pow_simpledi
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	movq	%rbx, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4log2IiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_,"x"
	.linkonce discard
	.globl	_ZSt4log2IiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.def	_ZSt4log2IiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4log2IiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
_ZSt4log2IiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_:
.LFB3013:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	16(%rbp), %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	log2
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	0
	.align 8
.LC4:
	.long	0
	.long	1076101120
	.align 8
.LC7:
	.long	0
	.long	1073741824
	.align 8
.LC9:
	.long	0
	.long	1086556160
	.align 8
.LC11:
	.long	0
	.long	1075052544
	.align 8
.LC14:
	.long	0
	.long	1074266112
	.align 8
.LC16:
	.long	0
	.long	1074003968
	.align 8
.LC19:
	.long	1374389535
	.long	1074339512
	.align 8
.LC25:
	.long	858993459
	.long	1073427251
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	log2;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
