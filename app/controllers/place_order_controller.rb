class PlaceOrderController < ApplicationController

  def place_order
    @user = User.find(params[:id])
    @product = Product.find(params[:id])
    
  end
  

end
