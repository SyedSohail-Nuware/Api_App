class UserController < ApplicationController
  # skip_before_action :authenticate_request ,only: [:create]
  before_action :set_user, only: [:show, :destroy]

  def index
    render json: User.all, status: :ok
  end

  # display one user
  def show
    if @user.present?
      render json: @user, status: :ok
    else
      render json: {Message: "User not found"}, status: :not_found
    end
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
    @user = User.find(params[:id])
    if @user.update(user_parems)
      render json: {user: @user}, status: :ok
    else
      render json: {errors: " Invalid User" }
    end
  end

  def destroy
    @user = set_user
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
