class AddPktipoAutoToOrdenesServicio < ActiveRecord::Migration[5.0]
  def change
    add_column :ordenes_servicios, :PKTIPO_AUTO, :integer
  end
end
