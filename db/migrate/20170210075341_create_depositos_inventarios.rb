class CreateDepositosInventarios < ActiveRecord::Migration[5.0]
  def change
    create_table :depositos_inventarios, id: false do |t|
      t.integer :PKINVENTARIO, primary_key: true, null: false, auto_increment: true
      t.integer :INV_NUMORDEN
      t.integer :PKTIPO_AUTO
      t.date :INV_FDETENCION
      t.string :INV_LUGARDETENCION, limit: 200
      t.string :INV_FOLIODETENCION, limit: 50
      t.string :INV_MOTIVODETENCION, limit: 200
      t.string :INV_AUTORIDAD, limit: 200
      t.integer :PKDEPOSITO
      t.integer :PKMARCA
      t.integer :PKSUBMARCA
      t.integer :PKCOLOR
      t.integer :INV_MODELO
      t.string :INV_NOSERIE, limit: 200
      t.string :INV_NOMOTOR, limit: 100
      t.string :INV_CONDICION, limit: 200
      t.date :INV_FINGRESO

      t.timestamps
    end
  end
end
