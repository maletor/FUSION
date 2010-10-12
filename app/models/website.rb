class Website < ActiveRecord::Base
  belongs_to :card

  TYPES = ['Work','Personal','Other']
  
  def get_type
    TYPES[type]
  end
  
  def to_url
      name.include? "://" ? name : "http://#{name}"
  end
  
end
