class Configuracione < ApplicationRecord
	validates :Llave, :Valor, :Descripcion, presence: true
end
