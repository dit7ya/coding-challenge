defmodule CoolfoldTest do
  use ExUnit.Case
  doctest Coolfold

  test "foldl sums a small list of numbers" do
    assert Coolfold.foldl([2, 3,4,-10], 0, fn x,y -> x+y end) == -1
  end

  test "foldl sums a big list of numbers" do
    assert Coolfold.foldl(1..10000 |> Enum.to_list(), 0, fn x,y -> x+y end) == (10000*10001)/2
  end

  test "foldr sums a small list of numbers" do
    assert Coolfold.foldr([2, 3,4,-10], 0, fn x,y -> x+y end) == -1
  end

  test "foldr sums a big list of numbers" do
    assert Coolfold.foldr(1..10000 |> Enum.to_list(), 0, fn x,y -> x+y end) == (10000*10001)/2
  end
end
