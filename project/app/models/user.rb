class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  def self.clerk
    all.where(role: "clerk")
  end
  def self.user
    all.where(role: "user")
  end
end
