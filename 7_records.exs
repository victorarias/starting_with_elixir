defrecord Person, first_name: nil, last_name: nil, age: nil, country: "Brazil"

person = Person.new first_name: "Victor", last_name: "Arias", age: 26
# => Person[first_name: "Victor", last_name: "Arias", age: 26, country: "Brazil"]
Person[first_name: "Victor", last_name: "Arias", country: "Sweden"] # <- compile time!
# => Person[first_name: "Victor", last_name: "Arias", age: nil, country: "Sweden"]

another_person = {Person, "Victor", "Arias", 26, "Brazil"}
# => Person[first_name: "Victor", last_name: "Arias", age: 26, country: "Brazil"]
