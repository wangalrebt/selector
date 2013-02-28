class CreateSelectorCssTests < ActiveRecord::Migration
  def change
    create_table :selector_css_tests do |t|
      t.integer :selector_url_test_id
      t.string :css
      t.integer :category_id
      t.timestamps
    end
  end
end
