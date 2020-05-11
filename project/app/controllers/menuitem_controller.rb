class MenuitemController < ApplicationController
  def index
    render "/menuitem/menuitemspage"
  end

  def create
    new_menuitem = Menuitem.create!(
      name: params[:name],
      category: params[:category],
      price: params[:price],
      #menu_id: menu.id,
      description: params[:description],
    )
    new_menuitem.save
    redirect_to menu_item_path
  end

  def destroy
    id = params[:id]
    order = MenuItem.find(id)
    order.destroy
    redirect_to menu_items_path
  end
end
