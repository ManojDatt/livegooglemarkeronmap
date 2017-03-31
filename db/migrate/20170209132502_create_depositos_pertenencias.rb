class CreateDepositosPertenencias < ActiveRecord::Migration[5.0]
  def change
    create_table :depositos_pertenencias, id: false do |t|
      t.integer :PKINVENTARIO
      t.integer :PKPERTENENCIA, primary_key: true, null: false, auto_increment: true
      t.integer :PER_CANTIDAD
      t.string :PER_DESCRIPCION, limit: 200
      t.string :PER_CONDICION, limit: 100

      t.timestamps
    end
  end
end
