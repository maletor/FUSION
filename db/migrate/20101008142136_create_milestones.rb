class CreateMilestones < ActiveRecord::Migration
  def self.up
    create_table :milestones do |t|
      t.references :project
      t.string :name
      t.datetime :deadline
      t.timestamps
    end
  end

  def self.down
    drop_table :milestones
  end
end
