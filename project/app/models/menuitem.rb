class Menuitem < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true
  validates :diet_type, presence: true
  belongs_to :menu
end
