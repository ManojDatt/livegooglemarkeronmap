class CreateEstados < ActiveRecord::Migration[5.0] 
  def change
    create_table :estados, id: false do |t|
      t.integer :PKPAIS
      t.integer :PKESTADO, primary_key: true, null: false, auto_increment: true
      t.text :EDO_DESCRIPCION
      t.string :ABREVIATURA
      t.boolean :VALOR_OMISION     
      t.timestamps
    end
  end
end
