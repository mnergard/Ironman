cities = ["miami", "madrid", "barcelona"]

total_length = cities.reduce(0.0) do |sum, city|
	sum + city.length	
end
puts total_length / cities.length #.to_f
