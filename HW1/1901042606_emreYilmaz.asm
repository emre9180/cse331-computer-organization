# 1901042606 - Emre Yilmaz - Gebze Technical University
# NOTES FOR T.A:
# When the purpose of a temporary register is changed, I informed you by using a comment line

# EXAMPLE INPUT:
# Give the input n and input k ( space sepereated in a line): >> "3 5"
# Enter the array inputs ( space seperated in a line): " >> "1 2 3"
# Expected Output -> 1 and 2, total 1 occurances

.data
nkinputmsg: .asciiz "Give the input n and input k ( space sepereated in a line): "
array: .space 100
size: .word 100
prompt: .asciiz "Enter the array inputs ( space seperated in a line): "
space: .asciiz " "
inputNK: .space 6
pair: .asciiz " and "
newline: .asciiz "\n"
resultstr: .asciiz " occurance"
.text
.globl main

#s0 Store "n" variable
#s1 Store "k" variable
#s2 Points the start address of the array
#s3 Keep the result
#s4 Points the final address of the array




#t0 Keeps the current element's address. It will increase by 4
#t1 Stores the read input
#t7 duracaðýmýz elemaný gösterior
main:
	li $a3, 0x20 
	
	#print the input request
	la $a0, nkinputmsg
	li $v0, 4
	syscall
	
	# Read the string for n and k. 
   	li $v0, 8
   	la $a0, inputNK
    	li $a1, 6
    	syscall
	
	# Get the input N and K
	la $t0, inputNK
	jal ninput
	jal kinput
	
	
	# Allocate memory
	add $a0, $s0, $zero # Argument for memory allocation
	li $v0 9 # Allocate memory
	syscall
	add $s2, $v0, $zero # Protect the initial address of the array
	
	li $s3, 0 # Return value
	
	# Get the array inputs
	li $t0, 0
	mul $t7, $s0, 4
	add $s4, $s2, $t7
	add $t6, $s2, $zero
	jal fillArr
	
	#loop1
	lw $t5, 0($s2)
	add $t0, $s2, 0 # loop1 counterý
	jal gecis1
	
	#print occurances
	add $a0, $s3, 0
	li $v0, 1
	syscall
	#print resultk string
	la $a0, resultstr
	li $v0, 4
	syscall
	
	#exit
	li $v0, 10
	syscall

# get the input n
ninput:
	lb $t1, 0($t0)
	lb $t2, 1($t0)
	beq $t2, 0x20 oneDigit #if the n input is 1 digit
	
	# if th e n input is 2 digit
	andi $t1,$t1,0x0F # char to int
	andi $t2,$t2,0x0F # char to int
	mul $t1, $t1, 10
	add $t1, $t1, $t2
	add $t0, $t0, 3
	add $s0, $s0, $t1
	jr $ra
	
	oneDigit: #if the n input is 1 digit
	andi $t1,$t1,0x0F # char to int
	add $s0, $s0, $t1
	add $t0, $t0, 2
	jr $ra

# get the input k
kinput:
	lb $t1, 0($t0)
	lb $t2, 1($t0)
	beq $t2, 0x0a oneDigitk #if the k input is 1 digit
	andi $t1,$t1,0x0F # char to int
	andi $t2,$t2,0x0F # char to int
	mul $t1, $t1, 10
	add $t1, $t1, $t2
	add $s1, $s1, $t1
	jr $ra
	
	#if the k input is 1 digit
	oneDigitk:
	andi $t1,$t1,0x0F # char to int
	add $s1, $s1, $t1
	add $t0, $t0, 2
	jr $ra


# t7 points the start adress of the array --> arrayin baþlangýç adresini gösteriyor
# t6 points the ending address of the array --> arrayin bitme adresini gösteriyor
# t5 current address --> mevcut adres
# t4 current number --> mevcut sayý
# t3 readed number instantly --> anlýk okuduðumuz sayý
# t2 return address
# t1 address of array
readArrayLoop:
	# read character and load it to register
	# read one more character, if it is space, load the number that we read before to a array memory
	# if it is not space, multiply the number that in the first register by 4 and add the new character
	
	lb $t3, 0($t5) # Write the last number in the input where we left off, into the "instant reg (t3)"
	bne $t3, 0x20, nonSpace1 # check that the character is space or not
	add $t5, $t5, 1 # increase the current address
	jal readArrayLoop
	
	nonSpace1: # if the character is space
	bne $t3, 0x0a, finish1 # if the character is new line
	jr $s5 # return back
	
	# if the character is new line
	finish1:
	andi $t3,$t3,0x0F # char to int
	add $t5, $t5, 1 # increase the current address
	bne $t3, 0x0a, goLoop # check new line
	bne $t4, -1, noFinalStore
	sw $t4, ($t1) # load the current number
	noFinalStore: # we must not load the current number to reg since the current number is invalid
		jr $s5 #return back
	
	goLoop: #if we do not read new line, go on
	add $t4, $t3, 0 # update the current number
	lb $t3, 0($t5) # read the next number
	li $t6, 0
	add $t6, $t3, 0 # we need ascii of current number
	andi $t3,$t3,0x0F # char to int
	
	beq $t6, 0x0a, finish2
	bne $t6, 0x20, nonSpace2 # check whether the instantly read number is space or not
	add $t5, $t5, 1 # increase the current address
	sw $t4, ($t1) # load the current number
	add $t1, $t1, 4 # update the address of the array that locates in the HEAP
	mul $t4, $t4, 0 # reset the "instant read number" register
	add $t4, $t4, -1
	mul $t3, $t3, 0 # reset the "current number" register
	add $t3, $t3, -1
	jal readArrayLoop # go on to loop
	
	nonSpace2: # if the instantly read number is not space
	mul $t4, $t4, 10 # multiply the current number by 10
	add $t4, $t4, $t3 # add the instantly read number to current number
	sw $t4, ($t1) # load the current number
	add $t1, $t1, 4 # update the address of the array that locates in the HEAP
	add $t5, $t5, 1 # increase the address of array
	jal readArrayLoop # go on to loop
	
	finish2:
		sw $t4, ($t1) # must load the current number
		jr $s5 # return back
		
readArrayTransition: # We will use loop, so, we may lose the return address pointer. I use a transition procedure not to lose return address. I may use stack, but in this HW I did not prefer.
	add $s5, $ra, 0 # protect the return address
	add $t1, $s2, 0 # copy the address of the array
	jal readArrayLoop
	
	
fillArr:
	# protectr the return adress
	add $t0, $ra, 0
	# Prompt for the string to enter
    	li $v0, 4
   	la $a0, prompt
   	syscall
	
	# Read the string. 
   	li $v0, 8
   	la $a0, array
    	lw $a1, size
    	syscall
    	
    	# set the end address of the array
    	la $t7, array
    	mul $t6, $t7, 4
    	add $t6, $t6, 0
    
    	# the address that we will increase and read numbers. we must load it to a temporary register.
    	la $t5, 0($t7)
    	jal readArrayTransition
	
	jr $t0
	
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#t1 2. arrayde kaldýgýmzý adresi göstercek
#t0 1. arr ** ** ** 
#t2  addition sonucu
#t5 1. arraydeki dðer
#t4 2. arraydeki deðer


innerLoop: # inner loop, it represents the "J" indexes
	bne $t1, $s4 notJump
	beq $t1, $s4, outerLoop
	notJump:
	
	
	lw $t4, 0($t1)
	add $t2, $t5, $t4
	div $t2, $s1
	mfhi $t7
	beq $t7 ,$zero, counter
returnLoopTwo:
	add $t1, $t1, 4
	bne $t1, $s4, innerLoop
	jr $s6
	
outerLoop:
	lw $t5, 0($t0)
	add $t1, $t0, 4 # loop1 counterý
	add $t0, $t0, 4
	bne $t0, $s4 notJump2
	jr $s7
	notJump2:
	jal gecis2
	bne $t0, $s4, outerLoop
	jr $s7
	
counter: # This procedure counts the occurance number and prints them
	add $s3, $s3, 1
	
	#print occurances
	add $a0, $t5, 0
	li $v0, 1
	syscall
	#print result information string
	la $a0, pair
	li $v0, 4
	syscall
	#print occurances
	add $a0, $t4, 0
	li $v0, 1
	syscall
	#print new line
	la $a0, newline
	li $v0, 4
	syscall
	
	jal returnLoopTwo
	
gecis1: # We will use loop, so, we may lose the return address pointer. I use a transition procedure not to lose return address. I may use stack, but in this HW I did not prefer.
	add $s7 $ra,$zero # protect the return address to main
	jal outerLoop
	
gecis2: # We will use loop, so, we may lose the return address pointer. I use a transition procedure not to lose return address. I may use stack, but in this HW I did not prefer.
	add $s6, $ra,$zero # protect the return address of outer loop
	jal innerLoop
