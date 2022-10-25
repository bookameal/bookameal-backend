class User < ApplicationRecord

    enum :user_type, { regular: 0, admin: 1 }
    has_secure_password
    has_many :menu_items
<<<<<<< HEAD
    
    has_many :orders
    
=======
    has_many :orders, through: :menu_items
    validates :email, uniqueness: true,  on: :account_setup
    validates :user_name, uniqueness: true
>>>>>>> 6b389dc80328ad75b1f0b1194585cce4f0b593c2
end
