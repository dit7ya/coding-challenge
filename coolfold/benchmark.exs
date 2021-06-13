list = Enum.to_list(1..10_000)

Benchee.run(%{
  "Coolfold fold" => fn -> list |> Coolfold.fold(0, fn x, y -> x + y end) end,
  "Native foldl" => fn -> list |> List.foldl(0, fn x, y -> x + y end) end
})
