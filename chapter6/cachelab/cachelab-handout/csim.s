
csim-ref:     file format elf64-x86-64


Disassembly of section .init:

0000000000400950 <_init>:
  400950:	sub    $0x8,%rsp
  400954:	callq  400afc <call_gmon_start>
  400959:	add    $0x8,%rsp
  40095d:	retq   

Disassembly of section .plt:

0000000000400960 <free@plt-0x10>:
  400960:	pushq  0x20268a(%rip)        # 602ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400966:	jmpq   *0x20268c(%rip)        # 602ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40096c:	nopl   0x0(%rax)

0000000000400970 <free@plt>:
  400970:	jmpq   *0x20268a(%rip)        # 603000 <_GLOBAL_OFFSET_TABLE_+0x18>
  400976:	pushq  $0x0
  40097b:	jmpq   400960 <_init+0x10>

0000000000400980 <putchar@plt>:
  400980:	jmpq   *0x202682(%rip)        # 603008 <_GLOBAL_OFFSET_TABLE_+0x20>
  400986:	pushq  $0x1
  40098b:	jmpq   400960 <_init+0x10>

0000000000400990 <__errno_location@plt>:
  400990:	jmpq   *0x20267a(%rip)        # 603010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400996:	pushq  $0x2
  40099b:	jmpq   400960 <_init+0x10>

00000000004009a0 <puts@plt>:
  4009a0:	jmpq   *0x202672(%rip)        # 603018 <_GLOBAL_OFFSET_TABLE_+0x30>
  4009a6:	pushq  $0x3
  4009ab:	jmpq   400960 <_init+0x10>

00000000004009b0 <fclose@plt>:
  4009b0:	jmpq   *0x20266a(%rip)        # 603020 <_GLOBAL_OFFSET_TABLE_+0x38>
  4009b6:	pushq  $0x4
  4009bb:	jmpq   400960 <_init+0x10>

00000000004009c0 <__stack_chk_fail@plt>:
  4009c0:	jmpq   *0x202662(%rip)        # 603028 <_GLOBAL_OFFSET_TABLE_+0x40>
  4009c6:	pushq  $0x5
  4009cb:	jmpq   400960 <_init+0x10>

00000000004009d0 <printf@plt>:
  4009d0:	jmpq   *0x20265a(%rip)        # 603030 <_GLOBAL_OFFSET_TABLE_+0x48>
  4009d6:	pushq  $0x6
  4009db:	jmpq   400960 <_init+0x10>

00000000004009e0 <__assert_fail@plt>:
  4009e0:	jmpq   *0x202652(%rip)        # 603038 <_GLOBAL_OFFSET_TABLE_+0x50>
  4009e6:	pushq  $0x7
  4009eb:	jmpq   400960 <_init+0x10>

00000000004009f0 <pow@plt>:
  4009f0:	jmpq   *0x20264a(%rip)        # 603040 <_GLOBAL_OFFSET_TABLE_+0x58>
  4009f6:	pushq  $0x8
  4009fb:	jmpq   400960 <_init+0x10>

0000000000400a00 <__libc_start_main@plt>:
  400a00:	jmpq   *0x202642(%rip)        # 603048 <_GLOBAL_OFFSET_TABLE_+0x60>
  400a06:	pushq  $0x9
  400a0b:	jmpq   400960 <_init+0x10>

0000000000400a10 <srand@plt>:
  400a10:	jmpq   *0x20263a(%rip)        # 603050 <_GLOBAL_OFFSET_TABLE_+0x68>
  400a16:	pushq  $0xa
  400a1b:	jmpq   400960 <_init+0x10>

0000000000400a20 <fgets@plt>:
  400a20:	jmpq   *0x202632(%rip)        # 603058 <_GLOBAL_OFFSET_TABLE_+0x70>
  400a26:	pushq  $0xb
  400a2b:	jmpq   400960 <_init+0x10>

0000000000400a30 <fprintf@plt>:
  400a30:	jmpq   *0x20262a(%rip)        # 603060 <_GLOBAL_OFFSET_TABLE_+0x78>
  400a36:	pushq  $0xc
  400a3b:	jmpq   400960 <_init+0x10>

0000000000400a40 <time@plt>:
  400a40:	jmpq   *0x202622(%rip)        # 603068 <_GLOBAL_OFFSET_TABLE_+0x80>
  400a46:	pushq  $0xd
  400a4b:	jmpq   400960 <_init+0x10>

0000000000400a50 <malloc@plt>:
  400a50:	jmpq   *0x20261a(%rip)        # 603070 <_GLOBAL_OFFSET_TABLE_+0x88>
  400a56:	pushq  $0xe
  400a5b:	jmpq   400960 <_init+0x10>

0000000000400a60 <__isoc99_sscanf@plt>:
  400a60:	jmpq   *0x202612(%rip)        # 603078 <_GLOBAL_OFFSET_TABLE_+0x90>
  400a66:	pushq  $0xf
  400a6b:	jmpq   400960 <_init+0x10>

0000000000400a70 <fopen@plt>:
  400a70:	jmpq   *0x20260a(%rip)        # 603080 <_GLOBAL_OFFSET_TABLE_+0x98>
  400a76:	pushq  $0x10
  400a7b:	jmpq   400960 <_init+0x10>

0000000000400a80 <getopt@plt>:
  400a80:	jmpq   *0x202602(%rip)        # 603088 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400a86:	pushq  $0x11
  400a8b:	jmpq   400960 <_init+0x10>

0000000000400a90 <atoi@plt>:
  400a90:	jmpq   *0x2025fa(%rip)        # 603090 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400a96:	pushq  $0x12
  400a9b:	jmpq   400960 <_init+0x10>

0000000000400aa0 <exit@plt>:
  400aa0:	jmpq   *0x2025f2(%rip)        # 603098 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400aa6:	pushq  $0x13
  400aab:	jmpq   400960 <_init+0x10>

0000000000400ab0 <strerror@plt>:
  400ab0:	jmpq   *0x2025ea(%rip)        # 6030a0 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400ab6:	pushq  $0x14
  400abb:	jmpq   400960 <_init+0x10>

0000000000400ac0 <rand@plt>:
  400ac0:	jmpq   *0x2025e2(%rip)        # 6030a8 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400ac6:	pushq  $0x15
  400acb:	jmpq   400960 <_init+0x10>

Disassembly of section .text:

0000000000400ad0 <_start>:
  400ad0:	xor    %ebp,%ebp
  400ad2:	mov    %rdx,%r9
  400ad5:	pop    %rsi
  400ad6:	mov    %rsp,%rdx
  400ad9:	and    $0xfffffffffffffff0,%rsp
  400add:	push   %rax
  400ade:	push   %rsp
  400adf:	mov    $0x4018c0,%r8
  400ae6:	mov    $0x401830,%rcx
  400aed:	mov    $0x4012b3,%rdi
  400af4:	callq  400a00 <__libc_start_main@plt>
  400af9:	hlt    
  400afa:	nop
  400afb:	nop

0000000000400afc <call_gmon_start>:
  400afc:	sub    $0x8,%rsp
  400b00:	mov    0x2024d9(%rip),%rax        # 602fe0 <_DYNAMIC+0x1e0>
  400b07:	test   %rax,%rax
  400b0a:	je     400b0e <call_gmon_start+0x12>
  400b0c:	callq  *%rax
  400b0e:	add    $0x8,%rsp
  400b12:	retq   
  400b13:	nop
  400b14:	nop
  400b15:	nop
  400b16:	nop
  400b17:	nop
  400b18:	nop
  400b19:	nop
  400b1a:	nop
  400b1b:	nop
  400b1c:	nop
  400b1d:	nop
  400b1e:	nop
  400b1f:	nop

0000000000400b20 <deregister_tm_clones>:
  400b20:	mov    $0x6030cf,%eax
  400b25:	push   %rbp
  400b26:	sub    $0x6030c8,%rax
  400b2c:	cmp    $0xe,%rax
  400b30:	mov    %rsp,%rbp
  400b33:	ja     400b37 <deregister_tm_clones+0x17>
  400b35:	pop    %rbp
  400b36:	retq   
  400b37:	mov    $0x0,%eax
  400b3c:	test   %rax,%rax
  400b3f:	je     400b35 <deregister_tm_clones+0x15>
  400b41:	pop    %rbp
  400b42:	mov    $0x6030c8,%edi
  400b47:	jmpq   *%rax
  400b49:	nopl   0x0(%rax)

0000000000400b50 <register_tm_clones>:
  400b50:	mov    $0x6030c8,%eax
  400b55:	push   %rbp
  400b56:	sub    $0x6030c8,%rax
  400b5c:	sar    $0x3,%rax
  400b60:	mov    %rsp,%rbp
  400b63:	mov    %rax,%rdx
  400b66:	shr    $0x3f,%rdx
  400b6a:	add    %rdx,%rax
  400b6d:	sar    %rax
  400b70:	jne    400b74 <register_tm_clones+0x24>
  400b72:	pop    %rbp
  400b73:	retq   
  400b74:	mov    $0x0,%edx
  400b79:	test   %rdx,%rdx
  400b7c:	je     400b72 <register_tm_clones+0x22>
  400b7e:	pop    %rbp
  400b7f:	mov    %rax,%rsi
  400b82:	mov    $0x6030c8,%edi
  400b87:	jmpq   *%rdx
  400b89:	nopl   0x0(%rax)

0000000000400b90 <__do_global_dtors_aux>:
  400b90:	cmpb   $0x0,0x202559(%rip)        # 6030f0 <completed.6976>
  400b97:	jne    400baa <__do_global_dtors_aux+0x1a>
  400b99:	push   %rbp
  400b9a:	mov    %rsp,%rbp
  400b9d:	callq  400b20 <deregister_tm_clones>
  400ba2:	pop    %rbp
  400ba3:	movb   $0x1,0x202546(%rip)        # 6030f0 <completed.6976>
  400baa:	repz retq 
  400bac:	nopl   0x0(%rax)

0000000000400bb0 <frame_dummy>:
  400bb0:	cmpq   $0x0,0x202240(%rip)        # 602df8 <__JCR_END__>
  400bb8:	je     400bd8 <frame_dummy+0x28>
  400bba:	mov    $0x0,%eax
  400bbf:	test   %rax,%rax
  400bc2:	je     400bd8 <frame_dummy+0x28>
  400bc4:	push   %rbp
  400bc5:	mov    $0x602df8,%edi
  400bca:	mov    %rsp,%rbp
  400bcd:	callq  *%rax
  400bcf:	pop    %rbp
  400bd0:	jmpq   400b50 <register_tm_clones>
  400bd5:	nopl   (%rax)
  400bd8:	jmpq   400b50 <register_tm_clones>
  400bdd:	nop
  400bde:	nop
  400bdf:	nop

0000000000400be0 <initCache>:
  400be0:	push   %rbp
  400be1:	mov    %rsp,%rbp
  400be4:	push   %rbx
  400be5:	sub    $0x28,%rsp
  400be9:	mov    0x202541(%rip),%eax        # 603130 <S>
  400bef:	cltq   
  400bf1:	shl    $0x3,%rax
  400bf5:	mov    %rax,%rdi
  400bf8:	callq  400a50 <malloc@plt>
  400bfd:	mov    %rax,0x202524(%rip)        # 603128 <cache>
  400c04:	movl   $0x0,-0x18(%rbp)
  400c0b:	jmpq   400d03 <initCache+0x123>
  400c10:	mov    0x202511(%rip),%rax        # 603128 <cache>
  400c17:	mov    -0x18(%rbp),%edx
  400c1a:	movslq %edx,%rdx
  400c1d:	shl    $0x3,%rdx
  400c21:	lea    (%rax,%rdx,1),%rbx
  400c25:	mov    0x2024d9(%rip),%eax        # 603104 <E>
  400c2b:	movslq %eax,%rdx
  400c2e:	mov    %rdx,%rax
  400c31:	add    %rax,%rax
  400c34:	add    %rdx,%rax
  400c37:	shl    $0x3,%rax
  400c3b:	mov    %rax,%rdi
  400c3e:	callq  400a50 <malloc@plt>
  400c43:	mov    %rax,(%rbx)
  400c46:	movl   $0x0,-0x14(%rbp)
  400c4d:	jmpq   400cf0 <initCache+0x110>
  400c52:	mov    0x2024cf(%rip),%rax        # 603128 <cache>
  400c59:	mov    -0x18(%rbp),%edx
  400c5c:	movslq %edx,%rdx
  400c5f:	shl    $0x3,%rdx
  400c63:	add    %rdx,%rax
  400c66:	mov    (%rax),%rcx
  400c69:	mov    -0x14(%rbp),%eax
  400c6c:	movslq %eax,%rdx
  400c6f:	mov    %rdx,%rax
  400c72:	add    %rax,%rax
  400c75:	add    %rdx,%rax
  400c78:	shl    $0x3,%rax
  400c7c:	add    %rcx,%rax
  400c7f:	movb   $0x0,(%rax)
  400c82:	mov    0x20249f(%rip),%rax        # 603128 <cache>
  400c89:	mov    -0x18(%rbp),%edx
  400c8c:	movslq %edx,%rdx
  400c8f:	shl    $0x3,%rdx
  400c93:	add    %rdx,%rax
  400c96:	mov    (%rax),%rcx
  400c99:	mov    -0x14(%rbp),%eax
  400c9c:	movslq %eax,%rdx
  400c9f:	mov    %rdx,%rax
  400ca2:	add    %rax,%rax
  400ca5:	add    %rdx,%rax
  400ca8:	shl    $0x3,%rax
  400cac:	add    %rcx,%rax
  400caf:	movq   $0x0,0x8(%rax)
  400cb7:	mov    0x20246a(%rip),%rax        # 603128 <cache>
  400cbe:	mov    -0x18(%rbp),%edx
  400cc1:	movslq %edx,%rdx
  400cc4:	shl    $0x3,%rdx
  400cc8:	add    %rdx,%rax
  400ccb:	mov    (%rax),%rcx
  400cce:	mov    -0x14(%rbp),%eax
  400cd1:	movslq %eax,%rdx
  400cd4:	mov    %rdx,%rax
  400cd7:	add    %rax,%rax
  400cda:	add    %rdx,%rax
  400cdd:	shl    $0x3,%rax
  400ce1:	add    %rcx,%rax
  400ce4:	movq   $0x0,0x10(%rax)
  400cec:	addl   $0x1,-0x14(%rbp)
  400cf0:	mov    0x20240e(%rip),%eax        # 603104 <E>
  400cf6:	cmp    %eax,-0x14(%rbp)
  400cf9:	jl     400c52 <initCache+0x72>
  400cff:	addl   $0x1,-0x18(%rbp)
  400d03:	mov    0x202427(%rip),%eax        # 603130 <S>
  400d09:	cmp    %eax,-0x18(%rbp)
  400d0c:	jl     400c10 <initCache+0x30>
  400d12:	mov    0x2023e4(%rip),%eax        # 6030fc <s>
  400d18:	cvtsi2sd %eax,%xmm0
  400d1c:	movabs $0x4000000000000000,%rax
  400d26:	movapd %xmm0,%xmm1
  400d2a:	mov    %rax,-0x28(%rbp)
  400d2e:	movsd  -0x28(%rbp),%xmm0
  400d33:	callq  4009f0 <pow@plt>
  400d38:	movsd  0xf30(%rip),%xmm1        # 401c70 <_IO_stdin_used+0x3a0>
  400d40:	subsd  %xmm1,%xmm0
  400d44:	ucomisd 0xf2c(%rip),%xmm0        # 401c78 <_IO_stdin_used+0x3a8>
  400d4c:	jae    400d55 <initCache+0x175>
  400d4e:	cvttsd2si %xmm0,%rax
  400d53:	jmp    400d73 <initCache+0x193>
  400d55:	movsd  0xf1b(%rip),%xmm1        # 401c78 <_IO_stdin_used+0x3a8>
  400d5d:	subsd  %xmm1,%xmm0
  400d61:	cvttsd2si %xmm0,%rax
  400d66:	movabs $0x8000000000000000,%rdx
  400d70:	xor    %rdx,%rax
  400d73:	mov    %rax,0x2023be(%rip)        # 603138 <set_index_mask>
  400d7a:	add    $0x28,%rsp
  400d7e:	pop    %rbx
  400d7f:	pop    %rbp
  400d80:	retq   

0000000000400d81 <freeCache>:
  400d81:	push   %rbp
  400d82:	mov    %rsp,%rbp
  400d85:	sub    $0x10,%rsp
  400d89:	movl   $0x0,-0x4(%rbp)
  400d90:	jmp    400db5 <freeCache+0x34>
  400d92:	mov    0x20238f(%rip),%rax        # 603128 <cache>
  400d99:	mov    -0x4(%rbp),%edx
  400d9c:	movslq %edx,%rdx
  400d9f:	shl    $0x3,%rdx
  400da3:	add    %rdx,%rax
  400da6:	mov    (%rax),%rax
  400da9:	mov    %rax,%rdi
  400dac:	callq  400970 <free@plt>
  400db1:	addl   $0x1,-0x4(%rbp)
  400db5:	mov    0x202375(%rip),%eax        # 603130 <S>
  400dbb:	cmp    %eax,-0x4(%rbp)
  400dbe:	jl     400d92 <freeCache+0x11>
  400dc0:	mov    0x202361(%rip),%rax        # 603128 <cache>
  400dc7:	mov    %rax,%rdi
  400dca:	callq  400970 <free@plt>
  400dcf:	leaveq 
  400dd0:	retq   

0000000000400dd1 <accessData>:
  400dd1:	push   %rbp
  400dd2:	mov    %rsp,%rbp
  400dd5:	sub    $0x40,%rsp
  400dd9:	mov    %rdi,-0x38(%rbp)
  400ddd:	movq   $0xffffffffffffffff,-0x20(%rbp)
  400de5:	movl   $0x0,-0x24(%rbp)
  400dec:	mov    0x20230e(%rip),%eax        # 603100 <b>
  400df2:	mov    -0x38(%rbp),%rdx
  400df6:	mov    %eax,%ecx
  400df8:	shr    %cl,%rdx
  400dfb:	mov    0x202336(%rip),%rax        # 603138 <set_index_mask>
  400e02:	and    %rdx,%rax
  400e05:	mov    %rax,-0x18(%rbp)
  400e09:	mov    0x2022ed(%rip),%edx        # 6030fc <s>
  400e0f:	mov    0x2022eb(%rip),%eax        # 603100 <b>
  400e15:	add    %edx,%eax
  400e17:	mov    -0x38(%rbp),%rdx
  400e1b:	mov    %eax,%ecx
  400e1d:	shr    %cl,%rdx
  400e20:	mov    %rdx,%rax
  400e23:	mov    %rax,-0x10(%rbp)
  400e27:	mov    0x2022fa(%rip),%rax        # 603128 <cache>
  400e2e:	mov    -0x18(%rbp),%rdx
  400e32:	shl    $0x3,%rdx
  400e36:	add    %rdx,%rax
  400e39:	mov    (%rax),%rax
  400e3c:	mov    %rax,-0x8(%rbp)
  400e40:	movl   $0x0,-0x28(%rbp)
  400e47:	jmpq   400f00 <accessData+0x12f>
  400e4c:	mov    -0x28(%rbp),%eax
  400e4f:	movslq %eax,%rdx
  400e52:	mov    %rdx,%rax
  400e55:	add    %rax,%rax
  400e58:	add    %rdx,%rax
  400e5b:	shl    $0x3,%rax
  400e5f:	mov    %rax,%rdx
  400e62:	mov    -0x8(%rbp),%rax
  400e66:	add    %rdx,%rax
  400e69:	mov    0x8(%rax),%rax
  400e6d:	cmp    -0x10(%rbp),%rax
  400e71:	jne    400efc <accessData+0x12b>
  400e77:	mov    -0x28(%rbp),%eax
  400e7a:	movslq %eax,%rdx
  400e7d:	mov    %rdx,%rax
  400e80:	add    %rax,%rax
  400e83:	add    %rdx,%rax
  400e86:	shl    $0x3,%rax
  400e8a:	mov    %rax,%rdx
  400e8d:	mov    -0x8(%rbp),%rax
  400e91:	add    %rdx,%rax
  400e94:	movzbl (%rax),%eax
  400e97:	test   %al,%al
  400e99:	je     400efc <accessData+0x12b>
  400e9b:	mov    0x202273(%rip),%eax        # 603114 <hit_count>
  400ea1:	add    $0x1,%eax
  400ea4:	mov    %eax,0x20226a(%rip)        # 603114 <hit_count>
  400eaa:	mov    0x202248(%rip),%eax        # 6030f8 <verbosity>
  400eb0:	test   %eax,%eax
  400eb2:	je     400ec3 <accessData+0xf2>
  400eb4:	mov    $0x4018d8,%edi
  400eb9:	mov    $0x0,%eax
  400ebe:	callq  4009d0 <printf@plt>
  400ec3:	mov    -0x28(%rbp),%eax
  400ec6:	movslq %eax,%rdx
  400ec9:	mov    %rdx,%rax
  400ecc:	add    %rax,%rax
  400ecf:	add    %rdx,%rax
  400ed2:	shl    $0x3,%rax
  400ed6:	mov    %rax,%rdx
  400ed9:	mov    -0x8(%rbp),%rax
  400edd:	lea    (%rdx,%rax,1),%rcx
  400ee1:	mov    0x2021d8(%rip),%rax        # 6030c0 <lru_counter>
  400ee8:	lea    0x1(%rax),%rdx
  400eec:	mov    %rdx,0x2021cd(%rip)        # 6030c0 <lru_counter>
  400ef3:	mov    %rax,0x10(%rcx)
  400ef7:	jmpq   40105a <accessData+0x289>
  400efc:	addl   $0x1,-0x28(%rbp)
  400f00:	mov    0x2021fe(%rip),%eax        # 603104 <E>
  400f06:	cmp    %eax,-0x28(%rbp)
  400f09:	jl     400e4c <accessData+0x7b>
  400f0f:	mov    0x2021fb(%rip),%eax        # 603110 <miss_count>
  400f15:	add    $0x1,%eax
  400f18:	mov    %eax,0x2021f2(%rip)        # 603110 <miss_count>
  400f1e:	mov    0x2021d4(%rip),%eax        # 6030f8 <verbosity>
  400f24:	test   %eax,%eax
  400f26:	je     400f37 <accessData+0x166>
  400f28:	mov    $0x4018dd,%edi
  400f2d:	mov    $0x0,%eax
  400f32:	callq  4009d0 <printf@plt>
  400f37:	movl   $0x0,-0x28(%rbp)
  400f3e:	jmp    400f96 <accessData+0x1c5>
  400f40:	mov    -0x28(%rbp),%eax
  400f43:	movslq %eax,%rdx
  400f46:	mov    %rdx,%rax
  400f49:	add    %rax,%rax
  400f4c:	add    %rdx,%rax
  400f4f:	shl    $0x3,%rax
  400f53:	mov    %rax,%rdx
  400f56:	mov    -0x8(%rbp),%rax
  400f5a:	add    %rdx,%rax
  400f5d:	mov    0x10(%rax),%rax
  400f61:	cmp    -0x20(%rbp),%rax
  400f65:	jae    400f92 <accessData+0x1c1>
  400f67:	mov    -0x28(%rbp),%eax
  400f6a:	mov    %eax,-0x24(%rbp)
  400f6d:	mov    -0x28(%rbp),%eax
  400f70:	movslq %eax,%rdx
  400f73:	mov    %rdx,%rax
  400f76:	add    %rax,%rax
  400f79:	add    %rdx,%rax
  400f7c:	shl    $0x3,%rax
  400f80:	mov    %rax,%rdx
  400f83:	mov    -0x8(%rbp),%rax
  400f87:	add    %rdx,%rax
  400f8a:	mov    0x10(%rax),%rax
  400f8e:	mov    %rax,-0x20(%rbp)
  400f92:	addl   $0x1,-0x28(%rbp)
  400f96:	mov    0x202168(%rip),%eax        # 603104 <E>
  400f9c:	cmp    %eax,-0x28(%rbp)
  400f9f:	jl     400f40 <accessData+0x16f>
  400fa1:	mov    -0x24(%rbp),%edx
  400fa4:	mov    %rdx,%rax
  400fa7:	add    %rax,%rax
  400faa:	add    %rdx,%rax
  400fad:	shl    $0x3,%rax
  400fb1:	mov    %rax,%rdx
  400fb4:	mov    -0x8(%rbp),%rax
  400fb8:	add    %rdx,%rax
  400fbb:	movzbl (%rax),%eax
  400fbe:	test   %al,%al
  400fc0:	je     400fea <accessData+0x219>
  400fc2:	mov    0x202150(%rip),%eax        # 603118 <eviction_count>
  400fc8:	add    $0x1,%eax
  400fcb:	mov    %eax,0x202147(%rip)        # 603118 <eviction_count>
  400fd1:	mov    0x202121(%rip),%eax        # 6030f8 <verbosity>
  400fd7:	test   %eax,%eax
  400fd9:	je     400fea <accessData+0x219>
  400fdb:	mov    $0x4018e3,%edi
  400fe0:	mov    $0x0,%eax
  400fe5:	callq  4009d0 <printf@plt>
  400fea:	mov    -0x24(%rbp),%edx
  400fed:	mov    %rdx,%rax
  400ff0:	add    %rax,%rax
  400ff3:	add    %rdx,%rax
  400ff6:	shl    $0x3,%rax
  400ffa:	mov    %rax,%rdx
  400ffd:	mov    -0x8(%rbp),%rax
  401001:	add    %rdx,%rax
  401004:	movb   $0x1,(%rax)
  401007:	mov    -0x24(%rbp),%edx
  40100a:	mov    %rdx,%rax
  40100d:	add    %rax,%rax
  401010:	add    %rdx,%rax
  401013:	shl    $0x3,%rax
  401017:	mov    %rax,%rdx
  40101a:	mov    -0x8(%rbp),%rax
  40101e:	add    %rax,%rdx
  401021:	mov    -0x10(%rbp),%rax
  401025:	mov    %rax,0x8(%rdx)
  401029:	mov    -0x24(%rbp),%edx
  40102c:	mov    %rdx,%rax
  40102f:	add    %rax,%rax
  401032:	add    %rdx,%rax
  401035:	shl    $0x3,%rax
  401039:	mov    %rax,%rdx
  40103c:	mov    -0x8(%rbp),%rax
  401040:	lea    (%rdx,%rax,1),%rcx
  401044:	mov    0x202075(%rip),%rax        # 6030c0 <lru_counter>
  40104b:	lea    0x1(%rax),%rdx
  40104f:	mov    %rdx,0x20206a(%rip)        # 6030c0 <lru_counter>
  401056:	mov    %rax,0x10(%rcx)
  40105a:	leaveq 
  40105b:	retq   

000000000040105c <replayTrace>:
  40105c:	push   %rbp
  40105d:	mov    %rsp,%rbp
  401060:	sub    $0x420,%rsp
  401067:	mov    %rdi,-0x418(%rbp)
  40106e:	mov    %fs:0x28,%rax
  401077:	mov    %rax,-0x8(%rbp)
  40107b:	xor    %eax,%eax
  40107d:	movq   $0x0,-0x400(%rbp)
  401088:	movl   $0x0,-0x404(%rbp)
  401092:	mov    -0x418(%rbp),%rax
  401099:	mov    $0x4018ed,%esi
  40109e:	mov    %rax,%rdi
  4010a1:	callq  400a70 <fopen@plt>
  4010a6:	mov    %rax,-0x3f8(%rbp)
  4010ad:	cmpq   $0x0,-0x3f8(%rbp)
  4010b5:	jne    4010f2 <replayTrace+0x96>
  4010b7:	callq  400990 <__errno_location@plt>
  4010bc:	mov    (%rax),%eax
  4010be:	mov    %eax,%edi
  4010c0:	callq  400ab0 <strerror@plt>
  4010c5:	mov    %rax,%rcx
  4010c8:	mov    0x202019(%rip),%rax        # 6030e8 <stderr@@GLIBC_2.2.5>
  4010cf:	mov    -0x418(%rbp),%rdx
  4010d6:	mov    $0x4018ef,%esi
  4010db:	mov    %rax,%rdi
  4010de:	mov    $0x0,%eax
  4010e3:	callq  400a30 <fprintf@plt>
  4010e8:	mov    $0x1,%edi
  4010ed:	callq  400aa0 <exit@plt>
  4010f2:	jmpq   4011b9 <replayTrace+0x15d>
  4010f7:	movzbl -0x3ef(%rbp),%eax
  4010fe:	cmp    $0x53,%al
  401100:	je     40111c <replayTrace+0xc0>
  401102:	movzbl -0x3ef(%rbp),%eax
  401109:	cmp    $0x4c,%al
  40110b:	je     40111c <replayTrace+0xc0>
  40110d:	movzbl -0x3ef(%rbp),%eax
  401114:	cmp    $0x4d,%al
  401116:	jne    4011b9 <replayTrace+0x15d>
  40111c:	lea    -0x404(%rbp),%rdx
  401123:	lea    -0x400(%rbp),%rax
  40112a:	lea    -0x3f0(%rbp),%rcx
  401131:	lea    0x3(%rcx),%rdi
  401135:	mov    %rdx,%rcx
  401138:	mov    %rax,%rdx
  40113b:	mov    $0x4018f7,%esi
  401140:	mov    $0x0,%eax
  401145:	callq  400a60 <__isoc99_sscanf@plt>
  40114a:	mov    0x201fa8(%rip),%eax        # 6030f8 <verbosity>
  401150:	test   %eax,%eax
  401152:	je     40117c <replayTrace+0x120>
  401154:	mov    -0x404(%rbp),%ecx
  40115a:	mov    -0x400(%rbp),%rdx
  401161:	movzbl -0x3ef(%rbp),%eax
  401168:	movsbl %al,%eax
  40116b:	mov    %eax,%esi
  40116d:	mov    $0x4018ff,%edi
  401172:	mov    $0x0,%eax
  401177:	callq  4009d0 <printf@plt>
  40117c:	mov    -0x400(%rbp),%rax
  401183:	mov    %rax,%rdi
  401186:	callq  400dd1 <accessData>
  40118b:	movzbl -0x3ef(%rbp),%eax
  401192:	cmp    $0x4d,%al
  401194:	jne    4011a5 <replayTrace+0x149>
  401196:	mov    -0x400(%rbp),%rax
  40119d:	mov    %rax,%rdi
  4011a0:	callq  400dd1 <accessData>
  4011a5:	mov    0x201f4d(%rip),%eax        # 6030f8 <verbosity>
  4011ab:	test   %eax,%eax
  4011ad:	je     4011b9 <replayTrace+0x15d>
  4011af:	mov    $0xa,%edi
  4011b4:	callq  400980 <putchar@plt>
  4011b9:	mov    -0x3f8(%rbp),%rdx
  4011c0:	lea    -0x3f0(%rbp),%rax
  4011c7:	mov    $0x3e8,%esi
  4011cc:	mov    %rax,%rdi
  4011cf:	callq  400a20 <fgets@plt>
  4011d4:	test   %rax,%rax
  4011d7:	jne    4010f7 <replayTrace+0x9b>
  4011dd:	mov    -0x3f8(%rbp),%rax
  4011e4:	mov    %rax,%rdi
  4011e7:	callq  4009b0 <fclose@plt>
  4011ec:	mov    -0x8(%rbp),%rax
  4011f0:	xor    %fs:0x28,%rax
  4011f9:	je     401200 <replayTrace+0x1a4>
  4011fb:	callq  4009c0 <__stack_chk_fail@plt>
  401200:	leaveq 
  401201:	retq   

0000000000401202 <printUsage>:
  401202:	push   %rbp
  401203:	mov    %rsp,%rbp
  401206:	sub    $0x10,%rsp
  40120a:	mov    %rdi,-0x8(%rbp)
  40120e:	mov    -0x8(%rbp),%rax
  401212:	mov    (%rax),%rax
  401215:	mov    %rax,%rsi
  401218:	mov    $0x401910,%edi
  40121d:	mov    $0x0,%eax
  401222:	callq  4009d0 <printf@plt>
  401227:	mov    $0x401946,%edi
  40122c:	callq  4009a0 <puts@plt>
  401231:	mov    $0x401950,%edi
  401236:	callq  4009a0 <puts@plt>
  40123b:	mov    $0x401978,%edi
  401240:	callq  4009a0 <puts@plt>
  401245:	mov    $0x4019a0,%edi
  40124a:	callq  4009a0 <puts@plt>
  40124f:	mov    $0x4019c8,%edi
  401254:	callq  4009a0 <puts@plt>
  401259:	mov    $0x4019f0,%edi
  40125e:	callq  4009a0 <puts@plt>
  401263:	mov    $0x401a1a,%edi
  401268:	callq  4009a0 <puts@plt>
  40126d:	mov    $0x401a33,%edi
  401272:	callq  4009a0 <puts@plt>
  401277:	mov    -0x8(%rbp),%rax
  40127b:	mov    (%rax),%rax
  40127e:	mov    %rax,%rsi
  401281:	mov    $0x401a40,%edi
  401286:	mov    $0x0,%eax
  40128b:	callq  4009d0 <printf@plt>
  401290:	mov    -0x8(%rbp),%rax
  401294:	mov    (%rax),%rax
  401297:	mov    %rax,%rsi
  40129a:	mov    $0x401a70,%edi
  40129f:	mov    $0x0,%eax
  4012a4:	callq  4009d0 <printf@plt>
  4012a9:	mov    $0x0,%edi
  4012ae:	callq  400aa0 <exit@plt>

00000000004012b3 <main>:
  4012b3:	push   %rbp
  4012b4:	mov    %rsp,%rbp
  4012b7:	sub    $0x30,%rsp
  4012bb:	mov    %edi,-0x14(%rbp)
  4012be:	mov    %rsi,-0x20(%rbp)
  4012c2:	jmpq   401370 <main+0xbd>
  4012c7:	movsbl -0x1(%rbp),%eax
  4012cb:	sub    $0x45,%eax
  4012ce:	cmp    $0x31,%eax
  4012d1:	ja     40135a <main+0xa7>
  4012d7:	mov    %eax,%eax
  4012d9:	mov    0x401ae0(,%rax,8),%rax
  4012e1:	jmpq   *%rax
  4012e3:	mov    0x201df6(%rip),%rax        # 6030e0 <optarg@@GLIBC_2.2.5>
  4012ea:	mov    %rax,%rdi
  4012ed:	callq  400a90 <atoi@plt>
  4012f2:	mov    %eax,0x201e04(%rip)        # 6030fc <s>
  4012f8:	jmp    401370 <main+0xbd>
  4012fa:	mov    0x201ddf(%rip),%rax        # 6030e0 <optarg@@GLIBC_2.2.5>
  401301:	mov    %rax,%rdi
  401304:	callq  400a90 <atoi@plt>
  401309:	mov    %eax,0x201df5(%rip)        # 603104 <E>
  40130f:	jmp    401370 <main+0xbd>
  401311:	mov    0x201dc8(%rip),%rax        # 6030e0 <optarg@@GLIBC_2.2.5>
  401318:	mov    %rax,%rdi
  40131b:	callq  400a90 <atoi@plt>
  401320:	mov    %eax,0x201dda(%rip)        # 603100 <b>
  401326:	jmp    401370 <main+0xbd>
  401328:	mov    0x201db1(%rip),%rax        # 6030e0 <optarg@@GLIBC_2.2.5>
  40132f:	mov    %rax,0x201dd2(%rip)        # 603108 <trace_file>
  401336:	jmp    401370 <main+0xbd>
  401338:	movl   $0x1,0x201db6(%rip)        # 6030f8 <verbosity>
  401342:	jmp    401370 <main+0xbd>
  401344:	mov    -0x20(%rbp),%rax
  401348:	mov    %rax,%rdi
  40134b:	callq  401202 <printUsage>
  401350:	mov    $0x0,%edi
  401355:	callq  400aa0 <exit@plt>
  40135a:	mov    -0x20(%rbp),%rax
  40135e:	mov    %rax,%rdi
  401361:	callq  401202 <printUsage>
  401366:	mov    $0x1,%edi
  40136b:	callq  400aa0 <exit@plt>
  401370:	mov    -0x20(%rbp),%rcx
  401374:	mov    -0x14(%rbp),%eax
  401377:	mov    $0x401aa3,%edx
  40137c:	mov    %rcx,%rsi
  40137f:	mov    %eax,%edi
  401381:	callq  400a80 <getopt@plt>
  401386:	mov    %al,-0x1(%rbp)
  401389:	cmpb   $0xff,-0x1(%rbp)
  40138d:	jne    4012c7 <main+0x14>
  401393:	mov    0x201d63(%rip),%eax        # 6030fc <s>
  401399:	test   %eax,%eax
  40139b:	je     4013bd <main+0x10a>
  40139d:	mov    0x201d61(%rip),%eax        # 603104 <E>
  4013a3:	test   %eax,%eax
  4013a5:	je     4013bd <main+0x10a>
  4013a7:	mov    0x201d53(%rip),%eax        # 603100 <b>
  4013ad:	test   %eax,%eax
  4013af:	je     4013bd <main+0x10a>
  4013b1:	mov    0x201d50(%rip),%rax        # 603108 <trace_file>
  4013b8:	test   %rax,%rax
  4013bb:	jne    4013ec <main+0x139>
  4013bd:	mov    -0x20(%rbp),%rax
  4013c1:	mov    (%rax),%rax
  4013c4:	mov    %rax,%rsi
  4013c7:	mov    $0x401ab0,%edi
  4013cc:	mov    $0x0,%eax
  4013d1:	callq  4009d0 <printf@plt>
  4013d6:	mov    -0x20(%rbp),%rax
  4013da:	mov    %rax,%rdi
  4013dd:	callq  401202 <printUsage>
  4013e2:	mov    $0x1,%edi
  4013e7:	callq  400aa0 <exit@plt>
  4013ec:	mov    0x201d0a(%rip),%eax        # 6030fc <s>
  4013f2:	cvtsi2sd %eax,%xmm0
  4013f6:	movabs $0x4000000000000000,%rax
  401400:	movapd %xmm0,%xmm1
  401404:	mov    %rax,-0x28(%rbp)
  401408:	movsd  -0x28(%rbp),%xmm0
  40140d:	callq  4009f0 <pow@plt>
  401412:	cvttsd2si %xmm0,%rax
  401417:	mov    %eax,0x201d13(%rip)        # 603130 <S>
  40141d:	mov    0x201cdd(%rip),%eax        # 603100 <b>
  401423:	cvtsi2sd %eax,%xmm0
  401427:	movabs $0x4000000000000000,%rax
  401431:	movapd %xmm0,%xmm1
  401435:	mov    %rax,-0x28(%rbp)
  401439:	movsd  -0x28(%rbp),%xmm0
  40143e:	callq  4009f0 <pow@plt>
  401443:	cvttsd2si %xmm0,%rax
  401448:	mov    %eax,0x201cd2(%rip)        # 603120 <B>
  40144e:	mov    $0x0,%eax
  401453:	callq  400be0 <initCache>
  401458:	mov    0x201ca9(%rip),%rax        # 603108 <trace_file>
  40145f:	mov    %rax,%rdi
  401462:	callq  40105c <replayTrace>
  401467:	mov    $0x0,%eax
  40146c:	callq  400d81 <freeCache>
  401471:	mov    0x201ca1(%rip),%edx        # 603118 <eviction_count>
  401477:	mov    0x201c93(%rip),%ecx        # 603110 <miss_count>
  40147d:	mov    0x201c91(%rip),%eax        # 603114 <hit_count>
  401483:	mov    %ecx,%esi
  401485:	mov    %eax,%edi
  401487:	callq  401494 <printSummary>
  40148c:	mov    $0x0,%eax
  401491:	leaveq 
  401492:	retq   
  401493:	nop

0000000000401494 <printSummary>:
  401494:	push   %rbp
  401495:	mov    %rsp,%rbp
  401498:	sub    $0x20,%rsp
  40149c:	mov    %edi,-0x14(%rbp)
  40149f:	mov    %esi,-0x18(%rbp)
  4014a2:	mov    %edx,-0x1c(%rbp)
  4014a5:	mov    -0x1c(%rbp),%ecx
  4014a8:	mov    -0x18(%rbp),%edx
  4014ab:	mov    -0x14(%rbp),%eax
  4014ae:	mov    %eax,%esi
  4014b0:	mov    $0x401c80,%edi
  4014b5:	mov    $0x0,%eax
  4014ba:	callq  4009d0 <printf@plt>
  4014bf:	mov    $0x401ca0,%esi
  4014c4:	mov    $0x401ca2,%edi
  4014c9:	callq  400a70 <fopen@plt>
  4014ce:	mov    %rax,-0x8(%rbp)
  4014d2:	cmpq   $0x0,-0x8(%rbp)
  4014d7:	jne    4014f2 <printSummary+0x5e>
  4014d9:	mov    $0x401ccf,%ecx
  4014de:	mov    $0x15,%edx
  4014e3:	mov    $0x401cb0,%esi
  4014e8:	mov    $0x401cbb,%edi
  4014ed:	callq  4009e0 <__assert_fail@plt>
  4014f2:	mov    -0x1c(%rbp),%esi
  4014f5:	mov    -0x18(%rbp),%ecx
  4014f8:	mov    -0x14(%rbp),%edx
  4014fb:	mov    -0x8(%rbp),%rax
  4014ff:	mov    %esi,%r8d
  401502:	mov    $0x401cc5,%esi
  401507:	mov    %rax,%rdi
  40150a:	mov    $0x0,%eax
  40150f:	callq  400a30 <fprintf@plt>
  401514:	mov    -0x8(%rbp),%rax
  401518:	mov    %rax,%rdi
  40151b:	callq  4009b0 <fclose@plt>
  401520:	leaveq 
  401521:	retq   

0000000000401522 <initMatrix>:
  401522:	push   %rbp
  401523:	mov    %rsp,%rbp
  401526:	push   %r13
  401528:	push   %r12
  40152a:	push   %rbx
  40152b:	sub    $0x48,%rsp
  40152f:	mov    %edi,-0x44(%rbp)
  401532:	mov    %esi,-0x48(%rbp)
  401535:	mov    %rdx,-0x50(%rbp)
  401539:	mov    %rcx,-0x58(%rbp)
  40153d:	mov    -0x44(%rbp),%ebx
  401540:	movslq %ebx,%rax
  401543:	sub    $0x1,%rax
  401547:	mov    %rax,-0x30(%rbp)
  40154b:	movslq %ebx,%rax
  40154e:	mov    %rax,%r10
  401551:	mov    $0x0,%r11d
  401557:	mov    -0x48(%rbp),%r12d
  40155b:	movslq %r12d,%rax
  40155e:	sub    $0x1,%rax
  401562:	mov    %rax,-0x28(%rbp)
  401566:	movslq %r12d,%rax
  401569:	mov    %rax,%r8
  40156c:	mov    $0x0,%r9d
  401572:	mov    $0x0,%edi
  401577:	callq  400a40 <time@plt>
  40157c:	mov    %eax,%edi
  40157e:	callq  400a10 <srand@plt>
  401583:	movl   $0x0,-0x38(%rbp)
  40158a:	jmp    4015ff <initMatrix+0xdd>
  40158c:	movl   $0x0,-0x34(%rbp)
  401593:	jmp    4015f3 <initMatrix+0xd1>
  401595:	mov    -0x38(%rbp),%eax
  401598:	movslq %eax,%rdx
  40159b:	movslq %ebx,%rax
  40159e:	imul   %rdx,%rax
  4015a2:	lea    0x0(,%rax,4),%rdx
  4015aa:	mov    -0x50(%rbp),%rax
  4015ae:	lea    (%rdx,%rax,1),%r13
  4015b2:	callq  400ac0 <rand@plt>
  4015b7:	mov    -0x34(%rbp),%edx
  4015ba:	movslq %edx,%rdx
  4015bd:	mov    %eax,0x0(%r13,%rdx,4)
  4015c2:	mov    -0x34(%rbp),%eax
  4015c5:	movslq %eax,%rdx
  4015c8:	movslq %r12d,%rax
  4015cb:	imul   %rdx,%rax
  4015cf:	lea    0x0(,%rax,4),%rdx
  4015d7:	mov    -0x58(%rbp),%rax
  4015db:	lea    (%rdx,%rax,1),%r13
  4015df:	callq  400ac0 <rand@plt>
  4015e4:	mov    -0x38(%rbp),%edx
  4015e7:	movslq %edx,%rdx
  4015ea:	mov    %eax,0x0(%r13,%rdx,4)
  4015ef:	addl   $0x1,-0x34(%rbp)
  4015f3:	mov    -0x34(%rbp),%eax
  4015f6:	cmp    -0x44(%rbp),%eax
  4015f9:	jl     401595 <initMatrix+0x73>
  4015fb:	addl   $0x1,-0x38(%rbp)
  4015ff:	mov    -0x38(%rbp),%eax
  401602:	cmp    -0x48(%rbp),%eax
  401605:	jl     40158c <initMatrix+0x6a>
  401607:	add    $0x48,%rsp
  40160b:	pop    %rbx
  40160c:	pop    %r12
  40160e:	pop    %r13
  401610:	pop    %rbp
  401611:	retq   

0000000000401612 <randMatrix>:
  401612:	push   %rbp
  401613:	mov    %rsp,%rbp
  401616:	push   %r12
  401618:	push   %rbx
  401619:	sub    $0x20,%rsp
  40161d:	mov    %edi,-0x24(%rbp)
  401620:	mov    %esi,-0x28(%rbp)
  401623:	mov    %rdx,-0x30(%rbp)
  401627:	mov    -0x24(%rbp),%ebx
  40162a:	movslq %ebx,%rax
  40162d:	sub    $0x1,%rax
  401631:	mov    %rax,-0x18(%rbp)
  401635:	movslq %ebx,%rax
  401638:	mov    %rax,%r8
  40163b:	mov    $0x0,%r9d
  401641:	mov    $0x0,%edi
  401646:	callq  400a40 <time@plt>
  40164b:	mov    %eax,%edi
  40164d:	callq  400a10 <srand@plt>
  401652:	movl   $0x0,-0x20(%rbp)
  401659:	jmp    4016a0 <randMatrix+0x8e>
  40165b:	movl   $0x0,-0x1c(%rbp)
  401662:	jmp    401694 <randMatrix+0x82>
  401664:	mov    -0x20(%rbp),%eax
  401667:	movslq %eax,%rdx
  40166a:	movslq %ebx,%rax
  40166d:	imul   %rdx,%rax
  401671:	lea    0x0(,%rax,4),%rdx
  401679:	mov    -0x30(%rbp),%rax
  40167d:	lea    (%rdx,%rax,1),%r12
  401681:	callq  400ac0 <rand@plt>
  401686:	mov    -0x1c(%rbp),%edx
  401689:	movslq %edx,%rdx
  40168c:	mov    %eax,(%r12,%rdx,4)
  401690:	addl   $0x1,-0x1c(%rbp)
  401694:	mov    -0x1c(%rbp),%eax
  401697:	cmp    -0x24(%rbp),%eax
  40169a:	jl     401664 <randMatrix+0x52>
  40169c:	addl   $0x1,-0x20(%rbp)
  4016a0:	mov    -0x20(%rbp),%eax
  4016a3:	cmp    -0x28(%rbp),%eax
  4016a6:	jl     40165b <randMatrix+0x49>
  4016a8:	add    $0x20,%rsp
  4016ac:	pop    %rbx
  4016ad:	pop    %r12
  4016af:	pop    %rbp
  4016b0:	retq   

00000000004016b1 <correctTrans>:
  4016b1:	push   %rbp
  4016b2:	mov    %rsp,%rbp
  4016b5:	mov    %edi,-0x24(%rbp)
  4016b8:	mov    %esi,-0x28(%rbp)
  4016bb:	mov    %rdx,-0x30(%rbp)
  4016bf:	mov    %rcx,-0x38(%rbp)
  4016c3:	mov    -0x24(%rbp),%eax
  4016c6:	movslq %eax,%rdx
  4016c9:	sub    $0x1,%rdx
  4016cd:	mov    %rdx,-0x10(%rbp)
  4016d1:	movslq %eax,%rdx
  4016d4:	mov    %rdx,%r10
  4016d7:	mov    $0x0,%r11d
  4016dd:	mov    -0x28(%rbp),%edx
  4016e0:	movslq %edx,%rcx
  4016e3:	sub    $0x1,%rcx
  4016e7:	mov    %rcx,-0x8(%rbp)
  4016eb:	movslq %edx,%rcx
  4016ee:	mov    %rcx,%r8
  4016f1:	mov    $0x0,%r9d
  4016f7:	movl   $0x0,-0x1c(%rbp)
  4016fe:	jmp    40176a <correctTrans+0xb9>
  401700:	movl   $0x0,-0x18(%rbp)
  401707:	jmp    40175e <correctTrans+0xad>
  401709:	mov    -0x1c(%rbp),%ecx
  40170c:	movslq %ecx,%rsi
  40170f:	movslq %eax,%rcx
  401712:	imul   %rsi,%rcx
  401716:	lea    0x0(,%rcx,4),%rsi
  40171e:	mov    -0x30(%rbp),%rcx
  401722:	add    %rcx,%rsi
  401725:	mov    -0x18(%rbp),%ecx
  401728:	movslq %ecx,%rcx
  40172b:	mov    (%rsi,%rcx,4),%ecx
  40172e:	mov    %ecx,-0x14(%rbp)
  401731:	mov    -0x18(%rbp),%ecx
  401734:	movslq %ecx,%rsi
  401737:	movslq %edx,%rcx
  40173a:	imul   %rsi,%rcx
  40173e:	lea    0x0(,%rcx,4),%rsi
  401746:	mov    -0x38(%rbp),%rcx
  40174a:	lea    (%rsi,%rcx,1),%rdi
  40174e:	mov    -0x1c(%rbp),%ecx
  401751:	movslq %ecx,%rcx
  401754:	mov    -0x14(%rbp),%esi
  401757:	mov    %esi,(%rdi,%rcx,4)
  40175a:	addl   $0x1,-0x18(%rbp)
  40175e:	mov    -0x18(%rbp),%ecx
  401761:	cmp    -0x24(%rbp),%ecx
  401764:	jl     401709 <correctTrans+0x58>
  401766:	addl   $0x1,-0x1c(%rbp)
  40176a:	mov    -0x1c(%rbp),%ecx
  40176d:	cmp    -0x28(%rbp),%ecx
  401770:	jl     401700 <correctTrans+0x4f>
  401772:	pop    %rbp
  401773:	retq   

0000000000401774 <registerTransFunction>:
  401774:	push   %rbp
  401775:	mov    %rsp,%rbp
  401778:	mov    %rdi,-0x8(%rbp)
  40177c:	mov    %rsi,-0x10(%rbp)
  401780:	mov    0x201996(%rip),%eax        # 60311c <func_counter>
  401786:	cltq   
  401788:	shl    $0x5,%rax
  40178c:	lea    0x603140(%rax),%rdx
  401793:	mov    -0x8(%rbp),%rax
  401797:	mov    %rax,(%rdx)
  40179a:	mov    0x20197c(%rip),%eax        # 60311c <func_counter>
  4017a0:	cltq   
  4017a2:	shl    $0x5,%rax
  4017a6:	lea    0x603140(%rax),%rdx
  4017ad:	mov    -0x10(%rbp),%rax
  4017b1:	mov    %rax,0x8(%rdx)
  4017b5:	mov    0x201961(%rip),%eax        # 60311c <func_counter>
  4017bb:	cltq   
  4017bd:	shl    $0x5,%rax
  4017c1:	add    $0x603150,%rax
  4017c7:	movb   $0x0,(%rax)
  4017ca:	mov    0x20194c(%rip),%eax        # 60311c <func_counter>
  4017d0:	cltq   
  4017d2:	shl    $0x5,%rax
  4017d6:	add    $0x603150,%rax
  4017dc:	movl   $0x0,0x4(%rax)
  4017e3:	mov    0x201933(%rip),%eax        # 60311c <func_counter>
  4017e9:	cltq   
  4017eb:	shl    $0x5,%rax
  4017ef:	add    $0x603150,%rax
  4017f5:	movl   $0x0,0x8(%rax)
  4017fc:	mov    0x20191a(%rip),%eax        # 60311c <func_counter>
  401802:	cltq   
  401804:	shl    $0x5,%rax
  401808:	add    $0x603150,%rax
  40180e:	movl   $0x0,0xc(%rax)
  401815:	mov    0x201901(%rip),%eax        # 60311c <func_counter>
  40181b:	add    $0x1,%eax
  40181e:	mov    %eax,0x2018f8(%rip)        # 60311c <func_counter>
  401824:	pop    %rbp
  401825:	retq   
  401826:	nop
  401827:	nop
  401828:	nop
  401829:	nop
  40182a:	nop
  40182b:	nop
  40182c:	nop
  40182d:	nop
  40182e:	nop
  40182f:	nop

0000000000401830 <__libc_csu_init>:
  401830:	mov    %rbp,-0x28(%rsp)
  401835:	mov    %r12,-0x20(%rsp)
  40183a:	lea    0x2015af(%rip),%rbp        # 602df0 <__init_array_end>
  401841:	lea    0x2015a0(%rip),%r12        # 602de8 <__frame_dummy_init_array_entry>
  401848:	mov    %r13,-0x18(%rsp)
  40184d:	mov    %r14,-0x10(%rsp)
  401852:	mov    %r15,-0x8(%rsp)
  401857:	mov    %rbx,-0x30(%rsp)
  40185c:	sub    $0x38,%rsp
  401860:	sub    %r12,%rbp
  401863:	mov    %edi,%r13d
  401866:	mov    %rsi,%r14
  401869:	sar    $0x3,%rbp
  40186d:	mov    %rdx,%r15
  401870:	callq  400950 <_init>
  401875:	test   %rbp,%rbp
  401878:	je     401896 <__libc_csu_init+0x66>
  40187a:	xor    %ebx,%ebx
  40187c:	nopl   0x0(%rax)
  401880:	mov    %r15,%rdx
  401883:	mov    %r14,%rsi
  401886:	mov    %r13d,%edi
  401889:	callq  *(%r12,%rbx,8)
  40188d:	add    $0x1,%rbx
  401891:	cmp    %rbp,%rbx
  401894:	jne    401880 <__libc_csu_init+0x50>
  401896:	mov    0x8(%rsp),%rbx
  40189b:	mov    0x10(%rsp),%rbp
  4018a0:	mov    0x18(%rsp),%r12
  4018a5:	mov    0x20(%rsp),%r13
  4018aa:	mov    0x28(%rsp),%r14
  4018af:	mov    0x30(%rsp),%r15
  4018b4:	add    $0x38,%rsp
  4018b8:	retq   
  4018b9:	nopl   0x0(%rax)

00000000004018c0 <__libc_csu_fini>:
  4018c0:	repz retq 
  4018c2:	nop
  4018c3:	nop

Disassembly of section .fini:

00000000004018c4 <_fini>:
  4018c4:	sub    $0x8,%rsp
  4018c8:	add    $0x8,%rsp
  4018cc:	retq   
