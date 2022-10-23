class MenuItemsController < ApplicationController
    def index
        menuitems = MenuItem.all
        render json: menuitems
    end

    def show 
        menuitem = find_menuitem
        render json: menuitem
    end 

    private 
    def find_menuitem
        MenuItem.find(params[:id])
    end

end
