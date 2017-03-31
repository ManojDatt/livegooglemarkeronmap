class CreateAsignaciones < ActiveRecord::Migration[5.0]
  def change
    create_table :asignaciones, id: false do |t|
      t.integer :PKASIGNACION, primary_key: true, null: false, auto_increment: true
      t.integer :PKGRUA
      t.integer :PKOPERADOR
      t.timestamp :AS_FECHAINICIO
      t.timestamp :AS_FECHAFIN
      t.string :AS_OBSERVACIONES, limit: 255

      t.timestamps
    end
  end
end
