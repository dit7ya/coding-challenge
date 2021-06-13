defmodule Coolfold do
  @moduledoc """
  The `Coolfold` module provides the foldl and foldr functions for lists. It can be extended for other sequential types
  such as ranges with slight modification to the core logic.
  """

  @doc """
  The `foldl` function takes a list of type `A`, an accumulator of type `B` ("starting value"), and a function
  `f: (A,B) -> B` and returns a value of type `B` by _folding from the left_. This is a tail recursive implementation of left fold which works
  for very big list inputs without stack overflow.

  The accumulator is usually a value that acts an identity for the binary operator `f`, for example, `0` for summing.

  ## Examples

      iex> Coolfold.foldl([1,2,3,4], 0, fn x,y -> x+y end)
      10

      iex> Coolfold.foldl([1,2,3,4], 0, fn x,y -> x-y end)
      2
  """

  @spec foldl([typeA], typeB, (typeA, typeB -> typeB)) :: typeB when typeA: var, typeB: var
  def foldl([], acc, _f) do
    acc
  end

  def foldl([head | tail], acc, f) do
    foldl(tail, f.(head, acc), f)
  end

  @doc """
  The `foldr` function is like the `foldl` function but _folds from the right_ instead. The results are different for non-associative functions.
  This implementation is not tail recursive and can cause stack overflows for very big input lists.


  ## Examples

      iex> Coolfold.foldr([1,2,3,4], 0, fn x,y -> x+y end)
      10

      iex> Coolfold.foldr([1,2,3,4], 0, fn x,y -> x-y end)
      -2
  """

  @spec foldr([typeA], typeB, (typeA, typeB -> typeB)) :: typeB when typeA: var, typeB: var
  def foldr([], acc, _f) do
    acc
  end

  def foldr([head | tail], acc, f) do
    f.(head, foldr(tail, acc, f))
  end
end
