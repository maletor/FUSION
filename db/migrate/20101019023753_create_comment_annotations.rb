class CreateAnnotations < ActiveRecord::Migration
   def self.up
    create_table :annotations do |t|
      t.references :image
      t.integer :left
      t.integer :top
      t.integer :width
      t.integer :height
      t.boolean :editable
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :annotations
  end
end
