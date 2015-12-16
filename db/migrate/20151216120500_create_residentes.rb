class CreateResidentes < ActiveRecord::Migration
  def change
    create_table :residentes do |t|
      t.string :nombre
      t.string :apellido
      t.string :identificacion
      t.date :fecha_nacimiento
      t.references :apartamento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
