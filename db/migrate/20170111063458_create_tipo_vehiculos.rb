class CreateTipoVehiculos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_vehiculos, id: false do |t|
      t.integer :PKTIPO_AUTO, primary_key: true, null: false, auto_increment: true
      t.string :TAUT_CATEGORIA
      t.string :TAUT_DESCRIPCION
      t.timestamps
    end
  end
end
