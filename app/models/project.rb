class Project < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :invitations
  has_many :milestones
  belongs_to :client
  has_many :images
  has_many :tasks
  has_many :comments
end
