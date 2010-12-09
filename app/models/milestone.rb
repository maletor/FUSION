class Milestone < ActiveRecord::Base
  has_many :tasks
  belongs_to :project

  accepts_nested_attributes_for :tasks, :allow_destroy => true

end
