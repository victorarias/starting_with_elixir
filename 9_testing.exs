# Elixir bundles a simple yet effective testing library
# is worth noting that the 'assert' used below
# is actually a macro, and because of that
# it can "see" the code being asserted
# and print meaninful error messages when the assert fails

ExUnit.start

defmodule Tests do
  use ExUnit.Case

  test "fuu" do
    assert true
  end

  test "introspection" do
    assert 1 == 2
  end

  test "introspection 2" do
    assert 1 > 3
  end

  test "introspection 3" do
    assert 1 >= 3
  end
end

#  1) test introspection (Tests)
#     ** (ExUnit.ExpectationError)
#                  expected: 1
#       to be equal to (==): 2
#     at 9_testing.exs:11
#
#  2) test introspection 2 (Tests)
#     ** (ExUnit.ExpectationError)
#              expected: 1
#       to be more than: 3
#     at 9_testing.exs:15
#
#  3) test introspection 3 (Tests)
#     ** (ExUnit.ExpectationError)
#                          expected: 1
#       to be more than or equal to: 3
#     at 9_testing.exs:19

