class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def myproducts
    @products = Product.where(farmer_id:current_user.id)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.farmer = current_user
    if @product.save
      redirect_to my_products_path, notice: 'Bien joué mon grand'
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to my_products_path, notice: 'Ce produit a été supprimé'
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to my_products_path, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :category, :price, :photo)
  end
end
