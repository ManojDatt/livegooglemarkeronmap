class AddOsTipoServicioToOrdenesServicio < ActiveRecord::Migration[5.0]
  def change
    add_column :ordenes_servicios, :OS_TIPO_SERVICIO, :string
  end
end
