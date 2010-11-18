class AddImageVersionToDrawing < ActiveRecord::Migration
  def self.up
    add_column :drawings, :image_version, :integer
  end

  def self.down
    remove_column :drawings, :image_version
  end
end
