defmodule ListFilter do
  require Integer

  def call(list), do: filter(list)

  defp filter([_head | _tail] = list) do
    list
    |> Stream.filter(fn elem -> String.match?(elem, ~r/^-[0-9]|^[0-9]*$/) end)
    |> Stream.map(fn elem -> String.to_integer(elem) end)
    |> Enum.count(fn elem -> Integer.is_odd(elem) end)
  end

  defp filter([]), do: 0
end
