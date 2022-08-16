class OrderController < ApplicationController
  def index
    render json: Order.all, status: :ok
  end


end
 