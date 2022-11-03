class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :dayTime, :user_id, :menu_item_id, :total
  belongs_to :user
end
