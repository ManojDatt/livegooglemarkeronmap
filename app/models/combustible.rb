class Combustible < ApplicationRecord
	validates :COM_FINICIO, :COM_FFIN, :COM_DESCRIPCION, :COM_PRECIO, presence: true



end
