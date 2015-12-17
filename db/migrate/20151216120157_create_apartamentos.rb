class CreateApartamentos < ActiveRecord::Migration
  def change
    create_table :apartamentos do |t|
      t.string :numero
      t.string :torre
      t.integer :piso
      t.integer :nro_habitantes, default: 0
      t.integer :area, default: 0

      t.timestamps null: false
    end
  end
end
