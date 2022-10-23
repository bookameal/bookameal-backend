class ApplicationController < ActionController::API
    include ActionController::Cookies


    wrap_parameters format: []

    def app_response(status_code: 200, message: "Success", body: nil)
        render json: {
            status: status_code,
            message: message,
            body: body
        }, status: status_code
    end

    def authorize
        return app_response(status_code: 401, message: "You are unauthorized to view this page") unless session.include? :user_id
    end

    def authorize_potential_admin
        return app_response(status_code: 401, message: "You can not perform that action")  unless session[:user_type] == "admin"
    end

end
