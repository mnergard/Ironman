["carrots", "apples", "fishes"].each do |name|
	puts name
end
puts "---next---"
{name: "Magnus", surname: "Nergård"}.each do |a, b| # name: "Magnus is a "," seperates. B follows."
	puts "#{a} #{b}" #name: and surname: allows it to be read differently. try to run the code.

end
puts "---next---"
classmates = ["Tristan", "Ignacio", "Fernanda"]
classmates.each do |greet|
	puts "Good morning #{greet}"
end
puts "---next---"
total = []
[1,2,3].each do |item|
	total.push(item+1)
end
puts total #calls

added_one = [1,2,3].map do |item|
	item+1
end
puts added_one    #calls
puts "---next---"
cities = ["miami", "madrid", "barcelona"]
capitalized_cities = cities.map {|item| item.capitalize}



puts pretty_cities
