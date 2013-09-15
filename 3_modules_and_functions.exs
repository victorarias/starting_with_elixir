# Modules

# defmodule ModuleName do
#   ... content inside module...
# end

# this is a module with the "real" way of declaring a function

defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n - 1)
end

# the module below is the same as the above, but using an alternative
# syntax that is transformed during compile time
# to the syntax on the previous example

defmodule Factorial2 do
  def of(0) do
    1
  end
  def of(n) do
    n * of(n - 1)
  end
end

# pattern matching on functions happens inside modules
# and is a great way to simplify solutions

defmodule GCD do
  def of(x, 0), do: x
  def of(x, y), do: of(y, rem(x, y))
end

# guard clauses are also supported

defmodule Factorial do
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n - 1)
end
# Factorial.of(-1)
# ** (FunctionClauseError) no function clause matching in Factorial.of/1
