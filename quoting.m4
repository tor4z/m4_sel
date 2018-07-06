define(A, 100)dnl
define(B, A)dnl
define(C, `A')dnl
dumpdef(`A', `B', `C')

A B C
