class Card < ActiveRecord::Base
  belongs_to :user
  has_many :phone_numbers
  has_many :websites

  ## Needs validations
  accepts_nested_attributes_for :phone_numbers
  accepts_nested_attributes_for :websites
end
