class CreateSpecificMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :specific_menus do |t|
      t.integer :price
      t.string :name
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
