class SelectorUrlTest < ActiveRecord::Base
  set_table_name 'selector_urls'
  attr_accessible :url
  has_many :selector_css_tests, :class_name => "SelectorCssTest"

  def self.begin
    SelectorUrlTest.all.each do |url|
      url.selector_css_tests.each do |css|
        contents = Extract.get_selector(url.url, css.css)
        contents.each do |content|
          link = Extract.get_abs_address(url.url, Extract.get_selector_href(content))
          css.selector_details.create(:headline => content.text, :link => link)
        end
      end
    end
    true

  end



end
