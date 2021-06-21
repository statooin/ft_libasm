;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strcmp.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: amalliar <marvin@42.fr>                    +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2020/10/13 23:21:02 by amalliar          #+#    #+#             ;;
;;   Updated: 2020/10/23 16:32:54 by amalliar         ###   ########.fr       ;;
;;                                                                            ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;

			section	.text
											; int	ft_strcmp(const char *s1, const char *s2);
			global	ft_strcmp
											; rdi = char *s1, rsi = char *s2
											; will erase RDX, RCX, RAX
ft_strcmp:
			xor		rax, rax				; int rax = 0 //index
			xor		rdx, rdx				; char dl = ''
			jmp		.compare
.loop:
			inc		rax						; rax++
.compare:
			mov		dl, [rdi + rax]			; move 1 byte to register dl = s1[rax]
			cmp		dl, [rsi + rax]			; if (s1[rax] != s2[rax])
			jne		.return

			cmp		dl, 0					; if (s1[rax] != '\0')
			jnz		.loop
.return:
			movzx	edx, dl					; zero-extend dl to edx s1[rax]
			movzx	eax, byte [rsi + rax]	; zero-extend last checked byte from second s2[rax]
			sub		eax, edx				; calculate the difference
			ret								; return (rax)
