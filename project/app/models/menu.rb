class Menu < ActiveRecord::Base
  validates :menu_name, presence: true
  validates :menu_desc, presence: true
  has_many :menu_items
end
