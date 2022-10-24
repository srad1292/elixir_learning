defmodule Math do
  # use defmodule macro to create modules. First letter must be uppercase.

  # use def macro to define functions. First letter must be lowercase or underscore.
  def sum(a,b) do
    do_sum(a,b)
  end
  # now that we have a module with a function, we can compile this file for reuse using
  # the elixirc command giving the path to file as the input.
  # elexirc math.ex -> generates Elixir.Math.beam containing the bytecode for
  # the defined module.  If we run iex again within the folder of the output,
  # the custom module definition will be available.

  # .exs files can be created instead of .ex to write Elixir in scripting mode
  # which means the files are not meant to be compiled.  They can be ran using the
  # command elixir math.exs, which will compile them and load into memory but
  # will not create the beam file.

  # we can use the defp macro to create private functions which can only be called
  # within the module that defines it.
  defp do_sum(a,b) do
    a+b
  end

  # Function definitions support guards and multiple clauses.
  # Elixir will try each clause until it finds one that matches
  # Here the ? means that the function returns a boolean
  def zero?(0) do
    true
  end

  # so if given 0, the above will match
  # if given an integer other than 0, this will match
  # if given something other than an integer, there will be a function clause error
  def zero?(x) when is_integer(x) do
    false
  end
end
