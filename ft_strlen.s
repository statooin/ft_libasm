			section	.text					; below will be CODE of program
			global	ft_strlen				; points that code of ft_strlen will start in THIS module below
											; rdi = char *str
											; will erase RAX

ft_strlen:
			xor		rax, rax				; int rax = 0 //index
			jmp		.compare
.loop:
			inc		rax						; rax++
.compare:
			cmp		BYTE [rdi + rax], 0		; compare values (str[rax] == 0) and store result in FLAGS register
			jne		.loop				; if (str[rax] != 0) jump to increment:
.return:
			ret								; return (rax)
