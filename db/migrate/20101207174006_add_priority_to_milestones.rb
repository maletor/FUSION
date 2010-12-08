class AddPriorityToMilestones < ActiveRecord::Migration
  def self.up
    add_column :milestones, :priority, :integer
  end

  def self.down
    remove_column :milestones, :priority
  end
end
