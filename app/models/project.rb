class Project < ActiveRecord::Base
  belongs_to :user
  has_many :invitations
  has_many :milestones
  belongs_to :client
end
