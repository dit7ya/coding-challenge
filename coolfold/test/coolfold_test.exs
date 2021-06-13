defmodule CoolfoldTest do
  use ExUnit.Case
  doctest Coolfold

  test "greets the world" do
    assert Coolfold.hello() == :world
  end
end
