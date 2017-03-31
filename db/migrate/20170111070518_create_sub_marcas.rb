class CreateSubMarcas < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_marcas, id: false do |t|
      t.integer :PKMARCA
      t.integer :PKSUBMARCA, primary_key: true, null: false, auto_increment: true
      t.integer :PKTIPO_AUTO
      t.string :SUB_DESCRIPCION
      t.timestamps
    end
  end
end
