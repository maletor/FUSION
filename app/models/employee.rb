class Employee < User
  attr_accessible :name, :website

  gravtastic
  validates_presence_of :name
end
