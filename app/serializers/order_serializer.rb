class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :day, :user_id, :menu_item_id
  belongs_to :user
end
