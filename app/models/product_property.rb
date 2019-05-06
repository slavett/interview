class ProductProperty < ApplicationRecord
	#ProductProperty associations
	belongs_to :product
	belongs_to :property, optional: true #need to enforce this at server level

	#ProductProperty Validations
	#validates :value, presence: true

end