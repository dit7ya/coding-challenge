defmodule CoolfoldTest do
  use ExUnit.Case
  doctest Coolfold

  test "sums a small list of numbers" do
    assert Coolfold.fold([2, 3,4,-10], 0, fn x,y -> x+y end) == -1
  end

  test "sums a big list of numbers" do
    assert Coolfold.fold(1..10000 |> Enum.to_list(), 0, fn x,y -> x+y end) == (10000*10001)/2
  end
end
