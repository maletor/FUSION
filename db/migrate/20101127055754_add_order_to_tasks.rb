class AddOrderToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :due, :datetime
    add_column :tasks, :priority, :integer
  end

  def self.down
    remove_column :tasks, :priority
    remove_column :tasks, :due
  end
end
