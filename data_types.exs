# integer
10
10 + 20
div(10,3) # 3
rem(10,3) # 1
round(3.58) # 4
trunc(3.58) # 3
is_integer(2) # true
is_number(2) # true because 2 is an integer or a float

# float
10.2
1.0e-10
10/2 # 5.0
is_float(2.3) # true
is_number(2.3) # true because 2.3 is an integer or a float

# boolean
true
false
is_boolean(true) # true
is_boolean(1) # false

# atom - a constant whose value is its own name
:apple
:green
:purple
:ok
:error
:apple == :apple # true
:apple == :orange # false

# string -> double quotes for Elixir strings
"I am a string"
## interpolation
word = :world
"hello #{word}"
## line break
"I am line one\nand I am line two"
## print to console
IO.puts(word)
## Strings in elixir are represented as a series of bytes known as binaries
is_binary("hello")
byte_size("hello") # returns number of bytes needed to represent in utf-8
String.length("hello") # returns number of characters

# anonymous function
add = fn a, b -> a + b end
add.(1,2) # 3.  The . between add and arguments ensures no ambiguity between this and a function add/2
is_function(add) # true

double = fn a -> add.(a,a) end
double.2(2) # 4


# list
[1,2,3]
[1,2,true,3]
## Can concatenate two lists
## Adding or subtracting from a list creates a new list because
## data structures in Elixir are immutable
[1,2,3] ++ [4,5,6] # [1,2,3,4,5,6]
## Can subtract from a list
[1, true, 2, false, 3, true] -- [true, false] # [1,2,3,true]
## Head of a list is the first element. Tail is everything else.
## Getting the head or tail of an empty list throws an error
list = [1,2,3]
hd(list) # 1
tl(list) # [2,3]  <- even if this was only one element, it would return a list
## When Elixir sees a list of printable ASCII characters,
## it will print a character list with single quotes
[11,12,13] # '\v\f\r'
[104,101,108,108,111] # 'hello'
'hello' == "hello" # false
## if you are not sure what something is when you print it out you can use the i/1 to retrieve information
i 'hello' # term 'hello' data type List raw representation [104,101,108,108,111]


# tuple
{1,3,4}
{:ok, "hello"}
tuple_size {:ok, "hello"} # 2
## Get element from tuple
tuple = {:ok, "hello"}
elem(tuple,1) # "hello"
## Place element in index of tuple
put_elem(tuple, 1, "world") # {:ok, "world"}, but tuple is still {:ok, "hello"} because it is immutable
## Common use case for tuple is to return extra data from a function
{:ok, "...contents of file"}
{:error, :enoent}

# Lists are stored in memory as linked lists, so each element holds its value and points to the next element.
# So we need to access each element to determine length.
# This is why to get the number of elements in a list, the function is length/1, it is linear.
# Just like getting the number of elements in a string is String.length
# Concatenation performance depends on size of left side array because we have to traverse it.

# Tuple are stored contiguously in memory.
# So getting the size or accessing a specific element is fast.
# This is why to get the number of elements in a tuple, the function is tuple_size/1, it is constant.
# Just like getting number of bytes in a string is byte_size.
# Updating or adding elements is expensive though.
