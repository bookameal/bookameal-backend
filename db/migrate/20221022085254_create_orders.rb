class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.datetime :day
      t.integer "user_id", null: false
      t.integer "menu_item_id", null: false
    end
  end
end
