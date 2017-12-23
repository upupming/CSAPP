
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
  400f4f:	mov    $0x401f80,%r8
  400f56:	mov    $0x401f10,%rcx
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
  40105d:	mov    $0x401f98,%edi
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
  401083:	mov    $0x401fb0,%edi
  401088:	callq  400db0 <puts@plt>
  40108d:	cmpl   $0x0,-0x18(%rbp)
  401091:	jne    40109f <_Z6branchii+0x30>
  401093:	mov    $0x401fbe,%edi
  401098:	callq  400db0 <puts@plt>
  40109d:	jmp    4010a9 <_Z6branchii+0x3a>
  40109f:	mov    $0x401fc9,%edi
  4010a4:	callq  400db0 <puts@plt>
  4010a9:	movl   $0x2,-0x4(%rbp)
  4010b0:	mov    -0x4(%rbp),%eax
  4010b3:	cmp    $0x6,%eax
  4010b6:	ja     401118 <_Z6branchii+0xa9>
  4010b8:	mov    %eax,%eax
  4010ba:	mov    0x402028(,%rax,8),%rax
  4010c2:	jmpq   *%rax
  4010c4:	mov    $0x401fd7,%edi
  4010c9:	callq  400db0 <puts@plt>
  4010ce:	jmp    401123 <_Z6branchii+0xb4>
  4010d0:	mov    $0x401fde,%edi
  4010d5:	callq  400db0 <puts@plt>
  4010da:	jmp    401123 <_Z6branchii+0xb4>
  4010dc:	mov    $0x401fe6,%edi
  4010e1:	callq  400db0 <puts@plt>
  4010e6:	jmp    401123 <_Z6branchii+0xb4>
  4010e8:	mov    $0x401ff0,%edi
  4010ed:	callq  400db0 <puts@plt>
  4010f2:	jmp    401123 <_Z6branchii+0xb4>
  4010f4:	mov    $0x401ff9,%edi
  4010f9:	callq  400db0 <puts@plt>
  4010fe:	jmp    401123 <_Z6branchii+0xb4>
  401100:	mov    $0x402000,%edi
  401105:	callq  400db0 <puts@plt>
  40110a:	jmp    401123 <_Z6branchii+0xb4>
  40110c:	mov    $0x402009,%edi
  401111:	callq  400db0 <puts@plt>
  401116:	jmp    401123 <_Z6branchii+0xb4>
  401118:	mov    $0x402010,%edi
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
  401151:	mov    $0x402060,%edi
  401156:	mov    $0x0,%eax
  40115b:	callq  400d70 <printf@plt>
  401160:	subl   $0x1,-0x8(%rbp)
  401164:	jmp    40113c <_Z4loopv+0x16>
  401166:	mov    -0x4(%rbp),%eax
  401169:	mov    %eax,%esi
  40116b:	mov    $0x402066,%edi
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
  4011a1:	mov    $0x40206e,%edi
  4011a6:	mov    $0x0,%eax
  4011ab:	callq  400d70 <printf@plt>
  4011b0:	addl   $0x1,-0x8(%rbp)
  4011b4:	cmpl   $0x5,-0x8(%rbp)
  4011b8:	jg     4011bc <_Z4loopv+0x96>
  4011ba:	jmp    401192 <_Z4loopv+0x6c>
  4011bc:	mov    -0x4(%rbp),%eax
  4011bf:	mov    %eax,%esi
  4011c1:	mov    $0x402074,%edi
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
  4011f3:	mov    $0x402060,%edi
  4011f8:	mov    $0x0,%eax
  4011fd:	callq  400d70 <printf@plt>
  401202:	addl   $0x1,-0x8(%rbp)
  401206:	jmp    4011de <_Z4loopv+0xb8>
  401208:	mov    -0x4(%rbp),%eax
  40120b:	imul   -0x8(%rbp),%eax
  40120f:	mov    %eax,%edx
  401211:	mov    -0x8(%rbp),%eax
  401214:	mov    %eax,%esi
  401216:	mov    $0x40207b,%edi
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
  40134e:	movss  0xe1e(%rip),%xmm0        # 402174 <_IO_stdin_used+0x1e4>
  401356:	movss  %xmm0,-0x120(%rbp)
  40135e:	movsd  0xe12(%rip),%xmm0        # 402178 <_IO_stdin_used+0x1e8>
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
  4013ad:	callq  4018f8 <_ZSt12setprecisioni>
  4013b2:	mov    %eax,%r14d
  4013b5:	mov    $0x6,%edi
  4013ba:	callq  4018f8 <_ZSt12setprecisioni>
  4013bf:	mov    %eax,%r15d
  4013c2:	movzwl -0x136(%rbp),%ebx
  4013c9:	movswl -0x138(%rbp),%r12d
  4013d1:	movzbl -0x139(%rbp),%r13d
  4013d9:	movsbl -0x13a(%rbp),%eax
  4013e0:	mov    %eax,%esi
  4013e2:	mov    $0x603120,%edi
  4013e7:	callq  400e30 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@plt>
  4013ec:	mov    $0x402084,%esi
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
  401429:	mov    $0x402084,%esi
  40142e:	mov    %rax,%rdi
  401431:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401436:	mov    %ebx,%esi
  401438:	mov    %rax,%rdi
  40143b:	callq  400ef0 <_ZNSolsEt@plt>
  401440:	mov    $0x402084,%esi
  401445:	mov    %rax,%rdi
  401448:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40144d:	mov    %rax,%rdx
  401450:	mov    -0x130(%rbp),%eax
  401456:	mov    %eax,%esi
  401458:	mov    %rdx,%rdi
  40145b:	callq  400d80 <_ZNSolsEi@plt>
  401460:	mov    $0x402084,%esi
  401465:	mov    %rax,%rdi
  401468:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40146d:	mov    %rax,%rdx
  401470:	mov    -0x12c(%rbp),%eax
  401476:	mov    %eax,%esi
  401478:	mov    %rdx,%rdi
  40147b:	callq  400e80 <_ZNSolsEj@plt>
  401480:	mov    $0x402084,%esi
  401485:	mov    %rax,%rdi
  401488:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40148d:	mov    %rax,%rdx
  401490:	mov    -0x118(%rbp),%rax
  401497:	mov    %rax,%rsi
  40149a:	mov    %rdx,%rdi
  40149d:	callq  400d60 <_ZNSolsEl@plt>
  4014a2:	mov    $0x402084,%esi
  4014a7:	mov    %rax,%rdi
  4014aa:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4014af:	mov    %rax,%rdx
  4014b2:	mov    -0x110(%rbp),%rax
  4014b9:	mov    %rax,%rsi
  4014bc:	mov    %rdx,%rdi
  4014bf:	callq  400e60 <_ZNSolsEm@plt>
  4014c4:	mov    $0x402084,%esi
  4014c9:	mov    %rax,%rdi
  4014cc:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4014d1:	mov    %rax,%rdx
  4014d4:	mov    -0x108(%rbp),%rax
  4014db:	mov    %rax,%rsi
  4014de:	mov    %rdx,%rdi
  4014e1:	callq  400eb0 <_ZNSolsEx@plt>
  4014e6:	mov    $0x402084,%esi
  4014eb:	mov    %rax,%rdi
  4014ee:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4014f3:	mov    %rax,%rdx
  4014f6:	mov    -0x100(%rbp),%rax
  4014fd:	mov    %rax,%rsi
  401500:	mov    %rdx,%rdi
  401503:	callq  400da0 <_ZNSolsEy@plt>
  401508:	mov    $0x402084,%esi
  40150d:	mov    %rax,%rdi
  401510:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401515:	mov    %rax,%rdx
  401518:	mov    -0x128(%rbp),%eax
  40151e:	mov    %eax,%esi
  401520:	mov    %rdx,%rdi
  401523:	callq  400d80 <_ZNSolsEi@plt>
  401528:	mov    $0x402084,%esi
  40152d:	mov    %rax,%rdi
  401530:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401535:	mov    %rax,%rdx
  401538:	mov    -0x124(%rbp),%eax
  40153e:	mov    %eax,%esi
  401540:	mov    %rdx,%rdi
  401543:	callq  400e80 <_ZNSolsEj@plt>
  401548:	mov    $0x402084,%esi
  40154d:	mov    %rax,%rdi
  401550:	callq  400e50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401555:	mov    %rax,%rdx
  401558:	mov    -0xf8(%rbp),%rax
  40155f:	mov    %rax,%rsi
  401562:	mov    %rdx,%rdi
  401565:	callq  400d60 <_ZNSolsEl@plt>
  40156a:	mov    $0x402084,%esi
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
  4015d0:	mov    $0x402084,%esi
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
  401609:	mov    $0x402084,%esi
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
  4016ce:	callq  401904 <_ZNSaIiEC1Ev>
  4016d3:	movl   $0x0,-0x134(%rbp)
  4016dd:	lea    -0x13c(%rbp),%rcx
  4016e4:	lea    -0x134(%rbp),%rdx
  4016eb:	lea    -0xe0(%rbp),%rax
  4016f2:	mov    $0x5,%esi
  4016f7:	mov    %rax,%rdi
  4016fa:	callq  40193c <_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_>
  4016ff:	lea    -0x13c(%rbp),%rax
  401706:	mov    %rax,%rdi
  401709:	callq  401920 <_ZNSaIiED1Ev>
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
  40173e:	mov    $0x402088,%edi
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
  401770:	mov    $0x4020b8,%edi
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
  4017a2:	mov    $0x4020f0,%edi
  4017a7:	mov    $0x0,%eax
  4017ac:	callq  400d70 <printf@plt>
  4017b1:	lea    -0xe0(%rbp),%rax
  4017b8:	mov    %rax,%rdi
  4017bb:	callq  4019a6 <_ZNSt6vectorIiSaIiEED1Ev>
  4017c0:	nop
  4017c1:	mov    -0x38(%rbp),%rax
  4017c5:	xor    %fs:0x28,%rax
  4017ce:	je     401811 <_Z9dataTypesv+0x58f>
  4017d0:	jmp    40180c <_Z9dataTypesv+0x58a>
  4017d2:	mov    %rax,%rbx
  4017d5:	lea    -0x13c(%rbp),%rax
  4017dc:	mov    %rax,%rdi
  4017df:	callq  401920 <_ZNSaIiED1Ev>
  4017e4:	mov    %rbx,%rax
  4017e7:	mov    %rax,%rdi
  4017ea:	callq  400f20 <_Unwind_Resume@plt>
  4017ef:	mov    %rax,%rbx
  4017f2:	lea    -0xe0(%rbp),%rax
  4017f9:	mov    %rax,%rdi
  4017fc:	callq  4019a6 <_ZNSt6vectorIiSaIiEED1Ev>
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
  401827:	sub    $0x10,%rsp
  40182b:	movl   $0x1,-0x8(%rbp)
  401832:	movl   $0x0,-0x4(%rbp)
  401839:	mov    $0x402128,%edi
  40183e:	callq  400db0 <puts@plt>
  401843:	mov    -0x4(%rbp),%edx
  401846:	mov    -0x8(%rbp),%eax
  401849:	mov    %edx,%esi
  40184b:	mov    %eax,%edi
  40184d:	callq  40106f <_Z6branchii>
  401852:	mov    $0x40213e,%edi
  401857:	callq  400db0 <puts@plt>
  40185c:	callq  401126 <_Z4loopv>
  401861:	mov    $0x402155,%edi
  401866:	callq  400db0 <puts@plt>
  40186b:	callq  401282 <_Z9dataTypesv>
  401870:	movl   $0x2,0x20189e(%rip)        # 603118 <S>
  40187a:	movl   $0x0,0x2019d0(%rip)        # 603254 <ics_me+0x14>
  401884:	mov    $0x0,%eax
  401889:	leaveq 
  40188a:	retq   

000000000040188b <_Z3sumii>:
  40188b:	push   %rbp
  40188c:	mov    %rsp,%rbp
  40188f:	mov    %edi,-0x14(%rbp)
  401892:	mov    %esi,-0x18(%rbp)
  401895:	mov    -0x14(%rbp),%edx
  401898:	mov    -0x18(%rbp),%eax
  40189b:	add    %edx,%eax
  40189d:	mov    %eax,-0x4(%rbp)
  4018a0:	mov    -0x4(%rbp),%eax
  4018a3:	pop    %rbp
  4018a4:	retq   

00000000004018a5 <_Z41__static_initialization_and_destruction_0ii>:
  4018a5:	push   %rbp
  4018a6:	mov    %rsp,%rbp
  4018a9:	sub    $0x10,%rsp
  4018ad:	mov    %edi,-0x4(%rbp)
  4018b0:	mov    %esi,-0x8(%rbp)
  4018b3:	cmpl   $0x1,-0x4(%rbp)
  4018b7:	jne    4018e0 <_Z41__static_initialization_and_destruction_0ii+0x3b>
  4018b9:	cmpl   $0xffff,-0x8(%rbp)
  4018c0:	jne    4018e0 <_Z41__static_initialization_and_destruction_0ii+0x3b>
  4018c2:	mov    $0x60325c,%edi
  4018c7:	callq  400de0 <_ZNSt8ios_base4InitC1Ev@plt>
  4018cc:	mov    $0x603110,%edx
  4018d1:	mov    $0x60325c,%esi
  4018d6:	mov    $0x400e40,%edi
  4018db:	callq  400e20 <__cxa_atexit@plt>
  4018e0:	nop
  4018e1:	leaveq 
  4018e2:	retq   

00000000004018e3 <_GLOBAL__sub_I__Z7partingv>:
  4018e3:	push   %rbp
  4018e4:	mov    %rsp,%rbp
  4018e7:	mov    $0xffff,%esi
  4018ec:	mov    $0x1,%edi
  4018f1:	callq  4018a5 <_Z41__static_initialization_and_destruction_0ii>
  4018f6:	pop    %rbp
  4018f7:	retq   

00000000004018f8 <_ZSt12setprecisioni>:
  4018f8:	push   %rbp
  4018f9:	mov    %rsp,%rbp
  4018fc:	mov    %edi,-0x4(%rbp)
  4018ff:	mov    -0x4(%rbp),%eax
  401902:	pop    %rbp
  401903:	retq   

0000000000401904 <_ZNSaIiEC1Ev>:
  401904:	push   %rbp
  401905:	mov    %rsp,%rbp
  401908:	sub    $0x10,%rsp
  40190c:	mov    %rdi,-0x8(%rbp)
  401910:	mov    -0x8(%rbp),%rax
  401914:	mov    %rax,%rdi
  401917:	callq  401a0c <_ZN9__gnu_cxx13new_allocatorIiEC1Ev>
  40191c:	nop
  40191d:	leaveq 
  40191e:	retq   
  40191f:	nop

0000000000401920 <_ZNSaIiED1Ev>:
  401920:	push   %rbp
  401921:	mov    %rsp,%rbp
  401924:	sub    $0x10,%rsp
  401928:	mov    %rdi,-0x8(%rbp)
  40192c:	mov    -0x8(%rbp),%rax
  401930:	mov    %rax,%rdi
  401933:	callq  401a18 <_ZN9__gnu_cxx13new_allocatorIiED1Ev>
  401938:	nop
  401939:	leaveq 
  40193a:	retq   
  40193b:	nop

000000000040193c <_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_>:
  40193c:	push   %rbp
  40193d:	mov    %rsp,%rbp
  401940:	push   %rbx
  401941:	sub    $0x28,%rsp
  401945:	mov    %rdi,-0x18(%rbp)
  401949:	mov    %rsi,-0x20(%rbp)
  40194d:	mov    %rdx,-0x28(%rbp)
  401951:	mov    %rcx,-0x30(%rbp)
  401955:	mov    -0x18(%rbp),%rax
  401959:	mov    -0x30(%rbp),%rdx
  40195d:	mov    -0x20(%rbp),%rcx
  401961:	mov    %rcx,%rsi
  401964:	mov    %rax,%rdi
  401967:	callq  401a40 <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_>
  40196c:	mov    -0x28(%rbp),%rdx
  401970:	mov    -0x20(%rbp),%rcx
  401974:	mov    -0x18(%rbp),%rax
  401978:	mov    %rcx,%rsi
  40197b:	mov    %rax,%rdi
  40197e:	callq  401b10 <_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi>
  401983:	jmp    40199f <_ZNSt6vectorIiSaIiEEC1EmRKiRKS0_+0x63>
  401985:	mov    %rax,%rbx
  401988:	mov    -0x18(%rbp),%rax
  40198c:	mov    %rax,%rdi
  40198f:	callq  401a9e <_ZNSt12_Vector_baseIiSaIiEED1Ev>
  401994:	mov    %rbx,%rax
  401997:	mov    %rax,%rdi
  40199a:	callq  400f20 <_Unwind_Resume@plt>
  40199f:	add    $0x28,%rsp
  4019a3:	pop    %rbx
  4019a4:	pop    %rbp
  4019a5:	retq   

00000000004019a6 <_ZNSt6vectorIiSaIiEED1Ev>:
  4019a6:	push   %rbp
  4019a7:	mov    %rsp,%rbp
  4019aa:	push   %rbx
  4019ab:	sub    $0x18,%rsp
  4019af:	mov    %rdi,-0x18(%rbp)
  4019b3:	mov    -0x18(%rbp),%rax
  4019b7:	mov    %rax,%rdi
  4019ba:	callq  401b58 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
  4019bf:	mov    %rax,%rdx
  4019c2:	mov    -0x18(%rbp),%rax
  4019c6:	mov    0x8(%rax),%rcx
  4019ca:	mov    -0x18(%rbp),%rax
  4019ce:	mov    (%rax),%rax
  4019d1:	mov    %rcx,%rsi
  4019d4:	mov    %rax,%rdi
  4019d7:	callq  401b66 <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>
  4019dc:	mov    -0x18(%rbp),%rax
  4019e0:	mov    %rax,%rdi
  4019e3:	callq  401a9e <_ZNSt12_Vector_baseIiSaIiEED1Ev>
  4019e8:	jmp    401a04 <_ZNSt6vectorIiSaIiEED1Ev+0x5e>
  4019ea:	mov    %rax,%rbx
  4019ed:	mov    -0x18(%rbp),%rax
  4019f1:	mov    %rax,%rdi
  4019f4:	callq  401a9e <_ZNSt12_Vector_baseIiSaIiEED1Ev>
  4019f9:	mov    %rbx,%rax
  4019fc:	mov    %rax,%rdi
  4019ff:	callq  400f20 <_Unwind_Resume@plt>
  401a04:	add    $0x18,%rsp
  401a08:	pop    %rbx
  401a09:	pop    %rbp
  401a0a:	retq   
  401a0b:	nop

0000000000401a0c <_ZN9__gnu_cxx13new_allocatorIiEC1Ev>:
  401a0c:	push   %rbp
  401a0d:	mov    %rsp,%rbp
  401a10:	mov    %rdi,-0x8(%rbp)
  401a14:	nop
  401a15:	pop    %rbp
  401a16:	retq   
  401a17:	nop

0000000000401a18 <_ZN9__gnu_cxx13new_allocatorIiED1Ev>:
  401a18:	push   %rbp
  401a19:	mov    %rsp,%rbp
  401a1c:	mov    %rdi,-0x8(%rbp)
  401a20:	nop
  401a21:	pop    %rbp
  401a22:	retq   
  401a23:	nop

0000000000401a24 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>:
  401a24:	push   %rbp
  401a25:	mov    %rsp,%rbp
  401a28:	sub    $0x10,%rsp
  401a2c:	mov    %rdi,-0x8(%rbp)
  401a30:	mov    -0x8(%rbp),%rax
  401a34:	mov    %rax,%rdi
  401a37:	callq  401920 <_ZNSaIiED1Ev>
  401a3c:	nop
  401a3d:	leaveq 
  401a3e:	retq   
  401a3f:	nop

0000000000401a40 <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_>:
  401a40:	push   %rbp
  401a41:	mov    %rsp,%rbp
  401a44:	push   %rbx
  401a45:	sub    $0x28,%rsp
  401a49:	mov    %rdi,-0x18(%rbp)
  401a4d:	mov    %rsi,-0x20(%rbp)
  401a51:	mov    %rdx,-0x28(%rbp)
  401a55:	mov    -0x18(%rbp),%rax
  401a59:	mov    -0x28(%rbp),%rdx
  401a5d:	mov    %rdx,%rsi
  401a60:	mov    %rax,%rdi
  401a63:	callq  401b90 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_>
  401a68:	mov    -0x20(%rbp),%rdx
  401a6c:	mov    -0x18(%rbp),%rax
  401a70:	mov    %rdx,%rsi
  401a73:	mov    %rax,%rdi
  401a76:	callq  401bda <_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm>
  401a7b:	jmp    401a97 <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_+0x57>
  401a7d:	mov    %rax,%rbx
  401a80:	mov    -0x18(%rbp),%rax
  401a84:	mov    %rax,%rdi
  401a87:	callq  401a24 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
  401a8c:	mov    %rbx,%rax
  401a8f:	mov    %rax,%rdi
  401a92:	callq  400f20 <_Unwind_Resume@plt>
  401a97:	add    $0x28,%rsp
  401a9b:	pop    %rbx
  401a9c:	pop    %rbp
  401a9d:	retq   

0000000000401a9e <_ZNSt12_Vector_baseIiSaIiEED1Ev>:
  401a9e:	push   %rbp
  401a9f:	mov    %rsp,%rbp
  401aa2:	push   %rbx
  401aa3:	sub    $0x18,%rsp
  401aa7:	mov    %rdi,-0x18(%rbp)
  401aab:	mov    -0x18(%rbp),%rax
  401aaf:	mov    0x10(%rax),%rax
  401ab3:	mov    %rax,%rdx
  401ab6:	mov    -0x18(%rbp),%rax
  401aba:	mov    (%rax),%rax
  401abd:	sub    %rax,%rdx
  401ac0:	mov    %rdx,%rax
  401ac3:	sar    $0x2,%rax
  401ac7:	mov    %rax,%rdx
  401aca:	mov    -0x18(%rbp),%rax
  401ace:	mov    (%rax),%rcx
  401ad1:	mov    -0x18(%rbp),%rax
  401ad5:	mov    %rcx,%rsi
  401ad8:	mov    %rax,%rdi
  401adb:	callq  401c34 <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>
  401ae0:	mov    -0x18(%rbp),%rax
  401ae4:	mov    %rax,%rdi
  401ae7:	callq  401a24 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
  401aec:	jmp    401b08 <_ZNSt12_Vector_baseIiSaIiEED1Ev+0x6a>
  401aee:	mov    %rax,%rbx
  401af1:	mov    -0x18(%rbp),%rax
  401af5:	mov    %rax,%rdi
  401af8:	callq  401a24 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
  401afd:	mov    %rbx,%rax
  401b00:	mov    %rax,%rdi
  401b03:	callq  400f20 <_Unwind_Resume@plt>
  401b08:	add    $0x18,%rsp
  401b0c:	pop    %rbx
  401b0d:	pop    %rbp
  401b0e:	retq   
  401b0f:	nop

0000000000401b10 <_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi>:
  401b10:	push   %rbp
  401b11:	mov    %rsp,%rbp
  401b14:	sub    $0x20,%rsp
  401b18:	mov    %rdi,-0x8(%rbp)
  401b1c:	mov    %rsi,-0x10(%rbp)
  401b20:	mov    %rdx,-0x18(%rbp)
  401b24:	mov    -0x8(%rbp),%rax
  401b28:	mov    %rax,%rdi
  401b2b:	callq  401b58 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
  401b30:	mov    %rax,%rcx
  401b33:	mov    -0x8(%rbp),%rax
  401b37:	mov    (%rax),%rax
  401b3a:	mov    -0x18(%rbp),%rdx
  401b3e:	mov    -0x10(%rbp),%rsi
  401b42:	mov    %rax,%rdi
  401b45:	callq  401c69 <_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E>
  401b4a:	mov    %rax,%rdx
  401b4d:	mov    -0x8(%rbp),%rax
  401b51:	mov    %rdx,0x8(%rax)
  401b55:	nop
  401b56:	leaveq 
  401b57:	retq   

0000000000401b58 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>:
  401b58:	push   %rbp
  401b59:	mov    %rsp,%rbp
  401b5c:	mov    %rdi,-0x8(%rbp)
  401b60:	mov    -0x8(%rbp),%rax
  401b64:	pop    %rbp
  401b65:	retq   

0000000000401b66 <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>:
  401b66:	push   %rbp
  401b67:	mov    %rsp,%rbp
  401b6a:	sub    $0x20,%rsp
  401b6e:	mov    %rdi,-0x8(%rbp)
  401b72:	mov    %rsi,-0x10(%rbp)
  401b76:	mov    %rdx,-0x18(%rbp)
  401b7a:	mov    -0x10(%rbp),%rdx
  401b7e:	mov    -0x8(%rbp),%rax
  401b82:	mov    %rdx,%rsi
  401b85:	mov    %rax,%rdi
  401b88:	callq  401c9a <_ZSt8_DestroyIPiEvT_S1_>
  401b8d:	nop
  401b8e:	leaveq 
  401b8f:	retq   

0000000000401b90 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_>:
  401b90:	push   %rbp
  401b91:	mov    %rsp,%rbp
  401b94:	sub    $0x10,%rsp
  401b98:	mov    %rdi,-0x8(%rbp)
  401b9c:	mov    %rsi,-0x10(%rbp)
  401ba0:	mov    -0x10(%rbp),%rdx
  401ba4:	mov    -0x8(%rbp),%rax
  401ba8:	mov    %rdx,%rsi
  401bab:	mov    %rax,%rdi
  401bae:	callq  401cc0 <_ZNSaIiEC1ERKS_>
  401bb3:	mov    -0x8(%rbp),%rax
  401bb7:	movq   $0x0,(%rax)
  401bbe:	mov    -0x8(%rbp),%rax
  401bc2:	movq   $0x0,0x8(%rax)
  401bca:	mov    -0x8(%rbp),%rax
  401bce:	movq   $0x0,0x10(%rax)
  401bd6:	nop
  401bd7:	leaveq 
  401bd8:	retq   
  401bd9:	nop

0000000000401bda <_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm>:
  401bda:	push   %rbp
  401bdb:	mov    %rsp,%rbp
  401bde:	sub    $0x10,%rsp
  401be2:	mov    %rdi,-0x8(%rbp)
  401be6:	mov    %rsi,-0x10(%rbp)
  401bea:	mov    -0x10(%rbp),%rdx
  401bee:	mov    -0x8(%rbp),%rax
  401bf2:	mov    %rdx,%rsi
  401bf5:	mov    %rax,%rdi
  401bf8:	callq  401ce6 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm>
  401bfd:	mov    %rax,%rdx
  401c00:	mov    -0x8(%rbp),%rax
  401c04:	mov    %rdx,(%rax)
  401c07:	mov    -0x8(%rbp),%rax
  401c0b:	mov    (%rax),%rdx
  401c0e:	mov    -0x8(%rbp),%rax
  401c12:	mov    %rdx,0x8(%rax)
  401c16:	mov    -0x8(%rbp),%rax
  401c1a:	mov    (%rax),%rax
  401c1d:	mov    -0x10(%rbp),%rdx
  401c21:	shl    $0x2,%rdx
  401c25:	add    %rax,%rdx
  401c28:	mov    -0x8(%rbp),%rax
  401c2c:	mov    %rdx,0x10(%rax)
  401c30:	nop
  401c31:	leaveq 
  401c32:	retq   
  401c33:	nop

0000000000401c34 <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>:
  401c34:	push   %rbp
  401c35:	mov    %rsp,%rbp
  401c38:	sub    $0x20,%rsp
  401c3c:	mov    %rdi,-0x8(%rbp)
  401c40:	mov    %rsi,-0x10(%rbp)
  401c44:	mov    %rdx,-0x18(%rbp)
  401c48:	cmpq   $0x0,-0x10(%rbp)
  401c4d:	je     401c66 <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim+0x32>
  401c4f:	mov    -0x8(%rbp),%rax
  401c53:	mov    -0x18(%rbp),%rdx
  401c57:	mov    -0x10(%rbp),%rcx
  401c5b:	mov    %rcx,%rsi
  401c5e:	mov    %rax,%rdi
  401c61:	callq  401d19 <_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim>
  401c66:	nop
  401c67:	leaveq 
  401c68:	retq   

0000000000401c69 <_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E>:
  401c69:	push   %rbp
  401c6a:	mov    %rsp,%rbp
  401c6d:	sub    $0x20,%rsp
  401c71:	mov    %rdi,-0x8(%rbp)
  401c75:	mov    %rsi,-0x10(%rbp)
  401c79:	mov    %rdx,-0x18(%rbp)
  401c7d:	mov    %rcx,-0x20(%rbp)
  401c81:	mov    -0x18(%rbp),%rdx
  401c85:	mov    -0x10(%rbp),%rcx
  401c89:	mov    -0x8(%rbp),%rax
  401c8d:	mov    %rcx,%rsi
  401c90:	mov    %rax,%rdi
  401c93:	callq  401d47 <_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_>
  401c98:	leaveq 
  401c99:	retq   

0000000000401c9a <_ZSt8_DestroyIPiEvT_S1_>:
  401c9a:	push   %rbp
  401c9b:	mov    %rsp,%rbp
  401c9e:	sub    $0x10,%rsp
  401ca2:	mov    %rdi,-0x8(%rbp)
  401ca6:	mov    %rsi,-0x10(%rbp)
  401caa:	mov    -0x10(%rbp),%rdx
  401cae:	mov    -0x8(%rbp),%rax
  401cb2:	mov    %rdx,%rsi
  401cb5:	mov    %rax,%rdi
  401cb8:	callq  401d78 <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>
  401cbd:	nop
  401cbe:	leaveq 
  401cbf:	retq   

0000000000401cc0 <_ZNSaIiEC1ERKS_>:
  401cc0:	push   %rbp
  401cc1:	mov    %rsp,%rbp
  401cc4:	sub    $0x10,%rsp
  401cc8:	mov    %rdi,-0x8(%rbp)
  401ccc:	mov    %rsi,-0x10(%rbp)
  401cd0:	mov    -0x10(%rbp),%rdx
  401cd4:	mov    -0x8(%rbp),%rax
  401cd8:	mov    %rdx,%rsi
  401cdb:	mov    %rax,%rdi
  401cde:	callq  401d88 <_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_>
  401ce3:	nop
  401ce4:	leaveq 
  401ce5:	retq   

0000000000401ce6 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm>:
  401ce6:	push   %rbp
  401ce7:	mov    %rsp,%rbp
  401cea:	sub    $0x10,%rsp
  401cee:	mov    %rdi,-0x8(%rbp)
  401cf2:	mov    %rsi,-0x10(%rbp)
  401cf6:	cmpq   $0x0,-0x10(%rbp)
  401cfb:	je     401d12 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm+0x2c>
  401cfd:	mov    -0x8(%rbp),%rax
  401d01:	mov    -0x10(%rbp),%rdx
  401d05:	mov    %rdx,%rsi
  401d08:	mov    %rax,%rdi
  401d0b:	callq  401d97 <_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m>
  401d10:	jmp    401d17 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm+0x31>
  401d12:	mov    $0x0,%eax
  401d17:	leaveq 
  401d18:	retq   

0000000000401d19 <_ZN9__gnu_cxx14__alloc_traitsISaIiEE10deallocateERS1_Pim>:
  401d19:	push   %rbp
  401d1a:	mov    %rsp,%rbp
  401d1d:	sub    $0x20,%rsp
  401d21:	mov    %rdi,-0x8(%rbp)
  401d25:	mov    %rsi,-0x10(%rbp)
  401d29:	mov    %rdx,-0x18(%rbp)
  401d2d:	mov    -0x18(%rbp),%rdx
  401d31:	mov    -0x10(%rbp),%rcx
  401d35:	mov    -0x8(%rbp),%rax
  401d39:	mov    %rcx,%rsi
  401d3c:	mov    %rax,%rdi
  401d3f:	callq  401dc2 <_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim>
  401d44:	nop
  401d45:	leaveq 
  401d46:	retq   

0000000000401d47 <_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_>:
  401d47:	push   %rbp
  401d48:	mov    %rsp,%rbp
  401d4b:	sub    $0x30,%rsp
  401d4f:	mov    %rdi,-0x18(%rbp)
  401d53:	mov    %rsi,-0x20(%rbp)
  401d57:	mov    %rdx,-0x28(%rbp)
  401d5b:	movb   $0x1,-0x1(%rbp)
  401d5f:	mov    -0x28(%rbp),%rdx
  401d63:	mov    -0x20(%rbp),%rcx
  401d67:	mov    -0x18(%rbp),%rax
  401d6b:	mov    %rcx,%rsi
  401d6e:	mov    %rax,%rdi
  401d71:	callq  401de5 <_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_>
  401d76:	leaveq 
  401d77:	retq   

0000000000401d78 <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>:
  401d78:	push   %rbp
  401d79:	mov    %rsp,%rbp
  401d7c:	mov    %rdi,-0x8(%rbp)
  401d80:	mov    %rsi,-0x10(%rbp)
  401d84:	nop
  401d85:	pop    %rbp
  401d86:	retq   
  401d87:	nop

0000000000401d88 <_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_>:
  401d88:	push   %rbp
  401d89:	mov    %rsp,%rbp
  401d8c:	mov    %rdi,-0x8(%rbp)
  401d90:	mov    %rsi,-0x10(%rbp)
  401d94:	nop
  401d95:	pop    %rbp
  401d96:	retq   

0000000000401d97 <_ZN9__gnu_cxx14__alloc_traitsISaIiEE8allocateERS1_m>:
  401d97:	push   %rbp
  401d98:	mov    %rsp,%rbp
  401d9b:	sub    $0x10,%rsp
  401d9f:	mov    %rdi,-0x8(%rbp)
  401da3:	mov    %rsi,-0x10(%rbp)
  401da7:	mov    -0x10(%rbp),%rcx
  401dab:	mov    -0x8(%rbp),%rax
  401daf:	mov    $0x0,%edx
  401db4:	mov    %rcx,%rsi
  401db7:	mov    %rax,%rdi
  401dba:	callq  401e12 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv>
  401dbf:	leaveq 
  401dc0:	retq   
  401dc1:	nop

0000000000401dc2 <_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim>:
  401dc2:	push   %rbp
  401dc3:	mov    %rsp,%rbp
  401dc6:	sub    $0x20,%rsp
  401dca:	mov    %rdi,-0x8(%rbp)
  401dce:	mov    %rsi,-0x10(%rbp)
  401dd2:	mov    %rdx,-0x18(%rbp)
  401dd6:	mov    -0x10(%rbp),%rax
  401dda:	mov    %rax,%rdi
  401ddd:	callq  400dc0 <_ZdlPv@plt>
  401de2:	nop
  401de3:	leaveq 
  401de4:	retq   

0000000000401de5 <_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_>:
  401de5:	push   %rbp
  401de6:	mov    %rsp,%rbp
  401de9:	sub    $0x20,%rsp
  401ded:	mov    %rdi,-0x8(%rbp)
  401df1:	mov    %rsi,-0x10(%rbp)
  401df5:	mov    %rdx,-0x18(%rbp)
  401df9:	mov    -0x18(%rbp),%rdx
  401dfd:	mov    -0x10(%rbp),%rcx
  401e01:	mov    -0x8(%rbp),%rax
  401e05:	mov    %rcx,%rsi
  401e08:	mov    %rax,%rdi
  401e0b:	callq  401e54 <_ZSt6fill_nIPimiET_S1_T0_RKT1_>
  401e10:	leaveq 
  401e11:	retq   

0000000000401e12 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv>:
  401e12:	push   %rbp
  401e13:	mov    %rsp,%rbp
  401e16:	sub    $0x20,%rsp
  401e1a:	mov    %rdi,-0x8(%rbp)
  401e1e:	mov    %rsi,-0x10(%rbp)
  401e22:	mov    %rdx,-0x18(%rbp)
  401e26:	mov    -0x8(%rbp),%rax
  401e2a:	mov    %rax,%rdi
  401e2d:	callq  401e8c <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>
  401e32:	cmp    -0x10(%rbp),%rax
  401e36:	setb   %al
  401e39:	test   %al,%al
  401e3b:	je     401e42 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv+0x30>
  401e3d:	callq  400ed0 <_ZSt17__throw_bad_allocv@plt>
  401e42:	mov    -0x10(%rbp),%rax
  401e46:	shl    $0x2,%rax
  401e4a:	mov    %rax,%rdi
  401e4d:	callq  400f10 <_Znwm@plt>
  401e52:	leaveq 
  401e53:	retq   

0000000000401e54 <_ZSt6fill_nIPimiET_S1_T0_RKT1_>:
  401e54:	push   %rbp
  401e55:	mov    %rsp,%rbp
  401e58:	sub    $0x20,%rsp
  401e5c:	mov    %rdi,-0x8(%rbp)
  401e60:	mov    %rsi,-0x10(%rbp)
  401e64:	mov    %rdx,-0x18(%rbp)
  401e68:	mov    -0x8(%rbp),%rax
  401e6c:	mov    %rax,%rdi
  401e6f:	callq  401ea0 <_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_>
  401e74:	mov    %rax,%rcx
  401e77:	mov    -0x18(%rbp),%rdx
  401e7b:	mov    -0x10(%rbp),%rax
  401e7f:	mov    %rax,%rsi
  401e82:	mov    %rcx,%rdi
  401e85:	callq  401eba <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_>
  401e8a:	leaveq 
  401e8b:	retq   

0000000000401e8c <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>:
  401e8c:	push   %rbp
  401e8d:	mov    %rsp,%rbp
  401e90:	mov    %rdi,-0x8(%rbp)
  401e94:	movabs $0x3fffffffffffffff,%rax
  401e9e:	pop    %rbp
  401e9f:	retq   

0000000000401ea0 <_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_>:
  401ea0:	push   %rbp
  401ea1:	mov    %rsp,%rbp
  401ea4:	sub    $0x10,%rsp
  401ea8:	mov    %rdi,-0x8(%rbp)
  401eac:	mov    -0x8(%rbp),%rax
  401eb0:	mov    %rax,%rdi
  401eb3:	callq  401efd <_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_>
  401eb8:	leaveq 
  401eb9:	retq   

0000000000401eba <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_>:
  401eba:	push   %rbp
  401ebb:	mov    %rsp,%rbp
  401ebe:	mov    %rdi,-0x18(%rbp)
  401ec2:	mov    %rsi,-0x20(%rbp)
  401ec6:	mov    %rdx,-0x28(%rbp)
  401eca:	mov    -0x28(%rbp),%rax
  401ece:	mov    (%rax),%eax
  401ed0:	mov    %eax,-0xc(%rbp)
  401ed3:	mov    -0x20(%rbp),%rax
  401ed7:	mov    %rax,-0x8(%rbp)
  401edb:	cmpq   $0x0,-0x8(%rbp)
  401ee0:	je     401ef7 <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_+0x3d>
  401ee2:	mov    -0x18(%rbp),%rax
  401ee6:	mov    -0xc(%rbp),%edx
  401ee9:	mov    %edx,(%rax)
  401eeb:	subq   $0x1,-0x8(%rbp)
  401ef0:	addq   $0x4,-0x18(%rbp)
  401ef5:	jmp    401edb <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_+0x21>
  401ef7:	mov    -0x18(%rbp),%rax
  401efb:	pop    %rbp
  401efc:	retq   

0000000000401efd <_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_>:
  401efd:	push   %rbp
  401efe:	mov    %rsp,%rbp
  401f01:	mov    %rdi,-0x8(%rbp)
  401f05:	mov    -0x8(%rbp),%rax
  401f09:	pop    %rbp
  401f0a:	retq   
  401f0b:	nopl   0x0(%rax,%rax,1)

0000000000401f10 <__libc_csu_init>:
  401f10:	push   %r15
  401f12:	push   %r14
  401f14:	mov    %edi,%r15d
  401f17:	push   %r13
  401f19:	push   %r12
  401f1b:	lea    0x200ec6(%rip),%r12        # 602de8 <__frame_dummy_init_array_entry>
  401f22:	push   %rbp
  401f23:	lea    0x200ece(%rip),%rbp        # 602df8 <__init_array_end>
  401f2a:	push   %rbx
  401f2b:	mov    %rsi,%r14
  401f2e:	mov    %rdx,%r13
  401f31:	sub    %r12,%rbp
  401f34:	sub    $0x8,%rsp
  401f38:	sar    $0x3,%rbp
  401f3c:	callq  400d20 <_init>
  401f41:	test   %rbp,%rbp
  401f44:	je     401f66 <__libc_csu_init+0x56>
  401f46:	xor    %ebx,%ebx
  401f48:	nopl   0x0(%rax,%rax,1)
  401f50:	mov    %r13,%rdx
  401f53:	mov    %r14,%rsi
  401f56:	mov    %r15d,%edi
  401f59:	callq  *(%r12,%rbx,8)
  401f5d:	add    $0x1,%rbx
  401f61:	cmp    %rbp,%rbx
  401f64:	jne    401f50 <__libc_csu_init+0x40>
  401f66:	add    $0x8,%rsp
  401f6a:	pop    %rbx
  401f6b:	pop    %rbp
  401f6c:	pop    %r12
  401f6e:	pop    %r13
  401f70:	pop    %r14
  401f72:	pop    %r15
  401f74:	retq   
  401f75:	nop
  401f76:	nopw   %cs:0x0(%rax,%rax,1)

0000000000401f80 <__libc_csu_fini>:
  401f80:	repz retq 

Disassembly of section .fini:

0000000000401f84 <_fini>:
  401f84:	sub    $0x8,%rsp
  401f88:	add    $0x8,%rsp
  401f8c:	retq   
