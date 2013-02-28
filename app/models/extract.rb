require 'nokogiri'
require 'open-uri'

class Extract

# @param [String] url
# @param [String] css
  def initialize(url, css)
    @url = url
    @css = css
  end


  # @return [Array] html node array
  # @param [String] url

  # @param [String] css
  def self.get_selector(url, css)
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

  # @return [String] href
  # @param [Nokogiri] content
  def self.get_selector_href (content)
    content.key?("href") ? content[:href] : nil
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

  # @param [Nokogiri] content
  # @param [String] url
  def self.get_html(content, url)
    href = get_selector_href (content)
    return "css is not working" if href.nil?
    html_builder(url+href, content.text)

  end

  def self.get_abs_address (url, href)
    url+href
  end

end