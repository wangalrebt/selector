require 'nokogiri'
require 'open-uri'

address = 'http://www.reuters.com/article/2013/02/11/us-pope-resigns-idUSBRE91A0BH20130211'
css_selector = 'h1'
doc = Nokogiri::HTML(open(address))
contents = Array.new

title="Pope's sudden resignation sends shockwaves through Church"

d = doc.search("[text()*=\"#{title}\"]")
d[2].parent.children.each do |a|
  puts a.attribute_nodes(), a.text
end


