class AdminUserController < ApplicationController

  def index
    render json: AdminUser.all, status: :ok
  end

  # display one user
  def show
    @user = AdminUser.find(params[:id])
    if @user.present?
      render json: @user, status: :ok
    else
      render json: {Message: "Admin not found"}, status: :not_found
    end
  end

  def create
    @user = AdminUser.new(user_parems)
    if @user.save
      toke = jwt_encode({user_id: @user.id})
      render json: {user: @user, token: toke}, status: :created
    else
      render json: {errors: " Invalid signup!!! ",full_message: @user.errors.full_message}, status: :unprocessable_entity
    end
  end

  private
  def user_parems
   params.permit(:name,:email,:password)
  end
end
