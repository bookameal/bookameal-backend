class AddTotalsToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :total, :integer
  end
end
