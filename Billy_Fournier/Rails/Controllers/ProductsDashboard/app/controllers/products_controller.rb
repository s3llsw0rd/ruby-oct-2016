class ProductsController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
  end
  def create
    Product.create(product_params)

    redirect_to '/'
  end
  def edit
    @product = Product.find(params[:id])
  end
  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to '/'
  end
  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to '/'
  end
  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :category_id)
  end
end
