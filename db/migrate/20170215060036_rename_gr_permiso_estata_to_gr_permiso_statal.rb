class RenameGrPermisoEstataToGrPermisoStatal < ActiveRecord::Migration[5.0]
  def up
    rename_column :gruas, :GR_PERMISOESTATA, :GR_PERMISOESTATAL
  end

  def down
    rename_column :gruas, :GR_PERMISOESTATAL, :GR_PERMISOESTATA
  end
end
