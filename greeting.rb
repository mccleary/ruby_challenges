# example 1
# def greeting(firstname, lastname)
#   puts "Good morning #{firstname.capitalize} #{lastname.capitalize}!"
# end
#
# greeting("Emily", "Davis")



# example 2
# def greeting(name, time)
#   puts "Good #{time} #{name.capitalize}!"
# end
#
# greeting("Emily", "Morning")



# example 3
# refactor the greeting method using two methods
# def determine_current_hour
# 	current_time = Time.new
# 	current_hour = current_time.hour
# end
#
# def greeting(name)
# 	current_hour = determine_current_hour
# 	if(current_hour > 3 && current_hour < 12)
#     time = "morning"
#   elsif(current_hour > 12 && current_hour < 18)
#     time = "afternoon"
#   elsif(current_hour > 18 || current_hour < 2)
# 		time = "evening"
# 	end
# 	puts "Good #{time}, #{name.capitalize}!"
# end
# greeting("Emily")



# example 4
# refactor using multiple methods for any user name
puts "Hi! What's your name?"

def user_name
	user_name = gets
end

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def greeting(user_name)
	current_hour = determine_current_hour
  name = user_name
	if(current_hour > 3 && current_hour < 12)
    time = "morning"
  elsif(current_hour > 12 && current_hour < 18)
    time = "afternoon"
  elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	puts "Good #{time}, #{name.capitalize}"
end

greeting(user_name)
