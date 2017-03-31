class TipoVehiculo < ApplicationRecord
	has_many :sub_marcas
	belongs_to :categorias_vehiculos
	has_many :ordenes_servicios , class_name: "OrdenesServicio", foreign_key: "ID"
	validates :PKCATEGORIA, :TAUT_DESCRIPCION, presence: true
end
