class AddInvFsalidaToDepositosInventario < ActiveRecord::Migration[5.0]
  def change
    add_column :depositos_inventarios, :INV_FSALIDA, :timestamp
  end
end
