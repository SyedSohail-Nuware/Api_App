class OrderController < ApplicationController
  def index
    render json: Order.all , status: :ok
  end

  def show
    render json: User.first.order
  end

  def place_order
    # @user = User.find(params[:id])
    @order = Order.all
    @users = User.all
    @user_id = [1,2,3,4,5]
    # @id = setUser_id(@order)
    # @name = setUser_name(@user)

    # @pro = @user.product
    render json: @order, status: :ok
  end

  def setUser_id(data)
    @res = []
    data.length.times do |n|
      @res.push(data[n].user_id)
    end
    return @res
  end

  def setUser_name(name)
    @hash=[]
    name.length.times do |i|
      hash.push(name[i][:name])
    end
    return @hash
  end

end
