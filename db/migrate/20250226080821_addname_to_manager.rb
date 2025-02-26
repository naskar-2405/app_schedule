class AddnameToManager < ActiveRecord::Migration[8.0]
  def change
    add_column :managers, :name, :string
    add_column :managers, :loginID, :string
    add_column :managers, :image, :string
  end
end
