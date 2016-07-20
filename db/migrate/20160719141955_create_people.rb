class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :nombre
      t.string :identificacion
      t.integer :apartament_id

      t.timestamps null: false
    end
  end
end
