class AddCartToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :cart_items, :text
  end
end
