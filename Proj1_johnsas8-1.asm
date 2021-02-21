TITLE Elementary Arithmetic Project 1

; Author: Ashley Johnson
; Last Modified: 1/20/2021
; OSU email address: johnsas8@oregonstate.edu
; Course number/section:   CS271 Section 400
; Project Number:   1              Due Date:1/24/2021
; Description: This file is asks user to enter 3 numbers and displays the sums and differences. 

INCLUDE Irvine32.inc
.data
   progTitle BYTE   "Elementary Arithmetic   ", 0
   printName BYTE   "by Ashley Johnson ", 0
   instructions BYTE   "Enter 3 numbers A>B>C, and I'll show you the sums and differences.", 0
   input1   BYTE   "First Number: ", 0
   input2   BYTE   "Second Number: ", 0
   input3	BYTE	"Third number: ", 0
   num_A    DWORD   ?   ; integer entered by user
   num_B    DWORD   ?   ; second integer entered by user.
   num_C	DWORD	?   ; third integer entered by user. 
   goodbye  BYTE   "Thanks for using Elementary Arithmetic!  Goodbye!",0
   equalchar    BYTE   " = ", 0
   ABsum    DWORD   ?
   ACsum    DWORD   ?
   BCsum    DWORD   ?
   ABCsum   DWORD   ?
   sumchar   BYTE   " + ",0
   ABdifference   DWORD   ?
   ACdifference     DWORD   ?
   BCdifference     DWORD   ?
   diffchar   BYTE   " - ",0

.code
main PROC

  
mov edx, OFFSET progTitle  ;print program title
call WriteString

mov   edx, OFFSET printName    ;print my name
call WriteString
call CrLf


mov edx, OFFSET instructions    ;print instructions
call   WriteString
call   CrLf


mov edx, OFFSET input1 ;get first number from user
call WriteString
call ReadInt
mov num_A, eax
call CrLf

mov edx, OFFSET input2 ;get second number from user
call WriteString
call ReadInt
mov num_B, eax
call CrLf

mov edx, OFFSET input3 ;get third number from user
call WriteString
call ReadInt
call CrLf
mov num_C, eax
mov eax, num_C


Calculate:
mov eax, num_A	;calculate A+B
add eax, num_B
mov   ABsum, eax

mov eax, num_A	;calculate A-B
sub eax, num_B
mov ABdifference, eax

mov eax, num_A	;calculate A+C
add eax, num_C
mov ACsum, eax

mov eax, num_A	;calculate A-C
sub eax, num_C
mov ACdifference, eax

mov eax, num_B	;calculate B+C
add eax, num_C
mov BCsum, eax

mov eax, num_B	;calculate B-C
sub eax, num_C
mov BCdifference, eax

mov eax, num_A	;calculate A+B+C
add eax, num_B
add eax, num_C
mov ABCsum, eax

mov eax, num_A	;print A+B
call WriteDec
mov edx, OFFSET sumchar
call WriteString
mov eax, num_B
call WriteDec
mov edx, OFFSET equalchar
call WriteString
mov eax, ABsum
call WriteDec
call CrLf

mov eax, num_A	;print A-B
call WriteDec
mov edx, OFFSET diffchar
call WriteString
mov eax, num_B
call WriteDec
mov edx, OFFSET equalchar
call WriteString
mov eax, ABdifference
call WriteDec
call CrLf

mov eax, num_A	;print A+C
call WriteDec
mov edx, OFFSET sumchar
call WriteString
mov eax, num_C
call WriteDec
mov edx, OFFSET equalchar
call WriteString
mov eax, ACsum
call WriteDec
call CrLf

mov eax, num_A	;print A-C
call WriteDec
mov edx, OFFSET diffchar
call WriteString
mov eax, num_C
call WriteDec
mov edx, OFFSET equalchar
call WriteString
mov eax, ACdifference
call WriteDec
call CrLf

mov eax, num_B	;print B+C
call WriteDec
mov edx, OFFSET sumchar
call WriteString
mov eax, num_C
call WriteDec
mov edx, OFFSET equalchar
call WriteString
mov eax, BCsum
call WriteDec
call CrLf

mov eax, num_B	;print B-C
call WriteDec
mov edx, OFFSET diffchar
call WriteString
mov eax, num_C
call WriteDec
mov edx, OFFSET equalchar
call WriteString
mov eax, BCdifference
call WriteDec
call CrLf

mov eax, num_A	;print A+B+C
call WriteDec
mov edx, OFFSET sumchar
call WriteString
mov eax, num_B
call WriteDec
mov edx, OFFSET sumchar
call WriteString
mov eax, num_C
call WriteDec
mov edx, OFFSET equalchar
call WriteString
mov eax, ABCsum
call WriteDec
call CrLf
  
endProgram:
call CrLf	;print goodbye message
mov edx, OFFSET goodbye
call WriteString
call CrLf

	Invoke exitProcess,0	;exit to operating system
main ENDP

END main