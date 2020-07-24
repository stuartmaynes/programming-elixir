# I’m thinking of a number between 1 and 1000....
# The most efficient way to find the number is to guess
# halfway between the low and high numbers of the range.
# If our guess is too big, then the answer lies between
# the bottom of the range and one less than our guess.
# If our guess is too small, then the answer lies between
# one more than our guess and the end of the range.
# Your API will be guess(actual, range), where range is
# an Elixir range. Your output should look similar to this:
# iex> Chop.guess(273, 1..1000) Is it 500
# Is it 250
# Is it 375
# Is it 312
# Is it 281
# Is it 265
# Is it 273
# 273
defmodule Chop do

    def guess(needle, first.._last) when needle == first do
        "Your number is #{first}"
    end

    def guess(needle, _first..last) when needle == last do
        "Your number is #{last}"
    end

    def guess(needle, first..last) do
        mid = div(first + last, 2)

        IO.puts("Is it #{mid}?")

        if needle > mid do
            guess(needle, mid..last)
        else
            guess(needle, first..mid)
        end
    end

end
