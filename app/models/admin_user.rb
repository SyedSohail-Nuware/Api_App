class AdminUser < ApplicationRecord

  has_secure_password

  before_save { self.email = email.downcase }
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum:6, maximum:24}
end
