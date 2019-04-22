class Property < ApplicationRecord
	has_many :product_properties 
	has_many :products, through: :product_properties 

	#TODO: Add model-layer validations for data input
end
