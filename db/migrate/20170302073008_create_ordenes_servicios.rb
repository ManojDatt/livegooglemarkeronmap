class CreateOrdenesServicios < ActiveRecord::Migration[5.0]
  def change
    create_table :ordenes_servicios, id: false do |t|
      t.integer :ID, primary_key: true, null: false, auto_increment: true
      t.timestamp :OS_FECHAALTA
      t.integer :PKCLIENTE
      t.integer :PKCOLOR
      t.integer :PKSUBMARCA
      t.integer :PKGRUA
      t.integer :PKOPERADOR
      t.integer :OS_TCOMPROMISO
      t.string :OS_NOMBRE, limit: 60
      t.string :OS_TELEFONO, limit: 15
      t.string :OS_PLACAS, limit: 12
      t.string :OS_MODELO, limit: 4
      t.string :OS_POLIZA, limit: 20
      t.string :OS_SINIESTRO, limit: 20
      t.string :OS_AUTORIZACION, limit: 20
      t.string :OS_AJUSTADOR, limit: 60
      t.string :OS_ASEGURADO, limit: 60
      t.string :OS_PROGRAMADA, limit: 15
      t.timestamp :OS_FECHAPROGRAMADA
      t.string :OS_ORIGEN, limit: 250
      t.decimal :OS_ORIGEN_LAT, precision: 10, scale: 6
      t.decimal :OS_ORIGEN_LONG, precision: 10, scale: 6
      t.text :OS_ORIGEN_NOTAS
      t.string :OS_DESTINO, limit: 250
      t.decimal :OS_DESTINO_LAT, precision: 10, scale: 6
      t.decimal :OS_DESTINO_LONG, precision: 10, scale: 6
      t.text :OS_DESTINO_NOTAS
      t.timestamp :OS_FECHAASIGNACION
      t.string :OS_ESTADO, limit: 20
      t.timestamp :OS_FECHALLEGADA
      t.timestamp :OS_FECHAINCIO
      t.timestamp :OS_FECHAFIN
      t.timestamp :OS_FECHATERMINO
      t.integer :OS_ODOMETROFINAL
      t.integer :OS_ODOMETROINICIAL
      t.integer :OS_HOROMETROINICIAL
      t.integer :OS_HOROMETROFINAL
      t.integer :OS_HRINTER
      t.integer :OS_KMINTER

      t.timestamps
    end
  end
end
