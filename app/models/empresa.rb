class Empresa < ApplicationRecord
belongs_to :ciudades
belongs_to :estados
validates :EMP_RFC, :EMP_NOMBRE_COMERCIAL, :EMP_RAZON_SOCIAL, :EMP_TIPO, :EMP_PKCIUDAD, :EMP_PKESTADO, presence: true
end
