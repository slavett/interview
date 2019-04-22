class Product < ApplicationRecord
	has_many :product_properties 
	has_many :properties, through: :product_properties 

	#TODO: Add model-layer validations for data input
end
