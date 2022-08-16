class User < ApplicationRecord
  has_many :order
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum:6, maximum:24}

  def self.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ?
		BCrypt::Engine::MIN_COST :
		BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end

	def self.new_token
		SecureRandom.urlsafe_base64
	end

	def remember
		self.remember_token = User.new_token 
		# update_attribute(:remember_digest, User.digest(remember_token))
		# remember_digest
	end
  
end
