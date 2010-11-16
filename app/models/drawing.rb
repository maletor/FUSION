class Drawing < ActiveRecord::Base
  belongs_to :image, :class_name => "Comment::Image"  

end
