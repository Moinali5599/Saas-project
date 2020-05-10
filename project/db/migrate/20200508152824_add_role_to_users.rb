class AddRoleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :string
    change_column_default :menus, :role, "user"
  end
end
