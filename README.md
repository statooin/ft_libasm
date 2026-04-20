```
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_libasm                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: statooin <statooin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/15 14:54:43 by statooin          #+#    #+#              #
#    Updated: 2020/11/09 20:18:35 by statooin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
```

# Low-Level Systems Research: Most Common x86-64 NASM Assembly Functions (2019)

[⚠️STATUS: ARCHIVAL / HISTORICAL REFERENCE]

## 📜 Overview
This repository contains a collection of fundamental standard library functions rewritten in **x86-64 Assembly (NASM)**. Developed in 2019 as part of the École 42 curriculum, this project focuses on understanding the Application Binary Interface (ABI), CPU register management, and direct interaction with the Linux kernel via system calls.

Maintaining this archive serves as a testament to my expertise in low-level systems engineering—a foundation that is indispensable for modern high-performance computing and infrastructure security.

## The Engineering Foundation (Why this matters for SRE)
Writing code in Assembly is a brutal but rewarding exercise in precision. For a Senior SRE, this level of depth provides critical advantages:

* **Security & Reverse Engineering:** Understanding how the stack and registers operate is essential for analyzing exploits, identifying buffer overflows, and performing deep-dive security audits.
* **Performance Tuning:** At the $200k+ level, "optimization" isn't just about better algorithms; it's about understanding instruction-level execution and CPU cycles.
* **eBPF & Kernel Observability:** Writing eBPF programs for Linux kernel tracing requires the same mental model used in Assembly—managing registers, understanding memory alignment, and interacting directly with kernel-space.

## Technical Implementation Details
The library implements high-performance versions of standard C functions, adhering strictly to the **64-bit calling conventions**:

* **System Call Integration:** Direct execution of `read` and `write` syscalls, including proper error handling by interfacing with the `errno` external variable.
* **Memory Management:** Implementation of `ft_strdup` involves manual stack frame management and coordinating with the `malloc` C function from Assembly code.
* **Register Optimization:** Efficient use of `rax`, `rdi`, `rsi`, and `rdx` registers to minimize memory access and maximize execution speed in functions like `ft_strlen`, `ft_strcpy`, and `ft_strcmp`.

## Project Contents
* `ft_strlen.s`: String length calculation (using loop and pointer arithmetic).
* `ft_strcpy.s`: String copying logic.
* `ft_strcmp.s`: Lexicographical string comparison.
* `ft_write.s` / `ft_read.s`: Direct syscall wrappers with error detection.
* `ft_strdup.s`: Memory allocation and string duplication.
* `libasm.h`: C interface for the assembly implementation.

---
*This archive is part of my professional evolution, highlighting a deep-dive into CPU internals and x86-64 architecture that informs my approach to kernel-level observability and infrastructure security today.*
