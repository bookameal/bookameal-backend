class User < ApplicationRecord

    enum :user_type, { regular: 0, admin: 1 }
    has_secure_password
    has_many :menuitems
    has_many :menus, through: :menuitems

    has_many :orders
    has_many :menus, through: :orders
end
