class AddStatusToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :status, :string, default: "active"
  end
end
