defmodule SumList do
  def call(list), do: sum(list, 0)

  defp sum([head | tail], acc) do
    sum(tail, acc + head)
  end

  defp sum([], acc), do: acc
end
