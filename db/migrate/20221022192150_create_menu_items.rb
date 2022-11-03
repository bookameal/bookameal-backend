class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.float :price
      t.string :name
      t.string :image_url
      t.string :description
      t.boolean :on_menu
      t.integer :category_id
      t.boolean :is_admin

      t.timestamps
    end
  end
end
