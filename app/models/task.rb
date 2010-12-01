class Task < ActiveRecord::Base
  has_many :images  
  belongs_to :project

  belongs_to :milestone
  has_many :comments
end
