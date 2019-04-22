class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :upc
      t.datetime :available_on
      #t.timestamps
    end
  end
end

#would consider adding schema constraints for larger scale application 
#validations exist in the model that should be sufficient for this project

#auto-generated ID column already comes indexed