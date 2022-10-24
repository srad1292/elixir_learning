defmodule Concat do

  # Elixir supports default arguments using the name \\ default setup
  # below, the join function uses a space as the default separator when
  # concatenating two strings
  def join(a,b, sep \\ " ") do
    a <> sep <> b
  end

end
