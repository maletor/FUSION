class ChangeReferencesInProjects < ActiveRecord::Migration
  def self.up
    remove_column :projects, :client_id
    add_column :projects, :user_id, :integer
  end

  def self.down
    remove_column :projects, :user_id
    add_column :projects, :client_id, :integer
  end
end
