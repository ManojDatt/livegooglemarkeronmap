class CreatePais < ActiveRecord::Migration[5.0]
  def change
    create_table :pais, id: false do |t|
      t.integer :PKPAIS, primary_key: true, null: false, auto_increment: true
      t.text :PA_DESCRIPCION
      t.string :CODIGOINT
      t.timestamps
    end
  end
end
