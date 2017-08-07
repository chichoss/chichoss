# scraping_etsy.rb
require "open-uri"
require "nokogiri"


puts "What are you searching on endclothing ?"
article = gets.chomp

# 1. We get the HTML file thanks to open-uri
file = open("http://www.colette.fr/catalogsearch/result/?q=#{article}")

# 2. We build a Nokogiri document from this file
doc = Nokogiri::HTML(file)

# 3. We search every elements with class="card" in our HTML doc

doc.search(".col-xs-12").each do |card|
  # 4. for each element found, we extract its title and print it
  title = card.search(".li-name").text.strip
  price = card.search(".price").text.strip
  puts title
  puts price
end

