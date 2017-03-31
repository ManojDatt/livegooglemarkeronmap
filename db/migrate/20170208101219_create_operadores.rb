class CreateOperadores < ActiveRecord::Migration[5.0]
  def change
    create_table :operadores, id: false do |t|
      t.integer :PKOPERADOR, primary_key: true, null: false, auto_increment: true
      t.string :OP_NOMBRE, limit: 40
      t.string :OP_DOMICILIO, limit: 200
      t.timestamp :OP_INGRESO
      t.string :OP_LICESTATAL, limit: 20
      t.string :OP_TIPOLICESTATAL, limit: 20
      t.timestamp :OP_VENC_LICESTATAL
      t.string :OP_LICFEDERAL, limit: 20
      t.string :OP_TIPOLICFEDERAL, limit: 20
      t.timestamp :OP_VEN_LICFEDERAL
      t.string :OP_CEL_SERIE, limit: 20
      t.string :OP_CEL_NUMERO, limit: 10
      t.string :OP_ESTADO, limit: 15
      t.string :OP_CLAVE, limit: 20
      t.timestamp :OP_FECHAACTIVO
      t.string :OP_ACTIVO, limit: 8
      t.string :OP_NIP, limit: 4

      t.timestamps
    end
  end
end
