class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets
  end

  def self.down
    drop_table :assets
  end
end
