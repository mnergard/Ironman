
fruits = {
    :apples => ["apples", 10],
    :oranges => ["oranges", 5],
    :grapes => ["grapes", 15],
    :banana => ["banana", 20],
    :watermelon => ["watermelon", 50]} #could you have done for each Item.new ?
puts "#{fruits[:apples][0]} are awesome"

apples = fruits[:apples]

puts apples