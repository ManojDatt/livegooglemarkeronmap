class CreateMarcas < ActiveRecord::Migration[5.0]
  def change
    create_table :marcas, id: false do |t|
      t.integer :PKMARCA, primary_key: true, null: false, auto_increment: true
      t.string :MAR_DESCRIPCION
      t.timestamps
    end
  end
end
