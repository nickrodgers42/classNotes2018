# Exam 3 Review (in Class)

Know Amdahl's law

* What happens as P approaches 1?
* He has the formula on the exam
* Amdahl's law speedups - How to compute

* Go over lecture notes from the week before spring break up to now.

Models of multithreading:

* one-to-one - One thread in your process == one thread in the kernel
* many-to-one - many threads in your process == one thread in the kernel
* many-to-many - Thread pool frequent jobs, short duration
* green-threads (many-to-one)
    * Threads in name only, only works conceptually. Don't get the benefits of multithreading

Types of parallelism

* Data parallelism - split the data into chunks to work on independently (your gpu does this to pixels on your screen)

* Task parallelism - split the job over N processors to work on them independently (pi assignment)
    * heterogeneous tasks - the tasks can't execute in lockstep
* Race condition
    * In the demo we did in class, the increment/decrement operation was not atomic.
    * Altogether, these two operations should have been protected by a mutex, as they form a critical section
* To solve the criticical section problem, we need to ensure these threee things:
    1. Mutual Exclusion - Only one thread my enter the critical section at a time
    1. Bounded waiting - no threads are waiting forever
    1. Progress - work is getting done
* First come first serve scheduling:
    * Susceptible to the convoy effect
    * Bad for average waiting time
* Priority scheduling
    * Prioritize on expected task time == shortest-job first
    * Difficulty in estimating the expected task time
    * Starvation is a possibility - I may never get to teh long-slow task at the end of the line
