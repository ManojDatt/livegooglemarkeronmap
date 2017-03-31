class Estado < ApplicationRecord
belongs_to :pais
has_many :ciudades, class_name: "Ciudade", foreign_key: "PKCIUDAD"
has_many :clientes, class_name: "Cliente", foreign_key: "PKCLIENTE"
validates :EDO_DESCRIPCION, :ABREVIATURA, :PKPAIS, presence: true
end
