class AdminsController < ApplicationController

    def create
        admin = Admin.create!(admin_params)
        if admin.valid?
            session[:user_id] = admin.id
            render json: admin,  status: :created
        else
            render json: {errors: admin.errors.full_messages}, status: :unprocessable_entity
        end
    end



    def show
        admin = Admin.find_by(id: session[:admin_id])
        if admin
            render json: admin, status: :created
        else
            render json: {error: "Not authorized"}, status: :unauthorized
        end
    end

    private

    def admin_params
        params.permit(:user_name, :email, :password)
    end
end
