class CreatePhoneNumbers < ActiveRecord::Migration
  def self.up
    create_table :phone_numbers do |t|
      t.references :card
      t.string :number
      t.integer :type

      t.timestamps
    end
  end

  def self.down
    drop_table :phone_numbers
  end
end
