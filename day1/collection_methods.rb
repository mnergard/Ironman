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
puts homes[0].name
puts homes[1].name
puts homes[2].name
puts homes[3].name
puts homes[4].name
puts"-------------------------"
for pos in 0..4
  puts homes[pos].name
end
homes.each do |hm|
  puts hm.name
end
homes.each { |hm| #same as each do
  puts hm.name
}
puts "---------------------"
#sorted = homes.sort do |home1, home2|
#	  home1.name <=> home2.name
#
#end
#puts sorted
