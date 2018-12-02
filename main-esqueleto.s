	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_readFile
	.align	4, 0x90
_readFile:                              ## @readFile
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
	subq	$64, %rsp
	leaq	L_.str(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	_fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	LBB0_2
## BB#1:
	leaq	L_.str1(%rip), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	leaq	L_.str2(%rip), %rdi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	callq	_system
	movl	$1, %edi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	callq	_exit
LBB0_2:
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-24(%rbp), %rdi
	callq	_fseek
	movq	-24(%rbp), %rdi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	callq	_ftell
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	_fseek
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, (%rdi)
	movslq	-28(%rbp), %rdi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	callq	_calloc
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movslq	-28(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	_fread
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_fclose
	movl	-28(%rbp), %r8d
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movl	%r8d, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_writeFile
	.align	4, 0x90
_writeFile:                             ## @writeFile
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	L_.str3(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	_fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	LBB1_2
## BB#1:
	leaq	L_.str4(%rip), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	leaq	L_.str2(%rip), %rdi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_system
	movl	$1, %edi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	callq	_exit
LBB1_2:
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movslq	(%rcx), %rdx
	movq	-24(%rbp), %rcx
	callq	_fwrite
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_fclose
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_convertirAOctal
	.align	4, 0x90
_convertirAOctal:                       ## @convertirAOctal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$48, -17(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	_transCaracterMod0
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_transCaracterMod0
	.align	4, 0x90
_transCaracterMod0:                     ## @transCaracterMod0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	cmpl	-20(%rbp), %ecx
	jge	LBB3_10
## BB#1:
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -25(%rbp)
	movzbl	-25(%rbp), %edx
	sarl	$5, %edx
	addl	$48, %edx
	movb	%dl, %cl
	movb	%cl, -26(%rbp)
	movzbl	-25(%rbp), %edx
	shll	$3, %edx
	movb	%dl, %cl
	movb	%cl, -27(%rbp)
	movzbl	-27(%rbp), %edx
	sarl	$5, %edx
	addl	$48, %edx
	movb	%dl, %cl
	movb	%cl, -27(%rbp)
	movzbl	-25(%rbp), %edx
	shll	$6, %edx
	movb	%dl, %cl
	movb	%cl, -28(%rbp)
	movzbl	-28(%rbp), %edx
	sarl	$5, %edx
	movb	%dl, %cl
	movb	%cl, -28(%rbp)
	movzbl	-26(%rbp), %edx
	cmpl	$47, %edx
	jne	LBB3_3
## BB#2:
	movb	$49, -26(%rbp)
LBB3_3:
	movzbl	-27(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB3_5
## BB#4:
	movb	$49, -27(%rbp)
LBB3_5:
	leaq	L_.str5(%rip), %rdi
	movzbl	-26(%rbp), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str5(%rip), %rdi
	movb	-26(%rbp), %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movzbl	-27(%rbp), %esi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movb	-27(%rbp), %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -24(%rbp)
	movl	-24(%rbp), %esi
	cmpl	-20(%rbp), %esi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	jne	LBB3_9
## BB#6:
	movzbl	-28(%rbp), %eax
	addl	$48, %eax
	movb	%al, %cl
	movb	%cl, -28(%rbp)
	movzbl	-28(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB3_8
## BB#7:
	movb	$49, -28(%rbp)
LBB3_8:
	leaq	L_.str6(%rip), %rdi
	movzbl	-28(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movb	-28(%rbp), %cl
	movq	-16(%rbp), %rdi
	movb	%cl, (%rdi)
	movl	%eax, -40(%rbp)         ## 4-byte Spill
LBB3_9:
	movb	-28(%rbp), %al
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movzbl	%al, %edi
	callq	_transCaracterMod1
LBB3_10:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_transCaracterMod1
	.align	4, 0x90
_transCaracterMod1:                     ## @transCaracterMod1
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-32(%rbp), %ecx
	cmpl	-28(%rbp), %ecx
	jge	LBB4_12
## BB#1:
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -33(%rbp)
	movsbl	-33(%rbp), %edx
	sarl	$7, %edx
	movb	%dl, %cl
	movb	%cl, -34(%rbp)
	movsbl	-33(%rbp), %edx
	shll	$1, %edx
	movb	%dl, %cl
	movb	%cl, -35(%rbp)
	movzbl	-35(%rbp), %edx
	sarl	$5, %edx
	addl	$48, %edx
	movb	%dl, %cl
	movb	%cl, -35(%rbp)
	movzbl	-35(%rbp), %edx
	cmpl	$47, %edx
	jne	LBB4_3
## BB#2:
	movb	$49, -35(%rbp)
LBB4_3:
	movsbl	-33(%rbp), %eax
	shll	$4, %eax
	movb	%al, %cl
	movb	%cl, -36(%rbp)
	movzbl	-36(%rbp), %eax
	sarl	$5, %eax
	addl	$48, %eax
	movb	%al, %cl
	movb	%cl, -36(%rbp)
	movzbl	-36(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB4_5
## BB#4:
	movb	$49, -36(%rbp)
LBB4_5:
	movsbl	-33(%rbp), %eax
	shll	$7, %eax
	movb	%al, %cl
	movb	%cl, -37(%rbp)
	movzbl	-37(%rbp), %eax
	sarl	$5, %eax
	movb	%al, %cl
	movb	%cl, -37(%rbp)
	movzbl	-1(%rbp), %eax
	movsbl	-34(%rbp), %edx
	addl	%edx, %eax
	addl	$48, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
	movzbl	-1(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB4_7
## BB#6:
	movb	$49, -1(%rbp)
LBB4_7:
	leaq	L_.str5(%rip), %rdi
	movzbl	-1(%rbp), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str5(%rip), %rdi
	movb	-1(%rbp), %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movzbl	-35(%rbp), %esi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str5(%rip), %rdi
	movb	-35(%rbp), %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movzbl	-36(%rbp), %esi
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movb	-36(%rbp), %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movl	-32(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -32(%rbp)
	movl	-32(%rbp), %esi
	cmpl	-28(%rbp), %esi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	jne	LBB4_11
## BB#8:
	movzbl	-37(%rbp), %eax
	addl	$48, %eax
	movb	%al, %cl
	movb	%cl, -37(%rbp)
	movzbl	-37(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB4_10
## BB#9:
	movb	$49, -37(%rbp)
LBB4_10:
	leaq	L_.str5(%rip), %rdi
	movzbl	-37(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movb	-37(%rbp), %cl
	movq	-24(%rbp), %rdi
	movb	%cl, (%rdi)
	movl	%eax, -56(%rbp)         ## 4-byte Spill
LBB4_11:
	movb	-37(%rbp), %al
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movzbl	%al, %edi
	callq	_transCaracterMod2
LBB4_12:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_transCaracterMod2
	.align	4, 0x90
_transCaracterMod2:                     ## @transCaracterMod2
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-32(%rbp), %ecx
	cmpl	-28(%rbp), %ecx
	jge	LBB5_8
## BB#1:
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -33(%rbp)
	movzbl	-33(%rbp), %edx
	sarl	$6, %edx
	movb	%dl, %cl
	movb	%cl, -34(%rbp)
	movzbl	-33(%rbp), %edx
	shll	$2, %edx
	movb	%dl, %cl
	movb	%cl, -35(%rbp)
	movzbl	-35(%rbp), %edx
	sarl	$5, %edx
	addl	$48, %edx
	movb	%dl, %cl
	movb	%cl, -35(%rbp)
	movzbl	-35(%rbp), %edx
	cmpl	$47, %edx
	jne	LBB5_3
## BB#2:
	movb	$49, -35(%rbp)
LBB5_3:
	movzbl	-33(%rbp), %eax
	shll	$5, %eax
	movb	%al, %cl
	movb	%cl, -36(%rbp)
	movzbl	-36(%rbp), %eax
	sarl	$5, %eax
	addl	$48, %eax
	movb	%al, %cl
	movb	%cl, -36(%rbp)
	movzbl	-36(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB5_5
## BB#4:
	movb	$49, -36(%rbp)
LBB5_5:
	movzbl	-1(%rbp), %eax
	movzbl	-34(%rbp), %ecx
	addl	%ecx, %eax
	addl	$48, %eax
	movb	%al, %dl
	movb	%dl, -1(%rbp)
	movzbl	-1(%rbp), %eax
	cmpl	$47, %eax
	jne	LBB5_7
## BB#6:
	movb	$49, -1(%rbp)
LBB5_7:
	leaq	L_.str5(%rip), %rdi
	movzbl	-1(%rbp), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str5(%rip), %rdi
	movb	-1(%rbp), %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movzbl	-35(%rbp), %esi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str5(%rip), %rdi
	movb	-35(%rbp), %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movzbl	-36(%rbp), %esi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movb	-36(%rbp), %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movl	-32(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	callq	_transCaracterMod0
LBB5_8:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              ## imm = 0x1F0
	leaq	L_.str7(%rip), %rdi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -420(%rbp)
	movb	$0, %al
	callq	_printf
	movl	$16, %ecx
	movl	%ecx, %edi
	movl	%eax, -452(%rbp)        ## 4-byte Spill
	callq	_malloc
	movl	$16, %ecx
	movl	%ecx, %edi
	movq	%rax, -440(%rbp)
	callq	_malloc
	leaq	L_.str8(%rip), %rdi
	movq	%rax, -448(%rbp)
	movb	$0, %al
	callq	_printf
	leaq	L_.str9(%rip), %rdi
	leaq	-208(%rbp), %rsi
	movl	%eax, -456(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	-208(%rbp), %rsi
	movq	-440(%rbp), %rdi
	movl	%eax, -460(%rbp)        ## 4-byte Spill
	callq	_readFile
	leaq	L_.str10(%rip), %rdi
	movl	%eax, -424(%rbp)
	movl	-424(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	$3, %r8d
	movl	-424(%rbp), %r9d
	shll	$3, %r9d
	movl	%eax, -464(%rbp)        ## 4-byte Spill
	movl	%r9d, %eax
	movl	%edx, -468(%rbp)        ## 4-byte Spill
	cltd
	idivl	%r8d
	movl	-424(%rbp), %r9d
	movl	%eax, -472(%rbp)        ## 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	cmpl	$0, %edx
	movl	-468(%rbp), %edx        ## 4-byte Reload
	cmovel	%edx, %ecx
	movl	-472(%rbp), %r8d        ## 4-byte Reload
	addl	%ecx, %r8d
	movl	%r8d, -428(%rbp)
	movslq	-428(%rbp), %rdi
	callq	_calloc
	leaq	L_.str11(%rip), %rdi
	movq	-448(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movl	-428(%rbp), %ecx
	movq	-448(%rbp), %rax
	movl	%ecx, (%rax)
	movb	$0, %al
	callq	_printf
	leaq	L_.str9(%rip), %rdi
	leaq	-416(%rbp), %rsi
	movl	%eax, -476(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movq	-440(%rbp), %rdi
	movq	-448(%rbp), %rsi
	movl	%eax, -480(%rbp)        ## 4-byte Spill
	callq	_convertirAOctal
	leaq	-416(%rbp), %rsi
	movq	-448(%rbp), %rdi
	callq	_writeFile
	leaq	L_.str12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str13(%rip), %rdi
	leaq	-416(%rbp), %rsi
	movl	%eax, -484(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str2(%rip), %rdi
	movl	%eax, -488(%rbp)        ## 4-byte Spill
	callq	_system
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	cmpq	-8(%rbp), %rsi
	movl	%eax, -492(%rbp)        ## 4-byte Spill
	jne	LBB6_2
## BB#1:                                ## %SP_return
	xorl	%eax, %eax
	addq	$496, %rsp              ## imm = 0x1F0
	popq	%rbp
	retq
LBB6_2:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"rb"

L_.str1:                                ## @.str1
	.asciz	"No se pudo abrir el archivo para leer: %s\n"

L_.str2:                                ## @.str2
	.asciz	"PAUSE"

L_.str3:                                ## @.str3
	.asciz	"wb"

L_.str4:                                ## @.str4
	.asciz	"No se pudo abrir el archivo para escribir: %s\n"

L_.str5:                                ## @.str5
	.asciz	"%c"

L_.str6:                                ## @.str6
	.asciz	"%c "

L_.str7:                                ## @.str7
	.asciz	"PROYECTO 1 - INFRATEC (ISIS-1304)"

L_.str8:                                ## @.str8
	.asciz	"\n\nIngrese el nombre del archivo a leer (incluya el formato. i.e. archivo.txt): \n"

L_.str9:                                ## @.str9
	.asciz	"%s"

L_.str10:                               ## @.str10
	.asciz	"\nEl tamanio del archivo es de %d bytes\n"

L_.str11:                               ## @.str11
	.asciz	"\nIngrese el nombre del archivo para guardar la representacion en octales del archivo origen (incluya el .txt): \n"

L_.str12:                               ## @.str12
	.asciz	"\nEl archivo se transformo en su representacion a octal exitosamente!\n\n"

L_.str13:                               ## @.str13
	.asciz	"Revisa el archivo con nombre '%s' para ver el resultado!\n"


.subsections_via_symbols
