class AddTokenToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :forgot_token, :string
  end

  def self.down
    remove_column :users, :forgot_token
  end
end
