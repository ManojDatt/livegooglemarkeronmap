class AddSReferenciaToDepositosSalida < ActiveRecord::Migration[5.0]
  def change
    add_column :depositos_salidas, :S_REFERENCIA, :string, limit: 250
  end
end
