class CreateNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :notifications do |t|
      t.integer :managerID
      t.integer :requestID
      t.integer :status

      t.timestamps
    end
  end
end
