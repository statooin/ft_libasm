;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strdup.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: amalliar <marvin@42.fr>                    +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2020/10/16 00:53:32 by amalliar          #+#    #+#             ;;
;;   Updated: 2020/10/23 17:45:13 by amalliar         ###   ########.fr       ;;
;;                                                                            ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;

			section	.text				; below will be CODE of program
										; char	*ft_strdup(const char *src);
			global	ft_strdup			; code of ft_strdup will start in THIS module below
			extern	ft_strlen
			extern	ft_strcpy
			extern	malloc
ft_strdup:
			push	rdi					; save char *src
			call	ft_strlen			; rax is now the length of the string
			mov		rdi, rax			; size parameter for malloc
			inc		rdi					; one extra byte for '\0'
			call	malloc WRT ..plt	; rax = malloc(sizeof(byte) * rdi)
			cmp		rax, 0				; if malloc is failed rax == 0
			pop		rsi					; restore char *str to rsi
			cmp		rax, 0				; check if malloc returned NULL
			jz		.return

			mov		rdi, rax			; dst is the newly allocated memory
			call	ft_strcpy
.return:
			ret
