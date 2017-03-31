class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes, id: false do |t|
      t.integer :PKCLIENTE, primary_key: true, null: false, auto_increment: true
      t.string :NOMBRE
      t.string :DOMICILIO
      t.string :COLONIA
      t.string :RFC
      t.integer :PKESTADO
      t.integer :PKCIUDAD
      t.string :CP
      t.string :CONTACTO_TELEFONO1
      t.string :CONTACTO_TELEFONO2
      t.string :CONTACTO_TELEFONO3
      t.decimal :IVA_PORCENTAJE
      t.decimal :RETENCION_IVA_PORCENTAJE
      t.timestamps
    end
  end
end
