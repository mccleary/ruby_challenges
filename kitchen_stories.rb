# scrape recipes from https://kitchenstories.io/en/search?search=chocolate

puts "What ingredient would you like recipes for?"
ingredient = gets.chomp
url = "https://kitchenstories.io/en/search?search=#{ingredient}"

# Get the HTML file from the URL
html_file = open(url)
# Build a Nokogiri doc from the file
html_doc = Nokogiri::HTML(html_file)

# Search for a class in Nokogiri doc and iterate on results
html_doc.search(".tile-container").each do |recipe|
  link = recipe.search(".tile-link").attribute("href").value
  recipe_name = recipe.search(".search-tile-title").text
  infos = recipe.search(".search-item-subtitle").text
  description = recipe.search(".search-tile-description").text

  puts link
  puts recipe_name
  puts infos
  puts description
  puts "*" * 50
end
