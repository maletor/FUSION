class AddCoordinatesToAnnotations < ActiveRecord::Migration
  def self.up
    remove_column :annotations, :top
    remove_column :annotations, :left
    add_column :annotations, :x1, :integer
    add_column :annotations, :x2, :integer
    add_column :annotations, :y1, :integer
    add_column :annotations, :y2, :integer
  end

  def self.down
    remove_column :annotations, :y2
    remove_column :annotations, :y1
    remove_column :annotations, :x2
    remove_column :annotations, :x1
  end
end
