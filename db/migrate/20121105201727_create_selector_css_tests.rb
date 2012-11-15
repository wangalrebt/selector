class CreateSelectorCssTests < ActiveRecord::Migration
  def change
    create_table :selector_css_tests do |t|
      t.integer :selector_url_test_id
      t.string :css

      t.timestamps
    end
  end
end
