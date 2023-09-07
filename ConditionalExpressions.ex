defmodule Condition1 do
  def ifelse do
    x = 1
    #IO.puts "HelloXWorld"
    if x > 0 do
      IO.puts "Hello"
    else
      IO.puts "World"
    end
  end
end
#spawn Condition1, :ifelse, []


defmodule Condition2 do
  def trycase do
    x = "a"
    case x do
      "a" ->
        IO.puts "AAA Hello World"
      "b" ->
        IO.puts "BB Hello World"
      #default case
      _ ->
        IO.puts "DEFAULT Hello World"
  end
end
end
#spawn Condition2, :trycase, []

defmodule Condition3 do
  def trycasewhen do
    x = 0
    case x do
      x when x > 1 ->
        IO.puts("Hello, Greater than 1")
      x when x < 1  and x > -1 ->
        IO.puts("Hello, Between -1 and 1")
      t when x < -1 ->
        IO.puts("Hello, Less than -1")
  end
end
end
#spawn Condition3, :trycasewhen, []
defmodule Condition4 do
  def trycond do
    x = 1
    cond do
      x < 0 ->
        IO.puts("x is negative")
      x == 0 ->
        IO.puts("x is zero")
      x > 0 ->
        IO.puts("x is positive")
      true ->
        IO.puts("This is the default case")
    end
  end
end
#spawn Condition4, :cond, []
