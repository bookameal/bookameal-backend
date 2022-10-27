class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :price, :name, :image_url, :description, :on_menu, :category_id, :user_type
end
