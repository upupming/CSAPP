
c:     file format elf64-x86-64


Disassembly of section .init:

0000000000400d20 <_init>:
  400d20:	sub    $0x8,%rsp
  400d24:	mov    0x2022cd(%rip),%rax        # 602ff8 <_DYNAMIC+0x1f0>
  400d2b:	test   %rax,%rax
  400d2e:	je     400d35 <_init+0x15>
  400d30:	callq  400f30 <_Unwind_Resume@plt+0x10>
  400d35:	add    $0x8,%rsp
  400d39:	retq   

Disassembly of section .plt:

0000000000400d40 <_ZNSolsEd@plt-0x10>:
  400d40:	pushq  0x2022c2(%rip)        # 603008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400d46:	jmpq   *0x2022c4(%rip)        # 603010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400d4c:	nopl   0x0(%rax)

0000000000400d50 <_ZNSolsEd@plt>:
  400d50:	jmpq   *0x2022c2(%rip)        # 603018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400d56:	pushq  $0x0
  400d5b:	jmpq   400d40 <_init+0x20>

0000000000400d60 <_ZNSolsEl@plt>:
  400d60:	jmpq   *0x2022ba(%rip)        # 603020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400d66:	pushq  $0x1
  400d6b:	jmpq   400d40 <_init+0x20>

0000000000400d70 <printf@plt>:
  400d70:	jmpq   *0x2022b2(%rip)        # 603028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400d76:	pushq  $0x2
  400d7b:	jmpq   400d40 <_init+0x20>

0000000000400d80 <_ZNSolsEi@plt>:
  400d80:	jmpq   *0x2022aa(%rip)        # 603030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400d86:	pushq  $0x3
  400d8b:	jmpq   400d40 <_init+0x20>

0000000000400d90 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision@plt>:
  400d90:	jmpq   *0x2022a2(%rip)        # 603038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400d96:	pushq  $0x4
  400d9b:	jmpq   400d40 <_init+0x20>

0000000000400da0 <_ZNSolsEy@plt>:
  400da0:	jmpq   *0x20229a(%rip)        # 603040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400da6:	pushq  $0x5
  400dab:	jmpq   400d40 <_init+0x20>

0000000000400db0 <puts@plt>:
  400db0:	jmpq   *0x202292(%rip)        # 603048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400db6:	pushq  $0x6
  400dbb:	jmpq   400d40 <_init+0x20>

0000000000400dc0 <_ZdlPv@plt>:
  400dc0:	jmpq   *0x20228a(%rip)        # 603050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400dc6:	pushq  $0x7
  400dcb:	jmpq   400d40 <_init+0x20>

0000000000400dd0 <putchar@plt>:
  400dd0:	jmpq   *0x202282(%rip)        # 603058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400dd6:	pushq  $0x8
  400ddb:	jmpq   400d40 <_init+0x20>

0000000000400de0 <_ZNSt8ios_base4InitC1Ev@plt>:
  400de0:	jmpq   *0x20227a(%rip)        # 603060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400de6:	pushq  $0x9
  400deb:	jmpq   400d40 <_init+0x20>

0000000000400df0 <_ZNSolsEs@plt>:
  400df0:	jmpq   *0x202272(%rip)        # 603068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400df6:	pushq  $0xa
  400dfb:	jmpq   400d40 <_init+0x20>

0000000000400e00 <__libc_start_main@plt>:
  400e00:	jmpq   *0x20226a(%rip)        # 603070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400e06:	pushq  $0xb
  400e0b:	jmpq   400d40 <_init+0x20>

0000000000400e10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h@plt>:
  400e10:	jmpq   *0x202262(%rip)        # 603078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400e16:	pushq  $0xc
  400e1b:	jmpq   400d40 <_init+0x20>

0000000000400e20 <__cxa_atexit@plt>:
  400e20:	jmpq   *0x20225a(%rip)        # 603080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400e26:	pushq  $0xd
  400e2b:	jmpq   400d40 <_init+0x20>

0000000000400e30 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>:
  400e30:	jmpq   *0x202252(%rip)        # 603088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400e36:	pushq  $0xe
  400e3b:	jmpq   400d40 <_init+0x20>

0000000000400e40 <_ZNSt8ios_base4InitD1Ev@plt>:
  400e40:	jmpq   *0x20224a(%rip)        # 603090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400e46:	pushq  $0xf
  400e4b:	jmpq   400d40 <_init+0x20>

0000000000400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  400e50:	jmpq   *0x202242(%rip)        # 603098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400e56:	pushq  $0x10
  400e5b:	jmpq   400d40 <_init+0x20>

0000000000400e60 <_ZNSolsEm@plt>:
  400e60:	jmpq   *0x20223a(%rip)        # 6030a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400e66:	pushq  $0x11
  400e6b:	jmpq   400d40 <_init+0x20>

0000000000400e70 <_ZNSolsEb@plt>:
  400e70:	jmpq   *0x202232(%rip)        # 6030a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400e76:	pushq  $0x12
  400e7b:	jmpq   400d40 <_init+0x20>

0000000000400e80 <_ZNSolsEj@plt>:
  400e80:	jmpq   *0x20222a(%rip)        # 6030b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400e86:	pushq  $0x13
  400e8b:	jmpq   400d40 <_init+0x20>

0000000000400e90 <__stack_chk_fail@plt>:
  400e90:	jmpq   *0x202222(%rip)        # 6030b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400e96:	pushq  $0x14
  400e9b:	jmpq   400d40 <_init+0x20>

0000000000400ea0 <_ZNSolsEf@plt>:
  400ea0:	jmpq   *0x20221a(%rip)        # 6030c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400ea6:	pushq  $0x15
  400eab:	jmpq   400d40 <_init+0x20>

0000000000400eb0 <_ZNSolsEx@plt>:
  400eb0:	jmpq   *0x202212(%rip)        # 6030c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400eb6:	pushq  $0x16
  400ebb:	jmpq   400d40 <_init+0x20>

0000000000400ec0 <_ZNSolsEPFRSoS_E@plt>:
  400ec0:	jmpq   *0x20220a(%rip)        # 6030d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400ec6:	pushq  $0x17
  400ecb:	jmpq   400d40 <_init+0x20>

0000000000400ed0 <_ZSt17__throw_bad_allocv@plt>:
  400ed0:	jmpq   *0x202202(%rip)        # 6030d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400ed6:	pushq  $0x18
  400edb:	jmpq   400d40 <_init+0x20>

0000000000400ee0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  400ee0:	jmpq   *0x2021fa(%rip)        # 6030e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400ee6:	pushq  $0x19
  400eeb:	jmpq   400d40 <_init+0x20>

0000000000400ef0 <_ZNSolsEt@plt>:
  400ef0:	jmpq   *0x2021f2(%rip)        # 6030e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400ef6:	pushq  $0x1a
  400efb:	jmpq   400d40 <_init+0x20>

0000000000400f00 <__gxx_personality_v0@plt>:
  400f00:	jmpq   *0x2021ea(%rip)        # 6030f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400f06:	pushq  $0x1b
  400f0b:	jmpq   400d40 <_init+0x20>

0000000000400f10 <_Znwm@plt>:
  400f10:	jmpq   *0x2021e2(%rip)        # 6030f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400f16:	pushq  $0x1c
  400f1b:	jmpq   400d40 <_init+0x20>

0000000000400f20 <_Unwind_Resume@plt>:
  400f20:	jmpq   *0x2021da(%rip)        # 603100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400f26:	pushq  $0x1d
  400f2b:	jmpq   400d40 <_init+0x20>

Disassembly of section .plt.got:

0000000000400f30 <.plt.got>:
  400f30:	jmpq   *0x2020c2(%rip)        # 602ff8 <_DYNAMIC+0x1f0>
  400f36:	xchg   %ax,%ax

Disassembly of section .text:

0000000000400f40 <_start>:
  400f40:	xor    %ebp,%ebp
  400f42:	mov    %rdx,%r9
  400f45:	pop    %rsi
  400f46:	mov    %rsp,%rdx
  400f49:	and    $0xfffffffffffffff0,%rsp
  400f4d:	push   %rax
  400f4e:	push   %rsp
  400f4f:	mov    $0x402060,%r8
  400f56:	mov    $0x401ff0,%rcx
  400f5d:	mov    $0x401823,%rdi
  400f64:	callq  400e00 <__libc_start_main@plt>
  400f69:	hlt    
  400f6a:	nopw   0x0(%rax,%rax,1)

0000000000400f70 <deregister_tm_clones>:
  400f70:	mov    $0x603127,%eax
  400f75:	push   %rbp
  400f76:	sub    $0x603120,%rax
  400f7c:	cmp    $0xe,%rax
  400f80:	mov    %rsp,%rbp
  400f83:	jbe    400fa0 <deregister_tm_clones+0x30>
  400f85:	mov    $0x0,%eax
  400f8a:	test   %rax,%rax
  400f8d:	je     400fa0 <deregister_tm_clones+0x30>
  400f8f:	pop    %rbp
  400f90:	mov    $0x603120,%edi
  400f95:	jmpq   *%rax
  400f97:	nopw   0x0(%rax,%rax,1)
  400fa0:	pop    %rbp
  400fa1:	retq   
  400fa2:	nopl   0x0(%rax)
  400fa6:	nopw   %cs:0x0(%rax,%rax,1)

0000000000400fb0 <register_tm_clones>:
  400fb0:	mov    $0x603120,%esi
  400fb5:	push   %rbp
  400fb6:	sub    $0x603120,%rsi
  400fbd:	sar    $0x3,%rsi
  400fc1:	mov    %rsp,%rbp
  400fc4:	mov    %rsi,%rax
  400fc7:	shr    $0x3f,%rax
  400fcb:	add    %rax,%rsi
  400fce:	sar    %rsi
  400fd1:	je     400fe8 <register_tm_clones+0x38>
  400fd3:	mov    $0x0,%eax
  400fd8:	test   %rax,%rax
  400fdb:	je     400fe8 <register_tm_clones+0x38>
  400fdd:	pop    %rbp
  400fde:	mov    $0x603120,%edi
  400fe3:	jmpq   *%rax
  400fe5:	nopl   (%rax)
  400fe8:	pop    %rbp
  400fe9:	retq   
  400fea:	nopw   0x0(%rax,%rax,1)

0000000000400ff0 <__do_global_dtors_aux>:
  400ff0:	cmpb   $0x0,0x202239(%rip)        # 603230 <completed.7585>
  400ff7:	jne    40100a <__do_global_dtors_aux+0x1a>
  400ff9:	push   %rbp
  400ffa:	mov    %rsp,%rbp
  400ffd:	callq  400f70 <deregister_tm_clones>
  401002:	pop    %rbp
  401003:	movb   $0x1,0x202226(%rip)        # 603230 <completed.7585>
  40100a:	repz retq 
  40100c:	nopl   0x0(%rax)

0000000000401010 <frame_dummy>:
  401010:	mov    $0x602e00,%edi
  401015:	cmpq   $0x0,(%rdi)
  401019:	jne    401020 <frame_dummy+0x10>
  40101b:	jmp    400fb0 <register_tm_clones>
  40101d:	nopl   (%rax)
  401020:	mov    $0x0,%eax
  401025:	test   %rax,%rax
  401028:	je     40101b <frame_dummy+0xb>
  40102a:	push   %rbp
  40102b:	mov    %rsp,%rbp
  40102e:	callq  *%rax
  401030:	pop    %rbp
  401031:	jmpq   400fb0 <register_tm_clones>

0000000000401036 <_Z7partingv>:
  401036:	push   %rbp
  401037:	mov    %rsp,%rbp
  40103a:	nop
  40103b:	pop    %rbp
  40103c:	retq   

000000000040103d <_Z7printstR2st>:
  40103d:	push   %rbp
  40103e:	mov    %rsp,%rbp
  401041:	sub    $0x10,%rsp
  401045:	mov    %rdi,-0x8(%rbp)
  401049:	mov    -0x8(%rbp),%rax
  40104d:	mov    0x14(%rax),%ecx
  401050:	mov    -0x8(%rbp),%rdx
  401054:	mov    -0x8(%rbp),%rax
  401058:	mov    0x18(%rax),%eax
  40105b:	mov    %eax,%esi
  40105d:	mov    $0x4020a5,%edi
  401062:	mov    $0x0,%eax
  401067:	callq  400d70 <printf@plt>
  40106c:	nop
  40106d:	leaveq 
  40106e:	retq   

000000000040106f <_Z6branchii>:
  40106f:	push   %rbp
  401070:	mov    %rsp,%rbp
  401073:	sub    $0x20,%rsp
  401077:	mov    %edi,-0x14(%rbp)
  40107a:	mov    %esi,-0x18(%rbp)
  40107d:	cmpl   $0x0,-0x14(%rbp)
  401081:	je     40108d <_Z6branchii+0x1e>
  401083:	mov    $0x4020bd,%edi
  401088:	callq  400db0 <puts@plt>
  40108d:	cmpl   $0x0,-0x18(%rbp)
  401091:	jne    40109f <_Z6branchii+0x30>
  401093:	mov    $0x4020cb,%edi
  401098:	callq  400db0 <puts@plt>
  40109d:	jmp    4010a9 <_Z6branchii+0x3a>
  40109f:	mov    $0x4020d6,%edi
  4010a4:	callq  400db0 <puts@plt>
  4010a9:	movl   $0x2,-0x4(%rbp)
  4010b0:	mov    -0x4(%rbp),%eax
  4010b3:	cmp    $0x6,%eax
  4010b6:	ja     401118 <_Z6branchii+0xa9>
  4010b8:	mov    %eax,%eax
  4010ba:	mov    0x402130(,%rax,8),%rax
  4010c2:	jmpq   *%rax
  4010c4:	mov    $0x4020e4,%edi
  4010c9:	callq  400db0 <puts@plt>
  4010ce:	jmp    401123 <_Z6branchii+0xb4>
  4010d0:	mov    $0x4020eb,%edi
  4010d5:	callq  400db0 <puts@plt>
  4010da:	jmp    401123 <_Z6branchii+0xb4>
  4010dc:	mov    $0x4020f3,%edi
  4010e1:	callq  400db0 <puts@plt>
  4010e6:	jmp    401123 <_Z6branchii+0xb4>
  4010e8:	mov    $0x4020fd,%edi
  4010ed:	callq  400db0 <puts@plt>
  4010f2:	jmp    401123 <_Z6branchii+0xb4>
  4010f4:	mov    $0x402106,%edi
  4010f9:	callq  400db0 <puts@plt>
  4010fe:	jmp    401123 <_Z6branchii+0xb4>
  401100:	mov    $0x40210d,%edi
  401105:	callq  400db0 <puts@plt>
  40110a:	jmp    401123 <_Z6branchii+0xb4>
  40110c:	mov    $0x402116,%edi
  401111:	callq  400db0 <puts@plt>
  401116:	jmp    401123 <_Z6branchii+0xb4>
  401118:	mov    $0x40211d,%edi
  40111d:	callq  400db0 <puts@plt>
  401122:	nop
  401123:	nop
  401124:	leaveq 
  401125:	retq   

0000000000401126 <_Z4loopv>:
  401126:	push   %rbp
  401127:	mov    %rsp,%rbp
  40112a:	sub    $0x10,%rsp
  40112e:	movl   $0x5,-0x8(%rbp)
  401135:	movl   $0x1,-0x4(%rbp)
  40113c:	cmpl   $0x1,-0x8(%rbp)
  401140:	jle    401166 <_Z4loopv+0x40>
  401142:	mov    -0x4(%rbp),%eax
  401145:	imul   -0x8(%rbp),%eax
  401149:	mov    %eax,-0x4(%rbp)
  40114c:	mov    -0x8(%rbp),%eax
  40114f:	mov    %eax,%esi
  401151:	mov    $0x402168,%edi
  401156:	mov    $0x0,%eax
  40115b:	callq  400d70 <printf@plt>
  401160:	subl   $0x1,-0x8(%rbp)
  401164:	jmp    40113c <_Z4loopv+0x16>
  401166:	mov    -0x4(%rbp),%eax
  401169:	mov    %eax,%esi
  40116b:	mov    $0x40216e,%edi
  401170:	mov    $0x0,%eax
  401175:	callq  400d70 <printf@plt>
  40117a:	movl   $0x2,-0x8(%rbp)
  401181:	movl   $0x1,-0x4(%rbp)
  401188:	mov    $0x31,%edi
  40118d:	callq  400dd0 <putchar@plt>
  401192:	mov    -0x4(%rbp),%eax
  401195:	imul   -0x8(%rbp),%eax
  401199:	mov    %eax,-0x4(%rbp)
  40119c:	mov    -0x8(%rbp),%eax
  40119f:	mov    %eax,%esi
  4011a1:	mov    $0x402176,%edi
  4011a6:	mov    $0x0,%eax
  4011ab:	callq  400d70 <printf@plt>
  4011b0:	addl   $0x1,-0x8(%rbp)
  4011b4:	cmpl   $0x5,-0x8(%rbp)
  4011b8:	jg     4011bc <_Z4loopv+0x96>
  4011ba:	jmp    401192 <_Z4loopv+0x6c>
  4011bc:	mov    -0x4(%rbp),%eax
  4011bf:	mov    %eax,%esi
  4011c1:	mov    $0x40217c,%edi
  4011c6:	mov    $0x0,%eax
  4011cb:	callq  400d70 <printf@plt>
  4011d0:	movl   $0x1,-0x4(%rbp)
  4011d7:	movl   $0x1,-0x8(%rbp)
  4011de:	cmpl   $0x4,-0x8(%rbp)
  4011e2:	jg     401208 <_Z4loopv+0xe2>
  4011e4:	mov    -0x4(%rbp),%eax
  4011e7:	imul   -0x8(%rbp),%eax
  4011eb:	mov    %eax,-0x4(%rbp)
  4011ee:	mov    -0x8(%rbp),%eax
  4011f1:	mov    %eax,%esi
  4011f3:	mov    $0x402168,%edi
  4011f8:	mov    $0x0,%eax
  4011fd:	callq  400d70 <printf@plt>
  401202:	addl   $0x1,-0x8(%rbp)
  401206:	jmp    4011de <_Z4loopv+0xb8>
  401208:	mov    -0x4(%rbp),%eax
  40120b:	imul   -0x8(%rbp),%eax
  40120f:	mov    %eax,%edx
  401211:	mov    -0x8(%rbp),%eax
  401214:	mov    %eax,%esi
  401216:	mov    $0x402183,%edi
  40121b:	mov    $0x0,%eax
  401220:	callq  400d70 <printf@plt>
  401225:	nop
  401226:	leaveq 
  401227:	retq   

0000000000401228 <_Z7my_swapPiS_>:
  401228:	push   %rbp
  401229:	mov    %rsp,%rbp
  40122c:	mov    %rdi,-0x18(%rbp)
  401230:	mov    %rsi,-0x20(%rbp)
  401234:	mov    -0x20(%rbp),%rax
  401238:	mov    (%rax),%eax
  40123a:	mov    %eax,-0x4(%rbp)
  40123d:	mov    -0x18(%rbp),%rax
  401241:	mov    (%rax),%edx
  401243:	mov    -0x20(%rbp),%rax
  401247:	mov    %edx,(%rax)
  401249:	mov    -0x18(%rbp),%rax
  40124d:	mov    -0x4(%rbp),%edx
  401250:	mov    %edx,(%rax)
  401252:	nop
  401253:	pop    %rbp
  401254:	retq   

0000000000401255 <_Z7my_swapRiS_>:
  401255:	push   %rbp
  401256:	mov    %rsp,%rbp
  401259:	mov    %rdi,-0x18(%rbp)
  40125d:	mov    %rsi,-0x20(%rbp)
  401261:	mov    -0x20(%rbp),%rax
  401265:	mov    (%rax),%eax
  401267:	mov    %eax,-0x4(%rbp)
  40126a:	mov    -0x18(%rbp),%rax
  40126e:	mov    (%rax),%edx
  401270:	mov    -0x20(%rbp),%rax
  401274:	mov    %edx,(%rax)
  401276:	mov    -0x18(%rbp),%rax
  40127a:	mov    -0x4(%rbp),%edx
  40127d:	mov    %edx,(%rax)
  40127f:	nop
  401280:	pop    %rbp
  401281:	retq   

0000000000401282 <_Z9dataTypesv>:
  401282:	push   %rbp
  401283:	mov    %rsp,%rbp
  401286:	push   %r15
  401288:	push   %r14
  40128a:	push   %r13
  40128c:	push   %r12
  40128e:	push   %rbx
  40128f:	sub    $0x128,%rsp
  401296:	mov    %fs:0x28,%rax
  40129f:	mov    %rax,-0x38(%rbp)
  4012a3:	xor    %eax,%eax
  4012a5:	movb   $0x1,-0x13b(%rbp)
  4012ac:	movb   $0x41,-0x13a(%rbp)
  4012b3:	movb   $0x1,-0x139(%rbp)
  4012ba:	movw   $0xffbf,-0x138(%rbp)
  4012c3:	movw   $0x41,-0x136(%rbp)
  4012cc:	movl   $0xff439eb2,-0x130(%rbp)
  4012d6:	movl   $0xbc614e,-0x12c(%rbp)
  4012e0:	movq   $0xffffffffb669fd2e,-0x118(%rbp)
  4012eb:	movq   $0x499602d2,-0x110(%rbp)
  4012f6:	movabs $0xff65b0d02125c834,%rax
  401300:	mov    %rax,-0x108(%rbp)
  401307:	movabs $0x2bdc5455567cf0,%rax
  401311:	mov    %rax,-0x100(%rbp)
  401318:	movl   $0xe825c44,-0x128(%rbp)
  401322:	movl   $0x1eebe08,-0x124(%rbp)
  40132c:	movabs $0xffffffc75e37be7c,%rax
  401336:	mov    %rax,-0xf8(%rbp)
  40133d:	movabs $0x786910a88,%rax
  401347:	mov    %rax,-0xf0(%rbp)
  40134e:	movss  0xf26(%rip),%xmm0        # 40227c <_IO_stdin_used+0x20c>
  401356:	movss  %xmm0,-0x120(%rbp)
  40135e:	movsd  0xf1a(%rip),%xmm0        # 402280 <_IO_stdin_used+0x210>
  401366:	movsd  %xmm0,-0xe8(%rbp)
  40136e:	movzbl -0x13b(%rbp),%ebx
  401375:	mov    $0x400ee0,%esi
  40137a:	mov    $0x603120,%edi
  40137f:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  401384:	mov    %ebx,%esi
  401386:	mov    %rax,%rdi
  401389:	callq  400e70 <_ZNSolsEb@plt>
  40138e:	mov    $0x400ee0,%esi
  401393:	mov    %rax,%rdi
  401396:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  40139b:	mov    $0x400ee0,%esi
  4013a0:	mov    %rax,%rdi
  4013a3:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  4013a8:	mov    $0xf,%edi
  4013ad:	callq  401966 <_ZSt12setprecisioni>
  4013b2:	mov    %eax,%r14d
  4013b5:	mov    $0x6,%edi
  4013ba:	callq  401966 <_ZSt12setprecisioni>
  4013bf:	mov    %eax,%r15d
  4013c2:	movzwl -0x136(%rbp),%ebx
  4013c9:	movswl -0x138(%rbp),%r12d
  4013d1:	movzbl -0x139(%rbp),%r13d
  4013d9:	movsbl -0x13a(%rbp),%eax
  4013e0:	mov    %eax,%esi
  4013e2:	mov    $0x603120,%edi
  4013e7:	callq  400e30 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
  4013ec:	mov    $0x40218c,%esi
  4013f1:	mov    %rax,%rdi
  4013f4:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4013f9:	mov    %r13d,%esi
  4013fc:	mov    %rax,%rdi
  4013ff:	callq  400e10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h@plt>
  401404:	mov    $0x400ee0,%esi
  401409:	mov    %rax,%rdi
  40140c:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  401411:	mov    $0x400ee0,%esi
  401416:	mov    %rax,%rdi
  401419:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  40141e:	mov    %r12d,%esi
  401421:	mov    %rax,%rdi
  401424:	callq  400df0 <_ZNSolsEs@plt>
  401429:	mov    $0x40218c,%esi
  40142e:	mov    %rax,%rdi
  401431:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401436:	mov    %ebx,%esi
  401438:	mov    %rax,%rdi
  40143b:	callq  400ef0 <_ZNSolsEt@plt>
  401440:	mov    $0x40218c,%esi
  401445:	mov    %rax,%rdi
  401448:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40144d:	mov    %rax,%rdx
  401450:	mov    -0x130(%rbp),%eax
  401456:	mov    %eax,%esi
  401458:	mov    %rdx,%rdi
  40145b:	callq  400d80 <_ZNSolsEi@plt>
  401460:	mov    $0x40218c,%esi
  401465:	mov    %rax,%rdi
  401468:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40146d:	mov    %rax,%rdx
  401470:	mov    -0x12c(%rbp),%eax
  401476:	mov    %eax,%esi
  401478:	mov    %rdx,%rdi
  40147b:	callq  400e80 <_ZNSolsEj@plt>
  401480:	mov    $0x40218c,%esi
  401485:	mov    %rax,%rdi
  401488:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40148d:	mov    %rax,%rdx
  401490:	mov    -0x118(%rbp),%rax
  401497:	mov    %rax,%rsi
  40149a:	mov    %rdx,%rdi
  40149d:	callq  400d60 <_ZNSolsEl@plt>
  4014a2:	mov    $0x40218c,%esi
  4014a7:	mov    %rax,%rdi
  4014aa:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4014af:	mov    %rax,%rdx
  4014b2:	mov    -0x110(%rbp),%rax
  4014b9:	mov    %rax,%rsi
  4014bc:	mov    %rdx,%rdi
  4014bf:	callq  400e60 <_ZNSolsEm@plt>
  4014c4:	mov    $0x40218c,%esi
  4014c9:	mov    %rax,%rdi
  4014cc:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4014d1:	mov    %rax,%rdx
  4014d4:	mov    -0x108(%rbp),%rax
  4014db:	mov    %rax,%rsi
  4014de:	mov    %rdx,%rdi
  4014e1:	callq  400eb0 <_ZNSolsEx@plt>
  4014e6:	mov    $0x40218c,%esi
  4014eb:	mov    %rax,%rdi
  4014ee:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4014f3:	mov    %rax,%rdx
  4014f6:	mov    -0x100(%rbp),%rax
  4014fd:	mov    %rax,%rsi
  401500:	mov    %rdx,%rdi
  401503:	callq  400da0 <_ZNSolsEy@plt>
  401508:	mov    $0x40218c,%esi
  40150d:	mov    %rax,%rdi
  401510:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401515:	mov    %rax,%rdx
  401518:	mov    -0x128(%rbp),%eax
  40151e:	mov    %eax,%esi
  401520:	mov    %rdx,%rdi
  401523:	callq  400d80 <_ZNSolsEi@plt>
  401528:	mov    $0x40218c,%esi
  40152d:	mov    %rax,%rdi
  401530:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401535:	mov    %rax,%rdx
  401538:	mov    -0x124(%rbp),%eax
  40153e:	mov    %eax,%esi
  401540:	mov    %rdx,%rdi
  401543:	callq  400e80 <_ZNSolsEj@plt>
  401548:	mov    $0x40218c,%esi
  40154d:	mov    %rax,%rdi
  401550:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401555:	mov    %rax,%rdx
  401558:	mov    -0xf8(%rbp),%rax
  40155f:	mov    %rax,%rsi
  401562:	mov    %rdx,%rdi
  401565:	callq  400d60 <_ZNSolsEl@plt>
  40156a:	mov    $0x40218c,%esi
  40156f:	mov    %rax,%rdi
  401572:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401577:	mov    %rax,%rdx
  40157a:	mov    -0xf0(%rbp),%rax
  401581:	mov    %rax,%rsi
  401584:	mov    %rdx,%rdi
  401587:	callq  400e60 <_ZNSolsEm@plt>
  40158c:	mov    $0x400ee0,%esi
  401591:	mov    %rax,%rdi
  401594:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  401599:	mov    $0x400ee0,%esi
  40159e:	mov    %rax,%rdi
  4015a1:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  4015a6:	mov    %r15d,%esi
  4015a9:	mov    %rax,%rdi
  4015ac:	callq  400d90 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision@plt>
  4015b1:	mov    %rax,%rdx
  4015b4:	mov    -0x120(%rbp),%eax
  4015ba:	mov    %eax,-0x148(%rbp)
  4015c0:	movss  -0x148(%rbp),%xmm0
  4015c8:	mov    %rdx,%rdi
  4015cb:	callq  400ea0 <_ZNSolsEf@plt>
  4015d0:	mov    $0x40218c,%esi
  4015d5:	mov    %rax,%rdi
  4015d8:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4015dd:	mov    %r14d,%esi
  4015e0:	mov    %rax,%rdi
  4015e3:	callq  400d90 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision@plt>
  4015e8:	mov    %rax,%rdx
  4015eb:	mov    -0xe8(%rbp),%rax
  4015f2:	mov    %rax,-0x148(%rbp)
  4015f9:	movsd  -0x148(%rbp),%xmm0
  401601:	mov    %rdx,%rdi
  401604:	callq  400d50 <_ZNSolsEd@plt>
  401609:	mov    $0x40218c,%esi
  40160e:	mov    %rax,%rdi
  401611:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401616:	mov    $0x400ee0,%esi
  40161b:	mov    %rax,%rdi
  40161e:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  401623:	movl   $0x1,-0xc0(%rbp)
  40162d:	movl   $0x2,-0xbc(%rbp)
  401637:	movl   $0x3,-0xb8(%rbp)
  401641:	movl   $0x4,-0xb4(%rbp)
  40164b:	movl   $0x5,-0xb0(%rbp)
  401655:	lea    -0x80(%rbp),%rdx
  401659:	mov    $0x0,%eax
  40165e:	mov    $0x8,%ecx
  401663:	mov    %rdx,%rdi
  401666:	rep stos %rax,%es:(%rdi)
  401669:	movl   $0x1,-0x80(%rbp)
  401670:	movl   $0x2,-0x7c(%rbp)
  401677:	movl   $0x3,-0x78(%rbp)
  40167e:	movl   $0x4,-0x74(%rbp)
  401685:	movl   $0x2,-0x70(%rbp)
  40168c:	movl   $0x3,-0x6c(%rbp)
  401693:	movl   $0x4,-0x68(%rbp)
  40169a:	movl   $0x5,-0x64(%rbp)
  4016a1:	movl   $0x3,-0x60(%rbp)
  4016a8:	movl   $0x4,-0x5c(%rbp)
  4016af:	movl   $0x5,-0x58(%rbp)
  4016b6:	movl   $0x6,-0x54(%rbp)
  4016bd:	movl   $0x4,-0x50(%rbp)
  4016c4:	lea    -0x13c(%rbp),%rax
  4016cb:	mov    %rax,%rdi
  4016ce:	callq  4019e8 <_ZNSaIiEC1Ev>
  4016d3:	movl   $0x0,-0x134(%rbp)
  4016dd:	lea    -0x13c(%rbp),%rcx
  4016e4:	lea    -0x134(%rbp),%rdx
  4016eb:	lea    -0xe0(%rbp),%rax
  4016f2:	mov    $0x5,%esi
  4016f7:	mov    %rax,%rdi
  4016fa:	callq  401a20 <_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_>
  4016ff:	lea    -0x13c(%rbp),%rax
  401706:	mov    %rax,%rdi
  401709:	callq  401a04 <_ZNSaIiED1Ev>
  40170e:	callq  401036 <_Z7partingv>
  401713:	movl   $0x0,-0x11c(%rbp)
  40171d:	callq  401036 <_Z7partingv>
  401722:	callq  401036 <_Z7partingv>
  401727:	lea    -0xa0(%rbp),%rax
  40172e:	mov    %rax,%rdi
  401731:	callq  40103d <_Z7printstR2st>
  401736:	mov    -0x48(%rbp),%edx
  401739:	mov    -0x54(%rbp),%eax
  40173c:	mov    %eax,%esi
  40173e:	mov    $0x402190,%edi
  401743:	mov    $0x0,%eax
  401748:	callq  400d70 <printf@plt>
  40174d:	lea    -0x80(%rbp),%rax
  401751:	lea    0x38(%rax),%rdx
  401755:	lea    -0x80(%rbp),%rax
  401759:	add    $0x2c,%rax
  40175d:	mov    %rdx,%rsi
  401760:	mov    %rax,%rdi
  401763:	callq  401228 <_Z7my_swapPiS_>
  401768:	mov    -0x48(%rbp),%edx
  40176b:	mov    -0x54(%rbp),%eax
  40176e:	mov    %eax,%esi
  401770:	mov    $0x4021c0,%edi
  401775:	mov    $0x0,%eax
  40177a:	callq  400d70 <printf@plt>
  40177f:	lea    -0x80(%rbp),%rax
  401783:	lea    0x38(%rax),%rdx
  401787:	lea    -0x80(%rbp),%rax
  40178b:	add    $0x2c,%rax
  40178f:	mov    %rdx,%rsi
  401792:	mov    %rax,%rdi
  401795:	callq  401255 <_Z7my_swapRiS_>
  40179a:	mov    -0x48(%rbp),%edx
  40179d:	mov    -0x54(%rbp),%eax
  4017a0:	mov    %eax,%esi
  4017a2:	mov    $0x4021f8,%edi
  4017a7:	mov    $0x0,%eax
  4017ac:	callq  400d70 <printf@plt>
  4017b1:	lea    -0xe0(%rbp),%rax
  4017b8:	mov    %rax,%rdi
  4017bb:	callq  401a8a <_ZNSt6vectorIiSaIiEED1Ev>
  4017c0:	nop
  4017c1:	mov    -0x38(%rbp),%rax
  4017c5:	xor    %fs:0x28,%rax
  4017ce:	je     401811 <_Z9dataTypesv+0x58f>
  4017d0:	jmp    40180c <_Z9dataTypesv+0x58a>
  4017d2:	mov    %rax,%rbx
  4017d5:	lea    -0x13c(%rbp),%rax
  4017dc:	mov    %rax,%rdi
  4017df:	callq  401a04 <_ZNSaIiED1Ev>
  4017e4:	mov    %rbx,%rax
  4017e7:	mov    %rax,%rdi
  4017ea:	callq  400f20 <_Unwind_Resume@plt>
  4017ef:	mov    %rax,%rbx
  4017f2:	lea    -0xe0(%rbp),%rax
  4017f9:	mov    %rax,%rdi
  4017fc:	callq  401a8a <_ZNSt6vectorIiSaIiEED1Ev>
  401801:	mov    %rbx,%rax
  401804:	mov    %rax,%rdi
  401807:	callq  400f20 <_Unwind_Resume@plt>
  40180c:	callq  400e90 <__stack_chk_fail@plt>
  401811:	add    $0x128,%rsp
  401818:	pop    %rbx
  401819:	pop    %r12
  40181b:	pop    %r13
  40181d:	pop    %r14
  40181f:	pop    %r15
  401821:	pop    %rbp
  401822:	retq   

0000000000401823 <main>:
  401823:	push   %rbp
  401824:	mov    %rsp,%rbp
  401827:	push   %rbx
  401828:	sub    $0x48,%rsp
  40182c:	mov    %fs:0x28,%rax
  401835:	mov    %rax,-0x18(%rbp)
  401839:	xor    %eax,%eax
  40183b:	movl   $0x1,-0x48(%rbp)
  401842:	movl   $0x0,-0x44(%rbp)
  401849:	mov    $0x402230,%edi
  40184e:	callq  400db0 <puts@plt>
  401853:	mov    -0x44(%rbp),%edx
  401856:	mov    -0x48(%rbp),%eax
  401859:	mov    %edx,%esi
  40185b:	mov    %eax,%edi
  40185d:	callq  40106f <_Z6branchii>
  401862:	mov    $0x402246,%edi
  401867:	callq  400db0 <puts@plt>
  40186c:	callq  401126 <_Z4loopv>
  401871:	mov    $0x40225d,%edi
  401876:	callq  400db0 <puts@plt>
  40187b:	callq  401282 <_Z9dataTypesv>
  401880:	movl   $0x2,0x20188e(%rip)        # 603118 <S>
  40188a:	movl   $0x0,0x2019c0(%rip)        # 603254 <ics_me+0x14>
  401894:	callq  401036 <_Z7partingv>
  401899:	lea    -0x40(%rbp),%rax
  40189d:	mov    %rax,%rdi
  4018a0:	callq  401972 <_ZN6hit_stC1Ev>
  4018a5:	lea    -0x40(%rbp),%rax
  4018a9:	mov    %rax,%rdi
  4018ac:	callq  4019c2 <_ZN6hit_st8sayhelloEv>
  4018b1:	lea    -0x40(%rbp),%rax
  4018b5:	mov    %rax,%rdi
  4018b8:	callq  4019a8 <_ZN6hit_stD1Ev>
  4018bd:	mov    $0x0,%eax
  4018c2:	mov    -0x18(%rbp),%rcx
  4018c6:	xor    %fs:0x28,%rcx
  4018cf:	je     4018f2 <main+0xcf>
  4018d1:	jmp    4018ed <main+0xca>
  4018d3:	mov    %rax,%rbx
  4018d6:	lea    -0x40(%rbp),%rax
  4018da:	mov    %rax,%rdi
  4018dd:	callq  4019a8 <_ZN6hit_stD1Ev>
  4018e2:	mov    %rbx,%rax
  4018e5:	mov    %rax,%rdi
  4018e8:	callq  400f20 <_Unwind_Resume@plt>
  4018ed:	callq  400e90 <__stack_chk_fail@plt>
  4018f2:	add    $0x48,%rsp
  4018f6:	pop    %rbx
  4018f7:	pop    %rbp
  4018f8:	retq   

00000000004018f9 <_Z3sumii>:
  4018f9:	push   %rbp
  4018fa:	mov    %rsp,%rbp
  4018fd:	mov    %edi,-0x14(%rbp)
  401900:	mov    %esi,-0x18(%rbp)
  401903:	mov    -0x14(%rbp),%edx
  401906:	mov    -0x18(%rbp),%eax
  401909:	add    %edx,%eax
  40190b:	mov    %eax,-0x4(%rbp)
  40190e:	mov    -0x4(%rbp),%eax
  401911:	pop    %rbp
  401912:	retq   

0000000000401913 <_Z41__static_initialization_and_destruction_0ii>:
  401913:	push   %rbp
  401914:	mov    %rsp,%rbp
  401917:	sub    $0x10,%rsp
  40191b:	mov    %edi,-0x4(%rbp)
  40191e:	mov    %esi,-0x8(%rbp)
  401921:	cmpl   $0x1,-0x4(%rbp)
  401925:	jne    40194e <_Z41__static_initialization_and_destruction_0ii+0x3b>
  401927:	cmpl   $0xffff,-0x8(%rbp)
  40192e:	jne    40194e <_Z41__static_initialization_and_destruction_0ii+0x3b>
  401930:	mov    $0x60325c,%edi
  401935:	callq  400de0 <_ZNSt8ios_base4InitC1Ev@plt>
  40193a:	mov    $0x603110,%edx
  40193f:	mov    $0x60325c,%esi
  401944:	mov    $0x400e40,%edi
  401949:	callq  400e20 <__cxa_atexit@plt>
  40194e:	nop
  40194f:	leaveq 
  401950:	retq   

0000000000401951 <_GLOBAL__sub_I__Z7partingv>:
  401951:	push   %rbp
  401952:	mov    %rsp,%rbp
  401955:	mov    $0xffff,%esi
  40195a:	mov    $0x1,%edi
  40195f:	callq  401913 <_Z41__static_initialization_and_destruction_0ii>
  401964:	pop    %rbp
  401965:	retq   

0000000000401966 <_ZSt12setprecisioni>:
  401966:	push   %rbp
  401967:	mov    %rsp,%rbp
  40196a:	mov    %edi,-0x4(%rbp)
  40196d:	mov    -0x4(%rbp),%eax
  401970:	pop    %rbp
  401971:	retq   

0000000000401972 <_ZN6hit_stC1Ev>:
  401972:	push   %rbp
  401973:	mov    %rsp,%rbp
  401976:	mov    %rdi,-0x8(%rbp)
  40197a:	mov    -0x8(%rbp),%rax
  40197e:	movl   $0x12,0x14(%rax)
  401985:	mov    -0x8(%rbp),%rax
  401989:	movl   $0x133c9cc,0x18(%rax)
  401990:	mov    -0x8(%rbp),%rax
  401994:	movl   $0x259,0x1c(%rax)
  40199b:	mov    -0x8(%rbp),%rax
  40199f:	movl   $0x746968,(%rax)
  4019a5:	nop
  4019a6:	pop    %rbp
  4019a7:	retq   

00000000004019a8 <_ZN6hit_stD1Ev>:
  4019a8:	push   %rbp
  4019a9:	mov    %rsp,%rbp
  4019ac:	sub    $0x10,%rsp
  4019b0:	mov    %rdi,-0x8(%rbp)
  4019b4:	mov    $0x402078,%edi
  4019b9:	callq  400db0 <puts@plt>
  4019be:	nop
  4019bf:	leaveq 
  4019c0:	retq   
  4019c1:	nop

00000000004019c2 <_ZN6hit_st8sayhelloEv>:
  4019c2:	push   %rbp
  4019c3:	mov    %rsp,%rbp
  4019c6:	sub    $0x10,%rsp
  4019ca:	mov    %rdi,-0x8(%rbp)
  4019ce:	mov    -0x8(%rbp),%rax
  4019d2:	mov    %rax,%rsi
  4019d5:	mov    $0x40208e,%edi
  4019da:	mov    $0x0,%eax
  4019df:	callq  400d70 <printf@plt>
  4019e4:	nop
  4019e5:	leaveq 
  4019e6:	retq   
  4019e7:	nop

00000000004019e8 <_ZNSaIiEC1Ev>:
  4019e8:	push   %rbp
  4019e9:	mov    %rsp,%rbp
  4019ec:	sub    $0x10,%rsp
  4019f0:	mov    %rdi,-0x8(%rbp)
  4019f4:	mov    -0x8(%rbp),%rax
  4019f8:	mov    %rax,%rdi
  4019fb:	callq  401af0 <_ZN9__gnu_cxx13new_allocatorIiEC1Ev>
  401a00:	nop
  401a01:	leaveq 
  401a02:	retq   
  401a03:	nop

0000000000401a04 <_ZNSaIiED1Ev>:
  401a04:	push   %rbp
  401a05:	mov    %rsp,%rbp
  401a08:	sub    $0x10,%rsp
  401a0c:	mov    %rdi,-0x8(%rbp)
  401a10:	mov    -0x8(%rbp),%rax
  401a14:	mov    %rax,%rdi
  401a17:	callq  401afc <_ZN9__gnu_cxx13new_allocatorIiED1Ev>
  401a1c:	nop
  401a1d:	leaveq 
  401a1e:	retq   
  401a1f:	nop

0000000000401a20 <_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_>:
  401a20:	push   %rbp
  401a21:	mov    %rsp,%rbp
  401a24:	push   %rbx
  401a25:	sub    $0x28,%rsp
  401a29:	mov    %rdi,-0x18(%rbp)
  401a2d:	mov    %rsi,-0x20(%rbp)
  401a31:	mov    %rdx,-0x28(%rbp)
  401a35:	mov    %rcx,-0x30(%rbp)
  401a39:	mov    -0x18(%rbp),%rax
  401a3d:	mov    -0x30(%rbp),%rdx
  401a41:	mov    -0x20(%rbp),%rcx
  401a45:	mov    %rcx,%rsi
  401a48:	mov    %rax,%rdi
  401a4b:	callq  401b24 <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_>
  401a50:	mov    -0x28(%rbp),%rdx
  401a54:	mov    -0x20(%rbp),%rcx
  401a58:	mov    -0x18(%rbp),%rax
  401a5c:	mov    %rcx,%rsi
  401a5f:	mov    %rax,%rdi
  401a62:	callq  401bf4 <_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi>
  401a67:	jmp    401a83 <_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_+0x63>
  401a69:	mov    %rax,%rbx
  401a6c:	mov    -0x18(%rbp),%rax
  401a70:	mov    %rax,%rdi
  401a73:	callq  401b82 <_ZNSt12_Vector_baseIiSaIiEED1Ev>
  401a78:	mov    %rbx,%rax
  401a7b:	mov    %rax,%rdi
  401a7e:	callq  400f20 <_Unwind_Resume@plt>
  401a83:	add    $0x28,%rsp
  401a87:	pop    %rbx
  401a88:	pop    %rbp
  401a89:	retq   

0000000000401a8a <_ZNSt6vectorIiSaIiEED1Ev>:
  401a8a:	push   %rbp
  401a8b:	mov    %rsp,%rbp
  401a8e:	push   %rbx
  401a8f:	sub    $0x18,%rsp
  401a93:	mov    %rdi,-0x18(%rbp)
  401a97:	mov    -0x18(%rbp),%rax
  401a9b:	mov    %rax,%rdi
  401a9e:	callq  401c3c <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
  401aa3:	mov    %rax,%rdx
  401aa6:	mov    -0x18(%rbp),%rax
  401aaa:	mov    0x8(%rax),%rcx
  401aae:	mov    -0x18(%rbp),%rax
  401ab2:	mov    (%rax),%rax
  401ab5:	mov    %rcx,%rsi
  401ab8:	mov    %rax,%rdi
  401abb:	callq  401c4a <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>
  401ac0:	mov    -0x18(%rbp),%rax
  401ac4:	mov    %rax,%rdi
  401ac7:	callq  401b82 <_ZNSt12_Vector_baseIiSaIiEED1Ev>
  401acc:	jmp    401ae8 <_ZNSt6vectorIiSaIiEED1Ev+0x5e>
  401ace:	mov    %rax,%rbx
  401ad1:	mov    -0x18(%rbp),%rax
  401ad5:	mov    %rax,%rdi
  401ad8:	callq  401b82 <_ZNSt12_Vector_baseIiSaIiEED1Ev>
  401add:	mov    %rbx,%rax
  401ae0:	mov    %rax,%rdi
  401ae3:	callq  400f20 <_Unwind_Resume@plt>
  401ae8:	add    $0x18,%rsp
  401aec:	pop    %rbx
  401aed:	pop    %rbp
  401aee:	retq   
  401aef:	nop

0000000000401af0 <_ZN9__gnu_cxx13new_allocatorIiEC1Ev>:
  401af0:	push   %rbp
  401af1:	mov    %rsp,%rbp
  401af4:	mov    %rdi,-0x8(%rbp)
  401af8:	nop
  401af9:	pop    %rbp
  401afa:	retq   
  401afb:	nop

0000000000401afc <_ZN9__gnu_cxx13new_allocatorIiED1Ev>:
  401afc:	push   %rbp
  401afd:	mov    %rsp,%rbp
  401b00:	mov    %rdi,-0x8(%rbp)
  401b04:	nop
  401b05:	pop    %rbp
  401b06:	retq   
  401b07:	nop

0000000000401b08 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>:
  401b08:	push   %rbp
  401b09:	mov    %rsp,%rbp
  401b0c:	sub    $0x10,%rsp
  401b10:	mov    %rdi,-0x8(%rbp)
  401b14:	mov    -0x8(%rbp),%rax
  401b18:	mov    %rax,%rdi
  401b1b:	callq  401a04 <_ZNSaIiED1Ev>
  401b20:	nop
  401b21:	leaveq 
  401b22:	retq   
  401b23:	nop

0000000000401b24 <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_>:
  401b24:	push   %rbp
  401b25:	mov    %rsp,%rbp
  401b28:	push   %rbx
  401b29:	sub    $0x28,%rsp
  401b2d:	mov    %rdi,-0x18(%rbp)
  401b31:	mov    %rsi,-0x20(%rbp)
  401b35:	mov    %rdx,-0x28(%rbp)
  401b39:	mov    -0x18(%rbp),%rax
  401b3d:	mov    -0x28(%rbp),%rdx
  401b41:	mov    %rdx,%rsi
  401b44:	mov    %rax,%rdi
  401b47:	callq  401c74 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_>
  401b4c:	mov    -0x20(%rbp),%rdx
  401b50:	mov    -0x18(%rbp),%rax
  401b54:	mov    %rdx,%rsi
  401b57:	mov    %rax,%rdi
  401b5a:	callq  401cbe <_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm>
  401b5f:	jmp    401b7b <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_+0x57>
  401b61:	mov    %rax,%rbx
  401b64:	mov    -0x18(%rbp),%rax
  401b68:	mov    %rax,%rdi
  401b6b:	callq  401b08 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
  401b70:	mov    %rbx,%rax
  401b73:	mov    %rax,%rdi
  401b76:	callq  400f20 <_Unwind_Resume@plt>
  401b7b:	add    $0x28,%rsp
  401b7f:	pop    %rbx
  401b80:	pop    %rbp
  401b81:	retq   

0000000000401b82 <_ZNSt12_Vector_baseIiSaIiEED1Ev>:
  401b82:	push   %rbp
  401b83:	mov    %rsp,%rbp
  401b86:	push   %rbx
  401b87:	sub    $0x18,%rsp
  401b8b:	mov    %rdi,-0x18(%rbp)
  401b8f:	mov    -0x18(%rbp),%rax
  401b93:	mov    0x10(%rax),%rax
  401b97:	mov    %rax,%rdx
  401b9a:	mov    -0x18(%rbp),%rax
  401b9e:	mov    (%rax),%rax
  401ba1:	sub    %rax,%rdx
  401ba4:	mov    %rdx,%rax
  401ba7:	sar    $0x2,%rax
  401bab:	mov    %rax,%rdx
  401bae:	mov    -0x18(%rbp),%rax
  401bb2:	mov    (%rax),%rcx
  401bb5:	mov    -0x18(%rbp),%rax
  401bb9:	mov    %rcx,%rsi
  401bbc:	mov    %rax,%rdi
  401bbf:	callq  401d18 <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>
  401bc4:	mov    -0x18(%rbp),%rax
  401bc8:	mov    %rax,%rdi
  401bcb:	callq  401b08 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
  401bd0:	jmp    401bec <_ZNSt12_Vector_baseIiSaIiEED1Ev+0x6a>
  401bd2:	mov    %rax,%rbx
  401bd5:	mov    -0x18(%rbp),%rax
  401bd9:	mov    %rax,%rdi
  401bdc:	callq  401b08 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
  401be1:	mov    %rbx,%rax
  401be4:	mov    %rax,%rdi
  401be7:	callq  400f20 <_Unwind_Resume@plt>
  401bec:	add    $0x18,%rsp
  401bf0:	pop    %rbx
  401bf1:	pop    %rbp
  401bf2:	retq   
  401bf3:	nop

0000000000401bf4 <_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi>:
  401bf4:	push   %rbp
  401bf5:	mov    %rsp,%rbp
  401bf8:	sub    $0x20,%rsp
  401bfc:	mov    %rdi,-0x8(%rbp)
  401c00:	mov    %rsi,-0x10(%rbp)
  401c04:	mov    %rdx,-0x18(%rbp)
  401c08:	mov    -0x8(%rbp),%rax
  401c0c:	mov    %rax,%rdi
  401c0f:	callq  401c3c <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
  401c14:	mov    %rax,%rcx
  401c17:	mov    -0x8(%rbp),%rax
  401c1b:	mov    (%rax),%rax
  401c1e:	mov    -0x18(%rbp),%rdx
  401c22:	mov    -0x10(%rbp),%rsi
  401c26:	mov    %rax,%rdi
  401c29:	callq  401d4d <_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E>
  401c2e:	mov    %rax,%rdx
  401c31:	mov    -0x8(%rbp),%rax
  401c35:	mov    %rdx,0x8(%rax)
  401c39:	nop
  401c3a:	leaveq 
  401c3b:	retq   

0000000000401c3c <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>:
  401c3c:	push   %rbp
  401c3d:	mov    %rsp,%rbp
  401c40:	mov    %rdi,-0x8(%rbp)
  401c44:	mov    -0x8(%rbp),%rax
  401c48:	pop    %rbp
  401c49:	retq   

0000000000401c4a <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>:
  401c4a:	push   %rbp
  401c4b:	mov    %rsp,%rbp
  401c4e:	sub    $0x20,%rsp
  401c52:	mov    %rdi,-0x8(%rbp)
  401c56:	mov    %rsi,-0x10(%rbp)
  401c5a:	mov    %rdx,-0x18(%rbp)
  401c5e:	mov    -0x10(%rbp),%rdx
  401c62:	mov    -0x8(%rbp),%rax
  401c66:	mov    %rdx,%rsi
  401c69:	mov    %rax,%rdi
  401c6c:	callq  401d7e <_ZSt8_DestroyIPiEvT_S1_>
  401c71:	nop
  401c72:	leaveq 
  401c73:	retq   

0000000000401c74 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_>:
  401c74:	push   %rbp
  401c75:	mov    %rsp,%rbp
  401c78:	sub    $0x10,%rsp
  401c7c:	mov    %rdi,-0x8(%rbp)
  401c80:	mov    %rsi,-0x10(%rbp)
  401c84:	mov    -0x10(%rbp),%rdx
  401c88:	mov    -0x8(%rbp),%rax
  401c8c:	mov    %rdx,%rsi
  401c8f:	mov    %rax,%rdi
  401c92:	callq  401da4 <_ZNSaIiEC1ERKS_>
  401c97:	mov    -0x8(%rbp),%rax
  401c9b:	movq   $0x0,(%rax)
  401ca2:	mov    -0x8(%rbp),%rax
  401ca6:	movq   $0x0,0x8(%rax)
  401cae:	mov    -0x8(%rbp),%rax
  401cb2:	movq   $0x0,0x10(%rax)
  401cba:	nop
  401cbb:	leaveq 
  401cbc:	retq   
  401cbd:	nop

0000000000401cbe <_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm>:
  401cbe:	push   %rbp
  401cbf:	mov    %rsp,%rbp
  401cc2:	sub    $0x10,%rsp
  401cc6:	mov    %rdi,-0x8(%rbp)
  401cca:	mov    %rsi,-0x10(%rbp)
  401cce:	mov    -0x10(%rbp),%rdx
  401cd2:	mov    -0x8(%rbp),%rax
  401cd6:	mov    %rdx,%rsi
  401cd9:	mov    %rax,%rdi
  401cdc:	callq  401dca <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm>
  401ce1:	mov    %rax,%rdx
  401ce4:	mov    -0x8(%rbp),%rax
  401ce8:	mov    %rdx,(%rax)
  401ceb:	mov    -0x8(%rbp),%rax
  401cef:	mov    (%rax),%rdx
  401cf2:	mov    -0x8(%rbp),%rax
  401cf6:	mov    %rdx,0x8(%rax)
  401cfa:	mov    -0x8(%rbp),%rax
  401cfe:	mov    (%rax),%rax
  401d01:	mov    -0x10(%rbp),%rdx
  401d05:	shl    $0x2,%rdx
  401d09:	add    %rax,%rdx
  401d0c:	mov    -0x8(%rbp),%rax
  401d10:	mov    %rdx,0x10(%rax)
  401d14:	nop
  401d15:	leaveq 
  401d16:	retq   
  401d17:	nop

0000000000401d18 <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>:
  401d18:	push   %rbp
  401d19:	mov    %rsp,%rbp
  401d1c:	sub    $0x20,%rsp
  401d20:	mov    %rdi,-0x8(%rbp)
  401d24:	mov    %rsi,-0x10(%rbp)
  401d28:	mov    %rdx,-0x18(%rbp)
  401d2c:	cmpq   $0x0,-0x10(%rbp)
  401d31:	je     401d4a <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim+0x32>
  401d33:	mov    -0x8(%rbp),%rax
  401d37:	mov    -0x18(%rbp),%rdx
  401d3b:	mov    -0x10(%rbp),%rcx
  401d3f:	mov    %rcx,%rsi
  401d42:	mov    %rax,%rdi
  401d45:	callq  401dfd <_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim>
  401d4a:	nop
  401d4b:	leaveq 
  401d4c:	retq   

0000000000401d4d <_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E>:
  401d4d:	push   %rbp
  401d4e:	mov    %rsp,%rbp
  401d51:	sub    $0x20,%rsp
  401d55:	mov    %rdi,-0x8(%rbp)
  401d59:	mov    %rsi,-0x10(%rbp)
  401d5d:	mov    %rdx,-0x18(%rbp)
  401d61:	mov    %rcx,-0x20(%rbp)
  401d65:	mov    -0x18(%rbp),%rdx
  401d69:	mov    -0x10(%rbp),%rcx
  401d6d:	mov    -0x8(%rbp),%rax
  401d71:	mov    %rcx,%rsi
  401d74:	mov    %rax,%rdi
  401d77:	callq  401e2b <_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_>
  401d7c:	leaveq 
  401d7d:	retq   

0000000000401d7e <_ZSt8_DestroyIPiEvT_S1_>:
  401d7e:	push   %rbp
  401d7f:	mov    %rsp,%rbp
  401d82:	sub    $0x10,%rsp
  401d86:	mov    %rdi,-0x8(%rbp)
  401d8a:	mov    %rsi,-0x10(%rbp)
  401d8e:	mov    -0x10(%rbp),%rdx
  401d92:	mov    -0x8(%rbp),%rax
  401d96:	mov    %rdx,%rsi
  401d99:	mov    %rax,%rdi
  401d9c:	callq  401e5c <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>
  401da1:	nop
  401da2:	leaveq 
  401da3:	retq   

0000000000401da4 <_ZNSaIiEC1ERKS_>:
  401da4:	push   %rbp
  401da5:	mov    %rsp,%rbp
  401da8:	sub    $0x10,%rsp
  401dac:	mov    %rdi,-0x8(%rbp)
  401db0:	mov    %rsi,-0x10(%rbp)
  401db4:	mov    -0x10(%rbp),%rdx
  401db8:	mov    -0x8(%rbp),%rax
  401dbc:	mov    %rdx,%rsi
  401dbf:	mov    %rax,%rdi
  401dc2:	callq  401e6c <_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_>
  401dc7:	nop
  401dc8:	leaveq 
  401dc9:	retq   

0000000000401dca <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm>:
  401dca:	push   %rbp
  401dcb:	mov    %rsp,%rbp
  401dce:	sub    $0x10,%rsp
  401dd2:	mov    %rdi,-0x8(%rbp)
  401dd6:	mov    %rsi,-0x10(%rbp)
  401dda:	cmpq   $0x0,-0x10(%rbp)
  401ddf:	je     401df6 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm+0x2c>
  401de1:	mov    -0x8(%rbp),%rax
  401de5:	mov    -0x10(%rbp),%rdx
  401de9:	mov    %rdx,%rsi
  401dec:	mov    %rax,%rdi
  401def:	callq  401e7b <_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m>
  401df4:	jmp    401dfb <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm+0x31>
  401df6:	mov    $0x0,%eax
  401dfb:	leaveq 
  401dfc:	retq   

0000000000401dfd <_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim>:
  401dfd:	push   %rbp
  401dfe:	mov    %rsp,%rbp
  401e01:	sub    $0x20,%rsp
  401e05:	mov    %rdi,-0x8(%rbp)
  401e09:	mov    %rsi,-0x10(%rbp)
  401e0d:	mov    %rdx,-0x18(%rbp)
  401e11:	mov    -0x18(%rbp),%rdx
  401e15:	mov    -0x10(%rbp),%rcx
  401e19:	mov    -0x8(%rbp),%rax
  401e1d:	mov    %rcx,%rsi
  401e20:	mov    %rax,%rdi
  401e23:	callq  401ea6 <_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim>
  401e28:	nop
  401e29:	leaveq 
  401e2a:	retq   

0000000000401e2b <_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_>:
  401e2b:	push   %rbp
  401e2c:	mov    %rsp,%rbp
  401e2f:	sub    $0x30,%rsp
  401e33:	mov    %rdi,-0x18(%rbp)
  401e37:	mov    %rsi,-0x20(%rbp)
  401e3b:	mov    %rdx,-0x28(%rbp)
  401e3f:	movb   $0x1,-0x1(%rbp)
  401e43:	mov    -0x28(%rbp),%rdx
  401e47:	mov    -0x20(%rbp),%rcx
  401e4b:	mov    -0x18(%rbp),%rax
  401e4f:	mov    %rcx,%rsi
  401e52:	mov    %rax,%rdi
  401e55:	callq  401ec9 <_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_>
  401e5a:	leaveq 
  401e5b:	retq   

0000000000401e5c <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>:
  401e5c:	push   %rbp
  401e5d:	mov    %rsp,%rbp
  401e60:	mov    %rdi,-0x8(%rbp)
  401e64:	mov    %rsi,-0x10(%rbp)
  401e68:	nop
  401e69:	pop    %rbp
  401e6a:	retq   
  401e6b:	nop

0000000000401e6c <_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_>:
  401e6c:	push   %rbp
  401e6d:	mov    %rsp,%rbp
  401e70:	mov    %rdi,-0x8(%rbp)
  401e74:	mov    %rsi,-0x10(%rbp)
  401e78:	nop
  401e79:	pop    %rbp
  401e7a:	retq   

0000000000401e7b <_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m>:
  401e7b:	push   %rbp
  401e7c:	mov    %rsp,%rbp
  401e7f:	sub    $0x10,%rsp
  401e83:	mov    %rdi,-0x8(%rbp)
  401e87:	mov    %rsi,-0x10(%rbp)
  401e8b:	mov    -0x10(%rbp),%rcx
  401e8f:	mov    -0x8(%rbp),%rax
  401e93:	mov    $0x0,%edx
  401e98:	mov    %rcx,%rsi
  401e9b:	mov    %rax,%rdi
  401e9e:	callq  401ef6 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv>
  401ea3:	leaveq 
  401ea4:	retq   
  401ea5:	nop

0000000000401ea6 <_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim>:
  401ea6:	push   %rbp
  401ea7:	mov    %rsp,%rbp
  401eaa:	sub    $0x20,%rsp
  401eae:	mov    %rdi,-0x8(%rbp)
  401eb2:	mov    %rsi,-0x10(%rbp)
  401eb6:	mov    %rdx,-0x18(%rbp)
  401eba:	mov    -0x10(%rbp),%rax
  401ebe:	mov    %rax,%rdi
  401ec1:	callq  400dc0 <_ZdlPv@plt>
  401ec6:	nop
  401ec7:	leaveq 
  401ec8:	retq   

0000000000401ec9 <_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_>:
  401ec9:	push   %rbp
  401eca:	mov    %rsp,%rbp
  401ecd:	sub    $0x20,%rsp
  401ed1:	mov    %rdi,-0x8(%rbp)
  401ed5:	mov    %rsi,-0x10(%rbp)
  401ed9:	mov    %rdx,-0x18(%rbp)
  401edd:	mov    -0x18(%rbp),%rdx
  401ee1:	mov    -0x10(%rbp),%rcx
  401ee5:	mov    -0x8(%rbp),%rax
  401ee9:	mov    %rcx,%rsi
  401eec:	mov    %rax,%rdi
  401eef:	callq  401f38 <_ZSt6fill_nIPimiET_S1_T0_RKT1_>
  401ef4:	leaveq 
  401ef5:	retq   

0000000000401ef6 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv>:
  401ef6:	push   %rbp
  401ef7:	mov    %rsp,%rbp
  401efa:	sub    $0x20,%rsp
  401efe:	mov    %rdi,-0x8(%rbp)
  401f02:	mov    %rsi,-0x10(%rbp)
  401f06:	mov    %rdx,-0x18(%rbp)
  401f0a:	mov    -0x8(%rbp),%rax
  401f0e:	mov    %rax,%rdi
  401f11:	callq  401f70 <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>
  401f16:	cmp    -0x10(%rbp),%rax
  401f1a:	setb   %al
  401f1d:	test   %al,%al
  401f1f:	je     401f26 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv+0x30>
  401f21:	callq  400ed0 <_ZSt17__throw_bad_allocv@plt>
  401f26:	mov    -0x10(%rbp),%rax
  401f2a:	shl    $0x2,%rax
  401f2e:	mov    %rax,%rdi
  401f31:	callq  400f10 <_Znwm@plt>
  401f36:	leaveq 
  401f37:	retq   

0000000000401f38 <_ZSt6fill_nIPimiET_S1_T0_RKT1_>:
  401f38:	push   %rbp
  401f39:	mov    %rsp,%rbp
  401f3c:	sub    $0x20,%rsp
  401f40:	mov    %rdi,-0x8(%rbp)
  401f44:	mov    %rsi,-0x10(%rbp)
  401f48:	mov    %rdx,-0x18(%rbp)
  401f4c:	mov    -0x8(%rbp),%rax
  401f50:	mov    %rax,%rdi
  401f53:	callq  401f84 <_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_>
  401f58:	mov    %rax,%rcx
  401f5b:	mov    -0x18(%rbp),%rdx
  401f5f:	mov    -0x10(%rbp),%rax
  401f63:	mov    %rax,%rsi
  401f66:	mov    %rcx,%rdi
  401f69:	callq  401f9e <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_>
  401f6e:	leaveq 
  401f6f:	retq   

0000000000401f70 <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>:
  401f70:	push   %rbp
  401f71:	mov    %rsp,%rbp
  401f74:	mov    %rdi,-0x8(%rbp)
  401f78:	movabs $0x3fffffffffffffff,%rax
  401f82:	pop    %rbp
  401f83:	retq   

0000000000401f84 <_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_>:
  401f84:	push   %rbp
  401f85:	mov    %rsp,%rbp
  401f88:	sub    $0x10,%rsp
  401f8c:	mov    %rdi,-0x8(%rbp)
  401f90:	mov    -0x8(%rbp),%rax
  401f94:	mov    %rax,%rdi
  401f97:	callq  401fe1 <_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_>
  401f9c:	leaveq 
  401f9d:	retq   

0000000000401f9e <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_>:
  401f9e:	push   %rbp
  401f9f:	mov    %rsp,%rbp
  401fa2:	mov    %rdi,-0x18(%rbp)
  401fa6:	mov    %rsi,-0x20(%rbp)
  401faa:	mov    %rdx,-0x28(%rbp)
  401fae:	mov    -0x28(%rbp),%rax
  401fb2:	mov    (%rax),%eax
  401fb4:	mov    %eax,-0xc(%rbp)
  401fb7:	mov    -0x20(%rbp),%rax
  401fbb:	mov    %rax,-0x8(%rbp)
  401fbf:	cmpq   $0x0,-0x8(%rbp)
  401fc4:	je     401fdb <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_+0x3d>
  401fc6:	mov    -0x18(%rbp),%rax
  401fca:	mov    -0xc(%rbp),%edx
  401fcd:	mov    %edx,(%rax)
  401fcf:	subq   $0x1,-0x8(%rbp)
  401fd4:	addq   $0x4,-0x18(%rbp)
  401fd9:	jmp    401fbf <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_+0x21>
  401fdb:	mov    -0x18(%rbp),%rax
  401fdf:	pop    %rbp
  401fe0:	retq   

0000000000401fe1 <_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_>:
  401fe1:	push   %rbp
  401fe2:	mov    %rsp,%rbp
  401fe5:	mov    %rdi,-0x8(%rbp)
  401fe9:	mov    -0x8(%rbp),%rax
  401fed:	pop    %rbp
  401fee:	retq   
  401fef:	nop

0000000000401ff0 <__libc_csu_init>:
  401ff0:	push   %r15
  401ff2:	push   %r14
  401ff4:	mov    %edi,%r15d
  401ff7:	push   %r13
  401ff9:	push   %r12
  401ffb:	lea    0x200de6(%rip),%r12        # 602de8 <__frame_dummy_init_array_entry>
  402002:	push   %rbp
  402003:	lea    0x200dee(%rip),%rbp        # 602df8 <__init_array_end>
  40200a:	push   %rbx
  40200b:	mov    %rsi,%r14
  40200e:	mov    %rdx,%r13
  402011:	sub    %r12,%rbp
  402014:	sub    $0x8,%rsp
  402018:	sar    $0x3,%rbp
  40201c:	callq  400d20 <_init>
  402021:	test   %rbp,%rbp
  402024:	je     402046 <__libc_csu_init+0x56>
  402026:	xor    %ebx,%ebx
  402028:	nopl   0x0(%rax,%rax,1)
  402030:	mov    %r13,%rdx
  402033:	mov    %r14,%rsi
  402036:	mov    %r15d,%edi
  402039:	callq  *(%r12,%rbx,8)
  40203d:	add    $0x1,%rbx
  402041:	cmp    %rbp,%rbx
  402044:	jne    402030 <__libc_csu_init+0x40>
  402046:	add    $0x8,%rsp
  40204a:	pop    %rbx
  40204b:	pop    %rbp
  40204c:	pop    %r12
  40204e:	pop    %r13
  402050:	pop    %r14
  402052:	pop    %r15
  402054:	retq   
  402055:	nop
  402056:	nopw   %cs:0x0(%rax,%rax,1)

0000000000402060 <__libc_csu_fini>:
  402060:	repz retq 

Disassembly of section .fini:

0000000000402064 <_fini>:
  402064:	sub    $0x8,%rsp
  402068:	add    $0x8,%rsp
  40206c:	retq   
