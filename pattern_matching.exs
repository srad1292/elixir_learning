# = which is used for assignment is called the match operator in elixir
x = 1 # x now is 1
1 = x # this is fine because x is 1 and so both sides match
2 = x # this is not fine because x is one and so 2 is not the same as 1

{a, b, c} = {:hello, "world", 42}
a # :hello
b # "world"
c # 42
{:ok, result} = {:ok, 13} # result is 13
{:ok, result} = {:error, :noop} # this throws a match error because left tuple expects :ok for first element

[a,b,c] = [1,2,3]
a # 1
b # 2
c # 3
[head | tail] = [1,2,3] # [1,2,3]
## this can be useful for prepending to a list
list = [1,2,3]
[0 | list] # [0,1,2,3]

## to match against current value, use the pin operator ^
x = 1
x = 2 # sets x to 2
x = 1
^x = 2 # throws error because x is not 2
