;-----------------------------------------------------------------------
; Afficher un message à l'écran
;-----------------------------------------------------------------------
			TITLE		DISPLAY - programme prototype
;-----------------------------------------------------------------------
			ASSUME	CS:CSEG, DS:CSEG, ES:CSEG
CSEG		SEGMENT

			ORG 100H
MAIN:		MOV BX,0001H
			LEA DX,MESSAGE
			MOV CX,L_MESSAGE
			MOV AH,40H
			INT 21H
MESSAGE		DB "Bonjour, voici un message!",0DH,0AH
L_MESSAGE	EQU $-MESSAGE

CSEG		ENDS
			END MAIN
;-------------------------------------------------------fin de programme
