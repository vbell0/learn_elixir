defmodule ListLength do
  @spec call(list()) :: {:error, binary()} | {:ok, number()}
  def call([]) do
    {:error, "Is not list element"}
  end

  def call(list) when is_list(list) do
    list_length(list, 0)
  end

  defp list_length([], acc) do
    {:ok, acc}
  end

  defp list_length([_head | tail], acc) do
    list_length(tail, acc + 1)
  end
end
