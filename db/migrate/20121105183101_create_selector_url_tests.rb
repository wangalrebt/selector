class CreateSelectorUrlTests < ActiveRecord::Migration
  def change
    create_table :selector_url_tests do |t|
      t.string :url

      t.timestamps
    end
  end
end
