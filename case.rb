fav_color ="blue"

case fav_color
when "red"
  puts "Red like fire!"
when "orange"
  puts "Orange, like well... an orange."
when "yellow"
  puts "Yellow daffodils are so pretty in the spring!"
when "green"
  puts "Have you been to the Emerald City in Oz?"
when "blue"
  puts "Blue like the sky!"
when "purple"
  puts "Purple plums are the tastiest."
else
  puts "Hmm, well I don't know what that color is!"
end


# previous code, rewritten using case statement above
fav_color ="blue"
if (fav_color == "red")
  puts "Red like fire!"
elsif (fav_color == "orange")
  puts "Orange, like well... an orange."
elsif (fav_color == "yellow")
  puts "Yellow daffodils are so pretty in the spring!"
elsif (fav_color == "green")
  puts "Have you been to the Emerald City in Oz?"
elsif (fav_color == "blue")
  puts "Blue like the sky!"
elsif (fav_color == "purple")
  puts "Purple plums are the tastiest."
else
  puts "Hmm, well I don't know what that color is!"
end
