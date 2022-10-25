class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.references :users, foreign_key: true
      # t.references :admin, foreign_key: true
      # t.references :menus, foreign_key: true

      t.timestamps
    end
  end
end
