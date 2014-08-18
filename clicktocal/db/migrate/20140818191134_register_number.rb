class RegisterNumber < ActiveRecord::Migration
  def change
    change_column :register_numbers, :ddd, :integer, limit: 2, null: false
    change_column :register_numbers, :number, :integer, limit: 8, null: false
  

  end
end
