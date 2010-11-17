class AddTaskToCommentImages < ActiveRecord::Migration
  def self.up
    add_column :comment_images, :task_id, :integer
  end

  def self.down
    remove_column :comment_images, :task_id
  end
end
