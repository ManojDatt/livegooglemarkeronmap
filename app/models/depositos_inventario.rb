class DepositosInventario < ApplicationRecord
	default_scope -> {order('created_at')}
	has_many :depositos_pertenencias, class_name: "DepositosPertenencias", foreign_key: "PKINVENTARIO", dependent: :destroy
	has_many :depositos_imagenes, class_name: "DepositosImagene", foreign_key: "PKINVENTARIO", dependent: :destroy
	belongs_to :depositos
	accepts_nested_attributes_for :depositos_pertenencias, update_only: true, allow_destroy:  true, :reject_if => lambda { |a| a.blank? }
	accepts_nested_attributes_for :depositos_imagenes, update_only: true, allow_destroy:  true
	validates_presence_of :INV_NUMORDEN, :PKTIPO_AUTO, :PKDEPOSITO, :PKMARCA, :PKSUBMARCA, :PKCOLOR, :INV_MODELO, :INV_NOSERIE, :INV_NOMOTOR
 	validates_presence_of :depositos_pertenencias

    def set_deposito_inventerio
      last_deposito_inventerio = DepositosInventario.maximum(:PKINVENTARIO)
      self.PKINVENTARIO = last_deposito_inventerio.to_i + 1
    end


end
