class Ciudade < ApplicationRecord
	has_many :clientes, class_name: "Cliente", foreign_key: "PKCLIENTE"
	belongs_to :estados, class_name: "Estado", foreign_key: "PKESTADO"
	validates :CD_NOMBRE, :CD_KM, :PKESTADO, presence: true
end
