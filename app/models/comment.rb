class Comment < ActiveRecord::Base
  versioned
  belongs_to :task
  belongs_to :user
  belongs_to :project
  has_and_belongs_to_many :recipients, :class_name => "User"

  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images
  

  
end
