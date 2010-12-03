class Client < User
  attr_accessible :name, :website

  gravtastic
  has_one :card

  validates_presence_of :name

end
