# Loops: For

for counter in 1..100
  if (counter % 3 == 0) && (counter % 5 == 0)
	puts 'FizzBuzz'
  elsif (counter % 3 == 0)
  	puts 'Fizz'
  elsif (counter % 5 == 0)
  	puts 'Buzz'
  else
  	puts counter
  end
end


# Loops: While

counter = 1
while counter <= 100
  if (counter % 3 == 0) && (counter % 5 == 0)
	puts 'FizzBuzz'
  elsif (counter % 3 == 0)
  	puts 'Fizz'
  elsif (counter % 5 == 0)
  	puts 'Buzz'
  else
  	puts counter
  end
  counter += 1
end

#Iteration 3
# Add a new condition: if the number starts with the number 1, add “Bang” to the result. 
#So for example, now your output should look like this:
#
#Iteration 4
#
#It’s getting harder and harder to add new conditions! An endless chain of elsif conditions is messy and difficult to maintain. Rewrite your code to make it simpler (this is called “refactoring”).
#
#Start by deleting all of the if/elsif/else from your loop. Create a variable inside your loop that represents the number or string that will be printed. We can call it result. For now, it will just be an empty string.
#
#result = ""
#Now, write some conditions that dictate what will be saved in this variable. As you might remember, we can concatenate strings (add them together) using the + operator. For example:
#
#if num % 3 == 0
#  result = result + "Fizz"
#end
#There is another way to do this. The shovel operator << can be used to concatenate strings. So we can also rewrite the previous statement like this:
#
#if num % 3 == 0
#  result << "Fizz"
#end
#Write the rest of the if statements for the conditions we’ve set. Don’t forget to print the result.