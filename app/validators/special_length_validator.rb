class SpecialLengthValidator < ActiveModel::EachValidator
  
  #custom validation for 10, 12, or 13 chars for "UPC" product attribute
  #checking for blanks first because empty value was causing an issue
  def validate_each(record, attribute, value)
  	if value.blank?
    	record.errors.add attribute, (options[:message] || "can't be blank")
    elsif value.length != 10 and value.length != 12 and value.length != 13
      record.errors.add attribute,
                        (options[:message] || "length must be 10, 12, or 13 digits")
    end
  end
end