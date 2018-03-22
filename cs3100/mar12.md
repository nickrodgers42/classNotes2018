# March 12 2018

We went over exam questions

Quiz due wednesday
Homework (Shell) due wednesday

## Multiprocessing

Advantages:

* Prevent the appearance of "freezing"
* You can get things done faster: slow programs wait in parallel and I'm always using the CPU to the fullest
* Support multiple users on one computer

What could happen if we let individual proceses partake in multiprocessing?

* **Responsiveness** - Your app can do slow stuff "in the background", always appearing to the user to be "fast"
* **Resource sharing** - separate "processes" can share memory space w/o needing to get the OS involved
* **Economy** - Spawning threads uses less overhead than forking; context switching between threads is quicker than procs, too


utahstateacm@gmail.com
pretty obvious