# class MenusController < ApplicationController

#     before_action :authorize
#     before_action :authorize_potential_admin
#     skip_before_action :authorize_potential_admin, only: [:get_menus]


#     #crud action for menu meals by admin
#     def create_menus
#         user = User.find(session[:user_id])
#         app_response(status_code: 401, message:"You do not have the permission to add a menu to the menu-list") unless user.valid?
#         menu = user.menus.create(menu_params)
#         app_response(status_code: 201, message: "Created succesfully", body: menu)
#     end

#     def get_menus
#         menus = Menu.all
#         app_response(status_code: 200, body: menus)
#     end

#     def update_menu
#         menu = Menu.find(params[:menu_id])
#         app_response(status_code: 401, message:"Not a valid menu") unless menu.valid?
#         menu.update(menu_params)
#         app_response(status_code: 200, message: "Updated succesfully", body: menu)
#     end

#     def delete_menus
#         menu = Menu.find(params[:menu_id])
#         app_response(status_code: 401, message:"Not a valid menu") unless menu.valid?
#         menu.destroy
#         app_response(status_code: 200, message: "Deleted succesfully")
#     end

#     private

#     def menu_params
#         params.permit(:name, :price, :category, :image_url, :description)
#     end

# end
