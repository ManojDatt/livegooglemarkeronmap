class CreateTarifasServicios < ActiveRecord::Migration[5.0]
  def change
    create_table :tarifas_servicios, id: false do |t|
      t.integer :PKSERVICIO, primary_key: true, null: false, auto_increment: true
      t.string :SER_DESCRIPCION, limit: 100
      t.string :SER_NOTAS, limit: 250

      t.timestamps
    end
  end
end
