class AddClientToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :client_id, :integer
  end

  def self.down
    remove_column :projects, :client_id
  end
end
