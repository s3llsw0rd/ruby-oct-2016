class ProductsController < ApplicationController

	def index
		@products = Product.all()
	end

	def new 
		@categories = Category.all()
	end
	def create
		category = Category.find(params[:product][:category])
		myParams = _params
		myParams[:category] = category
		@product = Product.create(myParams)
		redirect_to products_path 
	end

	def show
		@product = Product.find(params[:id])
		@comments = Comment.where(:product =>params[:id])
		render 'show' 
	end

	def edit
		@product = Product.find(params[:id])
		@categories = Category.all()
	end

	def update		
		product = Product.find(params[:id])
		category = Category.find(params[:product][:category])
		myParams = _params
		myParams[:category] = category
		product.update(myParams)
		redirect_to products_path
	end
	
	def destroy
		Product.delete(params[:id])
		redirect_to products_path
	end

	private

	def _params
    params.require(:product).permit(:name, :description, :pricing)
  end
end
