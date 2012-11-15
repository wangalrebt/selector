require 'nokogiri'
require 'open-uri'

address = 'http://www.bloomberg.com/'
css_selector = '.news_item'
doc = Nokogiri::HTML(open(address))
contents = Array.new
count = 0
doc.css(css_selector).each do |title|
  contents[count] = title
  count += 1
end

contents.each do |record|
  puts record.child
end