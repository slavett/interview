class Property < ApplicationRecord
	#Property Associations
	has_many :product_properties 
	has_many :products, through: :product_properties 

	#Property Validations
	
end
