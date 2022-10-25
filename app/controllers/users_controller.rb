class UsersController < ApplicationController

    def create_user
        user = User.create!(user_params)
        user_session(user.id, user.user_type)
        if user.valid?
           app_response(status_code: 201, message: "Account created succesfully", body: user, serializer: UserSerializer)
        else
            app_response(status_code: 422, message: "Invalid input", body: user.errors.full_messages)
        end
    end


    def login_user
        user = User.find_by(user_name: params[:user_name])
        user_session(user.id, user.user_type)
        if user&.authenticate(params[:password])
            app_response(status_code: 200, message: "Logged in succesfully", body: user, serializer: UserSerializer)
        else
            app_response(status_code: 401, message: "Invalid user_name  or password")
        end
    end

    def logout_user
        delete_user_session
        app_response(status_code: 200, message: "Logged out succesfully")
    end

    def render_404
        not_found
    end

    private

    def user_params
        params.permit(:user_name, :email, :password, :user_type)
    end

    def  user_session user_id,user_type
        session[:user_id] ||= user_id
        session[:user_type] ||= user_type
    end

    def delete_user_session
        session.delete :user_id
        session.delete :user_type
    end
end
