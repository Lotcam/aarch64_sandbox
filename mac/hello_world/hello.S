.global _main
.align 2

_main:
	mov X0, #1
	adr X1, hello
	mov X2, len
	mov X16, #4
	svc 0x80
	
	mov X0, #0
	mov X16, #1
	svc 0x80

hello:
	.ascii "Hello, world!\n"
len = . - hello
