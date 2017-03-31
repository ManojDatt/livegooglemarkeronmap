class Pai < ApplicationRecord
 has_many :estados
 validates :PA_DESCRIPCION, :CODIGOINT, presence: true
end
