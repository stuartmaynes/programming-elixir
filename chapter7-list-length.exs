defmodule MyList do
  # Returns the length of the list param
  def len([]), do: 0
  def len([ _head|tail ]), do: 1 + len(tail)

  # Returns a list with the values of the orignal list squared
  def square([]), do: []
  def square([ head|tail ]), do: [ head*head | square(tail) ]

  # Return a list with one added to each of the values
  def add_one([]), do: []
  def add_one([ head|tail ]), do: [ head+1 | add_one(tail) ]
end
