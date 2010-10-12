class CreateCommentImages < ActiveRecord::Migration
  def self.up
    create_table :comment_images do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :comment_images
  end
end
