class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @show_product = Product.find(params[:id])
    @comments = @show_product.comments
  end

  def new
    @categories = Category.all
  end

  def edit
    @edit_product = Product.find(params[:id])
    @categories = Category.all
    
  end

  def create
    category = Category.find(product_params[:category])
    product = Product.new(name: product_params[:name], description: product_params[:description], price: product_params[:price], category: category)
    if product.save
      redirect_to products_path
    else
      flash[:errors] = product.errors.full_messages
      redirect_to products_path
    end
    #@product = Product.create(product_params)
    #redirect_to products_path
  end

  def update
    category = Category.find(product_params[:category])
    product = Product.find(params[:id])
    product.update(name: product_params[:name], description: product_params[:description], price: product_params[:price], category: category)
    redirect_to products_path
    #update_product = Product.find(params[:id]).update(product_params)
    #redirect_to products_path
  end

  def destroy
    destroy_product = Product.find(params[:id])
    destroy_product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :category)
  end
end
