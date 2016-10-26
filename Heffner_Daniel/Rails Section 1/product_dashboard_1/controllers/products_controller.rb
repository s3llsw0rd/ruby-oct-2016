class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def edit
    @product = Product.find(params[:id])
    @errors = Product.find(params[:id])
    @categories = Category.all
  end

  def create
    p_params = product_params
    if !(p_params[:category].to_i == 0)
      p_params[:category] = Category.find(p_params[:category].to_i)
    else
      p_params.delete(:category)
    end
    @product = Product.create( p_params )
    if @product.errors.any?
      render "new"
    else
      redirect_to "/products/#{@product.id}"
    end
  end

  def update
    p_params = product_params
    if !(p_params[:category].to_i == 0)
      p_params[:category] = Category.find(p_params[:category].to_i)
    else
      p_params.delete(:category)
    end
    @product = Product.find(params[:id])
    if @product.update( p_params )
      redirect_to "/products/#{@product.id}"
    else
      @errors = Product.new( p_params )
      @errors.valid?
      render "edit"
    end
  end

  def destroy
    Product.destroy(params[:id])
    redirect_to "/products"
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :price, :category)
    end

end
