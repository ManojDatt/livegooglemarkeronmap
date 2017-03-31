class CreateColores < ActiveRecord::Migration[5.0]
  def change
    create_table :colores, id: false do |t|
      t.integer :PKCOLOR, primary_key: true, null: false, auto_increment: true, limit: 4
      t.string :COL_DESCRIPCION, limit: 20

      t.timestamps
    end
  end
end
