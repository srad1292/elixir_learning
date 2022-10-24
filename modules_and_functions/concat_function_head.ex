defmodule ConcatFunctionHead do

  # when you have a function with multiple clauses and one has a default value,
  # you must provide a function head which is a function definition with no body
  # for declaring defaults
  def join(a,b \\ nil, sep \\ " ")

  # the underscore in front of sep means that the variable will be ignored in this function
  def join(a,b, _sep) when is_nil(b) do
    a
  end

  def join(a,b, sep) do
    a <> sep <> b
  end

end
