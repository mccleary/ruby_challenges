# Create a hash using symbols instead of strings for the keys

# regular hash
entry_01 = {
  "name" => "Luna",
  "email" => "luna@lovecats.com"
}

entry_02 = {
  "name" => "Harley",
  "email" => "harley@lovecats.com"
}

entry_03 = {
  "name" => "Bella",
  "email" => "bella@lovecats.com"
}

winner = entry_03["name"]
puts "#{winner} is the winner of the new cat tree!"


# *****************************************************************
# using symbols (without the arrow) **if using arrow, write { :name => "Luna", :email => "luna@lovecats.com" }
entry_01 = {
  name: "Luna",
  email: "luna@lovecats.com"
}

entry_02 = {
  name: "Harley",
  email: "harley@lovecats.com"
}

entry_03 = {
  name: "Bella",
  email: "bella@lovecats.com"
}

winner = entry_03[:name]
puts "#{winner} is the winner of the new cat tree!"


# *****************************************************************
# or as:
entry_01 = { name: "Luna", email: "luna@lovecats.com"}
entry_02 = { name: "Harley", email: "harley@lovecats.com"}
entry_03 = { name: "Bella", email: "bella@lovecats.com"}

winner = entry_03[:name]
puts "#{winner} is the winner of the new cat tree!"
