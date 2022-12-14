class OrdersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
    
    def index
        render json: Order.all, status: :ok
    end

    def getTotals
        render json: Order.sum(:total), status: :ok
    end

    def getTodayTotals
        # today = Order.where(dayTime: Date.today.to_s).sum(:total)
        today = Order.where(dayTime: '2022-11-04').sum(:total)
        render json: today, status: :ok
    end

    def show
        order = Order.find_by!(id: params[:id])
        render json: order, status: :ok
    end

    def create 
        order = Order.create!(order_params)
        render json: order, status: :created
    end

    def update
        order= Order.find_by!(id: params[:id])
        order.update(quantity: params[:quantity], dayTime: params[:dayTime], menu_item_id: params[:menu_item_id],)
        render json: order, status: :accepted
    end

    def destroy
        order= Order.find_by!(id: params[:id])
        order.destroy
        render json:{}, status: :no_content
    end



    private

    def order_params
        params.permit(:quantity, :dayTime, :user_id, :menu_item_id, :total)
        # params.permit(:quantity, :dayTime, :user_id, cart_items:[])
    end

    def not_found_response
        render json: {error: "Order record not found"}, status: :not_found
    end

    def unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
