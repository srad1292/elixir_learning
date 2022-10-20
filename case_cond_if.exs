# case lets us compare a value against patterns until we find one that matches
case {1,2,3} do
  {4,5,6} ->
    "This clause will not match"
  {1,x,3} ->
    "This clause will match and bind x to 2 within this clause"
  _ ->
    "This clause will match any value"
end

# we can add allow for additional conditions using guards
case {1,2,3} do
  {1,x,3} when x < 0 ->
    "This will not match"
  {1,x,3} when x > 0 ->
    "This will match"
  _ ->
    "Will match anything"
end


# cond is used to check different conditions for the first that does not
# equal false or nil.  It is equivalent to if..else if..else if..else
# If all conditions are false or nil, then a CondClauseError is thrown

cond do
  2+2 == 5 ->
    "This will not be true"
  2*2 == 3 ->
    "This will also not be true"
  1+1 == 2 ->
    "This will be true"
  true ->
    "This is a fail safe incase all other conditions are false or nil"
end


# if/2 and unless/2 are used when you only need to check one condition
if true do
  "This is true"
end

unless true do
  "This will never be seen"
end
## the above produces nil

## can also do if else
if nil do
  "this will not run"
else
  "this will run"
end

# Changes to variables within if or case will only persist in that scope
x = 1
if true do
  x = 2
end
x # x was set to 2 in the if, but that scope has ended so x is 1 here
# You can return the change if you want the change to persist
x = 1
x = if true do
  x = 2
else
  x
end
x # x now 2 even after the if statement
