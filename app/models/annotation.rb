class Annotation < ActiveRecord::Base
  ActiveRecord::Base.include_root_in_json = false
  belongs_to :user
  belongs_to :image
end
