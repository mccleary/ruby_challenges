# def my_first_method
#   puts "This is my first method!"
# end
#
# my_first_method


# example 1
def addition_method
  puts 2 + 2
end
addition_method

# or as:
def addition_method
  number = 2 + 2
  puts number
end
addition_method


# example 2
def greeting(firstname, lastname)
  puts "Good morning #{firstname.capitalize} #{lastname.capitalize}!"
end

greeting("Emily", "Davis")


# example 3
def greeting(name, time)
  puts "Good #{time} #{name.capitalize}!"
end
greeting("Emily", "Morning")



# refactor example 1 with arguments
def math_method(num1, num2)
  number = num1 + num2
  puts number
end

math_method(2, 2)





# refactor the greeting method using two methods
def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def greeting(name)
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
    time = "morning"
  elsif(current_hour > 12 && current_hour < 18)
    time = "afternoon"
  elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	puts "Good #{time}, #{name.capitalize}!"
end
greeting("Emily")
