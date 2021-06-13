# Coolfold

Coolfold provides implementations of `foldl` and `foldr` functions.

`fold` is a function that takes a function, an accmulator, and a list, and returns a value by reducing the list using the given function.

(Pretend the following is rendered as real Latex. Seems like there is no easy way to render \LaTex on Github READMEs, I wasted last twenty minutes and 4 commits on this.)

```math
f: A \times B \rightarrow B
fold: [A] \times B \times B^{A \times B} \rightarrow B
fold: ([a], acc, f) \mapsto b
```

### Docs

Documentation can be found at

### Benchmarks

Benchmarks can be run with
`mix compile`

`mix run benchmark.exs`

### Tests

Tests and doctests can be run with
`mix test`
