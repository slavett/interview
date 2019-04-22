class CreateProductProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :product_properties do |t|
      t.belongs_to :product, index: true 
	  t.belongs_to :property, index: true 
      t.string :value
      #t.timestamps
    end
  end
end

#would consider adding schema constraints for larger scale application 
#validations exist in the model that should be sufficient for this project

#auto-generated ID column already comes indexed