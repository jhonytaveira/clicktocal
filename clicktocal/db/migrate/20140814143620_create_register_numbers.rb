class CreateRegisterNumbers < ActiveRecord::Migration
  def change
    create_table :register_numbers do |t|
      t.string :ip
      t.integer :ddd
      t.integer :number
      t.boolean :carried_out

      t.timestamps
    end
  end
end
