class CreateSchedules < ActiveRecord::Migration[8.0]
  def change
    create_table :schedules do |t|
      t.datetime :start
      t.datetime :end
      t.integer :employeeID
      t.integer :status

      t.timestamps
    end
  end
end
