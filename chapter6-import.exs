# Basic example using imports
defmodule Books do

  def list(names) do
    List.flatten names
  end

  def flat(names) do
    import List, only: [flatten: 1]
    flatten names
  end

end
