/*
 * asm.S
 *
 *  Created on: Oct 7, 2011
 *      Author: 1090623, Marco Vergueira
 *      		ISEP @ 2011
 */

.text

.global funcao 				#int funcao(void)

funcao:

#epilogo
	//pushl %ebp
	movl %esp, %ebp

	//pushl %ebx				#guardar registos
	pushl %ecx
	pushl %edx
	pushl %esi
	pushl %edi

	mov 8(%ebp), %bl		#copiar parametros da funcao
	movl 12(%ebp), %ecx
	movl 16(%ebp), %esi

	movl (%ecx), %eax

	movl 8(%ebp), %eax
ciclo:

fim:

#prologo
	popl %edi				#restaurar registos
    popl %esi
	popl %edx
	popl %ecx
	popl %ebx

	movl %ebp, %esp
    popl  %ebp
    ret
