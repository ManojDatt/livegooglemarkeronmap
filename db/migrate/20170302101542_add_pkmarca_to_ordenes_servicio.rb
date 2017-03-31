class AddPkmarcaToOrdenesServicio < ActiveRecord::Migration[5.0]
  def change
    add_column :ordenes_servicios, :PKMARCA, :integer
  end
end
