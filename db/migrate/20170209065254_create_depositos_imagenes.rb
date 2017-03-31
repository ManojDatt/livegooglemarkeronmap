class CreateDepositosImagenes < ActiveRecord::Migration[5.0]
  def change
    create_table :depositos_imagenes, id: false do |t|
      t.integer :PKINVENTARIO
      t.integer :PKIMAGEN, primary_key: true, null: false, auto_increment: true
      t.binary :IMG_IMAGEN

      t.timestamps
    end
  end
end
