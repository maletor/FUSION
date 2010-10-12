class CreateUserAvatars < ActiveRecord::Migration
  def self.up
    create_table :user_avatars do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :user_avatars
  end
end
