1. 0xd2 is what number in 2's complement?
    * -45
    * -46
    * -47
    * 46
        * Answered: -46
1. The boolean expression (A · B) + (B · A) is logically equivalent to which of the following?
    * Options a, b, and c are all correct
    * (B · A) + (A · B)
    * Options a and b are correct
    * (A + B) + (B + A)
    * (A · B) + (B + A)
        * Answered: (B · A) + (A · B)
1. Which of these operations may result in an exception or overflow?
    * addu
    * subu
    * addi
    * addiu
        * Answered: addi (book pg 180)
1. Are any of the following binary expressions equivalent to B in hexadecimal?
    * 0010
    * 0110
    * none of the above
    * 1101
    * 1011
        * Answered: 1011. B in hex is 11. 8 + 2 + 1 = 11.
1. What​ ​ registers​ ​ are​ ​ conventionally​ ​ used​ ​ to​ ​ pass​ ​ arguments​ ​ in​ ​ MIPS​ ​ assembly?
    * $a registers
    * $v registers
    * $t registers
    * $s registers
        * Answered: $a registers
1. What​ ​ is​ ​ the​ ​ binary ​ equivalent​ ​ of​ ​ 0xF1A0?
    * 1111 0001 1001 0000
    * 1111 1011 1000 0000
    * 1111 0001 1010 0000
    * 1111 1010 0100 0010
        * Answered: 1111 0001 1010 0000
1. With respect to the Eight Great Ideas of computers: “The one constant for computer designers is rapid change,  ...”  Which of the following great ideas is most associated with the line above.
    * Dependability via Redundancy
    * Abstraction to Simplify Design
    * Make the Common Case Fast
    * Design for Moore's Law
        * Answered: Design for Moore's Law. (book pg 11)
1. Of the Eight Great Ideas of computers: As computer designs can take years, the resource available per chip can easily double or  _______________ between the start and finish of the project.
    * Quintuple
    * Quadruple
    * Sextuplet
    * Triple
        * Answered: Quadruple (book pg 11)
1. “___________  to represent the design at different levels of representation; lower‐level details are hidden” is which of the following Eight Great Ideas of computers:
    * Objectification
    * Explanation
    * Abstraction
    * Simplification
1. What technique did computer architects and programmers invent to make themselves more productive?
    * Explanation
    * Objectification
    * Simplification
    * Abstraction
        * Answered: Abstraction (book pg 11)
1. “Making the _____________ case fast will tend to enhance performance better than optimizing the rare case.” is which of the following Eight Great Ideas of computers:
    * Common
    * Exceptional
    * Typical
    * Experimental
        * Answered: common (book pg 11)
1. “Ironically, the common case is often _______ than the rare case and hence is often easier to enhance.” is which of the following Eight Great Ideas of computers:
    * Problematic
    * Harder
    * Trickier
    * Simpler
        * Answered: Simpler (book pg 11)
1. “Computer architects have offered designs that get more performance by performing operations in _______.” is which of the following Eight Great Ideas of computers:
    * Block Chain
    * Direct
    * Parallel
    * Linear
        * Answered: parallel (book pg 12)
1. “Which one of the great ideas has analogy of ‘bucket brigade’.” is which of the following Eight Great Ideas of computers:
    * Parallelism
    * Prediction
    * Pipelining
    * Abstraction
        * Answered: Pipelining (book pg 12)
1. Which of the Eight Great Ideas in computers uses this analogy to help understand the great idea “It can be better to ask for forgiveness than to ask for permission”
    * Parallelism
    * Performance via Prediction
    * Pipelining
    * Abstraction
        * Answered: Performance via Prediction (book pg 12)
1. “Computers not only need to be fast; they need to be ________________.” is which of the following Eight Great Ideas of computers:
    * Reusable
    * Portable
    * Replaceable
    * Dependable
        * Answered: Dependable (book pg 12)
1. Give the IEEE754 binary representation of the number -0.25 in single precision, what is its binary representation?
    * 0011 1110 1000 0000 0000 0000 0000 0000
    * 0010 1000 1000 1011 1000 1000 0011 0010
    * 1011 1110 1000 0000  0000 0000 0000 0000
    * 1010 1000 1000 1000 1000 1100 0010 0010
        * 1011 1110 1000 0000  0000 0000 0000 0000
1. Why​ ​ is​ ​ 2’s​ ​ compliment​ ​ used​ ​ for​ ​ representing​ ​ negative​ ​numbers​ ​ in​ ​ binary​ ​ instead​ ​ of​ ​ a signed​ ​ bit​ ​ representation​ ​ of​ ​ the​ ​ absolute​ ​ value?
    * To​ ​ make​ ​ it​ ​ as​ ​ easy​ ​ as​ ​ possible​ ​ to​ ​ learn​ ​ how​ ​ computers​ ​ represent​ ​ negative numbers
    * Because​ ​ signed​ ​ bit​ ​ representation​ ​ is​ ​ hard​ ​ to​ ​ understand
    * To​ ​ have​ ​ a ​ ​ more​ ​ human-readable​ ​ binary​ ​ representation​ ​ of​ ​ negative​ ​ numbers
    * To​ ​ avoid​ ​ special​ ​ logic​ ​ for​ ​ arithmetic​ ​ on​ ​ negative​ ​ numbers
        * Answered: To​ ​ avoid​ ​ special​ ​ logic​ ​ for​ ​ arithmetic​ ​ on​ ​ negative​ ​ numbers
1. From which of the following gates may all the other gates can be made (a universal gate)?
    * AND
    * NOT
    * XOR
    * NOR
    * OR
        * Answered: NOR
1. By convention, the $v registers are generally used for what?
    * Temporary storage of values
    * To pass arguments to routines
    * To store string values
    * Store return values of functions
        * Answered: Store return values of functions (Green sheet)
1. In MIPS, if I want to multiply by register $s0 by 8 and store it into a temporary register $t0, what is the correct single line MIPS assembly code to do so (this may be done also in multiple lines)?
    * sll $t0 $s0 3
    * sll $t0 $s0 8
    * sll $t0 $s0 4
    * sll $t0 $s0 2
        * Answered: sll $t0 $s0 3
1. Using DeMorgan’s Theorem, which of the following laws of Boolean algebra is not correct?
    * A + 0 = A and A ∙ 1 = A
    * A + A = 1 and A ∙ A = 1
    * A + 1 = 1 and A ∙ 0 = 0
    * A + B = B + A and A ∙ B = B ∙ A
        * Answered:  A + A = 1 and A ∙ A = 1. If A is 0 than neither of these will be true.
1. Are the following two logical expressions equivalent (! indicates inversion)?
          !A ∙ B ∙ C + A ∙ !C ∙ B
          B ∙ (!A ∙ C + !C ∙ A)
    * No, if A = 1, B = 0, and C = 1, then one of the expressions is true and the other is false
    * Yes (both are equivalent)
    * No, if A = 0, B = 1, and C = 1, then one of the expressions is true and the other is false
    * No, if A = 1, B = 1, and C = 0, then one of the expressions is true and the other is false
        * Answered: Yes (both are equivalent)
1. What​ ​ is​ ​ combinational​ ​ logic?
    * A​ ​ logic​ ​ system​ ​ that​ ​ depends​ ​ on​ ​ the​ ​ timing​ ​ of​ ​ the​ ​ input​ ​ according​ ​ to​ ​ the​ ​ clock​ ​ cycle.
    * A​ logic​ ​ system​ ​ that​ ​ computes​ ​ the​ ​ same​ ​ output​ ​ given​ ​ the​ ​ same​ ​ input.​
    * A​ logic​ ​ system​​ ​ in​ ​ which​ ​ the​ ​ output​ ​ depends​ ​ not​ ​ only​ ​ on​ ​ the​ ​ present​ ​ input​ ​ but​ ​ also​ ​ on​ ​ the history​ ​ of​ ​ the​ ​ input.
    * A​ ​ logic​ ​ system​ ​ with​ ​ 2 ​ ​ inputs​ ​ for​ ​ every​ ​1​ output.
        * Answered: A logic system that computes the same output given the same input (book pg B-5)
1. In MIPS assembly, which register refers to the stack pointer?
    * $sp
    * $sf
    * $s0
    * $gp
        * Answered: $sp, (green sheet)
1. In terms of performance, what does MIPS stand for?
    * Micro implementation for piping stations
    * Millions of instructions per second
    * An instruction set
    * Mixed instruction perpetrating sets
        * Answered: Millions of instructions per second (Book pg 51)
1. When writing assembly code, when should you save function parameters to the stack?
    * When you run out of temporary registers
    * When the number of passed parameters is greater than 4
    * Never
    * Always
        * Answered: When the number of passed parameters is greater than 4 (L08 ppt)
1. Which of the following are part of the eight great idea in computer architecture?
    * Make the common case fast
    * Prototyping
    * Pipelining
    * Both A and C
        * Answered: Both A and C (book pg 11-12)
1. How many registers are used in the MIPS instruction set?
    * 16
    * 64
    * 128
    * 32
        * Answered: 32 (green sheet)
1. If your CPU runs at 3.5 GHz, how many times does the clock cycle in one second?
    * 3.5*10^3
    * 3.5*10^6
    * 3.5*10^8
    * 3.5*10^9
        * Answered: 3.5*10^9 (book pg 33)
1. What is an advantage of having a 64 bit architecture as opposed to a 32 bit architecture?
    * Bigger is always better
    * Decreases the amount of space needed for the chipset
    * Decreases the size of a byte
    * Allows more instructions
        * Answered: Allows more instructions
1. What are the steps in determining the two’s complement of a negative decimal number?
    * Flip the bits, Change the sign, Add one.
    * Determine the positive value of the number in Binary, flip the bits, add one.
    * Add one, Flip the bits, Change the first 0 to a 1.
    * I have no idea.
        * Answered: Determine the positive value of the number in Binary, flip the bits, add one.
1. Given the assembly code snippet; what is the value in $t0 after execution?
    ```
    value: .word 32
    lw $t0 value
    addi $t1 $0 28
    add $t0 $t0 $t1
    srl $t0 $t0 1
    ```
    * 32
    * 60
    * 16
    * 30
        * Answered: