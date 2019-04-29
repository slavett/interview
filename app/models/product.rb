class Product < ApplicationRecord
	#Product associations
	has_many :product_properties 
	has_many :properties, through: :product_properties 

	#Product Validations
	validates :name, presence: true, 
					 uniqueness: true, 
					 length: { maximum: 1024 }	 	

    validates :upc, presence: true, 
    				uniqueness: true,
    				special_length: true,
    				numericality: { only_integer: true, message: 'should be digits'}
    				
    validates :available_on, presence: true,
    						 future_date: true
    
    #i validated the 1024 restraint. works like a charm and the database table allows us to store the whole string

    #need to consider condensing this 
    #need to add future date validation 
    #need to consider removing the presence:true validator, 
    #as we check that in the custom validators, or change custom validator
end
