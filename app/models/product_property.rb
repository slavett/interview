class ProductProperty < ApplicationRecord
	belongs_to :product
	belongs_to :property 

	#TODO: Add model-layer validations for data input
end
