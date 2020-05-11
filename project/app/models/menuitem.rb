class Menuitem < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :category, presence: true

  belongs_to :menu

  def self.breakfast
    all.where("category = ?", "breakfast")
  end

  def self.lunch
    all.where("category = ?", "lunch")
  end

  def self.dinner
    all.where("category = ?", "dinner")
  end

  def self.dessert
    all.where("category = ?", "dessert")
  end

  def self.beverage
    all.where("category = ?", "beverage")
  end
  def self.snack
    all.where("category = ?", "snack")
  end
end
