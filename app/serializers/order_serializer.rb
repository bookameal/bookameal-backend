class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :dayTime, :user_id, :menu_item_id
  belongs_to :user
end
