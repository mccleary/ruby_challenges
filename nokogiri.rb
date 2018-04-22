require "nokogiri"  #tells script it needs nokogiri to work
require "open-uri"  #a dependency reuired by Nokogiri

doc = Nokogiri::HTML(open("http://www.skillcrush.com"))

# puts doc  # lists all info from doc variable in terminal

# puts doc.inspect   # inspects objects
# puts doc.search("h1")   #search for all h1 tags
# puts doc.search("h1.jumbo")
# puts doc.css(".jumbo")    #can also use the css method
# puts doc.css(".jumbo").inner_html    # use the inner html method to get just the text
# puts doc.css(".jumbo").children[0]   #can also use the children method
# puts doc.title

puts doc.methods   #gives you list of all available methods for Nokogiri 
