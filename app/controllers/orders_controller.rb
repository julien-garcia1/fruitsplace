class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id:current_user.id, status: "unpayed")
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path, notice: 'Ce produit a été supprimé'
  end

  def create
  @product = Product.find(params[:product_id])
  @user = current_user
  @order = Order.new(product: @product, user: @user, status: 'unpayed')
  @order.save
  redirect_to products_path, notice: 'Votre produit a bien été ajouté'
  end

  def pay
    @orders = Order.where(user_id:current_user.id, status: "unpayed")
    @orders.update_all(status: 'paid')
    redirect_to root_path, notice:'Votre commande a bien été payé'
  end

end
