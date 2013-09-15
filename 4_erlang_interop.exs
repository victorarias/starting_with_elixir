# Erlang Interop

:io.format("~.2f~n", [5.126])
# => 5.13
# => :ok

# module 'io' from Erlang's stdlib is accessible through an atom with the same name
# so, as you can imagine, there is a io module with the function format in it :)
