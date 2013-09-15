# Modules

# this is a module with the "real" way of declaring a function

defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n - 1)
end

# this is the same, but using another syntax that is transformed
# during compile time to the syntax on the last example

defmodule Factorial2 do
  def of(0) do
    1
  end
  def of(n) do
    n * of(n - 1)
  end
end

defmodule GCD do
  def of(x, 0), do: x
  def of(x, y), do: of(y, rem(x, y))
end

# guard clauses

defmodule Factorial do # ** (FunctionClauseError) no function clause matching in Factorial.of/1
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n - 1)
end

