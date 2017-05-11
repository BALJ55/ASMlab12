
 .text
 .align 2
 .global calculos
 
 calculos:
	VLDR S0, [r0]
	VLDR S1, [r1]
	VLDR S2, [r2]
	VLDR S3, [r3]
	VADD.f32 S0, S0,S1
	VADD.f32 S2, S2,S3
	VADD.f32 S0,S1  	@@suma de las cuatro notas
	LDR R1, =cpc
	VLDR S1, [R1]		@@en s1->0.4
	VMUL.f32 S0,S0,S1	@@suma de las notas x 0.4
	VSTR.32 R0,[S0]			@@valor en r0
	
	MOV PC,LR
 
