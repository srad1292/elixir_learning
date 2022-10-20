# arithmetic operators
2+2
4-2
4*4
10/2 # 5.0
div(10,2) # 5
rem(10,3) # 1

# list manipulation
[1,2] ++ [3,4] # [1,2,3,4]
[1,2,3,4,5] -- [2,3] # [1,4,5]

# String concatenation
"foo" <> "bar" # "foobar"

# boolean operators and, or, not
true and true # true
false or is_atom(:example) # true
not true # false
true and not false # true
# Using a non-boolean will raise an exception -> 1 and true BadBooleanError

# For non-boolean, use the traditional symbols
1 || true # 1
true || 1 # true
false || :apple # apple
!true # false
!nil # true

# comparison
1 == 1.0 # true
1 === 1.0 # false -> strict comparison between int and float
## data types sorting order: number, atom, reference, function, port, pid, tuple, map, list, bitstring
1 < :atom # true
