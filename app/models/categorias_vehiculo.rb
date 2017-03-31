class CategoriasVehiculo < ApplicationRecord
	has_many :tipo_vehiculos
	validates :CAT_DESCRIPCION,  presence: true
end
