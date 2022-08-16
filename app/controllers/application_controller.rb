class ApplicationController < ActionController::API
  # include JsonWebToken

  before_action :authenticate_request ,only: [:login]

  SECRET_KEY = Rails.application.secret_key_base

  def jwt_encode(payload)
    # payload[:exp] = exp.to_i
    JWT.encode(payload,SECRET_KEY)
  end

  def jwt_decode(token)
    decode = JWT.decode(token,SECRET_KEY)[0]
    HashWithIndifferentAccess.new decode
  end

  rescue => exception
    
  end
#######################
  # def current_user
  #   if (user_id = session[:user_id])
  #     @current_user ||= User.find_by(id: user_id)
  #   elsif (user_id = cookies.encrypted[:user_id])
  #     user = User.find_by(id: user_id)
  #     if user && user.authenticated?(cookies[:remember_token])
  #     log_in user
  #     @current_user = user
  #     end
  #   end
  # end

  # def current_user?(user)
  #   user && user == current_user
  # end

  # def logged_in?
  #   !current_user.nil?
  # end

  ####################
  private
  def authenticate_request
    # binding.pry
    header = request.headers["Authorization"]
    header = header.split(" ").last if header
    decode = jwt_decode(header)
    @current_user = User.find(decode[:id])
  end
end
