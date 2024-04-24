
build/text-x86:     file format elf32-i386


Disassembly of section .text:

04000000 <_start>:
 4000000:	55                   	push   %ebp
 4000001:	89 e5                	mov    %esp,%ebp
 4000003:	83 ec 0c             	sub    $0xc,%esp
 4000006:	ff 75 10             	pushl  0x10(%ebp)
 4000009:	ff 75 0c             	pushl  0xc(%ebp)
 400000c:	ff 75 08             	pushl  0x8(%ebp)
 400000f:	e8 60 00 00 00       	call   4000074 <main>
 4000014:	89 04 24             	mov    %eax,(%esp)
 4000017:	e8 00 00 00 00       	call   400001c <exit>

0400001c <exit>:
 400001c:	55                   	push   %ebp
 400001d:	89 e5                	mov    %esp,%ebp
 400001f:	57                   	push   %edi
 4000020:	56                   	push   %esi
 4000021:	53                   	push   %ebx
 4000022:	83 ec 0c             	sub    $0xc,%esp
 4000025:	8b 7d 08             	mov    0x8(%ebp),%edi
 4000028:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 400002d:	8b b0 70 01 00 00    	mov    0x170(%eax),%esi
 4000033:	85 f6                	test   %esi,%esi
 4000035:	74 1e                	je     4000055 <exit+0x39>
 4000037:	90                   	nop
 4000038:	8b 5e 04             	mov    0x4(%esi),%ebx
 400003b:	4b                   	dec    %ebx
 400003c:	78 0c                	js     400004a <exit+0x2e>
 400003e:	66 90                	xchg   %ax,%ax
 4000040:	ff 54 9e 08          	call   *0x8(%esi,%ebx,4)
 4000044:	4b                   	dec    %ebx
 4000045:	83 fb ff             	cmp    $0xffffffff,%ebx
 4000048:	75 f6                	jne    4000040 <exit+0x24>
 400004a:	8b 36                	mov    (%esi),%esi
 400004c:	85 f6                	test   %esi,%esi
 400004e:	75 e8                	jne    4000038 <exit+0x1c>
 4000050:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 4000055:	8b 50 60             	mov    0x60(%eax),%edx
 4000058:	85 d2                	test   %edx,%edx
 400005a:	74 09                	je     4000065 <exit+0x49>
 400005c:	83 ec 0c             	sub    $0xc,%esp
 400005f:	50                   	push   %eax
 4000060:	ff d2                	call   *%edx
 4000062:	83 c4 10             	add    $0x10,%esp
 4000065:	89 7d 08             	mov    %edi,0x8(%ebp)
 4000068:	8d 65 f4             	lea    -0xc(%ebp),%esp
 400006b:	5b                   	pop    %ebx
 400006c:	5e                   	pop    %esi
 400006d:	5f                   	pop    %edi
 400006e:	5d                   	pop    %ebp
 400006f:	e9 8c 3d 00 00       	jmp    4003e00 <_exit>

04000074 <main>:
 4000074:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 4000078:	83 e4 f0             	and    $0xfffffff0,%esp
 400007b:	ff 71 fc             	pushl  -0x4(%ecx)
 400007e:	55                   	push   %ebp
 400007f:	89 e5                	mov    %esp,%ebp
 4000081:	57                   	push   %edi
 4000082:	56                   	push   %esi
 4000083:	53                   	push   %ebx
 4000084:	51                   	push   %ecx
 4000085:	83 ec 20             	sub    $0x20,%esp
 4000088:	68 40 41 00 04       	push   $0x4004140
 400008d:	68 43 41 00 04       	push   $0x4004143
 4000092:	e8 ed 08 00 00       	call   4000984 <fopen>
 4000097:	89 c3                	mov    %eax,%ebx
 4000099:	83 c4 10             	add    $0x10,%esp
 400009c:	85 c0                	test   %eax,%eax
 400009e:	0f 84 62 01 00 00    	je     4000206 <main+0x192>
 40000a4:	50                   	push   %eax
 40000a5:	6a 02                	push   $0x2
 40000a7:	6a 00                	push   $0x0
 40000a9:	53                   	push   %ebx
 40000aa:	e8 75 01 00 00       	call   4000224 <fseek>
 40000af:	89 1c 24             	mov    %ebx,(%esp)
 40000b2:	e8 5d 26 00 00       	call   4002714 <ftell>
 40000b7:	83 c4 10             	add    $0x10,%esp
 40000ba:	3d 88 13 00 00       	cmp    $0x1388,%eax
 40000bf:	74 19                	je     40000da <main+0x66>
 40000c1:	6a 0a                	push   $0xa
 40000c3:	68 54 41 00 04       	push   $0x4004154
 40000c8:	68 5e 41 00 04       	push   $0x400415e
 40000cd:	68 98 41 00 04       	push   $0x4004198
 40000d2:	e8 39 2d 00 00       	call   4002e10 <__assertfail>
 40000d7:	83 c4 10             	add    $0x10,%esp
 40000da:	50                   	push   %eax
 40000db:	6a 00                	push   $0x0
 40000dd:	68 c4 09 00 00       	push   $0x9c4
 40000e2:	53                   	push   %ebx
 40000e3:	e8 3c 01 00 00       	call   4000224 <fseek>
 40000e8:	83 c4 10             	add    $0x10,%esp
 40000eb:	be f4 01 00 00       	mov    $0x1f4,%esi
 40000f0:	8d 7d e4             	lea    -0x1c(%ebp),%edi
 40000f3:	90                   	nop
 40000f4:	50                   	push   %eax
 40000f5:	57                   	push   %edi
 40000f6:	68 49 48 00 04       	push   $0x4004849
 40000fb:	53                   	push   %ebx
 40000fc:	e8 3b 06 00 00       	call   400073c <fscanf>
 4000101:	46                   	inc    %esi
 4000102:	83 c4 10             	add    $0x10,%esp
 4000105:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 4000108:	74 19                	je     4000123 <main+0xaf>
 400010a:	6a 10                	push   $0x10
 400010c:	68 54 41 00 04       	push   $0x4004154
 4000111:	68 6b 41 00 04       	push   $0x400416b
 4000116:	68 98 41 00 04       	push   $0x4004198
 400011b:	e8 f0 2c 00 00       	call   4002e10 <__assertfail>
 4000120:	83 c4 10             	add    $0x10,%esp
 4000123:	81 fe e8 03 00 00    	cmp    $0x3e8,%esi
 4000129:	75 c9                	jne    40000f4 <main+0x80>
 400012b:	50                   	push   %eax
 400012c:	6a 00                	push   $0x0
 400012e:	6a 00                	push   $0x0
 4000130:	53                   	push   %ebx
 4000131:	e8 ee 00 00 00       	call   4000224 <fseek>
 4000136:	83 c4 10             	add    $0x10,%esp
 4000139:	be e9 03 00 00       	mov    $0x3e9,%esi
 400013e:	66 90                	xchg   %ax,%ax
 4000140:	50                   	push   %eax
 4000141:	56                   	push   %esi
 4000142:	68 76 41 00 04       	push   $0x4004176
 4000147:	53                   	push   %ebx
 4000148:	e8 53 1c 00 00       	call   4001da0 <fprintf>
 400014d:	46                   	inc    %esi
 400014e:	83 c4 10             	add    $0x10,%esp
 4000151:	81 fe dd 05 00 00    	cmp    $0x5dd,%esi
 4000157:	75 e7                	jne    4000140 <main+0xcc>
 4000159:	be f4 01 00 00       	mov    $0x1f4,%esi
 400015e:	66 90                	xchg   %ax,%ax
 4000160:	51                   	push   %ecx
 4000161:	57                   	push   %edi
 4000162:	68 49 48 00 04       	push   $0x4004849
 4000167:	53                   	push   %ebx
 4000168:	e8 cf 05 00 00       	call   400073c <fscanf>
 400016d:	46                   	inc    %esi
 400016e:	83 c4 10             	add    $0x10,%esp
 4000171:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 4000174:	74 19                	je     400018f <main+0x11b>
 4000176:	6a 1a                	push   $0x1a
 4000178:	68 54 41 00 04       	push   $0x4004154
 400017d:	68 6b 41 00 04       	push   $0x400416b
 4000182:	68 98 41 00 04       	push   $0x4004198
 4000187:	e8 84 2c 00 00       	call   4002e10 <__assertfail>
 400018c:	83 c4 10             	add    $0x10,%esp
 400018f:	81 fe e8 03 00 00    	cmp    $0x3e8,%esi
 4000195:	75 c9                	jne    4000160 <main+0xec>
 4000197:	52                   	push   %edx
 4000198:	6a 00                	push   $0x0
 400019a:	6a 00                	push   $0x0
 400019c:	53                   	push   %ebx
 400019d:	e8 82 00 00 00       	call   4000224 <fseek>
 40001a2:	83 c4 10             	add    $0x10,%esp
 40001a5:	be e9 03 00 00       	mov    $0x3e9,%esi
 40001aa:	66 90                	xchg   %ax,%ax
 40001ac:	50                   	push   %eax
 40001ad:	57                   	push   %edi
 40001ae:	68 49 48 00 04       	push   $0x4004849
 40001b3:	53                   	push   %ebx
 40001b4:	e8 83 05 00 00       	call   400073c <fscanf>
 40001b9:	83 c4 10             	add    $0x10,%esp
 40001bc:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 40001bf:	74 19                	je     40001da <main+0x166>
 40001c1:	6a 20                	push   $0x20
 40001c3:	68 54 41 00 04       	push   $0x4004154
 40001c8:	68 7b 41 00 04       	push   $0x400417b
 40001cd:	68 98 41 00 04       	push   $0x4004198
 40001d2:	e8 39 2c 00 00       	call   4002e10 <__assertfail>
 40001d7:	83 c4 10             	add    $0x10,%esp
 40001da:	46                   	inc    %esi
 40001db:	81 fe dd 05 00 00    	cmp    $0x5dd,%esi
 40001e1:	75 c9                	jne    40001ac <main+0x138>
 40001e3:	83 ec 0c             	sub    $0xc,%esp
 40001e6:	53                   	push   %ebx
 40001e7:	e8 4c 09 00 00       	call   4000b38 <fclose>
 40001ec:	c7 04 24 8d 41 00 04 	movl   $0x400418d,(%esp)
 40001f3:	e8 48 0b 00 00       	call   4000d40 <printf>
 40001f8:	31 c0                	xor    %eax,%eax
 40001fa:	8d 65 f0             	lea    -0x10(%ebp),%esp
 40001fd:	59                   	pop    %ecx
 40001fe:	5b                   	pop    %ebx
 40001ff:	5e                   	pop    %esi
 4000200:	5f                   	pop    %edi
 4000201:	5d                   	pop    %ebp
 4000202:	8d 61 fc             	lea    -0x4(%ecx),%esp
 4000205:	c3                   	ret    
 4000206:	6a 06                	push   $0x6
 4000208:	68 54 41 00 04       	push   $0x4004154
 400020d:	68 5b 41 00 04       	push   $0x400415b
 4000212:	68 98 41 00 04       	push   $0x4004198
 4000217:	e8 f4 2b 00 00       	call   4002e10 <__assertfail>
 400021c:	83 c4 10             	add    $0x10,%esp
 400021f:	e9 80 fe ff ff       	jmp    40000a4 <main+0x30>

04000224 <fseek>:
 4000224:	55                   	push   %ebp
 4000225:	89 e5                	mov    %esp,%ebp
 4000227:	57                   	push   %edi
 4000228:	56                   	push   %esi
 4000229:	53                   	push   %ebx
 400022a:	83 ec 5c             	sub    $0x5c,%esp
 400022d:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4000230:	8b 73 54             	mov    0x54(%ebx),%esi
 4000233:	85 f6                	test   %esi,%esi
 4000235:	0f 84 8d 02 00 00    	je     40004c8 <fseek+0x2a4>
 400023b:	8b 4e 5c             	mov    0x5c(%esi),%ecx
 400023e:	85 c9                	test   %ecx,%ecx
 4000240:	0f 84 22 01 00 00    	je     4000368 <fseek+0x144>
 4000246:	8b 43 0c             	mov    0xc(%ebx),%eax
 4000249:	25 08 01 00 00       	and    $0x108,%eax
 400024e:	66 3d 08 01          	cmp    $0x108,%ax
 4000252:	0f 84 37 01 00 00    	je     400038f <fseek+0x16b>
 4000258:	8b 7b 28             	mov    0x28(%ebx),%edi
 400025b:	85 ff                	test   %edi,%edi
 400025d:	0f 84 d4 03 00 00    	je     4000637 <fseek+0x413>
 4000263:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
 4000267:	0f 84 bb 00 00 00    	je     4000328 <fseek+0x104>
 400026d:	83 7d 10 02          	cmpl   $0x2,0x10(%ebp)
 4000271:	74 1d                	je     4000290 <fseek+0x6c>
 4000273:	8b 45 10             	mov    0x10(%ebp),%eax
 4000276:	85 c0                	test   %eax,%eax
 4000278:	74 16                	je     4000290 <fseek+0x6c>
 400027a:	c7 06 16 00 00 00    	movl   $0x16,(%esi)
 4000280:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4000285:	89 f0                	mov    %esi,%eax
 4000287:	8d 65 f4             	lea    -0xc(%ebp),%esp
 400028a:	5b                   	pop    %ebx
 400028b:	5e                   	pop    %esi
 400028c:	5f                   	pop    %edi
 400028d:	5d                   	pop    %ebp
 400028e:	c3                   	ret    
 400028f:	90                   	nop
 4000290:	8b 43 10             	mov    0x10(%ebx),%eax
 4000293:	31 c9                	xor    %ecx,%ecx
 4000295:	85 c0                	test   %eax,%eax
 4000297:	0f 84 3f 03 00 00    	je     40005dc <fseek+0x3b8>
 400029d:	8b 43 0c             	mov    0xc(%ebx),%eax
 40002a0:	a9 1a 08 00 00       	test   $0x81a,%eax
 40002a5:	75 1c                	jne    40002c3 <fseek+0x9f>
 40002a7:	f6 c4 04             	test   $0x4,%ah
 40002aa:	0f 85 04 01 00 00    	jne    40003b4 <fseek+0x190>
 40002b0:	81 ff cc 0c 00 04    	cmp    $0x4000ccc,%edi
 40002b6:	0f 84 58 02 00 00    	je     4000514 <fseek+0x2f0>
 40002bc:	80 cc 08             	or     $0x8,%ah
 40002bf:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 40002c3:	83 ec 0c             	sub    $0xc,%esp
 40002c6:	53                   	push   %ebx
 40002c7:	e8 d4 06 00 00       	call   40009a0 <fflush>
 40002cc:	89 c6                	mov    %eax,%esi
 40002ce:	83 c4 10             	add    $0x10,%esp
 40002d1:	85 c0                	test   %eax,%eax
 40002d3:	75 ab                	jne    4000280 <fseek+0x5c>
 40002d5:	50                   	push   %eax
 40002d6:	ff 75 10             	pushl  0x10(%ebp)
 40002d9:	ff 75 0c             	pushl  0xc(%ebp)
 40002dc:	ff 73 1c             	pushl  0x1c(%ebx)
 40002df:	ff d7                	call   *%edi
 40002e1:	83 c4 10             	add    $0x10,%esp
 40002e4:	40                   	inc    %eax
 40002e5:	74 99                	je     4000280 <fseek+0x5c>
 40002e7:	8b 43 30             	mov    0x30(%ebx),%eax
 40002ea:	85 c0                	test   %eax,%eax
 40002ec:	74 1d                	je     400030b <fseek+0xe7>
 40002ee:	8d 4b 40             	lea    0x40(%ebx),%ecx
 40002f1:	39 c8                	cmp    %ecx,%eax
 40002f3:	74 0f                	je     4000304 <fseek+0xe0>
 40002f5:	83 ec 08             	sub    $0x8,%esp
 40002f8:	50                   	push   %eax
 40002f9:	ff 73 54             	pushl  0x54(%ebx)
 40002fc:	e8 83 29 00 00       	call   4002c84 <_free_r>
 4000301:	83 c4 10             	add    $0x10,%esp
 4000304:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 400030b:	8b 43 10             	mov    0x10(%ebx),%eax
 400030e:	89 03                	mov    %eax,(%ebx)
 4000310:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 4000317:	66 83 63 0c df       	andw   $0xffdf,0xc(%ebx)
 400031c:	89 f0                	mov    %esi,%eax
 400031e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4000321:	5b                   	pop    %ebx
 4000322:	5e                   	pop    %esi
 4000323:	5f                   	pop    %edi
 4000324:	5d                   	pop    %ebp
 4000325:	c3                   	ret    
 4000326:	66 90                	xchg   %ax,%ax
 4000328:	8b 43 0c             	mov    0xc(%ebx),%eax
 400032b:	f6 c4 10             	test   $0x10,%ah
 400032e:	0f 84 c0 01 00 00    	je     40004f4 <fseek+0x2d0>
 4000334:	8b 53 50             	mov    0x50(%ebx),%edx
 4000337:	a8 04                	test   $0x4,%al
 4000339:	0f 85 39 01 00 00    	jne    4000478 <fseek+0x254>
 400033f:	a8 08                	test   $0x8,%al
 4000341:	0f 84 3e 01 00 00    	je     4000485 <fseek+0x261>
 4000347:	8b 0b                	mov    (%ebx),%ecx
 4000349:	8b 43 10             	mov    0x10(%ebx),%eax
 400034c:	85 c9                	test   %ecx,%ecx
 400034e:	74 04                	je     4000354 <fseek+0x130>
 4000350:	29 c1                	sub    %eax,%ecx
 4000352:	01 ca                	add    %ecx,%edx
 4000354:	01 55 0c             	add    %edx,0xc(%ebp)
 4000357:	b9 01 00 00 00       	mov    $0x1,%ecx
 400035c:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
 4000363:	e9 2d ff ff ff       	jmp    4000295 <fseek+0x71>
 4000368:	89 55 a4             	mov    %edx,-0x5c(%ebp)
 400036b:	83 ec 0c             	sub    $0xc,%esp
 400036e:	56                   	push   %esi
 400036f:	e8 78 0a 00 00       	call   4000dec <__sinit>
 4000374:	8b 73 54             	mov    0x54(%ebx),%esi
 4000377:	83 c4 10             	add    $0x10,%esp
 400037a:	8b 55 a4             	mov    -0x5c(%ebp),%edx
 400037d:	8b 43 0c             	mov    0xc(%ebx),%eax
 4000380:	25 08 01 00 00       	and    $0x108,%eax
 4000385:	66 3d 08 01          	cmp    $0x108,%ax
 4000389:	0f 85 c9 fe ff ff    	jne    4000258 <fseek+0x34>
 400038f:	89 55 a4             	mov    %edx,-0x5c(%ebp)
 4000392:	83 ec 0c             	sub    $0xc,%esp
 4000395:	53                   	push   %ebx
 4000396:	e8 05 06 00 00       	call   40009a0 <fflush>
 400039b:	83 c4 10             	add    $0x10,%esp
 400039e:	8b 55 a4             	mov    -0x5c(%ebp),%edx
 40003a1:	e9 b2 fe ff ff       	jmp    4000258 <fseek+0x34>
 40003a6:	c7 43 4c 00 04 00 00 	movl   $0x400,0x4c(%ebx)
 40003ad:	66 81 4b 0c 00 04    	orw    $0x400,0xc(%ebx)
 40003b3:	90                   	nop
 40003b4:	8b 45 10             	mov    0x10(%ebp),%eax
 40003b7:	85 c0                	test   %eax,%eax
 40003b9:	0f 85 d1 00 00 00    	jne    4000490 <fseek+0x26c>
 40003bf:	8b 45 0c             	mov    0xc(%ebp),%eax
 40003c2:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 40003c5:	85 c9                	test   %ecx,%ecx
 40003c7:	0f 85 0b 01 00 00    	jne    40004d8 <fseek+0x2b4>
 40003cd:	8b 4b 0c             	mov    0xc(%ebx),%ecx
 40003d0:	f6 c5 10             	test   $0x10,%ch
 40003d3:	0f 84 23 02 00 00    	je     40005fc <fseek+0x3d8>
 40003d9:	8b 43 50             	mov    0x50(%ebx),%eax
 40003dc:	8b 73 04             	mov    0x4(%ebx),%esi
 40003df:	29 f0                	sub    %esi,%eax
 40003e1:	89 c2                	mov    %eax,%edx
 40003e3:	8b 43 30             	mov    0x30(%ebx),%eax
 40003e6:	89 45 a0             	mov    %eax,-0x60(%ebp)
 40003e9:	85 c0                	test   %eax,%eax
 40003eb:	0f 84 31 02 00 00    	je     4000622 <fseek+0x3fe>
 40003f1:	8b 73 3c             	mov    0x3c(%ebx),%esi
 40003f4:	29 f2                	sub    %esi,%edx
 40003f6:	8b 43 38             	mov    0x38(%ebx),%eax
 40003f9:	2b 43 10             	sub    0x10(%ebx),%eax
 40003fc:	29 c2                	sub    %eax,%edx
 40003fe:	01 c6                	add    %eax,%esi
 4000400:	f6 c5 20             	test   $0x20,%ch
 4000403:	75 11                	jne    4000416 <fseek+0x1f2>
 4000405:	39 55 a4             	cmp    %edx,-0x5c(%ebp)
 4000408:	7c 0c                	jl     4000416 <fseek+0x1f2>
 400040a:	8d 04 32             	lea    (%edx,%esi,1),%eax
 400040d:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
 4000410:	0f 87 4a 01 00 00    	ja     4000560 <fseek+0x33c>
 4000416:	8b 73 4c             	mov    0x4c(%ebx),%esi
 4000419:	f7 de                	neg    %esi
 400041b:	23 75 a4             	and    -0x5c(%ebp),%esi
 400041e:	52                   	push   %edx
 400041f:	6a 00                	push   $0x0
 4000421:	56                   	push   %esi
 4000422:	ff 73 1c             	pushl  0x1c(%ebx)
 4000425:	ff d7                	call   *%edi
 4000427:	83 c4 10             	add    $0x10,%esp
 400042a:	40                   	inc    %eax
 400042b:	0f 84 92 fe ff ff    	je     40002c3 <fseek+0x9f>
 4000431:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 4000438:	8b 43 30             	mov    0x30(%ebx),%eax
 400043b:	85 c0                	test   %eax,%eax
 400043d:	74 1d                	je     400045c <fseek+0x238>
 400043f:	8d 53 40             	lea    0x40(%ebx),%edx
 4000442:	39 d0                	cmp    %edx,%eax
 4000444:	74 0f                	je     4000455 <fseek+0x231>
 4000446:	83 ec 08             	sub    $0x8,%esp
 4000449:	50                   	push   %eax
 400044a:	ff 73 54             	pushl  0x54(%ebx)
 400044d:	e8 32 28 00 00       	call   4002c84 <_free_r>
 4000452:	83 c4 10             	add    $0x10,%esp
 4000455:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 400045c:	66 83 63 0c df       	andw   $0xffdf,0xc(%ebx)
 4000461:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 4000464:	29 f0                	sub    %esi,%eax
 4000466:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 4000469:	0f 85 39 01 00 00    	jne    40005a8 <fseek+0x384>
 400046f:	31 f6                	xor    %esi,%esi
 4000471:	e9 0f fe ff ff       	jmp    4000285 <fseek+0x61>
 4000476:	66 90                	xchg   %ax,%ax
 4000478:	2b 53 04             	sub    0x4(%ebx),%edx
 400047b:	8b 43 30             	mov    0x30(%ebx),%eax
 400047e:	85 c0                	test   %eax,%eax
 4000480:	74 03                	je     4000485 <fseek+0x261>
 4000482:	2b 53 3c             	sub    0x3c(%ebx),%edx
 4000485:	8b 43 10             	mov    0x10(%ebx),%eax
 4000488:	e9 c7 fe ff ff       	jmp    4000354 <fseek+0x130>
 400048d:	8d 76 00             	lea    0x0(%esi),%esi
 4000490:	89 4d 9c             	mov    %ecx,-0x64(%ebp)
 4000493:	89 55 a0             	mov    %edx,-0x60(%ebp)
 4000496:	50                   	push   %eax
 4000497:	8d 45 ac             	lea    -0x54(%ebp),%eax
 400049a:	50                   	push   %eax
 400049b:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 400049f:	50                   	push   %eax
 40004a0:	56                   	push   %esi
 40004a1:	e8 ae 2b 00 00       	call   4003054 <_fstat_r>
 40004a6:	83 c4 10             	add    $0x10,%esp
 40004a9:	85 c0                	test   %eax,%eax
 40004ab:	0f 85 12 fe ff ff    	jne    40002c3 <fseek+0x9f>
 40004b1:	8b 45 0c             	mov    0xc(%ebp),%eax
 40004b4:	03 45 bc             	add    -0x44(%ebp),%eax
 40004b7:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 40004ba:	8b 55 a0             	mov    -0x60(%ebp),%edx
 40004bd:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
 40004c0:	e9 00 ff ff ff       	jmp    40003c5 <fseek+0x1a1>
 40004c5:	8d 76 00             	lea    0x0(%esi),%esi
 40004c8:	8b 35 00 6c 00 04    	mov    0x4006c00,%esi
 40004ce:	89 73 54             	mov    %esi,0x54(%ebx)
 40004d1:	e9 65 fd ff ff       	jmp    400023b <fseek+0x17>
 40004d6:	66 90                	xchg   %ax,%ax
 40004d8:	8b 43 30             	mov    0x30(%ebx),%eax
 40004db:	89 45 a0             	mov    %eax,-0x60(%ebp)
 40004de:	85 c0                	test   %eax,%eax
 40004e0:	0f 84 36 01 00 00    	je     400061c <fseek+0x3f8>
 40004e6:	8b 73 3c             	mov    0x3c(%ebx),%esi
 40004e9:	8b 4b 0c             	mov    0xc(%ebx),%ecx
 40004ec:	e9 05 ff ff ff       	jmp    40003f6 <fseek+0x1d2>
 40004f1:	8d 76 00             	lea    0x0(%esi),%esi
 40004f4:	50                   	push   %eax
 40004f5:	6a 01                	push   $0x1
 40004f7:	6a 00                	push   $0x0
 40004f9:	ff 73 1c             	pushl  0x1c(%ebx)
 40004fc:	ff d7                	call   *%edi
 40004fe:	89 c2                	mov    %eax,%edx
 4000500:	83 c4 10             	add    $0x10,%esp
 4000503:	83 f8 ff             	cmp    $0xffffffff,%eax
 4000506:	0f 84 74 fd ff ff    	je     4000280 <fseek+0x5c>
 400050c:	8b 43 0c             	mov    0xc(%ebx),%eax
 400050f:	e9 23 fe ff ff       	jmp    4000337 <fseek+0x113>
 4000514:	89 4d a0             	mov    %ecx,-0x60(%ebp)
 4000517:	89 55 a4             	mov    %edx,-0x5c(%ebp)
 400051a:	66 8b 4b 0e          	mov    0xe(%ebx),%cx
 400051e:	66 85 c9             	test   %cx,%cx
 4000521:	0f 88 95 fd ff ff    	js     40002bc <fseek+0x98>
 4000527:	50                   	push   %eax
 4000528:	8d 45 ac             	lea    -0x54(%ebp),%eax
 400052b:	50                   	push   %eax
 400052c:	0f bf c1             	movswl %cx,%eax
 400052f:	50                   	push   %eax
 4000530:	56                   	push   %esi
 4000531:	e8 1e 2b 00 00       	call   4003054 <_fstat_r>
 4000536:	83 c4 10             	add    $0x10,%esp
 4000539:	85 c0                	test   %eax,%eax
 400053b:	8b 55 a4             	mov    -0x5c(%ebp),%edx
 400053e:	8b 4d a0             	mov    -0x60(%ebp),%ecx
 4000541:	75 13                	jne    4000556 <fseek+0x332>
 4000543:	8b 45 b0             	mov    -0x50(%ebp),%eax
 4000546:	25 00 f0 00 00       	and    $0xf000,%eax
 400054b:	3d 00 80 00 00       	cmp    $0x8000,%eax
 4000550:	0f 84 50 fe ff ff    	je     40003a6 <fseek+0x182>
 4000556:	8b 43 0c             	mov    0xc(%ebx),%eax
 4000559:	e9 5e fd ff ff       	jmp    40002bc <fseek+0x98>
 400055e:	66 90                	xchg   %ax,%ax
 4000560:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 4000563:	29 d0                	sub    %edx,%eax
 4000565:	8b 53 10             	mov    0x10(%ebx),%edx
 4000568:	01 c2                	add    %eax,%edx
 400056a:	89 13                	mov    %edx,(%ebx)
 400056c:	29 c6                	sub    %eax,%esi
 400056e:	89 73 04             	mov    %esi,0x4(%ebx)
 4000571:	8b 7d a0             	mov    -0x60(%ebp),%edi
 4000574:	85 ff                	test   %edi,%edi
 4000576:	74 20                	je     4000598 <fseek+0x374>
 4000578:	8d 43 40             	lea    0x40(%ebx),%eax
 400057b:	39 c7                	cmp    %eax,%edi
 400057d:	74 12                	je     4000591 <fseek+0x36d>
 400057f:	83 ec 08             	sub    $0x8,%esp
 4000582:	57                   	push   %edi
 4000583:	ff 73 54             	pushl  0x54(%ebx)
 4000586:	e8 f9 26 00 00       	call   4002c84 <_free_r>
 400058b:	8b 4b 0c             	mov    0xc(%ebx),%ecx
 400058e:	83 c4 10             	add    $0x10,%esp
 4000591:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 4000598:	83 e1 df             	and    $0xffffffdf,%ecx
 400059b:	66 89 4b 0c          	mov    %cx,0xc(%ebx)
 400059f:	31 f6                	xor    %esi,%esi
 40005a1:	e9 df fc ff ff       	jmp    4000285 <fseek+0x61>
 40005a6:	66 90                	xchg   %ax,%ax
 40005a8:	83 ec 0c             	sub    $0xc,%esp
 40005ab:	53                   	push   %ebx
 40005ac:	e8 af 01 00 00       	call   4000760 <__srefill>
 40005b1:	89 c6                	mov    %eax,%esi
 40005b3:	83 c4 10             	add    $0x10,%esp
 40005b6:	85 c0                	test   %eax,%eax
 40005b8:	0f 85 05 fd ff ff    	jne    40002c3 <fseek+0x9f>
 40005be:	8b 43 04             	mov    0x4(%ebx),%eax
 40005c1:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
 40005c4:	0f 87 f9 fc ff ff    	ja     40002c3 <fseek+0x9f>
 40005ca:	8b 7d a4             	mov    -0x5c(%ebp),%edi
 40005cd:	01 3b                	add    %edi,(%ebx)
 40005cf:	29 f8                	sub    %edi,%eax
 40005d1:	89 43 04             	mov    %eax,0x4(%ebx)
 40005d4:	e9 ac fc ff ff       	jmp    4000285 <fseek+0x61>
 40005d9:	8d 76 00             	lea    0x0(%esi),%esi
 40005dc:	89 4d a0             	mov    %ecx,-0x60(%ebp)
 40005df:	89 55 a4             	mov    %edx,-0x5c(%ebp)
 40005e2:	83 ec 0c             	sub    $0xc,%esp
 40005e5:	53                   	push   %ebx
 40005e6:	e8 5d 00 00 00       	call   4000648 <__smakebuf>
 40005eb:	83 c4 10             	add    $0x10,%esp
 40005ee:	8b 4d a0             	mov    -0x60(%ebp),%ecx
 40005f1:	8b 55 a4             	mov    -0x5c(%ebp),%edx
 40005f4:	e9 a4 fc ff ff       	jmp    400029d <fseek+0x79>
 40005f9:	8d 76 00             	lea    0x0(%esi),%esi
 40005fc:	51                   	push   %ecx
 40005fd:	6a 01                	push   $0x1
 40005ff:	6a 00                	push   $0x0
 4000601:	ff 73 1c             	pushl  0x1c(%ebx)
 4000604:	ff d7                	call   *%edi
 4000606:	83 c4 10             	add    $0x10,%esp
 4000609:	83 f8 ff             	cmp    $0xffffffff,%eax
 400060c:	0f 84 b1 fc ff ff    	je     40002c3 <fseek+0x9f>
 4000612:	8b 4b 0c             	mov    0xc(%ebx),%ecx
 4000615:	e9 c2 fd ff ff       	jmp    40003dc <fseek+0x1b8>
 400061a:	66 90                	xchg   %ax,%ax
 400061c:	8b 73 04             	mov    0x4(%ebx),%esi
 400061f:	8b 4b 0c             	mov    0xc(%ebx),%ecx
 4000622:	8b 03                	mov    (%ebx),%eax
 4000624:	2b 43 10             	sub    0x10(%ebx),%eax
 4000627:	29 c2                	sub    %eax,%edx
 4000629:	01 c6                	add    %eax,%esi
 400062b:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
 4000632:	e9 c9 fd ff ff       	jmp    4000400 <fseek+0x1dc>
 4000637:	c7 06 1d 00 00 00    	movl   $0x1d,(%esi)
 400063d:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4000642:	e9 3e fc ff ff       	jmp    4000285 <fseek+0x61>
 4000647:	90                   	nop

04000648 <__smakebuf>:
 4000648:	55                   	push   %ebp
 4000649:	89 e5                	mov    %esp,%ebp
 400064b:	56                   	push   %esi
 400064c:	53                   	push   %ebx
 400064d:	83 ec 40             	sub    $0x40,%esp
 4000650:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4000653:	8b 43 0c             	mov    0xc(%ebx),%eax
 4000656:	a8 02                	test   $0x2,%al
 4000658:	0f 85 93 00 00 00    	jne    40006f1 <__smakebuf+0xa9>
 400065e:	0f bf 53 0e          	movswl 0xe(%ebx),%edx
 4000662:	66 85 d2             	test   %dx,%dx
 4000665:	78 3c                	js     40006a3 <__smakebuf+0x5b>
 4000667:	50                   	push   %eax
 4000668:	8d 45 bc             	lea    -0x44(%ebp),%eax
 400066b:	50                   	push   %eax
 400066c:	52                   	push   %edx
 400066d:	ff 73 54             	pushl  0x54(%ebx)
 4000670:	e8 df 29 00 00       	call   4003054 <_fstat_r>
 4000675:	83 c4 10             	add    $0x10,%esp
 4000678:	85 c0                	test   %eax,%eax
 400067a:	78 24                	js     40006a0 <__smakebuf+0x58>
 400067c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 400067f:	25 00 f0 00 00       	and    $0xf000,%eax
 4000684:	31 c9                	xor    %ecx,%ecx
 4000686:	3d 00 20 00 00       	cmp    $0x2000,%eax
 400068b:	0f 94 c1             	sete   %cl
 400068e:	89 ce                	mov    %ecx,%esi
 4000690:	3d 00 80 00 00       	cmp    $0x8000,%eax
 4000695:	74 71                	je     4000708 <__smakebuf+0xc0>
 4000697:	66 81 4b 0c 00 08    	orw    $0x800,0xc(%ebx)
 400069d:	eb 0d                	jmp    40006ac <__smakebuf+0x64>
 400069f:	90                   	nop
 40006a0:	8b 43 0c             	mov    0xc(%ebx),%eax
 40006a3:	80 cc 08             	or     $0x8,%ah
 40006a6:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 40006aa:	31 f6                	xor    %esi,%esi
 40006ac:	83 ec 08             	sub    $0x8,%esp
 40006af:	68 00 04 00 00       	push   $0x400
 40006b4:	ff 73 54             	pushl  0x54(%ebx)
 40006b7:	e8 a0 24 00 00       	call   4002b5c <_malloc_r>
 40006bc:	83 c4 10             	add    $0x10,%esp
 40006bf:	85 c0                	test   %eax,%eax
 40006c1:	74 29                	je     40006ec <__smakebuf+0xa4>
 40006c3:	8b 53 54             	mov    0x54(%ebx),%edx
 40006c6:	c7 42 60 64 0d 00 04 	movl   $0x4000d64,0x60(%edx)
 40006cd:	66 81 4b 0c 80 00    	orw    $0x80,0xc(%ebx)
 40006d3:	89 03                	mov    %eax,(%ebx)
 40006d5:	89 43 10             	mov    %eax,0x10(%ebx)
 40006d8:	c7 43 14 00 04 00 00 	movl   $0x400,0x14(%ebx)
 40006df:	85 f6                	test   %esi,%esi
 40006e1:	75 3d                	jne    4000720 <__smakebuf+0xd8>
 40006e3:	8d 65 f8             	lea    -0x8(%ebp),%esp
 40006e6:	5b                   	pop    %ebx
 40006e7:	5e                   	pop    %esi
 40006e8:	5d                   	pop    %ebp
 40006e9:	c3                   	ret    
 40006ea:	66 90                	xchg   %ax,%ax
 40006ec:	66 83 4b 0c 02       	orw    $0x2,0xc(%ebx)
 40006f1:	8d 43 43             	lea    0x43(%ebx),%eax
 40006f4:	89 03                	mov    %eax,(%ebx)
 40006f6:	89 43 10             	mov    %eax,0x10(%ebx)
 40006f9:	c7 43 14 01 00 00 00 	movl   $0x1,0x14(%ebx)
 4000700:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4000703:	5b                   	pop    %ebx
 4000704:	5e                   	pop    %esi
 4000705:	5d                   	pop    %ebp
 4000706:	c3                   	ret    
 4000707:	90                   	nop
 4000708:	81 7b 28 cc 0c 00 04 	cmpl   $0x4000ccc,0x28(%ebx)
 400070f:	75 86                	jne    4000697 <__smakebuf+0x4f>
 4000711:	66 81 4b 0c 00 04    	orw    $0x400,0xc(%ebx)
 4000717:	c7 43 4c 00 04 00 00 	movl   $0x400,0x4c(%ebx)
 400071e:	eb 8c                	jmp    40006ac <__smakebuf+0x64>
 4000720:	83 ec 0c             	sub    $0xc,%esp
 4000723:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 4000727:	50                   	push   %eax
 4000728:	e8 8b 20 00 00       	call   40027b8 <isatty>
 400072d:	83 c4 10             	add    $0x10,%esp
 4000730:	85 c0                	test   %eax,%eax
 4000732:	74 af                	je     40006e3 <__smakebuf+0x9b>
 4000734:	66 83 4b 0c 01       	orw    $0x1,0xc(%ebx)
 4000739:	eb a8                	jmp    40006e3 <__smakebuf+0x9b>
 400073b:	90                   	nop

0400073c <fscanf>:
 400073c:	55                   	push   %ebp
 400073d:	89 e5                	mov    %esp,%ebp
 400073f:	83 ec 0c             	sub    $0xc,%esp
 4000742:	8d 45 10             	lea    0x10(%ebp),%eax
 4000745:	50                   	push   %eax
 4000746:	ff 75 0c             	pushl  0xc(%ebp)
 4000749:	ff 75 08             	pushl  0x8(%ebp)
 400074c:	e8 c7 09 00 00       	call   4001118 <__svfscanf>
 4000751:	c9                   	leave  
 4000752:	c3                   	ret    
 4000753:	90                   	nop

04000754 <lflush>:
 4000754:	55                   	push   %ebp
 4000755:	89 e5                	mov    %esp,%ebp
 4000757:	5d                   	pop    %ebp
 4000758:	e9 43 02 00 00       	jmp    40009a0 <fflush>
 400075d:	66 90                	xchg   %ax,%ax
 400075f:	90                   	nop

04000760 <__srefill>:
 4000760:	55                   	push   %ebp
 4000761:	89 e5                	mov    %esp,%ebp
 4000763:	53                   	push   %ebx
 4000764:	51                   	push   %ecx
 4000765:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4000768:	8b 43 54             	mov    0x54(%ebx),%eax
 400076b:	85 c0                	test   %eax,%eax
 400076d:	0f 84 0d 01 00 00    	je     4000880 <__srefill+0x120>
 4000773:	8b 50 5c             	mov    0x5c(%eax),%edx
 4000776:	85 d2                	test   %edx,%edx
 4000778:	0f 84 9e 00 00 00    	je     400081c <__srefill+0xbc>
 400077e:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 4000785:	8b 43 0c             	mov    0xc(%ebx),%eax
 4000788:	a8 20                	test   $0x20,%al
 400078a:	0f 85 a9 00 00 00    	jne    4000839 <__srefill+0xd9>
 4000790:	a8 04                	test   $0x4,%al
 4000792:	74 70                	je     4000804 <__srefill+0xa4>
 4000794:	8b 43 30             	mov    0x30(%ebx),%eax
 4000797:	85 c0                	test   %eax,%eax
 4000799:	74 2b                	je     40007c6 <__srefill+0x66>
 400079b:	8d 53 40             	lea    0x40(%ebx),%edx
 400079e:	39 d0                	cmp    %edx,%eax
 40007a0:	74 0f                	je     40007b1 <__srefill+0x51>
 40007a2:	83 ec 08             	sub    $0x8,%esp
 40007a5:	50                   	push   %eax
 40007a6:	ff 73 54             	pushl  0x54(%ebx)
 40007a9:	e8 d6 24 00 00       	call   4002c84 <_free_r>
 40007ae:	83 c4 10             	add    $0x10,%esp
 40007b1:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 40007b8:	8b 43 3c             	mov    0x3c(%ebx),%eax
 40007bb:	89 43 04             	mov    %eax,0x4(%ebx)
 40007be:	85 c0                	test   %eax,%eax
 40007c0:	0f 85 ae 00 00 00    	jne    4000874 <__srefill+0x114>
 40007c6:	8b 4b 10             	mov    0x10(%ebx),%ecx
 40007c9:	85 c9                	test   %ecx,%ecx
 40007cb:	0f 84 eb 00 00 00    	je     40008bc <__srefill+0x15c>
 40007d1:	f6 43 0c 03          	testb  $0x3,0xc(%ebx)
 40007d5:	75 6d                	jne    4000844 <__srefill+0xe4>
 40007d7:	8b 43 10             	mov    0x10(%ebx),%eax
 40007da:	89 03                	mov    %eax,(%ebx)
 40007dc:	52                   	push   %edx
 40007dd:	ff 73 14             	pushl  0x14(%ebx)
 40007e0:	50                   	push   %eax
 40007e1:	ff 73 1c             	pushl  0x1c(%ebx)
 40007e4:	ff 53 20             	call   *0x20(%ebx)
 40007e7:	89 43 04             	mov    %eax,0x4(%ebx)
 40007ea:	8b 53 0c             	mov    0xc(%ebx),%edx
 40007ed:	80 e6 df             	and    $0xdf,%dh
 40007f0:	66 89 53 0c          	mov    %dx,0xc(%ebx)
 40007f4:	83 c4 10             	add    $0x10,%esp
 40007f7:	83 f8 00             	cmp    $0x0,%eax
 40007fa:	7e 34                	jle    4000830 <__srefill+0xd0>
 40007fc:	31 c0                	xor    %eax,%eax
 40007fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4000801:	c9                   	leave  
 4000802:	c3                   	ret    
 4000803:	90                   	nop
 4000804:	a8 10                	test   $0x10,%al
 4000806:	74 31                	je     4000839 <__srefill+0xd9>
 4000808:	a8 08                	test   $0x8,%al
 400080a:	0f 85 80 00 00 00    	jne    4000890 <__srefill+0x130>
 4000810:	83 c8 04             	or     $0x4,%eax
 4000813:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 4000817:	eb ad                	jmp    40007c6 <__srefill+0x66>
 4000819:	8d 76 00             	lea    0x0(%esi),%esi
 400081c:	83 ec 0c             	sub    $0xc,%esp
 400081f:	50                   	push   %eax
 4000820:	e8 c7 05 00 00       	call   4000dec <__sinit>
 4000825:	83 c4 10             	add    $0x10,%esp
 4000828:	e9 51 ff ff ff       	jmp    400077e <__srefill+0x1e>
 400082d:	8d 76 00             	lea    0x0(%esi),%esi
 4000830:	75 2a                	jne    400085c <__srefill+0xfc>
 4000832:	83 ca 20             	or     $0x20,%edx
 4000835:	66 89 53 0c          	mov    %dx,0xc(%ebx)
 4000839:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 400083e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4000841:	c9                   	leave  
 4000842:	c3                   	ret    
 4000843:	90                   	nop
 4000844:	83 ec 08             	sub    $0x8,%esp
 4000847:	68 54 07 00 04       	push   $0x4000754
 400084c:	ff 73 54             	pushl  0x54(%ebx)
 400084f:	e8 84 02 00 00       	call   4000ad8 <_fwalk>
 4000854:	83 c4 10             	add    $0x10,%esp
 4000857:	e9 7b ff ff ff       	jmp    40007d7 <__srefill+0x77>
 400085c:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 4000863:	83 ca 40             	or     $0x40,%edx
 4000866:	66 89 53 0c          	mov    %dx,0xc(%ebx)
 400086a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 400086f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4000872:	c9                   	leave  
 4000873:	c3                   	ret    
 4000874:	8b 43 38             	mov    0x38(%ebx),%eax
 4000877:	89 03                	mov    %eax,(%ebx)
 4000879:	31 c0                	xor    %eax,%eax
 400087b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 400087e:	c9                   	leave  
 400087f:	c3                   	ret    
 4000880:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 4000885:	89 43 54             	mov    %eax,0x54(%ebx)
 4000888:	e9 e6 fe ff ff       	jmp    4000773 <__srefill+0x13>
 400088d:	8d 76 00             	lea    0x0(%esi),%esi
 4000890:	83 ec 0c             	sub    $0xc,%esp
 4000893:	53                   	push   %ebx
 4000894:	e8 07 01 00 00       	call   40009a0 <fflush>
 4000899:	83 c4 10             	add    $0x10,%esp
 400089c:	85 c0                	test   %eax,%eax
 400089e:	75 99                	jne    4000839 <__srefill+0xd9>
 40008a0:	8b 43 0c             	mov    0xc(%ebx),%eax
 40008a3:	83 e0 f7             	and    $0xfffffff7,%eax
 40008a6:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 40008ad:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
 40008b4:	e9 57 ff ff ff       	jmp    4000810 <__srefill+0xb0>
 40008b9:	8d 76 00             	lea    0x0(%esi),%esi
 40008bc:	83 ec 0c             	sub    $0xc,%esp
 40008bf:	53                   	push   %ebx
 40008c0:	e8 83 fd ff ff       	call   4000648 <__smakebuf>
 40008c5:	83 c4 10             	add    $0x10,%esp
 40008c8:	e9 04 ff ff ff       	jmp    40007d1 <__srefill+0x71>
 40008cd:	66 90                	xchg   %ax,%ax
 40008cf:	90                   	nop

040008d0 <_fopen_r>:
 40008d0:	55                   	push   %ebp
 40008d1:	89 e5                	mov    %esp,%ebp
 40008d3:	56                   	push   %esi
 40008d4:	53                   	push   %ebx
 40008d5:	83 ec 14             	sub    $0x14,%esp
 40008d8:	8b 5d 08             	mov    0x8(%ebp),%ebx
 40008db:	8d 45 f4             	lea    -0xc(%ebp),%eax
 40008de:	50                   	push   %eax
 40008df:	ff 75 10             	pushl  0x10(%ebp)
 40008e2:	53                   	push   %ebx
 40008e3:	e8 78 01 00 00       	call   4000a60 <__sflags>
 40008e8:	83 c4 10             	add    $0x10,%esp
 40008eb:	85 c0                	test   %eax,%eax
 40008ed:	0f 84 87 00 00 00    	je     400097a <_fopen_r+0xaa>
 40008f3:	89 c6                	mov    %eax,%esi
 40008f5:	83 ec 0c             	sub    $0xc,%esp
 40008f8:	53                   	push   %ebx
 40008f9:	e8 9a 06 00 00       	call   4000f98 <__sfp>
 40008fe:	89 c3                	mov    %eax,%ebx
 4000900:	83 c4 10             	add    $0x10,%esp
 4000903:	85 c0                	test   %eax,%eax
 4000905:	74 73                	je     400097a <_fopen_r+0xaa>
 4000907:	68 b6 01 00 00       	push   $0x1b6
 400090c:	ff 75 f4             	pushl  -0xc(%ebp)
 400090f:	ff 75 0c             	pushl  0xc(%ebp)
 4000912:	ff 70 54             	pushl  0x54(%eax)
 4000915:	e8 96 27 00 00       	call   40030b0 <_open_r>
 400091a:	83 c4 10             	add    $0x10,%esp
 400091d:	85 c0                	test   %eax,%eax
 400091f:	78 53                	js     4000974 <_fopen_r+0xa4>
 4000921:	66 89 43 0e          	mov    %ax,0xe(%ebx)
 4000925:	66 89 73 0c          	mov    %si,0xc(%ebx)
 4000929:	89 5b 1c             	mov    %ebx,0x1c(%ebx)
 400092c:	c7 43 20 4c 0c 00 04 	movl   $0x4000c4c,0x20(%ebx)
 4000933:	c7 43 24 84 0c 00 04 	movl   $0x4000c84,0x24(%ebx)
 400093a:	c7 43 28 cc 0c 00 04 	movl   $0x4000ccc,0x28(%ebx)
 4000941:	c7 43 2c 0c 0d 00 04 	movl   $0x4000d0c,0x2c(%ebx)
 4000948:	81 e6 00 01 00 00    	and    $0x100,%esi
 400094e:	75 0c                	jne    400095c <_fopen_r+0x8c>
 4000950:	89 d8                	mov    %ebx,%eax
 4000952:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4000955:	5b                   	pop    %ebx
 4000956:	5e                   	pop    %esi
 4000957:	5d                   	pop    %ebp
 4000958:	c3                   	ret    
 4000959:	8d 76 00             	lea    0x0(%esi),%esi
 400095c:	50                   	push   %eax
 400095d:	6a 00                	push   $0x0
 400095f:	6a 02                	push   $0x2
 4000961:	53                   	push   %ebx
 4000962:	e8 bd f8 ff ff       	call   4000224 <fseek>
 4000967:	83 c4 10             	add    $0x10,%esp
 400096a:	89 d8                	mov    %ebx,%eax
 400096c:	8d 65 f8             	lea    -0x8(%ebp),%esp
 400096f:	5b                   	pop    %ebx
 4000970:	5e                   	pop    %esi
 4000971:	5d                   	pop    %ebp
 4000972:	c3                   	ret    
 4000973:	90                   	nop
 4000974:	66 c7 43 0c 00 00    	movw   $0x0,0xc(%ebx)
 400097a:	31 c0                	xor    %eax,%eax
 400097c:	8d 65 f8             	lea    -0x8(%ebp),%esp
 400097f:	5b                   	pop    %ebx
 4000980:	5e                   	pop    %esi
 4000981:	5d                   	pop    %ebp
 4000982:	c3                   	ret    
 4000983:	90                   	nop

04000984 <fopen>:
 4000984:	55                   	push   %ebp
 4000985:	89 e5                	mov    %esp,%ebp
 4000987:	83 ec 0c             	sub    $0xc,%esp
 400098a:	ff 75 0c             	pushl  0xc(%ebp)
 400098d:	ff 75 08             	pushl  0x8(%ebp)
 4000990:	ff 35 00 6c 00 04    	pushl  0x4006c00
 4000996:	e8 35 ff ff ff       	call   40008d0 <_fopen_r>
 400099b:	c9                   	leave  
 400099c:	c3                   	ret    
 400099d:	66 90                	xchg   %ax,%ax
 400099f:	90                   	nop

040009a0 <fflush>:
 40009a0:	55                   	push   %ebp
 40009a1:	89 e5                	mov    %esp,%ebp
 40009a3:	57                   	push   %edi
 40009a4:	56                   	push   %esi
 40009a5:	53                   	push   %ebx
 40009a6:	83 ec 0c             	sub    $0xc,%esp
 40009a9:	8b 7d 08             	mov    0x8(%ebp),%edi
 40009ac:	85 ff                	test   %edi,%edi
 40009ae:	0f 84 91 00 00 00    	je     4000a45 <fflush+0xa5>
 40009b4:	8b 47 54             	mov    0x54(%edi),%eax
 40009b7:	85 c0                	test   %eax,%eax
 40009b9:	74 7d                	je     4000a38 <fflush+0x98>
 40009bb:	8b 50 5c             	mov    0x5c(%eax),%edx
 40009be:	85 d2                	test   %edx,%edx
 40009c0:	74 66                	je     4000a28 <fflush+0x88>
 40009c2:	8b 47 0c             	mov    0xc(%edi),%eax
 40009c5:	a8 08                	test   $0x8,%al
 40009c7:	74 4b                	je     4000a14 <fflush+0x74>
 40009c9:	8b 77 10             	mov    0x10(%edi),%esi
 40009cc:	85 f6                	test   %esi,%esi
 40009ce:	74 44                	je     4000a14 <fflush+0x74>
 40009d0:	8b 1f                	mov    (%edi),%ebx
 40009d2:	29 f3                	sub    %esi,%ebx
 40009d4:	89 37                	mov    %esi,(%edi)
 40009d6:	a8 03                	test   $0x3,%al
 40009d8:	74 46                	je     4000a20 <fflush+0x80>
 40009da:	31 c0                	xor    %eax,%eax
 40009dc:	89 47 08             	mov    %eax,0x8(%edi)
 40009df:	85 db                	test   %ebx,%ebx
 40009e1:	7f 0d                	jg     40009f0 <fflush+0x50>
 40009e3:	eb 2f                	jmp    4000a14 <fflush+0x74>
 40009e5:	8d 76 00             	lea    0x0(%esi),%esi
 40009e8:	01 c6                	add    %eax,%esi
 40009ea:	29 c3                	sub    %eax,%ebx
 40009ec:	85 db                	test   %ebx,%ebx
 40009ee:	7e 24                	jle    4000a14 <fflush+0x74>
 40009f0:	50                   	push   %eax
 40009f1:	53                   	push   %ebx
 40009f2:	56                   	push   %esi
 40009f3:	ff 77 1c             	pushl  0x1c(%edi)
 40009f6:	ff 57 24             	call   *0x24(%edi)
 40009f9:	83 c4 10             	add    $0x10,%esp
 40009fc:	85 c0                	test   %eax,%eax
 40009fe:	7f e8                	jg     40009e8 <fflush+0x48>
 4000a00:	66 83 4f 0c 40       	orw    $0x40,0xc(%edi)
 4000a05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4000a0a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4000a0d:	5b                   	pop    %ebx
 4000a0e:	5e                   	pop    %esi
 4000a0f:	5f                   	pop    %edi
 4000a10:	5d                   	pop    %ebp
 4000a11:	c3                   	ret    
 4000a12:	66 90                	xchg   %ax,%ax
 4000a14:	31 c0                	xor    %eax,%eax
 4000a16:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4000a19:	5b                   	pop    %ebx
 4000a1a:	5e                   	pop    %esi
 4000a1b:	5f                   	pop    %edi
 4000a1c:	5d                   	pop    %ebp
 4000a1d:	c3                   	ret    
 4000a1e:	66 90                	xchg   %ax,%ax
 4000a20:	8b 47 14             	mov    0x14(%edi),%eax
 4000a23:	eb b7                	jmp    40009dc <fflush+0x3c>
 4000a25:	8d 76 00             	lea    0x0(%esi),%esi
 4000a28:	83 ec 0c             	sub    $0xc,%esp
 4000a2b:	50                   	push   %eax
 4000a2c:	e8 bb 03 00 00       	call   4000dec <__sinit>
 4000a31:	83 c4 10             	add    $0x10,%esp
 4000a34:	eb 8c                	jmp    40009c2 <fflush+0x22>
 4000a36:	66 90                	xchg   %ax,%ax
 4000a38:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 4000a3d:	89 47 54             	mov    %eax,0x54(%edi)
 4000a40:	e9 76 ff ff ff       	jmp    40009bb <fflush+0x1b>
 4000a45:	83 ec 08             	sub    $0x8,%esp
 4000a48:	68 a0 09 00 04       	push   $0x40009a0
 4000a4d:	ff 35 00 6c 00 04    	pushl  0x4006c00
 4000a53:	e8 80 00 00 00       	call   4000ad8 <_fwalk>
 4000a58:	83 c4 10             	add    $0x10,%esp
 4000a5b:	eb b9                	jmp    4000a16 <fflush+0x76>
 4000a5d:	66 90                	xchg   %ax,%ax
 4000a5f:	90                   	nop

04000a60 <__sflags>:
 4000a60:	55                   	push   %ebp
 4000a61:	89 e5                	mov    %esp,%ebp
 4000a63:	53                   	push   %ebx
 4000a64:	8b 55 0c             	mov    0xc(%ebp),%edx
 4000a67:	8a 02                	mov    (%edx),%al
 4000a69:	3c 72                	cmp    $0x72,%al
 4000a6b:	74 5f                	je     4000acc <__sflags+0x6c>
 4000a6d:	3c 77                	cmp    $0x77,%al
 4000a6f:	74 47                	je     4000ab8 <__sflags+0x58>
 4000a71:	3c 61                	cmp    $0x61,%al
 4000a73:	74 0f                	je     4000a84 <__sflags+0x24>
 4000a75:	8b 45 08             	mov    0x8(%ebp),%eax
 4000a78:	c7 00 16 00 00 00    	movl   $0x16,(%eax)
 4000a7e:	31 c0                	xor    %eax,%eax
 4000a80:	5b                   	pop    %ebx
 4000a81:	5d                   	pop    %ebp
 4000a82:	c3                   	ret    
 4000a83:	90                   	nop
 4000a84:	b9 08 02 00 00       	mov    $0x208,%ecx
 4000a89:	bb 01 00 00 00       	mov    $0x1,%ebx
 4000a8e:	b8 08 01 00 00       	mov    $0x108,%eax
 4000a93:	80 7a 01 2b          	cmpb   $0x2b,0x1(%edx)
 4000a97:	74 13                	je     4000aac <__sflags+0x4c>
 4000a99:	80 7a 02 2b          	cmpb   $0x2b,0x2(%edx)
 4000a9d:	74 0d                	je     4000aac <__sflags+0x4c>
 4000a9f:	09 cb                	or     %ecx,%ebx
 4000aa1:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4000aa4:	89 19                	mov    %ebx,(%ecx)
 4000aa6:	5b                   	pop    %ebx
 4000aa7:	5d                   	pop    %ebp
 4000aa8:	c3                   	ret    
 4000aa9:	8d 76 00             	lea    0x0(%esi),%esi
 4000aac:	83 c8 10             	or     $0x10,%eax
 4000aaf:	bb 02 00 00 00       	mov    $0x2,%ebx
 4000ab4:	eb e9                	jmp    4000a9f <__sflags+0x3f>
 4000ab6:	66 90                	xchg   %ax,%ax
 4000ab8:	b9 00 06 00 00       	mov    $0x600,%ecx
 4000abd:	bb 01 00 00 00       	mov    $0x1,%ebx
 4000ac2:	b8 08 00 00 00       	mov    $0x8,%eax
 4000ac7:	eb ca                	jmp    4000a93 <__sflags+0x33>
 4000ac9:	8d 76 00             	lea    0x0(%esi),%esi
 4000acc:	31 c9                	xor    %ecx,%ecx
 4000ace:	31 db                	xor    %ebx,%ebx
 4000ad0:	b8 04 00 00 00       	mov    $0x4,%eax
 4000ad5:	eb bc                	jmp    4000a93 <__sflags+0x33>
 4000ad7:	90                   	nop

04000ad8 <_fwalk>:
 4000ad8:	55                   	push   %ebp
 4000ad9:	89 e5                	mov    %esp,%ebp
 4000adb:	57                   	push   %edi
 4000adc:	56                   	push   %esi
 4000add:	53                   	push   %ebx
 4000ade:	83 ec 1c             	sub    $0x1c,%esp
 4000ae1:	8b 7d 08             	mov    0x8(%ebp),%edi
 4000ae4:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 4000aeb:	81 c7 fc 01 00 00    	add    $0x1fc,%edi
 4000af1:	74 39                	je     4000b2c <_fwalk+0x54>
 4000af3:	90                   	nop
 4000af4:	8b 77 08             	mov    0x8(%edi),%esi
 4000af7:	8b 5f 04             	mov    0x4(%edi),%ebx
 4000afa:	4b                   	dec    %ebx
 4000afb:	79 0c                	jns    4000b09 <_fwalk+0x31>
 4000afd:	eb 27                	jmp    4000b26 <_fwalk+0x4e>
 4000aff:	90                   	nop
 4000b00:	83 c6 58             	add    $0x58,%esi
 4000b03:	4b                   	dec    %ebx
 4000b04:	83 fb ff             	cmp    $0xffffffff,%ebx
 4000b07:	74 1d                	je     4000b26 <_fwalk+0x4e>
 4000b09:	66 83 7e 0c 00       	cmpw   $0x0,0xc(%esi)
 4000b0e:	74 f0                	je     4000b00 <_fwalk+0x28>
 4000b10:	83 ec 0c             	sub    $0xc,%esp
 4000b13:	56                   	push   %esi
 4000b14:	ff 55 0c             	call   *0xc(%ebp)
 4000b17:	09 45 e4             	or     %eax,-0x1c(%ebp)
 4000b1a:	83 c4 10             	add    $0x10,%esp
 4000b1d:	83 c6 58             	add    $0x58,%esi
 4000b20:	4b                   	dec    %ebx
 4000b21:	83 fb ff             	cmp    $0xffffffff,%ebx
 4000b24:	75 e3                	jne    4000b09 <_fwalk+0x31>
 4000b26:	8b 3f                	mov    (%edi),%edi
 4000b28:	85 ff                	test   %edi,%edi
 4000b2a:	75 c8                	jne    4000af4 <_fwalk+0x1c>
 4000b2c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4000b2f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4000b32:	5b                   	pop    %ebx
 4000b33:	5e                   	pop    %esi
 4000b34:	5f                   	pop    %edi
 4000b35:	5d                   	pop    %ebp
 4000b36:	c3                   	ret    
 4000b37:	90                   	nop

04000b38 <fclose>:
 4000b38:	55                   	push   %ebp
 4000b39:	89 e5                	mov    %esp,%ebp
 4000b3b:	56                   	push   %esi
 4000b3c:	53                   	push   %ebx
 4000b3d:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4000b40:	85 db                	test   %ebx,%ebx
 4000b42:	0f 84 9c 00 00 00    	je     4000be4 <fclose+0xac>
 4000b48:	8b 43 54             	mov    0x54(%ebx),%eax
 4000b4b:	85 c0                	test   %eax,%eax
 4000b4d:	0f 84 dd 00 00 00    	je     4000c30 <fclose+0xf8>
 4000b53:	8b 50 5c             	mov    0x5c(%eax),%edx
 4000b56:	85 d2                	test   %edx,%edx
 4000b58:	0f 84 92 00 00 00    	je     4000bf0 <fclose+0xb8>
 4000b5e:	8b 43 0c             	mov    0xc(%ebx),%eax
 4000b61:	66 85 c0             	test   %ax,%ax
 4000b64:	74 7e                	je     4000be4 <fclose+0xac>
 4000b66:	a8 08                	test   $0x8,%al
 4000b68:	0f 85 96 00 00 00    	jne    4000c04 <fclose+0xcc>
 4000b6e:	31 f6                	xor    %esi,%esi
 4000b70:	8b 43 2c             	mov    0x2c(%ebx),%eax
 4000b73:	85 c0                	test   %eax,%eax
 4000b75:	74 13                	je     4000b8a <fclose+0x52>
 4000b77:	83 ec 0c             	sub    $0xc,%esp
 4000b7a:	ff 73 1c             	pushl  0x1c(%ebx)
 4000b7d:	ff d0                	call   *%eax
 4000b7f:	83 c4 10             	add    $0x10,%esp
 4000b82:	85 c0                	test   %eax,%eax
 4000b84:	0f 88 b6 00 00 00    	js     4000c40 <fclose+0x108>
 4000b8a:	f6 43 0c 80          	testb  $0x80,0xc(%ebx)
 4000b8e:	0f 85 84 00 00 00    	jne    4000c18 <fclose+0xe0>
 4000b94:	8b 43 30             	mov    0x30(%ebx),%eax
 4000b97:	85 c0                	test   %eax,%eax
 4000b99:	74 1d                	je     4000bb8 <fclose+0x80>
 4000b9b:	8d 53 40             	lea    0x40(%ebx),%edx
 4000b9e:	39 d0                	cmp    %edx,%eax
 4000ba0:	74 0f                	je     4000bb1 <fclose+0x79>
 4000ba2:	83 ec 08             	sub    $0x8,%esp
 4000ba5:	50                   	push   %eax
 4000ba6:	ff 73 54             	pushl  0x54(%ebx)
 4000ba9:	e8 d6 20 00 00       	call   4002c84 <_free_r>
 4000bae:	83 c4 10             	add    $0x10,%esp
 4000bb1:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 4000bb8:	8b 43 44             	mov    0x44(%ebx),%eax
 4000bbb:	85 c0                	test   %eax,%eax
 4000bbd:	74 16                	je     4000bd5 <fclose+0x9d>
 4000bbf:	83 ec 08             	sub    $0x8,%esp
 4000bc2:	50                   	push   %eax
 4000bc3:	ff 73 54             	pushl  0x54(%ebx)
 4000bc6:	e8 b9 20 00 00       	call   4002c84 <_free_r>
 4000bcb:	c7 43 44 00 00 00 00 	movl   $0x0,0x44(%ebx)
 4000bd2:	83 c4 10             	add    $0x10,%esp
 4000bd5:	66 c7 43 0c 00 00    	movw   $0x0,0xc(%ebx)
 4000bdb:	89 f0                	mov    %esi,%eax
 4000bdd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4000be0:	5b                   	pop    %ebx
 4000be1:	5e                   	pop    %esi
 4000be2:	5d                   	pop    %ebp
 4000be3:	c3                   	ret    
 4000be4:	31 c0                	xor    %eax,%eax
 4000be6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4000be9:	5b                   	pop    %ebx
 4000bea:	5e                   	pop    %esi
 4000beb:	5d                   	pop    %ebp
 4000bec:	c3                   	ret    
 4000bed:	8d 76 00             	lea    0x0(%esi),%esi
 4000bf0:	83 ec 0c             	sub    $0xc,%esp
 4000bf3:	50                   	push   %eax
 4000bf4:	e8 f3 01 00 00       	call   4000dec <__sinit>
 4000bf9:	83 c4 10             	add    $0x10,%esp
 4000bfc:	e9 5d ff ff ff       	jmp    4000b5e <fclose+0x26>
 4000c01:	8d 76 00             	lea    0x0(%esi),%esi
 4000c04:	83 ec 0c             	sub    $0xc,%esp
 4000c07:	53                   	push   %ebx
 4000c08:	e8 93 fd ff ff       	call   40009a0 <fflush>
 4000c0d:	89 c6                	mov    %eax,%esi
 4000c0f:	83 c4 10             	add    $0x10,%esp
 4000c12:	e9 59 ff ff ff       	jmp    4000b70 <fclose+0x38>
 4000c17:	90                   	nop
 4000c18:	83 ec 08             	sub    $0x8,%esp
 4000c1b:	ff 73 10             	pushl  0x10(%ebx)
 4000c1e:	ff 73 54             	pushl  0x54(%ebx)
 4000c21:	e8 5e 20 00 00       	call   4002c84 <_free_r>
 4000c26:	83 c4 10             	add    $0x10,%esp
 4000c29:	e9 66 ff ff ff       	jmp    4000b94 <fclose+0x5c>
 4000c2e:	66 90                	xchg   %ax,%ax
 4000c30:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 4000c35:	89 43 54             	mov    %eax,0x54(%ebx)
 4000c38:	e9 16 ff ff ff       	jmp    4000b53 <fclose+0x1b>
 4000c3d:	8d 76 00             	lea    0x0(%esi),%esi
 4000c40:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4000c45:	e9 40 ff ff ff       	jmp    4000b8a <fclose+0x52>
 4000c4a:	66 90                	xchg   %ax,%ax

04000c4c <__sread>:
 4000c4c:	55                   	push   %ebp
 4000c4d:	89 e5                	mov    %esp,%ebp
 4000c4f:	53                   	push   %ebx
 4000c50:	50                   	push   %eax
 4000c51:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4000c54:	ff 75 10             	pushl  0x10(%ebp)
 4000c57:	ff 75 0c             	pushl  0xc(%ebp)
 4000c5a:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 4000c5e:	50                   	push   %eax
 4000c5f:	ff 73 54             	pushl  0x54(%ebx)
 4000c62:	e8 dd 24 00 00       	call   4003144 <_read_r>
 4000c67:	83 c4 10             	add    $0x10,%esp
 4000c6a:	85 c0                	test   %eax,%eax
 4000c6c:	78 0a                	js     4000c78 <__sread+0x2c>
 4000c6e:	01 43 50             	add    %eax,0x50(%ebx)
 4000c71:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4000c74:	c9                   	leave  
 4000c75:	c3                   	ret    
 4000c76:	66 90                	xchg   %ax,%ax
 4000c78:	66 81 63 0c ff ef    	andw   $0xefff,0xc(%ebx)
 4000c7e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4000c81:	c9                   	leave  
 4000c82:	c3                   	ret    
 4000c83:	90                   	nop

04000c84 <__swrite>:
 4000c84:	55                   	push   %ebp
 4000c85:	89 e5                	mov    %esp,%ebp
 4000c87:	53                   	push   %ebx
 4000c88:	50                   	push   %eax
 4000c89:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4000c8c:	8b 43 0c             	mov    0xc(%ebx),%eax
 4000c8f:	f6 c4 01             	test   $0x1,%ah
 4000c92:	74 17                	je     4000cab <__swrite+0x27>
 4000c94:	6a 02                	push   $0x2
 4000c96:	6a 00                	push   $0x0
 4000c98:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 4000c9c:	50                   	push   %eax
 4000c9d:	ff 73 54             	pushl  0x54(%ebx)
 4000ca0:	e8 6b 24 00 00       	call   4003110 <_lseek_r>
 4000ca5:	8b 43 0c             	mov    0xc(%ebx),%eax
 4000ca8:	83 c4 10             	add    $0x10,%esp
 4000cab:	80 e4 ef             	and    $0xef,%ah
 4000cae:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 4000cb2:	ff 75 10             	pushl  0x10(%ebp)
 4000cb5:	ff 75 0c             	pushl  0xc(%ebp)
 4000cb8:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 4000cbc:	50                   	push   %eax
 4000cbd:	ff 73 54             	pushl  0x54(%ebx)
 4000cc0:	e8 b3 24 00 00       	call   4003178 <_write_r>
 4000cc5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4000cc8:	c9                   	leave  
 4000cc9:	c3                   	ret    
 4000cca:	66 90                	xchg   %ax,%ax

04000ccc <__sseek>:
 4000ccc:	55                   	push   %ebp
 4000ccd:	89 e5                	mov    %esp,%ebp
 4000ccf:	53                   	push   %ebx
 4000cd0:	50                   	push   %eax
 4000cd1:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4000cd4:	ff 75 10             	pushl  0x10(%ebp)
 4000cd7:	ff 75 0c             	pushl  0xc(%ebp)
 4000cda:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 4000cde:	50                   	push   %eax
 4000cdf:	ff 73 54             	pushl  0x54(%ebx)
 4000ce2:	e8 29 24 00 00       	call   4003110 <_lseek_r>
 4000ce7:	83 c4 10             	add    $0x10,%esp
 4000cea:	83 f8 ff             	cmp    $0xffffffff,%eax
 4000ced:	74 11                	je     4000d00 <__sseek+0x34>
 4000cef:	66 81 4b 0c 00 10    	orw    $0x1000,0xc(%ebx)
 4000cf5:	89 43 50             	mov    %eax,0x50(%ebx)
 4000cf8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4000cfb:	c9                   	leave  
 4000cfc:	c3                   	ret    
 4000cfd:	8d 76 00             	lea    0x0(%esi),%esi
 4000d00:	66 81 63 0c ff ef    	andw   $0xefff,0xc(%ebx)
 4000d06:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4000d09:	c9                   	leave  
 4000d0a:	c3                   	ret    
 4000d0b:	90                   	nop

04000d0c <__sclose>:
 4000d0c:	55                   	push   %ebp
 4000d0d:	89 e5                	mov    %esp,%ebp
 4000d0f:	83 ec 10             	sub    $0x10,%esp
 4000d12:	8b 45 08             	mov    0x8(%ebp),%eax
 4000d15:	0f bf 50 0e          	movswl 0xe(%eax),%edx
 4000d19:	52                   	push   %edx
 4000d1a:	ff 70 54             	pushl  0x54(%eax)
 4000d1d:	e8 c2 23 00 00       	call   40030e4 <_close_r>
 4000d22:	c9                   	leave  
 4000d23:	c3                   	ret    

04000d24 <_printf_r>:
 4000d24:	55                   	push   %ebp
 4000d25:	89 e5                	mov    %esp,%ebp
 4000d27:	83 ec 08             	sub    $0x8,%esp
 4000d2a:	8b 45 08             	mov    0x8(%ebp),%eax
 4000d2d:	8d 55 10             	lea    0x10(%ebp),%edx
 4000d30:	52                   	push   %edx
 4000d31:	ff 75 0c             	pushl  0xc(%ebp)
 4000d34:	ff 70 08             	pushl  0x8(%eax)
 4000d37:	50                   	push   %eax
 4000d38:	e8 3b 12 00 00       	call   4001f78 <_vfprintf_r>
 4000d3d:	c9                   	leave  
 4000d3e:	c3                   	ret    
 4000d3f:	90                   	nop

04000d40 <printf>:
 4000d40:	55                   	push   %ebp
 4000d41:	89 e5                	mov    %esp,%ebp
 4000d43:	83 ec 0c             	sub    $0xc,%esp
 4000d46:	8d 4d 0c             	lea    0xc(%ebp),%ecx
 4000d49:	8b 15 00 6c 00 04    	mov    0x4006c00,%edx
 4000d4f:	8b 42 08             	mov    0x8(%edx),%eax
 4000d52:	89 50 54             	mov    %edx,0x54(%eax)
 4000d55:	51                   	push   %ecx
 4000d56:	ff 75 08             	pushl  0x8(%ebp)
 4000d59:	50                   	push   %eax
 4000d5a:	e8 99 19 00 00       	call   40026f8 <vfprintf>
 4000d5f:	c9                   	leave  
 4000d60:	c3                   	ret    
 4000d61:	66 90                	xchg   %ax,%ax
 4000d63:	90                   	nop

04000d64 <_cleanup_r>:
 4000d64:	55                   	push   %ebp
 4000d65:	89 e5                	mov    %esp,%ebp
 4000d67:	83 ec 10             	sub    $0x10,%esp
 4000d6a:	68 a0 09 00 04       	push   $0x40009a0
 4000d6f:	ff 75 08             	pushl  0x8(%ebp)
 4000d72:	e8 61 fd ff ff       	call   4000ad8 <_fwalk>
 4000d77:	83 c4 10             	add    $0x10,%esp
 4000d7a:	c9                   	leave  
 4000d7b:	c3                   	ret    

04000d7c <__sfmoreglue>:
 4000d7c:	55                   	push   %ebp
 4000d7d:	89 e5                	mov    %esp,%ebp
 4000d7f:	57                   	push   %edi
 4000d80:	56                   	push   %esi
 4000d81:	53                   	push   %ebx
 4000d82:	83 ec 14             	sub    $0x14,%esp
 4000d85:	8b 75 0c             	mov    0xc(%ebp),%esi
 4000d88:	8d 04 b6             	lea    (%esi,%esi,4),%eax
 4000d8b:	01 c0                	add    %eax,%eax
 4000d8d:	8d 1c 30             	lea    (%eax,%esi,1),%ebx
 4000d90:	c1 e3 03             	shl    $0x3,%ebx
 4000d93:	8d 43 0c             	lea    0xc(%ebx),%eax
 4000d96:	50                   	push   %eax
 4000d97:	ff 75 08             	pushl  0x8(%ebp)
 4000d9a:	e8 bd 1d 00 00       	call   4002b5c <_malloc_r>
 4000d9f:	89 c7                	mov    %eax,%edi
 4000da1:	83 c4 10             	add    $0x10,%esp
 4000da4:	85 c0                	test   %eax,%eax
 4000da6:	74 1c                	je     4000dc4 <__sfmoreglue+0x48>
 4000da8:	8d 40 0c             	lea    0xc(%eax),%eax
 4000dab:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
 4000db1:	89 77 04             	mov    %esi,0x4(%edi)
 4000db4:	89 47 08             	mov    %eax,0x8(%edi)
 4000db7:	52                   	push   %edx
 4000db8:	53                   	push   %ebx
 4000db9:	6a 00                	push   $0x0
 4000dbb:	50                   	push   %eax
 4000dbc:	e8 c7 20 00 00       	call   4002e88 <memset>
 4000dc1:	83 c4 10             	add    $0x10,%esp
 4000dc4:	89 f8                	mov    %edi,%eax
 4000dc6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4000dc9:	5b                   	pop    %ebx
 4000dca:	5e                   	pop    %esi
 4000dcb:	5f                   	pop    %edi
 4000dcc:	5d                   	pop    %ebp
 4000dcd:	c3                   	ret    
 4000dce:	66 90                	xchg   %ax,%ax

04000dd0 <_cleanup>:
 4000dd0:	55                   	push   %ebp
 4000dd1:	89 e5                	mov    %esp,%ebp
 4000dd3:	83 ec 10             	sub    $0x10,%esp
 4000dd6:	68 a0 09 00 04       	push   $0x40009a0
 4000ddb:	ff 35 00 6c 00 04    	pushl  0x4006c00
 4000de1:	e8 f2 fc ff ff       	call   4000ad8 <_fwalk>
 4000de6:	83 c4 10             	add    $0x10,%esp
 4000de9:	c9                   	leave  
 4000dea:	c3                   	ret    
 4000deb:	90                   	nop

04000dec <__sinit>:
 4000dec:	55                   	push   %ebp
 4000ded:	89 e5                	mov    %esp,%ebp
 4000def:	8b 45 08             	mov    0x8(%ebp),%eax
 4000df2:	c7 40 60 64 0d 00 04 	movl   $0x4000d64,0x60(%eax)
 4000df9:	c7 40 5c 01 00 00 00 	movl   $0x1,0x5c(%eax)
 4000e00:	8d 90 08 02 00 00    	lea    0x208(%eax),%edx
 4000e06:	c7 80 08 02 00 00 00 	movl   $0x0,0x208(%eax)
 4000e0d:	00 00 00 
 4000e10:	c7 80 0c 02 00 00 00 	movl   $0x0,0x20c(%eax)
 4000e17:	00 00 00 
 4000e1a:	c7 80 10 02 00 00 00 	movl   $0x0,0x210(%eax)
 4000e21:	00 00 00 
 4000e24:	66 c7 80 14 02 00 00 	movw   $0x4,0x214(%eax)
 4000e2b:	04 00 
 4000e2d:	66 c7 80 16 02 00 00 	movw   $0x0,0x216(%eax)
 4000e34:	00 00 
 4000e36:	c7 80 18 02 00 00 00 	movl   $0x0,0x218(%eax)
 4000e3d:	00 00 00 
 4000e40:	c7 80 20 02 00 00 00 	movl   $0x0,0x220(%eax)
 4000e47:	00 00 00 
 4000e4a:	89 90 24 02 00 00    	mov    %edx,0x224(%eax)
 4000e50:	c7 80 28 02 00 00 4c 	movl   $0x4000c4c,0x228(%eax)
 4000e57:	0c 00 04 
 4000e5a:	c7 80 2c 02 00 00 84 	movl   $0x4000c84,0x22c(%eax)
 4000e61:	0c 00 04 
 4000e64:	c7 80 30 02 00 00 cc 	movl   $0x4000ccc,0x230(%eax)
 4000e6b:	0c 00 04 
 4000e6e:	c7 80 34 02 00 00 0c 	movl   $0x4000d0c,0x234(%eax)
 4000e75:	0d 00 04 
 4000e78:	89 80 5c 02 00 00    	mov    %eax,0x25c(%eax)
 4000e7e:	c7 80 60 02 00 00 00 	movl   $0x0,0x260(%eax)
 4000e85:	00 00 00 
 4000e88:	c7 80 64 02 00 00 00 	movl   $0x0,0x264(%eax)
 4000e8f:	00 00 00 
 4000e92:	c7 80 68 02 00 00 00 	movl   $0x0,0x268(%eax)
 4000e99:	00 00 00 
 4000e9c:	66 c7 80 6c 02 00 00 	movw   $0x9,0x26c(%eax)
 4000ea3:	09 00 
 4000ea5:	66 c7 80 6e 02 00 00 	movw   $0x1,0x26e(%eax)
 4000eac:	01 00 
 4000eae:	c7 80 70 02 00 00 00 	movl   $0x0,0x270(%eax)
 4000eb5:	00 00 00 
 4000eb8:	c7 80 78 02 00 00 00 	movl   $0x0,0x278(%eax)
 4000ebf:	00 00 00 
 4000ec2:	8d 88 60 02 00 00    	lea    0x260(%eax),%ecx
 4000ec8:	89 88 7c 02 00 00    	mov    %ecx,0x27c(%eax)
 4000ece:	c7 80 80 02 00 00 4c 	movl   $0x4000c4c,0x280(%eax)
 4000ed5:	0c 00 04 
 4000ed8:	c7 80 84 02 00 00 84 	movl   $0x4000c84,0x284(%eax)
 4000edf:	0c 00 04 
 4000ee2:	c7 80 88 02 00 00 cc 	movl   $0x4000ccc,0x288(%eax)
 4000ee9:	0c 00 04 
 4000eec:	c7 80 8c 02 00 00 0c 	movl   $0x4000d0c,0x28c(%eax)
 4000ef3:	0d 00 04 
 4000ef6:	89 80 b4 02 00 00    	mov    %eax,0x2b4(%eax)
 4000efc:	c7 80 b8 02 00 00 00 	movl   $0x0,0x2b8(%eax)
 4000f03:	00 00 00 
 4000f06:	c7 80 bc 02 00 00 00 	movl   $0x0,0x2bc(%eax)
 4000f0d:	00 00 00 
 4000f10:	c7 80 c0 02 00 00 00 	movl   $0x0,0x2c0(%eax)
 4000f17:	00 00 00 
 4000f1a:	66 c7 80 c4 02 00 00 	movw   $0xa,0x2c4(%eax)
 4000f21:	0a 00 
 4000f23:	66 c7 80 c6 02 00 00 	movw   $0x2,0x2c6(%eax)
 4000f2a:	02 00 
 4000f2c:	c7 80 c8 02 00 00 00 	movl   $0x0,0x2c8(%eax)
 4000f33:	00 00 00 
 4000f36:	c7 80 d0 02 00 00 00 	movl   $0x0,0x2d0(%eax)
 4000f3d:	00 00 00 
 4000f40:	8d 88 b8 02 00 00    	lea    0x2b8(%eax),%ecx
 4000f46:	89 88 d4 02 00 00    	mov    %ecx,0x2d4(%eax)
 4000f4c:	c7 80 d8 02 00 00 4c 	movl   $0x4000c4c,0x2d8(%eax)
 4000f53:	0c 00 04 
 4000f56:	c7 80 dc 02 00 00 84 	movl   $0x4000c84,0x2dc(%eax)
 4000f5d:	0c 00 04 
 4000f60:	c7 80 e0 02 00 00 cc 	movl   $0x4000ccc,0x2e0(%eax)
 4000f67:	0c 00 04 
 4000f6a:	c7 80 e4 02 00 00 0c 	movl   $0x4000d0c,0x2e4(%eax)
 4000f71:	0d 00 04 
 4000f74:	89 80 0c 03 00 00    	mov    %eax,0x30c(%eax)
 4000f7a:	c7 80 fc 01 00 00 00 	movl   $0x0,0x1fc(%eax)
 4000f81:	00 00 00 
 4000f84:	c7 80 00 02 00 00 03 	movl   $0x3,0x200(%eax)
 4000f8b:	00 00 00 
 4000f8e:	89 90 04 02 00 00    	mov    %edx,0x204(%eax)
 4000f94:	5d                   	pop    %ebp
 4000f95:	c3                   	ret    
 4000f96:	66 90                	xchg   %ax,%ax

04000f98 <__sfp>:
 4000f98:	55                   	push   %ebp
 4000f99:	89 e5                	mov    %esp,%ebp
 4000f9b:	56                   	push   %esi
 4000f9c:	53                   	push   %ebx
 4000f9d:	8b 75 08             	mov    0x8(%ebp),%esi
 4000fa0:	8b 56 5c             	mov    0x5c(%esi),%edx
 4000fa3:	85 d2                	test   %edx,%edx
 4000fa5:	0f 84 8d 00 00 00    	je     4001038 <__sfp+0xa0>
 4000fab:	8d 9e fc 01 00 00    	lea    0x1fc(%esi),%ebx
 4000fb1:	8b 43 08             	mov    0x8(%ebx),%eax
 4000fb4:	8b 53 04             	mov    0x4(%ebx),%edx
 4000fb7:	4a                   	dec    %edx
 4000fb8:	79 0b                	jns    4000fc5 <__sfp+0x2d>
 4000fba:	eb 6c                	jmp    4001028 <__sfp+0x90>
 4000fbc:	83 c0 58             	add    $0x58,%eax
 4000fbf:	4a                   	dec    %edx
 4000fc0:	83 fa ff             	cmp    $0xffffffff,%edx
 4000fc3:	74 63                	je     4001028 <__sfp+0x90>
 4000fc5:	66 83 78 0c 00       	cmpw   $0x0,0xc(%eax)
 4000fca:	75 f0                	jne    4000fbc <__sfp+0x24>
 4000fcc:	66 c7 40 0c 01 00    	movw   $0x1,0xc(%eax)
 4000fd2:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 4000fd8:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 4000fdf:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 4000fe6:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 4000fed:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 4000ff4:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
 4000ffb:	66 c7 40 0e ff ff    	movw   $0xffff,0xe(%eax)
 4001001:	c7 40 30 00 00 00 00 	movl   $0x0,0x30(%eax)
 4001008:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
 400100f:	c7 40 44 00 00 00 00 	movl   $0x0,0x44(%eax)
 4001016:	c7 40 48 00 00 00 00 	movl   $0x0,0x48(%eax)
 400101d:	89 70 54             	mov    %esi,0x54(%eax)
 4001020:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4001023:	5b                   	pop    %ebx
 4001024:	5e                   	pop    %esi
 4001025:	5d                   	pop    %ebp
 4001026:	c3                   	ret    
 4001027:	90                   	nop
 4001028:	8b 03                	mov    (%ebx),%eax
 400102a:	85 c0                	test   %eax,%eax
 400102c:	74 16                	je     4001044 <__sfp+0xac>
 400102e:	89 c3                	mov    %eax,%ebx
 4001030:	e9 7c ff ff ff       	jmp    4000fb1 <__sfp+0x19>
 4001035:	8d 76 00             	lea    0x0(%esi),%esi
 4001038:	56                   	push   %esi
 4001039:	e8 ae fd ff ff       	call   4000dec <__sinit>
 400103e:	58                   	pop    %eax
 400103f:	e9 67 ff ff ff       	jmp    4000fab <__sfp+0x13>
 4001044:	83 ec 08             	sub    $0x8,%esp
 4001047:	6a 04                	push   $0x4
 4001049:	56                   	push   %esi
 400104a:	e8 2d fd ff ff       	call   4000d7c <__sfmoreglue>
 400104f:	89 03                	mov    %eax,(%ebx)
 4001051:	83 c4 10             	add    $0x10,%esp
 4001054:	85 c0                	test   %eax,%eax
 4001056:	75 d6                	jne    400102e <__sfp+0x96>
 4001058:	c7 06 0c 00 00 00    	movl   $0xc,(%esi)
 400105e:	31 c0                	xor    %eax,%eax
 4001060:	eb be                	jmp    4001020 <__sfp+0x88>
 4001062:	66 90                	xchg   %ax,%ax

04001064 <__sccl>:
 4001064:	55                   	push   %ebp
 4001065:	89 e5                	mov    %esp,%ebp
 4001067:	57                   	push   %edi
 4001068:	56                   	push   %esi
 4001069:	53                   	push   %ebx
 400106a:	51                   	push   %ecx
 400106b:	8b 75 08             	mov    0x8(%ebp),%esi
 400106e:	8b 55 0c             	mov    0xc(%ebp),%edx
 4001071:	0f be 0a             	movsbl (%edx),%ecx
 4001074:	83 f9 5e             	cmp    $0x5e,%ecx
 4001077:	74 7d                	je     40010f6 <__sccl+0x92>
 4001079:	8d 42 01             	lea    0x1(%edx),%eax
 400107c:	89 c7                	mov    %eax,%edi
 400107e:	31 c0                	xor    %eax,%eax
 4001080:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 4001087:	89 f2                	mov    %esi,%edx
 4001089:	8d 9e 00 01 00 00    	lea    0x100(%esi),%ebx
 400108f:	90                   	nop
 4001090:	88 02                	mov    %al,(%edx)
 4001092:	42                   	inc    %edx
 4001093:	39 d3                	cmp    %edx,%ebx
 4001095:	75 f9                	jne    4001090 <__sccl+0x2c>
 4001097:	85 c9                	test   %ecx,%ecx
 4001099:	74 2d                	je     40010c8 <__sccl+0x64>
 400109b:	ba 01 00 00 00       	mov    $0x1,%edx
 40010a0:	2b 55 f0             	sub    -0x10(%ebp),%edx
 40010a3:	89 fb                	mov    %edi,%ebx
 40010a5:	88 14 0e             	mov    %dl,(%esi,%ecx,1)
 40010a8:	8d 7b 01             	lea    0x1(%ebx),%edi
 40010ab:	8a 03                	mov    (%ebx),%al
 40010ad:	3c 2d                	cmp    $0x2d,%al
 40010af:	74 28                	je     40010d9 <__sccl+0x75>
 40010b1:	3c 5d                	cmp    $0x5d,%al
 40010b3:	74 1c                	je     40010d1 <__sccl+0x6d>
 40010b5:	84 c0                	test   %al,%al
 40010b7:	74 07                	je     40010c0 <__sccl+0x5c>
 40010b9:	0f be c8             	movsbl %al,%ecx
 40010bc:	89 fb                	mov    %edi,%ebx
 40010be:	eb e5                	jmp    40010a5 <__sccl+0x41>
 40010c0:	89 d8                	mov    %ebx,%eax
 40010c2:	5a                   	pop    %edx
 40010c3:	5b                   	pop    %ebx
 40010c4:	5e                   	pop    %esi
 40010c5:	5f                   	pop    %edi
 40010c6:	5d                   	pop    %ebp
 40010c7:	c3                   	ret    
 40010c8:	89 f8                	mov    %edi,%eax
 40010ca:	48                   	dec    %eax
 40010cb:	5a                   	pop    %edx
 40010cc:	5b                   	pop    %ebx
 40010cd:	5e                   	pop    %esi
 40010ce:	5f                   	pop    %edi
 40010cf:	5d                   	pop    %ebp
 40010d0:	c3                   	ret    
 40010d1:	89 f8                	mov    %edi,%eax
 40010d3:	5a                   	pop    %edx
 40010d4:	5b                   	pop    %ebx
 40010d5:	5e                   	pop    %esi
 40010d6:	5f                   	pop    %edi
 40010d7:	5d                   	pop    %ebp
 40010d8:	c3                   	ret    
 40010d9:	0f be 43 01          	movsbl 0x1(%ebx),%eax
 40010dd:	83 f8 5d             	cmp    $0x5d,%eax
 40010e0:	74 2b                	je     400110d <__sccl+0xa9>
 40010e2:	39 c1                	cmp    %eax,%ecx
 40010e4:	7f 27                	jg     400110d <__sccl+0xa9>
 40010e6:	83 c3 02             	add    $0x2,%ebx
 40010e9:	8d 76 00             	lea    0x0(%esi),%esi
 40010ec:	41                   	inc    %ecx
 40010ed:	88 14 0e             	mov    %dl,(%esi,%ecx,1)
 40010f0:	39 c8                	cmp    %ecx,%eax
 40010f2:	7f f8                	jg     40010ec <__sccl+0x88>
 40010f4:	eb b2                	jmp    40010a8 <__sccl+0x44>
 40010f6:	8d 42 02             	lea    0x2(%edx),%eax
 40010f9:	89 c7                	mov    %eax,%edi
 40010fb:	0f be 4a 01          	movsbl 0x1(%edx),%ecx
 40010ff:	b0 01                	mov    $0x1,%al
 4001101:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 4001108:	e9 7a ff ff ff       	jmp    4001087 <__sccl+0x23>
 400110d:	b9 2d 00 00 00       	mov    $0x2d,%ecx
 4001112:	89 fb                	mov    %edi,%ebx
 4001114:	eb 8f                	jmp    40010a5 <__sccl+0x41>
 4001116:	66 90                	xchg   %ax,%ax

04001118 <__svfscanf>:
 4001118:	55                   	push   %ebp
 4001119:	89 e5                	mov    %esp,%ebp
 400111b:	57                   	push   %edi
 400111c:	56                   	push   %esi
 400111d:	53                   	push   %ebx
 400111e:	81 ec 9c 02 00 00    	sub    $0x29c,%esp
 4001124:	8b 75 08             	mov    0x8(%ebp),%esi
 4001127:	8b 45 0c             	mov    0xc(%ebp),%eax
 400112a:	c7 85 70 fd ff ff 00 	movl   $0x0,-0x290(%ebp)
 4001131:	00 00 00 
 4001134:	c7 85 74 fd ff ff 00 	movl   $0x0,-0x28c(%ebp)
 400113b:	00 00 00 
 400113e:	31 ff                	xor    %edi,%edi
 4001140:	c7 85 7c fd ff ff 00 	movl   $0x0,-0x284(%ebp)
 4001147:	00 00 00 
 400114a:	8d 48 01             	lea    0x1(%eax),%ecx
 400114d:	89 8d 80 fd ff ff    	mov    %ecx,-0x280(%ebp)
 4001153:	0f be 18             	movsbl (%eax),%ebx
 4001156:	85 db                	test   %ebx,%ebx
 4001158:	74 6b                	je     40011c5 <__svfscanf+0xad>
 400115a:	f6 83 61 48 00 04 08 	testb  $0x8,0x4004861(%ebx)
 4001161:	74 4d                	je     40011b0 <__svfscanf+0x98>
 4001163:	8b 46 04             	mov    0x4(%esi),%eax
 4001166:	85 c0                	test   %eax,%eax
 4001168:	7e 1d                	jle    4001187 <__svfscanf+0x6f>
 400116a:	8b 16                	mov    (%esi),%edx
 400116c:	0f b6 02             	movzbl (%edx),%eax
 400116f:	f6 80 61 48 00 04 08 	testb  $0x8,0x4004861(%eax)
 4001176:	74 30                	je     40011a8 <__svfscanf+0x90>
 4001178:	47                   	inc    %edi
 4001179:	8b 46 04             	mov    0x4(%esi),%eax
 400117c:	48                   	dec    %eax
 400117d:	89 46 04             	mov    %eax,0x4(%esi)
 4001180:	42                   	inc    %edx
 4001181:	89 16                	mov    %edx,(%esi)
 4001183:	85 c0                	test   %eax,%eax
 4001185:	7f e3                	jg     400116a <__svfscanf+0x52>
 4001187:	83 ec 0c             	sub    $0xc,%esp
 400118a:	56                   	push   %esi
 400118b:	e8 d0 f5 ff ff       	call   4000760 <__srefill>
 4001190:	83 c4 10             	add    $0x10,%esp
 4001193:	85 c0                	test   %eax,%eax
 4001195:	75 2e                	jne    40011c5 <__svfscanf+0xad>
 4001197:	8b 16                	mov    (%esi),%edx
 4001199:	0f b6 02             	movzbl (%edx),%eax
 400119c:	f6 80 61 48 00 04 08 	testb  $0x8,0x4004861(%eax)
 40011a3:	75 d3                	jne    4001178 <__svfscanf+0x60>
 40011a5:	8d 76 00             	lea    0x0(%esi),%esi
 40011a8:	8b 85 80 fd ff ff    	mov    -0x280(%ebp),%eax
 40011ae:	eb 9a                	jmp    400114a <__svfscanf+0x32>
 40011b0:	83 fb 25             	cmp    $0x25,%ebx
 40011b3:	74 1f                	je     40011d4 <__svfscanf+0xbc>
 40011b5:	8b 4e 04             	mov    0x4(%esi),%ecx
 40011b8:	85 c9                	test   %ecx,%ecx
 40011ba:	7e 5c                	jle    4001218 <__svfscanf+0x100>
 40011bc:	8b 06                	mov    (%esi),%eax
 40011be:	0f b6 10             	movzbl (%eax),%edx
 40011c1:	39 d3                	cmp    %edx,%ebx
 40011c3:	74 3f                	je     4001204 <__svfscanf+0xec>
 40011c5:	8b 85 7c fd ff ff    	mov    -0x284(%ebp),%eax
 40011cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 40011ce:	5b                   	pop    %ebx
 40011cf:	5e                   	pop    %esi
 40011d0:	5f                   	pop    %edi
 40011d1:	5d                   	pop    %ebp
 40011d2:	c3                   	ret    
 40011d3:	90                   	nop
 40011d4:	c7 85 6c fd ff ff 00 	movl   $0x0,-0x294(%ebp)
 40011db:	00 00 00 
 40011de:	c7 85 78 fd ff ff 00 	movl   $0x0,-0x288(%ebp)
 40011e5:	00 00 00 
 40011e8:	8b 95 80 fd ff ff    	mov    -0x280(%ebp),%edx
 40011ee:	42                   	inc    %edx
 40011ef:	8a 42 ff             	mov    -0x1(%edx),%al
 40011f2:	3c 78                	cmp    $0x78,%al
 40011f4:	0f 87 ee 03 00 00    	ja     40015e8 <__svfscanf+0x4d0>
 40011fa:	0f b6 c8             	movzbl %al,%ecx
 40011fd:	ff 24 8d c0 41 00 04 	jmp    *0x40041c0(,%ecx,4)
 4001204:	ff 4e 04             	decl   0x4(%esi)
 4001207:	40                   	inc    %eax
 4001208:	89 06                	mov    %eax,(%esi)
 400120a:	47                   	inc    %edi
 400120b:	8b 85 80 fd ff ff    	mov    -0x280(%ebp),%eax
 4001211:	e9 34 ff ff ff       	jmp    400114a <__svfscanf+0x32>
 4001216:	66 90                	xchg   %ax,%ax
 4001218:	83 ec 0c             	sub    $0xc,%esp
 400121b:	56                   	push   %esi
 400121c:	e8 3f f5 ff ff       	call   4000760 <__srefill>
 4001221:	83 c4 10             	add    $0x10,%esp
 4001224:	85 c0                	test   %eax,%eax
 4001226:	74 94                	je     40011bc <__svfscanf+0xa4>
 4001228:	eb 69                	jmp    4001293 <__svfscanf+0x17b>
 400122a:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 4001230:	83 8d 6c fd ff ff 01 	orl    $0x1,-0x294(%ebp)
 4001237:	8b 56 04             	mov    0x4(%esi),%edx
 400123a:	85 d2                	test   %edx,%edx
 400123c:	0f 8e 2d 02 00 00    	jle    400146f <__svfscanf+0x357>
 4001242:	c7 85 70 fd ff ff 40 	movl   $0x4002b40,-0x290(%ebp)
 4001249:	2b 00 04 
 400124c:	c7 85 74 fd ff ff 0a 	movl   $0xa,-0x28c(%ebp)
 4001253:	00 00 00 
 4001256:	bb 03 00 00 00       	mov    $0x3,%ebx
 400125b:	90                   	nop
 400125c:	8b 0e                	mov    (%esi),%ecx
 400125e:	eb 03                	jmp    4001263 <__svfscanf+0x14b>
 4001260:	41                   	inc    %ecx
 4001261:	89 0e                	mov    %ecx,(%esi)
 4001263:	0f b6 11             	movzbl (%ecx),%edx
 4001266:	89 d0                	mov    %edx,%eax
 4001268:	8a 92 61 48 00 04    	mov    0x4004861(%edx),%dl
 400126e:	f6 c2 08             	test   $0x8,%dl
 4001271:	0f 84 4e 05 00 00    	je     40017c5 <__svfscanf+0x6ad>
 4001277:	47                   	inc    %edi
 4001278:	8b 46 04             	mov    0x4(%esi),%eax
 400127b:	48                   	dec    %eax
 400127c:	89 46 04             	mov    %eax,0x4(%esi)
 400127f:	85 c0                	test   %eax,%eax
 4001281:	7f dd                	jg     4001260 <__svfscanf+0x148>
 4001283:	83 ec 0c             	sub    $0xc,%esp
 4001286:	56                   	push   %esi
 4001287:	e8 d4 f4 ff ff       	call   4000760 <__srefill>
 400128c:	83 c4 10             	add    $0x10,%esp
 400128f:	85 c0                	test   %eax,%eax
 4001291:	74 c9                	je     400125c <__svfscanf+0x144>
 4001293:	8b 85 7c fd ff ff    	mov    -0x284(%ebp),%eax
 4001299:	85 c0                	test   %eax,%eax
 400129b:	0f 85 2a ff ff ff    	jne    40011cb <__svfscanf+0xb3>
 40012a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 40012a6:	e9 20 ff ff ff       	jmp    40011cb <__svfscanf+0xb3>
 40012ab:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 40012b1:	8b 46 04             	mov    0x4(%esi),%eax
 40012b4:	85 c0                	test   %eax,%eax
 40012b6:	0f 8e 65 04 00 00    	jle    4001721 <__svfscanf+0x609>
 40012bc:	c7 85 70 fd ff ff 40 	movl   $0x4002b40,-0x290(%ebp)
 40012c3:	2b 00 04 
 40012c6:	c7 85 74 fd ff ff 00 	movl   $0x0,-0x28c(%ebp)
 40012cd:	00 00 00 
 40012d0:	bb 03 00 00 00       	mov    $0x3,%ebx
 40012d5:	eb 85                	jmp    400125c <__svfscanf+0x144>
 40012d7:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 40012dd:	8b 5e 04             	mov    0x4(%esi),%ebx
 40012e0:	85 db                	test   %ebx,%ebx
 40012e2:	0f 8e 70 04 00 00    	jle    4001758 <__svfscanf+0x640>
 40012e8:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 40012ee:	85 c0                	test   %eax,%eax
 40012f0:	75 0a                	jne    40012fc <__svfscanf+0x1e4>
 40012f2:	c7 85 78 fd ff ff 01 	movl   $0x1,-0x288(%ebp)
 40012f9:	00 00 00 
 40012fc:	f6 85 6c fd ff ff 08 	testb  $0x8,-0x294(%ebp)
 4001303:	0f 84 c3 03 00 00    	je     40016cc <__svfscanf+0x5b4>
 4001309:	31 db                	xor    %ebx,%ebx
 400130b:	89 bd 6c fd ff ff    	mov    %edi,-0x294(%ebp)
 4001311:	89 f7                	mov    %esi,%edi
 4001313:	89 de                	mov    %ebx,%esi
 4001315:	8b 9d 78 fd ff ff    	mov    -0x288(%ebp),%ebx
 400131b:	eb 1d                	jmp    400133a <__svfscanf+0x222>
 400131d:	8d 76 00             	lea    0x0(%esi),%esi
 4001320:	01 c6                	add    %eax,%esi
 4001322:	29 c3                	sub    %eax,%ebx
 4001324:	01 07                	add    %eax,(%edi)
 4001326:	83 ec 0c             	sub    $0xc,%esp
 4001329:	57                   	push   %edi
 400132a:	e8 31 f4 ff ff       	call   4000760 <__srefill>
 400132f:	83 c4 10             	add    $0x10,%esp
 4001332:	85 c0                	test   %eax,%eax
 4001334:	0f 85 79 03 00 00    	jne    40016b3 <__svfscanf+0x59b>
 400133a:	8b 47 04             	mov    0x4(%edi),%eax
 400133d:	39 c3                	cmp    %eax,%ebx
 400133f:	77 df                	ja     4001320 <__svfscanf+0x208>
 4001341:	89 d9                	mov    %ebx,%ecx
 4001343:	89 f3                	mov    %esi,%ebx
 4001345:	89 fe                	mov    %edi,%esi
 4001347:	8b bd 6c fd ff ff    	mov    -0x294(%ebp),%edi
 400134d:	01 cb                	add    %ecx,%ebx
 400134f:	29 c8                	sub    %ecx,%eax
 4001351:	89 46 04             	mov    %eax,0x4(%esi)
 4001354:	01 0e                	add    %ecx,(%esi)
 4001356:	01 df                	add    %ebx,%edi
 4001358:	e9 4b fe ff ff       	jmp    40011a8 <__svfscanf+0x90>
 400135d:	83 ec 08             	sub    $0x8,%esp
 4001360:	52                   	push   %edx
 4001361:	8d 85 8a fd ff ff    	lea    -0x276(%ebp),%eax
 4001367:	50                   	push   %eax
 4001368:	e8 f7 fc ff ff       	call   4001064 <__sccl>
 400136d:	89 85 80 fd ff ff    	mov    %eax,-0x280(%ebp)
 4001373:	83 c4 10             	add    $0x10,%esp
 4001376:	8b 46 04             	mov    0x4(%esi),%eax
 4001379:	85 c0                	test   %eax,%eax
 400137b:	0f 8e bb 03 00 00    	jle    400173c <__svfscanf+0x624>
 4001381:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 4001387:	85 c0                	test   %eax,%eax
 4001389:	75 0a                	jne    4001395 <__svfscanf+0x27d>
 400138b:	c7 85 78 fd ff ff ff 	movl   $0xffffffff,-0x288(%ebp)
 4001392:	ff ff ff 
 4001395:	f6 85 6c fd ff ff 08 	testb  $0x8,-0x294(%ebp)
 400139c:	0f 84 6f 02 00 00    	je     4001611 <__svfscanf+0x4f9>
 40013a2:	8b 0e                	mov    (%esi),%ecx
 40013a4:	8b 9d 78 fd ff ff    	mov    -0x288(%ebp),%ebx
 40013aa:	31 d2                	xor    %edx,%edx
 40013ac:	0f b6 01             	movzbl (%ecx),%eax
 40013af:	80 bc 05 8a fd ff ff 	cmpb   $0x0,-0x276(%ebp,%eax,1)
 40013b6:	00 
 40013b7:	0f 84 48 03 00 00    	je     4001705 <__svfscanf+0x5ed>
 40013bd:	42                   	inc    %edx
 40013be:	8b 46 04             	mov    0x4(%esi),%eax
 40013c1:	48                   	dec    %eax
 40013c2:	89 46 04             	mov    %eax,0x4(%esi)
 40013c5:	41                   	inc    %ecx
 40013c6:	89 0e                	mov    %ecx,(%esi)
 40013c8:	3b 95 78 fd ff ff    	cmp    -0x288(%ebp),%edx
 40013ce:	0f 84 2b 03 00 00    	je     40016ff <__svfscanf+0x5e7>
 40013d4:	85 c0                	test   %eax,%eax
 40013d6:	7f d4                	jg     40013ac <__svfscanf+0x294>
 40013d8:	89 95 6c fd ff ff    	mov    %edx,-0x294(%ebp)
 40013de:	83 ec 0c             	sub    $0xc,%esp
 40013e1:	56                   	push   %esi
 40013e2:	e8 79 f3 ff ff       	call   4000760 <__srefill>
 40013e7:	83 c4 10             	add    $0x10,%esp
 40013ea:	85 c0                	test   %eax,%eax
 40013ec:	8b 95 6c fd ff ff    	mov    -0x294(%ebp),%edx
 40013f2:	0f 85 05 03 00 00    	jne    40016fd <__svfscanf+0x5e5>
 40013f8:	8b 0e                	mov    (%esi),%ecx
 40013fa:	eb b0                	jmp    40013ac <__svfscanf+0x294>
 40013fc:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 4001402:	81 8d 6c fd ff ff 00 	orl    $0x100,-0x294(%ebp)
 4001409:	01 00 00 
 400140c:	8b 46 04             	mov    0x4(%esi),%eax
 400140f:	85 c0                	test   %eax,%eax
 4001411:	0f 8e ed 00 00 00    	jle    4001504 <__svfscanf+0x3ec>
 4001417:	c7 85 70 fd ff ff 2c 	movl   $0x4002a2c,-0x290(%ebp)
 400141e:	2a 00 04 
 4001421:	c7 85 74 fd ff ff 10 	movl   $0x10,-0x28c(%ebp)
 4001428:	00 00 00 
 400142b:	bb 03 00 00 00       	mov    $0x3,%ebx
 4001430:	e9 27 fe ff ff       	jmp    400125c <__svfscanf+0x144>
 4001435:	83 8d 6c fd ff ff 08 	orl    $0x8,-0x294(%ebp)
 400143c:	e9 ad fd ff ff       	jmp    40011ee <__svfscanf+0xd6>
 4001441:	8b 8d 78 fd ff ff    	mov    -0x288(%ebp),%ecx
 4001447:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 400144a:	01 c9                	add    %ecx,%ecx
 400144c:	0f be c0             	movsbl %al,%eax
 400144f:	8d 44 01 d0          	lea    -0x30(%ecx,%eax,1),%eax
 4001453:	89 85 78 fd ff ff    	mov    %eax,-0x288(%ebp)
 4001459:	e9 90 fd ff ff       	jmp    40011ee <__svfscanf+0xd6>
 400145e:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 4001464:	8b 46 04             	mov    0x4(%esi),%eax
 4001467:	85 c0                	test   %eax,%eax
 4001469:	0f 8f d3 fd ff ff    	jg     4001242 <__svfscanf+0x12a>
 400146f:	83 ec 0c             	sub    $0xc,%esp
 4001472:	56                   	push   %esi
 4001473:	e8 e8 f2 ff ff       	call   4000760 <__srefill>
 4001478:	83 c4 10             	add    $0x10,%esp
 400147b:	85 c0                	test   %eax,%eax
 400147d:	0f 84 bf fd ff ff    	je     4001242 <__svfscanf+0x12a>
 4001483:	e9 0b fe ff ff       	jmp    4001293 <__svfscanf+0x17b>
 4001488:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 400148e:	8b 5e 04             	mov    0x4(%esi),%ebx
 4001491:	85 db                	test   %ebx,%ebx
 4001493:	0f 8e 9f 00 00 00    	jle    4001538 <__svfscanf+0x420>
 4001499:	c7 85 70 fd ff ff 2c 	movl   $0x4002a2c,-0x290(%ebp)
 40014a0:	2a 00 04 
 40014a3:	c7 85 74 fd ff ff 08 	movl   $0x8,-0x28c(%ebp)
 40014aa:	00 00 00 
 40014ad:	bb 03 00 00 00       	mov    $0x3,%ebx
 40014b2:	e9 a5 fd ff ff       	jmp    400125c <__svfscanf+0x144>
 40014b7:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 40014bd:	8b 85 6c fd ff ff    	mov    -0x294(%ebp),%eax
 40014c3:	a8 08                	test   $0x8,%al
 40014c5:	0f 85 dd fc ff ff    	jne    40011a8 <__svfscanf+0x90>
 40014cb:	a8 04                	test   $0x4,%al
 40014cd:	8b 45 10             	mov    0x10(%ebp),%eax
 40014d0:	8b 00                	mov    (%eax),%eax
 40014d2:	0f 84 39 02 00 00    	je     4001711 <__svfscanf+0x5f9>
 40014d8:	66 89 38             	mov    %di,(%eax)
 40014db:	8b 45 10             	mov    0x10(%ebp),%eax
 40014de:	83 c0 04             	add    $0x4,%eax
 40014e1:	89 45 10             	mov    %eax,0x10(%ebp)
 40014e4:	e9 bf fc ff ff       	jmp    40011a8 <__svfscanf+0x90>
 40014e9:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 40014ef:	81 8d 6c fd ff ff 10 	orl    $0x110,-0x294(%ebp)
 40014f6:	01 00 00 
 40014f9:	8b 4e 04             	mov    0x4(%esi),%ecx
 40014fc:	85 c9                	test   %ecx,%ecx
 40014fe:	0f 8f 13 ff ff ff    	jg     4001417 <__svfscanf+0x2ff>
 4001504:	83 ec 0c             	sub    $0xc,%esp
 4001507:	56                   	push   %esi
 4001508:	e8 53 f2 ff ff       	call   4000760 <__srefill>
 400150d:	83 c4 10             	add    $0x10,%esp
 4001510:	85 c0                	test   %eax,%eax
 4001512:	0f 84 ff fe ff ff    	je     4001417 <__svfscanf+0x2ff>
 4001518:	e9 76 fd ff ff       	jmp    4001293 <__svfscanf+0x17b>
 400151d:	8d 76 00             	lea    0x0(%esi),%esi
 4001520:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 4001526:	83 8d 6c fd ff ff 01 	orl    $0x1,-0x294(%ebp)
 400152d:	8b 46 04             	mov    0x4(%esi),%eax
 4001530:	85 c0                	test   %eax,%eax
 4001532:	0f 8f 61 ff ff ff    	jg     4001499 <__svfscanf+0x381>
 4001538:	83 ec 0c             	sub    $0xc,%esp
 400153b:	56                   	push   %esi
 400153c:	e8 1f f2 ff ff       	call   4000760 <__srefill>
 4001541:	83 c4 10             	add    $0x10,%esp
 4001544:	85 c0                	test   %eax,%eax
 4001546:	0f 84 4d ff ff ff    	je     4001499 <__svfscanf+0x381>
 400154c:	e9 42 fd ff ff       	jmp    4001293 <__svfscanf+0x17b>
 4001551:	8d 76 00             	lea    0x0(%esi),%esi
 4001554:	83 8d 6c fd ff ff 02 	orl    $0x2,-0x294(%ebp)
 400155b:	e9 8e fc ff ff       	jmp    40011ee <__svfscanf+0xd6>
 4001560:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 4001566:	8b 46 04             	mov    0x4(%esi),%eax
 4001569:	85 c0                	test   %eax,%eax
 400156b:	0f 8e 03 02 00 00    	jle    4001774 <__svfscanf+0x65c>
 4001571:	c7 85 70 fd ff ff 2c 	movl   $0x4002a2c,-0x290(%ebp)
 4001578:	2a 00 04 
 400157b:	c7 85 74 fd ff ff 0a 	movl   $0xa,-0x28c(%ebp)
 4001582:	00 00 00 
 4001585:	bb 03 00 00 00       	mov    $0x3,%ebx
 400158a:	e9 cd fc ff ff       	jmp    400125c <__svfscanf+0x144>
 400158f:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 4001595:	8b 46 04             	mov    0x4(%esi),%eax
 4001598:	85 c0                	test   %eax,%eax
 400159a:	0f 8e f0 01 00 00    	jle    4001790 <__svfscanf+0x678>
 40015a0:	bb 02 00 00 00       	mov    $0x2,%ebx
 40015a5:	e9 b2 fc ff ff       	jmp    400125c <__svfscanf+0x144>
 40015aa:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 40015b0:	8b 46 04             	mov    0x4(%esi),%eax
 40015b3:	85 c0                	test   %eax,%eax
 40015b5:	0f 8e f1 01 00 00    	jle    40017ac <__svfscanf+0x694>
 40015bb:	bb 04 00 00 00       	mov    $0x4,%ebx
 40015c0:	e9 97 fc ff ff       	jmp    400125c <__svfscanf+0x144>
 40015c5:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 40015cb:	e9 e5 fb ff ff       	jmp    40011b5 <__svfscanf+0x9d>
 40015d0:	83 8d 6c fd ff ff 01 	orl    $0x1,-0x294(%ebp)
 40015d7:	e9 12 fc ff ff       	jmp    40011ee <__svfscanf+0xd6>
 40015dc:	83 8d 6c fd ff ff 04 	orl    $0x4,-0x294(%ebp)
 40015e3:	e9 06 fc ff ff       	jmp    40011ee <__svfscanf+0xd6>
 40015e8:	89 95 80 fd ff ff    	mov    %edx,-0x280(%ebp)
 40015ee:	0f be c0             	movsbl %al,%eax
 40015f1:	f6 80 61 48 00 04 01 	testb  $0x1,0x4004861(%eax)
 40015f8:	74 07                	je     4001601 <__svfscanf+0x4e9>
 40015fa:	83 8d 6c fd ff ff 01 	orl    $0x1,-0x294(%ebp)
 4001601:	8b 56 04             	mov    0x4(%esi),%edx
 4001604:	85 d2                	test   %edx,%edx
 4001606:	0f 8f 36 fc ff ff    	jg     4001242 <__svfscanf+0x12a>
 400160c:	e9 5e fe ff ff       	jmp    400146f <__svfscanf+0x357>
 4001611:	8b 45 10             	mov    0x10(%ebp),%eax
 4001614:	83 c0 04             	add    $0x4,%eax
 4001617:	89 85 68 fd ff ff    	mov    %eax,-0x298(%ebp)
 400161d:	8b 45 10             	mov    0x10(%ebp),%eax
 4001620:	8b 00                	mov    (%eax),%eax
 4001622:	89 85 6c fd ff ff    	mov    %eax,-0x294(%ebp)
 4001628:	8b 95 78 fd ff ff    	mov    -0x288(%ebp),%edx
 400162e:	01 c2                	add    %eax,%edx
 4001630:	89 c3                	mov    %eax,%ebx
 4001632:	66 90                	xchg   %ax,%ax
 4001634:	8b 06                	mov    (%esi),%eax
 4001636:	0f b6 08             	movzbl (%eax),%ecx
 4001639:	80 bc 0d 8a fd ff ff 	cmpb   $0x0,-0x276(%ebp,%ecx,1)
 4001640:	00 
 4001641:	74 41                	je     4001684 <__svfscanf+0x56c>
 4001643:	ff 4e 04             	decl   0x4(%esi)
 4001646:	43                   	inc    %ebx
 4001647:	8d 48 01             	lea    0x1(%eax),%ecx
 400164a:	89 0e                	mov    %ecx,(%esi)
 400164c:	8a 00                	mov    (%eax),%al
 400164e:	88 43 ff             	mov    %al,-0x1(%ebx)
 4001651:	39 da                	cmp    %ebx,%edx
 4001653:	74 2f                	je     4001684 <__svfscanf+0x56c>
 4001655:	8b 46 04             	mov    0x4(%esi),%eax
 4001658:	85 c0                	test   %eax,%eax
 400165a:	7f d8                	jg     4001634 <__svfscanf+0x51c>
 400165c:	89 95 78 fd ff ff    	mov    %edx,-0x288(%ebp)
 4001662:	83 ec 0c             	sub    $0xc,%esp
 4001665:	56                   	push   %esi
 4001666:	e8 f5 f0 ff ff       	call   4000760 <__srefill>
 400166b:	83 c4 10             	add    $0x10,%esp
 400166e:	85 c0                	test   %eax,%eax
 4001670:	8b 95 78 fd ff ff    	mov    -0x288(%ebp),%edx
 4001676:	74 bc                	je     4001634 <__svfscanf+0x51c>
 4001678:	39 9d 6c fd ff ff    	cmp    %ebx,-0x294(%ebp)
 400167e:	0f 84 0f fc ff ff    	je     4001293 <__svfscanf+0x17b>
 4001684:	89 da                	mov    %ebx,%edx
 4001686:	2b 95 6c fd ff ff    	sub    -0x294(%ebp),%edx
 400168c:	0f 84 33 fb ff ff    	je     40011c5 <__svfscanf+0xad>
 4001692:	c6 03 00             	movb   $0x0,(%ebx)
 4001695:	ff 85 7c fd ff ff    	incl   -0x284(%ebp)
 400169b:	8b 85 68 fd ff ff    	mov    -0x298(%ebp),%eax
 40016a1:	89 45 10             	mov    %eax,0x10(%ebp)
 40016a4:	01 d7                	add    %edx,%edi
 40016a6:	66 90                	xchg   %ax,%ax
 40016a8:	8b 85 80 fd ff ff    	mov    -0x280(%ebp),%eax
 40016ae:	e9 97 fa ff ff       	jmp    400114a <__svfscanf+0x32>
 40016b3:	89 f3                	mov    %esi,%ebx
 40016b5:	89 fe                	mov    %edi,%esi
 40016b7:	8b bd 6c fd ff ff    	mov    -0x294(%ebp),%edi
 40016bd:	85 db                	test   %ebx,%ebx
 40016bf:	0f 84 ce fb ff ff    	je     4001293 <__svfscanf+0x17b>
 40016c5:	01 df                	add    %ebx,%edi
 40016c7:	e9 dc fa ff ff       	jmp    40011a8 <__svfscanf+0x90>
 40016cc:	8b 45 10             	mov    0x10(%ebp),%eax
 40016cf:	8d 58 04             	lea    0x4(%eax),%ebx
 40016d2:	56                   	push   %esi
 40016d3:	ff b5 78 fd ff ff    	pushl  -0x288(%ebp)
 40016d9:	6a 01                	push   $0x1
 40016db:	ff 30                	pushl  (%eax)
 40016dd:	e8 0e 24 00 00       	call   4003af0 <fread>
 40016e2:	83 c4 10             	add    $0x10,%esp
 40016e5:	85 c0                	test   %eax,%eax
 40016e7:	0f 84 a6 fb ff ff    	je     4001293 <__svfscanf+0x17b>
 40016ed:	01 c7                	add    %eax,%edi
 40016ef:	ff 85 7c fd ff ff    	incl   -0x284(%ebp)
 40016f5:	89 5d 10             	mov    %ebx,0x10(%ebp)
 40016f8:	e9 ab fa ff ff       	jmp    40011a8 <__svfscanf+0x90>
 40016fd:	89 d3                	mov    %edx,%ebx
 40016ff:	89 da                	mov    %ebx,%edx
 4001701:	01 d7                	add    %edx,%edi
 4001703:	eb a3                	jmp    40016a8 <__svfscanf+0x590>
 4001705:	85 d2                	test   %edx,%edx
 4001707:	0f 84 b8 fa ff ff    	je     40011c5 <__svfscanf+0xad>
 400170d:	01 d7                	add    %edx,%edi
 400170f:	eb 97                	jmp    40016a8 <__svfscanf+0x590>
 4001711:	89 38                	mov    %edi,(%eax)
 4001713:	8b 45 10             	mov    0x10(%ebp),%eax
 4001716:	83 c0 04             	add    $0x4,%eax
 4001719:	89 45 10             	mov    %eax,0x10(%ebp)
 400171c:	e9 87 fa ff ff       	jmp    40011a8 <__svfscanf+0x90>
 4001721:	83 ec 0c             	sub    $0xc,%esp
 4001724:	56                   	push   %esi
 4001725:	e8 36 f0 ff ff       	call   4000760 <__srefill>
 400172a:	83 c4 10             	add    $0x10,%esp
 400172d:	85 c0                	test   %eax,%eax
 400172f:	0f 84 87 fb ff ff    	je     40012bc <__svfscanf+0x1a4>
 4001735:	e9 59 fb ff ff       	jmp    4001293 <__svfscanf+0x17b>
 400173a:	66 90                	xchg   %ax,%ax
 400173c:	83 ec 0c             	sub    $0xc,%esp
 400173f:	56                   	push   %esi
 4001740:	e8 1b f0 ff ff       	call   4000760 <__srefill>
 4001745:	83 c4 10             	add    $0x10,%esp
 4001748:	85 c0                	test   %eax,%eax
 400174a:	0f 84 31 fc ff ff    	je     4001381 <__svfscanf+0x269>
 4001750:	e9 3e fb ff ff       	jmp    4001293 <__svfscanf+0x17b>
 4001755:	8d 76 00             	lea    0x0(%esi),%esi
 4001758:	83 ec 0c             	sub    $0xc,%esp
 400175b:	56                   	push   %esi
 400175c:	e8 ff ef ff ff       	call   4000760 <__srefill>
 4001761:	83 c4 10             	add    $0x10,%esp
 4001764:	85 c0                	test   %eax,%eax
 4001766:	0f 84 7c fb ff ff    	je     40012e8 <__svfscanf+0x1d0>
 400176c:	e9 22 fb ff ff       	jmp    4001293 <__svfscanf+0x17b>
 4001771:	8d 76 00             	lea    0x0(%esi),%esi
 4001774:	83 ec 0c             	sub    $0xc,%esp
 4001777:	56                   	push   %esi
 4001778:	e8 e3 ef ff ff       	call   4000760 <__srefill>
 400177d:	83 c4 10             	add    $0x10,%esp
 4001780:	85 c0                	test   %eax,%eax
 4001782:	0f 84 e9 fd ff ff    	je     4001571 <__svfscanf+0x459>
 4001788:	e9 06 fb ff ff       	jmp    4001293 <__svfscanf+0x17b>
 400178d:	8d 76 00             	lea    0x0(%esi),%esi
 4001790:	83 ec 0c             	sub    $0xc,%esp
 4001793:	56                   	push   %esi
 4001794:	e8 c7 ef ff ff       	call   4000760 <__srefill>
 4001799:	83 c4 10             	add    $0x10,%esp
 400179c:	85 c0                	test   %eax,%eax
 400179e:	0f 84 fc fd ff ff    	je     40015a0 <__svfscanf+0x488>
 40017a4:	e9 ea fa ff ff       	jmp    4001293 <__svfscanf+0x17b>
 40017a9:	8d 76 00             	lea    0x0(%esi),%esi
 40017ac:	83 ec 0c             	sub    $0xc,%esp
 40017af:	56                   	push   %esi
 40017b0:	e8 ab ef ff ff       	call   4000760 <__srefill>
 40017b5:	83 c4 10             	add    $0x10,%esp
 40017b8:	85 c0                	test   %eax,%eax
 40017ba:	0f 84 fb fd ff ff    	je     40015bb <__svfscanf+0x4a3>
 40017c0:	e9 ce fa ff ff       	jmp    4001293 <__svfscanf+0x17b>
 40017c5:	88 85 64 fd ff ff    	mov    %al,-0x29c(%ebp)
 40017cb:	83 fb 03             	cmp    $0x3,%ebx
 40017ce:	0f 84 fc 01 00 00    	je     40019d0 <__svfscanf+0x8b8>
 40017d4:	83 fb 04             	cmp    $0x4,%ebx
 40017d7:	0f 85 80 01 00 00    	jne    400195d <__svfscanf+0x845>
 40017dd:	8b 9d 6c fd ff ff    	mov    -0x294(%ebp),%ebx
 40017e3:	81 cb c0 03 00 00    	or     $0x3c0,%ebx
 40017e9:	89 9d 6c fd ff ff    	mov    %ebx,-0x294(%ebp)
 40017ef:	8d 9d 8a fe ff ff    	lea    -0x176(%ebp),%ebx
 40017f5:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 40017fb:	8d 50 ff             	lea    -0x1(%eax),%edx
 40017fe:	81 fa 5c 01 00 00    	cmp    $0x15c,%edx
 4001804:	76 05                	jbe    400180b <__svfscanf+0x6f3>
 4001806:	ba 5c 01 00 00       	mov    $0x15c,%edx
 400180b:	8d 85 8a fe ff ff    	lea    -0x176(%ebp),%eax
 4001811:	01 d0                	add    %edx,%eax
 4001813:	89 85 78 fd ff ff    	mov    %eax,-0x288(%ebp)
 4001819:	89 bd 68 fd ff ff    	mov    %edi,-0x298(%ebp)
 400181f:	8a 85 64 fd ff ff    	mov    -0x29c(%ebp),%al
 4001825:	89 df                	mov    %ebx,%edi
 4001827:	8d 50 d5             	lea    -0x2b(%eax),%edx
 400182a:	80 fa 3a             	cmp    $0x3a,%dl
 400182d:	0f 87 a5 00 00 00    	ja     40018d8 <__svfscanf+0x7c0>
 4001833:	0f b6 d2             	movzbl %dl,%edx
 4001836:	ff 24 95 a4 43 00 04 	jmp    *0x40043a4(,%edx,4)
 400183d:	8d 76 00             	lea    0x0(%esi),%esi
 4001840:	8b 95 6c fd ff ff    	mov    -0x294(%ebp),%edx
 4001846:	81 e2 80 02 00 00    	and    $0x280,%edx
 400184c:	81 fa 00 02 00 00    	cmp    $0x200,%edx
 4001852:	0f 85 80 00 00 00    	jne    40018d8 <__svfscanf+0x7c0>
 4001858:	8b 95 6c fd ff ff    	mov    -0x294(%ebp),%edx
 400185e:	81 e2 3f fc ff ff    	and    $0xfffffc3f,%edx
 4001864:	80 ca c0             	or     $0xc0,%dl
 4001867:	89 95 6c fd ff ff    	mov    %edx,-0x294(%ebp)
 400186d:	8d 7b 01             	lea    0x1(%ebx),%edi
 4001870:	88 03                	mov    %al,(%ebx)
 4001872:	8b 46 04             	mov    0x4(%esi),%eax
 4001875:	48                   	dec    %eax
 4001876:	89 46 04             	mov    %eax,0x4(%esi)
 4001879:	85 c0                	test   %eax,%eax
 400187b:	0f 8e e1 03 00 00    	jle    4001c62 <__svfscanf+0xb4a>
 4001881:	41                   	inc    %ecx
 4001882:	89 0e                	mov    %ecx,(%esi)
 4001884:	39 9d 78 fd ff ff    	cmp    %ebx,-0x288(%ebp)
 400188a:	0f 84 e6 03 00 00    	je     4001c76 <__svfscanf+0xb5e>
 4001890:	8b 0e                	mov    (%esi),%ecx
 4001892:	8a 01                	mov    (%ecx),%al
 4001894:	89 fb                	mov    %edi,%ebx
 4001896:	eb 8d                	jmp    4001825 <__svfscanf+0x70d>
 4001898:	81 a5 6c fd ff ff 3f 	andl   $0xffffff3f,-0x294(%ebp)
 400189f:	ff ff ff 
 40018a2:	eb c9                	jmp    400186d <__svfscanf+0x755>
 40018a4:	8b 95 6c fd ff ff    	mov    -0x294(%ebp),%edx
 40018aa:	f6 c6 01             	test   $0x1,%dh
 40018ad:	74 29                	je     40018d8 <__svfscanf+0x7c0>
 40018af:	81 e2 bf fe ff ff    	and    $0xfffffebf,%edx
 40018b5:	89 95 6c fd ff ff    	mov    %edx,-0x294(%ebp)
 40018bb:	eb b0                	jmp    400186d <__svfscanf+0x755>
 40018bd:	8d 76 00             	lea    0x0(%esi),%esi
 40018c0:	8b 95 6c fd ff ff    	mov    -0x294(%ebp),%edx
 40018c6:	f6 c2 40             	test   $0x40,%dl
 40018c9:	74 0d                	je     40018d8 <__svfscanf+0x7c0>
 40018cb:	83 e2 bf             	and    $0xffffffbf,%edx
 40018ce:	89 95 6c fd ff ff    	mov    %edx,-0x294(%ebp)
 40018d4:	eb 97                	jmp    400186d <__svfscanf+0x755>
 40018d6:	66 90                	xchg   %ax,%ax
 40018d8:	89 bd 78 fd ff ff    	mov    %edi,-0x288(%ebp)
 40018de:	8b bd 68 fd ff ff    	mov    -0x298(%ebp),%edi
 40018e4:	8b 85 6c fd ff ff    	mov    -0x294(%ebp),%eax
 40018ea:	a8 80                	test   $0x80,%al
 40018ec:	74 4d                	je     400193b <__svfscanf+0x823>
 40018ee:	f6 c4 02             	test   $0x2,%ah
 40018f1:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 40018f7:	0f 85 57 04 00 00    	jne    4001d54 <__svfscanf+0xc3c>
 40018fd:	8d 58 ff             	lea    -0x1(%eax),%ebx
 4001900:	0f be 40 ff          	movsbl -0x1(%eax),%eax
 4001904:	83 f8 65             	cmp    $0x65,%eax
 4001907:	74 1f                	je     4001928 <__svfscanf+0x810>
 4001909:	83 f8 45             	cmp    $0x45,%eax
 400190c:	74 1a                	je     4001928 <__svfscanf+0x810>
 400190e:	83 ec 08             	sub    $0x8,%esp
 4001911:	56                   	push   %esi
 4001912:	50                   	push   %eax
 4001913:	e8 e8 1b 00 00       	call   4003500 <ungetc>
 4001918:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 400191e:	8d 58 fe             	lea    -0x2(%eax),%ebx
 4001921:	0f be 40 fe          	movsbl -0x2(%eax),%eax
 4001925:	83 c4 10             	add    $0x10,%esp
 4001928:	83 ec 08             	sub    $0x8,%esp
 400192b:	56                   	push   %esi
 400192c:	50                   	push   %eax
 400192d:	e8 ce 1b 00 00       	call   4003500 <ungetc>
 4001932:	83 c4 10             	add    $0x10,%esp
 4001935:	89 9d 78 fd ff ff    	mov    %ebx,-0x288(%ebp)
 400193b:	f6 85 6c fd ff ff 08 	testb  $0x8,-0x294(%ebp)
 4001942:	0f 84 68 03 00 00    	je     4001cb0 <__svfscanf+0xb98>
 4001948:	8b 95 78 fd ff ff    	mov    -0x288(%ebp),%edx
 400194e:	8d 85 8a fe ff ff    	lea    -0x176(%ebp),%eax
 4001954:	29 c2                	sub    %eax,%edx
 4001956:	01 d7                	add    %edx,%edi
 4001958:	e9 4b fd ff ff       	jmp    40016a8 <__svfscanf+0x590>
 400195d:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 4001963:	85 c0                	test   %eax,%eax
 4001965:	75 0a                	jne    4001971 <__svfscanf+0x859>
 4001967:	c7 85 78 fd ff ff ff 	movl   $0xffffffff,-0x288(%ebp)
 400196e:	ff ff ff 
 4001971:	f6 85 6c fd ff ff 08 	testb  $0x8,-0x294(%ebp)
 4001978:	0f 84 41 02 00 00    	je     4001bbf <__svfscanf+0xaa7>
 400197e:	31 db                	xor    %ebx,%ebx
 4001980:	89 bd 6c fd ff ff    	mov    %edi,-0x294(%ebp)
 4001986:	8b bd 78 fd ff ff    	mov    -0x288(%ebp),%edi
 400198c:	88 d0                	mov    %dl,%al
 400198e:	eb 09                	jmp    4001999 <__svfscanf+0x881>
 4001990:	0f b6 01             	movzbl (%ecx),%eax
 4001993:	8a 80 61 48 00 04    	mov    0x4004861(%eax),%al
 4001999:	a8 08                	test   $0x8,%al
 400199b:	0f 85 b4 02 00 00    	jne    4001c55 <__svfscanf+0xb3d>
 40019a1:	43                   	inc    %ebx
 40019a2:	8b 46 04             	mov    0x4(%esi),%eax
 40019a5:	48                   	dec    %eax
 40019a6:	89 46 04             	mov    %eax,0x4(%esi)
 40019a9:	41                   	inc    %ecx
 40019aa:	89 0e                	mov    %ecx,(%esi)
 40019ac:	39 df                	cmp    %ebx,%edi
 40019ae:	0f 84 a1 02 00 00    	je     4001c55 <__svfscanf+0xb3d>
 40019b4:	85 c0                	test   %eax,%eax
 40019b6:	7f d8                	jg     4001990 <__svfscanf+0x878>
 40019b8:	83 ec 0c             	sub    $0xc,%esp
 40019bb:	56                   	push   %esi
 40019bc:	e8 9f ed ff ff       	call   4000760 <__srefill>
 40019c1:	83 c4 10             	add    $0x10,%esp
 40019c4:	85 c0                	test   %eax,%eax
 40019c6:	0f 85 89 02 00 00    	jne    4001c55 <__svfscanf+0xb3d>
 40019cc:	8b 0e                	mov    (%esi),%ecx
 40019ce:	eb c0                	jmp    4001990 <__svfscanf+0x878>
 40019d0:	8b 9d 6c fd ff ff    	mov    -0x294(%ebp),%ebx
 40019d6:	81 cb c0 02 00 00    	or     $0x2c0,%ebx
 40019dc:	89 9d 6c fd ff ff    	mov    %ebx,-0x294(%ebp)
 40019e2:	8d 9d 8a fe ff ff    	lea    -0x176(%ebp),%ebx
 40019e8:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 40019ee:	8d 50 ff             	lea    -0x1(%eax),%edx
 40019f1:	81 fa 5c 01 00 00    	cmp    $0x15c,%edx
 40019f7:	76 05                	jbe    40019fe <__svfscanf+0x8e6>
 40019f9:	ba 5c 01 00 00       	mov    $0x15c,%edx
 40019fe:	8d 85 8a fe ff ff    	lea    -0x176(%ebp),%eax
 4001a04:	01 c2                	add    %eax,%edx
 4001a06:	89 95 78 fd ff ff    	mov    %edx,-0x288(%ebp)
 4001a0c:	89 bd 68 fd ff ff    	mov    %edi,-0x298(%ebp)
 4001a12:	8a 85 64 fd ff ff    	mov    -0x29c(%ebp),%al
 4001a18:	89 df                	mov    %ebx,%edi
 4001a1a:	8d 50 d5             	lea    -0x2b(%eax),%edx
 4001a1d:	80 fa 4d             	cmp    $0x4d,%dl
 4001a20:	77 24                	ja     4001a46 <__svfscanf+0x92e>
 4001a22:	0f b6 d2             	movzbl %dl,%edx
 4001a25:	ff 24 95 90 44 00 04 	jmp    *0x4004490(,%edx,4)
 4001a2c:	f7 85 6c fd ff ff 00 	testl  $0x100,-0x294(%ebp)
 4001a33:	01 00 00 
 4001a36:	74 0e                	je     4001a46 <__svfscanf+0x92e>
 4001a38:	8d 95 8b fe ff ff    	lea    -0x175(%ebp),%edx
 4001a3e:	39 d3                	cmp    %edx,%ebx
 4001a40:	0f 84 3e 03 00 00    	je     4001d84 <__svfscanf+0xc6c>
 4001a46:	89 bd 78 fd ff ff    	mov    %edi,-0x288(%ebp)
 4001a4c:	8b bd 68 fd ff ff    	mov    -0x298(%ebp),%edi
 4001a52:	f6 85 6c fd ff ff 80 	testb  $0x80,-0x294(%ebp)
 4001a59:	0f 85 c2 02 00 00    	jne    4001d21 <__svfscanf+0xc09>
 4001a5f:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 4001a65:	0f be 40 ff          	movsbl -0x1(%eax),%eax
 4001a69:	88 c2                	mov    %al,%dl
 4001a6b:	83 e2 df             	and    $0xffffffdf,%edx
 4001a6e:	80 fa 58             	cmp    $0x58,%dl
 4001a71:	75 13                	jne    4001a86 <__svfscanf+0x96e>
 4001a73:	ff 8d 78 fd ff ff    	decl   -0x288(%ebp)
 4001a79:	83 ec 08             	sub    $0x8,%esp
 4001a7c:	56                   	push   %esi
 4001a7d:	50                   	push   %eax
 4001a7e:	e8 7d 1a 00 00       	call   4003500 <ungetc>
 4001a83:	83 c4 10             	add    $0x10,%esp
 4001a86:	f6 85 6c fd ff ff 08 	testb  $0x8,-0x294(%ebp)
 4001a8d:	0f 85 b5 fe ff ff    	jne    4001948 <__svfscanf+0x830>
 4001a93:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 4001a99:	c6 00 00             	movb   $0x0,(%eax)
 4001a9c:	50                   	push   %eax
 4001a9d:	ff b5 74 fd ff ff    	pushl  -0x28c(%ebp)
 4001aa3:	6a 00                	push   $0x0
 4001aa5:	8d 85 8a fe ff ff    	lea    -0x176(%ebp),%eax
 4001aab:	50                   	push   %eax
 4001aac:	8b 85 70 fd ff ff    	mov    -0x290(%ebp),%eax
 4001ab2:	ff d0                	call   *%eax
 4001ab4:	83 c4 10             	add    $0x10,%esp
 4001ab7:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4001aba:	8b 13                	mov    (%ebx),%edx
 4001abc:	f6 85 6c fd ff ff 10 	testb  $0x10,-0x294(%ebp)
 4001ac3:	0f 85 20 02 00 00    	jne    4001ce9 <__svfscanf+0xbd1>
 4001ac9:	f6 85 6c fd ff ff 04 	testb  $0x4,-0x294(%ebp)
 4001ad0:	0f 84 13 02 00 00    	je     4001ce9 <__svfscanf+0xbd1>
 4001ad6:	66 89 02             	mov    %ax,(%edx)
 4001ad9:	89 d8                	mov    %ebx,%eax
 4001adb:	83 c0 04             	add    $0x4,%eax
 4001ade:	89 45 10             	mov    %eax,0x10(%ebp)
 4001ae1:	ff 85 7c fd ff ff    	incl   -0x284(%ebp)
 4001ae7:	e9 5c fe ff ff       	jmp    4001948 <__svfscanf+0x830>
 4001aec:	8b 95 6c fd ff ff    	mov    -0x294(%ebp),%edx
 4001af2:	f6 c2 40             	test   $0x40,%dl
 4001af5:	0f 84 4b ff ff ff    	je     4001a46 <__svfscanf+0x92e>
 4001afb:	83 e2 bf             	and    $0xffffffbf,%edx
 4001afe:	89 95 6c fd ff ff    	mov    %edx,-0x294(%ebp)
 4001b04:	8d 7b 01             	lea    0x1(%ebx),%edi
 4001b07:	88 03                	mov    %al,(%ebx)
 4001b09:	8b 46 04             	mov    0x4(%esi),%eax
 4001b0c:	48                   	dec    %eax
 4001b0d:	89 46 04             	mov    %eax,0x4(%esi)
 4001b10:	85 c0                	test   %eax,%eax
 4001b12:	0f 8e 71 01 00 00    	jle    4001c89 <__svfscanf+0xb71>
 4001b18:	41                   	inc    %ecx
 4001b19:	89 0e                	mov    %ecx,(%esi)
 4001b1b:	3b 9d 78 fd ff ff    	cmp    -0x288(%ebp),%ebx
 4001b21:	0f 84 76 01 00 00    	je     4001c9d <__svfscanf+0xb85>
 4001b27:	8b 0e                	mov    (%esi),%ecx
 4001b29:	8a 01                	mov    (%ecx),%al
 4001b2b:	89 fb                	mov    %edi,%ebx
 4001b2d:	e9 e6 fe ff ff       	jmp    4001a18 <__svfscanf+0x900>
 4001b32:	83 bd 74 fd ff ff 0a 	cmpl   $0xa,-0x28c(%ebp)
 4001b39:	0f 8e 07 ff ff ff    	jle    4001a46 <__svfscanf+0x92e>
 4001b3f:	81 a5 6c fd ff ff 3f 	andl   $0xfffffe3f,-0x294(%ebp)
 4001b46:	fe ff ff 
 4001b49:	eb b9                	jmp    4001b04 <__svfscanf+0x9ec>
 4001b4b:	8b 95 74 fd ff ff    	mov    -0x28c(%ebp),%edx
 4001b51:	0f bf 94 12 e0 45 00 	movswl 0x40045e0(%edx,%edx,1),%edx
 4001b58:	04 
 4001b59:	89 95 74 fd ff ff    	mov    %edx,-0x28c(%ebp)
 4001b5f:	83 fa 08             	cmp    $0x8,%edx
 4001b62:	7f db                	jg     4001b3f <__svfscanf+0xa27>
 4001b64:	e9 dd fe ff ff       	jmp    4001a46 <__svfscanf+0x92e>
 4001b69:	8d 76 00             	lea    0x0(%esi),%esi
 4001b6c:	8b bd 74 fd ff ff    	mov    -0x28c(%ebp),%edi
 4001b72:	0f bf bc 3f e0 45 00 	movswl 0x40045e0(%edi,%edi,1),%edi
 4001b79:	04 
 4001b7a:	89 bd 74 fd ff ff    	mov    %edi,-0x28c(%ebp)
 4001b80:	eb bd                	jmp    4001b3f <__svfscanf+0xa27>
 4001b82:	8b bd 74 fd ff ff    	mov    -0x28c(%ebp),%edi
 4001b88:	85 ff                	test   %edi,%edi
 4001b8a:	75 14                	jne    4001ba0 <__svfscanf+0xa88>
 4001b8c:	81 8d 6c fd ff ff 00 	orl    $0x100,-0x294(%ebp)
 4001b93:	01 00 00 
 4001b96:	c7 85 74 fd ff ff 08 	movl   $0x8,-0x28c(%ebp)
 4001b9d:	00 00 00 
 4001ba0:	8b bd 6c fd ff ff    	mov    -0x294(%ebp),%edi
 4001ba6:	f7 c7 00 02 00 00    	test   $0x200,%edi
 4001bac:	74 91                	je     4001b3f <__svfscanf+0xa27>
 4001bae:	81 e7 3f fd ff ff    	and    $0xfffffd3f,%edi
 4001bb4:	89 bd 6c fd ff ff    	mov    %edi,-0x294(%ebp)
 4001bba:	e9 45 ff ff ff       	jmp    4001b04 <__svfscanf+0x9ec>
 4001bbf:	8b 45 10             	mov    0x10(%ebp),%eax
 4001bc2:	83 c0 04             	add    $0x4,%eax
 4001bc5:	89 85 6c fd ff ff    	mov    %eax,-0x294(%ebp)
 4001bcb:	8b 45 10             	mov    0x10(%ebp),%eax
 4001bce:	8b 00                	mov    (%eax),%eax
 4001bd0:	89 85 68 fd ff ff    	mov    %eax,-0x298(%ebp)
 4001bd6:	8b 9d 78 fd ff ff    	mov    -0x288(%ebp),%ebx
 4001bdc:	01 c3                	add    %eax,%ebx
 4001bde:	89 9d 78 fd ff ff    	mov    %ebx,-0x288(%ebp)
 4001be4:	89 c3                	mov    %eax,%ebx
 4001be6:	89 bd 64 fd ff ff    	mov    %edi,-0x29c(%ebp)
 4001bec:	8b bd 78 fd ff ff    	mov    -0x288(%ebp),%edi
 4001bf2:	88 d0                	mov    %dl,%al
 4001bf4:	eb 0d                	jmp    4001c03 <__svfscanf+0xaeb>
 4001bf6:	66 90                	xchg   %ax,%ax
 4001bf8:	8b 0e                	mov    (%esi),%ecx
 4001bfa:	0f b6 01             	movzbl (%ecx),%eax
 4001bfd:	8a 80 61 48 00 04    	mov    0x4004861(%eax),%al
 4001c03:	a8 08                	test   $0x8,%al
 4001c05:	75 29                	jne    4001c30 <__svfscanf+0xb18>
 4001c07:	ff 4e 04             	decl   0x4(%esi)
 4001c0a:	43                   	inc    %ebx
 4001c0b:	8d 41 01             	lea    0x1(%ecx),%eax
 4001c0e:	89 06                	mov    %eax,(%esi)
 4001c10:	8a 01                	mov    (%ecx),%al
 4001c12:	88 43 ff             	mov    %al,-0x1(%ebx)
 4001c15:	39 df                	cmp    %ebx,%edi
 4001c17:	74 17                	je     4001c30 <__svfscanf+0xb18>
 4001c19:	8b 46 04             	mov    0x4(%esi),%eax
 4001c1c:	85 c0                	test   %eax,%eax
 4001c1e:	7f d8                	jg     4001bf8 <__svfscanf+0xae0>
 4001c20:	83 ec 0c             	sub    $0xc,%esp
 4001c23:	56                   	push   %esi
 4001c24:	e8 37 eb ff ff       	call   4000760 <__srefill>
 4001c29:	83 c4 10             	add    $0x10,%esp
 4001c2c:	85 c0                	test   %eax,%eax
 4001c2e:	74 c8                	je     4001bf8 <__svfscanf+0xae0>
 4001c30:	8b bd 64 fd ff ff    	mov    -0x29c(%ebp),%edi
 4001c36:	c6 03 00             	movb   $0x0,(%ebx)
 4001c39:	2b 9d 68 fd ff ff    	sub    -0x298(%ebp),%ebx
 4001c3f:	01 df                	add    %ebx,%edi
 4001c41:	ff 85 7c fd ff ff    	incl   -0x284(%ebp)
 4001c47:	8b 85 6c fd ff ff    	mov    -0x294(%ebp),%eax
 4001c4d:	89 45 10             	mov    %eax,0x10(%ebp)
 4001c50:	e9 53 f5 ff ff       	jmp    40011a8 <__svfscanf+0x90>
 4001c55:	8b bd 6c fd ff ff    	mov    -0x294(%ebp),%edi
 4001c5b:	01 df                	add    %ebx,%edi
 4001c5d:	e9 46 f5 ff ff       	jmp    40011a8 <__svfscanf+0x90>
 4001c62:	83 ec 0c             	sub    $0xc,%esp
 4001c65:	56                   	push   %esi
 4001c66:	e8 f5 ea ff ff       	call   4000760 <__srefill>
 4001c6b:	83 c4 10             	add    $0x10,%esp
 4001c6e:	85 c0                	test   %eax,%eax
 4001c70:	0f 84 0e fc ff ff    	je     4001884 <__svfscanf+0x76c>
 4001c76:	89 fa                	mov    %edi,%edx
 4001c78:	8b bd 68 fd ff ff    	mov    -0x298(%ebp),%edi
 4001c7e:	89 95 78 fd ff ff    	mov    %edx,-0x288(%ebp)
 4001c84:	e9 5b fc ff ff       	jmp    40018e4 <__svfscanf+0x7cc>
 4001c89:	83 ec 0c             	sub    $0xc,%esp
 4001c8c:	56                   	push   %esi
 4001c8d:	e8 ce ea ff ff       	call   4000760 <__srefill>
 4001c92:	83 c4 10             	add    $0x10,%esp
 4001c95:	85 c0                	test   %eax,%eax
 4001c97:	0f 84 7e fe ff ff    	je     4001b1b <__svfscanf+0xa03>
 4001c9d:	89 fa                	mov    %edi,%edx
 4001c9f:	8b bd 68 fd ff ff    	mov    -0x298(%ebp),%edi
 4001ca5:	89 95 78 fd ff ff    	mov    %edx,-0x288(%ebp)
 4001cab:	e9 a2 fd ff ff       	jmp    4001a52 <__svfscanf+0x93a>
 4001cb0:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 4001cb6:	c6 00 00             	movb   $0x0,(%eax)
 4001cb9:	83 ec 0c             	sub    $0xc,%esp
 4001cbc:	8d 85 8a fe ff ff    	lea    -0x176(%ebp),%eax
 4001cc2:	50                   	push   %eax
 4001cc3:	e8 94 11 00 00       	call   4002e5c <atof>
 4001cc8:	83 c4 10             	add    $0x10,%esp
 4001ccb:	8b 45 10             	mov    0x10(%ebp),%eax
 4001cce:	8b 00                	mov    (%eax),%eax
 4001cd0:	f6 85 6c fd ff ff 01 	testb  $0x1,-0x294(%ebp)
 4001cd7:	74 1f                	je     4001cf8 <__svfscanf+0xbe0>
 4001cd9:	dd 18                	fstpl  (%eax)
 4001cdb:	8b 45 10             	mov    0x10(%ebp),%eax
 4001cde:	83 c0 04             	add    $0x4,%eax
 4001ce1:	89 45 10             	mov    %eax,0x10(%ebp)
 4001ce4:	e9 f8 fd ff ff       	jmp    4001ae1 <__svfscanf+0x9c9>
 4001ce9:	89 02                	mov    %eax,(%edx)
 4001ceb:	89 d8                	mov    %ebx,%eax
 4001ced:	83 c0 04             	add    $0x4,%eax
 4001cf0:	89 45 10             	mov    %eax,0x10(%ebp)
 4001cf3:	e9 e9 fd ff ff       	jmp    4001ae1 <__svfscanf+0x9c9>
 4001cf8:	f6 85 6c fd ff ff 02 	testb  $0x2,-0x294(%ebp)
 4001cff:	74 10                	je     4001d11 <__svfscanf+0xbf9>
 4001d01:	db 38                	fstpt  (%eax)
 4001d03:	8b 45 10             	mov    0x10(%ebp),%eax
 4001d06:	83 c0 04             	add    $0x4,%eax
 4001d09:	89 45 10             	mov    %eax,0x10(%ebp)
 4001d0c:	e9 d0 fd ff ff       	jmp    4001ae1 <__svfscanf+0x9c9>
 4001d11:	d9 18                	fstps  (%eax)
 4001d13:	8b 45 10             	mov    0x10(%ebp),%eax
 4001d16:	83 c0 04             	add    $0x4,%eax
 4001d19:	89 45 10             	mov    %eax,0x10(%ebp)
 4001d1c:	e9 c0 fd ff ff       	jmp    4001ae1 <__svfscanf+0x9c9>
 4001d21:	8d bd 8a fe ff ff    	lea    -0x176(%ebp),%edi
 4001d27:	39 bd 78 fd ff ff    	cmp    %edi,-0x288(%ebp)
 4001d2d:	0f 86 92 f4 ff ff    	jbe    40011c5 <__svfscanf+0xad>
 4001d33:	52                   	push   %edx
 4001d34:	52                   	push   %edx
 4001d35:	56                   	push   %esi
 4001d36:	8b 85 78 fd ff ff    	mov    -0x288(%ebp),%eax
 4001d3c:	0f be 40 ff          	movsbl -0x1(%eax),%eax
 4001d40:	50                   	push   %eax
 4001d41:	e8 ba 17 00 00       	call   4003500 <ungetc>
 4001d46:	83 c4 10             	add    $0x10,%esp
 4001d49:	8b 85 7c fd ff ff    	mov    -0x284(%ebp),%eax
 4001d4f:	e9 77 f4 ff ff       	jmp    40011cb <__svfscanf+0xb3>
 4001d54:	8d bd 8a fe ff ff    	lea    -0x176(%ebp),%edi
 4001d5a:	39 f8                	cmp    %edi,%eax
 4001d5c:	0f 86 63 f4 ff ff    	jbe    40011c5 <__svfscanf+0xad>
 4001d62:	89 c3                	mov    %eax,%ebx
 4001d64:	4b                   	dec    %ebx
 4001d65:	83 ec 08             	sub    $0x8,%esp
 4001d68:	56                   	push   %esi
 4001d69:	0f be 03             	movsbl (%ebx),%eax
 4001d6c:	50                   	push   %eax
 4001d6d:	e8 8e 17 00 00       	call   4003500 <ungetc>
 4001d72:	83 c4 10             	add    $0x10,%esp
 4001d75:	8d 85 8a fe ff ff    	lea    -0x176(%ebp),%eax
 4001d7b:	39 c3                	cmp    %eax,%ebx
 4001d7d:	75 e5                	jne    4001d64 <__svfscanf+0xc4c>
 4001d7f:	e9 41 f4 ff ff       	jmp    40011c5 <__svfscanf+0xad>
 4001d84:	81 a5 6c fd ff ff ff 	andl   $0xfffffeff,-0x294(%ebp)
 4001d8b:	fe ff ff 
 4001d8e:	c7 85 74 fd ff ff 10 	movl   $0x10,-0x28c(%ebp)
 4001d95:	00 00 00 
 4001d98:	e9 67 fd ff ff       	jmp    4001b04 <__svfscanf+0x9ec>
 4001d9d:	66 90                	xchg   %ax,%ax
 4001d9f:	90                   	nop

04001da0 <fprintf>:
 4001da0:	55                   	push   %ebp
 4001da1:	89 e5                	mov    %esp,%ebp
 4001da3:	83 ec 0c             	sub    $0xc,%esp
 4001da6:	8d 45 10             	lea    0x10(%ebp),%eax
 4001da9:	50                   	push   %eax
 4001daa:	ff 75 0c             	pushl  0xc(%ebp)
 4001dad:	ff 75 08             	pushl  0x8(%ebp)
 4001db0:	e8 43 09 00 00       	call   40026f8 <vfprintf>
 4001db5:	c9                   	leave  
 4001db6:	c3                   	ret    
 4001db7:	90                   	nop

04001db8 <out_string>:
 4001db8:	55                   	push   %ebp
 4001db9:	89 e5                	mov    %esp,%ebp
 4001dbb:	57                   	push   %edi
 4001dbc:	56                   	push   %esi
 4001dbd:	53                   	push   %ebx
 4001dbe:	83 ec 1c             	sub    $0x1c,%esp
 4001dc1:	89 c6                	mov    %eax,%esi
 4001dc3:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 4001dc6:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 4001dc9:	8b 5d 14             	mov    0x14(%ebp),%ebx
 4001dcc:	8b 7d 0c             	mov    0xc(%ebp),%edi
 4001dcf:	85 ff                	test   %edi,%edi
 4001dd1:	74 06                	je     4001dd9 <out_string+0x21>
 4001dd3:	89 c8                	mov    %ecx,%eax
 4001dd5:	a8 02                	test   $0x2,%al
 4001dd7:	74 57                	je     4001e30 <out_string+0x78>
 4001dd9:	8b 45 10             	mov    0x10(%ebp),%eax
 4001ddc:	85 c0                	test   %eax,%eax
 4001dde:	74 13                	je     4001df3 <out_string+0x3b>
 4001de0:	83 ec 08             	sub    $0x8,%esp
 4001de3:	53                   	push   %ebx
 4001de4:	ff 75 10             	pushl  0x10(%ebp)
 4001de7:	e8 3c 18 00 00       	call   4003628 <fputs>
 4001dec:	83 c4 10             	add    $0x10,%esp
 4001def:	85 c0                	test   %eax,%eax
 4001df1:	75 2f                	jne    4001e22 <out_string+0x6a>
 4001df3:	31 ff                	xor    %edi,%edi
 4001df5:	8b 45 08             	mov    0x8(%ebp),%eax
 4001df8:	85 c0                	test   %eax,%eax
 4001dfa:	0f 8e ab 00 00 00    	jle    4001eab <out_string+0xf3>
 4001e00:	89 75 dc             	mov    %esi,-0x24(%ebp)
 4001e03:	8b 75 08             	mov    0x8(%ebp),%esi
 4001e06:	eb 09                	jmp    4001e11 <out_string+0x59>
 4001e08:	47                   	inc    %edi
 4001e09:	39 fe                	cmp    %edi,%esi
 4001e0b:	0f 84 97 00 00 00    	je     4001ea8 <out_string+0xf0>
 4001e11:	83 ec 08             	sub    $0x8,%esp
 4001e14:	53                   	push   %ebx
 4001e15:	6a 30                	push   $0x30
 4001e17:	e8 84 1c 00 00       	call   4003aa0 <fputc>
 4001e1c:	83 c4 10             	add    $0x10,%esp
 4001e1f:	40                   	inc    %eax
 4001e20:	75 e6                	jne    4001e08 <out_string+0x50>
 4001e22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4001e27:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4001e2a:	5b                   	pop    %ebx
 4001e2b:	5e                   	pop    %esi
 4001e2c:	5f                   	pop    %edi
 4001e2d:	5d                   	pop    %ebp
 4001e2e:	c3                   	ret    
 4001e2f:	90                   	nop
 4001e30:	8b 55 10             	mov    0x10(%ebp),%edx
 4001e33:	85 d2                	test   %edx,%edx
 4001e35:	0f 84 23 01 00 00    	je     4001f5e <out_string+0x1a6>
 4001e3b:	83 e0 40             	and    $0x40,%eax
 4001e3e:	89 45 dc             	mov    %eax,-0x24(%ebp)
 4001e41:	0f 85 eb 00 00 00    	jne    4001f32 <out_string+0x17a>
 4001e47:	8b 45 0c             	mov    0xc(%ebp),%eax
 4001e4a:	85 c0                	test   %eax,%eax
 4001e4c:	7e 92                	jle    4001de0 <out_string+0x28>
 4001e4e:	31 ff                	xor    %edi,%edi
 4001e50:	89 75 d8             	mov    %esi,-0x28(%ebp)
 4001e53:	8b 75 dc             	mov    -0x24(%ebp),%esi
 4001e56:	eb 17                	jmp    4001e6f <out_string+0xb7>
 4001e58:	83 ec 08             	sub    $0x8,%esp
 4001e5b:	53                   	push   %ebx
 4001e5c:	6a 30                	push   $0x30
 4001e5e:	e8 3d 1c 00 00       	call   4003aa0 <fputc>
 4001e63:	83 c4 10             	add    $0x10,%esp
 4001e66:	40                   	inc    %eax
 4001e67:	74 b9                	je     4001e22 <out_string+0x6a>
 4001e69:	47                   	inc    %edi
 4001e6a:	39 7d 0c             	cmp    %edi,0xc(%ebp)
 4001e6d:	7e 1b                	jle    4001e8a <out_string+0xd2>
 4001e6f:	85 f6                	test   %esi,%esi
 4001e71:	75 e5                	jne    4001e58 <out_string+0xa0>
 4001e73:	83 ec 08             	sub    $0x8,%esp
 4001e76:	53                   	push   %ebx
 4001e77:	6a 20                	push   $0x20
 4001e79:	e8 22 1c 00 00       	call   4003aa0 <fputc>
 4001e7e:	83 c4 10             	add    $0x10,%esp
 4001e81:	40                   	inc    %eax
 4001e82:	74 9e                	je     4001e22 <out_string+0x6a>
 4001e84:	47                   	inc    %edi
 4001e85:	39 7d 0c             	cmp    %edi,0xc(%ebp)
 4001e88:	7f e5                	jg     4001e6f <out_string+0xb7>
 4001e8a:	8b 75 d8             	mov    -0x28(%ebp),%esi
 4001e8d:	8b 45 10             	mov    0x10(%ebp),%eax
 4001e90:	85 c0                	test   %eax,%eax
 4001e92:	0f 84 5b ff ff ff    	je     4001df3 <out_string+0x3b>
 4001e98:	8b 45 dc             	mov    -0x24(%ebp),%eax
 4001e9b:	85 c0                	test   %eax,%eax
 4001e9d:	0f 85 50 ff ff ff    	jne    4001df3 <out_string+0x3b>
 4001ea3:	e9 38 ff ff ff       	jmp    4001de0 <out_string+0x28>
 4001ea8:	8b 75 dc             	mov    -0x24(%ebp),%esi
 4001eab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4001eae:	8d 3c 06             	lea    (%esi,%eax,1),%edi
 4001eb1:	85 c0                	test   %eax,%eax
 4001eb3:	7f 07                	jg     4001ebc <out_string+0x104>
 4001eb5:	eb 21                	jmp    4001ed8 <out_string+0x120>
 4001eb7:	90                   	nop
 4001eb8:	39 f7                	cmp    %esi,%edi
 4001eba:	74 1c                	je     4001ed8 <out_string+0x120>
 4001ebc:	46                   	inc    %esi
 4001ebd:	83 ec 08             	sub    $0x8,%esp
 4001ec0:	53                   	push   %ebx
 4001ec1:	0f be 46 ff          	movsbl -0x1(%esi),%eax
 4001ec5:	50                   	push   %eax
 4001ec6:	e8 d5 1b 00 00       	call   4003aa0 <fputc>
 4001ecb:	83 c4 10             	add    $0x10,%esp
 4001ece:	40                   	inc    %eax
 4001ecf:	75 e7                	jne    4001eb8 <out_string+0x100>
 4001ed1:	e9 4c ff ff ff       	jmp    4001e22 <out_string+0x6a>
 4001ed6:	66 90                	xchg   %ax,%ax
 4001ed8:	f6 45 e0 02          	testb  $0x2,-0x20(%ebp)
 4001edc:	74 2a                	je     4001f08 <out_string+0x150>
 4001ede:	8b 75 0c             	mov    0xc(%ebp),%esi
 4001ee1:	85 f6                	test   %esi,%esi
 4001ee3:	7e 23                	jle    4001f08 <out_string+0x150>
 4001ee5:	31 f6                	xor    %esi,%esi
 4001ee7:	8b 7d 0c             	mov    0xc(%ebp),%edi
 4001eea:	eb 05                	jmp    4001ef1 <out_string+0x139>
 4001eec:	46                   	inc    %esi
 4001eed:	39 f7                	cmp    %esi,%edi
 4001eef:	74 17                	je     4001f08 <out_string+0x150>
 4001ef1:	83 ec 08             	sub    $0x8,%esp
 4001ef4:	53                   	push   %ebx
 4001ef5:	6a 20                	push   $0x20
 4001ef7:	e8 a4 1b 00 00       	call   4003aa0 <fputc>
 4001efc:	83 c4 10             	add    $0x10,%esp
 4001eff:	40                   	inc    %eax
 4001f00:	75 ea                	jne    4001eec <out_string+0x134>
 4001f02:	e9 1b ff ff ff       	jmp    4001e22 <out_string+0x6a>
 4001f07:	90                   	nop
 4001f08:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4001f0b:	03 45 08             	add    0x8(%ebp),%eax
 4001f0e:	03 45 0c             	add    0xc(%ebp),%eax
 4001f11:	89 c3                	mov    %eax,%ebx
 4001f13:	8b 7d 10             	mov    0x10(%ebp),%edi
 4001f16:	85 ff                	test   %edi,%edi
 4001f18:	74 3e                	je     4001f58 <out_string+0x1a0>
 4001f1a:	83 ec 0c             	sub    $0xc,%esp
 4001f1d:	ff 75 10             	pushl  0x10(%ebp)
 4001f20:	e8 1b 10 00 00       	call   4002f40 <strlen>
 4001f25:	83 c4 10             	add    $0x10,%esp
 4001f28:	01 d8                	add    %ebx,%eax
 4001f2a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4001f2d:	5b                   	pop    %ebx
 4001f2e:	5e                   	pop    %esi
 4001f2f:	5f                   	pop    %edi
 4001f30:	5d                   	pop    %ebp
 4001f31:	c3                   	ret    
 4001f32:	83 ec 08             	sub    $0x8,%esp
 4001f35:	53                   	push   %ebx
 4001f36:	ff 75 10             	pushl  0x10(%ebp)
 4001f39:	e8 ea 16 00 00       	call   4003628 <fputs>
 4001f3e:	83 c4 10             	add    $0x10,%esp
 4001f41:	40                   	inc    %eax
 4001f42:	0f 84 da fe ff ff    	je     4001e22 <out_string+0x6a>
 4001f48:	8b 55 0c             	mov    0xc(%ebp),%edx
 4001f4b:	85 d2                	test   %edx,%edx
 4001f4d:	0f 8f fb fe ff ff    	jg     4001e4e <out_string+0x96>
 4001f53:	e9 9b fe ff ff       	jmp    4001df3 <out_string+0x3b>
 4001f58:	31 c0                	xor    %eax,%eax
 4001f5a:	01 d8                	add    %ebx,%eax
 4001f5c:	eb cc                	jmp    4001f2a <out_string+0x172>
 4001f5e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4001f61:	85 c9                	test   %ecx,%ecx
 4001f63:	0f 8e 8a fe ff ff    	jle    4001df3 <out_string+0x3b>
 4001f69:	8b 45 e0             	mov    -0x20(%ebp),%eax
 4001f6c:	83 e0 40             	and    $0x40,%eax
 4001f6f:	89 45 dc             	mov    %eax,-0x24(%ebp)
 4001f72:	e9 d7 fe ff ff       	jmp    4001e4e <out_string+0x96>
 4001f77:	90                   	nop

04001f78 <_vfprintf_r>:
 4001f78:	55                   	push   %ebp
 4001f79:	89 e5                	mov    %esp,%ebp
 4001f7b:	57                   	push   %edi
 4001f7c:	56                   	push   %esi
 4001f7d:	53                   	push   %ebx
 4001f7e:	81 ec cc 00 00 00    	sub    $0xcc,%esp
 4001f84:	8b 7d 0c             	mov    0xc(%ebp),%edi
 4001f87:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4001f8a:	8b 47 54             	mov    0x54(%edi),%eax
 4001f8d:	85 c0                	test   %eax,%eax
 4001f8f:	0f 84 f6 05 00 00    	je     400258b <_vfprintf_r+0x613>
 4001f95:	8b 50 5c             	mov    0x5c(%eax),%edx
 4001f98:	85 d2                	test   %edx,%edx
 4001f9a:	0f 84 1a 05 00 00    	je     40024ba <_vfprintf_r+0x542>
 4001fa0:	c7 85 4c ff ff ff ff 	movl   $0xffffffff,-0xb4(%ebp)
 4001fa7:	ff ff ff 
 4001faa:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 4001fb1:	00 00 00 
 4001fb4:	31 c9                	xor    %ecx,%ecx
 4001fb6:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
 4001fbd:	00 00 00 
 4001fc0:	85 c9                	test   %ecx,%ecx
 4001fc2:	75 58                	jne    400201c <_vfprintf_r+0xa4>
 4001fc4:	0f be 13             	movsbl (%ebx),%edx
 4001fc7:	84 d2                	test   %dl,%dl
 4001fc9:	0f 84 0c 06 00 00    	je     40025db <_vfprintf_r+0x663>
 4001fcf:	80 fa 25             	cmp    $0x25,%dl
 4001fd2:	74 42                	je     4002016 <_vfprintf_r+0x9e>
 4001fd4:	8b b5 54 ff ff ff    	mov    -0xac(%ebp),%esi
 4001fda:	29 de                	sub    %ebx,%esi
 4001fdc:	eb 11                	jmp    4001fef <_vfprintf_r+0x77>
 4001fde:	66 90                	xchg   %ax,%ax
 4001fe0:	8d 04 33             	lea    (%ebx,%esi,1),%eax
 4001fe3:	0f be 13             	movsbl (%ebx),%edx
 4001fe6:	84 d2                	test   %dl,%dl
 4001fe8:	74 1b                	je     4002005 <_vfprintf_r+0x8d>
 4001fea:	80 fa 25             	cmp    $0x25,%dl
 4001fed:	74 21                	je     4002010 <_vfprintf_r+0x98>
 4001fef:	43                   	inc    %ebx
 4001ff0:	83 ec 08             	sub    $0x8,%esp
 4001ff3:	57                   	push   %edi
 4001ff4:	52                   	push   %edx
 4001ff5:	e8 a6 1a 00 00       	call   4003aa0 <fputc>
 4001ffa:	83 c4 10             	add    $0x10,%esp
 4001ffd:	40                   	inc    %eax
 4001ffe:	75 e0                	jne    4001fe0 <_vfprintf_r+0x68>
 4002000:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4002005:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4002008:	5b                   	pop    %ebx
 4002009:	5e                   	pop    %esi
 400200a:	5f                   	pop    %edi
 400200b:	5d                   	pop    %ebp
 400200c:	c3                   	ret    
 400200d:	8d 76 00             	lea    0x0(%esi),%esi
 4002010:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 4002016:	43                   	inc    %ebx
 4002017:	b9 01 00 00 00       	mov    $0x1,%ecx
 400201c:	8d 73 01             	lea    0x1(%ebx),%esi
 400201f:	8a 1b                	mov    (%ebx),%bl
 4002021:	80 fb 78             	cmp    $0x78,%bl
 4002024:	0f 87 96 00 00 00    	ja     40020c0 <_vfprintf_r+0x148>
 400202a:	0f b6 c3             	movzbl %bl,%eax
 400202d:	ff 24 85 18 46 00 04 	jmp    *0x4004618(,%eax,4)
 4002034:	8b 45 14             	mov    0x14(%ebp),%eax
 4002037:	83 c0 04             	add    $0x4,%eax
 400203a:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
 4002040:	52                   	push   %edx
 4002041:	6a 78                	push   $0x78
 4002043:	8b 45 14             	mov    0x14(%ebp),%eax
 4002046:	ff 30                	pushl  (%eax)
 4002048:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
 400204e:	50                   	push   %eax
 400204f:	e8 7c 11 00 00       	call   40031d0 <_icvt>
 4002054:	89 c3                	mov    %eax,%ebx
 4002056:	83 c4 10             	add    $0x10,%esp
 4002059:	85 c0                	test   %eax,%eax
 400205b:	0f 84 10 05 00 00    	je     4002571 <_vfprintf_r+0x5f9>
 4002061:	83 ec 0c             	sub    $0xc,%esp
 4002064:	50                   	push   %eax
 4002065:	e8 d6 0e 00 00       	call   4002f40 <strlen>
 400206a:	89 c2                	mov    %eax,%edx
 400206c:	83 c4 10             	add    $0x10,%esp
 400206f:	83 f8 07             	cmp    $0x7,%eax
 4002072:	0f 8e 16 06 00 00    	jle    400268e <_vfprintf_r+0x716>
 4002078:	31 c0                	xor    %eax,%eax
 400207a:	57                   	push   %edi
 400207b:	68 10 46 00 04       	push   $0x4004610
 4002080:	6a 00                	push   $0x0
 4002082:	50                   	push   %eax
 4002083:	b9 40 00 00 00       	mov    $0x40,%ecx
 4002088:	89 d8                	mov    %ebx,%eax
 400208a:	e8 29 fd ff ff       	call   4001db8 <out_string>
 400208f:	83 c4 10             	add    $0x10,%esp
 4002092:	83 f8 ff             	cmp    $0xffffffff,%eax
 4002095:	0f 84 65 ff ff ff    	je     4002000 <_vfprintf_r+0x88>
 400209b:	01 85 54 ff ff ff    	add    %eax,-0xac(%ebp)
 40020a1:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 40020a7:	89 45 14             	mov    %eax,0x14(%ebp)
 40020aa:	c7 85 4c ff ff ff ff 	movl   $0xffffffff,-0xb4(%ebp)
 40020b1:	ff ff ff 
 40020b4:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 40020bb:	00 00 00 
 40020be:	31 c9                	xor    %ecx,%ecx
 40020c0:	89 f3                	mov    %esi,%ebx
 40020c2:	e9 f9 fe ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 40020c7:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 40020cd:	85 c0                	test   %eax,%eax
 40020cf:	0f 84 82 04 00 00    	je     4002557 <_vfprintf_r+0x5df>
 40020d5:	f6 c1 20             	test   $0x20,%cl
 40020d8:	0f 85 ed 03 00 00    	jne    40024cb <_vfprintf_r+0x553>
 40020de:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 40020e4:	8d 04 80             	lea    (%eax,%eax,4),%eax
 40020e7:	0f be db             	movsbl %bl,%ebx
 40020ea:	8d 44 43 d0          	lea    -0x30(%ebx,%eax,2),%eax
 40020ee:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
 40020f4:	89 f3                	mov    %esi,%ebx
 40020f6:	e9 c5 fe ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 40020fb:	90                   	nop
 40020fc:	c7 85 4c ff ff ff ff 	movl   $0xffffffff,-0xb4(%ebp)
 4002103:	ff ff ff 
 4002106:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 400210d:	00 00 00 
 4002110:	31 c9                	xor    %ecx,%ecx
 4002112:	89 f3                	mov    %esi,%ebx
 4002114:	e9 a7 fe ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 4002119:	83 c9 20             	or     $0x20,%ecx
 400211c:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
 4002123:	00 00 00 
 4002126:	89 f3                	mov    %esi,%ebx
 4002128:	e9 93 fe ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 400212d:	83 c9 02             	or     $0x2,%ecx
 4002130:	89 f3                	mov    %esi,%ebx
 4002132:	e9 89 fe ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 4002137:	83 c9 04             	or     $0x4,%ecx
 400213a:	89 f3                	mov    %esi,%ebx
 400213c:	e9 7f fe ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 4002141:	8b 45 14             	mov    0x14(%ebp),%eax
 4002144:	83 c0 04             	add    $0x4,%eax
 4002147:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 400214d:	8b 45 14             	mov    0x14(%ebp),%eax
 4002150:	8b 18                	mov    (%eax),%ebx
 4002152:	85 db                	test   %ebx,%ebx
 4002154:	0f 84 54 05 00 00    	je     40026ae <_vfprintf_r+0x736>
 400215a:	89 8d 44 ff ff ff    	mov    %ecx,-0xbc(%ebp)
 4002160:	83 ec 0c             	sub    $0xc,%esp
 4002163:	53                   	push   %ebx
 4002164:	e8 d7 0d 00 00       	call   4002f40 <strlen>
 4002169:	83 c4 10             	add    $0x10,%esp
 400216c:	8b 95 4c ff ff ff    	mov    -0xb4(%ebp),%edx
 4002172:	89 d1                	mov    %edx,%ecx
 4002174:	41                   	inc    %ecx
 4002175:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
 400217b:	74 06                	je     4002183 <_vfprintf_r+0x20b>
 400217d:	39 d0                	cmp    %edx,%eax
 400217f:	7e 02                	jle    4002183 <_vfprintf_r+0x20b>
 4002181:	89 d0                	mov    %edx,%eax
 4002183:	8b 95 50 ff ff ff    	mov    -0xb0(%ebp),%edx
 4002189:	39 c2                	cmp    %eax,%edx
 400218b:	0f 8f d9 03 00 00    	jg     400256a <_vfprintf_r+0x5f2>
 4002191:	31 d2                	xor    %edx,%edx
 4002193:	57                   	push   %edi
 4002194:	68 53 48 00 04       	push   $0x4004853
 4002199:	52                   	push   %edx
 400219a:	6a 00                	push   $0x0
 400219c:	89 c2                	mov    %eax,%edx
 400219e:	89 d8                	mov    %ebx,%eax
 40021a0:	e8 13 fc ff ff       	call   4001db8 <out_string>
 40021a5:	83 c4 10             	add    $0x10,%esp
 40021a8:	83 f8 ff             	cmp    $0xffffffff,%eax
 40021ab:	0f 84 4f fe ff ff    	je     4002000 <_vfprintf_r+0x88>
 40021b1:	01 85 54 ff ff ff    	add    %eax,-0xac(%ebp)
 40021b7:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 40021bd:	89 45 14             	mov    %eax,0x14(%ebp)
 40021c0:	c7 85 4c ff ff ff ff 	movl   $0xffffffff,-0xb4(%ebp)
 40021c7:	ff ff ff 
 40021ca:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 40021d1:	00 00 00 
 40021d4:	31 c9                	xor    %ecx,%ecx
 40021d6:	89 f3                	mov    %esi,%ebx
 40021d8:	e9 e3 fd ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 40021dd:	8b 45 14             	mov    0x14(%ebp),%eax
 40021e0:	8b 00                	mov    (%eax),%eax
 40021e2:	81 e1 80 00 00 00    	and    $0x80,%ecx
 40021e8:	0f 85 fa 02 00 00    	jne    40024e8 <_vfprintf_r+0x570>
 40021ee:	8b 8d 54 ff ff ff    	mov    -0xac(%ebp),%ecx
 40021f4:	89 08                	mov    %ecx,(%eax)
 40021f6:	8b 45 14             	mov    0x14(%ebp),%eax
 40021f9:	83 c0 04             	add    $0x4,%eax
 40021fc:	89 45 14             	mov    %eax,0x14(%ebp)
 40021ff:	c7 85 4c ff ff ff ff 	movl   $0xffffffff,-0xb4(%ebp)
 4002206:	ff ff ff 
 4002209:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 4002210:	00 00 00 
 4002213:	31 c9                	xor    %ecx,%ecx
 4002215:	89 f3                	mov    %esi,%ebx
 4002217:	e9 a4 fd ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 400221c:	80 cd 01             	or     $0x1,%ch
 400221f:	89 f3                	mov    %esi,%ebx
 4002221:	e9 9a fd ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 4002226:	80 c9 80             	or     $0x80,%cl
 4002229:	89 f3                	mov    %esi,%ebx
 400222b:	e9 90 fd ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 4002230:	8b 45 14             	mov    0x14(%ebp),%eax
 4002233:	8d 58 04             	lea    0x4(%eax),%ebx
 4002236:	8b 00                	mov    (%eax),%eax
 4002238:	88 85 67 ff ff ff    	mov    %al,-0x99(%ebp)
 400223e:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 4002244:	83 f8 01             	cmp    $0x1,%eax
 4002247:	0f 8e 37 03 00 00    	jle    4002584 <_vfprintf_r+0x60c>
 400224d:	48                   	dec    %eax
 400224e:	57                   	push   %edi
 400224f:	68 53 48 00 04       	push   $0x4004853
 4002254:	50                   	push   %eax
 4002255:	6a 00                	push   $0x0
 4002257:	ba 01 00 00 00       	mov    $0x1,%edx
 400225c:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
 4002262:	e8 51 fb ff ff       	call   4001db8 <out_string>
 4002267:	83 c4 10             	add    $0x10,%esp
 400226a:	83 f8 ff             	cmp    $0xffffffff,%eax
 400226d:	0f 84 8d fd ff ff    	je     4002000 <_vfprintf_r+0x88>
 4002273:	01 85 54 ff ff ff    	add    %eax,-0xac(%ebp)
 4002279:	89 5d 14             	mov    %ebx,0x14(%ebp)
 400227c:	c7 85 4c ff ff ff ff 	movl   $0xffffffff,-0xb4(%ebp)
 4002283:	ff ff ff 
 4002286:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 400228d:	00 00 00 
 4002290:	31 c9                	xor    %ecx,%ecx
 4002292:	89 f3                	mov    %esi,%ebx
 4002294:	e9 27 fd ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 4002299:	8b 45 14             	mov    0x14(%ebp),%eax
 400229c:	f6 c5 02             	test   $0x2,%ch
 400229f:	0f 85 64 02 00 00    	jne    4002509 <_vfprintf_r+0x591>
 40022a5:	8b 00                	mov    (%eax),%eax
 40022a7:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%ebp)
 40022ad:	8b 45 14             	mov    0x14(%ebp),%eax
 40022b0:	83 c0 04             	add    $0x4,%eax
 40022b3:	89 45 14             	mov    %eax,0x14(%ebp)
 40022b6:	8b 85 34 ff ff ff    	mov    -0xcc(%ebp),%eax
 40022bc:	31 d2                	xor    %edx,%edx
 40022be:	85 c0                	test   %eax,%eax
 40022c0:	0f 9f c2             	setg   %dl
 40022c3:	c1 e8 1f             	shr    $0x1f,%eax
 40022c6:	29 c2                	sub    %eax,%edx
 40022c8:	89 95 40 ff ff ff    	mov    %edx,-0xc0(%ebp)
 40022ce:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 40022d4:	83 f8 ff             	cmp    $0xffffffff,%eax
 40022d7:	0f 84 3b 03 00 00    	je     4002618 <_vfprintf_r+0x6a0>
 40022dd:	83 e1 bf             	and    $0xffffffbf,%ecx
 40022e0:	85 c0                	test   %eax,%eax
 40022e2:	75 0e                	jne    40022f2 <_vfprintf_r+0x37a>
 40022e4:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
 40022ea:	85 c0                	test   %eax,%eax
 40022ec:	0f 84 0a fe ff ff    	je     40020fc <_vfprintf_r+0x184>
 40022f2:	89 8d 48 ff ff ff    	mov    %ecx,-0xb8(%ebp)
 40022f8:	f6 c1 80             	test   $0x80,%cl
 40022fb:	0f 85 60 03 00 00    	jne    4002661 <_vfprintf_r+0x6e9>
 4002301:	80 e5 02             	and    $0x2,%ch
 4002304:	0f 84 1d 03 00 00    	je     4002627 <_vfprintf_r+0x6af>
 400230a:	0f be c3             	movsbl %bl,%eax
 400230d:	50                   	push   %eax
 400230e:	ff b5 3c ff ff ff    	pushl  -0xc4(%ebp)
 4002314:	ff b5 38 ff ff ff    	pushl  -0xc8(%ebp)
 400231a:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
 4002320:	50                   	push   %eax
 4002321:	e8 86 0e 00 00       	call   40031ac <_llicvt>
 4002326:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 400232c:	83 c4 10             	add    $0x10,%esp
 400232f:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 4002335:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 400233b:	85 c0                	test   %eax,%eax
 400233d:	0f 84 0f 03 00 00    	je     4002652 <_vfprintf_r+0x6da>
 4002343:	89 8d 30 ff ff ff    	mov    %ecx,-0xd0(%ebp)
 4002349:	83 ec 0c             	sub    $0xc,%esp
 400234c:	50                   	push   %eax
 400234d:	e8 ee 0b 00 00       	call   4002f40 <strlen>
 4002352:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 4002358:	83 c4 10             	add    $0x10,%esp
 400235b:	8b 8d 30 ff ff ff    	mov    -0xd0(%ebp),%ecx
 4002361:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 4002367:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
 400236d:	39 c2                	cmp    %eax,%edx
 400236f:	0f 8d 32 02 00 00    	jge    40025a7 <_vfprintf_r+0x62f>
 4002375:	29 d0                	sub    %edx,%eax
 4002377:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 400237d:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 4002383:	03 85 48 ff ff ff    	add    -0xb8(%ebp),%eax
 4002389:	8b 95 50 ff ff ff    	mov    -0xb0(%ebp),%edx
 400238f:	39 c2                	cmp    %eax,%edx
 4002391:	0f 8e 01 02 00 00    	jle    4002598 <_vfprintf_r+0x620>
 4002397:	89 d0                	mov    %edx,%eax
 4002399:	2b 85 48 ff ff ff    	sub    -0xb8(%ebp),%eax
 400239f:	89 c2                	mov    %eax,%edx
 40023a1:	2b 95 4c ff ff ff    	sub    -0xb4(%ebp),%edx
 40023a7:	89 95 50 ff ff ff    	mov    %edx,-0xb0(%ebp)
 40023ad:	80 fb 64             	cmp    $0x64,%bl
 40023b0:	0f 84 00 02 00 00    	je     40025b6 <_vfprintf_r+0x63e>
 40023b6:	80 fb 69             	cmp    $0x69,%bl
 40023b9:	0f 84 f7 01 00 00    	je     40025b6 <_vfprintf_r+0x63e>
 40023bf:	f6 c1 10             	test   $0x10,%cl
 40023c2:	0f 84 1e 02 00 00    	je     40025e6 <_vfprintf_r+0x66e>
 40023c8:	80 fb 6f             	cmp    $0x6f,%bl
 40023cb:	0f 84 d3 02 00 00    	je     40026a4 <_vfprintf_r+0x72c>
 40023d1:	80 fb 78             	cmp    $0x78,%bl
 40023d4:	0f 84 11 03 00 00    	je     40026eb <_vfprintf_r+0x773>
 40023da:	80 fb 58             	cmp    $0x58,%bl
 40023dd:	0f 85 03 02 00 00    	jne    40025e6 <_vfprintf_r+0x66e>
 40023e3:	bb 09 46 00 04       	mov    $0x4004609,%ebx
 40023e8:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 40023ee:	85 c0                	test   %eax,%eax
 40023f0:	0f 84 f2 01 00 00    	je     40025e8 <_vfprintf_r+0x670>
 40023f6:	89 8d 40 ff ff ff    	mov    %ecx,-0xc0(%ebp)
 40023fc:	83 ec 0c             	sub    $0xc,%esp
 40023ff:	53                   	push   %ebx
 4002400:	e8 3b 0b 00 00       	call   4002f40 <strlen>
 4002405:	29 85 50 ff ff ff    	sub    %eax,-0xb0(%ebp)
 400240b:	83 c4 10             	add    $0x10,%esp
 400240e:	8b 8d 40 ff ff ff    	mov    -0xc0(%ebp),%ecx
 4002414:	e9 cf 01 00 00       	jmp    40025e8 <_vfprintf_r+0x670>
 4002419:	80 cd 02             	or     $0x2,%ch
 400241c:	89 f3                	mov    %esi,%ebx
 400241e:	e9 9d fb ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 4002423:	8b 45 14             	mov    0x14(%ebp),%eax
 4002426:	f6 c1 20             	test   $0x20,%cl
 4002429:	0f 85 c7 00 00 00    	jne    40024f6 <_vfprintf_r+0x57e>
 400242f:	83 c0 04             	add    $0x4,%eax
 4002432:	8b 5d 14             	mov    0x14(%ebp),%ebx
 4002435:	8b 1b                	mov    (%ebx),%ebx
 4002437:	89 9d 50 ff ff ff    	mov    %ebx,-0xb0(%ebp)
 400243d:	85 db                	test   %ebx,%ebx
 400243f:	0f 88 73 02 00 00    	js     40026b8 <_vfprintf_r+0x740>
 4002445:	89 45 14             	mov    %eax,0x14(%ebp)
 4002448:	89 f3                	mov    %esi,%ebx
 400244a:	e9 71 fb ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 400244f:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 4002455:	83 f8 01             	cmp    $0x1,%eax
 4002458:	0f 8e 1f 01 00 00    	jle    400257d <_vfprintf_r+0x605>
 400245e:	48                   	dec    %eax
 400245f:	57                   	push   %edi
 4002460:	68 53 48 00 04       	push   $0x4004853
 4002465:	50                   	push   %eax
 4002466:	6a 00                	push   $0x0
 4002468:	ba 01 00 00 00       	mov    $0x1,%edx
 400246d:	b8 13 46 00 04       	mov    $0x4004613,%eax
 4002472:	e8 41 f9 ff ff       	call   4001db8 <out_string>
 4002477:	83 c4 10             	add    $0x10,%esp
 400247a:	83 f8 ff             	cmp    $0xffffffff,%eax
 400247d:	0f 84 7d fb ff ff    	je     4002000 <_vfprintf_r+0x88>
 4002483:	01 85 54 ff ff ff    	add    %eax,-0xac(%ebp)
 4002489:	c7 85 4c ff ff ff ff 	movl   $0xffffffff,-0xb4(%ebp)
 4002490:	ff ff ff 
 4002493:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 400249a:	00 00 00 
 400249d:	31 c9                	xor    %ecx,%ecx
 400249f:	89 f3                	mov    %esi,%ebx
 40024a1:	e9 1a fb ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 40024a6:	83 c9 10             	or     $0x10,%ecx
 40024a9:	89 f3                	mov    %esi,%ebx
 40024ab:	e9 10 fb ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 40024b0:	83 c9 08             	or     $0x8,%ecx
 40024b3:	89 f3                	mov    %esi,%ebx
 40024b5:	e9 06 fb ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 40024ba:	83 ec 0c             	sub    $0xc,%esp
 40024bd:	50                   	push   %eax
 40024be:	e8 29 e9 ff ff       	call   4000dec <__sinit>
 40024c3:	83 c4 10             	add    $0x10,%esp
 40024c6:	e9 d5 fa ff ff       	jmp    4001fa0 <_vfprintf_r+0x28>
 40024cb:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 40024d1:	8d 04 80             	lea    (%eax,%eax,4),%eax
 40024d4:	0f be db             	movsbl %bl,%ebx
 40024d7:	8d 44 43 d0          	lea    -0x30(%ebx,%eax,2),%eax
 40024db:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 40024e1:	89 f3                	mov    %esi,%ebx
 40024e3:	e9 d8 fa ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 40024e8:	8b 8d 54 ff ff ff    	mov    -0xac(%ebp),%ecx
 40024ee:	66 89 08             	mov    %cx,(%eax)
 40024f1:	e9 00 fd ff ff       	jmp    40021f6 <_vfprintf_r+0x27e>
 40024f6:	8b 00                	mov    (%eax),%eax
 40024f8:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 40024fe:	8b 45 14             	mov    0x14(%ebp),%eax
 4002501:	83 c0 04             	add    $0x4,%eax
 4002504:	e9 3c ff ff ff       	jmp    4002445 <_vfprintf_r+0x4cd>
 4002509:	83 c0 08             	add    $0x8,%eax
 400250c:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 4002512:	8b 45 14             	mov    0x14(%ebp),%eax
 4002515:	8b 50 04             	mov    0x4(%eax),%edx
 4002518:	8b 00                	mov    (%eax),%eax
 400251a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 4002520:	89 95 3c ff ff ff    	mov    %edx,-0xc4(%ebp)
 4002526:	ba 01 00 00 00       	mov    $0x1,%edx
 400252b:	83 bd 3c ff ff ff 00 	cmpl   $0x0,-0xc4(%ebp)
 4002532:	0f 8e 9d 01 00 00    	jle    40026d5 <_vfprintf_r+0x75d>
 4002538:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 400253e:	c1 e8 1f             	shr    $0x1f,%eax
 4002541:	29 c2                	sub    %eax,%edx
 4002543:	89 95 40 ff ff ff    	mov    %edx,-0xc0(%ebp)
 4002549:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 400254f:	89 45 14             	mov    %eax,0x14(%ebp)
 4002552:	e9 77 fd ff ff       	jmp    40022ce <_vfprintf_r+0x356>
 4002557:	f6 c1 20             	test   $0x20,%cl
 400255a:	0f 85 6b ff ff ff    	jne    40024cb <_vfprintf_r+0x553>
 4002560:	83 c9 40             	or     $0x40,%ecx
 4002563:	89 f3                	mov    %esi,%ebx
 4002565:	e9 56 fa ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 400256a:	29 c2                	sub    %eax,%edx
 400256c:	e9 22 fc ff ff       	jmp    4002193 <_vfprintf_r+0x21b>
 4002571:	b8 08 00 00 00       	mov    $0x8,%eax
 4002576:	31 d2                	xor    %edx,%edx
 4002578:	e9 fd fa ff ff       	jmp    400207a <_vfprintf_r+0x102>
 400257d:	31 c0                	xor    %eax,%eax
 400257f:	e9 db fe ff ff       	jmp    400245f <_vfprintf_r+0x4e7>
 4002584:	31 c0                	xor    %eax,%eax
 4002586:	e9 c3 fc ff ff       	jmp    400224e <_vfprintf_r+0x2d6>
 400258b:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 4002590:	89 47 54             	mov    %eax,0x54(%edi)
 4002593:	e9 fd f9 ff ff       	jmp    4001f95 <_vfprintf_r+0x1d>
 4002598:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 400259f:	00 00 00 
 40025a2:	e9 06 fe ff ff       	jmp    40023ad <_vfprintf_r+0x435>
 40025a7:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
 40025ae:	00 00 00 
 40025b1:	e9 c7 fd ff ff       	jmp    400237d <_vfprintf_r+0x405>
 40025b6:	83 bd 40 ff ff ff ff 	cmpl   $0xffffffff,-0xc0(%ebp)
 40025bd:	0f 84 08 01 00 00    	je     40026cb <_vfprintf_r+0x753>
 40025c3:	f6 c1 04             	test   $0x4,%cl
 40025c6:	0f 85 ce 00 00 00    	jne    400269a <_vfprintf_r+0x722>
 40025cc:	f6 c1 08             	test   $0x8,%cl
 40025cf:	74 15                	je     40025e6 <_vfprintf_r+0x66e>
 40025d1:	bb 0c 46 00 04       	mov    $0x400460c,%ebx
 40025d6:	e9 0d fe ff ff       	jmp    40023e8 <_vfprintf_r+0x470>
 40025db:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 40025e1:	e9 1f fa ff ff       	jmp    4002005 <_vfprintf_r+0x8d>
 40025e6:	31 db                	xor    %ebx,%ebx
 40025e8:	57                   	push   %edi
 40025e9:	53                   	push   %ebx
 40025ea:	ff b5 50 ff ff ff    	pushl  -0xb0(%ebp)
 40025f0:	ff b5 4c ff ff ff    	pushl  -0xb4(%ebp)
 40025f6:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
 40025fc:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 4002602:	e8 b1 f7 ff ff       	call   4001db8 <out_string>
 4002607:	83 c4 10             	add    $0x10,%esp
 400260a:	83 f8 ff             	cmp    $0xffffffff,%eax
 400260d:	0f 85 70 fe ff ff    	jne    4002483 <_vfprintf_r+0x50b>
 4002613:	e9 e8 f9 ff ff       	jmp    4002000 <_vfprintf_r+0x88>
 4002618:	c7 85 4c ff ff ff 01 	movl   $0x1,-0xb4(%ebp)
 400261f:	00 00 00 
 4002622:	e9 cb fc ff ff       	jmp    40022f2 <_vfprintf_r+0x37a>
 4002627:	51                   	push   %ecx
 4002628:	0f be c3             	movsbl %bl,%eax
 400262b:	50                   	push   %eax
 400262c:	ff b5 34 ff ff ff    	pushl  -0xcc(%ebp)
 4002632:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
 4002638:	50                   	push   %eax
 4002639:	e8 92 0b 00 00       	call   40031d0 <_icvt>
 400263e:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 4002644:	83 c4 10             	add    $0x10,%esp
 4002647:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 400264d:	e9 e3 fc ff ff       	jmp    4002335 <_vfprintf_r+0x3bd>
 4002652:	c7 85 48 ff ff ff 00 	movl   $0x0,-0xb8(%ebp)
 4002659:	00 00 00 
 400265c:	e9 00 fd ff ff       	jmp    4002361 <_vfprintf_r+0x3e9>
 4002661:	50                   	push   %eax
 4002662:	0f be c3             	movsbl %bl,%eax
 4002665:	50                   	push   %eax
 4002666:	0f bf 85 34 ff ff ff 	movswl -0xcc(%ebp),%eax
 400266d:	50                   	push   %eax
 400266e:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
 4002674:	50                   	push   %eax
 4002675:	e8 8e 0c 00 00       	call   4003308 <_sicvt>
 400267a:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 4002680:	83 c4 10             	add    $0x10,%esp
 4002683:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 4002689:	e9 a7 fc ff ff       	jmp    4002335 <_vfprintf_r+0x3bd>
 400268e:	b8 08 00 00 00       	mov    $0x8,%eax
 4002693:	29 d0                	sub    %edx,%eax
 4002695:	e9 e0 f9 ff ff       	jmp    400207a <_vfprintf_r+0x102>
 400269a:	bb 41 41 00 04       	mov    $0x4004141,%ebx
 400269f:	e9 44 fd ff ff       	jmp    40023e8 <_vfprintf_r+0x470>
 40026a4:	bb 8b 41 00 04       	mov    $0x400418b,%ebx
 40026a9:	e9 3a fd ff ff       	jmp    40023e8 <_vfprintf_r+0x470>
 40026ae:	bb 02 46 00 04       	mov    $0x4004602,%ebx
 40026b3:	e9 a2 fa ff ff       	jmp    400215a <_vfprintf_r+0x1e2>
 40026b8:	83 c9 02             	or     $0x2,%ecx
 40026bb:	f7 9d 50 ff ff ff    	negl   -0xb0(%ebp)
 40026c1:	89 45 14             	mov    %eax,0x14(%ebp)
 40026c4:	89 f3                	mov    %esi,%ebx
 40026c6:	e9 f5 f8 ff ff       	jmp    4001fc0 <_vfprintf_r+0x48>
 40026cb:	bb 0e 46 00 04       	mov    $0x400460e,%ebx
 40026d0:	e9 13 fd ff ff       	jmp    40023e8 <_vfprintf_r+0x470>
 40026d5:	7c 0d                	jl     40026e4 <_vfprintf_r+0x76c>
 40026d7:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%ebp)
 40026de:	0f 87 54 fe ff ff    	ja     4002538 <_vfprintf_r+0x5c0>
 40026e4:	31 d2                	xor    %edx,%edx
 40026e6:	e9 4d fe ff ff       	jmp    4002538 <_vfprintf_r+0x5c0>
 40026eb:	bb 10 46 00 04       	mov    $0x4004610,%ebx
 40026f0:	e9 f3 fc ff ff       	jmp    40023e8 <_vfprintf_r+0x470>
 40026f5:	66 90                	xchg   %ax,%ax
 40026f7:	90                   	nop

040026f8 <vfprintf>:
 40026f8:	55                   	push   %ebp
 40026f9:	89 e5                	mov    %esp,%ebp
 40026fb:	83 ec 08             	sub    $0x8,%esp
 40026fe:	8b 45 08             	mov    0x8(%ebp),%eax
 4002701:	ff 75 10             	pushl  0x10(%ebp)
 4002704:	ff 75 0c             	pushl  0xc(%ebp)
 4002707:	50                   	push   %eax
 4002708:	ff 70 54             	pushl  0x54(%eax)
 400270b:	e8 68 f8 ff ff       	call   4001f78 <_vfprintf_r>
 4002710:	c9                   	leave  
 4002711:	c3                   	ret    
 4002712:	66 90                	xchg   %ax,%ax

04002714 <ftell>:
 4002714:	55                   	push   %ebp
 4002715:	89 e5                	mov    %esp,%ebp
 4002717:	53                   	push   %ebx
 4002718:	51                   	push   %ecx
 4002719:	8b 5d 08             	mov    0x8(%ebp),%ebx
 400271c:	8b 43 54             	mov    0x54(%ebx),%eax
 400271f:	85 c0                	test   %eax,%eax
 4002721:	74 71                	je     4002794 <ftell+0x80>
 4002723:	8b 50 5c             	mov    0x5c(%eax),%edx
 4002726:	85 d2                	test   %edx,%edx
 4002728:	74 42                	je     400276c <ftell+0x58>
 400272a:	8b 43 28             	mov    0x28(%ebx),%eax
 400272d:	85 c0                	test   %eax,%eax
 400272f:	74 76                	je     40027a7 <ftell+0x93>
 4002731:	8b 53 0c             	mov    0xc(%ebx),%edx
 4002734:	f6 c6 10             	test   $0x10,%dh
 4002737:	74 43                	je     400277c <ftell+0x68>
 4002739:	8b 43 50             	mov    0x50(%ebx),%eax
 400273c:	f6 c2 04             	test   $0x4,%dl
 400273f:	75 17                	jne    4002758 <ftell+0x44>
 4002741:	83 e2 08             	and    $0x8,%edx
 4002744:	74 0b                	je     4002751 <ftell+0x3d>
 4002746:	8b 13                	mov    (%ebx),%edx
 4002748:	85 d2                	test   %edx,%edx
 400274a:	74 05                	je     4002751 <ftell+0x3d>
 400274c:	2b 53 10             	sub    0x10(%ebx),%edx
 400274f:	01 d0                	add    %edx,%eax
 4002751:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4002754:	c9                   	leave  
 4002755:	c3                   	ret    
 4002756:	66 90                	xchg   %ax,%ax
 4002758:	2b 43 04             	sub    0x4(%ebx),%eax
 400275b:	8b 53 30             	mov    0x30(%ebx),%edx
 400275e:	85 d2                	test   %edx,%edx
 4002760:	74 ef                	je     4002751 <ftell+0x3d>
 4002762:	2b 43 3c             	sub    0x3c(%ebx),%eax
 4002765:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4002768:	c9                   	leave  
 4002769:	c3                   	ret    
 400276a:	66 90                	xchg   %ax,%ax
 400276c:	83 ec 0c             	sub    $0xc,%esp
 400276f:	50                   	push   %eax
 4002770:	e8 77 e6 ff ff       	call   4000dec <__sinit>
 4002775:	83 c4 10             	add    $0x10,%esp
 4002778:	eb b0                	jmp    400272a <ftell+0x16>
 400277a:	66 90                	xchg   %ax,%ax
 400277c:	51                   	push   %ecx
 400277d:	6a 01                	push   $0x1
 400277f:	6a 00                	push   $0x0
 4002781:	ff 73 1c             	pushl  0x1c(%ebx)
 4002784:	ff d0                	call   *%eax
 4002786:	83 c4 10             	add    $0x10,%esp
 4002789:	83 f8 ff             	cmp    $0xffffffff,%eax
 400278c:	74 12                	je     40027a0 <ftell+0x8c>
 400278e:	8b 53 0c             	mov    0xc(%ebx),%edx
 4002791:	eb a9                	jmp    400273c <ftell+0x28>
 4002793:	90                   	nop
 4002794:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 4002799:	89 43 54             	mov    %eax,0x54(%ebx)
 400279c:	eb 85                	jmp    4002723 <ftell+0xf>
 400279e:	66 90                	xchg   %ax,%ax
 40027a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 40027a5:	eb aa                	jmp    4002751 <ftell+0x3d>
 40027a7:	8b 43 54             	mov    0x54(%ebx),%eax
 40027aa:	c7 00 1d 00 00 00    	movl   $0x1d,(%eax)
 40027b0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 40027b5:	eb 9a                	jmp    4002751 <ftell+0x3d>
 40027b7:	90                   	nop

040027b8 <isatty>:
 40027b8:	55                   	push   %ebp
 40027b9:	89 e5                	mov    %esp,%ebp
 40027bb:	31 c0                	xor    %eax,%eax
 40027bd:	5d                   	pop    %ebp
 40027be:	c3                   	ret    
 40027bf:	90                   	nop

040027c0 <_strtoul_r>:
 40027c0:	55                   	push   %ebp
 40027c1:	89 e5                	mov    %esp,%ebp
 40027c3:	57                   	push   %edi
 40027c4:	56                   	push   %esi
 40027c5:	53                   	push   %ebx
 40027c6:	83 ec 1c             	sub    $0x1c,%esp
 40027c9:	8b 45 0c             	mov    0xc(%ebp),%eax
 40027cc:	85 c0                	test   %eax,%eax
 40027ce:	0f 84 a2 01 00 00    	je     4002976 <_strtoul_r+0x1b6>
 40027d4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 40027d7:	90                   	nop
 40027d8:	8a 19                	mov    (%ecx),%bl
 40027da:	80 fb 20             	cmp    $0x20,%bl
 40027dd:	0f 84 c5 00 00 00    	je     40028a8 <_strtoul_r+0xe8>
 40027e3:	8d 43 f7             	lea    -0x9(%ebx),%eax
 40027e6:	3c 04                	cmp    $0x4,%al
 40027e8:	0f 86 ba 00 00 00    	jbe    40028a8 <_strtoul_r+0xe8>
 40027ee:	80 fb 2d             	cmp    $0x2d,%bl
 40027f1:	0f 84 5a 01 00 00    	je     4002951 <_strtoul_r+0x191>
 40027f7:	80 fb 2b             	cmp    $0x2b,%bl
 40027fa:	0f 84 66 01 00 00    	je     4002966 <_strtoul_r+0x1a6>
 4002800:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 4002807:	8b 7d 14             	mov    0x14(%ebp),%edi
 400280a:	85 ff                	test   %edi,%edi
 400280c:	0f 84 ed 00 00 00    	je     40028ff <_strtoul_r+0x13f>
 4002812:	83 7d 14 10          	cmpl   $0x10,0x14(%ebp)
 4002816:	0f 84 78 01 00 00    	je     4002994 <_strtoul_r+0x1d4>
 400281c:	8b 45 14             	mov    0x14(%ebp),%eax
 400281f:	89 45 ec             	mov    %eax,-0x14(%ebp)
 4002822:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4002827:	31 d2                	xor    %edx,%edx
 4002829:	f7 75 14             	divl   0x14(%ebp)
 400282c:	89 55 dc             	mov    %edx,-0x24(%ebp)
 400282f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 4002832:	31 f6                	xor    %esi,%esi
 4002834:	0f be d3             	movsbl %bl,%edx
 4002837:	85 d2                	test   %edx,%edx
 4002839:	0f 84 ec 00 00 00    	je     400292b <_strtoul_r+0x16b>
 400283f:	31 ff                	xor    %edi,%edi
 4002841:	31 c0                	xor    %eax,%eax
 4002843:	8b 5d 14             	mov    0x14(%ebp),%ebx
 4002846:	83 c3 37             	add    $0x37,%ebx
 4002849:	89 5d e8             	mov    %ebx,-0x18(%ebp)
 400284c:	8b 5d 14             	mov    0x14(%ebp),%ebx
 400284f:	83 c3 57             	add    $0x57,%ebx
 4002852:	89 5d e0             	mov    %ebx,-0x20(%ebp)
 4002855:	8b 5d 14             	mov    0x14(%ebp),%ebx
 4002858:	83 c3 30             	add    $0x30,%ebx
 400285b:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
 400285e:	eb 19                	jmp    4002879 <_strtoul_r+0xb9>
 4002860:	0f 84 86 00 00 00    	je     40028ec <_strtoul_r+0x12c>
 4002866:	0f af 45 ec          	imul   -0x14(%ebp),%eax
 400286a:	01 d8                	add    %ebx,%eax
 400286c:	41                   	inc    %ecx
 400286d:	0f be 11             	movsbl (%ecx),%edx
 4002870:	be 01 00 00 00       	mov    $0x1,%esi
 4002875:	85 d2                	test   %edx,%edx
 4002877:	74 47                	je     40028c0 <_strtoul_r+0x100>
 4002879:	8d 5a d0             	lea    -0x30(%edx),%ebx
 400287c:	83 fb 09             	cmp    $0x9,%ebx
 400287f:	77 05                	ja     4002886 <_strtoul_r+0xc6>
 4002881:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
 4002884:	77 16                	ja     400289c <_strtoul_r+0xdc>
 4002886:	83 7d 14 0a          	cmpl   $0xa,0x14(%ebp)
 400288a:	7e 34                	jle    40028c0 <_strtoul_r+0x100>
 400288c:	83 fa 60             	cmp    $0x60,%edx
 400288f:	76 1f                	jbe    40028b0 <_strtoul_r+0xf0>
 4002891:	39 55 e0             	cmp    %edx,-0x20(%ebp)
 4002894:	76 1f                	jbe    40028b5 <_strtoul_r+0xf5>
 4002896:	8d 5a a9             	lea    -0x57(%edx),%ebx
 4002899:	8d 76 00             	lea    0x0(%esi),%esi
 400289c:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 400289f:	76 bf                	jbe    4002860 <_strtoul_r+0xa0>
 40028a1:	bf 01 00 00 00       	mov    $0x1,%edi
 40028a6:	eb be                	jmp    4002866 <_strtoul_r+0xa6>
 40028a8:	41                   	inc    %ecx
 40028a9:	e9 2a ff ff ff       	jmp    40027d8 <_strtoul_r+0x18>
 40028ae:	66 90                	xchg   %ax,%ax
 40028b0:	83 fa 40             	cmp    $0x40,%edx
 40028b3:	76 0b                	jbe    40028c0 <_strtoul_r+0x100>
 40028b5:	39 55 e8             	cmp    %edx,-0x18(%ebp)
 40028b8:	76 06                	jbe    40028c0 <_strtoul_r+0x100>
 40028ba:	8d 5a c9             	lea    -0x37(%edx),%ebx
 40028bd:	eb dd                	jmp    400289c <_strtoul_r+0xdc>
 40028bf:	90                   	nop
 40028c0:	85 ff                	test   %edi,%edi
 40028c2:	74 69                	je     400292d <_strtoul_r+0x16d>
 40028c4:	8b 45 08             	mov    0x8(%ebp),%eax
 40028c7:	c7 00 22 00 00 00    	movl   $0x22,(%eax)
 40028cd:	8b 75 10             	mov    0x10(%ebp),%esi
 40028d0:	85 f6                	test   %esi,%esi
 40028d2:	0f 84 20 01 00 00    	je     40029f8 <_strtoul_r+0x238>
 40028d8:	8b 45 10             	mov    0x10(%ebp),%eax
 40028db:	89 08                	mov    %ecx,(%eax)
 40028dd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 40028e2:	83 c4 1c             	add    $0x1c,%esp
 40028e5:	5b                   	pop    %ebx
 40028e6:	5e                   	pop    %esi
 40028e7:	5f                   	pop    %edi
 40028e8:	5d                   	pop    %ebp
 40028e9:	c3                   	ret    
 40028ea:	66 90                	xchg   %ax,%ax
 40028ec:	3b 5d dc             	cmp    -0x24(%ebp),%ebx
 40028ef:	0f 86 71 ff ff ff    	jbe    4002866 <_strtoul_r+0xa6>
 40028f5:	bf 01 00 00 00       	mov    $0x1,%edi
 40028fa:	e9 67 ff ff ff       	jmp    4002866 <_strtoul_r+0xa6>
 40028ff:	80 fb 30             	cmp    $0x30,%bl
 4002902:	0f 84 be 00 00 00    	je     40029c6 <_strtoul_r+0x206>
 4002908:	c7 45 dc 05 00 00 00 	movl   $0x5,-0x24(%ebp)
 400290f:	c7 45 f0 99 99 99 19 	movl   $0x19999999,-0x10(%ebp)
 4002916:	c7 45 ec 0a 00 00 00 	movl   $0xa,-0x14(%ebp)
 400291d:	31 f6                	xor    %esi,%esi
 400291f:	c7 45 14 0a 00 00 00 	movl   $0xa,0x14(%ebp)
 4002926:	e9 09 ff ff ff       	jmp    4002834 <_strtoul_r+0x74>
 400292b:	31 c0                	xor    %eax,%eax
 400292d:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4002930:	85 db                	test   %ebx,%ebx
 4002932:	74 0c                	je     4002940 <_strtoul_r+0x180>
 4002934:	85 f6                	test   %esi,%esi
 4002936:	75 29                	jne    4002961 <_strtoul_r+0x1a1>
 4002938:	8b 7d 10             	mov    0x10(%ebp),%edi
 400293b:	8b 75 0c             	mov    0xc(%ebp),%esi
 400293e:	89 37                	mov    %esi,(%edi)
 4002940:	8b 55 d8             	mov    -0x28(%ebp),%edx
 4002943:	85 d2                	test   %edx,%edx
 4002945:	74 9b                	je     40028e2 <_strtoul_r+0x122>
 4002947:	f7 d8                	neg    %eax
 4002949:	83 c4 1c             	add    $0x1c,%esp
 400294c:	5b                   	pop    %ebx
 400294d:	5e                   	pop    %esi
 400294e:	5f                   	pop    %edi
 400294f:	5d                   	pop    %ebp
 4002950:	c3                   	ret    
 4002951:	8a 59 01             	mov    0x1(%ecx),%bl
 4002954:	41                   	inc    %ecx
 4002955:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%ebp)
 400295c:	e9 a6 fe ff ff       	jmp    4002807 <_strtoul_r+0x47>
 4002961:	89 4d 0c             	mov    %ecx,0xc(%ebp)
 4002964:	eb d2                	jmp    4002938 <_strtoul_r+0x178>
 4002966:	8a 59 01             	mov    0x1(%ecx),%bl
 4002969:	41                   	inc    %ecx
 400296a:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 4002971:	e9 91 fe ff ff       	jmp    4002807 <_strtoul_r+0x47>
 4002976:	8b 45 08             	mov    0x8(%ebp),%eax
 4002979:	c7 00 22 00 00 00    	movl   $0x22,(%eax)
 400297f:	8b 45 10             	mov    0x10(%ebp),%eax
 4002982:	85 c0                	test   %eax,%eax
 4002984:	0f 84 94 00 00 00    	je     4002a1e <_strtoul_r+0x25e>
 400298a:	31 c0                	xor    %eax,%eax
 400298c:	83 c4 1c             	add    $0x1c,%esp
 400298f:	5b                   	pop    %ebx
 4002990:	5e                   	pop    %esi
 4002991:	5f                   	pop    %edi
 4002992:	5d                   	pop    %ebp
 4002993:	c3                   	ret    
 4002994:	80 fb 30             	cmp    $0x30,%bl
 4002997:	75 69                	jne    4002a02 <_strtoul_r+0x242>
 4002999:	8a 59 01             	mov    0x1(%ecx),%bl
 400299c:	88 d8                	mov    %bl,%al
 400299e:	83 e0 df             	and    $0xffffffdf,%eax
 40029a1:	3c 58                	cmp    $0x58,%al
 40029a3:	74 2a                	je     40029cf <_strtoul_r+0x20f>
 40029a5:	41                   	inc    %ecx
 40029a6:	8b 45 14             	mov    0x14(%ebp),%eax
 40029a9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 40029ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 40029b1:	31 d2                	xor    %edx,%edx
 40029b3:	f7 75 14             	divl   0x14(%ebp)
 40029b6:	89 55 dc             	mov    %edx,-0x24(%ebp)
 40029b9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 40029bc:	be 01 00 00 00       	mov    $0x1,%esi
 40029c1:	e9 6e fe ff ff       	jmp    4002834 <_strtoul_r+0x74>
 40029c6:	c7 45 14 08 00 00 00 	movl   $0x8,0x14(%ebp)
 40029cd:	eb ca                	jmp    4002999 <_strtoul_r+0x1d9>
 40029cf:	8a 59 02             	mov    0x2(%ecx),%bl
 40029d2:	83 c1 02             	add    $0x2,%ecx
 40029d5:	c7 45 dc 0f 00 00 00 	movl   $0xf,-0x24(%ebp)
 40029dc:	c7 45 f0 ff ff ff 0f 	movl   $0xfffffff,-0x10(%ebp)
 40029e3:	c7 45 ec 10 00 00 00 	movl   $0x10,-0x14(%ebp)
 40029ea:	31 f6                	xor    %esi,%esi
 40029ec:	c7 45 14 10 00 00 00 	movl   $0x10,0x14(%ebp)
 40029f3:	e9 3c fe ff ff       	jmp    4002834 <_strtoul_r+0x74>
 40029f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 40029fd:	e9 e0 fe ff ff       	jmp    40028e2 <_strtoul_r+0x122>
 4002a02:	c7 45 dc 0f 00 00 00 	movl   $0xf,-0x24(%ebp)
 4002a09:	c7 45 f0 ff ff ff 0f 	movl   $0xfffffff,-0x10(%ebp)
 4002a10:	c7 45 ec 10 00 00 00 	movl   $0x10,-0x14(%ebp)
 4002a17:	31 f6                	xor    %esi,%esi
 4002a19:	e9 16 fe ff ff       	jmp    4002834 <_strtoul_r+0x74>
 4002a1e:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 4002a25:	00 00 00 
 4002a28:	0f 0b                	ud2    
 4002a2a:	66 90                	xchg   %ax,%ax

04002a2c <strtoul>:
 4002a2c:	55                   	push   %ebp
 4002a2d:	89 e5                	mov    %esp,%ebp
 4002a2f:	ff 75 10             	pushl  0x10(%ebp)
 4002a32:	ff 75 0c             	pushl  0xc(%ebp)
 4002a35:	ff 75 08             	pushl  0x8(%ebp)
 4002a38:	ff 35 00 6c 00 04    	pushl  0x4006c00
 4002a3e:	e8 7d fd ff ff       	call   40027c0 <_strtoul_r>
 4002a43:	c9                   	leave  
 4002a44:	c3                   	ret    
 4002a45:	66 90                	xchg   %ax,%ax
 4002a47:	90                   	nop

04002a48 <_strtol_r>:
 4002a48:	55                   	push   %ebp
 4002a49:	89 e5                	mov    %esp,%ebp
 4002a4b:	57                   	push   %edi
 4002a4c:	56                   	push   %esi
 4002a4d:	53                   	push   %ebx
 4002a4e:	83 ec 1c             	sub    $0x1c,%esp
 4002a51:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 4002a54:	8b 75 10             	mov    0x10(%ebp),%esi
 4002a57:	85 db                	test   %ebx,%ebx
 4002a59:	0f 84 b8 00 00 00    	je     4002b17 <_strtol_r+0xcf>
 4002a5f:	89 df                	mov    %ebx,%edi
 4002a61:	8d 76 00             	lea    0x0(%esi),%esi
 4002a64:	8a 07                	mov    (%edi),%al
 4002a66:	3c 20                	cmp    $0x20,%al
 4002a68:	74 4e                	je     4002ab8 <_strtol_r+0x70>
 4002a6a:	8d 48 f7             	lea    -0x9(%eax),%ecx
 4002a6d:	80 f9 04             	cmp    $0x4,%cl
 4002a70:	76 46                	jbe    4002ab8 <_strtol_r+0x70>
 4002a72:	3c 2d                	cmp    $0x2d,%al
 4002a74:	74 45                	je     4002abb <_strtol_r+0x73>
 4002a76:	3c 2b                	cmp    $0x2b,%al
 4002a78:	74 70                	je     4002aea <_strtol_r+0xa2>
 4002a7a:	ff 75 14             	pushl  0x14(%ebp)
 4002a7d:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 4002a80:	50                   	push   %eax
 4002a81:	57                   	push   %edi
 4002a82:	ff 75 08             	pushl  0x8(%ebp)
 4002a85:	e8 36 fd ff ff       	call   40027c0 <_strtoul_r>
 4002a8a:	83 c4 10             	add    $0x10,%esp
 4002a8d:	85 f6                	test   %esi,%esi
 4002a8f:	74 09                	je     4002a9a <_strtol_r+0x52>
 4002a91:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 4002a94:	39 f9                	cmp    %edi,%ecx
 4002a96:	74 7b                	je     4002b13 <_strtol_r+0xcb>
 4002a98:	89 0e                	mov    %ecx,(%esi)
 4002a9a:	3d ff ff ff 7f       	cmp    $0x7fffffff,%eax
 4002a9f:	76 0e                	jbe    4002aaf <_strtol_r+0x67>
 4002aa1:	8b 45 08             	mov    0x8(%ebp),%eax
 4002aa4:	c7 00 22 00 00 00    	movl   $0x22,(%eax)
 4002aaa:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 4002aaf:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4002ab2:	5b                   	pop    %ebx
 4002ab3:	5e                   	pop    %esi
 4002ab4:	5f                   	pop    %edi
 4002ab5:	5d                   	pop    %ebp
 4002ab6:	c3                   	ret    
 4002ab7:	90                   	nop
 4002ab8:	47                   	inc    %edi
 4002ab9:	eb a9                	jmp    4002a64 <_strtol_r+0x1c>
 4002abb:	8d 47 01             	lea    0x1(%edi),%eax
 4002abe:	89 c2                	mov    %eax,%edx
 4002ac0:	89 c7                	mov    %eax,%edi
 4002ac2:	ff 75 14             	pushl  0x14(%ebp)
 4002ac5:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 4002ac8:	50                   	push   %eax
 4002ac9:	52                   	push   %edx
 4002aca:	ff 75 08             	pushl  0x8(%ebp)
 4002acd:	e8 ee fc ff ff       	call   40027c0 <_strtoul_r>
 4002ad2:	83 c4 10             	add    $0x10,%esp
 4002ad5:	85 f6                	test   %esi,%esi
 4002ad7:	75 14                	jne    4002aed <_strtol_r+0xa5>
 4002ad9:	3d 00 00 00 80       	cmp    $0x80000000,%eax
 4002ade:	77 1d                	ja     4002afd <_strtol_r+0xb5>
 4002ae0:	f7 d8                	neg    %eax
 4002ae2:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4002ae5:	5b                   	pop    %ebx
 4002ae6:	5e                   	pop    %esi
 4002ae7:	5f                   	pop    %edi
 4002ae8:	5d                   	pop    %ebp
 4002ae9:	c3                   	ret    
 4002aea:	47                   	inc    %edi
 4002aeb:	eb 8d                	jmp    4002a7a <_strtol_r+0x32>
 4002aed:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 4002af0:	39 d7                	cmp    %edx,%edi
 4002af2:	74 46                	je     4002b3a <_strtol_r+0xf2>
 4002af4:	89 16                	mov    %edx,(%esi)
 4002af6:	3d 00 00 00 80       	cmp    $0x80000000,%eax
 4002afb:	76 e3                	jbe    4002ae0 <_strtol_r+0x98>
 4002afd:	8b 45 08             	mov    0x8(%ebp),%eax
 4002b00:	c7 00 22 00 00 00    	movl   $0x22,(%eax)
 4002b06:	b8 00 00 00 80       	mov    $0x80000000,%eax
 4002b0b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4002b0e:	5b                   	pop    %ebx
 4002b0f:	5e                   	pop    %esi
 4002b10:	5f                   	pop    %edi
 4002b11:	5d                   	pop    %ebp
 4002b12:	c3                   	ret    
 4002b13:	89 d9                	mov    %ebx,%ecx
 4002b15:	eb 81                	jmp    4002a98 <_strtol_r+0x50>
 4002b17:	8b 45 08             	mov    0x8(%ebp),%eax
 4002b1a:	c7 00 22 00 00 00    	movl   $0x22,(%eax)
 4002b20:	85 f6                	test   %esi,%esi
 4002b22:	74 0a                	je     4002b2e <_strtol_r+0xe6>
 4002b24:	31 c0                	xor    %eax,%eax
 4002b26:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4002b29:	5b                   	pop    %ebx
 4002b2a:	5e                   	pop    %esi
 4002b2b:	5f                   	pop    %edi
 4002b2c:	5d                   	pop    %ebp
 4002b2d:	c3                   	ret    
 4002b2e:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 4002b35:	00 00 00 
 4002b38:	0f 0b                	ud2    
 4002b3a:	89 1e                	mov    %ebx,(%esi)
 4002b3c:	eb 9b                	jmp    4002ad9 <_strtol_r+0x91>
 4002b3e:	66 90                	xchg   %ax,%ax

04002b40 <strtol>:
 4002b40:	55                   	push   %ebp
 4002b41:	89 e5                	mov    %esp,%ebp
 4002b43:	83 ec 08             	sub    $0x8,%esp
 4002b46:	ff 75 10             	pushl  0x10(%ebp)
 4002b49:	ff 75 0c             	pushl  0xc(%ebp)
 4002b4c:	ff 75 08             	pushl  0x8(%ebp)
 4002b4f:	ff 35 00 6c 00 04    	pushl  0x4006c00
 4002b55:	e8 ee fe ff ff       	call   4002a48 <_strtol_r>
 4002b5a:	c9                   	leave  
 4002b5b:	c3                   	ret    

04002b5c <_malloc_r>:
 4002b5c:	55                   	push   %ebp
 4002b5d:	89 e5                	mov    %esp,%ebp
 4002b5f:	57                   	push   %edi
 4002b60:	56                   	push   %esi
 4002b61:	53                   	push   %ebx
 4002b62:	83 ec 1c             	sub    $0x1c,%esp
 4002b65:	8b 7d 08             	mov    0x8(%ebp),%edi
 4002b68:	8b 45 0c             	mov    0xc(%ebp),%eax
 4002b6b:	83 c0 07             	add    $0x7,%eax
 4002b6e:	83 e0 fc             	and    $0xfffffffc,%eax
 4002b71:	48                   	dec    %eax
 4002b72:	31 db                	xor    %ebx,%ebx
 4002b74:	c1 e8 03             	shr    $0x3,%eax
 4002b77:	74 08                	je     4002b81 <_malloc_r+0x25>
 4002b79:	8d 76 00             	lea    0x0(%esi),%esi
 4002b7c:	43                   	inc    %ebx
 4002b7d:	d1 e8                	shr    %eax
 4002b7f:	75 fb                	jne    4002b7c <_malloc_r+0x20>
 4002b81:	8d 34 9f             	lea    (%edi,%ebx,4),%esi
 4002b84:	8b 86 80 00 00 00    	mov    0x80(%esi),%eax
 4002b8a:	85 c0                	test   %eax,%eax
 4002b8c:	74 1f                	je     4002bad <_malloc_r+0x51>
 4002b8e:	8b 10                	mov    (%eax),%edx
 4002b90:	89 96 80 00 00 00    	mov    %edx,0x80(%esi)
 4002b96:	c6 00 ff             	movb   $0xff,(%eax)
 4002b99:	88 58 01             	mov    %bl,0x1(%eax)
 4002b9c:	ff 86 f8 00 00 00    	incl   0xf8(%esi)
 4002ba2:	83 c0 04             	add    $0x4,%eax
 4002ba5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4002ba8:	5b                   	pop    %ebx
 4002ba9:	5e                   	pop    %esi
 4002baa:	5f                   	pop    %edi
 4002bab:	5d                   	pop    %ebp
 4002bac:	c3                   	ret    
 4002bad:	83 ec 08             	sub    $0x8,%esp
 4002bb0:	6a 00                	push   $0x0
 4002bb2:	57                   	push   %edi
 4002bb3:	e8 cc 04 00 00       	call   4003084 <_sbrk_r>
 4002bb8:	83 c4 10             	add    $0x10,%esp
 4002bbb:	25 ff 03 00 00       	and    $0x3ff,%eax
 4002bc0:	74 14                	je     4002bd6 <_malloc_r+0x7a>
 4002bc2:	83 ec 08             	sub    $0x8,%esp
 4002bc5:	ba 00 04 00 00       	mov    $0x400,%edx
 4002bca:	29 c2                	sub    %eax,%edx
 4002bcc:	52                   	push   %edx
 4002bcd:	57                   	push   %edi
 4002bce:	e8 b1 04 00 00       	call   4003084 <_sbrk_r>
 4002bd3:	83 c4 10             	add    $0x10,%esp
 4002bd6:	83 fb 08             	cmp    $0x8,%ebx
 4002bd9:	0f 8e 86 00 00 00    	jle    4002c65 <_malloc_r+0x109>
 4002bdf:	8d 4b 03             	lea    0x3(%ebx),%ecx
 4002be2:	b8 01 00 00 00       	mov    $0x1,%eax
 4002be7:	d3 e0                	shl    %cl,%eax
 4002be9:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 4002bec:	ba 01 00 00 00       	mov    $0x1,%edx
 4002bf1:	89 55 e0             	mov    %edx,-0x20(%ebp)
 4002bf4:	83 ec 08             	sub    $0x8,%esp
 4002bf7:	50                   	push   %eax
 4002bf8:	57                   	push   %edi
 4002bf9:	e8 86 04 00 00       	call   4003084 <_sbrk_r>
 4002bfe:	89 c7                	mov    %eax,%edi
 4002c00:	83 c4 10             	add    $0x10,%esp
 4002c03:	83 f8 ff             	cmp    $0xffffffff,%eax
 4002c06:	74 48                	je     4002c50 <_malloc_r+0xf4>
 4002c08:	83 e0 07             	and    $0x7,%eax
 4002c0b:	8b 55 e0             	mov    -0x20(%ebp),%edx
 4002c0e:	74 03                	je     4002c13 <_malloc_r+0xb7>
 4002c10:	29 c7                	sub    %eax,%edi
 4002c12:	4a                   	dec    %edx
 4002c13:	89 be 80 00 00 00    	mov    %edi,0x80(%esi)
 4002c19:	b8 01 00 00 00       	mov    $0x1,%eax
 4002c1e:	8a 4d e4             	mov    -0x1c(%ebp),%cl
 4002c21:	d3 e0                	shl    %cl,%eax
 4002c23:	89 c1                	mov    %eax,%ecx
 4002c25:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4002c28:	8d 42 ff             	lea    -0x1(%edx),%eax
 4002c2b:	89 45 e0             	mov    %eax,-0x20(%ebp)
 4002c2e:	89 c2                	mov    %eax,%edx
 4002c30:	85 c0                	test   %eax,%eax
 4002c32:	7e 16                	jle    4002c4a <_malloc_r+0xee>
 4002c34:	89 f8                	mov    %edi,%eax
 4002c36:	f7 d9                	neg    %ecx
 4002c38:	03 45 e4             	add    -0x1c(%ebp),%eax
 4002c3b:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 4002c3e:	4a                   	dec    %edx
 4002c3f:	75 f7                	jne    4002c38 <_malloc_r+0xdc>
 4002c41:	8b 45 e0             	mov    -0x20(%ebp),%eax
 4002c44:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
 4002c48:	01 c7                	add    %eax,%edi
 4002c4a:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
 4002c50:	8b 86 80 00 00 00    	mov    0x80(%esi),%eax
 4002c56:	85 c0                	test   %eax,%eax
 4002c58:	0f 85 30 ff ff ff    	jne    4002b8e <_malloc_r+0x32>
 4002c5e:	31 c0                	xor    %eax,%eax
 4002c60:	e9 40 ff ff ff       	jmp    4002ba5 <_malloc_r+0x49>
 4002c65:	8d 43 03             	lea    0x3(%ebx),%eax
 4002c68:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4002c6b:	b9 0b 00 00 00       	mov    $0xb,%ecx
 4002c70:	29 c1                	sub    %eax,%ecx
 4002c72:	ba 01 00 00 00       	mov    $0x1,%edx
 4002c77:	d3 e2                	shl    %cl,%edx
 4002c79:	b8 00 08 00 00       	mov    $0x800,%eax
 4002c7e:	e9 6e ff ff ff       	jmp    4002bf1 <_malloc_r+0x95>
 4002c83:	90                   	nop

04002c84 <_free_r>:
 4002c84:	55                   	push   %ebp
 4002c85:	89 e5                	mov    %esp,%ebp
 4002c87:	8b 45 0c             	mov    0xc(%ebp),%eax
 4002c8a:	85 c0                	test   %eax,%eax
 4002c8c:	74 06                	je     4002c94 <_free_r+0x10>
 4002c8e:	80 78 fc ff          	cmpb   $0xff,-0x4(%eax)
 4002c92:	74 04                	je     4002c98 <_free_r+0x14>
 4002c94:	5d                   	pop    %ebp
 4002c95:	c3                   	ret    
 4002c96:	66 90                	xchg   %ax,%ax
 4002c98:	0f be 48 fd          	movsbl -0x3(%eax),%ecx
 4002c9c:	8b 55 08             	mov    0x8(%ebp),%edx
 4002c9f:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
 4002ca2:	8b 8a 80 00 00 00    	mov    0x80(%edx),%ecx
 4002ca8:	89 48 fc             	mov    %ecx,-0x4(%eax)
 4002cab:	83 e8 04             	sub    $0x4,%eax
 4002cae:	89 82 80 00 00 00    	mov    %eax,0x80(%edx)
 4002cb4:	ff 8a f8 00 00 00    	decl   0xf8(%edx)
 4002cba:	5d                   	pop    %ebp
 4002cbb:	c3                   	ret    

04002cbc <_realloc_r>:
 4002cbc:	55                   	push   %ebp
 4002cbd:	89 e5                	mov    %esp,%ebp
 4002cbf:	57                   	push   %edi
 4002cc0:	56                   	push   %esi
 4002cc1:	53                   	push   %ebx
 4002cc2:	83 ec 1c             	sub    $0x1c,%esp
 4002cc5:	8b 7d 08             	mov    0x8(%ebp),%edi
 4002cc8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 4002ccb:	8b 55 10             	mov    0x10(%ebp),%edx
 4002cce:	85 db                	test   %ebx,%ebx
 4002cd0:	0f 84 82 00 00 00    	je     4002d58 <_realloc_r+0x9c>
 4002cd6:	0f be 4b fd          	movsbl -0x3(%ebx),%ecx
 4002cda:	83 c1 03             	add    $0x3,%ecx
 4002cdd:	be 01 00 00 00       	mov    $0x1,%esi
 4002ce2:	d3 e6                	shl    %cl,%esi
 4002ce4:	8d 46 fc             	lea    -0x4(%esi),%eax
 4002ce7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4002cea:	83 ec 08             	sub    $0x8,%esp
 4002ced:	52                   	push   %edx
 4002cee:	89 55 e0             	mov    %edx,-0x20(%ebp)
 4002cf1:	57                   	push   %edi
 4002cf2:	e8 65 fe ff ff       	call   4002b5c <_malloc_r>
 4002cf7:	89 c6                	mov    %eax,%esi
 4002cf9:	83 c4 10             	add    $0x10,%esp
 4002cfc:	85 c0                	test   %eax,%eax
 4002cfe:	74 68                	je     4002d68 <_realloc_r+0xac>
 4002d00:	50                   	push   %eax
 4002d01:	8b 55 e0             	mov    -0x20(%ebp),%edx
 4002d04:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4002d07:	39 c2                	cmp    %eax,%edx
 4002d09:	77 1d                	ja     4002d28 <_realloc_r+0x6c>
 4002d0b:	52                   	push   %edx
 4002d0c:	53                   	push   %ebx
 4002d0d:	56                   	push   %esi
 4002d0e:	e8 09 02 00 00       	call   4002f1c <memcpy>
 4002d13:	83 c4 10             	add    $0x10,%esp
 4002d16:	80 7b fc ff          	cmpb   $0xff,-0x4(%ebx)
 4002d1a:	74 10                	je     4002d2c <_realloc_r+0x70>
 4002d1c:	89 f0                	mov    %esi,%eax
 4002d1e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4002d21:	5b                   	pop    %ebx
 4002d22:	5e                   	pop    %esi
 4002d23:	5f                   	pop    %edi
 4002d24:	5d                   	pop    %ebp
 4002d25:	c3                   	ret    
 4002d26:	66 90                	xchg   %ax,%ax
 4002d28:	89 c2                	mov    %eax,%edx
 4002d2a:	eb df                	jmp    4002d0b <_realloc_r+0x4f>
 4002d2c:	0f be 43 fd          	movsbl -0x3(%ebx),%eax
 4002d30:	8d 04 87             	lea    (%edi,%eax,4),%eax
 4002d33:	8b 90 80 00 00 00    	mov    0x80(%eax),%edx
 4002d39:	89 53 fc             	mov    %edx,-0x4(%ebx)
 4002d3c:	83 eb 04             	sub    $0x4,%ebx
 4002d3f:	89 98 80 00 00 00    	mov    %ebx,0x80(%eax)
 4002d45:	ff 88 f8 00 00 00    	decl   0xf8(%eax)
 4002d4b:	89 f0                	mov    %esi,%eax
 4002d4d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4002d50:	5b                   	pop    %ebx
 4002d51:	5e                   	pop    %esi
 4002d52:	5f                   	pop    %edi
 4002d53:	5d                   	pop    %ebp
 4002d54:	c3                   	ret    
 4002d55:	8d 76 00             	lea    0x0(%esi),%esi
 4002d58:	89 55 0c             	mov    %edx,0xc(%ebp)
 4002d5b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4002d5e:	5b                   	pop    %ebx
 4002d5f:	5e                   	pop    %esi
 4002d60:	5f                   	pop    %edi
 4002d61:	5d                   	pop    %ebp
 4002d62:	e9 f5 fd ff ff       	jmp    4002b5c <_malloc_r>
 4002d67:	90                   	nop
 4002d68:	31 c0                	xor    %eax,%eax
 4002d6a:	eb b2                	jmp    4002d1e <_realloc_r+0x62>

04002d6c <_mstats_r>:
 4002d6c:	55                   	push   %ebp
 4002d6d:	89 e5                	mov    %esp,%ebp
 4002d6f:	57                   	push   %edi
 4002d70:	56                   	push   %esi
 4002d71:	53                   	push   %ebx
 4002d72:	83 ec 10             	sub    $0x10,%esp
 4002d75:	8b 75 08             	mov    0x8(%ebp),%esi
 4002d78:	ff 75 0c             	pushl  0xc(%ebp)
 4002d7b:	68 fc 47 00 04       	push   $0x40047fc
 4002d80:	ff 76 0c             	pushl  0xc(%esi)
 4002d83:	e8 18 f0 ff ff       	call   4001da0 <fprintf>
 4002d88:	8d be 80 00 00 00    	lea    0x80(%esi),%edi
 4002d8e:	8d 9e f8 00 00 00    	lea    0xf8(%esi),%ebx
 4002d94:	83 c4 10             	add    $0x10,%esp
 4002d97:	90                   	nop
 4002d98:	8b 07                	mov    (%edi),%eax
 4002d9a:	31 d2                	xor    %edx,%edx
 4002d9c:	85 c0                	test   %eax,%eax
 4002d9e:	74 07                	je     4002da7 <_mstats_r+0x3b>
 4002da0:	8b 00                	mov    (%eax),%eax
 4002da2:	42                   	inc    %edx
 4002da3:	85 c0                	test   %eax,%eax
 4002da5:	75 f9                	jne    4002da0 <_mstats_r+0x34>
 4002da7:	51                   	push   %ecx
 4002da8:	52                   	push   %edx
 4002da9:	68 48 48 00 04       	push   $0x4004848
 4002dae:	ff 76 0c             	pushl  0xc(%esi)
 4002db1:	e8 ea ef ff ff       	call   4001da0 <fprintf>
 4002db6:	83 c7 04             	add    $0x4,%edi
 4002db9:	83 c4 10             	add    $0x10,%esp
 4002dbc:	39 df                	cmp    %ebx,%edi
 4002dbe:	75 d8                	jne    4002d98 <_mstats_r+0x2c>
 4002dc0:	83 ec 08             	sub    $0x8,%esp
 4002dc3:	68 4c 48 00 04       	push   $0x400484c
 4002dc8:	ff 76 0c             	pushl  0xc(%esi)
 4002dcb:	e8 d0 ef ff ff       	call   4001da0 <fprintf>
 4002dd0:	8d be 70 01 00 00    	lea    0x170(%esi),%edi
 4002dd6:	83 c4 10             	add    $0x10,%esp
 4002dd9:	8d 76 00             	lea    0x0(%esi),%esi
 4002ddc:	50                   	push   %eax
 4002ddd:	ff 33                	pushl  (%ebx)
 4002ddf:	68 48 48 00 04       	push   $0x4004848
 4002de4:	ff 76 0c             	pushl  0xc(%esi)
 4002de7:	e8 b4 ef ff ff       	call   4001da0 <fprintf>
 4002dec:	83 c3 04             	add    $0x4,%ebx
 4002def:	83 c4 10             	add    $0x10,%esp
 4002df2:	39 fb                	cmp    %edi,%ebx
 4002df4:	75 e6                	jne    4002ddc <_mstats_r+0x70>
 4002df6:	c7 45 0c 24 48 00 04 	movl   $0x4004824,0xc(%ebp)
 4002dfd:	8b 46 0c             	mov    0xc(%esi),%eax
 4002e00:	89 45 08             	mov    %eax,0x8(%ebp)
 4002e03:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4002e06:	5b                   	pop    %ebx
 4002e07:	5e                   	pop    %esi
 4002e08:	5f                   	pop    %edi
 4002e09:	5d                   	pop    %ebp
 4002e0a:	e9 91 ef ff ff       	jmp    4001da0 <fprintf>
 4002e0f:	90                   	nop

04002e10 <__assertfail>:
 4002e10:	55                   	push   %ebp
 4002e11:	89 e5                	mov    %esp,%ebp
 4002e13:	83 ec 14             	sub    $0x14,%esp
 4002e16:	ff 75 14             	pushl  0x14(%ebp)
 4002e19:	ff 75 10             	pushl  0x10(%ebp)
 4002e1c:	ff 75 0c             	pushl  0xc(%ebp)
 4002e1f:	ff 75 08             	pushl  0x8(%ebp)
 4002e22:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 4002e27:	ff 70 0c             	pushl  0xc(%eax)
 4002e2a:	e8 71 ef ff ff       	call   4001da0 <fprintf>
 4002e2f:	83 c4 20             	add    $0x20,%esp
 4002e32:	e8 01 00 00 00       	call   4002e38 <abort>
 4002e37:	90                   	nop

04002e38 <abort>:
 4002e38:	55                   	push   %ebp
 4002e39:	89 e5                	mov    %esp,%ebp
 4002e3b:	83 ec 08             	sub    $0x8,%esp
 4002e3e:	66 90                	xchg   %ax,%ax
 4002e40:	83 ec 0c             	sub    $0xc,%esp
 4002e43:	6a 06                	push   $0x6
 4002e45:	e8 2e 0e 00 00       	call   4003c78 <raise>
 4002e4a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 4002e51:	e8 aa 0f 00 00       	call   4003e00 <_exit>
 4002e56:	83 c4 10             	add    $0x10,%esp
 4002e59:	eb e5                	jmp    4002e40 <abort+0x8>
 4002e5b:	90                   	nop

04002e5c <atof>:
 4002e5c:	55                   	push   %ebp
 4002e5d:	89 e5                	mov    %esp,%ebp
 4002e5f:	83 ec 10             	sub    $0x10,%esp
 4002e62:	6a 00                	push   $0x0
 4002e64:	ff 75 08             	pushl  0x8(%ebp)
 4002e67:	e8 78 0e 00 00       	call   4003ce4 <strtod>
 4002e6c:	c9                   	leave  
 4002e6d:	c3                   	ret    
 4002e6e:	66 90                	xchg   %ax,%ax

04002e70 <atoff>:
 4002e70:	55                   	push   %ebp
 4002e71:	89 e5                	mov    %esp,%ebp
 4002e73:	83 ec 20             	sub    $0x20,%esp
 4002e76:	6a 00                	push   $0x0
 4002e78:	ff 75 08             	pushl  0x8(%ebp)
 4002e7b:	e8 84 0e 00 00       	call   4003d04 <strtodf>
 4002e80:	89 45 f4             	mov    %eax,-0xc(%ebp)
 4002e83:	db 45 f4             	fildl  -0xc(%ebp)
 4002e86:	c9                   	leave  
 4002e87:	c3                   	ret    

04002e88 <memset>:
 4002e88:	55                   	push   %ebp
 4002e89:	89 e5                	mov    %esp,%ebp
 4002e8b:	57                   	push   %edi
 4002e8c:	56                   	push   %esi
 4002e8d:	53                   	push   %ebx
 4002e8e:	8b 45 08             	mov    0x8(%ebp),%eax
 4002e91:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4002e94:	8b 55 0c             	mov    0xc(%ebp),%edx
 4002e97:	85 d2                	test   %edx,%edx
 4002e99:	74 21                	je     4002ebc <memset+0x34>
 4002e9b:	89 c3                	mov    %eax,%ebx
 4002e9d:	8d 71 ff             	lea    -0x1(%ecx),%esi
 4002ea0:	85 c9                	test   %ecx,%ecx
 4002ea2:	74 10                	je     4002eb4 <memset+0x2c>
 4002ea4:	8a 4d 0c             	mov    0xc(%ebp),%cl
 4002ea7:	8d 54 33 01          	lea    0x1(%ebx,%esi,1),%edx
 4002eab:	90                   	nop
 4002eac:	43                   	inc    %ebx
 4002ead:	88 4b ff             	mov    %cl,-0x1(%ebx)
 4002eb0:	39 da                	cmp    %ebx,%edx
 4002eb2:	75 f8                	jne    4002eac <memset+0x24>
 4002eb4:	5b                   	pop    %ebx
 4002eb5:	5e                   	pop    %esi
 4002eb6:	5f                   	pop    %edi
 4002eb7:	5d                   	pop    %ebp
 4002eb8:	c3                   	ret    
 4002eb9:	8d 76 00             	lea    0x0(%esi),%esi
 4002ebc:	89 c6                	mov    %eax,%esi
 4002ebe:	83 e6 03             	and    $0x3,%esi
 4002ec1:	85 c9                	test   %ecx,%ecx
 4002ec3:	74 ef                	je     4002eb4 <memset+0x2c>
 4002ec5:	89 c2                	mov    %eax,%edx
 4002ec7:	85 f6                	test   %esi,%esi
 4002ec9:	74 25                	je     4002ef0 <memset+0x68>
 4002ecb:	29 f2                	sub    %esi,%edx
 4002ecd:	8d 7a 04             	lea    0x4(%edx),%edi
 4002ed0:	01 ce                	add    %ecx,%esi
 4002ed2:	49                   	dec    %ecx
 4002ed3:	89 c2                	mov    %eax,%edx
 4002ed5:	eb 0e                	jmp    4002ee5 <memset+0x5d>
 4002ed7:	90                   	nop
 4002ed8:	39 f1                	cmp    %esi,%ecx
 4002eda:	74 14                	je     4002ef0 <memset+0x68>
 4002edc:	8d 59 ff             	lea    -0x1(%ecx),%ebx
 4002edf:	39 fa                	cmp    %edi,%edx
 4002ee1:	74 0d                	je     4002ef0 <memset+0x68>
 4002ee3:	89 d9                	mov    %ebx,%ecx
 4002ee5:	42                   	inc    %edx
 4002ee6:	c6 42 ff 00          	movb   $0x0,-0x1(%edx)
 4002eea:	85 c9                	test   %ecx,%ecx
 4002eec:	75 ea                	jne    4002ed8 <memset+0x50>
 4002eee:	eb c4                	jmp    4002eb4 <memset+0x2c>
 4002ef0:	83 f9 03             	cmp    $0x3,%ecx
 4002ef3:	76 1e                	jbe    4002f13 <memset+0x8b>
 4002ef5:	8d 59 fc             	lea    -0x4(%ecx),%ebx
 4002ef8:	c1 eb 02             	shr    $0x2,%ebx
 4002efb:	8d 5c 9a 04          	lea    0x4(%edx,%ebx,4),%ebx
 4002eff:	90                   	nop
 4002f00:	83 c2 04             	add    $0x4,%edx
 4002f03:	c7 42 fc 00 00 00 00 	movl   $0x0,-0x4(%edx)
 4002f0a:	39 da                	cmp    %ebx,%edx
 4002f0c:	75 f2                	jne    4002f00 <memset+0x78>
 4002f0e:	83 e1 03             	and    $0x3,%ecx
 4002f11:	eb 8a                	jmp    4002e9d <memset+0x15>
 4002f13:	8d 71 ff             	lea    -0x1(%ecx),%esi
 4002f16:	89 d3                	mov    %edx,%ebx
 4002f18:	eb 8a                	jmp    4002ea4 <memset+0x1c>
 4002f1a:	66 90                	xchg   %ax,%ax

04002f1c <memcpy>:
 4002f1c:	55                   	push   %ebp
 4002f1d:	89 e5                	mov    %esp,%ebp
 4002f1f:	56                   	push   %esi
 4002f20:	53                   	push   %ebx
 4002f21:	8b 45 08             	mov    0x8(%ebp),%eax
 4002f24:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 4002f27:	8b 75 10             	mov    0x10(%ebp),%esi
 4002f2a:	85 f6                	test   %esi,%esi
 4002f2c:	74 0d                	je     4002f3b <memcpy+0x1f>
 4002f2e:	31 d2                	xor    %edx,%edx
 4002f30:	8a 0c 13             	mov    (%ebx,%edx,1),%cl
 4002f33:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 4002f36:	42                   	inc    %edx
 4002f37:	39 f2                	cmp    %esi,%edx
 4002f39:	75 f5                	jne    4002f30 <memcpy+0x14>
 4002f3b:	5b                   	pop    %ebx
 4002f3c:	5e                   	pop    %esi
 4002f3d:	5d                   	pop    %ebp
 4002f3e:	c3                   	ret    
 4002f3f:	90                   	nop

04002f40 <strlen>:
 4002f40:	55                   	push   %ebp
 4002f41:	89 e5                	mov    %esp,%ebp
 4002f43:	8b 55 08             	mov    0x8(%ebp),%edx
 4002f46:	80 3a 00             	cmpb   $0x0,(%edx)
 4002f49:	74 0f                	je     4002f5a <strlen+0x1a>
 4002f4b:	89 d0                	mov    %edx,%eax
 4002f4d:	8d 76 00             	lea    0x0(%esi),%esi
 4002f50:	40                   	inc    %eax
 4002f51:	80 38 00             	cmpb   $0x0,(%eax)
 4002f54:	75 fa                	jne    4002f50 <strlen+0x10>
 4002f56:	29 d0                	sub    %edx,%eax
 4002f58:	5d                   	pop    %ebp
 4002f59:	c3                   	ret    
 4002f5a:	31 c0                	xor    %eax,%eax
 4002f5c:	5d                   	pop    %ebp
 4002f5d:	c3                   	ret    
 4002f5e:	66 90                	xchg   %ax,%ax

04002f60 <cleanup_glue>:
 4002f60:	55                   	push   %ebp
 4002f61:	89 e5                	mov    %esp,%ebp
 4002f63:	56                   	push   %esi
 4002f64:	53                   	push   %ebx
 4002f65:	8b 75 08             	mov    0x8(%ebp),%esi
 4002f68:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 4002f6b:	8b 03                	mov    (%ebx),%eax
 4002f6d:	85 c0                	test   %eax,%eax
 4002f6f:	74 0d                	je     4002f7e <cleanup_glue+0x1e>
 4002f71:	83 ec 08             	sub    $0x8,%esp
 4002f74:	50                   	push   %eax
 4002f75:	56                   	push   %esi
 4002f76:	e8 e5 ff ff ff       	call   4002f60 <cleanup_glue>
 4002f7b:	83 c4 10             	add    $0x10,%esp
 4002f7e:	89 5d 0c             	mov    %ebx,0xc(%ebp)
 4002f81:	89 75 08             	mov    %esi,0x8(%ebp)
 4002f84:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4002f87:	5b                   	pop    %ebx
 4002f88:	5e                   	pop    %esi
 4002f89:	5d                   	pop    %ebp
 4002f8a:	e9 f5 fc ff ff       	jmp    4002c84 <_free_r>
 4002f8f:	90                   	nop

04002f90 <_reclaim_reent>:
 4002f90:	55                   	push   %ebp
 4002f91:	89 e5                	mov    %esp,%ebp
 4002f93:	57                   	push   %edi
 4002f94:	56                   	push   %esi
 4002f95:	53                   	push   %ebx
 4002f96:	83 ec 0c             	sub    $0xc,%esp
 4002f99:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4002f9c:	39 1d 00 6c 00 04    	cmp    %ebx,0x4006c00
 4002fa2:	74 7c                	je     4003020 <_reclaim_reent+0x90>
 4002fa4:	8b 53 70             	mov    0x70(%ebx),%edx
 4002fa7:	85 d2                	test   %edx,%edx
 4002fa9:	74 2f                	je     4002fda <_reclaim_reent+0x4a>
 4002fab:	8b 42 3c             	mov    0x3c(%edx),%eax
 4002fae:	85 c0                	test   %eax,%eax
 4002fb0:	74 1b                	je     4002fcd <_reclaim_reent+0x3d>
 4002fb2:	66 90                	xchg   %ax,%ax
 4002fb4:	8b 70 14             	mov    0x14(%eax),%esi
 4002fb7:	83 ec 08             	sub    $0x8,%esp
 4002fba:	50                   	push   %eax
 4002fbb:	53                   	push   %ebx
 4002fbc:	e8 c3 fc ff ff       	call   4002c84 <_free_r>
 4002fc1:	89 f0                	mov    %esi,%eax
 4002fc3:	83 c4 10             	add    $0x10,%esp
 4002fc6:	85 f6                	test   %esi,%esi
 4002fc8:	75 ea                	jne    4002fb4 <_reclaim_reent+0x24>
 4002fca:	8b 53 70             	mov    0x70(%ebx),%edx
 4002fcd:	83 ec 08             	sub    $0x8,%esp
 4002fd0:	52                   	push   %edx
 4002fd1:	53                   	push   %ebx
 4002fd2:	e8 ad fc ff ff       	call   4002c84 <_free_r>
 4002fd7:	83 c4 10             	add    $0x10,%esp
 4002fda:	8b 83 70 01 00 00    	mov    0x170(%ebx),%eax
 4002fe0:	85 c0                	test   %eax,%eax
 4002fe2:	74 21                	je     4003005 <_reclaim_reent+0x75>
 4002fe4:	8d bb 74 01 00 00    	lea    0x174(%ebx),%edi
 4002fea:	39 f8                	cmp    %edi,%eax
 4002fec:	74 17                	je     4003005 <_reclaim_reent+0x75>
 4002fee:	66 90                	xchg   %ax,%ax
 4002ff0:	8b 30                	mov    (%eax),%esi
 4002ff2:	83 ec 08             	sub    $0x8,%esp
 4002ff5:	50                   	push   %eax
 4002ff6:	53                   	push   %ebx
 4002ff7:	e8 88 fc ff ff       	call   4002c84 <_free_r>
 4002ffc:	89 f0                	mov    %esi,%eax
 4002ffe:	83 c4 10             	add    $0x10,%esp
 4003001:	39 f7                	cmp    %esi,%edi
 4003003:	75 eb                	jne    4002ff0 <_reclaim_reent+0x60>
 4003005:	8b 43 7c             	mov    0x7c(%ebx),%eax
 4003008:	85 c0                	test   %eax,%eax
 400300a:	74 0d                	je     4003019 <_reclaim_reent+0x89>
 400300c:	83 ec 08             	sub    $0x8,%esp
 400300f:	50                   	push   %eax
 4003010:	53                   	push   %ebx
 4003011:	e8 6e fc ff ff       	call   4002c84 <_free_r>
 4003016:	83 c4 10             	add    $0x10,%esp
 4003019:	8b 43 5c             	mov    0x5c(%ebx),%eax
 400301c:	85 c0                	test   %eax,%eax
 400301e:	75 08                	jne    4003028 <_reclaim_reent+0x98>
 4003020:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4003023:	5b                   	pop    %ebx
 4003024:	5e                   	pop    %esi
 4003025:	5f                   	pop    %edi
 4003026:	5d                   	pop    %ebp
 4003027:	c3                   	ret    
 4003028:	83 ec 0c             	sub    $0xc,%esp
 400302b:	53                   	push   %ebx
 400302c:	e8 33 dd ff ff       	call   4000d64 <_cleanup_r>
 4003031:	8b 83 fc 01 00 00    	mov    0x1fc(%ebx),%eax
 4003037:	83 c4 10             	add    $0x10,%esp
 400303a:	85 c0                	test   %eax,%eax
 400303c:	74 e2                	je     4003020 <_reclaim_reent+0x90>
 400303e:	83 ec 08             	sub    $0x8,%esp
 4003041:	50                   	push   %eax
 4003042:	53                   	push   %ebx
 4003043:	e8 18 ff ff ff       	call   4002f60 <cleanup_glue>
 4003048:	83 c4 10             	add    $0x10,%esp
 400304b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 400304e:	5b                   	pop    %ebx
 400304f:	5e                   	pop    %esi
 4003050:	5f                   	pop    %edi
 4003051:	5d                   	pop    %ebp
 4003052:	c3                   	ret    
 4003053:	90                   	nop

04003054 <_fstat_r>:
 4003054:	55                   	push   %ebp
 4003055:	89 e5                	mov    %esp,%ebp
 4003057:	83 ec 10             	sub    $0x10,%esp
 400305a:	c7 05 38 6f 00 04 00 	movl   $0x0,0x4006f38
 4003061:	00 00 00 
 4003064:	ff 75 10             	pushl  0x10(%ebp)
 4003067:	ff 75 0c             	pushl  0xc(%ebp)
 400306a:	e8 59 0e 00 00       	call   4003ec8 <_fstat>
 400306f:	8b 15 38 6f 00 04    	mov    0x4006f38,%edx
 4003075:	83 c4 10             	add    $0x10,%esp
 4003078:	85 d2                	test   %edx,%edx
 400307a:	74 05                	je     4003081 <_fstat_r+0x2d>
 400307c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 400307f:	89 11                	mov    %edx,(%ecx)
 4003081:	c9                   	leave  
 4003082:	c3                   	ret    
 4003083:	90                   	nop

04003084 <_sbrk_r>:
 4003084:	55                   	push   %ebp
 4003085:	89 e5                	mov    %esp,%ebp
 4003087:	83 ec 14             	sub    $0x14,%esp
 400308a:	c7 05 38 6f 00 04 00 	movl   $0x0,0x4006f38
 4003091:	00 00 00 
 4003094:	ff 75 0c             	pushl  0xc(%ebp)
 4003097:	e8 ac 0d 00 00       	call   4003e48 <_sbrk>
 400309c:	8b 15 38 6f 00 04    	mov    0x4006f38,%edx
 40030a2:	83 c4 10             	add    $0x10,%esp
 40030a5:	85 d2                	test   %edx,%edx
 40030a7:	74 05                	je     40030ae <_sbrk_r+0x2a>
 40030a9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 40030ac:	89 11                	mov    %edx,(%ecx)
 40030ae:	c9                   	leave  
 40030af:	c3                   	ret    

040030b0 <_open_r>:
 40030b0:	55                   	push   %ebp
 40030b1:	89 e5                	mov    %esp,%ebp
 40030b3:	83 ec 0c             	sub    $0xc,%esp
 40030b6:	c7 05 38 6f 00 04 00 	movl   $0x0,0x4006f38
 40030bd:	00 00 00 
 40030c0:	ff 75 14             	pushl  0x14(%ebp)
 40030c3:	ff 75 10             	pushl  0x10(%ebp)
 40030c6:	ff 75 0c             	pushl  0xc(%ebp)
 40030c9:	e8 4a 0d 00 00       	call   4003e18 <_open>
 40030ce:	8b 15 38 6f 00 04    	mov    0x4006f38,%edx
 40030d4:	83 c4 10             	add    $0x10,%esp
 40030d7:	85 d2                	test   %edx,%edx
 40030d9:	74 05                	je     40030e0 <_open_r+0x30>
 40030db:	8b 4d 08             	mov    0x8(%ebp),%ecx
 40030de:	89 11                	mov    %edx,(%ecx)
 40030e0:	c9                   	leave  
 40030e1:	c3                   	ret    
 40030e2:	66 90                	xchg   %ax,%ax

040030e4 <_close_r>:
 40030e4:	55                   	push   %ebp
 40030e5:	89 e5                	mov    %esp,%ebp
 40030e7:	83 ec 14             	sub    $0x14,%esp
 40030ea:	c7 05 38 6f 00 04 00 	movl   $0x0,0x4006f38
 40030f1:	00 00 00 
 40030f4:	ff 75 0c             	pushl  0xc(%ebp)
 40030f7:	e8 9c 0d 00 00       	call   4003e98 <_close>
 40030fc:	8b 15 38 6f 00 04    	mov    0x4006f38,%edx
 4003102:	83 c4 10             	add    $0x10,%esp
 4003105:	85 d2                	test   %edx,%edx
 4003107:	74 05                	je     400310e <_close_r+0x2a>
 4003109:	8b 4d 08             	mov    0x8(%ebp),%ecx
 400310c:	89 11                	mov    %edx,(%ecx)
 400310e:	c9                   	leave  
 400310f:	c3                   	ret    

04003110 <_lseek_r>:
 4003110:	55                   	push   %ebp
 4003111:	89 e5                	mov    %esp,%ebp
 4003113:	83 ec 0c             	sub    $0xc,%esp
 4003116:	c7 05 38 6f 00 04 00 	movl   $0x0,0x4006f38
 400311d:	00 00 00 
 4003120:	ff 75 14             	pushl  0x14(%ebp)
 4003123:	ff 75 10             	pushl  0x10(%ebp)
 4003126:	ff 75 0c             	pushl  0xc(%ebp)
 4003129:	e8 82 0d 00 00       	call   4003eb0 <_lseek>
 400312e:	8b 15 38 6f 00 04    	mov    0x4006f38,%edx
 4003134:	83 c4 10             	add    $0x10,%esp
 4003137:	85 d2                	test   %edx,%edx
 4003139:	74 05                	je     4003140 <_lseek_r+0x30>
 400313b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 400313e:	89 11                	mov    %edx,(%ecx)
 4003140:	c9                   	leave  
 4003141:	c3                   	ret    
 4003142:	66 90                	xchg   %ax,%ax

04003144 <_read_r>:
 4003144:	55                   	push   %ebp
 4003145:	89 e5                	mov    %esp,%ebp
 4003147:	83 ec 0c             	sub    $0xc,%esp
 400314a:	c7 05 38 6f 00 04 00 	movl   $0x0,0x4006f38
 4003151:	00 00 00 
 4003154:	ff 75 14             	pushl  0x14(%ebp)
 4003157:	ff 75 10             	pushl  0x10(%ebp)
 400315a:	ff 75 0c             	pushl  0xc(%ebp)
 400315d:	e8 1e 0d 00 00       	call   4003e80 <_read>
 4003162:	8b 15 38 6f 00 04    	mov    0x4006f38,%edx
 4003168:	83 c4 10             	add    $0x10,%esp
 400316b:	85 d2                	test   %edx,%edx
 400316d:	74 05                	je     4003174 <_read_r+0x30>
 400316f:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4003172:	89 11                	mov    %edx,(%ecx)
 4003174:	c9                   	leave  
 4003175:	c3                   	ret    
 4003176:	66 90                	xchg   %ax,%ax

04003178 <_write_r>:
 4003178:	55                   	push   %ebp
 4003179:	89 e5                	mov    %esp,%ebp
 400317b:	83 ec 0c             	sub    $0xc,%esp
 400317e:	c7 05 38 6f 00 04 00 	movl   $0x0,0x4006f38
 4003185:	00 00 00 
 4003188:	ff 75 14             	pushl  0x14(%ebp)
 400318b:	ff 75 10             	pushl  0x10(%ebp)
 400318e:	ff 75 0c             	pushl  0xc(%ebp)
 4003191:	e8 9a 0c 00 00       	call   4003e30 <_write>
 4003196:	8b 15 38 6f 00 04    	mov    0x4006f38,%edx
 400319c:	83 c4 10             	add    $0x10,%esp
 400319f:	85 d2                	test   %edx,%edx
 40031a1:	74 05                	je     40031a8 <_write_r+0x30>
 40031a3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 40031a6:	89 11                	mov    %edx,(%ecx)
 40031a8:	c9                   	leave  
 40031a9:	c3                   	ret    
 40031aa:	66 90                	xchg   %ax,%ax

040031ac <_llicvt>:
 40031ac:	55                   	push   %ebp
 40031ad:	89 e5                	mov    %esp,%ebp
 40031af:	83 ec 08             	sub    $0x8,%esp
 40031b2:	6a 1f                	push   $0x1f
 40031b4:	68 61 49 00 04       	push   $0x4004961
 40031b9:	68 8b 41 00 04       	push   $0x400418b
 40031be:	68 98 41 00 04       	push   $0x4004198
 40031c3:	e8 48 fc ff ff       	call   4002e10 <__assertfail>
 40031c8:	8b 45 08             	mov    0x8(%ebp),%eax
 40031cb:	c9                   	leave  
 40031cc:	c3                   	ret    
 40031cd:	66 90                	xchg   %ax,%ax
 40031cf:	90                   	nop

040031d0 <_icvt>:
 40031d0:	55                   	push   %ebp
 40031d1:	89 e5                	mov    %esp,%ebp
 40031d3:	57                   	push   %edi
 40031d4:	56                   	push   %esi
 40031d5:	53                   	push   %ebx
 40031d6:	51                   	push   %ecx
 40031d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 40031da:	8b 55 10             	mov    0x10(%ebp),%edx
 40031dd:	8b 45 08             	mov    0x8(%ebp),%eax
 40031e0:	c6 40 7f 00          	movb   $0x0,0x7f(%eax)
 40031e4:	8d 42 a8             	lea    -0x58(%edx),%eax
 40031e7:	3c 20                	cmp    $0x20,%al
 40031e9:	0f 87 d5 00 00 00    	ja     40032c4 <_icvt+0xf4>
 40031ef:	0f b6 c0             	movzbl %al,%eax
 40031f2:	ff 24 85 94 49 00 04 	jmp    *0x4004994(,%eax,4)
 40031f9:	8d 76 00             	lea    0x0(%esi),%esi
 40031fc:	85 c9                	test   %ecx,%ecx
 40031fe:	0f 88 d8 00 00 00    	js     40032dc <_icvt+0x10c>
 4003204:	be 7e 00 00 00       	mov    $0x7e,%esi
 4003209:	bf 0a 00 00 00       	mov    $0xa,%edi
 400320e:	66 90                	xchg   %ax,%ax
 4003210:	8d 5e ff             	lea    -0x1(%esi),%ebx
 4003213:	89 c8                	mov    %ecx,%eax
 4003215:	99                   	cltd   
 4003216:	f7 ff                	idiv   %edi
 4003218:	8a 82 71 49 00 04    	mov    0x4004971(%edx),%al
 400321e:	88 45 f3             	mov    %al,-0xd(%ebp)
 4003221:	8b 55 08             	mov    0x8(%ebp),%edx
 4003224:	88 04 32             	mov    %al,(%edx,%esi,1)
 4003227:	b8 67 66 66 66       	mov    $0x66666667,%eax
 400322c:	f7 e9                	imul   %ecx
 400322e:	89 d0                	mov    %edx,%eax
 4003230:	c1 f8 02             	sar    $0x2,%eax
 4003233:	c1 f9 1f             	sar    $0x1f,%ecx
 4003236:	29 c8                	sub    %ecx,%eax
 4003238:	89 c1                	mov    %eax,%ecx
 400323a:	74 09                	je     4003245 <_icvt+0x75>
 400323c:	89 de                	mov    %ebx,%esi
 400323e:	83 fb ff             	cmp    $0xffffffff,%ebx
 4003241:	75 cd                	jne    4003210 <_icvt+0x40>
 4003243:	31 f6                	xor    %esi,%esi
 4003245:	8b 45 08             	mov    0x8(%ebp),%eax
 4003248:	01 f0                	add    %esi,%eax
 400324a:	5a                   	pop    %edx
 400324b:	5b                   	pop    %ebx
 400324c:	5e                   	pop    %esi
 400324d:	5f                   	pop    %edi
 400324e:	5d                   	pop    %ebp
 400324f:	c3                   	ret    
 4003250:	88 d3                	mov    %dl,%bl
 4003252:	80 fa 75             	cmp    $0x75,%dl
 4003255:	74 7d                	je     40032d4 <_icvt+0x104>
 4003257:	31 c0                	xor    %eax,%eax
 4003259:	80 fa 6f             	cmp    $0x6f,%dl
 400325c:	0f 95 c0             	setne  %al
 400325f:	89 c7                	mov    %eax,%edi
 4003261:	8d 3c fd 08 00 00 00 	lea    0x8(,%edi,8),%edi
 4003268:	be 7d 00 00 00       	mov    $0x7d,%esi
 400326d:	88 5d f3             	mov    %bl,-0xd(%ebp)
 4003270:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003273:	eb 1f                	jmp    4003294 <_icvt+0xc4>
 4003275:	8d 76 00             	lea    0x0(%esi),%esi
 4003278:	8a 82 71 49 00 04    	mov    0x4004971(%edx),%al
 400327e:	88 44 33 01          	mov    %al,0x1(%ebx,%esi,1)
 4003282:	89 c8                	mov    %ecx,%eax
 4003284:	31 d2                	xor    %edx,%edx
 4003286:	f7 f7                	div    %edi
 4003288:	89 c1                	mov    %eax,%ecx
 400328a:	85 c0                	test   %eax,%eax
 400328c:	74 28                	je     40032b6 <_icvt+0xe6>
 400328e:	4e                   	dec    %esi
 400328f:	83 fe fe             	cmp    $0xfffffffe,%esi
 4003292:	74 af                	je     4003243 <_icvt+0x73>
 4003294:	89 c8                	mov    %ecx,%eax
 4003296:	31 d2                	xor    %edx,%edx
 4003298:	f7 f7                	div    %edi
 400329a:	80 7d f3 58          	cmpb   $0x58,-0xd(%ebp)
 400329e:	75 d8                	jne    4003278 <_icvt+0xa8>
 40032a0:	8a 82 82 49 00 04    	mov    0x4004982(%edx),%al
 40032a6:	88 44 33 01          	mov    %al,0x1(%ebx,%esi,1)
 40032aa:	89 c8                	mov    %ecx,%eax
 40032ac:	31 d2                	xor    %edx,%edx
 40032ae:	f7 f7                	div    %edi
 40032b0:	89 c1                	mov    %eax,%ecx
 40032b2:	85 c0                	test   %eax,%eax
 40032b4:	75 d8                	jne    400328e <_icvt+0xbe>
 40032b6:	46                   	inc    %esi
 40032b7:	8b 45 08             	mov    0x8(%ebp),%eax
 40032ba:	01 f0                	add    %esi,%eax
 40032bc:	5a                   	pop    %edx
 40032bd:	5b                   	pop    %ebx
 40032be:	5e                   	pop    %esi
 40032bf:	5f                   	pop    %edi
 40032c0:	5d                   	pop    %ebp
 40032c1:	c3                   	ret    
 40032c2:	66 90                	xchg   %ax,%ax
 40032c4:	be 7f 00 00 00       	mov    $0x7f,%esi
 40032c9:	8b 45 08             	mov    0x8(%ebp),%eax
 40032cc:	01 f0                	add    %esi,%eax
 40032ce:	5a                   	pop    %edx
 40032cf:	5b                   	pop    %ebx
 40032d0:	5e                   	pop    %esi
 40032d1:	5f                   	pop    %edi
 40032d2:	5d                   	pop    %ebp
 40032d3:	c3                   	ret    
 40032d4:	bf 0a 00 00 00       	mov    $0xa,%edi
 40032d9:	eb 8d                	jmp    4003268 <_icvt+0x98>
 40032db:	90                   	nop
 40032dc:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
 40032e2:	74 0c                	je     40032f0 <_icvt+0x120>
 40032e4:	f7 d9                	neg    %ecx
 40032e6:	be 7e 00 00 00       	mov    $0x7e,%esi
 40032eb:	e9 19 ff ff ff       	jmp    4003209 <_icvt+0x39>
 40032f0:	8b 45 08             	mov    0x8(%ebp),%eax
 40032f3:	c6 40 7e 38          	movb   $0x38,0x7e(%eax)
 40032f7:	be 7d 00 00 00       	mov    $0x7d,%esi
 40032fc:	b9 cc cc cc 0c       	mov    $0xccccccc,%ecx
 4003301:	e9 03 ff ff ff       	jmp    4003209 <_icvt+0x39>
 4003306:	66 90                	xchg   %ax,%ax

04003308 <_sicvt>:
 4003308:	55                   	push   %ebp
 4003309:	89 e5                	mov    %esp,%ebp
 400330b:	57                   	push   %edi
 400330c:	56                   	push   %esi
 400330d:	53                   	push   %ebx
 400330e:	51                   	push   %ecx
 400330f:	8b 75 0c             	mov    0xc(%ebp),%esi
 4003312:	8b 55 10             	mov    0x10(%ebp),%edx
 4003315:	8b 45 08             	mov    0x8(%ebp),%eax
 4003318:	c6 40 7f 00          	movb   $0x0,0x7f(%eax)
 400331c:	8d 42 a8             	lea    -0x58(%edx),%eax
 400331f:	3c 20                	cmp    $0x20,%al
 4003321:	0f 87 e5 00 00 00    	ja     400340c <_sicvt+0x104>
 4003327:	0f bf ce             	movswl %si,%ecx
 400332a:	0f b6 c0             	movzbl %al,%eax
 400332d:	ff 24 85 18 4a 00 04 	jmp    *0x4004a18(,%eax,4)
 4003334:	66 85 f6             	test   %si,%si
 4003337:	0f 88 fb 00 00 00    	js     4003438 <_sicvt+0x130>
 400333d:	be 7e 00 00 00       	mov    $0x7e,%esi
 4003342:	bf 0a 00 00 00       	mov    $0xa,%edi
 4003347:	eb 0e                	jmp    4003357 <_sicvt+0x4f>
 4003349:	8d 76 00             	lea    0x0(%esi),%esi
 400334c:	89 de                	mov    %ebx,%esi
 400334e:	83 fb ff             	cmp    $0xffffffff,%ebx
 4003351:	0f 84 c5 00 00 00    	je     400341c <_sicvt+0x114>
 4003357:	8d 5e ff             	lea    -0x1(%esi),%ebx
 400335a:	0f bf c9             	movswl %cx,%ecx
 400335d:	89 c8                	mov    %ecx,%eax
 400335f:	99                   	cltd   
 4003360:	f7 ff                	idiv   %edi
 4003362:	8a 82 71 49 00 04    	mov    0x4004971(%edx),%al
 4003368:	88 45 f3             	mov    %al,-0xd(%ebp)
 400336b:	8b 55 08             	mov    0x8(%ebp),%edx
 400336e:	88 04 32             	mov    %al,(%edx,%esi,1)
 4003371:	b8 67 66 66 66       	mov    $0x66666667,%eax
 4003376:	f7 e9                	imul   %ecx
 4003378:	89 d0                	mov    %edx,%eax
 400337a:	c1 f8 02             	sar    $0x2,%eax
 400337d:	c1 f9 1f             	sar    $0x1f,%ecx
 4003380:	29 c8                	sub    %ecx,%eax
 4003382:	89 c1                	mov    %eax,%ecx
 4003384:	66 85 c0             	test   %ax,%ax
 4003387:	75 c3                	jne    400334c <_sicvt+0x44>
 4003389:	8b 45 08             	mov    0x8(%ebp),%eax
 400338c:	01 f0                	add    %esi,%eax
 400338e:	5a                   	pop    %edx
 400338f:	5b                   	pop    %ebx
 4003390:	5e                   	pop    %esi
 4003391:	5f                   	pop    %edi
 4003392:	5d                   	pop    %ebp
 4003393:	c3                   	ret    
 4003394:	88 d3                	mov    %dl,%bl
 4003396:	80 fa 75             	cmp    $0x75,%dl
 4003399:	0f 84 8d 00 00 00    	je     400342c <_sicvt+0x124>
 400339f:	31 c0                	xor    %eax,%eax
 40033a1:	80 fa 6f             	cmp    $0x6f,%dl
 40033a4:	0f 95 c0             	setne  %al
 40033a7:	89 c7                	mov    %eax,%edi
 40033a9:	8d 3c fd 08 00 00 00 	lea    0x8(,%edi,8),%edi
 40033b0:	be 7d 00 00 00       	mov    $0x7d,%esi
 40033b5:	88 5d f3             	mov    %bl,-0xd(%ebp)
 40033b8:	8b 5d 08             	mov    0x8(%ebp),%ebx
 40033bb:	eb 20                	jmp    40033dd <_sicvt+0xd5>
 40033bd:	8d 76 00             	lea    0x0(%esi),%esi
 40033c0:	8a 82 71 49 00 04    	mov    0x4004971(%edx),%al
 40033c6:	88 44 33 01          	mov    %al,0x1(%ebx,%esi,1)
 40033ca:	89 c8                	mov    %ecx,%eax
 40033cc:	99                   	cltd   
 40033cd:	f7 ff                	idiv   %edi
 40033cf:	0f bf c8             	movswl %ax,%ecx
 40033d2:	66 85 c0             	test   %ax,%ax
 40033d5:	74 28                	je     40033ff <_sicvt+0xf7>
 40033d7:	4e                   	dec    %esi
 40033d8:	83 fe fe             	cmp    $0xfffffffe,%esi
 40033db:	74 3f                	je     400341c <_sicvt+0x114>
 40033dd:	89 c8                	mov    %ecx,%eax
 40033df:	99                   	cltd   
 40033e0:	f7 ff                	idiv   %edi
 40033e2:	80 7d f3 58          	cmpb   $0x58,-0xd(%ebp)
 40033e6:	75 d8                	jne    40033c0 <_sicvt+0xb8>
 40033e8:	8a 82 82 49 00 04    	mov    0x4004982(%edx),%al
 40033ee:	88 44 33 01          	mov    %al,0x1(%ebx,%esi,1)
 40033f2:	89 c8                	mov    %ecx,%eax
 40033f4:	99                   	cltd   
 40033f5:	f7 ff                	idiv   %edi
 40033f7:	0f bf c8             	movswl %ax,%ecx
 40033fa:	66 85 c0             	test   %ax,%ax
 40033fd:	75 d8                	jne    40033d7 <_sicvt+0xcf>
 40033ff:	46                   	inc    %esi
 4003400:	8b 45 08             	mov    0x8(%ebp),%eax
 4003403:	01 f0                	add    %esi,%eax
 4003405:	5a                   	pop    %edx
 4003406:	5b                   	pop    %ebx
 4003407:	5e                   	pop    %esi
 4003408:	5f                   	pop    %edi
 4003409:	5d                   	pop    %ebp
 400340a:	c3                   	ret    
 400340b:	90                   	nop
 400340c:	be 7f 00 00 00       	mov    $0x7f,%esi
 4003411:	8b 45 08             	mov    0x8(%ebp),%eax
 4003414:	01 f0                	add    %esi,%eax
 4003416:	5a                   	pop    %edx
 4003417:	5b                   	pop    %ebx
 4003418:	5e                   	pop    %esi
 4003419:	5f                   	pop    %edi
 400341a:	5d                   	pop    %ebp
 400341b:	c3                   	ret    
 400341c:	31 f6                	xor    %esi,%esi
 400341e:	8b 45 08             	mov    0x8(%ebp),%eax
 4003421:	01 f0                	add    %esi,%eax
 4003423:	5a                   	pop    %edx
 4003424:	5b                   	pop    %ebx
 4003425:	5e                   	pop    %esi
 4003426:	5f                   	pop    %edi
 4003427:	5d                   	pop    %ebp
 4003428:	c3                   	ret    
 4003429:	8d 76 00             	lea    0x0(%esi),%esi
 400342c:	bf 0a 00 00 00       	mov    $0xa,%edi
 4003431:	e9 7a ff ff ff       	jmp    40033b0 <_sicvt+0xa8>
 4003436:	66 90                	xchg   %ax,%ax
 4003438:	89 f1                	mov    %esi,%ecx
 400343a:	f7 d9                	neg    %ecx
 400343c:	e9 fc fe ff ff       	jmp    400333d <_sicvt+0x35>
 4003441:	66 90                	xchg   %ax,%ax
 4003443:	90                   	nop

04003444 <__submore>:
 4003444:	55                   	push   %ebp
 4003445:	89 e5                	mov    %esp,%ebp
 4003447:	57                   	push   %edi
 4003448:	56                   	push   %esi
 4003449:	53                   	push   %ebx
 400344a:	83 ec 1c             	sub    $0x1c,%esp
 400344d:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003450:	8b 43 30             	mov    0x30(%ebx),%eax
 4003453:	8d 53 40             	lea    0x40(%ebx),%edx
 4003456:	39 d0                	cmp    %edx,%eax
 4003458:	74 4e                	je     40034a8 <__submore+0x64>
 400345a:	8b 73 34             	mov    0x34(%ebx),%esi
 400345d:	8d 3c 36             	lea    (%esi,%esi,1),%edi
 4003460:	52                   	push   %edx
 4003461:	57                   	push   %edi
 4003462:	50                   	push   %eax
 4003463:	ff 73 54             	pushl  0x54(%ebx)
 4003466:	e8 51 f8 ff ff       	call   4002cbc <_realloc_r>
 400346b:	89 c2                	mov    %eax,%edx
 400346d:	83 c4 10             	add    $0x10,%esp
 4003470:	85 c0                	test   %eax,%eax
 4003472:	0f 84 80 00 00 00    	je     40034f8 <__submore+0xb4>
 4003478:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
 400347b:	50                   	push   %eax
 400347c:	56                   	push   %esi
 400347d:	52                   	push   %edx
 400347e:	89 55 e0             	mov    %edx,-0x20(%ebp)
 4003481:	51                   	push   %ecx
 4003482:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 4003485:	e8 92 fa ff ff       	call   4002f1c <memcpy>
 400348a:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 400348d:	89 0b                	mov    %ecx,(%ebx)
 400348f:	8b 55 e0             	mov    -0x20(%ebp),%edx
 4003492:	89 53 30             	mov    %edx,0x30(%ebx)
 4003495:	89 7b 34             	mov    %edi,0x34(%ebx)
 4003498:	83 c4 10             	add    $0x10,%esp
 400349b:	31 c0                	xor    %eax,%eax
 400349d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 40034a0:	5b                   	pop    %ebx
 40034a1:	5e                   	pop    %esi
 40034a2:	5f                   	pop    %edi
 40034a3:	5d                   	pop    %ebp
 40034a4:	c3                   	ret    
 40034a5:	8d 76 00             	lea    0x0(%esi),%esi
 40034a8:	83 ec 08             	sub    $0x8,%esp
 40034ab:	68 00 04 00 00       	push   $0x400
 40034b0:	ff 73 54             	pushl  0x54(%ebx)
 40034b3:	e8 a4 f6 ff ff       	call   4002b5c <_malloc_r>
 40034b8:	83 c4 10             	add    $0x10,%esp
 40034bb:	85 c0                	test   %eax,%eax
 40034bd:	74 39                	je     40034f8 <__submore+0xb4>
 40034bf:	89 43 30             	mov    %eax,0x30(%ebx)
 40034c2:	c7 43 34 00 04 00 00 	movl   $0x400,0x34(%ebx)
 40034c9:	8a 4b 42             	mov    0x42(%ebx),%cl
 40034cc:	88 88 ff 03 00 00    	mov    %cl,0x3ff(%eax)
 40034d2:	8a 4b 41             	mov    0x41(%ebx),%cl
 40034d5:	88 88 fe 03 00 00    	mov    %cl,0x3fe(%eax)
 40034db:	8a 4b 40             	mov    0x40(%ebx),%cl
 40034de:	88 88 fd 03 00 00    	mov    %cl,0x3fd(%eax)
 40034e4:	05 fd 03 00 00       	add    $0x3fd,%eax
 40034e9:	89 03                	mov    %eax,(%ebx)
 40034eb:	31 c0                	xor    %eax,%eax
 40034ed:	8d 65 f4             	lea    -0xc(%ebp),%esp
 40034f0:	5b                   	pop    %ebx
 40034f1:	5e                   	pop    %esi
 40034f2:	5f                   	pop    %edi
 40034f3:	5d                   	pop    %ebp
 40034f4:	c3                   	ret    
 40034f5:	8d 76 00             	lea    0x0(%esi),%esi
 40034f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 40034fd:	eb 9e                	jmp    400349d <__submore+0x59>
 40034ff:	90                   	nop

04003500 <ungetc>:
 4003500:	55                   	push   %ebp
 4003501:	89 e5                	mov    %esp,%ebp
 4003503:	57                   	push   %edi
 4003504:	56                   	push   %esi
 4003505:	53                   	push   %ebx
 4003506:	83 ec 0c             	sub    $0xc,%esp
 4003509:	8b 5d 08             	mov    0x8(%ebp),%ebx
 400350c:	8b 75 0c             	mov    0xc(%ebp),%esi
 400350f:	83 fb ff             	cmp    $0xffffffff,%ebx
 4003512:	74 6c                	je     4003580 <ungetc+0x80>
 4003514:	8b 46 54             	mov    0x54(%esi),%eax
 4003517:	85 c0                	test   %eax,%eax
 4003519:	74 7d                	je     4003598 <ungetc+0x98>
 400351b:	8b 50 5c             	mov    0x5c(%eax),%edx
 400351e:	85 d2                	test   %edx,%edx
 4003520:	74 66                	je     4003588 <ungetc+0x88>
 4003522:	8b 46 0c             	mov    0xc(%esi),%eax
 4003525:	89 c2                	mov    %eax,%edx
 4003527:	83 e2 df             	and    $0xffffffdf,%edx
 400352a:	66 89 56 0c          	mov    %dx,0xc(%esi)
 400352e:	a8 04                	test   $0x4,%al
 4003530:	75 13                	jne    4003545 <ungetc+0x45>
 4003532:	a8 10                	test   $0x10,%al
 4003534:	74 4a                	je     4003580 <ungetc+0x80>
 4003536:	a8 08                	test   $0x8,%al
 4003538:	0f 85 ae 00 00 00    	jne    40035ec <ungetc+0xec>
 400353e:	83 ca 04             	or     $0x4,%edx
 4003541:	66 89 56 0c          	mov    %dx,0xc(%esi)
 4003545:	0f b6 fb             	movzbl %bl,%edi
 4003548:	8b 46 30             	mov    0x30(%esi),%eax
 400354b:	85 c0                	test   %eax,%eax
 400354d:	74 59                	je     40035a8 <ungetc+0xa8>
 400354f:	8b 46 34             	mov    0x34(%esi),%eax
 4003552:	39 46 04             	cmp    %eax,0x4(%esi)
 4003555:	7d 19                	jge    4003570 <ungetc+0x70>
 4003557:	8b 06                	mov    (%esi),%eax
 4003559:	8d 50 ff             	lea    -0x1(%eax),%edx
 400355c:	89 16                	mov    %edx,(%esi)
 400355e:	88 58 ff             	mov    %bl,-0x1(%eax)
 4003561:	ff 46 04             	incl   0x4(%esi)
 4003564:	89 f8                	mov    %edi,%eax
 4003566:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4003569:	5b                   	pop    %ebx
 400356a:	5e                   	pop    %esi
 400356b:	5f                   	pop    %edi
 400356c:	5d                   	pop    %ebp
 400356d:	c3                   	ret    
 400356e:	66 90                	xchg   %ax,%ax
 4003570:	83 ec 0c             	sub    $0xc,%esp
 4003573:	56                   	push   %esi
 4003574:	e8 cb fe ff ff       	call   4003444 <__submore>
 4003579:	83 c4 10             	add    $0x10,%esp
 400357c:	85 c0                	test   %eax,%eax
 400357e:	74 d7                	je     4003557 <ungetc+0x57>
 4003580:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003585:	eb df                	jmp    4003566 <ungetc+0x66>
 4003587:	90                   	nop
 4003588:	83 ec 0c             	sub    $0xc,%esp
 400358b:	50                   	push   %eax
 400358c:	e8 5b d8 ff ff       	call   4000dec <__sinit>
 4003591:	83 c4 10             	add    $0x10,%esp
 4003594:	eb 8c                	jmp    4003522 <ungetc+0x22>
 4003596:	66 90                	xchg   %ax,%ax
 4003598:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 400359d:	89 46 54             	mov    %eax,0x54(%esi)
 40035a0:	e9 76 ff ff ff       	jmp    400351b <ungetc+0x1b>
 40035a5:	8d 76 00             	lea    0x0(%esi),%esi
 40035a8:	8b 56 10             	mov    0x10(%esi),%edx
 40035ab:	8b 06                	mov    (%esi),%eax
 40035ad:	85 d2                	test   %edx,%edx
 40035af:	74 0c                	je     40035bd <ungetc+0xbd>
 40035b1:	39 c2                	cmp    %eax,%edx
 40035b3:	73 08                	jae    40035bd <ungetc+0xbd>
 40035b5:	0f b6 50 ff          	movzbl -0x1(%eax),%edx
 40035b9:	39 d7                	cmp    %edx,%edi
 40035bb:	74 5b                	je     4003618 <ungetc+0x118>
 40035bd:	8b 56 04             	mov    0x4(%esi),%edx
 40035c0:	89 56 3c             	mov    %edx,0x3c(%esi)
 40035c3:	89 46 38             	mov    %eax,0x38(%esi)
 40035c6:	8d 46 40             	lea    0x40(%esi),%eax
 40035c9:	89 46 30             	mov    %eax,0x30(%esi)
 40035cc:	c7 46 34 03 00 00 00 	movl   $0x3,0x34(%esi)
 40035d3:	88 5e 42             	mov    %bl,0x42(%esi)
 40035d6:	8d 46 42             	lea    0x42(%esi),%eax
 40035d9:	89 06                	mov    %eax,(%esi)
 40035db:	c7 46 04 01 00 00 00 	movl   $0x1,0x4(%esi)
 40035e2:	89 f8                	mov    %edi,%eax
 40035e4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 40035e7:	5b                   	pop    %ebx
 40035e8:	5e                   	pop    %esi
 40035e9:	5f                   	pop    %edi
 40035ea:	5d                   	pop    %ebp
 40035eb:	c3                   	ret    
 40035ec:	83 ec 0c             	sub    $0xc,%esp
 40035ef:	56                   	push   %esi
 40035f0:	e8 ab d3 ff ff       	call   40009a0 <fflush>
 40035f5:	83 c4 10             	add    $0x10,%esp
 40035f8:	85 c0                	test   %eax,%eax
 40035fa:	75 84                	jne    4003580 <ungetc+0x80>
 40035fc:	8b 56 0c             	mov    0xc(%esi),%edx
 40035ff:	83 e2 f7             	and    $0xfffffff7,%edx
 4003602:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%esi)
 4003609:	c7 46 18 00 00 00 00 	movl   $0x0,0x18(%esi)
 4003610:	e9 29 ff ff ff       	jmp    400353e <ungetc+0x3e>
 4003615:	8d 76 00             	lea    0x0(%esi),%esi
 4003618:	48                   	dec    %eax
 4003619:	89 06                	mov    %eax,(%esi)
 400361b:	ff 46 04             	incl   0x4(%esi)
 400361e:	89 f8                	mov    %edi,%eax
 4003620:	e9 41 ff ff ff       	jmp    4003566 <ungetc+0x66>
 4003625:	66 90                	xchg   %ax,%ax
 4003627:	90                   	nop

04003628 <fputs>:
 4003628:	55                   	push   %ebp
 4003629:	89 e5                	mov    %esp,%ebp
 400362b:	83 ec 34             	sub    $0x34,%esp
 400362e:	8b 45 08             	mov    0x8(%ebp),%eax
 4003631:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4003634:	50                   	push   %eax
 4003635:	e8 06 f9 ff ff       	call   4002f40 <strlen>
 400363a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 400363d:	89 45 e8             	mov    %eax,-0x18(%ebp)
 4003640:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 4003643:	89 45 ec             	mov    %eax,-0x14(%ebp)
 4003646:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 400364d:	58                   	pop    %eax
 400364e:	5a                   	pop    %edx
 400364f:	8d 45 ec             	lea    -0x14(%ebp),%eax
 4003652:	50                   	push   %eax
 4003653:	ff 75 0c             	pushl  0xc(%ebp)
 4003656:	e8 05 00 00 00       	call   4003660 <__sfvwrite>
 400365b:	c9                   	leave  
 400365c:	c3                   	ret    
 400365d:	66 90                	xchg   %ax,%ax
 400365f:	90                   	nop

04003660 <__sfvwrite>:
 4003660:	55                   	push   %ebp
 4003661:	89 e5                	mov    %esp,%ebp
 4003663:	57                   	push   %edi
 4003664:	56                   	push   %esi
 4003665:	53                   	push   %ebx
 4003666:	83 ec 2c             	sub    $0x2c,%esp
 4003669:	8b 5d 08             	mov    0x8(%ebp),%ebx
 400366c:	8b 45 0c             	mov    0xc(%ebp),%eax
 400366f:	8b 48 08             	mov    0x8(%eax),%ecx
 4003672:	85 c9                	test   %ecx,%ecx
 4003674:	74 62                	je     40036d8 <__sfvwrite+0x78>
 4003676:	8b 43 0c             	mov    0xc(%ebx),%eax
 4003679:	a8 08                	test   $0x8,%al
 400367b:	74 67                	je     40036e4 <__sfvwrite+0x84>
 400367d:	8b 53 10             	mov    0x10(%ebx),%edx
 4003680:	85 d2                	test   %edx,%edx
 4003682:	74 60                	je     40036e4 <__sfvwrite+0x84>
 4003684:	8b 75 0c             	mov    0xc(%ebp),%esi
 4003687:	8b 36                	mov    (%esi),%esi
 4003689:	89 75 e4             	mov    %esi,-0x1c(%ebp)
 400368c:	a8 02                	test   $0x2,%al
 400368e:	74 77                	je     4003707 <__sfvwrite+0xa7>
 4003690:	31 f6                	xor    %esi,%esi
 4003692:	66 90                	xchg   %ax,%ax
 4003694:	85 f6                	test   %esi,%esi
 4003696:	0f 84 28 01 00 00    	je     40037c4 <__sfvwrite+0x164>
 400369c:	50                   	push   %eax
 400369d:	89 f0                	mov    %esi,%eax
 400369f:	81 fe 00 04 00 00    	cmp    $0x400,%esi
 40036a5:	76 05                	jbe    40036ac <__sfvwrite+0x4c>
 40036a7:	b8 00 04 00 00       	mov    $0x400,%eax
 40036ac:	50                   	push   %eax
 40036ad:	57                   	push   %edi
 40036ae:	ff 73 1c             	pushl  0x1c(%ebx)
 40036b1:	ff 53 24             	call   *0x24(%ebx)
 40036b4:	83 c4 10             	add    $0x10,%esp
 40036b7:	85 c0                	test   %eax,%eax
 40036b9:	0f 8e 19 01 00 00    	jle    40037d8 <__sfvwrite+0x178>
 40036bf:	01 c7                	add    %eax,%edi
 40036c1:	29 c6                	sub    %eax,%esi
 40036c3:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 40036c6:	8b 51 08             	mov    0x8(%ecx),%edx
 40036c9:	89 55 e0             	mov    %edx,-0x20(%ebp)
 40036cc:	29 c2                	sub    %eax,%edx
 40036ce:	89 51 08             	mov    %edx,0x8(%ecx)
 40036d1:	85 d2                	test   %edx,%edx
 40036d3:	75 bf                	jne    4003694 <__sfvwrite+0x34>
 40036d5:	8d 76 00             	lea    0x0(%esi),%esi
 40036d8:	31 c0                	xor    %eax,%eax
 40036da:	8d 65 f4             	lea    -0xc(%ebp),%esp
 40036dd:	5b                   	pop    %ebx
 40036de:	5e                   	pop    %esi
 40036df:	5f                   	pop    %edi
 40036e0:	5d                   	pop    %ebp
 40036e1:	c3                   	ret    
 40036e2:	66 90                	xchg   %ax,%ax
 40036e4:	83 ec 0c             	sub    $0xc,%esp
 40036e7:	53                   	push   %ebx
 40036e8:	e8 bf 02 00 00       	call   40039ac <__swsetup>
 40036ed:	83 c4 10             	add    $0x10,%esp
 40036f0:	85 c0                	test   %eax,%eax
 40036f2:	0f 85 aa 02 00 00    	jne    40039a2 <__sfvwrite+0x342>
 40036f8:	8b 43 0c             	mov    0xc(%ebx),%eax
 40036fb:	8b 75 0c             	mov    0xc(%ebp),%esi
 40036fe:	8b 36                	mov    (%esi),%esi
 4003700:	89 75 e4             	mov    %esi,-0x1c(%ebp)
 4003703:	a8 02                	test   $0x2,%al
 4003705:	75 89                	jne    4003690 <__sfvwrite+0x30>
 4003707:	a8 01                	test   $0x1,%al
 4003709:	0f 84 dd 00 00 00    	je     40037ec <__sfvwrite+0x18c>
 400370f:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 4003716:	31 f6                	xor    %esi,%esi
 4003718:	85 f6                	test   %esi,%esi
 400371a:	0f 84 87 00 00 00    	je     40037a7 <__sfvwrite+0x147>
 4003720:	8b 45 e0             	mov    -0x20(%ebp),%eax
 4003723:	85 c0                	test   %eax,%eax
 4003725:	0f 84 bd 01 00 00    	je     40038e8 <__sfvwrite+0x288>
 400372b:	8b 45 d8             	mov    -0x28(%ebp),%eax
 400372e:	89 c2                	mov    %eax,%edx
 4003730:	39 f0                	cmp    %esi,%eax
 4003732:	76 02                	jbe    4003736 <__sfvwrite+0xd6>
 4003734:	89 f2                	mov    %esi,%edx
 4003736:	89 d1                	mov    %edx,%ecx
 4003738:	8b 43 14             	mov    0x14(%ebx),%eax
 400373b:	89 45 dc             	mov    %eax,-0x24(%ebp)
 400373e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 4003741:	8b 03                	mov    (%ebx),%eax
 4003743:	89 45 d0             	mov    %eax,-0x30(%ebp)
 4003746:	3b 43 10             	cmp    0x10(%ebx),%eax
 4003749:	76 11                	jbe    400375c <__sfvwrite+0xfc>
 400374b:	8b 45 dc             	mov    -0x24(%ebp),%eax
 400374e:	03 43 08             	add    0x8(%ebx),%eax
 4003751:	89 45 dc             	mov    %eax,-0x24(%ebp)
 4003754:	39 c2                	cmp    %eax,%edx
 4003756:	0f 8f dc 01 00 00    	jg     4003938 <__sfvwrite+0x2d8>
 400375c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 400375f:	39 c2                	cmp    %eax,%edx
 4003761:	0f 8c 31 01 00 00    	jl     4003898 <__sfvwrite+0x238>
 4003767:	52                   	push   %edx
 4003768:	50                   	push   %eax
 4003769:	57                   	push   %edi
 400376a:	ff 73 1c             	pushl  0x1c(%ebx)
 400376d:	ff 53 24             	call   *0x24(%ebx)
 4003770:	89 c1                	mov    %eax,%ecx
 4003772:	83 c4 10             	add    $0x10,%esp
 4003775:	85 c0                	test   %eax,%eax
 4003777:	7e 5f                	jle    40037d8 <__sfvwrite+0x178>
 4003779:	29 4d d8             	sub    %ecx,-0x28(%ebp)
 400377c:	0f 84 3e 01 00 00    	je     40038c0 <__sfvwrite+0x260>
 4003782:	01 cf                	add    %ecx,%edi
 4003784:	29 ce                	sub    %ecx,%esi
 4003786:	8b 45 0c             	mov    0xc(%ebp),%eax
 4003789:	8b 40 08             	mov    0x8(%eax),%eax
 400378c:	89 45 dc             	mov    %eax,-0x24(%ebp)
 400378f:	29 c8                	sub    %ecx,%eax
 4003791:	8b 55 0c             	mov    0xc(%ebp),%edx
 4003794:	89 42 08             	mov    %eax,0x8(%edx)
 4003797:	85 c0                	test   %eax,%eax
 4003799:	0f 84 39 ff ff ff    	je     40036d8 <__sfvwrite+0x78>
 400379f:	85 f6                	test   %esi,%esi
 40037a1:	0f 85 79 ff ff ff    	jne    4003720 <__sfvwrite+0xc0>
 40037a7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 40037aa:	8b 38                	mov    (%eax),%edi
 40037ac:	8b 70 04             	mov    0x4(%eax),%esi
 40037af:	83 c0 08             	add    $0x8,%eax
 40037b2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 40037b5:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 40037bc:	e9 57 ff ff ff       	jmp    4003718 <__sfvwrite+0xb8>
 40037c1:	8d 76 00             	lea    0x0(%esi),%esi
 40037c4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 40037c7:	8b 38                	mov    (%eax),%edi
 40037c9:	8b 70 04             	mov    0x4(%eax),%esi
 40037cc:	83 c0 08             	add    $0x8,%eax
 40037cf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 40037d2:	e9 bd fe ff ff       	jmp    4003694 <__sfvwrite+0x34>
 40037d7:	90                   	nop
 40037d8:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 40037dd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 40037e2:	8d 65 f4             	lea    -0xc(%ebp),%esp
 40037e5:	5b                   	pop    %ebx
 40037e6:	5e                   	pop    %esi
 40037e7:	5f                   	pop    %edi
 40037e8:	5d                   	pop    %ebp
 40037e9:	c3                   	ret    
 40037ea:	66 90                	xchg   %ax,%ax
 40037ec:	31 f6                	xor    %esi,%esi
 40037ee:	66 90                	xchg   %ax,%ax
 40037f0:	85 f6                	test   %esi,%esi
 40037f2:	74 5a                	je     400384e <__sfvwrite+0x1ee>
 40037f4:	8b 53 08             	mov    0x8(%ebx),%edx
 40037f7:	f6 c4 02             	test   $0x2,%ah
 40037fa:	74 64                	je     4003860 <__sfvwrite+0x200>
 40037fc:	89 d1                	mov    %edx,%ecx
 40037fe:	39 d6                	cmp    %edx,%esi
 4003800:	0f 82 0a 01 00 00    	jb     4003910 <__sfvwrite+0x2b0>
 4003806:	89 75 e0             	mov    %esi,-0x20(%ebp)
 4003809:	89 55 d8             	mov    %edx,-0x28(%ebp)
 400380c:	50                   	push   %eax
 400380d:	51                   	push   %ecx
 400380e:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 4003811:	57                   	push   %edi
 4003812:	ff 33                	pushl  (%ebx)
 4003814:	e8 3f 05 00 00       	call   4003d58 <memmove>
 4003819:	8b 55 d8             	mov    -0x28(%ebp),%edx
 400381c:	29 53 08             	sub    %edx,0x8(%ebx)
 400381f:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 4003822:	01 0b                	add    %ecx,(%ebx)
 4003824:	83 c4 10             	add    $0x10,%esp
 4003827:	89 f2                	mov    %esi,%edx
 4003829:	01 d7                	add    %edx,%edi
 400382b:	29 d6                	sub    %edx,%esi
 400382d:	8b 45 0c             	mov    0xc(%ebp),%eax
 4003830:	8b 40 08             	mov    0x8(%eax),%eax
 4003833:	89 45 dc             	mov    %eax,-0x24(%ebp)
 4003836:	2b 45 e0             	sub    -0x20(%ebp),%eax
 4003839:	8b 55 0c             	mov    0xc(%ebp),%edx
 400383c:	89 42 08             	mov    %eax,0x8(%edx)
 400383f:	85 c0                	test   %eax,%eax
 4003841:	0f 84 91 fe ff ff    	je     40036d8 <__sfvwrite+0x78>
 4003847:	8b 43 0c             	mov    0xc(%ebx),%eax
 400384a:	85 f6                	test   %esi,%esi
 400384c:	75 a6                	jne    40037f4 <__sfvwrite+0x194>
 400384e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 4003851:	8b 39                	mov    (%ecx),%edi
 4003853:	8b 71 04             	mov    0x4(%ecx),%esi
 4003856:	83 c1 08             	add    $0x8,%ecx
 4003859:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 400385c:	eb 92                	jmp    40037f0 <__sfvwrite+0x190>
 400385e:	66 90                	xchg   %ax,%ax
 4003860:	8b 03                	mov    (%ebx),%eax
 4003862:	3b 43 10             	cmp    0x10(%ebx),%eax
 4003865:	76 08                	jbe    400386f <__sfvwrite+0x20f>
 4003867:	39 d6                	cmp    %edx,%esi
 4003869:	0f 87 f5 00 00 00    	ja     4003964 <__sfvwrite+0x304>
 400386f:	8b 53 14             	mov    0x14(%ebx),%edx
 4003872:	39 d6                	cmp    %edx,%esi
 4003874:	0f 82 a2 00 00 00    	jb     400391c <__sfvwrite+0x2bc>
 400387a:	51                   	push   %ecx
 400387b:	52                   	push   %edx
 400387c:	57                   	push   %edi
 400387d:	ff 73 1c             	pushl  0x1c(%ebx)
 4003880:	ff 53 24             	call   *0x24(%ebx)
 4003883:	89 45 e0             	mov    %eax,-0x20(%ebp)
 4003886:	83 c4 10             	add    $0x10,%esp
 4003889:	85 c0                	test   %eax,%eax
 400388b:	0f 8e 47 ff ff ff    	jle    40037d8 <__sfvwrite+0x178>
 4003891:	89 c2                	mov    %eax,%edx
 4003893:	eb 94                	jmp    4003829 <__sfvwrite+0x1c9>
 4003895:	8d 76 00             	lea    0x0(%esi),%esi
 4003898:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 400389b:	50                   	push   %eax
 400389c:	52                   	push   %edx
 400389d:	89 55 dc             	mov    %edx,-0x24(%ebp)
 40038a0:	57                   	push   %edi
 40038a1:	ff 75 d0             	pushl  -0x30(%ebp)
 40038a4:	e8 af 04 00 00       	call   4003d58 <memmove>
 40038a9:	8b 55 dc             	mov    -0x24(%ebp),%edx
 40038ac:	29 53 08             	sub    %edx,0x8(%ebx)
 40038af:	01 13                	add    %edx,(%ebx)
 40038b1:	83 c4 10             	add    $0x10,%esp
 40038b4:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 40038b7:	29 4d d8             	sub    %ecx,-0x28(%ebp)
 40038ba:	0f 85 c2 fe ff ff    	jne    4003782 <__sfvwrite+0x122>
 40038c0:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 40038c3:	83 ec 0c             	sub    $0xc,%esp
 40038c6:	53                   	push   %ebx
 40038c7:	e8 d4 d0 ff ff       	call   40009a0 <fflush>
 40038cc:	83 c4 10             	add    $0x10,%esp
 40038cf:	85 c0                	test   %eax,%eax
 40038d1:	0f 85 01 ff ff ff    	jne    40037d8 <__sfvwrite+0x178>
 40038d7:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 40038de:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 40038e1:	e9 9c fe ff ff       	jmp    4003782 <__sfvwrite+0x122>
 40038e6:	66 90                	xchg   %ax,%ax
 40038e8:	50                   	push   %eax
 40038e9:	56                   	push   %esi
 40038ea:	6a 0a                	push   $0xa
 40038ec:	57                   	push   %edi
 40038ed:	e8 32 04 00 00       	call   4003d24 <memchr>
 40038f2:	83 c4 10             	add    $0x10,%esp
 40038f5:	85 c0                	test   %eax,%eax
 40038f7:	0f 84 93 00 00 00    	je     4003990 <__sfvwrite+0x330>
 40038fd:	40                   	inc    %eax
 40038fe:	29 f8                	sub    %edi,%eax
 4003900:	89 45 d8             	mov    %eax,-0x28(%ebp)
 4003903:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
 400390a:	e9 1c fe ff ff       	jmp    400372b <__sfvwrite+0xcb>
 400390f:	90                   	nop
 4003910:	89 f2                	mov    %esi,%edx
 4003912:	89 75 e0             	mov    %esi,-0x20(%ebp)
 4003915:	89 f1                	mov    %esi,%ecx
 4003917:	e9 ed fe ff ff       	jmp    4003809 <__sfvwrite+0x1a9>
 400391c:	89 75 e0             	mov    %esi,-0x20(%ebp)
 400391f:	52                   	push   %edx
 4003920:	56                   	push   %esi
 4003921:	57                   	push   %edi
 4003922:	50                   	push   %eax
 4003923:	e8 30 04 00 00       	call   4003d58 <memmove>
 4003928:	29 73 08             	sub    %esi,0x8(%ebx)
 400392b:	01 33                	add    %esi,(%ebx)
 400392d:	83 c4 10             	add    $0x10,%esp
 4003930:	89 f2                	mov    %esi,%edx
 4003932:	e9 f2 fe ff ff       	jmp    4003829 <__sfvwrite+0x1c9>
 4003937:	90                   	nop
 4003938:	51                   	push   %ecx
 4003939:	50                   	push   %eax
 400393a:	57                   	push   %edi
 400393b:	ff 75 d0             	pushl  -0x30(%ebp)
 400393e:	e8 15 04 00 00       	call   4003d58 <memmove>
 4003943:	8b 45 dc             	mov    -0x24(%ebp),%eax
 4003946:	01 03                	add    %eax,(%ebx)
 4003948:	89 1c 24             	mov    %ebx,(%esp)
 400394b:	e8 50 d0 ff ff       	call   40009a0 <fflush>
 4003950:	83 c4 10             	add    $0x10,%esp
 4003953:	85 c0                	test   %eax,%eax
 4003955:	0f 85 7d fe ff ff    	jne    40037d8 <__sfvwrite+0x178>
 400395b:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 400395e:	e9 16 fe ff ff       	jmp    4003779 <__sfvwrite+0x119>
 4003963:	90                   	nop
 4003964:	51                   	push   %ecx
 4003965:	52                   	push   %edx
 4003966:	89 55 e0             	mov    %edx,-0x20(%ebp)
 4003969:	57                   	push   %edi
 400396a:	50                   	push   %eax
 400396b:	e8 e8 03 00 00       	call   4003d58 <memmove>
 4003970:	8b 55 e0             	mov    -0x20(%ebp),%edx
 4003973:	01 13                	add    %edx,(%ebx)
 4003975:	89 1c 24             	mov    %ebx,(%esp)
 4003978:	e8 23 d0 ff ff       	call   40009a0 <fflush>
 400397d:	83 c4 10             	add    $0x10,%esp
 4003980:	85 c0                	test   %eax,%eax
 4003982:	0f 85 50 fe ff ff    	jne    40037d8 <__sfvwrite+0x178>
 4003988:	8b 55 e0             	mov    -0x20(%ebp),%edx
 400398b:	e9 99 fe ff ff       	jmp    4003829 <__sfvwrite+0x1c9>
 4003990:	8d 46 01             	lea    0x1(%esi),%eax
 4003993:	89 45 d8             	mov    %eax,-0x28(%ebp)
 4003996:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
 400399d:	e9 89 fd ff ff       	jmp    400372b <__sfvwrite+0xcb>
 40039a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 40039a7:	e9 2e fd ff ff       	jmp    40036da <__sfvwrite+0x7a>

040039ac <__swsetup>:
 40039ac:	55                   	push   %ebp
 40039ad:	89 e5                	mov    %esp,%ebp
 40039af:	53                   	push   %ebx
 40039b0:	51                   	push   %ecx
 40039b1:	8b 5d 08             	mov    0x8(%ebp),%ebx
 40039b4:	8b 43 54             	mov    0x54(%ebx),%eax
 40039b7:	85 c0                	test   %eax,%eax
 40039b9:	0f 84 b1 00 00 00    	je     4003a70 <__swsetup+0xc4>
 40039bf:	8b 50 5c             	mov    0x5c(%eax),%edx
 40039c2:	85 d2                	test   %edx,%edx
 40039c4:	74 62                	je     4003a28 <__swsetup+0x7c>
 40039c6:	8b 43 0c             	mov    0xc(%ebx),%eax
 40039c9:	a8 08                	test   $0x8,%al
 40039cb:	74 23                	je     40039f0 <__swsetup+0x44>
 40039cd:	8b 53 10             	mov    0x10(%ebx),%edx
 40039d0:	85 d2                	test   %edx,%edx
 40039d2:	0f 84 a8 00 00 00    	je     4003a80 <__swsetup+0xd4>
 40039d8:	8b 43 0c             	mov    0xc(%ebx),%eax
 40039db:	a8 01                	test   $0x1,%al
 40039dd:	75 31                	jne    4003a10 <__swsetup+0x64>
 40039df:	a8 02                	test   $0x2,%al
 40039e1:	74 25                	je     4003a08 <__swsetup+0x5c>
 40039e3:	31 c0                	xor    %eax,%eax
 40039e5:	89 43 08             	mov    %eax,0x8(%ebx)
 40039e8:	31 c0                	xor    %eax,%eax
 40039ea:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 40039ed:	c9                   	leave  
 40039ee:	c3                   	ret    
 40039ef:	90                   	nop
 40039f0:	a8 10                	test   $0x10,%al
 40039f2:	0f 84 9c 00 00 00    	je     4003a94 <__swsetup+0xe8>
 40039f8:	a8 04                	test   $0x4,%al
 40039fa:	75 3c                	jne    4003a38 <__swsetup+0x8c>
 40039fc:	8b 53 10             	mov    0x10(%ebx),%edx
 40039ff:	83 c8 08             	or     $0x8,%eax
 4003a02:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 4003a06:	eb c8                	jmp    40039d0 <__swsetup+0x24>
 4003a08:	8b 43 14             	mov    0x14(%ebx),%eax
 4003a0b:	eb d8                	jmp    40039e5 <__swsetup+0x39>
 4003a0d:	8d 76 00             	lea    0x0(%esi),%esi
 4003a10:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 4003a17:	8b 43 14             	mov    0x14(%ebx),%eax
 4003a1a:	f7 d8                	neg    %eax
 4003a1c:	89 43 18             	mov    %eax,0x18(%ebx)
 4003a1f:	31 c0                	xor    %eax,%eax
 4003a21:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4003a24:	c9                   	leave  
 4003a25:	c3                   	ret    
 4003a26:	66 90                	xchg   %ax,%ax
 4003a28:	83 ec 0c             	sub    $0xc,%esp
 4003a2b:	50                   	push   %eax
 4003a2c:	e8 bb d3 ff ff       	call   4000dec <__sinit>
 4003a31:	83 c4 10             	add    $0x10,%esp
 4003a34:	eb 90                	jmp    40039c6 <__swsetup+0x1a>
 4003a36:	66 90                	xchg   %ax,%ax
 4003a38:	8b 53 30             	mov    0x30(%ebx),%edx
 4003a3b:	85 d2                	test   %edx,%edx
 4003a3d:	74 20                	je     4003a5f <__swsetup+0xb3>
 4003a3f:	8d 4b 40             	lea    0x40(%ebx),%ecx
 4003a42:	39 ca                	cmp    %ecx,%edx
 4003a44:	74 12                	je     4003a58 <__swsetup+0xac>
 4003a46:	83 ec 08             	sub    $0x8,%esp
 4003a49:	52                   	push   %edx
 4003a4a:	ff 73 54             	pushl  0x54(%ebx)
 4003a4d:	e8 32 f2 ff ff       	call   4002c84 <_free_r>
 4003a52:	8b 43 0c             	mov    0xc(%ebx),%eax
 4003a55:	83 c4 10             	add    $0x10,%esp
 4003a58:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 4003a5f:	83 e0 db             	and    $0xffffffdb,%eax
 4003a62:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 4003a69:	8b 53 10             	mov    0x10(%ebx),%edx
 4003a6c:	89 13                	mov    %edx,(%ebx)
 4003a6e:	eb 8f                	jmp    40039ff <__swsetup+0x53>
 4003a70:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 4003a75:	89 43 54             	mov    %eax,0x54(%ebx)
 4003a78:	e9 42 ff ff ff       	jmp    40039bf <__swsetup+0x13>
 4003a7d:	8d 76 00             	lea    0x0(%esi),%esi
 4003a80:	83 ec 0c             	sub    $0xc,%esp
 4003a83:	53                   	push   %ebx
 4003a84:	e8 bf cb ff ff       	call   4000648 <__smakebuf>
 4003a89:	83 c4 10             	add    $0x10,%esp
 4003a8c:	e9 47 ff ff ff       	jmp    40039d8 <__swsetup+0x2c>
 4003a91:	8d 76 00             	lea    0x0(%esi),%esi
 4003a94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003a99:	e9 4c ff ff ff       	jmp    40039ea <__swsetup+0x3e>
 4003a9e:	66 90                	xchg   %ax,%ax

04003aa0 <fputc>:
 4003aa0:	55                   	push   %ebp
 4003aa1:	89 e5                	mov    %esp,%ebp
 4003aa3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4003aa6:	8b 45 0c             	mov    0xc(%ebp),%eax
 4003aa9:	8b 50 08             	mov    0x8(%eax),%edx
 4003aac:	4a                   	dec    %edx
 4003aad:	89 50 08             	mov    %edx,0x8(%eax)
 4003ab0:	85 d2                	test   %edx,%edx
 4003ab2:	78 10                	js     4003ac4 <fputc+0x24>
 4003ab4:	8b 10                	mov    (%eax),%edx
 4003ab6:	88 0a                	mov    %cl,(%edx)
 4003ab8:	8b 10                	mov    (%eax),%edx
 4003aba:	8d 4a 01             	lea    0x1(%edx),%ecx
 4003abd:	89 08                	mov    %ecx,(%eax)
 4003abf:	0f b6 02             	movzbl (%edx),%eax
 4003ac2:	5d                   	pop    %ebp
 4003ac3:	c3                   	ret    
 4003ac4:	3b 50 18             	cmp    0x18(%eax),%edx
 4003ac7:	7c 1b                	jl     4003ae4 <fputc+0x44>
 4003ac9:	8b 10                	mov    (%eax),%edx
 4003acb:	88 0a                	mov    %cl,(%edx)
 4003acd:	8b 10                	mov    (%eax),%edx
 4003acf:	80 3a 0a             	cmpb   $0xa,(%edx)
 4003ad2:	75 e6                	jne    4003aba <fputc+0x1a>
 4003ad4:	89 45 0c             	mov    %eax,0xc(%ebp)
 4003ad7:	c7 45 08 0a 00 00 00 	movl   $0xa,0x8(%ebp)
 4003ade:	5d                   	pop    %ebp
 4003adf:	e9 ac 00 00 00       	jmp    4003b90 <__swbuf>
 4003ae4:	89 45 0c             	mov    %eax,0xc(%ebp)
 4003ae7:	89 4d 08             	mov    %ecx,0x8(%ebp)
 4003aea:	5d                   	pop    %ebp
 4003aeb:	e9 a0 00 00 00       	jmp    4003b90 <__swbuf>

04003af0 <fread>:
 4003af0:	55                   	push   %ebp
 4003af1:	89 e5                	mov    %esp,%ebp
 4003af3:	57                   	push   %edi
 4003af4:	56                   	push   %esi
 4003af5:	53                   	push   %ebx
 4003af6:	83 ec 1c             	sub    $0x1c,%esp
 4003af9:	8b 75 08             	mov    0x8(%ebp),%esi
 4003afc:	8b 7d 14             	mov    0x14(%ebp),%edi
 4003aff:	8b 45 10             	mov    0x10(%ebp),%eax
 4003b02:	0f af 45 0c          	imul   0xc(%ebp),%eax
 4003b06:	89 45 e0             	mov    %eax,-0x20(%ebp)
 4003b09:	85 c0                	test   %eax,%eax
 4003b0b:	74 57                	je     4003b64 <fread+0x74>
 4003b0d:	8b 5f 04             	mov    0x4(%edi),%ebx
 4003b10:	85 db                	test   %ebx,%ebx
 4003b12:	78 70                	js     4003b84 <fread+0x94>
 4003b14:	8b 45 e0             	mov    -0x20(%ebp),%eax
 4003b17:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4003b1a:	eb 23                	jmp    4003b3f <fread+0x4f>
 4003b1c:	52                   	push   %edx
 4003b1d:	53                   	push   %ebx
 4003b1e:	ff 37                	pushl  (%edi)
 4003b20:	56                   	push   %esi
 4003b21:	e8 f6 f3 ff ff       	call   4002f1c <memcpy>
 4003b26:	01 1f                	add    %ebx,(%edi)
 4003b28:	01 de                	add    %ebx,%esi
 4003b2a:	29 5d e4             	sub    %ebx,-0x1c(%ebp)
 4003b2d:	89 3c 24             	mov    %edi,(%esp)
 4003b30:	e8 2b cc ff ff       	call   4000760 <__srefill>
 4003b35:	83 c4 10             	add    $0x10,%esp
 4003b38:	85 c0                	test   %eax,%eax
 4003b3a:	75 34                	jne    4003b70 <fread+0x80>
 4003b3c:	8b 5f 04             	mov    0x4(%edi),%ebx
 4003b3f:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
 4003b42:	77 d8                	ja     4003b1c <fread+0x2c>
 4003b44:	50                   	push   %eax
 4003b45:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
 4003b48:	53                   	push   %ebx
 4003b49:	ff 37                	pushl  (%edi)
 4003b4b:	56                   	push   %esi
 4003b4c:	e8 cb f3 ff ff       	call   4002f1c <memcpy>
 4003b51:	29 5f 04             	sub    %ebx,0x4(%edi)
 4003b54:	01 1f                	add    %ebx,(%edi)
 4003b56:	83 c4 10             	add    $0x10,%esp
 4003b59:	8b 45 10             	mov    0x10(%ebp),%eax
 4003b5c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4003b5f:	5b                   	pop    %ebx
 4003b60:	5e                   	pop    %esi
 4003b61:	5f                   	pop    %edi
 4003b62:	5d                   	pop    %ebp
 4003b63:	c3                   	ret    
 4003b64:	31 c0                	xor    %eax,%eax
 4003b66:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4003b69:	5b                   	pop    %ebx
 4003b6a:	5e                   	pop    %esi
 4003b6b:	5f                   	pop    %edi
 4003b6c:	5d                   	pop    %ebp
 4003b6d:	c3                   	ret    
 4003b6e:	66 90                	xchg   %ax,%ax
 4003b70:	8b 45 e0             	mov    -0x20(%ebp),%eax
 4003b73:	2b 45 e4             	sub    -0x1c(%ebp),%eax
 4003b76:	31 d2                	xor    %edx,%edx
 4003b78:	f7 75 0c             	divl   0xc(%ebp)
 4003b7b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4003b7e:	5b                   	pop    %ebx
 4003b7f:	5e                   	pop    %esi
 4003b80:	5f                   	pop    %edi
 4003b81:	5d                   	pop    %ebp
 4003b82:	c3                   	ret    
 4003b83:	90                   	nop
 4003b84:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
 4003b8b:	31 db                	xor    %ebx,%ebx
 4003b8d:	eb 85                	jmp    4003b14 <fread+0x24>
 4003b8f:	90                   	nop

04003b90 <__swbuf>:
 4003b90:	55                   	push   %ebp
 4003b91:	89 e5                	mov    %esp,%ebp
 4003b93:	57                   	push   %edi
 4003b94:	56                   	push   %esi
 4003b95:	53                   	push   %ebx
 4003b96:	83 ec 0c             	sub    $0xc,%esp
 4003b99:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003b9c:	8b 75 0c             	mov    0xc(%ebp),%esi
 4003b9f:	8b 46 54             	mov    0x54(%esi),%eax
 4003ba2:	85 c0                	test   %eax,%eax
 4003ba4:	0f 84 be 00 00 00    	je     4003c68 <__swbuf+0xd8>
 4003baa:	8b 50 5c             	mov    0x5c(%eax),%edx
 4003bad:	85 d2                	test   %edx,%edx
 4003baf:	0f 84 9f 00 00 00    	je     4003c54 <__swbuf+0xc4>
 4003bb5:	8b 46 18             	mov    0x18(%esi),%eax
 4003bb8:	89 46 08             	mov    %eax,0x8(%esi)
 4003bbb:	f6 46 0c 08          	testb  $0x8,0xc(%esi)
 4003bbf:	74 57                	je     4003c18 <__swbuf+0x88>
 4003bc1:	8b 56 10             	mov    0x10(%esi),%edx
 4003bc4:	85 d2                	test   %edx,%edx
 4003bc6:	74 50                	je     4003c18 <__swbuf+0x88>
 4003bc8:	0f b6 fb             	movzbl %bl,%edi
 4003bcb:	8b 06                	mov    (%esi),%eax
 4003bcd:	89 c1                	mov    %eax,%ecx
 4003bcf:	29 d1                	sub    %edx,%ecx
 4003bd1:	89 ca                	mov    %ecx,%edx
 4003bd3:	3b 4e 14             	cmp    0x14(%esi),%ecx
 4003bd6:	7d 63                	jge    4003c3b <__swbuf+0xab>
 4003bd8:	42                   	inc    %edx
 4003bd9:	ff 4e 08             	decl   0x8(%esi)
 4003bdc:	8d 48 01             	lea    0x1(%eax),%ecx
 4003bdf:	89 0e                	mov    %ecx,(%esi)
 4003be1:	88 18                	mov    %bl,(%eax)
 4003be3:	39 56 14             	cmp    %edx,0x14(%esi)
 4003be6:	74 18                	je     4003c00 <__swbuf+0x70>
 4003be8:	f6 46 0c 01          	testb  $0x1,0xc(%esi)
 4003bec:	74 05                	je     4003bf3 <__swbuf+0x63>
 4003bee:	83 ff 0a             	cmp    $0xa,%edi
 4003bf1:	74 0d                	je     4003c00 <__swbuf+0x70>
 4003bf3:	89 f8                	mov    %edi,%eax
 4003bf5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4003bf8:	5b                   	pop    %ebx
 4003bf9:	5e                   	pop    %esi
 4003bfa:	5f                   	pop    %edi
 4003bfb:	5d                   	pop    %ebp
 4003bfc:	c3                   	ret    
 4003bfd:	8d 76 00             	lea    0x0(%esi),%esi
 4003c00:	83 ec 0c             	sub    $0xc,%esp
 4003c03:	56                   	push   %esi
 4003c04:	e8 97 cd ff ff       	call   40009a0 <fflush>
 4003c09:	83 c4 10             	add    $0x10,%esp
 4003c0c:	85 c0                	test   %eax,%eax
 4003c0e:	74 e3                	je     4003bf3 <__swbuf+0x63>
 4003c10:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003c15:	eb de                	jmp    4003bf5 <__swbuf+0x65>
 4003c17:	90                   	nop
 4003c18:	83 ec 0c             	sub    $0xc,%esp
 4003c1b:	56                   	push   %esi
 4003c1c:	e8 8b fd ff ff       	call   40039ac <__swsetup>
 4003c21:	83 c4 10             	add    $0x10,%esp
 4003c24:	85 c0                	test   %eax,%eax
 4003c26:	75 e8                	jne    4003c10 <__swbuf+0x80>
 4003c28:	8b 56 10             	mov    0x10(%esi),%edx
 4003c2b:	0f b6 fb             	movzbl %bl,%edi
 4003c2e:	8b 06                	mov    (%esi),%eax
 4003c30:	89 c1                	mov    %eax,%ecx
 4003c32:	29 d1                	sub    %edx,%ecx
 4003c34:	89 ca                	mov    %ecx,%edx
 4003c36:	3b 4e 14             	cmp    0x14(%esi),%ecx
 4003c39:	7c 9d                	jl     4003bd8 <__swbuf+0x48>
 4003c3b:	83 ec 0c             	sub    $0xc,%esp
 4003c3e:	56                   	push   %esi
 4003c3f:	e8 5c cd ff ff       	call   40009a0 <fflush>
 4003c44:	83 c4 10             	add    $0x10,%esp
 4003c47:	85 c0                	test   %eax,%eax
 4003c49:	75 c5                	jne    4003c10 <__swbuf+0x80>
 4003c4b:	8b 06                	mov    (%esi),%eax
 4003c4d:	ba 01 00 00 00       	mov    $0x1,%edx
 4003c52:	eb 85                	jmp    4003bd9 <__swbuf+0x49>
 4003c54:	83 ec 0c             	sub    $0xc,%esp
 4003c57:	50                   	push   %eax
 4003c58:	e8 8f d1 ff ff       	call   4000dec <__sinit>
 4003c5d:	83 c4 10             	add    $0x10,%esp
 4003c60:	e9 50 ff ff ff       	jmp    4003bb5 <__swbuf+0x25>
 4003c65:	8d 76 00             	lea    0x0(%esi),%esi
 4003c68:	a1 00 6c 00 04       	mov    0x4006c00,%eax
 4003c6d:	89 46 54             	mov    %eax,0x54(%esi)
 4003c70:	e9 35 ff ff ff       	jmp    4003baa <__swbuf+0x1a>
 4003c75:	66 90                	xchg   %ax,%ax
 4003c77:	90                   	nop

04003c78 <raise>:
 4003c78:	55                   	push   %ebp
 4003c79:	89 e5                	mov    %esp,%ebp
 4003c7b:	53                   	push   %ebx
 4003c7c:	83 ec 10             	sub    $0x10,%esp
 4003c7f:	8b 1d 00 6c 00 04    	mov    0x4006c00,%ebx
 4003c85:	53                   	push   %ebx
 4003c86:	e8 51 01 00 00       	call   4003ddc <_getpid_r>
 4003c8b:	83 c4 0c             	add    $0xc,%esp
 4003c8e:	ff 75 08             	pushl  0x8(%ebp)
 4003c91:	50                   	push   %eax
 4003c92:	53                   	push   %ebx
 4003c93:	e8 14 01 00 00       	call   4003dac <_kill_r>
 4003c98:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4003c9b:	c9                   	leave  
 4003c9c:	c3                   	ret    
 4003c9d:	66 90                	xchg   %ax,%ax
 4003c9f:	90                   	nop

04003ca0 <_raise_r>:
 4003ca0:	55                   	push   %ebp
 4003ca1:	89 e5                	mov    %esp,%ebp
 4003ca3:	53                   	push   %ebx
 4003ca4:	83 ec 10             	sub    $0x10,%esp
 4003ca7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003caa:	53                   	push   %ebx
 4003cab:	e8 2c 01 00 00       	call   4003ddc <_getpid_r>
 4003cb0:	83 c4 0c             	add    $0xc,%esp
 4003cb3:	ff 75 0c             	pushl  0xc(%ebp)
 4003cb6:	50                   	push   %eax
 4003cb7:	53                   	push   %ebx
 4003cb8:	e8 ef 00 00 00       	call   4003dac <_kill_r>
 4003cbd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4003cc0:	c9                   	leave  
 4003cc1:	c3                   	ret    
 4003cc2:	66 90                	xchg   %ax,%ax

04003cc4 <_strtod_r>:
 4003cc4:	55                   	push   %ebp
 4003cc5:	89 e5                	mov    %esp,%ebp
 4003cc7:	83 ec 08             	sub    $0x8,%esp
 4003cca:	6a 70                	push   $0x70
 4003ccc:	68 9c 4a 00 04       	push   $0x4004a9c
 4003cd1:	68 8b 41 00 04       	push   $0x400418b
 4003cd6:	68 98 41 00 04       	push   $0x4004198
 4003cdb:	e8 30 f1 ff ff       	call   4002e10 <__assertfail>
 4003ce0:	d9 ee                	fldz   
 4003ce2:	c9                   	leave  
 4003ce3:	c3                   	ret    

04003ce4 <strtod>:
 4003ce4:	55                   	push   %ebp
 4003ce5:	89 e5                	mov    %esp,%ebp
 4003ce7:	83 ec 08             	sub    $0x8,%esp
 4003cea:	6a 70                	push   $0x70
 4003cec:	68 9c 4a 00 04       	push   $0x4004a9c
 4003cf1:	68 8b 41 00 04       	push   $0x400418b
 4003cf6:	68 98 41 00 04       	push   $0x4004198
 4003cfb:	e8 10 f1 ff ff       	call   4002e10 <__assertfail>
 4003d00:	d9 ee                	fldz   
 4003d02:	c9                   	leave  
 4003d03:	c3                   	ret    

04003d04 <strtodf>:
 4003d04:	55                   	push   %ebp
 4003d05:	89 e5                	mov    %esp,%ebp
 4003d07:	83 ec 08             	sub    $0x8,%esp
 4003d0a:	6a 70                	push   $0x70
 4003d0c:	68 9c 4a 00 04       	push   $0x4004a9c
 4003d11:	68 8b 41 00 04       	push   $0x400418b
 4003d16:	68 98 41 00 04       	push   $0x4004198
 4003d1b:	e8 f0 f0 ff ff       	call   4002e10 <__assertfail>
 4003d20:	d9 ee                	fldz   
 4003d22:	c9                   	leave  
 4003d23:	c3                   	ret    

04003d24 <memchr>:
 4003d24:	55                   	push   %ebp
 4003d25:	89 e5                	mov    %esp,%ebp
 4003d27:	56                   	push   %esi
 4003d28:	53                   	push   %ebx
 4003d29:	8b 45 08             	mov    0x8(%ebp),%eax
 4003d2c:	8b 75 0c             	mov    0xc(%ebp),%esi
 4003d2f:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4003d32:	85 db                	test   %ebx,%ebx
 4003d34:	74 1c                	je     4003d52 <memchr+0x2e>
 4003d36:	0f b6 10             	movzbl (%eax),%edx
 4003d39:	39 d6                	cmp    %edx,%esi
 4003d3b:	74 17                	je     4003d54 <memchr+0x30>
 4003d3d:	8d 50 01             	lea    0x1(%eax),%edx
 4003d40:	01 c3                	add    %eax,%ebx
 4003d42:	eb 08                	jmp    4003d4c <memchr+0x28>
 4003d44:	42                   	inc    %edx
 4003d45:	0f b6 08             	movzbl (%eax),%ecx
 4003d48:	39 f1                	cmp    %esi,%ecx
 4003d4a:	74 08                	je     4003d54 <memchr+0x30>
 4003d4c:	89 d0                	mov    %edx,%eax
 4003d4e:	39 da                	cmp    %ebx,%edx
 4003d50:	75 f2                	jne    4003d44 <memchr+0x20>
 4003d52:	31 c0                	xor    %eax,%eax
 4003d54:	5b                   	pop    %ebx
 4003d55:	5e                   	pop    %esi
 4003d56:	5d                   	pop    %ebp
 4003d57:	c3                   	ret    

04003d58 <memmove>:
 4003d58:	55                   	push   %ebp
 4003d59:	89 e5                	mov    %esp,%ebp
 4003d5b:	57                   	push   %edi
 4003d5c:	56                   	push   %esi
 4003d5d:	53                   	push   %ebx
 4003d5e:	8b 45 08             	mov    0x8(%ebp),%eax
 4003d61:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 4003d64:	8b 7d 10             	mov    0x10(%ebp),%edi
 4003d67:	39 d8                	cmp    %ebx,%eax
 4003d69:	76 29                	jbe    4003d94 <memmove+0x3c>
 4003d6b:	8d 34 3b             	lea    (%ebx,%edi,1),%esi
 4003d6e:	39 f0                	cmp    %esi,%eax
 4003d70:	73 22                	jae    4003d94 <memmove+0x3c>
 4003d72:	8d 57 ff             	lea    -0x1(%edi),%edx
 4003d75:	85 ff                	test   %edi,%edi
 4003d77:	74 13                	je     4003d8c <memmove+0x34>
 4003d79:	29 fe                	sub    %edi,%esi
 4003d7b:	89 f1                	mov    %esi,%ecx
 4003d7d:	8d 76 00             	lea    0x0(%esi),%esi
 4003d80:	8a 1c 11             	mov    (%ecx,%edx,1),%bl
 4003d83:	88 1c 10             	mov    %bl,(%eax,%edx,1)
 4003d86:	4a                   	dec    %edx
 4003d87:	83 fa ff             	cmp    $0xffffffff,%edx
 4003d8a:	75 f4                	jne    4003d80 <memmove+0x28>
 4003d8c:	5b                   	pop    %ebx
 4003d8d:	5e                   	pop    %esi
 4003d8e:	5f                   	pop    %edi
 4003d8f:	5d                   	pop    %ebp
 4003d90:	c3                   	ret    
 4003d91:	8d 76 00             	lea    0x0(%esi),%esi
 4003d94:	31 d2                	xor    %edx,%edx
 4003d96:	85 ff                	test   %edi,%edi
 4003d98:	74 f2                	je     4003d8c <memmove+0x34>
 4003d9a:	66 90                	xchg   %ax,%ax
 4003d9c:	8a 0c 13             	mov    (%ebx,%edx,1),%cl
 4003d9f:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 4003da2:	42                   	inc    %edx
 4003da3:	39 d7                	cmp    %edx,%edi
 4003da5:	75 f5                	jne    4003d9c <memmove+0x44>
 4003da7:	5b                   	pop    %ebx
 4003da8:	5e                   	pop    %esi
 4003da9:	5f                   	pop    %edi
 4003daa:	5d                   	pop    %ebp
 4003dab:	c3                   	ret    

04003dac <_kill_r>:
 4003dac:	55                   	push   %ebp
 4003dad:	89 e5                	mov    %esp,%ebp
 4003daf:	83 ec 10             	sub    $0x10,%esp
 4003db2:	c7 05 38 6f 00 04 00 	movl   $0x0,0x4006f38
 4003db9:	00 00 00 
 4003dbc:	ff 75 10             	pushl  0x10(%ebp)
 4003dbf:	ff 75 0c             	pushl  0xc(%ebp)
 4003dc2:	e8 51 01 00 00       	call   4003f18 <_kill>
 4003dc7:	8b 15 38 6f 00 04    	mov    0x4006f38,%edx
 4003dcd:	83 c4 10             	add    $0x10,%esp
 4003dd0:	85 d2                	test   %edx,%edx
 4003dd2:	74 05                	je     4003dd9 <_kill_r+0x2d>
 4003dd4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4003dd7:	89 11                	mov    %edx,(%ecx)
 4003dd9:	c9                   	leave  
 4003dda:	c3                   	ret    
 4003ddb:	90                   	nop

04003ddc <_getpid_r>:
 4003ddc:	55                   	push   %ebp
 4003ddd:	89 e5                	mov    %esp,%ebp
 4003ddf:	5d                   	pop    %ebp
 4003de0:	e9 4f 01 00 00       	jmp    4003f34 <_getpid>
 4003de5:	66 90                	xchg   %ax,%ax
 4003de7:	90                   	nop

04003de8 <_syscall_>:
 4003de8:	55                   	push   %ebp
 4003de9:	89 e5                	mov    %esp,%ebp
 4003deb:	53                   	push   %ebx
 4003dec:	8b 55 14             	mov    0x14(%ebp),%edx
 4003def:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4003df2:	8b 45 08             	mov    0x8(%ebp),%eax
 4003df5:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 4003df8:	cd 80                	int    $0x80
 4003dfa:	5b                   	pop    %ebx
 4003dfb:	5d                   	pop    %ebp
 4003dfc:	c3                   	ret    
 4003dfd:	66 90                	xchg   %ax,%ax
 4003dff:	90                   	nop

04003e00 <_exit>:
 4003e00:	55                   	push   %ebp
 4003e01:	89 e5                	mov    %esp,%ebp
 4003e03:	53                   	push   %ebx
 4003e04:	31 c9                	xor    %ecx,%ecx
 4003e06:	b8 04 00 00 00       	mov    $0x4,%eax
 4003e0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003e0e:	89 ca                	mov    %ecx,%edx
 4003e10:	cd 80                	int    $0x80
 4003e12:	5b                   	pop    %ebx
 4003e13:	5d                   	pop    %ebp
 4003e14:	c3                   	ret    
 4003e15:	66 90                	xchg   %ax,%ax
 4003e17:	90                   	nop

04003e18 <_open>:
 4003e18:	55                   	push   %ebp
 4003e19:	89 e5                	mov    %esp,%ebp
 4003e1b:	53                   	push   %ebx
 4003e1c:	b8 01 00 00 00       	mov    $0x1,%eax
 4003e21:	8b 55 10             	mov    0x10(%ebp),%edx
 4003e24:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4003e27:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003e2a:	cd 80                	int    $0x80
 4003e2c:	5b                   	pop    %ebx
 4003e2d:	5d                   	pop    %ebp
 4003e2e:	c3                   	ret    
 4003e2f:	90                   	nop

04003e30 <_write>:
 4003e30:	55                   	push   %ebp
 4003e31:	89 e5                	mov    %esp,%ebp
 4003e33:	53                   	push   %ebx
 4003e34:	b8 03 00 00 00       	mov    $0x3,%eax
 4003e39:	8b 55 10             	mov    0x10(%ebp),%edx
 4003e3c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4003e3f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003e42:	cd 80                	int    $0x80
 4003e44:	5b                   	pop    %ebx
 4003e45:	5d                   	pop    %ebp
 4003e46:	c3                   	ret    
 4003e47:	90                   	nop

04003e48 <_sbrk>:
 4003e48:	55                   	push   %ebp
 4003e49:	89 e5                	mov    %esp,%ebp
 4003e4b:	56                   	push   %esi
 4003e4c:	53                   	push   %ebx
 4003e4d:	8b 35 34 6f 00 04    	mov    0x4006f34,%esi
 4003e53:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003e56:	01 f3                	add    %esi,%ebx
 4003e58:	31 d2                	xor    %edx,%edx
 4003e5a:	b8 09 00 00 00       	mov    $0x9,%eax
 4003e5f:	89 d1                	mov    %edx,%ecx
 4003e61:	cd 80                	int    $0x80
 4003e63:	85 c0                	test   %eax,%eax
 4003e65:	75 0d                	jne    4003e74 <_sbrk+0x2c>
 4003e67:	89 1d 34 6f 00 04    	mov    %ebx,0x4006f34
 4003e6d:	89 f0                	mov    %esi,%eax
 4003e6f:	5b                   	pop    %ebx
 4003e70:	5e                   	pop    %esi
 4003e71:	5d                   	pop    %ebp
 4003e72:	c3                   	ret    
 4003e73:	90                   	nop
 4003e74:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003e79:	5b                   	pop    %ebx
 4003e7a:	5e                   	pop    %esi
 4003e7b:	5d                   	pop    %ebp
 4003e7c:	c3                   	ret    
 4003e7d:	66 90                	xchg   %ax,%ax
 4003e7f:	90                   	nop

04003e80 <_read>:
 4003e80:	55                   	push   %ebp
 4003e81:	89 e5                	mov    %esp,%ebp
 4003e83:	53                   	push   %ebx
 4003e84:	b8 03 00 00 00       	mov    $0x3,%eax
 4003e89:	8b 55 10             	mov    0x10(%ebp),%edx
 4003e8c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4003e8f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003e92:	cd 80                	int    $0x80
 4003e94:	5b                   	pop    %ebx
 4003e95:	5d                   	pop    %ebp
 4003e96:	c3                   	ret    
 4003e97:	90                   	nop

04003e98 <_close>:
 4003e98:	55                   	push   %ebp
 4003e99:	89 e5                	mov    %esp,%ebp
 4003e9b:	53                   	push   %ebx
 4003e9c:	31 c9                	xor    %ecx,%ecx
 4003e9e:	b8 04 00 00 00       	mov    $0x4,%eax
 4003ea3:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003ea6:	89 ca                	mov    %ecx,%edx
 4003ea8:	cd 80                	int    $0x80
 4003eaa:	5b                   	pop    %ebx
 4003eab:	5d                   	pop    %ebp
 4003eac:	c3                   	ret    
 4003ead:	66 90                	xchg   %ax,%ax
 4003eaf:	90                   	nop

04003eb0 <_lseek>:
 4003eb0:	55                   	push   %ebp
 4003eb1:	89 e5                	mov    %esp,%ebp
 4003eb3:	53                   	push   %ebx
 4003eb4:	b8 08 00 00 00       	mov    $0x8,%eax
 4003eb9:	8b 55 10             	mov    0x10(%ebp),%edx
 4003ebc:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4003ebf:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4003ec2:	cd 80                	int    $0x80
 4003ec4:	5b                   	pop    %ebx
 4003ec5:	5d                   	pop    %ebp
 4003ec6:	c3                   	ret    
 4003ec7:	90                   	nop

04003ec8 <_fstat>:
 4003ec8:	55                   	push   %ebp
 4003ec9:	89 e5                	mov    %esp,%ebp
 4003ecb:	31 c0                	xor    %eax,%eax
 4003ecd:	5d                   	pop    %ebp
 4003ece:	c3                   	ret    
 4003ecf:	90                   	nop

04003ed0 <execve>:
 4003ed0:	55                   	push   %ebp
 4003ed1:	89 e5                	mov    %esp,%ebp
 4003ed3:	83 ec 08             	sub    $0x8,%esp
 4003ed6:	6a 42                	push   $0x42
 4003ed8:	68 b0 4a 00 04       	push   $0x4004ab0
 4003edd:	68 8b 41 00 04       	push   $0x400418b
 4003ee2:	68 98 41 00 04       	push   $0x4004198
 4003ee7:	e8 24 ef ff ff       	call   4002e10 <__assertfail>
 4003eec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003ef1:	c9                   	leave  
 4003ef2:	c3                   	ret    
 4003ef3:	90                   	nop

04003ef4 <_execve>:
 4003ef4:	55                   	push   %ebp
 4003ef5:	89 e5                	mov    %esp,%ebp
 4003ef7:	83 ec 08             	sub    $0x8,%esp
 4003efa:	6a 42                	push   $0x42
 4003efc:	68 b0 4a 00 04       	push   $0x4004ab0
 4003f01:	68 8b 41 00 04       	push   $0x400418b
 4003f06:	68 98 41 00 04       	push   $0x4004198
 4003f0b:	e8 00 ef ff ff       	call   4002e10 <__assertfail>
 4003f10:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003f15:	c9                   	leave  
 4003f16:	c3                   	ret    
 4003f17:	90                   	nop

04003f18 <_kill>:
 4003f18:	55                   	push   %ebp
 4003f19:	89 e5                	mov    %esp,%ebp
 4003f1b:	53                   	push   %ebx
 4003f1c:	31 c9                	xor    %ecx,%ecx
 4003f1e:	bb fb ff ff ff       	mov    $0xfffffffb,%ebx
 4003f23:	b8 04 00 00 00       	mov    $0x4,%eax
 4003f28:	89 ca                	mov    %ecx,%edx
 4003f2a:	cd 80                	int    $0x80
 4003f2c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003f31:	5b                   	pop    %ebx
 4003f32:	5d                   	pop    %ebp
 4003f33:	c3                   	ret    

04003f34 <_getpid>:
 4003f34:	55                   	push   %ebp
 4003f35:	89 e5                	mov    %esp,%ebp
 4003f37:	53                   	push   %ebx
 4003f38:	31 c9                	xor    %ecx,%ecx
 4003f3a:	bb fa ff ff ff       	mov    $0xfffffffa,%ebx
 4003f3f:	b8 04 00 00 00       	mov    $0x4,%eax
 4003f44:	89 ca                	mov    %ecx,%edx
 4003f46:	cd 80                	int    $0x80
 4003f48:	b8 01 00 00 00       	mov    $0x1,%eax
 4003f4d:	5b                   	pop    %ebx
 4003f4e:	5d                   	pop    %ebp
 4003f4f:	c3                   	ret    

04003f50 <time>:
 4003f50:	55                   	push   %ebp
 4003f51:	89 e5                	mov    %esp,%ebp
 4003f53:	83 ec 08             	sub    $0x8,%esp
 4003f56:	6a 57                	push   $0x57
 4003f58:	68 b0 4a 00 04       	push   $0x4004ab0
 4003f5d:	68 8b 41 00 04       	push   $0x400418b
 4003f62:	68 98 41 00 04       	push   $0x4004198
 4003f67:	e8 a4 ee ff ff       	call   4002e10 <__assertfail>
 4003f6c:	31 c0                	xor    %eax,%eax
 4003f6e:	c9                   	leave  
 4003f6f:	c3                   	ret    

04003f70 <signal>:
 4003f70:	55                   	push   %ebp
 4003f71:	89 e5                	mov    %esp,%ebp
 4003f73:	83 ec 08             	sub    $0x8,%esp
 4003f76:	6a 5c                	push   $0x5c
 4003f78:	68 b0 4a 00 04       	push   $0x4004ab0
 4003f7d:	68 8b 41 00 04       	push   $0x400418b
 4003f82:	68 98 41 00 04       	push   $0x4004198
 4003f87:	e8 84 ee ff ff       	call   4002e10 <__assertfail>
 4003f8c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003f91:	c9                   	leave  
 4003f92:	c3                   	ret    
 4003f93:	90                   	nop

04003f94 <_fork>:
 4003f94:	55                   	push   %ebp
 4003f95:	89 e5                	mov    %esp,%ebp
 4003f97:	83 ec 08             	sub    $0x8,%esp
 4003f9a:	6a 61                	push   $0x61
 4003f9c:	68 b0 4a 00 04       	push   $0x4004ab0
 4003fa1:	68 8b 41 00 04       	push   $0x400418b
 4003fa6:	68 98 41 00 04       	push   $0x4004198
 4003fab:	e8 60 ee ff ff       	call   4002e10 <__assertfail>
 4003fb0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003fb5:	c9                   	leave  
 4003fb6:	c3                   	ret    
 4003fb7:	90                   	nop

04003fb8 <_link>:
 4003fb8:	55                   	push   %ebp
 4003fb9:	89 e5                	mov    %esp,%ebp
 4003fbb:	83 ec 08             	sub    $0x8,%esp
 4003fbe:	6a 66                	push   $0x66
 4003fc0:	68 b0 4a 00 04       	push   $0x4004ab0
 4003fc5:	68 8b 41 00 04       	push   $0x400418b
 4003fca:	68 98 41 00 04       	push   $0x4004198
 4003fcf:	e8 3c ee ff ff       	call   4002e10 <__assertfail>
 4003fd4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003fd9:	c9                   	leave  
 4003fda:	c3                   	ret    
 4003fdb:	90                   	nop

04003fdc <_unlink>:
 4003fdc:	55                   	push   %ebp
 4003fdd:	89 e5                	mov    %esp,%ebp
 4003fdf:	83 ec 08             	sub    $0x8,%esp
 4003fe2:	6a 6b                	push   $0x6b
 4003fe4:	68 b0 4a 00 04       	push   $0x4004ab0
 4003fe9:	68 8b 41 00 04       	push   $0x400418b
 4003fee:	68 98 41 00 04       	push   $0x4004198
 4003ff3:	e8 18 ee ff ff       	call   4002e10 <__assertfail>
 4003ff8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4003ffd:	c9                   	leave  
 4003ffe:	c3                   	ret    
 4003fff:	90                   	nop

04004000 <_wait>:
 4004000:	55                   	push   %ebp
 4004001:	89 e5                	mov    %esp,%ebp
 4004003:	83 ec 08             	sub    $0x8,%esp
 4004006:	6a 70                	push   $0x70
 4004008:	68 b0 4a 00 04       	push   $0x4004ab0
 400400d:	68 8b 41 00 04       	push   $0x400418b
 4004012:	68 98 41 00 04       	push   $0x4004198
 4004017:	e8 f4 ed ff ff       	call   4002e10 <__assertfail>
 400401c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4004021:	c9                   	leave  
 4004022:	c3                   	ret    
 4004023:	90                   	nop

04004024 <_times>:
 4004024:	55                   	push   %ebp
 4004025:	89 e5                	mov    %esp,%ebp
 4004027:	83 ec 08             	sub    $0x8,%esp
 400402a:	6a 75                	push   $0x75
 400402c:	68 b0 4a 00 04       	push   $0x4004ab0
 4004031:	68 8b 41 00 04       	push   $0x400418b
 4004036:	68 98 41 00 04       	push   $0x4004198
 400403b:	e8 d0 ed ff ff       	call   4002e10 <__assertfail>
 4004040:	31 c0                	xor    %eax,%eax
 4004042:	c9                   	leave  
 4004043:	c3                   	ret    

04004044 <_gettimeofday>:
 4004044:	55                   	push   %ebp
 4004045:	89 e5                	mov    %esp,%ebp
 4004047:	53                   	push   %ebx
 4004048:	50                   	push   %eax
 4004049:	8b 5d 08             	mov    0x8(%ebp),%ebx
 400404c:	6a 7a                	push   $0x7a
 400404e:	68 b0 4a 00 04       	push   $0x4004ab0
 4004053:	68 8b 41 00 04       	push   $0x400418b
 4004058:	68 98 41 00 04       	push   $0x4004198
 400405d:	e8 ae ed ff ff       	call   4002e10 <__assertfail>
 4004062:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 4004068:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 400406f:	31 c0                	xor    %eax,%eax
 4004071:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4004074:	c9                   	leave  
 4004075:	c3                   	ret    
 4004076:	66 90                	xchg   %ax,%ax

04004078 <_fcntl>:
 4004078:	55                   	push   %ebp
 4004079:	89 e5                	mov    %esp,%ebp
 400407b:	83 ec 08             	sub    $0x8,%esp
 400407e:	68 81 00 00 00       	push   $0x81
 4004083:	68 b0 4a 00 04       	push   $0x4004ab0
 4004088:	68 8b 41 00 04       	push   $0x400418b
 400408d:	68 98 41 00 04       	push   $0x4004198
 4004092:	e8 79 ed ff ff       	call   4002e10 <__assertfail>
 4004097:	31 c0                	xor    %eax,%eax
 4004099:	c9                   	leave  
 400409a:	c3                   	ret    
 400409b:	90                   	nop

0400409c <pipe>:
 400409c:	55                   	push   %ebp
 400409d:	89 e5                	mov    %esp,%ebp
 400409f:	83 ec 08             	sub    $0x8,%esp
 40040a2:	68 86 00 00 00       	push   $0x86
 40040a7:	68 b0 4a 00 04       	push   $0x4004ab0
 40040ac:	68 8b 41 00 04       	push   $0x400418b
 40040b1:	68 98 41 00 04       	push   $0x4004198
 40040b6:	e8 55 ed ff ff       	call   4002e10 <__assertfail>
 40040bb:	31 c0                	xor    %eax,%eax
 40040bd:	c9                   	leave  
 40040be:	c3                   	ret    
 40040bf:	90                   	nop

040040c0 <dup>:
 40040c0:	55                   	push   %ebp
 40040c1:	89 e5                	mov    %esp,%ebp
 40040c3:	83 ec 08             	sub    $0x8,%esp
 40040c6:	68 8b 00 00 00       	push   $0x8b
 40040cb:	68 b0 4a 00 04       	push   $0x4004ab0
 40040d0:	68 8b 41 00 04       	push   $0x400418b
 40040d5:	68 98 41 00 04       	push   $0x4004198
 40040da:	e8 31 ed ff ff       	call   4002e10 <__assertfail>
 40040df:	31 c0                	xor    %eax,%eax
 40040e1:	c9                   	leave  
 40040e2:	c3                   	ret    
 40040e3:	90                   	nop

040040e4 <dup2>:
 40040e4:	55                   	push   %ebp
 40040e5:	89 e5                	mov    %esp,%ebp
 40040e7:	83 ec 08             	sub    $0x8,%esp
 40040ea:	68 90 00 00 00       	push   $0x90
 40040ef:	68 b0 4a 00 04       	push   $0x4004ab0
 40040f4:	68 8b 41 00 04       	push   $0x400418b
 40040f9:	68 98 41 00 04       	push   $0x4004198
 40040fe:	e8 0d ed ff ff       	call   4002e10 <__assertfail>
 4004103:	31 c0                	xor    %eax,%eax
 4004105:	c9                   	leave  
 4004106:	c3                   	ret    
 4004107:	90                   	nop

04004108 <vfork>:
 4004108:	55                   	push   %ebp
 4004109:	89 e5                	mov    %esp,%ebp
 400410b:	83 ec 08             	sub    $0x8,%esp
 400410e:	68 95 00 00 00       	push   $0x95
 4004113:	68 b0 4a 00 04       	push   $0x4004ab0
 4004118:	68 8b 41 00 04       	push   $0x400418b
 400411d:	68 98 41 00 04       	push   $0x4004198
 4004122:	e8 e9 ec ff ff       	call   4002e10 <__assertfail>
 4004127:	31 c0                	xor    %eax,%eax
 4004129:	c9                   	leave  
 400412a:	c3                   	ret    

Disassembly of section .rodata:

04004140 <basefix.1738-0x4a0>:
 4004140:	72 2b                	jb     400416d <vfork+0x65>
 4004142:	00 2f                	add    %ch,(%edi)
 4004144:	73 68                	jae    40041ae <vfork+0xa6>
 4004146:	61                   	popa   
 4004147:	72 65                	jb     40041ae <vfork+0xa6>
 4004149:	2f                   	das    
 400414a:	74 65                	je     40041b1 <vfork+0xa9>
 400414c:	78 74                	js     40041c2 <vfork+0xba>
 400414e:	73 2f                	jae    400417f <vfork+0x77>
 4004150:	6e                   	outsb  %ds:(%esi),(%dx)
 4004151:	75 6d                	jne    40041c0 <vfork+0xb8>
 4004153:	00 74 65 78          	add    %dh,0x78(%ebp,%eiz,2)
 4004157:	74 2e                	je     4004187 <vfork+0x7f>
 4004159:	63 00                	arpl   %ax,(%eax)
 400415b:	66 70 00             	data16 jo 400415e <vfork+0x56>
 400415e:	73 69                	jae    40041c9 <vfork+0xc1>
 4004160:	7a 65                	jp     40041c7 <vfork+0xbf>
 4004162:	20 3d 3d 20 35 30    	and    %bh,0x3035203d
 4004168:	30 30                	xor    %dh,(%eax)
 400416a:	00 6e 20             	add    %ch,0x20(%esi)
 400416d:	3d 3d 20 69 20       	cmp    $0x2069203d,%eax
 4004172:	2b 20                	sub    (%eax),%esp
 4004174:	31 00                	xor    %eax,(%eax)
 4004176:	25 34 64 0a 00       	and    $0xa6434,%eax
 400417b:	6e                   	outsb  %ds:(%esi),(%dx)
 400417c:	20 3d 3d 20 69 20    	and    %bh,0x2069203d
 4004182:	2b 20                	sub    (%eax),%esp
 4004184:	31 20                	xor    %esp,(%eax)
 4004186:	2b 20                	sub    (%eax),%esp
 4004188:	31 30                	xor    %esi,(%eax)
 400418a:	30 30                	xor    %dh,(%eax)
 400418c:	00 50 41             	add    %dl,0x41(%eax)
 400418f:	53                   	push   %ebx
 4004190:	53                   	push   %ebx
 4004191:	21 21                	and    %esp,(%ecx)
 4004193:	21 0a                	and    %ecx,(%edx)
 4004195:	00 00                	add    %al,(%eax)
 4004197:	00 41 73             	add    %al,0x73(%ecx)
 400419a:	73 65                	jae    4004201 <vfork+0xf9>
 400419c:	72 74                	jb     4004212 <vfork+0x10a>
 400419e:	69 6f 6e 20 66 61 69 	imul   $0x69616620,0x6e(%edi),%ebp
 40041a5:	6c                   	insb   (%dx),%es:(%edi)
 40041a6:	65 64 3a 20          	gs cmp %fs:(%eax),%ah
 40041aa:	25 73 2c 20 66       	and    $0x66202c73,%eax
 40041af:	69 6c 65 20 25 73 2c 	imul   $0x202c7325,0x20(%ebp,%eiz,2),%ebp
 40041b6:	20 
 40041b7:	6c                   	insb   (%dx),%es:(%edi)
 40041b8:	69 6e 65 20 25 64 0a 	imul   $0xa642520,0x65(%esi),%ebp
 40041bf:	00 a1 12 00 04 e8    	add    %ah,-0x17fbffee(%ecx)
 40041c5:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40041ca:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40041cd:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40041d2:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40041d5:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40041da:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40041dd:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40041e2:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40041e5:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40041ea:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40041ed:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40041f2:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40041f5:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40041fa:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40041fd:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004202:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004205:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400420a:	00 04 e8             	add    %al,(%eax,%ebp,8)
 400420d:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004212:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004215:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400421a:	00 04 e8             	add    %al,(%eax,%ebp,8)
 400421d:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004222:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004225:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400422a:	00 04 e8             	add    %al,(%eax,%ebp,8)
 400422d:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004232:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004235:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400423a:	00 04 e8             	add    %al,(%eax,%ebp,8)
 400423d:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004242:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004245:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400424a:	00 04 e8             	add    %al,(%eax,%ebp,8)
 400424d:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004252:	00 04 c5 15 00 04 e8 	add    %al,-0x17fbffeb(,%eax,8)
 4004259:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400425e:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004261:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004266:	00 04 35 14 00 04 e8 	add    %al,-0x17fbffec(,%esi,1)
 400426d:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004272:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004275:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400427a:	00 04 e8             	add    %al,(%eax,%ebp,8)
 400427d:	15 00 04 41 14       	adc    $0x14410400,%eax
 4004282:	00 04 41             	add    %al,(%ecx,%eax,2)
 4004285:	14 00                	adc    $0x0,%al
 4004287:	04 41                	add    $0x41,%al
 4004289:	14 00                	adc    $0x0,%al
 400428b:	04 41                	add    $0x41,%al
 400428d:	14 00                	adc    $0x0,%al
 400428f:	04 41                	add    $0x41,%al
 4004291:	14 00                	adc    $0x0,%al
 4004293:	04 41                	add    $0x41,%al
 4004295:	14 00                	adc    $0x0,%al
 4004297:	04 41                	add    $0x41,%al
 4004299:	14 00                	adc    $0x0,%al
 400429b:	04 41                	add    $0x41,%al
 400429d:	14 00                	adc    $0x0,%al
 400429f:	04 41                	add    $0x41,%al
 40042a1:	14 00                	adc    $0x0,%al
 40042a3:	04 41                	add    $0x41,%al
 40042a5:	14 00                	adc    $0x0,%al
 40042a7:	04 e8                	add    $0xe8,%al
 40042a9:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40042ae:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40042b1:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40042b6:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40042b9:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40042be:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40042c1:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40042c6:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40042c9:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40042ce:	00 04 2a             	add    %al,(%edx,%ebp,1)
 40042d1:	12 00                	adc    (%eax),%al
 40042d3:	04 aa                	add    $0xaa,%al
 40042d5:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40042da:	00 04 aa             	add    %al,(%edx,%ebp,4)
 40042dd:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40042e2:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40042e5:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40042ea:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40042ed:	15 00 04 54 15       	adc    $0x15540400,%eax
 40042f2:	00 04 e8             	add    %al,(%eax,%ebp,8)
 40042f5:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 40042fa:	00 04 20             	add    %al,(%eax,%eiz,1)
 40042fd:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004302:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004305:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400430a:	00 04 e8             	add    %al,(%eax,%ebp,8)
 400430d:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004312:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004315:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400431a:	00 04 e8             	add    %al,(%eax,%ebp,8)
 400431d:	15 00 04 fc 13       	adc    $0x13fc0400,%eax
 4004322:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004325:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400432a:	00 04 5d 13 00 04 e8 	add    %al,-0x17fbffed(,%ebx,2)
 4004331:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004336:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004339:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400433e:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004341:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004346:	00 04 e8             	add    %al,(%eax,%ebp,8)
 4004349:	15 00 04 d7 12       	adc    $0x12d70400,%eax
 400434e:	00 04 5e             	add    %al,(%esi,%ebx,2)
 4004351:	14 00                	adc    $0x0,%al
 4004353:	04 aa                	add    $0xaa,%al
 4004355:	15 00 04 aa 15       	adc    $0x15aa0400,%eax
 400435a:	00 04 aa             	add    %al,(%edx,%ebp,4)
 400435d:	15 00 04 dc 15       	adc    $0x15dc0400,%eax
 4004362:	00 04 ab             	add    %al,(%ebx,%ebp,4)
 4004365:	12 00                	adc    (%eax),%al
 4004367:	04 e8                	add    $0xe8,%al
 4004369:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400436e:	00 04 d0             	add    %al,(%eax,%edx,8)
 4004371:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004376:	00 04 b7             	add    %al,(%edi,%esi,4)
 4004379:	14 00                	adc    $0x0,%al
 400437b:	04 88                	add    $0x88,%al
 400437d:	14 00                	adc    $0x0,%al
 400437f:	04 e9                	add    $0xe9,%al
 4004381:	14 00                	adc    $0x0,%al
 4004383:	04 e8                	add    $0xe8,%al
 4004385:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400438a:	00 04 8f             	add    %al,(%edi,%ecx,4)
 400438d:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 4004392:	00 04 60             	add    %al,(%eax,%eiz,2)
 4004395:	15 00 04 e8 15       	adc    $0x15e80400,%eax
 400439a:	00 04 e8             	add    %al,(%eax,%ebp,8)
 400439d:	15 00 04 fc 13       	adc    $0x13fc0400,%eax
 40043a2:	00 04 c0             	add    %al,(%eax,%eax,8)
 40043a5:	18 00                	sbb    %al,(%eax)
 40043a7:	04 d8                	add    $0xd8,%al
 40043a9:	18 00                	sbb    %al,(%eax)
 40043ab:	04 c0                	add    $0xc0,%al
 40043ad:	18 00                	sbb    %al,(%eax)
 40043af:	04 a4                	add    $0xa4,%al
 40043b1:	18 00                	sbb    %al,(%eax)
 40043b3:	04 d8                	add    $0xd8,%al
 40043b5:	18 00                	sbb    %al,(%eax)
 40043b7:	04 98                	add    $0x98,%al
 40043b9:	18 00                	sbb    %al,(%eax)
 40043bb:	04 98                	add    $0x98,%al
 40043bd:	18 00                	sbb    %al,(%eax)
 40043bf:	04 98                	add    $0x98,%al
 40043c1:	18 00                	sbb    %al,(%eax)
 40043c3:	04 98                	add    $0x98,%al
 40043c5:	18 00                	sbb    %al,(%eax)
 40043c7:	04 98                	add    $0x98,%al
 40043c9:	18 00                	sbb    %al,(%eax)
 40043cb:	04 98                	add    $0x98,%al
 40043cd:	18 00                	sbb    %al,(%eax)
 40043cf:	04 98                	add    $0x98,%al
 40043d1:	18 00                	sbb    %al,(%eax)
 40043d3:	04 98                	add    $0x98,%al
 40043d5:	18 00                	sbb    %al,(%eax)
 40043d7:	04 98                	add    $0x98,%al
 40043d9:	18 00                	sbb    %al,(%eax)
 40043db:	04 98                	add    $0x98,%al
 40043dd:	18 00                	sbb    %al,(%eax)
 40043df:	04 d8                	add    $0xd8,%al
 40043e1:	18 00                	sbb    %al,(%eax)
 40043e3:	04 d8                	add    $0xd8,%al
 40043e5:	18 00                	sbb    %al,(%eax)
 40043e7:	04 d8                	add    $0xd8,%al
 40043e9:	18 00                	sbb    %al,(%eax)
 40043eb:	04 d8                	add    $0xd8,%al
 40043ed:	18 00                	sbb    %al,(%eax)
 40043ef:	04 d8                	add    $0xd8,%al
 40043f1:	18 00                	sbb    %al,(%eax)
 40043f3:	04 d8                	add    $0xd8,%al
 40043f5:	18 00                	sbb    %al,(%eax)
 40043f7:	04 d8                	add    $0xd8,%al
 40043f9:	18 00                	sbb    %al,(%eax)
 40043fb:	04 d8                	add    $0xd8,%al
 40043fd:	18 00                	sbb    %al,(%eax)
 40043ff:	04 d8                	add    $0xd8,%al
 4004401:	18 00                	sbb    %al,(%eax)
 4004403:	04 d8                	add    $0xd8,%al
 4004405:	18 00                	sbb    %al,(%eax)
 4004407:	04 d8                	add    $0xd8,%al
 4004409:	18 00                	sbb    %al,(%eax)
 400440b:	04 40                	add    $0x40,%al
 400440d:	18 00                	sbb    %al,(%eax)
 400440f:	04 d8                	add    $0xd8,%al
 4004411:	18 00                	sbb    %al,(%eax)
 4004413:	04 d8                	add    $0xd8,%al
 4004415:	18 00                	sbb    %al,(%eax)
 4004417:	04 d8                	add    $0xd8,%al
 4004419:	18 00                	sbb    %al,(%eax)
 400441b:	04 d8                	add    $0xd8,%al
 400441d:	18 00                	sbb    %al,(%eax)
 400441f:	04 d8                	add    $0xd8,%al
 4004421:	18 00                	sbb    %al,(%eax)
 4004423:	04 d8                	add    $0xd8,%al
 4004425:	18 00                	sbb    %al,(%eax)
 4004427:	04 d8                	add    $0xd8,%al
 4004429:	18 00                	sbb    %al,(%eax)
 400442b:	04 d8                	add    $0xd8,%al
 400442d:	18 00                	sbb    %al,(%eax)
 400442f:	04 d8                	add    $0xd8,%al
 4004431:	18 00                	sbb    %al,(%eax)
 4004433:	04 d8                	add    $0xd8,%al
 4004435:	18 00                	sbb    %al,(%eax)
 4004437:	04 d8                	add    $0xd8,%al
 4004439:	18 00                	sbb    %al,(%eax)
 400443b:	04 d8                	add    $0xd8,%al
 400443d:	18 00                	sbb    %al,(%eax)
 400443f:	04 d8                	add    $0xd8,%al
 4004441:	18 00                	sbb    %al,(%eax)
 4004443:	04 d8                	add    $0xd8,%al
 4004445:	18 00                	sbb    %al,(%eax)
 4004447:	04 d8                	add    $0xd8,%al
 4004449:	18 00                	sbb    %al,(%eax)
 400444b:	04 d8                	add    $0xd8,%al
 400444d:	18 00                	sbb    %al,(%eax)
 400444f:	04 d8                	add    $0xd8,%al
 4004451:	18 00                	sbb    %al,(%eax)
 4004453:	04 d8                	add    $0xd8,%al
 4004455:	18 00                	sbb    %al,(%eax)
 4004457:	04 d8                	add    $0xd8,%al
 4004459:	18 00                	sbb    %al,(%eax)
 400445b:	04 d8                	add    $0xd8,%al
 400445d:	18 00                	sbb    %al,(%eax)
 400445f:	04 d8                	add    $0xd8,%al
 4004461:	18 00                	sbb    %al,(%eax)
 4004463:	04 d8                	add    $0xd8,%al
 4004465:	18 00                	sbb    %al,(%eax)
 4004467:	04 d8                	add    $0xd8,%al
 4004469:	18 00                	sbb    %al,(%eax)
 400446b:	04 d8                	add    $0xd8,%al
 400446d:	18 00                	sbb    %al,(%eax)
 400446f:	04 d8                	add    $0xd8,%al
 4004471:	18 00                	sbb    %al,(%eax)
 4004473:	04 d8                	add    $0xd8,%al
 4004475:	18 00                	sbb    %al,(%eax)
 4004477:	04 d8                	add    $0xd8,%al
 4004479:	18 00                	sbb    %al,(%eax)
 400447b:	04 d8                	add    $0xd8,%al
 400447d:	18 00                	sbb    %al,(%eax)
 400447f:	04 d8                	add    $0xd8,%al
 4004481:	18 00                	sbb    %al,(%eax)
 4004483:	04 d8                	add    $0xd8,%al
 4004485:	18 00                	sbb    %al,(%eax)
 4004487:	04 d8                	add    $0xd8,%al
 4004489:	18 00                	sbb    %al,(%eax)
 400448b:	04 40                	add    $0x40,%al
 400448d:	18 00                	sbb    %al,(%eax)
 400448f:	04 ec                	add    $0xec,%al
 4004491:	1a 00                	sbb    (%eax),%al
 4004493:	04 46                	add    $0x46,%al
 4004495:	1a 00                	sbb    (%eax),%al
 4004497:	04 ec                	add    $0xec,%al
 4004499:	1a 00                	sbb    (%eax),%al
 400449b:	04 46                	add    $0x46,%al
 400449d:	1a 00                	sbb    (%eax),%al
 400449f:	04 46                	add    $0x46,%al
 40044a1:	1a 00                	sbb    (%eax),%al
 40044a3:	04 82                	add    $0x82,%al
 40044a5:	1b 00                	sbb    (%eax),%eax
 40044a7:	04 6c                	add    $0x6c,%al
 40044a9:	1b 00                	sbb    (%eax),%eax
 40044ab:	04 6c                	add    $0x6c,%al
 40044ad:	1b 00                	sbb    (%eax),%eax
 40044af:	04 6c                	add    $0x6c,%al
 40044b1:	1b 00                	sbb    (%eax),%eax
 40044b3:	04 6c                	add    $0x6c,%al
 40044b5:	1b 00                	sbb    (%eax),%eax
 40044b7:	04 6c                	add    $0x6c,%al
 40044b9:	1b 00                	sbb    (%eax),%eax
 40044bb:	04 6c                	add    $0x6c,%al
 40044bd:	1b 00                	sbb    (%eax),%eax
 40044bf:	04 6c                	add    $0x6c,%al
 40044c1:	1b 00                	sbb    (%eax),%eax
 40044c3:	04 4b                	add    $0x4b,%al
 40044c5:	1b 00                	sbb    (%eax),%eax
 40044c7:	04 4b                	add    $0x4b,%al
 40044c9:	1b 00                	sbb    (%eax),%eax
 40044cb:	04 46                	add    $0x46,%al
 40044cd:	1a 00                	sbb    (%eax),%al
 40044cf:	04 46                	add    $0x46,%al
 40044d1:	1a 00                	sbb    (%eax),%al
 40044d3:	04 46                	add    $0x46,%al
 40044d5:	1a 00                	sbb    (%eax),%al
 40044d7:	04 46                	add    $0x46,%al
 40044d9:	1a 00                	sbb    (%eax),%al
 40044db:	04 46                	add    $0x46,%al
 40044dd:	1a 00                	sbb    (%eax),%al
 40044df:	04 46                	add    $0x46,%al
 40044e1:	1a 00                	sbb    (%eax),%al
 40044e3:	04 46                	add    $0x46,%al
 40044e5:	1a 00                	sbb    (%eax),%al
 40044e7:	04 32                	add    $0x32,%al
 40044e9:	1b 00                	sbb    (%eax),%eax
 40044eb:	04 32                	add    $0x32,%al
 40044ed:	1b 00                	sbb    (%eax),%eax
 40044ef:	04 32                	add    $0x32,%al
 40044f1:	1b 00                	sbb    (%eax),%eax
 40044f3:	04 32                	add    $0x32,%al
 40044f5:	1b 00                	sbb    (%eax),%eax
 40044f7:	04 32                	add    $0x32,%al
 40044f9:	1b 00                	sbb    (%eax),%eax
 40044fb:	04 32                	add    $0x32,%al
 40044fd:	1b 00                	sbb    (%eax),%eax
 40044ff:	04 46                	add    $0x46,%al
 4004501:	1a 00                	sbb    (%eax),%al
 4004503:	04 46                	add    $0x46,%al
 4004505:	1a 00                	sbb    (%eax),%al
 4004507:	04 46                	add    $0x46,%al
 4004509:	1a 00                	sbb    (%eax),%al
 400450b:	04 46                	add    $0x46,%al
 400450d:	1a 00                	sbb    (%eax),%al
 400450f:	04 46                	add    $0x46,%al
 4004511:	1a 00                	sbb    (%eax),%al
 4004513:	04 46                	add    $0x46,%al
 4004515:	1a 00                	sbb    (%eax),%al
 4004517:	04 46                	add    $0x46,%al
 4004519:	1a 00                	sbb    (%eax),%al
 400451b:	04 46                	add    $0x46,%al
 400451d:	1a 00                	sbb    (%eax),%al
 400451f:	04 46                	add    $0x46,%al
 4004521:	1a 00                	sbb    (%eax),%al
 4004523:	04 46                	add    $0x46,%al
 4004525:	1a 00                	sbb    (%eax),%al
 4004527:	04 46                	add    $0x46,%al
 4004529:	1a 00                	sbb    (%eax),%al
 400452b:	04 46                	add    $0x46,%al
 400452d:	1a 00                	sbb    (%eax),%al
 400452f:	04 46                	add    $0x46,%al
 4004531:	1a 00                	sbb    (%eax),%al
 4004533:	04 46                	add    $0x46,%al
 4004535:	1a 00                	sbb    (%eax),%al
 4004537:	04 46                	add    $0x46,%al
 4004539:	1a 00                	sbb    (%eax),%al
 400453b:	04 46                	add    $0x46,%al
 400453d:	1a 00                	sbb    (%eax),%al
 400453f:	04 46                	add    $0x46,%al
 4004541:	1a 00                	sbb    (%eax),%al
 4004543:	04 2c                	add    $0x2c,%al
 4004545:	1a 00                	sbb    (%eax),%al
 4004547:	04 46                	add    $0x46,%al
 4004549:	1a 00                	sbb    (%eax),%al
 400454b:	04 46                	add    $0x46,%al
 400454d:	1a 00                	sbb    (%eax),%al
 400454f:	04 46                	add    $0x46,%al
 4004551:	1a 00                	sbb    (%eax),%al
 4004553:	04 46                	add    $0x46,%al
 4004555:	1a 00                	sbb    (%eax),%al
 4004557:	04 46                	add    $0x46,%al
 4004559:	1a 00                	sbb    (%eax),%al
 400455b:	04 46                	add    $0x46,%al
 400455d:	1a 00                	sbb    (%eax),%al
 400455f:	04 46                	add    $0x46,%al
 4004561:	1a 00                	sbb    (%eax),%al
 4004563:	04 46                	add    $0x46,%al
 4004565:	1a 00                	sbb    (%eax),%al
 4004567:	04 32                	add    $0x32,%al
 4004569:	1b 00                	sbb    (%eax),%eax
 400456b:	04 32                	add    $0x32,%al
 400456d:	1b 00                	sbb    (%eax),%eax
 400456f:	04 32                	add    $0x32,%al
 4004571:	1b 00                	sbb    (%eax),%eax
 4004573:	04 32                	add    $0x32,%al
 4004575:	1b 00                	sbb    (%eax),%eax
 4004577:	04 32                	add    $0x32,%al
 4004579:	1b 00                	sbb    (%eax),%eax
 400457b:	04 32                	add    $0x32,%al
 400457d:	1b 00                	sbb    (%eax),%eax
 400457f:	04 46                	add    $0x46,%al
 4004581:	1a 00                	sbb    (%eax),%al
 4004583:	04 46                	add    $0x46,%al
 4004585:	1a 00                	sbb    (%eax),%al
 4004587:	04 46                	add    $0x46,%al
 4004589:	1a 00                	sbb    (%eax),%al
 400458b:	04 46                	add    $0x46,%al
 400458d:	1a 00                	sbb    (%eax),%al
 400458f:	04 46                	add    $0x46,%al
 4004591:	1a 00                	sbb    (%eax),%al
 4004593:	04 46                	add    $0x46,%al
 4004595:	1a 00                	sbb    (%eax),%al
 4004597:	04 46                	add    $0x46,%al
 4004599:	1a 00                	sbb    (%eax),%al
 400459b:	04 46                	add    $0x46,%al
 400459d:	1a 00                	sbb    (%eax),%al
 400459f:	04 46                	add    $0x46,%al
 40045a1:	1a 00                	sbb    (%eax),%al
 40045a3:	04 46                	add    $0x46,%al
 40045a5:	1a 00                	sbb    (%eax),%al
 40045a7:	04 46                	add    $0x46,%al
 40045a9:	1a 00                	sbb    (%eax),%al
 40045ab:	04 46                	add    $0x46,%al
 40045ad:	1a 00                	sbb    (%eax),%al
 40045af:	04 46                	add    $0x46,%al
 40045b1:	1a 00                	sbb    (%eax),%al
 40045b3:	04 46                	add    $0x46,%al
 40045b5:	1a 00                	sbb    (%eax),%al
 40045b7:	04 46                	add    $0x46,%al
 40045b9:	1a 00                	sbb    (%eax),%al
 40045bb:	04 46                	add    $0x46,%al
 40045bd:	1a 00                	sbb    (%eax),%al
 40045bf:	04 46                	add    $0x46,%al
 40045c1:	1a 00                	sbb    (%eax),%al
 40045c3:	04 2c                	add    $0x2c,%al
 40045c5:	1a 00                	sbb    (%eax),%al
 40045c7:	04 00                	add    $0x0,%al
	...

040045e0 <basefix.1738>:
 40045e0:	0a 00                	or     (%eax),%al
 40045e2:	01 00                	add    %eax,(%eax)
 40045e4:	02 00                	add    (%eax),%al
 40045e6:	03 00                	add    (%eax),%eax
 40045e8:	04 00                	add    $0x0,%al
 40045ea:	05 00 06 00 07       	add    $0x7000600,%eax
 40045ef:	00 08                	add    %cl,(%eax)
 40045f1:	00 09                	add    %cl,(%ecx)
 40045f3:	00 0a                	add    %cl,(%edx)
 40045f5:	00 0b                	add    %cl,(%ebx)
 40045f7:	00 0c 00             	add    %cl,(%eax,%eax,1)
 40045fa:	0d 00 0e 00 0f       	or     $0xf000e00,%eax
 40045ff:	00 10                	add    %dl,(%eax)
 4004601:	00 7b 6e             	add    %bh,0x6e(%ebx)
 4004604:	75 6c                	jne    4004672 <basefix.1738+0x92>
 4004606:	6c                   	insb   (%dx),%es:(%edi)
 4004607:	7d 00                	jge    4004609 <basefix.1738+0x29>
 4004609:	30 58 00             	xor    %bl,0x0(%eax)
 400460c:	20 00                	and    %al,(%eax)
 400460e:	2d 00 30 78 00       	sub    $0x783000,%eax
 4004613:	25 00 00 00 00       	and    $0x0,%eax
 4004618:	fc                   	cld    
 4004619:	20 00                	and    %al,(%eax)
 400461b:	04 c0                	add    $0xc0,%al
 400461d:	20 00                	and    %al,(%eax)
 400461f:	04 c0                	add    $0xc0,%al
 4004621:	20 00                	and    %al,(%eax)
 4004623:	04 c0                	add    $0xc0,%al
 4004625:	20 00                	and    %al,(%eax)
 4004627:	04 c0                	add    $0xc0,%al
 4004629:	20 00                	and    %al,(%eax)
 400462b:	04 c0                	add    $0xc0,%al
 400462d:	20 00                	and    %al,(%eax)
 400462f:	04 c0                	add    $0xc0,%al
 4004631:	20 00                	and    %al,(%eax)
 4004633:	04 c0                	add    $0xc0,%al
 4004635:	20 00                	and    %al,(%eax)
 4004637:	04 c0                	add    $0xc0,%al
 4004639:	20 00                	and    %al,(%eax)
 400463b:	04 c0                	add    $0xc0,%al
 400463d:	20 00                	and    %al,(%eax)
 400463f:	04 c0                	add    $0xc0,%al
 4004641:	20 00                	and    %al,(%eax)
 4004643:	04 c0                	add    $0xc0,%al
 4004645:	20 00                	and    %al,(%eax)
 4004647:	04 c0                	add    $0xc0,%al
 4004649:	20 00                	and    %al,(%eax)
 400464b:	04 c0                	add    $0xc0,%al
 400464d:	20 00                	and    %al,(%eax)
 400464f:	04 c0                	add    $0xc0,%al
 4004651:	20 00                	and    %al,(%eax)
 4004653:	04 c0                	add    $0xc0,%al
 4004655:	20 00                	and    %al,(%eax)
 4004657:	04 c0                	add    $0xc0,%al
 4004659:	20 00                	and    %al,(%eax)
 400465b:	04 c0                	add    $0xc0,%al
 400465d:	20 00                	and    %al,(%eax)
 400465f:	04 c0                	add    $0xc0,%al
 4004661:	20 00                	and    %al,(%eax)
 4004663:	04 c0                	add    $0xc0,%al
 4004665:	20 00                	and    %al,(%eax)
 4004667:	04 c0                	add    $0xc0,%al
 4004669:	20 00                	and    %al,(%eax)
 400466b:	04 c0                	add    $0xc0,%al
 400466d:	20 00                	and    %al,(%eax)
 400466f:	04 c0                	add    $0xc0,%al
 4004671:	20 00                	and    %al,(%eax)
 4004673:	04 c0                	add    $0xc0,%al
 4004675:	20 00                	and    %al,(%eax)
 4004677:	04 c0                	add    $0xc0,%al
 4004679:	20 00                	and    %al,(%eax)
 400467b:	04 c0                	add    $0xc0,%al
 400467d:	20 00                	and    %al,(%eax)
 400467f:	04 c0                	add    $0xc0,%al
 4004681:	20 00                	and    %al,(%eax)
 4004683:	04 c0                	add    $0xc0,%al
 4004685:	20 00                	and    %al,(%eax)
 4004687:	04 c0                	add    $0xc0,%al
 4004689:	20 00                	and    %al,(%eax)
 400468b:	04 c0                	add    $0xc0,%al
 400468d:	20 00                	and    %al,(%eax)
 400468f:	04 c0                	add    $0xc0,%al
 4004691:	20 00                	and    %al,(%eax)
 4004693:	04 c0                	add    $0xc0,%al
 4004695:	20 00                	and    %al,(%eax)
 4004697:	04 b0                	add    $0xb0,%al
 4004699:	24 00                	and    $0x0,%al
 400469b:	04 c0                	add    $0xc0,%al
 400469d:	20 00                	and    %al,(%eax)
 400469f:	04 c0                	add    $0xc0,%al
 40046a1:	20 00                	and    %al,(%eax)
 40046a3:	04 a6                	add    $0xa6,%al
 40046a5:	24 00                	and    $0x0,%al
 40046a7:	04 c0                	add    $0xc0,%al
 40046a9:	20 00                	and    %al,(%eax)
 40046ab:	04 4f                	add    $0x4f,%al
 40046ad:	24 00                	and    $0x0,%al
 40046af:	04 c0                	add    $0xc0,%al
 40046b1:	20 00                	and    %al,(%eax)
 40046b3:	04 c0                	add    $0xc0,%al
 40046b5:	20 00                	and    %al,(%eax)
 40046b7:	04 c0                	add    $0xc0,%al
 40046b9:	20 00                	and    %al,(%eax)
 40046bb:	04 c0                	add    $0xc0,%al
 40046bd:	20 00                	and    %al,(%eax)
 40046bf:	04 23                	add    $0x23,%al
 40046c1:	24 00                	and    $0x0,%al
 40046c3:	04 37                	add    $0x37,%al
 40046c5:	21 00                	and    %eax,(%eax)
 40046c7:	04 c0                	add    $0xc0,%al
 40046c9:	20 00                	and    %al,(%eax)
 40046cb:	04 2d                	add    $0x2d,%al
 40046cd:	21 00                	and    %eax,(%eax)
 40046cf:	04 19                	add    $0x19,%al
 40046d1:	21 00                	and    %eax,(%eax)
 40046d3:	04 c0                	add    $0xc0,%al
 40046d5:	20 00                	and    %al,(%eax)
 40046d7:	04 c7                	add    $0xc7,%al
 40046d9:	20 00                	and    %al,(%eax)
 40046db:	04 d5                	add    $0xd5,%al
 40046dd:	20 00                	and    %al,(%eax)
 40046df:	04 d5                	add    $0xd5,%al
 40046e1:	20 00                	and    %al,(%eax)
 40046e3:	04 d5                	add    $0xd5,%al
 40046e5:	20 00                	and    %al,(%eax)
 40046e7:	04 d5                	add    $0xd5,%al
 40046e9:	20 00                	and    %al,(%eax)
 40046eb:	04 d5                	add    $0xd5,%al
 40046ed:	20 00                	and    %al,(%eax)
 40046ef:	04 d5                	add    $0xd5,%al
 40046f1:	20 00                	and    %al,(%eax)
 40046f3:	04 d5                	add    $0xd5,%al
 40046f5:	20 00                	and    %al,(%eax)
 40046f7:	04 d5                	add    $0xd5,%al
 40046f9:	20 00                	and    %al,(%eax)
 40046fb:	04 d5                	add    $0xd5,%al
 40046fd:	20 00                	and    %al,(%eax)
 40046ff:	04 c0                	add    $0xc0,%al
 4004701:	20 00                	and    %al,(%eax)
 4004703:	04 c0                	add    $0xc0,%al
 4004705:	20 00                	and    %al,(%eax)
 4004707:	04 c0                	add    $0xc0,%al
 4004709:	20 00                	and    %al,(%eax)
 400470b:	04 c0                	add    $0xc0,%al
 400470d:	20 00                	and    %al,(%eax)
 400470f:	04 c0                	add    $0xc0,%al
 4004711:	20 00                	and    %al,(%eax)
 4004713:	04 c0                	add    $0xc0,%al
 4004715:	20 00                	and    %al,(%eax)
 4004717:	04 c0                	add    $0xc0,%al
 4004719:	20 00                	and    %al,(%eax)
 400471b:	04 c0                	add    $0xc0,%al
 400471d:	20 00                	and    %al,(%eax)
 400471f:	04 c0                	add    $0xc0,%al
 4004721:	20 00                	and    %al,(%eax)
 4004723:	04 c0                	add    $0xc0,%al
 4004725:	20 00                	and    %al,(%eax)
 4004727:	04 c0                	add    $0xc0,%al
 4004729:	20 00                	and    %al,(%eax)
 400472b:	04 c0                	add    $0xc0,%al
 400472d:	20 00                	and    %al,(%eax)
 400472f:	04 c0                	add    $0xc0,%al
 4004731:	20 00                	and    %al,(%eax)
 4004733:	04 c0                	add    $0xc0,%al
 4004735:	20 00                	and    %al,(%eax)
 4004737:	04 c0                	add    $0xc0,%al
 4004739:	20 00                	and    %al,(%eax)
 400473b:	04 c0                	add    $0xc0,%al
 400473d:	20 00                	and    %al,(%eax)
 400473f:	04 c0                	add    $0xc0,%al
 4004741:	20 00                	and    %al,(%eax)
 4004743:	04 c0                	add    $0xc0,%al
 4004745:	20 00                	and    %al,(%eax)
 4004747:	04 19                	add    $0x19,%al
 4004749:	24 00                	and    $0x0,%al
 400474b:	04 c0                	add    $0xc0,%al
 400474d:	20 00                	and    %al,(%eax)
 400474f:	04 c0                	add    $0xc0,%al
 4004751:	20 00                	and    %al,(%eax)
 4004753:	04 c0                	add    $0xc0,%al
 4004755:	20 00                	and    %al,(%eax)
 4004757:	04 c0                	add    $0xc0,%al
 4004759:	20 00                	and    %al,(%eax)
 400475b:	04 c0                	add    $0xc0,%al
 400475d:	20 00                	and    %al,(%eax)
 400475f:	04 c0                	add    $0xc0,%al
 4004761:	20 00                	and    %al,(%eax)
 4004763:	04 c0                	add    $0xc0,%al
 4004765:	20 00                	and    %al,(%eax)
 4004767:	04 c0                	add    $0xc0,%al
 4004769:	20 00                	and    %al,(%eax)
 400476b:	04 c0                	add    $0xc0,%al
 400476d:	20 00                	and    %al,(%eax)
 400476f:	04 c0                	add    $0xc0,%al
 4004771:	20 00                	and    %al,(%eax)
 4004773:	04 c0                	add    $0xc0,%al
 4004775:	20 00                	and    %al,(%eax)
 4004777:	04 99                	add    $0x99,%al
 4004779:	22 00                	and    (%eax),%al
 400477b:	04 c0                	add    $0xc0,%al
 400477d:	20 00                	and    %al,(%eax)
 400477f:	04 c0                	add    $0xc0,%al
 4004781:	20 00                	and    %al,(%eax)
 4004783:	04 c0                	add    $0xc0,%al
 4004785:	20 00                	and    %al,(%eax)
 4004787:	04 c0                	add    $0xc0,%al
 4004789:	20 00                	and    %al,(%eax)
 400478b:	04 c0                	add    $0xc0,%al
 400478d:	20 00                	and    %al,(%eax)
 400478f:	04 c0                	add    $0xc0,%al
 4004791:	20 00                	and    %al,(%eax)
 4004793:	04 c0                	add    $0xc0,%al
 4004795:	20 00                	and    %al,(%eax)
 4004797:	04 c0                	add    $0xc0,%al
 4004799:	20 00                	and    %al,(%eax)
 400479b:	04 c0                	add    $0xc0,%al
 400479d:	20 00                	and    %al,(%eax)
 400479f:	04 c0                	add    $0xc0,%al
 40047a1:	20 00                	and    %al,(%eax)
 40047a3:	04 30                	add    $0x30,%al
 40047a5:	22 00                	and    (%eax),%al
 40047a7:	04 99                	add    $0x99,%al
 40047a9:	22 00                	and    (%eax),%al
 40047ab:	04 c0                	add    $0xc0,%al
 40047ad:	20 00                	and    %al,(%eax)
 40047af:	04 c0                	add    $0xc0,%al
 40047b1:	20 00                	and    %al,(%eax)
 40047b3:	04 c0                	add    $0xc0,%al
 40047b5:	20 00                	and    %al,(%eax)
 40047b7:	04 26                	add    $0x26,%al
 40047b9:	22 00                	and    (%eax),%al
 40047bb:	04 99                	add    $0x99,%al
 40047bd:	22 00                	and    (%eax),%al
 40047bf:	04 c0                	add    $0xc0,%al
 40047c1:	20 00                	and    %al,(%eax)
 40047c3:	04 c0                	add    $0xc0,%al
 40047c5:	20 00                	and    %al,(%eax)
 40047c7:	04 1c                	add    $0x1c,%al
 40047c9:	22 00                	and    (%eax),%al
 40047cb:	04 c0                	add    $0xc0,%al
 40047cd:	20 00                	and    %al,(%eax)
 40047cf:	04 dd                	add    $0xdd,%al
 40047d1:	21 00                	and    %eax,(%eax)
 40047d3:	04 99                	add    $0x99,%al
 40047d5:	22 00                	and    (%eax),%al
 40047d7:	04 34                	add    $0x34,%al
 40047d9:	20 00                	and    %al,(%eax)
 40047db:	04 c0                	add    $0xc0,%al
 40047dd:	20 00                	and    %al,(%eax)
 40047df:	04 c0                	add    $0xc0,%al
 40047e1:	20 00                	and    %al,(%eax)
 40047e3:	04 41                	add    $0x41,%al
 40047e5:	21 00                	and    %eax,(%eax)
 40047e7:	04 c0                	add    $0xc0,%al
 40047e9:	20 00                	and    %al,(%eax)
 40047eb:	04 99                	add    $0x99,%al
 40047ed:	22 00                	and    (%eax),%al
 40047ef:	04 c0                	add    $0xc0,%al
 40047f1:	20 00                	and    %al,(%eax)
 40047f3:	04 c0                	add    $0xc0,%al
 40047f5:	20 00                	and    %al,(%eax)
 40047f7:	04 99                	add    $0x99,%al
 40047f9:	22 00                	and    (%eax),%al
 40047fb:	04 4d                	add    $0x4d,%al
 40047fd:	65 6d                	gs insl (%dx),%es:(%edi)
 40047ff:	6f                   	outsl  %ds:(%esi),(%dx)
 4004800:	72 79                	jb     400487b <_ctype_+0x1b>
 4004802:	20 61 6c             	and    %ah,0x6c(%ecx)
 4004805:	6c                   	insb   (%dx),%es:(%edi)
 4004806:	6f                   	outsl  %ds:(%esi),(%dx)
 4004807:	63 61 74             	arpl   %sp,0x74(%ecx)
 400480a:	69 6f 6e 20 73 74 61 	imul   $0x61747320,0x6e(%edi),%ebp
 4004811:	74 69                	je     400487c <_ctype_+0x1c>
 4004813:	73 74                	jae    4004889 <_ctype_+0x29>
 4004815:	69 63 73 20 25 73 0a 	imul   $0xa732520,0x73(%ebx),%esp
 400481c:	66 72 65             	data16 jb 4004884 <_ctype_+0x24>
 400481f:	65 3a 09             	cmp    %gs:(%ecx),%cl
 4004822:	00 00                	add    %al,(%eax)
 4004824:	0a 09                	or     (%ecx),%cl
 4004826:	54                   	push   %esp
 4004827:	6f                   	outsl  %ds:(%esi),(%dx)
 4004828:	74 61                	je     400488b <_ctype_+0x2b>
 400482a:	6c                   	insb   (%dx),%es:(%edi)
 400482b:	20 69 6e             	and    %ch,0x6e(%ecx)
 400482e:	20 75 73             	and    %dh,0x73(%ebp)
 4004831:	65 3a 20             	cmp    %gs:(%eax),%ah
 4004834:	25 64 2c 20 74       	and    $0x74202c64,%eax
 4004839:	6f                   	outsl  %ds:(%esi),(%dx)
 400483a:	74 61                	je     400489d <_ctype_+0x3d>
 400483c:	6c                   	insb   (%dx),%es:(%edi)
 400483d:	20 66 72             	and    %ah,0x72(%esi)
 4004840:	65 65 3a 20          	gs cmp %gs:(%eax),%ah
 4004844:	25 64 0a 00 20       	and    $0x20000a64,%eax
 4004849:	25 64 00 0a 75       	and    $0x750a0064,%eax
 400484e:	73 65                	jae    40048b5 <_ctype_+0x55>
 4004850:	64 3a 09             	cmp    %fs:(%ecx),%cl
	...

04004860 <_ctype_>:
 4004860:	00 20                	add    %ah,(%eax)
 4004862:	20 20                	and    %ah,(%eax)
 4004864:	20 20                	and    %ah,(%eax)
 4004866:	20 20                	and    %ah,(%eax)
 4004868:	20 20                	and    %ah,(%eax)
 400486a:	28 28                	sub    %ch,(%eax)
 400486c:	28 28                	sub    %ch,(%eax)
 400486e:	28 20                	sub    %ah,(%eax)
 4004870:	20 20                	and    %ah,(%eax)
 4004872:	20 20                	and    %ah,(%eax)
 4004874:	20 20                	and    %ah,(%eax)
 4004876:	20 20                	and    %ah,(%eax)
 4004878:	20 20                	and    %ah,(%eax)
 400487a:	20 20                	and    %ah,(%eax)
 400487c:	20 20                	and    %ah,(%eax)
 400487e:	20 20                	and    %ah,(%eax)
 4004880:	20 88 10 10 10 10    	and    %cl,0x10101010(%eax)
 4004886:	10 10                	adc    %dl,(%eax)
 4004888:	10 10                	adc    %dl,(%eax)
 400488a:	10 10                	adc    %dl,(%eax)
 400488c:	10 10                	adc    %dl,(%eax)
 400488e:	10 10                	adc    %dl,(%eax)
 4004890:	10 04 04             	adc    %al,(%esp,%eax,1)
 4004893:	04 04                	add    $0x4,%al
 4004895:	04 04                	add    $0x4,%al
 4004897:	04 04                	add    $0x4,%al
 4004899:	04 04                	add    $0x4,%al
 400489b:	10 10                	adc    %dl,(%eax)
 400489d:	10 10                	adc    %dl,(%eax)
 400489f:	10 10                	adc    %dl,(%eax)
 40048a1:	10 41 41             	adc    %al,0x41(%ecx)
 40048a4:	41                   	inc    %ecx
 40048a5:	41                   	inc    %ecx
 40048a6:	41                   	inc    %ecx
 40048a7:	41                   	inc    %ecx
 40048a8:	01 01                	add    %eax,(%ecx)
 40048aa:	01 01                	add    %eax,(%ecx)
 40048ac:	01 01                	add    %eax,(%ecx)
 40048ae:	01 01                	add    %eax,(%ecx)
 40048b0:	01 01                	add    %eax,(%ecx)
 40048b2:	01 01                	add    %eax,(%ecx)
 40048b4:	01 01                	add    %eax,(%ecx)
 40048b6:	01 01                	add    %eax,(%ecx)
 40048b8:	01 01                	add    %eax,(%ecx)
 40048ba:	01 01                	add    %eax,(%ecx)
 40048bc:	10 10                	adc    %dl,(%eax)
 40048be:	10 10                	adc    %dl,(%eax)
 40048c0:	10 10                	adc    %dl,(%eax)
 40048c2:	42                   	inc    %edx
 40048c3:	42                   	inc    %edx
 40048c4:	42                   	inc    %edx
 40048c5:	42                   	inc    %edx
 40048c6:	42                   	inc    %edx
 40048c7:	42                   	inc    %edx
 40048c8:	02 02                	add    (%edx),%al
 40048ca:	02 02                	add    (%edx),%al
 40048cc:	02 02                	add    (%edx),%al
 40048ce:	02 02                	add    (%edx),%al
 40048d0:	02 02                	add    (%edx),%al
 40048d2:	02 02                	add    (%edx),%al
 40048d4:	02 02                	add    (%edx),%al
 40048d6:	02 02                	add    (%edx),%al
 40048d8:	02 02                	add    (%edx),%al
 40048da:	02 02                	add    (%edx),%al
 40048dc:	10 10                	adc    %dl,(%eax)
 40048de:	10 10                	adc    %dl,(%eax)
 40048e0:	20 00                	and    %al,(%eax)
	...
 400495e:	00 00                	add    %al,(%eax)
 4004960:	00 73 72             	add    %dh,0x72(%ebx)
 4004963:	63 2f                	arpl   %bp,(%edi)
 4004965:	73 74                	jae    40049db <_ctype_+0x17b>
 4004967:	64 69 6f 2f 63 76 74 	imul   $0x2e747663,%fs:0x2f(%edi),%ebp
 400496e:	2e 
 400496f:	63 00                	arpl   %ax,(%eax)
 4004971:	30 31                	xor    %dh,(%ecx)
 4004973:	32 33                	xor    (%ebx),%dh
 4004975:	34 35                	xor    $0x35,%al
 4004977:	36 37                	ss aaa 
 4004979:	38 39                	cmp    %bh,(%ecx)
 400497b:	61                   	popa   
 400497c:	62 63 64             	bound  %esp,0x64(%ebx)
 400497f:	65 66 00 30          	data16 add %dh,%gs:(%eax)
 4004983:	31 32                	xor    %esi,(%edx)
 4004985:	33 34 35 36 37 38 39 	xor    0x39383736(,%esi,1),%esi
 400498c:	41                   	inc    %ecx
 400498d:	42                   	inc    %edx
 400498e:	43                   	inc    %ebx
 400498f:	44                   	inc    %esp
 4004990:	45                   	inc    %ebp
 4004991:	46                   	inc    %esi
 4004992:	00 00                	add    %al,(%eax)
 4004994:	50                   	push   %eax
 4004995:	32 00                	xor    (%eax),%al
 4004997:	04 c4                	add    $0xc4,%al
 4004999:	32 00                	xor    (%eax),%al
 400499b:	04 c4                	add    $0xc4,%al
 400499d:	32 00                	xor    (%eax),%al
 400499f:	04 c4                	add    $0xc4,%al
 40049a1:	32 00                	xor    (%eax),%al
 40049a3:	04 c4                	add    $0xc4,%al
 40049a5:	32 00                	xor    (%eax),%al
 40049a7:	04 c4                	add    $0xc4,%al
 40049a9:	32 00                	xor    (%eax),%al
 40049ab:	04 c4                	add    $0xc4,%al
 40049ad:	32 00                	xor    (%eax),%al
 40049af:	04 c4                	add    $0xc4,%al
 40049b1:	32 00                	xor    (%eax),%al
 40049b3:	04 c4                	add    $0xc4,%al
 40049b5:	32 00                	xor    (%eax),%al
 40049b7:	04 c4                	add    $0xc4,%al
 40049b9:	32 00                	xor    (%eax),%al
 40049bb:	04 c4                	add    $0xc4,%al
 40049bd:	32 00                	xor    (%eax),%al
 40049bf:	04 c4                	add    $0xc4,%al
 40049c1:	32 00                	xor    (%eax),%al
 40049c3:	04 fc                	add    $0xfc,%al
 40049c5:	31 00                	xor    %eax,(%eax)
 40049c7:	04 c4                	add    $0xc4,%al
 40049c9:	32 00                	xor    (%eax),%al
 40049cb:	04 c4                	add    $0xc4,%al
 40049cd:	32 00                	xor    (%eax),%al
 40049cf:	04 c4                	add    $0xc4,%al
 40049d1:	32 00                	xor    (%eax),%al
 40049d3:	04 c4                	add    $0xc4,%al
 40049d5:	32 00                	xor    (%eax),%al
 40049d7:	04 fc                	add    $0xfc,%al
 40049d9:	31 00                	xor    %eax,(%eax)
 40049db:	04 c4                	add    $0xc4,%al
 40049dd:	32 00                	xor    (%eax),%al
 40049df:	04 c4                	add    $0xc4,%al
 40049e1:	32 00                	xor    (%eax),%al
 40049e3:	04 c4                	add    $0xc4,%al
 40049e5:	32 00                	xor    (%eax),%al
 40049e7:	04 c4                	add    $0xc4,%al
 40049e9:	32 00                	xor    (%eax),%al
 40049eb:	04 c4                	add    $0xc4,%al
 40049ed:	32 00                	xor    (%eax),%al
 40049ef:	04 50                	add    $0x50,%al
 40049f1:	32 00                	xor    (%eax),%al
 40049f3:	04 c4                	add    $0xc4,%al
 40049f5:	32 00                	xor    (%eax),%al
 40049f7:	04 c4                	add    $0xc4,%al
 40049f9:	32 00                	xor    (%eax),%al
 40049fb:	04 c4                	add    $0xc4,%al
 40049fd:	32 00                	xor    (%eax),%al
 40049ff:	04 c4                	add    $0xc4,%al
 4004a01:	32 00                	xor    (%eax),%al
 4004a03:	04 c4                	add    $0xc4,%al
 4004a05:	32 00                	xor    (%eax),%al
 4004a07:	04 50                	add    $0x50,%al
 4004a09:	32 00                	xor    (%eax),%al
 4004a0b:	04 c4                	add    $0xc4,%al
 4004a0d:	32 00                	xor    (%eax),%al
 4004a0f:	04 c4                	add    $0xc4,%al
 4004a11:	32 00                	xor    (%eax),%al
 4004a13:	04 50                	add    $0x50,%al
 4004a15:	32 00                	xor    (%eax),%al
 4004a17:	04 94                	add    $0x94,%al
 4004a19:	33 00                	xor    (%eax),%eax
 4004a1b:	04 0c                	add    $0xc,%al
 4004a1d:	34 00                	xor    $0x0,%al
 4004a1f:	04 0c                	add    $0xc,%al
 4004a21:	34 00                	xor    $0x0,%al
 4004a23:	04 0c                	add    $0xc,%al
 4004a25:	34 00                	xor    $0x0,%al
 4004a27:	04 0c                	add    $0xc,%al
 4004a29:	34 00                	xor    $0x0,%al
 4004a2b:	04 0c                	add    $0xc,%al
 4004a2d:	34 00                	xor    $0x0,%al
 4004a2f:	04 0c                	add    $0xc,%al
 4004a31:	34 00                	xor    $0x0,%al
 4004a33:	04 0c                	add    $0xc,%al
 4004a35:	34 00                	xor    $0x0,%al
 4004a37:	04 0c                	add    $0xc,%al
 4004a39:	34 00                	xor    $0x0,%al
 4004a3b:	04 0c                	add    $0xc,%al
 4004a3d:	34 00                	xor    $0x0,%al
 4004a3f:	04 0c                	add    $0xc,%al
 4004a41:	34 00                	xor    $0x0,%al
 4004a43:	04 0c                	add    $0xc,%al
 4004a45:	34 00                	xor    $0x0,%al
 4004a47:	04 34                	add    $0x34,%al
 4004a49:	33 00                	xor    (%eax),%eax
 4004a4b:	04 0c                	add    $0xc,%al
 4004a4d:	34 00                	xor    $0x0,%al
 4004a4f:	04 0c                	add    $0xc,%al
 4004a51:	34 00                	xor    $0x0,%al
 4004a53:	04 0c                	add    $0xc,%al
 4004a55:	34 00                	xor    $0x0,%al
 4004a57:	04 0c                	add    $0xc,%al
 4004a59:	34 00                	xor    $0x0,%al
 4004a5b:	04 34                	add    $0x34,%al
 4004a5d:	33 00                	xor    (%eax),%eax
 4004a5f:	04 0c                	add    $0xc,%al
 4004a61:	34 00                	xor    $0x0,%al
 4004a63:	04 0c                	add    $0xc,%al
 4004a65:	34 00                	xor    $0x0,%al
 4004a67:	04 0c                	add    $0xc,%al
 4004a69:	34 00                	xor    $0x0,%al
 4004a6b:	04 0c                	add    $0xc,%al
 4004a6d:	34 00                	xor    $0x0,%al
 4004a6f:	04 0c                	add    $0xc,%al
 4004a71:	34 00                	xor    $0x0,%al
 4004a73:	04 94                	add    $0x94,%al
 4004a75:	33 00                	xor    (%eax),%eax
 4004a77:	04 0c                	add    $0xc,%al
 4004a79:	34 00                	xor    $0x0,%al
 4004a7b:	04 0c                	add    $0xc,%al
 4004a7d:	34 00                	xor    $0x0,%al
 4004a7f:	04 0c                	add    $0xc,%al
 4004a81:	34 00                	xor    $0x0,%al
 4004a83:	04 0c                	add    $0xc,%al
 4004a85:	34 00                	xor    $0x0,%al
 4004a87:	04 0c                	add    $0xc,%al
 4004a89:	34 00                	xor    $0x0,%al
 4004a8b:	04 94                	add    $0x94,%al
 4004a8d:	33 00                	xor    (%eax),%eax
 4004a8f:	04 0c                	add    $0xc,%al
 4004a91:	34 00                	xor    $0x0,%al
 4004a93:	04 0c                	add    $0xc,%al
 4004a95:	34 00                	xor    $0x0,%al
 4004a97:	04 94                	add    $0x94,%al
 4004a99:	33 00                	xor    (%eax),%eax
 4004a9b:	04 73                	add    $0x73,%al
 4004a9d:	72 63                	jb     4004b02 <_ctype_+0x2a2>
 4004a9f:	2f                   	das    
 4004aa0:	73 74                	jae    4004b16 <_ctype_+0x2b6>
 4004aa2:	64 6c                	fs insb (%dx),%es:(%edi)
 4004aa4:	69 62 2f 73 74 72 74 	imul   $0x74727473,0x2f(%edx),%esp
 4004aab:	6f                   	outsl  %ds:(%esi),(%dx)
 4004aac:	64 2e 63 00          	fs arpl %ax,%cs:(%eax)
 4004ab0:	73 72                	jae    4004b24 <_ctype_+0x2c4>
 4004ab2:	63 2f                	arpl   %bp,(%edi)
 4004ab4:	6e                   	outsb  %ds:(%esi),(%dx)
 4004ab5:	61                   	popa   
 4004ab6:	6e                   	outsb  %ds:(%esi),(%dx)
 4004ab7:	6f                   	outsl  %ds:(%esi),(%dx)
 4004ab8:	73 2e                	jae    4004ae8 <_ctype_+0x288>
 4004aba:	63 00                	arpl   %ax,(%eax)

Disassembly of section .eh_frame:

04004abc <.eh_frame>:
 4004abc:	14 00                	adc    $0x0,%al
 4004abe:	00 00                	add    %al,(%eax)
 4004ac0:	00 00                	add    %al,(%eax)
 4004ac2:	00 00                	add    %al,(%eax)
 4004ac4:	01 7a 52             	add    %edi,0x52(%edx)
 4004ac7:	00 01                	add    %al,(%ecx)
 4004ac9:	7c 08                	jl     4004ad3 <_ctype_+0x273>
 4004acb:	01 1b                	add    %ebx,(%ebx)
 4004acd:	0c 04                	or     $0x4,%al
 4004acf:	04 88                	add    $0x88,%al
 4004ad1:	01 00                	add    %eax,(%eax)
 4004ad3:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
 4004ad7:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4004ada:	00 00                	add    %al,(%eax)
 4004adc:	98                   	cwtl   
 4004add:	b5 ff                	mov    $0xff,%ch
 4004adf:	ff b0 01 00 00 00    	pushl  0x1(%eax)
 4004ae5:	44                   	inc    %esp
 4004ae6:	0c 01                	or     $0x1,%al
 4004ae8:	00 47 10             	add    %al,0x10(%edi)
 4004aeb:	05 02 75 00 46       	add    $0x46007502,%eax
 4004af0:	0f 03 75 70          	lsl    0x70(%ebp),%esi
 4004af4:	06                   	push   %es
 4004af5:	10 07                	adc    %al,(%edi)
 4004af7:	02 75 7c             	add    0x7c(%ebp),%dh
 4004afa:	10 06                	adc    %al,(%esi)
 4004afc:	02 75 78             	add    0x78(%ebp),%dh
 4004aff:	10 03                	adc    %al,(%ebx)
 4004b01:	02 75 74             	add    0x74(%ebp),%dh
 4004b04:	03 79 01             	add    0x1(%ecx),%edi
 4004b07:	0a c1                	or     %cl,%al
 4004b09:	0c 01                	or     $0x1,%al
 4004b0b:	00 41 c3             	add    %al,-0x3d(%ecx)
 4004b0e:	41                   	inc    %ecx
 4004b0f:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004b13:	c5 43 0c             	lds    0xc(%ebx),%eax
 4004b16:	04 04                	add    $0x4,%al
 4004b18:	41                   	inc    %ecx
 4004b19:	0b 00                	or     (%eax),%eax
 4004b1b:	00 3c 00             	add    %bh,(%eax,%eax,1)
 4004b1e:	00 00                	add    %al,(%eax)
 4004b20:	64 00 00             	add    %al,%fs:(%eax)
 4004b23:	00 00                	add    %al,(%eax)
 4004b25:	b7 ff                	mov    $0xff,%bh
 4004b27:	ff 23                	jmp    *(%ebx)
 4004b29:	04 00                	add    $0x0,%al
 4004b2b:	00 00                	add    %al,(%eax)
 4004b2d:	41                   	inc    %ecx
 4004b2e:	0e                   	push   %cs
 4004b2f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004b35:	46                   	inc    %esi
 4004b36:	87 03                	xchg   %eax,(%ebx)
 4004b38:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4004b3b:	05 02 5e 0a c3       	add    $0xc30a5e02,%eax
 4004b40:	41                   	inc    %ecx
 4004b41:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004b45:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004b48:	04 42                	add    $0x42,%al
 4004b4a:	0b 02                	or     (%edx),%eax
 4004b4c:	92                   	xchg   %eax,%edx
 4004b4d:	0a c3                	or     %bl,%al
 4004b4f:	41                   	inc    %ecx
 4004b50:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004b54:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004b57:	04 43                	add    $0x43,%al
 4004b59:	0b 00                	or     (%eax),%eax
 4004b5b:	00 34 00             	add    %dh,(%eax,%eax,1)
 4004b5e:	00 00                	add    %al,(%eax)
 4004b60:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 4004b61:	00 00                	add    %al,(%eax)
 4004b63:	00 e4                	add    %ah,%ah
 4004b65:	ba ff ff f3 00       	mov    $0xf3ffff,%edx
 4004b6a:	00 00                	add    %al,(%eax)
 4004b6c:	00 41 0e             	add    %al,0xe(%ecx)
 4004b6f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004b75:	45                   	inc    %ebp
 4004b76:	86 03                	xchg   %al,(%ebx)
 4004b78:	83 04 02 97          	addl   $0xffffff97,(%edx,%eax,1)
 4004b7c:	0a c3                	or     %bl,%al
 4004b7e:	41                   	inc    %ecx
 4004b7f:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 4004b83:	04 04                	add    $0x4,%al
 4004b85:	43                   	inc    %ebx
 4004b86:	0b 58 0a             	or     0xa(%eax),%ebx
 4004b89:	c3                   	ret    
 4004b8a:	41                   	inc    %ecx
 4004b8b:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 4004b8f:	04 04                	add    $0x4,%al
 4004b91:	42                   	inc    %edx
 4004b92:	0b 00                	or     (%eax),%eax
 4004b94:	1c 00                	sbb    $0x0,%al
 4004b96:	00 00                	add    %al,(%eax)
 4004b98:	dc 00                	faddl  (%eax)
 4004b9a:	00 00                	add    %al,(%eax)
 4004b9c:	a0 bb ff ff 17       	mov    0x17ffffbb,%al
 4004ba1:	00 00                	add    %al,(%eax)
 4004ba3:	00 00                	add    %al,(%eax)
 4004ba5:	41                   	inc    %ecx
 4004ba6:	0e                   	push   %cs
 4004ba7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004bad:	53                   	push   %ebx
 4004bae:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004bb1:	04 00                	add    $0x0,%al
 4004bb3:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4004bb6:	00 00                	add    %al,(%eax)
 4004bb8:	fc                   	cld    
 4004bb9:	00 00                	add    %al,(%eax)
 4004bbb:	00 98 bb ff ff 09    	add    %bl,0x9ffffbb(%eax)
 4004bc1:	00 00                	add    %al,(%eax)
 4004bc3:	00 00                	add    %al,(%eax)
 4004bc5:	41                   	inc    %ecx
 4004bc6:	0e                   	push   %cs
 4004bc7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004bcd:	41                   	inc    %ecx
 4004bce:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004bd1:	04 00                	add    $0x0,%al
 4004bd3:	00 40 00             	add    %al,0x0(%eax)
 4004bd6:	00 00                	add    %al,(%eax)
 4004bd8:	1c 01                	sbb    $0x1,%al
 4004bda:	00 00                	add    %al,(%eax)
 4004bdc:	84 bb ff ff 6d 01    	test   %bh,0x16dffff(%ebx)
 4004be2:	00 00                	add    %al,(%eax)
 4004be4:	00 41 0e             	add    %al,0xe(%ecx)
 4004be7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004bed:	42                   	inc    %edx
 4004bee:	83 03 02             	addl   $0x2,(%ebx)
 4004bf1:	9d                   	popf   
 4004bf2:	0a c5                	or     %ch,%al
 4004bf4:	c3                   	ret    
 4004bf5:	0c 04                	or     $0x4,%al
 4004bf7:	04 42                	add    $0x42,%al
 4004bf9:	0b 7e 0a             	or     0xa(%esi),%edi
 4004bfc:	c3                   	ret    
 4004bfd:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004c00:	04 42                	add    $0x42,%al
 4004c02:	0b 6f 0a             	or     0xa(%edi),%ebp
 4004c05:	c3                   	ret    
 4004c06:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004c09:	04 41                	add    $0x41,%al
 4004c0b:	0b 4b 0a             	or     0xa(%ebx),%ecx
 4004c0e:	c3                   	ret    
 4004c0f:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004c12:	04 41                	add    $0x41,%al
 4004c14:	0b 00                	or     (%eax),%eax
 4004c16:	00 00                	add    %al,(%eax)
 4004c18:	3c 00                	cmp    $0x0,%al
 4004c1a:	00 00                	add    %al,(%eax)
 4004c1c:	60                   	pusha  
 4004c1d:	01 00                	add    %eax,(%eax)
 4004c1f:	00 b0 bc ff ff b3    	add    %dh,-0x4c000044(%eax)
 4004c25:	00 00                	add    %al,(%eax)
 4004c27:	00 00                	add    %al,(%eax)
 4004c29:	41                   	inc    %ecx
 4004c2a:	0e                   	push   %cs
 4004c2b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004c31:	45                   	inc    %ebp
 4004c32:	86 03                	xchg   %al,(%ebx)
 4004c34:	83 04 02 7e          	addl   $0x7e,(%edx,%eax,1)
 4004c38:	0a c3                	or     %bl,%al
 4004c3a:	41                   	inc    %ecx
 4004c3b:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 4004c3f:	04 04                	add    $0x4,%al
 4004c41:	44                   	inc    %esp
 4004c42:	0b 54 0a c3          	or     -0x3d(%edx,%ecx,1),%edx
 4004c46:	41                   	inc    %ecx
 4004c47:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 4004c4b:	04 04                	add    $0x4,%al
 4004c4d:	42                   	inc    %edx
 4004c4e:	0b 4c c3 41          	or     0x41(%ebx,%eax,8),%ecx
 4004c52:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 4004c56:	04 04                	add    $0x4,%al
 4004c58:	1c 00                	sbb    $0x0,%al
 4004c5a:	00 00                	add    %al,(%eax)
 4004c5c:	a0 01 00 00 24       	mov    0x24000001,%al
 4004c61:	bd ff ff 19 00       	mov    $0x19ffff,%ebp
 4004c66:	00 00                	add    %al,(%eax)
 4004c68:	00 41 0e             	add    %al,0xe(%ecx)
 4004c6b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004c71:	55                   	push   %ebp
 4004c72:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004c75:	04 00                	add    $0x0,%al
 4004c77:	00 3c 00             	add    %bh,(%eax,%eax,1)
 4004c7a:	00 00                	add    %al,(%eax)
 4004c7c:	c0 01 00             	rolb   $0x0,(%ecx)
 4004c7f:	00 20                	add    %ah,(%eax)
 4004c81:	bd ff ff bd 00       	mov    $0xbdffff,%ebp
 4004c86:	00 00                	add    %al,(%eax)
 4004c88:	00 41 0e             	add    %al,0xe(%ecx)
 4004c8b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004c91:	46                   	inc    %esi
 4004c92:	87 03                	xchg   %eax,(%ebx)
 4004c94:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4004c97:	05 02 65 0a c3       	add    $0xc30a6502,%eax
 4004c9c:	41                   	inc    %ecx
 4004c9d:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004ca1:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004ca4:	04 43                	add    $0x43,%al
 4004ca6:	0b 46 0a             	or     0xa(%esi),%eax
 4004ca9:	c3                   	ret    
 4004caa:	41                   	inc    %ecx
 4004cab:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004caf:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004cb2:	04 43                	add    $0x43,%al
 4004cb4:	0b 00                	or     (%eax),%eax
 4004cb6:	00 00                	add    %al,(%eax)
 4004cb8:	2c 00                	sub    $0x0,%al
 4004cba:	00 00                	add    %al,(%eax)
 4004cbc:	00 02                	add    %al,(%edx)
 4004cbe:	00 00                	add    %al,(%eax)
 4004cc0:	a0 bd ff ff 77       	mov    0x77ffffbd,%al
 4004cc5:	00 00                	add    %al,(%eax)
 4004cc7:	00 00                	add    %al,(%eax)
 4004cc9:	41                   	inc    %ecx
 4004cca:	0e                   	push   %cs
 4004ccb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004cd1:	41                   	inc    %ecx
 4004cd2:	83 03 5d             	addl   $0x5d,(%ebx)
 4004cd5:	0a c3                	or     %bl,%al
 4004cd7:	41                   	inc    %ecx
 4004cd8:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004cdb:	04 42                	add    $0x42,%al
 4004cdd:	0b 63 0a             	or     0xa(%ebx),%esp
 4004ce0:	c3                   	ret    
 4004ce1:	41                   	inc    %ecx
 4004ce2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004ce5:	04 44                	add    $0x44,%al
 4004ce7:	0b 28                	or     (%eax),%ebp
 4004ce9:	00 00                	add    %al,(%eax)
 4004ceb:	00 30                	add    %dh,(%eax)
 4004ced:	02 00                	add    (%eax),%al
 4004cef:	00 e8                	add    %ch,%al
 4004cf1:	bd ff ff 5f 00       	mov    $0x5fffff,%ebp
 4004cf6:	00 00                	add    %al,(%eax)
 4004cf8:	00 41 0e             	add    %al,0xe(%ecx)
 4004cfb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004d01:	46                   	inc    %esi
 4004d02:	87 03                	xchg   %eax,(%ebx)
 4004d04:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4004d07:	05 02 52 c3 41       	add    $0x41c35202,%eax
 4004d0c:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004d10:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004d13:	04 34                	add    $0x34,%al
 4004d15:	00 00                	add    %al,(%eax)
 4004d17:	00 5c 02 00          	add    %bl,0x0(%edx,%eax,1)
 4004d1b:	00 1c be             	add    %bl,(%esi,%edi,4)
 4004d1e:	ff                   	(bad)  
 4004d1f:	ff 12                	call   *(%edx)
 4004d21:	01 00                	add    %eax,(%eax)
 4004d23:	00 00                	add    %al,(%eax)
 4004d25:	41                   	inc    %ecx
 4004d26:	0e                   	push   %cs
 4004d27:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004d2d:	42                   	inc    %edx
 4004d2e:	86 03                	xchg   %al,(%ebx)
 4004d30:	83 04 02 a4          	addl   $0xffffffa4,(%edx,%eax,1)
 4004d34:	0a c3                	or     %bl,%al
 4004d36:	41                   	inc    %ecx
 4004d37:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 4004d3b:	04 04                	add    $0x4,%al
 4004d3d:	41                   	inc    %ecx
 4004d3e:	0b 46 0a             	or     0xa(%esi),%eax
 4004d41:	c3                   	ret    
 4004d42:	41                   	inc    %ecx
 4004d43:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 4004d47:	04 04                	add    $0x4,%al
 4004d49:	44                   	inc    %esp
 4004d4a:	0b 00                	or     (%eax),%eax
 4004d4c:	28 00                	sub    %al,(%eax)
 4004d4e:	00 00                	add    %al,(%eax)
 4004d50:	94                   	xchg   %eax,%esp
 4004d51:	02 00                	add    (%eax),%al
 4004d53:	00 f8                	add    %bh,%al
 4004d55:	be ff ff 37 00       	mov    $0x37ffff,%esi
 4004d5a:	00 00                	add    %al,(%eax)
 4004d5c:	00 41 0e             	add    %al,0xe(%ecx)
 4004d5f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004d65:	42                   	inc    %edx
 4004d66:	83 03 64             	addl   $0x64,(%ebx)
 4004d69:	0a c5                	or     %ch,%al
 4004d6b:	c3                   	ret    
 4004d6c:	0c 04                	or     $0x4,%al
 4004d6e:	04 43                	add    $0x43,%al
 4004d70:	0b 4a c3             	or     -0x3d(%edx),%ecx
 4004d73:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004d76:	04 00                	add    $0x0,%al
 4004d78:	20 00                	and    %al,(%eax)
 4004d7a:	00 00                	add    %al,(%eax)
 4004d7c:	c0 02 00             	rolb   $0x0,(%edx)
 4004d7f:	00 04 bf             	add    %al,(%edi,%edi,4)
 4004d82:	ff                   	(bad)  
 4004d83:	ff 46 00             	incl   0x0(%esi)
 4004d86:	00 00                	add    %al,(%eax)
 4004d88:	00 41 0e             	add    %al,0xe(%ecx)
 4004d8b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004d91:	42                   	inc    %edx
 4004d92:	83 03 02             	addl   $0x2,(%ebx)
 4004d95:	40                   	inc    %eax
 4004d96:	c5 c3 0c             	(bad)  
 4004d99:	04 04                	add    $0x4,%al
 4004d9b:	00 28                	add    %ch,(%eax)
 4004d9d:	00 00                	add    %al,(%eax)
 4004d9f:	00 e4                	add    %ah,%ah
 4004da1:	02 00                	add    (%eax),%al
 4004da3:	00 28                	add    %ch,(%eax)
 4004da5:	bf ff ff 3f 00       	mov    $0x3fffff,%edi
 4004daa:	00 00                	add    %al,(%eax)
 4004dac:	00 41 0e             	add    %al,0xe(%ecx)
 4004daf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004db5:	42                   	inc    %edx
 4004db6:	83 03 6b             	addl   $0x6b,(%ebx)
 4004db9:	0a c5                	or     %ch,%al
 4004dbb:	c3                   	ret    
 4004dbc:	0c 04                	or     $0x4,%al
 4004dbe:	04 44                	add    $0x44,%al
 4004dc0:	0b 4a c3             	or     -0x3d(%edx),%ecx
 4004dc3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004dc6:	04 00                	add    $0x0,%al
 4004dc8:	1c 00                	sbb    $0x0,%al
 4004dca:	00 00                	add    %al,(%eax)
 4004dcc:	10 03                	adc    %al,(%ebx)
 4004dce:	00 00                	add    %al,(%eax)
 4004dd0:	3c bf                	cmp    $0xbf,%al
 4004dd2:	ff                   	(bad)  
 4004dd3:	ff 18                	lcall  *(%eax)
 4004dd5:	00 00                	add    %al,(%eax)
 4004dd7:	00 00                	add    %al,(%eax)
 4004dd9:	41                   	inc    %ecx
 4004dda:	0e                   	push   %cs
 4004ddb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004de1:	54                   	push   %esp
 4004de2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004de5:	04 00                	add    $0x0,%al
 4004de7:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4004dea:	00 00                	add    %al,(%eax)
 4004dec:	30 03                	xor    %al,(%ebx)
 4004dee:	00 00                	add    %al,(%eax)
 4004df0:	34 bf                	xor    $0xbf,%al
 4004df2:	ff                   	(bad)  
 4004df3:	ff 1b                	lcall  *(%ebx)
 4004df5:	00 00                	add    %al,(%eax)
 4004df7:	00 00                	add    %al,(%eax)
 4004df9:	41                   	inc    %ecx
 4004dfa:	0e                   	push   %cs
 4004dfb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004e01:	57                   	push   %edi
 4004e02:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004e05:	04 00                	add    $0x0,%al
 4004e07:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4004e0a:	00 00                	add    %al,(%eax)
 4004e0c:	50                   	push   %eax
 4004e0d:	03 00                	add    (%eax),%eax
 4004e0f:	00 30                	add    %dh,(%eax)
 4004e11:	bf ff ff 21 00       	mov    $0x21ffff,%edi
 4004e16:	00 00                	add    %al,(%eax)
 4004e18:	00 41 0e             	add    %al,0xe(%ecx)
 4004e1b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004e21:	5d                   	pop    %ebp
 4004e22:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004e25:	04 00                	add    $0x0,%al
 4004e27:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4004e2a:	00 00                	add    %al,(%eax)
 4004e2c:	70 03                	jo     4004e31 <_ctype_+0x5d1>
 4004e2e:	00 00                	add    %al,(%eax)
 4004e30:	34 bf                	xor    $0xbf,%al
 4004e32:	ff                   	(bad)  
 4004e33:	ff 18                	lcall  *(%eax)
 4004e35:	00 00                	add    %al,(%eax)
 4004e37:	00 00                	add    %al,(%eax)
 4004e39:	41                   	inc    %ecx
 4004e3a:	0e                   	push   %cs
 4004e3b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004e41:	54                   	push   %esp
 4004e42:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004e45:	04 00                	add    $0x0,%al
 4004e47:	00 28                	add    %ch,(%eax)
 4004e49:	00 00                	add    %al,(%eax)
 4004e4b:	00 90 03 00 00 2c    	add    %dl,0x2c000003(%eax)
 4004e51:	bf ff ff 52 00       	mov    $0x52ffff,%edi
 4004e56:	00 00                	add    %al,(%eax)
 4004e58:	00 41 0e             	add    %al,0xe(%ecx)
 4004e5b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004e61:	46                   	inc    %esi
 4004e62:	87 03                	xchg   %eax,(%ebx)
 4004e64:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4004e67:	05 02 45 c3 41       	add    $0x41c34502,%eax
 4004e6c:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004e70:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004e73:	04 1c                	add    $0x1c,%al
 4004e75:	00 00                	add    %al,(%eax)
 4004e77:	00 bc 03 00 00 54 bf 	add    %bh,-0x40ac0000(%ebx,%eax,1)
 4004e7e:	ff                   	(bad)  
 4004e7f:	ff 1b                	lcall  *(%ebx)
 4004e81:	00 00                	add    %al,(%eax)
 4004e83:	00 00                	add    %al,(%eax)
 4004e85:	41                   	inc    %ecx
 4004e86:	0e                   	push   %cs
 4004e87:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004e8d:	57                   	push   %edi
 4004e8e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004e91:	04 00                	add    $0x0,%al
 4004e93:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4004e96:	00 00                	add    %al,(%eax)
 4004e98:	dc 03                	faddl  (%ebx)
 4004e9a:	00 00                	add    %al,(%eax)
 4004e9c:	50                   	push   %eax
 4004e9d:	bf ff ff aa 01       	mov    $0x1aaffff,%edi
 4004ea2:	00 00                	add    %al,(%eax)
 4004ea4:	00 41 0e             	add    %al,0xe(%ecx)
 4004ea7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004ead:	03 a6 01 c5 0c 04    	add    0x40cc501(%esi),%esp
 4004eb3:	04 28                	add    $0x28,%al
 4004eb5:	00 00                	add    %al,(%eax)
 4004eb7:	00 fc                	add    %bh,%ah
 4004eb9:	03 00                	add    (%eax),%eax
 4004ebb:	00 dc                	add    %bl,%ah
 4004ebd:	c0 ff ff             	sar    $0xff,%bh
 4004ec0:	ca 00 00             	lret   $0x0
 4004ec3:	00 00                	add    %al,(%eax)
 4004ec5:	41                   	inc    %ecx
 4004ec6:	0e                   	push   %cs
 4004ec7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004ecd:	42                   	inc    %edx
 4004ece:	86 03                	xchg   %al,(%ebx)
 4004ed0:	83 04 02 87          	addl   $0xffffff87,(%edx,%eax,1)
 4004ed4:	0a c3                	or     %bl,%al
 4004ed6:	41                   	inc    %ecx
 4004ed7:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 4004edb:	04 04                	add    $0x4,%al
 4004edd:	42                   	inc    %edx
 4004ede:	0b 00                	or     (%eax),%eax
 4004ee0:	48                   	dec    %eax
 4004ee1:	00 00                	add    %al,(%eax)
 4004ee3:	00 28                	add    %ch,(%eax)
 4004ee5:	04 00                	add    $0x0,%al
 4004ee7:	00 7c c1 ff          	add    %bh,-0x1(%ecx,%eax,8)
 4004eeb:	ff b2 00 00 00 00    	pushl  0x0(%edx)
 4004ef1:	41                   	inc    %ecx
 4004ef2:	0e                   	push   %cs
 4004ef3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004ef9:	44                   	inc    %esp
 4004efa:	87 03                	xchg   %eax,(%ebx)
 4004efc:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4004eff:	05 02 59 0a c3       	add    $0xc30a5902,%eax
 4004f04:	41                   	inc    %ecx
 4004f05:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004f09:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004f0c:	04 41                	add    $0x41,%al
 4004f0e:	0b 45 0a             	or     0xa(%ebp),%eax
 4004f11:	c3                   	ret    
 4004f12:	41                   	inc    %ecx
 4004f13:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004f17:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004f1a:	04 41                	add    $0x41,%al
 4004f1c:	0b 44 0a c3          	or     -0x3d(%edx,%ecx,1),%eax
 4004f20:	41                   	inc    %ecx
 4004f21:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004f25:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004f28:	04 41                	add    $0x41,%al
 4004f2a:	0b 00                	or     (%eax),%eax
 4004f2c:	2c 00                	sub    $0x0,%al
 4004f2e:	00 00                	add    %al,(%eax)
 4004f30:	74 04                	je     4004f36 <_ctype_+0x6d6>
 4004f32:	00 00                	add    %al,(%eax)
 4004f34:	e4 c1                	in     $0xc1,%al
 4004f36:	ff                   	(bad)  
 4004f37:	ff 85 0c 00 00 00    	incl   0xc(%ebp)
 4004f3d:	41                   	inc    %ecx
 4004f3e:	0e                   	push   %cs
 4004f3f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004f45:	49                   	dec    %ecx
 4004f46:	87 03                	xchg   %eax,(%ebx)
 4004f48:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4004f4b:	05 02 ab 0a c3       	add    $0xc30aab02,%eax
 4004f50:	41                   	inc    %ecx
 4004f51:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004f55:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004f58:	04 42                	add    $0x42,%al
 4004f5a:	0b 00                	or     (%eax),%eax
 4004f5c:	1c 00                	sbb    $0x0,%al
 4004f5e:	00 00                	add    %al,(%eax)
 4004f60:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 4004f61:	04 00                	add    $0x0,%al
 4004f63:	00 3c ce             	add    %bh,(%esi,%ecx,8)
 4004f66:	ff                   	(bad)  
 4004f67:	ff 17                	call   *(%edi)
 4004f69:	00 00                	add    %al,(%eax)
 4004f6b:	00 00                	add    %al,(%eax)
 4004f6d:	41                   	inc    %ecx
 4004f6e:	0e                   	push   %cs
 4004f6f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004f75:	53                   	push   %ebx
 4004f76:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004f79:	04 00                	add    $0x0,%al
 4004f7b:	00 3c 00             	add    %bh,(%eax,%eax,1)
 4004f7e:	00 00                	add    %al,(%eax)
 4004f80:	c4 04 00             	les    (%eax,%eax,1),%eax
 4004f83:	00 34 ce             	add    %dh,(%esi,%ecx,8)
 4004f86:	ff                   	(bad)  
 4004f87:	ff                   	(bad)  
 4004f88:	bf 01 00 00 00       	mov    $0x1,%edi
 4004f8d:	41                   	inc    %ecx
 4004f8e:	0e                   	push   %cs
 4004f8f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004f95:	46                   	inc    %esi
 4004f96:	87 03                	xchg   %eax,(%ebx)
 4004f98:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4004f9b:	05 02 6a 0a c3       	add    $0xc30a6a02,%eax
 4004fa0:	41                   	inc    %ecx
 4004fa1:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004fa5:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004fa8:	04 42                	add    $0x42,%al
 4004faa:	0b 02                	or     (%edx),%eax
 4004fac:	fe 0a                	decb   (%edx)
 4004fae:	c3                   	ret    
 4004faf:	41                   	inc    %ecx
 4004fb0:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004fb4:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004fb7:	04 41                	add    $0x41,%al
 4004fb9:	0b 00                	or     (%eax),%eax
 4004fbb:	00 2c 00             	add    %ch,(%eax,%eax,1)
 4004fbe:	00 00                	add    %al,(%eax)
 4004fc0:	04 05                	add    $0x5,%al
 4004fc2:	00 00                	add    %al,(%eax)
 4004fc4:	b4 cf                	mov    $0xcf,%ah
 4004fc6:	ff                   	(bad)  
 4004fc7:	ff                   	(bad)  
 4004fc8:	7d 07                	jge    4004fd1 <_ctype_+0x771>
 4004fca:	00 00                	add    %al,(%eax)
 4004fcc:	00 41 0e             	add    %al,0xe(%ecx)
 4004fcf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4004fd5:	49                   	dec    %ecx
 4004fd6:	87 03                	xchg   %eax,(%ebx)
 4004fd8:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4004fdb:	05 02 85 0a c3       	add    $0xc30a8502,%eax
 4004fe0:	41                   	inc    %ecx
 4004fe1:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4004fe5:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4004fe8:	04 44                	add    $0x44,%al
 4004fea:	0b 00                	or     (%eax),%eax
 4004fec:	1c 00                	sbb    $0x0,%al
 4004fee:	00 00                	add    %al,(%eax)
 4004ff0:	34 05                	xor    $0x5,%al
 4004ff2:	00 00                	add    %al,(%eax)
 4004ff4:	04 d7                	add    $0xd7,%al
 4004ff6:	ff                   	(bad)  
 4004ff7:	ff 1a                	lcall  *(%edx)
 4004ff9:	00 00                	add    %al,(%eax)
 4004ffb:	00 00                	add    %al,(%eax)
 4004ffd:	41                   	inc    %ecx
 4004ffe:	0e                   	push   %cs
 4004fff:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005005:	56                   	push   %esi
 4005006:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005009:	04 00                	add    $0x0,%al
 400500b:	00 2c 00             	add    %ch,(%eax,%eax,1)
 400500e:	00 00                	add    %al,(%eax)
 4005010:	54                   	push   %esp
 4005011:	05 00 00 00 d7       	add    $0xd7000000,%eax
 4005016:	ff                   	(bad)  
 4005017:	ff a3 00 00 00 00    	jmp    *0x0(%ebx)
 400501d:	41                   	inc    %ecx
 400501e:	0e                   	push   %cs
 400501f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005025:	42                   	inc    %edx
 4005026:	83 03 7c             	addl   $0x7c,(%ebx)
 4005029:	0a c5                	or     %ch,%al
 400502b:	c3                   	ret    
 400502c:	0c 04                	or     $0x4,%al
 400502e:	04 43                	add    $0x43,%al
 4005030:	0b 51 0a             	or     0xa(%ecx),%edx
 4005033:	c3                   	ret    
 4005034:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005037:	04 43                	add    $0x43,%al
 4005039:	0b 00                	or     (%eax),%eax
 400503b:	00 1c 00             	add    %bl,(%eax,%eax,1)
 400503e:	00 00                	add    %al,(%eax)
 4005040:	84 05 00 00 74 d7    	test   %al,0xd7740000
 4005046:	ff                   	(bad)  
 4005047:	ff 07                	incl   (%edi)
 4005049:	00 00                	add    %al,(%eax)
 400504b:	00 00                	add    %al,(%eax)
 400504d:	41                   	inc    %ecx
 400504e:	0e                   	push   %cs
 400504f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005055:	43                   	inc    %ebx
 4005056:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005059:	04 00                	add    $0x0,%al
 400505b:	00 18                	add    %bl,(%eax)
 400505d:	00 00                	add    %al,(%eax)
 400505f:	00 a4 05 00 00 9c af 	add    %ah,-0x50640000(%ebp,%eax,1)
 4005066:	ff                   	(bad)  
 4005067:	ff 1c 00             	lcall  *(%eax,%eax,1)
 400506a:	00 00                	add    %al,(%eax)
 400506c:	00 41 0e             	add    %al,0xe(%ecx)
 400506f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005075:	00 00                	add    %al,(%eax)
 4005077:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
 400507b:	00 c0                	add    %al,%al
 400507d:	05 00 00 40 d7       	add    $0xd7400000,%eax
 4005082:	ff                   	(bad)  
 4005083:	ff 6a 02             	ljmp   *0x2(%edx)
 4005086:	00 00                	add    %al,(%eax)
 4005088:	00 41 0e             	add    %al,0xe(%ecx)
 400508b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005091:	46                   	inc    %esi
 4005092:	87 03                	xchg   %eax,(%ebx)
 4005094:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4005097:	05 03 1d 01 0a       	add    $0xa011d03,%eax
 400509c:	c3                   	ret    
 400509d:	41                   	inc    %ecx
 400509e:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40050a2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40050a5:	04 43                	add    $0x43,%al
 40050a7:	0b 02                	or     (%edx),%eax
 40050a9:	61                   	popa   
 40050aa:	0a c3                	or     %bl,%al
 40050ac:	41                   	inc    %ecx
 40050ad:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40050b1:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40050b4:	04 41                	add    $0x41,%al
 40050b6:	0b 7f 0a             	or     0xa(%edi),%edi
 40050b9:	c3                   	ret    
 40050ba:	41                   	inc    %ecx
 40050bb:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40050bf:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40050c2:	04 41                	add    $0x41,%al
 40050c4:	0b 00                	or     (%eax),%eax
 40050c6:	00 00                	add    %al,(%eax)
 40050c8:	1c 00                	sbb    $0x0,%al
 40050ca:	00 00                	add    %al,(%eax)
 40050cc:	10 06                	adc    %al,(%esi)
 40050ce:	00 00                	add    %al,(%eax)
 40050d0:	5c                   	pop    %esp
 40050d1:	d9 ff                	fcos   
 40050d3:	ff 19                	lcall  *(%ecx)
 40050d5:	00 00                	add    %al,(%eax)
 40050d7:	00 00                	add    %al,(%eax)
 40050d9:	41                   	inc    %ecx
 40050da:	0e                   	push   %cs
 40050db:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40050e1:	55                   	push   %ebp
 40050e2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40050e5:	04 00                	add    $0x0,%al
 40050e7:	00 58 00             	add    %bl,0x0(%eax)
 40050ea:	00 00                	add    %al,(%eax)
 40050ec:	30 06                	xor    %al,(%esi)
 40050ee:	00 00                	add    %al,(%eax)
 40050f0:	58                   	pop    %eax
 40050f1:	d9 ff                	fcos   
 40050f3:	ff f6                	push   %esi
 40050f5:	00 00                	add    %al,(%eax)
 40050f7:	00 00                	add    %al,(%eax)
 40050f9:	41                   	inc    %ecx
 40050fa:	0e                   	push   %cs
 40050fb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005101:	46                   	inc    %esi
 4005102:	87 03                	xchg   %eax,(%ebx)
 4005104:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4005107:	05 02 62 0a c3       	add    $0xc30a6202,%eax
 400510c:	41                   	inc    %ecx
 400510d:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005111:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005114:	04 42                	add    $0x42,%al
 4005116:	0b 6e 0a             	or     0xa(%esi),%ebp
 4005119:	c3                   	ret    
 400511a:	41                   	inc    %ecx
 400511b:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 400511f:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005122:	04 41                	add    $0x41,%al
 4005124:	0b 65 0a             	or     0xa(%ebp),%esp
 4005127:	c3                   	ret    
 4005128:	41                   	inc    %ecx
 4005129:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 400512d:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005130:	04 41                	add    $0x41,%al
 4005132:	0b 57 0a             	or     0xa(%edi),%edx
 4005135:	c3                   	ret    
 4005136:	41                   	inc    %ecx
 4005137:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 400513b:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 400513e:	04 41                	add    $0x41,%al
 4005140:	0b 00                	or     (%eax),%eax
 4005142:	00 00                	add    %al,(%eax)
 4005144:	1c 00                	sbb    $0x0,%al
 4005146:	00 00                	add    %al,(%eax)
 4005148:	8c 06                	mov    %es,(%esi)
 400514a:	00 00                	add    %al,(%eax)
 400514c:	f4                   	hlt    
 400514d:	d9 ff                	fcos   
 400514f:	ff 1c 00             	lcall  *(%eax,%eax,1)
 4005152:	00 00                	add    %al,(%eax)
 4005154:	00 41 0e             	add    %al,0xe(%ecx)
 4005157:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 400515d:	58                   	pop    %eax
 400515e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005161:	04 00                	add    $0x0,%al
 4005163:	00 2c 00             	add    %ch,(%eax,%eax,1)
 4005166:	00 00                	add    %al,(%eax)
 4005168:	ac                   	lods   %ds:(%esi),%al
 4005169:	06                   	push   %es
 400516a:	00 00                	add    %al,(%eax)
 400516c:	f0 d9 ff             	lock fcos 
 400516f:	ff 27                	jmp    *(%edi)
 4005171:	01 00                	add    %eax,(%eax)
 4005173:	00 00                	add    %al,(%eax)
 4005175:	41                   	inc    %ecx
 4005176:	0e                   	push   %cs
 4005177:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 400517d:	46                   	inc    %esi
 400517e:	87 03                	xchg   %eax,(%ebx)
 4005180:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4005183:	05 02 44 0a c3       	add    $0xc30a4402,%eax
 4005188:	41                   	inc    %ecx
 4005189:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 400518d:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005190:	04 41                	add    $0x41,%al
 4005192:	0b 00                	or     (%eax),%eax
 4005194:	24 00                	and    $0x0,%al
 4005196:	00 00                	add    %al,(%eax)
 4005198:	dc 06                	faddl  (%esi)
 400519a:	00 00                	add    %al,(%eax)
 400519c:	e8 da ff ff 38       	call   3d00517b <_end+0x38ffe23b>
 40051a1:	00 00                	add    %al,(%eax)
 40051a3:	00 00                	add    %al,(%eax)
 40051a5:	41                   	inc    %ecx
 40051a6:	0e                   	push   %cs
 40051a7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40051ad:	4e                   	dec    %esi
 40051ae:	0a c5                	or     %ch,%al
 40051b0:	0c 04                	or     $0x4,%al
 40051b2:	04 43                	add    $0x43,%al
 40051b4:	0b 63 c5             	or     -0x3b(%ebx),%esp
 40051b7:	0c 04                	or     $0x4,%al
 40051b9:	04 00                	add    $0x0,%al
 40051bb:	00 48 00             	add    %cl,0x0(%eax)
 40051be:	00 00                	add    %al,(%eax)
 40051c0:	04 07                	add    $0x7,%al
 40051c2:	00 00                	add    %al,(%eax)
 40051c4:	f8                   	clc    
 40051c5:	da ff                	(bad)  
 40051c7:	ff b0 00 00 00 00    	pushl  0x0(%eax)
 40051cd:	41                   	inc    %ecx
 40051ce:	0e                   	push   %cs
 40051cf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40051d5:	46                   	inc    %esi
 40051d6:	87 03                	xchg   %eax,(%ebx)
 40051d8:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 40051db:	05 02 5d 0a c3       	add    $0xc30a5d02,%eax
 40051e0:	41                   	inc    %ecx
 40051e1:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40051e5:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40051e8:	04 43                	add    $0x43,%al
 40051ea:	0b 69 0a             	or     0xa(%ecx),%ebp
 40051ed:	c3                   	ret    
 40051ee:	41                   	inc    %ecx
 40051ef:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40051f3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40051f6:	04 44                	add    $0x44,%al
 40051f8:	0b 47 0a             	or     0xa(%edi),%eax
 40051fb:	c3                   	ret    
 40051fc:	41                   	inc    %ecx
 40051fd:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005201:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005204:	04 46                	add    $0x46,%al
 4005206:	0b 00                	or     (%eax),%eax
 4005208:	28 00                	sub    %al,(%eax)
 400520a:	00 00                	add    %al,(%eax)
 400520c:	50                   	push   %eax
 400520d:	07                   	pop    %es
 400520e:	00 00                	add    %al,(%eax)
 4005210:	5c                   	pop    %esp
 4005211:	db ff                	(bad)  
 4005213:	ff a3 00 00 00 00    	jmp    *0x0(%ebx)
 4005219:	41                   	inc    %ecx
 400521a:	0e                   	push   %cs
 400521b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005221:	46                   	inc    %esi
 4005222:	87 03                	xchg   %eax,(%ebx)
 4005224:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4005227:	05 02 92 c3 41       	add    $0x41c39202,%eax
 400522c:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005230:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005233:	04 18                	add    $0x18,%al
 4005235:	00 00                	add    %al,(%eax)
 4005237:	00 7c 07 00          	add    %bh,0x0(%edi,%eax,1)
 400523b:	00 d4                	add    %dl,%ah
 400523d:	db ff                	(bad)  
 400523f:	ff 27                	jmp    *(%edi)
 4005241:	00 00                	add    %al,(%eax)
 4005243:	00 00                	add    %al,(%eax)
 4005245:	41                   	inc    %ecx
 4005246:	0e                   	push   %cs
 4005247:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 400524d:	00 00                	add    %al,(%eax)
 400524f:	00 18                	add    %bl,(%eax)
 4005251:	00 00                	add    %al,(%eax)
 4005253:	00 98 07 00 00 e0    	add    %bl,-0x1ffffff9(%eax)
 4005259:	db ff                	(bad)  
 400525b:	ff 23                	jmp    *(%ebx)
 400525d:	00 00                	add    %al,(%eax)
 400525f:	00 00                	add    %al,(%eax)
 4005261:	41                   	inc    %ecx
 4005262:	0e                   	push   %cs
 4005263:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005269:	00 00                	add    %al,(%eax)
 400526b:	00 28                	add    %ch,(%eax)
 400526d:	00 00                	add    %al,(%eax)
 400526f:	00 b4 07 00 00 a8 ad 	add    %dh,-0x52580000(%edi,%eax,1)
 4005276:	ff                   	(bad)  
 4005277:	ff 58 00             	lcall  *0x0(%eax)
 400527a:	00 00                	add    %al,(%eax)
 400527c:	00 41 0e             	add    %al,0xe(%ecx)
 400527f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005285:	46                   	inc    %esi
 4005286:	87 03                	xchg   %eax,(%ebx)
 4005288:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 400528b:	05 02 47 c3 41       	add    $0x41c34702,%eax
 4005290:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005294:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005297:	04 1c                	add    $0x1c,%al
 4005299:	00 00                	add    %al,(%eax)
 400529b:	00 e0                	add    %ah,%al
 400529d:	07                   	pop    %es
 400529e:	00 00                	add    %al,(%eax)
 40052a0:	bc db ff ff 12       	mov    $0x12ffffdb,%esp
 40052a5:	00 00                	add    %al,(%eax)
 40052a7:	00 00                	add    %al,(%eax)
 40052a9:	41                   	inc    %ecx
 40052aa:	0e                   	push   %cs
 40052ab:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40052b1:	4e                   	dec    %esi
 40052b2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40052b5:	04 00                	add    $0x0,%al
 40052b7:	00 1c 00             	add    %bl,(%eax,%eax,1)
 40052ba:	00 00                	add    %al,(%eax)
 40052bc:	00 08                	add    %cl,(%eax)
 40052be:	00 00                	add    %al,(%eax)
 40052c0:	b0 db                	mov    $0xdb,%al
 40052c2:	ff                   	(bad)  
 40052c3:	ff 18                	lcall  *(%eax)
 40052c5:	00 00                	add    %al,(%eax)
 40052c7:	00 00                	add    %al,(%eax)
 40052c9:	41                   	inc    %ecx
 40052ca:	0e                   	push   %cs
 40052cb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40052d1:	54                   	push   %esp
 40052d2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40052d5:	04 00                	add    $0x0,%al
 40052d7:	00 2c 00             	add    %ch,(%eax,%eax,1)
 40052da:	00 00                	add    %al,(%eax)
 40052dc:	20 08                	and    %cl,(%eax)
 40052de:	00 00                	add    %al,(%eax)
 40052e0:	a8 db                	test   $0xdb,%al
 40052e2:	ff                   	(bad)  
 40052e3:	ff 92 00 00 00 00    	call   *0x0(%edx)
 40052e9:	41                   	inc    %ecx
 40052ea:	0e                   	push   %cs
 40052eb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40052f1:	43                   	inc    %ebx
 40052f2:	87 03                	xchg   %eax,(%ebx)
 40052f4:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 40052f7:	05 67 0a c3 41       	add    $0x41c30a67,%eax
 40052fc:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005300:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005303:	04 44                	add    $0x44,%al
 4005305:	0b 00                	or     (%eax),%eax
 4005307:	00 24 00             	add    %ah,(%eax,%eax,1)
 400530a:	00 00                	add    %al,(%eax)
 400530c:	50                   	push   %eax
 400530d:	08 00                	or     %al,(%eax)
 400530f:	00 0c dc             	add    %cl,(%esp,%ebx,8)
 4005312:	ff                   	(bad)  
 4005313:	ff 23                	jmp    *(%ebx)
 4005315:	00 00                	add    %al,(%eax)
 4005317:	00 00                	add    %al,(%eax)
 4005319:	41                   	inc    %ecx
 400531a:	0e                   	push   %cs
 400531b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005321:	42                   	inc    %edx
 4005322:	86 03                	xchg   %al,(%ebx)
 4005324:	83 04 5b c3          	addl   $0xffffffc3,(%ebx,%ebx,2)
 4005328:	41                   	inc    %ecx
 4005329:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 400532d:	04 04                	add    $0x4,%al
 400532f:	00 24 00             	add    %ah,(%eax,%eax,1)
 4005332:	00 00                	add    %al,(%eax)
 4005334:	78 08                	js     400533e <_ctype_+0xade>
 4005336:	00 00                	add    %al,(%eax)
 4005338:	08 dc                	or     %bl,%ah
 400533a:	ff                   	(bad)  
 400533b:	ff 1e                	lcall  *(%esi)
 400533d:	00 00                	add    %al,(%eax)
 400533f:	00 00                	add    %al,(%eax)
 4005341:	41                   	inc    %ecx
 4005342:	0e                   	push   %cs
 4005343:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005349:	56                   	push   %esi
 400534a:	0a c5                	or     %ch,%al
 400534c:	0c 04                	or     $0x4,%al
 400534e:	04 41                	add    $0x41,%al
 4005350:	0b 43 c5             	or     -0x3b(%ebx),%eax
 4005353:	0c 04                	or     $0x4,%al
 4005355:	04 00                	add    $0x0,%al
 4005357:	00 24 00             	add    %ah,(%eax,%eax,1)
 400535a:	00 00                	add    %al,(%eax)
 400535c:	a0 08 00 00 00       	mov    0x8,%al
 4005361:	dc ff                	fdivr  %st,%st(7)
 4005363:	ff 2f                	ljmp   *(%edi)
 4005365:	00 00                	add    %al,(%eax)
 4005367:	00 00                	add    %al,(%eax)
 4005369:	41                   	inc    %ecx
 400536a:	0e                   	push   %cs
 400536b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005371:	42                   	inc    %edx
 4005372:	86 03                	xchg   %al,(%ebx)
 4005374:	83 04 63 c3          	addl   $0xffffffc3,(%ebx,%eiz,2)
 4005378:	41                   	inc    %ecx
 4005379:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 400537d:	04 04                	add    $0x4,%al
 400537f:	00 38                	add    %bh,(%eax)
 4005381:	00 00                	add    %al,(%eax)
 4005383:	00 c8                	add    %cl,%al
 4005385:	08 00                	or     %al,(%eax)
 4005387:	00 08                	add    %cl,(%eax)
 4005389:	dc ff                	fdivr  %st,%st(7)
 400538b:	ff c3                	inc    %ebx
 400538d:	00 00                	add    %al,(%eax)
 400538f:	00 00                	add    %al,(%eax)
 4005391:	41                   	inc    %ecx
 4005392:	0e                   	push   %cs
 4005393:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005399:	46                   	inc    %esi
 400539a:	87 03                	xchg   %eax,(%ebx)
 400539c:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 400539f:	05 02 8b 0a c3       	add    $0xc30a8b02,%eax
 40053a4:	41                   	inc    %ecx
 40053a5:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40053a9:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40053ac:	04 41                	add    $0x41,%al
 40053ae:	0b 67 c3             	or     -0x3d(%edi),%esp
 40053b1:	41                   	inc    %ecx
 40053b2:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40053b6:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40053b9:	04 00                	add    $0x0,%al
 40053bb:	00 1c 00             	add    %bl,(%eax,%eax,1)
 40053be:	00 00                	add    %al,(%eax)
 40053c0:	04 09                	add    $0x9,%al
 40053c2:	00 00                	add    %al,(%eax)
 40053c4:	90                   	nop
 40053c5:	dc ff                	fdivr  %st,%st(7)
 40053c7:	ff 2f                	ljmp   *(%edi)
 40053c9:	00 00                	add    %al,(%eax)
 40053cb:	00 00                	add    %al,(%eax)
 40053cd:	41                   	inc    %ecx
 40053ce:	0e                   	push   %cs
 40053cf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40053d5:	6b c5 0c             	imul   $0xc,%ebp,%eax
 40053d8:	04 04                	add    $0x4,%al
 40053da:	00 00                	add    %al,(%eax)
 40053dc:	1c 00                	sbb    $0x0,%al
 40053de:	00 00                	add    %al,(%eax)
 40053e0:	24 09                	and    $0x9,%al
 40053e2:	00 00                	add    %al,(%eax)
 40053e4:	a0 dc ff ff 2c       	mov    0x2cffffdc,%al
 40053e9:	00 00                	add    %al,(%eax)
 40053eb:	00 00                	add    %al,(%eax)
 40053ed:	41                   	inc    %ecx
 40053ee:	0e                   	push   %cs
 40053ef:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40053f5:	68 c5 0c 04 04       	push   $0x4040cc5
 40053fa:	00 00                	add    %al,(%eax)
 40053fc:	1c 00                	sbb    $0x0,%al
 40053fe:	00 00                	add    %al,(%eax)
 4005400:	44                   	inc    %esp
 4005401:	09 00                	or     %eax,(%eax)
 4005403:	00 ac dc ff ff 32 00 	add    %ch,0x32ffff(%esp,%ebx,8)
 400540a:	00 00                	add    %al,(%eax)
 400540c:	00 41 0e             	add    %al,0xe(%ecx)
 400540f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005415:	6e                   	outsb  %ds:(%esi),(%dx)
 4005416:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005419:	04 00                	add    $0x0,%al
 400541b:	00 1c 00             	add    %bl,(%eax,%eax,1)
 400541e:	00 00                	add    %al,(%eax)
 4005420:	64 09 00             	or     %eax,%fs:(%eax)
 4005423:	00 c0                	add    %al,%al
 4005425:	dc ff                	fdivr  %st,%st(7)
 4005427:	ff 2c 00             	ljmp   *(%eax,%eax,1)
 400542a:	00 00                	add    %al,(%eax)
 400542c:	00 41 0e             	add    %al,0xe(%ecx)
 400542f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005435:	68 c5 0c 04 04       	push   $0x4040cc5
 400543a:	00 00                	add    %al,(%eax)
 400543c:	1c 00                	sbb    $0x0,%al
 400543e:	00 00                	add    %al,(%eax)
 4005440:	84 09                	test   %cl,(%ecx)
 4005442:	00 00                	add    %al,(%eax)
 4005444:	cc                   	int3   
 4005445:	dc ff                	fdivr  %st,%st(7)
 4005447:	ff 32                	pushl  (%edx)
 4005449:	00 00                	add    %al,(%eax)
 400544b:	00 00                	add    %al,(%eax)
 400544d:	41                   	inc    %ecx
 400544e:	0e                   	push   %cs
 400544f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005455:	6e                   	outsb  %ds:(%esi),(%dx)
 4005456:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005459:	04 00                	add    $0x0,%al
 400545b:	00 1c 00             	add    %bl,(%eax,%eax,1)
 400545e:	00 00                	add    %al,(%eax)
 4005460:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 4005461:	09 00                	or     %eax,(%eax)
 4005463:	00 e0                	add    %ah,%al
 4005465:	dc ff                	fdivr  %st,%st(7)
 4005467:	ff 32                	pushl  (%edx)
 4005469:	00 00                	add    %al,(%eax)
 400546b:	00 00                	add    %al,(%eax)
 400546d:	41                   	inc    %ecx
 400546e:	0e                   	push   %cs
 400546f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005475:	6e                   	outsb  %ds:(%esi),(%dx)
 4005476:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005479:	04 00                	add    $0x0,%al
 400547b:	00 1c 00             	add    %bl,(%eax,%eax,1)
 400547e:	00 00                	add    %al,(%eax)
 4005480:	c4 09                	les    (%ecx),%ecx
 4005482:	00 00                	add    %al,(%eax)
 4005484:	f4                   	hlt    
 4005485:	dc ff                	fdivr  %st,%st(7)
 4005487:	ff 32                	pushl  (%edx)
 4005489:	00 00                	add    %al,(%eax)
 400548b:	00 00                	add    %al,(%eax)
 400548d:	41                   	inc    %ecx
 400548e:	0e                   	push   %cs
 400548f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005495:	6e                   	outsb  %ds:(%esi),(%dx)
 4005496:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005499:	04 00                	add    $0x0,%al
 400549b:	00 1c 00             	add    %bl,(%eax,%eax,1)
 400549e:	00 00                	add    %al,(%eax)
 40054a0:	e4 09                	in     $0x9,%al
 40054a2:	00 00                	add    %al,(%eax)
 40054a4:	08 dd                	or     %bl,%ch
 40054a6:	ff                   	(bad)  
 40054a7:	ff 21                	jmp    *(%ecx)
 40054a9:	00 00                	add    %al,(%eax)
 40054ab:	00 00                	add    %al,(%eax)
 40054ad:	41                   	inc    %ecx
 40054ae:	0e                   	push   %cs
 40054af:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40054b5:	5d                   	pop    %ebp
 40054b6:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40054b9:	04 00                	add    $0x0,%al
 40054bb:	00 48 00             	add    %cl,0x0(%eax)
 40054be:	00 00                	add    %al,(%eax)
 40054c0:	04 0a                	add    $0xa,%al
 40054c2:	00 00                	add    %al,(%eax)
 40054c4:	0c dd                	or     $0xdd,%al
 40054c6:	ff                   	(bad)  
 40054c7:	ff 36                	pushl  (%esi)
 40054c9:	01 00                	add    %eax,(%eax)
 40054cb:	00 00                	add    %al,(%eax)
 40054cd:	41                   	inc    %ecx
 40054ce:	0e                   	push   %cs
 40054cf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40054d5:	44                   	inc    %esp
 40054d6:	87 03                	xchg   %eax,(%ebx)
 40054d8:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 40054db:	05 02 75 0a c3       	add    $0xc30a7502,%eax
 40054e0:	41                   	inc    %ecx
 40054e1:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40054e5:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40054e8:	04 41                	add    $0x41,%al
 40054ea:	0b 02                	or     (%edx),%eax
 40054ec:	6e                   	outsb  %ds:(%esi),(%dx)
 40054ed:	0a c3                	or     %bl,%al
 40054ef:	41                   	inc    %ecx
 40054f0:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40054f4:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40054f7:	04 43                	add    $0x43,%al
 40054f9:	0b 4c 0a c3          	or     -0x3d(%edx,%ecx,1),%ecx
 40054fd:	41                   	inc    %ecx
 40054fe:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005502:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005505:	04 41                	add    $0x41,%al
 4005507:	0b 58 00             	or     0x0(%eax),%ebx
 400550a:	00 00                	add    %al,(%eax)
 400550c:	50                   	push   %eax
 400550d:	0a 00                	or     (%eax),%al
 400550f:	00 f8                	add    %bh,%al
 4005511:	dd ff                	(bad)  
 4005513:	ff                   	(bad)  
 4005514:	39 01                	cmp    %eax,(%ecx)
 4005516:	00 00                	add    %al,(%eax)
 4005518:	00 41 0e             	add    %al,0xe(%ecx)
 400551b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005521:	44                   	inc    %esp
 4005522:	87 03                	xchg   %eax,(%ebx)
 4005524:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4005527:	05 02 81 0a c3       	add    $0xc30a8102,%eax
 400552c:	41                   	inc    %ecx
 400552d:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005531:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005534:	04 41                	add    $0x41,%al
 4005536:	0b 02                	or     (%edx),%eax
 4005538:	73 0a                	jae    4005544 <_ctype_+0xce4>
 400553a:	c3                   	ret    
 400553b:	41                   	inc    %ecx
 400553c:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005540:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005543:	04 42                	add    $0x42,%al
 4005545:	0b 4c 0a c3          	or     -0x3d(%edx,%ecx,1),%ecx
 4005549:	41                   	inc    %ecx
 400554a:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 400554e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005551:	04 41                	add    $0x41,%al
 4005553:	0b 49 0a             	or     0xa(%ecx),%ecx
 4005556:	c3                   	ret    
 4005557:	41                   	inc    %ecx
 4005558:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 400555c:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 400555f:	04 44                	add    $0x44,%al
 4005561:	0b 00                	or     (%eax),%eax
 4005563:	00 3c 00             	add    %bh,(%eax,%eax,1)
 4005566:	00 00                	add    %al,(%eax)
 4005568:	ac                   	lods   %ds:(%esi),%al
 4005569:	0a 00                	or     (%eax),%al
 400556b:	00 d8                	add    %bl,%al
 400556d:	de ff                	fdivrp %st,%st(7)
 400556f:	ff                   	(bad)  
 4005570:	bb 00 00 00 00       	mov    $0x0,%ebx
 4005575:	41                   	inc    %ecx
 4005576:	0e                   	push   %cs
 4005577:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 400557d:	46                   	inc    %esi
 400557e:	87 03                	xchg   %eax,(%ebx)
 4005580:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4005583:	05 02 54 0a c3       	add    $0xc30a5402,%eax
 4005588:	41                   	inc    %ecx
 4005589:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 400558d:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005590:	04 44                	add    $0x44,%al
 4005592:	0b 02                	or     (%edx),%eax
 4005594:	49                   	dec    %ecx
 4005595:	0a c3                	or     %bl,%al
 4005597:	41                   	inc    %ecx
 4005598:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 400559c:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 400559f:	04 44                	add    $0x44,%al
 40055a1:	0b 00                	or     (%eax),%eax
 40055a3:	00 3c 00             	add    %bh,(%eax,%eax,1)
 40055a6:	00 00                	add    %al,(%eax)
 40055a8:	ec                   	in     (%dx),%al
 40055a9:	0a 00                	or     (%eax),%al
 40055ab:	00 54 df ff          	add    %dl,-0x1(%edi,%ebx,8)
 40055af:	ff 25 01 00 00 00    	jmp    *0x1
 40055b5:	41                   	inc    %ecx
 40055b6:	0e                   	push   %cs
 40055b7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40055bd:	46                   	inc    %esi
 40055be:	87 03                	xchg   %eax,(%ebx)
 40055c0:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 40055c3:	05 02 61 0a c3       	add    $0xc30a6102,%eax
 40055c8:	41                   	inc    %ecx
 40055c9:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40055cd:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40055d0:	04 43                	add    $0x43,%al
 40055d2:	0b 02                	or     (%edx),%eax
 40055d4:	78 0a                	js     40055e0 <_ctype_+0xd80>
 40055d6:	c3                   	ret    
 40055d7:	41                   	inc    %ecx
 40055d8:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40055dc:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40055df:	04 41                	add    $0x41,%al
 40055e1:	0b 00                	or     (%eax),%eax
 40055e3:	00 1c 00             	add    %bl,(%eax,%eax,1)
 40055e6:	00 00                	add    %al,(%eax)
 40055e8:	2c 0b                	sub    $0xb,%al
 40055ea:	00 00                	add    %al,(%eax)
 40055ec:	3c e0                	cmp    $0xe0,%al
 40055ee:	ff                   	(bad)  
 40055ef:	ff 35 00 00 00 00    	pushl  0x0
 40055f5:	41                   	inc    %ecx
 40055f6:	0e                   	push   %cs
 40055f7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40055fd:	71 c5                	jno    40055c4 <_ctype_+0xd64>
 40055ff:	0c 04                	or     $0x4,%al
 4005601:	04 00                	add    $0x0,%al
 4005603:	00 3c 00             	add    %bh,(%eax,%eax,1)
 4005606:	00 00                	add    %al,(%eax)
 4005608:	4c                   	dec    %esp
 4005609:	0b 00                	or     (%eax),%eax
 400560b:	00 54 e0 ff          	add    %dl,-0x1(%eax,%eiz,8)
 400560f:	ff 4c 03 00          	decl   0x0(%ebx,%eax,1)
 4005613:	00 00                	add    %al,(%eax)
 4005615:	41                   	inc    %ecx
 4005616:	0e                   	push   %cs
 4005617:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 400561d:	46                   	inc    %esi
 400561e:	87 03                	xchg   %eax,(%ebx)
 4005620:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 4005623:	05 02 75 0a c3       	add    $0xc30a7502,%eax
 4005628:	41                   	inc    %ecx
 4005629:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 400562d:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005630:	04 43                	add    $0x43,%al
 4005632:	0b 03                	or     (%ebx),%eax
 4005634:	02 01                	add    (%ecx),%al
 4005636:	0a c3                	or     %bl,%al
 4005638:	41                   	inc    %ecx
 4005639:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 400563d:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005640:	04 43                	add    $0x43,%al
 4005642:	0b 00                	or     (%eax),%eax
 4005644:	2c 00                	sub    $0x0,%al
 4005646:	00 00                	add    %al,(%eax)
 4005648:	8c 0b                	mov    %cs,(%ebx)
 400564a:	00 00                	add    %al,(%eax)
 400564c:	60                   	pusha  
 400564d:	e3 ff                	jecxz  400564e <_ctype_+0xdee>
 400564f:	ff f2                	push   %edx
 4005651:	00 00                	add    %al,(%eax)
 4005653:	00 00                	add    %al,(%eax)
 4005655:	41                   	inc    %ecx
 4005656:	0e                   	push   %cs
 4005657:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 400565d:	42                   	inc    %edx
 400565e:	83 03 7d             	addl   $0x7d,(%ebx)
 4005661:	0a c5                	or     %ch,%al
 4005663:	c3                   	ret    
 4005664:	0c 04                	or     $0x4,%al
 4005666:	04 42                	add    $0x42,%al
 4005668:	0b 75 0a             	or     0xa(%ebp),%esi
 400566b:	c3                   	ret    
 400566c:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 400566f:	04 43                	add    $0x43,%al
 4005671:	0b 00                	or     (%eax),%eax
 4005673:	00 2c 00             	add    %ch,(%eax,%eax,1)
 4005676:	00 00                	add    %al,(%eax)
 4005678:	bc 0b 00 00 24       	mov    $0x2400000b,%esp
 400567d:	e4 ff                	in     $0xff,%al
 400567f:	ff 50 00             	call   *0x0(%eax)
 4005682:	00 00                	add    %al,(%eax)
 4005684:	00 41 0e             	add    %al,0xe(%ecx)
 4005687:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 400568d:	60                   	pusha  
 400568e:	0a c5                	or     %ch,%al
 4005690:	0c 04                	or     $0x4,%al
 4005692:	04 41                	add    $0x41,%al
 4005694:	0b 5b 0a             	or     0xa(%ebx),%ebx
 4005697:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 400569a:	04 45                	add    $0x45,%al
 400569c:	0b 47 c5             	or     -0x3b(%edi),%eax
 400569f:	0c 04                	or     $0x4,%al
 40056a1:	04 00                	add    $0x0,%al
 40056a3:	00 48 00             	add    %cl,0x0(%eax)
 40056a6:	00 00                	add    %al,(%eax)
 40056a8:	ec                   	in     (%dx),%al
 40056a9:	0b 00                	or     (%eax),%eax
 40056ab:	00 44 e4 ff          	add    %al,-0x1(%esp,%eiz,8)
 40056af:	ff 9f 00 00 00 00    	lcall  *0x0(%edi)
 40056b5:	41                   	inc    %ecx
 40056b6:	0e                   	push   %cs
 40056b7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40056bd:	46                   	inc    %esi
 40056be:	87 03                	xchg   %eax,(%ebx)
 40056c0:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 40056c3:	05 02 67 0a c3       	add    $0xc30a6702,%eax
 40056c8:	41                   	inc    %ecx
 40056c9:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40056cd:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40056d0:	04 41                	add    $0x41,%al
 40056d2:	0b 46 0a             	or     0xa(%esi),%eax
 40056d5:	c3                   	ret    
 40056d6:	41                   	inc    %ecx
 40056d7:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40056db:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40056de:	04 43                	add    $0x43,%al
 40056e0:	0b 4f 0a             	or     0xa(%edi),%ecx
 40056e3:	c3                   	ret    
 40056e4:	41                   	inc    %ecx
 40056e5:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 40056e9:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40056ec:	04 42                	add    $0x42,%al
 40056ee:	0b 00                	or     (%eax),%eax
 40056f0:	2c 00                	sub    $0x0,%al
 40056f2:	00 00                	add    %al,(%eax)
 40056f4:	38 0c 00             	cmp    %cl,(%eax,%eax,1)
 40056f7:	00 98 e4 ff ff e5    	add    %bl,-0x1a00001c(%eax)
 40056fd:	00 00                	add    %al,(%eax)
 40056ff:	00 00                	add    %al,(%eax)
 4005701:	41                   	inc    %ecx
 4005702:	0e                   	push   %cs
 4005703:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005709:	46                   	inc    %esi
 400570a:	87 03                	xchg   %eax,(%ebx)
 400570c:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 400570f:	05 02 60 0a c3       	add    $0xc30a6002,%eax
 4005714:	41                   	inc    %ecx
 4005715:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005719:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 400571c:	04 44                	add    $0x44,%al
 400571e:	0b 00                	or     (%eax),%eax
 4005720:	20 00                	and    %al,(%eax)
 4005722:	00 00                	add    %al,(%eax)
 4005724:	68 0c 00 00 50       	push   $0x5000000c
 4005729:	e5 ff                	in     $0xff,%eax
 400572b:	ff 25 00 00 00 00    	jmp    *0x0
 4005731:	41                   	inc    %ecx
 4005732:	0e                   	push   %cs
 4005733:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005739:	44                   	inc    %esp
 400573a:	83 03 5d             	addl   $0x5d,(%ebx)
 400573d:	c5 c3 0c             	(bad)  
 4005740:	04 04                	add    $0x4,%al
 4005742:	00 00                	add    %al,(%eax)
 4005744:	20 00                	and    %al,(%eax)
 4005746:	00 00                	add    %al,(%eax)
 4005748:	8c 0c 00             	mov    %cs,(%eax,%eax,1)
 400574b:	00 54 e5 ff          	add    %dl,-0x1(%ebp,%eiz,8)
 400574f:	ff 22                	jmp    *(%edx)
 4005751:	00 00                	add    %al,(%eax)
 4005753:	00 00                	add    %al,(%eax)
 4005755:	41                   	inc    %ecx
 4005756:	0e                   	push   %cs
 4005757:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 400575d:	44                   	inc    %esp
 400575e:	83 03 5a             	addl   $0x5a,(%ebx)
 4005761:	c5 c3 0c             	(bad)  
 4005764:	04 04                	add    $0x4,%al
 4005766:	00 00                	add    %al,(%eax)
 4005768:	1c 00                	sbb    $0x0,%al
 400576a:	00 00                	add    %al,(%eax)
 400576c:	b0 0c                	mov    $0xc,%al
 400576e:	00 00                	add    %al,(%eax)
 4005770:	54                   	push   %esp
 4005771:	e5 ff                	in     $0xff,%eax
 4005773:	ff 20                	jmp    *(%eax)
 4005775:	00 00                	add    %al,(%eax)
 4005777:	00 00                	add    %al,(%eax)
 4005779:	41                   	inc    %ecx
 400577a:	0e                   	push   %cs
 400577b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005781:	5c                   	pop    %esp
 4005782:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005785:	04 00                	add    $0x0,%al
 4005787:	00 1c 00             	add    %bl,(%eax,%eax,1)
 400578a:	00 00                	add    %al,(%eax)
 400578c:	d0 0c 00             	rorb   (%eax,%eax,1)
 400578f:	00 54 e5 ff          	add    %dl,-0x1(%ebp,%eiz,8)
 4005793:	ff 20                	jmp    *(%eax)
 4005795:	00 00                	add    %al,(%eax)
 4005797:	00 00                	add    %al,(%eax)
 4005799:	41                   	inc    %ecx
 400579a:	0e                   	push   %cs
 400579b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40057a1:	5c                   	pop    %esp
 40057a2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40057a5:	04 00                	add    $0x0,%al
 40057a7:	00 1c 00             	add    %bl,(%eax,%eax,1)
 40057aa:	00 00                	add    %al,(%eax)
 40057ac:	f0 0c 00             	lock or $0x0,%al
 40057af:	00 54 e5 ff          	add    %dl,-0x1(%ebp,%eiz,8)
 40057b3:	ff 20                	jmp    *(%eax)
 40057b5:	00 00                	add    %al,(%eax)
 40057b7:	00 00                	add    %al,(%eax)
 40057b9:	41                   	inc    %ecx
 40057ba:	0e                   	push   %cs
 40057bb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40057c1:	5c                   	pop    %esp
 40057c2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40057c5:	04 00                	add    $0x0,%al
 40057c7:	00 24 00             	add    %ah,(%eax,%eax,1)
 40057ca:	00 00                	add    %al,(%eax)
 40057cc:	10 0d 00 00 54 e5    	adc    %cl,0xe5540000
 40057d2:	ff                   	(bad)  
 40057d3:	ff 34 00             	pushl  (%eax,%eax,1)
 40057d6:	00 00                	add    %al,(%eax)
 40057d8:	00 41 0e             	add    %al,0xe(%ecx)
 40057db:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40057e1:	42                   	inc    %edx
 40057e2:	86 03                	xchg   %al,(%ebx)
 40057e4:	83 04 6c c3          	addl   $0xffffffc3,(%esp,%ebp,2)
 40057e8:	41                   	inc    %ecx
 40057e9:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 40057ed:	04 04                	add    $0x4,%al
 40057ef:	00 38                	add    %bh,(%eax)
 40057f1:	00 00                	add    %al,(%eax)
 40057f3:	00 38                	add    %bh,(%eax)
 40057f5:	0d 00 00 60 e5       	or     $0xe5600000,%eax
 40057fa:	ff                   	(bad)  
 40057fb:	ff 54 00 00          	call   *0x0(%eax,%eax,1)
 40057ff:	00 00                	add    %al,(%eax)
 4005801:	41                   	inc    %ecx
 4005802:	0e                   	push   %cs
 4005803:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005809:	43                   	inc    %ebx
 400580a:	87 03                	xchg   %eax,(%ebx)
 400580c:	86 04 83             	xchg   %al,(%ebx,%eax,4)
 400580f:	05 6f 0a c3 41       	add    $0x41c30a6f,%eax
 4005814:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005818:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 400581b:	04 44                	add    $0x44,%al
 400581d:	0b 54 c3 41          	or     0x41(%ebx,%eax,8),%edx
 4005821:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 4005825:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005828:	04 00                	add    $0x0,%al
 400582a:	00 00                	add    %al,(%eax)
 400582c:	1c 00                	sbb    $0x0,%al
 400582e:	00 00                	add    %al,(%eax)
 4005830:	74 0d                	je     400583f <_ctype_+0xfdf>
 4005832:	00 00                	add    %al,(%eax)
 4005834:	78 e5                	js     400581b <_ctype_+0xfbb>
 4005836:	ff                   	(bad)  
 4005837:	ff 2f                	ljmp   *(%edi)
 4005839:	00 00                	add    %al,(%eax)
 400583b:	00 00                	add    %al,(%eax)
 400583d:	41                   	inc    %ecx
 400583e:	0e                   	push   %cs
 400583f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005845:	6b c5 0c             	imul   $0xc,%ebp,%eax
 4005848:	04 04                	add    $0x4,%al
 400584a:	00 00                	add    %al,(%eax)
 400584c:	1c 00                	sbb    $0x0,%al
 400584e:	00 00                	add    %al,(%eax)
 4005850:	94                   	xchg   %eax,%esp
 4005851:	0d 00 00 88 e5       	or     $0xe5880000,%eax
 4005856:	ff                   	(bad)  
 4005857:	ff 09                	decl   (%ecx)
 4005859:	00 00                	add    %al,(%eax)
 400585b:	00 00                	add    %al,(%eax)
 400585d:	41                   	inc    %ecx
 400585e:	0e                   	push   %cs
 400585f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005865:	41                   	inc    %ecx
 4005866:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005869:	04 00                	add    $0x0,%al
 400586b:	00 20                	add    %ah,(%eax)
 400586d:	00 00                	add    %al,(%eax)
 400586f:	00 b4 0d 00 00 74 e5 	add    %dh,-0x1a8c0000(%ebp,%ecx,1)
 4005876:	ff                   	(bad)  
 4005877:	ff 15 00 00 00 00    	call   *0x0
 400587d:	41                   	inc    %ecx
 400587e:	0e                   	push   %cs
 400587f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005885:	41                   	inc    %ecx
 4005886:	83 03 4f             	addl   $0x4f,(%ebx)
 4005889:	c3                   	ret    
 400588a:	41                   	inc    %ecx
 400588b:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 400588e:	04 00                	add    $0x0,%al
 4005890:	20 00                	and    %al,(%eax)
 4005892:	00 00                	add    %al,(%eax)
 4005894:	d8 0d 00 00 68 e5    	fmuls  0xe5680000
 400589a:	ff                   	(bad)  
 400589b:	ff 15 00 00 00 00    	call   *0x0
 40058a1:	41                   	inc    %ecx
 40058a2:	0e                   	push   %cs
 40058a3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40058a9:	41                   	inc    %ecx
 40058aa:	83 03 4f             	addl   $0x4f,(%ebx)
 40058ad:	c3                   	ret    
 40058ae:	41                   	inc    %ecx
 40058af:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40058b2:	04 00                	add    $0x0,%al
 40058b4:	20 00                	and    %al,(%eax)
 40058b6:	00 00                	add    %al,(%eax)
 40058b8:	fc                   	cld    
 40058b9:	0d 00 00 5c e5       	or     $0xe55c0000,%eax
 40058be:	ff                   	(bad)  
 40058bf:	ff 17                	call   *(%edi)
 40058c1:	00 00                	add    %al,(%eax)
 40058c3:	00 00                	add    %al,(%eax)
 40058c5:	41                   	inc    %ecx
 40058c6:	0e                   	push   %cs
 40058c7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40058cd:	41                   	inc    %ecx
 40058ce:	83 03 51             	addl   $0x51,(%ebx)
 40058d1:	c3                   	ret    
 40058d2:	41                   	inc    %ecx
 40058d3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40058d6:	04 00                	add    $0x0,%al
 40058d8:	20 00                	and    %al,(%eax)
 40058da:	00 00                	add    %al,(%eax)
 40058dc:	20 0e                	and    %cl,(%esi)
 40058de:	00 00                	add    %al,(%eax)
 40058e0:	50                   	push   %eax
 40058e1:	e5 ff                	in     $0xff,%eax
 40058e3:	ff 17                	call   *(%edi)
 40058e5:	00 00                	add    %al,(%eax)
 40058e7:	00 00                	add    %al,(%eax)
 40058e9:	41                   	inc    %ecx
 40058ea:	0e                   	push   %cs
 40058eb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40058f1:	41                   	inc    %ecx
 40058f2:	83 03 51             	addl   $0x51,(%ebx)
 40058f5:	c3                   	ret    
 40058f6:	41                   	inc    %ecx
 40058f7:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40058fa:	04 00                	add    $0x0,%al
 40058fc:	30 00                	xor    %al,(%eax)
 40058fe:	00 00                	add    %al,(%eax)
 4005900:	44                   	inc    %esp
 4005901:	0e                   	push   %cs
 4005902:	00 00                	add    %al,(%eax)
 4005904:	44                   	inc    %esp
 4005905:	e5 ff                	in     $0xff,%eax
 4005907:	ff 35 00 00 00 00    	pushl  0x0
 400590d:	41                   	inc    %ecx
 400590e:	0e                   	push   %cs
 400590f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005915:	42                   	inc    %edx
 4005916:	86 03                	xchg   %al,(%ebx)
 4005918:	83 04 63 0a          	addl   $0xa,(%ebx,%eiz,2)
 400591c:	c3                   	ret    
 400591d:	41                   	inc    %ecx
 400591e:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 4005922:	04 04                	add    $0x4,%al
 4005924:	42                   	inc    %edx
 4005925:	0b 46 c3             	or     -0x3d(%esi),%eax
 4005928:	41                   	inc    %ecx
 4005929:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
 400592d:	04 04                	add    $0x4,%al
 400592f:	00 20                	add    %ah,(%eax)
 4005931:	00 00                	add    %al,(%eax)
 4005933:	00 78 0e             	add    %bh,0xe(%eax)
 4005936:	00 00                	add    %al,(%eax)
 4005938:	48                   	dec    %eax
 4005939:	e5 ff                	in     $0xff,%eax
 400593b:	ff 17                	call   *(%edi)
 400593d:	00 00                	add    %al,(%eax)
 400593f:	00 00                	add    %al,(%eax)
 4005941:	41                   	inc    %ecx
 4005942:	0e                   	push   %cs
 4005943:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005949:	41                   	inc    %ecx
 400594a:	83 03 51             	addl   $0x51,(%ebx)
 400594d:	c3                   	ret    
 400594e:	41                   	inc    %ecx
 400594f:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005952:	04 00                	add    $0x0,%al
 4005954:	20 00                	and    %al,(%eax)
 4005956:	00 00                	add    %al,(%eax)
 4005958:	9c                   	pushf  
 4005959:	0e                   	push   %cs
 400595a:	00 00                	add    %al,(%eax)
 400595c:	3c e5                	cmp    $0xe5,%al
 400595e:	ff                   	(bad)  
 400595f:	ff 15 00 00 00 00    	call   *0x0
 4005965:	41                   	inc    %ecx
 4005966:	0e                   	push   %cs
 4005967:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 400596d:	41                   	inc    %ecx
 400596e:	83 03 4f             	addl   $0x4f,(%ebx)
 4005971:	c3                   	ret    
 4005972:	41                   	inc    %ecx
 4005973:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005976:	04 00                	add    $0x0,%al
 4005978:	20 00                	and    %al,(%eax)
 400597a:	00 00                	add    %al,(%eax)
 400597c:	c0 0e 00             	rorb   $0x0,(%esi)
 400597f:	00 30                	add    %dh,(%eax)
 4005981:	e5 ff                	in     $0xff,%eax
 4005983:	ff 17                	call   *(%edi)
 4005985:	00 00                	add    %al,(%eax)
 4005987:	00 00                	add    %al,(%eax)
 4005989:	41                   	inc    %ecx
 400598a:	0e                   	push   %cs
 400598b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005991:	41                   	inc    %ecx
 4005992:	83 03 51             	addl   $0x51,(%ebx)
 4005995:	c3                   	ret    
 4005996:	41                   	inc    %ecx
 4005997:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 400599a:	04 00                	add    $0x0,%al
 400599c:	1c 00                	sbb    $0x0,%al
 400599e:	00 00                	add    %al,(%eax)
 40059a0:	e4 0e                	in     $0xe,%al
 40059a2:	00 00                	add    %al,(%eax)
 40059a4:	24 e5                	and    $0xe5,%al
 40059a6:	ff                   	(bad)  
 40059a7:	ff 07                	incl   (%edi)
 40059a9:	00 00                	add    %al,(%eax)
 40059ab:	00 00                	add    %al,(%eax)
 40059ad:	41                   	inc    %ecx
 40059ae:	0e                   	push   %cs
 40059af:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40059b5:	43                   	inc    %ebx
 40059b6:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40059b9:	04 00                	add    $0x0,%al
 40059bb:	00 1c 00             	add    %bl,(%eax,%eax,1)
 40059be:	00 00                	add    %al,(%eax)
 40059c0:	04 0f                	add    $0xf,%al
 40059c2:	00 00                	add    %al,(%eax)
 40059c4:	0c e5                	or     $0xe5,%al
 40059c6:	ff                   	(bad)  
 40059c7:	ff 23                	jmp    *(%ebx)
 40059c9:	00 00                	add    %al,(%eax)
 40059cb:	00 00                	add    %al,(%eax)
 40059cd:	41                   	inc    %ecx
 40059ce:	0e                   	push   %cs
 40059cf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40059d5:	5f                   	pop    %edi
 40059d6:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40059d9:	04 00                	add    $0x0,%al
 40059db:	00 1c 00             	add    %bl,(%eax,%eax,1)
 40059de:	00 00                	add    %al,(%eax)
 40059e0:	24 0f                	and    $0xf,%al
 40059e2:	00 00                	add    %al,(%eax)
 40059e4:	10 e5                	adc    %ah,%ch
 40059e6:	ff                   	(bad)  
 40059e7:	ff 23                	jmp    *(%ebx)
 40059e9:	00 00                	add    %al,(%eax)
 40059eb:	00 00                	add    %al,(%eax)
 40059ed:	41                   	inc    %ecx
 40059ee:	0e                   	push   %cs
 40059ef:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 40059f5:	5f                   	pop    %edi
 40059f6:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 40059f9:	04 00                	add    $0x0,%al
 40059fb:	00 20                	add    %ah,(%eax)
 40059fd:	00 00                	add    %al,(%eax)
 40059ff:	00 44 0f 00          	add    %al,0x0(%edi,%ecx,1)
 4005a03:	00 14 e5 ff ff 1c 00 	add    %dl,0x1cffff(,%eiz,8)
 4005a0a:	00 00                	add    %al,(%eax)
 4005a0c:	00 41 0e             	add    %al,0xe(%ecx)
 4005a0f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005a15:	41                   	inc    %ecx
 4005a16:	83 03 56             	addl   $0x56,(%ebx)
 4005a19:	c3                   	ret    
 4005a1a:	41                   	inc    %ecx
 4005a1b:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005a1e:	04 00                	add    $0x0,%al
 4005a20:	20 00                	and    %al,(%eax)
 4005a22:	00 00                	add    %al,(%eax)
 4005a24:	68 0f 00 00 0c       	push   $0xc00000f
 4005a29:	e5 ff                	in     $0xff,%eax
 4005a2b:	ff 1c 00             	lcall  *(%eax,%eax,1)
 4005a2e:	00 00                	add    %al,(%eax)
 4005a30:	00 41 0e             	add    %al,0xe(%ecx)
 4005a33:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005a39:	41                   	inc    %ecx
 4005a3a:	83 03 56             	addl   $0x56,(%ebx)
 4005a3d:	c3                   	ret    
 4005a3e:	41                   	inc    %ecx
 4005a3f:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005a42:	04 00                	add    $0x0,%al
 4005a44:	1c 00                	sbb    $0x0,%al
 4005a46:	00 00                	add    %al,(%eax)
 4005a48:	8c 0f                	mov    %cs,(%edi)
 4005a4a:	00 00                	add    %al,(%eax)
 4005a4c:	04 e5                	add    $0xe5,%al
 4005a4e:	ff                   	(bad)  
 4005a4f:	ff 20                	jmp    *(%eax)
 4005a51:	00 00                	add    %al,(%eax)
 4005a53:	00 00                	add    %al,(%eax)
 4005a55:	41                   	inc    %ecx
 4005a56:	0e                   	push   %cs
 4005a57:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005a5d:	5c                   	pop    %esp
 4005a5e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005a61:	04 00                	add    $0x0,%al
 4005a63:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4005a66:	00 00                	add    %al,(%eax)
 4005a68:	ac                   	lods   %ds:(%esi),%al
 4005a69:	0f 00 00             	sldt   (%eax)
 4005a6c:	04 e5                	add    $0xe5,%al
 4005a6e:	ff                   	(bad)  
 4005a6f:	ff 23                	jmp    *(%ebx)
 4005a71:	00 00                	add    %al,(%eax)
 4005a73:	00 00                	add    %al,(%eax)
 4005a75:	41                   	inc    %ecx
 4005a76:	0e                   	push   %cs
 4005a77:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005a7d:	5f                   	pop    %edi
 4005a7e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005a81:	04 00                	add    $0x0,%al
 4005a83:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4005a86:	00 00                	add    %al,(%eax)
 4005a88:	cc                   	int3   
 4005a89:	0f 00 00             	sldt   (%eax)
 4005a8c:	08 e5                	or     %ah,%ch
 4005a8e:	ff                   	(bad)  
 4005a8f:	ff 23                	jmp    *(%ebx)
 4005a91:	00 00                	add    %al,(%eax)
 4005a93:	00 00                	add    %al,(%eax)
 4005a95:	41                   	inc    %ecx
 4005a96:	0e                   	push   %cs
 4005a97:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005a9d:	5f                   	pop    %edi
 4005a9e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005aa1:	04 00                	add    $0x0,%al
 4005aa3:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4005aa6:	00 00                	add    %al,(%eax)
 4005aa8:	ec                   	in     (%dx),%al
 4005aa9:	0f 00 00             	sldt   (%eax)
 4005aac:	0c e5                	or     $0xe5,%al
 4005aae:	ff                   	(bad)  
 4005aaf:	ff 23                	jmp    *(%ebx)
 4005ab1:	00 00                	add    %al,(%eax)
 4005ab3:	00 00                	add    %al,(%eax)
 4005ab5:	41                   	inc    %ecx
 4005ab6:	0e                   	push   %cs
 4005ab7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005abd:	5f                   	pop    %edi
 4005abe:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005ac1:	04 00                	add    $0x0,%al
 4005ac3:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4005ac6:	00 00                	add    %al,(%eax)
 4005ac8:	0c 10                	or     $0x10,%al
 4005aca:	00 00                	add    %al,(%eax)
 4005acc:	10 e5                	adc    %ah,%ch
 4005ace:	ff                   	(bad)  
 4005acf:	ff 23                	jmp    *(%ebx)
 4005ad1:	00 00                	add    %al,(%eax)
 4005ad3:	00 00                	add    %al,(%eax)
 4005ad5:	41                   	inc    %ecx
 4005ad6:	0e                   	push   %cs
 4005ad7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005add:	5f                   	pop    %edi
 4005ade:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005ae1:	04 00                	add    $0x0,%al
 4005ae3:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4005ae6:	00 00                	add    %al,(%eax)
 4005ae8:	2c 10                	sub    $0x10,%al
 4005aea:	00 00                	add    %al,(%eax)
 4005aec:	14 e5                	adc    $0xe5,%al
 4005aee:	ff                   	(bad)  
 4005aef:	ff 23                	jmp    *(%ebx)
 4005af1:	00 00                	add    %al,(%eax)
 4005af3:	00 00                	add    %al,(%eax)
 4005af5:	41                   	inc    %ecx
 4005af6:	0e                   	push   %cs
 4005af7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005afd:	5f                   	pop    %edi
 4005afe:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005b01:	04 00                	add    $0x0,%al
 4005b03:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4005b06:	00 00                	add    %al,(%eax)
 4005b08:	4c                   	dec    %esp
 4005b09:	10 00                	adc    %al,(%eax)
 4005b0b:	00 18                	add    %bl,(%eax)
 4005b0d:	e5 ff                	in     $0xff,%eax
 4005b0f:	ff 20                	jmp    *(%eax)
 4005b11:	00 00                	add    %al,(%eax)
 4005b13:	00 00                	add    %al,(%eax)
 4005b15:	41                   	inc    %ecx
 4005b16:	0e                   	push   %cs
 4005b17:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005b1d:	5c                   	pop    %esp
 4005b1e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005b21:	04 00                	add    $0x0,%al
 4005b23:	00 20                	add    %ah,(%eax)
 4005b25:	00 00                	add    %al,(%eax)
 4005b27:	00 6c 10 00          	add    %ch,0x0(%eax,%edx,1)
 4005b2b:	00 18                	add    %bl,(%eax)
 4005b2d:	e5 ff                	in     $0xff,%eax
 4005b2f:	ff 32                	pushl  (%edx)
 4005b31:	00 00                	add    %al,(%eax)
 4005b33:	00 00                	add    %al,(%eax)
 4005b35:	41                   	inc    %ecx
 4005b36:	0e                   	push   %cs
 4005b37:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005b3d:	42                   	inc    %edx
 4005b3e:	83 03 6c             	addl   $0x6c,(%ebx)
 4005b41:	c5 c3 0c             	(bad)  
 4005b44:	04 04                	add    $0x4,%al
 4005b46:	00 00                	add    %al,(%eax)
 4005b48:	1c 00                	sbb    $0x0,%al
 4005b4a:	00 00                	add    %al,(%eax)
 4005b4c:	90                   	nop
 4005b4d:	10 00                	adc    %al,(%eax)
 4005b4f:	00 28                	add    %ch,(%eax)
 4005b51:	e5 ff                	in     $0xff,%eax
 4005b53:	ff 23                	jmp    *(%ebx)
 4005b55:	00 00                	add    %al,(%eax)
 4005b57:	00 00                	add    %al,(%eax)
 4005b59:	41                   	inc    %ecx
 4005b5a:	0e                   	push   %cs
 4005b5b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005b61:	5f                   	pop    %edi
 4005b62:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005b65:	04 00                	add    $0x0,%al
 4005b67:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4005b6a:	00 00                	add    %al,(%eax)
 4005b6c:	b0 10                	mov    $0x10,%al
 4005b6e:	00 00                	add    %al,(%eax)
 4005b70:	2c e5                	sub    $0xe5,%al
 4005b72:	ff                   	(bad)  
 4005b73:	ff 23                	jmp    *(%ebx)
 4005b75:	00 00                	add    %al,(%eax)
 4005b77:	00 00                	add    %al,(%eax)
 4005b79:	41                   	inc    %ecx
 4005b7a:	0e                   	push   %cs
 4005b7b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005b81:	5f                   	pop    %edi
 4005b82:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005b85:	04 00                	add    $0x0,%al
 4005b87:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4005b8a:	00 00                	add    %al,(%eax)
 4005b8c:	d0 10                	rclb   (%eax)
 4005b8e:	00 00                	add    %al,(%eax)
 4005b90:	30 e5                	xor    %ah,%ch
 4005b92:	ff                   	(bad)  
 4005b93:	ff 23                	jmp    *(%ebx)
 4005b95:	00 00                	add    %al,(%eax)
 4005b97:	00 00                	add    %al,(%eax)
 4005b99:	41                   	inc    %ecx
 4005b9a:	0e                   	push   %cs
 4005b9b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005ba1:	5f                   	pop    %edi
 4005ba2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005ba5:	04 00                	add    $0x0,%al
 4005ba7:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4005baa:	00 00                	add    %al,(%eax)
 4005bac:	f0 10 00             	lock adc %al,(%eax)
 4005baf:	00 34 e5 ff ff 23 00 	add    %dh,0x23ffff(,%eiz,8)
 4005bb6:	00 00                	add    %al,(%eax)
 4005bb8:	00 41 0e             	add    %al,0xe(%ecx)
 4005bbb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005bc1:	5f                   	pop    %edi
 4005bc2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005bc5:	04 00                	add    $0x0,%al
 4005bc7:	00 1c 00             	add    %bl,(%eax,%eax,1)
 4005bca:	00 00                	add    %al,(%eax)
 4005bcc:	10 11                	adc    %dl,(%ecx)
 4005bce:	00 00                	add    %al,(%eax)
 4005bd0:	38 e5                	cmp    %ah,%ch
 4005bd2:	ff                   	(bad)  
 4005bd3:	ff 23                	jmp    *(%ebx)
 4005bd5:	00 00                	add    %al,(%eax)
 4005bd7:	00 00                	add    %al,(%eax)
 4005bd9:	41                   	inc    %ecx
 4005bda:	0e                   	push   %cs
 4005bdb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 4005be1:	5f                   	pop    %edi
 4005be2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 4005be5:	04 00                	add    $0x0,%al
	...

Disassembly of section .data:

04006c00 <_impure_ptr>:
 4006c00:	20 6c 00 04          	and    %ch,0x4(%eax,%eax,1)
	...

04006c20 <inpure_data>:
 4006c20:	00 00                	add    %al,(%eax)
 4006c22:	00 00                	add    %al,(%eax)
 4006c24:	28 6e 00             	sub    %ch,0x0(%esi)
 4006c27:	04 80                	add    $0x80,%al
 4006c29:	6e                   	outsb  %ds:(%esi),(%dx)
 4006c2a:	00 04 d8             	add    %al,(%eax,%ebx,8)
 4006c2d:	6e                   	outsb  %ds:(%esi),(%dx)
 4006c2e:	00 04 00             	add    %al,(%eax,%eax,1)
	...
 4006c4d:	00 00                	add    %al,(%eax)
 4006c4f:	00 01                	add    %al,(%ecx)
	...

04006f34 <pbreak>:
 4006f34:	40                   	inc    %eax
 4006f35:	6f                   	outsl  %ds:(%esi),(%dx)
 4006f36:	00                   	.byte 0x0
 4006f37:	04                   	.byte 0x4

Disassembly of section .bss:

04006f38 <__bss_start>:
 4006f38:	00 00                	add    %al,(%eax)
	...

04006f3c <environ>:
 4006f3c:	00 00                	add    %al,(%eax)
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <_start-0x3ffff88>
   a:	74 75                	je     81 <_start-0x3ffff7f>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%esi),(%dx)
  18:	74 75                	je     8f <_start-0x3ffff71>
  1a:	31 7e 31             	xor    %edi,0x31(%esi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%esi,%ebp,1)
  22:	31 32                	xor    %esi,(%edx)
  24:	29 20                	sub    %esp,(%eax)
  26:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  2b:	20 32                	and    %dh,(%edx)
  2d:	30 31                	xor    %dh,(%ecx)
  2f:	36 30 36             	xor    %dh,%ss:(%esi)
  32:	30 39                	xor    %bh,(%ecx)
	...
