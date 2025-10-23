# stack-exhauster

In Golang, recursive function will use the stack for local variables. Additionally, each recursive call will not release the stack resources. With no end to the recursive function, the stack will eventually be exhausted and the application will crash.
