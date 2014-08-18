class CreateRegisterNumbers < ActiveRecord::Migration
  def change
    create_table :register_numbers do |t|
      t.string :ip
      t.string :ddd
      t.float :number
      t.boolean :carried_out

      t.timestamps
    end
  end
end
