defmodule MyList do
  # Returns the length of the list param
  def len([]), do: 0
  def len([ _head|tail ]), do: 1 + len(tail)

  # Returns a list with the values of the orignal list squared
  def square([]), do: []
  def square([ head|tail ]), do: [ head*head | square(tail) ]
end
