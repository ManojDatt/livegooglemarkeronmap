class SubMarca < ApplicationRecord
	belongs_to :marcas, :foreign_key => "PKMARCA"
	belongs_to :tipo_vehiculos, :foreign_key => "PKTIPO_AUTO"
	validates :PKMARCA, :PKTIPO_AUTO, :SUB_DESCRIPCION, presence: true
end
