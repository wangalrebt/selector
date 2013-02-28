module SelectorDetailsHelper
  require 'nokogiri'
  require 'open-uri'


  def ab_test(url)
    doc = Nokogiri::HTML(open(url))
    contents = ""
    doc.at_css('h1').parent.children.each do |element|
      contents<<element.text if element.attribute_nodes != "text/javascript"
    end
    contents
  end

end
