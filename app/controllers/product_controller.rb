class ProductController < ApplicationController
  def index
    render json: Product.all , status: :ok
  end

  def show
    render json: Product.find_by_id(params[:id])
  end
end
