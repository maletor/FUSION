class CreateWebsites < ActiveRecord::Migration
  def self.up
    create_table :websites do |t|
      t.references :card
      t.string :url
      t.integer :type
      t.timestamps
    end
  end

  def self.down
    drop_table :websites
  end
end
