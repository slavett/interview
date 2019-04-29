class FutureDateValidator < ActiveModel::EachValidator
  
  #custom validation for future date for "available on" product attribute
  #checking for blanks first because empty value was causing an issue
  def validate_each(record, attribute, value)
    if value.blank?
    	record.errors.add attribute, (options[:message] || "can't be blank")
    elsif value <= Time.zone.today
      record.errors.add attribute, (options[:message] || "must be in the future")
    end
  end
end