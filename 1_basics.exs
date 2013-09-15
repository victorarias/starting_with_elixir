# "Assignment"

a = 1 # => 1
a + 4 # => 5

1 = a # => 1

2 = a # => ** (MatchError) no match of right hand side value: 1

# wtf? '=' isn't an assignment; it's a kind of "assert"

list = [1, 10, 20] # => [1, 10, 20]
[ a, b, c] = list # => a = 1; b = 10; c = 20;

# assert works here too

[z, 10, x] = list # => z = 1; x = 20;
[h, 15, j] = list # => ** (MatchError) no match of right hand side value: [1, 10, 20]

# "Joe Armstrong, the creator of Erlang, compares the equals sign in Erlang to that used in algebra.
# When you write the equation x = a + 1, you are not assigning the value of a + 1 to x.
# Instead, you’re simply asserting that the expressions x and a+1 have the same value.
# If you know the value of x, you can work out the value of a, and vice versa."
# - Dave Thomas - Programming Elixir

# Lists

list = [1, 10, 20] # => [1, 10, 20]

# Lists are immutable linked lists, so random access is expensive,
# however they can be constructed or deconstructed with pattern matching

[head | tail] = list # => head = 1; tail = [10, 20]

# Lists Operations

[1, 2, 3] ++ [4, 5, 6]  # => [1, 2, 3, 4, 5, 6]
[1, 2, 3, 4] -- [1, 3]  # => [2, 4]
1 in [1, 2, 3]          # => true

# Tuples

tuple = { 10, 20 }

# pattern matching on tuples

{ a, b } = tuple

# Atoms

# Contants, same as symbols on Ruby.
# Constant within the application and across machines

{ a, b } = { :foo, :bar }

# Keyword lists

[ fuu: "bar", goos: "fraba", life: 42 ] # => [ {:fuu, "bar"}, { :goos, "fraba" }, { :life, 42 } ]




