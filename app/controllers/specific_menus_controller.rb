class SpecificMenusController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
    
    def index
        render json: SpecificMenu.all, status: :ok
    end

    def show
        specific_menu = SpecificMenu.find_by!(id: params[:id])
        render json: specific_menu, status: :ok
    end

    def create 
        specific_menu = SpecificMenu.create!(specific_menu_params)
        render json: specific_menu, status: :created
    end

    def update
        specific_menu = SpecificMenu.find_by!(id: params[:id])
        specific_menu.update(quantity: params[:quantity])
        render json: specific_menu, status: :accepted
    end

    def destroy
        specific_menu = SpecificMenu.find_by!(id: params[:id])
        specific_menu.destroy
        render json:{}, status: :no_content
    end

    private
    def specific_menu_params
        params.permit(:price, :name, :image_url, :description)
    end

    def not_found_response
        render json: {error: "Specific Menu record not found"}, status: :not_found
    end

    def unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
