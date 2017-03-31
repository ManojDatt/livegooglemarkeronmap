class CreateCombustibles < ActiveRecord::Migration[5.0]
  def change
    create_table :combustibles, id: false  do |t|
      t.integer :PKCOMBUSTIBLE, primary_key: true, null: false, auto_increment: true
      t.date :COM_FINICIO
      t.date :COM_FFIN
      t.string :COM_DESCRIPCION, limit: 40
      t.decimal :COM_PRECIO

      t.timestamps
    end
  end
end
