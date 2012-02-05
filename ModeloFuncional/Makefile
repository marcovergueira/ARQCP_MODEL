# exemplo de makefile 
# variaveis do make
INCLUDES = asm.h
SOURCES = main.c asm.S
OBJFILES = main.o asm.o
EXEC = main

# regras de sufixo
.SUFFIXES : .c .o
.SUFFIXES : .S .o

# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -g -ansi -Wall -c $<  

# como transformar um .S num .o ; $< -- nome do ficheiro
.S.o:
	gcc -c -g $<  
		
${OBJFILES}: ${SOURCES} ${INCLUDES}

# o eclipse assume que o target por defeito chama-se "all"	
all: ${EXEC}	

# para fazer o programa principal 
${EXEC}: ${OBJFILES}
	gcc -ansi -lm -Wall -g -o ${EXEC} ${OBJFILES}

run:  ${EXEC}
	./${EXEC}

clean: 
	rm ${OBJFILES} ${EXEC} 
	

