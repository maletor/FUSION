class AddProjectToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :project_id, :integer
  end

  def self.down
    remove_column :images, :project_id
  end
end
