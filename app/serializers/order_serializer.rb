class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :dayTime, :user_id, :cart_items
  belongs_to :user
end
