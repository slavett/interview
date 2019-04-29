Rails.application.routes.draw do

	#set root
	#root 'products#index'

	#Creates 3 routes for our app based on what we need
	resources :products, only: [:index, :new, :create]

	#Alternative routing:

	#Product List page 
	#get '/products' => 'products#index'

	#Product Create page with get
	#get '/products/new' => 'products#new'

	#Product Create page with post
	#post '/products' => 'products#create' 
end

# For details on the DSL available within this file, see 
#http://guides.rubyonrails.org/routing.html