require 'nokogiri'
require 'open-uri'

class SelectorCssTest < ActiveRecord::Base
  set_table_name "selector_css"
  attr_accessible :css, :selector_url_test_id, :category_id
  has_many :selector_details, :foreign_key => :selector_css_id
  belongs_to :selector_url_test, :class_name => "SelectorUrlTest"
  belongs_to :categories, :class_name => "SelectorCategories", :foreign_key => :category_id

  # @param [get_url_css] id
  def self.get_url_css(id)
    css = SelectorCssTest.find(id)
    result ={}
    result["css"] = css.css
    url = SelectorUrlTest.find(css.selector_url_test_id)
    result["url"] = url.url
    return result
  end

  # @return contents of url and css
  def get_selector
    url = selector_url_test.url
    if url.nil? or css.nil?
      return false
    end
    doc = Nokogiri::HTML(open(url))
    contents = Array.new
    doc.css(css).each do |title|
      contents<<title
    end
    contents
  end


  def get_selector_href
    href = []
    contents = get_selector
    contents.each do |content|
      tmp = content.key?("href") ? content[:href] : nil
      href<<tmp
    end
    href
  end

  def get_selector_address
    href = get_selector_href
    url = selector_url_test.url
    addresses = []
    href.each do |h|
      if h.nil?
        addresses<<nil
      else
        addresses<<"#{url}#{h}"
      end
    end
  end

  def get_html
    html = []
    contents = get_selector
    contents.each do |content|
    end
  end


  # @return [Object] html
  # @param [String] url
  # @param [String] text
  def self.html_builder(url, text)
    html = <<-HTML
    <a href=#{url} target="_blank">#{text}</a>
    HTML
    html.html_safe
  end

end
