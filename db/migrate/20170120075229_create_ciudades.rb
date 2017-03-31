class CreateCiudades < ActiveRecord::Migration[5.0]
  def change
    create_table :ciudades, id: false do |t|
      t.integer :PKESTADO
      t.integer :PKCIUDAD, primary_key: true, null: false, auto_increment: true
      t.string :CD_NOMBRE
      t.decimal :CD_KM
      t.boolean :VALOR_OMISION

      t.timestamps
    end
  end
end
