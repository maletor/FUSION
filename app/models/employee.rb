class Employee < User
  attr_accessible :name, :website

  has_many :projects

  validates_presence_of :name
end
