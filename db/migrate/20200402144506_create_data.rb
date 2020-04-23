class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data do |t|
      t.string :address
      t.integer :age
      t.integer :mobilenumber

      t.timestamps
    end
  end
end
