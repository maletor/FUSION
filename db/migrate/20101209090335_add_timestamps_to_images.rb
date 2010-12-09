class AddTimestampsToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.timestamps
    end
  end

  def self.down
  end
end
