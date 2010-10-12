class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.references :project
      t.string :recipient_email

      t.timestamps
    end
  end

  def self.down
    drop_table :invitations
  end
end
