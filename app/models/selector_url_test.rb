class SelectorUrlTest < ActiveRecord::Base
  attr_accessible :url
  has_many :selector_css_tests, :class_name => "SelectorCssTest"
end
