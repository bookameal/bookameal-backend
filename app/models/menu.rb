class Menu < ApplicationRecord
    belongs_to :menu_item
    has_many :orders
end
