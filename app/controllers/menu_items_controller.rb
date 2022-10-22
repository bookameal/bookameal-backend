class MenuItemsController < ApplicationController
    def index
        menuitems = MenuItem.all
        render json: menuitems
    end
end
