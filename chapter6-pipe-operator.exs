# Basic example using the pipe operator
defmodule Multiple do

  def byTen(a) do
    a * 10
  end

  def byHundred(a) do
    byTen(a)
      |> byTen
  end

  def byThousand(a) do
    byHundred(a)
      |> byTen
  end

  def byTenThousand(a) do
    byThousand(a)
      |> byTen
  end

  def byHundredThousand(a) do
    byThousand(a)
      |> byHundred
  end

end
