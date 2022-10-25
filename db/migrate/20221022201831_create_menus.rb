class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.integer :menu_items_id
      t.datetime :day

      t.timestamps
    end
  end
end
