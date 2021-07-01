defmodule ListFilter do
  def call(list) do
    Enum.filter(list, fn elem -> Integer.parse(elem) != :error end)
    |> Enum.count(fn elem -> String.to_integer(elem) |> rem(2) == 0 end)
  end
end
