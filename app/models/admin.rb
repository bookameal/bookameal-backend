class Admin < ApplicationRecord
    has_secure_password
    has_many :menuitems
    has_many :menus, through: :menuitems
end
