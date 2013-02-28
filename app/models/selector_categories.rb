class SelectorCategories < ActiveRecord::Base
  attr_accessible :category

  has_many :selector_css_tests, :foreign_key => :category_id
end
