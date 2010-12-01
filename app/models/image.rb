class Image < ActiveRecord::Base
  versioned
  has_attached_file :attachment, :styles => { :small => "200x150>", :large => "700>x700" }, 
    :path => ":rails_root/public/assets/images/:id/:basename.:extension",
    :url => "/assets/images/:id/:basename.:extension"
    

  has_many :annotations
  has_many :drawings
  belongs_to :comment
  belongs_to :task
  belongs_to :project
  belongs_to :approver, :class_name => "User"
end
