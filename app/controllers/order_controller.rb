class OrderController < ApplicationController
  def index
    render json: Order.all , status: :ok
  end

  def show
    render json: User.first.order
  end

  def place_order
    # @user = User.find(params[:id])
    @user = User.find_by_id(params[:id])
    render json: {order: @user.order} , status: :ok
  end
end
