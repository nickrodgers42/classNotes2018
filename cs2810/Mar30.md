# March 30

Talked about proto buff

Talked about abetTest, it should be what we know from this class

We are going to be debugging, be able to step through code in your head

His server for the bomb lab died, but he replaced it. For now we wait. He'll give us a PDF on Canvas to tell us where to go and what to download

6 phases to the bomb. Each phase has a secret passcode
    you can have a solutions file and pass it to the bomb when you run it

total of 70 points possible. Each time you blow up you lose 1/2 a point. Set breakpoints to avoid blowing up

./bomb solutions.text
```strings bomb```  will give you all of the strings that are in the bomb

```strings bomb > strings.out ``` lets you put the strings into a file

```objdump -d``` and ```objdump -t``` will give you informtion about the code. the -d option will disassemble the bomb. -t is table something

You can do weird things in assembly (i.e. LW %REG0 [REG1 * VALUE * REG2 + offset])

There are a lot of different kinds of jumps

in gdb tell it to set args and give it steps
