class Website < ActiveRecord::Base
  belongs_to :card

  TYPES = ['Work','Personal','Other']
  
  def get_type
    TYPES[type]
  end
  
  def to_url
    if name.include? "://" then name else "http://#{name}" end
  end
  
end
