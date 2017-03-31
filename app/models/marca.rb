class Marca < ApplicationRecord
	has_many :sub_marcas
	validates :MAR_DESCRIPCION, presence: true
end
