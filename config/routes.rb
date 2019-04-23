Rails.application.routes.draw do
	 
	#root page 
	root 'products#index'

	#Product Create page
	get '/product/new' => 'products#new'

	#Listing Page
	get '/product/list' => 'products#list'

end

# For details on the DSL available within this file, see 
#http://guides.rubyonrails.org/routing.html