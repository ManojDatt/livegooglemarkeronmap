class CreateCategoriasVehiculos < ActiveRecord::Migration[5.0]
  def change
    create_table :categorias_vehiculos, id: false do |t|
      t.integer :PKCATEGORIA, primary_key: true, null: false, auto_increment: true
      t.string :CAT_DESCRIPCION, limit: 100
      t.string :CAT_NOTAS, limit: 250

      t.timestamps
    end
  end
end
