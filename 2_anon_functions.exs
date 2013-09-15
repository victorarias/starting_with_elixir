# Anonymous Functions

add = fn a, b -> a + b end

add.(1, 2) # => 1 + 2

# Parameters pattern matching, aka "Overloading"

printer = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

printer = fn n ->
  printer.(rem(n, 3), rem(n, 5), n)
  |> to_string
  |> IO.puts
end

fizzbuzz = fn ->
  1..15 |> Enum.each printer
end

# The & notation

# the following function
Enum.map [1, 2, 3], fn n -> n * n end
# is the same as
Enum.map [1, 2, 3], &1 * &1

# the following function
add = fn a, b -> a + b end
# is also the same as
add = &1 + &2

# but the & notation requires some attention
# the following scenario is tricky
add_and_sum = { &1 + &2, &1 * &2 }  # => {&Kernel.+/2, &Kernel.*/2}
# the above function isn't what you expect
# what you really want is
add_and_sum = &{ &1 + &2, &1 * &2 } # => #Function<12.80484245 in :erl_eval.expr/5>

