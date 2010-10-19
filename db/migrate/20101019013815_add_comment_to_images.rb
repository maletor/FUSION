class AddCommentToImages < ActiveRecord::Migration
  def self.up
    add_column :comment_images, :comment_id, :integer
  end

  def self.down
    remove_column :comment_images, :comment_id
  end
end
