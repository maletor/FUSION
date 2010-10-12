class Comment < ActiveRecord::Base
  versioned
  belongs_to :task
  belongs_to :user

  has_many :images, :as => :assetable, :class_name => "Comment::Image", :dependent => :destroy
  accepts_nested_attributes_for :images
  
end
