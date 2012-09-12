! hi.s: a simple SPARC program to write Hi to the command line
!	because "Hello World!" would take a while
!	

	

	EOL = 10		! ASCII code for newline character
		
	.global main
main:
	save	%sp,-96,%sp	! Magic! We will explain this line in detial later
				! main program starts here

	mov	'H', %o0	! Put first char into operating register
	call	writeChar	! Write it to the screen
	nop

	mov	'i', %o0	! display prompt for user
	call	writeChar	! Write it to the screen
	nop

	mov	EOL, %o0	! write a newline character, for spacing
	call	writeChar
	nop

	ret			!Exiting the program...
	restore			!                   ...now

