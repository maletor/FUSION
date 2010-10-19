class Comment::Image < Asset
  versioned
  has_attached_file :attachment, :styles => { :small => "200x150>", :large => "400x300>" }

  has_many :annotations
  belongs_to :comment
end
