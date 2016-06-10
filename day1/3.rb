class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]
for pos in 0..homes.length-1
  puts homes[pos].name
end
puts "-------------------------------------------"
homes.each do |hm|
  puts hm.name
end
puts "--------------each--------------------------"
homes.each { |hm|
  puts "#{hm.name} in #{hm.city}"
  puts "Price: $#{hm.price} a night"
}
puts "-------------map----------------------------"
prices = homes.map do |hm|
  hm.price
end

puts prices.sort.reverse
puts "-------------reduce-------------------------"

sum_prices = prices.reduce(0.0) do |sum, price|
	sum + price
end
puts sum_prices / prices.size
puts "-------------reduce-------------------------"

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length
puts "-------------reduce-------------------------"

total_price = homes.reduce(0.0) do |sum, hm|
  sum + hm.price
end

puts "The average price is:"
puts total_price / homes.length


