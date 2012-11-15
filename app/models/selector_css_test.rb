class SelectorCssTest < ActiveRecord::Base
  attr_accessible :css, :selector_url_test_id
  belongs_to :selector_url_test, :class_name => "SelectorUrlTest"
end
