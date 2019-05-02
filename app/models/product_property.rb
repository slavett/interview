class ProductProperty < ApplicationRecord
	#ProductProperty associations
	belongs_to :product, optional: true
	belongs_to :property, optional: true

	#ProductProperty Validations
	validates :value, presence: true

end