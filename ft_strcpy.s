			section	.text					; below will be CODE of program
											; char	*ft_strcpy(char *dst, char *src);
			global	ft_strcpy				; points that code of ft_strcpy will start in THIS module below
											; rdi = char *dst, rsi = char *src
											; will erase RDX, RCX, RAX

ft_strcpy:
			xor		rcx, rcx				; int i = 0
			xor		rdx, rdx				; char dl = ''
			;cmp		rsi, 0				; !rsi
			;jz		return
			jmp		.copy
.loop:
			inc		rcx
.copy:
			mov		dl, BYTE [rsi + rcx]	; dl = src[i]
			mov		BYTE [rdi + rcx], dl	; dst[i] = dl
			cmp		dl, 0					; if (dl != '\0')
			jnz		.loop				; i++
.return:
			mov		rax, rdi				; return dst
			ret								; return (rax)
