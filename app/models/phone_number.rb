class PhoneNumber < ActiveRecord::Base
  belongs_to :card
  before_save :sanitize_number

  TYPES = ['Work','Mobile','Fax','Home','Skype','Other']
  
  def get_type
    TYPES[type]
  end

  def sanitize_number
    number.gsub!(/[^0-9]/, "") 
  end
  
end
