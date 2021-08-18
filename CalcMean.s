		AREA |.text|,CODE,READONLY
		EXPORT mean64
			
mean64 
		MOVS R1, #0		;zero sum register
		MOVS R2, #64		;loop counter
		
m64loop
		LDR R3, [R0]		;Load data addressed by R0 into R3
		ADDS R1, R1, R3		;Add R1 and R3, put result into R1
		ADDS R0, R0, #4		;Advance R0 to point to next array element
		SUBS R2, #1			;subs 1 from loop counter
		BNE m64loop			;if loop counter != 64, go to m64loop
		
		MOVS R5, R1			;Hopefully this moves my R1 before it gets wiped from mem
		LSRS R1, R1, #6		;divide sum by 64 (its 2^6 which = 64)
		MOVS R0, R1			;move the mean into R0
		BX LR
		
		END