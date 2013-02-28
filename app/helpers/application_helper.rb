module ApplicationHelper
  require 'nokogiri'

  def fullTitle(pageTitle)
    if pageTitle.empty?
      "empty title"
    else
      pageTitle
    end
  end

  # @return [Nokogiri] html node array
  # @param [String] address
  # @param [String] css_selector
  def get_selector (address, css_selector)
    if address.nil? or css_selector.nil?
      return false
    end
    require 'open-uri'


    doc = Nokogiri::HTML(open(address))
    contents = Array.new
    doc.css(css_selector).each do |title|
      contents<<title
    end
  end

  # @return [String]
  # @param [Nokogiri] content
  def get_selector_href (content)
    content.key?("href") ? content[:href] : nil
  end

  # @return [String]
  # @param [String] url
  # @param [String] href
  def get_abs_address (url, href)
    url+href
  end

  # @return [Object] html
  # @param [String] url
  # @param [String] text
  def html_builder(url, text)
    html = <<-HTML
    <a href=#{url} target="_blank" class="btn btn-link">#{text}</a>
    HTML

    html.html_safe
  end

  # @param [Nokogiri] content
  # @param [String] url
  def get_html(content, url)
    href = get_selector_href (content)
    return "css is not working" if href.nil?
    html_builder(url+href, content.text)

  end

end
