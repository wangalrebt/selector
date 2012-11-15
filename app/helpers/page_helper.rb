module PageHelper
  def get_selector (address, css_selector)
    if address.nil? or css_selector.nil?
      return
    end
    require 'nokogiri'
    require 'open-uri'


    doc = Nokogiri::HTML(open(address))
    contents = Array.new
    count = 0
    doc.css(css_selector).each do |title|
      contents[count] = title
      count += 1
    end
    return contents
  end


end
