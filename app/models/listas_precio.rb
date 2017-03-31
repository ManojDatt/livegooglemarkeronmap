class ListasPrecio < ApplicationRecord
	has_many :listas_precios_detalles, class_name: "ListasPreciosDetalle", foreign_key: "PKLISTA", dependent: :destroy
	accepts_nested_attributes_for :listas_precios_detalles, update_only: true, allow_destroy:  true, :reject_if => lambda { |a| a[:LIS_PRECIOD].blank? }
	validates_presence_of :LIS_DESCRIPCION
 	validates_presence_of :listas_precios_detalles
end
