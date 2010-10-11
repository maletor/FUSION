class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.references :task

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
