class AddImageToDrawings < ActiveRecord::Migration
  def self.up
    add_column :drawings, :image_id, :integer
  end

  def self.down
    remove_column :drawings, :image_id
  end
end
