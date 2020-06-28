	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.globl	_push                   ## -- Begin function push
	.p2align	4, 0x90
_push:                                  ## @push
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movl	__size(%rip), %eax
	cmpl	__capacity(%rip), %eax
	jle	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$16, %esi
	callq	_realloc
	movl	$16, __capacity(%rip)
LBB0_2:
	movss	-16(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	__size(%rip), %edx
	addl	$1, %edx
	movl	%edx, __size(%rip)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_validateFile           ## -- Begin function validateFile
	.p2align	4, 0x90
_validateFile:                          ## @validateFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	jne	LBB1_2
## %bb.1:
	movl	$1, -4(%rbp)
	jmp	LBB1_21
LBB1_2:
	movq	-16(%rbp), %rax
	movsbl	11(%rax), %ecx
	cmpl	$44, %ecx
	je	LBB1_4
## %bb.3:
	movq	-16(%rbp), %rax
	movsbl	11(%rax), %ecx
	cmpl	$48, %ecx
	jne	LBB1_5
LBB1_4:
	movl	$2, -4(%rbp)
	jmp	LBB1_21
LBB1_5:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$49, %edx
	je	LBB1_20
## %bb.6:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$50, %edx
	je	LBB1_20
## %bb.7:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$51, %edx
	je	LBB1_20
## %bb.8:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$52, %edx
	je	LBB1_20
## %bb.9:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$53, %edx
	je	LBB1_20
## %bb.10:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$54, %edx
	je	LBB1_20
## %bb.11:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$55, %edx
	je	LBB1_20
## %bb.12:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$56, %edx
	je	LBB1_20
## %bb.13:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$57, %edx
	je	LBB1_20
## %bb.14:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$48, %edx
	je	LBB1_20
## %bb.15:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$44, %edx
	je	LBB1_20
## %bb.16:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$13, %edx
	je	LBB1_20
## %bb.17:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$10, %edx
	je	LBB1_20
## %bb.18:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$46, %edx
	je	LBB1_20
## %bb.19:
	movl	$3, -4(%rbp)
	jmp	LBB1_21
LBB1_20:
	movl	$0, -4(%rbp)
LBB1_21:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_chargeFile             ## -- Begin function chargeFile
	.p2align	4, 0x90
_chargeFile:                            ## @chargeFile
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2208, %rsp             ## imm = 0x8A0
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -2080(%rbp)
	movq	%rsi, -2088(%rbp)
	movl	$0, __size(%rip)
	movl	$0, __capacity(%rip)
	movl	$0, -2092(%rbp)
	movl	$0, -2096(%rbp)
	movl	$0, -2100(%rbp)
	movl	$0, -2104(%rbp)
	movl	$0, -2108(%rbp)
	movl	$0, -2112(%rbp)
	movl	$0, -2116(%rbp)
	movq	-2088(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_fopen
	movq	%rax, -2128(%rbp)
	cmpq	$0, -2128(%rbp)
	jne	LBB2_2
## %bb.1:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	$0, -2072(%rbp)
	jmp	LBB2_37
LBB2_2:
	jmp	LBB2_3
LBB2_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_7 Depth 2
	leaq	-1040(%rbp), %rdi
	movq	-2128(%rbp), %rdx
	movl	$1024, %esi             ## imm = 0x400
	callq	_fgets
	cmpq	$0, %rax
	je	LBB2_26
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	movl	-2092(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2092(%rbp)
	cmpl	$1, -2092(%rbp)
	jne	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=1
	jmp	LBB2_3
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=1
	movl	$0, -2096(%rbp)
	movl	$0, -2108(%rbp)
LBB2_7:                                 ##   Parent Loop BB2_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	-1040(%rbp), %rdi
	movl	-2108(%rbp), %esi
	callq	_validateFile
	movl	%eax, -2132(%rbp)
	cmpl	$0, -2132(%rbp)
	je	LBB2_9
## %bb.8:                               ##   in Loop: Header=BB2_3 Depth=1
	movl	-2132(%rbp), %eax
	movl	%eax, -2116(%rbp)
	jmp	LBB2_23
LBB2_9:                                 ##   in Loop: Header=BB2_7 Depth=2
	movslq	-2108(%rbp), %rax
	movb	-1040(%rbp,%rax), %cl
	movl	-2104(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -2104(%rbp)
	movslq	%edx, %rax
	movb	%cl, -2064(%rbp,%rax)
	cmpl	$0, -2100(%rbp)
	jne	LBB2_15
## %bb.10:                              ##   in Loop: Header=BB2_7 Depth=2
	movslq	-2108(%rbp), %rax
	movsbl	-1040(%rbp,%rax), %ecx
	cmpl	$44, %ecx
	je	LBB2_12
## %bb.11:                              ##   in Loop: Header=BB2_7 Depth=2
	movslq	-2108(%rbp), %rax
	movsbl	-1040(%rbp,%rax), %ecx
	cmpl	$10, %ecx
	jne	LBB2_15
LBB2_12:                                ##   in Loop: Header=BB2_7 Depth=2
	movl	-2104(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movb	$0, -2064(%rbp,%rcx)
	movl	$0, -2104(%rbp)
	cmpl	$1, -2096(%rbp)
	jne	LBB2_14
## %bb.13:                              ##   in Loop: Header=BB2_7 Depth=2
	leaq	-2064(%rbp), %rdi
	movq	-2080(%rbp), %rax
	movl	-2112(%rbp), %esi
	movq	%rax, -2168(%rbp)       ## 8-byte Spill
	movl	%esi, -2172(%rbp)       ## 4-byte Spill
	callq	_atof
	cvtsd2ss	%xmm0, %xmm0
	movq	-2168(%rbp), %rdi       ## 8-byte Reload
	movl	-2172(%rbp), %esi       ## 4-byte Reload
	callq	_push
	movq	%rax, -2080(%rbp)
	movl	-2112(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -2112(%rbp)
LBB2_14:                                ##   in Loop: Header=BB2_7 Depth=2
	movl	-2096(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2096(%rbp)
LBB2_15:                                ##   in Loop: Header=BB2_7 Depth=2
	movslq	-2108(%rbp), %rax
	movsbl	-1040(%rbp,%rax), %ecx
	cmpl	$34, %ecx
	jne	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_7 Depth=2
	movl	-2108(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movsbl	-1040(%rbp,%rcx), %eax
	cmpl	$34, %eax
	je	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_7 Depth=2
	movl	-2104(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -2104(%rbp)
	cmpl	$0, -2100(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -2100(%rbp)
LBB2_18:                                ##   in Loop: Header=BB2_7 Depth=2
	movslq	-2108(%rbp), %rax
	movsbl	-1040(%rbp,%rax), %ecx
	cmpl	$34, %ecx
	jne	LBB2_21
## %bb.19:                              ##   in Loop: Header=BB2_7 Depth=2
	movl	-2108(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movsbl	-1040(%rbp,%rcx), %eax
	cmpl	$34, %eax
	jne	LBB2_21
## %bb.20:                              ##   in Loop: Header=BB2_7 Depth=2
	movl	-2108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2108(%rbp)
LBB2_21:                                ##   in Loop: Header=BB2_7 Depth=2
	jmp	LBB2_22
LBB2_22:                                ##   in Loop: Header=BB2_7 Depth=2
	movl	-2108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2108(%rbp)
	movslq	%eax, %rcx
	cmpb	$0, -1040(%rbp,%rcx)
	jne	LBB2_7
LBB2_23:                                ##   in Loop: Header=BB2_3 Depth=1
	cmpl	$0, -2116(%rbp)
	je	LBB2_25
## %bb.24:
	jmp	LBB2_26
LBB2_25:                                ##   in Loop: Header=BB2_3 Depth=1
	jmp	LBB2_3
LBB2_26:
	movq	-2128(%rbp), %rdi
	callq	_fclose
	cmpl	$1, -2116(%rbp)
	jne	LBB2_28
## %bb.27:
	leaq	-1040(%rbp), %rdx
	movl	-2092(%rbp), %esi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	$0, -2072(%rbp)
	jmp	LBB2_37
LBB2_28:
	cmpl	$2, -2116(%rbp)
	jne	LBB2_30
## %bb.29:
	leaq	-1040(%rbp), %rdx
	movl	-2092(%rbp), %esi
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	$0, -2072(%rbp)
	jmp	LBB2_37
LBB2_30:
	cmpl	$3, -2116(%rbp)
	jne	LBB2_36
## %bb.31:
	movl	-2108(%rbp), %eax
	movl	%eax, %ecx
	movq	%rsp, %rdx
	movq	%rdx, -2144(%rbp)
	movq	%rcx, %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	movq	%rdx, %rax
	movq	%rcx, -2184(%rbp)       ## 8-byte Spill
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-2184(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -2152(%rbp)
	movl	$0, -2156(%rbp)
	movq	%rax, -2192(%rbp)       ## 8-byte Spill
LBB2_32:                                ## =>This Inner Loop Header: Depth=1
	movl	-2156(%rbp), %eax
	cmpl	-2108(%rbp), %eax
	jg	LBB2_35
## %bb.33:                              ##   in Loop: Header=BB2_32 Depth=1
	movl	-2156(%rbp), %eax
	movl	-2108(%rbp), %ecx
	cmpl	%ecx, %eax
	movl	$94, %eax
	movl	$32, %ecx
	cmovel	%eax, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movslq	-2156(%rbp), %rdx
	movq	-2192(%rbp), %rsi       ## 8-byte Reload
	movb	%cl, (%rsi,%rdx)
## %bb.34:                              ##   in Loop: Header=BB2_32 Depth=1
	movl	-2156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2156(%rbp)
	jmp	LBB2_32
LBB2_35:
	leaq	-1040(%rbp), %rdx
	movl	-2092(%rbp), %esi
	leaq	L_.str.4(%rip), %rdi
	movq	-2192(%rbp), %rcx       ## 8-byte Reload
	movb	$0, %al
	callq	_printf
	movq	$0, -2072(%rbp)
	movq	-2144(%rbp), %rcx
	movq	%rcx, %rsp
	jmp	LBB2_37
LBB2_36:
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-2080(%rbp), %rcx
	movq	%rcx, -2072(%rbp)
LBB2_37:
	movq	-2072(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -2200(%rbp)       ## 8-byte Spill
	jne	LBB2_39
## %bb.38:
	movq	-2200(%rbp), %rax       ## 8-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB2_39:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_sortDataTemperatures   ## -- Begin function sortDataTemperatures
	.p2align	4, 0x90
_sortDataTemperatures:                  ## @sortDataTemperatures
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$0, -16(%rbp)
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	movl	-16(%rbp), %eax
	cmpl	__size(%rip), %eax
	jge	LBB3_10
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movl	$0, -20(%rbp)
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movl	__size(%rip), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB3_8
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	ucomiss	(%rax,%rcx,4), %xmm0
	jbe	LBB3_6
## %bb.5:                               ##   in Loop: Header=BB3_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-12(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
LBB3_6:                                 ##   in Loop: Header=BB3_3 Depth=2
	jmp	LBB3_7
LBB3_7:                                 ##   in Loop: Header=BB3_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB3_3
LBB3_8:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_9
LBB3_9:                                 ##   in Loop: Header=BB3_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB3_1
LBB3_10:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_sumDataTemperatures    ## -- Begin function sumDataTemperatures
	.p2align	4, 0x90
_sumDataTemperatures:                   ## @sumDataTemperatures
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$0, -16(%rbp)
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	__size(%rip), %eax
	jge	LBB4_4
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	movss	-12(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -12(%rbp)
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB4_1
LBB4_4:
	movss	-12(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function sumTemperatureLessMean
LCPI5_0:
	.quad	4611686018427387904     ## double 2
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sumTemperatureLessMean
	.p2align	4, 0x90
_sumTemperatureLessMean:                ## @sumTemperatureLessMean
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	__size(%rip), %eax
	jge	LBB5_4
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	movss	-16(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    ## xmm1 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	LCPI5_0(%rip), %xmm2    ## xmm2 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        ## 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_pow
	movsd	-32(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
## %bb.3:                               ##   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB5_1
LBB5_4:
	movss	-16(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_calculateMean          ## -- Begin function calculateMean
	.p2align	4, 0x90
_calculateMean:                         ## @calculateMean
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	__size(%rip), %xmm1
	divss	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function calculateMedian
LCPI7_0:
	.long	1073741824              ## float 2
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_calculateMedian
	.p2align	4, 0x90
_calculateMedian:                       ## @calculateMedian
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	__size(%rip), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	je	LBB7_2
## %bb.1:
	movq	-8(%rbp), %rax
	movl	__size(%rip), %ecx
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movss	(%rdi,%rsi,4), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)        ## 4-byte Spill
	jmp	LBB7_3
LBB7_2:
	movss	LCPI7_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	__size(%rip), %ecx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	subl	$1, %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movss	(%rdi,%rsi,4), %xmm1    ## xmm1 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rsi
	movl	__size(%rip), %eax
	cltd
	idivl	%ecx
	movslq	%eax, %r8
	addss	(%rsi,%r8,4), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -20(%rbp)        ## 4-byte Spill
LBB7_3:
	movss	-20(%rbp), %xmm0        ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_calculateMode          ## -- Begin function calculateMode
	.p2align	4, 0x90
_calculateMode:                         ## @calculateMode
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
LBB8_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	__size(%rip), %eax
	jge	LBB8_14
## %bb.2:                               ##   in Loop: Header=BB8_1 Depth=1
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
LBB8_3:                                 ##   Parent Loop BB8_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	__size(%rip), %eax
	jge	LBB8_8
## %bb.4:                               ##   in Loop: Header=BB8_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	ucomiss	(%rax,%rcx,4), %xmm0
	jne	LBB8_6
	jp	LBB8_6
## %bb.5:                               ##   in Loop: Header=BB8_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
LBB8_6:                                 ##   in Loop: Header=BB8_3 Depth=2
	jmp	LBB8_7
LBB8_7:                                 ##   in Loop: Header=BB8_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB8_3
LBB8_8:                                 ##   in Loop: Header=BB8_1 Depth=1
	cvtsi2ssl	-24(%rbp), %xmm0
	ucomiss	-16(%rbp), %xmm0
	jbe	LBB8_10
## %bb.9:                               ##   in Loop: Header=BB8_1 Depth=1
	cvtsi2ssl	-24(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
LBB8_10:                                ##   in Loop: Header=BB8_1 Depth=1
	cmpl	$1, -24(%rbp)
	jne	LBB8_12
## %bb.11:                              ##   in Loop: Header=BB8_1 Depth=1
	xorps	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
LBB8_12:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_13
LBB8_13:                                ##   in Loop: Header=BB8_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB8_1
LBB8_14:
	movss	-12(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_calculateMax           ## -- Begin function calculateMax
	.p2align	4, 0x90
_calculateMax:                          ## @calculateMax
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	__size(%rip), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_calculateMin           ## -- Begin function calculateMin
	.p2align	4, 0x90
_calculateMin:                          ## @calculateMin
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_calculateStdev         ## -- Begin function calculateStdev
	.p2align	4, 0x90
_calculateStdev:                        ## @calculateStdev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	-8(%rbp), %rdi
	movss	-12(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	callq	_sumTemperatureLessMean
	movl	__size(%rip), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	sqrtsd	%xmm0, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function convertKelvinToCelcius
LCPI12_0:
	.quad	4643512921809643110     ## double 273.14999999999998
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_convertKelvinToCelcius
	.p2align	4, 0x90
_convertKelvinToCelcius:                ## @convertKelvinToCelcius
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	LCPI12_0(%rip), %xmm1   ## xmm1 = mem[0],zero
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function convertKelvinToFahrenheit
LCPI13_0:
	.quad	4629700416936869888     ## double 32
LCPI13_1:
	.quad	4617315517961601024     ## double 5
LCPI13_2:
	.quad	4621256167635550208     ## double 9
LCPI13_3:
	.quad	4643512921809643110     ## double 273.14999999999998
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_convertKelvinToFahrenheit
	.p2align	4, 0x90
_convertKelvinToFahrenheit:             ## @convertKelvinToFahrenheit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	LCPI13_0(%rip), %xmm1   ## xmm1 = mem[0],zero
	movsd	LCPI13_1(%rip), %xmm2   ## xmm2 = mem[0],zero
	movsd	LCPI13_2(%rip), %xmm3   ## xmm3 = mem[0],zero
	movsd	LCPI13_3(%rip), %xmm4   ## xmm4 = mem[0],zero
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_showResults            ## -- Begin function showResults
	.p2align	4, 0x90
_showResults:                           ## @showResults
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_sortDataTemperatures
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_sumDataTemperatures
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	callq	_calculateMean
	movss	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_calculateMedian
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	_calculateMode
	movss	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_calculateMax
	movss	%xmm0, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	_calculateMin
	movss	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movss	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	callq	_calculateStdev
	movss	%xmm0, -44(%rbp)
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.7(%rip), %rdi
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.8(%rip), %rdi
	leaq	L_.str.9(%rip), %rsi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.10(%rip), %rdi
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movss	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	movsd	%xmm0, -72(%rbp)        ## 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	callq	_convertKelvinToCelcius
	cvtss2sd	%xmm0, %xmm1
	leaq	L_.str.12(%rip), %rdi
	movsd	-72(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movb	$2, %al
	callq	_printf
	movss	-28(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-28(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	movsd	%xmm0, -88(%rbp)        ## 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	callq	_convertKelvinToCelcius
	cvtss2sd	%xmm0, %xmm1
	leaq	L_.str.13(%rip), %rdi
	movsd	-88(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movb	$2, %al
	callq	_printf
	movss	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	setnp	%cl
	sete	%dl
	testb	%cl, %dl
	leaq	L_.str.14(%rip), %rsi
	leaq	L_.str.15(%rip), %rdi
	cmovneq	%rsi, %rdi
	movss	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-32(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	movsd	%xmm0, -104(%rbp)       ## 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	movq	%rdi, -120(%rbp)        ## 8-byte Spill
	callq	_convertKelvinToCelcius
	cvtss2sd	%xmm0, %xmm1
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	movsd	-104(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movb	$2, %al
	callq	_printf
	movss	-36(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-28(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	movsd	%xmm0, -128(%rbp)       ## 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%eax, -132(%rbp)        ## 4-byte Spill
	callq	_convertKelvinToCelcius
	cvtss2sd	%xmm0, %xmm1
	leaq	L_.str.16(%rip), %rdi
	movsd	-128(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movb	$2, %al
	callq	_printf
	movss	-40(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-28(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	movsd	%xmm0, -144(%rbp)       ## 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%eax, -148(%rbp)        ## 4-byte Spill
	callq	_convertKelvinToCelcius
	cvtss2sd	%xmm0, %xmm1
	leaq	L_.str.17(%rip), %rdi
	movsd	-144(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movb	$2, %al
	callq	_printf
	movss	-44(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-28(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	movsd	%xmm0, -160(%rbp)       ## 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%eax, -164(%rbp)        ## 4-byte Spill
	callq	_convertKelvinToCelcius
	cvtss2sd	%xmm0, %xmm1
	leaq	L_.str.18(%rip), %rdi
	movsd	-160(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movb	$2, %al
	callq	_printf
	leaq	L_.str.10(%rip), %rdi
	movl	%eax, -168(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	addq	$176, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1104, %rsp             ## imm = 0x450
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	$0, -1044(%rbp)
	callq	_malloc
	movq	%rax, -1056(%rbp)
LBB15_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_14 Depth 2
	leaq	L_.str.19(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.20(%rip), %rdi
	movl	%eax, -1060(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.21(%rip), %rdi
	movl	%eax, -1064(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.22(%rip), %rdi
	movl	%eax, -1068(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.23(%rip), %rdi
	movl	%eax, -1072(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.24(%rip), %rdi
	leaq	-1045(%rbp), %rsi
	movl	%eax, -1076(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movsbl	-1045(%rbp), %ecx
	cmpl	$10, %ecx
	je	LBB15_13
## %bb.2:                               ##   in Loop: Header=BB15_1 Depth=1
	movsbl	-1045(%rbp), %eax
	movl	%eax, %ecx
	subl	$49, %ecx
	movl	%eax, -1080(%rbp)       ## 4-byte Spill
	je	LBB15_3
	jmp	LBB15_25
LBB15_25:                               ##   in Loop: Header=BB15_1 Depth=1
	movl	-1080(%rbp), %eax       ## 4-byte Reload
	subl	$50, %eax
	je	LBB15_6
	jmp	LBB15_26
LBB15_26:                               ##   in Loop: Header=BB15_1 Depth=1
	movl	-1080(%rbp), %eax       ## 4-byte Reload
	subl	$51, %eax
	je	LBB15_10
	jmp	LBB15_11
LBB15_3:                                ##   in Loop: Header=BB15_1 Depth=1
	leaq	L_.str.25(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-1040(%rbp), %rsi
	leaq	L_.str.26(%rip), %rdi
	movl	%eax, -1084(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	-1040(%rbp), %rsi
	movq	-1056(%rbp), %rdi
	movl	%eax, -1088(%rbp)       ## 4-byte Spill
	callq	_chargeFile
	movq	%rax, -1056(%rbp)
	cmpq	$0, -1056(%rbp)
	jne	LBB15_5
## %bb.4:                               ##   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_malloc
	movq	%rax, -1056(%rbp)
	movl	$0, __size(%rip)
LBB15_5:                                ##   in Loop: Header=BB15_1 Depth=1
	jmp	LBB15_12
LBB15_6:                                ##   in Loop: Header=BB15_1 Depth=1
	cmpl	$0, __size(%rip)
	jle	LBB15_8
## %bb.7:                               ##   in Loop: Header=BB15_1 Depth=1
	movq	-1056(%rbp), %rdi
	callq	_showResults
	jmp	LBB15_9
LBB15_8:                                ##   in Loop: Header=BB15_1 Depth=1
	leaq	L_.str.27(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB15_9:                                ##   in Loop: Header=BB15_1 Depth=1
	jmp	LBB15_12
LBB15_10:
	movl	$0, -1044(%rbp)
	jmp	LBB15_22
LBB15_11:                               ##   in Loop: Header=BB15_1 Depth=1
	leaq	L_.str.28(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB15_12:                               ##   in Loop: Header=BB15_1 Depth=1
	jmp	LBB15_13
LBB15_13:                               ##   in Loop: Header=BB15_1 Depth=1
	jmp	LBB15_14
LBB15_14:                               ##   Parent Loop BB15_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movsbl	-1045(%rbp), %ecx
	cmpl	$10, %ecx
	movb	%al, -1089(%rbp)        ## 1-byte Spill
	je	LBB15_17
## %bb.15:                              ##   in Loop: Header=BB15_14 Depth=2
	callq	_getchar
	xorl	%ecx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -1045(%rbp)
	movsbl	%al, %edx
	cmpl	$10, %edx
	movb	%cl, -1089(%rbp)        ## 1-byte Spill
	je	LBB15_17
## %bb.16:                              ##   in Loop: Header=BB15_14 Depth=2
	movsbl	-1045(%rbp), %eax
	cmpl	$-1, %eax
	setne	%cl
	movb	%cl, -1089(%rbp)        ## 1-byte Spill
LBB15_17:                               ##   in Loop: Header=BB15_14 Depth=2
	movb	-1089(%rbp), %al        ## 1-byte Reload
	testb	$1, %al
	jne	LBB15_18
	jmp	LBB15_19
LBB15_18:                               ##   in Loop: Header=BB15_14 Depth=2
	jmp	LBB15_14
LBB15_19:                               ##   in Loop: Header=BB15_1 Depth=1
	jmp	LBB15_20
LBB15_20:                               ##   in Loop: Header=BB15_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	LBB15_1
	jmp	LBB15_21
LBB15_21:
	movl	$0, -1044(%rbp)
LBB15_22:
	movl	-1044(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -1096(%rbp)       ## 4-byte Spill
	jne	LBB15_24
## %bb.23:
	movl	-1096(%rbp), %eax       ## 4-byte Reload
	addq	$1104, %rsp             ## imm = 0x450
	popq	%rbp
	retq
LBB15_24:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	__size                  ## @_size
.zerofill __DATA,__common,__size,4,2
	.globl	__capacity              ## @_capacity
.zerofill __DATA,__common,__capacity,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"r"

L_.str.1:                               ## @.str.1
	.asciz	"Can't open file\n"

L_.str.2:                               ## @.str.2
	.asciz	"\nError in the line number %d\n%s\nThe UNIX Time is empty, please check the line above in the file.\n"

L_.str.3:                               ## @.str.3
	.asciz	"\nError in the line number %d\n%s\nThe Temperature is empty or with a value 0, please check the line above in the file.\n"

L_.str.4:                               ## @.str.4
	.asciz	"\nError in the line number %d\n%s%s\nPlease check the line above in the file.\n"

L_.str.5:                               ## @.str.5
	.asciz	"The file has been charged.\n"

L_.str.6:                               ## @.str.6
	.asciz	"\n====================================================\n"

L_.str.7:                               ## @.str.7
	.asciz	"OSENSA Junior Software Engineer Take-fome Assignment\n"

L_.str.8:                               ## @.str.8
	.asciz	"Written by: %s\n"

L_.str.9:                               ## @.str.9
	.asciz	"Jose Hermilo Ortega Martinez"

L_.str.10:                              ## @.str.10
	.asciz	"====================================================\n"

L_.str.11:                              ## @.str.11
	.asciz	"Statistical summary of temperature data:\n"

L_.str.12:                              ## @.str.12
	.asciz	"Mean (\302\260K): %.2f \t\t Mean (\302\260C): %.2f \n"

L_.str.13:                              ## @.str.13
	.asciz	"Median (\302\260K): %.2f\t\t Median (\302\260C): %.2f \n"

L_.str.14:                              ## @.str.14
	.asciz	"Mode: N/A\n"

L_.str.15:                              ## @.str.15
	.asciz	"Mode (\302\260K): %.2f \t\t Mode (\302\260C): %.2f\n"

L_.str.16:                              ## @.str.16
	.asciz	"Max (\302\260K): %.2f\t\t Max (\302\260C): %.2f \n"

L_.str.17:                              ## @.str.17
	.asciz	"Min (\302\260K): %.2f\t\t Min (\302\260C): %.2f \n"

L_.str.18:                              ## @.str.18
	.asciz	"Stdev (\302\260K): %.2f\t\t Stdev (\302\260C): %.2f \n"

L_.str.19:                              ## @.str.19
	.asciz	"\n==== Menu ====\n"

L_.str.20:                              ## @.str.20
	.asciz	"1: Charge file\n"

L_.str.21:                              ## @.str.21
	.asciz	"2: Show Results\n"

L_.str.22:                              ## @.str.22
	.asciz	"3: Exit\n"

L_.str.23:                              ## @.str.23
	.asciz	"Choose one option (type the number): \n"

L_.str.24:                              ## @.str.24
	.asciz	"%c"

L_.str.25:                              ## @.str.25
	.asciz	"Please write the path of the file (.csv): \n"

L_.str.26:                              ## @.str.26
	.asciz	"%s"

L_.str.27:                              ## @.str.27
	.asciz	"Please charge a file to generate the report."

L_.str.28:                              ## @.str.28
	.asciz	"Wrong option, please type again the number of your option"


.subsections_via_symbols
