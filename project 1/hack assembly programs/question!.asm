(a)Arithmatic operations
program:Addition and Subtraction
// Addition: 7 + 3
@7
D=A
@R0
M=D

@3
D=A
@R1
M=D

@R0
D=M
@R1
D=D+M
@R2
M=D

// Subtraction: 7 - 3
@7
D=A
@R0
M=D

@3
D=A
@R1
M=D

@R0
D=M
@R1
D=D-M
@R3
M=D

(END)
@END
0;JMP

output:
*R2=10(Addition)
*R3=4(Subtraction)

(b) Branching with Conditional jumps
program:Check whether 7 is greater than 3.
@7
D=A
@R0
M=D

@3
D=A
@R1
M=D

@R0
D=M
@R1
D=D-M

@TRUE
D;JGT

@R2
M=0
@END
0;JMP

(TRUE)
@R2
M=1

(END)
@END
0;JMP

output:
*R2=1
*condition is True because 7 is greater than 3.

(c) Simple loop 
program:Calculate the sum of numbers from 1 to 5.
@5
D=A
@R0
M=D

@0
D=A
@R1
M=D

(LOOP)
@R0
D=M
@END
D;JLE

@R1
D=M
@R0
D=D+M
@R1
M=D

@R0
M=M-1

@LOOP
0;JMP

(END)
@END
0;JMP

output:
*R1=15
*R0=0