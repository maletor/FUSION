class ChangeAnnotationText < ActiveRecord::Migration
  def self.up
    add_column :annotations, :note, :text
    remove_column :annotations, :text
  end

  def self.down
    remove_column :annotations, :note
    add_column :annotations, :text, :text
  end
end
