class Task < ActiveRecord::Base
  has_many :images  

  belongs_to :milestone
  has_many :comments
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => true
end
