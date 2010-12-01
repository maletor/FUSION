class Project < ActiveRecord::Base
  belongs_to :user
  has_many :invitations
  has_many :milestones
  belongs_to :client
  has_many :images
  has_many :tasks
  has_many :comments
end
