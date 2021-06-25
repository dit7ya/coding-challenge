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

Documentation can be found at [Coolfold — coolfold v0.1.0](https://coding-challenge-delta.vercel.app/Coolfold.html#summary) and can be generated with

`mix docs`

### Benchmarks

Benchmarks can be written at `benchmark.exs` and can be run with

`mix compile`
`mix run benchmark.exs`

A primitive set of benchmarks, comparing the implementations with native Elixir implementations result into the following:

``` sh
Operating System: Linux
CPU Information: AMD Ryzen 5 4500U with Radeon Graphics
Number of Available Cores: 6
Available memory: 7.25 GB
Elixir 1.11.3
Erlang 24.0

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 0 ns
parallel: 1
inputs: none specified
Estimated total run time: 14 s

Benchmarking Coolfold foldl...
Benchmarking Native foldl...

Name                     ips        average  deviation         median         99th %
Native foldl         12.77 K       78.30 μs     ±3.75%       77.73 μs       90.93 μs
Coolfold foldl       12.11 K       82.59 μs     ±3.31%       82.06 μs       93.38 μs

Comparison:
Native foldl         12.77 K
Coolfold foldl       12.11 K - 1.05x slower +4.29 μs
Operating System: Linux
CPU Information: AMD Ryzen 5 4500U with Radeon Graphics
Number of Available Cores: 6
Available memory: 7.25 GB
Elixir 1.11.3
Erlang 24.0

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 0 ns
parallel: 1
inputs: none specified
Estimated total run time: 14 s

Benchmarking Coolfold foldr...
Benchmarking Native foldr...

Name                     ips        average  deviation         median         99th %
Coolfold foldr       10.11 K       98.87 μs    ±10.50%       99.17 μs      137.41 μs
Native foldr          9.80 K      102.07 μs    ±12.12%      104.27 μs      150.52 μs

Comparison:
Coolfold foldr       10.11 K
Native foldr          9.80 K - 1.03x slower +3.20 μs
```



### Tests

Tests and doctests can be run with

`mix test`
