class AddInvPlacasToDepositosInventario < ActiveRecord::Migration[5.0]
  def change
    add_column :depositos_inventarios, :INV_PLACAS, :string, limit: 10
  end
end
