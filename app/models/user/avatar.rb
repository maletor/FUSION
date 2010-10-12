class User::Avatar < Asset
  has_attached_file :attachment, :styles => { :small => "200x150>", :large => "400x300>" }
  
end
