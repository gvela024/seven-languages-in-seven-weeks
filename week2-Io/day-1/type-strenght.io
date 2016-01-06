"1+1\n" print
1+1

"\n\n1+1 println\n" print
1+1 println

"\n\nwrite(1+1)\n" print
write(1+1)

"\n\nwrite(1 + \"one\")\n" print
// write(1 + "one") - causes exception.

/*
I want to say that Io is a weakly typed language because it is implemented in C
and you can assign different types to a variable without error.
*/

"\n\nTesting assinging different types to a variable" println
a := 12;
a println
a = "string"
a println
