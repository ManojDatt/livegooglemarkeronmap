class CreateDepositos < ActiveRecord::Migration[5.0]
  def change
    create_table :depositos, id: false do |t|
      t.integer :PKDEPOSITO, primary_key: true, null: false, auto_increment: true
      t.string :DEP_NOMBRE, limit: 200

      t.timestamps
    end
  end
end
