class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.references :client
      t.datetime :deadline
      t.string :name
      t.integer :progress

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
