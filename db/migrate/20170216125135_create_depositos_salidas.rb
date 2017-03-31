class CreateDepositosSalidas < ActiveRecord::Migration[5.0]
  def change
    create_table :depositos_salidas, id: false do |t|
      t.integer :PKINVENTARIO, primary_key: true, null: false
      t.string :S_CLIENTE, limit: 200
      t.string :S_RFC, limit: 13
      t.date :S_FECHAPAGO
      t.string :S_METODOPAGO, limit: 2
      t.string :S_FORMA_DE_PAGO, limit: 40
      t.string :S_NUMCTA, limit: 4
      t.string :S_DOMICILIO, limit: 250
      t.string :S_NoExterior, limit: 20
      t.string :S_NoInterior, limit: 20
      t.string :S_Colonia, limit: 200
      t.string :S_Localidad, limit: 200
      t.string :S_Municipio, limit: 200
      t.string :S_Estado, limit: 200
      t.string :S_Pais, limit: 200
      t.string :S_CodigoPostal, limit: 5
      t.integer :S_NumDias, limit: 4
      t.decimal :S_ImporteDiario, precision: 64, scale: 12
      t.decimal :S_SubTotal, precision: 64, scale: 12
      t.decimal :S_IVA, precision: 64, scale: 12
      t.decimal :S_Total, precision: 64, scale: 12

      t.timestamps
    end
  end
end
