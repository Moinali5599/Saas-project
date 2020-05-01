class CreateMenu < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name
    end
  end
end
