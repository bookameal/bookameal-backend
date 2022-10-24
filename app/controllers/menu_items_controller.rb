class MenuItemsController < ApplicationController
    def index
        items = MenuItem.all
        render json: items
    end

    def show 
        item = find_menuitem
        render json: item
    end 

    def create 
        item = MenuItem.create(item_params)
        render json: item, status: :created
    end

    def update
        item = find_menuitem
        if item
            item.update(item_params)
           render json: item
        else
            render json: {error: "Item not found"}, status: :not_found
        end
    end

    def destroy
        item = find_menuitem
        item.destroy
        head :no_content
    end

    private 
    def find_menuitem
        MenuItem.find(params[:id])
    end

    def item_params
        params.permit(:price, :name, :image_url, :category, :description, :admin_id)
    end 

   



end
