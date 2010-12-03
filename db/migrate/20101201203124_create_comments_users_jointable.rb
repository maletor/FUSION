class CreateCommentsUsersJointable < ActiveRecord::Migration
  def self.up
    create_table :comments_users, :id => false do |t|
      t.integer :comment_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :comments_users
  end
end
