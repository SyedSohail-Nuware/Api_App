class UserController < ApplicationController
  # skip_before_action :authenticate_request ,only: [:create]
  before_action :set_user, only: [:show, :destroy]

  def index
    render json: User.all, status: :ok
  end

  # display one user
  def show
    render json: @user, status: :ok
  end

  def create

    @user = User.new(user_parems)
    if @user.save
      toke = jwt_encode({user_id: @user.id})
      render json: {user: @user, token: toke}, status: :created
    else
      render json: {errors: " Invalid signup!!! ",full_message: @user.errors.full_message}, status: :unprocessable_entity
    end
  end

  def update
    unless @user.update(user_parems)
      render json: {errors: @user.errors.full_message}, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private
   def user_parems
    params.permit(:name,:email,:password)
   end

   def set_user
    @user = User.find(params[:id])
   end
end
