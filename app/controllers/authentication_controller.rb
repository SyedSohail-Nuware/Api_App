class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def login
    # binding.pry
    @user = User.find_by_email(params[:email])
    if @user&.authenticate(params[:password])
      token = jwt_encode(user_id: @user.id)
      render json: {Message: "Log in successfully",User: @user, token: token, status: true}, status: :ok
    else
      render json: { error: 'Invalid email or password' ,status: false}, status: :unprocessable_entity
    end
  end
end


