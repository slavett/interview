class ProductsController < ApplicationController
	#index action
	#The index action simply gets all the product objects and passes them on to the view
	def index
		@products = Product.all
	end

	#new action
	#The new action creates a new Product object @product and passes it on to the view
	def new
		@product = Product.new
	end

	#create action
	#
	def create 
	  	#@product = Product.new(product_params) 
	  	@product = Product.create(params.require(:product).permit(:name, :upc, :available_on)) 
	  	if @product.errors.any?
	  		render 'new'
	  	else
	  		redirect_to '/products' 
	  	end

		#Product.create(params.require(:product).permit(:name, :upc, :available_on))
	    #if (Product.create(params.require(:product).permit(:name, :upc, :available_on))) 
	    #  redirect_to '/products' 
	    #else 
	    #  render 'new' 
	    #end 
	end

	private #safely collects data from the product input form
	  	def product_params 
	    	params.require(:product).permit(:name, :upc, :available_on) 
	  	end 

end

#Model.new instantiates a new model instance, but it is not saved until .save is called
#Model.create call will also instantiate a new model instance, but automatically
#tries to saves it to the database 