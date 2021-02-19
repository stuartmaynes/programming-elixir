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

  # Maps a callaback to each of the items in the list
  def map([], _func), do: []
  def map([ head|tail ], func), do: [ func.(head) | map(tail, func) ]

  # Compute the sum of a list of integers
  def sum([ head|tail ]), do: head + sum(tail)
  def sum([]), do: 0

  # Filter a list based on a callback
  def filter([], _func), do: []
  def filter([ head|tail ], func) do
      if func.(head) do
        [ head|filter(tail, func) ]
      else
        filter(tail, func)
      end
  end
end
