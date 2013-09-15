dict = HashDict.new first: "Victor", last: "Arias",
  country: "Sweden", music: "Lungs from Florence + The Machine"

# Dict protocol
Dict.get dict, :music # => "Lungs from Florence + The Machine"
Dict.keys dict # => [:country, :first, :last, :music]
Dict.values dict # => ["Sweden", "Victor", "Arias", "Lungs from Florence + The Machine"]

# more in http://elixir-lang.org/docs/stable/Dict.html

set = HashSet.new [:first, :last, :country, :music]
set2 = HashSet.new [:city, :state]

# Set protocol

Set.member? set, :country # => true
Set.union set, set2 # => #HashSet<[:city, :country, :first, :last, :music, :state]>
Set.difference set, set2 # => #HashSet<[:country, :first, :last, :music]>

# more in http://elixir-lang.org/docs/stable/Set.html

# List

List.concat [1, 2], [10, 11] # => [1, 2, 10, 11]
List.flatten [[1], 2, [[[3]]]] # => [1, 2, 3]

# fold(l|r), zip, unzip, last, keyfind, keydelete, keyreplace
# more in http://elixir-lang.org/docs/stable/List.html

# Enum & Stream

Enum.each ["a", "b", "c"], IO.puts(&1)
Enum.all? [2, 4, 6], &(rem(&1, 2) == 0)
Enum.sort [1, 10, 2, 42, 17] # => [1, 2, 10, 17, 42]
