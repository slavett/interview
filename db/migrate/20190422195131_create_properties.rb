class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :name
      #t.timestamps
    end
  end
end

#would consider adding schema constraints for larger scale application 
#validations exist in the model that should be sufficient for this project

#auto-generated ID column already comes indexed