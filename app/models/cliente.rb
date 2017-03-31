class Cliente < ApplicationRecord
	belongs_to :estados, class_name: "Estado", foreign_key: "PKESTADO"
	belongs_to :ciudades, class_name: "Ciudade", foreign_key: "PKCIUDAD"
	validates :NOMBRE, :DOMICILIO, :COLONIA, :RFC, :PKESTADO, :PKCIUDAD, :CP,
	:CONTACTO_TELEFONO1, :IVA_PORCENTAJE, :RETENCION_IVA_PORCENTAJE, presence: true
	has_many :ordenes_servicios , class_name: "OrdenesServicio", foreign_key: "ID"
end
