class CreateTowers < ActiveRecord::Migration
  def change
    create_table :towers do |t|
      t.string :nombre
      t.string :portero

      t.timestamps null: false
    end
  end
end
