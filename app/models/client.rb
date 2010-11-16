class Client < User
  attr_accessible :name, :website

  has_many :projects
  has_one :card

  validates_presence_of :name

end
