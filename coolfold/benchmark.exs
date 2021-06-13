list = Enum.to_list(1..10_000)

Benchee.run(%{
  "Coolfold foldl" => fn -> list |> Coolfold.foldl(0, fn x, y -> x + y end) end,
  "Native foldl" => fn -> list |> List.foldl(0, fn x, y -> x + y end) end
})

Benchee.run(%{
  "Coolfold foldr" => fn -> list |> Coolfold.foldr(0, fn x, y -> x - y end) end,
  "Native foldr" => fn -> list |> List.foldr(0, fn x, y -> x - y end) end
})
