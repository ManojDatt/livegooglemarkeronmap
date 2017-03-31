class CreateEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :empresas, id: false  do |t|
      t.integer :PKEMPRESA, primary_key: true, null: false, auto_increment: true
      t.string :EMP_NOMBRE_COMERCIAL, limit: 250
      t.string :EMP_RAZON_SOCIAL, limit: 250
      t.string :EMP_DIRECCION, limit: 250
      t.string :EMP_COLONIA, limit: 100
      t.string :EMP_CP, limit: 10
      t.string :EMP_RFC, limit: 13
      t.integer :EMP_PKCIUDAD, limit: 4
      t.integer :EMP_PKESTADO, limit: 4
      t.string :EMP_TEL1, limit: 16
      t.string :EMP_TEL2, limit: 16
      t.string :EMP_FAX, limit: 16
      t.string :EMP_EMAIL, limit: 200
      t.integer :EMP_TIPO, limit: 4

      t.timestamps
    end
  end
end
