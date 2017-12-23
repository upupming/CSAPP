
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
  400f4f:	mov    $0x402050,%r8
  400f56:	mov    $0x401fe0,%rcx
  400f5d:	mov    $0x4017ed,%rdi
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

0000000000401036 <_Z7printstR2st>:
  401036:	push   %rbp
  401037:	mov    %rsp,%rbp
  40103a:	sub    $0x10,%rsp
  40103e:	mov    %rdi,-0x8(%rbp)
  401042:	mov    -0x8(%rbp),%rax
  401046:	mov    0x14(%rax),%ecx
  401049:	mov    -0x8(%rbp),%rdx
  40104d:	mov    -0x8(%rbp),%rax
  401051:	mov    0x18(%rax),%eax
  401054:	mov    %eax,%esi
  401056:	mov    $0x402098,%edi
  40105b:	mov    $0x0,%eax
  401060:	callq  400d70 <printf@plt>
  401065:	nop
  401066:	leaveq 
  401067:	retq   

0000000000401068 <_Z6branchii>:
  401068:	push   %rbp
  401069:	mov    %rsp,%rbp
  40106c:	sub    $0x20,%rsp
  401070:	mov    %edi,-0x14(%rbp)
  401073:	mov    %esi,-0x18(%rbp)
  401076:	cmpl   $0x0,-0x14(%rbp)
  40107a:	je     401086 <_Z6branchii+0x1e>
  40107c:	mov    $0x4020b0,%edi
  401081:	callq  400db0 <puts@plt>
  401086:	cmpl   $0x0,-0x18(%rbp)
  40108a:	jne    401098 <_Z6branchii+0x30>
  40108c:	mov    $0x4020be,%edi
  401091:	callq  400db0 <puts@plt>
  401096:	jmp    4010a2 <_Z6branchii+0x3a>
  401098:	mov    $0x4020c9,%edi
  40109d:	callq  400db0 <puts@plt>
  4010a2:	movl   $0x2,-0x4(%rbp)
  4010a9:	mov    -0x4(%rbp),%eax
  4010ac:	cmp    $0x6,%eax
  4010af:	ja     401111 <_Z6branchii+0xa9>
  4010b1:	mov    %eax,%eax
  4010b3:	mov    0x402128(,%rax,8),%rax
  4010bb:	jmpq   *%rax
  4010bd:	mov    $0x4020d7,%edi
  4010c2:	callq  400db0 <puts@plt>
  4010c7:	jmp    40111c <_Z6branchii+0xb4>
  4010c9:	mov    $0x4020de,%edi
  4010ce:	callq  400db0 <puts@plt>
  4010d3:	jmp    40111c <_Z6branchii+0xb4>
  4010d5:	mov    $0x4020e6,%edi
  4010da:	callq  400db0 <puts@plt>
  4010df:	jmp    40111c <_Z6branchii+0xb4>
  4010e1:	mov    $0x4020f0,%edi
  4010e6:	callq  400db0 <puts@plt>
  4010eb:	jmp    40111c <_Z6branchii+0xb4>
  4010ed:	mov    $0x4020f9,%edi
  4010f2:	callq  400db0 <puts@plt>
  4010f7:	jmp    40111c <_Z6branchii+0xb4>
  4010f9:	mov    $0x402100,%edi
  4010fe:	callq  400db0 <puts@plt>
  401103:	jmp    40111c <_Z6branchii+0xb4>
  401105:	mov    $0x402109,%edi
  40110a:	callq  400db0 <puts@plt>
  40110f:	jmp    40111c <_Z6branchii+0xb4>
  401111:	mov    $0x402110,%edi
  401116:	callq  400db0 <puts@plt>
  40111b:	nop
  40111c:	nop
  40111d:	leaveq 
  40111e:	retq   

000000000040111f <_Z4loopv>:
  40111f:	push   %rbp
  401120:	mov    %rsp,%rbp
  401123:	sub    $0x10,%rsp
  401127:	movl   $0x5,-0x8(%rbp)
  40112e:	movl   $0x1,-0x4(%rbp)
  401135:	cmpl   $0x1,-0x8(%rbp)
  401139:	jle    40115f <_Z4loopv+0x40>
  40113b:	mov    -0x4(%rbp),%eax
  40113e:	imul   -0x8(%rbp),%eax
  401142:	mov    %eax,-0x4(%rbp)
  401145:	mov    -0x8(%rbp),%eax
  401148:	mov    %eax,%esi
  40114a:	mov    $0x402160,%edi
  40114f:	mov    $0x0,%eax
  401154:	callq  400d70 <printf@plt>
  401159:	subl   $0x1,-0x8(%rbp)
  40115d:	jmp    401135 <_Z4loopv+0x16>
  40115f:	mov    -0x4(%rbp),%eax
  401162:	mov    %eax,%esi
  401164:	mov    $0x402166,%edi
  401169:	mov    $0x0,%eax
  40116e:	callq  400d70 <printf@plt>
  401173:	movl   $0x2,-0x8(%rbp)
  40117a:	movl   $0x1,-0x4(%rbp)
  401181:	mov    $0x31,%edi
  401186:	callq  400dd0 <putchar@plt>
  40118b:	mov    -0x4(%rbp),%eax
  40118e:	imul   -0x8(%rbp),%eax
  401192:	mov    %eax,-0x4(%rbp)
  401195:	mov    -0x8(%rbp),%eax
  401198:	mov    %eax,%esi
  40119a:	mov    $0x40216e,%edi
  40119f:	mov    $0x0,%eax
  4011a4:	callq  400d70 <printf@plt>
  4011a9:	addl   $0x1,-0x8(%rbp)
  4011ad:	cmpl   $0x5,-0x8(%rbp)
  4011b1:	jg     4011b5 <_Z4loopv+0x96>
  4011b3:	jmp    40118b <_Z4loopv+0x6c>
  4011b5:	mov    -0x4(%rbp),%eax
  4011b8:	mov    %eax,%esi
  4011ba:	mov    $0x402174,%edi
  4011bf:	mov    $0x0,%eax
  4011c4:	callq  400d70 <printf@plt>
  4011c9:	movl   $0x1,-0x4(%rbp)
  4011d0:	movl   $0x1,-0x8(%rbp)
  4011d7:	cmpl   $0x4,-0x8(%rbp)
  4011db:	jg     401201 <_Z4loopv+0xe2>
  4011dd:	mov    -0x4(%rbp),%eax
  4011e0:	imul   -0x8(%rbp),%eax
  4011e4:	mov    %eax,-0x4(%rbp)
  4011e7:	mov    -0x8(%rbp),%eax
  4011ea:	mov    %eax,%esi
  4011ec:	mov    $0x402160,%edi
  4011f1:	mov    $0x0,%eax
  4011f6:	callq  400d70 <printf@plt>
  4011fb:	addl   $0x1,-0x8(%rbp)
  4011ff:	jmp    4011d7 <_Z4loopv+0xb8>
  401201:	mov    -0x4(%rbp),%eax
  401204:	imul   -0x8(%rbp),%eax
  401208:	mov    %eax,%edx
  40120a:	mov    -0x8(%rbp),%eax
  40120d:	mov    %eax,%esi
  40120f:	mov    $0x40217b,%edi
  401214:	mov    $0x0,%eax
  401219:	callq  400d70 <printf@plt>
  40121e:	nop
  40121f:	leaveq 
  401220:	retq   

0000000000401221 <_Z7my_swapPiS_>:
  401221:	push   %rbp
  401222:	mov    %rsp,%rbp
  401225:	mov    %rdi,-0x18(%rbp)
  401229:	mov    %rsi,-0x20(%rbp)
  40122d:	mov    -0x20(%rbp),%rax
  401231:	mov    (%rax),%eax
  401233:	mov    %eax,-0x4(%rbp)
  401236:	mov    -0x18(%rbp),%rax
  40123a:	mov    (%rax),%edx
  40123c:	mov    -0x20(%rbp),%rax
  401240:	mov    %edx,(%rax)
  401242:	mov    -0x18(%rbp),%rax
  401246:	mov    -0x4(%rbp),%edx
  401249:	mov    %edx,(%rax)
  40124b:	nop
  40124c:	pop    %rbp
  40124d:	retq   

000000000040124e <_Z7my_swapRiS_>:
  40124e:	push   %rbp
  40124f:	mov    %rsp,%rbp
  401252:	mov    %rdi,-0x18(%rbp)
  401256:	mov    %rsi,-0x20(%rbp)
  40125a:	mov    -0x20(%rbp),%rax
  40125e:	mov    (%rax),%eax
  401260:	mov    %eax,-0x4(%rbp)
  401263:	mov    -0x18(%rbp),%rax
  401267:	mov    (%rax),%edx
  401269:	mov    -0x20(%rbp),%rax
  40126d:	mov    %edx,(%rax)
  40126f:	mov    -0x18(%rbp),%rax
  401273:	mov    -0x4(%rbp),%edx
  401276:	mov    %edx,(%rax)
  401278:	nop
  401279:	pop    %rbp
  40127a:	retq   

000000000040127b <_Z9dataTypesv>:
  40127b:	push   %rbp
  40127c:	mov    %rsp,%rbp
  40127f:	push   %r15
  401281:	push   %r14
  401283:	push   %r13
  401285:	push   %r12
  401287:	push   %rbx
  401288:	sub    $0x108,%rsp
  40128f:	mov    %fs:0x28,%rax
  401298:	mov    %rax,-0x38(%rbp)
  40129c:	xor    %eax,%eax
  40129e:	movb   $0x1,-0x117(%rbp)
  4012a5:	movb   $0x41,-0x116(%rbp)
  4012ac:	movb   $0x1,-0x115(%rbp)
  4012b3:	movw   $0xffbf,-0x114(%rbp)
  4012bc:	movw   $0x41,-0x112(%rbp)
  4012c5:	movl   $0xff439eb2,-0x110(%rbp)
  4012cf:	movl   $0xbc614e,-0x10c(%rbp)
  4012d9:	movq   $0xffffffffb669fd2e,-0xf8(%rbp)
  4012e4:	movq   $0x499602d2,-0xf0(%rbp)
  4012ef:	movabs $0xff65b0d02125c834,%rax
  4012f9:	mov    %rax,-0xe8(%rbp)
  401300:	movabs $0x2bdc5455567cf0,%rax
  40130a:	mov    %rax,-0xe0(%rbp)
  401311:	movl   $0xe825c44,-0x108(%rbp)
  40131b:	movl   $0x1eebe08,-0x104(%rbp)
  401325:	movabs $0xffffffc75e37be7c,%rax
  40132f:	mov    %rax,-0xd8(%rbp)
  401336:	movabs $0x786910a88,%rax
  401340:	mov    %rax,-0xd0(%rbp)
  401347:	movss  0xed9(%rip),%xmm0        # 402228 <_ZStL6ignore+0x1be>
  40134f:	movss  %xmm0,-0x100(%rbp)
  401357:	movsd  0xed1(%rip),%xmm0        # 402230 <_ZStL6ignore+0x1c6>
  40135f:	movsd  %xmm0,-0xc8(%rbp)
  401367:	movzbl -0x117(%rbp),%ebx
  40136e:	mov    $0x400ee0,%esi
  401373:	mov    $0x603120,%edi
  401378:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  40137d:	mov    %ebx,%esi
  40137f:	mov    %rax,%rdi
  401382:	callq  400e70 <_ZNSolsEb@plt>
  401387:	mov    $0x400ee0,%esi
  40138c:	mov    %rax,%rdi
  40138f:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  401394:	mov    $0x400ee0,%esi
  401399:	mov    %rax,%rdi
  40139c:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  4013a1:	mov    $0xf,%edi
  4013a6:	callq  40198c <_ZSt12setprecisioni>
  4013ab:	mov    %eax,%r14d
  4013ae:	mov    $0x6,%edi
  4013b3:	callq  40198c <_ZSt12setprecisioni>
  4013b8:	mov    %eax,%r15d
  4013bb:	movzwl -0x112(%rbp),%ebx
  4013c2:	movswl -0x114(%rbp),%r12d
  4013ca:	movzbl -0x115(%rbp),%r13d
  4013d2:	movsbl -0x116(%rbp),%eax
  4013d9:	mov    %eax,%esi
  4013db:	mov    $0x603120,%edi
  4013e0:	callq  400e30 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
  4013e5:	mov    $0x402184,%esi
  4013ea:	mov    %rax,%rdi
  4013ed:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4013f2:	mov    %r13d,%esi
  4013f5:	mov    %rax,%rdi
  4013f8:	callq  400e10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h@plt>
  4013fd:	mov    $0x400ee0,%esi
  401402:	mov    %rax,%rdi
  401405:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  40140a:	mov    $0x400ee0,%esi
  40140f:	mov    %rax,%rdi
  401412:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  401417:	mov    %r12d,%esi
  40141a:	mov    %rax,%rdi
  40141d:	callq  400df0 <_ZNSolsEs@plt>
  401422:	mov    $0x402184,%esi
  401427:	mov    %rax,%rdi
  40142a:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40142f:	mov    %ebx,%esi
  401431:	mov    %rax,%rdi
  401434:	callq  400ef0 <_ZNSolsEt@plt>
  401439:	mov    $0x402184,%esi
  40143e:	mov    %rax,%rdi
  401441:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401446:	mov    %rax,%rdx
  401449:	mov    -0x110(%rbp),%eax
  40144f:	mov    %eax,%esi
  401451:	mov    %rdx,%rdi
  401454:	callq  400d80 <_ZNSolsEi@plt>
  401459:	mov    $0x402184,%esi
  40145e:	mov    %rax,%rdi
  401461:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401466:	mov    %rax,%rdx
  401469:	mov    -0x10c(%rbp),%eax
  40146f:	mov    %eax,%esi
  401471:	mov    %rdx,%rdi
  401474:	callq  400e80 <_ZNSolsEj@plt>
  401479:	mov    $0x402184,%esi
  40147e:	mov    %rax,%rdi
  401481:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401486:	mov    %rax,%rdx
  401489:	mov    -0xf8(%rbp),%rax
  401490:	mov    %rax,%rsi
  401493:	mov    %rdx,%rdi
  401496:	callq  400d60 <_ZNSolsEl@plt>
  40149b:	mov    $0x402184,%esi
  4014a0:	mov    %rax,%rdi
  4014a3:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4014a8:	mov    %rax,%rdx
  4014ab:	mov    -0xf0(%rbp),%rax
  4014b2:	mov    %rax,%rsi
  4014b5:	mov    %rdx,%rdi
  4014b8:	callq  400e60 <_ZNSolsEm@plt>
  4014bd:	mov    $0x402184,%esi
  4014c2:	mov    %rax,%rdi
  4014c5:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4014ca:	mov    %rax,%rdx
  4014cd:	mov    -0xe8(%rbp),%rax
  4014d4:	mov    %rax,%rsi
  4014d7:	mov    %rdx,%rdi
  4014da:	callq  400eb0 <_ZNSolsEx@plt>
  4014df:	mov    $0x402184,%esi
  4014e4:	mov    %rax,%rdi
  4014e7:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4014ec:	mov    %rax,%rdx
  4014ef:	mov    -0xe0(%rbp),%rax
  4014f6:	mov    %rax,%rsi
  4014f9:	mov    %rdx,%rdi
  4014fc:	callq  400da0 <_ZNSolsEy@plt>
  401501:	mov    $0x402184,%esi
  401506:	mov    %rax,%rdi
  401509:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40150e:	mov    %rax,%rdx
  401511:	mov    -0x108(%rbp),%eax
  401517:	mov    %eax,%esi
  401519:	mov    %rdx,%rdi
  40151c:	callq  400d80 <_ZNSolsEi@plt>
  401521:	mov    $0x402184,%esi
  401526:	mov    %rax,%rdi
  401529:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40152e:	mov    %rax,%rdx
  401531:	mov    -0x104(%rbp),%eax
  401537:	mov    %eax,%esi
  401539:	mov    %rdx,%rdi
  40153c:	callq  400e80 <_ZNSolsEj@plt>
  401541:	mov    $0x402184,%esi
  401546:	mov    %rax,%rdi
  401549:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40154e:	mov    %rax,%rdx
  401551:	mov    -0xd8(%rbp),%rax
  401558:	mov    %rax,%rsi
  40155b:	mov    %rdx,%rdi
  40155e:	callq  400d60 <_ZNSolsEl@plt>
  401563:	mov    $0x402184,%esi
  401568:	mov    %rax,%rdi
  40156b:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401570:	mov    %rax,%rdx
  401573:	mov    -0xd0(%rbp),%rax
  40157a:	mov    %rax,%rsi
  40157d:	mov    %rdx,%rdi
  401580:	callq  400e60 <_ZNSolsEm@plt>
  401585:	mov    $0x400ee0,%esi
  40158a:	mov    %rax,%rdi
  40158d:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  401592:	mov    $0x400ee0,%esi
  401597:	mov    %rax,%rdi
  40159a:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  40159f:	mov    %r15d,%esi
  4015a2:	mov    %rax,%rdi
  4015a5:	callq  400d90 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision@plt>
  4015aa:	mov    %rax,%rdx
  4015ad:	mov    -0x100(%rbp),%eax
  4015b3:	mov    %eax,-0x128(%rbp)
  4015b9:	movss  -0x128(%rbp),%xmm0
  4015c1:	mov    %rdx,%rdi
  4015c4:	callq  400ea0 <_ZNSolsEf@plt>
  4015c9:	mov    $0x402184,%esi
  4015ce:	mov    %rax,%rdi
  4015d1:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4015d6:	mov    %r14d,%esi
  4015d9:	mov    %rax,%rdi
  4015dc:	callq  400d90 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision@plt>
  4015e1:	mov    %rax,%rdx
  4015e4:	mov    -0xc8(%rbp),%rax
  4015eb:	mov    %rax,-0x128(%rbp)
  4015f2:	movsd  -0x128(%rbp),%xmm0
  4015fa:	mov    %rdx,%rdi
  4015fd:	callq  400d50 <_ZNSolsEd@plt>
  401602:	mov    $0x402184,%esi
  401607:	mov    %rax,%rdi
  40160a:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40160f:	mov    $0x400ee0,%esi
  401614:	mov    %rax,%rdi
  401617:	callq  400ec0 <_ZNSolsEPFRSoS_E@plt>
  40161c:	movl   $0x1,-0xa0(%rbp)
  401626:	movl   $0x2,-0x9c(%rbp)
  401630:	movl   $0x3,-0x98(%rbp)
  40163a:	movl   $0x4,-0x94(%rbp)
  401644:	movl   $0x5,-0x90(%rbp)
  40164e:	lea    -0x80(%rbp),%rdx
  401652:	mov    $0x0,%eax
  401657:	mov    $0x8,%ecx
  40165c:	mov    %rdx,%rdi
  40165f:	rep stos %rax,%es:(%rdi)
  401662:	movl   $0x1,-0x80(%rbp)
  401669:	movl   $0x2,-0x7c(%rbp)
  401670:	movl   $0x3,-0x78(%rbp)
  401677:	movl   $0x4,-0x74(%rbp)
  40167e:	movl   $0x2,-0x70(%rbp)
  401685:	movl   $0x3,-0x6c(%rbp)
  40168c:	movl   $0x4,-0x68(%rbp)
  401693:	movl   $0x5,-0x64(%rbp)
  40169a:	movl   $0x3,-0x60(%rbp)
  4016a1:	movl   $0x4,-0x5c(%rbp)
  4016a8:	movl   $0x5,-0x58(%rbp)
  4016af:	movl   $0x6,-0x54(%rbp)
  4016b6:	movl   $0x4,-0x50(%rbp)
  4016bd:	lea    -0x118(%rbp),%rax
  4016c4:	mov    %rax,%rdi
  4016c7:	callq  401a0e <_ZNSaIiEC1Ev>
  4016cc:	lea    -0x118(%rbp),%rdx
  4016d3:	lea    -0xc0(%rbp),%rax
  4016da:	mov    $0x5,%esi
  4016df:	mov    %rax,%rdi
  4016e2:	callq  401a46 <_ZNSt6vectorIiSaIiEEC1EmRKS0_>
  4016e7:	lea    -0x118(%rbp),%rax
  4016ee:	mov    %rax,%rdi
  4016f1:	callq  401a2a <_ZNSaIiED1Ev>
  4016f6:	movl   $0x0,-0xfc(%rbp)
  401700:	mov    -0x48(%rbp),%edx
  401703:	mov    -0x54(%rbp),%eax
  401706:	mov    %eax,%esi
  401708:	mov    $0x402188,%edi
  40170d:	mov    $0x0,%eax
  401712:	callq  400d70 <printf@plt>
  401717:	lea    -0x80(%rbp),%rax
  40171b:	lea    0x38(%rax),%rdx
  40171f:	lea    -0x80(%rbp),%rax
  401723:	add    $0x2c,%rax
  401727:	mov    %rdx,%rsi
  40172a:	mov    %rax,%rdi
  40172d:	callq  401221 <_Z7my_swapPiS_>
  401732:	mov    -0x48(%rbp),%edx
  401735:	mov    -0x54(%rbp),%eax
  401738:	mov    %eax,%esi
  40173a:	mov    $0x4021b8,%edi
  40173f:	mov    $0x0,%eax
  401744:	callq  400d70 <printf@plt>
  401749:	lea    -0x80(%rbp),%rax
  40174d:	lea    0x38(%rax),%rdx
  401751:	lea    -0x80(%rbp),%rax
  401755:	add    $0x2c,%rax
  401759:	mov    %rdx,%rsi
  40175c:	mov    %rax,%rdi
  40175f:	callq  40124e <_Z7my_swapRiS_>
  401764:	mov    -0x48(%rbp),%edx
  401767:	mov    -0x54(%rbp),%eax
  40176a:	mov    %eax,%esi
  40176c:	mov    $0x4021f0,%edi
  401771:	mov    $0x0,%eax
  401776:	callq  400d70 <printf@plt>
  40177b:	lea    -0xc0(%rbp),%rax
  401782:	mov    %rax,%rdi
  401785:	callq  401aa8 <_ZNSt6vectorIiSaIiEED1Ev>
  40178a:	nop
  40178b:	mov    -0x38(%rbp),%rax
  40178f:	xor    %fs:0x28,%rax
  401798:	je     4017db <_Z9dataTypesv+0x560>
  40179a:	jmp    4017d6 <_Z9dataTypesv+0x55b>
  40179c:	mov    %rax,%rbx
  40179f:	lea    -0x118(%rbp),%rax
  4017a6:	mov    %rax,%rdi
  4017a9:	callq  401a2a <_ZNSaIiED1Ev>
  4017ae:	mov    %rbx,%rax
  4017b1:	mov    %rax,%rdi
  4017b4:	callq  400f20 <_Unwind_Resume@plt>
  4017b9:	mov    %rax,%rbx
  4017bc:	lea    -0xc0(%rbp),%rax
  4017c3:	mov    %rax,%rdi
  4017c6:	callq  401aa8 <_ZNSt6vectorIiSaIiEED1Ev>
  4017cb:	mov    %rbx,%rax
  4017ce:	mov    %rax,%rdi
  4017d1:	callq  400f20 <_Unwind_Resume@plt>
  4017d6:	callq  400e90 <__stack_chk_fail@plt>
  4017db:	add    $0x108,%rsp
  4017e2:	pop    %rbx
  4017e3:	pop    %r12
  4017e5:	pop    %r13
  4017e7:	pop    %r14
  4017e9:	pop    %r15
  4017eb:	pop    %rbp
  4017ec:	retq   

00000000004017ed <main>:
  4017ed:	push   %rbp
  4017ee:	mov    %rsp,%rbp
  4017f1:	push   %rbx
  4017f2:	sub    $0x68,%rsp
  4017f6:	mov    %fs:0x28,%rax
  4017ff:	mov    %rax,-0x18(%rbp)
  401803:	xor    %eax,%eax
  401805:	movb   $0x31,-0x6a(%rbp)
  401809:	movq   $0x0,-0x30(%rbp)
  401811:	movq   $0x0,-0x28(%rbp)
  401819:	movl   $0x0,-0x20(%rbp)
  401820:	movb   $0x31,-0x30(%rbp)
  401824:	movb   $0x1,-0x69(%rbp)
  401828:	mov    0x2018ea(%rip),%eax        # 603118 <S>
  40182e:	mov    %eax,-0x68(%rbp)
  401831:	movl   $0xffffffff,-0x64(%rbp)
  401838:	movl   $0x0,-0x60(%rbp)
  40183f:	movss  0x9f1(%rip),%xmm0        # 402238 <_ZStL6ignore+0x1ce>
  401847:	movss  %xmm0,-0x5c(%rbp)
  40184c:	movsd  0x9ec(%rip),%xmm0        # 402240 <_ZStL6ignore+0x1d6>
  401854:	movsd  %xmm0,-0x58(%rbp)
  401859:	lea    -0x50(%rbp),%rax
  40185d:	mov    %rax,%rdi
  401860:	callq  401998 <_ZN6hit_stC1Ev>
  401865:	mov    -0x60(%rbp),%edx
  401868:	mov    -0x64(%rbp),%eax
  40186b:	mov    %edx,%esi
  40186d:	mov    %eax,%edi
  40186f:	callq  401068 <_Z6branchii>
  401874:	callq  40111f <_Z4loopv>
  401879:	callq  40127b <_Z9dataTypesv>
  40187e:	mov    -0x60(%rbp),%edx
  401881:	mov    -0x64(%rbp),%eax
  401884:	mov    %edx,%esi
  401886:	mov    %eax,%edi
  401888:	callq  40191f <_Z3sumii>
  40188d:	mov    %eax,0x201885(%rip)        # 603118 <S>
  401893:	movabs $0xb8e980b8e48e9de6,%rax
  40189d:	mov    %rax,0x20199c(%rip)        # 603240 <ics_me>
  4018a4:	movw   $0xa3,0x20199b(%rip)        # 603248 <ics_me+0x8>
  4018ad:	movl   $0x4528c851,0x2019a1(%rip)        # 603258 <ics_me+0x18>
  4018b7:	movl   $0x12,0x201993(%rip)        # 603254 <ics_me+0x14>
  4018c1:	mov    $0x603240,%edi
  4018c6:	callq  401036 <_Z7printstR2st>
  4018cb:	lea    -0x50(%rbp),%rax
  4018cf:	mov    %rax,%rdi
  4018d2:	callq  4019e8 <_ZN6hit_st8sayhelloEv>
  4018d7:	lea    -0x50(%rbp),%rax
  4018db:	mov    %rax,%rdi
  4018de:	callq  4019ce <_ZN6hit_stD1Ev>
  4018e3:	mov    $0x0,%eax
  4018e8:	mov    -0x18(%rbp),%rcx
  4018ec:	xor    %fs:0x28,%rcx
  4018f5:	je     401918 <main+0x12b>
  4018f7:	jmp    401913 <main+0x126>
  4018f9:	mov    %rax,%rbx
  4018fc:	lea    -0x50(%rbp),%rax
  401900:	mov    %rax,%rdi
  401903:	callq  4019ce <_ZN6hit_stD1Ev>
  401908:	mov    %rbx,%rax
  40190b:	mov    %rax,%rdi
  40190e:	callq  400f20 <_Unwind_Resume@plt>
  401913:	callq  400e90 <__stack_chk_fail@plt>
  401918:	add    $0x68,%rsp
  40191c:	pop    %rbx
  40191d:	pop    %rbp
  40191e:	retq   

000000000040191f <_Z3sumii>:
  40191f:	push   %rbp
  401920:	mov    %rsp,%rbp
  401923:	mov    %edi,-0x14(%rbp)
  401926:	mov    %esi,-0x18(%rbp)
  401929:	mov    -0x14(%rbp),%edx
  40192c:	mov    -0x18(%rbp),%eax
  40192f:	add    %edx,%eax
  401931:	mov    %eax,-0x4(%rbp)
  401934:	mov    -0x4(%rbp),%eax
  401937:	pop    %rbp
  401938:	retq   

0000000000401939 <_Z41__static_initialization_and_destruction_0ii>:
  401939:	push   %rbp
  40193a:	mov    %rsp,%rbp
  40193d:	sub    $0x10,%rsp
  401941:	mov    %edi,-0x4(%rbp)
  401944:	mov    %esi,-0x8(%rbp)
  401947:	cmpl   $0x1,-0x4(%rbp)
  40194b:	jne    401974 <_Z41__static_initialization_and_destruction_0ii+0x3b>
  40194d:	cmpl   $0xffff,-0x8(%rbp)
  401954:	jne    401974 <_Z41__static_initialization_and_destruction_0ii+0x3b>
  401956:	mov    $0x60325c,%edi
  40195b:	callq  400de0 <_ZNSt8ios_base4InitC1Ev@plt>
  401960:	mov    $0x603110,%edx
  401965:	mov    $0x60325c,%esi
  40196a:	mov    $0x400e40,%edi
  40196f:	callq  400e20 <__cxa_atexit@plt>
  401974:	nop
  401975:	leaveq 
  401976:	retq   

0000000000401977 <_GLOBAL__sub_I__Z7printstR2st>:
  401977:	push   %rbp
  401978:	mov    %rsp,%rbp
  40197b:	mov    $0xffff,%esi
  401980:	mov    $0x1,%edi
  401985:	callq  401939 <_Z41__static_initialization_and_destruction_0ii>
  40198a:	pop    %rbp
  40198b:	retq   

000000000040198c <_ZSt12setprecisioni>:
  40198c:	push   %rbp
  40198d:	mov    %rsp,%rbp
  401990:	mov    %edi,-0x4(%rbp)
  401993:	mov    -0x4(%rbp),%eax
  401996:	pop    %rbp
  401997:	retq   

0000000000401998 <_ZN6hit_stC1Ev>:
  401998:	push   %rbp
  401999:	mov    %rsp,%rbp
  40199c:	mov    %rdi,-0x8(%rbp)
  4019a0:	mov    -0x8(%rbp),%rax
  4019a4:	movl   $0x12,0x14(%rax)
  4019ab:	mov    -0x8(%rbp),%rax
  4019af:	movl   $0x133c9cc,0x18(%rax)
  4019b6:	mov    -0x8(%rbp),%rax
  4019ba:	movl   $0x259,0x1c(%rax)
  4019c1:	mov    -0x8(%rbp),%rax
  4019c5:	movl   $0x746968,(%rax)
  4019cb:	nop
  4019cc:	pop    %rbp
  4019cd:	retq   

00000000004019ce <_ZN6hit_stD1Ev>:
  4019ce:	push   %rbp
  4019cf:	mov    %rsp,%rbp
  4019d2:	sub    $0x10,%rsp
  4019d6:	mov    %rdi,-0x8(%rbp)
  4019da:	mov    $0x40206b,%edi
  4019df:	callq  400db0 <puts@plt>
  4019e4:	nop
  4019e5:	leaveq 
  4019e6:	retq   
  4019e7:	nop

00000000004019e8 <_ZN6hit_st8sayhelloEv>:
  4019e8:	push   %rbp
  4019e9:	mov    %rsp,%rbp
  4019ec:	sub    $0x10,%rsp
  4019f0:	mov    %rdi,-0x8(%rbp)
  4019f4:	mov    -0x8(%rbp),%rax
  4019f8:	mov    %rax,%rsi
  4019fb:	mov    $0x402081,%edi
  401a00:	mov    $0x0,%eax
  401a05:	callq  400d70 <printf@plt>
  401a0a:	nop
  401a0b:	leaveq 
  401a0c:	retq   
  401a0d:	nop

0000000000401a0e <_ZNSaIiEC1Ev>:
  401a0e:	push   %rbp
  401a0f:	mov    %rsp,%rbp
  401a12:	sub    $0x10,%rsp
  401a16:	mov    %rdi,-0x8(%rbp)
  401a1a:	mov    -0x8(%rbp),%rax
  401a1e:	mov    %rax,%rdi
  401a21:	callq  401aec <_ZN9__gnu_cxx13new_allocatorIiEC1Ev>
  401a26:	nop
  401a27:	leaveq 
  401a28:	retq   
  401a29:	nop

0000000000401a2a <_ZNSaIiED1Ev>:
  401a2a:	push   %rbp
  401a2b:	mov    %rsp,%rbp
  401a2e:	sub    $0x10,%rsp
  401a32:	mov    %rdi,-0x8(%rbp)
  401a36:	mov    -0x8(%rbp),%rax
  401a3a:	mov    %rax,%rdi
  401a3d:	callq  401af8 <_ZN9__gnu_cxx13new_allocatorIiED1Ev>
  401a42:	nop
  401a43:	leaveq 
  401a44:	retq   
  401a45:	nop

0000000000401a46 <_ZNSt6vectorIiSaIiEEC1EmRKS0_>:
  401a46:	push   %rbp
  401a47:	mov    %rsp,%rbp
  401a4a:	push   %rbx
  401a4b:	sub    $0x28,%rsp
  401a4f:	mov    %rdi,-0x18(%rbp)
  401a53:	mov    %rsi,-0x20(%rbp)
  401a57:	mov    %rdx,-0x28(%rbp)
  401a5b:	mov    -0x18(%rbp),%rax
  401a5f:	mov    -0x28(%rbp),%rdx
  401a63:	mov    -0x20(%rbp),%rcx
  401a67:	mov    %rcx,%rsi
  401a6a:	mov    %rax,%rdi
  401a6d:	callq  401b20 <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_>
  401a72:	mov    -0x20(%rbp),%rdx
  401a76:	mov    -0x18(%rbp),%rax
  401a7a:	mov    %rdx,%rsi
  401a7d:	mov    %rax,%rdi
  401a80:	callq  401bce <_ZNSt6vectorIiSaIiEE21_M_default_initializeEm>
  401a85:	jmp    401aa1 <_ZNSt6vectorIiSaIiEEC1EmRKS0_+0x5b>
  401a87:	mov    %rax,%rbx
  401a8a:	mov    -0x18(%rbp),%rax
  401a8e:	mov    %rax,%rdi
  401a91:	callq  401b7e <_ZNSt12_Vector_baseIiSaIiEED1Ev>
  401a96:	mov    %rbx,%rax
  401a99:	mov    %rax,%rdi
  401a9c:	callq  400f20 <_Unwind_Resume@plt>
  401aa1:	add    $0x28,%rsp
  401aa5:	pop    %rbx
  401aa6:	pop    %rbp
  401aa7:	retq   

0000000000401aa8 <_ZNSt6vectorIiSaIiEED1Ev>:
  401aa8:	push   %rbp
  401aa9:	mov    %rsp,%rbp
  401aac:	sub    $0x10,%rsp
  401ab0:	mov    %rdi,-0x8(%rbp)
  401ab4:	mov    -0x8(%rbp),%rax
  401ab8:	mov    %rax,%rdi
  401abb:	callq  401c12 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
  401ac0:	mov    %rax,%rdx
  401ac3:	mov    -0x8(%rbp),%rax
  401ac7:	mov    0x8(%rax),%rcx
  401acb:	mov    -0x8(%rbp),%rax
  401acf:	mov    (%rax),%rax
  401ad2:	mov    %rcx,%rsi
  401ad5:	mov    %rax,%rdi
  401ad8:	callq  401c20 <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>
  401add:	mov    -0x8(%rbp),%rax
  401ae1:	mov    %rax,%rdi
  401ae4:	callq  401b7e <_ZNSt12_Vector_baseIiSaIiEED1Ev>
  401ae9:	nop
  401aea:	leaveq 
  401aeb:	retq   

0000000000401aec <_ZN9__gnu_cxx13new_allocatorIiEC1Ev>:
  401aec:	push   %rbp
  401aed:	mov    %rsp,%rbp
  401af0:	mov    %rdi,-0x8(%rbp)
  401af4:	nop
  401af5:	pop    %rbp
  401af6:	retq   
  401af7:	nop

0000000000401af8 <_ZN9__gnu_cxx13new_allocatorIiED1Ev>:
  401af8:	push   %rbp
  401af9:	mov    %rsp,%rbp
  401afc:	mov    %rdi,-0x8(%rbp)
  401b00:	nop
  401b01:	pop    %rbp
  401b02:	retq   
  401b03:	nop

0000000000401b04 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>:
  401b04:	push   %rbp
  401b05:	mov    %rsp,%rbp
  401b08:	sub    $0x10,%rsp
  401b0c:	mov    %rdi,-0x8(%rbp)
  401b10:	mov    -0x8(%rbp),%rax
  401b14:	mov    %rax,%rdi
  401b17:	callq  401a2a <_ZNSaIiED1Ev>
  401b1c:	nop
  401b1d:	leaveq 
  401b1e:	retq   
  401b1f:	nop

0000000000401b20 <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_>:
  401b20:	push   %rbp
  401b21:	mov    %rsp,%rbp
  401b24:	push   %rbx
  401b25:	sub    $0x28,%rsp
  401b29:	mov    %rdi,-0x18(%rbp)
  401b2d:	mov    %rsi,-0x20(%rbp)
  401b31:	mov    %rdx,-0x28(%rbp)
  401b35:	mov    -0x18(%rbp),%rax
  401b39:	mov    -0x28(%rbp),%rdx
  401b3d:	mov    %rdx,%rsi
  401b40:	mov    %rax,%rdi
  401b43:	callq  401c4a <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_>
  401b48:	mov    -0x20(%rbp),%rdx
  401b4c:	mov    -0x18(%rbp),%rax
  401b50:	mov    %rdx,%rsi
  401b53:	mov    %rax,%rdi
  401b56:	callq  401c94 <_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm>
  401b5b:	jmp    401b77 <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_+0x57>
  401b5d:	mov    %rax,%rbx
  401b60:	mov    -0x18(%rbp),%rax
  401b64:	mov    %rax,%rdi
  401b67:	callq  401b04 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
  401b6c:	mov    %rbx,%rax
  401b6f:	mov    %rax,%rdi
  401b72:	callq  400f20 <_Unwind_Resume@plt>
  401b77:	add    $0x28,%rsp
  401b7b:	pop    %rbx
  401b7c:	pop    %rbp
  401b7d:	retq   

0000000000401b7e <_ZNSt12_Vector_baseIiSaIiEED1Ev>:
  401b7e:	push   %rbp
  401b7f:	mov    %rsp,%rbp
  401b82:	sub    $0x10,%rsp
  401b86:	mov    %rdi,-0x8(%rbp)
  401b8a:	mov    -0x8(%rbp),%rax
  401b8e:	mov    0x10(%rax),%rax
  401b92:	mov    %rax,%rdx
  401b95:	mov    -0x8(%rbp),%rax
  401b99:	mov    (%rax),%rax
  401b9c:	sub    %rax,%rdx
  401b9f:	mov    %rdx,%rax
  401ba2:	sar    $0x2,%rax
  401ba6:	mov    %rax,%rdx
  401ba9:	mov    -0x8(%rbp),%rax
  401bad:	mov    (%rax),%rcx
  401bb0:	mov    -0x8(%rbp),%rax
  401bb4:	mov    %rcx,%rsi
  401bb7:	mov    %rax,%rdi
  401bba:	callq  401cee <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>
  401bbf:	mov    -0x8(%rbp),%rax
  401bc3:	mov    %rax,%rdi
  401bc6:	callq  401b04 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
  401bcb:	nop
  401bcc:	leaveq 
  401bcd:	retq   

0000000000401bce <_ZNSt6vectorIiSaIiEE21_M_default_initializeEm>:
  401bce:	push   %rbp
  401bcf:	mov    %rsp,%rbp
  401bd2:	sub    $0x10,%rsp
  401bd6:	mov    %rdi,-0x8(%rbp)
  401bda:	mov    %rsi,-0x10(%rbp)
  401bde:	mov    -0x8(%rbp),%rax
  401be2:	mov    %rax,%rdi
  401be5:	callq  401c12 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
  401bea:	mov    %rax,%rdx
  401bed:	mov    -0x8(%rbp),%rax
  401bf1:	mov    (%rax),%rax
  401bf4:	mov    -0x10(%rbp),%rcx
  401bf8:	mov    %rcx,%rsi
  401bfb:	mov    %rax,%rdi
  401bfe:	callq  401d23 <_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E>
  401c03:	mov    %rax,%rdx
  401c06:	mov    -0x8(%rbp),%rax
  401c0a:	mov    %rdx,0x8(%rax)
  401c0e:	nop
  401c0f:	leaveq 
  401c10:	retq   
  401c11:	nop

0000000000401c12 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>:
  401c12:	push   %rbp
  401c13:	mov    %rsp,%rbp
  401c16:	mov    %rdi,-0x8(%rbp)
  401c1a:	mov    -0x8(%rbp),%rax
  401c1e:	pop    %rbp
  401c1f:	retq   

0000000000401c20 <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>:
  401c20:	push   %rbp
  401c21:	mov    %rsp,%rbp
  401c24:	sub    $0x20,%rsp
  401c28:	mov    %rdi,-0x8(%rbp)
  401c2c:	mov    %rsi,-0x10(%rbp)
  401c30:	mov    %rdx,-0x18(%rbp)
  401c34:	mov    -0x10(%rbp),%rdx
  401c38:	mov    -0x8(%rbp),%rax
  401c3c:	mov    %rdx,%rsi
  401c3f:	mov    %rax,%rdi
  401c42:	callq  401d4c <_ZSt8_DestroyIPiEvT_S1_>
  401c47:	nop
  401c48:	leaveq 
  401c49:	retq   

0000000000401c4a <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_>:
  401c4a:	push   %rbp
  401c4b:	mov    %rsp,%rbp
  401c4e:	sub    $0x10,%rsp
  401c52:	mov    %rdi,-0x8(%rbp)
  401c56:	mov    %rsi,-0x10(%rbp)
  401c5a:	mov    -0x10(%rbp),%rdx
  401c5e:	mov    -0x8(%rbp),%rax
  401c62:	mov    %rdx,%rsi
  401c65:	mov    %rax,%rdi
  401c68:	callq  401d72 <_ZNSaIiEC1ERKS_>
  401c6d:	mov    -0x8(%rbp),%rax
  401c71:	movq   $0x0,(%rax)
  401c78:	mov    -0x8(%rbp),%rax
  401c7c:	movq   $0x0,0x8(%rax)
  401c84:	mov    -0x8(%rbp),%rax
  401c88:	movq   $0x0,0x10(%rax)
  401c90:	nop
  401c91:	leaveq 
  401c92:	retq   
  401c93:	nop

0000000000401c94 <_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm>:
  401c94:	push   %rbp
  401c95:	mov    %rsp,%rbp
  401c98:	sub    $0x10,%rsp
  401c9c:	mov    %rdi,-0x8(%rbp)
  401ca0:	mov    %rsi,-0x10(%rbp)
  401ca4:	mov    -0x10(%rbp),%rdx
  401ca8:	mov    -0x8(%rbp),%rax
  401cac:	mov    %rdx,%rsi
  401caf:	mov    %rax,%rdi
  401cb2:	callq  401d98 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm>
  401cb7:	mov    %rax,%rdx
  401cba:	mov    -0x8(%rbp),%rax
  401cbe:	mov    %rdx,(%rax)
  401cc1:	mov    -0x8(%rbp),%rax
  401cc5:	mov    (%rax),%rdx
  401cc8:	mov    -0x8(%rbp),%rax
  401ccc:	mov    %rdx,0x8(%rax)
  401cd0:	mov    -0x8(%rbp),%rax
  401cd4:	mov    (%rax),%rax
  401cd7:	mov    -0x10(%rbp),%rdx
  401cdb:	shl    $0x2,%rdx
  401cdf:	add    %rax,%rdx
  401ce2:	mov    -0x8(%rbp),%rax
  401ce6:	mov    %rdx,0x10(%rax)
  401cea:	nop
  401ceb:	leaveq 
  401cec:	retq   
  401ced:	nop

0000000000401cee <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>:
  401cee:	push   %rbp
  401cef:	mov    %rsp,%rbp
  401cf2:	sub    $0x20,%rsp
  401cf6:	mov    %rdi,-0x8(%rbp)
  401cfa:	mov    %rsi,-0x10(%rbp)
  401cfe:	mov    %rdx,-0x18(%rbp)
  401d02:	cmpq   $0x0,-0x10(%rbp)
  401d07:	je     401d20 <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim+0x32>
  401d09:	mov    -0x8(%rbp),%rax
  401d0d:	mov    -0x18(%rbp),%rdx
  401d11:	mov    -0x10(%rbp),%rcx
  401d15:	mov    %rcx,%rsi
  401d18:	mov    %rax,%rdi
  401d1b:	callq  401dcb <_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim>
  401d20:	nop
  401d21:	leaveq 
  401d22:	retq   

0000000000401d23 <_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E>:
  401d23:	push   %rbp
  401d24:	mov    %rsp,%rbp
  401d27:	sub    $0x20,%rsp
  401d2b:	mov    %rdi,-0x8(%rbp)
  401d2f:	mov    %rsi,-0x10(%rbp)
  401d33:	mov    %rdx,-0x18(%rbp)
  401d37:	mov    -0x10(%rbp),%rdx
  401d3b:	mov    -0x8(%rbp),%rax
  401d3f:	mov    %rdx,%rsi
  401d42:	mov    %rax,%rdi
  401d45:	callq  401df9 <_ZSt25__uninitialized_default_nIPimET_S1_T0_>
  401d4a:	leaveq 
  401d4b:	retq   

0000000000401d4c <_ZSt8_DestroyIPiEvT_S1_>:
  401d4c:	push   %rbp
  401d4d:	mov    %rsp,%rbp
  401d50:	sub    $0x10,%rsp
  401d54:	mov    %rdi,-0x8(%rbp)
  401d58:	mov    %rsi,-0x10(%rbp)
  401d5c:	mov    -0x10(%rbp),%rdx
  401d60:	mov    -0x8(%rbp),%rax
  401d64:	mov    %rdx,%rsi
  401d67:	mov    %rax,%rdi
  401d6a:	callq  401e22 <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>
  401d6f:	nop
  401d70:	leaveq 
  401d71:	retq   

0000000000401d72 <_ZNSaIiEC1ERKS_>:
  401d72:	push   %rbp
  401d73:	mov    %rsp,%rbp
  401d76:	sub    $0x10,%rsp
  401d7a:	mov    %rdi,-0x8(%rbp)
  401d7e:	mov    %rsi,-0x10(%rbp)
  401d82:	mov    -0x10(%rbp),%rdx
  401d86:	mov    -0x8(%rbp),%rax
  401d8a:	mov    %rdx,%rsi
  401d8d:	mov    %rax,%rdi
  401d90:	callq  401e32 <_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_>
  401d95:	nop
  401d96:	leaveq 
  401d97:	retq   

0000000000401d98 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm>:
  401d98:	push   %rbp
  401d99:	mov    %rsp,%rbp
  401d9c:	sub    $0x10,%rsp
  401da0:	mov    %rdi,-0x8(%rbp)
  401da4:	mov    %rsi,-0x10(%rbp)
  401da8:	cmpq   $0x0,-0x10(%rbp)
  401dad:	je     401dc4 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm+0x2c>
  401daf:	mov    -0x8(%rbp),%rax
  401db3:	mov    -0x10(%rbp),%rdx
  401db7:	mov    %rdx,%rsi
  401dba:	mov    %rax,%rdi
  401dbd:	callq  401e41 <_ZNSt16allocator_traitsISaIiEE8allocateERS0_m>
  401dc2:	jmp    401dc9 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm+0x31>
  401dc4:	mov    $0x0,%eax
  401dc9:	leaveq 
  401dca:	retq   

0000000000401dcb <_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim>:
  401dcb:	push   %rbp
  401dcc:	mov    %rsp,%rbp
  401dcf:	sub    $0x20,%rsp
  401dd3:	mov    %rdi,-0x8(%rbp)
  401dd7:	mov    %rsi,-0x10(%rbp)
  401ddb:	mov    %rdx,-0x18(%rbp)
  401ddf:	mov    -0x18(%rbp),%rdx
  401de3:	mov    -0x10(%rbp),%rcx
  401de7:	mov    -0x8(%rbp),%rax
  401deb:	mov    %rcx,%rsi
  401dee:	mov    %rax,%rdi
  401df1:	callq  401e6c <_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim>
  401df6:	nop
  401df7:	leaveq 
  401df8:	retq   

0000000000401df9 <_ZSt25__uninitialized_default_nIPimET_S1_T0_>:
  401df9:	push   %rbp
  401dfa:	mov    %rsp,%rbp
  401dfd:	sub    $0x20,%rsp
  401e01:	mov    %rdi,-0x18(%rbp)
  401e05:	mov    %rsi,-0x20(%rbp)
  401e09:	movb   $0x1,-0x1(%rbp)
  401e0d:	mov    -0x20(%rbp),%rdx
  401e11:	mov    -0x18(%rbp),%rax
  401e15:	mov    %rdx,%rsi
  401e18:	mov    %rax,%rdi
  401e1b:	callq  401e8f <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_>
  401e20:	leaveq 
  401e21:	retq   

0000000000401e22 <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>:
  401e22:	push   %rbp
  401e23:	mov    %rsp,%rbp
  401e26:	mov    %rdi,-0x8(%rbp)
  401e2a:	mov    %rsi,-0x10(%rbp)
  401e2e:	nop
  401e2f:	pop    %rbp
  401e30:	retq   
  401e31:	nop

0000000000401e32 <_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_>:
  401e32:	push   %rbp
  401e33:	mov    %rsp,%rbp
  401e36:	mov    %rdi,-0x8(%rbp)
  401e3a:	mov    %rsi,-0x10(%rbp)
  401e3e:	nop
  401e3f:	pop    %rbp
  401e40:	retq   

0000000000401e41 <_ZNSt16allocator_traitsISaIiEE8allocateERS0_m>:
  401e41:	push   %rbp
  401e42:	mov    %rsp,%rbp
  401e45:	sub    $0x10,%rsp
  401e49:	mov    %rdi,-0x8(%rbp)
  401e4d:	mov    %rsi,-0x10(%rbp)
  401e51:	mov    -0x10(%rbp),%rcx
  401e55:	mov    -0x8(%rbp),%rax
  401e59:	mov    $0x0,%edx
  401e5e:	mov    %rcx,%rsi
  401e61:	mov    %rax,%rdi
  401e64:	callq  401ee2 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv>
  401e69:	leaveq 
  401e6a:	retq   
  401e6b:	nop

0000000000401e6c <_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim>:
  401e6c:	push   %rbp
  401e6d:	mov    %rsp,%rbp
  401e70:	sub    $0x20,%rsp
  401e74:	mov    %rdi,-0x8(%rbp)
  401e78:	mov    %rsi,-0x10(%rbp)
  401e7c:	mov    %rdx,-0x18(%rbp)
  401e80:	mov    -0x10(%rbp),%rax
  401e84:	mov    %rax,%rdi
  401e87:	callq  400dc0 <_ZdlPv@plt>
  401e8c:	nop
  401e8d:	leaveq 
  401e8e:	retq   

0000000000401e8f <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_>:
  401e8f:	push   %rbp
  401e90:	mov    %rsp,%rbp
  401e93:	sub    $0x20,%rsp
  401e97:	mov    %rdi,-0x18(%rbp)
  401e9b:	mov    %rsi,-0x20(%rbp)
  401e9f:	mov    %fs:0x28,%rax
  401ea8:	mov    %rax,-0x8(%rbp)
  401eac:	xor    %eax,%eax
  401eae:	movl   $0x0,-0xc(%rbp)
  401eb5:	lea    -0xc(%rbp),%rdx
  401eb9:	mov    -0x20(%rbp),%rcx
  401ebd:	mov    -0x18(%rbp),%rax
  401ec1:	mov    %rcx,%rsi
  401ec4:	mov    %rax,%rdi
  401ec7:	callq  401f24 <_ZSt6fill_nIPimiET_S1_T0_RKT1_>
  401ecc:	mov    -0x8(%rbp),%rcx
  401ed0:	xor    %fs:0x28,%rcx
  401ed9:	je     401ee0 <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_+0x51>
  401edb:	callq  400e90 <__stack_chk_fail@plt>
  401ee0:	leaveq 
  401ee1:	retq   

0000000000401ee2 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv>:
  401ee2:	push   %rbp
  401ee3:	mov    %rsp,%rbp
  401ee6:	sub    $0x20,%rsp
  401eea:	mov    %rdi,-0x8(%rbp)
  401eee:	mov    %rsi,-0x10(%rbp)
  401ef2:	mov    %rdx,-0x18(%rbp)
  401ef6:	mov    -0x8(%rbp),%rax
  401efa:	mov    %rax,%rdi
  401efd:	callq  401f5c <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>
  401f02:	cmp    -0x10(%rbp),%rax
  401f06:	setb   %al
  401f09:	test   %al,%al
  401f0b:	je     401f12 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv+0x30>
  401f0d:	callq  400ed0 <_ZSt17__throw_bad_allocv@plt>
  401f12:	mov    -0x10(%rbp),%rax
  401f16:	shl    $0x2,%rax
  401f1a:	mov    %rax,%rdi
  401f1d:	callq  400f10 <_Znwm@plt>
  401f22:	leaveq 
  401f23:	retq   

0000000000401f24 <_ZSt6fill_nIPimiET_S1_T0_RKT1_>:
  401f24:	push   %rbp
  401f25:	mov    %rsp,%rbp
  401f28:	sub    $0x20,%rsp
  401f2c:	mov    %rdi,-0x8(%rbp)
  401f30:	mov    %rsi,-0x10(%rbp)
  401f34:	mov    %rdx,-0x18(%rbp)
  401f38:	mov    -0x8(%rbp),%rax
  401f3c:	mov    %rax,%rdi
  401f3f:	callq  401f70 <_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_>
  401f44:	mov    %rax,%rcx
  401f47:	mov    -0x18(%rbp),%rdx
  401f4b:	mov    -0x10(%rbp),%rax
  401f4f:	mov    %rax,%rsi
  401f52:	mov    %rcx,%rdi
  401f55:	callq  401f8a <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_>
  401f5a:	leaveq 
  401f5b:	retq   

0000000000401f5c <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>:
  401f5c:	push   %rbp
  401f5d:	mov    %rsp,%rbp
  401f60:	mov    %rdi,-0x8(%rbp)
  401f64:	movabs $0x3fffffffffffffff,%rax
  401f6e:	pop    %rbp
  401f6f:	retq   

0000000000401f70 <_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_>:
  401f70:	push   %rbp
  401f71:	mov    %rsp,%rbp
  401f74:	sub    $0x10,%rsp
  401f78:	mov    %rdi,-0x8(%rbp)
  401f7c:	mov    -0x8(%rbp),%rax
  401f80:	mov    %rax,%rdi
  401f83:	callq  401fcd <_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_>
  401f88:	leaveq 
  401f89:	retq   

0000000000401f8a <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_>:
  401f8a:	push   %rbp
  401f8b:	mov    %rsp,%rbp
  401f8e:	mov    %rdi,-0x18(%rbp)
  401f92:	mov    %rsi,-0x20(%rbp)
  401f96:	mov    %rdx,-0x28(%rbp)
  401f9a:	mov    -0x28(%rbp),%rax
  401f9e:	mov    (%rax),%eax
  401fa0:	mov    %eax,-0xc(%rbp)
  401fa3:	mov    -0x20(%rbp),%rax
  401fa7:	mov    %rax,-0x8(%rbp)
  401fab:	cmpq   $0x0,-0x8(%rbp)
  401fb0:	je     401fc7 <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_+0x3d>
  401fb2:	mov    -0x18(%rbp),%rax
  401fb6:	mov    -0xc(%rbp),%edx
  401fb9:	mov    %edx,(%rax)
  401fbb:	subq   $0x1,-0x8(%rbp)
  401fc0:	addq   $0x4,-0x18(%rbp)
  401fc5:	jmp    401fab <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_+0x21>
  401fc7:	mov    -0x18(%rbp),%rax
  401fcb:	pop    %rbp
  401fcc:	retq   

0000000000401fcd <_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_>:
  401fcd:	push   %rbp
  401fce:	mov    %rsp,%rbp
  401fd1:	mov    %rdi,-0x8(%rbp)
  401fd5:	mov    -0x8(%rbp),%rax
  401fd9:	pop    %rbp
  401fda:	retq   
  401fdb:	nopl   0x0(%rax,%rax,1)

0000000000401fe0 <__libc_csu_init>:
  401fe0:	push   %r15
  401fe2:	push   %r14
  401fe4:	mov    %edi,%r15d
  401fe7:	push   %r13
  401fe9:	push   %r12
  401feb:	lea    0x200df6(%rip),%r12        # 602de8 <__frame_dummy_init_array_entry>
  401ff2:	push   %rbp
  401ff3:	lea    0x200dfe(%rip),%rbp        # 602df8 <__init_array_end>
  401ffa:	push   %rbx
  401ffb:	mov    %rsi,%r14
  401ffe:	mov    %rdx,%r13
  402001:	sub    %r12,%rbp
  402004:	sub    $0x8,%rsp
  402008:	sar    $0x3,%rbp
  40200c:	callq  400d20 <_init>
  402011:	test   %rbp,%rbp
  402014:	je     402036 <__libc_csu_init+0x56>
  402016:	xor    %ebx,%ebx
  402018:	nopl   0x0(%rax,%rax,1)
  402020:	mov    %r13,%rdx
  402023:	mov    %r14,%rsi
  402026:	mov    %r15d,%edi
  402029:	callq  *(%r12,%rbx,8)
  40202d:	add    $0x1,%rbx
  402031:	cmp    %rbp,%rbx
  402034:	jne    402020 <__libc_csu_init+0x40>
  402036:	add    $0x8,%rsp
  40203a:	pop    %rbx
  40203b:	pop    %rbp
  40203c:	pop    %r12
  40203e:	pop    %r13
  402040:	pop    %r14
  402042:	pop    %r15
  402044:	retq   
  402045:	nop
  402046:	nopw   %cs:0x0(%rax,%rax,1)

0000000000402050 <__libc_csu_fini>:
  402050:	repz retq 

Disassembly of section .fini:

0000000000402054 <_fini>:
  402054:	sub    $0x8,%rsp
  402058:	add    $0x8,%rsp
  40205c:	retq   
