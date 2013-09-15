# Anonymous Functions

add = fn a, b -> a + b end

add.(1, 2)

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

Enum.map [1, 2, 3], fn n -> n * n end
# is the same as
Enum.map [1, 2, 3], &1 * &1

add = fn a, b -> a + b end
#is the same as
add = &1 + &2

add_and_sum = { &1 + &2, &1 * &2 }  # => {&Kernel.+/2, &Kernel.*/2}
# is not the same as
add_and_sum = &{ &1 + &2, &1 * &2 } # => #Function<12.80484245 in :erl_eval.expr/5>

