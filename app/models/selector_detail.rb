class SelectorDetail < ActiveRecord::Base
  set_table_name 'selector_results'
  attr_accessible :headline, :link, :selector_css_id

  belongs_to :selector_css_test, :foreign_key => :selector_css_id
end
