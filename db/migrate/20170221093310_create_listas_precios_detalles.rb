class CreateListasPreciosDetalles < ActiveRecord::Migration[5.0]
  def change
    create_table :listas_precios_detalles, id: false  do |t|
      t.integer :ID, primary_key: true, null: false, auto_increment: true
      t.integer :PKLISTA
      t.integer :PKCATEGORIA
      t.integer :PKSERVICIO
      t.decimal :LIS_PRECIOD, precision: 10, scale: 2

      t.timestamps
    end
  end
end
