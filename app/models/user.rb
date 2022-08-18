class User < ApplicationRecord
  has_many :order
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum:6, maximum:24}

  
  
end
