class MenuController < ApplicationController
  skip_before_action :verify_authenticity_token
  #skip_before_action :ensure_user_logged_in
  def index
    render "menupage"
  end

  def create
    menu_name = params[:menu_name]
    menu_desc = params[:menu_desc]
    new_menu = Menu.create!(menu_name: menu_name, menu_desc: menu_desc)
    redirect_to menu_path
  end
end
