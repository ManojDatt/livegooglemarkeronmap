class CreateGruas < ActiveRecord::Migration[5.0]
  def change
    create_table :gruas, id: false do |t|
      t.integer :PKGRUA, primary_key: true, null: false, auto_increment: true
      t.integer :PKEMPRESA
      t.string :GR_CLAVE, limit: 20
      t.integer :PKCOMBUSTIBLE
      t.integer :PKMARCA
      t.string :GR_DESCRIPCION, limit: 40
      t.string :GR_CAPACIDAD, limit: 20
      t.string :GR_MODELO, limit: 4
      t.string :GR_MOTOR, limit: 20
      t.string :GR_PLACAESTATAL, limit: 20
      t.string :GR_PLACAFEDERAL, limit: 20
      t.string :GR_PERMISOESTATA, limit: 20
      t.string :GR_PERMISOFEDERAL, limit: 20
      t.string :GR_TIPO, limit: 40
      t.integer :GR_ODOMETRO
      t.integer :GR_HOROMETRO
      t.decimal :GR_UBICACION_LATITUD, precision: 10, scale: 6
      t.decimal :GR_UBICACION_LONGITUD, precision: 10, scale: 6
      t.timestamp :GR_ULTIMO_REPORTE
      t.string :GR_BASE, limit: 250
      t.string :GR_ESTADO, limit: 50
      t.string :GR_NO_SERIE_RADIO, limit: 15

      t.timestamps
    end
  end
end
