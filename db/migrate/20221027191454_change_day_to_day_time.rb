class ChangeDayToDayTime < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :day, :dayTime
  end
end
