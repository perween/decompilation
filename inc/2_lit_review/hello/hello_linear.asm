_start:
	mov  rdi, hello
	call printf
	mov  rdi, 0
	call exit
	ret
hello:
	push qword 0x6F6C6C65 ; "hello"
	and  [rdi+0x6F], dh   ; " wo"
	jc   short 0x6D       ; "rl"
	or   al, [fs:rax]     ; "d\n\0"
