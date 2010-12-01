class AddApprovedToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :approved, :boolean, :default => false
  end

  def self.down
    remove_column :images, :approved
  end
end
