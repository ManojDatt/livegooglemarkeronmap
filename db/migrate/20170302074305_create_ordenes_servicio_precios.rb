class CreateOrdenesServicioPrecios < ActiveRecord::Migration[5.0]
  def change
    create_table :ordenes_servicio_precios, id: false do |t|
      t.integer :OS_ID
      t.integer :PKSERVICIO
      t.decimal :OSP_PRECIO
      t.decimal :OSP_CANTIDAD
      t.decimal :OSP_SUBTOTAL
      t.decimal :OSP_TAX
      t.decimal :OSP_TOTAL

      t.timestamps
    end
  end
end
