class CreateListasPrecios < ActiveRecord::Migration[5.0]
  def change
    create_table :listas_precios, id: false do |t|
      t.integer :PKLISTA, primary_key: true, null: false, auto_increment: true
      t.integer :LIS_DEFAULT_TAR
      t.string :LIS_DESCRIPCION, limit: 200

      t.timestamps
    end
  end
end
