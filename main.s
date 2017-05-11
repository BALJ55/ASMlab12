
 .text
 .align 2
 .global main 
 
 
 main:
    stmfd sp!, {lr}
    mov r10,#10
    mov r9,#0
	
	
	@@parte de lectura de notas
	
	ldr r0,=num1
	ldr r1,=num
	bl scanf
	ldr r0,=num1
	ldr r0,[r0]
	
	
	
	ldr r0,=num2
	ldr r1,=num
	bl scanf
	ldr r1,=num2
	ldr r1,[r1]	
	
		
	ldr r0,=num3
	ldr r1,=num
	bl scanf
	ldr r2,=num2
	ldr r2,[r2]
	
	
	ldr r0,=num4
	ldr r1,=num
	bl scanf
	ldr r3,=num3
	ldr r3,[r3]
	
	bl calculos
	
	VLDR S0,[R0]	@@retorno de subritina
	LDR R1, =notaProyecto
	VLDR S1, [R1]
	VSUB.f32 S0,S0,S1
	VMOV R3, S0
	
	ldr r0,=num1
	ldr r1,R3
	bl scanf
	mov r1,r0
	
	
	
 .data
	 cpc: .float 0.4
	 mensaje .asciz "Ingrese nota"
	 num1: .word "%f/n"
	 num2: .word "%f/n"
	 num3: .word "%f/n"
	 num4: .word "%f/n"
	 num: 	.word 0
 
	 notaProyecto: .float 0.61