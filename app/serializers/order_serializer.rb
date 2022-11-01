class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :dayTime, :total, :user_id, :menu_item_id
  belongs_to :user
end
