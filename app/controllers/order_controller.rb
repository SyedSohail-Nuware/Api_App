class OrderController < ApplicationController
  def index
    render json: Order.all , status: :ok
  end

  def show
    render json: User.first.order
  end

  def place_order
    # @user = User.find(params[:id])
    @user = Order.all
    # @pro = @user.product
    render json: @user  , status: :ok
  end
end
