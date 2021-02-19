# Basic example using the pipe operator
defmodule Multiple do

  def by_ten(a) do
    a * 10
  end

  def by_hundred(a) do
    by_ten(a)
      |> by_ten
  end

  def by_thousand(a) do
    by_hundred(a)
      |> by_ten
  end

  def by_ten_thousand(a) do
    by_thousand(a)
      |> by_ten
  end

  def by_hundred_thousand(a) do
    by_thousand(a)
      |> by_hundred
  end

end
