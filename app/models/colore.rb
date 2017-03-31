class Colore < ApplicationRecord
	validates :COL_DESCRIPCION, presence: true
	has_many :ordenes_servicios , class_name: "OrdenesServicio", foreign_key: "ID"
end
