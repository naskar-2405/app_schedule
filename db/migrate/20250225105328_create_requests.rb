class CreateRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :requests do |t|
      t.integer :employeeID
      t.integer :application
      t.integer :scheduleID

      t.timestamps
    end
  end
end
