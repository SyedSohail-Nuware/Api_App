class ProductController < ApplicationController
  def index
    render json: Product.all , status: :ok
  end

  def show
    render json: Product.first.image
  end

end
