class ChangeTautCategoriaToTipoVehiculo < ActiveRecord::Migration[5.0]
  def change
  	 rename_column :tipo_vehiculos, :TAUT_CATEGORIA, :PKCATEGORIA
 	 change_column :tipo_vehiculos, :PKCATEGORIA, :integer
  end
end
