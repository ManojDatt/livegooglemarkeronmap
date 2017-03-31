class DepositosImagene < ApplicationRecord
	belongs_to :depositos_inventarios
	mount_uploader :IMG_IMAGEN, ImgImagenUploader
    # has_attached_file :IMG_IMAGEN
      # has_attached_file :IMG_IMAGEN,
    # :path => ":rails_root/public/images/:id/:filename",
    # :url  => "/images/:id/:filename"

    # attr_accessor:IMG_IMAGEN, :PKINVENTARIO, :PKIMAGEN
end
