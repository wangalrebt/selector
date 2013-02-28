class CreateSelectorDetails < ActiveRecord::Migration
  def change
    create_table :selector_details do |t|
      t.string :headline
      t.string :link
      t.integer :selector_css_id

      t.timestamps
    end
  end
end
