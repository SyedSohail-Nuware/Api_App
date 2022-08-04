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

  private
  def authenticate_request
    # binding.pry
    header = request.headers["Authorization"]
    header = header.split(" ").last if header
    decode = jwt_decode(header)
    @current_user = User.find(decode[:id])
  end
end
