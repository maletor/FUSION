class Asset < ActiveRecord::Base
  belongs_to :assetable, :polymorphic => true
  delegate :url, :to => :attachment
  
end
