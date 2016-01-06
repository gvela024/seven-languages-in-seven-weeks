"" println
"" println

"Is 0 true? " print
if(0) then("0 is true" print) else("0 is not true" print)

"\n\nIs \"\" (empty string) true? " print
if("") then("Empty string is true" print) else("Empty string is false" print)

"\n\nIs nil true? " print
if(nil) then("nil is true" print) else("nil is false" print)

"" println
"" println

/*
Could probably do the above with the `ifTrue` and `ifFalse` syntax. For example
  `(0 == true) ifTrue("0 is true" print) ifFalse("0 is not true" print)`
*/
