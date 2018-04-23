# Using Nokogiri to scrape the html for a Martha Stewart sandwich recipe

# require the Nokogiri gem and its dependencies
require "nokogiri"
require "open-uri"

# get the HTML page for the sandwich recipe
doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))


# search list to find the correct element you need
# search = doc.css("ul")
# puts search


# shows just the text from the list of ingredients from the ul class
list = doc.css("components-data")
# list = doc.css(".component-text").inner_html
# puts list

puts "This is a great sandwich recipe from Martha Stewart"
puts doc.title

# lists just the ingredients text
list = doc.css(".component-text").inner_html
puts list


# directions = doc.css("ul.directions-item-text").inner_html
# puts directions

# loop through the ingredients and lists just the ingredients text
# list.each do |n|
#   puts n.inner_html
# end
