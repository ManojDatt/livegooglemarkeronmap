class AddIdToOrdenesServicioPrecio < ActiveRecord::Migration[5.0]
  def change
    add_column :ordenes_servicio_precios, :ID, :integer, primary_key: true, null: false, auto_increment: true
  end
end
