class User < ApplicationRecord

    enum :user_type, { regular: 0, admin: 1 }
    has_secure_password
    has_many :menu_items
    has_many :orders, through: :menu_items
    # scope :regular_users, -> { where(user_type: 0)}
    # scope :admin_users, -> { where(user_type: 1)}
    validates :email, uniqueness: true, presence: true, on: :account_setup
    validates :user_name, uniqueness: true, presence: true
end
