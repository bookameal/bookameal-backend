class User < ApplicationRecord

    enum :user_type, { regular: 0, admin: 1 }
    has_secure_password
    has_many :menu_items
    
    has_many :orders
    
end
