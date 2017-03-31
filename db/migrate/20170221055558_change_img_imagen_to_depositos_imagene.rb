class ChangeImgImagenToDepositosImagene < ActiveRecord::Migration[5.0]
  def change
   change_column :depositos_imagenes, :IMG_IMAGEN, :text
  end
end
