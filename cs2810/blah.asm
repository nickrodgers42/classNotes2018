.data
out_string: .asciiz "\nArray contents:\n"
marks: .word 40, 90, 73, 23, 576, 66, 81, 35
# number of integers in array
number: .word 8

.text
main: ## start of the code section
    li $v0, 4           # load system instruction 4 (print string)
    la $a0, out_string  # load address of string to be printed into $a0
    syscall             # call operating system to print sring

    la $ra init2        # ensure that $ra contains a valid location 


    ### Not a proper procedure as it uses global variables rather than ones passed to it
init1: addi $sp $sp -8  # push onto stack
    sw $s0 0($sp)
    sw $ra 4($sp)
    addi $t0, $0, 0     # initialize counter to loop through array
    lw $s0, number      # number is max iterations
loop1: sll $t1, $t0, 2  # 4x for proper offset
  la $t2 marks
  add $t1 $t1 $t2
  lw $a0 0($t1)
    lw $a0, marks($t1)  # add offset to array location
    li $v0, 1           # load instruction 1 (print integer)
    syscall
    li $v0, 11          # load instruction 11 (print char) 
    addi $a0, $0, 32    # load char = 'space'
    syscall
    addi $t0, $t0, 1    # increment loop counter
    slt $t3, $t0, $s0   # compare loop counter to max iterations
    bne $t3, $0, loop1  # t3 = 1 (non-zero) when the counter is less than 
    addi $a0, $0, 10    # load char = '\n'
    syscall

    lw $ra 4($sp)       # pop off stack
    lw $s0 0($sp)
    addi $sp $sp 8
    # lw $ra  -4($sp)
    # lw $s0 -8($sp)
    jr $ra

    j init2

init2: # using registers s0 (number), s1 (outer counter), s2(inner counter), s3(compare)
    addi $s1, $0, 1 # initialize counter
    lw $s0, number  # number is max iterations
    addi $s0 $s0 1  # increment number by 1 so
    # last point in the array
loop2:
init3:  addi $s2, $0, 1 # initialize counter for inner loop
    sub $s3, $s0, $s1   # s3 = number - s1
loop3:
    # TODO: write this loop and call func1
    mov $a0 $s1
    mov $a1, $s2
    la $a2 marks
    jal func1
    jal init1

onterIncr: addi $s1 $1, 1   #increment outer loop counter
    slt $t9, $s1, $0    # check if s1 < number
    bne $t9, $0, loop2  # jump to outerloop if s1 < number

endinit2:  jal init2
    j endprog 

func1:  
    sll $t1, $a0, 2
    add $t1, $t1 $a2
    sll $t3, $a1, 2
    add $t3, $t3 $a2
    # j init1 -> print func
    lw $t2, 0($t1)
    lw $t4, 0($t4)
    slt $t0, $t4, $t2
    beq $t0, $0, return1
    sw $s2, 0($t3)
    sw $t4, 0($t1)
