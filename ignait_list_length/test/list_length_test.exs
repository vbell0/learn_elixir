defmodule ListLengthTest do
  use ExUnit.Case, async: true

  describe "call/1" do
    test "count list elementes" do
      list = [1, 2, 3, 4, 5, 6, 7, 89]

      {:ok, result} = ListLength.call(list)

      expected_result = 8

      assert result == expected_result
    end

    test "pasing an empty list" do
      list = []

      {:error, error} = ListLength.call(list)

      expected_error = "Is not list element"

      assert error == expected_error
    end
  end
end
