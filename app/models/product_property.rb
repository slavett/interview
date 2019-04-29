class ProductProperty < ApplicationRecord
	#ProductProperty associations
	belongs_to :product
	belongs_to :property 

	#ProductProperty Validations
	
end
