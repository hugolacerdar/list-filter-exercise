defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "given a list of strings, should filter numeric values and return the quantity of odd numbers" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      expected = 3
      response = ListFilter.call(list)

      assert response == expected
    end

    test "given an empty list, should return 0" do
      list = []
      expected = 0
      response = ListFilter.call(list)

      assert response == expected
    end
  end
end
