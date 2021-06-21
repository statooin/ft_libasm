			section	.text
			global	ft_write
			extern error
										;ssize_t read(int fd, const void *buf, size_t nbyte)
										;int rdi = fd;
										;char* rsi = buf;
										;int rdx = nbyte;
										; will erase RDX, RAX
ft_write:								; fd = rdi, buffer = rsi, bytes = rdx
			mov			rax, 0x2000004	; call write
			syscall
			jb			.error			; if (syscall < 0)
			ret							; else return
.error:
			push		rax				; save value returned by syscall
			call		error WRT ..plt	; call error. rax = &errno
			pop			r8				; retrieve error value
			mov			[rax], r8		; *errno = error value
			mov			rax, -1			; return = -1
			ret