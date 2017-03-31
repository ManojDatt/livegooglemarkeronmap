class CreateConfiguraciones < ActiveRecord::Migration[5.0]
  def change
    create_table :configuraciones do |t|
      t.string :Llave
      t.string :Valor
      t.text :Descripcion

      t.timestamps
    end
  end
end
