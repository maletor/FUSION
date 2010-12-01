class AddApprovalDetailsToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :approver_id, :integer
    add_column :images, :approved_at, :datetime
  end

  def self.down
    remove_column :images, :approver_id
    remove_column :images, :approved_by
  end
end
