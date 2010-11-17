class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
    
    t.references :task
    t.references :comment
    end
  end

  def self.down
    drop_table :images
  end
end
