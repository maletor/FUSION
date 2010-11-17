class AddAttachmentToCommentImages < ActiveRecord::Migration
  def self.up
    add_column :comment_images, :attachment_file_name, :string
    add_column :comment_images, :attachment_content_type, :string
    add_column :comment_images, :attachment_file_size, :integer
    add_column :comment_images, :attachment_updated_at, :datetime
  end

  def self.down
    remove_column :comment_images, :attachment_file_name
    remove_column :comment_images, :attachment_content_type
    remove_column :comment_images, :attachment_file_size
    remove_column :comment_images, :attachment_updated_at
  end
end

