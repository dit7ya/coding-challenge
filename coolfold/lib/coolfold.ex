defmodule Coolfold do
  @moduledoc """
  Documentation for `Coolfold`.
  """

  @doc """
  The fold function takes a list of type A, an accumulator of type B ("starting value"), and a function
  $f: (A\times B) -> B$ and returns a value of type B.
   world.

  ## Examples

      iex> Coolfold.hello()
      :world

  """

  @spec fold([typeA], typeB, (typeA, typeB -> typeB)) :: typeB when typeA: var, typeB: var
  def fold([], acc, _f) do
    acc
  end

  def fold([head| tail], acc, f) do
    fold(tail, f.(head, acc), f)
  end

end
