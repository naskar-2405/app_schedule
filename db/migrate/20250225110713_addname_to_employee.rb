class AddnameToEmployee < ActiveRecord::Migration[8.0]
  def change
    add_column :employees, :name, :string
    add_column :employees, :loginID, :string
    add_column :employees, :image, :string
  end
end
