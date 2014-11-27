class AddColumnDepartment < ActiveRecord::Migration
  def change
    add_column :register_numbers, :department, :integer
  end
end
