class OrdersController < ApplicationController
    def index
        render json: Order.all, status: :ok
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
        order.update(quantity: params[:quantity], day: params[:day], user_id: params[:user_id], menu_item_id: params[:menu_item_id],)
        render json: order, status: :accepted
    end

    def destroy
        order= Order.find_by!(id: params[:id])
        order.destroy
        render json:{}, status: :no_content
    end



    private

    def order_params
        params.permit(:user_id, :tenant_id, :day, :quantity, :order_number, :item, :unit_name, :user_id, :menu_item_id)
    end
end
