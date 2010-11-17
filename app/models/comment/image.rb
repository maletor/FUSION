class Comment::Image < ActiveRecord::Base
  versioned
  has_attached_file :attachment, :styles => { :small => "200x150>", :large => "800x800>" }, 
    :path => ":rails_root/public/assets/images/:id/:version/:basename.:extension",
    :url => "/assets/images/:id/:version/:basename.:extension",
    :keep_old_files => true
    
  Paperclip.interpolates :version do |attachment, style|
    attachment.instance.version.to_s
  end

  has_many :annotations
  has_many :drawings
  belongs_to :comment
  belongs_to :task
end
