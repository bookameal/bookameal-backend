class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories
    end

    def show 
        categories = find_category
        render json: categories
    end 

    private 
    def find_category
        Category.find(params[:name])
    end
end
