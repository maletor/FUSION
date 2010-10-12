class AddInheritanceToAssets < ActiveRecord::Migration
  def self.up
    add_column :assets, :type, :string
    add_column :assets, :assetable_id, :integer
    add_column :assets, :assetable_type, :string
    
  end

  def self.down
    remove_column :assets, :type
    remove_column :assets, :assetable_id
    remove_column :assets, :assetable_type
  end
end
