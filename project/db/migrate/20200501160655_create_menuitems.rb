class CreateMenuitems < ActiveRecord::Migration[6.0]
  def change
    create_table :menuitems do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :type
    end
  end
end
