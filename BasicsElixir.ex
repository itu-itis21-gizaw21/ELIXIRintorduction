#using command line iex BasicsElixir.ex to compile
defmodule Fibonacci do
  def fib(0), do: 1
  def fib(1), do: 1
  def fib(n) when n >= 2, do: fib(n-1) + fib(n-2)
end

#Fibonacci.fib 10
defmodule CalculateSum do
  def sum([]), do: 0
  def sum([ head| tail ]), do: head + sum(tail)


end

#CalculateSum.sum [1,2,3]

defmodule CalculateMap do
  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]
end

"""
CalculateMap.map [1,2,3,4,5], fn x-> x*x end
CalculateMap.map([1,2,3,4,5], &(&1*&1))
[1, 4, 9, 16, 25]
"""
# Map and sum together
## CalculateMap.map([1,2,3,4,5], &(&1*&1)) |> CalculateSum.sum
