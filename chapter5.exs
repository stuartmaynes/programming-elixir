# list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]
list_concat = fn (a, b) -> a ++ b end
IO.inspect(list_concat.([:a, :b], [:c, :d]))
IO.inspect(list_concat.([:a, :b], [:c, :d]) == [:a, :b, :c, :d])


# sum.(1, 2, 3) #=> 6
sum = fn (a, b, c) -> a + b + c end
IO.inspect(sum.(1, 2, 3))
IO.inspect(sum.(1, 2, 3) == 6)

# pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]
pair_tuple_to_list = fn ({a, b}) -> [a, b] end
IO.inspect(pair_tuple_to_list.({1234, 5678 }))
IO.inspect(pair_tuple_to_list.({1234, 5678 }) == [ 1234, 5678 ])
