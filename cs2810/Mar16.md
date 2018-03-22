# Class Notes 3/16

* Topic list for the exam posted on Canvas

* Integer binary math
    * addition
    * multiplication
    * conversion to decimal or hexadecimal (and vice versa)
* Floating point standard. convert decimal to binary and vice versa
* Circuits
    * and, or, nand, nor, etc gates -
        * need to know what is an xor and how it is drawn
    * Truth tables
    * sum of products
    * reduce using Karnaugh map
    * circuit diagrams
    * PLA's
    * convert between truth table, sum of products and diagram. From any one to any of the other two
* De Morgan's Law
    * proof
    * prove anti-Demorgan's Law
* C to assembly
    * stack usage
    * input and output parameters (to and from procedures)
    * array index manipulation

---

## Integer binary math

### Addition

In binary, addition is pretty much the same as it is in decimal. 0 + 0 = 0, 0 + 1 = 1, and 1 + 1 = 10. You would normally just carry over any additional ones, but there may be cases in which binary addition or subtraction will overflow the nummber of bits that you have available. This means that the actual result of the addition/subtraction will not be the same as intended

#### Examples

```txt
 11010100
+10001101
---------
 01100001
```

### Multiplication

In binary, multiplication also works pretty much the same as it did in decimal. 0 * 0 = 0, 0 * 1 = 1, 1 * 1 = 1. Same rules as addition for overflow.

#### Examples

```txt
 1010
* 110
-----
     0
 10100
101000
------
111100
```

## Floating point to Binary

In binary, floating point numbers are represented using 32 bits. The first bit is a 'sign' bit. If this first bit is a 0, the floating point number is positive, and if it is 1, the number is negative. Next, floating point numbers have 8 bits to represent the exponent of the number, as floating point numbers are stored in scientific notation. Since this is binary, instead of 10^x, we have 2^x for the exponent. Additionally, floating point numbers have a 'bias' in the exponent. This means that the exponent is offset by a certain value, which happens to be 127. This is because if we were using a signed exponent, the lowest number we could get with 8 bits would be -127. The next 23 bits are what is called the 'mantissa', which is the actual representation of the number. Because floating point numbers are stored in scientific notation, there is an implied 1 at the beginning of a mantissa, which is not actually represented. If the floating point number has all zeroes in the mantissa and an exponent of 127, that is understood to be zero, despite the implied 1.

### Examples

```txt
sign  exponent      mantissa
  0   00000000  00000000000000000000000

6.25 * 10^-2 to binary:

1. Normalize - 6.25 & 10^-2 = 0.0625
2. sign - 0
3. convert Left hand side: 0 (dec) = 0 (binary)
4. convert right hand side:

0.0625 * 2 = 0.1250     0
0.125  * 2 = 0.25       0
0.25   * 2 = 0.5        0
0.5    * 2 = 1.0        1

Right hand side = 0.0001
5. De normalize 0.0001 = 1.0 * 2^-4
6. Bias = 127 - 4 = 123
7. Bias to binary:

64 + 32 + 16 + 8 + 2 + 1
01111011

8. Mantissa = 0 because of the implied 1

9. Write number out: 0 01111011 00000000000000000000000
```

## Circuits

### Logic Gates

#### Inverters

Inverters are used to change a signal from 0 to 1 or vice versa. They are generally represented on circuit diagrams as either a triangle with a circle at the end of it, or often times circles at the end of a line before or after another gate.

![Inverter](http://4.bp.blogspot.com/_Pu6uvWeeCLQ/TTmgTBsEVuI/AAAAAAAAACQ/1FbPMqi-sIk/s400/Symbol_inverter.gif)

#### OR/NOR gates

OR gates work the same as the or operator: if both signals coming into it are 0, the output is zero, otherwise the output is one. In circuit digrams, OR gates are repreented as an arrowhead shaped gate with 2 inputs and one output. 

![OR gate](https://blog.oureducation.in/wp-content/uploads/2013/05/2-Input-OR-Gate-Truth-Table.jpg)

NOR gates work the same as the OR gates, except they have an inverter at the end which changes the resulting signal from the OR gate to the opposite of the output.

![NOR gate](https://eeherald.s3.amazonaws.com/uploads/ckeditor/pictures/oldarticleimages/logic11.png)

#### AND/NAND gates

Like the OR gate, the AND gate works the same as the AND operator. If both inputs are 1, the output will be 1, otherwise the output is 0. In circuit diagrams, AND gates are represented as D-shaped gates with 2 inputs and one output.

![AND gate](https://sub.allaboutcircuits.com/images/04101.png)

The NAND gate is similar to the NOR gate in that it takes the signal from the output of the AND gate and inverts it. 

![NAND gate](http://www.circuitstoday.com/wp-content/uploads/2010/04/2-Input-NAND-Gate-Truth-Table.jpg)

#### XOR

The XOR gate gets its name from the shortened form "exclusive-or". This logic gate will output 1 if either a or b are exclusively 1, but not both. It is possible to make an XOR gate out of AND OR, and Inverter gates. (A + B) + !(AB)

![XOR gate](http://www.learningelectronics.net/images/04116.png)

### Truth Tables

Truth tables tell us how logic gates work. They give us a way to find the Boolean formula behind a circuit. A truth table will have one column for every input, and have all possible combinations of these inputs as rows. The truth table will also have some output column(s) representing the output based on a specific formula (e.g. A XOR B). An example truth table for p AND q is shown below.

![p AND q](https://cdn-images-1.medium.com/max/658/1*wrRCwDAoUqHHALfHnu0Qmw.png)

### Sum of Products

The sum of product is a form of logical representation that employs a logical sum (OR) of products (Terms joined together using the AND operator). You can build the sum of products out of a truth table. Each entry for which the function is true corresponds to a term (one of the products) in the sum of products. Each of these gets OR-ed together to create the sum.

### PLA (Programmable Logic Array)

Programmable Logic Arrays or PLAs are used to implement a sum of products. Each row that has a 1 as an output on the function will have a row in the sum of products.

![PLA](images/pla.png)

### Karnaugh Map

Karnaugh maps are used to reduce boolean expressions. To do this, you take the terms out of the truth table and put it into a matrix. The rows and columns are labeled with binary digits that represent the terms in the input columns, and they follow the Gray code. Then you make rectangles around groups of ones that are the same size as a power of two. Then, looking at the truth table, you can remove terms if from one box to the next the value of one of the varibles changes.

### Demorgan's Law

Split the bar, change the operation.

Demorgan's law is used to simplify boolean expressions. It states !(AB) = !A + !B, and !(A + B) = !A * !B. To prove this you would use a truth table. Anti-Demorgans law refers to the idea that !(AB) is not equal to (!A!B). To prove this you would again use a truth table.

## C to Assembly

In MIPS, input values are typically passed to a function using the $a0 - $a3 registers. The output values of these functions are typically passed in the $v0 -$v1 registers.

---

DeMorgan's Law

* !(AB) = !A + !B
* !(AB) is not equal to !A!B
    * Be able to prove that the two are not equivalent for Anti-Demorgan's law
* If there is not a bar, add two
    * AB = !!(AB)
    * ```if (A && B) -> if (!(!(A && B)))```

Karnaugh Map

Karnaugh maps are used to reduce boolean expressions. To do this, 

* This is a way to reduce a sum of products/something from a truth table

* Looking for things that don't change. The things that change drop out or are adjacent

* You can stick another one of the same term in?

AB!C + ABC  = AB(!C + C) = AB1 = AB

* C to Assembly

```C
#include <stdio.h>
#include <stdlib.h>

void swap(int indexOne, int indexTwo, int y[]);
main() {
    const int number = 8;
    int marks[8] = {}
}

bool checkIfLessThan(int indexOne, int indexTwo, int y[]) {

}

void swap(int indexOne, int indexTwo, int y[]) {
    int temp = y[indexOne];
    if (checkIfLessThan(indexOne, indexTwo, y) -or- y[indexOne] >= y[indexTwo]) {
        y[indexOne] = y[indexTwo];
        y[indexTwo] = temp;
    }
}
```

$v0 is the return address of the function. Check this when returned from a function

Push to the stack 

```mips
...
endprog:
    li $v0, 10
    syscall

swapfunc:
    # push to stack
    addi $sp $sp -4
    sw $ra 0($sp)

    sll $t0 $a0 2 # 4x index a0
    add $t0 $t0 $a2 # add base array to index 1 offset
    lw $t9 0($t0) #t9 is Array[a0]
    sll $t1 $a1 2 # 4x index a1
    add $t1 $t1 $a2 # add base array to index 2 offset
    lw $t8 0($t1) # t8 is array[a1]

    blt $t9 $t8 returnOutOfSwap # pseudo instruction jump out if array[a1] < array[a0]
    # if not less then swap

    sw $t8 0($t0) # store t9 into array[a0]
    sw $t9 0($t1) 


returnOutOfSwap:
    # pop ra off stack
    lw $ra 0($sp)
    addi $sp $sp 4
    jr $ra
```