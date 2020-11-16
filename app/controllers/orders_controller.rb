class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order, notice: 'order was successfully created.'
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:name, :category, :quantity)
  end

end